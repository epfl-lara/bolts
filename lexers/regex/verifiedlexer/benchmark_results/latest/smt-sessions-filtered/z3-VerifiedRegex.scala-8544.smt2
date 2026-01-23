; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!450236 () Bool)

(assert start!450236)

(declare-fun bs!874678 () Bool)

(declare-fun b!4537329 () Bool)

(assert (= bs!874678 (and b!4537329 start!450236)))

(declare-fun lambda!175576 () Int)

(declare-fun lambda!175575 () Int)

(assert (=> bs!874678 (not (= lambda!175576 lambda!175575))))

(assert (=> b!4537329 true))

(assert (=> b!4537329 true))

(assert (=> b!4537329 true))

(declare-fun b!4537314 () Bool)

(declare-datatypes ((Unit!98070 0))(
  ( (Unit!98071) )
))
(declare-fun e!2827363 () Unit!98070)

(declare-fun Unit!98072 () Unit!98070)

(assert (=> b!4537314 (= e!2827363 Unit!98072)))

(declare-datatypes ((Hashable!5589 0))(
  ( (HashableExt!5588 (__x!31292 Int)) )
))
(declare-fun hashF!1107 () Hashable!5589)

(declare-fun lt!1712223 () Unit!98070)

(declare-datatypes ((K!12125 0))(
  ( (K!12126 (val!17971 Int)) )
))
(declare-fun key!3287 () K!12125)

(declare-datatypes ((V!12371 0))(
  ( (V!12372 (val!17972 Int)) )
))
(declare-datatypes ((tuple2!51210 0))(
  ( (tuple2!51211 (_1!28899 K!12125) (_2!28899 V!12371)) )
))
(declare-datatypes ((List!50862 0))(
  ( (Nil!50738) (Cons!50738 (h!56615 tuple2!51210) (t!357824 List!50862)) )
))
(declare-datatypes ((tuple2!51212 0))(
  ( (tuple2!51213 (_1!28900 (_ BitVec 64)) (_2!28900 List!50862)) )
))
(declare-datatypes ((List!50863 0))(
  ( (Nil!50739) (Cons!50739 (h!56616 tuple2!51212) (t!357825 List!50863)) )
))
(declare-datatypes ((ListLongMap!3027 0))(
  ( (ListLongMap!3028 (toList!4395 List!50863)) )
))
(declare-fun lm!1477 () ListLongMap!3027)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!182 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> b!4537314 (= lt!1712223 (lemmaNotInItsHashBucketThenNotInMap!182 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4537314 false))

(declare-fun e!2827366 () Bool)

(declare-fun b!4537315 () Bool)

(declare-fun tp!1338556 () Bool)

(declare-fun tp_is_empty!28055 () Bool)

(declare-fun tp_is_empty!28053 () Bool)

(assert (=> b!4537315 (= e!2827366 (and tp_is_empty!28053 tp_is_empty!28055 tp!1338556))))

(declare-fun b!4537316 () Bool)

(declare-fun e!2827354 () Bool)

(declare-fun tp!1338557 () Bool)

(assert (=> b!4537316 (= e!2827354 tp!1338557)))

(declare-fun b!4537317 () Bool)

(declare-fun e!2827358 () Bool)

(declare-fun e!2827360 () Bool)

(assert (=> b!4537317 (= e!2827358 e!2827360)))

(declare-fun res!1890528 () Bool)

(assert (=> b!4537317 (=> (not res!1890528) (not e!2827360))))

(declare-datatypes ((ListMap!3657 0))(
  ( (ListMap!3658 (toList!4396 List!50862)) )
))
(declare-fun lt!1712196 () ListMap!3657)

(declare-fun contains!13521 (ListMap!3657 K!12125) Bool)

(assert (=> b!4537317 (= res!1890528 (contains!13521 lt!1712196 key!3287))))

(declare-fun extractMap!1250 (List!50863) ListMap!3657)

(assert (=> b!4537317 (= lt!1712196 (extractMap!1250 (toList!4395 lm!1477)))))

(declare-fun b!4537318 () Bool)

(declare-fun e!2827365 () Bool)

(declare-fun e!2827367 () Bool)

(assert (=> b!4537318 (= e!2827365 e!2827367)))

(declare-fun res!1890529 () Bool)

(assert (=> b!4537318 (=> res!1890529 e!2827367)))

(declare-fun lt!1712216 () Bool)

(assert (=> b!4537318 (= res!1890529 lt!1712216)))

(declare-fun lt!1712225 () Unit!98070)

(assert (=> b!4537318 (= lt!1712225 e!2827363)))

(declare-fun c!774929 () Bool)

(assert (=> b!4537318 (= c!774929 lt!1712216)))

(declare-fun lt!1712217 () List!50862)

(declare-fun containsKey!1862 (List!50862 K!12125) Bool)

(assert (=> b!4537318 (= lt!1712216 (not (containsKey!1862 lt!1712217 key!3287)))))

(declare-fun b!4537319 () Bool)

(declare-fun res!1890519 () Bool)

(declare-fun e!2827356 () Bool)

(assert (=> b!4537319 (=> res!1890519 e!2827356)))

(declare-fun lt!1712211 () ListMap!3657)

(declare-fun eq!651 (ListMap!3657 ListMap!3657) Bool)

(declare-fun -!420 (ListMap!3657 K!12125) ListMap!3657)

(assert (=> b!4537319 (= res!1890519 (not (eq!651 lt!1712211 (-!420 lt!1712196 key!3287))))))

(declare-fun b!4537320 () Bool)

(declare-fun e!2827352 () Bool)

(declare-fun e!2827350 () Bool)

(assert (=> b!4537320 (= e!2827352 e!2827350)))

(declare-fun res!1890535 () Bool)

(assert (=> b!4537320 (=> res!1890535 e!2827350)))

(declare-fun lt!1712203 () Bool)

(assert (=> b!4537320 (= res!1890535 lt!1712203)))

(declare-fun lt!1712198 () Unit!98070)

(declare-fun e!2827361 () Unit!98070)

(assert (=> b!4537320 (= lt!1712198 e!2827361)))

(declare-fun c!774928 () Bool)

(assert (=> b!4537320 (= c!774928 lt!1712203)))

(declare-fun lt!1712204 () tuple2!51212)

(assert (=> b!4537320 (= lt!1712203 (containsKey!1862 (_2!28900 lt!1712204) key!3287))))

(declare-fun b!4537321 () Bool)

(declare-fun res!1890525 () Bool)

(assert (=> b!4537321 (=> (not res!1890525) (not e!2827358))))

(declare-fun allKeysSameHashInMap!1301 (ListLongMap!3027 Hashable!5589) Bool)

(assert (=> b!4537321 (= res!1890525 (allKeysSameHashInMap!1301 lm!1477 hashF!1107))))

(declare-fun b!4537322 () Bool)

(declare-fun Unit!98073 () Unit!98070)

(assert (=> b!4537322 (= e!2827361 Unit!98073)))

(declare-fun b!4537323 () Bool)

(declare-fun res!1890527 () Bool)

(declare-fun e!2827355 () Bool)

(assert (=> b!4537323 (=> res!1890527 e!2827355)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4537323 (= res!1890527 (or ((_ is Nil!50739) (toList!4395 lm!1477)) (= (_1!28900 (h!56616 (toList!4395 lm!1477))) hash!344)))))

(declare-fun b!4537324 () Bool)

(declare-fun res!1890513 () Bool)

(assert (=> b!4537324 (=> res!1890513 e!2827365)))

(declare-fun lt!1712214 () tuple2!51212)

(declare-fun contains!13522 (List!50863 tuple2!51212) Bool)

(assert (=> b!4537324 (= res!1890513 (not (contains!13522 (t!357825 (toList!4395 lm!1477)) lt!1712214)))))

(declare-fun b!4537325 () Bool)

(declare-fun e!2827357 () Bool)

(assert (=> b!4537325 (= e!2827357 (not e!2827355))))

(declare-fun res!1890518 () Bool)

(assert (=> b!4537325 (=> res!1890518 e!2827355)))

(declare-fun newBucket!178 () List!50862)

(declare-fun removePairForKey!821 (List!50862 K!12125) List!50862)

(assert (=> b!4537325 (= res!1890518 (not (= newBucket!178 (removePairForKey!821 lt!1712217 key!3287))))))

(declare-fun lt!1712208 () Unit!98070)

(declare-fun forallContained!2596 (List!50863 Int tuple2!51212) Unit!98070)

(assert (=> b!4537325 (= lt!1712208 (forallContained!2596 (toList!4395 lm!1477) lambda!175575 lt!1712214))))

(assert (=> b!4537325 (contains!13522 (toList!4395 lm!1477) lt!1712214)))

(assert (=> b!4537325 (= lt!1712214 (tuple2!51213 hash!344 lt!1712217))))

(declare-fun lt!1712224 () Unit!98070)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!706 (List!50863 (_ BitVec 64) List!50862) Unit!98070)

(assert (=> b!4537325 (= lt!1712224 (lemmaGetValueByKeyImpliesContainsTuple!706 (toList!4395 lm!1477) hash!344 lt!1712217))))

(declare-fun apply!11931 (ListLongMap!3027 (_ BitVec 64)) List!50862)

(assert (=> b!4537325 (= lt!1712217 (apply!11931 lm!1477 hash!344))))

(declare-fun lt!1712199 () (_ BitVec 64))

(declare-fun contains!13523 (ListLongMap!3027 (_ BitVec 64)) Bool)

(assert (=> b!4537325 (contains!13523 lm!1477 lt!1712199)))

(declare-fun lt!1712205 () Unit!98070)

(declare-fun lemmaInGenMapThenLongMapContainsHash!268 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> b!4537325 (= lt!1712205 (lemmaInGenMapThenLongMapContainsHash!268 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4537326 () Bool)

(declare-fun res!1890515 () Bool)

(declare-fun e!2827364 () Bool)

(assert (=> b!4537326 (=> res!1890515 e!2827364)))

(assert (=> b!4537326 (= res!1890515 (bvsge (_1!28900 lt!1712204) hash!344))))

(declare-fun b!4537327 () Bool)

(declare-fun e!2827359 () Bool)

(assert (=> b!4537327 (= e!2827359 e!2827364)))

(declare-fun res!1890524 () Bool)

(assert (=> b!4537327 (=> res!1890524 e!2827364)))

(declare-fun lt!1712195 () ListMap!3657)

(assert (=> b!4537327 (= res!1890524 (not (eq!651 lt!1712195 lt!1712196)))))

(declare-fun lt!1712220 () ListLongMap!3027)

(declare-fun +!1596 (ListLongMap!3027 tuple2!51212) ListLongMap!3027)

(assert (=> b!4537327 (= lt!1712195 (extractMap!1250 (toList!4395 (+!1596 lt!1712220 lt!1712204))))))

(declare-fun head!9470 (ListLongMap!3027) tuple2!51212)

(assert (=> b!4537327 (= lt!1712204 (head!9470 lm!1477))))

(declare-fun lt!1712197 () ListMap!3657)

(declare-fun lt!1712206 () ListMap!3657)

(assert (=> b!4537327 (eq!651 lt!1712197 lt!1712206)))

(declare-fun lt!1712218 () ListMap!3657)

(assert (=> b!4537327 (= lt!1712206 (-!420 lt!1712218 key!3287))))

(declare-fun lt!1712207 () ListLongMap!3027)

(assert (=> b!4537327 (= lt!1712197 (extractMap!1250 (toList!4395 lt!1712207)))))

(declare-fun lt!1712226 () tuple2!51212)

(assert (=> b!4537327 (= lt!1712207 (+!1596 lt!1712220 lt!1712226))))

(assert (=> b!4537327 (= lt!1712226 (tuple2!51213 hash!344 newBucket!178))))

(declare-fun lt!1712227 () Unit!98070)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!179 (ListLongMap!3027 (_ BitVec 64) List!50862 K!12125 Hashable!5589) Unit!98070)

(assert (=> b!4537327 (= lt!1712227 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!179 lt!1712220 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4537328 () Bool)

(declare-fun e!2827349 () Bool)

(assert (=> b!4537328 (= e!2827364 e!2827349)))

(declare-fun res!1890520 () Bool)

(assert (=> b!4537328 (=> res!1890520 e!2827349)))

(declare-fun lt!1712212 () ListLongMap!3027)

(assert (=> b!4537328 (= res!1890520 (not (= lt!1712212 (+!1596 lm!1477 lt!1712226))))))

(assert (=> b!4537328 (= lt!1712212 (+!1596 lt!1712207 lt!1712204))))

(declare-fun Unit!98074 () Unit!98070)

(assert (=> b!4537329 (= e!2827361 Unit!98074)))

(assert (=> b!4537329 (not (= hash!344 (_1!28900 lt!1712204)))))

(declare-datatypes ((Option!11189 0))(
  ( (None!11188) (Some!11188 (v!44872 tuple2!51210)) )
))
(declare-fun lt!1712201 () Option!11189)

(declare-fun getPair!210 (List!50862 K!12125) Option!11189)

(assert (=> b!4537329 (= lt!1712201 (getPair!210 (_2!28900 lt!1712204) key!3287))))

(declare-fun lt!1712213 () Unit!98070)

(assert (=> b!4537329 (= lt!1712213 (forallContained!2596 (toList!4395 lm!1477) lambda!175576 (h!56616 (toList!4395 lm!1477))))))

(declare-fun lambda!175577 () Int)

(declare-fun lt!1712228 () Unit!98070)

(declare-fun forallContained!2597 (List!50862 Int tuple2!51210) Unit!98070)

(declare-fun get!16673 (Option!11189) tuple2!51210)

(assert (=> b!4537329 (= lt!1712228 (forallContained!2597 (_2!28900 (h!56616 (toList!4395 lm!1477))) lambda!175577 (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201)))))))

(assert (=> b!4537329 false))

(declare-fun b!4537330 () Bool)

(declare-fun res!1890526 () Bool)

(assert (=> b!4537330 (=> res!1890526 e!2827364)))

(assert (=> b!4537330 (= res!1890526 (not (eq!651 lt!1712196 lt!1712195)))))

(declare-fun b!4537331 () Bool)

(declare-fun res!1890516 () Bool)

(assert (=> b!4537331 (=> res!1890516 e!2827355)))

(declare-fun noDuplicateKeys!1194 (List!50862) Bool)

(assert (=> b!4537331 (= res!1890516 (not (noDuplicateKeys!1194 newBucket!178)))))

(declare-fun b!4537332 () Bool)

(declare-fun res!1890533 () Bool)

(assert (=> b!4537332 (=> (not res!1890533) (not e!2827357))))

(declare-fun allKeysSameHash!1048 (List!50862 (_ BitVec 64) Hashable!5589) Bool)

(assert (=> b!4537332 (= res!1890533 (allKeysSameHash!1048 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4537333 () Bool)

(assert (=> b!4537333 (= e!2827355 e!2827365)))

(declare-fun res!1890517 () Bool)

(assert (=> b!4537333 (=> res!1890517 e!2827365)))

(assert (=> b!4537333 (= res!1890517 (not (contains!13523 lt!1712220 hash!344)))))

(declare-fun tail!7792 (ListLongMap!3027) ListLongMap!3027)

(assert (=> b!4537333 (= lt!1712220 (tail!7792 lm!1477))))

(declare-fun b!4537334 () Bool)

(declare-fun e!2827351 () Bool)

(assert (=> b!4537334 (= e!2827349 e!2827351)))

(declare-fun res!1890523 () Bool)

(assert (=> b!4537334 (=> res!1890523 e!2827351)))

(declare-fun lt!1712200 () ListMap!3657)

(declare-fun lt!1712222 () ListMap!3657)

(assert (=> b!4537334 (= res!1890523 (not (eq!651 lt!1712200 lt!1712222)))))

(declare-fun addToMapMapFromBucket!721 (List!50862 ListMap!3657) ListMap!3657)

(assert (=> b!4537334 (= lt!1712222 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712197))))

(assert (=> b!4537334 (= lt!1712200 (extractMap!1250 (toList!4395 lt!1712212)))))

(declare-fun b!4537335 () Bool)

(declare-fun e!2827362 () Bool)

(assert (=> b!4537335 (= e!2827351 e!2827362)))

(declare-fun res!1890532 () Bool)

(assert (=> b!4537335 (=> res!1890532 e!2827362)))

(assert (=> b!4537335 (= res!1890532 (not (eq!651 lt!1712200 lt!1712211)))))

(assert (=> b!4537335 (eq!651 lt!1712222 lt!1712211)))

(assert (=> b!4537335 (= lt!1712211 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712206))))

(declare-fun lt!1712209 () Unit!98070)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!70 (ListMap!3657 ListMap!3657 List!50862) Unit!98070)

(assert (=> b!4537335 (= lt!1712209 (lemmaAddToMapFromBucketPreservesEquivalence!70 lt!1712197 lt!1712206 (_2!28900 lt!1712204)))))

(declare-fun b!4537336 () Bool)

(declare-fun res!1890534 () Bool)

(assert (=> b!4537336 (=> res!1890534 e!2827349)))

(assert (=> b!4537336 (= res!1890534 (not (= (head!9470 lt!1712212) lt!1712204)))))

(declare-fun b!4537337 () Bool)

(assert (=> b!4537337 (= e!2827362 e!2827352)))

(declare-fun res!1890530 () Bool)

(assert (=> b!4537337 (=> res!1890530 e!2827352)))

(assert (=> b!4537337 (= res!1890530 (not (noDuplicateKeys!1194 (_2!28900 lt!1712204))))))

(declare-fun lt!1712202 () Unit!98070)

(assert (=> b!4537337 (= lt!1712202 (forallContained!2596 (toList!4395 lm!1477) lambda!175575 (h!56616 (toList!4395 lm!1477))))))

(declare-fun b!4537338 () Bool)

(assert (=> b!4537338 (= e!2827360 e!2827357)))

(declare-fun res!1890531 () Bool)

(assert (=> b!4537338 (=> (not res!1890531) (not e!2827357))))

(assert (=> b!4537338 (= res!1890531 (= lt!1712199 hash!344))))

(declare-fun hash!2903 (Hashable!5589 K!12125) (_ BitVec 64))

(assert (=> b!4537338 (= lt!1712199 (hash!2903 hashF!1107 key!3287))))

(declare-fun b!4537339 () Bool)

(assert (=> b!4537339 (= e!2827350 e!2827356)))

(declare-fun res!1890521 () Bool)

(assert (=> b!4537339 (=> res!1890521 e!2827356)))

(declare-fun lt!1712221 () ListMap!3657)

(assert (=> b!4537339 (= res!1890521 (not (eq!651 lt!1712211 lt!1712221)))))

(assert (=> b!4537339 (= lt!1712211 lt!1712221)))

(assert (=> b!4537339 (= lt!1712221 (-!420 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712218) key!3287))))

(declare-fun lt!1712215 () Unit!98070)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!18 (ListMap!3657 K!12125 List!50862) Unit!98070)

(assert (=> b!4537339 (= lt!1712215 (lemmaAddToMapFromBucketMinusKeyIsCommutative!18 lt!1712218 key!3287 (_2!28900 lt!1712204)))))

(declare-fun b!4537340 () Bool)

(declare-fun Unit!98075 () Unit!98070)

(assert (=> b!4537340 (= e!2827363 Unit!98075)))

(declare-fun b!4537341 () Bool)

(declare-fun e!2827353 () Bool)

(assert (=> b!4537341 (= e!2827367 e!2827353)))

(declare-fun res!1890514 () Bool)

(assert (=> b!4537341 (=> res!1890514 e!2827353)))

(declare-fun containsKeyBiggerList!174 (List!50863 K!12125) Bool)

(assert (=> b!4537341 (= res!1890514 (not (containsKeyBiggerList!174 (t!357825 (toList!4395 lm!1477)) key!3287)))))

(assert (=> b!4537341 (containsKeyBiggerList!174 (toList!4395 lt!1712220) key!3287)))

(declare-fun lt!1712210 () Unit!98070)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!110 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> b!4537341 (= lt!1712210 (lemmaInLongMapThenContainsKeyBiggerList!110 lt!1712220 key!3287 hashF!1107))))

(declare-fun b!4537342 () Bool)

(declare-fun res!1890536 () Bool)

(assert (=> b!4537342 (=> res!1890536 e!2827365)))

(assert (=> b!4537342 (= res!1890536 (not (= (apply!11931 lt!1712220 hash!344) lt!1712217)))))

(declare-fun b!4537343 () Bool)

(declare-fun forall!10335 (List!50863 Int) Bool)

(assert (=> b!4537343 (= e!2827356 (forall!10335 (toList!4395 lt!1712212) lambda!175575))))

(declare-fun res!1890522 () Bool)

(assert (=> start!450236 (=> (not res!1890522) (not e!2827358))))

(assert (=> start!450236 (= res!1890522 (forall!10335 (toList!4395 lm!1477) lambda!175575))))

(assert (=> start!450236 e!2827358))

(assert (=> start!450236 true))

(declare-fun inv!66309 (ListLongMap!3027) Bool)

(assert (=> start!450236 (and (inv!66309 lm!1477) e!2827354)))

(assert (=> start!450236 tp_is_empty!28053))

(assert (=> start!450236 e!2827366))

(declare-fun b!4537344 () Bool)

(assert (=> b!4537344 (= e!2827353 e!2827359)))

(declare-fun res!1890512 () Bool)

(assert (=> b!4537344 (=> res!1890512 e!2827359)))

(assert (=> b!4537344 (= res!1890512 (not (contains!13521 (extractMap!1250 (t!357825 (toList!4395 lm!1477))) key!3287)))))

(assert (=> b!4537344 (contains!13521 lt!1712218 key!3287)))

(assert (=> b!4537344 (= lt!1712218 (extractMap!1250 (toList!4395 lt!1712220)))))

(declare-fun lt!1712219 () Unit!98070)

(declare-fun lemmaListContainsThenExtractedMapContains!164 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> b!4537344 (= lt!1712219 (lemmaListContainsThenExtractedMapContains!164 lt!1712220 key!3287 hashF!1107))))

(assert (= (and start!450236 res!1890522) b!4537321))

(assert (= (and b!4537321 res!1890525) b!4537317))

(assert (= (and b!4537317 res!1890528) b!4537338))

(assert (= (and b!4537338 res!1890531) b!4537332))

(assert (= (and b!4537332 res!1890533) b!4537325))

(assert (= (and b!4537325 (not res!1890518)) b!4537331))

(assert (= (and b!4537331 (not res!1890516)) b!4537323))

(assert (= (and b!4537323 (not res!1890527)) b!4537333))

(assert (= (and b!4537333 (not res!1890517)) b!4537342))

(assert (= (and b!4537342 (not res!1890536)) b!4537324))

(assert (= (and b!4537324 (not res!1890513)) b!4537318))

(assert (= (and b!4537318 c!774929) b!4537314))

(assert (= (and b!4537318 (not c!774929)) b!4537340))

(assert (= (and b!4537318 (not res!1890529)) b!4537341))

(assert (= (and b!4537341 (not res!1890514)) b!4537344))

(assert (= (and b!4537344 (not res!1890512)) b!4537327))

(assert (= (and b!4537327 (not res!1890524)) b!4537330))

(assert (= (and b!4537330 (not res!1890526)) b!4537326))

(assert (= (and b!4537326 (not res!1890515)) b!4537328))

(assert (= (and b!4537328 (not res!1890520)) b!4537336))

(assert (= (and b!4537336 (not res!1890534)) b!4537334))

(assert (= (and b!4537334 (not res!1890523)) b!4537335))

(assert (= (and b!4537335 (not res!1890532)) b!4537337))

(assert (= (and b!4537337 (not res!1890530)) b!4537320))

(assert (= (and b!4537320 c!774928) b!4537329))

(assert (= (and b!4537320 (not c!774928)) b!4537322))

(assert (= (and b!4537320 (not res!1890535)) b!4537339))

(assert (= (and b!4537339 (not res!1890521)) b!4537319))

(assert (= (and b!4537319 (not res!1890519)) b!4537343))

(assert (= start!450236 b!4537316))

(assert (= (and start!450236 ((_ is Cons!50738) newBucket!178)) b!4537315))

(declare-fun m!5301025 () Bool)

(assert (=> b!4537338 m!5301025))

(declare-fun m!5301027 () Bool)

(assert (=> b!4537337 m!5301027))

(declare-fun m!5301029 () Bool)

(assert (=> b!4537337 m!5301029))

(declare-fun m!5301031 () Bool)

(assert (=> b!4537321 m!5301031))

(declare-fun m!5301033 () Bool)

(assert (=> b!4537342 m!5301033))

(declare-fun m!5301035 () Bool)

(assert (=> b!4537335 m!5301035))

(declare-fun m!5301037 () Bool)

(assert (=> b!4537335 m!5301037))

(declare-fun m!5301039 () Bool)

(assert (=> b!4537335 m!5301039))

(declare-fun m!5301041 () Bool)

(assert (=> b!4537335 m!5301041))

(declare-fun m!5301043 () Bool)

(assert (=> b!4537314 m!5301043))

(declare-fun m!5301045 () Bool)

(assert (=> b!4537325 m!5301045))

(declare-fun m!5301047 () Bool)

(assert (=> b!4537325 m!5301047))

(declare-fun m!5301049 () Bool)

