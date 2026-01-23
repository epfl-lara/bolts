; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!442052 () Bool)

(assert start!442052)

(declare-fun b!4487281 () Bool)

(declare-fun res!1864238 () Bool)

(declare-fun e!2794790 () Bool)

(assert (=> b!4487281 (=> res!1864238 e!2794790)))

(declare-datatypes ((K!11890 0))(
  ( (K!11891 (val!17783 Int)) )
))
(declare-datatypes ((V!12136 0))(
  ( (V!12137 (val!17784 Int)) )
))
(declare-datatypes ((tuple2!50834 0))(
  ( (tuple2!50835 (_1!28711 K!11890) (_2!28711 V!12136)) )
))
(declare-datatypes ((List!50598 0))(
  ( (Nil!50474) (Cons!50474 (h!56275 tuple2!50834) (t!357552 List!50598)) )
))
(declare-datatypes ((tuple2!50836 0))(
  ( (tuple2!50837 (_1!28712 (_ BitVec 64)) (_2!28712 List!50598)) )
))
(declare-datatypes ((List!50599 0))(
  ( (Nil!50475) (Cons!50475 (h!56276 tuple2!50836) (t!357553 List!50599)) )
))
(declare-datatypes ((ListLongMap!2839 0))(
  ( (ListLongMap!2840 (toList!4207 List!50599)) )
))
(declare-fun lm!1477 () ListLongMap!2839)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4487281 (= res!1864238 (or ((_ is Nil!50475) (toList!4207 lm!1477)) (= (_1!28712 (h!56276 (toList!4207 lm!1477))) hash!344)))))

(declare-fun b!4487282 () Bool)

(declare-fun res!1864243 () Bool)

(assert (=> b!4487282 (=> res!1864243 e!2794790)))

(declare-fun newBucket!178 () List!50598)

(declare-fun noDuplicateKeys!1100 (List!50598) Bool)

(assert (=> b!4487282 (= res!1864243 (not (noDuplicateKeys!1100 newBucket!178)))))

(declare-fun b!4487283 () Bool)

(declare-fun e!2794785 () Bool)

(declare-fun e!2794788 () Bool)

(assert (=> b!4487283 (= e!2794785 e!2794788)))

(declare-fun res!1864249 () Bool)

(assert (=> b!4487283 (=> (not res!1864249) (not e!2794788))))

(declare-fun lt!1672219 () (_ BitVec 64))

(assert (=> b!4487283 (= res!1864249 (= lt!1672219 hash!344))))

(declare-datatypes ((Hashable!5495 0))(
  ( (HashableExt!5494 (__x!31198 Int)) )
))
(declare-fun hashF!1107 () Hashable!5495)

(declare-fun key!3287 () K!11890)

(declare-fun hash!2611 (Hashable!5495 K!11890) (_ BitVec 64))

(assert (=> b!4487283 (= lt!1672219 (hash!2611 hashF!1107 key!3287))))

(declare-fun b!4487284 () Bool)

(declare-fun res!1864239 () Bool)

(declare-fun e!2794792 () Bool)

(assert (=> b!4487284 (=> res!1864239 e!2794792)))

(declare-fun lt!1672213 () ListLongMap!2839)

(declare-fun lambda!166689 () Int)

(declare-fun forall!10120 (List!50599 Int) Bool)

(assert (=> b!4487284 (= res!1864239 (not (forall!10120 (toList!4207 lt!1672213) lambda!166689)))))

(declare-fun b!4487285 () Bool)

(declare-fun e!2794791 () Bool)

(declare-fun e!2794795 () Bool)

(assert (=> b!4487285 (= e!2794791 e!2794795)))

(declare-fun res!1864254 () Bool)

(assert (=> b!4487285 (=> res!1864254 e!2794795)))

(declare-fun containsKeyBiggerList!80 (List!50599 K!11890) Bool)

(assert (=> b!4487285 (= res!1864254 (not (containsKeyBiggerList!80 (t!357553 (toList!4207 lm!1477)) key!3287)))))

(assert (=> b!4487285 (containsKeyBiggerList!80 (toList!4207 lt!1672213) key!3287)))

