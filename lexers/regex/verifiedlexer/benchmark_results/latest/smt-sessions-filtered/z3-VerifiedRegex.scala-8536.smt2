; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449036 () Bool)

(assert start!449036)

(declare-fun bs!864506 () Bool)

(declare-fun b!4529273 () Bool)

(assert (= bs!864506 (and b!4529273 start!449036)))

(declare-fun lambda!174088 () Int)

(declare-fun lambda!174087 () Int)

(assert (=> bs!864506 (not (= lambda!174088 lambda!174087))))

(assert (=> b!4529273 true))

(assert (=> b!4529273 true))

(assert (=> b!4529273 true))

(declare-fun b!4529258 () Bool)

(declare-datatypes ((Unit!96566 0))(
  ( (Unit!96567) )
))
(declare-fun e!2822119 () Unit!96566)

(declare-fun Unit!96568 () Unit!96566)

(assert (=> b!4529258 (= e!2822119 Unit!96568)))

(declare-datatypes ((Hashable!5573 0))(
  ( (HashableExt!5572 (__x!31276 Int)) )
))
(declare-fun hashF!1107 () Hashable!5573)

(declare-fun lt!1704998 () Unit!96566)

(declare-datatypes ((K!12085 0))(
  ( (K!12086 (val!17939 Int)) )
))
(declare-datatypes ((V!12331 0))(
  ( (V!12332 (val!17940 Int)) )
))
(declare-datatypes ((tuple2!51146 0))(
  ( (tuple2!51147 (_1!28867 K!12085) (_2!28867 V!12331)) )
))
(declare-datatypes ((List!50820 0))(
  ( (Nil!50696) (Cons!50696 (h!56563 tuple2!51146) (t!357782 List!50820)) )
))
(declare-datatypes ((tuple2!51148 0))(
  ( (tuple2!51149 (_1!28868 (_ BitVec 64)) (_2!28868 List!50820)) )
))
(declare-datatypes ((List!50821 0))(
  ( (Nil!50697) (Cons!50697 (h!56564 tuple2!51148) (t!357783 List!50821)) )
))
(declare-datatypes ((ListLongMap!2995 0))(
  ( (ListLongMap!2996 (toList!4363 List!50821)) )
))
(declare-fun lm!1477 () ListLongMap!2995)

(declare-fun key!3287 () K!12085)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!166 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> b!4529258 (= lt!1704998 (lemmaNotInItsHashBucketThenNotInMap!166 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4529258 false))

(declare-fun b!4529259 () Bool)

(declare-fun e!2822112 () Bool)

(declare-fun e!2822127 () Bool)

(assert (=> b!4529259 (= e!2822112 e!2822127)))

(declare-fun res!1886165 () Bool)

(assert (=> b!4529259 (=> res!1886165 e!2822127)))

(declare-fun lt!1705029 () Bool)

(assert (=> b!4529259 (= res!1886165 lt!1705029)))

(declare-fun lt!1705013 () Unit!96566)

(declare-fun e!2822126 () Unit!96566)

(assert (=> b!4529259 (= lt!1705013 e!2822126)))

(declare-fun c!773274 () Bool)

(assert (=> b!4529259 (= c!773274 lt!1705029)))

(declare-fun lt!1705015 () tuple2!51148)

(declare-fun containsKey!1826 (List!50820 K!12085) Bool)

(assert (=> b!4529259 (= lt!1705029 (containsKey!1826 (_2!28868 lt!1705015) key!3287))))

(declare-fun b!4529260 () Bool)

(declare-fun res!1886150 () Bool)

(declare-fun e!2822110 () Bool)

(assert (=> b!4529260 (=> res!1886150 e!2822110)))

(declare-fun lt!1705004 () ListLongMap!2995)

(declare-fun lt!1705019 () List!50820)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11915 (ListLongMap!2995 (_ BitVec 64)) List!50820)

(assert (=> b!4529260 (= res!1886150 (not (= (apply!11915 lt!1705004 hash!344) lt!1705019)))))

(declare-fun b!4529261 () Bool)

(declare-fun e!2822114 () Bool)

(assert (=> b!4529261 (= e!2822114 e!2822112)))

(declare-fun res!1886164 () Bool)

(assert (=> b!4529261 (=> res!1886164 e!2822112)))

(declare-fun noDuplicateKeys!1178 (List!50820) Bool)

(assert (=> b!4529261 (= res!1886164 (not (noDuplicateKeys!1178 (_2!28868 lt!1705015))))))

(declare-fun lt!1705008 () Unit!96566)

(declare-fun forallContained!2558 (List!50821 Int tuple2!51148) Unit!96566)

(assert (=> b!4529261 (= lt!1705008 (forallContained!2558 (toList!4363 lm!1477) lambda!174087 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4529262 () Bool)

(declare-fun res!1886163 () Bool)

(declare-fun e!2822124 () Bool)

(assert (=> b!4529262 (=> res!1886163 e!2822124)))

(assert (=> b!4529262 (= res!1886163 (bvsge (_1!28868 lt!1705015) hash!344))))

(declare-fun b!4529263 () Bool)

(declare-fun e!2822113 () Bool)

(assert (=> b!4529263 (= e!2822113 e!2822110)))

(declare-fun res!1886146 () Bool)

(assert (=> b!4529263 (=> res!1886146 e!2822110)))

(declare-fun contains!13453 (ListLongMap!2995 (_ BitVec 64)) Bool)

(assert (=> b!4529263 (= res!1886146 (not (contains!13453 lt!1705004 hash!344)))))

(declare-fun tail!7766 (ListLongMap!2995) ListLongMap!2995)

(assert (=> b!4529263 (= lt!1705004 (tail!7766 lm!1477))))

(declare-fun b!4529265 () Bool)

(declare-fun res!1886155 () Bool)

(declare-fun e!2822118 () Bool)

(assert (=> b!4529265 (=> (not res!1886155) (not e!2822118))))

(declare-fun newBucket!178 () List!50820)

(declare-fun allKeysSameHash!1032 (List!50820 (_ BitVec 64) Hashable!5573) Bool)

(assert (=> b!4529265 (= res!1886155 (allKeysSameHash!1032 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4529266 () Bool)

(declare-fun res!1886153 () Bool)

(assert (=> b!4529266 (=> res!1886153 e!2822113)))

(assert (=> b!4529266 (= res!1886153 (not (noDuplicateKeys!1178 newBucket!178)))))

(declare-fun b!4529267 () Bool)

(declare-fun e!2822120 () Bool)

(assert (=> b!4529267 (= e!2822120 e!2822114)))

(declare-fun res!1886149 () Bool)

(assert (=> b!4529267 (=> res!1886149 e!2822114)))

(declare-datatypes ((ListMap!3625 0))(
  ( (ListMap!3626 (toList!4364 List!50820)) )
))
(declare-fun lt!1705003 () ListMap!3625)

(declare-fun lt!1705006 () ListMap!3625)

(declare-fun eq!635 (ListMap!3625 ListMap!3625) Bool)

(assert (=> b!4529267 (= res!1886149 (not (eq!635 lt!1705003 lt!1705006)))))

(declare-fun lt!1705024 () ListMap!3625)

(assert (=> b!4529267 (eq!635 lt!1705024 lt!1705006)))

(declare-fun lt!1705028 () ListMap!3625)

(declare-fun addToMapMapFromBucket!705 (List!50820 ListMap!3625) ListMap!3625)

(assert (=> b!4529267 (= lt!1705006 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705028))))

(declare-fun lt!1705027 () ListMap!3625)

(declare-fun lt!1705005 () Unit!96566)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!54 (ListMap!3625 ListMap!3625 List!50820) Unit!96566)

(assert (=> b!4529267 (= lt!1705005 (lemmaAddToMapFromBucketPreservesEquivalence!54 lt!1705027 lt!1705028 (_2!28868 lt!1705015)))))

(declare-fun b!4529268 () Bool)

(declare-fun e!2822115 () Bool)

(assert (=> b!4529268 (= e!2822124 e!2822115)))

(declare-fun res!1886148 () Bool)

(assert (=> b!4529268 (=> res!1886148 e!2822115)))

(declare-fun lt!1705002 () tuple2!51148)

(declare-fun lt!1705020 () ListLongMap!2995)

(declare-fun +!1570 (ListLongMap!2995 tuple2!51148) ListLongMap!2995)

(assert (=> b!4529268 (= res!1886148 (not (= lt!1705020 (+!1570 lm!1477 lt!1705002))))))

(declare-fun lt!1704999 () ListLongMap!2995)

(assert (=> b!4529268 (= lt!1705020 (+!1570 lt!1704999 lt!1705015))))

(declare-fun b!4529269 () Bool)

(assert (=> b!4529269 (= e!2822118 (not e!2822113))))

(declare-fun res!1886162 () Bool)

(assert (=> b!4529269 (=> res!1886162 e!2822113)))

(declare-fun removePairForKey!805 (List!50820 K!12085) List!50820)

(assert (=> b!4529269 (= res!1886162 (not (= newBucket!178 (removePairForKey!805 lt!1705019 key!3287))))))

(declare-fun lt!1705018 () Unit!96566)

(declare-fun lt!1705011 () tuple2!51148)

(assert (=> b!4529269 (= lt!1705018 (forallContained!2558 (toList!4363 lm!1477) lambda!174087 lt!1705011))))

(declare-fun contains!13454 (List!50821 tuple2!51148) Bool)

(assert (=> b!4529269 (contains!13454 (toList!4363 lm!1477) lt!1705011)))

(assert (=> b!4529269 (= lt!1705011 (tuple2!51149 hash!344 lt!1705019))))

(declare-fun lt!1705016 () Unit!96566)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!690 (List!50821 (_ BitVec 64) List!50820) Unit!96566)

(assert (=> b!4529269 (= lt!1705016 (lemmaGetValueByKeyImpliesContainsTuple!690 (toList!4363 lm!1477) hash!344 lt!1705019))))

(assert (=> b!4529269 (= lt!1705019 (apply!11915 lm!1477 hash!344))))

(declare-fun lt!1705014 () (_ BitVec 64))

(assert (=> b!4529269 (contains!13453 lm!1477 lt!1705014)))

(declare-fun lt!1705021 () Unit!96566)

(declare-fun lemmaInGenMapThenLongMapContainsHash!252 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> b!4529269 (= lt!1705021 (lemmaInGenMapThenLongMapContainsHash!252 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4529270 () Bool)

(assert (=> b!4529270 (= e!2822115 e!2822120)))

(declare-fun res!1886166 () Bool)

(assert (=> b!4529270 (=> res!1886166 e!2822120)))

(assert (=> b!4529270 (= res!1886166 (not (eq!635 lt!1705003 lt!1705024)))))

(assert (=> b!4529270 (= lt!1705024 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705027))))

(declare-fun extractMap!1234 (List!50821) ListMap!3625)

(assert (=> b!4529270 (= lt!1705003 (extractMap!1234 (toList!4363 lt!1705020)))))

(declare-fun b!4529271 () Bool)

(declare-fun isEmpty!28707 (ListLongMap!2995) Bool)

(assert (=> b!4529271 (= e!2822127 (not (isEmpty!28707 lm!1477)))))

(declare-fun lt!1705001 () ListMap!3625)

(declare-fun -!404 (ListMap!3625 K!12085) ListMap!3625)

(assert (=> b!4529271 (= lt!1705006 (-!404 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001) key!3287))))

(declare-fun lt!1705017 () Unit!96566)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!2 (ListMap!3625 K!12085 List!50820) Unit!96566)

(assert (=> b!4529271 (= lt!1705017 (lemmaAddToMapFromBucketMinusKeyIsCommutative!2 lt!1705001 key!3287 (_2!28868 lt!1705015)))))

(declare-fun b!4529272 () Bool)

(declare-fun e!2822123 () Bool)

(declare-fun e!2822116 () Bool)

(assert (=> b!4529272 (= e!2822123 e!2822116)))

(declare-fun res!1886152 () Bool)

(assert (=> b!4529272 (=> res!1886152 e!2822116)))

(declare-fun contains!13455 (ListMap!3625 K!12085) Bool)

(assert (=> b!4529272 (= res!1886152 (not (contains!13455 (extractMap!1234 (t!357783 (toList!4363 lm!1477))) key!3287)))))

(assert (=> b!4529272 (contains!13455 lt!1705001 key!3287)))

(assert (=> b!4529272 (= lt!1705001 (extractMap!1234 (toList!4363 lt!1705004)))))

(declare-fun lt!1705007 () Unit!96566)

(declare-fun lemmaListContainsThenExtractedMapContains!148 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> b!4529272 (= lt!1705007 (lemmaListContainsThenExtractedMapContains!148 lt!1705004 key!3287 hashF!1107))))

(declare-fun Unit!96569 () Unit!96566)

(assert (=> b!4529273 (= e!2822126 Unit!96569)))

(assert (=> b!4529273 (not (= hash!344 (_1!28868 lt!1705015)))))

(declare-datatypes ((Option!11153 0))(
  ( (None!11152) (Some!11152 (v!44798 tuple2!51146)) )
))
(declare-fun lt!1705026 () Option!11153)

(declare-fun getPair!194 (List!50820 K!12085) Option!11153)

(assert (=> b!4529273 (= lt!1705026 (getPair!194 (_2!28868 lt!1705015) key!3287))))

(declare-fun lt!1705030 () Unit!96566)

(assert (=> b!4529273 (= lt!1705030 (forallContained!2558 (toList!4363 lm!1477) lambda!174088 (h!56564 (toList!4363 lm!1477))))))

(declare-fun lambda!174089 () Int)

(declare-fun lt!1705012 () Unit!96566)

(declare-fun forallContained!2559 (List!50820 Int tuple2!51146) Unit!96566)

(declare-fun get!16633 (Option!11153) tuple2!51146)

(assert (=> b!4529273 (= lt!1705012 (forallContained!2559 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))))))

(assert (=> b!4529273 false))

(declare-fun b!4529274 () Bool)

(declare-fun e!2822121 () Bool)

(declare-fun e!2822111 () Bool)

(assert (=> b!4529274 (= e!2822121 e!2822111)))

(declare-fun res!1886161 () Bool)

(assert (=> b!4529274 (=> (not res!1886161) (not e!2822111))))

(declare-fun lt!1705010 () ListMap!3625)

(assert (=> b!4529274 (= res!1886161 (contains!13455 lt!1705010 key!3287))))

(assert (=> b!4529274 (= lt!1705010 (extractMap!1234 (toList!4363 lm!1477)))))

(declare-fun b!4529275 () Bool)

(declare-fun e!2822125 () Bool)

(assert (=> b!4529275 (= e!2822125 e!2822123)))

(declare-fun res!1886157 () Bool)

(assert (=> b!4529275 (=> res!1886157 e!2822123)))

(declare-fun containsKeyBiggerList!158 (List!50821 K!12085) Bool)

(assert (=> b!4529275 (= res!1886157 (not (containsKeyBiggerList!158 (t!357783 (toList!4363 lm!1477)) key!3287)))))

(assert (=> b!4529275 (containsKeyBiggerList!158 (toList!4363 lt!1705004) key!3287)))

(declare-fun lt!1705023 () Unit!96566)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!94 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> b!4529275 (= lt!1705023 (lemmaInLongMapThenContainsKeyBiggerList!94 lt!1705004 key!3287 hashF!1107))))

(declare-fun b!4529276 () Bool)

(assert (=> b!4529276 (= e!2822110 e!2822125)))

(declare-fun res!1886151 () Bool)

(assert (=> b!4529276 (=> res!1886151 e!2822125)))

(declare-fun lt!1705025 () Bool)

(assert (=> b!4529276 (= res!1886151 lt!1705025)))

(declare-fun lt!1705009 () Unit!96566)

(assert (=> b!4529276 (= lt!1705009 e!2822119)))

(declare-fun c!773275 () Bool)

(assert (=> b!4529276 (= c!773275 lt!1705025)))

(assert (=> b!4529276 (= lt!1705025 (not (containsKey!1826 lt!1705019 key!3287)))))

(declare-fun b!4529277 () Bool)

(declare-fun e!2822117 () Bool)

(declare-fun tp!1338347 () Bool)

(declare-fun tp_is_empty!27989 () Bool)

(declare-fun tp_is_empty!27991 () Bool)

(assert (=> b!4529277 (= e!2822117 (and tp_is_empty!27989 tp_is_empty!27991 tp!1338347))))

(declare-fun b!4529278 () Bool)

(declare-fun res!1886147 () Bool)

(assert (=> b!4529278 (=> res!1886147 e!2822124)))

(declare-fun lt!1705022 () ListMap!3625)

(assert (=> b!4529278 (= res!1886147 (not (eq!635 lt!1705010 lt!1705022)))))

(declare-fun res!1886145 () Bool)

(assert (=> start!449036 (=> (not res!1886145) (not e!2822121))))

(declare-fun forall!10303 (List!50821 Int) Bool)

(assert (=> start!449036 (= res!1886145 (forall!10303 (toList!4363 lm!1477) lambda!174087))))

(assert (=> start!449036 e!2822121))

(assert (=> start!449036 true))

(declare-fun e!2822122 () Bool)

(declare-fun inv!66269 (ListLongMap!2995) Bool)

(assert (=> start!449036 (and (inv!66269 lm!1477) e!2822122)))

(assert (=> start!449036 tp_is_empty!27989))

(assert (=> start!449036 e!2822117))

(declare-fun b!4529264 () Bool)

(declare-fun Unit!96570 () Unit!96566)

(assert (=> b!4529264 (= e!2822119 Unit!96570)))

(declare-fun b!4529279 () Bool)

(assert (=> b!4529279 (= e!2822111 e!2822118)))

(declare-fun res!1886144 () Bool)

(assert (=> b!4529279 (=> (not res!1886144) (not e!2822118))))

(assert (=> b!4529279 (= res!1886144 (= lt!1705014 hash!344))))

(declare-fun hash!2861 (Hashable!5573 K!12085) (_ BitVec 64))

(assert (=> b!4529279 (= lt!1705014 (hash!2861 hashF!1107 key!3287))))

(declare-fun b!4529280 () Bool)

(declare-fun res!1886156 () Bool)

(assert (=> b!4529280 (=> res!1886156 e!2822110)))

(assert (=> b!4529280 (= res!1886156 (not (contains!13454 (t!357783 (toList!4363 lm!1477)) lt!1705011)))))

(declare-fun b!4529281 () Bool)

(declare-fun res!1886160 () Bool)

(assert (=> b!4529281 (=> res!1886160 e!2822115)))

(declare-fun head!9444 (ListLongMap!2995) tuple2!51148)

(assert (=> b!4529281 (= res!1886160 (not (= (head!9444 lt!1705020) lt!1705015)))))

(declare-fun b!4529282 () Bool)

(declare-fun res!1886154 () Bool)

(assert (=> b!4529282 (=> (not res!1886154) (not e!2822121))))

(declare-fun allKeysSameHashInMap!1285 (ListLongMap!2995 Hashable!5573) Bool)

(assert (=> b!4529282 (= res!1886154 (allKeysSameHashInMap!1285 lm!1477 hashF!1107))))

(declare-fun b!4529283 () Bool)

(declare-fun Unit!96571 () Unit!96566)

(assert (=> b!4529283 (= e!2822126 Unit!96571)))

(declare-fun b!4529284 () Bool)

(assert (=> b!4529284 (= e!2822116 e!2822124)))

(declare-fun res!1886158 () Bool)

(assert (=> b!4529284 (=> res!1886158 e!2822124)))

(assert (=> b!4529284 (= res!1886158 (not (eq!635 lt!1705022 lt!1705010)))))

(assert (=> b!4529284 (= lt!1705022 (extractMap!1234 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))

(assert (=> b!4529284 (= lt!1705015 (head!9444 lm!1477))))

(assert (=> b!4529284 (eq!635 lt!1705027 lt!1705028)))

(assert (=> b!4529284 (= lt!1705028 (-!404 lt!1705001 key!3287))))

(assert (=> b!4529284 (= lt!1705027 (extractMap!1234 (toList!4363 lt!1704999)))))

(assert (=> b!4529284 (= lt!1704999 (+!1570 lt!1705004 lt!1705002))))

(assert (=> b!4529284 (= lt!1705002 (tuple2!51149 hash!344 newBucket!178))))

(declare-fun lt!1705000 () Unit!96566)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!163 (ListLongMap!2995 (_ BitVec 64) List!50820 K!12085 Hashable!5573) Unit!96566)

(assert (=> b!4529284 (= lt!1705000 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!163 lt!1705004 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4529285 () Bool)

(declare-fun res!1886159 () Bool)

(assert (=> b!4529285 (=> res!1886159 e!2822113)))

(get-info :version)

(assert (=> b!4529285 (= res!1886159 (or ((_ is Nil!50697) (toList!4363 lm!1477)) (= (_1!28868 (h!56564 (toList!4363 lm!1477))) hash!344)))))

(declare-fun b!4529286 () Bool)

(declare-fun tp!1338346 () Bool)

(assert (=> b!4529286 (= e!2822122 tp!1338346)))

(assert (= (and start!449036 res!1886145) b!4529282))

(assert (= (and b!4529282 res!1886154) b!4529274))

(assert (= (and b!4529274 res!1886161) b!4529279))

(assert (= (and b!4529279 res!1886144) b!4529265))

(assert (= (and b!4529265 res!1886155) b!4529269))

(assert (= (and b!4529269 (not res!1886162)) b!4529266))

(assert (= (and b!4529266 (not res!1886153)) b!4529285))

(assert (= (and b!4529285 (not res!1886159)) b!4529263))

(assert (= (and b!4529263 (not res!1886146)) b!4529260))

(assert (= (and b!4529260 (not res!1886150)) b!4529280))

(assert (= (and b!4529280 (not res!1886156)) b!4529276))

(assert (= (and b!4529276 c!773275) b!4529258))

(assert (= (and b!4529276 (not c!773275)) b!4529264))

(assert (= (and b!4529276 (not res!1886151)) b!4529275))

(assert (= (and b!4529275 (not res!1886157)) b!4529272))

(assert (= (and b!4529272 (not res!1886152)) b!4529284))

(assert (= (and b!4529284 (not res!1886158)) b!4529278))

(assert (= (and b!4529278 (not res!1886147)) b!4529262))

(assert (= (and b!4529262 (not res!1886163)) b!4529268))

(assert (= (and b!4529268 (not res!1886148)) b!4529281))

(assert (= (and b!4529281 (not res!1886160)) b!4529270))

(assert (= (and b!4529270 (not res!1886166)) b!4529267))

(assert (= (and b!4529267 (not res!1886149)) b!4529261))

(assert (= (and b!4529261 (not res!1886164)) b!4529259))

(assert (= (and b!4529259 c!773274) b!4529273))

(assert (= (and b!4529259 (not c!773274)) b!4529283))

(assert (= (and b!4529259 (not res!1886165)) b!4529271))

(assert (= start!449036 b!4529286))

(assert (= (and start!449036 ((_ is Cons!50696) newBucket!178)) b!4529277))

(declare-fun m!5285075 () Bool)

(assert (=> b!4529278 m!5285075))

(declare-fun m!5285077 () Bool)

(assert (=> start!449036 m!5285077))

(declare-fun m!5285079 () Bool)

(assert (=> start!449036 m!5285079))

(declare-fun m!5285081 () Bool)

(assert (=> b!4529265 m!5285081))

(declare-fun m!5285083 () Bool)

(assert (=> b!4529269 m!5285083))

(declare-fun m!5285085 () Bool)

(assert (=> b!4529269 m!5285085))

(declare-fun m!5285087 () Bool)

(assert (=> b!4529269 m!5285087))

(declare-fun m!5285089 () Bool)

(assert (=> b!4529269 m!5285089))

(declare-fun m!5285091 () Bool)

(assert (=> b!4529269 m!5285091))

(declare-fun m!5285093 () Bool)

(assert (=> b!4529269 m!5285093))

(declare-fun m!5285095 () Bool)

(assert (=> b!4529269 m!5285095))

(declare-fun m!5285097 () Bool)

(assert (=> b!4529284 m!5285097))

(declare-fun m!5285099 () Bool)

(assert (=> b!4529284 m!5285099))

(declare-fun m!5285101 () Bool)

(assert (=> b!4529284 m!5285101))

(declare-fun m!5285103 () Bool)

(assert (=> b!4529284 m!5285103))

(declare-fun m!5285105 () Bool)

(assert (=> b!4529284 m!5285105))

(declare-fun m!5285107 () Bool)

(assert (=> b!4529284 m!5285107))

(declare-fun m!5285109 () Bool)

(assert (=> b!4529284 m!5285109))

(declare-fun m!5285111 () Bool)

(assert (=> b!4529284 m!5285111))

(declare-fun m!5285113 () Bool)

(assert (=> b!4529284 m!5285113))

(declare-fun m!5285115 () Bool)

(assert (=> b!4529258 m!5285115))

(declare-fun m!5285117 () Bool)

(assert (=> b!4529282 m!5285117))

(declare-fun m!5285119 () Bool)

(assert (=> b!4529280 m!5285119))

(declare-fun m!5285121 () Bool)

(assert (=> b!4529276 m!5285121))

(declare-fun m!5285123 () Bool)

(assert (=> b!4529281 m!5285123))

(declare-fun m!5285125 () Bool)

(assert (=> b!4529261 m!5285125))

(declare-fun m!5285127 () Bool)

(assert (=> b!4529261 m!5285127))

(declare-fun m!5285129 () Bool)

(assert (=> b!4529266 m!5285129))

(declare-fun m!5285131 () Bool)

(assert (=> b!4529275 m!5285131))

(declare-fun m!5285133 () Bool)

(assert (=> b!4529275 m!5285133))

(declare-fun m!5285135 () Bool)

(assert (=> b!4529275 m!5285135))

(declare-fun m!5285137 () Bool)

(assert (=> b!4529272 m!5285137))

(declare-fun m!5285139 () Bool)

(assert (=> b!4529272 m!5285139))

(declare-fun m!5285141 () Bool)

(assert (=> b!4529272 m!5285141))

(declare-fun m!5285143 () Bool)

(assert (=> b!4529272 m!5285143))

(assert (=> b!4529272 m!5285139))

(declare-fun m!5285145 () Bool)

(assert (=> b!4529272 m!5285145))

(declare-fun m!5285147 () Bool)

(assert (=> b!4529259 m!5285147))

(declare-fun m!5285149 () Bool)

(assert (=> b!4529271 m!5285149))

(declare-fun m!5285151 () Bool)

(assert (=> b!4529271 m!5285151))

(assert (=> b!4529271 m!5285151))

(declare-fun m!5285153 () Bool)

(assert (=> b!4529271 m!5285153))

(declare-fun m!5285155 () Bool)

(assert (=> b!4529271 m!5285155))

(declare-fun m!5285157 () Bool)

(assert (=> b!4529274 m!5285157))

(declare-fun m!5285159 () Bool)

(assert (=> b!4529274 m!5285159))

(declare-fun m!5285161 () Bool)

(assert (=> b!4529273 m!5285161))

(declare-fun m!5285163 () Bool)

(assert (=> b!4529273 m!5285163))

(declare-fun m!5285165 () Bool)

(assert (=> b!4529273 m!5285165))

(declare-fun m!5285167 () Bool)

(assert (=> b!4529273 m!5285167))

(declare-fun m!5285169 () Bool)

(assert (=> b!4529267 m!5285169))

(declare-fun m!5285171 () Bool)

(assert (=> b!4529267 m!5285171))

(declare-fun m!5285173 () Bool)

(assert (=> b!4529267 m!5285173))

(declare-fun m!5285175 () Bool)

(assert (=> b!4529267 m!5285175))

(declare-fun m!5285177 () Bool)

(assert (=> b!4529268 m!5285177))

(declare-fun m!5285179 () Bool)

(assert (=> b!4529268 m!5285179))

(declare-fun m!5285181 () Bool)

(assert (=> b!4529263 m!5285181))

(declare-fun m!5285183 () Bool)

(assert (=> b!4529263 m!5285183))

(declare-fun m!5285185 () Bool)

(assert (=> b!4529260 m!5285185))

(declare-fun m!5285187 () Bool)

(assert (=> b!4529279 m!5285187))

(declare-fun m!5285189 () Bool)

(assert (=> b!4529270 m!5285189))

(declare-fun m!5285191 () Bool)

(assert (=> b!4529270 m!5285191))

(declare-fun m!5285193 () Bool)

(assert (=> b!4529270 m!5285193))

(check-sat (not b!4529259) (not b!4529273) (not b!4529268) (not b!4529267) (not b!4529286) (not start!449036) (not b!4529282) (not b!4529284) (not b!4529269) (not b!4529271) (not b!4529280) tp_is_empty!27989 tp_is_empty!27991 (not b!4529274) (not b!4529258) (not b!4529278) (not b!4529265) (not b!4529261) (not b!4529260) (not b!4529272) (not b!4529277) (not b!4529276) (not b!4529279) (not b!4529275) (not b!4529281) (not b!4529270) (not b!4529266) (not b!4529263))
(check-sat)
(get-model)

(declare-fun d!1397567 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8398 (List!50820) (InoxSet tuple2!51146))

(assert (=> d!1397567 (= (eq!635 lt!1705003 lt!1705024) (= (content!8398 (toList!4364 lt!1705003)) (content!8398 (toList!4364 lt!1705024))))))

(declare-fun bs!864509 () Bool)

(assert (= bs!864509 d!1397567))

(declare-fun m!5285203 () Bool)

(assert (=> bs!864509 m!5285203))

(declare-fun m!5285205 () Bool)

(assert (=> bs!864509 m!5285205))

(assert (=> b!4529270 d!1397567))

(declare-fun bs!864560 () Bool)

(declare-fun b!4529384 () Bool)

(assert (= bs!864560 (and b!4529384 b!4529273)))

(declare-fun lambda!174165 () Int)

(assert (=> bs!864560 (not (= lambda!174165 lambda!174089))))

(assert (=> b!4529384 true))

(declare-fun bs!864561 () Bool)

(declare-fun b!4529387 () Bool)

(assert (= bs!864561 (and b!4529387 b!4529273)))

(declare-fun lambda!174166 () Int)

(assert (=> bs!864561 (not (= lambda!174166 lambda!174089))))

(declare-fun bs!864562 () Bool)

(assert (= bs!864562 (and b!4529387 b!4529384)))

(assert (=> bs!864562 (= lambda!174166 lambda!174165)))

(assert (=> b!4529387 true))

(declare-fun lambda!174167 () Int)

(assert (=> bs!864561 (not (= lambda!174167 lambda!174089))))

(declare-fun lt!1705212 () ListMap!3625)

(assert (=> bs!864562 (= (= lt!1705212 lt!1705027) (= lambda!174167 lambda!174165))))

(assert (=> b!4529387 (= (= lt!1705212 lt!1705027) (= lambda!174167 lambda!174166))))

(assert (=> b!4529387 true))

(declare-fun bs!864563 () Bool)

(declare-fun d!1397569 () Bool)

(assert (= bs!864563 (and d!1397569 b!4529273)))

(declare-fun lambda!174168 () Int)

(assert (=> bs!864563 (not (= lambda!174168 lambda!174089))))

(declare-fun bs!864564 () Bool)

(assert (= bs!864564 (and d!1397569 b!4529384)))

(declare-fun lt!1705224 () ListMap!3625)

(assert (=> bs!864564 (= (= lt!1705224 lt!1705027) (= lambda!174168 lambda!174165))))

(declare-fun bs!864565 () Bool)

(assert (= bs!864565 (and d!1397569 b!4529387)))

(assert (=> bs!864565 (= (= lt!1705224 lt!1705027) (= lambda!174168 lambda!174166))))

(assert (=> bs!864565 (= (= lt!1705224 lt!1705212) (= lambda!174168 lambda!174167))))

(assert (=> d!1397569 true))

(declare-fun b!4529383 () Bool)

(declare-fun e!2822187 () Bool)

(declare-fun forall!10305 (List!50820 Int) Bool)

(assert (=> b!4529383 (= e!2822187 (forall!10305 (toList!4364 lt!1705027) lambda!174167))))

(declare-fun call!315696 () Bool)

(declare-fun c!773299 () Bool)

(declare-fun bm!315690 () Bool)

(assert (=> bm!315690 (= call!315696 (forall!10305 (ite c!773299 (toList!4364 lt!1705027) (t!357782 (_2!28868 lt!1705015))) (ite c!773299 lambda!174165 lambda!174167)))))

(declare-fun e!2822188 () ListMap!3625)

(assert (=> b!4529384 (= e!2822188 lt!1705027)))

(declare-fun lt!1705215 () Unit!96566)

(declare-fun call!315697 () Unit!96566)

(assert (=> b!4529384 (= lt!1705215 call!315697)))

(declare-fun call!315695 () Bool)

(assert (=> b!4529384 call!315695))

(declare-fun lt!1705226 () Unit!96566)

(assert (=> b!4529384 (= lt!1705226 lt!1705215)))

(assert (=> b!4529384 call!315696))

(declare-fun lt!1705208 () Unit!96566)

(declare-fun Unit!96595 () Unit!96566)

(assert (=> b!4529384 (= lt!1705208 Unit!96595)))

(declare-fun b!4529385 () Bool)

(declare-fun res!1886210 () Bool)

(declare-fun e!2822189 () Bool)

(assert (=> b!4529385 (=> (not res!1886210) (not e!2822189))))

(assert (=> b!4529385 (= res!1886210 (forall!10305 (toList!4364 lt!1705027) lambda!174168))))

(declare-fun bm!315691 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!352 (ListMap!3625) Unit!96566)

(assert (=> bm!315691 (= call!315697 (lemmaContainsAllItsOwnKeys!352 lt!1705027))))

(declare-fun b!4529386 () Bool)

(declare-fun invariantList!1031 (List!50820) Bool)

(assert (=> b!4529386 (= e!2822189 (invariantList!1031 (toList!4364 lt!1705224)))))

(assert (=> d!1397569 e!2822189))

(declare-fun res!1886211 () Bool)

(assert (=> d!1397569 (=> (not res!1886211) (not e!2822189))))

(assert (=> d!1397569 (= res!1886211 (forall!10305 (_2!28868 lt!1705015) lambda!174168))))

(assert (=> d!1397569 (= lt!1705224 e!2822188)))

(assert (=> d!1397569 (= c!773299 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1397569 (noDuplicateKeys!1178 (_2!28868 lt!1705015))))

(assert (=> d!1397569 (= (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705027) lt!1705224)))

(declare-fun bm!315692 () Bool)

(assert (=> bm!315692 (= call!315695 (forall!10305 (toList!4364 lt!1705027) (ite c!773299 lambda!174165 lambda!174167)))))

(assert (=> b!4529387 (= e!2822188 lt!1705212)))

(declare-fun lt!1705220 () ListMap!3625)

(declare-fun +!1572 (ListMap!3625 tuple2!51146) ListMap!3625)

(assert (=> b!4529387 (= lt!1705220 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529387 (= lt!1705212 (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705219 () Unit!96566)

(assert (=> b!4529387 (= lt!1705219 call!315697)))

(assert (=> b!4529387 (forall!10305 (toList!4364 lt!1705027) lambda!174166)))

(declare-fun lt!1705223 () Unit!96566)

(assert (=> b!4529387 (= lt!1705223 lt!1705219)))

(assert (=> b!4529387 (forall!10305 (toList!4364 lt!1705220) lambda!174167)))

(declare-fun lt!1705216 () Unit!96566)

(declare-fun Unit!96596 () Unit!96566)

(assert (=> b!4529387 (= lt!1705216 Unit!96596)))

(assert (=> b!4529387 call!315696))

(declare-fun lt!1705221 () Unit!96566)

(declare-fun Unit!96597 () Unit!96566)

(assert (=> b!4529387 (= lt!1705221 Unit!96597)))

(declare-fun lt!1705209 () Unit!96566)

(declare-fun Unit!96598 () Unit!96566)

(assert (=> b!4529387 (= lt!1705209 Unit!96598)))

(declare-fun lt!1705210 () Unit!96566)

(assert (=> b!4529387 (= lt!1705210 (forallContained!2559 (toList!4364 lt!1705220) lambda!174167 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529387 (contains!13455 lt!1705220 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705211 () Unit!96566)

(declare-fun Unit!96599 () Unit!96566)

(assert (=> b!4529387 (= lt!1705211 Unit!96599)))

(assert (=> b!4529387 (contains!13455 lt!1705212 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705214 () Unit!96566)

(declare-fun Unit!96600 () Unit!96566)

(assert (=> b!4529387 (= lt!1705214 Unit!96600)))

(assert (=> b!4529387 (forall!10305 (_2!28868 lt!1705015) lambda!174167)))

(declare-fun lt!1705217 () Unit!96566)

(declare-fun Unit!96601 () Unit!96566)

(assert (=> b!4529387 (= lt!1705217 Unit!96601)))

(assert (=> b!4529387 (forall!10305 (toList!4364 lt!1705220) lambda!174167)))

(declare-fun lt!1705218 () Unit!96566)

(declare-fun Unit!96602 () Unit!96566)

(assert (=> b!4529387 (= lt!1705218 Unit!96602)))

(declare-fun lt!1705213 () Unit!96566)

(declare-fun Unit!96603 () Unit!96566)

(assert (=> b!4529387 (= lt!1705213 Unit!96603)))

(declare-fun lt!1705207 () Unit!96566)

(declare-fun addForallContainsKeyThenBeforeAdding!352 (ListMap!3625 ListMap!3625 K!12085 V!12331) Unit!96566)

(assert (=> b!4529387 (= lt!1705207 (addForallContainsKeyThenBeforeAdding!352 lt!1705027 lt!1705212 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4529387 call!315695))

(declare-fun lt!1705225 () Unit!96566)

(assert (=> b!4529387 (= lt!1705225 lt!1705207)))

(assert (=> b!4529387 (forall!10305 (toList!4364 lt!1705027) lambda!174167)))

(declare-fun lt!1705222 () Unit!96566)

(declare-fun Unit!96604 () Unit!96566)

(assert (=> b!4529387 (= lt!1705222 Unit!96604)))

(declare-fun res!1886209 () Bool)

(assert (=> b!4529387 (= res!1886209 (forall!10305 (_2!28868 lt!1705015) lambda!174167))))

(assert (=> b!4529387 (=> (not res!1886209) (not e!2822187))))

(assert (=> b!4529387 e!2822187))

(declare-fun lt!1705227 () Unit!96566)

(declare-fun Unit!96605 () Unit!96566)

(assert (=> b!4529387 (= lt!1705227 Unit!96605)))

(assert (= (and d!1397569 c!773299) b!4529384))

(assert (= (and d!1397569 (not c!773299)) b!4529387))

(assert (= (and b!4529387 res!1886209) b!4529383))

(assert (= (or b!4529384 b!4529387) bm!315692))

(assert (= (or b!4529384 b!4529387) bm!315690))

(assert (= (or b!4529384 b!4529387) bm!315691))

(assert (= (and d!1397569 res!1886211) b!4529385))

(assert (= (and b!4529385 res!1886210) b!4529386))

(declare-fun m!5285349 () Bool)

(assert (=> d!1397569 m!5285349))

(assert (=> d!1397569 m!5285125))

(declare-fun m!5285351 () Bool)

(assert (=> b!4529387 m!5285351))

(assert (=> b!4529387 m!5285351))

(declare-fun m!5285353 () Bool)

(assert (=> b!4529387 m!5285353))

(declare-fun m!5285355 () Bool)

(assert (=> b!4529387 m!5285355))

(declare-fun m!5285357 () Bool)

(assert (=> b!4529387 m!5285357))

(declare-fun m!5285359 () Bool)

(assert (=> b!4529387 m!5285359))

(declare-fun m!5285361 () Bool)

(assert (=> b!4529387 m!5285361))

(declare-fun m!5285363 () Bool)

(assert (=> b!4529387 m!5285363))

(declare-fun m!5285365 () Bool)

(assert (=> b!4529387 m!5285365))

(declare-fun m!5285367 () Bool)

(assert (=> b!4529387 m!5285367))

(declare-fun m!5285369 () Bool)

(assert (=> b!4529387 m!5285369))

(assert (=> b!4529387 m!5285363))

(assert (=> b!4529387 m!5285353))

(assert (=> b!4529383 m!5285355))

(declare-fun m!5285371 () Bool)

(assert (=> bm!315690 m!5285371))

(declare-fun m!5285373 () Bool)

(assert (=> b!4529385 m!5285373))

(declare-fun m!5285375 () Bool)

(assert (=> bm!315691 m!5285375))

(declare-fun m!5285377 () Bool)

(assert (=> b!4529386 m!5285377))

(declare-fun m!5285379 () Bool)

(assert (=> bm!315692 m!5285379))

(assert (=> b!4529270 d!1397569))

(declare-fun bs!864584 () Bool)

(declare-fun d!1397607 () Bool)

(assert (= bs!864584 (and d!1397607 start!449036)))

(declare-fun lambda!174177 () Int)

(assert (=> bs!864584 (= lambda!174177 lambda!174087)))

(declare-fun bs!864585 () Bool)

(assert (= bs!864585 (and d!1397607 b!4529273)))

(assert (=> bs!864585 (not (= lambda!174177 lambda!174088))))

(declare-fun lt!1705249 () ListMap!3625)

(assert (=> d!1397607 (invariantList!1031 (toList!4364 lt!1705249))))

(declare-fun e!2822202 () ListMap!3625)

(assert (=> d!1397607 (= lt!1705249 e!2822202)))

(declare-fun c!773306 () Bool)

(assert (=> d!1397607 (= c!773306 ((_ is Cons!50697) (toList!4363 lt!1705020)))))

(assert (=> d!1397607 (forall!10303 (toList!4363 lt!1705020) lambda!174177)))

(assert (=> d!1397607 (= (extractMap!1234 (toList!4363 lt!1705020)) lt!1705249)))

(declare-fun b!4529408 () Bool)

(assert (=> b!4529408 (= e!2822202 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lt!1705020))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))))))

(declare-fun b!4529409 () Bool)

(assert (=> b!4529409 (= e!2822202 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397607 c!773306) b!4529408))

(assert (= (and d!1397607 (not c!773306)) b!4529409))

(declare-fun m!5285429 () Bool)

(assert (=> d!1397607 m!5285429))

(declare-fun m!5285431 () Bool)

(assert (=> d!1397607 m!5285431))

(declare-fun m!5285433 () Bool)

(assert (=> b!4529408 m!5285433))

(assert (=> b!4529408 m!5285433))

(declare-fun m!5285435 () Bool)

(assert (=> b!4529408 m!5285435))

(assert (=> b!4529270 d!1397607))

(declare-fun d!1397621 () Bool)

(declare-fun isEmpty!28708 (List!50821) Bool)

(assert (=> d!1397621 (= (isEmpty!28707 lm!1477) (isEmpty!28708 (toList!4363 lm!1477)))))

(declare-fun bs!864586 () Bool)

(assert (= bs!864586 d!1397621))

(declare-fun m!5285437 () Bool)

(assert (=> bs!864586 m!5285437))

(assert (=> b!4529271 d!1397621))

(declare-fun d!1397623 () Bool)

(declare-fun e!2822214 () Bool)

(assert (=> d!1397623 e!2822214))

(declare-fun res!1886223 () Bool)

(assert (=> d!1397623 (=> (not res!1886223) (not e!2822214))))

(declare-fun lt!1705258 () ListMap!3625)

(assert (=> d!1397623 (= res!1886223 (not (contains!13455 lt!1705258 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!154 (List!50820 K!12085) List!50820)

(assert (=> d!1397623 (= lt!1705258 (ListMap!3626 (removePresrvNoDuplicatedKeys!154 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287)))))

(assert (=> d!1397623 (= (-!404 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001) key!3287) lt!1705258)))

(declare-fun b!4529427 () Bool)

(declare-datatypes ((List!50823 0))(
  ( (Nil!50699) (Cons!50699 (h!56568 K!12085) (t!357785 List!50823)) )
))
(declare-fun content!8399 (List!50823) (InoxSet K!12085))

(declare-fun keys!17626 (ListMap!3625) List!50823)

(assert (=> b!4529427 (= e!2822214 (= ((_ map and) (content!8399 (keys!17626 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) ((_ map not) (store ((as const (Array K!12085 Bool)) false) key!3287 true))) (content!8399 (keys!17626 lt!1705258))))))

(assert (= (and d!1397623 res!1886223) b!4529427))

(declare-fun m!5285449 () Bool)

(assert (=> d!1397623 m!5285449))

(declare-fun m!5285451 () Bool)

(assert (=> d!1397623 m!5285451))

(declare-fun m!5285453 () Bool)

(assert (=> b!4529427 m!5285453))

(declare-fun m!5285455 () Bool)

(assert (=> b!4529427 m!5285455))

(assert (=> b!4529427 m!5285453))

(declare-fun m!5285457 () Bool)

(assert (=> b!4529427 m!5285457))

(declare-fun m!5285459 () Bool)

(assert (=> b!4529427 m!5285459))

(assert (=> b!4529427 m!5285151))

(assert (=> b!4529427 m!5285457))

(declare-fun m!5285461 () Bool)

(assert (=> b!4529427 m!5285461))

(assert (=> b!4529271 d!1397623))

(declare-fun bs!864587 () Bool)

(declare-fun b!4529431 () Bool)

(assert (= bs!864587 (and b!4529431 b!4529387)))

(declare-fun lambda!174178 () Int)

(assert (=> bs!864587 (= (= lt!1705001 lt!1705027) (= lambda!174178 lambda!174166))))

(assert (=> bs!864587 (= (= lt!1705001 lt!1705212) (= lambda!174178 lambda!174167))))

(declare-fun bs!864588 () Bool)

(assert (= bs!864588 (and b!4529431 b!4529384)))

(assert (=> bs!864588 (= (= lt!1705001 lt!1705027) (= lambda!174178 lambda!174165))))

(declare-fun bs!864589 () Bool)

(assert (= bs!864589 (and b!4529431 d!1397569)))

(assert (=> bs!864589 (= (= lt!1705001 lt!1705224) (= lambda!174178 lambda!174168))))

(declare-fun bs!864590 () Bool)

(assert (= bs!864590 (and b!4529431 b!4529273)))

(assert (=> bs!864590 (not (= lambda!174178 lambda!174089))))

(assert (=> b!4529431 true))

(declare-fun bs!864591 () Bool)

(declare-fun b!4529434 () Bool)

(assert (= bs!864591 (and b!4529434 b!4529387)))

(declare-fun lambda!174179 () Int)

(assert (=> bs!864591 (= (= lt!1705001 lt!1705027) (= lambda!174179 lambda!174166))))

(declare-fun bs!864592 () Bool)

(assert (= bs!864592 (and b!4529434 b!4529431)))

(assert (=> bs!864592 (= lambda!174179 lambda!174178)))

(assert (=> bs!864591 (= (= lt!1705001 lt!1705212) (= lambda!174179 lambda!174167))))

(declare-fun bs!864593 () Bool)

(assert (= bs!864593 (and b!4529434 b!4529384)))

(assert (=> bs!864593 (= (= lt!1705001 lt!1705027) (= lambda!174179 lambda!174165))))

(declare-fun bs!864594 () Bool)

(assert (= bs!864594 (and b!4529434 d!1397569)))

(assert (=> bs!864594 (= (= lt!1705001 lt!1705224) (= lambda!174179 lambda!174168))))

(declare-fun bs!864595 () Bool)

(assert (= bs!864595 (and b!4529434 b!4529273)))

(assert (=> bs!864595 (not (= lambda!174179 lambda!174089))))

(assert (=> b!4529434 true))

(declare-fun lambda!174180 () Int)

(declare-fun lt!1705266 () ListMap!3625)

(assert (=> bs!864591 (= (= lt!1705266 lt!1705027) (= lambda!174180 lambda!174166))))

(assert (=> bs!864592 (= (= lt!1705266 lt!1705001) (= lambda!174180 lambda!174178))))

(assert (=> bs!864591 (= (= lt!1705266 lt!1705212) (= lambda!174180 lambda!174167))))

(assert (=> bs!864593 (= (= lt!1705266 lt!1705027) (= lambda!174180 lambda!174165))))

(assert (=> bs!864594 (= (= lt!1705266 lt!1705224) (= lambda!174180 lambda!174168))))

(assert (=> bs!864595 (not (= lambda!174180 lambda!174089))))

(assert (=> b!4529434 (= (= lt!1705266 lt!1705001) (= lambda!174180 lambda!174179))))

(assert (=> b!4529434 true))

(declare-fun bs!864596 () Bool)

(declare-fun d!1397629 () Bool)

(assert (= bs!864596 (and d!1397629 b!4529387)))

(declare-fun lambda!174181 () Int)

(declare-fun lt!1705278 () ListMap!3625)

(assert (=> bs!864596 (= (= lt!1705278 lt!1705027) (= lambda!174181 lambda!174166))))

(declare-fun bs!864597 () Bool)

(assert (= bs!864597 (and d!1397629 b!4529431)))

(assert (=> bs!864597 (= (= lt!1705278 lt!1705001) (= lambda!174181 lambda!174178))))

(declare-fun bs!864598 () Bool)

(assert (= bs!864598 (and d!1397629 b!4529434)))

(assert (=> bs!864598 (= (= lt!1705278 lt!1705266) (= lambda!174181 lambda!174180))))

(assert (=> bs!864596 (= (= lt!1705278 lt!1705212) (= lambda!174181 lambda!174167))))

(declare-fun bs!864599 () Bool)

(assert (= bs!864599 (and d!1397629 b!4529384)))

(assert (=> bs!864599 (= (= lt!1705278 lt!1705027) (= lambda!174181 lambda!174165))))

(declare-fun bs!864600 () Bool)

(assert (= bs!864600 (and d!1397629 d!1397569)))

(assert (=> bs!864600 (= (= lt!1705278 lt!1705224) (= lambda!174181 lambda!174168))))

(declare-fun bs!864601 () Bool)

(assert (= bs!864601 (and d!1397629 b!4529273)))

(assert (=> bs!864601 (not (= lambda!174181 lambda!174089))))

(assert (=> bs!864598 (= (= lt!1705278 lt!1705001) (= lambda!174181 lambda!174179))))

(assert (=> d!1397629 true))

(declare-fun b!4529430 () Bool)

(declare-fun e!2822217 () Bool)

(assert (=> b!4529430 (= e!2822217 (forall!10305 (toList!4364 lt!1705001) lambda!174180))))

(declare-fun bm!315694 () Bool)

(declare-fun call!315700 () Bool)

(declare-fun c!773313 () Bool)

(assert (=> bm!315694 (= call!315700 (forall!10305 (ite c!773313 (toList!4364 lt!1705001) (t!357782 (_2!28868 lt!1705015))) (ite c!773313 lambda!174178 lambda!174180)))))

(declare-fun e!2822218 () ListMap!3625)

(assert (=> b!4529431 (= e!2822218 lt!1705001)))

(declare-fun lt!1705269 () Unit!96566)

(declare-fun call!315701 () Unit!96566)

(assert (=> b!4529431 (= lt!1705269 call!315701)))

(declare-fun call!315699 () Bool)

(assert (=> b!4529431 call!315699))

(declare-fun lt!1705280 () Unit!96566)

(assert (=> b!4529431 (= lt!1705280 lt!1705269)))

(assert (=> b!4529431 call!315700))

(declare-fun lt!1705262 () Unit!96566)

(declare-fun Unit!96608 () Unit!96566)

(assert (=> b!4529431 (= lt!1705262 Unit!96608)))

(declare-fun b!4529432 () Bool)

(declare-fun res!1886227 () Bool)

(declare-fun e!2822219 () Bool)

(assert (=> b!4529432 (=> (not res!1886227) (not e!2822219))))

(assert (=> b!4529432 (= res!1886227 (forall!10305 (toList!4364 lt!1705001) lambda!174181))))

(declare-fun bm!315695 () Bool)

(assert (=> bm!315695 (= call!315701 (lemmaContainsAllItsOwnKeys!352 lt!1705001))))

(declare-fun b!4529433 () Bool)

(assert (=> b!4529433 (= e!2822219 (invariantList!1031 (toList!4364 lt!1705278)))))

(assert (=> d!1397629 e!2822219))

(declare-fun res!1886228 () Bool)

(assert (=> d!1397629 (=> (not res!1886228) (not e!2822219))))

(assert (=> d!1397629 (= res!1886228 (forall!10305 (_2!28868 lt!1705015) lambda!174181))))

(assert (=> d!1397629 (= lt!1705278 e!2822218)))

(assert (=> d!1397629 (= c!773313 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1397629 (noDuplicateKeys!1178 (_2!28868 lt!1705015))))

(assert (=> d!1397629 (= (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001) lt!1705278)))

(declare-fun bm!315696 () Bool)

(assert (=> bm!315696 (= call!315699 (forall!10305 (toList!4364 lt!1705001) (ite c!773313 lambda!174178 lambda!174180)))))

(assert (=> b!4529434 (= e!2822218 lt!1705266)))

(declare-fun lt!1705274 () ListMap!3625)

(assert (=> b!4529434 (= lt!1705274 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529434 (= lt!1705266 (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705273 () Unit!96566)

(assert (=> b!4529434 (= lt!1705273 call!315701)))

(assert (=> b!4529434 (forall!10305 (toList!4364 lt!1705001) lambda!174179)))

(declare-fun lt!1705277 () Unit!96566)

(assert (=> b!4529434 (= lt!1705277 lt!1705273)))

(assert (=> b!4529434 (forall!10305 (toList!4364 lt!1705274) lambda!174180)))

(declare-fun lt!1705270 () Unit!96566)

(declare-fun Unit!96611 () Unit!96566)

(assert (=> b!4529434 (= lt!1705270 Unit!96611)))

(assert (=> b!4529434 call!315700))

(declare-fun lt!1705275 () Unit!96566)

(declare-fun Unit!96612 () Unit!96566)

(assert (=> b!4529434 (= lt!1705275 Unit!96612)))

(declare-fun lt!1705263 () Unit!96566)

(declare-fun Unit!96613 () Unit!96566)

(assert (=> b!4529434 (= lt!1705263 Unit!96613)))

(declare-fun lt!1705264 () Unit!96566)

(assert (=> b!4529434 (= lt!1705264 (forallContained!2559 (toList!4364 lt!1705274) lambda!174180 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529434 (contains!13455 lt!1705274 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705265 () Unit!96566)

(declare-fun Unit!96614 () Unit!96566)

(assert (=> b!4529434 (= lt!1705265 Unit!96614)))

(assert (=> b!4529434 (contains!13455 lt!1705266 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705268 () Unit!96566)

(declare-fun Unit!96615 () Unit!96566)

(assert (=> b!4529434 (= lt!1705268 Unit!96615)))

(assert (=> b!4529434 (forall!10305 (_2!28868 lt!1705015) lambda!174180)))

(declare-fun lt!1705271 () Unit!96566)

(declare-fun Unit!96616 () Unit!96566)

(assert (=> b!4529434 (= lt!1705271 Unit!96616)))

(assert (=> b!4529434 (forall!10305 (toList!4364 lt!1705274) lambda!174180)))

(declare-fun lt!1705272 () Unit!96566)

(declare-fun Unit!96617 () Unit!96566)

(assert (=> b!4529434 (= lt!1705272 Unit!96617)))

(declare-fun lt!1705267 () Unit!96566)

(declare-fun Unit!96618 () Unit!96566)

(assert (=> b!4529434 (= lt!1705267 Unit!96618)))

(declare-fun lt!1705261 () Unit!96566)

(assert (=> b!4529434 (= lt!1705261 (addForallContainsKeyThenBeforeAdding!352 lt!1705001 lt!1705266 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4529434 call!315699))

(declare-fun lt!1705279 () Unit!96566)

(assert (=> b!4529434 (= lt!1705279 lt!1705261)))

(assert (=> b!4529434 (forall!10305 (toList!4364 lt!1705001) lambda!174180)))

(declare-fun lt!1705276 () Unit!96566)

(declare-fun Unit!96619 () Unit!96566)

(assert (=> b!4529434 (= lt!1705276 Unit!96619)))

(declare-fun res!1886226 () Bool)

(assert (=> b!4529434 (= res!1886226 (forall!10305 (_2!28868 lt!1705015) lambda!174180))))

(assert (=> b!4529434 (=> (not res!1886226) (not e!2822217))))

(assert (=> b!4529434 e!2822217))

(declare-fun lt!1705281 () Unit!96566)

(declare-fun Unit!96620 () Unit!96566)

(assert (=> b!4529434 (= lt!1705281 Unit!96620)))

(assert (= (and d!1397629 c!773313) b!4529431))

(assert (= (and d!1397629 (not c!773313)) b!4529434))

(assert (= (and b!4529434 res!1886226) b!4529430))

(assert (= (or b!4529431 b!4529434) bm!315696))

(assert (= (or b!4529431 b!4529434) bm!315694))

(assert (= (or b!4529431 b!4529434) bm!315695))

(assert (= (and d!1397629 res!1886228) b!4529432))

(assert (= (and b!4529432 res!1886227) b!4529433))

(declare-fun m!5285469 () Bool)

(assert (=> d!1397629 m!5285469))

(assert (=> d!1397629 m!5285125))

(declare-fun m!5285471 () Bool)

(assert (=> b!4529434 m!5285471))

(assert (=> b!4529434 m!5285471))

(declare-fun m!5285473 () Bool)

(assert (=> b!4529434 m!5285473))

(declare-fun m!5285475 () Bool)

(assert (=> b!4529434 m!5285475))

(declare-fun m!5285477 () Bool)

(assert (=> b!4529434 m!5285477))

(declare-fun m!5285479 () Bool)

(assert (=> b!4529434 m!5285479))

(declare-fun m!5285481 () Bool)

(assert (=> b!4529434 m!5285481))

(declare-fun m!5285483 () Bool)

(assert (=> b!4529434 m!5285483))

(declare-fun m!5285485 () Bool)

(assert (=> b!4529434 m!5285485))

(declare-fun m!5285487 () Bool)

(assert (=> b!4529434 m!5285487))

(declare-fun m!5285489 () Bool)

(assert (=> b!4529434 m!5285489))

(assert (=> b!4529434 m!5285483))

(assert (=> b!4529434 m!5285473))

(assert (=> b!4529430 m!5285475))

(declare-fun m!5285491 () Bool)

(assert (=> bm!315694 m!5285491))

(declare-fun m!5285493 () Bool)

(assert (=> b!4529432 m!5285493))

(declare-fun m!5285495 () Bool)

(assert (=> bm!315695 m!5285495))

(declare-fun m!5285497 () Bool)

(assert (=> b!4529433 m!5285497))

(declare-fun m!5285499 () Bool)

(assert (=> bm!315696 m!5285499))

(assert (=> b!4529271 d!1397629))

(declare-fun d!1397633 () Bool)

(assert (=> d!1397633 (= (addToMapMapFromBucket!705 (_2!28868 lt!1705015) (-!404 lt!1705001 key!3287)) (-!404 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001) key!3287))))

(declare-fun lt!1705303 () Unit!96566)

(declare-fun choose!29700 (ListMap!3625 K!12085 List!50820) Unit!96566)

(assert (=> d!1397633 (= lt!1705303 (choose!29700 lt!1705001 key!3287 (_2!28868 lt!1705015)))))

(assert (=> d!1397633 (not (containsKey!1826 (_2!28868 lt!1705015) key!3287))))

(assert (=> d!1397633 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!2 lt!1705001 key!3287 (_2!28868 lt!1705015)) lt!1705303)))

(declare-fun bs!864603 () Bool)

(assert (= bs!864603 d!1397633))

(assert (=> bs!864603 m!5285151))

(assert (=> bs!864603 m!5285153))

(assert (=> bs!864603 m!5285109))

(declare-fun m!5285527 () Bool)

(assert (=> bs!864603 m!5285527))

(declare-fun m!5285529 () Bool)

(assert (=> bs!864603 m!5285529))

(assert (=> bs!864603 m!5285147))

(assert (=> bs!864603 m!5285151))

(assert (=> bs!864603 m!5285109))

(assert (=> b!4529271 d!1397633))

(declare-fun d!1397641 () Bool)

(declare-fun res!1886248 () Bool)

(declare-fun e!2822235 () Bool)

(assert (=> d!1397641 (=> res!1886248 e!2822235)))

(assert (=> d!1397641 (= res!1886248 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397641 (= (forall!10303 (toList!4363 lm!1477) lambda!174087) e!2822235)))

(declare-fun b!4529456 () Bool)

(declare-fun e!2822236 () Bool)

(assert (=> b!4529456 (= e!2822235 e!2822236)))

(declare-fun res!1886249 () Bool)

(assert (=> b!4529456 (=> (not res!1886249) (not e!2822236))))

(declare-fun dynLambda!21186 (Int tuple2!51148) Bool)

(assert (=> b!4529456 (= res!1886249 (dynLambda!21186 lambda!174087 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4529457 () Bool)

(assert (=> b!4529457 (= e!2822236 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174087))))

(assert (= (and d!1397641 (not res!1886248)) b!4529456))

(assert (= (and b!4529456 res!1886249) b!4529457))

(declare-fun b_lambda!156323 () Bool)

(assert (=> (not b_lambda!156323) (not b!4529456)))

(declare-fun m!5285545 () Bool)

(assert (=> b!4529456 m!5285545))

(declare-fun m!5285547 () Bool)

(assert (=> b!4529457 m!5285547))

(assert (=> start!449036 d!1397641))

(declare-fun d!1397645 () Bool)

(declare-fun isStrictlySorted!444 (List!50821) Bool)

(assert (=> d!1397645 (= (inv!66269 lm!1477) (isStrictlySorted!444 (toList!4363 lm!1477)))))

(declare-fun bs!864619 () Bool)

(assert (= bs!864619 d!1397645))

(declare-fun m!5285549 () Bool)

(assert (=> bs!864619 m!5285549))

(assert (=> start!449036 d!1397645))

(declare-fun b!4529478 () Bool)

(declare-fun e!2822250 () Bool)

(declare-fun contains!13457 (List!50823 K!12085) Bool)

(assert (=> b!4529478 (= e!2822250 (not (contains!13457 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287)))))

(declare-fun b!4529479 () Bool)

(declare-fun e!2822254 () Unit!96566)

(declare-fun e!2822255 () Unit!96566)

(assert (=> b!4529479 (= e!2822254 e!2822255)))

(declare-fun c!773324 () Bool)

(declare-fun call!315707 () Bool)

(assert (=> b!4529479 (= c!773324 call!315707)))

(declare-fun b!4529480 () Bool)

(declare-fun e!2822251 () Bool)

(declare-fun e!2822252 () Bool)

(assert (=> b!4529480 (= e!2822251 e!2822252)))

(declare-fun res!1886257 () Bool)

(assert (=> b!4529480 (=> (not res!1886257) (not e!2822252))))

(declare-datatypes ((Option!11156 0))(
  ( (None!11155) (Some!11155 (v!44805 V!12331)) )
))
(declare-fun isDefined!8439 (Option!11156) Bool)

(declare-fun getValueByKey!1120 (List!50820 K!12085) Option!11156)

(assert (=> b!4529480 (= res!1886257 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287)))))

(declare-fun b!4529481 () Bool)

(declare-fun e!2822253 () List!50823)

(declare-fun getKeysList!479 (List!50820) List!50823)

(assert (=> b!4529481 (= e!2822253 (getKeysList!479 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))

(declare-fun b!4529482 () Bool)

(assert (=> b!4529482 (= e!2822252 (contains!13457 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(declare-fun d!1397647 () Bool)

(assert (=> d!1397647 e!2822251))

(declare-fun res!1886258 () Bool)

(assert (=> d!1397647 (=> res!1886258 e!2822251)))

(assert (=> d!1397647 (= res!1886258 e!2822250)))

(declare-fun res!1886256 () Bool)

(assert (=> d!1397647 (=> (not res!1886256) (not e!2822250))))

(declare-fun lt!1705349 () Bool)

(assert (=> d!1397647 (= res!1886256 (not lt!1705349))))

(declare-fun lt!1705350 () Bool)

(assert (=> d!1397647 (= lt!1705349 lt!1705350)))

(declare-fun lt!1705351 () Unit!96566)

(assert (=> d!1397647 (= lt!1705351 e!2822254)))

(declare-fun c!773322 () Bool)

(assert (=> d!1397647 (= c!773322 lt!1705350)))

(declare-fun containsKey!1829 (List!50820 K!12085) Bool)

(assert (=> d!1397647 (= lt!1705350 (containsKey!1829 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (=> d!1397647 (= (contains!13455 (extractMap!1234 (t!357783 (toList!4363 lm!1477))) key!3287) lt!1705349)))

(declare-fun b!4529483 () Bool)

(assert (=> b!4529483 (= e!2822253 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun b!4529484 () Bool)

(declare-fun Unit!96622 () Unit!96566)

(assert (=> b!4529484 (= e!2822255 Unit!96622)))

(declare-fun bm!315702 () Bool)

(assert (=> bm!315702 (= call!315707 (contains!13457 e!2822253 key!3287))))

(declare-fun c!773323 () Bool)

(assert (=> bm!315702 (= c!773323 c!773322)))

(declare-fun b!4529485 () Bool)

(declare-fun lt!1705347 () Unit!96566)

(assert (=> b!4529485 (= e!2822254 lt!1705347)))

(declare-fun lt!1705348 () Unit!96566)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (List!50820 K!12085) Unit!96566)

(assert (=> b!4529485 (= lt!1705348 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (=> b!4529485 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(declare-fun lt!1705352 () Unit!96566)

(assert (=> b!4529485 (= lt!1705352 lt!1705348)))

(declare-fun lemmaInListThenGetKeysListContains!475 (List!50820 K!12085) Unit!96566)

(assert (=> b!4529485 (= lt!1705347 (lemmaInListThenGetKeysListContains!475 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (=> b!4529485 call!315707))

(declare-fun b!4529486 () Bool)

(assert (=> b!4529486 false))

(declare-fun lt!1705346 () Unit!96566)

(declare-fun lt!1705353 () Unit!96566)

(assert (=> b!4529486 (= lt!1705346 lt!1705353)))

(assert (=> b!4529486 (containsKey!1829 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!478 (List!50820 K!12085) Unit!96566)

(assert (=> b!4529486 (= lt!1705353 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(declare-fun Unit!96623 () Unit!96566)

(assert (=> b!4529486 (= e!2822255 Unit!96623)))

(assert (= (and d!1397647 c!773322) b!4529485))

(assert (= (and d!1397647 (not c!773322)) b!4529479))

(assert (= (and b!4529479 c!773324) b!4529486))

(assert (= (and b!4529479 (not c!773324)) b!4529484))

(assert (= (or b!4529485 b!4529479) bm!315702))

(assert (= (and bm!315702 c!773323) b!4529481))

(assert (= (and bm!315702 (not c!773323)) b!4529483))

(assert (= (and d!1397647 res!1886256) b!4529478))

(assert (= (and d!1397647 (not res!1886258)) b!4529480))

(assert (= (and b!4529480 res!1886257) b!4529482))

(assert (=> b!4529478 m!5285139))

(declare-fun m!5285597 () Bool)

(assert (=> b!4529478 m!5285597))

(assert (=> b!4529478 m!5285597))

(declare-fun m!5285599 () Bool)

(assert (=> b!4529478 m!5285599))

(declare-fun m!5285601 () Bool)

(assert (=> b!4529485 m!5285601))

(declare-fun m!5285605 () Bool)

(assert (=> b!4529485 m!5285605))

(assert (=> b!4529485 m!5285605))

(declare-fun m!5285609 () Bool)

(assert (=> b!4529485 m!5285609))

(declare-fun m!5285613 () Bool)

(assert (=> b!4529485 m!5285613))

(assert (=> b!4529483 m!5285139))

(assert (=> b!4529483 m!5285597))

(assert (=> b!4529480 m!5285605))

(assert (=> b!4529480 m!5285605))

(assert (=> b!4529480 m!5285609))

(declare-fun m!5285621 () Bool)

(assert (=> d!1397647 m!5285621))

(declare-fun m!5285623 () Bool)

(assert (=> b!4529481 m!5285623))

(assert (=> b!4529482 m!5285139))

(assert (=> b!4529482 m!5285597))

(assert (=> b!4529482 m!5285597))

(assert (=> b!4529482 m!5285599))

(assert (=> b!4529486 m!5285621))

(declare-fun m!5285625 () Bool)

(assert (=> b!4529486 m!5285625))

(declare-fun m!5285627 () Bool)

(assert (=> bm!315702 m!5285627))

(assert (=> b!4529272 d!1397647))

(declare-fun bs!864641 () Bool)

(declare-fun d!1397661 () Bool)

(assert (= bs!864641 (and d!1397661 start!449036)))

(declare-fun lambda!174187 () Int)

(assert (=> bs!864641 (= lambda!174187 lambda!174087)))

(declare-fun bs!864642 () Bool)

(assert (= bs!864642 (and d!1397661 b!4529273)))

(assert (=> bs!864642 (not (= lambda!174187 lambda!174088))))

(declare-fun bs!864643 () Bool)

(assert (= bs!864643 (and d!1397661 d!1397607)))

(assert (=> bs!864643 (= lambda!174187 lambda!174177)))

(declare-fun lt!1705362 () ListMap!3625)

(assert (=> d!1397661 (invariantList!1031 (toList!4364 lt!1705362))))

(declare-fun e!2822258 () ListMap!3625)

(assert (=> d!1397661 (= lt!1705362 e!2822258)))

(declare-fun c!773325 () Bool)

(assert (=> d!1397661 (= c!773325 ((_ is Cons!50697) (t!357783 (toList!4363 lm!1477))))))

(assert (=> d!1397661 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174187)))

(assert (=> d!1397661 (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705362)))

(declare-fun b!4529491 () Bool)

(assert (=> b!4529491 (= e!2822258 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))))))

(declare-fun b!4529492 () Bool)

(assert (=> b!4529492 (= e!2822258 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397661 c!773325) b!4529491))

(assert (= (and d!1397661 (not c!773325)) b!4529492))

(declare-fun m!5285641 () Bool)

(assert (=> d!1397661 m!5285641))

(declare-fun m!5285643 () Bool)

(assert (=> d!1397661 m!5285643))

(declare-fun m!5285645 () Bool)

(assert (=> b!4529491 m!5285645))

(assert (=> b!4529491 m!5285645))

(declare-fun m!5285647 () Bool)

(assert (=> b!4529491 m!5285647))

(assert (=> b!4529272 d!1397661))

(declare-fun bs!864644 () Bool)

(declare-fun d!1397665 () Bool)

(assert (= bs!864644 (and d!1397665 start!449036)))

(declare-fun lambda!174190 () Int)

(assert (=> bs!864644 (= lambda!174190 lambda!174087)))

(declare-fun bs!864645 () Bool)

(assert (= bs!864645 (and d!1397665 b!4529273)))

(assert (=> bs!864645 (not (= lambda!174190 lambda!174088))))

(declare-fun bs!864646 () Bool)

(assert (= bs!864646 (and d!1397665 d!1397607)))

(assert (=> bs!864646 (= lambda!174190 lambda!174177)))

(declare-fun bs!864647 () Bool)

(assert (= bs!864647 (and d!1397665 d!1397661)))

(assert (=> bs!864647 (= lambda!174190 lambda!174187)))

(assert (=> d!1397665 (contains!13455 (extractMap!1234 (toList!4363 lt!1705004)) key!3287)))

(declare-fun lt!1705365 () Unit!96566)

(declare-fun choose!29703 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> d!1397665 (= lt!1705365 (choose!29703 lt!1705004 key!3287 hashF!1107))))

(assert (=> d!1397665 (forall!10303 (toList!4363 lt!1705004) lambda!174190)))

(assert (=> d!1397665 (= (lemmaListContainsThenExtractedMapContains!148 lt!1705004 key!3287 hashF!1107) lt!1705365)))

(declare-fun bs!864648 () Bool)

(assert (= bs!864648 d!1397665))

(assert (=> bs!864648 m!5285141))

(assert (=> bs!864648 m!5285141))

(declare-fun m!5285649 () Bool)

(assert (=> bs!864648 m!5285649))

(declare-fun m!5285651 () Bool)

(assert (=> bs!864648 m!5285651))

(declare-fun m!5285653 () Bool)

(assert (=> bs!864648 m!5285653))

(assert (=> b!4529272 d!1397665))

(declare-fun b!4529493 () Bool)

(declare-fun e!2822259 () Bool)

(assert (=> b!4529493 (= e!2822259 (not (contains!13457 (keys!17626 lt!1705001) key!3287)))))

(declare-fun b!4529494 () Bool)

(declare-fun e!2822263 () Unit!96566)

(declare-fun e!2822264 () Unit!96566)

(assert (=> b!4529494 (= e!2822263 e!2822264)))

(declare-fun c!773328 () Bool)

(declare-fun call!315708 () Bool)

(assert (=> b!4529494 (= c!773328 call!315708)))

(declare-fun b!4529495 () Bool)

(declare-fun e!2822260 () Bool)

(declare-fun e!2822261 () Bool)

(assert (=> b!4529495 (= e!2822260 e!2822261)))

(declare-fun res!1886264 () Bool)

(assert (=> b!4529495 (=> (not res!1886264) (not e!2822261))))

(assert (=> b!4529495 (= res!1886264 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287)))))

(declare-fun b!4529496 () Bool)

(declare-fun e!2822262 () List!50823)

(assert (=> b!4529496 (= e!2822262 (getKeysList!479 (toList!4364 lt!1705001)))))

(declare-fun b!4529497 () Bool)

(assert (=> b!4529497 (= e!2822261 (contains!13457 (keys!17626 lt!1705001) key!3287))))

(declare-fun d!1397667 () Bool)

(assert (=> d!1397667 e!2822260))

(declare-fun res!1886265 () Bool)

(assert (=> d!1397667 (=> res!1886265 e!2822260)))

(assert (=> d!1397667 (= res!1886265 e!2822259)))

(declare-fun res!1886263 () Bool)

(assert (=> d!1397667 (=> (not res!1886263) (not e!2822259))))

(declare-fun lt!1705369 () Bool)

(assert (=> d!1397667 (= res!1886263 (not lt!1705369))))

(declare-fun lt!1705370 () Bool)

(assert (=> d!1397667 (= lt!1705369 lt!1705370)))

(declare-fun lt!1705371 () Unit!96566)

(assert (=> d!1397667 (= lt!1705371 e!2822263)))

(declare-fun c!773326 () Bool)

(assert (=> d!1397667 (= c!773326 lt!1705370)))

(assert (=> d!1397667 (= lt!1705370 (containsKey!1829 (toList!4364 lt!1705001) key!3287))))

(assert (=> d!1397667 (= (contains!13455 lt!1705001 key!3287) lt!1705369)))

(declare-fun b!4529498 () Bool)

(assert (=> b!4529498 (= e!2822262 (keys!17626 lt!1705001))))

(declare-fun b!4529499 () Bool)

(declare-fun Unit!96624 () Unit!96566)

(assert (=> b!4529499 (= e!2822264 Unit!96624)))

(declare-fun bm!315703 () Bool)

(assert (=> bm!315703 (= call!315708 (contains!13457 e!2822262 key!3287))))

(declare-fun c!773327 () Bool)

(assert (=> bm!315703 (= c!773327 c!773326)))

(declare-fun b!4529500 () Bool)

(declare-fun lt!1705367 () Unit!96566)

(assert (=> b!4529500 (= e!2822263 lt!1705367)))

(declare-fun lt!1705368 () Unit!96566)

(assert (=> b!4529500 (= lt!1705368 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705001) key!3287))))

(assert (=> b!4529500 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))))

(declare-fun lt!1705372 () Unit!96566)

(assert (=> b!4529500 (= lt!1705372 lt!1705368)))

(assert (=> b!4529500 (= lt!1705367 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705001) key!3287))))

(assert (=> b!4529500 call!315708))

(declare-fun b!4529501 () Bool)

(assert (=> b!4529501 false))

(declare-fun lt!1705366 () Unit!96566)

(declare-fun lt!1705373 () Unit!96566)

(assert (=> b!4529501 (= lt!1705366 lt!1705373)))

(assert (=> b!4529501 (containsKey!1829 (toList!4364 lt!1705001) key!3287)))

(assert (=> b!4529501 (= lt!1705373 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705001) key!3287))))

(declare-fun Unit!96625 () Unit!96566)

(assert (=> b!4529501 (= e!2822264 Unit!96625)))

(assert (= (and d!1397667 c!773326) b!4529500))

(assert (= (and d!1397667 (not c!773326)) b!4529494))

(assert (= (and b!4529494 c!773328) b!4529501))

(assert (= (and b!4529494 (not c!773328)) b!4529499))

(assert (= (or b!4529500 b!4529494) bm!315703))

(assert (= (and bm!315703 c!773327) b!4529496))

(assert (= (and bm!315703 (not c!773327)) b!4529498))

(assert (= (and d!1397667 res!1886263) b!4529493))

(assert (= (and d!1397667 (not res!1886265)) b!4529495))

(assert (= (and b!4529495 res!1886264) b!4529497))

(declare-fun m!5285655 () Bool)

(assert (=> b!4529493 m!5285655))

(assert (=> b!4529493 m!5285655))

(declare-fun m!5285657 () Bool)

(assert (=> b!4529493 m!5285657))

(declare-fun m!5285659 () Bool)

(assert (=> b!4529500 m!5285659))

(declare-fun m!5285661 () Bool)

(assert (=> b!4529500 m!5285661))

(assert (=> b!4529500 m!5285661))

(declare-fun m!5285663 () Bool)

(assert (=> b!4529500 m!5285663))

(declare-fun m!5285665 () Bool)

(assert (=> b!4529500 m!5285665))

(assert (=> b!4529498 m!5285655))

(assert (=> b!4529495 m!5285661))

(assert (=> b!4529495 m!5285661))

(assert (=> b!4529495 m!5285663))

(declare-fun m!5285667 () Bool)

(assert (=> d!1397667 m!5285667))

(declare-fun m!5285669 () Bool)

(assert (=> b!4529496 m!5285669))

(assert (=> b!4529497 m!5285655))

(assert (=> b!4529497 m!5285655))

(assert (=> b!4529497 m!5285657))

(assert (=> b!4529501 m!5285667))

(declare-fun m!5285671 () Bool)

(assert (=> b!4529501 m!5285671))

(declare-fun m!5285673 () Bool)

(assert (=> bm!315703 m!5285673))

(assert (=> b!4529272 d!1397667))

(declare-fun bs!864649 () Bool)

(declare-fun d!1397669 () Bool)

(assert (= bs!864649 (and d!1397669 d!1397661)))

(declare-fun lambda!174191 () Int)

(assert (=> bs!864649 (= lambda!174191 lambda!174187)))

(declare-fun bs!864650 () Bool)

(assert (= bs!864650 (and d!1397669 d!1397665)))

(assert (=> bs!864650 (= lambda!174191 lambda!174190)))

(declare-fun bs!864651 () Bool)

(assert (= bs!864651 (and d!1397669 d!1397607)))

(assert (=> bs!864651 (= lambda!174191 lambda!174177)))

(declare-fun bs!864652 () Bool)

(assert (= bs!864652 (and d!1397669 b!4529273)))

(assert (=> bs!864652 (not (= lambda!174191 lambda!174088))))

(declare-fun bs!864653 () Bool)

(assert (= bs!864653 (and d!1397669 start!449036)))

(assert (=> bs!864653 (= lambda!174191 lambda!174087)))

(declare-fun lt!1705374 () ListMap!3625)

(assert (=> d!1397669 (invariantList!1031 (toList!4364 lt!1705374))))

(declare-fun e!2822265 () ListMap!3625)

(assert (=> d!1397669 (= lt!1705374 e!2822265)))

(declare-fun c!773329 () Bool)

(assert (=> d!1397669 (= c!773329 ((_ is Cons!50697) (toList!4363 lt!1705004)))))

(assert (=> d!1397669 (forall!10303 (toList!4363 lt!1705004) lambda!174191)))

(assert (=> d!1397669 (= (extractMap!1234 (toList!4363 lt!1705004)) lt!1705374)))

(declare-fun b!4529502 () Bool)

(assert (=> b!4529502 (= e!2822265 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))))))

(declare-fun b!4529503 () Bool)

(assert (=> b!4529503 (= e!2822265 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397669 c!773329) b!4529502))

(assert (= (and d!1397669 (not c!773329)) b!4529503))

(declare-fun m!5285675 () Bool)

(assert (=> d!1397669 m!5285675))

(declare-fun m!5285677 () Bool)

(assert (=> d!1397669 m!5285677))

(declare-fun m!5285679 () Bool)

(assert (=> b!4529502 m!5285679))

(assert (=> b!4529502 m!5285679))

(declare-fun m!5285681 () Bool)

(assert (=> b!4529502 m!5285681))

(assert (=> b!4529272 d!1397669))

(declare-fun b!4529527 () Bool)

(declare-fun e!2822285 () Option!11153)

(declare-fun e!2822282 () Option!11153)

(assert (=> b!4529527 (= e!2822285 e!2822282)))

(declare-fun c!773335 () Bool)

(assert (=> b!4529527 (= c!773335 ((_ is Cons!50696) (_2!28868 lt!1705015)))))

(declare-fun b!4529528 () Bool)

(assert (=> b!4529528 (= e!2822282 None!11152)))

(declare-fun b!4529529 () Bool)

(declare-fun e!2822286 () Bool)

(declare-fun e!2822284 () Bool)

(assert (=> b!4529529 (= e!2822286 e!2822284)))

(declare-fun res!1886280 () Bool)

(assert (=> b!4529529 (=> (not res!1886280) (not e!2822284))))

(declare-fun lt!1705382 () Option!11153)

(declare-fun isDefined!8440 (Option!11153) Bool)

(assert (=> b!4529529 (= res!1886280 (isDefined!8440 lt!1705382))))

(declare-fun b!4529530 () Bool)

(assert (=> b!4529530 (= e!2822285 (Some!11152 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4529531 () Bool)

(declare-fun res!1886279 () Bool)

(assert (=> b!4529531 (=> (not res!1886279) (not e!2822284))))

(assert (=> b!4529531 (= res!1886279 (= (_1!28867 (get!16633 lt!1705382)) key!3287))))

(declare-fun d!1397671 () Bool)

(assert (=> d!1397671 e!2822286))

(declare-fun res!1886282 () Bool)

(assert (=> d!1397671 (=> res!1886282 e!2822286)))

(declare-fun e!2822283 () Bool)

(assert (=> d!1397671 (= res!1886282 e!2822283)))

(declare-fun res!1886281 () Bool)

(assert (=> d!1397671 (=> (not res!1886281) (not e!2822283))))

(declare-fun isEmpty!28710 (Option!11153) Bool)

(assert (=> d!1397671 (= res!1886281 (isEmpty!28710 lt!1705382))))

(assert (=> d!1397671 (= lt!1705382 e!2822285)))

(declare-fun c!773336 () Bool)

(assert (=> d!1397671 (= c!773336 (and ((_ is Cons!50696) (_2!28868 lt!1705015)) (= (_1!28867 (h!56563 (_2!28868 lt!1705015))) key!3287)))))

(assert (=> d!1397671 (noDuplicateKeys!1178 (_2!28868 lt!1705015))))

(assert (=> d!1397671 (= (getPair!194 (_2!28868 lt!1705015) key!3287) lt!1705382)))

(declare-fun b!4529532 () Bool)

(assert (=> b!4529532 (= e!2822282 (getPair!194 (t!357782 (_2!28868 lt!1705015)) key!3287))))

(declare-fun b!4529533 () Bool)

(assert (=> b!4529533 (= e!2822283 (not (containsKey!1826 (_2!28868 lt!1705015) key!3287)))))

(declare-fun b!4529534 () Bool)

(declare-fun contains!13458 (List!50820 tuple2!51146) Bool)

(assert (=> b!4529534 (= e!2822284 (contains!13458 (_2!28868 lt!1705015) (get!16633 lt!1705382)))))

(assert (= (and d!1397671 c!773336) b!4529530))

(assert (= (and d!1397671 (not c!773336)) b!4529527))

(assert (= (and b!4529527 c!773335) b!4529532))

(assert (= (and b!4529527 (not c!773335)) b!4529528))

(assert (= (and d!1397671 res!1886281) b!4529533))

(assert (= (and d!1397671 (not res!1886282)) b!4529529))

(assert (= (and b!4529529 res!1886280) b!4529531))

(assert (= (and b!4529531 res!1886279) b!4529534))

(declare-fun m!5285715 () Bool)

(assert (=> d!1397671 m!5285715))

(assert (=> d!1397671 m!5285125))

(declare-fun m!5285717 () Bool)

(assert (=> b!4529531 m!5285717))

(assert (=> b!4529533 m!5285147))

(assert (=> b!4529534 m!5285717))

(assert (=> b!4529534 m!5285717))

(declare-fun m!5285719 () Bool)

(assert (=> b!4529534 m!5285719))

(declare-fun m!5285721 () Bool)

(assert (=> b!4529529 m!5285721))

(declare-fun m!5285725 () Bool)

(assert (=> b!4529532 m!5285725))

(assert (=> b!4529273 d!1397671))

(declare-fun d!1397681 () Bool)

(assert (=> d!1397681 (dynLambda!21186 lambda!174088 (h!56564 (toList!4363 lm!1477)))))

(declare-fun lt!1705395 () Unit!96566)

(declare-fun choose!29704 (List!50821 Int tuple2!51148) Unit!96566)

(assert (=> d!1397681 (= lt!1705395 (choose!29704 (toList!4363 lm!1477) lambda!174088 (h!56564 (toList!4363 lm!1477))))))

(declare-fun e!2822303 () Bool)

(assert (=> d!1397681 e!2822303))

(declare-fun res!1886295 () Bool)

(assert (=> d!1397681 (=> (not res!1886295) (not e!2822303))))

(assert (=> d!1397681 (= res!1886295 (forall!10303 (toList!4363 lm!1477) lambda!174088))))

(assert (=> d!1397681 (= (forallContained!2558 (toList!4363 lm!1477) lambda!174088 (h!56564 (toList!4363 lm!1477))) lt!1705395)))

(declare-fun b!4529555 () Bool)

(assert (=> b!4529555 (= e!2822303 (contains!13454 (toList!4363 lm!1477) (h!56564 (toList!4363 lm!1477))))))

(assert (= (and d!1397681 res!1886295) b!4529555))

(declare-fun b_lambda!156327 () Bool)

(assert (=> (not b_lambda!156327) (not d!1397681)))

(declare-fun m!5285761 () Bool)

(assert (=> d!1397681 m!5285761))

(declare-fun m!5285763 () Bool)

(assert (=> d!1397681 m!5285763))

(declare-fun m!5285765 () Bool)

(assert (=> d!1397681 m!5285765))

(declare-fun m!5285767 () Bool)

(assert (=> b!4529555 m!5285767))

(assert (=> b!4529273 d!1397681))

(declare-fun d!1397693 () Bool)

(declare-fun dynLambda!21188 (Int tuple2!51146) Bool)

(assert (=> d!1397693 (dynLambda!21188 lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026))))))

(declare-fun lt!1705398 () Unit!96566)

(declare-fun choose!29705 (List!50820 Int tuple2!51146) Unit!96566)

(assert (=> d!1397693 (= lt!1705398 (choose!29705 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))))))

(declare-fun e!2822312 () Bool)

(assert (=> d!1397693 e!2822312))

(declare-fun res!1886304 () Bool)

(assert (=> d!1397693 (=> (not res!1886304) (not e!2822312))))

(assert (=> d!1397693 (= res!1886304 (forall!10305 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174089))))

(assert (=> d!1397693 (= (forallContained!2559 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))) lt!1705398)))

(declare-fun b!4529564 () Bool)

(assert (=> b!4529564 (= e!2822312 (contains!13458 (_2!28868 (h!56564 (toList!4363 lm!1477))) (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))))))

(assert (= (and d!1397693 res!1886304) b!4529564))

(declare-fun b_lambda!156329 () Bool)

(assert (=> (not b_lambda!156329) (not d!1397693)))

(declare-fun m!5285775 () Bool)

(assert (=> d!1397693 m!5285775))

(declare-fun m!5285777 () Bool)

(assert (=> d!1397693 m!5285777))

(declare-fun m!5285779 () Bool)

(assert (=> d!1397693 m!5285779))

(declare-fun m!5285781 () Bool)

(assert (=> b!4529564 m!5285781))

(assert (=> b!4529273 d!1397693))

(declare-fun d!1397697 () Bool)

(assert (=> d!1397697 (= (get!16633 lt!1705026) (v!44798 lt!1705026))))

(assert (=> b!4529273 d!1397697))

(declare-fun b!4529565 () Bool)

(declare-fun e!2822313 () Bool)

(assert (=> b!4529565 (= e!2822313 (not (contains!13457 (keys!17626 lt!1705010) key!3287)))))

(declare-fun b!4529566 () Bool)

(declare-fun e!2822317 () Unit!96566)

(declare-fun e!2822318 () Unit!96566)

(assert (=> b!4529566 (= e!2822317 e!2822318)))

(declare-fun c!773343 () Bool)

(declare-fun call!315710 () Bool)

(assert (=> b!4529566 (= c!773343 call!315710)))

(declare-fun b!4529567 () Bool)

(declare-fun e!2822314 () Bool)

(declare-fun e!2822315 () Bool)

(assert (=> b!4529567 (= e!2822314 e!2822315)))

(declare-fun res!1886306 () Bool)

(assert (=> b!4529567 (=> (not res!1886306) (not e!2822315))))

(assert (=> b!4529567 (= res!1886306 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705010) key!3287)))))

(declare-fun b!4529568 () Bool)

(declare-fun e!2822316 () List!50823)

(assert (=> b!4529568 (= e!2822316 (getKeysList!479 (toList!4364 lt!1705010)))))

(declare-fun b!4529569 () Bool)

(assert (=> b!4529569 (= e!2822315 (contains!13457 (keys!17626 lt!1705010) key!3287))))

(declare-fun d!1397699 () Bool)

(assert (=> d!1397699 e!2822314))

(declare-fun res!1886307 () Bool)

(assert (=> d!1397699 (=> res!1886307 e!2822314)))

(assert (=> d!1397699 (= res!1886307 e!2822313)))

(declare-fun res!1886305 () Bool)

(assert (=> d!1397699 (=> (not res!1886305) (not e!2822313))))

(declare-fun lt!1705402 () Bool)

(assert (=> d!1397699 (= res!1886305 (not lt!1705402))))

(declare-fun lt!1705403 () Bool)

(assert (=> d!1397699 (= lt!1705402 lt!1705403)))

(declare-fun lt!1705404 () Unit!96566)

(assert (=> d!1397699 (= lt!1705404 e!2822317)))

(declare-fun c!773341 () Bool)

(assert (=> d!1397699 (= c!773341 lt!1705403)))

(assert (=> d!1397699 (= lt!1705403 (containsKey!1829 (toList!4364 lt!1705010) key!3287))))

(assert (=> d!1397699 (= (contains!13455 lt!1705010 key!3287) lt!1705402)))

(declare-fun b!4529570 () Bool)

(assert (=> b!4529570 (= e!2822316 (keys!17626 lt!1705010))))

(declare-fun b!4529571 () Bool)

(declare-fun Unit!96637 () Unit!96566)

(assert (=> b!4529571 (= e!2822318 Unit!96637)))

(declare-fun bm!315705 () Bool)

(assert (=> bm!315705 (= call!315710 (contains!13457 e!2822316 key!3287))))

(declare-fun c!773342 () Bool)

(assert (=> bm!315705 (= c!773342 c!773341)))

(declare-fun b!4529572 () Bool)

(declare-fun lt!1705400 () Unit!96566)

(assert (=> b!4529572 (= e!2822317 lt!1705400)))

(declare-fun lt!1705401 () Unit!96566)

(assert (=> b!4529572 (= lt!1705401 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705010) key!3287))))

(assert (=> b!4529572 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705010) key!3287))))

(declare-fun lt!1705405 () Unit!96566)

(assert (=> b!4529572 (= lt!1705405 lt!1705401)))

(assert (=> b!4529572 (= lt!1705400 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705010) key!3287))))

(assert (=> b!4529572 call!315710))

(declare-fun b!4529573 () Bool)

(assert (=> b!4529573 false))

(declare-fun lt!1705399 () Unit!96566)

(declare-fun lt!1705406 () Unit!96566)

(assert (=> b!4529573 (= lt!1705399 lt!1705406)))

(assert (=> b!4529573 (containsKey!1829 (toList!4364 lt!1705010) key!3287)))

(assert (=> b!4529573 (= lt!1705406 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705010) key!3287))))

(declare-fun Unit!96638 () Unit!96566)

(assert (=> b!4529573 (= e!2822318 Unit!96638)))

(assert (= (and d!1397699 c!773341) b!4529572))

(assert (= (and d!1397699 (not c!773341)) b!4529566))

(assert (= (and b!4529566 c!773343) b!4529573))

(assert (= (and b!4529566 (not c!773343)) b!4529571))

(assert (= (or b!4529572 b!4529566) bm!315705))

(assert (= (and bm!315705 c!773342) b!4529568))

(assert (= (and bm!315705 (not c!773342)) b!4529570))

(assert (= (and d!1397699 res!1886305) b!4529565))

(assert (= (and d!1397699 (not res!1886307)) b!4529567))

(assert (= (and b!4529567 res!1886306) b!4529569))

(declare-fun m!5285789 () Bool)

(assert (=> b!4529565 m!5285789))

(assert (=> b!4529565 m!5285789))

(declare-fun m!5285793 () Bool)

(assert (=> b!4529565 m!5285793))

(declare-fun m!5285795 () Bool)

(assert (=> b!4529572 m!5285795))

(declare-fun m!5285797 () Bool)

(assert (=> b!4529572 m!5285797))

(assert (=> b!4529572 m!5285797))

(declare-fun m!5285799 () Bool)

(assert (=> b!4529572 m!5285799))

(declare-fun m!5285801 () Bool)

(assert (=> b!4529572 m!5285801))

(assert (=> b!4529570 m!5285789))

(assert (=> b!4529567 m!5285797))

(assert (=> b!4529567 m!5285797))

(assert (=> b!4529567 m!5285799))

(declare-fun m!5285803 () Bool)

(assert (=> d!1397699 m!5285803))

(declare-fun m!5285805 () Bool)

(assert (=> b!4529568 m!5285805))

(assert (=> b!4529569 m!5285789))

(assert (=> b!4529569 m!5285789))

(assert (=> b!4529569 m!5285793))

(assert (=> b!4529573 m!5285803))

(declare-fun m!5285807 () Bool)

(assert (=> b!4529573 m!5285807))

(declare-fun m!5285809 () Bool)

(assert (=> bm!315705 m!5285809))

(assert (=> b!4529274 d!1397699))

(declare-fun bs!864689 () Bool)

(declare-fun d!1397705 () Bool)

(assert (= bs!864689 (and d!1397705 d!1397661)))

(declare-fun lambda!174197 () Int)

(assert (=> bs!864689 (= lambda!174197 lambda!174187)))

(declare-fun bs!864690 () Bool)

(assert (= bs!864690 (and d!1397705 d!1397669)))

(assert (=> bs!864690 (= lambda!174197 lambda!174191)))

(declare-fun bs!864691 () Bool)

(assert (= bs!864691 (and d!1397705 d!1397665)))

(assert (=> bs!864691 (= lambda!174197 lambda!174190)))

(declare-fun bs!864692 () Bool)

(assert (= bs!864692 (and d!1397705 d!1397607)))

(assert (=> bs!864692 (= lambda!174197 lambda!174177)))

(declare-fun bs!864693 () Bool)

(assert (= bs!864693 (and d!1397705 b!4529273)))

(assert (=> bs!864693 (not (= lambda!174197 lambda!174088))))

(declare-fun bs!864694 () Bool)

(assert (= bs!864694 (and d!1397705 start!449036)))

(assert (=> bs!864694 (= lambda!174197 lambda!174087)))

(declare-fun lt!1705407 () ListMap!3625)

(assert (=> d!1397705 (invariantList!1031 (toList!4364 lt!1705407))))

(declare-fun e!2822325 () ListMap!3625)

(assert (=> d!1397705 (= lt!1705407 e!2822325)))

(declare-fun c!773344 () Bool)

(assert (=> d!1397705 (= c!773344 ((_ is Cons!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397705 (forall!10303 (toList!4363 lm!1477) lambda!174197)))

(assert (=> d!1397705 (= (extractMap!1234 (toList!4363 lm!1477)) lt!1705407)))

(declare-fun b!4529580 () Bool)

(assert (=> b!4529580 (= e!2822325 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun b!4529581 () Bool)

(assert (=> b!4529581 (= e!2822325 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397705 c!773344) b!4529580))

(assert (= (and d!1397705 (not c!773344)) b!4529581))

(declare-fun m!5285811 () Bool)

(assert (=> d!1397705 m!5285811))

(declare-fun m!5285813 () Bool)

(assert (=> d!1397705 m!5285813))

(assert (=> b!4529580 m!5285139))

(assert (=> b!4529580 m!5285139))

(declare-fun m!5285815 () Bool)

(assert (=> b!4529580 m!5285815))

(assert (=> b!4529274 d!1397705))

(declare-fun d!1397707 () Bool)

(declare-fun res!1886321 () Bool)

(declare-fun e!2822334 () Bool)

(assert (=> d!1397707 (=> res!1886321 e!2822334)))

(declare-fun e!2822332 () Bool)

(assert (=> d!1397707 (= res!1886321 e!2822332)))

(declare-fun res!1886322 () Bool)

(assert (=> d!1397707 (=> (not res!1886322) (not e!2822332))))

(assert (=> d!1397707 (= res!1886322 ((_ is Cons!50697) (t!357783 (toList!4363 lm!1477))))))

(assert (=> d!1397707 (= (containsKeyBiggerList!158 (t!357783 (toList!4363 lm!1477)) key!3287) e!2822334)))

(declare-fun b!4529588 () Bool)

(assert (=> b!4529588 (= e!2822332 (containsKey!1826 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(declare-fun b!4529589 () Bool)

(declare-fun e!2822333 () Bool)

(assert (=> b!4529589 (= e!2822334 e!2822333)))

(declare-fun res!1886320 () Bool)

(assert (=> b!4529589 (=> (not res!1886320) (not e!2822333))))

(assert (=> b!4529589 (= res!1886320 ((_ is Cons!50697) (t!357783 (toList!4363 lm!1477))))))

(declare-fun b!4529590 () Bool)

(assert (=> b!4529590 (= e!2822333 (containsKeyBiggerList!158 (t!357783 (t!357783 (toList!4363 lm!1477))) key!3287))))

(assert (= (and d!1397707 res!1886322) b!4529588))

(assert (= (and d!1397707 (not res!1886321)) b!4529589))

(assert (= (and b!4529589 res!1886320) b!4529590))

(declare-fun m!5285817 () Bool)

(assert (=> b!4529588 m!5285817))

(declare-fun m!5285819 () Bool)

(assert (=> b!4529590 m!5285819))

(assert (=> b!4529275 d!1397707))

(declare-fun d!1397709 () Bool)

(declare-fun res!1886324 () Bool)

(declare-fun e!2822337 () Bool)

(assert (=> d!1397709 (=> res!1886324 e!2822337)))

(declare-fun e!2822335 () Bool)

(assert (=> d!1397709 (= res!1886324 e!2822335)))

(declare-fun res!1886325 () Bool)

(assert (=> d!1397709 (=> (not res!1886325) (not e!2822335))))

(assert (=> d!1397709 (= res!1886325 ((_ is Cons!50697) (toList!4363 lt!1705004)))))

(assert (=> d!1397709 (= (containsKeyBiggerList!158 (toList!4363 lt!1705004) key!3287) e!2822337)))

(declare-fun b!4529591 () Bool)

(assert (=> b!4529591 (= e!2822335 (containsKey!1826 (_2!28868 (h!56564 (toList!4363 lt!1705004))) key!3287))))

(declare-fun b!4529592 () Bool)

(declare-fun e!2822336 () Bool)

(assert (=> b!4529592 (= e!2822337 e!2822336)))

(declare-fun res!1886323 () Bool)

(assert (=> b!4529592 (=> (not res!1886323) (not e!2822336))))

(assert (=> b!4529592 (= res!1886323 ((_ is Cons!50697) (toList!4363 lt!1705004)))))

(declare-fun b!4529593 () Bool)

(assert (=> b!4529593 (= e!2822336 (containsKeyBiggerList!158 (t!357783 (toList!4363 lt!1705004)) key!3287))))

(assert (= (and d!1397709 res!1886325) b!4529591))

(assert (= (and d!1397709 (not res!1886324)) b!4529592))

(assert (= (and b!4529592 res!1886323) b!4529593))

(declare-fun m!5285821 () Bool)

(assert (=> b!4529591 m!5285821))

(declare-fun m!5285823 () Bool)

(assert (=> b!4529593 m!5285823))

(assert (=> b!4529275 d!1397709))

(declare-fun bs!864710 () Bool)

(declare-fun d!1397711 () Bool)

(assert (= bs!864710 (and d!1397711 d!1397661)))

(declare-fun lambda!174203 () Int)

(assert (=> bs!864710 (= lambda!174203 lambda!174187)))

(declare-fun bs!864711 () Bool)

(assert (= bs!864711 (and d!1397711 d!1397665)))

(assert (=> bs!864711 (= lambda!174203 lambda!174190)))

(declare-fun bs!864712 () Bool)

(assert (= bs!864712 (and d!1397711 d!1397607)))

(assert (=> bs!864712 (= lambda!174203 lambda!174177)))

(declare-fun bs!864713 () Bool)

(assert (= bs!864713 (and d!1397711 b!4529273)))

(assert (=> bs!864713 (not (= lambda!174203 lambda!174088))))

(declare-fun bs!864714 () Bool)

(assert (= bs!864714 (and d!1397711 start!449036)))

(assert (=> bs!864714 (= lambda!174203 lambda!174087)))

(declare-fun bs!864715 () Bool)

(assert (= bs!864715 (and d!1397711 d!1397705)))

(assert (=> bs!864715 (= lambda!174203 lambda!174197)))

(declare-fun bs!864716 () Bool)

(assert (= bs!864716 (and d!1397711 d!1397669)))

(assert (=> bs!864716 (= lambda!174203 lambda!174191)))

(assert (=> d!1397711 (containsKeyBiggerList!158 (toList!4363 lt!1705004) key!3287)))

(declare-fun lt!1705413 () Unit!96566)

(declare-fun choose!29707 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> d!1397711 (= lt!1705413 (choose!29707 lt!1705004 key!3287 hashF!1107))))

(assert (=> d!1397711 (forall!10303 (toList!4363 lt!1705004) lambda!174203)))

(assert (=> d!1397711 (= (lemmaInLongMapThenContainsKeyBiggerList!94 lt!1705004 key!3287 hashF!1107) lt!1705413)))

(declare-fun bs!864717 () Bool)

(assert (= bs!864717 d!1397711))

(assert (=> bs!864717 m!5285133))

(declare-fun m!5285831 () Bool)

(assert (=> bs!864717 m!5285831))

(declare-fun m!5285833 () Bool)

(assert (=> bs!864717 m!5285833))

(assert (=> b!4529275 d!1397711))

(declare-fun d!1397719 () Bool)

(declare-fun res!1886336 () Bool)

(declare-fun e!2822348 () Bool)

(assert (=> d!1397719 (=> res!1886336 e!2822348)))

(assert (=> d!1397719 (= res!1886336 (and ((_ is Cons!50696) lt!1705019) (= (_1!28867 (h!56563 lt!1705019)) key!3287)))))

(assert (=> d!1397719 (= (containsKey!1826 lt!1705019 key!3287) e!2822348)))

(declare-fun b!4529606 () Bool)

(declare-fun e!2822349 () Bool)

(assert (=> b!4529606 (= e!2822348 e!2822349)))

(declare-fun res!1886337 () Bool)

(assert (=> b!4529606 (=> (not res!1886337) (not e!2822349))))

(assert (=> b!4529606 (= res!1886337 ((_ is Cons!50696) lt!1705019))))

(declare-fun b!4529607 () Bool)

(assert (=> b!4529607 (= e!2822349 (containsKey!1826 (t!357782 lt!1705019) key!3287))))

(assert (= (and d!1397719 (not res!1886336)) b!4529606))

(assert (= (and b!4529606 res!1886337) b!4529607))

(declare-fun m!5285835 () Bool)

(assert (=> b!4529607 m!5285835))

(assert (=> b!4529276 d!1397719))

(declare-fun d!1397721 () Bool)

(assert (=> d!1397721 (= (eq!635 lt!1705010 lt!1705022) (= (content!8398 (toList!4364 lt!1705010)) (content!8398 (toList!4364 lt!1705022))))))

(declare-fun bs!864729 () Bool)

(assert (= bs!864729 d!1397721))

(declare-fun m!5285839 () Bool)

(assert (=> bs!864729 m!5285839))

(declare-fun m!5285841 () Bool)

(assert (=> bs!864729 m!5285841))

(assert (=> b!4529278 d!1397721))

(declare-fun d!1397725 () Bool)

(declare-fun hash!2865 (Hashable!5573 K!12085) (_ BitVec 64))

(assert (=> d!1397725 (= (hash!2861 hashF!1107 key!3287) (hash!2865 hashF!1107 key!3287))))

(declare-fun bs!864730 () Bool)

(assert (= bs!864730 d!1397725))

(declare-fun m!5285843 () Bool)

(assert (=> bs!864730 m!5285843))

(assert (=> b!4529279 d!1397725))

(declare-fun bs!864731 () Bool)

(declare-fun d!1397727 () Bool)

(assert (= bs!864731 (and d!1397727 d!1397661)))

(declare-fun lambda!174209 () Int)

(assert (=> bs!864731 (= lambda!174209 lambda!174187)))

(declare-fun bs!864732 () Bool)

(assert (= bs!864732 (and d!1397727 d!1397711)))

(assert (=> bs!864732 (= lambda!174209 lambda!174203)))

(declare-fun bs!864733 () Bool)

(assert (= bs!864733 (and d!1397727 d!1397665)))

(assert (=> bs!864733 (= lambda!174209 lambda!174190)))

(declare-fun bs!864734 () Bool)

(assert (= bs!864734 (and d!1397727 d!1397607)))

(assert (=> bs!864734 (= lambda!174209 lambda!174177)))

(declare-fun bs!864735 () Bool)

(assert (= bs!864735 (and d!1397727 b!4529273)))

(assert (=> bs!864735 (not (= lambda!174209 lambda!174088))))

(declare-fun bs!864736 () Bool)

(assert (= bs!864736 (and d!1397727 start!449036)))

(assert (=> bs!864736 (= lambda!174209 lambda!174087)))

(declare-fun bs!864737 () Bool)

(assert (= bs!864737 (and d!1397727 d!1397705)))

(assert (=> bs!864737 (= lambda!174209 lambda!174197)))

(declare-fun bs!864738 () Bool)

(assert (= bs!864738 (and d!1397727 d!1397669)))

(assert (=> bs!864738 (= lambda!174209 lambda!174191)))

(assert (=> d!1397727 (not (contains!13455 (extractMap!1234 (toList!4363 lm!1477)) key!3287))))

(declare-fun lt!1705423 () Unit!96566)

(declare-fun choose!29709 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> d!1397727 (= lt!1705423 (choose!29709 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1397727 (forall!10303 (toList!4363 lm!1477) lambda!174209)))

(assert (=> d!1397727 (= (lemmaNotInItsHashBucketThenNotInMap!166 lm!1477 key!3287 hashF!1107) lt!1705423)))

(declare-fun bs!864739 () Bool)

(assert (= bs!864739 d!1397727))

(assert (=> bs!864739 m!5285159))

(assert (=> bs!864739 m!5285159))

(declare-fun m!5285869 () Bool)

(assert (=> bs!864739 m!5285869))

(declare-fun m!5285871 () Bool)

(assert (=> bs!864739 m!5285871))

(declare-fun m!5285873 () Bool)

(assert (=> bs!864739 m!5285873))

(assert (=> b!4529258 d!1397727))

(declare-fun d!1397735 () Bool)

(declare-fun lt!1705426 () Bool)

(declare-fun content!8401 (List!50821) (InoxSet tuple2!51148))

(assert (=> d!1397735 (= lt!1705426 (select (content!8401 (t!357783 (toList!4363 lm!1477))) lt!1705011))))

(declare-fun e!2822379 () Bool)

(assert (=> d!1397735 (= lt!1705426 e!2822379)))

(declare-fun res!1886359 () Bool)

(assert (=> d!1397735 (=> (not res!1886359) (not e!2822379))))

(assert (=> d!1397735 (= res!1886359 ((_ is Cons!50697) (t!357783 (toList!4363 lm!1477))))))

(assert (=> d!1397735 (= (contains!13454 (t!357783 (toList!4363 lm!1477)) lt!1705011) lt!1705426)))

(declare-fun b!4529650 () Bool)

(declare-fun e!2822380 () Bool)

(assert (=> b!4529650 (= e!2822379 e!2822380)))

(declare-fun res!1886358 () Bool)

(assert (=> b!4529650 (=> res!1886358 e!2822380)))

(assert (=> b!4529650 (= res!1886358 (= (h!56564 (t!357783 (toList!4363 lm!1477))) lt!1705011))))

(declare-fun b!4529651 () Bool)

(assert (=> b!4529651 (= e!2822380 (contains!13454 (t!357783 (t!357783 (toList!4363 lm!1477))) lt!1705011))))

(assert (= (and d!1397735 res!1886359) b!4529650))

(assert (= (and b!4529650 (not res!1886358)) b!4529651))

(declare-fun m!5285883 () Bool)

(assert (=> d!1397735 m!5285883))

(declare-fun m!5285885 () Bool)

(assert (=> d!1397735 m!5285885))

(declare-fun m!5285887 () Bool)

(assert (=> b!4529651 m!5285887))

(assert (=> b!4529280 d!1397735))

(declare-fun d!1397745 () Bool)

(declare-fun res!1886360 () Bool)

(declare-fun e!2822381 () Bool)

(assert (=> d!1397745 (=> res!1886360 e!2822381)))

(assert (=> d!1397745 (= res!1886360 (and ((_ is Cons!50696) (_2!28868 lt!1705015)) (= (_1!28867 (h!56563 (_2!28868 lt!1705015))) key!3287)))))

(assert (=> d!1397745 (= (containsKey!1826 (_2!28868 lt!1705015) key!3287) e!2822381)))

(declare-fun b!4529652 () Bool)

(declare-fun e!2822382 () Bool)

(assert (=> b!4529652 (= e!2822381 e!2822382)))

(declare-fun res!1886361 () Bool)

(assert (=> b!4529652 (=> (not res!1886361) (not e!2822382))))

(assert (=> b!4529652 (= res!1886361 ((_ is Cons!50696) (_2!28868 lt!1705015)))))

(declare-fun b!4529653 () Bool)

(assert (=> b!4529653 (= e!2822382 (containsKey!1826 (t!357782 (_2!28868 lt!1705015)) key!3287))))

(assert (= (and d!1397745 (not res!1886360)) b!4529652))

(assert (= (and b!4529652 res!1886361) b!4529653))

(declare-fun m!5285889 () Bool)

(assert (=> b!4529653 m!5285889))

(assert (=> b!4529259 d!1397745))

(declare-fun d!1397747 () Bool)

(declare-fun head!9446 (List!50821) tuple2!51148)

(assert (=> d!1397747 (= (head!9444 lt!1705020) (head!9446 (toList!4363 lt!1705020)))))

(declare-fun bs!864744 () Bool)

(assert (= bs!864744 d!1397747))

(declare-fun m!5285891 () Bool)

(assert (=> bs!864744 m!5285891))

(assert (=> b!4529281 d!1397747))

(declare-fun d!1397749 () Bool)

(declare-datatypes ((Option!11157 0))(
  ( (None!11156) (Some!11156 (v!44806 List!50820)) )
))
(declare-fun get!16635 (Option!11157) List!50820)

(declare-fun getValueByKey!1121 (List!50821 (_ BitVec 64)) Option!11157)

(assert (=> d!1397749 (= (apply!11915 lt!1705004 hash!344) (get!16635 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344)))))

(declare-fun bs!864745 () Bool)

(assert (= bs!864745 d!1397749))

(declare-fun m!5285893 () Bool)

(assert (=> bs!864745 m!5285893))

(assert (=> bs!864745 m!5285893))

(declare-fun m!5285895 () Bool)

(assert (=> bs!864745 m!5285895))

(assert (=> b!4529260 d!1397749))

(declare-fun bs!864746 () Bool)

(declare-fun d!1397751 () Bool)

(assert (= bs!864746 (and d!1397751 d!1397661)))

(declare-fun lambda!174212 () Int)

(assert (=> bs!864746 (not (= lambda!174212 lambda!174187))))

(declare-fun bs!864747 () Bool)

(assert (= bs!864747 (and d!1397751 d!1397711)))

(assert (=> bs!864747 (not (= lambda!174212 lambda!174203))))

(declare-fun bs!864748 () Bool)

(assert (= bs!864748 (and d!1397751 d!1397727)))

(assert (=> bs!864748 (not (= lambda!174212 lambda!174209))))

(declare-fun bs!864749 () Bool)

(assert (= bs!864749 (and d!1397751 d!1397665)))

(assert (=> bs!864749 (not (= lambda!174212 lambda!174190))))

(declare-fun bs!864750 () Bool)

(assert (= bs!864750 (and d!1397751 d!1397607)))

(assert (=> bs!864750 (not (= lambda!174212 lambda!174177))))

(declare-fun bs!864751 () Bool)

(assert (= bs!864751 (and d!1397751 b!4529273)))

(assert (=> bs!864751 (= lambda!174212 lambda!174088)))

(declare-fun bs!864752 () Bool)

(assert (= bs!864752 (and d!1397751 start!449036)))

(assert (=> bs!864752 (not (= lambda!174212 lambda!174087))))

(declare-fun bs!864753 () Bool)

(assert (= bs!864753 (and d!1397751 d!1397705)))

(assert (=> bs!864753 (not (= lambda!174212 lambda!174197))))

(declare-fun bs!864754 () Bool)

(assert (= bs!864754 (and d!1397751 d!1397669)))

(assert (=> bs!864754 (not (= lambda!174212 lambda!174191))))

(assert (=> d!1397751 true))

(assert (=> d!1397751 (= (allKeysSameHashInMap!1285 lm!1477 hashF!1107) (forall!10303 (toList!4363 lm!1477) lambda!174212))))

(declare-fun bs!864755 () Bool)

(assert (= bs!864755 d!1397751))

(declare-fun m!5285897 () Bool)

(assert (=> bs!864755 m!5285897))

(assert (=> b!4529282 d!1397751))

(declare-fun d!1397753 () Bool)

(declare-fun res!1886366 () Bool)

(declare-fun e!2822387 () Bool)

(assert (=> d!1397753 (=> res!1886366 e!2822387)))

(assert (=> d!1397753 (= res!1886366 (not ((_ is Cons!50696) (_2!28868 lt!1705015))))))

(assert (=> d!1397753 (= (noDuplicateKeys!1178 (_2!28868 lt!1705015)) e!2822387)))

(declare-fun b!4529658 () Bool)

(declare-fun e!2822388 () Bool)

(assert (=> b!4529658 (= e!2822387 e!2822388)))

(declare-fun res!1886367 () Bool)

(assert (=> b!4529658 (=> (not res!1886367) (not e!2822388))))

(assert (=> b!4529658 (= res!1886367 (not (containsKey!1826 (t!357782 (_2!28868 lt!1705015)) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4529659 () Bool)

(assert (=> b!4529659 (= e!2822388 (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705015))))))

(assert (= (and d!1397753 (not res!1886366)) b!4529658))

(assert (= (and b!4529658 res!1886367) b!4529659))

(declare-fun m!5285899 () Bool)

(assert (=> b!4529658 m!5285899))

(declare-fun m!5285901 () Bool)

(assert (=> b!4529659 m!5285901))

(assert (=> b!4529261 d!1397753))

(declare-fun d!1397755 () Bool)

(assert (=> d!1397755 (dynLambda!21186 lambda!174087 (h!56564 (toList!4363 lm!1477)))))

(declare-fun lt!1705427 () Unit!96566)

(assert (=> d!1397755 (= lt!1705427 (choose!29704 (toList!4363 lm!1477) lambda!174087 (h!56564 (toList!4363 lm!1477))))))

(declare-fun e!2822389 () Bool)

(assert (=> d!1397755 e!2822389))

(declare-fun res!1886368 () Bool)

(assert (=> d!1397755 (=> (not res!1886368) (not e!2822389))))

(assert (=> d!1397755 (= res!1886368 (forall!10303 (toList!4363 lm!1477) lambda!174087))))

(assert (=> d!1397755 (= (forallContained!2558 (toList!4363 lm!1477) lambda!174087 (h!56564 (toList!4363 lm!1477))) lt!1705427)))

(declare-fun b!4529660 () Bool)

(assert (=> b!4529660 (= e!2822389 (contains!13454 (toList!4363 lm!1477) (h!56564 (toList!4363 lm!1477))))))

(assert (= (and d!1397755 res!1886368) b!4529660))

(declare-fun b_lambda!156347 () Bool)

(assert (=> (not b_lambda!156347) (not d!1397755)))

(assert (=> d!1397755 m!5285545))

(declare-fun m!5285903 () Bool)

(assert (=> d!1397755 m!5285903))

(assert (=> d!1397755 m!5285077))

(assert (=> b!4529660 m!5285767))

(assert (=> b!4529261 d!1397755))

(declare-fun d!1397757 () Bool)

(declare-fun e!2822390 () Bool)

(assert (=> d!1397757 e!2822390))

(declare-fun res!1886369 () Bool)

(assert (=> d!1397757 (=> (not res!1886369) (not e!2822390))))

(declare-fun lt!1705428 () ListMap!3625)

(assert (=> d!1397757 (= res!1886369 (not (contains!13455 lt!1705428 key!3287)))))

(assert (=> d!1397757 (= lt!1705428 (ListMap!3626 (removePresrvNoDuplicatedKeys!154 (toList!4364 lt!1705001) key!3287)))))

(assert (=> d!1397757 (= (-!404 lt!1705001 key!3287) lt!1705428)))

(declare-fun b!4529661 () Bool)

(assert (=> b!4529661 (= e!2822390 (= ((_ map and) (content!8399 (keys!17626 lt!1705001)) ((_ map not) (store ((as const (Array K!12085 Bool)) false) key!3287 true))) (content!8399 (keys!17626 lt!1705428))))))

(assert (= (and d!1397757 res!1886369) b!4529661))

(declare-fun m!5285905 () Bool)

(assert (=> d!1397757 m!5285905))

(declare-fun m!5285907 () Bool)

(assert (=> d!1397757 m!5285907))

(declare-fun m!5285909 () Bool)

(assert (=> b!4529661 m!5285909))

(declare-fun m!5285911 () Bool)

(assert (=> b!4529661 m!5285911))

(assert (=> b!4529661 m!5285909))

(assert (=> b!4529661 m!5285655))

(declare-fun m!5285913 () Bool)

(assert (=> b!4529661 m!5285913))

(assert (=> b!4529661 m!5285655))

(assert (=> b!4529661 m!5285461))

(assert (=> b!4529284 d!1397757))

(declare-fun d!1397759 () Bool)

(assert (=> d!1397759 (= (eq!635 lt!1705027 lt!1705028) (= (content!8398 (toList!4364 lt!1705027)) (content!8398 (toList!4364 lt!1705028))))))

(declare-fun bs!864756 () Bool)

(assert (= bs!864756 d!1397759))

(declare-fun m!5285915 () Bool)

(assert (=> bs!864756 m!5285915))

(declare-fun m!5285917 () Bool)

(assert (=> bs!864756 m!5285917))

(assert (=> b!4529284 d!1397759))

(declare-fun d!1397761 () Bool)

(declare-fun e!2822393 () Bool)

(assert (=> d!1397761 e!2822393))

(declare-fun res!1886375 () Bool)

(assert (=> d!1397761 (=> (not res!1886375) (not e!2822393))))

(declare-fun lt!1705437 () ListLongMap!2995)

(assert (=> d!1397761 (= res!1886375 (contains!13453 lt!1705437 (_1!28868 lt!1705002)))))

(declare-fun lt!1705439 () List!50821)

(assert (=> d!1397761 (= lt!1705437 (ListLongMap!2996 lt!1705439))))

(declare-fun lt!1705438 () Unit!96566)

(declare-fun lt!1705440 () Unit!96566)

(assert (=> d!1397761 (= lt!1705438 lt!1705440)))

(assert (=> d!1397761 (= (getValueByKey!1121 lt!1705439 (_1!28868 lt!1705002)) (Some!11156 (_2!28868 lt!1705002)))))

(declare-fun lemmaContainsTupThenGetReturnValue!700 (List!50821 (_ BitVec 64) List!50820) Unit!96566)

(assert (=> d!1397761 (= lt!1705440 (lemmaContainsTupThenGetReturnValue!700 lt!1705439 (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(declare-fun insertStrictlySorted!422 (List!50821 (_ BitVec 64) List!50820) List!50821)

(assert (=> d!1397761 (= lt!1705439 (insertStrictlySorted!422 (toList!4363 lt!1705004) (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(assert (=> d!1397761 (= (+!1570 lt!1705004 lt!1705002) lt!1705437)))

(declare-fun b!4529666 () Bool)

(declare-fun res!1886374 () Bool)

(assert (=> b!4529666 (=> (not res!1886374) (not e!2822393))))

(assert (=> b!4529666 (= res!1886374 (= (getValueByKey!1121 (toList!4363 lt!1705437) (_1!28868 lt!1705002)) (Some!11156 (_2!28868 lt!1705002))))))

(declare-fun b!4529667 () Bool)

(assert (=> b!4529667 (= e!2822393 (contains!13454 (toList!4363 lt!1705437) lt!1705002))))

(assert (= (and d!1397761 res!1886375) b!4529666))

(assert (= (and b!4529666 res!1886374) b!4529667))

(declare-fun m!5285919 () Bool)

(assert (=> d!1397761 m!5285919))

(declare-fun m!5285921 () Bool)

(assert (=> d!1397761 m!5285921))

(declare-fun m!5285923 () Bool)

(assert (=> d!1397761 m!5285923))

(declare-fun m!5285925 () Bool)

(assert (=> d!1397761 m!5285925))

(declare-fun m!5285927 () Bool)

(assert (=> b!4529666 m!5285927))

(declare-fun m!5285929 () Bool)

(assert (=> b!4529667 m!5285929))

(assert (=> b!4529284 d!1397761))

(declare-fun d!1397763 () Bool)

(assert (=> d!1397763 (= (head!9444 lm!1477) (head!9446 (toList!4363 lm!1477)))))

(declare-fun bs!864757 () Bool)

(assert (= bs!864757 d!1397763))

(declare-fun m!5285931 () Bool)

(assert (=> bs!864757 m!5285931))

(assert (=> b!4529284 d!1397763))

(declare-fun bs!864758 () Bool)

(declare-fun d!1397765 () Bool)

(assert (= bs!864758 (and d!1397765 d!1397661)))

(declare-fun lambda!174213 () Int)

(assert (=> bs!864758 (= lambda!174213 lambda!174187)))

(declare-fun bs!864759 () Bool)

(assert (= bs!864759 (and d!1397765 d!1397711)))

(assert (=> bs!864759 (= lambda!174213 lambda!174203)))

(declare-fun bs!864760 () Bool)

(assert (= bs!864760 (and d!1397765 d!1397727)))

(assert (=> bs!864760 (= lambda!174213 lambda!174209)))

(declare-fun bs!864761 () Bool)

(assert (= bs!864761 (and d!1397765 d!1397665)))

(assert (=> bs!864761 (= lambda!174213 lambda!174190)))

(declare-fun bs!864762 () Bool)

(assert (= bs!864762 (and d!1397765 d!1397751)))

(assert (=> bs!864762 (not (= lambda!174213 lambda!174212))))

(declare-fun bs!864763 () Bool)

(assert (= bs!864763 (and d!1397765 d!1397607)))

(assert (=> bs!864763 (= lambda!174213 lambda!174177)))

(declare-fun bs!864764 () Bool)

(assert (= bs!864764 (and d!1397765 b!4529273)))

(assert (=> bs!864764 (not (= lambda!174213 lambda!174088))))

(declare-fun bs!864765 () Bool)

(assert (= bs!864765 (and d!1397765 start!449036)))

(assert (=> bs!864765 (= lambda!174213 lambda!174087)))

(declare-fun bs!864766 () Bool)

(assert (= bs!864766 (and d!1397765 d!1397705)))

(assert (=> bs!864766 (= lambda!174213 lambda!174197)))

(declare-fun bs!864767 () Bool)

(assert (= bs!864767 (and d!1397765 d!1397669)))

(assert (=> bs!864767 (= lambda!174213 lambda!174191)))

(declare-fun lt!1705441 () ListMap!3625)

(assert (=> d!1397765 (invariantList!1031 (toList!4364 lt!1705441))))

(declare-fun e!2822394 () ListMap!3625)

(assert (=> d!1397765 (= lt!1705441 e!2822394)))

(declare-fun c!773351 () Bool)

(assert (=> d!1397765 (= c!773351 ((_ is Cons!50697) (toList!4363 lt!1704999)))))

(assert (=> d!1397765 (forall!10303 (toList!4363 lt!1704999) lambda!174213)))

(assert (=> d!1397765 (= (extractMap!1234 (toList!4363 lt!1704999)) lt!1705441)))

(declare-fun b!4529668 () Bool)

(assert (=> b!4529668 (= e!2822394 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))))))

(declare-fun b!4529669 () Bool)

(assert (=> b!4529669 (= e!2822394 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397765 c!773351) b!4529668))

(assert (= (and d!1397765 (not c!773351)) b!4529669))

(declare-fun m!5285933 () Bool)

(assert (=> d!1397765 m!5285933))

(declare-fun m!5285935 () Bool)

(assert (=> d!1397765 m!5285935))

(declare-fun m!5285937 () Bool)

(assert (=> b!4529668 m!5285937))

(assert (=> b!4529668 m!5285937))

(declare-fun m!5285939 () Bool)

(assert (=> b!4529668 m!5285939))

(assert (=> b!4529284 d!1397765))

(declare-fun bs!864768 () Bool)

(declare-fun d!1397767 () Bool)

(assert (= bs!864768 (and d!1397767 d!1397661)))

(declare-fun lambda!174216 () Int)

(assert (=> bs!864768 (= lambda!174216 lambda!174187)))

(declare-fun bs!864769 () Bool)

(assert (= bs!864769 (and d!1397767 d!1397711)))

(assert (=> bs!864769 (= lambda!174216 lambda!174203)))

(declare-fun bs!864770 () Bool)

(assert (= bs!864770 (and d!1397767 d!1397727)))

(assert (=> bs!864770 (= lambda!174216 lambda!174209)))

(declare-fun bs!864771 () Bool)

(assert (= bs!864771 (and d!1397767 d!1397665)))

(assert (=> bs!864771 (= lambda!174216 lambda!174190)))

(declare-fun bs!864772 () Bool)

(assert (= bs!864772 (and d!1397767 d!1397751)))

(assert (=> bs!864772 (not (= lambda!174216 lambda!174212))))

(declare-fun bs!864773 () Bool)

(assert (= bs!864773 (and d!1397767 d!1397607)))

(assert (=> bs!864773 (= lambda!174216 lambda!174177)))

(declare-fun bs!864774 () Bool)

(assert (= bs!864774 (and d!1397767 b!4529273)))

(assert (=> bs!864774 (not (= lambda!174216 lambda!174088))))

(declare-fun bs!864775 () Bool)

(assert (= bs!864775 (and d!1397767 d!1397705)))

(assert (=> bs!864775 (= lambda!174216 lambda!174197)))

(declare-fun bs!864776 () Bool)

(assert (= bs!864776 (and d!1397767 d!1397669)))

(assert (=> bs!864776 (= lambda!174216 lambda!174191)))

(declare-fun bs!864777 () Bool)

(assert (= bs!864777 (and d!1397767 d!1397765)))

(assert (=> bs!864777 (= lambda!174216 lambda!174213)))

(declare-fun bs!864778 () Bool)

(assert (= bs!864778 (and d!1397767 start!449036)))

(assert (=> bs!864778 (= lambda!174216 lambda!174087)))

(assert (=> d!1397767 (eq!635 (extractMap!1234 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))) (-!404 (extractMap!1234 (toList!4363 lt!1705004)) key!3287))))

(declare-fun lt!1705444 () Unit!96566)

(declare-fun choose!29710 (ListLongMap!2995 (_ BitVec 64) List!50820 K!12085 Hashable!5573) Unit!96566)

(assert (=> d!1397767 (= lt!1705444 (choose!29710 lt!1705004 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1397767 (forall!10303 (toList!4363 lt!1705004) lambda!174216)))

(assert (=> d!1397767 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!163 lt!1705004 hash!344 newBucket!178 key!3287 hashF!1107) lt!1705444)))

(declare-fun bs!864779 () Bool)

(assert (= bs!864779 d!1397767))

(declare-fun m!5285941 () Bool)

(assert (=> bs!864779 m!5285941))

(declare-fun m!5285943 () Bool)

(assert (=> bs!864779 m!5285943))

(declare-fun m!5285945 () Bool)

(assert (=> bs!864779 m!5285945))

(declare-fun m!5285947 () Bool)

(assert (=> bs!864779 m!5285947))

(declare-fun m!5285949 () Bool)

(assert (=> bs!864779 m!5285949))

(declare-fun m!5285951 () Bool)

(assert (=> bs!864779 m!5285951))

(assert (=> bs!864779 m!5285141))

(assert (=> bs!864779 m!5285947))

(assert (=> bs!864779 m!5285141))

(assert (=> bs!864779 m!5285945))

(assert (=> b!4529284 d!1397767))

(declare-fun bs!864780 () Bool)

(declare-fun d!1397769 () Bool)

(assert (= bs!864780 (and d!1397769 d!1397661)))

(declare-fun lambda!174217 () Int)

(assert (=> bs!864780 (= lambda!174217 lambda!174187)))

(declare-fun bs!864781 () Bool)

(assert (= bs!864781 (and d!1397769 d!1397711)))

(assert (=> bs!864781 (= lambda!174217 lambda!174203)))

(declare-fun bs!864782 () Bool)

(assert (= bs!864782 (and d!1397769 d!1397727)))

(assert (=> bs!864782 (= lambda!174217 lambda!174209)))

(declare-fun bs!864783 () Bool)

(assert (= bs!864783 (and d!1397769 d!1397665)))

(assert (=> bs!864783 (= lambda!174217 lambda!174190)))

(declare-fun bs!864784 () Bool)

(assert (= bs!864784 (and d!1397769 d!1397751)))

(assert (=> bs!864784 (not (= lambda!174217 lambda!174212))))

(declare-fun bs!864785 () Bool)

(assert (= bs!864785 (and d!1397769 d!1397607)))

(assert (=> bs!864785 (= lambda!174217 lambda!174177)))

(declare-fun bs!864786 () Bool)

(assert (= bs!864786 (and d!1397769 d!1397767)))

(assert (=> bs!864786 (= lambda!174217 lambda!174216)))

(declare-fun bs!864787 () Bool)

(assert (= bs!864787 (and d!1397769 b!4529273)))

(assert (=> bs!864787 (not (= lambda!174217 lambda!174088))))

(declare-fun bs!864788 () Bool)

(assert (= bs!864788 (and d!1397769 d!1397705)))

(assert (=> bs!864788 (= lambda!174217 lambda!174197)))

(declare-fun bs!864789 () Bool)

(assert (= bs!864789 (and d!1397769 d!1397669)))

(assert (=> bs!864789 (= lambda!174217 lambda!174191)))

(declare-fun bs!864790 () Bool)

(assert (= bs!864790 (and d!1397769 d!1397765)))

(assert (=> bs!864790 (= lambda!174217 lambda!174213)))

(declare-fun bs!864791 () Bool)

(assert (= bs!864791 (and d!1397769 start!449036)))

(assert (=> bs!864791 (= lambda!174217 lambda!174087)))

(declare-fun lt!1705445 () ListMap!3625)

(assert (=> d!1397769 (invariantList!1031 (toList!4364 lt!1705445))))

(declare-fun e!2822395 () ListMap!3625)

(assert (=> d!1397769 (= lt!1705445 e!2822395)))

(declare-fun c!773352 () Bool)

(assert (=> d!1397769 (= c!773352 ((_ is Cons!50697) (toList!4363 (+!1570 lt!1705004 lt!1705015))))))

(assert (=> d!1397769 (forall!10303 (toList!4363 (+!1570 lt!1705004 lt!1705015)) lambda!174217)))

(assert (=> d!1397769 (= (extractMap!1234 (toList!4363 (+!1570 lt!1705004 lt!1705015))) lt!1705445)))

(declare-fun b!4529670 () Bool)

(assert (=> b!4529670 (= e!2822395 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))))

(declare-fun b!4529671 () Bool)

(assert (=> b!4529671 (= e!2822395 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397769 c!773352) b!4529670))

(assert (= (and d!1397769 (not c!773352)) b!4529671))

(declare-fun m!5285953 () Bool)

(assert (=> d!1397769 m!5285953))

(declare-fun m!5285955 () Bool)

(assert (=> d!1397769 m!5285955))

(declare-fun m!5285957 () Bool)

(assert (=> b!4529670 m!5285957))

(assert (=> b!4529670 m!5285957))

(declare-fun m!5285959 () Bool)

(assert (=> b!4529670 m!5285959))

(assert (=> b!4529284 d!1397769))

(declare-fun d!1397771 () Bool)

(declare-fun e!2822396 () Bool)

(assert (=> d!1397771 e!2822396))

(declare-fun res!1886377 () Bool)

(assert (=> d!1397771 (=> (not res!1886377) (not e!2822396))))

(declare-fun lt!1705446 () ListLongMap!2995)

(assert (=> d!1397771 (= res!1886377 (contains!13453 lt!1705446 (_1!28868 lt!1705015)))))

(declare-fun lt!1705448 () List!50821)

(assert (=> d!1397771 (= lt!1705446 (ListLongMap!2996 lt!1705448))))

(declare-fun lt!1705447 () Unit!96566)

(declare-fun lt!1705449 () Unit!96566)

(assert (=> d!1397771 (= lt!1705447 lt!1705449)))

(assert (=> d!1397771 (= (getValueByKey!1121 lt!1705448 (_1!28868 lt!1705015)) (Some!11156 (_2!28868 lt!1705015)))))

(assert (=> d!1397771 (= lt!1705449 (lemmaContainsTupThenGetReturnValue!700 lt!1705448 (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(assert (=> d!1397771 (= lt!1705448 (insertStrictlySorted!422 (toList!4363 lt!1705004) (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(assert (=> d!1397771 (= (+!1570 lt!1705004 lt!1705015) lt!1705446)))

(declare-fun b!4529672 () Bool)

(declare-fun res!1886376 () Bool)

(assert (=> b!4529672 (=> (not res!1886376) (not e!2822396))))

(assert (=> b!4529672 (= res!1886376 (= (getValueByKey!1121 (toList!4363 lt!1705446) (_1!28868 lt!1705015)) (Some!11156 (_2!28868 lt!1705015))))))

(declare-fun b!4529673 () Bool)

(assert (=> b!4529673 (= e!2822396 (contains!13454 (toList!4363 lt!1705446) lt!1705015))))

(assert (= (and d!1397771 res!1886377) b!4529672))

(assert (= (and b!4529672 res!1886376) b!4529673))

(declare-fun m!5285961 () Bool)

(assert (=> d!1397771 m!5285961))

(declare-fun m!5285963 () Bool)

(assert (=> d!1397771 m!5285963))

(declare-fun m!5285965 () Bool)

(assert (=> d!1397771 m!5285965))

(declare-fun m!5285967 () Bool)

(assert (=> d!1397771 m!5285967))

(declare-fun m!5285969 () Bool)

(assert (=> b!4529672 m!5285969))

(declare-fun m!5285971 () Bool)

(assert (=> b!4529673 m!5285971))

(assert (=> b!4529284 d!1397771))

(declare-fun d!1397773 () Bool)

(assert (=> d!1397773 (= (eq!635 lt!1705022 lt!1705010) (= (content!8398 (toList!4364 lt!1705022)) (content!8398 (toList!4364 lt!1705010))))))

(declare-fun bs!864792 () Bool)

(assert (= bs!864792 d!1397773))

(assert (=> bs!864792 m!5285841))

(assert (=> bs!864792 m!5285839))

(assert (=> b!4529284 d!1397773))

(declare-fun d!1397775 () Bool)

(declare-fun e!2822402 () Bool)

(assert (=> d!1397775 e!2822402))

(declare-fun res!1886380 () Bool)

(assert (=> d!1397775 (=> res!1886380 e!2822402)))

(declare-fun lt!1705459 () Bool)

(assert (=> d!1397775 (= res!1886380 (not lt!1705459))))

(declare-fun lt!1705460 () Bool)

(assert (=> d!1397775 (= lt!1705459 lt!1705460)))

(declare-fun lt!1705458 () Unit!96566)

(declare-fun e!2822401 () Unit!96566)

(assert (=> d!1397775 (= lt!1705458 e!2822401)))

(declare-fun c!773355 () Bool)

(assert (=> d!1397775 (= c!773355 lt!1705460)))

(declare-fun containsKey!1830 (List!50821 (_ BitVec 64)) Bool)

(assert (=> d!1397775 (= lt!1705460 (containsKey!1830 (toList!4363 lt!1705004) hash!344))))

(assert (=> d!1397775 (= (contains!13453 lt!1705004 hash!344) lt!1705459)))

(declare-fun b!4529680 () Bool)

(declare-fun lt!1705461 () Unit!96566)

(assert (=> b!4529680 (= e!2822401 lt!1705461)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (List!50821 (_ BitVec 64)) Unit!96566)

(assert (=> b!4529680 (= lt!1705461 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lt!1705004) hash!344))))

(declare-fun isDefined!8441 (Option!11157) Bool)

(assert (=> b!4529680 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344))))

(declare-fun b!4529681 () Bool)

(declare-fun Unit!96641 () Unit!96566)

(assert (=> b!4529681 (= e!2822401 Unit!96641)))

(declare-fun b!4529682 () Bool)

(assert (=> b!4529682 (= e!2822402 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344)))))

(assert (= (and d!1397775 c!773355) b!4529680))

(assert (= (and d!1397775 (not c!773355)) b!4529681))

(assert (= (and d!1397775 (not res!1886380)) b!4529682))

(declare-fun m!5285973 () Bool)

(assert (=> d!1397775 m!5285973))

(declare-fun m!5285975 () Bool)

(assert (=> b!4529680 m!5285975))

(assert (=> b!4529680 m!5285893))

(assert (=> b!4529680 m!5285893))

(declare-fun m!5285977 () Bool)

(assert (=> b!4529680 m!5285977))

(assert (=> b!4529682 m!5285893))

(assert (=> b!4529682 m!5285893))

(assert (=> b!4529682 m!5285977))

(assert (=> b!4529263 d!1397775))

(declare-fun d!1397777 () Bool)

(declare-fun tail!7768 (List!50821) List!50821)

(assert (=> d!1397777 (= (tail!7766 lm!1477) (ListLongMap!2996 (tail!7768 (toList!4363 lm!1477))))))

(declare-fun bs!864793 () Bool)

(assert (= bs!864793 d!1397777))

(declare-fun m!5285979 () Bool)

(assert (=> bs!864793 m!5285979))

(assert (=> b!4529263 d!1397777))

(declare-fun bs!864794 () Bool)

(declare-fun d!1397779 () Bool)

(assert (= bs!864794 (and d!1397779 b!4529387)))

(declare-fun lambda!174220 () Int)

(assert (=> bs!864794 (not (= lambda!174220 lambda!174166))))

(declare-fun bs!864795 () Bool)

(assert (= bs!864795 (and d!1397779 b!4529431)))

(assert (=> bs!864795 (not (= lambda!174220 lambda!174178))))

(declare-fun bs!864796 () Bool)

(assert (= bs!864796 (and d!1397779 b!4529434)))

(assert (=> bs!864796 (not (= lambda!174220 lambda!174180))))

(assert (=> bs!864794 (not (= lambda!174220 lambda!174167))))

(declare-fun bs!864797 () Bool)

(assert (= bs!864797 (and d!1397779 b!4529384)))

(assert (=> bs!864797 (not (= lambda!174220 lambda!174165))))

(declare-fun bs!864798 () Bool)

(assert (= bs!864798 (and d!1397779 d!1397569)))

(assert (=> bs!864798 (not (= lambda!174220 lambda!174168))))

(declare-fun bs!864799 () Bool)

(assert (= bs!864799 (and d!1397779 b!4529273)))

(assert (=> bs!864799 (= (= hash!344 (_1!28868 (h!56564 (toList!4363 lm!1477)))) (= lambda!174220 lambda!174089))))

(assert (=> bs!864796 (not (= lambda!174220 lambda!174179))))

(declare-fun bs!864800 () Bool)

(assert (= bs!864800 (and d!1397779 d!1397629)))

(assert (=> bs!864800 (not (= lambda!174220 lambda!174181))))

(assert (=> d!1397779 true))

(assert (=> d!1397779 true))

(assert (=> d!1397779 (= (allKeysSameHash!1032 newBucket!178 hash!344 hashF!1107) (forall!10305 newBucket!178 lambda!174220))))

(declare-fun bs!864801 () Bool)

(assert (= bs!864801 d!1397779))

(declare-fun m!5285981 () Bool)

(assert (=> bs!864801 m!5285981))

(assert (=> b!4529265 d!1397779))

(declare-fun d!1397781 () Bool)

(declare-fun res!1886381 () Bool)

(declare-fun e!2822403 () Bool)

(assert (=> d!1397781 (=> res!1886381 e!2822403)))

(assert (=> d!1397781 (= res!1886381 (not ((_ is Cons!50696) newBucket!178)))))

(assert (=> d!1397781 (= (noDuplicateKeys!1178 newBucket!178) e!2822403)))

(declare-fun b!4529685 () Bool)

(declare-fun e!2822404 () Bool)

(assert (=> b!4529685 (= e!2822403 e!2822404)))

(declare-fun res!1886382 () Bool)

(assert (=> b!4529685 (=> (not res!1886382) (not e!2822404))))

(assert (=> b!4529685 (= res!1886382 (not (containsKey!1826 (t!357782 newBucket!178) (_1!28867 (h!56563 newBucket!178)))))))

(declare-fun b!4529686 () Bool)

(assert (=> b!4529686 (= e!2822404 (noDuplicateKeys!1178 (t!357782 newBucket!178)))))

(assert (= (and d!1397781 (not res!1886381)) b!4529685))

(assert (= (and b!4529685 res!1886382) b!4529686))

(declare-fun m!5285983 () Bool)

(assert (=> b!4529685 m!5285983))

(declare-fun m!5285985 () Bool)

(assert (=> b!4529686 m!5285985))

(assert (=> b!4529266 d!1397781))

(declare-fun d!1397783 () Bool)

(assert (=> d!1397783 (= (eq!635 lt!1705003 lt!1705006) (= (content!8398 (toList!4364 lt!1705003)) (content!8398 (toList!4364 lt!1705006))))))

(declare-fun bs!864802 () Bool)

(assert (= bs!864802 d!1397783))

(assert (=> bs!864802 m!5285203))

(declare-fun m!5285987 () Bool)

(assert (=> bs!864802 m!5285987))

(assert (=> b!4529267 d!1397783))

(declare-fun d!1397785 () Bool)

(assert (=> d!1397785 (= (eq!635 lt!1705024 lt!1705006) (= (content!8398 (toList!4364 lt!1705024)) (content!8398 (toList!4364 lt!1705006))))))

(declare-fun bs!864803 () Bool)

(assert (= bs!864803 d!1397785))

(assert (=> bs!864803 m!5285205))

(assert (=> bs!864803 m!5285987))

(assert (=> b!4529267 d!1397785))

(declare-fun bs!864804 () Bool)

(declare-fun b!4529688 () Bool)

(assert (= bs!864804 (and b!4529688 b!4529387)))

(declare-fun lambda!174221 () Int)

(assert (=> bs!864804 (= (= lt!1705028 lt!1705027) (= lambda!174221 lambda!174166))))

(declare-fun bs!864805 () Bool)

(assert (= bs!864805 (and b!4529688 b!4529431)))

(assert (=> bs!864805 (= (= lt!1705028 lt!1705001) (= lambda!174221 lambda!174178))))

(declare-fun bs!864806 () Bool)

(assert (= bs!864806 (and b!4529688 b!4529434)))

(assert (=> bs!864806 (= (= lt!1705028 lt!1705266) (= lambda!174221 lambda!174180))))

(declare-fun bs!864807 () Bool)

(assert (= bs!864807 (and b!4529688 d!1397779)))

(assert (=> bs!864807 (not (= lambda!174221 lambda!174220))))

(assert (=> bs!864804 (= (= lt!1705028 lt!1705212) (= lambda!174221 lambda!174167))))

(declare-fun bs!864808 () Bool)

(assert (= bs!864808 (and b!4529688 b!4529384)))

(assert (=> bs!864808 (= (= lt!1705028 lt!1705027) (= lambda!174221 lambda!174165))))

(declare-fun bs!864809 () Bool)

(assert (= bs!864809 (and b!4529688 d!1397569)))

(assert (=> bs!864809 (= (= lt!1705028 lt!1705224) (= lambda!174221 lambda!174168))))

(declare-fun bs!864810 () Bool)

(assert (= bs!864810 (and b!4529688 b!4529273)))

(assert (=> bs!864810 (not (= lambda!174221 lambda!174089))))

(assert (=> bs!864806 (= (= lt!1705028 lt!1705001) (= lambda!174221 lambda!174179))))

(declare-fun bs!864811 () Bool)

(assert (= bs!864811 (and b!4529688 d!1397629)))

(assert (=> bs!864811 (= (= lt!1705028 lt!1705278) (= lambda!174221 lambda!174181))))

(assert (=> b!4529688 true))

(declare-fun bs!864812 () Bool)

(declare-fun b!4529691 () Bool)

(assert (= bs!864812 (and b!4529691 b!4529387)))

(declare-fun lambda!174222 () Int)

(assert (=> bs!864812 (= (= lt!1705028 lt!1705027) (= lambda!174222 lambda!174166))))

(declare-fun bs!864813 () Bool)

(assert (= bs!864813 (and b!4529691 b!4529431)))

(assert (=> bs!864813 (= (= lt!1705028 lt!1705001) (= lambda!174222 lambda!174178))))

(declare-fun bs!864814 () Bool)

(assert (= bs!864814 (and b!4529691 b!4529434)))

(assert (=> bs!864814 (= (= lt!1705028 lt!1705266) (= lambda!174222 lambda!174180))))

(declare-fun bs!864815 () Bool)

(assert (= bs!864815 (and b!4529691 d!1397779)))

(assert (=> bs!864815 (not (= lambda!174222 lambda!174220))))

(assert (=> bs!864812 (= (= lt!1705028 lt!1705212) (= lambda!174222 lambda!174167))))

(declare-fun bs!864816 () Bool)

(assert (= bs!864816 (and b!4529691 b!4529384)))

(assert (=> bs!864816 (= (= lt!1705028 lt!1705027) (= lambda!174222 lambda!174165))))

(declare-fun bs!864817 () Bool)

(assert (= bs!864817 (and b!4529691 d!1397569)))

(assert (=> bs!864817 (= (= lt!1705028 lt!1705224) (= lambda!174222 lambda!174168))))

(declare-fun bs!864818 () Bool)

(assert (= bs!864818 (and b!4529691 b!4529273)))

(assert (=> bs!864818 (not (= lambda!174222 lambda!174089))))

(assert (=> bs!864814 (= (= lt!1705028 lt!1705001) (= lambda!174222 lambda!174179))))

(declare-fun bs!864819 () Bool)

(assert (= bs!864819 (and b!4529691 d!1397629)))

(assert (=> bs!864819 (= (= lt!1705028 lt!1705278) (= lambda!174222 lambda!174181))))

(declare-fun bs!864820 () Bool)

(assert (= bs!864820 (and b!4529691 b!4529688)))

(assert (=> bs!864820 (= lambda!174222 lambda!174221)))

(assert (=> b!4529691 true))

(declare-fun lambda!174223 () Int)

(declare-fun lt!1705467 () ListMap!3625)

(assert (=> bs!864812 (= (= lt!1705467 lt!1705027) (= lambda!174223 lambda!174166))))

(assert (=> bs!864813 (= (= lt!1705467 lt!1705001) (= lambda!174223 lambda!174178))))

(assert (=> bs!864815 (not (= lambda!174223 lambda!174220))))

(assert (=> bs!864812 (= (= lt!1705467 lt!1705212) (= lambda!174223 lambda!174167))))

(assert (=> bs!864816 (= (= lt!1705467 lt!1705027) (= lambda!174223 lambda!174165))))

(assert (=> bs!864817 (= (= lt!1705467 lt!1705224) (= lambda!174223 lambda!174168))))

(assert (=> bs!864818 (not (= lambda!174223 lambda!174089))))

(assert (=> bs!864814 (= (= lt!1705467 lt!1705001) (= lambda!174223 lambda!174179))))

(assert (=> bs!864819 (= (= lt!1705467 lt!1705278) (= lambda!174223 lambda!174181))))

(assert (=> bs!864820 (= (= lt!1705467 lt!1705028) (= lambda!174223 lambda!174221))))

(assert (=> bs!864814 (= (= lt!1705467 lt!1705266) (= lambda!174223 lambda!174180))))

(assert (=> b!4529691 (= (= lt!1705467 lt!1705028) (= lambda!174223 lambda!174222))))

(assert (=> b!4529691 true))

(declare-fun bs!864821 () Bool)

(declare-fun d!1397787 () Bool)

(assert (= bs!864821 (and d!1397787 b!4529387)))

(declare-fun lt!1705479 () ListMap!3625)

(declare-fun lambda!174224 () Int)

(assert (=> bs!864821 (= (= lt!1705479 lt!1705027) (= lambda!174224 lambda!174166))))

(declare-fun bs!864822 () Bool)

(assert (= bs!864822 (and d!1397787 b!4529431)))

(assert (=> bs!864822 (= (= lt!1705479 lt!1705001) (= lambda!174224 lambda!174178))))

(declare-fun bs!864823 () Bool)

(assert (= bs!864823 (and d!1397787 b!4529691)))

(assert (=> bs!864823 (= (= lt!1705479 lt!1705467) (= lambda!174224 lambda!174223))))

(declare-fun bs!864824 () Bool)

(assert (= bs!864824 (and d!1397787 d!1397779)))

(assert (=> bs!864824 (not (= lambda!174224 lambda!174220))))

(assert (=> bs!864821 (= (= lt!1705479 lt!1705212) (= lambda!174224 lambda!174167))))

(declare-fun bs!864825 () Bool)

(assert (= bs!864825 (and d!1397787 b!4529384)))

(assert (=> bs!864825 (= (= lt!1705479 lt!1705027) (= lambda!174224 lambda!174165))))

(declare-fun bs!864826 () Bool)

(assert (= bs!864826 (and d!1397787 d!1397569)))

(assert (=> bs!864826 (= (= lt!1705479 lt!1705224) (= lambda!174224 lambda!174168))))

(declare-fun bs!864827 () Bool)

(assert (= bs!864827 (and d!1397787 b!4529273)))

(assert (=> bs!864827 (not (= lambda!174224 lambda!174089))))

(declare-fun bs!864828 () Bool)

(assert (= bs!864828 (and d!1397787 b!4529434)))

(assert (=> bs!864828 (= (= lt!1705479 lt!1705001) (= lambda!174224 lambda!174179))))

(declare-fun bs!864829 () Bool)

(assert (= bs!864829 (and d!1397787 d!1397629)))

(assert (=> bs!864829 (= (= lt!1705479 lt!1705278) (= lambda!174224 lambda!174181))))

(declare-fun bs!864830 () Bool)

(assert (= bs!864830 (and d!1397787 b!4529688)))

(assert (=> bs!864830 (= (= lt!1705479 lt!1705028) (= lambda!174224 lambda!174221))))

(assert (=> bs!864828 (= (= lt!1705479 lt!1705266) (= lambda!174224 lambda!174180))))

(assert (=> bs!864823 (= (= lt!1705479 lt!1705028) (= lambda!174224 lambda!174222))))

(assert (=> d!1397787 true))

(declare-fun b!4529687 () Bool)

(declare-fun e!2822405 () Bool)

(assert (=> b!4529687 (= e!2822405 (forall!10305 (toList!4364 lt!1705028) lambda!174223))))

(declare-fun c!773356 () Bool)

(declare-fun call!315712 () Bool)

(declare-fun bm!315706 () Bool)

(assert (=> bm!315706 (= call!315712 (forall!10305 (ite c!773356 (toList!4364 lt!1705028) (t!357782 (_2!28868 lt!1705015))) (ite c!773356 lambda!174221 lambda!174223)))))

(declare-fun e!2822406 () ListMap!3625)

(assert (=> b!4529688 (= e!2822406 lt!1705028)))

(declare-fun lt!1705470 () Unit!96566)

(declare-fun call!315713 () Unit!96566)

(assert (=> b!4529688 (= lt!1705470 call!315713)))

(declare-fun call!315711 () Bool)

(assert (=> b!4529688 call!315711))

(declare-fun lt!1705481 () Unit!96566)

(assert (=> b!4529688 (= lt!1705481 lt!1705470)))

(assert (=> b!4529688 call!315712))

(declare-fun lt!1705463 () Unit!96566)

(declare-fun Unit!96642 () Unit!96566)

(assert (=> b!4529688 (= lt!1705463 Unit!96642)))

(declare-fun b!4529689 () Bool)

(declare-fun res!1886384 () Bool)

(declare-fun e!2822407 () Bool)

(assert (=> b!4529689 (=> (not res!1886384) (not e!2822407))))

(assert (=> b!4529689 (= res!1886384 (forall!10305 (toList!4364 lt!1705028) lambda!174224))))

(declare-fun bm!315707 () Bool)

(assert (=> bm!315707 (= call!315713 (lemmaContainsAllItsOwnKeys!352 lt!1705028))))

(declare-fun b!4529690 () Bool)

(assert (=> b!4529690 (= e!2822407 (invariantList!1031 (toList!4364 lt!1705479)))))

(assert (=> d!1397787 e!2822407))

(declare-fun res!1886385 () Bool)

(assert (=> d!1397787 (=> (not res!1886385) (not e!2822407))))

(assert (=> d!1397787 (= res!1886385 (forall!10305 (_2!28868 lt!1705015) lambda!174224))))

(assert (=> d!1397787 (= lt!1705479 e!2822406)))

(assert (=> d!1397787 (= c!773356 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1397787 (noDuplicateKeys!1178 (_2!28868 lt!1705015))))

(assert (=> d!1397787 (= (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705028) lt!1705479)))

(declare-fun bm!315708 () Bool)

(assert (=> bm!315708 (= call!315711 (forall!10305 (toList!4364 lt!1705028) (ite c!773356 lambda!174221 lambda!174223)))))

(assert (=> b!4529691 (= e!2822406 lt!1705467)))

(declare-fun lt!1705475 () ListMap!3625)

(assert (=> b!4529691 (= lt!1705475 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529691 (= lt!1705467 (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705474 () Unit!96566)

(assert (=> b!4529691 (= lt!1705474 call!315713)))

(assert (=> b!4529691 (forall!10305 (toList!4364 lt!1705028) lambda!174222)))

(declare-fun lt!1705478 () Unit!96566)

(assert (=> b!4529691 (= lt!1705478 lt!1705474)))

(assert (=> b!4529691 (forall!10305 (toList!4364 lt!1705475) lambda!174223)))

(declare-fun lt!1705471 () Unit!96566)

(declare-fun Unit!96643 () Unit!96566)

(assert (=> b!4529691 (= lt!1705471 Unit!96643)))

(assert (=> b!4529691 call!315712))

(declare-fun lt!1705476 () Unit!96566)

(declare-fun Unit!96644 () Unit!96566)

(assert (=> b!4529691 (= lt!1705476 Unit!96644)))

(declare-fun lt!1705464 () Unit!96566)

(declare-fun Unit!96645 () Unit!96566)

(assert (=> b!4529691 (= lt!1705464 Unit!96645)))

(declare-fun lt!1705465 () Unit!96566)

(assert (=> b!4529691 (= lt!1705465 (forallContained!2559 (toList!4364 lt!1705475) lambda!174223 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529691 (contains!13455 lt!1705475 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705466 () Unit!96566)

(declare-fun Unit!96646 () Unit!96566)

(assert (=> b!4529691 (= lt!1705466 Unit!96646)))

(assert (=> b!4529691 (contains!13455 lt!1705467 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705469 () Unit!96566)

(declare-fun Unit!96647 () Unit!96566)

(assert (=> b!4529691 (= lt!1705469 Unit!96647)))

(assert (=> b!4529691 (forall!10305 (_2!28868 lt!1705015) lambda!174223)))

(declare-fun lt!1705472 () Unit!96566)

(declare-fun Unit!96648 () Unit!96566)

(assert (=> b!4529691 (= lt!1705472 Unit!96648)))

(assert (=> b!4529691 (forall!10305 (toList!4364 lt!1705475) lambda!174223)))

(declare-fun lt!1705473 () Unit!96566)

(declare-fun Unit!96649 () Unit!96566)

(assert (=> b!4529691 (= lt!1705473 Unit!96649)))

(declare-fun lt!1705468 () Unit!96566)

(declare-fun Unit!96650 () Unit!96566)

(assert (=> b!4529691 (= lt!1705468 Unit!96650)))

(declare-fun lt!1705462 () Unit!96566)

(assert (=> b!4529691 (= lt!1705462 (addForallContainsKeyThenBeforeAdding!352 lt!1705028 lt!1705467 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4529691 call!315711))

(declare-fun lt!1705480 () Unit!96566)

(assert (=> b!4529691 (= lt!1705480 lt!1705462)))

(assert (=> b!4529691 (forall!10305 (toList!4364 lt!1705028) lambda!174223)))

(declare-fun lt!1705477 () Unit!96566)

(declare-fun Unit!96651 () Unit!96566)

(assert (=> b!4529691 (= lt!1705477 Unit!96651)))

(declare-fun res!1886383 () Bool)

(assert (=> b!4529691 (= res!1886383 (forall!10305 (_2!28868 lt!1705015) lambda!174223))))

(assert (=> b!4529691 (=> (not res!1886383) (not e!2822405))))

(assert (=> b!4529691 e!2822405))

(declare-fun lt!1705482 () Unit!96566)

(declare-fun Unit!96652 () Unit!96566)

(assert (=> b!4529691 (= lt!1705482 Unit!96652)))

(assert (= (and d!1397787 c!773356) b!4529688))

(assert (= (and d!1397787 (not c!773356)) b!4529691))

(assert (= (and b!4529691 res!1886383) b!4529687))

(assert (= (or b!4529688 b!4529691) bm!315708))

(assert (= (or b!4529688 b!4529691) bm!315706))

(assert (= (or b!4529688 b!4529691) bm!315707))

(assert (= (and d!1397787 res!1886385) b!4529689))

(assert (= (and b!4529689 res!1886384) b!4529690))

(declare-fun m!5285989 () Bool)

(assert (=> d!1397787 m!5285989))

(assert (=> d!1397787 m!5285125))

(declare-fun m!5285991 () Bool)

(assert (=> b!4529691 m!5285991))

(assert (=> b!4529691 m!5285991))

(declare-fun m!5285993 () Bool)

(assert (=> b!4529691 m!5285993))

(declare-fun m!5285995 () Bool)

(assert (=> b!4529691 m!5285995))

(declare-fun m!5285997 () Bool)

(assert (=> b!4529691 m!5285997))

(declare-fun m!5285999 () Bool)

(assert (=> b!4529691 m!5285999))

(declare-fun m!5286001 () Bool)

(assert (=> b!4529691 m!5286001))

(declare-fun m!5286003 () Bool)

(assert (=> b!4529691 m!5286003))

(declare-fun m!5286005 () Bool)

(assert (=> b!4529691 m!5286005))

(declare-fun m!5286007 () Bool)

(assert (=> b!4529691 m!5286007))

(declare-fun m!5286009 () Bool)

(assert (=> b!4529691 m!5286009))

(assert (=> b!4529691 m!5286003))

(assert (=> b!4529691 m!5285993))

(assert (=> b!4529687 m!5285995))

(declare-fun m!5286011 () Bool)

(assert (=> bm!315706 m!5286011))

(declare-fun m!5286013 () Bool)

(assert (=> b!4529689 m!5286013))

(declare-fun m!5286015 () Bool)

(assert (=> bm!315707 m!5286015))

(declare-fun m!5286017 () Bool)

(assert (=> b!4529690 m!5286017))

(declare-fun m!5286019 () Bool)

(assert (=> bm!315708 m!5286019))

(assert (=> b!4529267 d!1397787))

(declare-fun d!1397789 () Bool)

(assert (=> d!1397789 (eq!635 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705027) (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705028))))

(declare-fun lt!1705485 () Unit!96566)

(declare-fun choose!29713 (ListMap!3625 ListMap!3625 List!50820) Unit!96566)

(assert (=> d!1397789 (= lt!1705485 (choose!29713 lt!1705027 lt!1705028 (_2!28868 lt!1705015)))))

(assert (=> d!1397789 (noDuplicateKeys!1178 (_2!28868 lt!1705015))))

(assert (=> d!1397789 (= (lemmaAddToMapFromBucketPreservesEquivalence!54 lt!1705027 lt!1705028 (_2!28868 lt!1705015)) lt!1705485)))

(declare-fun bs!864831 () Bool)

(assert (= bs!864831 d!1397789))

(assert (=> bs!864831 m!5285191))

(assert (=> bs!864831 m!5285191))

(assert (=> bs!864831 m!5285173))

(declare-fun m!5286021 () Bool)

(assert (=> bs!864831 m!5286021))

(assert (=> bs!864831 m!5285125))

(declare-fun m!5286023 () Bool)

(assert (=> bs!864831 m!5286023))

(assert (=> bs!864831 m!5285173))

(assert (=> b!4529267 d!1397789))

(declare-fun d!1397791 () Bool)

(declare-fun e!2822408 () Bool)

(assert (=> d!1397791 e!2822408))

(declare-fun res!1886387 () Bool)

(assert (=> d!1397791 (=> (not res!1886387) (not e!2822408))))

(declare-fun lt!1705486 () ListLongMap!2995)

(assert (=> d!1397791 (= res!1886387 (contains!13453 lt!1705486 (_1!28868 lt!1705002)))))

(declare-fun lt!1705488 () List!50821)

(assert (=> d!1397791 (= lt!1705486 (ListLongMap!2996 lt!1705488))))

(declare-fun lt!1705487 () Unit!96566)

(declare-fun lt!1705489 () Unit!96566)

(assert (=> d!1397791 (= lt!1705487 lt!1705489)))

(assert (=> d!1397791 (= (getValueByKey!1121 lt!1705488 (_1!28868 lt!1705002)) (Some!11156 (_2!28868 lt!1705002)))))

(assert (=> d!1397791 (= lt!1705489 (lemmaContainsTupThenGetReturnValue!700 lt!1705488 (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(assert (=> d!1397791 (= lt!1705488 (insertStrictlySorted!422 (toList!4363 lm!1477) (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(assert (=> d!1397791 (= (+!1570 lm!1477 lt!1705002) lt!1705486)))

(declare-fun b!4529692 () Bool)

(declare-fun res!1886386 () Bool)

(assert (=> b!4529692 (=> (not res!1886386) (not e!2822408))))

(assert (=> b!4529692 (= res!1886386 (= (getValueByKey!1121 (toList!4363 lt!1705486) (_1!28868 lt!1705002)) (Some!11156 (_2!28868 lt!1705002))))))

(declare-fun b!4529693 () Bool)

(assert (=> b!4529693 (= e!2822408 (contains!13454 (toList!4363 lt!1705486) lt!1705002))))

(assert (= (and d!1397791 res!1886387) b!4529692))

(assert (= (and b!4529692 res!1886386) b!4529693))

(declare-fun m!5286025 () Bool)

(assert (=> d!1397791 m!5286025))

(declare-fun m!5286027 () Bool)

(assert (=> d!1397791 m!5286027))

(declare-fun m!5286029 () Bool)

(assert (=> d!1397791 m!5286029))

(declare-fun m!5286031 () Bool)

(assert (=> d!1397791 m!5286031))

(declare-fun m!5286033 () Bool)

(assert (=> b!4529692 m!5286033))

(declare-fun m!5286035 () Bool)

(assert (=> b!4529693 m!5286035))

(assert (=> b!4529268 d!1397791))

(declare-fun d!1397793 () Bool)

(declare-fun e!2822409 () Bool)

(assert (=> d!1397793 e!2822409))

(declare-fun res!1886389 () Bool)

(assert (=> d!1397793 (=> (not res!1886389) (not e!2822409))))

(declare-fun lt!1705490 () ListLongMap!2995)

(assert (=> d!1397793 (= res!1886389 (contains!13453 lt!1705490 (_1!28868 lt!1705015)))))

(declare-fun lt!1705492 () List!50821)

(assert (=> d!1397793 (= lt!1705490 (ListLongMap!2996 lt!1705492))))

(declare-fun lt!1705491 () Unit!96566)

(declare-fun lt!1705493 () Unit!96566)

(assert (=> d!1397793 (= lt!1705491 lt!1705493)))

(assert (=> d!1397793 (= (getValueByKey!1121 lt!1705492 (_1!28868 lt!1705015)) (Some!11156 (_2!28868 lt!1705015)))))

(assert (=> d!1397793 (= lt!1705493 (lemmaContainsTupThenGetReturnValue!700 lt!1705492 (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(assert (=> d!1397793 (= lt!1705492 (insertStrictlySorted!422 (toList!4363 lt!1704999) (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(assert (=> d!1397793 (= (+!1570 lt!1704999 lt!1705015) lt!1705490)))

(declare-fun b!4529694 () Bool)

(declare-fun res!1886388 () Bool)

(assert (=> b!4529694 (=> (not res!1886388) (not e!2822409))))

(assert (=> b!4529694 (= res!1886388 (= (getValueByKey!1121 (toList!4363 lt!1705490) (_1!28868 lt!1705015)) (Some!11156 (_2!28868 lt!1705015))))))

(declare-fun b!4529695 () Bool)

(assert (=> b!4529695 (= e!2822409 (contains!13454 (toList!4363 lt!1705490) lt!1705015))))

(assert (= (and d!1397793 res!1886389) b!4529694))

(assert (= (and b!4529694 res!1886388) b!4529695))

(declare-fun m!5286037 () Bool)

(assert (=> d!1397793 m!5286037))

(declare-fun m!5286039 () Bool)

(assert (=> d!1397793 m!5286039))

(declare-fun m!5286041 () Bool)

(assert (=> d!1397793 m!5286041))

(declare-fun m!5286043 () Bool)

(assert (=> d!1397793 m!5286043))

(declare-fun m!5286045 () Bool)

(assert (=> b!4529694 m!5286045))

(declare-fun m!5286047 () Bool)

(assert (=> b!4529695 m!5286047))

(assert (=> b!4529268 d!1397793))

(declare-fun d!1397795 () Bool)

(declare-fun e!2822411 () Bool)

(assert (=> d!1397795 e!2822411))

(declare-fun res!1886390 () Bool)

(assert (=> d!1397795 (=> res!1886390 e!2822411)))

(declare-fun lt!1705495 () Bool)

(assert (=> d!1397795 (= res!1886390 (not lt!1705495))))

(declare-fun lt!1705496 () Bool)

(assert (=> d!1397795 (= lt!1705495 lt!1705496)))

(declare-fun lt!1705494 () Unit!96566)

(declare-fun e!2822410 () Unit!96566)

(assert (=> d!1397795 (= lt!1705494 e!2822410)))

(declare-fun c!773357 () Bool)

(assert (=> d!1397795 (= c!773357 lt!1705496)))

(assert (=> d!1397795 (= lt!1705496 (containsKey!1830 (toList!4363 lm!1477) lt!1705014))))

(assert (=> d!1397795 (= (contains!13453 lm!1477 lt!1705014) lt!1705495)))

(declare-fun b!4529696 () Bool)

(declare-fun lt!1705497 () Unit!96566)

(assert (=> b!4529696 (= e!2822410 lt!1705497)))

(assert (=> b!4529696 (= lt!1705497 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lm!1477) lt!1705014))))

(assert (=> b!4529696 (isDefined!8441 (getValueByKey!1121 (toList!4363 lm!1477) lt!1705014))))

(declare-fun b!4529697 () Bool)

(declare-fun Unit!96653 () Unit!96566)

(assert (=> b!4529697 (= e!2822410 Unit!96653)))

(declare-fun b!4529698 () Bool)

(assert (=> b!4529698 (= e!2822411 (isDefined!8441 (getValueByKey!1121 (toList!4363 lm!1477) lt!1705014)))))

(assert (= (and d!1397795 c!773357) b!4529696))

(assert (= (and d!1397795 (not c!773357)) b!4529697))

(assert (= (and d!1397795 (not res!1886390)) b!4529698))

(declare-fun m!5286049 () Bool)

(assert (=> d!1397795 m!5286049))

(declare-fun m!5286051 () Bool)

(assert (=> b!4529696 m!5286051))

(declare-fun m!5286053 () Bool)

(assert (=> b!4529696 m!5286053))

(assert (=> b!4529696 m!5286053))

(declare-fun m!5286055 () Bool)

(assert (=> b!4529696 m!5286055))

(assert (=> b!4529698 m!5286053))

(assert (=> b!4529698 m!5286053))

(assert (=> b!4529698 m!5286055))

(assert (=> b!4529269 d!1397795))

(declare-fun bs!864832 () Bool)

(declare-fun d!1397797 () Bool)

(assert (= bs!864832 (and d!1397797 d!1397661)))

(declare-fun lambda!174227 () Int)

(assert (=> bs!864832 (= lambda!174227 lambda!174187)))

(declare-fun bs!864833 () Bool)

(assert (= bs!864833 (and d!1397797 d!1397711)))

(assert (=> bs!864833 (= lambda!174227 lambda!174203)))

(declare-fun bs!864834 () Bool)

(assert (= bs!864834 (and d!1397797 d!1397727)))

(assert (=> bs!864834 (= lambda!174227 lambda!174209)))

(declare-fun bs!864835 () Bool)

(assert (= bs!864835 (and d!1397797 d!1397665)))

(assert (=> bs!864835 (= lambda!174227 lambda!174190)))

(declare-fun bs!864836 () Bool)

(assert (= bs!864836 (and d!1397797 d!1397751)))

(assert (=> bs!864836 (not (= lambda!174227 lambda!174212))))

(declare-fun bs!864837 () Bool)

(assert (= bs!864837 (and d!1397797 d!1397607)))

(assert (=> bs!864837 (= lambda!174227 lambda!174177)))

(declare-fun bs!864838 () Bool)

(assert (= bs!864838 (and d!1397797 d!1397767)))

(assert (=> bs!864838 (= lambda!174227 lambda!174216)))

(declare-fun bs!864839 () Bool)

(assert (= bs!864839 (and d!1397797 d!1397705)))

(assert (=> bs!864839 (= lambda!174227 lambda!174197)))

(declare-fun bs!864840 () Bool)

(assert (= bs!864840 (and d!1397797 d!1397669)))

(assert (=> bs!864840 (= lambda!174227 lambda!174191)))

(declare-fun bs!864841 () Bool)

(assert (= bs!864841 (and d!1397797 b!4529273)))

(assert (=> bs!864841 (not (= lambda!174227 lambda!174088))))

(declare-fun bs!864842 () Bool)

(assert (= bs!864842 (and d!1397797 d!1397769)))

(assert (=> bs!864842 (= lambda!174227 lambda!174217)))

(declare-fun bs!864843 () Bool)

(assert (= bs!864843 (and d!1397797 d!1397765)))

(assert (=> bs!864843 (= lambda!174227 lambda!174213)))

(declare-fun bs!864844 () Bool)

(assert (= bs!864844 (and d!1397797 start!449036)))

(assert (=> bs!864844 (= lambda!174227 lambda!174087)))

(assert (=> d!1397797 (contains!13453 lm!1477 (hash!2861 hashF!1107 key!3287))))

(declare-fun lt!1705500 () Unit!96566)

(declare-fun choose!29714 (ListLongMap!2995 K!12085 Hashable!5573) Unit!96566)

(assert (=> d!1397797 (= lt!1705500 (choose!29714 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1397797 (forall!10303 (toList!4363 lm!1477) lambda!174227)))

(assert (=> d!1397797 (= (lemmaInGenMapThenLongMapContainsHash!252 lm!1477 key!3287 hashF!1107) lt!1705500)))

(declare-fun bs!864845 () Bool)

(assert (= bs!864845 d!1397797))

(assert (=> bs!864845 m!5285187))

(assert (=> bs!864845 m!5285187))

(declare-fun m!5286057 () Bool)

(assert (=> bs!864845 m!5286057))

(declare-fun m!5286059 () Bool)

(assert (=> bs!864845 m!5286059))

(declare-fun m!5286061 () Bool)

(assert (=> bs!864845 m!5286061))

(assert (=> b!4529269 d!1397797))

(declare-fun d!1397799 () Bool)

(assert (=> d!1397799 (= (apply!11915 lm!1477 hash!344) (get!16635 (getValueByKey!1121 (toList!4363 lm!1477) hash!344)))))

(declare-fun bs!864846 () Bool)

(assert (= bs!864846 d!1397799))

(declare-fun m!5286063 () Bool)

(assert (=> bs!864846 m!5286063))

(assert (=> bs!864846 m!5286063))

(declare-fun m!5286065 () Bool)

(assert (=> bs!864846 m!5286065))

(assert (=> b!4529269 d!1397799))

(declare-fun d!1397801 () Bool)

(assert (=> d!1397801 (dynLambda!21186 lambda!174087 lt!1705011)))

(declare-fun lt!1705501 () Unit!96566)

(assert (=> d!1397801 (= lt!1705501 (choose!29704 (toList!4363 lm!1477) lambda!174087 lt!1705011))))

(declare-fun e!2822412 () Bool)

(assert (=> d!1397801 e!2822412))

(declare-fun res!1886391 () Bool)

(assert (=> d!1397801 (=> (not res!1886391) (not e!2822412))))

(assert (=> d!1397801 (= res!1886391 (forall!10303 (toList!4363 lm!1477) lambda!174087))))

(assert (=> d!1397801 (= (forallContained!2558 (toList!4363 lm!1477) lambda!174087 lt!1705011) lt!1705501)))

(declare-fun b!4529699 () Bool)

(assert (=> b!4529699 (= e!2822412 (contains!13454 (toList!4363 lm!1477) lt!1705011))))

(assert (= (and d!1397801 res!1886391) b!4529699))

(declare-fun b_lambda!156349 () Bool)

(assert (=> (not b_lambda!156349) (not d!1397801)))

(declare-fun m!5286067 () Bool)

(assert (=> d!1397801 m!5286067))

(declare-fun m!5286069 () Bool)

(assert (=> d!1397801 m!5286069))

(assert (=> d!1397801 m!5285077))

(assert (=> b!4529699 m!5285087))

(assert (=> b!4529269 d!1397801))

(declare-fun b!4529710 () Bool)

(declare-fun e!2822417 () List!50820)

(assert (=> b!4529710 (= e!2822417 (Cons!50696 (h!56563 lt!1705019) (removePairForKey!805 (t!357782 lt!1705019) key!3287)))))

(declare-fun d!1397803 () Bool)

(declare-fun lt!1705504 () List!50820)

(assert (=> d!1397803 (not (containsKey!1826 lt!1705504 key!3287))))

(declare-fun e!2822418 () List!50820)

(assert (=> d!1397803 (= lt!1705504 e!2822418)))

(declare-fun c!773363 () Bool)

(assert (=> d!1397803 (= c!773363 (and ((_ is Cons!50696) lt!1705019) (= (_1!28867 (h!56563 lt!1705019)) key!3287)))))

(assert (=> d!1397803 (noDuplicateKeys!1178 lt!1705019)))

(assert (=> d!1397803 (= (removePairForKey!805 lt!1705019 key!3287) lt!1705504)))

(declare-fun b!4529708 () Bool)

(assert (=> b!4529708 (= e!2822418 (t!357782 lt!1705019))))

(declare-fun b!4529709 () Bool)

(assert (=> b!4529709 (= e!2822418 e!2822417)))

(declare-fun c!773362 () Bool)

(assert (=> b!4529709 (= c!773362 ((_ is Cons!50696) lt!1705019))))

(declare-fun b!4529711 () Bool)

(assert (=> b!4529711 (= e!2822417 Nil!50696)))

(assert (= (and d!1397803 c!773363) b!4529708))

(assert (= (and d!1397803 (not c!773363)) b!4529709))

(assert (= (and b!4529709 c!773362) b!4529710))

(assert (= (and b!4529709 (not c!773362)) b!4529711))

(declare-fun m!5286071 () Bool)

(assert (=> b!4529710 m!5286071))

(declare-fun m!5286073 () Bool)

(assert (=> d!1397803 m!5286073))

(declare-fun m!5286075 () Bool)

(assert (=> d!1397803 m!5286075))

(assert (=> b!4529269 d!1397803))

(declare-fun d!1397805 () Bool)

(assert (=> d!1397805 (contains!13454 (toList!4363 lm!1477) (tuple2!51149 hash!344 lt!1705019))))

(declare-fun lt!1705507 () Unit!96566)

(declare-fun choose!29715 (List!50821 (_ BitVec 64) List!50820) Unit!96566)

(assert (=> d!1397805 (= lt!1705507 (choose!29715 (toList!4363 lm!1477) hash!344 lt!1705019))))

(declare-fun e!2822421 () Bool)

(assert (=> d!1397805 e!2822421))

(declare-fun res!1886394 () Bool)

(assert (=> d!1397805 (=> (not res!1886394) (not e!2822421))))

(assert (=> d!1397805 (= res!1886394 (isStrictlySorted!444 (toList!4363 lm!1477)))))

(assert (=> d!1397805 (= (lemmaGetValueByKeyImpliesContainsTuple!690 (toList!4363 lm!1477) hash!344 lt!1705019) lt!1705507)))

(declare-fun b!4529714 () Bool)

(assert (=> b!4529714 (= e!2822421 (= (getValueByKey!1121 (toList!4363 lm!1477) hash!344) (Some!11156 lt!1705019)))))

(assert (= (and d!1397805 res!1886394) b!4529714))

(declare-fun m!5286077 () Bool)

(assert (=> d!1397805 m!5286077))

(declare-fun m!5286079 () Bool)

(assert (=> d!1397805 m!5286079))

(assert (=> d!1397805 m!5285549))

(assert (=> b!4529714 m!5286063))

(assert (=> b!4529269 d!1397805))

(declare-fun d!1397807 () Bool)

(declare-fun lt!1705508 () Bool)

(assert (=> d!1397807 (= lt!1705508 (select (content!8401 (toList!4363 lm!1477)) lt!1705011))))

(declare-fun e!2822422 () Bool)

(assert (=> d!1397807 (= lt!1705508 e!2822422)))

(declare-fun res!1886396 () Bool)

(assert (=> d!1397807 (=> (not res!1886396) (not e!2822422))))

(assert (=> d!1397807 (= res!1886396 ((_ is Cons!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397807 (= (contains!13454 (toList!4363 lm!1477) lt!1705011) lt!1705508)))

(declare-fun b!4529715 () Bool)

(declare-fun e!2822423 () Bool)

(assert (=> b!4529715 (= e!2822422 e!2822423)))

(declare-fun res!1886395 () Bool)

(assert (=> b!4529715 (=> res!1886395 e!2822423)))

(assert (=> b!4529715 (= res!1886395 (= (h!56564 (toList!4363 lm!1477)) lt!1705011))))

(declare-fun b!4529716 () Bool)

(assert (=> b!4529716 (= e!2822423 (contains!13454 (t!357783 (toList!4363 lm!1477)) lt!1705011))))

(assert (= (and d!1397807 res!1886396) b!4529715))

(assert (= (and b!4529715 (not res!1886395)) b!4529716))

(declare-fun m!5286081 () Bool)

(assert (=> d!1397807 m!5286081))

(declare-fun m!5286083 () Bool)

(assert (=> d!1397807 m!5286083))

(assert (=> b!4529716 m!5285119))

(assert (=> b!4529269 d!1397807))

(declare-fun b!4529721 () Bool)

(declare-fun e!2822426 () Bool)

(declare-fun tp!1338361 () Bool)

(declare-fun tp!1338362 () Bool)

(assert (=> b!4529721 (= e!2822426 (and tp!1338361 tp!1338362))))

(assert (=> b!4529286 (= tp!1338346 e!2822426)))

(assert (= (and b!4529286 ((_ is Cons!50697) (toList!4363 lm!1477))) b!4529721))

(declare-fun tp!1338365 () Bool)

(declare-fun b!4529726 () Bool)

(declare-fun e!2822429 () Bool)

(assert (=> b!4529726 (= e!2822429 (and tp_is_empty!27989 tp_is_empty!27991 tp!1338365))))

(assert (=> b!4529277 (= tp!1338347 e!2822429)))

(assert (= (and b!4529277 ((_ is Cons!50696) (t!357782 newBucket!178))) b!4529726))

(declare-fun b_lambda!156351 () Bool)

(assert (= b_lambda!156327 (or b!4529273 b_lambda!156351)))

(declare-fun bs!864847 () Bool)

(declare-fun d!1397809 () Bool)

(assert (= bs!864847 (and d!1397809 b!4529273)))

(assert (=> bs!864847 (= (dynLambda!21186 lambda!174088 (h!56564 (toList!4363 lm!1477))) (allKeysSameHash!1032 (_2!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 (h!56564 (toList!4363 lm!1477))) hashF!1107))))

(declare-fun m!5286085 () Bool)

(assert (=> bs!864847 m!5286085))

(assert (=> d!1397681 d!1397809))

(declare-fun b_lambda!156353 () Bool)

(assert (= b_lambda!156323 (or start!449036 b_lambda!156353)))

(declare-fun bs!864848 () Bool)

(declare-fun d!1397811 () Bool)

(assert (= bs!864848 (and d!1397811 start!449036)))

(assert (=> bs!864848 (= (dynLambda!21186 lambda!174087 (h!56564 (toList!4363 lm!1477))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(declare-fun m!5286087 () Bool)

(assert (=> bs!864848 m!5286087))

(assert (=> b!4529456 d!1397811))

(declare-fun b_lambda!156355 () Bool)

(assert (= b_lambda!156347 (or start!449036 b_lambda!156355)))

(assert (=> d!1397755 d!1397811))

(declare-fun b_lambda!156357 () Bool)

(assert (= b_lambda!156329 (or b!4529273 b_lambda!156357)))

(declare-fun bs!864849 () Bool)

(declare-fun d!1397813 () Bool)

(assert (= bs!864849 (and d!1397813 b!4529273)))

(assert (=> bs!864849 (= (dynLambda!21188 lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))) (= (hash!2861 hashF!1107 (_1!28867 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026))))) (_1!28868 (h!56564 (toList!4363 lm!1477)))))))

(declare-fun m!5286089 () Bool)

(assert (=> bs!864849 m!5286089))

(assert (=> d!1397693 d!1397813))

(declare-fun b_lambda!156359 () Bool)

(assert (= b_lambda!156349 (or start!449036 b_lambda!156359)))

(declare-fun bs!864850 () Bool)

(declare-fun d!1397815 () Bool)

(assert (= bs!864850 (and d!1397815 start!449036)))

(assert (=> bs!864850 (= (dynLambda!21186 lambda!174087 lt!1705011) (noDuplicateKeys!1178 (_2!28868 lt!1705011)))))

(declare-fun m!5286091 () Bool)

(assert (=> bs!864850 m!5286091))

(assert (=> d!1397801 d!1397815))

(check-sat (not b!4529651) (not d!1397771) (not b!4529531) (not b_lambda!156355) (not b!4529672) (not d!1397767) (not b!4529483) (not b!4529565) (not d!1397761) (not d!1397759) (not b!4529568) tp_is_empty!27989 (not b!4529481) (not d!1397773) tp_is_empty!27991 (not b!4529564) (not d!1397795) (not d!1397645) (not d!1397803) (not bm!315690) (not bm!315695) (not b!4529658) (not bm!315694) (not b!4529555) (not d!1397747) (not b_lambda!156359) (not b!4529685) (not d!1397607) (not d!1397623) (not b!4529386) (not b!4529569) (not b!4529502) (not b!4529666) (not b!4529667) (not b!4529485) (not b!4529693) (not b!4529432) (not b!4529478) (not b!4529593) (not b!4529383) (not b!4529716) (not b!4529661) (not d!1397785) (not bm!315706) (not b!4529698) (not b!4529686) (not d!1397711) (not d!1397735) (not bm!315692) (not b!4529570) (not d!1397721) (not b!4529607) (not d!1397681) (not b!4529497) (not b!4529534) (not d!1397751) (not bm!315707) (not b!4529480) (not bs!864850) (not d!1397633) (not b!4529572) (not d!1397797) (not bm!315705) (not b!4529721) (not b!4529496) (not b!4529680) (not b!4529573) (not d!1397693) (not b!4529580) (not d!1397799) (not b!4529501) (not d!1397787) (not b!4529532) (not d!1397763) (not b!4529660) (not d!1397667) (not b!4529668) (not bm!315691) (not b!4529694) (not d!1397791) (not d!1397757) (not b_lambda!156351) (not bs!864849) (not d!1397665) (not b!4529500) (not b!4529692) (not bs!864847) (not b!4529691) (not d!1397705) (not d!1397783) (not d!1397647) (not d!1397661) (not b!4529687) (not d!1397749) (not d!1397699) (not b!4529588) (not b!4529387) (not d!1397671) (not b!4529690) (not b!4529533) (not b!4529670) (not bm!315708) (not bm!315696) (not b!4529695) (not b!4529493) (not b!4529498) (not b!4529434) (not b!4529590) (not b!4529682) (not d!1397769) (not d!1397793) (not b!4529385) (not b!4529673) (not d!1397777) (not b!4529699) (not d!1397765) (not d!1397629) (not bs!864848) (not b!4529689) (not d!1397569) (not b!4529427) (not d!1397725) (not b!4529491) (not b!4529653) (not b!4529567) (not d!1397805) (not b!4529726) (not b!4529529) (not b!4529433) (not b_lambda!156357) (not d!1397807) (not d!1397567) (not b!4529457) (not d!1397669) (not b!4529408) (not b!4529659) (not d!1397801) (not d!1397755) (not bm!315702) (not d!1397789) (not d!1397779) (not d!1397621) (not b!4529696) (not b!4529482) (not b_lambda!156353) (not d!1397727) (not b!4529714) (not b!4529591) (not b!4529430) (not b!4529710) (not b!4529495) (not b!4529486) (not bm!315703) (not d!1397775))
(check-sat)
(get-model)

(declare-fun d!1397817 () Bool)

(declare-fun res!1886397 () Bool)

(declare-fun e!2822430 () Bool)

(assert (=> d!1397817 (=> res!1886397 e!2822430)))

(assert (=> d!1397817 (= res!1886397 (not ((_ is Cons!50696) (t!357782 newBucket!178))))))

(assert (=> d!1397817 (= (noDuplicateKeys!1178 (t!357782 newBucket!178)) e!2822430)))

(declare-fun b!4529727 () Bool)

(declare-fun e!2822431 () Bool)

(assert (=> b!4529727 (= e!2822430 e!2822431)))

(declare-fun res!1886398 () Bool)

(assert (=> b!4529727 (=> (not res!1886398) (not e!2822431))))

(assert (=> b!4529727 (= res!1886398 (not (containsKey!1826 (t!357782 (t!357782 newBucket!178)) (_1!28867 (h!56563 (t!357782 newBucket!178))))))))

(declare-fun b!4529728 () Bool)

(assert (=> b!4529728 (= e!2822431 (noDuplicateKeys!1178 (t!357782 (t!357782 newBucket!178))))))

(assert (= (and d!1397817 (not res!1886397)) b!4529727))

(assert (= (and b!4529727 res!1886398) b!4529728))

(declare-fun m!5286093 () Bool)

(assert (=> b!4529727 m!5286093))

(declare-fun m!5286095 () Bool)

(assert (=> b!4529728 m!5286095))

(assert (=> b!4529686 d!1397817))

(declare-fun bs!864851 () Bool)

(declare-fun d!1397819 () Bool)

(assert (= bs!864851 (and d!1397819 b!4529387)))

(declare-fun lambda!174230 () Int)

(assert (=> bs!864851 (= (= lt!1705001 lt!1705027) (= lambda!174230 lambda!174166))))

(declare-fun bs!864852 () Bool)

(assert (= bs!864852 (and d!1397819 b!4529431)))

(assert (=> bs!864852 (= lambda!174230 lambda!174178)))

(declare-fun bs!864853 () Bool)

(assert (= bs!864853 (and d!1397819 b!4529691)))

(assert (=> bs!864853 (= (= lt!1705001 lt!1705467) (= lambda!174230 lambda!174223))))

(declare-fun bs!864854 () Bool)

(assert (= bs!864854 (and d!1397819 d!1397779)))

(assert (=> bs!864854 (not (= lambda!174230 lambda!174220))))

(assert (=> bs!864851 (= (= lt!1705001 lt!1705212) (= lambda!174230 lambda!174167))))

(declare-fun bs!864855 () Bool)

(assert (= bs!864855 (and d!1397819 b!4529384)))

(assert (=> bs!864855 (= (= lt!1705001 lt!1705027) (= lambda!174230 lambda!174165))))

(declare-fun bs!864856 () Bool)

(assert (= bs!864856 (and d!1397819 d!1397569)))

(assert (=> bs!864856 (= (= lt!1705001 lt!1705224) (= lambda!174230 lambda!174168))))

(declare-fun bs!864857 () Bool)

(assert (= bs!864857 (and d!1397819 b!4529273)))

(assert (=> bs!864857 (not (= lambda!174230 lambda!174089))))

(declare-fun bs!864858 () Bool)

(assert (= bs!864858 (and d!1397819 b!4529434)))

(assert (=> bs!864858 (= lambda!174230 lambda!174179)))

(declare-fun bs!864859 () Bool)

(assert (= bs!864859 (and d!1397819 d!1397629)))

(assert (=> bs!864859 (= (= lt!1705001 lt!1705278) (= lambda!174230 lambda!174181))))

(declare-fun bs!864860 () Bool)

(assert (= bs!864860 (and d!1397819 b!4529688)))

(assert (=> bs!864860 (= (= lt!1705001 lt!1705028) (= lambda!174230 lambda!174221))))

(declare-fun bs!864861 () Bool)

(assert (= bs!864861 (and d!1397819 d!1397787)))

(assert (=> bs!864861 (= (= lt!1705001 lt!1705479) (= lambda!174230 lambda!174224))))

(assert (=> bs!864858 (= (= lt!1705001 lt!1705266) (= lambda!174230 lambda!174180))))

(assert (=> bs!864853 (= (= lt!1705001 lt!1705028) (= lambda!174230 lambda!174222))))

(assert (=> d!1397819 true))

(assert (=> d!1397819 (forall!10305 (toList!4364 lt!1705001) lambda!174230)))

(declare-fun lt!1705511 () Unit!96566)

(declare-fun choose!29716 (ListMap!3625) Unit!96566)

(assert (=> d!1397819 (= lt!1705511 (choose!29716 lt!1705001))))

(assert (=> d!1397819 (= (lemmaContainsAllItsOwnKeys!352 lt!1705001) lt!1705511)))

(declare-fun bs!864862 () Bool)

(assert (= bs!864862 d!1397819))

(declare-fun m!5286097 () Bool)

(assert (=> bs!864862 m!5286097))

(declare-fun m!5286099 () Bool)

(assert (=> bs!864862 m!5286099))

(assert (=> bm!315695 d!1397819))

(declare-fun bs!864863 () Bool)

(declare-fun b!4529730 () Bool)

(assert (= bs!864863 (and b!4529730 b!4529387)))

(declare-fun lambda!174231 () Int)

(assert (=> bs!864863 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705027) (= lambda!174231 lambda!174166))))

(declare-fun bs!864864 () Bool)

(assert (= bs!864864 (and b!4529730 b!4529431)))

(assert (=> bs!864864 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705001) (= lambda!174231 lambda!174178))))

(declare-fun bs!864865 () Bool)

(assert (= bs!864865 (and b!4529730 b!4529691)))

(assert (=> bs!864865 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705467) (= lambda!174231 lambda!174223))))

(declare-fun bs!864866 () Bool)

(assert (= bs!864866 (and b!4529730 d!1397779)))

(assert (=> bs!864866 (not (= lambda!174231 lambda!174220))))

(assert (=> bs!864863 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705212) (= lambda!174231 lambda!174167))))

(declare-fun bs!864867 () Bool)

(assert (= bs!864867 (and b!4529730 b!4529384)))

(assert (=> bs!864867 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705027) (= lambda!174231 lambda!174165))))

(declare-fun bs!864868 () Bool)

(assert (= bs!864868 (and b!4529730 d!1397569)))

(assert (=> bs!864868 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705224) (= lambda!174231 lambda!174168))))

(declare-fun bs!864869 () Bool)

(assert (= bs!864869 (and b!4529730 d!1397819)))

(assert (=> bs!864869 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705001) (= lambda!174231 lambda!174230))))

(declare-fun bs!864870 () Bool)

(assert (= bs!864870 (and b!4529730 b!4529273)))

(assert (=> bs!864870 (not (= lambda!174231 lambda!174089))))

(declare-fun bs!864871 () Bool)

(assert (= bs!864871 (and b!4529730 b!4529434)))

(assert (=> bs!864871 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705001) (= lambda!174231 lambda!174179))))

(declare-fun bs!864872 () Bool)

(assert (= bs!864872 (and b!4529730 d!1397629)))

(assert (=> bs!864872 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705278) (= lambda!174231 lambda!174181))))

(declare-fun bs!864873 () Bool)

(assert (= bs!864873 (and b!4529730 b!4529688)))

(assert (=> bs!864873 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705028) (= lambda!174231 lambda!174221))))

(declare-fun bs!864874 () Bool)

(assert (= bs!864874 (and b!4529730 d!1397787)))

(assert (=> bs!864874 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705479) (= lambda!174231 lambda!174224))))

(assert (=> bs!864871 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705266) (= lambda!174231 lambda!174180))))

(assert (=> bs!864865 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705028) (= lambda!174231 lambda!174222))))

(assert (=> b!4529730 true))

(declare-fun bs!864875 () Bool)

(declare-fun b!4529733 () Bool)

(assert (= bs!864875 (and b!4529733 b!4529387)))

(declare-fun lambda!174232 () Int)

(assert (=> bs!864875 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705027) (= lambda!174232 lambda!174166))))

(declare-fun bs!864876 () Bool)

(assert (= bs!864876 (and b!4529733 b!4529431)))

(assert (=> bs!864876 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705001) (= lambda!174232 lambda!174178))))

(declare-fun bs!864877 () Bool)

(assert (= bs!864877 (and b!4529733 b!4529691)))

(assert (=> bs!864877 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705467) (= lambda!174232 lambda!174223))))

(declare-fun bs!864878 () Bool)

(assert (= bs!864878 (and b!4529733 d!1397779)))

(assert (=> bs!864878 (not (= lambda!174232 lambda!174220))))

(assert (=> bs!864875 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705212) (= lambda!174232 lambda!174167))))

(declare-fun bs!864879 () Bool)

(assert (= bs!864879 (and b!4529733 b!4529384)))

(assert (=> bs!864879 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705027) (= lambda!174232 lambda!174165))))

(declare-fun bs!864880 () Bool)

(assert (= bs!864880 (and b!4529733 d!1397819)))

(assert (=> bs!864880 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705001) (= lambda!174232 lambda!174230))))

(declare-fun bs!864881 () Bool)

(assert (= bs!864881 (and b!4529733 b!4529273)))

(assert (=> bs!864881 (not (= lambda!174232 lambda!174089))))

(declare-fun bs!864882 () Bool)

(assert (= bs!864882 (and b!4529733 b!4529434)))

(assert (=> bs!864882 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705001) (= lambda!174232 lambda!174179))))

(declare-fun bs!864883 () Bool)

(assert (= bs!864883 (and b!4529733 d!1397629)))

(assert (=> bs!864883 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705278) (= lambda!174232 lambda!174181))))

(declare-fun bs!864884 () Bool)

(assert (= bs!864884 (and b!4529733 b!4529688)))

(assert (=> bs!864884 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705028) (= lambda!174232 lambda!174221))))

(declare-fun bs!864885 () Bool)

(assert (= bs!864885 (and b!4529733 d!1397787)))

(assert (=> bs!864885 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705479) (= lambda!174232 lambda!174224))))

(assert (=> bs!864882 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705266) (= lambda!174232 lambda!174180))))

(assert (=> bs!864877 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705028) (= lambda!174232 lambda!174222))))

(declare-fun bs!864886 () Bool)

(assert (= bs!864886 (and b!4529733 b!4529730)))

(assert (=> bs!864886 (= lambda!174232 lambda!174231)))

(declare-fun bs!864887 () Bool)

(assert (= bs!864887 (and b!4529733 d!1397569)))

(assert (=> bs!864887 (= (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705224) (= lambda!174232 lambda!174168))))

(assert (=> b!4529733 true))

(declare-fun lt!1705517 () ListMap!3625)

(declare-fun lambda!174233 () Int)

(assert (=> bs!864875 (= (= lt!1705517 lt!1705027) (= lambda!174233 lambda!174166))))

(assert (=> bs!864876 (= (= lt!1705517 lt!1705001) (= lambda!174233 lambda!174178))))

(assert (=> b!4529733 (= (= lt!1705517 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174233 lambda!174232))))

(assert (=> bs!864877 (= (= lt!1705517 lt!1705467) (= lambda!174233 lambda!174223))))

(assert (=> bs!864878 (not (= lambda!174233 lambda!174220))))

(assert (=> bs!864875 (= (= lt!1705517 lt!1705212) (= lambda!174233 lambda!174167))))

(assert (=> bs!864879 (= (= lt!1705517 lt!1705027) (= lambda!174233 lambda!174165))))

(assert (=> bs!864880 (= (= lt!1705517 lt!1705001) (= lambda!174233 lambda!174230))))

(assert (=> bs!864881 (not (= lambda!174233 lambda!174089))))

(assert (=> bs!864882 (= (= lt!1705517 lt!1705001) (= lambda!174233 lambda!174179))))

(assert (=> bs!864883 (= (= lt!1705517 lt!1705278) (= lambda!174233 lambda!174181))))

(assert (=> bs!864884 (= (= lt!1705517 lt!1705028) (= lambda!174233 lambda!174221))))

(assert (=> bs!864885 (= (= lt!1705517 lt!1705479) (= lambda!174233 lambda!174224))))

(assert (=> bs!864882 (= (= lt!1705517 lt!1705266) (= lambda!174233 lambda!174180))))

(assert (=> bs!864877 (= (= lt!1705517 lt!1705028) (= lambda!174233 lambda!174222))))

(assert (=> bs!864886 (= (= lt!1705517 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174233 lambda!174231))))

(assert (=> bs!864887 (= (= lt!1705517 lt!1705224) (= lambda!174233 lambda!174168))))

(assert (=> b!4529733 true))

(declare-fun bs!864888 () Bool)

(declare-fun d!1397821 () Bool)

(assert (= bs!864888 (and d!1397821 b!4529387)))

(declare-fun lambda!174234 () Int)

(declare-fun lt!1705529 () ListMap!3625)

(assert (=> bs!864888 (= (= lt!1705529 lt!1705027) (= lambda!174234 lambda!174166))))

(declare-fun bs!864889 () Bool)

(assert (= bs!864889 (and d!1397821 b!4529733)))

(assert (=> bs!864889 (= (= lt!1705529 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174234 lambda!174232))))

(declare-fun bs!864890 () Bool)

(assert (= bs!864890 (and d!1397821 b!4529691)))

(assert (=> bs!864890 (= (= lt!1705529 lt!1705467) (= lambda!174234 lambda!174223))))

(declare-fun bs!864891 () Bool)

(assert (= bs!864891 (and d!1397821 d!1397779)))

(assert (=> bs!864891 (not (= lambda!174234 lambda!174220))))

(assert (=> bs!864888 (= (= lt!1705529 lt!1705212) (= lambda!174234 lambda!174167))))

(declare-fun bs!864892 () Bool)

(assert (= bs!864892 (and d!1397821 b!4529384)))

(assert (=> bs!864892 (= (= lt!1705529 lt!1705027) (= lambda!174234 lambda!174165))))

(declare-fun bs!864893 () Bool)

(assert (= bs!864893 (and d!1397821 d!1397819)))

(assert (=> bs!864893 (= (= lt!1705529 lt!1705001) (= lambda!174234 lambda!174230))))

(declare-fun bs!864894 () Bool)

(assert (= bs!864894 (and d!1397821 b!4529273)))

(assert (=> bs!864894 (not (= lambda!174234 lambda!174089))))

(declare-fun bs!864895 () Bool)

(assert (= bs!864895 (and d!1397821 b!4529434)))

(assert (=> bs!864895 (= (= lt!1705529 lt!1705001) (= lambda!174234 lambda!174179))))

(declare-fun bs!864896 () Bool)

(assert (= bs!864896 (and d!1397821 d!1397629)))

(assert (=> bs!864896 (= (= lt!1705529 lt!1705278) (= lambda!174234 lambda!174181))))

(declare-fun bs!864897 () Bool)

(assert (= bs!864897 (and d!1397821 b!4529688)))

(assert (=> bs!864897 (= (= lt!1705529 lt!1705028) (= lambda!174234 lambda!174221))))

(declare-fun bs!864898 () Bool)

(assert (= bs!864898 (and d!1397821 d!1397787)))

(assert (=> bs!864898 (= (= lt!1705529 lt!1705479) (= lambda!174234 lambda!174224))))

(declare-fun bs!864899 () Bool)

(assert (= bs!864899 (and d!1397821 b!4529431)))

(assert (=> bs!864899 (= (= lt!1705529 lt!1705001) (= lambda!174234 lambda!174178))))

(assert (=> bs!864889 (= (= lt!1705529 lt!1705517) (= lambda!174234 lambda!174233))))

(assert (=> bs!864895 (= (= lt!1705529 lt!1705266) (= lambda!174234 lambda!174180))))

(assert (=> bs!864890 (= (= lt!1705529 lt!1705028) (= lambda!174234 lambda!174222))))

(declare-fun bs!864900 () Bool)

(assert (= bs!864900 (and d!1397821 b!4529730)))

(assert (=> bs!864900 (= (= lt!1705529 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174234 lambda!174231))))

(declare-fun bs!864901 () Bool)

(assert (= bs!864901 (and d!1397821 d!1397569)))

(assert (=> bs!864901 (= (= lt!1705529 lt!1705224) (= lambda!174234 lambda!174168))))

(assert (=> d!1397821 true))

(declare-fun b!4529729 () Bool)

(declare-fun e!2822432 () Bool)

(assert (=> b!4529729 (= e!2822432 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) lambda!174233))))

(declare-fun c!773364 () Bool)

(declare-fun bm!315709 () Bool)

(declare-fun call!315715 () Bool)

(assert (=> bm!315709 (= call!315715 (forall!10305 (ite c!773364 (toList!4364 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (t!357782 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))) (ite c!773364 lambda!174231 lambda!174233)))))

(declare-fun e!2822433 () ListMap!3625)

(assert (=> b!4529730 (= e!2822433 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun lt!1705520 () Unit!96566)

(declare-fun call!315716 () Unit!96566)

(assert (=> b!4529730 (= lt!1705520 call!315716)))

(declare-fun call!315714 () Bool)

(assert (=> b!4529730 call!315714))

(declare-fun lt!1705531 () Unit!96566)

(assert (=> b!4529730 (= lt!1705531 lt!1705520)))

(assert (=> b!4529730 call!315715))

(declare-fun lt!1705513 () Unit!96566)

(declare-fun Unit!96654 () Unit!96566)

(assert (=> b!4529730 (= lt!1705513 Unit!96654)))

(declare-fun b!4529731 () Bool)

(declare-fun res!1886400 () Bool)

(declare-fun e!2822434 () Bool)

(assert (=> b!4529731 (=> (not res!1886400) (not e!2822434))))

(assert (=> b!4529731 (= res!1886400 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) lambda!174234))))

(declare-fun bm!315710 () Bool)

(assert (=> bm!315710 (= call!315716 (lemmaContainsAllItsOwnKeys!352 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))))))

(declare-fun b!4529732 () Bool)

(assert (=> b!4529732 (= e!2822434 (invariantList!1031 (toList!4364 lt!1705529)))))

(assert (=> d!1397821 e!2822434))

(declare-fun res!1886401 () Bool)

(assert (=> d!1397821 (=> (not res!1886401) (not e!2822434))))

(assert (=> d!1397821 (= res!1886401 (forall!10305 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) lambda!174234))))

(assert (=> d!1397821 (= lt!1705529 e!2822433)))

(assert (=> d!1397821 (= c!773364 ((_ is Nil!50696) (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))

(assert (=> d!1397821 (noDuplicateKeys!1178 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1397821 (= (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) lt!1705529)))

(declare-fun bm!315711 () Bool)

(assert (=> bm!315711 (= call!315714 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (ite c!773364 lambda!174231 lambda!174233)))))

(assert (=> b!4529733 (= e!2822433 lt!1705517)))

(declare-fun lt!1705525 () ListMap!3625)

(assert (=> b!4529733 (= lt!1705525 (+!1572 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))))))

(assert (=> b!4529733 (= lt!1705517 (addToMapMapFromBucket!705 (t!357782 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))) (+!1572 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))))

(declare-fun lt!1705524 () Unit!96566)

(assert (=> b!4529733 (= lt!1705524 call!315716)))

(assert (=> b!4529733 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) lambda!174232)))

(declare-fun lt!1705528 () Unit!96566)

(assert (=> b!4529733 (= lt!1705528 lt!1705524)))

(assert (=> b!4529733 (forall!10305 (toList!4364 lt!1705525) lambda!174233)))

(declare-fun lt!1705521 () Unit!96566)

(declare-fun Unit!96655 () Unit!96566)

(assert (=> b!4529733 (= lt!1705521 Unit!96655)))

(assert (=> b!4529733 call!315715))

(declare-fun lt!1705526 () Unit!96566)

(declare-fun Unit!96656 () Unit!96566)

(assert (=> b!4529733 (= lt!1705526 Unit!96656)))

(declare-fun lt!1705514 () Unit!96566)

(declare-fun Unit!96657 () Unit!96566)

(assert (=> b!4529733 (= lt!1705514 Unit!96657)))

(declare-fun lt!1705515 () Unit!96566)

(assert (=> b!4529733 (= lt!1705515 (forallContained!2559 (toList!4364 lt!1705525) lambda!174233 (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))))))

(assert (=> b!4529733 (contains!13455 lt!1705525 (_1!28867 (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))))))

(declare-fun lt!1705516 () Unit!96566)

(declare-fun Unit!96658 () Unit!96566)

(assert (=> b!4529733 (= lt!1705516 Unit!96658)))

(assert (=> b!4529733 (contains!13455 lt!1705517 (_1!28867 (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))))))

(declare-fun lt!1705519 () Unit!96566)

(declare-fun Unit!96659 () Unit!96566)

(assert (=> b!4529733 (= lt!1705519 Unit!96659)))

(assert (=> b!4529733 (forall!10305 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) lambda!174233)))

(declare-fun lt!1705522 () Unit!96566)

(declare-fun Unit!96660 () Unit!96566)

(assert (=> b!4529733 (= lt!1705522 Unit!96660)))

(assert (=> b!4529733 (forall!10305 (toList!4364 lt!1705525) lambda!174233)))

(declare-fun lt!1705523 () Unit!96566)

(declare-fun Unit!96661 () Unit!96566)

(assert (=> b!4529733 (= lt!1705523 Unit!96661)))

(declare-fun lt!1705518 () Unit!96566)

(declare-fun Unit!96662 () Unit!96566)

(assert (=> b!4529733 (= lt!1705518 Unit!96662)))

(declare-fun lt!1705512 () Unit!96566)

(assert (=> b!4529733 (= lt!1705512 (addForallContainsKeyThenBeforeAdding!352 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705517 (_1!28867 (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))) (_2!28867 (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))))

(assert (=> b!4529733 call!315714))

(declare-fun lt!1705530 () Unit!96566)

(assert (=> b!4529733 (= lt!1705530 lt!1705512)))

(assert (=> b!4529733 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) lambda!174233)))

(declare-fun lt!1705527 () Unit!96566)

(declare-fun Unit!96663 () Unit!96566)

(assert (=> b!4529733 (= lt!1705527 Unit!96663)))

(declare-fun res!1886399 () Bool)

(assert (=> b!4529733 (= res!1886399 (forall!10305 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) lambda!174233))))

(assert (=> b!4529733 (=> (not res!1886399) (not e!2822432))))

(assert (=> b!4529733 e!2822432))

(declare-fun lt!1705532 () Unit!96566)

(declare-fun Unit!96664 () Unit!96566)

(assert (=> b!4529733 (= lt!1705532 Unit!96664)))

(assert (= (and d!1397821 c!773364) b!4529730))

(assert (= (and d!1397821 (not c!773364)) b!4529733))

(assert (= (and b!4529733 res!1886399) b!4529729))

(assert (= (or b!4529730 b!4529733) bm!315711))

(assert (= (or b!4529730 b!4529733) bm!315709))

(assert (= (or b!4529730 b!4529733) bm!315710))

(assert (= (and d!1397821 res!1886401) b!4529731))

(assert (= (and b!4529731 res!1886400) b!4529732))

(declare-fun m!5286101 () Bool)

(assert (=> d!1397821 m!5286101))

(declare-fun m!5286103 () Bool)

(assert (=> d!1397821 m!5286103))

(declare-fun m!5286105 () Bool)

(assert (=> b!4529733 m!5286105))

(assert (=> b!4529733 m!5286105))

(declare-fun m!5286107 () Bool)

(assert (=> b!4529733 m!5286107))

(declare-fun m!5286109 () Bool)

(assert (=> b!4529733 m!5286109))

(assert (=> b!4529733 m!5285645))

(declare-fun m!5286111 () Bool)

(assert (=> b!4529733 m!5286111))

(declare-fun m!5286113 () Bool)

(assert (=> b!4529733 m!5286113))

(declare-fun m!5286115 () Bool)

(assert (=> b!4529733 m!5286115))

(declare-fun m!5286117 () Bool)

(assert (=> b!4529733 m!5286117))

(declare-fun m!5286119 () Bool)

(assert (=> b!4529733 m!5286119))

(declare-fun m!5286121 () Bool)

(assert (=> b!4529733 m!5286121))

(declare-fun m!5286123 () Bool)

(assert (=> b!4529733 m!5286123))

(assert (=> b!4529733 m!5285645))

(assert (=> b!4529733 m!5286117))

(assert (=> b!4529733 m!5286107))

(assert (=> b!4529729 m!5286109))

(declare-fun m!5286125 () Bool)

(assert (=> bm!315709 m!5286125))

(declare-fun m!5286127 () Bool)

(assert (=> b!4529731 m!5286127))

(assert (=> bm!315710 m!5285645))

(declare-fun m!5286129 () Bool)

(assert (=> bm!315710 m!5286129))

(declare-fun m!5286131 () Bool)

(assert (=> b!4529732 m!5286131))

(declare-fun m!5286133 () Bool)

(assert (=> bm!315711 m!5286133))

(assert (=> b!4529491 d!1397821))

(declare-fun bs!864902 () Bool)

(declare-fun d!1397823 () Bool)

(assert (= bs!864902 (and d!1397823 d!1397661)))

(declare-fun lambda!174235 () Int)

(assert (=> bs!864902 (= lambda!174235 lambda!174187)))

(declare-fun bs!864903 () Bool)

(assert (= bs!864903 (and d!1397823 d!1397797)))

(assert (=> bs!864903 (= lambda!174235 lambda!174227)))

(declare-fun bs!864904 () Bool)

(assert (= bs!864904 (and d!1397823 d!1397711)))

(assert (=> bs!864904 (= lambda!174235 lambda!174203)))

(declare-fun bs!864905 () Bool)

(assert (= bs!864905 (and d!1397823 d!1397727)))

(assert (=> bs!864905 (= lambda!174235 lambda!174209)))

(declare-fun bs!864906 () Bool)

(assert (= bs!864906 (and d!1397823 d!1397665)))

(assert (=> bs!864906 (= lambda!174235 lambda!174190)))

(declare-fun bs!864907 () Bool)

(assert (= bs!864907 (and d!1397823 d!1397751)))

(assert (=> bs!864907 (not (= lambda!174235 lambda!174212))))

(declare-fun bs!864908 () Bool)

(assert (= bs!864908 (and d!1397823 d!1397607)))

(assert (=> bs!864908 (= lambda!174235 lambda!174177)))

(declare-fun bs!864909 () Bool)

(assert (= bs!864909 (and d!1397823 d!1397767)))

(assert (=> bs!864909 (= lambda!174235 lambda!174216)))

(declare-fun bs!864910 () Bool)

(assert (= bs!864910 (and d!1397823 d!1397705)))

(assert (=> bs!864910 (= lambda!174235 lambda!174197)))

(declare-fun bs!864911 () Bool)

(assert (= bs!864911 (and d!1397823 d!1397669)))

(assert (=> bs!864911 (= lambda!174235 lambda!174191)))

(declare-fun bs!864912 () Bool)

(assert (= bs!864912 (and d!1397823 b!4529273)))

(assert (=> bs!864912 (not (= lambda!174235 lambda!174088))))

(declare-fun bs!864913 () Bool)

(assert (= bs!864913 (and d!1397823 d!1397769)))

(assert (=> bs!864913 (= lambda!174235 lambda!174217)))

(declare-fun bs!864914 () Bool)

(assert (= bs!864914 (and d!1397823 d!1397765)))

(assert (=> bs!864914 (= lambda!174235 lambda!174213)))

(declare-fun bs!864915 () Bool)

(assert (= bs!864915 (and d!1397823 start!449036)))

(assert (=> bs!864915 (= lambda!174235 lambda!174087)))

(declare-fun lt!1705533 () ListMap!3625)

(assert (=> d!1397823 (invariantList!1031 (toList!4364 lt!1705533))))

(declare-fun e!2822435 () ListMap!3625)

(assert (=> d!1397823 (= lt!1705533 e!2822435)))

(declare-fun c!773365 () Bool)

(assert (=> d!1397823 (= c!773365 ((_ is Cons!50697) (t!357783 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1397823 (forall!10303 (t!357783 (t!357783 (toList!4363 lm!1477))) lambda!174235)))

(assert (=> d!1397823 (= (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705533)))

(declare-fun b!4529734 () Bool)

(assert (=> b!4529734 (= e!2822435 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (t!357783 (toList!4363 lm!1477))))) (extractMap!1234 (t!357783 (t!357783 (t!357783 (toList!4363 lm!1477)))))))))

(declare-fun b!4529735 () Bool)

(assert (=> b!4529735 (= e!2822435 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397823 c!773365) b!4529734))

(assert (= (and d!1397823 (not c!773365)) b!4529735))

(declare-fun m!5286135 () Bool)

(assert (=> d!1397823 m!5286135))

(declare-fun m!5286137 () Bool)

(assert (=> d!1397823 m!5286137))

(declare-fun m!5286139 () Bool)

(assert (=> b!4529734 m!5286139))

(assert (=> b!4529734 m!5286139))

(declare-fun m!5286141 () Bool)

(assert (=> b!4529734 m!5286141))

(assert (=> b!4529491 d!1397823))

(declare-fun d!1397825 () Bool)

(declare-fun lt!1705536 () Bool)

(assert (=> d!1397825 (= lt!1705536 (select (content!8399 e!2822262) key!3287))))

(declare-fun e!2822441 () Bool)

(assert (=> d!1397825 (= lt!1705536 e!2822441)))

(declare-fun res!1886407 () Bool)

(assert (=> d!1397825 (=> (not res!1886407) (not e!2822441))))

(assert (=> d!1397825 (= res!1886407 ((_ is Cons!50699) e!2822262))))

(assert (=> d!1397825 (= (contains!13457 e!2822262 key!3287) lt!1705536)))

(declare-fun b!4529740 () Bool)

(declare-fun e!2822440 () Bool)

(assert (=> b!4529740 (= e!2822441 e!2822440)))

(declare-fun res!1886406 () Bool)

(assert (=> b!4529740 (=> res!1886406 e!2822440)))

(assert (=> b!4529740 (= res!1886406 (= (h!56568 e!2822262) key!3287))))

(declare-fun b!4529741 () Bool)

(assert (=> b!4529741 (= e!2822440 (contains!13457 (t!357785 e!2822262) key!3287))))

(assert (= (and d!1397825 res!1886407) b!4529740))

(assert (= (and b!4529740 (not res!1886406)) b!4529741))

(declare-fun m!5286143 () Bool)

(assert (=> d!1397825 m!5286143))

(declare-fun m!5286145 () Bool)

(assert (=> d!1397825 m!5286145))

(declare-fun m!5286147 () Bool)

(assert (=> b!4529741 m!5286147))

(assert (=> bm!315703 d!1397825))

(declare-fun d!1397827 () Bool)

(declare-fun res!1886412 () Bool)

(declare-fun e!2822446 () Bool)

(assert (=> d!1397827 (=> res!1886412 e!2822446)))

(assert (=> d!1397827 (= res!1886412 ((_ is Nil!50696) (toList!4364 lt!1705001)))))

(assert (=> d!1397827 (= (forall!10305 (toList!4364 lt!1705001) lambda!174180) e!2822446)))

(declare-fun b!4529746 () Bool)

(declare-fun e!2822447 () Bool)

(assert (=> b!4529746 (= e!2822446 e!2822447)))

(declare-fun res!1886413 () Bool)

(assert (=> b!4529746 (=> (not res!1886413) (not e!2822447))))

(assert (=> b!4529746 (= res!1886413 (dynLambda!21188 lambda!174180 (h!56563 (toList!4364 lt!1705001))))))

(declare-fun b!4529747 () Bool)

(assert (=> b!4529747 (= e!2822447 (forall!10305 (t!357782 (toList!4364 lt!1705001)) lambda!174180))))

(assert (= (and d!1397827 (not res!1886412)) b!4529746))

(assert (= (and b!4529746 res!1886413) b!4529747))

(declare-fun b_lambda!156361 () Bool)

(assert (=> (not b_lambda!156361) (not b!4529746)))

(declare-fun m!5286149 () Bool)

(assert (=> b!4529746 m!5286149))

(declare-fun m!5286151 () Bool)

(assert (=> b!4529747 m!5286151))

(assert (=> b!4529430 d!1397827))

(assert (=> d!1397711 d!1397709))

(declare-fun d!1397829 () Bool)

(assert (=> d!1397829 (containsKeyBiggerList!158 (toList!4363 lt!1705004) key!3287)))

(assert (=> d!1397829 true))

(declare-fun _$33!691 () Unit!96566)

(assert (=> d!1397829 (= (choose!29707 lt!1705004 key!3287 hashF!1107) _$33!691)))

(declare-fun bs!864916 () Bool)

(assert (= bs!864916 d!1397829))

(assert (=> bs!864916 m!5285133))

(assert (=> d!1397711 d!1397829))

(declare-fun d!1397831 () Bool)

(declare-fun res!1886414 () Bool)

(declare-fun e!2822448 () Bool)

(assert (=> d!1397831 (=> res!1886414 e!2822448)))

(assert (=> d!1397831 (= res!1886414 ((_ is Nil!50697) (toList!4363 lt!1705004)))))

(assert (=> d!1397831 (= (forall!10303 (toList!4363 lt!1705004) lambda!174203) e!2822448)))

(declare-fun b!4529748 () Bool)

(declare-fun e!2822449 () Bool)

(assert (=> b!4529748 (= e!2822448 e!2822449)))

(declare-fun res!1886415 () Bool)

(assert (=> b!4529748 (=> (not res!1886415) (not e!2822449))))

(assert (=> b!4529748 (= res!1886415 (dynLambda!21186 lambda!174203 (h!56564 (toList!4363 lt!1705004))))))

(declare-fun b!4529749 () Bool)

(assert (=> b!4529749 (= e!2822449 (forall!10303 (t!357783 (toList!4363 lt!1705004)) lambda!174203))))

(assert (= (and d!1397831 (not res!1886414)) b!4529748))

(assert (= (and b!4529748 res!1886415) b!4529749))

(declare-fun b_lambda!156363 () Bool)

(assert (=> (not b_lambda!156363) (not b!4529748)))

(declare-fun m!5286153 () Bool)

(assert (=> b!4529748 m!5286153))

(declare-fun m!5286155 () Bool)

(assert (=> b!4529749 m!5286155))

(assert (=> d!1397711 d!1397831))

(declare-fun d!1397833 () Bool)

(assert (=> d!1397833 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705010) key!3287))))

(declare-fun lt!1705539 () Unit!96566)

(declare-fun choose!29717 (List!50820 K!12085) Unit!96566)

(assert (=> d!1397833 (= lt!1705539 (choose!29717 (toList!4364 lt!1705010) key!3287))))

(assert (=> d!1397833 (invariantList!1031 (toList!4364 lt!1705010))))

(assert (=> d!1397833 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705010) key!3287) lt!1705539)))

(declare-fun bs!864917 () Bool)

(assert (= bs!864917 d!1397833))

(assert (=> bs!864917 m!5285797))

(assert (=> bs!864917 m!5285797))

(assert (=> bs!864917 m!5285799))

(declare-fun m!5286157 () Bool)

(assert (=> bs!864917 m!5286157))

(declare-fun m!5286159 () Bool)

(assert (=> bs!864917 m!5286159))

(assert (=> b!4529572 d!1397833))

(declare-fun d!1397835 () Bool)

(declare-fun isEmpty!28712 (Option!11156) Bool)

(assert (=> d!1397835 (= (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705010) key!3287)) (not (isEmpty!28712 (getValueByKey!1120 (toList!4364 lt!1705010) key!3287))))))

(declare-fun bs!864918 () Bool)

(assert (= bs!864918 d!1397835))

(assert (=> bs!864918 m!5285797))

(declare-fun m!5286161 () Bool)

(assert (=> bs!864918 m!5286161))

(assert (=> b!4529572 d!1397835))

(declare-fun b!4529758 () Bool)

(declare-fun e!2822454 () Option!11156)

(assert (=> b!4529758 (= e!2822454 (Some!11155 (_2!28867 (h!56563 (toList!4364 lt!1705010)))))))

(declare-fun b!4529760 () Bool)

(declare-fun e!2822455 () Option!11156)

(assert (=> b!4529760 (= e!2822455 (getValueByKey!1120 (t!357782 (toList!4364 lt!1705010)) key!3287))))

(declare-fun d!1397837 () Bool)

(declare-fun c!773370 () Bool)

(assert (=> d!1397837 (= c!773370 (and ((_ is Cons!50696) (toList!4364 lt!1705010)) (= (_1!28867 (h!56563 (toList!4364 lt!1705010))) key!3287)))))

(assert (=> d!1397837 (= (getValueByKey!1120 (toList!4364 lt!1705010) key!3287) e!2822454)))

(declare-fun b!4529761 () Bool)

(assert (=> b!4529761 (= e!2822455 None!11155)))

(declare-fun b!4529759 () Bool)

(assert (=> b!4529759 (= e!2822454 e!2822455)))

(declare-fun c!773371 () Bool)

(assert (=> b!4529759 (= c!773371 (and ((_ is Cons!50696) (toList!4364 lt!1705010)) (not (= (_1!28867 (h!56563 (toList!4364 lt!1705010))) key!3287))))))

(assert (= (and d!1397837 c!773370) b!4529758))

(assert (= (and d!1397837 (not c!773370)) b!4529759))

(assert (= (and b!4529759 c!773371) b!4529760))

(assert (= (and b!4529759 (not c!773371)) b!4529761))

(declare-fun m!5286163 () Bool)

(assert (=> b!4529760 m!5286163))

(assert (=> b!4529572 d!1397837))

(declare-fun d!1397839 () Bool)

(assert (=> d!1397839 (contains!13457 (getKeysList!479 (toList!4364 lt!1705010)) key!3287)))

(declare-fun lt!1705542 () Unit!96566)

(declare-fun choose!29718 (List!50820 K!12085) Unit!96566)

(assert (=> d!1397839 (= lt!1705542 (choose!29718 (toList!4364 lt!1705010) key!3287))))

(assert (=> d!1397839 (invariantList!1031 (toList!4364 lt!1705010))))

(assert (=> d!1397839 (= (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705010) key!3287) lt!1705542)))

(declare-fun bs!864919 () Bool)

(assert (= bs!864919 d!1397839))

(assert (=> bs!864919 m!5285805))

(assert (=> bs!864919 m!5285805))

(declare-fun m!5286165 () Bool)

(assert (=> bs!864919 m!5286165))

(declare-fun m!5286167 () Bool)

(assert (=> bs!864919 m!5286167))

(assert (=> bs!864919 m!5286159))

(assert (=> b!4529572 d!1397839))

(declare-fun b!4529762 () Bool)

(declare-fun e!2822459 () Option!11153)

(declare-fun e!2822456 () Option!11153)

(assert (=> b!4529762 (= e!2822459 e!2822456)))

(declare-fun c!773372 () Bool)

(assert (=> b!4529762 (= c!773372 ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015))))))

(declare-fun b!4529763 () Bool)

(assert (=> b!4529763 (= e!2822456 None!11152)))

(declare-fun b!4529764 () Bool)

(declare-fun e!2822460 () Bool)

(declare-fun e!2822458 () Bool)

(assert (=> b!4529764 (= e!2822460 e!2822458)))

(declare-fun res!1886417 () Bool)

(assert (=> b!4529764 (=> (not res!1886417) (not e!2822458))))

(declare-fun lt!1705543 () Option!11153)

(assert (=> b!4529764 (= res!1886417 (isDefined!8440 lt!1705543))))

(declare-fun b!4529765 () Bool)

(assert (=> b!4529765 (= e!2822459 (Some!11152 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun b!4529766 () Bool)

(declare-fun res!1886416 () Bool)

(assert (=> b!4529766 (=> (not res!1886416) (not e!2822458))))

(assert (=> b!4529766 (= res!1886416 (= (_1!28867 (get!16633 lt!1705543)) key!3287))))

(declare-fun d!1397841 () Bool)

(assert (=> d!1397841 e!2822460))

(declare-fun res!1886419 () Bool)

(assert (=> d!1397841 (=> res!1886419 e!2822460)))

(declare-fun e!2822457 () Bool)

(assert (=> d!1397841 (= res!1886419 e!2822457)))

(declare-fun res!1886418 () Bool)

(assert (=> d!1397841 (=> (not res!1886418) (not e!2822457))))

(assert (=> d!1397841 (= res!1886418 (isEmpty!28710 lt!1705543))))

(assert (=> d!1397841 (= lt!1705543 e!2822459)))

(declare-fun c!773373 () Bool)

(assert (=> d!1397841 (= c!773373 (and ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015))) (= (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))) key!3287)))))

(assert (=> d!1397841 (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705015)))))

(assert (=> d!1397841 (= (getPair!194 (t!357782 (_2!28868 lt!1705015)) key!3287) lt!1705543)))

(declare-fun b!4529767 () Bool)

(assert (=> b!4529767 (= e!2822456 (getPair!194 (t!357782 (t!357782 (_2!28868 lt!1705015))) key!3287))))

(declare-fun b!4529768 () Bool)

(assert (=> b!4529768 (= e!2822457 (not (containsKey!1826 (t!357782 (_2!28868 lt!1705015)) key!3287)))))

(declare-fun b!4529769 () Bool)

(assert (=> b!4529769 (= e!2822458 (contains!13458 (t!357782 (_2!28868 lt!1705015)) (get!16633 lt!1705543)))))

(assert (= (and d!1397841 c!773373) b!4529765))

(assert (= (and d!1397841 (not c!773373)) b!4529762))

(assert (= (and b!4529762 c!773372) b!4529767))

(assert (= (and b!4529762 (not c!773372)) b!4529763))

(assert (= (and d!1397841 res!1886418) b!4529768))

(assert (= (and d!1397841 (not res!1886419)) b!4529764))

(assert (= (and b!4529764 res!1886417) b!4529766))

(assert (= (and b!4529766 res!1886416) b!4529769))

(declare-fun m!5286169 () Bool)

(assert (=> d!1397841 m!5286169))

(assert (=> d!1397841 m!5285901))

(declare-fun m!5286171 () Bool)

(assert (=> b!4529766 m!5286171))

(assert (=> b!4529768 m!5285889))

(assert (=> b!4529769 m!5286171))

(assert (=> b!4529769 m!5286171))

(declare-fun m!5286173 () Bool)

(assert (=> b!4529769 m!5286173))

(declare-fun m!5286175 () Bool)

(assert (=> b!4529764 m!5286175))

(declare-fun m!5286177 () Bool)

(assert (=> b!4529767 m!5286177))

(assert (=> b!4529532 d!1397841))

(declare-fun d!1397843 () Bool)

(declare-fun noDuplicatedKeys!270 (List!50820) Bool)

(assert (=> d!1397843 (= (invariantList!1031 (toList!4364 lt!1705362)) (noDuplicatedKeys!270 (toList!4364 lt!1705362)))))

(declare-fun bs!864920 () Bool)

(assert (= bs!864920 d!1397843))

(declare-fun m!5286179 () Bool)

(assert (=> bs!864920 m!5286179))

(assert (=> d!1397661 d!1397843))

(declare-fun d!1397845 () Bool)

(declare-fun res!1886420 () Bool)

(declare-fun e!2822461 () Bool)

(assert (=> d!1397845 (=> res!1886420 e!2822461)))

(assert (=> d!1397845 (= res!1886420 ((_ is Nil!50697) (t!357783 (toList!4363 lm!1477))))))

(assert (=> d!1397845 (= (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174187) e!2822461)))

(declare-fun b!4529770 () Bool)

(declare-fun e!2822462 () Bool)

(assert (=> b!4529770 (= e!2822461 e!2822462)))

(declare-fun res!1886421 () Bool)

(assert (=> b!4529770 (=> (not res!1886421) (not e!2822462))))

(assert (=> b!4529770 (= res!1886421 (dynLambda!21186 lambda!174187 (h!56564 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun b!4529771 () Bool)

(assert (=> b!4529771 (= e!2822462 (forall!10303 (t!357783 (t!357783 (toList!4363 lm!1477))) lambda!174187))))

(assert (= (and d!1397845 (not res!1886420)) b!4529770))

(assert (= (and b!4529770 res!1886421) b!4529771))

(declare-fun b_lambda!156365 () Bool)

(assert (=> (not b_lambda!156365) (not b!4529770)))

(declare-fun m!5286181 () Bool)

(assert (=> b!4529770 m!5286181))

(declare-fun m!5286183 () Bool)

(assert (=> b!4529771 m!5286183))

(assert (=> d!1397661 d!1397845))

(declare-fun b!4529798 () Bool)

(assert (=> b!4529798 true))

(declare-fun bs!864921 () Bool)

(declare-fun b!4529790 () Bool)

(assert (= bs!864921 (and b!4529790 b!4529798)))

(declare-fun lambda!174245 () Int)

(declare-fun lambda!174244 () Int)

(assert (=> bs!864921 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001))) (t!357782 (toList!4364 lt!1705001))) (= lambda!174245 lambda!174244))))

(assert (=> b!4529790 true))

(declare-fun bs!864922 () Bool)

(declare-fun b!4529796 () Bool)

(assert (= bs!864922 (and b!4529796 b!4529798)))

(declare-fun lambda!174246 () Int)

(assert (=> bs!864922 (= (= (toList!4364 lt!1705001) (t!357782 (toList!4364 lt!1705001))) (= lambda!174246 lambda!174244))))

(declare-fun bs!864923 () Bool)

(assert (= bs!864923 (and b!4529796 b!4529790)))

(assert (=> bs!864923 (= (= (toList!4364 lt!1705001) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174246 lambda!174245))))

(assert (=> b!4529796 true))

(declare-fun e!2822473 () List!50823)

(assert (=> b!4529790 (= e!2822473 (Cons!50699 (_1!28867 (h!56563 (toList!4364 lt!1705001))) (getKeysList!479 (t!357782 (toList!4364 lt!1705001)))))))

(declare-fun c!773382 () Bool)

(assert (=> b!4529790 (= c!773382 (containsKey!1829 (t!357782 (toList!4364 lt!1705001)) (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun lt!1705564 () Unit!96566)

(declare-fun e!2822471 () Unit!96566)

(assert (=> b!4529790 (= lt!1705564 e!2822471)))

(declare-fun c!773380 () Bool)

(assert (=> b!4529790 (= c!773380 (contains!13457 (getKeysList!479 (t!357782 (toList!4364 lt!1705001))) (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun lt!1705562 () Unit!96566)

(declare-fun e!2822474 () Unit!96566)

(assert (=> b!4529790 (= lt!1705562 e!2822474)))

(declare-fun lt!1705560 () List!50823)

(assert (=> b!4529790 (= lt!1705560 (getKeysList!479 (t!357782 (toList!4364 lt!1705001))))))

(declare-fun lt!1705559 () Unit!96566)

(declare-fun lemmaForallContainsAddHeadPreserves!176 (List!50820 List!50823 tuple2!51146) Unit!96566)

(assert (=> b!4529790 (= lt!1705559 (lemmaForallContainsAddHeadPreserves!176 (t!357782 (toList!4364 lt!1705001)) lt!1705560 (h!56563 (toList!4364 lt!1705001))))))

(declare-fun forall!10306 (List!50823 Int) Bool)

(assert (=> b!4529790 (forall!10306 lt!1705560 lambda!174245)))

(declare-fun lt!1705558 () Unit!96566)

(assert (=> b!4529790 (= lt!1705558 lt!1705559)))

(declare-fun b!4529791 () Bool)

(assert (=> b!4529791 (= e!2822473 Nil!50699)))

(declare-fun b!4529792 () Bool)

(assert (=> b!4529792 false))

(declare-fun Unit!96666 () Unit!96566)

(assert (=> b!4529792 (= e!2822471 Unit!96666)))

(declare-fun b!4529793 () Bool)

(declare-fun res!1886429 () Bool)

(declare-fun e!2822472 () Bool)

(assert (=> b!4529793 (=> (not res!1886429) (not e!2822472))))

(declare-fun lt!1705561 () List!50823)

(declare-fun length!366 (List!50823) Int)

(declare-fun length!367 (List!50820) Int)

(assert (=> b!4529793 (= res!1886429 (= (length!366 lt!1705561) (length!367 (toList!4364 lt!1705001))))))

(declare-fun b!4529794 () Bool)

(declare-fun Unit!96667 () Unit!96566)

(assert (=> b!4529794 (= e!2822471 Unit!96667)))

(declare-fun d!1397847 () Bool)

(assert (=> d!1397847 e!2822472))

(declare-fun res!1886428 () Bool)

(assert (=> d!1397847 (=> (not res!1886428) (not e!2822472))))

(declare-fun noDuplicate!755 (List!50823) Bool)

(assert (=> d!1397847 (= res!1886428 (noDuplicate!755 lt!1705561))))

(assert (=> d!1397847 (= lt!1705561 e!2822473)))

(declare-fun c!773381 () Bool)

(assert (=> d!1397847 (= c!773381 ((_ is Cons!50696) (toList!4364 lt!1705001)))))

(assert (=> d!1397847 (invariantList!1031 (toList!4364 lt!1705001))))

(assert (=> d!1397847 (= (getKeysList!479 (toList!4364 lt!1705001)) lt!1705561)))

(declare-fun lambda!174247 () Int)

(declare-fun b!4529795 () Bool)

(declare-fun map!11155 (List!50820 Int) List!50823)

(assert (=> b!4529795 (= e!2822472 (= (content!8399 lt!1705561) (content!8399 (map!11155 (toList!4364 lt!1705001) lambda!174247))))))

(declare-fun res!1886430 () Bool)

(assert (=> b!4529796 (=> (not res!1886430) (not e!2822472))))

(assert (=> b!4529796 (= res!1886430 (forall!10306 lt!1705561 lambda!174246))))

(declare-fun b!4529797 () Bool)

(declare-fun Unit!96668 () Unit!96566)

(assert (=> b!4529797 (= e!2822474 Unit!96668)))

(assert (=> b!4529798 false))

(declare-fun lt!1705563 () Unit!96566)

(declare-fun forallContained!2560 (List!50823 Int K!12085) Unit!96566)

(assert (=> b!4529798 (= lt!1705563 (forallContained!2560 (getKeysList!479 (t!357782 (toList!4364 lt!1705001))) lambda!174244 (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun Unit!96669 () Unit!96566)

(assert (=> b!4529798 (= e!2822474 Unit!96669)))

(assert (= (and d!1397847 c!773381) b!4529790))

(assert (= (and d!1397847 (not c!773381)) b!4529791))

(assert (= (and b!4529790 c!773382) b!4529792))

(assert (= (and b!4529790 (not c!773382)) b!4529794))

(assert (= (and b!4529790 c!773380) b!4529798))

(assert (= (and b!4529790 (not c!773380)) b!4529797))

(assert (= (and d!1397847 res!1886428) b!4529793))

(assert (= (and b!4529793 res!1886429) b!4529796))

(assert (= (and b!4529796 res!1886430) b!4529795))

(declare-fun m!5286185 () Bool)

(assert (=> b!4529790 m!5286185))

(declare-fun m!5286187 () Bool)

(assert (=> b!4529790 m!5286187))

(declare-fun m!5286189 () Bool)

(assert (=> b!4529790 m!5286189))

(assert (=> b!4529790 m!5286187))

(declare-fun m!5286191 () Bool)

(assert (=> b!4529790 m!5286191))

(declare-fun m!5286193 () Bool)

(assert (=> b!4529790 m!5286193))

(declare-fun m!5286195 () Bool)

(assert (=> b!4529793 m!5286195))

(declare-fun m!5286197 () Bool)

(assert (=> b!4529793 m!5286197))

(declare-fun m!5286199 () Bool)

(assert (=> d!1397847 m!5286199))

(declare-fun m!5286201 () Bool)

(assert (=> d!1397847 m!5286201))

(assert (=> b!4529798 m!5286187))

(assert (=> b!4529798 m!5286187))

(declare-fun m!5286203 () Bool)

(assert (=> b!4529798 m!5286203))

(declare-fun m!5286205 () Bool)

(assert (=> b!4529795 m!5286205))

(declare-fun m!5286207 () Bool)

(assert (=> b!4529795 m!5286207))

(assert (=> b!4529795 m!5286207))

(declare-fun m!5286209 () Bool)

(assert (=> b!4529795 m!5286209))

(declare-fun m!5286211 () Bool)

(assert (=> b!4529796 m!5286211))

(assert (=> b!4529496 d!1397847))

(declare-fun d!1397849 () Bool)

(declare-fun lt!1705565 () Bool)

(assert (=> d!1397849 (= lt!1705565 (select (content!8401 (toList!4363 lt!1705486)) lt!1705002))))

(declare-fun e!2822475 () Bool)

(assert (=> d!1397849 (= lt!1705565 e!2822475)))

(declare-fun res!1886432 () Bool)

(assert (=> d!1397849 (=> (not res!1886432) (not e!2822475))))

(assert (=> d!1397849 (= res!1886432 ((_ is Cons!50697) (toList!4363 lt!1705486)))))

(assert (=> d!1397849 (= (contains!13454 (toList!4363 lt!1705486) lt!1705002) lt!1705565)))

(declare-fun b!4529801 () Bool)

(declare-fun e!2822476 () Bool)

(assert (=> b!4529801 (= e!2822475 e!2822476)))

(declare-fun res!1886431 () Bool)

(assert (=> b!4529801 (=> res!1886431 e!2822476)))

(assert (=> b!4529801 (= res!1886431 (= (h!56564 (toList!4363 lt!1705486)) lt!1705002))))

(declare-fun b!4529802 () Bool)

(assert (=> b!4529802 (= e!2822476 (contains!13454 (t!357783 (toList!4363 lt!1705486)) lt!1705002))))

(assert (= (and d!1397849 res!1886432) b!4529801))

(assert (= (and b!4529801 (not res!1886431)) b!4529802))

(declare-fun m!5286213 () Bool)

(assert (=> d!1397849 m!5286213))

(declare-fun m!5286215 () Bool)

(assert (=> d!1397849 m!5286215))

(declare-fun m!5286217 () Bool)

(assert (=> b!4529802 m!5286217))

(assert (=> b!4529693 d!1397849))

(declare-fun d!1397851 () Bool)

(declare-fun lt!1705566 () Bool)

(assert (=> d!1397851 (= lt!1705566 (select (content!8399 (keys!17626 lt!1705010)) key!3287))))

(declare-fun e!2822478 () Bool)

(assert (=> d!1397851 (= lt!1705566 e!2822478)))

(declare-fun res!1886434 () Bool)

(assert (=> d!1397851 (=> (not res!1886434) (not e!2822478))))

(assert (=> d!1397851 (= res!1886434 ((_ is Cons!50699) (keys!17626 lt!1705010)))))

(assert (=> d!1397851 (= (contains!13457 (keys!17626 lt!1705010) key!3287) lt!1705566)))

(declare-fun b!4529803 () Bool)

(declare-fun e!2822477 () Bool)

(assert (=> b!4529803 (= e!2822478 e!2822477)))

(declare-fun res!1886433 () Bool)

(assert (=> b!4529803 (=> res!1886433 e!2822477)))

(assert (=> b!4529803 (= res!1886433 (= (h!56568 (keys!17626 lt!1705010)) key!3287))))

(declare-fun b!4529804 () Bool)

(assert (=> b!4529804 (= e!2822477 (contains!13457 (t!357785 (keys!17626 lt!1705010)) key!3287))))

(assert (= (and d!1397851 res!1886434) b!4529803))

(assert (= (and b!4529803 (not res!1886433)) b!4529804))

(assert (=> d!1397851 m!5285789))

(declare-fun m!5286219 () Bool)

(assert (=> d!1397851 m!5286219))

(declare-fun m!5286221 () Bool)

(assert (=> d!1397851 m!5286221))

(declare-fun m!5286223 () Bool)

(assert (=> b!4529804 m!5286223))

(assert (=> b!4529569 d!1397851))

(declare-fun bs!864924 () Bool)

(declare-fun b!4529816 () Bool)

(assert (= bs!864924 (and b!4529816 b!4529798)))

(declare-fun lambda!174252 () Int)

(assert (=> bs!864924 (= (= (toList!4364 lt!1705010) (t!357782 (toList!4364 lt!1705001))) (= lambda!174252 lambda!174244))))

(declare-fun bs!864925 () Bool)

(assert (= bs!864925 (and b!4529816 b!4529790)))

(assert (=> bs!864925 (= (= (toList!4364 lt!1705010) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174252 lambda!174245))))

(declare-fun bs!864926 () Bool)

(assert (= bs!864926 (and b!4529816 b!4529796)))

(assert (=> bs!864926 (= (= (toList!4364 lt!1705010) (toList!4364 lt!1705001)) (= lambda!174252 lambda!174246))))

(assert (=> b!4529816 true))

(declare-fun bs!864927 () Bool)

(declare-fun b!4529817 () Bool)

(assert (= bs!864927 (and b!4529817 b!4529795)))

(declare-fun lambda!174253 () Int)

(assert (=> bs!864927 (= lambda!174253 lambda!174247)))

(declare-fun d!1397853 () Bool)

(declare-fun e!2822485 () Bool)

(assert (=> d!1397853 e!2822485))

(declare-fun res!1886446 () Bool)

(assert (=> d!1397853 (=> (not res!1886446) (not e!2822485))))

(declare-fun lt!1705569 () List!50823)

(assert (=> d!1397853 (= res!1886446 (noDuplicate!755 lt!1705569))))

(assert (=> d!1397853 (= lt!1705569 (getKeysList!479 (toList!4364 lt!1705010)))))

(assert (=> d!1397853 (= (keys!17626 lt!1705010) lt!1705569)))

(declare-fun b!4529815 () Bool)

(declare-fun res!1886447 () Bool)

(assert (=> b!4529815 (=> (not res!1886447) (not e!2822485))))

(assert (=> b!4529815 (= res!1886447 (= (length!366 lt!1705569) (length!367 (toList!4364 lt!1705010))))))

(declare-fun res!1886445 () Bool)

(assert (=> b!4529816 (=> (not res!1886445) (not e!2822485))))

(assert (=> b!4529816 (= res!1886445 (forall!10306 lt!1705569 lambda!174252))))

(assert (=> b!4529817 (= e!2822485 (= (content!8399 lt!1705569) (content!8399 (map!11155 (toList!4364 lt!1705010) lambda!174253))))))

(assert (= (and d!1397853 res!1886446) b!4529815))

(assert (= (and b!4529815 res!1886447) b!4529816))

(assert (= (and b!4529816 res!1886445) b!4529817))

(declare-fun m!5286225 () Bool)

(assert (=> d!1397853 m!5286225))

(assert (=> d!1397853 m!5285805))

(declare-fun m!5286227 () Bool)

(assert (=> b!4529815 m!5286227))

(declare-fun m!5286229 () Bool)

(assert (=> b!4529815 m!5286229))

(declare-fun m!5286231 () Bool)

(assert (=> b!4529816 m!5286231))

(declare-fun m!5286233 () Bool)

(assert (=> b!4529817 m!5286233))

(declare-fun m!5286235 () Bool)

(assert (=> b!4529817 m!5286235))

(assert (=> b!4529817 m!5286235))

(declare-fun m!5286237 () Bool)

(assert (=> b!4529817 m!5286237))

(assert (=> b!4529569 d!1397853))

(declare-fun d!1397857 () Bool)

(declare-fun c!773386 () Bool)

(assert (=> d!1397857 (= c!773386 ((_ is Nil!50696) (toList!4364 lt!1705010)))))

(declare-fun e!2822492 () (InoxSet tuple2!51146))

(assert (=> d!1397857 (= (content!8398 (toList!4364 lt!1705010)) e!2822492)))

(declare-fun b!4529829 () Bool)

(assert (=> b!4529829 (= e!2822492 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4529830 () Bool)

(assert (=> b!4529830 (= e!2822492 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705010)) true) (content!8398 (t!357782 (toList!4364 lt!1705010)))))))

(assert (= (and d!1397857 c!773386) b!4529829))

(assert (= (and d!1397857 (not c!773386)) b!4529830))

(declare-fun m!5286247 () Bool)

(assert (=> b!4529830 m!5286247))

(declare-fun m!5286249 () Bool)

(assert (=> b!4529830 m!5286249))

(assert (=> d!1397721 d!1397857))

(declare-fun d!1397863 () Bool)

(declare-fun c!773387 () Bool)

(assert (=> d!1397863 (= c!773387 ((_ is Nil!50696) (toList!4364 lt!1705022)))))

(declare-fun e!2822493 () (InoxSet tuple2!51146))

(assert (=> d!1397863 (= (content!8398 (toList!4364 lt!1705022)) e!2822493)))

(declare-fun b!4529831 () Bool)

(assert (=> b!4529831 (= e!2822493 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4529832 () Bool)

(assert (=> b!4529832 (= e!2822493 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705022)) true) (content!8398 (t!357782 (toList!4364 lt!1705022)))))))

(assert (= (and d!1397863 c!773387) b!4529831))

(assert (= (and d!1397863 (not c!773387)) b!4529832))

(declare-fun m!5286251 () Bool)

(assert (=> b!4529832 m!5286251))

(declare-fun m!5286253 () Bool)

(assert (=> b!4529832 m!5286253))

(assert (=> d!1397721 d!1397863))

(declare-fun d!1397865 () Bool)

(declare-fun res!1886455 () Bool)

(declare-fun e!2822498 () Bool)

(assert (=> d!1397865 (=> res!1886455 e!2822498)))

(assert (=> d!1397865 (= res!1886455 (and ((_ is Cons!50696) (toList!4364 lt!1705001)) (= (_1!28867 (h!56563 (toList!4364 lt!1705001))) key!3287)))))

(assert (=> d!1397865 (= (containsKey!1829 (toList!4364 lt!1705001) key!3287) e!2822498)))

(declare-fun b!4529837 () Bool)

(declare-fun e!2822499 () Bool)

(assert (=> b!4529837 (= e!2822498 e!2822499)))

(declare-fun res!1886456 () Bool)

(assert (=> b!4529837 (=> (not res!1886456) (not e!2822499))))

(assert (=> b!4529837 (= res!1886456 ((_ is Cons!50696) (toList!4364 lt!1705001)))))

(declare-fun b!4529838 () Bool)

(assert (=> b!4529838 (= e!2822499 (containsKey!1829 (t!357782 (toList!4364 lt!1705001)) key!3287))))

(assert (= (and d!1397865 (not res!1886455)) b!4529837))

(assert (= (and b!4529837 res!1886456) b!4529838))

(declare-fun m!5286255 () Bool)

(assert (=> b!4529838 m!5286255))

(assert (=> d!1397667 d!1397865))

(declare-fun d!1397867 () Bool)

(assert (=> d!1397867 (= (invariantList!1031 (toList!4364 lt!1705224)) (noDuplicatedKeys!270 (toList!4364 lt!1705224)))))

(declare-fun bs!864928 () Bool)

(assert (= bs!864928 d!1397867))

(declare-fun m!5286257 () Bool)

(assert (=> bs!864928 m!5286257))

(assert (=> b!4529386 d!1397867))

(declare-fun d!1397869 () Bool)

(declare-fun res!1886461 () Bool)

(declare-fun e!2822508 () Bool)

(assert (=> d!1397869 (=> res!1886461 e!2822508)))

(assert (=> d!1397869 (= res!1886461 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (= (_1!28868 (h!56564 (toList!4363 lm!1477))) lt!1705014)))))

(assert (=> d!1397869 (= (containsKey!1830 (toList!4363 lm!1477) lt!1705014) e!2822508)))

(declare-fun b!4529851 () Bool)

(declare-fun e!2822509 () Bool)

(assert (=> b!4529851 (= e!2822508 e!2822509)))

(declare-fun res!1886462 () Bool)

(assert (=> b!4529851 (=> (not res!1886462) (not e!2822509))))

(assert (=> b!4529851 (= res!1886462 (and (or (not ((_ is Cons!50697) (toList!4363 lm!1477))) (bvsle (_1!28868 (h!56564 (toList!4363 lm!1477))) lt!1705014)) ((_ is Cons!50697) (toList!4363 lm!1477)) (bvslt (_1!28868 (h!56564 (toList!4363 lm!1477))) lt!1705014)))))

(declare-fun b!4529852 () Bool)

(assert (=> b!4529852 (= e!2822509 (containsKey!1830 (t!357783 (toList!4363 lm!1477)) lt!1705014))))

(assert (= (and d!1397869 (not res!1886461)) b!4529851))

(assert (= (and b!4529851 res!1886462) b!4529852))

(declare-fun m!5286259 () Bool)

(assert (=> b!4529852 m!5286259))

(assert (=> d!1397795 d!1397869))

(declare-fun b!4529857 () Bool)

(declare-fun e!2822512 () Bool)

(assert (=> b!4529857 (= e!2822512 (not (contains!13457 (keys!17626 (extractMap!1234 (toList!4363 lm!1477))) key!3287)))))

(declare-fun b!4529858 () Bool)

(declare-fun e!2822516 () Unit!96566)

(declare-fun e!2822517 () Unit!96566)

(assert (=> b!4529858 (= e!2822516 e!2822517)))

(declare-fun c!773396 () Bool)

(declare-fun call!315717 () Bool)

(assert (=> b!4529858 (= c!773396 call!315717)))

(declare-fun b!4529859 () Bool)

(declare-fun e!2822513 () Bool)

(declare-fun e!2822514 () Bool)

(assert (=> b!4529859 (= e!2822513 e!2822514)))

(declare-fun res!1886464 () Bool)

(assert (=> b!4529859 (=> (not res!1886464) (not e!2822514))))

(assert (=> b!4529859 (= res!1886464 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287)))))

(declare-fun b!4529860 () Bool)

(declare-fun e!2822515 () List!50823)

(assert (=> b!4529860 (= e!2822515 (getKeysList!479 (toList!4364 (extractMap!1234 (toList!4363 lm!1477)))))))

(declare-fun b!4529861 () Bool)

(assert (=> b!4529861 (= e!2822514 (contains!13457 (keys!17626 (extractMap!1234 (toList!4363 lm!1477))) key!3287))))

(declare-fun d!1397871 () Bool)

(assert (=> d!1397871 e!2822513))

(declare-fun res!1886465 () Bool)

(assert (=> d!1397871 (=> res!1886465 e!2822513)))

(assert (=> d!1397871 (= res!1886465 e!2822512)))

(declare-fun res!1886463 () Bool)

(assert (=> d!1397871 (=> (not res!1886463) (not e!2822512))))

(declare-fun lt!1705577 () Bool)

(assert (=> d!1397871 (= res!1886463 (not lt!1705577))))

(declare-fun lt!1705578 () Bool)

(assert (=> d!1397871 (= lt!1705577 lt!1705578)))

(declare-fun lt!1705579 () Unit!96566)

(assert (=> d!1397871 (= lt!1705579 e!2822516)))

(declare-fun c!773394 () Bool)

(assert (=> d!1397871 (= c!773394 lt!1705578)))

(assert (=> d!1397871 (= lt!1705578 (containsKey!1829 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287))))

(assert (=> d!1397871 (= (contains!13455 (extractMap!1234 (toList!4363 lm!1477)) key!3287) lt!1705577)))

(declare-fun b!4529862 () Bool)

(assert (=> b!4529862 (= e!2822515 (keys!17626 (extractMap!1234 (toList!4363 lm!1477))))))

(declare-fun b!4529863 () Bool)

(declare-fun Unit!96671 () Unit!96566)

(assert (=> b!4529863 (= e!2822517 Unit!96671)))

(declare-fun bm!315712 () Bool)

(assert (=> bm!315712 (= call!315717 (contains!13457 e!2822515 key!3287))))

(declare-fun c!773395 () Bool)

(assert (=> bm!315712 (= c!773395 c!773394)))

(declare-fun b!4529864 () Bool)

(declare-fun lt!1705575 () Unit!96566)

(assert (=> b!4529864 (= e!2822516 lt!1705575)))

(declare-fun lt!1705576 () Unit!96566)

(assert (=> b!4529864 (= lt!1705576 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287))))

(assert (=> b!4529864 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287))))

(declare-fun lt!1705580 () Unit!96566)

(assert (=> b!4529864 (= lt!1705580 lt!1705576)))

(assert (=> b!4529864 (= lt!1705575 (lemmaInListThenGetKeysListContains!475 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287))))

(assert (=> b!4529864 call!315717))

(declare-fun b!4529865 () Bool)

(assert (=> b!4529865 false))

(declare-fun lt!1705574 () Unit!96566)

(declare-fun lt!1705581 () Unit!96566)

(assert (=> b!4529865 (= lt!1705574 lt!1705581)))

(assert (=> b!4529865 (containsKey!1829 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287)))

(assert (=> b!4529865 (= lt!1705581 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 (extractMap!1234 (toList!4363 lm!1477))) key!3287))))

(declare-fun Unit!96672 () Unit!96566)

(assert (=> b!4529865 (= e!2822517 Unit!96672)))

(assert (= (and d!1397871 c!773394) b!4529864))

(assert (= (and d!1397871 (not c!773394)) b!4529858))

(assert (= (and b!4529858 c!773396) b!4529865))

(assert (= (and b!4529858 (not c!773396)) b!4529863))

(assert (= (or b!4529864 b!4529858) bm!315712))

(assert (= (and bm!315712 c!773395) b!4529860))

(assert (= (and bm!315712 (not c!773395)) b!4529862))

(assert (= (and d!1397871 res!1886463) b!4529857))

(assert (= (and d!1397871 (not res!1886465)) b!4529859))

(assert (= (and b!4529859 res!1886464) b!4529861))

(assert (=> b!4529857 m!5285159))

(declare-fun m!5286263 () Bool)

(assert (=> b!4529857 m!5286263))

(assert (=> b!4529857 m!5286263))

(declare-fun m!5286265 () Bool)

(assert (=> b!4529857 m!5286265))

(declare-fun m!5286267 () Bool)

(assert (=> b!4529864 m!5286267))

(declare-fun m!5286269 () Bool)

(assert (=> b!4529864 m!5286269))

(assert (=> b!4529864 m!5286269))

(declare-fun m!5286271 () Bool)

(assert (=> b!4529864 m!5286271))

(declare-fun m!5286273 () Bool)

(assert (=> b!4529864 m!5286273))

(assert (=> b!4529862 m!5285159))

(assert (=> b!4529862 m!5286263))

(assert (=> b!4529859 m!5286269))

(assert (=> b!4529859 m!5286269))

(assert (=> b!4529859 m!5286271))

(declare-fun m!5286275 () Bool)

(assert (=> d!1397871 m!5286275))

(declare-fun m!5286277 () Bool)

(assert (=> b!4529860 m!5286277))

(assert (=> b!4529861 m!5285159))

(assert (=> b!4529861 m!5286263))

(assert (=> b!4529861 m!5286263))

(assert (=> b!4529861 m!5286265))

(assert (=> b!4529865 m!5286275))

(declare-fun m!5286279 () Bool)

(assert (=> b!4529865 m!5286279))

(declare-fun m!5286281 () Bool)

(assert (=> bm!315712 m!5286281))

(assert (=> d!1397727 d!1397871))

(assert (=> d!1397727 d!1397705))

(declare-fun d!1397875 () Bool)

(assert (=> d!1397875 (not (contains!13455 (extractMap!1234 (toList!4363 lm!1477)) key!3287))))

(assert (=> d!1397875 true))

(declare-fun _$26!398 () Unit!96566)

(assert (=> d!1397875 (= (choose!29709 lm!1477 key!3287 hashF!1107) _$26!398)))

(declare-fun bs!864929 () Bool)

(assert (= bs!864929 d!1397875))

(assert (=> bs!864929 m!5285159))

(assert (=> bs!864929 m!5285159))

(assert (=> bs!864929 m!5285869))

(assert (=> d!1397727 d!1397875))

(declare-fun d!1397879 () Bool)

(declare-fun res!1886472 () Bool)

(declare-fun e!2822521 () Bool)

(assert (=> d!1397879 (=> res!1886472 e!2822521)))

(assert (=> d!1397879 (= res!1886472 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397879 (= (forall!10303 (toList!4363 lm!1477) lambda!174209) e!2822521)))

(declare-fun b!4529872 () Bool)

(declare-fun e!2822522 () Bool)

(assert (=> b!4529872 (= e!2822521 e!2822522)))

(declare-fun res!1886473 () Bool)

(assert (=> b!4529872 (=> (not res!1886473) (not e!2822522))))

(assert (=> b!4529872 (= res!1886473 (dynLambda!21186 lambda!174209 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4529873 () Bool)

(assert (=> b!4529873 (= e!2822522 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174209))))

(assert (= (and d!1397879 (not res!1886472)) b!4529872))

(assert (= (and b!4529872 res!1886473) b!4529873))

(declare-fun b_lambda!156367 () Bool)

(assert (=> (not b_lambda!156367) (not b!4529872)))

(declare-fun m!5286291 () Bool)

(assert (=> b!4529872 m!5286291))

(declare-fun m!5286293 () Bool)

(assert (=> b!4529873 m!5286293))

(assert (=> d!1397727 d!1397879))

(assert (=> d!1397789 d!1397753))

(assert (=> d!1397789 d!1397569))

(assert (=> d!1397789 d!1397787))

(declare-fun d!1397881 () Bool)

(assert (=> d!1397881 (eq!635 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705027) (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705028))))

(assert (=> d!1397881 true))

(declare-fun _$16!242 () Unit!96566)

(assert (=> d!1397881 (= (choose!29713 lt!1705027 lt!1705028 (_2!28868 lt!1705015)) _$16!242)))

(declare-fun bs!864930 () Bool)

(assert (= bs!864930 d!1397881))

(assert (=> bs!864930 m!5285191))

(assert (=> bs!864930 m!5285173))

(assert (=> bs!864930 m!5285191))

(assert (=> bs!864930 m!5285173))

(assert (=> bs!864930 m!5286021))

(assert (=> d!1397789 d!1397881))

(declare-fun d!1397883 () Bool)

(assert (=> d!1397883 (= (eq!635 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705027) (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705028)) (= (content!8398 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705027))) (content!8398 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705028)))))))

(declare-fun bs!864931 () Bool)

(assert (= bs!864931 d!1397883))

(declare-fun m!5286295 () Bool)

(assert (=> bs!864931 m!5286295))

(declare-fun m!5286297 () Bool)

(assert (=> bs!864931 m!5286297))

(assert (=> d!1397789 d!1397883))

(declare-fun d!1397885 () Bool)

(assert (=> d!1397885 (= (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287)) (not (isEmpty!28712 (getValueByKey!1120 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))))

(declare-fun bs!864932 () Bool)

(assert (= bs!864932 d!1397885))

(assert (=> bs!864932 m!5285605))

(declare-fun m!5286299 () Bool)

(assert (=> bs!864932 m!5286299))

(assert (=> b!4529480 d!1397885))

(declare-fun b!4529874 () Bool)

(declare-fun e!2822523 () Option!11156)

(assert (=> b!4529874 (= e!2822523 (Some!11155 (_2!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))))

(declare-fun b!4529876 () Bool)

(declare-fun e!2822524 () Option!11156)

(assert (=> b!4529876 (= e!2822524 (getValueByKey!1120 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(declare-fun d!1397887 () Bool)

(declare-fun c!773397 () Bool)

(assert (=> d!1397887 (= c!773397 (and ((_ is Cons!50696) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) key!3287)))))

(assert (=> d!1397887 (= (getValueByKey!1120 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287) e!2822523)))

(declare-fun b!4529877 () Bool)

(assert (=> b!4529877 (= e!2822524 None!11155)))

(declare-fun b!4529875 () Bool)

(assert (=> b!4529875 (= e!2822523 e!2822524)))

(declare-fun c!773398 () Bool)

(assert (=> b!4529875 (= c!773398 (and ((_ is Cons!50696) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (not (= (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) key!3287))))))

(assert (= (and d!1397887 c!773397) b!4529874))

(assert (= (and d!1397887 (not c!773397)) b!4529875))

(assert (= (and b!4529875 c!773398) b!4529876))

(assert (= (and b!4529875 (not c!773398)) b!4529877))

(declare-fun m!5286301 () Bool)

(assert (=> b!4529876 m!5286301))

(assert (=> b!4529480 d!1397887))

(declare-fun d!1397889 () Bool)

(declare-fun lt!1705585 () Bool)

(assert (=> d!1397889 (= lt!1705585 (select (content!8401 (toList!4363 lt!1705437)) lt!1705002))))

(declare-fun e!2822525 () Bool)

(assert (=> d!1397889 (= lt!1705585 e!2822525)))

(declare-fun res!1886475 () Bool)

(assert (=> d!1397889 (=> (not res!1886475) (not e!2822525))))

(assert (=> d!1397889 (= res!1886475 ((_ is Cons!50697) (toList!4363 lt!1705437)))))

(assert (=> d!1397889 (= (contains!13454 (toList!4363 lt!1705437) lt!1705002) lt!1705585)))

(declare-fun b!4529878 () Bool)

(declare-fun e!2822526 () Bool)

(assert (=> b!4529878 (= e!2822525 e!2822526)))

(declare-fun res!1886474 () Bool)

(assert (=> b!4529878 (=> res!1886474 e!2822526)))

(assert (=> b!4529878 (= res!1886474 (= (h!56564 (toList!4363 lt!1705437)) lt!1705002))))

(declare-fun b!4529879 () Bool)

(assert (=> b!4529879 (= e!2822526 (contains!13454 (t!357783 (toList!4363 lt!1705437)) lt!1705002))))

(assert (= (and d!1397889 res!1886475) b!4529878))

(assert (= (and b!4529878 (not res!1886474)) b!4529879))

(declare-fun m!5286303 () Bool)

(assert (=> d!1397889 m!5286303))

(declare-fun m!5286305 () Bool)

(assert (=> d!1397889 m!5286305))

(declare-fun m!5286307 () Bool)

(assert (=> b!4529879 m!5286307))

(assert (=> b!4529667 d!1397889))

(declare-fun d!1397891 () Bool)

(declare-fun res!1886476 () Bool)

(declare-fun e!2822527 () Bool)

(assert (=> d!1397891 (=> res!1886476 e!2822527)))

(assert (=> d!1397891 (= res!1886476 (and ((_ is Cons!50696) lt!1705504) (= (_1!28867 (h!56563 lt!1705504)) key!3287)))))

(assert (=> d!1397891 (= (containsKey!1826 lt!1705504 key!3287) e!2822527)))

(declare-fun b!4529882 () Bool)

(declare-fun e!2822528 () Bool)

(assert (=> b!4529882 (= e!2822527 e!2822528)))

(declare-fun res!1886477 () Bool)

(assert (=> b!4529882 (=> (not res!1886477) (not e!2822528))))

(assert (=> b!4529882 (= res!1886477 ((_ is Cons!50696) lt!1705504))))

(declare-fun b!4529883 () Bool)

(assert (=> b!4529883 (= e!2822528 (containsKey!1826 (t!357782 lt!1705504) key!3287))))

(assert (= (and d!1397891 (not res!1886476)) b!4529882))

(assert (= (and b!4529882 res!1886477) b!4529883))

(declare-fun m!5286309 () Bool)

(assert (=> b!4529883 m!5286309))

(assert (=> d!1397803 d!1397891))

(declare-fun d!1397893 () Bool)

(declare-fun res!1886478 () Bool)

(declare-fun e!2822530 () Bool)

(assert (=> d!1397893 (=> res!1886478 e!2822530)))

(assert (=> d!1397893 (= res!1886478 (not ((_ is Cons!50696) lt!1705019)))))

(assert (=> d!1397893 (= (noDuplicateKeys!1178 lt!1705019) e!2822530)))

(declare-fun b!4529886 () Bool)

(declare-fun e!2822531 () Bool)

(assert (=> b!4529886 (= e!2822530 e!2822531)))

(declare-fun res!1886479 () Bool)

(assert (=> b!4529886 (=> (not res!1886479) (not e!2822531))))

(assert (=> b!4529886 (= res!1886479 (not (containsKey!1826 (t!357782 lt!1705019) (_1!28867 (h!56563 lt!1705019)))))))

(declare-fun b!4529887 () Bool)

(assert (=> b!4529887 (= e!2822531 (noDuplicateKeys!1178 (t!357782 lt!1705019)))))

(assert (= (and d!1397893 (not res!1886478)) b!4529886))

(assert (= (and b!4529886 res!1886479) b!4529887))

(declare-fun m!5286311 () Bool)

(assert (=> b!4529886 m!5286311))

(declare-fun m!5286313 () Bool)

(assert (=> b!4529887 m!5286313))

(assert (=> d!1397803 d!1397893))

(declare-fun d!1397895 () Bool)

(declare-fun res!1886480 () Bool)

(declare-fun e!2822535 () Bool)

(assert (=> d!1397895 (=> res!1886480 e!2822535)))

(assert (=> d!1397895 (= res!1886480 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1397895 (= (forall!10305 (_2!28868 lt!1705015) lambda!174168) e!2822535)))

(declare-fun b!4529892 () Bool)

(declare-fun e!2822536 () Bool)

(assert (=> b!4529892 (= e!2822535 e!2822536)))

(declare-fun res!1886481 () Bool)

(assert (=> b!4529892 (=> (not res!1886481) (not e!2822536))))

(assert (=> b!4529892 (= res!1886481 (dynLambda!21188 lambda!174168 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4529893 () Bool)

(assert (=> b!4529893 (= e!2822536 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174168))))

(assert (= (and d!1397895 (not res!1886480)) b!4529892))

(assert (= (and b!4529892 res!1886481) b!4529893))

(declare-fun b_lambda!156369 () Bool)

(assert (=> (not b_lambda!156369) (not b!4529892)))

(declare-fun m!5286315 () Bool)

(assert (=> b!4529892 m!5286315))

(declare-fun m!5286317 () Bool)

(assert (=> b!4529893 m!5286317))

(assert (=> d!1397569 d!1397895))

(assert (=> d!1397569 d!1397753))

(declare-fun d!1397897 () Bool)

(declare-fun c!773405 () Bool)

(assert (=> d!1397897 (= c!773405 ((_ is Nil!50696) (toList!4364 lt!1705027)))))

(declare-fun e!2822539 () (InoxSet tuple2!51146))

(assert (=> d!1397897 (= (content!8398 (toList!4364 lt!1705027)) e!2822539)))

(declare-fun b!4529898 () Bool)

(assert (=> b!4529898 (= e!2822539 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4529899 () Bool)

(assert (=> b!4529899 (= e!2822539 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705027)) true) (content!8398 (t!357782 (toList!4364 lt!1705027)))))))

(assert (= (and d!1397897 c!773405) b!4529898))

(assert (= (and d!1397897 (not c!773405)) b!4529899))

(declare-fun m!5286319 () Bool)

(assert (=> b!4529899 m!5286319))

(declare-fun m!5286321 () Bool)

(assert (=> b!4529899 m!5286321))

(assert (=> d!1397759 d!1397897))

(declare-fun d!1397899 () Bool)

(declare-fun c!773406 () Bool)

(assert (=> d!1397899 (= c!773406 ((_ is Nil!50696) (toList!4364 lt!1705028)))))

(declare-fun e!2822540 () (InoxSet tuple2!51146))

(assert (=> d!1397899 (= (content!8398 (toList!4364 lt!1705028)) e!2822540)))

(declare-fun b!4529900 () Bool)

(assert (=> b!4529900 (= e!2822540 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4529901 () Bool)

(assert (=> b!4529901 (= e!2822540 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705028)) true) (content!8398 (t!357782 (toList!4364 lt!1705028)))))))

(assert (= (and d!1397899 c!773406) b!4529900))

(assert (= (and d!1397899 (not c!773406)) b!4529901))

(declare-fun m!5286323 () Bool)

(assert (=> b!4529901 m!5286323))

(declare-fun m!5286325 () Bool)

(assert (=> b!4529901 m!5286325))

(assert (=> d!1397759 d!1397899))

(declare-fun d!1397901 () Bool)

(declare-fun res!1886482 () Bool)

(declare-fun e!2822541 () Bool)

(assert (=> d!1397901 (=> res!1886482 e!2822541)))

(assert (=> d!1397901 (= res!1886482 (and ((_ is Cons!50696) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) key!3287)))))

(assert (=> d!1397901 (= (containsKey!1829 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287) e!2822541)))

(declare-fun b!4529902 () Bool)

(declare-fun e!2822542 () Bool)

(assert (=> b!4529902 (= e!2822541 e!2822542)))

(declare-fun res!1886483 () Bool)

(assert (=> b!4529902 (=> (not res!1886483) (not e!2822542))))

(assert (=> b!4529902 (= res!1886483 ((_ is Cons!50696) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))

(declare-fun b!4529903 () Bool)

(assert (=> b!4529903 (= e!2822542 (containsKey!1829 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(assert (= (and d!1397901 (not res!1886482)) b!4529902))

(assert (= (and b!4529902 res!1886483) b!4529903))

(declare-fun m!5286327 () Bool)

(assert (=> b!4529903 m!5286327))

(assert (=> d!1397647 d!1397901))

(assert (=> b!4529565 d!1397851))

(assert (=> b!4529565 d!1397853))

(declare-fun d!1397903 () Bool)

(declare-fun c!773411 () Bool)

(assert (=> d!1397903 (= c!773411 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(declare-fun e!2822547 () (InoxSet tuple2!51148))

(assert (=> d!1397903 (= (content!8401 (toList!4363 lm!1477)) e!2822547)))

(declare-fun b!4529912 () Bool)

(assert (=> b!4529912 (= e!2822547 ((as const (Array tuple2!51148 Bool)) false))))

(declare-fun b!4529913 () Bool)

(assert (=> b!4529913 (= e!2822547 ((_ map or) (store ((as const (Array tuple2!51148 Bool)) false) (h!56564 (toList!4363 lm!1477)) true) (content!8401 (t!357783 (toList!4363 lm!1477)))))))

(assert (= (and d!1397903 c!773411) b!4529912))

(assert (= (and d!1397903 (not c!773411)) b!4529913))

(declare-fun m!5286329 () Bool)

(assert (=> b!4529913 m!5286329))

(assert (=> b!4529913 m!5285883))

(assert (=> d!1397807 d!1397903))

(declare-fun d!1397905 () Bool)

(assert (=> d!1397905 (= (invariantList!1031 (toList!4364 lt!1705479)) (noDuplicatedKeys!270 (toList!4364 lt!1705479)))))

(declare-fun bs!864933 () Bool)

(assert (= bs!864933 d!1397905))

(declare-fun m!5286331 () Bool)

(assert (=> bs!864933 m!5286331))

(assert (=> b!4529690 d!1397905))

(declare-fun d!1397907 () Bool)

(declare-fun res!1886484 () Bool)

(declare-fun e!2822548 () Bool)

(assert (=> d!1397907 (=> res!1886484 e!2822548)))

(assert (=> d!1397907 (= res!1886484 ((_ is Nil!50696) (ite c!773299 (toList!4364 lt!1705027) (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> d!1397907 (= (forall!10305 (ite c!773299 (toList!4364 lt!1705027) (t!357782 (_2!28868 lt!1705015))) (ite c!773299 lambda!174165 lambda!174167)) e!2822548)))

(declare-fun b!4529914 () Bool)

(declare-fun e!2822549 () Bool)

(assert (=> b!4529914 (= e!2822548 e!2822549)))

(declare-fun res!1886485 () Bool)

(assert (=> b!4529914 (=> (not res!1886485) (not e!2822549))))

(assert (=> b!4529914 (= res!1886485 (dynLambda!21188 (ite c!773299 lambda!174165 lambda!174167) (h!56563 (ite c!773299 (toList!4364 lt!1705027) (t!357782 (_2!28868 lt!1705015))))))))

(declare-fun b!4529915 () Bool)

(assert (=> b!4529915 (= e!2822549 (forall!10305 (t!357782 (ite c!773299 (toList!4364 lt!1705027) (t!357782 (_2!28868 lt!1705015)))) (ite c!773299 lambda!174165 lambda!174167)))))

(assert (= (and d!1397907 (not res!1886484)) b!4529914))

(assert (= (and b!4529914 res!1886485) b!4529915))

(declare-fun b_lambda!156371 () Bool)

(assert (=> (not b_lambda!156371) (not b!4529914)))

(declare-fun m!5286333 () Bool)

(assert (=> b!4529914 m!5286333))

(declare-fun m!5286335 () Bool)

(assert (=> b!4529915 m!5286335))

(assert (=> bm!315690 d!1397907))

(declare-fun d!1397909 () Bool)

(declare-fun res!1886490 () Bool)

(declare-fun e!2822552 () Bool)

(assert (=> d!1397909 (=> res!1886490 e!2822552)))

(assert (=> d!1397909 (= res!1886490 (not ((_ is Cons!50696) (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(assert (=> d!1397909 (= (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lm!1477)))) e!2822552)))

(declare-fun b!4529920 () Bool)

(declare-fun e!2822553 () Bool)

(assert (=> b!4529920 (= e!2822552 e!2822553)))

(declare-fun res!1886491 () Bool)

(assert (=> b!4529920 (=> (not res!1886491) (not e!2822553))))

(assert (=> b!4529920 (= res!1886491 (not (containsKey!1826 (t!357782 (_2!28868 (h!56564 (toList!4363 lm!1477)))) (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))))

(declare-fun b!4529921 () Bool)

(assert (=> b!4529921 (= e!2822553 (noDuplicateKeys!1178 (t!357782 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(assert (= (and d!1397909 (not res!1886490)) b!4529920))

(assert (= (and b!4529920 res!1886491) b!4529921))

(declare-fun m!5286337 () Bool)

(assert (=> b!4529920 m!5286337))

(declare-fun m!5286339 () Bool)

(assert (=> b!4529921 m!5286339))

(assert (=> bs!864848 d!1397909))

(assert (=> d!1397633 d!1397757))

(declare-fun d!1397911 () Bool)

(assert (=> d!1397911 (= (addToMapMapFromBucket!705 (_2!28868 lt!1705015) (-!404 lt!1705001 key!3287)) (-!404 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001) key!3287))))

(assert (=> d!1397911 true))

(declare-fun _$14!1185 () Unit!96566)

(assert (=> d!1397911 (= (choose!29700 lt!1705001 key!3287 (_2!28868 lt!1705015)) _$14!1185)))

(declare-fun bs!864934 () Bool)

(assert (= bs!864934 d!1397911))

(assert (=> bs!864934 m!5285109))

(assert (=> bs!864934 m!5285109))

(assert (=> bs!864934 m!5285527))

(assert (=> bs!864934 m!5285151))

(assert (=> bs!864934 m!5285151))

(assert (=> bs!864934 m!5285153))

(assert (=> d!1397633 d!1397911))

(assert (=> d!1397633 d!1397629))

(assert (=> d!1397633 d!1397623))

(declare-fun bs!864935 () Bool)

(declare-fun b!4529933 () Bool)

(assert (= bs!864935 (and b!4529933 b!4529387)))

(declare-fun lambda!174254 () Int)

(assert (=> bs!864935 (= (= (-!404 lt!1705001 key!3287) lt!1705027) (= lambda!174254 lambda!174166))))

(declare-fun bs!864936 () Bool)

(assert (= bs!864936 (and b!4529933 b!4529733)))

(assert (=> bs!864936 (= (= (-!404 lt!1705001 key!3287) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174254 lambda!174232))))

(declare-fun bs!864937 () Bool)

(assert (= bs!864937 (and b!4529933 b!4529691)))

(assert (=> bs!864937 (= (= (-!404 lt!1705001 key!3287) lt!1705467) (= lambda!174254 lambda!174223))))

(declare-fun bs!864938 () Bool)

(assert (= bs!864938 (and b!4529933 d!1397779)))

(assert (=> bs!864938 (not (= lambda!174254 lambda!174220))))

(declare-fun bs!864939 () Bool)

(assert (= bs!864939 (and b!4529933 d!1397821)))

(assert (=> bs!864939 (= (= (-!404 lt!1705001 key!3287) lt!1705529) (= lambda!174254 lambda!174234))))

(assert (=> bs!864935 (= (= (-!404 lt!1705001 key!3287) lt!1705212) (= lambda!174254 lambda!174167))))

(declare-fun bs!864940 () Bool)

(assert (= bs!864940 (and b!4529933 b!4529384)))

(assert (=> bs!864940 (= (= (-!404 lt!1705001 key!3287) lt!1705027) (= lambda!174254 lambda!174165))))

(declare-fun bs!864941 () Bool)

(assert (= bs!864941 (and b!4529933 d!1397819)))

(assert (=> bs!864941 (= (= (-!404 lt!1705001 key!3287) lt!1705001) (= lambda!174254 lambda!174230))))

(declare-fun bs!864942 () Bool)

(assert (= bs!864942 (and b!4529933 b!4529273)))

(assert (=> bs!864942 (not (= lambda!174254 lambda!174089))))

(declare-fun bs!864943 () Bool)

(assert (= bs!864943 (and b!4529933 b!4529434)))

(assert (=> bs!864943 (= (= (-!404 lt!1705001 key!3287) lt!1705001) (= lambda!174254 lambda!174179))))

(declare-fun bs!864944 () Bool)

(assert (= bs!864944 (and b!4529933 d!1397629)))

(assert (=> bs!864944 (= (= (-!404 lt!1705001 key!3287) lt!1705278) (= lambda!174254 lambda!174181))))

(declare-fun bs!864945 () Bool)

(assert (= bs!864945 (and b!4529933 b!4529688)))

(assert (=> bs!864945 (= (= (-!404 lt!1705001 key!3287) lt!1705028) (= lambda!174254 lambda!174221))))

(declare-fun bs!864946 () Bool)

(assert (= bs!864946 (and b!4529933 d!1397787)))

(assert (=> bs!864946 (= (= (-!404 lt!1705001 key!3287) lt!1705479) (= lambda!174254 lambda!174224))))

(declare-fun bs!864947 () Bool)

(assert (= bs!864947 (and b!4529933 b!4529431)))

(assert (=> bs!864947 (= (= (-!404 lt!1705001 key!3287) lt!1705001) (= lambda!174254 lambda!174178))))

(assert (=> bs!864936 (= (= (-!404 lt!1705001 key!3287) lt!1705517) (= lambda!174254 lambda!174233))))

(assert (=> bs!864943 (= (= (-!404 lt!1705001 key!3287) lt!1705266) (= lambda!174254 lambda!174180))))

(assert (=> bs!864937 (= (= (-!404 lt!1705001 key!3287) lt!1705028) (= lambda!174254 lambda!174222))))

(declare-fun bs!864948 () Bool)

(assert (= bs!864948 (and b!4529933 b!4529730)))

(assert (=> bs!864948 (= (= (-!404 lt!1705001 key!3287) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174254 lambda!174231))))

(declare-fun bs!864949 () Bool)

(assert (= bs!864949 (and b!4529933 d!1397569)))

(assert (=> bs!864949 (= (= (-!404 lt!1705001 key!3287) lt!1705224) (= lambda!174254 lambda!174168))))

(assert (=> b!4529933 true))

(declare-fun bs!864950 () Bool)

(declare-fun b!4529936 () Bool)

(assert (= bs!864950 (and b!4529936 b!4529387)))

(declare-fun lambda!174255 () Int)

(assert (=> bs!864950 (= (= (-!404 lt!1705001 key!3287) lt!1705027) (= lambda!174255 lambda!174166))))

(declare-fun bs!864951 () Bool)

(assert (= bs!864951 (and b!4529936 b!4529733)))

(assert (=> bs!864951 (= (= (-!404 lt!1705001 key!3287) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174255 lambda!174232))))

(declare-fun bs!864952 () Bool)

(assert (= bs!864952 (and b!4529936 b!4529691)))

(assert (=> bs!864952 (= (= (-!404 lt!1705001 key!3287) lt!1705467) (= lambda!174255 lambda!174223))))

(declare-fun bs!864953 () Bool)

(assert (= bs!864953 (and b!4529936 d!1397779)))

(assert (=> bs!864953 (not (= lambda!174255 lambda!174220))))

(declare-fun bs!864954 () Bool)

(assert (= bs!864954 (and b!4529936 d!1397821)))

(assert (=> bs!864954 (= (= (-!404 lt!1705001 key!3287) lt!1705529) (= lambda!174255 lambda!174234))))

(assert (=> bs!864950 (= (= (-!404 lt!1705001 key!3287) lt!1705212) (= lambda!174255 lambda!174167))))

(declare-fun bs!864955 () Bool)

(assert (= bs!864955 (and b!4529936 b!4529384)))

(assert (=> bs!864955 (= (= (-!404 lt!1705001 key!3287) lt!1705027) (= lambda!174255 lambda!174165))))

(declare-fun bs!864956 () Bool)

(assert (= bs!864956 (and b!4529936 d!1397819)))

(assert (=> bs!864956 (= (= (-!404 lt!1705001 key!3287) lt!1705001) (= lambda!174255 lambda!174230))))

(declare-fun bs!864957 () Bool)

(assert (= bs!864957 (and b!4529936 b!4529273)))

(assert (=> bs!864957 (not (= lambda!174255 lambda!174089))))

(declare-fun bs!864958 () Bool)

(assert (= bs!864958 (and b!4529936 b!4529434)))

(assert (=> bs!864958 (= (= (-!404 lt!1705001 key!3287) lt!1705001) (= lambda!174255 lambda!174179))))

(declare-fun bs!864959 () Bool)

(assert (= bs!864959 (and b!4529936 d!1397629)))

(assert (=> bs!864959 (= (= (-!404 lt!1705001 key!3287) lt!1705278) (= lambda!174255 lambda!174181))))

(declare-fun bs!864960 () Bool)

(assert (= bs!864960 (and b!4529936 b!4529688)))

(assert (=> bs!864960 (= (= (-!404 lt!1705001 key!3287) lt!1705028) (= lambda!174255 lambda!174221))))

(declare-fun bs!864961 () Bool)

(assert (= bs!864961 (and b!4529936 d!1397787)))

(assert (=> bs!864961 (= (= (-!404 lt!1705001 key!3287) lt!1705479) (= lambda!174255 lambda!174224))))

(declare-fun bs!864962 () Bool)

(assert (= bs!864962 (and b!4529936 b!4529431)))

(assert (=> bs!864962 (= (= (-!404 lt!1705001 key!3287) lt!1705001) (= lambda!174255 lambda!174178))))

(assert (=> bs!864951 (= (= (-!404 lt!1705001 key!3287) lt!1705517) (= lambda!174255 lambda!174233))))

(declare-fun bs!864963 () Bool)

(assert (= bs!864963 (and b!4529936 b!4529933)))

(assert (=> bs!864963 (= lambda!174255 lambda!174254)))

(assert (=> bs!864958 (= (= (-!404 lt!1705001 key!3287) lt!1705266) (= lambda!174255 lambda!174180))))

(assert (=> bs!864952 (= (= (-!404 lt!1705001 key!3287) lt!1705028) (= lambda!174255 lambda!174222))))

(declare-fun bs!864964 () Bool)

(assert (= bs!864964 (and b!4529936 b!4529730)))

(assert (=> bs!864964 (= (= (-!404 lt!1705001 key!3287) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174255 lambda!174231))))

(declare-fun bs!864965 () Bool)

(assert (= bs!864965 (and b!4529936 d!1397569)))

(assert (=> bs!864965 (= (= (-!404 lt!1705001 key!3287) lt!1705224) (= lambda!174255 lambda!174168))))

(assert (=> b!4529936 true))

(declare-fun lt!1705594 () ListMap!3625)

(declare-fun lambda!174256 () Int)

(assert (=> bs!864950 (= (= lt!1705594 lt!1705027) (= lambda!174256 lambda!174166))))

(assert (=> bs!864951 (= (= lt!1705594 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174256 lambda!174232))))

(assert (=> bs!864952 (= (= lt!1705594 lt!1705467) (= lambda!174256 lambda!174223))))

(assert (=> bs!864953 (not (= lambda!174256 lambda!174220))))

(assert (=> bs!864954 (= (= lt!1705594 lt!1705529) (= lambda!174256 lambda!174234))))

(assert (=> bs!864950 (= (= lt!1705594 lt!1705212) (= lambda!174256 lambda!174167))))

(assert (=> bs!864955 (= (= lt!1705594 lt!1705027) (= lambda!174256 lambda!174165))))

(assert (=> bs!864956 (= (= lt!1705594 lt!1705001) (= lambda!174256 lambda!174230))))

(assert (=> bs!864957 (not (= lambda!174256 lambda!174089))))

(assert (=> bs!864958 (= (= lt!1705594 lt!1705001) (= lambda!174256 lambda!174179))))

(assert (=> bs!864959 (= (= lt!1705594 lt!1705278) (= lambda!174256 lambda!174181))))

(assert (=> bs!864960 (= (= lt!1705594 lt!1705028) (= lambda!174256 lambda!174221))))

(assert (=> bs!864961 (= (= lt!1705594 lt!1705479) (= lambda!174256 lambda!174224))))

(assert (=> bs!864962 (= (= lt!1705594 lt!1705001) (= lambda!174256 lambda!174178))))

(assert (=> bs!864951 (= (= lt!1705594 lt!1705517) (= lambda!174256 lambda!174233))))

(assert (=> b!4529936 (= (= lt!1705594 (-!404 lt!1705001 key!3287)) (= lambda!174256 lambda!174255))))

(assert (=> bs!864963 (= (= lt!1705594 (-!404 lt!1705001 key!3287)) (= lambda!174256 lambda!174254))))

(assert (=> bs!864958 (= (= lt!1705594 lt!1705266) (= lambda!174256 lambda!174180))))

(assert (=> bs!864952 (= (= lt!1705594 lt!1705028) (= lambda!174256 lambda!174222))))

(assert (=> bs!864964 (= (= lt!1705594 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174256 lambda!174231))))

(assert (=> bs!864965 (= (= lt!1705594 lt!1705224) (= lambda!174256 lambda!174168))))

(assert (=> b!4529936 true))

(declare-fun bs!864967 () Bool)

(declare-fun d!1397915 () Bool)

(assert (= bs!864967 (and d!1397915 b!4529387)))

(declare-fun lambda!174257 () Int)

(declare-fun lt!1705606 () ListMap!3625)

(assert (=> bs!864967 (= (= lt!1705606 lt!1705027) (= lambda!174257 lambda!174166))))

(declare-fun bs!864968 () Bool)

(assert (= bs!864968 (and d!1397915 b!4529733)))

(assert (=> bs!864968 (= (= lt!1705606 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174257 lambda!174232))))

(declare-fun bs!864969 () Bool)

(assert (= bs!864969 (and d!1397915 b!4529691)))

(assert (=> bs!864969 (= (= lt!1705606 lt!1705467) (= lambda!174257 lambda!174223))))

(declare-fun bs!864970 () Bool)

(assert (= bs!864970 (and d!1397915 d!1397779)))

(assert (=> bs!864970 (not (= lambda!174257 lambda!174220))))

(declare-fun bs!864971 () Bool)

(assert (= bs!864971 (and d!1397915 d!1397821)))

(assert (=> bs!864971 (= (= lt!1705606 lt!1705529) (= lambda!174257 lambda!174234))))

(assert (=> bs!864967 (= (= lt!1705606 lt!1705212) (= lambda!174257 lambda!174167))))

(declare-fun bs!864972 () Bool)

(assert (= bs!864972 (and d!1397915 b!4529384)))

(assert (=> bs!864972 (= (= lt!1705606 lt!1705027) (= lambda!174257 lambda!174165))))

(declare-fun bs!864973 () Bool)

(assert (= bs!864973 (and d!1397915 d!1397819)))

(assert (=> bs!864973 (= (= lt!1705606 lt!1705001) (= lambda!174257 lambda!174230))))

(declare-fun bs!864974 () Bool)

(assert (= bs!864974 (and d!1397915 b!4529273)))

(assert (=> bs!864974 (not (= lambda!174257 lambda!174089))))

(declare-fun bs!864975 () Bool)

(assert (= bs!864975 (and d!1397915 b!4529434)))

(assert (=> bs!864975 (= (= lt!1705606 lt!1705001) (= lambda!174257 lambda!174179))))

(declare-fun bs!864976 () Bool)

(assert (= bs!864976 (and d!1397915 d!1397629)))

(assert (=> bs!864976 (= (= lt!1705606 lt!1705278) (= lambda!174257 lambda!174181))))

(declare-fun bs!864977 () Bool)

(assert (= bs!864977 (and d!1397915 b!4529688)))

(assert (=> bs!864977 (= (= lt!1705606 lt!1705028) (= lambda!174257 lambda!174221))))

(declare-fun bs!864978 () Bool)

(assert (= bs!864978 (and d!1397915 b!4529936)))

(assert (=> bs!864978 (= (= lt!1705606 lt!1705594) (= lambda!174257 lambda!174256))))

(declare-fun bs!864979 () Bool)

(assert (= bs!864979 (and d!1397915 d!1397787)))

(assert (=> bs!864979 (= (= lt!1705606 lt!1705479) (= lambda!174257 lambda!174224))))

(declare-fun bs!864980 () Bool)

(assert (= bs!864980 (and d!1397915 b!4529431)))

(assert (=> bs!864980 (= (= lt!1705606 lt!1705001) (= lambda!174257 lambda!174178))))

(assert (=> bs!864968 (= (= lt!1705606 lt!1705517) (= lambda!174257 lambda!174233))))

(assert (=> bs!864978 (= (= lt!1705606 (-!404 lt!1705001 key!3287)) (= lambda!174257 lambda!174255))))

(declare-fun bs!864981 () Bool)

(assert (= bs!864981 (and d!1397915 b!4529933)))

(assert (=> bs!864981 (= (= lt!1705606 (-!404 lt!1705001 key!3287)) (= lambda!174257 lambda!174254))))

(assert (=> bs!864975 (= (= lt!1705606 lt!1705266) (= lambda!174257 lambda!174180))))

(assert (=> bs!864969 (= (= lt!1705606 lt!1705028) (= lambda!174257 lambda!174222))))

(declare-fun bs!864982 () Bool)

(assert (= bs!864982 (and d!1397915 b!4529730)))

(assert (=> bs!864982 (= (= lt!1705606 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174257 lambda!174231))))

(declare-fun bs!864983 () Bool)

(assert (= bs!864983 (and d!1397915 d!1397569)))

(assert (=> bs!864983 (= (= lt!1705606 lt!1705224) (= lambda!174257 lambda!174168))))

(assert (=> d!1397915 true))

(declare-fun e!2822559 () Bool)

(declare-fun b!4529932 () Bool)

(assert (=> b!4529932 (= e!2822559 (forall!10305 (toList!4364 (-!404 lt!1705001 key!3287)) lambda!174256))))

(declare-fun bm!315722 () Bool)

(declare-fun c!773416 () Bool)

(declare-fun call!315728 () Bool)

(assert (=> bm!315722 (= call!315728 (forall!10305 (ite c!773416 (toList!4364 (-!404 lt!1705001 key!3287)) (t!357782 (_2!28868 lt!1705015))) (ite c!773416 lambda!174254 lambda!174256)))))

(declare-fun e!2822560 () ListMap!3625)

(assert (=> b!4529933 (= e!2822560 (-!404 lt!1705001 key!3287))))

(declare-fun lt!1705597 () Unit!96566)

(declare-fun call!315729 () Unit!96566)

(assert (=> b!4529933 (= lt!1705597 call!315729)))

(declare-fun call!315727 () Bool)

(assert (=> b!4529933 call!315727))

(declare-fun lt!1705608 () Unit!96566)

(assert (=> b!4529933 (= lt!1705608 lt!1705597)))

(assert (=> b!4529933 call!315728))

(declare-fun lt!1705590 () Unit!96566)

(declare-fun Unit!96685 () Unit!96566)

(assert (=> b!4529933 (= lt!1705590 Unit!96685)))

(declare-fun b!4529934 () Bool)

(declare-fun res!1886495 () Bool)

(declare-fun e!2822561 () Bool)

(assert (=> b!4529934 (=> (not res!1886495) (not e!2822561))))

(assert (=> b!4529934 (= res!1886495 (forall!10305 (toList!4364 (-!404 lt!1705001 key!3287)) lambda!174257))))

(declare-fun bm!315723 () Bool)

(assert (=> bm!315723 (= call!315729 (lemmaContainsAllItsOwnKeys!352 (-!404 lt!1705001 key!3287)))))

(declare-fun b!4529935 () Bool)

(assert (=> b!4529935 (= e!2822561 (invariantList!1031 (toList!4364 lt!1705606)))))

(assert (=> d!1397915 e!2822561))

(declare-fun res!1886496 () Bool)

(assert (=> d!1397915 (=> (not res!1886496) (not e!2822561))))

(assert (=> d!1397915 (= res!1886496 (forall!10305 (_2!28868 lt!1705015) lambda!174257))))

(assert (=> d!1397915 (= lt!1705606 e!2822560)))

(assert (=> d!1397915 (= c!773416 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1397915 (noDuplicateKeys!1178 (_2!28868 lt!1705015))))

(assert (=> d!1397915 (= (addToMapMapFromBucket!705 (_2!28868 lt!1705015) (-!404 lt!1705001 key!3287)) lt!1705606)))

(declare-fun bm!315724 () Bool)

(assert (=> bm!315724 (= call!315727 (forall!10305 (toList!4364 (-!404 lt!1705001 key!3287)) (ite c!773416 lambda!174254 lambda!174256)))))

(assert (=> b!4529936 (= e!2822560 lt!1705594)))

(declare-fun lt!1705602 () ListMap!3625)

(assert (=> b!4529936 (= lt!1705602 (+!1572 (-!404 lt!1705001 key!3287) (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529936 (= lt!1705594 (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 (-!404 lt!1705001 key!3287) (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705601 () Unit!96566)

(assert (=> b!4529936 (= lt!1705601 call!315729)))

(assert (=> b!4529936 (forall!10305 (toList!4364 (-!404 lt!1705001 key!3287)) lambda!174255)))

(declare-fun lt!1705605 () Unit!96566)

(assert (=> b!4529936 (= lt!1705605 lt!1705601)))

(assert (=> b!4529936 (forall!10305 (toList!4364 lt!1705602) lambda!174256)))

(declare-fun lt!1705598 () Unit!96566)

(declare-fun Unit!96686 () Unit!96566)

(assert (=> b!4529936 (= lt!1705598 Unit!96686)))

(assert (=> b!4529936 call!315728))

(declare-fun lt!1705603 () Unit!96566)

(declare-fun Unit!96687 () Unit!96566)

(assert (=> b!4529936 (= lt!1705603 Unit!96687)))

(declare-fun lt!1705591 () Unit!96566)

(declare-fun Unit!96688 () Unit!96566)

(assert (=> b!4529936 (= lt!1705591 Unit!96688)))

(declare-fun lt!1705592 () Unit!96566)

(assert (=> b!4529936 (= lt!1705592 (forallContained!2559 (toList!4364 lt!1705602) lambda!174256 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4529936 (contains!13455 lt!1705602 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705593 () Unit!96566)

(declare-fun Unit!96689 () Unit!96566)

(assert (=> b!4529936 (= lt!1705593 Unit!96689)))

(assert (=> b!4529936 (contains!13455 lt!1705594 (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705596 () Unit!96566)

(declare-fun Unit!96690 () Unit!96566)

(assert (=> b!4529936 (= lt!1705596 Unit!96690)))

(assert (=> b!4529936 (forall!10305 (_2!28868 lt!1705015) lambda!174256)))

(declare-fun lt!1705599 () Unit!96566)

(declare-fun Unit!96691 () Unit!96566)

(assert (=> b!4529936 (= lt!1705599 Unit!96691)))

(assert (=> b!4529936 (forall!10305 (toList!4364 lt!1705602) lambda!174256)))

(declare-fun lt!1705600 () Unit!96566)

(declare-fun Unit!96692 () Unit!96566)

(assert (=> b!4529936 (= lt!1705600 Unit!96692)))

(declare-fun lt!1705595 () Unit!96566)

(declare-fun Unit!96693 () Unit!96566)

(assert (=> b!4529936 (= lt!1705595 Unit!96693)))

(declare-fun lt!1705589 () Unit!96566)

(assert (=> b!4529936 (= lt!1705589 (addForallContainsKeyThenBeforeAdding!352 (-!404 lt!1705001 key!3287) lt!1705594 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4529936 call!315727))

(declare-fun lt!1705607 () Unit!96566)

(assert (=> b!4529936 (= lt!1705607 lt!1705589)))

(assert (=> b!4529936 (forall!10305 (toList!4364 (-!404 lt!1705001 key!3287)) lambda!174256)))

(declare-fun lt!1705604 () Unit!96566)

(declare-fun Unit!96694 () Unit!96566)

(assert (=> b!4529936 (= lt!1705604 Unit!96694)))

(declare-fun res!1886494 () Bool)

(assert (=> b!4529936 (= res!1886494 (forall!10305 (_2!28868 lt!1705015) lambda!174256))))

(assert (=> b!4529936 (=> (not res!1886494) (not e!2822559))))

(assert (=> b!4529936 e!2822559))

(declare-fun lt!1705609 () Unit!96566)

(declare-fun Unit!96695 () Unit!96566)

(assert (=> b!4529936 (= lt!1705609 Unit!96695)))

(assert (= (and d!1397915 c!773416) b!4529933))

(assert (= (and d!1397915 (not c!773416)) b!4529936))

(assert (= (and b!4529936 res!1886494) b!4529932))

(assert (= (or b!4529933 b!4529936) bm!315724))

(assert (= (or b!4529933 b!4529936) bm!315722))

(assert (= (or b!4529933 b!4529936) bm!315723))

(assert (= (and d!1397915 res!1886496) b!4529934))

(assert (= (and b!4529934 res!1886495) b!4529935))

(declare-fun m!5286375 () Bool)

(assert (=> d!1397915 m!5286375))

(assert (=> d!1397915 m!5285125))

(declare-fun m!5286377 () Bool)

(assert (=> b!4529936 m!5286377))

(assert (=> b!4529936 m!5286377))

(declare-fun m!5286379 () Bool)

(assert (=> b!4529936 m!5286379))

(declare-fun m!5286381 () Bool)

(assert (=> b!4529936 m!5286381))

(assert (=> b!4529936 m!5285109))

(declare-fun m!5286383 () Bool)

(assert (=> b!4529936 m!5286383))

(declare-fun m!5286385 () Bool)

(assert (=> b!4529936 m!5286385))

(declare-fun m!5286387 () Bool)

(assert (=> b!4529936 m!5286387))

(declare-fun m!5286389 () Bool)

(assert (=> b!4529936 m!5286389))

(declare-fun m!5286391 () Bool)

(assert (=> b!4529936 m!5286391))

(declare-fun m!5286393 () Bool)

(assert (=> b!4529936 m!5286393))

(declare-fun m!5286395 () Bool)

(assert (=> b!4529936 m!5286395))

(assert (=> b!4529936 m!5285109))

(assert (=> b!4529936 m!5286389))

(assert (=> b!4529936 m!5286379))

(assert (=> b!4529932 m!5286381))

(declare-fun m!5286397 () Bool)

(assert (=> bm!315722 m!5286397))

(declare-fun m!5286399 () Bool)

(assert (=> b!4529934 m!5286399))

(assert (=> bm!315723 m!5285109))

(declare-fun m!5286401 () Bool)

(assert (=> bm!315723 m!5286401))

(declare-fun m!5286403 () Bool)

(assert (=> b!4529935 m!5286403))

(declare-fun m!5286406 () Bool)

(assert (=> bm!315724 m!5286406))

(assert (=> d!1397633 d!1397915))

(assert (=> d!1397633 d!1397745))

(declare-fun d!1397929 () Bool)

(declare-fun res!1886505 () Bool)

(declare-fun e!2822577 () Bool)

(assert (=> d!1397929 (=> res!1886505 e!2822577)))

(assert (=> d!1397929 (= res!1886505 ((_ is Nil!50696) (ite c!773356 (toList!4364 lt!1705028) (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> d!1397929 (= (forall!10305 (ite c!773356 (toList!4364 lt!1705028) (t!357782 (_2!28868 lt!1705015))) (ite c!773356 lambda!174221 lambda!174223)) e!2822577)))

(declare-fun b!4529963 () Bool)

(declare-fun e!2822578 () Bool)

(assert (=> b!4529963 (= e!2822577 e!2822578)))

(declare-fun res!1886506 () Bool)

(assert (=> b!4529963 (=> (not res!1886506) (not e!2822578))))

(assert (=> b!4529963 (= res!1886506 (dynLambda!21188 (ite c!773356 lambda!174221 lambda!174223) (h!56563 (ite c!773356 (toList!4364 lt!1705028) (t!357782 (_2!28868 lt!1705015))))))))

(declare-fun b!4529964 () Bool)

(assert (=> b!4529964 (= e!2822578 (forall!10305 (t!357782 (ite c!773356 (toList!4364 lt!1705028) (t!357782 (_2!28868 lt!1705015)))) (ite c!773356 lambda!174221 lambda!174223)))))

(assert (= (and d!1397929 (not res!1886505)) b!4529963))

(assert (= (and b!4529963 res!1886506) b!4529964))

(declare-fun b_lambda!156373 () Bool)

(assert (=> (not b_lambda!156373) (not b!4529963)))

(declare-fun m!5286421 () Bool)

(assert (=> b!4529963 m!5286421))

(declare-fun m!5286423 () Bool)

(assert (=> b!4529964 m!5286423))

(assert (=> bm!315706 d!1397929))

(declare-fun bs!864984 () Bool)

(declare-fun b!4529969 () Bool)

(assert (= bs!864984 (and b!4529969 b!4529387)))

(declare-fun lambda!174258 () Int)

(assert (=> bs!864984 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705027) (= lambda!174258 lambda!174166))))

(declare-fun bs!864985 () Bool)

(assert (= bs!864985 (and b!4529969 d!1397915)))

(assert (=> bs!864985 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705606) (= lambda!174258 lambda!174257))))

(declare-fun bs!864986 () Bool)

(assert (= bs!864986 (and b!4529969 b!4529733)))

(assert (=> bs!864986 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174258 lambda!174232))))

(declare-fun bs!864987 () Bool)

(assert (= bs!864987 (and b!4529969 b!4529691)))

(assert (=> bs!864987 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705467) (= lambda!174258 lambda!174223))))

(declare-fun bs!864988 () Bool)

(assert (= bs!864988 (and b!4529969 d!1397779)))

(assert (=> bs!864988 (not (= lambda!174258 lambda!174220))))

(declare-fun bs!864989 () Bool)

(assert (= bs!864989 (and b!4529969 d!1397821)))

(assert (=> bs!864989 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705529) (= lambda!174258 lambda!174234))))

(assert (=> bs!864984 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705212) (= lambda!174258 lambda!174167))))

(declare-fun bs!864990 () Bool)

(assert (= bs!864990 (and b!4529969 b!4529384)))

(assert (=> bs!864990 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705027) (= lambda!174258 lambda!174165))))

(declare-fun bs!864991 () Bool)

(assert (= bs!864991 (and b!4529969 d!1397819)))

(assert (=> bs!864991 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705001) (= lambda!174258 lambda!174230))))

(declare-fun bs!864992 () Bool)

(assert (= bs!864992 (and b!4529969 b!4529273)))

(assert (=> bs!864992 (not (= lambda!174258 lambda!174089))))

(declare-fun bs!864993 () Bool)

(assert (= bs!864993 (and b!4529969 b!4529434)))

(assert (=> bs!864993 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705001) (= lambda!174258 lambda!174179))))

(declare-fun bs!864994 () Bool)

(assert (= bs!864994 (and b!4529969 d!1397629)))

(assert (=> bs!864994 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705278) (= lambda!174258 lambda!174181))))

(declare-fun bs!864995 () Bool)

(assert (= bs!864995 (and b!4529969 b!4529688)))

(assert (=> bs!864995 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705028) (= lambda!174258 lambda!174221))))

(declare-fun bs!864996 () Bool)

(assert (= bs!864996 (and b!4529969 b!4529936)))

(assert (=> bs!864996 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705594) (= lambda!174258 lambda!174256))))

(declare-fun bs!864997 () Bool)

(assert (= bs!864997 (and b!4529969 d!1397787)))

(assert (=> bs!864997 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705479) (= lambda!174258 lambda!174224))))

(declare-fun bs!864998 () Bool)

(assert (= bs!864998 (and b!4529969 b!4529431)))

(assert (=> bs!864998 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705001) (= lambda!174258 lambda!174178))))

(assert (=> bs!864986 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705517) (= lambda!174258 lambda!174233))))

(assert (=> bs!864996 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (-!404 lt!1705001 key!3287)) (= lambda!174258 lambda!174255))))

(declare-fun bs!864999 () Bool)

(assert (= bs!864999 (and b!4529969 b!4529933)))

(assert (=> bs!864999 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (-!404 lt!1705001 key!3287)) (= lambda!174258 lambda!174254))))

(assert (=> bs!864993 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705266) (= lambda!174258 lambda!174180))))

(assert (=> bs!864987 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705028) (= lambda!174258 lambda!174222))))

(declare-fun bs!865001 () Bool)

(assert (= bs!865001 (and b!4529969 b!4529730)))

(assert (=> bs!865001 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174258 lambda!174231))))

(declare-fun bs!865002 () Bool)

(assert (= bs!865002 (and b!4529969 d!1397569)))

(assert (=> bs!865002 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705224) (= lambda!174258 lambda!174168))))

(assert (=> b!4529969 true))

(declare-fun bs!865006 () Bool)

(declare-fun b!4529972 () Bool)

(assert (= bs!865006 (and b!4529972 b!4529387)))

(declare-fun lambda!174260 () Int)

(assert (=> bs!865006 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705027) (= lambda!174260 lambda!174166))))

(declare-fun bs!865008 () Bool)

(assert (= bs!865008 (and b!4529972 d!1397915)))

(assert (=> bs!865008 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705606) (= lambda!174260 lambda!174257))))

(declare-fun bs!865009 () Bool)

(assert (= bs!865009 (and b!4529972 b!4529733)))

(assert (=> bs!865009 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174260 lambda!174232))))

(declare-fun bs!865010 () Bool)

(assert (= bs!865010 (and b!4529972 b!4529691)))

(assert (=> bs!865010 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705467) (= lambda!174260 lambda!174223))))

(declare-fun bs!865012 () Bool)

(assert (= bs!865012 (and b!4529972 d!1397821)))

(assert (=> bs!865012 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705529) (= lambda!174260 lambda!174234))))

(assert (=> bs!865006 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705212) (= lambda!174260 lambda!174167))))

(declare-fun bs!865013 () Bool)

(assert (= bs!865013 (and b!4529972 b!4529384)))

(assert (=> bs!865013 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705027) (= lambda!174260 lambda!174165))))

(declare-fun bs!865014 () Bool)

(assert (= bs!865014 (and b!4529972 d!1397819)))

(assert (=> bs!865014 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705001) (= lambda!174260 lambda!174230))))

(declare-fun bs!865015 () Bool)

(assert (= bs!865015 (and b!4529972 b!4529273)))

(assert (=> bs!865015 (not (= lambda!174260 lambda!174089))))

(declare-fun bs!865017 () Bool)

(assert (= bs!865017 (and b!4529972 b!4529434)))

(assert (=> bs!865017 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705001) (= lambda!174260 lambda!174179))))

(declare-fun bs!865018 () Bool)

(assert (= bs!865018 (and b!4529972 d!1397629)))

(assert (=> bs!865018 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705278) (= lambda!174260 lambda!174181))))

(declare-fun bs!865020 () Bool)

(assert (= bs!865020 (and b!4529972 b!4529688)))

(assert (=> bs!865020 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705028) (= lambda!174260 lambda!174221))))

(declare-fun bs!865021 () Bool)

(assert (= bs!865021 (and b!4529972 b!4529936)))

(assert (=> bs!865021 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705594) (= lambda!174260 lambda!174256))))

(declare-fun bs!865023 () Bool)

(assert (= bs!865023 (and b!4529972 d!1397787)))

(assert (=> bs!865023 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705479) (= lambda!174260 lambda!174224))))

(declare-fun bs!865024 () Bool)

(assert (= bs!865024 (and b!4529972 b!4529431)))

(assert (=> bs!865024 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705001) (= lambda!174260 lambda!174178))))

(assert (=> bs!865009 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705517) (= lambda!174260 lambda!174233))))

(assert (=> bs!865021 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (-!404 lt!1705001 key!3287)) (= lambda!174260 lambda!174255))))

(declare-fun bs!865026 () Bool)

(assert (= bs!865026 (and b!4529972 b!4529933)))

(assert (=> bs!865026 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (-!404 lt!1705001 key!3287)) (= lambda!174260 lambda!174254))))

(assert (=> bs!865017 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705266) (= lambda!174260 lambda!174180))))

(assert (=> bs!865010 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705028) (= lambda!174260 lambda!174222))))

(declare-fun bs!865028 () Bool)

(assert (= bs!865028 (and b!4529972 d!1397779)))

(assert (=> bs!865028 (not (= lambda!174260 lambda!174220))))

(declare-fun bs!865029 () Bool)

(assert (= bs!865029 (and b!4529972 b!4529969)))

(assert (=> bs!865029 (= lambda!174260 lambda!174258)))

(declare-fun bs!865030 () Bool)

(assert (= bs!865030 (and b!4529972 b!4529730)))

(assert (=> bs!865030 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174260 lambda!174231))))

(declare-fun bs!865031 () Bool)

(assert (= bs!865031 (and b!4529972 d!1397569)))

(assert (=> bs!865031 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705224) (= lambda!174260 lambda!174168))))

(assert (=> b!4529972 true))

(declare-fun lambda!174261 () Int)

(declare-fun lt!1705624 () ListMap!3625)

(assert (=> bs!865006 (= (= lt!1705624 lt!1705027) (= lambda!174261 lambda!174166))))

(assert (=> bs!865008 (= (= lt!1705624 lt!1705606) (= lambda!174261 lambda!174257))))

(assert (=> b!4529972 (= (= lt!1705624 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174261 lambda!174260))))

(assert (=> bs!865009 (= (= lt!1705624 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174261 lambda!174232))))

(assert (=> bs!865010 (= (= lt!1705624 lt!1705467) (= lambda!174261 lambda!174223))))

(assert (=> bs!865012 (= (= lt!1705624 lt!1705529) (= lambda!174261 lambda!174234))))

(assert (=> bs!865006 (= (= lt!1705624 lt!1705212) (= lambda!174261 lambda!174167))))

(assert (=> bs!865013 (= (= lt!1705624 lt!1705027) (= lambda!174261 lambda!174165))))

(assert (=> bs!865014 (= (= lt!1705624 lt!1705001) (= lambda!174261 lambda!174230))))

(assert (=> bs!865015 (not (= lambda!174261 lambda!174089))))

(assert (=> bs!865017 (= (= lt!1705624 lt!1705001) (= lambda!174261 lambda!174179))))

(assert (=> bs!865018 (= (= lt!1705624 lt!1705278) (= lambda!174261 lambda!174181))))

(assert (=> bs!865020 (= (= lt!1705624 lt!1705028) (= lambda!174261 lambda!174221))))

(assert (=> bs!865021 (= (= lt!1705624 lt!1705594) (= lambda!174261 lambda!174256))))

(assert (=> bs!865023 (= (= lt!1705624 lt!1705479) (= lambda!174261 lambda!174224))))

(assert (=> bs!865024 (= (= lt!1705624 lt!1705001) (= lambda!174261 lambda!174178))))

(assert (=> bs!865009 (= (= lt!1705624 lt!1705517) (= lambda!174261 lambda!174233))))

(assert (=> bs!865021 (= (= lt!1705624 (-!404 lt!1705001 key!3287)) (= lambda!174261 lambda!174255))))

(assert (=> bs!865026 (= (= lt!1705624 (-!404 lt!1705001 key!3287)) (= lambda!174261 lambda!174254))))

(assert (=> bs!865017 (= (= lt!1705624 lt!1705266) (= lambda!174261 lambda!174180))))

(assert (=> bs!865010 (= (= lt!1705624 lt!1705028) (= lambda!174261 lambda!174222))))

(assert (=> bs!865028 (not (= lambda!174261 lambda!174220))))

(assert (=> bs!865029 (= (= lt!1705624 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174261 lambda!174258))))

(assert (=> bs!865030 (= (= lt!1705624 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174261 lambda!174231))))

(assert (=> bs!865031 (= (= lt!1705624 lt!1705224) (= lambda!174261 lambda!174168))))

(assert (=> b!4529972 true))

(declare-fun bs!865044 () Bool)

(declare-fun d!1397935 () Bool)

(assert (= bs!865044 (and d!1397935 b!4529387)))

(declare-fun lambda!174264 () Int)

(declare-fun lt!1705636 () ListMap!3625)

(assert (=> bs!865044 (= (= lt!1705636 lt!1705027) (= lambda!174264 lambda!174166))))

(declare-fun bs!865045 () Bool)

(assert (= bs!865045 (and d!1397935 d!1397915)))

(assert (=> bs!865045 (= (= lt!1705636 lt!1705606) (= lambda!174264 lambda!174257))))

(declare-fun bs!865046 () Bool)

(assert (= bs!865046 (and d!1397935 b!4529972)))

(assert (=> bs!865046 (= (= lt!1705636 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174264 lambda!174260))))

(declare-fun bs!865047 () Bool)

(assert (= bs!865047 (and d!1397935 b!4529733)))

(assert (=> bs!865047 (= (= lt!1705636 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174264 lambda!174232))))

(declare-fun bs!865048 () Bool)

(assert (= bs!865048 (and d!1397935 b!4529691)))

(assert (=> bs!865048 (= (= lt!1705636 lt!1705467) (= lambda!174264 lambda!174223))))

(declare-fun bs!865049 () Bool)

(assert (= bs!865049 (and d!1397935 d!1397821)))

(assert (=> bs!865049 (= (= lt!1705636 lt!1705529) (= lambda!174264 lambda!174234))))

(assert (=> bs!865044 (= (= lt!1705636 lt!1705212) (= lambda!174264 lambda!174167))))

(declare-fun bs!865050 () Bool)

(assert (= bs!865050 (and d!1397935 b!4529384)))

(assert (=> bs!865050 (= (= lt!1705636 lt!1705027) (= lambda!174264 lambda!174165))))

(declare-fun bs!865051 () Bool)

(assert (= bs!865051 (and d!1397935 d!1397819)))

(assert (=> bs!865051 (= (= lt!1705636 lt!1705001) (= lambda!174264 lambda!174230))))

(declare-fun bs!865052 () Bool)

(assert (= bs!865052 (and d!1397935 b!4529273)))

(assert (=> bs!865052 (not (= lambda!174264 lambda!174089))))

(declare-fun bs!865053 () Bool)

(assert (= bs!865053 (and d!1397935 d!1397629)))

(assert (=> bs!865053 (= (= lt!1705636 lt!1705278) (= lambda!174264 lambda!174181))))

(declare-fun bs!865054 () Bool)

(assert (= bs!865054 (and d!1397935 b!4529688)))

(assert (=> bs!865054 (= (= lt!1705636 lt!1705028) (= lambda!174264 lambda!174221))))

(declare-fun bs!865055 () Bool)

(assert (= bs!865055 (and d!1397935 b!4529936)))

(assert (=> bs!865055 (= (= lt!1705636 lt!1705594) (= lambda!174264 lambda!174256))))

(declare-fun bs!865056 () Bool)

(assert (= bs!865056 (and d!1397935 d!1397787)))

(assert (=> bs!865056 (= (= lt!1705636 lt!1705479) (= lambda!174264 lambda!174224))))

(declare-fun bs!865057 () Bool)

(assert (= bs!865057 (and d!1397935 b!4529431)))

(assert (=> bs!865057 (= (= lt!1705636 lt!1705001) (= lambda!174264 lambda!174178))))

(assert (=> bs!865047 (= (= lt!1705636 lt!1705517) (= lambda!174264 lambda!174233))))

(assert (=> bs!865055 (= (= lt!1705636 (-!404 lt!1705001 key!3287)) (= lambda!174264 lambda!174255))))

(declare-fun bs!865058 () Bool)

(assert (= bs!865058 (and d!1397935 b!4529933)))

(assert (=> bs!865058 (= (= lt!1705636 (-!404 lt!1705001 key!3287)) (= lambda!174264 lambda!174254))))

(declare-fun bs!865059 () Bool)

(assert (= bs!865059 (and d!1397935 b!4529434)))

(assert (=> bs!865059 (= (= lt!1705636 lt!1705266) (= lambda!174264 lambda!174180))))

(assert (=> bs!865048 (= (= lt!1705636 lt!1705028) (= lambda!174264 lambda!174222))))

(declare-fun bs!865060 () Bool)

(assert (= bs!865060 (and d!1397935 d!1397779)))

(assert (=> bs!865060 (not (= lambda!174264 lambda!174220))))

(declare-fun bs!865061 () Bool)

(assert (= bs!865061 (and d!1397935 b!4529969)))

(assert (=> bs!865061 (= (= lt!1705636 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174264 lambda!174258))))

(declare-fun bs!865062 () Bool)

(assert (= bs!865062 (and d!1397935 b!4529730)))

(assert (=> bs!865062 (= (= lt!1705636 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174264 lambda!174231))))

(declare-fun bs!865063 () Bool)

(assert (= bs!865063 (and d!1397935 d!1397569)))

(assert (=> bs!865063 (= (= lt!1705636 lt!1705224) (= lambda!174264 lambda!174168))))

(assert (=> bs!865046 (= (= lt!1705636 lt!1705624) (= lambda!174264 lambda!174261))))

(assert (=> bs!865059 (= (= lt!1705636 lt!1705001) (= lambda!174264 lambda!174179))))

(assert (=> d!1397935 true))

(declare-fun b!4529968 () Bool)

(declare-fun e!2822582 () Bool)

(assert (=> b!4529968 (= e!2822582 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) lambda!174261))))

(declare-fun call!315734 () Bool)

(declare-fun bm!315728 () Bool)

(declare-fun c!773426 () Bool)

(assert (=> bm!315728 (= call!315734 (forall!10305 (ite c!773426 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1705020))))) (ite c!773426 lambda!174258 lambda!174261)))))

(declare-fun e!2822583 () ListMap!3625)

(assert (=> b!4529969 (= e!2822583 (extractMap!1234 (t!357783 (toList!4363 lt!1705020))))))

(declare-fun lt!1705627 () Unit!96566)

(declare-fun call!315735 () Unit!96566)

(assert (=> b!4529969 (= lt!1705627 call!315735)))

(declare-fun call!315733 () Bool)

(assert (=> b!4529969 call!315733))

(declare-fun lt!1705638 () Unit!96566)

(assert (=> b!4529969 (= lt!1705638 lt!1705627)))

(assert (=> b!4529969 call!315734))

(declare-fun lt!1705620 () Unit!96566)

(declare-fun Unit!96707 () Unit!96566)

(assert (=> b!4529969 (= lt!1705620 Unit!96707)))

(declare-fun b!4529970 () Bool)

(declare-fun res!1886511 () Bool)

(declare-fun e!2822584 () Bool)

(assert (=> b!4529970 (=> (not res!1886511) (not e!2822584))))

(assert (=> b!4529970 (= res!1886511 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) lambda!174264))))

(declare-fun bm!315729 () Bool)

(assert (=> bm!315729 (= call!315735 (lemmaContainsAllItsOwnKeys!352 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))))))

(declare-fun b!4529971 () Bool)

(assert (=> b!4529971 (= e!2822584 (invariantList!1031 (toList!4364 lt!1705636)))))

(assert (=> d!1397935 e!2822584))

(declare-fun res!1886512 () Bool)

(assert (=> d!1397935 (=> (not res!1886512) (not e!2822584))))

(assert (=> d!1397935 (= res!1886512 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1705020))) lambda!174264))))

(assert (=> d!1397935 (= lt!1705636 e!2822583)))

(assert (=> d!1397935 (= c!773426 ((_ is Nil!50696) (_2!28868 (h!56564 (toList!4363 lt!1705020)))))))

(assert (=> d!1397935 (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705020))))))

(assert (=> d!1397935 (= (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lt!1705020))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) lt!1705636)))

(declare-fun bm!315730 () Bool)

(assert (=> bm!315730 (= call!315733 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (ite c!773426 lambda!174258 lambda!174261)))))

(assert (=> b!4529972 (= e!2822583 lt!1705624)))

(declare-fun lt!1705632 () ListMap!3625)

(assert (=> b!4529972 (= lt!1705632 (+!1572 (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020))))))))

(assert (=> b!4529972 (= lt!1705624 (addToMapMapFromBucket!705 (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1705020)))) (+!1572 (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020)))))))))

(declare-fun lt!1705631 () Unit!96566)

(assert (=> b!4529972 (= lt!1705631 call!315735)))

(assert (=> b!4529972 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) lambda!174260)))

(declare-fun lt!1705635 () Unit!96566)

(assert (=> b!4529972 (= lt!1705635 lt!1705631)))

(assert (=> b!4529972 (forall!10305 (toList!4364 lt!1705632) lambda!174261)))

(declare-fun lt!1705628 () Unit!96566)

(declare-fun Unit!96708 () Unit!96566)

(assert (=> b!4529972 (= lt!1705628 Unit!96708)))

(assert (=> b!4529972 call!315734))

(declare-fun lt!1705633 () Unit!96566)

(declare-fun Unit!96709 () Unit!96566)

(assert (=> b!4529972 (= lt!1705633 Unit!96709)))

(declare-fun lt!1705621 () Unit!96566)

(declare-fun Unit!96710 () Unit!96566)

(assert (=> b!4529972 (= lt!1705621 Unit!96710)))

(declare-fun lt!1705622 () Unit!96566)

(assert (=> b!4529972 (= lt!1705622 (forallContained!2559 (toList!4364 lt!1705632) lambda!174261 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020))))))))

(assert (=> b!4529972 (contains!13455 lt!1705632 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020))))))))

(declare-fun lt!1705623 () Unit!96566)

(declare-fun Unit!96711 () Unit!96566)

(assert (=> b!4529972 (= lt!1705623 Unit!96711)))

(assert (=> b!4529972 (contains!13455 lt!1705624 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020))))))))

(declare-fun lt!1705626 () Unit!96566)

(declare-fun Unit!96712 () Unit!96566)

(assert (=> b!4529972 (= lt!1705626 Unit!96712)))

(assert (=> b!4529972 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1705020))) lambda!174261)))

(declare-fun lt!1705629 () Unit!96566)

(declare-fun Unit!96713 () Unit!96566)

(assert (=> b!4529972 (= lt!1705629 Unit!96713)))

(assert (=> b!4529972 (forall!10305 (toList!4364 lt!1705632) lambda!174261)))

(declare-fun lt!1705630 () Unit!96566)

(declare-fun Unit!96714 () Unit!96566)

(assert (=> b!4529972 (= lt!1705630 Unit!96714)))

(declare-fun lt!1705625 () Unit!96566)

(declare-fun Unit!96715 () Unit!96566)

(assert (=> b!4529972 (= lt!1705625 Unit!96715)))

(declare-fun lt!1705619 () Unit!96566)

(assert (=> b!4529972 (= lt!1705619 (addForallContainsKeyThenBeforeAdding!352 (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705624 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020))))) (_2!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705020)))))))))

(assert (=> b!4529972 call!315733))

(declare-fun lt!1705637 () Unit!96566)

(assert (=> b!4529972 (= lt!1705637 lt!1705619)))

(assert (=> b!4529972 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) lambda!174261)))

(declare-fun lt!1705634 () Unit!96566)

(declare-fun Unit!96716 () Unit!96566)

(assert (=> b!4529972 (= lt!1705634 Unit!96716)))

(declare-fun res!1886510 () Bool)

(assert (=> b!4529972 (= res!1886510 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1705020))) lambda!174261))))

(assert (=> b!4529972 (=> (not res!1886510) (not e!2822582))))

(assert (=> b!4529972 e!2822582))

(declare-fun lt!1705639 () Unit!96566)

(declare-fun Unit!96717 () Unit!96566)

(assert (=> b!4529972 (= lt!1705639 Unit!96717)))

(assert (= (and d!1397935 c!773426) b!4529969))

(assert (= (and d!1397935 (not c!773426)) b!4529972))

(assert (= (and b!4529972 res!1886510) b!4529968))

(assert (= (or b!4529969 b!4529972) bm!315730))

(assert (= (or b!4529969 b!4529972) bm!315728))

(assert (= (or b!4529969 b!4529972) bm!315729))

(assert (= (and d!1397935 res!1886512) b!4529970))

(assert (= (and b!4529970 res!1886511) b!4529971))

(declare-fun m!5286425 () Bool)

(assert (=> d!1397935 m!5286425))

(declare-fun m!5286427 () Bool)

(assert (=> d!1397935 m!5286427))

(declare-fun m!5286429 () Bool)

(assert (=> b!4529972 m!5286429))

(assert (=> b!4529972 m!5286429))

(declare-fun m!5286431 () Bool)

(assert (=> b!4529972 m!5286431))

(declare-fun m!5286433 () Bool)

(assert (=> b!4529972 m!5286433))

(assert (=> b!4529972 m!5285433))

(declare-fun m!5286435 () Bool)

(assert (=> b!4529972 m!5286435))

(declare-fun m!5286437 () Bool)

(assert (=> b!4529972 m!5286437))

(declare-fun m!5286439 () Bool)

(assert (=> b!4529972 m!5286439))

(declare-fun m!5286441 () Bool)

(assert (=> b!4529972 m!5286441))

(declare-fun m!5286443 () Bool)

(assert (=> b!4529972 m!5286443))

(declare-fun m!5286445 () Bool)

(assert (=> b!4529972 m!5286445))

(declare-fun m!5286447 () Bool)

(assert (=> b!4529972 m!5286447))

(assert (=> b!4529972 m!5285433))

(assert (=> b!4529972 m!5286441))

(assert (=> b!4529972 m!5286431))

(assert (=> b!4529968 m!5286433))

(declare-fun m!5286449 () Bool)

(assert (=> bm!315728 m!5286449))

(declare-fun m!5286451 () Bool)

(assert (=> b!4529970 m!5286451))

(assert (=> bm!315729 m!5285433))

(declare-fun m!5286453 () Bool)

(assert (=> bm!315729 m!5286453))

(declare-fun m!5286455 () Bool)

(assert (=> b!4529971 m!5286455))

(declare-fun m!5286457 () Bool)

(assert (=> bm!315730 m!5286457))

(assert (=> b!4529408 d!1397935))

(declare-fun bs!865065 () Bool)

(declare-fun d!1397939 () Bool)

(assert (= bs!865065 (and d!1397939 d!1397661)))

(declare-fun lambda!174266 () Int)

(assert (=> bs!865065 (= lambda!174266 lambda!174187)))

(declare-fun bs!865067 () Bool)

(assert (= bs!865067 (and d!1397939 d!1397797)))

(assert (=> bs!865067 (= lambda!174266 lambda!174227)))

(declare-fun bs!865068 () Bool)

(assert (= bs!865068 (and d!1397939 d!1397711)))

(assert (=> bs!865068 (= lambda!174266 lambda!174203)))

(declare-fun bs!865070 () Bool)

(assert (= bs!865070 (and d!1397939 d!1397727)))

(assert (=> bs!865070 (= lambda!174266 lambda!174209)))

(declare-fun bs!865071 () Bool)

(assert (= bs!865071 (and d!1397939 d!1397665)))

(assert (=> bs!865071 (= lambda!174266 lambda!174190)))

(declare-fun bs!865073 () Bool)

(assert (= bs!865073 (and d!1397939 d!1397751)))

(assert (=> bs!865073 (not (= lambda!174266 lambda!174212))))

(declare-fun bs!865075 () Bool)

(assert (= bs!865075 (and d!1397939 d!1397607)))

(assert (=> bs!865075 (= lambda!174266 lambda!174177)))

(declare-fun bs!865076 () Bool)

(assert (= bs!865076 (and d!1397939 d!1397767)))

(assert (=> bs!865076 (= lambda!174266 lambda!174216)))

(declare-fun bs!865077 () Bool)

(assert (= bs!865077 (and d!1397939 d!1397823)))

(assert (=> bs!865077 (= lambda!174266 lambda!174235)))

(declare-fun bs!865078 () Bool)

(assert (= bs!865078 (and d!1397939 d!1397705)))

(assert (=> bs!865078 (= lambda!174266 lambda!174197)))

(declare-fun bs!865079 () Bool)

(assert (= bs!865079 (and d!1397939 d!1397669)))

(assert (=> bs!865079 (= lambda!174266 lambda!174191)))

(declare-fun bs!865080 () Bool)

(assert (= bs!865080 (and d!1397939 b!4529273)))

(assert (=> bs!865080 (not (= lambda!174266 lambda!174088))))

(declare-fun bs!865082 () Bool)

(assert (= bs!865082 (and d!1397939 d!1397769)))

(assert (=> bs!865082 (= lambda!174266 lambda!174217)))

(declare-fun bs!865084 () Bool)

(assert (= bs!865084 (and d!1397939 d!1397765)))

(assert (=> bs!865084 (= lambda!174266 lambda!174213)))

(declare-fun bs!865085 () Bool)

(assert (= bs!865085 (and d!1397939 start!449036)))

(assert (=> bs!865085 (= lambda!174266 lambda!174087)))

(declare-fun lt!1705661 () ListMap!3625)

(assert (=> d!1397939 (invariantList!1031 (toList!4364 lt!1705661))))

(declare-fun e!2822588 () ListMap!3625)

(assert (=> d!1397939 (= lt!1705661 e!2822588)))

(declare-fun c!773428 () Bool)

(assert (=> d!1397939 (= c!773428 ((_ is Cons!50697) (t!357783 (toList!4363 lt!1705020))))))

(assert (=> d!1397939 (forall!10303 (t!357783 (toList!4363 lt!1705020)) lambda!174266)))

(assert (=> d!1397939 (= (extractMap!1234 (t!357783 (toList!4363 lt!1705020))) lt!1705661)))

(declare-fun b!4529978 () Bool)

(assert (=> b!4529978 (= e!2822588 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (toList!4363 lt!1705020)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lt!1705020))))))))

(declare-fun b!4529979 () Bool)

(assert (=> b!4529979 (= e!2822588 (ListMap!3626 Nil!50696))))

(assert (= (and d!1397939 c!773428) b!4529978))

(assert (= (and d!1397939 (not c!773428)) b!4529979))

(declare-fun m!5286459 () Bool)

(assert (=> d!1397939 m!5286459))

(declare-fun m!5286461 () Bool)

(assert (=> d!1397939 m!5286461))

(declare-fun m!5286463 () Bool)

(assert (=> b!4529978 m!5286463))

(assert (=> b!4529978 m!5286463))

(declare-fun m!5286465 () Bool)

(assert (=> b!4529978 m!5286465))

(assert (=> b!4529408 d!1397939))

(assert (=> b!4529699 d!1397807))

(declare-fun d!1397941 () Bool)

(assert (=> d!1397941 (= (invariantList!1031 (toList!4364 lt!1705374)) (noDuplicatedKeys!270 (toList!4364 lt!1705374)))))

(declare-fun bs!865090 () Bool)

(assert (= bs!865090 d!1397941))

(declare-fun m!5286467 () Bool)

(assert (=> bs!865090 m!5286467))

(assert (=> d!1397669 d!1397941))

(declare-fun d!1397943 () Bool)

(declare-fun res!1886516 () Bool)

(declare-fun e!2822589 () Bool)

(assert (=> d!1397943 (=> res!1886516 e!2822589)))

(assert (=> d!1397943 (= res!1886516 ((_ is Nil!50697) (toList!4363 lt!1705004)))))

(assert (=> d!1397943 (= (forall!10303 (toList!4363 lt!1705004) lambda!174191) e!2822589)))

(declare-fun b!4529980 () Bool)

(declare-fun e!2822590 () Bool)

(assert (=> b!4529980 (= e!2822589 e!2822590)))

(declare-fun res!1886517 () Bool)

(assert (=> b!4529980 (=> (not res!1886517) (not e!2822590))))

(assert (=> b!4529980 (= res!1886517 (dynLambda!21186 lambda!174191 (h!56564 (toList!4363 lt!1705004))))))

(declare-fun b!4529981 () Bool)

(assert (=> b!4529981 (= e!2822590 (forall!10303 (t!357783 (toList!4363 lt!1705004)) lambda!174191))))

(assert (= (and d!1397943 (not res!1886516)) b!4529980))

(assert (= (and b!4529980 res!1886517) b!4529981))

(declare-fun b_lambda!156375 () Bool)

(assert (=> (not b_lambda!156375) (not b!4529980)))

(declare-fun m!5286469 () Bool)

(assert (=> b!4529980 m!5286469))

(declare-fun m!5286471 () Bool)

(assert (=> b!4529981 m!5286471))

(assert (=> d!1397669 d!1397943))

(declare-fun d!1397945 () Bool)

(declare-fun isEmpty!28715 (Option!11157) Bool)

(assert (=> d!1397945 (= (isDefined!8441 (getValueByKey!1121 (toList!4363 lm!1477) lt!1705014)) (not (isEmpty!28715 (getValueByKey!1121 (toList!4363 lm!1477) lt!1705014))))))

(declare-fun bs!865093 () Bool)

(assert (= bs!865093 d!1397945))

(assert (=> bs!865093 m!5286053))

(declare-fun m!5286473 () Bool)

(assert (=> bs!865093 m!5286473))

(assert (=> b!4529698 d!1397945))

(declare-fun b!4529991 () Bool)

(declare-fun e!2822595 () Option!11157)

(declare-fun e!2822596 () Option!11157)

(assert (=> b!4529991 (= e!2822595 e!2822596)))

(declare-fun c!773434 () Bool)

(assert (=> b!4529991 (= c!773434 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (not (= (_1!28868 (h!56564 (toList!4363 lm!1477))) lt!1705014))))))

(declare-fun b!4529992 () Bool)

(assert (=> b!4529992 (= e!2822596 (getValueByKey!1121 (t!357783 (toList!4363 lm!1477)) lt!1705014))))

(declare-fun b!4529990 () Bool)

(assert (=> b!4529990 (= e!2822595 (Some!11156 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(declare-fun d!1397947 () Bool)

(declare-fun c!773433 () Bool)

(assert (=> d!1397947 (= c!773433 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (= (_1!28868 (h!56564 (toList!4363 lm!1477))) lt!1705014)))))

(assert (=> d!1397947 (= (getValueByKey!1121 (toList!4363 lm!1477) lt!1705014) e!2822595)))

(declare-fun b!4529993 () Bool)

(assert (=> b!4529993 (= e!2822596 None!11156)))

(assert (= (and d!1397947 c!773433) b!4529990))

(assert (= (and d!1397947 (not c!773433)) b!4529991))

(assert (= (and b!4529991 c!773434) b!4529992))

(assert (= (and b!4529991 (not c!773434)) b!4529993))

(declare-fun m!5286507 () Bool)

(assert (=> b!4529992 m!5286507))

(assert (=> b!4529698 d!1397947))

(declare-fun d!1397951 () Bool)

(assert (=> d!1397951 (dynLambda!21188 lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026))))))

(assert (=> d!1397951 true))

(declare-fun _$7!1890 () Unit!96566)

(assert (=> d!1397951 (= (choose!29705 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174089 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))) _$7!1890)))

(declare-fun b_lambda!156377 () Bool)

(assert (=> (not b_lambda!156377) (not d!1397951)))

(declare-fun bs!865097 () Bool)

(assert (= bs!865097 d!1397951))

(assert (=> bs!865097 m!5285775))

(assert (=> d!1397693 d!1397951))

(declare-fun d!1397953 () Bool)

(declare-fun res!1886518 () Bool)

(declare-fun e!2822598 () Bool)

(assert (=> d!1397953 (=> res!1886518 e!2822598)))

(assert (=> d!1397953 (= res!1886518 ((_ is Nil!50696) (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(assert (=> d!1397953 (= (forall!10305 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174089) e!2822598)))

(declare-fun b!4529996 () Bool)

(declare-fun e!2822599 () Bool)

(assert (=> b!4529996 (= e!2822598 e!2822599)))

(declare-fun res!1886519 () Bool)

(assert (=> b!4529996 (=> (not res!1886519) (not e!2822599))))

(assert (=> b!4529996 (= res!1886519 (dynLambda!21188 lambda!174089 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(declare-fun b!4529997 () Bool)

(assert (=> b!4529997 (= e!2822599 (forall!10305 (t!357782 (_2!28868 (h!56564 (toList!4363 lm!1477)))) lambda!174089))))

(assert (= (and d!1397953 (not res!1886518)) b!4529996))

(assert (= (and b!4529996 res!1886519) b!4529997))

(declare-fun b_lambda!156379 () Bool)

(assert (=> (not b_lambda!156379) (not b!4529996)))

(declare-fun m!5286509 () Bool)

(assert (=> b!4529996 m!5286509))

(declare-fun m!5286511 () Bool)

(assert (=> b!4529997 m!5286511))

(assert (=> d!1397693 d!1397953))

(declare-fun d!1397955 () Bool)

(declare-fun res!1886520 () Bool)

(declare-fun e!2822600 () Bool)

(assert (=> d!1397955 (=> res!1886520 e!2822600)))

(assert (=> d!1397955 (= res!1886520 (and ((_ is Cons!50696) (t!357782 newBucket!178)) (= (_1!28867 (h!56563 (t!357782 newBucket!178))) (_1!28867 (h!56563 newBucket!178)))))))

(assert (=> d!1397955 (= (containsKey!1826 (t!357782 newBucket!178) (_1!28867 (h!56563 newBucket!178))) e!2822600)))

(declare-fun b!4529998 () Bool)

(declare-fun e!2822601 () Bool)

(assert (=> b!4529998 (= e!2822600 e!2822601)))

(declare-fun res!1886521 () Bool)

(assert (=> b!4529998 (=> (not res!1886521) (not e!2822601))))

(assert (=> b!4529998 (= res!1886521 ((_ is Cons!50696) (t!357782 newBucket!178)))))

(declare-fun b!4529999 () Bool)

(assert (=> b!4529999 (= e!2822601 (containsKey!1826 (t!357782 (t!357782 newBucket!178)) (_1!28867 (h!56563 newBucket!178))))))

(assert (= (and d!1397955 (not res!1886520)) b!4529998))

(assert (= (and b!4529998 res!1886521) b!4529999))

(declare-fun m!5286513 () Bool)

(assert (=> b!4529999 m!5286513))

(assert (=> b!4529685 d!1397955))

(declare-fun d!1397957 () Bool)

(declare-fun res!1886522 () Bool)

(declare-fun e!2822602 () Bool)

(assert (=> d!1397957 (=> res!1886522 e!2822602)))

(assert (=> d!1397957 (= res!1886522 ((_ is Nil!50696) (toList!4364 lt!1705001)))))

(assert (=> d!1397957 (= (forall!10305 (toList!4364 lt!1705001) lambda!174181) e!2822602)))

(declare-fun b!4530000 () Bool)

(declare-fun e!2822603 () Bool)

(assert (=> b!4530000 (= e!2822602 e!2822603)))

(declare-fun res!1886523 () Bool)

(assert (=> b!4530000 (=> (not res!1886523) (not e!2822603))))

(assert (=> b!4530000 (= res!1886523 (dynLambda!21188 lambda!174181 (h!56563 (toList!4364 lt!1705001))))))

(declare-fun b!4530001 () Bool)

(assert (=> b!4530001 (= e!2822603 (forall!10305 (t!357782 (toList!4364 lt!1705001)) lambda!174181))))

(assert (= (and d!1397957 (not res!1886522)) b!4530000))

(assert (= (and b!4530000 res!1886523) b!4530001))

(declare-fun b_lambda!156381 () Bool)

(assert (=> (not b_lambda!156381) (not b!4530000)))

(declare-fun m!5286515 () Bool)

(assert (=> b!4530000 m!5286515))

(declare-fun m!5286517 () Bool)

(assert (=> b!4530001 m!5286517))

(assert (=> b!4529432 d!1397957))

(declare-fun d!1397959 () Bool)

(assert (=> d!1397959 (dynLambda!21186 lambda!174088 (h!56564 (toList!4363 lm!1477)))))

(assert (=> d!1397959 true))

(declare-fun _$7!1893 () Unit!96566)

(assert (=> d!1397959 (= (choose!29704 (toList!4363 lm!1477) lambda!174088 (h!56564 (toList!4363 lm!1477))) _$7!1893)))

(declare-fun b_lambda!156383 () Bool)

(assert (=> (not b_lambda!156383) (not d!1397959)))

(declare-fun bs!865109 () Bool)

(assert (= bs!865109 d!1397959))

(assert (=> bs!865109 m!5285761))

(assert (=> d!1397681 d!1397959))

(declare-fun d!1397961 () Bool)

(declare-fun res!1886524 () Bool)

(declare-fun e!2822604 () Bool)

(assert (=> d!1397961 (=> res!1886524 e!2822604)))

(assert (=> d!1397961 (= res!1886524 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397961 (= (forall!10303 (toList!4363 lm!1477) lambda!174088) e!2822604)))

(declare-fun b!4530002 () Bool)

(declare-fun e!2822605 () Bool)

(assert (=> b!4530002 (= e!2822604 e!2822605)))

(declare-fun res!1886525 () Bool)

(assert (=> b!4530002 (=> (not res!1886525) (not e!2822605))))

(assert (=> b!4530002 (= res!1886525 (dynLambda!21186 lambda!174088 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4530003 () Bool)

(assert (=> b!4530003 (= e!2822605 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174088))))

(assert (= (and d!1397961 (not res!1886524)) b!4530002))

(assert (= (and b!4530002 res!1886525) b!4530003))

(declare-fun b_lambda!156385 () Bool)

(assert (=> (not b_lambda!156385) (not b!4530002)))

(assert (=> b!4530002 m!5285761))

(declare-fun m!5286525 () Bool)

(assert (=> b!4530003 m!5286525))

(assert (=> d!1397681 d!1397961))

(declare-fun d!1397963 () Bool)

(assert (=> d!1397963 (= (head!9446 (toList!4363 lt!1705020)) (h!56564 (toList!4363 lt!1705020)))))

(assert (=> d!1397747 d!1397963))

(declare-fun d!1397967 () Bool)

(declare-fun res!1886526 () Bool)

(declare-fun e!2822606 () Bool)

(assert (=> d!1397967 (=> res!1886526 e!2822606)))

(assert (=> d!1397967 (= res!1886526 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397967 (= (forall!10303 (toList!4363 lm!1477) lambda!174212) e!2822606)))

(declare-fun b!4530004 () Bool)

(declare-fun e!2822607 () Bool)

(assert (=> b!4530004 (= e!2822606 e!2822607)))

(declare-fun res!1886527 () Bool)

(assert (=> b!4530004 (=> (not res!1886527) (not e!2822607))))

(assert (=> b!4530004 (= res!1886527 (dynLambda!21186 lambda!174212 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4530005 () Bool)

(assert (=> b!4530005 (= e!2822607 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174212))))

(assert (= (and d!1397967 (not res!1886526)) b!4530004))

(assert (= (and b!4530004 res!1886527) b!4530005))

(declare-fun b_lambda!156387 () Bool)

(assert (=> (not b_lambda!156387) (not b!4530004)))

(declare-fun m!5286529 () Bool)

(assert (=> b!4530004 m!5286529))

(declare-fun m!5286531 () Bool)

(assert (=> b!4530005 m!5286531))

(assert (=> d!1397751 d!1397967))

(declare-fun d!1397969 () Bool)

(declare-fun lt!1705663 () Bool)

(assert (=> d!1397969 (= lt!1705663 (select (content!8401 (toList!4363 lt!1705446)) lt!1705015))))

(declare-fun e!2822608 () Bool)

(assert (=> d!1397969 (= lt!1705663 e!2822608)))

(declare-fun res!1886529 () Bool)

(assert (=> d!1397969 (=> (not res!1886529) (not e!2822608))))

(assert (=> d!1397969 (= res!1886529 ((_ is Cons!50697) (toList!4363 lt!1705446)))))

(assert (=> d!1397969 (= (contains!13454 (toList!4363 lt!1705446) lt!1705015) lt!1705663)))

(declare-fun b!4530006 () Bool)

(declare-fun e!2822609 () Bool)

(assert (=> b!4530006 (= e!2822608 e!2822609)))

(declare-fun res!1886528 () Bool)

(assert (=> b!4530006 (=> res!1886528 e!2822609)))

(assert (=> b!4530006 (= res!1886528 (= (h!56564 (toList!4363 lt!1705446)) lt!1705015))))

(declare-fun b!4530007 () Bool)

(assert (=> b!4530007 (= e!2822609 (contains!13454 (t!357783 (toList!4363 lt!1705446)) lt!1705015))))

(assert (= (and d!1397969 res!1886529) b!4530006))

(assert (= (and b!4530006 (not res!1886528)) b!4530007))

(declare-fun m!5286533 () Bool)

(assert (=> d!1397969 m!5286533))

(declare-fun m!5286535 () Bool)

(assert (=> d!1397969 m!5286535))

(declare-fun m!5286537 () Bool)

(assert (=> b!4530007 m!5286537))

(assert (=> b!4529673 d!1397969))

(assert (=> b!4529486 d!1397901))

(declare-fun d!1397971 () Bool)

(assert (=> d!1397971 (containsKey!1829 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287)))

(declare-fun lt!1705666 () Unit!96566)

(declare-fun choose!29723 (List!50820 K!12085) Unit!96566)

(assert (=> d!1397971 (= lt!1705666 (choose!29723 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (=> d!1397971 (invariantList!1031 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1397971 (= (lemmaInGetKeysListThenContainsKey!478 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287) lt!1705666)))

(declare-fun bs!865110 () Bool)

(assert (= bs!865110 d!1397971))

(assert (=> bs!865110 m!5285621))

(declare-fun m!5286539 () Bool)

(assert (=> bs!865110 m!5286539))

(declare-fun m!5286541 () Bool)

(assert (=> bs!865110 m!5286541))

(assert (=> b!4529486 d!1397971))

(declare-fun d!1397973 () Bool)

(declare-fun e!2822611 () Bool)

(assert (=> d!1397973 e!2822611))

(declare-fun res!1886530 () Bool)

(assert (=> d!1397973 (=> res!1886530 e!2822611)))

(declare-fun lt!1705668 () Bool)

(assert (=> d!1397973 (= res!1886530 (not lt!1705668))))

(declare-fun lt!1705669 () Bool)

(assert (=> d!1397973 (= lt!1705668 lt!1705669)))

(declare-fun lt!1705667 () Unit!96566)

(declare-fun e!2822610 () Unit!96566)

(assert (=> d!1397973 (= lt!1705667 e!2822610)))

(declare-fun c!773436 () Bool)

(assert (=> d!1397973 (= c!773436 lt!1705669)))

(assert (=> d!1397973 (= lt!1705669 (containsKey!1830 (toList!4363 lt!1705437) (_1!28868 lt!1705002)))))

(assert (=> d!1397973 (= (contains!13453 lt!1705437 (_1!28868 lt!1705002)) lt!1705668)))

(declare-fun b!4530008 () Bool)

(declare-fun lt!1705670 () Unit!96566)

(assert (=> b!4530008 (= e!2822610 lt!1705670)))

(assert (=> b!4530008 (= lt!1705670 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lt!1705437) (_1!28868 lt!1705002)))))

(assert (=> b!4530008 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705437) (_1!28868 lt!1705002)))))

(declare-fun b!4530009 () Bool)

(declare-fun Unit!96719 () Unit!96566)

(assert (=> b!4530009 (= e!2822610 Unit!96719)))

(declare-fun b!4530010 () Bool)

(assert (=> b!4530010 (= e!2822611 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705437) (_1!28868 lt!1705002))))))

(assert (= (and d!1397973 c!773436) b!4530008))

(assert (= (and d!1397973 (not c!773436)) b!4530009))

(assert (= (and d!1397973 (not res!1886530)) b!4530010))

(declare-fun m!5286543 () Bool)

(assert (=> d!1397973 m!5286543))

(declare-fun m!5286545 () Bool)

(assert (=> b!4530008 m!5286545))

(assert (=> b!4530008 m!5285927))

(assert (=> b!4530008 m!5285927))

(declare-fun m!5286547 () Bool)

(assert (=> b!4530008 m!5286547))

(assert (=> b!4530010 m!5285927))

(assert (=> b!4530010 m!5285927))

(assert (=> b!4530010 m!5286547))

(assert (=> d!1397761 d!1397973))

(declare-fun b!4530012 () Bool)

(declare-fun e!2822612 () Option!11157)

(declare-fun e!2822613 () Option!11157)

(assert (=> b!4530012 (= e!2822612 e!2822613)))

(declare-fun c!773438 () Bool)

(assert (=> b!4530012 (= c!773438 (and ((_ is Cons!50697) lt!1705439) (not (= (_1!28868 (h!56564 lt!1705439)) (_1!28868 lt!1705002)))))))

(declare-fun b!4530013 () Bool)

(assert (=> b!4530013 (= e!2822613 (getValueByKey!1121 (t!357783 lt!1705439) (_1!28868 lt!1705002)))))

(declare-fun b!4530011 () Bool)

(assert (=> b!4530011 (= e!2822612 (Some!11156 (_2!28868 (h!56564 lt!1705439))))))

(declare-fun d!1397975 () Bool)

(declare-fun c!773437 () Bool)

(assert (=> d!1397975 (= c!773437 (and ((_ is Cons!50697) lt!1705439) (= (_1!28868 (h!56564 lt!1705439)) (_1!28868 lt!1705002))))))

(assert (=> d!1397975 (= (getValueByKey!1121 lt!1705439 (_1!28868 lt!1705002)) e!2822612)))

(declare-fun b!4530014 () Bool)

(assert (=> b!4530014 (= e!2822613 None!11156)))

(assert (= (and d!1397975 c!773437) b!4530011))

(assert (= (and d!1397975 (not c!773437)) b!4530012))

(assert (= (and b!4530012 c!773438) b!4530013))

(assert (= (and b!4530012 (not c!773438)) b!4530014))

(declare-fun m!5286549 () Bool)

(assert (=> b!4530013 m!5286549))

(assert (=> d!1397761 d!1397975))

(declare-fun d!1397977 () Bool)

(assert (=> d!1397977 (= (getValueByKey!1121 lt!1705439 (_1!28868 lt!1705002)) (Some!11156 (_2!28868 lt!1705002)))))

(declare-fun lt!1705675 () Unit!96566)

(declare-fun choose!29724 (List!50821 (_ BitVec 64) List!50820) Unit!96566)

(assert (=> d!1397977 (= lt!1705675 (choose!29724 lt!1705439 (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(declare-fun e!2822618 () Bool)

(assert (=> d!1397977 e!2822618))

(declare-fun res!1886541 () Bool)

(assert (=> d!1397977 (=> (not res!1886541) (not e!2822618))))

(assert (=> d!1397977 (= res!1886541 (isStrictlySorted!444 lt!1705439))))

(assert (=> d!1397977 (= (lemmaContainsTupThenGetReturnValue!700 lt!1705439 (_1!28868 lt!1705002) (_2!28868 lt!1705002)) lt!1705675)))

(declare-fun b!4530023 () Bool)

(declare-fun res!1886542 () Bool)

(assert (=> b!4530023 (=> (not res!1886542) (not e!2822618))))

(assert (=> b!4530023 (= res!1886542 (containsKey!1830 lt!1705439 (_1!28868 lt!1705002)))))

(declare-fun b!4530024 () Bool)

(assert (=> b!4530024 (= e!2822618 (contains!13454 lt!1705439 (tuple2!51149 (_1!28868 lt!1705002) (_2!28868 lt!1705002))))))

(assert (= (and d!1397977 res!1886541) b!4530023))

(assert (= (and b!4530023 res!1886542) b!4530024))

(assert (=> d!1397977 m!5285921))

(declare-fun m!5286551 () Bool)

(assert (=> d!1397977 m!5286551))

(declare-fun m!5286553 () Bool)

(assert (=> d!1397977 m!5286553))

(declare-fun m!5286555 () Bool)

(assert (=> b!4530023 m!5286555))

(declare-fun m!5286557 () Bool)

(assert (=> b!4530024 m!5286557))

(assert (=> d!1397761 d!1397977))

(declare-fun b!4530071 () Bool)

(declare-fun e!2822649 () List!50821)

(declare-fun call!315747 () List!50821)

(assert (=> b!4530071 (= e!2822649 call!315747)))

(declare-fun bm!315740 () Bool)

(declare-fun call!315746 () List!50821)

(declare-fun call!315745 () List!50821)

(assert (=> bm!315740 (= call!315746 call!315745)))

(declare-fun e!2822652 () List!50821)

(declare-fun c!773448 () Bool)

(declare-fun b!4530072 () Bool)

(declare-fun c!773451 () Bool)

(assert (=> b!4530072 (= e!2822652 (ite c!773448 (t!357783 (toList!4363 lt!1705004)) (ite c!773451 (Cons!50697 (h!56564 (toList!4363 lt!1705004)) (t!357783 (toList!4363 lt!1705004))) Nil!50697)))))

(declare-fun b!4530073 () Bool)

(declare-fun e!2822651 () Bool)

(declare-fun lt!1705684 () List!50821)

(assert (=> b!4530073 (= e!2822651 (contains!13454 lt!1705684 (tuple2!51149 (_1!28868 lt!1705002) (_2!28868 lt!1705002))))))

(declare-fun b!4530074 () Bool)

(assert (=> b!4530074 (= e!2822649 call!315747)))

(declare-fun b!4530075 () Bool)

(declare-fun res!1886567 () Bool)

(assert (=> b!4530075 (=> (not res!1886567) (not e!2822651))))

(assert (=> b!4530075 (= res!1886567 (containsKey!1830 lt!1705684 (_1!28868 lt!1705002)))))

(declare-fun b!4530076 () Bool)

(assert (=> b!4530076 (= e!2822652 (insertStrictlySorted!422 (t!357783 (toList!4363 lt!1705004)) (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(declare-fun b!4530077 () Bool)

(declare-fun e!2822648 () List!50821)

(assert (=> b!4530077 (= e!2822648 call!315745)))

(declare-fun b!4530078 () Bool)

(assert (=> b!4530078 (= c!773451 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (bvsgt (_1!28868 (h!56564 (toList!4363 lt!1705004))) (_1!28868 lt!1705002))))))

(declare-fun e!2822650 () List!50821)

(assert (=> b!4530078 (= e!2822650 e!2822649)))

(declare-fun bm!315742 () Bool)

(assert (=> bm!315742 (= call!315747 call!315746)))

(declare-fun b!4530079 () Bool)

(assert (=> b!4530079 (= e!2822648 e!2822650)))

(assert (=> b!4530079 (= c!773448 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (= (_1!28868 (h!56564 (toList!4363 lt!1705004))) (_1!28868 lt!1705002))))))

(declare-fun b!4530080 () Bool)

(assert (=> b!4530080 (= e!2822650 call!315746)))

(declare-fun bm!315741 () Bool)

(declare-fun c!773450 () Bool)

(declare-fun $colon$colon!952 (List!50821 tuple2!51148) List!50821)

(assert (=> bm!315741 (= call!315745 ($colon$colon!952 e!2822652 (ite c!773450 (h!56564 (toList!4363 lt!1705004)) (tuple2!51149 (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))))

(declare-fun c!773449 () Bool)

(assert (=> bm!315741 (= c!773449 c!773450)))

(declare-fun d!1397979 () Bool)

(assert (=> d!1397979 e!2822651))

(declare-fun res!1886568 () Bool)

(assert (=> d!1397979 (=> (not res!1886568) (not e!2822651))))

(assert (=> d!1397979 (= res!1886568 (isStrictlySorted!444 lt!1705684))))

(assert (=> d!1397979 (= lt!1705684 e!2822648)))

(assert (=> d!1397979 (= c!773450 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (bvslt (_1!28868 (h!56564 (toList!4363 lt!1705004))) (_1!28868 lt!1705002))))))

(assert (=> d!1397979 (isStrictlySorted!444 (toList!4363 lt!1705004))))

(assert (=> d!1397979 (= (insertStrictlySorted!422 (toList!4363 lt!1705004) (_1!28868 lt!1705002) (_2!28868 lt!1705002)) lt!1705684)))

(assert (= (and d!1397979 c!773450) b!4530077))

(assert (= (and d!1397979 (not c!773450)) b!4530079))

(assert (= (and b!4530079 c!773448) b!4530080))

(assert (= (and b!4530079 (not c!773448)) b!4530078))

(assert (= (and b!4530078 c!773451) b!4530074))

(assert (= (and b!4530078 (not c!773451)) b!4530071))

(assert (= (or b!4530074 b!4530071) bm!315742))

(assert (= (or b!4530080 bm!315742) bm!315740))

(assert (= (or b!4530077 bm!315740) bm!315741))

(assert (= (and bm!315741 c!773449) b!4530076))

(assert (= (and bm!315741 (not c!773449)) b!4530072))

(assert (= (and d!1397979 res!1886568) b!4530075))

(assert (= (and b!4530075 res!1886567) b!4530073))

(declare-fun m!5286619 () Bool)

(assert (=> bm!315741 m!5286619))

(declare-fun m!5286621 () Bool)

(assert (=> b!4530075 m!5286621))

(declare-fun m!5286623 () Bool)

(assert (=> b!4530076 m!5286623))

(declare-fun m!5286625 () Bool)

(assert (=> d!1397979 m!5286625))

(declare-fun m!5286627 () Bool)

(assert (=> d!1397979 m!5286627))

(declare-fun m!5286629 () Bool)

(assert (=> b!4530073 m!5286629))

(assert (=> d!1397761 d!1397979))

(declare-fun d!1398007 () Bool)

(declare-fun res!1886575 () Bool)

(declare-fun e!2822659 () Bool)

(assert (=> d!1398007 (=> res!1886575 e!2822659)))

(assert (=> d!1398007 (= res!1886575 (and ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015))) (= (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))) key!3287)))))

(assert (=> d!1398007 (= (containsKey!1826 (t!357782 (_2!28868 lt!1705015)) key!3287) e!2822659)))

(declare-fun b!4530087 () Bool)

(declare-fun e!2822660 () Bool)

(assert (=> b!4530087 (= e!2822659 e!2822660)))

(declare-fun res!1886576 () Bool)

(assert (=> b!4530087 (=> (not res!1886576) (not e!2822660))))

(assert (=> b!4530087 (= res!1886576 ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015))))))

(declare-fun b!4530088 () Bool)

(assert (=> b!4530088 (= e!2822660 (containsKey!1826 (t!357782 (t!357782 (_2!28868 lt!1705015))) key!3287))))

(assert (= (and d!1398007 (not res!1886575)) b!4530087))

(assert (= (and b!4530087 res!1886576) b!4530088))

(declare-fun m!5286635 () Bool)

(assert (=> b!4530088 m!5286635))

(assert (=> b!4529653 d!1398007))

(declare-fun d!1398011 () Bool)

(assert (=> d!1398011 (= (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287)) (not (isEmpty!28712 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))))))

(declare-fun bs!865114 () Bool)

(assert (= bs!865114 d!1398011))

(assert (=> bs!865114 m!5285661))

(declare-fun m!5286637 () Bool)

(assert (=> bs!865114 m!5286637))

(assert (=> b!4529495 d!1398011))

(declare-fun b!4530089 () Bool)

(declare-fun e!2822661 () Option!11156)

(assert (=> b!4530089 (= e!2822661 (Some!11155 (_2!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun b!4530091 () Bool)

(declare-fun e!2822662 () Option!11156)

(assert (=> b!4530091 (= e!2822662 (getValueByKey!1120 (t!357782 (toList!4364 lt!1705001)) key!3287))))

(declare-fun d!1398013 () Bool)

(declare-fun c!773452 () Bool)

(assert (=> d!1398013 (= c!773452 (and ((_ is Cons!50696) (toList!4364 lt!1705001)) (= (_1!28867 (h!56563 (toList!4364 lt!1705001))) key!3287)))))

(assert (=> d!1398013 (= (getValueByKey!1120 (toList!4364 lt!1705001) key!3287) e!2822661)))

(declare-fun b!4530092 () Bool)

(assert (=> b!4530092 (= e!2822662 None!11155)))

(declare-fun b!4530090 () Bool)

(assert (=> b!4530090 (= e!2822661 e!2822662)))

(declare-fun c!773453 () Bool)

(assert (=> b!4530090 (= c!773453 (and ((_ is Cons!50696) (toList!4364 lt!1705001)) (not (= (_1!28867 (h!56563 (toList!4364 lt!1705001))) key!3287))))))

(assert (= (and d!1398013 c!773452) b!4530089))

(assert (= (and d!1398013 (not c!773452)) b!4530090))

(assert (= (and b!4530090 c!773453) b!4530091))

(assert (= (and b!4530090 (not c!773453)) b!4530092))

(declare-fun m!5286639 () Bool)

(assert (=> b!4530091 m!5286639))

(assert (=> b!4529495 d!1398013))

(assert (=> b!4529716 d!1397735))

(declare-fun d!1398015 () Bool)

(declare-fun lt!1705685 () Bool)

(assert (=> d!1398015 (= lt!1705685 (select (content!8399 e!2822316) key!3287))))

(declare-fun e!2822664 () Bool)

(assert (=> d!1398015 (= lt!1705685 e!2822664)))

(declare-fun res!1886578 () Bool)

(assert (=> d!1398015 (=> (not res!1886578) (not e!2822664))))

(assert (=> d!1398015 (= res!1886578 ((_ is Cons!50699) e!2822316))))

(assert (=> d!1398015 (= (contains!13457 e!2822316 key!3287) lt!1705685)))

(declare-fun b!4530093 () Bool)

(declare-fun e!2822663 () Bool)

(assert (=> b!4530093 (= e!2822664 e!2822663)))

(declare-fun res!1886577 () Bool)

(assert (=> b!4530093 (=> res!1886577 e!2822663)))

(assert (=> b!4530093 (= res!1886577 (= (h!56568 e!2822316) key!3287))))

(declare-fun b!4530094 () Bool)

(assert (=> b!4530094 (= e!2822663 (contains!13457 (t!357785 e!2822316) key!3287))))

(assert (= (and d!1398015 res!1886578) b!4530093))

(assert (= (and b!4530093 (not res!1886577)) b!4530094))

(declare-fun m!5286641 () Bool)

(assert (=> d!1398015 m!5286641))

(declare-fun m!5286643 () Bool)

(assert (=> d!1398015 m!5286643))

(declare-fun m!5286645 () Bool)

(assert (=> b!4530094 m!5286645))

(assert (=> bm!315705 d!1398015))

(declare-fun d!1398017 () Bool)

(assert (=> d!1398017 (= (get!16633 lt!1705382) (v!44798 lt!1705382))))

(assert (=> b!4529531 d!1398017))

(declare-fun d!1398019 () Bool)

(assert (=> d!1398019 (= (isEmpty!28710 lt!1705382) (not ((_ is Some!11152) lt!1705382)))))

(assert (=> d!1397671 d!1398019))

(assert (=> d!1397671 d!1397753))

(declare-fun b!4530100 () Bool)

(declare-fun e!2822669 () Option!11157)

(declare-fun e!2822670 () Option!11157)

(assert (=> b!4530100 (= e!2822669 e!2822670)))

(declare-fun c!773455 () Bool)

(assert (=> b!4530100 (= c!773455 (and ((_ is Cons!50697) (toList!4363 lt!1705486)) (not (= (_1!28868 (h!56564 (toList!4363 lt!1705486))) (_1!28868 lt!1705002)))))))

(declare-fun b!4530101 () Bool)

(assert (=> b!4530101 (= e!2822670 (getValueByKey!1121 (t!357783 (toList!4363 lt!1705486)) (_1!28868 lt!1705002)))))

(declare-fun b!4530099 () Bool)

(assert (=> b!4530099 (= e!2822669 (Some!11156 (_2!28868 (h!56564 (toList!4363 lt!1705486)))))))

(declare-fun d!1398021 () Bool)

(declare-fun c!773454 () Bool)

(assert (=> d!1398021 (= c!773454 (and ((_ is Cons!50697) (toList!4363 lt!1705486)) (= (_1!28868 (h!56564 (toList!4363 lt!1705486))) (_1!28868 lt!1705002))))))

(assert (=> d!1398021 (= (getValueByKey!1121 (toList!4363 lt!1705486) (_1!28868 lt!1705002)) e!2822669)))

(declare-fun b!4530102 () Bool)

(assert (=> b!4530102 (= e!2822670 None!11156)))

(assert (= (and d!1398021 c!773454) b!4530099))

(assert (= (and d!1398021 (not c!773454)) b!4530100))

(assert (= (and b!4530100 c!773455) b!4530101))

(assert (= (and b!4530100 (not c!773455)) b!4530102))

(declare-fun m!5286647 () Bool)

(assert (=> b!4530101 m!5286647))

(assert (=> b!4529692 d!1398021))

(declare-fun bs!865115 () Bool)

(declare-fun b!4530106 () Bool)

(assert (= bs!865115 (and b!4530106 b!4529798)))

(declare-fun lambda!174274 () Int)

(assert (=> bs!865115 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (t!357782 (toList!4364 lt!1705001))) (= lambda!174274 lambda!174244))))

(declare-fun bs!865116 () Bool)

(assert (= bs!865116 (and b!4530106 b!4529790)))

(assert (=> bs!865116 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174274 lambda!174245))))

(declare-fun bs!865117 () Bool)

(assert (= bs!865117 (and b!4530106 b!4529796)))

(assert (=> bs!865117 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705001)) (= lambda!174274 lambda!174246))))

(declare-fun bs!865118 () Bool)

(assert (= bs!865118 (and b!4530106 b!4529816)))

(assert (=> bs!865118 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705010)) (= lambda!174274 lambda!174252))))

(assert (=> b!4530106 true))

(declare-fun bs!865119 () Bool)

(declare-fun b!4530107 () Bool)

(assert (= bs!865119 (and b!4530107 b!4529795)))

(declare-fun lambda!174275 () Int)

(assert (=> bs!865119 (= lambda!174275 lambda!174247)))

(declare-fun bs!865120 () Bool)

(assert (= bs!865120 (and b!4530107 b!4529817)))

(assert (=> bs!865120 (= lambda!174275 lambda!174253)))

(declare-fun d!1398023 () Bool)

(declare-fun e!2822673 () Bool)

(assert (=> d!1398023 e!2822673))

(declare-fun res!1886586 () Bool)

(assert (=> d!1398023 (=> (not res!1886586) (not e!2822673))))

(declare-fun lt!1705686 () List!50823)

(assert (=> d!1398023 (= res!1886586 (noDuplicate!755 lt!1705686))))

(assert (=> d!1398023 (= lt!1705686 (getKeysList!479 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))

(assert (=> d!1398023 (= (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lt!1705686)))

(declare-fun b!4530105 () Bool)

(declare-fun res!1886587 () Bool)

(assert (=> b!4530105 (=> (not res!1886587) (not e!2822673))))

(assert (=> b!4530105 (= res!1886587 (= (length!366 lt!1705686) (length!367 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))))

(declare-fun res!1886585 () Bool)

(assert (=> b!4530106 (=> (not res!1886585) (not e!2822673))))

(assert (=> b!4530106 (= res!1886585 (forall!10306 lt!1705686 lambda!174274))))

(assert (=> b!4530107 (= e!2822673 (= (content!8399 lt!1705686) (content!8399 (map!11155 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lambda!174275))))))

(assert (= (and d!1398023 res!1886586) b!4530105))

(assert (= (and b!4530105 res!1886587) b!4530106))

(assert (= (and b!4530106 res!1886585) b!4530107))

(declare-fun m!5286651 () Bool)

(assert (=> d!1398023 m!5286651))

(assert (=> d!1398023 m!5285623))

(declare-fun m!5286653 () Bool)

(assert (=> b!4530105 m!5286653))

(declare-fun m!5286655 () Bool)

(assert (=> b!4530105 m!5286655))

(declare-fun m!5286657 () Bool)

(assert (=> b!4530106 m!5286657))

(declare-fun m!5286659 () Bool)

(assert (=> b!4530107 m!5286659))

(declare-fun m!5286661 () Bool)

(assert (=> b!4530107 m!5286661))

(assert (=> b!4530107 m!5286661))

(declare-fun m!5286665 () Bool)

(assert (=> b!4530107 m!5286665))

(assert (=> b!4529483 d!1398023))

(declare-fun lt!1705692 () Bool)

(declare-fun d!1398029 () Bool)

(assert (=> d!1398029 (= lt!1705692 (select (content!8398 (_2!28868 (h!56564 (toList!4363 lm!1477)))) (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))))))

(declare-fun e!2822682 () Bool)

(assert (=> d!1398029 (= lt!1705692 e!2822682)))

(declare-fun res!1886594 () Bool)

(assert (=> d!1398029 (=> (not res!1886594) (not e!2822682))))

(assert (=> d!1398029 (= res!1886594 ((_ is Cons!50696) (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(assert (=> d!1398029 (= (contains!13458 (_2!28868 (h!56564 (toList!4363 lm!1477))) (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))) lt!1705692)))

(declare-fun b!4530118 () Bool)

(declare-fun e!2822683 () Bool)

(assert (=> b!4530118 (= e!2822682 e!2822683)))

(declare-fun res!1886595 () Bool)

(assert (=> b!4530118 (=> res!1886595 e!2822683)))

(assert (=> b!4530118 (= res!1886595 (= (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477)))) (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))))))

(declare-fun b!4530119 () Bool)

(assert (=> b!4530119 (= e!2822683 (contains!13458 (t!357782 (_2!28868 (h!56564 (toList!4363 lm!1477)))) (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026)))))))

(assert (= (and d!1398029 res!1886594) b!4530118))

(assert (= (and b!4530118 (not res!1886595)) b!4530119))

(declare-fun m!5286675 () Bool)

(assert (=> d!1398029 m!5286675))

(declare-fun m!5286677 () Bool)

(assert (=> d!1398029 m!5286677))

(declare-fun m!5286679 () Bool)

(assert (=> b!4530119 m!5286679))

(assert (=> b!4529564 d!1398029))

(declare-fun bs!865122 () Bool)

(declare-fun b!4530130 () Bool)

(assert (= bs!865122 (and b!4530130 b!4530106)))

(declare-fun lambda!174276 () Int)

(assert (=> bs!865122 (= (= (t!357782 (toList!4364 lt!1705010)) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174276 lambda!174274))))

(declare-fun bs!865123 () Bool)

(assert (= bs!865123 (and b!4530130 b!4529816)))

(assert (=> bs!865123 (= (= (t!357782 (toList!4364 lt!1705010)) (toList!4364 lt!1705010)) (= lambda!174276 lambda!174252))))

(declare-fun bs!865124 () Bool)

(assert (= bs!865124 (and b!4530130 b!4529796)))

(assert (=> bs!865124 (= (= (t!357782 (toList!4364 lt!1705010)) (toList!4364 lt!1705001)) (= lambda!174276 lambda!174246))))

(declare-fun bs!865125 () Bool)

(assert (= bs!865125 (and b!4530130 b!4529798)))

(assert (=> bs!865125 (= (= (t!357782 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705001))) (= lambda!174276 lambda!174244))))

(declare-fun bs!865126 () Bool)

(assert (= bs!865126 (and b!4530130 b!4529790)))

(assert (=> bs!865126 (= (= (t!357782 (toList!4364 lt!1705010)) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174276 lambda!174245))))

(assert (=> b!4530130 true))

(declare-fun bs!865127 () Bool)

(declare-fun b!4530122 () Bool)

(assert (= bs!865127 (and b!4530122 b!4530106)))

(declare-fun lambda!174277 () Int)

(assert (=> bs!865127 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010))) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174277 lambda!174274))))

(declare-fun bs!865128 () Bool)

(assert (= bs!865128 (and b!4530122 b!4529816)))

(assert (=> bs!865128 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010))) (toList!4364 lt!1705010)) (= lambda!174277 lambda!174252))))

(declare-fun bs!865129 () Bool)

(assert (= bs!865129 (and b!4530122 b!4529796)))

(assert (=> bs!865129 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010))) (toList!4364 lt!1705001)) (= lambda!174277 lambda!174246))))

(declare-fun bs!865130 () Bool)

(assert (= bs!865130 (and b!4530122 b!4530130)))

(assert (=> bs!865130 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010))) (t!357782 (toList!4364 lt!1705010))) (= lambda!174277 lambda!174276))))

(declare-fun bs!865131 () Bool)

(assert (= bs!865131 (and b!4530122 b!4529798)))

(assert (=> bs!865131 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010))) (t!357782 (toList!4364 lt!1705001))) (= lambda!174277 lambda!174244))))

(declare-fun bs!865132 () Bool)

(assert (= bs!865132 (and b!4530122 b!4529790)))

(assert (=> bs!865132 (= (= (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010))) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174277 lambda!174245))))

(assert (=> b!4530122 true))

(declare-fun bs!865133 () Bool)

(declare-fun b!4530128 () Bool)

(assert (= bs!865133 (and b!4530128 b!4530106)))

(declare-fun lambda!174278 () Int)

(assert (=> bs!865133 (= (= (toList!4364 lt!1705010) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174278 lambda!174274))))

(declare-fun bs!865134 () Bool)

(assert (= bs!865134 (and b!4530128 b!4529816)))

(assert (=> bs!865134 (= lambda!174278 lambda!174252)))

(declare-fun bs!865135 () Bool)

(assert (= bs!865135 (and b!4530128 b!4529796)))

(assert (=> bs!865135 (= (= (toList!4364 lt!1705010) (toList!4364 lt!1705001)) (= lambda!174278 lambda!174246))))

(declare-fun bs!865136 () Bool)

(assert (= bs!865136 (and b!4530128 b!4530122)))

(assert (=> bs!865136 (= (= (toList!4364 lt!1705010) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174278 lambda!174277))))

(declare-fun bs!865138 () Bool)

(assert (= bs!865138 (and b!4530128 b!4530130)))

(assert (=> bs!865138 (= (= (toList!4364 lt!1705010) (t!357782 (toList!4364 lt!1705010))) (= lambda!174278 lambda!174276))))

(declare-fun bs!865139 () Bool)

(assert (= bs!865139 (and b!4530128 b!4529798)))

(assert (=> bs!865139 (= (= (toList!4364 lt!1705010) (t!357782 (toList!4364 lt!1705001))) (= lambda!174278 lambda!174244))))

(declare-fun bs!865140 () Bool)

(assert (= bs!865140 (and b!4530128 b!4529790)))

(assert (=> bs!865140 (= (= (toList!4364 lt!1705010) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174278 lambda!174245))))

(assert (=> b!4530128 true))

(declare-fun bs!865141 () Bool)

(declare-fun b!4530127 () Bool)

(assert (= bs!865141 (and b!4530127 b!4529795)))

(declare-fun lambda!174279 () Int)

(assert (=> bs!865141 (= lambda!174279 lambda!174247)))

(declare-fun bs!865142 () Bool)

(assert (= bs!865142 (and b!4530127 b!4529817)))

(assert (=> bs!865142 (= lambda!174279 lambda!174253)))

(declare-fun bs!865143 () Bool)

(assert (= bs!865143 (and b!4530127 b!4530107)))

(assert (=> bs!865143 (= lambda!174279 lambda!174275)))

(declare-fun e!2822690 () List!50823)

(assert (=> b!4530122 (= e!2822690 (Cons!50699 (_1!28867 (h!56563 (toList!4364 lt!1705010))) (getKeysList!479 (t!357782 (toList!4364 lt!1705010)))))))

(declare-fun c!773460 () Bool)

(assert (=> b!4530122 (= c!773460 (containsKey!1829 (t!357782 (toList!4364 lt!1705010)) (_1!28867 (h!56563 (toList!4364 lt!1705010)))))))

(declare-fun lt!1705699 () Unit!96566)

(declare-fun e!2822688 () Unit!96566)

(assert (=> b!4530122 (= lt!1705699 e!2822688)))

(declare-fun c!773458 () Bool)

(assert (=> b!4530122 (= c!773458 (contains!13457 (getKeysList!479 (t!357782 (toList!4364 lt!1705010))) (_1!28867 (h!56563 (toList!4364 lt!1705010)))))))

(declare-fun lt!1705697 () Unit!96566)

(declare-fun e!2822691 () Unit!96566)

(assert (=> b!4530122 (= lt!1705697 e!2822691)))

(declare-fun lt!1705695 () List!50823)

(assert (=> b!4530122 (= lt!1705695 (getKeysList!479 (t!357782 (toList!4364 lt!1705010))))))

(declare-fun lt!1705694 () Unit!96566)

(assert (=> b!4530122 (= lt!1705694 (lemmaForallContainsAddHeadPreserves!176 (t!357782 (toList!4364 lt!1705010)) lt!1705695 (h!56563 (toList!4364 lt!1705010))))))

(assert (=> b!4530122 (forall!10306 lt!1705695 lambda!174277)))

(declare-fun lt!1705693 () Unit!96566)

(assert (=> b!4530122 (= lt!1705693 lt!1705694)))

(declare-fun b!4530123 () Bool)

(assert (=> b!4530123 (= e!2822690 Nil!50699)))

(declare-fun b!4530124 () Bool)

(assert (=> b!4530124 false))

(declare-fun Unit!96731 () Unit!96566)

(assert (=> b!4530124 (= e!2822688 Unit!96731)))

(declare-fun b!4530125 () Bool)

(declare-fun res!1886601 () Bool)

(declare-fun e!2822689 () Bool)

(assert (=> b!4530125 (=> (not res!1886601) (not e!2822689))))

(declare-fun lt!1705696 () List!50823)

(assert (=> b!4530125 (= res!1886601 (= (length!366 lt!1705696) (length!367 (toList!4364 lt!1705010))))))

(declare-fun b!4530126 () Bool)

(declare-fun Unit!96732 () Unit!96566)

(assert (=> b!4530126 (= e!2822688 Unit!96732)))

(declare-fun d!1398035 () Bool)

(assert (=> d!1398035 e!2822689))

(declare-fun res!1886600 () Bool)

(assert (=> d!1398035 (=> (not res!1886600) (not e!2822689))))

(assert (=> d!1398035 (= res!1886600 (noDuplicate!755 lt!1705696))))

(assert (=> d!1398035 (= lt!1705696 e!2822690)))

(declare-fun c!773459 () Bool)

(assert (=> d!1398035 (= c!773459 ((_ is Cons!50696) (toList!4364 lt!1705010)))))

(assert (=> d!1398035 (invariantList!1031 (toList!4364 lt!1705010))))

(assert (=> d!1398035 (= (getKeysList!479 (toList!4364 lt!1705010)) lt!1705696)))

(assert (=> b!4530127 (= e!2822689 (= (content!8399 lt!1705696) (content!8399 (map!11155 (toList!4364 lt!1705010) lambda!174279))))))

(declare-fun res!1886602 () Bool)

(assert (=> b!4530128 (=> (not res!1886602) (not e!2822689))))

(assert (=> b!4530128 (= res!1886602 (forall!10306 lt!1705696 lambda!174278))))

(declare-fun b!4530129 () Bool)

(declare-fun Unit!96733 () Unit!96566)

(assert (=> b!4530129 (= e!2822691 Unit!96733)))

(assert (=> b!4530130 false))

(declare-fun lt!1705698 () Unit!96566)

(assert (=> b!4530130 (= lt!1705698 (forallContained!2560 (getKeysList!479 (t!357782 (toList!4364 lt!1705010))) lambda!174276 (_1!28867 (h!56563 (toList!4364 lt!1705010)))))))

(declare-fun Unit!96734 () Unit!96566)

(assert (=> b!4530130 (= e!2822691 Unit!96734)))

(assert (= (and d!1398035 c!773459) b!4530122))

(assert (= (and d!1398035 (not c!773459)) b!4530123))

(assert (= (and b!4530122 c!773460) b!4530124))

(assert (= (and b!4530122 (not c!773460)) b!4530126))

(assert (= (and b!4530122 c!773458) b!4530130))

(assert (= (and b!4530122 (not c!773458)) b!4530129))

(assert (= (and d!1398035 res!1886600) b!4530125))

(assert (= (and b!4530125 res!1886601) b!4530128))

(assert (= (and b!4530128 res!1886602) b!4530127))

(declare-fun m!5286685 () Bool)

(assert (=> b!4530122 m!5286685))

(declare-fun m!5286687 () Bool)

(assert (=> b!4530122 m!5286687))

(declare-fun m!5286689 () Bool)

(assert (=> b!4530122 m!5286689))

(assert (=> b!4530122 m!5286687))

(declare-fun m!5286691 () Bool)

(assert (=> b!4530122 m!5286691))

(declare-fun m!5286693 () Bool)

(assert (=> b!4530122 m!5286693))

(declare-fun m!5286695 () Bool)

(assert (=> b!4530125 m!5286695))

(assert (=> b!4530125 m!5286229))

(declare-fun m!5286697 () Bool)

(assert (=> d!1398035 m!5286697))

(assert (=> d!1398035 m!5286159))

(assert (=> b!4530130 m!5286687))

(assert (=> b!4530130 m!5286687))

(declare-fun m!5286699 () Bool)

(assert (=> b!4530130 m!5286699))

(declare-fun m!5286701 () Bool)

(assert (=> b!4530127 m!5286701))

(declare-fun m!5286703 () Bool)

(assert (=> b!4530127 m!5286703))

(assert (=> b!4530127 m!5286703))

(declare-fun m!5286705 () Bool)

(assert (=> b!4530127 m!5286705))

(declare-fun m!5286707 () Bool)

(assert (=> b!4530128 m!5286707))

(assert (=> b!4529568 d!1398035))

(declare-fun d!1398041 () Bool)

(assert (=> d!1398041 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344))))

(declare-fun lt!1705702 () Unit!96566)

(declare-fun choose!29725 (List!50821 (_ BitVec 64)) Unit!96566)

(assert (=> d!1398041 (= lt!1705702 (choose!29725 (toList!4363 lt!1705004) hash!344))))

(declare-fun e!2822702 () Bool)

(assert (=> d!1398041 e!2822702))

(declare-fun res!1886607 () Bool)

(assert (=> d!1398041 (=> (not res!1886607) (not e!2822702))))

(assert (=> d!1398041 (= res!1886607 (isStrictlySorted!444 (toList!4363 lt!1705004)))))

(assert (=> d!1398041 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lt!1705004) hash!344) lt!1705702)))

(declare-fun b!4530149 () Bool)

(assert (=> b!4530149 (= e!2822702 (containsKey!1830 (toList!4363 lt!1705004) hash!344))))

(assert (= (and d!1398041 res!1886607) b!4530149))

(assert (=> d!1398041 m!5285893))

(assert (=> d!1398041 m!5285893))

(assert (=> d!1398041 m!5285977))

(declare-fun m!5286711 () Bool)

(assert (=> d!1398041 m!5286711))

(assert (=> d!1398041 m!5286627))

(assert (=> b!4530149 m!5285973))

(assert (=> b!4529680 d!1398041))

(declare-fun d!1398045 () Bool)

(assert (=> d!1398045 (= (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344)) (not (isEmpty!28715 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344))))))

(declare-fun bs!865144 () Bool)

(assert (= bs!865144 d!1398045))

(assert (=> bs!865144 m!5285893))

(declare-fun m!5286713 () Bool)

(assert (=> bs!865144 m!5286713))

(assert (=> b!4529680 d!1398045))

(declare-fun b!4530151 () Bool)

(declare-fun e!2822703 () Option!11157)

(declare-fun e!2822704 () Option!11157)

(assert (=> b!4530151 (= e!2822703 e!2822704)))

(declare-fun c!773468 () Bool)

(assert (=> b!4530151 (= c!773468 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (not (= (_1!28868 (h!56564 (toList!4363 lt!1705004))) hash!344))))))

(declare-fun b!4530152 () Bool)

(assert (=> b!4530152 (= e!2822704 (getValueByKey!1121 (t!357783 (toList!4363 lt!1705004)) hash!344))))

(declare-fun b!4530150 () Bool)

(assert (=> b!4530150 (= e!2822703 (Some!11156 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(declare-fun d!1398047 () Bool)

(declare-fun c!773467 () Bool)

(assert (=> d!1398047 (= c!773467 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (= (_1!28868 (h!56564 (toList!4363 lt!1705004))) hash!344)))))

(assert (=> d!1398047 (= (getValueByKey!1121 (toList!4363 lt!1705004) hash!344) e!2822703)))

(declare-fun b!4530153 () Bool)

(assert (=> b!4530153 (= e!2822704 None!11156)))

(assert (= (and d!1398047 c!773467) b!4530150))

(assert (= (and d!1398047 (not c!773467)) b!4530151))

(assert (= (and b!4530151 c!773468) b!4530152))

(assert (= (and b!4530151 (not c!773468)) b!4530153))

(declare-fun m!5286715 () Bool)

(assert (=> b!4530152 m!5286715))

(assert (=> b!4529680 d!1398047))

(declare-fun bs!865145 () Bool)

(declare-fun d!1398049 () Bool)

(assert (= bs!865145 (and d!1398049 b!4529387)))

(declare-fun lambda!174280 () Int)

(assert (=> bs!865145 (= lambda!174280 lambda!174166)))

(declare-fun bs!865146 () Bool)

(assert (= bs!865146 (and d!1398049 d!1397915)))

(assert (=> bs!865146 (= (= lt!1705027 lt!1705606) (= lambda!174280 lambda!174257))))

(declare-fun bs!865147 () Bool)

(assert (= bs!865147 (and d!1398049 b!4529972)))

(assert (=> bs!865147 (= (= lt!1705027 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174280 lambda!174260))))

(declare-fun bs!865148 () Bool)

(assert (= bs!865148 (and d!1398049 b!4529733)))

(assert (=> bs!865148 (= (= lt!1705027 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174280 lambda!174232))))

(declare-fun bs!865149 () Bool)

(assert (= bs!865149 (and d!1398049 b!4529691)))

(assert (=> bs!865149 (= (= lt!1705027 lt!1705467) (= lambda!174280 lambda!174223))))

(declare-fun bs!865150 () Bool)

(assert (= bs!865150 (and d!1398049 d!1397935)))

(assert (=> bs!865150 (= (= lt!1705027 lt!1705636) (= lambda!174280 lambda!174264))))

(declare-fun bs!865151 () Bool)

(assert (= bs!865151 (and d!1398049 d!1397821)))

(assert (=> bs!865151 (= (= lt!1705027 lt!1705529) (= lambda!174280 lambda!174234))))

(assert (=> bs!865145 (= (= lt!1705027 lt!1705212) (= lambda!174280 lambda!174167))))

(declare-fun bs!865152 () Bool)

(assert (= bs!865152 (and d!1398049 b!4529384)))

(assert (=> bs!865152 (= lambda!174280 lambda!174165)))

(declare-fun bs!865153 () Bool)

(assert (= bs!865153 (and d!1398049 d!1397819)))

(assert (=> bs!865153 (= (= lt!1705027 lt!1705001) (= lambda!174280 lambda!174230))))

(declare-fun bs!865154 () Bool)

(assert (= bs!865154 (and d!1398049 b!4529273)))

(assert (=> bs!865154 (not (= lambda!174280 lambda!174089))))

(declare-fun bs!865155 () Bool)

(assert (= bs!865155 (and d!1398049 d!1397629)))

(assert (=> bs!865155 (= (= lt!1705027 lt!1705278) (= lambda!174280 lambda!174181))))

(declare-fun bs!865156 () Bool)

(assert (= bs!865156 (and d!1398049 b!4529688)))

(assert (=> bs!865156 (= (= lt!1705027 lt!1705028) (= lambda!174280 lambda!174221))))

(declare-fun bs!865157 () Bool)

(assert (= bs!865157 (and d!1398049 b!4529936)))

(assert (=> bs!865157 (= (= lt!1705027 lt!1705594) (= lambda!174280 lambda!174256))))

(declare-fun bs!865158 () Bool)

(assert (= bs!865158 (and d!1398049 d!1397787)))

(assert (=> bs!865158 (= (= lt!1705027 lt!1705479) (= lambda!174280 lambda!174224))))

(declare-fun bs!865159 () Bool)

(assert (= bs!865159 (and d!1398049 b!4529431)))

(assert (=> bs!865159 (= (= lt!1705027 lt!1705001) (= lambda!174280 lambda!174178))))

(assert (=> bs!865148 (= (= lt!1705027 lt!1705517) (= lambda!174280 lambda!174233))))

(assert (=> bs!865157 (= (= lt!1705027 (-!404 lt!1705001 key!3287)) (= lambda!174280 lambda!174255))))

(declare-fun bs!865160 () Bool)

(assert (= bs!865160 (and d!1398049 b!4529933)))

(assert (=> bs!865160 (= (= lt!1705027 (-!404 lt!1705001 key!3287)) (= lambda!174280 lambda!174254))))

(declare-fun bs!865161 () Bool)

(assert (= bs!865161 (and d!1398049 b!4529434)))

(assert (=> bs!865161 (= (= lt!1705027 lt!1705266) (= lambda!174280 lambda!174180))))

(assert (=> bs!865149 (= (= lt!1705027 lt!1705028) (= lambda!174280 lambda!174222))))

(declare-fun bs!865162 () Bool)

(assert (= bs!865162 (and d!1398049 d!1397779)))

(assert (=> bs!865162 (not (= lambda!174280 lambda!174220))))

(declare-fun bs!865163 () Bool)

(assert (= bs!865163 (and d!1398049 b!4529969)))

(assert (=> bs!865163 (= (= lt!1705027 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174280 lambda!174258))))

(declare-fun bs!865164 () Bool)

(assert (= bs!865164 (and d!1398049 b!4529730)))

(assert (=> bs!865164 (= (= lt!1705027 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174280 lambda!174231))))

(declare-fun bs!865165 () Bool)

(assert (= bs!865165 (and d!1398049 d!1397569)))

(assert (=> bs!865165 (= (= lt!1705027 lt!1705224) (= lambda!174280 lambda!174168))))

(assert (=> bs!865147 (= (= lt!1705027 lt!1705624) (= lambda!174280 lambda!174261))))

(assert (=> bs!865161 (= (= lt!1705027 lt!1705001) (= lambda!174280 lambda!174179))))

(assert (=> d!1398049 true))

(assert (=> d!1398049 (forall!10305 (toList!4364 lt!1705027) lambda!174280)))

(declare-fun lt!1705703 () Unit!96566)

(assert (=> d!1398049 (= lt!1705703 (choose!29716 lt!1705027))))

(assert (=> d!1398049 (= (lemmaContainsAllItsOwnKeys!352 lt!1705027) lt!1705703)))

(declare-fun bs!865166 () Bool)

(assert (= bs!865166 d!1398049))

(declare-fun m!5286717 () Bool)

(assert (=> bs!865166 m!5286717))

(declare-fun m!5286719 () Bool)

(assert (=> bs!865166 m!5286719))

(assert (=> bm!315691 d!1398049))

(declare-fun d!1398051 () Bool)

(declare-fun res!1886608 () Bool)

(declare-fun e!2822705 () Bool)

(assert (=> d!1398051 (=> res!1886608 e!2822705)))

(assert (=> d!1398051 (= res!1886608 (and ((_ is Cons!50696) (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))) (= (_1!28867 (h!56563 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))))) key!3287)))))

(assert (=> d!1398051 (= (containsKey!1826 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477)))) key!3287) e!2822705)))

(declare-fun b!4530154 () Bool)

(declare-fun e!2822706 () Bool)

(assert (=> b!4530154 (= e!2822705 e!2822706)))

(declare-fun res!1886609 () Bool)

(assert (=> b!4530154 (=> (not res!1886609) (not e!2822706))))

(assert (=> b!4530154 (= res!1886609 ((_ is Cons!50696) (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))

(declare-fun b!4530155 () Bool)

(assert (=> b!4530155 (= e!2822706 (containsKey!1826 (t!357782 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(assert (= (and d!1398051 (not res!1886608)) b!4530154))

(assert (= (and b!4530154 res!1886609) b!4530155))

(declare-fun m!5286721 () Bool)

(assert (=> b!4530155 m!5286721))

(assert (=> b!4529588 d!1398051))

(declare-fun d!1398053 () Bool)

(declare-fun lt!1705707 () Bool)

(assert (=> d!1398053 (= lt!1705707 (select (content!8401 (toList!4363 lm!1477)) (h!56564 (toList!4363 lm!1477))))))

(declare-fun e!2822707 () Bool)

(assert (=> d!1398053 (= lt!1705707 e!2822707)))

(declare-fun res!1886611 () Bool)

(assert (=> d!1398053 (=> (not res!1886611) (not e!2822707))))

(assert (=> d!1398053 (= res!1886611 ((_ is Cons!50697) (toList!4363 lm!1477)))))

(assert (=> d!1398053 (= (contains!13454 (toList!4363 lm!1477) (h!56564 (toList!4363 lm!1477))) lt!1705707)))

(declare-fun b!4530156 () Bool)

(declare-fun e!2822708 () Bool)

(assert (=> b!4530156 (= e!2822707 e!2822708)))

(declare-fun res!1886610 () Bool)

(assert (=> b!4530156 (=> res!1886610 e!2822708)))

(assert (=> b!4530156 (= res!1886610 (= (h!56564 (toList!4363 lm!1477)) (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4530157 () Bool)

(assert (=> b!4530157 (= e!2822708 (contains!13454 (t!357783 (toList!4363 lm!1477)) (h!56564 (toList!4363 lm!1477))))))

(assert (= (and d!1398053 res!1886611) b!4530156))

(assert (= (and b!4530156 (not res!1886610)) b!4530157))

(assert (=> d!1398053 m!5286081))

(declare-fun m!5286723 () Bool)

(assert (=> d!1398053 m!5286723))

(declare-fun m!5286725 () Bool)

(assert (=> b!4530157 m!5286725))

(assert (=> b!4529660 d!1398053))

(declare-fun b!4530159 () Bool)

(declare-fun e!2822709 () Option!11157)

(declare-fun e!2822710 () Option!11157)

(assert (=> b!4530159 (= e!2822709 e!2822710)))

(declare-fun c!773470 () Bool)

(assert (=> b!4530159 (= c!773470 (and ((_ is Cons!50697) (toList!4363 lt!1705437)) (not (= (_1!28868 (h!56564 (toList!4363 lt!1705437))) (_1!28868 lt!1705002)))))))

(declare-fun b!4530160 () Bool)

(assert (=> b!4530160 (= e!2822710 (getValueByKey!1121 (t!357783 (toList!4363 lt!1705437)) (_1!28868 lt!1705002)))))

(declare-fun b!4530158 () Bool)

(assert (=> b!4530158 (= e!2822709 (Some!11156 (_2!28868 (h!56564 (toList!4363 lt!1705437)))))))

(declare-fun d!1398055 () Bool)

(declare-fun c!773469 () Bool)

(assert (=> d!1398055 (= c!773469 (and ((_ is Cons!50697) (toList!4363 lt!1705437)) (= (_1!28868 (h!56564 (toList!4363 lt!1705437))) (_1!28868 lt!1705002))))))

(assert (=> d!1398055 (= (getValueByKey!1121 (toList!4363 lt!1705437) (_1!28868 lt!1705002)) e!2822709)))

(declare-fun b!4530161 () Bool)

(assert (=> b!4530161 (= e!2822710 None!11156)))

(assert (= (and d!1398055 c!773469) b!4530158))

(assert (= (and d!1398055 (not c!773469)) b!4530159))

(assert (= (and b!4530159 c!773470) b!4530160))

(assert (= (and b!4530159 (not c!773470)) b!4530161))

(declare-fun m!5286727 () Bool)

(assert (=> b!4530160 m!5286727))

(assert (=> b!4529666 d!1398055))

(declare-fun b!4530162 () Bool)

(declare-fun e!2822711 () Bool)

(assert (=> b!4530162 (= e!2822711 (not (contains!13457 (keys!17626 (extractMap!1234 (toList!4363 lt!1705004))) key!3287)))))

(declare-fun b!4530163 () Bool)

(declare-fun e!2822715 () Unit!96566)

(declare-fun e!2822716 () Unit!96566)

(assert (=> b!4530163 (= e!2822715 e!2822716)))

(declare-fun c!773473 () Bool)

(declare-fun call!315748 () Bool)

(assert (=> b!4530163 (= c!773473 call!315748)))

(declare-fun b!4530164 () Bool)

(declare-fun e!2822712 () Bool)

(declare-fun e!2822713 () Bool)

(assert (=> b!4530164 (= e!2822712 e!2822713)))

(declare-fun res!1886613 () Bool)

(assert (=> b!4530164 (=> (not res!1886613) (not e!2822713))))

(assert (=> b!4530164 (= res!1886613 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287)))))

(declare-fun b!4530165 () Bool)

(declare-fun e!2822714 () List!50823)

(assert (=> b!4530165 (= e!2822714 (getKeysList!479 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004)))))))

(declare-fun b!4530166 () Bool)

(assert (=> b!4530166 (= e!2822713 (contains!13457 (keys!17626 (extractMap!1234 (toList!4363 lt!1705004))) key!3287))))

(declare-fun d!1398057 () Bool)

(assert (=> d!1398057 e!2822712))

(declare-fun res!1886614 () Bool)

(assert (=> d!1398057 (=> res!1886614 e!2822712)))

(assert (=> d!1398057 (= res!1886614 e!2822711)))

(declare-fun res!1886612 () Bool)

(assert (=> d!1398057 (=> (not res!1886612) (not e!2822711))))

(declare-fun lt!1705711 () Bool)

(assert (=> d!1398057 (= res!1886612 (not lt!1705711))))

(declare-fun lt!1705712 () Bool)

(assert (=> d!1398057 (= lt!1705711 lt!1705712)))

(declare-fun lt!1705713 () Unit!96566)

(assert (=> d!1398057 (= lt!1705713 e!2822715)))

(declare-fun c!773471 () Bool)

(assert (=> d!1398057 (= c!773471 lt!1705712)))

(assert (=> d!1398057 (= lt!1705712 (containsKey!1829 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287))))

(assert (=> d!1398057 (= (contains!13455 (extractMap!1234 (toList!4363 lt!1705004)) key!3287) lt!1705711)))

(declare-fun b!4530167 () Bool)

(assert (=> b!4530167 (= e!2822714 (keys!17626 (extractMap!1234 (toList!4363 lt!1705004))))))

(declare-fun b!4530168 () Bool)

(declare-fun Unit!96736 () Unit!96566)

(assert (=> b!4530168 (= e!2822716 Unit!96736)))

(declare-fun bm!315743 () Bool)

(assert (=> bm!315743 (= call!315748 (contains!13457 e!2822714 key!3287))))

(declare-fun c!773472 () Bool)

(assert (=> bm!315743 (= c!773472 c!773471)))

(declare-fun b!4530169 () Bool)

(declare-fun lt!1705709 () Unit!96566)

(assert (=> b!4530169 (= e!2822715 lt!1705709)))

(declare-fun lt!1705710 () Unit!96566)

(assert (=> b!4530169 (= lt!1705710 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287))))

(assert (=> b!4530169 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287))))

(declare-fun lt!1705714 () Unit!96566)

(assert (=> b!4530169 (= lt!1705714 lt!1705710)))

(assert (=> b!4530169 (= lt!1705709 (lemmaInListThenGetKeysListContains!475 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287))))

(assert (=> b!4530169 call!315748))

(declare-fun b!4530170 () Bool)

(assert (=> b!4530170 false))

(declare-fun lt!1705708 () Unit!96566)

(declare-fun lt!1705715 () Unit!96566)

(assert (=> b!4530170 (= lt!1705708 lt!1705715)))

(assert (=> b!4530170 (containsKey!1829 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287)))

(assert (=> b!4530170 (= lt!1705715 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287))))

(declare-fun Unit!96737 () Unit!96566)

(assert (=> b!4530170 (= e!2822716 Unit!96737)))

(assert (= (and d!1398057 c!773471) b!4530169))

(assert (= (and d!1398057 (not c!773471)) b!4530163))

(assert (= (and b!4530163 c!773473) b!4530170))

(assert (= (and b!4530163 (not c!773473)) b!4530168))

(assert (= (or b!4530169 b!4530163) bm!315743))

(assert (= (and bm!315743 c!773472) b!4530165))

(assert (= (and bm!315743 (not c!773472)) b!4530167))

(assert (= (and d!1398057 res!1886612) b!4530162))

(assert (= (and d!1398057 (not res!1886614)) b!4530164))

(assert (= (and b!4530164 res!1886613) b!4530166))

(assert (=> b!4530162 m!5285141))

(declare-fun m!5286729 () Bool)

(assert (=> b!4530162 m!5286729))

(assert (=> b!4530162 m!5286729))

(declare-fun m!5286731 () Bool)

(assert (=> b!4530162 m!5286731))

(declare-fun m!5286735 () Bool)

(assert (=> b!4530169 m!5286735))

(declare-fun m!5286737 () Bool)

(assert (=> b!4530169 m!5286737))

(assert (=> b!4530169 m!5286737))

(declare-fun m!5286741 () Bool)

(assert (=> b!4530169 m!5286741))

(declare-fun m!5286743 () Bool)

(assert (=> b!4530169 m!5286743))

(assert (=> b!4530167 m!5285141))

(assert (=> b!4530167 m!5286729))

(assert (=> b!4530164 m!5286737))

(assert (=> b!4530164 m!5286737))

(assert (=> b!4530164 m!5286741))

(declare-fun m!5286745 () Bool)

(assert (=> d!1398057 m!5286745))

(declare-fun m!5286747 () Bool)

(assert (=> b!4530165 m!5286747))

(assert (=> b!4530166 m!5285141))

(assert (=> b!4530166 m!5286729))

(assert (=> b!4530166 m!5286729))

(assert (=> b!4530166 m!5286731))

(assert (=> b!4530170 m!5286745))

(declare-fun m!5286749 () Bool)

(assert (=> b!4530170 m!5286749))

(declare-fun m!5286751 () Bool)

(assert (=> bm!315743 m!5286751))

(assert (=> d!1397665 d!1398057))

(assert (=> d!1397665 d!1397669))

(declare-fun d!1398061 () Bool)

(assert (=> d!1398061 (contains!13455 (extractMap!1234 (toList!4363 lt!1705004)) key!3287)))

(assert (=> d!1398061 true))

(declare-fun _$34!703 () Unit!96566)

(assert (=> d!1398061 (= (choose!29703 lt!1705004 key!3287 hashF!1107) _$34!703)))

(declare-fun bs!865207 () Bool)

(assert (= bs!865207 d!1398061))

(assert (=> bs!865207 m!5285141))

(assert (=> bs!865207 m!5285141))

(assert (=> bs!865207 m!5285649))

(assert (=> d!1397665 d!1398061))

(declare-fun d!1398069 () Bool)

(declare-fun res!1886627 () Bool)

(declare-fun e!2822730 () Bool)

(assert (=> d!1398069 (=> res!1886627 e!2822730)))

(assert (=> d!1398069 (= res!1886627 ((_ is Nil!50697) (toList!4363 lt!1705004)))))

(assert (=> d!1398069 (= (forall!10303 (toList!4363 lt!1705004) lambda!174190) e!2822730)))

(declare-fun b!4530191 () Bool)

(declare-fun e!2822731 () Bool)

(assert (=> b!4530191 (= e!2822730 e!2822731)))

(declare-fun res!1886628 () Bool)

(assert (=> b!4530191 (=> (not res!1886628) (not e!2822731))))

(assert (=> b!4530191 (= res!1886628 (dynLambda!21186 lambda!174190 (h!56564 (toList!4363 lt!1705004))))))

(declare-fun b!4530192 () Bool)

(assert (=> b!4530192 (= e!2822731 (forall!10303 (t!357783 (toList!4363 lt!1705004)) lambda!174190))))

(assert (= (and d!1398069 (not res!1886627)) b!4530191))

(assert (= (and b!4530191 res!1886628) b!4530192))

(declare-fun b_lambda!156405 () Bool)

(assert (=> (not b_lambda!156405) (not b!4530191)))

(declare-fun m!5286775 () Bool)

(assert (=> b!4530191 m!5286775))

(declare-fun m!5286777 () Bool)

(assert (=> b!4530192 m!5286777))

(assert (=> d!1397665 d!1398069))

(declare-fun d!1398071 () Bool)

(declare-fun res!1886629 () Bool)

(declare-fun e!2822732 () Bool)

(assert (=> d!1398071 (=> res!1886629 e!2822732)))

(assert (=> d!1398071 (= res!1886629 (and ((_ is Cons!50696) (t!357782 lt!1705019)) (= (_1!28867 (h!56563 (t!357782 lt!1705019))) key!3287)))))

(assert (=> d!1398071 (= (containsKey!1826 (t!357782 lt!1705019) key!3287) e!2822732)))

(declare-fun b!4530193 () Bool)

(declare-fun e!2822733 () Bool)

(assert (=> b!4530193 (= e!2822732 e!2822733)))

(declare-fun res!1886630 () Bool)

(assert (=> b!4530193 (=> (not res!1886630) (not e!2822733))))

(assert (=> b!4530193 (= res!1886630 ((_ is Cons!50696) (t!357782 lt!1705019)))))

(declare-fun b!4530194 () Bool)

(assert (=> b!4530194 (= e!2822733 (containsKey!1826 (t!357782 (t!357782 lt!1705019)) key!3287))))

(assert (= (and d!1398071 (not res!1886629)) b!4530193))

(assert (= (and b!4530193 res!1886630) b!4530194))

(declare-fun m!5286779 () Bool)

(assert (=> b!4530194 m!5286779))

(assert (=> b!4529607 d!1398071))

(declare-fun d!1398073 () Bool)

(declare-fun res!1886631 () Bool)

(declare-fun e!2822734 () Bool)

(assert (=> d!1398073 (=> res!1886631 e!2822734)))

(assert (=> d!1398073 (= res!1886631 (and ((_ is Cons!50696) (toList!4364 lt!1705010)) (= (_1!28867 (h!56563 (toList!4364 lt!1705010))) key!3287)))))

(assert (=> d!1398073 (= (containsKey!1829 (toList!4364 lt!1705010) key!3287) e!2822734)))

(declare-fun b!4530195 () Bool)

(declare-fun e!2822735 () Bool)

(assert (=> b!4530195 (= e!2822734 e!2822735)))

(declare-fun res!1886632 () Bool)

(assert (=> b!4530195 (=> (not res!1886632) (not e!2822735))))

(assert (=> b!4530195 (= res!1886632 ((_ is Cons!50696) (toList!4364 lt!1705010)))))

(declare-fun b!4530196 () Bool)

(assert (=> b!4530196 (= e!2822735 (containsKey!1829 (t!357782 (toList!4364 lt!1705010)) key!3287))))

(assert (= (and d!1398073 (not res!1886631)) b!4530195))

(assert (= (and b!4530195 res!1886632) b!4530196))

(declare-fun m!5286781 () Bool)

(assert (=> b!4530196 m!5286781))

(assert (=> d!1397699 d!1398073))

(declare-fun bs!865216 () Bool)

(declare-fun d!1398075 () Bool)

(assert (= bs!865216 (and d!1398075 b!4529387)))

(declare-fun lambda!174289 () Int)

(assert (=> bs!865216 (= (= lt!1705028 lt!1705027) (= lambda!174289 lambda!174166))))

(declare-fun bs!865217 () Bool)

(assert (= bs!865217 (and d!1398075 d!1397915)))

(assert (=> bs!865217 (= (= lt!1705028 lt!1705606) (= lambda!174289 lambda!174257))))

(declare-fun bs!865218 () Bool)

(assert (= bs!865218 (and d!1398075 b!4529972)))

(assert (=> bs!865218 (= (= lt!1705028 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174289 lambda!174260))))

(declare-fun bs!865219 () Bool)

(assert (= bs!865219 (and d!1398075 b!4529733)))

(assert (=> bs!865219 (= (= lt!1705028 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174289 lambda!174232))))

(declare-fun bs!865220 () Bool)

(assert (= bs!865220 (and d!1398075 b!4529691)))

(assert (=> bs!865220 (= (= lt!1705028 lt!1705467) (= lambda!174289 lambda!174223))))

(declare-fun bs!865221 () Bool)

(assert (= bs!865221 (and d!1398075 d!1397935)))

(assert (=> bs!865221 (= (= lt!1705028 lt!1705636) (= lambda!174289 lambda!174264))))

(declare-fun bs!865222 () Bool)

(assert (= bs!865222 (and d!1398075 d!1397821)))

(assert (=> bs!865222 (= (= lt!1705028 lt!1705529) (= lambda!174289 lambda!174234))))

(assert (=> bs!865216 (= (= lt!1705028 lt!1705212) (= lambda!174289 lambda!174167))))

(declare-fun bs!865223 () Bool)

(assert (= bs!865223 (and d!1398075 b!4529384)))

(assert (=> bs!865223 (= (= lt!1705028 lt!1705027) (= lambda!174289 lambda!174165))))

(declare-fun bs!865224 () Bool)

(assert (= bs!865224 (and d!1398075 d!1397819)))

(assert (=> bs!865224 (= (= lt!1705028 lt!1705001) (= lambda!174289 lambda!174230))))

(declare-fun bs!865225 () Bool)

(assert (= bs!865225 (and d!1398075 b!4529273)))

(assert (=> bs!865225 (not (= lambda!174289 lambda!174089))))

(declare-fun bs!865226 () Bool)

(assert (= bs!865226 (and d!1398075 d!1397629)))

(assert (=> bs!865226 (= (= lt!1705028 lt!1705278) (= lambda!174289 lambda!174181))))

(declare-fun bs!865227 () Bool)

(assert (= bs!865227 (and d!1398075 b!4529688)))

(assert (=> bs!865227 (= lambda!174289 lambda!174221)))

(declare-fun bs!865228 () Bool)

(assert (= bs!865228 (and d!1398075 b!4529936)))

(assert (=> bs!865228 (= (= lt!1705028 lt!1705594) (= lambda!174289 lambda!174256))))

(declare-fun bs!865229 () Bool)

(assert (= bs!865229 (and d!1398075 d!1397787)))

(assert (=> bs!865229 (= (= lt!1705028 lt!1705479) (= lambda!174289 lambda!174224))))

(declare-fun bs!865230 () Bool)

(assert (= bs!865230 (and d!1398075 b!4529431)))

(assert (=> bs!865230 (= (= lt!1705028 lt!1705001) (= lambda!174289 lambda!174178))))

(assert (=> bs!865219 (= (= lt!1705028 lt!1705517) (= lambda!174289 lambda!174233))))

(assert (=> bs!865228 (= (= lt!1705028 (-!404 lt!1705001 key!3287)) (= lambda!174289 lambda!174255))))

(declare-fun bs!865231 () Bool)

(assert (= bs!865231 (and d!1398075 b!4529933)))

(assert (=> bs!865231 (= (= lt!1705028 (-!404 lt!1705001 key!3287)) (= lambda!174289 lambda!174254))))

(declare-fun bs!865232 () Bool)

(assert (= bs!865232 (and d!1398075 b!4529434)))

(assert (=> bs!865232 (= (= lt!1705028 lt!1705266) (= lambda!174289 lambda!174180))))

(declare-fun bs!865233 () Bool)

(assert (= bs!865233 (and d!1398075 d!1398049)))

(assert (=> bs!865233 (= (= lt!1705028 lt!1705027) (= lambda!174289 lambda!174280))))

(assert (=> bs!865220 (= lambda!174289 lambda!174222)))

(declare-fun bs!865234 () Bool)

(assert (= bs!865234 (and d!1398075 d!1397779)))

(assert (=> bs!865234 (not (= lambda!174289 lambda!174220))))

(declare-fun bs!865235 () Bool)

(assert (= bs!865235 (and d!1398075 b!4529969)))

(assert (=> bs!865235 (= (= lt!1705028 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174289 lambda!174258))))

(declare-fun bs!865236 () Bool)

(assert (= bs!865236 (and d!1398075 b!4529730)))

(assert (=> bs!865236 (= (= lt!1705028 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174289 lambda!174231))))

(declare-fun bs!865237 () Bool)

(assert (= bs!865237 (and d!1398075 d!1397569)))

(assert (=> bs!865237 (= (= lt!1705028 lt!1705224) (= lambda!174289 lambda!174168))))

(assert (=> bs!865218 (= (= lt!1705028 lt!1705624) (= lambda!174289 lambda!174261))))

(assert (=> bs!865232 (= (= lt!1705028 lt!1705001) (= lambda!174289 lambda!174179))))

(assert (=> d!1398075 true))

(assert (=> d!1398075 (forall!10305 (toList!4364 lt!1705028) lambda!174289)))

(declare-fun lt!1705741 () Unit!96566)

(assert (=> d!1398075 (= lt!1705741 (choose!29716 lt!1705028))))

(assert (=> d!1398075 (= (lemmaContainsAllItsOwnKeys!352 lt!1705028) lt!1705741)))

(declare-fun bs!865241 () Bool)

(assert (= bs!865241 d!1398075))

(declare-fun m!5286783 () Bool)

(assert (=> bs!865241 m!5286783))

(declare-fun m!5286785 () Bool)

(assert (=> bs!865241 m!5286785))

(assert (=> bm!315707 d!1398075))

(declare-fun d!1398077 () Bool)

(declare-fun res!1886633 () Bool)

(declare-fun e!2822736 () Bool)

(assert (=> d!1398077 (=> res!1886633 e!2822736)))

(assert (=> d!1398077 (= res!1886633 ((_ is Nil!50696) (toList!4364 lt!1705027)))))

(assert (=> d!1398077 (= (forall!10305 (toList!4364 lt!1705027) lambda!174167) e!2822736)))

(declare-fun b!4530197 () Bool)

(declare-fun e!2822737 () Bool)

(assert (=> b!4530197 (= e!2822736 e!2822737)))

(declare-fun res!1886634 () Bool)

(assert (=> b!4530197 (=> (not res!1886634) (not e!2822737))))

(assert (=> b!4530197 (= res!1886634 (dynLambda!21188 lambda!174167 (h!56563 (toList!4364 lt!1705027))))))

(declare-fun b!4530198 () Bool)

(assert (=> b!4530198 (= e!2822737 (forall!10305 (t!357782 (toList!4364 lt!1705027)) lambda!174167))))

(assert (= (and d!1398077 (not res!1886633)) b!4530197))

(assert (= (and b!4530197 res!1886634) b!4530198))

(declare-fun b_lambda!156407 () Bool)

(assert (=> (not b_lambda!156407) (not b!4530197)))

(declare-fun m!5286787 () Bool)

(assert (=> b!4530197 m!5286787))

(declare-fun m!5286789 () Bool)

(assert (=> b!4530198 m!5286789))

(assert (=> b!4529383 d!1398077))

(declare-fun d!1398079 () Bool)

(assert (=> d!1398079 (dynLambda!21186 lambda!174087 (h!56564 (toList!4363 lm!1477)))))

(assert (=> d!1398079 true))

(declare-fun _$7!1894 () Unit!96566)

(assert (=> d!1398079 (= (choose!29704 (toList!4363 lm!1477) lambda!174087 (h!56564 (toList!4363 lm!1477))) _$7!1894)))

(declare-fun b_lambda!156409 () Bool)

(assert (=> (not b_lambda!156409) (not d!1398079)))

(declare-fun bs!865249 () Bool)

(assert (= bs!865249 d!1398079))

(assert (=> bs!865249 m!5285545))

(assert (=> d!1397755 d!1398079))

(assert (=> d!1397755 d!1397641))

(declare-fun d!1398081 () Bool)

(assert (=> d!1398081 (= (get!16635 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344)) (v!44806 (getValueByKey!1121 (toList!4363 lt!1705004) hash!344)))))

(assert (=> d!1397749 d!1398081))

(assert (=> d!1397749 d!1398047))

(declare-fun d!1398083 () Bool)

(declare-fun e!2822739 () Bool)

(assert (=> d!1398083 e!2822739))

(declare-fun res!1886635 () Bool)

(assert (=> d!1398083 (=> res!1886635 e!2822739)))

(declare-fun lt!1705743 () Bool)

(assert (=> d!1398083 (= res!1886635 (not lt!1705743))))

(declare-fun lt!1705744 () Bool)

(assert (=> d!1398083 (= lt!1705743 lt!1705744)))

(declare-fun lt!1705742 () Unit!96566)

(declare-fun e!2822738 () Unit!96566)

(assert (=> d!1398083 (= lt!1705742 e!2822738)))

(declare-fun c!773478 () Bool)

(assert (=> d!1398083 (= c!773478 lt!1705744)))

(assert (=> d!1398083 (= lt!1705744 (containsKey!1830 (toList!4363 lt!1705486) (_1!28868 lt!1705002)))))

(assert (=> d!1398083 (= (contains!13453 lt!1705486 (_1!28868 lt!1705002)) lt!1705743)))

(declare-fun b!4530199 () Bool)

(declare-fun lt!1705745 () Unit!96566)

(assert (=> b!4530199 (= e!2822738 lt!1705745)))

(assert (=> b!4530199 (= lt!1705745 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lt!1705486) (_1!28868 lt!1705002)))))

(assert (=> b!4530199 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705486) (_1!28868 lt!1705002)))))

(declare-fun b!4530200 () Bool)

(declare-fun Unit!96742 () Unit!96566)

(assert (=> b!4530200 (= e!2822738 Unit!96742)))

(declare-fun b!4530201 () Bool)

(assert (=> b!4530201 (= e!2822739 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705486) (_1!28868 lt!1705002))))))

(assert (= (and d!1398083 c!773478) b!4530199))

(assert (= (and d!1398083 (not c!773478)) b!4530200))

(assert (= (and d!1398083 (not res!1886635)) b!4530201))

(declare-fun m!5286791 () Bool)

(assert (=> d!1398083 m!5286791))

(declare-fun m!5286793 () Bool)

(assert (=> b!4530199 m!5286793))

(assert (=> b!4530199 m!5286033))

(assert (=> b!4530199 m!5286033))

(declare-fun m!5286795 () Bool)

(assert (=> b!4530199 m!5286795))

(assert (=> b!4530201 m!5286033))

(assert (=> b!4530201 m!5286033))

(assert (=> b!4530201 m!5286795))

(assert (=> d!1397791 d!1398083))

(declare-fun b!4530203 () Bool)

(declare-fun e!2822740 () Option!11157)

(declare-fun e!2822741 () Option!11157)

(assert (=> b!4530203 (= e!2822740 e!2822741)))

(declare-fun c!773480 () Bool)

(assert (=> b!4530203 (= c!773480 (and ((_ is Cons!50697) lt!1705488) (not (= (_1!28868 (h!56564 lt!1705488)) (_1!28868 lt!1705002)))))))

(declare-fun b!4530204 () Bool)

(assert (=> b!4530204 (= e!2822741 (getValueByKey!1121 (t!357783 lt!1705488) (_1!28868 lt!1705002)))))

(declare-fun b!4530202 () Bool)

(assert (=> b!4530202 (= e!2822740 (Some!11156 (_2!28868 (h!56564 lt!1705488))))))

(declare-fun d!1398085 () Bool)

(declare-fun c!773479 () Bool)

(assert (=> d!1398085 (= c!773479 (and ((_ is Cons!50697) lt!1705488) (= (_1!28868 (h!56564 lt!1705488)) (_1!28868 lt!1705002))))))

(assert (=> d!1398085 (= (getValueByKey!1121 lt!1705488 (_1!28868 lt!1705002)) e!2822740)))

(declare-fun b!4530205 () Bool)

(assert (=> b!4530205 (= e!2822741 None!11156)))

(assert (= (and d!1398085 c!773479) b!4530202))

(assert (= (and d!1398085 (not c!773479)) b!4530203))

(assert (= (and b!4530203 c!773480) b!4530204))

(assert (= (and b!4530203 (not c!773480)) b!4530205))

(declare-fun m!5286797 () Bool)

(assert (=> b!4530204 m!5286797))

(assert (=> d!1397791 d!1398085))

(declare-fun d!1398087 () Bool)

(assert (=> d!1398087 (= (getValueByKey!1121 lt!1705488 (_1!28868 lt!1705002)) (Some!11156 (_2!28868 lt!1705002)))))

(declare-fun lt!1705746 () Unit!96566)

(assert (=> d!1398087 (= lt!1705746 (choose!29724 lt!1705488 (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(declare-fun e!2822742 () Bool)

(assert (=> d!1398087 e!2822742))

(declare-fun res!1886636 () Bool)

(assert (=> d!1398087 (=> (not res!1886636) (not e!2822742))))

(assert (=> d!1398087 (= res!1886636 (isStrictlySorted!444 lt!1705488))))

(assert (=> d!1398087 (= (lemmaContainsTupThenGetReturnValue!700 lt!1705488 (_1!28868 lt!1705002) (_2!28868 lt!1705002)) lt!1705746)))

(declare-fun b!4530206 () Bool)

(declare-fun res!1886637 () Bool)

(assert (=> b!4530206 (=> (not res!1886637) (not e!2822742))))

(assert (=> b!4530206 (= res!1886637 (containsKey!1830 lt!1705488 (_1!28868 lt!1705002)))))

(declare-fun b!4530207 () Bool)

(assert (=> b!4530207 (= e!2822742 (contains!13454 lt!1705488 (tuple2!51149 (_1!28868 lt!1705002) (_2!28868 lt!1705002))))))

(assert (= (and d!1398087 res!1886636) b!4530206))

(assert (= (and b!4530206 res!1886637) b!4530207))

(assert (=> d!1398087 m!5286027))

(declare-fun m!5286799 () Bool)

(assert (=> d!1398087 m!5286799))

(declare-fun m!5286803 () Bool)

(assert (=> d!1398087 m!5286803))

(declare-fun m!5286805 () Bool)

(assert (=> b!4530206 m!5286805))

(declare-fun m!5286809 () Bool)

(assert (=> b!4530207 m!5286809))

(assert (=> d!1397791 d!1398087))

(declare-fun b!4530208 () Bool)

(declare-fun e!2822744 () List!50821)

(declare-fun call!315754 () List!50821)

(assert (=> b!4530208 (= e!2822744 call!315754)))

(declare-fun bm!315747 () Bool)

(declare-fun call!315753 () List!50821)

(declare-fun call!315752 () List!50821)

(assert (=> bm!315747 (= call!315753 call!315752)))

(declare-fun c!773481 () Bool)

(declare-fun c!773484 () Bool)

(declare-fun b!4530209 () Bool)

(declare-fun e!2822747 () List!50821)

(assert (=> b!4530209 (= e!2822747 (ite c!773481 (t!357783 (toList!4363 lm!1477)) (ite c!773484 (Cons!50697 (h!56564 (toList!4363 lm!1477)) (t!357783 (toList!4363 lm!1477))) Nil!50697)))))

(declare-fun b!4530210 () Bool)

(declare-fun e!2822746 () Bool)

(declare-fun lt!1705747 () List!50821)

(assert (=> b!4530210 (= e!2822746 (contains!13454 lt!1705747 (tuple2!51149 (_1!28868 lt!1705002) (_2!28868 lt!1705002))))))

(declare-fun b!4530211 () Bool)

(assert (=> b!4530211 (= e!2822744 call!315754)))

(declare-fun b!4530212 () Bool)

(declare-fun res!1886638 () Bool)

(assert (=> b!4530212 (=> (not res!1886638) (not e!2822746))))

(assert (=> b!4530212 (= res!1886638 (containsKey!1830 lt!1705747 (_1!28868 lt!1705002)))))

(declare-fun b!4530213 () Bool)

(assert (=> b!4530213 (= e!2822747 (insertStrictlySorted!422 (t!357783 (toList!4363 lm!1477)) (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))

(declare-fun b!4530214 () Bool)

(declare-fun e!2822743 () List!50821)

(assert (=> b!4530214 (= e!2822743 call!315752)))

(declare-fun b!4530215 () Bool)

(assert (=> b!4530215 (= c!773484 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (bvsgt (_1!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 lt!1705002))))))

(declare-fun e!2822745 () List!50821)

(assert (=> b!4530215 (= e!2822745 e!2822744)))

(declare-fun bm!315749 () Bool)

(assert (=> bm!315749 (= call!315754 call!315753)))

(declare-fun b!4530216 () Bool)

(assert (=> b!4530216 (= e!2822743 e!2822745)))

(assert (=> b!4530216 (= c!773481 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (= (_1!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 lt!1705002))))))

(declare-fun b!4530217 () Bool)

(assert (=> b!4530217 (= e!2822745 call!315753)))

(declare-fun c!773483 () Bool)

(declare-fun bm!315748 () Bool)

(assert (=> bm!315748 (= call!315752 ($colon$colon!952 e!2822747 (ite c!773483 (h!56564 (toList!4363 lm!1477)) (tuple2!51149 (_1!28868 lt!1705002) (_2!28868 lt!1705002)))))))

(declare-fun c!773482 () Bool)

(assert (=> bm!315748 (= c!773482 c!773483)))

(declare-fun d!1398089 () Bool)

(assert (=> d!1398089 e!2822746))

(declare-fun res!1886639 () Bool)

(assert (=> d!1398089 (=> (not res!1886639) (not e!2822746))))

(assert (=> d!1398089 (= res!1886639 (isStrictlySorted!444 lt!1705747))))

(assert (=> d!1398089 (= lt!1705747 e!2822743)))

(assert (=> d!1398089 (= c!773483 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (bvslt (_1!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 lt!1705002))))))

(assert (=> d!1398089 (isStrictlySorted!444 (toList!4363 lm!1477))))

(assert (=> d!1398089 (= (insertStrictlySorted!422 (toList!4363 lm!1477) (_1!28868 lt!1705002) (_2!28868 lt!1705002)) lt!1705747)))

(assert (= (and d!1398089 c!773483) b!4530214))

(assert (= (and d!1398089 (not c!773483)) b!4530216))

(assert (= (and b!4530216 c!773481) b!4530217))

(assert (= (and b!4530216 (not c!773481)) b!4530215))

(assert (= (and b!4530215 c!773484) b!4530211))

(assert (= (and b!4530215 (not c!773484)) b!4530208))

(assert (= (or b!4530211 b!4530208) bm!315749))

(assert (= (or b!4530217 bm!315749) bm!315747))

(assert (= (or b!4530214 bm!315747) bm!315748))

(assert (= (and bm!315748 c!773482) b!4530213))

(assert (= (and bm!315748 (not c!773482)) b!4530209))

(assert (= (and d!1398089 res!1886639) b!4530212))

(assert (= (and b!4530212 res!1886638) b!4530210))

(declare-fun m!5286837 () Bool)

(assert (=> bm!315748 m!5286837))

(declare-fun m!5286839 () Bool)

(assert (=> b!4530212 m!5286839))

(declare-fun m!5286841 () Bool)

(assert (=> b!4530213 m!5286841))

(declare-fun m!5286843 () Bool)

(assert (=> d!1398089 m!5286843))

(assert (=> d!1398089 m!5285549))

(declare-fun m!5286845 () Bool)

(assert (=> b!4530210 m!5286845))

(assert (=> d!1397791 d!1398089))

(declare-fun d!1398093 () Bool)

(declare-fun res!1886640 () Bool)

(declare-fun e!2822748 () Bool)

(assert (=> d!1398093 (=> res!1886640 e!2822748)))

(assert (=> d!1398093 (= res!1886640 ((_ is Nil!50697) (t!357783 (toList!4363 lm!1477))))))

(assert (=> d!1398093 (= (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174087) e!2822748)))

(declare-fun b!4530218 () Bool)

(declare-fun e!2822749 () Bool)

(assert (=> b!4530218 (= e!2822748 e!2822749)))

(declare-fun res!1886641 () Bool)

(assert (=> b!4530218 (=> (not res!1886641) (not e!2822749))))

(assert (=> b!4530218 (= res!1886641 (dynLambda!21186 lambda!174087 (h!56564 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun b!4530219 () Bool)

(assert (=> b!4530219 (= e!2822749 (forall!10303 (t!357783 (t!357783 (toList!4363 lm!1477))) lambda!174087))))

(assert (= (and d!1398093 (not res!1886640)) b!4530218))

(assert (= (and b!4530218 res!1886641) b!4530219))

(declare-fun b_lambda!156411 () Bool)

(assert (=> (not b_lambda!156411) (not b!4530218)))

(declare-fun m!5286847 () Bool)

(assert (=> b!4530218 m!5286847))

(declare-fun m!5286849 () Bool)

(assert (=> b!4530219 m!5286849))

(assert (=> b!4529457 d!1398093))

(declare-fun d!1398095 () Bool)

(declare-fun choose!29729 (Hashable!5573 K!12085) (_ BitVec 64))

(assert (=> d!1398095 (= (hash!2865 hashF!1107 key!3287) (choose!29729 hashF!1107 key!3287))))

(declare-fun bs!865257 () Bool)

(assert (= bs!865257 d!1398095))

(declare-fun m!5286851 () Bool)

(assert (=> bs!865257 m!5286851))

(assert (=> d!1397725 d!1398095))

(declare-fun d!1398097 () Bool)

(declare-fun res!1886642 () Bool)

(declare-fun e!2822750 () Bool)

(assert (=> d!1398097 (=> res!1886642 e!2822750)))

(assert (=> d!1398097 (= res!1886642 ((_ is Nil!50696) (toList!4364 lt!1705028)))))

(assert (=> d!1398097 (= (forall!10305 (toList!4364 lt!1705028) lambda!174223) e!2822750)))

(declare-fun b!4530220 () Bool)

(declare-fun e!2822751 () Bool)

(assert (=> b!4530220 (= e!2822750 e!2822751)))

(declare-fun res!1886643 () Bool)

(assert (=> b!4530220 (=> (not res!1886643) (not e!2822751))))

(assert (=> b!4530220 (= res!1886643 (dynLambda!21188 lambda!174223 (h!56563 (toList!4364 lt!1705028))))))

(declare-fun b!4530221 () Bool)

(assert (=> b!4530221 (= e!2822751 (forall!10305 (t!357782 (toList!4364 lt!1705028)) lambda!174223))))

(assert (= (and d!1398097 (not res!1886642)) b!4530220))

(assert (= (and b!4530220 res!1886643) b!4530221))

(declare-fun b_lambda!156413 () Bool)

(assert (=> (not b_lambda!156413) (not b!4530220)))

(declare-fun m!5286853 () Bool)

(assert (=> b!4530220 m!5286853))

(declare-fun m!5286855 () Bool)

(assert (=> b!4530221 m!5286855))

(assert (=> b!4529687 d!1398097))

(declare-fun bs!865258 () Bool)

(declare-fun d!1398099 () Bool)

(assert (= bs!865258 (and d!1398099 b!4529387)))

(declare-fun lambda!174291 () Int)

(assert (=> bs!865258 (not (= lambda!174291 lambda!174166))))

(declare-fun bs!865259 () Bool)

(assert (= bs!865259 (and d!1398099 d!1397915)))

(assert (=> bs!865259 (not (= lambda!174291 lambda!174257))))

(declare-fun bs!865260 () Bool)

(assert (= bs!865260 (and d!1398099 b!4529972)))

(assert (=> bs!865260 (not (= lambda!174291 lambda!174260))))

(declare-fun bs!865261 () Bool)

(assert (= bs!865261 (and d!1398099 b!4529733)))

(assert (=> bs!865261 (not (= lambda!174291 lambda!174232))))

(declare-fun bs!865262 () Bool)

(assert (= bs!865262 (and d!1398099 b!4529691)))

(assert (=> bs!865262 (not (= lambda!174291 lambda!174223))))

(declare-fun bs!865263 () Bool)

(assert (= bs!865263 (and d!1398099 d!1397935)))

(assert (=> bs!865263 (not (= lambda!174291 lambda!174264))))

(declare-fun bs!865264 () Bool)

(assert (= bs!865264 (and d!1398099 d!1397821)))

(assert (=> bs!865264 (not (= lambda!174291 lambda!174234))))

(assert (=> bs!865258 (not (= lambda!174291 lambda!174167))))

(declare-fun bs!865265 () Bool)

(assert (= bs!865265 (and d!1398099 b!4529384)))

(assert (=> bs!865265 (not (= lambda!174291 lambda!174165))))

(declare-fun bs!865266 () Bool)

(assert (= bs!865266 (and d!1398099 d!1397819)))

(assert (=> bs!865266 (not (= lambda!174291 lambda!174230))))

(declare-fun bs!865267 () Bool)

(assert (= bs!865267 (and d!1398099 b!4529273)))

(assert (=> bs!865267 (= lambda!174291 lambda!174089)))

(declare-fun bs!865268 () Bool)

(assert (= bs!865268 (and d!1398099 b!4529688)))

(assert (=> bs!865268 (not (= lambda!174291 lambda!174221))))

(declare-fun bs!865269 () Bool)

(assert (= bs!865269 (and d!1398099 b!4529936)))

(assert (=> bs!865269 (not (= lambda!174291 lambda!174256))))

(declare-fun bs!865270 () Bool)

(assert (= bs!865270 (and d!1398099 d!1397787)))

(assert (=> bs!865270 (not (= lambda!174291 lambda!174224))))

(declare-fun bs!865271 () Bool)

(assert (= bs!865271 (and d!1398099 b!4529431)))

(assert (=> bs!865271 (not (= lambda!174291 lambda!174178))))

(assert (=> bs!865261 (not (= lambda!174291 lambda!174233))))

(assert (=> bs!865269 (not (= lambda!174291 lambda!174255))))

(declare-fun bs!865272 () Bool)

(assert (= bs!865272 (and d!1398099 b!4529933)))

(assert (=> bs!865272 (not (= lambda!174291 lambda!174254))))

(declare-fun bs!865273 () Bool)

(assert (= bs!865273 (and d!1398099 b!4529434)))

(assert (=> bs!865273 (not (= lambda!174291 lambda!174180))))

(declare-fun bs!865274 () Bool)

(assert (= bs!865274 (and d!1398099 d!1398049)))

(assert (=> bs!865274 (not (= lambda!174291 lambda!174280))))

(assert (=> bs!865262 (not (= lambda!174291 lambda!174222))))

(declare-fun bs!865275 () Bool)

(assert (= bs!865275 (and d!1398099 d!1397779)))

(assert (=> bs!865275 (= (= (_1!28868 (h!56564 (toList!4363 lm!1477))) hash!344) (= lambda!174291 lambda!174220))))

(declare-fun bs!865276 () Bool)

(assert (= bs!865276 (and d!1398099 b!4529969)))

(assert (=> bs!865276 (not (= lambda!174291 lambda!174258))))

(declare-fun bs!865277 () Bool)

(assert (= bs!865277 (and d!1398099 b!4529730)))

(assert (=> bs!865277 (not (= lambda!174291 lambda!174231))))

(declare-fun bs!865278 () Bool)

(assert (= bs!865278 (and d!1398099 d!1397569)))

(assert (=> bs!865278 (not (= lambda!174291 lambda!174168))))

(assert (=> bs!865260 (not (= lambda!174291 lambda!174261))))

(assert (=> bs!865273 (not (= lambda!174291 lambda!174179))))

(declare-fun bs!865279 () Bool)

(assert (= bs!865279 (and d!1398099 d!1398075)))

(assert (=> bs!865279 (not (= lambda!174291 lambda!174289))))

(declare-fun bs!865280 () Bool)

(assert (= bs!865280 (and d!1398099 d!1397629)))

(assert (=> bs!865280 (not (= lambda!174291 lambda!174181))))

(assert (=> d!1398099 true))

(assert (=> d!1398099 true))

(assert (=> d!1398099 (= (allKeysSameHash!1032 (_2!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 (h!56564 (toList!4363 lm!1477))) hashF!1107) (forall!10305 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174291))))

(declare-fun bs!865281 () Bool)

(assert (= bs!865281 d!1398099))

(declare-fun m!5286857 () Bool)

(assert (=> bs!865281 m!5286857))

(assert (=> bs!864847 d!1398099))

(declare-fun d!1398101 () Bool)

(assert (=> d!1398101 (= (invariantList!1031 (toList!4364 lt!1705445)) (noDuplicatedKeys!270 (toList!4364 lt!1705445)))))

(declare-fun bs!865282 () Bool)

(assert (= bs!865282 d!1398101))

(declare-fun m!5286859 () Bool)

(assert (=> bs!865282 m!5286859))

(assert (=> d!1397769 d!1398101))

(declare-fun d!1398103 () Bool)

(declare-fun res!1886644 () Bool)

(declare-fun e!2822752 () Bool)

(assert (=> d!1398103 (=> res!1886644 e!2822752)))

(assert (=> d!1398103 (= res!1886644 ((_ is Nil!50697) (toList!4363 (+!1570 lt!1705004 lt!1705015))))))

(assert (=> d!1398103 (= (forall!10303 (toList!4363 (+!1570 lt!1705004 lt!1705015)) lambda!174217) e!2822752)))

(declare-fun b!4530222 () Bool)

(declare-fun e!2822753 () Bool)

(assert (=> b!4530222 (= e!2822752 e!2822753)))

(declare-fun res!1886645 () Bool)

(assert (=> b!4530222 (=> (not res!1886645) (not e!2822753))))

(assert (=> b!4530222 (= res!1886645 (dynLambda!21186 lambda!174217 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))

(declare-fun b!4530223 () Bool)

(assert (=> b!4530223 (= e!2822753 (forall!10303 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))) lambda!174217))))

(assert (= (and d!1398103 (not res!1886644)) b!4530222))

(assert (= (and b!4530222 res!1886645) b!4530223))

(declare-fun b_lambda!156415 () Bool)

(assert (=> (not b_lambda!156415) (not b!4530222)))

(declare-fun m!5286861 () Bool)

(assert (=> b!4530222 m!5286861))

(declare-fun m!5286863 () Bool)

(assert (=> b!4530223 m!5286863))

(assert (=> d!1397769 d!1398103))

(assert (=> b!4529501 d!1397865))

(declare-fun d!1398105 () Bool)

(assert (=> d!1398105 (containsKey!1829 (toList!4364 lt!1705001) key!3287)))

(declare-fun lt!1705748 () Unit!96566)

(assert (=> d!1398105 (= lt!1705748 (choose!29723 (toList!4364 lt!1705001) key!3287))))

(assert (=> d!1398105 (invariantList!1031 (toList!4364 lt!1705001))))

(assert (=> d!1398105 (= (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705001) key!3287) lt!1705748)))

(declare-fun bs!865283 () Bool)

(assert (= bs!865283 d!1398105))

(assert (=> bs!865283 m!5285667))

(declare-fun m!5286865 () Bool)

(assert (=> bs!865283 m!5286865))

(assert (=> bs!865283 m!5286201))

(assert (=> b!4529501 d!1398105))

(declare-fun d!1398107 () Bool)

(assert (=> d!1398107 (= (invariantList!1031 (toList!4364 lt!1705249)) (noDuplicatedKeys!270 (toList!4364 lt!1705249)))))

(declare-fun bs!865284 () Bool)

(assert (= bs!865284 d!1398107))

(declare-fun m!5286867 () Bool)

(assert (=> bs!865284 m!5286867))

(assert (=> d!1397607 d!1398107))

(declare-fun d!1398109 () Bool)

(declare-fun res!1886646 () Bool)

(declare-fun e!2822754 () Bool)

(assert (=> d!1398109 (=> res!1886646 e!2822754)))

(assert (=> d!1398109 (= res!1886646 ((_ is Nil!50697) (toList!4363 lt!1705020)))))

(assert (=> d!1398109 (= (forall!10303 (toList!4363 lt!1705020) lambda!174177) e!2822754)))

(declare-fun b!4530224 () Bool)

(declare-fun e!2822755 () Bool)

(assert (=> b!4530224 (= e!2822754 e!2822755)))

(declare-fun res!1886647 () Bool)

(assert (=> b!4530224 (=> (not res!1886647) (not e!2822755))))

(assert (=> b!4530224 (= res!1886647 (dynLambda!21186 lambda!174177 (h!56564 (toList!4363 lt!1705020))))))

(declare-fun b!4530225 () Bool)

(assert (=> b!4530225 (= e!2822755 (forall!10303 (t!357783 (toList!4363 lt!1705020)) lambda!174177))))

(assert (= (and d!1398109 (not res!1886646)) b!4530224))

(assert (= (and b!4530224 res!1886647) b!4530225))

(declare-fun b_lambda!156417 () Bool)

(assert (=> (not b_lambda!156417) (not b!4530224)))

(declare-fun m!5286869 () Bool)

(assert (=> b!4530224 m!5286869))

(declare-fun m!5286871 () Bool)

(assert (=> b!4530225 m!5286871))

(assert (=> d!1397607 d!1398109))

(declare-fun d!1398111 () Bool)

(declare-fun c!773485 () Bool)

(assert (=> d!1398111 (= c!773485 ((_ is Nil!50696) (toList!4364 lt!1705003)))))

(declare-fun e!2822756 () (InoxSet tuple2!51146))

(assert (=> d!1398111 (= (content!8398 (toList!4364 lt!1705003)) e!2822756)))

(declare-fun b!4530226 () Bool)

(assert (=> b!4530226 (= e!2822756 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4530227 () Bool)

(assert (=> b!4530227 (= e!2822756 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705003)) true) (content!8398 (t!357782 (toList!4364 lt!1705003)))))))

(assert (= (and d!1398111 c!773485) b!4530226))

(assert (= (and d!1398111 (not c!773485)) b!4530227))

(declare-fun m!5286873 () Bool)

(assert (=> b!4530227 m!5286873))

(declare-fun m!5286875 () Bool)

(assert (=> b!4530227 m!5286875))

(assert (=> d!1397567 d!1398111))

(declare-fun d!1398113 () Bool)

(declare-fun c!773486 () Bool)

(assert (=> d!1398113 (= c!773486 ((_ is Nil!50696) (toList!4364 lt!1705024)))))

(declare-fun e!2822757 () (InoxSet tuple2!51146))

(assert (=> d!1398113 (= (content!8398 (toList!4364 lt!1705024)) e!2822757)))

(declare-fun b!4530228 () Bool)

(assert (=> b!4530228 (= e!2822757 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4530229 () Bool)

(assert (=> b!4530229 (= e!2822757 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705024)) true) (content!8398 (t!357782 (toList!4364 lt!1705024)))))))

(assert (= (and d!1398113 c!773486) b!4530228))

(assert (= (and d!1398113 (not c!773486)) b!4530229))

(declare-fun m!5286877 () Bool)

(assert (=> b!4530229 m!5286877))

(declare-fun m!5286879 () Bool)

(assert (=> b!4530229 m!5286879))

(assert (=> d!1397567 d!1398113))

(declare-fun d!1398115 () Bool)

(declare-fun c!773489 () Bool)

(assert (=> d!1398115 (= c!773489 ((_ is Nil!50699) (keys!17626 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))

(declare-fun e!2822760 () (InoxSet K!12085))

(assert (=> d!1398115 (= (content!8399 (keys!17626 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) e!2822760)))

(declare-fun b!4530234 () Bool)

(assert (=> b!4530234 (= e!2822760 ((as const (Array K!12085 Bool)) false))))

(declare-fun b!4530235 () Bool)

(assert (=> b!4530235 (= e!2822760 ((_ map or) (store ((as const (Array K!12085 Bool)) false) (h!56568 (keys!17626 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) true) (content!8399 (t!357785 (keys!17626 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))))

(assert (= (and d!1398115 c!773489) b!4530234))

(assert (= (and d!1398115 (not c!773489)) b!4530235))

(declare-fun m!5286881 () Bool)

(assert (=> b!4530235 m!5286881))

(declare-fun m!5286883 () Bool)

(assert (=> b!4530235 m!5286883))

(assert (=> b!4529427 d!1398115))

(declare-fun bs!865285 () Bool)

(declare-fun b!4530237 () Bool)

(assert (= bs!865285 (and b!4530237 b!4530106)))

(declare-fun lambda!174292 () Int)

(assert (=> bs!865285 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174292 lambda!174274))))

(declare-fun bs!865286 () Bool)

(assert (= bs!865286 (and b!4530237 b!4529816)))

(assert (=> bs!865286 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (toList!4364 lt!1705010)) (= lambda!174292 lambda!174252))))

(declare-fun bs!865287 () Bool)

(assert (= bs!865287 (and b!4530237 b!4529796)))

(assert (=> bs!865287 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (toList!4364 lt!1705001)) (= lambda!174292 lambda!174246))))

(declare-fun bs!865288 () Bool)

(assert (= bs!865288 (and b!4530237 b!4530122)))

(assert (=> bs!865288 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174292 lambda!174277))))

(declare-fun bs!865289 () Bool)

(assert (= bs!865289 (and b!4530237 b!4530130)))

(assert (=> bs!865289 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (t!357782 (toList!4364 lt!1705010))) (= lambda!174292 lambda!174276))))

(declare-fun bs!865290 () Bool)

(assert (= bs!865290 (and b!4530237 b!4530128)))

(assert (=> bs!865290 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (toList!4364 lt!1705010)) (= lambda!174292 lambda!174278))))

(declare-fun bs!865291 () Bool)

(assert (= bs!865291 (and b!4530237 b!4529798)))

(assert (=> bs!865291 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (t!357782 (toList!4364 lt!1705001))) (= lambda!174292 lambda!174244))))

(declare-fun bs!865292 () Bool)

(assert (= bs!865292 (and b!4530237 b!4529790)))

(assert (=> bs!865292 (= (= (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174292 lambda!174245))))

(assert (=> b!4530237 true))

(declare-fun bs!865294 () Bool)

(declare-fun b!4530238 () Bool)

(assert (= bs!865294 (and b!4530238 b!4529795)))

(declare-fun lambda!174293 () Int)

(assert (=> bs!865294 (= lambda!174293 lambda!174247)))

(declare-fun bs!865295 () Bool)

(assert (= bs!865295 (and b!4530238 b!4529817)))

(assert (=> bs!865295 (= lambda!174293 lambda!174253)))

(declare-fun bs!865296 () Bool)

(assert (= bs!865296 (and b!4530238 b!4530107)))

(assert (=> bs!865296 (= lambda!174293 lambda!174275)))

(declare-fun bs!865297 () Bool)

(assert (= bs!865297 (and b!4530238 b!4530127)))

(assert (=> bs!865297 (= lambda!174293 lambda!174279)))

(declare-fun d!1398117 () Bool)

(declare-fun e!2822761 () Bool)

(assert (=> d!1398117 e!2822761))

(declare-fun res!1886649 () Bool)

(assert (=> d!1398117 (=> (not res!1886649) (not e!2822761))))

(declare-fun lt!1705749 () List!50823)

(assert (=> d!1398117 (= res!1886649 (noDuplicate!755 lt!1705749))))

(assert (=> d!1398117 (= lt!1705749 (getKeysList!479 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))

(assert (=> d!1398117 (= (keys!17626 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) lt!1705749)))

(declare-fun b!4530236 () Bool)

(declare-fun res!1886650 () Bool)

(assert (=> b!4530236 (=> (not res!1886650) (not e!2822761))))

(assert (=> b!4530236 (= res!1886650 (= (length!366 lt!1705749) (length!367 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))))

(declare-fun res!1886648 () Bool)

(assert (=> b!4530237 (=> (not res!1886648) (not e!2822761))))

(assert (=> b!4530237 (= res!1886648 (forall!10306 lt!1705749 lambda!174292))))

(assert (=> b!4530238 (= e!2822761 (= (content!8399 lt!1705749) (content!8399 (map!11155 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) lambda!174293))))))

(assert (= (and d!1398117 res!1886649) b!4530236))

(assert (= (and b!4530236 res!1886650) b!4530237))

(assert (= (and b!4530237 res!1886648) b!4530238))

(declare-fun m!5286889 () Bool)

(assert (=> d!1398117 m!5286889))

(declare-fun m!5286891 () Bool)

(assert (=> d!1398117 m!5286891))

(declare-fun m!5286893 () Bool)

(assert (=> b!4530236 m!5286893))

(declare-fun m!5286895 () Bool)

(assert (=> b!4530236 m!5286895))

(declare-fun m!5286897 () Bool)

(assert (=> b!4530237 m!5286897))

(declare-fun m!5286899 () Bool)

(assert (=> b!4530238 m!5286899))

(declare-fun m!5286901 () Bool)

(assert (=> b!4530238 m!5286901))

(assert (=> b!4530238 m!5286901))

(declare-fun m!5286903 () Bool)

(assert (=> b!4530238 m!5286903))

(assert (=> b!4529427 d!1398117))

(declare-fun d!1398123 () Bool)

(declare-fun c!773490 () Bool)

(assert (=> d!1398123 (= c!773490 ((_ is Nil!50699) (keys!17626 lt!1705258)))))

(declare-fun e!2822764 () (InoxSet K!12085))

(assert (=> d!1398123 (= (content!8399 (keys!17626 lt!1705258)) e!2822764)))

(declare-fun b!4530241 () Bool)

(assert (=> b!4530241 (= e!2822764 ((as const (Array K!12085 Bool)) false))))

(declare-fun b!4530242 () Bool)

(assert (=> b!4530242 (= e!2822764 ((_ map or) (store ((as const (Array K!12085 Bool)) false) (h!56568 (keys!17626 lt!1705258)) true) (content!8399 (t!357785 (keys!17626 lt!1705258)))))))

(assert (= (and d!1398123 c!773490) b!4530241))

(assert (= (and d!1398123 (not c!773490)) b!4530242))

(declare-fun m!5286905 () Bool)

(assert (=> b!4530242 m!5286905))

(declare-fun m!5286907 () Bool)

(assert (=> b!4530242 m!5286907))

(assert (=> b!4529427 d!1398123))

(declare-fun bs!865298 () Bool)

(declare-fun b!4530248 () Bool)

(assert (= bs!865298 (and b!4530248 b!4530106)))

(declare-fun lambda!174294 () Int)

(assert (=> bs!865298 (= (= (toList!4364 lt!1705258) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174294 lambda!174274))))

(declare-fun bs!865299 () Bool)

(assert (= bs!865299 (and b!4530248 b!4529816)))

(assert (=> bs!865299 (= (= (toList!4364 lt!1705258) (toList!4364 lt!1705010)) (= lambda!174294 lambda!174252))))

(declare-fun bs!865300 () Bool)

(assert (= bs!865300 (and b!4530248 b!4530122)))

(assert (=> bs!865300 (= (= (toList!4364 lt!1705258) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174294 lambda!174277))))

(declare-fun bs!865301 () Bool)

(assert (= bs!865301 (and b!4530248 b!4530130)))

(assert (=> bs!865301 (= (= (toList!4364 lt!1705258) (t!357782 (toList!4364 lt!1705010))) (= lambda!174294 lambda!174276))))

(declare-fun bs!865302 () Bool)

(assert (= bs!865302 (and b!4530248 b!4530128)))

(assert (=> bs!865302 (= (= (toList!4364 lt!1705258) (toList!4364 lt!1705010)) (= lambda!174294 lambda!174278))))

(declare-fun bs!865303 () Bool)

(assert (= bs!865303 (and b!4530248 b!4529798)))

(assert (=> bs!865303 (= (= (toList!4364 lt!1705258) (t!357782 (toList!4364 lt!1705001))) (= lambda!174294 lambda!174244))))

(declare-fun bs!865304 () Bool)

(assert (= bs!865304 (and b!4530248 b!4529790)))

(assert (=> bs!865304 (= (= (toList!4364 lt!1705258) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174294 lambda!174245))))

(declare-fun bs!865305 () Bool)

(assert (= bs!865305 (and b!4530248 b!4529796)))

(assert (=> bs!865305 (= (= (toList!4364 lt!1705258) (toList!4364 lt!1705001)) (= lambda!174294 lambda!174246))))

(declare-fun bs!865306 () Bool)

(assert (= bs!865306 (and b!4530248 b!4530237)))

(assert (=> bs!865306 (= (= (toList!4364 lt!1705258) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= lambda!174294 lambda!174292))))

(assert (=> b!4530248 true))

(declare-fun bs!865307 () Bool)

(declare-fun b!4530249 () Bool)

(assert (= bs!865307 (and b!4530249 b!4529817)))

(declare-fun lambda!174295 () Int)

(assert (=> bs!865307 (= lambda!174295 lambda!174253)))

(declare-fun bs!865308 () Bool)

(assert (= bs!865308 (and b!4530249 b!4530107)))

(assert (=> bs!865308 (= lambda!174295 lambda!174275)))

(declare-fun bs!865309 () Bool)

(assert (= bs!865309 (and b!4530249 b!4529795)))

(assert (=> bs!865309 (= lambda!174295 lambda!174247)))

(declare-fun bs!865310 () Bool)

(assert (= bs!865310 (and b!4530249 b!4530238)))

(assert (=> bs!865310 (= lambda!174295 lambda!174293)))

(declare-fun bs!865311 () Bool)

(assert (= bs!865311 (and b!4530249 b!4530127)))

(assert (=> bs!865311 (= lambda!174295 lambda!174279)))

(declare-fun d!1398125 () Bool)

(declare-fun e!2822767 () Bool)

(assert (=> d!1398125 e!2822767))

(declare-fun res!1886654 () Bool)

(assert (=> d!1398125 (=> (not res!1886654) (not e!2822767))))

(declare-fun lt!1705750 () List!50823)

(assert (=> d!1398125 (= res!1886654 (noDuplicate!755 lt!1705750))))

(assert (=> d!1398125 (= lt!1705750 (getKeysList!479 (toList!4364 lt!1705258)))))

(assert (=> d!1398125 (= (keys!17626 lt!1705258) lt!1705750)))

(declare-fun b!4530247 () Bool)

(declare-fun res!1886655 () Bool)

(assert (=> b!4530247 (=> (not res!1886655) (not e!2822767))))

(assert (=> b!4530247 (= res!1886655 (= (length!366 lt!1705750) (length!367 (toList!4364 lt!1705258))))))

(declare-fun res!1886653 () Bool)

(assert (=> b!4530248 (=> (not res!1886653) (not e!2822767))))

(assert (=> b!4530248 (= res!1886653 (forall!10306 lt!1705750 lambda!174294))))

(assert (=> b!4530249 (= e!2822767 (= (content!8399 lt!1705750) (content!8399 (map!11155 (toList!4364 lt!1705258) lambda!174295))))))

(assert (= (and d!1398125 res!1886654) b!4530247))

(assert (= (and b!4530247 res!1886655) b!4530248))

(assert (= (and b!4530248 res!1886653) b!4530249))

(declare-fun m!5286921 () Bool)

(assert (=> d!1398125 m!5286921))

(declare-fun m!5286923 () Bool)

(assert (=> d!1398125 m!5286923))

(declare-fun m!5286925 () Bool)

(assert (=> b!4530247 m!5286925))

(declare-fun m!5286927 () Bool)

(assert (=> b!4530247 m!5286927))

(declare-fun m!5286929 () Bool)

(assert (=> b!4530248 m!5286929))

(declare-fun m!5286931 () Bool)

(assert (=> b!4530249 m!5286931))

(declare-fun m!5286933 () Bool)

(assert (=> b!4530249 m!5286933))

(assert (=> b!4530249 m!5286933))

(declare-fun m!5286935 () Bool)

(assert (=> b!4530249 m!5286935))

(assert (=> b!4529427 d!1398125))

(declare-fun d!1398133 () Bool)

(declare-fun res!1886660 () Bool)

(declare-fun e!2822774 () Bool)

(assert (=> d!1398133 (=> res!1886660 e!2822774)))

(assert (=> d!1398133 (= res!1886660 (not ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> d!1398133 (= (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705015))) e!2822774)))

(declare-fun b!4530258 () Bool)

(declare-fun e!2822775 () Bool)

(assert (=> b!4530258 (= e!2822774 e!2822775)))

(declare-fun res!1886661 () Bool)

(assert (=> b!4530258 (=> (not res!1886661) (not e!2822775))))

(assert (=> b!4530258 (= res!1886661 (not (containsKey!1826 (t!357782 (t!357782 (_2!28868 lt!1705015))) (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))))

(declare-fun b!4530259 () Bool)

(assert (=> b!4530259 (= e!2822775 (noDuplicateKeys!1178 (t!357782 (t!357782 (_2!28868 lt!1705015)))))))

(assert (= (and d!1398133 (not res!1886660)) b!4530258))

(assert (= (and b!4530258 res!1886661) b!4530259))

(declare-fun m!5286941 () Bool)

(assert (=> b!4530258 m!5286941))

(declare-fun m!5286943 () Bool)

(assert (=> b!4530259 m!5286943))

(assert (=> b!4529659 d!1398133))

(declare-fun b!4530263 () Bool)

(declare-fun e!2822778 () Option!11157)

(declare-fun e!2822779 () Option!11157)

(assert (=> b!4530263 (= e!2822778 e!2822779)))

(declare-fun c!773496 () Bool)

(assert (=> b!4530263 (= c!773496 (and ((_ is Cons!50697) (toList!4363 lt!1705446)) (not (= (_1!28868 (h!56564 (toList!4363 lt!1705446))) (_1!28868 lt!1705015)))))))

(declare-fun b!4530264 () Bool)

(assert (=> b!4530264 (= e!2822779 (getValueByKey!1121 (t!357783 (toList!4363 lt!1705446)) (_1!28868 lt!1705015)))))

(declare-fun b!4530262 () Bool)

(assert (=> b!4530262 (= e!2822778 (Some!11156 (_2!28868 (h!56564 (toList!4363 lt!1705446)))))))

(declare-fun d!1398137 () Bool)

(declare-fun c!773495 () Bool)

(assert (=> d!1398137 (= c!773495 (and ((_ is Cons!50697) (toList!4363 lt!1705446)) (= (_1!28868 (h!56564 (toList!4363 lt!1705446))) (_1!28868 lt!1705015))))))

(assert (=> d!1398137 (= (getValueByKey!1121 (toList!4363 lt!1705446) (_1!28868 lt!1705015)) e!2822778)))

(declare-fun b!4530265 () Bool)

(assert (=> b!4530265 (= e!2822779 None!11156)))

(assert (= (and d!1398137 c!773495) b!4530262))

(assert (= (and d!1398137 (not c!773495)) b!4530263))

(assert (= (and b!4530263 c!773496) b!4530264))

(assert (= (and b!4530263 (not c!773496)) b!4530265))

(declare-fun m!5286951 () Bool)

(assert (=> b!4530264 m!5286951))

(assert (=> b!4529672 d!1398137))

(declare-fun d!1398141 () Bool)

(declare-fun res!1886666 () Bool)

(declare-fun e!2822782 () Bool)

(assert (=> d!1398141 (=> res!1886666 e!2822782)))

(assert (=> d!1398141 (= res!1886666 (not ((_ is Cons!50696) (_2!28868 lt!1705011))))))

(assert (=> d!1398141 (= (noDuplicateKeys!1178 (_2!28868 lt!1705011)) e!2822782)))

(declare-fun b!4530268 () Bool)

(declare-fun e!2822783 () Bool)

(assert (=> b!4530268 (= e!2822782 e!2822783)))

(declare-fun res!1886667 () Bool)

(assert (=> b!4530268 (=> (not res!1886667) (not e!2822783))))

(assert (=> b!4530268 (= res!1886667 (not (containsKey!1826 (t!357782 (_2!28868 lt!1705011)) (_1!28867 (h!56563 (_2!28868 lt!1705011))))))))

(declare-fun b!4530269 () Bool)

(assert (=> b!4530269 (= e!2822783 (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705011))))))

(assert (= (and d!1398141 (not res!1886666)) b!4530268))

(assert (= (and b!4530268 res!1886667) b!4530269))

(declare-fun m!5286957 () Bool)

(assert (=> b!4530268 m!5286957))

(declare-fun m!5286959 () Bool)

(assert (=> b!4530269 m!5286959))

(assert (=> bs!864850 d!1398141))

(declare-fun b!4530273 () Bool)

(declare-fun e!2822786 () Bool)

(assert (=> b!4530273 (= e!2822786 (not (contains!13457 (keys!17626 lt!1705258) key!3287)))))

(declare-fun b!4530274 () Bool)

(declare-fun e!2822790 () Unit!96566)

(declare-fun e!2822791 () Unit!96566)

(assert (=> b!4530274 (= e!2822790 e!2822791)))

(declare-fun c!773500 () Bool)

(declare-fun call!315755 () Bool)

(assert (=> b!4530274 (= c!773500 call!315755)))

(declare-fun b!4530275 () Bool)

(declare-fun e!2822787 () Bool)

(declare-fun e!2822788 () Bool)

(assert (=> b!4530275 (= e!2822787 e!2822788)))

(declare-fun res!1886670 () Bool)

(assert (=> b!4530275 (=> (not res!1886670) (not e!2822788))))

(assert (=> b!4530275 (= res!1886670 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705258) key!3287)))))

(declare-fun b!4530276 () Bool)

(declare-fun e!2822789 () List!50823)

(assert (=> b!4530276 (= e!2822789 (getKeysList!479 (toList!4364 lt!1705258)))))

(declare-fun b!4530277 () Bool)

(assert (=> b!4530277 (= e!2822788 (contains!13457 (keys!17626 lt!1705258) key!3287))))

(declare-fun d!1398145 () Bool)

(assert (=> d!1398145 e!2822787))

(declare-fun res!1886671 () Bool)

(assert (=> d!1398145 (=> res!1886671 e!2822787)))

(assert (=> d!1398145 (= res!1886671 e!2822786)))

(declare-fun res!1886669 () Bool)

(assert (=> d!1398145 (=> (not res!1886669) (not e!2822786))))

(declare-fun lt!1705760 () Bool)

(assert (=> d!1398145 (= res!1886669 (not lt!1705760))))

(declare-fun lt!1705761 () Bool)

(assert (=> d!1398145 (= lt!1705760 lt!1705761)))

(declare-fun lt!1705762 () Unit!96566)

(assert (=> d!1398145 (= lt!1705762 e!2822790)))

(declare-fun c!773498 () Bool)

(assert (=> d!1398145 (= c!773498 lt!1705761)))

(assert (=> d!1398145 (= lt!1705761 (containsKey!1829 (toList!4364 lt!1705258) key!3287))))

(assert (=> d!1398145 (= (contains!13455 lt!1705258 key!3287) lt!1705760)))

(declare-fun b!4530278 () Bool)

(assert (=> b!4530278 (= e!2822789 (keys!17626 lt!1705258))))

(declare-fun b!4530279 () Bool)

(declare-fun Unit!96754 () Unit!96566)

(assert (=> b!4530279 (= e!2822791 Unit!96754)))

(declare-fun bm!315750 () Bool)

(assert (=> bm!315750 (= call!315755 (contains!13457 e!2822789 key!3287))))

(declare-fun c!773499 () Bool)

(assert (=> bm!315750 (= c!773499 c!773498)))

(declare-fun b!4530280 () Bool)

(declare-fun lt!1705758 () Unit!96566)

(assert (=> b!4530280 (= e!2822790 lt!1705758)))

(declare-fun lt!1705759 () Unit!96566)

(assert (=> b!4530280 (= lt!1705759 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705258) key!3287))))

(assert (=> b!4530280 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705258) key!3287))))

(declare-fun lt!1705763 () Unit!96566)

(assert (=> b!4530280 (= lt!1705763 lt!1705759)))

(assert (=> b!4530280 (= lt!1705758 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705258) key!3287))))

(assert (=> b!4530280 call!315755))

(declare-fun b!4530281 () Bool)

(assert (=> b!4530281 false))

(declare-fun lt!1705757 () Unit!96566)

(declare-fun lt!1705764 () Unit!96566)

(assert (=> b!4530281 (= lt!1705757 lt!1705764)))

(assert (=> b!4530281 (containsKey!1829 (toList!4364 lt!1705258) key!3287)))

(assert (=> b!4530281 (= lt!1705764 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705258) key!3287))))

(declare-fun Unit!96755 () Unit!96566)

(assert (=> b!4530281 (= e!2822791 Unit!96755)))

(assert (= (and d!1398145 c!773498) b!4530280))

(assert (= (and d!1398145 (not c!773498)) b!4530274))

(assert (= (and b!4530274 c!773500) b!4530281))

(assert (= (and b!4530274 (not c!773500)) b!4530279))

(assert (= (or b!4530280 b!4530274) bm!315750))

(assert (= (and bm!315750 c!773499) b!4530276))

(assert (= (and bm!315750 (not c!773499)) b!4530278))

(assert (= (and d!1398145 res!1886669) b!4530273))

(assert (= (and d!1398145 (not res!1886671)) b!4530275))

(assert (= (and b!4530275 res!1886670) b!4530277))

(assert (=> b!4530273 m!5285453))

(assert (=> b!4530273 m!5285453))

(declare-fun m!5286967 () Bool)

(assert (=> b!4530273 m!5286967))

(declare-fun m!5286969 () Bool)

(assert (=> b!4530280 m!5286969))

(declare-fun m!5286971 () Bool)

(assert (=> b!4530280 m!5286971))

(assert (=> b!4530280 m!5286971))

(declare-fun m!5286975 () Bool)

(assert (=> b!4530280 m!5286975))

(declare-fun m!5286977 () Bool)

(assert (=> b!4530280 m!5286977))

(assert (=> b!4530278 m!5285453))

(assert (=> b!4530275 m!5286971))

(assert (=> b!4530275 m!5286971))

(assert (=> b!4530275 m!5286975))

(declare-fun m!5286979 () Bool)

(assert (=> d!1398145 m!5286979))

(assert (=> b!4530276 m!5286923))

(assert (=> b!4530277 m!5285453))

(assert (=> b!4530277 m!5285453))

(assert (=> b!4530277 m!5286967))

(assert (=> b!4530281 m!5286979))

(declare-fun m!5286981 () Bool)

(assert (=> b!4530281 m!5286981))

(declare-fun m!5286983 () Bool)

(assert (=> bm!315750 m!5286983))

(assert (=> d!1397623 d!1398145))

(declare-fun b!4530418 () Bool)

(declare-fun e!2822887 () Unit!96566)

(declare-fun Unit!96756 () Unit!96566)

(assert (=> b!4530418 (= e!2822887 Unit!96756)))

(declare-fun lt!1705848 () List!50820)

(assert (=> b!4530418 (= lt!1705848 (removePresrvNoDuplicatedKeys!154 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) key!3287))))

(declare-fun lt!1705858 () Unit!96566)

(assert (=> b!4530418 (= lt!1705858 (lemmaInListThenGetKeysListContains!475 lt!1705848 (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))))

(assert (=> b!4530418 (contains!13457 (getKeysList!479 lt!1705848) (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))))

(declare-fun lt!1705847 () Unit!96566)

(assert (=> b!4530418 (= lt!1705847 lt!1705858)))

(assert (=> b!4530418 false))

(declare-fun b!4530419 () Bool)

(declare-fun e!2822889 () List!50820)

(assert (=> b!4530419 (= e!2822889 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))

(declare-fun c!773540 () Bool)

(declare-fun call!315777 () Bool)

(assert (=> b!4530419 (= c!773540 call!315777)))

(declare-fun lt!1705860 () Unit!96566)

(declare-fun e!2822888 () Unit!96566)

(assert (=> b!4530419 (= lt!1705860 e!2822888)))

(declare-fun bm!315772 () Bool)

(declare-fun call!315778 () (InoxSet tuple2!51146))

(assert (=> bm!315772 (= call!315778 (content!8398 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))))

(declare-fun call!315779 () (InoxSet tuple2!51146))

(declare-fun b!4530420 () Bool)

(declare-fun e!2822884 () Bool)

(declare-fun call!315782 () (InoxSet tuple2!51146))

(declare-fun get!16636 (Option!11156) V!12331)

(assert (=> b!4530420 (= e!2822884 (= call!315782 ((_ map and) call!315779 ((_ map not) (store ((as const (Array tuple2!51146 Bool)) false) (tuple2!51147 key!3287 (get!16636 (getValueByKey!1120 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287))) true)))))))

(assert (=> b!4530420 (containsKey!1829 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287)))

(declare-fun lt!1705855 () Unit!96566)

(assert (=> b!4530420 (= lt!1705855 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287))))

(assert (=> b!4530420 (isDefined!8439 (getValueByKey!1120 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287))))

(declare-fun lt!1705853 () Unit!96566)

(assert (=> b!4530420 (= lt!1705853 lt!1705855)))

(declare-fun b!4530421 () Bool)

(declare-fun e!2822885 () Unit!96566)

(declare-fun Unit!96759 () Unit!96566)

(assert (=> b!4530421 (= e!2822885 Unit!96759)))

(declare-fun b!4530422 () Bool)

(declare-fun e!2822886 () List!50820)

(assert (=> b!4530422 (= e!2822886 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))

(declare-fun c!773542 () Bool)

(declare-fun bm!315773 () Bool)

(assert (=> bm!315773 (= call!315777 (containsKey!1829 e!2822886 (ite c!773542 key!3287 (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))))))

(declare-fun c!773546 () Bool)

(assert (=> bm!315773 (= c!773546 c!773542)))

(declare-fun b!4530423 () Bool)

(declare-fun Unit!96762 () Unit!96566)

(assert (=> b!4530423 (= e!2822885 Unit!96762)))

(declare-fun lt!1705854 () Unit!96566)

(assert (=> b!4530423 (= lt!1705854 (lemmaInGetKeysListThenContainsKey!478 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))))

(declare-fun call!315780 () Bool)

(assert (=> b!4530423 call!315780))

(declare-fun lt!1705859 () Unit!96566)

(assert (=> b!4530423 (= lt!1705859 lt!1705854)))

(assert (=> b!4530423 false))

(declare-fun b!4530424 () Bool)

(assert (=> b!4530424 (= e!2822886 (removePresrvNoDuplicatedKeys!154 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) key!3287))))

(declare-fun b!4530425 () Bool)

(declare-fun res!1886732 () Bool)

(declare-fun e!2822883 () Bool)

(assert (=> b!4530425 (=> (not res!1886732) (not e!2822883))))

(declare-fun lt!1705857 () List!50820)

(assert (=> b!4530425 (= res!1886732 (= (content!8399 (getKeysList!479 lt!1705857)) ((_ map and) (content!8399 (getKeysList!479 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))) ((_ map not) (store ((as const (Array K!12085 Bool)) false) key!3287 true)))))))

(declare-fun b!4530426 () Bool)

(declare-fun e!2822882 () List!50820)

(assert (=> b!4530426 (= e!2822889 e!2822882)))

(declare-fun c!773541 () Bool)

(assert (=> b!4530426 (= c!773541 (and ((_ is Cons!50696) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (not (= (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))) key!3287))))))

(declare-fun b!4530427 () Bool)

(assert (=> b!4530427 (= e!2822883 e!2822884)))

(declare-fun c!773545 () Bool)

(assert (=> b!4530427 (= c!773545 (containsKey!1829 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287))))

(declare-fun bm!315774 () Bool)

(assert (=> bm!315774 (= call!315779 (content!8398 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))

(declare-fun lt!1705861 () K!12085)

(declare-fun bm!315775 () Bool)

(assert (=> bm!315775 (= call!315780 (containsKey!1829 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (ite c!773542 lt!1705861 (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))))))

(declare-fun b!4530428 () Bool)

(declare-fun lt!1705846 () Unit!96566)

(assert (=> b!4530428 (= lt!1705846 e!2822887)))

(declare-fun c!773544 () Bool)

(assert (=> b!4530428 (= c!773544 call!315777)))

(declare-fun lt!1705856 () Unit!96566)

(assert (=> b!4530428 (= lt!1705856 e!2822885)))

(declare-fun c!773543 () Bool)

(assert (=> b!4530428 (= c!773543 (contains!13457 (getKeysList!479 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))) (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))))

(declare-fun lt!1705863 () List!50820)

(declare-fun $colon$colon!953 (List!50820 tuple2!51146) List!50820)

(assert (=> b!4530428 (= lt!1705863 ($colon$colon!953 (removePresrvNoDuplicatedKeys!154 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) key!3287) (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))))

(assert (=> b!4530428 (= e!2822882 lt!1705863)))

(declare-fun bm!315776 () Bool)

(declare-fun call!315781 () (InoxSet tuple2!51146))

(assert (=> bm!315776 (= call!315781 (content!8398 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))))))

(declare-fun b!4530429 () Bool)

(assert (=> b!4530429 (= call!315778 call!315781)))

(declare-fun Unit!96763 () Unit!96566)

(assert (=> b!4530429 (= e!2822888 Unit!96763)))

(declare-fun bm!315777 () Bool)

(assert (=> bm!315777 (= call!315782 (content!8398 lt!1705857))))

(declare-fun b!4530430 () Bool)

(assert (=> b!4530430 (= e!2822882 Nil!50696)))

(declare-fun b!4530431 () Bool)

(assert (=> b!4530431 (= call!315778 ((_ map and) call!315781 ((_ map not) (store ((as const (Array tuple2!51146 Bool)) false) (tuple2!51147 key!3287 (get!16636 (getValueByKey!1120 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287))) true))))))

(declare-fun lt!1705849 () Unit!96566)

(declare-fun e!2822890 () Unit!96566)

(assert (=> b!4530431 (= lt!1705849 e!2822890)))

(declare-fun c!773539 () Bool)

(assert (=> b!4530431 (= c!773539 (contains!13458 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (tuple2!51147 key!3287 (get!16636 (getValueByKey!1120 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287)))))))

(declare-fun Unit!96764 () Unit!96566)

(assert (=> b!4530431 (= e!2822888 Unit!96764)))

(declare-fun b!4530432 () Bool)

(declare-fun Unit!96765 () Unit!96566)

(assert (=> b!4530432 (= e!2822890 Unit!96765)))

(declare-fun lt!1705862 () V!12331)

(assert (=> b!4530432 (= lt!1705862 (get!16636 (getValueByKey!1120 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287)))))

(assert (=> b!4530432 (= lt!1705861 key!3287)))

(declare-fun lt!1705851 () K!12085)

(assert (=> b!4530432 (= lt!1705851 key!3287)))

(declare-fun lt!1705852 () Unit!96566)

(declare-fun lemmaContainsTupleThenContainsKey!70 (List!50820 K!12085 V!12331) Unit!96566)

(assert (=> b!4530432 (= lt!1705852 (lemmaContainsTupleThenContainsKey!70 (t!357782 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) lt!1705861 (get!16636 (getValueByKey!1120 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287))))))

(assert (=> b!4530432 call!315780))

(declare-fun lt!1705850 () Unit!96566)

(assert (=> b!4530432 (= lt!1705850 lt!1705852)))

(assert (=> b!4530432 false))

(declare-fun b!4530433 () Bool)

(declare-fun Unit!96767 () Unit!96566)

(assert (=> b!4530433 (= e!2822887 Unit!96767)))

(declare-fun b!4530434 () Bool)

(declare-fun res!1886733 () Bool)

(assert (=> b!4530434 (=> (not res!1886733) (not e!2822883))))

(assert (=> b!4530434 (= res!1886733 (not (containsKey!1829 lt!1705857 key!3287)))))

(declare-fun d!1398151 () Bool)

(assert (=> d!1398151 e!2822883))

(declare-fun res!1886734 () Bool)

(assert (=> d!1398151 (=> (not res!1886734) (not e!2822883))))

(assert (=> d!1398151 (= res!1886734 (invariantList!1031 lt!1705857))))

(assert (=> d!1398151 (= lt!1705857 e!2822889)))

(assert (=> d!1398151 (= c!773542 (and ((_ is Cons!50696) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= (_1!28867 (h!56563 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))) key!3287)))))

(assert (=> d!1398151 (invariantList!1031 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)))))

(assert (=> d!1398151 (= (removePresrvNoDuplicatedKeys!154 (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001)) key!3287) lt!1705857)))

(declare-fun b!4530435 () Bool)

(declare-fun Unit!96769 () Unit!96566)

(assert (=> b!4530435 (= e!2822890 Unit!96769)))

(declare-fun b!4530436 () Bool)

(assert (=> b!4530436 (= e!2822884 (= call!315782 call!315779))))

(assert (= (and d!1398151 c!773542) b!4530419))

(assert (= (and d!1398151 (not c!773542)) b!4530426))

(assert (= (and b!4530419 c!773540) b!4530431))

(assert (= (and b!4530419 (not c!773540)) b!4530429))

(assert (= (and b!4530431 c!773539) b!4530432))

(assert (= (and b!4530431 (not c!773539)) b!4530435))

(assert (= (or b!4530431 b!4530429) bm!315772))

(assert (= (or b!4530431 b!4530429) bm!315776))

(assert (= (and b!4530426 c!773541) b!4530428))

(assert (= (and b!4530426 (not c!773541)) b!4530430))

(assert (= (and b!4530428 c!773543) b!4530423))

(assert (= (and b!4530428 (not c!773543)) b!4530421))

(assert (= (and b!4530428 c!773544) b!4530418))

(assert (= (and b!4530428 (not c!773544)) b!4530433))

(assert (= (or b!4530432 b!4530423) bm!315775))

(assert (= (or b!4530419 b!4530428) bm!315773))

(assert (= (and bm!315773 c!773546) b!4530422))

(assert (= (and bm!315773 (not c!773546)) b!4530424))

(assert (= (and d!1398151 res!1886734) b!4530434))

(assert (= (and b!4530434 res!1886733) b!4530425))

(assert (= (and b!4530425 res!1886732) b!4530427))

(assert (= (and b!4530427 c!773545) b!4530420))

(assert (= (and b!4530427 (not c!773545)) b!4530436))

(assert (= (or b!4530420 b!4530436) bm!315777))

(assert (= (or b!4530420 b!4530436) bm!315774))

(declare-fun m!5287171 () Bool)

(assert (=> b!4530428 m!5287171))

(assert (=> b!4530428 m!5287171))

(declare-fun m!5287173 () Bool)

(assert (=> b!4530428 m!5287173))

(declare-fun m!5287175 () Bool)

(assert (=> b!4530428 m!5287175))

(assert (=> b!4530428 m!5287175))

(declare-fun m!5287177 () Bool)

(assert (=> b!4530428 m!5287177))

(declare-fun m!5287179 () Bool)

(assert (=> b!4530425 m!5287179))

(assert (=> b!4530425 m!5287179))

(declare-fun m!5287181 () Bool)

(assert (=> b!4530425 m!5287181))

(assert (=> b!4530425 m!5286891))

(assert (=> b!4530425 m!5286891))

(declare-fun m!5287183 () Bool)

(assert (=> b!4530425 m!5287183))

(assert (=> b!4530425 m!5285461))

(declare-fun m!5287185 () Bool)

(assert (=> bm!315776 m!5287185))

(assert (=> b!4530418 m!5287175))

(declare-fun m!5287187 () Bool)

(assert (=> b!4530418 m!5287187))

(declare-fun m!5287189 () Bool)

(assert (=> b!4530418 m!5287189))

(assert (=> b!4530418 m!5287189))

(declare-fun m!5287191 () Bool)

(assert (=> b!4530418 m!5287191))

(declare-fun m!5287193 () Bool)

(assert (=> b!4530431 m!5287193))

(assert (=> b!4530431 m!5287193))

(declare-fun m!5287195 () Bool)

(assert (=> b!4530431 m!5287195))

(declare-fun m!5287197 () Bool)

(assert (=> b!4530431 m!5287197))

(declare-fun m!5287199 () Bool)

(assert (=> b!4530431 m!5287199))

(assert (=> bm!315774 m!5287185))

(declare-fun m!5287201 () Bool)

(assert (=> d!1398151 m!5287201))

(declare-fun m!5287203 () Bool)

(assert (=> d!1398151 m!5287203))

(assert (=> b!4530432 m!5287193))

(assert (=> b!4530432 m!5287193))

(assert (=> b!4530432 m!5287195))

(assert (=> b!4530432 m!5287195))

(declare-fun m!5287205 () Bool)

(assert (=> b!4530432 m!5287205))

(declare-fun m!5287207 () Bool)

(assert (=> bm!315777 m!5287207))

(declare-fun m!5287209 () Bool)

(assert (=> b!4530434 m!5287209))

(declare-fun m!5287211 () Bool)

(assert (=> bm!315775 m!5287211))

(declare-fun m!5287213 () Bool)

(assert (=> bm!315773 m!5287213))

(assert (=> b!4530420 m!5287197))

(declare-fun m!5287215 () Bool)

(assert (=> b!4530420 m!5287215))

(assert (=> b!4530420 m!5287193))

(assert (=> b!4530420 m!5287195))

(assert (=> b!4530420 m!5287193))

(declare-fun m!5287217 () Bool)

(assert (=> b!4530420 m!5287217))

(assert (=> b!4530420 m!5287193))

(declare-fun m!5287219 () Bool)

(assert (=> b!4530420 m!5287219))

(assert (=> b!4530427 m!5287219))

(declare-fun m!5287221 () Bool)

(assert (=> b!4530423 m!5287221))

(declare-fun m!5287223 () Bool)

(assert (=> bm!315772 m!5287223))

(assert (=> b!4530424 m!5287175))

(assert (=> d!1397623 d!1398151))

(declare-fun d!1398231 () Bool)

(declare-fun lt!1705864 () Bool)

(assert (=> d!1398231 (= lt!1705864 (select (content!8398 (_2!28868 lt!1705015)) (get!16633 lt!1705382)))))

(declare-fun e!2822891 () Bool)

(assert (=> d!1398231 (= lt!1705864 e!2822891)))

(declare-fun res!1886735 () Bool)

(assert (=> d!1398231 (=> (not res!1886735) (not e!2822891))))

(assert (=> d!1398231 (= res!1886735 ((_ is Cons!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1398231 (= (contains!13458 (_2!28868 lt!1705015) (get!16633 lt!1705382)) lt!1705864)))

(declare-fun b!4530437 () Bool)

(declare-fun e!2822892 () Bool)

(assert (=> b!4530437 (= e!2822891 e!2822892)))

(declare-fun res!1886736 () Bool)

(assert (=> b!4530437 (=> res!1886736 e!2822892)))

(assert (=> b!4530437 (= res!1886736 (= (h!56563 (_2!28868 lt!1705015)) (get!16633 lt!1705382)))))

(declare-fun b!4530438 () Bool)

(assert (=> b!4530438 (= e!2822892 (contains!13458 (t!357782 (_2!28868 lt!1705015)) (get!16633 lt!1705382)))))

(assert (= (and d!1398231 res!1886735) b!4530437))

(assert (= (and b!4530437 (not res!1886736)) b!4530438))

(declare-fun m!5287225 () Bool)

(assert (=> d!1398231 m!5287225))

(assert (=> d!1398231 m!5285717))

(declare-fun m!5287227 () Bool)

(assert (=> d!1398231 m!5287227))

(assert (=> b!4530438 m!5285717))

(declare-fun m!5287229 () Bool)

(assert (=> b!4530438 m!5287229))

(assert (=> b!4529534 d!1398231))

(assert (=> b!4529534 d!1398017))

(declare-fun d!1398233 () Bool)

(assert (=> d!1398233 (= (isEmpty!28708 (toList!4363 lm!1477)) ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1397621 d!1398233))

(declare-fun bs!865414 () Bool)

(declare-fun b!4530448 () Bool)

(assert (= bs!865414 (and b!4530448 b!4530106)))

(declare-fun lambda!174302 () Int)

(assert (=> bs!865414 (= (= (toList!4364 lt!1705001) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174302 lambda!174274))))

(declare-fun bs!865415 () Bool)

(assert (= bs!865415 (and b!4530448 b!4530248)))

(assert (=> bs!865415 (= (= (toList!4364 lt!1705001) (toList!4364 lt!1705258)) (= lambda!174302 lambda!174294))))

(declare-fun bs!865416 () Bool)

(assert (= bs!865416 (and b!4530448 b!4529816)))

(assert (=> bs!865416 (= (= (toList!4364 lt!1705001) (toList!4364 lt!1705010)) (= lambda!174302 lambda!174252))))

(declare-fun bs!865417 () Bool)

(assert (= bs!865417 (and b!4530448 b!4530122)))

(assert (=> bs!865417 (= (= (toList!4364 lt!1705001) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174302 lambda!174277))))

(declare-fun bs!865418 () Bool)

(assert (= bs!865418 (and b!4530448 b!4530130)))

(assert (=> bs!865418 (= (= (toList!4364 lt!1705001) (t!357782 (toList!4364 lt!1705010))) (= lambda!174302 lambda!174276))))

(declare-fun bs!865419 () Bool)

(assert (= bs!865419 (and b!4530448 b!4530128)))

(assert (=> bs!865419 (= (= (toList!4364 lt!1705001) (toList!4364 lt!1705010)) (= lambda!174302 lambda!174278))))

(declare-fun bs!865420 () Bool)

(assert (= bs!865420 (and b!4530448 b!4529798)))

(assert (=> bs!865420 (= (= (toList!4364 lt!1705001) (t!357782 (toList!4364 lt!1705001))) (= lambda!174302 lambda!174244))))

(declare-fun bs!865421 () Bool)

(assert (= bs!865421 (and b!4530448 b!4529790)))

(assert (=> bs!865421 (= (= (toList!4364 lt!1705001) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174302 lambda!174245))))

(declare-fun bs!865422 () Bool)

(assert (= bs!865422 (and b!4530448 b!4529796)))

(assert (=> bs!865422 (= lambda!174302 lambda!174246)))

(declare-fun bs!865423 () Bool)

(assert (= bs!865423 (and b!4530448 b!4530237)))

(assert (=> bs!865423 (= (= (toList!4364 lt!1705001) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= lambda!174302 lambda!174292))))

(assert (=> b!4530448 true))

(declare-fun bs!865424 () Bool)

(declare-fun b!4530449 () Bool)

(assert (= bs!865424 (and b!4530449 b!4529817)))

(declare-fun lambda!174305 () Int)

(assert (=> bs!865424 (= lambda!174305 lambda!174253)))

(declare-fun bs!865425 () Bool)

(assert (= bs!865425 (and b!4530449 b!4530249)))

(assert (=> bs!865425 (= lambda!174305 lambda!174295)))

(declare-fun bs!865426 () Bool)

(assert (= bs!865426 (and b!4530449 b!4530107)))

(assert (=> bs!865426 (= lambda!174305 lambda!174275)))

(declare-fun bs!865427 () Bool)

(assert (= bs!865427 (and b!4530449 b!4529795)))

(assert (=> bs!865427 (= lambda!174305 lambda!174247)))

(declare-fun bs!865428 () Bool)

(assert (= bs!865428 (and b!4530449 b!4530238)))

(assert (=> bs!865428 (= lambda!174305 lambda!174293)))

(declare-fun bs!865429 () Bool)

(assert (= bs!865429 (and b!4530449 b!4530127)))

(assert (=> bs!865429 (= lambda!174305 lambda!174279)))

(declare-fun d!1398235 () Bool)

(declare-fun e!2822897 () Bool)

(assert (=> d!1398235 e!2822897))

(declare-fun res!1886738 () Bool)

(assert (=> d!1398235 (=> (not res!1886738) (not e!2822897))))

(declare-fun lt!1705869 () List!50823)

(assert (=> d!1398235 (= res!1886738 (noDuplicate!755 lt!1705869))))

(assert (=> d!1398235 (= lt!1705869 (getKeysList!479 (toList!4364 lt!1705001)))))

(assert (=> d!1398235 (= (keys!17626 lt!1705001) lt!1705869)))

(declare-fun b!4530447 () Bool)

(declare-fun res!1886739 () Bool)

(assert (=> b!4530447 (=> (not res!1886739) (not e!2822897))))

(assert (=> b!4530447 (= res!1886739 (= (length!366 lt!1705869) (length!367 (toList!4364 lt!1705001))))))

(declare-fun res!1886737 () Bool)

(assert (=> b!4530448 (=> (not res!1886737) (not e!2822897))))

(assert (=> b!4530448 (= res!1886737 (forall!10306 lt!1705869 lambda!174302))))

(assert (=> b!4530449 (= e!2822897 (= (content!8399 lt!1705869) (content!8399 (map!11155 (toList!4364 lt!1705001) lambda!174305))))))

(assert (= (and d!1398235 res!1886738) b!4530447))

(assert (= (and b!4530447 res!1886739) b!4530448))

(assert (= (and b!4530448 res!1886737) b!4530449))

(declare-fun m!5287231 () Bool)

(assert (=> d!1398235 m!5287231))

(assert (=> d!1398235 m!5285669))

(declare-fun m!5287233 () Bool)

(assert (=> b!4530447 m!5287233))

(assert (=> b!4530447 m!5286197))

(declare-fun m!5287235 () Bool)

(assert (=> b!4530448 m!5287235))

(declare-fun m!5287237 () Bool)

(assert (=> b!4530449 m!5287237))

(declare-fun m!5287239 () Bool)

(assert (=> b!4530449 m!5287239))

(assert (=> b!4530449 m!5287239))

(declare-fun m!5287241 () Bool)

(assert (=> b!4530449 m!5287241))

(assert (=> b!4529498 d!1398235))

(declare-fun d!1398237 () Bool)

(declare-fun lt!1705880 () Bool)

(assert (=> d!1398237 (= lt!1705880 (select (content!8401 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705011))))

(declare-fun e!2822900 () Bool)

(assert (=> d!1398237 (= lt!1705880 e!2822900)))

(declare-fun res!1886741 () Bool)

(assert (=> d!1398237 (=> (not res!1886741) (not e!2822900))))

(assert (=> d!1398237 (= res!1886741 ((_ is Cons!50697) (t!357783 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1398237 (= (contains!13454 (t!357783 (t!357783 (toList!4363 lm!1477))) lt!1705011) lt!1705880)))

(declare-fun b!4530454 () Bool)

(declare-fun e!2822901 () Bool)

(assert (=> b!4530454 (= e!2822900 e!2822901)))

(declare-fun res!1886740 () Bool)

(assert (=> b!4530454 (=> res!1886740 e!2822901)))

(assert (=> b!4530454 (= res!1886740 (= (h!56564 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705011))))

(declare-fun b!4530455 () Bool)

(assert (=> b!4530455 (= e!2822901 (contains!13454 (t!357783 (t!357783 (t!357783 (toList!4363 lm!1477)))) lt!1705011))))

(assert (= (and d!1398237 res!1886741) b!4530454))

(assert (= (and b!4530454 (not res!1886740)) b!4530455))

(declare-fun m!5287243 () Bool)

(assert (=> d!1398237 m!5287243))

(declare-fun m!5287245 () Bool)

(assert (=> d!1398237 m!5287245))

(declare-fun m!5287247 () Bool)

(assert (=> b!4530455 m!5287247))

(assert (=> b!4529651 d!1398237))

(declare-fun d!1398239 () Bool)

(assert (=> d!1398239 (isDefined!8439 (getValueByKey!1120 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(declare-fun lt!1705881 () Unit!96566)

(assert (=> d!1398239 (= lt!1705881 (choose!29717 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (=> d!1398239 (invariantList!1031 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1398239 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287) lt!1705881)))

(declare-fun bs!865430 () Bool)

(assert (= bs!865430 d!1398239))

(assert (=> bs!865430 m!5285605))

(assert (=> bs!865430 m!5285605))

(assert (=> bs!865430 m!5285609))

(declare-fun m!5287249 () Bool)

(assert (=> bs!865430 m!5287249))

(assert (=> bs!865430 m!5286541))

(assert (=> b!4529485 d!1398239))

(assert (=> b!4529485 d!1397885))

(assert (=> b!4529485 d!1397887))

(declare-fun d!1398241 () Bool)

(assert (=> d!1398241 (contains!13457 (getKeysList!479 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) key!3287)))

(declare-fun lt!1705882 () Unit!96566)

(assert (=> d!1398241 (= lt!1705882 (choose!29718 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (=> d!1398241 (invariantList!1031 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1398241 (= (lemmaInListThenGetKeysListContains!475 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287) lt!1705882)))

(declare-fun bs!865431 () Bool)

(assert (= bs!865431 d!1398241))

(assert (=> bs!865431 m!5285623))

(assert (=> bs!865431 m!5285623))

(declare-fun m!5287251 () Bool)

(assert (=> bs!865431 m!5287251))

(declare-fun m!5287253 () Bool)

(assert (=> bs!865431 m!5287253))

(assert (=> bs!865431 m!5286541))

(assert (=> b!4529485 d!1398241))

(declare-fun d!1398243 () Bool)

(declare-fun lt!1705883 () Bool)

(assert (=> d!1398243 (= lt!1705883 (select (content!8401 (toList!4363 lt!1705490)) lt!1705015))))

(declare-fun e!2822904 () Bool)

(assert (=> d!1398243 (= lt!1705883 e!2822904)))

(declare-fun res!1886749 () Bool)

(assert (=> d!1398243 (=> (not res!1886749) (not e!2822904))))

(assert (=> d!1398243 (= res!1886749 ((_ is Cons!50697) (toList!4363 lt!1705490)))))

(assert (=> d!1398243 (= (contains!13454 (toList!4363 lt!1705490) lt!1705015) lt!1705883)))

(declare-fun b!4530460 () Bool)

(declare-fun e!2822905 () Bool)

(assert (=> b!4530460 (= e!2822904 e!2822905)))

(declare-fun res!1886748 () Bool)

(assert (=> b!4530460 (=> res!1886748 e!2822905)))

(assert (=> b!4530460 (= res!1886748 (= (h!56564 (toList!4363 lt!1705490)) lt!1705015))))

(declare-fun b!4530461 () Bool)

(assert (=> b!4530461 (= e!2822905 (contains!13454 (t!357783 (toList!4363 lt!1705490)) lt!1705015))))

(assert (= (and d!1398243 res!1886749) b!4530460))

(assert (= (and b!4530460 (not res!1886748)) b!4530461))

(declare-fun m!5287255 () Bool)

(assert (=> d!1398243 m!5287255))

(declare-fun m!5287257 () Bool)

(assert (=> d!1398243 m!5287257))

(declare-fun m!5287259 () Bool)

(assert (=> b!4530461 m!5287259))

(assert (=> b!4529695 d!1398243))

(declare-fun d!1398245 () Bool)

(declare-fun e!2822906 () Bool)

(assert (=> d!1398245 e!2822906))

(declare-fun res!1886751 () Bool)

(assert (=> d!1398245 (=> (not res!1886751) (not e!2822906))))

(declare-fun lt!1705884 () ListLongMap!2995)

(assert (=> d!1398245 (= res!1886751 (contains!13453 lt!1705884 (_1!28868 (tuple2!51149 hash!344 newBucket!178))))))

(declare-fun lt!1705886 () List!50821)

(assert (=> d!1398245 (= lt!1705884 (ListLongMap!2996 lt!1705886))))

(declare-fun lt!1705885 () Unit!96566)

(declare-fun lt!1705887 () Unit!96566)

(assert (=> d!1398245 (= lt!1705885 lt!1705887)))

(assert (=> d!1398245 (= (getValueByKey!1121 lt!1705886 (_1!28868 (tuple2!51149 hash!344 newBucket!178))) (Some!11156 (_2!28868 (tuple2!51149 hash!344 newBucket!178))))))

(assert (=> d!1398245 (= lt!1705887 (lemmaContainsTupThenGetReturnValue!700 lt!1705886 (_1!28868 (tuple2!51149 hash!344 newBucket!178)) (_2!28868 (tuple2!51149 hash!344 newBucket!178))))))

(assert (=> d!1398245 (= lt!1705886 (insertStrictlySorted!422 (toList!4363 lt!1705004) (_1!28868 (tuple2!51149 hash!344 newBucket!178)) (_2!28868 (tuple2!51149 hash!344 newBucket!178))))))

(assert (=> d!1398245 (= (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)) lt!1705884)))

(declare-fun b!4530464 () Bool)

(declare-fun res!1886750 () Bool)

(assert (=> b!4530464 (=> (not res!1886750) (not e!2822906))))

(assert (=> b!4530464 (= res!1886750 (= (getValueByKey!1121 (toList!4363 lt!1705884) (_1!28868 (tuple2!51149 hash!344 newBucket!178))) (Some!11156 (_2!28868 (tuple2!51149 hash!344 newBucket!178)))))))

(declare-fun b!4530465 () Bool)

(assert (=> b!4530465 (= e!2822906 (contains!13454 (toList!4363 lt!1705884) (tuple2!51149 hash!344 newBucket!178)))))

(assert (= (and d!1398245 res!1886751) b!4530464))

(assert (= (and b!4530464 res!1886750) b!4530465))

(declare-fun m!5287261 () Bool)

(assert (=> d!1398245 m!5287261))

(declare-fun m!5287263 () Bool)

(assert (=> d!1398245 m!5287263))

(declare-fun m!5287265 () Bool)

(assert (=> d!1398245 m!5287265))

(declare-fun m!5287267 () Bool)

(assert (=> d!1398245 m!5287267))

(declare-fun m!5287269 () Bool)

(assert (=> b!4530464 m!5287269))

(declare-fun m!5287271 () Bool)

(assert (=> b!4530465 m!5287271))

(assert (=> d!1397767 d!1398245))

(declare-fun d!1398247 () Bool)

(declare-fun e!2822907 () Bool)

(assert (=> d!1398247 e!2822907))

(declare-fun res!1886752 () Bool)

(assert (=> d!1398247 (=> (not res!1886752) (not e!2822907))))

(declare-fun lt!1705888 () ListMap!3625)

(assert (=> d!1398247 (= res!1886752 (not (contains!13455 lt!1705888 key!3287)))))

(assert (=> d!1398247 (= lt!1705888 (ListMap!3626 (removePresrvNoDuplicatedKeys!154 (toList!4364 (extractMap!1234 (toList!4363 lt!1705004))) key!3287)))))

(assert (=> d!1398247 (= (-!404 (extractMap!1234 (toList!4363 lt!1705004)) key!3287) lt!1705888)))

(declare-fun b!4530466 () Bool)

(assert (=> b!4530466 (= e!2822907 (= ((_ map and) (content!8399 (keys!17626 (extractMap!1234 (toList!4363 lt!1705004)))) ((_ map not) (store ((as const (Array K!12085 Bool)) false) key!3287 true))) (content!8399 (keys!17626 lt!1705888))))))

(assert (= (and d!1398247 res!1886752) b!4530466))

(declare-fun m!5287273 () Bool)

(assert (=> d!1398247 m!5287273))

(declare-fun m!5287275 () Bool)

(assert (=> d!1398247 m!5287275))

(declare-fun m!5287277 () Bool)

(assert (=> b!4530466 m!5287277))

(declare-fun m!5287279 () Bool)

(assert (=> b!4530466 m!5287279))

(assert (=> b!4530466 m!5287277))

(assert (=> b!4530466 m!5286729))

(declare-fun m!5287281 () Bool)

(assert (=> b!4530466 m!5287281))

(assert (=> b!4530466 m!5285141))

(assert (=> b!4530466 m!5286729))

(assert (=> b!4530466 m!5285461))

(assert (=> d!1397767 d!1398247))

(declare-fun d!1398249 () Bool)

(assert (=> d!1398249 (eq!635 (extractMap!1234 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))) (-!404 (extractMap!1234 (toList!4363 lt!1705004)) key!3287))))

(assert (=> d!1398249 true))

(declare-fun _$8!677 () Unit!96566)

(assert (=> d!1398249 (= (choose!29710 lt!1705004 hash!344 newBucket!178 key!3287 hashF!1107) _$8!677)))

(declare-fun bs!865490 () Bool)

(assert (= bs!865490 d!1398249))

(assert (=> bs!865490 m!5285141))

(assert (=> bs!865490 m!5285947))

(assert (=> bs!865490 m!5285945))

(assert (=> bs!865490 m!5285951))

(assert (=> bs!865490 m!5285945))

(assert (=> bs!865490 m!5285947))

(assert (=> bs!865490 m!5285949))

(assert (=> bs!865490 m!5285141))

(assert (=> d!1397767 d!1398249))

(declare-fun bs!865493 () Bool)

(declare-fun d!1398269 () Bool)

(assert (= bs!865493 (and d!1398269 d!1397661)))

(declare-fun lambda!174318 () Int)

(assert (=> bs!865493 (= lambda!174318 lambda!174187)))

(declare-fun bs!865494 () Bool)

(assert (= bs!865494 (and d!1398269 d!1397797)))

(assert (=> bs!865494 (= lambda!174318 lambda!174227)))

(declare-fun bs!865495 () Bool)

(assert (= bs!865495 (and d!1398269 d!1397711)))

(assert (=> bs!865495 (= lambda!174318 lambda!174203)))

(declare-fun bs!865497 () Bool)

(assert (= bs!865497 (and d!1398269 d!1397727)))

(assert (=> bs!865497 (= lambda!174318 lambda!174209)))

(declare-fun bs!865499 () Bool)

(assert (= bs!865499 (and d!1398269 d!1397665)))

(assert (=> bs!865499 (= lambda!174318 lambda!174190)))

(declare-fun bs!865501 () Bool)

(assert (= bs!865501 (and d!1398269 d!1397751)))

(assert (=> bs!865501 (not (= lambda!174318 lambda!174212))))

(declare-fun bs!865503 () Bool)

(assert (= bs!865503 (and d!1398269 d!1397607)))

(assert (=> bs!865503 (= lambda!174318 lambda!174177)))

(declare-fun bs!865505 () Bool)

(assert (= bs!865505 (and d!1398269 d!1397767)))

(assert (=> bs!865505 (= lambda!174318 lambda!174216)))

(declare-fun bs!865506 () Bool)

(assert (= bs!865506 (and d!1398269 d!1397705)))

(assert (=> bs!865506 (= lambda!174318 lambda!174197)))

(declare-fun bs!865508 () Bool)

(assert (= bs!865508 (and d!1398269 d!1397669)))

(assert (=> bs!865508 (= lambda!174318 lambda!174191)))

(declare-fun bs!865509 () Bool)

(assert (= bs!865509 (and d!1398269 b!4529273)))

(assert (=> bs!865509 (not (= lambda!174318 lambda!174088))))

(declare-fun bs!865511 () Bool)

(assert (= bs!865511 (and d!1398269 d!1397769)))

(assert (=> bs!865511 (= lambda!174318 lambda!174217)))

(declare-fun bs!865513 () Bool)

(assert (= bs!865513 (and d!1398269 d!1397765)))

(assert (=> bs!865513 (= lambda!174318 lambda!174213)))

(declare-fun bs!865515 () Bool)

(assert (= bs!865515 (and d!1398269 start!449036)))

(assert (=> bs!865515 (= lambda!174318 lambda!174087)))

(declare-fun bs!865517 () Bool)

(assert (= bs!865517 (and d!1398269 d!1397823)))

(assert (=> bs!865517 (= lambda!174318 lambda!174235)))

(declare-fun bs!865519 () Bool)

(assert (= bs!865519 (and d!1398269 d!1397939)))

(assert (=> bs!865519 (= lambda!174318 lambda!174266)))

(declare-fun lt!1705897 () ListMap!3625)

(assert (=> d!1398269 (invariantList!1031 (toList!4364 lt!1705897))))

(declare-fun e!2822916 () ListMap!3625)

(assert (=> d!1398269 (= lt!1705897 e!2822916)))

(declare-fun c!773560 () Bool)

(assert (=> d!1398269 (= c!773560 ((_ is Cons!50697) (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))))))

(assert (=> d!1398269 (forall!10303 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178))) lambda!174318)))

(assert (=> d!1398269 (= (extractMap!1234 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))) lt!1705897)))

(declare-fun b!4530486 () Bool)

(assert (=> b!4530486 (= e!2822916 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178))))) (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))))))))

(declare-fun b!4530487 () Bool)

(assert (=> b!4530487 (= e!2822916 (ListMap!3626 Nil!50696))))

(assert (= (and d!1398269 c!773560) b!4530486))

(assert (= (and d!1398269 (not c!773560)) b!4530487))

(declare-fun m!5287329 () Bool)

(assert (=> d!1398269 m!5287329))

(declare-fun m!5287331 () Bool)

(assert (=> d!1398269 m!5287331))

(declare-fun m!5287333 () Bool)

(assert (=> b!4530486 m!5287333))

(assert (=> b!4530486 m!5287333))

(declare-fun m!5287335 () Bool)

(assert (=> b!4530486 m!5287335))

(assert (=> d!1397767 d!1398269))

(assert (=> d!1397767 d!1397669))

(declare-fun d!1398273 () Bool)

(declare-fun res!1886759 () Bool)

(declare-fun e!2822920 () Bool)

(assert (=> d!1398273 (=> res!1886759 e!2822920)))

(assert (=> d!1398273 (= res!1886759 ((_ is Nil!50697) (toList!4363 lt!1705004)))))

(assert (=> d!1398273 (= (forall!10303 (toList!4363 lt!1705004) lambda!174216) e!2822920)))

(declare-fun b!4530493 () Bool)

(declare-fun e!2822921 () Bool)

(assert (=> b!4530493 (= e!2822920 e!2822921)))

(declare-fun res!1886760 () Bool)

(assert (=> b!4530493 (=> (not res!1886760) (not e!2822921))))

(assert (=> b!4530493 (= res!1886760 (dynLambda!21186 lambda!174216 (h!56564 (toList!4363 lt!1705004))))))

(declare-fun b!4530494 () Bool)

(assert (=> b!4530494 (= e!2822921 (forall!10303 (t!357783 (toList!4363 lt!1705004)) lambda!174216))))

(assert (= (and d!1398273 (not res!1886759)) b!4530493))

(assert (= (and b!4530493 res!1886760) b!4530494))

(declare-fun b_lambda!156441 () Bool)

(assert (=> (not b_lambda!156441) (not b!4530493)))

(declare-fun m!5287337 () Bool)

(assert (=> b!4530493 m!5287337))

(declare-fun m!5287339 () Bool)

(assert (=> b!4530494 m!5287339))

(assert (=> d!1397767 d!1398273))

(declare-fun d!1398275 () Bool)

(assert (=> d!1398275 (= (eq!635 (extractMap!1234 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))) (-!404 (extractMap!1234 (toList!4363 lt!1705004)) key!3287)) (= (content!8398 (toList!4364 (extractMap!1234 (toList!4363 (+!1570 lt!1705004 (tuple2!51149 hash!344 newBucket!178)))))) (content!8398 (toList!4364 (-!404 (extractMap!1234 (toList!4363 lt!1705004)) key!3287)))))))

(declare-fun bs!865533 () Bool)

(assert (= bs!865533 d!1398275))

(declare-fun m!5287341 () Bool)

(assert (=> bs!865533 m!5287341))

(declare-fun m!5287343 () Bool)

(assert (=> bs!865533 m!5287343))

(assert (=> d!1397767 d!1398275))

(declare-fun b!4530495 () Bool)

(declare-fun e!2822922 () Bool)

(assert (=> b!4530495 (= e!2822922 (not (contains!13457 (keys!17626 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530496 () Bool)

(declare-fun e!2822926 () Unit!96566)

(declare-fun e!2822927 () Unit!96566)

(assert (=> b!4530496 (= e!2822926 e!2822927)))

(declare-fun c!773564 () Bool)

(declare-fun call!315786 () Bool)

(assert (=> b!4530496 (= c!773564 call!315786)))

(declare-fun b!4530497 () Bool)

(declare-fun e!2822923 () Bool)

(declare-fun e!2822924 () Bool)

(assert (=> b!4530497 (= e!2822923 e!2822924)))

(declare-fun res!1886762 () Bool)

(assert (=> b!4530497 (=> (not res!1886762) (not e!2822924))))

(assert (=> b!4530497 (= res!1886762 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530498 () Bool)

(declare-fun e!2822925 () List!50823)

(assert (=> b!4530498 (= e!2822925 (getKeysList!479 (toList!4364 lt!1705212)))))

(declare-fun b!4530499 () Bool)

(assert (=> b!4530499 (= e!2822924 (contains!13457 (keys!17626 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun d!1398277 () Bool)

(assert (=> d!1398277 e!2822923))

(declare-fun res!1886763 () Bool)

(assert (=> d!1398277 (=> res!1886763 e!2822923)))

(assert (=> d!1398277 (= res!1886763 e!2822922)))

(declare-fun res!1886761 () Bool)

(assert (=> d!1398277 (=> (not res!1886761) (not e!2822922))))

(declare-fun lt!1705922 () Bool)

(assert (=> d!1398277 (= res!1886761 (not lt!1705922))))

(declare-fun lt!1705923 () Bool)

(assert (=> d!1398277 (= lt!1705922 lt!1705923)))

(declare-fun lt!1705924 () Unit!96566)

(assert (=> d!1398277 (= lt!1705924 e!2822926)))

(declare-fun c!773562 () Bool)

(assert (=> d!1398277 (= c!773562 lt!1705923)))

(assert (=> d!1398277 (= lt!1705923 (containsKey!1829 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398277 (= (contains!13455 lt!1705212 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1705922)))

(declare-fun b!4530500 () Bool)

(assert (=> b!4530500 (= e!2822925 (keys!17626 lt!1705212))))

(declare-fun b!4530501 () Bool)

(declare-fun Unit!96781 () Unit!96566)

(assert (=> b!4530501 (= e!2822927 Unit!96781)))

(declare-fun bm!315781 () Bool)

(assert (=> bm!315781 (= call!315786 (contains!13457 e!2822925 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun c!773563 () Bool)

(assert (=> bm!315781 (= c!773563 c!773562)))

(declare-fun b!4530502 () Bool)

(declare-fun lt!1705920 () Unit!96566)

(assert (=> b!4530502 (= e!2822926 lt!1705920)))

(declare-fun lt!1705921 () Unit!96566)

(assert (=> b!4530502 (= lt!1705921 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530502 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705925 () Unit!96566)

(assert (=> b!4530502 (= lt!1705925 lt!1705921)))

(assert (=> b!4530502 (= lt!1705920 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530502 call!315786))

(declare-fun b!4530503 () Bool)

(assert (=> b!4530503 false))

(declare-fun lt!1705919 () Unit!96566)

(declare-fun lt!1705926 () Unit!96566)

(assert (=> b!4530503 (= lt!1705919 lt!1705926)))

(assert (=> b!4530503 (containsKey!1829 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4530503 (= lt!1705926 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705212) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun Unit!96782 () Unit!96566)

(assert (=> b!4530503 (= e!2822927 Unit!96782)))

(assert (= (and d!1398277 c!773562) b!4530502))

(assert (= (and d!1398277 (not c!773562)) b!4530496))

(assert (= (and b!4530496 c!773564) b!4530503))

(assert (= (and b!4530496 (not c!773564)) b!4530501))

(assert (= (or b!4530502 b!4530496) bm!315781))

(assert (= (and bm!315781 c!773563) b!4530498))

(assert (= (and bm!315781 (not c!773563)) b!4530500))

(assert (= (and d!1398277 res!1886761) b!4530495))

(assert (= (and d!1398277 (not res!1886763)) b!4530497))

(assert (= (and b!4530497 res!1886762) b!4530499))

(declare-fun m!5287345 () Bool)

(assert (=> b!4530495 m!5287345))

(assert (=> b!4530495 m!5287345))

(declare-fun m!5287347 () Bool)

(assert (=> b!4530495 m!5287347))

(declare-fun m!5287349 () Bool)

(assert (=> b!4530502 m!5287349))

(declare-fun m!5287351 () Bool)

(assert (=> b!4530502 m!5287351))

(assert (=> b!4530502 m!5287351))

(declare-fun m!5287353 () Bool)

(assert (=> b!4530502 m!5287353))

(declare-fun m!5287355 () Bool)

(assert (=> b!4530502 m!5287355))

(assert (=> b!4530500 m!5287345))

(assert (=> b!4530497 m!5287351))

(assert (=> b!4530497 m!5287351))

(assert (=> b!4530497 m!5287353))

(declare-fun m!5287357 () Bool)

(assert (=> d!1398277 m!5287357))

(declare-fun m!5287359 () Bool)

(assert (=> b!4530498 m!5287359))

(assert (=> b!4530499 m!5287345))

(assert (=> b!4530499 m!5287345))

(assert (=> b!4530499 m!5287347))

(assert (=> b!4530503 m!5287357))

(declare-fun m!5287361 () Bool)

(assert (=> b!4530503 m!5287361))

(declare-fun m!5287363 () Bool)

(assert (=> bm!315781 m!5287363))

(assert (=> b!4529387 d!1398277))

(declare-fun d!1398279 () Bool)

(assert (=> d!1398279 (dynLambda!21188 lambda!174167 (h!56563 (_2!28868 lt!1705015)))))

(declare-fun lt!1705927 () Unit!96566)

(assert (=> d!1398279 (= lt!1705927 (choose!29705 (toList!4364 lt!1705220) lambda!174167 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun e!2822928 () Bool)

(assert (=> d!1398279 e!2822928))

(declare-fun res!1886764 () Bool)

(assert (=> d!1398279 (=> (not res!1886764) (not e!2822928))))

(assert (=> d!1398279 (= res!1886764 (forall!10305 (toList!4364 lt!1705220) lambda!174167))))

(assert (=> d!1398279 (= (forallContained!2559 (toList!4364 lt!1705220) lambda!174167 (h!56563 (_2!28868 lt!1705015))) lt!1705927)))

(declare-fun b!4530504 () Bool)

(assert (=> b!4530504 (= e!2822928 (contains!13458 (toList!4364 lt!1705220) (h!56563 (_2!28868 lt!1705015))))))

(assert (= (and d!1398279 res!1886764) b!4530504))

(declare-fun b_lambda!156443 () Bool)

(assert (=> (not b_lambda!156443) (not d!1398279)))

(declare-fun m!5287365 () Bool)

(assert (=> d!1398279 m!5287365))

(declare-fun m!5287367 () Bool)

(assert (=> d!1398279 m!5287367))

(assert (=> d!1398279 m!5285353))

(declare-fun m!5287369 () Bool)

(assert (=> b!4530504 m!5287369))

(assert (=> b!4529387 d!1398279))

(declare-fun bs!865585 () Bool)

(declare-fun d!1398281 () Bool)

(assert (= bs!865585 (and d!1398281 b!4529387)))

(declare-fun lambda!174327 () Int)

(assert (=> bs!865585 (= (= lt!1705212 lt!1705027) (= lambda!174327 lambda!174166))))

(declare-fun bs!865586 () Bool)

(assert (= bs!865586 (and d!1398281 d!1397915)))

(assert (=> bs!865586 (= (= lt!1705212 lt!1705606) (= lambda!174327 lambda!174257))))

(declare-fun bs!865587 () Bool)

(assert (= bs!865587 (and d!1398281 b!4529972)))

(assert (=> bs!865587 (= (= lt!1705212 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174327 lambda!174260))))

(declare-fun bs!865588 () Bool)

(assert (= bs!865588 (and d!1398281 b!4529733)))

(assert (=> bs!865588 (= (= lt!1705212 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174327 lambda!174232))))

(declare-fun bs!865589 () Bool)

(assert (= bs!865589 (and d!1398281 d!1398099)))

(assert (=> bs!865589 (not (= lambda!174327 lambda!174291))))

(declare-fun bs!865590 () Bool)

(assert (= bs!865590 (and d!1398281 b!4529691)))

(assert (=> bs!865590 (= (= lt!1705212 lt!1705467) (= lambda!174327 lambda!174223))))

(declare-fun bs!865591 () Bool)

(assert (= bs!865591 (and d!1398281 d!1397935)))

(assert (=> bs!865591 (= (= lt!1705212 lt!1705636) (= lambda!174327 lambda!174264))))

(declare-fun bs!865592 () Bool)

(assert (= bs!865592 (and d!1398281 d!1397821)))

(assert (=> bs!865592 (= (= lt!1705212 lt!1705529) (= lambda!174327 lambda!174234))))

(assert (=> bs!865585 (= lambda!174327 lambda!174167)))

(declare-fun bs!865593 () Bool)

(assert (= bs!865593 (and d!1398281 b!4529384)))

(assert (=> bs!865593 (= (= lt!1705212 lt!1705027) (= lambda!174327 lambda!174165))))

(declare-fun bs!865594 () Bool)

(assert (= bs!865594 (and d!1398281 d!1397819)))

(assert (=> bs!865594 (= (= lt!1705212 lt!1705001) (= lambda!174327 lambda!174230))))

(declare-fun bs!865596 () Bool)

(assert (= bs!865596 (and d!1398281 b!4529273)))

(assert (=> bs!865596 (not (= lambda!174327 lambda!174089))))

(declare-fun bs!865597 () Bool)

(assert (= bs!865597 (and d!1398281 b!4529688)))

(assert (=> bs!865597 (= (= lt!1705212 lt!1705028) (= lambda!174327 lambda!174221))))

(declare-fun bs!865598 () Bool)

(assert (= bs!865598 (and d!1398281 b!4529936)))

(assert (=> bs!865598 (= (= lt!1705212 lt!1705594) (= lambda!174327 lambda!174256))))

(declare-fun bs!865599 () Bool)

(assert (= bs!865599 (and d!1398281 d!1397787)))

(assert (=> bs!865599 (= (= lt!1705212 lt!1705479) (= lambda!174327 lambda!174224))))

(declare-fun bs!865600 () Bool)

(assert (= bs!865600 (and d!1398281 b!4529431)))

(assert (=> bs!865600 (= (= lt!1705212 lt!1705001) (= lambda!174327 lambda!174178))))

(assert (=> bs!865588 (= (= lt!1705212 lt!1705517) (= lambda!174327 lambda!174233))))

(assert (=> bs!865598 (= (= lt!1705212 (-!404 lt!1705001 key!3287)) (= lambda!174327 lambda!174255))))

(declare-fun bs!865601 () Bool)

(assert (= bs!865601 (and d!1398281 b!4529933)))

(assert (=> bs!865601 (= (= lt!1705212 (-!404 lt!1705001 key!3287)) (= lambda!174327 lambda!174254))))

(declare-fun bs!865602 () Bool)

(assert (= bs!865602 (and d!1398281 b!4529434)))

(assert (=> bs!865602 (= (= lt!1705212 lt!1705266) (= lambda!174327 lambda!174180))))

(declare-fun bs!865603 () Bool)

(assert (= bs!865603 (and d!1398281 d!1398049)))

(assert (=> bs!865603 (= (= lt!1705212 lt!1705027) (= lambda!174327 lambda!174280))))

(assert (=> bs!865590 (= (= lt!1705212 lt!1705028) (= lambda!174327 lambda!174222))))

(declare-fun bs!865604 () Bool)

(assert (= bs!865604 (and d!1398281 d!1397779)))

(assert (=> bs!865604 (not (= lambda!174327 lambda!174220))))

(declare-fun bs!865605 () Bool)

(assert (= bs!865605 (and d!1398281 b!4529969)))

(assert (=> bs!865605 (= (= lt!1705212 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174327 lambda!174258))))

(declare-fun bs!865606 () Bool)

(assert (= bs!865606 (and d!1398281 b!4529730)))

(assert (=> bs!865606 (= (= lt!1705212 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174327 lambda!174231))))

(declare-fun bs!865607 () Bool)

(assert (= bs!865607 (and d!1398281 d!1397569)))

(assert (=> bs!865607 (= (= lt!1705212 lt!1705224) (= lambda!174327 lambda!174168))))

(assert (=> bs!865587 (= (= lt!1705212 lt!1705624) (= lambda!174327 lambda!174261))))

(assert (=> bs!865602 (= (= lt!1705212 lt!1705001) (= lambda!174327 lambda!174179))))

(declare-fun bs!865608 () Bool)

(assert (= bs!865608 (and d!1398281 d!1398075)))

(assert (=> bs!865608 (= (= lt!1705212 lt!1705028) (= lambda!174327 lambda!174289))))

(declare-fun bs!865609 () Bool)

(assert (= bs!865609 (and d!1398281 d!1397629)))

(assert (=> bs!865609 (= (= lt!1705212 lt!1705278) (= lambda!174327 lambda!174181))))

(assert (=> d!1398281 true))

(assert (=> d!1398281 (forall!10305 (toList!4364 lt!1705027) lambda!174327)))

(declare-fun lt!1705930 () Unit!96566)

(declare-fun choose!29731 (ListMap!3625 ListMap!3625 K!12085 V!12331) Unit!96566)

(assert (=> d!1398281 (= lt!1705930 (choose!29731 lt!1705027 lt!1705212 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398281 (forall!10305 (toList!4364 (+!1572 lt!1705027 (tuple2!51147 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))) lambda!174327)))

(assert (=> d!1398281 (= (addForallContainsKeyThenBeforeAdding!352 lt!1705027 lt!1705212 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1705930)))

(declare-fun bs!865611 () Bool)

(assert (= bs!865611 d!1398281))

(declare-fun m!5287421 () Bool)

(assert (=> bs!865611 m!5287421))

(declare-fun m!5287425 () Bool)

(assert (=> bs!865611 m!5287425))

(declare-fun m!5287427 () Bool)

(assert (=> bs!865611 m!5287427))

(declare-fun m!5287429 () Bool)

(assert (=> bs!865611 m!5287429))

(assert (=> b!4529387 d!1398281))

(assert (=> b!4529387 d!1398077))

(declare-fun b!4530518 () Bool)

(declare-fun e!2822939 () Bool)

(assert (=> b!4530518 (= e!2822939 (not (contains!13457 (keys!17626 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530519 () Bool)

(declare-fun e!2822943 () Unit!96566)

(declare-fun e!2822944 () Unit!96566)

(assert (=> b!4530519 (= e!2822943 e!2822944)))

(declare-fun c!773569 () Bool)

(declare-fun call!315787 () Bool)

(assert (=> b!4530519 (= c!773569 call!315787)))

(declare-fun b!4530520 () Bool)

(declare-fun e!2822940 () Bool)

(declare-fun e!2822941 () Bool)

(assert (=> b!4530520 (= e!2822940 e!2822941)))

(declare-fun res!1886774 () Bool)

(assert (=> b!4530520 (=> (not res!1886774) (not e!2822941))))

(assert (=> b!4530520 (= res!1886774 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530521 () Bool)

(declare-fun e!2822942 () List!50823)

(assert (=> b!4530521 (= e!2822942 (getKeysList!479 (toList!4364 lt!1705220)))))

(declare-fun b!4530522 () Bool)

(assert (=> b!4530522 (= e!2822941 (contains!13457 (keys!17626 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun d!1398299 () Bool)

(assert (=> d!1398299 e!2822940))

(declare-fun res!1886775 () Bool)

(assert (=> d!1398299 (=> res!1886775 e!2822940)))

(assert (=> d!1398299 (= res!1886775 e!2822939)))

(declare-fun res!1886773 () Bool)

(assert (=> d!1398299 (=> (not res!1886773) (not e!2822939))))

(declare-fun lt!1705936 () Bool)

(assert (=> d!1398299 (= res!1886773 (not lt!1705936))))

(declare-fun lt!1705937 () Bool)

(assert (=> d!1398299 (= lt!1705936 lt!1705937)))

(declare-fun lt!1705938 () Unit!96566)

(assert (=> d!1398299 (= lt!1705938 e!2822943)))

(declare-fun c!773567 () Bool)

(assert (=> d!1398299 (= c!773567 lt!1705937)))

(assert (=> d!1398299 (= lt!1705937 (containsKey!1829 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398299 (= (contains!13455 lt!1705220 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1705936)))

(declare-fun b!4530523 () Bool)

(assert (=> b!4530523 (= e!2822942 (keys!17626 lt!1705220))))

(declare-fun b!4530524 () Bool)

(declare-fun Unit!96785 () Unit!96566)

(assert (=> b!4530524 (= e!2822944 Unit!96785)))

(declare-fun bm!315782 () Bool)

(assert (=> bm!315782 (= call!315787 (contains!13457 e!2822942 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun c!773568 () Bool)

(assert (=> bm!315782 (= c!773568 c!773567)))

(declare-fun b!4530525 () Bool)

(declare-fun lt!1705934 () Unit!96566)

(assert (=> b!4530525 (= e!2822943 lt!1705934)))

(declare-fun lt!1705935 () Unit!96566)

(assert (=> b!4530525 (= lt!1705935 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530525 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705939 () Unit!96566)

(assert (=> b!4530525 (= lt!1705939 lt!1705935)))

(assert (=> b!4530525 (= lt!1705934 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530525 call!315787))

(declare-fun b!4530526 () Bool)

(assert (=> b!4530526 false))

(declare-fun lt!1705933 () Unit!96566)

(declare-fun lt!1705940 () Unit!96566)

(assert (=> b!4530526 (= lt!1705933 lt!1705940)))

(assert (=> b!4530526 (containsKey!1829 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4530526 (= lt!1705940 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705220) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun Unit!96786 () Unit!96566)

(assert (=> b!4530526 (= e!2822944 Unit!96786)))

(assert (= (and d!1398299 c!773567) b!4530525))

(assert (= (and d!1398299 (not c!773567)) b!4530519))

(assert (= (and b!4530519 c!773569) b!4530526))

(assert (= (and b!4530519 (not c!773569)) b!4530524))

(assert (= (or b!4530525 b!4530519) bm!315782))

(assert (= (and bm!315782 c!773568) b!4530521))

(assert (= (and bm!315782 (not c!773568)) b!4530523))

(assert (= (and d!1398299 res!1886773) b!4530518))

(assert (= (and d!1398299 (not res!1886775)) b!4530520))

(assert (= (and b!4530520 res!1886774) b!4530522))

(declare-fun m!5287431 () Bool)

(assert (=> b!4530518 m!5287431))

(assert (=> b!4530518 m!5287431))

(declare-fun m!5287433 () Bool)

(assert (=> b!4530518 m!5287433))

(declare-fun m!5287435 () Bool)

(assert (=> b!4530525 m!5287435))

(declare-fun m!5287437 () Bool)

(assert (=> b!4530525 m!5287437))

(assert (=> b!4530525 m!5287437))

(declare-fun m!5287439 () Bool)

(assert (=> b!4530525 m!5287439))

(declare-fun m!5287441 () Bool)

(assert (=> b!4530525 m!5287441))

(assert (=> b!4530523 m!5287431))

(assert (=> b!4530520 m!5287437))

(assert (=> b!4530520 m!5287437))

(assert (=> b!4530520 m!5287439))

(declare-fun m!5287443 () Bool)

(assert (=> d!1398299 m!5287443))

(declare-fun m!5287445 () Bool)

(assert (=> b!4530521 m!5287445))

(assert (=> b!4530522 m!5287431))

(assert (=> b!4530522 m!5287431))

(assert (=> b!4530522 m!5287433))

(assert (=> b!4530526 m!5287443))

(declare-fun m!5287451 () Bool)

(assert (=> b!4530526 m!5287451))

(declare-fun m!5287453 () Bool)

(assert (=> bm!315782 m!5287453))

(assert (=> b!4529387 d!1398299))

(declare-fun d!1398305 () Bool)

(declare-fun res!1886778 () Bool)

(declare-fun e!2822948 () Bool)

(assert (=> d!1398305 (=> res!1886778 e!2822948)))

(assert (=> d!1398305 (= res!1886778 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1398305 (= (forall!10305 (_2!28868 lt!1705015) lambda!174167) e!2822948)))

(declare-fun b!4530531 () Bool)

(declare-fun e!2822949 () Bool)

(assert (=> b!4530531 (= e!2822948 e!2822949)))

(declare-fun res!1886779 () Bool)

(assert (=> b!4530531 (=> (not res!1886779) (not e!2822949))))

(assert (=> b!4530531 (= res!1886779 (dynLambda!21188 lambda!174167 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4530532 () Bool)

(assert (=> b!4530532 (= e!2822949 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174167))))

(assert (= (and d!1398305 (not res!1886778)) b!4530531))

(assert (= (and b!4530531 res!1886779) b!4530532))

(declare-fun b_lambda!156453 () Bool)

(assert (=> (not b_lambda!156453) (not b!4530531)))

(assert (=> b!4530531 m!5287365))

(declare-fun m!5287461 () Bool)

(assert (=> b!4530532 m!5287461))

(assert (=> b!4529387 d!1398305))

(declare-fun d!1398311 () Bool)

(declare-fun res!1886780 () Bool)

(declare-fun e!2822952 () Bool)

(assert (=> d!1398311 (=> res!1886780 e!2822952)))

(assert (=> d!1398311 (= res!1886780 ((_ is Nil!50696) (toList!4364 lt!1705220)))))

(assert (=> d!1398311 (= (forall!10305 (toList!4364 lt!1705220) lambda!174167) e!2822952)))

(declare-fun b!4530537 () Bool)

(declare-fun e!2822953 () Bool)

(assert (=> b!4530537 (= e!2822952 e!2822953)))

(declare-fun res!1886781 () Bool)

(assert (=> b!4530537 (=> (not res!1886781) (not e!2822953))))

(assert (=> b!4530537 (= res!1886781 (dynLambda!21188 lambda!174167 (h!56563 (toList!4364 lt!1705220))))))

(declare-fun b!4530538 () Bool)

(assert (=> b!4530538 (= e!2822953 (forall!10305 (t!357782 (toList!4364 lt!1705220)) lambda!174167))))

(assert (= (and d!1398311 (not res!1886780)) b!4530537))

(assert (= (and b!4530537 res!1886781) b!4530538))

(declare-fun b_lambda!156455 () Bool)

(assert (=> (not b_lambda!156455) (not b!4530537)))

(declare-fun m!5287465 () Bool)

(assert (=> b!4530537 m!5287465))

(declare-fun m!5287467 () Bool)

(assert (=> b!4530538 m!5287467))

(assert (=> b!4529387 d!1398311))

(declare-fun bs!865618 () Bool)

(declare-fun b!4530549 () Bool)

(assert (= bs!865618 (and b!4530549 b!4529387)))

(declare-fun lambda!174329 () Int)

(assert (=> bs!865618 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174329 lambda!174166))))

(declare-fun bs!865620 () Bool)

(assert (= bs!865620 (and b!4530549 d!1397915)))

(assert (=> bs!865620 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705606) (= lambda!174329 lambda!174257))))

(declare-fun bs!865621 () Bool)

(assert (= bs!865621 (and b!4530549 b!4529972)))

(assert (=> bs!865621 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174329 lambda!174260))))

(declare-fun bs!865622 () Bool)

(assert (= bs!865622 (and b!4530549 b!4529733)))

(assert (=> bs!865622 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174329 lambda!174232))))

(declare-fun bs!865623 () Bool)

(assert (= bs!865623 (and b!4530549 d!1398099)))

(assert (=> bs!865623 (not (= lambda!174329 lambda!174291))))

(declare-fun bs!865625 () Bool)

(assert (= bs!865625 (and b!4530549 b!4529691)))

(assert (=> bs!865625 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174329 lambda!174223))))

(declare-fun bs!865627 () Bool)

(assert (= bs!865627 (and b!4530549 d!1397935)))

(assert (=> bs!865627 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705636) (= lambda!174329 lambda!174264))))

(declare-fun bs!865629 () Bool)

(assert (= bs!865629 (and b!4530549 d!1397821)))

(assert (=> bs!865629 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705529) (= lambda!174329 lambda!174234))))

(assert (=> bs!865618 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174329 lambda!174167))))

(declare-fun bs!865632 () Bool)

(assert (= bs!865632 (and b!4530549 b!4529384)))

(assert (=> bs!865632 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174329 lambda!174165))))

(declare-fun bs!865634 () Bool)

(assert (= bs!865634 (and b!4530549 d!1397819)))

(assert (=> bs!865634 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174329 lambda!174230))))

(declare-fun bs!865635 () Bool)

(assert (= bs!865635 (and b!4530549 b!4529273)))

(assert (=> bs!865635 (not (= lambda!174329 lambda!174089))))

(declare-fun bs!865636 () Bool)

(assert (= bs!865636 (and b!4530549 b!4529688)))

(assert (=> bs!865636 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174329 lambda!174221))))

(declare-fun bs!865638 () Bool)

(assert (= bs!865638 (and b!4530549 b!4529936)))

(assert (=> bs!865638 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705594) (= lambda!174329 lambda!174256))))

(declare-fun bs!865640 () Bool)

(assert (= bs!865640 (and b!4530549 d!1397787)))

(assert (=> bs!865640 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705479) (= lambda!174329 lambda!174224))))

(declare-fun bs!865642 () Bool)

(assert (= bs!865642 (and b!4530549 b!4529431)))

(assert (=> bs!865642 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174329 lambda!174178))))

(declare-fun bs!865644 () Bool)

(assert (= bs!865644 (and b!4530549 d!1398281)))

(assert (=> bs!865644 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174329 lambda!174327))))

(assert (=> bs!865622 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705517) (= lambda!174329 lambda!174233))))

(assert (=> bs!865638 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174329 lambda!174255))))

(declare-fun bs!865648 () Bool)

(assert (= bs!865648 (and b!4530549 b!4529933)))

(assert (=> bs!865648 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174329 lambda!174254))))

(declare-fun bs!865649 () Bool)

(assert (= bs!865649 (and b!4530549 b!4529434)))

(assert (=> bs!865649 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174329 lambda!174180))))

(declare-fun bs!865650 () Bool)

(assert (= bs!865650 (and b!4530549 d!1398049)))

(assert (=> bs!865650 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174329 lambda!174280))))

(assert (=> bs!865625 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174329 lambda!174222))))

(declare-fun bs!865653 () Bool)

(assert (= bs!865653 (and b!4530549 d!1397779)))

(assert (=> bs!865653 (not (= lambda!174329 lambda!174220))))

(declare-fun bs!865655 () Bool)

(assert (= bs!865655 (and b!4530549 b!4529969)))

(assert (=> bs!865655 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174329 lambda!174258))))

(declare-fun bs!865656 () Bool)

(assert (= bs!865656 (and b!4530549 b!4529730)))

(assert (=> bs!865656 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174329 lambda!174231))))

(declare-fun bs!865657 () Bool)

(assert (= bs!865657 (and b!4530549 d!1397569)))

(assert (=> bs!865657 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705224) (= lambda!174329 lambda!174168))))

(assert (=> bs!865621 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705624) (= lambda!174329 lambda!174261))))

(assert (=> bs!865649 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174329 lambda!174179))))

(declare-fun bs!865658 () Bool)

(assert (= bs!865658 (and b!4530549 d!1398075)))

(assert (=> bs!865658 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174329 lambda!174289))))

(declare-fun bs!865659 () Bool)

(assert (= bs!865659 (and b!4530549 d!1397629)))

(assert (=> bs!865659 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705278) (= lambda!174329 lambda!174181))))

(assert (=> b!4530549 true))

(declare-fun bs!865660 () Bool)

(declare-fun b!4530552 () Bool)

(assert (= bs!865660 (and b!4530552 b!4529387)))

(declare-fun lambda!174333 () Int)

(assert (=> bs!865660 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174333 lambda!174166))))

(declare-fun bs!865661 () Bool)

(assert (= bs!865661 (and b!4530552 d!1397915)))

(assert (=> bs!865661 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705606) (= lambda!174333 lambda!174257))))

(declare-fun bs!865662 () Bool)

(assert (= bs!865662 (and b!4530552 b!4529972)))

(assert (=> bs!865662 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174333 lambda!174260))))

(declare-fun bs!865663 () Bool)

(assert (= bs!865663 (and b!4530552 b!4529733)))

(assert (=> bs!865663 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174333 lambda!174232))))

(declare-fun bs!865664 () Bool)

(assert (= bs!865664 (and b!4530552 d!1398099)))

(assert (=> bs!865664 (not (= lambda!174333 lambda!174291))))

(declare-fun bs!865665 () Bool)

(assert (= bs!865665 (and b!4530552 b!4529691)))

(assert (=> bs!865665 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174333 lambda!174223))))

(declare-fun bs!865666 () Bool)

(assert (= bs!865666 (and b!4530552 d!1397935)))

(assert (=> bs!865666 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705636) (= lambda!174333 lambda!174264))))

(declare-fun bs!865667 () Bool)

(assert (= bs!865667 (and b!4530552 d!1397821)))

(assert (=> bs!865667 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705529) (= lambda!174333 lambda!174234))))

(assert (=> bs!865660 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174333 lambda!174167))))

(declare-fun bs!865668 () Bool)

(assert (= bs!865668 (and b!4530552 d!1397819)))

(assert (=> bs!865668 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174333 lambda!174230))))

(declare-fun bs!865669 () Bool)

(assert (= bs!865669 (and b!4530552 b!4529273)))

(assert (=> bs!865669 (not (= lambda!174333 lambda!174089))))

(declare-fun bs!865670 () Bool)

(assert (= bs!865670 (and b!4530552 b!4529688)))

(assert (=> bs!865670 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174333 lambda!174221))))

(declare-fun bs!865671 () Bool)

(assert (= bs!865671 (and b!4530552 b!4529936)))

(assert (=> bs!865671 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705594) (= lambda!174333 lambda!174256))))

(declare-fun bs!865672 () Bool)

(assert (= bs!865672 (and b!4530552 d!1397787)))

(assert (=> bs!865672 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705479) (= lambda!174333 lambda!174224))))

(declare-fun bs!865673 () Bool)

(assert (= bs!865673 (and b!4530552 b!4529431)))

(assert (=> bs!865673 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174333 lambda!174178))))

(declare-fun bs!865674 () Bool)

(assert (= bs!865674 (and b!4530552 d!1398281)))

(assert (=> bs!865674 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174333 lambda!174327))))

(assert (=> bs!865663 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705517) (= lambda!174333 lambda!174233))))

(assert (=> bs!865671 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174333 lambda!174255))))

(declare-fun bs!865675 () Bool)

(assert (= bs!865675 (and b!4530552 b!4529933)))

(assert (=> bs!865675 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174333 lambda!174254))))

(declare-fun bs!865676 () Bool)

(assert (= bs!865676 (and b!4530552 b!4529434)))

(assert (=> bs!865676 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174333 lambda!174180))))

(declare-fun bs!865677 () Bool)

(assert (= bs!865677 (and b!4530552 d!1398049)))

(assert (=> bs!865677 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174333 lambda!174280))))

(assert (=> bs!865665 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174333 lambda!174222))))

(declare-fun bs!865678 () Bool)

(assert (= bs!865678 (and b!4530552 d!1397779)))

(assert (=> bs!865678 (not (= lambda!174333 lambda!174220))))

(declare-fun bs!865679 () Bool)

(assert (= bs!865679 (and b!4530552 b!4529969)))

(assert (=> bs!865679 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174333 lambda!174258))))

(declare-fun bs!865680 () Bool)

(assert (= bs!865680 (and b!4530552 b!4529384)))

(assert (=> bs!865680 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174333 lambda!174165))))

(declare-fun bs!865681 () Bool)

(assert (= bs!865681 (and b!4530552 b!4530549)))

(assert (=> bs!865681 (= lambda!174333 lambda!174329)))

(declare-fun bs!865682 () Bool)

(assert (= bs!865682 (and b!4530552 b!4529730)))

(assert (=> bs!865682 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174333 lambda!174231))))

(declare-fun bs!865683 () Bool)

(assert (= bs!865683 (and b!4530552 d!1397569)))

(assert (=> bs!865683 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705224) (= lambda!174333 lambda!174168))))

(assert (=> bs!865662 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705624) (= lambda!174333 lambda!174261))))

(assert (=> bs!865676 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174333 lambda!174179))))

(declare-fun bs!865684 () Bool)

(assert (= bs!865684 (and b!4530552 d!1398075)))

(assert (=> bs!865684 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174333 lambda!174289))))

(declare-fun bs!865685 () Bool)

(assert (= bs!865685 (and b!4530552 d!1397629)))

(assert (=> bs!865685 (= (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705278) (= lambda!174333 lambda!174181))))

(assert (=> b!4530552 true))

(declare-fun lt!1705953 () ListMap!3625)

(declare-fun lambda!174334 () Int)

(assert (=> b!4530552 (= (= lt!1705953 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174334 lambda!174333))))

(assert (=> bs!865660 (= (= lt!1705953 lt!1705027) (= lambda!174334 lambda!174166))))

(assert (=> bs!865661 (= (= lt!1705953 lt!1705606) (= lambda!174334 lambda!174257))))

(assert (=> bs!865662 (= (= lt!1705953 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174334 lambda!174260))))

(assert (=> bs!865663 (= (= lt!1705953 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174334 lambda!174232))))

(assert (=> bs!865664 (not (= lambda!174334 lambda!174291))))

(assert (=> bs!865665 (= (= lt!1705953 lt!1705467) (= lambda!174334 lambda!174223))))

(assert (=> bs!865666 (= (= lt!1705953 lt!1705636) (= lambda!174334 lambda!174264))))

(assert (=> bs!865667 (= (= lt!1705953 lt!1705529) (= lambda!174334 lambda!174234))))

(assert (=> bs!865660 (= (= lt!1705953 lt!1705212) (= lambda!174334 lambda!174167))))

(assert (=> bs!865668 (= (= lt!1705953 lt!1705001) (= lambda!174334 lambda!174230))))

(assert (=> bs!865669 (not (= lambda!174334 lambda!174089))))

(assert (=> bs!865670 (= (= lt!1705953 lt!1705028) (= lambda!174334 lambda!174221))))

(assert (=> bs!865671 (= (= lt!1705953 lt!1705594) (= lambda!174334 lambda!174256))))

(assert (=> bs!865672 (= (= lt!1705953 lt!1705479) (= lambda!174334 lambda!174224))))

(assert (=> bs!865673 (= (= lt!1705953 lt!1705001) (= lambda!174334 lambda!174178))))

(assert (=> bs!865674 (= (= lt!1705953 lt!1705212) (= lambda!174334 lambda!174327))))

(assert (=> bs!865663 (= (= lt!1705953 lt!1705517) (= lambda!174334 lambda!174233))))

(assert (=> bs!865671 (= (= lt!1705953 (-!404 lt!1705001 key!3287)) (= lambda!174334 lambda!174255))))

(assert (=> bs!865675 (= (= lt!1705953 (-!404 lt!1705001 key!3287)) (= lambda!174334 lambda!174254))))

(assert (=> bs!865676 (= (= lt!1705953 lt!1705266) (= lambda!174334 lambda!174180))))

(assert (=> bs!865677 (= (= lt!1705953 lt!1705027) (= lambda!174334 lambda!174280))))

(assert (=> bs!865665 (= (= lt!1705953 lt!1705028) (= lambda!174334 lambda!174222))))

(assert (=> bs!865678 (not (= lambda!174334 lambda!174220))))

(assert (=> bs!865679 (= (= lt!1705953 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174334 lambda!174258))))

(assert (=> bs!865680 (= (= lt!1705953 lt!1705027) (= lambda!174334 lambda!174165))))

(assert (=> bs!865681 (= (= lt!1705953 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174334 lambda!174329))))

(assert (=> bs!865682 (= (= lt!1705953 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174334 lambda!174231))))

(assert (=> bs!865683 (= (= lt!1705953 lt!1705224) (= lambda!174334 lambda!174168))))

(assert (=> bs!865662 (= (= lt!1705953 lt!1705624) (= lambda!174334 lambda!174261))))

(assert (=> bs!865676 (= (= lt!1705953 lt!1705001) (= lambda!174334 lambda!174179))))

(assert (=> bs!865684 (= (= lt!1705953 lt!1705028) (= lambda!174334 lambda!174289))))

(assert (=> bs!865685 (= (= lt!1705953 lt!1705278) (= lambda!174334 lambda!174181))))

(assert (=> b!4530552 true))

(declare-fun bs!865686 () Bool)

(declare-fun d!1398315 () Bool)

(assert (= bs!865686 (and d!1398315 b!4530552)))

(declare-fun lt!1705965 () ListMap!3625)

(declare-fun lambda!174335 () Int)

(assert (=> bs!865686 (= (= lt!1705965 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174335 lambda!174333))))

(declare-fun bs!865687 () Bool)

(assert (= bs!865687 (and d!1398315 b!4529387)))

(assert (=> bs!865687 (= (= lt!1705965 lt!1705027) (= lambda!174335 lambda!174166))))

(assert (=> bs!865686 (= (= lt!1705965 lt!1705953) (= lambda!174335 lambda!174334))))

(declare-fun bs!865688 () Bool)

(assert (= bs!865688 (and d!1398315 d!1397915)))

(assert (=> bs!865688 (= (= lt!1705965 lt!1705606) (= lambda!174335 lambda!174257))))

(declare-fun bs!865689 () Bool)

(assert (= bs!865689 (and d!1398315 b!4529972)))

(assert (=> bs!865689 (= (= lt!1705965 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174335 lambda!174260))))

(declare-fun bs!865690 () Bool)

(assert (= bs!865690 (and d!1398315 b!4529733)))

(assert (=> bs!865690 (= (= lt!1705965 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174335 lambda!174232))))

(declare-fun bs!865691 () Bool)

(assert (= bs!865691 (and d!1398315 d!1398099)))

(assert (=> bs!865691 (not (= lambda!174335 lambda!174291))))

(declare-fun bs!865692 () Bool)

(assert (= bs!865692 (and d!1398315 b!4529691)))

(assert (=> bs!865692 (= (= lt!1705965 lt!1705467) (= lambda!174335 lambda!174223))))

(declare-fun bs!865693 () Bool)

(assert (= bs!865693 (and d!1398315 d!1397935)))

(assert (=> bs!865693 (= (= lt!1705965 lt!1705636) (= lambda!174335 lambda!174264))))

(declare-fun bs!865694 () Bool)

(assert (= bs!865694 (and d!1398315 d!1397821)))

(assert (=> bs!865694 (= (= lt!1705965 lt!1705529) (= lambda!174335 lambda!174234))))

(assert (=> bs!865687 (= (= lt!1705965 lt!1705212) (= lambda!174335 lambda!174167))))

(declare-fun bs!865695 () Bool)

(assert (= bs!865695 (and d!1398315 d!1397819)))

(assert (=> bs!865695 (= (= lt!1705965 lt!1705001) (= lambda!174335 lambda!174230))))

(declare-fun bs!865696 () Bool)

(assert (= bs!865696 (and d!1398315 b!4529273)))

(assert (=> bs!865696 (not (= lambda!174335 lambda!174089))))

(declare-fun bs!865697 () Bool)

(assert (= bs!865697 (and d!1398315 b!4529688)))

(assert (=> bs!865697 (= (= lt!1705965 lt!1705028) (= lambda!174335 lambda!174221))))

(declare-fun bs!865698 () Bool)

(assert (= bs!865698 (and d!1398315 b!4529936)))

(assert (=> bs!865698 (= (= lt!1705965 lt!1705594) (= lambda!174335 lambda!174256))))

(declare-fun bs!865699 () Bool)

(assert (= bs!865699 (and d!1398315 d!1397787)))

(assert (=> bs!865699 (= (= lt!1705965 lt!1705479) (= lambda!174335 lambda!174224))))

(declare-fun bs!865700 () Bool)

(assert (= bs!865700 (and d!1398315 b!4529431)))

(assert (=> bs!865700 (= (= lt!1705965 lt!1705001) (= lambda!174335 lambda!174178))))

(declare-fun bs!865701 () Bool)

(assert (= bs!865701 (and d!1398315 d!1398281)))

(assert (=> bs!865701 (= (= lt!1705965 lt!1705212) (= lambda!174335 lambda!174327))))

(assert (=> bs!865690 (= (= lt!1705965 lt!1705517) (= lambda!174335 lambda!174233))))

(assert (=> bs!865698 (= (= lt!1705965 (-!404 lt!1705001 key!3287)) (= lambda!174335 lambda!174255))))

(declare-fun bs!865702 () Bool)

(assert (= bs!865702 (and d!1398315 b!4529933)))

(assert (=> bs!865702 (= (= lt!1705965 (-!404 lt!1705001 key!3287)) (= lambda!174335 lambda!174254))))

(declare-fun bs!865703 () Bool)

(assert (= bs!865703 (and d!1398315 b!4529434)))

(assert (=> bs!865703 (= (= lt!1705965 lt!1705266) (= lambda!174335 lambda!174180))))

(declare-fun bs!865704 () Bool)

(assert (= bs!865704 (and d!1398315 d!1398049)))

(assert (=> bs!865704 (= (= lt!1705965 lt!1705027) (= lambda!174335 lambda!174280))))

(assert (=> bs!865692 (= (= lt!1705965 lt!1705028) (= lambda!174335 lambda!174222))))

(declare-fun bs!865705 () Bool)

(assert (= bs!865705 (and d!1398315 d!1397779)))

(assert (=> bs!865705 (not (= lambda!174335 lambda!174220))))

(declare-fun bs!865706 () Bool)

(assert (= bs!865706 (and d!1398315 b!4529969)))

(assert (=> bs!865706 (= (= lt!1705965 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174335 lambda!174258))))

(declare-fun bs!865707 () Bool)

(assert (= bs!865707 (and d!1398315 b!4529384)))

(assert (=> bs!865707 (= (= lt!1705965 lt!1705027) (= lambda!174335 lambda!174165))))

(declare-fun bs!865708 () Bool)

(assert (= bs!865708 (and d!1398315 b!4530549)))

(assert (=> bs!865708 (= (= lt!1705965 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174335 lambda!174329))))

(declare-fun bs!865709 () Bool)

(assert (= bs!865709 (and d!1398315 b!4529730)))

(assert (=> bs!865709 (= (= lt!1705965 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174335 lambda!174231))))

(declare-fun bs!865710 () Bool)

(assert (= bs!865710 (and d!1398315 d!1397569)))

(assert (=> bs!865710 (= (= lt!1705965 lt!1705224) (= lambda!174335 lambda!174168))))

(assert (=> bs!865689 (= (= lt!1705965 lt!1705624) (= lambda!174335 lambda!174261))))

(assert (=> bs!865703 (= (= lt!1705965 lt!1705001) (= lambda!174335 lambda!174179))))

(declare-fun bs!865711 () Bool)

(assert (= bs!865711 (and d!1398315 d!1398075)))

(assert (=> bs!865711 (= (= lt!1705965 lt!1705028) (= lambda!174335 lambda!174289))))

(declare-fun bs!865712 () Bool)

(assert (= bs!865712 (and d!1398315 d!1397629)))

(assert (=> bs!865712 (= (= lt!1705965 lt!1705278) (= lambda!174335 lambda!174181))))

(assert (=> d!1398315 true))

(declare-fun e!2822958 () Bool)

(declare-fun b!4530548 () Bool)

(assert (=> b!4530548 (= e!2822958 (forall!10305 (toList!4364 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) lambda!174334))))

(declare-fun c!773576 () Bool)

(declare-fun call!315789 () Bool)

(declare-fun bm!315783 () Bool)

(assert (=> bm!315783 (= call!315789 (forall!10305 (ite c!773576 (toList!4364 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (t!357782 (t!357782 (_2!28868 lt!1705015)))) (ite c!773576 lambda!174329 lambda!174334)))))

(declare-fun e!2822959 () ListMap!3625)

(assert (=> b!4530549 (= e!2822959 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1705956 () Unit!96566)

(declare-fun call!315790 () Unit!96566)

(assert (=> b!4530549 (= lt!1705956 call!315790)))

(declare-fun call!315788 () Bool)

(assert (=> b!4530549 call!315788))

(declare-fun lt!1705967 () Unit!96566)

(assert (=> b!4530549 (= lt!1705967 lt!1705956)))

(assert (=> b!4530549 call!315789))

(declare-fun lt!1705949 () Unit!96566)

(declare-fun Unit!96787 () Unit!96566)

(assert (=> b!4530549 (= lt!1705949 Unit!96787)))

(declare-fun b!4530550 () Bool)

(declare-fun res!1886786 () Bool)

(declare-fun e!2822960 () Bool)

(assert (=> b!4530550 (=> (not res!1886786) (not e!2822960))))

(assert (=> b!4530550 (= res!1886786 (forall!10305 (toList!4364 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) lambda!174335))))

(declare-fun bm!315784 () Bool)

(assert (=> bm!315784 (= call!315790 (lemmaContainsAllItsOwnKeys!352 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun b!4530551 () Bool)

(assert (=> b!4530551 (= e!2822960 (invariantList!1031 (toList!4364 lt!1705965)))))

(assert (=> d!1398315 e!2822960))

(declare-fun res!1886787 () Bool)

(assert (=> d!1398315 (=> (not res!1886787) (not e!2822960))))

(assert (=> d!1398315 (= res!1886787 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174335))))

(assert (=> d!1398315 (= lt!1705965 e!2822959)))

(assert (=> d!1398315 (= c!773576 ((_ is Nil!50696) (t!357782 (_2!28868 lt!1705015))))))

(assert (=> d!1398315 (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705015)))))

(assert (=> d!1398315 (= (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) lt!1705965)))

(declare-fun bm!315785 () Bool)

(assert (=> bm!315785 (= call!315788 (forall!10305 (toList!4364 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (ite c!773576 lambda!174329 lambda!174334)))))

(assert (=> b!4530552 (= e!2822959 lt!1705953)))

(declare-fun lt!1705961 () ListMap!3625)

(assert (=> b!4530552 (= lt!1705961 (+!1572 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> b!4530552 (= lt!1705953 (addToMapMapFromBucket!705 (t!357782 (t!357782 (_2!28868 lt!1705015))) (+!1572 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) (h!56563 (t!357782 (_2!28868 lt!1705015))))))))

(declare-fun lt!1705960 () Unit!96566)

(assert (=> b!4530552 (= lt!1705960 call!315790)))

(assert (=> b!4530552 (forall!10305 (toList!4364 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) lambda!174333)))

(declare-fun lt!1705964 () Unit!96566)

(assert (=> b!4530552 (= lt!1705964 lt!1705960)))

(assert (=> b!4530552 (forall!10305 (toList!4364 lt!1705961) lambda!174334)))

(declare-fun lt!1705957 () Unit!96566)

(declare-fun Unit!96795 () Unit!96566)

(assert (=> b!4530552 (= lt!1705957 Unit!96795)))

(assert (=> b!4530552 call!315789))

(declare-fun lt!1705962 () Unit!96566)

(declare-fun Unit!96797 () Unit!96566)

(assert (=> b!4530552 (= lt!1705962 Unit!96797)))

(declare-fun lt!1705950 () Unit!96566)

(declare-fun Unit!96799 () Unit!96566)

(assert (=> b!4530552 (= lt!1705950 Unit!96799)))

(declare-fun lt!1705951 () Unit!96566)

(assert (=> b!4530552 (= lt!1705951 (forallContained!2559 (toList!4364 lt!1705961) lambda!174334 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> b!4530552 (contains!13455 lt!1705961 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705952 () Unit!96566)

(declare-fun Unit!96800 () Unit!96566)

(assert (=> b!4530552 (= lt!1705952 Unit!96800)))

(assert (=> b!4530552 (contains!13455 lt!1705953 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun lt!1705955 () Unit!96566)

(declare-fun Unit!96802 () Unit!96566)

(assert (=> b!4530552 (= lt!1705955 Unit!96802)))

(assert (=> b!4530552 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174334)))

(declare-fun lt!1705958 () Unit!96566)

(declare-fun Unit!96804 () Unit!96566)

(assert (=> b!4530552 (= lt!1705958 Unit!96804)))

(assert (=> b!4530552 (forall!10305 (toList!4364 lt!1705961) lambda!174334)))

(declare-fun lt!1705959 () Unit!96566)

(declare-fun Unit!96805 () Unit!96566)

(assert (=> b!4530552 (= lt!1705959 Unit!96805)))

(declare-fun lt!1705954 () Unit!96566)

(declare-fun Unit!96806 () Unit!96566)

(assert (=> b!4530552 (= lt!1705954 Unit!96806)))

(declare-fun lt!1705948 () Unit!96566)

(assert (=> b!4530552 (= lt!1705948 (addForallContainsKeyThenBeforeAdding!352 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1705953 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))) (_2!28867 (h!56563 (t!357782 (_2!28868 lt!1705015))))))))

(assert (=> b!4530552 call!315788))

(declare-fun lt!1705966 () Unit!96566)

(assert (=> b!4530552 (= lt!1705966 lt!1705948)))

(assert (=> b!4530552 (forall!10305 (toList!4364 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) lambda!174334)))

(declare-fun lt!1705963 () Unit!96566)

(declare-fun Unit!96807 () Unit!96566)

(assert (=> b!4530552 (= lt!1705963 Unit!96807)))

(declare-fun res!1886785 () Bool)

(assert (=> b!4530552 (= res!1886785 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174334))))

(assert (=> b!4530552 (=> (not res!1886785) (not e!2822958))))

(assert (=> b!4530552 e!2822958))

(declare-fun lt!1705968 () Unit!96566)

(declare-fun Unit!96808 () Unit!96566)

(assert (=> b!4530552 (= lt!1705968 Unit!96808)))

(assert (= (and d!1398315 c!773576) b!4530549))

(assert (= (and d!1398315 (not c!773576)) b!4530552))

(assert (= (and b!4530552 res!1886785) b!4530548))

(assert (= (or b!4530549 b!4530552) bm!315785))

(assert (= (or b!4530549 b!4530552) bm!315783))

(assert (= (or b!4530549 b!4530552) bm!315784))

(assert (= (and d!1398315 res!1886787) b!4530550))

(assert (= (and b!4530550 res!1886786) b!4530551))

(declare-fun m!5287525 () Bool)

(assert (=> d!1398315 m!5287525))

(assert (=> d!1398315 m!5285901))

(declare-fun m!5287527 () Bool)

(assert (=> b!4530552 m!5287527))

(assert (=> b!4530552 m!5287527))

(declare-fun m!5287529 () Bool)

(assert (=> b!4530552 m!5287529))

(declare-fun m!5287531 () Bool)

(assert (=> b!4530552 m!5287531))

(assert (=> b!4530552 m!5285363))

(declare-fun m!5287533 () Bool)

(assert (=> b!4530552 m!5287533))

(declare-fun m!5287535 () Bool)

(assert (=> b!4530552 m!5287535))

(declare-fun m!5287537 () Bool)

(assert (=> b!4530552 m!5287537))

(declare-fun m!5287539 () Bool)

(assert (=> b!4530552 m!5287539))

(declare-fun m!5287541 () Bool)

(assert (=> b!4530552 m!5287541))

(declare-fun m!5287543 () Bool)

(assert (=> b!4530552 m!5287543))

(declare-fun m!5287545 () Bool)

(assert (=> b!4530552 m!5287545))

(assert (=> b!4530552 m!5285363))

(assert (=> b!4530552 m!5287539))

(assert (=> b!4530552 m!5287529))

(assert (=> b!4530548 m!5287531))

(declare-fun m!5287547 () Bool)

(assert (=> bm!315783 m!5287547))

(declare-fun m!5287549 () Bool)

(assert (=> b!4530550 m!5287549))

(assert (=> bm!315784 m!5285363))

(declare-fun m!5287551 () Bool)

(assert (=> bm!315784 m!5287551))

(declare-fun m!5287553 () Bool)

(assert (=> b!4530551 m!5287553))

(declare-fun m!5287555 () Bool)

(assert (=> bm!315785 m!5287555))

(assert (=> b!4529387 d!1398315))

(declare-fun d!1398327 () Bool)

(declare-fun e!2822978 () Bool)

(assert (=> d!1398327 e!2822978))

(declare-fun res!1886805 () Bool)

(assert (=> d!1398327 (=> (not res!1886805) (not e!2822978))))

(declare-fun lt!1706009 () ListMap!3625)

(assert (=> d!1398327 (= res!1886805 (contains!13455 lt!1706009 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706012 () List!50820)

(assert (=> d!1398327 (= lt!1706009 (ListMap!3626 lt!1706012))))

(declare-fun lt!1706011 () Unit!96566)

(declare-fun lt!1706010 () Unit!96566)

(assert (=> d!1398327 (= lt!1706011 lt!1706010)))

(assert (=> d!1398327 (= (getValueByKey!1120 lt!1706012 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) (Some!11155 (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!702 (List!50820 K!12085 V!12331) Unit!96566)

(assert (=> d!1398327 (= lt!1706010 (lemmaContainsTupThenGetReturnValue!702 lt!1706012 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun insertNoDuplicatedKeys!288 (List!50820 K!12085 V!12331) List!50820)

(assert (=> d!1398327 (= lt!1706012 (insertNoDuplicatedKeys!288 (toList!4364 lt!1705027) (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398327 (= (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015))) lt!1706009)))

(declare-fun b!4530578 () Bool)

(declare-fun res!1886804 () Bool)

(assert (=> b!4530578 (=> (not res!1886804) (not e!2822978))))

(assert (=> b!4530578 (= res!1886804 (= (getValueByKey!1120 (toList!4364 lt!1706009) (_1!28867 (h!56563 (_2!28868 lt!1705015)))) (Some!11155 (_2!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530579 () Bool)

(assert (=> b!4530579 (= e!2822978 (contains!13458 (toList!4364 lt!1706009) (h!56563 (_2!28868 lt!1705015))))))

(assert (= (and d!1398327 res!1886805) b!4530578))

(assert (= (and b!4530578 res!1886804) b!4530579))

(declare-fun m!5287565 () Bool)

(assert (=> d!1398327 m!5287565))

(declare-fun m!5287567 () Bool)

(assert (=> d!1398327 m!5287567))

(declare-fun m!5287569 () Bool)

(assert (=> d!1398327 m!5287569))

(declare-fun m!5287571 () Bool)

(assert (=> d!1398327 m!5287571))

(declare-fun m!5287573 () Bool)

(assert (=> b!4530578 m!5287573))

(declare-fun m!5287575 () Bool)

(assert (=> b!4530579 m!5287575))

(assert (=> b!4529387 d!1398327))

(declare-fun d!1398331 () Bool)

(declare-fun res!1886806 () Bool)

(declare-fun e!2822979 () Bool)

(assert (=> d!1398331 (=> res!1886806 e!2822979)))

(assert (=> d!1398331 (= res!1886806 ((_ is Nil!50696) (toList!4364 lt!1705027)))))

(assert (=> d!1398331 (= (forall!10305 (toList!4364 lt!1705027) lambda!174166) e!2822979)))

(declare-fun b!4530580 () Bool)

(declare-fun e!2822980 () Bool)

(assert (=> b!4530580 (= e!2822979 e!2822980)))

(declare-fun res!1886807 () Bool)

(assert (=> b!4530580 (=> (not res!1886807) (not e!2822980))))

(assert (=> b!4530580 (= res!1886807 (dynLambda!21188 lambda!174166 (h!56563 (toList!4364 lt!1705027))))))

(declare-fun b!4530581 () Bool)

(assert (=> b!4530581 (= e!2822980 (forall!10305 (t!357782 (toList!4364 lt!1705027)) lambda!174166))))

(assert (= (and d!1398331 (not res!1886806)) b!4530580))

(assert (= (and b!4530580 res!1886807) b!4530581))

(declare-fun b_lambda!156463 () Bool)

(assert (=> (not b_lambda!156463) (not b!4530580)))

(declare-fun m!5287577 () Bool)

(assert (=> b!4530580 m!5287577))

(declare-fun m!5287579 () Bool)

(assert (=> b!4530581 m!5287579))

(assert (=> b!4529387 d!1398331))

(declare-fun d!1398333 () Bool)

(declare-fun lt!1706013 () Bool)

(assert (=> d!1398333 (= lt!1706013 (select (content!8399 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(declare-fun e!2822982 () Bool)

(assert (=> d!1398333 (= lt!1706013 e!2822982)))

(declare-fun res!1886809 () Bool)

(assert (=> d!1398333 (=> (not res!1886809) (not e!2822982))))

(assert (=> d!1398333 (= res!1886809 ((_ is Cons!50699) (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))

(assert (=> d!1398333 (= (contains!13457 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) key!3287) lt!1706013)))

(declare-fun b!4530582 () Bool)

(declare-fun e!2822981 () Bool)

(assert (=> b!4530582 (= e!2822982 e!2822981)))

(declare-fun res!1886808 () Bool)

(assert (=> b!4530582 (=> res!1886808 e!2822981)))

(assert (=> b!4530582 (= res!1886808 (= (h!56568 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(declare-fun b!4530583 () Bool)

(assert (=> b!4530583 (= e!2822981 (contains!13457 (t!357785 (keys!17626 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(assert (= (and d!1398333 res!1886809) b!4530582))

(assert (= (and b!4530582 (not res!1886808)) b!4530583))

(assert (=> d!1398333 m!5285597))

(declare-fun m!5287581 () Bool)

(assert (=> d!1398333 m!5287581))

(declare-fun m!5287583 () Bool)

(assert (=> d!1398333 m!5287583))

(declare-fun m!5287585 () Bool)

(assert (=> b!4530583 m!5287585))

(assert (=> b!4529482 d!1398333))

(assert (=> b!4529482 d!1398023))

(assert (=> d!1397773 d!1397863))

(assert (=> d!1397773 d!1397857))

(declare-fun b!4530584 () Bool)

(declare-fun e!2822983 () Bool)

(assert (=> b!4530584 (= e!2822983 (not (contains!13457 (keys!17626 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530585 () Bool)

(declare-fun e!2822987 () Unit!96566)

(declare-fun e!2822988 () Unit!96566)

(assert (=> b!4530585 (= e!2822987 e!2822988)))

(declare-fun c!773583 () Bool)

(declare-fun call!315795 () Bool)

(assert (=> b!4530585 (= c!773583 call!315795)))

(declare-fun b!4530586 () Bool)

(declare-fun e!2822984 () Bool)

(declare-fun e!2822985 () Bool)

(assert (=> b!4530586 (= e!2822984 e!2822985)))

(declare-fun res!1886811 () Bool)

(assert (=> b!4530586 (=> (not res!1886811) (not e!2822985))))

(assert (=> b!4530586 (= res!1886811 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530587 () Bool)

(declare-fun e!2822986 () List!50823)

(assert (=> b!4530587 (= e!2822986 (getKeysList!479 (toList!4364 lt!1705467)))))

(declare-fun b!4530588 () Bool)

(assert (=> b!4530588 (= e!2822985 (contains!13457 (keys!17626 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun d!1398335 () Bool)

(assert (=> d!1398335 e!2822984))

(declare-fun res!1886812 () Bool)

(assert (=> d!1398335 (=> res!1886812 e!2822984)))

(assert (=> d!1398335 (= res!1886812 e!2822983)))

(declare-fun res!1886810 () Bool)

(assert (=> d!1398335 (=> (not res!1886810) (not e!2822983))))

(declare-fun lt!1706017 () Bool)

(assert (=> d!1398335 (= res!1886810 (not lt!1706017))))

(declare-fun lt!1706018 () Bool)

(assert (=> d!1398335 (= lt!1706017 lt!1706018)))

(declare-fun lt!1706019 () Unit!96566)

(assert (=> d!1398335 (= lt!1706019 e!2822987)))

(declare-fun c!773581 () Bool)

(assert (=> d!1398335 (= c!773581 lt!1706018)))

(assert (=> d!1398335 (= lt!1706018 (containsKey!1829 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398335 (= (contains!13455 lt!1705467 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1706017)))

(declare-fun b!4530589 () Bool)

(assert (=> b!4530589 (= e!2822986 (keys!17626 lt!1705467))))

(declare-fun b!4530590 () Bool)

(declare-fun Unit!96809 () Unit!96566)

(assert (=> b!4530590 (= e!2822988 Unit!96809)))

(declare-fun bm!315790 () Bool)

(assert (=> bm!315790 (= call!315795 (contains!13457 e!2822986 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun c!773582 () Bool)

(assert (=> bm!315790 (= c!773582 c!773581)))

(declare-fun b!4530591 () Bool)

(declare-fun lt!1706015 () Unit!96566)

(assert (=> b!4530591 (= e!2822987 lt!1706015)))

(declare-fun lt!1706016 () Unit!96566)

(assert (=> b!4530591 (= lt!1706016 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530591 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706020 () Unit!96566)

(assert (=> b!4530591 (= lt!1706020 lt!1706016)))

(assert (=> b!4530591 (= lt!1706015 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530591 call!315795))

(declare-fun b!4530592 () Bool)

(assert (=> b!4530592 false))

(declare-fun lt!1706014 () Unit!96566)

(declare-fun lt!1706021 () Unit!96566)

(assert (=> b!4530592 (= lt!1706014 lt!1706021)))

(assert (=> b!4530592 (containsKey!1829 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4530592 (= lt!1706021 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705467) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun Unit!96810 () Unit!96566)

(assert (=> b!4530592 (= e!2822988 Unit!96810)))

(assert (= (and d!1398335 c!773581) b!4530591))

(assert (= (and d!1398335 (not c!773581)) b!4530585))

(assert (= (and b!4530585 c!773583) b!4530592))

(assert (= (and b!4530585 (not c!773583)) b!4530590))

(assert (= (or b!4530591 b!4530585) bm!315790))

(assert (= (and bm!315790 c!773582) b!4530587))

(assert (= (and bm!315790 (not c!773582)) b!4530589))

(assert (= (and d!1398335 res!1886810) b!4530584))

(assert (= (and d!1398335 (not res!1886812)) b!4530586))

(assert (= (and b!4530586 res!1886811) b!4530588))

(declare-fun m!5287587 () Bool)

(assert (=> b!4530584 m!5287587))

(assert (=> b!4530584 m!5287587))

(declare-fun m!5287589 () Bool)

(assert (=> b!4530584 m!5287589))

(declare-fun m!5287591 () Bool)

(assert (=> b!4530591 m!5287591))

(declare-fun m!5287593 () Bool)

(assert (=> b!4530591 m!5287593))

(assert (=> b!4530591 m!5287593))

(declare-fun m!5287595 () Bool)

(assert (=> b!4530591 m!5287595))

(declare-fun m!5287597 () Bool)

(assert (=> b!4530591 m!5287597))

(assert (=> b!4530589 m!5287587))

(assert (=> b!4530586 m!5287593))

(assert (=> b!4530586 m!5287593))

(assert (=> b!4530586 m!5287595))

(declare-fun m!5287599 () Bool)

(assert (=> d!1398335 m!5287599))

(declare-fun m!5287601 () Bool)

(assert (=> b!4530587 m!5287601))

(assert (=> b!4530588 m!5287587))

(assert (=> b!4530588 m!5287587))

(assert (=> b!4530588 m!5287589))

(assert (=> b!4530592 m!5287599))

(declare-fun m!5287603 () Bool)

(assert (=> b!4530592 m!5287603))

(declare-fun m!5287605 () Bool)

(assert (=> bm!315790 m!5287605))

(assert (=> b!4529691 d!1398335))

(declare-fun d!1398337 () Bool)

(declare-fun e!2822989 () Bool)

(assert (=> d!1398337 e!2822989))

(declare-fun res!1886814 () Bool)

(assert (=> d!1398337 (=> (not res!1886814) (not e!2822989))))

(declare-fun lt!1706022 () ListMap!3625)

(assert (=> d!1398337 (= res!1886814 (contains!13455 lt!1706022 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706025 () List!50820)

(assert (=> d!1398337 (= lt!1706022 (ListMap!3626 lt!1706025))))

(declare-fun lt!1706024 () Unit!96566)

(declare-fun lt!1706023 () Unit!96566)

(assert (=> d!1398337 (= lt!1706024 lt!1706023)))

(assert (=> d!1398337 (= (getValueByKey!1120 lt!1706025 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) (Some!11155 (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398337 (= lt!1706023 (lemmaContainsTupThenGetReturnValue!702 lt!1706025 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398337 (= lt!1706025 (insertNoDuplicatedKeys!288 (toList!4364 lt!1705028) (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398337 (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1706022)))

(declare-fun b!4530593 () Bool)

(declare-fun res!1886813 () Bool)

(assert (=> b!4530593 (=> (not res!1886813) (not e!2822989))))

(assert (=> b!4530593 (= res!1886813 (= (getValueByKey!1120 (toList!4364 lt!1706022) (_1!28867 (h!56563 (_2!28868 lt!1705015)))) (Some!11155 (_2!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530594 () Bool)

(assert (=> b!4530594 (= e!2822989 (contains!13458 (toList!4364 lt!1706022) (h!56563 (_2!28868 lt!1705015))))))

(assert (= (and d!1398337 res!1886814) b!4530593))

(assert (= (and b!4530593 res!1886813) b!4530594))

(declare-fun m!5287607 () Bool)

(assert (=> d!1398337 m!5287607))

(declare-fun m!5287609 () Bool)

(assert (=> d!1398337 m!5287609))

(declare-fun m!5287611 () Bool)

(assert (=> d!1398337 m!5287611))

(declare-fun m!5287613 () Bool)

(assert (=> d!1398337 m!5287613))

(declare-fun m!5287615 () Bool)

(assert (=> b!4530593 m!5287615))

(declare-fun m!5287617 () Bool)

(assert (=> b!4530594 m!5287617))

(assert (=> b!4529691 d!1398337))

(assert (=> b!4529691 d!1398097))

(declare-fun b!4530595 () Bool)

(declare-fun e!2822990 () Bool)

(assert (=> b!4530595 (= e!2822990 (not (contains!13457 (keys!17626 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530596 () Bool)

(declare-fun e!2822994 () Unit!96566)

(declare-fun e!2822995 () Unit!96566)

(assert (=> b!4530596 (= e!2822994 e!2822995)))

(declare-fun c!773586 () Bool)

(declare-fun call!315796 () Bool)

(assert (=> b!4530596 (= c!773586 call!315796)))

(declare-fun b!4530597 () Bool)

(declare-fun e!2822991 () Bool)

(declare-fun e!2822992 () Bool)

(assert (=> b!4530597 (= e!2822991 e!2822992)))

(declare-fun res!1886816 () Bool)

(assert (=> b!4530597 (=> (not res!1886816) (not e!2822992))))

(assert (=> b!4530597 (= res!1886816 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530598 () Bool)

(declare-fun e!2822993 () List!50823)

(assert (=> b!4530598 (= e!2822993 (getKeysList!479 (toList!4364 lt!1705475)))))

(declare-fun b!4530599 () Bool)

(assert (=> b!4530599 (= e!2822992 (contains!13457 (keys!17626 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun d!1398339 () Bool)

(assert (=> d!1398339 e!2822991))

(declare-fun res!1886817 () Bool)

(assert (=> d!1398339 (=> res!1886817 e!2822991)))

(assert (=> d!1398339 (= res!1886817 e!2822990)))

(declare-fun res!1886815 () Bool)

(assert (=> d!1398339 (=> (not res!1886815) (not e!2822990))))

(declare-fun lt!1706029 () Bool)

(assert (=> d!1398339 (= res!1886815 (not lt!1706029))))

(declare-fun lt!1706030 () Bool)

(assert (=> d!1398339 (= lt!1706029 lt!1706030)))

(declare-fun lt!1706031 () Unit!96566)

(assert (=> d!1398339 (= lt!1706031 e!2822994)))

(declare-fun c!773584 () Bool)

(assert (=> d!1398339 (= c!773584 lt!1706030)))

(assert (=> d!1398339 (= lt!1706030 (containsKey!1829 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398339 (= (contains!13455 lt!1705475 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1706029)))

(declare-fun b!4530600 () Bool)

(assert (=> b!4530600 (= e!2822993 (keys!17626 lt!1705475))))

(declare-fun b!4530601 () Bool)

(declare-fun Unit!96811 () Unit!96566)

(assert (=> b!4530601 (= e!2822995 Unit!96811)))

(declare-fun bm!315791 () Bool)

(assert (=> bm!315791 (= call!315796 (contains!13457 e!2822993 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun c!773585 () Bool)

(assert (=> bm!315791 (= c!773585 c!773584)))

(declare-fun b!4530602 () Bool)

(declare-fun lt!1706027 () Unit!96566)

(assert (=> b!4530602 (= e!2822994 lt!1706027)))

(declare-fun lt!1706028 () Unit!96566)

(assert (=> b!4530602 (= lt!1706028 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530602 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706032 () Unit!96566)

(assert (=> b!4530602 (= lt!1706032 lt!1706028)))

(assert (=> b!4530602 (= lt!1706027 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530602 call!315796))

(declare-fun b!4530603 () Bool)

(assert (=> b!4530603 false))

(declare-fun lt!1706026 () Unit!96566)

(declare-fun lt!1706033 () Unit!96566)

(assert (=> b!4530603 (= lt!1706026 lt!1706033)))

(assert (=> b!4530603 (containsKey!1829 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4530603 (= lt!1706033 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705475) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun Unit!96812 () Unit!96566)

(assert (=> b!4530603 (= e!2822995 Unit!96812)))

(assert (= (and d!1398339 c!773584) b!4530602))

(assert (= (and d!1398339 (not c!773584)) b!4530596))

(assert (= (and b!4530596 c!773586) b!4530603))

(assert (= (and b!4530596 (not c!773586)) b!4530601))

(assert (= (or b!4530602 b!4530596) bm!315791))

(assert (= (and bm!315791 c!773585) b!4530598))

(assert (= (and bm!315791 (not c!773585)) b!4530600))

(assert (= (and d!1398339 res!1886815) b!4530595))

(assert (= (and d!1398339 (not res!1886817)) b!4530597))

(assert (= (and b!4530597 res!1886816) b!4530599))

(declare-fun m!5287619 () Bool)

(assert (=> b!4530595 m!5287619))

(assert (=> b!4530595 m!5287619))

(declare-fun m!5287621 () Bool)

(assert (=> b!4530595 m!5287621))

(declare-fun m!5287623 () Bool)

(assert (=> b!4530602 m!5287623))

(declare-fun m!5287625 () Bool)

(assert (=> b!4530602 m!5287625))

(assert (=> b!4530602 m!5287625))

(declare-fun m!5287627 () Bool)

(assert (=> b!4530602 m!5287627))

(declare-fun m!5287629 () Bool)

(assert (=> b!4530602 m!5287629))

(assert (=> b!4530600 m!5287619))

(assert (=> b!4530597 m!5287625))

(assert (=> b!4530597 m!5287625))

(assert (=> b!4530597 m!5287627))

(declare-fun m!5287631 () Bool)

(assert (=> d!1398339 m!5287631))

(declare-fun m!5287633 () Bool)

(assert (=> b!4530598 m!5287633))

(assert (=> b!4530599 m!5287619))

(assert (=> b!4530599 m!5287619))

(assert (=> b!4530599 m!5287621))

(assert (=> b!4530603 m!5287631))

(declare-fun m!5287635 () Bool)

(assert (=> b!4530603 m!5287635))

(declare-fun m!5287637 () Bool)

(assert (=> bm!315791 m!5287637))

(assert (=> b!4529691 d!1398339))

(declare-fun d!1398341 () Bool)

(declare-fun res!1886818 () Bool)

(declare-fun e!2822996 () Bool)

(assert (=> d!1398341 (=> res!1886818 e!2822996)))

(assert (=> d!1398341 (= res!1886818 ((_ is Nil!50696) (toList!4364 lt!1705475)))))

(assert (=> d!1398341 (= (forall!10305 (toList!4364 lt!1705475) lambda!174223) e!2822996)))

(declare-fun b!4530604 () Bool)

(declare-fun e!2822997 () Bool)

(assert (=> b!4530604 (= e!2822996 e!2822997)))

(declare-fun res!1886819 () Bool)

(assert (=> b!4530604 (=> (not res!1886819) (not e!2822997))))

(assert (=> b!4530604 (= res!1886819 (dynLambda!21188 lambda!174223 (h!56563 (toList!4364 lt!1705475))))))

(declare-fun b!4530605 () Bool)

(assert (=> b!4530605 (= e!2822997 (forall!10305 (t!357782 (toList!4364 lt!1705475)) lambda!174223))))

(assert (= (and d!1398341 (not res!1886818)) b!4530604))

(assert (= (and b!4530604 res!1886819) b!4530605))

(declare-fun b_lambda!156465 () Bool)

(assert (=> (not b_lambda!156465) (not b!4530604)))

(declare-fun m!5287639 () Bool)

(assert (=> b!4530604 m!5287639))

(declare-fun m!5287641 () Bool)

(assert (=> b!4530605 m!5287641))

(assert (=> b!4529691 d!1398341))

(declare-fun d!1398343 () Bool)

(declare-fun res!1886820 () Bool)

(declare-fun e!2822998 () Bool)

(assert (=> d!1398343 (=> res!1886820 e!2822998)))

(assert (=> d!1398343 (= res!1886820 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1398343 (= (forall!10305 (_2!28868 lt!1705015) lambda!174223) e!2822998)))

(declare-fun b!4530606 () Bool)

(declare-fun e!2822999 () Bool)

(assert (=> b!4530606 (= e!2822998 e!2822999)))

(declare-fun res!1886821 () Bool)

(assert (=> b!4530606 (=> (not res!1886821) (not e!2822999))))

(assert (=> b!4530606 (= res!1886821 (dynLambda!21188 lambda!174223 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4530607 () Bool)

(assert (=> b!4530607 (= e!2822999 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174223))))

(assert (= (and d!1398343 (not res!1886820)) b!4530606))

(assert (= (and b!4530606 res!1886821) b!4530607))

(declare-fun b_lambda!156467 () Bool)

(assert (=> (not b_lambda!156467) (not b!4530606)))

(declare-fun m!5287643 () Bool)

(assert (=> b!4530606 m!5287643))

(declare-fun m!5287645 () Bool)

(assert (=> b!4530607 m!5287645))

(assert (=> b!4529691 d!1398343))

(declare-fun d!1398345 () Bool)

(assert (=> d!1398345 (dynLambda!21188 lambda!174223 (h!56563 (_2!28868 lt!1705015)))))

(declare-fun lt!1706034 () Unit!96566)

(assert (=> d!1398345 (= lt!1706034 (choose!29705 (toList!4364 lt!1705475) lambda!174223 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun e!2823000 () Bool)

(assert (=> d!1398345 e!2823000))

(declare-fun res!1886822 () Bool)

(assert (=> d!1398345 (=> (not res!1886822) (not e!2823000))))

(assert (=> d!1398345 (= res!1886822 (forall!10305 (toList!4364 lt!1705475) lambda!174223))))

(assert (=> d!1398345 (= (forallContained!2559 (toList!4364 lt!1705475) lambda!174223 (h!56563 (_2!28868 lt!1705015))) lt!1706034)))

(declare-fun b!4530608 () Bool)

(assert (=> b!4530608 (= e!2823000 (contains!13458 (toList!4364 lt!1705475) (h!56563 (_2!28868 lt!1705015))))))

(assert (= (and d!1398345 res!1886822) b!4530608))

(declare-fun b_lambda!156469 () Bool)

(assert (=> (not b_lambda!156469) (not d!1398345)))

(assert (=> d!1398345 m!5287643))

(declare-fun m!5287647 () Bool)

(assert (=> d!1398345 m!5287647))

(assert (=> d!1398345 m!5285993))

(declare-fun m!5287649 () Bool)

(assert (=> b!4530608 m!5287649))

(assert (=> b!4529691 d!1398345))

(declare-fun bs!865812 () Bool)

(declare-fun b!4530610 () Bool)

(assert (= bs!865812 (and b!4530610 b!4530552)))

(declare-fun lambda!174345 () Int)

(assert (=> bs!865812 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174345 lambda!174333))))

(declare-fun bs!865814 () Bool)

(assert (= bs!865814 (and b!4530610 b!4529387)))

(assert (=> bs!865814 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174345 lambda!174166))))

(assert (=> bs!865812 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705953) (= lambda!174345 lambda!174334))))

(declare-fun bs!865817 () Bool)

(assert (= bs!865817 (and b!4530610 d!1397915)))

(assert (=> bs!865817 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705606) (= lambda!174345 lambda!174257))))

(declare-fun bs!865819 () Bool)

(assert (= bs!865819 (and b!4530610 b!4529972)))

(assert (=> bs!865819 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174345 lambda!174260))))

(declare-fun bs!865820 () Bool)

(assert (= bs!865820 (and b!4530610 d!1398099)))

(assert (=> bs!865820 (not (= lambda!174345 lambda!174291))))

(declare-fun bs!865822 () Bool)

(assert (= bs!865822 (and b!4530610 b!4529691)))

(assert (=> bs!865822 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174345 lambda!174223))))

(declare-fun bs!865824 () Bool)

(assert (= bs!865824 (and b!4530610 d!1397935)))

(assert (=> bs!865824 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705636) (= lambda!174345 lambda!174264))))

(declare-fun bs!865826 () Bool)

(assert (= bs!865826 (and b!4530610 d!1397821)))

(assert (=> bs!865826 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705529) (= lambda!174345 lambda!174234))))

(assert (=> bs!865814 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174345 lambda!174167))))

(declare-fun bs!865829 () Bool)

(assert (= bs!865829 (and b!4530610 d!1397819)))

(assert (=> bs!865829 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174345 lambda!174230))))

(declare-fun bs!865830 () Bool)

(assert (= bs!865830 (and b!4530610 b!4529273)))

(assert (=> bs!865830 (not (= lambda!174345 lambda!174089))))

(declare-fun bs!865831 () Bool)

(assert (= bs!865831 (and b!4530610 b!4529688)))

(assert (=> bs!865831 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174345 lambda!174221))))

(declare-fun bs!865833 () Bool)

(assert (= bs!865833 (and b!4530610 b!4529936)))

(assert (=> bs!865833 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705594) (= lambda!174345 lambda!174256))))

(declare-fun bs!865834 () Bool)

(assert (= bs!865834 (and b!4530610 d!1397787)))

(assert (=> bs!865834 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705479) (= lambda!174345 lambda!174224))))

(declare-fun bs!865836 () Bool)

(assert (= bs!865836 (and b!4530610 b!4529431)))

(assert (=> bs!865836 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174345 lambda!174178))))

(declare-fun bs!865838 () Bool)

(assert (= bs!865838 (and b!4530610 d!1398281)))

(assert (=> bs!865838 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174345 lambda!174327))))

(declare-fun bs!865839 () Bool)

(assert (= bs!865839 (and b!4530610 b!4529733)))

(assert (=> bs!865839 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705517) (= lambda!174345 lambda!174233))))

(declare-fun bs!865841 () Bool)

(assert (= bs!865841 (and b!4530610 d!1398315)))

(assert (=> bs!865841 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705965) (= lambda!174345 lambda!174335))))

(assert (=> bs!865839 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174345 lambda!174232))))

(assert (=> bs!865833 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174345 lambda!174255))))

(declare-fun bs!865844 () Bool)

(assert (= bs!865844 (and b!4530610 b!4529933)))

(assert (=> bs!865844 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174345 lambda!174254))))

(declare-fun bs!865845 () Bool)

(assert (= bs!865845 (and b!4530610 b!4529434)))

(assert (=> bs!865845 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174345 lambda!174180))))

(declare-fun bs!865847 () Bool)

(assert (= bs!865847 (and b!4530610 d!1398049)))

(assert (=> bs!865847 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174345 lambda!174280))))

(assert (=> bs!865822 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174345 lambda!174222))))

(declare-fun bs!865848 () Bool)

(assert (= bs!865848 (and b!4530610 d!1397779)))

(assert (=> bs!865848 (not (= lambda!174345 lambda!174220))))

(declare-fun bs!865849 () Bool)

(assert (= bs!865849 (and b!4530610 b!4529969)))

(assert (=> bs!865849 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174345 lambda!174258))))

(declare-fun bs!865850 () Bool)

(assert (= bs!865850 (and b!4530610 b!4529384)))

(assert (=> bs!865850 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174345 lambda!174165))))

(declare-fun bs!865851 () Bool)

(assert (= bs!865851 (and b!4530610 b!4530549)))

(assert (=> bs!865851 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174345 lambda!174329))))

(declare-fun bs!865852 () Bool)

(assert (= bs!865852 (and b!4530610 b!4529730)))

(assert (=> bs!865852 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174345 lambda!174231))))

(declare-fun bs!865853 () Bool)

(assert (= bs!865853 (and b!4530610 d!1397569)))

(assert (=> bs!865853 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705224) (= lambda!174345 lambda!174168))))

(assert (=> bs!865819 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705624) (= lambda!174345 lambda!174261))))

(assert (=> bs!865845 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174345 lambda!174179))))

(declare-fun bs!865854 () Bool)

(assert (= bs!865854 (and b!4530610 d!1398075)))

(assert (=> bs!865854 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174345 lambda!174289))))

(declare-fun bs!865855 () Bool)

(assert (= bs!865855 (and b!4530610 d!1397629)))

(assert (=> bs!865855 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705278) (= lambda!174345 lambda!174181))))

(assert (=> b!4530610 true))

(declare-fun bs!865856 () Bool)

(declare-fun b!4530613 () Bool)

(assert (= bs!865856 (and b!4530613 b!4530552)))

(declare-fun lambda!174346 () Int)

(assert (=> bs!865856 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174346 lambda!174333))))

(declare-fun bs!865857 () Bool)

(assert (= bs!865857 (and b!4530613 b!4529387)))

(assert (=> bs!865857 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174346 lambda!174166))))

(assert (=> bs!865856 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705953) (= lambda!174346 lambda!174334))))

(declare-fun bs!865858 () Bool)

(assert (= bs!865858 (and b!4530613 d!1397915)))

(assert (=> bs!865858 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705606) (= lambda!174346 lambda!174257))))

(declare-fun bs!865859 () Bool)

(assert (= bs!865859 (and b!4530613 b!4529972)))

(assert (=> bs!865859 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174346 lambda!174260))))

(declare-fun bs!865860 () Bool)

(assert (= bs!865860 (and b!4530613 d!1398099)))

(assert (=> bs!865860 (not (= lambda!174346 lambda!174291))))

(declare-fun bs!865861 () Bool)

(assert (= bs!865861 (and b!4530613 b!4529691)))

(assert (=> bs!865861 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174346 lambda!174223))))

(declare-fun bs!865862 () Bool)

(assert (= bs!865862 (and b!4530613 d!1397935)))

(assert (=> bs!865862 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705636) (= lambda!174346 lambda!174264))))

(declare-fun bs!865863 () Bool)

(assert (= bs!865863 (and b!4530613 d!1397821)))

(assert (=> bs!865863 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705529) (= lambda!174346 lambda!174234))))

(assert (=> bs!865857 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174346 lambda!174167))))

(declare-fun bs!865864 () Bool)

(assert (= bs!865864 (and b!4530613 d!1397819)))

(assert (=> bs!865864 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174346 lambda!174230))))

(declare-fun bs!865865 () Bool)

(assert (= bs!865865 (and b!4530613 b!4529273)))

(assert (=> bs!865865 (not (= lambda!174346 lambda!174089))))

(declare-fun bs!865866 () Bool)

(assert (= bs!865866 (and b!4530613 b!4529688)))

(assert (=> bs!865866 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174346 lambda!174221))))

(declare-fun bs!865867 () Bool)

(assert (= bs!865867 (and b!4530613 b!4529936)))

(assert (=> bs!865867 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705594) (= lambda!174346 lambda!174256))))

(declare-fun bs!865868 () Bool)

(assert (= bs!865868 (and b!4530613 b!4530610)))

(assert (=> bs!865868 (= lambda!174346 lambda!174345)))

(declare-fun bs!865869 () Bool)

(assert (= bs!865869 (and b!4530613 d!1397787)))

(assert (=> bs!865869 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705479) (= lambda!174346 lambda!174224))))

(declare-fun bs!865870 () Bool)

(assert (= bs!865870 (and b!4530613 b!4529431)))

(assert (=> bs!865870 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174346 lambda!174178))))

(declare-fun bs!865871 () Bool)

(assert (= bs!865871 (and b!4530613 d!1398281)))

(assert (=> bs!865871 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174346 lambda!174327))))

(declare-fun bs!865872 () Bool)

(assert (= bs!865872 (and b!4530613 b!4529733)))

(assert (=> bs!865872 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705517) (= lambda!174346 lambda!174233))))

(declare-fun bs!865873 () Bool)

(assert (= bs!865873 (and b!4530613 d!1398315)))

(assert (=> bs!865873 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705965) (= lambda!174346 lambda!174335))))

(assert (=> bs!865872 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174346 lambda!174232))))

(assert (=> bs!865867 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174346 lambda!174255))))

(declare-fun bs!865874 () Bool)

(assert (= bs!865874 (and b!4530613 b!4529933)))

(assert (=> bs!865874 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174346 lambda!174254))))

(declare-fun bs!865875 () Bool)

(assert (= bs!865875 (and b!4530613 b!4529434)))

(assert (=> bs!865875 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174346 lambda!174180))))

(declare-fun bs!865876 () Bool)

(assert (= bs!865876 (and b!4530613 d!1398049)))

(assert (=> bs!865876 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174346 lambda!174280))))

(assert (=> bs!865861 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174346 lambda!174222))))

(declare-fun bs!865877 () Bool)

(assert (= bs!865877 (and b!4530613 d!1397779)))

(assert (=> bs!865877 (not (= lambda!174346 lambda!174220))))

(declare-fun bs!865878 () Bool)

(assert (= bs!865878 (and b!4530613 b!4529969)))

(assert (=> bs!865878 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174346 lambda!174258))))

(declare-fun bs!865879 () Bool)

(assert (= bs!865879 (and b!4530613 b!4529384)))

(assert (=> bs!865879 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174346 lambda!174165))))

(declare-fun bs!865880 () Bool)

(assert (= bs!865880 (and b!4530613 b!4530549)))

(assert (=> bs!865880 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174346 lambda!174329))))

(declare-fun bs!865881 () Bool)

(assert (= bs!865881 (and b!4530613 b!4529730)))

(assert (=> bs!865881 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174346 lambda!174231))))

(declare-fun bs!865882 () Bool)

(assert (= bs!865882 (and b!4530613 d!1397569)))

(assert (=> bs!865882 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705224) (= lambda!174346 lambda!174168))))

(assert (=> bs!865859 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705624) (= lambda!174346 lambda!174261))))

(assert (=> bs!865875 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174346 lambda!174179))))

(declare-fun bs!865883 () Bool)

(assert (= bs!865883 (and b!4530613 d!1398075)))

(assert (=> bs!865883 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174346 lambda!174289))))

(declare-fun bs!865884 () Bool)

(assert (= bs!865884 (and b!4530613 d!1397629)))

(assert (=> bs!865884 (= (= (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1705278) (= lambda!174346 lambda!174181))))

(assert (=> b!4530613 true))

(declare-fun lt!1706040 () ListMap!3625)

(declare-fun lambda!174347 () Int)

(assert (=> bs!865856 (= (= lt!1706040 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174347 lambda!174333))))

(assert (=> bs!865856 (= (= lt!1706040 lt!1705953) (= lambda!174347 lambda!174334))))

(assert (=> bs!865858 (= (= lt!1706040 lt!1705606) (= lambda!174347 lambda!174257))))

(assert (=> bs!865859 (= (= lt!1706040 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174347 lambda!174260))))

(assert (=> bs!865860 (not (= lambda!174347 lambda!174291))))

(assert (=> bs!865861 (= (= lt!1706040 lt!1705467) (= lambda!174347 lambda!174223))))

(assert (=> bs!865862 (= (= lt!1706040 lt!1705636) (= lambda!174347 lambda!174264))))

(assert (=> bs!865863 (= (= lt!1706040 lt!1705529) (= lambda!174347 lambda!174234))))

(assert (=> bs!865857 (= (= lt!1706040 lt!1705212) (= lambda!174347 lambda!174167))))

(assert (=> bs!865864 (= (= lt!1706040 lt!1705001) (= lambda!174347 lambda!174230))))

(assert (=> bs!865865 (not (= lambda!174347 lambda!174089))))

(assert (=> bs!865866 (= (= lt!1706040 lt!1705028) (= lambda!174347 lambda!174221))))

(assert (=> bs!865867 (= (= lt!1706040 lt!1705594) (= lambda!174347 lambda!174256))))

(assert (=> bs!865868 (= (= lt!1706040 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174347 lambda!174345))))

(assert (=> bs!865869 (= (= lt!1706040 lt!1705479) (= lambda!174347 lambda!174224))))

(assert (=> b!4530613 (= (= lt!1706040 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174347 lambda!174346))))

(assert (=> bs!865857 (= (= lt!1706040 lt!1705027) (= lambda!174347 lambda!174166))))

(assert (=> bs!865870 (= (= lt!1706040 lt!1705001) (= lambda!174347 lambda!174178))))

(assert (=> bs!865871 (= (= lt!1706040 lt!1705212) (= lambda!174347 lambda!174327))))

(assert (=> bs!865872 (= (= lt!1706040 lt!1705517) (= lambda!174347 lambda!174233))))

(assert (=> bs!865873 (= (= lt!1706040 lt!1705965) (= lambda!174347 lambda!174335))))

(assert (=> bs!865872 (= (= lt!1706040 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174347 lambda!174232))))

(assert (=> bs!865867 (= (= lt!1706040 (-!404 lt!1705001 key!3287)) (= lambda!174347 lambda!174255))))

(assert (=> bs!865874 (= (= lt!1706040 (-!404 lt!1705001 key!3287)) (= lambda!174347 lambda!174254))))

(assert (=> bs!865875 (= (= lt!1706040 lt!1705266) (= lambda!174347 lambda!174180))))

(assert (=> bs!865876 (= (= lt!1706040 lt!1705027) (= lambda!174347 lambda!174280))))

(assert (=> bs!865861 (= (= lt!1706040 lt!1705028) (= lambda!174347 lambda!174222))))

(assert (=> bs!865877 (not (= lambda!174347 lambda!174220))))

(assert (=> bs!865878 (= (= lt!1706040 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174347 lambda!174258))))

(assert (=> bs!865879 (= (= lt!1706040 lt!1705027) (= lambda!174347 lambda!174165))))

(assert (=> bs!865880 (= (= lt!1706040 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174347 lambda!174329))))

(assert (=> bs!865881 (= (= lt!1706040 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174347 lambda!174231))))

(assert (=> bs!865882 (= (= lt!1706040 lt!1705224) (= lambda!174347 lambda!174168))))

(assert (=> bs!865859 (= (= lt!1706040 lt!1705624) (= lambda!174347 lambda!174261))))

(assert (=> bs!865875 (= (= lt!1706040 lt!1705001) (= lambda!174347 lambda!174179))))

(assert (=> bs!865883 (= (= lt!1706040 lt!1705028) (= lambda!174347 lambda!174289))))

(assert (=> bs!865884 (= (= lt!1706040 lt!1705278) (= lambda!174347 lambda!174181))))

(assert (=> b!4530613 true))

(declare-fun bs!865885 () Bool)

(declare-fun d!1398347 () Bool)

(assert (= bs!865885 (and d!1398347 b!4530552)))

(declare-fun lt!1706052 () ListMap!3625)

(declare-fun lambda!174348 () Int)

(assert (=> bs!865885 (= (= lt!1706052 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174348 lambda!174333))))

(declare-fun bs!865886 () Bool)

(assert (= bs!865886 (and d!1398347 d!1397915)))

(assert (=> bs!865886 (= (= lt!1706052 lt!1705606) (= lambda!174348 lambda!174257))))

(declare-fun bs!865887 () Bool)

(assert (= bs!865887 (and d!1398347 b!4529972)))

(assert (=> bs!865887 (= (= lt!1706052 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174348 lambda!174260))))

(declare-fun bs!865888 () Bool)

(assert (= bs!865888 (and d!1398347 d!1398099)))

(assert (=> bs!865888 (not (= lambda!174348 lambda!174291))))

(declare-fun bs!865889 () Bool)

(assert (= bs!865889 (and d!1398347 b!4529691)))

(assert (=> bs!865889 (= (= lt!1706052 lt!1705467) (= lambda!174348 lambda!174223))))

(declare-fun bs!865890 () Bool)

(assert (= bs!865890 (and d!1398347 d!1397935)))

(assert (=> bs!865890 (= (= lt!1706052 lt!1705636) (= lambda!174348 lambda!174264))))

(declare-fun bs!865891 () Bool)

(assert (= bs!865891 (and d!1398347 d!1397821)))

(assert (=> bs!865891 (= (= lt!1706052 lt!1705529) (= lambda!174348 lambda!174234))))

(declare-fun bs!865892 () Bool)

(assert (= bs!865892 (and d!1398347 b!4529387)))

(assert (=> bs!865892 (= (= lt!1706052 lt!1705212) (= lambda!174348 lambda!174167))))

(declare-fun bs!865893 () Bool)

(assert (= bs!865893 (and d!1398347 d!1397819)))

(assert (=> bs!865893 (= (= lt!1706052 lt!1705001) (= lambda!174348 lambda!174230))))

(declare-fun bs!865894 () Bool)

(assert (= bs!865894 (and d!1398347 b!4529273)))

(assert (=> bs!865894 (not (= lambda!174348 lambda!174089))))

(declare-fun bs!865895 () Bool)

(assert (= bs!865895 (and d!1398347 b!4529688)))

(assert (=> bs!865895 (= (= lt!1706052 lt!1705028) (= lambda!174348 lambda!174221))))

(declare-fun bs!865896 () Bool)

(assert (= bs!865896 (and d!1398347 b!4529936)))

(assert (=> bs!865896 (= (= lt!1706052 lt!1705594) (= lambda!174348 lambda!174256))))

(declare-fun bs!865897 () Bool)

(assert (= bs!865897 (and d!1398347 b!4530610)))

(assert (=> bs!865897 (= (= lt!1706052 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174348 lambda!174345))))

(declare-fun bs!865898 () Bool)

(assert (= bs!865898 (and d!1398347 d!1397787)))

(assert (=> bs!865898 (= (= lt!1706052 lt!1705479) (= lambda!174348 lambda!174224))))

(declare-fun bs!865899 () Bool)

(assert (= bs!865899 (and d!1398347 b!4530613)))

(assert (=> bs!865899 (= (= lt!1706052 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174348 lambda!174346))))

(assert (=> bs!865892 (= (= lt!1706052 lt!1705027) (= lambda!174348 lambda!174166))))

(assert (=> bs!865885 (= (= lt!1706052 lt!1705953) (= lambda!174348 lambda!174334))))

(assert (=> bs!865899 (= (= lt!1706052 lt!1706040) (= lambda!174348 lambda!174347))))

(declare-fun bs!865900 () Bool)

(assert (= bs!865900 (and d!1398347 b!4529431)))

(assert (=> bs!865900 (= (= lt!1706052 lt!1705001) (= lambda!174348 lambda!174178))))

(declare-fun bs!865901 () Bool)

(assert (= bs!865901 (and d!1398347 d!1398281)))

(assert (=> bs!865901 (= (= lt!1706052 lt!1705212) (= lambda!174348 lambda!174327))))

(declare-fun bs!865902 () Bool)

(assert (= bs!865902 (and d!1398347 b!4529733)))

(assert (=> bs!865902 (= (= lt!1706052 lt!1705517) (= lambda!174348 lambda!174233))))

(declare-fun bs!865903 () Bool)

(assert (= bs!865903 (and d!1398347 d!1398315)))

(assert (=> bs!865903 (= (= lt!1706052 lt!1705965) (= lambda!174348 lambda!174335))))

(assert (=> bs!865902 (= (= lt!1706052 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174348 lambda!174232))))

(assert (=> bs!865896 (= (= lt!1706052 (-!404 lt!1705001 key!3287)) (= lambda!174348 lambda!174255))))

(declare-fun bs!865904 () Bool)

(assert (= bs!865904 (and d!1398347 b!4529933)))

(assert (=> bs!865904 (= (= lt!1706052 (-!404 lt!1705001 key!3287)) (= lambda!174348 lambda!174254))))

(declare-fun bs!865905 () Bool)

(assert (= bs!865905 (and d!1398347 b!4529434)))

(assert (=> bs!865905 (= (= lt!1706052 lt!1705266) (= lambda!174348 lambda!174180))))

(declare-fun bs!865906 () Bool)

(assert (= bs!865906 (and d!1398347 d!1398049)))

(assert (=> bs!865906 (= (= lt!1706052 lt!1705027) (= lambda!174348 lambda!174280))))

(assert (=> bs!865889 (= (= lt!1706052 lt!1705028) (= lambda!174348 lambda!174222))))

(declare-fun bs!865907 () Bool)

(assert (= bs!865907 (and d!1398347 d!1397779)))

(assert (=> bs!865907 (not (= lambda!174348 lambda!174220))))

(declare-fun bs!865908 () Bool)

(assert (= bs!865908 (and d!1398347 b!4529969)))

(assert (=> bs!865908 (= (= lt!1706052 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174348 lambda!174258))))

(declare-fun bs!865909 () Bool)

(assert (= bs!865909 (and d!1398347 b!4529384)))

(assert (=> bs!865909 (= (= lt!1706052 lt!1705027) (= lambda!174348 lambda!174165))))

(declare-fun bs!865910 () Bool)

(assert (= bs!865910 (and d!1398347 b!4530549)))

(assert (=> bs!865910 (= (= lt!1706052 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174348 lambda!174329))))

(declare-fun bs!865911 () Bool)

(assert (= bs!865911 (and d!1398347 b!4529730)))

(assert (=> bs!865911 (= (= lt!1706052 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174348 lambda!174231))))

(declare-fun bs!865912 () Bool)

(assert (= bs!865912 (and d!1398347 d!1397569)))

(assert (=> bs!865912 (= (= lt!1706052 lt!1705224) (= lambda!174348 lambda!174168))))

(assert (=> bs!865887 (= (= lt!1706052 lt!1705624) (= lambda!174348 lambda!174261))))

(assert (=> bs!865905 (= (= lt!1706052 lt!1705001) (= lambda!174348 lambda!174179))))

(declare-fun bs!865913 () Bool)

(assert (= bs!865913 (and d!1398347 d!1398075)))

(assert (=> bs!865913 (= (= lt!1706052 lt!1705028) (= lambda!174348 lambda!174289))))

(declare-fun bs!865914 () Bool)

(assert (= bs!865914 (and d!1398347 d!1397629)))

(assert (=> bs!865914 (= (= lt!1706052 lt!1705278) (= lambda!174348 lambda!174181))))

(assert (=> d!1398347 true))

(declare-fun e!2823001 () Bool)

(declare-fun b!4530609 () Bool)

(assert (=> b!4530609 (= e!2823001 (forall!10305 (toList!4364 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) lambda!174347))))

(declare-fun call!315798 () Bool)

(declare-fun bm!315792 () Bool)

(declare-fun c!773587 () Bool)

(assert (=> bm!315792 (= call!315798 (forall!10305 (ite c!773587 (toList!4364 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (t!357782 (t!357782 (_2!28868 lt!1705015)))) (ite c!773587 lambda!174345 lambda!174347)))))

(declare-fun e!2823002 () ListMap!3625)

(assert (=> b!4530610 (= e!2823002 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1706043 () Unit!96566)

(declare-fun call!315799 () Unit!96566)

(assert (=> b!4530610 (= lt!1706043 call!315799)))

(declare-fun call!315797 () Bool)

(assert (=> b!4530610 call!315797))

(declare-fun lt!1706054 () Unit!96566)

(assert (=> b!4530610 (= lt!1706054 lt!1706043)))

(assert (=> b!4530610 call!315798))

(declare-fun lt!1706036 () Unit!96566)

(declare-fun Unit!96824 () Unit!96566)

(assert (=> b!4530610 (= lt!1706036 Unit!96824)))

(declare-fun b!4530611 () Bool)

(declare-fun res!1886824 () Bool)

(declare-fun e!2823003 () Bool)

(assert (=> b!4530611 (=> (not res!1886824) (not e!2823003))))

(assert (=> b!4530611 (= res!1886824 (forall!10305 (toList!4364 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) lambda!174348))))

(declare-fun bm!315793 () Bool)

(assert (=> bm!315793 (= call!315799 (lemmaContainsAllItsOwnKeys!352 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun b!4530612 () Bool)

(assert (=> b!4530612 (= e!2823003 (invariantList!1031 (toList!4364 lt!1706052)))))

(assert (=> d!1398347 e!2823003))

(declare-fun res!1886825 () Bool)

(assert (=> d!1398347 (=> (not res!1886825) (not e!2823003))))

(assert (=> d!1398347 (= res!1886825 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174348))))

(assert (=> d!1398347 (= lt!1706052 e!2823002)))

(assert (=> d!1398347 (= c!773587 ((_ is Nil!50696) (t!357782 (_2!28868 lt!1705015))))))

(assert (=> d!1398347 (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705015)))))

(assert (=> d!1398347 (= (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) lt!1706052)))

(declare-fun bm!315794 () Bool)

(assert (=> bm!315794 (= call!315797 (forall!10305 (toList!4364 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (ite c!773587 lambda!174345 lambda!174347)))))

(assert (=> b!4530613 (= e!2823002 lt!1706040)))

(declare-fun lt!1706048 () ListMap!3625)

(assert (=> b!4530613 (= lt!1706048 (+!1572 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> b!4530613 (= lt!1706040 (addToMapMapFromBucket!705 (t!357782 (t!357782 (_2!28868 lt!1705015))) (+!1572 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) (h!56563 (t!357782 (_2!28868 lt!1705015))))))))

(declare-fun lt!1706047 () Unit!96566)

(assert (=> b!4530613 (= lt!1706047 call!315799)))

(assert (=> b!4530613 (forall!10305 (toList!4364 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) lambda!174346)))

(declare-fun lt!1706051 () Unit!96566)

(assert (=> b!4530613 (= lt!1706051 lt!1706047)))

(assert (=> b!4530613 (forall!10305 (toList!4364 lt!1706048) lambda!174347)))

(declare-fun lt!1706044 () Unit!96566)

(declare-fun Unit!96825 () Unit!96566)

(assert (=> b!4530613 (= lt!1706044 Unit!96825)))

(assert (=> b!4530613 call!315798))

(declare-fun lt!1706049 () Unit!96566)

(declare-fun Unit!96826 () Unit!96566)

(assert (=> b!4530613 (= lt!1706049 Unit!96826)))

(declare-fun lt!1706037 () Unit!96566)

(declare-fun Unit!96827 () Unit!96566)

(assert (=> b!4530613 (= lt!1706037 Unit!96827)))

(declare-fun lt!1706038 () Unit!96566)

(assert (=> b!4530613 (= lt!1706038 (forallContained!2559 (toList!4364 lt!1706048) lambda!174347 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> b!4530613 (contains!13455 lt!1706048 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706039 () Unit!96566)

(declare-fun Unit!96828 () Unit!96566)

(assert (=> b!4530613 (= lt!1706039 Unit!96828)))

(assert (=> b!4530613 (contains!13455 lt!1706040 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706042 () Unit!96566)

(declare-fun Unit!96829 () Unit!96566)

(assert (=> b!4530613 (= lt!1706042 Unit!96829)))

(assert (=> b!4530613 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174347)))

(declare-fun lt!1706045 () Unit!96566)

(declare-fun Unit!96830 () Unit!96566)

(assert (=> b!4530613 (= lt!1706045 Unit!96830)))

(assert (=> b!4530613 (forall!10305 (toList!4364 lt!1706048) lambda!174347)))

(declare-fun lt!1706046 () Unit!96566)

(declare-fun Unit!96831 () Unit!96566)

(assert (=> b!4530613 (= lt!1706046 Unit!96831)))

(declare-fun lt!1706041 () Unit!96566)

(declare-fun Unit!96832 () Unit!96566)

(assert (=> b!4530613 (= lt!1706041 Unit!96832)))

(declare-fun lt!1706035 () Unit!96566)

(assert (=> b!4530613 (= lt!1706035 (addForallContainsKeyThenBeforeAdding!352 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015))) lt!1706040 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))) (_2!28867 (h!56563 (t!357782 (_2!28868 lt!1705015))))))))

(assert (=> b!4530613 call!315797))

(declare-fun lt!1706053 () Unit!96566)

(assert (=> b!4530613 (= lt!1706053 lt!1706035)))

(assert (=> b!4530613 (forall!10305 (toList!4364 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) lambda!174347)))

(declare-fun lt!1706050 () Unit!96566)

(declare-fun Unit!96833 () Unit!96566)

(assert (=> b!4530613 (= lt!1706050 Unit!96833)))

(declare-fun res!1886823 () Bool)

(assert (=> b!4530613 (= res!1886823 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174347))))

(assert (=> b!4530613 (=> (not res!1886823) (not e!2823001))))

(assert (=> b!4530613 e!2823001))

(declare-fun lt!1706055 () Unit!96566)

(declare-fun Unit!96834 () Unit!96566)

(assert (=> b!4530613 (= lt!1706055 Unit!96834)))

(assert (= (and d!1398347 c!773587) b!4530610))

(assert (= (and d!1398347 (not c!773587)) b!4530613))

(assert (= (and b!4530613 res!1886823) b!4530609))

(assert (= (or b!4530610 b!4530613) bm!315794))

(assert (= (or b!4530610 b!4530613) bm!315792))

(assert (= (or b!4530610 b!4530613) bm!315793))

(assert (= (and d!1398347 res!1886825) b!4530611))

(assert (= (and b!4530611 res!1886824) b!4530612))

(declare-fun m!5287693 () Bool)

(assert (=> d!1398347 m!5287693))

(assert (=> d!1398347 m!5285901))

(declare-fun m!5287695 () Bool)

(assert (=> b!4530613 m!5287695))

(assert (=> b!4530613 m!5287695))

(declare-fun m!5287697 () Bool)

(assert (=> b!4530613 m!5287697))

(declare-fun m!5287699 () Bool)

(assert (=> b!4530613 m!5287699))

(assert (=> b!4530613 m!5286003))

(declare-fun m!5287701 () Bool)

(assert (=> b!4530613 m!5287701))

(declare-fun m!5287703 () Bool)

(assert (=> b!4530613 m!5287703))

(declare-fun m!5287705 () Bool)

(assert (=> b!4530613 m!5287705))

(declare-fun m!5287707 () Bool)

(assert (=> b!4530613 m!5287707))

(declare-fun m!5287709 () Bool)

(assert (=> b!4530613 m!5287709))

(declare-fun m!5287711 () Bool)

(assert (=> b!4530613 m!5287711))

(declare-fun m!5287713 () Bool)

(assert (=> b!4530613 m!5287713))

(assert (=> b!4530613 m!5286003))

(assert (=> b!4530613 m!5287707))

(assert (=> b!4530613 m!5287697))

(assert (=> b!4530609 m!5287699))

(declare-fun m!5287715 () Bool)

(assert (=> bm!315792 m!5287715))

(declare-fun m!5287717 () Bool)

(assert (=> b!4530611 m!5287717))

(assert (=> bm!315793 m!5286003))

(declare-fun m!5287719 () Bool)

(assert (=> bm!315793 m!5287719))

(declare-fun m!5287721 () Bool)

(assert (=> b!4530612 m!5287721))

(declare-fun m!5287723 () Bool)

(assert (=> bm!315794 m!5287723))

(assert (=> b!4529691 d!1398347))

(declare-fun d!1398353 () Bool)

(declare-fun res!1886835 () Bool)

(declare-fun e!2823013 () Bool)

(assert (=> d!1398353 (=> res!1886835 e!2823013)))

(assert (=> d!1398353 (= res!1886835 ((_ is Nil!50696) (toList!4364 lt!1705028)))))

(assert (=> d!1398353 (= (forall!10305 (toList!4364 lt!1705028) lambda!174222) e!2823013)))

(declare-fun b!4530629 () Bool)

(declare-fun e!2823014 () Bool)

(assert (=> b!4530629 (= e!2823013 e!2823014)))

(declare-fun res!1886836 () Bool)

(assert (=> b!4530629 (=> (not res!1886836) (not e!2823014))))

(assert (=> b!4530629 (= res!1886836 (dynLambda!21188 lambda!174222 (h!56563 (toList!4364 lt!1705028))))))

(declare-fun b!4530630 () Bool)

(assert (=> b!4530630 (= e!2823014 (forall!10305 (t!357782 (toList!4364 lt!1705028)) lambda!174222))))

(assert (= (and d!1398353 (not res!1886835)) b!4530629))

(assert (= (and b!4530629 res!1886836) b!4530630))

(declare-fun b_lambda!156471 () Bool)

(assert (=> (not b_lambda!156471) (not b!4530629)))

(declare-fun m!5287745 () Bool)

(assert (=> b!4530629 m!5287745))

(declare-fun m!5287747 () Bool)

(assert (=> b!4530630 m!5287747))

(assert (=> b!4529691 d!1398353))

(declare-fun bs!865915 () Bool)

(declare-fun d!1398357 () Bool)

(assert (= bs!865915 (and d!1398357 b!4530552)))

(declare-fun lambda!174349 () Int)

(assert (=> bs!865915 (= (= lt!1705467 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174349 lambda!174333))))

(declare-fun bs!865916 () Bool)

(assert (= bs!865916 (and d!1398357 d!1397915)))

(assert (=> bs!865916 (= (= lt!1705467 lt!1705606) (= lambda!174349 lambda!174257))))

(declare-fun bs!865917 () Bool)

(assert (= bs!865917 (and d!1398357 b!4529972)))

(assert (=> bs!865917 (= (= lt!1705467 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174349 lambda!174260))))

(declare-fun bs!865918 () Bool)

(assert (= bs!865918 (and d!1398357 d!1398099)))

(assert (=> bs!865918 (not (= lambda!174349 lambda!174291))))

(declare-fun bs!865919 () Bool)

(assert (= bs!865919 (and d!1398357 b!4529691)))

(assert (=> bs!865919 (= lambda!174349 lambda!174223)))

(declare-fun bs!865920 () Bool)

(assert (= bs!865920 (and d!1398357 d!1397935)))

(assert (=> bs!865920 (= (= lt!1705467 lt!1705636) (= lambda!174349 lambda!174264))))

(declare-fun bs!865921 () Bool)

(assert (= bs!865921 (and d!1398357 d!1397821)))

(assert (=> bs!865921 (= (= lt!1705467 lt!1705529) (= lambda!174349 lambda!174234))))

(declare-fun bs!865922 () Bool)

(assert (= bs!865922 (and d!1398357 b!4529387)))

(assert (=> bs!865922 (= (= lt!1705467 lt!1705212) (= lambda!174349 lambda!174167))))

(declare-fun bs!865923 () Bool)

(assert (= bs!865923 (and d!1398357 d!1397819)))

(assert (=> bs!865923 (= (= lt!1705467 lt!1705001) (= lambda!174349 lambda!174230))))

(declare-fun bs!865924 () Bool)

(assert (= bs!865924 (and d!1398357 b!4529273)))

(assert (=> bs!865924 (not (= lambda!174349 lambda!174089))))

(declare-fun bs!865925 () Bool)

(assert (= bs!865925 (and d!1398357 b!4529688)))

(assert (=> bs!865925 (= (= lt!1705467 lt!1705028) (= lambda!174349 lambda!174221))))

(declare-fun bs!865926 () Bool)

(assert (= bs!865926 (and d!1398357 b!4529936)))

(assert (=> bs!865926 (= (= lt!1705467 lt!1705594) (= lambda!174349 lambda!174256))))

(declare-fun bs!865927 () Bool)

(assert (= bs!865927 (and d!1398357 b!4530610)))

(assert (=> bs!865927 (= (= lt!1705467 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174349 lambda!174345))))

(declare-fun bs!865928 () Bool)

(assert (= bs!865928 (and d!1398357 d!1397787)))

(assert (=> bs!865928 (= (= lt!1705467 lt!1705479) (= lambda!174349 lambda!174224))))

(declare-fun bs!865929 () Bool)

(assert (= bs!865929 (and d!1398357 b!4530613)))

(assert (=> bs!865929 (= (= lt!1705467 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174349 lambda!174346))))

(assert (=> bs!865922 (= (= lt!1705467 lt!1705027) (= lambda!174349 lambda!174166))))

(declare-fun bs!865930 () Bool)

(assert (= bs!865930 (and d!1398357 d!1398347)))

(assert (=> bs!865930 (= (= lt!1705467 lt!1706052) (= lambda!174349 lambda!174348))))

(assert (=> bs!865915 (= (= lt!1705467 lt!1705953) (= lambda!174349 lambda!174334))))

(assert (=> bs!865929 (= (= lt!1705467 lt!1706040) (= lambda!174349 lambda!174347))))

(declare-fun bs!865932 () Bool)

(assert (= bs!865932 (and d!1398357 b!4529431)))

(assert (=> bs!865932 (= (= lt!1705467 lt!1705001) (= lambda!174349 lambda!174178))))

(declare-fun bs!865933 () Bool)

(assert (= bs!865933 (and d!1398357 d!1398281)))

(assert (=> bs!865933 (= (= lt!1705467 lt!1705212) (= lambda!174349 lambda!174327))))

(declare-fun bs!865935 () Bool)

(assert (= bs!865935 (and d!1398357 b!4529733)))

(assert (=> bs!865935 (= (= lt!1705467 lt!1705517) (= lambda!174349 lambda!174233))))

(declare-fun bs!865937 () Bool)

(assert (= bs!865937 (and d!1398357 d!1398315)))

(assert (=> bs!865937 (= (= lt!1705467 lt!1705965) (= lambda!174349 lambda!174335))))

(assert (=> bs!865935 (= (= lt!1705467 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174349 lambda!174232))))

(assert (=> bs!865926 (= (= lt!1705467 (-!404 lt!1705001 key!3287)) (= lambda!174349 lambda!174255))))

(declare-fun bs!865940 () Bool)

(assert (= bs!865940 (and d!1398357 b!4529933)))

(assert (=> bs!865940 (= (= lt!1705467 (-!404 lt!1705001 key!3287)) (= lambda!174349 lambda!174254))))

(declare-fun bs!865942 () Bool)

(assert (= bs!865942 (and d!1398357 b!4529434)))

(assert (=> bs!865942 (= (= lt!1705467 lt!1705266) (= lambda!174349 lambda!174180))))

(declare-fun bs!865944 () Bool)

(assert (= bs!865944 (and d!1398357 d!1398049)))

(assert (=> bs!865944 (= (= lt!1705467 lt!1705027) (= lambda!174349 lambda!174280))))

(assert (=> bs!865919 (= (= lt!1705467 lt!1705028) (= lambda!174349 lambda!174222))))

(declare-fun bs!865946 () Bool)

(assert (= bs!865946 (and d!1398357 d!1397779)))

(assert (=> bs!865946 (not (= lambda!174349 lambda!174220))))

(declare-fun bs!865947 () Bool)

(assert (= bs!865947 (and d!1398357 b!4529969)))

(assert (=> bs!865947 (= (= lt!1705467 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174349 lambda!174258))))

(declare-fun bs!865949 () Bool)

(assert (= bs!865949 (and d!1398357 b!4529384)))

(assert (=> bs!865949 (= (= lt!1705467 lt!1705027) (= lambda!174349 lambda!174165))))

(declare-fun bs!865951 () Bool)

(assert (= bs!865951 (and d!1398357 b!4530549)))

(assert (=> bs!865951 (= (= lt!1705467 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174349 lambda!174329))))

(declare-fun bs!865953 () Bool)

(assert (= bs!865953 (and d!1398357 b!4529730)))

(assert (=> bs!865953 (= (= lt!1705467 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174349 lambda!174231))))

(declare-fun bs!865955 () Bool)

(assert (= bs!865955 (and d!1398357 d!1397569)))

(assert (=> bs!865955 (= (= lt!1705467 lt!1705224) (= lambda!174349 lambda!174168))))

(assert (=> bs!865917 (= (= lt!1705467 lt!1705624) (= lambda!174349 lambda!174261))))

(assert (=> bs!865942 (= (= lt!1705467 lt!1705001) (= lambda!174349 lambda!174179))))

(declare-fun bs!865956 () Bool)

(assert (= bs!865956 (and d!1398357 d!1398075)))

(assert (=> bs!865956 (= (= lt!1705467 lt!1705028) (= lambda!174349 lambda!174289))))

(declare-fun bs!865957 () Bool)

(assert (= bs!865957 (and d!1398357 d!1397629)))

(assert (=> bs!865957 (= (= lt!1705467 lt!1705278) (= lambda!174349 lambda!174181))))

(assert (=> d!1398357 true))

(assert (=> d!1398357 (forall!10305 (toList!4364 lt!1705028) lambda!174349)))

(declare-fun lt!1706076 () Unit!96566)

(assert (=> d!1398357 (= lt!1706076 (choose!29731 lt!1705028 lt!1705467 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398357 (forall!10305 (toList!4364 (+!1572 lt!1705028 (tuple2!51147 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))) lambda!174349)))

(assert (=> d!1398357 (= (addForallContainsKeyThenBeforeAdding!352 lt!1705028 lt!1705467 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1706076)))

(declare-fun bs!865958 () Bool)

(assert (= bs!865958 d!1398357))

(declare-fun m!5287783 () Bool)

(assert (=> bs!865958 m!5287783))

(declare-fun m!5287785 () Bool)

(assert (=> bs!865958 m!5287785))

(declare-fun m!5287787 () Bool)

(assert (=> bs!865958 m!5287787))

(declare-fun m!5287793 () Bool)

(assert (=> bs!865958 m!5287793))

(assert (=> b!4529691 d!1398357))

(declare-fun bs!865960 () Bool)

(declare-fun b!4530646 () Bool)

(assert (= bs!865960 (and b!4530646 b!4530552)))

(declare-fun lambda!174352 () Int)

(assert (=> bs!865960 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174352 lambda!174333))))

(declare-fun bs!865961 () Bool)

(assert (= bs!865961 (and b!4530646 d!1397915)))

(assert (=> bs!865961 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705606) (= lambda!174352 lambda!174257))))

(declare-fun bs!865962 () Bool)

(assert (= bs!865962 (and b!4530646 b!4529972)))

(assert (=> bs!865962 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174352 lambda!174260))))

(declare-fun bs!865963 () Bool)

(assert (= bs!865963 (and b!4530646 d!1398099)))

(assert (=> bs!865963 (not (= lambda!174352 lambda!174291))))

(declare-fun bs!865964 () Bool)

(assert (= bs!865964 (and b!4530646 b!4529691)))

(assert (=> bs!865964 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705467) (= lambda!174352 lambda!174223))))

(declare-fun bs!865965 () Bool)

(assert (= bs!865965 (and b!4530646 d!1397935)))

(assert (=> bs!865965 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705636) (= lambda!174352 lambda!174264))))

(declare-fun bs!865966 () Bool)

(assert (= bs!865966 (and b!4530646 d!1397821)))

(assert (=> bs!865966 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705529) (= lambda!174352 lambda!174234))))

(declare-fun bs!865967 () Bool)

(assert (= bs!865967 (and b!4530646 b!4529387)))

(assert (=> bs!865967 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705212) (= lambda!174352 lambda!174167))))

(declare-fun bs!865968 () Bool)

(assert (= bs!865968 (and b!4530646 b!4529273)))

(assert (=> bs!865968 (not (= lambda!174352 lambda!174089))))

(declare-fun bs!865969 () Bool)

(assert (= bs!865969 (and b!4530646 b!4529688)))

(assert (=> bs!865969 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705028) (= lambda!174352 lambda!174221))))

(declare-fun bs!865970 () Bool)

(assert (= bs!865970 (and b!4530646 b!4529936)))

(assert (=> bs!865970 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705594) (= lambda!174352 lambda!174256))))

(declare-fun bs!865971 () Bool)

(assert (= bs!865971 (and b!4530646 b!4530610)))

(assert (=> bs!865971 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174352 lambda!174345))))

(declare-fun bs!865972 () Bool)

(assert (= bs!865972 (and b!4530646 d!1397787)))

(assert (=> bs!865972 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705479) (= lambda!174352 lambda!174224))))

(declare-fun bs!865973 () Bool)

(assert (= bs!865973 (and b!4530646 b!4530613)))

(assert (=> bs!865973 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174352 lambda!174346))))

(assert (=> bs!865967 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705027) (= lambda!174352 lambda!174166))))

(declare-fun bs!865974 () Bool)

(assert (= bs!865974 (and b!4530646 d!1398347)))

(assert (=> bs!865974 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1706052) (= lambda!174352 lambda!174348))))

(assert (=> bs!865960 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705953) (= lambda!174352 lambda!174334))))

(assert (=> bs!865973 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1706040) (= lambda!174352 lambda!174347))))

(declare-fun bs!865975 () Bool)

(assert (= bs!865975 (and b!4530646 b!4529431)))

(assert (=> bs!865975 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705001) (= lambda!174352 lambda!174178))))

(declare-fun bs!865976 () Bool)

(assert (= bs!865976 (and b!4530646 d!1398281)))

(assert (=> bs!865976 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705212) (= lambda!174352 lambda!174327))))

(declare-fun bs!865977 () Bool)

(assert (= bs!865977 (and b!4530646 b!4529733)))

(assert (=> bs!865977 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705517) (= lambda!174352 lambda!174233))))

(declare-fun bs!865978 () Bool)

(assert (= bs!865978 (and b!4530646 d!1398315)))

(assert (=> bs!865978 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705965) (= lambda!174352 lambda!174335))))

(assert (=> bs!865977 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174352 lambda!174232))))

(assert (=> bs!865970 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (-!404 lt!1705001 key!3287)) (= lambda!174352 lambda!174255))))

(declare-fun bs!865979 () Bool)

(assert (= bs!865979 (and b!4530646 b!4529933)))

(assert (=> bs!865979 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (-!404 lt!1705001 key!3287)) (= lambda!174352 lambda!174254))))

(declare-fun bs!865980 () Bool)

(assert (= bs!865980 (and b!4530646 b!4529434)))

(assert (=> bs!865980 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705266) (= lambda!174352 lambda!174180))))

(declare-fun bs!865981 () Bool)

(assert (= bs!865981 (and b!4530646 d!1398049)))

(assert (=> bs!865981 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705027) (= lambda!174352 lambda!174280))))

(assert (=> bs!865964 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705028) (= lambda!174352 lambda!174222))))

(declare-fun bs!865982 () Bool)

(assert (= bs!865982 (and b!4530646 d!1397779)))

(assert (=> bs!865982 (not (= lambda!174352 lambda!174220))))

(declare-fun bs!865983 () Bool)

(assert (= bs!865983 (and b!4530646 b!4529969)))

(assert (=> bs!865983 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174352 lambda!174258))))

(declare-fun bs!865984 () Bool)

(assert (= bs!865984 (and b!4530646 b!4529384)))

(assert (=> bs!865984 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705027) (= lambda!174352 lambda!174165))))

(declare-fun bs!865985 () Bool)

(assert (= bs!865985 (and b!4530646 b!4530549)))

(assert (=> bs!865985 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174352 lambda!174329))))

(declare-fun bs!865986 () Bool)

(assert (= bs!865986 (and b!4530646 b!4529730)))

(assert (=> bs!865986 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174352 lambda!174231))))

(declare-fun bs!865987 () Bool)

(assert (= bs!865987 (and b!4530646 d!1397569)))

(assert (=> bs!865987 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705224) (= lambda!174352 lambda!174168))))

(declare-fun bs!865988 () Bool)

(assert (= bs!865988 (and b!4530646 d!1398357)))

(assert (=> bs!865988 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705467) (= lambda!174352 lambda!174349))))

(declare-fun bs!865989 () Bool)

(assert (= bs!865989 (and b!4530646 d!1397819)))

(assert (=> bs!865989 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705001) (= lambda!174352 lambda!174230))))

(assert (=> bs!865962 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705624) (= lambda!174352 lambda!174261))))

(assert (=> bs!865980 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705001) (= lambda!174352 lambda!174179))))

(declare-fun bs!865990 () Bool)

(assert (= bs!865990 (and b!4530646 d!1398075)))

(assert (=> bs!865990 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705028) (= lambda!174352 lambda!174289))))

(declare-fun bs!865991 () Bool)

(assert (= bs!865991 (and b!4530646 d!1397629)))

(assert (=> bs!865991 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705278) (= lambda!174352 lambda!174181))))

(assert (=> b!4530646 true))

(declare-fun bs!865992 () Bool)

(declare-fun b!4530649 () Bool)

(assert (= bs!865992 (and b!4530649 d!1397915)))

(declare-fun lambda!174353 () Int)

(assert (=> bs!865992 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705606) (= lambda!174353 lambda!174257))))

(declare-fun bs!865993 () Bool)

(assert (= bs!865993 (and b!4530649 b!4529972)))

(assert (=> bs!865993 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174353 lambda!174260))))

(declare-fun bs!865994 () Bool)

(assert (= bs!865994 (and b!4530649 d!1398099)))

(assert (=> bs!865994 (not (= lambda!174353 lambda!174291))))

(declare-fun bs!865995 () Bool)

(assert (= bs!865995 (and b!4530649 b!4529691)))

(assert (=> bs!865995 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705467) (= lambda!174353 lambda!174223))))

(declare-fun bs!865996 () Bool)

(assert (= bs!865996 (and b!4530649 d!1397935)))

(assert (=> bs!865996 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705636) (= lambda!174353 lambda!174264))))

(declare-fun bs!865997 () Bool)

(assert (= bs!865997 (and b!4530649 d!1397821)))

(assert (=> bs!865997 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705529) (= lambda!174353 lambda!174234))))

(declare-fun bs!865998 () Bool)

(assert (= bs!865998 (and b!4530649 b!4529387)))

(assert (=> bs!865998 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705212) (= lambda!174353 lambda!174167))))

(declare-fun bs!865999 () Bool)

(assert (= bs!865999 (and b!4530649 b!4529273)))

(assert (=> bs!865999 (not (= lambda!174353 lambda!174089))))

(declare-fun bs!866000 () Bool)

(assert (= bs!866000 (and b!4530649 b!4529688)))

(assert (=> bs!866000 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705028) (= lambda!174353 lambda!174221))))

(declare-fun bs!866001 () Bool)

(assert (= bs!866001 (and b!4530649 b!4529936)))

(assert (=> bs!866001 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705594) (= lambda!174353 lambda!174256))))

(declare-fun bs!866002 () Bool)

(assert (= bs!866002 (and b!4530649 b!4530610)))

(assert (=> bs!866002 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174353 lambda!174345))))

(declare-fun bs!866003 () Bool)

(assert (= bs!866003 (and b!4530649 d!1397787)))

(assert (=> bs!866003 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705479) (= lambda!174353 lambda!174224))))

(declare-fun bs!866004 () Bool)

(assert (= bs!866004 (and b!4530649 b!4530552)))

(assert (=> bs!866004 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174353 lambda!174333))))

(declare-fun bs!866005 () Bool)

(assert (= bs!866005 (and b!4530649 b!4530646)))

(assert (=> bs!866005 (= lambda!174353 lambda!174352)))

(declare-fun bs!866006 () Bool)

(assert (= bs!866006 (and b!4530649 b!4530613)))

(assert (=> bs!866006 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174353 lambda!174346))))

(assert (=> bs!865998 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705027) (= lambda!174353 lambda!174166))))

(declare-fun bs!866007 () Bool)

(assert (= bs!866007 (and b!4530649 d!1398347)))

(assert (=> bs!866007 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1706052) (= lambda!174353 lambda!174348))))

(assert (=> bs!866004 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705953) (= lambda!174353 lambda!174334))))

(assert (=> bs!866006 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1706040) (= lambda!174353 lambda!174347))))

(declare-fun bs!866008 () Bool)

(assert (= bs!866008 (and b!4530649 b!4529431)))

(assert (=> bs!866008 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705001) (= lambda!174353 lambda!174178))))

(declare-fun bs!866009 () Bool)

(assert (= bs!866009 (and b!4530649 d!1398281)))

(assert (=> bs!866009 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705212) (= lambda!174353 lambda!174327))))

(declare-fun bs!866010 () Bool)

(assert (= bs!866010 (and b!4530649 b!4529733)))

(assert (=> bs!866010 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705517) (= lambda!174353 lambda!174233))))

(declare-fun bs!866011 () Bool)

(assert (= bs!866011 (and b!4530649 d!1398315)))

(assert (=> bs!866011 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705965) (= lambda!174353 lambda!174335))))

(assert (=> bs!866010 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174353 lambda!174232))))

(assert (=> bs!866001 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (-!404 lt!1705001 key!3287)) (= lambda!174353 lambda!174255))))

(declare-fun bs!866012 () Bool)

(assert (= bs!866012 (and b!4530649 b!4529933)))

(assert (=> bs!866012 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (-!404 lt!1705001 key!3287)) (= lambda!174353 lambda!174254))))

(declare-fun bs!866013 () Bool)

(assert (= bs!866013 (and b!4530649 b!4529434)))

(assert (=> bs!866013 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705266) (= lambda!174353 lambda!174180))))

(declare-fun bs!866014 () Bool)

(assert (= bs!866014 (and b!4530649 d!1398049)))

(assert (=> bs!866014 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705027) (= lambda!174353 lambda!174280))))

(assert (=> bs!865995 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705028) (= lambda!174353 lambda!174222))))

(declare-fun bs!866015 () Bool)

(assert (= bs!866015 (and b!4530649 d!1397779)))

(assert (=> bs!866015 (not (= lambda!174353 lambda!174220))))

(declare-fun bs!866016 () Bool)

(assert (= bs!866016 (and b!4530649 b!4529969)))

(assert (=> bs!866016 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174353 lambda!174258))))

(declare-fun bs!866017 () Bool)

(assert (= bs!866017 (and b!4530649 b!4529384)))

(assert (=> bs!866017 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705027) (= lambda!174353 lambda!174165))))

(declare-fun bs!866018 () Bool)

(assert (= bs!866018 (and b!4530649 b!4530549)))

(assert (=> bs!866018 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174353 lambda!174329))))

(declare-fun bs!866019 () Bool)

(assert (= bs!866019 (and b!4530649 b!4529730)))

(assert (=> bs!866019 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174353 lambda!174231))))

(declare-fun bs!866020 () Bool)

(assert (= bs!866020 (and b!4530649 d!1397569)))

(assert (=> bs!866020 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705224) (= lambda!174353 lambda!174168))))

(declare-fun bs!866021 () Bool)

(assert (= bs!866021 (and b!4530649 d!1398357)))

(assert (=> bs!866021 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705467) (= lambda!174353 lambda!174349))))

(declare-fun bs!866022 () Bool)

(assert (= bs!866022 (and b!4530649 d!1397819)))

(assert (=> bs!866022 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705001) (= lambda!174353 lambda!174230))))

(assert (=> bs!865993 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705624) (= lambda!174353 lambda!174261))))

(assert (=> bs!866013 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705001) (= lambda!174353 lambda!174179))))

(declare-fun bs!866023 () Bool)

(assert (= bs!866023 (and b!4530649 d!1398075)))

(assert (=> bs!866023 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705028) (= lambda!174353 lambda!174289))))

(declare-fun bs!866024 () Bool)

(assert (= bs!866024 (and b!4530649 d!1397629)))

(assert (=> bs!866024 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1705278) (= lambda!174353 lambda!174181))))

(assert (=> b!4530649 true))

(declare-fun lt!1706086 () ListMap!3625)

(declare-fun lambda!174354 () Int)

(assert (=> bs!865992 (= (= lt!1706086 lt!1705606) (= lambda!174354 lambda!174257))))

(assert (=> bs!865993 (= (= lt!1706086 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174354 lambda!174260))))

(assert (=> bs!865995 (= (= lt!1706086 lt!1705467) (= lambda!174354 lambda!174223))))

(assert (=> bs!865996 (= (= lt!1706086 lt!1705636) (= lambda!174354 lambda!174264))))

(assert (=> bs!865997 (= (= lt!1706086 lt!1705529) (= lambda!174354 lambda!174234))))

(assert (=> bs!865998 (= (= lt!1706086 lt!1705212) (= lambda!174354 lambda!174167))))

(assert (=> bs!865999 (not (= lambda!174354 lambda!174089))))

(assert (=> bs!866000 (= (= lt!1706086 lt!1705028) (= lambda!174354 lambda!174221))))

(assert (=> bs!866001 (= (= lt!1706086 lt!1705594) (= lambda!174354 lambda!174256))))

(assert (=> bs!866002 (= (= lt!1706086 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174354 lambda!174345))))

(assert (=> bs!866003 (= (= lt!1706086 lt!1705479) (= lambda!174354 lambda!174224))))

(assert (=> bs!866004 (= (= lt!1706086 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174354 lambda!174333))))

(assert (=> bs!866005 (= (= lt!1706086 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174354 lambda!174352))))

(assert (=> bs!866006 (= (= lt!1706086 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174354 lambda!174346))))

(assert (=> bs!865998 (= (= lt!1706086 lt!1705027) (= lambda!174354 lambda!174166))))

(assert (=> bs!866007 (= (= lt!1706086 lt!1706052) (= lambda!174354 lambda!174348))))

(assert (=> bs!866004 (= (= lt!1706086 lt!1705953) (= lambda!174354 lambda!174334))))

(assert (=> bs!866006 (= (= lt!1706086 lt!1706040) (= lambda!174354 lambda!174347))))

(assert (=> bs!866008 (= (= lt!1706086 lt!1705001) (= lambda!174354 lambda!174178))))

(assert (=> bs!866009 (= (= lt!1706086 lt!1705212) (= lambda!174354 lambda!174327))))

(assert (=> bs!866010 (= (= lt!1706086 lt!1705517) (= lambda!174354 lambda!174233))))

(assert (=> bs!866011 (= (= lt!1706086 lt!1705965) (= lambda!174354 lambda!174335))))

(assert (=> bs!866010 (= (= lt!1706086 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174354 lambda!174232))))

(assert (=> bs!866001 (= (= lt!1706086 (-!404 lt!1705001 key!3287)) (= lambda!174354 lambda!174255))))

(assert (=> bs!866012 (= (= lt!1706086 (-!404 lt!1705001 key!3287)) (= lambda!174354 lambda!174254))))

(assert (=> bs!866013 (= (= lt!1706086 lt!1705266) (= lambda!174354 lambda!174180))))

(assert (=> bs!866014 (= (= lt!1706086 lt!1705027) (= lambda!174354 lambda!174280))))

(assert (=> bs!865995 (= (= lt!1706086 lt!1705028) (= lambda!174354 lambda!174222))))

(assert (=> b!4530649 (= (= lt!1706086 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174354 lambda!174353))))

(assert (=> bs!865994 (not (= lambda!174354 lambda!174291))))

(assert (=> bs!866015 (not (= lambda!174354 lambda!174220))))

(assert (=> bs!866016 (= (= lt!1706086 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174354 lambda!174258))))

(assert (=> bs!866017 (= (= lt!1706086 lt!1705027) (= lambda!174354 lambda!174165))))

(assert (=> bs!866018 (= (= lt!1706086 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174354 lambda!174329))))

(assert (=> bs!866019 (= (= lt!1706086 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174354 lambda!174231))))

(assert (=> bs!866020 (= (= lt!1706086 lt!1705224) (= lambda!174354 lambda!174168))))

(assert (=> bs!866021 (= (= lt!1706086 lt!1705467) (= lambda!174354 lambda!174349))))

(assert (=> bs!866022 (= (= lt!1706086 lt!1705001) (= lambda!174354 lambda!174230))))

(assert (=> bs!865993 (= (= lt!1706086 lt!1705624) (= lambda!174354 lambda!174261))))

(assert (=> bs!866013 (= (= lt!1706086 lt!1705001) (= lambda!174354 lambda!174179))))

(assert (=> bs!866023 (= (= lt!1706086 lt!1705028) (= lambda!174354 lambda!174289))))

(assert (=> bs!866024 (= (= lt!1706086 lt!1705278) (= lambda!174354 lambda!174181))))

(assert (=> b!4530649 true))

(declare-fun bs!866053 () Bool)

(declare-fun d!1398371 () Bool)

(assert (= bs!866053 (and d!1398371 d!1397915)))

(declare-fun lt!1706098 () ListMap!3625)

(declare-fun lambda!174356 () Int)

(assert (=> bs!866053 (= (= lt!1706098 lt!1705606) (= lambda!174356 lambda!174257))))

(declare-fun bs!866055 () Bool)

(assert (= bs!866055 (and d!1398371 b!4529972)))

(assert (=> bs!866055 (= (= lt!1706098 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174356 lambda!174260))))

(declare-fun bs!866057 () Bool)

(assert (= bs!866057 (and d!1398371 b!4529691)))

(assert (=> bs!866057 (= (= lt!1706098 lt!1705467) (= lambda!174356 lambda!174223))))

(declare-fun bs!866059 () Bool)

(assert (= bs!866059 (and d!1398371 d!1397935)))

(assert (=> bs!866059 (= (= lt!1706098 lt!1705636) (= lambda!174356 lambda!174264))))

(declare-fun bs!866061 () Bool)

(assert (= bs!866061 (and d!1398371 d!1397821)))

(assert (=> bs!866061 (= (= lt!1706098 lt!1705529) (= lambda!174356 lambda!174234))))

(declare-fun bs!866062 () Bool)

(assert (= bs!866062 (and d!1398371 b!4529387)))

(assert (=> bs!866062 (= (= lt!1706098 lt!1705212) (= lambda!174356 lambda!174167))))

(declare-fun bs!866064 () Bool)

(assert (= bs!866064 (and d!1398371 b!4529273)))

(assert (=> bs!866064 (not (= lambda!174356 lambda!174089))))

(declare-fun bs!866065 () Bool)

(assert (= bs!866065 (and d!1398371 b!4529688)))

(assert (=> bs!866065 (= (= lt!1706098 lt!1705028) (= lambda!174356 lambda!174221))))

(declare-fun bs!866066 () Bool)

(assert (= bs!866066 (and d!1398371 b!4529936)))

(assert (=> bs!866066 (= (= lt!1706098 lt!1705594) (= lambda!174356 lambda!174256))))

(declare-fun bs!866067 () Bool)

(assert (= bs!866067 (and d!1398371 b!4530610)))

(assert (=> bs!866067 (= (= lt!1706098 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174356 lambda!174345))))

(declare-fun bs!866068 () Bool)

(assert (= bs!866068 (and d!1398371 d!1397787)))

(assert (=> bs!866068 (= (= lt!1706098 lt!1705479) (= lambda!174356 lambda!174224))))

(declare-fun bs!866069 () Bool)

(assert (= bs!866069 (and d!1398371 b!4530552)))

(assert (=> bs!866069 (= (= lt!1706098 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174356 lambda!174333))))

(declare-fun bs!866070 () Bool)

(assert (= bs!866070 (and d!1398371 b!4530646)))

(assert (=> bs!866070 (= (= lt!1706098 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174356 lambda!174352))))

(declare-fun bs!866071 () Bool)

(assert (= bs!866071 (and d!1398371 b!4530613)))

(assert (=> bs!866071 (= (= lt!1706098 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174356 lambda!174346))))

(assert (=> bs!866062 (= (= lt!1706098 lt!1705027) (= lambda!174356 lambda!174166))))

(declare-fun bs!866074 () Bool)

(assert (= bs!866074 (and d!1398371 b!4530649)))

(assert (=> bs!866074 (= (= lt!1706098 lt!1706086) (= lambda!174356 lambda!174354))))

(declare-fun bs!866076 () Bool)

(assert (= bs!866076 (and d!1398371 d!1398347)))

(assert (=> bs!866076 (= (= lt!1706098 lt!1706052) (= lambda!174356 lambda!174348))))

(assert (=> bs!866069 (= (= lt!1706098 lt!1705953) (= lambda!174356 lambda!174334))))

(assert (=> bs!866071 (= (= lt!1706098 lt!1706040) (= lambda!174356 lambda!174347))))

(declare-fun bs!866079 () Bool)

(assert (= bs!866079 (and d!1398371 b!4529431)))

(assert (=> bs!866079 (= (= lt!1706098 lt!1705001) (= lambda!174356 lambda!174178))))

(declare-fun bs!866081 () Bool)

(assert (= bs!866081 (and d!1398371 d!1398281)))

(assert (=> bs!866081 (= (= lt!1706098 lt!1705212) (= lambda!174356 lambda!174327))))

(declare-fun bs!866083 () Bool)

(assert (= bs!866083 (and d!1398371 b!4529733)))

(assert (=> bs!866083 (= (= lt!1706098 lt!1705517) (= lambda!174356 lambda!174233))))

(declare-fun bs!866085 () Bool)

(assert (= bs!866085 (and d!1398371 d!1398315)))

(assert (=> bs!866085 (= (= lt!1706098 lt!1705965) (= lambda!174356 lambda!174335))))

(assert (=> bs!866083 (= (= lt!1706098 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174356 lambda!174232))))

(assert (=> bs!866066 (= (= lt!1706098 (-!404 lt!1705001 key!3287)) (= lambda!174356 lambda!174255))))

(declare-fun bs!866089 () Bool)

(assert (= bs!866089 (and d!1398371 b!4529933)))

(assert (=> bs!866089 (= (= lt!1706098 (-!404 lt!1705001 key!3287)) (= lambda!174356 lambda!174254))))

(declare-fun bs!866091 () Bool)

(assert (= bs!866091 (and d!1398371 b!4529434)))

(assert (=> bs!866091 (= (= lt!1706098 lt!1705266) (= lambda!174356 lambda!174180))))

(declare-fun bs!866093 () Bool)

(assert (= bs!866093 (and d!1398371 d!1398049)))

(assert (=> bs!866093 (= (= lt!1706098 lt!1705027) (= lambda!174356 lambda!174280))))

(assert (=> bs!866057 (= (= lt!1706098 lt!1705028) (= lambda!174356 lambda!174222))))

(assert (=> bs!866074 (= (= lt!1706098 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174356 lambda!174353))))

(declare-fun bs!866097 () Bool)

(assert (= bs!866097 (and d!1398371 d!1398099)))

(assert (=> bs!866097 (not (= lambda!174356 lambda!174291))))

(declare-fun bs!866099 () Bool)

(assert (= bs!866099 (and d!1398371 d!1397779)))

(assert (=> bs!866099 (not (= lambda!174356 lambda!174220))))

(declare-fun bs!866100 () Bool)

(assert (= bs!866100 (and d!1398371 b!4529969)))

(assert (=> bs!866100 (= (= lt!1706098 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174356 lambda!174258))))

(declare-fun bs!866102 () Bool)

(assert (= bs!866102 (and d!1398371 b!4529384)))

(assert (=> bs!866102 (= (= lt!1706098 lt!1705027) (= lambda!174356 lambda!174165))))

(declare-fun bs!866104 () Bool)

(assert (= bs!866104 (and d!1398371 b!4530549)))

(assert (=> bs!866104 (= (= lt!1706098 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174356 lambda!174329))))

(declare-fun bs!866105 () Bool)

(assert (= bs!866105 (and d!1398371 b!4529730)))

(assert (=> bs!866105 (= (= lt!1706098 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174356 lambda!174231))))

(declare-fun bs!866107 () Bool)

(assert (= bs!866107 (and d!1398371 d!1397569)))

(assert (=> bs!866107 (= (= lt!1706098 lt!1705224) (= lambda!174356 lambda!174168))))

(declare-fun bs!866109 () Bool)

(assert (= bs!866109 (and d!1398371 d!1398357)))

(assert (=> bs!866109 (= (= lt!1706098 lt!1705467) (= lambda!174356 lambda!174349))))

(declare-fun bs!866111 () Bool)

(assert (= bs!866111 (and d!1398371 d!1397819)))

(assert (=> bs!866111 (= (= lt!1706098 lt!1705001) (= lambda!174356 lambda!174230))))

(assert (=> bs!866055 (= (= lt!1706098 lt!1705624) (= lambda!174356 lambda!174261))))

(assert (=> bs!866091 (= (= lt!1706098 lt!1705001) (= lambda!174356 lambda!174179))))

(declare-fun bs!866115 () Bool)

(assert (= bs!866115 (and d!1398371 d!1398075)))

(assert (=> bs!866115 (= (= lt!1706098 lt!1705028) (= lambda!174356 lambda!174289))))

(declare-fun bs!866116 () Bool)

(assert (= bs!866116 (and d!1398371 d!1397629)))

(assert (=> bs!866116 (= (= lt!1706098 lt!1705278) (= lambda!174356 lambda!174181))))

(assert (=> d!1398371 true))

(declare-fun b!4530645 () Bool)

(declare-fun e!2823025 () Bool)

(assert (=> b!4530645 (= e!2823025 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) lambda!174354))))

(declare-fun c!773593 () Bool)

(declare-fun call!315802 () Bool)

(declare-fun bm!315796 () Bool)

(assert (=> bm!315796 (= call!315802 (forall!10305 (ite c!773593 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1704999))))) (ite c!773593 lambda!174352 lambda!174354)))))

(declare-fun e!2823026 () ListMap!3625)

(assert (=> b!4530646 (= e!2823026 (extractMap!1234 (t!357783 (toList!4363 lt!1704999))))))

(declare-fun lt!1706089 () Unit!96566)

(declare-fun call!315803 () Unit!96566)

(assert (=> b!4530646 (= lt!1706089 call!315803)))

(declare-fun call!315801 () Bool)

(assert (=> b!4530646 call!315801))

(declare-fun lt!1706100 () Unit!96566)

(assert (=> b!4530646 (= lt!1706100 lt!1706089)))

(assert (=> b!4530646 call!315802))

(declare-fun lt!1706082 () Unit!96566)

(declare-fun Unit!96841 () Unit!96566)

(assert (=> b!4530646 (= lt!1706082 Unit!96841)))

(declare-fun b!4530647 () Bool)

(declare-fun res!1886848 () Bool)

(declare-fun e!2823027 () Bool)

(assert (=> b!4530647 (=> (not res!1886848) (not e!2823027))))

(assert (=> b!4530647 (= res!1886848 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) lambda!174356))))

(declare-fun bm!315797 () Bool)

(assert (=> bm!315797 (= call!315803 (lemmaContainsAllItsOwnKeys!352 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))))))

(declare-fun b!4530648 () Bool)

(assert (=> b!4530648 (= e!2823027 (invariantList!1031 (toList!4364 lt!1706098)))))

(assert (=> d!1398371 e!2823027))

(declare-fun res!1886849 () Bool)

(assert (=> d!1398371 (=> (not res!1886849) (not e!2823027))))

(assert (=> d!1398371 (= res!1886849 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1704999))) lambda!174356))))

(assert (=> d!1398371 (= lt!1706098 e!2823026)))

(assert (=> d!1398371 (= c!773593 ((_ is Nil!50696) (_2!28868 (h!56564 (toList!4363 lt!1704999)))))))

(assert (=> d!1398371 (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1704999))))))

(assert (=> d!1398371 (= (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lt!1704999))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) lt!1706098)))

(declare-fun bm!315798 () Bool)

(assert (=> bm!315798 (= call!315801 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (ite c!773593 lambda!174352 lambda!174354)))))

(assert (=> b!4530649 (= e!2823026 lt!1706086)))

(declare-fun lt!1706094 () ListMap!3625)

(assert (=> b!4530649 (= lt!1706094 (+!1572 (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999))))))))

(assert (=> b!4530649 (= lt!1706086 (addToMapMapFromBucket!705 (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1704999)))) (+!1572 (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999)))))))))

(declare-fun lt!1706093 () Unit!96566)

(assert (=> b!4530649 (= lt!1706093 call!315803)))

(assert (=> b!4530649 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) lambda!174353)))

(declare-fun lt!1706097 () Unit!96566)

(assert (=> b!4530649 (= lt!1706097 lt!1706093)))

(assert (=> b!4530649 (forall!10305 (toList!4364 lt!1706094) lambda!174354)))

(declare-fun lt!1706090 () Unit!96566)

(declare-fun Unit!96844 () Unit!96566)

(assert (=> b!4530649 (= lt!1706090 Unit!96844)))

(assert (=> b!4530649 call!315802))

(declare-fun lt!1706095 () Unit!96566)

(declare-fun Unit!96845 () Unit!96566)

(assert (=> b!4530649 (= lt!1706095 Unit!96845)))

(declare-fun lt!1706083 () Unit!96566)

(declare-fun Unit!96846 () Unit!96566)

(assert (=> b!4530649 (= lt!1706083 Unit!96846)))

(declare-fun lt!1706084 () Unit!96566)

(assert (=> b!4530649 (= lt!1706084 (forallContained!2559 (toList!4364 lt!1706094) lambda!174354 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999))))))))

(assert (=> b!4530649 (contains!13455 lt!1706094 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999))))))))

(declare-fun lt!1706085 () Unit!96566)

(declare-fun Unit!96847 () Unit!96566)

(assert (=> b!4530649 (= lt!1706085 Unit!96847)))

(assert (=> b!4530649 (contains!13455 lt!1706086 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999))))))))

(declare-fun lt!1706088 () Unit!96566)

(declare-fun Unit!96848 () Unit!96566)

(assert (=> b!4530649 (= lt!1706088 Unit!96848)))

(assert (=> b!4530649 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1704999))) lambda!174354)))

(declare-fun lt!1706091 () Unit!96566)

(declare-fun Unit!96849 () Unit!96566)

(assert (=> b!4530649 (= lt!1706091 Unit!96849)))

(assert (=> b!4530649 (forall!10305 (toList!4364 lt!1706094) lambda!174354)))

(declare-fun lt!1706092 () Unit!96566)

(declare-fun Unit!96850 () Unit!96566)

(assert (=> b!4530649 (= lt!1706092 Unit!96850)))

(declare-fun lt!1706087 () Unit!96566)

(declare-fun Unit!96851 () Unit!96566)

(assert (=> b!4530649 (= lt!1706087 Unit!96851)))

(declare-fun lt!1706081 () Unit!96566)

(assert (=> b!4530649 (= lt!1706081 (addForallContainsKeyThenBeforeAdding!352 (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1706086 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999))))) (_2!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1704999)))))))))

(assert (=> b!4530649 call!315801))

(declare-fun lt!1706099 () Unit!96566)

(assert (=> b!4530649 (= lt!1706099 lt!1706081)))

(assert (=> b!4530649 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) lambda!174354)))

(declare-fun lt!1706096 () Unit!96566)

(declare-fun Unit!96852 () Unit!96566)

(assert (=> b!4530649 (= lt!1706096 Unit!96852)))

(declare-fun res!1886847 () Bool)

(assert (=> b!4530649 (= res!1886847 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1704999))) lambda!174354))))

(assert (=> b!4530649 (=> (not res!1886847) (not e!2823025))))

(assert (=> b!4530649 e!2823025))

(declare-fun lt!1706101 () Unit!96566)

(declare-fun Unit!96853 () Unit!96566)

(assert (=> b!4530649 (= lt!1706101 Unit!96853)))

(assert (= (and d!1398371 c!773593) b!4530646))

(assert (= (and d!1398371 (not c!773593)) b!4530649))

(assert (= (and b!4530649 res!1886847) b!4530645))

(assert (= (or b!4530646 b!4530649) bm!315798))

(assert (= (or b!4530646 b!4530649) bm!315796))

(assert (= (or b!4530646 b!4530649) bm!315797))

(assert (= (and d!1398371 res!1886849) b!4530647))

(assert (= (and b!4530647 res!1886848) b!4530648))

(declare-fun m!5287807 () Bool)

(assert (=> d!1398371 m!5287807))

(declare-fun m!5287809 () Bool)

(assert (=> d!1398371 m!5287809))

(declare-fun m!5287811 () Bool)

(assert (=> b!4530649 m!5287811))

(assert (=> b!4530649 m!5287811))

(declare-fun m!5287813 () Bool)

(assert (=> b!4530649 m!5287813))

(declare-fun m!5287815 () Bool)

(assert (=> b!4530649 m!5287815))

(assert (=> b!4530649 m!5285937))

(declare-fun m!5287817 () Bool)

(assert (=> b!4530649 m!5287817))

(declare-fun m!5287819 () Bool)

(assert (=> b!4530649 m!5287819))

(declare-fun m!5287821 () Bool)

(assert (=> b!4530649 m!5287821))

(declare-fun m!5287823 () Bool)

(assert (=> b!4530649 m!5287823))

(declare-fun m!5287825 () Bool)

(assert (=> b!4530649 m!5287825))

(declare-fun m!5287827 () Bool)

(assert (=> b!4530649 m!5287827))

(declare-fun m!5287829 () Bool)

(assert (=> b!4530649 m!5287829))

(assert (=> b!4530649 m!5285937))

(assert (=> b!4530649 m!5287823))

(assert (=> b!4530649 m!5287813))

(assert (=> b!4530645 m!5287815))

(declare-fun m!5287831 () Bool)

(assert (=> bm!315796 m!5287831))

(declare-fun m!5287833 () Bool)

(assert (=> b!4530647 m!5287833))

(assert (=> bm!315797 m!5285937))

(declare-fun m!5287835 () Bool)

(assert (=> bm!315797 m!5287835))

(declare-fun m!5287837 () Bool)

(assert (=> b!4530648 m!5287837))

(declare-fun m!5287839 () Bool)

(assert (=> bm!315798 m!5287839))

(assert (=> b!4529668 d!1398371))

(declare-fun bs!866124 () Bool)

(declare-fun d!1398383 () Bool)

(assert (= bs!866124 (and d!1398383 d!1397661)))

(declare-fun lambda!174359 () Int)

(assert (=> bs!866124 (= lambda!174359 lambda!174187)))

(declare-fun bs!866125 () Bool)

(assert (= bs!866125 (and d!1398383 d!1397797)))

(assert (=> bs!866125 (= lambda!174359 lambda!174227)))

(declare-fun bs!866126 () Bool)

(assert (= bs!866126 (and d!1398383 d!1397711)))

(assert (=> bs!866126 (= lambda!174359 lambda!174203)))

(declare-fun bs!866127 () Bool)

(assert (= bs!866127 (and d!1398383 d!1397727)))

(assert (=> bs!866127 (= lambda!174359 lambda!174209)))

(declare-fun bs!866128 () Bool)

(assert (= bs!866128 (and d!1398383 d!1397665)))

(assert (=> bs!866128 (= lambda!174359 lambda!174190)))

(declare-fun bs!866129 () Bool)

(assert (= bs!866129 (and d!1398383 d!1397751)))

(assert (=> bs!866129 (not (= lambda!174359 lambda!174212))))

(declare-fun bs!866130 () Bool)

(assert (= bs!866130 (and d!1398383 d!1397607)))

(assert (=> bs!866130 (= lambda!174359 lambda!174177)))

(declare-fun bs!866131 () Bool)

(assert (= bs!866131 (and d!1398383 d!1397767)))

(assert (=> bs!866131 (= lambda!174359 lambda!174216)))

(declare-fun bs!866132 () Bool)

(assert (= bs!866132 (and d!1398383 d!1398269)))

(assert (=> bs!866132 (= lambda!174359 lambda!174318)))

(declare-fun bs!866133 () Bool)

(assert (= bs!866133 (and d!1398383 d!1397705)))

(assert (=> bs!866133 (= lambda!174359 lambda!174197)))

(declare-fun bs!866134 () Bool)

(assert (= bs!866134 (and d!1398383 d!1397669)))

(assert (=> bs!866134 (= lambda!174359 lambda!174191)))

(declare-fun bs!866135 () Bool)

(assert (= bs!866135 (and d!1398383 b!4529273)))

(assert (=> bs!866135 (not (= lambda!174359 lambda!174088))))

(declare-fun bs!866136 () Bool)

(assert (= bs!866136 (and d!1398383 d!1397769)))

(assert (=> bs!866136 (= lambda!174359 lambda!174217)))

(declare-fun bs!866137 () Bool)

(assert (= bs!866137 (and d!1398383 d!1397765)))

(assert (=> bs!866137 (= lambda!174359 lambda!174213)))

(declare-fun bs!866138 () Bool)

(assert (= bs!866138 (and d!1398383 start!449036)))

(assert (=> bs!866138 (= lambda!174359 lambda!174087)))

(declare-fun bs!866139 () Bool)

(assert (= bs!866139 (and d!1398383 d!1397823)))

(assert (=> bs!866139 (= lambda!174359 lambda!174235)))

(declare-fun bs!866140 () Bool)

(assert (= bs!866140 (and d!1398383 d!1397939)))

(assert (=> bs!866140 (= lambda!174359 lambda!174266)))

(declare-fun lt!1706123 () ListMap!3625)

(assert (=> d!1398383 (invariantList!1031 (toList!4364 lt!1706123))))

(declare-fun e!2823033 () ListMap!3625)

(assert (=> d!1398383 (= lt!1706123 e!2823033)))

(declare-fun c!773595 () Bool)

(assert (=> d!1398383 (= c!773595 ((_ is Cons!50697) (t!357783 (toList!4363 lt!1704999))))))

(assert (=> d!1398383 (forall!10303 (t!357783 (toList!4363 lt!1704999)) lambda!174359)))

(assert (=> d!1398383 (= (extractMap!1234 (t!357783 (toList!4363 lt!1704999))) lt!1706123)))

(declare-fun b!4530657 () Bool)

(assert (=> b!4530657 (= e!2823033 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (toList!4363 lt!1704999)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lt!1704999))))))))

(declare-fun b!4530658 () Bool)

(assert (=> b!4530658 (= e!2823033 (ListMap!3626 Nil!50696))))

(assert (= (and d!1398383 c!773595) b!4530657))

(assert (= (and d!1398383 (not c!773595)) b!4530658))

(declare-fun m!5287841 () Bool)

(assert (=> d!1398383 m!5287841))

(declare-fun m!5287843 () Bool)

(assert (=> d!1398383 m!5287843))

(declare-fun m!5287845 () Bool)

(assert (=> b!4530657 m!5287845))

(assert (=> b!4530657 m!5287845))

(declare-fun m!5287847 () Bool)

(assert (=> b!4530657 m!5287847))

(assert (=> b!4529668 d!1398383))

(assert (=> d!1397785 d!1398113))

(declare-fun d!1398385 () Bool)

(declare-fun c!773596 () Bool)

(assert (=> d!1398385 (= c!773596 ((_ is Nil!50696) (toList!4364 lt!1705006)))))

(declare-fun e!2823034 () (InoxSet tuple2!51146))

(assert (=> d!1398385 (= (content!8398 (toList!4364 lt!1705006)) e!2823034)))

(declare-fun b!4530659 () Bool)

(assert (=> b!4530659 (= e!2823034 ((as const (Array tuple2!51146 Bool)) false))))

(declare-fun b!4530660 () Bool)

(assert (=> b!4530660 (= e!2823034 ((_ map or) (store ((as const (Array tuple2!51146 Bool)) false) (h!56563 (toList!4364 lt!1705006)) true) (content!8398 (t!357782 (toList!4364 lt!1705006)))))))

(assert (= (and d!1398385 c!773596) b!4530659))

(assert (= (and d!1398385 (not c!773596)) b!4530660))

(declare-fun m!5287849 () Bool)

(assert (=> b!4530660 m!5287849))

(declare-fun m!5287851 () Bool)

(assert (=> b!4530660 m!5287851))

(assert (=> d!1397785 d!1398385))

(declare-fun d!1398387 () Bool)

(declare-fun e!2823036 () Bool)

(assert (=> d!1398387 e!2823036))

(declare-fun res!1886855 () Bool)

(assert (=> d!1398387 (=> res!1886855 e!2823036)))

(declare-fun lt!1706125 () Bool)

(assert (=> d!1398387 (= res!1886855 (not lt!1706125))))

(declare-fun lt!1706126 () Bool)

(assert (=> d!1398387 (= lt!1706125 lt!1706126)))

(declare-fun lt!1706124 () Unit!96566)

(declare-fun e!2823035 () Unit!96566)

(assert (=> d!1398387 (= lt!1706124 e!2823035)))

(declare-fun c!773597 () Bool)

(assert (=> d!1398387 (= c!773597 lt!1706126)))

(assert (=> d!1398387 (= lt!1706126 (containsKey!1830 (toList!4363 lt!1705446) (_1!28868 lt!1705015)))))

(assert (=> d!1398387 (= (contains!13453 lt!1705446 (_1!28868 lt!1705015)) lt!1706125)))

(declare-fun b!4530661 () Bool)

(declare-fun lt!1706127 () Unit!96566)

(assert (=> b!4530661 (= e!2823035 lt!1706127)))

(assert (=> b!4530661 (= lt!1706127 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lt!1705446) (_1!28868 lt!1705015)))))

(assert (=> b!4530661 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705446) (_1!28868 lt!1705015)))))

(declare-fun b!4530662 () Bool)

(declare-fun Unit!96859 () Unit!96566)

(assert (=> b!4530662 (= e!2823035 Unit!96859)))

(declare-fun b!4530663 () Bool)

(assert (=> b!4530663 (= e!2823036 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705446) (_1!28868 lt!1705015))))))

(assert (= (and d!1398387 c!773597) b!4530661))

(assert (= (and d!1398387 (not c!773597)) b!4530662))

(assert (= (and d!1398387 (not res!1886855)) b!4530663))

(declare-fun m!5287853 () Bool)

(assert (=> d!1398387 m!5287853))

(declare-fun m!5287855 () Bool)

(assert (=> b!4530661 m!5287855))

(assert (=> b!4530661 m!5285969))

(assert (=> b!4530661 m!5285969))

(declare-fun m!5287857 () Bool)

(assert (=> b!4530661 m!5287857))

(assert (=> b!4530663 m!5285969))

(assert (=> b!4530663 m!5285969))

(assert (=> b!4530663 m!5287857))

(assert (=> d!1397771 d!1398387))

(declare-fun b!4530665 () Bool)

(declare-fun e!2823037 () Option!11157)

(declare-fun e!2823038 () Option!11157)

(assert (=> b!4530665 (= e!2823037 e!2823038)))

(declare-fun c!773599 () Bool)

(assert (=> b!4530665 (= c!773599 (and ((_ is Cons!50697) lt!1705448) (not (= (_1!28868 (h!56564 lt!1705448)) (_1!28868 lt!1705015)))))))

(declare-fun b!4530666 () Bool)

(assert (=> b!4530666 (= e!2823038 (getValueByKey!1121 (t!357783 lt!1705448) (_1!28868 lt!1705015)))))

(declare-fun b!4530664 () Bool)

(assert (=> b!4530664 (= e!2823037 (Some!11156 (_2!28868 (h!56564 lt!1705448))))))

(declare-fun d!1398389 () Bool)

(declare-fun c!773598 () Bool)

(assert (=> d!1398389 (= c!773598 (and ((_ is Cons!50697) lt!1705448) (= (_1!28868 (h!56564 lt!1705448)) (_1!28868 lt!1705015))))))

(assert (=> d!1398389 (= (getValueByKey!1121 lt!1705448 (_1!28868 lt!1705015)) e!2823037)))

(declare-fun b!4530667 () Bool)

(assert (=> b!4530667 (= e!2823038 None!11156)))

(assert (= (and d!1398389 c!773598) b!4530664))

(assert (= (and d!1398389 (not c!773598)) b!4530665))

(assert (= (and b!4530665 c!773599) b!4530666))

(assert (= (and b!4530665 (not c!773599)) b!4530667))

(declare-fun m!5287859 () Bool)

(assert (=> b!4530666 m!5287859))

(assert (=> d!1397771 d!1398389))

(declare-fun d!1398391 () Bool)

(assert (=> d!1398391 (= (getValueByKey!1121 lt!1705448 (_1!28868 lt!1705015)) (Some!11156 (_2!28868 lt!1705015)))))

(declare-fun lt!1706128 () Unit!96566)

(assert (=> d!1398391 (= lt!1706128 (choose!29724 lt!1705448 (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(declare-fun e!2823039 () Bool)

(assert (=> d!1398391 e!2823039))

(declare-fun res!1886856 () Bool)

(assert (=> d!1398391 (=> (not res!1886856) (not e!2823039))))

(assert (=> d!1398391 (= res!1886856 (isStrictlySorted!444 lt!1705448))))

(assert (=> d!1398391 (= (lemmaContainsTupThenGetReturnValue!700 lt!1705448 (_1!28868 lt!1705015) (_2!28868 lt!1705015)) lt!1706128)))

(declare-fun b!4530668 () Bool)

(declare-fun res!1886857 () Bool)

(assert (=> b!4530668 (=> (not res!1886857) (not e!2823039))))

(assert (=> b!4530668 (= res!1886857 (containsKey!1830 lt!1705448 (_1!28868 lt!1705015)))))

(declare-fun b!4530669 () Bool)

(assert (=> b!4530669 (= e!2823039 (contains!13454 lt!1705448 (tuple2!51149 (_1!28868 lt!1705015) (_2!28868 lt!1705015))))))

(assert (= (and d!1398391 res!1886856) b!4530668))

(assert (= (and b!4530668 res!1886857) b!4530669))

(assert (=> d!1398391 m!5285963))

(declare-fun m!5287861 () Bool)

(assert (=> d!1398391 m!5287861))

(declare-fun m!5287863 () Bool)

(assert (=> d!1398391 m!5287863))

(declare-fun m!5287865 () Bool)

(assert (=> b!4530668 m!5287865))

(declare-fun m!5287867 () Bool)

(assert (=> b!4530669 m!5287867))

(assert (=> d!1397771 d!1398391))

(declare-fun b!4530670 () Bool)

(declare-fun e!2823041 () List!50821)

(declare-fun call!315809 () List!50821)

(assert (=> b!4530670 (= e!2823041 call!315809)))

(declare-fun bm!315802 () Bool)

(declare-fun call!315808 () List!50821)

(declare-fun call!315807 () List!50821)

(assert (=> bm!315802 (= call!315808 call!315807)))

(declare-fun e!2823044 () List!50821)

(declare-fun b!4530671 () Bool)

(declare-fun c!773600 () Bool)

(declare-fun c!773603 () Bool)

(assert (=> b!4530671 (= e!2823044 (ite c!773600 (t!357783 (toList!4363 lt!1705004)) (ite c!773603 (Cons!50697 (h!56564 (toList!4363 lt!1705004)) (t!357783 (toList!4363 lt!1705004))) Nil!50697)))))

(declare-fun b!4530672 () Bool)

(declare-fun e!2823043 () Bool)

(declare-fun lt!1706129 () List!50821)

(assert (=> b!4530672 (= e!2823043 (contains!13454 lt!1706129 (tuple2!51149 (_1!28868 lt!1705015) (_2!28868 lt!1705015))))))

(declare-fun b!4530673 () Bool)

(assert (=> b!4530673 (= e!2823041 call!315809)))

(declare-fun b!4530674 () Bool)

(declare-fun res!1886858 () Bool)

(assert (=> b!4530674 (=> (not res!1886858) (not e!2823043))))

(assert (=> b!4530674 (= res!1886858 (containsKey!1830 lt!1706129 (_1!28868 lt!1705015)))))

(declare-fun b!4530675 () Bool)

(assert (=> b!4530675 (= e!2823044 (insertStrictlySorted!422 (t!357783 (toList!4363 lt!1705004)) (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(declare-fun b!4530676 () Bool)

(declare-fun e!2823040 () List!50821)

(assert (=> b!4530676 (= e!2823040 call!315807)))

(declare-fun b!4530677 () Bool)

(assert (=> b!4530677 (= c!773603 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (bvsgt (_1!28868 (h!56564 (toList!4363 lt!1705004))) (_1!28868 lt!1705015))))))

(declare-fun e!2823042 () List!50821)

(assert (=> b!4530677 (= e!2823042 e!2823041)))

(declare-fun bm!315804 () Bool)

(assert (=> bm!315804 (= call!315809 call!315808)))

(declare-fun b!4530678 () Bool)

(assert (=> b!4530678 (= e!2823040 e!2823042)))

(assert (=> b!4530678 (= c!773600 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (= (_1!28868 (h!56564 (toList!4363 lt!1705004))) (_1!28868 lt!1705015))))))

(declare-fun b!4530679 () Bool)

(assert (=> b!4530679 (= e!2823042 call!315808)))

(declare-fun c!773602 () Bool)

(declare-fun bm!315803 () Bool)

(assert (=> bm!315803 (= call!315807 ($colon$colon!952 e!2823044 (ite c!773602 (h!56564 (toList!4363 lt!1705004)) (tuple2!51149 (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))))

(declare-fun c!773601 () Bool)

(assert (=> bm!315803 (= c!773601 c!773602)))

(declare-fun d!1398393 () Bool)

(assert (=> d!1398393 e!2823043))

(declare-fun res!1886859 () Bool)

(assert (=> d!1398393 (=> (not res!1886859) (not e!2823043))))

(assert (=> d!1398393 (= res!1886859 (isStrictlySorted!444 lt!1706129))))

(assert (=> d!1398393 (= lt!1706129 e!2823040)))

(assert (=> d!1398393 (= c!773602 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (bvslt (_1!28868 (h!56564 (toList!4363 lt!1705004))) (_1!28868 lt!1705015))))))

(assert (=> d!1398393 (isStrictlySorted!444 (toList!4363 lt!1705004))))

(assert (=> d!1398393 (= (insertStrictlySorted!422 (toList!4363 lt!1705004) (_1!28868 lt!1705015) (_2!28868 lt!1705015)) lt!1706129)))

(assert (= (and d!1398393 c!773602) b!4530676))

(assert (= (and d!1398393 (not c!773602)) b!4530678))

(assert (= (and b!4530678 c!773600) b!4530679))

(assert (= (and b!4530678 (not c!773600)) b!4530677))

(assert (= (and b!4530677 c!773603) b!4530673))

(assert (= (and b!4530677 (not c!773603)) b!4530670))

(assert (= (or b!4530673 b!4530670) bm!315804))

(assert (= (or b!4530679 bm!315804) bm!315802))

(assert (= (or b!4530676 bm!315802) bm!315803))

(assert (= (and bm!315803 c!773601) b!4530675))

(assert (= (and bm!315803 (not c!773601)) b!4530671))

(assert (= (and d!1398393 res!1886859) b!4530674))

(assert (= (and b!4530674 res!1886858) b!4530672))

(declare-fun m!5287869 () Bool)

(assert (=> bm!315803 m!5287869))

(declare-fun m!5287871 () Bool)

(assert (=> b!4530674 m!5287871))

(declare-fun m!5287873 () Bool)

(assert (=> b!4530675 m!5287873))

(declare-fun m!5287875 () Bool)

(assert (=> d!1398393 m!5287875))

(assert (=> d!1398393 m!5286627))

(declare-fun m!5287877 () Bool)

(assert (=> b!4530672 m!5287877))

(assert (=> d!1397771 d!1398393))

(declare-fun bs!866169 () Bool)

(declare-fun b!4530681 () Bool)

(assert (= bs!866169 (and b!4530681 d!1397915)))

(declare-fun lambda!174361 () Int)

(assert (=> bs!866169 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705606) (= lambda!174361 lambda!174257))))

(declare-fun bs!866171 () Bool)

(assert (= bs!866171 (and b!4530681 b!4529972)))

(assert (=> bs!866171 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174361 lambda!174260))))

(declare-fun bs!866172 () Bool)

(assert (= bs!866172 (and b!4530681 b!4529691)))

(assert (=> bs!866172 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705467) (= lambda!174361 lambda!174223))))

(declare-fun bs!866173 () Bool)

(assert (= bs!866173 (and b!4530681 d!1397935)))

(assert (=> bs!866173 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705636) (= lambda!174361 lambda!174264))))

(declare-fun bs!866174 () Bool)

(assert (= bs!866174 (and b!4530681 d!1397821)))

(assert (=> bs!866174 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705529) (= lambda!174361 lambda!174234))))

(declare-fun bs!866176 () Bool)

(assert (= bs!866176 (and b!4530681 b!4529387)))

(assert (=> bs!866176 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705212) (= lambda!174361 lambda!174167))))

(declare-fun bs!866178 () Bool)

(assert (= bs!866178 (and b!4530681 b!4529273)))

(assert (=> bs!866178 (not (= lambda!174361 lambda!174089))))

(declare-fun bs!866180 () Bool)

(assert (= bs!866180 (and b!4530681 b!4529688)))

(assert (=> bs!866180 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705028) (= lambda!174361 lambda!174221))))

(declare-fun bs!866181 () Bool)

(assert (= bs!866181 (and b!4530681 b!4529936)))

(assert (=> bs!866181 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705594) (= lambda!174361 lambda!174256))))

(declare-fun bs!866183 () Bool)

(assert (= bs!866183 (and b!4530681 b!4530610)))

(assert (=> bs!866183 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174361 lambda!174345))))

(declare-fun bs!866184 () Bool)

(assert (= bs!866184 (and b!4530681 d!1397787)))

(assert (=> bs!866184 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705479) (= lambda!174361 lambda!174224))))

(declare-fun bs!866185 () Bool)

(assert (= bs!866185 (and b!4530681 b!4530552)))

(assert (=> bs!866185 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174361 lambda!174333))))

(declare-fun bs!866186 () Bool)

(assert (= bs!866186 (and b!4530681 b!4530646)))

(assert (=> bs!866186 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174361 lambda!174352))))

(declare-fun bs!866187 () Bool)

(assert (= bs!866187 (and b!4530681 b!4530613)))

(assert (=> bs!866187 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174361 lambda!174346))))

(assert (=> bs!866176 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705027) (= lambda!174361 lambda!174166))))

(declare-fun bs!866188 () Bool)

(assert (= bs!866188 (and b!4530681 b!4530649)))

(assert (=> bs!866188 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706086) (= lambda!174361 lambda!174354))))

(declare-fun bs!866189 () Bool)

(assert (= bs!866189 (and b!4530681 d!1398347)))

(assert (=> bs!866189 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706052) (= lambda!174361 lambda!174348))))

(assert (=> bs!866185 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705953) (= lambda!174361 lambda!174334))))

(assert (=> bs!866187 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706040) (= lambda!174361 lambda!174347))))

(declare-fun bs!866190 () Bool)

(assert (= bs!866190 (and b!4530681 d!1398371)))

(assert (=> bs!866190 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706098) (= lambda!174361 lambda!174356))))

(declare-fun bs!866191 () Bool)

(assert (= bs!866191 (and b!4530681 b!4529431)))

(assert (=> bs!866191 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705001) (= lambda!174361 lambda!174178))))

(declare-fun bs!866192 () Bool)

(assert (= bs!866192 (and b!4530681 d!1398281)))

(assert (=> bs!866192 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705212) (= lambda!174361 lambda!174327))))

(declare-fun bs!866193 () Bool)

(assert (= bs!866193 (and b!4530681 b!4529733)))

(assert (=> bs!866193 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705517) (= lambda!174361 lambda!174233))))

(declare-fun bs!866194 () Bool)

(assert (= bs!866194 (and b!4530681 d!1398315)))

(assert (=> bs!866194 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705965) (= lambda!174361 lambda!174335))))

(assert (=> bs!866193 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174361 lambda!174232))))

(assert (=> bs!866181 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (-!404 lt!1705001 key!3287)) (= lambda!174361 lambda!174255))))

(declare-fun bs!866195 () Bool)

(assert (= bs!866195 (and b!4530681 b!4529933)))

(assert (=> bs!866195 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (-!404 lt!1705001 key!3287)) (= lambda!174361 lambda!174254))))

(declare-fun bs!866196 () Bool)

(assert (= bs!866196 (and b!4530681 b!4529434)))

(assert (=> bs!866196 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705266) (= lambda!174361 lambda!174180))))

(declare-fun bs!866197 () Bool)

(assert (= bs!866197 (and b!4530681 d!1398049)))

(assert (=> bs!866197 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705027) (= lambda!174361 lambda!174280))))

(assert (=> bs!866172 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705028) (= lambda!174361 lambda!174222))))

(assert (=> bs!866188 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174361 lambda!174353))))

(declare-fun bs!866198 () Bool)

(assert (= bs!866198 (and b!4530681 d!1398099)))

(assert (=> bs!866198 (not (= lambda!174361 lambda!174291))))

(declare-fun bs!866199 () Bool)

(assert (= bs!866199 (and b!4530681 d!1397779)))

(assert (=> bs!866199 (not (= lambda!174361 lambda!174220))))

(declare-fun bs!866200 () Bool)

(assert (= bs!866200 (and b!4530681 b!4529969)))

(assert (=> bs!866200 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174361 lambda!174258))))

(declare-fun bs!866201 () Bool)

(assert (= bs!866201 (and b!4530681 b!4529384)))

(assert (=> bs!866201 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705027) (= lambda!174361 lambda!174165))))

(declare-fun bs!866202 () Bool)

(assert (= bs!866202 (and b!4530681 b!4530549)))

(assert (=> bs!866202 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174361 lambda!174329))))

(declare-fun bs!866203 () Bool)

(assert (= bs!866203 (and b!4530681 b!4529730)))

(assert (=> bs!866203 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174361 lambda!174231))))

(declare-fun bs!866204 () Bool)

(assert (= bs!866204 (and b!4530681 d!1397569)))

(assert (=> bs!866204 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705224) (= lambda!174361 lambda!174168))))

(declare-fun bs!866205 () Bool)

(assert (= bs!866205 (and b!4530681 d!1398357)))

(assert (=> bs!866205 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705467) (= lambda!174361 lambda!174349))))

(declare-fun bs!866206 () Bool)

(assert (= bs!866206 (and b!4530681 d!1397819)))

(assert (=> bs!866206 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705001) (= lambda!174361 lambda!174230))))

(assert (=> bs!866171 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705624) (= lambda!174361 lambda!174261))))

(assert (=> bs!866196 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705001) (= lambda!174361 lambda!174179))))

(declare-fun bs!866207 () Bool)

(assert (= bs!866207 (and b!4530681 d!1398075)))

(assert (=> bs!866207 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705028) (= lambda!174361 lambda!174289))))

(declare-fun bs!866208 () Bool)

(assert (= bs!866208 (and b!4530681 d!1397629)))

(assert (=> bs!866208 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705278) (= lambda!174361 lambda!174181))))

(assert (=> b!4530681 true))

(declare-fun bs!866213 () Bool)

(declare-fun b!4530684 () Bool)

(assert (= bs!866213 (and b!4530684 d!1397915)))

(declare-fun lambda!174363 () Int)

(assert (=> bs!866213 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705606) (= lambda!174363 lambda!174257))))

(declare-fun bs!866216 () Bool)

(assert (= bs!866216 (and b!4530684 b!4529972)))

(assert (=> bs!866216 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174363 lambda!174260))))

(declare-fun bs!866217 () Bool)

(assert (= bs!866217 (and b!4530684 b!4529691)))

(assert (=> bs!866217 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705467) (= lambda!174363 lambda!174223))))

(declare-fun bs!866219 () Bool)

(assert (= bs!866219 (and b!4530684 d!1397935)))

(assert (=> bs!866219 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705636) (= lambda!174363 lambda!174264))))

(declare-fun bs!866221 () Bool)

(assert (= bs!866221 (and b!4530684 d!1397821)))

(assert (=> bs!866221 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705529) (= lambda!174363 lambda!174234))))

(declare-fun bs!866223 () Bool)

(assert (= bs!866223 (and b!4530684 b!4529387)))

(assert (=> bs!866223 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705212) (= lambda!174363 lambda!174167))))

(declare-fun bs!866225 () Bool)

(assert (= bs!866225 (and b!4530684 b!4529273)))

(assert (=> bs!866225 (not (= lambda!174363 lambda!174089))))

(declare-fun bs!866227 () Bool)

(assert (= bs!866227 (and b!4530684 b!4529936)))

(assert (=> bs!866227 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705594) (= lambda!174363 lambda!174256))))

(declare-fun bs!866229 () Bool)

(assert (= bs!866229 (and b!4530684 b!4530610)))

(assert (=> bs!866229 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174363 lambda!174345))))

(declare-fun bs!866231 () Bool)

(assert (= bs!866231 (and b!4530684 d!1397787)))

(assert (=> bs!866231 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705479) (= lambda!174363 lambda!174224))))

(declare-fun bs!866233 () Bool)

(assert (= bs!866233 (and b!4530684 b!4530552)))

(assert (=> bs!866233 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174363 lambda!174333))))

(declare-fun bs!866234 () Bool)

(assert (= bs!866234 (and b!4530684 b!4530646)))

(assert (=> bs!866234 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174363 lambda!174352))))

(declare-fun bs!866236 () Bool)

(assert (= bs!866236 (and b!4530684 b!4530613)))

(assert (=> bs!866236 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174363 lambda!174346))))

(assert (=> bs!866223 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705027) (= lambda!174363 lambda!174166))))

(declare-fun bs!866238 () Bool)

(assert (= bs!866238 (and b!4530684 b!4530649)))

(assert (=> bs!866238 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706086) (= lambda!174363 lambda!174354))))

(declare-fun bs!866239 () Bool)

(assert (= bs!866239 (and b!4530684 d!1398347)))

(assert (=> bs!866239 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706052) (= lambda!174363 lambda!174348))))

(assert (=> bs!866233 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705953) (= lambda!174363 lambda!174334))))

(assert (=> bs!866236 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706040) (= lambda!174363 lambda!174347))))

(declare-fun bs!866240 () Bool)

(assert (= bs!866240 (and b!4530684 d!1398371)))

(assert (=> bs!866240 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706098) (= lambda!174363 lambda!174356))))

(declare-fun bs!866241 () Bool)

(assert (= bs!866241 (and b!4530684 b!4529431)))

(assert (=> bs!866241 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705001) (= lambda!174363 lambda!174178))))

(declare-fun bs!866242 () Bool)

(assert (= bs!866242 (and b!4530684 d!1398281)))

(assert (=> bs!866242 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705212) (= lambda!174363 lambda!174327))))

(declare-fun bs!866243 () Bool)

(assert (= bs!866243 (and b!4530684 b!4529733)))

(assert (=> bs!866243 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705517) (= lambda!174363 lambda!174233))))

(declare-fun bs!866244 () Bool)

(assert (= bs!866244 (and b!4530684 d!1398315)))

(assert (=> bs!866244 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705965) (= lambda!174363 lambda!174335))))

(assert (=> bs!866243 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174363 lambda!174232))))

(assert (=> bs!866227 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (-!404 lt!1705001 key!3287)) (= lambda!174363 lambda!174255))))

(declare-fun bs!866245 () Bool)

(assert (= bs!866245 (and b!4530684 b!4529933)))

(assert (=> bs!866245 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (-!404 lt!1705001 key!3287)) (= lambda!174363 lambda!174254))))

(declare-fun bs!866247 () Bool)

(assert (= bs!866247 (and b!4530684 b!4529434)))

(assert (=> bs!866247 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705266) (= lambda!174363 lambda!174180))))

(declare-fun bs!866248 () Bool)

(assert (= bs!866248 (and b!4530684 d!1398049)))

(assert (=> bs!866248 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705027) (= lambda!174363 lambda!174280))))

(assert (=> bs!866217 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705028) (= lambda!174363 lambda!174222))))

(assert (=> bs!866238 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174363 lambda!174353))))

(declare-fun bs!866249 () Bool)

(assert (= bs!866249 (and b!4530684 d!1398099)))

(assert (=> bs!866249 (not (= lambda!174363 lambda!174291))))

(declare-fun bs!866250 () Bool)

(assert (= bs!866250 (and b!4530684 d!1397779)))

(assert (=> bs!866250 (not (= lambda!174363 lambda!174220))))

(declare-fun bs!866251 () Bool)

(assert (= bs!866251 (and b!4530684 b!4529969)))

(assert (=> bs!866251 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174363 lambda!174258))))

(declare-fun bs!866252 () Bool)

(assert (= bs!866252 (and b!4530684 b!4529384)))

(assert (=> bs!866252 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705027) (= lambda!174363 lambda!174165))))

(declare-fun bs!866253 () Bool)

(assert (= bs!866253 (and b!4530684 b!4530549)))

(assert (=> bs!866253 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174363 lambda!174329))))

(declare-fun bs!866254 () Bool)

(assert (= bs!866254 (and b!4530684 b!4529730)))

(assert (=> bs!866254 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174363 lambda!174231))))

(declare-fun bs!866255 () Bool)

(assert (= bs!866255 (and b!4530684 d!1397569)))

(assert (=> bs!866255 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705224) (= lambda!174363 lambda!174168))))

(declare-fun bs!866256 () Bool)

(assert (= bs!866256 (and b!4530684 d!1398357)))

(assert (=> bs!866256 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705467) (= lambda!174363 lambda!174349))))

(declare-fun bs!866257 () Bool)

(assert (= bs!866257 (and b!4530684 d!1397819)))

(assert (=> bs!866257 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705001) (= lambda!174363 lambda!174230))))

(assert (=> bs!866216 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705624) (= lambda!174363 lambda!174261))))

(assert (=> bs!866247 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705001) (= lambda!174363 lambda!174179))))

(declare-fun bs!866258 () Bool)

(assert (= bs!866258 (and b!4530684 d!1398075)))

(assert (=> bs!866258 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705028) (= lambda!174363 lambda!174289))))

(declare-fun bs!866259 () Bool)

(assert (= bs!866259 (and b!4530684 d!1397629)))

(assert (=> bs!866259 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705278) (= lambda!174363 lambda!174181))))

(declare-fun bs!866260 () Bool)

(assert (= bs!866260 (and b!4530684 b!4530681)))

(assert (=> bs!866260 (= lambda!174363 lambda!174361)))

(declare-fun bs!866261 () Bool)

(assert (= bs!866261 (and b!4530684 b!4529688)))

(assert (=> bs!866261 (= (= (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1705028) (= lambda!174363 lambda!174221))))

(assert (=> b!4530684 true))

(declare-fun lt!1706135 () ListMap!3625)

(declare-fun lambda!174364 () Int)

(assert (=> bs!866213 (= (= lt!1706135 lt!1705606) (= lambda!174364 lambda!174257))))

(assert (=> bs!866216 (= (= lt!1706135 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174364 lambda!174260))))

(assert (=> bs!866217 (= (= lt!1706135 lt!1705467) (= lambda!174364 lambda!174223))))

(assert (=> bs!866219 (= (= lt!1706135 lt!1705636) (= lambda!174364 lambda!174264))))

(assert (=> bs!866221 (= (= lt!1706135 lt!1705529) (= lambda!174364 lambda!174234))))

(assert (=> bs!866223 (= (= lt!1706135 lt!1705212) (= lambda!174364 lambda!174167))))

(assert (=> bs!866225 (not (= lambda!174364 lambda!174089))))

(assert (=> bs!866227 (= (= lt!1706135 lt!1705594) (= lambda!174364 lambda!174256))))

(assert (=> bs!866229 (= (= lt!1706135 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174364 lambda!174345))))

(assert (=> bs!866231 (= (= lt!1706135 lt!1705479) (= lambda!174364 lambda!174224))))

(assert (=> bs!866233 (= (= lt!1706135 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174364 lambda!174333))))

(assert (=> bs!866234 (= (= lt!1706135 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174364 lambda!174352))))

(assert (=> bs!866236 (= (= lt!1706135 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174364 lambda!174346))))

(assert (=> bs!866223 (= (= lt!1706135 lt!1705027) (= lambda!174364 lambda!174166))))

(assert (=> bs!866238 (= (= lt!1706135 lt!1706086) (= lambda!174364 lambda!174354))))

(assert (=> bs!866239 (= (= lt!1706135 lt!1706052) (= lambda!174364 lambda!174348))))

(assert (=> bs!866233 (= (= lt!1706135 lt!1705953) (= lambda!174364 lambda!174334))))

(assert (=> bs!866236 (= (= lt!1706135 lt!1706040) (= lambda!174364 lambda!174347))))

(assert (=> bs!866240 (= (= lt!1706135 lt!1706098) (= lambda!174364 lambda!174356))))

(assert (=> bs!866241 (= (= lt!1706135 lt!1705001) (= lambda!174364 lambda!174178))))

(assert (=> bs!866242 (= (= lt!1706135 lt!1705212) (= lambda!174364 lambda!174327))))

(assert (=> bs!866243 (= (= lt!1706135 lt!1705517) (= lambda!174364 lambda!174233))))

(assert (=> bs!866244 (= (= lt!1706135 lt!1705965) (= lambda!174364 lambda!174335))))

(assert (=> bs!866243 (= (= lt!1706135 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174364 lambda!174232))))

(assert (=> bs!866227 (= (= lt!1706135 (-!404 lt!1705001 key!3287)) (= lambda!174364 lambda!174255))))

(assert (=> bs!866245 (= (= lt!1706135 (-!404 lt!1705001 key!3287)) (= lambda!174364 lambda!174254))))

(assert (=> bs!866247 (= (= lt!1706135 lt!1705266) (= lambda!174364 lambda!174180))))

(assert (=> bs!866248 (= (= lt!1706135 lt!1705027) (= lambda!174364 lambda!174280))))

(assert (=> bs!866217 (= (= lt!1706135 lt!1705028) (= lambda!174364 lambda!174222))))

(assert (=> bs!866238 (= (= lt!1706135 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174364 lambda!174353))))

(assert (=> bs!866249 (not (= lambda!174364 lambda!174291))))

(assert (=> bs!866250 (not (= lambda!174364 lambda!174220))))

(assert (=> bs!866251 (= (= lt!1706135 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174364 lambda!174258))))

(assert (=> bs!866252 (= (= lt!1706135 lt!1705027) (= lambda!174364 lambda!174165))))

(assert (=> bs!866253 (= (= lt!1706135 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174364 lambda!174329))))

(assert (=> bs!866254 (= (= lt!1706135 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174364 lambda!174231))))

(assert (=> bs!866255 (= (= lt!1706135 lt!1705224) (= lambda!174364 lambda!174168))))

(assert (=> b!4530684 (= (= lt!1706135 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174364 lambda!174363))))

(assert (=> bs!866256 (= (= lt!1706135 lt!1705467) (= lambda!174364 lambda!174349))))

(assert (=> bs!866257 (= (= lt!1706135 lt!1705001) (= lambda!174364 lambda!174230))))

(assert (=> bs!866216 (= (= lt!1706135 lt!1705624) (= lambda!174364 lambda!174261))))

(assert (=> bs!866247 (= (= lt!1706135 lt!1705001) (= lambda!174364 lambda!174179))))

(assert (=> bs!866258 (= (= lt!1706135 lt!1705028) (= lambda!174364 lambda!174289))))

(assert (=> bs!866259 (= (= lt!1706135 lt!1705278) (= lambda!174364 lambda!174181))))

(assert (=> bs!866260 (= (= lt!1706135 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174364 lambda!174361))))

(assert (=> bs!866261 (= (= lt!1706135 lt!1705028) (= lambda!174364 lambda!174221))))

(assert (=> b!4530684 true))

(declare-fun bs!866277 () Bool)

(declare-fun d!1398395 () Bool)

(assert (= bs!866277 (and d!1398395 d!1397915)))

(declare-fun lambda!174367 () Int)

(declare-fun lt!1706147 () ListMap!3625)

(assert (=> bs!866277 (= (= lt!1706147 lt!1705606) (= lambda!174367 lambda!174257))))

(declare-fun bs!866278 () Bool)

(assert (= bs!866278 (and d!1398395 b!4529972)))

(assert (=> bs!866278 (= (= lt!1706147 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174367 lambda!174260))))

(declare-fun bs!866279 () Bool)

(assert (= bs!866279 (and d!1398395 b!4530684)))

(assert (=> bs!866279 (= (= lt!1706147 lt!1706135) (= lambda!174367 lambda!174364))))

(declare-fun bs!866281 () Bool)

(assert (= bs!866281 (and d!1398395 b!4529691)))

(assert (=> bs!866281 (= (= lt!1706147 lt!1705467) (= lambda!174367 lambda!174223))))

(declare-fun bs!866282 () Bool)

(assert (= bs!866282 (and d!1398395 d!1397935)))

(assert (=> bs!866282 (= (= lt!1706147 lt!1705636) (= lambda!174367 lambda!174264))))

(declare-fun bs!866284 () Bool)

(assert (= bs!866284 (and d!1398395 d!1397821)))

(assert (=> bs!866284 (= (= lt!1706147 lt!1705529) (= lambda!174367 lambda!174234))))

(declare-fun bs!866286 () Bool)

(assert (= bs!866286 (and d!1398395 b!4529387)))

(assert (=> bs!866286 (= (= lt!1706147 lt!1705212) (= lambda!174367 lambda!174167))))

(declare-fun bs!866288 () Bool)

(assert (= bs!866288 (and d!1398395 b!4529273)))

(assert (=> bs!866288 (not (= lambda!174367 lambda!174089))))

(declare-fun bs!866290 () Bool)

(assert (= bs!866290 (and d!1398395 b!4529936)))

(assert (=> bs!866290 (= (= lt!1706147 lt!1705594) (= lambda!174367 lambda!174256))))

(declare-fun bs!866292 () Bool)

(assert (= bs!866292 (and d!1398395 b!4530610)))

(assert (=> bs!866292 (= (= lt!1706147 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174367 lambda!174345))))

(declare-fun bs!866294 () Bool)

(assert (= bs!866294 (and d!1398395 d!1397787)))

(assert (=> bs!866294 (= (= lt!1706147 lt!1705479) (= lambda!174367 lambda!174224))))

(declare-fun bs!866296 () Bool)

(assert (= bs!866296 (and d!1398395 b!4530552)))

(assert (=> bs!866296 (= (= lt!1706147 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174367 lambda!174333))))

(declare-fun bs!866298 () Bool)

(assert (= bs!866298 (and d!1398395 b!4530646)))

(assert (=> bs!866298 (= (= lt!1706147 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174367 lambda!174352))))

(declare-fun bs!866300 () Bool)

(assert (= bs!866300 (and d!1398395 b!4530613)))

(assert (=> bs!866300 (= (= lt!1706147 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174367 lambda!174346))))

(assert (=> bs!866286 (= (= lt!1706147 lt!1705027) (= lambda!174367 lambda!174166))))

(declare-fun bs!866302 () Bool)

(assert (= bs!866302 (and d!1398395 b!4530649)))

(assert (=> bs!866302 (= (= lt!1706147 lt!1706086) (= lambda!174367 lambda!174354))))

(declare-fun bs!866304 () Bool)

(assert (= bs!866304 (and d!1398395 d!1398347)))

(assert (=> bs!866304 (= (= lt!1706147 lt!1706052) (= lambda!174367 lambda!174348))))

(assert (=> bs!866296 (= (= lt!1706147 lt!1705953) (= lambda!174367 lambda!174334))))

(assert (=> bs!866300 (= (= lt!1706147 lt!1706040) (= lambda!174367 lambda!174347))))

(declare-fun bs!866308 () Bool)

(assert (= bs!866308 (and d!1398395 d!1398371)))

(assert (=> bs!866308 (= (= lt!1706147 lt!1706098) (= lambda!174367 lambda!174356))))

(declare-fun bs!866310 () Bool)

(assert (= bs!866310 (and d!1398395 b!4529431)))

(assert (=> bs!866310 (= (= lt!1706147 lt!1705001) (= lambda!174367 lambda!174178))))

(declare-fun bs!866311 () Bool)

(assert (= bs!866311 (and d!1398395 d!1398281)))

(assert (=> bs!866311 (= (= lt!1706147 lt!1705212) (= lambda!174367 lambda!174327))))

(declare-fun bs!866312 () Bool)

(assert (= bs!866312 (and d!1398395 b!4529733)))

(assert (=> bs!866312 (= (= lt!1706147 lt!1705517) (= lambda!174367 lambda!174233))))

(declare-fun bs!866313 () Bool)

(assert (= bs!866313 (and d!1398395 d!1398315)))

(assert (=> bs!866313 (= (= lt!1706147 lt!1705965) (= lambda!174367 lambda!174335))))

(assert (=> bs!866312 (= (= lt!1706147 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174367 lambda!174232))))

(assert (=> bs!866290 (= (= lt!1706147 (-!404 lt!1705001 key!3287)) (= lambda!174367 lambda!174255))))

(declare-fun bs!866314 () Bool)

(assert (= bs!866314 (and d!1398395 b!4529933)))

(assert (=> bs!866314 (= (= lt!1706147 (-!404 lt!1705001 key!3287)) (= lambda!174367 lambda!174254))))

(declare-fun bs!866315 () Bool)

(assert (= bs!866315 (and d!1398395 b!4529434)))

(assert (=> bs!866315 (= (= lt!1706147 lt!1705266) (= lambda!174367 lambda!174180))))

(declare-fun bs!866316 () Bool)

(assert (= bs!866316 (and d!1398395 d!1398049)))

(assert (=> bs!866316 (= (= lt!1706147 lt!1705027) (= lambda!174367 lambda!174280))))

(assert (=> bs!866281 (= (= lt!1706147 lt!1705028) (= lambda!174367 lambda!174222))))

(assert (=> bs!866302 (= (= lt!1706147 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174367 lambda!174353))))

(declare-fun bs!866318 () Bool)

(assert (= bs!866318 (and d!1398395 d!1398099)))

(assert (=> bs!866318 (not (= lambda!174367 lambda!174291))))

(declare-fun bs!866319 () Bool)

(assert (= bs!866319 (and d!1398395 d!1397779)))

(assert (=> bs!866319 (not (= lambda!174367 lambda!174220))))

(declare-fun bs!866320 () Bool)

(assert (= bs!866320 (and d!1398395 b!4529969)))

(assert (=> bs!866320 (= (= lt!1706147 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174367 lambda!174258))))

(declare-fun bs!866321 () Bool)

(assert (= bs!866321 (and d!1398395 b!4529384)))

(assert (=> bs!866321 (= (= lt!1706147 lt!1705027) (= lambda!174367 lambda!174165))))

(declare-fun bs!866323 () Bool)

(assert (= bs!866323 (and d!1398395 b!4530549)))

(assert (=> bs!866323 (= (= lt!1706147 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174367 lambda!174329))))

(declare-fun bs!866324 () Bool)

(assert (= bs!866324 (and d!1398395 b!4529730)))

(assert (=> bs!866324 (= (= lt!1706147 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174367 lambda!174231))))

(declare-fun bs!866325 () Bool)

(assert (= bs!866325 (and d!1398395 d!1397569)))

(assert (=> bs!866325 (= (= lt!1706147 lt!1705224) (= lambda!174367 lambda!174168))))

(assert (=> bs!866279 (= (= lt!1706147 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174367 lambda!174363))))

(declare-fun bs!866327 () Bool)

(assert (= bs!866327 (and d!1398395 d!1398357)))

(assert (=> bs!866327 (= (= lt!1706147 lt!1705467) (= lambda!174367 lambda!174349))))

(declare-fun bs!866328 () Bool)

(assert (= bs!866328 (and d!1398395 d!1397819)))

(assert (=> bs!866328 (= (= lt!1706147 lt!1705001) (= lambda!174367 lambda!174230))))

(assert (=> bs!866278 (= (= lt!1706147 lt!1705624) (= lambda!174367 lambda!174261))))

(assert (=> bs!866315 (= (= lt!1706147 lt!1705001) (= lambda!174367 lambda!174179))))

(declare-fun bs!866329 () Bool)

(assert (= bs!866329 (and d!1398395 d!1398075)))

(assert (=> bs!866329 (= (= lt!1706147 lt!1705028) (= lambda!174367 lambda!174289))))

(declare-fun bs!866330 () Bool)

(assert (= bs!866330 (and d!1398395 d!1397629)))

(assert (=> bs!866330 (= (= lt!1706147 lt!1705278) (= lambda!174367 lambda!174181))))

(declare-fun bs!866331 () Bool)

(assert (= bs!866331 (and d!1398395 b!4530681)))

(assert (=> bs!866331 (= (= lt!1706147 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174367 lambda!174361))))

(declare-fun bs!866332 () Bool)

(assert (= bs!866332 (and d!1398395 b!4529688)))

(assert (=> bs!866332 (= (= lt!1706147 lt!1705028) (= lambda!174367 lambda!174221))))

(assert (=> d!1398395 true))

(declare-fun b!4530680 () Bool)

(declare-fun e!2823045 () Bool)

(assert (=> b!4530680 (= e!2823045 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lambda!174364))))

(declare-fun call!315811 () Bool)

(declare-fun c!773604 () Bool)

(declare-fun bm!315805 () Bool)

(assert (=> bm!315805 (= call!315811 (forall!10305 (ite c!773604 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (t!357782 (_2!28868 (h!56564 (toList!4363 lm!1477))))) (ite c!773604 lambda!174361 lambda!174364)))))

(declare-fun e!2823046 () ListMap!3625)

(assert (=> b!4530681 (= e!2823046 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))

(declare-fun lt!1706138 () Unit!96566)

(declare-fun call!315812 () Unit!96566)

(assert (=> b!4530681 (= lt!1706138 call!315812)))

(declare-fun call!315810 () Bool)

(assert (=> b!4530681 call!315810))

(declare-fun lt!1706149 () Unit!96566)

(assert (=> b!4530681 (= lt!1706149 lt!1706138)))

(assert (=> b!4530681 call!315811))

(declare-fun lt!1706131 () Unit!96566)

(declare-fun Unit!96866 () Unit!96566)

(assert (=> b!4530681 (= lt!1706131 Unit!96866)))

(declare-fun b!4530682 () Bool)

(declare-fun res!1886861 () Bool)

(declare-fun e!2823047 () Bool)

(assert (=> b!4530682 (=> (not res!1886861) (not e!2823047))))

(assert (=> b!4530682 (= res!1886861 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lambda!174367))))

(declare-fun bm!315806 () Bool)

(assert (=> bm!315806 (= call!315812 (lemmaContainsAllItsOwnKeys!352 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun b!4530683 () Bool)

(assert (=> b!4530683 (= e!2823047 (invariantList!1031 (toList!4364 lt!1706147)))))

(assert (=> d!1398395 e!2823047))

(declare-fun res!1886862 () Bool)

(assert (=> d!1398395 (=> (not res!1886862) (not e!2823047))))

(assert (=> d!1398395 (= res!1886862 (forall!10305 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174367))))

(assert (=> d!1398395 (= lt!1706147 e!2823046)))

(assert (=> d!1398395 (= c!773604 ((_ is Nil!50696) (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(assert (=> d!1398395 (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lm!1477))))))

(assert (=> d!1398395 (= (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lm!1477))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lt!1706147)))

(declare-fun bm!315807 () Bool)

(assert (=> bm!315807 (= call!315810 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (ite c!773604 lambda!174361 lambda!174364)))))

(assert (=> b!4530684 (= e!2823046 lt!1706135)))

(declare-fun lt!1706143 () ListMap!3625)

(assert (=> b!4530684 (= lt!1706143 (+!1572 (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(assert (=> b!4530684 (= lt!1706135 (addToMapMapFromBucket!705 (t!357782 (_2!28868 (h!56564 (toList!4363 lm!1477)))) (+!1572 (extractMap!1234 (t!357783 (toList!4363 lm!1477))) (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))))

(declare-fun lt!1706142 () Unit!96566)

(assert (=> b!4530684 (= lt!1706142 call!315812)))

(assert (=> b!4530684 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lambda!174363)))

(declare-fun lt!1706146 () Unit!96566)

(assert (=> b!4530684 (= lt!1706146 lt!1706142)))

(assert (=> b!4530684 (forall!10305 (toList!4364 lt!1706143) lambda!174364)))

(declare-fun lt!1706139 () Unit!96566)

(declare-fun Unit!96875 () Unit!96566)

(assert (=> b!4530684 (= lt!1706139 Unit!96875)))

(assert (=> b!4530684 call!315811))

(declare-fun lt!1706144 () Unit!96566)

(declare-fun Unit!96877 () Unit!96566)

(assert (=> b!4530684 (= lt!1706144 Unit!96877)))

(declare-fun lt!1706132 () Unit!96566)

(declare-fun Unit!96878 () Unit!96566)

(assert (=> b!4530684 (= lt!1706132 Unit!96878)))

(declare-fun lt!1706133 () Unit!96566)

(assert (=> b!4530684 (= lt!1706133 (forallContained!2559 (toList!4364 lt!1706143) lambda!174364 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(assert (=> b!4530684 (contains!13455 lt!1706143 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(declare-fun lt!1706134 () Unit!96566)

(declare-fun Unit!96880 () Unit!96566)

(assert (=> b!4530684 (= lt!1706134 Unit!96880)))

(assert (=> b!4530684 (contains!13455 lt!1706135 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))))))

(declare-fun lt!1706137 () Unit!96566)

(declare-fun Unit!96881 () Unit!96566)

(assert (=> b!4530684 (= lt!1706137 Unit!96881)))

(assert (=> b!4530684 (forall!10305 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174364)))

(declare-fun lt!1706140 () Unit!96566)

(declare-fun Unit!96882 () Unit!96566)

(assert (=> b!4530684 (= lt!1706140 Unit!96882)))

(assert (=> b!4530684 (forall!10305 (toList!4364 lt!1706143) lambda!174364)))

(declare-fun lt!1706141 () Unit!96566)

(declare-fun Unit!96883 () Unit!96566)

(assert (=> b!4530684 (= lt!1706141 Unit!96883)))

(declare-fun lt!1706136 () Unit!96566)

(declare-fun Unit!96884 () Unit!96566)

(assert (=> b!4530684 (= lt!1706136 Unit!96884)))

(declare-fun lt!1706130 () Unit!96566)

(assert (=> b!4530684 (= lt!1706130 (addForallContainsKeyThenBeforeAdding!352 (extractMap!1234 (t!357783 (toList!4363 lm!1477))) lt!1706135 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))) (_2!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))))

(assert (=> b!4530684 call!315810))

(declare-fun lt!1706148 () Unit!96566)

(assert (=> b!4530684 (= lt!1706148 lt!1706130)))

(assert (=> b!4530684 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lambda!174364)))

(declare-fun lt!1706145 () Unit!96566)

(declare-fun Unit!96885 () Unit!96566)

(assert (=> b!4530684 (= lt!1706145 Unit!96885)))

(declare-fun res!1886860 () Bool)

(assert (=> b!4530684 (= res!1886860 (forall!10305 (_2!28868 (h!56564 (toList!4363 lm!1477))) lambda!174364))))

(assert (=> b!4530684 (=> (not res!1886860) (not e!2823045))))

(assert (=> b!4530684 e!2823045))

(declare-fun lt!1706150 () Unit!96566)

(declare-fun Unit!96886 () Unit!96566)

(assert (=> b!4530684 (= lt!1706150 Unit!96886)))

(assert (= (and d!1398395 c!773604) b!4530681))

(assert (= (and d!1398395 (not c!773604)) b!4530684))

(assert (= (and b!4530684 res!1886860) b!4530680))

(assert (= (or b!4530681 b!4530684) bm!315807))

(assert (= (or b!4530681 b!4530684) bm!315805))

(assert (= (or b!4530681 b!4530684) bm!315806))

(assert (= (and d!1398395 res!1886862) b!4530682))

(assert (= (and b!4530682 res!1886861) b!4530683))

(declare-fun m!5287991 () Bool)

(assert (=> d!1398395 m!5287991))

(assert (=> d!1398395 m!5286087))

(declare-fun m!5287993 () Bool)

(assert (=> b!4530684 m!5287993))

(assert (=> b!4530684 m!5287993))

(declare-fun m!5287995 () Bool)

(assert (=> b!4530684 m!5287995))

(declare-fun m!5287997 () Bool)

(assert (=> b!4530684 m!5287997))

(assert (=> b!4530684 m!5285139))

(declare-fun m!5287999 () Bool)

(assert (=> b!4530684 m!5287999))

(declare-fun m!5288001 () Bool)

(assert (=> b!4530684 m!5288001))

(declare-fun m!5288003 () Bool)

(assert (=> b!4530684 m!5288003))

(declare-fun m!5288005 () Bool)

(assert (=> b!4530684 m!5288005))

(declare-fun m!5288007 () Bool)

(assert (=> b!4530684 m!5288007))

(declare-fun m!5288009 () Bool)

(assert (=> b!4530684 m!5288009))

(declare-fun m!5288011 () Bool)

(assert (=> b!4530684 m!5288011))

(assert (=> b!4530684 m!5285139))

(assert (=> b!4530684 m!5288005))

(assert (=> b!4530684 m!5287995))

(assert (=> b!4530680 m!5287997))

(declare-fun m!5288013 () Bool)

(assert (=> bm!315805 m!5288013))

(declare-fun m!5288015 () Bool)

(assert (=> b!4530682 m!5288015))

(assert (=> bm!315806 m!5285139))

(declare-fun m!5288017 () Bool)

(assert (=> bm!315806 m!5288017))

(declare-fun m!5288019 () Bool)

(assert (=> b!4530683 m!5288019))

(declare-fun m!5288021 () Bool)

(assert (=> bm!315807 m!5288021))

(assert (=> b!4529580 d!1398395))

(assert (=> b!4529580 d!1397661))

(declare-fun d!1398433 () Bool)

(declare-fun res!1886881 () Bool)

(declare-fun e!2823069 () Bool)

(assert (=> d!1398433 (=> res!1886881 e!2823069)))

(assert (=> d!1398433 (= res!1886881 ((_ is Nil!50696) (toList!4364 lt!1705027)))))

(assert (=> d!1398433 (= (forall!10305 (toList!4364 lt!1705027) lambda!174168) e!2823069)))

(declare-fun b!4530719 () Bool)

(declare-fun e!2823070 () Bool)

(assert (=> b!4530719 (= e!2823069 e!2823070)))

(declare-fun res!1886882 () Bool)

(assert (=> b!4530719 (=> (not res!1886882) (not e!2823070))))

(assert (=> b!4530719 (= res!1886882 (dynLambda!21188 lambda!174168 (h!56563 (toList!4364 lt!1705027))))))

(declare-fun b!4530720 () Bool)

(assert (=> b!4530720 (= e!2823070 (forall!10305 (t!357782 (toList!4364 lt!1705027)) lambda!174168))))

(assert (= (and d!1398433 (not res!1886881)) b!4530719))

(assert (= (and b!4530719 res!1886882) b!4530720))

(declare-fun b_lambda!156479 () Bool)

(assert (=> (not b_lambda!156479) (not b!4530719)))

(declare-fun m!5288023 () Bool)

(assert (=> b!4530719 m!5288023))

(declare-fun m!5288025 () Bool)

(assert (=> b!4530720 m!5288025))

(assert (=> b!4529385 d!1398433))

(assert (=> b!4529567 d!1397835))

(assert (=> b!4529567 d!1397837))

(declare-fun d!1398435 () Bool)

(declare-fun res!1886883 () Bool)

(declare-fun e!2823071 () Bool)

(assert (=> d!1398435 (=> res!1886883 e!2823071)))

(assert (=> d!1398435 (= res!1886883 (and ((_ is Cons!50696) (_2!28868 (h!56564 (toList!4363 lt!1705004)))) (= (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004))))) key!3287)))))

(assert (=> d!1398435 (= (containsKey!1826 (_2!28868 (h!56564 (toList!4363 lt!1705004))) key!3287) e!2823071)))

(declare-fun b!4530721 () Bool)

(declare-fun e!2823072 () Bool)

(assert (=> b!4530721 (= e!2823071 e!2823072)))

(declare-fun res!1886884 () Bool)

(assert (=> b!4530721 (=> (not res!1886884) (not e!2823072))))

(assert (=> b!4530721 (= res!1886884 ((_ is Cons!50696) (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(declare-fun b!4530722 () Bool)

(assert (=> b!4530722 (= e!2823072 (containsKey!1826 (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1705004)))) key!3287))))

(assert (= (and d!1398435 (not res!1886883)) b!4530721))

(assert (= (and b!4530721 res!1886884) b!4530722))

(declare-fun m!5288027 () Bool)

(assert (=> b!4530722 m!5288027))

(assert (=> b!4529591 d!1398435))

(assert (=> b!4529478 d!1398333))

(assert (=> b!4529478 d!1398023))

(declare-fun d!1398437 () Bool)

(declare-fun c!773613 () Bool)

(assert (=> d!1398437 (= c!773613 ((_ is Nil!50697) (t!357783 (toList!4363 lm!1477))))))

(declare-fun e!2823073 () (InoxSet tuple2!51148))

(assert (=> d!1398437 (= (content!8401 (t!357783 (toList!4363 lm!1477))) e!2823073)))

(declare-fun b!4530723 () Bool)

(assert (=> b!4530723 (= e!2823073 ((as const (Array tuple2!51148 Bool)) false))))

(declare-fun b!4530724 () Bool)

(assert (=> b!4530724 (= e!2823073 ((_ map or) (store ((as const (Array tuple2!51148 Bool)) false) (h!56564 (t!357783 (toList!4363 lm!1477))) true) (content!8401 (t!357783 (t!357783 (toList!4363 lm!1477))))))))

(assert (= (and d!1398437 c!773613) b!4530723))

(assert (= (and d!1398437 (not c!773613)) b!4530724))

(declare-fun m!5288029 () Bool)

(assert (=> b!4530724 m!5288029))

(assert (=> b!4530724 m!5287243))

(assert (=> d!1397735 d!1398437))

(declare-fun d!1398439 () Bool)

(declare-fun res!1886885 () Bool)

(declare-fun e!2823074 () Bool)

(assert (=> d!1398439 (=> res!1886885 e!2823074)))

(assert (=> d!1398439 (= res!1886885 ((_ is Nil!50696) (toList!4364 lt!1705028)))))

(assert (=> d!1398439 (= (forall!10305 (toList!4364 lt!1705028) lambda!174224) e!2823074)))

(declare-fun b!4530725 () Bool)

(declare-fun e!2823075 () Bool)

(assert (=> b!4530725 (= e!2823074 e!2823075)))

(declare-fun res!1886886 () Bool)

(assert (=> b!4530725 (=> (not res!1886886) (not e!2823075))))

(assert (=> b!4530725 (= res!1886886 (dynLambda!21188 lambda!174224 (h!56563 (toList!4364 lt!1705028))))))

(declare-fun b!4530726 () Bool)

(assert (=> b!4530726 (= e!2823075 (forall!10305 (t!357782 (toList!4364 lt!1705028)) lambda!174224))))

(assert (= (and d!1398439 (not res!1886885)) b!4530725))

(assert (= (and b!4530725 res!1886886) b!4530726))

(declare-fun b_lambda!156481 () Bool)

(assert (=> (not b_lambda!156481) (not b!4530725)))

(declare-fun m!5288031 () Bool)

(assert (=> b!4530725 m!5288031))

(declare-fun m!5288033 () Bool)

(assert (=> b!4530726 m!5288033))

(assert (=> b!4529689 d!1398439))

(declare-fun d!1398441 () Bool)

(assert (=> d!1398441 (= (invariantList!1031 (toList!4364 lt!1705441)) (noDuplicatedKeys!270 (toList!4364 lt!1705441)))))

(declare-fun bs!866360 () Bool)

(assert (= bs!866360 d!1398441))

(declare-fun m!5288035 () Bool)

(assert (=> bs!866360 m!5288035))

(assert (=> d!1397765 d!1398441))

(declare-fun d!1398443 () Bool)

(declare-fun res!1886887 () Bool)

(declare-fun e!2823076 () Bool)

(assert (=> d!1398443 (=> res!1886887 e!2823076)))

(assert (=> d!1398443 (= res!1886887 ((_ is Nil!50697) (toList!4363 lt!1704999)))))

(assert (=> d!1398443 (= (forall!10303 (toList!4363 lt!1704999) lambda!174213) e!2823076)))

(declare-fun b!4530727 () Bool)

(declare-fun e!2823077 () Bool)

(assert (=> b!4530727 (= e!2823076 e!2823077)))

(declare-fun res!1886888 () Bool)

(assert (=> b!4530727 (=> (not res!1886888) (not e!2823077))))

(assert (=> b!4530727 (= res!1886888 (dynLambda!21186 lambda!174213 (h!56564 (toList!4363 lt!1704999))))))

(declare-fun b!4530728 () Bool)

(assert (=> b!4530728 (= e!2823077 (forall!10303 (t!357783 (toList!4363 lt!1704999)) lambda!174213))))

(assert (= (and d!1398443 (not res!1886887)) b!4530727))

(assert (= (and b!4530727 res!1886888) b!4530728))

(declare-fun b_lambda!156483 () Bool)

(assert (=> (not b_lambda!156483) (not b!4530727)))

(declare-fun m!5288037 () Bool)

(assert (=> b!4530727 m!5288037))

(declare-fun m!5288039 () Bool)

(assert (=> b!4530728 m!5288039))

(assert (=> d!1397765 d!1398443))

(declare-fun d!1398445 () Bool)

(assert (=> d!1398445 (= (invariantList!1031 (toList!4364 lt!1705407)) (noDuplicatedKeys!270 (toList!4364 lt!1705407)))))

(declare-fun bs!866365 () Bool)

(assert (= bs!866365 d!1398445))

(declare-fun m!5288041 () Bool)

(assert (=> bs!866365 m!5288041))

(assert (=> d!1397705 d!1398445))

(declare-fun d!1398447 () Bool)

(declare-fun res!1886889 () Bool)

(declare-fun e!2823078 () Bool)

(assert (=> d!1398447 (=> res!1886889 e!2823078)))

(assert (=> d!1398447 (= res!1886889 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1398447 (= (forall!10303 (toList!4363 lm!1477) lambda!174197) e!2823078)))

(declare-fun b!4530729 () Bool)

(declare-fun e!2823079 () Bool)

(assert (=> b!4530729 (= e!2823078 e!2823079)))

(declare-fun res!1886890 () Bool)

(assert (=> b!4530729 (=> (not res!1886890) (not e!2823079))))

(assert (=> b!4530729 (= res!1886890 (dynLambda!21186 lambda!174197 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4530730 () Bool)

(assert (=> b!4530730 (= e!2823079 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174197))))

(assert (= (and d!1398447 (not res!1886889)) b!4530729))

(assert (= (and b!4530729 res!1886890) b!4530730))

(declare-fun b_lambda!156485 () Bool)

(assert (=> (not b_lambda!156485) (not b!4530729)))

(declare-fun m!5288043 () Bool)

(assert (=> b!4530729 m!5288043))

(declare-fun m!5288045 () Bool)

(assert (=> b!4530730 m!5288045))

(assert (=> d!1397705 d!1398447))

(declare-fun bs!866370 () Bool)

(declare-fun b!4530732 () Bool)

(assert (= bs!866370 (and b!4530732 d!1397915)))

(declare-fun lambda!174371 () Int)

(assert (=> bs!866370 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705606) (= lambda!174371 lambda!174257))))

(declare-fun bs!866371 () Bool)

(assert (= bs!866371 (and b!4530732 b!4529972)))

(assert (=> bs!866371 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174371 lambda!174260))))

(declare-fun bs!866373 () Bool)

(assert (= bs!866373 (and b!4530732 b!4530684)))

(assert (=> bs!866373 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706135) (= lambda!174371 lambda!174364))))

(declare-fun bs!866375 () Bool)

(assert (= bs!866375 (and b!4530732 b!4529691)))

(assert (=> bs!866375 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705467) (= lambda!174371 lambda!174223))))

(declare-fun bs!866376 () Bool)

(assert (= bs!866376 (and b!4530732 d!1397935)))

(assert (=> bs!866376 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705636) (= lambda!174371 lambda!174264))))

(declare-fun bs!866378 () Bool)

(assert (= bs!866378 (and b!4530732 d!1397821)))

(assert (=> bs!866378 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705529) (= lambda!174371 lambda!174234))))

(declare-fun bs!866380 () Bool)

(assert (= bs!866380 (and b!4530732 b!4529387)))

(assert (=> bs!866380 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705212) (= lambda!174371 lambda!174167))))

(declare-fun bs!866382 () Bool)

(assert (= bs!866382 (and b!4530732 b!4529273)))

(assert (=> bs!866382 (not (= lambda!174371 lambda!174089))))

(declare-fun bs!866384 () Bool)

(assert (= bs!866384 (and b!4530732 d!1398395)))

(assert (=> bs!866384 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706147) (= lambda!174371 lambda!174367))))

(declare-fun bs!866386 () Bool)

(assert (= bs!866386 (and b!4530732 b!4529936)))

(assert (=> bs!866386 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705594) (= lambda!174371 lambda!174256))))

(declare-fun bs!866388 () Bool)

(assert (= bs!866388 (and b!4530732 b!4530610)))

(assert (=> bs!866388 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174371 lambda!174345))))

(declare-fun bs!866390 () Bool)

(assert (= bs!866390 (and b!4530732 d!1397787)))

(assert (=> bs!866390 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705479) (= lambda!174371 lambda!174224))))

(declare-fun bs!866392 () Bool)

(assert (= bs!866392 (and b!4530732 b!4530552)))

(assert (=> bs!866392 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174371 lambda!174333))))

(declare-fun bs!866394 () Bool)

(assert (= bs!866394 (and b!4530732 b!4530646)))

(assert (=> bs!866394 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174371 lambda!174352))))

(declare-fun bs!866396 () Bool)

(assert (= bs!866396 (and b!4530732 b!4530613)))

(assert (=> bs!866396 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174371 lambda!174346))))

(assert (=> bs!866380 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705027) (= lambda!174371 lambda!174166))))

(declare-fun bs!866399 () Bool)

(assert (= bs!866399 (and b!4530732 b!4530649)))

(assert (=> bs!866399 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706086) (= lambda!174371 lambda!174354))))

(declare-fun bs!866401 () Bool)

(assert (= bs!866401 (and b!4530732 d!1398347)))

(assert (=> bs!866401 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706052) (= lambda!174371 lambda!174348))))

(assert (=> bs!866392 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705953) (= lambda!174371 lambda!174334))))

(assert (=> bs!866396 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706040) (= lambda!174371 lambda!174347))))

(declare-fun bs!866404 () Bool)

(assert (= bs!866404 (and b!4530732 d!1398371)))

(assert (=> bs!866404 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706098) (= lambda!174371 lambda!174356))))

(declare-fun bs!866406 () Bool)

(assert (= bs!866406 (and b!4530732 b!4529431)))

(assert (=> bs!866406 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705001) (= lambda!174371 lambda!174178))))

(declare-fun bs!866408 () Bool)

(assert (= bs!866408 (and b!4530732 d!1398281)))

(assert (=> bs!866408 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705212) (= lambda!174371 lambda!174327))))

(declare-fun bs!866410 () Bool)

(assert (= bs!866410 (and b!4530732 b!4529733)))

(assert (=> bs!866410 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705517) (= lambda!174371 lambda!174233))))

(declare-fun bs!866412 () Bool)

(assert (= bs!866412 (and b!4530732 d!1398315)))

(assert (=> bs!866412 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705965) (= lambda!174371 lambda!174335))))

(assert (=> bs!866410 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174371 lambda!174232))))

(assert (=> bs!866386 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (-!404 lt!1705001 key!3287)) (= lambda!174371 lambda!174255))))

(declare-fun bs!866416 () Bool)

(assert (= bs!866416 (and b!4530732 b!4529933)))

(assert (=> bs!866416 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (-!404 lt!1705001 key!3287)) (= lambda!174371 lambda!174254))))

(declare-fun bs!866418 () Bool)

(assert (= bs!866418 (and b!4530732 b!4529434)))

(assert (=> bs!866418 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705266) (= lambda!174371 lambda!174180))))

(declare-fun bs!866420 () Bool)

(assert (= bs!866420 (and b!4530732 d!1398049)))

(assert (=> bs!866420 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705027) (= lambda!174371 lambda!174280))))

(assert (=> bs!866375 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705028) (= lambda!174371 lambda!174222))))

(assert (=> bs!866399 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174371 lambda!174353))))

(declare-fun bs!866422 () Bool)

(assert (= bs!866422 (and b!4530732 d!1398099)))

(assert (=> bs!866422 (not (= lambda!174371 lambda!174291))))

(declare-fun bs!866424 () Bool)

(assert (= bs!866424 (and b!4530732 d!1397779)))

(assert (=> bs!866424 (not (= lambda!174371 lambda!174220))))

(declare-fun bs!866426 () Bool)

(assert (= bs!866426 (and b!4530732 b!4529969)))

(assert (=> bs!866426 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174371 lambda!174258))))

(declare-fun bs!866428 () Bool)

(assert (= bs!866428 (and b!4530732 b!4529384)))

(assert (=> bs!866428 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705027) (= lambda!174371 lambda!174165))))

(declare-fun bs!866429 () Bool)

(assert (= bs!866429 (and b!4530732 b!4530549)))

(assert (=> bs!866429 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174371 lambda!174329))))

(declare-fun bs!866430 () Bool)

(assert (= bs!866430 (and b!4530732 b!4529730)))

(assert (=> bs!866430 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174371 lambda!174231))))

(declare-fun bs!866432 () Bool)

(assert (= bs!866432 (and b!4530732 d!1397569)))

(assert (=> bs!866432 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705224) (= lambda!174371 lambda!174168))))

(assert (=> bs!866373 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174371 lambda!174363))))

(declare-fun bs!866434 () Bool)

(assert (= bs!866434 (and b!4530732 d!1398357)))

(assert (=> bs!866434 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705467) (= lambda!174371 lambda!174349))))

(declare-fun bs!866436 () Bool)

(assert (= bs!866436 (and b!4530732 d!1397819)))

(assert (=> bs!866436 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705001) (= lambda!174371 lambda!174230))))

(assert (=> bs!866371 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705624) (= lambda!174371 lambda!174261))))

(assert (=> bs!866418 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705001) (= lambda!174371 lambda!174179))))

(declare-fun bs!866438 () Bool)

(assert (= bs!866438 (and b!4530732 d!1398075)))

(assert (=> bs!866438 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705028) (= lambda!174371 lambda!174289))))

(declare-fun bs!866440 () Bool)

(assert (= bs!866440 (and b!4530732 d!1397629)))

(assert (=> bs!866440 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705278) (= lambda!174371 lambda!174181))))

(declare-fun bs!866441 () Bool)

(assert (= bs!866441 (and b!4530732 b!4530681)))

(assert (=> bs!866441 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174371 lambda!174361))))

(declare-fun bs!866442 () Bool)

(assert (= bs!866442 (and b!4530732 b!4529688)))

(assert (=> bs!866442 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705028) (= lambda!174371 lambda!174221))))

(assert (=> b!4530732 true))

(declare-fun bs!866443 () Bool)

(declare-fun b!4530735 () Bool)

(assert (= bs!866443 (and b!4530735 d!1397915)))

(declare-fun lambda!174374 () Int)

(assert (=> bs!866443 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705606) (= lambda!174374 lambda!174257))))

(declare-fun bs!866444 () Bool)

(assert (= bs!866444 (and b!4530735 b!4529972)))

(assert (=> bs!866444 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174374 lambda!174260))))

(declare-fun bs!866445 () Bool)

(assert (= bs!866445 (and b!4530735 b!4530684)))

(assert (=> bs!866445 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706135) (= lambda!174374 lambda!174364))))

(declare-fun bs!866446 () Bool)

(assert (= bs!866446 (and b!4530735 b!4529691)))

(assert (=> bs!866446 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705467) (= lambda!174374 lambda!174223))))

(declare-fun bs!866447 () Bool)

(assert (= bs!866447 (and b!4530735 d!1397935)))

(assert (=> bs!866447 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705636) (= lambda!174374 lambda!174264))))

(declare-fun bs!866448 () Bool)

(assert (= bs!866448 (and b!4530735 d!1397821)))

(assert (=> bs!866448 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705529) (= lambda!174374 lambda!174234))))

(declare-fun bs!866449 () Bool)

(assert (= bs!866449 (and b!4530735 b!4529387)))

(assert (=> bs!866449 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705212) (= lambda!174374 lambda!174167))))

(declare-fun bs!866450 () Bool)

(assert (= bs!866450 (and b!4530735 b!4529273)))

(assert (=> bs!866450 (not (= lambda!174374 lambda!174089))))

(declare-fun bs!866451 () Bool)

(assert (= bs!866451 (and b!4530735 d!1398395)))

(assert (=> bs!866451 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706147) (= lambda!174374 lambda!174367))))

(declare-fun bs!866452 () Bool)

(assert (= bs!866452 (and b!4530735 b!4529936)))

(assert (=> bs!866452 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705594) (= lambda!174374 lambda!174256))))

(declare-fun bs!866453 () Bool)

(assert (= bs!866453 (and b!4530735 b!4530610)))

(assert (=> bs!866453 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174374 lambda!174345))))

(declare-fun bs!866454 () Bool)

(assert (= bs!866454 (and b!4530735 d!1397787)))

(assert (=> bs!866454 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705479) (= lambda!174374 lambda!174224))))

(declare-fun bs!866455 () Bool)

(assert (= bs!866455 (and b!4530735 b!4530552)))

(assert (=> bs!866455 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174374 lambda!174333))))

(declare-fun bs!866456 () Bool)

(assert (= bs!866456 (and b!4530735 b!4530646)))

(assert (=> bs!866456 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174374 lambda!174352))))

(declare-fun bs!866457 () Bool)

(assert (= bs!866457 (and b!4530735 b!4530732)))

(assert (=> bs!866457 (= lambda!174374 lambda!174371)))

(declare-fun bs!866458 () Bool)

(assert (= bs!866458 (and b!4530735 b!4530613)))

(assert (=> bs!866458 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174374 lambda!174346))))

(assert (=> bs!866449 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705027) (= lambda!174374 lambda!174166))))

(declare-fun bs!866459 () Bool)

(assert (= bs!866459 (and b!4530735 b!4530649)))

(assert (=> bs!866459 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706086) (= lambda!174374 lambda!174354))))

(declare-fun bs!866460 () Bool)

(assert (= bs!866460 (and b!4530735 d!1398347)))

(assert (=> bs!866460 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706052) (= lambda!174374 lambda!174348))))

(assert (=> bs!866455 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705953) (= lambda!174374 lambda!174334))))

(assert (=> bs!866458 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706040) (= lambda!174374 lambda!174347))))

(declare-fun bs!866461 () Bool)

(assert (= bs!866461 (and b!4530735 d!1398371)))

(assert (=> bs!866461 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706098) (= lambda!174374 lambda!174356))))

(declare-fun bs!866462 () Bool)

(assert (= bs!866462 (and b!4530735 b!4529431)))

(assert (=> bs!866462 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705001) (= lambda!174374 lambda!174178))))

(declare-fun bs!866463 () Bool)

(assert (= bs!866463 (and b!4530735 d!1398281)))

(assert (=> bs!866463 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705212) (= lambda!174374 lambda!174327))))

(declare-fun bs!866464 () Bool)

(assert (= bs!866464 (and b!4530735 b!4529733)))

(assert (=> bs!866464 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705517) (= lambda!174374 lambda!174233))))

(declare-fun bs!866465 () Bool)

(assert (= bs!866465 (and b!4530735 d!1398315)))

(assert (=> bs!866465 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705965) (= lambda!174374 lambda!174335))))

(assert (=> bs!866464 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174374 lambda!174232))))

(assert (=> bs!866452 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (-!404 lt!1705001 key!3287)) (= lambda!174374 lambda!174255))))

(declare-fun bs!866466 () Bool)

(assert (= bs!866466 (and b!4530735 b!4529933)))

(assert (=> bs!866466 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (-!404 lt!1705001 key!3287)) (= lambda!174374 lambda!174254))))

(declare-fun bs!866467 () Bool)

(assert (= bs!866467 (and b!4530735 b!4529434)))

(assert (=> bs!866467 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705266) (= lambda!174374 lambda!174180))))

(declare-fun bs!866468 () Bool)

(assert (= bs!866468 (and b!4530735 d!1398049)))

(assert (=> bs!866468 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705027) (= lambda!174374 lambda!174280))))

(assert (=> bs!866446 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705028) (= lambda!174374 lambda!174222))))

(assert (=> bs!866459 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174374 lambda!174353))))

(declare-fun bs!866469 () Bool)

(assert (= bs!866469 (and b!4530735 d!1398099)))

(assert (=> bs!866469 (not (= lambda!174374 lambda!174291))))

(declare-fun bs!866470 () Bool)

(assert (= bs!866470 (and b!4530735 d!1397779)))

(assert (=> bs!866470 (not (= lambda!174374 lambda!174220))))

(declare-fun bs!866471 () Bool)

(assert (= bs!866471 (and b!4530735 b!4529969)))

(assert (=> bs!866471 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174374 lambda!174258))))

(declare-fun bs!866472 () Bool)

(assert (= bs!866472 (and b!4530735 b!4529384)))

(assert (=> bs!866472 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705027) (= lambda!174374 lambda!174165))))

(declare-fun bs!866473 () Bool)

(assert (= bs!866473 (and b!4530735 b!4530549)))

(assert (=> bs!866473 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174374 lambda!174329))))

(declare-fun bs!866474 () Bool)

(assert (= bs!866474 (and b!4530735 b!4529730)))

(assert (=> bs!866474 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174374 lambda!174231))))

(declare-fun bs!866475 () Bool)

(assert (= bs!866475 (and b!4530735 d!1397569)))

(assert (=> bs!866475 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705224) (= lambda!174374 lambda!174168))))

(assert (=> bs!866445 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174374 lambda!174363))))

(declare-fun bs!866476 () Bool)

(assert (= bs!866476 (and b!4530735 d!1398357)))

(assert (=> bs!866476 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705467) (= lambda!174374 lambda!174349))))

(declare-fun bs!866477 () Bool)

(assert (= bs!866477 (and b!4530735 d!1397819)))

(assert (=> bs!866477 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705001) (= lambda!174374 lambda!174230))))

(assert (=> bs!866444 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705624) (= lambda!174374 lambda!174261))))

(assert (=> bs!866467 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705001) (= lambda!174374 lambda!174179))))

(declare-fun bs!866478 () Bool)

(assert (= bs!866478 (and b!4530735 d!1398075)))

(assert (=> bs!866478 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705028) (= lambda!174374 lambda!174289))))

(declare-fun bs!866479 () Bool)

(assert (= bs!866479 (and b!4530735 d!1397629)))

(assert (=> bs!866479 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705278) (= lambda!174374 lambda!174181))))

(declare-fun bs!866480 () Bool)

(assert (= bs!866480 (and b!4530735 b!4530681)))

(assert (=> bs!866480 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174374 lambda!174361))))

(declare-fun bs!866481 () Bool)

(assert (= bs!866481 (and b!4530735 b!4529688)))

(assert (=> bs!866481 (= (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1705028) (= lambda!174374 lambda!174221))))

(assert (=> b!4530735 true))

(declare-fun lt!1706186 () ListMap!3625)

(declare-fun lambda!174375 () Int)

(assert (=> bs!866443 (= (= lt!1706186 lt!1705606) (= lambda!174375 lambda!174257))))

(assert (=> bs!866444 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174375 lambda!174260))))

(assert (=> bs!866445 (= (= lt!1706186 lt!1706135) (= lambda!174375 lambda!174364))))

(assert (=> bs!866446 (= (= lt!1706186 lt!1705467) (= lambda!174375 lambda!174223))))

(assert (=> bs!866447 (= (= lt!1706186 lt!1705636) (= lambda!174375 lambda!174264))))

(assert (=> bs!866448 (= (= lt!1706186 lt!1705529) (= lambda!174375 lambda!174234))))

(assert (=> bs!866449 (= (= lt!1706186 lt!1705212) (= lambda!174375 lambda!174167))))

(assert (=> bs!866450 (not (= lambda!174375 lambda!174089))))

(assert (=> bs!866451 (= (= lt!1706186 lt!1706147) (= lambda!174375 lambda!174367))))

(assert (=> bs!866452 (= (= lt!1706186 lt!1705594) (= lambda!174375 lambda!174256))))

(assert (=> bs!866454 (= (= lt!1706186 lt!1705479) (= lambda!174375 lambda!174224))))

(assert (=> bs!866455 (= (= lt!1706186 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174375 lambda!174333))))

(assert (=> bs!866456 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174375 lambda!174352))))

(assert (=> bs!866457 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174375 lambda!174371))))

(assert (=> bs!866458 (= (= lt!1706186 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174375 lambda!174346))))

(assert (=> bs!866449 (= (= lt!1706186 lt!1705027) (= lambda!174375 lambda!174166))))

(assert (=> bs!866459 (= (= lt!1706186 lt!1706086) (= lambda!174375 lambda!174354))))

(assert (=> bs!866460 (= (= lt!1706186 lt!1706052) (= lambda!174375 lambda!174348))))

(assert (=> bs!866455 (= (= lt!1706186 lt!1705953) (= lambda!174375 lambda!174334))))

(assert (=> bs!866458 (= (= lt!1706186 lt!1706040) (= lambda!174375 lambda!174347))))

(assert (=> bs!866461 (= (= lt!1706186 lt!1706098) (= lambda!174375 lambda!174356))))

(assert (=> bs!866462 (= (= lt!1706186 lt!1705001) (= lambda!174375 lambda!174178))))

(assert (=> bs!866463 (= (= lt!1706186 lt!1705212) (= lambda!174375 lambda!174327))))

(assert (=> bs!866464 (= (= lt!1706186 lt!1705517) (= lambda!174375 lambda!174233))))

(assert (=> bs!866465 (= (= lt!1706186 lt!1705965) (= lambda!174375 lambda!174335))))

(assert (=> bs!866464 (= (= lt!1706186 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174375 lambda!174232))))

(assert (=> bs!866452 (= (= lt!1706186 (-!404 lt!1705001 key!3287)) (= lambda!174375 lambda!174255))))

(assert (=> bs!866466 (= (= lt!1706186 (-!404 lt!1705001 key!3287)) (= lambda!174375 lambda!174254))))

(assert (=> bs!866467 (= (= lt!1706186 lt!1705266) (= lambda!174375 lambda!174180))))

(assert (=> bs!866468 (= (= lt!1706186 lt!1705027) (= lambda!174375 lambda!174280))))

(assert (=> bs!866446 (= (= lt!1706186 lt!1705028) (= lambda!174375 lambda!174222))))

(assert (=> bs!866459 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174375 lambda!174353))))

(assert (=> bs!866469 (not (= lambda!174375 lambda!174291))))

(assert (=> bs!866470 (not (= lambda!174375 lambda!174220))))

(assert (=> bs!866471 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174375 lambda!174258))))

(assert (=> bs!866472 (= (= lt!1706186 lt!1705027) (= lambda!174375 lambda!174165))))

(assert (=> bs!866473 (= (= lt!1706186 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174375 lambda!174329))))

(assert (=> bs!866474 (= (= lt!1706186 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174375 lambda!174231))))

(assert (=> bs!866475 (= (= lt!1706186 lt!1705224) (= lambda!174375 lambda!174168))))

(assert (=> bs!866445 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174375 lambda!174363))))

(assert (=> bs!866476 (= (= lt!1706186 lt!1705467) (= lambda!174375 lambda!174349))))

(assert (=> bs!866477 (= (= lt!1706186 lt!1705001) (= lambda!174375 lambda!174230))))

(assert (=> bs!866444 (= (= lt!1706186 lt!1705624) (= lambda!174375 lambda!174261))))

(assert (=> bs!866467 (= (= lt!1706186 lt!1705001) (= lambda!174375 lambda!174179))))

(assert (=> bs!866478 (= (= lt!1706186 lt!1705028) (= lambda!174375 lambda!174289))))

(assert (=> bs!866479 (= (= lt!1706186 lt!1705278) (= lambda!174375 lambda!174181))))

(assert (=> bs!866480 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174375 lambda!174361))))

(assert (=> bs!866481 (= (= lt!1706186 lt!1705028) (= lambda!174375 lambda!174221))))

(assert (=> b!4530735 (= (= lt!1706186 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174375 lambda!174374))))

(assert (=> bs!866453 (= (= lt!1706186 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174375 lambda!174345))))

(assert (=> b!4530735 true))

(declare-fun bs!866518 () Bool)

(declare-fun d!1398449 () Bool)

(assert (= bs!866518 (and d!1398449 d!1397915)))

(declare-fun lt!1706198 () ListMap!3625)

(declare-fun lambda!174377 () Int)

(assert (=> bs!866518 (= (= lt!1706198 lt!1705606) (= lambda!174377 lambda!174257))))

(declare-fun bs!866519 () Bool)

(assert (= bs!866519 (and d!1398449 b!4529972)))

(assert (=> bs!866519 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174377 lambda!174260))))

(declare-fun bs!866520 () Bool)

(assert (= bs!866520 (and d!1398449 b!4530684)))

(assert (=> bs!866520 (= (= lt!1706198 lt!1706135) (= lambda!174377 lambda!174364))))

(declare-fun bs!866521 () Bool)

(assert (= bs!866521 (and d!1398449 b!4529691)))

(assert (=> bs!866521 (= (= lt!1706198 lt!1705467) (= lambda!174377 lambda!174223))))

(declare-fun bs!866522 () Bool)

(assert (= bs!866522 (and d!1398449 d!1397935)))

(assert (=> bs!866522 (= (= lt!1706198 lt!1705636) (= lambda!174377 lambda!174264))))

(declare-fun bs!866523 () Bool)

(assert (= bs!866523 (and d!1398449 d!1397821)))

(assert (=> bs!866523 (= (= lt!1706198 lt!1705529) (= lambda!174377 lambda!174234))))

(declare-fun bs!866524 () Bool)

(assert (= bs!866524 (and d!1398449 b!4529387)))

(assert (=> bs!866524 (= (= lt!1706198 lt!1705212) (= lambda!174377 lambda!174167))))

(declare-fun bs!866525 () Bool)

(assert (= bs!866525 (and d!1398449 b!4529273)))

(assert (=> bs!866525 (not (= lambda!174377 lambda!174089))))

(declare-fun bs!866526 () Bool)

(assert (= bs!866526 (and d!1398449 b!4529936)))

(assert (=> bs!866526 (= (= lt!1706198 lt!1705594) (= lambda!174377 lambda!174256))))

(declare-fun bs!866527 () Bool)

(assert (= bs!866527 (and d!1398449 d!1397787)))

(assert (=> bs!866527 (= (= lt!1706198 lt!1705479) (= lambda!174377 lambda!174224))))

(declare-fun bs!866528 () Bool)

(assert (= bs!866528 (and d!1398449 b!4530552)))

(assert (=> bs!866528 (= (= lt!1706198 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174377 lambda!174333))))

(declare-fun bs!866529 () Bool)

(assert (= bs!866529 (and d!1398449 b!4530646)))

(assert (=> bs!866529 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174377 lambda!174352))))

(declare-fun bs!866530 () Bool)

(assert (= bs!866530 (and d!1398449 b!4530732)))

(assert (=> bs!866530 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174377 lambda!174371))))

(declare-fun bs!866531 () Bool)

(assert (= bs!866531 (and d!1398449 b!4530613)))

(assert (=> bs!866531 (= (= lt!1706198 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174377 lambda!174346))))

(assert (=> bs!866524 (= (= lt!1706198 lt!1705027) (= lambda!174377 lambda!174166))))

(declare-fun bs!866532 () Bool)

(assert (= bs!866532 (and d!1398449 b!4530649)))

(assert (=> bs!866532 (= (= lt!1706198 lt!1706086) (= lambda!174377 lambda!174354))))

(declare-fun bs!866533 () Bool)

(assert (= bs!866533 (and d!1398449 d!1398347)))

(assert (=> bs!866533 (= (= lt!1706198 lt!1706052) (= lambda!174377 lambda!174348))))

(assert (=> bs!866528 (= (= lt!1706198 lt!1705953) (= lambda!174377 lambda!174334))))

(assert (=> bs!866531 (= (= lt!1706198 lt!1706040) (= lambda!174377 lambda!174347))))

(declare-fun bs!866534 () Bool)

(assert (= bs!866534 (and d!1398449 d!1398371)))

(assert (=> bs!866534 (= (= lt!1706198 lt!1706098) (= lambda!174377 lambda!174356))))

(declare-fun bs!866535 () Bool)

(assert (= bs!866535 (and d!1398449 b!4529431)))

(assert (=> bs!866535 (= (= lt!1706198 lt!1705001) (= lambda!174377 lambda!174178))))

(declare-fun bs!866536 () Bool)

(assert (= bs!866536 (and d!1398449 d!1398281)))

(assert (=> bs!866536 (= (= lt!1706198 lt!1705212) (= lambda!174377 lambda!174327))))

(declare-fun bs!866537 () Bool)

(assert (= bs!866537 (and d!1398449 b!4529733)))

(assert (=> bs!866537 (= (= lt!1706198 lt!1705517) (= lambda!174377 lambda!174233))))

(declare-fun bs!866538 () Bool)

(assert (= bs!866538 (and d!1398449 d!1398315)))

(assert (=> bs!866538 (= (= lt!1706198 lt!1705965) (= lambda!174377 lambda!174335))))

(assert (=> bs!866537 (= (= lt!1706198 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174377 lambda!174232))))

(assert (=> bs!866526 (= (= lt!1706198 (-!404 lt!1705001 key!3287)) (= lambda!174377 lambda!174255))))

(declare-fun bs!866539 () Bool)

(assert (= bs!866539 (and d!1398449 b!4529933)))

(assert (=> bs!866539 (= (= lt!1706198 (-!404 lt!1705001 key!3287)) (= lambda!174377 lambda!174254))))

(declare-fun bs!866540 () Bool)

(assert (= bs!866540 (and d!1398449 b!4529434)))

(assert (=> bs!866540 (= (= lt!1706198 lt!1705266) (= lambda!174377 lambda!174180))))

(declare-fun bs!866541 () Bool)

(assert (= bs!866541 (and d!1398449 d!1398049)))

(assert (=> bs!866541 (= (= lt!1706198 lt!1705027) (= lambda!174377 lambda!174280))))

(assert (=> bs!866521 (= (= lt!1706198 lt!1705028) (= lambda!174377 lambda!174222))))

(assert (=> bs!866532 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174377 lambda!174353))))

(declare-fun bs!866543 () Bool)

(assert (= bs!866543 (and d!1398449 d!1398099)))

(assert (=> bs!866543 (not (= lambda!174377 lambda!174291))))

(declare-fun bs!866545 () Bool)

(assert (= bs!866545 (and d!1398449 d!1397779)))

(assert (=> bs!866545 (not (= lambda!174377 lambda!174220))))

(declare-fun bs!866547 () Bool)

(assert (= bs!866547 (and d!1398449 b!4529969)))

(assert (=> bs!866547 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174377 lambda!174258))))

(declare-fun bs!866549 () Bool)

(assert (= bs!866549 (and d!1398449 b!4529384)))

(assert (=> bs!866549 (= (= lt!1706198 lt!1705027) (= lambda!174377 lambda!174165))))

(declare-fun bs!866551 () Bool)

(assert (= bs!866551 (and d!1398449 b!4530549)))

(assert (=> bs!866551 (= (= lt!1706198 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174377 lambda!174329))))

(declare-fun bs!866553 () Bool)

(assert (= bs!866553 (and d!1398449 b!4529730)))

(assert (=> bs!866553 (= (= lt!1706198 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174377 lambda!174231))))

(declare-fun bs!866555 () Bool)

(assert (= bs!866555 (and d!1398449 d!1397569)))

(assert (=> bs!866555 (= (= lt!1706198 lt!1705224) (= lambda!174377 lambda!174168))))

(assert (=> bs!866520 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174377 lambda!174363))))

(declare-fun bs!866558 () Bool)

(assert (= bs!866558 (and d!1398449 d!1398357)))

(assert (=> bs!866558 (= (= lt!1706198 lt!1705467) (= lambda!174377 lambda!174349))))

(declare-fun bs!866560 () Bool)

(assert (= bs!866560 (and d!1398449 d!1397819)))

(assert (=> bs!866560 (= (= lt!1706198 lt!1705001) (= lambda!174377 lambda!174230))))

(assert (=> bs!866519 (= (= lt!1706198 lt!1705624) (= lambda!174377 lambda!174261))))

(assert (=> bs!866540 (= (= lt!1706198 lt!1705001) (= lambda!174377 lambda!174179))))

(declare-fun bs!866564 () Bool)

(assert (= bs!866564 (and d!1398449 d!1398075)))

(assert (=> bs!866564 (= (= lt!1706198 lt!1705028) (= lambda!174377 lambda!174289))))

(declare-fun bs!866566 () Bool)

(assert (= bs!866566 (and d!1398449 d!1397629)))

(assert (=> bs!866566 (= (= lt!1706198 lt!1705278) (= lambda!174377 lambda!174181))))

(declare-fun bs!866568 () Bool)

(assert (= bs!866568 (and d!1398449 d!1398395)))

(assert (=> bs!866568 (= (= lt!1706198 lt!1706147) (= lambda!174377 lambda!174367))))

(declare-fun bs!866570 () Bool)

(assert (= bs!866570 (and d!1398449 b!4530735)))

(assert (=> bs!866570 (= (= lt!1706198 lt!1706186) (= lambda!174377 lambda!174375))))

(declare-fun bs!866572 () Bool)

(assert (= bs!866572 (and d!1398449 b!4530681)))

(assert (=> bs!866572 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174377 lambda!174361))))

(declare-fun bs!866574 () Bool)

(assert (= bs!866574 (and d!1398449 b!4529688)))

(assert (=> bs!866574 (= (= lt!1706198 lt!1705028) (= lambda!174377 lambda!174221))))

(assert (=> bs!866570 (= (= lt!1706198 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174377 lambda!174374))))

(declare-fun bs!866575 () Bool)

(assert (= bs!866575 (and d!1398449 b!4530610)))

(assert (=> bs!866575 (= (= lt!1706198 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174377 lambda!174345))))

(assert (=> d!1398449 true))

(declare-fun b!4530731 () Bool)

(declare-fun e!2823080 () Bool)

(assert (=> b!4530731 (= e!2823080 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) lambda!174375))))

(declare-fun bm!315811 () Bool)

(declare-fun call!315817 () Bool)

(declare-fun c!773614 () Bool)

(assert (=> bm!315811 (= call!315817 (forall!10305 (ite c!773614 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1705004))))) (ite c!773614 lambda!174371 lambda!174375)))))

(declare-fun e!2823081 () ListMap!3625)

(assert (=> b!4530732 (= e!2823081 (extractMap!1234 (t!357783 (toList!4363 lt!1705004))))))

(declare-fun lt!1706189 () Unit!96566)

(declare-fun call!315818 () Unit!96566)

(assert (=> b!4530732 (= lt!1706189 call!315818)))

(declare-fun call!315816 () Bool)

(assert (=> b!4530732 call!315816))

(declare-fun lt!1706200 () Unit!96566)

(assert (=> b!4530732 (= lt!1706200 lt!1706189)))

(assert (=> b!4530732 call!315817))

(declare-fun lt!1706182 () Unit!96566)

(declare-fun Unit!96891 () Unit!96566)

(assert (=> b!4530732 (= lt!1706182 Unit!96891)))

(declare-fun b!4530733 () Bool)

(declare-fun res!1886892 () Bool)

(declare-fun e!2823082 () Bool)

(assert (=> b!4530733 (=> (not res!1886892) (not e!2823082))))

(assert (=> b!4530733 (= res!1886892 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) lambda!174377))))

(declare-fun bm!315812 () Bool)

(assert (=> bm!315812 (= call!315818 (lemmaContainsAllItsOwnKeys!352 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))))))

(declare-fun b!4530734 () Bool)

(assert (=> b!4530734 (= e!2823082 (invariantList!1031 (toList!4364 lt!1706198)))))

(assert (=> d!1398449 e!2823082))

(declare-fun res!1886893 () Bool)

(assert (=> d!1398449 (=> (not res!1886893) (not e!2823082))))

(assert (=> d!1398449 (= res!1886893 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1705004))) lambda!174377))))

(assert (=> d!1398449 (= lt!1706198 e!2823081)))

(assert (=> d!1398449 (= c!773614 ((_ is Nil!50696) (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(assert (=> d!1398449 (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705004))))))

(assert (=> d!1398449 (= (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 lt!1705004))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) lt!1706198)))

(declare-fun bm!315813 () Bool)

(assert (=> bm!315813 (= call!315816 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (ite c!773614 lambda!174371 lambda!174375)))))

(assert (=> b!4530735 (= e!2823081 lt!1706186)))

(declare-fun lt!1706194 () ListMap!3625)

(assert (=> b!4530735 (= lt!1706194 (+!1572 (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004))))))))

(assert (=> b!4530735 (= lt!1706186 (addToMapMapFromBucket!705 (t!357782 (_2!28868 (h!56564 (toList!4363 lt!1705004)))) (+!1572 (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))))

(declare-fun lt!1706193 () Unit!96566)

(assert (=> b!4530735 (= lt!1706193 call!315818)))

(assert (=> b!4530735 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) lambda!174374)))

(declare-fun lt!1706197 () Unit!96566)

(assert (=> b!4530735 (= lt!1706197 lt!1706193)))

(assert (=> b!4530735 (forall!10305 (toList!4364 lt!1706194) lambda!174375)))

(declare-fun lt!1706190 () Unit!96566)

(declare-fun Unit!96892 () Unit!96566)

(assert (=> b!4530735 (= lt!1706190 Unit!96892)))

(assert (=> b!4530735 call!315817))

(declare-fun lt!1706195 () Unit!96566)

(declare-fun Unit!96893 () Unit!96566)

(assert (=> b!4530735 (= lt!1706195 Unit!96893)))

(declare-fun lt!1706183 () Unit!96566)

(declare-fun Unit!96894 () Unit!96566)

(assert (=> b!4530735 (= lt!1706183 Unit!96894)))

(declare-fun lt!1706184 () Unit!96566)

(assert (=> b!4530735 (= lt!1706184 (forallContained!2559 (toList!4364 lt!1706194) lambda!174375 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004))))))))

(assert (=> b!4530735 (contains!13455 lt!1706194 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004))))))))

(declare-fun lt!1706185 () Unit!96566)

(declare-fun Unit!96895 () Unit!96566)

(assert (=> b!4530735 (= lt!1706185 Unit!96895)))

(assert (=> b!4530735 (contains!13455 lt!1706186 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004))))))))

(declare-fun lt!1706188 () Unit!96566)

(declare-fun Unit!96896 () Unit!96566)

(assert (=> b!4530735 (= lt!1706188 Unit!96896)))

(assert (=> b!4530735 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1705004))) lambda!174375)))

(declare-fun lt!1706191 () Unit!96566)

(declare-fun Unit!96897 () Unit!96566)

(assert (=> b!4530735 (= lt!1706191 Unit!96897)))

(assert (=> b!4530735 (forall!10305 (toList!4364 lt!1706194) lambda!174375)))

(declare-fun lt!1706192 () Unit!96566)

(declare-fun Unit!96898 () Unit!96566)

(assert (=> b!4530735 (= lt!1706192 Unit!96898)))

(declare-fun lt!1706187 () Unit!96566)

(declare-fun Unit!96899 () Unit!96566)

(assert (=> b!4530735 (= lt!1706187 Unit!96899)))

(declare-fun lt!1706181 () Unit!96566)

(assert (=> b!4530735 (= lt!1706181 (addForallContainsKeyThenBeforeAdding!352 (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706186 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004))))) (_2!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))))

(assert (=> b!4530735 call!315816))

(declare-fun lt!1706199 () Unit!96566)

(assert (=> b!4530735 (= lt!1706199 lt!1706181)))

(assert (=> b!4530735 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) lambda!174375)))

(declare-fun lt!1706196 () Unit!96566)

(declare-fun Unit!96900 () Unit!96566)

(assert (=> b!4530735 (= lt!1706196 Unit!96900)))

(declare-fun res!1886891 () Bool)

(assert (=> b!4530735 (= res!1886891 (forall!10305 (_2!28868 (h!56564 (toList!4363 lt!1705004))) lambda!174375))))

(assert (=> b!4530735 (=> (not res!1886891) (not e!2823080))))

(assert (=> b!4530735 e!2823080))

(declare-fun lt!1706201 () Unit!96566)

(declare-fun Unit!96901 () Unit!96566)

(assert (=> b!4530735 (= lt!1706201 Unit!96901)))

(assert (= (and d!1398449 c!773614) b!4530732))

(assert (= (and d!1398449 (not c!773614)) b!4530735))

(assert (= (and b!4530735 res!1886891) b!4530731))

(assert (= (or b!4530732 b!4530735) bm!315813))

(assert (= (or b!4530732 b!4530735) bm!315811))

(assert (= (or b!4530732 b!4530735) bm!315812))

(assert (= (and d!1398449 res!1886893) b!4530733))

(assert (= (and b!4530733 res!1886892) b!4530734))

(declare-fun m!5288079 () Bool)

(assert (=> d!1398449 m!5288079))

(declare-fun m!5288081 () Bool)

(assert (=> d!1398449 m!5288081))

(declare-fun m!5288083 () Bool)

(assert (=> b!4530735 m!5288083))

(assert (=> b!4530735 m!5288083))

(declare-fun m!5288085 () Bool)

(assert (=> b!4530735 m!5288085))

(declare-fun m!5288087 () Bool)

(assert (=> b!4530735 m!5288087))

(assert (=> b!4530735 m!5285679))

(declare-fun m!5288089 () Bool)

(assert (=> b!4530735 m!5288089))

(declare-fun m!5288091 () Bool)

(assert (=> b!4530735 m!5288091))

(declare-fun m!5288093 () Bool)

(assert (=> b!4530735 m!5288093))

(declare-fun m!5288095 () Bool)

(assert (=> b!4530735 m!5288095))

(declare-fun m!5288097 () Bool)

(assert (=> b!4530735 m!5288097))

(declare-fun m!5288099 () Bool)

(assert (=> b!4530735 m!5288099))

(declare-fun m!5288101 () Bool)

(assert (=> b!4530735 m!5288101))

(assert (=> b!4530735 m!5285679))

(assert (=> b!4530735 m!5288095))

(assert (=> b!4530735 m!5288085))

(assert (=> b!4530731 m!5288087))

(declare-fun m!5288103 () Bool)

(assert (=> bm!315811 m!5288103))

(declare-fun m!5288105 () Bool)

(assert (=> b!4530733 m!5288105))

(assert (=> bm!315812 m!5285679))

(declare-fun m!5288107 () Bool)

(assert (=> bm!315812 m!5288107))

(declare-fun m!5288109 () Bool)

(assert (=> b!4530734 m!5288109))

(declare-fun m!5288111 () Bool)

(assert (=> bm!315813 m!5288111))

(assert (=> b!4529502 d!1398449))

(declare-fun bs!866596 () Bool)

(declare-fun d!1398455 () Bool)

(assert (= bs!866596 (and d!1398455 d!1397661)))

(declare-fun lambda!174379 () Int)

(assert (=> bs!866596 (= lambda!174379 lambda!174187)))

(declare-fun bs!866597 () Bool)

(assert (= bs!866597 (and d!1398455 d!1397797)))

(assert (=> bs!866597 (= lambda!174379 lambda!174227)))

(declare-fun bs!866598 () Bool)

(assert (= bs!866598 (and d!1398455 d!1397711)))

(assert (=> bs!866598 (= lambda!174379 lambda!174203)))

(declare-fun bs!866599 () Bool)

(assert (= bs!866599 (and d!1398455 d!1397727)))

(assert (=> bs!866599 (= lambda!174379 lambda!174209)))

(declare-fun bs!866600 () Bool)

(assert (= bs!866600 (and d!1398455 d!1397665)))

(assert (=> bs!866600 (= lambda!174379 lambda!174190)))

(declare-fun bs!866601 () Bool)

(assert (= bs!866601 (and d!1398455 d!1397751)))

(assert (=> bs!866601 (not (= lambda!174379 lambda!174212))))

(declare-fun bs!866602 () Bool)

(assert (= bs!866602 (and d!1398455 d!1397607)))

(assert (=> bs!866602 (= lambda!174379 lambda!174177)))

(declare-fun bs!866603 () Bool)

(assert (= bs!866603 (and d!1398455 d!1397767)))

(assert (=> bs!866603 (= lambda!174379 lambda!174216)))

(declare-fun bs!866604 () Bool)

(assert (= bs!866604 (and d!1398455 d!1397705)))

(assert (=> bs!866604 (= lambda!174379 lambda!174197)))

(declare-fun bs!866605 () Bool)

(assert (= bs!866605 (and d!1398455 d!1397669)))

(assert (=> bs!866605 (= lambda!174379 lambda!174191)))

(declare-fun bs!866606 () Bool)

(assert (= bs!866606 (and d!1398455 b!4529273)))

(assert (=> bs!866606 (not (= lambda!174379 lambda!174088))))

(declare-fun bs!866607 () Bool)

(assert (= bs!866607 (and d!1398455 d!1397769)))

(assert (=> bs!866607 (= lambda!174379 lambda!174217)))

(declare-fun bs!866608 () Bool)

(assert (= bs!866608 (and d!1398455 d!1397765)))

(assert (=> bs!866608 (= lambda!174379 lambda!174213)))

(declare-fun bs!866609 () Bool)

(assert (= bs!866609 (and d!1398455 start!449036)))

(assert (=> bs!866609 (= lambda!174379 lambda!174087)))

(declare-fun bs!866610 () Bool)

(assert (= bs!866610 (and d!1398455 d!1398269)))

(assert (=> bs!866610 (= lambda!174379 lambda!174318)))

(declare-fun bs!866611 () Bool)

(assert (= bs!866611 (and d!1398455 d!1398383)))

(assert (=> bs!866611 (= lambda!174379 lambda!174359)))

(declare-fun bs!866612 () Bool)

(assert (= bs!866612 (and d!1398455 d!1397823)))

(assert (=> bs!866612 (= lambda!174379 lambda!174235)))

(declare-fun bs!866613 () Bool)

(assert (= bs!866613 (and d!1398455 d!1397939)))

(assert (=> bs!866613 (= lambda!174379 lambda!174266)))

(declare-fun lt!1706203 () ListMap!3625)

(assert (=> d!1398455 (invariantList!1031 (toList!4364 lt!1706203))))

(declare-fun e!2823085 () ListMap!3625)

(assert (=> d!1398455 (= lt!1706203 e!2823085)))

(declare-fun c!773615 () Bool)

(assert (=> d!1398455 (= c!773615 ((_ is Cons!50697) (t!357783 (toList!4363 lt!1705004))))))

(assert (=> d!1398455 (forall!10303 (t!357783 (toList!4363 lt!1705004)) lambda!174379)))

(assert (=> d!1398455 (= (extractMap!1234 (t!357783 (toList!4363 lt!1705004))) lt!1706203)))

(declare-fun b!4530738 () Bool)

(assert (=> b!4530738 (= e!2823085 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (toList!4363 lt!1705004)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lt!1705004))))))))

(declare-fun b!4530739 () Bool)

(assert (=> b!4530739 (= e!2823085 (ListMap!3626 Nil!50696))))

(assert (= (and d!1398455 c!773615) b!4530738))

(assert (= (and d!1398455 (not c!773615)) b!4530739))

(declare-fun m!5288141 () Bool)

(assert (=> d!1398455 m!5288141))

(declare-fun m!5288143 () Bool)

(assert (=> d!1398455 m!5288143))

(declare-fun m!5288145 () Bool)

(assert (=> b!4530738 m!5288145))

(assert (=> b!4530738 m!5288145))

(declare-fun m!5288147 () Bool)

(assert (=> b!4530738 m!5288147))

(assert (=> b!4529502 d!1398455))

(assert (=> b!4529555 d!1398053))

(declare-fun d!1398461 () Bool)

(assert (=> d!1398461 (dynLambda!21188 lambda!174180 (h!56563 (_2!28868 lt!1705015)))))

(declare-fun lt!1706220 () Unit!96566)

(assert (=> d!1398461 (= lt!1706220 (choose!29705 (toList!4364 lt!1705274) lambda!174180 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun e!2823098 () Bool)

(assert (=> d!1398461 e!2823098))

(declare-fun res!1886902 () Bool)

(assert (=> d!1398461 (=> (not res!1886902) (not e!2823098))))

(assert (=> d!1398461 (= res!1886902 (forall!10305 (toList!4364 lt!1705274) lambda!174180))))

(assert (=> d!1398461 (= (forallContained!2559 (toList!4364 lt!1705274) lambda!174180 (h!56563 (_2!28868 lt!1705015))) lt!1706220)))

(declare-fun b!4530758 () Bool)

(assert (=> b!4530758 (= e!2823098 (contains!13458 (toList!4364 lt!1705274) (h!56563 (_2!28868 lt!1705015))))))

(assert (= (and d!1398461 res!1886902) b!4530758))

(declare-fun b_lambda!156489 () Bool)

(assert (=> (not b_lambda!156489) (not d!1398461)))

(declare-fun m!5288149 () Bool)

(assert (=> d!1398461 m!5288149))

(declare-fun m!5288151 () Bool)

(assert (=> d!1398461 m!5288151))

(assert (=> d!1398461 m!5285473))

(declare-fun m!5288153 () Bool)

(assert (=> b!4530758 m!5288153))

(assert (=> b!4529434 d!1398461))

(declare-fun bs!866614 () Bool)

(declare-fun d!1398463 () Bool)

(assert (= bs!866614 (and d!1398463 d!1397915)))

(declare-fun lambda!174380 () Int)

(assert (=> bs!866614 (= (= lt!1705266 lt!1705606) (= lambda!174380 lambda!174257))))

(declare-fun bs!866615 () Bool)

(assert (= bs!866615 (and d!1398463 b!4529972)))

(assert (=> bs!866615 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174380 lambda!174260))))

(declare-fun bs!866616 () Bool)

(assert (= bs!866616 (and d!1398463 b!4530684)))

(assert (=> bs!866616 (= (= lt!1705266 lt!1706135) (= lambda!174380 lambda!174364))))

(declare-fun bs!866617 () Bool)

(assert (= bs!866617 (and d!1398463 b!4529691)))

(assert (=> bs!866617 (= (= lt!1705266 lt!1705467) (= lambda!174380 lambda!174223))))

(declare-fun bs!866618 () Bool)

(assert (= bs!866618 (and d!1398463 d!1397935)))

(assert (=> bs!866618 (= (= lt!1705266 lt!1705636) (= lambda!174380 lambda!174264))))

(declare-fun bs!866619 () Bool)

(assert (= bs!866619 (and d!1398463 d!1397821)))

(assert (=> bs!866619 (= (= lt!1705266 lt!1705529) (= lambda!174380 lambda!174234))))

(declare-fun bs!866620 () Bool)

(assert (= bs!866620 (and d!1398463 b!4529387)))

(assert (=> bs!866620 (= (= lt!1705266 lt!1705212) (= lambda!174380 lambda!174167))))

(declare-fun bs!866621 () Bool)

(assert (= bs!866621 (and d!1398463 b!4529273)))

(assert (=> bs!866621 (not (= lambda!174380 lambda!174089))))

(declare-fun bs!866622 () Bool)

(assert (= bs!866622 (and d!1398463 b!4529936)))

(assert (=> bs!866622 (= (= lt!1705266 lt!1705594) (= lambda!174380 lambda!174256))))

(declare-fun bs!866623 () Bool)

(assert (= bs!866623 (and d!1398463 d!1397787)))

(assert (=> bs!866623 (= (= lt!1705266 lt!1705479) (= lambda!174380 lambda!174224))))

(declare-fun bs!866624 () Bool)

(assert (= bs!866624 (and d!1398463 b!4530552)))

(assert (=> bs!866624 (= (= lt!1705266 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174380 lambda!174333))))

(declare-fun bs!866625 () Bool)

(assert (= bs!866625 (and d!1398463 b!4530646)))

(assert (=> bs!866625 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174380 lambda!174352))))

(declare-fun bs!866626 () Bool)

(assert (= bs!866626 (and d!1398463 b!4530732)))

(assert (=> bs!866626 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174380 lambda!174371))))

(declare-fun bs!866627 () Bool)

(assert (= bs!866627 (and d!1398463 b!4530613)))

(assert (=> bs!866627 (= (= lt!1705266 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174380 lambda!174346))))

(assert (=> bs!866620 (= (= lt!1705266 lt!1705027) (= lambda!174380 lambda!174166))))

(declare-fun bs!866628 () Bool)

(assert (= bs!866628 (and d!1398463 b!4530649)))

(assert (=> bs!866628 (= (= lt!1705266 lt!1706086) (= lambda!174380 lambda!174354))))

(declare-fun bs!866629 () Bool)

(assert (= bs!866629 (and d!1398463 d!1398347)))

(assert (=> bs!866629 (= (= lt!1705266 lt!1706052) (= lambda!174380 lambda!174348))))

(assert (=> bs!866624 (= (= lt!1705266 lt!1705953) (= lambda!174380 lambda!174334))))

(assert (=> bs!866627 (= (= lt!1705266 lt!1706040) (= lambda!174380 lambda!174347))))

(declare-fun bs!866630 () Bool)

(assert (= bs!866630 (and d!1398463 d!1398371)))

(assert (=> bs!866630 (= (= lt!1705266 lt!1706098) (= lambda!174380 lambda!174356))))

(declare-fun bs!866631 () Bool)

(assert (= bs!866631 (and d!1398463 b!4529431)))

(assert (=> bs!866631 (= (= lt!1705266 lt!1705001) (= lambda!174380 lambda!174178))))

(declare-fun bs!866632 () Bool)

(assert (= bs!866632 (and d!1398463 d!1398281)))

(assert (=> bs!866632 (= (= lt!1705266 lt!1705212) (= lambda!174380 lambda!174327))))

(declare-fun bs!866633 () Bool)

(assert (= bs!866633 (and d!1398463 b!4529733)))

(assert (=> bs!866633 (= (= lt!1705266 lt!1705517) (= lambda!174380 lambda!174233))))

(declare-fun bs!866634 () Bool)

(assert (= bs!866634 (and d!1398463 d!1398315)))

(assert (=> bs!866634 (= (= lt!1705266 lt!1705965) (= lambda!174380 lambda!174335))))

(assert (=> bs!866633 (= (= lt!1705266 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174380 lambda!174232))))

(assert (=> bs!866622 (= (= lt!1705266 (-!404 lt!1705001 key!3287)) (= lambda!174380 lambda!174255))))

(declare-fun bs!866635 () Bool)

(assert (= bs!866635 (and d!1398463 b!4529933)))

(assert (=> bs!866635 (= (= lt!1705266 (-!404 lt!1705001 key!3287)) (= lambda!174380 lambda!174254))))

(declare-fun bs!866636 () Bool)

(assert (= bs!866636 (and d!1398463 b!4529434)))

(assert (=> bs!866636 (= lambda!174380 lambda!174180)))

(declare-fun bs!866637 () Bool)

(assert (= bs!866637 (and d!1398463 d!1398049)))

(assert (=> bs!866637 (= (= lt!1705266 lt!1705027) (= lambda!174380 lambda!174280))))

(assert (=> bs!866617 (= (= lt!1705266 lt!1705028) (= lambda!174380 lambda!174222))))

(assert (=> bs!866628 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174380 lambda!174353))))

(declare-fun bs!866638 () Bool)

(assert (= bs!866638 (and d!1398463 d!1398099)))

(assert (=> bs!866638 (not (= lambda!174380 lambda!174291))))

(declare-fun bs!866639 () Bool)

(assert (= bs!866639 (and d!1398463 d!1397779)))

(assert (=> bs!866639 (not (= lambda!174380 lambda!174220))))

(declare-fun bs!866641 () Bool)

(assert (= bs!866641 (and d!1398463 b!4529969)))

(assert (=> bs!866641 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174380 lambda!174258))))

(declare-fun bs!866642 () Bool)

(assert (= bs!866642 (and d!1398463 b!4529384)))

(assert (=> bs!866642 (= (= lt!1705266 lt!1705027) (= lambda!174380 lambda!174165))))

(declare-fun bs!866644 () Bool)

(assert (= bs!866644 (and d!1398463 b!4530549)))

(assert (=> bs!866644 (= (= lt!1705266 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174380 lambda!174329))))

(declare-fun bs!866645 () Bool)

(assert (= bs!866645 (and d!1398463 b!4529730)))

(assert (=> bs!866645 (= (= lt!1705266 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174380 lambda!174231))))

(declare-fun bs!866646 () Bool)

(assert (= bs!866646 (and d!1398463 d!1397569)))

(assert (=> bs!866646 (= (= lt!1705266 lt!1705224) (= lambda!174380 lambda!174168))))

(assert (=> bs!866616 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174380 lambda!174363))))

(declare-fun bs!866647 () Bool)

(assert (= bs!866647 (and d!1398463 d!1398357)))

(assert (=> bs!866647 (= (= lt!1705266 lt!1705467) (= lambda!174380 lambda!174349))))

(declare-fun bs!866648 () Bool)

(assert (= bs!866648 (and d!1398463 d!1397819)))

(assert (=> bs!866648 (= (= lt!1705266 lt!1705001) (= lambda!174380 lambda!174230))))

(assert (=> bs!866615 (= (= lt!1705266 lt!1705624) (= lambda!174380 lambda!174261))))

(assert (=> bs!866636 (= (= lt!1705266 lt!1705001) (= lambda!174380 lambda!174179))))

(declare-fun bs!866649 () Bool)

(assert (= bs!866649 (and d!1398463 d!1398075)))

(assert (=> bs!866649 (= (= lt!1705266 lt!1705028) (= lambda!174380 lambda!174289))))

(declare-fun bs!866650 () Bool)

(assert (= bs!866650 (and d!1398463 d!1397629)))

(assert (=> bs!866650 (= (= lt!1705266 lt!1705278) (= lambda!174380 lambda!174181))))

(declare-fun bs!866651 () Bool)

(assert (= bs!866651 (and d!1398463 d!1398395)))

(assert (=> bs!866651 (= (= lt!1705266 lt!1706147) (= lambda!174380 lambda!174367))))

(declare-fun bs!866652 () Bool)

(assert (= bs!866652 (and d!1398463 b!4530735)))

(assert (=> bs!866652 (= (= lt!1705266 lt!1706186) (= lambda!174380 lambda!174375))))

(declare-fun bs!866653 () Bool)

(assert (= bs!866653 (and d!1398463 b!4530681)))

(assert (=> bs!866653 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174380 lambda!174361))))

(declare-fun bs!866654 () Bool)

(assert (= bs!866654 (and d!1398463 b!4529688)))

(assert (=> bs!866654 (= (= lt!1705266 lt!1705028) (= lambda!174380 lambda!174221))))

(assert (=> bs!866652 (= (= lt!1705266 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174380 lambda!174374))))

(declare-fun bs!866655 () Bool)

(assert (= bs!866655 (and d!1398463 b!4530610)))

(assert (=> bs!866655 (= (= lt!1705266 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174380 lambda!174345))))

(declare-fun bs!866656 () Bool)

(assert (= bs!866656 (and d!1398463 d!1398449)))

(assert (=> bs!866656 (= (= lt!1705266 lt!1706198) (= lambda!174380 lambda!174377))))

(assert (=> d!1398463 true))

(assert (=> d!1398463 (forall!10305 (toList!4364 lt!1705001) lambda!174380)))

(declare-fun lt!1706221 () Unit!96566)

(assert (=> d!1398463 (= lt!1706221 (choose!29731 lt!1705001 lt!1705266 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398463 (forall!10305 (toList!4364 (+!1572 lt!1705001 (tuple2!51147 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))) lambda!174380)))

(assert (=> d!1398463 (= (addForallContainsKeyThenBeforeAdding!352 lt!1705001 lt!1705266 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1706221)))

(declare-fun bs!866657 () Bool)

(assert (= bs!866657 d!1398463))

(declare-fun m!5288227 () Bool)

(assert (=> bs!866657 m!5288227))

(declare-fun m!5288229 () Bool)

(assert (=> bs!866657 m!5288229))

(declare-fun m!5288231 () Bool)

(assert (=> bs!866657 m!5288231))

(declare-fun m!5288233 () Bool)

(assert (=> bs!866657 m!5288233))

(assert (=> b!4529434 d!1398463))

(declare-fun bs!866658 () Bool)

(declare-fun b!4530778 () Bool)

(assert (= bs!866658 (and b!4530778 d!1397915)))

(declare-fun lambda!174381 () Int)

(assert (=> bs!866658 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705606) (= lambda!174381 lambda!174257))))

(declare-fun bs!866659 () Bool)

(assert (= bs!866659 (and b!4530778 b!4529972)))

(assert (=> bs!866659 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174381 lambda!174260))))

(declare-fun bs!866660 () Bool)

(assert (= bs!866660 (and b!4530778 b!4530684)))

(assert (=> bs!866660 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706135) (= lambda!174381 lambda!174364))))

(declare-fun bs!866661 () Bool)

(assert (= bs!866661 (and b!4530778 b!4529691)))

(assert (=> bs!866661 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174381 lambda!174223))))

(declare-fun bs!866662 () Bool)

(assert (= bs!866662 (and b!4530778 d!1397935)))

(assert (=> bs!866662 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705636) (= lambda!174381 lambda!174264))))

(declare-fun bs!866663 () Bool)

(assert (= bs!866663 (and b!4530778 d!1397821)))

(assert (=> bs!866663 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705529) (= lambda!174381 lambda!174234))))

(declare-fun bs!866664 () Bool)

(assert (= bs!866664 (and b!4530778 b!4529387)))

(assert (=> bs!866664 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174381 lambda!174167))))

(declare-fun bs!866665 () Bool)

(assert (= bs!866665 (and b!4530778 b!4529273)))

(assert (=> bs!866665 (not (= lambda!174381 lambda!174089))))

(declare-fun bs!866666 () Bool)

(assert (= bs!866666 (and b!4530778 b!4529936)))

(assert (=> bs!866666 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705594) (= lambda!174381 lambda!174256))))

(declare-fun bs!866667 () Bool)

(assert (= bs!866667 (and b!4530778 d!1397787)))

(assert (=> bs!866667 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705479) (= lambda!174381 lambda!174224))))

(declare-fun bs!866668 () Bool)

(assert (= bs!866668 (and b!4530778 b!4530552)))

(assert (=> bs!866668 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174381 lambda!174333))))

(declare-fun bs!866669 () Bool)

(assert (= bs!866669 (and b!4530778 b!4530646)))

(assert (=> bs!866669 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174381 lambda!174352))))

(declare-fun bs!866670 () Bool)

(assert (= bs!866670 (and b!4530778 b!4530732)))

(assert (=> bs!866670 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174381 lambda!174371))))

(declare-fun bs!866671 () Bool)

(assert (= bs!866671 (and b!4530778 b!4530613)))

(assert (=> bs!866671 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174381 lambda!174346))))

(assert (=> bs!866664 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174381 lambda!174166))))

(declare-fun bs!866672 () Bool)

(assert (= bs!866672 (and b!4530778 b!4530649)))

(assert (=> bs!866672 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706086) (= lambda!174381 lambda!174354))))

(declare-fun bs!866673 () Bool)

(assert (= bs!866673 (and b!4530778 d!1398347)))

(assert (=> bs!866673 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706052) (= lambda!174381 lambda!174348))))

(assert (=> bs!866668 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705953) (= lambda!174381 lambda!174334))))

(assert (=> bs!866671 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706040) (= lambda!174381 lambda!174347))))

(declare-fun bs!866674 () Bool)

(assert (= bs!866674 (and b!4530778 d!1398371)))

(assert (=> bs!866674 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706098) (= lambda!174381 lambda!174356))))

(declare-fun bs!866675 () Bool)

(assert (= bs!866675 (and b!4530778 b!4529431)))

(assert (=> bs!866675 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174381 lambda!174178))))

(declare-fun bs!866676 () Bool)

(assert (= bs!866676 (and b!4530778 d!1398281)))

(assert (=> bs!866676 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174381 lambda!174327))))

(declare-fun bs!866677 () Bool)

(assert (= bs!866677 (and b!4530778 b!4529733)))

(assert (=> bs!866677 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705517) (= lambda!174381 lambda!174233))))

(declare-fun bs!866678 () Bool)

(assert (= bs!866678 (and b!4530778 d!1398315)))

(assert (=> bs!866678 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705965) (= lambda!174381 lambda!174335))))

(assert (=> bs!866677 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174381 lambda!174232))))

(declare-fun bs!866679 () Bool)

(assert (= bs!866679 (and b!4530778 d!1398463)))

(assert (=> bs!866679 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174381 lambda!174380))))

(assert (=> bs!866666 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174381 lambda!174255))))

(declare-fun bs!866680 () Bool)

(assert (= bs!866680 (and b!4530778 b!4529933)))

(assert (=> bs!866680 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174381 lambda!174254))))

(declare-fun bs!866681 () Bool)

(assert (= bs!866681 (and b!4530778 b!4529434)))

(assert (=> bs!866681 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174381 lambda!174180))))

(declare-fun bs!866682 () Bool)

(assert (= bs!866682 (and b!4530778 d!1398049)))

(assert (=> bs!866682 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174381 lambda!174280))))

(assert (=> bs!866661 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174381 lambda!174222))))

(assert (=> bs!866672 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174381 lambda!174353))))

(declare-fun bs!866683 () Bool)

(assert (= bs!866683 (and b!4530778 d!1398099)))

(assert (=> bs!866683 (not (= lambda!174381 lambda!174291))))

(declare-fun bs!866684 () Bool)

(assert (= bs!866684 (and b!4530778 d!1397779)))

(assert (=> bs!866684 (not (= lambda!174381 lambda!174220))))

(declare-fun bs!866685 () Bool)

(assert (= bs!866685 (and b!4530778 b!4529969)))

(assert (=> bs!866685 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174381 lambda!174258))))

(declare-fun bs!866686 () Bool)

(assert (= bs!866686 (and b!4530778 b!4529384)))

(assert (=> bs!866686 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174381 lambda!174165))))

(declare-fun bs!866687 () Bool)

(assert (= bs!866687 (and b!4530778 b!4530549)))

(assert (=> bs!866687 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174381 lambda!174329))))

(declare-fun bs!866688 () Bool)

(assert (= bs!866688 (and b!4530778 b!4529730)))

(assert (=> bs!866688 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174381 lambda!174231))))

(declare-fun bs!866689 () Bool)

(assert (= bs!866689 (and b!4530778 d!1397569)))

(assert (=> bs!866689 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705224) (= lambda!174381 lambda!174168))))

(assert (=> bs!866660 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174381 lambda!174363))))

(declare-fun bs!866690 () Bool)

(assert (= bs!866690 (and b!4530778 d!1398357)))

(assert (=> bs!866690 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174381 lambda!174349))))

(declare-fun bs!866691 () Bool)

(assert (= bs!866691 (and b!4530778 d!1397819)))

(assert (=> bs!866691 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174381 lambda!174230))))

(assert (=> bs!866659 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705624) (= lambda!174381 lambda!174261))))

(assert (=> bs!866681 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174381 lambda!174179))))

(declare-fun bs!866692 () Bool)

(assert (= bs!866692 (and b!4530778 d!1398075)))

(assert (=> bs!866692 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174381 lambda!174289))))

(declare-fun bs!866693 () Bool)

(assert (= bs!866693 (and b!4530778 d!1397629)))

(assert (=> bs!866693 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705278) (= lambda!174381 lambda!174181))))

(declare-fun bs!866694 () Bool)

(assert (= bs!866694 (and b!4530778 d!1398395)))

(assert (=> bs!866694 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706147) (= lambda!174381 lambda!174367))))

(declare-fun bs!866695 () Bool)

(assert (= bs!866695 (and b!4530778 b!4530735)))

(assert (=> bs!866695 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706186) (= lambda!174381 lambda!174375))))

(declare-fun bs!866696 () Bool)

(assert (= bs!866696 (and b!4530778 b!4530681)))

(assert (=> bs!866696 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174381 lambda!174361))))

(declare-fun bs!866697 () Bool)

(assert (= bs!866697 (and b!4530778 b!4529688)))

(assert (=> bs!866697 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174381 lambda!174221))))

(assert (=> bs!866695 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174381 lambda!174374))))

(declare-fun bs!866698 () Bool)

(assert (= bs!866698 (and b!4530778 b!4530610)))

(assert (=> bs!866698 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174381 lambda!174345))))

(declare-fun bs!866699 () Bool)

(assert (= bs!866699 (and b!4530778 d!1398449)))

(assert (=> bs!866699 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706198) (= lambda!174381 lambda!174377))))

(assert (=> b!4530778 true))

(declare-fun bs!866700 () Bool)

(declare-fun b!4530781 () Bool)

(assert (= bs!866700 (and b!4530781 d!1397915)))

(declare-fun lambda!174382 () Int)

(assert (=> bs!866700 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705606) (= lambda!174382 lambda!174257))))

(declare-fun bs!866701 () Bool)

(assert (= bs!866701 (and b!4530781 b!4530778)))

(assert (=> bs!866701 (= lambda!174382 lambda!174381)))

(declare-fun bs!866702 () Bool)

(assert (= bs!866702 (and b!4530781 b!4529972)))

(assert (=> bs!866702 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174382 lambda!174260))))

(declare-fun bs!866703 () Bool)

(assert (= bs!866703 (and b!4530781 b!4530684)))

(assert (=> bs!866703 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706135) (= lambda!174382 lambda!174364))))

(declare-fun bs!866704 () Bool)

(assert (= bs!866704 (and b!4530781 b!4529691)))

(assert (=> bs!866704 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174382 lambda!174223))))

(declare-fun bs!866705 () Bool)

(assert (= bs!866705 (and b!4530781 d!1397935)))

(assert (=> bs!866705 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705636) (= lambda!174382 lambda!174264))))

(declare-fun bs!866706 () Bool)

(assert (= bs!866706 (and b!4530781 d!1397821)))

(assert (=> bs!866706 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705529) (= lambda!174382 lambda!174234))))

(declare-fun bs!866707 () Bool)

(assert (= bs!866707 (and b!4530781 b!4529387)))

(assert (=> bs!866707 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174382 lambda!174167))))

(declare-fun bs!866708 () Bool)

(assert (= bs!866708 (and b!4530781 b!4529273)))

(assert (=> bs!866708 (not (= lambda!174382 lambda!174089))))

(declare-fun bs!866709 () Bool)

(assert (= bs!866709 (and b!4530781 b!4529936)))

(assert (=> bs!866709 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705594) (= lambda!174382 lambda!174256))))

(declare-fun bs!866711 () Bool)

(assert (= bs!866711 (and b!4530781 d!1397787)))

(assert (=> bs!866711 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705479) (= lambda!174382 lambda!174224))))

(declare-fun bs!866712 () Bool)

(assert (= bs!866712 (and b!4530781 b!4530552)))

(assert (=> bs!866712 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174382 lambda!174333))))

(declare-fun bs!866713 () Bool)

(assert (= bs!866713 (and b!4530781 b!4530646)))

(assert (=> bs!866713 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174382 lambda!174352))))

(declare-fun bs!866714 () Bool)

(assert (= bs!866714 (and b!4530781 b!4530732)))

(assert (=> bs!866714 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174382 lambda!174371))))

(declare-fun bs!866715 () Bool)

(assert (= bs!866715 (and b!4530781 b!4530613)))

(assert (=> bs!866715 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174382 lambda!174346))))

(assert (=> bs!866707 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174382 lambda!174166))))

(declare-fun bs!866716 () Bool)

(assert (= bs!866716 (and b!4530781 b!4530649)))

(assert (=> bs!866716 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706086) (= lambda!174382 lambda!174354))))

(declare-fun bs!866717 () Bool)

(assert (= bs!866717 (and b!4530781 d!1398347)))

(assert (=> bs!866717 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706052) (= lambda!174382 lambda!174348))))

(assert (=> bs!866712 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705953) (= lambda!174382 lambda!174334))))

(assert (=> bs!866715 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706040) (= lambda!174382 lambda!174347))))

(declare-fun bs!866718 () Bool)

(assert (= bs!866718 (and b!4530781 d!1398371)))

(assert (=> bs!866718 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706098) (= lambda!174382 lambda!174356))))

(declare-fun bs!866719 () Bool)

(assert (= bs!866719 (and b!4530781 b!4529431)))

(assert (=> bs!866719 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174382 lambda!174178))))

(declare-fun bs!866720 () Bool)

(assert (= bs!866720 (and b!4530781 d!1398281)))

(assert (=> bs!866720 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705212) (= lambda!174382 lambda!174327))))

(declare-fun bs!866721 () Bool)

(assert (= bs!866721 (and b!4530781 b!4529733)))

(assert (=> bs!866721 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705517) (= lambda!174382 lambda!174233))))

(declare-fun bs!866722 () Bool)

(assert (= bs!866722 (and b!4530781 d!1398315)))

(assert (=> bs!866722 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705965) (= lambda!174382 lambda!174335))))

(assert (=> bs!866721 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174382 lambda!174232))))

(declare-fun bs!866723 () Bool)

(assert (= bs!866723 (and b!4530781 d!1398463)))

(assert (=> bs!866723 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174382 lambda!174380))))

(assert (=> bs!866709 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174382 lambda!174255))))

(declare-fun bs!866724 () Bool)

(assert (= bs!866724 (and b!4530781 b!4529933)))

(assert (=> bs!866724 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (-!404 lt!1705001 key!3287)) (= lambda!174382 lambda!174254))))

(declare-fun bs!866725 () Bool)

(assert (= bs!866725 (and b!4530781 b!4529434)))

(assert (=> bs!866725 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705266) (= lambda!174382 lambda!174180))))

(declare-fun bs!866726 () Bool)

(assert (= bs!866726 (and b!4530781 d!1398049)))

(assert (=> bs!866726 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174382 lambda!174280))))

(assert (=> bs!866704 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174382 lambda!174222))))

(assert (=> bs!866716 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174382 lambda!174353))))

(declare-fun bs!866727 () Bool)

(assert (= bs!866727 (and b!4530781 d!1398099)))

(assert (=> bs!866727 (not (= lambda!174382 lambda!174291))))

(declare-fun bs!866728 () Bool)

(assert (= bs!866728 (and b!4530781 d!1397779)))

(assert (=> bs!866728 (not (= lambda!174382 lambda!174220))))

(declare-fun bs!866729 () Bool)

(assert (= bs!866729 (and b!4530781 b!4529969)))

(assert (=> bs!866729 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174382 lambda!174258))))

(declare-fun bs!866730 () Bool)

(assert (= bs!866730 (and b!4530781 b!4529384)))

(assert (=> bs!866730 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705027) (= lambda!174382 lambda!174165))))

(declare-fun bs!866731 () Bool)

(assert (= bs!866731 (and b!4530781 b!4530549)))

(assert (=> bs!866731 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174382 lambda!174329))))

(declare-fun bs!866732 () Bool)

(assert (= bs!866732 (and b!4530781 b!4529730)))

(assert (=> bs!866732 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174382 lambda!174231))))

(declare-fun bs!866733 () Bool)

(assert (= bs!866733 (and b!4530781 d!1397569)))

(assert (=> bs!866733 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705224) (= lambda!174382 lambda!174168))))

(assert (=> bs!866703 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174382 lambda!174363))))

(declare-fun bs!866734 () Bool)

(assert (= bs!866734 (and b!4530781 d!1398357)))

(assert (=> bs!866734 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705467) (= lambda!174382 lambda!174349))))

(declare-fun bs!866735 () Bool)

(assert (= bs!866735 (and b!4530781 d!1397819)))

(assert (=> bs!866735 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174382 lambda!174230))))

(assert (=> bs!866702 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705624) (= lambda!174382 lambda!174261))))

(assert (=> bs!866725 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705001) (= lambda!174382 lambda!174179))))

(declare-fun bs!866736 () Bool)

(assert (= bs!866736 (and b!4530781 d!1398075)))

(assert (=> bs!866736 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174382 lambda!174289))))

(declare-fun bs!866737 () Bool)

(assert (= bs!866737 (and b!4530781 d!1397629)))

(assert (=> bs!866737 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705278) (= lambda!174382 lambda!174181))))

(declare-fun bs!866738 () Bool)

(assert (= bs!866738 (and b!4530781 d!1398395)))

(assert (=> bs!866738 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706147) (= lambda!174382 lambda!174367))))

(declare-fun bs!866739 () Bool)

(assert (= bs!866739 (and b!4530781 b!4530735)))

(assert (=> bs!866739 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706186) (= lambda!174382 lambda!174375))))

(declare-fun bs!866740 () Bool)

(assert (= bs!866740 (and b!4530781 b!4530681)))

(assert (=> bs!866740 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174382 lambda!174361))))

(declare-fun bs!866741 () Bool)

(assert (= bs!866741 (and b!4530781 b!4529688)))

(assert (=> bs!866741 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1705028) (= lambda!174382 lambda!174221))))

(assert (=> bs!866739 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174382 lambda!174374))))

(declare-fun bs!866742 () Bool)

(assert (= bs!866742 (and b!4530781 b!4530610)))

(assert (=> bs!866742 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174382 lambda!174345))))

(declare-fun bs!866743 () Bool)

(assert (= bs!866743 (and b!4530781 d!1398449)))

(assert (=> bs!866743 (= (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706198) (= lambda!174382 lambda!174377))))

(assert (=> b!4530781 true))

(declare-fun lambda!174383 () Int)

(declare-fun lt!1706240 () ListMap!3625)

(assert (=> bs!866700 (= (= lt!1706240 lt!1705606) (= lambda!174383 lambda!174257))))

(assert (=> bs!866701 (= (= lt!1706240 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174383 lambda!174381))))

(assert (=> bs!866702 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174383 lambda!174260))))

(assert (=> bs!866703 (= (= lt!1706240 lt!1706135) (= lambda!174383 lambda!174364))))

(assert (=> bs!866704 (= (= lt!1706240 lt!1705467) (= lambda!174383 lambda!174223))))

(assert (=> bs!866705 (= (= lt!1706240 lt!1705636) (= lambda!174383 lambda!174264))))

(assert (=> bs!866706 (= (= lt!1706240 lt!1705529) (= lambda!174383 lambda!174234))))

(assert (=> bs!866707 (= (= lt!1706240 lt!1705212) (= lambda!174383 lambda!174167))))

(assert (=> bs!866708 (not (= lambda!174383 lambda!174089))))

(assert (=> bs!866709 (= (= lt!1706240 lt!1705594) (= lambda!174383 lambda!174256))))

(assert (=> bs!866711 (= (= lt!1706240 lt!1705479) (= lambda!174383 lambda!174224))))

(assert (=> bs!866712 (= (= lt!1706240 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174383 lambda!174333))))

(assert (=> bs!866713 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174383 lambda!174352))))

(assert (=> bs!866714 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174383 lambda!174371))))

(assert (=> bs!866715 (= (= lt!1706240 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174383 lambda!174346))))

(assert (=> bs!866707 (= (= lt!1706240 lt!1705027) (= lambda!174383 lambda!174166))))

(assert (=> bs!866716 (= (= lt!1706240 lt!1706086) (= lambda!174383 lambda!174354))))

(assert (=> bs!866717 (= (= lt!1706240 lt!1706052) (= lambda!174383 lambda!174348))))

(assert (=> bs!866712 (= (= lt!1706240 lt!1705953) (= lambda!174383 lambda!174334))))

(assert (=> bs!866715 (= (= lt!1706240 lt!1706040) (= lambda!174383 lambda!174347))))

(assert (=> bs!866718 (= (= lt!1706240 lt!1706098) (= lambda!174383 lambda!174356))))

(assert (=> bs!866719 (= (= lt!1706240 lt!1705001) (= lambda!174383 lambda!174178))))

(assert (=> bs!866720 (= (= lt!1706240 lt!1705212) (= lambda!174383 lambda!174327))))

(assert (=> bs!866721 (= (= lt!1706240 lt!1705517) (= lambda!174383 lambda!174233))))

(assert (=> bs!866722 (= (= lt!1706240 lt!1705965) (= lambda!174383 lambda!174335))))

(assert (=> bs!866721 (= (= lt!1706240 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174383 lambda!174232))))

(assert (=> bs!866723 (= (= lt!1706240 lt!1705266) (= lambda!174383 lambda!174380))))

(assert (=> bs!866709 (= (= lt!1706240 (-!404 lt!1705001 key!3287)) (= lambda!174383 lambda!174255))))

(assert (=> bs!866724 (= (= lt!1706240 (-!404 lt!1705001 key!3287)) (= lambda!174383 lambda!174254))))

(assert (=> bs!866725 (= (= lt!1706240 lt!1705266) (= lambda!174383 lambda!174180))))

(assert (=> bs!866726 (= (= lt!1706240 lt!1705027) (= lambda!174383 lambda!174280))))

(assert (=> bs!866704 (= (= lt!1706240 lt!1705028) (= lambda!174383 lambda!174222))))

(assert (=> b!4530781 (= (= lt!1706240 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174383 lambda!174382))))

(assert (=> bs!866716 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174383 lambda!174353))))

(assert (=> bs!866727 (not (= lambda!174383 lambda!174291))))

(assert (=> bs!866728 (not (= lambda!174383 lambda!174220))))

(assert (=> bs!866729 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174383 lambda!174258))))

(assert (=> bs!866730 (= (= lt!1706240 lt!1705027) (= lambda!174383 lambda!174165))))

(assert (=> bs!866731 (= (= lt!1706240 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174383 lambda!174329))))

(assert (=> bs!866732 (= (= lt!1706240 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174383 lambda!174231))))

(assert (=> bs!866733 (= (= lt!1706240 lt!1705224) (= lambda!174383 lambda!174168))))

(assert (=> bs!866703 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174383 lambda!174363))))

(assert (=> bs!866734 (= (= lt!1706240 lt!1705467) (= lambda!174383 lambda!174349))))

(assert (=> bs!866735 (= (= lt!1706240 lt!1705001) (= lambda!174383 lambda!174230))))

(assert (=> bs!866702 (= (= lt!1706240 lt!1705624) (= lambda!174383 lambda!174261))))

(assert (=> bs!866725 (= (= lt!1706240 lt!1705001) (= lambda!174383 lambda!174179))))

(assert (=> bs!866736 (= (= lt!1706240 lt!1705028) (= lambda!174383 lambda!174289))))

(assert (=> bs!866737 (= (= lt!1706240 lt!1705278) (= lambda!174383 lambda!174181))))

(assert (=> bs!866738 (= (= lt!1706240 lt!1706147) (= lambda!174383 lambda!174367))))

(assert (=> bs!866739 (= (= lt!1706240 lt!1706186) (= lambda!174383 lambda!174375))))

(assert (=> bs!866740 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174383 lambda!174361))))

(assert (=> bs!866741 (= (= lt!1706240 lt!1705028) (= lambda!174383 lambda!174221))))

(assert (=> bs!866739 (= (= lt!1706240 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174383 lambda!174374))))

(assert (=> bs!866742 (= (= lt!1706240 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174383 lambda!174345))))

(assert (=> bs!866743 (= (= lt!1706240 lt!1706198) (= lambda!174383 lambda!174377))))

(assert (=> b!4530781 true))

(declare-fun bs!866744 () Bool)

(declare-fun d!1398485 () Bool)

(assert (= bs!866744 (and d!1398485 d!1397915)))

(declare-fun lambda!174384 () Int)

(declare-fun lt!1706252 () ListMap!3625)

(assert (=> bs!866744 (= (= lt!1706252 lt!1705606) (= lambda!174384 lambda!174257))))

(declare-fun bs!866745 () Bool)

(assert (= bs!866745 (and d!1398485 b!4530778)))

(assert (=> bs!866745 (= (= lt!1706252 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174384 lambda!174381))))

(declare-fun bs!866746 () Bool)

(assert (= bs!866746 (and d!1398485 b!4529972)))

(assert (=> bs!866746 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174384 lambda!174260))))

(declare-fun bs!866747 () Bool)

(assert (= bs!866747 (and d!1398485 b!4530684)))

(assert (=> bs!866747 (= (= lt!1706252 lt!1706135) (= lambda!174384 lambda!174364))))

(declare-fun bs!866748 () Bool)

(assert (= bs!866748 (and d!1398485 b!4529691)))

(assert (=> bs!866748 (= (= lt!1706252 lt!1705467) (= lambda!174384 lambda!174223))))

(declare-fun bs!866749 () Bool)

(assert (= bs!866749 (and d!1398485 d!1397935)))

(assert (=> bs!866749 (= (= lt!1706252 lt!1705636) (= lambda!174384 lambda!174264))))

(declare-fun bs!866750 () Bool)

(assert (= bs!866750 (and d!1398485 d!1397821)))

(assert (=> bs!866750 (= (= lt!1706252 lt!1705529) (= lambda!174384 lambda!174234))))

(declare-fun bs!866751 () Bool)

(assert (= bs!866751 (and d!1398485 b!4529273)))

(assert (=> bs!866751 (not (= lambda!174384 lambda!174089))))

(declare-fun bs!866752 () Bool)

(assert (= bs!866752 (and d!1398485 b!4529936)))

(assert (=> bs!866752 (= (= lt!1706252 lt!1705594) (= lambda!174384 lambda!174256))))

(declare-fun bs!866753 () Bool)

(assert (= bs!866753 (and d!1398485 d!1397787)))

(assert (=> bs!866753 (= (= lt!1706252 lt!1705479) (= lambda!174384 lambda!174224))))

(declare-fun bs!866754 () Bool)

(assert (= bs!866754 (and d!1398485 b!4530552)))

(assert (=> bs!866754 (= (= lt!1706252 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174384 lambda!174333))))

(declare-fun bs!866755 () Bool)

(assert (= bs!866755 (and d!1398485 b!4530646)))

(assert (=> bs!866755 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174384 lambda!174352))))

(declare-fun bs!866756 () Bool)

(assert (= bs!866756 (and d!1398485 b!4530732)))

(assert (=> bs!866756 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174384 lambda!174371))))

(declare-fun bs!866757 () Bool)

(assert (= bs!866757 (and d!1398485 b!4530613)))

(assert (=> bs!866757 (= (= lt!1706252 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174384 lambda!174346))))

(declare-fun bs!866758 () Bool)

(assert (= bs!866758 (and d!1398485 b!4529387)))

(assert (=> bs!866758 (= (= lt!1706252 lt!1705027) (= lambda!174384 lambda!174166))))

(declare-fun bs!866759 () Bool)

(assert (= bs!866759 (and d!1398485 b!4530649)))

(assert (=> bs!866759 (= (= lt!1706252 lt!1706086) (= lambda!174384 lambda!174354))))

(declare-fun bs!866760 () Bool)

(assert (= bs!866760 (and d!1398485 d!1398347)))

(assert (=> bs!866760 (= (= lt!1706252 lt!1706052) (= lambda!174384 lambda!174348))))

(assert (=> bs!866754 (= (= lt!1706252 lt!1705953) (= lambda!174384 lambda!174334))))

(assert (=> bs!866757 (= (= lt!1706252 lt!1706040) (= lambda!174384 lambda!174347))))

(declare-fun bs!866761 () Bool)

(assert (= bs!866761 (and d!1398485 d!1398371)))

(assert (=> bs!866761 (= (= lt!1706252 lt!1706098) (= lambda!174384 lambda!174356))))

(declare-fun bs!866762 () Bool)

(assert (= bs!866762 (and d!1398485 b!4529431)))

(assert (=> bs!866762 (= (= lt!1706252 lt!1705001) (= lambda!174384 lambda!174178))))

(declare-fun bs!866763 () Bool)

(assert (= bs!866763 (and d!1398485 d!1398281)))

(assert (=> bs!866763 (= (= lt!1706252 lt!1705212) (= lambda!174384 lambda!174327))))

(declare-fun bs!866764 () Bool)

(assert (= bs!866764 (and d!1398485 b!4529733)))

(assert (=> bs!866764 (= (= lt!1706252 lt!1705517) (= lambda!174384 lambda!174233))))

(declare-fun bs!866765 () Bool)

(assert (= bs!866765 (and d!1398485 d!1398315)))

(assert (=> bs!866765 (= (= lt!1706252 lt!1705965) (= lambda!174384 lambda!174335))))

(assert (=> bs!866764 (= (= lt!1706252 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174384 lambda!174232))))

(declare-fun bs!866766 () Bool)

(assert (= bs!866766 (and d!1398485 d!1398463)))

(assert (=> bs!866766 (= (= lt!1706252 lt!1705266) (= lambda!174384 lambda!174380))))

(assert (=> bs!866752 (= (= lt!1706252 (-!404 lt!1705001 key!3287)) (= lambda!174384 lambda!174255))))

(declare-fun bs!866767 () Bool)

(assert (= bs!866767 (and d!1398485 b!4529933)))

(assert (=> bs!866767 (= (= lt!1706252 (-!404 lt!1705001 key!3287)) (= lambda!174384 lambda!174254))))

(declare-fun bs!866768 () Bool)

(assert (= bs!866768 (and d!1398485 b!4529434)))

(assert (=> bs!866768 (= (= lt!1706252 lt!1705266) (= lambda!174384 lambda!174180))))

(declare-fun bs!866769 () Bool)

(assert (= bs!866769 (and d!1398485 d!1398049)))

(assert (=> bs!866769 (= (= lt!1706252 lt!1705027) (= lambda!174384 lambda!174280))))

(assert (=> bs!866748 (= (= lt!1706252 lt!1705028) (= lambda!174384 lambda!174222))))

(declare-fun bs!866770 () Bool)

(assert (= bs!866770 (and d!1398485 b!4530781)))

(assert (=> bs!866770 (= (= lt!1706252 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174384 lambda!174382))))

(assert (=> bs!866759 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174384 lambda!174353))))

(declare-fun bs!866771 () Bool)

(assert (= bs!866771 (and d!1398485 d!1398099)))

(assert (=> bs!866771 (not (= lambda!174384 lambda!174291))))

(declare-fun bs!866772 () Bool)

(assert (= bs!866772 (and d!1398485 d!1397779)))

(assert (=> bs!866772 (not (= lambda!174384 lambda!174220))))

(declare-fun bs!866773 () Bool)

(assert (= bs!866773 (and d!1398485 b!4529969)))

(assert (=> bs!866773 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174384 lambda!174258))))

(assert (=> bs!866770 (= (= lt!1706252 lt!1706240) (= lambda!174384 lambda!174383))))

(assert (=> bs!866758 (= (= lt!1706252 lt!1705212) (= lambda!174384 lambda!174167))))

(declare-fun bs!866774 () Bool)

(assert (= bs!866774 (and d!1398485 b!4529384)))

(assert (=> bs!866774 (= (= lt!1706252 lt!1705027) (= lambda!174384 lambda!174165))))

(declare-fun bs!866775 () Bool)

(assert (= bs!866775 (and d!1398485 b!4530549)))

(assert (=> bs!866775 (= (= lt!1706252 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174384 lambda!174329))))

(declare-fun bs!866776 () Bool)

(assert (= bs!866776 (and d!1398485 b!4529730)))

(assert (=> bs!866776 (= (= lt!1706252 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174384 lambda!174231))))

(declare-fun bs!866777 () Bool)

(assert (= bs!866777 (and d!1398485 d!1397569)))

(assert (=> bs!866777 (= (= lt!1706252 lt!1705224) (= lambda!174384 lambda!174168))))

(assert (=> bs!866747 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174384 lambda!174363))))

(declare-fun bs!866778 () Bool)

(assert (= bs!866778 (and d!1398485 d!1398357)))

(assert (=> bs!866778 (= (= lt!1706252 lt!1705467) (= lambda!174384 lambda!174349))))

(declare-fun bs!866779 () Bool)

(assert (= bs!866779 (and d!1398485 d!1397819)))

(assert (=> bs!866779 (= (= lt!1706252 lt!1705001) (= lambda!174384 lambda!174230))))

(assert (=> bs!866746 (= (= lt!1706252 lt!1705624) (= lambda!174384 lambda!174261))))

(assert (=> bs!866768 (= (= lt!1706252 lt!1705001) (= lambda!174384 lambda!174179))))

(declare-fun bs!866780 () Bool)

(assert (= bs!866780 (and d!1398485 d!1398075)))

(assert (=> bs!866780 (= (= lt!1706252 lt!1705028) (= lambda!174384 lambda!174289))))

(declare-fun bs!866781 () Bool)

(assert (= bs!866781 (and d!1398485 d!1397629)))

(assert (=> bs!866781 (= (= lt!1706252 lt!1705278) (= lambda!174384 lambda!174181))))

(declare-fun bs!866782 () Bool)

(assert (= bs!866782 (and d!1398485 d!1398395)))

(assert (=> bs!866782 (= (= lt!1706252 lt!1706147) (= lambda!174384 lambda!174367))))

(declare-fun bs!866783 () Bool)

(assert (= bs!866783 (and d!1398485 b!4530735)))

(assert (=> bs!866783 (= (= lt!1706252 lt!1706186) (= lambda!174384 lambda!174375))))

(declare-fun bs!866784 () Bool)

(assert (= bs!866784 (and d!1398485 b!4530681)))

(assert (=> bs!866784 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174384 lambda!174361))))

(declare-fun bs!866785 () Bool)

(assert (= bs!866785 (and d!1398485 b!4529688)))

(assert (=> bs!866785 (= (= lt!1706252 lt!1705028) (= lambda!174384 lambda!174221))))

(assert (=> bs!866783 (= (= lt!1706252 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174384 lambda!174374))))

(declare-fun bs!866786 () Bool)

(assert (= bs!866786 (and d!1398485 b!4530610)))

(assert (=> bs!866786 (= (= lt!1706252 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174384 lambda!174345))))

(declare-fun bs!866787 () Bool)

(assert (= bs!866787 (and d!1398485 d!1398449)))

(assert (=> bs!866787 (= (= lt!1706252 lt!1706198) (= lambda!174384 lambda!174377))))

(assert (=> d!1398485 true))

(declare-fun e!2823113 () Bool)

(declare-fun b!4530777 () Bool)

(assert (=> b!4530777 (= e!2823113 (forall!10305 (toList!4364 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) lambda!174383))))

(declare-fun call!315823 () Bool)

(declare-fun c!773625 () Bool)

(declare-fun bm!315817 () Bool)

(assert (=> bm!315817 (= call!315823 (forall!10305 (ite c!773625 (toList!4364 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (t!357782 (t!357782 (_2!28868 lt!1705015)))) (ite c!773625 lambda!174381 lambda!174383)))))

(declare-fun e!2823114 () ListMap!3625)

(assert (=> b!4530778 (= e!2823114 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun lt!1706243 () Unit!96566)

(declare-fun call!315824 () Unit!96566)

(assert (=> b!4530778 (= lt!1706243 call!315824)))

(declare-fun call!315822 () Bool)

(assert (=> b!4530778 call!315822))

(declare-fun lt!1706254 () Unit!96566)

(assert (=> b!4530778 (= lt!1706254 lt!1706243)))

(assert (=> b!4530778 call!315823))

(declare-fun lt!1706236 () Unit!96566)

(declare-fun Unit!96917 () Unit!96566)

(assert (=> b!4530778 (= lt!1706236 Unit!96917)))

(declare-fun b!4530779 () Bool)

(declare-fun res!1886916 () Bool)

(declare-fun e!2823115 () Bool)

(assert (=> b!4530779 (=> (not res!1886916) (not e!2823115))))

(assert (=> b!4530779 (= res!1886916 (forall!10305 (toList!4364 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) lambda!174384))))

(declare-fun bm!315818 () Bool)

(assert (=> bm!315818 (= call!315824 (lemmaContainsAllItsOwnKeys!352 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun b!4530780 () Bool)

(assert (=> b!4530780 (= e!2823115 (invariantList!1031 (toList!4364 lt!1706252)))))

(assert (=> d!1398485 e!2823115))

(declare-fun res!1886917 () Bool)

(assert (=> d!1398485 (=> (not res!1886917) (not e!2823115))))

(assert (=> d!1398485 (= res!1886917 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174384))))

(assert (=> d!1398485 (= lt!1706252 e!2823114)))

(assert (=> d!1398485 (= c!773625 ((_ is Nil!50696) (t!357782 (_2!28868 lt!1705015))))))

(assert (=> d!1398485 (noDuplicateKeys!1178 (t!357782 (_2!28868 lt!1705015)))))

(assert (=> d!1398485 (= (addToMapMapFromBucket!705 (t!357782 (_2!28868 lt!1705015)) (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) lt!1706252)))

(declare-fun bm!315819 () Bool)

(assert (=> bm!315819 (= call!315822 (forall!10305 (toList!4364 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (ite c!773625 lambda!174381 lambda!174383)))))

(assert (=> b!4530781 (= e!2823114 lt!1706240)))

(declare-fun lt!1706248 () ListMap!3625)

(assert (=> b!4530781 (= lt!1706248 (+!1572 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> b!4530781 (= lt!1706240 (addToMapMapFromBucket!705 (t!357782 (t!357782 (_2!28868 lt!1705015))) (+!1572 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) (h!56563 (t!357782 (_2!28868 lt!1705015))))))))

(declare-fun lt!1706247 () Unit!96566)

(assert (=> b!4530781 (= lt!1706247 call!315824)))

(assert (=> b!4530781 (forall!10305 (toList!4364 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) lambda!174382)))

(declare-fun lt!1706251 () Unit!96566)

(assert (=> b!4530781 (= lt!1706251 lt!1706247)))

(assert (=> b!4530781 (forall!10305 (toList!4364 lt!1706248) lambda!174383)))

(declare-fun lt!1706244 () Unit!96566)

(declare-fun Unit!96918 () Unit!96566)

(assert (=> b!4530781 (= lt!1706244 Unit!96918)))

(assert (=> b!4530781 call!315823))

(declare-fun lt!1706249 () Unit!96566)

(declare-fun Unit!96919 () Unit!96566)

(assert (=> b!4530781 (= lt!1706249 Unit!96919)))

(declare-fun lt!1706237 () Unit!96566)

(declare-fun Unit!96920 () Unit!96566)

(assert (=> b!4530781 (= lt!1706237 Unit!96920)))

(declare-fun lt!1706238 () Unit!96566)

(assert (=> b!4530781 (= lt!1706238 (forallContained!2559 (toList!4364 lt!1706248) lambda!174383 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> b!4530781 (contains!13455 lt!1706248 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706239 () Unit!96566)

(declare-fun Unit!96921 () Unit!96566)

(assert (=> b!4530781 (= lt!1706239 Unit!96921)))

(assert (=> b!4530781 (contains!13455 lt!1706240 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706242 () Unit!96566)

(declare-fun Unit!96922 () Unit!96566)

(assert (=> b!4530781 (= lt!1706242 Unit!96922)))

(assert (=> b!4530781 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174383)))

(declare-fun lt!1706245 () Unit!96566)

(declare-fun Unit!96923 () Unit!96566)

(assert (=> b!4530781 (= lt!1706245 Unit!96923)))

(assert (=> b!4530781 (forall!10305 (toList!4364 lt!1706248) lambda!174383)))

(declare-fun lt!1706246 () Unit!96566)

(declare-fun Unit!96924 () Unit!96566)

(assert (=> b!4530781 (= lt!1706246 Unit!96924)))

(declare-fun lt!1706241 () Unit!96566)

(declare-fun Unit!96925 () Unit!96566)

(assert (=> b!4530781 (= lt!1706241 Unit!96925)))

(declare-fun lt!1706235 () Unit!96566)

(assert (=> b!4530781 (= lt!1706235 (addForallContainsKeyThenBeforeAdding!352 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706240 (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))) (_2!28867 (h!56563 (t!357782 (_2!28868 lt!1705015))))))))

(assert (=> b!4530781 call!315822))

(declare-fun lt!1706253 () Unit!96566)

(assert (=> b!4530781 (= lt!1706253 lt!1706235)))

(assert (=> b!4530781 (forall!10305 (toList!4364 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) lambda!174383)))

(declare-fun lt!1706250 () Unit!96566)

(declare-fun Unit!96926 () Unit!96566)

(assert (=> b!4530781 (= lt!1706250 Unit!96926)))

(declare-fun res!1886915 () Bool)

(assert (=> b!4530781 (= res!1886915 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174383))))

(assert (=> b!4530781 (=> (not res!1886915) (not e!2823113))))

(assert (=> b!4530781 e!2823113))

(declare-fun lt!1706255 () Unit!96566)

(declare-fun Unit!96927 () Unit!96566)

(assert (=> b!4530781 (= lt!1706255 Unit!96927)))

(assert (= (and d!1398485 c!773625) b!4530778))

(assert (= (and d!1398485 (not c!773625)) b!4530781))

(assert (= (and b!4530781 res!1886915) b!4530777))

(assert (= (or b!4530778 b!4530781) bm!315819))

(assert (= (or b!4530778 b!4530781) bm!315817))

(assert (= (or b!4530778 b!4530781) bm!315818))

(assert (= (and d!1398485 res!1886917) b!4530779))

(assert (= (and b!4530779 res!1886916) b!4530780))

(declare-fun m!5288267 () Bool)

(assert (=> d!1398485 m!5288267))

(assert (=> d!1398485 m!5285901))

(declare-fun m!5288269 () Bool)

(assert (=> b!4530781 m!5288269))

(assert (=> b!4530781 m!5288269))

(declare-fun m!5288271 () Bool)

(assert (=> b!4530781 m!5288271))

(declare-fun m!5288273 () Bool)

(assert (=> b!4530781 m!5288273))

(assert (=> b!4530781 m!5285483))

(declare-fun m!5288275 () Bool)

(assert (=> b!4530781 m!5288275))

(declare-fun m!5288277 () Bool)

(assert (=> b!4530781 m!5288277))

(declare-fun m!5288279 () Bool)

(assert (=> b!4530781 m!5288279))

(declare-fun m!5288281 () Bool)

(assert (=> b!4530781 m!5288281))

(declare-fun m!5288283 () Bool)

(assert (=> b!4530781 m!5288283))

(declare-fun m!5288285 () Bool)

(assert (=> b!4530781 m!5288285))

(declare-fun m!5288287 () Bool)

(assert (=> b!4530781 m!5288287))

(assert (=> b!4530781 m!5285483))

(assert (=> b!4530781 m!5288281))

(assert (=> b!4530781 m!5288271))

(assert (=> b!4530777 m!5288273))

(declare-fun m!5288289 () Bool)

(assert (=> bm!315817 m!5288289))

(declare-fun m!5288291 () Bool)

(assert (=> b!4530779 m!5288291))

(assert (=> bm!315818 m!5285483))

(declare-fun m!5288293 () Bool)

(assert (=> bm!315818 m!5288293))

(declare-fun m!5288295 () Bool)

(assert (=> b!4530780 m!5288295))

(declare-fun m!5288297 () Bool)

(assert (=> bm!315819 m!5288297))

(assert (=> b!4529434 d!1398485))

(assert (=> b!4529434 d!1397827))

(declare-fun d!1398501 () Bool)

(declare-fun res!1886927 () Bool)

(declare-fun e!2823125 () Bool)

(assert (=> d!1398501 (=> res!1886927 e!2823125)))

(assert (=> d!1398501 (= res!1886927 ((_ is Nil!50696) (toList!4364 lt!1705001)))))

(assert (=> d!1398501 (= (forall!10305 (toList!4364 lt!1705001) lambda!174179) e!2823125)))

(declare-fun b!4530793 () Bool)

(declare-fun e!2823126 () Bool)

(assert (=> b!4530793 (= e!2823125 e!2823126)))

(declare-fun res!1886928 () Bool)

(assert (=> b!4530793 (=> (not res!1886928) (not e!2823126))))

(assert (=> b!4530793 (= res!1886928 (dynLambda!21188 lambda!174179 (h!56563 (toList!4364 lt!1705001))))))

(declare-fun b!4530794 () Bool)

(assert (=> b!4530794 (= e!2823126 (forall!10305 (t!357782 (toList!4364 lt!1705001)) lambda!174179))))

(assert (= (and d!1398501 (not res!1886927)) b!4530793))

(assert (= (and b!4530793 res!1886928) b!4530794))

(declare-fun b_lambda!156505 () Bool)

(assert (=> (not b_lambda!156505) (not b!4530793)))

(declare-fun m!5288303 () Bool)

(assert (=> b!4530793 m!5288303))

(declare-fun m!5288305 () Bool)

(assert (=> b!4530794 m!5288305))

(assert (=> b!4529434 d!1398501))

(declare-fun b!4530795 () Bool)

(declare-fun e!2823127 () Bool)

(assert (=> b!4530795 (= e!2823127 (not (contains!13457 (keys!17626 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530796 () Bool)

(declare-fun e!2823131 () Unit!96566)

(declare-fun e!2823132 () Unit!96566)

(assert (=> b!4530796 (= e!2823131 e!2823132)))

(declare-fun c!773629 () Bool)

(declare-fun call!315825 () Bool)

(assert (=> b!4530796 (= c!773629 call!315825)))

(declare-fun b!4530797 () Bool)

(declare-fun e!2823128 () Bool)

(declare-fun e!2823129 () Bool)

(assert (=> b!4530797 (= e!2823128 e!2823129)))

(declare-fun res!1886930 () Bool)

(assert (=> b!4530797 (=> (not res!1886930) (not e!2823129))))

(assert (=> b!4530797 (= res!1886930 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530798 () Bool)

(declare-fun e!2823130 () List!50823)

(assert (=> b!4530798 (= e!2823130 (getKeysList!479 (toList!4364 lt!1705274)))))

(declare-fun b!4530799 () Bool)

(assert (=> b!4530799 (= e!2823129 (contains!13457 (keys!17626 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun d!1398503 () Bool)

(assert (=> d!1398503 e!2823128))

(declare-fun res!1886931 () Bool)

(assert (=> d!1398503 (=> res!1886931 e!2823128)))

(assert (=> d!1398503 (= res!1886931 e!2823127)))

(declare-fun res!1886929 () Bool)

(assert (=> d!1398503 (=> (not res!1886929) (not e!2823127))))

(declare-fun lt!1706265 () Bool)

(assert (=> d!1398503 (= res!1886929 (not lt!1706265))))

(declare-fun lt!1706266 () Bool)

(assert (=> d!1398503 (= lt!1706265 lt!1706266)))

(declare-fun lt!1706267 () Unit!96566)

(assert (=> d!1398503 (= lt!1706267 e!2823131)))

(declare-fun c!773627 () Bool)

(assert (=> d!1398503 (= c!773627 lt!1706266)))

(assert (=> d!1398503 (= lt!1706266 (containsKey!1829 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398503 (= (contains!13455 lt!1705274 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1706265)))

(declare-fun b!4530800 () Bool)

(assert (=> b!4530800 (= e!2823130 (keys!17626 lt!1705274))))

(declare-fun b!4530801 () Bool)

(declare-fun Unit!96928 () Unit!96566)

(assert (=> b!4530801 (= e!2823132 Unit!96928)))

(declare-fun bm!315820 () Bool)

(assert (=> bm!315820 (= call!315825 (contains!13457 e!2823130 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun c!773628 () Bool)

(assert (=> bm!315820 (= c!773628 c!773627)))

(declare-fun b!4530802 () Bool)

(declare-fun lt!1706263 () Unit!96566)

(assert (=> b!4530802 (= e!2823131 lt!1706263)))

(declare-fun lt!1706264 () Unit!96566)

(assert (=> b!4530802 (= lt!1706264 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530802 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706268 () Unit!96566)

(assert (=> b!4530802 (= lt!1706268 lt!1706264)))

(assert (=> b!4530802 (= lt!1706263 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530802 call!315825))

(declare-fun b!4530803 () Bool)

(assert (=> b!4530803 false))

(declare-fun lt!1706262 () Unit!96566)

(declare-fun lt!1706269 () Unit!96566)

(assert (=> b!4530803 (= lt!1706262 lt!1706269)))

(assert (=> b!4530803 (containsKey!1829 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4530803 (= lt!1706269 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705274) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun Unit!96929 () Unit!96566)

(assert (=> b!4530803 (= e!2823132 Unit!96929)))

(assert (= (and d!1398503 c!773627) b!4530802))

(assert (= (and d!1398503 (not c!773627)) b!4530796))

(assert (= (and b!4530796 c!773629) b!4530803))

(assert (= (and b!4530796 (not c!773629)) b!4530801))

(assert (= (or b!4530802 b!4530796) bm!315820))

(assert (= (and bm!315820 c!773628) b!4530798))

(assert (= (and bm!315820 (not c!773628)) b!4530800))

(assert (= (and d!1398503 res!1886929) b!4530795))

(assert (= (and d!1398503 (not res!1886931)) b!4530797))

(assert (= (and b!4530797 res!1886930) b!4530799))

(declare-fun m!5288307 () Bool)

(assert (=> b!4530795 m!5288307))

(assert (=> b!4530795 m!5288307))

(declare-fun m!5288309 () Bool)

(assert (=> b!4530795 m!5288309))

(declare-fun m!5288311 () Bool)

(assert (=> b!4530802 m!5288311))

(declare-fun m!5288313 () Bool)

(assert (=> b!4530802 m!5288313))

(assert (=> b!4530802 m!5288313))

(declare-fun m!5288315 () Bool)

(assert (=> b!4530802 m!5288315))

(declare-fun m!5288317 () Bool)

(assert (=> b!4530802 m!5288317))

(assert (=> b!4530800 m!5288307))

(assert (=> b!4530797 m!5288313))

(assert (=> b!4530797 m!5288313))

(assert (=> b!4530797 m!5288315))

(declare-fun m!5288319 () Bool)

(assert (=> d!1398503 m!5288319))

(declare-fun m!5288321 () Bool)

(assert (=> b!4530798 m!5288321))

(assert (=> b!4530799 m!5288307))

(assert (=> b!4530799 m!5288307))

(assert (=> b!4530799 m!5288309))

(assert (=> b!4530803 m!5288319))

(declare-fun m!5288323 () Bool)

(assert (=> b!4530803 m!5288323))

(declare-fun m!5288325 () Bool)

(assert (=> bm!315820 m!5288325))

(assert (=> b!4529434 d!1398503))

(declare-fun d!1398505 () Bool)

(declare-fun res!1886932 () Bool)

(declare-fun e!2823133 () Bool)

(assert (=> d!1398505 (=> res!1886932 e!2823133)))

(assert (=> d!1398505 (= res!1886932 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1398505 (= (forall!10305 (_2!28868 lt!1705015) lambda!174180) e!2823133)))

(declare-fun b!4530804 () Bool)

(declare-fun e!2823134 () Bool)

(assert (=> b!4530804 (= e!2823133 e!2823134)))

(declare-fun res!1886933 () Bool)

(assert (=> b!4530804 (=> (not res!1886933) (not e!2823134))))

(assert (=> b!4530804 (= res!1886933 (dynLambda!21188 lambda!174180 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4530805 () Bool)

(assert (=> b!4530805 (= e!2823134 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174180))))

(assert (= (and d!1398505 (not res!1886932)) b!4530804))

(assert (= (and b!4530804 res!1886933) b!4530805))

(declare-fun b_lambda!156507 () Bool)

(assert (=> (not b_lambda!156507) (not b!4530804)))

(assert (=> b!4530804 m!5288149))

(declare-fun m!5288335 () Bool)

(assert (=> b!4530805 m!5288335))

(assert (=> b!4529434 d!1398505))

(declare-fun d!1398509 () Bool)

(declare-fun e!2823135 () Bool)

(assert (=> d!1398509 e!2823135))

(declare-fun res!1886935 () Bool)

(assert (=> d!1398509 (=> (not res!1886935) (not e!2823135))))

(declare-fun lt!1706270 () ListMap!3625)

(assert (=> d!1398509 (= res!1886935 (contains!13455 lt!1706270 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706273 () List!50820)

(assert (=> d!1398509 (= lt!1706270 (ListMap!3626 lt!1706273))))

(declare-fun lt!1706272 () Unit!96566)

(declare-fun lt!1706271 () Unit!96566)

(assert (=> d!1398509 (= lt!1706272 lt!1706271)))

(assert (=> d!1398509 (= (getValueByKey!1120 lt!1706273 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) (Some!11155 (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398509 (= lt!1706271 (lemmaContainsTupThenGetReturnValue!702 lt!1706273 (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398509 (= lt!1706273 (insertNoDuplicatedKeys!288 (toList!4364 lt!1705001) (_1!28867 (h!56563 (_2!28868 lt!1705015))) (_2!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398509 (= (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015))) lt!1706270)))

(declare-fun b!4530806 () Bool)

(declare-fun res!1886934 () Bool)

(assert (=> b!4530806 (=> (not res!1886934) (not e!2823135))))

(assert (=> b!4530806 (= res!1886934 (= (getValueByKey!1120 (toList!4364 lt!1706270) (_1!28867 (h!56563 (_2!28868 lt!1705015)))) (Some!11155 (_2!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530807 () Bool)

(assert (=> b!4530807 (= e!2823135 (contains!13458 (toList!4364 lt!1706270) (h!56563 (_2!28868 lt!1705015))))))

(assert (= (and d!1398509 res!1886935) b!4530806))

(assert (= (and b!4530806 res!1886934) b!4530807))

(declare-fun m!5288341 () Bool)

(assert (=> d!1398509 m!5288341))

(declare-fun m!5288343 () Bool)

(assert (=> d!1398509 m!5288343))

(declare-fun m!5288345 () Bool)

(assert (=> d!1398509 m!5288345))

(declare-fun m!5288347 () Bool)

(assert (=> d!1398509 m!5288347))

(declare-fun m!5288349 () Bool)

(assert (=> b!4530806 m!5288349))

(declare-fun m!5288351 () Bool)

(assert (=> b!4530807 m!5288351))

(assert (=> b!4529434 d!1398509))

(declare-fun d!1398513 () Bool)

(declare-fun res!1886939 () Bool)

(declare-fun e!2823142 () Bool)

(assert (=> d!1398513 (=> res!1886939 e!2823142)))

(assert (=> d!1398513 (= res!1886939 ((_ is Nil!50696) (toList!4364 lt!1705274)))))

(assert (=> d!1398513 (= (forall!10305 (toList!4364 lt!1705274) lambda!174180) e!2823142)))

(declare-fun b!4530817 () Bool)

(declare-fun e!2823143 () Bool)

(assert (=> b!4530817 (= e!2823142 e!2823143)))

(declare-fun res!1886940 () Bool)

(assert (=> b!4530817 (=> (not res!1886940) (not e!2823143))))

(assert (=> b!4530817 (= res!1886940 (dynLambda!21188 lambda!174180 (h!56563 (toList!4364 lt!1705274))))))

(declare-fun b!4530818 () Bool)

(assert (=> b!4530818 (= e!2823143 (forall!10305 (t!357782 (toList!4364 lt!1705274)) lambda!174180))))

(assert (= (and d!1398513 (not res!1886939)) b!4530817))

(assert (= (and b!4530817 res!1886940) b!4530818))

(declare-fun b_lambda!156509 () Bool)

(assert (=> (not b_lambda!156509) (not b!4530817)))

(declare-fun m!5288353 () Bool)

(assert (=> b!4530817 m!5288353))

(declare-fun m!5288355 () Bool)

(assert (=> b!4530818 m!5288355))

(assert (=> b!4529434 d!1398513))

(declare-fun b!4530819 () Bool)

(declare-fun e!2823144 () Bool)

(assert (=> b!4530819 (= e!2823144 (not (contains!13457 (keys!17626 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530820 () Bool)

(declare-fun e!2823148 () Unit!96566)

(declare-fun e!2823149 () Unit!96566)

(assert (=> b!4530820 (= e!2823148 e!2823149)))

(declare-fun c!773635 () Bool)

(declare-fun call!315827 () Bool)

(assert (=> b!4530820 (= c!773635 call!315827)))

(declare-fun b!4530821 () Bool)

(declare-fun e!2823145 () Bool)

(declare-fun e!2823146 () Bool)

(assert (=> b!4530821 (= e!2823145 e!2823146)))

(declare-fun res!1886942 () Bool)

(assert (=> b!4530821 (=> (not res!1886942) (not e!2823146))))

(assert (=> b!4530821 (= res!1886942 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(declare-fun b!4530822 () Bool)

(declare-fun e!2823147 () List!50823)

(assert (=> b!4530822 (= e!2823147 (getKeysList!479 (toList!4364 lt!1705266)))))

(declare-fun b!4530823 () Bool)

(assert (=> b!4530823 (= e!2823146 (contains!13457 (keys!17626 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun d!1398515 () Bool)

(assert (=> d!1398515 e!2823145))

(declare-fun res!1886943 () Bool)

(assert (=> d!1398515 (=> res!1886943 e!2823145)))

(assert (=> d!1398515 (= res!1886943 e!2823144)))

(declare-fun res!1886941 () Bool)

(assert (=> d!1398515 (=> (not res!1886941) (not e!2823144))))

(declare-fun lt!1706285 () Bool)

(assert (=> d!1398515 (= res!1886941 (not lt!1706285))))

(declare-fun lt!1706286 () Bool)

(assert (=> d!1398515 (= lt!1706285 lt!1706286)))

(declare-fun lt!1706287 () Unit!96566)

(assert (=> d!1398515 (= lt!1706287 e!2823148)))

(declare-fun c!773633 () Bool)

(assert (=> d!1398515 (= c!773633 lt!1706286)))

(assert (=> d!1398515 (= lt!1706286 (containsKey!1829 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> d!1398515 (= (contains!13455 lt!1705266 (_1!28867 (h!56563 (_2!28868 lt!1705015)))) lt!1706285)))

(declare-fun b!4530824 () Bool)

(assert (=> b!4530824 (= e!2823147 (keys!17626 lt!1705266))))

(declare-fun b!4530825 () Bool)

(declare-fun Unit!96930 () Unit!96566)

(assert (=> b!4530825 (= e!2823149 Unit!96930)))

(declare-fun bm!315822 () Bool)

(assert (=> bm!315822 (= call!315827 (contains!13457 e!2823147 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun c!773634 () Bool)

(assert (=> bm!315822 (= c!773634 c!773633)))

(declare-fun b!4530826 () Bool)

(declare-fun lt!1706283 () Unit!96566)

(assert (=> b!4530826 (= e!2823148 lt!1706283)))

(declare-fun lt!1706284 () Unit!96566)

(assert (=> b!4530826 (= lt!1706284 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530826 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun lt!1706288 () Unit!96566)

(assert (=> b!4530826 (= lt!1706288 lt!1706284)))

(assert (=> b!4530826 (= lt!1706283 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> b!4530826 call!315827))

(declare-fun b!4530827 () Bool)

(assert (=> b!4530827 false))

(declare-fun lt!1706282 () Unit!96566)

(declare-fun lt!1706289 () Unit!96566)

(assert (=> b!4530827 (= lt!1706282 lt!1706289)))

(assert (=> b!4530827 (containsKey!1829 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))

(assert (=> b!4530827 (= lt!1706289 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705266) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun Unit!96931 () Unit!96566)

(assert (=> b!4530827 (= e!2823149 Unit!96931)))

(assert (= (and d!1398515 c!773633) b!4530826))

(assert (= (and d!1398515 (not c!773633)) b!4530820))

(assert (= (and b!4530820 c!773635) b!4530827))

(assert (= (and b!4530820 (not c!773635)) b!4530825))

(assert (= (or b!4530826 b!4530820) bm!315822))

(assert (= (and bm!315822 c!773634) b!4530822))

(assert (= (and bm!315822 (not c!773634)) b!4530824))

(assert (= (and d!1398515 res!1886941) b!4530819))

(assert (= (and d!1398515 (not res!1886943)) b!4530821))

(assert (= (and b!4530821 res!1886942) b!4530823))

(declare-fun m!5288375 () Bool)

(assert (=> b!4530819 m!5288375))

(assert (=> b!4530819 m!5288375))

(declare-fun m!5288377 () Bool)

(assert (=> b!4530819 m!5288377))

(declare-fun m!5288379 () Bool)

(assert (=> b!4530826 m!5288379))

(declare-fun m!5288381 () Bool)

(assert (=> b!4530826 m!5288381))

(assert (=> b!4530826 m!5288381))

(declare-fun m!5288383 () Bool)

(assert (=> b!4530826 m!5288383))

(declare-fun m!5288385 () Bool)

(assert (=> b!4530826 m!5288385))

(assert (=> b!4530824 m!5288375))

(assert (=> b!4530821 m!5288381))

(assert (=> b!4530821 m!5288381))

(assert (=> b!4530821 m!5288383))

(declare-fun m!5288387 () Bool)

(assert (=> d!1398515 m!5288387))

(declare-fun m!5288389 () Bool)

(assert (=> b!4530822 m!5288389))

(assert (=> b!4530823 m!5288375))

(assert (=> b!4530823 m!5288375))

(assert (=> b!4530823 m!5288377))

(assert (=> b!4530827 m!5288387))

(declare-fun m!5288391 () Bool)

(assert (=> b!4530827 m!5288391))

(declare-fun m!5288393 () Bool)

(assert (=> bm!315822 m!5288393))

(assert (=> b!4529434 d!1398515))

(declare-fun b!4530829 () Bool)

(declare-fun e!2823150 () Option!11157)

(declare-fun e!2823151 () Option!11157)

(assert (=> b!4530829 (= e!2823150 e!2823151)))

(declare-fun c!773637 () Bool)

(assert (=> b!4530829 (= c!773637 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (not (= (_1!28868 (h!56564 (toList!4363 lm!1477))) hash!344))))))

(declare-fun b!4530830 () Bool)

(assert (=> b!4530830 (= e!2823151 (getValueByKey!1121 (t!357783 (toList!4363 lm!1477)) hash!344))))

(declare-fun b!4530828 () Bool)

(assert (=> b!4530828 (= e!2823150 (Some!11156 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(declare-fun d!1398519 () Bool)

(declare-fun c!773636 () Bool)

(assert (=> d!1398519 (= c!773636 (and ((_ is Cons!50697) (toList!4363 lm!1477)) (= (_1!28868 (h!56564 (toList!4363 lm!1477))) hash!344)))))

(assert (=> d!1398519 (= (getValueByKey!1121 (toList!4363 lm!1477) hash!344) e!2823150)))

(declare-fun b!4530831 () Bool)

(assert (=> b!4530831 (= e!2823151 None!11156)))

(assert (= (and d!1398519 c!773636) b!4530828))

(assert (= (and d!1398519 (not c!773636)) b!4530829))

(assert (= (and b!4530829 c!773637) b!4530830))

(assert (= (and b!4530829 (not c!773637)) b!4530831))

(declare-fun m!5288395 () Bool)

(assert (=> b!4530830 m!5288395))

(assert (=> b!4529714 d!1398519))

(declare-fun d!1398521 () Bool)

(assert (=> d!1398521 (= (invariantList!1031 (toList!4364 lt!1705278)) (noDuplicatedKeys!270 (toList!4364 lt!1705278)))))

(declare-fun bs!866807 () Bool)

(assert (= bs!866807 d!1398521))

(declare-fun m!5288397 () Bool)

(assert (=> bs!866807 m!5288397))

(assert (=> b!4529433 d!1398521))

(declare-fun d!1398523 () Bool)

(assert (=> d!1398523 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))))

(declare-fun lt!1706290 () Unit!96566)

(assert (=> d!1398523 (= lt!1706290 (choose!29717 (toList!4364 lt!1705001) key!3287))))

(assert (=> d!1398523 (invariantList!1031 (toList!4364 lt!1705001))))

(assert (=> d!1398523 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705001) key!3287) lt!1706290)))

(declare-fun bs!866808 () Bool)

(assert (= bs!866808 d!1398523))

(assert (=> bs!866808 m!5285661))

(assert (=> bs!866808 m!5285661))

(assert (=> bs!866808 m!5285663))

(declare-fun m!5288399 () Bool)

(assert (=> bs!866808 m!5288399))

(assert (=> bs!866808 m!5286201))

(assert (=> b!4529500 d!1398523))

(assert (=> b!4529500 d!1398011))

(assert (=> b!4529500 d!1398013))

(declare-fun d!1398525 () Bool)

(assert (=> d!1398525 (contains!13457 (getKeysList!479 (toList!4364 lt!1705001)) key!3287)))

(declare-fun lt!1706291 () Unit!96566)

(assert (=> d!1398525 (= lt!1706291 (choose!29718 (toList!4364 lt!1705001) key!3287))))

(assert (=> d!1398525 (invariantList!1031 (toList!4364 lt!1705001))))

(assert (=> d!1398525 (= (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705001) key!3287) lt!1706291)))

(declare-fun bs!866809 () Bool)

(assert (= bs!866809 d!1398525))

(assert (=> bs!866809 m!5285669))

(assert (=> bs!866809 m!5285669))

(declare-fun m!5288401 () Bool)

(assert (=> bs!866809 m!5288401))

(declare-fun m!5288403 () Bool)

(assert (=> bs!866809 m!5288403))

(assert (=> bs!866809 m!5286201))

(assert (=> b!4529500 d!1398525))

(declare-fun d!1398527 () Bool)

(assert (=> d!1398527 (dynLambda!21186 lambda!174087 lt!1705011)))

(assert (=> d!1398527 true))

(declare-fun _$7!1903 () Unit!96566)

(assert (=> d!1398527 (= (choose!29704 (toList!4363 lm!1477) lambda!174087 lt!1705011) _$7!1903)))

(declare-fun b_lambda!156511 () Bool)

(assert (=> (not b_lambda!156511) (not d!1398527)))

(declare-fun bs!866810 () Bool)

(assert (= bs!866810 d!1398527))

(assert (=> bs!866810 m!5286067))

(assert (=> d!1397801 d!1398527))

(assert (=> d!1397801 d!1397641))

(declare-fun d!1398529 () Bool)

(declare-fun res!1886944 () Bool)

(declare-fun e!2823152 () Bool)

(assert (=> d!1398529 (=> res!1886944 e!2823152)))

(assert (=> d!1398529 (= res!1886944 (and ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015))) (= (_1!28867 (h!56563 (t!357782 (_2!28868 lt!1705015)))) (_1!28867 (h!56563 (_2!28868 lt!1705015))))))))

(assert (=> d!1398529 (= (containsKey!1826 (t!357782 (_2!28868 lt!1705015)) (_1!28867 (h!56563 (_2!28868 lt!1705015)))) e!2823152)))

(declare-fun b!4530832 () Bool)

(declare-fun e!2823153 () Bool)

(assert (=> b!4530832 (= e!2823152 e!2823153)))

(declare-fun res!1886945 () Bool)

(assert (=> b!4530832 (=> (not res!1886945) (not e!2823153))))

(assert (=> b!4530832 (= res!1886945 ((_ is Cons!50696) (t!357782 (_2!28868 lt!1705015))))))

(declare-fun b!4530833 () Bool)

(assert (=> b!4530833 (= e!2823153 (containsKey!1826 (t!357782 (t!357782 (_2!28868 lt!1705015))) (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (= (and d!1398529 (not res!1886944)) b!4530832))

(assert (= (and b!4530832 res!1886945) b!4530833))

(declare-fun m!5288405 () Bool)

(assert (=> b!4530833 m!5288405))

(assert (=> b!4529658 d!1398529))

(declare-fun d!1398531 () Bool)

(assert (=> d!1398531 (= (tail!7768 (toList!4363 lm!1477)) (t!357783 (toList!4363 lm!1477)))))

(assert (=> d!1397777 d!1398531))

(declare-fun d!1398533 () Bool)

(declare-fun c!773638 () Bool)

(assert (=> d!1398533 (= c!773638 ((_ is Nil!50699) (keys!17626 lt!1705001)))))

(declare-fun e!2823154 () (InoxSet K!12085))

(assert (=> d!1398533 (= (content!8399 (keys!17626 lt!1705001)) e!2823154)))

(declare-fun b!4530834 () Bool)

(assert (=> b!4530834 (= e!2823154 ((as const (Array K!12085 Bool)) false))))

(declare-fun b!4530835 () Bool)

(assert (=> b!4530835 (= e!2823154 ((_ map or) (store ((as const (Array K!12085 Bool)) false) (h!56568 (keys!17626 lt!1705001)) true) (content!8399 (t!357785 (keys!17626 lt!1705001)))))))

(assert (= (and d!1398533 c!773638) b!4530834))

(assert (= (and d!1398533 (not c!773638)) b!4530835))

(declare-fun m!5288407 () Bool)

(assert (=> b!4530835 m!5288407))

(declare-fun m!5288409 () Bool)

(assert (=> b!4530835 m!5288409))

(assert (=> b!4529661 d!1398533))

(assert (=> b!4529661 d!1398235))

(declare-fun d!1398535 () Bool)

(declare-fun c!773639 () Bool)

(assert (=> d!1398535 (= c!773639 ((_ is Nil!50699) (keys!17626 lt!1705428)))))

(declare-fun e!2823155 () (InoxSet K!12085))

(assert (=> d!1398535 (= (content!8399 (keys!17626 lt!1705428)) e!2823155)))

(declare-fun b!4530836 () Bool)

(assert (=> b!4530836 (= e!2823155 ((as const (Array K!12085 Bool)) false))))

(declare-fun b!4530837 () Bool)

(assert (=> b!4530837 (= e!2823155 ((_ map or) (store ((as const (Array K!12085 Bool)) false) (h!56568 (keys!17626 lt!1705428)) true) (content!8399 (t!357785 (keys!17626 lt!1705428)))))))

(assert (= (and d!1398535 c!773639) b!4530836))

(assert (= (and d!1398535 (not c!773639)) b!4530837))

(declare-fun m!5288411 () Bool)

(assert (=> b!4530837 m!5288411))

(declare-fun m!5288413 () Bool)

(assert (=> b!4530837 m!5288413))

(assert (=> b!4529661 d!1398535))

(declare-fun bs!866811 () Bool)

(declare-fun b!4530839 () Bool)

(assert (= bs!866811 (and b!4530839 b!4530106)))

(declare-fun lambda!174386 () Int)

(assert (=> bs!866811 (= (= (toList!4364 lt!1705428) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174386 lambda!174274))))

(declare-fun bs!866812 () Bool)

(assert (= bs!866812 (and b!4530839 b!4530248)))

(assert (=> bs!866812 (= (= (toList!4364 lt!1705428) (toList!4364 lt!1705258)) (= lambda!174386 lambda!174294))))

(declare-fun bs!866813 () Bool)

(assert (= bs!866813 (and b!4530839 b!4529816)))

(assert (=> bs!866813 (= (= (toList!4364 lt!1705428) (toList!4364 lt!1705010)) (= lambda!174386 lambda!174252))))

(declare-fun bs!866814 () Bool)

(assert (= bs!866814 (and b!4530839 b!4530122)))

(assert (=> bs!866814 (= (= (toList!4364 lt!1705428) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174386 lambda!174277))))

(declare-fun bs!866815 () Bool)

(assert (= bs!866815 (and b!4530839 b!4530448)))

(assert (=> bs!866815 (= (= (toList!4364 lt!1705428) (toList!4364 lt!1705001)) (= lambda!174386 lambda!174302))))

(declare-fun bs!866816 () Bool)

(assert (= bs!866816 (and b!4530839 b!4530130)))

(assert (=> bs!866816 (= (= (toList!4364 lt!1705428) (t!357782 (toList!4364 lt!1705010))) (= lambda!174386 lambda!174276))))

(declare-fun bs!866817 () Bool)

(assert (= bs!866817 (and b!4530839 b!4530128)))

(assert (=> bs!866817 (= (= (toList!4364 lt!1705428) (toList!4364 lt!1705010)) (= lambda!174386 lambda!174278))))

(declare-fun bs!866818 () Bool)

(assert (= bs!866818 (and b!4530839 b!4529798)))

(assert (=> bs!866818 (= (= (toList!4364 lt!1705428) (t!357782 (toList!4364 lt!1705001))) (= lambda!174386 lambda!174244))))

(declare-fun bs!866819 () Bool)

(assert (= bs!866819 (and b!4530839 b!4529790)))

(assert (=> bs!866819 (= (= (toList!4364 lt!1705428) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174386 lambda!174245))))

(declare-fun bs!866820 () Bool)

(assert (= bs!866820 (and b!4530839 b!4529796)))

(assert (=> bs!866820 (= (= (toList!4364 lt!1705428) (toList!4364 lt!1705001)) (= lambda!174386 lambda!174246))))

(declare-fun bs!866821 () Bool)

(assert (= bs!866821 (and b!4530839 b!4530237)))

(assert (=> bs!866821 (= (= (toList!4364 lt!1705428) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= lambda!174386 lambda!174292))))

(assert (=> b!4530839 true))

(declare-fun bs!866822 () Bool)

(declare-fun b!4530840 () Bool)

(assert (= bs!866822 (and b!4530840 b!4529817)))

(declare-fun lambda!174387 () Int)

(assert (=> bs!866822 (= lambda!174387 lambda!174253)))

(declare-fun bs!866823 () Bool)

(assert (= bs!866823 (and b!4530840 b!4530249)))

(assert (=> bs!866823 (= lambda!174387 lambda!174295)))

(declare-fun bs!866824 () Bool)

(assert (= bs!866824 (and b!4530840 b!4530107)))

(assert (=> bs!866824 (= lambda!174387 lambda!174275)))

(declare-fun bs!866825 () Bool)

(assert (= bs!866825 (and b!4530840 b!4530449)))

(assert (=> bs!866825 (= lambda!174387 lambda!174305)))

(declare-fun bs!866826 () Bool)

(assert (= bs!866826 (and b!4530840 b!4529795)))

(assert (=> bs!866826 (= lambda!174387 lambda!174247)))

(declare-fun bs!866827 () Bool)

(assert (= bs!866827 (and b!4530840 b!4530238)))

(assert (=> bs!866827 (= lambda!174387 lambda!174293)))

(declare-fun bs!866828 () Bool)

(assert (= bs!866828 (and b!4530840 b!4530127)))

(assert (=> bs!866828 (= lambda!174387 lambda!174279)))

(declare-fun d!1398537 () Bool)

(declare-fun e!2823156 () Bool)

(assert (=> d!1398537 e!2823156))

(declare-fun res!1886947 () Bool)

(assert (=> d!1398537 (=> (not res!1886947) (not e!2823156))))

(declare-fun lt!1706292 () List!50823)

(assert (=> d!1398537 (= res!1886947 (noDuplicate!755 lt!1706292))))

(assert (=> d!1398537 (= lt!1706292 (getKeysList!479 (toList!4364 lt!1705428)))))

(assert (=> d!1398537 (= (keys!17626 lt!1705428) lt!1706292)))

(declare-fun b!4530838 () Bool)

(declare-fun res!1886948 () Bool)

(assert (=> b!4530838 (=> (not res!1886948) (not e!2823156))))

(assert (=> b!4530838 (= res!1886948 (= (length!366 lt!1706292) (length!367 (toList!4364 lt!1705428))))))

(declare-fun res!1886946 () Bool)

(assert (=> b!4530839 (=> (not res!1886946) (not e!2823156))))

(assert (=> b!4530839 (= res!1886946 (forall!10306 lt!1706292 lambda!174386))))

(assert (=> b!4530840 (= e!2823156 (= (content!8399 lt!1706292) (content!8399 (map!11155 (toList!4364 lt!1705428) lambda!174387))))))

(assert (= (and d!1398537 res!1886947) b!4530838))

(assert (= (and b!4530838 res!1886948) b!4530839))

(assert (= (and b!4530839 res!1886946) b!4530840))

(declare-fun m!5288415 () Bool)

(assert (=> d!1398537 m!5288415))

(declare-fun m!5288417 () Bool)

(assert (=> d!1398537 m!5288417))

(declare-fun m!5288419 () Bool)

(assert (=> b!4530838 m!5288419))

(declare-fun m!5288421 () Bool)

(assert (=> b!4530838 m!5288421))

(declare-fun m!5288423 () Bool)

(assert (=> b!4530839 m!5288423))

(declare-fun m!5288425 () Bool)

(assert (=> b!4530840 m!5288425))

(declare-fun m!5288427 () Bool)

(assert (=> b!4530840 m!5288427))

(assert (=> b!4530840 m!5288427))

(declare-fun m!5288429 () Bool)

(assert (=> b!4530840 m!5288429))

(assert (=> b!4529661 d!1398537))

(declare-fun d!1398539 () Bool)

(assert (=> d!1398539 (isDefined!8441 (getValueByKey!1121 (toList!4363 lm!1477) lt!1705014))))

(declare-fun lt!1706293 () Unit!96566)

(assert (=> d!1398539 (= lt!1706293 (choose!29725 (toList!4363 lm!1477) lt!1705014))))

(declare-fun e!2823157 () Bool)

(assert (=> d!1398539 e!2823157))

(declare-fun res!1886949 () Bool)

(assert (=> d!1398539 (=> (not res!1886949) (not e!2823157))))

(assert (=> d!1398539 (= res!1886949 (isStrictlySorted!444 (toList!4363 lm!1477)))))

(assert (=> d!1398539 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lm!1477) lt!1705014) lt!1706293)))

(declare-fun b!4530841 () Bool)

(assert (=> b!4530841 (= e!2823157 (containsKey!1830 (toList!4363 lm!1477) lt!1705014))))

(assert (= (and d!1398539 res!1886949) b!4530841))

(assert (=> d!1398539 m!5286053))

(assert (=> d!1398539 m!5286053))

(assert (=> d!1398539 m!5286055))

(declare-fun m!5288431 () Bool)

(assert (=> d!1398539 m!5288431))

(assert (=> d!1398539 m!5285549))

(assert (=> b!4530841 m!5286049))

(assert (=> b!4529696 d!1398539))

(assert (=> b!4529696 d!1397945))

(assert (=> b!4529696 d!1397947))

(declare-fun d!1398541 () Bool)

(declare-fun res!1886950 () Bool)

(declare-fun e!2823158 () Bool)

(assert (=> d!1398541 (=> res!1886950 e!2823158)))

(assert (=> d!1398541 (= res!1886950 ((_ is Nil!50696) (ite c!773313 (toList!4364 lt!1705001) (t!357782 (_2!28868 lt!1705015)))))))

(assert (=> d!1398541 (= (forall!10305 (ite c!773313 (toList!4364 lt!1705001) (t!357782 (_2!28868 lt!1705015))) (ite c!773313 lambda!174178 lambda!174180)) e!2823158)))

(declare-fun b!4530842 () Bool)

(declare-fun e!2823159 () Bool)

(assert (=> b!4530842 (= e!2823158 e!2823159)))

(declare-fun res!1886951 () Bool)

(assert (=> b!4530842 (=> (not res!1886951) (not e!2823159))))

(assert (=> b!4530842 (= res!1886951 (dynLambda!21188 (ite c!773313 lambda!174178 lambda!174180) (h!56563 (ite c!773313 (toList!4364 lt!1705001) (t!357782 (_2!28868 lt!1705015))))))))

(declare-fun b!4530843 () Bool)

(assert (=> b!4530843 (= e!2823159 (forall!10305 (t!357782 (ite c!773313 (toList!4364 lt!1705001) (t!357782 (_2!28868 lt!1705015)))) (ite c!773313 lambda!174178 lambda!174180)))))

(assert (= (and d!1398541 (not res!1886950)) b!4530842))

(assert (= (and b!4530842 res!1886951) b!4530843))

(declare-fun b_lambda!156513 () Bool)

(assert (=> (not b_lambda!156513) (not b!4530842)))

(declare-fun m!5288433 () Bool)

(assert (=> b!4530842 m!5288433))

(declare-fun m!5288435 () Bool)

(assert (=> b!4530843 m!5288435))

(assert (=> bm!315694 d!1398541))

(assert (=> b!4529573 d!1398073))

(declare-fun d!1398543 () Bool)

(assert (=> d!1398543 (containsKey!1829 (toList!4364 lt!1705010) key!3287)))

(declare-fun lt!1706294 () Unit!96566)

(assert (=> d!1398543 (= lt!1706294 (choose!29723 (toList!4364 lt!1705010) key!3287))))

(assert (=> d!1398543 (invariantList!1031 (toList!4364 lt!1705010))))

(assert (=> d!1398543 (= (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705010) key!3287) lt!1706294)))

(declare-fun bs!866830 () Bool)

(assert (= bs!866830 d!1398543))

(assert (=> bs!866830 m!5285803))

(declare-fun m!5288437 () Bool)

(assert (=> bs!866830 m!5288437))

(assert (=> bs!866830 m!5286159))

(assert (=> b!4529573 d!1398543))

(assert (=> b!4529533 d!1397745))

(declare-fun b!4530846 () Bool)

(declare-fun e!2823160 () List!50820)

(assert (=> b!4530846 (= e!2823160 (Cons!50696 (h!56563 (t!357782 lt!1705019)) (removePairForKey!805 (t!357782 (t!357782 lt!1705019)) key!3287)))))

(declare-fun d!1398547 () Bool)

(declare-fun lt!1706295 () List!50820)

(assert (=> d!1398547 (not (containsKey!1826 lt!1706295 key!3287))))

(declare-fun e!2823161 () List!50820)

(assert (=> d!1398547 (= lt!1706295 e!2823161)))

(declare-fun c!773641 () Bool)

(assert (=> d!1398547 (= c!773641 (and ((_ is Cons!50696) (t!357782 lt!1705019)) (= (_1!28867 (h!56563 (t!357782 lt!1705019))) key!3287)))))

(assert (=> d!1398547 (noDuplicateKeys!1178 (t!357782 lt!1705019))))

(assert (=> d!1398547 (= (removePairForKey!805 (t!357782 lt!1705019) key!3287) lt!1706295)))

(declare-fun b!4530844 () Bool)

(assert (=> b!4530844 (= e!2823161 (t!357782 (t!357782 lt!1705019)))))

(declare-fun b!4530845 () Bool)

(assert (=> b!4530845 (= e!2823161 e!2823160)))

(declare-fun c!773640 () Bool)

(assert (=> b!4530845 (= c!773640 ((_ is Cons!50696) (t!357782 lt!1705019)))))

(declare-fun b!4530847 () Bool)

(assert (=> b!4530847 (= e!2823160 Nil!50696)))

(assert (= (and d!1398547 c!773641) b!4530844))

(assert (= (and d!1398547 (not c!773641)) b!4530845))

(assert (= (and b!4530845 c!773640) b!4530846))

(assert (= (and b!4530845 (not c!773640)) b!4530847))

(declare-fun m!5288439 () Bool)

(assert (=> b!4530846 m!5288439))

(declare-fun m!5288441 () Bool)

(assert (=> d!1398547 m!5288441))

(assert (=> d!1398547 m!5286313))

(assert (=> b!4529710 d!1398547))

(declare-fun d!1398549 () Bool)

(declare-fun lt!1706296 () Bool)

(assert (=> d!1398549 (= lt!1706296 (select (content!8399 (keys!17626 lt!1705001)) key!3287))))

(declare-fun e!2823165 () Bool)

(assert (=> d!1398549 (= lt!1706296 e!2823165)))

(declare-fun res!1886955 () Bool)

(assert (=> d!1398549 (=> (not res!1886955) (not e!2823165))))

(assert (=> d!1398549 (= res!1886955 ((_ is Cons!50699) (keys!17626 lt!1705001)))))

(assert (=> d!1398549 (= (contains!13457 (keys!17626 lt!1705001) key!3287) lt!1706296)))

(declare-fun b!4530850 () Bool)

(declare-fun e!2823164 () Bool)

(assert (=> b!4530850 (= e!2823165 e!2823164)))

(declare-fun res!1886954 () Bool)

(assert (=> b!4530850 (=> res!1886954 e!2823164)))

(assert (=> b!4530850 (= res!1886954 (= (h!56568 (keys!17626 lt!1705001)) key!3287))))

(declare-fun b!4530851 () Bool)

(assert (=> b!4530851 (= e!2823164 (contains!13457 (t!357785 (keys!17626 lt!1705001)) key!3287))))

(assert (= (and d!1398549 res!1886955) b!4530850))

(assert (= (and b!4530850 (not res!1886954)) b!4530851))

(assert (=> d!1398549 m!5285655))

(assert (=> d!1398549 m!5285913))

(declare-fun m!5288449 () Bool)

(assert (=> d!1398549 m!5288449))

(declare-fun m!5288451 () Bool)

(assert (=> b!4530851 m!5288451))

(assert (=> b!4529497 d!1398549))

(assert (=> b!4529497 d!1398235))

(declare-fun b!4530853 () Bool)

(declare-fun e!2823166 () Option!11157)

(declare-fun e!2823167 () Option!11157)

(assert (=> b!4530853 (= e!2823166 e!2823167)))

(declare-fun c!773643 () Bool)

(assert (=> b!4530853 (= c!773643 (and ((_ is Cons!50697) (toList!4363 lt!1705490)) (not (= (_1!28868 (h!56564 (toList!4363 lt!1705490))) (_1!28868 lt!1705015)))))))

(declare-fun b!4530854 () Bool)

(assert (=> b!4530854 (= e!2823167 (getValueByKey!1121 (t!357783 (toList!4363 lt!1705490)) (_1!28868 lt!1705015)))))

(declare-fun b!4530852 () Bool)

(assert (=> b!4530852 (= e!2823166 (Some!11156 (_2!28868 (h!56564 (toList!4363 lt!1705490)))))))

(declare-fun d!1398555 () Bool)

(declare-fun c!773642 () Bool)

(assert (=> d!1398555 (= c!773642 (and ((_ is Cons!50697) (toList!4363 lt!1705490)) (= (_1!28868 (h!56564 (toList!4363 lt!1705490))) (_1!28868 lt!1705015))))))

(assert (=> d!1398555 (= (getValueByKey!1121 (toList!4363 lt!1705490) (_1!28868 lt!1705015)) e!2823166)))

(declare-fun b!4530855 () Bool)

(assert (=> b!4530855 (= e!2823167 None!11156)))

(assert (= (and d!1398555 c!773642) b!4530852))

(assert (= (and d!1398555 (not c!773642)) b!4530853))

(assert (= (and b!4530853 c!773643) b!4530854))

(assert (= (and b!4530853 (not c!773643)) b!4530855))

(declare-fun m!5288457 () Bool)

(assert (=> b!4530854 m!5288457))

(assert (=> b!4529694 d!1398555))

(declare-fun d!1398559 () Bool)

(declare-fun res!1886959 () Bool)

(declare-fun e!2823174 () Bool)

(assert (=> d!1398559 (=> res!1886959 e!2823174)))

(assert (=> d!1398559 (= res!1886959 (and ((_ is Cons!50697) (toList!4363 lt!1705004)) (= (_1!28868 (h!56564 (toList!4363 lt!1705004))) hash!344)))))

(assert (=> d!1398559 (= (containsKey!1830 (toList!4363 lt!1705004) hash!344) e!2823174)))

(declare-fun b!4530865 () Bool)

(declare-fun e!2823175 () Bool)

(assert (=> b!4530865 (= e!2823174 e!2823175)))

(declare-fun res!1886960 () Bool)

(assert (=> b!4530865 (=> (not res!1886960) (not e!2823175))))

(assert (=> b!4530865 (= res!1886960 (and (or (not ((_ is Cons!50697) (toList!4363 lt!1705004))) (bvsle (_1!28868 (h!56564 (toList!4363 lt!1705004))) hash!344)) ((_ is Cons!50697) (toList!4363 lt!1705004)) (bvslt (_1!28868 (h!56564 (toList!4363 lt!1705004))) hash!344)))))

(declare-fun b!4530866 () Bool)

(assert (=> b!4530866 (= e!2823175 (containsKey!1830 (t!357783 (toList!4363 lt!1705004)) hash!344))))

(assert (= (and d!1398559 (not res!1886959)) b!4530865))

(assert (= (and b!4530865 res!1886960) b!4530866))

(declare-fun m!5288459 () Bool)

(assert (=> b!4530866 m!5288459))

(assert (=> d!1397775 d!1398559))

(declare-fun d!1398561 () Bool)

(declare-fun lt!1706307 () Bool)

(assert (=> d!1398561 (= lt!1706307 (select (content!8399 e!2822253) key!3287))))

(declare-fun e!2823177 () Bool)

(assert (=> d!1398561 (= lt!1706307 e!2823177)))

(declare-fun res!1886962 () Bool)

(assert (=> d!1398561 (=> (not res!1886962) (not e!2823177))))

(assert (=> d!1398561 (= res!1886962 ((_ is Cons!50699) e!2822253))))

(assert (=> d!1398561 (= (contains!13457 e!2822253 key!3287) lt!1706307)))

(declare-fun b!4530867 () Bool)

(declare-fun e!2823176 () Bool)

(assert (=> b!4530867 (= e!2823177 e!2823176)))

(declare-fun res!1886961 () Bool)

(assert (=> b!4530867 (=> res!1886961 e!2823176)))

(assert (=> b!4530867 (= res!1886961 (= (h!56568 e!2822253) key!3287))))

(declare-fun b!4530868 () Bool)

(assert (=> b!4530868 (= e!2823176 (contains!13457 (t!357785 e!2822253) key!3287))))

(assert (= (and d!1398561 res!1886962) b!4530867))

(assert (= (and b!4530867 (not res!1886961)) b!4530868))

(declare-fun m!5288461 () Bool)

(assert (=> d!1398561 m!5288461))

(declare-fun m!5288463 () Bool)

(assert (=> d!1398561 m!5288463))

(declare-fun m!5288465 () Bool)

(assert (=> b!4530868 m!5288465))

(assert (=> bm!315702 d!1398561))

(declare-fun b!4530869 () Bool)

(declare-fun e!2823178 () Bool)

(assert (=> b!4530869 (= e!2823178 (not (contains!13457 (keys!17626 lt!1705428) key!3287)))))

(declare-fun b!4530870 () Bool)

(declare-fun e!2823182 () Unit!96566)

(declare-fun e!2823183 () Unit!96566)

(assert (=> b!4530870 (= e!2823182 e!2823183)))

(declare-fun c!773649 () Bool)

(declare-fun call!315829 () Bool)

(assert (=> b!4530870 (= c!773649 call!315829)))

(declare-fun b!4530871 () Bool)

(declare-fun e!2823179 () Bool)

(declare-fun e!2823180 () Bool)

(assert (=> b!4530871 (= e!2823179 e!2823180)))

(declare-fun res!1886964 () Bool)

(assert (=> b!4530871 (=> (not res!1886964) (not e!2823180))))

(assert (=> b!4530871 (= res!1886964 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705428) key!3287)))))

(declare-fun b!4530872 () Bool)

(declare-fun e!2823181 () List!50823)

(assert (=> b!4530872 (= e!2823181 (getKeysList!479 (toList!4364 lt!1705428)))))

(declare-fun b!4530873 () Bool)

(assert (=> b!4530873 (= e!2823180 (contains!13457 (keys!17626 lt!1705428) key!3287))))

(declare-fun d!1398563 () Bool)

(assert (=> d!1398563 e!2823179))

(declare-fun res!1886965 () Bool)

(assert (=> d!1398563 (=> res!1886965 e!2823179)))

(assert (=> d!1398563 (= res!1886965 e!2823178)))

(declare-fun res!1886963 () Bool)

(assert (=> d!1398563 (=> (not res!1886963) (not e!2823178))))

(declare-fun lt!1706311 () Bool)

(assert (=> d!1398563 (= res!1886963 (not lt!1706311))))

(declare-fun lt!1706312 () Bool)

(assert (=> d!1398563 (= lt!1706311 lt!1706312)))

(declare-fun lt!1706313 () Unit!96566)

(assert (=> d!1398563 (= lt!1706313 e!2823182)))

(declare-fun c!773647 () Bool)

(assert (=> d!1398563 (= c!773647 lt!1706312)))

(assert (=> d!1398563 (= lt!1706312 (containsKey!1829 (toList!4364 lt!1705428) key!3287))))

(assert (=> d!1398563 (= (contains!13455 lt!1705428 key!3287) lt!1706311)))

(declare-fun b!4530874 () Bool)

(assert (=> b!4530874 (= e!2823181 (keys!17626 lt!1705428))))

(declare-fun b!4530875 () Bool)

(declare-fun Unit!96942 () Unit!96566)

(assert (=> b!4530875 (= e!2823183 Unit!96942)))

(declare-fun bm!315824 () Bool)

(assert (=> bm!315824 (= call!315829 (contains!13457 e!2823181 key!3287))))

(declare-fun c!773648 () Bool)

(assert (=> bm!315824 (= c!773648 c!773647)))

(declare-fun b!4530876 () Bool)

(declare-fun lt!1706309 () Unit!96566)

(assert (=> b!4530876 (= e!2823182 lt!1706309)))

(declare-fun lt!1706310 () Unit!96566)

(assert (=> b!4530876 (= lt!1706310 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705428) key!3287))))

(assert (=> b!4530876 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705428) key!3287))))

(declare-fun lt!1706314 () Unit!96566)

(assert (=> b!4530876 (= lt!1706314 lt!1706310)))

(assert (=> b!4530876 (= lt!1706309 (lemmaInListThenGetKeysListContains!475 (toList!4364 lt!1705428) key!3287))))

(assert (=> b!4530876 call!315829))

(declare-fun b!4530877 () Bool)

(assert (=> b!4530877 false))

(declare-fun lt!1706308 () Unit!96566)

(declare-fun lt!1706315 () Unit!96566)

(assert (=> b!4530877 (= lt!1706308 lt!1706315)))

(assert (=> b!4530877 (containsKey!1829 (toList!4364 lt!1705428) key!3287)))

(assert (=> b!4530877 (= lt!1706315 (lemmaInGetKeysListThenContainsKey!478 (toList!4364 lt!1705428) key!3287))))

(declare-fun Unit!96944 () Unit!96566)

(assert (=> b!4530877 (= e!2823183 Unit!96944)))

(assert (= (and d!1398563 c!773647) b!4530876))

(assert (= (and d!1398563 (not c!773647)) b!4530870))

(assert (= (and b!4530870 c!773649) b!4530877))

(assert (= (and b!4530870 (not c!773649)) b!4530875))

(assert (= (or b!4530876 b!4530870) bm!315824))

(assert (= (and bm!315824 c!773648) b!4530872))

(assert (= (and bm!315824 (not c!773648)) b!4530874))

(assert (= (and d!1398563 res!1886963) b!4530869))

(assert (= (and d!1398563 (not res!1886965)) b!4530871))

(assert (= (and b!4530871 res!1886964) b!4530873))

(assert (=> b!4530869 m!5285909))

(assert (=> b!4530869 m!5285909))

(declare-fun m!5288483 () Bool)

(assert (=> b!4530869 m!5288483))

(declare-fun m!5288485 () Bool)

(assert (=> b!4530876 m!5288485))

(declare-fun m!5288487 () Bool)

(assert (=> b!4530876 m!5288487))

(assert (=> b!4530876 m!5288487))

(declare-fun m!5288489 () Bool)

(assert (=> b!4530876 m!5288489))

(declare-fun m!5288491 () Bool)

(assert (=> b!4530876 m!5288491))

(assert (=> b!4530874 m!5285909))

(assert (=> b!4530871 m!5288487))

(assert (=> b!4530871 m!5288487))

(assert (=> b!4530871 m!5288489))

(declare-fun m!5288493 () Bool)

(assert (=> d!1398563 m!5288493))

(assert (=> b!4530872 m!5288417))

(assert (=> b!4530873 m!5285909))

(assert (=> b!4530873 m!5285909))

(assert (=> b!4530873 m!5288483))

(assert (=> b!4530877 m!5288493))

(declare-fun m!5288495 () Bool)

(assert (=> b!4530877 m!5288495))

(declare-fun m!5288497 () Bool)

(assert (=> bm!315824 m!5288497))

(assert (=> d!1397757 d!1398563))

(declare-fun b!4530878 () Bool)

(declare-fun e!2823189 () Unit!96566)

(declare-fun Unit!96945 () Unit!96566)

(assert (=> b!4530878 (= e!2823189 Unit!96945)))

(declare-fun lt!1706318 () List!50820)

(assert (=> b!4530878 (= lt!1706318 (removePresrvNoDuplicatedKeys!154 (t!357782 (toList!4364 lt!1705001)) key!3287))))

(declare-fun lt!1706328 () Unit!96566)

(assert (=> b!4530878 (= lt!1706328 (lemmaInListThenGetKeysListContains!475 lt!1706318 (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(assert (=> b!4530878 (contains!13457 (getKeysList!479 lt!1706318) (_1!28867 (h!56563 (toList!4364 lt!1705001))))))

(declare-fun lt!1706317 () Unit!96566)

(assert (=> b!4530878 (= lt!1706317 lt!1706328)))

(assert (=> b!4530878 false))

(declare-fun b!4530879 () Bool)

(declare-fun e!2823191 () List!50820)

(assert (=> b!4530879 (= e!2823191 (t!357782 (toList!4364 lt!1705001)))))

(declare-fun c!773651 () Bool)

(declare-fun call!315830 () Bool)

(assert (=> b!4530879 (= c!773651 call!315830)))

(declare-fun lt!1706330 () Unit!96566)

(declare-fun e!2823190 () Unit!96566)

(assert (=> b!4530879 (= lt!1706330 e!2823190)))

(declare-fun bm!315825 () Bool)

(declare-fun call!315831 () (InoxSet tuple2!51146))

(assert (=> bm!315825 (= call!315831 (content!8398 (t!357782 (toList!4364 lt!1705001))))))

(declare-fun e!2823186 () Bool)

(declare-fun call!315835 () (InoxSet tuple2!51146))

(declare-fun b!4530880 () Bool)

(declare-fun call!315832 () (InoxSet tuple2!51146))

(assert (=> b!4530880 (= e!2823186 (= call!315835 ((_ map and) call!315832 ((_ map not) (store ((as const (Array tuple2!51146 Bool)) false) (tuple2!51147 key!3287 (get!16636 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))) true)))))))

(assert (=> b!4530880 (containsKey!1829 (toList!4364 lt!1705001) key!3287)))

(declare-fun lt!1706325 () Unit!96566)

(assert (=> b!4530880 (= lt!1706325 (lemmaContainsKeyImpliesGetValueByKeyDefined!1024 (toList!4364 lt!1705001) key!3287))))

(assert (=> b!4530880 (isDefined!8439 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))))

(declare-fun lt!1706323 () Unit!96566)

(assert (=> b!4530880 (= lt!1706323 lt!1706325)))

(declare-fun b!4530881 () Bool)

(declare-fun e!2823187 () Unit!96566)

(declare-fun Unit!96946 () Unit!96566)

(assert (=> b!4530881 (= e!2823187 Unit!96946)))

(declare-fun b!4530882 () Bool)

(declare-fun e!2823188 () List!50820)

(assert (=> b!4530882 (= e!2823188 (toList!4364 lt!1705001))))

(declare-fun bm!315826 () Bool)

(declare-fun c!773653 () Bool)

(assert (=> bm!315826 (= call!315830 (containsKey!1829 e!2823188 (ite c!773653 key!3287 (_1!28867 (h!56563 (toList!4364 lt!1705001))))))))

(declare-fun c!773657 () Bool)

(assert (=> bm!315826 (= c!773657 c!773653)))

(declare-fun b!4530883 () Bool)

(declare-fun Unit!96947 () Unit!96566)

(assert (=> b!4530883 (= e!2823187 Unit!96947)))

(declare-fun lt!1706324 () Unit!96566)

(assert (=> b!4530883 (= lt!1706324 (lemmaInGetKeysListThenContainsKey!478 (t!357782 (toList!4364 lt!1705001)) (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun call!315833 () Bool)

(assert (=> b!4530883 call!315833))

(declare-fun lt!1706329 () Unit!96566)

(assert (=> b!4530883 (= lt!1706329 lt!1706324)))

(assert (=> b!4530883 false))

(declare-fun b!4530884 () Bool)

(assert (=> b!4530884 (= e!2823188 (removePresrvNoDuplicatedKeys!154 (t!357782 (toList!4364 lt!1705001)) key!3287))))

(declare-fun b!4530885 () Bool)

(declare-fun res!1886966 () Bool)

(declare-fun e!2823185 () Bool)

(assert (=> b!4530885 (=> (not res!1886966) (not e!2823185))))

(declare-fun lt!1706327 () List!50820)

(assert (=> b!4530885 (= res!1886966 (= (content!8399 (getKeysList!479 lt!1706327)) ((_ map and) (content!8399 (getKeysList!479 (toList!4364 lt!1705001))) ((_ map not) (store ((as const (Array K!12085 Bool)) false) key!3287 true)))))))

(declare-fun b!4530886 () Bool)

(declare-fun e!2823184 () List!50820)

(assert (=> b!4530886 (= e!2823191 e!2823184)))

(declare-fun c!773652 () Bool)

(assert (=> b!4530886 (= c!773652 (and ((_ is Cons!50696) (toList!4364 lt!1705001)) (not (= (_1!28867 (h!56563 (toList!4364 lt!1705001))) key!3287))))))

(declare-fun b!4530887 () Bool)

(assert (=> b!4530887 (= e!2823185 e!2823186)))

(declare-fun c!773656 () Bool)

(assert (=> b!4530887 (= c!773656 (containsKey!1829 (toList!4364 lt!1705001) key!3287))))

(declare-fun bm!315827 () Bool)

(assert (=> bm!315827 (= call!315832 (content!8398 (toList!4364 lt!1705001)))))

(declare-fun bm!315828 () Bool)

(declare-fun lt!1706331 () K!12085)

(assert (=> bm!315828 (= call!315833 (containsKey!1829 (t!357782 (toList!4364 lt!1705001)) (ite c!773653 lt!1706331 (_1!28867 (h!56563 (toList!4364 lt!1705001))))))))

(declare-fun b!4530888 () Bool)

(declare-fun lt!1706316 () Unit!96566)

(assert (=> b!4530888 (= lt!1706316 e!2823189)))

(declare-fun c!773655 () Bool)

(assert (=> b!4530888 (= c!773655 call!315830)))

(declare-fun lt!1706326 () Unit!96566)

(assert (=> b!4530888 (= lt!1706326 e!2823187)))

(declare-fun c!773654 () Bool)

(assert (=> b!4530888 (= c!773654 (contains!13457 (getKeysList!479 (t!357782 (toList!4364 lt!1705001))) (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun lt!1706333 () List!50820)

(assert (=> b!4530888 (= lt!1706333 ($colon$colon!953 (removePresrvNoDuplicatedKeys!154 (t!357782 (toList!4364 lt!1705001)) key!3287) (h!56563 (toList!4364 lt!1705001))))))

(assert (=> b!4530888 (= e!2823184 lt!1706333)))

(declare-fun bm!315829 () Bool)

(declare-fun call!315834 () (InoxSet tuple2!51146))

(assert (=> bm!315829 (= call!315834 (content!8398 (toList!4364 lt!1705001)))))

(declare-fun b!4530889 () Bool)

(assert (=> b!4530889 (= call!315831 call!315834)))

(declare-fun Unit!96948 () Unit!96566)

(assert (=> b!4530889 (= e!2823190 Unit!96948)))

(declare-fun bm!315830 () Bool)

(assert (=> bm!315830 (= call!315835 (content!8398 lt!1706327))))

(declare-fun b!4530890 () Bool)

(assert (=> b!4530890 (= e!2823184 Nil!50696)))

(declare-fun b!4530891 () Bool)

(assert (=> b!4530891 (= call!315831 ((_ map and) call!315834 ((_ map not) (store ((as const (Array tuple2!51146 Bool)) false) (tuple2!51147 key!3287 (get!16636 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))) true))))))

(declare-fun lt!1706319 () Unit!96566)

(declare-fun e!2823192 () Unit!96566)

(assert (=> b!4530891 (= lt!1706319 e!2823192)))

(declare-fun c!773650 () Bool)

(assert (=> b!4530891 (= c!773650 (contains!13458 (t!357782 (toList!4364 lt!1705001)) (tuple2!51147 key!3287 (get!16636 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287)))))))

(declare-fun Unit!96949 () Unit!96566)

(assert (=> b!4530891 (= e!2823190 Unit!96949)))

(declare-fun b!4530892 () Bool)

(declare-fun Unit!96950 () Unit!96566)

(assert (=> b!4530892 (= e!2823192 Unit!96950)))

(declare-fun lt!1706332 () V!12331)

(assert (=> b!4530892 (= lt!1706332 (get!16636 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287)))))

(assert (=> b!4530892 (= lt!1706331 key!3287)))

(declare-fun lt!1706321 () K!12085)

(assert (=> b!4530892 (= lt!1706321 key!3287)))

(declare-fun lt!1706322 () Unit!96566)

(assert (=> b!4530892 (= lt!1706322 (lemmaContainsTupleThenContainsKey!70 (t!357782 (toList!4364 lt!1705001)) lt!1706331 (get!16636 (getValueByKey!1120 (toList!4364 lt!1705001) key!3287))))))

(assert (=> b!4530892 call!315833))

(declare-fun lt!1706320 () Unit!96566)

(assert (=> b!4530892 (= lt!1706320 lt!1706322)))

(assert (=> b!4530892 false))

(declare-fun b!4530893 () Bool)

(declare-fun Unit!96951 () Unit!96566)

(assert (=> b!4530893 (= e!2823189 Unit!96951)))

(declare-fun b!4530894 () Bool)

(declare-fun res!1886967 () Bool)

(assert (=> b!4530894 (=> (not res!1886967) (not e!2823185))))

(assert (=> b!4530894 (= res!1886967 (not (containsKey!1829 lt!1706327 key!3287)))))

(declare-fun d!1398567 () Bool)

(assert (=> d!1398567 e!2823185))

(declare-fun res!1886968 () Bool)

(assert (=> d!1398567 (=> (not res!1886968) (not e!2823185))))

(assert (=> d!1398567 (= res!1886968 (invariantList!1031 lt!1706327))))

(assert (=> d!1398567 (= lt!1706327 e!2823191)))

(assert (=> d!1398567 (= c!773653 (and ((_ is Cons!50696) (toList!4364 lt!1705001)) (= (_1!28867 (h!56563 (toList!4364 lt!1705001))) key!3287)))))

(assert (=> d!1398567 (invariantList!1031 (toList!4364 lt!1705001))))

(assert (=> d!1398567 (= (removePresrvNoDuplicatedKeys!154 (toList!4364 lt!1705001) key!3287) lt!1706327)))

(declare-fun b!4530895 () Bool)

(declare-fun Unit!96952 () Unit!96566)

(assert (=> b!4530895 (= e!2823192 Unit!96952)))

(declare-fun b!4530896 () Bool)

(assert (=> b!4530896 (= e!2823186 (= call!315835 call!315832))))

(assert (= (and d!1398567 c!773653) b!4530879))

(assert (= (and d!1398567 (not c!773653)) b!4530886))

(assert (= (and b!4530879 c!773651) b!4530891))

(assert (= (and b!4530879 (not c!773651)) b!4530889))

(assert (= (and b!4530891 c!773650) b!4530892))

(assert (= (and b!4530891 (not c!773650)) b!4530895))

(assert (= (or b!4530891 b!4530889) bm!315825))

(assert (= (or b!4530891 b!4530889) bm!315829))

(assert (= (and b!4530886 c!773652) b!4530888))

(assert (= (and b!4530886 (not c!773652)) b!4530890))

(assert (= (and b!4530888 c!773654) b!4530883))

(assert (= (and b!4530888 (not c!773654)) b!4530881))

(assert (= (and b!4530888 c!773655) b!4530878))

(assert (= (and b!4530888 (not c!773655)) b!4530893))

(assert (= (or b!4530892 b!4530883) bm!315828))

(assert (= (or b!4530879 b!4530888) bm!315826))

(assert (= (and bm!315826 c!773657) b!4530882))

(assert (= (and bm!315826 (not c!773657)) b!4530884))

(assert (= (and d!1398567 res!1886968) b!4530894))

(assert (= (and b!4530894 res!1886967) b!4530885))

(assert (= (and b!4530885 res!1886966) b!4530887))

(assert (= (and b!4530887 c!773656) b!4530880))

(assert (= (and b!4530887 (not c!773656)) b!4530896))

(assert (= (or b!4530880 b!4530896) bm!315830))

(assert (= (or b!4530880 b!4530896) bm!315827))

(assert (=> b!4530888 m!5286187))

(assert (=> b!4530888 m!5286187))

(assert (=> b!4530888 m!5286191))

(declare-fun m!5288499 () Bool)

(assert (=> b!4530888 m!5288499))

(assert (=> b!4530888 m!5288499))

(declare-fun m!5288501 () Bool)

(assert (=> b!4530888 m!5288501))

(declare-fun m!5288503 () Bool)

(assert (=> b!4530885 m!5288503))

(assert (=> b!4530885 m!5288503))

(declare-fun m!5288505 () Bool)

(assert (=> b!4530885 m!5288505))

(assert (=> b!4530885 m!5285669))

(assert (=> b!4530885 m!5285669))

(declare-fun m!5288507 () Bool)

(assert (=> b!4530885 m!5288507))

(assert (=> b!4530885 m!5285461))

(declare-fun m!5288509 () Bool)

(assert (=> bm!315829 m!5288509))

(assert (=> b!4530878 m!5288499))

(declare-fun m!5288511 () Bool)

(assert (=> b!4530878 m!5288511))

(declare-fun m!5288513 () Bool)

(assert (=> b!4530878 m!5288513))

(assert (=> b!4530878 m!5288513))

(declare-fun m!5288515 () Bool)

(assert (=> b!4530878 m!5288515))

(assert (=> b!4530891 m!5285661))

(assert (=> b!4530891 m!5285661))

(declare-fun m!5288517 () Bool)

(assert (=> b!4530891 m!5288517))

(declare-fun m!5288519 () Bool)

(assert (=> b!4530891 m!5288519))

(declare-fun m!5288521 () Bool)

(assert (=> b!4530891 m!5288521))

(assert (=> bm!315827 m!5288509))

(declare-fun m!5288523 () Bool)

(assert (=> d!1398567 m!5288523))

(assert (=> d!1398567 m!5286201))

(assert (=> b!4530892 m!5285661))

(assert (=> b!4530892 m!5285661))

(assert (=> b!4530892 m!5288517))

(assert (=> b!4530892 m!5288517))

(declare-fun m!5288525 () Bool)

(assert (=> b!4530892 m!5288525))

(declare-fun m!5288527 () Bool)

(assert (=> bm!315830 m!5288527))

(declare-fun m!5288529 () Bool)

(assert (=> b!4530894 m!5288529))

(declare-fun m!5288531 () Bool)

(assert (=> bm!315828 m!5288531))

(declare-fun m!5288533 () Bool)

(assert (=> bm!315826 m!5288533))

(assert (=> b!4530880 m!5288519))

(assert (=> b!4530880 m!5285659))

(assert (=> b!4530880 m!5285661))

(assert (=> b!4530880 m!5288517))

(assert (=> b!4530880 m!5285661))

(assert (=> b!4530880 m!5285663))

(assert (=> b!4530880 m!5285661))

(assert (=> b!4530880 m!5285667))

(assert (=> b!4530887 m!5285667))

(declare-fun m!5288535 () Bool)

(assert (=> b!4530883 m!5288535))

(declare-fun m!5288537 () Bool)

(assert (=> bm!315825 m!5288537))

(assert (=> b!4530884 m!5288499))

(assert (=> d!1397757 d!1398567))

(declare-fun d!1398569 () Bool)

(declare-fun res!1886973 () Bool)

(declare-fun e!2823197 () Bool)

(assert (=> d!1398569 (=> res!1886973 e!2823197)))

(assert (=> d!1398569 (= res!1886973 (or ((_ is Nil!50697) (toList!4363 lm!1477)) ((_ is Nil!50697) (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1398569 (= (isStrictlySorted!444 (toList!4363 lm!1477)) e!2823197)))

(declare-fun b!4530901 () Bool)

(declare-fun e!2823198 () Bool)

(assert (=> b!4530901 (= e!2823197 e!2823198)))

(declare-fun res!1886974 () Bool)

(assert (=> b!4530901 (=> (not res!1886974) (not e!2823198))))

(assert (=> b!4530901 (= res!1886974 (bvslt (_1!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))

(declare-fun b!4530902 () Bool)

(assert (=> b!4530902 (= e!2823198 (isStrictlySorted!444 (t!357783 (toList!4363 lm!1477))))))

(assert (= (and d!1398569 (not res!1886973)) b!4530901))

(assert (= (and b!4530901 res!1886974) b!4530902))

(declare-fun m!5288539 () Bool)

(assert (=> b!4530902 m!5288539))

(assert (=> d!1397645 d!1398569))

(assert (=> b!4529570 d!1397853))

(declare-fun d!1398571 () Bool)

(assert (=> d!1398571 (= (isDefined!8440 lt!1705382) (not (isEmpty!28710 lt!1705382)))))

(declare-fun bs!866833 () Bool)

(assert (= bs!866833 d!1398571))

(assert (=> bs!866833 m!5285715))

(assert (=> b!4529529 d!1398571))

(declare-fun d!1398573 () Bool)

(declare-fun res!1886975 () Bool)

(declare-fun e!2823199 () Bool)

(assert (=> d!1398573 (=> res!1886975 e!2823199)))

(assert (=> d!1398573 (= res!1886975 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1398573 (= (forall!10305 (_2!28868 lt!1705015) lambda!174224) e!2823199)))

(declare-fun b!4530903 () Bool)

(declare-fun e!2823200 () Bool)

(assert (=> b!4530903 (= e!2823199 e!2823200)))

(declare-fun res!1886976 () Bool)

(assert (=> b!4530903 (=> (not res!1886976) (not e!2823200))))

(assert (=> b!4530903 (= res!1886976 (dynLambda!21188 lambda!174224 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4530904 () Bool)

(assert (=> b!4530904 (= e!2823200 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174224))))

(assert (= (and d!1398573 (not res!1886975)) b!4530903))

(assert (= (and b!4530903 res!1886976) b!4530904))

(declare-fun b_lambda!156517 () Bool)

(assert (=> (not b_lambda!156517) (not b!4530903)))

(declare-fun m!5288541 () Bool)

(assert (=> b!4530903 m!5288541))

(declare-fun m!5288543 () Bool)

(assert (=> b!4530904 m!5288543))

(assert (=> d!1397787 d!1398573))

(assert (=> d!1397787 d!1397753))

(assert (=> b!4529493 d!1398549))

(assert (=> b!4529493 d!1398235))

(declare-fun d!1398575 () Bool)

(assert (=> d!1398575 (= (hash!2861 hashF!1107 (_1!28867 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026))))) (hash!2865 hashF!1107 (_1!28867 (tuple2!51147 key!3287 (_2!28867 (get!16633 lt!1705026))))))))

(declare-fun bs!866834 () Bool)

(assert (= bs!866834 d!1398575))

(declare-fun m!5288545 () Bool)

(assert (=> bs!866834 m!5288545))

(assert (=> bs!864849 d!1398575))

(declare-fun d!1398577 () Bool)

(declare-fun res!1886977 () Bool)

(declare-fun e!2823201 () Bool)

(assert (=> d!1398577 (=> res!1886977 e!2823201)))

(assert (=> d!1398577 (= res!1886977 ((_ is Nil!50696) (toList!4364 lt!1705027)))))

(assert (=> d!1398577 (= (forall!10305 (toList!4364 lt!1705027) (ite c!773299 lambda!174165 lambda!174167)) e!2823201)))

(declare-fun b!4530905 () Bool)

(declare-fun e!2823202 () Bool)

(assert (=> b!4530905 (= e!2823201 e!2823202)))

(declare-fun res!1886978 () Bool)

(assert (=> b!4530905 (=> (not res!1886978) (not e!2823202))))

(assert (=> b!4530905 (= res!1886978 (dynLambda!21188 (ite c!773299 lambda!174165 lambda!174167) (h!56563 (toList!4364 lt!1705027))))))

(declare-fun b!4530906 () Bool)

(assert (=> b!4530906 (= e!2823202 (forall!10305 (t!357782 (toList!4364 lt!1705027)) (ite c!773299 lambda!174165 lambda!174167)))))

(assert (= (and d!1398577 (not res!1886977)) b!4530905))

(assert (= (and b!4530905 res!1886978) b!4530906))

(declare-fun b_lambda!156519 () Bool)

(assert (=> (not b_lambda!156519) (not b!4530905)))

(declare-fun m!5288547 () Bool)

(assert (=> b!4530905 m!5288547))

(declare-fun m!5288549 () Bool)

(assert (=> b!4530906 m!5288549))

(assert (=> bm!315692 d!1398577))

(declare-fun d!1398579 () Bool)

(declare-fun res!1886980 () Bool)

(declare-fun e!2823205 () Bool)

(assert (=> d!1398579 (=> res!1886980 e!2823205)))

(declare-fun e!2823203 () Bool)

(assert (=> d!1398579 (= res!1886980 e!2823203)))

(declare-fun res!1886981 () Bool)

(assert (=> d!1398579 (=> (not res!1886981) (not e!2823203))))

(assert (=> d!1398579 (= res!1886981 ((_ is Cons!50697) (t!357783 (toList!4363 lt!1705004))))))

(assert (=> d!1398579 (= (containsKeyBiggerList!158 (t!357783 (toList!4363 lt!1705004)) key!3287) e!2823205)))

(declare-fun b!4530907 () Bool)

(assert (=> b!4530907 (= e!2823203 (containsKey!1826 (_2!28868 (h!56564 (t!357783 (toList!4363 lt!1705004)))) key!3287))))

(declare-fun b!4530908 () Bool)

(declare-fun e!2823204 () Bool)

(assert (=> b!4530908 (= e!2823205 e!2823204)))

(declare-fun res!1886979 () Bool)

(assert (=> b!4530908 (=> (not res!1886979) (not e!2823204))))

(assert (=> b!4530908 (= res!1886979 ((_ is Cons!50697) (t!357783 (toList!4363 lt!1705004))))))

(declare-fun b!4530909 () Bool)

(assert (=> b!4530909 (= e!2823204 (containsKeyBiggerList!158 (t!357783 (t!357783 (toList!4363 lt!1705004))) key!3287))))

(assert (= (and d!1398579 res!1886981) b!4530907))

(assert (= (and d!1398579 (not res!1886980)) b!4530908))

(assert (= (and b!4530908 res!1886979) b!4530909))

(declare-fun m!5288551 () Bool)

(assert (=> b!4530907 m!5288551))

(declare-fun m!5288553 () Bool)

(assert (=> b!4530909 m!5288553))

(assert (=> b!4529593 d!1398579))

(declare-fun d!1398581 () Bool)

(assert (=> d!1398581 (= (get!16635 (getValueByKey!1121 (toList!4363 lm!1477) hash!344)) (v!44806 (getValueByKey!1121 (toList!4363 lm!1477) hash!344)))))

(assert (=> d!1397799 d!1398581))

(assert (=> d!1397799 d!1398519))

(declare-fun d!1398583 () Bool)

(declare-fun e!2823207 () Bool)

(assert (=> d!1398583 e!2823207))

(declare-fun res!1886982 () Bool)

(assert (=> d!1398583 (=> res!1886982 e!2823207)))

(declare-fun lt!1706335 () Bool)

(assert (=> d!1398583 (= res!1886982 (not lt!1706335))))

(declare-fun lt!1706336 () Bool)

(assert (=> d!1398583 (= lt!1706335 lt!1706336)))

(declare-fun lt!1706334 () Unit!96566)

(declare-fun e!2823206 () Unit!96566)

(assert (=> d!1398583 (= lt!1706334 e!2823206)))

(declare-fun c!773658 () Bool)

(assert (=> d!1398583 (= c!773658 lt!1706336)))

(assert (=> d!1398583 (= lt!1706336 (containsKey!1830 (toList!4363 lm!1477) (hash!2861 hashF!1107 key!3287)))))

(assert (=> d!1398583 (= (contains!13453 lm!1477 (hash!2861 hashF!1107 key!3287)) lt!1706335)))

(declare-fun b!4530910 () Bool)

(declare-fun lt!1706337 () Unit!96566)

(assert (=> b!4530910 (= e!2823206 lt!1706337)))

(assert (=> b!4530910 (= lt!1706337 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lm!1477) (hash!2861 hashF!1107 key!3287)))))

(assert (=> b!4530910 (isDefined!8441 (getValueByKey!1121 (toList!4363 lm!1477) (hash!2861 hashF!1107 key!3287)))))

(declare-fun b!4530911 () Bool)

(declare-fun Unit!96959 () Unit!96566)

(assert (=> b!4530911 (= e!2823206 Unit!96959)))

(declare-fun b!4530912 () Bool)

(assert (=> b!4530912 (= e!2823207 (isDefined!8441 (getValueByKey!1121 (toList!4363 lm!1477) (hash!2861 hashF!1107 key!3287))))))

(assert (= (and d!1398583 c!773658) b!4530910))

(assert (= (and d!1398583 (not c!773658)) b!4530911))

(assert (= (and d!1398583 (not res!1886982)) b!4530912))

(assert (=> d!1398583 m!5285187))

(declare-fun m!5288555 () Bool)

(assert (=> d!1398583 m!5288555))

(assert (=> b!4530910 m!5285187))

(declare-fun m!5288557 () Bool)

(assert (=> b!4530910 m!5288557))

(assert (=> b!4530910 m!5285187))

(declare-fun m!5288559 () Bool)

(assert (=> b!4530910 m!5288559))

(assert (=> b!4530910 m!5288559))

(declare-fun m!5288561 () Bool)

(assert (=> b!4530910 m!5288561))

(assert (=> b!4530912 m!5285187))

(assert (=> b!4530912 m!5288559))

(assert (=> b!4530912 m!5288559))

(assert (=> b!4530912 m!5288561))

(assert (=> d!1397797 d!1398583))

(assert (=> d!1397797 d!1397725))

(declare-fun d!1398585 () Bool)

(assert (=> d!1398585 (contains!13453 lm!1477 (hash!2861 hashF!1107 key!3287))))

(assert (=> d!1398585 true))

(declare-fun _$27!1260 () Unit!96566)

(assert (=> d!1398585 (= (choose!29714 lm!1477 key!3287 hashF!1107) _$27!1260)))

(declare-fun bs!866835 () Bool)

(assert (= bs!866835 d!1398585))

(assert (=> bs!866835 m!5285187))

(assert (=> bs!866835 m!5285187))

(assert (=> bs!866835 m!5286057))

(assert (=> d!1397797 d!1398585))

(declare-fun d!1398587 () Bool)

(declare-fun res!1886983 () Bool)

(declare-fun e!2823208 () Bool)

(assert (=> d!1398587 (=> res!1886983 e!2823208)))

(assert (=> d!1398587 (= res!1886983 ((_ is Nil!50697) (toList!4363 lm!1477)))))

(assert (=> d!1398587 (= (forall!10303 (toList!4363 lm!1477) lambda!174227) e!2823208)))

(declare-fun b!4530913 () Bool)

(declare-fun e!2823209 () Bool)

(assert (=> b!4530913 (= e!2823208 e!2823209)))

(declare-fun res!1886984 () Bool)

(assert (=> b!4530913 (=> (not res!1886984) (not e!2823209))))

(assert (=> b!4530913 (= res!1886984 (dynLambda!21186 lambda!174227 (h!56564 (toList!4363 lm!1477))))))

(declare-fun b!4530914 () Bool)

(assert (=> b!4530914 (= e!2823209 (forall!10303 (t!357783 (toList!4363 lm!1477)) lambda!174227))))

(assert (= (and d!1398587 (not res!1886983)) b!4530913))

(assert (= (and b!4530913 res!1886984) b!4530914))

(declare-fun b_lambda!156521 () Bool)

(assert (=> (not b_lambda!156521) (not b!4530913)))

(declare-fun m!5288563 () Bool)

(assert (=> b!4530913 m!5288563))

(declare-fun m!5288565 () Bool)

(assert (=> b!4530914 m!5288565))

(assert (=> d!1397797 d!1398587))

(assert (=> b!4529682 d!1398045))

(assert (=> b!4529682 d!1398047))

(declare-fun bs!866836 () Bool)

(declare-fun b!4530923 () Bool)

(assert (= bs!866836 (and b!4530923 b!4530106)))

(declare-fun lambda!174388 () Int)

(assert (=> bs!866836 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174388 lambda!174274))))

(declare-fun bs!866837 () Bool)

(assert (= bs!866837 (and b!4530923 b!4530248)))

(assert (=> bs!866837 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 lt!1705258)) (= lambda!174388 lambda!174294))))

(declare-fun bs!866838 () Bool)

(assert (= bs!866838 (and b!4530923 b!4529816)))

(assert (=> bs!866838 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 lt!1705010)) (= lambda!174388 lambda!174252))))

(declare-fun bs!866839 () Bool)

(assert (= bs!866839 (and b!4530923 b!4530122)))

(assert (=> bs!866839 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174388 lambda!174277))))

(declare-fun bs!866840 () Bool)

(assert (= bs!866840 (and b!4530923 b!4530448)))

(assert (=> bs!866840 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 lt!1705001)) (= lambda!174388 lambda!174302))))

(declare-fun bs!866841 () Bool)

(assert (= bs!866841 (and b!4530923 b!4530130)))

(assert (=> bs!866841 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 lt!1705010))) (= lambda!174388 lambda!174276))))

(declare-fun bs!866842 () Bool)

(assert (= bs!866842 (and b!4530923 b!4530128)))

(assert (=> bs!866842 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 lt!1705010)) (= lambda!174388 lambda!174278))))

(declare-fun bs!866843 () Bool)

(assert (= bs!866843 (and b!4530923 b!4529798)))

(assert (=> bs!866843 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 lt!1705001))) (= lambda!174388 lambda!174244))))

(declare-fun bs!866844 () Bool)

(assert (= bs!866844 (and b!4530923 b!4529790)))

(assert (=> bs!866844 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174388 lambda!174245))))

(declare-fun bs!866845 () Bool)

(assert (= bs!866845 (and b!4530923 b!4530839)))

(assert (=> bs!866845 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 lt!1705428)) (= lambda!174388 lambda!174386))))

(declare-fun bs!866846 () Bool)

(assert (= bs!866846 (and b!4530923 b!4529796)))

(assert (=> bs!866846 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 lt!1705001)) (= lambda!174388 lambda!174246))))

(declare-fun bs!866847 () Bool)

(assert (= bs!866847 (and b!4530923 b!4530237)))

(assert (=> bs!866847 (= (= (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= lambda!174388 lambda!174292))))

(assert (=> b!4530923 true))

(declare-fun bs!866848 () Bool)

(declare-fun b!4530915 () Bool)

(assert (= bs!866848 (and b!4530915 b!4530106)))

(declare-fun lambda!174389 () Int)

(assert (=> bs!866848 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (= lambda!174389 lambda!174274))))

(declare-fun bs!866849 () Bool)

(assert (= bs!866849 (and b!4530915 b!4530248)))

(assert (=> bs!866849 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 lt!1705258)) (= lambda!174389 lambda!174294))))

(declare-fun bs!866850 () Bool)

(assert (= bs!866850 (and b!4530915 b!4529816)))

(assert (=> bs!866850 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 lt!1705010)) (= lambda!174389 lambda!174252))))

(declare-fun bs!866851 () Bool)

(assert (= bs!866851 (and b!4530915 b!4530923)))

(assert (=> bs!866851 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (= lambda!174389 lambda!174388))))

(declare-fun bs!866852 () Bool)

(assert (= bs!866852 (and b!4530915 b!4530122)))

(assert (=> bs!866852 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174389 lambda!174277))))

(declare-fun bs!866853 () Bool)

(assert (= bs!866853 (and b!4530915 b!4530448)))

(assert (=> bs!866853 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 lt!1705001)) (= lambda!174389 lambda!174302))))

(declare-fun bs!866854 () Bool)

(assert (= bs!866854 (and b!4530915 b!4530130)))

(assert (=> bs!866854 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (t!357782 (toList!4364 lt!1705010))) (= lambda!174389 lambda!174276))))

(declare-fun bs!866855 () Bool)

(assert (= bs!866855 (and b!4530915 b!4530128)))

(assert (=> bs!866855 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 lt!1705010)) (= lambda!174389 lambda!174278))))

(declare-fun bs!866856 () Bool)

(assert (= bs!866856 (and b!4530915 b!4529798)))

(assert (=> bs!866856 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (t!357782 (toList!4364 lt!1705001))) (= lambda!174389 lambda!174244))))

(declare-fun bs!866857 () Bool)

(assert (= bs!866857 (and b!4530915 b!4529790)))

(assert (=> bs!866857 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174389 lambda!174245))))

(declare-fun bs!866858 () Bool)

(assert (= bs!866858 (and b!4530915 b!4530839)))

(assert (=> bs!866858 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 lt!1705428)) (= lambda!174389 lambda!174386))))

(declare-fun bs!866859 () Bool)

(assert (= bs!866859 (and b!4530915 b!4529796)))

(assert (=> bs!866859 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 lt!1705001)) (= lambda!174389 lambda!174246))))

(declare-fun bs!866860 () Bool)

(assert (= bs!866860 (and b!4530915 b!4530237)))

(assert (=> bs!866860 (= (= (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= lambda!174389 lambda!174292))))

(assert (=> b!4530915 true))

(declare-fun bs!866861 () Bool)

(declare-fun b!4530921 () Bool)

(assert (= bs!866861 (and b!4530921 b!4530106)))

(declare-fun lambda!174390 () Int)

(assert (=> bs!866861 (= lambda!174390 lambda!174274)))

(declare-fun bs!866862 () Bool)

(assert (= bs!866862 (and b!4530921 b!4530248)))

(assert (=> bs!866862 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705258)) (= lambda!174390 lambda!174294))))

(declare-fun bs!866863 () Bool)

(assert (= bs!866863 (and b!4530921 b!4529816)))

(assert (=> bs!866863 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705010)) (= lambda!174390 lambda!174252))))

(declare-fun bs!866864 () Bool)

(assert (= bs!866864 (and b!4530921 b!4530923)))

(assert (=> bs!866864 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (= lambda!174390 lambda!174388))))

(declare-fun bs!866865 () Bool)

(assert (= bs!866865 (and b!4530921 b!4530122)))

(assert (=> bs!866865 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (Cons!50696 (h!56563 (toList!4364 lt!1705010)) (t!357782 (toList!4364 lt!1705010)))) (= lambda!174390 lambda!174277))))

(declare-fun bs!866866 () Bool)

(assert (= bs!866866 (and b!4530921 b!4530448)))

(assert (=> bs!866866 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705001)) (= lambda!174390 lambda!174302))))

(declare-fun bs!866867 () Bool)

(assert (= bs!866867 (and b!4530921 b!4530130)))

(assert (=> bs!866867 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (t!357782 (toList!4364 lt!1705010))) (= lambda!174390 lambda!174276))))

(declare-fun bs!866868 () Bool)

(assert (= bs!866868 (and b!4530921 b!4530128)))

(assert (=> bs!866868 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705010)) (= lambda!174390 lambda!174278))))

(declare-fun bs!866869 () Bool)

(assert (= bs!866869 (and b!4530921 b!4529798)))

(assert (=> bs!866869 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (t!357782 (toList!4364 lt!1705001))) (= lambda!174390 lambda!174244))))

(declare-fun bs!866870 () Bool)

(assert (= bs!866870 (and b!4530921 b!4530839)))

(assert (=> bs!866870 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705428)) (= lambda!174390 lambda!174386))))

(declare-fun bs!866871 () Bool)

(assert (= bs!866871 (and b!4530921 b!4529796)))

(assert (=> bs!866871 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 lt!1705001)) (= lambda!174390 lambda!174246))))

(declare-fun bs!866872 () Bool)

(assert (= bs!866872 (and b!4530921 b!4530237)))

(assert (=> bs!866872 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (toList!4364 (addToMapMapFromBucket!705 (_2!28868 lt!1705015) lt!1705001))) (= lambda!174390 lambda!174292))))

(declare-fun bs!866873 () Bool)

(assert (= bs!866873 (and b!4530921 b!4529790)))

(assert (=> bs!866873 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (Cons!50696 (h!56563 (toList!4364 lt!1705001)) (t!357782 (toList!4364 lt!1705001)))) (= lambda!174390 lambda!174245))))

(declare-fun bs!866874 () Bool)

(assert (= bs!866874 (and b!4530921 b!4530915)))

(assert (=> bs!866874 (= (= (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (Cons!50696 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))) (= lambda!174390 lambda!174389))))

(assert (=> b!4530921 true))

(declare-fun bs!866875 () Bool)

(declare-fun b!4530920 () Bool)

(assert (= bs!866875 (and b!4530920 b!4529817)))

(declare-fun lambda!174391 () Int)

(assert (=> bs!866875 (= lambda!174391 lambda!174253)))

(declare-fun bs!866876 () Bool)

(assert (= bs!866876 (and b!4530920 b!4530249)))

(assert (=> bs!866876 (= lambda!174391 lambda!174295)))

(declare-fun bs!866877 () Bool)

(assert (= bs!866877 (and b!4530920 b!4530107)))

(assert (=> bs!866877 (= lambda!174391 lambda!174275)))

(declare-fun bs!866878 () Bool)

(assert (= bs!866878 (and b!4530920 b!4530449)))

(assert (=> bs!866878 (= lambda!174391 lambda!174305)))

(declare-fun bs!866879 () Bool)

(assert (= bs!866879 (and b!4530920 b!4529795)))

(assert (=> bs!866879 (= lambda!174391 lambda!174247)))

(declare-fun bs!866880 () Bool)

(assert (= bs!866880 (and b!4530920 b!4530840)))

(assert (=> bs!866880 (= lambda!174391 lambda!174387)))

(declare-fun bs!866881 () Bool)

(assert (= bs!866881 (and b!4530920 b!4530238)))

(assert (=> bs!866881 (= lambda!174391 lambda!174293)))

(declare-fun bs!866882 () Bool)

(assert (= bs!866882 (and b!4530920 b!4530127)))

(assert (=> bs!866882 (= lambda!174391 lambda!174279)))

(declare-fun e!2823212 () List!50823)

(assert (=> b!4530915 (= e!2823212 (Cons!50699 (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (getKeysList!479 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))))

(declare-fun c!773661 () Bool)

(assert (=> b!4530915 (= c!773661 (containsKey!1829 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))))

(declare-fun lt!1706344 () Unit!96566)

(declare-fun e!2823210 () Unit!96566)

(assert (=> b!4530915 (= lt!1706344 e!2823210)))

(declare-fun c!773659 () Bool)

(assert (=> b!4530915 (= c!773659 (contains!13457 (getKeysList!479 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))))

(declare-fun lt!1706342 () Unit!96566)

(declare-fun e!2823213 () Unit!96566)

(assert (=> b!4530915 (= lt!1706342 e!2823213)))

(declare-fun lt!1706340 () List!50823)

(assert (=> b!4530915 (= lt!1706340 (getKeysList!479 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))))

(declare-fun lt!1706339 () Unit!96566)

(assert (=> b!4530915 (= lt!1706339 (lemmaForallContainsAddHeadPreserves!176 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) lt!1706340 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))))

(assert (=> b!4530915 (forall!10306 lt!1706340 lambda!174389)))

(declare-fun lt!1706338 () Unit!96566)

(assert (=> b!4530915 (= lt!1706338 lt!1706339)))

(declare-fun b!4530916 () Bool)

(assert (=> b!4530916 (= e!2823212 Nil!50699)))

(declare-fun b!4530917 () Bool)

(assert (=> b!4530917 false))

(declare-fun Unit!96964 () Unit!96566)

(assert (=> b!4530917 (= e!2823210 Unit!96964)))

(declare-fun b!4530918 () Bool)

(declare-fun res!1886986 () Bool)

(declare-fun e!2823211 () Bool)

(assert (=> b!4530918 (=> (not res!1886986) (not e!2823211))))

(declare-fun lt!1706341 () List!50823)

(assert (=> b!4530918 (= res!1886986 (= (length!366 lt!1706341) (length!367 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))))

(declare-fun b!4530919 () Bool)

(declare-fun Unit!96965 () Unit!96566)

(assert (=> b!4530919 (= e!2823210 Unit!96965)))

(declare-fun d!1398589 () Bool)

(assert (=> d!1398589 e!2823211))

(declare-fun res!1886985 () Bool)

(assert (=> d!1398589 (=> (not res!1886985) (not e!2823211))))

(assert (=> d!1398589 (= res!1886985 (noDuplicate!755 lt!1706341))))

(assert (=> d!1398589 (= lt!1706341 e!2823212)))

(declare-fun c!773660 () Bool)

(assert (=> d!1398589 (= c!773660 ((_ is Cons!50696) (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))

(assert (=> d!1398589 (invariantList!1031 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1398589 (= (getKeysList!479 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))) lt!1706341)))

(assert (=> b!4530920 (= e!2823211 (= (content!8399 lt!1706341) (content!8399 (map!11155 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) lambda!174391))))))

(declare-fun res!1886987 () Bool)

(assert (=> b!4530921 (=> (not res!1886987) (not e!2823211))))

(assert (=> b!4530921 (= res!1886987 (forall!10306 lt!1706341 lambda!174390))))

(declare-fun b!4530922 () Bool)

(declare-fun Unit!96966 () Unit!96566)

(assert (=> b!4530922 (= e!2823213 Unit!96966)))

(assert (=> b!4530923 false))

(declare-fun lt!1706343 () Unit!96566)

(assert (=> b!4530923 (= lt!1706343 (forallContained!2560 (getKeysList!479 (t!357782 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))))) lambda!174388 (_1!28867 (h!56563 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 lm!1477))))))))))

(declare-fun Unit!96967 () Unit!96566)

(assert (=> b!4530923 (= e!2823213 Unit!96967)))

(assert (= (and d!1398589 c!773660) b!4530915))

(assert (= (and d!1398589 (not c!773660)) b!4530916))

(assert (= (and b!4530915 c!773661) b!4530917))

(assert (= (and b!4530915 (not c!773661)) b!4530919))

(assert (= (and b!4530915 c!773659) b!4530923))

(assert (= (and b!4530915 (not c!773659)) b!4530922))

(assert (= (and d!1398589 res!1886985) b!4530918))

(assert (= (and b!4530918 res!1886986) b!4530921))

(assert (= (and b!4530921 res!1886987) b!4530920))

(declare-fun m!5288567 () Bool)

(assert (=> b!4530915 m!5288567))

(declare-fun m!5288569 () Bool)

(assert (=> b!4530915 m!5288569))

(declare-fun m!5288571 () Bool)

(assert (=> b!4530915 m!5288571))

(assert (=> b!4530915 m!5288569))

(declare-fun m!5288573 () Bool)

(assert (=> b!4530915 m!5288573))

(declare-fun m!5288575 () Bool)

(assert (=> b!4530915 m!5288575))

(declare-fun m!5288577 () Bool)

(assert (=> b!4530918 m!5288577))

(assert (=> b!4530918 m!5286655))

(declare-fun m!5288579 () Bool)

(assert (=> d!1398589 m!5288579))

(assert (=> d!1398589 m!5286541))

(assert (=> b!4530923 m!5288569))

(assert (=> b!4530923 m!5288569))

(declare-fun m!5288581 () Bool)

(assert (=> b!4530923 m!5288581))

(declare-fun m!5288583 () Bool)

(assert (=> b!4530920 m!5288583))

(declare-fun m!5288585 () Bool)

(assert (=> b!4530920 m!5288585))

(assert (=> b!4530920 m!5288585))

(declare-fun m!5288587 () Bool)

(assert (=> b!4530920 m!5288587))

(declare-fun m!5288589 () Bool)

(assert (=> b!4530921 m!5288589))

(assert (=> b!4529481 d!1398589))

(declare-fun d!1398591 () Bool)

(declare-fun res!1886989 () Bool)

(declare-fun e!2823216 () Bool)

(assert (=> d!1398591 (=> res!1886989 e!2823216)))

(declare-fun e!2823214 () Bool)

(assert (=> d!1398591 (= res!1886989 e!2823214)))

(declare-fun res!1886990 () Bool)

(assert (=> d!1398591 (=> (not res!1886990) (not e!2823214))))

(assert (=> d!1398591 (= res!1886990 ((_ is Cons!50697) (t!357783 (t!357783 (toList!4363 lm!1477)))))))

(assert (=> d!1398591 (= (containsKeyBiggerList!158 (t!357783 (t!357783 (toList!4363 lm!1477))) key!3287) e!2823216)))

(declare-fun b!4530924 () Bool)

(assert (=> b!4530924 (= e!2823214 (containsKey!1826 (_2!28868 (h!56564 (t!357783 (t!357783 (toList!4363 lm!1477))))) key!3287))))

(declare-fun b!4530925 () Bool)

(declare-fun e!2823215 () Bool)

(assert (=> b!4530925 (= e!2823216 e!2823215)))

(declare-fun res!1886988 () Bool)

(assert (=> b!4530925 (=> (not res!1886988) (not e!2823215))))

(assert (=> b!4530925 (= res!1886988 ((_ is Cons!50697) (t!357783 (t!357783 (toList!4363 lm!1477)))))))

(declare-fun b!4530926 () Bool)

(assert (=> b!4530926 (= e!2823215 (containsKeyBiggerList!158 (t!357783 (t!357783 (t!357783 (toList!4363 lm!1477)))) key!3287))))

(assert (= (and d!1398591 res!1886990) b!4530924))

(assert (= (and d!1398591 (not res!1886989)) b!4530925))

(assert (= (and b!4530925 res!1886988) b!4530926))

(declare-fun m!5288591 () Bool)

(assert (=> b!4530924 m!5288591))

(declare-fun m!5288593 () Bool)

(assert (=> b!4530926 m!5288593))

(assert (=> b!4529590 d!1398591))

(declare-fun d!1398593 () Bool)

(declare-fun res!1886991 () Bool)

(declare-fun e!2823217 () Bool)

(assert (=> d!1398593 (=> res!1886991 e!2823217)))

(assert (=> d!1398593 (= res!1886991 ((_ is Nil!50696) (toList!4364 lt!1705028)))))

(assert (=> d!1398593 (= (forall!10305 (toList!4364 lt!1705028) (ite c!773356 lambda!174221 lambda!174223)) e!2823217)))

(declare-fun b!4530927 () Bool)

(declare-fun e!2823218 () Bool)

(assert (=> b!4530927 (= e!2823217 e!2823218)))

(declare-fun res!1886992 () Bool)

(assert (=> b!4530927 (=> (not res!1886992) (not e!2823218))))

(assert (=> b!4530927 (= res!1886992 (dynLambda!21188 (ite c!773356 lambda!174221 lambda!174223) (h!56563 (toList!4364 lt!1705028))))))

(declare-fun b!4530928 () Bool)

(assert (=> b!4530928 (= e!2823218 (forall!10305 (t!357782 (toList!4364 lt!1705028)) (ite c!773356 lambda!174221 lambda!174223)))))

(assert (= (and d!1398593 (not res!1886991)) b!4530927))

(assert (= (and b!4530927 res!1886992) b!4530928))

(declare-fun b_lambda!156523 () Bool)

(assert (=> (not b_lambda!156523) (not b!4530927)))

(declare-fun m!5288595 () Bool)

(assert (=> b!4530927 m!5288595))

(declare-fun m!5288597 () Bool)

(assert (=> b!4530928 m!5288597))

(assert (=> bm!315708 d!1398593))

(declare-fun d!1398595 () Bool)

(declare-fun e!2823220 () Bool)

(assert (=> d!1398595 e!2823220))

(declare-fun res!1886993 () Bool)

(assert (=> d!1398595 (=> res!1886993 e!2823220)))

(declare-fun lt!1706346 () Bool)

(assert (=> d!1398595 (= res!1886993 (not lt!1706346))))

(declare-fun lt!1706347 () Bool)

(assert (=> d!1398595 (= lt!1706346 lt!1706347)))

(declare-fun lt!1706345 () Unit!96566)

(declare-fun e!2823219 () Unit!96566)

(assert (=> d!1398595 (= lt!1706345 e!2823219)))

(declare-fun c!773662 () Bool)

(assert (=> d!1398595 (= c!773662 lt!1706347)))

(assert (=> d!1398595 (= lt!1706347 (containsKey!1830 (toList!4363 lt!1705490) (_1!28868 lt!1705015)))))

(assert (=> d!1398595 (= (contains!13453 lt!1705490 (_1!28868 lt!1705015)) lt!1706346)))

(declare-fun b!4530929 () Bool)

(declare-fun lt!1706348 () Unit!96566)

(assert (=> b!4530929 (= e!2823219 lt!1706348)))

(assert (=> b!4530929 (= lt!1706348 (lemmaContainsKeyImpliesGetValueByKeyDefined!1025 (toList!4363 lt!1705490) (_1!28868 lt!1705015)))))

(assert (=> b!4530929 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705490) (_1!28868 lt!1705015)))))

(declare-fun b!4530930 () Bool)

(declare-fun Unit!96968 () Unit!96566)

(assert (=> b!4530930 (= e!2823219 Unit!96968)))

(declare-fun b!4530931 () Bool)

(assert (=> b!4530931 (= e!2823220 (isDefined!8441 (getValueByKey!1121 (toList!4363 lt!1705490) (_1!28868 lt!1705015))))))

(assert (= (and d!1398595 c!773662) b!4530929))

(assert (= (and d!1398595 (not c!773662)) b!4530930))

(assert (= (and d!1398595 (not res!1886993)) b!4530931))

(declare-fun m!5288599 () Bool)

(assert (=> d!1398595 m!5288599))

(declare-fun m!5288601 () Bool)

(assert (=> b!4530929 m!5288601))

(assert (=> b!4530929 m!5286045))

(assert (=> b!4530929 m!5286045))

(declare-fun m!5288603 () Bool)

(assert (=> b!4530929 m!5288603))

(assert (=> b!4530931 m!5286045))

(assert (=> b!4530931 m!5286045))

(assert (=> b!4530931 m!5288603))

(assert (=> d!1397793 d!1398595))

(declare-fun b!4530933 () Bool)

(declare-fun e!2823221 () Option!11157)

(declare-fun e!2823222 () Option!11157)

(assert (=> b!4530933 (= e!2823221 e!2823222)))

(declare-fun c!773664 () Bool)

(assert (=> b!4530933 (= c!773664 (and ((_ is Cons!50697) lt!1705492) (not (= (_1!28868 (h!56564 lt!1705492)) (_1!28868 lt!1705015)))))))

(declare-fun b!4530934 () Bool)

(assert (=> b!4530934 (= e!2823222 (getValueByKey!1121 (t!357783 lt!1705492) (_1!28868 lt!1705015)))))

(declare-fun b!4530932 () Bool)

(assert (=> b!4530932 (= e!2823221 (Some!11156 (_2!28868 (h!56564 lt!1705492))))))

(declare-fun d!1398597 () Bool)

(declare-fun c!773663 () Bool)

(assert (=> d!1398597 (= c!773663 (and ((_ is Cons!50697) lt!1705492) (= (_1!28868 (h!56564 lt!1705492)) (_1!28868 lt!1705015))))))

(assert (=> d!1398597 (= (getValueByKey!1121 lt!1705492 (_1!28868 lt!1705015)) e!2823221)))

(declare-fun b!4530935 () Bool)

(assert (=> b!4530935 (= e!2823222 None!11156)))

(assert (= (and d!1398597 c!773663) b!4530932))

(assert (= (and d!1398597 (not c!773663)) b!4530933))

(assert (= (and b!4530933 c!773664) b!4530934))

(assert (= (and b!4530933 (not c!773664)) b!4530935))

(declare-fun m!5288605 () Bool)

(assert (=> b!4530934 m!5288605))

(assert (=> d!1397793 d!1398597))

(declare-fun d!1398599 () Bool)

(assert (=> d!1398599 (= (getValueByKey!1121 lt!1705492 (_1!28868 lt!1705015)) (Some!11156 (_2!28868 lt!1705015)))))

(declare-fun lt!1706349 () Unit!96566)

(assert (=> d!1398599 (= lt!1706349 (choose!29724 lt!1705492 (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(declare-fun e!2823223 () Bool)

(assert (=> d!1398599 e!2823223))

(declare-fun res!1886994 () Bool)

(assert (=> d!1398599 (=> (not res!1886994) (not e!2823223))))

(assert (=> d!1398599 (= res!1886994 (isStrictlySorted!444 lt!1705492))))

(assert (=> d!1398599 (= (lemmaContainsTupThenGetReturnValue!700 lt!1705492 (_1!28868 lt!1705015) (_2!28868 lt!1705015)) lt!1706349)))

(declare-fun b!4530936 () Bool)

(declare-fun res!1886995 () Bool)

(assert (=> b!4530936 (=> (not res!1886995) (not e!2823223))))

(assert (=> b!4530936 (= res!1886995 (containsKey!1830 lt!1705492 (_1!28868 lt!1705015)))))

(declare-fun b!4530937 () Bool)

(assert (=> b!4530937 (= e!2823223 (contains!13454 lt!1705492 (tuple2!51149 (_1!28868 lt!1705015) (_2!28868 lt!1705015))))))

(assert (= (and d!1398599 res!1886994) b!4530936))

(assert (= (and b!4530936 res!1886995) b!4530937))

(assert (=> d!1398599 m!5286039))

(declare-fun m!5288607 () Bool)

(assert (=> d!1398599 m!5288607))

(declare-fun m!5288609 () Bool)

(assert (=> d!1398599 m!5288609))

(declare-fun m!5288611 () Bool)

(assert (=> b!4530936 m!5288611))

(declare-fun m!5288613 () Bool)

(assert (=> b!4530937 m!5288613))

(assert (=> d!1397793 d!1398599))

(declare-fun b!4530938 () Bool)

(declare-fun e!2823225 () List!50821)

(declare-fun call!315838 () List!50821)

(assert (=> b!4530938 (= e!2823225 call!315838)))

(declare-fun bm!315831 () Bool)

(declare-fun call!315837 () List!50821)

(declare-fun call!315836 () List!50821)

(assert (=> bm!315831 (= call!315837 call!315836)))

(declare-fun e!2823228 () List!50821)

(declare-fun c!773665 () Bool)

(declare-fun c!773668 () Bool)

(declare-fun b!4530939 () Bool)

(assert (=> b!4530939 (= e!2823228 (ite c!773665 (t!357783 (toList!4363 lt!1704999)) (ite c!773668 (Cons!50697 (h!56564 (toList!4363 lt!1704999)) (t!357783 (toList!4363 lt!1704999))) Nil!50697)))))

(declare-fun b!4530940 () Bool)

(declare-fun e!2823227 () Bool)

(declare-fun lt!1706350 () List!50821)

(assert (=> b!4530940 (= e!2823227 (contains!13454 lt!1706350 (tuple2!51149 (_1!28868 lt!1705015) (_2!28868 lt!1705015))))))

(declare-fun b!4530941 () Bool)

(assert (=> b!4530941 (= e!2823225 call!315838)))

(declare-fun b!4530942 () Bool)

(declare-fun res!1886996 () Bool)

(assert (=> b!4530942 (=> (not res!1886996) (not e!2823227))))

(assert (=> b!4530942 (= res!1886996 (containsKey!1830 lt!1706350 (_1!28868 lt!1705015)))))

(declare-fun b!4530943 () Bool)

(assert (=> b!4530943 (= e!2823228 (insertStrictlySorted!422 (t!357783 (toList!4363 lt!1704999)) (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))

(declare-fun b!4530944 () Bool)

(declare-fun e!2823224 () List!50821)

(assert (=> b!4530944 (= e!2823224 call!315836)))

(declare-fun b!4530945 () Bool)

(assert (=> b!4530945 (= c!773668 (and ((_ is Cons!50697) (toList!4363 lt!1704999)) (bvsgt (_1!28868 (h!56564 (toList!4363 lt!1704999))) (_1!28868 lt!1705015))))))

(declare-fun e!2823226 () List!50821)

(assert (=> b!4530945 (= e!2823226 e!2823225)))

(declare-fun bm!315833 () Bool)

(assert (=> bm!315833 (= call!315838 call!315837)))

(declare-fun b!4530946 () Bool)

(assert (=> b!4530946 (= e!2823224 e!2823226)))

(assert (=> b!4530946 (= c!773665 (and ((_ is Cons!50697) (toList!4363 lt!1704999)) (= (_1!28868 (h!56564 (toList!4363 lt!1704999))) (_1!28868 lt!1705015))))))

(declare-fun b!4530947 () Bool)

(assert (=> b!4530947 (= e!2823226 call!315837)))

(declare-fun c!773667 () Bool)

(declare-fun bm!315832 () Bool)

(assert (=> bm!315832 (= call!315836 ($colon$colon!952 e!2823228 (ite c!773667 (h!56564 (toList!4363 lt!1704999)) (tuple2!51149 (_1!28868 lt!1705015) (_2!28868 lt!1705015)))))))

(declare-fun c!773666 () Bool)

(assert (=> bm!315832 (= c!773666 c!773667)))

(declare-fun d!1398601 () Bool)

(assert (=> d!1398601 e!2823227))

(declare-fun res!1886997 () Bool)

(assert (=> d!1398601 (=> (not res!1886997) (not e!2823227))))

(assert (=> d!1398601 (= res!1886997 (isStrictlySorted!444 lt!1706350))))

(assert (=> d!1398601 (= lt!1706350 e!2823224)))

(assert (=> d!1398601 (= c!773667 (and ((_ is Cons!50697) (toList!4363 lt!1704999)) (bvslt (_1!28868 (h!56564 (toList!4363 lt!1704999))) (_1!28868 lt!1705015))))))

(assert (=> d!1398601 (isStrictlySorted!444 (toList!4363 lt!1704999))))

(assert (=> d!1398601 (= (insertStrictlySorted!422 (toList!4363 lt!1704999) (_1!28868 lt!1705015) (_2!28868 lt!1705015)) lt!1706350)))

(assert (= (and d!1398601 c!773667) b!4530944))

(assert (= (and d!1398601 (not c!773667)) b!4530946))

(assert (= (and b!4530946 c!773665) b!4530947))

(assert (= (and b!4530946 (not c!773665)) b!4530945))

(assert (= (and b!4530945 c!773668) b!4530941))

(assert (= (and b!4530945 (not c!773668)) b!4530938))

(assert (= (or b!4530941 b!4530938) bm!315833))

(assert (= (or b!4530947 bm!315833) bm!315831))

(assert (= (or b!4530944 bm!315831) bm!315832))

(assert (= (and bm!315832 c!773666) b!4530943))

(assert (= (and bm!315832 (not c!773666)) b!4530939))

(assert (= (and d!1398601 res!1886997) b!4530942))

(assert (= (and b!4530942 res!1886996) b!4530940))

(declare-fun m!5288615 () Bool)

(assert (=> bm!315832 m!5288615))

(declare-fun m!5288617 () Bool)

(assert (=> b!4530942 m!5288617))

(declare-fun m!5288619 () Bool)

(assert (=> b!4530943 m!5288619))

(declare-fun m!5288621 () Bool)

(assert (=> d!1398601 m!5288621))

(declare-fun m!5288623 () Bool)

(assert (=> d!1398601 m!5288623))

(declare-fun m!5288625 () Bool)

(assert (=> b!4530940 m!5288625))

(assert (=> d!1397793 d!1398601))

(declare-fun d!1398603 () Bool)

(declare-fun res!1886998 () Bool)

(declare-fun e!2823229 () Bool)

(assert (=> d!1398603 (=> res!1886998 e!2823229)))

(assert (=> d!1398603 (= res!1886998 ((_ is Nil!50696) newBucket!178))))

(assert (=> d!1398603 (= (forall!10305 newBucket!178 lambda!174220) e!2823229)))

(declare-fun b!4530948 () Bool)

(declare-fun e!2823230 () Bool)

(assert (=> b!4530948 (= e!2823229 e!2823230)))

(declare-fun res!1886999 () Bool)

(assert (=> b!4530948 (=> (not res!1886999) (not e!2823230))))

(assert (=> b!4530948 (= res!1886999 (dynLambda!21188 lambda!174220 (h!56563 newBucket!178)))))

(declare-fun b!4530949 () Bool)

(assert (=> b!4530949 (= e!2823230 (forall!10305 (t!357782 newBucket!178) lambda!174220))))

(assert (= (and d!1398603 (not res!1886998)) b!4530948))

(assert (= (and b!4530948 res!1886999) b!4530949))

(declare-fun b_lambda!156525 () Bool)

(assert (=> (not b_lambda!156525) (not b!4530948)))

(declare-fun m!5288627 () Bool)

(assert (=> b!4530948 m!5288627))

(declare-fun m!5288629 () Bool)

(assert (=> b!4530949 m!5288629))

(assert (=> d!1397779 d!1398603))

(declare-fun d!1398605 () Bool)

(declare-fun res!1887000 () Bool)

(declare-fun e!2823231 () Bool)

(assert (=> d!1398605 (=> res!1887000 e!2823231)))

(assert (=> d!1398605 (= res!1887000 ((_ is Nil!50696) (_2!28868 lt!1705015)))))

(assert (=> d!1398605 (= (forall!10305 (_2!28868 lt!1705015) lambda!174181) e!2823231)))

(declare-fun b!4530950 () Bool)

(declare-fun e!2823232 () Bool)

(assert (=> b!4530950 (= e!2823231 e!2823232)))

(declare-fun res!1887001 () Bool)

(assert (=> b!4530950 (=> (not res!1887001) (not e!2823232))))

(assert (=> b!4530950 (= res!1887001 (dynLambda!21188 lambda!174181 (h!56563 (_2!28868 lt!1705015))))))

(declare-fun b!4530951 () Bool)

(assert (=> b!4530951 (= e!2823232 (forall!10305 (t!357782 (_2!28868 lt!1705015)) lambda!174181))))

(assert (= (and d!1398605 (not res!1887000)) b!4530950))

(assert (= (and b!4530950 res!1887001) b!4530951))

(declare-fun b_lambda!156527 () Bool)

(assert (=> (not b_lambda!156527) (not b!4530950)))

(declare-fun m!5288631 () Bool)

(assert (=> b!4530950 m!5288631))

(declare-fun m!5288633 () Bool)

(assert (=> b!4530951 m!5288633))

(assert (=> d!1397629 d!1398605))

(assert (=> d!1397629 d!1397753))

(declare-fun d!1398607 () Bool)

(declare-fun lt!1706351 () Bool)

(assert (=> d!1398607 (= lt!1706351 (select (content!8401 (toList!4363 lm!1477)) (tuple2!51149 hash!344 lt!1705019)))))

(declare-fun e!2823235 () Bool)

(assert (=> d!1398607 (= lt!1706351 e!2823235)))

(declare-fun res!1887003 () Bool)

(assert (=> d!1398607 (=> (not res!1887003) (not e!2823235))))

(assert (=> d!1398607 (= res!1887003 ((_ is Cons!50697) (toList!4363 lm!1477)))))

(assert (=> d!1398607 (= (contains!13454 (toList!4363 lm!1477) (tuple2!51149 hash!344 lt!1705019)) lt!1706351)))

(declare-fun b!4530952 () Bool)

(declare-fun e!2823236 () Bool)

(assert (=> b!4530952 (= e!2823235 e!2823236)))

(declare-fun res!1887002 () Bool)

(assert (=> b!4530952 (=> res!1887002 e!2823236)))

(assert (=> b!4530952 (= res!1887002 (= (h!56564 (toList!4363 lm!1477)) (tuple2!51149 hash!344 lt!1705019)))))

(declare-fun b!4530953 () Bool)

(assert (=> b!4530953 (= e!2823236 (contains!13454 (t!357783 (toList!4363 lm!1477)) (tuple2!51149 hash!344 lt!1705019)))))

(assert (= (and d!1398607 res!1887003) b!4530952))

(assert (= (and b!4530952 (not res!1887002)) b!4530953))

(assert (=> d!1398607 m!5286081))

(declare-fun m!5288635 () Bool)

(assert (=> d!1398607 m!5288635))

(declare-fun m!5288637 () Bool)

(assert (=> b!4530953 m!5288637))

(assert (=> d!1397805 d!1398607))

(declare-fun d!1398609 () Bool)

(assert (=> d!1398609 (contains!13454 (toList!4363 lm!1477) (tuple2!51149 hash!344 lt!1705019))))

(assert (=> d!1398609 true))

(declare-fun _$14!1194 () Unit!96566)

(assert (=> d!1398609 (= (choose!29715 (toList!4363 lm!1477) hash!344 lt!1705019) _$14!1194)))

(declare-fun bs!866883 () Bool)

(assert (= bs!866883 d!1398609))

(assert (=> bs!866883 m!5286077))

(assert (=> d!1397805 d!1398609))

(assert (=> d!1397805 d!1398569))

(assert (=> d!1397783 d!1398111))

(assert (=> d!1397783 d!1398385))

(declare-fun bs!866884 () Bool)

(declare-fun b!4530955 () Bool)

(assert (= bs!866884 (and b!4530955 d!1397915)))

(declare-fun lambda!174392 () Int)

(assert (=> bs!866884 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705606) (= lambda!174392 lambda!174257))))

(declare-fun bs!866885 () Bool)

(assert (= bs!866885 (and b!4530955 b!4530778)))

(assert (=> bs!866885 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174392 lambda!174381))))

(declare-fun bs!866886 () Bool)

(assert (= bs!866886 (and b!4530955 b!4529972)))

(assert (=> bs!866886 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174392 lambda!174260))))

(declare-fun bs!866887 () Bool)

(assert (= bs!866887 (and b!4530955 b!4530684)))

(assert (=> bs!866887 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706135) (= lambda!174392 lambda!174364))))

(declare-fun bs!866888 () Bool)

(assert (= bs!866888 (and b!4530955 d!1398485)))

(assert (=> bs!866888 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706252) (= lambda!174392 lambda!174384))))

(declare-fun bs!866889 () Bool)

(assert (= bs!866889 (and b!4530955 b!4529691)))

(assert (=> bs!866889 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705467) (= lambda!174392 lambda!174223))))

(declare-fun bs!866890 () Bool)

(assert (= bs!866890 (and b!4530955 d!1397935)))

(assert (=> bs!866890 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705636) (= lambda!174392 lambda!174264))))

(declare-fun bs!866891 () Bool)

(assert (= bs!866891 (and b!4530955 d!1397821)))

(assert (=> bs!866891 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705529) (= lambda!174392 lambda!174234))))

(declare-fun bs!866892 () Bool)

(assert (= bs!866892 (and b!4530955 b!4529273)))

(assert (=> bs!866892 (not (= lambda!174392 lambda!174089))))

(declare-fun bs!866893 () Bool)

(assert (= bs!866893 (and b!4530955 b!4529936)))

(assert (=> bs!866893 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705594) (= lambda!174392 lambda!174256))))

(declare-fun bs!866894 () Bool)

(assert (= bs!866894 (and b!4530955 d!1397787)))

(assert (=> bs!866894 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705479) (= lambda!174392 lambda!174224))))

(declare-fun bs!866895 () Bool)

(assert (= bs!866895 (and b!4530955 b!4530552)))

(assert (=> bs!866895 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174392 lambda!174333))))

(declare-fun bs!866896 () Bool)

(assert (= bs!866896 (and b!4530955 b!4530646)))

(assert (=> bs!866896 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174392 lambda!174352))))

(declare-fun bs!866897 () Bool)

(assert (= bs!866897 (and b!4530955 b!4530732)))

(assert (=> bs!866897 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174392 lambda!174371))))

(declare-fun bs!866898 () Bool)

(assert (= bs!866898 (and b!4530955 b!4530613)))

(assert (=> bs!866898 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174392 lambda!174346))))

(declare-fun bs!866899 () Bool)

(assert (= bs!866899 (and b!4530955 b!4529387)))

(assert (=> bs!866899 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705027) (= lambda!174392 lambda!174166))))

(declare-fun bs!866900 () Bool)

(assert (= bs!866900 (and b!4530955 b!4530649)))

(assert (=> bs!866900 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706086) (= lambda!174392 lambda!174354))))

(declare-fun bs!866901 () Bool)

(assert (= bs!866901 (and b!4530955 d!1398347)))

(assert (=> bs!866901 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706052) (= lambda!174392 lambda!174348))))

(assert (=> bs!866895 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705953) (= lambda!174392 lambda!174334))))

(assert (=> bs!866898 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706040) (= lambda!174392 lambda!174347))))

(declare-fun bs!866902 () Bool)

(assert (= bs!866902 (and b!4530955 d!1398371)))

(assert (=> bs!866902 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706098) (= lambda!174392 lambda!174356))))

(declare-fun bs!866903 () Bool)

(assert (= bs!866903 (and b!4530955 b!4529431)))

(assert (=> bs!866903 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705001) (= lambda!174392 lambda!174178))))

(declare-fun bs!866904 () Bool)

(assert (= bs!866904 (and b!4530955 d!1398281)))

(assert (=> bs!866904 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705212) (= lambda!174392 lambda!174327))))

(declare-fun bs!866905 () Bool)

(assert (= bs!866905 (and b!4530955 b!4529733)))

(assert (=> bs!866905 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705517) (= lambda!174392 lambda!174233))))

(declare-fun bs!866906 () Bool)

(assert (= bs!866906 (and b!4530955 d!1398315)))

(assert (=> bs!866906 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705965) (= lambda!174392 lambda!174335))))

(assert (=> bs!866905 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174392 lambda!174232))))

(declare-fun bs!866907 () Bool)

(assert (= bs!866907 (and b!4530955 d!1398463)))

(assert (=> bs!866907 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705266) (= lambda!174392 lambda!174380))))

(assert (=> bs!866893 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (-!404 lt!1705001 key!3287)) (= lambda!174392 lambda!174255))))

(declare-fun bs!866908 () Bool)

(assert (= bs!866908 (and b!4530955 b!4529933)))

(assert (=> bs!866908 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (-!404 lt!1705001 key!3287)) (= lambda!174392 lambda!174254))))

(declare-fun bs!866909 () Bool)

(assert (= bs!866909 (and b!4530955 b!4529434)))

(assert (=> bs!866909 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705266) (= lambda!174392 lambda!174180))))

(declare-fun bs!866910 () Bool)

(assert (= bs!866910 (and b!4530955 d!1398049)))

(assert (=> bs!866910 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705027) (= lambda!174392 lambda!174280))))

(assert (=> bs!866889 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705028) (= lambda!174392 lambda!174222))))

(declare-fun bs!866911 () Bool)

(assert (= bs!866911 (and b!4530955 b!4530781)))

(assert (=> bs!866911 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174392 lambda!174382))))

(assert (=> bs!866900 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174392 lambda!174353))))

(declare-fun bs!866912 () Bool)

(assert (= bs!866912 (and b!4530955 d!1398099)))

(assert (=> bs!866912 (not (= lambda!174392 lambda!174291))))

(declare-fun bs!866913 () Bool)

(assert (= bs!866913 (and b!4530955 d!1397779)))

(assert (=> bs!866913 (not (= lambda!174392 lambda!174220))))

(declare-fun bs!866914 () Bool)

(assert (= bs!866914 (and b!4530955 b!4529969)))

(assert (=> bs!866914 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174392 lambda!174258))))

(assert (=> bs!866911 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706240) (= lambda!174392 lambda!174383))))

(assert (=> bs!866899 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705212) (= lambda!174392 lambda!174167))))

(declare-fun bs!866915 () Bool)

(assert (= bs!866915 (and b!4530955 b!4529384)))

(assert (=> bs!866915 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705027) (= lambda!174392 lambda!174165))))

(declare-fun bs!866916 () Bool)

(assert (= bs!866916 (and b!4530955 b!4530549)))

(assert (=> bs!866916 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174392 lambda!174329))))

(declare-fun bs!866917 () Bool)

(assert (= bs!866917 (and b!4530955 b!4529730)))

(assert (=> bs!866917 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174392 lambda!174231))))

(declare-fun bs!866918 () Bool)

(assert (= bs!866918 (and b!4530955 d!1397569)))

(assert (=> bs!866918 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705224) (= lambda!174392 lambda!174168))))

(assert (=> bs!866887 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174392 lambda!174363))))

(declare-fun bs!866919 () Bool)

(assert (= bs!866919 (and b!4530955 d!1398357)))

(assert (=> bs!866919 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705467) (= lambda!174392 lambda!174349))))

(declare-fun bs!866920 () Bool)

(assert (= bs!866920 (and b!4530955 d!1397819)))

(assert (=> bs!866920 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705001) (= lambda!174392 lambda!174230))))

(assert (=> bs!866886 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705624) (= lambda!174392 lambda!174261))))

(assert (=> bs!866909 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705001) (= lambda!174392 lambda!174179))))

(declare-fun bs!866921 () Bool)

(assert (= bs!866921 (and b!4530955 d!1398075)))

(assert (=> bs!866921 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705028) (= lambda!174392 lambda!174289))))

(declare-fun bs!866922 () Bool)

(assert (= bs!866922 (and b!4530955 d!1397629)))

(assert (=> bs!866922 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705278) (= lambda!174392 lambda!174181))))

(declare-fun bs!866923 () Bool)

(assert (= bs!866923 (and b!4530955 d!1398395)))

(assert (=> bs!866923 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706147) (= lambda!174392 lambda!174367))))

(declare-fun bs!866924 () Bool)

(assert (= bs!866924 (and b!4530955 b!4530735)))

(assert (=> bs!866924 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706186) (= lambda!174392 lambda!174375))))

(declare-fun bs!866925 () Bool)

(assert (= bs!866925 (and b!4530955 b!4530681)))

(assert (=> bs!866925 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174392 lambda!174361))))

(declare-fun bs!866926 () Bool)

(assert (= bs!866926 (and b!4530955 b!4529688)))

(assert (=> bs!866926 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705028) (= lambda!174392 lambda!174221))))

(assert (=> bs!866924 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174392 lambda!174374))))

(declare-fun bs!866927 () Bool)

(assert (= bs!866927 (and b!4530955 b!4530610)))

(assert (=> bs!866927 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174392 lambda!174345))))

(declare-fun bs!866928 () Bool)

(assert (= bs!866928 (and b!4530955 d!1398449)))

(assert (=> bs!866928 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706198) (= lambda!174392 lambda!174377))))

(assert (=> b!4530955 true))

(declare-fun bs!866929 () Bool)

(declare-fun b!4530958 () Bool)

(assert (= bs!866929 (and b!4530958 d!1397915)))

(declare-fun lambda!174393 () Int)

(assert (=> bs!866929 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705606) (= lambda!174393 lambda!174257))))

(declare-fun bs!866930 () Bool)

(assert (= bs!866930 (and b!4530958 b!4530778)))

(assert (=> bs!866930 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174393 lambda!174381))))

(declare-fun bs!866931 () Bool)

(assert (= bs!866931 (and b!4530958 b!4529972)))

(assert (=> bs!866931 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174393 lambda!174260))))

(declare-fun bs!866932 () Bool)

(assert (= bs!866932 (and b!4530958 b!4530684)))

(assert (=> bs!866932 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706135) (= lambda!174393 lambda!174364))))

(declare-fun bs!866933 () Bool)

(assert (= bs!866933 (and b!4530958 d!1398485)))

(assert (=> bs!866933 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706252) (= lambda!174393 lambda!174384))))

(declare-fun bs!866934 () Bool)

(assert (= bs!866934 (and b!4530958 b!4529691)))

(assert (=> bs!866934 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705467) (= lambda!174393 lambda!174223))))

(declare-fun bs!866935 () Bool)

(assert (= bs!866935 (and b!4530958 d!1397935)))

(assert (=> bs!866935 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705636) (= lambda!174393 lambda!174264))))

(declare-fun bs!866936 () Bool)

(assert (= bs!866936 (and b!4530958 d!1397821)))

(assert (=> bs!866936 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705529) (= lambda!174393 lambda!174234))))

(declare-fun bs!866937 () Bool)

(assert (= bs!866937 (and b!4530958 b!4529273)))

(assert (=> bs!866937 (not (= lambda!174393 lambda!174089))))

(declare-fun bs!866938 () Bool)

(assert (= bs!866938 (and b!4530958 b!4529936)))

(assert (=> bs!866938 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705594) (= lambda!174393 lambda!174256))))

(declare-fun bs!866939 () Bool)

(assert (= bs!866939 (and b!4530958 d!1397787)))

(assert (=> bs!866939 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705479) (= lambda!174393 lambda!174224))))

(declare-fun bs!866940 () Bool)

(assert (= bs!866940 (and b!4530958 b!4530552)))

(assert (=> bs!866940 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174393 lambda!174333))))

(declare-fun bs!866941 () Bool)

(assert (= bs!866941 (and b!4530958 b!4530646)))

(assert (=> bs!866941 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174393 lambda!174352))))

(declare-fun bs!866942 () Bool)

(assert (= bs!866942 (and b!4530958 b!4530732)))

(assert (=> bs!866942 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174393 lambda!174371))))

(declare-fun bs!866943 () Bool)

(assert (= bs!866943 (and b!4530958 b!4530613)))

(assert (=> bs!866943 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174393 lambda!174346))))

(declare-fun bs!866944 () Bool)

(assert (= bs!866944 (and b!4530958 b!4529387)))

(assert (=> bs!866944 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705027) (= lambda!174393 lambda!174166))))

(declare-fun bs!866945 () Bool)

(assert (= bs!866945 (and b!4530958 b!4530649)))

(assert (=> bs!866945 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706086) (= lambda!174393 lambda!174354))))

(declare-fun bs!866946 () Bool)

(assert (= bs!866946 (and b!4530958 d!1398347)))

(assert (=> bs!866946 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706052) (= lambda!174393 lambda!174348))))

(assert (=> bs!866940 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705953) (= lambda!174393 lambda!174334))))

(assert (=> bs!866943 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706040) (= lambda!174393 lambda!174347))))

(declare-fun bs!866947 () Bool)

(assert (= bs!866947 (and b!4530958 d!1398371)))

(assert (=> bs!866947 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706098) (= lambda!174393 lambda!174356))))

(declare-fun bs!866948 () Bool)

(assert (= bs!866948 (and b!4530958 b!4529431)))

(assert (=> bs!866948 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705001) (= lambda!174393 lambda!174178))))

(declare-fun bs!866949 () Bool)

(assert (= bs!866949 (and b!4530958 d!1398281)))

(assert (=> bs!866949 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705212) (= lambda!174393 lambda!174327))))

(declare-fun bs!866950 () Bool)

(assert (= bs!866950 (and b!4530958 b!4529733)))

(assert (=> bs!866950 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705517) (= lambda!174393 lambda!174233))))

(declare-fun bs!866951 () Bool)

(assert (= bs!866951 (and b!4530958 b!4530955)))

(assert (=> bs!866951 (= lambda!174393 lambda!174392)))

(declare-fun bs!866952 () Bool)

(assert (= bs!866952 (and b!4530958 d!1398315)))

(assert (=> bs!866952 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705965) (= lambda!174393 lambda!174335))))

(assert (=> bs!866950 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174393 lambda!174232))))

(declare-fun bs!866953 () Bool)

(assert (= bs!866953 (and b!4530958 d!1398463)))

(assert (=> bs!866953 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705266) (= lambda!174393 lambda!174380))))

(assert (=> bs!866938 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (-!404 lt!1705001 key!3287)) (= lambda!174393 lambda!174255))))

(declare-fun bs!866954 () Bool)

(assert (= bs!866954 (and b!4530958 b!4529933)))

(assert (=> bs!866954 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (-!404 lt!1705001 key!3287)) (= lambda!174393 lambda!174254))))

(declare-fun bs!866955 () Bool)

(assert (= bs!866955 (and b!4530958 b!4529434)))

(assert (=> bs!866955 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705266) (= lambda!174393 lambda!174180))))

(declare-fun bs!866956 () Bool)

(assert (= bs!866956 (and b!4530958 d!1398049)))

(assert (=> bs!866956 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705027) (= lambda!174393 lambda!174280))))

(assert (=> bs!866934 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705028) (= lambda!174393 lambda!174222))))

(declare-fun bs!866957 () Bool)

(assert (= bs!866957 (and b!4530958 b!4530781)))

(assert (=> bs!866957 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174393 lambda!174382))))

(assert (=> bs!866945 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174393 lambda!174353))))

(declare-fun bs!866958 () Bool)

(assert (= bs!866958 (and b!4530958 d!1398099)))

(assert (=> bs!866958 (not (= lambda!174393 lambda!174291))))

(declare-fun bs!866959 () Bool)

(assert (= bs!866959 (and b!4530958 d!1397779)))

(assert (=> bs!866959 (not (= lambda!174393 lambda!174220))))

(declare-fun bs!866960 () Bool)

(assert (= bs!866960 (and b!4530958 b!4529969)))

(assert (=> bs!866960 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174393 lambda!174258))))

(assert (=> bs!866957 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706240) (= lambda!174393 lambda!174383))))

(assert (=> bs!866944 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705212) (= lambda!174393 lambda!174167))))

(declare-fun bs!866961 () Bool)

(assert (= bs!866961 (and b!4530958 b!4529384)))

(assert (=> bs!866961 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705027) (= lambda!174393 lambda!174165))))

(declare-fun bs!866962 () Bool)

(assert (= bs!866962 (and b!4530958 b!4530549)))

(assert (=> bs!866962 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174393 lambda!174329))))

(declare-fun bs!866963 () Bool)

(assert (= bs!866963 (and b!4530958 b!4529730)))

(assert (=> bs!866963 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174393 lambda!174231))))

(declare-fun bs!866964 () Bool)

(assert (= bs!866964 (and b!4530958 d!1397569)))

(assert (=> bs!866964 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705224) (= lambda!174393 lambda!174168))))

(assert (=> bs!866932 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174393 lambda!174363))))

(declare-fun bs!866965 () Bool)

(assert (= bs!866965 (and b!4530958 d!1398357)))

(assert (=> bs!866965 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705467) (= lambda!174393 lambda!174349))))

(declare-fun bs!866966 () Bool)

(assert (= bs!866966 (and b!4530958 d!1397819)))

(assert (=> bs!866966 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705001) (= lambda!174393 lambda!174230))))

(assert (=> bs!866931 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705624) (= lambda!174393 lambda!174261))))

(assert (=> bs!866955 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705001) (= lambda!174393 lambda!174179))))

(declare-fun bs!866967 () Bool)

(assert (= bs!866967 (and b!4530958 d!1398075)))

(assert (=> bs!866967 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705028) (= lambda!174393 lambda!174289))))

(declare-fun bs!866968 () Bool)

(assert (= bs!866968 (and b!4530958 d!1397629)))

(assert (=> bs!866968 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705278) (= lambda!174393 lambda!174181))))

(declare-fun bs!866969 () Bool)

(assert (= bs!866969 (and b!4530958 d!1398395)))

(assert (=> bs!866969 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706147) (= lambda!174393 lambda!174367))))

(declare-fun bs!866970 () Bool)

(assert (= bs!866970 (and b!4530958 b!4530735)))

(assert (=> bs!866970 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706186) (= lambda!174393 lambda!174375))))

(declare-fun bs!866971 () Bool)

(assert (= bs!866971 (and b!4530958 b!4530681)))

(assert (=> bs!866971 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174393 lambda!174361))))

(declare-fun bs!866972 () Bool)

(assert (= bs!866972 (and b!4530958 b!4529688)))

(assert (=> bs!866972 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1705028) (= lambda!174393 lambda!174221))))

(assert (=> bs!866970 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174393 lambda!174374))))

(declare-fun bs!866973 () Bool)

(assert (= bs!866973 (and b!4530958 b!4530610)))

(assert (=> bs!866973 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174393 lambda!174345))))

(declare-fun bs!866974 () Bool)

(assert (= bs!866974 (and b!4530958 d!1398449)))

(assert (=> bs!866974 (= (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706198) (= lambda!174393 lambda!174377))))

(assert (=> b!4530958 true))

(declare-fun lt!1706357 () ListMap!3625)

(declare-fun lambda!174394 () Int)

(assert (=> bs!866929 (= (= lt!1706357 lt!1705606) (= lambda!174394 lambda!174257))))

(assert (=> bs!866930 (= (= lt!1706357 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174394 lambda!174381))))

(assert (=> bs!866931 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174394 lambda!174260))))

(assert (=> bs!866932 (= (= lt!1706357 lt!1706135) (= lambda!174394 lambda!174364))))

(assert (=> bs!866933 (= (= lt!1706357 lt!1706252) (= lambda!174394 lambda!174384))))

(assert (=> bs!866934 (= (= lt!1706357 lt!1705467) (= lambda!174394 lambda!174223))))

(assert (=> bs!866935 (= (= lt!1706357 lt!1705636) (= lambda!174394 lambda!174264))))

(assert (=> bs!866936 (= (= lt!1706357 lt!1705529) (= lambda!174394 lambda!174234))))

(assert (=> bs!866937 (not (= lambda!174394 lambda!174089))))

(assert (=> b!4530958 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (= lambda!174394 lambda!174393))))

(assert (=> bs!866938 (= (= lt!1706357 lt!1705594) (= lambda!174394 lambda!174256))))

(assert (=> bs!866939 (= (= lt!1706357 lt!1705479) (= lambda!174394 lambda!174224))))

(assert (=> bs!866940 (= (= lt!1706357 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174394 lambda!174333))))

(assert (=> bs!866941 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174394 lambda!174352))))

(assert (=> bs!866942 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174394 lambda!174371))))

(assert (=> bs!866943 (= (= lt!1706357 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174394 lambda!174346))))

(assert (=> bs!866944 (= (= lt!1706357 lt!1705027) (= lambda!174394 lambda!174166))))

(assert (=> bs!866945 (= (= lt!1706357 lt!1706086) (= lambda!174394 lambda!174354))))

(assert (=> bs!866946 (= (= lt!1706357 lt!1706052) (= lambda!174394 lambda!174348))))

(assert (=> bs!866940 (= (= lt!1706357 lt!1705953) (= lambda!174394 lambda!174334))))

(assert (=> bs!866943 (= (= lt!1706357 lt!1706040) (= lambda!174394 lambda!174347))))

(assert (=> bs!866947 (= (= lt!1706357 lt!1706098) (= lambda!174394 lambda!174356))))

(assert (=> bs!866948 (= (= lt!1706357 lt!1705001) (= lambda!174394 lambda!174178))))

(assert (=> bs!866949 (= (= lt!1706357 lt!1705212) (= lambda!174394 lambda!174327))))

(assert (=> bs!866950 (= (= lt!1706357 lt!1705517) (= lambda!174394 lambda!174233))))

(assert (=> bs!866951 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (= lambda!174394 lambda!174392))))

(assert (=> bs!866952 (= (= lt!1706357 lt!1705965) (= lambda!174394 lambda!174335))))

(assert (=> bs!866950 (= (= lt!1706357 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174394 lambda!174232))))

(assert (=> bs!866953 (= (= lt!1706357 lt!1705266) (= lambda!174394 lambda!174380))))

(assert (=> bs!866938 (= (= lt!1706357 (-!404 lt!1705001 key!3287)) (= lambda!174394 lambda!174255))))

(assert (=> bs!866954 (= (= lt!1706357 (-!404 lt!1705001 key!3287)) (= lambda!174394 lambda!174254))))

(assert (=> bs!866955 (= (= lt!1706357 lt!1705266) (= lambda!174394 lambda!174180))))

(assert (=> bs!866956 (= (= lt!1706357 lt!1705027) (= lambda!174394 lambda!174280))))

(assert (=> bs!866934 (= (= lt!1706357 lt!1705028) (= lambda!174394 lambda!174222))))

(assert (=> bs!866957 (= (= lt!1706357 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174394 lambda!174382))))

(assert (=> bs!866945 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174394 lambda!174353))))

(assert (=> bs!866958 (not (= lambda!174394 lambda!174291))))

(assert (=> bs!866959 (not (= lambda!174394 lambda!174220))))

(assert (=> bs!866960 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174394 lambda!174258))))

(assert (=> bs!866957 (= (= lt!1706357 lt!1706240) (= lambda!174394 lambda!174383))))

(assert (=> bs!866944 (= (= lt!1706357 lt!1705212) (= lambda!174394 lambda!174167))))

(assert (=> bs!866961 (= (= lt!1706357 lt!1705027) (= lambda!174394 lambda!174165))))

(assert (=> bs!866962 (= (= lt!1706357 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174394 lambda!174329))))

(assert (=> bs!866963 (= (= lt!1706357 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174394 lambda!174231))))

(assert (=> bs!866964 (= (= lt!1706357 lt!1705224) (= lambda!174394 lambda!174168))))

(assert (=> bs!866932 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174394 lambda!174363))))

(assert (=> bs!866965 (= (= lt!1706357 lt!1705467) (= lambda!174394 lambda!174349))))

(assert (=> bs!866966 (= (= lt!1706357 lt!1705001) (= lambda!174394 lambda!174230))))

(assert (=> bs!866931 (= (= lt!1706357 lt!1705624) (= lambda!174394 lambda!174261))))

(assert (=> bs!866955 (= (= lt!1706357 lt!1705001) (= lambda!174394 lambda!174179))))

(assert (=> bs!866967 (= (= lt!1706357 lt!1705028) (= lambda!174394 lambda!174289))))

(assert (=> bs!866968 (= (= lt!1706357 lt!1705278) (= lambda!174394 lambda!174181))))

(assert (=> bs!866969 (= (= lt!1706357 lt!1706147) (= lambda!174394 lambda!174367))))

(assert (=> bs!866970 (= (= lt!1706357 lt!1706186) (= lambda!174394 lambda!174375))))

(assert (=> bs!866971 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174394 lambda!174361))))

(assert (=> bs!866972 (= (= lt!1706357 lt!1705028) (= lambda!174394 lambda!174221))))

(assert (=> bs!866970 (= (= lt!1706357 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174394 lambda!174374))))

(assert (=> bs!866973 (= (= lt!1706357 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174394 lambda!174345))))

(assert (=> bs!866974 (= (= lt!1706357 lt!1706198) (= lambda!174394 lambda!174377))))

(assert (=> b!4530958 true))

(declare-fun bs!866975 () Bool)

(declare-fun d!1398611 () Bool)

(assert (= bs!866975 (and d!1398611 d!1397915)))

(declare-fun lambda!174395 () Int)

(declare-fun lt!1706369 () ListMap!3625)

(assert (=> bs!866975 (= (= lt!1706369 lt!1705606) (= lambda!174395 lambda!174257))))

(declare-fun bs!866976 () Bool)

(assert (= bs!866976 (and d!1398611 b!4530778)))

(assert (=> bs!866976 (= (= lt!1706369 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174395 lambda!174381))))

(declare-fun bs!866977 () Bool)

(assert (= bs!866977 (and d!1398611 b!4529972)))

(assert (=> bs!866977 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174395 lambda!174260))))

(declare-fun bs!866978 () Bool)

(assert (= bs!866978 (and d!1398611 b!4530684)))

(assert (=> bs!866978 (= (= lt!1706369 lt!1706135) (= lambda!174395 lambda!174364))))

(declare-fun bs!866979 () Bool)

(assert (= bs!866979 (and d!1398611 d!1398485)))

(assert (=> bs!866979 (= (= lt!1706369 lt!1706252) (= lambda!174395 lambda!174384))))

(declare-fun bs!866980 () Bool)

(assert (= bs!866980 (and d!1398611 b!4529691)))

(assert (=> bs!866980 (= (= lt!1706369 lt!1705467) (= lambda!174395 lambda!174223))))

(declare-fun bs!866981 () Bool)

(assert (= bs!866981 (and d!1398611 d!1397935)))

(assert (=> bs!866981 (= (= lt!1706369 lt!1705636) (= lambda!174395 lambda!174264))))

(declare-fun bs!866982 () Bool)

(assert (= bs!866982 (and d!1398611 d!1397821)))

(assert (=> bs!866982 (= (= lt!1706369 lt!1705529) (= lambda!174395 lambda!174234))))

(declare-fun bs!866983 () Bool)

(assert (= bs!866983 (and d!1398611 b!4530958)))

(assert (=> bs!866983 (= (= lt!1706369 lt!1706357) (= lambda!174395 lambda!174394))))

(declare-fun bs!866984 () Bool)

(assert (= bs!866984 (and d!1398611 b!4529273)))

(assert (=> bs!866984 (not (= lambda!174395 lambda!174089))))

(assert (=> bs!866983 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (= lambda!174395 lambda!174393))))

(declare-fun bs!866985 () Bool)

(assert (= bs!866985 (and d!1398611 b!4529936)))

(assert (=> bs!866985 (= (= lt!1706369 lt!1705594) (= lambda!174395 lambda!174256))))

(declare-fun bs!866986 () Bool)

(assert (= bs!866986 (and d!1398611 d!1397787)))

(assert (=> bs!866986 (= (= lt!1706369 lt!1705479) (= lambda!174395 lambda!174224))))

(declare-fun bs!866987 () Bool)

(assert (= bs!866987 (and d!1398611 b!4530552)))

(assert (=> bs!866987 (= (= lt!1706369 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174395 lambda!174333))))

(declare-fun bs!866988 () Bool)

(assert (= bs!866988 (and d!1398611 b!4530646)))

(assert (=> bs!866988 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174395 lambda!174352))))

(declare-fun bs!866989 () Bool)

(assert (= bs!866989 (and d!1398611 b!4530732)))

(assert (=> bs!866989 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174395 lambda!174371))))

(declare-fun bs!866990 () Bool)

(assert (= bs!866990 (and d!1398611 b!4530613)))

(assert (=> bs!866990 (= (= lt!1706369 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174395 lambda!174346))))

(declare-fun bs!866991 () Bool)

(assert (= bs!866991 (and d!1398611 b!4529387)))

(assert (=> bs!866991 (= (= lt!1706369 lt!1705027) (= lambda!174395 lambda!174166))))

(declare-fun bs!866992 () Bool)

(assert (= bs!866992 (and d!1398611 b!4530649)))

(assert (=> bs!866992 (= (= lt!1706369 lt!1706086) (= lambda!174395 lambda!174354))))

(declare-fun bs!866993 () Bool)

(assert (= bs!866993 (and d!1398611 d!1398347)))

(assert (=> bs!866993 (= (= lt!1706369 lt!1706052) (= lambda!174395 lambda!174348))))

(assert (=> bs!866987 (= (= lt!1706369 lt!1705953) (= lambda!174395 lambda!174334))))

(assert (=> bs!866990 (= (= lt!1706369 lt!1706040) (= lambda!174395 lambda!174347))))

(declare-fun bs!866994 () Bool)

(assert (= bs!866994 (and d!1398611 d!1398371)))

(assert (=> bs!866994 (= (= lt!1706369 lt!1706098) (= lambda!174395 lambda!174356))))

(declare-fun bs!866995 () Bool)

(assert (= bs!866995 (and d!1398611 b!4529431)))

(assert (=> bs!866995 (= (= lt!1706369 lt!1705001) (= lambda!174395 lambda!174178))))

(declare-fun bs!866996 () Bool)

(assert (= bs!866996 (and d!1398611 d!1398281)))

(assert (=> bs!866996 (= (= lt!1706369 lt!1705212) (= lambda!174395 lambda!174327))))

(declare-fun bs!866997 () Bool)

(assert (= bs!866997 (and d!1398611 b!4529733)))

(assert (=> bs!866997 (= (= lt!1706369 lt!1705517) (= lambda!174395 lambda!174233))))

(declare-fun bs!866998 () Bool)

(assert (= bs!866998 (and d!1398611 b!4530955)))

(assert (=> bs!866998 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (= lambda!174395 lambda!174392))))

(declare-fun bs!866999 () Bool)

(assert (= bs!866999 (and d!1398611 d!1398315)))

(assert (=> bs!866999 (= (= lt!1706369 lt!1705965) (= lambda!174395 lambda!174335))))

(assert (=> bs!866997 (= (= lt!1706369 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174395 lambda!174232))))

(declare-fun bs!867000 () Bool)

(assert (= bs!867000 (and d!1398611 d!1398463)))

(assert (=> bs!867000 (= (= lt!1706369 lt!1705266) (= lambda!174395 lambda!174380))))

(assert (=> bs!866985 (= (= lt!1706369 (-!404 lt!1705001 key!3287)) (= lambda!174395 lambda!174255))))

(declare-fun bs!867001 () Bool)

(assert (= bs!867001 (and d!1398611 b!4529933)))

(assert (=> bs!867001 (= (= lt!1706369 (-!404 lt!1705001 key!3287)) (= lambda!174395 lambda!174254))))

(declare-fun bs!867002 () Bool)

(assert (= bs!867002 (and d!1398611 b!4529434)))

(assert (=> bs!867002 (= (= lt!1706369 lt!1705266) (= lambda!174395 lambda!174180))))

(declare-fun bs!867003 () Bool)

(assert (= bs!867003 (and d!1398611 d!1398049)))

(assert (=> bs!867003 (= (= lt!1706369 lt!1705027) (= lambda!174395 lambda!174280))))

(assert (=> bs!866980 (= (= lt!1706369 lt!1705028) (= lambda!174395 lambda!174222))))

(declare-fun bs!867004 () Bool)

(assert (= bs!867004 (and d!1398611 b!4530781)))

(assert (=> bs!867004 (= (= lt!1706369 (+!1572 lt!1705001 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174395 lambda!174382))))

(assert (=> bs!866992 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lt!1704999)))) (= lambda!174395 lambda!174353))))

(declare-fun bs!867005 () Bool)

(assert (= bs!867005 (and d!1398611 d!1398099)))

(assert (=> bs!867005 (not (= lambda!174395 lambda!174291))))

(declare-fun bs!867006 () Bool)

(assert (= bs!867006 (and d!1398611 d!1397779)))

(assert (=> bs!867006 (not (= lambda!174395 lambda!174220))))

(declare-fun bs!867007 () Bool)

(assert (= bs!867007 (and d!1398611 b!4529969)))

(assert (=> bs!867007 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lt!1705020)))) (= lambda!174395 lambda!174258))))

(assert (=> bs!867004 (= (= lt!1706369 lt!1706240) (= lambda!174395 lambda!174383))))

(assert (=> bs!866991 (= (= lt!1706369 lt!1705212) (= lambda!174395 lambda!174167))))

(declare-fun bs!867008 () Bool)

(assert (= bs!867008 (and d!1398611 b!4529384)))

(assert (=> bs!867008 (= (= lt!1706369 lt!1705027) (= lambda!174395 lambda!174165))))

(declare-fun bs!867009 () Bool)

(assert (= bs!867009 (and d!1398611 b!4530549)))

(assert (=> bs!867009 (= (= lt!1706369 (+!1572 lt!1705027 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174395 lambda!174329))))

(declare-fun bs!867010 () Bool)

(assert (= bs!867010 (and d!1398611 b!4529730)))

(assert (=> bs!867010 (= (= lt!1706369 (extractMap!1234 (t!357783 (t!357783 (toList!4363 lm!1477))))) (= lambda!174395 lambda!174231))))

(declare-fun bs!867011 () Bool)

(assert (= bs!867011 (and d!1398611 d!1397569)))

(assert (=> bs!867011 (= (= lt!1706369 lt!1705224) (= lambda!174395 lambda!174168))))

(assert (=> bs!866978 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174395 lambda!174363))))

(declare-fun bs!867012 () Bool)

(assert (= bs!867012 (and d!1398611 d!1398357)))

(assert (=> bs!867012 (= (= lt!1706369 lt!1705467) (= lambda!174395 lambda!174349))))

(declare-fun bs!867013 () Bool)

(assert (= bs!867013 (and d!1398611 d!1397819)))

(assert (=> bs!867013 (= (= lt!1706369 lt!1705001) (= lambda!174395 lambda!174230))))

(assert (=> bs!866977 (= (= lt!1706369 lt!1705624) (= lambda!174395 lambda!174261))))

(assert (=> bs!867002 (= (= lt!1706369 lt!1705001) (= lambda!174395 lambda!174179))))

(declare-fun bs!867014 () Bool)

(assert (= bs!867014 (and d!1398611 d!1398075)))

(assert (=> bs!867014 (= (= lt!1706369 lt!1705028) (= lambda!174395 lambda!174289))))

(declare-fun bs!867015 () Bool)

(assert (= bs!867015 (and d!1398611 d!1397629)))

(assert (=> bs!867015 (= (= lt!1706369 lt!1705278) (= lambda!174395 lambda!174181))))

(declare-fun bs!867016 () Bool)

(assert (= bs!867016 (and d!1398611 d!1398395)))

(assert (=> bs!867016 (= (= lt!1706369 lt!1706147) (= lambda!174395 lambda!174367))))

(declare-fun bs!867017 () Bool)

(assert (= bs!867017 (and d!1398611 b!4530735)))

(assert (=> bs!867017 (= (= lt!1706369 lt!1706186) (= lambda!174395 lambda!174375))))

(declare-fun bs!867018 () Bool)

(assert (= bs!867018 (and d!1398611 b!4530681)))

(assert (=> bs!867018 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lm!1477)))) (= lambda!174395 lambda!174361))))

(declare-fun bs!867019 () Bool)

(assert (= bs!867019 (and d!1398611 b!4529688)))

(assert (=> bs!867019 (= (= lt!1706369 lt!1705028) (= lambda!174395 lambda!174221))))

(assert (=> bs!867017 (= (= lt!1706369 (extractMap!1234 (t!357783 (toList!4363 lt!1705004)))) (= lambda!174395 lambda!174374))))

(declare-fun bs!867020 () Bool)

(assert (= bs!867020 (and d!1398611 b!4530610)))

(assert (=> bs!867020 (= (= lt!1706369 (+!1572 lt!1705028 (h!56563 (_2!28868 lt!1705015)))) (= lambda!174395 lambda!174345))))

(declare-fun bs!867021 () Bool)

(assert (= bs!867021 (and d!1398611 d!1398449)))

(assert (=> bs!867021 (= (= lt!1706369 lt!1706198) (= lambda!174395 lambda!174377))))

(assert (=> d!1398611 true))

(declare-fun b!4530954 () Bool)

(declare-fun e!2823237 () Bool)

(assert (=> b!4530954 (= e!2823237 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) lambda!174394))))

(declare-fun call!315840 () Bool)

(declare-fun bm!315834 () Bool)

(declare-fun c!773669 () Bool)

(assert (=> bm!315834 (= call!315840 (forall!10305 (ite c!773669 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (t!357782 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))) (ite c!773669 lambda!174392 lambda!174394)))))

(declare-fun e!2823238 () ListMap!3625)

(assert (=> b!4530955 (= e!2823238 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))

(declare-fun lt!1706360 () Unit!96566)

(declare-fun call!315841 () Unit!96566)

(assert (=> b!4530955 (= lt!1706360 call!315841)))

(declare-fun call!315839 () Bool)

(assert (=> b!4530955 call!315839))

(declare-fun lt!1706371 () Unit!96566)

(assert (=> b!4530955 (= lt!1706371 lt!1706360)))

(assert (=> b!4530955 call!315840))

(declare-fun lt!1706353 () Unit!96566)

(declare-fun Unit!96969 () Unit!96566)

(assert (=> b!4530955 (= lt!1706353 Unit!96969)))

(declare-fun b!4530956 () Bool)

(declare-fun res!1887005 () Bool)

(declare-fun e!2823239 () Bool)

(assert (=> b!4530956 (=> (not res!1887005) (not e!2823239))))

(assert (=> b!4530956 (= res!1887005 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) lambda!174395))))

(declare-fun bm!315835 () Bool)

(assert (=> bm!315835 (= call!315841 (lemmaContainsAllItsOwnKeys!352 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))))

(declare-fun b!4530957 () Bool)

(assert (=> b!4530957 (= e!2823239 (invariantList!1031 (toList!4364 lt!1706369)))))

(assert (=> d!1398611 e!2823239))

(declare-fun res!1887006 () Bool)

(assert (=> d!1398611 (=> (not res!1887006) (not e!2823239))))

(assert (=> d!1398611 (= res!1887006 (forall!10305 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lambda!174395))))

(assert (=> d!1398611 (= lt!1706369 e!2823238)))

(assert (=> d!1398611 (= c!773669 ((_ is Nil!50696) (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))))

(assert (=> d!1398611 (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))

(assert (=> d!1398611 (= (addToMapMapFromBucket!705 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) lt!1706369)))

(declare-fun bm!315836 () Bool)

(assert (=> bm!315836 (= call!315839 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (ite c!773669 lambda!174392 lambda!174394)))))

(assert (=> b!4530958 (= e!2823238 lt!1706357)))

(declare-fun lt!1706365 () ListMap!3625)

(assert (=> b!4530958 (= lt!1706365 (+!1572 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))))

(assert (=> b!4530958 (= lt!1706357 (addToMapMapFromBucket!705 (t!357782 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (+!1572 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))))))

(declare-fun lt!1706364 () Unit!96566)

(assert (=> b!4530958 (= lt!1706364 call!315841)))

(assert (=> b!4530958 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) lambda!174393)))

(declare-fun lt!1706368 () Unit!96566)

(assert (=> b!4530958 (= lt!1706368 lt!1706364)))

(assert (=> b!4530958 (forall!10305 (toList!4364 lt!1706365) lambda!174394)))

(declare-fun lt!1706361 () Unit!96566)

(declare-fun Unit!96970 () Unit!96566)

(assert (=> b!4530958 (= lt!1706361 Unit!96970)))

(assert (=> b!4530958 call!315840))

(declare-fun lt!1706366 () Unit!96566)

(declare-fun Unit!96971 () Unit!96566)

(assert (=> b!4530958 (= lt!1706366 Unit!96971)))

(declare-fun lt!1706354 () Unit!96566)

(declare-fun Unit!96972 () Unit!96566)

(assert (=> b!4530958 (= lt!1706354 Unit!96972)))

(declare-fun lt!1706355 () Unit!96566)

(assert (=> b!4530958 (= lt!1706355 (forallContained!2559 (toList!4364 lt!1706365) lambda!174394 (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))))

(assert (=> b!4530958 (contains!13455 lt!1706365 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))))

(declare-fun lt!1706356 () Unit!96566)

(declare-fun Unit!96973 () Unit!96566)

(assert (=> b!4530958 (= lt!1706356 Unit!96973)))

(assert (=> b!4530958 (contains!13455 lt!1706357 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))))

(declare-fun lt!1706359 () Unit!96566)

(declare-fun Unit!96974 () Unit!96566)

(assert (=> b!4530958 (= lt!1706359 Unit!96974)))

(assert (=> b!4530958 (forall!10305 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lambda!174394)))

(declare-fun lt!1706362 () Unit!96566)

(declare-fun Unit!96975 () Unit!96566)

(assert (=> b!4530958 (= lt!1706362 Unit!96975)))

(assert (=> b!4530958 (forall!10305 (toList!4364 lt!1706365) lambda!174394)))

(declare-fun lt!1706363 () Unit!96566)

(declare-fun Unit!96976 () Unit!96566)

(assert (=> b!4530958 (= lt!1706363 Unit!96976)))

(declare-fun lt!1706358 () Unit!96566)

(declare-fun Unit!96977 () Unit!96566)

(assert (=> b!4530958 (= lt!1706358 Unit!96977)))

(declare-fun lt!1706352 () Unit!96566)

(assert (=> b!4530958 (= lt!1706352 (addForallContainsKeyThenBeforeAdding!352 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706357 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))) (_2!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))))))

(assert (=> b!4530958 call!315839))

(declare-fun lt!1706370 () Unit!96566)

(assert (=> b!4530958 (= lt!1706370 lt!1706352)))

(assert (=> b!4530958 (forall!10305 (toList!4364 (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) lambda!174394)))

(declare-fun lt!1706367 () Unit!96566)

(declare-fun Unit!96978 () Unit!96566)

(assert (=> b!4530958 (= lt!1706367 Unit!96978)))

(declare-fun res!1887004 () Bool)

(assert (=> b!4530958 (= res!1887004 (forall!10305 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lambda!174394))))

(assert (=> b!4530958 (=> (not res!1887004) (not e!2823237))))

(assert (=> b!4530958 e!2823237))

(declare-fun lt!1706372 () Unit!96566)

(declare-fun Unit!96979 () Unit!96566)

(assert (=> b!4530958 (= lt!1706372 Unit!96979)))

(assert (= (and d!1398611 c!773669) b!4530955))

(assert (= (and d!1398611 (not c!773669)) b!4530958))

(assert (= (and b!4530958 res!1887004) b!4530954))

(assert (= (or b!4530955 b!4530958) bm!315836))

(assert (= (or b!4530955 b!4530958) bm!315834))

(assert (= (or b!4530955 b!4530958) bm!315835))

(assert (= (and d!1398611 res!1887006) b!4530956))

(assert (= (and b!4530956 res!1887005) b!4530957))

(declare-fun m!5288639 () Bool)

(assert (=> d!1398611 m!5288639))

(declare-fun m!5288641 () Bool)

(assert (=> d!1398611 m!5288641))

(declare-fun m!5288643 () Bool)

(assert (=> b!4530958 m!5288643))

(assert (=> b!4530958 m!5288643))

(declare-fun m!5288645 () Bool)

(assert (=> b!4530958 m!5288645))

(declare-fun m!5288647 () Bool)

(assert (=> b!4530958 m!5288647))

(assert (=> b!4530958 m!5285957))

(declare-fun m!5288649 () Bool)

(assert (=> b!4530958 m!5288649))

(declare-fun m!5288651 () Bool)

(assert (=> b!4530958 m!5288651))

(declare-fun m!5288653 () Bool)

(assert (=> b!4530958 m!5288653))

(declare-fun m!5288655 () Bool)

(assert (=> b!4530958 m!5288655))

(declare-fun m!5288657 () Bool)

(assert (=> b!4530958 m!5288657))

(declare-fun m!5288659 () Bool)

(assert (=> b!4530958 m!5288659))

(declare-fun m!5288661 () Bool)

(assert (=> b!4530958 m!5288661))

(assert (=> b!4530958 m!5285957))

(assert (=> b!4530958 m!5288655))

(assert (=> b!4530958 m!5288645))

(assert (=> b!4530954 m!5288647))

(declare-fun m!5288663 () Bool)

(assert (=> bm!315834 m!5288663))

(declare-fun m!5288665 () Bool)

(assert (=> b!4530956 m!5288665))

(assert (=> bm!315835 m!5285957))

(declare-fun m!5288667 () Bool)

(assert (=> bm!315835 m!5288667))

(declare-fun m!5288669 () Bool)

(assert (=> b!4530957 m!5288669))

(declare-fun m!5288671 () Bool)

(assert (=> bm!315836 m!5288671))

(assert (=> b!4529670 d!1398611))

(declare-fun bs!867022 () Bool)

(declare-fun d!1398613 () Bool)

(assert (= bs!867022 (and d!1398613 d!1397661)))

(declare-fun lambda!174396 () Int)

(assert (=> bs!867022 (= lambda!174396 lambda!174187)))

(declare-fun bs!867023 () Bool)

(assert (= bs!867023 (and d!1398613 d!1397797)))

(assert (=> bs!867023 (= lambda!174396 lambda!174227)))

(declare-fun bs!867024 () Bool)

(assert (= bs!867024 (and d!1398613 d!1397711)))

(assert (=> bs!867024 (= lambda!174396 lambda!174203)))

(declare-fun bs!867025 () Bool)

(assert (= bs!867025 (and d!1398613 d!1397727)))

(assert (=> bs!867025 (= lambda!174396 lambda!174209)))

(declare-fun bs!867026 () Bool)

(assert (= bs!867026 (and d!1398613 d!1397665)))

(assert (=> bs!867026 (= lambda!174396 lambda!174190)))

(declare-fun bs!867027 () Bool)

(assert (= bs!867027 (and d!1398613 d!1397751)))

(assert (=> bs!867027 (not (= lambda!174396 lambda!174212))))

(declare-fun bs!867028 () Bool)

(assert (= bs!867028 (and d!1398613 d!1397607)))

(assert (=> bs!867028 (= lambda!174396 lambda!174177)))

(declare-fun bs!867029 () Bool)

(assert (= bs!867029 (and d!1398613 d!1397767)))

(assert (=> bs!867029 (= lambda!174396 lambda!174216)))

(declare-fun bs!867030 () Bool)

(assert (= bs!867030 (and d!1398613 d!1398455)))

(assert (=> bs!867030 (= lambda!174396 lambda!174379)))

(declare-fun bs!867031 () Bool)

(assert (= bs!867031 (and d!1398613 d!1397705)))

(assert (=> bs!867031 (= lambda!174396 lambda!174197)))

(declare-fun bs!867032 () Bool)

(assert (= bs!867032 (and d!1398613 d!1397669)))

(assert (=> bs!867032 (= lambda!174396 lambda!174191)))

(declare-fun bs!867033 () Bool)

(assert (= bs!867033 (and d!1398613 b!4529273)))

(assert (=> bs!867033 (not (= lambda!174396 lambda!174088))))

(declare-fun bs!867034 () Bool)

(assert (= bs!867034 (and d!1398613 d!1397769)))

(assert (=> bs!867034 (= lambda!174396 lambda!174217)))

(declare-fun bs!867035 () Bool)

(assert (= bs!867035 (and d!1398613 d!1397765)))

(assert (=> bs!867035 (= lambda!174396 lambda!174213)))

(declare-fun bs!867036 () Bool)

(assert (= bs!867036 (and d!1398613 start!449036)))

(assert (=> bs!867036 (= lambda!174396 lambda!174087)))

(declare-fun bs!867037 () Bool)

(assert (= bs!867037 (and d!1398613 d!1398269)))

(assert (=> bs!867037 (= lambda!174396 lambda!174318)))

(declare-fun bs!867038 () Bool)

(assert (= bs!867038 (and d!1398613 d!1398383)))

(assert (=> bs!867038 (= lambda!174396 lambda!174359)))

(declare-fun bs!867039 () Bool)

(assert (= bs!867039 (and d!1398613 d!1397823)))

(assert (=> bs!867039 (= lambda!174396 lambda!174235)))

(declare-fun bs!867040 () Bool)

(assert (= bs!867040 (and d!1398613 d!1397939)))

(assert (=> bs!867040 (= lambda!174396 lambda!174266)))

(declare-fun lt!1706409 () ListMap!3625)

(assert (=> d!1398613 (invariantList!1031 (toList!4364 lt!1706409))))

(declare-fun e!2823258 () ListMap!3625)

(assert (=> d!1398613 (= lt!1706409 e!2823258)))

(declare-fun c!773686 () Bool)

(assert (=> d!1398613 (= c!773686 ((_ is Cons!50697) (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))

(assert (=> d!1398613 (forall!10303 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))) lambda!174396)))

(assert (=> d!1398613 (= (extractMap!1234 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) lt!1706409)))

(declare-fun b!4530997 () Bool)

(assert (=> b!4530997 (= e!2823258 (addToMapMapFromBucket!705 (_2!28868 (h!56564 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015))))) (extractMap!1234 (t!357783 (t!357783 (toList!4363 (+!1570 lt!1705004 lt!1705015)))))))))

(declare-fun b!4530998 () Bool)

(assert (=> b!4530998 (= e!2823258 (ListMap!3626 Nil!50696))))

(assert (= (and d!1398613 c!773686) b!4530997))

(assert (= (and d!1398613 (not c!773686)) b!4530998))

(declare-fun m!5288673 () Bool)

(assert (=> d!1398613 m!5288673))

(declare-fun m!5288675 () Bool)

(assert (=> d!1398613 m!5288675))

(declare-fun m!5288677 () Bool)

(assert (=> b!4530997 m!5288677))

(assert (=> b!4530997 m!5288677))

(declare-fun m!5288679 () Bool)

(assert (=> b!4530997 m!5288679))

(assert (=> b!4529670 d!1398613))

(declare-fun d!1398615 () Bool)

(declare-fun res!1887016 () Bool)

(declare-fun e!2823268 () Bool)

(assert (=> d!1398615 (=> res!1887016 e!2823268)))

(assert (=> d!1398615 (= res!1887016 ((_ is Nil!50696) (toList!4364 lt!1705001)))))

(assert (=> d!1398615 (= (forall!10305 (toList!4364 lt!1705001) (ite c!773313 lambda!174178 lambda!174180)) e!2823268)))

(declare-fun b!4531018 () Bool)

(declare-fun e!2823269 () Bool)

(assert (=> b!4531018 (= e!2823268 e!2823269)))

(declare-fun res!1887017 () Bool)

(assert (=> b!4531018 (=> (not res!1887017) (not e!2823269))))

(assert (=> b!4531018 (= res!1887017 (dynLambda!21188 (ite c!773313 lambda!174178 lambda!174180) (h!56563 (toList!4364 lt!1705001))))))

(declare-fun b!4531019 () Bool)

(assert (=> b!4531019 (= e!2823269 (forall!10305 (t!357782 (toList!4364 lt!1705001)) (ite c!773313 lambda!174178 lambda!174180)))))

(assert (= (and d!1398615 (not res!1887016)) b!4531018))

(assert (= (and b!4531018 res!1887017) b!4531019))

(declare-fun b_lambda!156529 () Bool)

(assert (=> (not b_lambda!156529) (not b!4531018)))

(declare-fun m!5288735 () Bool)

(assert (=> b!4531018 m!5288735))

(declare-fun m!5288737 () Bool)

(assert (=> b!4531019 m!5288737))

(assert (=> bm!315696 d!1398615))

(declare-fun d!1398619 () Bool)

(assert (=> d!1398619 (= (head!9446 (toList!4363 lm!1477)) (h!56564 (toList!4363 lm!1477)))))

(assert (=> d!1397763 d!1398619))

(declare-fun b!4531024 () Bool)

(declare-fun e!2823274 () Bool)

(declare-fun tp!1338366 () Bool)

(assert (=> b!4531024 (= e!2823274 (and tp_is_empty!27989 tp_is_empty!27991 tp!1338366))))

(assert (=> b!4529726 (= tp!1338365 e!2823274)))

(assert (= (and b!4529726 ((_ is Cons!50696) (t!357782 (t!357782 newBucket!178)))) b!4531024))

(declare-fun b!4531025 () Bool)

(declare-fun tp!1338367 () Bool)

(declare-fun e!2823275 () Bool)

(assert (=> b!4531025 (= e!2823275 (and tp_is_empty!27989 tp_is_empty!27991 tp!1338367))))

(assert (=> b!4529721 (= tp!1338361 e!2823275)))

(assert (= (and b!4529721 ((_ is Cons!50696) (_2!28868 (h!56564 (toList!4363 lm!1477))))) b!4531025))

(declare-fun b!4531028 () Bool)

(declare-fun e!2823278 () Bool)

(declare-fun tp!1338368 () Bool)

(declare-fun tp!1338369 () Bool)

(assert (=> b!4531028 (= e!2823278 (and tp!1338368 tp!1338369))))

(assert (=> b!4529721 (= tp!1338362 e!2823278)))

(assert (= (and b!4529721 ((_ is Cons!50697) (t!357783 (toList!4363 lm!1477)))) b!4531028))

(declare-fun b_lambda!156533 () Bool)

(assert (= b_lambda!156485 (or d!1397705 b_lambda!156533)))

(declare-fun bs!867049 () Bool)

(declare-fun d!1398627 () Bool)

(assert (= bs!867049 (and d!1398627 d!1397705)))

(assert (=> bs!867049 (= (dynLambda!21186 lambda!174197 (h!56564 (toList!4363 lm!1477))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(assert (=> bs!867049 m!5286087))

(assert (=> b!4530729 d!1398627))

(declare-fun b_lambda!156535 () Bool)

(assert (= b_lambda!156369 (or d!1397569 b_lambda!156535)))

(declare-fun bs!867052 () Bool)

(declare-fun d!1398629 () Bool)

(assert (= bs!867052 (and d!1398629 d!1397569)))

(assert (=> bs!867052 (= (dynLambda!21188 lambda!174168 (h!56563 (_2!28868 lt!1705015))) (contains!13455 lt!1705224 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun m!5288753 () Bool)

(assert (=> bs!867052 m!5288753))

(assert (=> b!4529892 d!1398629))

(declare-fun b_lambda!156537 () Bool)

(assert (= b_lambda!156443 (or b!4529387 b_lambda!156537)))

(declare-fun bs!867054 () Bool)

(declare-fun d!1398631 () Bool)

(assert (= bs!867054 (and d!1398631 b!4529387)))

(assert (=> bs!867054 (= (dynLambda!21188 lambda!174167 (h!56563 (_2!28868 lt!1705015))) (contains!13455 lt!1705212 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> bs!867054 m!5285359))

(assert (=> d!1398279 d!1398631))

(declare-fun b_lambda!156539 () Bool)

(assert (= b_lambda!156471 (or b!4529691 b_lambda!156539)))

(declare-fun bs!867064 () Bool)

(declare-fun d!1398633 () Bool)

(assert (= bs!867064 (and d!1398633 b!4529691)))

(assert (=> bs!867064 (= (dynLambda!21188 lambda!174222 (h!56563 (toList!4364 lt!1705028))) (contains!13455 lt!1705028 (_1!28867 (h!56563 (toList!4364 lt!1705028)))))))

(declare-fun m!5288755 () Bool)

(assert (=> bs!867064 m!5288755))

(assert (=> b!4530629 d!1398633))

(declare-fun b_lambda!156541 () Bool)

(assert (= b_lambda!156417 (or d!1397607 b_lambda!156541)))

(declare-fun bs!867066 () Bool)

(declare-fun d!1398635 () Bool)

(assert (= bs!867066 (and d!1398635 d!1397607)))

(assert (=> bs!867066 (= (dynLambda!21186 lambda!174177 (h!56564 (toList!4363 lt!1705020))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705020)))))))

(assert (=> bs!867066 m!5286427))

(assert (=> b!4530224 d!1398635))

(declare-fun b_lambda!156543 () Bool)

(assert (= b_lambda!156517 (or d!1397787 b_lambda!156543)))

(declare-fun bs!867068 () Bool)

(declare-fun d!1398637 () Bool)

(assert (= bs!867068 (and d!1398637 d!1397787)))

(assert (=> bs!867068 (= (dynLambda!21188 lambda!174224 (h!56563 (_2!28868 lt!1705015))) (contains!13455 lt!1705479 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun m!5288757 () Bool)

(assert (=> bs!867068 m!5288757))

(assert (=> b!4530903 d!1398637))

(declare-fun b_lambda!156545 () Bool)

(assert (= b_lambda!156467 (or b!4529691 b_lambda!156545)))

(declare-fun bs!867071 () Bool)

(declare-fun d!1398639 () Bool)

(assert (= bs!867071 (and d!1398639 b!4529691)))

(assert (=> bs!867071 (= (dynLambda!21188 lambda!174223 (h!56563 (_2!28868 lt!1705015))) (contains!13455 lt!1705467 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> bs!867071 m!5285999))

(assert (=> b!4530606 d!1398639))

(declare-fun b_lambda!156547 () Bool)

(assert (= b_lambda!156483 (or d!1397765 b_lambda!156547)))

(declare-fun bs!867073 () Bool)

(declare-fun d!1398641 () Bool)

(assert (= bs!867073 (and d!1398641 d!1397765)))

(assert (=> bs!867073 (= (dynLambda!21186 lambda!174213 (h!56564 (toList!4363 lt!1704999))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1704999)))))))

(assert (=> bs!867073 m!5287809))

(assert (=> b!4530727 d!1398641))

(declare-fun b_lambda!156549 () Bool)

(assert (= b_lambda!156413 (or b!4529691 b_lambda!156549)))

(declare-fun bs!867076 () Bool)

(declare-fun d!1398643 () Bool)

(assert (= bs!867076 (and d!1398643 b!4529691)))

(assert (=> bs!867076 (= (dynLambda!21188 lambda!174223 (h!56563 (toList!4364 lt!1705028))) (contains!13455 lt!1705467 (_1!28867 (h!56563 (toList!4364 lt!1705028)))))))

(declare-fun m!5288759 () Bool)

(assert (=> bs!867076 m!5288759))

(assert (=> b!4530220 d!1398643))

(declare-fun b_lambda!156551 () Bool)

(assert (= b_lambda!156365 (or d!1397661 b_lambda!156551)))

(declare-fun bs!867077 () Bool)

(declare-fun d!1398645 () Bool)

(assert (= bs!867077 (and d!1398645 d!1397661)))

(assert (=> bs!867077 (= (dynLambda!21186 lambda!174187 (h!56564 (t!357783 (toList!4363 lm!1477)))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))

(assert (=> bs!867077 m!5286103))

(assert (=> b!4529770 d!1398645))

(declare-fun b_lambda!156553 () Bool)

(assert (= b_lambda!156525 (or d!1397779 b_lambda!156553)))

(declare-fun bs!867078 () Bool)

(declare-fun d!1398647 () Bool)

(assert (= bs!867078 (and d!1398647 d!1397779)))

(assert (=> bs!867078 (= (dynLambda!21188 lambda!174220 (h!56563 newBucket!178)) (= (hash!2861 hashF!1107 (_1!28867 (h!56563 newBucket!178))) hash!344))))

(declare-fun m!5288761 () Bool)

(assert (=> bs!867078 m!5288761))

(assert (=> b!4530948 d!1398647))

(declare-fun b_lambda!156555 () Bool)

(assert (= b_lambda!156469 (or b!4529691 b_lambda!156555)))

(assert (=> d!1398345 d!1398639))

(declare-fun b_lambda!156557 () Bool)

(assert (= b_lambda!156367 (or d!1397727 b_lambda!156557)))

(declare-fun bs!867080 () Bool)

(declare-fun d!1398649 () Bool)

(assert (= bs!867080 (and d!1398649 d!1397727)))

(assert (=> bs!867080 (= (dynLambda!21186 lambda!174209 (h!56564 (toList!4363 lm!1477))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(assert (=> bs!867080 m!5286087))

(assert (=> b!4529872 d!1398649))

(declare-fun b_lambda!156559 () Bool)

(assert (= b_lambda!156505 (or b!4529434 b_lambda!156559)))

(declare-fun bs!867082 () Bool)

(declare-fun d!1398651 () Bool)

(assert (= bs!867082 (and d!1398651 b!4529434)))

(assert (=> bs!867082 (= (dynLambda!21188 lambda!174179 (h!56563 (toList!4364 lt!1705001))) (contains!13455 lt!1705001 (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun m!5288763 () Bool)

(assert (=> bs!867082 m!5288763))

(assert (=> b!4530793 d!1398651))

(declare-fun b_lambda!156561 () Bool)

(assert (= b_lambda!156375 (or d!1397669 b_lambda!156561)))

(declare-fun bs!867084 () Bool)

(declare-fun d!1398653 () Bool)

(assert (= bs!867084 (and d!1398653 d!1397669)))

(assert (=> bs!867084 (= (dynLambda!21186 lambda!174191 (h!56564 (toList!4363 lt!1705004))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(assert (=> bs!867084 m!5288081))

(assert (=> b!4529980 d!1398653))

(declare-fun b_lambda!156563 () Bool)

(assert (= b_lambda!156383 (or b!4529273 b_lambda!156563)))

(assert (=> d!1397959 d!1397809))

(declare-fun b_lambda!156565 () Bool)

(assert (= b_lambda!156481 (or d!1397787 b_lambda!156565)))

(declare-fun bs!867086 () Bool)

(declare-fun d!1398655 () Bool)

(assert (= bs!867086 (and d!1398655 d!1397787)))

(assert (=> bs!867086 (= (dynLambda!21188 lambda!174224 (h!56563 (toList!4364 lt!1705028))) (contains!13455 lt!1705479 (_1!28867 (h!56563 (toList!4364 lt!1705028)))))))

(declare-fun m!5288765 () Bool)

(assert (=> bs!867086 m!5288765))

(assert (=> b!4530725 d!1398655))

(declare-fun b_lambda!156567 () Bool)

(assert (= b_lambda!156409 (or start!449036 b_lambda!156567)))

(assert (=> d!1398079 d!1397811))

(declare-fun b_lambda!156569 () Bool)

(assert (= b_lambda!156361 (or b!4529434 b_lambda!156569)))

(declare-fun bs!867087 () Bool)

(declare-fun d!1398657 () Bool)

(assert (= bs!867087 (and d!1398657 b!4529434)))

(assert (=> bs!867087 (= (dynLambda!21188 lambda!174180 (h!56563 (toList!4364 lt!1705001))) (contains!13455 lt!1705266 (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun m!5288767 () Bool)

(assert (=> bs!867087 m!5288767))

(assert (=> b!4529746 d!1398657))

(declare-fun b_lambda!156571 () Bool)

(assert (= b_lambda!156407 (or b!4529387 b_lambda!156571)))

(declare-fun bs!867089 () Bool)

(declare-fun d!1398659 () Bool)

(assert (= bs!867089 (and d!1398659 b!4529387)))

(assert (=> bs!867089 (= (dynLambda!21188 lambda!174167 (h!56563 (toList!4364 lt!1705027))) (contains!13455 lt!1705212 (_1!28867 (h!56563 (toList!4364 lt!1705027)))))))

(declare-fun m!5288769 () Bool)

(assert (=> bs!867089 m!5288769))

(assert (=> b!4530197 d!1398659))

(declare-fun b_lambda!156573 () Bool)

(assert (= b_lambda!156377 (or b!4529273 b_lambda!156573)))

(assert (=> d!1397951 d!1397813))

(declare-fun b_lambda!156575 () Bool)

(assert (= b_lambda!156381 (or d!1397629 b_lambda!156575)))

(declare-fun bs!867091 () Bool)

(declare-fun d!1398661 () Bool)

(assert (= bs!867091 (and d!1398661 d!1397629)))

(assert (=> bs!867091 (= (dynLambda!21188 lambda!174181 (h!56563 (toList!4364 lt!1705001))) (contains!13455 lt!1705278 (_1!28867 (h!56563 (toList!4364 lt!1705001)))))))

(declare-fun m!5288771 () Bool)

(assert (=> bs!867091 m!5288771))

(assert (=> b!4530000 d!1398661))

(declare-fun b_lambda!156577 () Bool)

(assert (= b_lambda!156479 (or d!1397569 b_lambda!156577)))

(declare-fun bs!867093 () Bool)

(declare-fun d!1398663 () Bool)

(assert (= bs!867093 (and d!1398663 d!1397569)))

(assert (=> bs!867093 (= (dynLambda!21188 lambda!174168 (h!56563 (toList!4364 lt!1705027))) (contains!13455 lt!1705224 (_1!28867 (h!56563 (toList!4364 lt!1705027)))))))

(declare-fun m!5288773 () Bool)

(assert (=> bs!867093 m!5288773))

(assert (=> b!4530719 d!1398663))

(declare-fun b_lambda!156579 () Bool)

(assert (= b_lambda!156509 (or b!4529434 b_lambda!156579)))

(declare-fun bs!867094 () Bool)

(declare-fun d!1398665 () Bool)

(assert (= bs!867094 (and d!1398665 b!4529434)))

(assert (=> bs!867094 (= (dynLambda!21188 lambda!174180 (h!56563 (toList!4364 lt!1705274))) (contains!13455 lt!1705266 (_1!28867 (h!56563 (toList!4364 lt!1705274)))))))

(declare-fun m!5288775 () Bool)

(assert (=> bs!867094 m!5288775))

(assert (=> b!4530817 d!1398665))

(declare-fun b_lambda!156581 () Bool)

(assert (= b_lambda!156415 (or d!1397769 b_lambda!156581)))

(declare-fun bs!867096 () Bool)

(declare-fun d!1398667 () Bool)

(assert (= bs!867096 (and d!1398667 d!1397769)))

(assert (=> bs!867096 (= (dynLambda!21186 lambda!174217 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015)))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 (+!1570 lt!1705004 lt!1705015))))))))

(assert (=> bs!867096 m!5288641))

(assert (=> b!4530222 d!1398667))

(declare-fun b_lambda!156583 () Bool)

(assert (= b_lambda!156507 (or b!4529434 b_lambda!156583)))

(declare-fun bs!867098 () Bool)

(declare-fun d!1398669 () Bool)

(assert (= bs!867098 (and d!1398669 b!4529434)))

(assert (=> bs!867098 (= (dynLambda!21188 lambda!174180 (h!56563 (_2!28868 lt!1705015))) (contains!13455 lt!1705266 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(assert (=> bs!867098 m!5285479))

(assert (=> b!4530804 d!1398669))

(declare-fun b_lambda!156585 () Bool)

(assert (= b_lambda!156405 (or d!1397665 b_lambda!156585)))

(declare-fun bs!867100 () Bool)

(declare-fun d!1398671 () Bool)

(assert (= bs!867100 (and d!1398671 d!1397665)))

(assert (=> bs!867100 (= (dynLambda!21186 lambda!174190 (h!56564 (toList!4363 lt!1705004))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(assert (=> bs!867100 m!5288081))

(assert (=> b!4530191 d!1398671))

(declare-fun b_lambda!156587 () Bool)

(assert (= b_lambda!156463 (or b!4529387 b_lambda!156587)))

(declare-fun bs!867102 () Bool)

(declare-fun d!1398673 () Bool)

(assert (= bs!867102 (and d!1398673 b!4529387)))

(assert (=> bs!867102 (= (dynLambda!21188 lambda!174166 (h!56563 (toList!4364 lt!1705027))) (contains!13455 lt!1705027 (_1!28867 (h!56563 (toList!4364 lt!1705027)))))))

(declare-fun m!5288777 () Bool)

(assert (=> bs!867102 m!5288777))

(assert (=> b!4530580 d!1398673))

(declare-fun b_lambda!156589 () Bool)

(assert (= b_lambda!156489 (or b!4529434 b_lambda!156589)))

(assert (=> d!1398461 d!1398669))

(declare-fun b_lambda!156591 () Bool)

(assert (= b_lambda!156441 (or d!1397767 b_lambda!156591)))

(declare-fun bs!867103 () Bool)

(declare-fun d!1398675 () Bool)

(assert (= bs!867103 (and d!1398675 d!1397767)))

(assert (=> bs!867103 (= (dynLambda!21186 lambda!174216 (h!56564 (toList!4363 lt!1705004))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(assert (=> bs!867103 m!5288081))

(assert (=> b!4530493 d!1398675))

(declare-fun b_lambda!156593 () Bool)

(assert (= b_lambda!156527 (or d!1397629 b_lambda!156593)))

(declare-fun bs!867104 () Bool)

(declare-fun d!1398677 () Bool)

(assert (= bs!867104 (and d!1398677 d!1397629)))

(assert (=> bs!867104 (= (dynLambda!21188 lambda!174181 (h!56563 (_2!28868 lt!1705015))) (contains!13455 lt!1705278 (_1!28867 (h!56563 (_2!28868 lt!1705015)))))))

(declare-fun m!5288779 () Bool)

(assert (=> bs!867104 m!5288779))

(assert (=> b!4530950 d!1398677))

(declare-fun b_lambda!156595 () Bool)

(assert (= b_lambda!156455 (or b!4529387 b_lambda!156595)))

(declare-fun bs!867105 () Bool)

(declare-fun d!1398679 () Bool)

(assert (= bs!867105 (and d!1398679 b!4529387)))

(assert (=> bs!867105 (= (dynLambda!21188 lambda!174167 (h!56563 (toList!4364 lt!1705220))) (contains!13455 lt!1705212 (_1!28867 (h!56563 (toList!4364 lt!1705220)))))))

(declare-fun m!5288781 () Bool)

(assert (=> bs!867105 m!5288781))

(assert (=> b!4530537 d!1398679))

(declare-fun b_lambda!156597 () Bool)

(assert (= b_lambda!156453 (or b!4529387 b_lambda!156597)))

(assert (=> b!4530531 d!1398631))

(declare-fun b_lambda!156599 () Bool)

(assert (= b_lambda!156387 (or d!1397751 b_lambda!156599)))

(declare-fun bs!867106 () Bool)

(declare-fun d!1398681 () Bool)

(assert (= bs!867106 (and d!1398681 d!1397751)))

(assert (=> bs!867106 (= (dynLambda!21186 lambda!174212 (h!56564 (toList!4363 lm!1477))) (allKeysSameHash!1032 (_2!28868 (h!56564 (toList!4363 lm!1477))) (_1!28868 (h!56564 (toList!4363 lm!1477))) hashF!1107))))

(assert (=> bs!867106 m!5286085))

(assert (=> b!4530004 d!1398681))

(declare-fun b_lambda!156601 () Bool)

(assert (= b_lambda!156379 (or b!4529273 b_lambda!156601)))

(declare-fun bs!867108 () Bool)

(declare-fun d!1398683 () Bool)

(assert (= bs!867108 (and d!1398683 b!4529273)))

(assert (=> bs!867108 (= (dynLambda!21188 lambda!174089 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477))))) (= (hash!2861 hashF!1107 (_1!28867 (h!56563 (_2!28868 (h!56564 (toList!4363 lm!1477)))))) (_1!28868 (h!56564 (toList!4363 lm!1477)))))))

(declare-fun m!5288783 () Bool)

(assert (=> bs!867108 m!5288783))

(assert (=> b!4529996 d!1398683))

(declare-fun b_lambda!156603 () Bool)

(assert (= b_lambda!156363 (or d!1397711 b_lambda!156603)))

(declare-fun bs!867110 () Bool)

(declare-fun d!1398685 () Bool)

(assert (= bs!867110 (and d!1398685 d!1397711)))

(assert (=> bs!867110 (= (dynLambda!21186 lambda!174203 (h!56564 (toList!4363 lt!1705004))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lt!1705004)))))))

(assert (=> bs!867110 m!5288081))

(assert (=> b!4529748 d!1398685))

(declare-fun b_lambda!156605 () Bool)

(assert (= b_lambda!156521 (or d!1397797 b_lambda!156605)))

(declare-fun bs!867112 () Bool)

(declare-fun d!1398687 () Bool)

(assert (= bs!867112 (and d!1398687 d!1397797)))

(assert (=> bs!867112 (= (dynLambda!21186 lambda!174227 (h!56564 (toList!4363 lm!1477))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (toList!4363 lm!1477)))))))

(assert (=> bs!867112 m!5286087))

(assert (=> b!4530913 d!1398687))

(declare-fun b_lambda!156607 () Bool)

(assert (= b_lambda!156385 (or b!4529273 b_lambda!156607)))

(assert (=> b!4530002 d!1397809))

(declare-fun b_lambda!156609 () Bool)

(assert (= b_lambda!156511 (or start!449036 b_lambda!156609)))

(assert (=> d!1398527 d!1397815))

(declare-fun b_lambda!156611 () Bool)

(assert (= b_lambda!156411 (or start!449036 b_lambda!156611)))

(declare-fun bs!867115 () Bool)

(declare-fun d!1398689 () Bool)

(assert (= bs!867115 (and d!1398689 start!449036)))

(assert (=> bs!867115 (= (dynLambda!21186 lambda!174087 (h!56564 (t!357783 (toList!4363 lm!1477)))) (noDuplicateKeys!1178 (_2!28868 (h!56564 (t!357783 (toList!4363 lm!1477))))))))

(assert (=> bs!867115 m!5286103))

(assert (=> b!4530218 d!1398689))

(declare-fun b_lambda!156613 () Bool)

(assert (= b_lambda!156465 (or b!4529691 b_lambda!156613)))

(declare-fun bs!867117 () Bool)

(declare-fun d!1398691 () Bool)

(assert (= bs!867117 (and d!1398691 b!4529691)))

(assert (=> bs!867117 (= (dynLambda!21188 lambda!174223 (h!56563 (toList!4364 lt!1705475))) (contains!13455 lt!1705467 (_1!28867 (h!56563 (toList!4364 lt!1705475)))))))

(declare-fun m!5288785 () Bool)

(assert (=> bs!867117 m!5288785))

(assert (=> b!4530604 d!1398691))

(check-sat (not b!4529769) (not b!4530236) (not d!1398393) (not b!4530822) (not b!4529816) (not b!4530164) (not b!4530798) (not bm!315776) (not bs!867094) (not b!4530594) (not b!4529764) (not b!4530581) (not b!4530672) (not d!1397979) (not bm!315792) (not b!4530734) (not b_lambda!156355) (not b!4530155) (not b!4530269) (not b!4530599) (not b_lambda!156523) (not b!4530648) (not b!4530091) (not b!4530728) (not bm!315723) (not b!4530826) (not b!4530461) (not b!4530498) (not b!4530684) (not b!4530196) (not b_lambda!156373) (not b!4530603) (not b!4530167) (not d!1398249) (not d!1398083) (not b!4530866) (not b!4530873) (not d!1398561) (not b!4530779) (not bm!315806) (not bm!315784) (not bm!315724) (not d!1398277) (not b_lambda!156549) (not bs!867106) (not b!4530431) (not b!4529728) (not bm!315805) (not d!1398057) (not b!4530598) tp_is_empty!27991 (not b!4530259) (not b!4530802) (not bm!315818) (not b!4530242) (not b!4530494) tp_is_empty!27989 (not b!4529978) (not d!1398461) (not b!4530579) (not b!4530891) (not b!4530806) (not b!4530923) (not bs!867054) (not bm!315730) (not bm!315813) (not b!4530683) (not bm!315741) (not b_lambda!156547) (not b!4529747) (not b!4530874) (not d!1398589) (not b!4530605) (not b!4530647) (not b!4530199) (not b!4531024) (not d!1398515) (not bs!867100) (not b!4530465) (not d!1397935) (not b!4529932) (not b!4530936) (not b!4530258) (not b!4530906) (not b!4530591) (not b!4530551) (not b!4530125) (not bm!315743) (not b!4531025) (not b!4530075) (not b_lambda!156537) (not b_lambda!156553) (not b_lambda!156543) (not b_lambda!156605) (not b_lambda!156359) (not b!4530578) (not b!4530660) (not b!4530883) (not d!1398241) (not d!1397839) (not b!4530495) (not d!1398547) (not b!4529887) (not b!4529893) (not d!1398247) (not bs!867096) (not b!4530957) (not b!4529795) (not b!4530668) (not b!4530733) (not d!1397829) (not b!4530827) (not b!4529934) (not b!4530538) (not bm!315829) (not b!4529771) (not b!4530160) (not b!4530584) (not b!4530165) (not b!4530170) (not b!4530434) (not b!4530522) (not b!4529992) (not b!4530824) (not b!4529802) (not d!1398503) (not b!4530169) (not d!1398575) (not b!4530149) (not bm!315817) (not b_lambda!156607) (not b!4530661) (not b_lambda!156571) (not bm!315807) (not b_lambda!156371) (not b!4530800) (not bm!315775) (not b!4530213) (not b!4530094) (not b!4530840) (not b_lambda!156557) (not bm!315834) (not d!1398549) (not b!4530609) (not b!4529970) (not b!4530830) (not d!1398339) (not d!1398041) (not b!4530008) (not b!4530107) (not b!4530949) (not b!4530227) (not b!4530657) (not b!4530838) (not b!4530803) (not b!4529741) (not d!1398601) (not b!4530878) (not b!4530912) (not b!4529832) (not bm!315790) (not d!1398125) (not b_lambda!156611) (not b!4529860) (not d!1398371) (not b!4530958) (not b!4530503) (not d!1398299) (not b!4530268) (not d!1398485) (not b!4530106) (not b!4530105) (not bm!315774) (not d!1398269) (not b!4529964) (not b!4529830) (not b_lambda!156533) (not b!4529731) (not b!4530608) (not d!1398151) (not b!4530907) (not bm!315812) (not d!1398563) (not bm!315825) (not b!4530587) (not bm!315832) (not b_lambda!156589) (not b!4530819) (not d!1398595) (not bs!867103) (not d!1398463) (not b!4530235) (not bm!315729) (not d!1398045) (not b!4530264) (not b!4530520) (not d!1397883) (not b!4530869) (not b!4529727) (not d!1398049) (not b!4530846) (not bs!867064) (not b!4530447) (not b!4530612) (not b!4530777) (not d!1398449) (not bs!867104) (not d!1397843) (not b!4530758) (not b!4530518) (not bm!315709) (not b!4530127) (not b!4530851) (not b!4530956) (not bm!315811) (not b!4530455) (not d!1398029) (not b!4530666) (not d!1397847) (not b!4530192) (not b!4530915) (not b!4530611) (not bm!315793) (not d!1398509) (not b!4530843) (not bm!315796) (not bm!315711) (not b!4530162) (not b_lambda!156613) (not d!1397889) (not d!1398107) (not b!4530275) (not b!4530877) (not d!1398327) (not b!4530918) (not b!4530885) (not b!4530920) (not b!4530588) (not b!4529859) (not b!4530630) (not d!1398087) (not b!4529767) (not d!1398611) (not b!4530166) (not b!4529865) (not d!1398391) (not b!4529749) (not d!1398245) (not b_lambda!156539) (not b!4530589) (not b!4530212) (not b_lambda!156567) (not b_lambda!156565) (not b!4530942) (not b!4530194) (not b!4530281) (not d!1398571) (not b!4530010) (not d!1398613) (not b!4530892) (not b!4530797) (not b!4530504) (not b!4529838) (not bs!867110) (not b!4529796) (not d!1398609) (not b!4530273) (not bm!315748) (not bm!315710) (not b!4529921) (not bm!315772) (not bm!315777) (not bm!315791) (not b_lambda!156591) (not b!4530914) (not b!4529815) (not b!4530247) (not b!4530794) (not b_lambda!156601) (not b!4530731) (not b!4529857) (not b!4530868) (not d!1398243) (not b!4530428) (not b_lambda!156529) (not d!1397819) (not b!4530237) (not b_lambda!156579) (not b!4530276) (not bs!867089) (not bm!315830) (not bm!315782) (not b!4530854) (not b!4530934) (not d!1398347) (not b!4530130) (not b!4530841) (not b!4530204) (not bm!315827) (not b!4530486) (not b!4530583) (not b_lambda!156351) (not d!1398011) (not bm!315803) (not b!4530207) (not d!1398333) (not b!4530073) (not b!4530438) (not bm!315750) (not b!4530210) (not b_lambda!156593) (not b!4530837) (not bm!315783) (not b!4530926) (not bs!867068) (not b!4530249) (not b!4529862) (not b_lambda!156587) (not d!1398105) (not bs!867098) (not b!4530007) (not d!1398543) (not b!4530835) (not d!1398383) (not b!4529817) (not b!4529861) (not bs!867080) (not b!4530552) (not b!4529920) (not b!4530680) (not b_lambda!156581) (not bm!315820) (not b!4530722) (not b!4529798) (not bs!867087) (not bs!867117) (not b!4530910) (not b!4530497) (not b!4529729) (not b_lambda!156599) (not bs!867078) (not b!4530076) (not b_lambda!156577) (not b!4530424) (not d!1397849) (not bs!867091) (not bm!315773) (not d!1398053) (not b!4530818) (not b!4529864) (not b!4530525) (not b!4530887) (not d!1398315) (not b!4530466) (not b!4530499) (not b!4530730) (not b!4529768) (not d!1398275) (not d!1397939) (not b!4529903) (not b!4530894) (not d!1398395) (not b!4529733) (not d!1397941) (not b!4530805) (not bm!315794) (not bs!867066) (not b!4530799) (not b!4530595) (not b!4530198) (not d!1398523) (not b!4530221) (not b!4530931) (not b!4530225) (not bm!315798) (not b!4530928) (not b!4530420) (not d!1397867) (not b!4529901) (not b!4530523) (not bm!315797) (not bs!867115) (not b!4530592) (not d!1398525) (not b!4530119) (not d!1398441) (not b!4530924) (not b!4529852) (not b!4529793) (not b!4529766) (not bs!867093) (not bs!867052) (not bm!315785) (not b!4530219) (not b!4530229) (not b!4530674) (not bs!867084) (not b_lambda!156569) (not b!4530023) (not b!4530607) (not b!4530872) (not d!1397823) (not d!1398539) (not b!4530223) (not b!4529732) (not d!1398599) (not b!4530921) (not b_lambda!156555) (not d!1398117) (not b!4529999) (not b!4530432) (not d!1397881) (not d!1397875) (not bm!315822) (not b!4530940) (not b!4530152) (not d!1398239) (not bm!315781) (not d!1398345) (not b!4530593) (not b!4530738) (not d!1397833) (not b!4530602) (not d!1397841) (not bm!315722) (not bm!315824) (not b!4530953) (not b!4530248) (not bs!867086) (not b!4530839) (not b!4530024) (not bs!867071) (not b_lambda!156585) (not b!4530735) (not d!1398387) (not b!4530521) (not b!4530500) (not b!4530001) (not b!4530600) (not d!1398567) (not bs!867077) (not b_lambda!156575) (not b!4530613) (not b!4530876) (not d!1398607) (not b!4530280) (not d!1398279) (not b!4530884) (not b!4529873) (not d!1398335) (not bs!867076) (not d!1397969) (not b!4530724) (not b!4530201) (not d!1397821) (not b_lambda!156357) (not bm!315835) (not b!4530669) (not b!4530597) (not b!4530880) (not b!4530888) (not d!1398015) (not b!4530449) (not b!4529883) (not bs!867105) (not b!4530780) (not d!1398445) (not b!4530532) (not bm!315826) (not b!4530663) (not b!4529734) (not d!1398089) (not b!4530649) (not d!1397977) (not b_lambda!156519) (not b!4530821) (not b_lambda!156561) (not d!1398537) (not b!4530909) (not b!4530157) (not b!4530807) (not b!4530726) (not d!1398583) (not b!4529935) (not b!4529971) (not b_lambda!156583) (not b!4530937) (not b!4529886) (not b!4530206) (not b!4530823) (not b_lambda!156535) (not b!4530005) (not b!4529879) (not b!4530128) (not b!4530954) (not b!4530278) (not b!4530502) (not b!4530781) (not b!4529936) (not b!4529981) (not d!1398455) (not d!1397905) (not bm!315728) (not b!4530795) (not b!4530586) (not b!4530997) (not d!1398023) (not d!1397915) (not bs!867112) (not b!4530425) (not d!1398101) (not b!4530904) (not bs!867049) (not b!4530427) (not b!4530929) (not b!4530902) (not bs!867102) (not b!4530003) (not b!4530277) (not d!1398585) (not b!4529972) (not b!4529790) (not b!4529913) (not b_lambda!156563) (not d!1398235) (not b!4530871) (not b!4531028) (not d!1397971) (not b!4530833) (not d!1398357) (not d!1398237) (not b!4530088) (not b!4530951) (not b!4530464) (not d!1398281) (not bm!315712) (not d!1398035) (not bm!315828) (not d!1397851) (not d!1398145) (not d!1397885) (not d!1397945) (not b_lambda!156559) (not d!1398231) (not d!1397835) (not b!4530720) (not bm!315819) (not b_lambda!156353) (not b!4530448) (not d!1398337) (not b_lambda!156513) (not d!1397853) (not b!4530101) (not d!1397911) (not d!1398099) (not b_lambda!156595) (not b_lambda!156551) (not b!4529804) (not b_lambda!156545) (not d!1397871) (not b!4530423) (not b!4530122) (not b!4530526) (not b_lambda!156597) (not b_lambda!156603) (not d!1398095) (not b!4530418) (not bs!867108) (not b!4529997) (not b!4530645) (not d!1397825) (not b_lambda!156573) (not b!4529968) (not b!4530943) (not b!4529760) (not b!4530013) (not b!4530682) (not b!4530548) (not b!4530675) (not b!4530238) (not b!4529899) (not b_lambda!156609) (not d!1398075) (not bs!867082) (not d!1398061) (not b!4529915) (not b!4531019) (not d!1398521) (not bm!315836) (not bs!867073) (not b_lambda!156541) (not b!4529876) (not b!4530550) (not d!1397973))
(check-sat)