(assert (=> b!4537325 m!5301049))

(declare-fun m!5301051 () Bool)

(assert (=> b!4537325 m!5301051))

(declare-fun m!5301053 () Bool)

(assert (=> b!4537325 m!5301053))

(declare-fun m!5301055 () Bool)

(assert (=> b!4537325 m!5301055))

(declare-fun m!5301057 () Bool)

(assert (=> b!4537325 m!5301057))

(declare-fun m!5301059 () Bool)

(assert (=> b!4537324 m!5301059))

(declare-fun m!5301061 () Bool)

(assert (=> b!4537319 m!5301061))

(assert (=> b!4537319 m!5301061))

(declare-fun m!5301063 () Bool)

(assert (=> b!4537319 m!5301063))

(declare-fun m!5301065 () Bool)

(assert (=> b!4537332 m!5301065))

(declare-fun m!5301067 () Bool)

(assert (=> b!4537331 m!5301067))

(declare-fun m!5301069 () Bool)

(assert (=> b!4537320 m!5301069))

(declare-fun m!5301071 () Bool)

(assert (=> b!4537318 m!5301071))

(declare-fun m!5301073 () Bool)

(assert (=> b!4537329 m!5301073))

(declare-fun m!5301075 () Bool)

(assert (=> b!4537329 m!5301075))

(declare-fun m!5301077 () Bool)

(assert (=> b!4537329 m!5301077))

(declare-fun m!5301079 () Bool)

(assert (=> b!4537329 m!5301079))

(declare-fun m!5301081 () Bool)

(assert (=> b!4537317 m!5301081))

(declare-fun m!5301083 () Bool)

(assert (=> b!4537317 m!5301083))

(declare-fun m!5301085 () Bool)

(assert (=> b!4537336 m!5301085))

(declare-fun m!5301087 () Bool)

(assert (=> b!4537341 m!5301087))

(declare-fun m!5301089 () Bool)

(assert (=> b!4537341 m!5301089))

(declare-fun m!5301091 () Bool)

(assert (=> b!4537341 m!5301091))

(declare-fun m!5301093 () Bool)

(assert (=> b!4537327 m!5301093))

(declare-fun m!5301095 () Bool)

(assert (=> b!4537327 m!5301095))

(declare-fun m!5301097 () Bool)

(assert (=> b!4537327 m!5301097))

(declare-fun m!5301099 () Bool)

(assert (=> b!4537327 m!5301099))

(declare-fun m!5301101 () Bool)

(assert (=> b!4537327 m!5301101))

(declare-fun m!5301103 () Bool)

(assert (=> b!4537327 m!5301103))

(declare-fun m!5301105 () Bool)

(assert (=> b!4537327 m!5301105))

(declare-fun m!5301107 () Bool)

(assert (=> b!4537327 m!5301107))

(declare-fun m!5301109 () Bool)

(assert (=> b!4537327 m!5301109))

(declare-fun m!5301111 () Bool)

(assert (=> b!4537334 m!5301111))

(declare-fun m!5301113 () Bool)

(assert (=> b!4537334 m!5301113))

(declare-fun m!5301115 () Bool)

(assert (=> b!4537334 m!5301115))

(declare-fun m!5301117 () Bool)

(assert (=> start!450236 m!5301117))

(declare-fun m!5301119 () Bool)

(assert (=> start!450236 m!5301119))

(declare-fun m!5301121 () Bool)

(assert (=> b!4537339 m!5301121))

(declare-fun m!5301123 () Bool)

(assert (=> b!4537339 m!5301123))

(assert (=> b!4537339 m!5301123))

(declare-fun m!5301125 () Bool)

(assert (=> b!4537339 m!5301125))

(declare-fun m!5301127 () Bool)

(assert (=> b!4537339 m!5301127))

(declare-fun m!5301129 () Bool)

(assert (=> b!4537343 m!5301129))

(declare-fun m!5301131 () Bool)

(assert (=> b!4537344 m!5301131))

(declare-fun m!5301133 () Bool)

(assert (=> b!4537344 m!5301133))

(declare-fun m!5301135 () Bool)

(assert (=> b!4537344 m!5301135))

(declare-fun m!5301137 () Bool)

(assert (=> b!4537344 m!5301137))

(assert (=> b!4537344 m!5301135))

(declare-fun m!5301139 () Bool)

(assert (=> b!4537344 m!5301139))

(declare-fun m!5301141 () Bool)

(assert (=> b!4537330 m!5301141))

(declare-fun m!5301143 () Bool)

(assert (=> b!4537333 m!5301143))

(declare-fun m!5301145 () Bool)

(assert (=> b!4537333 m!5301145))

(declare-fun m!5301147 () Bool)

(assert (=> b!4537328 m!5301147))

(declare-fun m!5301149 () Bool)

(assert (=> b!4537328 m!5301149))

(check-sat (not b!4537324) (not b!4537332) (not b!4537325) (not b!4537333) (not b!4537317) (not b!4537331) (not b!4537336) (not b!4537341) (not b!4537329) (not b!4537315) (not start!450236) (not b!4537339) tp_is_empty!28055 (not b!4537338) (not b!4537334) (not b!4537330) (not b!4537318) (not b!4537344) (not b!4537314) (not b!4537335) (not b!4537337) (not b!4537320) (not b!4537342) (not b!4537327) (not b!4537321) tp_is_empty!28053 (not b!4537316) (not b!4537328) (not b!4537319) (not b!4537343))
(check-sat)
(get-model)

(declare-fun d!1401951 () Bool)

(declare-fun e!2827373 () Bool)

(assert (=> d!1401951 e!2827373))

(declare-fun res!1890539 () Bool)

(assert (=> d!1401951 (=> res!1890539 e!2827373)))

(declare-fun lt!1712238 () Bool)

(assert (=> d!1401951 (= res!1890539 (not lt!1712238))))

(declare-fun lt!1712237 () Bool)

(assert (=> d!1401951 (= lt!1712238 lt!1712237)))

(declare-fun lt!1712240 () Unit!98070)

(declare-fun e!2827372 () Unit!98070)

(assert (=> d!1401951 (= lt!1712240 e!2827372)))

(declare-fun c!774932 () Bool)

(assert (=> d!1401951 (= c!774932 lt!1712237)))

(declare-fun containsKey!1863 (List!50863 (_ BitVec 64)) Bool)

(assert (=> d!1401951 (= lt!1712237 (containsKey!1863 (toList!4395 lt!1712220) hash!344))))

(assert (=> d!1401951 (= (contains!13523 lt!1712220 hash!344) lt!1712238)))

(declare-fun b!4537357 () Bool)

(declare-fun lt!1712239 () Unit!98070)

(assert (=> b!4537357 (= e!2827372 lt!1712239)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1042 (List!50863 (_ BitVec 64)) Unit!98070)

(assert (=> b!4537357 (= lt!1712239 (lemmaContainsKeyImpliesGetValueByKeyDefined!1042 (toList!4395 lt!1712220) hash!344))))

(declare-datatypes ((Option!11190 0))(
  ( (None!11189) (Some!11189 (v!44877 List!50862)) )
))
(declare-fun isDefined!8467 (Option!11190) Bool)

(declare-fun getValueByKey!1138 (List!50863 (_ BitVec 64)) Option!11190)

(assert (=> b!4537357 (isDefined!8467 (getValueByKey!1138 (toList!4395 lt!1712220) hash!344))))

(declare-fun b!4537358 () Bool)

(declare-fun Unit!98076 () Unit!98070)

(assert (=> b!4537358 (= e!2827372 Unit!98076)))

(declare-fun b!4537359 () Bool)

(assert (=> b!4537359 (= e!2827373 (isDefined!8467 (getValueByKey!1138 (toList!4395 lt!1712220) hash!344)))))

(assert (= (and d!1401951 c!774932) b!4537357))

(assert (= (and d!1401951 (not c!774932)) b!4537358))

(assert (= (and d!1401951 (not res!1890539)) b!4537359))

(declare-fun m!5301151 () Bool)

(assert (=> d!1401951 m!5301151))

(declare-fun m!5301153 () Bool)

(assert (=> b!4537357 m!5301153))

(declare-fun m!5301155 () Bool)

(assert (=> b!4537357 m!5301155))

(assert (=> b!4537357 m!5301155))

(declare-fun m!5301157 () Bool)

(assert (=> b!4537357 m!5301157))

(assert (=> b!4537359 m!5301155))

(assert (=> b!4537359 m!5301155))

(assert (=> b!4537359 m!5301157))

(assert (=> b!4537333 d!1401951))

(declare-fun d!1401953 () Bool)

(declare-fun tail!7793 (List!50863) List!50863)

(assert (=> d!1401953 (= (tail!7792 lm!1477) (ListLongMap!3028 (tail!7793 (toList!4395 lm!1477))))))

(declare-fun bs!874679 () Bool)

(assert (= bs!874679 d!1401953))

(declare-fun m!5301159 () Bool)

(assert (=> bs!874679 m!5301159))

(assert (=> b!4537333 d!1401953))

(declare-fun bs!874680 () Bool)

(declare-fun d!1401955 () Bool)

(assert (= bs!874680 (and d!1401955 b!4537329)))

(declare-fun lambda!175580 () Int)

(assert (=> bs!874680 (= (= hash!344 (_1!28900 (h!56616 (toList!4395 lm!1477)))) (= lambda!175580 lambda!175577))))

(assert (=> d!1401955 true))

(assert (=> d!1401955 true))

(declare-fun forall!10336 (List!50862 Int) Bool)

(assert (=> d!1401955 (= (allKeysSameHash!1048 newBucket!178 hash!344 hashF!1107) (forall!10336 newBucket!178 lambda!175580))))

(declare-fun bs!874681 () Bool)

(assert (= bs!874681 d!1401955))

(declare-fun m!5301161 () Bool)

(assert (=> bs!874681 m!5301161))

(assert (=> b!4537332 d!1401955))

(declare-fun d!1401957 () Bool)

(declare-fun res!1890544 () Bool)

(declare-fun e!2827378 () Bool)

(assert (=> d!1401957 (=> res!1890544 e!2827378)))

(assert (=> d!1401957 (= res!1890544 (not ((_ is Cons!50738) newBucket!178)))))

(assert (=> d!1401957 (= (noDuplicateKeys!1194 newBucket!178) e!2827378)))

(declare-fun b!4537366 () Bool)

(declare-fun e!2827379 () Bool)

(assert (=> b!4537366 (= e!2827378 e!2827379)))

(declare-fun res!1890545 () Bool)

(assert (=> b!4537366 (=> (not res!1890545) (not e!2827379))))

(assert (=> b!4537366 (= res!1890545 (not (containsKey!1862 (t!357824 newBucket!178) (_1!28899 (h!56615 newBucket!178)))))))

(declare-fun b!4537367 () Bool)

(assert (=> b!4537367 (= e!2827379 (noDuplicateKeys!1194 (t!357824 newBucket!178)))))

(assert (= (and d!1401957 (not res!1890544)) b!4537366))

(assert (= (and b!4537366 res!1890545) b!4537367))

(declare-fun m!5301163 () Bool)

(assert (=> b!4537366 m!5301163))

(declare-fun m!5301165 () Bool)

(assert (=> b!4537367 m!5301165))

(assert (=> b!4537331 d!1401957))

(declare-fun d!1401959 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8427 (List!50862) (InoxSet tuple2!51210))

(assert (=> d!1401959 (= (eq!651 lt!1712196 lt!1712195) (= (content!8427 (toList!4396 lt!1712196)) (content!8427 (toList!4396 lt!1712195))))))

(declare-fun bs!874682 () Bool)

(assert (= bs!874682 d!1401959))

(declare-fun m!5301167 () Bool)

(assert (=> bs!874682 m!5301167))

(declare-fun m!5301169 () Bool)

(assert (=> bs!874682 m!5301169))

(assert (=> b!4537330 d!1401959))

(declare-fun d!1401961 () Bool)

(declare-fun res!1890550 () Bool)

(declare-fun e!2827384 () Bool)

(assert (=> d!1401961 (=> res!1890550 e!2827384)))

(assert (=> d!1401961 (= res!1890550 ((_ is Nil!50739) (toList!4395 lm!1477)))))

(assert (=> d!1401961 (= (forall!10335 (toList!4395 lm!1477) lambda!175575) e!2827384)))

(declare-fun b!4537372 () Bool)

(declare-fun e!2827385 () Bool)

(assert (=> b!4537372 (= e!2827384 e!2827385)))

(declare-fun res!1890551 () Bool)

(assert (=> b!4537372 (=> (not res!1890551) (not e!2827385))))

(declare-fun dynLambda!21206 (Int tuple2!51212) Bool)

(assert (=> b!4537372 (= res!1890551 (dynLambda!21206 lambda!175575 (h!56616 (toList!4395 lm!1477))))))

(declare-fun b!4537373 () Bool)

(assert (=> b!4537373 (= e!2827385 (forall!10335 (t!357825 (toList!4395 lm!1477)) lambda!175575))))

(assert (= (and d!1401961 (not res!1890550)) b!4537372))

(assert (= (and b!4537372 res!1890551) b!4537373))

(declare-fun b_lambda!157611 () Bool)

(assert (=> (not b_lambda!157611) (not b!4537372)))

(declare-fun m!5301171 () Bool)

(assert (=> b!4537372 m!5301171))

(declare-fun m!5301173 () Bool)

(assert (=> b!4537373 m!5301173))

(assert (=> start!450236 d!1401961))

(declare-fun d!1401963 () Bool)

(declare-fun isStrictlySorted!455 (List!50863) Bool)

(assert (=> d!1401963 (= (inv!66309 lm!1477) (isStrictlySorted!455 (toList!4395 lm!1477)))))

(declare-fun bs!874683 () Bool)

(assert (= bs!874683 d!1401963))

(declare-fun m!5301175 () Bool)

(assert (=> bs!874683 m!5301175))

(assert (=> start!450236 d!1401963))

(declare-fun b!4537390 () Bool)

(declare-fun e!2827400 () Bool)

(assert (=> b!4537390 (= e!2827400 (not (containsKey!1862 (_2!28900 lt!1712204) key!3287)))))

(declare-fun b!4537392 () Bool)

(declare-fun e!2827397 () Bool)

(declare-fun lt!1712243 () Option!11189)

(declare-fun contains!13524 (List!50862 tuple2!51210) Bool)

(assert (=> b!4537392 (= e!2827397 (contains!13524 (_2!28900 lt!1712204) (get!16673 lt!1712243)))))

(declare-fun b!4537393 () Bool)

(declare-fun e!2827399 () Option!11189)

(declare-fun e!2827398 () Option!11189)

(assert (=> b!4537393 (= e!2827399 e!2827398)))

(declare-fun c!774938 () Bool)

(assert (=> b!4537393 (= c!774938 ((_ is Cons!50738) (_2!28900 lt!1712204)))))

(declare-fun b!4537394 () Bool)

(declare-fun e!2827396 () Bool)

(assert (=> b!4537394 (= e!2827396 e!2827397)))

(declare-fun res!1890562 () Bool)

(assert (=> b!4537394 (=> (not res!1890562) (not e!2827397))))

(declare-fun isDefined!8469 (Option!11189) Bool)

(assert (=> b!4537394 (= res!1890562 (isDefined!8469 lt!1712243))))

(declare-fun b!4537395 () Bool)

(declare-fun res!1890561 () Bool)

(assert (=> b!4537395 (=> (not res!1890561) (not e!2827397))))

(assert (=> b!4537395 (= res!1890561 (= (_1!28899 (get!16673 lt!1712243)) key!3287))))

(declare-fun b!4537391 () Bool)

(assert (=> b!4537391 (= e!2827398 (getPair!210 (t!357824 (_2!28900 lt!1712204)) key!3287))))

(declare-fun d!1401965 () Bool)

(assert (=> d!1401965 e!2827396))

(declare-fun res!1890560 () Bool)

(assert (=> d!1401965 (=> res!1890560 e!2827396)))

(assert (=> d!1401965 (= res!1890560 e!2827400)))

(declare-fun res!1890563 () Bool)

(assert (=> d!1401965 (=> (not res!1890563) (not e!2827400))))

(declare-fun isEmpty!28740 (Option!11189) Bool)

(assert (=> d!1401965 (= res!1890563 (isEmpty!28740 lt!1712243))))

(assert (=> d!1401965 (= lt!1712243 e!2827399)))

(declare-fun c!774937 () Bool)

(assert (=> d!1401965 (= c!774937 (and ((_ is Cons!50738) (_2!28900 lt!1712204)) (= (_1!28899 (h!56615 (_2!28900 lt!1712204))) key!3287)))))

(assert (=> d!1401965 (noDuplicateKeys!1194 (_2!28900 lt!1712204))))

(assert (=> d!1401965 (= (getPair!210 (_2!28900 lt!1712204) key!3287) lt!1712243)))

(declare-fun b!4537396 () Bool)

(assert (=> b!4537396 (= e!2827399 (Some!11188 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun b!4537397 () Bool)

(assert (=> b!4537397 (= e!2827398 None!11188)))

(assert (= (and d!1401965 c!774937) b!4537396))

(assert (= (and d!1401965 (not c!774937)) b!4537393))

(assert (= (and b!4537393 c!774938) b!4537391))

(assert (= (and b!4537393 (not c!774938)) b!4537397))

(assert (= (and d!1401965 res!1890563) b!4537390))

(assert (= (and d!1401965 (not res!1890560)) b!4537394))

(assert (= (and b!4537394 res!1890562) b!4537395))

(assert (= (and b!4537395 res!1890561) b!4537392))

(declare-fun m!5301177 () Bool)

(assert (=> b!4537392 m!5301177))

(assert (=> b!4537392 m!5301177))

(declare-fun m!5301179 () Bool)

(assert (=> b!4537392 m!5301179))

(declare-fun m!5301181 () Bool)

(assert (=> b!4537394 m!5301181))

(declare-fun m!5301183 () Bool)

(assert (=> d!1401965 m!5301183))

(assert (=> d!1401965 m!5301027))

(assert (=> b!4537390 m!5301069))

(declare-fun m!5301185 () Bool)

(assert (=> b!4537391 m!5301185))

(assert (=> b!4537395 m!5301177))

(assert (=> b!4537329 d!1401965))

(declare-fun d!1401969 () Bool)

(assert (=> d!1401969 (dynLambda!21206 lambda!175576 (h!56616 (toList!4395 lm!1477)))))

(declare-fun lt!1712249 () Unit!98070)

(declare-fun choose!29847 (List!50863 Int tuple2!51212) Unit!98070)

(assert (=> d!1401969 (= lt!1712249 (choose!29847 (toList!4395 lm!1477) lambda!175576 (h!56616 (toList!4395 lm!1477))))))

(declare-fun e!2827409 () Bool)

(assert (=> d!1401969 e!2827409))

(declare-fun res!1890572 () Bool)

(assert (=> d!1401969 (=> (not res!1890572) (not e!2827409))))

(assert (=> d!1401969 (= res!1890572 (forall!10335 (toList!4395 lm!1477) lambda!175576))))

(assert (=> d!1401969 (= (forallContained!2596 (toList!4395 lm!1477) lambda!175576 (h!56616 (toList!4395 lm!1477))) lt!1712249)))

(declare-fun b!4537406 () Bool)

(assert (=> b!4537406 (= e!2827409 (contains!13522 (toList!4395 lm!1477) (h!56616 (toList!4395 lm!1477))))))

(assert (= (and d!1401969 res!1890572) b!4537406))

(declare-fun b_lambda!157613 () Bool)

(assert (=> (not b_lambda!157613) (not d!1401969)))

(declare-fun m!5301193 () Bool)

(assert (=> d!1401969 m!5301193))

(declare-fun m!5301195 () Bool)

(assert (=> d!1401969 m!5301195))

(declare-fun m!5301197 () Bool)

(assert (=> d!1401969 m!5301197))

(declare-fun m!5301199 () Bool)

(assert (=> b!4537406 m!5301199))

(assert (=> b!4537329 d!1401969))

(declare-fun d!1401973 () Bool)

(declare-fun dynLambda!21208 (Int tuple2!51210) Bool)

(assert (=> d!1401973 (dynLambda!21208 lambda!175577 (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201))))))

(declare-fun lt!1712254 () Unit!98070)

(declare-fun choose!29848 (List!50862 Int tuple2!51210) Unit!98070)

(assert (=> d!1401973 (= lt!1712254 (choose!29848 (_2!28900 (h!56616 (toList!4395 lm!1477))) lambda!175577 (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201)))))))

(declare-fun e!2827416 () Bool)

(assert (=> d!1401973 e!2827416))

(declare-fun res!1890575 () Bool)

(assert (=> d!1401973 (=> (not res!1890575) (not e!2827416))))

(assert (=> d!1401973 (= res!1890575 (forall!10336 (_2!28900 (h!56616 (toList!4395 lm!1477))) lambda!175577))))

(assert (=> d!1401973 (= (forallContained!2597 (_2!28900 (h!56616 (toList!4395 lm!1477))) lambda!175577 (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201)))) lt!1712254)))

(declare-fun b!4537417 () Bool)

(assert (=> b!4537417 (= e!2827416 (contains!13524 (_2!28900 (h!56616 (toList!4395 lm!1477))) (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201)))))))

(assert (= (and d!1401973 res!1890575) b!4537417))

(declare-fun b_lambda!157615 () Bool)

(assert (=> (not b_lambda!157615) (not d!1401973)))

(declare-fun m!5301203 () Bool)

(assert (=> d!1401973 m!5301203))

(declare-fun m!5301205 () Bool)

(assert (=> d!1401973 m!5301205))

(declare-fun m!5301207 () Bool)

(assert (=> d!1401973 m!5301207))

(declare-fun m!5301209 () Bool)

(assert (=> b!4537417 m!5301209))

(assert (=> b!4537329 d!1401973))

(declare-fun d!1401977 () Bool)

(assert (=> d!1401977 (= (get!16673 lt!1712201) (v!44872 lt!1712201))))

(assert (=> b!4537329 d!1401977))

(declare-fun d!1401981 () Bool)

(declare-fun e!2827426 () Bool)

(assert (=> d!1401981 e!2827426))

(declare-fun res!1890586 () Bool)

(assert (=> d!1401981 (=> (not res!1890586) (not e!2827426))))

(declare-fun lt!1712273 () ListLongMap!3027)

(assert (=> d!1401981 (= res!1890586 (contains!13523 lt!1712273 (_1!28900 lt!1712226)))))

(declare-fun lt!1712274 () List!50863)

(assert (=> d!1401981 (= lt!1712273 (ListLongMap!3028 lt!1712274))))

(declare-fun lt!1712272 () Unit!98070)

(declare-fun lt!1712271 () Unit!98070)

(assert (=> d!1401981 (= lt!1712272 lt!1712271)))

(assert (=> d!1401981 (= (getValueByKey!1138 lt!1712274 (_1!28900 lt!1712226)) (Some!11189 (_2!28900 lt!1712226)))))

(declare-fun lemmaContainsTupThenGetReturnValue!715 (List!50863 (_ BitVec 64) List!50862) Unit!98070)

(assert (=> d!1401981 (= lt!1712271 (lemmaContainsTupThenGetReturnValue!715 lt!1712274 (_1!28900 lt!1712226) (_2!28900 lt!1712226)))))

(declare-fun insertStrictlySorted!431 (List!50863 (_ BitVec 64) List!50862) List!50863)

(assert (=> d!1401981 (= lt!1712274 (insertStrictlySorted!431 (toList!4395 lm!1477) (_1!28900 lt!1712226) (_2!28900 lt!1712226)))))

(assert (=> d!1401981 (= (+!1596 lm!1477 lt!1712226) lt!1712273)))

(declare-fun b!4537431 () Bool)

(declare-fun res!1890585 () Bool)

(assert (=> b!4537431 (=> (not res!1890585) (not e!2827426))))

(assert (=> b!4537431 (= res!1890585 (= (getValueByKey!1138 (toList!4395 lt!1712273) (_1!28900 lt!1712226)) (Some!11189 (_2!28900 lt!1712226))))))

(declare-fun b!4537432 () Bool)

(assert (=> b!4537432 (= e!2827426 (contains!13522 (toList!4395 lt!1712273) lt!1712226))))

(assert (= (and d!1401981 res!1890586) b!4537431))

(assert (= (and b!4537431 res!1890585) b!4537432))

(declare-fun m!5301237 () Bool)

(assert (=> d!1401981 m!5301237))

(declare-fun m!5301239 () Bool)

(assert (=> d!1401981 m!5301239))

(declare-fun m!5301241 () Bool)

(assert (=> d!1401981 m!5301241))

(declare-fun m!5301243 () Bool)

(assert (=> d!1401981 m!5301243))

(declare-fun m!5301245 () Bool)

(assert (=> b!4537431 m!5301245))

(declare-fun m!5301247 () Bool)

(assert (=> b!4537432 m!5301247))

(assert (=> b!4537328 d!1401981))

(declare-fun d!1401991 () Bool)

(declare-fun e!2827427 () Bool)

(assert (=> d!1401991 e!2827427))

(declare-fun res!1890588 () Bool)

(assert (=> d!1401991 (=> (not res!1890588) (not e!2827427))))

(declare-fun lt!1712277 () ListLongMap!3027)