(declare-datatypes ((Unit!90266 0))(
  ( (Unit!90267) )
))
(declare-fun lt!1672224 () Unit!90266)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!16 (ListLongMap!2839 K!11890 Hashable!5495) Unit!90266)

(assert (=> b!4487285 (= lt!1672224 (lemmaInLongMapThenContainsKeyBiggerList!16 lt!1672213 key!3287 hashF!1107))))

(declare-fun res!1864244 () Bool)

(assert (=> start!442052 (=> (not res!1864244) (not e!2794785))))

(assert (=> start!442052 (= res!1864244 (forall!10120 (toList!4207 lm!1477) lambda!166689))))

(assert (=> start!442052 e!2794785))

(assert (=> start!442052 true))

(declare-fun e!2794794 () Bool)

(declare-fun inv!66074 (ListLongMap!2839) Bool)

(assert (=> start!442052 (and (inv!66074 lm!1477) e!2794794)))

(declare-fun tp_is_empty!27677 () Bool)

(assert (=> start!442052 tp_is_empty!27677))

(declare-fun e!2794789 () Bool)

(assert (=> start!442052 e!2794789))

(declare-fun b!4487286 () Bool)

(declare-fun e!2794787 () Bool)

(assert (=> b!4487286 (= e!2794792 e!2794787)))

(declare-fun res!1864246 () Bool)

(assert (=> b!4487286 (=> res!1864246 e!2794787)))

(declare-fun lt!1672215 () List!50598)

(declare-fun removePairForKey!727 (List!50598 K!11890) List!50598)

(assert (=> b!4487286 (= res!1864246 (not (= newBucket!178 (removePairForKey!727 lt!1672215 key!3287))))))

(declare-fun lt!1672222 () tuple2!50836)

(declare-fun lt!1672227 () Unit!90266)

(declare-fun forallContained!2379 (List!50599 Int tuple2!50836) Unit!90266)

(assert (=> b!4487286 (= lt!1672227 (forallContained!2379 (toList!4207 lt!1672213) lambda!166689 lt!1672222))))

(declare-fun contains!13107 (List!50599 tuple2!50836) Bool)

(assert (=> b!4487286 (contains!13107 (toList!4207 lt!1672213) lt!1672222)))

(assert (=> b!4487286 (= lt!1672222 (tuple2!50837 hash!344 lt!1672215))))

(declare-fun lt!1672212 () Unit!90266)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!612 (List!50599 (_ BitVec 64) List!50598) Unit!90266)

(assert (=> b!4487286 (= lt!1672212 (lemmaGetValueByKeyImpliesContainsTuple!612 (toList!4207 lt!1672213) hash!344 lt!1672215))))

(declare-fun contains!13108 (ListLongMap!2839 (_ BitVec 64)) Bool)

(assert (=> b!4487286 (contains!13108 lt!1672213 lt!1672219)))

(declare-fun lt!1672217 () Unit!90266)

(declare-fun lemmaInGenMapThenLongMapContainsHash!174 (ListLongMap!2839 K!11890 Hashable!5495) Unit!90266)

(assert (=> b!4487286 (= lt!1672217 (lemmaInGenMapThenLongMapContainsHash!174 lt!1672213 key!3287 hashF!1107))))

(declare-fun b!4487287 () Bool)

(assert (=> b!4487287 (= e!2794788 (not e!2794790))))

(declare-fun res!1864251 () Bool)

(assert (=> b!4487287 (=> res!1864251 e!2794790)))

(declare-fun lt!1672211 () List!50598)

(assert (=> b!4487287 (= res!1864251 (not (= newBucket!178 (removePairForKey!727 lt!1672211 key!3287))))))

(declare-fun lt!1672225 () Unit!90266)

(declare-fun lt!1672226 () tuple2!50836)

(assert (=> b!4487287 (= lt!1672225 (forallContained!2379 (toList!4207 lm!1477) lambda!166689 lt!1672226))))

(assert (=> b!4487287 (contains!13107 (toList!4207 lm!1477) lt!1672226)))

(assert (=> b!4487287 (= lt!1672226 (tuple2!50837 hash!344 lt!1672211))))

(declare-fun lt!1672223 () Unit!90266)

(assert (=> b!4487287 (= lt!1672223 (lemmaGetValueByKeyImpliesContainsTuple!612 (toList!4207 lm!1477) hash!344 lt!1672211))))