(assert (=> d!1401991 (= res!1890588 (contains!13523 lt!1712277 (_1!28900 lt!1712204)))))

(declare-fun lt!1712278 () List!50863)

(assert (=> d!1401991 (= lt!1712277 (ListLongMap!3028 lt!1712278))))

(declare-fun lt!1712276 () Unit!98070)

(declare-fun lt!1712275 () Unit!98070)

(assert (=> d!1401991 (= lt!1712276 lt!1712275)))

(assert (=> d!1401991 (= (getValueByKey!1138 lt!1712278 (_1!28900 lt!1712204)) (Some!11189 (_2!28900 lt!1712204)))))

(assert (=> d!1401991 (= lt!1712275 (lemmaContainsTupThenGetReturnValue!715 lt!1712278 (_1!28900 lt!1712204) (_2!28900 lt!1712204)))))

(assert (=> d!1401991 (= lt!1712278 (insertStrictlySorted!431 (toList!4395 lt!1712207) (_1!28900 lt!1712204) (_2!28900 lt!1712204)))))

(assert (=> d!1401991 (= (+!1596 lt!1712207 lt!1712204) lt!1712277)))

(declare-fun b!4537433 () Bool)

(declare-fun res!1890587 () Bool)

(assert (=> b!4537433 (=> (not res!1890587) (not e!2827427))))

(assert (=> b!4537433 (= res!1890587 (= (getValueByKey!1138 (toList!4395 lt!1712277) (_1!28900 lt!1712204)) (Some!11189 (_2!28900 lt!1712204))))))

(declare-fun b!4537434 () Bool)

(assert (=> b!4537434 (= e!2827427 (contains!13522 (toList!4395 lt!1712277) lt!1712204))))

(assert (= (and d!1401991 res!1890588) b!4537433))

(assert (= (and b!4537433 res!1890587) b!4537434))

(declare-fun m!5301249 () Bool)

(assert (=> d!1401991 m!5301249))

(declare-fun m!5301251 () Bool)

(assert (=> d!1401991 m!5301251))

(declare-fun m!5301253 () Bool)

(assert (=> d!1401991 m!5301253))

(declare-fun m!5301255 () Bool)

(assert (=> d!1401991 m!5301255))

(declare-fun m!5301257 () Bool)

(assert (=> b!4537433 m!5301257))

(declare-fun m!5301259 () Bool)

(assert (=> b!4537434 m!5301259))

(assert (=> b!4537328 d!1401991))

(declare-fun d!1401993 () Bool)

(declare-fun e!2827449 () Bool)

(assert (=> d!1401993 e!2827449))

(declare-fun res!1890605 () Bool)

(assert (=> d!1401993 (=> (not res!1890605) (not e!2827449))))

(declare-fun lt!1712298 () ListMap!3657)