(declare-fun apply!11837 (ListLongMap!2839 (_ BitVec 64)) List!50598)

(assert (=> b!4487287 (= lt!1672211 (apply!11837 lm!1477 hash!344))))

(assert (=> b!4487287 (contains!13108 lm!1477 lt!1672219)))

(declare-fun lt!1672218 () Unit!90266)

(assert (=> b!4487287 (= lt!1672218 (lemmaInGenMapThenLongMapContainsHash!174 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4487288 () Bool)

(declare-fun e!2794786 () Unit!90266)

(declare-fun Unit!90268 () Unit!90266)

(assert (=> b!4487288 (= e!2794786 Unit!90268)))

(declare-fun lt!1672214 () Unit!90266)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!88 (ListLongMap!2839 K!11890 Hashable!5495) Unit!90266)

(assert (=> b!4487288 (= lt!1672214 (lemmaNotInItsHashBucketThenNotInMap!88 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4487288 false))

(declare-fun b!4487289 () Bool)

(declare-fun res!1864242 () Bool)

(assert (=> b!4487289 (=> res!1864242 e!2794787)))

(assert (=> b!4487289 (= res!1864242 (not (forall!10120 (toList!4207 lt!1672213) lambda!166689)))))

(declare-fun b!4487290 () Bool)

(declare-fun Unit!90269 () Unit!90266)

(assert (=> b!4487290 (= e!2794786 Unit!90269)))

(declare-fun b!4487291 () Bool)

(declare-fun e!2794793 () Bool)

(declare-fun e!2794784 () Bool)

(assert (=> b!4487291 (= e!2794793 e!2794784)))

(declare-fun res!1864241 () Bool)

(assert (=> b!4487291 (=> res!1864241 e!2794784)))

(assert (=> b!4487291 (= res!1864241 (not (= lt!1672215 lt!1672211)))))

(assert (=> b!4487291 (= lt!1672215 (apply!11837 lt!1672213 hash!344))))

(declare-fun b!4487292 () Bool)

(assert (=> b!4487292 (= e!2794787 true)))

(declare-fun lt!1672228 () Unit!90266)

(assert (=> b!4487292 (= lt!1672228 (forallContained!2379 (toList!4207 lt!1672213) lambda!166689 lt!1672222))))

(declare-fun b!4487293 () Bool)

(declare-fun res!1864245 () Bool)

(assert (=> b!4487293 (=> res!1864245 e!2794784)))

(assert (=> b!4487293 (= res!1864245 (not (contains!13107 (t!357553 (toList!4207 lm!1477)) lt!1672226)))))

(declare-fun b!4487294 () Bool)

(assert (=> b!4487294 (= e!2794795 e!2794792)))

(declare-fun res!1864252 () Bool)

(assert (=> b!4487294 (=> res!1864252 e!2794792)))

(declare-datatypes ((ListMap!3469 0))(
  ( (ListMap!3470 (toList!4208 List!50598)) )
))
(declare-fun contains!13109 (ListMap!3469 K!11890) Bool)

(declare-fun extractMap!1156 (List!50599) ListMap!3469)

(assert (=> b!4487294 (= res!1864252 (not (contains!13109 (extractMap!1156 (t!357553 (toList!4207 lm!1477))) key!3287)))))

(assert (=> b!4487294 (contains!13109 (extractMap!1156 (toList!4207 lt!1672213)) key!3287)))

(declare-fun lt!1672216 () Unit!90266)

(declare-fun lemmaListContainsThenExtractedMapContains!70 (ListLongMap!2839 K!11890 Hashable!5495) Unit!90266)

(assert (=> b!4487294 (= lt!1672216 (lemmaListContainsThenExtractedMapContains!70 lt!1672213 key!3287 hashF!1107))))

(declare-fun b!4487295 () Bool)

(declare-fun res!1864237 () Bool)

(assert (=> b!4487295 (=> (not res!1864237) (not e!2794788))))

(declare-fun allKeysSameHash!954 (List!50598 (_ BitVec 64) Hashable!5495) Bool)

(assert (=> b!4487295 (= res!1864237 (allKeysSameHash!954 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4487296 () Bool)

(assert (=> b!4487296 (= e!2794790 e!2794793)))

(declare-fun res!1864248 () Bool)

(assert (=> b!4487296 (=> res!1864248 e!2794793)))

(assert (=> b!4487296 (= res!1864248 (not (contains!13108 lt!1672213 hash!344)))))

(declare-fun tail!7623 (ListLongMap!2839) ListLongMap!2839)

(assert (=> b!4487296 (= lt!1672213 (tail!7623 lm!1477))))

(declare-fun b!4487297 () Bool)

(declare-fun tp!1337104 () Bool)

(assert (=> b!4487297 (= e!2794794 tp!1337104)))

(declare-fun b!4487298 () Bool)

(declare-fun res!1864247 () Bool)

(assert (=> b!4487298 (=> res!1864247 e!2794792)))

(declare-fun allKeysSameHashInMap!1207 (ListLongMap!2839 Hashable!5495) Bool)

(assert (=> b!4487298 (= res!1864247 (not (allKeysSameHashInMap!1207 lt!1672213 hashF!1107)))))

(declare-fun b!4487299 () Bool)

(assert (=> b!4487299 (= e!2794784 e!2794791)))

(declare-fun res!1864250 () Bool)

(assert (=> b!4487299 (=> res!1864250 e!2794791)))

(declare-fun lt!1672221 () Bool)

(assert (=> b!4487299 (= res!1864250 lt!1672221)))

(declare-fun lt!1672220 () Unit!90266)

(assert (=> b!4487299 (= lt!1672220 e!2794786)))

(declare-fun c!764233 () Bool)

(assert (=> b!4487299 (= c!764233 lt!1672221)))

(declare-fun containsKey!1616 (List!50598 K!11890) Bool)

(assert (=> b!4487299 (= lt!1672221 (not (containsKey!1616 lt!1672211 key!3287)))))

(declare-fun b!4487300 () Bool)

(declare-fun res!1864240 () Bool)

(assert (=> b!4487300 (=> (not res!1864240) (not e!2794785))))

(assert (=> b!4487300 (= res!1864240 (contains!13109 (extractMap!1156 (toList!4207 lm!1477)) key!3287))))

(declare-fun tp_is_empty!27679 () Bool)

(declare-fun b!4487301 () Bool)

(declare-fun tp!1337105 () Bool)

(assert (=> b!4487301 (= e!2794789 (and tp_is_empty!27677 tp_is_empty!27679 tp!1337105))))

(declare-fun b!4487302 () Bool)

(declare-fun res!1864253 () Bool)

(assert (=> b!4487302 (=> (not res!1864253) (not e!2794785))))

(assert (=> b!4487302 (= res!1864253 (allKeysSameHashInMap!1207 lm!1477 hashF!1107))))

(assert (= (and start!442052 res!1864244) b!4487302))

(assert (= (and b!4487302 res!1864253) b!4487300))

(assert (= (and b!4487300 res!1864240) b!4487283))

(assert (= (and b!4487283 res!1864249) b!4487295))

(assert (= (and b!4487295 res!1864237) b!4487287))

(assert (= (and b!4487287 (not res!1864251)) b!4487282))

(assert (= (and b!4487282 (not res!1864243)) b!4487281))

(assert (= (and b!4487281 (not res!1864238)) b!4487296))

(assert (= (and b!4487296 (not res!1864248)) b!4487291))

(assert (= (and b!4487291 (not res!1864241)) b!4487293))

(assert (= (and b!4487293 (not res!1864245)) b!4487299))

(assert (= (and b!4487299 c!764233) b!4487288))

(assert (= (and b!4487299 (not c!764233)) b!4487290))

(assert (= (and b!4487299 (not res!1864250)) b!4487285))

(assert (= (and b!4487285 (not res!1864254)) b!4487294))

(assert (= (and b!4487294 (not res!1864252)) b!4487284))

(assert (= (and b!4487284 (not res!1864239)) b!4487298))

(assert (= (and b!4487298 (not res!1864247)) b!4487286))

(assert (= (and b!4487286 (not res!1864246)) b!4487289))

(assert (= (and b!4487289 (not res!1864242)) b!4487292))

(assert (= start!442052 b!4487297))

(assert (= (and start!442052 ((_ is Cons!50474) newBucket!178)) b!4487301))

(declare-fun m!5208549 () Bool)

(assert (=> b!4487287 m!5208549))

(declare-fun m!5208551 () Bool)

(assert (=> b!4487287 m!5208551))

(declare-fun m!5208553 () Bool)

(assert (=> b!4487287 m!5208553))

(declare-fun m!5208555 () Bool)

(assert (=> b!4487287 m!5208555))

(declare-fun m!5208557 () Bool)

(assert (=> b!4487287 m!5208557))

(declare-fun m!5208559 () Bool)

(assert (=> b!4487287 m!5208559))

(declare-fun m!5208561 () Bool)

(assert (=> b!4487287 m!5208561))

(declare-fun m!5208563 () Bool)

(assert (=> b!4487299 m!5208563))

(declare-fun m!5208565 () Bool)

(assert (=> b!4487295 m!5208565))

(declare-fun m!5208567 () Bool)

(assert (=> b!4487298 m!5208567))

(declare-fun m!5208569 () Bool)

(assert (=> b!4487289 m!5208569))

(declare-fun m!5208571 () Bool)

(assert (=> b!4487286 m!5208571))

(declare-fun m!5208573 () Bool)

(assert (=> b!4487286 m!5208573))

(declare-fun m!5208575 () Bool)

(assert (=> b!4487286 m!5208575))

(declare-fun m!5208577 () Bool)

(assert (=> b!4487286 m!5208577))

(declare-fun m!5208579 () Bool)

(assert (=> b!4487286 m!5208579))

(declare-fun m!5208581 () Bool)

(assert (=> b!4487286 m!5208581))

(declare-fun m!5208583 () Bool)

(assert (=> b!4487302 m!5208583))

(assert (=> b!4487292 m!5208581))

(declare-fun m!5208585 () Bool)

(assert (=> b!4487296 m!5208585))

(declare-fun m!5208587 () Bool)

(assert (=> b!4487296 m!5208587))

(declare-fun m!5208589 () Bool)

(assert (=> b!4487288 m!5208589))

(assert (=> b!4487284 m!5208569))

(declare-fun m!5208591 () Bool)

(assert (=> b!4487291 m!5208591))

(declare-fun m!5208593 () Bool)

(assert (=> b!4487294 m!5208593))

(declare-fun m!5208595 () Bool)

(assert (=> b!4487294 m!5208595))

(declare-fun m!5208597 () Bool)

(assert (=> b!4487294 m!5208597))

(assert (=> b!4487294 m!5208597))

(declare-fun m!5208599 () Bool)

(assert (=> b!4487294 m!5208599))

(assert (=> b!4487294 m!5208593))

(declare-fun m!5208601 () Bool)

(assert (=> b!4487294 m!5208601))

(declare-fun m!5208603 () Bool)

(assert (=> b!4487285 m!5208603))

(declare-fun m!5208605 () Bool)

(assert (=> b!4487285 m!5208605))

(declare-fun m!5208607 () Bool)

(assert (=> b!4487285 m!5208607))

(declare-fun m!5208609 () Bool)

(assert (=> b!4487282 m!5208609))

(declare-fun m!5208611 () Bool)

(assert (=> b!4487283 m!5208611))

(declare-fun m!5208613 () Bool)

(assert (=> b!4487300 m!5208613))

(assert (=> b!4487300 m!5208613))

(declare-fun m!5208615 () Bool)

(assert (=> b!4487300 m!5208615))

(declare-fun m!5208617 () Bool)

(assert (=> b!4487293 m!5208617))

(declare-fun m!5208619 () Bool)

(assert (=> start!442052 m!5208619))

(declare-fun m!5208621 () Bool)

(assert (=> start!442052 m!5208621))

(check-sat (not start!442052) tp_is_empty!27679 (not b!4487287) (not b!4487288) (not b!4487302) (not b!4487298) (not b!4487299) (not b!4487282) (not b!4487286) (not b!4487296) (not b!4487283) (not b!4487289) (not b!4487293) tp_is_empty!27677 (not b!4487301) (not b!4487300) (not b!4487294) (not b!4487292) (not b!4487297) (not b!4487295) (not b!4487285) (not b!4487284) (not b!4487291))
(check-sat)