(assert (=> d!1401993 (= res!1890605 (not (contains!13521 lt!1712298 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!164 (List!50862 K!12125) List!50862)

(assert (=> d!1401993 (= lt!1712298 (ListMap!3658 (removePresrvNoDuplicatedKeys!164 (toList!4396 lt!1712218) key!3287)))))

(assert (=> d!1401993 (= (-!420 lt!1712218 key!3287) lt!1712298)))

(declare-fun b!4537465 () Bool)

(declare-datatypes ((List!50864 0))(
  ( (Nil!50740) (Cons!50740 (h!56619 K!12125) (t!357826 List!50864)) )
))
(declare-fun content!8428 (List!50864) (InoxSet K!12125))

(declare-fun keys!17651 (ListMap!3657) List!50864)

(assert (=> b!4537465 (= e!2827449 (= ((_ map and) (content!8428 (keys!17651 lt!1712218)) ((_ map not) (store ((as const (Array K!12125 Bool)) false) key!3287 true))) (content!8428 (keys!17651 lt!1712298))))))

(assert (= (and d!1401993 res!1890605) b!4537465))

(declare-fun m!5301275 () Bool)

(assert (=> d!1401993 m!5301275))

(declare-fun m!5301277 () Bool)

(assert (=> d!1401993 m!5301277))

(declare-fun m!5301279 () Bool)

(assert (=> b!4537465 m!5301279))

(declare-fun m!5301281 () Bool)

(assert (=> b!4537465 m!5301281))

(assert (=> b!4537465 m!5301279))

(declare-fun m!5301283 () Bool)

(assert (=> b!4537465 m!5301283))

(declare-fun m!5301287 () Bool)

(assert (=> b!4537465 m!5301287))

(declare-fun m!5301289 () Bool)

(assert (=> b!4537465 m!5301289))

(assert (=> b!4537465 m!5301287))

(assert (=> b!4537327 d!1401993))

(declare-fun bs!874695 () Bool)

(declare-fun d!1402001 () Bool)

(assert (= bs!874695 (and d!1402001 start!450236)))

(declare-fun lambda!175589 () Int)

(assert (=> bs!874695 (= lambda!175589 lambda!175575)))

(declare-fun bs!874696 () Bool)

(assert (= bs!874696 (and d!1402001 b!4537329)))

(assert (=> bs!874696 (not (= lambda!175589 lambda!175576))))

(assert (=> d!1402001 (eq!651 (extractMap!1250 (toList!4395 (+!1596 lt!1712220 (tuple2!51213 hash!344 newBucket!178)))) (-!420 (extractMap!1250 (toList!4395 lt!1712220)) key!3287))))

(declare-fun lt!1712325 () Unit!98070)

(declare-fun choose!29850 (ListLongMap!3027 (_ BitVec 64) List!50862 K!12125 Hashable!5589) Unit!98070)

(assert (=> d!1402001 (= lt!1712325 (choose!29850 lt!1712220 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1402001 (forall!10335 (toList!4395 lt!1712220) lambda!175589)))

(assert (=> d!1402001 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!179 lt!1712220 hash!344 newBucket!178 key!3287 hashF!1107) lt!1712325)))

(declare-fun bs!874697 () Bool)

(assert (= bs!874697 d!1402001))

(declare-fun m!5301361 () Bool)

(assert (=> bs!874697 m!5301361))

(assert (=> bs!874697 m!5301133))

(assert (=> bs!874697 m!5301133))

(declare-fun m!5301363 () Bool)

(assert (=> bs!874697 m!5301363))

(assert (=> bs!874697 m!5301361))

(assert (=> bs!874697 m!5301363))

(declare-fun m!5301365 () Bool)

(assert (=> bs!874697 m!5301365))

(declare-fun m!5301367 () Bool)

(assert (=> bs!874697 m!5301367))

(declare-fun m!5301369 () Bool)

(assert (=> bs!874697 m!5301369))

(declare-fun m!5301371 () Bool)

(assert (=> bs!874697 m!5301371))

(assert (=> b!4537327 d!1402001))

(declare-fun bs!874698 () Bool)

(declare-fun d!1402021 () Bool)

(assert (= bs!874698 (and d!1402021 start!450236)))

(declare-fun lambda!175592 () Int)

(assert (=> bs!874698 (= lambda!175592 lambda!175575)))

(declare-fun bs!874699 () Bool)

(assert (= bs!874699 (and d!1402021 b!4537329)))

(assert (=> bs!874699 (not (= lambda!175592 lambda!175576))))

(declare-fun bs!874700 () Bool)

(assert (= bs!874700 (and d!1402021 d!1402001)))

(assert (=> bs!874700 (= lambda!175592 lambda!175589)))

(declare-fun lt!1712328 () ListMap!3657)

(declare-fun invariantList!1040 (List!50862) Bool)

(assert (=> d!1402021 (invariantList!1040 (toList!4396 lt!1712328))))

(declare-fun e!2827468 () ListMap!3657)

(assert (=> d!1402021 (= lt!1712328 e!2827468)))

(declare-fun c!774956 () Bool)

(assert (=> d!1402021 (= c!774956 ((_ is Cons!50739) (toList!4395 (+!1596 lt!1712220 lt!1712204))))))

(assert (=> d!1402021 (forall!10335 (toList!4395 (+!1596 lt!1712220 lt!1712204)) lambda!175592)))

(assert (=> d!1402021 (= (extractMap!1250 (toList!4395 (+!1596 lt!1712220 lt!1712204))) lt!1712328)))

(declare-fun b!4537493 () Bool)

(assert (=> b!4537493 (= e!2827468 (addToMapMapFromBucket!721 (_2!28900 (h!56616 (toList!4395 (+!1596 lt!1712220 lt!1712204)))) (extractMap!1250 (t!357825 (toList!4395 (+!1596 lt!1712220 lt!1712204))))))))

(declare-fun b!4537494 () Bool)

(assert (=> b!4537494 (= e!2827468 (ListMap!3658 Nil!50738))))

(assert (= (and d!1402021 c!774956) b!4537493))

(assert (= (and d!1402021 (not c!774956)) b!4537494))

(declare-fun m!5301373 () Bool)

(assert (=> d!1402021 m!5301373))

(declare-fun m!5301375 () Bool)

(assert (=> d!1402021 m!5301375))

(declare-fun m!5301377 () Bool)

(assert (=> b!4537493 m!5301377))

(assert (=> b!4537493 m!5301377))

(declare-fun m!5301379 () Bool)

(assert (=> b!4537493 m!5301379))

(assert (=> b!4537327 d!1402021))

(declare-fun d!1402023 () Bool)

(declare-fun e!2827469 () Bool)

(assert (=> d!1402023 e!2827469))

(declare-fun res!1890626 () Bool)

(assert (=> d!1402023 (=> (not res!1890626) (not e!2827469))))

(declare-fun lt!1712331 () ListLongMap!3027)

(assert (=> d!1402023 (= res!1890626 (contains!13523 lt!1712331 (_1!28900 lt!1712204)))))

(declare-fun lt!1712332 () List!50863)

(assert (=> d!1402023 (= lt!1712331 (ListLongMap!3028 lt!1712332))))

(declare-fun lt!1712330 () Unit!98070)

(declare-fun lt!1712329 () Unit!98070)

(assert (=> d!1402023 (= lt!1712330 lt!1712329)))

(assert (=> d!1402023 (= (getValueByKey!1138 lt!1712332 (_1!28900 lt!1712204)) (Some!11189 (_2!28900 lt!1712204)))))

(assert (=> d!1402023 (= lt!1712329 (lemmaContainsTupThenGetReturnValue!715 lt!1712332 (_1!28900 lt!1712204) (_2!28900 lt!1712204)))))

(assert (=> d!1402023 (= lt!1712332 (insertStrictlySorted!431 (toList!4395 lt!1712220) (_1!28900 lt!1712204) (_2!28900 lt!1712204)))))

(assert (=> d!1402023 (= (+!1596 lt!1712220 lt!1712204) lt!1712331)))

(declare-fun b!4537495 () Bool)

(declare-fun res!1890625 () Bool)

(assert (=> b!4537495 (=> (not res!1890625) (not e!2827469))))

(assert (=> b!4537495 (= res!1890625 (= (getValueByKey!1138 (toList!4395 lt!1712331) (_1!28900 lt!1712204)) (Some!11189 (_2!28900 lt!1712204))))))

(declare-fun b!4537496 () Bool)

(assert (=> b!4537496 (= e!2827469 (contains!13522 (toList!4395 lt!1712331) lt!1712204))))

(assert (= (and d!1402023 res!1890626) b!4537495))

(assert (= (and b!4537495 res!1890625) b!4537496))

(declare-fun m!5301381 () Bool)

(assert (=> d!1402023 m!5301381))

(declare-fun m!5301383 () Bool)

(assert (=> d!1402023 m!5301383))

(declare-fun m!5301385 () Bool)

(assert (=> d!1402023 m!5301385))

(declare-fun m!5301387 () Bool)

(assert (=> d!1402023 m!5301387))

(declare-fun m!5301389 () Bool)

(assert (=> b!4537495 m!5301389))

(declare-fun m!5301391 () Bool)

(assert (=> b!4537496 m!5301391))

(assert (=> b!4537327 d!1402023))

(declare-fun d!1402025 () Bool)

(assert (=> d!1402025 (= (eq!651 lt!1712195 lt!1712196) (= (content!8427 (toList!4396 lt!1712195)) (content!8427 (toList!4396 lt!1712196))))))

(declare-fun bs!874701 () Bool)

(assert (= bs!874701 d!1402025))

(assert (=> bs!874701 m!5301169))

(assert (=> bs!874701 m!5301167))

(assert (=> b!4537327 d!1402025))

(declare-fun d!1402027 () Bool)

(assert (=> d!1402027 (= (eq!651 lt!1712197 lt!1712206) (= (content!8427 (toList!4396 lt!1712197)) (content!8427 (toList!4396 lt!1712206))))))

(declare-fun bs!874702 () Bool)

(assert (= bs!874702 d!1402027))

(declare-fun m!5301393 () Bool)

(assert (=> bs!874702 m!5301393))

(declare-fun m!5301395 () Bool)

(assert (=> bs!874702 m!5301395))

(assert (=> b!4537327 d!1402027))

(declare-fun d!1402029 () Bool)

(declare-fun head!9471 (List!50863) tuple2!51212)

(assert (=> d!1402029 (= (head!9470 lm!1477) (head!9471 (toList!4395 lm!1477)))))

(declare-fun bs!874703 () Bool)

(assert (= bs!874703 d!1402029))

(declare-fun m!5301397 () Bool)

(assert (=> bs!874703 m!5301397))

(assert (=> b!4537327 d!1402029))

(declare-fun d!1402031 () Bool)

(declare-fun e!2827470 () Bool)

(assert (=> d!1402031 e!2827470))

(declare-fun res!1890628 () Bool)

(assert (=> d!1402031 (=> (not res!1890628) (not e!2827470))))

(declare-fun lt!1712335 () ListLongMap!3027)

(assert (=> d!1402031 (= res!1890628 (contains!13523 lt!1712335 (_1!28900 lt!1712226)))))

(declare-fun lt!1712336 () List!50863)

(assert (=> d!1402031 (= lt!1712335 (ListLongMap!3028 lt!1712336))))

(declare-fun lt!1712334 () Unit!98070)

(declare-fun lt!1712333 () Unit!98070)

(assert (=> d!1402031 (= lt!1712334 lt!1712333)))

(assert (=> d!1402031 (= (getValueByKey!1138 lt!1712336 (_1!28900 lt!1712226)) (Some!11189 (_2!28900 lt!1712226)))))

(assert (=> d!1402031 (= lt!1712333 (lemmaContainsTupThenGetReturnValue!715 lt!1712336 (_1!28900 lt!1712226) (_2!28900 lt!1712226)))))

(assert (=> d!1402031 (= lt!1712336 (insertStrictlySorted!431 (toList!4395 lt!1712220) (_1!28900 lt!1712226) (_2!28900 lt!1712226)))))

(assert (=> d!1402031 (= (+!1596 lt!1712220 lt!1712226) lt!1712335)))

(declare-fun b!4537497 () Bool)

(declare-fun res!1890627 () Bool)

(assert (=> b!4537497 (=> (not res!1890627) (not e!2827470))))

(assert (=> b!4537497 (= res!1890627 (= (getValueByKey!1138 (toList!4395 lt!1712335) (_1!28900 lt!1712226)) (Some!11189 (_2!28900 lt!1712226))))))

(declare-fun b!4537498 () Bool)

(assert (=> b!4537498 (= e!2827470 (contains!13522 (toList!4395 lt!1712335) lt!1712226))))

(assert (= (and d!1402031 res!1890628) b!4537497))

(assert (= (and b!4537497 res!1890627) b!4537498))

(declare-fun m!5301399 () Bool)

(assert (=> d!1402031 m!5301399))

(declare-fun m!5301401 () Bool)

(assert (=> d!1402031 m!5301401))

(declare-fun m!5301403 () Bool)

(assert (=> d!1402031 m!5301403))

(declare-fun m!5301405 () Bool)

(assert (=> d!1402031 m!5301405))

(declare-fun m!5301407 () Bool)

(assert (=> b!4537497 m!5301407))

(declare-fun m!5301409 () Bool)

(assert (=> b!4537498 m!5301409))

(assert (=> b!4537327 d!1402031))

(declare-fun bs!874704 () Bool)

(declare-fun d!1402033 () Bool)

(assert (= bs!874704 (and d!1402033 start!450236)))

(declare-fun lambda!175593 () Int)

(assert (=> bs!874704 (= lambda!175593 lambda!175575)))

(declare-fun bs!874705 () Bool)

(assert (= bs!874705 (and d!1402033 b!4537329)))

(assert (=> bs!874705 (not (= lambda!175593 lambda!175576))))

(declare-fun bs!874706 () Bool)

(assert (= bs!874706 (and d!1402033 d!1402001)))

(assert (=> bs!874706 (= lambda!175593 lambda!175589)))

(declare-fun bs!874707 () Bool)

(assert (= bs!874707 (and d!1402033 d!1402021)))

(assert (=> bs!874707 (= lambda!175593 lambda!175592)))

(declare-fun lt!1712337 () ListMap!3657)

(assert (=> d!1402033 (invariantList!1040 (toList!4396 lt!1712337))))

(declare-fun e!2827471 () ListMap!3657)

(assert (=> d!1402033 (= lt!1712337 e!2827471)))

(declare-fun c!774957 () Bool)

(assert (=> d!1402033 (= c!774957 ((_ is Cons!50739) (toList!4395 lt!1712207)))))

(assert (=> d!1402033 (forall!10335 (toList!4395 lt!1712207) lambda!175593)))

(assert (=> d!1402033 (= (extractMap!1250 (toList!4395 lt!1712207)) lt!1712337)))

(declare-fun b!4537499 () Bool)

(assert (=> b!4537499 (= e!2827471 (addToMapMapFromBucket!721 (_2!28900 (h!56616 (toList!4395 lt!1712207))) (extractMap!1250 (t!357825 (toList!4395 lt!1712207)))))))

(declare-fun b!4537500 () Bool)

(assert (=> b!4537500 (= e!2827471 (ListMap!3658 Nil!50738))))

(assert (= (and d!1402033 c!774957) b!4537499))

(assert (= (and d!1402033 (not c!774957)) b!4537500))

(declare-fun m!5301411 () Bool)

(assert (=> d!1402033 m!5301411))

(declare-fun m!5301413 () Bool)

(assert (=> d!1402033 m!5301413))

(declare-fun m!5301415 () Bool)

(assert (=> b!4537499 m!5301415))

(assert (=> b!4537499 m!5301415))

(declare-fun m!5301417 () Bool)

(assert (=> b!4537499 m!5301417))

(assert (=> b!4537327 d!1402033))

(declare-fun bs!874708 () Bool)

(declare-fun d!1402035 () Bool)

(assert (= bs!874708 (and d!1402035 start!450236)))

(declare-fun lambda!175596 () Int)

(assert (=> bs!874708 (= lambda!175596 lambda!175575)))

(declare-fun bs!874709 () Bool)

(assert (= bs!874709 (and d!1402035 d!1402021)))

(assert (=> bs!874709 (= lambda!175596 lambda!175592)))

(declare-fun bs!874710 () Bool)

(assert (= bs!874710 (and d!1402035 d!1402033)))

(assert (=> bs!874710 (= lambda!175596 lambda!175593)))

(declare-fun bs!874711 () Bool)

(assert (= bs!874711 (and d!1402035 d!1402001)))

(assert (=> bs!874711 (= lambda!175596 lambda!175589)))

(declare-fun bs!874712 () Bool)

(assert (= bs!874712 (and d!1402035 b!4537329)))

(assert (=> bs!874712 (not (= lambda!175596 lambda!175576))))

(assert (=> d!1402035 (contains!13523 lm!1477 (hash!2903 hashF!1107 key!3287))))

(declare-fun lt!1712340 () Unit!98070)

(declare-fun choose!29851 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> d!1402035 (= lt!1712340 (choose!29851 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1402035 (forall!10335 (toList!4395 lm!1477) lambda!175596)))

(assert (=> d!1402035 (= (lemmaInGenMapThenLongMapContainsHash!268 lm!1477 key!3287 hashF!1107) lt!1712340)))

(declare-fun bs!874713 () Bool)

(assert (= bs!874713 d!1402035))

(assert (=> bs!874713 m!5301025))

(assert (=> bs!874713 m!5301025))

(declare-fun m!5301419 () Bool)

(assert (=> bs!874713 m!5301419))

(declare-fun m!5301421 () Bool)

(assert (=> bs!874713 m!5301421))

(declare-fun m!5301423 () Bool)

(assert (=> bs!874713 m!5301423))

(assert (=> b!4537325 d!1402035))

(declare-fun d!1402037 () Bool)

(assert (=> d!1402037 (contains!13522 (toList!4395 lm!1477) (tuple2!51213 hash!344 lt!1712217))))

(declare-fun lt!1712343 () Unit!98070)

(declare-fun choose!29852 (List!50863 (_ BitVec 64) List!50862) Unit!98070)

(assert (=> d!1402037 (= lt!1712343 (choose!29852 (toList!4395 lm!1477) hash!344 lt!1712217))))

(declare-fun e!2827474 () Bool)

(assert (=> d!1402037 e!2827474))

(declare-fun res!1890631 () Bool)

(assert (=> d!1402037 (=> (not res!1890631) (not e!2827474))))

(assert (=> d!1402037 (= res!1890631 (isStrictlySorted!455 (toList!4395 lm!1477)))))

(assert (=> d!1402037 (= (lemmaGetValueByKeyImpliesContainsTuple!706 (toList!4395 lm!1477) hash!344 lt!1712217) lt!1712343)))

(declare-fun b!4537503 () Bool)

(assert (=> b!4537503 (= e!2827474 (= (getValueByKey!1138 (toList!4395 lm!1477) hash!344) (Some!11189 lt!1712217)))))

(assert (= (and d!1402037 res!1890631) b!4537503))

(declare-fun m!5301425 () Bool)

(assert (=> d!1402037 m!5301425))

(declare-fun m!5301427 () Bool)

(assert (=> d!1402037 m!5301427))

(assert (=> d!1402037 m!5301175))

(declare-fun m!5301429 () Bool)

(assert (=> b!4537503 m!5301429))

(assert (=> b!4537325 d!1402037))

(declare-fun d!1402039 () Bool)

(declare-fun e!2827476 () Bool)

(assert (=> d!1402039 e!2827476))

(declare-fun res!1890632 () Bool)

(assert (=> d!1402039 (=> res!1890632 e!2827476)))

(declare-fun lt!1712345 () Bool)

(assert (=> d!1402039 (= res!1890632 (not lt!1712345))))

(declare-fun lt!1712344 () Bool)

(assert (=> d!1402039 (= lt!1712345 lt!1712344)))

(declare-fun lt!1712347 () Unit!98070)

(declare-fun e!2827475 () Unit!98070)

(assert (=> d!1402039 (= lt!1712347 e!2827475)))

(declare-fun c!774958 () Bool)

(assert (=> d!1402039 (= c!774958 lt!1712344)))

(assert (=> d!1402039 (= lt!1712344 (containsKey!1863 (toList!4395 lm!1477) lt!1712199))))

(assert (=> d!1402039 (= (contains!13523 lm!1477 lt!1712199) lt!1712345)))

(declare-fun b!4537504 () Bool)

(declare-fun lt!1712346 () Unit!98070)

(assert (=> b!4537504 (= e!2827475 lt!1712346)))

(assert (=> b!4537504 (= lt!1712346 (lemmaContainsKeyImpliesGetValueByKeyDefined!1042 (toList!4395 lm!1477) lt!1712199))))

(assert (=> b!4537504 (isDefined!8467 (getValueByKey!1138 (toList!4395 lm!1477) lt!1712199))))

(declare-fun b!4537505 () Bool)

(declare-fun Unit!98082 () Unit!98070)

(assert (=> b!4537505 (= e!2827475 Unit!98082)))

(declare-fun b!4537506 () Bool)

(assert (=> b!4537506 (= e!2827476 (isDefined!8467 (getValueByKey!1138 (toList!4395 lm!1477) lt!1712199)))))

(assert (= (and d!1402039 c!774958) b!4537504))

(assert (= (and d!1402039 (not c!774958)) b!4537505))

(assert (= (and d!1402039 (not res!1890632)) b!4537506))

(declare-fun m!5301431 () Bool)

(assert (=> d!1402039 m!5301431))

(declare-fun m!5301433 () Bool)

(assert (=> b!4537504 m!5301433))

(declare-fun m!5301435 () Bool)

(assert (=> b!4537504 m!5301435))

(assert (=> b!4537504 m!5301435))

(declare-fun m!5301437 () Bool)

(assert (=> b!4537504 m!5301437))

(assert (=> b!4537506 m!5301435))

(assert (=> b!4537506 m!5301435))

(assert (=> b!4537506 m!5301437))

(assert (=> b!4537325 d!1402039))

(declare-fun b!4537515 () Bool)

(declare-fun e!2827482 () List!50862)

(assert (=> b!4537515 (= e!2827482 (t!357824 lt!1712217))))

(declare-fun b!4537516 () Bool)

(declare-fun e!2827481 () List!50862)

(assert (=> b!4537516 (= e!2827482 e!2827481)))

(declare-fun c!774964 () Bool)

(assert (=> b!4537516 (= c!774964 ((_ is Cons!50738) lt!1712217))))

(declare-fun b!4537518 () Bool)

(assert (=> b!4537518 (= e!2827481 Nil!50738)))

(declare-fun b!4537517 () Bool)

(assert (=> b!4537517 (= e!2827481 (Cons!50738 (h!56615 lt!1712217) (removePairForKey!821 (t!357824 lt!1712217) key!3287)))))

(declare-fun d!1402041 () Bool)

(declare-fun lt!1712350 () List!50862)

(assert (=> d!1402041 (not (containsKey!1862 lt!1712350 key!3287))))

(assert (=> d!1402041 (= lt!1712350 e!2827482)))

(declare-fun c!774963 () Bool)

(assert (=> d!1402041 (= c!774963 (and ((_ is Cons!50738) lt!1712217) (= (_1!28899 (h!56615 lt!1712217)) key!3287)))))

(assert (=> d!1402041 (noDuplicateKeys!1194 lt!1712217)))

(assert (=> d!1402041 (= (removePairForKey!821 lt!1712217 key!3287) lt!1712350)))

(assert (= (and d!1402041 c!774963) b!4537515))

(assert (= (and d!1402041 (not c!774963)) b!4537516))

(assert (= (and b!4537516 c!774964) b!4537517))

(assert (= (and b!4537516 (not c!774964)) b!4537518))

(declare-fun m!5301439 () Bool)

(assert (=> b!4537517 m!5301439))

(declare-fun m!5301441 () Bool)

(assert (=> d!1402041 m!5301441))

(declare-fun m!5301443 () Bool)

(assert (=> d!1402041 m!5301443))

(assert (=> b!4537325 d!1402041))

(declare-fun d!1402043 () Bool)

(assert (=> d!1402043 (dynLambda!21206 lambda!175575 lt!1712214)))

(declare-fun lt!1712351 () Unit!98070)

(assert (=> d!1402043 (= lt!1712351 (choose!29847 (toList!4395 lm!1477) lambda!175575 lt!1712214))))

(declare-fun e!2827483 () Bool)

(assert (=> d!1402043 e!2827483))

(declare-fun res!1890633 () Bool)

(assert (=> d!1402043 (=> (not res!1890633) (not e!2827483))))

(assert (=> d!1402043 (= res!1890633 (forall!10335 (toList!4395 lm!1477) lambda!175575))))

(assert (=> d!1402043 (= (forallContained!2596 (toList!4395 lm!1477) lambda!175575 lt!1712214) lt!1712351)))

(declare-fun b!4537519 () Bool)

(assert (=> b!4537519 (= e!2827483 (contains!13522 (toList!4395 lm!1477) lt!1712214))))

(assert (= (and d!1402043 res!1890633) b!4537519))

(declare-fun b_lambda!157623 () Bool)

(assert (=> (not b_lambda!157623) (not d!1402043)))

(declare-fun m!5301445 () Bool)

(assert (=> d!1402043 m!5301445))

(declare-fun m!5301447 () Bool)

(assert (=> d!1402043 m!5301447))

(assert (=> d!1402043 m!5301117))

(assert (=> b!4537519 m!5301057))

(assert (=> b!4537325 d!1402043))

(declare-fun d!1402045 () Bool)

(declare-fun lt!1712354 () Bool)

(declare-fun content!8431 (List!50863) (InoxSet tuple2!51212))

(assert (=> d!1402045 (= lt!1712354 (select (content!8431 (toList!4395 lm!1477)) lt!1712214))))

(declare-fun e!2827488 () Bool)

(assert (=> d!1402045 (= lt!1712354 e!2827488)))

(declare-fun res!1890638 () Bool)

(assert (=> d!1402045 (=> (not res!1890638) (not e!2827488))))

(assert (=> d!1402045 (= res!1890638 ((_ is Cons!50739) (toList!4395 lm!1477)))))

(assert (=> d!1402045 (= (contains!13522 (toList!4395 lm!1477) lt!1712214) lt!1712354)))

(declare-fun b!4537524 () Bool)

(declare-fun e!2827489 () Bool)

(assert (=> b!4537524 (= e!2827488 e!2827489)))

(declare-fun res!1890639 () Bool)

(assert (=> b!4537524 (=> res!1890639 e!2827489)))

(assert (=> b!4537524 (= res!1890639 (= (h!56616 (toList!4395 lm!1477)) lt!1712214))))

(declare-fun b!4537525 () Bool)

(assert (=> b!4537525 (= e!2827489 (contains!13522 (t!357825 (toList!4395 lm!1477)) lt!1712214))))

(assert (= (and d!1402045 res!1890638) b!4537524))

(assert (= (and b!4537524 (not res!1890639)) b!4537525))

(declare-fun m!5301449 () Bool)

(assert (=> d!1402045 m!5301449))

(declare-fun m!5301451 () Bool)

(assert (=> d!1402045 m!5301451))

(assert (=> b!4537525 m!5301059))

(assert (=> b!4537325 d!1402045))

(declare-fun d!1402047 () Bool)

(declare-fun get!16675 (Option!11190) List!50862)

(assert (=> d!1402047 (= (apply!11931 lm!1477 hash!344) (get!16675 (getValueByKey!1138 (toList!4395 lm!1477) hash!344)))))

(declare-fun bs!874714 () Bool)

(assert (= bs!874714 d!1402047))

(assert (=> bs!874714 m!5301429))

(assert (=> bs!874714 m!5301429))

(declare-fun m!5301453 () Bool)

(assert (=> bs!874714 m!5301453))

(assert (=> b!4537325 d!1402047))

(declare-fun d!1402049 () Bool)

(declare-fun lt!1712355 () Bool)

(assert (=> d!1402049 (= lt!1712355 (select (content!8431 (t!357825 (toList!4395 lm!1477))) lt!1712214))))

(declare-fun e!2827490 () Bool)

(assert (=> d!1402049 (= lt!1712355 e!2827490)))

(declare-fun res!1890640 () Bool)

(assert (=> d!1402049 (=> (not res!1890640) (not e!2827490))))

(assert (=> d!1402049 (= res!1890640 ((_ is Cons!50739) (t!357825 (toList!4395 lm!1477))))))

(assert (=> d!1402049 (= (contains!13522 (t!357825 (toList!4395 lm!1477)) lt!1712214) lt!1712355)))

(declare-fun b!4537526 () Bool)

(declare-fun e!2827491 () Bool)

(assert (=> b!4537526 (= e!2827490 e!2827491)))

(declare-fun res!1890641 () Bool)

(assert (=> b!4537526 (=> res!1890641 e!2827491)))

(assert (=> b!4537526 (= res!1890641 (= (h!56616 (t!357825 (toList!4395 lm!1477))) lt!1712214))))

(declare-fun b!4537527 () Bool)

(assert (=> b!4537527 (= e!2827491 (contains!13522 (t!357825 (t!357825 (toList!4395 lm!1477))) lt!1712214))))

(assert (= (and d!1402049 res!1890640) b!4537526))

(assert (= (and b!4537526 (not res!1890641)) b!4537527))

(declare-fun m!5301455 () Bool)

(assert (=> d!1402049 m!5301455))

(declare-fun m!5301457 () Bool)

(assert (=> d!1402049 m!5301457))

(declare-fun m!5301459 () Bool)

(assert (=> b!4537527 m!5301459))

(assert (=> b!4537324 d!1402049))

(declare-fun bs!874715 () Bool)

(declare-fun d!1402051 () Bool)

(assert (= bs!874715 (and d!1402051 start!450236)))

(declare-fun lambda!175597 () Int)

(assert (=> bs!874715 (= lambda!175597 lambda!175575)))

(declare-fun bs!874716 () Bool)

(assert (= bs!874716 (and d!1402051 d!1402021)))

(assert (=> bs!874716 (= lambda!175597 lambda!175592)))

(declare-fun bs!874717 () Bool)

(assert (= bs!874717 (and d!1402051 d!1402033)))

(assert (=> bs!874717 (= lambda!175597 lambda!175593)))

(declare-fun bs!874718 () Bool)

(assert (= bs!874718 (and d!1402051 b!4537329)))

(assert (=> bs!874718 (not (= lambda!175597 lambda!175576))))

(declare-fun bs!874719 () Bool)

(assert (= bs!874719 (and d!1402051 d!1402001)))

(assert (=> bs!874719 (= lambda!175597 lambda!175589)))

(declare-fun bs!874720 () Bool)

(assert (= bs!874720 (and d!1402051 d!1402035)))

(assert (=> bs!874720 (= lambda!175597 lambda!175596)))

(declare-fun lt!1712356 () ListMap!3657)

(assert (=> d!1402051 (invariantList!1040 (toList!4396 lt!1712356))))

(declare-fun e!2827492 () ListMap!3657)

(assert (=> d!1402051 (= lt!1712356 e!2827492)))

(declare-fun c!774965 () Bool)

(assert (=> d!1402051 (= c!774965 ((_ is Cons!50739) (toList!4395 lt!1712220)))))

(assert (=> d!1402051 (forall!10335 (toList!4395 lt!1712220) lambda!175597)))

(assert (=> d!1402051 (= (extractMap!1250 (toList!4395 lt!1712220)) lt!1712356)))

(declare-fun b!4537528 () Bool)

(assert (=> b!4537528 (= e!2827492 (addToMapMapFromBucket!721 (_2!28900 (h!56616 (toList!4395 lt!1712220))) (extractMap!1250 (t!357825 (toList!4395 lt!1712220)))))))

(declare-fun b!4537529 () Bool)

(assert (=> b!4537529 (= e!2827492 (ListMap!3658 Nil!50738))))

(assert (= (and d!1402051 c!774965) b!4537528))

(assert (= (and d!1402051 (not c!774965)) b!4537529))

(declare-fun m!5301461 () Bool)

(assert (=> d!1402051 m!5301461))

(declare-fun m!5301463 () Bool)

(assert (=> d!1402051 m!5301463))

(declare-fun m!5301465 () Bool)

(assert (=> b!4537528 m!5301465))

(assert (=> b!4537528 m!5301465))

(declare-fun m!5301467 () Bool)

(assert (=> b!4537528 m!5301467))

(assert (=> b!4537344 d!1402051))

(declare-fun b!4537548 () Bool)

(declare-fun e!2827506 () Unit!98070)

(declare-fun lt!1712376 () Unit!98070)

(assert (=> b!4537548 (= e!2827506 lt!1712376)))

(declare-fun lt!1712379 () Unit!98070)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1044 (List!50862 K!12125) Unit!98070)

(assert (=> b!4537548 (= lt!1712379 (lemmaContainsKeyImpliesGetValueByKeyDefined!1044 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11192 0))(
  ( (None!11191) (Some!11191 (v!44879 V!12371)) )
))
(declare-fun isDefined!8471 (Option!11192) Bool)

(declare-fun getValueByKey!1140 (List!50862 K!12125) Option!11192)

(assert (=> b!4537548 (isDefined!8471 (getValueByKey!1140 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(declare-fun lt!1712380 () Unit!98070)

(assert (=> b!4537548 (= lt!1712380 lt!1712379)))

(declare-fun lemmaInListThenGetKeysListContains!484 (List!50862 K!12125) Unit!98070)

(assert (=> b!4537548 (= lt!1712376 (lemmaInListThenGetKeysListContains!484 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(declare-fun call!316382 () Bool)

(assert (=> b!4537548 call!316382))

(declare-fun d!1402053 () Bool)

(declare-fun e!2827505 () Bool)

(assert (=> d!1402053 e!2827505))

(declare-fun res!1890650 () Bool)

(assert (=> d!1402053 (=> res!1890650 e!2827505)))

(declare-fun e!2827509 () Bool)

(assert (=> d!1402053 (= res!1890650 e!2827509)))

(declare-fun res!1890648 () Bool)

(assert (=> d!1402053 (=> (not res!1890648) (not e!2827509))))

(declare-fun lt!1712377 () Bool)

(assert (=> d!1402053 (= res!1890648 (not lt!1712377))))

(declare-fun lt!1712375 () Bool)

(assert (=> d!1402053 (= lt!1712377 lt!1712375)))

(declare-fun lt!1712373 () Unit!98070)

(assert (=> d!1402053 (= lt!1712373 e!2827506)))

(declare-fun c!774973 () Bool)

(assert (=> d!1402053 (= c!774973 lt!1712375)))

(declare-fun containsKey!1865 (List!50862 K!12125) Bool)

(assert (=> d!1402053 (= lt!1712375 (containsKey!1865 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(assert (=> d!1402053 (= (contains!13521 (extractMap!1250 (t!357825 (toList!4395 lm!1477))) key!3287) lt!1712377)))

(declare-fun b!4537549 () Bool)

(declare-fun e!2827508 () Unit!98070)

(declare-fun Unit!98090 () Unit!98070)

(assert (=> b!4537549 (= e!2827508 Unit!98090)))

(declare-fun b!4537550 () Bool)

(declare-fun e!2827507 () List!50864)

(assert (=> b!4537550 (= e!2827507 (keys!17651 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))))))

(declare-fun b!4537551 () Bool)

(declare-fun contains!13526 (List!50864 K!12125) Bool)

(assert (=> b!4537551 (= e!2827509 (not (contains!13526 (keys!17651 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287)))))

(declare-fun b!4537552 () Bool)

(declare-fun getKeysList!488 (List!50862) List!50864)

(assert (=> b!4537552 (= e!2827507 (getKeysList!488 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477))))))))

(declare-fun b!4537553 () Bool)

(assert (=> b!4537553 (= e!2827506 e!2827508)))

(declare-fun c!774972 () Bool)

(assert (=> b!4537553 (= c!774972 call!316382)))

(declare-fun b!4537554 () Bool)

(declare-fun e!2827510 () Bool)

(assert (=> b!4537554 (= e!2827505 e!2827510)))

(declare-fun res!1890649 () Bool)

(assert (=> b!4537554 (=> (not res!1890649) (not e!2827510))))

(assert (=> b!4537554 (= res!1890649 (isDefined!8471 (getValueByKey!1140 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287)))))

(declare-fun bm!316377 () Bool)

(assert (=> bm!316377 (= call!316382 (contains!13526 e!2827507 key!3287))))

(declare-fun c!774974 () Bool)

(assert (=> bm!316377 (= c!774974 c!774973)))

(declare-fun b!4537555 () Bool)

(assert (=> b!4537555 false))

(declare-fun lt!1712378 () Unit!98070)

(declare-fun lt!1712374 () Unit!98070)

(assert (=> b!4537555 (= lt!1712378 lt!1712374)))

(assert (=> b!4537555 (containsKey!1865 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!487 (List!50862 K!12125) Unit!98070)

(assert (=> b!4537555 (= lt!1712374 (lemmaInGetKeysListThenContainsKey!487 (toList!4396 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(declare-fun Unit!98091 () Unit!98070)

(assert (=> b!4537555 (= e!2827508 Unit!98091)))

(declare-fun b!4537556 () Bool)

(assert (=> b!4537556 (= e!2827510 (contains!13526 (keys!17651 (extractMap!1250 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(assert (= (and d!1402053 c!774973) b!4537548))

(assert (= (and d!1402053 (not c!774973)) b!4537553))

(assert (= (and b!4537553 c!774972) b!4537555))

(assert (= (and b!4537553 (not c!774972)) b!4537549))

(assert (= (or b!4537548 b!4537553) bm!316377))

(assert (= (and bm!316377 c!774974) b!4537552))

(assert (= (and bm!316377 (not c!774974)) b!4537550))

(assert (= (and d!1402053 res!1890648) b!4537551))

(assert (= (and d!1402053 (not res!1890650)) b!4537554))

(assert (= (and b!4537554 res!1890649) b!4537556))

(declare-fun m!5301469 () Bool)

(assert (=> b!4537554 m!5301469))

(assert (=> b!4537554 m!5301469))

(declare-fun m!5301471 () Bool)

(assert (=> b!4537554 m!5301471))

(declare-fun m!5301473 () Bool)

(assert (=> b!4537555 m!5301473))

(declare-fun m!5301475 () Bool)

(assert (=> b!4537555 m!5301475))

(declare-fun m!5301477 () Bool)

(assert (=> b!4537548 m!5301477))

(assert (=> b!4537548 m!5301469))

(assert (=> b!4537548 m!5301469))

(assert (=> b!4537548 m!5301471))

(declare-fun m!5301479 () Bool)

(assert (=> b!4537548 m!5301479))

(assert (=> d!1402053 m!5301473))

(assert (=> b!4537556 m!5301135))

(declare-fun m!5301481 () Bool)

(assert (=> b!4537556 m!5301481))

(assert (=> b!4537556 m!5301481))

(declare-fun m!5301483 () Bool)

(assert (=> b!4537556 m!5301483))

(declare-fun m!5301485 () Bool)

(assert (=> bm!316377 m!5301485))

(declare-fun m!5301487 () Bool)

(assert (=> b!4537552 m!5301487))

(assert (=> b!4537551 m!5301135))

(assert (=> b!4537551 m!5301481))

(assert (=> b!4537551 m!5301481))

(assert (=> b!4537551 m!5301483))

(assert (=> b!4537550 m!5301135))

(assert (=> b!4537550 m!5301481))

(assert (=> b!4537344 d!1402053))

(declare-fun bs!874721 () Bool)

(declare-fun d!1402055 () Bool)

(assert (= bs!874721 (and d!1402055 start!450236)))

(declare-fun lambda!175598 () Int)

(assert (=> bs!874721 (= lambda!175598 lambda!175575)))

(declare-fun bs!874722 () Bool)

(assert (= bs!874722 (and d!1402055 d!1402021)))

(assert (=> bs!874722 (= lambda!175598 lambda!175592)))

(declare-fun bs!874723 () Bool)

(assert (= bs!874723 (and d!1402055 d!1402033)))

(assert (=> bs!874723 (= lambda!175598 lambda!175593)))

(declare-fun bs!874724 () Bool)

(assert (= bs!874724 (and d!1402055 d!1402051)))

(assert (=> bs!874724 (= lambda!175598 lambda!175597)))

(declare-fun bs!874725 () Bool)

(assert (= bs!874725 (and d!1402055 b!4537329)))

(assert (=> bs!874725 (not (= lambda!175598 lambda!175576))))

(declare-fun bs!874726 () Bool)

(assert (= bs!874726 (and d!1402055 d!1402001)))

(assert (=> bs!874726 (= lambda!175598 lambda!175589)))

(declare-fun bs!874727 () Bool)

(assert (= bs!874727 (and d!1402055 d!1402035)))

(assert (=> bs!874727 (= lambda!175598 lambda!175596)))

(declare-fun lt!1712381 () ListMap!3657)

(assert (=> d!1402055 (invariantList!1040 (toList!4396 lt!1712381))))

(declare-fun e!2827511 () ListMap!3657)

(assert (=> d!1402055 (= lt!1712381 e!2827511)))

(declare-fun c!774975 () Bool)

(assert (=> d!1402055 (= c!774975 ((_ is Cons!50739) (t!357825 (toList!4395 lm!1477))))))

(assert (=> d!1402055 (forall!10335 (t!357825 (toList!4395 lm!1477)) lambda!175598)))

(assert (=> d!1402055 (= (extractMap!1250 (t!357825 (toList!4395 lm!1477))) lt!1712381)))

(declare-fun b!4537557 () Bool)

(assert (=> b!4537557 (= e!2827511 (addToMapMapFromBucket!721 (_2!28900 (h!56616 (t!357825 (toList!4395 lm!1477)))) (extractMap!1250 (t!357825 (t!357825 (toList!4395 lm!1477))))))))

(declare-fun b!4537558 () Bool)

(assert (=> b!4537558 (= e!2827511 (ListMap!3658 Nil!50738))))

(assert (= (and d!1402055 c!774975) b!4537557))

(assert (= (and d!1402055 (not c!774975)) b!4537558))

(declare-fun m!5301489 () Bool)

(assert (=> d!1402055 m!5301489))

(declare-fun m!5301491 () Bool)

(assert (=> d!1402055 m!5301491))

(declare-fun m!5301493 () Bool)

(assert (=> b!4537557 m!5301493))

(assert (=> b!4537557 m!5301493))

(declare-fun m!5301495 () Bool)

(assert (=> b!4537557 m!5301495))

(assert (=> b!4537344 d!1402055))

(declare-fun bs!874728 () Bool)

(declare-fun d!1402057 () Bool)

(assert (= bs!874728 (and d!1402057 start!450236)))

(declare-fun lambda!175607 () Int)

(assert (=> bs!874728 (= lambda!175607 lambda!175575)))

(declare-fun bs!874729 () Bool)

(assert (= bs!874729 (and d!1402057 d!1402033)))

(assert (=> bs!874729 (= lambda!175607 lambda!175593)))

(declare-fun bs!874730 () Bool)

(assert (= bs!874730 (and d!1402057 d!1402051)))

(assert (=> bs!874730 (= lambda!175607 lambda!175597)))

(declare-fun bs!874731 () Bool)

(assert (= bs!874731 (and d!1402057 b!4537329)))

(assert (=> bs!874731 (not (= lambda!175607 lambda!175576))))

(declare-fun bs!874732 () Bool)

(assert (= bs!874732 (and d!1402057 d!1402021)))

(assert (=> bs!874732 (= lambda!175607 lambda!175592)))

(declare-fun bs!874733 () Bool)

(assert (= bs!874733 (and d!1402057 d!1402055)))

(assert (=> bs!874733 (= lambda!175607 lambda!175598)))

(declare-fun bs!874734 () Bool)

(assert (= bs!874734 (and d!1402057 d!1402001)))

(assert (=> bs!874734 (= lambda!175607 lambda!175589)))

(declare-fun bs!874735 () Bool)

(assert (= bs!874735 (and d!1402057 d!1402035)))

(assert (=> bs!874735 (= lambda!175607 lambda!175596)))

(assert (=> d!1402057 (contains!13521 (extractMap!1250 (toList!4395 lt!1712220)) key!3287)))

(declare-fun lt!1712402 () Unit!98070)

(declare-fun choose!29854 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> d!1402057 (= lt!1712402 (choose!29854 lt!1712220 key!3287 hashF!1107))))

(assert (=> d!1402057 (forall!10335 (toList!4395 lt!1712220) lambda!175607)))

(assert (=> d!1402057 (= (lemmaListContainsThenExtractedMapContains!164 lt!1712220 key!3287 hashF!1107) lt!1712402)))

(declare-fun bs!874736 () Bool)

(assert (= bs!874736 d!1402057))

(assert (=> bs!874736 m!5301133))

(assert (=> bs!874736 m!5301133))

(declare-fun m!5301497 () Bool)

(assert (=> bs!874736 m!5301497))

(declare-fun m!5301499 () Bool)

(assert (=> bs!874736 m!5301499))

(declare-fun m!5301501 () Bool)

(assert (=> bs!874736 m!5301501))

(assert (=> b!4537344 d!1402057))

(declare-fun b!4537563 () Bool)

(declare-fun e!2827515 () Unit!98070)

(declare-fun lt!1712408 () Unit!98070)

(assert (=> b!4537563 (= e!2827515 lt!1712408)))

(declare-fun lt!1712411 () Unit!98070)

(assert (=> b!4537563 (= lt!1712411 (lemmaContainsKeyImpliesGetValueByKeyDefined!1044 (toList!4396 lt!1712218) key!3287))))

(assert (=> b!4537563 (isDefined!8471 (getValueByKey!1140 (toList!4396 lt!1712218) key!3287))))

(declare-fun lt!1712412 () Unit!98070)

(assert (=> b!4537563 (= lt!1712412 lt!1712411)))

(assert (=> b!4537563 (= lt!1712408 (lemmaInListThenGetKeysListContains!484 (toList!4396 lt!1712218) key!3287))))

(declare-fun call!316383 () Bool)

(assert (=> b!4537563 call!316383))

(declare-fun d!1402059 () Bool)

(declare-fun e!2827514 () Bool)

(assert (=> d!1402059 e!2827514))

(declare-fun res!1890653 () Bool)

(assert (=> d!1402059 (=> res!1890653 e!2827514)))

(declare-fun e!2827518 () Bool)

(assert (=> d!1402059 (= res!1890653 e!2827518)))

(declare-fun res!1890651 () Bool)

(assert (=> d!1402059 (=> (not res!1890651) (not e!2827518))))

(declare-fun lt!1712409 () Bool)

(assert (=> d!1402059 (= res!1890651 (not lt!1712409))))

(declare-fun lt!1712407 () Bool)

(assert (=> d!1402059 (= lt!1712409 lt!1712407)))

(declare-fun lt!1712405 () Unit!98070)

(assert (=> d!1402059 (= lt!1712405 e!2827515)))

(declare-fun c!774979 () Bool)

(assert (=> d!1402059 (= c!774979 lt!1712407)))

(assert (=> d!1402059 (= lt!1712407 (containsKey!1865 (toList!4396 lt!1712218) key!3287))))

(assert (=> d!1402059 (= (contains!13521 lt!1712218 key!3287) lt!1712409)))

(declare-fun b!4537564 () Bool)

(declare-fun e!2827517 () Unit!98070)

(declare-fun Unit!98093 () Unit!98070)

(assert (=> b!4537564 (= e!2827517 Unit!98093)))

(declare-fun b!4537565 () Bool)

(declare-fun e!2827516 () List!50864)

(assert (=> b!4537565 (= e!2827516 (keys!17651 lt!1712218))))

(declare-fun b!4537566 () Bool)

(assert (=> b!4537566 (= e!2827518 (not (contains!13526 (keys!17651 lt!1712218) key!3287)))))

(declare-fun b!4537567 () Bool)

(assert (=> b!4537567 (= e!2827516 (getKeysList!488 (toList!4396 lt!1712218)))))

(declare-fun b!4537568 () Bool)

(assert (=> b!4537568 (= e!2827515 e!2827517)))

(declare-fun c!774978 () Bool)

(assert (=> b!4537568 (= c!774978 call!316383)))

(declare-fun b!4537569 () Bool)

(declare-fun e!2827519 () Bool)

(assert (=> b!4537569 (= e!2827514 e!2827519)))

(declare-fun res!1890652 () Bool)

(assert (=> b!4537569 (=> (not res!1890652) (not e!2827519))))

(assert (=> b!4537569 (= res!1890652 (isDefined!8471 (getValueByKey!1140 (toList!4396 lt!1712218) key!3287)))))

(declare-fun bm!316378 () Bool)

(assert (=> bm!316378 (= call!316383 (contains!13526 e!2827516 key!3287))))

(declare-fun c!774980 () Bool)

(assert (=> bm!316378 (= c!774980 c!774979)))

(declare-fun b!4537570 () Bool)

(assert (=> b!4537570 false))

(declare-fun lt!1712410 () Unit!98070)

(declare-fun lt!1712406 () Unit!98070)

(assert (=> b!4537570 (= lt!1712410 lt!1712406)))

(assert (=> b!4537570 (containsKey!1865 (toList!4396 lt!1712218) key!3287)))

(assert (=> b!4537570 (= lt!1712406 (lemmaInGetKeysListThenContainsKey!487 (toList!4396 lt!1712218) key!3287))))

(declare-fun Unit!98095 () Unit!98070)

(assert (=> b!4537570 (= e!2827517 Unit!98095)))

(declare-fun b!4537571 () Bool)

(assert (=> b!4537571 (= e!2827519 (contains!13526 (keys!17651 lt!1712218) key!3287))))

(assert (= (and d!1402059 c!774979) b!4537563))

(assert (= (and d!1402059 (not c!774979)) b!4537568))

(assert (= (and b!4537568 c!774978) b!4537570))

(assert (= (and b!4537568 (not c!774978)) b!4537564))

(assert (= (or b!4537563 b!4537568) bm!316378))

(assert (= (and bm!316378 c!774980) b!4537567))

(assert (= (and bm!316378 (not c!774980)) b!4537565))

(assert (= (and d!1402059 res!1890651) b!4537566))

(assert (= (and d!1402059 (not res!1890653)) b!4537569))

(assert (= (and b!4537569 res!1890652) b!4537571))

(declare-fun m!5301503 () Bool)

(assert (=> b!4537569 m!5301503))

(assert (=> b!4537569 m!5301503))

(declare-fun m!5301505 () Bool)

(assert (=> b!4537569 m!5301505))

(declare-fun m!5301507 () Bool)

(assert (=> b!4537570 m!5301507))

(declare-fun m!5301509 () Bool)

(assert (=> b!4537570 m!5301509))

(declare-fun m!5301511 () Bool)

(assert (=> b!4537563 m!5301511))

(assert (=> b!4537563 m!5301503))

(assert (=> b!4537563 m!5301503))

(assert (=> b!4537563 m!5301505))

(declare-fun m!5301513 () Bool)

(assert (=> b!4537563 m!5301513))

(assert (=> d!1402059 m!5301507))

(assert (=> b!4537571 m!5301279))

(assert (=> b!4537571 m!5301279))

(declare-fun m!5301515 () Bool)

(assert (=> b!4537571 m!5301515))

(declare-fun m!5301517 () Bool)

(assert (=> bm!316378 m!5301517))

(declare-fun m!5301519 () Bool)

(assert (=> b!4537567 m!5301519))

(assert (=> b!4537566 m!5301279))

(assert (=> b!4537566 m!5301279))

(assert (=> b!4537566 m!5301515))

(assert (=> b!4537565 m!5301279))

(assert (=> b!4537344 d!1402059))

(declare-fun d!1402061 () Bool)

(declare-fun res!1890654 () Bool)

(declare-fun e!2827520 () Bool)

(assert (=> d!1402061 (=> res!1890654 e!2827520)))

(assert (=> d!1402061 (= res!1890654 ((_ is Nil!50739) (toList!4395 lt!1712212)))))

(assert (=> d!1402061 (= (forall!10335 (toList!4395 lt!1712212) lambda!175575) e!2827520)))

(declare-fun b!4537572 () Bool)

(declare-fun e!2827521 () Bool)

(assert (=> b!4537572 (= e!2827520 e!2827521)))

(declare-fun res!1890655 () Bool)

(assert (=> b!4537572 (=> (not res!1890655) (not e!2827521))))

(assert (=> b!4537572 (= res!1890655 (dynLambda!21206 lambda!175575 (h!56616 (toList!4395 lt!1712212))))))

(declare-fun b!4537573 () Bool)

(assert (=> b!4537573 (= e!2827521 (forall!10335 (t!357825 (toList!4395 lt!1712212)) lambda!175575))))

(assert (= (and d!1402061 (not res!1890654)) b!4537572))

(assert (= (and b!4537572 res!1890655) b!4537573))

(declare-fun b_lambda!157625 () Bool)

(assert (=> (not b_lambda!157625) (not b!4537572)))

(declare-fun m!5301521 () Bool)

(assert (=> b!4537572 m!5301521))

(declare-fun m!5301523 () Bool)

(assert (=> b!4537573 m!5301523))

(assert (=> b!4537343 d!1402061))

(declare-fun d!1402063 () Bool)

(assert (=> d!1402063 (= (apply!11931 lt!1712220 hash!344) (get!16675 (getValueByKey!1138 (toList!4395 lt!1712220) hash!344)))))

(declare-fun bs!874737 () Bool)

(assert (= bs!874737 d!1402063))

(assert (=> bs!874737 m!5301155))

(assert (=> bs!874737 m!5301155))

(declare-fun m!5301525 () Bool)

(assert (=> bs!874737 m!5301525))

(assert (=> b!4537342 d!1402063))

(declare-fun bs!874738 () Bool)

(declare-fun d!1402065 () Bool)

(assert (= bs!874738 (and d!1402065 start!450236)))

(declare-fun lambda!175622 () Int)

(assert (=> bs!874738 (not (= lambda!175622 lambda!175575))))

(declare-fun bs!874739 () Bool)

(assert (= bs!874739 (and d!1402065 d!1402057)))

(assert (=> bs!874739 (not (= lambda!175622 lambda!175607))))

(declare-fun bs!874740 () Bool)

(assert (= bs!874740 (and d!1402065 d!1402033)))

(assert (=> bs!874740 (not (= lambda!175622 lambda!175593))))

(declare-fun bs!874741 () Bool)

(assert (= bs!874741 (and d!1402065 d!1402051)))

(assert (=> bs!874741 (not (= lambda!175622 lambda!175597))))

(declare-fun bs!874742 () Bool)

(assert (= bs!874742 (and d!1402065 b!4537329)))

(assert (=> bs!874742 (= lambda!175622 lambda!175576)))

(declare-fun bs!874743 () Bool)

(assert (= bs!874743 (and d!1402065 d!1402021)))

(assert (=> bs!874743 (not (= lambda!175622 lambda!175592))))

(declare-fun bs!874744 () Bool)

(assert (= bs!874744 (and d!1402065 d!1402055)))

(assert (=> bs!874744 (not (= lambda!175622 lambda!175598))))

(declare-fun bs!874745 () Bool)

(assert (= bs!874745 (and d!1402065 d!1402001)))

(assert (=> bs!874745 (not (= lambda!175622 lambda!175589))))

(declare-fun bs!874746 () Bool)

(assert (= bs!874746 (and d!1402065 d!1402035)))

(assert (=> bs!874746 (not (= lambda!175622 lambda!175596))))

(assert (=> d!1402065 true))

(assert (=> d!1402065 (= (allKeysSameHashInMap!1301 lm!1477 hashF!1107) (forall!10335 (toList!4395 lm!1477) lambda!175622))))

(declare-fun bs!874747 () Bool)

(assert (= bs!874747 d!1402065))

(declare-fun m!5301527 () Bool)

(assert (=> bs!874747 m!5301527))

(assert (=> b!4537321 d!1402065))

(declare-fun d!1402067 () Bool)

(declare-fun res!1890662 () Bool)

(declare-fun e!2827528 () Bool)

(assert (=> d!1402067 (=> res!1890662 e!2827528)))

(assert (=> d!1402067 (= res!1890662 (and ((_ is Cons!50738) (_2!28900 lt!1712204)) (= (_1!28899 (h!56615 (_2!28900 lt!1712204))) key!3287)))))

(assert (=> d!1402067 (= (containsKey!1862 (_2!28900 lt!1712204) key!3287) e!2827528)))

(declare-fun b!4537580 () Bool)

(declare-fun e!2827529 () Bool)

(assert (=> b!4537580 (= e!2827528 e!2827529)))

(declare-fun res!1890663 () Bool)

(assert (=> b!4537580 (=> (not res!1890663) (not e!2827529))))

(assert (=> b!4537580 (= res!1890663 ((_ is Cons!50738) (_2!28900 lt!1712204)))))

(declare-fun b!4537581 () Bool)

(assert (=> b!4537581 (= e!2827529 (containsKey!1862 (t!357824 (_2!28900 lt!1712204)) key!3287))))

(assert (= (and d!1402067 (not res!1890662)) b!4537580))

(assert (= (and b!4537580 res!1890663) b!4537581))

(declare-fun m!5301529 () Bool)

(assert (=> b!4537581 m!5301529))

(assert (=> b!4537320 d!1402067))

(declare-fun d!1402069 () Bool)

(declare-fun res!1890674 () Bool)

(declare-fun e!2827538 () Bool)

(assert (=> d!1402069 (=> res!1890674 e!2827538)))

(declare-fun e!2827540 () Bool)

(assert (=> d!1402069 (= res!1890674 e!2827540)))

(declare-fun res!1890675 () Bool)

(assert (=> d!1402069 (=> (not res!1890675) (not e!2827540))))

(assert (=> d!1402069 (= res!1890675 ((_ is Cons!50739) (t!357825 (toList!4395 lm!1477))))))

(assert (=> d!1402069 (= (containsKeyBiggerList!174 (t!357825 (toList!4395 lm!1477)) key!3287) e!2827538)))

(declare-fun b!4537590 () Bool)

(assert (=> b!4537590 (= e!2827540 (containsKey!1862 (_2!28900 (h!56616 (t!357825 (toList!4395 lm!1477)))) key!3287))))

(declare-fun b!4537591 () Bool)

(declare-fun e!2827539 () Bool)

(assert (=> b!4537591 (= e!2827538 e!2827539)))

(declare-fun res!1890676 () Bool)

(assert (=> b!4537591 (=> (not res!1890676) (not e!2827539))))

(assert (=> b!4537591 (= res!1890676 ((_ is Cons!50739) (t!357825 (toList!4395 lm!1477))))))

(declare-fun b!4537592 () Bool)

(assert (=> b!4537592 (= e!2827539 (containsKeyBiggerList!174 (t!357825 (t!357825 (toList!4395 lm!1477))) key!3287))))

(assert (= (and d!1402069 res!1890675) b!4537590))

(assert (= (and d!1402069 (not res!1890674)) b!4537591))

(assert (= (and b!4537591 res!1890676) b!4537592))

(declare-fun m!5301531 () Bool)

(assert (=> b!4537590 m!5301531))

(declare-fun m!5301533 () Bool)

(assert (=> b!4537592 m!5301533))

(assert (=> b!4537341 d!1402069))

(declare-fun d!1402071 () Bool)

(declare-fun res!1890677 () Bool)

(declare-fun e!2827541 () Bool)

(assert (=> d!1402071 (=> res!1890677 e!2827541)))

(declare-fun e!2827543 () Bool)

(assert (=> d!1402071 (= res!1890677 e!2827543)))

(declare-fun res!1890678 () Bool)

(assert (=> d!1402071 (=> (not res!1890678) (not e!2827543))))

(assert (=> d!1402071 (= res!1890678 ((_ is Cons!50739) (toList!4395 lt!1712220)))))

(assert (=> d!1402071 (= (containsKeyBiggerList!174 (toList!4395 lt!1712220) key!3287) e!2827541)))

(declare-fun b!4537593 () Bool)

(assert (=> b!4537593 (= e!2827543 (containsKey!1862 (_2!28900 (h!56616 (toList!4395 lt!1712220))) key!3287))))

(declare-fun b!4537594 () Bool)

(declare-fun e!2827542 () Bool)

(assert (=> b!4537594 (= e!2827541 e!2827542)))

(declare-fun res!1890679 () Bool)

(assert (=> b!4537594 (=> (not res!1890679) (not e!2827542))))

(assert (=> b!4537594 (= res!1890679 ((_ is Cons!50739) (toList!4395 lt!1712220)))))

(declare-fun b!4537595 () Bool)

(assert (=> b!4537595 (= e!2827542 (containsKeyBiggerList!174 (t!357825 (toList!4395 lt!1712220)) key!3287))))

(assert (= (and d!1402071 res!1890678) b!4537593))

(assert (= (and d!1402071 (not res!1890677)) b!4537594))

(assert (= (and b!4537594 res!1890679) b!4537595))

(declare-fun m!5301535 () Bool)

(assert (=> b!4537593 m!5301535))

(declare-fun m!5301537 () Bool)

(assert (=> b!4537595 m!5301537))

(assert (=> b!4537341 d!1402071))

(declare-fun bs!874748 () Bool)

(declare-fun d!1402073 () Bool)

(assert (= bs!874748 (and d!1402073 start!450236)))

(declare-fun lambda!175635 () Int)

(assert (=> bs!874748 (= lambda!175635 lambda!175575)))

(declare-fun bs!874749 () Bool)

(assert (= bs!874749 (and d!1402073 d!1402057)))

(assert (=> bs!874749 (= lambda!175635 lambda!175607)))

(declare-fun bs!874750 () Bool)

(assert (= bs!874750 (and d!1402073 d!1402033)))

(assert (=> bs!874750 (= lambda!175635 lambda!175593)))

(declare-fun bs!874751 () Bool)

(assert (= bs!874751 (and d!1402073 d!1402065)))

(assert (=> bs!874751 (not (= lambda!175635 lambda!175622))))

(declare-fun bs!874752 () Bool)

(assert (= bs!874752 (and d!1402073 d!1402051)))

(assert (=> bs!874752 (= lambda!175635 lambda!175597)))

(declare-fun bs!874753 () Bool)

(assert (= bs!874753 (and d!1402073 b!4537329)))

(assert (=> bs!874753 (not (= lambda!175635 lambda!175576))))

(declare-fun bs!874754 () Bool)

(assert (= bs!874754 (and d!1402073 d!1402021)))

(assert (=> bs!874754 (= lambda!175635 lambda!175592)))

(declare-fun bs!874755 () Bool)

(assert (= bs!874755 (and d!1402073 d!1402055)))

(assert (=> bs!874755 (= lambda!175635 lambda!175598)))

(declare-fun bs!874756 () Bool)

(assert (= bs!874756 (and d!1402073 d!1402001)))

(assert (=> bs!874756 (= lambda!175635 lambda!175589)))

(declare-fun bs!874757 () Bool)

(assert (= bs!874757 (and d!1402073 d!1402035)))

(assert (=> bs!874757 (= lambda!175635 lambda!175596)))

(assert (=> d!1402073 (containsKeyBiggerList!174 (toList!4395 lt!1712220) key!3287)))

(declare-fun lt!1712437 () Unit!98070)

(declare-fun choose!29856 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> d!1402073 (= lt!1712437 (choose!29856 lt!1712220 key!3287 hashF!1107))))

(assert (=> d!1402073 (forall!10335 (toList!4395 lt!1712220) lambda!175635)))

(assert (=> d!1402073 (= (lemmaInLongMapThenContainsKeyBiggerList!110 lt!1712220 key!3287 hashF!1107) lt!1712437)))

(declare-fun bs!874758 () Bool)

(assert (= bs!874758 d!1402073))

(assert (=> bs!874758 m!5301089))

(declare-fun m!5301539 () Bool)

(assert (=> bs!874758 m!5301539))

(declare-fun m!5301541 () Bool)

(assert (=> bs!874758 m!5301541))

(assert (=> b!4537341 d!1402073))

(declare-fun d!1402075 () Bool)

(assert (=> d!1402075 (= (eq!651 lt!1712211 (-!420 lt!1712196 key!3287)) (= (content!8427 (toList!4396 lt!1712211)) (content!8427 (toList!4396 (-!420 lt!1712196 key!3287)))))))

(declare-fun bs!874759 () Bool)

(assert (= bs!874759 d!1402075))

(declare-fun m!5301543 () Bool)

(assert (=> bs!874759 m!5301543))

(declare-fun m!5301545 () Bool)

(assert (=> bs!874759 m!5301545))

(assert (=> b!4537319 d!1402075))

(declare-fun d!1402077 () Bool)

(declare-fun e!2827544 () Bool)

(assert (=> d!1402077 e!2827544))

(declare-fun res!1890680 () Bool)

(assert (=> d!1402077 (=> (not res!1890680) (not e!2827544))))

(declare-fun lt!1712438 () ListMap!3657)

(assert (=> d!1402077 (= res!1890680 (not (contains!13521 lt!1712438 key!3287)))))

(assert (=> d!1402077 (= lt!1712438 (ListMap!3658 (removePresrvNoDuplicatedKeys!164 (toList!4396 lt!1712196) key!3287)))))

(assert (=> d!1402077 (= (-!420 lt!1712196 key!3287) lt!1712438)))

(declare-fun b!4537598 () Bool)

(assert (=> b!4537598 (= e!2827544 (= ((_ map and) (content!8428 (keys!17651 lt!1712196)) ((_ map not) (store ((as const (Array K!12125 Bool)) false) key!3287 true))) (content!8428 (keys!17651 lt!1712438))))))

(assert (= (and d!1402077 res!1890680) b!4537598))

(declare-fun m!5301547 () Bool)

(assert (=> d!1402077 m!5301547))

(declare-fun m!5301549 () Bool)

(assert (=> d!1402077 m!5301549))

(declare-fun m!5301551 () Bool)

(assert (=> b!4537598 m!5301551))

(assert (=> b!4537598 m!5301281))

(assert (=> b!4537598 m!5301551))

(declare-fun m!5301553 () Bool)

(assert (=> b!4537598 m!5301553))

(declare-fun m!5301555 () Bool)

(assert (=> b!4537598 m!5301555))

(declare-fun m!5301557 () Bool)

(assert (=> b!4537598 m!5301557))

(assert (=> b!4537598 m!5301555))

(assert (=> b!4537319 d!1402077))

(declare-fun d!1402079 () Bool)

(declare-fun res!1890684 () Bool)

(declare-fun e!2827548 () Bool)

(assert (=> d!1402079 (=> res!1890684 e!2827548)))

(assert (=> d!1402079 (= res!1890684 (and ((_ is Cons!50738) lt!1712217) (= (_1!28899 (h!56615 lt!1712217)) key!3287)))))

(assert (=> d!1402079 (= (containsKey!1862 lt!1712217 key!3287) e!2827548)))

(declare-fun b!4537604 () Bool)

(declare-fun e!2827549 () Bool)

(assert (=> b!4537604 (= e!2827548 e!2827549)))

(declare-fun res!1890685 () Bool)

(assert (=> b!4537604 (=> (not res!1890685) (not e!2827549))))

(assert (=> b!4537604 (= res!1890685 ((_ is Cons!50738) lt!1712217))))

(declare-fun b!4537605 () Bool)

(assert (=> b!4537605 (= e!2827549 (containsKey!1862 (t!357824 lt!1712217) key!3287))))

(assert (= (and d!1402079 (not res!1890684)) b!4537604))

(assert (= (and b!4537604 res!1890685) b!4537605))

(declare-fun m!5301559 () Bool)

(assert (=> b!4537605 m!5301559))

(assert (=> b!4537318 d!1402079))

(declare-fun d!1402081 () Bool)

(assert (=> d!1402081 (= (eq!651 lt!1712211 lt!1712221) (= (content!8427 (toList!4396 lt!1712211)) (content!8427 (toList!4396 lt!1712221))))))

(declare-fun bs!874760 () Bool)

(assert (= bs!874760 d!1402081))

(assert (=> bs!874760 m!5301543))

(declare-fun m!5301561 () Bool)

(assert (=> bs!874760 m!5301561))

(assert (=> b!4537339 d!1402081))

(declare-fun d!1402083 () Bool)

(declare-fun e!2827550 () Bool)

(assert (=> d!1402083 e!2827550))

(declare-fun res!1890686 () Bool)

(assert (=> d!1402083 (=> (not res!1890686) (not e!2827550))))

(declare-fun lt!1712460 () ListMap!3657)

(assert (=> d!1402083 (= res!1890686 (not (contains!13521 lt!1712460 key!3287)))))

(assert (=> d!1402083 (= lt!1712460 (ListMap!3658 (removePresrvNoDuplicatedKeys!164 (toList!4396 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712218)) key!3287)))))

(assert (=> d!1402083 (= (-!420 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712218) key!3287) lt!1712460)))

(declare-fun b!4537608 () Bool)

(assert (=> b!4537608 (= e!2827550 (= ((_ map and) (content!8428 (keys!17651 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712218))) ((_ map not) (store ((as const (Array K!12125 Bool)) false) key!3287 true))) (content!8428 (keys!17651 lt!1712460))))))

(assert (= (and d!1402083 res!1890686) b!4537608))

(declare-fun m!5301563 () Bool)

(assert (=> d!1402083 m!5301563))

(declare-fun m!5301565 () Bool)

(assert (=> d!1402083 m!5301565))

(assert (=> b!4537608 m!5301123))

(declare-fun m!5301567 () Bool)

(assert (=> b!4537608 m!5301567))

(assert (=> b!4537608 m!5301281))

(assert (=> b!4537608 m!5301567))

(declare-fun m!5301569 () Bool)

(assert (=> b!4537608 m!5301569))

(declare-fun m!5301571 () Bool)

(assert (=> b!4537608 m!5301571))

(declare-fun m!5301573 () Bool)

(assert (=> b!4537608 m!5301573))

(assert (=> b!4537608 m!5301571))

(assert (=> b!4537339 d!1402083))

(declare-fun bs!874866 () Bool)

(declare-fun b!4537726 () Bool)

(assert (= bs!874866 (and b!4537726 b!4537329)))

(declare-fun lambda!175691 () Int)

(assert (=> bs!874866 (not (= lambda!175691 lambda!175577))))

(declare-fun bs!874867 () Bool)

(assert (= bs!874867 (and b!4537726 d!1401955)))

(assert (=> bs!874867 (not (= lambda!175691 lambda!175580))))

(assert (=> b!4537726 true))

(declare-fun bs!874868 () Bool)

(declare-fun b!4537723 () Bool)

(assert (= bs!874868 (and b!4537723 b!4537329)))

(declare-fun lambda!175692 () Int)

(assert (=> bs!874868 (not (= lambda!175692 lambda!175577))))

(declare-fun bs!874869 () Bool)

(assert (= bs!874869 (and b!4537723 d!1401955)))

(assert (=> bs!874869 (not (= lambda!175692 lambda!175580))))

(declare-fun bs!874870 () Bool)

(assert (= bs!874870 (and b!4537723 b!4537726)))

(assert (=> bs!874870 (= lambda!175692 lambda!175691)))

(assert (=> b!4537723 true))

(declare-fun lambda!175693 () Int)

(assert (=> bs!874868 (not (= lambda!175693 lambda!175577))))

(assert (=> bs!874869 (not (= lambda!175693 lambda!175580))))

(declare-fun lt!1712614 () ListMap!3657)

(assert (=> bs!874870 (= (= lt!1712614 lt!1712218) (= lambda!175693 lambda!175691))))

(assert (=> b!4537723 (= (= lt!1712614 lt!1712218) (= lambda!175693 lambda!175692))))

(assert (=> b!4537723 true))

(declare-fun bs!874871 () Bool)

(declare-fun d!1402085 () Bool)

(assert (= bs!874871 (and d!1402085 b!4537723)))

(declare-fun lambda!175694 () Int)

(declare-fun lt!1712607 () ListMap!3657)

(assert (=> bs!874871 (= (= lt!1712607 lt!1712614) (= lambda!175694 lambda!175693))))

(declare-fun bs!874872 () Bool)

(assert (= bs!874872 (and d!1402085 d!1401955)))

(assert (=> bs!874872 (not (= lambda!175694 lambda!175580))))

(declare-fun bs!874873 () Bool)

(assert (= bs!874873 (and d!1402085 b!4537329)))

(assert (=> bs!874873 (not (= lambda!175694 lambda!175577))))

(assert (=> bs!874871 (= (= lt!1712607 lt!1712218) (= lambda!175694 lambda!175692))))

(declare-fun bs!874874 () Bool)

(assert (= bs!874874 (and d!1402085 b!4537726)))

(assert (=> bs!874874 (= (= lt!1712607 lt!1712218) (= lambda!175694 lambda!175691))))

(assert (=> d!1402085 true))

(declare-fun e!2827635 () ListMap!3657)

(assert (=> b!4537723 (= e!2827635 lt!1712614)))

(declare-fun lt!1712615 () ListMap!3657)

(declare-fun +!1598 (ListMap!3657 tuple2!51210) ListMap!3657)

(assert (=> b!4537723 (= lt!1712615 (+!1598 lt!1712218 (h!56615 (_2!28900 lt!1712204))))))

(assert (=> b!4537723 (= lt!1712614 (addToMapMapFromBucket!721 (t!357824 (_2!28900 lt!1712204)) (+!1598 lt!1712218 (h!56615 (_2!28900 lt!1712204)))))))

(declare-fun lt!1712626 () Unit!98070)

(declare-fun call!316410 () Unit!98070)

(assert (=> b!4537723 (= lt!1712626 call!316410)))

(declare-fun call!316412 () Bool)

(assert (=> b!4537723 call!316412))

(declare-fun lt!1712616 () Unit!98070)

(assert (=> b!4537723 (= lt!1712616 lt!1712626)))

(assert (=> b!4537723 (forall!10336 (toList!4396 lt!1712615) lambda!175693)))

(declare-fun lt!1712609 () Unit!98070)

(declare-fun Unit!98098 () Unit!98070)

(assert (=> b!4537723 (= lt!1712609 Unit!98098)))

(assert (=> b!4537723 (forall!10336 (t!357824 (_2!28900 lt!1712204)) lambda!175693)))

(declare-fun lt!1712622 () Unit!98070)

(declare-fun Unit!98099 () Unit!98070)

(assert (=> b!4537723 (= lt!1712622 Unit!98099)))

(declare-fun lt!1712625 () Unit!98070)

(declare-fun Unit!98100 () Unit!98070)

(assert (=> b!4537723 (= lt!1712625 Unit!98100)))

(declare-fun lt!1712618 () Unit!98070)

(assert (=> b!4537723 (= lt!1712618 (forallContained!2597 (toList!4396 lt!1712615) lambda!175693 (h!56615 (_2!28900 lt!1712204))))))

(assert (=> b!4537723 (contains!13521 lt!1712615 (_1!28899 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun lt!1712610 () Unit!98070)

(declare-fun Unit!98101 () Unit!98070)

(assert (=> b!4537723 (= lt!1712610 Unit!98101)))

(assert (=> b!4537723 (contains!13521 lt!1712614 (_1!28899 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun lt!1712623 () Unit!98070)

(declare-fun Unit!98102 () Unit!98070)

(assert (=> b!4537723 (= lt!1712623 Unit!98102)))

(assert (=> b!4537723 (forall!10336 (_2!28900 lt!1712204) lambda!175693)))

(declare-fun lt!1712606 () Unit!98070)

(declare-fun Unit!98103 () Unit!98070)

(assert (=> b!4537723 (= lt!1712606 Unit!98103)))

(assert (=> b!4537723 (forall!10336 (toList!4396 lt!1712615) lambda!175693)))

(declare-fun lt!1712617 () Unit!98070)

(declare-fun Unit!98104 () Unit!98070)

(assert (=> b!4537723 (= lt!1712617 Unit!98104)))

(declare-fun lt!1712608 () Unit!98070)

(declare-fun Unit!98105 () Unit!98070)

(assert (=> b!4537723 (= lt!1712608 Unit!98105)))

(declare-fun lt!1712613 () Unit!98070)

(declare-fun addForallContainsKeyThenBeforeAdding!362 (ListMap!3657 ListMap!3657 K!12125 V!12371) Unit!98070)

(assert (=> b!4537723 (= lt!1712613 (addForallContainsKeyThenBeforeAdding!362 lt!1712218 lt!1712614 (_1!28899 (h!56615 (_2!28900 lt!1712204))) (_2!28899 (h!56615 (_2!28900 lt!1712204)))))))

(assert (=> b!4537723 (forall!10336 (toList!4396 lt!1712218) lambda!175693)))

(declare-fun lt!1712620 () Unit!98070)

(assert (=> b!4537723 (= lt!1712620 lt!1712613)))

(declare-fun call!316411 () Bool)

(assert (=> b!4537723 call!316411))

(declare-fun lt!1712624 () Unit!98070)

(declare-fun Unit!98106 () Unit!98070)

(assert (=> b!4537723 (= lt!1712624 Unit!98106)))

(declare-fun res!1890749 () Bool)

(assert (=> b!4537723 (= res!1890749 (forall!10336 (_2!28900 lt!1712204) lambda!175693))))

(declare-fun e!2827633 () Bool)

(assert (=> b!4537723 (=> (not res!1890749) (not e!2827633))))

(assert (=> b!4537723 e!2827633))

(declare-fun lt!1712621 () Unit!98070)

(declare-fun Unit!98107 () Unit!98070)

(assert (=> b!4537723 (= lt!1712621 Unit!98107)))

(declare-fun b!4537724 () Bool)

(declare-fun res!1890747 () Bool)

(declare-fun e!2827634 () Bool)

(assert (=> b!4537724 (=> (not res!1890747) (not e!2827634))))

(assert (=> b!4537724 (= res!1890747 (forall!10336 (toList!4396 lt!1712218) lambda!175694))))

(assert (=> d!1402085 e!2827634))

(declare-fun res!1890748 () Bool)

(assert (=> d!1402085 (=> (not res!1890748) (not e!2827634))))

(assert (=> d!1402085 (= res!1890748 (forall!10336 (_2!28900 lt!1712204) lambda!175694))))

(assert (=> d!1402085 (= lt!1712607 e!2827635)))

(declare-fun c!775008 () Bool)

(assert (=> d!1402085 (= c!775008 ((_ is Nil!50738) (_2!28900 lt!1712204)))))

(assert (=> d!1402085 (noDuplicateKeys!1194 (_2!28900 lt!1712204))))

(assert (=> d!1402085 (= (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712218) lt!1712607)))

(declare-fun bm!316405 () Bool)

(assert (=> bm!316405 (= call!316411 (forall!10336 (toList!4396 lt!1712218) (ite c!775008 lambda!175691 lambda!175693)))))

(declare-fun bm!316406 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!362 (ListMap!3657) Unit!98070)

(assert (=> bm!316406 (= call!316410 (lemmaContainsAllItsOwnKeys!362 lt!1712218))))

(declare-fun b!4537725 () Bool)

(assert (=> b!4537725 (= e!2827633 (forall!10336 (toList!4396 lt!1712218) lambda!175693))))

(assert (=> b!4537726 (= e!2827635 lt!1712218)))

(declare-fun lt!1712611 () Unit!98070)

(assert (=> b!4537726 (= lt!1712611 call!316410)))

(assert (=> b!4537726 call!316411))

(declare-fun lt!1712612 () Unit!98070)

(assert (=> b!4537726 (= lt!1712612 lt!1712611)))

(assert (=> b!4537726 call!316412))

(declare-fun lt!1712619 () Unit!98070)

(declare-fun Unit!98108 () Unit!98070)

(assert (=> b!4537726 (= lt!1712619 Unit!98108)))

(declare-fun b!4537727 () Bool)

(assert (=> b!4537727 (= e!2827634 (invariantList!1040 (toList!4396 lt!1712607)))))

(declare-fun bm!316407 () Bool)

(assert (=> bm!316407 (= call!316412 (forall!10336 (toList!4396 lt!1712218) (ite c!775008 lambda!175691 lambda!175692)))))

(assert (= (and d!1402085 c!775008) b!4537726))

(assert (= (and d!1402085 (not c!775008)) b!4537723))

(assert (= (and b!4537723 res!1890749) b!4537725))

(assert (= (or b!4537726 b!4537723) bm!316405))

(assert (= (or b!4537726 b!4537723) bm!316407))

(assert (= (or b!4537726 b!4537723) bm!316406))

(assert (= (and d!1402085 res!1890748) b!4537724))

(assert (= (and b!4537724 res!1890747) b!4537727))

(declare-fun m!5301825 () Bool)

(assert (=> b!4537725 m!5301825))

(declare-fun m!5301827 () Bool)

(assert (=> b!4537723 m!5301827))

(declare-fun m!5301829 () Bool)

(assert (=> b!4537723 m!5301829))

(declare-fun m!5301831 () Bool)

(assert (=> b!4537723 m!5301831))

(declare-fun m!5301833 () Bool)

(assert (=> b!4537723 m!5301833))

(declare-fun m!5301835 () Bool)

(assert (=> b!4537723 m!5301835))

(assert (=> b!4537723 m!5301829))

(assert (=> b!4537723 m!5301825))

(declare-fun m!5301837 () Bool)

(assert (=> b!4537723 m!5301837))

(assert (=> b!4537723 m!5301835))

(assert (=> b!4537723 m!5301833))

(declare-fun m!5301839 () Bool)

(assert (=> b!4537723 m!5301839))

(declare-fun m!5301841 () Bool)

(assert (=> b!4537723 m!5301841))

(declare-fun m!5301843 () Bool)

(assert (=> b!4537723 m!5301843))

(declare-fun m!5301845 () Bool)

(assert (=> bm!316407 m!5301845))

(declare-fun m!5301847 () Bool)

(assert (=> d!1402085 m!5301847))

(assert (=> d!1402085 m!5301027))

(declare-fun m!5301849 () Bool)

(assert (=> b!4537724 m!5301849))

(declare-fun m!5301851 () Bool)

(assert (=> b!4537727 m!5301851))

(declare-fun m!5301853 () Bool)

(assert (=> bm!316406 m!5301853))

(declare-fun m!5301855 () Bool)

(assert (=> bm!316405 m!5301855))

(assert (=> b!4537339 d!1402085))

(declare-fun d!1402145 () Bool)

(assert (=> d!1402145 (= (addToMapMapFromBucket!721 (_2!28900 lt!1712204) (-!420 lt!1712218 key!3287)) (-!420 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712218) key!3287))))

(declare-fun lt!1712641 () Unit!98070)

(declare-fun choose!29857 (ListMap!3657 K!12125 List!50862) Unit!98070)

(assert (=> d!1402145 (= lt!1712641 (choose!29857 lt!1712218 key!3287 (_2!28900 lt!1712204)))))

(assert (=> d!1402145 (not (containsKey!1862 (_2!28900 lt!1712204) key!3287))))

(assert (=> d!1402145 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!18 lt!1712218 key!3287 (_2!28900 lt!1712204)) lt!1712641)))

(declare-fun bs!874886 () Bool)

(assert (= bs!874886 d!1402145))

(assert (=> bs!874886 m!5301105))

(declare-fun m!5301899 () Bool)

(assert (=> bs!874886 m!5301899))

(assert (=> bs!874886 m!5301123))

(assert (=> bs!874886 m!5301125))

(assert (=> bs!874886 m!5301123))

(assert (=> bs!874886 m!5301069))

(assert (=> bs!874886 m!5301105))

(declare-fun m!5301901 () Bool)

(assert (=> bs!874886 m!5301901))

(assert (=> b!4537339 d!1402145))

(declare-fun d!1402159 () Bool)

(declare-fun hash!2907 (Hashable!5589 K!12125) (_ BitVec 64))

(assert (=> d!1402159 (= (hash!2903 hashF!1107 key!3287) (hash!2907 hashF!1107 key!3287))))

(declare-fun bs!874887 () Bool)

(assert (= bs!874887 d!1402159))

(declare-fun m!5301903 () Bool)

(assert (=> bs!874887 m!5301903))

(assert (=> b!4537338 d!1402159))

(declare-fun b!4537740 () Bool)

(declare-fun e!2827644 () Unit!98070)

(declare-fun lt!1712645 () Unit!98070)

(assert (=> b!4537740 (= e!2827644 lt!1712645)))

(declare-fun lt!1712648 () Unit!98070)

(assert (=> b!4537740 (= lt!1712648 (lemmaContainsKeyImpliesGetValueByKeyDefined!1044 (toList!4396 lt!1712196) key!3287))))

(assert (=> b!4537740 (isDefined!8471 (getValueByKey!1140 (toList!4396 lt!1712196) key!3287))))

(declare-fun lt!1712649 () Unit!98070)

(assert (=> b!4537740 (= lt!1712649 lt!1712648)))

(assert (=> b!4537740 (= lt!1712645 (lemmaInListThenGetKeysListContains!484 (toList!4396 lt!1712196) key!3287))))

(declare-fun call!316413 () Bool)

(assert (=> b!4537740 call!316413))

(declare-fun d!1402161 () Bool)

(declare-fun e!2827643 () Bool)

(assert (=> d!1402161 e!2827643))

(declare-fun res!1890760 () Bool)

(assert (=> d!1402161 (=> res!1890760 e!2827643)))

(declare-fun e!2827647 () Bool)

(assert (=> d!1402161 (= res!1890760 e!2827647)))

(declare-fun res!1890758 () Bool)

(assert (=> d!1402161 (=> (not res!1890758) (not e!2827647))))

(declare-fun lt!1712646 () Bool)

(assert (=> d!1402161 (= res!1890758 (not lt!1712646))))

(declare-fun lt!1712644 () Bool)

(assert (=> d!1402161 (= lt!1712646 lt!1712644)))

(declare-fun lt!1712642 () Unit!98070)

(assert (=> d!1402161 (= lt!1712642 e!2827644)))

(declare-fun c!775011 () Bool)

(assert (=> d!1402161 (= c!775011 lt!1712644)))

(assert (=> d!1402161 (= lt!1712644 (containsKey!1865 (toList!4396 lt!1712196) key!3287))))

(assert (=> d!1402161 (= (contains!13521 lt!1712196 key!3287) lt!1712646)))

(declare-fun b!4537741 () Bool)

(declare-fun e!2827646 () Unit!98070)

(declare-fun Unit!98109 () Unit!98070)

(assert (=> b!4537741 (= e!2827646 Unit!98109)))

(declare-fun b!4537742 () Bool)

(declare-fun e!2827645 () List!50864)

(assert (=> b!4537742 (= e!2827645 (keys!17651 lt!1712196))))

(declare-fun b!4537743 () Bool)

(assert (=> b!4537743 (= e!2827647 (not (contains!13526 (keys!17651 lt!1712196) key!3287)))))

(declare-fun b!4537744 () Bool)

(assert (=> b!4537744 (= e!2827645 (getKeysList!488 (toList!4396 lt!1712196)))))

(declare-fun b!4537745 () Bool)

(assert (=> b!4537745 (= e!2827644 e!2827646)))

(declare-fun c!775010 () Bool)

(assert (=> b!4537745 (= c!775010 call!316413)))

(declare-fun b!4537746 () Bool)

(declare-fun e!2827648 () Bool)

(assert (=> b!4537746 (= e!2827643 e!2827648)))

(declare-fun res!1890759 () Bool)

(assert (=> b!4537746 (=> (not res!1890759) (not e!2827648))))

(assert (=> b!4537746 (= res!1890759 (isDefined!8471 (getValueByKey!1140 (toList!4396 lt!1712196) key!3287)))))

(declare-fun bm!316408 () Bool)

(assert (=> bm!316408 (= call!316413 (contains!13526 e!2827645 key!3287))))

(declare-fun c!775012 () Bool)

(assert (=> bm!316408 (= c!775012 c!775011)))

(declare-fun b!4537747 () Bool)

(assert (=> b!4537747 false))

(declare-fun lt!1712647 () Unit!98070)

(declare-fun lt!1712643 () Unit!98070)

(assert (=> b!4537747 (= lt!1712647 lt!1712643)))

(assert (=> b!4537747 (containsKey!1865 (toList!4396 lt!1712196) key!3287)))

(assert (=> b!4537747 (= lt!1712643 (lemmaInGetKeysListThenContainsKey!487 (toList!4396 lt!1712196) key!3287))))

(declare-fun Unit!98111 () Unit!98070)

(assert (=> b!4537747 (= e!2827646 Unit!98111)))

(declare-fun b!4537748 () Bool)

(assert (=> b!4537748 (= e!2827648 (contains!13526 (keys!17651 lt!1712196) key!3287))))

(assert (= (and d!1402161 c!775011) b!4537740))

(assert (= (and d!1402161 (not c!775011)) b!4537745))

(assert (= (and b!4537745 c!775010) b!4537747))

(assert (= (and b!4537745 (not c!775010)) b!4537741))

(assert (= (or b!4537740 b!4537745) bm!316408))

(assert (= (and bm!316408 c!775012) b!4537744))

(assert (= (and bm!316408 (not c!775012)) b!4537742))

(assert (= (and d!1402161 res!1890758) b!4537743))

(assert (= (and d!1402161 (not res!1890760)) b!4537746))

(assert (= (and b!4537746 res!1890759) b!4537748))

(declare-fun m!5301905 () Bool)

(assert (=> b!4537746 m!5301905))

(assert (=> b!4537746 m!5301905))

(declare-fun m!5301907 () Bool)

(assert (=> b!4537746 m!5301907))

(declare-fun m!5301909 () Bool)

(assert (=> b!4537747 m!5301909))

(declare-fun m!5301911 () Bool)

(assert (=> b!4537747 m!5301911))

(declare-fun m!5301913 () Bool)

(assert (=> b!4537740 m!5301913))

(assert (=> b!4537740 m!5301905))

(assert (=> b!4537740 m!5301905))

(assert (=> b!4537740 m!5301907))

(declare-fun m!5301915 () Bool)

(assert (=> b!4537740 m!5301915))

(assert (=> d!1402161 m!5301909))

(assert (=> b!4537748 m!5301551))

(assert (=> b!4537748 m!5301551))

(declare-fun m!5301917 () Bool)

(assert (=> b!4537748 m!5301917))

(declare-fun m!5301919 () Bool)

(assert (=> bm!316408 m!5301919))

(declare-fun m!5301921 () Bool)

(assert (=> b!4537744 m!5301921))

(assert (=> b!4537743 m!5301551))

(assert (=> b!4537743 m!5301551))

(assert (=> b!4537743 m!5301917))

(assert (=> b!4537742 m!5301551))

(assert (=> b!4537317 d!1402161))

(declare-fun bs!874888 () Bool)

(declare-fun d!1402163 () Bool)

(assert (= bs!874888 (and d!1402163 start!450236)))

(declare-fun lambda!175696 () Int)

(assert (=> bs!874888 (= lambda!175696 lambda!175575)))

(declare-fun bs!874889 () Bool)

(assert (= bs!874889 (and d!1402163 d!1402057)))

(assert (=> bs!874889 (= lambda!175696 lambda!175607)))

(declare-fun bs!874890 () Bool)

(assert (= bs!874890 (and d!1402163 d!1402033)))

(assert (=> bs!874890 (= lambda!175696 lambda!175593)))

(declare-fun bs!874891 () Bool)

(assert (= bs!874891 (and d!1402163 d!1402065)))

(assert (=> bs!874891 (not (= lambda!175696 lambda!175622))))

(declare-fun bs!874892 () Bool)

(assert (= bs!874892 (and d!1402163 d!1402051)))

(assert (=> bs!874892 (= lambda!175696 lambda!175597)))

(declare-fun bs!874893 () Bool)

(assert (= bs!874893 (and d!1402163 d!1402073)))

(assert (=> bs!874893 (= lambda!175696 lambda!175635)))

(declare-fun bs!874894 () Bool)

(assert (= bs!874894 (and d!1402163 b!4537329)))

(assert (=> bs!874894 (not (= lambda!175696 lambda!175576))))

(declare-fun bs!874895 () Bool)

(assert (= bs!874895 (and d!1402163 d!1402021)))

(assert (=> bs!874895 (= lambda!175696 lambda!175592)))

(declare-fun bs!874896 () Bool)

(assert (= bs!874896 (and d!1402163 d!1402055)))

(assert (=> bs!874896 (= lambda!175696 lambda!175598)))

(declare-fun bs!874897 () Bool)

(assert (= bs!874897 (and d!1402163 d!1402001)))

(assert (=> bs!874897 (= lambda!175696 lambda!175589)))

(declare-fun bs!874898 () Bool)

(assert (= bs!874898 (and d!1402163 d!1402035)))

(assert (=> bs!874898 (= lambda!175696 lambda!175596)))

(declare-fun lt!1712650 () ListMap!3657)

(assert (=> d!1402163 (invariantList!1040 (toList!4396 lt!1712650))))

(declare-fun e!2827649 () ListMap!3657)

(assert (=> d!1402163 (= lt!1712650 e!2827649)))

(declare-fun c!775013 () Bool)

(assert (=> d!1402163 (= c!775013 ((_ is Cons!50739) (toList!4395 lm!1477)))))

(assert (=> d!1402163 (forall!10335 (toList!4395 lm!1477) lambda!175696)))

(assert (=> d!1402163 (= (extractMap!1250 (toList!4395 lm!1477)) lt!1712650)))

(declare-fun b!4537749 () Bool)

(assert (=> b!4537749 (= e!2827649 (addToMapMapFromBucket!721 (_2!28900 (h!56616 (toList!4395 lm!1477))) (extractMap!1250 (t!357825 (toList!4395 lm!1477)))))))

(declare-fun b!4537750 () Bool)

(assert (=> b!4537750 (= e!2827649 (ListMap!3658 Nil!50738))))

(assert (= (and d!1402163 c!775013) b!4537749))

(assert (= (and d!1402163 (not c!775013)) b!4537750))

(declare-fun m!5301923 () Bool)

(assert (=> d!1402163 m!5301923))

(declare-fun m!5301925 () Bool)

(assert (=> d!1402163 m!5301925))

(assert (=> b!4537749 m!5301135))

(assert (=> b!4537749 m!5301135))

(declare-fun m!5301927 () Bool)

(assert (=> b!4537749 m!5301927))

(assert (=> b!4537317 d!1402163))

(declare-fun d!1402165 () Bool)

(declare-fun res!1890761 () Bool)

(declare-fun e!2827650 () Bool)

(assert (=> d!1402165 (=> res!1890761 e!2827650)))

(assert (=> d!1402165 (= res!1890761 (not ((_ is Cons!50738) (_2!28900 lt!1712204))))))

(assert (=> d!1402165 (= (noDuplicateKeys!1194 (_2!28900 lt!1712204)) e!2827650)))

(declare-fun b!4537751 () Bool)

(declare-fun e!2827651 () Bool)

(assert (=> b!4537751 (= e!2827650 e!2827651)))

(declare-fun res!1890762 () Bool)

(assert (=> b!4537751 (=> (not res!1890762) (not e!2827651))))

(assert (=> b!4537751 (= res!1890762 (not (containsKey!1862 (t!357824 (_2!28900 lt!1712204)) (_1!28899 (h!56615 (_2!28900 lt!1712204))))))))

(declare-fun b!4537752 () Bool)

(assert (=> b!4537752 (= e!2827651 (noDuplicateKeys!1194 (t!357824 (_2!28900 lt!1712204))))))

(assert (= (and d!1402165 (not res!1890761)) b!4537751))

(assert (= (and b!4537751 res!1890762) b!4537752))

(declare-fun m!5301929 () Bool)

(assert (=> b!4537751 m!5301929))

(declare-fun m!5301931 () Bool)

(assert (=> b!4537752 m!5301931))

(assert (=> b!4537337 d!1402165))

(declare-fun d!1402167 () Bool)

(assert (=> d!1402167 (dynLambda!21206 lambda!175575 (h!56616 (toList!4395 lm!1477)))))

(declare-fun lt!1712651 () Unit!98070)

(assert (=> d!1402167 (= lt!1712651 (choose!29847 (toList!4395 lm!1477) lambda!175575 (h!56616 (toList!4395 lm!1477))))))

(declare-fun e!2827652 () Bool)

(assert (=> d!1402167 e!2827652))

(declare-fun res!1890763 () Bool)

(assert (=> d!1402167 (=> (not res!1890763) (not e!2827652))))

(assert (=> d!1402167 (= res!1890763 (forall!10335 (toList!4395 lm!1477) lambda!175575))))

(assert (=> d!1402167 (= (forallContained!2596 (toList!4395 lm!1477) lambda!175575 (h!56616 (toList!4395 lm!1477))) lt!1712651)))

(declare-fun b!4537753 () Bool)

(assert (=> b!4537753 (= e!2827652 (contains!13522 (toList!4395 lm!1477) (h!56616 (toList!4395 lm!1477))))))

(assert (= (and d!1402167 res!1890763) b!4537753))

(declare-fun b_lambda!157631 () Bool)

(assert (=> (not b_lambda!157631) (not d!1402167)))

(assert (=> d!1402167 m!5301171))

(declare-fun m!5301933 () Bool)

(assert (=> d!1402167 m!5301933))

(assert (=> d!1402167 m!5301117))

(assert (=> b!4537753 m!5301199))

(assert (=> b!4537337 d!1402167))

(declare-fun d!1402169 () Bool)

(assert (=> d!1402169 (= (head!9470 lt!1712212) (head!9471 (toList!4395 lt!1712212)))))

(declare-fun bs!874899 () Bool)

(assert (= bs!874899 d!1402169))

(declare-fun m!5301935 () Bool)

(assert (=> bs!874899 m!5301935))

(assert (=> b!4537336 d!1402169))

(declare-fun bs!874927 () Bool)

(declare-fun d!1402171 () Bool)

(assert (= bs!874927 (and d!1402171 start!450236)))

(declare-fun lambda!175703 () Int)

(assert (=> bs!874927 (= lambda!175703 lambda!175575)))

(declare-fun bs!874928 () Bool)

(assert (= bs!874928 (and d!1402171 d!1402057)))

(assert (=> bs!874928 (= lambda!175703 lambda!175607)))

(declare-fun bs!874929 () Bool)

(assert (= bs!874929 (and d!1402171 d!1402033)))

(assert (=> bs!874929 (= lambda!175703 lambda!175593)))

(declare-fun bs!874930 () Bool)

(assert (= bs!874930 (and d!1402171 d!1402065)))

(assert (=> bs!874930 (not (= lambda!175703 lambda!175622))))

(declare-fun bs!874931 () Bool)

(assert (= bs!874931 (and d!1402171 d!1402051)))

(assert (=> bs!874931 (= lambda!175703 lambda!175597)))

(declare-fun bs!874932 () Bool)

(assert (= bs!874932 (and d!1402171 d!1402163)))

(assert (=> bs!874932 (= lambda!175703 lambda!175696)))

(declare-fun bs!874933 () Bool)

(assert (= bs!874933 (and d!1402171 d!1402073)))

(assert (=> bs!874933 (= lambda!175703 lambda!175635)))

(declare-fun bs!874934 () Bool)

(assert (= bs!874934 (and d!1402171 b!4537329)))

(assert (=> bs!874934 (not (= lambda!175703 lambda!175576))))

(declare-fun bs!874935 () Bool)

(assert (= bs!874935 (and d!1402171 d!1402021)))

(assert (=> bs!874935 (= lambda!175703 lambda!175592)))

(declare-fun bs!874936 () Bool)

(assert (= bs!874936 (and d!1402171 d!1402055)))

(assert (=> bs!874936 (= lambda!175703 lambda!175598)))

(declare-fun bs!874937 () Bool)

(assert (= bs!874937 (and d!1402171 d!1402001)))

(assert (=> bs!874937 (= lambda!175703 lambda!175589)))

(declare-fun bs!874938 () Bool)

(assert (= bs!874938 (and d!1402171 d!1402035)))

(assert (=> bs!874938 (= lambda!175703 lambda!175596)))

(assert (=> d!1402171 (not (contains!13521 (extractMap!1250 (toList!4395 lm!1477)) key!3287))))

(declare-fun lt!1712659 () Unit!98070)

(declare-fun choose!29859 (ListLongMap!3027 K!12125 Hashable!5589) Unit!98070)

(assert (=> d!1402171 (= lt!1712659 (choose!29859 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1402171 (forall!10335 (toList!4395 lm!1477) lambda!175703)))

(assert (=> d!1402171 (= (lemmaNotInItsHashBucketThenNotInMap!182 lm!1477 key!3287 hashF!1107) lt!1712659)))

(declare-fun bs!874939 () Bool)

(assert (= bs!874939 d!1402171))

(assert (=> bs!874939 m!5301083))

(assert (=> bs!874939 m!5301083))

(declare-fun m!5301973 () Bool)

(assert (=> bs!874939 m!5301973))

(declare-fun m!5301975 () Bool)

(assert (=> bs!874939 m!5301975))

(declare-fun m!5301977 () Bool)

(assert (=> bs!874939 m!5301977))

(assert (=> b!4537314 d!1402171))

(declare-fun d!1402185 () Bool)

(assert (=> d!1402185 (= (eq!651 lt!1712200 lt!1712211) (= (content!8427 (toList!4396 lt!1712200)) (content!8427 (toList!4396 lt!1712211))))))

(declare-fun bs!874940 () Bool)

(assert (= bs!874940 d!1402185))

(declare-fun m!5301979 () Bool)

(assert (=> bs!874940 m!5301979))

(assert (=> bs!874940 m!5301543))

(assert (=> b!4537335 d!1402185))

(declare-fun d!1402187 () Bool)

(assert (=> d!1402187 (= (eq!651 lt!1712222 lt!1712211) (= (content!8427 (toList!4396 lt!1712222)) (content!8427 (toList!4396 lt!1712211))))))

(declare-fun bs!874941 () Bool)

(assert (= bs!874941 d!1402187))

(declare-fun m!5301981 () Bool)

(assert (=> bs!874941 m!5301981))

(assert (=> bs!874941 m!5301543))

(assert (=> b!4537335 d!1402187))

(declare-fun bs!874942 () Bool)

(declare-fun b!4537760 () Bool)

(assert (= bs!874942 (and b!4537760 b!4537723)))

(declare-fun lambda!175704 () Int)

(assert (=> bs!874942 (= (= lt!1712206 lt!1712614) (= lambda!175704 lambda!175693))))

(declare-fun bs!874943 () Bool)

(assert (= bs!874943 (and b!4537760 d!1401955)))

(assert (=> bs!874943 (not (= lambda!175704 lambda!175580))))

(declare-fun bs!874944 () Bool)

(assert (= bs!874944 (and b!4537760 b!4537329)))

(assert (=> bs!874944 (not (= lambda!175704 lambda!175577))))

(assert (=> bs!874942 (= (= lt!1712206 lt!1712218) (= lambda!175704 lambda!175692))))

(declare-fun bs!874945 () Bool)

(assert (= bs!874945 (and b!4537760 d!1402085)))

(assert (=> bs!874945 (= (= lt!1712206 lt!1712607) (= lambda!175704 lambda!175694))))

(declare-fun bs!874946 () Bool)

(assert (= bs!874946 (and b!4537760 b!4537726)))

(assert (=> bs!874946 (= (= lt!1712206 lt!1712218) (= lambda!175704 lambda!175691))))

(assert (=> b!4537760 true))

(declare-fun bs!874947 () Bool)

(declare-fun b!4537757 () Bool)

(assert (= bs!874947 (and b!4537757 b!4537723)))

(declare-fun lambda!175705 () Int)

(assert (=> bs!874947 (= (= lt!1712206 lt!1712614) (= lambda!175705 lambda!175693))))

(declare-fun bs!874948 () Bool)

(assert (= bs!874948 (and b!4537757 d!1401955)))

(assert (=> bs!874948 (not (= lambda!175705 lambda!175580))))

(declare-fun bs!874949 () Bool)

(assert (= bs!874949 (and b!4537757 b!4537329)))

(assert (=> bs!874949 (not (= lambda!175705 lambda!175577))))

(assert (=> bs!874947 (= (= lt!1712206 lt!1712218) (= lambda!175705 lambda!175692))))

(declare-fun bs!874950 () Bool)

(assert (= bs!874950 (and b!4537757 d!1402085)))

(assert (=> bs!874950 (= (= lt!1712206 lt!1712607) (= lambda!175705 lambda!175694))))

(declare-fun bs!874951 () Bool)

(assert (= bs!874951 (and b!4537757 b!4537726)))

(assert (=> bs!874951 (= (= lt!1712206 lt!1712218) (= lambda!175705 lambda!175691))))

(declare-fun bs!874952 () Bool)

(assert (= bs!874952 (and b!4537757 b!4537760)))

(assert (=> bs!874952 (= lambda!175705 lambda!175704)))

(assert (=> b!4537757 true))

(declare-fun lt!1712668 () ListMap!3657)

(declare-fun lambda!175706 () Int)

(assert (=> bs!874947 (= (= lt!1712668 lt!1712614) (= lambda!175706 lambda!175693))))

(assert (=> bs!874948 (not (= lambda!175706 lambda!175580))))

(assert (=> bs!874949 (not (= lambda!175706 lambda!175577))))

(assert (=> bs!874947 (= (= lt!1712668 lt!1712218) (= lambda!175706 lambda!175692))))

(assert (=> bs!874950 (= (= lt!1712668 lt!1712607) (= lambda!175706 lambda!175694))))

(assert (=> bs!874951 (= (= lt!1712668 lt!1712218) (= lambda!175706 lambda!175691))))

(assert (=> bs!874952 (= (= lt!1712668 lt!1712206) (= lambda!175706 lambda!175704))))

(assert (=> b!4537757 (= (= lt!1712668 lt!1712206) (= lambda!175706 lambda!175705))))

(assert (=> b!4537757 true))

(declare-fun bs!874953 () Bool)

(declare-fun d!1402189 () Bool)

(assert (= bs!874953 (and d!1402189 b!4537723)))

(declare-fun lambda!175707 () Int)

(declare-fun lt!1712661 () ListMap!3657)

(assert (=> bs!874953 (= (= lt!1712661 lt!1712614) (= lambda!175707 lambda!175693))))

(declare-fun bs!874954 () Bool)

(assert (= bs!874954 (and d!1402189 d!1401955)))

(assert (=> bs!874954 (not (= lambda!175707 lambda!175580))))

(declare-fun bs!874955 () Bool)

(assert (= bs!874955 (and d!1402189 b!4537329)))

(assert (=> bs!874955 (not (= lambda!175707 lambda!175577))))

(assert (=> bs!874953 (= (= lt!1712661 lt!1712218) (= lambda!175707 lambda!175692))))

(declare-fun bs!874956 () Bool)

(assert (= bs!874956 (and d!1402189 d!1402085)))

(assert (=> bs!874956 (= (= lt!1712661 lt!1712607) (= lambda!175707 lambda!175694))))

(declare-fun bs!874957 () Bool)

(assert (= bs!874957 (and d!1402189 b!4537726)))

(assert (=> bs!874957 (= (= lt!1712661 lt!1712218) (= lambda!175707 lambda!175691))))

(declare-fun bs!874958 () Bool)

(assert (= bs!874958 (and d!1402189 b!4537760)))

(assert (=> bs!874958 (= (= lt!1712661 lt!1712206) (= lambda!175707 lambda!175704))))

(declare-fun bs!874959 () Bool)

(assert (= bs!874959 (and d!1402189 b!4537757)))

(assert (=> bs!874959 (= (= lt!1712661 lt!1712206) (= lambda!175707 lambda!175705))))

(assert (=> bs!874959 (= (= lt!1712661 lt!1712668) (= lambda!175707 lambda!175706))))

(assert (=> d!1402189 true))

(declare-fun e!2827657 () ListMap!3657)

(assert (=> b!4537757 (= e!2827657 lt!1712668)))

(declare-fun lt!1712669 () ListMap!3657)

(assert (=> b!4537757 (= lt!1712669 (+!1598 lt!1712206 (h!56615 (_2!28900 lt!1712204))))))

(assert (=> b!4537757 (= lt!1712668 (addToMapMapFromBucket!721 (t!357824 (_2!28900 lt!1712204)) (+!1598 lt!1712206 (h!56615 (_2!28900 lt!1712204)))))))

(declare-fun lt!1712680 () Unit!98070)

(declare-fun call!316414 () Unit!98070)

(assert (=> b!4537757 (= lt!1712680 call!316414)))

(declare-fun call!316416 () Bool)

(assert (=> b!4537757 call!316416))

(declare-fun lt!1712670 () Unit!98070)

(assert (=> b!4537757 (= lt!1712670 lt!1712680)))

(assert (=> b!4537757 (forall!10336 (toList!4396 lt!1712669) lambda!175706)))

(declare-fun lt!1712663 () Unit!98070)

(declare-fun Unit!98124 () Unit!98070)

(assert (=> b!4537757 (= lt!1712663 Unit!98124)))

(assert (=> b!4537757 (forall!10336 (t!357824 (_2!28900 lt!1712204)) lambda!175706)))

(declare-fun lt!1712676 () Unit!98070)

(declare-fun Unit!98125 () Unit!98070)

(assert (=> b!4537757 (= lt!1712676 Unit!98125)))

(declare-fun lt!1712679 () Unit!98070)

(declare-fun Unit!98126 () Unit!98070)

(assert (=> b!4537757 (= lt!1712679 Unit!98126)))

(declare-fun lt!1712672 () Unit!98070)

(assert (=> b!4537757 (= lt!1712672 (forallContained!2597 (toList!4396 lt!1712669) lambda!175706 (h!56615 (_2!28900 lt!1712204))))))

(assert (=> b!4537757 (contains!13521 lt!1712669 (_1!28899 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun lt!1712664 () Unit!98070)

(declare-fun Unit!98127 () Unit!98070)

(assert (=> b!4537757 (= lt!1712664 Unit!98127)))

(assert (=> b!4537757 (contains!13521 lt!1712668 (_1!28899 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun lt!1712677 () Unit!98070)

(declare-fun Unit!98128 () Unit!98070)

(assert (=> b!4537757 (= lt!1712677 Unit!98128)))

(assert (=> b!4537757 (forall!10336 (_2!28900 lt!1712204) lambda!175706)))

(declare-fun lt!1712660 () Unit!98070)

(declare-fun Unit!98129 () Unit!98070)

(assert (=> b!4537757 (= lt!1712660 Unit!98129)))

(assert (=> b!4537757 (forall!10336 (toList!4396 lt!1712669) lambda!175706)))

(declare-fun lt!1712671 () Unit!98070)

(declare-fun Unit!98130 () Unit!98070)

(assert (=> b!4537757 (= lt!1712671 Unit!98130)))

(declare-fun lt!1712662 () Unit!98070)

(declare-fun Unit!98131 () Unit!98070)

(assert (=> b!4537757 (= lt!1712662 Unit!98131)))

(declare-fun lt!1712667 () Unit!98070)

(assert (=> b!4537757 (= lt!1712667 (addForallContainsKeyThenBeforeAdding!362 lt!1712206 lt!1712668 (_1!28899 (h!56615 (_2!28900 lt!1712204))) (_2!28899 (h!56615 (_2!28900 lt!1712204)))))))

(assert (=> b!4537757 (forall!10336 (toList!4396 lt!1712206) lambda!175706)))

(declare-fun lt!1712674 () Unit!98070)

(assert (=> b!4537757 (= lt!1712674 lt!1712667)))

(declare-fun call!316415 () Bool)

(assert (=> b!4537757 call!316415))

(declare-fun lt!1712678 () Unit!98070)

(declare-fun Unit!98132 () Unit!98070)

(assert (=> b!4537757 (= lt!1712678 Unit!98132)))

(declare-fun res!1890767 () Bool)

(assert (=> b!4537757 (= res!1890767 (forall!10336 (_2!28900 lt!1712204) lambda!175706))))

(declare-fun e!2827655 () Bool)

(assert (=> b!4537757 (=> (not res!1890767) (not e!2827655))))

(assert (=> b!4537757 e!2827655))

(declare-fun lt!1712675 () Unit!98070)

(declare-fun Unit!98133 () Unit!98070)

(assert (=> b!4537757 (= lt!1712675 Unit!98133)))

(declare-fun b!4537758 () Bool)

(declare-fun res!1890765 () Bool)

(declare-fun e!2827656 () Bool)

(assert (=> b!4537758 (=> (not res!1890765) (not e!2827656))))

(assert (=> b!4537758 (= res!1890765 (forall!10336 (toList!4396 lt!1712206) lambda!175707))))

(assert (=> d!1402189 e!2827656))

(declare-fun res!1890766 () Bool)

(assert (=> d!1402189 (=> (not res!1890766) (not e!2827656))))

(assert (=> d!1402189 (= res!1890766 (forall!10336 (_2!28900 lt!1712204) lambda!175707))))

(assert (=> d!1402189 (= lt!1712661 e!2827657)))

(declare-fun c!775015 () Bool)

(assert (=> d!1402189 (= c!775015 ((_ is Nil!50738) (_2!28900 lt!1712204)))))

(assert (=> d!1402189 (noDuplicateKeys!1194 (_2!28900 lt!1712204))))

(assert (=> d!1402189 (= (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712206) lt!1712661)))

(declare-fun bm!316409 () Bool)

(assert (=> bm!316409 (= call!316415 (forall!10336 (toList!4396 lt!1712206) (ite c!775015 lambda!175704 lambda!175706)))))

(declare-fun bm!316410 () Bool)

(assert (=> bm!316410 (= call!316414 (lemmaContainsAllItsOwnKeys!362 lt!1712206))))

(declare-fun b!4537759 () Bool)

(assert (=> b!4537759 (= e!2827655 (forall!10336 (toList!4396 lt!1712206) lambda!175706))))

(assert (=> b!4537760 (= e!2827657 lt!1712206)))

(declare-fun lt!1712665 () Unit!98070)

(assert (=> b!4537760 (= lt!1712665 call!316414)))

(assert (=> b!4537760 call!316415))

(declare-fun lt!1712666 () Unit!98070)

(assert (=> b!4537760 (= lt!1712666 lt!1712665)))

(assert (=> b!4537760 call!316416))

(declare-fun lt!1712673 () Unit!98070)

(declare-fun Unit!98134 () Unit!98070)

(assert (=> b!4537760 (= lt!1712673 Unit!98134)))

(declare-fun b!4537761 () Bool)

(assert (=> b!4537761 (= e!2827656 (invariantList!1040 (toList!4396 lt!1712661)))))

(declare-fun bm!316411 () Bool)

(assert (=> bm!316411 (= call!316416 (forall!10336 (toList!4396 lt!1712206) (ite c!775015 lambda!175704 lambda!175705)))))

(assert (= (and d!1402189 c!775015) b!4537760))

(assert (= (and d!1402189 (not c!775015)) b!4537757))

(assert (= (and b!4537757 res!1890767) b!4537759))

(assert (= (or b!4537760 b!4537757) bm!316409))

(assert (= (or b!4537760 b!4537757) bm!316411))

(assert (= (or b!4537760 b!4537757) bm!316410))

(assert (= (and d!1402189 res!1890766) b!4537758))

(assert (= (and b!4537758 res!1890765) b!4537761))

(declare-fun m!5301983 () Bool)

(assert (=> b!4537759 m!5301983))

(declare-fun m!5301985 () Bool)

(assert (=> b!4537757 m!5301985))

(declare-fun m!5301987 () Bool)

(assert (=> b!4537757 m!5301987))

(declare-fun m!5301989 () Bool)

(assert (=> b!4537757 m!5301989))

(declare-fun m!5301991 () Bool)

(assert (=> b!4537757 m!5301991))

(declare-fun m!5301993 () Bool)

(assert (=> b!4537757 m!5301993))

(assert (=> b!4537757 m!5301987))

(assert (=> b!4537757 m!5301983))

(declare-fun m!5301995 () Bool)

(assert (=> b!4537757 m!5301995))

(assert (=> b!4537757 m!5301993))

(assert (=> b!4537757 m!5301991))

(declare-fun m!5301997 () Bool)

(assert (=> b!4537757 m!5301997))

(declare-fun m!5301999 () Bool)

(assert (=> b!4537757 m!5301999))

(declare-fun m!5302001 () Bool)

(assert (=> b!4537757 m!5302001))

(declare-fun m!5302003 () Bool)

(assert (=> bm!316411 m!5302003))

(declare-fun m!5302005 () Bool)

(assert (=> d!1402189 m!5302005))

(assert (=> d!1402189 m!5301027))

(declare-fun m!5302007 () Bool)

(assert (=> b!4537758 m!5302007))

(declare-fun m!5302009 () Bool)

(assert (=> b!4537761 m!5302009))

(declare-fun m!5302011 () Bool)

(assert (=> bm!316410 m!5302011))

(declare-fun m!5302013 () Bool)

(assert (=> bm!316409 m!5302013))

(assert (=> b!4537335 d!1402189))

(declare-fun d!1402191 () Bool)

(assert (=> d!1402191 (eq!651 (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712197) (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712206))))

(declare-fun lt!1712686 () Unit!98070)

(declare-fun choose!29860 (ListMap!3657 ListMap!3657 List!50862) Unit!98070)

(assert (=> d!1402191 (= lt!1712686 (choose!29860 lt!1712197 lt!1712206 (_2!28900 lt!1712204)))))

(assert (=> d!1402191 (noDuplicateKeys!1194 (_2!28900 lt!1712204))))

(assert (=> d!1402191 (= (lemmaAddToMapFromBucketPreservesEquivalence!70 lt!1712197 lt!1712206 (_2!28900 lt!1712204)) lt!1712686)))

(declare-fun bs!874980 () Bool)

(assert (= bs!874980 d!1402191))

(assert (=> bs!874980 m!5301027))

(assert (=> bs!874980 m!5301113))

(assert (=> bs!874980 m!5301039))

(declare-fun m!5302037 () Bool)

(assert (=> bs!874980 m!5302037))

(assert (=> bs!874980 m!5301039))

(declare-fun m!5302039 () Bool)

(assert (=> bs!874980 m!5302039))

(assert (=> bs!874980 m!5301113))

(assert (=> b!4537335 d!1402191))

(declare-fun d!1402207 () Bool)

(assert (=> d!1402207 (= (eq!651 lt!1712200 lt!1712222) (= (content!8427 (toList!4396 lt!1712200)) (content!8427 (toList!4396 lt!1712222))))))

(declare-fun bs!874981 () Bool)

(assert (= bs!874981 d!1402207))

(assert (=> bs!874981 m!5301979))

(assert (=> bs!874981 m!5301981))

(assert (=> b!4537334 d!1402207))

(declare-fun bs!874982 () Bool)

(declare-fun b!4537777 () Bool)

(assert (= bs!874982 (and b!4537777 b!4537723)))

(declare-fun lambda!175711 () Int)

(assert (=> bs!874982 (= (= lt!1712197 lt!1712614) (= lambda!175711 lambda!175693))))

(declare-fun bs!874983 () Bool)

(assert (= bs!874983 (and b!4537777 d!1401955)))

(assert (=> bs!874983 (not (= lambda!175711 lambda!175580))))

(declare-fun bs!874984 () Bool)

(assert (= bs!874984 (and b!4537777 b!4537329)))

(assert (=> bs!874984 (not (= lambda!175711 lambda!175577))))

(assert (=> bs!874982 (= (= lt!1712197 lt!1712218) (= lambda!175711 lambda!175692))))

(declare-fun bs!874985 () Bool)

(assert (= bs!874985 (and b!4537777 b!4537726)))

(assert (=> bs!874985 (= (= lt!1712197 lt!1712218) (= lambda!175711 lambda!175691))))

(declare-fun bs!874986 () Bool)

(assert (= bs!874986 (and b!4537777 b!4537760)))

(assert (=> bs!874986 (= (= lt!1712197 lt!1712206) (= lambda!175711 lambda!175704))))

(declare-fun bs!874987 () Bool)

(assert (= bs!874987 (and b!4537777 b!4537757)))

(assert (=> bs!874987 (= (= lt!1712197 lt!1712206) (= lambda!175711 lambda!175705))))

(assert (=> bs!874987 (= (= lt!1712197 lt!1712668) (= lambda!175711 lambda!175706))))

(declare-fun bs!874988 () Bool)

(assert (= bs!874988 (and b!4537777 d!1402189)))

(assert (=> bs!874988 (= (= lt!1712197 lt!1712661) (= lambda!175711 lambda!175707))))

(declare-fun bs!874989 () Bool)

(assert (= bs!874989 (and b!4537777 d!1402085)))

(assert (=> bs!874989 (= (= lt!1712197 lt!1712607) (= lambda!175711 lambda!175694))))

(assert (=> b!4537777 true))

(declare-fun bs!874990 () Bool)

(declare-fun b!4537774 () Bool)

(assert (= bs!874990 (and b!4537774 b!4537723)))

(declare-fun lambda!175712 () Int)

(assert (=> bs!874990 (= (= lt!1712197 lt!1712614) (= lambda!175712 lambda!175693))))

(declare-fun bs!874991 () Bool)

(assert (= bs!874991 (and b!4537774 d!1401955)))

(assert (=> bs!874991 (not (= lambda!175712 lambda!175580))))

(declare-fun bs!874992 () Bool)

(assert (= bs!874992 (and b!4537774 b!4537329)))

(assert (=> bs!874992 (not (= lambda!175712 lambda!175577))))

(declare-fun bs!874993 () Bool)

(assert (= bs!874993 (and b!4537774 b!4537726)))

(assert (=> bs!874993 (= (= lt!1712197 lt!1712218) (= lambda!175712 lambda!175691))))

(declare-fun bs!874994 () Bool)

(assert (= bs!874994 (and b!4537774 b!4537760)))

(assert (=> bs!874994 (= (= lt!1712197 lt!1712206) (= lambda!175712 lambda!175704))))

(declare-fun bs!874995 () Bool)

(assert (= bs!874995 (and b!4537774 b!4537757)))

(assert (=> bs!874995 (= (= lt!1712197 lt!1712206) (= lambda!175712 lambda!175705))))

(assert (=> bs!874995 (= (= lt!1712197 lt!1712668) (= lambda!175712 lambda!175706))))

(declare-fun bs!874996 () Bool)

(assert (= bs!874996 (and b!4537774 b!4537777)))

(assert (=> bs!874996 (= lambda!175712 lambda!175711)))

(assert (=> bs!874990 (= (= lt!1712197 lt!1712218) (= lambda!175712 lambda!175692))))

(declare-fun bs!874997 () Bool)

(assert (= bs!874997 (and b!4537774 d!1402189)))

(assert (=> bs!874997 (= (= lt!1712197 lt!1712661) (= lambda!175712 lambda!175707))))

(declare-fun bs!874998 () Bool)

(assert (= bs!874998 (and b!4537774 d!1402085)))

(assert (=> bs!874998 (= (= lt!1712197 lt!1712607) (= lambda!175712 lambda!175694))))

(assert (=> b!4537774 true))

(declare-fun lt!1712695 () ListMap!3657)

(declare-fun lambda!175713 () Int)

(assert (=> bs!874990 (= (= lt!1712695 lt!1712614) (= lambda!175713 lambda!175693))))

(assert (=> bs!874991 (not (= lambda!175713 lambda!175580))))

(assert (=> b!4537774 (= (= lt!1712695 lt!1712197) (= lambda!175713 lambda!175712))))

(assert (=> bs!874992 (not (= lambda!175713 lambda!175577))))

(assert (=> bs!874993 (= (= lt!1712695 lt!1712218) (= lambda!175713 lambda!175691))))

(assert (=> bs!874994 (= (= lt!1712695 lt!1712206) (= lambda!175713 lambda!175704))))

(assert (=> bs!874995 (= (= lt!1712695 lt!1712206) (= lambda!175713 lambda!175705))))

(assert (=> bs!874995 (= (= lt!1712695 lt!1712668) (= lambda!175713 lambda!175706))))

(assert (=> bs!874996 (= (= lt!1712695 lt!1712197) (= lambda!175713 lambda!175711))))

(assert (=> bs!874990 (= (= lt!1712695 lt!1712218) (= lambda!175713 lambda!175692))))

(assert (=> bs!874997 (= (= lt!1712695 lt!1712661) (= lambda!175713 lambda!175707))))

(assert (=> bs!874998 (= (= lt!1712695 lt!1712607) (= lambda!175713 lambda!175694))))

(assert (=> b!4537774 true))

(declare-fun bs!874999 () Bool)

(declare-fun d!1402209 () Bool)

(assert (= bs!874999 (and d!1402209 b!4537723)))

(declare-fun lambda!175714 () Int)

(declare-fun lt!1712688 () ListMap!3657)

(assert (=> bs!874999 (= (= lt!1712688 lt!1712614) (= lambda!175714 lambda!175693))))

(declare-fun bs!875000 () Bool)

(assert (= bs!875000 (and d!1402209 d!1401955)))

(assert (=> bs!875000 (not (= lambda!175714 lambda!175580))))

(declare-fun bs!875001 () Bool)

(assert (= bs!875001 (and d!1402209 b!4537774)))

(assert (=> bs!875001 (= (= lt!1712688 lt!1712197) (= lambda!175714 lambda!175712))))

(declare-fun bs!875002 () Bool)

(assert (= bs!875002 (and d!1402209 b!4537329)))

(assert (=> bs!875002 (not (= lambda!175714 lambda!175577))))

(declare-fun bs!875003 () Bool)

(assert (= bs!875003 (and d!1402209 b!4537726)))

(assert (=> bs!875003 (= (= lt!1712688 lt!1712218) (= lambda!175714 lambda!175691))))

(declare-fun bs!875004 () Bool)

(assert (= bs!875004 (and d!1402209 b!4537760)))

(assert (=> bs!875004 (= (= lt!1712688 lt!1712206) (= lambda!175714 lambda!175704))))

(declare-fun bs!875005 () Bool)

(assert (= bs!875005 (and d!1402209 b!4537757)))

(assert (=> bs!875005 (= (= lt!1712688 lt!1712206) (= lambda!175714 lambda!175705))))

(assert (=> bs!875005 (= (= lt!1712688 lt!1712668) (= lambda!175714 lambda!175706))))

(assert (=> bs!875001 (= (= lt!1712688 lt!1712695) (= lambda!175714 lambda!175713))))

(declare-fun bs!875006 () Bool)

(assert (= bs!875006 (and d!1402209 b!4537777)))

(assert (=> bs!875006 (= (= lt!1712688 lt!1712197) (= lambda!175714 lambda!175711))))

(assert (=> bs!874999 (= (= lt!1712688 lt!1712218) (= lambda!175714 lambda!175692))))

(declare-fun bs!875007 () Bool)

(assert (= bs!875007 (and d!1402209 d!1402189)))

(assert (=> bs!875007 (= (= lt!1712688 lt!1712661) (= lambda!175714 lambda!175707))))

(declare-fun bs!875008 () Bool)

(assert (= bs!875008 (and d!1402209 d!1402085)))

(assert (=> bs!875008 (= (= lt!1712688 lt!1712607) (= lambda!175714 lambda!175694))))

(assert (=> d!1402209 true))

(declare-fun e!2827668 () ListMap!3657)

(assert (=> b!4537774 (= e!2827668 lt!1712695)))

(declare-fun lt!1712696 () ListMap!3657)

(assert (=> b!4537774 (= lt!1712696 (+!1598 lt!1712197 (h!56615 (_2!28900 lt!1712204))))))

(assert (=> b!4537774 (= lt!1712695 (addToMapMapFromBucket!721 (t!357824 (_2!28900 lt!1712204)) (+!1598 lt!1712197 (h!56615 (_2!28900 lt!1712204)))))))

(declare-fun lt!1712707 () Unit!98070)

(declare-fun call!316417 () Unit!98070)

(assert (=> b!4537774 (= lt!1712707 call!316417)))

(declare-fun call!316419 () Bool)

(assert (=> b!4537774 call!316419))

(declare-fun lt!1712697 () Unit!98070)

(assert (=> b!4537774 (= lt!1712697 lt!1712707)))

(assert (=> b!4537774 (forall!10336 (toList!4396 lt!1712696) lambda!175713)))

(declare-fun lt!1712690 () Unit!98070)

(declare-fun Unit!98136 () Unit!98070)

(assert (=> b!4537774 (= lt!1712690 Unit!98136)))

(assert (=> b!4537774 (forall!10336 (t!357824 (_2!28900 lt!1712204)) lambda!175713)))

(declare-fun lt!1712703 () Unit!98070)

(declare-fun Unit!98137 () Unit!98070)

(assert (=> b!4537774 (= lt!1712703 Unit!98137)))

(declare-fun lt!1712706 () Unit!98070)

(declare-fun Unit!98138 () Unit!98070)

(assert (=> b!4537774 (= lt!1712706 Unit!98138)))

(declare-fun lt!1712699 () Unit!98070)

(assert (=> b!4537774 (= lt!1712699 (forallContained!2597 (toList!4396 lt!1712696) lambda!175713 (h!56615 (_2!28900 lt!1712204))))))

(assert (=> b!4537774 (contains!13521 lt!1712696 (_1!28899 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun lt!1712691 () Unit!98070)

(declare-fun Unit!98139 () Unit!98070)

(assert (=> b!4537774 (= lt!1712691 Unit!98139)))

(assert (=> b!4537774 (contains!13521 lt!1712695 (_1!28899 (h!56615 (_2!28900 lt!1712204))))))

(declare-fun lt!1712704 () Unit!98070)

(declare-fun Unit!98140 () Unit!98070)

(assert (=> b!4537774 (= lt!1712704 Unit!98140)))

(assert (=> b!4537774 (forall!10336 (_2!28900 lt!1712204) lambda!175713)))

(declare-fun lt!1712687 () Unit!98070)

(declare-fun Unit!98141 () Unit!98070)

(assert (=> b!4537774 (= lt!1712687 Unit!98141)))

(assert (=> b!4537774 (forall!10336 (toList!4396 lt!1712696) lambda!175713)))

(declare-fun lt!1712698 () Unit!98070)

(declare-fun Unit!98142 () Unit!98070)

(assert (=> b!4537774 (= lt!1712698 Unit!98142)))

(declare-fun lt!1712689 () Unit!98070)

(declare-fun Unit!98143 () Unit!98070)

(assert (=> b!4537774 (= lt!1712689 Unit!98143)))

(declare-fun lt!1712694 () Unit!98070)

(assert (=> b!4537774 (= lt!1712694 (addForallContainsKeyThenBeforeAdding!362 lt!1712197 lt!1712695 (_1!28899 (h!56615 (_2!28900 lt!1712204))) (_2!28899 (h!56615 (_2!28900 lt!1712204)))))))

(assert (=> b!4537774 (forall!10336 (toList!4396 lt!1712197) lambda!175713)))

(declare-fun lt!1712701 () Unit!98070)

(assert (=> b!4537774 (= lt!1712701 lt!1712694)))

(declare-fun call!316418 () Bool)

(assert (=> b!4537774 call!316418))

(declare-fun lt!1712705 () Unit!98070)

(declare-fun Unit!98144 () Unit!98070)

(assert (=> b!4537774 (= lt!1712705 Unit!98144)))

(declare-fun res!1890772 () Bool)

(assert (=> b!4537774 (= res!1890772 (forall!10336 (_2!28900 lt!1712204) lambda!175713))))

(declare-fun e!2827666 () Bool)

(assert (=> b!4537774 (=> (not res!1890772) (not e!2827666))))

(assert (=> b!4537774 e!2827666))

(declare-fun lt!1712702 () Unit!98070)

(declare-fun Unit!98145 () Unit!98070)

(assert (=> b!4537774 (= lt!1712702 Unit!98145)))

(declare-fun b!4537775 () Bool)

(declare-fun res!1890770 () Bool)

(declare-fun e!2827667 () Bool)

(assert (=> b!4537775 (=> (not res!1890770) (not e!2827667))))

(assert (=> b!4537775 (= res!1890770 (forall!10336 (toList!4396 lt!1712197) lambda!175714))))

(assert (=> d!1402209 e!2827667))

(declare-fun res!1890771 () Bool)

(assert (=> d!1402209 (=> (not res!1890771) (not e!2827667))))

(assert (=> d!1402209 (= res!1890771 (forall!10336 (_2!28900 lt!1712204) lambda!175714))))

(assert (=> d!1402209 (= lt!1712688 e!2827668)))

(declare-fun c!775016 () Bool)

(assert (=> d!1402209 (= c!775016 ((_ is Nil!50738) (_2!28900 lt!1712204)))))

(assert (=> d!1402209 (noDuplicateKeys!1194 (_2!28900 lt!1712204))))

(assert (=> d!1402209 (= (addToMapMapFromBucket!721 (_2!28900 lt!1712204) lt!1712197) lt!1712688)))

(declare-fun bm!316412 () Bool)

(assert (=> bm!316412 (= call!316418 (forall!10336 (toList!4396 lt!1712197) (ite c!775016 lambda!175711 lambda!175713)))))

(declare-fun bm!316413 () Bool)

(assert (=> bm!316413 (= call!316417 (lemmaContainsAllItsOwnKeys!362 lt!1712197))))

(declare-fun b!4537776 () Bool)

(assert (=> b!4537776 (= e!2827666 (forall!10336 (toList!4396 lt!1712197) lambda!175713))))

(assert (=> b!4537777 (= e!2827668 lt!1712197)))

(declare-fun lt!1712692 () Unit!98070)

(assert (=> b!4537777 (= lt!1712692 call!316417)))

(assert (=> b!4537777 call!316418))

(declare-fun lt!1712693 () Unit!98070)

(assert (=> b!4537777 (= lt!1712693 lt!1712692)))

(assert (=> b!4537777 call!316419))

(declare-fun lt!1712700 () Unit!98070)

(declare-fun Unit!98146 () Unit!98070)

(assert (=> b!4537777 (= lt!1712700 Unit!98146)))

(declare-fun b!4537778 () Bool)

(assert (=> b!4537778 (= e!2827667 (invariantList!1040 (toList!4396 lt!1712688)))))

(declare-fun bm!316414 () Bool)

(assert (=> bm!316414 (= call!316419 (forall!10336 (toList!4396 lt!1712197) (ite c!775016 lambda!175711 lambda!175712)))))

(assert (= (and d!1402209 c!775016) b!4537777))

(assert (= (and d!1402209 (not c!775016)) b!4537774))

(assert (= (and b!4537774 res!1890772) b!4537776))

(assert (= (or b!4537777 b!4537774) bm!316412))

(assert (= (or b!4537777 b!4537774) bm!316414))

(assert (= (or b!4537777 b!4537774) bm!316413))

(assert (= (and d!1402209 res!1890771) b!4537775))

(assert (= (and b!4537775 res!1890770) b!4537778))

(declare-fun m!5302041 () Bool)

(assert (=> b!4537776 m!5302041))

(declare-fun m!5302043 () Bool)

(assert (=> b!4537774 m!5302043))

(declare-fun m!5302045 () Bool)

(assert (=> b!4537774 m!5302045))

(declare-fun m!5302047 () Bool)

(assert (=> b!4537774 m!5302047))

(declare-fun m!5302049 () Bool)

(assert (=> b!4537774 m!5302049))

(declare-fun m!5302051 () Bool)

(assert (=> b!4537774 m!5302051))

(assert (=> b!4537774 m!5302045))

(assert (=> b!4537774 m!5302041))

(declare-fun m!5302053 () Bool)

(assert (=> b!4537774 m!5302053))

(assert (=> b!4537774 m!5302051))

(assert (=> b!4537774 m!5302049))

(declare-fun m!5302055 () Bool)

(assert (=> b!4537774 m!5302055))

(declare-fun m!5302057 () Bool)

(assert (=> b!4537774 m!5302057))

(declare-fun m!5302059 () Bool)

(assert (=> b!4537774 m!5302059))

(declare-fun m!5302061 () Bool)

(assert (=> bm!316414 m!5302061))

(declare-fun m!5302063 () Bool)

(assert (=> d!1402209 m!5302063))

(assert (=> d!1402209 m!5301027))

(declare-fun m!5302065 () Bool)

(assert (=> b!4537775 m!5302065))

(declare-fun m!5302067 () Bool)

(assert (=> b!4537778 m!5302067))

(declare-fun m!5302069 () Bool)

(assert (=> bm!316413 m!5302069))

(declare-fun m!5302071 () Bool)

(assert (=> bm!316412 m!5302071))

(assert (=> b!4537334 d!1402209))

(declare-fun bs!875009 () Bool)

(declare-fun d!1402211 () Bool)

(assert (= bs!875009 (and d!1402211 start!450236)))

(declare-fun lambda!175715 () Int)

(assert (=> bs!875009 (= lambda!175715 lambda!175575)))

(declare-fun bs!875010 () Bool)

(assert (= bs!875010 (and d!1402211 d!1402057)))

(assert (=> bs!875010 (= lambda!175715 lambda!175607)))

(declare-fun bs!875011 () Bool)

(assert (= bs!875011 (and d!1402211 d!1402033)))

(assert (=> bs!875011 (= lambda!175715 lambda!175593)))

(declare-fun bs!875012 () Bool)

(assert (= bs!875012 (and d!1402211 d!1402065)))

(assert (=> bs!875012 (not (= lambda!175715 lambda!175622))))

(declare-fun bs!875013 () Bool)

(assert (= bs!875013 (and d!1402211 d!1402051)))

(assert (=> bs!875013 (= lambda!175715 lambda!175597)))

(declare-fun bs!875014 () Bool)

(assert (= bs!875014 (and d!1402211 d!1402163)))

(assert (=> bs!875014 (= lambda!175715 lambda!175696)))

(declare-fun bs!875015 () Bool)

(assert (= bs!875015 (and d!1402211 d!1402073)))

(assert (=> bs!875015 (= lambda!175715 lambda!175635)))

(declare-fun bs!875016 () Bool)

(assert (= bs!875016 (and d!1402211 b!4537329)))

(assert (=> bs!875016 (not (= lambda!175715 lambda!175576))))

(declare-fun bs!875017 () Bool)

(assert (= bs!875017 (and d!1402211 d!1402021)))

(assert (=> bs!875017 (= lambda!175715 lambda!175592)))

(declare-fun bs!875018 () Bool)

(assert (= bs!875018 (and d!1402211 d!1402055)))

(assert (=> bs!875018 (= lambda!175715 lambda!175598)))

(declare-fun bs!875019 () Bool)

(assert (= bs!875019 (and d!1402211 d!1402171)))

(assert (=> bs!875019 (= lambda!175715 lambda!175703)))

(declare-fun bs!875020 () Bool)

(assert (= bs!875020 (and d!1402211 d!1402001)))

(assert (=> bs!875020 (= lambda!175715 lambda!175589)))

(declare-fun bs!875021 () Bool)

(assert (= bs!875021 (and d!1402211 d!1402035)))

(assert (=> bs!875021 (= lambda!175715 lambda!175596)))

(declare-fun lt!1712708 () ListMap!3657)

(assert (=> d!1402211 (invariantList!1040 (toList!4396 lt!1712708))))

(declare-fun e!2827669 () ListMap!3657)

(assert (=> d!1402211 (= lt!1712708 e!2827669)))

(declare-fun c!775017 () Bool)

(assert (=> d!1402211 (= c!775017 ((_ is Cons!50739) (toList!4395 lt!1712212)))))

(assert (=> d!1402211 (forall!10335 (toList!4395 lt!1712212) lambda!175715)))

(assert (=> d!1402211 (= (extractMap!1250 (toList!4395 lt!1712212)) lt!1712708)))

(declare-fun b!4537779 () Bool)

(assert (=> b!4537779 (= e!2827669 (addToMapMapFromBucket!721 (_2!28900 (h!56616 (toList!4395 lt!1712212))) (extractMap!1250 (t!357825 (toList!4395 lt!1712212)))))))

(declare-fun b!4537780 () Bool)

(assert (=> b!4537780 (= e!2827669 (ListMap!3658 Nil!50738))))

(assert (= (and d!1402211 c!775017) b!4537779))

(assert (= (and d!1402211 (not c!775017)) b!4537780))

(declare-fun m!5302073 () Bool)

(assert (=> d!1402211 m!5302073))

(declare-fun m!5302075 () Bool)

(assert (=> d!1402211 m!5302075))

(declare-fun m!5302077 () Bool)

(assert (=> b!4537779 m!5302077))

(assert (=> b!4537779 m!5302077))

(declare-fun m!5302079 () Bool)

(assert (=> b!4537779 m!5302079))

(assert (=> b!4537334 d!1402211))

(declare-fun b!4537785 () Bool)

(declare-fun e!2827672 () Bool)

(declare-fun tp!1338571 () Bool)

(declare-fun tp!1338572 () Bool)

(assert (=> b!4537785 (= e!2827672 (and tp!1338571 tp!1338572))))

(assert (=> b!4537316 (= tp!1338557 e!2827672)))

(assert (= (and b!4537316 ((_ is Cons!50739) (toList!4395 lm!1477))) b!4537785))

(declare-fun tp!1338575 () Bool)

(declare-fun b!4537790 () Bool)

(declare-fun e!2827675 () Bool)

(assert (=> b!4537790 (= e!2827675 (and tp_is_empty!28053 tp_is_empty!28055 tp!1338575))))

(assert (=> b!4537315 (= tp!1338556 e!2827675)))

(assert (= (and b!4537315 ((_ is Cons!50738) (t!357824 newBucket!178))) b!4537790))

(declare-fun b_lambda!157647 () Bool)

(assert (= b_lambda!157631 (or start!450236 b_lambda!157647)))

(declare-fun bs!875022 () Bool)

(declare-fun d!1402213 () Bool)

(assert (= bs!875022 (and d!1402213 start!450236)))

(assert (=> bs!875022 (= (dynLambda!21206 lambda!175575 (h!56616 (toList!4395 lm!1477))) (noDuplicateKeys!1194 (_2!28900 (h!56616 (toList!4395 lm!1477)))))))

(declare-fun m!5302081 () Bool)

(assert (=> bs!875022 m!5302081))

(assert (=> d!1402167 d!1402213))

(declare-fun b_lambda!157649 () Bool)

(assert (= b_lambda!157625 (or start!450236 b_lambda!157649)))

(declare-fun bs!875023 () Bool)

(declare-fun d!1402215 () Bool)

(assert (= bs!875023 (and d!1402215 start!450236)))

(assert (=> bs!875023 (= (dynLambda!21206 lambda!175575 (h!56616 (toList!4395 lt!1712212))) (noDuplicateKeys!1194 (_2!28900 (h!56616 (toList!4395 lt!1712212)))))))

(declare-fun m!5302083 () Bool)

(assert (=> bs!875023 m!5302083))

(assert (=> b!4537572 d!1402215))

(declare-fun b_lambda!157651 () Bool)

(assert (= b_lambda!157623 (or start!450236 b_lambda!157651)))

(declare-fun bs!875024 () Bool)

(declare-fun d!1402217 () Bool)

(assert (= bs!875024 (and d!1402217 start!450236)))

(assert (=> bs!875024 (= (dynLambda!21206 lambda!175575 lt!1712214) (noDuplicateKeys!1194 (_2!28900 lt!1712214)))))

(declare-fun m!5302085 () Bool)

(assert (=> bs!875024 m!5302085))

(assert (=> d!1402043 d!1402217))

(declare-fun b_lambda!157653 () Bool)

(assert (= b_lambda!157613 (or b!4537329 b_lambda!157653)))

(declare-fun bs!875025 () Bool)

(declare-fun d!1402219 () Bool)

(assert (= bs!875025 (and d!1402219 b!4537329)))

(assert (=> bs!875025 (= (dynLambda!21206 lambda!175576 (h!56616 (toList!4395 lm!1477))) (allKeysSameHash!1048 (_2!28900 (h!56616 (toList!4395 lm!1477))) (_1!28900 (h!56616 (toList!4395 lm!1477))) hashF!1107))))

(declare-fun m!5302087 () Bool)

(assert (=> bs!875025 m!5302087))

(assert (=> d!1401969 d!1402219))

(declare-fun b_lambda!157655 () Bool)

(assert (= b_lambda!157611 (or start!450236 b_lambda!157655)))

(assert (=> b!4537372 d!1402213))

(declare-fun b_lambda!157657 () Bool)

(assert (= b_lambda!157615 (or b!4537329 b_lambda!157657)))

(declare-fun bs!875026 () Bool)

(declare-fun d!1402221 () Bool)

(assert (= bs!875026 (and d!1402221 b!4537329)))

(assert (=> bs!875026 (= (dynLambda!21208 lambda!175577 (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201)))) (= (hash!2903 hashF!1107 (_1!28899 (tuple2!51211 key!3287 (_2!28899 (get!16673 lt!1712201))))) (_1!28900 (h!56616 (toList!4395 lm!1477)))))))

(declare-fun m!5302089 () Bool)

(assert (=> bs!875026 m!5302089))

(assert (=> d!1401973 d!1402221))

(check-sat (not b!4537506) (not b!4537761) (not d!1401953) (not d!1401993) (not b!4537724) (not b!4537563) (not b!4537573) (not b!4537359) (not bm!316414) (not d!1402073) (not b!4537497) (not b!4537744) (not d!1402055) (not d!1402063) (not b!4537581) (not bm!316377) (not b!4537748) (not bm!316405) (not d!1402039) (not d!1402187) (not d!1402191) (not b!4537743) (not b!4537495) (not b!4537608) (not b!4537434) (not b!4537590) (not b!4537417) (not b!4537554) (not b!4537592) (not bm!316378) (not b!4537390) (not bm!316412) (not d!1402023) (not b!4537391) (not b!4537778) (not d!1402077) (not b!4537595) (not b!4537775) (not d!1402049) (not b!4537433) (not d!1402209) (not bs!875023) (not d!1402045) (not d!1402033) (not d!1402189) (not d!1402171) (not b!4537566) (not b!4537366) (not b!4537367) (not d!1402185) (not d!1401991) (not b!4537565) (not b!4537528) (not b!4537519) (not d!1401965) (not b!4537431) (not b_lambda!157655) (not d!1402169) (not b!4537759) (not b!4537548) (not bm!316406) (not b!4537503) (not b!4537605) (not d!1402059) (not b_lambda!157647) (not b!4537725) (not d!1401951) (not b!4537593) (not d!1402037) (not b!4537394) (not b!4537567) (not b!4537570) (not d!1402001) (not bm!316411) (not d!1401955) (not b!4537740) (not b!4537504) (not b!4537406) (not b!4537571) (not d!1402065) (not b_lambda!157649) (not d!1402083) (not b!4537357) (not d!1402025) (not b!4537598) (not d!1402047) (not d!1402053) (not d!1402057) (not b!4537496) (not d!1402075) (not bs!875022) (not d!1402043) (not d!1402041) (not d!1402145) (not d!1402207) (not bm!316409) (not b!4537493) (not d!1401973) (not b!4537556) (not b!4537723) (not b_lambda!157651) (not b!4537373) (not d!1402031) (not b!4537746) (not b!4537551) (not b!4537569) (not b!4537527) (not d!1402021) (not b!4537465) (not b!4537499) (not d!1402211) (not b!4537779) (not d!1402163) (not bs!875026) (not b!4537727) (not d!1402027) (not b!4537747) (not d!1401969) tp_is_empty!28055 (not b!4537776) (not d!1402159) (not b!4537555) (not d!1401963) (not bs!875025) (not b!4537432) (not b_lambda!157653) (not d!1402167) (not d!1401959) (not bm!316410) (not b!4537785) tp_is_empty!28053 (not d!1402161) (not d!1402029) (not b!4537790) (not bs!875024) (not b!4537758) (not b!4537749) (not b!4537517) (not d!1402085) (not b!4537552) (not b!4537550) (not d!1402035) (not b_lambda!157657) (not b!4537752) (not bm!316408) (not b!4537498) (not d!1402051) (not d!1401981) (not b!4537395) (not d!1402081) (not b!4537525) (not bm!316407) (not b!4537751) (not b!4537392) (not b!4537774) (not b!4537757) (not b!4537742) (not b!4537557) (not b!4537753) (not bm!316413))
(check-sat)
