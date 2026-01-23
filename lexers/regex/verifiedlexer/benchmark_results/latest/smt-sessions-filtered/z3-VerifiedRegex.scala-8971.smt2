; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!482632 () Bool)

(assert start!482632)

(declare-fun b!4733235 () Bool)

(declare-fun e!2952295 () Bool)

(declare-fun e!2952301 () Bool)

(assert (=> b!4733235 (= e!2952295 e!2952301)))

(declare-fun res!2004219 () Bool)

(assert (=> b!4733235 (=> res!2004219 e!2952301)))

(declare-datatypes ((K!14260 0))(
  ( (K!14261 (val!19679 Int)) )
))
(declare-datatypes ((V!14506 0))(
  ( (V!14507 (val!19680 Int)) )
))
(declare-datatypes ((tuple2!54570 0))(
  ( (tuple2!54571 (_1!30579 K!14260) (_2!30579 V!14506)) )
))
(declare-datatypes ((List!53037 0))(
  ( (Nil!52913) (Cons!52913 (h!59284 tuple2!54570) (t!360317 List!53037)) )
))
(declare-fun oldBucket!34 () List!53037)

(declare-fun key!4653 () K!14260)

(declare-fun containsKey!3437 (List!53037 K!14260) Bool)

(assert (=> b!4733235 (= res!2004219 (not (containsKey!3437 (t!360317 oldBucket!34) key!4653)))))

(assert (=> b!4733235 (containsKey!3437 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!131735 0))(
  ( (Unit!131736) )
))
(declare-fun lt!1896333 () Unit!131735)

(declare-datatypes ((Hashable!6413 0))(
  ( (HashableExt!6412 (__x!32116 Int)) )
))
(declare-fun hashF!1323 () Hashable!6413)

(declare-fun lemmaGetPairDefinedThenContainsKey!328 (List!53037 K!14260 Hashable!6413) Unit!131735)

(assert (=> b!4733235 (= lt!1896333 (lemmaGetPairDefinedThenContainsKey!328 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1896345 () List!53037)

(declare-datatypes ((Option!12423 0))(
  ( (None!12422) (Some!12422 (v!47055 tuple2!54570)) )
))
(declare-fun isDefined!9677 (Option!12423) Bool)

(declare-fun getPair!584 (List!53037 K!14260) Option!12423)

(assert (=> b!4733235 (isDefined!9677 (getPair!584 lt!1896345 key!4653))))

(declare-datatypes ((tuple2!54572 0))(
  ( (tuple2!54573 (_1!30580 (_ BitVec 64)) (_2!30580 List!53037)) )
))
(declare-datatypes ((List!53038 0))(
  ( (Nil!52914) (Cons!52914 (h!59285 tuple2!54572) (t!360318 List!53038)) )
))
(declare-datatypes ((ListLongMap!4507 0))(
  ( (ListLongMap!4508 (toList!5977 List!53038)) )
))
(declare-fun lm!2023 () ListLongMap!4507)

(declare-fun lt!1896328 () tuple2!54572)

(declare-fun lambda!217712 () Int)

(declare-fun lt!1896339 () Unit!131735)

(declare-fun forallContained!3691 (List!53038 Int tuple2!54572) Unit!131735)

(assert (=> b!4733235 (= lt!1896339 (forallContained!3691 (toList!5977 lm!2023) lambda!217712 lt!1896328))))

(declare-fun contains!16296 (List!53038 tuple2!54572) Bool)

(assert (=> b!4733235 (contains!16296 (toList!5977 lm!2023) lt!1896328)))

(declare-fun lt!1896341 () (_ BitVec 64))

(assert (=> b!4733235 (= lt!1896328 (tuple2!54573 lt!1896341 lt!1896345))))

(declare-fun lt!1896344 () Unit!131735)

(declare-fun lemmaGetValueImpliesTupleContained!389 (ListLongMap!4507 (_ BitVec 64) List!53037) Unit!131735)

(assert (=> b!4733235 (= lt!1896344 (lemmaGetValueImpliesTupleContained!389 lm!2023 lt!1896341 lt!1896345))))

(declare-fun apply!12469 (ListLongMap!4507 (_ BitVec 64)) List!53037)

(assert (=> b!4733235 (= lt!1896345 (apply!12469 lm!2023 lt!1896341))))

(declare-fun contains!16297 (ListLongMap!4507 (_ BitVec 64)) Bool)

(assert (=> b!4733235 (contains!16297 lm!2023 lt!1896341)))

(declare-fun lt!1896342 () Unit!131735)

(declare-fun lemmaInGenMapThenLongMapContainsHash!790 (ListLongMap!4507 K!14260 Hashable!6413) Unit!131735)

(assert (=> b!4733235 (= lt!1896342 (lemmaInGenMapThenLongMapContainsHash!790 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1896334 () Unit!131735)

(declare-fun lemmaInGenMapThenGetPairDefined!380 (ListLongMap!4507 K!14260 Hashable!6413) Unit!131735)

(assert (=> b!4733235 (= lt!1896334 (lemmaInGenMapThenGetPairDefined!380 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4733236 () Bool)

(declare-fun e!2952303 () Bool)

(declare-fun e!2952297 () Bool)

(assert (=> b!4733236 (= e!2952303 e!2952297)))

(declare-fun res!2004211 () Bool)

(assert (=> b!4733236 (=> (not res!2004211) (not e!2952297))))

(declare-fun lt!1896331 () tuple2!54572)

(declare-fun head!10291 (List!53038) tuple2!54572)

(assert (=> b!4733236 (= res!2004211 (= (head!10291 (toList!5977 lm!2023)) lt!1896331))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4733236 (= lt!1896331 (tuple2!54573 hash!405 oldBucket!34))))

(declare-fun b!4733237 () Bool)

(declare-fun e!2952304 () Bool)

(declare-fun tp!1348978 () Bool)

(assert (=> b!4733237 (= e!2952304 tp!1348978)))

(declare-fun b!4733238 () Bool)

(declare-fun res!2004210 () Bool)

(declare-fun e!2952294 () Bool)

(assert (=> b!4733238 (=> res!2004210 e!2952294)))

(declare-fun lt!1896335 () List!53037)

(declare-fun removePairForKey!1639 (List!53037 K!14260) List!53037)

(assert (=> b!4733238 (= res!2004210 (not (= (removePairForKey!1639 (t!360317 oldBucket!34) key!4653) lt!1896335)))))

(declare-fun tp!1348977 () Bool)

(declare-fun tp_is_empty!31471 () Bool)

(declare-fun tp_is_empty!31469 () Bool)

(declare-fun e!2952296 () Bool)

(declare-fun b!4733239 () Bool)

(assert (=> b!4733239 (= e!2952296 (and tp_is_empty!31469 tp_is_empty!31471 tp!1348977))))

(declare-fun b!4733240 () Bool)

(declare-fun e!2952300 () Bool)

(assert (=> b!4733240 (= e!2952300 e!2952303)))

(declare-fun res!2004207 () Bool)

(assert (=> b!4733240 (=> (not res!2004207) (not e!2952303))))

(assert (=> b!4733240 (= res!2004207 (= lt!1896341 hash!405))))

(declare-fun hash!4436 (Hashable!6413 K!14260) (_ BitVec 64))

(assert (=> b!4733240 (= lt!1896341 (hash!4436 hashF!1323 key!4653))))

(declare-fun res!2004217 () Bool)

(declare-fun e!2952299 () Bool)

(assert (=> start!482632 (=> (not res!2004217) (not e!2952299))))

(declare-fun forall!11651 (List!53038 Int) Bool)

(assert (=> start!482632 (= res!2004217 (forall!11651 (toList!5977 lm!2023) lambda!217712))))

(assert (=> start!482632 e!2952299))

(declare-fun inv!68134 (ListLongMap!4507) Bool)

(assert (=> start!482632 (and (inv!68134 lm!2023) e!2952304)))

(assert (=> start!482632 tp_is_empty!31469))

(assert (=> start!482632 e!2952296))

(assert (=> start!482632 true))

(declare-fun e!2952302 () Bool)

(assert (=> start!482632 e!2952302))

(declare-fun b!4733241 () Bool)

(declare-fun e!2952298 () Bool)

(declare-fun lt!1896338 () ListLongMap!4507)

(assert (=> b!4733241 (= e!2952298 (inv!68134 lt!1896338))))

(declare-fun b!4733242 () Bool)

(assert (=> b!4733242 (= e!2952299 e!2952300)))

(declare-fun res!2004218 () Bool)

(assert (=> b!4733242 (=> (not res!2004218) (not e!2952300))))

(declare-datatypes ((ListMap!5341 0))(
  ( (ListMap!5342 (toList!5978 List!53037)) )
))
(declare-fun lt!1896330 () ListMap!5341)

(declare-fun contains!16298 (ListMap!5341 K!14260) Bool)

(assert (=> b!4733242 (= res!2004218 (contains!16298 lt!1896330 key!4653))))

(declare-fun extractMap!2070 (List!53038) ListMap!5341)

(assert (=> b!4733242 (= lt!1896330 (extractMap!2070 (toList!5977 lm!2023)))))

(declare-fun b!4733243 () Bool)

(declare-fun res!2004209 () Bool)

(assert (=> b!4733243 (=> (not res!2004209) (not e!2952303))))

(declare-fun allKeysSameHashInMap!1958 (ListLongMap!4507 Hashable!6413) Bool)

(assert (=> b!4733243 (= res!2004209 (allKeysSameHashInMap!1958 lm!2023 hashF!1323))))

(declare-fun b!4733244 () Bool)

(assert (=> b!4733244 (= e!2952294 e!2952298)))

(declare-fun res!2004214 () Bool)

(assert (=> b!4733244 (=> res!2004214 e!2952298)))

(declare-fun lt!1896329 () ListMap!5341)

(declare-fun lt!1896340 () ListMap!5341)

(declare-fun eq!1141 (ListMap!5341 ListMap!5341) Bool)

(declare-fun +!2292 (ListMap!5341 tuple2!54570) ListMap!5341)

(assert (=> b!4733244 (= res!2004214 (not (eq!1141 lt!1896329 (+!2292 lt!1896340 (h!59284 oldBucket!34)))))))

(declare-fun lt!1896336 () List!53037)

(assert (=> b!4733244 (= lt!1896340 (extractMap!2070 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))

(assert (=> b!4733244 (= lt!1896329 (extractMap!2070 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))

(declare-fun lt!1896347 () tuple2!54570)

(declare-fun lt!1896343 () ListMap!5341)

(declare-fun addToMapMapFromBucket!1474 (List!53037 ListMap!5341) ListMap!5341)

(assert (=> b!4733244 (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))))

(declare-fun lt!1896332 () Unit!131735)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!390 (tuple2!54570 List!53037 ListMap!5341) Unit!131735)

(assert (=> b!4733244 (= lt!1896332 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!390 lt!1896347 lt!1896335 lt!1896343))))

(declare-fun newBucket!218 () List!53037)

(declare-fun head!10292 (List!53037) tuple2!54570)

(assert (=> b!4733244 (= lt!1896347 (head!10292 newBucket!218))))

(declare-fun lt!1896326 () tuple2!54570)

(assert (=> b!4733244 (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))))

(declare-fun lt!1896337 () Unit!131735)

(assert (=> b!4733244 (= lt!1896337 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!390 lt!1896326 lt!1896336 lt!1896343))))

(assert (=> b!4733244 (= lt!1896326 (head!10292 oldBucket!34))))

(declare-fun lt!1896327 () List!53038)

(assert (=> b!4733244 (contains!16298 (extractMap!2070 lt!1896327) key!4653)))

(declare-fun lt!1896346 () Unit!131735)

(declare-fun lemmaListContainsThenExtractedMapContains!552 (ListLongMap!4507 K!14260 Hashable!6413) Unit!131735)

(assert (=> b!4733244 (= lt!1896346 (lemmaListContainsThenExtractedMapContains!552 lt!1896338 key!4653 hashF!1323))))

(assert (=> b!4733244 (= lt!1896338 (ListLongMap!4508 lt!1896327))))

(assert (=> b!4733244 (= lt!1896327 (Cons!52914 (tuple2!54573 hash!405 (t!360317 oldBucket!34)) (t!360318 (toList!5977 lm!2023))))))

(declare-fun b!4733245 () Bool)

(declare-fun res!2004208 () Bool)

(assert (=> b!4733245 (=> res!2004208 e!2952298)))

(assert (=> b!4733245 (= res!2004208 (not (eq!1141 lt!1896329 (+!2292 lt!1896340 lt!1896347))))))

(declare-fun b!4733246 () Bool)

(declare-fun res!2004205 () Bool)

(assert (=> b!4733246 (=> (not res!2004205) (not e!2952297))))

(get-info :version)

(assert (=> b!4733246 (= res!2004205 ((_ is Cons!52914) (toList!5977 lm!2023)))))

(declare-fun b!4733247 () Bool)

(declare-fun res!2004212 () Bool)

(assert (=> b!4733247 (=> (not res!2004212) (not e!2952299))))

(declare-fun noDuplicateKeys!2044 (List!53037) Bool)

(assert (=> b!4733247 (= res!2004212 (noDuplicateKeys!2044 newBucket!218))))

(declare-fun b!4733248 () Bool)

(declare-fun res!2004221 () Bool)

(assert (=> b!4733248 (=> (not res!2004221) (not e!2952299))))

(assert (=> b!4733248 (= res!2004221 (noDuplicateKeys!2044 oldBucket!34))))

(declare-fun b!4733249 () Bool)

(declare-fun tp!1348979 () Bool)

(assert (=> b!4733249 (= e!2952302 (and tp_is_empty!31469 tp_is_empty!31471 tp!1348979))))

(declare-fun b!4733250 () Bool)

(declare-fun res!2004216 () Bool)

(assert (=> b!4733250 (=> (not res!2004216) (not e!2952303))))

(declare-fun allKeysSameHash!1870 (List!53037 (_ BitVec 64) Hashable!6413) Bool)

(assert (=> b!4733250 (= res!2004216 (allKeysSameHash!1870 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4733251 () Bool)

(declare-fun res!2004215 () Bool)

(assert (=> b!4733251 (=> res!2004215 e!2952298)))

(assert (=> b!4733251 (= res!2004215 (not (= (h!59284 oldBucket!34) lt!1896347)))))

(declare-fun b!4733252 () Bool)

(declare-fun res!2004204 () Bool)

(assert (=> b!4733252 (=> (not res!2004204) (not e!2952299))))

(assert (=> b!4733252 (= res!2004204 (= (removePairForKey!1639 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4733253 () Bool)

(declare-fun res!2004213 () Bool)

(assert (=> b!4733253 (=> (not res!2004213) (not e!2952299))))

(assert (=> b!4733253 (= res!2004213 (allKeysSameHash!1870 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4733254 () Bool)

(assert (=> b!4733254 (= e!2952301 e!2952294)))

(declare-fun res!2004220 () Bool)

(assert (=> b!4733254 (=> res!2004220 e!2952294)))

(assert (=> b!4733254 (= res!2004220 (not (= (removePairForKey!1639 lt!1896336 key!4653) lt!1896335)))))

(declare-fun tail!9076 (List!53037) List!53037)

(assert (=> b!4733254 (= lt!1896335 (tail!9076 newBucket!218))))

(assert (=> b!4733254 (= lt!1896336 (tail!9076 oldBucket!34))))

(declare-fun b!4733255 () Bool)

(assert (=> b!4733255 (= e!2952297 (not e!2952295))))

(declare-fun res!2004206 () Bool)

(assert (=> b!4733255 (=> res!2004206 e!2952295)))

(assert (=> b!4733255 (= res!2004206 (or (and ((_ is Cons!52913) oldBucket!34) (= (_1!30579 (h!59284 oldBucket!34)) key!4653)) (not ((_ is Cons!52913) oldBucket!34)) (= (_1!30579 (h!59284 oldBucket!34)) key!4653)))))

(assert (=> b!4733255 (= lt!1896330 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (toList!5977 lm!2023))) lt!1896343))))

(assert (=> b!4733255 (= lt!1896343 (extractMap!2070 (t!360318 (toList!5977 lm!2023))))))

(declare-fun tail!9077 (ListLongMap!4507) ListLongMap!4507)

(assert (=> b!4733255 (= (t!360318 (toList!5977 lm!2023)) (toList!5977 (tail!9077 lm!2023)))))

(assert (= (and start!482632 res!2004217) b!4733248))

(assert (= (and b!4733248 res!2004221) b!4733247))

(assert (= (and b!4733247 res!2004212) b!4733252))

(assert (= (and b!4733252 res!2004204) b!4733253))

(assert (= (and b!4733253 res!2004213) b!4733242))

(assert (= (and b!4733242 res!2004218) b!4733240))

(assert (= (and b!4733240 res!2004207) b!4733250))

(assert (= (and b!4733250 res!2004216) b!4733243))

(assert (= (and b!4733243 res!2004209) b!4733236))

(assert (= (and b!4733236 res!2004211) b!4733246))

(assert (= (and b!4733246 res!2004205) b!4733255))

(assert (= (and b!4733255 (not res!2004206)) b!4733235))

(assert (= (and b!4733235 (not res!2004219)) b!4733254))

(assert (= (and b!4733254 (not res!2004220)) b!4733238))

(assert (= (and b!4733238 (not res!2004210)) b!4733244))

(assert (= (and b!4733244 (not res!2004214)) b!4733251))

(assert (= (and b!4733251 (not res!2004215)) b!4733245))

(assert (= (and b!4733245 (not res!2004208)) b!4733241))

(assert (= start!482632 b!4733237))

(assert (= (and start!482632 ((_ is Cons!52913) oldBucket!34)) b!4733239))

(assert (= (and start!482632 ((_ is Cons!52913) newBucket!218)) b!4733249))

(declare-fun m!5676533 () Bool)

(assert (=> b!4733247 m!5676533))

(declare-fun m!5676535 () Bool)

(assert (=> b!4733245 m!5676535))

(assert (=> b!4733245 m!5676535))

(declare-fun m!5676537 () Bool)

(assert (=> b!4733245 m!5676537))

(declare-fun m!5676539 () Bool)

(assert (=> b!4733248 m!5676539))

(declare-fun m!5676541 () Bool)

(assert (=> b!4733254 m!5676541))

(declare-fun m!5676543 () Bool)

(assert (=> b!4733254 m!5676543))

(declare-fun m!5676545 () Bool)

(assert (=> b!4733254 m!5676545))

(declare-fun m!5676547 () Bool)

(assert (=> b!4733242 m!5676547))

(declare-fun m!5676549 () Bool)

(assert (=> b!4733242 m!5676549))

(declare-fun m!5676551 () Bool)

(assert (=> b!4733255 m!5676551))

(declare-fun m!5676553 () Bool)

(assert (=> b!4733255 m!5676553))

(declare-fun m!5676555 () Bool)

(assert (=> b!4733255 m!5676555))

(declare-fun m!5676557 () Bool)

(assert (=> b!4733235 m!5676557))

(declare-fun m!5676559 () Bool)

(assert (=> b!4733235 m!5676559))

(declare-fun m!5676561 () Bool)

(assert (=> b!4733235 m!5676561))

(declare-fun m!5676563 () Bool)

(assert (=> b!4733235 m!5676563))

(declare-fun m!5676565 () Bool)

(assert (=> b!4733235 m!5676565))

(declare-fun m!5676567 () Bool)

(assert (=> b!4733235 m!5676567))

(declare-fun m!5676569 () Bool)

(assert (=> b!4733235 m!5676569))

(declare-fun m!5676571 () Bool)

(assert (=> b!4733235 m!5676571))

(declare-fun m!5676573 () Bool)

(assert (=> b!4733235 m!5676573))

(declare-fun m!5676575 () Bool)

(assert (=> b!4733235 m!5676575))

(declare-fun m!5676577 () Bool)

(assert (=> b!4733235 m!5676577))

(assert (=> b!4733235 m!5676569))

(declare-fun m!5676579 () Bool)

(assert (=> b!4733235 m!5676579))

(declare-fun m!5676581 () Bool)

(assert (=> b!4733252 m!5676581))

(declare-fun m!5676583 () Bool)

(assert (=> b!4733253 m!5676583))

(declare-fun m!5676585 () Bool)

(assert (=> b!4733244 m!5676585))

(declare-fun m!5676587 () Bool)

(assert (=> b!4733244 m!5676587))

(declare-fun m!5676589 () Bool)

(assert (=> b!4733244 m!5676589))

(assert (=> b!4733244 m!5676585))

(declare-fun m!5676591 () Bool)

(assert (=> b!4733244 m!5676591))

(declare-fun m!5676593 () Bool)

(assert (=> b!4733244 m!5676593))

(declare-fun m!5676595 () Bool)

(assert (=> b!4733244 m!5676595))

(assert (=> b!4733244 m!5676591))

(assert (=> b!4733244 m!5676587))

(declare-fun m!5676597 () Bool)

(assert (=> b!4733244 m!5676597))

(declare-fun m!5676599 () Bool)

(assert (=> b!4733244 m!5676599))

(declare-fun m!5676601 () Bool)

(assert (=> b!4733244 m!5676601))

(declare-fun m!5676603 () Bool)

(assert (=> b!4733244 m!5676603))

(declare-fun m!5676605 () Bool)

(assert (=> b!4733244 m!5676605))

(declare-fun m!5676607 () Bool)

(assert (=> b!4733244 m!5676607))

(declare-fun m!5676609 () Bool)

(assert (=> b!4733244 m!5676609))

(declare-fun m!5676611 () Bool)

(assert (=> b!4733244 m!5676611))

(assert (=> b!4733244 m!5676603))

(declare-fun m!5676613 () Bool)

(assert (=> b!4733244 m!5676613))

(declare-fun m!5676615 () Bool)

(assert (=> b!4733244 m!5676615))

(declare-fun m!5676617 () Bool)

(assert (=> b!4733244 m!5676617))

(assert (=> b!4733244 m!5676599))

(assert (=> b!4733244 m!5676613))

(assert (=> b!4733244 m!5676617))

(declare-fun m!5676619 () Bool)

(assert (=> b!4733244 m!5676619))

(assert (=> b!4733244 m!5676609))

(declare-fun m!5676621 () Bool)

(assert (=> b!4733244 m!5676621))

(declare-fun m!5676623 () Bool)

(assert (=> b!4733250 m!5676623))

(declare-fun m!5676625 () Bool)

(assert (=> b!4733236 m!5676625))

(declare-fun m!5676627 () Bool)

(assert (=> b!4733243 m!5676627))

(declare-fun m!5676629 () Bool)

(assert (=> b!4733238 m!5676629))

(declare-fun m!5676631 () Bool)

(assert (=> b!4733240 m!5676631))

(declare-fun m!5676633 () Bool)

(assert (=> b!4733241 m!5676633))

(declare-fun m!5676635 () Bool)

(assert (=> start!482632 m!5676635))

(declare-fun m!5676637 () Bool)

(assert (=> start!482632 m!5676637))

(check-sat (not start!482632) (not b!4733252) (not b!4733244) (not b!4733249) (not b!4733245) (not b!4733255) (not b!4733236) (not b!4733235) (not b!4733241) (not b!4733253) (not b!4733250) tp_is_empty!31469 (not b!4733254) (not b!4733243) (not b!4733240) (not b!4733247) (not b!4733238) (not b!4733242) (not b!4733239) tp_is_empty!31471 (not b!4733248) (not b!4733237))
(check-sat)
(get-model)

(declare-fun d!1509662 () Bool)

(declare-fun lt!1896350 () List!53037)

(assert (=> d!1509662 (not (containsKey!3437 lt!1896350 key!4653))))

(declare-fun e!2952310 () List!53037)

(assert (=> d!1509662 (= lt!1896350 e!2952310)))

(declare-fun c!808324 () Bool)

(assert (=> d!1509662 (= c!808324 (and ((_ is Cons!52913) (t!360317 oldBucket!34)) (= (_1!30579 (h!59284 (t!360317 oldBucket!34))) key!4653)))))

(assert (=> d!1509662 (noDuplicateKeys!2044 (t!360317 oldBucket!34))))

(assert (=> d!1509662 (= (removePairForKey!1639 (t!360317 oldBucket!34) key!4653) lt!1896350)))

(declare-fun b!4733264 () Bool)

(assert (=> b!4733264 (= e!2952310 (t!360317 (t!360317 oldBucket!34)))))

(declare-fun b!4733265 () Bool)

(declare-fun e!2952309 () List!53037)

(assert (=> b!4733265 (= e!2952310 e!2952309)))

(declare-fun c!808325 () Bool)

(assert (=> b!4733265 (= c!808325 ((_ is Cons!52913) (t!360317 oldBucket!34)))))

(declare-fun b!4733266 () Bool)

(assert (=> b!4733266 (= e!2952309 (Cons!52913 (h!59284 (t!360317 oldBucket!34)) (removePairForKey!1639 (t!360317 (t!360317 oldBucket!34)) key!4653)))))

(declare-fun b!4733267 () Bool)

(assert (=> b!4733267 (= e!2952309 Nil!52913)))

(assert (= (and d!1509662 c!808324) b!4733264))

(assert (= (and d!1509662 (not c!808324)) b!4733265))

(assert (= (and b!4733265 c!808325) b!4733266))

(assert (= (and b!4733265 (not c!808325)) b!4733267))

(declare-fun m!5676639 () Bool)

(assert (=> d!1509662 m!5676639))

(declare-fun m!5676641 () Bool)

(assert (=> d!1509662 m!5676641))

(declare-fun m!5676643 () Bool)

(assert (=> b!4733266 m!5676643))

(assert (=> b!4733238 d!1509662))

(declare-fun d!1509664 () Bool)

(declare-fun res!2004226 () Bool)

(declare-fun e!2952315 () Bool)

(assert (=> d!1509664 (=> res!2004226 e!2952315)))

(assert (=> d!1509664 (= res!2004226 ((_ is Nil!52914) (toList!5977 lm!2023)))))

(assert (=> d!1509664 (= (forall!11651 (toList!5977 lm!2023) lambda!217712) e!2952315)))

(declare-fun b!4733272 () Bool)

(declare-fun e!2952316 () Bool)

(assert (=> b!4733272 (= e!2952315 e!2952316)))

(declare-fun res!2004227 () Bool)

(assert (=> b!4733272 (=> (not res!2004227) (not e!2952316))))

(declare-fun dynLambda!21856 (Int tuple2!54572) Bool)

(assert (=> b!4733272 (= res!2004227 (dynLambda!21856 lambda!217712 (h!59285 (toList!5977 lm!2023))))))

(declare-fun b!4733273 () Bool)

(assert (=> b!4733273 (= e!2952316 (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217712))))

(assert (= (and d!1509664 (not res!2004226)) b!4733272))

(assert (= (and b!4733272 res!2004227) b!4733273))

(declare-fun b_lambda!180629 () Bool)

(assert (=> (not b_lambda!180629) (not b!4733272)))

(declare-fun m!5676645 () Bool)

(assert (=> b!4733272 m!5676645))

(declare-fun m!5676647 () Bool)

(assert (=> b!4733273 m!5676647))

(assert (=> start!482632 d!1509664))

(declare-fun d!1509666 () Bool)

(declare-fun isStrictlySorted!771 (List!53038) Bool)

(assert (=> d!1509666 (= (inv!68134 lm!2023) (isStrictlySorted!771 (toList!5977 lm!2023)))))

(declare-fun bs!1121235 () Bool)

(assert (= bs!1121235 d!1509666))

(declare-fun m!5676649 () Bool)

(assert (=> bs!1121235 m!5676649))

(assert (=> start!482632 d!1509666))

(declare-fun d!1509668 () Bool)

(declare-fun res!2004232 () Bool)

(declare-fun e!2952321 () Bool)

(assert (=> d!1509668 (=> res!2004232 e!2952321)))

(assert (=> d!1509668 (= res!2004232 (not ((_ is Cons!52913) oldBucket!34)))))

(assert (=> d!1509668 (= (noDuplicateKeys!2044 oldBucket!34) e!2952321)))

(declare-fun b!4733278 () Bool)

(declare-fun e!2952322 () Bool)

(assert (=> b!4733278 (= e!2952321 e!2952322)))

(declare-fun res!2004233 () Bool)

(assert (=> b!4733278 (=> (not res!2004233) (not e!2952322))))

(assert (=> b!4733278 (= res!2004233 (not (containsKey!3437 (t!360317 oldBucket!34) (_1!30579 (h!59284 oldBucket!34)))))))

(declare-fun b!4733279 () Bool)

(assert (=> b!4733279 (= e!2952322 (noDuplicateKeys!2044 (t!360317 oldBucket!34)))))

(assert (= (and d!1509668 (not res!2004232)) b!4733278))

(assert (= (and b!4733278 res!2004233) b!4733279))

(declare-fun m!5676651 () Bool)

(assert (=> b!4733278 m!5676651))

(assert (=> b!4733279 m!5676641))

(assert (=> b!4733248 d!1509668))

(declare-fun d!1509670 () Bool)

(declare-fun res!2004234 () Bool)

(declare-fun e!2952323 () Bool)

(assert (=> d!1509670 (=> res!2004234 e!2952323)))

(assert (=> d!1509670 (= res!2004234 (not ((_ is Cons!52913) newBucket!218)))))

(assert (=> d!1509670 (= (noDuplicateKeys!2044 newBucket!218) e!2952323)))

(declare-fun b!4733280 () Bool)

(declare-fun e!2952324 () Bool)

(assert (=> b!4733280 (= e!2952323 e!2952324)))

(declare-fun res!2004235 () Bool)

(assert (=> b!4733280 (=> (not res!2004235) (not e!2952324))))

(assert (=> b!4733280 (= res!2004235 (not (containsKey!3437 (t!360317 newBucket!218) (_1!30579 (h!59284 newBucket!218)))))))

(declare-fun b!4733281 () Bool)

(assert (=> b!4733281 (= e!2952324 (noDuplicateKeys!2044 (t!360317 newBucket!218)))))

(assert (= (and d!1509670 (not res!2004234)) b!4733280))

(assert (= (and b!4733280 res!2004235) b!4733281))

(declare-fun m!5676653 () Bool)

(assert (=> b!4733280 m!5676653))

(declare-fun m!5676655 () Bool)

(assert (=> b!4733281 m!5676655))

(assert (=> b!4733247 d!1509670))

(declare-fun d!1509672 () Bool)

(assert (=> d!1509672 (= (head!10291 (toList!5977 lm!2023)) (h!59285 (toList!5977 lm!2023)))))

(assert (=> b!4733236 d!1509672))

(declare-fun d!1509674 () Bool)

(declare-fun lt!1896355 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9439 (List!53038) (InoxSet tuple2!54572))

(assert (=> d!1509674 (= lt!1896355 (select (content!9439 (toList!5977 lm!2023)) lt!1896328))))

(declare-fun e!2952332 () Bool)

(assert (=> d!1509674 (= lt!1896355 e!2952332)))

(declare-fun res!2004240 () Bool)

(assert (=> d!1509674 (=> (not res!2004240) (not e!2952332))))

(assert (=> d!1509674 (= res!2004240 ((_ is Cons!52914) (toList!5977 lm!2023)))))

(assert (=> d!1509674 (= (contains!16296 (toList!5977 lm!2023) lt!1896328) lt!1896355)))

(declare-fun b!4733290 () Bool)

(declare-fun e!2952331 () Bool)

(assert (=> b!4733290 (= e!2952332 e!2952331)))

(declare-fun res!2004241 () Bool)

(assert (=> b!4733290 (=> res!2004241 e!2952331)))

(assert (=> b!4733290 (= res!2004241 (= (h!59285 (toList!5977 lm!2023)) lt!1896328))))

(declare-fun b!4733291 () Bool)

(assert (=> b!4733291 (= e!2952331 (contains!16296 (t!360318 (toList!5977 lm!2023)) lt!1896328))))

(assert (= (and d!1509674 res!2004240) b!4733290))

(assert (= (and b!4733290 (not res!2004241)) b!4733291))

(declare-fun m!5676657 () Bool)

(assert (=> d!1509674 m!5676657))

(declare-fun m!5676659 () Bool)

(assert (=> d!1509674 m!5676659))

(declare-fun m!5676661 () Bool)

(assert (=> b!4733291 m!5676661))

(assert (=> b!4733235 d!1509674))

(declare-fun d!1509678 () Bool)

(declare-fun e!2952352 () Bool)

(assert (=> d!1509678 e!2952352))

(declare-fun res!2004250 () Bool)

(assert (=> d!1509678 (=> res!2004250 e!2952352)))

(declare-fun lt!1896367 () Bool)

(assert (=> d!1509678 (= res!2004250 (not lt!1896367))))

(declare-fun lt!1896370 () Bool)

(assert (=> d!1509678 (= lt!1896367 lt!1896370)))

(declare-fun lt!1896368 () Unit!131735)

(declare-fun e!2952351 () Unit!131735)

(assert (=> d!1509678 (= lt!1896368 e!2952351)))

(declare-fun c!808338 () Bool)

(assert (=> d!1509678 (= c!808338 lt!1896370)))

(declare-fun containsKey!3438 (List!53038 (_ BitVec 64)) Bool)

(assert (=> d!1509678 (= lt!1896370 (containsKey!3438 (toList!5977 lm!2023) lt!1896341))))

(assert (=> d!1509678 (= (contains!16297 lm!2023 lt!1896341) lt!1896367)))

(declare-fun b!4733324 () Bool)

(declare-fun lt!1896369 () Unit!131735)

(assert (=> b!4733324 (= e!2952351 lt!1896369)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1889 (List!53038 (_ BitVec 64)) Unit!131735)

(assert (=> b!4733324 (= lt!1896369 (lemmaContainsKeyImpliesGetValueByKeyDefined!1889 (toList!5977 lm!2023) lt!1896341))))

(declare-datatypes ((Option!12425 0))(
  ( (None!12424) (Some!12424 (v!47061 List!53037)) )
))
(declare-fun isDefined!9678 (Option!12425) Bool)

(declare-fun getValueByKey!1999 (List!53038 (_ BitVec 64)) Option!12425)

(assert (=> b!4733324 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341))))

(declare-fun b!4733325 () Bool)

(declare-fun Unit!131748 () Unit!131735)

(assert (=> b!4733325 (= e!2952351 Unit!131748)))

(declare-fun b!4733326 () Bool)

(assert (=> b!4733326 (= e!2952352 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341)))))

(assert (= (and d!1509678 c!808338) b!4733324))

(assert (= (and d!1509678 (not c!808338)) b!4733325))

(assert (= (and d!1509678 (not res!2004250)) b!4733326))

(declare-fun m!5676681 () Bool)

(assert (=> d!1509678 m!5676681))

(declare-fun m!5676683 () Bool)

(assert (=> b!4733324 m!5676683))

(declare-fun m!5676685 () Bool)

(assert (=> b!4733324 m!5676685))

(assert (=> b!4733324 m!5676685))

(declare-fun m!5676687 () Bool)

(assert (=> b!4733324 m!5676687))

(assert (=> b!4733326 m!5676685))

(assert (=> b!4733326 m!5676685))

(assert (=> b!4733326 m!5676687))

(assert (=> b!4733235 d!1509678))

(declare-fun d!1509696 () Bool)

(declare-fun e!2952365 () Bool)

(assert (=> d!1509696 e!2952365))

(declare-fun res!2004262 () Bool)

(assert (=> d!1509696 (=> res!2004262 e!2952365)))

(declare-fun e!2952364 () Bool)

(assert (=> d!1509696 (= res!2004262 e!2952364)))

(declare-fun res!2004260 () Bool)

(assert (=> d!1509696 (=> (not res!2004260) (not e!2952364))))

(declare-fun lt!1896376 () Option!12423)

(declare-fun isEmpty!29210 (Option!12423) Bool)

(assert (=> d!1509696 (= res!2004260 (isEmpty!29210 lt!1896376))))

(declare-fun e!2952367 () Option!12423)

(assert (=> d!1509696 (= lt!1896376 e!2952367)))

(declare-fun c!808343 () Bool)

(assert (=> d!1509696 (= c!808343 (and ((_ is Cons!52913) lt!1896345) (= (_1!30579 (h!59284 lt!1896345)) key!4653)))))

(assert (=> d!1509696 (noDuplicateKeys!2044 lt!1896345)))

(assert (=> d!1509696 (= (getPair!584 lt!1896345 key!4653) lt!1896376)))

(declare-fun b!4733343 () Bool)

(declare-fun res!2004261 () Bool)

(declare-fun e!2952363 () Bool)

(assert (=> b!4733343 (=> (not res!2004261) (not e!2952363))))

(declare-fun get!17772 (Option!12423) tuple2!54570)

(assert (=> b!4733343 (= res!2004261 (= (_1!30579 (get!17772 lt!1896376)) key!4653))))

(declare-fun b!4733344 () Bool)

(assert (=> b!4733344 (= e!2952365 e!2952363)))

(declare-fun res!2004259 () Bool)

(assert (=> b!4733344 (=> (not res!2004259) (not e!2952363))))

(assert (=> b!4733344 (= res!2004259 (isDefined!9677 lt!1896376))))

(declare-fun b!4733345 () Bool)

(declare-fun e!2952366 () Option!12423)

(assert (=> b!4733345 (= e!2952367 e!2952366)))

(declare-fun c!808344 () Bool)

(assert (=> b!4733345 (= c!808344 ((_ is Cons!52913) lt!1896345))))

(declare-fun b!4733346 () Bool)

(assert (=> b!4733346 (= e!2952364 (not (containsKey!3437 lt!1896345 key!4653)))))

(declare-fun b!4733347 () Bool)

(assert (=> b!4733347 (= e!2952366 None!12422)))

(declare-fun b!4733348 () Bool)

(declare-fun contains!16300 (List!53037 tuple2!54570) Bool)

(assert (=> b!4733348 (= e!2952363 (contains!16300 lt!1896345 (get!17772 lt!1896376)))))

(declare-fun b!4733349 () Bool)

(assert (=> b!4733349 (= e!2952366 (getPair!584 (t!360317 lt!1896345) key!4653))))

(declare-fun b!4733350 () Bool)

(assert (=> b!4733350 (= e!2952367 (Some!12422 (h!59284 lt!1896345)))))

(assert (= (and d!1509696 c!808343) b!4733350))

(assert (= (and d!1509696 (not c!808343)) b!4733345))

(assert (= (and b!4733345 c!808344) b!4733349))

(assert (= (and b!4733345 (not c!808344)) b!4733347))

(assert (= (and d!1509696 res!2004260) b!4733346))

(assert (= (and d!1509696 (not res!2004262)) b!4733344))

(assert (= (and b!4733344 res!2004259) b!4733343))

(assert (= (and b!4733343 res!2004261) b!4733348))

(declare-fun m!5676695 () Bool)

(assert (=> d!1509696 m!5676695))

(declare-fun m!5676697 () Bool)

(assert (=> d!1509696 m!5676697))

(declare-fun m!5676699 () Bool)

(assert (=> b!4733348 m!5676699))

(assert (=> b!4733348 m!5676699))

(declare-fun m!5676701 () Bool)

(assert (=> b!4733348 m!5676701))

(assert (=> b!4733343 m!5676699))

(declare-fun m!5676703 () Bool)

(assert (=> b!4733346 m!5676703))

(declare-fun m!5676705 () Bool)

(assert (=> b!4733349 m!5676705))

(declare-fun m!5676707 () Bool)

(assert (=> b!4733344 m!5676707))

(assert (=> b!4733235 d!1509696))

(declare-fun bs!1121239 () Bool)

(declare-fun d!1509702 () Bool)

(assert (= bs!1121239 (and d!1509702 start!482632)))

(declare-fun lambda!217718 () Int)

(assert (=> bs!1121239 (= lambda!217718 lambda!217712)))

(assert (=> d!1509702 (contains!16297 lm!2023 (hash!4436 hashF!1323 key!4653))))

(declare-fun lt!1896379 () Unit!131735)

(declare-fun choose!33514 (ListLongMap!4507 K!14260 Hashable!6413) Unit!131735)

(assert (=> d!1509702 (= lt!1896379 (choose!33514 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509702 (forall!11651 (toList!5977 lm!2023) lambda!217718)))

(assert (=> d!1509702 (= (lemmaInGenMapThenLongMapContainsHash!790 lm!2023 key!4653 hashF!1323) lt!1896379)))

(declare-fun bs!1121240 () Bool)

(assert (= bs!1121240 d!1509702))

(assert (=> bs!1121240 m!5676631))

(assert (=> bs!1121240 m!5676631))

(declare-fun m!5676709 () Bool)

(assert (=> bs!1121240 m!5676709))

(declare-fun m!5676711 () Bool)

(assert (=> bs!1121240 m!5676711))

(declare-fun m!5676713 () Bool)

(assert (=> bs!1121240 m!5676713))

(assert (=> b!4733235 d!1509702))

(declare-fun bs!1121241 () Bool)

(declare-fun d!1509704 () Bool)

(assert (= bs!1121241 (and d!1509704 start!482632)))

(declare-fun lambda!217749 () Int)

(assert (=> bs!1121241 (= lambda!217749 lambda!217712)))

(declare-fun bs!1121242 () Bool)

(assert (= bs!1121242 (and d!1509704 d!1509702)))

(assert (=> bs!1121242 (= lambda!217749 lambda!217718)))

(declare-fun b!4733365 () Bool)

(declare-fun res!2004273 () Bool)

(declare-fun e!2952377 () Bool)

(assert (=> b!4733365 (=> (not res!2004273) (not e!2952377))))

(assert (=> b!4733365 (= res!2004273 (allKeysSameHashInMap!1958 lm!2023 hashF!1323))))

(declare-fun b!4733367 () Bool)

(assert (=> b!4733367 (= e!2952377 (isDefined!9677 (getPair!584 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1896438 () Unit!131735)

(assert (=> b!4733367 (= lt!1896438 (forallContained!3691 (toList!5977 lm!2023) lambda!217749 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))))

(declare-fun lt!1896444 () Unit!131735)

(declare-fun lt!1896440 () Unit!131735)

(assert (=> b!4733367 (= lt!1896444 lt!1896440)))

(declare-fun lt!1896441 () (_ BitVec 64))

(declare-fun lt!1896442 () List!53037)

(assert (=> b!4733367 (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1896441 lt!1896442))))

(assert (=> b!4733367 (= lt!1896440 (lemmaGetValueImpliesTupleContained!389 lm!2023 lt!1896441 lt!1896442))))

(declare-fun e!2952376 () Bool)

(assert (=> b!4733367 e!2952376))

(declare-fun res!2004276 () Bool)

(assert (=> b!4733367 (=> (not res!2004276) (not e!2952376))))

(assert (=> b!4733367 (= res!2004276 (contains!16297 lm!2023 lt!1896441))))

(assert (=> b!4733367 (= lt!1896442 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))

(assert (=> b!4733367 (= lt!1896441 (hash!4436 hashF!1323 key!4653))))

(declare-fun lt!1896445 () Unit!131735)

(declare-fun lt!1896439 () Unit!131735)

(assert (=> b!4733367 (= lt!1896445 lt!1896439)))

(assert (=> b!4733367 (contains!16297 lm!2023 (hash!4436 hashF!1323 key!4653))))

(assert (=> b!4733367 (= lt!1896439 (lemmaInGenMapThenLongMapContainsHash!790 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4733366 () Bool)

(declare-fun res!2004274 () Bool)

(assert (=> b!4733366 (=> (not res!2004274) (not e!2952377))))

(assert (=> b!4733366 (= res!2004274 (contains!16298 (extractMap!2070 (toList!5977 lm!2023)) key!4653))))

(declare-fun b!4733368 () Bool)

(assert (=> b!4733368 (= e!2952376 (= (getValueByKey!1999 (toList!5977 lm!2023) lt!1896441) (Some!12424 lt!1896442)))))

(assert (=> d!1509704 e!2952377))

(declare-fun res!2004275 () Bool)

(assert (=> d!1509704 (=> (not res!2004275) (not e!2952377))))

(assert (=> d!1509704 (= res!2004275 (forall!11651 (toList!5977 lm!2023) lambda!217749))))

(declare-fun lt!1896443 () Unit!131735)

(declare-fun choose!33515 (ListLongMap!4507 K!14260 Hashable!6413) Unit!131735)

(assert (=> d!1509704 (= lt!1896443 (choose!33515 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509704 (forall!11651 (toList!5977 lm!2023) lambda!217749)))

(assert (=> d!1509704 (= (lemmaInGenMapThenGetPairDefined!380 lm!2023 key!4653 hashF!1323) lt!1896443)))

(assert (= (and d!1509704 res!2004275) b!4733365))

(assert (= (and b!4733365 res!2004273) b!4733366))

(assert (= (and b!4733366 res!2004274) b!4733367))

(assert (= (and b!4733367 res!2004276) b!4733368))

(declare-fun m!5676715 () Bool)

(assert (=> d!1509704 m!5676715))

(declare-fun m!5676717 () Bool)

(assert (=> d!1509704 m!5676717))

(assert (=> d!1509704 m!5676715))

(assert (=> b!4733367 m!5676631))

(declare-fun m!5676719 () Bool)

(assert (=> b!4733367 m!5676719))

(declare-fun m!5676721 () Bool)

(assert (=> b!4733367 m!5676721))

(declare-fun m!5676723 () Bool)

(assert (=> b!4733367 m!5676723))

(declare-fun m!5676725 () Bool)

(assert (=> b!4733367 m!5676725))

(declare-fun m!5676727 () Bool)

(assert (=> b!4733367 m!5676727))

(declare-fun m!5676729 () Bool)

(assert (=> b!4733367 m!5676729))

(declare-fun m!5676731 () Bool)

(assert (=> b!4733367 m!5676731))

(assert (=> b!4733367 m!5676561))

(assert (=> b!4733367 m!5676719))

(assert (=> b!4733367 m!5676721))

(assert (=> b!4733367 m!5676631))

(assert (=> b!4733367 m!5676709))

(assert (=> b!4733367 m!5676631))

(assert (=> b!4733366 m!5676549))

(assert (=> b!4733366 m!5676549))

(declare-fun m!5676733 () Bool)

(assert (=> b!4733366 m!5676733))

(assert (=> b!4733365 m!5676627))

(declare-fun m!5676735 () Bool)

(assert (=> b!4733368 m!5676735))

(assert (=> b!4733235 d!1509704))

(declare-fun d!1509706 () Bool)

(assert (=> d!1509706 (containsKey!3437 oldBucket!34 key!4653)))

(declare-fun lt!1896448 () Unit!131735)

(declare-fun choose!33516 (List!53037 K!14260 Hashable!6413) Unit!131735)

(assert (=> d!1509706 (= lt!1896448 (choose!33516 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1509706 (noDuplicateKeys!2044 oldBucket!34)))

(assert (=> d!1509706 (= (lemmaGetPairDefinedThenContainsKey!328 oldBucket!34 key!4653 hashF!1323) lt!1896448)))

(declare-fun bs!1121243 () Bool)

(assert (= bs!1121243 d!1509706))

(assert (=> bs!1121243 m!5676577))

(declare-fun m!5676737 () Bool)

(assert (=> bs!1121243 m!5676737))

(assert (=> bs!1121243 m!5676539))

(assert (=> b!4733235 d!1509706))

(declare-fun d!1509708 () Bool)

(declare-fun res!2004285 () Bool)

(declare-fun e!2952384 () Bool)

(assert (=> d!1509708 (=> res!2004285 e!2952384)))

(assert (=> d!1509708 (= res!2004285 (and ((_ is Cons!52913) (t!360317 oldBucket!34)) (= (_1!30579 (h!59284 (t!360317 oldBucket!34))) key!4653)))))

(assert (=> d!1509708 (= (containsKey!3437 (t!360317 oldBucket!34) key!4653) e!2952384)))

(declare-fun b!4733377 () Bool)

(declare-fun e!2952385 () Bool)

(assert (=> b!4733377 (= e!2952384 e!2952385)))

(declare-fun res!2004286 () Bool)

(assert (=> b!4733377 (=> (not res!2004286) (not e!2952385))))

(assert (=> b!4733377 (= res!2004286 ((_ is Cons!52913) (t!360317 oldBucket!34)))))

(declare-fun b!4733378 () Bool)

(assert (=> b!4733378 (= e!2952385 (containsKey!3437 (t!360317 (t!360317 oldBucket!34)) key!4653))))

(assert (= (and d!1509708 (not res!2004285)) b!4733377))

(assert (= (and b!4733377 res!2004286) b!4733378))

(declare-fun m!5676739 () Bool)

(assert (=> b!4733378 m!5676739))

(assert (=> b!4733235 d!1509708))

(declare-fun d!1509710 () Bool)

(assert (=> d!1509710 (dynLambda!21856 lambda!217712 lt!1896328)))

(declare-fun lt!1896451 () Unit!131735)

(declare-fun choose!33517 (List!53038 Int tuple2!54572) Unit!131735)

(assert (=> d!1509710 (= lt!1896451 (choose!33517 (toList!5977 lm!2023) lambda!217712 lt!1896328))))

(declare-fun e!2952388 () Bool)

(assert (=> d!1509710 e!2952388))

(declare-fun res!2004289 () Bool)

(assert (=> d!1509710 (=> (not res!2004289) (not e!2952388))))

(assert (=> d!1509710 (= res!2004289 (forall!11651 (toList!5977 lm!2023) lambda!217712))))

(assert (=> d!1509710 (= (forallContained!3691 (toList!5977 lm!2023) lambda!217712 lt!1896328) lt!1896451)))

(declare-fun b!4733381 () Bool)

(assert (=> b!4733381 (= e!2952388 (contains!16296 (toList!5977 lm!2023) lt!1896328))))

(assert (= (and d!1509710 res!2004289) b!4733381))

(declare-fun b_lambda!180631 () Bool)

(assert (=> (not b_lambda!180631) (not d!1509710)))

(declare-fun m!5676741 () Bool)

(assert (=> d!1509710 m!5676741))

(declare-fun m!5676743 () Bool)

(assert (=> d!1509710 m!5676743))

(assert (=> d!1509710 m!5676635))

(assert (=> b!4733381 m!5676563))

(assert (=> b!4733235 d!1509710))

(declare-fun d!1509712 () Bool)

(declare-fun get!17773 (Option!12425) List!53037)

(assert (=> d!1509712 (= (apply!12469 lm!2023 lt!1896341) (get!17773 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341)))))

(declare-fun bs!1121247 () Bool)

(assert (= bs!1121247 d!1509712))

(assert (=> bs!1121247 m!5676685))

(assert (=> bs!1121247 m!5676685))

(declare-fun m!5676745 () Bool)

(assert (=> bs!1121247 m!5676745))

(assert (=> b!4733235 d!1509712))

(declare-fun d!1509714 () Bool)

(assert (=> d!1509714 (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1896341 lt!1896345))))

(declare-fun lt!1896475 () Unit!131735)

(declare-fun choose!33518 (ListLongMap!4507 (_ BitVec 64) List!53037) Unit!131735)

(assert (=> d!1509714 (= lt!1896475 (choose!33518 lm!2023 lt!1896341 lt!1896345))))

(assert (=> d!1509714 (contains!16297 lm!2023 lt!1896341)))

(assert (=> d!1509714 (= (lemmaGetValueImpliesTupleContained!389 lm!2023 lt!1896341 lt!1896345) lt!1896475)))

(declare-fun bs!1121251 () Bool)

(assert (= bs!1121251 d!1509714))

(declare-fun m!5676747 () Bool)

(assert (=> bs!1121251 m!5676747))

(declare-fun m!5676749 () Bool)

(assert (=> bs!1121251 m!5676749))

(assert (=> bs!1121251 m!5676575))

(assert (=> b!4733235 d!1509714))

(declare-fun d!1509716 () Bool)

(declare-fun res!2004293 () Bool)

(declare-fun e!2952392 () Bool)

(assert (=> d!1509716 (=> res!2004293 e!2952392)))

(assert (=> d!1509716 (= res!2004293 (and ((_ is Cons!52913) oldBucket!34) (= (_1!30579 (h!59284 oldBucket!34)) key!4653)))))

(assert (=> d!1509716 (= (containsKey!3437 oldBucket!34 key!4653) e!2952392)))

(declare-fun b!4733390 () Bool)

(declare-fun e!2952393 () Bool)

(assert (=> b!4733390 (= e!2952392 e!2952393)))

(declare-fun res!2004294 () Bool)

(assert (=> b!4733390 (=> (not res!2004294) (not e!2952393))))

(assert (=> b!4733390 (= res!2004294 ((_ is Cons!52913) oldBucket!34))))

(declare-fun b!4733391 () Bool)

(assert (=> b!4733391 (= e!2952393 (containsKey!3437 (t!360317 oldBucket!34) key!4653))))

(assert (= (and d!1509716 (not res!2004293)) b!4733390))

(assert (= (and b!4733390 res!2004294) b!4733391))

(assert (=> b!4733391 m!5676567))

(assert (=> b!4733235 d!1509716))

(declare-fun d!1509718 () Bool)

(assert (=> d!1509718 (= (isDefined!9677 (getPair!584 lt!1896345 key!4653)) (not (isEmpty!29210 (getPair!584 lt!1896345 key!4653))))))

(declare-fun bs!1121252 () Bool)

(assert (= bs!1121252 d!1509718))

(assert (=> bs!1121252 m!5676569))

(declare-fun m!5676785 () Bool)

(assert (=> bs!1121252 m!5676785))

(assert (=> b!4733235 d!1509718))

(declare-fun d!1509722 () Bool)

(declare-fun content!9440 (List!53037) (InoxSet tuple2!54570))

(assert (=> d!1509722 (= (eq!1141 lt!1896329 (+!2292 lt!1896340 lt!1896347)) (= (content!9440 (toList!5978 lt!1896329)) (content!9440 (toList!5978 (+!2292 lt!1896340 lt!1896347)))))))

(declare-fun bs!1121253 () Bool)

(assert (= bs!1121253 d!1509722))

(declare-fun m!5676787 () Bool)

(assert (=> bs!1121253 m!5676787))

(declare-fun m!5676789 () Bool)

(assert (=> bs!1121253 m!5676789))

(assert (=> b!4733245 d!1509722))

(declare-fun d!1509724 () Bool)

(declare-fun e!2952399 () Bool)

(assert (=> d!1509724 e!2952399))

(declare-fun res!2004305 () Bool)

(assert (=> d!1509724 (=> (not res!2004305) (not e!2952399))))

(declare-fun lt!1896498 () ListMap!5341)

(assert (=> d!1509724 (= res!2004305 (contains!16298 lt!1896498 (_1!30579 lt!1896347)))))

(declare-fun lt!1896496 () List!53037)

(assert (=> d!1509724 (= lt!1896498 (ListMap!5342 lt!1896496))))

(declare-fun lt!1896499 () Unit!131735)

(declare-fun lt!1896497 () Unit!131735)

(assert (=> d!1509724 (= lt!1896499 lt!1896497)))

(declare-datatypes ((Option!12426 0))(
  ( (None!12425) (Some!12425 (v!47062 V!14506)) )
))
(declare-fun getValueByKey!2000 (List!53037 K!14260) Option!12426)

(assert (=> d!1509724 (= (getValueByKey!2000 lt!1896496 (_1!30579 lt!1896347)) (Some!12425 (_2!30579 lt!1896347)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1102 (List!53037 K!14260 V!14506) Unit!131735)

(assert (=> d!1509724 (= lt!1896497 (lemmaContainsTupThenGetReturnValue!1102 lt!1896496 (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun insertNoDuplicatedKeys!610 (List!53037 K!14260 V!14506) List!53037)

(assert (=> d!1509724 (= lt!1896496 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896340) (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(assert (=> d!1509724 (= (+!2292 lt!1896340 lt!1896347) lt!1896498)))

(declare-fun b!4733402 () Bool)

(declare-fun res!2004306 () Bool)

(assert (=> b!4733402 (=> (not res!2004306) (not e!2952399))))

(assert (=> b!4733402 (= res!2004306 (= (getValueByKey!2000 (toList!5978 lt!1896498) (_1!30579 lt!1896347)) (Some!12425 (_2!30579 lt!1896347))))))

(declare-fun b!4733403 () Bool)

(assert (=> b!4733403 (= e!2952399 (contains!16300 (toList!5978 lt!1896498) lt!1896347))))

(assert (= (and d!1509724 res!2004305) b!4733402))

(assert (= (and b!4733402 res!2004306) b!4733403))

(declare-fun m!5676803 () Bool)

(assert (=> d!1509724 m!5676803))

(declare-fun m!5676805 () Bool)

(assert (=> d!1509724 m!5676805))

(declare-fun m!5676807 () Bool)

(assert (=> d!1509724 m!5676807))

(declare-fun m!5676809 () Bool)

(assert (=> d!1509724 m!5676809))

(declare-fun m!5676811 () Bool)

(assert (=> b!4733402 m!5676811))

(declare-fun m!5676813 () Bool)

(assert (=> b!4733403 m!5676813))

(assert (=> b!4733245 d!1509724))

(declare-fun b!4733502 () Bool)

(assert (=> b!4733502 true))

(declare-fun bs!1121434 () Bool)

(declare-fun b!4733500 () Bool)

(assert (= bs!1121434 (and b!4733500 b!4733502)))

(declare-fun lambda!217820 () Int)

(declare-fun lambda!217819 () Int)

(assert (=> bs!1121434 (= lambda!217820 lambda!217819)))

(assert (=> b!4733500 true))

(declare-fun lambda!217821 () Int)

(declare-fun lt!1896706 () ListMap!5341)

(assert (=> bs!1121434 (= (= lt!1896706 lt!1896343) (= lambda!217821 lambda!217819))))

(assert (=> b!4733500 (= (= lt!1896706 lt!1896343) (= lambda!217821 lambda!217820))))

(assert (=> b!4733500 true))

(declare-fun bs!1121435 () Bool)

(declare-fun d!1509730 () Bool)

(assert (= bs!1121435 (and d!1509730 b!4733502)))

(declare-fun lambda!217822 () Int)

(declare-fun lt!1896702 () ListMap!5341)

(assert (=> bs!1121435 (= (= lt!1896702 lt!1896343) (= lambda!217822 lambda!217819))))

(declare-fun bs!1121436 () Bool)

(assert (= bs!1121436 (and d!1509730 b!4733500)))

(assert (=> bs!1121436 (= (= lt!1896702 lt!1896343) (= lambda!217822 lambda!217820))))

(assert (=> bs!1121436 (= (= lt!1896702 lt!1896706) (= lambda!217822 lambda!217821))))

(assert (=> d!1509730 true))

(declare-fun c!808373 () Bool)

(declare-fun call!331071 () Bool)

(declare-fun bm!331066 () Bool)

(declare-fun forall!11653 (List!53037 Int) Bool)

(assert (=> bm!331066 (= call!331071 (forall!11653 (toList!5978 lt!1896343) (ite c!808373 lambda!217819 lambda!217821)))))

(declare-fun b!4733499 () Bool)

(declare-fun e!2952460 () Bool)

(assert (=> b!4733499 (= e!2952460 call!331071)))

(declare-fun bm!331067 () Bool)

(declare-fun call!331073 () Unit!131735)

(declare-fun lemmaContainsAllItsOwnKeys!820 (ListMap!5341) Unit!131735)

(assert (=> bm!331067 (= call!331073 (lemmaContainsAllItsOwnKeys!820 lt!1896343))))

(declare-fun call!331072 () Bool)

(declare-fun bm!331068 () Bool)

(assert (=> bm!331068 (= call!331072 (forall!11653 (toList!5978 lt!1896343) (ite c!808373 lambda!217819 lambda!217821)))))

(declare-fun e!2952458 () Bool)

(assert (=> d!1509730 e!2952458))

(declare-fun res!2004349 () Bool)

(assert (=> d!1509730 (=> (not res!2004349) (not e!2952458))))

(assert (=> d!1509730 (= res!2004349 (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217822))))

(declare-fun e!2952459 () ListMap!5341)

(assert (=> d!1509730 (= lt!1896702 e!2952459)))

(assert (=> d!1509730 (= c!808373 ((_ is Nil!52913) (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> d!1509730 (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023))))))

(assert (=> d!1509730 (= (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (toList!5977 lm!2023))) lt!1896343) lt!1896702)))

(assert (=> b!4733500 (= e!2952459 lt!1896706)))

(declare-fun lt!1896697 () ListMap!5341)

(assert (=> b!4733500 (= lt!1896697 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> b!4733500 (= lt!1896706 (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1896698 () Unit!131735)

(assert (=> b!4733500 (= lt!1896698 call!331073)))

(assert (=> b!4733500 (forall!11653 (toList!5978 lt!1896343) lambda!217820)))

(declare-fun lt!1896695 () Unit!131735)

(assert (=> b!4733500 (= lt!1896695 lt!1896698)))

(assert (=> b!4733500 (forall!11653 (toList!5978 lt!1896697) lambda!217821)))

(declare-fun lt!1896696 () Unit!131735)

(declare-fun Unit!131762 () Unit!131735)

(assert (=> b!4733500 (= lt!1896696 Unit!131762)))

(assert (=> b!4733500 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217821)))

(declare-fun lt!1896692 () Unit!131735)

(declare-fun Unit!131763 () Unit!131735)

(assert (=> b!4733500 (= lt!1896692 Unit!131763)))

(declare-fun lt!1896707 () Unit!131735)

(declare-fun Unit!131764 () Unit!131735)

(assert (=> b!4733500 (= lt!1896707 Unit!131764)))

(declare-fun lt!1896689 () Unit!131735)

(declare-fun forallContained!3693 (List!53037 Int tuple2!54570) Unit!131735)

(assert (=> b!4733500 (= lt!1896689 (forallContained!3693 (toList!5978 lt!1896697) lambda!217821 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> b!4733500 (contains!16298 lt!1896697 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun lt!1896701 () Unit!131735)

(declare-fun Unit!131765 () Unit!131735)

(assert (=> b!4733500 (= lt!1896701 Unit!131765)))

(assert (=> b!4733500 (contains!16298 lt!1896706 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun lt!1896703 () Unit!131735)

(declare-fun Unit!131766 () Unit!131735)

(assert (=> b!4733500 (= lt!1896703 Unit!131766)))

(assert (=> b!4733500 (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217821)))

(declare-fun lt!1896705 () Unit!131735)

(declare-fun Unit!131767 () Unit!131735)

(assert (=> b!4733500 (= lt!1896705 Unit!131767)))

(assert (=> b!4733500 (forall!11653 (toList!5978 lt!1896697) lambda!217821)))

(declare-fun lt!1896693 () Unit!131735)

(declare-fun Unit!131768 () Unit!131735)

(assert (=> b!4733500 (= lt!1896693 Unit!131768)))

(declare-fun lt!1896688 () Unit!131735)

(declare-fun Unit!131769 () Unit!131735)

(assert (=> b!4733500 (= lt!1896688 Unit!131769)))

(declare-fun lt!1896690 () Unit!131735)

(declare-fun addForallContainsKeyThenBeforeAdding!819 (ListMap!5341 ListMap!5341 K!14260 V!14506) Unit!131735)

(assert (=> b!4733500 (= lt!1896690 (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896706 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> b!4733500 call!331072))

(declare-fun lt!1896699 () Unit!131735)

(assert (=> b!4733500 (= lt!1896699 lt!1896690)))

(assert (=> b!4733500 (forall!11653 (toList!5978 lt!1896343) lambda!217821)))

(declare-fun lt!1896687 () Unit!131735)

(declare-fun Unit!131770 () Unit!131735)

(assert (=> b!4733500 (= lt!1896687 Unit!131770)))

(declare-fun res!2004351 () Bool)

(assert (=> b!4733500 (= res!2004351 (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217821))))

(assert (=> b!4733500 (=> (not res!2004351) (not e!2952460))))

(assert (=> b!4733500 e!2952460))

(declare-fun lt!1896691 () Unit!131735)

(declare-fun Unit!131771 () Unit!131735)

(assert (=> b!4733500 (= lt!1896691 Unit!131771)))

(declare-fun b!4733501 () Bool)

(declare-fun res!2004350 () Bool)

(assert (=> b!4733501 (=> (not res!2004350) (not e!2952458))))

(assert (=> b!4733501 (= res!2004350 (forall!11653 (toList!5978 lt!1896343) lambda!217822))))

(assert (=> b!4733502 (= e!2952459 lt!1896343)))

(declare-fun lt!1896700 () Unit!131735)

(assert (=> b!4733502 (= lt!1896700 call!331073)))

(assert (=> b!4733502 call!331072))

(declare-fun lt!1896704 () Unit!131735)

(assert (=> b!4733502 (= lt!1896704 lt!1896700)))

(assert (=> b!4733502 call!331071))

(declare-fun lt!1896694 () Unit!131735)

(declare-fun Unit!131772 () Unit!131735)

(assert (=> b!4733502 (= lt!1896694 Unit!131772)))

(declare-fun b!4733503 () Bool)

(declare-fun invariantList!1535 (List!53037) Bool)

(assert (=> b!4733503 (= e!2952458 (invariantList!1535 (toList!5978 lt!1896702)))))

(assert (= (and d!1509730 c!808373) b!4733502))

(assert (= (and d!1509730 (not c!808373)) b!4733500))

(assert (= (and b!4733500 res!2004351) b!4733499))

(assert (= (or b!4733502 b!4733500) bm!331067))

(assert (= (or b!4733502 b!4733500) bm!331068))

(assert (= (or b!4733502 b!4733499) bm!331066))

(assert (= (and d!1509730 res!2004349) b!4733501))

(assert (= (and b!4733501 res!2004350) b!4733503))

(declare-fun m!5677105 () Bool)

(assert (=> bm!331066 m!5677105))

(declare-fun m!5677107 () Bool)

(assert (=> d!1509730 m!5677107))

(declare-fun m!5677109 () Bool)

(assert (=> d!1509730 m!5677109))

(declare-fun m!5677111 () Bool)

(assert (=> bm!331067 m!5677111))

(declare-fun m!5677113 () Bool)

(assert (=> b!4733500 m!5677113))

(declare-fun m!5677115 () Bool)

(assert (=> b!4733500 m!5677115))

(declare-fun m!5677117 () Bool)

(assert (=> b!4733500 m!5677117))

(declare-fun m!5677119 () Bool)

(assert (=> b!4733500 m!5677119))

(declare-fun m!5677121 () Bool)

(assert (=> b!4733500 m!5677121))

(declare-fun m!5677123 () Bool)

(assert (=> b!4733500 m!5677123))

(declare-fun m!5677125 () Bool)

(assert (=> b!4733500 m!5677125))

(assert (=> b!4733500 m!5677113))

(declare-fun m!5677127 () Bool)

(assert (=> b!4733500 m!5677127))

(declare-fun m!5677129 () Bool)

(assert (=> b!4733500 m!5677129))

(assert (=> b!4733500 m!5677119))

(declare-fun m!5677131 () Bool)

(assert (=> b!4733500 m!5677131))

(assert (=> b!4733500 m!5677127))

(declare-fun m!5677133 () Bool)

(assert (=> b!4733500 m!5677133))

(declare-fun m!5677135 () Bool)

(assert (=> b!4733501 m!5677135))

(assert (=> bm!331068 m!5677105))

(declare-fun m!5677137 () Bool)

(assert (=> b!4733503 m!5677137))

(assert (=> b!4733255 d!1509730))

(declare-fun bs!1121438 () Bool)

(declare-fun d!1509792 () Bool)

(assert (= bs!1121438 (and d!1509792 start!482632)))

(declare-fun lambda!217825 () Int)

(assert (=> bs!1121438 (= lambda!217825 lambda!217712)))

(declare-fun bs!1121439 () Bool)

(assert (= bs!1121439 (and d!1509792 d!1509702)))

(assert (=> bs!1121439 (= lambda!217825 lambda!217718)))

(declare-fun bs!1121440 () Bool)

(assert (= bs!1121440 (and d!1509792 d!1509704)))

(assert (=> bs!1121440 (= lambda!217825 lambda!217749)))

(declare-fun lt!1896725 () ListMap!5341)

(assert (=> d!1509792 (invariantList!1535 (toList!5978 lt!1896725))))

(declare-fun e!2952480 () ListMap!5341)

(assert (=> d!1509792 (= lt!1896725 e!2952480)))

(declare-fun c!808379 () Bool)

(assert (=> d!1509792 (= c!808379 ((_ is Cons!52914) (t!360318 (toList!5977 lm!2023))))))

(assert (=> d!1509792 (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217825)))

(assert (=> d!1509792 (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896725)))

(declare-fun b!4733530 () Bool)

(assert (=> b!4733530 (= e!2952480 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))))))

(declare-fun b!4733531 () Bool)

(assert (=> b!4733531 (= e!2952480 (ListMap!5342 Nil!52913))))

(assert (= (and d!1509792 c!808379) b!4733530))

(assert (= (and d!1509792 (not c!808379)) b!4733531))

(declare-fun m!5677153 () Bool)

(assert (=> d!1509792 m!5677153))

(declare-fun m!5677155 () Bool)

(assert (=> d!1509792 m!5677155))

(declare-fun m!5677157 () Bool)

(assert (=> b!4733530 m!5677157))

(assert (=> b!4733530 m!5677157))

(declare-fun m!5677159 () Bool)

(assert (=> b!4733530 m!5677159))

(assert (=> b!4733255 d!1509792))

(declare-fun d!1509804 () Bool)

(declare-fun tail!9078 (List!53038) List!53038)

(assert (=> d!1509804 (= (tail!9077 lm!2023) (ListLongMap!4508 (tail!9078 (toList!5977 lm!2023))))))

(declare-fun bs!1121441 () Bool)

(assert (= bs!1121441 d!1509804))

(declare-fun m!5677161 () Bool)

(assert (=> bs!1121441 m!5677161))

(assert (=> b!4733255 d!1509804))

(declare-fun d!1509806 () Bool)

(assert (=> d!1509806 (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))))

(declare-fun lt!1896728 () Unit!131735)

(declare-fun choose!33519 (tuple2!54570 List!53037 ListMap!5341) Unit!131735)

(assert (=> d!1509806 (= lt!1896728 (choose!33519 lt!1896326 lt!1896336 lt!1896343))))

(assert (=> d!1509806 (noDuplicateKeys!2044 lt!1896336)))

(assert (=> d!1509806 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!390 lt!1896326 lt!1896336 lt!1896343) lt!1896728)))

(declare-fun bs!1121442 () Bool)

(assert (= bs!1121442 d!1509806))

(declare-fun m!5677163 () Bool)

(assert (=> bs!1121442 m!5677163))

(assert (=> bs!1121442 m!5676603))

(assert (=> bs!1121442 m!5676603))

(assert (=> bs!1121442 m!5676613))

(assert (=> bs!1121442 m!5676615))

(assert (=> bs!1121442 m!5676599))

(declare-fun m!5677165 () Bool)

(assert (=> bs!1121442 m!5677165))

(assert (=> bs!1121442 m!5676599))

(assert (=> bs!1121442 m!5676613))

(assert (=> b!4733244 d!1509806))

(declare-fun d!1509808 () Bool)

(declare-fun e!2952481 () Bool)

(assert (=> d!1509808 e!2952481))

(declare-fun res!2004366 () Bool)

(assert (=> d!1509808 (=> (not res!2004366) (not e!2952481))))

(declare-fun lt!1896731 () ListMap!5341)

(assert (=> d!1509808 (= res!2004366 (contains!16298 lt!1896731 (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun lt!1896729 () List!53037)

(assert (=> d!1509808 (= lt!1896731 (ListMap!5342 lt!1896729))))

(declare-fun lt!1896732 () Unit!131735)

(declare-fun lt!1896730 () Unit!131735)

(assert (=> d!1509808 (= lt!1896732 lt!1896730)))

(assert (=> d!1509808 (= (getValueByKey!2000 lt!1896729 (_1!30579 (h!59284 oldBucket!34))) (Some!12425 (_2!30579 (h!59284 oldBucket!34))))))

(assert (=> d!1509808 (= lt!1896730 (lemmaContainsTupThenGetReturnValue!1102 lt!1896729 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))))))

(assert (=> d!1509808 (= lt!1896729 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896340) (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))))))

(assert (=> d!1509808 (= (+!2292 lt!1896340 (h!59284 oldBucket!34)) lt!1896731)))

(declare-fun b!4733532 () Bool)

(declare-fun res!2004367 () Bool)

(assert (=> b!4733532 (=> (not res!2004367) (not e!2952481))))

(assert (=> b!4733532 (= res!2004367 (= (getValueByKey!2000 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))) (Some!12425 (_2!30579 (h!59284 oldBucket!34)))))))

(declare-fun b!4733533 () Bool)

(assert (=> b!4733533 (= e!2952481 (contains!16300 (toList!5978 lt!1896731) (h!59284 oldBucket!34)))))

(assert (= (and d!1509808 res!2004366) b!4733532))

(assert (= (and b!4733532 res!2004367) b!4733533))

(declare-fun m!5677167 () Bool)

(assert (=> d!1509808 m!5677167))

(declare-fun m!5677169 () Bool)

(assert (=> d!1509808 m!5677169))

(declare-fun m!5677171 () Bool)

(assert (=> d!1509808 m!5677171))

(declare-fun m!5677173 () Bool)

(assert (=> d!1509808 m!5677173))

(declare-fun m!5677175 () Bool)

(assert (=> b!4733532 m!5677175))

(declare-fun m!5677177 () Bool)

(assert (=> b!4733533 m!5677177))

(assert (=> b!4733244 d!1509808))

(declare-fun d!1509810 () Bool)

(assert (=> d!1509810 (= (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326)) (= (content!9440 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343))) (content!9440 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326)))))))

(declare-fun bs!1121443 () Bool)

(assert (= bs!1121443 d!1509810))

(declare-fun m!5677179 () Bool)

(assert (=> bs!1121443 m!5677179))

(declare-fun m!5677181 () Bool)

(assert (=> bs!1121443 m!5677181))

(assert (=> b!4733244 d!1509810))

(declare-fun bs!1121444 () Bool)

(declare-fun d!1509812 () Bool)

(assert (= bs!1121444 (and d!1509812 start!482632)))

(declare-fun lambda!217826 () Int)

(assert (=> bs!1121444 (= lambda!217826 lambda!217712)))

(declare-fun bs!1121445 () Bool)

(assert (= bs!1121445 (and d!1509812 d!1509702)))

(assert (=> bs!1121445 (= lambda!217826 lambda!217718)))

(declare-fun bs!1121446 () Bool)

(assert (= bs!1121446 (and d!1509812 d!1509704)))

(assert (=> bs!1121446 (= lambda!217826 lambda!217749)))

(declare-fun bs!1121447 () Bool)

(assert (= bs!1121447 (and d!1509812 d!1509792)))

(assert (=> bs!1121447 (= lambda!217826 lambda!217825)))

(declare-fun lt!1896733 () ListMap!5341)

(assert (=> d!1509812 (invariantList!1535 (toList!5978 lt!1896733))))

(declare-fun e!2952482 () ListMap!5341)

(assert (=> d!1509812 (= lt!1896733 e!2952482)))

(declare-fun c!808380 () Bool)

(assert (=> d!1509812 (= c!808380 ((_ is Cons!52914) lt!1896327))))

(assert (=> d!1509812 (forall!11651 lt!1896327 lambda!217826)))

(assert (=> d!1509812 (= (extractMap!2070 lt!1896327) lt!1896733)))

(declare-fun b!4733534 () Bool)

(assert (=> b!4733534 (= e!2952482 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 lt!1896327)) (extractMap!2070 (t!360318 lt!1896327))))))

(declare-fun b!4733535 () Bool)

(assert (=> b!4733535 (= e!2952482 (ListMap!5342 Nil!52913))))

(assert (= (and d!1509812 c!808380) b!4733534))

(assert (= (and d!1509812 (not c!808380)) b!4733535))

(declare-fun m!5677183 () Bool)

(assert (=> d!1509812 m!5677183))

(declare-fun m!5677185 () Bool)

(assert (=> d!1509812 m!5677185))

(declare-fun m!5677187 () Bool)

(assert (=> b!4733534 m!5677187))

(assert (=> b!4733534 m!5677187))

(declare-fun m!5677189 () Bool)

(assert (=> b!4733534 m!5677189))

(assert (=> b!4733244 d!1509812))

(declare-fun d!1509814 () Bool)

(assert (=> d!1509814 (= (head!10292 oldBucket!34) (h!59284 oldBucket!34))))

(assert (=> b!4733244 d!1509814))

(declare-fun bs!1121448 () Bool)

(declare-fun d!1509816 () Bool)

(assert (= bs!1121448 (and d!1509816 start!482632)))

(declare-fun lambda!217829 () Int)

(assert (=> bs!1121448 (= lambda!217829 lambda!217712)))

(declare-fun bs!1121449 () Bool)

(assert (= bs!1121449 (and d!1509816 d!1509812)))

(assert (=> bs!1121449 (= lambda!217829 lambda!217826)))

(declare-fun bs!1121450 () Bool)

(assert (= bs!1121450 (and d!1509816 d!1509792)))

(assert (=> bs!1121450 (= lambda!217829 lambda!217825)))

(declare-fun bs!1121451 () Bool)

(assert (= bs!1121451 (and d!1509816 d!1509704)))

(assert (=> bs!1121451 (= lambda!217829 lambda!217749)))

(declare-fun bs!1121452 () Bool)

(assert (= bs!1121452 (and d!1509816 d!1509702)))

(assert (=> bs!1121452 (= lambda!217829 lambda!217718)))

(assert (=> d!1509816 (contains!16298 (extractMap!2070 (toList!5977 lt!1896338)) key!4653)))

(declare-fun lt!1896736 () Unit!131735)

(declare-fun choose!33520 (ListLongMap!4507 K!14260 Hashable!6413) Unit!131735)

(assert (=> d!1509816 (= lt!1896736 (choose!33520 lt!1896338 key!4653 hashF!1323))))

(assert (=> d!1509816 (forall!11651 (toList!5977 lt!1896338) lambda!217829)))

(assert (=> d!1509816 (= (lemmaListContainsThenExtractedMapContains!552 lt!1896338 key!4653 hashF!1323) lt!1896736)))

(declare-fun bs!1121453 () Bool)

(assert (= bs!1121453 d!1509816))

(declare-fun m!5677191 () Bool)

(assert (=> bs!1121453 m!5677191))

(assert (=> bs!1121453 m!5677191))

(declare-fun m!5677193 () Bool)

(assert (=> bs!1121453 m!5677193))

(declare-fun m!5677195 () Bool)

(assert (=> bs!1121453 m!5677195))

(declare-fun m!5677197 () Bool)

(assert (=> bs!1121453 m!5677197))

(assert (=> b!4733244 d!1509816))

(declare-fun bs!1121454 () Bool)

(declare-fun b!4733539 () Bool)

(assert (= bs!1121454 (and b!4733539 b!4733502)))

(declare-fun lambda!217830 () Int)

(assert (=> bs!1121454 (= lambda!217830 lambda!217819)))

(declare-fun bs!1121455 () Bool)

(assert (= bs!1121455 (and b!4733539 b!4733500)))

(assert (=> bs!1121455 (= lambda!217830 lambda!217820)))

(assert (=> bs!1121455 (= (= lt!1896343 lt!1896706) (= lambda!217830 lambda!217821))))

(declare-fun bs!1121456 () Bool)

(assert (= bs!1121456 (and b!4733539 d!1509730)))

(assert (=> bs!1121456 (= (= lt!1896343 lt!1896702) (= lambda!217830 lambda!217822))))

(assert (=> b!4733539 true))

(declare-fun bs!1121457 () Bool)

(declare-fun b!4733537 () Bool)

(assert (= bs!1121457 (and b!4733537 b!4733539)))

(declare-fun lambda!217833 () Int)

(assert (=> bs!1121457 (= lambda!217833 lambda!217830)))

(declare-fun bs!1121458 () Bool)

(assert (= bs!1121458 (and b!4733537 b!4733500)))

(assert (=> bs!1121458 (= (= lt!1896343 lt!1896706) (= lambda!217833 lambda!217821))))

(declare-fun bs!1121459 () Bool)

(assert (= bs!1121459 (and b!4733537 d!1509730)))

(assert (=> bs!1121459 (= (= lt!1896343 lt!1896702) (= lambda!217833 lambda!217822))))

(declare-fun bs!1121460 () Bool)

(assert (= bs!1121460 (and b!4733537 b!4733502)))

(assert (=> bs!1121460 (= lambda!217833 lambda!217819)))

(assert (=> bs!1121458 (= lambda!217833 lambda!217820)))

(assert (=> b!4733537 true))

(declare-fun lt!1896756 () ListMap!5341)

(declare-fun lambda!217834 () Int)

(assert (=> b!4733537 (= (= lt!1896756 lt!1896343) (= lambda!217834 lambda!217833))))

(assert (=> bs!1121457 (= (= lt!1896756 lt!1896343) (= lambda!217834 lambda!217830))))

(assert (=> bs!1121458 (= (= lt!1896756 lt!1896706) (= lambda!217834 lambda!217821))))

(assert (=> bs!1121459 (= (= lt!1896756 lt!1896702) (= lambda!217834 lambda!217822))))

(assert (=> bs!1121460 (= (= lt!1896756 lt!1896343) (= lambda!217834 lambda!217819))))

(assert (=> bs!1121458 (= (= lt!1896756 lt!1896343) (= lambda!217834 lambda!217820))))

(assert (=> b!4733537 true))

(declare-fun bs!1121461 () Bool)

(declare-fun d!1509818 () Bool)

(assert (= bs!1121461 (and d!1509818 b!4733537)))

(declare-fun lambda!217839 () Int)

(declare-fun lt!1896752 () ListMap!5341)

(assert (=> bs!1121461 (= (= lt!1896752 lt!1896343) (= lambda!217839 lambda!217833))))

(assert (=> bs!1121461 (= (= lt!1896752 lt!1896756) (= lambda!217839 lambda!217834))))

(declare-fun bs!1121462 () Bool)

(assert (= bs!1121462 (and d!1509818 b!4733539)))

(assert (=> bs!1121462 (= (= lt!1896752 lt!1896343) (= lambda!217839 lambda!217830))))

(declare-fun bs!1121463 () Bool)

(assert (= bs!1121463 (and d!1509818 b!4733500)))

(assert (=> bs!1121463 (= (= lt!1896752 lt!1896706) (= lambda!217839 lambda!217821))))

(declare-fun bs!1121464 () Bool)

(assert (= bs!1121464 (and d!1509818 d!1509730)))

(assert (=> bs!1121464 (= (= lt!1896752 lt!1896702) (= lambda!217839 lambda!217822))))

(declare-fun bs!1121465 () Bool)

(assert (= bs!1121465 (and d!1509818 b!4733502)))

(assert (=> bs!1121465 (= (= lt!1896752 lt!1896343) (= lambda!217839 lambda!217819))))

(assert (=> bs!1121463 (= (= lt!1896752 lt!1896343) (= lambda!217839 lambda!217820))))

(assert (=> d!1509818 true))

(declare-fun call!331074 () Bool)

(declare-fun bm!331069 () Bool)

(declare-fun c!808381 () Bool)

(assert (=> bm!331069 (= call!331074 (forall!11653 (toList!5978 lt!1896343) (ite c!808381 lambda!217830 lambda!217834)))))

(declare-fun b!4733536 () Bool)

(declare-fun e!2952485 () Bool)

(assert (=> b!4733536 (= e!2952485 call!331074)))

(declare-fun bm!331070 () Bool)

(declare-fun call!331076 () Unit!131735)

(assert (=> bm!331070 (= call!331076 (lemmaContainsAllItsOwnKeys!820 lt!1896343))))

(declare-fun bm!331071 () Bool)

(declare-fun call!331075 () Bool)

(assert (=> bm!331071 (= call!331075 (forall!11653 (toList!5978 lt!1896343) (ite c!808381 lambda!217830 lambda!217834)))))

(declare-fun e!2952483 () Bool)

(assert (=> d!1509818 e!2952483))

(declare-fun res!2004368 () Bool)

(assert (=> d!1509818 (=> (not res!2004368) (not e!2952483))))

(assert (=> d!1509818 (= res!2004368 (forall!11653 lt!1896336 lambda!217839))))

(declare-fun e!2952484 () ListMap!5341)

(assert (=> d!1509818 (= lt!1896752 e!2952484)))

(assert (=> d!1509818 (= c!808381 ((_ is Nil!52913) lt!1896336))))

(assert (=> d!1509818 (noDuplicateKeys!2044 lt!1896336)))

(assert (=> d!1509818 (= (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896752)))

(assert (=> b!4733537 (= e!2952484 lt!1896756)))

(declare-fun lt!1896747 () ListMap!5341)

(assert (=> b!4733537 (= lt!1896747 (+!2292 lt!1896343 (h!59284 lt!1896336)))))

(assert (=> b!4733537 (= lt!1896756 (addToMapMapFromBucket!1474 (t!360317 lt!1896336) (+!2292 lt!1896343 (h!59284 lt!1896336))))))

(declare-fun lt!1896748 () Unit!131735)

(assert (=> b!4733537 (= lt!1896748 call!331076)))

(assert (=> b!4733537 (forall!11653 (toList!5978 lt!1896343) lambda!217833)))

(declare-fun lt!1896745 () Unit!131735)

(assert (=> b!4733537 (= lt!1896745 lt!1896748)))

(assert (=> b!4733537 (forall!11653 (toList!5978 lt!1896747) lambda!217834)))

(declare-fun lt!1896746 () Unit!131735)

(declare-fun Unit!131784 () Unit!131735)

(assert (=> b!4733537 (= lt!1896746 Unit!131784)))

(assert (=> b!4733537 (forall!11653 (t!360317 lt!1896336) lambda!217834)))

(declare-fun lt!1896742 () Unit!131735)

(declare-fun Unit!131785 () Unit!131735)

(assert (=> b!4733537 (= lt!1896742 Unit!131785)))

(declare-fun lt!1896757 () Unit!131735)

(declare-fun Unit!131786 () Unit!131735)

(assert (=> b!4733537 (= lt!1896757 Unit!131786)))

(declare-fun lt!1896739 () Unit!131735)

(assert (=> b!4733537 (= lt!1896739 (forallContained!3693 (toList!5978 lt!1896747) lambda!217834 (h!59284 lt!1896336)))))

(assert (=> b!4733537 (contains!16298 lt!1896747 (_1!30579 (h!59284 lt!1896336)))))

(declare-fun lt!1896751 () Unit!131735)

(declare-fun Unit!131787 () Unit!131735)

(assert (=> b!4733537 (= lt!1896751 Unit!131787)))

(assert (=> b!4733537 (contains!16298 lt!1896756 (_1!30579 (h!59284 lt!1896336)))))

(declare-fun lt!1896753 () Unit!131735)

(declare-fun Unit!131788 () Unit!131735)

(assert (=> b!4733537 (= lt!1896753 Unit!131788)))

(assert (=> b!4733537 (forall!11653 lt!1896336 lambda!217834)))

(declare-fun lt!1896755 () Unit!131735)

(declare-fun Unit!131789 () Unit!131735)

(assert (=> b!4733537 (= lt!1896755 Unit!131789)))

(assert (=> b!4733537 (forall!11653 (toList!5978 lt!1896747) lambda!217834)))

(declare-fun lt!1896743 () Unit!131735)

(declare-fun Unit!131790 () Unit!131735)

(assert (=> b!4733537 (= lt!1896743 Unit!131790)))

(declare-fun lt!1896738 () Unit!131735)

(declare-fun Unit!131791 () Unit!131735)

(assert (=> b!4733537 (= lt!1896738 Unit!131791)))

(declare-fun lt!1896740 () Unit!131735)

(assert (=> b!4733537 (= lt!1896740 (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896756 (_1!30579 (h!59284 lt!1896336)) (_2!30579 (h!59284 lt!1896336))))))

(assert (=> b!4733537 call!331075))

(declare-fun lt!1896749 () Unit!131735)

(assert (=> b!4733537 (= lt!1896749 lt!1896740)))

(assert (=> b!4733537 (forall!11653 (toList!5978 lt!1896343) lambda!217834)))

(declare-fun lt!1896737 () Unit!131735)

(declare-fun Unit!131792 () Unit!131735)

(assert (=> b!4733537 (= lt!1896737 Unit!131792)))

(declare-fun res!2004370 () Bool)

(assert (=> b!4733537 (= res!2004370 (forall!11653 lt!1896336 lambda!217834))))

(assert (=> b!4733537 (=> (not res!2004370) (not e!2952485))))

(assert (=> b!4733537 e!2952485))

(declare-fun lt!1896741 () Unit!131735)

(declare-fun Unit!131793 () Unit!131735)

(assert (=> b!4733537 (= lt!1896741 Unit!131793)))

(declare-fun b!4733538 () Bool)

(declare-fun res!2004369 () Bool)

(assert (=> b!4733538 (=> (not res!2004369) (not e!2952483))))

(assert (=> b!4733538 (= res!2004369 (forall!11653 (toList!5978 lt!1896343) lambda!217839))))

(assert (=> b!4733539 (= e!2952484 lt!1896343)))

(declare-fun lt!1896750 () Unit!131735)

(assert (=> b!4733539 (= lt!1896750 call!331076)))

(assert (=> b!4733539 call!331075))

(declare-fun lt!1896754 () Unit!131735)

(assert (=> b!4733539 (= lt!1896754 lt!1896750)))

(assert (=> b!4733539 call!331074))

(declare-fun lt!1896744 () Unit!131735)

(declare-fun Unit!131794 () Unit!131735)

(assert (=> b!4733539 (= lt!1896744 Unit!131794)))

(declare-fun b!4733540 () Bool)

(assert (=> b!4733540 (= e!2952483 (invariantList!1535 (toList!5978 lt!1896752)))))

(assert (= (and d!1509818 c!808381) b!4733539))

(assert (= (and d!1509818 (not c!808381)) b!4733537))

(assert (= (and b!4733537 res!2004370) b!4733536))

(assert (= (or b!4733539 b!4733537) bm!331070))

(assert (= (or b!4733539 b!4733537) bm!331071))

(assert (= (or b!4733539 b!4733536) bm!331069))

(assert (= (and d!1509818 res!2004368) b!4733538))

(assert (= (and b!4733538 res!2004369) b!4733540))

(declare-fun m!5677199 () Bool)

(assert (=> bm!331069 m!5677199))

(declare-fun m!5677201 () Bool)

(assert (=> d!1509818 m!5677201))

(assert (=> d!1509818 m!5677165))

(assert (=> bm!331070 m!5677111))

(declare-fun m!5677203 () Bool)

(assert (=> b!4733537 m!5677203))

(declare-fun m!5677205 () Bool)

(assert (=> b!4733537 m!5677205))

(declare-fun m!5677207 () Bool)

(assert (=> b!4733537 m!5677207))

(declare-fun m!5677209 () Bool)

(assert (=> b!4733537 m!5677209))

(declare-fun m!5677211 () Bool)

(assert (=> b!4733537 m!5677211))

(declare-fun m!5677213 () Bool)

(assert (=> b!4733537 m!5677213))

(declare-fun m!5677215 () Bool)

(assert (=> b!4733537 m!5677215))

(assert (=> b!4733537 m!5677203))

(declare-fun m!5677217 () Bool)

(assert (=> b!4733537 m!5677217))

(declare-fun m!5677219 () Bool)

(assert (=> b!4733537 m!5677219))

(assert (=> b!4733537 m!5677209))

(declare-fun m!5677221 () Bool)

(assert (=> b!4733537 m!5677221))

(assert (=> b!4733537 m!5677217))

(declare-fun m!5677223 () Bool)

(assert (=> b!4733537 m!5677223))

(declare-fun m!5677225 () Bool)

(assert (=> b!4733538 m!5677225))

(assert (=> bm!331071 m!5677199))

(declare-fun m!5677227 () Bool)

(assert (=> b!4733540 m!5677227))

(assert (=> b!4733244 d!1509818))

(declare-fun bs!1121466 () Bool)

(declare-fun b!4733552 () Bool)

(assert (= bs!1121466 (and b!4733552 b!4733537)))

(declare-fun lambda!217840 () Int)

(assert (=> bs!1121466 (= (= lt!1896343 lt!1896756) (= lambda!217840 lambda!217834))))

(declare-fun bs!1121467 () Bool)

(assert (= bs!1121467 (and b!4733552 b!4733539)))

(assert (=> bs!1121467 (= lambda!217840 lambda!217830)))

(declare-fun bs!1121468 () Bool)

(assert (= bs!1121468 (and b!4733552 b!4733500)))

(assert (=> bs!1121468 (= (= lt!1896343 lt!1896706) (= lambda!217840 lambda!217821))))

(declare-fun bs!1121469 () Bool)

(assert (= bs!1121469 (and b!4733552 d!1509730)))

(assert (=> bs!1121469 (= (= lt!1896343 lt!1896702) (= lambda!217840 lambda!217822))))

(declare-fun bs!1121470 () Bool)

(assert (= bs!1121470 (and b!4733552 d!1509818)))

(assert (=> bs!1121470 (= (= lt!1896343 lt!1896752) (= lambda!217840 lambda!217839))))

(assert (=> bs!1121466 (= lambda!217840 lambda!217833)))

(declare-fun bs!1121471 () Bool)

(assert (= bs!1121471 (and b!4733552 b!4733502)))

(assert (=> bs!1121471 (= lambda!217840 lambda!217819)))

(assert (=> bs!1121468 (= lambda!217840 lambda!217820)))

(assert (=> b!4733552 true))

(declare-fun bs!1121472 () Bool)

(declare-fun b!4733550 () Bool)

(assert (= bs!1121472 (and b!4733550 b!4733537)))

(declare-fun lambda!217841 () Int)

(assert (=> bs!1121472 (= (= lt!1896343 lt!1896756) (= lambda!217841 lambda!217834))))

(declare-fun bs!1121473 () Bool)

(assert (= bs!1121473 (and b!4733550 b!4733539)))

(assert (=> bs!1121473 (= lambda!217841 lambda!217830)))

(declare-fun bs!1121474 () Bool)

(assert (= bs!1121474 (and b!4733550 b!4733500)))

(assert (=> bs!1121474 (= (= lt!1896343 lt!1896706) (= lambda!217841 lambda!217821))))

(declare-fun bs!1121475 () Bool)

(assert (= bs!1121475 (and b!4733550 b!4733552)))

(assert (=> bs!1121475 (= lambda!217841 lambda!217840)))

(declare-fun bs!1121476 () Bool)

(assert (= bs!1121476 (and b!4733550 d!1509730)))

(assert (=> bs!1121476 (= (= lt!1896343 lt!1896702) (= lambda!217841 lambda!217822))))

(declare-fun bs!1121477 () Bool)

(assert (= bs!1121477 (and b!4733550 d!1509818)))

(assert (=> bs!1121477 (= (= lt!1896343 lt!1896752) (= lambda!217841 lambda!217839))))

(assert (=> bs!1121472 (= lambda!217841 lambda!217833)))

(declare-fun bs!1121480 () Bool)

(assert (= bs!1121480 (and b!4733550 b!4733502)))

(assert (=> bs!1121480 (= lambda!217841 lambda!217819)))

(assert (=> bs!1121474 (= lambda!217841 lambda!217820)))

(assert (=> b!4733550 true))

(declare-fun lambda!217843 () Int)

(declare-fun lt!1896793 () ListMap!5341)

(assert (=> bs!1121472 (= (= lt!1896793 lt!1896756) (= lambda!217843 lambda!217834))))

(assert (=> bs!1121473 (= (= lt!1896793 lt!1896343) (= lambda!217843 lambda!217830))))

(assert (=> b!4733550 (= (= lt!1896793 lt!1896343) (= lambda!217843 lambda!217841))))

(assert (=> bs!1121474 (= (= lt!1896793 lt!1896706) (= lambda!217843 lambda!217821))))

(assert (=> bs!1121475 (= (= lt!1896793 lt!1896343) (= lambda!217843 lambda!217840))))

(assert (=> bs!1121476 (= (= lt!1896793 lt!1896702) (= lambda!217843 lambda!217822))))

(assert (=> bs!1121477 (= (= lt!1896793 lt!1896752) (= lambda!217843 lambda!217839))))

(assert (=> bs!1121472 (= (= lt!1896793 lt!1896343) (= lambda!217843 lambda!217833))))

(assert (=> bs!1121480 (= (= lt!1896793 lt!1896343) (= lambda!217843 lambda!217819))))

(assert (=> bs!1121474 (= (= lt!1896793 lt!1896343) (= lambda!217843 lambda!217820))))

(assert (=> b!4733550 true))

(declare-fun bs!1121488 () Bool)

(declare-fun d!1509820 () Bool)

(assert (= bs!1121488 (and d!1509820 b!4733537)))

(declare-fun lt!1896789 () ListMap!5341)

(declare-fun lambda!217844 () Int)

(assert (=> bs!1121488 (= (= lt!1896789 lt!1896756) (= lambda!217844 lambda!217834))))

(declare-fun bs!1121489 () Bool)

(assert (= bs!1121489 (and d!1509820 b!4733539)))

(assert (=> bs!1121489 (= (= lt!1896789 lt!1896343) (= lambda!217844 lambda!217830))))

(declare-fun bs!1121490 () Bool)

(assert (= bs!1121490 (and d!1509820 b!4733550)))

(assert (=> bs!1121490 (= (= lt!1896789 lt!1896343) (= lambda!217844 lambda!217841))))

(declare-fun bs!1121491 () Bool)

(assert (= bs!1121491 (and d!1509820 b!4733500)))

(assert (=> bs!1121491 (= (= lt!1896789 lt!1896706) (= lambda!217844 lambda!217821))))

(assert (=> bs!1121490 (= (= lt!1896789 lt!1896793) (= lambda!217844 lambda!217843))))

(declare-fun bs!1121492 () Bool)

(assert (= bs!1121492 (and d!1509820 b!4733552)))

(assert (=> bs!1121492 (= (= lt!1896789 lt!1896343) (= lambda!217844 lambda!217840))))

(declare-fun bs!1121493 () Bool)

(assert (= bs!1121493 (and d!1509820 d!1509730)))

(assert (=> bs!1121493 (= (= lt!1896789 lt!1896702) (= lambda!217844 lambda!217822))))

(declare-fun bs!1121494 () Bool)

(assert (= bs!1121494 (and d!1509820 d!1509818)))

(assert (=> bs!1121494 (= (= lt!1896789 lt!1896752) (= lambda!217844 lambda!217839))))

(assert (=> bs!1121488 (= (= lt!1896789 lt!1896343) (= lambda!217844 lambda!217833))))

(declare-fun bs!1121495 () Bool)

(assert (= bs!1121495 (and d!1509820 b!4733502)))

(assert (=> bs!1121495 (= (= lt!1896789 lt!1896343) (= lambda!217844 lambda!217819))))

(assert (=> bs!1121491 (= (= lt!1896789 lt!1896343) (= lambda!217844 lambda!217820))))

(assert (=> d!1509820 true))

(declare-fun bm!331072 () Bool)

(declare-fun c!808382 () Bool)

(declare-fun call!331077 () Bool)

(assert (=> bm!331072 (= call!331077 (forall!11653 (toList!5978 lt!1896343) (ite c!808382 lambda!217840 lambda!217843)))))

(declare-fun b!4733549 () Bool)

(declare-fun e!2952492 () Bool)

(assert (=> b!4733549 (= e!2952492 call!331077)))

(declare-fun bm!331073 () Bool)

(declare-fun call!331079 () Unit!131735)

(assert (=> bm!331073 (= call!331079 (lemmaContainsAllItsOwnKeys!820 lt!1896343))))

(declare-fun bm!331074 () Bool)

(declare-fun call!331078 () Bool)

(assert (=> bm!331074 (= call!331078 (forall!11653 (toList!5978 lt!1896343) (ite c!808382 lambda!217840 lambda!217843)))))

(declare-fun e!2952490 () Bool)

(assert (=> d!1509820 e!2952490))

(declare-fun res!2004379 () Bool)

(assert (=> d!1509820 (=> (not res!2004379) (not e!2952490))))

(assert (=> d!1509820 (= res!2004379 (forall!11653 lt!1896335 lambda!217844))))

(declare-fun e!2952491 () ListMap!5341)

(assert (=> d!1509820 (= lt!1896789 e!2952491)))

(assert (=> d!1509820 (= c!808382 ((_ is Nil!52913) lt!1896335))))

(assert (=> d!1509820 (noDuplicateKeys!2044 lt!1896335)))

(assert (=> d!1509820 (= (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896789)))

(assert (=> b!4733550 (= e!2952491 lt!1896793)))

(declare-fun lt!1896784 () ListMap!5341)

(assert (=> b!4733550 (= lt!1896784 (+!2292 lt!1896343 (h!59284 lt!1896335)))))

(assert (=> b!4733550 (= lt!1896793 (addToMapMapFromBucket!1474 (t!360317 lt!1896335) (+!2292 lt!1896343 (h!59284 lt!1896335))))))

(declare-fun lt!1896785 () Unit!131735)

(assert (=> b!4733550 (= lt!1896785 call!331079)))

(assert (=> b!4733550 (forall!11653 (toList!5978 lt!1896343) lambda!217841)))

(declare-fun lt!1896782 () Unit!131735)

(assert (=> b!4733550 (= lt!1896782 lt!1896785)))

(assert (=> b!4733550 (forall!11653 (toList!5978 lt!1896784) lambda!217843)))

(declare-fun lt!1896783 () Unit!131735)

(declare-fun Unit!131803 () Unit!131735)

(assert (=> b!4733550 (= lt!1896783 Unit!131803)))

(assert (=> b!4733550 (forall!11653 (t!360317 lt!1896335) lambda!217843)))

(declare-fun lt!1896779 () Unit!131735)

(declare-fun Unit!131804 () Unit!131735)

(assert (=> b!4733550 (= lt!1896779 Unit!131804)))

(declare-fun lt!1896794 () Unit!131735)

(declare-fun Unit!131806 () Unit!131735)

(assert (=> b!4733550 (= lt!1896794 Unit!131806)))

(declare-fun lt!1896776 () Unit!131735)

(assert (=> b!4733550 (= lt!1896776 (forallContained!3693 (toList!5978 lt!1896784) lambda!217843 (h!59284 lt!1896335)))))

(assert (=> b!4733550 (contains!16298 lt!1896784 (_1!30579 (h!59284 lt!1896335)))))

(declare-fun lt!1896788 () Unit!131735)

(declare-fun Unit!131807 () Unit!131735)

(assert (=> b!4733550 (= lt!1896788 Unit!131807)))

(assert (=> b!4733550 (contains!16298 lt!1896793 (_1!30579 (h!59284 lt!1896335)))))

(declare-fun lt!1896790 () Unit!131735)

(declare-fun Unit!131809 () Unit!131735)

(assert (=> b!4733550 (= lt!1896790 Unit!131809)))

(assert (=> b!4733550 (forall!11653 lt!1896335 lambda!217843)))

(declare-fun lt!1896792 () Unit!131735)

(declare-fun Unit!131810 () Unit!131735)

(assert (=> b!4733550 (= lt!1896792 Unit!131810)))

(assert (=> b!4733550 (forall!11653 (toList!5978 lt!1896784) lambda!217843)))

(declare-fun lt!1896780 () Unit!131735)

(declare-fun Unit!131811 () Unit!131735)

(assert (=> b!4733550 (= lt!1896780 Unit!131811)))

(declare-fun lt!1896775 () Unit!131735)

(declare-fun Unit!131812 () Unit!131735)

(assert (=> b!4733550 (= lt!1896775 Unit!131812)))

(declare-fun lt!1896777 () Unit!131735)

(assert (=> b!4733550 (= lt!1896777 (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896793 (_1!30579 (h!59284 lt!1896335)) (_2!30579 (h!59284 lt!1896335))))))

(assert (=> b!4733550 call!331078))

(declare-fun lt!1896786 () Unit!131735)

(assert (=> b!4733550 (= lt!1896786 lt!1896777)))

(assert (=> b!4733550 (forall!11653 (toList!5978 lt!1896343) lambda!217843)))

(declare-fun lt!1896774 () Unit!131735)

(declare-fun Unit!131814 () Unit!131735)

(assert (=> b!4733550 (= lt!1896774 Unit!131814)))

(declare-fun res!2004381 () Bool)

(assert (=> b!4733550 (= res!2004381 (forall!11653 lt!1896335 lambda!217843))))

(assert (=> b!4733550 (=> (not res!2004381) (not e!2952492))))

(assert (=> b!4733550 e!2952492))

(declare-fun lt!1896778 () Unit!131735)

(declare-fun Unit!131815 () Unit!131735)

(assert (=> b!4733550 (= lt!1896778 Unit!131815)))

(declare-fun b!4733551 () Bool)

(declare-fun res!2004380 () Bool)

(assert (=> b!4733551 (=> (not res!2004380) (not e!2952490))))

(assert (=> b!4733551 (= res!2004380 (forall!11653 (toList!5978 lt!1896343) lambda!217844))))

(assert (=> b!4733552 (= e!2952491 lt!1896343)))

(declare-fun lt!1896787 () Unit!131735)

(assert (=> b!4733552 (= lt!1896787 call!331079)))

(assert (=> b!4733552 call!331078))

(declare-fun lt!1896791 () Unit!131735)

(assert (=> b!4733552 (= lt!1896791 lt!1896787)))

(assert (=> b!4733552 call!331077))

(declare-fun lt!1896781 () Unit!131735)

(declare-fun Unit!131816 () Unit!131735)

(assert (=> b!4733552 (= lt!1896781 Unit!131816)))

(declare-fun b!4733553 () Bool)

(assert (=> b!4733553 (= e!2952490 (invariantList!1535 (toList!5978 lt!1896789)))))

(assert (= (and d!1509820 c!808382) b!4733552))

(assert (= (and d!1509820 (not c!808382)) b!4733550))

(assert (= (and b!4733550 res!2004381) b!4733549))

(assert (= (or b!4733552 b!4733550) bm!331073))

(assert (= (or b!4733552 b!4733550) bm!331074))

(assert (= (or b!4733552 b!4733549) bm!331072))

(assert (= (and d!1509820 res!2004379) b!4733551))

(assert (= (and b!4733551 res!2004380) b!4733553))

(declare-fun m!5677251 () Bool)

(assert (=> bm!331072 m!5677251))

(declare-fun m!5677253 () Bool)

(assert (=> d!1509820 m!5677253))

(declare-fun m!5677255 () Bool)

(assert (=> d!1509820 m!5677255))

(assert (=> bm!331073 m!5677111))

(declare-fun m!5677257 () Bool)

(assert (=> b!4733550 m!5677257))

(declare-fun m!5677259 () Bool)

(assert (=> b!4733550 m!5677259))

(declare-fun m!5677261 () Bool)

(assert (=> b!4733550 m!5677261))

(declare-fun m!5677263 () Bool)

(assert (=> b!4733550 m!5677263))

(declare-fun m!5677265 () Bool)

(assert (=> b!4733550 m!5677265))

(declare-fun m!5677267 () Bool)

(assert (=> b!4733550 m!5677267))

(declare-fun m!5677269 () Bool)

(assert (=> b!4733550 m!5677269))

(assert (=> b!4733550 m!5677257))

(declare-fun m!5677271 () Bool)

(assert (=> b!4733550 m!5677271))

(declare-fun m!5677273 () Bool)

(assert (=> b!4733550 m!5677273))

(assert (=> b!4733550 m!5677263))

(declare-fun m!5677275 () Bool)

(assert (=> b!4733550 m!5677275))

(assert (=> b!4733550 m!5677271))

(declare-fun m!5677277 () Bool)

(assert (=> b!4733550 m!5677277))

(declare-fun m!5677279 () Bool)

(assert (=> b!4733551 m!5677279))

(assert (=> bm!331074 m!5677251))

(declare-fun m!5677281 () Bool)

(assert (=> b!4733553 m!5677281))

(assert (=> b!4733244 d!1509820))

(declare-fun d!1509824 () Bool)

(declare-fun e!2952495 () Bool)

(assert (=> d!1509824 e!2952495))

(declare-fun res!2004386 () Bool)

(assert (=> d!1509824 (=> (not res!2004386) (not e!2952495))))

(declare-fun lt!1896805 () ListMap!5341)

(assert (=> d!1509824 (= res!2004386 (contains!16298 lt!1896805 (_1!30579 lt!1896326)))))

(declare-fun lt!1896803 () List!53037)

(assert (=> d!1509824 (= lt!1896805 (ListMap!5342 lt!1896803))))

(declare-fun lt!1896806 () Unit!131735)

(declare-fun lt!1896804 () Unit!131735)

(assert (=> d!1509824 (= lt!1896806 lt!1896804)))

(assert (=> d!1509824 (= (getValueByKey!2000 lt!1896803 (_1!30579 lt!1896326)) (Some!12425 (_2!30579 lt!1896326)))))

(assert (=> d!1509824 (= lt!1896804 (lemmaContainsTupThenGetReturnValue!1102 lt!1896803 (_1!30579 lt!1896326) (_2!30579 lt!1896326)))))

(assert (=> d!1509824 (= lt!1896803 (insertNoDuplicatedKeys!610 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)) (_1!30579 lt!1896326) (_2!30579 lt!1896326)))))

(assert (=> d!1509824 (= (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326) lt!1896805)))

(declare-fun b!4733558 () Bool)

(declare-fun res!2004387 () Bool)

(assert (=> b!4733558 (=> (not res!2004387) (not e!2952495))))

(assert (=> b!4733558 (= res!2004387 (= (getValueByKey!2000 (toList!5978 lt!1896805) (_1!30579 lt!1896326)) (Some!12425 (_2!30579 lt!1896326))))))

(declare-fun b!4733559 () Bool)

(assert (=> b!4733559 (= e!2952495 (contains!16300 (toList!5978 lt!1896805) lt!1896326))))

(assert (= (and d!1509824 res!2004386) b!4733558))

(assert (= (and b!4733558 res!2004387) b!4733559))

(declare-fun m!5677283 () Bool)

(assert (=> d!1509824 m!5677283))

(declare-fun m!5677285 () Bool)

(assert (=> d!1509824 m!5677285))

(declare-fun m!5677287 () Bool)

(assert (=> d!1509824 m!5677287))

(declare-fun m!5677289 () Bool)

(assert (=> d!1509824 m!5677289))

(declare-fun m!5677291 () Bool)

(assert (=> b!4733558 m!5677291))

(declare-fun m!5677293 () Bool)

(assert (=> b!4733559 m!5677293))

(assert (=> b!4733244 d!1509824))

(declare-fun bs!1121496 () Bool)

(declare-fun b!4733563 () Bool)

(assert (= bs!1121496 (and b!4733563 b!4733537)))

(declare-fun lambda!217845 () Int)

(assert (=> bs!1121496 (= (= lt!1896343 lt!1896756) (= lambda!217845 lambda!217834))))

(declare-fun bs!1121497 () Bool)

(assert (= bs!1121497 (and b!4733563 d!1509820)))

(assert (=> bs!1121497 (= (= lt!1896343 lt!1896789) (= lambda!217845 lambda!217844))))

(declare-fun bs!1121498 () Bool)

(assert (= bs!1121498 (and b!4733563 b!4733539)))

(assert (=> bs!1121498 (= lambda!217845 lambda!217830)))

(declare-fun bs!1121499 () Bool)

(assert (= bs!1121499 (and b!4733563 b!4733550)))

(assert (=> bs!1121499 (= lambda!217845 lambda!217841)))

(declare-fun bs!1121500 () Bool)

(assert (= bs!1121500 (and b!4733563 b!4733500)))

(assert (=> bs!1121500 (= (= lt!1896343 lt!1896706) (= lambda!217845 lambda!217821))))

(assert (=> bs!1121499 (= (= lt!1896343 lt!1896793) (= lambda!217845 lambda!217843))))

(declare-fun bs!1121501 () Bool)

(assert (= bs!1121501 (and b!4733563 b!4733552)))

(assert (=> bs!1121501 (= lambda!217845 lambda!217840)))

(declare-fun bs!1121502 () Bool)

(assert (= bs!1121502 (and b!4733563 d!1509730)))

(assert (=> bs!1121502 (= (= lt!1896343 lt!1896702) (= lambda!217845 lambda!217822))))

(declare-fun bs!1121503 () Bool)

(assert (= bs!1121503 (and b!4733563 d!1509818)))

(assert (=> bs!1121503 (= (= lt!1896343 lt!1896752) (= lambda!217845 lambda!217839))))

(assert (=> bs!1121496 (= lambda!217845 lambda!217833)))

(declare-fun bs!1121504 () Bool)

(assert (= bs!1121504 (and b!4733563 b!4733502)))

(assert (=> bs!1121504 (= lambda!217845 lambda!217819)))

(assert (=> bs!1121500 (= lambda!217845 lambda!217820)))

(assert (=> b!4733563 true))

(declare-fun bs!1121505 () Bool)

(declare-fun b!4733561 () Bool)

(assert (= bs!1121505 (and b!4733561 b!4733537)))

(declare-fun lambda!217846 () Int)

(assert (=> bs!1121505 (= (= lt!1896343 lt!1896756) (= lambda!217846 lambda!217834))))

(declare-fun bs!1121506 () Bool)

(assert (= bs!1121506 (and b!4733561 d!1509820)))

(assert (=> bs!1121506 (= (= lt!1896343 lt!1896789) (= lambda!217846 lambda!217844))))

(declare-fun bs!1121507 () Bool)

(assert (= bs!1121507 (and b!4733561 b!4733563)))

(assert (=> bs!1121507 (= lambda!217846 lambda!217845)))

(declare-fun bs!1121508 () Bool)

(assert (= bs!1121508 (and b!4733561 b!4733539)))

(assert (=> bs!1121508 (= lambda!217846 lambda!217830)))

(declare-fun bs!1121509 () Bool)

(assert (= bs!1121509 (and b!4733561 b!4733550)))

(assert (=> bs!1121509 (= lambda!217846 lambda!217841)))

(declare-fun bs!1121510 () Bool)

(assert (= bs!1121510 (and b!4733561 b!4733500)))

(assert (=> bs!1121510 (= (= lt!1896343 lt!1896706) (= lambda!217846 lambda!217821))))

(assert (=> bs!1121509 (= (= lt!1896343 lt!1896793) (= lambda!217846 lambda!217843))))

(declare-fun bs!1121511 () Bool)

(assert (= bs!1121511 (and b!4733561 b!4733552)))

(assert (=> bs!1121511 (= lambda!217846 lambda!217840)))

(declare-fun bs!1121512 () Bool)

(assert (= bs!1121512 (and b!4733561 d!1509730)))

(assert (=> bs!1121512 (= (= lt!1896343 lt!1896702) (= lambda!217846 lambda!217822))))

(declare-fun bs!1121513 () Bool)

(assert (= bs!1121513 (and b!4733561 d!1509818)))

(assert (=> bs!1121513 (= (= lt!1896343 lt!1896752) (= lambda!217846 lambda!217839))))

(assert (=> bs!1121505 (= lambda!217846 lambda!217833)))

(declare-fun bs!1121514 () Bool)

(assert (= bs!1121514 (and b!4733561 b!4733502)))

(assert (=> bs!1121514 (= lambda!217846 lambda!217819)))

(assert (=> bs!1121510 (= lambda!217846 lambda!217820)))

(assert (=> b!4733561 true))

(declare-fun lambda!217847 () Int)

(declare-fun lt!1896826 () ListMap!5341)

(assert (=> bs!1121505 (= (= lt!1896826 lt!1896756) (= lambda!217847 lambda!217834))))

(assert (=> bs!1121506 (= (= lt!1896826 lt!1896789) (= lambda!217847 lambda!217844))))

(assert (=> bs!1121507 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217845))))

(assert (=> bs!1121508 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217830))))

(assert (=> bs!1121509 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217841))))

(assert (=> bs!1121510 (= (= lt!1896826 lt!1896706) (= lambda!217847 lambda!217821))))

(assert (=> bs!1121509 (= (= lt!1896826 lt!1896793) (= lambda!217847 lambda!217843))))

(assert (=> bs!1121511 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217840))))

(assert (=> bs!1121512 (= (= lt!1896826 lt!1896702) (= lambda!217847 lambda!217822))))

(assert (=> b!4733561 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217846))))

(assert (=> bs!1121513 (= (= lt!1896826 lt!1896752) (= lambda!217847 lambda!217839))))

(assert (=> bs!1121505 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217833))))

(assert (=> bs!1121514 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217819))))

(assert (=> bs!1121510 (= (= lt!1896826 lt!1896343) (= lambda!217847 lambda!217820))))

(assert (=> b!4733561 true))

(declare-fun bs!1121515 () Bool)

(declare-fun d!1509826 () Bool)

(assert (= bs!1121515 (and d!1509826 b!4733537)))

(declare-fun lt!1896822 () ListMap!5341)

(declare-fun lambda!217848 () Int)

(assert (=> bs!1121515 (= (= lt!1896822 lt!1896756) (= lambda!217848 lambda!217834))))

(declare-fun bs!1121516 () Bool)

(assert (= bs!1121516 (and d!1509826 d!1509820)))

(assert (=> bs!1121516 (= (= lt!1896822 lt!1896789) (= lambda!217848 lambda!217844))))

(declare-fun bs!1121517 () Bool)

(assert (= bs!1121517 (and d!1509826 b!4733539)))

(assert (=> bs!1121517 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217830))))

(declare-fun bs!1121518 () Bool)

(assert (= bs!1121518 (and d!1509826 b!4733550)))

(assert (=> bs!1121518 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217841))))

(declare-fun bs!1121519 () Bool)

(assert (= bs!1121519 (and d!1509826 b!4733500)))

(assert (=> bs!1121519 (= (= lt!1896822 lt!1896706) (= lambda!217848 lambda!217821))))

(assert (=> bs!1121518 (= (= lt!1896822 lt!1896793) (= lambda!217848 lambda!217843))))

(declare-fun bs!1121520 () Bool)

(assert (= bs!1121520 (and d!1509826 b!4733552)))

(assert (=> bs!1121520 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217840))))

(declare-fun bs!1121521 () Bool)

(assert (= bs!1121521 (and d!1509826 d!1509730)))

(assert (=> bs!1121521 (= (= lt!1896822 lt!1896702) (= lambda!217848 lambda!217822))))

(declare-fun bs!1121522 () Bool)

(assert (= bs!1121522 (and d!1509826 b!4733561)))

(assert (=> bs!1121522 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217846))))

(declare-fun bs!1121523 () Bool)

(assert (= bs!1121523 (and d!1509826 d!1509818)))

(assert (=> bs!1121523 (= (= lt!1896822 lt!1896752) (= lambda!217848 lambda!217839))))

(assert (=> bs!1121515 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217833))))

(declare-fun bs!1121524 () Bool)

(assert (= bs!1121524 (and d!1509826 b!4733502)))

(assert (=> bs!1121524 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217819))))

(assert (=> bs!1121519 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217820))))

(assert (=> bs!1121522 (= (= lt!1896822 lt!1896826) (= lambda!217848 lambda!217847))))

(declare-fun bs!1121525 () Bool)

(assert (= bs!1121525 (and d!1509826 b!4733563)))

(assert (=> bs!1121525 (= (= lt!1896822 lt!1896343) (= lambda!217848 lambda!217845))))

(assert (=> d!1509826 true))

(declare-fun bm!331075 () Bool)

(declare-fun c!808383 () Bool)

(declare-fun call!331080 () Bool)

(assert (=> bm!331075 (= call!331080 (forall!11653 (toList!5978 lt!1896343) (ite c!808383 lambda!217845 lambda!217847)))))

(declare-fun b!4733560 () Bool)

(declare-fun e!2952498 () Bool)

(assert (=> b!4733560 (= e!2952498 call!331080)))

(declare-fun bm!331076 () Bool)

(declare-fun call!331082 () Unit!131735)

(assert (=> bm!331076 (= call!331082 (lemmaContainsAllItsOwnKeys!820 lt!1896343))))

(declare-fun call!331081 () Bool)

(declare-fun bm!331077 () Bool)

(assert (=> bm!331077 (= call!331081 (forall!11653 (toList!5978 lt!1896343) (ite c!808383 lambda!217845 lambda!217847)))))

(declare-fun e!2952496 () Bool)

(assert (=> d!1509826 e!2952496))

(declare-fun res!2004388 () Bool)

(assert (=> d!1509826 (=> (not res!2004388) (not e!2952496))))

(assert (=> d!1509826 (= res!2004388 (forall!11653 (Cons!52913 lt!1896347 lt!1896335) lambda!217848))))

(declare-fun e!2952497 () ListMap!5341)

(assert (=> d!1509826 (= lt!1896822 e!2952497)))

(assert (=> d!1509826 (= c!808383 ((_ is Nil!52913) (Cons!52913 lt!1896347 lt!1896335)))))

(assert (=> d!1509826 (noDuplicateKeys!2044 (Cons!52913 lt!1896347 lt!1896335))))

(assert (=> d!1509826 (= (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343) lt!1896822)))

(assert (=> b!4733561 (= e!2952497 lt!1896826)))

(declare-fun lt!1896817 () ListMap!5341)

(assert (=> b!4733561 (= lt!1896817 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> b!4733561 (= lt!1896826 (addToMapMapFromBucket!1474 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun lt!1896818 () Unit!131735)

(assert (=> b!4733561 (= lt!1896818 call!331082)))

(assert (=> b!4733561 (forall!11653 (toList!5978 lt!1896343) lambda!217846)))

(declare-fun lt!1896815 () Unit!131735)

(assert (=> b!4733561 (= lt!1896815 lt!1896818)))

(assert (=> b!4733561 (forall!11653 (toList!5978 lt!1896817) lambda!217847)))

(declare-fun lt!1896816 () Unit!131735)

(declare-fun Unit!131819 () Unit!131735)

(assert (=> b!4733561 (= lt!1896816 Unit!131819)))

(assert (=> b!4733561 (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217847)))

(declare-fun lt!1896812 () Unit!131735)

(declare-fun Unit!131820 () Unit!131735)

(assert (=> b!4733561 (= lt!1896812 Unit!131820)))

(declare-fun lt!1896827 () Unit!131735)

(declare-fun Unit!131821 () Unit!131735)

(assert (=> b!4733561 (= lt!1896827 Unit!131821)))

(declare-fun lt!1896809 () Unit!131735)

(assert (=> b!4733561 (= lt!1896809 (forallContained!3693 (toList!5978 lt!1896817) lambda!217847 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> b!4733561 (contains!16298 lt!1896817 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(declare-fun lt!1896821 () Unit!131735)

(declare-fun Unit!131822 () Unit!131735)

(assert (=> b!4733561 (= lt!1896821 Unit!131822)))

(assert (=> b!4733561 (contains!16298 lt!1896826 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(declare-fun lt!1896823 () Unit!131735)

(declare-fun Unit!131823 () Unit!131735)

(assert (=> b!4733561 (= lt!1896823 Unit!131823)))

(assert (=> b!4733561 (forall!11653 (Cons!52913 lt!1896347 lt!1896335) lambda!217847)))

(declare-fun lt!1896825 () Unit!131735)

(declare-fun Unit!131824 () Unit!131735)

(assert (=> b!4733561 (= lt!1896825 Unit!131824)))

(assert (=> b!4733561 (forall!11653 (toList!5978 lt!1896817) lambda!217847)))

(declare-fun lt!1896813 () Unit!131735)

(declare-fun Unit!131825 () Unit!131735)

(assert (=> b!4733561 (= lt!1896813 Unit!131825)))

(declare-fun lt!1896808 () Unit!131735)

(declare-fun Unit!131826 () Unit!131735)

(assert (=> b!4733561 (= lt!1896808 Unit!131826)))

(declare-fun lt!1896810 () Unit!131735)

(assert (=> b!4733561 (= lt!1896810 (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896826 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> b!4733561 call!331081))

(declare-fun lt!1896819 () Unit!131735)

(assert (=> b!4733561 (= lt!1896819 lt!1896810)))

(assert (=> b!4733561 (forall!11653 (toList!5978 lt!1896343) lambda!217847)))

(declare-fun lt!1896807 () Unit!131735)

(declare-fun Unit!131827 () Unit!131735)

(assert (=> b!4733561 (= lt!1896807 Unit!131827)))

(declare-fun res!2004390 () Bool)

(assert (=> b!4733561 (= res!2004390 (forall!11653 (Cons!52913 lt!1896347 lt!1896335) lambda!217847))))

(assert (=> b!4733561 (=> (not res!2004390) (not e!2952498))))

(assert (=> b!4733561 e!2952498))

(declare-fun lt!1896811 () Unit!131735)

(declare-fun Unit!131828 () Unit!131735)

(assert (=> b!4733561 (= lt!1896811 Unit!131828)))

(declare-fun b!4733562 () Bool)

(declare-fun res!2004389 () Bool)

(assert (=> b!4733562 (=> (not res!2004389) (not e!2952496))))

(assert (=> b!4733562 (= res!2004389 (forall!11653 (toList!5978 lt!1896343) lambda!217848))))

(assert (=> b!4733563 (= e!2952497 lt!1896343)))

(declare-fun lt!1896820 () Unit!131735)

(assert (=> b!4733563 (= lt!1896820 call!331082)))

(assert (=> b!4733563 call!331081))

(declare-fun lt!1896824 () Unit!131735)

(assert (=> b!4733563 (= lt!1896824 lt!1896820)))

(assert (=> b!4733563 call!331080))

(declare-fun lt!1896814 () Unit!131735)

(declare-fun Unit!131829 () Unit!131735)

(assert (=> b!4733563 (= lt!1896814 Unit!131829)))

(declare-fun b!4733564 () Bool)

(assert (=> b!4733564 (= e!2952496 (invariantList!1535 (toList!5978 lt!1896822)))))

(assert (= (and d!1509826 c!808383) b!4733563))

(assert (= (and d!1509826 (not c!808383)) b!4733561))

(assert (= (and b!4733561 res!2004390) b!4733560))

(assert (= (or b!4733563 b!4733561) bm!331076))

(assert (= (or b!4733563 b!4733561) bm!331077))

(assert (= (or b!4733563 b!4733560) bm!331075))

(assert (= (and d!1509826 res!2004388) b!4733562))

(assert (= (and b!4733562 res!2004389) b!4733564))

(declare-fun m!5677311 () Bool)

(assert (=> bm!331075 m!5677311))

(declare-fun m!5677313 () Bool)

(assert (=> d!1509826 m!5677313))

(declare-fun m!5677315 () Bool)

(assert (=> d!1509826 m!5677315))

(assert (=> bm!331076 m!5677111))

(declare-fun m!5677317 () Bool)

(assert (=> b!4733561 m!5677317))

(declare-fun m!5677319 () Bool)

(assert (=> b!4733561 m!5677319))

(declare-fun m!5677321 () Bool)

(assert (=> b!4733561 m!5677321))

(declare-fun m!5677323 () Bool)

(assert (=> b!4733561 m!5677323))

(declare-fun m!5677325 () Bool)

(assert (=> b!4733561 m!5677325))

(declare-fun m!5677327 () Bool)

(assert (=> b!4733561 m!5677327))

(declare-fun m!5677329 () Bool)

(assert (=> b!4733561 m!5677329))

(assert (=> b!4733561 m!5677317))

(declare-fun m!5677331 () Bool)

(assert (=> b!4733561 m!5677331))

(declare-fun m!5677333 () Bool)

(assert (=> b!4733561 m!5677333))

(assert (=> b!4733561 m!5677323))

(declare-fun m!5677335 () Bool)

(assert (=> b!4733561 m!5677335))

(assert (=> b!4733561 m!5677331))

(declare-fun m!5677337 () Bool)

(assert (=> b!4733561 m!5677337))

(declare-fun m!5677339 () Bool)

(assert (=> b!4733562 m!5677339))

(assert (=> bm!331077 m!5677311))

(declare-fun m!5677341 () Bool)

(assert (=> b!4733564 m!5677341))

(assert (=> b!4733244 d!1509826))

(declare-fun d!1509832 () Bool)

(assert (=> d!1509832 (= (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347)) (= (content!9440 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343))) (content!9440 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347)))))))

(declare-fun bs!1121527 () Bool)

(assert (= bs!1121527 d!1509832))

(declare-fun m!5677343 () Bool)

(assert (=> bs!1121527 m!5677343))

(declare-fun m!5677345 () Bool)

(assert (=> bs!1121527 m!5677345))

(assert (=> b!4733244 d!1509832))

(declare-fun bs!1121528 () Bool)

(declare-fun b!4733596 () Bool)

(assert (= bs!1121528 (and b!4733596 b!4733537)))

(declare-fun lambda!217849 () Int)

(assert (=> bs!1121528 (= (= lt!1896343 lt!1896756) (= lambda!217849 lambda!217834))))

(declare-fun bs!1121529 () Bool)

(assert (= bs!1121529 (and b!4733596 d!1509820)))

(assert (=> bs!1121529 (= (= lt!1896343 lt!1896789) (= lambda!217849 lambda!217844))))

(declare-fun bs!1121530 () Bool)

(assert (= bs!1121530 (and b!4733596 d!1509826)))

(assert (=> bs!1121530 (= (= lt!1896343 lt!1896822) (= lambda!217849 lambda!217848))))

(declare-fun bs!1121531 () Bool)

(assert (= bs!1121531 (and b!4733596 b!4733539)))

(assert (=> bs!1121531 (= lambda!217849 lambda!217830)))

(declare-fun bs!1121532 () Bool)

(assert (= bs!1121532 (and b!4733596 b!4733550)))

(assert (=> bs!1121532 (= lambda!217849 lambda!217841)))

(declare-fun bs!1121533 () Bool)

(assert (= bs!1121533 (and b!4733596 b!4733500)))

(assert (=> bs!1121533 (= (= lt!1896343 lt!1896706) (= lambda!217849 lambda!217821))))

(assert (=> bs!1121532 (= (= lt!1896343 lt!1896793) (= lambda!217849 lambda!217843))))

(declare-fun bs!1121534 () Bool)

(assert (= bs!1121534 (and b!4733596 b!4733552)))

(assert (=> bs!1121534 (= lambda!217849 lambda!217840)))

(declare-fun bs!1121535 () Bool)

(assert (= bs!1121535 (and b!4733596 d!1509730)))

(assert (=> bs!1121535 (= (= lt!1896343 lt!1896702) (= lambda!217849 lambda!217822))))

(declare-fun bs!1121536 () Bool)

(assert (= bs!1121536 (and b!4733596 b!4733561)))

(assert (=> bs!1121536 (= lambda!217849 lambda!217846)))

(declare-fun bs!1121537 () Bool)

(assert (= bs!1121537 (and b!4733596 d!1509818)))

(assert (=> bs!1121537 (= (= lt!1896343 lt!1896752) (= lambda!217849 lambda!217839))))

(assert (=> bs!1121528 (= lambda!217849 lambda!217833)))

(declare-fun bs!1121538 () Bool)

(assert (= bs!1121538 (and b!4733596 b!4733502)))

(assert (=> bs!1121538 (= lambda!217849 lambda!217819)))

(assert (=> bs!1121533 (= lambda!217849 lambda!217820)))

(assert (=> bs!1121536 (= (= lt!1896343 lt!1896826) (= lambda!217849 lambda!217847))))

(declare-fun bs!1121539 () Bool)

(assert (= bs!1121539 (and b!4733596 b!4733563)))

(assert (=> bs!1121539 (= lambda!217849 lambda!217845)))

(assert (=> b!4733596 true))

(declare-fun bs!1121540 () Bool)

(declare-fun b!4733594 () Bool)

(assert (= bs!1121540 (and b!4733594 b!4733537)))

(declare-fun lambda!217850 () Int)

(assert (=> bs!1121540 (= (= lt!1896343 lt!1896756) (= lambda!217850 lambda!217834))))

(declare-fun bs!1121541 () Bool)

(assert (= bs!1121541 (and b!4733594 d!1509820)))

(assert (=> bs!1121541 (= (= lt!1896343 lt!1896789) (= lambda!217850 lambda!217844))))

(declare-fun bs!1121542 () Bool)

(assert (= bs!1121542 (and b!4733594 d!1509826)))

(assert (=> bs!1121542 (= (= lt!1896343 lt!1896822) (= lambda!217850 lambda!217848))))

(declare-fun bs!1121543 () Bool)

(assert (= bs!1121543 (and b!4733594 b!4733539)))

(assert (=> bs!1121543 (= lambda!217850 lambda!217830)))

(declare-fun bs!1121544 () Bool)

(assert (= bs!1121544 (and b!4733594 b!4733550)))

(assert (=> bs!1121544 (= lambda!217850 lambda!217841)))

(declare-fun bs!1121545 () Bool)

(assert (= bs!1121545 (and b!4733594 b!4733500)))

(assert (=> bs!1121545 (= (= lt!1896343 lt!1896706) (= lambda!217850 lambda!217821))))

(assert (=> bs!1121544 (= (= lt!1896343 lt!1896793) (= lambda!217850 lambda!217843))))

(declare-fun bs!1121546 () Bool)

(assert (= bs!1121546 (and b!4733594 b!4733596)))

(assert (=> bs!1121546 (= lambda!217850 lambda!217849)))

(declare-fun bs!1121547 () Bool)

(assert (= bs!1121547 (and b!4733594 b!4733552)))

(assert (=> bs!1121547 (= lambda!217850 lambda!217840)))

(declare-fun bs!1121548 () Bool)

(assert (= bs!1121548 (and b!4733594 d!1509730)))

(assert (=> bs!1121548 (= (= lt!1896343 lt!1896702) (= lambda!217850 lambda!217822))))

(declare-fun bs!1121549 () Bool)

(assert (= bs!1121549 (and b!4733594 b!4733561)))

(assert (=> bs!1121549 (= lambda!217850 lambda!217846)))

(declare-fun bs!1121550 () Bool)

(assert (= bs!1121550 (and b!4733594 d!1509818)))

(assert (=> bs!1121550 (= (= lt!1896343 lt!1896752) (= lambda!217850 lambda!217839))))

(assert (=> bs!1121540 (= lambda!217850 lambda!217833)))

(declare-fun bs!1121551 () Bool)

(assert (= bs!1121551 (and b!4733594 b!4733502)))

(assert (=> bs!1121551 (= lambda!217850 lambda!217819)))

(assert (=> bs!1121545 (= lambda!217850 lambda!217820)))

(assert (=> bs!1121549 (= (= lt!1896343 lt!1896826) (= lambda!217850 lambda!217847))))

(declare-fun bs!1121552 () Bool)

(assert (= bs!1121552 (and b!4733594 b!4733563)))

(assert (=> bs!1121552 (= lambda!217850 lambda!217845)))

(assert (=> b!4733594 true))

(declare-fun lt!1896855 () ListMap!5341)

(declare-fun lambda!217851 () Int)

(assert (=> bs!1121540 (= (= lt!1896855 lt!1896756) (= lambda!217851 lambda!217834))))

(assert (=> b!4733594 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217850))))

(assert (=> bs!1121541 (= (= lt!1896855 lt!1896789) (= lambda!217851 lambda!217844))))

(assert (=> bs!1121542 (= (= lt!1896855 lt!1896822) (= lambda!217851 lambda!217848))))

(assert (=> bs!1121543 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217830))))

(assert (=> bs!1121544 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217841))))

(assert (=> bs!1121545 (= (= lt!1896855 lt!1896706) (= lambda!217851 lambda!217821))))

(assert (=> bs!1121544 (= (= lt!1896855 lt!1896793) (= lambda!217851 lambda!217843))))

(assert (=> bs!1121546 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217849))))

(assert (=> bs!1121547 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217840))))

(assert (=> bs!1121548 (= (= lt!1896855 lt!1896702) (= lambda!217851 lambda!217822))))

(assert (=> bs!1121549 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217846))))

(assert (=> bs!1121550 (= (= lt!1896855 lt!1896752) (= lambda!217851 lambda!217839))))

(assert (=> bs!1121540 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217833))))

(assert (=> bs!1121551 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217819))))

(assert (=> bs!1121545 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217820))))

(assert (=> bs!1121549 (= (= lt!1896855 lt!1896826) (= lambda!217851 lambda!217847))))

(assert (=> bs!1121552 (= (= lt!1896855 lt!1896343) (= lambda!217851 lambda!217845))))

(assert (=> b!4733594 true))

(declare-fun bs!1121555 () Bool)

(declare-fun d!1509834 () Bool)

(assert (= bs!1121555 (and d!1509834 b!4733537)))

(declare-fun lt!1896851 () ListMap!5341)

(declare-fun lambda!217852 () Int)

(assert (=> bs!1121555 (= (= lt!1896851 lt!1896756) (= lambda!217852 lambda!217834))))

(declare-fun bs!1121556 () Bool)

(assert (= bs!1121556 (and d!1509834 b!4733594)))

(assert (=> bs!1121556 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217850))))

(declare-fun bs!1121557 () Bool)

(assert (= bs!1121557 (and d!1509834 d!1509826)))

(assert (=> bs!1121557 (= (= lt!1896851 lt!1896822) (= lambda!217852 lambda!217848))))

(declare-fun bs!1121558 () Bool)

(assert (= bs!1121558 (and d!1509834 b!4733539)))

(assert (=> bs!1121558 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217830))))

(declare-fun bs!1121559 () Bool)

(assert (= bs!1121559 (and d!1509834 b!4733550)))

(assert (=> bs!1121559 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217841))))

(declare-fun bs!1121560 () Bool)

(assert (= bs!1121560 (and d!1509834 b!4733500)))

(assert (=> bs!1121560 (= (= lt!1896851 lt!1896706) (= lambda!217852 lambda!217821))))

(assert (=> bs!1121559 (= (= lt!1896851 lt!1896793) (= lambda!217852 lambda!217843))))

(declare-fun bs!1121561 () Bool)

(assert (= bs!1121561 (and d!1509834 b!4733596)))

(assert (=> bs!1121561 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217849))))

(declare-fun bs!1121562 () Bool)

(assert (= bs!1121562 (and d!1509834 b!4733552)))

(assert (=> bs!1121562 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217840))))

(declare-fun bs!1121563 () Bool)

(assert (= bs!1121563 (and d!1509834 d!1509730)))

(assert (=> bs!1121563 (= (= lt!1896851 lt!1896702) (= lambda!217852 lambda!217822))))

(declare-fun bs!1121564 () Bool)

(assert (= bs!1121564 (and d!1509834 b!4733561)))

(assert (=> bs!1121564 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217846))))

(declare-fun bs!1121565 () Bool)

(assert (= bs!1121565 (and d!1509834 d!1509818)))

(assert (=> bs!1121565 (= (= lt!1896851 lt!1896752) (= lambda!217852 lambda!217839))))

(assert (=> bs!1121555 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217833))))

(declare-fun bs!1121566 () Bool)

(assert (= bs!1121566 (and d!1509834 b!4733502)))

(assert (=> bs!1121566 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217819))))

(assert (=> bs!1121560 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217820))))

(declare-fun bs!1121567 () Bool)

(assert (= bs!1121567 (and d!1509834 d!1509820)))

(assert (=> bs!1121567 (= (= lt!1896851 lt!1896789) (= lambda!217852 lambda!217844))))

(assert (=> bs!1121556 (= (= lt!1896851 lt!1896855) (= lambda!217852 lambda!217851))))

(assert (=> bs!1121564 (= (= lt!1896851 lt!1896826) (= lambda!217852 lambda!217847))))

(declare-fun bs!1121568 () Bool)

(assert (= bs!1121568 (and d!1509834 b!4733563)))

(assert (=> bs!1121568 (= (= lt!1896851 lt!1896343) (= lambda!217852 lambda!217845))))

(assert (=> d!1509834 true))

(declare-fun c!808390 () Bool)

(declare-fun call!331083 () Bool)

(declare-fun bm!331078 () Bool)

(assert (=> bm!331078 (= call!331083 (forall!11653 (toList!5978 lt!1896343) (ite c!808390 lambda!217849 lambda!217851)))))

(declare-fun b!4733593 () Bool)

(declare-fun e!2952520 () Bool)

(assert (=> b!4733593 (= e!2952520 call!331083)))

(declare-fun bm!331079 () Bool)

(declare-fun call!331085 () Unit!131735)

(assert (=> bm!331079 (= call!331085 (lemmaContainsAllItsOwnKeys!820 lt!1896343))))

(declare-fun call!331084 () Bool)

(declare-fun bm!331080 () Bool)

(assert (=> bm!331080 (= call!331084 (forall!11653 (toList!5978 lt!1896343) (ite c!808390 lambda!217849 lambda!217851)))))

(declare-fun e!2952516 () Bool)

(assert (=> d!1509834 e!2952516))

(declare-fun res!2004407 () Bool)

(assert (=> d!1509834 (=> (not res!2004407) (not e!2952516))))

(assert (=> d!1509834 (= res!2004407 (forall!11653 (Cons!52913 lt!1896326 lt!1896336) lambda!217852))))

(declare-fun e!2952519 () ListMap!5341)

(assert (=> d!1509834 (= lt!1896851 e!2952519)))

(assert (=> d!1509834 (= c!808390 ((_ is Nil!52913) (Cons!52913 lt!1896326 lt!1896336)))))

(assert (=> d!1509834 (noDuplicateKeys!2044 (Cons!52913 lt!1896326 lt!1896336))))

(assert (=> d!1509834 (= (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343) lt!1896851)))

(assert (=> b!4733594 (= e!2952519 lt!1896855)))

(declare-fun lt!1896846 () ListMap!5341)

(assert (=> b!4733594 (= lt!1896846 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> b!4733594 (= lt!1896855 (addToMapMapFromBucket!1474 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun lt!1896847 () Unit!131735)

(assert (=> b!4733594 (= lt!1896847 call!331085)))

(assert (=> b!4733594 (forall!11653 (toList!5978 lt!1896343) lambda!217850)))

(declare-fun lt!1896844 () Unit!131735)

(assert (=> b!4733594 (= lt!1896844 lt!1896847)))

(assert (=> b!4733594 (forall!11653 (toList!5978 lt!1896846) lambda!217851)))

(declare-fun lt!1896845 () Unit!131735)

(declare-fun Unit!131830 () Unit!131735)

(assert (=> b!4733594 (= lt!1896845 Unit!131830)))

(assert (=> b!4733594 (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217851)))

(declare-fun lt!1896841 () Unit!131735)

(declare-fun Unit!131831 () Unit!131735)

(assert (=> b!4733594 (= lt!1896841 Unit!131831)))

(declare-fun lt!1896856 () Unit!131735)

(declare-fun Unit!131832 () Unit!131735)

(assert (=> b!4733594 (= lt!1896856 Unit!131832)))

(declare-fun lt!1896838 () Unit!131735)

(assert (=> b!4733594 (= lt!1896838 (forallContained!3693 (toList!5978 lt!1896846) lambda!217851 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> b!4733594 (contains!16298 lt!1896846 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(declare-fun lt!1896850 () Unit!131735)

(declare-fun Unit!131833 () Unit!131735)

(assert (=> b!4733594 (= lt!1896850 Unit!131833)))

(assert (=> b!4733594 (contains!16298 lt!1896855 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(declare-fun lt!1896852 () Unit!131735)

(declare-fun Unit!131834 () Unit!131735)

(assert (=> b!4733594 (= lt!1896852 Unit!131834)))

(assert (=> b!4733594 (forall!11653 (Cons!52913 lt!1896326 lt!1896336) lambda!217851)))

(declare-fun lt!1896854 () Unit!131735)

(declare-fun Unit!131835 () Unit!131735)

(assert (=> b!4733594 (= lt!1896854 Unit!131835)))

(assert (=> b!4733594 (forall!11653 (toList!5978 lt!1896846) lambda!217851)))

(declare-fun lt!1896842 () Unit!131735)

(declare-fun Unit!131836 () Unit!131735)

(assert (=> b!4733594 (= lt!1896842 Unit!131836)))

(declare-fun lt!1896837 () Unit!131735)

(declare-fun Unit!131837 () Unit!131735)

(assert (=> b!4733594 (= lt!1896837 Unit!131837)))

(declare-fun lt!1896839 () Unit!131735)

(assert (=> b!4733594 (= lt!1896839 (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896855 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> b!4733594 call!331084))

(declare-fun lt!1896848 () Unit!131735)

(assert (=> b!4733594 (= lt!1896848 lt!1896839)))

(assert (=> b!4733594 (forall!11653 (toList!5978 lt!1896343) lambda!217851)))

(declare-fun lt!1896836 () Unit!131735)

(declare-fun Unit!131838 () Unit!131735)

(assert (=> b!4733594 (= lt!1896836 Unit!131838)))

(declare-fun res!2004409 () Bool)

(assert (=> b!4733594 (= res!2004409 (forall!11653 (Cons!52913 lt!1896326 lt!1896336) lambda!217851))))

(assert (=> b!4733594 (=> (not res!2004409) (not e!2952520))))

(assert (=> b!4733594 e!2952520))

(declare-fun lt!1896840 () Unit!131735)

(declare-fun Unit!131839 () Unit!131735)

(assert (=> b!4733594 (= lt!1896840 Unit!131839)))

(declare-fun b!4733595 () Bool)

(declare-fun res!2004408 () Bool)

(assert (=> b!4733595 (=> (not res!2004408) (not e!2952516))))

(assert (=> b!4733595 (= res!2004408 (forall!11653 (toList!5978 lt!1896343) lambda!217852))))

(assert (=> b!4733596 (= e!2952519 lt!1896343)))

(declare-fun lt!1896849 () Unit!131735)

(assert (=> b!4733596 (= lt!1896849 call!331085)))

(assert (=> b!4733596 call!331084))

(declare-fun lt!1896853 () Unit!131735)

(assert (=> b!4733596 (= lt!1896853 lt!1896849)))

(assert (=> b!4733596 call!331083))

(declare-fun lt!1896843 () Unit!131735)

(declare-fun Unit!131843 () Unit!131735)

(assert (=> b!4733596 (= lt!1896843 Unit!131843)))

(declare-fun b!4733597 () Bool)

(assert (=> b!4733597 (= e!2952516 (invariantList!1535 (toList!5978 lt!1896851)))))

(assert (= (and d!1509834 c!808390) b!4733596))

(assert (= (and d!1509834 (not c!808390)) b!4733594))

(assert (= (and b!4733594 res!2004409) b!4733593))

(assert (= (or b!4733596 b!4733594) bm!331079))

(assert (= (or b!4733596 b!4733594) bm!331080))

(assert (= (or b!4733596 b!4733593) bm!331078))

(assert (= (and d!1509834 res!2004407) b!4733595))

(assert (= (and b!4733595 res!2004408) b!4733597))

(declare-fun m!5677359 () Bool)

(assert (=> bm!331078 m!5677359))

(declare-fun m!5677361 () Bool)

(assert (=> d!1509834 m!5677361))

(declare-fun m!5677363 () Bool)

(assert (=> d!1509834 m!5677363))

(assert (=> bm!331079 m!5677111))

(declare-fun m!5677365 () Bool)

(assert (=> b!4733594 m!5677365))

(declare-fun m!5677367 () Bool)

(assert (=> b!4733594 m!5677367))

(declare-fun m!5677369 () Bool)

(assert (=> b!4733594 m!5677369))

(declare-fun m!5677371 () Bool)

(assert (=> b!4733594 m!5677371))

(declare-fun m!5677373 () Bool)

(assert (=> b!4733594 m!5677373))

(declare-fun m!5677375 () Bool)

(assert (=> b!4733594 m!5677375))

(declare-fun m!5677377 () Bool)

(assert (=> b!4733594 m!5677377))

(assert (=> b!4733594 m!5677365))

(declare-fun m!5677379 () Bool)

(assert (=> b!4733594 m!5677379))

(declare-fun m!5677381 () Bool)

(assert (=> b!4733594 m!5677381))

(assert (=> b!4733594 m!5677371))

(declare-fun m!5677383 () Bool)

(assert (=> b!4733594 m!5677383))

(assert (=> b!4733594 m!5677379))

(declare-fun m!5677385 () Bool)

(assert (=> b!4733594 m!5677385))

(declare-fun m!5677387 () Bool)

(assert (=> b!4733595 m!5677387))

(assert (=> bm!331080 m!5677359))

(declare-fun m!5677389 () Bool)

(assert (=> b!4733597 m!5677389))

(assert (=> b!4733244 d!1509834))

(declare-fun d!1509842 () Bool)

(declare-fun e!2952532 () Bool)

(assert (=> d!1509842 e!2952532))

(declare-fun res!2004414 () Bool)

(assert (=> d!1509842 (=> (not res!2004414) (not e!2952532))))

(declare-fun lt!1896860 () ListMap!5341)

(assert (=> d!1509842 (= res!2004414 (contains!16298 lt!1896860 (_1!30579 lt!1896347)))))

(declare-fun lt!1896858 () List!53037)

(assert (=> d!1509842 (= lt!1896860 (ListMap!5342 lt!1896858))))

(declare-fun lt!1896861 () Unit!131735)

(declare-fun lt!1896859 () Unit!131735)

(assert (=> d!1509842 (= lt!1896861 lt!1896859)))

(assert (=> d!1509842 (= (getValueByKey!2000 lt!1896858 (_1!30579 lt!1896347)) (Some!12425 (_2!30579 lt!1896347)))))

(assert (=> d!1509842 (= lt!1896859 (lemmaContainsTupThenGetReturnValue!1102 lt!1896858 (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(assert (=> d!1509842 (= lt!1896858 (insertNoDuplicatedKeys!610 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)) (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(assert (=> d!1509842 (= (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347) lt!1896860)))

(declare-fun b!4733613 () Bool)

(declare-fun res!2004415 () Bool)

(assert (=> b!4733613 (=> (not res!2004415) (not e!2952532))))

(assert (=> b!4733613 (= res!2004415 (= (getValueByKey!2000 (toList!5978 lt!1896860) (_1!30579 lt!1896347)) (Some!12425 (_2!30579 lt!1896347))))))

(declare-fun b!4733614 () Bool)

(assert (=> b!4733614 (= e!2952532 (contains!16300 (toList!5978 lt!1896860) lt!1896347))))

(assert (= (and d!1509842 res!2004414) b!4733613))

(assert (= (and b!4733613 res!2004415) b!4733614))

(declare-fun m!5677391 () Bool)

(assert (=> d!1509842 m!5677391))

(declare-fun m!5677393 () Bool)

(assert (=> d!1509842 m!5677393))

(declare-fun m!5677395 () Bool)

(assert (=> d!1509842 m!5677395))

(declare-fun m!5677397 () Bool)

(assert (=> d!1509842 m!5677397))

(declare-fun m!5677399 () Bool)

(assert (=> b!4733613 m!5677399))

(declare-fun m!5677401 () Bool)

(assert (=> b!4733614 m!5677401))

(assert (=> b!4733244 d!1509842))

(declare-fun d!1509844 () Bool)

(assert (=> d!1509844 (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))))

(declare-fun lt!1896862 () Unit!131735)

(assert (=> d!1509844 (= lt!1896862 (choose!33519 lt!1896347 lt!1896335 lt!1896343))))

(assert (=> d!1509844 (noDuplicateKeys!2044 lt!1896335)))

(assert (=> d!1509844 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!390 lt!1896347 lt!1896335 lt!1896343) lt!1896862)))

(declare-fun bs!1121569 () Bool)

(assert (= bs!1121569 d!1509844))

(declare-fun m!5677403 () Bool)

(assert (=> bs!1121569 m!5677403))

(assert (=> bs!1121569 m!5676591))

(assert (=> bs!1121569 m!5676591))

(assert (=> bs!1121569 m!5676587))

(assert (=> bs!1121569 m!5676597))

(assert (=> bs!1121569 m!5676585))

(assert (=> bs!1121569 m!5677255))

(assert (=> bs!1121569 m!5676585))

(assert (=> bs!1121569 m!5676587))

(assert (=> b!4733244 d!1509844))

(declare-fun d!1509846 () Bool)

(assert (=> d!1509846 (= (head!10292 newBucket!218) (h!59284 newBucket!218))))

(assert (=> b!4733244 d!1509846))

(declare-fun bs!1121570 () Bool)

(declare-fun d!1509848 () Bool)

(assert (= bs!1121570 (and d!1509848 start!482632)))

(declare-fun lambda!217853 () Int)

(assert (=> bs!1121570 (= lambda!217853 lambda!217712)))

(declare-fun bs!1121571 () Bool)

(assert (= bs!1121571 (and d!1509848 d!1509812)))

(assert (=> bs!1121571 (= lambda!217853 lambda!217826)))

(declare-fun bs!1121572 () Bool)

(assert (= bs!1121572 (and d!1509848 d!1509816)))

(assert (=> bs!1121572 (= lambda!217853 lambda!217829)))

(declare-fun bs!1121573 () Bool)

(assert (= bs!1121573 (and d!1509848 d!1509792)))

(assert (=> bs!1121573 (= lambda!217853 lambda!217825)))

(declare-fun bs!1121574 () Bool)

(assert (= bs!1121574 (and d!1509848 d!1509704)))

(assert (=> bs!1121574 (= lambda!217853 lambda!217749)))

(declare-fun bs!1121575 () Bool)

(assert (= bs!1121575 (and d!1509848 d!1509702)))

(assert (=> bs!1121575 (= lambda!217853 lambda!217718)))

(declare-fun lt!1896863 () ListMap!5341)

(assert (=> d!1509848 (invariantList!1535 (toList!5978 lt!1896863))))

(declare-fun e!2952533 () ListMap!5341)

(assert (=> d!1509848 (= lt!1896863 e!2952533)))

(declare-fun c!808391 () Bool)

(assert (=> d!1509848 (= c!808391 ((_ is Cons!52914) (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1509848 (forall!11651 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))) lambda!217853)))

(assert (=> d!1509848 (= (extractMap!2070 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))) lt!1896863)))

(declare-fun b!4733615 () Bool)

(assert (=> b!4733615 (= e!2952533 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun b!4733616 () Bool)

(assert (=> b!4733616 (= e!2952533 (ListMap!5342 Nil!52913))))

(assert (= (and d!1509848 c!808391) b!4733615))

(assert (= (and d!1509848 (not c!808391)) b!4733616))

(declare-fun m!5677405 () Bool)

(assert (=> d!1509848 m!5677405))

(declare-fun m!5677407 () Bool)

(assert (=> d!1509848 m!5677407))

(declare-fun m!5677409 () Bool)

(assert (=> b!4733615 m!5677409))

(assert (=> b!4733615 m!5677409))

(declare-fun m!5677411 () Bool)

(assert (=> b!4733615 m!5677411))

(assert (=> b!4733244 d!1509848))

(declare-fun bs!1121576 () Bool)

(declare-fun d!1509850 () Bool)

(assert (= bs!1121576 (and d!1509850 start!482632)))

(declare-fun lambda!217854 () Int)

(assert (=> bs!1121576 (= lambda!217854 lambda!217712)))

(declare-fun bs!1121577 () Bool)

(assert (= bs!1121577 (and d!1509850 d!1509812)))

(assert (=> bs!1121577 (= lambda!217854 lambda!217826)))

(declare-fun bs!1121578 () Bool)

(assert (= bs!1121578 (and d!1509850 d!1509816)))

(assert (=> bs!1121578 (= lambda!217854 lambda!217829)))

(declare-fun bs!1121579 () Bool)

(assert (= bs!1121579 (and d!1509850 d!1509792)))

(assert (=> bs!1121579 (= lambda!217854 lambda!217825)))

(declare-fun bs!1121580 () Bool)

(assert (= bs!1121580 (and d!1509850 d!1509704)))

(assert (=> bs!1121580 (= lambda!217854 lambda!217749)))

(declare-fun bs!1121581 () Bool)

(assert (= bs!1121581 (and d!1509850 d!1509702)))

(assert (=> bs!1121581 (= lambda!217854 lambda!217718)))

(declare-fun bs!1121582 () Bool)

(assert (= bs!1121582 (and d!1509850 d!1509848)))

(assert (=> bs!1121582 (= lambda!217854 lambda!217853)))

(declare-fun lt!1896864 () ListMap!5341)

(assert (=> d!1509850 (invariantList!1535 (toList!5978 lt!1896864))))

(declare-fun e!2952534 () ListMap!5341)

(assert (=> d!1509850 (= lt!1896864 e!2952534)))

(declare-fun c!808392 () Bool)

(assert (=> d!1509850 (= c!808392 ((_ is Cons!52914) (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1509850 (forall!11651 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))) lambda!217854)))

(assert (=> d!1509850 (= (extractMap!2070 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))) lt!1896864)))

(declare-fun b!4733617 () Bool)

(assert (=> b!4733617 (= e!2952534 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun b!4733618 () Bool)

(assert (=> b!4733618 (= e!2952534 (ListMap!5342 Nil!52913))))

(assert (= (and d!1509850 c!808392) b!4733617))

(assert (= (and d!1509850 (not c!808392)) b!4733618))

(declare-fun m!5677413 () Bool)

(assert (=> d!1509850 m!5677413))

(declare-fun m!5677415 () Bool)

(assert (=> d!1509850 m!5677415))

(declare-fun m!5677417 () Bool)

(assert (=> b!4733617 m!5677417))

(assert (=> b!4733617 m!5677417))

(declare-fun m!5677419 () Bool)

(assert (=> b!4733617 m!5677419))

(assert (=> b!4733244 d!1509850))

(declare-fun b!4733637 () Bool)

(declare-fun e!2952551 () Unit!131735)

(declare-fun lt!1896886 () Unit!131735)

(assert (=> b!4733637 (= e!2952551 lt!1896886)))

(declare-fun lt!1896882 () Unit!131735)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (List!53037 K!14260) Unit!131735)

(assert (=> b!4733637 (= lt!1896882 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(declare-fun isDefined!9680 (Option!12426) Bool)

(assert (=> b!4733637 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(declare-fun lt!1896885 () Unit!131735)

(assert (=> b!4733637 (= lt!1896885 lt!1896882)))

(declare-fun lemmaInListThenGetKeysListContains!969 (List!53037 K!14260) Unit!131735)

(assert (=> b!4733637 (= lt!1896886 (lemmaInListThenGetKeysListContains!969 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(declare-fun call!331088 () Bool)

(assert (=> b!4733637 call!331088))

(declare-fun b!4733638 () Bool)

(declare-datatypes ((List!53040 0))(
  ( (Nil!52916) (Cons!52916 (h!59289 K!14260) (t!360322 List!53040)) )
))
(declare-fun e!2952548 () List!53040)

(declare-fun keys!19029 (ListMap!5341) List!53040)

(assert (=> b!4733638 (= e!2952548 (keys!19029 (extractMap!2070 lt!1896327)))))

(declare-fun b!4733639 () Bool)

(declare-fun e!2952549 () Bool)

(declare-fun contains!16302 (List!53040 K!14260) Bool)

(assert (=> b!4733639 (= e!2952549 (contains!16302 (keys!19029 (extractMap!2070 lt!1896327)) key!4653))))

(declare-fun b!4733640 () Bool)

(declare-fun e!2952547 () Bool)

(assert (=> b!4733640 (= e!2952547 e!2952549)))

(declare-fun res!2004424 () Bool)

(assert (=> b!4733640 (=> (not res!2004424) (not e!2952549))))

(assert (=> b!4733640 (= res!2004424 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 lt!1896327)) key!4653)))))

(declare-fun b!4733641 () Bool)

(assert (=> b!4733641 false))

(declare-fun lt!1896881 () Unit!131735)

(declare-fun lt!1896887 () Unit!131735)

(assert (=> b!4733641 (= lt!1896881 lt!1896887)))

(declare-fun containsKey!3440 (List!53037 K!14260) Bool)

(assert (=> b!4733641 (containsKey!3440 (toList!5978 (extractMap!2070 lt!1896327)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!973 (List!53037 K!14260) Unit!131735)

(assert (=> b!4733641 (= lt!1896887 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(declare-fun e!2952552 () Unit!131735)

(declare-fun Unit!131852 () Unit!131735)

(assert (=> b!4733641 (= e!2952552 Unit!131852)))

(declare-fun bm!331083 () Bool)

(assert (=> bm!331083 (= call!331088 (contains!16302 e!2952548 key!4653))))

(declare-fun c!808399 () Bool)

(declare-fun c!808400 () Bool)

(assert (=> bm!331083 (= c!808399 c!808400)))

(declare-fun d!1509852 () Bool)

(assert (=> d!1509852 e!2952547))

(declare-fun res!2004422 () Bool)

(assert (=> d!1509852 (=> res!2004422 e!2952547)))

(declare-fun e!2952550 () Bool)

(assert (=> d!1509852 (= res!2004422 e!2952550)))

(declare-fun res!2004423 () Bool)

(assert (=> d!1509852 (=> (not res!2004423) (not e!2952550))))

(declare-fun lt!1896884 () Bool)

(assert (=> d!1509852 (= res!2004423 (not lt!1896884))))

(declare-fun lt!1896883 () Bool)

(assert (=> d!1509852 (= lt!1896884 lt!1896883)))

(declare-fun lt!1896888 () Unit!131735)

(assert (=> d!1509852 (= lt!1896888 e!2952551)))

(assert (=> d!1509852 (= c!808400 lt!1896883)))

(assert (=> d!1509852 (= lt!1896883 (containsKey!3440 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(assert (=> d!1509852 (= (contains!16298 (extractMap!2070 lt!1896327) key!4653) lt!1896884)))

(declare-fun b!4733642 () Bool)

(declare-fun getKeysList!974 (List!53037) List!53040)

(assert (=> b!4733642 (= e!2952548 (getKeysList!974 (toList!5978 (extractMap!2070 lt!1896327))))))

(declare-fun b!4733643 () Bool)

(assert (=> b!4733643 (= e!2952551 e!2952552)))

(declare-fun c!808401 () Bool)

(assert (=> b!4733643 (= c!808401 call!331088)))

(declare-fun b!4733644 () Bool)

(declare-fun Unit!131853 () Unit!131735)

(assert (=> b!4733644 (= e!2952552 Unit!131853)))

(declare-fun b!4733645 () Bool)

(assert (=> b!4733645 (= e!2952550 (not (contains!16302 (keys!19029 (extractMap!2070 lt!1896327)) key!4653)))))

(assert (= (and d!1509852 c!808400) b!4733637))

(assert (= (and d!1509852 (not c!808400)) b!4733643))

(assert (= (and b!4733643 c!808401) b!4733641))

(assert (= (and b!4733643 (not c!808401)) b!4733644))

(assert (= (or b!4733637 b!4733643) bm!331083))

(assert (= (and bm!331083 c!808399) b!4733642))

(assert (= (and bm!331083 (not c!808399)) b!4733638))

(assert (= (and d!1509852 res!2004423) b!4733645))

(assert (= (and d!1509852 (not res!2004422)) b!4733640))

(assert (= (and b!4733640 res!2004424) b!4733639))

(declare-fun m!5677421 () Bool)

(assert (=> b!4733642 m!5677421))

(declare-fun m!5677423 () Bool)

(assert (=> b!4733637 m!5677423))

(declare-fun m!5677425 () Bool)

(assert (=> b!4733637 m!5677425))

(assert (=> b!4733637 m!5677425))

(declare-fun m!5677427 () Bool)

(assert (=> b!4733637 m!5677427))

(declare-fun m!5677429 () Bool)

(assert (=> b!4733637 m!5677429))

(declare-fun m!5677431 () Bool)

(assert (=> d!1509852 m!5677431))

(declare-fun m!5677433 () Bool)

(assert (=> bm!331083 m!5677433))

(assert (=> b!4733638 m!5676609))

(declare-fun m!5677435 () Bool)

(assert (=> b!4733638 m!5677435))

(assert (=> b!4733640 m!5677425))

(assert (=> b!4733640 m!5677425))

(assert (=> b!4733640 m!5677427))

(assert (=> b!4733645 m!5676609))

(assert (=> b!4733645 m!5677435))

(assert (=> b!4733645 m!5677435))

(declare-fun m!5677437 () Bool)

(assert (=> b!4733645 m!5677437))

(assert (=> b!4733641 m!5677431))

(declare-fun m!5677439 () Bool)

(assert (=> b!4733641 m!5677439))

(assert (=> b!4733639 m!5676609))

(assert (=> b!4733639 m!5677435))

(assert (=> b!4733639 m!5677435))

(assert (=> b!4733639 m!5677437))

(assert (=> b!4733244 d!1509852))

(declare-fun d!1509854 () Bool)

(assert (=> d!1509854 (= (eq!1141 lt!1896329 (+!2292 lt!1896340 (h!59284 oldBucket!34))) (= (content!9440 (toList!5978 lt!1896329)) (content!9440 (toList!5978 (+!2292 lt!1896340 (h!59284 oldBucket!34))))))))

(declare-fun bs!1121583 () Bool)

(assert (= bs!1121583 d!1509854))

(assert (=> bs!1121583 m!5676787))

(declare-fun m!5677441 () Bool)

(assert (=> bs!1121583 m!5677441))

(assert (=> b!4733244 d!1509854))

(declare-fun d!1509856 () Bool)

(declare-fun lt!1896889 () List!53037)

(assert (=> d!1509856 (not (containsKey!3437 lt!1896889 key!4653))))

(declare-fun e!2952554 () List!53037)

(assert (=> d!1509856 (= lt!1896889 e!2952554)))

(declare-fun c!808402 () Bool)

(assert (=> d!1509856 (= c!808402 (and ((_ is Cons!52913) lt!1896336) (= (_1!30579 (h!59284 lt!1896336)) key!4653)))))

(assert (=> d!1509856 (noDuplicateKeys!2044 lt!1896336)))

(assert (=> d!1509856 (= (removePairForKey!1639 lt!1896336 key!4653) lt!1896889)))

(declare-fun b!4733646 () Bool)

(assert (=> b!4733646 (= e!2952554 (t!360317 lt!1896336))))

(declare-fun b!4733647 () Bool)

(declare-fun e!2952553 () List!53037)

(assert (=> b!4733647 (= e!2952554 e!2952553)))

(declare-fun c!808403 () Bool)

(assert (=> b!4733647 (= c!808403 ((_ is Cons!52913) lt!1896336))))

(declare-fun b!4733648 () Bool)

(assert (=> b!4733648 (= e!2952553 (Cons!52913 (h!59284 lt!1896336) (removePairForKey!1639 (t!360317 lt!1896336) key!4653)))))

(declare-fun b!4733649 () Bool)

(assert (=> b!4733649 (= e!2952553 Nil!52913)))

(assert (= (and d!1509856 c!808402) b!4733646))

(assert (= (and d!1509856 (not c!808402)) b!4733647))

(assert (= (and b!4733647 c!808403) b!4733648))

(assert (= (and b!4733647 (not c!808403)) b!4733649))

(declare-fun m!5677443 () Bool)

(assert (=> d!1509856 m!5677443))

(assert (=> d!1509856 m!5677165))

(declare-fun m!5677445 () Bool)

(assert (=> b!4733648 m!5677445))

(assert (=> b!4733254 d!1509856))

(declare-fun d!1509858 () Bool)

(assert (=> d!1509858 (= (tail!9076 newBucket!218) (t!360317 newBucket!218))))

(assert (=> b!4733254 d!1509858))

(declare-fun d!1509860 () Bool)

(assert (=> d!1509860 (= (tail!9076 oldBucket!34) (t!360317 oldBucket!34))))

(assert (=> b!4733254 d!1509860))

(declare-fun bs!1121584 () Bool)

(declare-fun d!1509862 () Bool)

(assert (= bs!1121584 (and d!1509862 start!482632)))

(declare-fun lambda!217857 () Int)

(assert (=> bs!1121584 (not (= lambda!217857 lambda!217712))))

(declare-fun bs!1121585 () Bool)

(assert (= bs!1121585 (and d!1509862 d!1509850)))

(assert (=> bs!1121585 (not (= lambda!217857 lambda!217854))))

(declare-fun bs!1121586 () Bool)

(assert (= bs!1121586 (and d!1509862 d!1509812)))

(assert (=> bs!1121586 (not (= lambda!217857 lambda!217826))))

(declare-fun bs!1121587 () Bool)

(assert (= bs!1121587 (and d!1509862 d!1509816)))

(assert (=> bs!1121587 (not (= lambda!217857 lambda!217829))))

(declare-fun bs!1121588 () Bool)

(assert (= bs!1121588 (and d!1509862 d!1509792)))

(assert (=> bs!1121588 (not (= lambda!217857 lambda!217825))))

(declare-fun bs!1121589 () Bool)

(assert (= bs!1121589 (and d!1509862 d!1509704)))

(assert (=> bs!1121589 (not (= lambda!217857 lambda!217749))))

(declare-fun bs!1121590 () Bool)

(assert (= bs!1121590 (and d!1509862 d!1509702)))

(assert (=> bs!1121590 (not (= lambda!217857 lambda!217718))))

(declare-fun bs!1121591 () Bool)

(assert (= bs!1121591 (and d!1509862 d!1509848)))

(assert (=> bs!1121591 (not (= lambda!217857 lambda!217853))))

(assert (=> d!1509862 true))

(assert (=> d!1509862 (= (allKeysSameHashInMap!1958 lm!2023 hashF!1323) (forall!11651 (toList!5977 lm!2023) lambda!217857))))

(declare-fun bs!1121592 () Bool)

(assert (= bs!1121592 d!1509862))

(declare-fun m!5677447 () Bool)

(assert (=> bs!1121592 m!5677447))

(assert (=> b!4733243 d!1509862))

(declare-fun bs!1121593 () Bool)

(declare-fun d!1509864 () Bool)

(assert (= bs!1121593 (and d!1509864 b!4733537)))

(declare-fun lambda!217860 () Int)

(assert (=> bs!1121593 (not (= lambda!217860 lambda!217834))))

(declare-fun bs!1121594 () Bool)

(assert (= bs!1121594 (and d!1509864 b!4733594)))

(assert (=> bs!1121594 (not (= lambda!217860 lambda!217850))))

(declare-fun bs!1121595 () Bool)

(assert (= bs!1121595 (and d!1509864 d!1509826)))

(assert (=> bs!1121595 (not (= lambda!217860 lambda!217848))))

(declare-fun bs!1121596 () Bool)

(assert (= bs!1121596 (and d!1509864 d!1509834)))

(assert (=> bs!1121596 (not (= lambda!217860 lambda!217852))))

(declare-fun bs!1121597 () Bool)

(assert (= bs!1121597 (and d!1509864 b!4733539)))

(assert (=> bs!1121597 (not (= lambda!217860 lambda!217830))))

(declare-fun bs!1121598 () Bool)

(assert (= bs!1121598 (and d!1509864 b!4733550)))

(assert (=> bs!1121598 (not (= lambda!217860 lambda!217841))))

(declare-fun bs!1121599 () Bool)

(assert (= bs!1121599 (and d!1509864 b!4733500)))

(assert (=> bs!1121599 (not (= lambda!217860 lambda!217821))))

(assert (=> bs!1121598 (not (= lambda!217860 lambda!217843))))

(declare-fun bs!1121600 () Bool)

(assert (= bs!1121600 (and d!1509864 b!4733596)))

(assert (=> bs!1121600 (not (= lambda!217860 lambda!217849))))

(declare-fun bs!1121601 () Bool)

(assert (= bs!1121601 (and d!1509864 b!4733552)))

(assert (=> bs!1121601 (not (= lambda!217860 lambda!217840))))

(declare-fun bs!1121602 () Bool)

(assert (= bs!1121602 (and d!1509864 d!1509730)))

(assert (=> bs!1121602 (not (= lambda!217860 lambda!217822))))

(declare-fun bs!1121603 () Bool)

(assert (= bs!1121603 (and d!1509864 b!4733561)))

(assert (=> bs!1121603 (not (= lambda!217860 lambda!217846))))

(declare-fun bs!1121604 () Bool)

(assert (= bs!1121604 (and d!1509864 d!1509818)))

(assert (=> bs!1121604 (not (= lambda!217860 lambda!217839))))

(assert (=> bs!1121593 (not (= lambda!217860 lambda!217833))))

(declare-fun bs!1121605 () Bool)

(assert (= bs!1121605 (and d!1509864 b!4733502)))

(assert (=> bs!1121605 (not (= lambda!217860 lambda!217819))))

(assert (=> bs!1121599 (not (= lambda!217860 lambda!217820))))

(declare-fun bs!1121606 () Bool)

(assert (= bs!1121606 (and d!1509864 d!1509820)))

(assert (=> bs!1121606 (not (= lambda!217860 lambda!217844))))

(assert (=> bs!1121594 (not (= lambda!217860 lambda!217851))))

(assert (=> bs!1121603 (not (= lambda!217860 lambda!217847))))

(declare-fun bs!1121607 () Bool)

(assert (= bs!1121607 (and d!1509864 b!4733563)))

(assert (=> bs!1121607 (not (= lambda!217860 lambda!217845))))

(assert (=> d!1509864 true))

(assert (=> d!1509864 true))

(assert (=> d!1509864 (= (allKeysSameHash!1870 oldBucket!34 hash!405 hashF!1323) (forall!11653 oldBucket!34 lambda!217860))))

(declare-fun bs!1121608 () Bool)

(assert (= bs!1121608 d!1509864))

(declare-fun m!5677449 () Bool)

(assert (=> bs!1121608 m!5677449))

(assert (=> b!4733253 d!1509864))

(declare-fun b!4733656 () Bool)

(declare-fun e!2952559 () Unit!131735)

(declare-fun lt!1896895 () Unit!131735)

(assert (=> b!4733656 (= e!2952559 lt!1896895)))

(declare-fun lt!1896891 () Unit!131735)

(assert (=> b!4733656 (= lt!1896891 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896330) key!4653))))

(assert (=> b!4733656 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896330) key!4653))))

(declare-fun lt!1896894 () Unit!131735)

(assert (=> b!4733656 (= lt!1896894 lt!1896891)))

(assert (=> b!4733656 (= lt!1896895 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896330) key!4653))))

(declare-fun call!331089 () Bool)

(assert (=> b!4733656 call!331089))

(declare-fun b!4733657 () Bool)

(declare-fun e!2952556 () List!53040)

(assert (=> b!4733657 (= e!2952556 (keys!19029 lt!1896330))))

(declare-fun b!4733658 () Bool)

(declare-fun e!2952557 () Bool)

(assert (=> b!4733658 (= e!2952557 (contains!16302 (keys!19029 lt!1896330) key!4653))))

(declare-fun b!4733659 () Bool)

(declare-fun e!2952555 () Bool)

(assert (=> b!4733659 (= e!2952555 e!2952557)))

(declare-fun res!2004427 () Bool)

(assert (=> b!4733659 (=> (not res!2004427) (not e!2952557))))

(assert (=> b!4733659 (= res!2004427 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896330) key!4653)))))

(declare-fun b!4733660 () Bool)

(assert (=> b!4733660 false))

(declare-fun lt!1896890 () Unit!131735)

(declare-fun lt!1896896 () Unit!131735)

(assert (=> b!4733660 (= lt!1896890 lt!1896896)))

(assert (=> b!4733660 (containsKey!3440 (toList!5978 lt!1896330) key!4653)))

(assert (=> b!4733660 (= lt!1896896 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896330) key!4653))))

(declare-fun e!2952560 () Unit!131735)

(declare-fun Unit!131855 () Unit!131735)

(assert (=> b!4733660 (= e!2952560 Unit!131855)))

(declare-fun bm!331084 () Bool)

(assert (=> bm!331084 (= call!331089 (contains!16302 e!2952556 key!4653))))

(declare-fun c!808404 () Bool)

(declare-fun c!808405 () Bool)

(assert (=> bm!331084 (= c!808404 c!808405)))

(declare-fun d!1509866 () Bool)

(assert (=> d!1509866 e!2952555))

(declare-fun res!2004425 () Bool)

(assert (=> d!1509866 (=> res!2004425 e!2952555)))

(declare-fun e!2952558 () Bool)

(assert (=> d!1509866 (= res!2004425 e!2952558)))

(declare-fun res!2004426 () Bool)

(assert (=> d!1509866 (=> (not res!2004426) (not e!2952558))))

(declare-fun lt!1896893 () Bool)

(assert (=> d!1509866 (= res!2004426 (not lt!1896893))))

(declare-fun lt!1896892 () Bool)

(assert (=> d!1509866 (= lt!1896893 lt!1896892)))

(declare-fun lt!1896897 () Unit!131735)

(assert (=> d!1509866 (= lt!1896897 e!2952559)))

(assert (=> d!1509866 (= c!808405 lt!1896892)))

(assert (=> d!1509866 (= lt!1896892 (containsKey!3440 (toList!5978 lt!1896330) key!4653))))

(assert (=> d!1509866 (= (contains!16298 lt!1896330 key!4653) lt!1896893)))

(declare-fun b!4733661 () Bool)

(assert (=> b!4733661 (= e!2952556 (getKeysList!974 (toList!5978 lt!1896330)))))

(declare-fun b!4733662 () Bool)

(assert (=> b!4733662 (= e!2952559 e!2952560)))

(declare-fun c!808406 () Bool)

(assert (=> b!4733662 (= c!808406 call!331089)))

(declare-fun b!4733663 () Bool)

(declare-fun Unit!131856 () Unit!131735)

(assert (=> b!4733663 (= e!2952560 Unit!131856)))

(declare-fun b!4733664 () Bool)

(assert (=> b!4733664 (= e!2952558 (not (contains!16302 (keys!19029 lt!1896330) key!4653)))))

(assert (= (and d!1509866 c!808405) b!4733656))

(assert (= (and d!1509866 (not c!808405)) b!4733662))

(assert (= (and b!4733662 c!808406) b!4733660))

(assert (= (and b!4733662 (not c!808406)) b!4733663))

(assert (= (or b!4733656 b!4733662) bm!331084))

(assert (= (and bm!331084 c!808404) b!4733661))

(assert (= (and bm!331084 (not c!808404)) b!4733657))

(assert (= (and d!1509866 res!2004426) b!4733664))

(assert (= (and d!1509866 (not res!2004425)) b!4733659))

(assert (= (and b!4733659 res!2004427) b!4733658))

(declare-fun m!5677451 () Bool)

(assert (=> b!4733661 m!5677451))

(declare-fun m!5677453 () Bool)

(assert (=> b!4733656 m!5677453))

(declare-fun m!5677455 () Bool)

(assert (=> b!4733656 m!5677455))

(assert (=> b!4733656 m!5677455))

(declare-fun m!5677457 () Bool)

(assert (=> b!4733656 m!5677457))

(declare-fun m!5677459 () Bool)

(assert (=> b!4733656 m!5677459))

(declare-fun m!5677461 () Bool)

(assert (=> d!1509866 m!5677461))

(declare-fun m!5677463 () Bool)

(assert (=> bm!331084 m!5677463))

(declare-fun m!5677465 () Bool)

(assert (=> b!4733657 m!5677465))

(assert (=> b!4733659 m!5677455))

(assert (=> b!4733659 m!5677455))

(assert (=> b!4733659 m!5677457))

(assert (=> b!4733664 m!5677465))

(assert (=> b!4733664 m!5677465))

(declare-fun m!5677467 () Bool)

(assert (=> b!4733664 m!5677467))

(assert (=> b!4733660 m!5677461))

(declare-fun m!5677469 () Bool)

(assert (=> b!4733660 m!5677469))

(assert (=> b!4733658 m!5677465))

(assert (=> b!4733658 m!5677465))

(assert (=> b!4733658 m!5677467))

(assert (=> b!4733242 d!1509866))

(declare-fun bs!1121609 () Bool)

(declare-fun d!1509868 () Bool)

(assert (= bs!1121609 (and d!1509868 start!482632)))

(declare-fun lambda!217861 () Int)

(assert (=> bs!1121609 (= lambda!217861 lambda!217712)))

(declare-fun bs!1121610 () Bool)

(assert (= bs!1121610 (and d!1509868 d!1509850)))

(assert (=> bs!1121610 (= lambda!217861 lambda!217854)))

(declare-fun bs!1121611 () Bool)

(assert (= bs!1121611 (and d!1509868 d!1509812)))

(assert (=> bs!1121611 (= lambda!217861 lambda!217826)))

(declare-fun bs!1121612 () Bool)

(assert (= bs!1121612 (and d!1509868 d!1509816)))

(assert (=> bs!1121612 (= lambda!217861 lambda!217829)))

(declare-fun bs!1121613 () Bool)

(assert (= bs!1121613 (and d!1509868 d!1509792)))

(assert (=> bs!1121613 (= lambda!217861 lambda!217825)))

(declare-fun bs!1121614 () Bool)

(assert (= bs!1121614 (and d!1509868 d!1509862)))

(assert (=> bs!1121614 (not (= lambda!217861 lambda!217857))))

(declare-fun bs!1121615 () Bool)

(assert (= bs!1121615 (and d!1509868 d!1509704)))

(assert (=> bs!1121615 (= lambda!217861 lambda!217749)))

(declare-fun bs!1121616 () Bool)

(assert (= bs!1121616 (and d!1509868 d!1509702)))

(assert (=> bs!1121616 (= lambda!217861 lambda!217718)))

(declare-fun bs!1121617 () Bool)

(assert (= bs!1121617 (and d!1509868 d!1509848)))

(assert (=> bs!1121617 (= lambda!217861 lambda!217853)))

(declare-fun lt!1896898 () ListMap!5341)

(assert (=> d!1509868 (invariantList!1535 (toList!5978 lt!1896898))))

(declare-fun e!2952561 () ListMap!5341)

(assert (=> d!1509868 (= lt!1896898 e!2952561)))

(declare-fun c!808407 () Bool)

(assert (=> d!1509868 (= c!808407 ((_ is Cons!52914) (toList!5977 lm!2023)))))

(assert (=> d!1509868 (forall!11651 (toList!5977 lm!2023) lambda!217861)))

(assert (=> d!1509868 (= (extractMap!2070 (toList!5977 lm!2023)) lt!1896898)))

(declare-fun b!4733665 () Bool)

(assert (=> b!4733665 (= e!2952561 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))))))

(declare-fun b!4733666 () Bool)

(assert (=> b!4733666 (= e!2952561 (ListMap!5342 Nil!52913))))

(assert (= (and d!1509868 c!808407) b!4733665))

(assert (= (and d!1509868 (not c!808407)) b!4733666))

(declare-fun m!5677471 () Bool)

(assert (=> d!1509868 m!5677471))

(declare-fun m!5677473 () Bool)

(assert (=> d!1509868 m!5677473))

(assert (=> b!4733665 m!5676553))

(assert (=> b!4733665 m!5676553))

(declare-fun m!5677475 () Bool)

(assert (=> b!4733665 m!5677475))

(assert (=> b!4733242 d!1509868))

(declare-fun d!1509870 () Bool)

(declare-fun lt!1896899 () List!53037)

(assert (=> d!1509870 (not (containsKey!3437 lt!1896899 key!4653))))

(declare-fun e!2952563 () List!53037)

(assert (=> d!1509870 (= lt!1896899 e!2952563)))

(declare-fun c!808408 () Bool)

(assert (=> d!1509870 (= c!808408 (and ((_ is Cons!52913) oldBucket!34) (= (_1!30579 (h!59284 oldBucket!34)) key!4653)))))

(assert (=> d!1509870 (noDuplicateKeys!2044 oldBucket!34)))

(assert (=> d!1509870 (= (removePairForKey!1639 oldBucket!34 key!4653) lt!1896899)))

(declare-fun b!4733667 () Bool)

(assert (=> b!4733667 (= e!2952563 (t!360317 oldBucket!34))))

(declare-fun b!4733668 () Bool)

(declare-fun e!2952562 () List!53037)

(assert (=> b!4733668 (= e!2952563 e!2952562)))

(declare-fun c!808409 () Bool)

(assert (=> b!4733668 (= c!808409 ((_ is Cons!52913) oldBucket!34))))

(declare-fun b!4733669 () Bool)

(assert (=> b!4733669 (= e!2952562 (Cons!52913 (h!59284 oldBucket!34) (removePairForKey!1639 (t!360317 oldBucket!34) key!4653)))))

(declare-fun b!4733670 () Bool)

(assert (=> b!4733670 (= e!2952562 Nil!52913)))

(assert (= (and d!1509870 c!808408) b!4733667))

(assert (= (and d!1509870 (not c!808408)) b!4733668))

(assert (= (and b!4733668 c!808409) b!4733669))

(assert (= (and b!4733668 (not c!808409)) b!4733670))

(declare-fun m!5677477 () Bool)

(assert (=> d!1509870 m!5677477))

(assert (=> d!1509870 m!5676539))

(assert (=> b!4733669 m!5676629))

(assert (=> b!4733252 d!1509870))

(declare-fun d!1509872 () Bool)

(assert (=> d!1509872 (= (inv!68134 lt!1896338) (isStrictlySorted!771 (toList!5977 lt!1896338)))))

(declare-fun bs!1121618 () Bool)

(assert (= bs!1121618 d!1509872))

(declare-fun m!5677479 () Bool)

(assert (=> bs!1121618 m!5677479))

(assert (=> b!4733241 d!1509872))

(declare-fun d!1509874 () Bool)

(declare-fun hash!4438 (Hashable!6413 K!14260) (_ BitVec 64))

(assert (=> d!1509874 (= (hash!4436 hashF!1323 key!4653) (hash!4438 hashF!1323 key!4653))))

(declare-fun bs!1121619 () Bool)

(assert (= bs!1121619 d!1509874))

(declare-fun m!5677481 () Bool)

(assert (=> bs!1121619 m!5677481))

(assert (=> b!4733240 d!1509874))

(declare-fun bs!1121620 () Bool)

(declare-fun d!1509876 () Bool)

(assert (= bs!1121620 (and d!1509876 b!4733537)))

(declare-fun lambda!217862 () Int)

(assert (=> bs!1121620 (not (= lambda!217862 lambda!217834))))

(declare-fun bs!1121621 () Bool)

(assert (= bs!1121621 (and d!1509876 b!4733594)))

(assert (=> bs!1121621 (not (= lambda!217862 lambda!217850))))

(declare-fun bs!1121622 () Bool)

(assert (= bs!1121622 (and d!1509876 d!1509826)))

(assert (=> bs!1121622 (not (= lambda!217862 lambda!217848))))

(declare-fun bs!1121623 () Bool)

(assert (= bs!1121623 (and d!1509876 d!1509834)))

(assert (=> bs!1121623 (not (= lambda!217862 lambda!217852))))

(declare-fun bs!1121624 () Bool)

(assert (= bs!1121624 (and d!1509876 b!4733539)))

(assert (=> bs!1121624 (not (= lambda!217862 lambda!217830))))

(declare-fun bs!1121625 () Bool)

(assert (= bs!1121625 (and d!1509876 b!4733550)))

(assert (=> bs!1121625 (not (= lambda!217862 lambda!217841))))

(declare-fun bs!1121626 () Bool)

(assert (= bs!1121626 (and d!1509876 b!4733500)))

(assert (=> bs!1121626 (not (= lambda!217862 lambda!217821))))

(declare-fun bs!1121627 () Bool)

(assert (= bs!1121627 (and d!1509876 d!1509864)))

(assert (=> bs!1121627 (= lambda!217862 lambda!217860)))

(assert (=> bs!1121625 (not (= lambda!217862 lambda!217843))))

(declare-fun bs!1121628 () Bool)

(assert (= bs!1121628 (and d!1509876 b!4733596)))

(assert (=> bs!1121628 (not (= lambda!217862 lambda!217849))))

(declare-fun bs!1121629 () Bool)

(assert (= bs!1121629 (and d!1509876 b!4733552)))

(assert (=> bs!1121629 (not (= lambda!217862 lambda!217840))))

(declare-fun bs!1121630 () Bool)

(assert (= bs!1121630 (and d!1509876 d!1509730)))

(assert (=> bs!1121630 (not (= lambda!217862 lambda!217822))))

(declare-fun bs!1121631 () Bool)

(assert (= bs!1121631 (and d!1509876 b!4733561)))

(assert (=> bs!1121631 (not (= lambda!217862 lambda!217846))))

(declare-fun bs!1121632 () Bool)

(assert (= bs!1121632 (and d!1509876 d!1509818)))

(assert (=> bs!1121632 (not (= lambda!217862 lambda!217839))))

(assert (=> bs!1121620 (not (= lambda!217862 lambda!217833))))

(declare-fun bs!1121633 () Bool)

(assert (= bs!1121633 (and d!1509876 b!4733502)))

(assert (=> bs!1121633 (not (= lambda!217862 lambda!217819))))

(assert (=> bs!1121626 (not (= lambda!217862 lambda!217820))))

(declare-fun bs!1121634 () Bool)

(assert (= bs!1121634 (and d!1509876 d!1509820)))

(assert (=> bs!1121634 (not (= lambda!217862 lambda!217844))))

(assert (=> bs!1121621 (not (= lambda!217862 lambda!217851))))

(assert (=> bs!1121631 (not (= lambda!217862 lambda!217847))))

(declare-fun bs!1121635 () Bool)

(assert (= bs!1121635 (and d!1509876 b!4733563)))

(assert (=> bs!1121635 (not (= lambda!217862 lambda!217845))))

(assert (=> d!1509876 true))

(assert (=> d!1509876 true))

(assert (=> d!1509876 (= (allKeysSameHash!1870 newBucket!218 hash!405 hashF!1323) (forall!11653 newBucket!218 lambda!217862))))

(declare-fun bs!1121636 () Bool)

(assert (= bs!1121636 d!1509876))

(declare-fun m!5677483 () Bool)

(assert (=> bs!1121636 m!5677483))

(assert (=> b!4733250 d!1509876))

(declare-fun e!2952566 () Bool)

(declare-fun b!4733675 () Bool)

(declare-fun tp!1348992 () Bool)

(assert (=> b!4733675 (= e!2952566 (and tp_is_empty!31469 tp_is_empty!31471 tp!1348992))))

(assert (=> b!4733239 (= tp!1348977 e!2952566)))

(assert (= (and b!4733239 ((_ is Cons!52913) (t!360317 oldBucket!34))) b!4733675))

(declare-fun e!2952567 () Bool)

(declare-fun b!4733676 () Bool)

(declare-fun tp!1348993 () Bool)

(assert (=> b!4733676 (= e!2952567 (and tp_is_empty!31469 tp_is_empty!31471 tp!1348993))))

(assert (=> b!4733249 (= tp!1348979 e!2952567)))

(assert (= (and b!4733249 ((_ is Cons!52913) (t!360317 newBucket!218))) b!4733676))

(declare-fun b!4733681 () Bool)

(declare-fun e!2952570 () Bool)

(declare-fun tp!1348998 () Bool)

(declare-fun tp!1348999 () Bool)

(assert (=> b!4733681 (= e!2952570 (and tp!1348998 tp!1348999))))

(assert (=> b!4733237 (= tp!1348978 e!2952570)))

(assert (= (and b!4733237 ((_ is Cons!52914) (toList!5977 lm!2023))) b!4733681))

(declare-fun b_lambda!180641 () Bool)

(assert (= b_lambda!180631 (or start!482632 b_lambda!180641)))

(declare-fun bs!1121637 () Bool)

(declare-fun d!1509878 () Bool)

(assert (= bs!1121637 (and d!1509878 start!482632)))

(assert (=> bs!1121637 (= (dynLambda!21856 lambda!217712 lt!1896328) (noDuplicateKeys!2044 (_2!30580 lt!1896328)))))

(declare-fun m!5677485 () Bool)

(assert (=> bs!1121637 m!5677485))

(assert (=> d!1509710 d!1509878))

(declare-fun b_lambda!180643 () Bool)

(assert (= b_lambda!180629 (or start!482632 b_lambda!180643)))

(declare-fun bs!1121638 () Bool)

(declare-fun d!1509880 () Bool)

(assert (= bs!1121638 (and d!1509880 start!482632)))

(assert (=> bs!1121638 (= (dynLambda!21856 lambda!217712 (h!59285 (toList!5977 lm!2023))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> bs!1121638 m!5677109))

(assert (=> b!4733272 d!1509880))

(check-sat (not d!1509818) (not b_lambda!180643) (not d!1509816) (not b!4733676) (not b!4733564) (not d!1509696) (not b!4733681) (not b!4733348) (not bm!331070) (not d!1509854) (not b!4733402) (not b!4733550) (not b!4733594) (not d!1509844) (not b!4733675) (not b!4733540) (not bm!331083) (not d!1509812) (not b!4733366) (not bm!331079) (not b!4733641) (not b!4733533) (not b!4733613) (not b!4733344) (not b!4733500) (not b_lambda!180641) (not b!4733664) (not b!4733660) (not b!4733639) (not d!1509856) (not d!1509710) (not b!4733661) (not d!1509702) (not b!4733658) (not b!4733537) (not b!4733279) (not b!4733538) (not d!1509832) (not d!1509850) (not b!4733266) (not b!4733648) (not d!1509862) (not d!1509866) (not b!4733530) (not bm!331078) (not bm!331066) (not b!4733614) (not d!1509724) (not bm!331071) (not d!1509722) (not d!1509678) (not d!1509876) (not b!4733638) (not bm!331074) (not d!1509820) (not bm!331072) (not b!4733558) (not b!4733595) (not b!4733659) (not d!1509870) (not d!1509864) (not d!1509824) (not d!1509808) (not b!4733346) (not b!4733324) (not b!4733617) (not d!1509842) (not d!1509874) (not d!1509826) (not d!1509712) (not bm!331076) (not bs!1121637) (not b!4733503) (not b!4733367) (not bm!331075) (not b!4733280) (not b!4733281) (not d!1509718) (not b!4733553) (not b!4733642) (not bm!331067) (not b!4733291) (not d!1509714) (not bm!331069) (not b!4733559) (not b!4733532) (not b!4733278) (not d!1509804) (not b!4733640) tp_is_empty!31471 (not b!4733665) (not d!1509666) (not b!4733501) (not d!1509806) (not d!1509730) (not b!4733391) (not b!4733403) (not b!4733637) (not d!1509868) (not b!4733273) (not bm!331080) (not d!1509704) (not bs!1121638) (not b!4733534) (not b!4733349) (not b!4733551) (not b!4733597) (not d!1509852) (not bm!331068) (not b!4733657) (not b!4733378) (not b!4733561) (not d!1509662) (not d!1509834) (not b!4733615) (not d!1509706) (not bm!331073) (not d!1509848) (not b!4733368) (not b!4733669) tp_is_empty!31469 (not b!4733562) (not b!4733381) (not b!4733326) (not d!1509792) (not bm!331084) (not d!1509872) (not d!1509674) (not d!1509810) (not b!4733365) (not bm!331077) (not b!4733645) (not b!4733343) (not b!4733656))
(check-sat)
(get-model)

(declare-fun d!1509882 () Bool)

(declare-fun lt!1896902 () Bool)

(assert (=> d!1509882 (= lt!1896902 (select (content!9440 (toList!5978 lt!1896498)) lt!1896347))))

(declare-fun e!2952576 () Bool)

(assert (=> d!1509882 (= lt!1896902 e!2952576)))

(declare-fun res!2004433 () Bool)

(assert (=> d!1509882 (=> (not res!2004433) (not e!2952576))))

(assert (=> d!1509882 (= res!2004433 ((_ is Cons!52913) (toList!5978 lt!1896498)))))

(assert (=> d!1509882 (= (contains!16300 (toList!5978 lt!1896498) lt!1896347) lt!1896902)))

(declare-fun b!4733686 () Bool)

(declare-fun e!2952575 () Bool)

(assert (=> b!4733686 (= e!2952576 e!2952575)))

(declare-fun res!2004432 () Bool)

(assert (=> b!4733686 (=> res!2004432 e!2952575)))

(assert (=> b!4733686 (= res!2004432 (= (h!59284 (toList!5978 lt!1896498)) lt!1896347))))

(declare-fun b!4733687 () Bool)

(assert (=> b!4733687 (= e!2952575 (contains!16300 (t!360317 (toList!5978 lt!1896498)) lt!1896347))))

(assert (= (and d!1509882 res!2004433) b!4733686))

(assert (= (and b!4733686 (not res!2004432)) b!4733687))

(declare-fun m!5677487 () Bool)

(assert (=> d!1509882 m!5677487))

(declare-fun m!5677489 () Bool)

(assert (=> d!1509882 m!5677489))

(declare-fun m!5677491 () Bool)

(assert (=> b!4733687 m!5677491))

(assert (=> b!4733403 d!1509882))

(declare-fun d!1509884 () Bool)

(declare-fun c!808412 () Bool)

(assert (=> d!1509884 (= c!808412 ((_ is Nil!52913) (toList!5978 lt!1896329)))))

(declare-fun e!2952579 () (InoxSet tuple2!54570))

(assert (=> d!1509884 (= (content!9440 (toList!5978 lt!1896329)) e!2952579)))

(declare-fun b!4733692 () Bool)

(assert (=> b!4733692 (= e!2952579 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4733693 () Bool)

(assert (=> b!4733693 (= e!2952579 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 lt!1896329)) true) (content!9440 (t!360317 (toList!5978 lt!1896329)))))))

(assert (= (and d!1509884 c!808412) b!4733692))

(assert (= (and d!1509884 (not c!808412)) b!4733693))

(declare-fun m!5677493 () Bool)

(assert (=> b!4733693 m!5677493))

(declare-fun m!5677495 () Bool)

(assert (=> b!4733693 m!5677495))

(assert (=> d!1509854 d!1509884))

(declare-fun d!1509886 () Bool)

(declare-fun c!808413 () Bool)

(assert (=> d!1509886 (= c!808413 ((_ is Nil!52913) (toList!5978 (+!2292 lt!1896340 (h!59284 oldBucket!34)))))))

(declare-fun e!2952580 () (InoxSet tuple2!54570))

(assert (=> d!1509886 (= (content!9440 (toList!5978 (+!2292 lt!1896340 (h!59284 oldBucket!34)))) e!2952580)))

(declare-fun b!4733694 () Bool)

(assert (=> b!4733694 (= e!2952580 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4733695 () Bool)

(assert (=> b!4733695 (= e!2952580 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 (+!2292 lt!1896340 (h!59284 oldBucket!34)))) true) (content!9440 (t!360317 (toList!5978 (+!2292 lt!1896340 (h!59284 oldBucket!34)))))))))

(assert (= (and d!1509886 c!808413) b!4733694))

(assert (= (and d!1509886 (not c!808413)) b!4733695))

(declare-fun m!5677497 () Bool)

(assert (=> b!4733695 m!5677497))

(declare-fun m!5677499 () Bool)

(assert (=> b!4733695 m!5677499))

(assert (=> d!1509854 d!1509886))

(assert (=> d!1509806 d!1509834))

(declare-fun d!1509888 () Bool)

(assert (=> d!1509888 (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))))

(assert (=> d!1509888 true))

(declare-fun _$30!192 () Unit!131735)

(assert (=> d!1509888 (= (choose!33519 lt!1896326 lt!1896336 lt!1896343) _$30!192)))

(declare-fun bs!1121639 () Bool)

(assert (= bs!1121639 d!1509888))

(assert (=> bs!1121639 m!5676603))

(assert (=> bs!1121639 m!5676599))

(assert (=> bs!1121639 m!5676599))

(assert (=> bs!1121639 m!5676613))

(assert (=> bs!1121639 m!5676603))

(assert (=> bs!1121639 m!5676613))

(assert (=> bs!1121639 m!5676615))

(assert (=> d!1509806 d!1509888))

(assert (=> d!1509806 d!1509810))

(assert (=> d!1509806 d!1509818))

(assert (=> d!1509806 d!1509824))

(declare-fun d!1509890 () Bool)

(declare-fun res!2004434 () Bool)

(declare-fun e!2952581 () Bool)

(assert (=> d!1509890 (=> res!2004434 e!2952581)))

(assert (=> d!1509890 (= res!2004434 (not ((_ is Cons!52913) lt!1896336)))))

(assert (=> d!1509890 (= (noDuplicateKeys!2044 lt!1896336) e!2952581)))

(declare-fun b!4733696 () Bool)

(declare-fun e!2952582 () Bool)

(assert (=> b!4733696 (= e!2952581 e!2952582)))

(declare-fun res!2004435 () Bool)

(assert (=> b!4733696 (=> (not res!2004435) (not e!2952582))))

(assert (=> b!4733696 (= res!2004435 (not (containsKey!3437 (t!360317 lt!1896336) (_1!30579 (h!59284 lt!1896336)))))))

(declare-fun b!4733697 () Bool)

(assert (=> b!4733697 (= e!2952582 (noDuplicateKeys!2044 (t!360317 lt!1896336)))))

(assert (= (and d!1509890 (not res!2004434)) b!4733696))

(assert (= (and b!4733696 res!2004435) b!4733697))

(declare-fun m!5677501 () Bool)

(assert (=> b!4733696 m!5677501))

(declare-fun m!5677503 () Bool)

(assert (=> b!4733697 m!5677503))

(assert (=> d!1509806 d!1509890))

(declare-fun d!1509892 () Bool)

(declare-fun res!2004440 () Bool)

(declare-fun e!2952587 () Bool)

(assert (=> d!1509892 (=> res!2004440 e!2952587)))

(assert (=> d!1509892 (= res!2004440 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1509892 (= (forall!11653 (toList!5978 lt!1896343) lambda!217848) e!2952587)))

(declare-fun b!4733702 () Bool)

(declare-fun e!2952588 () Bool)

(assert (=> b!4733702 (= e!2952587 e!2952588)))

(declare-fun res!2004441 () Bool)

(assert (=> b!4733702 (=> (not res!2004441) (not e!2952588))))

(declare-fun dynLambda!21858 (Int tuple2!54570) Bool)

(assert (=> b!4733702 (= res!2004441 (dynLambda!21858 lambda!217848 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4733703 () Bool)

(assert (=> b!4733703 (= e!2952588 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217848))))

(assert (= (and d!1509892 (not res!2004440)) b!4733702))

(assert (= (and b!4733702 res!2004441) b!4733703))

(declare-fun b_lambda!180645 () Bool)

(assert (=> (not b_lambda!180645) (not b!4733702)))

(declare-fun m!5677505 () Bool)

(assert (=> b!4733702 m!5677505))

(declare-fun m!5677507 () Bool)

(assert (=> b!4733703 m!5677507))

(assert (=> b!4733562 d!1509892))

(declare-fun d!1509894 () Bool)

(declare-fun res!2004446 () Bool)

(declare-fun e!2952593 () Bool)

(assert (=> d!1509894 (=> res!2004446 e!2952593)))

(assert (=> d!1509894 (= res!2004446 (and ((_ is Cons!52914) (toList!5977 lm!2023)) (= (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896341)))))

(assert (=> d!1509894 (= (containsKey!3438 (toList!5977 lm!2023) lt!1896341) e!2952593)))

(declare-fun b!4733708 () Bool)

(declare-fun e!2952594 () Bool)

(assert (=> b!4733708 (= e!2952593 e!2952594)))

(declare-fun res!2004447 () Bool)

(assert (=> b!4733708 (=> (not res!2004447) (not e!2952594))))

(assert (=> b!4733708 (= res!2004447 (and (or (not ((_ is Cons!52914) (toList!5977 lm!2023))) (bvsle (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896341)) ((_ is Cons!52914) (toList!5977 lm!2023)) (bvslt (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896341)))))

(declare-fun b!4733709 () Bool)

(assert (=> b!4733709 (= e!2952594 (containsKey!3438 (t!360318 (toList!5977 lm!2023)) lt!1896341))))

(assert (= (and d!1509894 (not res!2004446)) b!4733708))

(assert (= (and b!4733708 res!2004447) b!4733709))

(declare-fun m!5677509 () Bool)

(assert (=> b!4733709 m!5677509))

(assert (=> d!1509678 d!1509894))

(assert (=> b!4733365 d!1509862))

(declare-fun d!1509896 () Bool)

(declare-fun lt!1896905 () Bool)

(declare-fun content!9442 (List!53040) (InoxSet K!14260))

(assert (=> d!1509896 (= lt!1896905 (select (content!9442 (keys!19029 lt!1896330)) key!4653))))

(declare-fun e!2952599 () Bool)

(assert (=> d!1509896 (= lt!1896905 e!2952599)))

(declare-fun res!2004452 () Bool)

(assert (=> d!1509896 (=> (not res!2004452) (not e!2952599))))

(assert (=> d!1509896 (= res!2004452 ((_ is Cons!52916) (keys!19029 lt!1896330)))))

(assert (=> d!1509896 (= (contains!16302 (keys!19029 lt!1896330) key!4653) lt!1896905)))

(declare-fun b!4733714 () Bool)

(declare-fun e!2952600 () Bool)

(assert (=> b!4733714 (= e!2952599 e!2952600)))

(declare-fun res!2004453 () Bool)

(assert (=> b!4733714 (=> res!2004453 e!2952600)))

(assert (=> b!4733714 (= res!2004453 (= (h!59289 (keys!19029 lt!1896330)) key!4653))))

(declare-fun b!4733715 () Bool)

(assert (=> b!4733715 (= e!2952600 (contains!16302 (t!360322 (keys!19029 lt!1896330)) key!4653))))

(assert (= (and d!1509896 res!2004452) b!4733714))

(assert (= (and b!4733714 (not res!2004453)) b!4733715))

(assert (=> d!1509896 m!5677465))

(declare-fun m!5677511 () Bool)

(assert (=> d!1509896 m!5677511))

(declare-fun m!5677513 () Bool)

(assert (=> d!1509896 m!5677513))

(declare-fun m!5677515 () Bool)

(assert (=> b!4733715 m!5677515))

(assert (=> b!4733658 d!1509896))

(declare-fun b!4733723 () Bool)

(assert (=> b!4733723 true))

(declare-fun d!1509898 () Bool)

(declare-fun e!2952603 () Bool)

(assert (=> d!1509898 e!2952603))

(declare-fun res!2004461 () Bool)

(assert (=> d!1509898 (=> (not res!2004461) (not e!2952603))))

(declare-fun lt!1896908 () List!53040)

(declare-fun noDuplicate!870 (List!53040) Bool)

(assert (=> d!1509898 (= res!2004461 (noDuplicate!870 lt!1896908))))

(assert (=> d!1509898 (= lt!1896908 (getKeysList!974 (toList!5978 lt!1896330)))))

(assert (=> d!1509898 (= (keys!19029 lt!1896330) lt!1896908)))

(declare-fun b!4733722 () Bool)

(declare-fun res!2004462 () Bool)

(assert (=> b!4733722 (=> (not res!2004462) (not e!2952603))))

(declare-fun length!596 (List!53040) Int)

(declare-fun length!597 (List!53037) Int)

(assert (=> b!4733722 (= res!2004462 (= (length!596 lt!1896908) (length!597 (toList!5978 lt!1896330))))))

(declare-fun res!2004460 () Bool)

(assert (=> b!4733723 (=> (not res!2004460) (not e!2952603))))

(declare-fun lambda!217867 () Int)

(declare-fun forall!11654 (List!53040 Int) Bool)

(assert (=> b!4733723 (= res!2004460 (forall!11654 lt!1896908 lambda!217867))))

(declare-fun lambda!217868 () Int)

(declare-fun b!4733724 () Bool)

(declare-fun map!11705 (List!53037 Int) List!53040)

(assert (=> b!4733724 (= e!2952603 (= (content!9442 lt!1896908) (content!9442 (map!11705 (toList!5978 lt!1896330) lambda!217868))))))

(assert (= (and d!1509898 res!2004461) b!4733722))

(assert (= (and b!4733722 res!2004462) b!4733723))

(assert (= (and b!4733723 res!2004460) b!4733724))

(declare-fun m!5677517 () Bool)

(assert (=> d!1509898 m!5677517))

(assert (=> d!1509898 m!5677451))

(declare-fun m!5677519 () Bool)

(assert (=> b!4733722 m!5677519))

(declare-fun m!5677521 () Bool)

(assert (=> b!4733722 m!5677521))

(declare-fun m!5677523 () Bool)

(assert (=> b!4733723 m!5677523))

(declare-fun m!5677525 () Bool)

(assert (=> b!4733724 m!5677525))

(declare-fun m!5677527 () Bool)

(assert (=> b!4733724 m!5677527))

(assert (=> b!4733724 m!5677527))

(declare-fun m!5677529 () Bool)

(assert (=> b!4733724 m!5677529))

(assert (=> b!4733658 d!1509898))

(declare-fun d!1509900 () Bool)

(declare-fun res!2004467 () Bool)

(declare-fun e!2952608 () Bool)

(assert (=> d!1509900 (=> res!2004467 e!2952608)))

(assert (=> d!1509900 (= res!2004467 (and ((_ is Cons!52913) (toList!5978 (extractMap!2070 lt!1896327))) (= (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327)))) key!4653)))))

(assert (=> d!1509900 (= (containsKey!3440 (toList!5978 (extractMap!2070 lt!1896327)) key!4653) e!2952608)))

(declare-fun b!4733731 () Bool)

(declare-fun e!2952609 () Bool)

(assert (=> b!4733731 (= e!2952608 e!2952609)))

(declare-fun res!2004468 () Bool)

(assert (=> b!4733731 (=> (not res!2004468) (not e!2952609))))

(assert (=> b!4733731 (= res!2004468 ((_ is Cons!52913) (toList!5978 (extractMap!2070 lt!1896327))))))

(declare-fun b!4733732 () Bool)

(assert (=> b!4733732 (= e!2952609 (containsKey!3440 (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) key!4653))))

(assert (= (and d!1509900 (not res!2004467)) b!4733731))

(assert (= (and b!4733731 res!2004468) b!4733732))

(declare-fun m!5677531 () Bool)

(assert (=> b!4733732 m!5677531))

(assert (=> d!1509852 d!1509900))

(declare-fun d!1509902 () Bool)

(declare-fun res!2004469 () Bool)

(declare-fun e!2952610 () Bool)

(assert (=> d!1509902 (=> res!2004469 e!2952610)))

(assert (=> d!1509902 (= res!2004469 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1509902 (= (forall!11653 (toList!5978 lt!1896343) (ite c!808381 lambda!217830 lambda!217834)) e!2952610)))

(declare-fun b!4733733 () Bool)

(declare-fun e!2952611 () Bool)

(assert (=> b!4733733 (= e!2952610 e!2952611)))

(declare-fun res!2004470 () Bool)

(assert (=> b!4733733 (=> (not res!2004470) (not e!2952611))))

(assert (=> b!4733733 (= res!2004470 (dynLambda!21858 (ite c!808381 lambda!217830 lambda!217834) (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4733734 () Bool)

(assert (=> b!4733734 (= e!2952611 (forall!11653 (t!360317 (toList!5978 lt!1896343)) (ite c!808381 lambda!217830 lambda!217834)))))

(assert (= (and d!1509902 (not res!2004469)) b!4733733))

(assert (= (and b!4733733 res!2004470) b!4733734))

(declare-fun b_lambda!180647 () Bool)

(assert (=> (not b_lambda!180647) (not b!4733733)))

(declare-fun m!5677533 () Bool)

(assert (=> b!4733733 m!5677533))

(declare-fun m!5677535 () Bool)

(assert (=> b!4733734 m!5677535))

(assert (=> bm!331071 d!1509902))

(declare-fun d!1509904 () Bool)

(declare-fun res!2004471 () Bool)

(declare-fun e!2952612 () Bool)

(assert (=> d!1509904 (=> res!2004471 e!2952612)))

(assert (=> d!1509904 (= res!2004471 ((_ is Nil!52913) lt!1896335))))

(assert (=> d!1509904 (= (forall!11653 lt!1896335 lambda!217844) e!2952612)))

(declare-fun b!4733735 () Bool)

(declare-fun e!2952613 () Bool)

(assert (=> b!4733735 (= e!2952612 e!2952613)))

(declare-fun res!2004472 () Bool)

(assert (=> b!4733735 (=> (not res!2004472) (not e!2952613))))

(assert (=> b!4733735 (= res!2004472 (dynLambda!21858 lambda!217844 (h!59284 lt!1896335)))))

(declare-fun b!4733736 () Bool)

(assert (=> b!4733736 (= e!2952613 (forall!11653 (t!360317 lt!1896335) lambda!217844))))

(assert (= (and d!1509904 (not res!2004471)) b!4733735))

(assert (= (and b!4733735 res!2004472) b!4733736))

(declare-fun b_lambda!180649 () Bool)

(assert (=> (not b_lambda!180649) (not b!4733735)))

(declare-fun m!5677537 () Bool)

(assert (=> b!4733735 m!5677537))

(declare-fun m!5677539 () Bool)

(assert (=> b!4733736 m!5677539))

(assert (=> d!1509820 d!1509904))

(declare-fun d!1509906 () Bool)

(declare-fun res!2004473 () Bool)

(declare-fun e!2952614 () Bool)

(assert (=> d!1509906 (=> res!2004473 e!2952614)))

(assert (=> d!1509906 (= res!2004473 (not ((_ is Cons!52913) lt!1896335)))))

(assert (=> d!1509906 (= (noDuplicateKeys!2044 lt!1896335) e!2952614)))

(declare-fun b!4733737 () Bool)

(declare-fun e!2952615 () Bool)

(assert (=> b!4733737 (= e!2952614 e!2952615)))

(declare-fun res!2004474 () Bool)

(assert (=> b!4733737 (=> (not res!2004474) (not e!2952615))))

(assert (=> b!4733737 (= res!2004474 (not (containsKey!3437 (t!360317 lt!1896335) (_1!30579 (h!59284 lt!1896335)))))))

(declare-fun b!4733738 () Bool)

(assert (=> b!4733738 (= e!2952615 (noDuplicateKeys!2044 (t!360317 lt!1896335)))))

(assert (= (and d!1509906 (not res!2004473)) b!4733737))

(assert (= (and b!4733737 res!2004474) b!4733738))

(declare-fun m!5677541 () Bool)

(assert (=> b!4733737 m!5677541))

(declare-fun m!5677543 () Bool)

(assert (=> b!4733738 m!5677543))

(assert (=> d!1509820 d!1509906))

(declare-fun d!1509908 () Bool)

(declare-fun lt!1896909 () Bool)

(assert (=> d!1509908 (= lt!1896909 (select (content!9440 (toList!5978 lt!1896860)) lt!1896347))))

(declare-fun e!2952617 () Bool)

(assert (=> d!1509908 (= lt!1896909 e!2952617)))

(declare-fun res!2004476 () Bool)

(assert (=> d!1509908 (=> (not res!2004476) (not e!2952617))))

(assert (=> d!1509908 (= res!2004476 ((_ is Cons!52913) (toList!5978 lt!1896860)))))

(assert (=> d!1509908 (= (contains!16300 (toList!5978 lt!1896860) lt!1896347) lt!1896909)))

(declare-fun b!4733739 () Bool)

(declare-fun e!2952616 () Bool)

(assert (=> b!4733739 (= e!2952617 e!2952616)))

(declare-fun res!2004475 () Bool)

(assert (=> b!4733739 (=> res!2004475 e!2952616)))

(assert (=> b!4733739 (= res!2004475 (= (h!59284 (toList!5978 lt!1896860)) lt!1896347))))

(declare-fun b!4733740 () Bool)

(assert (=> b!4733740 (= e!2952616 (contains!16300 (t!360317 (toList!5978 lt!1896860)) lt!1896347))))

(assert (= (and d!1509908 res!2004476) b!4733739))

(assert (= (and b!4733739 (not res!2004475)) b!4733740))

(declare-fun m!5677545 () Bool)

(assert (=> d!1509908 m!5677545))

(declare-fun m!5677547 () Bool)

(assert (=> d!1509908 m!5677547))

(declare-fun m!5677549 () Bool)

(assert (=> b!4733740 m!5677549))

(assert (=> b!4733614 d!1509908))

(declare-fun d!1509910 () Bool)

(assert (=> d!1509910 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(declare-fun lt!1896912 () Unit!131735)

(declare-fun choose!33527 (List!53037 K!14260) Unit!131735)

(assert (=> d!1509910 (= lt!1896912 (choose!33527 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(assert (=> d!1509910 (invariantList!1535 (toList!5978 (extractMap!2070 lt!1896327)))))

(assert (=> d!1509910 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 (extractMap!2070 lt!1896327)) key!4653) lt!1896912)))

(declare-fun bs!1121640 () Bool)

(assert (= bs!1121640 d!1509910))

(assert (=> bs!1121640 m!5677425))

(assert (=> bs!1121640 m!5677425))

(assert (=> bs!1121640 m!5677427))

(declare-fun m!5677551 () Bool)

(assert (=> bs!1121640 m!5677551))

(declare-fun m!5677553 () Bool)

(assert (=> bs!1121640 m!5677553))

(assert (=> b!4733637 d!1509910))

(declare-fun d!1509912 () Bool)

(declare-fun isEmpty!29212 (Option!12426) Bool)

(assert (=> d!1509912 (= (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 lt!1896327)) key!4653)) (not (isEmpty!29212 (getValueByKey!2000 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))))

(declare-fun bs!1121641 () Bool)

(assert (= bs!1121641 d!1509912))

(assert (=> bs!1121641 m!5677425))

(declare-fun m!5677555 () Bool)

(assert (=> bs!1121641 m!5677555))

(assert (=> b!4733637 d!1509912))

(declare-fun b!4733751 () Bool)

(declare-fun e!2952623 () Option!12426)

(assert (=> b!4733751 (= e!2952623 (getValueByKey!2000 (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) key!4653))))

(declare-fun d!1509914 () Bool)

(declare-fun c!808418 () Bool)

(assert (=> d!1509914 (= c!808418 (and ((_ is Cons!52913) (toList!5978 (extractMap!2070 lt!1896327))) (= (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327)))) key!4653)))))

(declare-fun e!2952622 () Option!12426)

(assert (=> d!1509914 (= (getValueByKey!2000 (toList!5978 (extractMap!2070 lt!1896327)) key!4653) e!2952622)))

(declare-fun b!4733749 () Bool)

(assert (=> b!4733749 (= e!2952622 (Some!12425 (_2!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))))))))

(declare-fun b!4733752 () Bool)

(assert (=> b!4733752 (= e!2952623 None!12425)))

(declare-fun b!4733750 () Bool)

(assert (=> b!4733750 (= e!2952622 e!2952623)))

(declare-fun c!808419 () Bool)

(assert (=> b!4733750 (= c!808419 (and ((_ is Cons!52913) (toList!5978 (extractMap!2070 lt!1896327))) (not (= (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327)))) key!4653))))))

(assert (= (and d!1509914 c!808418) b!4733749))

(assert (= (and d!1509914 (not c!808418)) b!4733750))

(assert (= (and b!4733750 c!808419) b!4733751))

(assert (= (and b!4733750 (not c!808419)) b!4733752))

(declare-fun m!5677557 () Bool)

(assert (=> b!4733751 m!5677557))

(assert (=> b!4733637 d!1509914))

(declare-fun d!1509916 () Bool)

(assert (=> d!1509916 (contains!16302 (getKeysList!974 (toList!5978 (extractMap!2070 lt!1896327))) key!4653)))

(declare-fun lt!1896915 () Unit!131735)

(declare-fun choose!33528 (List!53037 K!14260) Unit!131735)

(assert (=> d!1509916 (= lt!1896915 (choose!33528 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(assert (=> d!1509916 (invariantList!1535 (toList!5978 (extractMap!2070 lt!1896327)))))

(assert (=> d!1509916 (= (lemmaInListThenGetKeysListContains!969 (toList!5978 (extractMap!2070 lt!1896327)) key!4653) lt!1896915)))

(declare-fun bs!1121642 () Bool)

(assert (= bs!1121642 d!1509916))

(assert (=> bs!1121642 m!5677421))

(assert (=> bs!1121642 m!5677421))

(declare-fun m!5677559 () Bool)

(assert (=> bs!1121642 m!5677559))

(declare-fun m!5677561 () Bool)

(assert (=> bs!1121642 m!5677561))

(assert (=> bs!1121642 m!5677553))

(assert (=> b!4733637 d!1509916))

(declare-fun b!4733753 () Bool)

(declare-fun e!2952628 () Unit!131735)

(declare-fun lt!1896921 () Unit!131735)

(assert (=> b!4733753 (= e!2952628 lt!1896921)))

(declare-fun lt!1896917 () Unit!131735)

(assert (=> b!4733753 (= lt!1896917 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896498) (_1!30579 lt!1896347)))))

(assert (=> b!4733753 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896498) (_1!30579 lt!1896347)))))

(declare-fun lt!1896920 () Unit!131735)

(assert (=> b!4733753 (= lt!1896920 lt!1896917)))

(assert (=> b!4733753 (= lt!1896921 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896498) (_1!30579 lt!1896347)))))

(declare-fun call!331090 () Bool)

(assert (=> b!4733753 call!331090))

(declare-fun b!4733754 () Bool)

(declare-fun e!2952625 () List!53040)

(assert (=> b!4733754 (= e!2952625 (keys!19029 lt!1896498))))

(declare-fun b!4733755 () Bool)

(declare-fun e!2952626 () Bool)

(assert (=> b!4733755 (= e!2952626 (contains!16302 (keys!19029 lt!1896498) (_1!30579 lt!1896347)))))

(declare-fun b!4733756 () Bool)

(declare-fun e!2952624 () Bool)

(assert (=> b!4733756 (= e!2952624 e!2952626)))

(declare-fun res!2004479 () Bool)

(assert (=> b!4733756 (=> (not res!2004479) (not e!2952626))))

(assert (=> b!4733756 (= res!2004479 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896498) (_1!30579 lt!1896347))))))

(declare-fun b!4733757 () Bool)

(assert (=> b!4733757 false))

(declare-fun lt!1896916 () Unit!131735)

(declare-fun lt!1896922 () Unit!131735)

(assert (=> b!4733757 (= lt!1896916 lt!1896922)))

(assert (=> b!4733757 (containsKey!3440 (toList!5978 lt!1896498) (_1!30579 lt!1896347))))

(assert (=> b!4733757 (= lt!1896922 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896498) (_1!30579 lt!1896347)))))

(declare-fun e!2952629 () Unit!131735)

(declare-fun Unit!131857 () Unit!131735)

(assert (=> b!4733757 (= e!2952629 Unit!131857)))

(declare-fun bm!331085 () Bool)

(assert (=> bm!331085 (= call!331090 (contains!16302 e!2952625 (_1!30579 lt!1896347)))))

(declare-fun c!808420 () Bool)

(declare-fun c!808421 () Bool)

(assert (=> bm!331085 (= c!808420 c!808421)))

(declare-fun d!1509918 () Bool)

(assert (=> d!1509918 e!2952624))

(declare-fun res!2004477 () Bool)

(assert (=> d!1509918 (=> res!2004477 e!2952624)))

(declare-fun e!2952627 () Bool)

(assert (=> d!1509918 (= res!2004477 e!2952627)))

(declare-fun res!2004478 () Bool)

(assert (=> d!1509918 (=> (not res!2004478) (not e!2952627))))

(declare-fun lt!1896919 () Bool)

(assert (=> d!1509918 (= res!2004478 (not lt!1896919))))

(declare-fun lt!1896918 () Bool)

(assert (=> d!1509918 (= lt!1896919 lt!1896918)))

(declare-fun lt!1896923 () Unit!131735)

(assert (=> d!1509918 (= lt!1896923 e!2952628)))

(assert (=> d!1509918 (= c!808421 lt!1896918)))

(assert (=> d!1509918 (= lt!1896918 (containsKey!3440 (toList!5978 lt!1896498) (_1!30579 lt!1896347)))))

(assert (=> d!1509918 (= (contains!16298 lt!1896498 (_1!30579 lt!1896347)) lt!1896919)))

(declare-fun b!4733758 () Bool)

(assert (=> b!4733758 (= e!2952625 (getKeysList!974 (toList!5978 lt!1896498)))))

(declare-fun b!4733759 () Bool)

(assert (=> b!4733759 (= e!2952628 e!2952629)))

(declare-fun c!808422 () Bool)

(assert (=> b!4733759 (= c!808422 call!331090)))

(declare-fun b!4733760 () Bool)

(declare-fun Unit!131858 () Unit!131735)

(assert (=> b!4733760 (= e!2952629 Unit!131858)))

(declare-fun b!4733761 () Bool)

(assert (=> b!4733761 (= e!2952627 (not (contains!16302 (keys!19029 lt!1896498) (_1!30579 lt!1896347))))))

(assert (= (and d!1509918 c!808421) b!4733753))

(assert (= (and d!1509918 (not c!808421)) b!4733759))

(assert (= (and b!4733759 c!808422) b!4733757))

(assert (= (and b!4733759 (not c!808422)) b!4733760))

(assert (= (or b!4733753 b!4733759) bm!331085))

(assert (= (and bm!331085 c!808420) b!4733758))

(assert (= (and bm!331085 (not c!808420)) b!4733754))

(assert (= (and d!1509918 res!2004478) b!4733761))

(assert (= (and d!1509918 (not res!2004477)) b!4733756))

(assert (= (and b!4733756 res!2004479) b!4733755))

(declare-fun m!5677563 () Bool)

(assert (=> b!4733758 m!5677563))

(declare-fun m!5677565 () Bool)

(assert (=> b!4733753 m!5677565))

(assert (=> b!4733753 m!5676811))

(assert (=> b!4733753 m!5676811))

(declare-fun m!5677567 () Bool)

(assert (=> b!4733753 m!5677567))

(declare-fun m!5677569 () Bool)

(assert (=> b!4733753 m!5677569))

(declare-fun m!5677571 () Bool)

(assert (=> d!1509918 m!5677571))

(declare-fun m!5677573 () Bool)

(assert (=> bm!331085 m!5677573))

(declare-fun m!5677575 () Bool)

(assert (=> b!4733754 m!5677575))

(assert (=> b!4733756 m!5676811))

(assert (=> b!4733756 m!5676811))

(assert (=> b!4733756 m!5677567))

(assert (=> b!4733761 m!5677575))

(assert (=> b!4733761 m!5677575))

(declare-fun m!5677577 () Bool)

(assert (=> b!4733761 m!5677577))

(assert (=> b!4733757 m!5677571))

(declare-fun m!5677579 () Bool)

(assert (=> b!4733757 m!5677579))

(assert (=> b!4733755 m!5677575))

(assert (=> b!4733755 m!5677575))

(assert (=> b!4733755 m!5677577))

(assert (=> d!1509724 d!1509918))

(declare-fun b!4733764 () Bool)

(declare-fun e!2952631 () Option!12426)

(assert (=> b!4733764 (= e!2952631 (getValueByKey!2000 (t!360317 lt!1896496) (_1!30579 lt!1896347)))))

(declare-fun d!1509920 () Bool)

(declare-fun c!808423 () Bool)

(assert (=> d!1509920 (= c!808423 (and ((_ is Cons!52913) lt!1896496) (= (_1!30579 (h!59284 lt!1896496)) (_1!30579 lt!1896347))))))

(declare-fun e!2952630 () Option!12426)

(assert (=> d!1509920 (= (getValueByKey!2000 lt!1896496 (_1!30579 lt!1896347)) e!2952630)))

(declare-fun b!4733762 () Bool)

(assert (=> b!4733762 (= e!2952630 (Some!12425 (_2!30579 (h!59284 lt!1896496))))))

(declare-fun b!4733765 () Bool)

(assert (=> b!4733765 (= e!2952631 None!12425)))

(declare-fun b!4733763 () Bool)

(assert (=> b!4733763 (= e!2952630 e!2952631)))

(declare-fun c!808424 () Bool)

(assert (=> b!4733763 (= c!808424 (and ((_ is Cons!52913) lt!1896496) (not (= (_1!30579 (h!59284 lt!1896496)) (_1!30579 lt!1896347)))))))

(assert (= (and d!1509920 c!808423) b!4733762))

(assert (= (and d!1509920 (not c!808423)) b!4733763))

(assert (= (and b!4733763 c!808424) b!4733764))

(assert (= (and b!4733763 (not c!808424)) b!4733765))

(declare-fun m!5677581 () Bool)

(assert (=> b!4733764 m!5677581))

(assert (=> d!1509724 d!1509920))

(declare-fun d!1509922 () Bool)

(assert (=> d!1509922 (= (getValueByKey!2000 lt!1896496 (_1!30579 lt!1896347)) (Some!12425 (_2!30579 lt!1896347)))))

(declare-fun lt!1896926 () Unit!131735)

(declare-fun choose!33529 (List!53037 K!14260 V!14506) Unit!131735)

(assert (=> d!1509922 (= lt!1896926 (choose!33529 lt!1896496 (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun e!2952634 () Bool)

(assert (=> d!1509922 e!2952634))

(declare-fun res!2004484 () Bool)

(assert (=> d!1509922 (=> (not res!2004484) (not e!2952634))))

(assert (=> d!1509922 (= res!2004484 (invariantList!1535 lt!1896496))))

(assert (=> d!1509922 (= (lemmaContainsTupThenGetReturnValue!1102 lt!1896496 (_1!30579 lt!1896347) (_2!30579 lt!1896347)) lt!1896926)))

(declare-fun b!4733770 () Bool)

(declare-fun res!2004485 () Bool)

(assert (=> b!4733770 (=> (not res!2004485) (not e!2952634))))

(assert (=> b!4733770 (= res!2004485 (containsKey!3440 lt!1896496 (_1!30579 lt!1896347)))))

(declare-fun b!4733771 () Bool)

(assert (=> b!4733771 (= e!2952634 (contains!16300 lt!1896496 (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347))))))

(assert (= (and d!1509922 res!2004484) b!4733770))

(assert (= (and b!4733770 res!2004485) b!4733771))

(assert (=> d!1509922 m!5676805))

(declare-fun m!5677583 () Bool)

(assert (=> d!1509922 m!5677583))

(declare-fun m!5677585 () Bool)

(assert (=> d!1509922 m!5677585))

(declare-fun m!5677587 () Bool)

(assert (=> b!4733770 m!5677587))

(declare-fun m!5677589 () Bool)

(assert (=> b!4733771 m!5677589))

(assert (=> d!1509724 d!1509922))

(declare-fun b!4733800 () Bool)

(declare-fun c!808438 () Bool)

(assert (=> b!4733800 (= c!808438 ((_ is Cons!52913) (toList!5978 lt!1896340)))))

(declare-fun e!2952654 () List!53037)

(declare-fun e!2952651 () List!53037)

(assert (=> b!4733800 (= e!2952654 e!2952651)))

(declare-fun b!4733801 () Bool)

(assert (=> b!4733801 false))

(declare-fun lt!1896955 () Unit!131735)

(declare-fun lt!1896957 () Unit!131735)

(assert (=> b!4733801 (= lt!1896955 lt!1896957)))

(assert (=> b!4733801 (containsKey!3440 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 (toList!5978 lt!1896340))))))

(assert (=> b!4733801 (= lt!1896957 (lemmaInGetKeysListThenContainsKey!973 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 (toList!5978 lt!1896340)))))))

(declare-fun lt!1896953 () Unit!131735)

(declare-fun lt!1896952 () Unit!131735)

(assert (=> b!4733801 (= lt!1896953 lt!1896952)))

(declare-fun call!331102 () List!53040)

(assert (=> b!4733801 (contains!16302 call!331102 (_1!30579 (h!59284 (toList!5978 lt!1896340))))))

(declare-fun lt!1896951 () List!53037)

(assert (=> b!4733801 (= lt!1896952 (lemmaInListThenGetKeysListContains!969 lt!1896951 (_1!30579 (h!59284 (toList!5978 lt!1896340)))))))

(assert (=> b!4733801 (= lt!1896951 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 lt!1896340)) (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun e!2952650 () Unit!131735)

(declare-fun Unit!131859 () Unit!131735)

(assert (=> b!4733801 (= e!2952650 Unit!131859)))

(declare-fun b!4733802 () Bool)

(declare-fun res!2004494 () Bool)

(declare-fun e!2952649 () Bool)

(assert (=> b!4733802 (=> (not res!2004494) (not e!2952649))))

(declare-fun lt!1896959 () List!53037)

(assert (=> b!4733802 (= res!2004494 (contains!16300 lt!1896959 (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347))))))

(declare-fun b!4733803 () Bool)

(declare-fun call!331101 () List!53037)

(assert (=> b!4733803 (= e!2952654 call!331101)))

(declare-fun b!4733804 () Bool)

(declare-fun res!2004495 () Bool)

(assert (=> b!4733804 (=> (not res!2004495) (not e!2952649))))

(assert (=> b!4733804 (= res!2004495 (containsKey!3440 lt!1896959 (_1!30579 lt!1896347)))))

(declare-fun b!4733805 () Bool)

(declare-fun Unit!131860 () Unit!131735)

(assert (=> b!4733805 (= e!2952650 Unit!131860)))

(declare-fun e!2952652 () List!53037)

(declare-fun c!808439 () Bool)

(declare-fun bm!331094 () Bool)

(declare-fun call!331100 () List!53037)

(declare-fun c!808437 () Bool)

(declare-fun $colon$colon!1085 (List!53037 tuple2!54570) List!53037)

(assert (=> bm!331094 (= call!331100 ($colon$colon!1085 (ite c!808439 (t!360317 (toList!5978 lt!1896340)) (ite c!808437 (toList!5978 lt!1896340) e!2952652)) (ite (or c!808439 c!808437) (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347)) (ite c!808438 (h!59284 (toList!5978 lt!1896340)) (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347))))))))

(declare-fun bm!331095 () Bool)

(declare-fun call!331099 () List!53037)

(assert (=> bm!331095 (= call!331099 call!331101)))

(declare-fun c!808436 () Bool)

(assert (=> bm!331095 (= c!808436 c!808438)))

(declare-fun b!4733806 () Bool)

(declare-fun e!2952655 () Bool)

(assert (=> b!4733806 (= e!2952655 (not (containsKey!3440 (toList!5978 lt!1896340) (_1!30579 lt!1896347))))))

(declare-fun b!4733807 () Bool)

(assert (=> b!4733807 (= e!2952652 Nil!52913)))

(declare-fun b!4733808 () Bool)

(assert (=> b!4733808 (= e!2952652 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 lt!1896340)) (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun b!4733809 () Bool)

(assert (=> b!4733809 (= e!2952651 call!331099)))

(declare-fun b!4733810 () Bool)

(declare-fun e!2952653 () List!53037)

(assert (=> b!4733810 (= e!2952653 call!331100)))

(declare-fun lt!1896950 () List!53040)

(assert (=> b!4733810 (= lt!1896950 call!331102)))

(declare-fun lt!1896954 () Unit!131735)

(declare-fun lemmaSubseqRefl!148 (List!53040) Unit!131735)

(assert (=> b!4733810 (= lt!1896954 (lemmaSubseqRefl!148 lt!1896950))))

(declare-fun subseq!664 (List!53040 List!53040) Bool)

(assert (=> b!4733810 (subseq!664 lt!1896950 lt!1896950)))

(declare-fun lt!1896949 () Unit!131735)

(assert (=> b!4733810 (= lt!1896949 lt!1896954)))

(declare-fun b!4733811 () Bool)

(declare-fun lt!1896958 () List!53037)

(assert (=> b!4733811 (= e!2952651 lt!1896958)))

(assert (=> b!4733811 (= lt!1896958 call!331099)))

(declare-fun c!808435 () Bool)

(assert (=> b!4733811 (= c!808435 (containsKey!3440 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 lt!1896340)) (_1!30579 lt!1896347) (_2!30579 lt!1896347)) (_1!30579 (h!59284 (toList!5978 lt!1896340)))))))

(declare-fun lt!1896956 () Unit!131735)

(assert (=> b!4733811 (= lt!1896956 e!2952650)))

(declare-fun bm!331096 () Bool)

(assert (=> bm!331096 (= call!331102 (getKeysList!974 (ite c!808439 (toList!5978 lt!1896340) lt!1896951)))))

(declare-fun b!4733812 () Bool)

(assert (=> b!4733812 (= e!2952649 (= (content!9442 (getKeysList!974 lt!1896959)) ((_ map or) (content!9442 (getKeysList!974 (toList!5978 lt!1896340))) (store ((as const (Array K!14260 Bool)) false) (_1!30579 lt!1896347) true))))))

(declare-fun d!1509924 () Bool)

(assert (=> d!1509924 e!2952649))

(declare-fun res!2004497 () Bool)

(assert (=> d!1509924 (=> (not res!2004497) (not e!2952649))))

(assert (=> d!1509924 (= res!2004497 (invariantList!1535 lt!1896959))))

(assert (=> d!1509924 (= lt!1896959 e!2952653)))

(assert (=> d!1509924 (= c!808439 (and ((_ is Cons!52913) (toList!5978 lt!1896340)) (= (_1!30579 (h!59284 (toList!5978 lt!1896340))) (_1!30579 lt!1896347))))))

(assert (=> d!1509924 (invariantList!1535 (toList!5978 lt!1896340))))

(assert (=> d!1509924 (= (insertNoDuplicatedKeys!610 (toList!5978 lt!1896340) (_1!30579 lt!1896347) (_2!30579 lt!1896347)) lt!1896959)))

(declare-fun b!4733813 () Bool)

(assert (=> b!4733813 (= e!2952653 e!2952654)))

(declare-fun res!2004496 () Bool)

(assert (=> b!4733813 (= res!2004496 ((_ is Cons!52913) (toList!5978 lt!1896340)))))

(assert (=> b!4733813 (=> (not res!2004496) (not e!2952655))))

(assert (=> b!4733813 (= c!808437 e!2952655)))

(declare-fun bm!331097 () Bool)

(assert (=> bm!331097 (= call!331101 call!331100)))

(assert (= (and d!1509924 c!808439) b!4733810))

(assert (= (and d!1509924 (not c!808439)) b!4733813))

(assert (= (and b!4733813 res!2004496) b!4733806))

(assert (= (and b!4733813 c!808437) b!4733803))

(assert (= (and b!4733813 (not c!808437)) b!4733800))

(assert (= (and b!4733800 c!808438) b!4733811))

(assert (= (and b!4733800 (not c!808438)) b!4733809))

(assert (= (and b!4733811 c!808435) b!4733801))

(assert (= (and b!4733811 (not c!808435)) b!4733805))

(assert (= (or b!4733811 b!4733809) bm!331095))

(assert (= (and bm!331095 c!808436) b!4733808))

(assert (= (and bm!331095 (not c!808436)) b!4733807))

(assert (= (or b!4733803 bm!331095) bm!331097))

(assert (= (or b!4733810 b!4733801) bm!331096))

(assert (= (or b!4733810 bm!331097) bm!331094))

(assert (= (and d!1509924 res!2004497) b!4733804))

(assert (= (and b!4733804 res!2004495) b!4733802))

(assert (= (and b!4733802 res!2004494) b!4733812))

(declare-fun m!5677591 () Bool)

(assert (=> b!4733810 m!5677591))

(declare-fun m!5677593 () Bool)

(assert (=> b!4733810 m!5677593))

(declare-fun m!5677595 () Bool)

(assert (=> bm!331096 m!5677595))

(declare-fun m!5677597 () Bool)

(assert (=> bm!331094 m!5677597))

(declare-fun m!5677599 () Bool)

(assert (=> b!4733802 m!5677599))

(declare-fun m!5677601 () Bool)

(assert (=> b!4733812 m!5677601))

(declare-fun m!5677603 () Bool)

(assert (=> b!4733812 m!5677603))

(declare-fun m!5677605 () Bool)

(assert (=> b!4733812 m!5677605))

(declare-fun m!5677607 () Bool)

(assert (=> b!4733812 m!5677607))

(assert (=> b!4733812 m!5677603))

(assert (=> b!4733812 m!5677607))

(declare-fun m!5677609 () Bool)

(assert (=> b!4733812 m!5677609))

(declare-fun m!5677611 () Bool)

(assert (=> b!4733811 m!5677611))

(assert (=> b!4733811 m!5677611))

(declare-fun m!5677613 () Bool)

(assert (=> b!4733811 m!5677613))

(declare-fun m!5677615 () Bool)

(assert (=> d!1509924 m!5677615))

(declare-fun m!5677617 () Bool)

(assert (=> d!1509924 m!5677617))

(declare-fun m!5677619 () Bool)

(assert (=> b!4733804 m!5677619))

(declare-fun m!5677621 () Bool)

(assert (=> b!4733806 m!5677621))

(assert (=> b!4733801 m!5677611))

(declare-fun m!5677623 () Bool)

(assert (=> b!4733801 m!5677623))

(declare-fun m!5677625 () Bool)

(assert (=> b!4733801 m!5677625))

(declare-fun m!5677627 () Bool)

(assert (=> b!4733801 m!5677627))

(declare-fun m!5677629 () Bool)

(assert (=> b!4733801 m!5677629))

(assert (=> b!4733808 m!5677611))

(assert (=> d!1509724 d!1509924))

(declare-fun bs!1121643 () Bool)

(declare-fun d!1509926 () Bool)

(assert (= bs!1121643 (and d!1509926 d!1509876)))

(declare-fun lambda!217871 () Int)

(assert (=> bs!1121643 (not (= lambda!217871 lambda!217862))))

(declare-fun bs!1121644 () Bool)

(assert (= bs!1121644 (and d!1509926 b!4733537)))

(assert (=> bs!1121644 (= (= lt!1896343 lt!1896756) (= lambda!217871 lambda!217834))))

(declare-fun bs!1121645 () Bool)

(assert (= bs!1121645 (and d!1509926 b!4733594)))

(assert (=> bs!1121645 (= lambda!217871 lambda!217850)))

(declare-fun bs!1121646 () Bool)

(assert (= bs!1121646 (and d!1509926 d!1509826)))

(assert (=> bs!1121646 (= (= lt!1896343 lt!1896822) (= lambda!217871 lambda!217848))))

(declare-fun bs!1121647 () Bool)

(assert (= bs!1121647 (and d!1509926 d!1509834)))

(assert (=> bs!1121647 (= (= lt!1896343 lt!1896851) (= lambda!217871 lambda!217852))))

(declare-fun bs!1121648 () Bool)

(assert (= bs!1121648 (and d!1509926 b!4733539)))

(assert (=> bs!1121648 (= lambda!217871 lambda!217830)))

(declare-fun bs!1121649 () Bool)

(assert (= bs!1121649 (and d!1509926 b!4733550)))

(assert (=> bs!1121649 (= lambda!217871 lambda!217841)))

(declare-fun bs!1121650 () Bool)

(assert (= bs!1121650 (and d!1509926 b!4733500)))

(assert (=> bs!1121650 (= (= lt!1896343 lt!1896706) (= lambda!217871 lambda!217821))))

(declare-fun bs!1121651 () Bool)

(assert (= bs!1121651 (and d!1509926 d!1509864)))

(assert (=> bs!1121651 (not (= lambda!217871 lambda!217860))))

(assert (=> bs!1121649 (= (= lt!1896343 lt!1896793) (= lambda!217871 lambda!217843))))

(declare-fun bs!1121652 () Bool)

(assert (= bs!1121652 (and d!1509926 b!4733596)))

(assert (=> bs!1121652 (= lambda!217871 lambda!217849)))

(declare-fun bs!1121653 () Bool)

(assert (= bs!1121653 (and d!1509926 b!4733552)))

(assert (=> bs!1121653 (= lambda!217871 lambda!217840)))

(declare-fun bs!1121654 () Bool)

(assert (= bs!1121654 (and d!1509926 d!1509730)))

(assert (=> bs!1121654 (= (= lt!1896343 lt!1896702) (= lambda!217871 lambda!217822))))

(declare-fun bs!1121655 () Bool)

(assert (= bs!1121655 (and d!1509926 b!4733561)))

(assert (=> bs!1121655 (= lambda!217871 lambda!217846)))

(declare-fun bs!1121656 () Bool)

(assert (= bs!1121656 (and d!1509926 d!1509818)))

(assert (=> bs!1121656 (= (= lt!1896343 lt!1896752) (= lambda!217871 lambda!217839))))

(assert (=> bs!1121644 (= lambda!217871 lambda!217833)))

(declare-fun bs!1121657 () Bool)

(assert (= bs!1121657 (and d!1509926 b!4733502)))

(assert (=> bs!1121657 (= lambda!217871 lambda!217819)))

(assert (=> bs!1121650 (= lambda!217871 lambda!217820)))

(declare-fun bs!1121658 () Bool)

(assert (= bs!1121658 (and d!1509926 d!1509820)))

(assert (=> bs!1121658 (= (= lt!1896343 lt!1896789) (= lambda!217871 lambda!217844))))

(assert (=> bs!1121645 (= (= lt!1896343 lt!1896855) (= lambda!217871 lambda!217851))))

(assert (=> bs!1121655 (= (= lt!1896343 lt!1896826) (= lambda!217871 lambda!217847))))

(declare-fun bs!1121659 () Bool)

(assert (= bs!1121659 (and d!1509926 b!4733563)))

(assert (=> bs!1121659 (= lambda!217871 lambda!217845)))

(assert (=> d!1509926 true))

(assert (=> d!1509926 (forall!11653 (toList!5978 lt!1896343) lambda!217871)))

(declare-fun lt!1896962 () Unit!131735)

(declare-fun choose!33530 (ListMap!5341) Unit!131735)

(assert (=> d!1509926 (= lt!1896962 (choose!33530 lt!1896343))))

(assert (=> d!1509926 (= (lemmaContainsAllItsOwnKeys!820 lt!1896343) lt!1896962)))

(declare-fun bs!1121660 () Bool)

(assert (= bs!1121660 d!1509926))

(declare-fun m!5677631 () Bool)

(assert (=> bs!1121660 m!5677631))

(declare-fun m!5677633 () Bool)

(assert (=> bs!1121660 m!5677633))

(assert (=> bm!331067 d!1509926))

(assert (=> bm!331079 d!1509926))

(declare-fun d!1509928 () Bool)

(declare-fun noDuplicatedKeys!384 (List!53037) Bool)

(assert (=> d!1509928 (= (invariantList!1535 (toList!5978 lt!1896725)) (noDuplicatedKeys!384 (toList!5978 lt!1896725)))))

(declare-fun bs!1121661 () Bool)

(assert (= bs!1121661 d!1509928))

(declare-fun m!5677635 () Bool)

(assert (=> bs!1121661 m!5677635))

(assert (=> d!1509792 d!1509928))

(declare-fun d!1509930 () Bool)

(declare-fun res!2004498 () Bool)

(declare-fun e!2952656 () Bool)

(assert (=> d!1509930 (=> res!2004498 e!2952656)))

(assert (=> d!1509930 (= res!2004498 ((_ is Nil!52914) (t!360318 (toList!5977 lm!2023))))))

(assert (=> d!1509930 (= (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217825) e!2952656)))

(declare-fun b!4733814 () Bool)

(declare-fun e!2952657 () Bool)

(assert (=> b!4733814 (= e!2952656 e!2952657)))

(declare-fun res!2004499 () Bool)

(assert (=> b!4733814 (=> (not res!2004499) (not e!2952657))))

(assert (=> b!4733814 (= res!2004499 (dynLambda!21856 lambda!217825 (h!59285 (t!360318 (toList!5977 lm!2023)))))))

(declare-fun b!4733815 () Bool)

(assert (=> b!4733815 (= e!2952657 (forall!11651 (t!360318 (t!360318 (toList!5977 lm!2023))) lambda!217825))))

(assert (= (and d!1509930 (not res!2004498)) b!4733814))

(assert (= (and b!4733814 res!2004499) b!4733815))

(declare-fun b_lambda!180651 () Bool)

(assert (=> (not b_lambda!180651) (not b!4733814)))

(declare-fun m!5677637 () Bool)

(assert (=> b!4733814 m!5677637))

(declare-fun m!5677639 () Bool)

(assert (=> b!4733815 m!5677639))

(assert (=> d!1509792 d!1509930))

(declare-fun d!1509932 () Bool)

(assert (=> d!1509932 (= (invariantList!1535 (toList!5978 lt!1896752)) (noDuplicatedKeys!384 (toList!5978 lt!1896752)))))

(declare-fun bs!1121662 () Bool)

(assert (= bs!1121662 d!1509932))

(declare-fun m!5677641 () Bool)

(assert (=> bs!1121662 m!5677641))

(assert (=> b!4733540 d!1509932))

(declare-fun d!1509934 () Bool)

(declare-fun res!2004500 () Bool)

(declare-fun e!2952658 () Bool)

(assert (=> d!1509934 (=> res!2004500 e!2952658)))

(assert (=> d!1509934 (= res!2004500 ((_ is Nil!52913) (Cons!52913 lt!1896326 lt!1896336)))))

(assert (=> d!1509934 (= (forall!11653 (Cons!52913 lt!1896326 lt!1896336) lambda!217852) e!2952658)))

(declare-fun b!4733816 () Bool)

(declare-fun e!2952659 () Bool)

(assert (=> b!4733816 (= e!2952658 e!2952659)))

(declare-fun res!2004501 () Bool)

(assert (=> b!4733816 (=> (not res!2004501) (not e!2952659))))

(assert (=> b!4733816 (= res!2004501 (dynLambda!21858 lambda!217852 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(declare-fun b!4733817 () Bool)

(assert (=> b!4733817 (= e!2952659 (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217852))))

(assert (= (and d!1509934 (not res!2004500)) b!4733816))

(assert (= (and b!4733816 res!2004501) b!4733817))

(declare-fun b_lambda!180653 () Bool)

(assert (=> (not b_lambda!180653) (not b!4733816)))

(declare-fun m!5677643 () Bool)

(assert (=> b!4733816 m!5677643))

(declare-fun m!5677645 () Bool)

(assert (=> b!4733817 m!5677645))

(assert (=> d!1509834 d!1509934))

(declare-fun d!1509936 () Bool)

(declare-fun res!2004502 () Bool)

(declare-fun e!2952660 () Bool)

(assert (=> d!1509936 (=> res!2004502 e!2952660)))

(assert (=> d!1509936 (= res!2004502 (not ((_ is Cons!52913) (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> d!1509936 (= (noDuplicateKeys!2044 (Cons!52913 lt!1896326 lt!1896336)) e!2952660)))

(declare-fun b!4733818 () Bool)

(declare-fun e!2952661 () Bool)

(assert (=> b!4733818 (= e!2952660 e!2952661)))

(declare-fun res!2004503 () Bool)

(assert (=> b!4733818 (=> (not res!2004503) (not e!2952661))))

(assert (=> b!4733818 (= res!2004503 (not (containsKey!3437 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))))

(declare-fun b!4733819 () Bool)

(assert (=> b!4733819 (= e!2952661 (noDuplicateKeys!2044 (t!360317 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (= (and d!1509936 (not res!2004502)) b!4733818))

(assert (= (and b!4733818 res!2004503) b!4733819))

(declare-fun m!5677647 () Bool)

(assert (=> b!4733818 m!5677647))

(declare-fun m!5677649 () Bool)

(assert (=> b!4733819 m!5677649))

(assert (=> d!1509834 d!1509936))

(declare-fun d!1509938 () Bool)

(declare-fun choose!33531 (Hashable!6413 K!14260) (_ BitVec 64))

(assert (=> d!1509938 (= (hash!4438 hashF!1323 key!4653) (choose!33531 hashF!1323 key!4653))))

(declare-fun bs!1121663 () Bool)

(assert (= bs!1121663 d!1509938))

(declare-fun m!5677651 () Bool)

(assert (=> bs!1121663 m!5677651))

(assert (=> d!1509874 d!1509938))

(declare-fun d!1509940 () Bool)

(declare-fun res!2004504 () Bool)

(declare-fun e!2952662 () Bool)

(assert (=> d!1509940 (=> res!2004504 e!2952662)))

(assert (=> d!1509940 (= res!2004504 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1509940 (= (forall!11653 (toList!5978 lt!1896343) (ite c!808383 lambda!217845 lambda!217847)) e!2952662)))

(declare-fun b!4733820 () Bool)

(declare-fun e!2952663 () Bool)

(assert (=> b!4733820 (= e!2952662 e!2952663)))

(declare-fun res!2004505 () Bool)

(assert (=> b!4733820 (=> (not res!2004505) (not e!2952663))))

(assert (=> b!4733820 (= res!2004505 (dynLambda!21858 (ite c!808383 lambda!217845 lambda!217847) (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4733821 () Bool)

(assert (=> b!4733821 (= e!2952663 (forall!11653 (t!360317 (toList!5978 lt!1896343)) (ite c!808383 lambda!217845 lambda!217847)))))

(assert (= (and d!1509940 (not res!2004504)) b!4733820))

(assert (= (and b!4733820 res!2004505) b!4733821))

(declare-fun b_lambda!180655 () Bool)

(assert (=> (not b_lambda!180655) (not b!4733820)))

(declare-fun m!5677653 () Bool)

(assert (=> b!4733820 m!5677653))

(declare-fun m!5677655 () Bool)

(assert (=> b!4733821 m!5677655))

(assert (=> bm!331075 d!1509940))

(assert (=> b!4733657 d!1509898))

(declare-fun d!1509942 () Bool)

(declare-fun res!2004506 () Bool)

(declare-fun e!2952664 () Bool)

(assert (=> d!1509942 (=> res!2004506 e!2952664)))

(assert (=> d!1509942 (= res!2004506 (not ((_ is Cons!52913) (t!360317 newBucket!218))))))

(assert (=> d!1509942 (= (noDuplicateKeys!2044 (t!360317 newBucket!218)) e!2952664)))

(declare-fun b!4733822 () Bool)

(declare-fun e!2952665 () Bool)

(assert (=> b!4733822 (= e!2952664 e!2952665)))

(declare-fun res!2004507 () Bool)

(assert (=> b!4733822 (=> (not res!2004507) (not e!2952665))))

(assert (=> b!4733822 (= res!2004507 (not (containsKey!3437 (t!360317 (t!360317 newBucket!218)) (_1!30579 (h!59284 (t!360317 newBucket!218))))))))

(declare-fun b!4733823 () Bool)

(assert (=> b!4733823 (= e!2952665 (noDuplicateKeys!2044 (t!360317 (t!360317 newBucket!218))))))

(assert (= (and d!1509942 (not res!2004506)) b!4733822))

(assert (= (and b!4733822 res!2004507) b!4733823))

(declare-fun m!5677657 () Bool)

(assert (=> b!4733822 m!5677657))

(declare-fun m!5677659 () Bool)

(assert (=> b!4733823 m!5677659))

(assert (=> b!4733281 d!1509942))

(assert (=> b!4733641 d!1509900))

(declare-fun d!1509944 () Bool)

(assert (=> d!1509944 (containsKey!3440 (toList!5978 (extractMap!2070 lt!1896327)) key!4653)))

(declare-fun lt!1896965 () Unit!131735)

(declare-fun choose!33532 (List!53037 K!14260) Unit!131735)

(assert (=> d!1509944 (= lt!1896965 (choose!33532 (toList!5978 (extractMap!2070 lt!1896327)) key!4653))))

(assert (=> d!1509944 (invariantList!1535 (toList!5978 (extractMap!2070 lt!1896327)))))

(assert (=> d!1509944 (= (lemmaInGetKeysListThenContainsKey!973 (toList!5978 (extractMap!2070 lt!1896327)) key!4653) lt!1896965)))

(declare-fun bs!1121664 () Bool)

(assert (= bs!1121664 d!1509944))

(assert (=> bs!1121664 m!5677431))

(declare-fun m!5677661 () Bool)

(assert (=> bs!1121664 m!5677661))

(assert (=> bs!1121664 m!5677553))

(assert (=> b!4733641 d!1509944))

(declare-fun d!1509946 () Bool)

(declare-fun c!808440 () Bool)

(assert (=> d!1509946 (= c!808440 ((_ is Nil!52913) (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343))))))

(declare-fun e!2952666 () (InoxSet tuple2!54570))

(assert (=> d!1509946 (= (content!9440 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343))) e!2952666)))

(declare-fun b!4733824 () Bool)

(assert (=> b!4733824 (= e!2952666 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4733825 () Bool)

(assert (=> b!4733825 (= e!2952666 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343))) true) (content!9440 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343))))))))

(assert (= (and d!1509946 c!808440) b!4733824))

(assert (= (and d!1509946 (not c!808440)) b!4733825))

(declare-fun m!5677663 () Bool)

(assert (=> b!4733825 m!5677663))

(declare-fun m!5677665 () Bool)

(assert (=> b!4733825 m!5677665))

(assert (=> d!1509832 d!1509946))

(declare-fun c!808441 () Bool)

(declare-fun d!1509948 () Bool)

(assert (=> d!1509948 (= c!808441 ((_ is Nil!52913) (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))))))

(declare-fun e!2952667 () (InoxSet tuple2!54570))

(assert (=> d!1509948 (= (content!9440 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))) e!2952667)))

(declare-fun b!4733826 () Bool)

(assert (=> b!4733826 (= e!2952667 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4733827 () Bool)

(assert (=> b!4733827 (= e!2952667 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))) true) (content!9440 (t!360317 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))))))))

(assert (= (and d!1509948 c!808441) b!4733826))

(assert (= (and d!1509948 (not c!808441)) b!4733827))

(declare-fun m!5677667 () Bool)

(assert (=> b!4733827 m!5677667))

(declare-fun m!5677669 () Bool)

(assert (=> b!4733827 m!5677669))

(assert (=> d!1509832 d!1509948))

(declare-fun d!1509950 () Bool)

(declare-fun e!2952669 () Bool)

(assert (=> d!1509950 e!2952669))

(declare-fun res!2004508 () Bool)

(assert (=> d!1509950 (=> res!2004508 e!2952669)))

(declare-fun lt!1896966 () Bool)

(assert (=> d!1509950 (= res!2004508 (not lt!1896966))))

(declare-fun lt!1896969 () Bool)

(assert (=> d!1509950 (= lt!1896966 lt!1896969)))

(declare-fun lt!1896967 () Unit!131735)

(declare-fun e!2952668 () Unit!131735)

(assert (=> d!1509950 (= lt!1896967 e!2952668)))

(declare-fun c!808442 () Bool)

(assert (=> d!1509950 (= c!808442 lt!1896969)))

(assert (=> d!1509950 (= lt!1896969 (containsKey!3438 (toList!5977 lm!2023) (hash!4436 hashF!1323 key!4653)))))

(assert (=> d!1509950 (= (contains!16297 lm!2023 (hash!4436 hashF!1323 key!4653)) lt!1896966)))

(declare-fun b!4733828 () Bool)

(declare-fun lt!1896968 () Unit!131735)

(assert (=> b!4733828 (= e!2952668 lt!1896968)))

(assert (=> b!4733828 (= lt!1896968 (lemmaContainsKeyImpliesGetValueByKeyDefined!1889 (toList!5977 lm!2023) (hash!4436 hashF!1323 key!4653)))))

(assert (=> b!4733828 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) (hash!4436 hashF!1323 key!4653)))))

(declare-fun b!4733829 () Bool)

(declare-fun Unit!131861 () Unit!131735)

(assert (=> b!4733829 (= e!2952668 Unit!131861)))

(declare-fun b!4733830 () Bool)

(assert (=> b!4733830 (= e!2952669 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) (hash!4436 hashF!1323 key!4653))))))

(assert (= (and d!1509950 c!808442) b!4733828))

(assert (= (and d!1509950 (not c!808442)) b!4733829))

(assert (= (and d!1509950 (not res!2004508)) b!4733830))

(assert (=> d!1509950 m!5676631))

(declare-fun m!5677671 () Bool)

(assert (=> d!1509950 m!5677671))

(assert (=> b!4733828 m!5676631))

(declare-fun m!5677673 () Bool)

(assert (=> b!4733828 m!5677673))

(assert (=> b!4733828 m!5676631))

(declare-fun m!5677675 () Bool)

(assert (=> b!4733828 m!5677675))

(assert (=> b!4733828 m!5677675))

(declare-fun m!5677677 () Bool)

(assert (=> b!4733828 m!5677677))

(assert (=> b!4733830 m!5676631))

(assert (=> b!4733830 m!5677675))

(assert (=> b!4733830 m!5677675))

(assert (=> b!4733830 m!5677677))

(assert (=> d!1509702 d!1509950))

(assert (=> d!1509702 d!1509874))

(declare-fun d!1509952 () Bool)

(assert (=> d!1509952 (contains!16297 lm!2023 (hash!4436 hashF!1323 key!4653))))

(assert (=> d!1509952 true))

(declare-fun _$27!1533 () Unit!131735)

(assert (=> d!1509952 (= (choose!33514 lm!2023 key!4653 hashF!1323) _$27!1533)))

(declare-fun bs!1121665 () Bool)

(assert (= bs!1121665 d!1509952))

(assert (=> bs!1121665 m!5676631))

(assert (=> bs!1121665 m!5676631))

(assert (=> bs!1121665 m!5676709))

(assert (=> d!1509702 d!1509952))

(declare-fun d!1509954 () Bool)

(declare-fun res!2004509 () Bool)

(declare-fun e!2952670 () Bool)

(assert (=> d!1509954 (=> res!2004509 e!2952670)))

(assert (=> d!1509954 (= res!2004509 ((_ is Nil!52914) (toList!5977 lm!2023)))))

(assert (=> d!1509954 (= (forall!11651 (toList!5977 lm!2023) lambda!217718) e!2952670)))

(declare-fun b!4733831 () Bool)

(declare-fun e!2952671 () Bool)

(assert (=> b!4733831 (= e!2952670 e!2952671)))

(declare-fun res!2004510 () Bool)

(assert (=> b!4733831 (=> (not res!2004510) (not e!2952671))))

(assert (=> b!4733831 (= res!2004510 (dynLambda!21856 lambda!217718 (h!59285 (toList!5977 lm!2023))))))

(declare-fun b!4733832 () Bool)

(assert (=> b!4733832 (= e!2952671 (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217718))))

(assert (= (and d!1509954 (not res!2004509)) b!4733831))

(assert (= (and b!4733831 res!2004510) b!4733832))

(declare-fun b_lambda!180657 () Bool)

(assert (=> (not b_lambda!180657) (not b!4733831)))

(declare-fun m!5677679 () Bool)

(assert (=> b!4733831 m!5677679))

(declare-fun m!5677681 () Bool)

(assert (=> b!4733832 m!5677681))

(assert (=> d!1509702 d!1509954))

(declare-fun b!4733833 () Bool)

(declare-fun e!2952676 () Unit!131735)

(declare-fun lt!1896975 () Unit!131735)

(assert (=> b!4733833 (= e!2952676 lt!1896975)))

(declare-fun lt!1896971 () Unit!131735)

(assert (=> b!4733833 (= lt!1896971 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896860) (_1!30579 lt!1896347)))))

(assert (=> b!4733833 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896860) (_1!30579 lt!1896347)))))

(declare-fun lt!1896974 () Unit!131735)

(assert (=> b!4733833 (= lt!1896974 lt!1896971)))

(assert (=> b!4733833 (= lt!1896975 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896860) (_1!30579 lt!1896347)))))

(declare-fun call!331103 () Bool)

(assert (=> b!4733833 call!331103))

(declare-fun b!4733834 () Bool)

(declare-fun e!2952673 () List!53040)

(assert (=> b!4733834 (= e!2952673 (keys!19029 lt!1896860))))

(declare-fun b!4733835 () Bool)

(declare-fun e!2952674 () Bool)

(assert (=> b!4733835 (= e!2952674 (contains!16302 (keys!19029 lt!1896860) (_1!30579 lt!1896347)))))

(declare-fun b!4733836 () Bool)

(declare-fun e!2952672 () Bool)

(assert (=> b!4733836 (= e!2952672 e!2952674)))

(declare-fun res!2004513 () Bool)

(assert (=> b!4733836 (=> (not res!2004513) (not e!2952674))))

(assert (=> b!4733836 (= res!2004513 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896860) (_1!30579 lt!1896347))))))

(declare-fun b!4733837 () Bool)

(assert (=> b!4733837 false))

(declare-fun lt!1896970 () Unit!131735)

(declare-fun lt!1896976 () Unit!131735)

(assert (=> b!4733837 (= lt!1896970 lt!1896976)))

(assert (=> b!4733837 (containsKey!3440 (toList!5978 lt!1896860) (_1!30579 lt!1896347))))

(assert (=> b!4733837 (= lt!1896976 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896860) (_1!30579 lt!1896347)))))

(declare-fun e!2952677 () Unit!131735)

(declare-fun Unit!131862 () Unit!131735)

(assert (=> b!4733837 (= e!2952677 Unit!131862)))

(declare-fun bm!331098 () Bool)

(assert (=> bm!331098 (= call!331103 (contains!16302 e!2952673 (_1!30579 lt!1896347)))))

(declare-fun c!808443 () Bool)

(declare-fun c!808444 () Bool)

(assert (=> bm!331098 (= c!808443 c!808444)))

(declare-fun d!1509956 () Bool)

(assert (=> d!1509956 e!2952672))

(declare-fun res!2004511 () Bool)

(assert (=> d!1509956 (=> res!2004511 e!2952672)))

(declare-fun e!2952675 () Bool)

(assert (=> d!1509956 (= res!2004511 e!2952675)))

(declare-fun res!2004512 () Bool)

(assert (=> d!1509956 (=> (not res!2004512) (not e!2952675))))

(declare-fun lt!1896973 () Bool)

(assert (=> d!1509956 (= res!2004512 (not lt!1896973))))

(declare-fun lt!1896972 () Bool)

(assert (=> d!1509956 (= lt!1896973 lt!1896972)))

(declare-fun lt!1896977 () Unit!131735)

(assert (=> d!1509956 (= lt!1896977 e!2952676)))

(assert (=> d!1509956 (= c!808444 lt!1896972)))

(assert (=> d!1509956 (= lt!1896972 (containsKey!3440 (toList!5978 lt!1896860) (_1!30579 lt!1896347)))))

(assert (=> d!1509956 (= (contains!16298 lt!1896860 (_1!30579 lt!1896347)) lt!1896973)))

(declare-fun b!4733838 () Bool)

(assert (=> b!4733838 (= e!2952673 (getKeysList!974 (toList!5978 lt!1896860)))))

(declare-fun b!4733839 () Bool)

(assert (=> b!4733839 (= e!2952676 e!2952677)))

(declare-fun c!808445 () Bool)

(assert (=> b!4733839 (= c!808445 call!331103)))

(declare-fun b!4733840 () Bool)

(declare-fun Unit!131863 () Unit!131735)

(assert (=> b!4733840 (= e!2952677 Unit!131863)))

(declare-fun b!4733841 () Bool)

(assert (=> b!4733841 (= e!2952675 (not (contains!16302 (keys!19029 lt!1896860) (_1!30579 lt!1896347))))))

(assert (= (and d!1509956 c!808444) b!4733833))

(assert (= (and d!1509956 (not c!808444)) b!4733839))

(assert (= (and b!4733839 c!808445) b!4733837))

(assert (= (and b!4733839 (not c!808445)) b!4733840))

(assert (= (or b!4733833 b!4733839) bm!331098))

(assert (= (and bm!331098 c!808443) b!4733838))

(assert (= (and bm!331098 (not c!808443)) b!4733834))

(assert (= (and d!1509956 res!2004512) b!4733841))

(assert (= (and d!1509956 (not res!2004511)) b!4733836))

(assert (= (and b!4733836 res!2004513) b!4733835))

(declare-fun m!5677683 () Bool)

(assert (=> b!4733838 m!5677683))

(declare-fun m!5677685 () Bool)

(assert (=> b!4733833 m!5677685))

(assert (=> b!4733833 m!5677399))

(assert (=> b!4733833 m!5677399))

(declare-fun m!5677687 () Bool)

(assert (=> b!4733833 m!5677687))

(declare-fun m!5677689 () Bool)

(assert (=> b!4733833 m!5677689))

(declare-fun m!5677691 () Bool)

(assert (=> d!1509956 m!5677691))

(declare-fun m!5677693 () Bool)

(assert (=> bm!331098 m!5677693))

(declare-fun m!5677695 () Bool)

(assert (=> b!4733834 m!5677695))

(assert (=> b!4733836 m!5677399))

(assert (=> b!4733836 m!5677399))

(assert (=> b!4733836 m!5677687))

(assert (=> b!4733841 m!5677695))

(assert (=> b!4733841 m!5677695))

(declare-fun m!5677697 () Bool)

(assert (=> b!4733841 m!5677697))

(assert (=> b!4733837 m!5677691))

(declare-fun m!5677699 () Bool)

(assert (=> b!4733837 m!5677699))

(assert (=> b!4733835 m!5677695))

(assert (=> b!4733835 m!5677695))

(assert (=> b!4733835 m!5677697))

(assert (=> d!1509842 d!1509956))

(declare-fun b!4733844 () Bool)

(declare-fun e!2952679 () Option!12426)

(assert (=> b!4733844 (= e!2952679 (getValueByKey!2000 (t!360317 lt!1896858) (_1!30579 lt!1896347)))))

(declare-fun d!1509958 () Bool)

(declare-fun c!808446 () Bool)

(assert (=> d!1509958 (= c!808446 (and ((_ is Cons!52913) lt!1896858) (= (_1!30579 (h!59284 lt!1896858)) (_1!30579 lt!1896347))))))

(declare-fun e!2952678 () Option!12426)

(assert (=> d!1509958 (= (getValueByKey!2000 lt!1896858 (_1!30579 lt!1896347)) e!2952678)))

(declare-fun b!4733842 () Bool)

(assert (=> b!4733842 (= e!2952678 (Some!12425 (_2!30579 (h!59284 lt!1896858))))))

(declare-fun b!4733845 () Bool)

(assert (=> b!4733845 (= e!2952679 None!12425)))

(declare-fun b!4733843 () Bool)

(assert (=> b!4733843 (= e!2952678 e!2952679)))

(declare-fun c!808447 () Bool)

(assert (=> b!4733843 (= c!808447 (and ((_ is Cons!52913) lt!1896858) (not (= (_1!30579 (h!59284 lt!1896858)) (_1!30579 lt!1896347)))))))

(assert (= (and d!1509958 c!808446) b!4733842))

(assert (= (and d!1509958 (not c!808446)) b!4733843))

(assert (= (and b!4733843 c!808447) b!4733844))

(assert (= (and b!4733843 (not c!808447)) b!4733845))

(declare-fun m!5677701 () Bool)

(assert (=> b!4733844 m!5677701))

(assert (=> d!1509842 d!1509958))

(declare-fun d!1509960 () Bool)

(assert (=> d!1509960 (= (getValueByKey!2000 lt!1896858 (_1!30579 lt!1896347)) (Some!12425 (_2!30579 lt!1896347)))))

(declare-fun lt!1896978 () Unit!131735)

(assert (=> d!1509960 (= lt!1896978 (choose!33529 lt!1896858 (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun e!2952680 () Bool)

(assert (=> d!1509960 e!2952680))

(declare-fun res!2004514 () Bool)

(assert (=> d!1509960 (=> (not res!2004514) (not e!2952680))))

(assert (=> d!1509960 (= res!2004514 (invariantList!1535 lt!1896858))))

(assert (=> d!1509960 (= (lemmaContainsTupThenGetReturnValue!1102 lt!1896858 (_1!30579 lt!1896347) (_2!30579 lt!1896347)) lt!1896978)))

(declare-fun b!4733846 () Bool)

(declare-fun res!2004515 () Bool)

(assert (=> b!4733846 (=> (not res!2004515) (not e!2952680))))

(assert (=> b!4733846 (= res!2004515 (containsKey!3440 lt!1896858 (_1!30579 lt!1896347)))))

(declare-fun b!4733847 () Bool)

(assert (=> b!4733847 (= e!2952680 (contains!16300 lt!1896858 (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347))))))

(assert (= (and d!1509960 res!2004514) b!4733846))

(assert (= (and b!4733846 res!2004515) b!4733847))

(assert (=> d!1509960 m!5677393))

(declare-fun m!5677703 () Bool)

(assert (=> d!1509960 m!5677703))

(declare-fun m!5677705 () Bool)

(assert (=> d!1509960 m!5677705))

(declare-fun m!5677707 () Bool)

(assert (=> b!4733846 m!5677707))

(declare-fun m!5677709 () Bool)

(assert (=> b!4733847 m!5677709))

(assert (=> d!1509842 d!1509960))

(declare-fun b!4733848 () Bool)

(declare-fun c!808451 () Bool)

(assert (=> b!4733848 (= c!808451 ((_ is Cons!52913) (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))))))

(declare-fun e!2952686 () List!53037)

(declare-fun e!2952683 () List!53037)

(assert (=> b!4733848 (= e!2952686 e!2952683)))

(declare-fun b!4733849 () Bool)

(assert (=> b!4733849 false))

(declare-fun lt!1896985 () Unit!131735)

(declare-fun lt!1896987 () Unit!131735)

(assert (=> b!4733849 (= lt!1896985 lt!1896987)))

(assert (=> b!4733849 (containsKey!3440 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)))))))

(assert (=> b!4733849 (= lt!1896987 (lemmaInGetKeysListThenContainsKey!973 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))))))))

(declare-fun lt!1896983 () Unit!131735)

(declare-fun lt!1896982 () Unit!131735)

(assert (=> b!4733849 (= lt!1896983 lt!1896982)))

(declare-fun call!331107 () List!53040)

(assert (=> b!4733849 (contains!16302 call!331107 (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)))))))

(declare-fun lt!1896981 () List!53037)

(assert (=> b!4733849 (= lt!1896982 (lemmaInListThenGetKeysListContains!969 lt!1896981 (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))))))))

(assert (=> b!4733849 (= lt!1896981 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun e!2952682 () Unit!131735)

(declare-fun Unit!131864 () Unit!131735)

(assert (=> b!4733849 (= e!2952682 Unit!131864)))

(declare-fun b!4733850 () Bool)

(declare-fun res!2004516 () Bool)

(declare-fun e!2952681 () Bool)

(assert (=> b!4733850 (=> (not res!2004516) (not e!2952681))))

(declare-fun lt!1896989 () List!53037)

(assert (=> b!4733850 (= res!2004516 (contains!16300 lt!1896989 (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347))))))

(declare-fun b!4733851 () Bool)

(declare-fun call!331106 () List!53037)

(assert (=> b!4733851 (= e!2952686 call!331106)))

(declare-fun b!4733852 () Bool)

(declare-fun res!2004517 () Bool)

(assert (=> b!4733852 (=> (not res!2004517) (not e!2952681))))

(assert (=> b!4733852 (= res!2004517 (containsKey!3440 lt!1896989 (_1!30579 lt!1896347)))))

(declare-fun b!4733853 () Bool)

(declare-fun Unit!131865 () Unit!131735)

(assert (=> b!4733853 (= e!2952682 Unit!131865)))

(declare-fun call!331105 () List!53037)

(declare-fun c!808452 () Bool)

(declare-fun e!2952684 () List!53037)

(declare-fun bm!331099 () Bool)

(declare-fun c!808450 () Bool)

(assert (=> bm!331099 (= call!331105 ($colon$colon!1085 (ite c!808452 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (ite c!808450 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)) e!2952684)) (ite (or c!808452 c!808450) (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347)) (ite c!808451 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (tuple2!54571 (_1!30579 lt!1896347) (_2!30579 lt!1896347))))))))

(declare-fun bm!331100 () Bool)

(declare-fun call!331104 () List!53037)

(assert (=> bm!331100 (= call!331104 call!331106)))

(declare-fun c!808449 () Bool)

(assert (=> bm!331100 (= c!808449 c!808451)))

(declare-fun e!2952687 () Bool)

(declare-fun b!4733854 () Bool)

(assert (=> b!4733854 (= e!2952687 (not (containsKey!3440 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)) (_1!30579 lt!1896347))))))

(declare-fun b!4733855 () Bool)

(assert (=> b!4733855 (= e!2952684 Nil!52913)))

(declare-fun b!4733856 () Bool)

(assert (=> b!4733856 (= e!2952684 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (_1!30579 lt!1896347) (_2!30579 lt!1896347)))))

(declare-fun b!4733857 () Bool)

(assert (=> b!4733857 (= e!2952683 call!331104)))

(declare-fun b!4733858 () Bool)

(declare-fun e!2952685 () List!53037)

(assert (=> b!4733858 (= e!2952685 call!331105)))

(declare-fun lt!1896980 () List!53040)

(assert (=> b!4733858 (= lt!1896980 call!331107)))

(declare-fun lt!1896984 () Unit!131735)

(assert (=> b!4733858 (= lt!1896984 (lemmaSubseqRefl!148 lt!1896980))))

(assert (=> b!4733858 (subseq!664 lt!1896980 lt!1896980)))

(declare-fun lt!1896979 () Unit!131735)

(assert (=> b!4733858 (= lt!1896979 lt!1896984)))

(declare-fun b!4733859 () Bool)

(declare-fun lt!1896988 () List!53037)

(assert (=> b!4733859 (= e!2952683 lt!1896988)))

(assert (=> b!4733859 (= lt!1896988 call!331104)))

(declare-fun c!808448 () Bool)

(assert (=> b!4733859 (= c!808448 (containsKey!3440 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (_1!30579 lt!1896347) (_2!30579 lt!1896347)) (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))))))))

(declare-fun lt!1896986 () Unit!131735)

(assert (=> b!4733859 (= lt!1896986 e!2952682)))

(declare-fun bm!331101 () Bool)

(assert (=> bm!331101 (= call!331107 (getKeysList!974 (ite c!808452 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)) lt!1896981)))))

(declare-fun b!4733860 () Bool)

(assert (=> b!4733860 (= e!2952681 (= (content!9442 (getKeysList!974 lt!1896989)) ((_ map or) (content!9442 (getKeysList!974 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)))) (store ((as const (Array K!14260 Bool)) false) (_1!30579 lt!1896347) true))))))

(declare-fun d!1509962 () Bool)

(assert (=> d!1509962 e!2952681))

(declare-fun res!2004519 () Bool)

(assert (=> d!1509962 (=> (not res!2004519) (not e!2952681))))

(assert (=> d!1509962 (= res!2004519 (invariantList!1535 lt!1896989))))

(assert (=> d!1509962 (= lt!1896989 e!2952685)))

(assert (=> d!1509962 (= c!808452 (and ((_ is Cons!52913) (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))) (= (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)))) (_1!30579 lt!1896347))))))

(assert (=> d!1509962 (invariantList!1535 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)))))

(assert (=> d!1509962 (= (insertNoDuplicatedKeys!610 (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343)) (_1!30579 lt!1896347) (_2!30579 lt!1896347)) lt!1896989)))

(declare-fun b!4733861 () Bool)

(assert (=> b!4733861 (= e!2952685 e!2952686)))

(declare-fun res!2004518 () Bool)

(assert (=> b!4733861 (= res!2004518 ((_ is Cons!52913) (toList!5978 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343))))))

(assert (=> b!4733861 (=> (not res!2004518) (not e!2952687))))

(assert (=> b!4733861 (= c!808450 e!2952687)))

(declare-fun bm!331102 () Bool)

(assert (=> bm!331102 (= call!331106 call!331105)))

(assert (= (and d!1509962 c!808452) b!4733858))

(assert (= (and d!1509962 (not c!808452)) b!4733861))

(assert (= (and b!4733861 res!2004518) b!4733854))

(assert (= (and b!4733861 c!808450) b!4733851))

(assert (= (and b!4733861 (not c!808450)) b!4733848))

(assert (= (and b!4733848 c!808451) b!4733859))

(assert (= (and b!4733848 (not c!808451)) b!4733857))

(assert (= (and b!4733859 c!808448) b!4733849))

(assert (= (and b!4733859 (not c!808448)) b!4733853))

(assert (= (or b!4733859 b!4733857) bm!331100))

(assert (= (and bm!331100 c!808449) b!4733856))

(assert (= (and bm!331100 (not c!808449)) b!4733855))

(assert (= (or b!4733851 bm!331100) bm!331102))

(assert (= (or b!4733858 b!4733849) bm!331101))

(assert (= (or b!4733858 bm!331102) bm!331099))

(assert (= (and d!1509962 res!2004519) b!4733852))

(assert (= (and b!4733852 res!2004517) b!4733850))

(assert (= (and b!4733850 res!2004516) b!4733860))

(declare-fun m!5677711 () Bool)

(assert (=> b!4733858 m!5677711))

(declare-fun m!5677713 () Bool)

(assert (=> b!4733858 m!5677713))

(declare-fun m!5677715 () Bool)

(assert (=> bm!331101 m!5677715))

(declare-fun m!5677717 () Bool)

(assert (=> bm!331099 m!5677717))

(declare-fun m!5677719 () Bool)

(assert (=> b!4733850 m!5677719))

(assert (=> b!4733860 m!5677601))

(declare-fun m!5677721 () Bool)

(assert (=> b!4733860 m!5677721))

(declare-fun m!5677723 () Bool)

(assert (=> b!4733860 m!5677723))

(declare-fun m!5677725 () Bool)

(assert (=> b!4733860 m!5677725))

(assert (=> b!4733860 m!5677721))

(assert (=> b!4733860 m!5677725))

(declare-fun m!5677727 () Bool)

(assert (=> b!4733860 m!5677727))

(declare-fun m!5677729 () Bool)

(assert (=> b!4733859 m!5677729))

(assert (=> b!4733859 m!5677729))

(declare-fun m!5677731 () Bool)

(assert (=> b!4733859 m!5677731))

(declare-fun m!5677733 () Bool)

(assert (=> d!1509962 m!5677733))

(declare-fun m!5677735 () Bool)

(assert (=> d!1509962 m!5677735))

(declare-fun m!5677737 () Bool)

(assert (=> b!4733852 m!5677737))

(declare-fun m!5677739 () Bool)

(assert (=> b!4733854 m!5677739))

(assert (=> b!4733849 m!5677729))

(declare-fun m!5677741 () Bool)

(assert (=> b!4733849 m!5677741))

(declare-fun m!5677743 () Bool)

(assert (=> b!4733849 m!5677743))

(declare-fun m!5677745 () Bool)

(assert (=> b!4733849 m!5677745))

(declare-fun m!5677747 () Bool)

(assert (=> b!4733849 m!5677747))

(assert (=> b!4733856 m!5677729))

(assert (=> d!1509842 d!1509962))

(declare-fun d!1509964 () Bool)

(declare-fun lt!1896990 () Bool)

(assert (=> d!1509964 (= lt!1896990 (select (content!9440 (toList!5978 lt!1896805)) lt!1896326))))

(declare-fun e!2952689 () Bool)

(assert (=> d!1509964 (= lt!1896990 e!2952689)))

(declare-fun res!2004521 () Bool)

(assert (=> d!1509964 (=> (not res!2004521) (not e!2952689))))

(assert (=> d!1509964 (= res!2004521 ((_ is Cons!52913) (toList!5978 lt!1896805)))))

(assert (=> d!1509964 (= (contains!16300 (toList!5978 lt!1896805) lt!1896326) lt!1896990)))

(declare-fun b!4733862 () Bool)

(declare-fun e!2952688 () Bool)

(assert (=> b!4733862 (= e!2952689 e!2952688)))

(declare-fun res!2004520 () Bool)

(assert (=> b!4733862 (=> res!2004520 e!2952688)))

(assert (=> b!4733862 (= res!2004520 (= (h!59284 (toList!5978 lt!1896805)) lt!1896326))))

(declare-fun b!4733863 () Bool)

(assert (=> b!4733863 (= e!2952688 (contains!16300 (t!360317 (toList!5978 lt!1896805)) lt!1896326))))

(assert (= (and d!1509964 res!2004521) b!4733862))

(assert (= (and b!4733862 (not res!2004520)) b!4733863))

(declare-fun m!5677749 () Bool)

(assert (=> d!1509964 m!5677749))

(declare-fun m!5677751 () Bool)

(assert (=> d!1509964 m!5677751))

(declare-fun m!5677753 () Bool)

(assert (=> b!4733863 m!5677753))

(assert (=> b!4733559 d!1509964))

(declare-fun b!4733866 () Bool)

(declare-fun e!2952691 () Option!12426)

(assert (=> b!4733866 (= e!2952691 (getValueByKey!2000 (t!360317 (toList!5978 lt!1896498)) (_1!30579 lt!1896347)))))

(declare-fun d!1509966 () Bool)

(declare-fun c!808453 () Bool)

(assert (=> d!1509966 (= c!808453 (and ((_ is Cons!52913) (toList!5978 lt!1896498)) (= (_1!30579 (h!59284 (toList!5978 lt!1896498))) (_1!30579 lt!1896347))))))

(declare-fun e!2952690 () Option!12426)

(assert (=> d!1509966 (= (getValueByKey!2000 (toList!5978 lt!1896498) (_1!30579 lt!1896347)) e!2952690)))

(declare-fun b!4733864 () Bool)

(assert (=> b!4733864 (= e!2952690 (Some!12425 (_2!30579 (h!59284 (toList!5978 lt!1896498)))))))

(declare-fun b!4733867 () Bool)

(assert (=> b!4733867 (= e!2952691 None!12425)))

(declare-fun b!4733865 () Bool)

(assert (=> b!4733865 (= e!2952690 e!2952691)))

(declare-fun c!808454 () Bool)

(assert (=> b!4733865 (= c!808454 (and ((_ is Cons!52913) (toList!5978 lt!1896498)) (not (= (_1!30579 (h!59284 (toList!5978 lt!1896498))) (_1!30579 lt!1896347)))))))

(assert (= (and d!1509966 c!808453) b!4733864))

(assert (= (and d!1509966 (not c!808453)) b!4733865))

(assert (= (and b!4733865 c!808454) b!4733866))

(assert (= (and b!4733865 (not c!808454)) b!4733867))

(declare-fun m!5677755 () Bool)

(assert (=> b!4733866 m!5677755))

(assert (=> b!4733402 d!1509966))

(declare-fun d!1509968 () Bool)

(assert (=> d!1509968 (= (invariantList!1535 (toList!5978 lt!1896733)) (noDuplicatedKeys!384 (toList!5978 lt!1896733)))))

(declare-fun bs!1121666 () Bool)

(assert (= bs!1121666 d!1509968))

(declare-fun m!5677757 () Bool)

(assert (=> bs!1121666 m!5677757))

(assert (=> d!1509812 d!1509968))

(declare-fun d!1509970 () Bool)

(declare-fun res!2004522 () Bool)

(declare-fun e!2952692 () Bool)

(assert (=> d!1509970 (=> res!2004522 e!2952692)))

(assert (=> d!1509970 (= res!2004522 ((_ is Nil!52914) lt!1896327))))

(assert (=> d!1509970 (= (forall!11651 lt!1896327 lambda!217826) e!2952692)))

(declare-fun b!4733868 () Bool)

(declare-fun e!2952693 () Bool)

(assert (=> b!4733868 (= e!2952692 e!2952693)))

(declare-fun res!2004523 () Bool)

(assert (=> b!4733868 (=> (not res!2004523) (not e!2952693))))

(assert (=> b!4733868 (= res!2004523 (dynLambda!21856 lambda!217826 (h!59285 lt!1896327)))))

(declare-fun b!4733869 () Bool)

(assert (=> b!4733869 (= e!2952693 (forall!11651 (t!360318 lt!1896327) lambda!217826))))

(assert (= (and d!1509970 (not res!2004522)) b!4733868))

(assert (= (and b!4733868 res!2004523) b!4733869))

(declare-fun b_lambda!180659 () Bool)

(assert (=> (not b_lambda!180659) (not b!4733868)))

(declare-fun m!5677759 () Bool)

(assert (=> b!4733868 m!5677759))

(declare-fun m!5677761 () Bool)

(assert (=> b!4733869 m!5677761))

(assert (=> d!1509812 d!1509970))

(declare-fun b!4733872 () Bool)

(declare-fun e!2952695 () Option!12426)

(assert (=> b!4733872 (= e!2952695 (getValueByKey!2000 (t!360317 (toList!5978 lt!1896860)) (_1!30579 lt!1896347)))))

(declare-fun d!1509972 () Bool)

(declare-fun c!808455 () Bool)

(assert (=> d!1509972 (= c!808455 (and ((_ is Cons!52913) (toList!5978 lt!1896860)) (= (_1!30579 (h!59284 (toList!5978 lt!1896860))) (_1!30579 lt!1896347))))))

(declare-fun e!2952694 () Option!12426)

(assert (=> d!1509972 (= (getValueByKey!2000 (toList!5978 lt!1896860) (_1!30579 lt!1896347)) e!2952694)))

(declare-fun b!4733870 () Bool)

(assert (=> b!4733870 (= e!2952694 (Some!12425 (_2!30579 (h!59284 (toList!5978 lt!1896860)))))))

(declare-fun b!4733873 () Bool)

(assert (=> b!4733873 (= e!2952695 None!12425)))

(declare-fun b!4733871 () Bool)

(assert (=> b!4733871 (= e!2952694 e!2952695)))

(declare-fun c!808456 () Bool)

(assert (=> b!4733871 (= c!808456 (and ((_ is Cons!52913) (toList!5978 lt!1896860)) (not (= (_1!30579 (h!59284 (toList!5978 lt!1896860))) (_1!30579 lt!1896347)))))))

(assert (= (and d!1509972 c!808455) b!4733870))

(assert (= (and d!1509972 (not c!808455)) b!4733871))

(assert (= (and b!4733871 c!808456) b!4733872))

(assert (= (and b!4733871 (not c!808456)) b!4733873))

(declare-fun m!5677763 () Bool)

(assert (=> b!4733872 m!5677763))

(assert (=> b!4733613 d!1509972))

(declare-fun d!1509974 () Bool)

(assert (=> d!1509974 (dynLambda!21858 lambda!217847 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))

(declare-fun lt!1896993 () Unit!131735)

(declare-fun choose!33534 (List!53037 Int tuple2!54570) Unit!131735)

(assert (=> d!1509974 (= lt!1896993 (choose!33534 (toList!5978 lt!1896817) lambda!217847 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(declare-fun e!2952698 () Bool)

(assert (=> d!1509974 e!2952698))

(declare-fun res!2004526 () Bool)

(assert (=> d!1509974 (=> (not res!2004526) (not e!2952698))))

(assert (=> d!1509974 (= res!2004526 (forall!11653 (toList!5978 lt!1896817) lambda!217847))))

(assert (=> d!1509974 (= (forallContained!3693 (toList!5978 lt!1896817) lambda!217847 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896993)))

(declare-fun b!4733876 () Bool)

(assert (=> b!4733876 (= e!2952698 (contains!16300 (toList!5978 lt!1896817) (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (= (and d!1509974 res!2004526) b!4733876))

(declare-fun b_lambda!180661 () Bool)

(assert (=> (not b_lambda!180661) (not d!1509974)))

(declare-fun m!5677765 () Bool)

(assert (=> d!1509974 m!5677765))

(declare-fun m!5677767 () Bool)

(assert (=> d!1509974 m!5677767))

(assert (=> d!1509974 m!5677323))

(declare-fun m!5677769 () Bool)

(assert (=> b!4733876 m!5677769))

(assert (=> b!4733561 d!1509974))

(declare-fun d!1509976 () Bool)

(declare-fun res!2004527 () Bool)

(declare-fun e!2952699 () Bool)

(assert (=> d!1509976 (=> res!2004527 e!2952699)))

(assert (=> d!1509976 (= res!2004527 ((_ is Nil!52913) (t!360317 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> d!1509976 (= (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217847) e!2952699)))

(declare-fun b!4733877 () Bool)

(declare-fun e!2952700 () Bool)

(assert (=> b!4733877 (= e!2952699 e!2952700)))

(declare-fun res!2004528 () Bool)

(assert (=> b!4733877 (=> (not res!2004528) (not e!2952700))))

(assert (=> b!4733877 (= res!2004528 (dynLambda!21858 lambda!217847 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun b!4733878 () Bool)

(assert (=> b!4733878 (= e!2952700 (forall!11653 (t!360317 (t!360317 (Cons!52913 lt!1896347 lt!1896335))) lambda!217847))))

(assert (= (and d!1509976 (not res!2004527)) b!4733877))

(assert (= (and b!4733877 res!2004528) b!4733878))

(declare-fun b_lambda!180663 () Bool)

(assert (=> (not b_lambda!180663) (not b!4733877)))

(declare-fun m!5677771 () Bool)

(assert (=> b!4733877 m!5677771))

(declare-fun m!5677773 () Bool)

(assert (=> b!4733878 m!5677773))

(assert (=> b!4733561 d!1509976))

(declare-fun d!1509978 () Bool)

(declare-fun res!2004529 () Bool)

(declare-fun e!2952701 () Bool)

(assert (=> d!1509978 (=> res!2004529 e!2952701)))

(assert (=> d!1509978 (= res!2004529 ((_ is Nil!52913) (Cons!52913 lt!1896347 lt!1896335)))))

(assert (=> d!1509978 (= (forall!11653 (Cons!52913 lt!1896347 lt!1896335) lambda!217847) e!2952701)))

(declare-fun b!4733879 () Bool)

(declare-fun e!2952702 () Bool)

(assert (=> b!4733879 (= e!2952701 e!2952702)))

(declare-fun res!2004530 () Bool)

(assert (=> b!4733879 (=> (not res!2004530) (not e!2952702))))

(assert (=> b!4733879 (= res!2004530 (dynLambda!21858 lambda!217847 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(declare-fun b!4733880 () Bool)

(assert (=> b!4733880 (= e!2952702 (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217847))))

(assert (= (and d!1509978 (not res!2004529)) b!4733879))

(assert (= (and b!4733879 res!2004530) b!4733880))

(declare-fun b_lambda!180665 () Bool)

(assert (=> (not b_lambda!180665) (not b!4733879)))

(assert (=> b!4733879 m!5677765))

(assert (=> b!4733880 m!5677319))

(assert (=> b!4733561 d!1509978))

(declare-fun d!1509980 () Bool)

(declare-fun res!2004531 () Bool)

(declare-fun e!2952703 () Bool)

(assert (=> d!1509980 (=> res!2004531 e!2952703)))

(assert (=> d!1509980 (= res!2004531 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1509980 (= (forall!11653 (toList!5978 lt!1896343) lambda!217847) e!2952703)))

(declare-fun b!4733881 () Bool)

(declare-fun e!2952704 () Bool)

(assert (=> b!4733881 (= e!2952703 e!2952704)))

(declare-fun res!2004532 () Bool)

(assert (=> b!4733881 (=> (not res!2004532) (not e!2952704))))

(assert (=> b!4733881 (= res!2004532 (dynLambda!21858 lambda!217847 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4733882 () Bool)

(assert (=> b!4733882 (= e!2952704 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217847))))

(assert (= (and d!1509980 (not res!2004531)) b!4733881))

(assert (= (and b!4733881 res!2004532) b!4733882))

(declare-fun b_lambda!180667 () Bool)

(assert (=> (not b_lambda!180667) (not b!4733881)))

(declare-fun m!5677775 () Bool)

(assert (=> b!4733881 m!5677775))

(declare-fun m!5677777 () Bool)

(assert (=> b!4733882 m!5677777))

(assert (=> b!4733561 d!1509980))

(declare-fun d!1509982 () Bool)

(declare-fun e!2952705 () Bool)

(assert (=> d!1509982 e!2952705))

(declare-fun res!2004533 () Bool)

(assert (=> d!1509982 (=> (not res!2004533) (not e!2952705))))

(declare-fun lt!1896996 () ListMap!5341)

(assert (=> d!1509982 (= res!2004533 (contains!16298 lt!1896996 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun lt!1896994 () List!53037)

(assert (=> d!1509982 (= lt!1896996 (ListMap!5342 lt!1896994))))

(declare-fun lt!1896997 () Unit!131735)

(declare-fun lt!1896995 () Unit!131735)

(assert (=> d!1509982 (= lt!1896997 lt!1896995)))

(assert (=> d!1509982 (= (getValueByKey!2000 lt!1896994 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (Some!12425 (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> d!1509982 (= lt!1896995 (lemmaContainsTupThenGetReturnValue!1102 lt!1896994 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> d!1509982 (= lt!1896994 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896343) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> d!1509982 (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896996)))

(declare-fun b!4733883 () Bool)

(declare-fun res!2004534 () Bool)

(assert (=> b!4733883 (=> (not res!2004534) (not e!2952705))))

(assert (=> b!4733883 (= res!2004534 (= (getValueByKey!2000 (toList!5978 lt!1896996) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (Some!12425 (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))))

(declare-fun b!4733884 () Bool)

(assert (=> b!4733884 (= e!2952705 (contains!16300 (toList!5978 lt!1896996) (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (= (and d!1509982 res!2004533) b!4733883))

(assert (= (and b!4733883 res!2004534) b!4733884))

(declare-fun m!5677779 () Bool)

(assert (=> d!1509982 m!5677779))

(declare-fun m!5677781 () Bool)

(assert (=> d!1509982 m!5677781))

(declare-fun m!5677783 () Bool)

(assert (=> d!1509982 m!5677783))

(declare-fun m!5677785 () Bool)

(assert (=> d!1509982 m!5677785))

(declare-fun m!5677787 () Bool)

(assert (=> b!4733883 m!5677787))

(declare-fun m!5677789 () Bool)

(assert (=> b!4733884 m!5677789))

(assert (=> b!4733561 d!1509982))

(declare-fun bs!1121667 () Bool)

(declare-fun d!1509984 () Bool)

(assert (= bs!1121667 (and d!1509984 d!1509876)))

(declare-fun lambda!217876 () Int)

(assert (=> bs!1121667 (not (= lambda!217876 lambda!217862))))

(declare-fun bs!1121668 () Bool)

(assert (= bs!1121668 (and d!1509984 b!4733537)))

(assert (=> bs!1121668 (= (= lt!1896826 lt!1896756) (= lambda!217876 lambda!217834))))

(declare-fun bs!1121669 () Bool)

(assert (= bs!1121669 (and d!1509984 b!4733594)))

(assert (=> bs!1121669 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217850))))

(declare-fun bs!1121670 () Bool)

(assert (= bs!1121670 (and d!1509984 d!1509826)))

(assert (=> bs!1121670 (= (= lt!1896826 lt!1896822) (= lambda!217876 lambda!217848))))

(declare-fun bs!1121671 () Bool)

(assert (= bs!1121671 (and d!1509984 d!1509834)))

(assert (=> bs!1121671 (= (= lt!1896826 lt!1896851) (= lambda!217876 lambda!217852))))

(declare-fun bs!1121672 () Bool)

(assert (= bs!1121672 (and d!1509984 d!1509926)))

(assert (=> bs!1121672 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217871))))

(declare-fun bs!1121673 () Bool)

(assert (= bs!1121673 (and d!1509984 b!4733539)))

(assert (=> bs!1121673 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217830))))

(declare-fun bs!1121674 () Bool)

(assert (= bs!1121674 (and d!1509984 b!4733550)))

(assert (=> bs!1121674 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217841))))

(declare-fun bs!1121675 () Bool)

(assert (= bs!1121675 (and d!1509984 b!4733500)))

(assert (=> bs!1121675 (= (= lt!1896826 lt!1896706) (= lambda!217876 lambda!217821))))

(declare-fun bs!1121676 () Bool)

(assert (= bs!1121676 (and d!1509984 d!1509864)))

(assert (=> bs!1121676 (not (= lambda!217876 lambda!217860))))

(assert (=> bs!1121674 (= (= lt!1896826 lt!1896793) (= lambda!217876 lambda!217843))))

(declare-fun bs!1121677 () Bool)

(assert (= bs!1121677 (and d!1509984 b!4733596)))

(assert (=> bs!1121677 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217849))))

(declare-fun bs!1121678 () Bool)

(assert (= bs!1121678 (and d!1509984 b!4733552)))

(assert (=> bs!1121678 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217840))))

(declare-fun bs!1121679 () Bool)

(assert (= bs!1121679 (and d!1509984 d!1509730)))

(assert (=> bs!1121679 (= (= lt!1896826 lt!1896702) (= lambda!217876 lambda!217822))))

(declare-fun bs!1121680 () Bool)

(assert (= bs!1121680 (and d!1509984 b!4733561)))

(assert (=> bs!1121680 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217846))))

(declare-fun bs!1121681 () Bool)

(assert (= bs!1121681 (and d!1509984 d!1509818)))

(assert (=> bs!1121681 (= (= lt!1896826 lt!1896752) (= lambda!217876 lambda!217839))))

(assert (=> bs!1121668 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217833))))

(declare-fun bs!1121682 () Bool)

(assert (= bs!1121682 (and d!1509984 b!4733502)))

(assert (=> bs!1121682 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217819))))

(assert (=> bs!1121675 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217820))))

(declare-fun bs!1121683 () Bool)

(assert (= bs!1121683 (and d!1509984 d!1509820)))

(assert (=> bs!1121683 (= (= lt!1896826 lt!1896789) (= lambda!217876 lambda!217844))))

(assert (=> bs!1121669 (= (= lt!1896826 lt!1896855) (= lambda!217876 lambda!217851))))

(assert (=> bs!1121680 (= lambda!217876 lambda!217847)))

(declare-fun bs!1121684 () Bool)

(assert (= bs!1121684 (and d!1509984 b!4733563)))

(assert (=> bs!1121684 (= (= lt!1896826 lt!1896343) (= lambda!217876 lambda!217845))))

(assert (=> d!1509984 true))

(assert (=> d!1509984 (forall!11653 (toList!5978 lt!1896343) lambda!217876)))

(declare-fun lt!1897000 () Unit!131735)

(declare-fun choose!33535 (ListMap!5341 ListMap!5341 K!14260 V!14506) Unit!131735)

(assert (=> d!1509984 (= lt!1897000 (choose!33535 lt!1896343 lt!1896826 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> d!1509984 (forall!11653 (toList!5978 (+!2292 lt!1896343 (tuple2!54571 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))) lambda!217876)))

(assert (=> d!1509984 (= (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896826 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (_2!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lt!1897000)))

(declare-fun bs!1121685 () Bool)

(assert (= bs!1121685 d!1509984))

(declare-fun m!5677791 () Bool)

(assert (=> bs!1121685 m!5677791))

(declare-fun m!5677793 () Bool)

(assert (=> bs!1121685 m!5677793))

(declare-fun m!5677795 () Bool)

(assert (=> bs!1121685 m!5677795))

(declare-fun m!5677797 () Bool)

(assert (=> bs!1121685 m!5677797))

(assert (=> b!4733561 d!1509984))

(declare-fun d!1509988 () Bool)

(declare-fun res!2004535 () Bool)

(declare-fun e!2952706 () Bool)

(assert (=> d!1509988 (=> res!2004535 e!2952706)))

(assert (=> d!1509988 (= res!2004535 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1509988 (= (forall!11653 (toList!5978 lt!1896343) lambda!217846) e!2952706)))

(declare-fun b!4733886 () Bool)

(declare-fun e!2952707 () Bool)

(assert (=> b!4733886 (= e!2952706 e!2952707)))

(declare-fun res!2004536 () Bool)

(assert (=> b!4733886 (=> (not res!2004536) (not e!2952707))))

(assert (=> b!4733886 (= res!2004536 (dynLambda!21858 lambda!217846 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4733887 () Bool)

(assert (=> b!4733887 (= e!2952707 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217846))))

(assert (= (and d!1509988 (not res!2004535)) b!4733886))

(assert (= (and b!4733886 res!2004536) b!4733887))

(declare-fun b_lambda!180669 () Bool)

(assert (=> (not b_lambda!180669) (not b!4733886)))

(declare-fun m!5677799 () Bool)

(assert (=> b!4733886 m!5677799))

(declare-fun m!5677801 () Bool)

(assert (=> b!4733887 m!5677801))

(assert (=> b!4733561 d!1509988))

(declare-fun b!4733888 () Bool)

(declare-fun e!2952712 () Unit!131735)

(declare-fun lt!1897006 () Unit!131735)

(assert (=> b!4733888 (= e!2952712 lt!1897006)))

(declare-fun lt!1897002 () Unit!131735)

(assert (=> b!4733888 (= lt!1897002 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> b!4733888 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun lt!1897005 () Unit!131735)

(assert (=> b!4733888 (= lt!1897005 lt!1897002)))

(assert (=> b!4733888 (= lt!1897006 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun call!331108 () Bool)

(assert (=> b!4733888 call!331108))

(declare-fun b!4733889 () Bool)

(declare-fun e!2952709 () List!53040)

(assert (=> b!4733889 (= e!2952709 (keys!19029 lt!1896817))))

(declare-fun e!2952710 () Bool)

(declare-fun b!4733890 () Bool)

(assert (=> b!4733890 (= e!2952710 (contains!16302 (keys!19029 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun b!4733891 () Bool)

(declare-fun e!2952708 () Bool)

(assert (=> b!4733891 (= e!2952708 e!2952710)))

(declare-fun res!2004539 () Bool)

(assert (=> b!4733891 (=> (not res!2004539) (not e!2952710))))

(assert (=> b!4733891 (= res!2004539 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))))

(declare-fun b!4733892 () Bool)

(assert (=> b!4733892 false))

(declare-fun lt!1897001 () Unit!131735)

(declare-fun lt!1897007 () Unit!131735)

(assert (=> b!4733892 (= lt!1897001 lt!1897007)))

(assert (=> b!4733892 (containsKey!3440 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> b!4733892 (= lt!1897007 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun e!2952713 () Unit!131735)

(declare-fun Unit!131866 () Unit!131735)

(assert (=> b!4733892 (= e!2952713 Unit!131866)))

(declare-fun bm!331103 () Bool)

(assert (=> bm!331103 (= call!331108 (contains!16302 e!2952709 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun c!808457 () Bool)

(declare-fun c!808458 () Bool)

(assert (=> bm!331103 (= c!808457 c!808458)))

(declare-fun d!1509990 () Bool)

(assert (=> d!1509990 e!2952708))

(declare-fun res!2004537 () Bool)

(assert (=> d!1509990 (=> res!2004537 e!2952708)))

(declare-fun e!2952711 () Bool)

(assert (=> d!1509990 (= res!2004537 e!2952711)))

(declare-fun res!2004538 () Bool)

(assert (=> d!1509990 (=> (not res!2004538) (not e!2952711))))

(declare-fun lt!1897004 () Bool)

(assert (=> d!1509990 (= res!2004538 (not lt!1897004))))

(declare-fun lt!1897003 () Bool)

(assert (=> d!1509990 (= lt!1897004 lt!1897003)))

(declare-fun lt!1897008 () Unit!131735)

(assert (=> d!1509990 (= lt!1897008 e!2952712)))

(assert (=> d!1509990 (= c!808458 lt!1897003)))

(assert (=> d!1509990 (= lt!1897003 (containsKey!3440 (toList!5978 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> d!1509990 (= (contains!16298 lt!1896817 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lt!1897004)))

(declare-fun b!4733893 () Bool)

(assert (=> b!4733893 (= e!2952709 (getKeysList!974 (toList!5978 lt!1896817)))))

(declare-fun b!4733894 () Bool)

(assert (=> b!4733894 (= e!2952712 e!2952713)))

(declare-fun c!808459 () Bool)

(assert (=> b!4733894 (= c!808459 call!331108)))

(declare-fun b!4733895 () Bool)

(declare-fun Unit!131867 () Unit!131735)

(assert (=> b!4733895 (= e!2952713 Unit!131867)))

(declare-fun b!4733896 () Bool)

(assert (=> b!4733896 (= e!2952711 (not (contains!16302 (keys!19029 lt!1896817) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))))

(assert (= (and d!1509990 c!808458) b!4733888))

(assert (= (and d!1509990 (not c!808458)) b!4733894))

(assert (= (and b!4733894 c!808459) b!4733892))

(assert (= (and b!4733894 (not c!808459)) b!4733895))

(assert (= (or b!4733888 b!4733894) bm!331103))

(assert (= (and bm!331103 c!808457) b!4733893))

(assert (= (and bm!331103 (not c!808457)) b!4733889))

(assert (= (and d!1509990 res!2004538) b!4733896))

(assert (= (and d!1509990 (not res!2004537)) b!4733891))

(assert (= (and b!4733891 res!2004539) b!4733890))

(declare-fun m!5677803 () Bool)

(assert (=> b!4733893 m!5677803))

(declare-fun m!5677805 () Bool)

(assert (=> b!4733888 m!5677805))

(declare-fun m!5677807 () Bool)

(assert (=> b!4733888 m!5677807))

(assert (=> b!4733888 m!5677807))

(declare-fun m!5677809 () Bool)

(assert (=> b!4733888 m!5677809))

(declare-fun m!5677811 () Bool)

(assert (=> b!4733888 m!5677811))

(declare-fun m!5677813 () Bool)

(assert (=> d!1509990 m!5677813))

(declare-fun m!5677815 () Bool)

(assert (=> bm!331103 m!5677815))

(declare-fun m!5677817 () Bool)

(assert (=> b!4733889 m!5677817))

(assert (=> b!4733891 m!5677807))

(assert (=> b!4733891 m!5677807))

(assert (=> b!4733891 m!5677809))

(assert (=> b!4733896 m!5677817))

(assert (=> b!4733896 m!5677817))

(declare-fun m!5677819 () Bool)

(assert (=> b!4733896 m!5677819))

(assert (=> b!4733892 m!5677813))

(declare-fun m!5677821 () Bool)

(assert (=> b!4733892 m!5677821))

(assert (=> b!4733890 m!5677817))

(assert (=> b!4733890 m!5677817))

(assert (=> b!4733890 m!5677819))

(assert (=> b!4733561 d!1509990))

(declare-fun bs!1121686 () Bool)

(declare-fun b!4733900 () Bool)

(assert (= bs!1121686 (and b!4733900 d!1509876)))

(declare-fun lambda!217877 () Int)

(assert (=> bs!1121686 (not (= lambda!217877 lambda!217862))))

(declare-fun bs!1121687 () Bool)

(assert (= bs!1121687 (and b!4733900 b!4733537)))

(assert (=> bs!1121687 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896756) (= lambda!217877 lambda!217834))))

(declare-fun bs!1121688 () Bool)

(assert (= bs!1121688 (and b!4733900 b!4733594)))

(assert (=> bs!1121688 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217850))))

(declare-fun bs!1121689 () Bool)

(assert (= bs!1121689 (and b!4733900 d!1509826)))

(assert (=> bs!1121689 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896822) (= lambda!217877 lambda!217848))))

(declare-fun bs!1121690 () Bool)

(assert (= bs!1121690 (and b!4733900 d!1509834)))

(assert (=> bs!1121690 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896851) (= lambda!217877 lambda!217852))))

(declare-fun bs!1121691 () Bool)

(assert (= bs!1121691 (and b!4733900 d!1509926)))

(assert (=> bs!1121691 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217871))))

(declare-fun bs!1121692 () Bool)

(assert (= bs!1121692 (and b!4733900 b!4733539)))

(assert (=> bs!1121692 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217830))))

(declare-fun bs!1121693 () Bool)

(assert (= bs!1121693 (and b!4733900 b!4733550)))

(assert (=> bs!1121693 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217841))))

(declare-fun bs!1121694 () Bool)

(assert (= bs!1121694 (and b!4733900 b!4733500)))

(assert (=> bs!1121694 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896706) (= lambda!217877 lambda!217821))))

(declare-fun bs!1121695 () Bool)

(assert (= bs!1121695 (and b!4733900 d!1509864)))

(assert (=> bs!1121695 (not (= lambda!217877 lambda!217860))))

(assert (=> bs!1121693 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896793) (= lambda!217877 lambda!217843))))

(declare-fun bs!1121696 () Bool)

(assert (= bs!1121696 (and b!4733900 b!4733596)))

(assert (=> bs!1121696 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217849))))

(declare-fun bs!1121697 () Bool)

(assert (= bs!1121697 (and b!4733900 b!4733552)))

(assert (=> bs!1121697 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217840))))

(declare-fun bs!1121698 () Bool)

(assert (= bs!1121698 (and b!4733900 d!1509730)))

(assert (=> bs!1121698 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896702) (= lambda!217877 lambda!217822))))

(declare-fun bs!1121699 () Bool)

(assert (= bs!1121699 (and b!4733900 b!4733561)))

(assert (=> bs!1121699 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217846))))

(declare-fun bs!1121700 () Bool)

(assert (= bs!1121700 (and b!4733900 d!1509984)))

(assert (=> bs!1121700 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896826) (= lambda!217877 lambda!217876))))

(declare-fun bs!1121701 () Bool)

(assert (= bs!1121701 (and b!4733900 d!1509818)))

(assert (=> bs!1121701 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896752) (= lambda!217877 lambda!217839))))

(assert (=> bs!1121687 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217833))))

(declare-fun bs!1121702 () Bool)

(assert (= bs!1121702 (and b!4733900 b!4733502)))

(assert (=> bs!1121702 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217819))))

(assert (=> bs!1121694 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217820))))

(declare-fun bs!1121703 () Bool)

(assert (= bs!1121703 (and b!4733900 d!1509820)))

(assert (=> bs!1121703 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896789) (= lambda!217877 lambda!217844))))

(assert (=> bs!1121688 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896855) (= lambda!217877 lambda!217851))))

(assert (=> bs!1121699 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896826) (= lambda!217877 lambda!217847))))

(declare-fun bs!1121704 () Bool)

(assert (= bs!1121704 (and b!4733900 b!4733563)))

(assert (=> bs!1121704 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217877 lambda!217845))))

(assert (=> b!4733900 true))

(declare-fun bs!1121705 () Bool)

(declare-fun b!4733898 () Bool)

(assert (= bs!1121705 (and b!4733898 b!4733537)))

(declare-fun lambda!217880 () Int)

(assert (=> bs!1121705 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896756) (= lambda!217880 lambda!217834))))

(declare-fun bs!1121706 () Bool)

(assert (= bs!1121706 (and b!4733898 b!4733594)))

(assert (=> bs!1121706 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217850))))

(declare-fun bs!1121707 () Bool)

(assert (= bs!1121707 (and b!4733898 d!1509826)))

(assert (=> bs!1121707 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896822) (= lambda!217880 lambda!217848))))

(declare-fun bs!1121708 () Bool)

(assert (= bs!1121708 (and b!4733898 d!1509834)))

(assert (=> bs!1121708 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896851) (= lambda!217880 lambda!217852))))

(declare-fun bs!1121709 () Bool)

(assert (= bs!1121709 (and b!4733898 d!1509926)))

(assert (=> bs!1121709 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217871))))

(declare-fun bs!1121710 () Bool)

(assert (= bs!1121710 (and b!4733898 b!4733539)))

(assert (=> bs!1121710 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217830))))

(declare-fun bs!1121711 () Bool)

(assert (= bs!1121711 (and b!4733898 b!4733550)))

(assert (=> bs!1121711 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217841))))

(declare-fun bs!1121712 () Bool)

(assert (= bs!1121712 (and b!4733898 b!4733500)))

(assert (=> bs!1121712 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896706) (= lambda!217880 lambda!217821))))

(declare-fun bs!1121713 () Bool)

(assert (= bs!1121713 (and b!4733898 d!1509864)))

(assert (=> bs!1121713 (not (= lambda!217880 lambda!217860))))

(assert (=> bs!1121711 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896793) (= lambda!217880 lambda!217843))))

(declare-fun bs!1121714 () Bool)

(assert (= bs!1121714 (and b!4733898 b!4733596)))

(assert (=> bs!1121714 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217849))))

(declare-fun bs!1121715 () Bool)

(assert (= bs!1121715 (and b!4733898 b!4733552)))

(assert (=> bs!1121715 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217840))))

(declare-fun bs!1121716 () Bool)

(assert (= bs!1121716 (and b!4733898 d!1509730)))

(assert (=> bs!1121716 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896702) (= lambda!217880 lambda!217822))))

(declare-fun bs!1121717 () Bool)

(assert (= bs!1121717 (and b!4733898 b!4733561)))

(assert (=> bs!1121717 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217846))))

(declare-fun bs!1121718 () Bool)

(assert (= bs!1121718 (and b!4733898 d!1509876)))

(assert (=> bs!1121718 (not (= lambda!217880 lambda!217862))))

(declare-fun bs!1121719 () Bool)

(assert (= bs!1121719 (and b!4733898 b!4733900)))

(assert (=> bs!1121719 (= lambda!217880 lambda!217877)))

(declare-fun bs!1121720 () Bool)

(assert (= bs!1121720 (and b!4733898 d!1509984)))

(assert (=> bs!1121720 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896826) (= lambda!217880 lambda!217876))))

(declare-fun bs!1121721 () Bool)

(assert (= bs!1121721 (and b!4733898 d!1509818)))

(assert (=> bs!1121721 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896752) (= lambda!217880 lambda!217839))))

(assert (=> bs!1121705 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217833))))

(declare-fun bs!1121723 () Bool)

(assert (= bs!1121723 (and b!4733898 b!4733502)))

(assert (=> bs!1121723 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217819))))

(assert (=> bs!1121712 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217820))))

(declare-fun bs!1121725 () Bool)

(assert (= bs!1121725 (and b!4733898 d!1509820)))

(assert (=> bs!1121725 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896789) (= lambda!217880 lambda!217844))))

(assert (=> bs!1121706 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896855) (= lambda!217880 lambda!217851))))

(assert (=> bs!1121717 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896826) (= lambda!217880 lambda!217847))))

(declare-fun bs!1121726 () Bool)

(assert (= bs!1121726 (and b!4733898 b!4733563)))

(assert (=> bs!1121726 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1896343) (= lambda!217880 lambda!217845))))

(assert (=> b!4733898 true))

(declare-fun lambda!217882 () Int)

(declare-fun lt!1897028 () ListMap!5341)

(assert (=> bs!1121705 (= (= lt!1897028 lt!1896756) (= lambda!217882 lambda!217834))))

(assert (=> bs!1121706 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217850))))

(assert (=> bs!1121707 (= (= lt!1897028 lt!1896822) (= lambda!217882 lambda!217848))))

(assert (=> bs!1121708 (= (= lt!1897028 lt!1896851) (= lambda!217882 lambda!217852))))

(assert (=> bs!1121709 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217871))))

(assert (=> bs!1121711 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217841))))

(assert (=> bs!1121712 (= (= lt!1897028 lt!1896706) (= lambda!217882 lambda!217821))))

(assert (=> bs!1121713 (not (= lambda!217882 lambda!217860))))

(assert (=> bs!1121711 (= (= lt!1897028 lt!1896793) (= lambda!217882 lambda!217843))))

(assert (=> bs!1121714 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217849))))

(assert (=> bs!1121715 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217840))))

(assert (=> bs!1121716 (= (= lt!1897028 lt!1896702) (= lambda!217882 lambda!217822))))

(assert (=> bs!1121717 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217846))))

(assert (=> bs!1121718 (not (= lambda!217882 lambda!217862))))

(assert (=> bs!1121719 (= (= lt!1897028 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217882 lambda!217877))))

(assert (=> bs!1121720 (= (= lt!1897028 lt!1896826) (= lambda!217882 lambda!217876))))

(assert (=> bs!1121721 (= (= lt!1897028 lt!1896752) (= lambda!217882 lambda!217839))))

(assert (=> bs!1121705 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217833))))

(assert (=> bs!1121723 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217819))))

(assert (=> bs!1121712 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217820))))

(assert (=> bs!1121725 (= (= lt!1897028 lt!1896789) (= lambda!217882 lambda!217844))))

(assert (=> bs!1121706 (= (= lt!1897028 lt!1896855) (= lambda!217882 lambda!217851))))

(assert (=> bs!1121717 (= (= lt!1897028 lt!1896826) (= lambda!217882 lambda!217847))))

(assert (=> bs!1121726 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217845))))

(assert (=> bs!1121710 (= (= lt!1897028 lt!1896343) (= lambda!217882 lambda!217830))))

(assert (=> b!4733898 (= (= lt!1897028 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217882 lambda!217880))))

(assert (=> b!4733898 true))

(declare-fun bs!1121743 () Bool)

(declare-fun d!1509992 () Bool)

(assert (= bs!1121743 (and d!1509992 b!4733537)))

(declare-fun lt!1897024 () ListMap!5341)

(declare-fun lambda!217883 () Int)

(assert (=> bs!1121743 (= (= lt!1897024 lt!1896756) (= lambda!217883 lambda!217834))))

(declare-fun bs!1121744 () Bool)

(assert (= bs!1121744 (and d!1509992 b!4733594)))

(assert (=> bs!1121744 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217850))))

(declare-fun bs!1121745 () Bool)

(assert (= bs!1121745 (and d!1509992 d!1509826)))

(assert (=> bs!1121745 (= (= lt!1897024 lt!1896822) (= lambda!217883 lambda!217848))))

(declare-fun bs!1121746 () Bool)

(assert (= bs!1121746 (and d!1509992 d!1509834)))

(assert (=> bs!1121746 (= (= lt!1897024 lt!1896851) (= lambda!217883 lambda!217852))))

(declare-fun bs!1121747 () Bool)

(assert (= bs!1121747 (and d!1509992 d!1509926)))

(assert (=> bs!1121747 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217871))))

(declare-fun bs!1121748 () Bool)

(assert (= bs!1121748 (and d!1509992 b!4733550)))

(assert (=> bs!1121748 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217841))))

(declare-fun bs!1121749 () Bool)

(assert (= bs!1121749 (and d!1509992 b!4733500)))

(assert (=> bs!1121749 (= (= lt!1897024 lt!1896706) (= lambda!217883 lambda!217821))))

(declare-fun bs!1121750 () Bool)

(assert (= bs!1121750 (and d!1509992 d!1509864)))

(assert (=> bs!1121750 (not (= lambda!217883 lambda!217860))))

(assert (=> bs!1121748 (= (= lt!1897024 lt!1896793) (= lambda!217883 lambda!217843))))

(declare-fun bs!1121751 () Bool)

(assert (= bs!1121751 (and d!1509992 b!4733596)))

(assert (=> bs!1121751 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217849))))

(declare-fun bs!1121752 () Bool)

(assert (= bs!1121752 (and d!1509992 b!4733552)))

(assert (=> bs!1121752 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217840))))

(declare-fun bs!1121753 () Bool)

(assert (= bs!1121753 (and d!1509992 d!1509730)))

(assert (=> bs!1121753 (= (= lt!1897024 lt!1896702) (= lambda!217883 lambda!217822))))

(declare-fun bs!1121754 () Bool)

(assert (= bs!1121754 (and d!1509992 b!4733561)))

(assert (=> bs!1121754 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217846))))

(declare-fun bs!1121755 () Bool)

(assert (= bs!1121755 (and d!1509992 d!1509876)))

(assert (=> bs!1121755 (not (= lambda!217883 lambda!217862))))

(declare-fun bs!1121756 () Bool)

(assert (= bs!1121756 (and d!1509992 b!4733900)))

(assert (=> bs!1121756 (= (= lt!1897024 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217883 lambda!217877))))

(declare-fun bs!1121757 () Bool)

(assert (= bs!1121757 (and d!1509992 d!1509984)))

(assert (=> bs!1121757 (= (= lt!1897024 lt!1896826) (= lambda!217883 lambda!217876))))

(declare-fun bs!1121758 () Bool)

(assert (= bs!1121758 (and d!1509992 d!1509818)))

(assert (=> bs!1121758 (= (= lt!1897024 lt!1896752) (= lambda!217883 lambda!217839))))

(assert (=> bs!1121743 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217833))))

(declare-fun bs!1121759 () Bool)

(assert (= bs!1121759 (and d!1509992 b!4733502)))

(assert (=> bs!1121759 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217819))))

(assert (=> bs!1121749 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217820))))

(declare-fun bs!1121760 () Bool)

(assert (= bs!1121760 (and d!1509992 d!1509820)))

(assert (=> bs!1121760 (= (= lt!1897024 lt!1896789) (= lambda!217883 lambda!217844))))

(assert (=> bs!1121744 (= (= lt!1897024 lt!1896855) (= lambda!217883 lambda!217851))))

(declare-fun bs!1121761 () Bool)

(assert (= bs!1121761 (and d!1509992 b!4733898)))

(assert (=> bs!1121761 (= (= lt!1897024 lt!1897028) (= lambda!217883 lambda!217882))))

(assert (=> bs!1121754 (= (= lt!1897024 lt!1896826) (= lambda!217883 lambda!217847))))

(declare-fun bs!1121762 () Bool)

(assert (= bs!1121762 (and d!1509992 b!4733563)))

(assert (=> bs!1121762 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217845))))

(declare-fun bs!1121763 () Bool)

(assert (= bs!1121763 (and d!1509992 b!4733539)))

(assert (=> bs!1121763 (= (= lt!1897024 lt!1896343) (= lambda!217883 lambda!217830))))

(assert (=> bs!1121761 (= (= lt!1897024 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217883 lambda!217880))))

(assert (=> d!1509992 true))

(declare-fun call!331109 () Bool)

(declare-fun bm!331104 () Bool)

(declare-fun c!808460 () Bool)

(assert (=> bm!331104 (= call!331109 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (ite c!808460 lambda!217877 lambda!217882)))))

(declare-fun b!4733897 () Bool)

(declare-fun e!2952716 () Bool)

(assert (=> b!4733897 (= e!2952716 call!331109)))

(declare-fun call!331111 () Unit!131735)

(declare-fun bm!331105 () Bool)

(assert (=> bm!331105 (= call!331111 (lemmaContainsAllItsOwnKeys!820 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun call!331110 () Bool)

(declare-fun bm!331106 () Bool)

(assert (=> bm!331106 (= call!331110 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (ite c!808460 lambda!217877 lambda!217882)))))

(declare-fun e!2952714 () Bool)

(assert (=> d!1509992 e!2952714))

(declare-fun res!2004540 () Bool)

(assert (=> d!1509992 (=> (not res!2004540) (not e!2952714))))

(assert (=> d!1509992 (= res!2004540 (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217883))))

(declare-fun e!2952715 () ListMap!5341)

(assert (=> d!1509992 (= lt!1897024 e!2952715)))

(assert (=> d!1509992 (= c!808460 ((_ is Nil!52913) (t!360317 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> d!1509992 (noDuplicateKeys!2044 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))))

(assert (=> d!1509992 (= (addToMapMapFromBucket!1474 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lt!1897024)))

(assert (=> b!4733898 (= e!2952715 lt!1897028)))

(declare-fun lt!1897019 () ListMap!5341)

(assert (=> b!4733898 (= lt!1897019 (+!2292 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> b!4733898 (= lt!1897028 (addToMapMapFromBucket!1474 (t!360317 (t!360317 (Cons!52913 lt!1896347 lt!1896335))) (+!2292 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335))))))))

(declare-fun lt!1897020 () Unit!131735)

(assert (=> b!4733898 (= lt!1897020 call!331111)))

(assert (=> b!4733898 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lambda!217880)))

(declare-fun lt!1897017 () Unit!131735)

(assert (=> b!4733898 (= lt!1897017 lt!1897020)))

(assert (=> b!4733898 (forall!11653 (toList!5978 lt!1897019) lambda!217882)))

(declare-fun lt!1897018 () Unit!131735)

(declare-fun Unit!131870 () Unit!131735)

(assert (=> b!4733898 (= lt!1897018 Unit!131870)))

(assert (=> b!4733898 (forall!11653 (t!360317 (t!360317 (Cons!52913 lt!1896347 lt!1896335))) lambda!217882)))

(declare-fun lt!1897014 () Unit!131735)

(declare-fun Unit!131871 () Unit!131735)

(assert (=> b!4733898 (= lt!1897014 Unit!131871)))

(declare-fun lt!1897029 () Unit!131735)

(declare-fun Unit!131872 () Unit!131735)

(assert (=> b!4733898 (= lt!1897029 Unit!131872)))

(declare-fun lt!1897011 () Unit!131735)

(assert (=> b!4733898 (= lt!1897011 (forallContained!3693 (toList!5978 lt!1897019) lambda!217882 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> b!4733898 (contains!16298 lt!1897019 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun lt!1897023 () Unit!131735)

(declare-fun Unit!131873 () Unit!131735)

(assert (=> b!4733898 (= lt!1897023 Unit!131873)))

(assert (=> b!4733898 (contains!16298 lt!1897028 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun lt!1897025 () Unit!131735)

(declare-fun Unit!131874 () Unit!131735)

(assert (=> b!4733898 (= lt!1897025 Unit!131874)))

(assert (=> b!4733898 (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217882)))

(declare-fun lt!1897027 () Unit!131735)

(declare-fun Unit!131875 () Unit!131735)

(assert (=> b!4733898 (= lt!1897027 Unit!131875)))

(assert (=> b!4733898 (forall!11653 (toList!5978 lt!1897019) lambda!217882)))

(declare-fun lt!1897015 () Unit!131735)

(declare-fun Unit!131876 () Unit!131735)

(assert (=> b!4733898 (= lt!1897015 Unit!131876)))

(declare-fun lt!1897010 () Unit!131735)

(declare-fun Unit!131877 () Unit!131735)

(assert (=> b!4733898 (= lt!1897010 Unit!131877)))

(declare-fun lt!1897012 () Unit!131735)

(assert (=> b!4733898 (= lt!1897012 (addForallContainsKeyThenBeforeAdding!819 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) lt!1897028 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))) (_2!30579 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335))))))))

(assert (=> b!4733898 call!331110))

(declare-fun lt!1897021 () Unit!131735)

(assert (=> b!4733898 (= lt!1897021 lt!1897012)))

(assert (=> b!4733898 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lambda!217882)))

(declare-fun lt!1897009 () Unit!131735)

(declare-fun Unit!131878 () Unit!131735)

(assert (=> b!4733898 (= lt!1897009 Unit!131878)))

(declare-fun res!2004542 () Bool)

(assert (=> b!4733898 (= res!2004542 (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217882))))

(assert (=> b!4733898 (=> (not res!2004542) (not e!2952716))))

(assert (=> b!4733898 e!2952716))

(declare-fun lt!1897013 () Unit!131735)

(declare-fun Unit!131879 () Unit!131735)

(assert (=> b!4733898 (= lt!1897013 Unit!131879)))

(declare-fun b!4733899 () Bool)

(declare-fun res!2004541 () Bool)

(assert (=> b!4733899 (=> (not res!2004541) (not e!2952714))))

(assert (=> b!4733899 (= res!2004541 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lambda!217883))))

(assert (=> b!4733900 (= e!2952715 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(declare-fun lt!1897022 () Unit!131735)

(assert (=> b!4733900 (= lt!1897022 call!331111)))

(assert (=> b!4733900 call!331110))

(declare-fun lt!1897026 () Unit!131735)

(assert (=> b!4733900 (= lt!1897026 lt!1897022)))

(assert (=> b!4733900 call!331109))

(declare-fun lt!1897016 () Unit!131735)

(declare-fun Unit!131880 () Unit!131735)

(assert (=> b!4733900 (= lt!1897016 Unit!131880)))

(declare-fun b!4733901 () Bool)

(assert (=> b!4733901 (= e!2952714 (invariantList!1535 (toList!5978 lt!1897024)))))

(assert (= (and d!1509992 c!808460) b!4733900))

(assert (= (and d!1509992 (not c!808460)) b!4733898))

(assert (= (and b!4733898 res!2004542) b!4733897))

(assert (= (or b!4733900 b!4733898) bm!331105))

(assert (= (or b!4733900 b!4733898) bm!331106))

(assert (= (or b!4733900 b!4733897) bm!331104))

(assert (= (and d!1509992 res!2004540) b!4733899))

(assert (= (and b!4733899 res!2004541) b!4733901))

(declare-fun m!5677827 () Bool)

(assert (=> bm!331104 m!5677827))

(declare-fun m!5677829 () Bool)

(assert (=> d!1509992 m!5677829))

(declare-fun m!5677831 () Bool)

(assert (=> d!1509992 m!5677831))

(assert (=> bm!331105 m!5677331))

(declare-fun m!5677833 () Bool)

(assert (=> bm!331105 m!5677833))

(declare-fun m!5677835 () Bool)

(assert (=> b!4733898 m!5677835))

(declare-fun m!5677837 () Bool)

(assert (=> b!4733898 m!5677837))

(declare-fun m!5677839 () Bool)

(assert (=> b!4733898 m!5677839))

(declare-fun m!5677841 () Bool)

(assert (=> b!4733898 m!5677841))

(declare-fun m!5677843 () Bool)

(assert (=> b!4733898 m!5677843))

(declare-fun m!5677845 () Bool)

(assert (=> b!4733898 m!5677845))

(declare-fun m!5677847 () Bool)

(assert (=> b!4733898 m!5677847))

(assert (=> b!4733898 m!5677835))

(assert (=> b!4733898 m!5677331))

(declare-fun m!5677849 () Bool)

(assert (=> b!4733898 m!5677849))

(declare-fun m!5677851 () Bool)

(assert (=> b!4733898 m!5677851))

(assert (=> b!4733898 m!5677841))

(assert (=> b!4733898 m!5677331))

(declare-fun m!5677853 () Bool)

(assert (=> b!4733898 m!5677853))

(assert (=> b!4733898 m!5677849))

(declare-fun m!5677855 () Bool)

(assert (=> b!4733898 m!5677855))

(declare-fun m!5677857 () Bool)

(assert (=> b!4733899 m!5677857))

(assert (=> bm!331106 m!5677827))

(declare-fun m!5677859 () Bool)

(assert (=> b!4733901 m!5677859))

(assert (=> b!4733561 d!1509992))

(declare-fun d!1509996 () Bool)

(declare-fun res!2004549 () Bool)

(declare-fun e!2952723 () Bool)

(assert (=> d!1509996 (=> res!2004549 e!2952723)))

(assert (=> d!1509996 (= res!2004549 ((_ is Nil!52913) (toList!5978 lt!1896817)))))

(assert (=> d!1509996 (= (forall!11653 (toList!5978 lt!1896817) lambda!217847) e!2952723)))

(declare-fun b!4733908 () Bool)

(declare-fun e!2952724 () Bool)

(assert (=> b!4733908 (= e!2952723 e!2952724)))

(declare-fun res!2004550 () Bool)

(assert (=> b!4733908 (=> (not res!2004550) (not e!2952724))))

(assert (=> b!4733908 (= res!2004550 (dynLambda!21858 lambda!217847 (h!59284 (toList!5978 lt!1896817))))))

(declare-fun b!4733909 () Bool)

(assert (=> b!4733909 (= e!2952724 (forall!11653 (t!360317 (toList!5978 lt!1896817)) lambda!217847))))

(assert (= (and d!1509996 (not res!2004549)) b!4733908))

(assert (= (and b!4733908 res!2004550) b!4733909))

(declare-fun b_lambda!180671 () Bool)

(assert (=> (not b_lambda!180671) (not b!4733908)))

(declare-fun m!5677863 () Bool)

(assert (=> b!4733908 m!5677863))

(declare-fun m!5677867 () Bool)

(assert (=> b!4733909 m!5677867))

(assert (=> b!4733561 d!1509996))

(declare-fun b!4733910 () Bool)

(declare-fun e!2952729 () Unit!131735)

(declare-fun lt!1897041 () Unit!131735)

(assert (=> b!4733910 (= e!2952729 lt!1897041)))

(declare-fun lt!1897037 () Unit!131735)

(assert (=> b!4733910 (= lt!1897037 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> b!4733910 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun lt!1897040 () Unit!131735)

(assert (=> b!4733910 (= lt!1897040 lt!1897037)))

(assert (=> b!4733910 (= lt!1897041 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun call!331112 () Bool)

(assert (=> b!4733910 call!331112))

(declare-fun b!4733911 () Bool)

(declare-fun e!2952726 () List!53040)

(assert (=> b!4733911 (= e!2952726 (keys!19029 lt!1896826))))

(declare-fun b!4733912 () Bool)

(declare-fun e!2952727 () Bool)

(assert (=> b!4733912 (= e!2952727 (contains!16302 (keys!19029 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun b!4733913 () Bool)

(declare-fun e!2952725 () Bool)

(assert (=> b!4733913 (= e!2952725 e!2952727)))

(declare-fun res!2004553 () Bool)

(assert (=> b!4733913 (=> (not res!2004553) (not e!2952727))))

(assert (=> b!4733913 (= res!2004553 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))))

(declare-fun b!4733914 () Bool)

(assert (=> b!4733914 false))

(declare-fun lt!1897036 () Unit!131735)

(declare-fun lt!1897042 () Unit!131735)

(assert (=> b!4733914 (= lt!1897036 lt!1897042)))

(assert (=> b!4733914 (containsKey!3440 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> b!4733914 (= lt!1897042 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun e!2952730 () Unit!131735)

(declare-fun Unit!131883 () Unit!131735)

(assert (=> b!4733914 (= e!2952730 Unit!131883)))

(declare-fun bm!331107 () Bool)

(assert (=> bm!331107 (= call!331112 (contains!16302 e!2952726 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun c!808461 () Bool)

(declare-fun c!808462 () Bool)

(assert (=> bm!331107 (= c!808461 c!808462)))

(declare-fun d!1509998 () Bool)

(assert (=> d!1509998 e!2952725))

(declare-fun res!2004551 () Bool)

(assert (=> d!1509998 (=> res!2004551 e!2952725)))

(declare-fun e!2952728 () Bool)

(assert (=> d!1509998 (= res!2004551 e!2952728)))

(declare-fun res!2004552 () Bool)

(assert (=> d!1509998 (=> (not res!2004552) (not e!2952728))))

(declare-fun lt!1897039 () Bool)

(assert (=> d!1509998 (= res!2004552 (not lt!1897039))))

(declare-fun lt!1897038 () Bool)

(assert (=> d!1509998 (= lt!1897039 lt!1897038)))

(declare-fun lt!1897043 () Unit!131735)

(assert (=> d!1509998 (= lt!1897043 e!2952729)))

(assert (=> d!1509998 (= c!808462 lt!1897038)))

(assert (=> d!1509998 (= lt!1897038 (containsKey!3440 (toList!5978 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> d!1509998 (= (contains!16298 lt!1896826 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) lt!1897039)))

(declare-fun b!4733915 () Bool)

(assert (=> b!4733915 (= e!2952726 (getKeysList!974 (toList!5978 lt!1896826)))))

(declare-fun b!4733916 () Bool)

(assert (=> b!4733916 (= e!2952729 e!2952730)))

(declare-fun c!808463 () Bool)

(assert (=> b!4733916 (= c!808463 call!331112)))

(declare-fun b!4733917 () Bool)

(declare-fun Unit!131884 () Unit!131735)

(assert (=> b!4733917 (= e!2952730 Unit!131884)))

(declare-fun b!4733918 () Bool)

(assert (=> b!4733918 (= e!2952728 (not (contains!16302 (keys!19029 lt!1896826) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))))

(assert (= (and d!1509998 c!808462) b!4733910))

(assert (= (and d!1509998 (not c!808462)) b!4733916))

(assert (= (and b!4733916 c!808463) b!4733914))

(assert (= (and b!4733916 (not c!808463)) b!4733917))

(assert (= (or b!4733910 b!4733916) bm!331107))

(assert (= (and bm!331107 c!808461) b!4733915))

(assert (= (and bm!331107 (not c!808461)) b!4733911))

(assert (= (and d!1509998 res!2004552) b!4733918))

(assert (= (and d!1509998 (not res!2004551)) b!4733913))

(assert (= (and b!4733913 res!2004553) b!4733912))

(declare-fun m!5677871 () Bool)

(assert (=> b!4733915 m!5677871))

(declare-fun m!5677873 () Bool)

(assert (=> b!4733910 m!5677873))

(declare-fun m!5677875 () Bool)

(assert (=> b!4733910 m!5677875))

(assert (=> b!4733910 m!5677875))

(declare-fun m!5677877 () Bool)

(assert (=> b!4733910 m!5677877))

(declare-fun m!5677879 () Bool)

(assert (=> b!4733910 m!5677879))

(declare-fun m!5677881 () Bool)

(assert (=> d!1509998 m!5677881))

(declare-fun m!5677883 () Bool)

(assert (=> bm!331107 m!5677883))

(declare-fun m!5677885 () Bool)

(assert (=> b!4733911 m!5677885))

(assert (=> b!4733913 m!5677875))

(assert (=> b!4733913 m!5677875))

(assert (=> b!4733913 m!5677877))

(assert (=> b!4733918 m!5677885))

(assert (=> b!4733918 m!5677885))

(declare-fun m!5677889 () Bool)

(assert (=> b!4733918 m!5677889))

(assert (=> b!4733914 m!5677881))

(declare-fun m!5677891 () Bool)

(assert (=> b!4733914 m!5677891))

(assert (=> b!4733912 m!5677885))

(assert (=> b!4733912 m!5677885))

(assert (=> b!4733912 m!5677889))

(assert (=> b!4733561 d!1509998))

(declare-fun bs!1121765 () Bool)

(declare-fun b!4733962 () Bool)

(assert (= bs!1121765 (and b!4733962 b!4733723)))

(declare-fun lambda!217898 () Int)

(assert (=> bs!1121765 (= (= (t!360317 (toList!5978 lt!1896330)) (toList!5978 lt!1896330)) (= lambda!217898 lambda!217867))))

(assert (=> b!4733962 true))

(declare-fun bs!1121766 () Bool)

(declare-fun b!4733956 () Bool)

(assert (= bs!1121766 (and b!4733956 b!4733723)))

(declare-fun lambda!217899 () Int)

(assert (=> bs!1121766 (= (= (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330))) (toList!5978 lt!1896330)) (= lambda!217899 lambda!217867))))

(declare-fun bs!1121767 () Bool)

(assert (= bs!1121767 (and b!4733956 b!4733962)))

(assert (=> bs!1121767 (= (= (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330))) (t!360317 (toList!5978 lt!1896330))) (= lambda!217899 lambda!217898))))

(assert (=> b!4733956 true))

(declare-fun bs!1121768 () Bool)

(declare-fun b!4733963 () Bool)

(assert (= bs!1121768 (and b!4733963 b!4733723)))

(declare-fun lambda!217900 () Int)

(assert (=> bs!1121768 (= lambda!217900 lambda!217867)))

(declare-fun bs!1121769 () Bool)

(assert (= bs!1121769 (and b!4733963 b!4733962)))

(assert (=> bs!1121769 (= (= (toList!5978 lt!1896330) (t!360317 (toList!5978 lt!1896330))) (= lambda!217900 lambda!217898))))

(declare-fun bs!1121770 () Bool)

(assert (= bs!1121770 (and b!4733963 b!4733956)))

(assert (=> bs!1121770 (= (= (toList!5978 lt!1896330) (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330)))) (= lambda!217900 lambda!217899))))

(assert (=> b!4733963 true))

(declare-fun bs!1121771 () Bool)

(declare-fun b!4733960 () Bool)

(assert (= bs!1121771 (and b!4733960 b!4733724)))

(declare-fun lambda!217901 () Int)

(assert (=> bs!1121771 (= lambda!217901 lambda!217868)))

(declare-fun e!2952752 () List!53040)

(assert (=> b!4733956 (= e!2952752 (Cons!52916 (_1!30579 (h!59284 (toList!5978 lt!1896330))) (getKeysList!974 (t!360317 (toList!5978 lt!1896330)))))))

(declare-fun c!808470 () Bool)

(assert (=> b!4733956 (= c!808470 (containsKey!3440 (t!360317 (toList!5978 lt!1896330)) (_1!30579 (h!59284 (toList!5978 lt!1896330)))))))

(declare-fun lt!1897071 () Unit!131735)

(declare-fun e!2952751 () Unit!131735)

(assert (=> b!4733956 (= lt!1897071 e!2952751)))

(declare-fun c!808472 () Bool)

(assert (=> b!4733956 (= c!808472 (contains!16302 (getKeysList!974 (t!360317 (toList!5978 lt!1896330))) (_1!30579 (h!59284 (toList!5978 lt!1896330)))))))

(declare-fun lt!1897068 () Unit!131735)

(declare-fun e!2952753 () Unit!131735)

(assert (=> b!4733956 (= lt!1897068 e!2952753)))

(declare-fun lt!1897066 () List!53040)

(assert (=> b!4733956 (= lt!1897066 (getKeysList!974 (t!360317 (toList!5978 lt!1896330))))))

(declare-fun lt!1897070 () Unit!131735)

(declare-fun lemmaForallContainsAddHeadPreserves!288 (List!53037 List!53040 tuple2!54570) Unit!131735)

(assert (=> b!4733956 (= lt!1897070 (lemmaForallContainsAddHeadPreserves!288 (t!360317 (toList!5978 lt!1896330)) lt!1897066 (h!59284 (toList!5978 lt!1896330))))))

(assert (=> b!4733956 (forall!11654 lt!1897066 lambda!217899)))

(declare-fun lt!1897069 () Unit!131735)

(assert (=> b!4733956 (= lt!1897069 lt!1897070)))

(declare-fun b!4733957 () Bool)

(assert (=> b!4733957 false))

(declare-fun Unit!131885 () Unit!131735)

(assert (=> b!4733957 (= e!2952751 Unit!131885)))

(declare-fun b!4733959 () Bool)

(declare-fun res!2004577 () Bool)

(declare-fun e!2952750 () Bool)

(assert (=> b!4733959 (=> (not res!2004577) (not e!2952750))))

(declare-fun lt!1897067 () List!53040)

(assert (=> b!4733959 (= res!2004577 (= (length!596 lt!1897067) (length!597 (toList!5978 lt!1896330))))))

(assert (=> b!4733960 (= e!2952750 (= (content!9442 lt!1897067) (content!9442 (map!11705 (toList!5978 lt!1896330) lambda!217901))))))

(declare-fun b!4733961 () Bool)

(declare-fun Unit!131886 () Unit!131735)

(assert (=> b!4733961 (= e!2952751 Unit!131886)))

(assert (=> b!4733962 false))

(declare-fun lt!1897065 () Unit!131735)

(declare-fun forallContained!3694 (List!53040 Int K!14260) Unit!131735)

(assert (=> b!4733962 (= lt!1897065 (forallContained!3694 (getKeysList!974 (t!360317 (toList!5978 lt!1896330))) lambda!217898 (_1!30579 (h!59284 (toList!5978 lt!1896330)))))))

(declare-fun Unit!131887 () Unit!131735)

(assert (=> b!4733962 (= e!2952753 Unit!131887)))

(declare-fun d!1510004 () Bool)

(assert (=> d!1510004 e!2952750))

(declare-fun res!2004579 () Bool)

(assert (=> d!1510004 (=> (not res!2004579) (not e!2952750))))

(assert (=> d!1510004 (= res!2004579 (noDuplicate!870 lt!1897067))))

(assert (=> d!1510004 (= lt!1897067 e!2952752)))

(declare-fun c!808471 () Bool)

(assert (=> d!1510004 (= c!808471 ((_ is Cons!52913) (toList!5978 lt!1896330)))))

(assert (=> d!1510004 (invariantList!1535 (toList!5978 lt!1896330))))

(assert (=> d!1510004 (= (getKeysList!974 (toList!5978 lt!1896330)) lt!1897067)))

(declare-fun b!4733958 () Bool)

(declare-fun Unit!131888 () Unit!131735)

(assert (=> b!4733958 (= e!2952753 Unit!131888)))

(declare-fun res!2004578 () Bool)

(assert (=> b!4733963 (=> (not res!2004578) (not e!2952750))))

(assert (=> b!4733963 (= res!2004578 (forall!11654 lt!1897067 lambda!217900))))

(declare-fun b!4733964 () Bool)

(assert (=> b!4733964 (= e!2952752 Nil!52916)))

(assert (= (and d!1510004 c!808471) b!4733956))

(assert (= (and d!1510004 (not c!808471)) b!4733964))

(assert (= (and b!4733956 c!808470) b!4733957))

(assert (= (and b!4733956 (not c!808470)) b!4733961))

(assert (= (and b!4733956 c!808472) b!4733962))

(assert (= (and b!4733956 (not c!808472)) b!4733958))

(assert (= (and d!1510004 res!2004579) b!4733959))

(assert (= (and b!4733959 res!2004577) b!4733963))

(assert (= (and b!4733963 res!2004578) b!4733960))

(declare-fun m!5677919 () Bool)

(assert (=> b!4733963 m!5677919))

(declare-fun m!5677921 () Bool)

(assert (=> b!4733962 m!5677921))

(assert (=> b!4733962 m!5677921))

(declare-fun m!5677923 () Bool)

(assert (=> b!4733962 m!5677923))

(assert (=> b!4733956 m!5677921))

(declare-fun m!5677925 () Bool)

(assert (=> b!4733956 m!5677925))

(assert (=> b!4733956 m!5677921))

(declare-fun m!5677927 () Bool)

(assert (=> b!4733956 m!5677927))

(declare-fun m!5677929 () Bool)

(assert (=> b!4733956 m!5677929))

(declare-fun m!5677931 () Bool)

(assert (=> b!4733956 m!5677931))

(declare-fun m!5677933 () Bool)

(assert (=> d!1510004 m!5677933))

(declare-fun m!5677935 () Bool)

(assert (=> d!1510004 m!5677935))

(declare-fun m!5677937 () Bool)

(assert (=> b!4733960 m!5677937))

(declare-fun m!5677939 () Bool)

(assert (=> b!4733960 m!5677939))

(assert (=> b!4733960 m!5677939))

(declare-fun m!5677941 () Bool)

(assert (=> b!4733960 m!5677941))

(declare-fun m!5677943 () Bool)

(assert (=> b!4733959 m!5677943))

(assert (=> b!4733959 m!5677521))

(assert (=> b!4733661 d!1510004))

(assert (=> b!4733391 d!1509708))

(declare-fun d!1510012 () Bool)

(declare-fun res!2004580 () Bool)

(declare-fun e!2952758 () Bool)

(assert (=> d!1510012 (=> res!2004580 e!2952758)))

(assert (=> d!1510012 (= res!2004580 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510012 (= (forall!11653 (toList!5978 lt!1896343) lambda!217844) e!2952758)))

(declare-fun b!4733975 () Bool)

(declare-fun e!2952759 () Bool)

(assert (=> b!4733975 (= e!2952758 e!2952759)))

(declare-fun res!2004581 () Bool)

(assert (=> b!4733975 (=> (not res!2004581) (not e!2952759))))

(assert (=> b!4733975 (= res!2004581 (dynLambda!21858 lambda!217844 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4733976 () Bool)

(assert (=> b!4733976 (= e!2952759 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217844))))

(assert (= (and d!1510012 (not res!2004580)) b!4733975))

(assert (= (and b!4733975 res!2004581) b!4733976))

(declare-fun b_lambda!180673 () Bool)

(assert (=> (not b_lambda!180673) (not b!4733975)))

(declare-fun m!5677945 () Bool)

(assert (=> b!4733975 m!5677945))

(declare-fun m!5677947 () Bool)

(assert (=> b!4733976 m!5677947))

(assert (=> b!4733551 d!1510012))

(declare-fun d!1510014 () Bool)

(declare-fun lt!1897072 () Bool)

(assert (=> d!1510014 (= lt!1897072 (select (content!9442 (keys!19029 (extractMap!2070 lt!1896327))) key!4653))))

(declare-fun e!2952762 () Bool)

(assert (=> d!1510014 (= lt!1897072 e!2952762)))

(declare-fun res!2004582 () Bool)

(assert (=> d!1510014 (=> (not res!2004582) (not e!2952762))))

(assert (=> d!1510014 (= res!2004582 ((_ is Cons!52916) (keys!19029 (extractMap!2070 lt!1896327))))))

(assert (=> d!1510014 (= (contains!16302 (keys!19029 (extractMap!2070 lt!1896327)) key!4653) lt!1897072)))

(declare-fun b!4733981 () Bool)

(declare-fun e!2952763 () Bool)

(assert (=> b!4733981 (= e!2952762 e!2952763)))

(declare-fun res!2004583 () Bool)

(assert (=> b!4733981 (=> res!2004583 e!2952763)))

(assert (=> b!4733981 (= res!2004583 (= (h!59289 (keys!19029 (extractMap!2070 lt!1896327))) key!4653))))

(declare-fun b!4733982 () Bool)

(assert (=> b!4733982 (= e!2952763 (contains!16302 (t!360322 (keys!19029 (extractMap!2070 lt!1896327))) key!4653))))

(assert (= (and d!1510014 res!2004582) b!4733981))

(assert (= (and b!4733981 (not res!2004583)) b!4733982))

(assert (=> d!1510014 m!5677435))

(declare-fun m!5677949 () Bool)

(assert (=> d!1510014 m!5677949))

(declare-fun m!5677951 () Bool)

(assert (=> d!1510014 m!5677951))

(declare-fun m!5677953 () Bool)

(assert (=> b!4733982 m!5677953))

(assert (=> b!4733645 d!1510014))

(declare-fun bs!1121772 () Bool)

(declare-fun b!4733984 () Bool)

(assert (= bs!1121772 (and b!4733984 b!4733723)))

(declare-fun lambda!217902 () Int)

(assert (=> bs!1121772 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (toList!5978 lt!1896330)) (= lambda!217902 lambda!217867))))

(declare-fun bs!1121773 () Bool)

(assert (= bs!1121773 (and b!4733984 b!4733962)))

(assert (=> bs!1121773 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (t!360317 (toList!5978 lt!1896330))) (= lambda!217902 lambda!217898))))

(declare-fun bs!1121774 () Bool)

(assert (= bs!1121774 (and b!4733984 b!4733956)))

(assert (=> bs!1121774 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330)))) (= lambda!217902 lambda!217899))))

(declare-fun bs!1121775 () Bool)

(assert (= bs!1121775 (and b!4733984 b!4733963)))

(assert (=> bs!1121775 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (toList!5978 lt!1896330)) (= lambda!217902 lambda!217900))))

(assert (=> b!4733984 true))

(declare-fun bs!1121776 () Bool)

(declare-fun b!4733985 () Bool)

(assert (= bs!1121776 (and b!4733985 b!4733724)))

(declare-fun lambda!217903 () Int)

(assert (=> bs!1121776 (= lambda!217903 lambda!217868)))

(declare-fun bs!1121777 () Bool)

(assert (= bs!1121777 (and b!4733985 b!4733960)))

(assert (=> bs!1121777 (= lambda!217903 lambda!217901)))

(declare-fun d!1510016 () Bool)

(declare-fun e!2952764 () Bool)

(assert (=> d!1510016 e!2952764))

(declare-fun res!2004585 () Bool)

(assert (=> d!1510016 (=> (not res!2004585) (not e!2952764))))

(declare-fun lt!1897073 () List!53040)

(assert (=> d!1510016 (= res!2004585 (noDuplicate!870 lt!1897073))))

(assert (=> d!1510016 (= lt!1897073 (getKeysList!974 (toList!5978 (extractMap!2070 lt!1896327))))))

(assert (=> d!1510016 (= (keys!19029 (extractMap!2070 lt!1896327)) lt!1897073)))

(declare-fun b!4733983 () Bool)

(declare-fun res!2004586 () Bool)

(assert (=> b!4733983 (=> (not res!2004586) (not e!2952764))))

(assert (=> b!4733983 (= res!2004586 (= (length!596 lt!1897073) (length!597 (toList!5978 (extractMap!2070 lt!1896327)))))))

(declare-fun res!2004584 () Bool)

(assert (=> b!4733984 (=> (not res!2004584) (not e!2952764))))

(assert (=> b!4733984 (= res!2004584 (forall!11654 lt!1897073 lambda!217902))))

(assert (=> b!4733985 (= e!2952764 (= (content!9442 lt!1897073) (content!9442 (map!11705 (toList!5978 (extractMap!2070 lt!1896327)) lambda!217903))))))

(assert (= (and d!1510016 res!2004585) b!4733983))

(assert (= (and b!4733983 res!2004586) b!4733984))

(assert (= (and b!4733984 res!2004584) b!4733985))

(declare-fun m!5677957 () Bool)

(assert (=> d!1510016 m!5677957))

(assert (=> d!1510016 m!5677421))

(declare-fun m!5677959 () Bool)

(assert (=> b!4733983 m!5677959))

(declare-fun m!5677961 () Bool)

(assert (=> b!4733983 m!5677961))

(declare-fun m!5677963 () Bool)

(assert (=> b!4733984 m!5677963))

(declare-fun m!5677965 () Bool)

(assert (=> b!4733985 m!5677965))

(declare-fun m!5677967 () Bool)

(assert (=> b!4733985 m!5677967))

(assert (=> b!4733985 m!5677967))

(declare-fun m!5677969 () Bool)

(assert (=> b!4733985 m!5677969))

(assert (=> b!4733645 d!1510016))

(declare-fun d!1510020 () Bool)

(declare-fun e!2952767 () Bool)

(assert (=> d!1510020 e!2952767))

(declare-fun res!2004590 () Bool)

(assert (=> d!1510020 (=> res!2004590 e!2952767)))

(declare-fun e!2952766 () Bool)

(assert (=> d!1510020 (= res!2004590 e!2952766)))

(declare-fun res!2004588 () Bool)

(assert (=> d!1510020 (=> (not res!2004588) (not e!2952766))))

(declare-fun lt!1897074 () Option!12423)

(assert (=> d!1510020 (= res!2004588 (isEmpty!29210 lt!1897074))))

(declare-fun e!2952769 () Option!12423)

(assert (=> d!1510020 (= lt!1897074 e!2952769)))

(declare-fun c!808479 () Bool)

(assert (=> d!1510020 (= c!808479 (and ((_ is Cons!52913) (t!360317 lt!1896345)) (= (_1!30579 (h!59284 (t!360317 lt!1896345))) key!4653)))))

(assert (=> d!1510020 (noDuplicateKeys!2044 (t!360317 lt!1896345))))

(assert (=> d!1510020 (= (getPair!584 (t!360317 lt!1896345) key!4653) lt!1897074)))

(declare-fun b!4733986 () Bool)

(declare-fun res!2004589 () Bool)

(declare-fun e!2952765 () Bool)

(assert (=> b!4733986 (=> (not res!2004589) (not e!2952765))))

(assert (=> b!4733986 (= res!2004589 (= (_1!30579 (get!17772 lt!1897074)) key!4653))))

(declare-fun b!4733987 () Bool)

(assert (=> b!4733987 (= e!2952767 e!2952765)))

(declare-fun res!2004587 () Bool)

(assert (=> b!4733987 (=> (not res!2004587) (not e!2952765))))

(assert (=> b!4733987 (= res!2004587 (isDefined!9677 lt!1897074))))

(declare-fun b!4733988 () Bool)

(declare-fun e!2952768 () Option!12423)

(assert (=> b!4733988 (= e!2952769 e!2952768)))

(declare-fun c!808480 () Bool)

(assert (=> b!4733988 (= c!808480 ((_ is Cons!52913) (t!360317 lt!1896345)))))

(declare-fun b!4733989 () Bool)

(assert (=> b!4733989 (= e!2952766 (not (containsKey!3437 (t!360317 lt!1896345) key!4653)))))

(declare-fun b!4733990 () Bool)

(assert (=> b!4733990 (= e!2952768 None!12422)))

(declare-fun b!4733991 () Bool)

(assert (=> b!4733991 (= e!2952765 (contains!16300 (t!360317 lt!1896345) (get!17772 lt!1897074)))))

(declare-fun b!4733992 () Bool)

(assert (=> b!4733992 (= e!2952768 (getPair!584 (t!360317 (t!360317 lt!1896345)) key!4653))))

(declare-fun b!4733993 () Bool)

(assert (=> b!4733993 (= e!2952769 (Some!12422 (h!59284 (t!360317 lt!1896345))))))

(assert (= (and d!1510020 c!808479) b!4733993))

(assert (= (and d!1510020 (not c!808479)) b!4733988))

(assert (= (and b!4733988 c!808480) b!4733992))

(assert (= (and b!4733988 (not c!808480)) b!4733990))

(assert (= (and d!1510020 res!2004588) b!4733989))

(assert (= (and d!1510020 (not res!2004590)) b!4733987))

(assert (= (and b!4733987 res!2004587) b!4733986))

(assert (= (and b!4733986 res!2004589) b!4733991))

(declare-fun m!5677971 () Bool)

(assert (=> d!1510020 m!5677971))

(declare-fun m!5677973 () Bool)

(assert (=> d!1510020 m!5677973))

(declare-fun m!5677975 () Bool)

(assert (=> b!4733991 m!5677975))

(assert (=> b!4733991 m!5677975))

(declare-fun m!5677977 () Bool)

(assert (=> b!4733991 m!5677977))

(assert (=> b!4733986 m!5677975))

(declare-fun m!5677979 () Bool)

(assert (=> b!4733989 m!5677979))

(declare-fun m!5677981 () Bool)

(assert (=> b!4733992 m!5677981))

(declare-fun m!5677983 () Bool)

(assert (=> b!4733987 m!5677983))

(assert (=> b!4733349 d!1510020))

(declare-fun bs!1121778 () Bool)

(declare-fun b!4734001 () Bool)

(assert (= bs!1121778 (and b!4734001 b!4733537)))

(declare-fun lambda!217904 () Int)

(assert (=> bs!1121778 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896756) (= lambda!217904 lambda!217834))))

(declare-fun bs!1121779 () Bool)

(assert (= bs!1121779 (and b!4734001 b!4733594)))

(assert (=> bs!1121779 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217850))))

(declare-fun bs!1121780 () Bool)

(assert (= bs!1121780 (and b!4734001 d!1509826)))

(assert (=> bs!1121780 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896822) (= lambda!217904 lambda!217848))))

(declare-fun bs!1121781 () Bool)

(assert (= bs!1121781 (and b!4734001 d!1509834)))

(assert (=> bs!1121781 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896851) (= lambda!217904 lambda!217852))))

(declare-fun bs!1121782 () Bool)

(assert (= bs!1121782 (and b!4734001 d!1509926)))

(assert (=> bs!1121782 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217871))))

(declare-fun bs!1121783 () Bool)

(assert (= bs!1121783 (and b!4734001 b!4733550)))

(assert (=> bs!1121783 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217841))))

(declare-fun bs!1121784 () Bool)

(assert (= bs!1121784 (and b!4734001 b!4733500)))

(assert (=> bs!1121784 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896706) (= lambda!217904 lambda!217821))))

(declare-fun bs!1121785 () Bool)

(assert (= bs!1121785 (and b!4734001 d!1509864)))

(assert (=> bs!1121785 (not (= lambda!217904 lambda!217860))))

(assert (=> bs!1121783 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896793) (= lambda!217904 lambda!217843))))

(declare-fun bs!1121786 () Bool)

(assert (= bs!1121786 (and b!4734001 b!4733596)))

(assert (=> bs!1121786 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217849))))

(declare-fun bs!1121787 () Bool)

(assert (= bs!1121787 (and b!4734001 b!4733552)))

(assert (=> bs!1121787 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217840))))

(declare-fun bs!1121788 () Bool)

(assert (= bs!1121788 (and b!4734001 d!1509730)))

(assert (=> bs!1121788 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896702) (= lambda!217904 lambda!217822))))

(declare-fun bs!1121789 () Bool)

(assert (= bs!1121789 (and b!4734001 b!4733561)))

(assert (=> bs!1121789 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217846))))

(declare-fun bs!1121790 () Bool)

(assert (= bs!1121790 (and b!4734001 d!1509992)))

(assert (=> bs!1121790 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1897024) (= lambda!217904 lambda!217883))))

(declare-fun bs!1121791 () Bool)

(assert (= bs!1121791 (and b!4734001 d!1509876)))

(assert (=> bs!1121791 (not (= lambda!217904 lambda!217862))))

(declare-fun bs!1121792 () Bool)

(assert (= bs!1121792 (and b!4734001 b!4733900)))

(assert (=> bs!1121792 (= (= (extractMap!2070 (t!360318 lt!1896327)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217904 lambda!217877))))

(declare-fun bs!1121793 () Bool)

(assert (= bs!1121793 (and b!4734001 d!1509984)))

(assert (=> bs!1121793 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896826) (= lambda!217904 lambda!217876))))

(declare-fun bs!1121794 () Bool)

(assert (= bs!1121794 (and b!4734001 d!1509818)))

(assert (=> bs!1121794 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896752) (= lambda!217904 lambda!217839))))

(assert (=> bs!1121778 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217833))))

(declare-fun bs!1121795 () Bool)

(assert (= bs!1121795 (and b!4734001 b!4733502)))

(assert (=> bs!1121795 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217819))))

(assert (=> bs!1121784 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217820))))

(declare-fun bs!1121796 () Bool)

(assert (= bs!1121796 (and b!4734001 d!1509820)))

(assert (=> bs!1121796 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896789) (= lambda!217904 lambda!217844))))

(assert (=> bs!1121779 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896855) (= lambda!217904 lambda!217851))))

(declare-fun bs!1121797 () Bool)

(assert (= bs!1121797 (and b!4734001 b!4733898)))

(assert (=> bs!1121797 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1897028) (= lambda!217904 lambda!217882))))

(assert (=> bs!1121789 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896826) (= lambda!217904 lambda!217847))))

(declare-fun bs!1121798 () Bool)

(assert (= bs!1121798 (and b!4734001 b!4733563)))

(assert (=> bs!1121798 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217845))))

(declare-fun bs!1121799 () Bool)

(assert (= bs!1121799 (and b!4734001 b!4733539)))

(assert (=> bs!1121799 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217904 lambda!217830))))

(assert (=> bs!1121797 (= (= (extractMap!2070 (t!360318 lt!1896327)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217904 lambda!217880))))

(assert (=> b!4734001 true))

(declare-fun bs!1121800 () Bool)

(declare-fun b!4733999 () Bool)

(assert (= bs!1121800 (and b!4733999 b!4733537)))

(declare-fun lambda!217905 () Int)

(assert (=> bs!1121800 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896756) (= lambda!217905 lambda!217834))))

(declare-fun bs!1121801 () Bool)

(assert (= bs!1121801 (and b!4733999 b!4733594)))

(assert (=> bs!1121801 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217850))))

(declare-fun bs!1121802 () Bool)

(assert (= bs!1121802 (and b!4733999 d!1509834)))

(assert (=> bs!1121802 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896851) (= lambda!217905 lambda!217852))))

(declare-fun bs!1121803 () Bool)

(assert (= bs!1121803 (and b!4733999 d!1509926)))

(assert (=> bs!1121803 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217871))))

(declare-fun bs!1121804 () Bool)

(assert (= bs!1121804 (and b!4733999 b!4733550)))

(assert (=> bs!1121804 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217841))))

(declare-fun bs!1121805 () Bool)

(assert (= bs!1121805 (and b!4733999 b!4733500)))

(assert (=> bs!1121805 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896706) (= lambda!217905 lambda!217821))))

(declare-fun bs!1121806 () Bool)

(assert (= bs!1121806 (and b!4733999 d!1509864)))

(assert (=> bs!1121806 (not (= lambda!217905 lambda!217860))))

(assert (=> bs!1121804 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896793) (= lambda!217905 lambda!217843))))

(declare-fun bs!1121807 () Bool)

(assert (= bs!1121807 (and b!4733999 b!4733596)))

(assert (=> bs!1121807 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217849))))

(declare-fun bs!1121808 () Bool)

(assert (= bs!1121808 (and b!4733999 b!4733552)))

(assert (=> bs!1121808 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217840))))

(declare-fun bs!1121809 () Bool)

(assert (= bs!1121809 (and b!4733999 d!1509730)))

(assert (=> bs!1121809 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896702) (= lambda!217905 lambda!217822))))

(declare-fun bs!1121810 () Bool)

(assert (= bs!1121810 (and b!4733999 b!4733561)))

(assert (=> bs!1121810 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217846))))

(declare-fun bs!1121811 () Bool)

(assert (= bs!1121811 (and b!4733999 d!1509992)))

(assert (=> bs!1121811 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1897024) (= lambda!217905 lambda!217883))))

(declare-fun bs!1121812 () Bool)

(assert (= bs!1121812 (and b!4733999 d!1509876)))

(assert (=> bs!1121812 (not (= lambda!217905 lambda!217862))))

(declare-fun bs!1121813 () Bool)

(assert (= bs!1121813 (and b!4733999 b!4733900)))

(assert (=> bs!1121813 (= (= (extractMap!2070 (t!360318 lt!1896327)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217905 lambda!217877))))

(declare-fun bs!1121814 () Bool)

(assert (= bs!1121814 (and b!4733999 d!1509984)))

(assert (=> bs!1121814 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896826) (= lambda!217905 lambda!217876))))

(declare-fun bs!1121815 () Bool)

(assert (= bs!1121815 (and b!4733999 d!1509818)))

(assert (=> bs!1121815 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896752) (= lambda!217905 lambda!217839))))

(assert (=> bs!1121800 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217833))))

(declare-fun bs!1121816 () Bool)

(assert (= bs!1121816 (and b!4733999 b!4733502)))

(assert (=> bs!1121816 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217819))))

(assert (=> bs!1121805 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217820))))

(declare-fun bs!1121817 () Bool)

(assert (= bs!1121817 (and b!4733999 d!1509820)))

(assert (=> bs!1121817 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896789) (= lambda!217905 lambda!217844))))

(assert (=> bs!1121801 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896855) (= lambda!217905 lambda!217851))))

(declare-fun bs!1121818 () Bool)

(assert (= bs!1121818 (and b!4733999 d!1509826)))

(assert (=> bs!1121818 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896822) (= lambda!217905 lambda!217848))))

(declare-fun bs!1121819 () Bool)

(assert (= bs!1121819 (and b!4733999 b!4734001)))

(assert (=> bs!1121819 (= lambda!217905 lambda!217904)))

(declare-fun bs!1121820 () Bool)

(assert (= bs!1121820 (and b!4733999 b!4733898)))

(assert (=> bs!1121820 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1897028) (= lambda!217905 lambda!217882))))

(assert (=> bs!1121810 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896826) (= lambda!217905 lambda!217847))))

(declare-fun bs!1121821 () Bool)

(assert (= bs!1121821 (and b!4733999 b!4733563)))

(assert (=> bs!1121821 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217845))))

(declare-fun bs!1121822 () Bool)

(assert (= bs!1121822 (and b!4733999 b!4733539)))

(assert (=> bs!1121822 (= (= (extractMap!2070 (t!360318 lt!1896327)) lt!1896343) (= lambda!217905 lambda!217830))))

(assert (=> bs!1121820 (= (= (extractMap!2070 (t!360318 lt!1896327)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217905 lambda!217880))))

(assert (=> b!4733999 true))

(declare-fun lambda!217906 () Int)

(declare-fun lt!1897094 () ListMap!5341)

(assert (=> b!4733999 (= (= lt!1897094 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217906 lambda!217905))))

(assert (=> bs!1121800 (= (= lt!1897094 lt!1896756) (= lambda!217906 lambda!217834))))

(assert (=> bs!1121801 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217850))))

(assert (=> bs!1121802 (= (= lt!1897094 lt!1896851) (= lambda!217906 lambda!217852))))

(assert (=> bs!1121803 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217871))))

(assert (=> bs!1121804 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217841))))

(assert (=> bs!1121805 (= (= lt!1897094 lt!1896706) (= lambda!217906 lambda!217821))))

(assert (=> bs!1121806 (not (= lambda!217906 lambda!217860))))

(assert (=> bs!1121804 (= (= lt!1897094 lt!1896793) (= lambda!217906 lambda!217843))))

(assert (=> bs!1121807 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217849))))

(assert (=> bs!1121808 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217840))))

(assert (=> bs!1121809 (= (= lt!1897094 lt!1896702) (= lambda!217906 lambda!217822))))

(assert (=> bs!1121810 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217846))))

(assert (=> bs!1121811 (= (= lt!1897094 lt!1897024) (= lambda!217906 lambda!217883))))

(assert (=> bs!1121812 (not (= lambda!217906 lambda!217862))))

(assert (=> bs!1121813 (= (= lt!1897094 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217906 lambda!217877))))

(assert (=> bs!1121814 (= (= lt!1897094 lt!1896826) (= lambda!217906 lambda!217876))))

(assert (=> bs!1121815 (= (= lt!1897094 lt!1896752) (= lambda!217906 lambda!217839))))

(assert (=> bs!1121800 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217833))))

(assert (=> bs!1121816 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217819))))

(assert (=> bs!1121805 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217820))))

(assert (=> bs!1121817 (= (= lt!1897094 lt!1896789) (= lambda!217906 lambda!217844))))

(assert (=> bs!1121801 (= (= lt!1897094 lt!1896855) (= lambda!217906 lambda!217851))))

(assert (=> bs!1121818 (= (= lt!1897094 lt!1896822) (= lambda!217906 lambda!217848))))

(assert (=> bs!1121819 (= (= lt!1897094 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217906 lambda!217904))))

(assert (=> bs!1121820 (= (= lt!1897094 lt!1897028) (= lambda!217906 lambda!217882))))

(assert (=> bs!1121810 (= (= lt!1897094 lt!1896826) (= lambda!217906 lambda!217847))))

(assert (=> bs!1121821 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217845))))

(assert (=> bs!1121822 (= (= lt!1897094 lt!1896343) (= lambda!217906 lambda!217830))))

(assert (=> bs!1121820 (= (= lt!1897094 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217906 lambda!217880))))

(assert (=> b!4733999 true))

(declare-fun bs!1121823 () Bool)

(declare-fun d!1510022 () Bool)

(assert (= bs!1121823 (and d!1510022 b!4733999)))

(declare-fun lt!1897090 () ListMap!5341)

(declare-fun lambda!217907 () Int)

(assert (=> bs!1121823 (= (= lt!1897090 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217907 lambda!217905))))

(declare-fun bs!1121824 () Bool)

(assert (= bs!1121824 (and d!1510022 b!4733537)))

(assert (=> bs!1121824 (= (= lt!1897090 lt!1896756) (= lambda!217907 lambda!217834))))

(declare-fun bs!1121825 () Bool)

(assert (= bs!1121825 (and d!1510022 b!4733594)))

(assert (=> bs!1121825 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217850))))

(declare-fun bs!1121826 () Bool)

(assert (= bs!1121826 (and d!1510022 d!1509834)))

(assert (=> bs!1121826 (= (= lt!1897090 lt!1896851) (= lambda!217907 lambda!217852))))

(declare-fun bs!1121827 () Bool)

(assert (= bs!1121827 (and d!1510022 d!1509926)))

(assert (=> bs!1121827 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217871))))

(declare-fun bs!1121828 () Bool)

(assert (= bs!1121828 (and d!1510022 b!4733550)))

(assert (=> bs!1121828 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217841))))

(declare-fun bs!1121829 () Bool)

(assert (= bs!1121829 (and d!1510022 b!4733500)))

(assert (=> bs!1121829 (= (= lt!1897090 lt!1896706) (= lambda!217907 lambda!217821))))

(declare-fun bs!1121830 () Bool)

(assert (= bs!1121830 (and d!1510022 d!1509864)))

(assert (=> bs!1121830 (not (= lambda!217907 lambda!217860))))

(assert (=> bs!1121828 (= (= lt!1897090 lt!1896793) (= lambda!217907 lambda!217843))))

(declare-fun bs!1121831 () Bool)

(assert (= bs!1121831 (and d!1510022 b!4733596)))

(assert (=> bs!1121831 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217849))))

(declare-fun bs!1121832 () Bool)

(assert (= bs!1121832 (and d!1510022 b!4733552)))

(assert (=> bs!1121832 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217840))))

(declare-fun bs!1121834 () Bool)

(assert (= bs!1121834 (and d!1510022 d!1509730)))

(assert (=> bs!1121834 (= (= lt!1897090 lt!1896702) (= lambda!217907 lambda!217822))))

(declare-fun bs!1121835 () Bool)

(assert (= bs!1121835 (and d!1510022 b!4733561)))

(assert (=> bs!1121835 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217846))))

(declare-fun bs!1121836 () Bool)

(assert (= bs!1121836 (and d!1510022 d!1509992)))

(assert (=> bs!1121836 (= (= lt!1897090 lt!1897024) (= lambda!217907 lambda!217883))))

(declare-fun bs!1121837 () Bool)

(assert (= bs!1121837 (and d!1510022 d!1509876)))

(assert (=> bs!1121837 (not (= lambda!217907 lambda!217862))))

(declare-fun bs!1121838 () Bool)

(assert (= bs!1121838 (and d!1510022 b!4733900)))

(assert (=> bs!1121838 (= (= lt!1897090 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217907 lambda!217877))))

(declare-fun bs!1121839 () Bool)

(assert (= bs!1121839 (and d!1510022 d!1509984)))

(assert (=> bs!1121839 (= (= lt!1897090 lt!1896826) (= lambda!217907 lambda!217876))))

(declare-fun bs!1121840 () Bool)

(assert (= bs!1121840 (and d!1510022 d!1509818)))

(assert (=> bs!1121840 (= (= lt!1897090 lt!1896752) (= lambda!217907 lambda!217839))))

(assert (=> bs!1121824 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217833))))

(declare-fun bs!1121841 () Bool)

(assert (= bs!1121841 (and d!1510022 b!4733502)))

(assert (=> bs!1121841 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217819))))

(assert (=> bs!1121829 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217820))))

(declare-fun bs!1121842 () Bool)

(assert (= bs!1121842 (and d!1510022 d!1509820)))

(assert (=> bs!1121842 (= (= lt!1897090 lt!1896789) (= lambda!217907 lambda!217844))))

(assert (=> bs!1121825 (= (= lt!1897090 lt!1896855) (= lambda!217907 lambda!217851))))

(declare-fun bs!1121843 () Bool)

(assert (= bs!1121843 (and d!1510022 d!1509826)))

(assert (=> bs!1121843 (= (= lt!1897090 lt!1896822) (= lambda!217907 lambda!217848))))

(declare-fun bs!1121844 () Bool)

(assert (= bs!1121844 (and d!1510022 b!4734001)))

(assert (=> bs!1121844 (= (= lt!1897090 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217907 lambda!217904))))

(declare-fun bs!1121845 () Bool)

(assert (= bs!1121845 (and d!1510022 b!4733898)))

(assert (=> bs!1121845 (= (= lt!1897090 lt!1897028) (= lambda!217907 lambda!217882))))

(assert (=> bs!1121823 (= (= lt!1897090 lt!1897094) (= lambda!217907 lambda!217906))))

(assert (=> bs!1121835 (= (= lt!1897090 lt!1896826) (= lambda!217907 lambda!217847))))

(declare-fun bs!1121846 () Bool)

(assert (= bs!1121846 (and d!1510022 b!4733563)))

(assert (=> bs!1121846 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217845))))

(declare-fun bs!1121847 () Bool)

(assert (= bs!1121847 (and d!1510022 b!4733539)))

(assert (=> bs!1121847 (= (= lt!1897090 lt!1896343) (= lambda!217907 lambda!217830))))

(assert (=> bs!1121845 (= (= lt!1897090 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217907 lambda!217880))))

(assert (=> d!1510022 true))

(declare-fun c!808481 () Bool)

(declare-fun bm!331108 () Bool)

(declare-fun call!331113 () Bool)

(assert (=> bm!331108 (= call!331113 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 lt!1896327))) (ite c!808481 lambda!217904 lambda!217906)))))

(declare-fun b!4733998 () Bool)

(declare-fun e!2952776 () Bool)

(assert (=> b!4733998 (= e!2952776 call!331113)))

(declare-fun bm!331109 () Bool)

(declare-fun call!331115 () Unit!131735)

(assert (=> bm!331109 (= call!331115 (lemmaContainsAllItsOwnKeys!820 (extractMap!2070 (t!360318 lt!1896327))))))

(declare-fun call!331114 () Bool)

(declare-fun bm!331110 () Bool)

(assert (=> bm!331110 (= call!331114 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 lt!1896327))) (ite c!808481 lambda!217904 lambda!217906)))))

(declare-fun e!2952774 () Bool)

(assert (=> d!1510022 e!2952774))

(declare-fun res!2004595 () Bool)

(assert (=> d!1510022 (=> (not res!2004595) (not e!2952774))))

(assert (=> d!1510022 (= res!2004595 (forall!11653 (_2!30580 (h!59285 lt!1896327)) lambda!217907))))

(declare-fun e!2952775 () ListMap!5341)

(assert (=> d!1510022 (= lt!1897090 e!2952775)))

(assert (=> d!1510022 (= c!808481 ((_ is Nil!52913) (_2!30580 (h!59285 lt!1896327))))))

(assert (=> d!1510022 (noDuplicateKeys!2044 (_2!30580 (h!59285 lt!1896327)))))

(assert (=> d!1510022 (= (addToMapMapFromBucket!1474 (_2!30580 (h!59285 lt!1896327)) (extractMap!2070 (t!360318 lt!1896327))) lt!1897090)))

(assert (=> b!4733999 (= e!2952775 lt!1897094)))

(declare-fun lt!1897085 () ListMap!5341)

(assert (=> b!4733999 (= lt!1897085 (+!2292 (extractMap!2070 (t!360318 lt!1896327)) (h!59284 (_2!30580 (h!59285 lt!1896327)))))))

(assert (=> b!4733999 (= lt!1897094 (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 lt!1896327))) (+!2292 (extractMap!2070 (t!360318 lt!1896327)) (h!59284 (_2!30580 (h!59285 lt!1896327))))))))

(declare-fun lt!1897086 () Unit!131735)

(assert (=> b!4733999 (= lt!1897086 call!331115)))

(assert (=> b!4733999 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 lt!1896327))) lambda!217905)))

(declare-fun lt!1897083 () Unit!131735)

(assert (=> b!4733999 (= lt!1897083 lt!1897086)))

(assert (=> b!4733999 (forall!11653 (toList!5978 lt!1897085) lambda!217906)))

(declare-fun lt!1897084 () Unit!131735)

(declare-fun Unit!131902 () Unit!131735)

(assert (=> b!4733999 (= lt!1897084 Unit!131902)))

(assert (=> b!4733999 (forall!11653 (t!360317 (_2!30580 (h!59285 lt!1896327))) lambda!217906)))

(declare-fun lt!1897080 () Unit!131735)

(declare-fun Unit!131903 () Unit!131735)

(assert (=> b!4733999 (= lt!1897080 Unit!131903)))

(declare-fun lt!1897095 () Unit!131735)

(declare-fun Unit!131904 () Unit!131735)

(assert (=> b!4733999 (= lt!1897095 Unit!131904)))

(declare-fun lt!1897077 () Unit!131735)

(assert (=> b!4733999 (= lt!1897077 (forallContained!3693 (toList!5978 lt!1897085) lambda!217906 (h!59284 (_2!30580 (h!59285 lt!1896327)))))))

(assert (=> b!4733999 (contains!16298 lt!1897085 (_1!30579 (h!59284 (_2!30580 (h!59285 lt!1896327)))))))

(declare-fun lt!1897089 () Unit!131735)

(declare-fun Unit!131905 () Unit!131735)

(assert (=> b!4733999 (= lt!1897089 Unit!131905)))

(assert (=> b!4733999 (contains!16298 lt!1897094 (_1!30579 (h!59284 (_2!30580 (h!59285 lt!1896327)))))))

(declare-fun lt!1897091 () Unit!131735)

(declare-fun Unit!131906 () Unit!131735)

(assert (=> b!4733999 (= lt!1897091 Unit!131906)))

(assert (=> b!4733999 (forall!11653 (_2!30580 (h!59285 lt!1896327)) lambda!217906)))

(declare-fun lt!1897093 () Unit!131735)

(declare-fun Unit!131907 () Unit!131735)

(assert (=> b!4733999 (= lt!1897093 Unit!131907)))

(assert (=> b!4733999 (forall!11653 (toList!5978 lt!1897085) lambda!217906)))

(declare-fun lt!1897081 () Unit!131735)

(declare-fun Unit!131908 () Unit!131735)

(assert (=> b!4733999 (= lt!1897081 Unit!131908)))

(declare-fun lt!1897076 () Unit!131735)

(declare-fun Unit!131909 () Unit!131735)

(assert (=> b!4733999 (= lt!1897076 Unit!131909)))

(declare-fun lt!1897078 () Unit!131735)

(assert (=> b!4733999 (= lt!1897078 (addForallContainsKeyThenBeforeAdding!819 (extractMap!2070 (t!360318 lt!1896327)) lt!1897094 (_1!30579 (h!59284 (_2!30580 (h!59285 lt!1896327)))) (_2!30579 (h!59284 (_2!30580 (h!59285 lt!1896327))))))))

(assert (=> b!4733999 call!331114))

(declare-fun lt!1897087 () Unit!131735)

(assert (=> b!4733999 (= lt!1897087 lt!1897078)))

(assert (=> b!4733999 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 lt!1896327))) lambda!217906)))

(declare-fun lt!1897075 () Unit!131735)

(declare-fun Unit!131911 () Unit!131735)

(assert (=> b!4733999 (= lt!1897075 Unit!131911)))

(declare-fun res!2004597 () Bool)

(assert (=> b!4733999 (= res!2004597 (forall!11653 (_2!30580 (h!59285 lt!1896327)) lambda!217906))))

(assert (=> b!4733999 (=> (not res!2004597) (not e!2952776))))

(assert (=> b!4733999 e!2952776))

(declare-fun lt!1897079 () Unit!131735)

(declare-fun Unit!131912 () Unit!131735)

(assert (=> b!4733999 (= lt!1897079 Unit!131912)))

(declare-fun b!4734000 () Bool)

(declare-fun res!2004596 () Bool)

(assert (=> b!4734000 (=> (not res!2004596) (not e!2952774))))

(assert (=> b!4734000 (= res!2004596 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 lt!1896327))) lambda!217907))))

(assert (=> b!4734001 (= e!2952775 (extractMap!2070 (t!360318 lt!1896327)))))

(declare-fun lt!1897088 () Unit!131735)

(assert (=> b!4734001 (= lt!1897088 call!331115)))

(assert (=> b!4734001 call!331114))

(declare-fun lt!1897092 () Unit!131735)

(assert (=> b!4734001 (= lt!1897092 lt!1897088)))

(assert (=> b!4734001 call!331113))

(declare-fun lt!1897082 () Unit!131735)

(declare-fun Unit!131913 () Unit!131735)

(assert (=> b!4734001 (= lt!1897082 Unit!131913)))

(declare-fun b!4734002 () Bool)

(assert (=> b!4734002 (= e!2952774 (invariantList!1535 (toList!5978 lt!1897090)))))

(assert (= (and d!1510022 c!808481) b!4734001))

(assert (= (and d!1510022 (not c!808481)) b!4733999))

(assert (= (and b!4733999 res!2004597) b!4733998))

(assert (= (or b!4734001 b!4733999) bm!331109))

(assert (= (or b!4734001 b!4733999) bm!331110))

(assert (= (or b!4734001 b!4733998) bm!331108))

(assert (= (and d!1510022 res!2004595) b!4734000))

(assert (= (and b!4734000 res!2004596) b!4734002))

(declare-fun m!5678003 () Bool)

(assert (=> bm!331108 m!5678003))

(declare-fun m!5678005 () Bool)

(assert (=> d!1510022 m!5678005))

(declare-fun m!5678007 () Bool)

(assert (=> d!1510022 m!5678007))

(assert (=> bm!331109 m!5677187))

(declare-fun m!5678009 () Bool)

(assert (=> bm!331109 m!5678009))

(declare-fun m!5678011 () Bool)

(assert (=> b!4733999 m!5678011))

(declare-fun m!5678013 () Bool)

(assert (=> b!4733999 m!5678013))

(declare-fun m!5678015 () Bool)

(assert (=> b!4733999 m!5678015))

(declare-fun m!5678017 () Bool)

(assert (=> b!4733999 m!5678017))

(declare-fun m!5678019 () Bool)

(assert (=> b!4733999 m!5678019))

(declare-fun m!5678021 () Bool)

(assert (=> b!4733999 m!5678021))

(declare-fun m!5678023 () Bool)

(assert (=> b!4733999 m!5678023))

(assert (=> b!4733999 m!5678011))

(assert (=> b!4733999 m!5677187))

(declare-fun m!5678025 () Bool)

(assert (=> b!4733999 m!5678025))

(declare-fun m!5678027 () Bool)

(assert (=> b!4733999 m!5678027))

(assert (=> b!4733999 m!5678017))

(assert (=> b!4733999 m!5677187))

(declare-fun m!5678029 () Bool)

(assert (=> b!4733999 m!5678029))

(assert (=> b!4733999 m!5678025))

(declare-fun m!5678031 () Bool)

(assert (=> b!4733999 m!5678031))

(declare-fun m!5678033 () Bool)

(assert (=> b!4734000 m!5678033))

(assert (=> bm!331110 m!5678003))

(declare-fun m!5678035 () Bool)

(assert (=> b!4734002 m!5678035))

(assert (=> b!4733534 d!1510022))

(declare-fun bs!1121848 () Bool)

(declare-fun d!1510034 () Bool)

(assert (= bs!1121848 (and d!1510034 start!482632)))

(declare-fun lambda!217908 () Int)

(assert (=> bs!1121848 (= lambda!217908 lambda!217712)))

(declare-fun bs!1121849 () Bool)

(assert (= bs!1121849 (and d!1510034 d!1509850)))

(assert (=> bs!1121849 (= lambda!217908 lambda!217854)))

(declare-fun bs!1121850 () Bool)

(assert (= bs!1121850 (and d!1510034 d!1509868)))

(assert (=> bs!1121850 (= lambda!217908 lambda!217861)))

(declare-fun bs!1121851 () Bool)

(assert (= bs!1121851 (and d!1510034 d!1509812)))

(assert (=> bs!1121851 (= lambda!217908 lambda!217826)))

(declare-fun bs!1121852 () Bool)

(assert (= bs!1121852 (and d!1510034 d!1509816)))

(assert (=> bs!1121852 (= lambda!217908 lambda!217829)))

(declare-fun bs!1121853 () Bool)

(assert (= bs!1121853 (and d!1510034 d!1509792)))

(assert (=> bs!1121853 (= lambda!217908 lambda!217825)))

(declare-fun bs!1121854 () Bool)

(assert (= bs!1121854 (and d!1510034 d!1509862)))

(assert (=> bs!1121854 (not (= lambda!217908 lambda!217857))))

(declare-fun bs!1121855 () Bool)

(assert (= bs!1121855 (and d!1510034 d!1509704)))

(assert (=> bs!1121855 (= lambda!217908 lambda!217749)))

(declare-fun bs!1121856 () Bool)

(assert (= bs!1121856 (and d!1510034 d!1509702)))

(assert (=> bs!1121856 (= lambda!217908 lambda!217718)))

(declare-fun bs!1121857 () Bool)

(assert (= bs!1121857 (and d!1510034 d!1509848)))

(assert (=> bs!1121857 (= lambda!217908 lambda!217853)))

(declare-fun lt!1897100 () ListMap!5341)

(assert (=> d!1510034 (invariantList!1535 (toList!5978 lt!1897100))))

(declare-fun e!2952790 () ListMap!5341)

(assert (=> d!1510034 (= lt!1897100 e!2952790)))

(declare-fun c!808486 () Bool)

(assert (=> d!1510034 (= c!808486 ((_ is Cons!52914) (t!360318 lt!1896327)))))

(assert (=> d!1510034 (forall!11651 (t!360318 lt!1896327) lambda!217908)))

(assert (=> d!1510034 (= (extractMap!2070 (t!360318 lt!1896327)) lt!1897100)))

(declare-fun b!4734020 () Bool)

(assert (=> b!4734020 (= e!2952790 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (t!360318 lt!1896327))) (extractMap!2070 (t!360318 (t!360318 lt!1896327)))))))

(declare-fun b!4734021 () Bool)

(assert (=> b!4734021 (= e!2952790 (ListMap!5342 Nil!52913))))

(assert (= (and d!1510034 c!808486) b!4734020))

(assert (= (and d!1510034 (not c!808486)) b!4734021))

(declare-fun m!5678037 () Bool)

(assert (=> d!1510034 m!5678037))

(declare-fun m!5678039 () Bool)

(assert (=> d!1510034 m!5678039))

(declare-fun m!5678041 () Bool)

(assert (=> b!4734020 m!5678041))

(assert (=> b!4734020 m!5678041))

(declare-fun m!5678043 () Bool)

(assert (=> b!4734020 m!5678043))

(assert (=> b!4733534 d!1510034))

(declare-fun b!4734026 () Bool)

(declare-fun e!2952797 () Unit!131735)

(declare-fun lt!1897106 () Unit!131735)

(assert (=> b!4734026 (= e!2952797 lt!1897106)))

(declare-fun lt!1897102 () Unit!131735)

(assert (=> b!4734026 (= lt!1897102 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653))))

(assert (=> b!4734026 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653))))

(declare-fun lt!1897105 () Unit!131735)

(assert (=> b!4734026 (= lt!1897105 lt!1897102)))

(assert (=> b!4734026 (= lt!1897106 (lemmaInListThenGetKeysListContains!969 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653))))

(declare-fun call!331116 () Bool)

(assert (=> b!4734026 call!331116))

(declare-fun b!4734027 () Bool)

(declare-fun e!2952794 () List!53040)

(assert (=> b!4734027 (= e!2952794 (keys!19029 (extractMap!2070 (toList!5977 lt!1896338))))))

(declare-fun b!4734028 () Bool)

(declare-fun e!2952795 () Bool)

(assert (=> b!4734028 (= e!2952795 (contains!16302 (keys!19029 (extractMap!2070 (toList!5977 lt!1896338))) key!4653))))

(declare-fun b!4734029 () Bool)

(declare-fun e!2952793 () Bool)

(assert (=> b!4734029 (= e!2952793 e!2952795)))

(declare-fun res!2004609 () Bool)

(assert (=> b!4734029 (=> (not res!2004609) (not e!2952795))))

(assert (=> b!4734029 (= res!2004609 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653)))))

(declare-fun b!4734030 () Bool)

(assert (=> b!4734030 false))

(declare-fun lt!1897101 () Unit!131735)

(declare-fun lt!1897107 () Unit!131735)

(assert (=> b!4734030 (= lt!1897101 lt!1897107)))

(assert (=> b!4734030 (containsKey!3440 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653)))

(assert (=> b!4734030 (= lt!1897107 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653))))

(declare-fun e!2952798 () Unit!131735)

(declare-fun Unit!131915 () Unit!131735)

(assert (=> b!4734030 (= e!2952798 Unit!131915)))

(declare-fun bm!331111 () Bool)

(assert (=> bm!331111 (= call!331116 (contains!16302 e!2952794 key!4653))))

(declare-fun c!808489 () Bool)

(declare-fun c!808490 () Bool)

(assert (=> bm!331111 (= c!808489 c!808490)))

(declare-fun d!1510036 () Bool)

(assert (=> d!1510036 e!2952793))

(declare-fun res!2004607 () Bool)

(assert (=> d!1510036 (=> res!2004607 e!2952793)))

(declare-fun e!2952796 () Bool)

(assert (=> d!1510036 (= res!2004607 e!2952796)))

(declare-fun res!2004608 () Bool)

(assert (=> d!1510036 (=> (not res!2004608) (not e!2952796))))

(declare-fun lt!1897104 () Bool)

(assert (=> d!1510036 (= res!2004608 (not lt!1897104))))

(declare-fun lt!1897103 () Bool)

(assert (=> d!1510036 (= lt!1897104 lt!1897103)))

(declare-fun lt!1897108 () Unit!131735)

(assert (=> d!1510036 (= lt!1897108 e!2952797)))

(assert (=> d!1510036 (= c!808490 lt!1897103)))

(assert (=> d!1510036 (= lt!1897103 (containsKey!3440 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338))) key!4653))))

(assert (=> d!1510036 (= (contains!16298 (extractMap!2070 (toList!5977 lt!1896338)) key!4653) lt!1897104)))

(declare-fun b!4734031 () Bool)

(assert (=> b!4734031 (= e!2952794 (getKeysList!974 (toList!5978 (extractMap!2070 (toList!5977 lt!1896338)))))))

(declare-fun b!4734032 () Bool)

(assert (=> b!4734032 (= e!2952797 e!2952798)))

(declare-fun c!808491 () Bool)

(assert (=> b!4734032 (= c!808491 call!331116)))

(declare-fun b!4734033 () Bool)

(declare-fun Unit!131916 () Unit!131735)

(assert (=> b!4734033 (= e!2952798 Unit!131916)))

(declare-fun b!4734034 () Bool)

(assert (=> b!4734034 (= e!2952796 (not (contains!16302 (keys!19029 (extractMap!2070 (toList!5977 lt!1896338))) key!4653)))))

(assert (= (and d!1510036 c!808490) b!4734026))

(assert (= (and d!1510036 (not c!808490)) b!4734032))

(assert (= (and b!4734032 c!808491) b!4734030))

(assert (= (and b!4734032 (not c!808491)) b!4734033))

(assert (= (or b!4734026 b!4734032) bm!331111))

(assert (= (and bm!331111 c!808489) b!4734031))

(assert (= (and bm!331111 (not c!808489)) b!4734027))

(assert (= (and d!1510036 res!2004608) b!4734034))

(assert (= (and d!1510036 (not res!2004607)) b!4734029))

(assert (= (and b!4734029 res!2004609) b!4734028))

(declare-fun m!5678047 () Bool)

(assert (=> b!4734031 m!5678047))

(declare-fun m!5678049 () Bool)

(assert (=> b!4734026 m!5678049))

(declare-fun m!5678051 () Bool)

(assert (=> b!4734026 m!5678051))

(assert (=> b!4734026 m!5678051))

(declare-fun m!5678053 () Bool)

(assert (=> b!4734026 m!5678053))

(declare-fun m!5678055 () Bool)

(assert (=> b!4734026 m!5678055))

(declare-fun m!5678057 () Bool)

(assert (=> d!1510036 m!5678057))

(declare-fun m!5678061 () Bool)

(assert (=> bm!331111 m!5678061))

(assert (=> b!4734027 m!5677191))

(declare-fun m!5678063 () Bool)

(assert (=> b!4734027 m!5678063))

(assert (=> b!4734029 m!5678051))

(assert (=> b!4734029 m!5678051))

(assert (=> b!4734029 m!5678053))

(assert (=> b!4734034 m!5677191))

(assert (=> b!4734034 m!5678063))

(assert (=> b!4734034 m!5678063))

(declare-fun m!5678069 () Bool)

(assert (=> b!4734034 m!5678069))

(assert (=> b!4734030 m!5678057))

(declare-fun m!5678071 () Bool)

(assert (=> b!4734030 m!5678071))

(assert (=> b!4734028 m!5677191))

(assert (=> b!4734028 m!5678063))

(assert (=> b!4734028 m!5678063))

(assert (=> b!4734028 m!5678069))

(assert (=> d!1509816 d!1510036))

(declare-fun bs!1121858 () Bool)

(declare-fun d!1510042 () Bool)

(assert (= bs!1121858 (and d!1510042 start!482632)))

(declare-fun lambda!217909 () Int)

(assert (=> bs!1121858 (= lambda!217909 lambda!217712)))

(declare-fun bs!1121859 () Bool)

(assert (= bs!1121859 (and d!1510042 d!1509850)))

(assert (=> bs!1121859 (= lambda!217909 lambda!217854)))

(declare-fun bs!1121860 () Bool)

(assert (= bs!1121860 (and d!1510042 d!1509868)))

(assert (=> bs!1121860 (= lambda!217909 lambda!217861)))

(declare-fun bs!1121861 () Bool)

(assert (= bs!1121861 (and d!1510042 d!1509812)))

(assert (=> bs!1121861 (= lambda!217909 lambda!217826)))

(declare-fun bs!1121862 () Bool)

(assert (= bs!1121862 (and d!1510042 d!1509816)))

(assert (=> bs!1121862 (= lambda!217909 lambda!217829)))

(declare-fun bs!1121863 () Bool)

(assert (= bs!1121863 (and d!1510042 d!1509792)))

(assert (=> bs!1121863 (= lambda!217909 lambda!217825)))

(declare-fun bs!1121864 () Bool)

(assert (= bs!1121864 (and d!1510042 d!1509862)))

(assert (=> bs!1121864 (not (= lambda!217909 lambda!217857))))

(declare-fun bs!1121865 () Bool)

(assert (= bs!1121865 (and d!1510042 d!1510034)))

(assert (=> bs!1121865 (= lambda!217909 lambda!217908)))

(declare-fun bs!1121866 () Bool)

(assert (= bs!1121866 (and d!1510042 d!1509704)))

(assert (=> bs!1121866 (= lambda!217909 lambda!217749)))

(declare-fun bs!1121867 () Bool)

(assert (= bs!1121867 (and d!1510042 d!1509702)))

(assert (=> bs!1121867 (= lambda!217909 lambda!217718)))

(declare-fun bs!1121868 () Bool)

(assert (= bs!1121868 (and d!1510042 d!1509848)))

(assert (=> bs!1121868 (= lambda!217909 lambda!217853)))

(declare-fun lt!1897110 () ListMap!5341)

(assert (=> d!1510042 (invariantList!1535 (toList!5978 lt!1897110))))

(declare-fun e!2952801 () ListMap!5341)

(assert (=> d!1510042 (= lt!1897110 e!2952801)))

(declare-fun c!808494 () Bool)

(assert (=> d!1510042 (= c!808494 ((_ is Cons!52914) (toList!5977 lt!1896338)))))

(assert (=> d!1510042 (forall!11651 (toList!5977 lt!1896338) lambda!217909)))

(assert (=> d!1510042 (= (extractMap!2070 (toList!5977 lt!1896338)) lt!1897110)))

(declare-fun b!4734039 () Bool)

(assert (=> b!4734039 (= e!2952801 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (toList!5977 lt!1896338))) (extractMap!2070 (t!360318 (toList!5977 lt!1896338)))))))

(declare-fun b!4734040 () Bool)

(assert (=> b!4734040 (= e!2952801 (ListMap!5342 Nil!52913))))

(assert (= (and d!1510042 c!808494) b!4734039))

(assert (= (and d!1510042 (not c!808494)) b!4734040))

(declare-fun m!5678073 () Bool)

(assert (=> d!1510042 m!5678073))

(declare-fun m!5678075 () Bool)

(assert (=> d!1510042 m!5678075))

(declare-fun m!5678077 () Bool)

(assert (=> b!4734039 m!5678077))

(assert (=> b!4734039 m!5678077))

(declare-fun m!5678079 () Bool)

(assert (=> b!4734039 m!5678079))

(assert (=> d!1509816 d!1510042))

(declare-fun d!1510044 () Bool)

(assert (=> d!1510044 (contains!16298 (extractMap!2070 (toList!5977 lt!1896338)) key!4653)))

(assert (=> d!1510044 true))

(declare-fun _$34!865 () Unit!131735)

(assert (=> d!1510044 (= (choose!33520 lt!1896338 key!4653 hashF!1323) _$34!865)))

(declare-fun bs!1121869 () Bool)

(assert (= bs!1121869 d!1510044))

(assert (=> bs!1121869 m!5677191))

(assert (=> bs!1121869 m!5677191))

(assert (=> bs!1121869 m!5677193))

(assert (=> d!1509816 d!1510044))

(declare-fun d!1510060 () Bool)

(declare-fun res!2004623 () Bool)

(declare-fun e!2952822 () Bool)

(assert (=> d!1510060 (=> res!2004623 e!2952822)))

(assert (=> d!1510060 (= res!2004623 ((_ is Nil!52914) (toList!5977 lt!1896338)))))

(assert (=> d!1510060 (= (forall!11651 (toList!5977 lt!1896338) lambda!217829) e!2952822)))

(declare-fun b!4734068 () Bool)

(declare-fun e!2952823 () Bool)

(assert (=> b!4734068 (= e!2952822 e!2952823)))

(declare-fun res!2004624 () Bool)

(assert (=> b!4734068 (=> (not res!2004624) (not e!2952823))))

(assert (=> b!4734068 (= res!2004624 (dynLambda!21856 lambda!217829 (h!59285 (toList!5977 lt!1896338))))))

(declare-fun b!4734069 () Bool)

(assert (=> b!4734069 (= e!2952823 (forall!11651 (t!360318 (toList!5977 lt!1896338)) lambda!217829))))

(assert (= (and d!1510060 (not res!2004623)) b!4734068))

(assert (= (and b!4734068 res!2004624) b!4734069))

(declare-fun b_lambda!180689 () Bool)

(assert (=> (not b_lambda!180689) (not b!4734068)))

(declare-fun m!5678129 () Bool)

(assert (=> b!4734068 m!5678129))

(declare-fun m!5678131 () Bool)

(assert (=> b!4734069 m!5678131))

(assert (=> d!1509816 d!1510060))

(declare-fun d!1510064 () Bool)

(declare-fun res!2004625 () Bool)

(declare-fun e!2952824 () Bool)

(assert (=> d!1510064 (=> res!2004625 e!2952824)))

(assert (=> d!1510064 (= res!2004625 (not ((_ is Cons!52913) (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> d!1510064 (= (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023)))) e!2952824)))

(declare-fun b!4734070 () Bool)

(declare-fun e!2952825 () Bool)

(assert (=> b!4734070 (= e!2952824 e!2952825)))

(declare-fun res!2004626 () Bool)

(assert (=> b!4734070 (=> (not res!2004626) (not e!2952825))))

(assert (=> b!4734070 (= res!2004626 (not (containsKey!3437 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(declare-fun b!4734071 () Bool)

(assert (=> b!4734071 (= e!2952825 (noDuplicateKeys!2044 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (= (and d!1510064 (not res!2004625)) b!4734070))

(assert (= (and b!4734070 res!2004626) b!4734071))

(declare-fun m!5678133 () Bool)

(assert (=> b!4734070 m!5678133))

(declare-fun m!5678135 () Bool)

(assert (=> b!4734071 m!5678135))

(assert (=> bs!1121638 d!1510064))

(declare-fun d!1510066 () Bool)

(declare-fun res!2004631 () Bool)

(declare-fun e!2952830 () Bool)

(assert (=> d!1510066 (=> res!2004631 e!2952830)))

(assert (=> d!1510066 (= res!2004631 (or ((_ is Nil!52914) (toList!5977 lt!1896338)) ((_ is Nil!52914) (t!360318 (toList!5977 lt!1896338)))))))

(assert (=> d!1510066 (= (isStrictlySorted!771 (toList!5977 lt!1896338)) e!2952830)))

(declare-fun b!4734076 () Bool)

(declare-fun e!2952831 () Bool)

(assert (=> b!4734076 (= e!2952830 e!2952831)))

(declare-fun res!2004632 () Bool)

(assert (=> b!4734076 (=> (not res!2004632) (not e!2952831))))

(assert (=> b!4734076 (= res!2004632 (bvslt (_1!30580 (h!59285 (toList!5977 lt!1896338))) (_1!30580 (h!59285 (t!360318 (toList!5977 lt!1896338))))))))

(declare-fun b!4734077 () Bool)

(assert (=> b!4734077 (= e!2952831 (isStrictlySorted!771 (t!360318 (toList!5977 lt!1896338))))))

(assert (= (and d!1510066 (not res!2004631)) b!4734076))

(assert (= (and b!4734076 res!2004632) b!4734077))

(declare-fun m!5678137 () Bool)

(assert (=> b!4734077 m!5678137))

(assert (=> d!1509872 d!1510066))

(assert (=> bm!331070 d!1509926))

(declare-fun b!4734078 () Bool)

(declare-fun e!2952836 () Unit!131735)

(declare-fun lt!1897124 () Unit!131735)

(assert (=> b!4734078 (= e!2952836 lt!1897124)))

(declare-fun lt!1897120 () Unit!131735)

(assert (=> b!4734078 (= lt!1897120 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896805) (_1!30579 lt!1896326)))))

(assert (=> b!4734078 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896805) (_1!30579 lt!1896326)))))

(declare-fun lt!1897123 () Unit!131735)

(assert (=> b!4734078 (= lt!1897123 lt!1897120)))

(assert (=> b!4734078 (= lt!1897124 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896805) (_1!30579 lt!1896326)))))

(declare-fun call!331118 () Bool)

(assert (=> b!4734078 call!331118))

(declare-fun b!4734079 () Bool)

(declare-fun e!2952833 () List!53040)

(assert (=> b!4734079 (= e!2952833 (keys!19029 lt!1896805))))

(declare-fun b!4734080 () Bool)

(declare-fun e!2952834 () Bool)

(assert (=> b!4734080 (= e!2952834 (contains!16302 (keys!19029 lt!1896805) (_1!30579 lt!1896326)))))

(declare-fun b!4734081 () Bool)

(declare-fun e!2952832 () Bool)

(assert (=> b!4734081 (= e!2952832 e!2952834)))

(declare-fun res!2004635 () Bool)

(assert (=> b!4734081 (=> (not res!2004635) (not e!2952834))))

(assert (=> b!4734081 (= res!2004635 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896805) (_1!30579 lt!1896326))))))

(declare-fun b!4734082 () Bool)

(assert (=> b!4734082 false))

(declare-fun lt!1897119 () Unit!131735)

(declare-fun lt!1897125 () Unit!131735)

(assert (=> b!4734082 (= lt!1897119 lt!1897125)))

(assert (=> b!4734082 (containsKey!3440 (toList!5978 lt!1896805) (_1!30579 lt!1896326))))

(assert (=> b!4734082 (= lt!1897125 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896805) (_1!30579 lt!1896326)))))

(declare-fun e!2952837 () Unit!131735)

(declare-fun Unit!131921 () Unit!131735)

(assert (=> b!4734082 (= e!2952837 Unit!131921)))

(declare-fun bm!331113 () Bool)

(assert (=> bm!331113 (= call!331118 (contains!16302 e!2952833 (_1!30579 lt!1896326)))))

(declare-fun c!808502 () Bool)

(declare-fun c!808503 () Bool)

(assert (=> bm!331113 (= c!808502 c!808503)))

(declare-fun d!1510068 () Bool)

(assert (=> d!1510068 e!2952832))

(declare-fun res!2004633 () Bool)

(assert (=> d!1510068 (=> res!2004633 e!2952832)))

(declare-fun e!2952835 () Bool)

(assert (=> d!1510068 (= res!2004633 e!2952835)))

(declare-fun res!2004634 () Bool)

(assert (=> d!1510068 (=> (not res!2004634) (not e!2952835))))

(declare-fun lt!1897122 () Bool)

(assert (=> d!1510068 (= res!2004634 (not lt!1897122))))

(declare-fun lt!1897121 () Bool)

(assert (=> d!1510068 (= lt!1897122 lt!1897121)))

(declare-fun lt!1897126 () Unit!131735)

(assert (=> d!1510068 (= lt!1897126 e!2952836)))

(assert (=> d!1510068 (= c!808503 lt!1897121)))

(assert (=> d!1510068 (= lt!1897121 (containsKey!3440 (toList!5978 lt!1896805) (_1!30579 lt!1896326)))))

(assert (=> d!1510068 (= (contains!16298 lt!1896805 (_1!30579 lt!1896326)) lt!1897122)))

(declare-fun b!4734083 () Bool)

(assert (=> b!4734083 (= e!2952833 (getKeysList!974 (toList!5978 lt!1896805)))))

(declare-fun b!4734084 () Bool)

(assert (=> b!4734084 (= e!2952836 e!2952837)))

(declare-fun c!808504 () Bool)

(assert (=> b!4734084 (= c!808504 call!331118)))

(declare-fun b!4734085 () Bool)

(declare-fun Unit!131923 () Unit!131735)

(assert (=> b!4734085 (= e!2952837 Unit!131923)))

(declare-fun b!4734086 () Bool)

(assert (=> b!4734086 (= e!2952835 (not (contains!16302 (keys!19029 lt!1896805) (_1!30579 lt!1896326))))))

(assert (= (and d!1510068 c!808503) b!4734078))

(assert (= (and d!1510068 (not c!808503)) b!4734084))

(assert (= (and b!4734084 c!808504) b!4734082))

(assert (= (and b!4734084 (not c!808504)) b!4734085))

(assert (= (or b!4734078 b!4734084) bm!331113))

(assert (= (and bm!331113 c!808502) b!4734083))

(assert (= (and bm!331113 (not c!808502)) b!4734079))

(assert (= (and d!1510068 res!2004634) b!4734086))

(assert (= (and d!1510068 (not res!2004633)) b!4734081))

(assert (= (and b!4734081 res!2004635) b!4734080))

(declare-fun m!5678139 () Bool)

(assert (=> b!4734083 m!5678139))

(declare-fun m!5678141 () Bool)

(assert (=> b!4734078 m!5678141))

(assert (=> b!4734078 m!5677291))

(assert (=> b!4734078 m!5677291))

(declare-fun m!5678143 () Bool)

(assert (=> b!4734078 m!5678143))

(declare-fun m!5678145 () Bool)

(assert (=> b!4734078 m!5678145))

(declare-fun m!5678147 () Bool)

(assert (=> d!1510068 m!5678147))

(declare-fun m!5678149 () Bool)

(assert (=> bm!331113 m!5678149))

(declare-fun m!5678151 () Bool)

(assert (=> b!4734079 m!5678151))

(assert (=> b!4734081 m!5677291))

(assert (=> b!4734081 m!5677291))

(assert (=> b!4734081 m!5678143))

(assert (=> b!4734086 m!5678151))

(assert (=> b!4734086 m!5678151))

(declare-fun m!5678153 () Bool)

(assert (=> b!4734086 m!5678153))

(assert (=> b!4734082 m!5678147))

(declare-fun m!5678155 () Bool)

(assert (=> b!4734082 m!5678155))

(assert (=> b!4734080 m!5678151))

(assert (=> b!4734080 m!5678151))

(assert (=> b!4734080 m!5678153))

(assert (=> d!1509824 d!1510068))

(declare-fun b!4734089 () Bool)

(declare-fun e!2952839 () Option!12426)

(assert (=> b!4734089 (= e!2952839 (getValueByKey!2000 (t!360317 lt!1896803) (_1!30579 lt!1896326)))))

(declare-fun d!1510070 () Bool)

(declare-fun c!808505 () Bool)

(assert (=> d!1510070 (= c!808505 (and ((_ is Cons!52913) lt!1896803) (= (_1!30579 (h!59284 lt!1896803)) (_1!30579 lt!1896326))))))

(declare-fun e!2952838 () Option!12426)

(assert (=> d!1510070 (= (getValueByKey!2000 lt!1896803 (_1!30579 lt!1896326)) e!2952838)))

(declare-fun b!4734087 () Bool)

(assert (=> b!4734087 (= e!2952838 (Some!12425 (_2!30579 (h!59284 lt!1896803))))))

(declare-fun b!4734090 () Bool)

(assert (=> b!4734090 (= e!2952839 None!12425)))

(declare-fun b!4734088 () Bool)

(assert (=> b!4734088 (= e!2952838 e!2952839)))

(declare-fun c!808506 () Bool)

(assert (=> b!4734088 (= c!808506 (and ((_ is Cons!52913) lt!1896803) (not (= (_1!30579 (h!59284 lt!1896803)) (_1!30579 lt!1896326)))))))

(assert (= (and d!1510070 c!808505) b!4734087))

(assert (= (and d!1510070 (not c!808505)) b!4734088))

(assert (= (and b!4734088 c!808506) b!4734089))

(assert (= (and b!4734088 (not c!808506)) b!4734090))

(declare-fun m!5678157 () Bool)

(assert (=> b!4734089 m!5678157))

(assert (=> d!1509824 d!1510070))

(declare-fun d!1510072 () Bool)

(assert (=> d!1510072 (= (getValueByKey!2000 lt!1896803 (_1!30579 lt!1896326)) (Some!12425 (_2!30579 lt!1896326)))))

(declare-fun lt!1897127 () Unit!131735)

(assert (=> d!1510072 (= lt!1897127 (choose!33529 lt!1896803 (_1!30579 lt!1896326) (_2!30579 lt!1896326)))))

(declare-fun e!2952840 () Bool)

(assert (=> d!1510072 e!2952840))

(declare-fun res!2004636 () Bool)

(assert (=> d!1510072 (=> (not res!2004636) (not e!2952840))))

(assert (=> d!1510072 (= res!2004636 (invariantList!1535 lt!1896803))))

(assert (=> d!1510072 (= (lemmaContainsTupThenGetReturnValue!1102 lt!1896803 (_1!30579 lt!1896326) (_2!30579 lt!1896326)) lt!1897127)))

(declare-fun b!4734091 () Bool)

(declare-fun res!2004637 () Bool)

(assert (=> b!4734091 (=> (not res!2004637) (not e!2952840))))

(assert (=> b!4734091 (= res!2004637 (containsKey!3440 lt!1896803 (_1!30579 lt!1896326)))))

(declare-fun b!4734092 () Bool)

(assert (=> b!4734092 (= e!2952840 (contains!16300 lt!1896803 (tuple2!54571 (_1!30579 lt!1896326) (_2!30579 lt!1896326))))))

(assert (= (and d!1510072 res!2004636) b!4734091))

(assert (= (and b!4734091 res!2004637) b!4734092))

(assert (=> d!1510072 m!5677285))

(declare-fun m!5678159 () Bool)

(assert (=> d!1510072 m!5678159))

(declare-fun m!5678161 () Bool)

(assert (=> d!1510072 m!5678161))

(declare-fun m!5678163 () Bool)

(assert (=> b!4734091 m!5678163))

(declare-fun m!5678165 () Bool)

(assert (=> b!4734092 m!5678165))

(assert (=> d!1509824 d!1510072))

(declare-fun b!4734093 () Bool)

(declare-fun c!808510 () Bool)

(assert (=> b!4734093 (= c!808510 ((_ is Cons!52913) (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))))))

(declare-fun e!2952846 () List!53037)

(declare-fun e!2952843 () List!53037)

(assert (=> b!4734093 (= e!2952846 e!2952843)))

(declare-fun b!4734094 () Bool)

(assert (=> b!4734094 false))

(declare-fun lt!1897134 () Unit!131735)

(declare-fun lt!1897136 () Unit!131735)

(assert (=> b!4734094 (= lt!1897134 lt!1897136)))

(assert (=> b!4734094 (containsKey!3440 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)))))))

(assert (=> b!4734094 (= lt!1897136 (lemmaInGetKeysListThenContainsKey!973 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))))))))

(declare-fun lt!1897132 () Unit!131735)

(declare-fun lt!1897131 () Unit!131735)

(assert (=> b!4734094 (= lt!1897132 lt!1897131)))

(declare-fun call!331122 () List!53040)

(assert (=> b!4734094 (contains!16302 call!331122 (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)))))))

(declare-fun lt!1897130 () List!53037)

(assert (=> b!4734094 (= lt!1897131 (lemmaInListThenGetKeysListContains!969 lt!1897130 (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))))))))

(assert (=> b!4734094 (= lt!1897130 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (_1!30579 lt!1896326) (_2!30579 lt!1896326)))))

(declare-fun e!2952842 () Unit!131735)

(declare-fun Unit!131925 () Unit!131735)

(assert (=> b!4734094 (= e!2952842 Unit!131925)))

(declare-fun b!4734095 () Bool)

(declare-fun res!2004638 () Bool)

(declare-fun e!2952841 () Bool)

(assert (=> b!4734095 (=> (not res!2004638) (not e!2952841))))

(declare-fun lt!1897138 () List!53037)

(assert (=> b!4734095 (= res!2004638 (contains!16300 lt!1897138 (tuple2!54571 (_1!30579 lt!1896326) (_2!30579 lt!1896326))))))

(declare-fun b!4734096 () Bool)

(declare-fun call!331121 () List!53037)

(assert (=> b!4734096 (= e!2952846 call!331121)))

(declare-fun b!4734097 () Bool)

(declare-fun res!2004639 () Bool)

(assert (=> b!4734097 (=> (not res!2004639) (not e!2952841))))

(assert (=> b!4734097 (= res!2004639 (containsKey!3440 lt!1897138 (_1!30579 lt!1896326)))))

(declare-fun b!4734098 () Bool)

(declare-fun Unit!131927 () Unit!131735)

(assert (=> b!4734098 (= e!2952842 Unit!131927)))

(declare-fun e!2952844 () List!53037)

(declare-fun bm!331114 () Bool)

(declare-fun c!808511 () Bool)

(declare-fun c!808509 () Bool)

(declare-fun call!331120 () List!53037)

(assert (=> bm!331114 (= call!331120 ($colon$colon!1085 (ite c!808511 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (ite c!808509 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)) e!2952844)) (ite (or c!808511 c!808509) (tuple2!54571 (_1!30579 lt!1896326) (_2!30579 lt!1896326)) (ite c!808510 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (tuple2!54571 (_1!30579 lt!1896326) (_2!30579 lt!1896326))))))))

(declare-fun bm!331115 () Bool)

(declare-fun call!331119 () List!53037)

(assert (=> bm!331115 (= call!331119 call!331121)))

(declare-fun c!808508 () Bool)

(assert (=> bm!331115 (= c!808508 c!808510)))

(declare-fun e!2952847 () Bool)

(declare-fun b!4734099 () Bool)

(assert (=> b!4734099 (= e!2952847 (not (containsKey!3440 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)) (_1!30579 lt!1896326))))))

(declare-fun b!4734100 () Bool)

(assert (=> b!4734100 (= e!2952844 Nil!52913)))

(declare-fun b!4734101 () Bool)

(assert (=> b!4734101 (= e!2952844 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (_1!30579 lt!1896326) (_2!30579 lt!1896326)))))

(declare-fun b!4734102 () Bool)

(assert (=> b!4734102 (= e!2952843 call!331119)))

(declare-fun b!4734103 () Bool)

(declare-fun e!2952845 () List!53037)

(assert (=> b!4734103 (= e!2952845 call!331120)))

(declare-fun lt!1897129 () List!53040)

(assert (=> b!4734103 (= lt!1897129 call!331122)))

(declare-fun lt!1897133 () Unit!131735)

(assert (=> b!4734103 (= lt!1897133 (lemmaSubseqRefl!148 lt!1897129))))

(assert (=> b!4734103 (subseq!664 lt!1897129 lt!1897129)))

(declare-fun lt!1897128 () Unit!131735)

(assert (=> b!4734103 (= lt!1897128 lt!1897133)))

(declare-fun b!4734104 () Bool)

(declare-fun lt!1897137 () List!53037)

(assert (=> b!4734104 (= e!2952843 lt!1897137)))

(assert (=> b!4734104 (= lt!1897137 call!331119)))

(declare-fun c!808507 () Bool)

(assert (=> b!4734104 (= c!808507 (containsKey!3440 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (_1!30579 lt!1896326) (_2!30579 lt!1896326)) (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))))))))

(declare-fun lt!1897135 () Unit!131735)

(assert (=> b!4734104 (= lt!1897135 e!2952842)))

(declare-fun bm!331116 () Bool)

(assert (=> bm!331116 (= call!331122 (getKeysList!974 (ite c!808511 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)) lt!1897130)))))

(declare-fun b!4734105 () Bool)

(assert (=> b!4734105 (= e!2952841 (= (content!9442 (getKeysList!974 lt!1897138)) ((_ map or) (content!9442 (getKeysList!974 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)))) (store ((as const (Array K!14260 Bool)) false) (_1!30579 lt!1896326) true))))))

(declare-fun d!1510074 () Bool)

(assert (=> d!1510074 e!2952841))

(declare-fun res!2004641 () Bool)

(assert (=> d!1510074 (=> (not res!2004641) (not e!2952841))))

(assert (=> d!1510074 (= res!2004641 (invariantList!1535 lt!1897138))))

(assert (=> d!1510074 (= lt!1897138 e!2952845)))

(assert (=> d!1510074 (= c!808511 (and ((_ is Cons!52913) (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))) (= (_1!30579 (h!59284 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)))) (_1!30579 lt!1896326))))))

(assert (=> d!1510074 (invariantList!1535 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)))))

(assert (=> d!1510074 (= (insertNoDuplicatedKeys!610 (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343)) (_1!30579 lt!1896326) (_2!30579 lt!1896326)) lt!1897138)))

(declare-fun b!4734106 () Bool)

(assert (=> b!4734106 (= e!2952845 e!2952846)))

(declare-fun res!2004640 () Bool)

(assert (=> b!4734106 (= res!2004640 ((_ is Cons!52913) (toList!5978 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343))))))

(assert (=> b!4734106 (=> (not res!2004640) (not e!2952847))))

(assert (=> b!4734106 (= c!808509 e!2952847)))

(declare-fun bm!331117 () Bool)

(assert (=> bm!331117 (= call!331121 call!331120)))

(assert (= (and d!1510074 c!808511) b!4734103))

(assert (= (and d!1510074 (not c!808511)) b!4734106))

(assert (= (and b!4734106 res!2004640) b!4734099))

(assert (= (and b!4734106 c!808509) b!4734096))

(assert (= (and b!4734106 (not c!808509)) b!4734093))

(assert (= (and b!4734093 c!808510) b!4734104))

(assert (= (and b!4734093 (not c!808510)) b!4734102))

(assert (= (and b!4734104 c!808507) b!4734094))

(assert (= (and b!4734104 (not c!808507)) b!4734098))

(assert (= (or b!4734104 b!4734102) bm!331115))

(assert (= (and bm!331115 c!808508) b!4734101))

(assert (= (and bm!331115 (not c!808508)) b!4734100))

(assert (= (or b!4734096 bm!331115) bm!331117))

(assert (= (or b!4734103 b!4734094) bm!331116))

(assert (= (or b!4734103 bm!331117) bm!331114))

(assert (= (and d!1510074 res!2004641) b!4734097))

(assert (= (and b!4734097 res!2004639) b!4734095))

(assert (= (and b!4734095 res!2004638) b!4734105))

(declare-fun m!5678167 () Bool)

(assert (=> b!4734103 m!5678167))

(declare-fun m!5678169 () Bool)

(assert (=> b!4734103 m!5678169))

(declare-fun m!5678171 () Bool)

(assert (=> bm!331116 m!5678171))

(declare-fun m!5678173 () Bool)

(assert (=> bm!331114 m!5678173))

(declare-fun m!5678175 () Bool)

(assert (=> b!4734095 m!5678175))

(declare-fun m!5678177 () Bool)

(assert (=> b!4734105 m!5678177))

(declare-fun m!5678179 () Bool)

(assert (=> b!4734105 m!5678179))

(declare-fun m!5678181 () Bool)

(assert (=> b!4734105 m!5678181))

(declare-fun m!5678183 () Bool)

(assert (=> b!4734105 m!5678183))

(assert (=> b!4734105 m!5678179))

(assert (=> b!4734105 m!5678183))

(declare-fun m!5678185 () Bool)

(assert (=> b!4734105 m!5678185))

(declare-fun m!5678187 () Bool)

(assert (=> b!4734104 m!5678187))

(assert (=> b!4734104 m!5678187))

(declare-fun m!5678189 () Bool)

(assert (=> b!4734104 m!5678189))

(declare-fun m!5678191 () Bool)

(assert (=> d!1510074 m!5678191))

(declare-fun m!5678193 () Bool)

(assert (=> d!1510074 m!5678193))

(declare-fun m!5678195 () Bool)

(assert (=> b!4734097 m!5678195))

(declare-fun m!5678197 () Bool)

(assert (=> b!4734099 m!5678197))

(assert (=> b!4734094 m!5678187))

(declare-fun m!5678199 () Bool)

(assert (=> b!4734094 m!5678199))

(declare-fun m!5678201 () Bool)

(assert (=> b!4734094 m!5678201))

(declare-fun m!5678203 () Bool)

(assert (=> b!4734094 m!5678203))

(declare-fun m!5678205 () Bool)

(assert (=> b!4734094 m!5678205))

(assert (=> b!4734101 m!5678187))

(assert (=> d!1509824 d!1510074))

(declare-fun d!1510076 () Bool)

(declare-fun lt!1897139 () Bool)

(assert (=> d!1510076 (= lt!1897139 (select (content!9440 (toList!5978 lt!1896731)) (h!59284 oldBucket!34)))))

(declare-fun e!2952849 () Bool)

(assert (=> d!1510076 (= lt!1897139 e!2952849)))

(declare-fun res!2004643 () Bool)

(assert (=> d!1510076 (=> (not res!2004643) (not e!2952849))))

(assert (=> d!1510076 (= res!2004643 ((_ is Cons!52913) (toList!5978 lt!1896731)))))

(assert (=> d!1510076 (= (contains!16300 (toList!5978 lt!1896731) (h!59284 oldBucket!34)) lt!1897139)))

(declare-fun b!4734107 () Bool)

(declare-fun e!2952848 () Bool)

(assert (=> b!4734107 (= e!2952849 e!2952848)))

(declare-fun res!2004642 () Bool)

(assert (=> b!4734107 (=> res!2004642 e!2952848)))

(assert (=> b!4734107 (= res!2004642 (= (h!59284 (toList!5978 lt!1896731)) (h!59284 oldBucket!34)))))

(declare-fun b!4734108 () Bool)

(assert (=> b!4734108 (= e!2952848 (contains!16300 (t!360317 (toList!5978 lt!1896731)) (h!59284 oldBucket!34)))))

(assert (= (and d!1510076 res!2004643) b!4734107))

(assert (= (and b!4734107 (not res!2004642)) b!4734108))

(declare-fun m!5678207 () Bool)

(assert (=> d!1510076 m!5678207))

(declare-fun m!5678209 () Bool)

(assert (=> d!1510076 m!5678209))

(declare-fun m!5678211 () Bool)

(assert (=> b!4734108 m!5678211))

(assert (=> b!4733533 d!1510076))

(declare-fun b!4734120 () Bool)

(declare-fun e!2952855 () Option!12425)

(assert (=> b!4734120 (= e!2952855 (getValueByKey!1999 (t!360318 (toList!5977 lm!2023)) lt!1896441))))

(declare-fun b!4734119 () Bool)

(declare-fun e!2952854 () Option!12425)

(assert (=> b!4734119 (= e!2952854 e!2952855)))

(declare-fun c!808517 () Bool)

(assert (=> b!4734119 (= c!808517 (and ((_ is Cons!52914) (toList!5977 lm!2023)) (not (= (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896441))))))

(declare-fun b!4734121 () Bool)

(assert (=> b!4734121 (= e!2952855 None!12424)))

(declare-fun b!4734118 () Bool)

(assert (=> b!4734118 (= e!2952854 (Some!12424 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(declare-fun d!1510078 () Bool)

(declare-fun c!808516 () Bool)

(assert (=> d!1510078 (= c!808516 (and ((_ is Cons!52914) (toList!5977 lm!2023)) (= (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896441)))))

(assert (=> d!1510078 (= (getValueByKey!1999 (toList!5977 lm!2023) lt!1896441) e!2952854)))

(assert (= (and d!1510078 c!808516) b!4734118))

(assert (= (and d!1510078 (not c!808516)) b!4734119))

(assert (= (and b!4734119 c!808517) b!4734120))

(assert (= (and b!4734119 (not c!808517)) b!4734121))

(declare-fun m!5678213 () Bool)

(assert (=> b!4734120 m!5678213))

(assert (=> b!4733368 d!1510078))

(declare-fun d!1510080 () Bool)

(declare-fun res!2004644 () Bool)

(declare-fun e!2952856 () Bool)

(assert (=> d!1510080 (=> res!2004644 e!2952856)))

(assert (=> d!1510080 (= res!2004644 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510080 (= (forall!11653 (toList!5978 lt!1896343) lambda!217852) e!2952856)))

(declare-fun b!4734122 () Bool)

(declare-fun e!2952857 () Bool)

(assert (=> b!4734122 (= e!2952856 e!2952857)))

(declare-fun res!2004645 () Bool)

(assert (=> b!4734122 (=> (not res!2004645) (not e!2952857))))

(assert (=> b!4734122 (= res!2004645 (dynLambda!21858 lambda!217852 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734123 () Bool)

(assert (=> b!4734123 (= e!2952857 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217852))))

(assert (= (and d!1510080 (not res!2004644)) b!4734122))

(assert (= (and b!4734122 res!2004645) b!4734123))

(declare-fun b_lambda!180691 () Bool)

(assert (=> (not b_lambda!180691) (not b!4734122)))

(declare-fun m!5678215 () Bool)

(assert (=> b!4734122 m!5678215))

(declare-fun m!5678217 () Bool)

(assert (=> b!4734123 m!5678217))

(assert (=> b!4733595 d!1510080))

(declare-fun b!4734126 () Bool)

(declare-fun e!2952859 () Option!12426)

(assert (=> b!4734126 (= e!2952859 (getValueByKey!2000 (t!360317 (toList!5978 lt!1896805)) (_1!30579 lt!1896326)))))

(declare-fun d!1510082 () Bool)

(declare-fun c!808518 () Bool)

(assert (=> d!1510082 (= c!808518 (and ((_ is Cons!52913) (toList!5978 lt!1896805)) (= (_1!30579 (h!59284 (toList!5978 lt!1896805))) (_1!30579 lt!1896326))))))

(declare-fun e!2952858 () Option!12426)

(assert (=> d!1510082 (= (getValueByKey!2000 (toList!5978 lt!1896805) (_1!30579 lt!1896326)) e!2952858)))

(declare-fun b!4734124 () Bool)

(assert (=> b!4734124 (= e!2952858 (Some!12425 (_2!30579 (h!59284 (toList!5978 lt!1896805)))))))

(declare-fun b!4734127 () Bool)

(assert (=> b!4734127 (= e!2952859 None!12425)))

(declare-fun b!4734125 () Bool)

(assert (=> b!4734125 (= e!2952858 e!2952859)))

(declare-fun c!808519 () Bool)

(assert (=> b!4734125 (= c!808519 (and ((_ is Cons!52913) (toList!5978 lt!1896805)) (not (= (_1!30579 (h!59284 (toList!5978 lt!1896805))) (_1!30579 lt!1896326)))))))

(assert (= (and d!1510082 c!808518) b!4734124))

(assert (= (and d!1510082 (not c!808518)) b!4734125))

(assert (= (and b!4734125 c!808519) b!4734126))

(assert (= (and b!4734125 (not c!808519)) b!4734127))

(declare-fun m!5678219 () Bool)

(assert (=> b!4734126 m!5678219))

(assert (=> b!4733558 d!1510082))

(declare-fun d!1510084 () Bool)

(declare-fun lt!1897142 () Bool)

(assert (=> d!1510084 (= lt!1897142 (select (content!9442 e!2952548) key!4653))))

(declare-fun e!2952860 () Bool)

(assert (=> d!1510084 (= lt!1897142 e!2952860)))

(declare-fun res!2004646 () Bool)

(assert (=> d!1510084 (=> (not res!2004646) (not e!2952860))))

(assert (=> d!1510084 (= res!2004646 ((_ is Cons!52916) e!2952548))))

(assert (=> d!1510084 (= (contains!16302 e!2952548 key!4653) lt!1897142)))

(declare-fun b!4734128 () Bool)

(declare-fun e!2952861 () Bool)

(assert (=> b!4734128 (= e!2952860 e!2952861)))

(declare-fun res!2004647 () Bool)

(assert (=> b!4734128 (=> res!2004647 e!2952861)))

(assert (=> b!4734128 (= res!2004647 (= (h!59289 e!2952548) key!4653))))

(declare-fun b!4734129 () Bool)

(assert (=> b!4734129 (= e!2952861 (contains!16302 (t!360322 e!2952548) key!4653))))

(assert (= (and d!1510084 res!2004646) b!4734128))

(assert (= (and b!4734128 (not res!2004647)) b!4734129))

(declare-fun m!5678221 () Bool)

(assert (=> d!1510084 m!5678221))

(declare-fun m!5678223 () Bool)

(assert (=> d!1510084 m!5678223))

(declare-fun m!5678225 () Bool)

(assert (=> b!4734129 m!5678225))

(assert (=> bm!331083 d!1510084))

(declare-fun d!1510086 () Bool)

(declare-fun res!2004648 () Bool)

(declare-fun e!2952862 () Bool)

(assert (=> d!1510086 (=> res!2004648 e!2952862)))

(assert (=> d!1510086 (= res!2004648 ((_ is Nil!52914) (t!360318 (toList!5977 lm!2023))))))

(assert (=> d!1510086 (= (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217712) e!2952862)))

(declare-fun b!4734130 () Bool)

(declare-fun e!2952863 () Bool)

(assert (=> b!4734130 (= e!2952862 e!2952863)))

(declare-fun res!2004649 () Bool)

(assert (=> b!4734130 (=> (not res!2004649) (not e!2952863))))

(assert (=> b!4734130 (= res!2004649 (dynLambda!21856 lambda!217712 (h!59285 (t!360318 (toList!5977 lm!2023)))))))

(declare-fun b!4734131 () Bool)

(assert (=> b!4734131 (= e!2952863 (forall!11651 (t!360318 (t!360318 (toList!5977 lm!2023))) lambda!217712))))

(assert (= (and d!1510086 (not res!2004648)) b!4734130))

(assert (= (and b!4734130 res!2004649) b!4734131))

(declare-fun b_lambda!180693 () Bool)

(assert (=> (not b_lambda!180693) (not b!4734130)))

(declare-fun m!5678227 () Bool)

(assert (=> b!4734130 m!5678227))

(declare-fun m!5678229 () Bool)

(assert (=> b!4734131 m!5678229))

(assert (=> b!4733273 d!1510086))

(declare-fun d!1510088 () Bool)

(declare-fun isEmpty!29214 (Option!12425) Bool)

(assert (=> d!1510088 (= (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341)) (not (isEmpty!29214 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341))))))

(declare-fun bs!1121874 () Bool)

(assert (= bs!1121874 d!1510088))

(assert (=> bs!1121874 m!5676685))

(declare-fun m!5678231 () Bool)

(assert (=> bs!1121874 m!5678231))

(assert (=> b!4733326 d!1510088))

(declare-fun b!4734134 () Bool)

(declare-fun e!2952865 () Option!12425)

(assert (=> b!4734134 (= e!2952865 (getValueByKey!1999 (t!360318 (toList!5977 lm!2023)) lt!1896341))))

(declare-fun b!4734133 () Bool)

(declare-fun e!2952864 () Option!12425)

(assert (=> b!4734133 (= e!2952864 e!2952865)))

(declare-fun c!808521 () Bool)

(assert (=> b!4734133 (= c!808521 (and ((_ is Cons!52914) (toList!5977 lm!2023)) (not (= (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896341))))))

(declare-fun b!4734135 () Bool)

(assert (=> b!4734135 (= e!2952865 None!12424)))

(declare-fun b!4734132 () Bool)

(assert (=> b!4734132 (= e!2952864 (Some!12424 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(declare-fun d!1510090 () Bool)

(declare-fun c!808520 () Bool)

(assert (=> d!1510090 (= c!808520 (and ((_ is Cons!52914) (toList!5977 lm!2023)) (= (_1!30580 (h!59285 (toList!5977 lm!2023))) lt!1896341)))))

(assert (=> d!1510090 (= (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341) e!2952864)))

(assert (= (and d!1510090 c!808520) b!4734132))

(assert (= (and d!1510090 (not c!808520)) b!4734133))

(assert (= (and b!4734133 c!808521) b!4734134))

(assert (= (and b!4734133 (not c!808521)) b!4734135))

(declare-fun m!5678233 () Bool)

(assert (=> b!4734134 m!5678233))

(assert (=> b!4733326 d!1510090))

(declare-fun d!1510092 () Bool)

(assert (=> d!1510092 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896330) key!4653))))

(declare-fun lt!1897144 () Unit!131735)

(assert (=> d!1510092 (= lt!1897144 (choose!33527 (toList!5978 lt!1896330) key!4653))))

(assert (=> d!1510092 (invariantList!1535 (toList!5978 lt!1896330))))

(assert (=> d!1510092 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896330) key!4653) lt!1897144)))

(declare-fun bs!1121882 () Bool)

(assert (= bs!1121882 d!1510092))

(assert (=> bs!1121882 m!5677455))

(assert (=> bs!1121882 m!5677455))

(assert (=> bs!1121882 m!5677457))

(declare-fun m!5678235 () Bool)

(assert (=> bs!1121882 m!5678235))

(assert (=> bs!1121882 m!5677935))

(assert (=> b!4733656 d!1510092))

(declare-fun d!1510094 () Bool)

(assert (=> d!1510094 (= (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896330) key!4653)) (not (isEmpty!29212 (getValueByKey!2000 (toList!5978 lt!1896330) key!4653))))))

(declare-fun bs!1121887 () Bool)

(assert (= bs!1121887 d!1510094))

(assert (=> bs!1121887 m!5677455))

(declare-fun m!5678237 () Bool)

(assert (=> bs!1121887 m!5678237))

(assert (=> b!4733656 d!1510094))

(declare-fun b!4734138 () Bool)

(declare-fun e!2952867 () Option!12426)

(assert (=> b!4734138 (= e!2952867 (getValueByKey!2000 (t!360317 (toList!5978 lt!1896330)) key!4653))))

(declare-fun d!1510096 () Bool)

(declare-fun c!808522 () Bool)

(assert (=> d!1510096 (= c!808522 (and ((_ is Cons!52913) (toList!5978 lt!1896330)) (= (_1!30579 (h!59284 (toList!5978 lt!1896330))) key!4653)))))

(declare-fun e!2952866 () Option!12426)

(assert (=> d!1510096 (= (getValueByKey!2000 (toList!5978 lt!1896330) key!4653) e!2952866)))

(declare-fun b!4734136 () Bool)

(assert (=> b!4734136 (= e!2952866 (Some!12425 (_2!30579 (h!59284 (toList!5978 lt!1896330)))))))

(declare-fun b!4734139 () Bool)

(assert (=> b!4734139 (= e!2952867 None!12425)))

(declare-fun b!4734137 () Bool)

(assert (=> b!4734137 (= e!2952866 e!2952867)))

(declare-fun c!808523 () Bool)

(assert (=> b!4734137 (= c!808523 (and ((_ is Cons!52913) (toList!5978 lt!1896330)) (not (= (_1!30579 (h!59284 (toList!5978 lt!1896330))) key!4653))))))

(assert (= (and d!1510096 c!808522) b!4734136))

(assert (= (and d!1510096 (not c!808522)) b!4734137))

(assert (= (and b!4734137 c!808523) b!4734138))

(assert (= (and b!4734137 (not c!808523)) b!4734139))

(declare-fun m!5678239 () Bool)

(assert (=> b!4734138 m!5678239))

(assert (=> b!4733656 d!1510096))

(declare-fun d!1510098 () Bool)

(assert (=> d!1510098 (contains!16302 (getKeysList!974 (toList!5978 lt!1896330)) key!4653)))

(declare-fun lt!1897145 () Unit!131735)

(assert (=> d!1510098 (= lt!1897145 (choose!33528 (toList!5978 lt!1896330) key!4653))))

(assert (=> d!1510098 (invariantList!1535 (toList!5978 lt!1896330))))

(assert (=> d!1510098 (= (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896330) key!4653) lt!1897145)))

(declare-fun bs!1121891 () Bool)

(assert (= bs!1121891 d!1510098))

(assert (=> bs!1121891 m!5677451))

(assert (=> bs!1121891 m!5677451))

(declare-fun m!5678241 () Bool)

(assert (=> bs!1121891 m!5678241))

(declare-fun m!5678243 () Bool)

(assert (=> bs!1121891 m!5678243))

(assert (=> bs!1121891 m!5677935))

(assert (=> b!4733656 d!1510098))

(declare-fun d!1510100 () Bool)

(declare-fun res!2004650 () Bool)

(declare-fun e!2952868 () Bool)

(assert (=> d!1510100 (=> res!2004650 e!2952868)))

(assert (=> d!1510100 (= res!2004650 (or ((_ is Nil!52914) (toList!5977 lm!2023)) ((_ is Nil!52914) (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1510100 (= (isStrictlySorted!771 (toList!5977 lm!2023)) e!2952868)))

(declare-fun b!4734140 () Bool)

(declare-fun e!2952869 () Bool)

(assert (=> b!4734140 (= e!2952868 e!2952869)))

(declare-fun res!2004651 () Bool)

(assert (=> b!4734140 (=> (not res!2004651) (not e!2952869))))

(assert (=> b!4734140 (= res!2004651 (bvslt (_1!30580 (h!59285 (toList!5977 lm!2023))) (_1!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))))))

(declare-fun b!4734141 () Bool)

(assert (=> b!4734141 (= e!2952869 (isStrictlySorted!771 (t!360318 (toList!5977 lm!2023))))))

(assert (= (and d!1510100 (not res!2004650)) b!4734140))

(assert (= (and b!4734140 res!2004651) b!4734141))

(declare-fun m!5678247 () Bool)

(assert (=> b!4734141 m!5678247))

(assert (=> d!1509666 d!1510100))

(declare-fun d!1510102 () Bool)

(assert (=> d!1510102 (= (get!17773 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341)) (v!47061 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341)))))

(assert (=> d!1509712 d!1510102))

(assert (=> d!1509712 d!1510090))

(declare-fun d!1510106 () Bool)

(declare-fun res!2004654 () Bool)

(declare-fun e!2952872 () Bool)

(assert (=> d!1510106 (=> res!2004654 e!2952872)))

(assert (=> d!1510106 (= res!2004654 (and ((_ is Cons!52913) (t!360317 newBucket!218)) (= (_1!30579 (h!59284 (t!360317 newBucket!218))) (_1!30579 (h!59284 newBucket!218)))))))

(assert (=> d!1510106 (= (containsKey!3437 (t!360317 newBucket!218) (_1!30579 (h!59284 newBucket!218))) e!2952872)))

(declare-fun b!4734144 () Bool)

(declare-fun e!2952873 () Bool)

(assert (=> b!4734144 (= e!2952872 e!2952873)))

(declare-fun res!2004655 () Bool)

(assert (=> b!4734144 (=> (not res!2004655) (not e!2952873))))

(assert (=> b!4734144 (= res!2004655 ((_ is Cons!52913) (t!360317 newBucket!218)))))

(declare-fun b!4734145 () Bool)

(assert (=> b!4734145 (= e!2952873 (containsKey!3437 (t!360317 (t!360317 newBucket!218)) (_1!30579 (h!59284 newBucket!218))))))

(assert (= (and d!1510106 (not res!2004654)) b!4734144))

(assert (= (and b!4734144 res!2004655) b!4734145))

(declare-fun m!5678259 () Bool)

(assert (=> b!4734145 m!5678259))

(assert (=> b!4733280 d!1510106))

(declare-fun b!4734148 () Bool)

(declare-fun e!2952879 () Unit!131735)

(declare-fun lt!1897155 () Unit!131735)

(assert (=> b!4734148 (= e!2952879 lt!1897155)))

(declare-fun lt!1897151 () Unit!131735)

(assert (=> b!4734148 (= lt!1897151 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))))))

(assert (=> b!4734148 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun lt!1897154 () Unit!131735)

(assert (=> b!4734148 (= lt!1897154 lt!1897151)))

(assert (=> b!4734148 (= lt!1897155 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun call!331123 () Bool)

(assert (=> b!4734148 call!331123))

(declare-fun b!4734149 () Bool)

(declare-fun e!2952876 () List!53040)

(assert (=> b!4734149 (= e!2952876 (keys!19029 lt!1896731))))

(declare-fun b!4734150 () Bool)

(declare-fun e!2952877 () Bool)

(assert (=> b!4734150 (= e!2952877 (contains!16302 (keys!19029 lt!1896731) (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun b!4734151 () Bool)

(declare-fun e!2952875 () Bool)

(assert (=> b!4734151 (= e!2952875 e!2952877)))

(declare-fun res!2004660 () Bool)

(assert (=> b!4734151 (=> (not res!2004660) (not e!2952877))))

(assert (=> b!4734151 (= res!2004660 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34)))))))

(declare-fun b!4734152 () Bool)

(assert (=> b!4734152 false))

(declare-fun lt!1897150 () Unit!131735)

(declare-fun lt!1897156 () Unit!131735)

(assert (=> b!4734152 (= lt!1897150 lt!1897156)))

(assert (=> b!4734152 (containsKey!3440 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34)))))

(assert (=> b!4734152 (= lt!1897156 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun e!2952880 () Unit!131735)

(declare-fun Unit!131929 () Unit!131735)

(assert (=> b!4734152 (= e!2952880 Unit!131929)))

(declare-fun bm!331118 () Bool)

(assert (=> bm!331118 (= call!331123 (contains!16302 e!2952876 (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun c!808524 () Bool)

(declare-fun c!808525 () Bool)

(assert (=> bm!331118 (= c!808524 c!808525)))

(declare-fun d!1510110 () Bool)

(assert (=> d!1510110 e!2952875))

(declare-fun res!2004658 () Bool)

(assert (=> d!1510110 (=> res!2004658 e!2952875)))

(declare-fun e!2952878 () Bool)

(assert (=> d!1510110 (= res!2004658 e!2952878)))

(declare-fun res!2004659 () Bool)

(assert (=> d!1510110 (=> (not res!2004659) (not e!2952878))))

(declare-fun lt!1897153 () Bool)

(assert (=> d!1510110 (= res!2004659 (not lt!1897153))))

(declare-fun lt!1897152 () Bool)

(assert (=> d!1510110 (= lt!1897153 lt!1897152)))

(declare-fun lt!1897157 () Unit!131735)

(assert (=> d!1510110 (= lt!1897157 e!2952879)))

(assert (=> d!1510110 (= c!808525 lt!1897152)))

(assert (=> d!1510110 (= lt!1897152 (containsKey!3440 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))))))

(assert (=> d!1510110 (= (contains!16298 lt!1896731 (_1!30579 (h!59284 oldBucket!34))) lt!1897153)))

(declare-fun b!4734153 () Bool)

(assert (=> b!4734153 (= e!2952876 (getKeysList!974 (toList!5978 lt!1896731)))))

(declare-fun b!4734154 () Bool)

(assert (=> b!4734154 (= e!2952879 e!2952880)))

(declare-fun c!808526 () Bool)

(assert (=> b!4734154 (= c!808526 call!331123)))

(declare-fun b!4734155 () Bool)

(declare-fun Unit!131930 () Unit!131735)

(assert (=> b!4734155 (= e!2952880 Unit!131930)))

(declare-fun b!4734156 () Bool)

(assert (=> b!4734156 (= e!2952878 (not (contains!16302 (keys!19029 lt!1896731) (_1!30579 (h!59284 oldBucket!34)))))))

(assert (= (and d!1510110 c!808525) b!4734148))

(assert (= (and d!1510110 (not c!808525)) b!4734154))

(assert (= (and b!4734154 c!808526) b!4734152))

(assert (= (and b!4734154 (not c!808526)) b!4734155))

(assert (= (or b!4734148 b!4734154) bm!331118))

(assert (= (and bm!331118 c!808524) b!4734153))

(assert (= (and bm!331118 (not c!808524)) b!4734149))

(assert (= (and d!1510110 res!2004659) b!4734156))

(assert (= (and d!1510110 (not res!2004658)) b!4734151))

(assert (= (and b!4734151 res!2004660) b!4734150))

(declare-fun m!5678273 () Bool)

(assert (=> b!4734153 m!5678273))

(declare-fun m!5678275 () Bool)

(assert (=> b!4734148 m!5678275))

(assert (=> b!4734148 m!5677175))

(assert (=> b!4734148 m!5677175))

(declare-fun m!5678277 () Bool)

(assert (=> b!4734148 m!5678277))

(declare-fun m!5678279 () Bool)

(assert (=> b!4734148 m!5678279))

(declare-fun m!5678281 () Bool)

(assert (=> d!1510110 m!5678281))

(declare-fun m!5678283 () Bool)

(assert (=> bm!331118 m!5678283))

(declare-fun m!5678285 () Bool)

(assert (=> b!4734149 m!5678285))

(assert (=> b!4734151 m!5677175))

(assert (=> b!4734151 m!5677175))

(assert (=> b!4734151 m!5678277))

(assert (=> b!4734156 m!5678285))

(assert (=> b!4734156 m!5678285))

(declare-fun m!5678287 () Bool)

(assert (=> b!4734156 m!5678287))

(assert (=> b!4734152 m!5678281))

(declare-fun m!5678289 () Bool)

(assert (=> b!4734152 m!5678289))

(assert (=> b!4734150 m!5678285))

(assert (=> b!4734150 m!5678285))

(assert (=> b!4734150 m!5678287))

(assert (=> d!1509808 d!1510110))

(declare-fun b!4734159 () Bool)

(declare-fun e!2952882 () Option!12426)

(assert (=> b!4734159 (= e!2952882 (getValueByKey!2000 (t!360317 lt!1896729) (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun d!1510114 () Bool)

(declare-fun c!808527 () Bool)

(assert (=> d!1510114 (= c!808527 (and ((_ is Cons!52913) lt!1896729) (= (_1!30579 (h!59284 lt!1896729)) (_1!30579 (h!59284 oldBucket!34)))))))

(declare-fun e!2952881 () Option!12426)

(assert (=> d!1510114 (= (getValueByKey!2000 lt!1896729 (_1!30579 (h!59284 oldBucket!34))) e!2952881)))

(declare-fun b!4734157 () Bool)

(assert (=> b!4734157 (= e!2952881 (Some!12425 (_2!30579 (h!59284 lt!1896729))))))

(declare-fun b!4734160 () Bool)

(assert (=> b!4734160 (= e!2952882 None!12425)))

(declare-fun b!4734158 () Bool)

(assert (=> b!4734158 (= e!2952881 e!2952882)))

(declare-fun c!808528 () Bool)

(assert (=> b!4734158 (= c!808528 (and ((_ is Cons!52913) lt!1896729) (not (= (_1!30579 (h!59284 lt!1896729)) (_1!30579 (h!59284 oldBucket!34))))))))

(assert (= (and d!1510114 c!808527) b!4734157))

(assert (= (and d!1510114 (not c!808527)) b!4734158))

(assert (= (and b!4734158 c!808528) b!4734159))

(assert (= (and b!4734158 (not c!808528)) b!4734160))

(declare-fun m!5678291 () Bool)

(assert (=> b!4734159 m!5678291))

(assert (=> d!1509808 d!1510114))

(declare-fun d!1510116 () Bool)

(assert (=> d!1510116 (= (getValueByKey!2000 lt!1896729 (_1!30579 (h!59284 oldBucket!34))) (Some!12425 (_2!30579 (h!59284 oldBucket!34))))))

(declare-fun lt!1897158 () Unit!131735)

(assert (=> d!1510116 (= lt!1897158 (choose!33529 lt!1896729 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))))))

(declare-fun e!2952883 () Bool)

(assert (=> d!1510116 e!2952883))

(declare-fun res!2004661 () Bool)

(assert (=> d!1510116 (=> (not res!2004661) (not e!2952883))))

(assert (=> d!1510116 (= res!2004661 (invariantList!1535 lt!1896729))))

(assert (=> d!1510116 (= (lemmaContainsTupThenGetReturnValue!1102 lt!1896729 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))) lt!1897158)))

(declare-fun b!4734161 () Bool)

(declare-fun res!2004662 () Bool)

(assert (=> b!4734161 (=> (not res!2004662) (not e!2952883))))

(assert (=> b!4734161 (= res!2004662 (containsKey!3440 lt!1896729 (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun b!4734162 () Bool)

(assert (=> b!4734162 (= e!2952883 (contains!16300 lt!1896729 (tuple2!54571 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34)))))))

(assert (= (and d!1510116 res!2004661) b!4734161))

(assert (= (and b!4734161 res!2004662) b!4734162))

(assert (=> d!1510116 m!5677169))

(declare-fun m!5678293 () Bool)

(assert (=> d!1510116 m!5678293))

(declare-fun m!5678295 () Bool)

(assert (=> d!1510116 m!5678295))

(declare-fun m!5678297 () Bool)

(assert (=> b!4734161 m!5678297))

(declare-fun m!5678299 () Bool)

(assert (=> b!4734162 m!5678299))

(assert (=> d!1509808 d!1510116))

(declare-fun b!4734165 () Bool)

(declare-fun c!808532 () Bool)

(assert (=> b!4734165 (= c!808532 ((_ is Cons!52913) (toList!5978 lt!1896340)))))

(declare-fun e!2952891 () List!53037)

(declare-fun e!2952888 () List!53037)

(assert (=> b!4734165 (= e!2952891 e!2952888)))

(declare-fun b!4734166 () Bool)

(assert (=> b!4734166 false))

(declare-fun lt!1897167 () Unit!131735)

(declare-fun lt!1897169 () Unit!131735)

(assert (=> b!4734166 (= lt!1897167 lt!1897169)))

(assert (=> b!4734166 (containsKey!3440 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 (toList!5978 lt!1896340))))))

(assert (=> b!4734166 (= lt!1897169 (lemmaInGetKeysListThenContainsKey!973 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 (toList!5978 lt!1896340)))))))

(declare-fun lt!1897165 () Unit!131735)

(declare-fun lt!1897164 () Unit!131735)

(assert (=> b!4734166 (= lt!1897165 lt!1897164)))

(declare-fun call!331127 () List!53040)

(assert (=> b!4734166 (contains!16302 call!331127 (_1!30579 (h!59284 (toList!5978 lt!1896340))))))

(declare-fun lt!1897161 () List!53037)

(assert (=> b!4734166 (= lt!1897164 (lemmaInListThenGetKeysListContains!969 lt!1897161 (_1!30579 (h!59284 (toList!5978 lt!1896340)))))))

(assert (=> b!4734166 (= lt!1897161 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))))))

(declare-fun e!2952887 () Unit!131735)

(declare-fun Unit!131931 () Unit!131735)

(assert (=> b!4734166 (= e!2952887 Unit!131931)))

(declare-fun b!4734167 () Bool)

(declare-fun res!2004665 () Bool)

(declare-fun e!2952886 () Bool)

(assert (=> b!4734167 (=> (not res!2004665) (not e!2952886))))

(declare-fun lt!1897171 () List!53037)

(assert (=> b!4734167 (= res!2004665 (contains!16300 lt!1897171 (tuple2!54571 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34)))))))

(declare-fun b!4734168 () Bool)

(declare-fun call!331126 () List!53037)

(assert (=> b!4734168 (= e!2952891 call!331126)))

(declare-fun b!4734169 () Bool)

(declare-fun res!2004666 () Bool)

(assert (=> b!4734169 (=> (not res!2004666) (not e!2952886))))

(assert (=> b!4734169 (= res!2004666 (containsKey!3440 lt!1897171 (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun b!4734170 () Bool)

(declare-fun Unit!131932 () Unit!131735)

(assert (=> b!4734170 (= e!2952887 Unit!131932)))

(declare-fun bm!331119 () Bool)

(declare-fun c!808533 () Bool)

(declare-fun e!2952889 () List!53037)

(declare-fun call!331125 () List!53037)

(declare-fun c!808531 () Bool)

(assert (=> bm!331119 (= call!331125 ($colon$colon!1085 (ite c!808533 (t!360317 (toList!5978 lt!1896340)) (ite c!808531 (toList!5978 lt!1896340) e!2952889)) (ite (or c!808533 c!808531) (tuple2!54571 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))) (ite c!808532 (h!59284 (toList!5978 lt!1896340)) (tuple2!54571 (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34)))))))))

(declare-fun bm!331120 () Bool)

(declare-fun call!331124 () List!53037)

(assert (=> bm!331120 (= call!331124 call!331126)))

(declare-fun c!808530 () Bool)

(assert (=> bm!331120 (= c!808530 c!808532)))

(declare-fun b!4734171 () Bool)

(declare-fun e!2952892 () Bool)

(assert (=> b!4734171 (= e!2952892 (not (containsKey!3440 (toList!5978 lt!1896340) (_1!30579 (h!59284 oldBucket!34)))))))

(declare-fun b!4734172 () Bool)

(assert (=> b!4734172 (= e!2952889 Nil!52913)))

(declare-fun b!4734173 () Bool)

(assert (=> b!4734173 (= e!2952889 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))))))

(declare-fun b!4734174 () Bool)

(assert (=> b!4734174 (= e!2952888 call!331124)))

(declare-fun b!4734175 () Bool)

(declare-fun e!2952890 () List!53037)

(assert (=> b!4734175 (= e!2952890 call!331125)))

(declare-fun lt!1897160 () List!53040)

(assert (=> b!4734175 (= lt!1897160 call!331127)))

(declare-fun lt!1897166 () Unit!131735)

(assert (=> b!4734175 (= lt!1897166 (lemmaSubseqRefl!148 lt!1897160))))

(assert (=> b!4734175 (subseq!664 lt!1897160 lt!1897160)))

(declare-fun lt!1897159 () Unit!131735)

(assert (=> b!4734175 (= lt!1897159 lt!1897166)))

(declare-fun b!4734176 () Bool)

(declare-fun lt!1897170 () List!53037)

(assert (=> b!4734176 (= e!2952888 lt!1897170)))

(assert (=> b!4734176 (= lt!1897170 call!331124)))

(declare-fun c!808529 () Bool)

(assert (=> b!4734176 (= c!808529 (containsKey!3440 (insertNoDuplicatedKeys!610 (t!360317 (toList!5978 lt!1896340)) (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))) (_1!30579 (h!59284 (toList!5978 lt!1896340)))))))

(declare-fun lt!1897168 () Unit!131735)

(assert (=> b!4734176 (= lt!1897168 e!2952887)))

(declare-fun bm!331121 () Bool)

(assert (=> bm!331121 (= call!331127 (getKeysList!974 (ite c!808533 (toList!5978 lt!1896340) lt!1897161)))))

(declare-fun b!4734177 () Bool)

(assert (=> b!4734177 (= e!2952886 (= (content!9442 (getKeysList!974 lt!1897171)) ((_ map or) (content!9442 (getKeysList!974 (toList!5978 lt!1896340))) (store ((as const (Array K!14260 Bool)) false) (_1!30579 (h!59284 oldBucket!34)) true))))))

(declare-fun d!1510118 () Bool)

(assert (=> d!1510118 e!2952886))

(declare-fun res!2004668 () Bool)

(assert (=> d!1510118 (=> (not res!2004668) (not e!2952886))))

(assert (=> d!1510118 (= res!2004668 (invariantList!1535 lt!1897171))))

(assert (=> d!1510118 (= lt!1897171 e!2952890)))

(assert (=> d!1510118 (= c!808533 (and ((_ is Cons!52913) (toList!5978 lt!1896340)) (= (_1!30579 (h!59284 (toList!5978 lt!1896340))) (_1!30579 (h!59284 oldBucket!34)))))))

(assert (=> d!1510118 (invariantList!1535 (toList!5978 lt!1896340))))

(assert (=> d!1510118 (= (insertNoDuplicatedKeys!610 (toList!5978 lt!1896340) (_1!30579 (h!59284 oldBucket!34)) (_2!30579 (h!59284 oldBucket!34))) lt!1897171)))

(declare-fun b!4734178 () Bool)

(assert (=> b!4734178 (= e!2952890 e!2952891)))

(declare-fun res!2004667 () Bool)

(assert (=> b!4734178 (= res!2004667 ((_ is Cons!52913) (toList!5978 lt!1896340)))))

(assert (=> b!4734178 (=> (not res!2004667) (not e!2952892))))

(assert (=> b!4734178 (= c!808531 e!2952892)))

(declare-fun bm!331122 () Bool)

(assert (=> bm!331122 (= call!331126 call!331125)))

(assert (= (and d!1510118 c!808533) b!4734175))

(assert (= (and d!1510118 (not c!808533)) b!4734178))

(assert (= (and b!4734178 res!2004667) b!4734171))

(assert (= (and b!4734178 c!808531) b!4734168))

(assert (= (and b!4734178 (not c!808531)) b!4734165))

(assert (= (and b!4734165 c!808532) b!4734176))

(assert (= (and b!4734165 (not c!808532)) b!4734174))

(assert (= (and b!4734176 c!808529) b!4734166))

(assert (= (and b!4734176 (not c!808529)) b!4734170))

(assert (= (or b!4734176 b!4734174) bm!331120))

(assert (= (and bm!331120 c!808530) b!4734173))

(assert (= (and bm!331120 (not c!808530)) b!4734172))

(assert (= (or b!4734168 bm!331120) bm!331122))

(assert (= (or b!4734175 b!4734166) bm!331121))

(assert (= (or b!4734175 bm!331122) bm!331119))

(assert (= (and d!1510118 res!2004668) b!4734169))

(assert (= (and b!4734169 res!2004666) b!4734167))

(assert (= (and b!4734167 res!2004665) b!4734177))

(declare-fun m!5678307 () Bool)

(assert (=> b!4734175 m!5678307))

(declare-fun m!5678309 () Bool)

(assert (=> b!4734175 m!5678309))

(declare-fun m!5678311 () Bool)

(assert (=> bm!331121 m!5678311))

(declare-fun m!5678313 () Bool)

(assert (=> bm!331119 m!5678313))

(declare-fun m!5678315 () Bool)

(assert (=> b!4734167 m!5678315))

(declare-fun m!5678317 () Bool)

(assert (=> b!4734177 m!5678317))

(declare-fun m!5678319 () Bool)

(assert (=> b!4734177 m!5678319))

(declare-fun m!5678321 () Bool)

(assert (=> b!4734177 m!5678321))

(assert (=> b!4734177 m!5677607))

(assert (=> b!4734177 m!5678319))

(assert (=> b!4734177 m!5677607))

(assert (=> b!4734177 m!5677609))

(declare-fun m!5678323 () Bool)

(assert (=> b!4734176 m!5678323))

(assert (=> b!4734176 m!5678323))

(declare-fun m!5678325 () Bool)

(assert (=> b!4734176 m!5678325))

(declare-fun m!5678327 () Bool)

(assert (=> d!1510118 m!5678327))

(assert (=> d!1510118 m!5677617))

(declare-fun m!5678329 () Bool)

(assert (=> b!4734169 m!5678329))

(declare-fun m!5678331 () Bool)

(assert (=> b!4734171 m!5678331))

(assert (=> b!4734166 m!5678323))

(assert (=> b!4734166 m!5677623))

(declare-fun m!5678333 () Bool)

(assert (=> b!4734166 m!5678333))

(declare-fun m!5678335 () Bool)

(assert (=> b!4734166 m!5678335))

(assert (=> b!4734166 m!5677629))

(assert (=> b!4734173 m!5678323))

(assert (=> d!1509808 d!1510118))

(declare-fun d!1510124 () Bool)

(declare-fun res!2004675 () Bool)

(declare-fun e!2952902 () Bool)

(assert (=> d!1510124 (=> res!2004675 e!2952902)))

(assert (=> d!1510124 (= res!2004675 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510124 (= (forall!11653 (toList!5978 lt!1896343) lambda!217822) e!2952902)))

(declare-fun b!4734191 () Bool)

(declare-fun e!2952903 () Bool)

(assert (=> b!4734191 (= e!2952902 e!2952903)))

(declare-fun res!2004676 () Bool)

(assert (=> b!4734191 (=> (not res!2004676) (not e!2952903))))

(assert (=> b!4734191 (= res!2004676 (dynLambda!21858 lambda!217822 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734192 () Bool)

(assert (=> b!4734192 (= e!2952903 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217822))))

(assert (= (and d!1510124 (not res!2004675)) b!4734191))

(assert (= (and b!4734191 res!2004676) b!4734192))

(declare-fun b_lambda!180701 () Bool)

(assert (=> (not b_lambda!180701) (not b!4734191)))

(declare-fun m!5678337 () Bool)

(assert (=> b!4734191 m!5678337))

(declare-fun m!5678339 () Bool)

(assert (=> b!4734192 m!5678339))

(assert (=> b!4733501 d!1510124))

(declare-fun d!1510126 () Bool)

(declare-fun res!2004677 () Bool)

(declare-fun e!2952904 () Bool)

(assert (=> d!1510126 (=> res!2004677 e!2952904)))

(assert (=> d!1510126 (= res!2004677 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510126 (= (forall!11653 (toList!5978 lt!1896343) (ite c!808382 lambda!217840 lambda!217843)) e!2952904)))

(declare-fun b!4734193 () Bool)

(declare-fun e!2952905 () Bool)

(assert (=> b!4734193 (= e!2952904 e!2952905)))

(declare-fun res!2004678 () Bool)

(assert (=> b!4734193 (=> (not res!2004678) (not e!2952905))))

(assert (=> b!4734193 (= res!2004678 (dynLambda!21858 (ite c!808382 lambda!217840 lambda!217843) (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734194 () Bool)

(assert (=> b!4734194 (= e!2952905 (forall!11653 (t!360317 (toList!5978 lt!1896343)) (ite c!808382 lambda!217840 lambda!217843)))))

(assert (= (and d!1510126 (not res!2004677)) b!4734193))

(assert (= (and b!4734193 res!2004678) b!4734194))

(declare-fun b_lambda!180703 () Bool)

(assert (=> (not b_lambda!180703) (not b!4734193)))

(declare-fun m!5678361 () Bool)

(assert (=> b!4734193 m!5678361))

(declare-fun m!5678363 () Bool)

(assert (=> b!4734194 m!5678363))

(assert (=> bm!331072 d!1510126))

(declare-fun d!1510130 () Bool)

(assert (=> d!1510130 (= (isDefined!9677 lt!1896376) (not (isEmpty!29210 lt!1896376)))))

(declare-fun bs!1121894 () Bool)

(assert (= bs!1121894 d!1510130))

(assert (=> bs!1121894 m!5676695))

(assert (=> b!4733344 d!1510130))

(assert (=> b!4733640 d!1509912))

(assert (=> b!4733640 d!1509914))

(declare-fun d!1510132 () Bool)

(declare-fun res!2004682 () Bool)

(declare-fun e!2952909 () Bool)

(assert (=> d!1510132 (=> res!2004682 e!2952909)))

(assert (=> d!1510132 (= res!2004682 ((_ is Nil!52913) lt!1896336))))

(assert (=> d!1510132 (= (forall!11653 lt!1896336 lambda!217839) e!2952909)))

(declare-fun b!4734200 () Bool)

(declare-fun e!2952910 () Bool)

(assert (=> b!4734200 (= e!2952909 e!2952910)))

(declare-fun res!2004683 () Bool)

(assert (=> b!4734200 (=> (not res!2004683) (not e!2952910))))

(assert (=> b!4734200 (= res!2004683 (dynLambda!21858 lambda!217839 (h!59284 lt!1896336)))))

(declare-fun b!4734201 () Bool)

(assert (=> b!4734201 (= e!2952910 (forall!11653 (t!360317 lt!1896336) lambda!217839))))

(assert (= (and d!1510132 (not res!2004682)) b!4734200))

(assert (= (and b!4734200 res!2004683) b!4734201))

(declare-fun b_lambda!180705 () Bool)

(assert (=> (not b_lambda!180705) (not b!4734200)))

(declare-fun m!5678365 () Bool)

(assert (=> b!4734200 m!5678365))

(declare-fun m!5678367 () Bool)

(assert (=> b!4734201 m!5678367))

(assert (=> d!1509818 d!1510132))

(assert (=> d!1509818 d!1509890))

(declare-fun d!1510134 () Bool)

(declare-fun res!2004684 () Bool)

(declare-fun e!2952911 () Bool)

(assert (=> d!1510134 (=> res!2004684 e!2952911)))

(assert (=> d!1510134 (= res!2004684 ((_ is Nil!52913) oldBucket!34))))

(assert (=> d!1510134 (= (forall!11653 oldBucket!34 lambda!217860) e!2952911)))

(declare-fun b!4734202 () Bool)

(declare-fun e!2952912 () Bool)

(assert (=> b!4734202 (= e!2952911 e!2952912)))

(declare-fun res!2004685 () Bool)

(assert (=> b!4734202 (=> (not res!2004685) (not e!2952912))))

(assert (=> b!4734202 (= res!2004685 (dynLambda!21858 lambda!217860 (h!59284 oldBucket!34)))))

(declare-fun b!4734203 () Bool)

(assert (=> b!4734203 (= e!2952912 (forall!11653 (t!360317 oldBucket!34) lambda!217860))))

(assert (= (and d!1510134 (not res!2004684)) b!4734202))

(assert (= (and b!4734202 res!2004685) b!4734203))

(declare-fun b_lambda!180707 () Bool)

(assert (=> (not b_lambda!180707) (not b!4734202)))

(declare-fun m!5678369 () Bool)

(assert (=> b!4734202 m!5678369))

(declare-fun m!5678371 () Bool)

(assert (=> b!4734203 m!5678371))

(assert (=> d!1509864 d!1510134))

(declare-fun b!4734206 () Bool)

(declare-fun e!2952914 () Option!12426)

(assert (=> b!4734206 (= e!2952914 (getValueByKey!2000 (t!360317 (toList!5978 lt!1896731)) (_1!30579 (h!59284 oldBucket!34))))))

(declare-fun d!1510136 () Bool)

(declare-fun c!808538 () Bool)

(assert (=> d!1510136 (= c!808538 (and ((_ is Cons!52913) (toList!5978 lt!1896731)) (= (_1!30579 (h!59284 (toList!5978 lt!1896731))) (_1!30579 (h!59284 oldBucket!34)))))))

(declare-fun e!2952913 () Option!12426)

(assert (=> d!1510136 (= (getValueByKey!2000 (toList!5978 lt!1896731) (_1!30579 (h!59284 oldBucket!34))) e!2952913)))

(declare-fun b!4734204 () Bool)

(assert (=> b!4734204 (= e!2952913 (Some!12425 (_2!30579 (h!59284 (toList!5978 lt!1896731)))))))

(declare-fun b!4734207 () Bool)

(assert (=> b!4734207 (= e!2952914 None!12425)))

(declare-fun b!4734205 () Bool)

(assert (=> b!4734205 (= e!2952913 e!2952914)))

(declare-fun c!808539 () Bool)

(assert (=> b!4734205 (= c!808539 (and ((_ is Cons!52913) (toList!5978 lt!1896731)) (not (= (_1!30579 (h!59284 (toList!5978 lt!1896731))) (_1!30579 (h!59284 oldBucket!34))))))))

(assert (= (and d!1510136 c!808538) b!4734204))

(assert (= (and d!1510136 (not c!808538)) b!4734205))

(assert (= (and b!4734205 c!808539) b!4734206))

(assert (= (and b!4734205 (not c!808539)) b!4734207))

(declare-fun m!5678373 () Bool)

(assert (=> b!4734206 m!5678373))

(assert (=> b!4733532 d!1510136))

(declare-fun d!1510138 () Bool)

(assert (=> d!1510138 (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1896441 lt!1896442))))

(declare-fun lt!1897202 () Unit!131735)

(assert (=> d!1510138 (= lt!1897202 (choose!33518 lm!2023 lt!1896441 lt!1896442))))

(assert (=> d!1510138 (contains!16297 lm!2023 lt!1896441)))

(assert (=> d!1510138 (= (lemmaGetValueImpliesTupleContained!389 lm!2023 lt!1896441 lt!1896442) lt!1897202)))

(declare-fun bs!1121911 () Bool)

(assert (= bs!1121911 d!1510138))

(assert (=> bs!1121911 m!5676727))

(declare-fun m!5678375 () Bool)

(assert (=> bs!1121911 m!5678375))

(assert (=> bs!1121911 m!5676725))

(assert (=> b!4733367 d!1510138))

(declare-fun d!1510140 () Bool)

(declare-fun e!2952917 () Bool)

(assert (=> d!1510140 e!2952917))

(declare-fun res!2004689 () Bool)

(assert (=> d!1510140 (=> res!2004689 e!2952917)))

(declare-fun e!2952916 () Bool)

(assert (=> d!1510140 (= res!2004689 e!2952916)))

(declare-fun res!2004687 () Bool)

(assert (=> d!1510140 (=> (not res!2004687) (not e!2952916))))

(declare-fun lt!1897203 () Option!12423)

(assert (=> d!1510140 (= res!2004687 (isEmpty!29210 lt!1897203))))

(declare-fun e!2952919 () Option!12423)

(assert (=> d!1510140 (= lt!1897203 e!2952919)))

(declare-fun c!808540 () Bool)

(assert (=> d!1510140 (= c!808540 (and ((_ is Cons!52913) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653))) (= (_1!30579 (h!59284 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))) key!4653)))))

(assert (=> d!1510140 (noDuplicateKeys!2044 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))

(assert (=> d!1510140 (= (getPair!584 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) key!4653) lt!1897203)))

(declare-fun b!4734208 () Bool)

(declare-fun res!2004688 () Bool)

(declare-fun e!2952915 () Bool)

(assert (=> b!4734208 (=> (not res!2004688) (not e!2952915))))

(assert (=> b!4734208 (= res!2004688 (= (_1!30579 (get!17772 lt!1897203)) key!4653))))

(declare-fun b!4734209 () Bool)

(assert (=> b!4734209 (= e!2952917 e!2952915)))

(declare-fun res!2004686 () Bool)

(assert (=> b!4734209 (=> (not res!2004686) (not e!2952915))))

(assert (=> b!4734209 (= res!2004686 (isDefined!9677 lt!1897203))))

(declare-fun b!4734210 () Bool)

(declare-fun e!2952918 () Option!12423)

(assert (=> b!4734210 (= e!2952919 e!2952918)))

(declare-fun c!808541 () Bool)

(assert (=> b!4734210 (= c!808541 ((_ is Cons!52913) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653))))))

(declare-fun b!4734211 () Bool)

(assert (=> b!4734211 (= e!2952916 (not (containsKey!3437 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) key!4653)))))

(declare-fun b!4734212 () Bool)

(assert (=> b!4734212 (= e!2952918 None!12422)))

(declare-fun b!4734213 () Bool)

(assert (=> b!4734213 (= e!2952915 (contains!16300 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) (get!17772 lt!1897203)))))

(declare-fun b!4734214 () Bool)

(assert (=> b!4734214 (= e!2952918 (getPair!584 (t!360317 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653))) key!4653))))

(declare-fun b!4734215 () Bool)

(assert (=> b!4734215 (= e!2952919 (Some!12422 (h!59284 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))))

(assert (= (and d!1510140 c!808540) b!4734215))

(assert (= (and d!1510140 (not c!808540)) b!4734210))

(assert (= (and b!4734210 c!808541) b!4734214))

(assert (= (and b!4734210 (not c!808541)) b!4734212))

(assert (= (and d!1510140 res!2004687) b!4734211))

(assert (= (and d!1510140 (not res!2004689)) b!4734209))

(assert (= (and b!4734209 res!2004686) b!4734208))

(assert (= (and b!4734208 res!2004688) b!4734213))

(declare-fun m!5678377 () Bool)

(assert (=> d!1510140 m!5678377))

(assert (=> d!1510140 m!5676719))

(declare-fun m!5678379 () Bool)

(assert (=> d!1510140 m!5678379))

(declare-fun m!5678381 () Bool)

(assert (=> b!4734213 m!5678381))

(assert (=> b!4734213 m!5676719))

(assert (=> b!4734213 m!5678381))

(declare-fun m!5678383 () Bool)

(assert (=> b!4734213 m!5678383))

(assert (=> b!4734208 m!5678381))

(assert (=> b!4734211 m!5676719))

(declare-fun m!5678385 () Bool)

(assert (=> b!4734211 m!5678385))

(declare-fun m!5678387 () Bool)

(assert (=> b!4734214 m!5678387))

(declare-fun m!5678389 () Bool)

(assert (=> b!4734209 m!5678389))

(assert (=> b!4733367 d!1510140))

(declare-fun d!1510142 () Bool)

(assert (=> d!1510142 (dynLambda!21856 lambda!217749 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653))))))

(declare-fun lt!1897204 () Unit!131735)

(assert (=> d!1510142 (= lt!1897204 (choose!33517 (toList!5977 lm!2023) lambda!217749 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))))

(declare-fun e!2952920 () Bool)

(assert (=> d!1510142 e!2952920))

(declare-fun res!2004690 () Bool)

(assert (=> d!1510142 (=> (not res!2004690) (not e!2952920))))

(assert (=> d!1510142 (= res!2004690 (forall!11651 (toList!5977 lm!2023) lambda!217749))))

(assert (=> d!1510142 (= (forallContained!3691 (toList!5977 lm!2023) lambda!217749 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))) lt!1897204)))

(declare-fun b!4734216 () Bool)

(assert (=> b!4734216 (= e!2952920 (contains!16296 (toList!5977 lm!2023) (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))))

(assert (= (and d!1510142 res!2004690) b!4734216))

(declare-fun b_lambda!180709 () Bool)

(assert (=> (not b_lambda!180709) (not d!1510142)))

(declare-fun m!5678391 () Bool)

(assert (=> d!1510142 m!5678391))

(declare-fun m!5678393 () Bool)

(assert (=> d!1510142 m!5678393))

(assert (=> d!1510142 m!5676715))

(declare-fun m!5678395 () Bool)

(assert (=> b!4734216 m!5678395))

(assert (=> b!4733367 d!1510142))

(assert (=> b!4733367 d!1509950))

(declare-fun d!1510144 () Bool)

(assert (=> d!1510144 (= (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) (get!17773 (getValueByKey!1999 (toList!5977 lm!2023) (hash!4436 hashF!1323 key!4653))))))

(declare-fun bs!1121928 () Bool)

(assert (= bs!1121928 d!1510144))

(assert (=> bs!1121928 m!5676631))

(assert (=> bs!1121928 m!5677675))

(assert (=> bs!1121928 m!5677675))

(declare-fun m!5678397 () Bool)

(assert (=> bs!1121928 m!5678397))

(assert (=> b!4733367 d!1510144))

(declare-fun d!1510146 () Bool)

(assert (=> d!1510146 (= (isDefined!9677 (getPair!584 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) key!4653)) (not (isEmpty!29210 (getPair!584 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) key!4653))))))

(declare-fun bs!1121932 () Bool)

(assert (= bs!1121932 d!1510146))

(assert (=> bs!1121932 m!5676721))

(declare-fun m!5678399 () Bool)

(assert (=> bs!1121932 m!5678399))

(assert (=> b!4733367 d!1510146))

(assert (=> b!4733367 d!1509874))

(assert (=> b!4733367 d!1509702))

(declare-fun d!1510148 () Bool)

(declare-fun e!2952922 () Bool)

(assert (=> d!1510148 e!2952922))

(declare-fun res!2004691 () Bool)

(assert (=> d!1510148 (=> res!2004691 e!2952922)))

(declare-fun lt!1897205 () Bool)

(assert (=> d!1510148 (= res!2004691 (not lt!1897205))))

(declare-fun lt!1897208 () Bool)

(assert (=> d!1510148 (= lt!1897205 lt!1897208)))

(declare-fun lt!1897206 () Unit!131735)

(declare-fun e!2952921 () Unit!131735)

(assert (=> d!1510148 (= lt!1897206 e!2952921)))

(declare-fun c!808542 () Bool)

(assert (=> d!1510148 (= c!808542 lt!1897208)))

(assert (=> d!1510148 (= lt!1897208 (containsKey!3438 (toList!5977 lm!2023) lt!1896441))))

(assert (=> d!1510148 (= (contains!16297 lm!2023 lt!1896441) lt!1897205)))

(declare-fun b!4734217 () Bool)

(declare-fun lt!1897207 () Unit!131735)

(assert (=> b!4734217 (= e!2952921 lt!1897207)))

(assert (=> b!4734217 (= lt!1897207 (lemmaContainsKeyImpliesGetValueByKeyDefined!1889 (toList!5977 lm!2023) lt!1896441))))

(assert (=> b!4734217 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896441))))

(declare-fun b!4734218 () Bool)

(declare-fun Unit!131944 () Unit!131735)

(assert (=> b!4734218 (= e!2952921 Unit!131944)))

(declare-fun b!4734219 () Bool)

(assert (=> b!4734219 (= e!2952922 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896441)))))

(assert (= (and d!1510148 c!808542) b!4734217))

(assert (= (and d!1510148 (not c!808542)) b!4734218))

(assert (= (and d!1510148 (not res!2004691)) b!4734219))

(declare-fun m!5678401 () Bool)

(assert (=> d!1510148 m!5678401))

(declare-fun m!5678403 () Bool)

(assert (=> b!4734217 m!5678403))

(assert (=> b!4734217 m!5676735))

(assert (=> b!4734217 m!5676735))

(declare-fun m!5678405 () Bool)

(assert (=> b!4734217 m!5678405))

(assert (=> b!4734219 m!5676735))

(assert (=> b!4734219 m!5676735))

(assert (=> b!4734219 m!5678405))

(assert (=> b!4733367 d!1510148))

(declare-fun lt!1897209 () Bool)

(declare-fun d!1510150 () Bool)

(assert (=> d!1510150 (= lt!1897209 (select (content!9439 (toList!5977 lm!2023)) (tuple2!54573 lt!1896441 lt!1896442)))))

(declare-fun e!2952924 () Bool)

(assert (=> d!1510150 (= lt!1897209 e!2952924)))

(declare-fun res!2004692 () Bool)

(assert (=> d!1510150 (=> (not res!2004692) (not e!2952924))))

(assert (=> d!1510150 (= res!2004692 ((_ is Cons!52914) (toList!5977 lm!2023)))))

(assert (=> d!1510150 (= (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1896441 lt!1896442)) lt!1897209)))

(declare-fun b!4734220 () Bool)

(declare-fun e!2952923 () Bool)

(assert (=> b!4734220 (= e!2952924 e!2952923)))

(declare-fun res!2004693 () Bool)

(assert (=> b!4734220 (=> res!2004693 e!2952923)))

(assert (=> b!4734220 (= res!2004693 (= (h!59285 (toList!5977 lm!2023)) (tuple2!54573 lt!1896441 lt!1896442)))))

(declare-fun b!4734221 () Bool)

(assert (=> b!4734221 (= e!2952923 (contains!16296 (t!360318 (toList!5977 lm!2023)) (tuple2!54573 lt!1896441 lt!1896442)))))

(assert (= (and d!1510150 res!2004692) b!4734220))

(assert (= (and b!4734220 (not res!2004693)) b!4734221))

(assert (=> d!1510150 m!5676657))

(declare-fun m!5678407 () Bool)

(assert (=> d!1510150 m!5678407))

(declare-fun m!5678409 () Bool)

(assert (=> b!4734221 m!5678409))

(assert (=> b!4733367 d!1510150))

(declare-fun d!1510152 () Bool)

(declare-fun res!2004694 () Bool)

(declare-fun e!2952925 () Bool)

(assert (=> d!1510152 (=> res!2004694 e!2952925)))

(assert (=> d!1510152 (= res!2004694 (and ((_ is Cons!52913) (toList!5978 lt!1896330)) (= (_1!30579 (h!59284 (toList!5978 lt!1896330))) key!4653)))))

(assert (=> d!1510152 (= (containsKey!3440 (toList!5978 lt!1896330) key!4653) e!2952925)))

(declare-fun b!4734222 () Bool)

(declare-fun e!2952926 () Bool)

(assert (=> b!4734222 (= e!2952925 e!2952926)))

(declare-fun res!2004695 () Bool)

(assert (=> b!4734222 (=> (not res!2004695) (not e!2952926))))

(assert (=> b!4734222 (= res!2004695 ((_ is Cons!52913) (toList!5978 lt!1896330)))))

(declare-fun b!4734223 () Bool)

(assert (=> b!4734223 (= e!2952926 (containsKey!3440 (t!360317 (toList!5978 lt!1896330)) key!4653))))

(assert (= (and d!1510152 (not res!2004694)) b!4734222))

(assert (= (and b!4734222 res!2004695) b!4734223))

(declare-fun m!5678411 () Bool)

(assert (=> b!4734223 m!5678411))

(assert (=> b!4733660 d!1510152))

(declare-fun d!1510154 () Bool)

(assert (=> d!1510154 (containsKey!3440 (toList!5978 lt!1896330) key!4653)))

(declare-fun lt!1897210 () Unit!131735)

(assert (=> d!1510154 (= lt!1897210 (choose!33532 (toList!5978 lt!1896330) key!4653))))

(assert (=> d!1510154 (invariantList!1535 (toList!5978 lt!1896330))))

(assert (=> d!1510154 (= (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896330) key!4653) lt!1897210)))

(declare-fun bs!1121936 () Bool)

(assert (= bs!1121936 d!1510154))

(assert (=> bs!1121936 m!5677461))

(declare-fun m!5678413 () Bool)

(assert (=> bs!1121936 m!5678413))

(assert (=> bs!1121936 m!5677935))

(assert (=> b!4733660 d!1510154))

(declare-fun d!1510156 () Bool)

(declare-fun res!2004696 () Bool)

(declare-fun e!2952927 () Bool)

(assert (=> d!1510156 (=> res!2004696 e!2952927)))

(assert (=> d!1510156 (= res!2004696 ((_ is Nil!52913) (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> d!1510156 (= (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217822) e!2952927)))

(declare-fun b!4734224 () Bool)

(declare-fun e!2952928 () Bool)

(assert (=> b!4734224 (= e!2952927 e!2952928)))

(declare-fun res!2004697 () Bool)

(assert (=> b!4734224 (=> (not res!2004697) (not e!2952928))))

(assert (=> b!4734224 (= res!2004697 (dynLambda!21858 lambda!217822 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun b!4734225 () Bool)

(assert (=> b!4734225 (= e!2952928 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217822))))

(assert (= (and d!1510156 (not res!2004696)) b!4734224))

(assert (= (and b!4734224 res!2004697) b!4734225))

(declare-fun b_lambda!180711 () Bool)

(assert (=> (not b_lambda!180711) (not b!4734224)))

(declare-fun m!5678415 () Bool)

(assert (=> b!4734224 m!5678415))

(declare-fun m!5678417 () Bool)

(assert (=> b!4734225 m!5678417))

(assert (=> d!1509730 d!1510156))

(assert (=> d!1509730 d!1510064))

(declare-fun d!1510158 () Bool)

(declare-fun res!2004698 () Bool)

(declare-fun e!2952929 () Bool)

(assert (=> d!1510158 (=> res!2004698 e!2952929)))

(assert (=> d!1510158 (= res!2004698 (not ((_ is Cons!52913) (_2!30580 lt!1896328))))))

(assert (=> d!1510158 (= (noDuplicateKeys!2044 (_2!30580 lt!1896328)) e!2952929)))

(declare-fun b!4734226 () Bool)

(declare-fun e!2952930 () Bool)

(assert (=> b!4734226 (= e!2952929 e!2952930)))

(declare-fun res!2004699 () Bool)

(assert (=> b!4734226 (=> (not res!2004699) (not e!2952930))))

(assert (=> b!4734226 (= res!2004699 (not (containsKey!3437 (t!360317 (_2!30580 lt!1896328)) (_1!30579 (h!59284 (_2!30580 lt!1896328))))))))

(declare-fun b!4734227 () Bool)

(assert (=> b!4734227 (= e!2952930 (noDuplicateKeys!2044 (t!360317 (_2!30580 lt!1896328))))))

(assert (= (and d!1510158 (not res!2004698)) b!4734226))

(assert (= (and b!4734226 res!2004699) b!4734227))

(declare-fun m!5678419 () Bool)

(assert (=> b!4734226 m!5678419))

(declare-fun m!5678421 () Bool)

(assert (=> b!4734227 m!5678421))

(assert (=> bs!1121637 d!1510158))

(assert (=> bm!331077 d!1509940))

(declare-fun d!1510160 () Bool)

(declare-fun res!2004700 () Bool)

(declare-fun e!2952931 () Bool)

(assert (=> d!1510160 (=> res!2004700 e!2952931)))

(assert (=> d!1510160 (= res!2004700 ((_ is Nil!52913) lt!1896335))))

(assert (=> d!1510160 (= (forall!11653 lt!1896335 lambda!217843) e!2952931)))

(declare-fun b!4734228 () Bool)

(declare-fun e!2952932 () Bool)

(assert (=> b!4734228 (= e!2952931 e!2952932)))

(declare-fun res!2004701 () Bool)

(assert (=> b!4734228 (=> (not res!2004701) (not e!2952932))))

(assert (=> b!4734228 (= res!2004701 (dynLambda!21858 lambda!217843 (h!59284 lt!1896335)))))

(declare-fun b!4734229 () Bool)

(assert (=> b!4734229 (= e!2952932 (forall!11653 (t!360317 lt!1896335) lambda!217843))))

(assert (= (and d!1510160 (not res!2004700)) b!4734228))

(assert (= (and b!4734228 res!2004701) b!4734229))

(declare-fun b_lambda!180713 () Bool)

(assert (=> (not b_lambda!180713) (not b!4734228)))

(declare-fun m!5678423 () Bool)

(assert (=> b!4734228 m!5678423))

(assert (=> b!4734229 m!5677259))

(assert (=> b!4733550 d!1510160))

(declare-fun d!1510162 () Bool)

(declare-fun res!2004702 () Bool)

(declare-fun e!2952933 () Bool)

(assert (=> d!1510162 (=> res!2004702 e!2952933)))

(assert (=> d!1510162 (= res!2004702 ((_ is Nil!52913) (t!360317 lt!1896335)))))

(assert (=> d!1510162 (= (forall!11653 (t!360317 lt!1896335) lambda!217843) e!2952933)))

(declare-fun b!4734230 () Bool)

(declare-fun e!2952934 () Bool)

(assert (=> b!4734230 (= e!2952933 e!2952934)))

(declare-fun res!2004703 () Bool)

(assert (=> b!4734230 (=> (not res!2004703) (not e!2952934))))

(assert (=> b!4734230 (= res!2004703 (dynLambda!21858 lambda!217843 (h!59284 (t!360317 lt!1896335))))))

(declare-fun b!4734231 () Bool)

(assert (=> b!4734231 (= e!2952934 (forall!11653 (t!360317 (t!360317 lt!1896335)) lambda!217843))))

(assert (= (and d!1510162 (not res!2004702)) b!4734230))

(assert (= (and b!4734230 res!2004703) b!4734231))

(declare-fun b_lambda!180715 () Bool)

(assert (=> (not b_lambda!180715) (not b!4734230)))

(declare-fun m!5678425 () Bool)

(assert (=> b!4734230 m!5678425))

(declare-fun m!5678427 () Bool)

(assert (=> b!4734231 m!5678427))

(assert (=> b!4733550 d!1510162))

(declare-fun bs!1121937 () Bool)

(declare-fun d!1510164 () Bool)

(assert (= bs!1121937 (and d!1510164 b!4733999)))

(declare-fun lambda!217918 () Int)

(assert (=> bs!1121937 (= (= lt!1896793 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217918 lambda!217905))))

(declare-fun bs!1121938 () Bool)

(assert (= bs!1121938 (and d!1510164 b!4733537)))

(assert (=> bs!1121938 (= (= lt!1896793 lt!1896756) (= lambda!217918 lambda!217834))))

(declare-fun bs!1121939 () Bool)

(assert (= bs!1121939 (and d!1510164 b!4733594)))

(assert (=> bs!1121939 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217850))))

(declare-fun bs!1121940 () Bool)

(assert (= bs!1121940 (and d!1510164 d!1509834)))

(assert (=> bs!1121940 (= (= lt!1896793 lt!1896851) (= lambda!217918 lambda!217852))))

(declare-fun bs!1121942 () Bool)

(assert (= bs!1121942 (and d!1510164 d!1509926)))

(assert (=> bs!1121942 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217871))))

(declare-fun bs!1121943 () Bool)

(assert (= bs!1121943 (and d!1510164 b!4733550)))

(assert (=> bs!1121943 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217841))))

(declare-fun bs!1121945 () Bool)

(assert (= bs!1121945 (and d!1510164 b!4733500)))

(assert (=> bs!1121945 (= (= lt!1896793 lt!1896706) (= lambda!217918 lambda!217821))))

(declare-fun bs!1121947 () Bool)

(assert (= bs!1121947 (and d!1510164 d!1509864)))

(assert (=> bs!1121947 (not (= lambda!217918 lambda!217860))))

(assert (=> bs!1121943 (= lambda!217918 lambda!217843)))

(declare-fun bs!1121950 () Bool)

(assert (= bs!1121950 (and d!1510164 b!4733596)))

(assert (=> bs!1121950 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217849))))

(declare-fun bs!1121951 () Bool)

(assert (= bs!1121951 (and d!1510164 b!4733552)))

(assert (=> bs!1121951 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217840))))

(declare-fun bs!1121953 () Bool)

(assert (= bs!1121953 (and d!1510164 d!1509730)))

(assert (=> bs!1121953 (= (= lt!1896793 lt!1896702) (= lambda!217918 lambda!217822))))

(declare-fun bs!1121954 () Bool)

(assert (= bs!1121954 (and d!1510164 b!4733561)))

(assert (=> bs!1121954 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217846))))

(declare-fun bs!1121956 () Bool)

(assert (= bs!1121956 (and d!1510164 d!1509992)))

(assert (=> bs!1121956 (= (= lt!1896793 lt!1897024) (= lambda!217918 lambda!217883))))

(declare-fun bs!1121958 () Bool)

(assert (= bs!1121958 (and d!1510164 d!1509876)))

(assert (=> bs!1121958 (not (= lambda!217918 lambda!217862))))

(declare-fun bs!1121960 () Bool)

(assert (= bs!1121960 (and d!1510164 b!4733900)))

(assert (=> bs!1121960 (= (= lt!1896793 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217918 lambda!217877))))

(declare-fun bs!1121962 () Bool)

(assert (= bs!1121962 (and d!1510164 d!1509984)))

(assert (=> bs!1121962 (= (= lt!1896793 lt!1896826) (= lambda!217918 lambda!217876))))

(declare-fun bs!1121963 () Bool)

(assert (= bs!1121963 (and d!1510164 d!1509818)))

(assert (=> bs!1121963 (= (= lt!1896793 lt!1896752) (= lambda!217918 lambda!217839))))

(assert (=> bs!1121938 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217833))))

(declare-fun bs!1121966 () Bool)

(assert (= bs!1121966 (and d!1510164 b!4733502)))

(assert (=> bs!1121966 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217819))))

(assert (=> bs!1121945 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217820))))

(declare-fun bs!1121969 () Bool)

(assert (= bs!1121969 (and d!1510164 d!1509820)))

(assert (=> bs!1121969 (= (= lt!1896793 lt!1896789) (= lambda!217918 lambda!217844))))

(assert (=> bs!1121939 (= (= lt!1896793 lt!1896855) (= lambda!217918 lambda!217851))))

(declare-fun bs!1121972 () Bool)

(assert (= bs!1121972 (and d!1510164 d!1509826)))

(assert (=> bs!1121972 (= (= lt!1896793 lt!1896822) (= lambda!217918 lambda!217848))))

(declare-fun bs!1121974 () Bool)

(assert (= bs!1121974 (and d!1510164 b!4734001)))

(assert (=> bs!1121974 (= (= lt!1896793 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217918 lambda!217904))))

(declare-fun bs!1121976 () Bool)

(assert (= bs!1121976 (and d!1510164 b!4733898)))

(assert (=> bs!1121976 (= (= lt!1896793 lt!1897028) (= lambda!217918 lambda!217882))))

(assert (=> bs!1121937 (= (= lt!1896793 lt!1897094) (= lambda!217918 lambda!217906))))

(assert (=> bs!1121954 (= (= lt!1896793 lt!1896826) (= lambda!217918 lambda!217847))))

(declare-fun bs!1121979 () Bool)

(assert (= bs!1121979 (and d!1510164 d!1510022)))

(assert (=> bs!1121979 (= (= lt!1896793 lt!1897090) (= lambda!217918 lambda!217907))))

(declare-fun bs!1121980 () Bool)

(assert (= bs!1121980 (and d!1510164 b!4733563)))

(assert (=> bs!1121980 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217845))))

(declare-fun bs!1121982 () Bool)

(assert (= bs!1121982 (and d!1510164 b!4733539)))

(assert (=> bs!1121982 (= (= lt!1896793 lt!1896343) (= lambda!217918 lambda!217830))))

(assert (=> bs!1121976 (= (= lt!1896793 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217918 lambda!217880))))

(assert (=> d!1510164 true))

(assert (=> d!1510164 (forall!11653 (toList!5978 lt!1896343) lambda!217918)))

(declare-fun lt!1897211 () Unit!131735)

(assert (=> d!1510164 (= lt!1897211 (choose!33535 lt!1896343 lt!1896793 (_1!30579 (h!59284 lt!1896335)) (_2!30579 (h!59284 lt!1896335))))))

(assert (=> d!1510164 (forall!11653 (toList!5978 (+!2292 lt!1896343 (tuple2!54571 (_1!30579 (h!59284 lt!1896335)) (_2!30579 (h!59284 lt!1896335))))) lambda!217918)))

(assert (=> d!1510164 (= (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896793 (_1!30579 (h!59284 lt!1896335)) (_2!30579 (h!59284 lt!1896335))) lt!1897211)))

(declare-fun bs!1121983 () Bool)

(assert (= bs!1121983 d!1510164))

(declare-fun m!5678429 () Bool)

(assert (=> bs!1121983 m!5678429))

(declare-fun m!5678431 () Bool)

(assert (=> bs!1121983 m!5678431))

(declare-fun m!5678433 () Bool)

(assert (=> bs!1121983 m!5678433))

(declare-fun m!5678435 () Bool)

(assert (=> bs!1121983 m!5678435))

(assert (=> b!4733550 d!1510164))

(declare-fun d!1510166 () Bool)

(declare-fun res!2004704 () Bool)

(declare-fun e!2952935 () Bool)

(assert (=> d!1510166 (=> res!2004704 e!2952935)))

(assert (=> d!1510166 (= res!2004704 ((_ is Nil!52913) (toList!5978 lt!1896784)))))

(assert (=> d!1510166 (= (forall!11653 (toList!5978 lt!1896784) lambda!217843) e!2952935)))

(declare-fun b!4734232 () Bool)

(declare-fun e!2952936 () Bool)

(assert (=> b!4734232 (= e!2952935 e!2952936)))

(declare-fun res!2004705 () Bool)

(assert (=> b!4734232 (=> (not res!2004705) (not e!2952936))))

(assert (=> b!4734232 (= res!2004705 (dynLambda!21858 lambda!217843 (h!59284 (toList!5978 lt!1896784))))))

(declare-fun b!4734233 () Bool)

(assert (=> b!4734233 (= e!2952936 (forall!11653 (t!360317 (toList!5978 lt!1896784)) lambda!217843))))

(assert (= (and d!1510166 (not res!2004704)) b!4734232))

(assert (= (and b!4734232 res!2004705) b!4734233))

(declare-fun b_lambda!180717 () Bool)

(assert (=> (not b_lambda!180717) (not b!4734232)))

(declare-fun m!5678437 () Bool)

(assert (=> b!4734232 m!5678437))

(declare-fun m!5678439 () Bool)

(assert (=> b!4734233 m!5678439))

(assert (=> b!4733550 d!1510166))

(declare-fun d!1510168 () Bool)

(declare-fun e!2952937 () Bool)

(assert (=> d!1510168 e!2952937))

(declare-fun res!2004706 () Bool)

(assert (=> d!1510168 (=> (not res!2004706) (not e!2952937))))

(declare-fun lt!1897214 () ListMap!5341)

(assert (=> d!1510168 (= res!2004706 (contains!16298 lt!1897214 (_1!30579 (h!59284 lt!1896335))))))

(declare-fun lt!1897212 () List!53037)

(assert (=> d!1510168 (= lt!1897214 (ListMap!5342 lt!1897212))))

(declare-fun lt!1897215 () Unit!131735)

(declare-fun lt!1897213 () Unit!131735)

(assert (=> d!1510168 (= lt!1897215 lt!1897213)))

(assert (=> d!1510168 (= (getValueByKey!2000 lt!1897212 (_1!30579 (h!59284 lt!1896335))) (Some!12425 (_2!30579 (h!59284 lt!1896335))))))

(assert (=> d!1510168 (= lt!1897213 (lemmaContainsTupThenGetReturnValue!1102 lt!1897212 (_1!30579 (h!59284 lt!1896335)) (_2!30579 (h!59284 lt!1896335))))))

(assert (=> d!1510168 (= lt!1897212 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896343) (_1!30579 (h!59284 lt!1896335)) (_2!30579 (h!59284 lt!1896335))))))

(assert (=> d!1510168 (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897214)))

(declare-fun b!4734234 () Bool)

(declare-fun res!2004707 () Bool)

(assert (=> b!4734234 (=> (not res!2004707) (not e!2952937))))

(assert (=> b!4734234 (= res!2004707 (= (getValueByKey!2000 (toList!5978 lt!1897214) (_1!30579 (h!59284 lt!1896335))) (Some!12425 (_2!30579 (h!59284 lt!1896335)))))))

(declare-fun b!4734235 () Bool)

(assert (=> b!4734235 (= e!2952937 (contains!16300 (toList!5978 lt!1897214) (h!59284 lt!1896335)))))

(assert (= (and d!1510168 res!2004706) b!4734234))

(assert (= (and b!4734234 res!2004707) b!4734235))

(declare-fun m!5678443 () Bool)

(assert (=> d!1510168 m!5678443))

(declare-fun m!5678445 () Bool)

(assert (=> d!1510168 m!5678445))

(declare-fun m!5678449 () Bool)

(assert (=> d!1510168 m!5678449))

(declare-fun m!5678453 () Bool)

(assert (=> d!1510168 m!5678453))

(declare-fun m!5678457 () Bool)

(assert (=> b!4734234 m!5678457))

(declare-fun m!5678461 () Bool)

(assert (=> b!4734235 m!5678461))

(assert (=> b!4733550 d!1510168))

(declare-fun b!4734236 () Bool)

(declare-fun e!2952942 () Unit!131735)

(declare-fun lt!1897221 () Unit!131735)

(assert (=> b!4734236 (= e!2952942 lt!1897221)))

(declare-fun lt!1897217 () Unit!131735)

(assert (=> b!4734236 (= lt!1897217 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335))))))

(assert (=> b!4734236 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun lt!1897220 () Unit!131735)

(assert (=> b!4734236 (= lt!1897220 lt!1897217)))

(assert (=> b!4734236 (= lt!1897221 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun call!331132 () Bool)

(assert (=> b!4734236 call!331132))

(declare-fun b!4734237 () Bool)

(declare-fun e!2952939 () List!53040)

(assert (=> b!4734237 (= e!2952939 (keys!19029 lt!1896784))))

(declare-fun b!4734238 () Bool)

(declare-fun e!2952940 () Bool)

(assert (=> b!4734238 (= e!2952940 (contains!16302 (keys!19029 lt!1896784) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun b!4734239 () Bool)

(declare-fun e!2952938 () Bool)

(assert (=> b!4734239 (= e!2952938 e!2952940)))

(declare-fun res!2004710 () Bool)

(assert (=> b!4734239 (=> (not res!2004710) (not e!2952940))))

(assert (=> b!4734239 (= res!2004710 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335)))))))

(declare-fun b!4734240 () Bool)

(assert (=> b!4734240 false))

(declare-fun lt!1897216 () Unit!131735)

(declare-fun lt!1897222 () Unit!131735)

(assert (=> b!4734240 (= lt!1897216 lt!1897222)))

(assert (=> b!4734240 (containsKey!3440 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335)))))

(assert (=> b!4734240 (= lt!1897222 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun e!2952943 () Unit!131735)

(declare-fun Unit!131947 () Unit!131735)

(assert (=> b!4734240 (= e!2952943 Unit!131947)))

(declare-fun bm!331127 () Bool)

(assert (=> bm!331127 (= call!331132 (contains!16302 e!2952939 (_1!30579 (h!59284 lt!1896335))))))

(declare-fun c!808543 () Bool)

(declare-fun c!808544 () Bool)

(assert (=> bm!331127 (= c!808543 c!808544)))

(declare-fun d!1510170 () Bool)

(assert (=> d!1510170 e!2952938))

(declare-fun res!2004708 () Bool)

(assert (=> d!1510170 (=> res!2004708 e!2952938)))

(declare-fun e!2952941 () Bool)

(assert (=> d!1510170 (= res!2004708 e!2952941)))

(declare-fun res!2004709 () Bool)

(assert (=> d!1510170 (=> (not res!2004709) (not e!2952941))))

(declare-fun lt!1897219 () Bool)

(assert (=> d!1510170 (= res!2004709 (not lt!1897219))))

(declare-fun lt!1897218 () Bool)

(assert (=> d!1510170 (= lt!1897219 lt!1897218)))

(declare-fun lt!1897223 () Unit!131735)

(assert (=> d!1510170 (= lt!1897223 e!2952942)))

(assert (=> d!1510170 (= c!808544 lt!1897218)))

(assert (=> d!1510170 (= lt!1897218 (containsKey!3440 (toList!5978 lt!1896784) (_1!30579 (h!59284 lt!1896335))))))

(assert (=> d!1510170 (= (contains!16298 lt!1896784 (_1!30579 (h!59284 lt!1896335))) lt!1897219)))

(declare-fun b!4734241 () Bool)

(assert (=> b!4734241 (= e!2952939 (getKeysList!974 (toList!5978 lt!1896784)))))

(declare-fun b!4734242 () Bool)

(assert (=> b!4734242 (= e!2952942 e!2952943)))

(declare-fun c!808545 () Bool)

(assert (=> b!4734242 (= c!808545 call!331132)))

(declare-fun b!4734243 () Bool)

(declare-fun Unit!131948 () Unit!131735)

(assert (=> b!4734243 (= e!2952943 Unit!131948)))

(declare-fun b!4734244 () Bool)

(assert (=> b!4734244 (= e!2952941 (not (contains!16302 (keys!19029 lt!1896784) (_1!30579 (h!59284 lt!1896335)))))))

(assert (= (and d!1510170 c!808544) b!4734236))

(assert (= (and d!1510170 (not c!808544)) b!4734242))

(assert (= (and b!4734242 c!808545) b!4734240))

(assert (= (and b!4734242 (not c!808545)) b!4734243))

(assert (= (or b!4734236 b!4734242) bm!331127))

(assert (= (and bm!331127 c!808543) b!4734241))

(assert (= (and bm!331127 (not c!808543)) b!4734237))

(assert (= (and d!1510170 res!2004709) b!4734244))

(assert (= (and d!1510170 (not res!2004708)) b!4734239))

(assert (= (and b!4734239 res!2004710) b!4734238))

(declare-fun m!5678485 () Bool)

(assert (=> b!4734241 m!5678485))

(declare-fun m!5678487 () Bool)

(assert (=> b!4734236 m!5678487))

(declare-fun m!5678489 () Bool)

(assert (=> b!4734236 m!5678489))

(assert (=> b!4734236 m!5678489))

(declare-fun m!5678493 () Bool)

(assert (=> b!4734236 m!5678493))

(declare-fun m!5678497 () Bool)

(assert (=> b!4734236 m!5678497))

(declare-fun m!5678499 () Bool)

(assert (=> d!1510170 m!5678499))

(declare-fun m!5678501 () Bool)

(assert (=> bm!331127 m!5678501))

(declare-fun m!5678503 () Bool)

(assert (=> b!4734237 m!5678503))

(assert (=> b!4734239 m!5678489))

(assert (=> b!4734239 m!5678489))

(assert (=> b!4734239 m!5678493))

(assert (=> b!4734244 m!5678503))

(assert (=> b!4734244 m!5678503))

(declare-fun m!5678505 () Bool)

(assert (=> b!4734244 m!5678505))

(assert (=> b!4734240 m!5678499))

(declare-fun m!5678507 () Bool)

(assert (=> b!4734240 m!5678507))

(assert (=> b!4734238 m!5678503))

(assert (=> b!4734238 m!5678503))

(assert (=> b!4734238 m!5678505))

(assert (=> b!4733550 d!1510170))

(declare-fun d!1510176 () Bool)

(assert (=> d!1510176 (dynLambda!21858 lambda!217843 (h!59284 lt!1896335))))

(declare-fun lt!1897224 () Unit!131735)

(assert (=> d!1510176 (= lt!1897224 (choose!33534 (toList!5978 lt!1896784) lambda!217843 (h!59284 lt!1896335)))))

(declare-fun e!2952947 () Bool)

(assert (=> d!1510176 e!2952947))

(declare-fun res!2004713 () Bool)

(assert (=> d!1510176 (=> (not res!2004713) (not e!2952947))))

(assert (=> d!1510176 (= res!2004713 (forall!11653 (toList!5978 lt!1896784) lambda!217843))))

(assert (=> d!1510176 (= (forallContained!3693 (toList!5978 lt!1896784) lambda!217843 (h!59284 lt!1896335)) lt!1897224)))

(declare-fun b!4734249 () Bool)

(assert (=> b!4734249 (= e!2952947 (contains!16300 (toList!5978 lt!1896784) (h!59284 lt!1896335)))))

(assert (= (and d!1510176 res!2004713) b!4734249))

(declare-fun b_lambda!180719 () Bool)

(assert (=> (not b_lambda!180719) (not d!1510176)))

(assert (=> d!1510176 m!5678423))

(declare-fun m!5678517 () Bool)

(assert (=> d!1510176 m!5678517))

(assert (=> d!1510176 m!5677263))

(declare-fun m!5678519 () Bool)

(assert (=> b!4734249 m!5678519))

(assert (=> b!4733550 d!1510176))

(declare-fun d!1510182 () Bool)

(declare-fun res!2004716 () Bool)

(declare-fun e!2952951 () Bool)

(assert (=> d!1510182 (=> res!2004716 e!2952951)))

(assert (=> d!1510182 (= res!2004716 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510182 (= (forall!11653 (toList!5978 lt!1896343) lambda!217841) e!2952951)))

(declare-fun b!4734254 () Bool)

(declare-fun e!2952952 () Bool)

(assert (=> b!4734254 (= e!2952951 e!2952952)))

(declare-fun res!2004717 () Bool)

(assert (=> b!4734254 (=> (not res!2004717) (not e!2952952))))

(assert (=> b!4734254 (= res!2004717 (dynLambda!21858 lambda!217841 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734255 () Bool)

(assert (=> b!4734255 (= e!2952952 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217841))))

(assert (= (and d!1510182 (not res!2004716)) b!4734254))

(assert (= (and b!4734254 res!2004717) b!4734255))

(declare-fun b_lambda!180723 () Bool)

(assert (=> (not b_lambda!180723) (not b!4734254)))

(declare-fun m!5678525 () Bool)

(assert (=> b!4734254 m!5678525))

(declare-fun m!5678527 () Bool)

(assert (=> b!4734255 m!5678527))

(assert (=> b!4733550 d!1510182))

(declare-fun d!1510186 () Bool)

(declare-fun res!2004720 () Bool)

(declare-fun e!2952955 () Bool)

(assert (=> d!1510186 (=> res!2004720 e!2952955)))

(assert (=> d!1510186 (= res!2004720 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510186 (= (forall!11653 (toList!5978 lt!1896343) lambda!217843) e!2952955)))

(declare-fun b!4734258 () Bool)

(declare-fun e!2952956 () Bool)

(assert (=> b!4734258 (= e!2952955 e!2952956)))

(declare-fun res!2004721 () Bool)

(assert (=> b!4734258 (=> (not res!2004721) (not e!2952956))))

(assert (=> b!4734258 (= res!2004721 (dynLambda!21858 lambda!217843 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734259 () Bool)

(assert (=> b!4734259 (= e!2952956 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217843))))

(assert (= (and d!1510186 (not res!2004720)) b!4734258))

(assert (= (and b!4734258 res!2004721) b!4734259))

(declare-fun b_lambda!180725 () Bool)

(assert (=> (not b_lambda!180725) (not b!4734258)))

(declare-fun m!5678533 () Bool)

(assert (=> b!4734258 m!5678533))

(declare-fun m!5678535 () Bool)

(assert (=> b!4734259 m!5678535))

(assert (=> b!4733550 d!1510186))

(declare-fun bs!1121985 () Bool)

(declare-fun b!4734265 () Bool)

(assert (= bs!1121985 (and b!4734265 b!4733999)))

(declare-fun lambda!217920 () Int)

(assert (=> bs!1121985 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217920 lambda!217905))))

(declare-fun bs!1121986 () Bool)

(assert (= bs!1121986 (and b!4734265 b!4733537)))

(assert (=> bs!1121986 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896756) (= lambda!217920 lambda!217834))))

(declare-fun bs!1121987 () Bool)

(assert (= bs!1121987 (and b!4734265 b!4733594)))

(assert (=> bs!1121987 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217850))))

(declare-fun bs!1121988 () Bool)

(assert (= bs!1121988 (and b!4734265 d!1509834)))

(assert (=> bs!1121988 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896851) (= lambda!217920 lambda!217852))))

(declare-fun bs!1121989 () Bool)

(assert (= bs!1121989 (and b!4734265 d!1509926)))

(assert (=> bs!1121989 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217871))))

(declare-fun bs!1121990 () Bool)

(assert (= bs!1121990 (and b!4734265 b!4733550)))

(assert (=> bs!1121990 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217841))))

(declare-fun bs!1121991 () Bool)

(assert (= bs!1121991 (and b!4734265 b!4733500)))

(assert (=> bs!1121991 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896706) (= lambda!217920 lambda!217821))))

(declare-fun bs!1121992 () Bool)

(assert (= bs!1121992 (and b!4734265 d!1509864)))

(assert (=> bs!1121992 (not (= lambda!217920 lambda!217860))))

(assert (=> bs!1121990 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896793) (= lambda!217920 lambda!217843))))

(declare-fun bs!1121993 () Bool)

(assert (= bs!1121993 (and b!4734265 b!4733596)))

(assert (=> bs!1121993 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217849))))

(declare-fun bs!1121994 () Bool)

(assert (= bs!1121994 (and b!4734265 d!1509730)))

(assert (=> bs!1121994 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896702) (= lambda!217920 lambda!217822))))

(declare-fun bs!1121995 () Bool)

(assert (= bs!1121995 (and b!4734265 b!4733561)))

(assert (=> bs!1121995 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217846))))

(declare-fun bs!1121996 () Bool)

(assert (= bs!1121996 (and b!4734265 d!1509992)))

(assert (=> bs!1121996 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897024) (= lambda!217920 lambda!217883))))

(declare-fun bs!1121997 () Bool)

(assert (= bs!1121997 (and b!4734265 d!1509876)))

(assert (=> bs!1121997 (not (= lambda!217920 lambda!217862))))

(declare-fun bs!1121998 () Bool)

(assert (= bs!1121998 (and b!4734265 b!4733900)))

(assert (=> bs!1121998 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217920 lambda!217877))))

(declare-fun bs!1121999 () Bool)

(assert (= bs!1121999 (and b!4734265 d!1509984)))

(assert (=> bs!1121999 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896826) (= lambda!217920 lambda!217876))))

(declare-fun bs!1122000 () Bool)

(assert (= bs!1122000 (and b!4734265 d!1509818)))

(assert (=> bs!1122000 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896752) (= lambda!217920 lambda!217839))))

(assert (=> bs!1121986 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217833))))

(declare-fun bs!1122001 () Bool)

(assert (= bs!1122001 (and b!4734265 b!4733502)))

(assert (=> bs!1122001 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217819))))

(assert (=> bs!1121991 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217820))))

(declare-fun bs!1122002 () Bool)

(assert (= bs!1122002 (and b!4734265 d!1509820)))

(assert (=> bs!1122002 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896789) (= lambda!217920 lambda!217844))))

(assert (=> bs!1121987 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896855) (= lambda!217920 lambda!217851))))

(declare-fun bs!1122003 () Bool)

(assert (= bs!1122003 (and b!4734265 d!1509826)))

(assert (=> bs!1122003 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896822) (= lambda!217920 lambda!217848))))

(declare-fun bs!1122004 () Bool)

(assert (= bs!1122004 (and b!4734265 b!4734001)))

(assert (=> bs!1122004 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217920 lambda!217904))))

(declare-fun bs!1122005 () Bool)

(assert (= bs!1122005 (and b!4734265 b!4733898)))

(assert (=> bs!1122005 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897028) (= lambda!217920 lambda!217882))))

(assert (=> bs!1121985 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897094) (= lambda!217920 lambda!217906))))

(assert (=> bs!1121995 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896826) (= lambda!217920 lambda!217847))))

(declare-fun bs!1122006 () Bool)

(assert (= bs!1122006 (and b!4734265 d!1510022)))

(assert (=> bs!1122006 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897090) (= lambda!217920 lambda!217907))))

(declare-fun bs!1122007 () Bool)

(assert (= bs!1122007 (and b!4734265 b!4733563)))

(assert (=> bs!1122007 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217845))))

(declare-fun bs!1122008 () Bool)

(assert (= bs!1122008 (and b!4734265 b!4733539)))

(assert (=> bs!1122008 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217830))))

(assert (=> bs!1122005 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217920 lambda!217880))))

(declare-fun bs!1122009 () Bool)

(assert (= bs!1122009 (and b!4734265 d!1510164)))

(assert (=> bs!1122009 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896793) (= lambda!217920 lambda!217918))))

(declare-fun bs!1122010 () Bool)

(assert (= bs!1122010 (and b!4734265 b!4733552)))

(assert (=> bs!1122010 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217920 lambda!217840))))

(assert (=> b!4734265 true))

(declare-fun bs!1122011 () Bool)

(declare-fun b!4734263 () Bool)

(assert (= bs!1122011 (and b!4734263 b!4733999)))

(declare-fun lambda!217921 () Int)

(assert (=> bs!1122011 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217921 lambda!217905))))

(declare-fun bs!1122012 () Bool)

(assert (= bs!1122012 (and b!4734263 b!4733537)))

(assert (=> bs!1122012 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896756) (= lambda!217921 lambda!217834))))

(declare-fun bs!1122013 () Bool)

(assert (= bs!1122013 (and b!4734263 b!4733594)))

(assert (=> bs!1122013 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217850))))

(declare-fun bs!1122014 () Bool)

(assert (= bs!1122014 (and b!4734263 d!1509834)))

(assert (=> bs!1122014 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896851) (= lambda!217921 lambda!217852))))

(declare-fun bs!1122015 () Bool)

(assert (= bs!1122015 (and b!4734263 d!1509926)))

(assert (=> bs!1122015 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217871))))

(declare-fun bs!1122016 () Bool)

(assert (= bs!1122016 (and b!4734263 b!4733550)))

(assert (=> bs!1122016 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217841))))

(declare-fun bs!1122017 () Bool)

(assert (= bs!1122017 (and b!4734263 b!4733500)))

(assert (=> bs!1122017 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896706) (= lambda!217921 lambda!217821))))

(declare-fun bs!1122018 () Bool)

(assert (= bs!1122018 (and b!4734263 d!1509864)))

(assert (=> bs!1122018 (not (= lambda!217921 lambda!217860))))

(assert (=> bs!1122016 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896793) (= lambda!217921 lambda!217843))))

(declare-fun bs!1122019 () Bool)

(assert (= bs!1122019 (and b!4734263 b!4733596)))

(assert (=> bs!1122019 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217849))))

(declare-fun bs!1122020 () Bool)

(assert (= bs!1122020 (and b!4734263 d!1509730)))

(assert (=> bs!1122020 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896702) (= lambda!217921 lambda!217822))))

(declare-fun bs!1122021 () Bool)

(assert (= bs!1122021 (and b!4734263 b!4733561)))

(assert (=> bs!1122021 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217846))))

(declare-fun bs!1122022 () Bool)

(assert (= bs!1122022 (and b!4734263 d!1509992)))

(assert (=> bs!1122022 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897024) (= lambda!217921 lambda!217883))))

(declare-fun bs!1122023 () Bool)

(assert (= bs!1122023 (and b!4734263 d!1509876)))

(assert (=> bs!1122023 (not (= lambda!217921 lambda!217862))))

(declare-fun bs!1122024 () Bool)

(assert (= bs!1122024 (and b!4734263 b!4733900)))

(assert (=> bs!1122024 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217921 lambda!217877))))

(declare-fun bs!1122025 () Bool)

(assert (= bs!1122025 (and b!4734263 d!1509984)))

(assert (=> bs!1122025 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896826) (= lambda!217921 lambda!217876))))

(assert (=> bs!1122012 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217833))))

(declare-fun bs!1122026 () Bool)

(assert (= bs!1122026 (and b!4734263 b!4734265)))

(assert (=> bs!1122026 (= lambda!217921 lambda!217920)))

(declare-fun bs!1122027 () Bool)

(assert (= bs!1122027 (and b!4734263 d!1509818)))

(assert (=> bs!1122027 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896752) (= lambda!217921 lambda!217839))))

(declare-fun bs!1122028 () Bool)

(assert (= bs!1122028 (and b!4734263 b!4733502)))

(assert (=> bs!1122028 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217819))))

(assert (=> bs!1122017 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217820))))

(declare-fun bs!1122029 () Bool)

(assert (= bs!1122029 (and b!4734263 d!1509820)))

(assert (=> bs!1122029 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896789) (= lambda!217921 lambda!217844))))

(assert (=> bs!1122013 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896855) (= lambda!217921 lambda!217851))))

(declare-fun bs!1122030 () Bool)

(assert (= bs!1122030 (and b!4734263 d!1509826)))

(assert (=> bs!1122030 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896822) (= lambda!217921 lambda!217848))))

(declare-fun bs!1122031 () Bool)

(assert (= bs!1122031 (and b!4734263 b!4734001)))

(assert (=> bs!1122031 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217921 lambda!217904))))

(declare-fun bs!1122032 () Bool)

(assert (= bs!1122032 (and b!4734263 b!4733898)))

(assert (=> bs!1122032 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897028) (= lambda!217921 lambda!217882))))

(assert (=> bs!1122011 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897094) (= lambda!217921 lambda!217906))))

(assert (=> bs!1122021 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896826) (= lambda!217921 lambda!217847))))

(declare-fun bs!1122033 () Bool)

(assert (= bs!1122033 (and b!4734263 d!1510022)))

(assert (=> bs!1122033 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897090) (= lambda!217921 lambda!217907))))

(declare-fun bs!1122034 () Bool)

(assert (= bs!1122034 (and b!4734263 b!4733563)))

(assert (=> bs!1122034 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217845))))

(declare-fun bs!1122035 () Bool)

(assert (= bs!1122035 (and b!4734263 b!4733539)))

(assert (=> bs!1122035 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217830))))

(assert (=> bs!1122032 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217921 lambda!217880))))

(declare-fun bs!1122036 () Bool)

(assert (= bs!1122036 (and b!4734263 d!1510164)))

(assert (=> bs!1122036 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896793) (= lambda!217921 lambda!217918))))

(declare-fun bs!1122037 () Bool)

(assert (= bs!1122037 (and b!4734263 b!4733552)))

(assert (=> bs!1122037 (= (= (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1896343) (= lambda!217921 lambda!217840))))

(assert (=> b!4734263 true))

(declare-fun lambda!217922 () Int)

(declare-fun lt!1897244 () ListMap!5341)

(assert (=> bs!1122011 (= (= lt!1897244 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217922 lambda!217905))))

(assert (=> bs!1122012 (= (= lt!1897244 lt!1896756) (= lambda!217922 lambda!217834))))

(assert (=> bs!1122013 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217850))))

(assert (=> bs!1122014 (= (= lt!1897244 lt!1896851) (= lambda!217922 lambda!217852))))

(assert (=> bs!1122015 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217871))))

(assert (=> bs!1122017 (= (= lt!1897244 lt!1896706) (= lambda!217922 lambda!217821))))

(assert (=> bs!1122018 (not (= lambda!217922 lambda!217860))))

(assert (=> bs!1122016 (= (= lt!1897244 lt!1896793) (= lambda!217922 lambda!217843))))

(assert (=> bs!1122019 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217849))))

(assert (=> bs!1122020 (= (= lt!1897244 lt!1896702) (= lambda!217922 lambda!217822))))

(assert (=> bs!1122021 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217846))))

(assert (=> bs!1122022 (= (= lt!1897244 lt!1897024) (= lambda!217922 lambda!217883))))

(assert (=> bs!1122023 (not (= lambda!217922 lambda!217862))))

(assert (=> bs!1122024 (= (= lt!1897244 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217922 lambda!217877))))

(assert (=> bs!1122025 (= (= lt!1897244 lt!1896826) (= lambda!217922 lambda!217876))))

(assert (=> bs!1122012 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217833))))

(assert (=> bs!1122026 (= (= lt!1897244 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217922 lambda!217920))))

(assert (=> bs!1122027 (= (= lt!1897244 lt!1896752) (= lambda!217922 lambda!217839))))

(assert (=> bs!1122028 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217819))))

(assert (=> bs!1122017 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217820))))

(assert (=> bs!1122029 (= (= lt!1897244 lt!1896789) (= lambda!217922 lambda!217844))))

(assert (=> bs!1122013 (= (= lt!1897244 lt!1896855) (= lambda!217922 lambda!217851))))

(assert (=> bs!1122030 (= (= lt!1897244 lt!1896822) (= lambda!217922 lambda!217848))))

(assert (=> bs!1122031 (= (= lt!1897244 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217922 lambda!217904))))

(assert (=> bs!1122032 (= (= lt!1897244 lt!1897028) (= lambda!217922 lambda!217882))))

(assert (=> bs!1122011 (= (= lt!1897244 lt!1897094) (= lambda!217922 lambda!217906))))

(assert (=> bs!1122021 (= (= lt!1897244 lt!1896826) (= lambda!217922 lambda!217847))))

(assert (=> bs!1122033 (= (= lt!1897244 lt!1897090) (= lambda!217922 lambda!217907))))

(assert (=> bs!1122034 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217845))))

(assert (=> bs!1122035 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217830))))

(assert (=> bs!1122032 (= (= lt!1897244 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217922 lambda!217880))))

(assert (=> b!4734263 (= (= lt!1897244 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217922 lambda!217921))))

(assert (=> bs!1122016 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217841))))

(assert (=> bs!1122036 (= (= lt!1897244 lt!1896793) (= lambda!217922 lambda!217918))))

(assert (=> bs!1122037 (= (= lt!1897244 lt!1896343) (= lambda!217922 lambda!217840))))

(assert (=> b!4734263 true))

(declare-fun bs!1122038 () Bool)

(declare-fun d!1510190 () Bool)

(assert (= bs!1122038 (and d!1510190 b!4733999)))

(declare-fun lambda!217923 () Int)

(declare-fun lt!1897240 () ListMap!5341)

(assert (=> bs!1122038 (= (= lt!1897240 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217923 lambda!217905))))

(declare-fun bs!1122039 () Bool)

(assert (= bs!1122039 (and d!1510190 b!4733537)))

(assert (=> bs!1122039 (= (= lt!1897240 lt!1896756) (= lambda!217923 lambda!217834))))

(declare-fun bs!1122040 () Bool)

(assert (= bs!1122040 (and d!1510190 b!4733594)))

(assert (=> bs!1122040 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217850))))

(declare-fun bs!1122041 () Bool)

(assert (= bs!1122041 (and d!1510190 d!1509834)))

(assert (=> bs!1122041 (= (= lt!1897240 lt!1896851) (= lambda!217923 lambda!217852))))

(declare-fun bs!1122042 () Bool)

(assert (= bs!1122042 (and d!1510190 d!1509926)))

(assert (=> bs!1122042 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217871))))

(declare-fun bs!1122043 () Bool)

(assert (= bs!1122043 (and d!1510190 b!4733500)))

(assert (=> bs!1122043 (= (= lt!1897240 lt!1896706) (= lambda!217923 lambda!217821))))

(declare-fun bs!1122044 () Bool)

(assert (= bs!1122044 (and d!1510190 d!1509864)))

(assert (=> bs!1122044 (not (= lambda!217923 lambda!217860))))

(declare-fun bs!1122045 () Bool)

(assert (= bs!1122045 (and d!1510190 b!4733550)))

(assert (=> bs!1122045 (= (= lt!1897240 lt!1896793) (= lambda!217923 lambda!217843))))

(declare-fun bs!1122046 () Bool)

(assert (= bs!1122046 (and d!1510190 b!4733596)))

(assert (=> bs!1122046 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217849))))

(declare-fun bs!1122047 () Bool)

(assert (= bs!1122047 (and d!1510190 d!1509730)))

(assert (=> bs!1122047 (= (= lt!1897240 lt!1896702) (= lambda!217923 lambda!217822))))

(declare-fun bs!1122048 () Bool)

(assert (= bs!1122048 (and d!1510190 b!4733561)))

(assert (=> bs!1122048 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217846))))

(declare-fun bs!1122049 () Bool)

(assert (= bs!1122049 (and d!1510190 d!1509992)))

(assert (=> bs!1122049 (= (= lt!1897240 lt!1897024) (= lambda!217923 lambda!217883))))

(declare-fun bs!1122050 () Bool)

(assert (= bs!1122050 (and d!1510190 b!4734263)))

(assert (=> bs!1122050 (= (= lt!1897240 lt!1897244) (= lambda!217923 lambda!217922))))

(declare-fun bs!1122051 () Bool)

(assert (= bs!1122051 (and d!1510190 d!1509876)))

(assert (=> bs!1122051 (not (= lambda!217923 lambda!217862))))

(declare-fun bs!1122052 () Bool)

(assert (= bs!1122052 (and d!1510190 b!4733900)))

(assert (=> bs!1122052 (= (= lt!1897240 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217923 lambda!217877))))

(declare-fun bs!1122053 () Bool)

(assert (= bs!1122053 (and d!1510190 d!1509984)))

(assert (=> bs!1122053 (= (= lt!1897240 lt!1896826) (= lambda!217923 lambda!217876))))

(assert (=> bs!1122039 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217833))))

(declare-fun bs!1122054 () Bool)

(assert (= bs!1122054 (and d!1510190 b!4734265)))

(assert (=> bs!1122054 (= (= lt!1897240 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217923 lambda!217920))))

(declare-fun bs!1122055 () Bool)

(assert (= bs!1122055 (and d!1510190 d!1509818)))

(assert (=> bs!1122055 (= (= lt!1897240 lt!1896752) (= lambda!217923 lambda!217839))))

(declare-fun bs!1122056 () Bool)

(assert (= bs!1122056 (and d!1510190 b!4733502)))

(assert (=> bs!1122056 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217819))))

(assert (=> bs!1122043 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217820))))

(declare-fun bs!1122057 () Bool)

(assert (= bs!1122057 (and d!1510190 d!1509820)))

(assert (=> bs!1122057 (= (= lt!1897240 lt!1896789) (= lambda!217923 lambda!217844))))

(assert (=> bs!1122040 (= (= lt!1897240 lt!1896855) (= lambda!217923 lambda!217851))))

(declare-fun bs!1122058 () Bool)

(assert (= bs!1122058 (and d!1510190 d!1509826)))

(assert (=> bs!1122058 (= (= lt!1897240 lt!1896822) (= lambda!217923 lambda!217848))))

(declare-fun bs!1122059 () Bool)

(assert (= bs!1122059 (and d!1510190 b!4734001)))

(assert (=> bs!1122059 (= (= lt!1897240 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217923 lambda!217904))))

(declare-fun bs!1122060 () Bool)

(assert (= bs!1122060 (and d!1510190 b!4733898)))

(assert (=> bs!1122060 (= (= lt!1897240 lt!1897028) (= lambda!217923 lambda!217882))))

(assert (=> bs!1122038 (= (= lt!1897240 lt!1897094) (= lambda!217923 lambda!217906))))

(assert (=> bs!1122048 (= (= lt!1897240 lt!1896826) (= lambda!217923 lambda!217847))))

(declare-fun bs!1122061 () Bool)

(assert (= bs!1122061 (and d!1510190 d!1510022)))

(assert (=> bs!1122061 (= (= lt!1897240 lt!1897090) (= lambda!217923 lambda!217907))))

(declare-fun bs!1122062 () Bool)

(assert (= bs!1122062 (and d!1510190 b!4733563)))

(assert (=> bs!1122062 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217845))))

(declare-fun bs!1122063 () Bool)

(assert (= bs!1122063 (and d!1510190 b!4733539)))

(assert (=> bs!1122063 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217830))))

(assert (=> bs!1122060 (= (= lt!1897240 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217923 lambda!217880))))

(assert (=> bs!1122050 (= (= lt!1897240 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217923 lambda!217921))))

(assert (=> bs!1122045 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217841))))

(declare-fun bs!1122064 () Bool)

(assert (= bs!1122064 (and d!1510190 d!1510164)))

(assert (=> bs!1122064 (= (= lt!1897240 lt!1896793) (= lambda!217923 lambda!217918))))

(declare-fun bs!1122065 () Bool)

(assert (= bs!1122065 (and d!1510190 b!4733552)))

(assert (=> bs!1122065 (= (= lt!1897240 lt!1896343) (= lambda!217923 lambda!217840))))

(assert (=> d!1510190 true))

(declare-fun call!331133 () Bool)

(declare-fun bm!331128 () Bool)

(declare-fun c!808548 () Bool)

(assert (=> bm!331128 (= call!331133 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896335))) (ite c!808548 lambda!217920 lambda!217922)))))

(declare-fun b!4734262 () Bool)

(declare-fun e!2952961 () Bool)

(assert (=> b!4734262 (= e!2952961 call!331133)))

(declare-fun bm!331129 () Bool)

(declare-fun call!331135 () Unit!131735)

(assert (=> bm!331129 (= call!331135 (lemmaContainsAllItsOwnKeys!820 (+!2292 lt!1896343 (h!59284 lt!1896335))))))

(declare-fun bm!331130 () Bool)

(declare-fun call!331134 () Bool)

(assert (=> bm!331130 (= call!331134 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896335))) (ite c!808548 lambda!217920 lambda!217922)))))

(declare-fun e!2952959 () Bool)

(assert (=> d!1510190 e!2952959))

(declare-fun res!2004724 () Bool)

(assert (=> d!1510190 (=> (not res!2004724) (not e!2952959))))

(assert (=> d!1510190 (= res!2004724 (forall!11653 (t!360317 lt!1896335) lambda!217923))))

(declare-fun e!2952960 () ListMap!5341)

(assert (=> d!1510190 (= lt!1897240 e!2952960)))

(assert (=> d!1510190 (= c!808548 ((_ is Nil!52913) (t!360317 lt!1896335)))))

(assert (=> d!1510190 (noDuplicateKeys!2044 (t!360317 lt!1896335))))

(assert (=> d!1510190 (= (addToMapMapFromBucket!1474 (t!360317 lt!1896335) (+!2292 lt!1896343 (h!59284 lt!1896335))) lt!1897240)))

(assert (=> b!4734263 (= e!2952960 lt!1897244)))

(declare-fun lt!1897235 () ListMap!5341)

(assert (=> b!4734263 (= lt!1897235 (+!2292 (+!2292 lt!1896343 (h!59284 lt!1896335)) (h!59284 (t!360317 lt!1896335))))))

(assert (=> b!4734263 (= lt!1897244 (addToMapMapFromBucket!1474 (t!360317 (t!360317 lt!1896335)) (+!2292 (+!2292 lt!1896343 (h!59284 lt!1896335)) (h!59284 (t!360317 lt!1896335)))))))

(declare-fun lt!1897236 () Unit!131735)

(assert (=> b!4734263 (= lt!1897236 call!331135)))

(assert (=> b!4734263 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896335))) lambda!217921)))

(declare-fun lt!1897233 () Unit!131735)

(assert (=> b!4734263 (= lt!1897233 lt!1897236)))

(assert (=> b!4734263 (forall!11653 (toList!5978 lt!1897235) lambda!217922)))

(declare-fun lt!1897234 () Unit!131735)

(declare-fun Unit!131949 () Unit!131735)

(assert (=> b!4734263 (= lt!1897234 Unit!131949)))

(assert (=> b!4734263 (forall!11653 (t!360317 (t!360317 lt!1896335)) lambda!217922)))

(declare-fun lt!1897230 () Unit!131735)

(declare-fun Unit!131950 () Unit!131735)

(assert (=> b!4734263 (= lt!1897230 Unit!131950)))

(declare-fun lt!1897245 () Unit!131735)

(declare-fun Unit!131951 () Unit!131735)

(assert (=> b!4734263 (= lt!1897245 Unit!131951)))

(declare-fun lt!1897227 () Unit!131735)

(assert (=> b!4734263 (= lt!1897227 (forallContained!3693 (toList!5978 lt!1897235) lambda!217922 (h!59284 (t!360317 lt!1896335))))))

(assert (=> b!4734263 (contains!16298 lt!1897235 (_1!30579 (h!59284 (t!360317 lt!1896335))))))

(declare-fun lt!1897239 () Unit!131735)

(declare-fun Unit!131952 () Unit!131735)

(assert (=> b!4734263 (= lt!1897239 Unit!131952)))

(assert (=> b!4734263 (contains!16298 lt!1897244 (_1!30579 (h!59284 (t!360317 lt!1896335))))))

(declare-fun lt!1897241 () Unit!131735)

(declare-fun Unit!131953 () Unit!131735)

(assert (=> b!4734263 (= lt!1897241 Unit!131953)))

(assert (=> b!4734263 (forall!11653 (t!360317 lt!1896335) lambda!217922)))

(declare-fun lt!1897243 () Unit!131735)

(declare-fun Unit!131954 () Unit!131735)

(assert (=> b!4734263 (= lt!1897243 Unit!131954)))

(assert (=> b!4734263 (forall!11653 (toList!5978 lt!1897235) lambda!217922)))

(declare-fun lt!1897231 () Unit!131735)

(declare-fun Unit!131955 () Unit!131735)

(assert (=> b!4734263 (= lt!1897231 Unit!131955)))

(declare-fun lt!1897226 () Unit!131735)

(declare-fun Unit!131956 () Unit!131735)

(assert (=> b!4734263 (= lt!1897226 Unit!131956)))

(declare-fun lt!1897228 () Unit!131735)

(assert (=> b!4734263 (= lt!1897228 (addForallContainsKeyThenBeforeAdding!819 (+!2292 lt!1896343 (h!59284 lt!1896335)) lt!1897244 (_1!30579 (h!59284 (t!360317 lt!1896335))) (_2!30579 (h!59284 (t!360317 lt!1896335)))))))

(assert (=> b!4734263 call!331134))

(declare-fun lt!1897237 () Unit!131735)

(assert (=> b!4734263 (= lt!1897237 lt!1897228)))

(assert (=> b!4734263 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896335))) lambda!217922)))

(declare-fun lt!1897225 () Unit!131735)

(declare-fun Unit!131960 () Unit!131735)

(assert (=> b!4734263 (= lt!1897225 Unit!131960)))

(declare-fun res!2004726 () Bool)

(assert (=> b!4734263 (= res!2004726 (forall!11653 (t!360317 lt!1896335) lambda!217922))))

(assert (=> b!4734263 (=> (not res!2004726) (not e!2952961))))

(assert (=> b!4734263 e!2952961))

(declare-fun lt!1897229 () Unit!131735)

(declare-fun Unit!131961 () Unit!131735)

(assert (=> b!4734263 (= lt!1897229 Unit!131961)))

(declare-fun b!4734264 () Bool)

(declare-fun res!2004725 () Bool)

(assert (=> b!4734264 (=> (not res!2004725) (not e!2952959))))

(assert (=> b!4734264 (= res!2004725 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896335))) lambda!217923))))

(assert (=> b!4734265 (= e!2952960 (+!2292 lt!1896343 (h!59284 lt!1896335)))))

(declare-fun lt!1897238 () Unit!131735)

(assert (=> b!4734265 (= lt!1897238 call!331135)))

(assert (=> b!4734265 call!331134))

(declare-fun lt!1897242 () Unit!131735)

(assert (=> b!4734265 (= lt!1897242 lt!1897238)))

(assert (=> b!4734265 call!331133))

(declare-fun lt!1897232 () Unit!131735)

(declare-fun Unit!131966 () Unit!131735)

(assert (=> b!4734265 (= lt!1897232 Unit!131966)))

(declare-fun b!4734266 () Bool)

(assert (=> b!4734266 (= e!2952959 (invariantList!1535 (toList!5978 lt!1897240)))))

(assert (= (and d!1510190 c!808548) b!4734265))

(assert (= (and d!1510190 (not c!808548)) b!4734263))

(assert (= (and b!4734263 res!2004726) b!4734262))

(assert (= (or b!4734265 b!4734263) bm!331129))

(assert (= (or b!4734265 b!4734263) bm!331130))

(assert (= (or b!4734265 b!4734262) bm!331128))

(assert (= (and d!1510190 res!2004724) b!4734264))

(assert (= (and b!4734264 res!2004725) b!4734266))

(declare-fun m!5678579 () Bool)

(assert (=> bm!331128 m!5678579))

(declare-fun m!5678581 () Bool)

(assert (=> d!1510190 m!5678581))

(assert (=> d!1510190 m!5677543))

(assert (=> bm!331129 m!5677271))

(declare-fun m!5678583 () Bool)

(assert (=> bm!331129 m!5678583))

(declare-fun m!5678585 () Bool)

(assert (=> b!4734263 m!5678585))

(declare-fun m!5678587 () Bool)

(assert (=> b!4734263 m!5678587))

(declare-fun m!5678589 () Bool)

(assert (=> b!4734263 m!5678589))

(declare-fun m!5678591 () Bool)

(assert (=> b!4734263 m!5678591))

(declare-fun m!5678593 () Bool)

(assert (=> b!4734263 m!5678593))

(declare-fun m!5678595 () Bool)

(assert (=> b!4734263 m!5678595))

(declare-fun m!5678597 () Bool)

(assert (=> b!4734263 m!5678597))

(assert (=> b!4734263 m!5678585))

(assert (=> b!4734263 m!5677271))

(declare-fun m!5678599 () Bool)

(assert (=> b!4734263 m!5678599))

(declare-fun m!5678601 () Bool)

(assert (=> b!4734263 m!5678601))

(assert (=> b!4734263 m!5678591))

(assert (=> b!4734263 m!5677271))

(declare-fun m!5678603 () Bool)

(assert (=> b!4734263 m!5678603))

(assert (=> b!4734263 m!5678599))

(declare-fun m!5678605 () Bool)

(assert (=> b!4734263 m!5678605))

(declare-fun m!5678607 () Bool)

(assert (=> b!4734264 m!5678607))

(assert (=> bm!331130 m!5678579))

(declare-fun m!5678609 () Bool)

(assert (=> b!4734266 m!5678609))

(assert (=> b!4733550 d!1510190))

(declare-fun b!4734290 () Bool)

(declare-fun e!2952981 () Unit!131735)

(declare-fun lt!1897263 () Unit!131735)

(assert (=> b!4734290 (= e!2952981 lt!1897263)))

(declare-fun lt!1897259 () Unit!131735)

(assert (=> b!4734290 (= lt!1897259 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335))))))

(assert (=> b!4734290 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun lt!1897262 () Unit!131735)

(assert (=> b!4734290 (= lt!1897262 lt!1897259)))

(assert (=> b!4734290 (= lt!1897263 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun call!331137 () Bool)

(assert (=> b!4734290 call!331137))

(declare-fun b!4734291 () Bool)

(declare-fun e!2952978 () List!53040)

(assert (=> b!4734291 (= e!2952978 (keys!19029 lt!1896793))))

(declare-fun b!4734292 () Bool)

(declare-fun e!2952979 () Bool)

(assert (=> b!4734292 (= e!2952979 (contains!16302 (keys!19029 lt!1896793) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun b!4734293 () Bool)

(declare-fun e!2952977 () Bool)

(assert (=> b!4734293 (= e!2952977 e!2952979)))

(declare-fun res!2004742 () Bool)

(assert (=> b!4734293 (=> (not res!2004742) (not e!2952979))))

(assert (=> b!4734293 (= res!2004742 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335)))))))

(declare-fun b!4734294 () Bool)

(assert (=> b!4734294 false))

(declare-fun lt!1897258 () Unit!131735)

(declare-fun lt!1897264 () Unit!131735)

(assert (=> b!4734294 (= lt!1897258 lt!1897264)))

(assert (=> b!4734294 (containsKey!3440 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335)))))

(assert (=> b!4734294 (= lt!1897264 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335))))))

(declare-fun e!2952982 () Unit!131735)

(declare-fun Unit!131971 () Unit!131735)

(assert (=> b!4734294 (= e!2952982 Unit!131971)))

(declare-fun bm!331132 () Bool)

(assert (=> bm!331132 (= call!331137 (contains!16302 e!2952978 (_1!30579 (h!59284 lt!1896335))))))

(declare-fun c!808554 () Bool)

(declare-fun c!808555 () Bool)

(assert (=> bm!331132 (= c!808554 c!808555)))

(declare-fun d!1510206 () Bool)

(assert (=> d!1510206 e!2952977))

(declare-fun res!2004740 () Bool)

(assert (=> d!1510206 (=> res!2004740 e!2952977)))

(declare-fun e!2952980 () Bool)

(assert (=> d!1510206 (= res!2004740 e!2952980)))

(declare-fun res!2004741 () Bool)

(assert (=> d!1510206 (=> (not res!2004741) (not e!2952980))))

(declare-fun lt!1897261 () Bool)

(assert (=> d!1510206 (= res!2004741 (not lt!1897261))))

(declare-fun lt!1897260 () Bool)

(assert (=> d!1510206 (= lt!1897261 lt!1897260)))

(declare-fun lt!1897265 () Unit!131735)

(assert (=> d!1510206 (= lt!1897265 e!2952981)))

(assert (=> d!1510206 (= c!808555 lt!1897260)))

(assert (=> d!1510206 (= lt!1897260 (containsKey!3440 (toList!5978 lt!1896793) (_1!30579 (h!59284 lt!1896335))))))

(assert (=> d!1510206 (= (contains!16298 lt!1896793 (_1!30579 (h!59284 lt!1896335))) lt!1897261)))

(declare-fun b!4734295 () Bool)

(assert (=> b!4734295 (= e!2952978 (getKeysList!974 (toList!5978 lt!1896793)))))

(declare-fun b!4734296 () Bool)

(assert (=> b!4734296 (= e!2952981 e!2952982)))

(declare-fun c!808556 () Bool)

(assert (=> b!4734296 (= c!808556 call!331137)))

(declare-fun b!4734297 () Bool)

(declare-fun Unit!131973 () Unit!131735)

(assert (=> b!4734297 (= e!2952982 Unit!131973)))

(declare-fun b!4734298 () Bool)

(assert (=> b!4734298 (= e!2952980 (not (contains!16302 (keys!19029 lt!1896793) (_1!30579 (h!59284 lt!1896335)))))))

(assert (= (and d!1510206 c!808555) b!4734290))

(assert (= (and d!1510206 (not c!808555)) b!4734296))

(assert (= (and b!4734296 c!808556) b!4734294))

(assert (= (and b!4734296 (not c!808556)) b!4734297))

(assert (= (or b!4734290 b!4734296) bm!331132))

(assert (= (and bm!331132 c!808554) b!4734295))

(assert (= (and bm!331132 (not c!808554)) b!4734291))

(assert (= (and d!1510206 res!2004741) b!4734298))

(assert (= (and d!1510206 (not res!2004740)) b!4734293))

(assert (= (and b!4734293 res!2004742) b!4734292))

(declare-fun m!5678611 () Bool)

(assert (=> b!4734295 m!5678611))

(declare-fun m!5678613 () Bool)

(assert (=> b!4734290 m!5678613))

(declare-fun m!5678615 () Bool)

(assert (=> b!4734290 m!5678615))

(assert (=> b!4734290 m!5678615))

(declare-fun m!5678617 () Bool)

(assert (=> b!4734290 m!5678617))

(declare-fun m!5678619 () Bool)

(assert (=> b!4734290 m!5678619))

(declare-fun m!5678621 () Bool)

(assert (=> d!1510206 m!5678621))

(declare-fun m!5678623 () Bool)

(assert (=> bm!331132 m!5678623))

(declare-fun m!5678625 () Bool)

(assert (=> b!4734291 m!5678625))

(assert (=> b!4734293 m!5678615))

(assert (=> b!4734293 m!5678615))

(assert (=> b!4734293 m!5678617))

(assert (=> b!4734298 m!5678625))

(assert (=> b!4734298 m!5678625))

(declare-fun m!5678627 () Bool)

(assert (=> b!4734298 m!5678627))

(assert (=> b!4734294 m!5678621))

(declare-fun m!5678629 () Bool)

(assert (=> b!4734294 m!5678629))

(assert (=> b!4734292 m!5678625))

(assert (=> b!4734292 m!5678625))

(assert (=> b!4734292 m!5678627))

(assert (=> b!4733550 d!1510206))

(declare-fun bs!1122066 () Bool)

(declare-fun b!4734302 () Bool)

(assert (= bs!1122066 (and b!4734302 b!4733999)))

(declare-fun lambda!217924 () Int)

(assert (=> bs!1122066 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217924 lambda!217905))))

(declare-fun bs!1122067 () Bool)

(assert (= bs!1122067 (and b!4734302 b!4733537)))

(assert (=> bs!1122067 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896756) (= lambda!217924 lambda!217834))))

(declare-fun bs!1122068 () Bool)

(assert (= bs!1122068 (and b!4734302 b!4733594)))

(assert (=> bs!1122068 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217850))))

(declare-fun bs!1122069 () Bool)

(assert (= bs!1122069 (and b!4734302 d!1509834)))

(assert (=> bs!1122069 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896851) (= lambda!217924 lambda!217852))))

(declare-fun bs!1122070 () Bool)

(assert (= bs!1122070 (and b!4734302 d!1509926)))

(assert (=> bs!1122070 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217871))))

(declare-fun bs!1122071 () Bool)

(assert (= bs!1122071 (and b!4734302 b!4733500)))

(assert (=> bs!1122071 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896706) (= lambda!217924 lambda!217821))))

(declare-fun bs!1122072 () Bool)

(assert (= bs!1122072 (and b!4734302 d!1509864)))

(assert (=> bs!1122072 (not (= lambda!217924 lambda!217860))))

(declare-fun bs!1122073 () Bool)

(assert (= bs!1122073 (and b!4734302 b!4733550)))

(assert (=> bs!1122073 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896793) (= lambda!217924 lambda!217843))))

(declare-fun bs!1122074 () Bool)

(assert (= bs!1122074 (and b!4734302 b!4733596)))

(assert (=> bs!1122074 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217849))))

(declare-fun bs!1122075 () Bool)

(assert (= bs!1122075 (and b!4734302 d!1509730)))

(assert (=> bs!1122075 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896702) (= lambda!217924 lambda!217822))))

(declare-fun bs!1122076 () Bool)

(assert (= bs!1122076 (and b!4734302 b!4733561)))

(assert (=> bs!1122076 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217846))))

(declare-fun bs!1122077 () Bool)

(assert (= bs!1122077 (and b!4734302 d!1509992)))

(assert (=> bs!1122077 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897024) (= lambda!217924 lambda!217883))))

(declare-fun bs!1122078 () Bool)

(assert (= bs!1122078 (and b!4734302 b!4734263)))

(assert (=> bs!1122078 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897244) (= lambda!217924 lambda!217922))))

(declare-fun bs!1122079 () Bool)

(assert (= bs!1122079 (and b!4734302 d!1509876)))

(assert (=> bs!1122079 (not (= lambda!217924 lambda!217862))))

(declare-fun bs!1122080 () Bool)

(assert (= bs!1122080 (and b!4734302 b!4733900)))

(assert (=> bs!1122080 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217924 lambda!217877))))

(declare-fun bs!1122081 () Bool)

(assert (= bs!1122081 (and b!4734302 d!1509984)))

(assert (=> bs!1122081 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896826) (= lambda!217924 lambda!217876))))

(assert (=> bs!1122067 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217833))))

(declare-fun bs!1122082 () Bool)

(assert (= bs!1122082 (and b!4734302 b!4734265)))

(assert (=> bs!1122082 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217924 lambda!217920))))

(declare-fun bs!1122083 () Bool)

(assert (= bs!1122083 (and b!4734302 d!1509818)))

(assert (=> bs!1122083 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896752) (= lambda!217924 lambda!217839))))

(declare-fun bs!1122084 () Bool)

(assert (= bs!1122084 (and b!4734302 d!1510190)))

(assert (=> bs!1122084 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897240) (= lambda!217924 lambda!217923))))

(declare-fun bs!1122085 () Bool)

(assert (= bs!1122085 (and b!4734302 b!4733502)))

(assert (=> bs!1122085 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217819))))

(assert (=> bs!1122071 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217820))))

(declare-fun bs!1122086 () Bool)

(assert (= bs!1122086 (and b!4734302 d!1509820)))

(assert (=> bs!1122086 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896789) (= lambda!217924 lambda!217844))))

(assert (=> bs!1122068 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896855) (= lambda!217924 lambda!217851))))

(declare-fun bs!1122087 () Bool)

(assert (= bs!1122087 (and b!4734302 d!1509826)))

(assert (=> bs!1122087 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896822) (= lambda!217924 lambda!217848))))

(declare-fun bs!1122088 () Bool)

(assert (= bs!1122088 (and b!4734302 b!4734001)))

(assert (=> bs!1122088 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217924 lambda!217904))))

(declare-fun bs!1122089 () Bool)

(assert (= bs!1122089 (and b!4734302 b!4733898)))

(assert (=> bs!1122089 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897028) (= lambda!217924 lambda!217882))))

(assert (=> bs!1122066 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897094) (= lambda!217924 lambda!217906))))

(assert (=> bs!1122076 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896826) (= lambda!217924 lambda!217847))))

(declare-fun bs!1122090 () Bool)

(assert (= bs!1122090 (and b!4734302 d!1510022)))

(assert (=> bs!1122090 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897090) (= lambda!217924 lambda!217907))))

(declare-fun bs!1122091 () Bool)

(assert (= bs!1122091 (and b!4734302 b!4733563)))

(assert (=> bs!1122091 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217845))))

(declare-fun bs!1122092 () Bool)

(assert (= bs!1122092 (and b!4734302 b!4733539)))

(assert (=> bs!1122092 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217830))))

(assert (=> bs!1122089 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217924 lambda!217880))))

(assert (=> bs!1122078 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217924 lambda!217921))))

(assert (=> bs!1122073 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217841))))

(declare-fun bs!1122093 () Bool)

(assert (= bs!1122093 (and b!4734302 d!1510164)))

(assert (=> bs!1122093 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896793) (= lambda!217924 lambda!217918))))

(declare-fun bs!1122094 () Bool)

(assert (= bs!1122094 (and b!4734302 b!4733552)))

(assert (=> bs!1122094 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217924 lambda!217840))))

(assert (=> b!4734302 true))

(declare-fun bs!1122095 () Bool)

(declare-fun b!4734300 () Bool)

(assert (= bs!1122095 (and b!4734300 b!4733999)))

(declare-fun lambda!217925 () Int)

(assert (=> bs!1122095 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217925 lambda!217905))))

(declare-fun bs!1122096 () Bool)

(assert (= bs!1122096 (and b!4734300 b!4733537)))

(assert (=> bs!1122096 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896756) (= lambda!217925 lambda!217834))))

(declare-fun bs!1122097 () Bool)

(assert (= bs!1122097 (and b!4734300 b!4733594)))

(assert (=> bs!1122097 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217850))))

(declare-fun bs!1122098 () Bool)

(assert (= bs!1122098 (and b!4734300 d!1509926)))

(assert (=> bs!1122098 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217871))))

(declare-fun bs!1122099 () Bool)

(assert (= bs!1122099 (and b!4734300 b!4733500)))

(assert (=> bs!1122099 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896706) (= lambda!217925 lambda!217821))))

(declare-fun bs!1122100 () Bool)

(assert (= bs!1122100 (and b!4734300 d!1509864)))

(assert (=> bs!1122100 (not (= lambda!217925 lambda!217860))))

(declare-fun bs!1122101 () Bool)

(assert (= bs!1122101 (and b!4734300 b!4733550)))

(assert (=> bs!1122101 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896793) (= lambda!217925 lambda!217843))))

(declare-fun bs!1122102 () Bool)

(assert (= bs!1122102 (and b!4734300 b!4733596)))

(assert (=> bs!1122102 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217849))))

(declare-fun bs!1122103 () Bool)

(assert (= bs!1122103 (and b!4734300 d!1509730)))

(assert (=> bs!1122103 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896702) (= lambda!217925 lambda!217822))))

(declare-fun bs!1122104 () Bool)

(assert (= bs!1122104 (and b!4734300 b!4733561)))

(assert (=> bs!1122104 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217846))))

(declare-fun bs!1122105 () Bool)

(assert (= bs!1122105 (and b!4734300 d!1509992)))

(assert (=> bs!1122105 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897024) (= lambda!217925 lambda!217883))))

(declare-fun bs!1122106 () Bool)

(assert (= bs!1122106 (and b!4734300 b!4734263)))

(assert (=> bs!1122106 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897244) (= lambda!217925 lambda!217922))))

(declare-fun bs!1122107 () Bool)

(assert (= bs!1122107 (and b!4734300 d!1509876)))

(assert (=> bs!1122107 (not (= lambda!217925 lambda!217862))))

(declare-fun bs!1122108 () Bool)

(assert (= bs!1122108 (and b!4734300 b!4733900)))

(assert (=> bs!1122108 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217925 lambda!217877))))

(declare-fun bs!1122109 () Bool)

(assert (= bs!1122109 (and b!4734300 d!1509984)))

(assert (=> bs!1122109 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896826) (= lambda!217925 lambda!217876))))

(assert (=> bs!1122096 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217833))))

(declare-fun bs!1122110 () Bool)

(assert (= bs!1122110 (and b!4734300 b!4734265)))

(assert (=> bs!1122110 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217925 lambda!217920))))

(declare-fun bs!1122111 () Bool)

(assert (= bs!1122111 (and b!4734300 d!1509818)))

(assert (=> bs!1122111 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896752) (= lambda!217925 lambda!217839))))

(declare-fun bs!1122112 () Bool)

(assert (= bs!1122112 (and b!4734300 d!1510190)))

(assert (=> bs!1122112 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897240) (= lambda!217925 lambda!217923))))

(declare-fun bs!1122113 () Bool)

(assert (= bs!1122113 (and b!4734300 b!4733502)))

(assert (=> bs!1122113 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217819))))

(assert (=> bs!1122099 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217820))))

(declare-fun bs!1122114 () Bool)

(assert (= bs!1122114 (and b!4734300 d!1509820)))

(assert (=> bs!1122114 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896789) (= lambda!217925 lambda!217844))))

(assert (=> bs!1122097 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896855) (= lambda!217925 lambda!217851))))

(declare-fun bs!1122115 () Bool)

(assert (= bs!1122115 (and b!4734300 d!1509826)))

(assert (=> bs!1122115 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896822) (= lambda!217925 lambda!217848))))

(declare-fun bs!1122116 () Bool)

(assert (= bs!1122116 (and b!4734300 b!4734001)))

(assert (=> bs!1122116 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217925 lambda!217904))))

(declare-fun bs!1122117 () Bool)

(assert (= bs!1122117 (and b!4734300 b!4734302)))

(assert (=> bs!1122117 (= lambda!217925 lambda!217924)))

(declare-fun bs!1122118 () Bool)

(assert (= bs!1122118 (and b!4734300 d!1509834)))

(assert (=> bs!1122118 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896851) (= lambda!217925 lambda!217852))))

(declare-fun bs!1122119 () Bool)

(assert (= bs!1122119 (and b!4734300 b!4733898)))

(assert (=> bs!1122119 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897028) (= lambda!217925 lambda!217882))))

(assert (=> bs!1122095 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897094) (= lambda!217925 lambda!217906))))

(assert (=> bs!1122104 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896826) (= lambda!217925 lambda!217847))))

(declare-fun bs!1122120 () Bool)

(assert (= bs!1122120 (and b!4734300 d!1510022)))

(assert (=> bs!1122120 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897090) (= lambda!217925 lambda!217907))))

(declare-fun bs!1122121 () Bool)

(assert (= bs!1122121 (and b!4734300 b!4733563)))

(assert (=> bs!1122121 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217845))))

(declare-fun bs!1122122 () Bool)

(assert (= bs!1122122 (and b!4734300 b!4733539)))

(assert (=> bs!1122122 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217830))))

(assert (=> bs!1122119 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217925 lambda!217880))))

(assert (=> bs!1122106 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217925 lambda!217921))))

(assert (=> bs!1122101 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217841))))

(declare-fun bs!1122123 () Bool)

(assert (= bs!1122123 (and b!4734300 d!1510164)))

(assert (=> bs!1122123 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896793) (= lambda!217925 lambda!217918))))

(declare-fun bs!1122124 () Bool)

(assert (= bs!1122124 (and b!4734300 b!4733552)))

(assert (=> bs!1122124 (= (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1896343) (= lambda!217925 lambda!217840))))

(assert (=> b!4734300 true))

(declare-fun lambda!217926 () Int)

(declare-fun lt!1897285 () ListMap!5341)

(assert (=> bs!1122095 (= (= lt!1897285 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217926 lambda!217905))))

(assert (=> bs!1122096 (= (= lt!1897285 lt!1896756) (= lambda!217926 lambda!217834))))

(assert (=> bs!1122097 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217850))))

(assert (=> bs!1122098 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217871))))

(assert (=> bs!1122099 (= (= lt!1897285 lt!1896706) (= lambda!217926 lambda!217821))))

(assert (=> bs!1122100 (not (= lambda!217926 lambda!217860))))

(assert (=> bs!1122101 (= (= lt!1897285 lt!1896793) (= lambda!217926 lambda!217843))))

(assert (=> bs!1122102 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217849))))

(assert (=> bs!1122103 (= (= lt!1897285 lt!1896702) (= lambda!217926 lambda!217822))))

(assert (=> bs!1122105 (= (= lt!1897285 lt!1897024) (= lambda!217926 lambda!217883))))

(assert (=> bs!1122106 (= (= lt!1897285 lt!1897244) (= lambda!217926 lambda!217922))))

(assert (=> bs!1122107 (not (= lambda!217926 lambda!217862))))

(assert (=> bs!1122108 (= (= lt!1897285 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217926 lambda!217877))))

(assert (=> bs!1122109 (= (= lt!1897285 lt!1896826) (= lambda!217926 lambda!217876))))

(assert (=> bs!1122096 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217833))))

(assert (=> bs!1122110 (= (= lt!1897285 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217926 lambda!217920))))

(assert (=> bs!1122111 (= (= lt!1897285 lt!1896752) (= lambda!217926 lambda!217839))))

(assert (=> bs!1122112 (= (= lt!1897285 lt!1897240) (= lambda!217926 lambda!217923))))

(assert (=> bs!1122113 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217819))))

(assert (=> bs!1122099 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217820))))

(assert (=> bs!1122114 (= (= lt!1897285 lt!1896789) (= lambda!217926 lambda!217844))))

(assert (=> bs!1122097 (= (= lt!1897285 lt!1896855) (= lambda!217926 lambda!217851))))

(assert (=> bs!1122115 (= (= lt!1897285 lt!1896822) (= lambda!217926 lambda!217848))))

(assert (=> bs!1122116 (= (= lt!1897285 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217926 lambda!217904))))

(assert (=> bs!1122117 (= (= lt!1897285 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217926 lambda!217924))))

(assert (=> bs!1122118 (= (= lt!1897285 lt!1896851) (= lambda!217926 lambda!217852))))

(assert (=> bs!1122119 (= (= lt!1897285 lt!1897028) (= lambda!217926 lambda!217882))))

(assert (=> bs!1122095 (= (= lt!1897285 lt!1897094) (= lambda!217926 lambda!217906))))

(assert (=> bs!1122104 (= (= lt!1897285 lt!1896826) (= lambda!217926 lambda!217847))))

(assert (=> bs!1122120 (= (= lt!1897285 lt!1897090) (= lambda!217926 lambda!217907))))

(assert (=> bs!1122121 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217845))))

(assert (=> bs!1122122 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217830))))

(assert (=> bs!1122119 (= (= lt!1897285 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217926 lambda!217880))))

(assert (=> bs!1122106 (= (= lt!1897285 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217926 lambda!217921))))

(assert (=> bs!1122101 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217841))))

(assert (=> bs!1122123 (= (= lt!1897285 lt!1896793) (= lambda!217926 lambda!217918))))

(assert (=> bs!1122124 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217840))))

(assert (=> b!4734300 (= (= lt!1897285 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217926 lambda!217925))))

(assert (=> bs!1122104 (= (= lt!1897285 lt!1896343) (= lambda!217926 lambda!217846))))

(assert (=> b!4734300 true))

(declare-fun bs!1122125 () Bool)

(declare-fun d!1510208 () Bool)

(assert (= bs!1122125 (and d!1510208 b!4733999)))

(declare-fun lambda!217927 () Int)

(declare-fun lt!1897281 () ListMap!5341)

(assert (=> bs!1122125 (= (= lt!1897281 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217927 lambda!217905))))

(declare-fun bs!1122126 () Bool)

(assert (= bs!1122126 (and d!1510208 b!4733537)))

(assert (=> bs!1122126 (= (= lt!1897281 lt!1896756) (= lambda!217927 lambda!217834))))

(declare-fun bs!1122127 () Bool)

(assert (= bs!1122127 (and d!1510208 b!4733594)))

(assert (=> bs!1122127 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217850))))

(declare-fun bs!1122128 () Bool)

(assert (= bs!1122128 (and d!1510208 d!1509926)))

(assert (=> bs!1122128 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217871))))

(declare-fun bs!1122129 () Bool)

(assert (= bs!1122129 (and d!1510208 b!4733500)))

(assert (=> bs!1122129 (= (= lt!1897281 lt!1896706) (= lambda!217927 lambda!217821))))

(declare-fun bs!1122130 () Bool)

(assert (= bs!1122130 (and d!1510208 b!4733550)))

(assert (=> bs!1122130 (= (= lt!1897281 lt!1896793) (= lambda!217927 lambda!217843))))

(declare-fun bs!1122131 () Bool)

(assert (= bs!1122131 (and d!1510208 b!4733596)))

(assert (=> bs!1122131 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217849))))

(declare-fun bs!1122132 () Bool)

(assert (= bs!1122132 (and d!1510208 d!1509730)))

(assert (=> bs!1122132 (= (= lt!1897281 lt!1896702) (= lambda!217927 lambda!217822))))

(declare-fun bs!1122133 () Bool)

(assert (= bs!1122133 (and d!1510208 d!1509992)))

(assert (=> bs!1122133 (= (= lt!1897281 lt!1897024) (= lambda!217927 lambda!217883))))

(declare-fun bs!1122134 () Bool)

(assert (= bs!1122134 (and d!1510208 b!4734263)))

(assert (=> bs!1122134 (= (= lt!1897281 lt!1897244) (= lambda!217927 lambda!217922))))

(declare-fun bs!1122135 () Bool)

(assert (= bs!1122135 (and d!1510208 d!1509876)))

(assert (=> bs!1122135 (not (= lambda!217927 lambda!217862))))

(declare-fun bs!1122136 () Bool)

(assert (= bs!1122136 (and d!1510208 b!4733900)))

(assert (=> bs!1122136 (= (= lt!1897281 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217927 lambda!217877))))

(declare-fun bs!1122137 () Bool)

(assert (= bs!1122137 (and d!1510208 d!1509984)))

(assert (=> bs!1122137 (= (= lt!1897281 lt!1896826) (= lambda!217927 lambda!217876))))

(assert (=> bs!1122126 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217833))))

(declare-fun bs!1122138 () Bool)

(assert (= bs!1122138 (and d!1510208 b!4734265)))

(assert (=> bs!1122138 (= (= lt!1897281 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217927 lambda!217920))))

(declare-fun bs!1122139 () Bool)

(assert (= bs!1122139 (and d!1510208 d!1509818)))

(assert (=> bs!1122139 (= (= lt!1897281 lt!1896752) (= lambda!217927 lambda!217839))))

(declare-fun bs!1122140 () Bool)

(assert (= bs!1122140 (and d!1510208 d!1510190)))

(assert (=> bs!1122140 (= (= lt!1897281 lt!1897240) (= lambda!217927 lambda!217923))))

(declare-fun bs!1122141 () Bool)

(assert (= bs!1122141 (and d!1510208 b!4733502)))

(assert (=> bs!1122141 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217819))))

(assert (=> bs!1122129 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217820))))

(declare-fun bs!1122142 () Bool)

(assert (= bs!1122142 (and d!1510208 d!1509820)))

(assert (=> bs!1122142 (= (= lt!1897281 lt!1896789) (= lambda!217927 lambda!217844))))

(assert (=> bs!1122127 (= (= lt!1897281 lt!1896855) (= lambda!217927 lambda!217851))))

(declare-fun bs!1122143 () Bool)

(assert (= bs!1122143 (and d!1510208 d!1509826)))

(assert (=> bs!1122143 (= (= lt!1897281 lt!1896822) (= lambda!217927 lambda!217848))))

(declare-fun bs!1122144 () Bool)

(assert (= bs!1122144 (and d!1510208 b!4734001)))

(assert (=> bs!1122144 (= (= lt!1897281 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217927 lambda!217904))))

(declare-fun bs!1122145 () Bool)

(assert (= bs!1122145 (and d!1510208 b!4734302)))

(assert (=> bs!1122145 (= (= lt!1897281 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217927 lambda!217924))))

(declare-fun bs!1122146 () Bool)

(assert (= bs!1122146 (and d!1510208 d!1509834)))

(assert (=> bs!1122146 (= (= lt!1897281 lt!1896851) (= lambda!217927 lambda!217852))))

(declare-fun bs!1122147 () Bool)

(assert (= bs!1122147 (and d!1510208 b!4733898)))

(assert (=> bs!1122147 (= (= lt!1897281 lt!1897028) (= lambda!217927 lambda!217882))))

(assert (=> bs!1122125 (= (= lt!1897281 lt!1897094) (= lambda!217927 lambda!217906))))

(declare-fun bs!1122148 () Bool)

(assert (= bs!1122148 (and d!1510208 b!4733561)))

(assert (=> bs!1122148 (= (= lt!1897281 lt!1896826) (= lambda!217927 lambda!217847))))

(declare-fun bs!1122149 () Bool)

(assert (= bs!1122149 (and d!1510208 d!1510022)))

(assert (=> bs!1122149 (= (= lt!1897281 lt!1897090) (= lambda!217927 lambda!217907))))

(declare-fun bs!1122150 () Bool)

(assert (= bs!1122150 (and d!1510208 b!4733563)))

(assert (=> bs!1122150 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217845))))

(declare-fun bs!1122151 () Bool)

(assert (= bs!1122151 (and d!1510208 b!4733539)))

(assert (=> bs!1122151 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217830))))

(assert (=> bs!1122147 (= (= lt!1897281 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217927 lambda!217880))))

(assert (=> bs!1122134 (= (= lt!1897281 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217927 lambda!217921))))

(assert (=> bs!1122130 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217841))))

(declare-fun bs!1122152 () Bool)

(assert (= bs!1122152 (and d!1510208 d!1509864)))

(assert (=> bs!1122152 (not (= lambda!217927 lambda!217860))))

(declare-fun bs!1122153 () Bool)

(assert (= bs!1122153 (and d!1510208 b!4734300)))

(assert (=> bs!1122153 (= (= lt!1897281 lt!1897285) (= lambda!217927 lambda!217926))))

(declare-fun bs!1122154 () Bool)

(assert (= bs!1122154 (and d!1510208 d!1510164)))

(assert (=> bs!1122154 (= (= lt!1897281 lt!1896793) (= lambda!217927 lambda!217918))))

(declare-fun bs!1122155 () Bool)

(assert (= bs!1122155 (and d!1510208 b!4733552)))

(assert (=> bs!1122155 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217840))))

(assert (=> bs!1122153 (= (= lt!1897281 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217927 lambda!217925))))

(assert (=> bs!1122148 (= (= lt!1897281 lt!1896343) (= lambda!217927 lambda!217846))))

(assert (=> d!1510208 true))

(declare-fun bm!331133 () Bool)

(declare-fun call!331138 () Bool)

(declare-fun c!808557 () Bool)

(assert (=> bm!331133 (= call!331138 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (ite c!808557 lambda!217924 lambda!217926)))))

(declare-fun b!4734299 () Bool)

(declare-fun e!2952985 () Bool)

(assert (=> b!4734299 (= e!2952985 call!331138)))

(declare-fun bm!331134 () Bool)

(declare-fun call!331140 () Unit!131735)

(assert (=> bm!331134 (= call!331140 (lemmaContainsAllItsOwnKeys!820 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))))))

(declare-fun call!331139 () Bool)

(declare-fun bm!331135 () Bool)

(assert (=> bm!331135 (= call!331139 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (ite c!808557 lambda!217924 lambda!217926)))))

(declare-fun e!2952983 () Bool)

(assert (=> d!1510208 e!2952983))

(declare-fun res!2004743 () Bool)

(assert (=> d!1510208 (=> (not res!2004743) (not e!2952983))))

(assert (=> d!1510208 (= res!2004743 (forall!11653 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))) lambda!217927))))

(declare-fun e!2952984 () ListMap!5341)

(assert (=> d!1510208 (= lt!1897281 e!2952984)))

(assert (=> d!1510208 (= c!808557 ((_ is Nil!52913) (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))))))

(assert (=> d!1510208 (noDuplicateKeys!2044 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1510208 (= (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) lt!1897281)))

(assert (=> b!4734300 (= e!2952984 lt!1897285)))

(declare-fun lt!1897276 () ListMap!5341)

(assert (=> b!4734300 (= lt!1897276 (+!2292 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))))))))

(assert (=> b!4734300 (= lt!1897285 (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))) (+!2292 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun lt!1897277 () Unit!131735)

(assert (=> b!4734300 (= lt!1897277 call!331140)))

(assert (=> b!4734300 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) lambda!217925)))

(declare-fun lt!1897274 () Unit!131735)

(assert (=> b!4734300 (= lt!1897274 lt!1897277)))

(assert (=> b!4734300 (forall!11653 (toList!5978 lt!1897276) lambda!217926)))

(declare-fun lt!1897275 () Unit!131735)

(declare-fun Unit!131978 () Unit!131735)

(assert (=> b!4734300 (= lt!1897275 Unit!131978)))

(assert (=> b!4734300 (forall!11653 (t!360317 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))) lambda!217926)))

(declare-fun lt!1897271 () Unit!131735)

(declare-fun Unit!131979 () Unit!131735)

(assert (=> b!4734300 (= lt!1897271 Unit!131979)))

(declare-fun lt!1897286 () Unit!131735)

(declare-fun Unit!131980 () Unit!131735)

(assert (=> b!4734300 (= lt!1897286 Unit!131980)))

(declare-fun lt!1897268 () Unit!131735)

(assert (=> b!4734300 (= lt!1897268 (forallContained!3693 (toList!5978 lt!1897276) lambda!217926 (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))))))))

(assert (=> b!4734300 (contains!16298 lt!1897276 (_1!30579 (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897280 () Unit!131735)

(declare-fun Unit!131982 () Unit!131735)

(assert (=> b!4734300 (= lt!1897280 Unit!131982)))

(assert (=> b!4734300 (contains!16298 lt!1897285 (_1!30579 (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897282 () Unit!131735)

(declare-fun Unit!131983 () Unit!131735)

(assert (=> b!4734300 (= lt!1897282 Unit!131983)))

(assert (=> b!4734300 (forall!11653 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))) lambda!217926)))

(declare-fun lt!1897284 () Unit!131735)

(declare-fun Unit!131984 () Unit!131735)

(assert (=> b!4734300 (= lt!1897284 Unit!131984)))

(assert (=> b!4734300 (forall!11653 (toList!5978 lt!1897276) lambda!217926)))

(declare-fun lt!1897272 () Unit!131735)

(declare-fun Unit!131985 () Unit!131735)

(assert (=> b!4734300 (= lt!1897272 Unit!131985)))

(declare-fun lt!1897267 () Unit!131735)

(declare-fun Unit!131986 () Unit!131735)

(assert (=> b!4734300 (= lt!1897267 Unit!131986)))

(declare-fun lt!1897269 () Unit!131735)

(assert (=> b!4734300 (= lt!1897269 (addForallContainsKeyThenBeforeAdding!819 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897285 (_1!30579 (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))))))))

(assert (=> b!4734300 call!331139))

(declare-fun lt!1897278 () Unit!131735)

(assert (=> b!4734300 (= lt!1897278 lt!1897269)))

(assert (=> b!4734300 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) lambda!217926)))

(declare-fun lt!1897266 () Unit!131735)

(declare-fun Unit!131987 () Unit!131735)

(assert (=> b!4734300 (= lt!1897266 Unit!131987)))

(declare-fun res!2004745 () Bool)

(assert (=> b!4734300 (= res!2004745 (forall!11653 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023)))) lambda!217926))))

(assert (=> b!4734300 (=> (not res!2004745) (not e!2952985))))

(assert (=> b!4734300 e!2952985))

(declare-fun lt!1897270 () Unit!131735)

(declare-fun Unit!131988 () Unit!131735)

(assert (=> b!4734300 (= lt!1897270 Unit!131988)))

(declare-fun b!4734301 () Bool)

(declare-fun res!2004744 () Bool)

(assert (=> b!4734301 (=> (not res!2004744) (not e!2952983))))

(assert (=> b!4734301 (= res!2004744 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) lambda!217927))))

(assert (=> b!4734302 (= e!2952984 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))))))

(declare-fun lt!1897279 () Unit!131735)

(assert (=> b!4734302 (= lt!1897279 call!331140)))

(assert (=> b!4734302 call!331139))

(declare-fun lt!1897283 () Unit!131735)

(assert (=> b!4734302 (= lt!1897283 lt!1897279)))

(assert (=> b!4734302 call!331138))

(declare-fun lt!1897273 () Unit!131735)

(declare-fun Unit!131989 () Unit!131735)

(assert (=> b!4734302 (= lt!1897273 Unit!131989)))

(declare-fun b!4734303 () Bool)

(assert (=> b!4734303 (= e!2952983 (invariantList!1535 (toList!5978 lt!1897281)))))

(assert (= (and d!1510208 c!808557) b!4734302))

(assert (= (and d!1510208 (not c!808557)) b!4734300))

(assert (= (and b!4734300 res!2004745) b!4734299))

(assert (= (or b!4734302 b!4734300) bm!331134))

(assert (= (or b!4734302 b!4734300) bm!331135))

(assert (= (or b!4734302 b!4734299) bm!331133))

(assert (= (and d!1510208 res!2004743) b!4734301))

(assert (= (and b!4734301 res!2004744) b!4734303))

(declare-fun m!5678631 () Bool)

(assert (=> bm!331133 m!5678631))

(declare-fun m!5678633 () Bool)

(assert (=> d!1510208 m!5678633))

(declare-fun m!5678635 () Bool)

(assert (=> d!1510208 m!5678635))

(assert (=> bm!331134 m!5677157))

(declare-fun m!5678637 () Bool)

(assert (=> bm!331134 m!5678637))

(declare-fun m!5678639 () Bool)

(assert (=> b!4734300 m!5678639))

(declare-fun m!5678641 () Bool)

(assert (=> b!4734300 m!5678641))

(declare-fun m!5678643 () Bool)

(assert (=> b!4734300 m!5678643))

(declare-fun m!5678645 () Bool)

(assert (=> b!4734300 m!5678645))

(declare-fun m!5678647 () Bool)

(assert (=> b!4734300 m!5678647))

(declare-fun m!5678649 () Bool)

(assert (=> b!4734300 m!5678649))

(declare-fun m!5678651 () Bool)

(assert (=> b!4734300 m!5678651))

(assert (=> b!4734300 m!5678639))

(assert (=> b!4734300 m!5677157))

(declare-fun m!5678653 () Bool)

(assert (=> b!4734300 m!5678653))

(declare-fun m!5678655 () Bool)

(assert (=> b!4734300 m!5678655))

(assert (=> b!4734300 m!5678645))

(assert (=> b!4734300 m!5677157))

(declare-fun m!5678657 () Bool)

(assert (=> b!4734300 m!5678657))

(assert (=> b!4734300 m!5678653))

(declare-fun m!5678659 () Bool)

(assert (=> b!4734300 m!5678659))

(declare-fun m!5678661 () Bool)

(assert (=> b!4734301 m!5678661))

(assert (=> bm!331135 m!5678631))

(declare-fun m!5678663 () Bool)

(assert (=> b!4734303 m!5678663))

(assert (=> b!4733530 d!1510208))

(declare-fun bs!1122156 () Bool)

(declare-fun d!1510210 () Bool)

(assert (= bs!1122156 (and d!1510210 start!482632)))

(declare-fun lambda!217928 () Int)

(assert (=> bs!1122156 (= lambda!217928 lambda!217712)))

(declare-fun bs!1122157 () Bool)

(assert (= bs!1122157 (and d!1510210 d!1509850)))

(assert (=> bs!1122157 (= lambda!217928 lambda!217854)))

(declare-fun bs!1122158 () Bool)

(assert (= bs!1122158 (and d!1510210 d!1509868)))

(assert (=> bs!1122158 (= lambda!217928 lambda!217861)))

(declare-fun bs!1122159 () Bool)

(assert (= bs!1122159 (and d!1510210 d!1509812)))

(assert (=> bs!1122159 (= lambda!217928 lambda!217826)))

(declare-fun bs!1122160 () Bool)

(assert (= bs!1122160 (and d!1510210 d!1509816)))

(assert (=> bs!1122160 (= lambda!217928 lambda!217829)))

(declare-fun bs!1122161 () Bool)

(assert (= bs!1122161 (and d!1510210 d!1509792)))

(assert (=> bs!1122161 (= lambda!217928 lambda!217825)))

(declare-fun bs!1122162 () Bool)

(assert (= bs!1122162 (and d!1510210 d!1509862)))

(assert (=> bs!1122162 (not (= lambda!217928 lambda!217857))))

(declare-fun bs!1122163 () Bool)

(assert (= bs!1122163 (and d!1510210 d!1510034)))

(assert (=> bs!1122163 (= lambda!217928 lambda!217908)))

(declare-fun bs!1122164 () Bool)

(assert (= bs!1122164 (and d!1510210 d!1509704)))

(assert (=> bs!1122164 (= lambda!217928 lambda!217749)))

(declare-fun bs!1122165 () Bool)

(assert (= bs!1122165 (and d!1510210 d!1509848)))

(assert (=> bs!1122165 (= lambda!217928 lambda!217853)))

(declare-fun bs!1122166 () Bool)

(assert (= bs!1122166 (and d!1510210 d!1509702)))

(assert (=> bs!1122166 (= lambda!217928 lambda!217718)))

(declare-fun bs!1122167 () Bool)

(assert (= bs!1122167 (and d!1510210 d!1510042)))

(assert (=> bs!1122167 (= lambda!217928 lambda!217909)))

(declare-fun lt!1897309 () ListMap!5341)

(assert (=> d!1510210 (invariantList!1535 (toList!5978 lt!1897309))))

(declare-fun e!2953000 () ListMap!5341)

(assert (=> d!1510210 (= lt!1897309 e!2953000)))

(declare-fun c!808568 () Bool)

(assert (=> d!1510210 (= c!808568 ((_ is Cons!52914) (t!360318 (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1510210 (forall!11651 (t!360318 (t!360318 (toList!5977 lm!2023))) lambda!217928)))

(assert (=> d!1510210 (= (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023)))) lt!1897309)))

(declare-fun b!4734332 () Bool)

(assert (=> b!4734332 (= e!2953000 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (t!360318 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun b!4734333 () Bool)

(assert (=> b!4734333 (= e!2953000 (ListMap!5342 Nil!52913))))

(assert (= (and d!1510210 c!808568) b!4734332))

(assert (= (and d!1510210 (not c!808568)) b!4734333))

(declare-fun m!5678665 () Bool)

(assert (=> d!1510210 m!5678665))

(declare-fun m!5678667 () Bool)

(assert (=> d!1510210 m!5678667))

(declare-fun m!5678669 () Bool)

(assert (=> b!4734332 m!5678669))

(assert (=> b!4734332 m!5678669))

(declare-fun m!5678671 () Bool)

(assert (=> b!4734332 m!5678671))

(assert (=> b!4733530 d!1510210))

(declare-fun d!1510212 () Bool)

(declare-fun lt!1897321 () Bool)

(assert (=> d!1510212 (= lt!1897321 (select (content!9440 lt!1896345) (get!17772 lt!1896376)))))

(declare-fun e!2953009 () Bool)

(assert (=> d!1510212 (= lt!1897321 e!2953009)))

(declare-fun res!2004759 () Bool)

(assert (=> d!1510212 (=> (not res!2004759) (not e!2953009))))

(assert (=> d!1510212 (= res!2004759 ((_ is Cons!52913) lt!1896345))))

(assert (=> d!1510212 (= (contains!16300 lt!1896345 (get!17772 lt!1896376)) lt!1897321)))

(declare-fun b!4734348 () Bool)

(declare-fun e!2953008 () Bool)

(assert (=> b!4734348 (= e!2953009 e!2953008)))

(declare-fun res!2004758 () Bool)

(assert (=> b!4734348 (=> res!2004758 e!2953008)))

(assert (=> b!4734348 (= res!2004758 (= (h!59284 lt!1896345) (get!17772 lt!1896376)))))

(declare-fun b!4734349 () Bool)

(assert (=> b!4734349 (= e!2953008 (contains!16300 (t!360317 lt!1896345) (get!17772 lt!1896376)))))

(assert (= (and d!1510212 res!2004759) b!4734348))

(assert (= (and b!4734348 (not res!2004758)) b!4734349))

(declare-fun m!5678673 () Bool)

(assert (=> d!1510212 m!5678673))

(assert (=> d!1510212 m!5676699))

(declare-fun m!5678675 () Bool)

(assert (=> d!1510212 m!5678675))

(assert (=> b!4734349 m!5676699))

(declare-fun m!5678677 () Bool)

(assert (=> b!4734349 m!5678677))

(assert (=> b!4733348 d!1510212))

(declare-fun d!1510214 () Bool)

(assert (=> d!1510214 (= (get!17772 lt!1896376) (v!47055 lt!1896376))))

(assert (=> b!4733348 d!1510214))

(declare-fun d!1510216 () Bool)

(declare-fun res!2004760 () Bool)

(declare-fun e!2953010 () Bool)

(assert (=> d!1510216 (=> res!2004760 e!2953010)))

(assert (=> d!1510216 (= res!2004760 (not ((_ is Cons!52913) (t!360317 oldBucket!34))))))

(assert (=> d!1510216 (= (noDuplicateKeys!2044 (t!360317 oldBucket!34)) e!2953010)))

(declare-fun b!4734350 () Bool)

(declare-fun e!2953011 () Bool)

(assert (=> b!4734350 (= e!2953010 e!2953011)))

(declare-fun res!2004761 () Bool)

(assert (=> b!4734350 (=> (not res!2004761) (not e!2953011))))

(assert (=> b!4734350 (= res!2004761 (not (containsKey!3437 (t!360317 (t!360317 oldBucket!34)) (_1!30579 (h!59284 (t!360317 oldBucket!34))))))))

(declare-fun b!4734351 () Bool)

(assert (=> b!4734351 (= e!2953011 (noDuplicateKeys!2044 (t!360317 (t!360317 oldBucket!34))))))

(assert (= (and d!1510216 (not res!2004760)) b!4734350))

(assert (= (and b!4734350 res!2004761) b!4734351))

(declare-fun m!5678719 () Bool)

(assert (=> b!4734350 m!5678719))

(declare-fun m!5678721 () Bool)

(assert (=> b!4734351 m!5678721))

(assert (=> b!4733279 d!1510216))

(declare-fun d!1510220 () Bool)

(declare-fun res!2004764 () Bool)

(declare-fun e!2953014 () Bool)

(assert (=> d!1510220 (=> res!2004764 e!2953014)))

(assert (=> d!1510220 (= res!2004764 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510220 (= (forall!11653 (toList!5978 lt!1896343) (ite c!808390 lambda!217849 lambda!217851)) e!2953014)))

(declare-fun b!4734354 () Bool)

(declare-fun e!2953015 () Bool)

(assert (=> b!4734354 (= e!2953014 e!2953015)))

(declare-fun res!2004765 () Bool)

(assert (=> b!4734354 (=> (not res!2004765) (not e!2953015))))

(assert (=> b!4734354 (= res!2004765 (dynLambda!21858 (ite c!808390 lambda!217849 lambda!217851) (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734355 () Bool)

(assert (=> b!4734355 (= e!2953015 (forall!11653 (t!360317 (toList!5978 lt!1896343)) (ite c!808390 lambda!217849 lambda!217851)))))

(assert (= (and d!1510220 (not res!2004764)) b!4734354))

(assert (= (and b!4734354 res!2004765) b!4734355))

(declare-fun b_lambda!180729 () Bool)

(assert (=> (not b_lambda!180729) (not b!4734354)))

(declare-fun m!5678727 () Bool)

(assert (=> b!4734354 m!5678727))

(declare-fun m!5678729 () Bool)

(assert (=> b!4734355 m!5678729))

(assert (=> bm!331078 d!1510220))

(declare-fun d!1510226 () Bool)

(assert (=> d!1510226 (= (invariantList!1535 (toList!5978 lt!1896898)) (noDuplicatedKeys!384 (toList!5978 lt!1896898)))))

(declare-fun bs!1122168 () Bool)

(assert (= bs!1122168 d!1510226))

(declare-fun m!5678731 () Bool)

(assert (=> bs!1122168 m!5678731))

(assert (=> d!1509868 d!1510226))

(declare-fun d!1510228 () Bool)

(declare-fun res!2004770 () Bool)

(declare-fun e!2953020 () Bool)

(assert (=> d!1510228 (=> res!2004770 e!2953020)))

(assert (=> d!1510228 (= res!2004770 ((_ is Nil!52914) (toList!5977 lm!2023)))))

(assert (=> d!1510228 (= (forall!11651 (toList!5977 lm!2023) lambda!217861) e!2953020)))

(declare-fun b!4734360 () Bool)

(declare-fun e!2953021 () Bool)

(assert (=> b!4734360 (= e!2953020 e!2953021)))

(declare-fun res!2004771 () Bool)

(assert (=> b!4734360 (=> (not res!2004771) (not e!2953021))))

(assert (=> b!4734360 (= res!2004771 (dynLambda!21856 lambda!217861 (h!59285 (toList!5977 lm!2023))))))

(declare-fun b!4734361 () Bool)

(assert (=> b!4734361 (= e!2953021 (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217861))))

(assert (= (and d!1510228 (not res!2004770)) b!4734360))

(assert (= (and b!4734360 res!2004771) b!4734361))

(declare-fun b_lambda!180733 () Bool)

(assert (=> (not b_lambda!180733) (not b!4734360)))

(declare-fun m!5678737 () Bool)

(assert (=> b!4734360 m!5678737))

(declare-fun m!5678739 () Bool)

(assert (=> b!4734361 m!5678739))

(assert (=> d!1509868 d!1510228))

(declare-fun d!1510232 () Bool)

(declare-fun c!808578 () Bool)

(assert (=> d!1510232 (= c!808578 ((_ is Nil!52914) (toList!5977 lm!2023)))))

(declare-fun e!2953026 () (InoxSet tuple2!54572))

(assert (=> d!1510232 (= (content!9439 (toList!5977 lm!2023)) e!2953026)))

(declare-fun b!4734370 () Bool)

(assert (=> b!4734370 (= e!2953026 ((as const (Array tuple2!54572 Bool)) false))))

(declare-fun b!4734371 () Bool)

(assert (=> b!4734371 (= e!2953026 ((_ map or) (store ((as const (Array tuple2!54572 Bool)) false) (h!59285 (toList!5977 lm!2023)) true) (content!9439 (t!360318 (toList!5977 lm!2023)))))))

(assert (= (and d!1510232 c!808578) b!4734370))

(assert (= (and d!1510232 (not c!808578)) b!4734371))

(declare-fun m!5678743 () Bool)

(assert (=> b!4734371 m!5678743))

(declare-fun m!5678745 () Bool)

(assert (=> b!4734371 m!5678745))

(assert (=> d!1509674 d!1510232))

(declare-fun d!1510236 () Bool)

(declare-fun res!2004772 () Bool)

(declare-fun e!2953027 () Bool)

(assert (=> d!1510236 (=> res!2004772 e!2953027)))

(assert (=> d!1510236 (= res!2004772 ((_ is Nil!52914) (toList!5977 lm!2023)))))

(assert (=> d!1510236 (= (forall!11651 (toList!5977 lm!2023) lambda!217857) e!2953027)))

(declare-fun b!4734372 () Bool)

(declare-fun e!2953028 () Bool)

(assert (=> b!4734372 (= e!2953027 e!2953028)))

(declare-fun res!2004773 () Bool)

(assert (=> b!4734372 (=> (not res!2004773) (not e!2953028))))

(assert (=> b!4734372 (= res!2004773 (dynLambda!21856 lambda!217857 (h!59285 (toList!5977 lm!2023))))))

(declare-fun b!4734373 () Bool)

(assert (=> b!4734373 (= e!2953028 (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217857))))

(assert (= (and d!1510236 (not res!2004772)) b!4734372))

(assert (= (and b!4734372 res!2004773) b!4734373))

(declare-fun b_lambda!180735 () Bool)

(assert (=> (not b_lambda!180735) (not b!4734372)))

(declare-fun m!5678747 () Bool)

(assert (=> b!4734372 m!5678747))

(declare-fun m!5678749 () Bool)

(assert (=> b!4734373 m!5678749))

(assert (=> d!1509862 d!1510236))

(assert (=> b!4733664 d!1509896))

(assert (=> b!4733664 d!1509898))

(assert (=> d!1509706 d!1509716))

(declare-fun d!1510238 () Bool)

(assert (=> d!1510238 (containsKey!3437 oldBucket!34 key!4653)))

(assert (=> d!1510238 true))

(declare-fun _$38!380 () Unit!131735)

(assert (=> d!1510238 (= (choose!33516 oldBucket!34 key!4653 hashF!1323) _$38!380)))

(declare-fun bs!1122169 () Bool)

(assert (= bs!1122169 d!1510238))

(assert (=> bs!1122169 m!5676577))

(assert (=> d!1509706 d!1510238))

(assert (=> d!1509706 d!1509668))

(declare-fun d!1510240 () Bool)

(assert (=> d!1510240 (= (invariantList!1535 (toList!5978 lt!1896864)) (noDuplicatedKeys!384 (toList!5978 lt!1896864)))))

(declare-fun bs!1122170 () Bool)

(assert (= bs!1122170 d!1510240))

(declare-fun m!5678751 () Bool)

(assert (=> bs!1122170 m!5678751))

(assert (=> d!1509850 d!1510240))

(declare-fun d!1510242 () Bool)

(declare-fun res!2004774 () Bool)

(declare-fun e!2953029 () Bool)

(assert (=> d!1510242 (=> res!2004774 e!2953029)))

(assert (=> d!1510242 (= res!2004774 ((_ is Nil!52914) (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1510242 (= (forall!11651 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))) lambda!217854) e!2953029)))

(declare-fun b!4734374 () Bool)

(declare-fun e!2953030 () Bool)

(assert (=> b!4734374 (= e!2953029 e!2953030)))

(declare-fun res!2004775 () Bool)

(assert (=> b!4734374 (=> (not res!2004775) (not e!2953030))))

(assert (=> b!4734374 (= res!2004775 (dynLambda!21856 lambda!217854 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))

(declare-fun b!4734375 () Bool)

(assert (=> b!4734375 (= e!2953030 (forall!11651 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))) lambda!217854))))

(assert (= (and d!1510242 (not res!2004774)) b!4734374))

(assert (= (and b!4734374 res!2004775) b!4734375))

(declare-fun b_lambda!180737 () Bool)

(assert (=> (not b_lambda!180737) (not b!4734374)))

(declare-fun m!5678753 () Bool)

(assert (=> b!4734374 m!5678753))

(declare-fun m!5678755 () Bool)

(assert (=> b!4734375 m!5678755))

(assert (=> d!1509850 d!1510242))

(declare-fun d!1510244 () Bool)

(assert (=> d!1510244 (= (invariantList!1535 (toList!5978 lt!1896822)) (noDuplicatedKeys!384 (toList!5978 lt!1896822)))))

(declare-fun bs!1122171 () Bool)

(assert (= bs!1122171 d!1510244))

(declare-fun m!5678757 () Bool)

(assert (=> bs!1122171 m!5678757))

(assert (=> b!4733564 d!1510244))

(declare-fun d!1510246 () Bool)

(declare-fun res!2004776 () Bool)

(declare-fun e!2953031 () Bool)

(assert (=> d!1510246 (=> res!2004776 e!2953031)))

(assert (=> d!1510246 (= res!2004776 (and ((_ is Cons!52913) lt!1896899) (= (_1!30579 (h!59284 lt!1896899)) key!4653)))))

(assert (=> d!1510246 (= (containsKey!3437 lt!1896899 key!4653) e!2953031)))

(declare-fun b!4734376 () Bool)

(declare-fun e!2953032 () Bool)

(assert (=> b!4734376 (= e!2953031 e!2953032)))

(declare-fun res!2004777 () Bool)

(assert (=> b!4734376 (=> (not res!2004777) (not e!2953032))))

(assert (=> b!4734376 (= res!2004777 ((_ is Cons!52913) lt!1896899))))

(declare-fun b!4734377 () Bool)

(assert (=> b!4734377 (= e!2953032 (containsKey!3437 (t!360317 lt!1896899) key!4653))))

(assert (= (and d!1510246 (not res!2004776)) b!4734376))

(assert (= (and b!4734376 res!2004777) b!4734377))

(declare-fun m!5678759 () Bool)

(assert (=> b!4734377 m!5678759))

(assert (=> d!1509870 d!1510246))

(assert (=> d!1509870 d!1509668))

(declare-fun d!1510248 () Bool)

(declare-fun res!2004778 () Bool)

(declare-fun e!2953033 () Bool)

(assert (=> d!1510248 (=> res!2004778 e!2953033)))

(assert (=> d!1510248 (= res!2004778 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510248 (= (forall!11653 (toList!5978 lt!1896343) lambda!217850) e!2953033)))

(declare-fun b!4734378 () Bool)

(declare-fun e!2953034 () Bool)

(assert (=> b!4734378 (= e!2953033 e!2953034)))

(declare-fun res!2004779 () Bool)

(assert (=> b!4734378 (=> (not res!2004779) (not e!2953034))))

(assert (=> b!4734378 (= res!2004779 (dynLambda!21858 lambda!217850 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734379 () Bool)

(assert (=> b!4734379 (= e!2953034 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217850))))

(assert (= (and d!1510248 (not res!2004778)) b!4734378))

(assert (= (and b!4734378 res!2004779) b!4734379))

(declare-fun b_lambda!180739 () Bool)

(assert (=> (not b_lambda!180739) (not b!4734378)))

(declare-fun m!5678761 () Bool)

(assert (=> b!4734378 m!5678761))

(declare-fun m!5678763 () Bool)

(assert (=> b!4734379 m!5678763))

(assert (=> b!4733594 d!1510248))

(declare-fun d!1510250 () Bool)

(declare-fun res!2004780 () Bool)

(declare-fun e!2953035 () Bool)

(assert (=> d!1510250 (=> res!2004780 e!2953035)))

(assert (=> d!1510250 (= res!2004780 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510250 (= (forall!11653 (toList!5978 lt!1896343) lambda!217851) e!2953035)))

(declare-fun b!4734380 () Bool)

(declare-fun e!2953036 () Bool)

(assert (=> b!4734380 (= e!2953035 e!2953036)))

(declare-fun res!2004781 () Bool)

(assert (=> b!4734380 (=> (not res!2004781) (not e!2953036))))

(assert (=> b!4734380 (= res!2004781 (dynLambda!21858 lambda!217851 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734381 () Bool)

(assert (=> b!4734381 (= e!2953036 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217851))))

(assert (= (and d!1510250 (not res!2004780)) b!4734380))

(assert (= (and b!4734380 res!2004781) b!4734381))

(declare-fun b_lambda!180741 () Bool)

(assert (=> (not b_lambda!180741) (not b!4734380)))

(declare-fun m!5678765 () Bool)

(assert (=> b!4734380 m!5678765))

(declare-fun m!5678767 () Bool)

(assert (=> b!4734381 m!5678767))

(assert (=> b!4733594 d!1510250))

(declare-fun bs!1122172 () Bool)

(declare-fun b!4734385 () Bool)

(assert (= bs!1122172 (and b!4734385 b!4733999)))

(declare-fun lambda!217929 () Int)

(assert (=> bs!1122172 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217929 lambda!217905))))

(declare-fun bs!1122173 () Bool)

(assert (= bs!1122173 (and b!4734385 b!4733537)))

(assert (=> bs!1122173 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896756) (= lambda!217929 lambda!217834))))

(declare-fun bs!1122174 () Bool)

(assert (= bs!1122174 (and b!4734385 b!4733594)))

(assert (=> bs!1122174 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217850))))

(declare-fun bs!1122175 () Bool)

(assert (= bs!1122175 (and b!4734385 d!1509926)))

(assert (=> bs!1122175 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217871))))

(declare-fun bs!1122176 () Bool)

(assert (= bs!1122176 (and b!4734385 b!4733500)))

(assert (=> bs!1122176 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896706) (= lambda!217929 lambda!217821))))

(declare-fun bs!1122177 () Bool)

(assert (= bs!1122177 (and b!4734385 b!4733550)))

(assert (=> bs!1122177 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896793) (= lambda!217929 lambda!217843))))

(declare-fun bs!1122178 () Bool)

(assert (= bs!1122178 (and b!4734385 b!4733596)))

(assert (=> bs!1122178 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217849))))

(declare-fun bs!1122179 () Bool)

(assert (= bs!1122179 (and b!4734385 d!1509730)))

(assert (=> bs!1122179 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896702) (= lambda!217929 lambda!217822))))

(declare-fun bs!1122180 () Bool)

(assert (= bs!1122180 (and b!4734385 b!4734263)))

(assert (=> bs!1122180 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897244) (= lambda!217929 lambda!217922))))

(declare-fun bs!1122181 () Bool)

(assert (= bs!1122181 (and b!4734385 d!1509876)))

(assert (=> bs!1122181 (not (= lambda!217929 lambda!217862))))

(declare-fun bs!1122182 () Bool)

(assert (= bs!1122182 (and b!4734385 b!4733900)))

(assert (=> bs!1122182 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217929 lambda!217877))))

(declare-fun bs!1122183 () Bool)

(assert (= bs!1122183 (and b!4734385 d!1509984)))

(assert (=> bs!1122183 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896826) (= lambda!217929 lambda!217876))))

(assert (=> bs!1122173 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217833))))

(declare-fun bs!1122184 () Bool)

(assert (= bs!1122184 (and b!4734385 b!4734265)))

(assert (=> bs!1122184 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217929 lambda!217920))))

(declare-fun bs!1122185 () Bool)

(assert (= bs!1122185 (and b!4734385 d!1509818)))

(assert (=> bs!1122185 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896752) (= lambda!217929 lambda!217839))))

(declare-fun bs!1122186 () Bool)

(assert (= bs!1122186 (and b!4734385 d!1510190)))

(assert (=> bs!1122186 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897240) (= lambda!217929 lambda!217923))))

(declare-fun bs!1122187 () Bool)

(assert (= bs!1122187 (and b!4734385 b!4733502)))

(assert (=> bs!1122187 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217819))))

(assert (=> bs!1122176 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217820))))

(declare-fun bs!1122188 () Bool)

(assert (= bs!1122188 (and b!4734385 d!1509820)))

(assert (=> bs!1122188 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896789) (= lambda!217929 lambda!217844))))

(assert (=> bs!1122174 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896855) (= lambda!217929 lambda!217851))))

(declare-fun bs!1122189 () Bool)

(assert (= bs!1122189 (and b!4734385 d!1509826)))

(assert (=> bs!1122189 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896822) (= lambda!217929 lambda!217848))))

(declare-fun bs!1122190 () Bool)

(assert (= bs!1122190 (and b!4734385 b!4734001)))

(assert (=> bs!1122190 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217929 lambda!217904))))

(declare-fun bs!1122191 () Bool)

(assert (= bs!1122191 (and b!4734385 b!4734302)))

(assert (=> bs!1122191 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217929 lambda!217924))))

(declare-fun bs!1122192 () Bool)

(assert (= bs!1122192 (and b!4734385 d!1509834)))

(assert (=> bs!1122192 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896851) (= lambda!217929 lambda!217852))))

(declare-fun bs!1122193 () Bool)

(assert (= bs!1122193 (and b!4734385 b!4733898)))

(assert (=> bs!1122193 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897028) (= lambda!217929 lambda!217882))))

(assert (=> bs!1122172 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897094) (= lambda!217929 lambda!217906))))

(declare-fun bs!1122194 () Bool)

(assert (= bs!1122194 (and b!4734385 b!4733561)))

(assert (=> bs!1122194 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896826) (= lambda!217929 lambda!217847))))

(declare-fun bs!1122195 () Bool)

(assert (= bs!1122195 (and b!4734385 d!1510022)))

(assert (=> bs!1122195 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897090) (= lambda!217929 lambda!217907))))

(declare-fun bs!1122196 () Bool)

(assert (= bs!1122196 (and b!4734385 b!4733563)))

(assert (=> bs!1122196 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217845))))

(declare-fun bs!1122197 () Bool)

(assert (= bs!1122197 (and b!4734385 b!4733539)))

(assert (=> bs!1122197 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217830))))

(assert (=> bs!1122193 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217929 lambda!217880))))

(assert (=> bs!1122180 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217929 lambda!217921))))

(assert (=> bs!1122177 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217841))))

(declare-fun bs!1122198 () Bool)

(assert (= bs!1122198 (and b!4734385 d!1509864)))

(assert (=> bs!1122198 (not (= lambda!217929 lambda!217860))))

(declare-fun bs!1122199 () Bool)

(assert (= bs!1122199 (and b!4734385 b!4734300)))

(assert (=> bs!1122199 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897285) (= lambda!217929 lambda!217926))))

(declare-fun bs!1122200 () Bool)

(assert (= bs!1122200 (and b!4734385 d!1510164)))

(assert (=> bs!1122200 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896793) (= lambda!217929 lambda!217918))))

(declare-fun bs!1122201 () Bool)

(assert (= bs!1122201 (and b!4734385 b!4733552)))

(assert (=> bs!1122201 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217840))))

(assert (=> bs!1122199 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217929 lambda!217925))))

(assert (=> bs!1122194 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217929 lambda!217846))))

(declare-fun bs!1122202 () Bool)

(assert (= bs!1122202 (and b!4734385 d!1509992)))

(assert (=> bs!1122202 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897024) (= lambda!217929 lambda!217883))))

(declare-fun bs!1122203 () Bool)

(assert (= bs!1122203 (and b!4734385 d!1510208)))

(assert (=> bs!1122203 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897281) (= lambda!217929 lambda!217927))))

(assert (=> b!4734385 true))

(declare-fun bs!1122204 () Bool)

(declare-fun b!4734383 () Bool)

(assert (= bs!1122204 (and b!4734383 b!4733999)))

(declare-fun lambda!217930 () Int)

(assert (=> bs!1122204 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217930 lambda!217905))))

(declare-fun bs!1122205 () Bool)

(assert (= bs!1122205 (and b!4734383 b!4733537)))

(assert (=> bs!1122205 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896756) (= lambda!217930 lambda!217834))))

(declare-fun bs!1122206 () Bool)

(assert (= bs!1122206 (and b!4734383 b!4733594)))

(assert (=> bs!1122206 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217850))))

(declare-fun bs!1122207 () Bool)

(assert (= bs!1122207 (and b!4734383 d!1509926)))

(assert (=> bs!1122207 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217871))))

(declare-fun bs!1122208 () Bool)

(assert (= bs!1122208 (and b!4734383 b!4733550)))

(assert (=> bs!1122208 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896793) (= lambda!217930 lambda!217843))))

(declare-fun bs!1122209 () Bool)

(assert (= bs!1122209 (and b!4734383 b!4733596)))

(assert (=> bs!1122209 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217849))))

(declare-fun bs!1122210 () Bool)

(assert (= bs!1122210 (and b!4734383 d!1509730)))

(assert (=> bs!1122210 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896702) (= lambda!217930 lambda!217822))))

(declare-fun bs!1122211 () Bool)

(assert (= bs!1122211 (and b!4734383 b!4734263)))

(assert (=> bs!1122211 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897244) (= lambda!217930 lambda!217922))))

(declare-fun bs!1122212 () Bool)

(assert (= bs!1122212 (and b!4734383 d!1509876)))

(assert (=> bs!1122212 (not (= lambda!217930 lambda!217862))))

(declare-fun bs!1122213 () Bool)

(assert (= bs!1122213 (and b!4734383 b!4733900)))

(assert (=> bs!1122213 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217930 lambda!217877))))

(declare-fun bs!1122214 () Bool)

(assert (= bs!1122214 (and b!4734383 d!1509984)))

(assert (=> bs!1122214 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896826) (= lambda!217930 lambda!217876))))

(assert (=> bs!1122205 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217833))))

(declare-fun bs!1122215 () Bool)

(assert (= bs!1122215 (and b!4734383 b!4734265)))

(assert (=> bs!1122215 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217930 lambda!217920))))

(declare-fun bs!1122216 () Bool)

(assert (= bs!1122216 (and b!4734383 d!1509818)))

(assert (=> bs!1122216 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896752) (= lambda!217930 lambda!217839))))

(declare-fun bs!1122217 () Bool)

(assert (= bs!1122217 (and b!4734383 d!1510190)))

(assert (=> bs!1122217 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897240) (= lambda!217930 lambda!217923))))

(declare-fun bs!1122218 () Bool)

(assert (= bs!1122218 (and b!4734383 b!4733502)))

(assert (=> bs!1122218 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217819))))

(declare-fun bs!1122219 () Bool)

(assert (= bs!1122219 (and b!4734383 b!4733500)))

(assert (=> bs!1122219 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217820))))

(declare-fun bs!1122220 () Bool)

(assert (= bs!1122220 (and b!4734383 d!1509820)))

(assert (=> bs!1122220 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896789) (= lambda!217930 lambda!217844))))

(assert (=> bs!1122206 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896855) (= lambda!217930 lambda!217851))))

(declare-fun bs!1122221 () Bool)

(assert (= bs!1122221 (and b!4734383 d!1509826)))

(assert (=> bs!1122221 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896822) (= lambda!217930 lambda!217848))))

(declare-fun bs!1122222 () Bool)

(assert (= bs!1122222 (and b!4734383 b!4734001)))

(assert (=> bs!1122222 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217930 lambda!217904))))

(declare-fun bs!1122223 () Bool)

(assert (= bs!1122223 (and b!4734383 b!4734302)))

(assert (=> bs!1122223 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217930 lambda!217924))))

(declare-fun bs!1122224 () Bool)

(assert (= bs!1122224 (and b!4734383 d!1509834)))

(assert (=> bs!1122224 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896851) (= lambda!217930 lambda!217852))))

(declare-fun bs!1122225 () Bool)

(assert (= bs!1122225 (and b!4734383 b!4733898)))

(assert (=> bs!1122225 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897028) (= lambda!217930 lambda!217882))))

(assert (=> bs!1122204 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897094) (= lambda!217930 lambda!217906))))

(declare-fun bs!1122226 () Bool)

(assert (= bs!1122226 (and b!4734383 b!4733561)))

(assert (=> bs!1122226 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896826) (= lambda!217930 lambda!217847))))

(declare-fun bs!1122227 () Bool)

(assert (= bs!1122227 (and b!4734383 d!1510022)))

(assert (=> bs!1122227 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897090) (= lambda!217930 lambda!217907))))

(declare-fun bs!1122228 () Bool)

(assert (= bs!1122228 (and b!4734383 b!4733563)))

(assert (=> bs!1122228 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217845))))

(declare-fun bs!1122229 () Bool)

(assert (= bs!1122229 (and b!4734383 b!4733539)))

(assert (=> bs!1122229 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217830))))

(assert (=> bs!1122225 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217930 lambda!217880))))

(assert (=> bs!1122211 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217930 lambda!217921))))

(assert (=> bs!1122208 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217841))))

(declare-fun bs!1122230 () Bool)

(assert (= bs!1122230 (and b!4734383 b!4734385)))

(assert (=> bs!1122230 (= lambda!217930 lambda!217929)))

(assert (=> bs!1122219 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896706) (= lambda!217930 lambda!217821))))

(declare-fun bs!1122231 () Bool)

(assert (= bs!1122231 (and b!4734383 d!1509864)))

(assert (=> bs!1122231 (not (= lambda!217930 lambda!217860))))

(declare-fun bs!1122232 () Bool)

(assert (= bs!1122232 (and b!4734383 b!4734300)))

(assert (=> bs!1122232 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897285) (= lambda!217930 lambda!217926))))

(declare-fun bs!1122233 () Bool)

(assert (= bs!1122233 (and b!4734383 d!1510164)))

(assert (=> bs!1122233 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896793) (= lambda!217930 lambda!217918))))

(declare-fun bs!1122234 () Bool)

(assert (= bs!1122234 (and b!4734383 b!4733552)))

(assert (=> bs!1122234 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217840))))

(assert (=> bs!1122232 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217930 lambda!217925))))

(assert (=> bs!1122226 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1896343) (= lambda!217930 lambda!217846))))

(declare-fun bs!1122235 () Bool)

(assert (= bs!1122235 (and b!4734383 d!1509992)))

(assert (=> bs!1122235 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897024) (= lambda!217930 lambda!217883))))

(declare-fun bs!1122236 () Bool)

(assert (= bs!1122236 (and b!4734383 d!1510208)))

(assert (=> bs!1122236 (= (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897281) (= lambda!217930 lambda!217927))))

(assert (=> b!4734383 true))

(declare-fun lt!1897341 () ListMap!5341)

(declare-fun lambda!217931 () Int)

(assert (=> bs!1122204 (= (= lt!1897341 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217931 lambda!217905))))

(assert (=> bs!1122205 (= (= lt!1897341 lt!1896756) (= lambda!217931 lambda!217834))))

(assert (=> bs!1122206 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217850))))

(assert (=> b!4734383 (= (= lt!1897341 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217931 lambda!217930))))

(assert (=> bs!1122207 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217871))))

(assert (=> bs!1122208 (= (= lt!1897341 lt!1896793) (= lambda!217931 lambda!217843))))

(assert (=> bs!1122209 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217849))))

(assert (=> bs!1122210 (= (= lt!1897341 lt!1896702) (= lambda!217931 lambda!217822))))

(assert (=> bs!1122211 (= (= lt!1897341 lt!1897244) (= lambda!217931 lambda!217922))))

(assert (=> bs!1122212 (not (= lambda!217931 lambda!217862))))

(assert (=> bs!1122213 (= (= lt!1897341 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217931 lambda!217877))))

(assert (=> bs!1122214 (= (= lt!1897341 lt!1896826) (= lambda!217931 lambda!217876))))

(assert (=> bs!1122205 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217833))))

(assert (=> bs!1122215 (= (= lt!1897341 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217931 lambda!217920))))

(assert (=> bs!1122216 (= (= lt!1897341 lt!1896752) (= lambda!217931 lambda!217839))))

(assert (=> bs!1122217 (= (= lt!1897341 lt!1897240) (= lambda!217931 lambda!217923))))

(assert (=> bs!1122218 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217819))))

(assert (=> bs!1122219 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217820))))

(assert (=> bs!1122220 (= (= lt!1897341 lt!1896789) (= lambda!217931 lambda!217844))))

(assert (=> bs!1122206 (= (= lt!1897341 lt!1896855) (= lambda!217931 lambda!217851))))

(assert (=> bs!1122221 (= (= lt!1897341 lt!1896822) (= lambda!217931 lambda!217848))))

(assert (=> bs!1122222 (= (= lt!1897341 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217931 lambda!217904))))

(assert (=> bs!1122223 (= (= lt!1897341 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217931 lambda!217924))))

(assert (=> bs!1122224 (= (= lt!1897341 lt!1896851) (= lambda!217931 lambda!217852))))

(assert (=> bs!1122225 (= (= lt!1897341 lt!1897028) (= lambda!217931 lambda!217882))))

(assert (=> bs!1122204 (= (= lt!1897341 lt!1897094) (= lambda!217931 lambda!217906))))

(assert (=> bs!1122226 (= (= lt!1897341 lt!1896826) (= lambda!217931 lambda!217847))))

(assert (=> bs!1122227 (= (= lt!1897341 lt!1897090) (= lambda!217931 lambda!217907))))

(assert (=> bs!1122228 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217845))))

(assert (=> bs!1122229 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217830))))

(assert (=> bs!1122225 (= (= lt!1897341 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217931 lambda!217880))))

(assert (=> bs!1122211 (= (= lt!1897341 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217931 lambda!217921))))

(assert (=> bs!1122208 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217841))))

(assert (=> bs!1122230 (= (= lt!1897341 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217931 lambda!217929))))

(assert (=> bs!1122219 (= (= lt!1897341 lt!1896706) (= lambda!217931 lambda!217821))))

(assert (=> bs!1122231 (not (= lambda!217931 lambda!217860))))

(assert (=> bs!1122232 (= (= lt!1897341 lt!1897285) (= lambda!217931 lambda!217926))))

(assert (=> bs!1122233 (= (= lt!1897341 lt!1896793) (= lambda!217931 lambda!217918))))

(assert (=> bs!1122234 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217840))))

(assert (=> bs!1122232 (= (= lt!1897341 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217931 lambda!217925))))

(assert (=> bs!1122226 (= (= lt!1897341 lt!1896343) (= lambda!217931 lambda!217846))))

(assert (=> bs!1122235 (= (= lt!1897341 lt!1897024) (= lambda!217931 lambda!217883))))

(assert (=> bs!1122236 (= (= lt!1897341 lt!1897281) (= lambda!217931 lambda!217927))))

(assert (=> b!4734383 true))

(declare-fun bs!1122237 () Bool)

(declare-fun d!1510252 () Bool)

(assert (= bs!1122237 (and d!1510252 b!4733999)))

(declare-fun lt!1897337 () ListMap!5341)

(declare-fun lambda!217940 () Int)

(assert (=> bs!1122237 (= (= lt!1897337 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217940 lambda!217905))))

(declare-fun bs!1122238 () Bool)

(assert (= bs!1122238 (and d!1510252 b!4733537)))

(assert (=> bs!1122238 (= (= lt!1897337 lt!1896756) (= lambda!217940 lambda!217834))))

(declare-fun bs!1122239 () Bool)

(assert (= bs!1122239 (and d!1510252 b!4733594)))

(assert (=> bs!1122239 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217850))))

(declare-fun bs!1122240 () Bool)

(assert (= bs!1122240 (and d!1510252 b!4734383)))

(assert (=> bs!1122240 (= (= lt!1897337 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217940 lambda!217930))))

(declare-fun bs!1122241 () Bool)

(assert (= bs!1122241 (and d!1510252 d!1509926)))

(assert (=> bs!1122241 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217871))))

(assert (=> bs!1122240 (= (= lt!1897337 lt!1897341) (= lambda!217940 lambda!217931))))

(declare-fun bs!1122242 () Bool)

(assert (= bs!1122242 (and d!1510252 b!4733550)))

(assert (=> bs!1122242 (= (= lt!1897337 lt!1896793) (= lambda!217940 lambda!217843))))

(declare-fun bs!1122243 () Bool)

(assert (= bs!1122243 (and d!1510252 b!4733596)))

(assert (=> bs!1122243 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217849))))

(declare-fun bs!1122244 () Bool)

(assert (= bs!1122244 (and d!1510252 d!1509730)))

(assert (=> bs!1122244 (= (= lt!1897337 lt!1896702) (= lambda!217940 lambda!217822))))

(declare-fun bs!1122245 () Bool)

(assert (= bs!1122245 (and d!1510252 b!4734263)))

(assert (=> bs!1122245 (= (= lt!1897337 lt!1897244) (= lambda!217940 lambda!217922))))

(declare-fun bs!1122246 () Bool)

(assert (= bs!1122246 (and d!1510252 d!1509876)))

(assert (=> bs!1122246 (not (= lambda!217940 lambda!217862))))

(declare-fun bs!1122247 () Bool)

(assert (= bs!1122247 (and d!1510252 b!4733900)))

(assert (=> bs!1122247 (= (= lt!1897337 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217940 lambda!217877))))

(declare-fun bs!1122248 () Bool)

(assert (= bs!1122248 (and d!1510252 d!1509984)))

(assert (=> bs!1122248 (= (= lt!1897337 lt!1896826) (= lambda!217940 lambda!217876))))

(assert (=> bs!1122238 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217833))))

(declare-fun bs!1122249 () Bool)

(assert (= bs!1122249 (and d!1510252 b!4734265)))

(assert (=> bs!1122249 (= (= lt!1897337 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217940 lambda!217920))))

(declare-fun bs!1122250 () Bool)

(assert (= bs!1122250 (and d!1510252 d!1509818)))

(assert (=> bs!1122250 (= (= lt!1897337 lt!1896752) (= lambda!217940 lambda!217839))))

(declare-fun bs!1122251 () Bool)

(assert (= bs!1122251 (and d!1510252 d!1510190)))

(assert (=> bs!1122251 (= (= lt!1897337 lt!1897240) (= lambda!217940 lambda!217923))))

(declare-fun bs!1122252 () Bool)

(assert (= bs!1122252 (and d!1510252 b!4733502)))

(assert (=> bs!1122252 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217819))))

(declare-fun bs!1122253 () Bool)

(assert (= bs!1122253 (and d!1510252 b!4733500)))

(assert (=> bs!1122253 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217820))))

(declare-fun bs!1122254 () Bool)

(assert (= bs!1122254 (and d!1510252 d!1509820)))

(assert (=> bs!1122254 (= (= lt!1897337 lt!1896789) (= lambda!217940 lambda!217844))))

(assert (=> bs!1122239 (= (= lt!1897337 lt!1896855) (= lambda!217940 lambda!217851))))

(declare-fun bs!1122255 () Bool)

(assert (= bs!1122255 (and d!1510252 d!1509826)))

(assert (=> bs!1122255 (= (= lt!1897337 lt!1896822) (= lambda!217940 lambda!217848))))

(declare-fun bs!1122256 () Bool)

(assert (= bs!1122256 (and d!1510252 b!4734001)))

(assert (=> bs!1122256 (= (= lt!1897337 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217940 lambda!217904))))

(declare-fun bs!1122257 () Bool)

(assert (= bs!1122257 (and d!1510252 b!4734302)))

(assert (=> bs!1122257 (= (= lt!1897337 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217940 lambda!217924))))

(declare-fun bs!1122258 () Bool)

(assert (= bs!1122258 (and d!1510252 d!1509834)))

(assert (=> bs!1122258 (= (= lt!1897337 lt!1896851) (= lambda!217940 lambda!217852))))

(declare-fun bs!1122259 () Bool)

(assert (= bs!1122259 (and d!1510252 b!4733898)))

(assert (=> bs!1122259 (= (= lt!1897337 lt!1897028) (= lambda!217940 lambda!217882))))

(assert (=> bs!1122237 (= (= lt!1897337 lt!1897094) (= lambda!217940 lambda!217906))))

(declare-fun bs!1122260 () Bool)

(assert (= bs!1122260 (and d!1510252 b!4733561)))

(assert (=> bs!1122260 (= (= lt!1897337 lt!1896826) (= lambda!217940 lambda!217847))))

(declare-fun bs!1122261 () Bool)

(assert (= bs!1122261 (and d!1510252 d!1510022)))

(assert (=> bs!1122261 (= (= lt!1897337 lt!1897090) (= lambda!217940 lambda!217907))))

(declare-fun bs!1122262 () Bool)

(assert (= bs!1122262 (and d!1510252 b!4733563)))

(assert (=> bs!1122262 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217845))))

(declare-fun bs!1122263 () Bool)

(assert (= bs!1122263 (and d!1510252 b!4733539)))

(assert (=> bs!1122263 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217830))))

(assert (=> bs!1122259 (= (= lt!1897337 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217940 lambda!217880))))

(assert (=> bs!1122245 (= (= lt!1897337 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217940 lambda!217921))))

(assert (=> bs!1122242 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217841))))

(declare-fun bs!1122264 () Bool)

(assert (= bs!1122264 (and d!1510252 b!4734385)))

(assert (=> bs!1122264 (= (= lt!1897337 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217940 lambda!217929))))

(assert (=> bs!1122253 (= (= lt!1897337 lt!1896706) (= lambda!217940 lambda!217821))))

(declare-fun bs!1122265 () Bool)

(assert (= bs!1122265 (and d!1510252 d!1509864)))

(assert (=> bs!1122265 (not (= lambda!217940 lambda!217860))))

(declare-fun bs!1122266 () Bool)

(assert (= bs!1122266 (and d!1510252 b!4734300)))

(assert (=> bs!1122266 (= (= lt!1897337 lt!1897285) (= lambda!217940 lambda!217926))))

(declare-fun bs!1122267 () Bool)

(assert (= bs!1122267 (and d!1510252 d!1510164)))

(assert (=> bs!1122267 (= (= lt!1897337 lt!1896793) (= lambda!217940 lambda!217918))))

(declare-fun bs!1122268 () Bool)

(assert (= bs!1122268 (and d!1510252 b!4733552)))

(assert (=> bs!1122268 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217840))))

(assert (=> bs!1122266 (= (= lt!1897337 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217940 lambda!217925))))

(assert (=> bs!1122260 (= (= lt!1897337 lt!1896343) (= lambda!217940 lambda!217846))))

(declare-fun bs!1122269 () Bool)

(assert (= bs!1122269 (and d!1510252 d!1509992)))

(assert (=> bs!1122269 (= (= lt!1897337 lt!1897024) (= lambda!217940 lambda!217883))))

(declare-fun bs!1122270 () Bool)

(assert (= bs!1122270 (and d!1510252 d!1510208)))

(assert (=> bs!1122270 (= (= lt!1897337 lt!1897281) (= lambda!217940 lambda!217927))))

(assert (=> d!1510252 true))

(declare-fun bm!331148 () Bool)

(declare-fun call!331153 () Bool)

(declare-fun c!808579 () Bool)

(assert (=> bm!331148 (= call!331153 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (ite c!808579 lambda!217929 lambda!217931)))))

(declare-fun b!4734382 () Bool)

(declare-fun e!2953039 () Bool)

(assert (=> b!4734382 (= e!2953039 call!331153)))

(declare-fun call!331155 () Unit!131735)

(declare-fun bm!331149 () Bool)

(assert (=> bm!331149 (= call!331155 (lemmaContainsAllItsOwnKeys!820 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun call!331154 () Bool)

(declare-fun bm!331150 () Bool)

(assert (=> bm!331150 (= call!331154 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (ite c!808579 lambda!217929 lambda!217931)))))

(declare-fun e!2953037 () Bool)

(assert (=> d!1510252 e!2953037))

(declare-fun res!2004782 () Bool)

(assert (=> d!1510252 (=> (not res!2004782) (not e!2953037))))

(assert (=> d!1510252 (= res!2004782 (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217940))))

(declare-fun e!2953038 () ListMap!5341)

(assert (=> d!1510252 (= lt!1897337 e!2953038)))

(assert (=> d!1510252 (= c!808579 ((_ is Nil!52913) (t!360317 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> d!1510252 (noDuplicateKeys!2044 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))))

(assert (=> d!1510252 (= (addToMapMapFromBucket!1474 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lt!1897337)))

(assert (=> b!4734383 (= e!2953038 lt!1897341)))

(declare-fun lt!1897332 () ListMap!5341)

(assert (=> b!4734383 (= lt!1897332 (+!2292 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> b!4734383 (= lt!1897341 (addToMapMapFromBucket!1474 (t!360317 (t!360317 (Cons!52913 lt!1896326 lt!1896336))) (+!2292 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336))))))))

(declare-fun lt!1897333 () Unit!131735)

(assert (=> b!4734383 (= lt!1897333 call!331155)))

(assert (=> b!4734383 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lambda!217930)))

(declare-fun lt!1897330 () Unit!131735)

(assert (=> b!4734383 (= lt!1897330 lt!1897333)))

(assert (=> b!4734383 (forall!11653 (toList!5978 lt!1897332) lambda!217931)))

(declare-fun lt!1897331 () Unit!131735)

(declare-fun Unit!132001 () Unit!131735)

(assert (=> b!4734383 (= lt!1897331 Unit!132001)))

(assert (=> b!4734383 (forall!11653 (t!360317 (t!360317 (Cons!52913 lt!1896326 lt!1896336))) lambda!217931)))

(declare-fun lt!1897327 () Unit!131735)

(declare-fun Unit!132002 () Unit!131735)

(assert (=> b!4734383 (= lt!1897327 Unit!132002)))

(declare-fun lt!1897342 () Unit!131735)

(declare-fun Unit!132003 () Unit!131735)

(assert (=> b!4734383 (= lt!1897342 Unit!132003)))

(declare-fun lt!1897324 () Unit!131735)

(assert (=> b!4734383 (= lt!1897324 (forallContained!3693 (toList!5978 lt!1897332) lambda!217931 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> b!4734383 (contains!16298 lt!1897332 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun lt!1897336 () Unit!131735)

(declare-fun Unit!132004 () Unit!131735)

(assert (=> b!4734383 (= lt!1897336 Unit!132004)))

(assert (=> b!4734383 (contains!16298 lt!1897341 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun lt!1897338 () Unit!131735)

(declare-fun Unit!132005 () Unit!131735)

(assert (=> b!4734383 (= lt!1897338 Unit!132005)))

(assert (=> b!4734383 (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217931)))

(declare-fun lt!1897340 () Unit!131735)

(declare-fun Unit!132006 () Unit!131735)

(assert (=> b!4734383 (= lt!1897340 Unit!132006)))

(assert (=> b!4734383 (forall!11653 (toList!5978 lt!1897332) lambda!217931)))

(declare-fun lt!1897328 () Unit!131735)

(declare-fun Unit!132007 () Unit!131735)

(assert (=> b!4734383 (= lt!1897328 Unit!132007)))

(declare-fun lt!1897323 () Unit!131735)

(declare-fun Unit!132008 () Unit!131735)

(assert (=> b!4734383 (= lt!1897323 Unit!132008)))

(declare-fun lt!1897325 () Unit!131735)

(assert (=> b!4734383 (= lt!1897325 (addForallContainsKeyThenBeforeAdding!819 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897341 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))) (_2!30579 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336))))))))

(assert (=> b!4734383 call!331154))

(declare-fun lt!1897334 () Unit!131735)

(assert (=> b!4734383 (= lt!1897334 lt!1897325)))

(assert (=> b!4734383 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lambda!217931)))

(declare-fun lt!1897322 () Unit!131735)

(declare-fun Unit!132009 () Unit!131735)

(assert (=> b!4734383 (= lt!1897322 Unit!132009)))

(declare-fun res!2004784 () Bool)

(assert (=> b!4734383 (= res!2004784 (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217931))))

(assert (=> b!4734383 (=> (not res!2004784) (not e!2953039))))

(assert (=> b!4734383 e!2953039))

(declare-fun lt!1897326 () Unit!131735)

(declare-fun Unit!132010 () Unit!131735)

(assert (=> b!4734383 (= lt!1897326 Unit!132010)))

(declare-fun b!4734384 () Bool)

(declare-fun res!2004783 () Bool)

(assert (=> b!4734384 (=> (not res!2004783) (not e!2953037))))

(assert (=> b!4734384 (= res!2004783 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lambda!217940))))

(assert (=> b!4734385 (= e!2953038 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(declare-fun lt!1897335 () Unit!131735)

(assert (=> b!4734385 (= lt!1897335 call!331155)))

(assert (=> b!4734385 call!331154))

(declare-fun lt!1897339 () Unit!131735)

(assert (=> b!4734385 (= lt!1897339 lt!1897335)))

(assert (=> b!4734385 call!331153))

(declare-fun lt!1897329 () Unit!131735)

(declare-fun Unit!132011 () Unit!131735)

(assert (=> b!4734385 (= lt!1897329 Unit!132011)))

(declare-fun b!4734386 () Bool)

(assert (=> b!4734386 (= e!2953037 (invariantList!1535 (toList!5978 lt!1897337)))))

(assert (= (and d!1510252 c!808579) b!4734385))

(assert (= (and d!1510252 (not c!808579)) b!4734383))

(assert (= (and b!4734383 res!2004784) b!4734382))

(assert (= (or b!4734385 b!4734383) bm!331149))

(assert (= (or b!4734385 b!4734383) bm!331150))

(assert (= (or b!4734385 b!4734382) bm!331148))

(assert (= (and d!1510252 res!2004782) b!4734384))

(assert (= (and b!4734384 res!2004783) b!4734386))

(declare-fun m!5678769 () Bool)

(assert (=> bm!331148 m!5678769))

(declare-fun m!5678771 () Bool)

(assert (=> d!1510252 m!5678771))

(assert (=> d!1510252 m!5677649))

(assert (=> bm!331149 m!5677379))

(declare-fun m!5678773 () Bool)

(assert (=> bm!331149 m!5678773))

(declare-fun m!5678775 () Bool)

(assert (=> b!4734383 m!5678775))

(declare-fun m!5678777 () Bool)

(assert (=> b!4734383 m!5678777))

(declare-fun m!5678779 () Bool)

(assert (=> b!4734383 m!5678779))

(declare-fun m!5678781 () Bool)

(assert (=> b!4734383 m!5678781))

(declare-fun m!5678783 () Bool)

(assert (=> b!4734383 m!5678783))

(declare-fun m!5678785 () Bool)

(assert (=> b!4734383 m!5678785))

(declare-fun m!5678787 () Bool)

(assert (=> b!4734383 m!5678787))

(assert (=> b!4734383 m!5678775))

(assert (=> b!4734383 m!5677379))

(declare-fun m!5678789 () Bool)

(assert (=> b!4734383 m!5678789))

(declare-fun m!5678791 () Bool)

(assert (=> b!4734383 m!5678791))

(assert (=> b!4734383 m!5678781))

(assert (=> b!4734383 m!5677379))

(declare-fun m!5678793 () Bool)

(assert (=> b!4734383 m!5678793))

(assert (=> b!4734383 m!5678789))

(declare-fun m!5678795 () Bool)

(assert (=> b!4734383 m!5678795))

(declare-fun m!5678797 () Bool)

(assert (=> b!4734384 m!5678797))

(assert (=> bm!331150 m!5678769))

(declare-fun m!5678799 () Bool)

(assert (=> b!4734386 m!5678799))

(assert (=> b!4733594 d!1510252))

(declare-fun d!1510254 () Bool)

(declare-fun res!2004794 () Bool)

(declare-fun e!2953052 () Bool)

(assert (=> d!1510254 (=> res!2004794 e!2953052)))

(assert (=> d!1510254 (= res!2004794 ((_ is Nil!52913) (Cons!52913 lt!1896326 lt!1896336)))))

(assert (=> d!1510254 (= (forall!11653 (Cons!52913 lt!1896326 lt!1896336) lambda!217851) e!2953052)))

(declare-fun b!4734416 () Bool)

(declare-fun e!2953053 () Bool)

(assert (=> b!4734416 (= e!2953052 e!2953053)))

(declare-fun res!2004795 () Bool)

(assert (=> b!4734416 (=> (not res!2004795) (not e!2953053))))

(assert (=> b!4734416 (= res!2004795 (dynLambda!21858 lambda!217851 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(declare-fun b!4734417 () Bool)

(assert (=> b!4734417 (= e!2953053 (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217851))))

(assert (= (and d!1510254 (not res!2004794)) b!4734416))

(assert (= (and b!4734416 res!2004795) b!4734417))

(declare-fun b_lambda!180743 () Bool)

(assert (=> (not b_lambda!180743) (not b!4734416)))

(declare-fun m!5678817 () Bool)

(assert (=> b!4734416 m!5678817))

(assert (=> b!4734417 m!5677367))

(assert (=> b!4733594 d!1510254))

(declare-fun b!4734418 () Bool)

(declare-fun e!2953058 () Unit!131735)

(declare-fun lt!1897369 () Unit!131735)

(assert (=> b!4734418 (= e!2953058 lt!1897369)))

(declare-fun lt!1897365 () Unit!131735)

(assert (=> b!4734418 (= lt!1897365 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> b!4734418 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun lt!1897368 () Unit!131735)

(assert (=> b!4734418 (= lt!1897368 lt!1897365)))

(assert (=> b!4734418 (= lt!1897369 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun call!331156 () Bool)

(assert (=> b!4734418 call!331156))

(declare-fun b!4734419 () Bool)

(declare-fun e!2953055 () List!53040)

(assert (=> b!4734419 (= e!2953055 (keys!19029 lt!1896855))))

(declare-fun b!4734420 () Bool)

(declare-fun e!2953056 () Bool)

(assert (=> b!4734420 (= e!2953056 (contains!16302 (keys!19029 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun b!4734421 () Bool)

(declare-fun e!2953054 () Bool)

(assert (=> b!4734421 (= e!2953054 e!2953056)))

(declare-fun res!2004798 () Bool)

(assert (=> b!4734421 (=> (not res!2004798) (not e!2953056))))

(assert (=> b!4734421 (= res!2004798 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))))

(declare-fun b!4734422 () Bool)

(assert (=> b!4734422 false))

(declare-fun lt!1897364 () Unit!131735)

(declare-fun lt!1897370 () Unit!131735)

(assert (=> b!4734422 (= lt!1897364 lt!1897370)))

(assert (=> b!4734422 (containsKey!3440 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> b!4734422 (= lt!1897370 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun e!2953059 () Unit!131735)

(declare-fun Unit!132012 () Unit!131735)

(assert (=> b!4734422 (= e!2953059 Unit!132012)))

(declare-fun bm!331151 () Bool)

(assert (=> bm!331151 (= call!331156 (contains!16302 e!2953055 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun c!808589 () Bool)

(declare-fun c!808590 () Bool)

(assert (=> bm!331151 (= c!808589 c!808590)))

(declare-fun d!1510256 () Bool)

(assert (=> d!1510256 e!2953054))

(declare-fun res!2004796 () Bool)

(assert (=> d!1510256 (=> res!2004796 e!2953054)))

(declare-fun e!2953057 () Bool)

(assert (=> d!1510256 (= res!2004796 e!2953057)))

(declare-fun res!2004797 () Bool)

(assert (=> d!1510256 (=> (not res!2004797) (not e!2953057))))

(declare-fun lt!1897367 () Bool)

(assert (=> d!1510256 (= res!2004797 (not lt!1897367))))

(declare-fun lt!1897366 () Bool)

(assert (=> d!1510256 (= lt!1897367 lt!1897366)))

(declare-fun lt!1897371 () Unit!131735)

(assert (=> d!1510256 (= lt!1897371 e!2953058)))

(assert (=> d!1510256 (= c!808590 lt!1897366)))

(assert (=> d!1510256 (= lt!1897366 (containsKey!3440 (toList!5978 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> d!1510256 (= (contains!16298 lt!1896855 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lt!1897367)))

(declare-fun b!4734423 () Bool)

(assert (=> b!4734423 (= e!2953055 (getKeysList!974 (toList!5978 lt!1896855)))))

(declare-fun b!4734424 () Bool)

(assert (=> b!4734424 (= e!2953058 e!2953059)))

(declare-fun c!808591 () Bool)

(assert (=> b!4734424 (= c!808591 call!331156)))

(declare-fun b!4734425 () Bool)

(declare-fun Unit!132013 () Unit!131735)

(assert (=> b!4734425 (= e!2953059 Unit!132013)))

(declare-fun b!4734426 () Bool)

(assert (=> b!4734426 (= e!2953057 (not (contains!16302 (keys!19029 lt!1896855) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))))

(assert (= (and d!1510256 c!808590) b!4734418))

(assert (= (and d!1510256 (not c!808590)) b!4734424))

(assert (= (and b!4734424 c!808591) b!4734422))

(assert (= (and b!4734424 (not c!808591)) b!4734425))

(assert (= (or b!4734418 b!4734424) bm!331151))

(assert (= (and bm!331151 c!808589) b!4734423))

(assert (= (and bm!331151 (not c!808589)) b!4734419))

(assert (= (and d!1510256 res!2004797) b!4734426))

(assert (= (and d!1510256 (not res!2004796)) b!4734421))

(assert (= (and b!4734421 res!2004798) b!4734420))

(declare-fun m!5678831 () Bool)

(assert (=> b!4734423 m!5678831))

(declare-fun m!5678833 () Bool)

(assert (=> b!4734418 m!5678833))

(declare-fun m!5678835 () Bool)

(assert (=> b!4734418 m!5678835))

(assert (=> b!4734418 m!5678835))

(declare-fun m!5678837 () Bool)

(assert (=> b!4734418 m!5678837))

(declare-fun m!5678839 () Bool)

(assert (=> b!4734418 m!5678839))

(declare-fun m!5678841 () Bool)

(assert (=> d!1510256 m!5678841))

(declare-fun m!5678843 () Bool)

(assert (=> bm!331151 m!5678843))

(declare-fun m!5678845 () Bool)

(assert (=> b!4734419 m!5678845))

(assert (=> b!4734421 m!5678835))

(assert (=> b!4734421 m!5678835))

(assert (=> b!4734421 m!5678837))

(assert (=> b!4734426 m!5678845))

(assert (=> b!4734426 m!5678845))

(declare-fun m!5678847 () Bool)

(assert (=> b!4734426 m!5678847))

(assert (=> b!4734422 m!5678841))

(declare-fun m!5678849 () Bool)

(assert (=> b!4734422 m!5678849))

(assert (=> b!4734420 m!5678845))

(assert (=> b!4734420 m!5678845))

(assert (=> b!4734420 m!5678847))

(assert (=> b!4733594 d!1510256))

(declare-fun d!1510260 () Bool)

(assert (=> d!1510260 (dynLambda!21858 lambda!217851 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))

(declare-fun lt!1897372 () Unit!131735)

(assert (=> d!1510260 (= lt!1897372 (choose!33534 (toList!5978 lt!1896846) lambda!217851 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(declare-fun e!2953060 () Bool)

(assert (=> d!1510260 e!2953060))

(declare-fun res!2004799 () Bool)

(assert (=> d!1510260 (=> (not res!2004799) (not e!2953060))))

(assert (=> d!1510260 (= res!2004799 (forall!11653 (toList!5978 lt!1896846) lambda!217851))))

(assert (=> d!1510260 (= (forallContained!3693 (toList!5978 lt!1896846) lambda!217851 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897372)))

(declare-fun b!4734427 () Bool)

(assert (=> b!4734427 (= e!2953060 (contains!16300 (toList!5978 lt!1896846) (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (= (and d!1510260 res!2004799) b!4734427))

(declare-fun b_lambda!180745 () Bool)

(assert (=> (not b_lambda!180745) (not d!1510260)))

(assert (=> d!1510260 m!5678817))

(declare-fun m!5678851 () Bool)

(assert (=> d!1510260 m!5678851))

(assert (=> d!1510260 m!5677371))

(declare-fun m!5678853 () Bool)

(assert (=> b!4734427 m!5678853))

(assert (=> b!4733594 d!1510260))

(declare-fun bs!1122278 () Bool)

(declare-fun d!1510262 () Bool)

(assert (= bs!1122278 (and d!1510262 b!4733999)))

(declare-fun lambda!217945 () Int)

(assert (=> bs!1122278 (= (= lt!1896855 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217945 lambda!217905))))

(declare-fun bs!1122279 () Bool)

(assert (= bs!1122279 (and d!1510262 b!4733537)))

(assert (=> bs!1122279 (= (= lt!1896855 lt!1896756) (= lambda!217945 lambda!217834))))

(declare-fun bs!1122280 () Bool)

(assert (= bs!1122280 (and d!1510262 b!4733594)))

(assert (=> bs!1122280 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217850))))

(declare-fun bs!1122281 () Bool)

(assert (= bs!1122281 (and d!1510262 b!4734383)))

(assert (=> bs!1122281 (= (= lt!1896855 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217945 lambda!217930))))

(declare-fun bs!1122282 () Bool)

(assert (= bs!1122282 (and d!1510262 d!1509926)))

(assert (=> bs!1122282 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217871))))

(assert (=> bs!1122281 (= (= lt!1896855 lt!1897341) (= lambda!217945 lambda!217931))))

(declare-fun bs!1122283 () Bool)

(assert (= bs!1122283 (and d!1510262 b!4733550)))

(assert (=> bs!1122283 (= (= lt!1896855 lt!1896793) (= lambda!217945 lambda!217843))))

(declare-fun bs!1122284 () Bool)

(assert (= bs!1122284 (and d!1510262 b!4733596)))

(assert (=> bs!1122284 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217849))))

(declare-fun bs!1122285 () Bool)

(assert (= bs!1122285 (and d!1510262 d!1509730)))

(assert (=> bs!1122285 (= (= lt!1896855 lt!1896702) (= lambda!217945 lambda!217822))))

(declare-fun bs!1122286 () Bool)

(assert (= bs!1122286 (and d!1510262 d!1510252)))

(assert (=> bs!1122286 (= (= lt!1896855 lt!1897337) (= lambda!217945 lambda!217940))))

(declare-fun bs!1122287 () Bool)

(assert (= bs!1122287 (and d!1510262 b!4734263)))

(assert (=> bs!1122287 (= (= lt!1896855 lt!1897244) (= lambda!217945 lambda!217922))))

(declare-fun bs!1122288 () Bool)

(assert (= bs!1122288 (and d!1510262 d!1509876)))

(assert (=> bs!1122288 (not (= lambda!217945 lambda!217862))))

(declare-fun bs!1122289 () Bool)

(assert (= bs!1122289 (and d!1510262 b!4733900)))

(assert (=> bs!1122289 (= (= lt!1896855 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217945 lambda!217877))))

(declare-fun bs!1122290 () Bool)

(assert (= bs!1122290 (and d!1510262 d!1509984)))

(assert (=> bs!1122290 (= (= lt!1896855 lt!1896826) (= lambda!217945 lambda!217876))))

(assert (=> bs!1122279 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217833))))

(declare-fun bs!1122291 () Bool)

(assert (= bs!1122291 (and d!1510262 b!4734265)))

(assert (=> bs!1122291 (= (= lt!1896855 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217945 lambda!217920))))

(declare-fun bs!1122292 () Bool)

(assert (= bs!1122292 (and d!1510262 d!1509818)))

(assert (=> bs!1122292 (= (= lt!1896855 lt!1896752) (= lambda!217945 lambda!217839))))

(declare-fun bs!1122293 () Bool)

(assert (= bs!1122293 (and d!1510262 d!1510190)))

(assert (=> bs!1122293 (= (= lt!1896855 lt!1897240) (= lambda!217945 lambda!217923))))

(declare-fun bs!1122294 () Bool)

(assert (= bs!1122294 (and d!1510262 b!4733502)))

(assert (=> bs!1122294 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217819))))

(declare-fun bs!1122295 () Bool)

(assert (= bs!1122295 (and d!1510262 b!4733500)))

(assert (=> bs!1122295 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217820))))

(declare-fun bs!1122296 () Bool)

(assert (= bs!1122296 (and d!1510262 d!1509820)))

(assert (=> bs!1122296 (= (= lt!1896855 lt!1896789) (= lambda!217945 lambda!217844))))

(assert (=> bs!1122280 (= lambda!217945 lambda!217851)))

(declare-fun bs!1122297 () Bool)

(assert (= bs!1122297 (and d!1510262 d!1509826)))

(assert (=> bs!1122297 (= (= lt!1896855 lt!1896822) (= lambda!217945 lambda!217848))))

(declare-fun bs!1122298 () Bool)

(assert (= bs!1122298 (and d!1510262 b!4734001)))

(assert (=> bs!1122298 (= (= lt!1896855 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217945 lambda!217904))))

(declare-fun bs!1122299 () Bool)

(assert (= bs!1122299 (and d!1510262 b!4734302)))

(assert (=> bs!1122299 (= (= lt!1896855 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217945 lambda!217924))))

(declare-fun bs!1122300 () Bool)

(assert (= bs!1122300 (and d!1510262 d!1509834)))

(assert (=> bs!1122300 (= (= lt!1896855 lt!1896851) (= lambda!217945 lambda!217852))))

(declare-fun bs!1122301 () Bool)

(assert (= bs!1122301 (and d!1510262 b!4733898)))

(assert (=> bs!1122301 (= (= lt!1896855 lt!1897028) (= lambda!217945 lambda!217882))))

(assert (=> bs!1122278 (= (= lt!1896855 lt!1897094) (= lambda!217945 lambda!217906))))

(declare-fun bs!1122302 () Bool)

(assert (= bs!1122302 (and d!1510262 b!4733561)))

(assert (=> bs!1122302 (= (= lt!1896855 lt!1896826) (= lambda!217945 lambda!217847))))

(declare-fun bs!1122303 () Bool)

(assert (= bs!1122303 (and d!1510262 d!1510022)))

(assert (=> bs!1122303 (= (= lt!1896855 lt!1897090) (= lambda!217945 lambda!217907))))

(declare-fun bs!1122304 () Bool)

(assert (= bs!1122304 (and d!1510262 b!4733563)))

(assert (=> bs!1122304 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217845))))

(declare-fun bs!1122305 () Bool)

(assert (= bs!1122305 (and d!1510262 b!4733539)))

(assert (=> bs!1122305 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217830))))

(assert (=> bs!1122301 (= (= lt!1896855 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217945 lambda!217880))))

(assert (=> bs!1122287 (= (= lt!1896855 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217945 lambda!217921))))

(assert (=> bs!1122283 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217841))))

(declare-fun bs!1122306 () Bool)

(assert (= bs!1122306 (and d!1510262 b!4734385)))

(assert (=> bs!1122306 (= (= lt!1896855 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217945 lambda!217929))))

(assert (=> bs!1122295 (= (= lt!1896855 lt!1896706) (= lambda!217945 lambda!217821))))

(declare-fun bs!1122307 () Bool)

(assert (= bs!1122307 (and d!1510262 d!1509864)))

(assert (=> bs!1122307 (not (= lambda!217945 lambda!217860))))

(declare-fun bs!1122308 () Bool)

(assert (= bs!1122308 (and d!1510262 b!4734300)))

(assert (=> bs!1122308 (= (= lt!1896855 lt!1897285) (= lambda!217945 lambda!217926))))

(declare-fun bs!1122309 () Bool)

(assert (= bs!1122309 (and d!1510262 d!1510164)))

(assert (=> bs!1122309 (= (= lt!1896855 lt!1896793) (= lambda!217945 lambda!217918))))

(declare-fun bs!1122310 () Bool)

(assert (= bs!1122310 (and d!1510262 b!4733552)))

(assert (=> bs!1122310 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217840))))

(assert (=> bs!1122308 (= (= lt!1896855 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217945 lambda!217925))))

(assert (=> bs!1122302 (= (= lt!1896855 lt!1896343) (= lambda!217945 lambda!217846))))

(declare-fun bs!1122311 () Bool)

(assert (= bs!1122311 (and d!1510262 d!1509992)))

(assert (=> bs!1122311 (= (= lt!1896855 lt!1897024) (= lambda!217945 lambda!217883))))

(declare-fun bs!1122312 () Bool)

(assert (= bs!1122312 (and d!1510262 d!1510208)))

(assert (=> bs!1122312 (= (= lt!1896855 lt!1897281) (= lambda!217945 lambda!217927))))

(assert (=> d!1510262 true))

(assert (=> d!1510262 (forall!11653 (toList!5978 lt!1896343) lambda!217945)))

(declare-fun lt!1897373 () Unit!131735)

(assert (=> d!1510262 (= lt!1897373 (choose!33535 lt!1896343 lt!1896855 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> d!1510262 (forall!11653 (toList!5978 (+!2292 lt!1896343 (tuple2!54571 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))) lambda!217945)))

(assert (=> d!1510262 (= (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896855 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lt!1897373)))

(declare-fun bs!1122313 () Bool)

(assert (= bs!1122313 d!1510262))

(declare-fun m!5678855 () Bool)

(assert (=> bs!1122313 m!5678855))

(declare-fun m!5678857 () Bool)

(assert (=> bs!1122313 m!5678857))

(declare-fun m!5678859 () Bool)

(assert (=> bs!1122313 m!5678859))

(declare-fun m!5678861 () Bool)

(assert (=> bs!1122313 m!5678861))

(assert (=> b!4733594 d!1510262))

(declare-fun d!1510264 () Bool)

(declare-fun res!2004800 () Bool)

(declare-fun e!2953061 () Bool)

(assert (=> d!1510264 (=> res!2004800 e!2953061)))

(assert (=> d!1510264 (= res!2004800 ((_ is Nil!52913) (toList!5978 lt!1896846)))))

(assert (=> d!1510264 (= (forall!11653 (toList!5978 lt!1896846) lambda!217851) e!2953061)))

(declare-fun b!4734428 () Bool)

(declare-fun e!2953062 () Bool)

(assert (=> b!4734428 (= e!2953061 e!2953062)))

(declare-fun res!2004801 () Bool)

(assert (=> b!4734428 (=> (not res!2004801) (not e!2953062))))

(assert (=> b!4734428 (= res!2004801 (dynLambda!21858 lambda!217851 (h!59284 (toList!5978 lt!1896846))))))

(declare-fun b!4734429 () Bool)

(assert (=> b!4734429 (= e!2953062 (forall!11653 (t!360317 (toList!5978 lt!1896846)) lambda!217851))))

(assert (= (and d!1510264 (not res!2004800)) b!4734428))

(assert (= (and b!4734428 res!2004801) b!4734429))

(declare-fun b_lambda!180747 () Bool)

(assert (=> (not b_lambda!180747) (not b!4734428)))

(declare-fun m!5678863 () Bool)

(assert (=> b!4734428 m!5678863))

(declare-fun m!5678865 () Bool)

(assert (=> b!4734429 m!5678865))

(assert (=> b!4733594 d!1510264))

(declare-fun d!1510268 () Bool)

(declare-fun e!2953069 () Bool)

(assert (=> d!1510268 e!2953069))

(declare-fun res!2004805 () Bool)

(assert (=> d!1510268 (=> (not res!2004805) (not e!2953069))))

(declare-fun lt!1897384 () ListMap!5341)

(assert (=> d!1510268 (= res!2004805 (contains!16298 lt!1897384 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun lt!1897382 () List!53037)

(assert (=> d!1510268 (= lt!1897384 (ListMap!5342 lt!1897382))))

(declare-fun lt!1897385 () Unit!131735)

(declare-fun lt!1897383 () Unit!131735)

(assert (=> d!1510268 (= lt!1897385 lt!1897383)))

(assert (=> d!1510268 (= (getValueByKey!2000 lt!1897382 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (Some!12425 (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> d!1510268 (= lt!1897383 (lemmaContainsTupThenGetReturnValue!1102 lt!1897382 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> d!1510268 (= lt!1897382 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896343) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> d!1510268 (= (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) lt!1897384)))

(declare-fun b!4734439 () Bool)

(declare-fun res!2004806 () Bool)

(assert (=> b!4734439 (=> (not res!2004806) (not e!2953069))))

(assert (=> b!4734439 (= res!2004806 (= (getValueByKey!2000 (toList!5978 lt!1897384) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (Some!12425 (_2!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))))

(declare-fun b!4734440 () Bool)

(assert (=> b!4734440 (= e!2953069 (contains!16300 (toList!5978 lt!1897384) (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (= (and d!1510268 res!2004805) b!4734439))

(assert (= (and b!4734439 res!2004806) b!4734440))

(declare-fun m!5678867 () Bool)

(assert (=> d!1510268 m!5678867))

(declare-fun m!5678869 () Bool)

(assert (=> d!1510268 m!5678869))

(declare-fun m!5678871 () Bool)

(assert (=> d!1510268 m!5678871))

(declare-fun m!5678873 () Bool)

(assert (=> d!1510268 m!5678873))

(declare-fun m!5678875 () Bool)

(assert (=> b!4734439 m!5678875))

(declare-fun m!5678877 () Bool)

(assert (=> b!4734440 m!5678877))

(assert (=> b!4733594 d!1510268))

(declare-fun b!4734441 () Bool)

(declare-fun e!2953074 () Unit!131735)

(declare-fun lt!1897391 () Unit!131735)

(assert (=> b!4734441 (= e!2953074 lt!1897391)))

(declare-fun lt!1897387 () Unit!131735)

(assert (=> b!4734441 (= lt!1897387 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> b!4734441 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun lt!1897390 () Unit!131735)

(assert (=> b!4734441 (= lt!1897390 lt!1897387)))

(assert (=> b!4734441 (= lt!1897391 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun call!331158 () Bool)

(assert (=> b!4734441 call!331158))

(declare-fun b!4734442 () Bool)

(declare-fun e!2953071 () List!53040)

(assert (=> b!4734442 (= e!2953071 (keys!19029 lt!1896846))))

(declare-fun e!2953072 () Bool)

(declare-fun b!4734443 () Bool)

(assert (=> b!4734443 (= e!2953072 (contains!16302 (keys!19029 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun b!4734444 () Bool)

(declare-fun e!2953070 () Bool)

(assert (=> b!4734444 (= e!2953070 e!2953072)))

(declare-fun res!2004809 () Bool)

(assert (=> b!4734444 (=> (not res!2004809) (not e!2953072))))

(assert (=> b!4734444 (= res!2004809 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))))

(declare-fun b!4734445 () Bool)

(assert (=> b!4734445 false))

(declare-fun lt!1897386 () Unit!131735)

(declare-fun lt!1897392 () Unit!131735)

(assert (=> b!4734445 (= lt!1897386 lt!1897392)))

(assert (=> b!4734445 (containsKey!3440 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> b!4734445 (= lt!1897392 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun e!2953075 () Unit!131735)

(declare-fun Unit!132014 () Unit!131735)

(assert (=> b!4734445 (= e!2953075 Unit!132014)))

(declare-fun bm!331153 () Bool)

(assert (=> bm!331153 (= call!331158 (contains!16302 e!2953071 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun c!808595 () Bool)

(declare-fun c!808596 () Bool)

(assert (=> bm!331153 (= c!808595 c!808596)))

(declare-fun d!1510270 () Bool)

(assert (=> d!1510270 e!2953070))

(declare-fun res!2004807 () Bool)

(assert (=> d!1510270 (=> res!2004807 e!2953070)))

(declare-fun e!2953073 () Bool)

(assert (=> d!1510270 (= res!2004807 e!2953073)))

(declare-fun res!2004808 () Bool)

(assert (=> d!1510270 (=> (not res!2004808) (not e!2953073))))

(declare-fun lt!1897389 () Bool)

(assert (=> d!1510270 (= res!2004808 (not lt!1897389))))

(declare-fun lt!1897388 () Bool)

(assert (=> d!1510270 (= lt!1897389 lt!1897388)))

(declare-fun lt!1897393 () Unit!131735)

(assert (=> d!1510270 (= lt!1897393 e!2953074)))

(assert (=> d!1510270 (= c!808596 lt!1897388)))

(assert (=> d!1510270 (= lt!1897388 (containsKey!3440 (toList!5978 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> d!1510270 (= (contains!16298 lt!1896846 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) lt!1897389)))

(declare-fun b!4734446 () Bool)

(assert (=> b!4734446 (= e!2953071 (getKeysList!974 (toList!5978 lt!1896846)))))

(declare-fun b!4734447 () Bool)

(assert (=> b!4734447 (= e!2953074 e!2953075)))

(declare-fun c!808597 () Bool)

(assert (=> b!4734447 (= c!808597 call!331158)))

(declare-fun b!4734448 () Bool)

(declare-fun Unit!132017 () Unit!131735)

(assert (=> b!4734448 (= e!2953075 Unit!132017)))

(declare-fun b!4734449 () Bool)

(assert (=> b!4734449 (= e!2953073 (not (contains!16302 (keys!19029 lt!1896846) (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336))))))))

(assert (= (and d!1510270 c!808596) b!4734441))

(assert (= (and d!1510270 (not c!808596)) b!4734447))

(assert (= (and b!4734447 c!808597) b!4734445))

(assert (= (and b!4734447 (not c!808597)) b!4734448))

(assert (= (or b!4734441 b!4734447) bm!331153))

(assert (= (and bm!331153 c!808595) b!4734446))

(assert (= (and bm!331153 (not c!808595)) b!4734442))

(assert (= (and d!1510270 res!2004808) b!4734449))

(assert (= (and d!1510270 (not res!2004807)) b!4734444))

(assert (= (and b!4734444 res!2004809) b!4734443))

(declare-fun m!5678899 () Bool)

(assert (=> b!4734446 m!5678899))

(declare-fun m!5678901 () Bool)

(assert (=> b!4734441 m!5678901))

(declare-fun m!5678903 () Bool)

(assert (=> b!4734441 m!5678903))

(assert (=> b!4734441 m!5678903))

(declare-fun m!5678905 () Bool)

(assert (=> b!4734441 m!5678905))

(declare-fun m!5678907 () Bool)

(assert (=> b!4734441 m!5678907))

(declare-fun m!5678909 () Bool)

(assert (=> d!1510270 m!5678909))

(declare-fun m!5678911 () Bool)

(assert (=> bm!331153 m!5678911))

(declare-fun m!5678913 () Bool)

(assert (=> b!4734442 m!5678913))

(assert (=> b!4734444 m!5678903))

(assert (=> b!4734444 m!5678903))

(assert (=> b!4734444 m!5678905))

(assert (=> b!4734449 m!5678913))

(assert (=> b!4734449 m!5678913))

(declare-fun m!5678923 () Bool)

(assert (=> b!4734449 m!5678923))

(assert (=> b!4734445 m!5678909))

(declare-fun m!5678925 () Bool)

(assert (=> b!4734445 m!5678925))

(assert (=> b!4734443 m!5678913))

(assert (=> b!4734443 m!5678913))

(assert (=> b!4734443 m!5678923))

(assert (=> b!4733594 d!1510270))

(declare-fun d!1510278 () Bool)

(declare-fun res!2004816 () Bool)

(declare-fun e!2953086 () Bool)

(assert (=> d!1510278 (=> res!2004816 e!2953086)))

(assert (=> d!1510278 (= res!2004816 ((_ is Nil!52913) (t!360317 (Cons!52913 lt!1896326 lt!1896336))))))

(assert (=> d!1510278 (= (forall!11653 (t!360317 (Cons!52913 lt!1896326 lt!1896336)) lambda!217851) e!2953086)))

(declare-fun b!4734470 () Bool)

(declare-fun e!2953087 () Bool)

(assert (=> b!4734470 (= e!2953086 e!2953087)))

(declare-fun res!2004817 () Bool)

(assert (=> b!4734470 (=> (not res!2004817) (not e!2953087))))

(assert (=> b!4734470 (= res!2004817 (dynLambda!21858 lambda!217851 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun b!4734471 () Bool)

(assert (=> b!4734471 (= e!2953087 (forall!11653 (t!360317 (t!360317 (Cons!52913 lt!1896326 lt!1896336))) lambda!217851))))

(assert (= (and d!1510278 (not res!2004816)) b!4734470))

(assert (= (and b!4734470 res!2004817) b!4734471))

(declare-fun b_lambda!180749 () Bool)

(assert (=> (not b_lambda!180749) (not b!4734470)))

(declare-fun m!5678927 () Bool)

(assert (=> b!4734470 m!5678927))

(declare-fun m!5678929 () Bool)

(assert (=> b!4734471 m!5678929))

(assert (=> b!4733594 d!1510278))

(declare-fun bs!1122315 () Bool)

(declare-fun b!4734475 () Bool)

(assert (= bs!1122315 (and b!4734475 b!4733999)))

(declare-fun lambda!217946 () Int)

(assert (=> bs!1122315 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217946 lambda!217905))))

(declare-fun bs!1122316 () Bool)

(assert (= bs!1122316 (and b!4734475 b!4733537)))

(assert (=> bs!1122316 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896756) (= lambda!217946 lambda!217834))))

(declare-fun bs!1122317 () Bool)

(assert (= bs!1122317 (and b!4734475 b!4733594)))

(assert (=> bs!1122317 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217850))))

(declare-fun bs!1122318 () Bool)

(assert (= bs!1122318 (and b!4734475 b!4734383)))

(assert (=> bs!1122318 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217946 lambda!217930))))

(declare-fun bs!1122319 () Bool)

(assert (= bs!1122319 (and b!4734475 d!1509926)))

(assert (=> bs!1122319 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217871))))

(assert (=> bs!1122318 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897341) (= lambda!217946 lambda!217931))))

(declare-fun bs!1122320 () Bool)

(assert (= bs!1122320 (and b!4734475 d!1510262)))

(assert (=> bs!1122320 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896855) (= lambda!217946 lambda!217945))))

(declare-fun bs!1122321 () Bool)

(assert (= bs!1122321 (and b!4734475 b!4733550)))

(assert (=> bs!1122321 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896793) (= lambda!217946 lambda!217843))))

(declare-fun bs!1122322 () Bool)

(assert (= bs!1122322 (and b!4734475 b!4733596)))

(assert (=> bs!1122322 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217849))))

(declare-fun bs!1122323 () Bool)

(assert (= bs!1122323 (and b!4734475 d!1509730)))

(assert (=> bs!1122323 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896702) (= lambda!217946 lambda!217822))))

(declare-fun bs!1122324 () Bool)

(assert (= bs!1122324 (and b!4734475 d!1510252)))

(assert (=> bs!1122324 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897337) (= lambda!217946 lambda!217940))))

(declare-fun bs!1122325 () Bool)

(assert (= bs!1122325 (and b!4734475 b!4734263)))

(assert (=> bs!1122325 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897244) (= lambda!217946 lambda!217922))))

(declare-fun bs!1122326 () Bool)

(assert (= bs!1122326 (and b!4734475 d!1509876)))

(assert (=> bs!1122326 (not (= lambda!217946 lambda!217862))))

(declare-fun bs!1122327 () Bool)

(assert (= bs!1122327 (and b!4734475 b!4733900)))

(assert (=> bs!1122327 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217946 lambda!217877))))

(declare-fun bs!1122328 () Bool)

(assert (= bs!1122328 (and b!4734475 d!1509984)))

(assert (=> bs!1122328 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896826) (= lambda!217946 lambda!217876))))

(assert (=> bs!1122316 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217833))))

(declare-fun bs!1122329 () Bool)

(assert (= bs!1122329 (and b!4734475 b!4734265)))

(assert (=> bs!1122329 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217946 lambda!217920))))

(declare-fun bs!1122330 () Bool)

(assert (= bs!1122330 (and b!4734475 d!1509818)))

(assert (=> bs!1122330 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896752) (= lambda!217946 lambda!217839))))

(declare-fun bs!1122331 () Bool)

(assert (= bs!1122331 (and b!4734475 d!1510190)))

(assert (=> bs!1122331 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897240) (= lambda!217946 lambda!217923))))

(declare-fun bs!1122332 () Bool)

(assert (= bs!1122332 (and b!4734475 b!4733502)))

(assert (=> bs!1122332 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217819))))

(declare-fun bs!1122333 () Bool)

(assert (= bs!1122333 (and b!4734475 b!4733500)))

(assert (=> bs!1122333 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217820))))

(declare-fun bs!1122334 () Bool)

(assert (= bs!1122334 (and b!4734475 d!1509820)))

(assert (=> bs!1122334 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896789) (= lambda!217946 lambda!217844))))

(assert (=> bs!1122317 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896855) (= lambda!217946 lambda!217851))))

(declare-fun bs!1122335 () Bool)

(assert (= bs!1122335 (and b!4734475 d!1509826)))

(assert (=> bs!1122335 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896822) (= lambda!217946 lambda!217848))))

(declare-fun bs!1122336 () Bool)

(assert (= bs!1122336 (and b!4734475 b!4734001)))

(assert (=> bs!1122336 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217946 lambda!217904))))

(declare-fun bs!1122337 () Bool)

(assert (= bs!1122337 (and b!4734475 b!4734302)))

(assert (=> bs!1122337 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217946 lambda!217924))))

(declare-fun bs!1122339 () Bool)

(assert (= bs!1122339 (and b!4734475 d!1509834)))

(assert (=> bs!1122339 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896851) (= lambda!217946 lambda!217852))))

(declare-fun bs!1122340 () Bool)

(assert (= bs!1122340 (and b!4734475 b!4733898)))

(assert (=> bs!1122340 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897028) (= lambda!217946 lambda!217882))))

(assert (=> bs!1122315 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897094) (= lambda!217946 lambda!217906))))

(declare-fun bs!1122343 () Bool)

(assert (= bs!1122343 (and b!4734475 b!4733561)))

(assert (=> bs!1122343 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896826) (= lambda!217946 lambda!217847))))

(declare-fun bs!1122344 () Bool)

(assert (= bs!1122344 (and b!4734475 d!1510022)))

(assert (=> bs!1122344 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897090) (= lambda!217946 lambda!217907))))

(declare-fun bs!1122346 () Bool)

(assert (= bs!1122346 (and b!4734475 b!4733563)))

(assert (=> bs!1122346 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217845))))

(declare-fun bs!1122347 () Bool)

(assert (= bs!1122347 (and b!4734475 b!4733539)))

(assert (=> bs!1122347 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217830))))

(assert (=> bs!1122340 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217946 lambda!217880))))

(assert (=> bs!1122325 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217946 lambda!217921))))

(assert (=> bs!1122321 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217841))))

(declare-fun bs!1122350 () Bool)

(assert (= bs!1122350 (and b!4734475 b!4734385)))

(assert (=> bs!1122350 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217946 lambda!217929))))

(assert (=> bs!1122333 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896706) (= lambda!217946 lambda!217821))))

(declare-fun bs!1122351 () Bool)

(assert (= bs!1122351 (and b!4734475 d!1509864)))

(assert (=> bs!1122351 (not (= lambda!217946 lambda!217860))))

(declare-fun bs!1122352 () Bool)

(assert (= bs!1122352 (and b!4734475 b!4734300)))

(assert (=> bs!1122352 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897285) (= lambda!217946 lambda!217926))))

(declare-fun bs!1122353 () Bool)

(assert (= bs!1122353 (and b!4734475 d!1510164)))

(assert (=> bs!1122353 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896793) (= lambda!217946 lambda!217918))))

(declare-fun bs!1122354 () Bool)

(assert (= bs!1122354 (and b!4734475 b!4733552)))

(assert (=> bs!1122354 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217840))))

(assert (=> bs!1122352 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217946 lambda!217925))))

(assert (=> bs!1122343 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217946 lambda!217846))))

(declare-fun bs!1122355 () Bool)

(assert (= bs!1122355 (and b!4734475 d!1509992)))

(assert (=> bs!1122355 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897024) (= lambda!217946 lambda!217883))))

(declare-fun bs!1122356 () Bool)

(assert (= bs!1122356 (and b!4734475 d!1510208)))

(assert (=> bs!1122356 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897281) (= lambda!217946 lambda!217927))))

(assert (=> b!4734475 true))

(declare-fun bs!1122357 () Bool)

(declare-fun b!4734473 () Bool)

(assert (= bs!1122357 (and b!4734473 b!4733999)))

(declare-fun lambda!217949 () Int)

(assert (=> bs!1122357 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217949 lambda!217905))))

(declare-fun bs!1122358 () Bool)

(assert (= bs!1122358 (and b!4734473 b!4733537)))

(assert (=> bs!1122358 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896756) (= lambda!217949 lambda!217834))))

(declare-fun bs!1122359 () Bool)

(assert (= bs!1122359 (and b!4734473 b!4733594)))

(assert (=> bs!1122359 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217850))))

(declare-fun bs!1122360 () Bool)

(assert (= bs!1122360 (and b!4734473 b!4734383)))

(assert (=> bs!1122360 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217949 lambda!217930))))

(declare-fun bs!1122361 () Bool)

(assert (= bs!1122361 (and b!4734473 d!1509926)))

(assert (=> bs!1122361 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217871))))

(assert (=> bs!1122360 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897341) (= lambda!217949 lambda!217931))))

(declare-fun bs!1122362 () Bool)

(assert (= bs!1122362 (and b!4734473 d!1510262)))

(assert (=> bs!1122362 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896855) (= lambda!217949 lambda!217945))))

(declare-fun bs!1122363 () Bool)

(assert (= bs!1122363 (and b!4734473 b!4733550)))

(assert (=> bs!1122363 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896793) (= lambda!217949 lambda!217843))))

(declare-fun bs!1122364 () Bool)

(assert (= bs!1122364 (and b!4734473 b!4733596)))

(assert (=> bs!1122364 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217849))))

(declare-fun bs!1122365 () Bool)

(assert (= bs!1122365 (and b!4734473 d!1509730)))

(assert (=> bs!1122365 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896702) (= lambda!217949 lambda!217822))))

(declare-fun bs!1122366 () Bool)

(assert (= bs!1122366 (and b!4734473 d!1510252)))

(assert (=> bs!1122366 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897337) (= lambda!217949 lambda!217940))))

(declare-fun bs!1122367 () Bool)

(assert (= bs!1122367 (and b!4734473 b!4734263)))

(assert (=> bs!1122367 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897244) (= lambda!217949 lambda!217922))))

(declare-fun bs!1122368 () Bool)

(assert (= bs!1122368 (and b!4734473 d!1509876)))

(assert (=> bs!1122368 (not (= lambda!217949 lambda!217862))))

(declare-fun bs!1122369 () Bool)

(assert (= bs!1122369 (and b!4734473 b!4733900)))

(assert (=> bs!1122369 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217949 lambda!217877))))

(declare-fun bs!1122370 () Bool)

(assert (= bs!1122370 (and b!4734473 d!1509984)))

(assert (=> bs!1122370 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896826) (= lambda!217949 lambda!217876))))

(assert (=> bs!1122358 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217833))))

(declare-fun bs!1122371 () Bool)

(assert (= bs!1122371 (and b!4734473 b!4734265)))

(assert (=> bs!1122371 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217949 lambda!217920))))

(declare-fun bs!1122372 () Bool)

(assert (= bs!1122372 (and b!4734473 d!1509818)))

(assert (=> bs!1122372 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896752) (= lambda!217949 lambda!217839))))

(declare-fun bs!1122373 () Bool)

(assert (= bs!1122373 (and b!4734473 d!1510190)))

(assert (=> bs!1122373 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897240) (= lambda!217949 lambda!217923))))

(declare-fun bs!1122374 () Bool)

(assert (= bs!1122374 (and b!4734473 b!4733502)))

(assert (=> bs!1122374 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217819))))

(declare-fun bs!1122375 () Bool)

(assert (= bs!1122375 (and b!4734473 b!4733500)))

(assert (=> bs!1122375 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217820))))

(declare-fun bs!1122376 () Bool)

(assert (= bs!1122376 (and b!4734473 d!1509820)))

(assert (=> bs!1122376 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896789) (= lambda!217949 lambda!217844))))

(assert (=> bs!1122359 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896855) (= lambda!217949 lambda!217851))))

(declare-fun bs!1122377 () Bool)

(assert (= bs!1122377 (and b!4734473 d!1509826)))

(assert (=> bs!1122377 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896822) (= lambda!217949 lambda!217848))))

(declare-fun bs!1122378 () Bool)

(assert (= bs!1122378 (and b!4734473 b!4734001)))

(assert (=> bs!1122378 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217949 lambda!217904))))

(declare-fun bs!1122379 () Bool)

(assert (= bs!1122379 (and b!4734473 b!4734302)))

(assert (=> bs!1122379 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217949 lambda!217924))))

(declare-fun bs!1122380 () Bool)

(assert (= bs!1122380 (and b!4734473 d!1509834)))

(assert (=> bs!1122380 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896851) (= lambda!217949 lambda!217852))))

(declare-fun bs!1122381 () Bool)

(assert (= bs!1122381 (and b!4734473 b!4733898)))

(assert (=> bs!1122381 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897028) (= lambda!217949 lambda!217882))))

(assert (=> bs!1122357 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897094) (= lambda!217949 lambda!217906))))

(declare-fun bs!1122383 () Bool)

(assert (= bs!1122383 (and b!4734473 b!4733561)))

(assert (=> bs!1122383 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896826) (= lambda!217949 lambda!217847))))

(declare-fun bs!1122384 () Bool)

(assert (= bs!1122384 (and b!4734473 d!1510022)))

(assert (=> bs!1122384 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897090) (= lambda!217949 lambda!217907))))

(declare-fun bs!1122386 () Bool)

(assert (= bs!1122386 (and b!4734473 b!4733563)))

(assert (=> bs!1122386 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217845))))

(declare-fun bs!1122388 () Bool)

(assert (= bs!1122388 (and b!4734473 b!4733539)))

(assert (=> bs!1122388 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217830))))

(assert (=> bs!1122381 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217949 lambda!217880))))

(assert (=> bs!1122367 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217949 lambda!217921))))

(assert (=> bs!1122363 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217841))))

(declare-fun bs!1122391 () Bool)

(assert (= bs!1122391 (and b!4734473 b!4734385)))

(assert (=> bs!1122391 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217949 lambda!217929))))

(assert (=> bs!1122375 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896706) (= lambda!217949 lambda!217821))))

(declare-fun bs!1122394 () Bool)

(assert (= bs!1122394 (and b!4734473 d!1509864)))

(assert (=> bs!1122394 (not (= lambda!217949 lambda!217860))))

(declare-fun bs!1122395 () Bool)

(assert (= bs!1122395 (and b!4734473 b!4734300)))

(assert (=> bs!1122395 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897285) (= lambda!217949 lambda!217926))))

(declare-fun bs!1122396 () Bool)

(assert (= bs!1122396 (and b!4734473 d!1510164)))

(assert (=> bs!1122396 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896793) (= lambda!217949 lambda!217918))))

(declare-fun bs!1122397 () Bool)

(assert (= bs!1122397 (and b!4734473 b!4733552)))

(assert (=> bs!1122397 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217840))))

(assert (=> bs!1122395 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217949 lambda!217925))))

(declare-fun bs!1122399 () Bool)

(assert (= bs!1122399 (and b!4734473 b!4734475)))

(assert (=> bs!1122399 (= lambda!217949 lambda!217946)))

(assert (=> bs!1122383 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1896343) (= lambda!217949 lambda!217846))))

(declare-fun bs!1122401 () Bool)

(assert (= bs!1122401 (and b!4734473 d!1509992)))

(assert (=> bs!1122401 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897024) (= lambda!217949 lambda!217883))))

(declare-fun bs!1122404 () Bool)

(assert (= bs!1122404 (and b!4734473 d!1510208)))

(assert (=> bs!1122404 (= (= (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897281) (= lambda!217949 lambda!217927))))

(assert (=> b!4734473 true))

(declare-fun lt!1897425 () ListMap!5341)

(declare-fun lambda!217951 () Int)

(assert (=> bs!1122357 (= (= lt!1897425 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217951 lambda!217905))))

(assert (=> bs!1122358 (= (= lt!1897425 lt!1896756) (= lambda!217951 lambda!217834))))

(assert (=> bs!1122359 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217850))))

(assert (=> bs!1122360 (= (= lt!1897425 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217951 lambda!217930))))

(assert (=> bs!1122361 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217871))))

(assert (=> bs!1122360 (= (= lt!1897425 lt!1897341) (= lambda!217951 lambda!217931))))

(assert (=> bs!1122363 (= (= lt!1897425 lt!1896793) (= lambda!217951 lambda!217843))))

(assert (=> bs!1122364 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217849))))

(assert (=> bs!1122365 (= (= lt!1897425 lt!1896702) (= lambda!217951 lambda!217822))))

(assert (=> bs!1122366 (= (= lt!1897425 lt!1897337) (= lambda!217951 lambda!217940))))

(assert (=> bs!1122367 (= (= lt!1897425 lt!1897244) (= lambda!217951 lambda!217922))))

(assert (=> bs!1122368 (not (= lambda!217951 lambda!217862))))

(assert (=> bs!1122369 (= (= lt!1897425 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217951 lambda!217877))))

(assert (=> bs!1122370 (= (= lt!1897425 lt!1896826) (= lambda!217951 lambda!217876))))

(assert (=> bs!1122358 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217833))))

(assert (=> bs!1122371 (= (= lt!1897425 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217951 lambda!217920))))

(assert (=> bs!1122372 (= (= lt!1897425 lt!1896752) (= lambda!217951 lambda!217839))))

(assert (=> bs!1122373 (= (= lt!1897425 lt!1897240) (= lambda!217951 lambda!217923))))

(assert (=> bs!1122374 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217819))))

(assert (=> bs!1122375 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217820))))

(assert (=> bs!1122376 (= (= lt!1897425 lt!1896789) (= lambda!217951 lambda!217844))))

(assert (=> bs!1122359 (= (= lt!1897425 lt!1896855) (= lambda!217951 lambda!217851))))

(assert (=> bs!1122377 (= (= lt!1897425 lt!1896822) (= lambda!217951 lambda!217848))))

(assert (=> bs!1122378 (= (= lt!1897425 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217951 lambda!217904))))

(assert (=> bs!1122379 (= (= lt!1897425 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217951 lambda!217924))))

(assert (=> bs!1122380 (= (= lt!1897425 lt!1896851) (= lambda!217951 lambda!217852))))

(assert (=> bs!1122381 (= (= lt!1897425 lt!1897028) (= lambda!217951 lambda!217882))))

(assert (=> bs!1122357 (= (= lt!1897425 lt!1897094) (= lambda!217951 lambda!217906))))

(assert (=> bs!1122383 (= (= lt!1897425 lt!1896826) (= lambda!217951 lambda!217847))))

(assert (=> bs!1122384 (= (= lt!1897425 lt!1897090) (= lambda!217951 lambda!217907))))

(assert (=> bs!1122386 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217845))))

(assert (=> bs!1122388 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217830))))

(assert (=> bs!1122381 (= (= lt!1897425 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217951 lambda!217880))))

(assert (=> bs!1122367 (= (= lt!1897425 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217951 lambda!217921))))

(assert (=> bs!1122363 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217841))))

(assert (=> b!4734473 (= (= lt!1897425 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217951 lambda!217949))))

(assert (=> bs!1122362 (= (= lt!1897425 lt!1896855) (= lambda!217951 lambda!217945))))

(assert (=> bs!1122391 (= (= lt!1897425 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217951 lambda!217929))))

(assert (=> bs!1122375 (= (= lt!1897425 lt!1896706) (= lambda!217951 lambda!217821))))

(assert (=> bs!1122394 (not (= lambda!217951 lambda!217860))))

(assert (=> bs!1122395 (= (= lt!1897425 lt!1897285) (= lambda!217951 lambda!217926))))

(assert (=> bs!1122396 (= (= lt!1897425 lt!1896793) (= lambda!217951 lambda!217918))))

(assert (=> bs!1122397 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217840))))

(assert (=> bs!1122395 (= (= lt!1897425 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217951 lambda!217925))))

(assert (=> bs!1122399 (= (= lt!1897425 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217951 lambda!217946))))

(assert (=> bs!1122383 (= (= lt!1897425 lt!1896343) (= lambda!217951 lambda!217846))))

(assert (=> bs!1122401 (= (= lt!1897425 lt!1897024) (= lambda!217951 lambda!217883))))

(assert (=> bs!1122404 (= (= lt!1897425 lt!1897281) (= lambda!217951 lambda!217927))))

(assert (=> b!4734473 true))

(declare-fun bs!1122439 () Bool)

(declare-fun d!1510280 () Bool)

(assert (= bs!1122439 (and d!1510280 b!4733999)))

(declare-fun lt!1897421 () ListMap!5341)

(declare-fun lambda!217954 () Int)

(assert (=> bs!1122439 (= (= lt!1897421 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217954 lambda!217905))))

(declare-fun bs!1122440 () Bool)

(assert (= bs!1122440 (and d!1510280 b!4733537)))

(assert (=> bs!1122440 (= (= lt!1897421 lt!1896756) (= lambda!217954 lambda!217834))))

(declare-fun bs!1122441 () Bool)

(assert (= bs!1122441 (and d!1510280 b!4733594)))

(assert (=> bs!1122441 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217850))))

(declare-fun bs!1122442 () Bool)

(assert (= bs!1122442 (and d!1510280 b!4734383)))

(assert (=> bs!1122442 (= (= lt!1897421 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217954 lambda!217930))))

(declare-fun bs!1122443 () Bool)

(assert (= bs!1122443 (and d!1510280 d!1509926)))

(assert (=> bs!1122443 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217871))))

(assert (=> bs!1122442 (= (= lt!1897421 lt!1897341) (= lambda!217954 lambda!217931))))

(declare-fun bs!1122444 () Bool)

(assert (= bs!1122444 (and d!1510280 b!4733550)))

(assert (=> bs!1122444 (= (= lt!1897421 lt!1896793) (= lambda!217954 lambda!217843))))

(declare-fun bs!1122445 () Bool)

(assert (= bs!1122445 (and d!1510280 b!4733596)))

(assert (=> bs!1122445 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217849))))

(declare-fun bs!1122446 () Bool)

(assert (= bs!1122446 (and d!1510280 b!4734473)))

(assert (=> bs!1122446 (= (= lt!1897421 lt!1897425) (= lambda!217954 lambda!217951))))

(declare-fun bs!1122447 () Bool)

(assert (= bs!1122447 (and d!1510280 d!1509730)))

(assert (=> bs!1122447 (= (= lt!1897421 lt!1896702) (= lambda!217954 lambda!217822))))

(declare-fun bs!1122448 () Bool)

(assert (= bs!1122448 (and d!1510280 d!1510252)))

(assert (=> bs!1122448 (= (= lt!1897421 lt!1897337) (= lambda!217954 lambda!217940))))

(declare-fun bs!1122449 () Bool)

(assert (= bs!1122449 (and d!1510280 b!4734263)))

(assert (=> bs!1122449 (= (= lt!1897421 lt!1897244) (= lambda!217954 lambda!217922))))

(declare-fun bs!1122450 () Bool)

(assert (= bs!1122450 (and d!1510280 d!1509876)))

(assert (=> bs!1122450 (not (= lambda!217954 lambda!217862))))

(declare-fun bs!1122451 () Bool)

(assert (= bs!1122451 (and d!1510280 b!4733900)))

(assert (=> bs!1122451 (= (= lt!1897421 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217954 lambda!217877))))

(declare-fun bs!1122452 () Bool)

(assert (= bs!1122452 (and d!1510280 d!1509984)))

(assert (=> bs!1122452 (= (= lt!1897421 lt!1896826) (= lambda!217954 lambda!217876))))

(assert (=> bs!1122440 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217833))))

(declare-fun bs!1122453 () Bool)

(assert (= bs!1122453 (and d!1510280 b!4734265)))

(assert (=> bs!1122453 (= (= lt!1897421 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217954 lambda!217920))))

(declare-fun bs!1122454 () Bool)

(assert (= bs!1122454 (and d!1510280 d!1509818)))

(assert (=> bs!1122454 (= (= lt!1897421 lt!1896752) (= lambda!217954 lambda!217839))))

(declare-fun bs!1122455 () Bool)

(assert (= bs!1122455 (and d!1510280 d!1510190)))

(assert (=> bs!1122455 (= (= lt!1897421 lt!1897240) (= lambda!217954 lambda!217923))))

(declare-fun bs!1122456 () Bool)

(assert (= bs!1122456 (and d!1510280 b!4733502)))

(assert (=> bs!1122456 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217819))))

(declare-fun bs!1122457 () Bool)

(assert (= bs!1122457 (and d!1510280 b!4733500)))

(assert (=> bs!1122457 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217820))))

(declare-fun bs!1122458 () Bool)

(assert (= bs!1122458 (and d!1510280 d!1509820)))

(assert (=> bs!1122458 (= (= lt!1897421 lt!1896789) (= lambda!217954 lambda!217844))))

(assert (=> bs!1122441 (= (= lt!1897421 lt!1896855) (= lambda!217954 lambda!217851))))

(declare-fun bs!1122459 () Bool)

(assert (= bs!1122459 (and d!1510280 d!1509826)))

(assert (=> bs!1122459 (= (= lt!1897421 lt!1896822) (= lambda!217954 lambda!217848))))

(declare-fun bs!1122460 () Bool)

(assert (= bs!1122460 (and d!1510280 b!4734001)))

(assert (=> bs!1122460 (= (= lt!1897421 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217954 lambda!217904))))

(declare-fun bs!1122461 () Bool)

(assert (= bs!1122461 (and d!1510280 b!4734302)))

(assert (=> bs!1122461 (= (= lt!1897421 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217954 lambda!217924))))

(declare-fun bs!1122462 () Bool)

(assert (= bs!1122462 (and d!1510280 d!1509834)))

(assert (=> bs!1122462 (= (= lt!1897421 lt!1896851) (= lambda!217954 lambda!217852))))

(declare-fun bs!1122463 () Bool)

(assert (= bs!1122463 (and d!1510280 b!4733898)))

(assert (=> bs!1122463 (= (= lt!1897421 lt!1897028) (= lambda!217954 lambda!217882))))

(assert (=> bs!1122439 (= (= lt!1897421 lt!1897094) (= lambda!217954 lambda!217906))))

(declare-fun bs!1122464 () Bool)

(assert (= bs!1122464 (and d!1510280 b!4733561)))

(assert (=> bs!1122464 (= (= lt!1897421 lt!1896826) (= lambda!217954 lambda!217847))))

(declare-fun bs!1122465 () Bool)

(assert (= bs!1122465 (and d!1510280 d!1510022)))

(assert (=> bs!1122465 (= (= lt!1897421 lt!1897090) (= lambda!217954 lambda!217907))))

(declare-fun bs!1122466 () Bool)

(assert (= bs!1122466 (and d!1510280 b!4733563)))

(assert (=> bs!1122466 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217845))))

(declare-fun bs!1122467 () Bool)

(assert (= bs!1122467 (and d!1510280 b!4733539)))

(assert (=> bs!1122467 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217830))))

(assert (=> bs!1122463 (= (= lt!1897421 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217954 lambda!217880))))

(assert (=> bs!1122449 (= (= lt!1897421 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217954 lambda!217921))))

(assert (=> bs!1122444 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217841))))

(assert (=> bs!1122446 (= (= lt!1897421 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217954 lambda!217949))))

(declare-fun bs!1122468 () Bool)

(assert (= bs!1122468 (and d!1510280 d!1510262)))

(assert (=> bs!1122468 (= (= lt!1897421 lt!1896855) (= lambda!217954 lambda!217945))))

(declare-fun bs!1122470 () Bool)

(assert (= bs!1122470 (and d!1510280 b!4734385)))

(assert (=> bs!1122470 (= (= lt!1897421 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217954 lambda!217929))))

(assert (=> bs!1122457 (= (= lt!1897421 lt!1896706) (= lambda!217954 lambda!217821))))

(declare-fun bs!1122474 () Bool)

(assert (= bs!1122474 (and d!1510280 d!1509864)))

(assert (=> bs!1122474 (not (= lambda!217954 lambda!217860))))

(declare-fun bs!1122476 () Bool)

(assert (= bs!1122476 (and d!1510280 b!4734300)))

(assert (=> bs!1122476 (= (= lt!1897421 lt!1897285) (= lambda!217954 lambda!217926))))

(declare-fun bs!1122477 () Bool)

(assert (= bs!1122477 (and d!1510280 d!1510164)))

(assert (=> bs!1122477 (= (= lt!1897421 lt!1896793) (= lambda!217954 lambda!217918))))

(declare-fun bs!1122479 () Bool)

(assert (= bs!1122479 (and d!1510280 b!4733552)))

(assert (=> bs!1122479 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217840))))

(assert (=> bs!1122476 (= (= lt!1897421 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217954 lambda!217925))))

(declare-fun bs!1122482 () Bool)

(assert (= bs!1122482 (and d!1510280 b!4734475)))

(assert (=> bs!1122482 (= (= lt!1897421 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217954 lambda!217946))))

(assert (=> bs!1122464 (= (= lt!1897421 lt!1896343) (= lambda!217954 lambda!217846))))

(declare-fun bs!1122485 () Bool)

(assert (= bs!1122485 (and d!1510280 d!1509992)))

(assert (=> bs!1122485 (= (= lt!1897421 lt!1897024) (= lambda!217954 lambda!217883))))

(declare-fun bs!1122487 () Bool)

(assert (= bs!1122487 (and d!1510280 d!1510208)))

(assert (=> bs!1122487 (= (= lt!1897421 lt!1897281) (= lambda!217954 lambda!217927))))

(assert (=> d!1510280 true))

(declare-fun call!331163 () Bool)

(declare-fun bm!331158 () Bool)

(declare-fun c!808605 () Bool)

(assert (=> bm!331158 (= call!331163 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (ite c!808605 lambda!217946 lambda!217951)))))

(declare-fun b!4734472 () Bool)

(declare-fun e!2953090 () Bool)

(assert (=> b!4734472 (= e!2953090 call!331163)))

(declare-fun bm!331159 () Bool)

(declare-fun call!331165 () Unit!131735)

(assert (=> bm!331159 (= call!331165 (lemmaContainsAllItsOwnKeys!820 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))))))

(declare-fun bm!331160 () Bool)

(declare-fun call!331164 () Bool)

(assert (=> bm!331160 (= call!331164 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (ite c!808605 lambda!217946 lambda!217951)))))

(declare-fun e!2953088 () Bool)

(assert (=> d!1510280 e!2953088))

(declare-fun res!2004818 () Bool)

(assert (=> d!1510280 (=> (not res!2004818) (not e!2953088))))

(assert (=> d!1510280 (= res!2004818 (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217954))))

(declare-fun e!2953089 () ListMap!5341)

(assert (=> d!1510280 (= lt!1897421 e!2953089)))

(assert (=> d!1510280 (= c!808605 ((_ is Nil!52913) (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> d!1510280 (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023))))))

(assert (=> d!1510280 (= (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (toList!5977 lm!2023))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) lt!1897421)))

(assert (=> b!4734473 (= e!2953089 lt!1897425)))

(declare-fun lt!1897416 () ListMap!5341)

(assert (=> b!4734473 (= lt!1897416 (+!2292 (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> b!4734473 (= lt!1897425 (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) (+!2292 (extractMap!2070 (t!360318 (toList!5977 lm!2023))) (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897417 () Unit!131735)

(assert (=> b!4734473 (= lt!1897417 call!331165)))

(assert (=> b!4734473 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) lambda!217949)))

(declare-fun lt!1897414 () Unit!131735)

(assert (=> b!4734473 (= lt!1897414 lt!1897417)))

(assert (=> b!4734473 (forall!11653 (toList!5978 lt!1897416) lambda!217951)))

(declare-fun lt!1897415 () Unit!131735)

(declare-fun Unit!132031 () Unit!131735)

(assert (=> b!4734473 (= lt!1897415 Unit!132031)))

(assert (=> b!4734473 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217951)))

(declare-fun lt!1897411 () Unit!131735)

(declare-fun Unit!132032 () Unit!131735)

(assert (=> b!4734473 (= lt!1897411 Unit!132032)))

(declare-fun lt!1897426 () Unit!131735)

(declare-fun Unit!132033 () Unit!131735)

(assert (=> b!4734473 (= lt!1897426 Unit!132033)))

(declare-fun lt!1897408 () Unit!131735)

(assert (=> b!4734473 (= lt!1897408 (forallContained!3693 (toList!5978 lt!1897416) lambda!217951 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> b!4734473 (contains!16298 lt!1897416 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun lt!1897420 () Unit!131735)

(declare-fun Unit!132034 () Unit!131735)

(assert (=> b!4734473 (= lt!1897420 Unit!132034)))

(assert (=> b!4734473 (contains!16298 lt!1897425 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun lt!1897422 () Unit!131735)

(declare-fun Unit!132035 () Unit!131735)

(assert (=> b!4734473 (= lt!1897422 Unit!132035)))

(assert (=> b!4734473 (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217951)))

(declare-fun lt!1897424 () Unit!131735)

(declare-fun Unit!132036 () Unit!131735)

(assert (=> b!4734473 (= lt!1897424 Unit!132036)))

(assert (=> b!4734473 (forall!11653 (toList!5978 lt!1897416) lambda!217951)))

(declare-fun lt!1897412 () Unit!131735)

(declare-fun Unit!132037 () Unit!131735)

(assert (=> b!4734473 (= lt!1897412 Unit!132037)))

(declare-fun lt!1897407 () Unit!131735)

(declare-fun Unit!132038 () Unit!131735)

(assert (=> b!4734473 (= lt!1897407 Unit!132038)))

(declare-fun lt!1897409 () Unit!131735)

(assert (=> b!4734473 (= lt!1897409 (addForallContainsKeyThenBeforeAdding!819 (extractMap!2070 (t!360318 (toList!5977 lm!2023))) lt!1897425 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> b!4734473 call!331164))

(declare-fun lt!1897418 () Unit!131735)

(assert (=> b!4734473 (= lt!1897418 lt!1897409)))

(assert (=> b!4734473 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) lambda!217951)))

(declare-fun lt!1897406 () Unit!131735)

(declare-fun Unit!132039 () Unit!131735)

(assert (=> b!4734473 (= lt!1897406 Unit!132039)))

(declare-fun res!2004820 () Bool)

(assert (=> b!4734473 (= res!2004820 (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217951))))

(assert (=> b!4734473 (=> (not res!2004820) (not e!2953090))))

(assert (=> b!4734473 e!2953090))

(declare-fun lt!1897410 () Unit!131735)

(declare-fun Unit!132040 () Unit!131735)

(assert (=> b!4734473 (= lt!1897410 Unit!132040)))

(declare-fun b!4734474 () Bool)

(declare-fun res!2004819 () Bool)

(assert (=> b!4734474 (=> (not res!2004819) (not e!2953088))))

(assert (=> b!4734474 (= res!2004819 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) lambda!217954))))

(assert (=> b!4734475 (= e!2953089 (extractMap!2070 (t!360318 (toList!5977 lm!2023))))))

(declare-fun lt!1897419 () Unit!131735)

(assert (=> b!4734475 (= lt!1897419 call!331165)))

(assert (=> b!4734475 call!331164))

(declare-fun lt!1897423 () Unit!131735)

(assert (=> b!4734475 (= lt!1897423 lt!1897419)))

(assert (=> b!4734475 call!331163))

(declare-fun lt!1897413 () Unit!131735)

(declare-fun Unit!132041 () Unit!131735)

(assert (=> b!4734475 (= lt!1897413 Unit!132041)))

(declare-fun b!4734476 () Bool)

(assert (=> b!4734476 (= e!2953088 (invariantList!1535 (toList!5978 lt!1897421)))))

(assert (= (and d!1510280 c!808605) b!4734475))

(assert (= (and d!1510280 (not c!808605)) b!4734473))

(assert (= (and b!4734473 res!2004820) b!4734472))

(assert (= (or b!4734475 b!4734473) bm!331159))

(assert (= (or b!4734475 b!4734473) bm!331160))

(assert (= (or b!4734475 b!4734472) bm!331158))

(assert (= (and d!1510280 res!2004818) b!4734474))

(assert (= (and b!4734474 res!2004819) b!4734476))

(declare-fun m!5678995 () Bool)

(assert (=> bm!331158 m!5678995))

(declare-fun m!5678997 () Bool)

(assert (=> d!1510280 m!5678997))

(assert (=> d!1510280 m!5677109))

(assert (=> bm!331159 m!5676553))

(declare-fun m!5678999 () Bool)

(assert (=> bm!331159 m!5678999))

(declare-fun m!5679001 () Bool)

(assert (=> b!4734473 m!5679001))

(declare-fun m!5679003 () Bool)

(assert (=> b!4734473 m!5679003))

(declare-fun m!5679005 () Bool)

(assert (=> b!4734473 m!5679005))

(declare-fun m!5679007 () Bool)

(assert (=> b!4734473 m!5679007))

(declare-fun m!5679009 () Bool)

(assert (=> b!4734473 m!5679009))

(declare-fun m!5679011 () Bool)

(assert (=> b!4734473 m!5679011))

(declare-fun m!5679013 () Bool)

(assert (=> b!4734473 m!5679013))

(assert (=> b!4734473 m!5679001))

(assert (=> b!4734473 m!5676553))

(declare-fun m!5679015 () Bool)

(assert (=> b!4734473 m!5679015))

(declare-fun m!5679017 () Bool)

(assert (=> b!4734473 m!5679017))

(assert (=> b!4734473 m!5679007))

(assert (=> b!4734473 m!5676553))

(declare-fun m!5679019 () Bool)

(assert (=> b!4734473 m!5679019))

(assert (=> b!4734473 m!5679015))

(declare-fun m!5679021 () Bool)

(assert (=> b!4734473 m!5679021))

(declare-fun m!5679023 () Bool)

(assert (=> b!4734474 m!5679023))

(assert (=> bm!331160 m!5678995))

(declare-fun m!5679025 () Bool)

(assert (=> b!4734476 m!5679025))

(assert (=> b!4733665 d!1510280))

(assert (=> b!4733665 d!1509792))

(declare-fun d!1510292 () Bool)

(declare-fun res!2004831 () Bool)

(declare-fun e!2953102 () Bool)

(assert (=> d!1510292 (=> res!2004831 e!2953102)))

(assert (=> d!1510292 (= res!2004831 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510292 (= (forall!11653 (toList!5978 lt!1896343) (ite c!808373 lambda!217819 lambda!217821)) e!2953102)))

(declare-fun b!4734495 () Bool)

(declare-fun e!2953103 () Bool)

(assert (=> b!4734495 (= e!2953102 e!2953103)))

(declare-fun res!2004832 () Bool)

(assert (=> b!4734495 (=> (not res!2004832) (not e!2953103))))

(assert (=> b!4734495 (= res!2004832 (dynLambda!21858 (ite c!808373 lambda!217819 lambda!217821) (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734496 () Bool)

(assert (=> b!4734496 (= e!2953103 (forall!11653 (t!360317 (toList!5978 lt!1896343)) (ite c!808373 lambda!217819 lambda!217821)))))

(assert (= (and d!1510292 (not res!2004831)) b!4734495))

(assert (= (and b!4734495 res!2004832) b!4734496))

(declare-fun b_lambda!180751 () Bool)

(assert (=> (not b_lambda!180751) (not b!4734495)))

(declare-fun m!5679027 () Bool)

(assert (=> b!4734495 m!5679027))

(declare-fun m!5679029 () Bool)

(assert (=> b!4734496 m!5679029))

(assert (=> bm!331066 d!1510292))

(declare-fun d!1510294 () Bool)

(declare-fun res!2004833 () Bool)

(declare-fun e!2953104 () Bool)

(assert (=> d!1510294 (=> res!2004833 e!2953104)))

(assert (=> d!1510294 (= res!2004833 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510294 (= (forall!11653 (toList!5978 lt!1896343) lambda!217839) e!2953104)))

(declare-fun b!4734497 () Bool)

(declare-fun e!2953105 () Bool)

(assert (=> b!4734497 (= e!2953104 e!2953105)))

(declare-fun res!2004834 () Bool)

(assert (=> b!4734497 (=> (not res!2004834) (not e!2953105))))

(assert (=> b!4734497 (= res!2004834 (dynLambda!21858 lambda!217839 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734498 () Bool)

(assert (=> b!4734498 (= e!2953105 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217839))))

(assert (= (and d!1510294 (not res!2004833)) b!4734497))

(assert (= (and b!4734497 res!2004834) b!4734498))

(declare-fun b_lambda!180753 () Bool)

(assert (=> (not b_lambda!180753) (not b!4734497)))

(declare-fun m!5679031 () Bool)

(assert (=> b!4734497 m!5679031))

(declare-fun m!5679033 () Bool)

(assert (=> b!4734498 m!5679033))

(assert (=> b!4733538 d!1510294))

(declare-fun bs!1122501 () Bool)

(declare-fun b!4734502 () Bool)

(assert (= bs!1122501 (and b!4734502 b!4733999)))

(declare-fun lambda!217956 () Int)

(assert (=> bs!1122501 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217956 lambda!217905))))

(declare-fun bs!1122502 () Bool)

(assert (= bs!1122502 (and b!4734502 b!4733537)))

(assert (=> bs!1122502 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217956 lambda!217834))))

(declare-fun bs!1122503 () Bool)

(assert (= bs!1122503 (and b!4734502 b!4733594)))

(assert (=> bs!1122503 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217850))))

(declare-fun bs!1122504 () Bool)

(assert (= bs!1122504 (and b!4734502 b!4734383)))

(assert (=> bs!1122504 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217956 lambda!217930))))

(declare-fun bs!1122505 () Bool)

(assert (= bs!1122505 (and b!4734502 d!1509926)))

(assert (=> bs!1122505 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217871))))

(assert (=> bs!1122504 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897341) (= lambda!217956 lambda!217931))))

(declare-fun bs!1122506 () Bool)

(assert (= bs!1122506 (and b!4734502 b!4733550)))

(assert (=> bs!1122506 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217956 lambda!217843))))

(declare-fun bs!1122507 () Bool)

(assert (= bs!1122507 (and b!4734502 b!4733596)))

(assert (=> bs!1122507 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217849))))

(declare-fun bs!1122508 () Bool)

(assert (= bs!1122508 (and b!4734502 b!4734473)))

(assert (=> bs!1122508 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897425) (= lambda!217956 lambda!217951))))

(declare-fun bs!1122509 () Bool)

(assert (= bs!1122509 (and b!4734502 d!1509730)))

(assert (=> bs!1122509 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896702) (= lambda!217956 lambda!217822))))

(declare-fun bs!1122510 () Bool)

(assert (= bs!1122510 (and b!4734502 d!1510252)))

(assert (=> bs!1122510 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897337) (= lambda!217956 lambda!217940))))

(declare-fun bs!1122511 () Bool)

(assert (= bs!1122511 (and b!4734502 b!4734263)))

(assert (=> bs!1122511 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897244) (= lambda!217956 lambda!217922))))

(declare-fun bs!1122512 () Bool)

(assert (= bs!1122512 (and b!4734502 d!1509876)))

(assert (=> bs!1122512 (not (= lambda!217956 lambda!217862))))

(declare-fun bs!1122513 () Bool)

(assert (= bs!1122513 (and b!4734502 b!4733900)))

(assert (=> bs!1122513 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217956 lambda!217877))))

(declare-fun bs!1122514 () Bool)

(assert (= bs!1122514 (and b!4734502 d!1509984)))

(assert (=> bs!1122514 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217956 lambda!217876))))

(assert (=> bs!1122502 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217833))))

(declare-fun bs!1122515 () Bool)

(assert (= bs!1122515 (and b!4734502 b!4734265)))

(assert (=> bs!1122515 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217956 lambda!217920))))

(declare-fun bs!1122516 () Bool)

(assert (= bs!1122516 (and b!4734502 d!1509818)))

(assert (=> bs!1122516 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896752) (= lambda!217956 lambda!217839))))

(declare-fun bs!1122517 () Bool)

(assert (= bs!1122517 (and b!4734502 d!1510190)))

(assert (=> bs!1122517 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897240) (= lambda!217956 lambda!217923))))

(declare-fun bs!1122519 () Bool)

(assert (= bs!1122519 (and b!4734502 b!4733502)))

(assert (=> bs!1122519 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217819))))

(declare-fun bs!1122520 () Bool)

(assert (= bs!1122520 (and b!4734502 b!4733500)))

(assert (=> bs!1122520 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217820))))

(declare-fun bs!1122521 () Bool)

(assert (= bs!1122521 (and b!4734502 d!1510280)))

(assert (=> bs!1122521 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897421) (= lambda!217956 lambda!217954))))

(declare-fun bs!1122524 () Bool)

(assert (= bs!1122524 (and b!4734502 d!1509820)))

(assert (=> bs!1122524 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896789) (= lambda!217956 lambda!217844))))

(assert (=> bs!1122503 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217956 lambda!217851))))

(declare-fun bs!1122527 () Bool)

(assert (= bs!1122527 (and b!4734502 d!1509826)))

(assert (=> bs!1122527 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896822) (= lambda!217956 lambda!217848))))

(declare-fun bs!1122530 () Bool)

(assert (= bs!1122530 (and b!4734502 b!4734001)))

(assert (=> bs!1122530 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217956 lambda!217904))))

(declare-fun bs!1122532 () Bool)

(assert (= bs!1122532 (and b!4734502 b!4734302)))

(assert (=> bs!1122532 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217956 lambda!217924))))

(declare-fun bs!1122534 () Bool)

(assert (= bs!1122534 (and b!4734502 d!1509834)))

(assert (=> bs!1122534 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896851) (= lambda!217956 lambda!217852))))

(declare-fun bs!1122536 () Bool)

(assert (= bs!1122536 (and b!4734502 b!4733898)))

(assert (=> bs!1122536 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897028) (= lambda!217956 lambda!217882))))

(assert (=> bs!1122501 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897094) (= lambda!217956 lambda!217906))))

(declare-fun bs!1122537 () Bool)

(assert (= bs!1122537 (and b!4734502 b!4733561)))

(assert (=> bs!1122537 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217956 lambda!217847))))

(declare-fun bs!1122538 () Bool)

(assert (= bs!1122538 (and b!4734502 d!1510022)))

(assert (=> bs!1122538 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897090) (= lambda!217956 lambda!217907))))

(declare-fun bs!1122539 () Bool)

(assert (= bs!1122539 (and b!4734502 b!4733563)))

(assert (=> bs!1122539 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217845))))

(declare-fun bs!1122540 () Bool)

(assert (= bs!1122540 (and b!4734502 b!4733539)))

(assert (=> bs!1122540 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217830))))

(assert (=> bs!1122536 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217956 lambda!217880))))

(assert (=> bs!1122511 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217956 lambda!217921))))

(assert (=> bs!1122506 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217841))))

(assert (=> bs!1122508 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217956 lambda!217949))))

(declare-fun bs!1122541 () Bool)

(assert (= bs!1122541 (and b!4734502 d!1510262)))

(assert (=> bs!1122541 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217956 lambda!217945))))

(declare-fun bs!1122543 () Bool)

(assert (= bs!1122543 (and b!4734502 b!4734385)))

(assert (=> bs!1122543 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217956 lambda!217929))))

(assert (=> bs!1122520 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217956 lambda!217821))))

(declare-fun bs!1122544 () Bool)

(assert (= bs!1122544 (and b!4734502 d!1509864)))

(assert (=> bs!1122544 (not (= lambda!217956 lambda!217860))))

(declare-fun bs!1122545 () Bool)

(assert (= bs!1122545 (and b!4734502 b!4734300)))

(assert (=> bs!1122545 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897285) (= lambda!217956 lambda!217926))))

(declare-fun bs!1122546 () Bool)

(assert (= bs!1122546 (and b!4734502 d!1510164)))

(assert (=> bs!1122546 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217956 lambda!217918))))

(declare-fun bs!1122547 () Bool)

(assert (= bs!1122547 (and b!4734502 b!4733552)))

(assert (=> bs!1122547 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217840))))

(assert (=> bs!1122545 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217956 lambda!217925))))

(declare-fun bs!1122548 () Bool)

(assert (= bs!1122548 (and b!4734502 b!4734475)))

(assert (=> bs!1122548 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217956 lambda!217946))))

(assert (=> bs!1122537 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217956 lambda!217846))))

(declare-fun bs!1122549 () Bool)

(assert (= bs!1122549 (and b!4734502 d!1509992)))

(assert (=> bs!1122549 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897024) (= lambda!217956 lambda!217883))))

(declare-fun bs!1122550 () Bool)

(assert (= bs!1122550 (and b!4734502 d!1510208)))

(assert (=> bs!1122550 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897281) (= lambda!217956 lambda!217927))))

(assert (=> b!4734502 true))

(declare-fun bs!1122551 () Bool)

(declare-fun b!4734500 () Bool)

(assert (= bs!1122551 (and b!4734500 b!4733999)))

(declare-fun lambda!217958 () Int)

(assert (=> bs!1122551 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217958 lambda!217905))))

(declare-fun bs!1122552 () Bool)

(assert (= bs!1122552 (and b!4734500 b!4733537)))

(assert (=> bs!1122552 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217958 lambda!217834))))

(declare-fun bs!1122553 () Bool)

(assert (= bs!1122553 (and b!4734500 b!4733594)))

(assert (=> bs!1122553 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217850))))

(declare-fun bs!1122554 () Bool)

(assert (= bs!1122554 (and b!4734500 b!4734383)))

(assert (=> bs!1122554 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217958 lambda!217930))))

(assert (=> bs!1122554 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897341) (= lambda!217958 lambda!217931))))

(declare-fun bs!1122555 () Bool)

(assert (= bs!1122555 (and b!4734500 b!4733550)))

(assert (=> bs!1122555 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217958 lambda!217843))))

(declare-fun bs!1122556 () Bool)

(assert (= bs!1122556 (and b!4734500 b!4733596)))

(assert (=> bs!1122556 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217849))))

(declare-fun bs!1122557 () Bool)

(assert (= bs!1122557 (and b!4734500 b!4734473)))

(assert (=> bs!1122557 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897425) (= lambda!217958 lambda!217951))))

(declare-fun bs!1122558 () Bool)

(assert (= bs!1122558 (and b!4734500 d!1509730)))

(assert (=> bs!1122558 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896702) (= lambda!217958 lambda!217822))))

(declare-fun bs!1122559 () Bool)

(assert (= bs!1122559 (and b!4734500 d!1510252)))

(assert (=> bs!1122559 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897337) (= lambda!217958 lambda!217940))))

(declare-fun bs!1122560 () Bool)

(assert (= bs!1122560 (and b!4734500 b!4734263)))

(assert (=> bs!1122560 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897244) (= lambda!217958 lambda!217922))))

(declare-fun bs!1122561 () Bool)

(assert (= bs!1122561 (and b!4734500 d!1509876)))

(assert (=> bs!1122561 (not (= lambda!217958 lambda!217862))))

(declare-fun bs!1122562 () Bool)

(assert (= bs!1122562 (and b!4734500 b!4733900)))

(assert (=> bs!1122562 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217958 lambda!217877))))

(declare-fun bs!1122563 () Bool)

(assert (= bs!1122563 (and b!4734500 d!1509984)))

(assert (=> bs!1122563 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217958 lambda!217876))))

(assert (=> bs!1122552 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217833))))

(declare-fun bs!1122564 () Bool)

(assert (= bs!1122564 (and b!4734500 b!4734265)))

(assert (=> bs!1122564 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217958 lambda!217920))))

(declare-fun bs!1122565 () Bool)

(assert (= bs!1122565 (and b!4734500 d!1509818)))

(assert (=> bs!1122565 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896752) (= lambda!217958 lambda!217839))))

(declare-fun bs!1122566 () Bool)

(assert (= bs!1122566 (and b!4734500 d!1510190)))

(assert (=> bs!1122566 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897240) (= lambda!217958 lambda!217923))))

(declare-fun bs!1122567 () Bool)

(assert (= bs!1122567 (and b!4734500 b!4733502)))

(assert (=> bs!1122567 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217819))))

(declare-fun bs!1122568 () Bool)

(assert (= bs!1122568 (and b!4734500 b!4733500)))

(assert (=> bs!1122568 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217820))))

(declare-fun bs!1122569 () Bool)

(assert (= bs!1122569 (and b!4734500 d!1510280)))

(assert (=> bs!1122569 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897421) (= lambda!217958 lambda!217954))))

(declare-fun bs!1122570 () Bool)

(assert (= bs!1122570 (and b!4734500 d!1509820)))

(assert (=> bs!1122570 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896789) (= lambda!217958 lambda!217844))))

(assert (=> bs!1122553 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217958 lambda!217851))))

(declare-fun bs!1122571 () Bool)

(assert (= bs!1122571 (and b!4734500 d!1509826)))

(assert (=> bs!1122571 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896822) (= lambda!217958 lambda!217848))))

(declare-fun bs!1122572 () Bool)

(assert (= bs!1122572 (and b!4734500 b!4734001)))

(assert (=> bs!1122572 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217958 lambda!217904))))

(declare-fun bs!1122573 () Bool)

(assert (= bs!1122573 (and b!4734500 b!4734302)))

(assert (=> bs!1122573 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217958 lambda!217924))))

(declare-fun bs!1122574 () Bool)

(assert (= bs!1122574 (and b!4734500 d!1509834)))

(assert (=> bs!1122574 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896851) (= lambda!217958 lambda!217852))))

(declare-fun bs!1122575 () Bool)

(assert (= bs!1122575 (and b!4734500 d!1509926)))

(assert (=> bs!1122575 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217871))))

(declare-fun bs!1122576 () Bool)

(assert (= bs!1122576 (and b!4734500 b!4734502)))

(assert (=> bs!1122576 (= lambda!217958 lambda!217956)))

(declare-fun bs!1122577 () Bool)

(assert (= bs!1122577 (and b!4734500 b!4733898)))

(assert (=> bs!1122577 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897028) (= lambda!217958 lambda!217882))))

(assert (=> bs!1122551 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897094) (= lambda!217958 lambda!217906))))

(declare-fun bs!1122578 () Bool)

(assert (= bs!1122578 (and b!4734500 b!4733561)))

(assert (=> bs!1122578 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217958 lambda!217847))))

(declare-fun bs!1122579 () Bool)

(assert (= bs!1122579 (and b!4734500 d!1510022)))

(assert (=> bs!1122579 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897090) (= lambda!217958 lambda!217907))))

(declare-fun bs!1122580 () Bool)

(assert (= bs!1122580 (and b!4734500 b!4733563)))

(assert (=> bs!1122580 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217845))))

(declare-fun bs!1122581 () Bool)

(assert (= bs!1122581 (and b!4734500 b!4733539)))

(assert (=> bs!1122581 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217830))))

(assert (=> bs!1122577 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217958 lambda!217880))))

(assert (=> bs!1122560 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217958 lambda!217921))))

(assert (=> bs!1122555 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217841))))

(assert (=> bs!1122557 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217958 lambda!217949))))

(declare-fun bs!1122582 () Bool)

(assert (= bs!1122582 (and b!4734500 d!1510262)))

(assert (=> bs!1122582 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217958 lambda!217945))))

(declare-fun bs!1122583 () Bool)

(assert (= bs!1122583 (and b!4734500 b!4734385)))

(assert (=> bs!1122583 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217958 lambda!217929))))

(assert (=> bs!1122568 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217958 lambda!217821))))

(declare-fun bs!1122584 () Bool)

(assert (= bs!1122584 (and b!4734500 d!1509864)))

(assert (=> bs!1122584 (not (= lambda!217958 lambda!217860))))

(declare-fun bs!1122585 () Bool)

(assert (= bs!1122585 (and b!4734500 b!4734300)))

(assert (=> bs!1122585 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897285) (= lambda!217958 lambda!217926))))

(declare-fun bs!1122586 () Bool)

(assert (= bs!1122586 (and b!4734500 d!1510164)))

(assert (=> bs!1122586 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217958 lambda!217918))))

(declare-fun bs!1122587 () Bool)

(assert (= bs!1122587 (and b!4734500 b!4733552)))

(assert (=> bs!1122587 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217840))))

(assert (=> bs!1122585 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217958 lambda!217925))))

(declare-fun bs!1122589 () Bool)

(assert (= bs!1122589 (and b!4734500 b!4734475)))

(assert (=> bs!1122589 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217958 lambda!217946))))

(assert (=> bs!1122578 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217958 lambda!217846))))

(declare-fun bs!1122590 () Bool)

(assert (= bs!1122590 (and b!4734500 d!1509992)))

(assert (=> bs!1122590 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897024) (= lambda!217958 lambda!217883))))

(declare-fun bs!1122591 () Bool)

(assert (= bs!1122591 (and b!4734500 d!1510208)))

(assert (=> bs!1122591 (= (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897281) (= lambda!217958 lambda!217927))))

(assert (=> b!4734500 true))

(declare-fun lambda!217959 () Int)

(declare-fun lt!1897469 () ListMap!5341)

(assert (=> bs!1122551 (= (= lt!1897469 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217959 lambda!217905))))

(assert (=> b!4734500 (= (= lt!1897469 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217959 lambda!217958))))

(assert (=> bs!1122552 (= (= lt!1897469 lt!1896756) (= lambda!217959 lambda!217834))))

(assert (=> bs!1122553 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217850))))

(assert (=> bs!1122554 (= (= lt!1897469 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217959 lambda!217930))))

(assert (=> bs!1122554 (= (= lt!1897469 lt!1897341) (= lambda!217959 lambda!217931))))

(assert (=> bs!1122555 (= (= lt!1897469 lt!1896793) (= lambda!217959 lambda!217843))))

(assert (=> bs!1122556 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217849))))

(assert (=> bs!1122557 (= (= lt!1897469 lt!1897425) (= lambda!217959 lambda!217951))))

(assert (=> bs!1122558 (= (= lt!1897469 lt!1896702) (= lambda!217959 lambda!217822))))

(assert (=> bs!1122559 (= (= lt!1897469 lt!1897337) (= lambda!217959 lambda!217940))))

(assert (=> bs!1122560 (= (= lt!1897469 lt!1897244) (= lambda!217959 lambda!217922))))

(assert (=> bs!1122561 (not (= lambda!217959 lambda!217862))))

(assert (=> bs!1122562 (= (= lt!1897469 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217959 lambda!217877))))

(assert (=> bs!1122563 (= (= lt!1897469 lt!1896826) (= lambda!217959 lambda!217876))))

(assert (=> bs!1122552 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217833))))

(assert (=> bs!1122564 (= (= lt!1897469 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217959 lambda!217920))))

(assert (=> bs!1122565 (= (= lt!1897469 lt!1896752) (= lambda!217959 lambda!217839))))

(assert (=> bs!1122566 (= (= lt!1897469 lt!1897240) (= lambda!217959 lambda!217923))))

(assert (=> bs!1122567 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217819))))

(assert (=> bs!1122568 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217820))))

(assert (=> bs!1122569 (= (= lt!1897469 lt!1897421) (= lambda!217959 lambda!217954))))

(assert (=> bs!1122570 (= (= lt!1897469 lt!1896789) (= lambda!217959 lambda!217844))))

(assert (=> bs!1122553 (= (= lt!1897469 lt!1896855) (= lambda!217959 lambda!217851))))

(assert (=> bs!1122571 (= (= lt!1897469 lt!1896822) (= lambda!217959 lambda!217848))))

(assert (=> bs!1122572 (= (= lt!1897469 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217959 lambda!217904))))

(assert (=> bs!1122573 (= (= lt!1897469 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217959 lambda!217924))))

(assert (=> bs!1122574 (= (= lt!1897469 lt!1896851) (= lambda!217959 lambda!217852))))

(assert (=> bs!1122575 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217871))))

(assert (=> bs!1122576 (= (= lt!1897469 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217959 lambda!217956))))

(assert (=> bs!1122577 (= (= lt!1897469 lt!1897028) (= lambda!217959 lambda!217882))))

(assert (=> bs!1122551 (= (= lt!1897469 lt!1897094) (= lambda!217959 lambda!217906))))

(assert (=> bs!1122578 (= (= lt!1897469 lt!1896826) (= lambda!217959 lambda!217847))))

(assert (=> bs!1122579 (= (= lt!1897469 lt!1897090) (= lambda!217959 lambda!217907))))

(assert (=> bs!1122580 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217845))))

(assert (=> bs!1122581 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217830))))

(assert (=> bs!1122577 (= (= lt!1897469 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217959 lambda!217880))))

(assert (=> bs!1122560 (= (= lt!1897469 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217959 lambda!217921))))

(assert (=> bs!1122555 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217841))))

(assert (=> bs!1122557 (= (= lt!1897469 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217959 lambda!217949))))

(assert (=> bs!1122582 (= (= lt!1897469 lt!1896855) (= lambda!217959 lambda!217945))))

(assert (=> bs!1122583 (= (= lt!1897469 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217959 lambda!217929))))

(assert (=> bs!1122568 (= (= lt!1897469 lt!1896706) (= lambda!217959 lambda!217821))))

(assert (=> bs!1122584 (not (= lambda!217959 lambda!217860))))

(assert (=> bs!1122585 (= (= lt!1897469 lt!1897285) (= lambda!217959 lambda!217926))))

(assert (=> bs!1122586 (= (= lt!1897469 lt!1896793) (= lambda!217959 lambda!217918))))

(assert (=> bs!1122587 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217840))))

(assert (=> bs!1122585 (= (= lt!1897469 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217959 lambda!217925))))

(assert (=> bs!1122589 (= (= lt!1897469 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217959 lambda!217946))))

(assert (=> bs!1122578 (= (= lt!1897469 lt!1896343) (= lambda!217959 lambda!217846))))

(assert (=> bs!1122590 (= (= lt!1897469 lt!1897024) (= lambda!217959 lambda!217883))))

(assert (=> bs!1122591 (= (= lt!1897469 lt!1897281) (= lambda!217959 lambda!217927))))

(assert (=> b!4734500 true))

(declare-fun bs!1122594 () Bool)

(declare-fun d!1510296 () Bool)

(assert (= bs!1122594 (and d!1510296 b!4733999)))

(declare-fun lambda!217960 () Int)

(declare-fun lt!1897465 () ListMap!5341)

(assert (=> bs!1122594 (= (= lt!1897465 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217960 lambda!217905))))

(declare-fun bs!1122595 () Bool)

(assert (= bs!1122595 (and d!1510296 b!4734500)))

(assert (=> bs!1122595 (= (= lt!1897465 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217960 lambda!217958))))

(declare-fun bs!1122596 () Bool)

(assert (= bs!1122596 (and d!1510296 b!4733537)))

(assert (=> bs!1122596 (= (= lt!1897465 lt!1896756) (= lambda!217960 lambda!217834))))

(declare-fun bs!1122597 () Bool)

(assert (= bs!1122597 (and d!1510296 b!4733594)))

(assert (=> bs!1122597 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217850))))

(declare-fun bs!1122598 () Bool)

(assert (= bs!1122598 (and d!1510296 b!4734383)))

(assert (=> bs!1122598 (= (= lt!1897465 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217960 lambda!217930))))

(assert (=> bs!1122598 (= (= lt!1897465 lt!1897341) (= lambda!217960 lambda!217931))))

(declare-fun bs!1122599 () Bool)

(assert (= bs!1122599 (and d!1510296 b!4733550)))

(assert (=> bs!1122599 (= (= lt!1897465 lt!1896793) (= lambda!217960 lambda!217843))))

(declare-fun bs!1122600 () Bool)

(assert (= bs!1122600 (and d!1510296 b!4733596)))

(assert (=> bs!1122600 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217849))))

(declare-fun bs!1122601 () Bool)

(assert (= bs!1122601 (and d!1510296 b!4734473)))

(assert (=> bs!1122601 (= (= lt!1897465 lt!1897425) (= lambda!217960 lambda!217951))))

(declare-fun bs!1122602 () Bool)

(assert (= bs!1122602 (and d!1510296 d!1509730)))

(assert (=> bs!1122602 (= (= lt!1897465 lt!1896702) (= lambda!217960 lambda!217822))))

(declare-fun bs!1122603 () Bool)

(assert (= bs!1122603 (and d!1510296 d!1510252)))

(assert (=> bs!1122603 (= (= lt!1897465 lt!1897337) (= lambda!217960 lambda!217940))))

(declare-fun bs!1122604 () Bool)

(assert (= bs!1122604 (and d!1510296 b!4734263)))

(assert (=> bs!1122604 (= (= lt!1897465 lt!1897244) (= lambda!217960 lambda!217922))))

(declare-fun bs!1122605 () Bool)

(assert (= bs!1122605 (and d!1510296 d!1509876)))

(assert (=> bs!1122605 (not (= lambda!217960 lambda!217862))))

(declare-fun bs!1122606 () Bool)

(assert (= bs!1122606 (and d!1510296 b!4733900)))

(assert (=> bs!1122606 (= (= lt!1897465 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217960 lambda!217877))))

(declare-fun bs!1122607 () Bool)

(assert (= bs!1122607 (and d!1510296 d!1509984)))

(assert (=> bs!1122607 (= (= lt!1897465 lt!1896826) (= lambda!217960 lambda!217876))))

(assert (=> bs!1122596 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217833))))

(declare-fun bs!1122608 () Bool)

(assert (= bs!1122608 (and d!1510296 b!4734265)))

(assert (=> bs!1122608 (= (= lt!1897465 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217960 lambda!217920))))

(declare-fun bs!1122609 () Bool)

(assert (= bs!1122609 (and d!1510296 d!1509818)))

(assert (=> bs!1122609 (= (= lt!1897465 lt!1896752) (= lambda!217960 lambda!217839))))

(declare-fun bs!1122610 () Bool)

(assert (= bs!1122610 (and d!1510296 d!1510190)))

(assert (=> bs!1122610 (= (= lt!1897465 lt!1897240) (= lambda!217960 lambda!217923))))

(declare-fun bs!1122611 () Bool)

(assert (= bs!1122611 (and d!1510296 b!4733502)))

(assert (=> bs!1122611 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217819))))

(declare-fun bs!1122612 () Bool)

(assert (= bs!1122612 (and d!1510296 b!4733500)))

(assert (=> bs!1122612 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217820))))

(declare-fun bs!1122614 () Bool)

(assert (= bs!1122614 (and d!1510296 d!1510280)))

(assert (=> bs!1122614 (= (= lt!1897465 lt!1897421) (= lambda!217960 lambda!217954))))

(declare-fun bs!1122615 () Bool)

(assert (= bs!1122615 (and d!1510296 d!1509820)))

(assert (=> bs!1122615 (= (= lt!1897465 lt!1896789) (= lambda!217960 lambda!217844))))

(assert (=> bs!1122597 (= (= lt!1897465 lt!1896855) (= lambda!217960 lambda!217851))))

(assert (=> bs!1122595 (= (= lt!1897465 lt!1897469) (= lambda!217960 lambda!217959))))

(declare-fun bs!1122616 () Bool)

(assert (= bs!1122616 (and d!1510296 d!1509826)))

(assert (=> bs!1122616 (= (= lt!1897465 lt!1896822) (= lambda!217960 lambda!217848))))

(declare-fun bs!1122617 () Bool)

(assert (= bs!1122617 (and d!1510296 b!4734001)))

(assert (=> bs!1122617 (= (= lt!1897465 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217960 lambda!217904))))

(declare-fun bs!1122618 () Bool)

(assert (= bs!1122618 (and d!1510296 b!4734302)))

(assert (=> bs!1122618 (= (= lt!1897465 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217960 lambda!217924))))

(declare-fun bs!1122619 () Bool)

(assert (= bs!1122619 (and d!1510296 d!1509834)))

(assert (=> bs!1122619 (= (= lt!1897465 lt!1896851) (= lambda!217960 lambda!217852))))

(declare-fun bs!1122620 () Bool)

(assert (= bs!1122620 (and d!1510296 d!1509926)))

(assert (=> bs!1122620 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217871))))

(declare-fun bs!1122621 () Bool)

(assert (= bs!1122621 (and d!1510296 b!4734502)))

(assert (=> bs!1122621 (= (= lt!1897465 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217960 lambda!217956))))

(declare-fun bs!1122622 () Bool)

(assert (= bs!1122622 (and d!1510296 b!4733898)))

(assert (=> bs!1122622 (= (= lt!1897465 lt!1897028) (= lambda!217960 lambda!217882))))

(assert (=> bs!1122594 (= (= lt!1897465 lt!1897094) (= lambda!217960 lambda!217906))))

(declare-fun bs!1122623 () Bool)

(assert (= bs!1122623 (and d!1510296 b!4733561)))

(assert (=> bs!1122623 (= (= lt!1897465 lt!1896826) (= lambda!217960 lambda!217847))))

(declare-fun bs!1122624 () Bool)

(assert (= bs!1122624 (and d!1510296 d!1510022)))

(assert (=> bs!1122624 (= (= lt!1897465 lt!1897090) (= lambda!217960 lambda!217907))))

(declare-fun bs!1122625 () Bool)

(assert (= bs!1122625 (and d!1510296 b!4733563)))

(assert (=> bs!1122625 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217845))))

(declare-fun bs!1122626 () Bool)

(assert (= bs!1122626 (and d!1510296 b!4733539)))

(assert (=> bs!1122626 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217830))))

(assert (=> bs!1122622 (= (= lt!1897465 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217960 lambda!217880))))

(assert (=> bs!1122604 (= (= lt!1897465 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217960 lambda!217921))))

(assert (=> bs!1122599 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217841))))

(assert (=> bs!1122601 (= (= lt!1897465 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217960 lambda!217949))))

(declare-fun bs!1122627 () Bool)

(assert (= bs!1122627 (and d!1510296 d!1510262)))

(assert (=> bs!1122627 (= (= lt!1897465 lt!1896855) (= lambda!217960 lambda!217945))))

(declare-fun bs!1122628 () Bool)

(assert (= bs!1122628 (and d!1510296 b!4734385)))

(assert (=> bs!1122628 (= (= lt!1897465 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217960 lambda!217929))))

(assert (=> bs!1122612 (= (= lt!1897465 lt!1896706) (= lambda!217960 lambda!217821))))

(declare-fun bs!1122629 () Bool)

(assert (= bs!1122629 (and d!1510296 d!1509864)))

(assert (=> bs!1122629 (not (= lambda!217960 lambda!217860))))

(declare-fun bs!1122630 () Bool)

(assert (= bs!1122630 (and d!1510296 b!4734300)))

(assert (=> bs!1122630 (= (= lt!1897465 lt!1897285) (= lambda!217960 lambda!217926))))

(declare-fun bs!1122631 () Bool)

(assert (= bs!1122631 (and d!1510296 d!1510164)))

(assert (=> bs!1122631 (= (= lt!1897465 lt!1896793) (= lambda!217960 lambda!217918))))

(declare-fun bs!1122632 () Bool)

(assert (= bs!1122632 (and d!1510296 b!4733552)))

(assert (=> bs!1122632 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217840))))

(assert (=> bs!1122630 (= (= lt!1897465 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217960 lambda!217925))))

(declare-fun bs!1122633 () Bool)

(assert (= bs!1122633 (and d!1510296 b!4734475)))

(assert (=> bs!1122633 (= (= lt!1897465 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217960 lambda!217946))))

(assert (=> bs!1122623 (= (= lt!1897465 lt!1896343) (= lambda!217960 lambda!217846))))

(declare-fun bs!1122634 () Bool)

(assert (= bs!1122634 (and d!1510296 d!1509992)))

(assert (=> bs!1122634 (= (= lt!1897465 lt!1897024) (= lambda!217960 lambda!217883))))

(declare-fun bs!1122635 () Bool)

(assert (= bs!1122635 (and d!1510296 d!1510208)))

(assert (=> bs!1122635 (= (= lt!1897465 lt!1897281) (= lambda!217960 lambda!217927))))

(assert (=> d!1510296 true))

(declare-fun bm!331164 () Bool)

(declare-fun call!331169 () Bool)

(declare-fun c!808610 () Bool)

(assert (=> bm!331164 (= call!331169 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (ite c!808610 lambda!217956 lambda!217959)))))

(declare-fun b!4734499 () Bool)

(declare-fun e!2953108 () Bool)

(assert (=> b!4734499 (= e!2953108 call!331169)))

(declare-fun call!331171 () Unit!131735)

(declare-fun bm!331165 () Bool)

(assert (=> bm!331165 (= call!331171 (lemmaContainsAllItsOwnKeys!820 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun bm!331166 () Bool)

(declare-fun call!331170 () Bool)

(assert (=> bm!331166 (= call!331170 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (ite c!808610 lambda!217956 lambda!217959)))))

(declare-fun e!2953106 () Bool)

(assert (=> d!1510296 e!2953106))

(declare-fun res!2004835 () Bool)

(assert (=> d!1510296 (=> (not res!2004835) (not e!2953106))))

(assert (=> d!1510296 (= res!2004835 (forall!11653 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lambda!217960))))

(declare-fun e!2953107 () ListMap!5341)

(assert (=> d!1510296 (= lt!1897465 e!2953107)))

(assert (=> d!1510296 (= c!808610 ((_ is Nil!52913) (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))))

(assert (=> d!1510296 (noDuplicateKeys!2044 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))

(assert (=> d!1510296 (= (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) lt!1897465)))

(assert (=> b!4734500 (= e!2953107 lt!1897469)))

(declare-fun lt!1897460 () ListMap!5341)

(assert (=> b!4734500 (= lt!1897460 (+!2292 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))))

(assert (=> b!4734500 (= lt!1897469 (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (+!2292 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))))))

(declare-fun lt!1897461 () Unit!131735)

(assert (=> b!4734500 (= lt!1897461 call!331171)))

(assert (=> b!4734500 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) lambda!217958)))

(declare-fun lt!1897458 () Unit!131735)

(assert (=> b!4734500 (= lt!1897458 lt!1897461)))

(assert (=> b!4734500 (forall!11653 (toList!5978 lt!1897460) lambda!217959)))

(declare-fun lt!1897459 () Unit!131735)

(declare-fun Unit!132053 () Unit!131735)

(assert (=> b!4734500 (= lt!1897459 Unit!132053)))

(assert (=> b!4734500 (forall!11653 (t!360317 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) lambda!217959)))

(declare-fun lt!1897455 () Unit!131735)

(declare-fun Unit!132054 () Unit!131735)

(assert (=> b!4734500 (= lt!1897455 Unit!132054)))

(declare-fun lt!1897470 () Unit!131735)

(declare-fun Unit!132055 () Unit!131735)

(assert (=> b!4734500 (= lt!1897470 Unit!132055)))

(declare-fun lt!1897452 () Unit!131735)

(assert (=> b!4734500 (= lt!1897452 (forallContained!3693 (toList!5978 lt!1897460) lambda!217959 (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))))

(assert (=> b!4734500 (contains!16298 lt!1897460 (_1!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun lt!1897464 () Unit!131735)

(declare-fun Unit!132056 () Unit!131735)

(assert (=> b!4734500 (= lt!1897464 Unit!132056)))

(assert (=> b!4734500 (contains!16298 lt!1897469 (_1!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun lt!1897466 () Unit!131735)

(declare-fun Unit!132057 () Unit!131735)

(assert (=> b!4734500 (= lt!1897466 Unit!132057)))

(assert (=> b!4734500 (forall!11653 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lambda!217959)))

(declare-fun lt!1897468 () Unit!131735)

(declare-fun Unit!132058 () Unit!131735)

(assert (=> b!4734500 (= lt!1897468 Unit!132058)))

(assert (=> b!4734500 (forall!11653 (toList!5978 lt!1897460) lambda!217959)))

(declare-fun lt!1897456 () Unit!131735)

(declare-fun Unit!132059 () Unit!131735)

(assert (=> b!4734500 (= lt!1897456 Unit!132059)))

(declare-fun lt!1897451 () Unit!131735)

(declare-fun Unit!132060 () Unit!131735)

(assert (=> b!4734500 (= lt!1897451 Unit!132060)))

(declare-fun lt!1897453 () Unit!131735)

(assert (=> b!4734500 (= lt!1897453 (addForallContainsKeyThenBeforeAdding!819 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897469 (_1!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))))))

(assert (=> b!4734500 call!331170))

(declare-fun lt!1897462 () Unit!131735)

(assert (=> b!4734500 (= lt!1897462 lt!1897453)))

(assert (=> b!4734500 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) lambda!217959)))

(declare-fun lt!1897450 () Unit!131735)

(declare-fun Unit!132061 () Unit!131735)

(assert (=> b!4734500 (= lt!1897450 Unit!132061)))

(declare-fun res!2004837 () Bool)

(assert (=> b!4734500 (= res!2004837 (forall!11653 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lambda!217959))))

(assert (=> b!4734500 (=> (not res!2004837) (not e!2953108))))

(assert (=> b!4734500 e!2953108))

(declare-fun lt!1897454 () Unit!131735)

(declare-fun Unit!132062 () Unit!131735)

(assert (=> b!4734500 (= lt!1897454 Unit!132062)))

(declare-fun b!4734501 () Bool)

(declare-fun res!2004836 () Bool)

(assert (=> b!4734501 (=> (not res!2004836) (not e!2953106))))

(assert (=> b!4734501 (= res!2004836 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) lambda!217960))))

(assert (=> b!4734502 (= e!2953107 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))

(declare-fun lt!1897463 () Unit!131735)

(assert (=> b!4734502 (= lt!1897463 call!331171)))

(assert (=> b!4734502 call!331170))

(declare-fun lt!1897467 () Unit!131735)

(assert (=> b!4734502 (= lt!1897467 lt!1897463)))

(assert (=> b!4734502 call!331169))

(declare-fun lt!1897457 () Unit!131735)

(declare-fun Unit!132063 () Unit!131735)

(assert (=> b!4734502 (= lt!1897457 Unit!132063)))

(declare-fun b!4734503 () Bool)

(assert (=> b!4734503 (= e!2953106 (invariantList!1535 (toList!5978 lt!1897465)))))

(assert (= (and d!1510296 c!808610) b!4734502))

(assert (= (and d!1510296 (not c!808610)) b!4734500))

(assert (= (and b!4734500 res!2004837) b!4734499))

(assert (= (or b!4734502 b!4734500) bm!331165))

(assert (= (or b!4734502 b!4734500) bm!331166))

(assert (= (or b!4734502 b!4734499) bm!331164))

(assert (= (and d!1510296 res!2004835) b!4734501))

(assert (= (and b!4734501 res!2004836) b!4734503))

(declare-fun m!5679109 () Bool)

(assert (=> bm!331164 m!5679109))

(declare-fun m!5679111 () Bool)

(assert (=> d!1510296 m!5679111))

(declare-fun m!5679113 () Bool)

(assert (=> d!1510296 m!5679113))

(assert (=> bm!331165 m!5677417))

(declare-fun m!5679115 () Bool)

(assert (=> bm!331165 m!5679115))

(declare-fun m!5679117 () Bool)

(assert (=> b!4734500 m!5679117))

(declare-fun m!5679119 () Bool)

(assert (=> b!4734500 m!5679119))

(declare-fun m!5679121 () Bool)

(assert (=> b!4734500 m!5679121))

(declare-fun m!5679123 () Bool)

(assert (=> b!4734500 m!5679123))

(declare-fun m!5679125 () Bool)

(assert (=> b!4734500 m!5679125))

(declare-fun m!5679127 () Bool)

(assert (=> b!4734500 m!5679127))

(declare-fun m!5679129 () Bool)

(assert (=> b!4734500 m!5679129))

(assert (=> b!4734500 m!5679117))

(assert (=> b!4734500 m!5677417))

(declare-fun m!5679131 () Bool)

(assert (=> b!4734500 m!5679131))

(declare-fun m!5679133 () Bool)

(assert (=> b!4734500 m!5679133))

(assert (=> b!4734500 m!5679123))

(assert (=> b!4734500 m!5677417))

(declare-fun m!5679135 () Bool)

(assert (=> b!4734500 m!5679135))

(assert (=> b!4734500 m!5679131))

(declare-fun m!5679137 () Bool)

(assert (=> b!4734500 m!5679137))

(declare-fun m!5679141 () Bool)

(assert (=> b!4734501 m!5679141))

(assert (=> bm!331166 m!5679109))

(declare-fun m!5679143 () Bool)

(assert (=> b!4734503 m!5679143))

(assert (=> b!4733617 d!1510296))

(declare-fun bs!1122637 () Bool)

(declare-fun d!1510332 () Bool)

(assert (= bs!1122637 (and d!1510332 start!482632)))

(declare-fun lambda!217961 () Int)

(assert (=> bs!1122637 (= lambda!217961 lambda!217712)))

(declare-fun bs!1122638 () Bool)

(assert (= bs!1122638 (and d!1510332 d!1509850)))

(assert (=> bs!1122638 (= lambda!217961 lambda!217854)))

(declare-fun bs!1122639 () Bool)

(assert (= bs!1122639 (and d!1510332 d!1509868)))

(assert (=> bs!1122639 (= lambda!217961 lambda!217861)))

(declare-fun bs!1122640 () Bool)

(assert (= bs!1122640 (and d!1510332 d!1509812)))

(assert (=> bs!1122640 (= lambda!217961 lambda!217826)))

(declare-fun bs!1122641 () Bool)

(assert (= bs!1122641 (and d!1510332 d!1509816)))

(assert (=> bs!1122641 (= lambda!217961 lambda!217829)))

(declare-fun bs!1122642 () Bool)

(assert (= bs!1122642 (and d!1510332 d!1509792)))

(assert (=> bs!1122642 (= lambda!217961 lambda!217825)))

(declare-fun bs!1122643 () Bool)

(assert (= bs!1122643 (and d!1510332 d!1509862)))

(assert (=> bs!1122643 (not (= lambda!217961 lambda!217857))))

(declare-fun bs!1122644 () Bool)

(assert (= bs!1122644 (and d!1510332 d!1510034)))

(assert (=> bs!1122644 (= lambda!217961 lambda!217908)))

(declare-fun bs!1122645 () Bool)

(assert (= bs!1122645 (and d!1510332 d!1509704)))

(assert (=> bs!1122645 (= lambda!217961 lambda!217749)))

(declare-fun bs!1122646 () Bool)

(assert (= bs!1122646 (and d!1510332 d!1509848)))

(assert (=> bs!1122646 (= lambda!217961 lambda!217853)))

(declare-fun bs!1122647 () Bool)

(assert (= bs!1122647 (and d!1510332 d!1510210)))

(assert (=> bs!1122647 (= lambda!217961 lambda!217928)))

(declare-fun bs!1122648 () Bool)

(assert (= bs!1122648 (and d!1510332 d!1509702)))

(assert (=> bs!1122648 (= lambda!217961 lambda!217718)))

(declare-fun bs!1122649 () Bool)

(assert (= bs!1122649 (and d!1510332 d!1510042)))

(assert (=> bs!1122649 (= lambda!217961 lambda!217909)))

(declare-fun lt!1897481 () ListMap!5341)

(assert (=> d!1510332 (invariantList!1535 (toList!5978 lt!1897481))))

(declare-fun e!2953134 () ListMap!5341)

(assert (=> d!1510332 (= lt!1897481 e!2953134)))

(declare-fun c!808616 () Bool)

(assert (=> d!1510332 (= c!808616 ((_ is Cons!52914) (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))

(assert (=> d!1510332 (forall!11651 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))) lambda!217961)))

(assert (=> d!1510332 (= (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) lt!1897481)))

(declare-fun b!4734534 () Bool)

(assert (=> b!4734534 (= e!2953134 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (extractMap!2070 (t!360318 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun b!4734535 () Bool)

(assert (=> b!4734535 (= e!2953134 (ListMap!5342 Nil!52913))))

(assert (= (and d!1510332 c!808616) b!4734534))

(assert (= (and d!1510332 (not c!808616)) b!4734535))

(declare-fun m!5679161 () Bool)

(assert (=> d!1510332 m!5679161))

(declare-fun m!5679165 () Bool)

(assert (=> d!1510332 m!5679165))

(declare-fun m!5679169 () Bool)

(assert (=> b!4734534 m!5679169))

(assert (=> b!4734534 m!5679169))

(declare-fun m!5679173 () Bool)

(assert (=> b!4734534 m!5679173))

(assert (=> b!4733617 d!1510332))

(assert (=> bm!331074 d!1510126))

(declare-fun d!1510346 () Bool)

(declare-fun res!2004868 () Bool)

(declare-fun e!2953150 () Bool)

(assert (=> d!1510346 (=> res!2004868 e!2953150)))

(assert (=> d!1510346 (= res!2004868 ((_ is Nil!52914) (toList!5977 lm!2023)))))

(assert (=> d!1510346 (= (forall!11651 (toList!5977 lm!2023) lambda!217749) e!2953150)))

(declare-fun b!4734550 () Bool)

(declare-fun e!2953151 () Bool)

(assert (=> b!4734550 (= e!2953150 e!2953151)))

(declare-fun res!2004869 () Bool)

(assert (=> b!4734550 (=> (not res!2004869) (not e!2953151))))

(assert (=> b!4734550 (= res!2004869 (dynLambda!21856 lambda!217749 (h!59285 (toList!5977 lm!2023))))))

(declare-fun b!4734552 () Bool)

(assert (=> b!4734552 (= e!2953151 (forall!11651 (t!360318 (toList!5977 lm!2023)) lambda!217749))))

(assert (= (and d!1510346 (not res!2004868)) b!4734550))

(assert (= (and b!4734550 res!2004869) b!4734552))

(declare-fun b_lambda!180763 () Bool)

(assert (=> (not b_lambda!180763) (not b!4734550)))

(declare-fun m!5679175 () Bool)

(assert (=> b!4734550 m!5679175))

(declare-fun m!5679177 () Bool)

(assert (=> b!4734552 m!5679177))

(assert (=> d!1509704 d!1510346))

(declare-fun bs!1122709 () Bool)

(declare-fun d!1510348 () Bool)

(assert (= bs!1122709 (and d!1510348 start!482632)))

(declare-fun lambda!217967 () Int)

(assert (=> bs!1122709 (= lambda!217967 lambda!217712)))

(declare-fun bs!1122712 () Bool)

(assert (= bs!1122712 (and d!1510348 d!1509850)))

(assert (=> bs!1122712 (= lambda!217967 lambda!217854)))

(declare-fun bs!1122716 () Bool)

(assert (= bs!1122716 (and d!1510348 d!1509868)))

(assert (=> bs!1122716 (= lambda!217967 lambda!217861)))

(declare-fun bs!1122720 () Bool)

(assert (= bs!1122720 (and d!1510348 d!1509812)))

(assert (=> bs!1122720 (= lambda!217967 lambda!217826)))

(declare-fun bs!1122722 () Bool)

(assert (= bs!1122722 (and d!1510348 d!1509816)))

(assert (=> bs!1122722 (= lambda!217967 lambda!217829)))

(declare-fun bs!1122724 () Bool)

(assert (= bs!1122724 (and d!1510348 d!1509792)))

(assert (=> bs!1122724 (= lambda!217967 lambda!217825)))

(declare-fun bs!1122728 () Bool)

(assert (= bs!1122728 (and d!1510348 d!1509862)))

(assert (=> bs!1122728 (not (= lambda!217967 lambda!217857))))

(declare-fun bs!1122731 () Bool)

(assert (= bs!1122731 (and d!1510348 d!1510034)))

(assert (=> bs!1122731 (= lambda!217967 lambda!217908)))

(declare-fun bs!1122734 () Bool)

(assert (= bs!1122734 (and d!1510348 d!1509704)))

(assert (=> bs!1122734 (= lambda!217967 lambda!217749)))

(declare-fun bs!1122738 () Bool)

(assert (= bs!1122738 (and d!1510348 d!1510332)))

(assert (=> bs!1122738 (= lambda!217967 lambda!217961)))

(declare-fun bs!1122739 () Bool)

(assert (= bs!1122739 (and d!1510348 d!1509848)))

(assert (=> bs!1122739 (= lambda!217967 lambda!217853)))

(declare-fun bs!1122740 () Bool)

(assert (= bs!1122740 (and d!1510348 d!1510210)))

(assert (=> bs!1122740 (= lambda!217967 lambda!217928)))

(declare-fun bs!1122741 () Bool)

(assert (= bs!1122741 (and d!1510348 d!1509702)))

(assert (=> bs!1122741 (= lambda!217967 lambda!217718)))

(declare-fun bs!1122742 () Bool)

(assert (= bs!1122742 (and d!1510348 d!1510042)))

(assert (=> bs!1122742 (= lambda!217967 lambda!217909)))

(assert (=> d!1510348 (isDefined!9677 (getPair!584 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)) key!4653))))

(declare-fun lt!1897530 () Unit!131735)

(assert (=> d!1510348 (= lt!1897530 (forallContained!3691 (toList!5977 lm!2023) lambda!217967 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))))

(declare-fun lt!1897531 () Unit!131735)

(declare-fun lt!1897528 () Unit!131735)

(assert (=> d!1510348 (= lt!1897531 lt!1897528)))

(declare-fun lt!1897533 () (_ BitVec 64))

(declare-fun lt!1897532 () List!53037)

(assert (=> d!1510348 (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1897533 lt!1897532))))

(assert (=> d!1510348 (= lt!1897528 (lemmaGetValueImpliesTupleContained!389 lm!2023 lt!1897533 lt!1897532))))

(assert (=> d!1510348 (= lt!1897532 (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))))

(assert (=> d!1510348 (= lt!1897533 (hash!4436 hashF!1323 key!4653))))

(declare-fun lt!1897529 () Unit!131735)

(declare-fun lt!1897527 () Unit!131735)

(assert (=> d!1510348 (= lt!1897529 lt!1897527)))

(assert (=> d!1510348 (contains!16297 lm!2023 (hash!4436 hashF!1323 key!4653))))

(assert (=> d!1510348 (= lt!1897527 (lemmaInGenMapThenLongMapContainsHash!790 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1510348 true))

(declare-fun _$25!268 () Unit!131735)

(assert (=> d!1510348 (= (choose!33515 lm!2023 key!4653 hashF!1323) _$25!268)))

(declare-fun bs!1122743 () Bool)

(assert (= bs!1122743 d!1510348))

(assert (=> bs!1122743 m!5676721))

(assert (=> bs!1122743 m!5676723))

(declare-fun m!5679215 () Bool)

(assert (=> bs!1122743 m!5679215))

(assert (=> bs!1122743 m!5676631))

(assert (=> bs!1122743 m!5676709))

(assert (=> bs!1122743 m!5676631))

(assert (=> bs!1122743 m!5676719))

(assert (=> bs!1122743 m!5676631))

(declare-fun m!5679217 () Bool)

(assert (=> bs!1122743 m!5679217))

(declare-fun m!5679219 () Bool)

(assert (=> bs!1122743 m!5679219))

(assert (=> bs!1122743 m!5676561))

(assert (=> bs!1122743 m!5676719))

(assert (=> bs!1122743 m!5676721))

(assert (=> d!1509704 d!1510348))

(declare-fun d!1510360 () Bool)

(declare-fun lt!1897534 () Bool)

(assert (=> d!1510360 (= lt!1897534 (select (content!9442 e!2952556) key!4653))))

(declare-fun e!2953161 () Bool)

(assert (=> d!1510360 (= lt!1897534 e!2953161)))

(declare-fun res!2004879 () Bool)

(assert (=> d!1510360 (=> (not res!2004879) (not e!2953161))))

(assert (=> d!1510360 (= res!2004879 ((_ is Cons!52916) e!2952556))))

(assert (=> d!1510360 (= (contains!16302 e!2952556 key!4653) lt!1897534)))

(declare-fun b!4734569 () Bool)

(declare-fun e!2953162 () Bool)

(assert (=> b!4734569 (= e!2953161 e!2953162)))

(declare-fun res!2004880 () Bool)

(assert (=> b!4734569 (=> res!2004880 e!2953162)))

(assert (=> b!4734569 (= res!2004880 (= (h!59289 e!2952556) key!4653))))

(declare-fun b!4734570 () Bool)

(assert (=> b!4734570 (= e!2953162 (contains!16302 (t!360322 e!2952556) key!4653))))

(assert (= (and d!1510360 res!2004879) b!4734569))

(assert (= (and b!4734569 (not res!2004880)) b!4734570))

(declare-fun m!5679221 () Bool)

(assert (=> d!1510360 m!5679221))

(declare-fun m!5679223 () Bool)

(assert (=> d!1510360 m!5679223))

(declare-fun m!5679225 () Bool)

(assert (=> b!4734570 m!5679225))

(assert (=> bm!331084 d!1510360))

(assert (=> d!1509844 d!1509842))

(declare-fun d!1510362 () Bool)

(assert (=> d!1510362 (eq!1141 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896347 lt!1896335) lt!1896343) (+!2292 (addToMapMapFromBucket!1474 lt!1896335 lt!1896343) lt!1896347))))

(assert (=> d!1510362 true))

(declare-fun _$30!196 () Unit!131735)

(assert (=> d!1510362 (= (choose!33519 lt!1896347 lt!1896335 lt!1896343) _$30!196)))

(declare-fun bs!1122744 () Bool)

(assert (= bs!1122744 d!1510362))

(assert (=> bs!1122744 m!5676591))

(assert (=> bs!1122744 m!5676585))

(assert (=> bs!1122744 m!5676585))

(assert (=> bs!1122744 m!5676587))

(assert (=> bs!1122744 m!5676591))

(assert (=> bs!1122744 m!5676587))

(assert (=> bs!1122744 m!5676597))

(assert (=> d!1509844 d!1510362))

(assert (=> d!1509844 d!1509820))

(assert (=> d!1509844 d!1509906))

(assert (=> d!1509844 d!1509826))

(assert (=> d!1509844 d!1509832))

(assert (=> b!4733639 d!1510014))

(assert (=> b!4733639 d!1510016))

(declare-fun lt!1897535 () Bool)

(declare-fun d!1510364 () Bool)

(assert (=> d!1510364 (= lt!1897535 (select (content!9439 (toList!5977 lm!2023)) (tuple2!54573 lt!1896341 lt!1896345)))))

(declare-fun e!2953164 () Bool)

(assert (=> d!1510364 (= lt!1897535 e!2953164)))

(declare-fun res!2004881 () Bool)

(assert (=> d!1510364 (=> (not res!2004881) (not e!2953164))))

(assert (=> d!1510364 (= res!2004881 ((_ is Cons!52914) (toList!5977 lm!2023)))))

(assert (=> d!1510364 (= (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1896341 lt!1896345)) lt!1897535)))

(declare-fun b!4734571 () Bool)

(declare-fun e!2953163 () Bool)

(assert (=> b!4734571 (= e!2953164 e!2953163)))

(declare-fun res!2004882 () Bool)

(assert (=> b!4734571 (=> res!2004882 e!2953163)))

(assert (=> b!4734571 (= res!2004882 (= (h!59285 (toList!5977 lm!2023)) (tuple2!54573 lt!1896341 lt!1896345)))))

(declare-fun b!4734572 () Bool)

(assert (=> b!4734572 (= e!2953163 (contains!16296 (t!360318 (toList!5977 lm!2023)) (tuple2!54573 lt!1896341 lt!1896345)))))

(assert (= (and d!1510364 res!2004881) b!4734571))

(assert (= (and b!4734571 (not res!2004882)) b!4734572))

(assert (=> d!1510364 m!5676657))

(declare-fun m!5679227 () Bool)

(assert (=> d!1510364 m!5679227))

(declare-fun m!5679229 () Bool)

(assert (=> b!4734572 m!5679229))

(assert (=> d!1509714 d!1510364))

(declare-fun d!1510366 () Bool)

(assert (=> d!1510366 (contains!16296 (toList!5977 lm!2023) (tuple2!54573 lt!1896341 lt!1896345))))

(assert (=> d!1510366 true))

(declare-fun _$41!432 () Unit!131735)

(assert (=> d!1510366 (= (choose!33518 lm!2023 lt!1896341 lt!1896345) _$41!432)))

(declare-fun bs!1122745 () Bool)

(assert (= bs!1122745 d!1510366))

(assert (=> bs!1122745 m!5676747))

(assert (=> d!1509714 d!1510366))

(assert (=> d!1509714 d!1509678))

(declare-fun d!1510368 () Bool)

(declare-fun res!2004883 () Bool)

(declare-fun e!2953165 () Bool)

(assert (=> d!1510368 (=> res!2004883 e!2953165)))

(assert (=> d!1510368 (= res!2004883 ((_ is Nil!52913) (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> d!1510368 (= (forall!11653 (_2!30580 (h!59285 (toList!5977 lm!2023))) lambda!217821) e!2953165)))

(declare-fun b!4734574 () Bool)

(declare-fun e!2953166 () Bool)

(assert (=> b!4734574 (= e!2953165 e!2953166)))

(declare-fun res!2004884 () Bool)

(assert (=> b!4734574 (=> (not res!2004884) (not e!2953166))))

(assert (=> b!4734574 (= res!2004884 (dynLambda!21858 lambda!217821 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun b!4734575 () Bool)

(assert (=> b!4734575 (= e!2953166 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217821))))

(assert (= (and d!1510368 (not res!2004883)) b!4734574))

(assert (= (and b!4734574 res!2004884) b!4734575))

(declare-fun b_lambda!180771 () Bool)

(assert (=> (not b_lambda!180771) (not b!4734574)))

(declare-fun m!5679231 () Bool)

(assert (=> b!4734574 m!5679231))

(assert (=> b!4734575 m!5677115))

(assert (=> b!4733500 d!1510368))

(declare-fun b!4734576 () Bool)

(declare-fun e!2953171 () Unit!131735)

(declare-fun lt!1897541 () Unit!131735)

(assert (=> b!4734576 (= e!2953171 lt!1897541)))

(declare-fun lt!1897537 () Unit!131735)

(assert (=> b!4734576 (= lt!1897537 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> b!4734576 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897540 () Unit!131735)

(assert (=> b!4734576 (= lt!1897540 lt!1897537)))

(assert (=> b!4734576 (= lt!1897541 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun call!331176 () Bool)

(assert (=> b!4734576 call!331176))

(declare-fun b!4734577 () Bool)

(declare-fun e!2953168 () List!53040)

(assert (=> b!4734577 (= e!2953168 (keys!19029 lt!1896706))))

(declare-fun b!4734578 () Bool)

(declare-fun e!2953169 () Bool)

(assert (=> b!4734578 (= e!2953169 (contains!16302 (keys!19029 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun b!4734579 () Bool)

(declare-fun e!2953167 () Bool)

(assert (=> b!4734579 (= e!2953167 e!2953169)))

(declare-fun res!2004887 () Bool)

(assert (=> b!4734579 (=> (not res!2004887) (not e!2953169))))

(assert (=> b!4734579 (= res!2004887 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(declare-fun b!4734580 () Bool)

(assert (=> b!4734580 false))

(declare-fun lt!1897536 () Unit!131735)

(declare-fun lt!1897542 () Unit!131735)

(assert (=> b!4734580 (= lt!1897536 lt!1897542)))

(assert (=> b!4734580 (containsKey!3440 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> b!4734580 (= lt!1897542 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun e!2953172 () Unit!131735)

(declare-fun Unit!132064 () Unit!131735)

(assert (=> b!4734580 (= e!2953172 Unit!132064)))

(declare-fun bm!331171 () Bool)

(assert (=> bm!331171 (= call!331176 (contains!16302 e!2953168 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun c!808623 () Bool)

(declare-fun c!808624 () Bool)

(assert (=> bm!331171 (= c!808623 c!808624)))

(declare-fun d!1510370 () Bool)

(assert (=> d!1510370 e!2953167))

(declare-fun res!2004885 () Bool)

(assert (=> d!1510370 (=> res!2004885 e!2953167)))

(declare-fun e!2953170 () Bool)

(assert (=> d!1510370 (= res!2004885 e!2953170)))

(declare-fun res!2004886 () Bool)

(assert (=> d!1510370 (=> (not res!2004886) (not e!2953170))))

(declare-fun lt!1897539 () Bool)

(assert (=> d!1510370 (= res!2004886 (not lt!1897539))))

(declare-fun lt!1897538 () Bool)

(assert (=> d!1510370 (= lt!1897539 lt!1897538)))

(declare-fun lt!1897543 () Unit!131735)

(assert (=> d!1510370 (= lt!1897543 e!2953171)))

(assert (=> d!1510370 (= c!808624 lt!1897538)))

(assert (=> d!1510370 (= lt!1897538 (containsKey!3440 (toList!5978 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> d!1510370 (= (contains!16298 lt!1896706 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lt!1897539)))

(declare-fun b!4734581 () Bool)

(assert (=> b!4734581 (= e!2953168 (getKeysList!974 (toList!5978 lt!1896706)))))

(declare-fun b!4734582 () Bool)

(assert (=> b!4734582 (= e!2953171 e!2953172)))

(declare-fun c!808625 () Bool)

(assert (=> b!4734582 (= c!808625 call!331176)))

(declare-fun b!4734583 () Bool)

(declare-fun Unit!132065 () Unit!131735)

(assert (=> b!4734583 (= e!2953172 Unit!132065)))

(declare-fun b!4734584 () Bool)

(assert (=> b!4734584 (= e!2953170 (not (contains!16302 (keys!19029 lt!1896706) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(assert (= (and d!1510370 c!808624) b!4734576))

(assert (= (and d!1510370 (not c!808624)) b!4734582))

(assert (= (and b!4734582 c!808625) b!4734580))

(assert (= (and b!4734582 (not c!808625)) b!4734583))

(assert (= (or b!4734576 b!4734582) bm!331171))

(assert (= (and bm!331171 c!808623) b!4734581))

(assert (= (and bm!331171 (not c!808623)) b!4734577))

(assert (= (and d!1510370 res!2004886) b!4734584))

(assert (= (and d!1510370 (not res!2004885)) b!4734579))

(assert (= (and b!4734579 res!2004887) b!4734578))

(declare-fun m!5679233 () Bool)

(assert (=> b!4734581 m!5679233))

(declare-fun m!5679235 () Bool)

(assert (=> b!4734576 m!5679235))

(declare-fun m!5679237 () Bool)

(assert (=> b!4734576 m!5679237))

(assert (=> b!4734576 m!5679237))

(declare-fun m!5679239 () Bool)

(assert (=> b!4734576 m!5679239))

(declare-fun m!5679241 () Bool)

(assert (=> b!4734576 m!5679241))

(declare-fun m!5679243 () Bool)

(assert (=> d!1510370 m!5679243))

(declare-fun m!5679245 () Bool)

(assert (=> bm!331171 m!5679245))

(declare-fun m!5679247 () Bool)

(assert (=> b!4734577 m!5679247))

(assert (=> b!4734579 m!5679237))

(assert (=> b!4734579 m!5679237))

(assert (=> b!4734579 m!5679239))

(assert (=> b!4734584 m!5679247))

(assert (=> b!4734584 m!5679247))

(declare-fun m!5679249 () Bool)

(assert (=> b!4734584 m!5679249))

(assert (=> b!4734580 m!5679243))

(declare-fun m!5679251 () Bool)

(assert (=> b!4734580 m!5679251))

(assert (=> b!4734578 m!5679247))

(assert (=> b!4734578 m!5679247))

(assert (=> b!4734578 m!5679249))

(assert (=> b!4733500 d!1510370))

(declare-fun d!1510372 () Bool)

(assert (=> d!1510372 (dynLambda!21858 lambda!217821 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(declare-fun lt!1897544 () Unit!131735)

(assert (=> d!1510372 (= lt!1897544 (choose!33534 (toList!5978 lt!1896697) lambda!217821 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun e!2953173 () Bool)

(assert (=> d!1510372 e!2953173))

(declare-fun res!2004888 () Bool)

(assert (=> d!1510372 (=> (not res!2004888) (not e!2953173))))

(assert (=> d!1510372 (= res!2004888 (forall!11653 (toList!5978 lt!1896697) lambda!217821))))

(assert (=> d!1510372 (= (forallContained!3693 (toList!5978 lt!1896697) lambda!217821 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897544)))

(declare-fun b!4734585 () Bool)

(assert (=> b!4734585 (= e!2953173 (contains!16300 (toList!5978 lt!1896697) (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (= (and d!1510372 res!2004888) b!4734585))

(declare-fun b_lambda!180773 () Bool)

(assert (=> (not b_lambda!180773) (not d!1510372)))

(assert (=> d!1510372 m!5679231))

(declare-fun m!5679253 () Bool)

(assert (=> d!1510372 m!5679253))

(assert (=> d!1510372 m!5677119))

(declare-fun m!5679255 () Bool)

(assert (=> b!4734585 m!5679255))

(assert (=> b!4733500 d!1510372))

(declare-fun d!1510374 () Bool)

(declare-fun res!2004889 () Bool)

(declare-fun e!2953174 () Bool)

(assert (=> d!1510374 (=> res!2004889 e!2953174)))

(assert (=> d!1510374 (= res!2004889 ((_ is Nil!52913) (toList!5978 lt!1896697)))))

(assert (=> d!1510374 (= (forall!11653 (toList!5978 lt!1896697) lambda!217821) e!2953174)))

(declare-fun b!4734586 () Bool)

(declare-fun e!2953175 () Bool)

(assert (=> b!4734586 (= e!2953174 e!2953175)))

(declare-fun res!2004890 () Bool)

(assert (=> b!4734586 (=> (not res!2004890) (not e!2953175))))

(assert (=> b!4734586 (= res!2004890 (dynLambda!21858 lambda!217821 (h!59284 (toList!5978 lt!1896697))))))

(declare-fun b!4734587 () Bool)

(assert (=> b!4734587 (= e!2953175 (forall!11653 (t!360317 (toList!5978 lt!1896697)) lambda!217821))))

(assert (= (and d!1510374 (not res!2004889)) b!4734586))

(assert (= (and b!4734586 res!2004890) b!4734587))

(declare-fun b_lambda!180775 () Bool)

(assert (=> (not b_lambda!180775) (not b!4734586)))

(declare-fun m!5679257 () Bool)

(assert (=> b!4734586 m!5679257))

(declare-fun m!5679259 () Bool)

(assert (=> b!4734587 m!5679259))

(assert (=> b!4733500 d!1510374))

(declare-fun d!1510376 () Bool)

(declare-fun res!2004891 () Bool)

(declare-fun e!2953176 () Bool)

(assert (=> d!1510376 (=> res!2004891 e!2953176)))

(assert (=> d!1510376 (= res!2004891 ((_ is Nil!52913) (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> d!1510376 (= (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217821) e!2953176)))

(declare-fun b!4734588 () Bool)

(declare-fun e!2953177 () Bool)

(assert (=> b!4734588 (= e!2953176 e!2953177)))

(declare-fun res!2004892 () Bool)

(assert (=> b!4734588 (=> (not res!2004892) (not e!2953177))))

(assert (=> b!4734588 (= res!2004892 (dynLambda!21858 lambda!217821 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun b!4734589 () Bool)

(assert (=> b!4734589 (= e!2953177 (forall!11653 (t!360317 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lambda!217821))))

(assert (= (and d!1510376 (not res!2004891)) b!4734588))

(assert (= (and b!4734588 res!2004892) b!4734589))

(declare-fun b_lambda!180777 () Bool)

(assert (=> (not b_lambda!180777) (not b!4734588)))

(declare-fun m!5679261 () Bool)

(assert (=> b!4734588 m!5679261))

(declare-fun m!5679263 () Bool)

(assert (=> b!4734589 m!5679263))

(assert (=> b!4733500 d!1510376))

(declare-fun b!4734590 () Bool)

(declare-fun e!2953182 () Unit!131735)

(declare-fun lt!1897550 () Unit!131735)

(assert (=> b!4734590 (= e!2953182 lt!1897550)))

(declare-fun lt!1897546 () Unit!131735)

(assert (=> b!4734590 (= lt!1897546 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> b!4734590 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897549 () Unit!131735)

(assert (=> b!4734590 (= lt!1897549 lt!1897546)))

(assert (=> b!4734590 (= lt!1897550 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun call!331177 () Bool)

(assert (=> b!4734590 call!331177))

(declare-fun b!4734591 () Bool)

(declare-fun e!2953179 () List!53040)

(assert (=> b!4734591 (= e!2953179 (keys!19029 lt!1896697))))

(declare-fun b!4734592 () Bool)

(declare-fun e!2953180 () Bool)

(assert (=> b!4734592 (= e!2953180 (contains!16302 (keys!19029 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun b!4734593 () Bool)

(declare-fun e!2953178 () Bool)

(assert (=> b!4734593 (= e!2953178 e!2953180)))

(declare-fun res!2004895 () Bool)

(assert (=> b!4734593 (=> (not res!2004895) (not e!2953180))))

(assert (=> b!4734593 (= res!2004895 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(declare-fun b!4734594 () Bool)

(assert (=> b!4734594 false))

(declare-fun lt!1897545 () Unit!131735)

(declare-fun lt!1897551 () Unit!131735)

(assert (=> b!4734594 (= lt!1897545 lt!1897551)))

(assert (=> b!4734594 (containsKey!3440 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> b!4734594 (= lt!1897551 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun e!2953183 () Unit!131735)

(declare-fun Unit!132066 () Unit!131735)

(assert (=> b!4734594 (= e!2953183 Unit!132066)))

(declare-fun bm!331172 () Bool)

(assert (=> bm!331172 (= call!331177 (contains!16302 e!2953179 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun c!808626 () Bool)

(declare-fun c!808627 () Bool)

(assert (=> bm!331172 (= c!808626 c!808627)))

(declare-fun d!1510378 () Bool)

(assert (=> d!1510378 e!2953178))

(declare-fun res!2004893 () Bool)

(assert (=> d!1510378 (=> res!2004893 e!2953178)))

(declare-fun e!2953181 () Bool)

(assert (=> d!1510378 (= res!2004893 e!2953181)))

(declare-fun res!2004894 () Bool)

(assert (=> d!1510378 (=> (not res!2004894) (not e!2953181))))

(declare-fun lt!1897548 () Bool)

(assert (=> d!1510378 (= res!2004894 (not lt!1897548))))

(declare-fun lt!1897547 () Bool)

(assert (=> d!1510378 (= lt!1897548 lt!1897547)))

(declare-fun lt!1897552 () Unit!131735)

(assert (=> d!1510378 (= lt!1897552 e!2953182)))

(assert (=> d!1510378 (= c!808627 lt!1897547)))

(assert (=> d!1510378 (= lt!1897547 (containsKey!3440 (toList!5978 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> d!1510378 (= (contains!16298 lt!1896697 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lt!1897548)))

(declare-fun b!4734595 () Bool)

(assert (=> b!4734595 (= e!2953179 (getKeysList!974 (toList!5978 lt!1896697)))))

(declare-fun b!4734596 () Bool)

(assert (=> b!4734596 (= e!2953182 e!2953183)))

(declare-fun c!808628 () Bool)

(assert (=> b!4734596 (= c!808628 call!331177)))

(declare-fun b!4734597 () Bool)

(declare-fun Unit!132067 () Unit!131735)

(assert (=> b!4734597 (= e!2953183 Unit!132067)))

(declare-fun b!4734598 () Bool)

(assert (=> b!4734598 (= e!2953181 (not (contains!16302 (keys!19029 lt!1896697) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(assert (= (and d!1510378 c!808627) b!4734590))

(assert (= (and d!1510378 (not c!808627)) b!4734596))

(assert (= (and b!4734596 c!808628) b!4734594))

(assert (= (and b!4734596 (not c!808628)) b!4734597))

(assert (= (or b!4734590 b!4734596) bm!331172))

(assert (= (and bm!331172 c!808626) b!4734595))

(assert (= (and bm!331172 (not c!808626)) b!4734591))

(assert (= (and d!1510378 res!2004894) b!4734598))

(assert (= (and d!1510378 (not res!2004893)) b!4734593))

(assert (= (and b!4734593 res!2004895) b!4734592))

(declare-fun m!5679265 () Bool)

(assert (=> b!4734595 m!5679265))

(declare-fun m!5679267 () Bool)

(assert (=> b!4734590 m!5679267))

(declare-fun m!5679269 () Bool)

(assert (=> b!4734590 m!5679269))

(assert (=> b!4734590 m!5679269))

(declare-fun m!5679271 () Bool)

(assert (=> b!4734590 m!5679271))

(declare-fun m!5679273 () Bool)

(assert (=> b!4734590 m!5679273))

(declare-fun m!5679275 () Bool)

(assert (=> d!1510378 m!5679275))

(declare-fun m!5679277 () Bool)

(assert (=> bm!331172 m!5679277))

(declare-fun m!5679279 () Bool)

(assert (=> b!4734591 m!5679279))

(assert (=> b!4734593 m!5679269))

(assert (=> b!4734593 m!5679269))

(assert (=> b!4734593 m!5679271))

(assert (=> b!4734598 m!5679279))

(assert (=> b!4734598 m!5679279))

(declare-fun m!5679281 () Bool)

(assert (=> b!4734598 m!5679281))

(assert (=> b!4734594 m!5679275))

(declare-fun m!5679283 () Bool)

(assert (=> b!4734594 m!5679283))

(assert (=> b!4734592 m!5679279))

(assert (=> b!4734592 m!5679279))

(assert (=> b!4734592 m!5679281))

(assert (=> b!4733500 d!1510378))

(declare-fun d!1510380 () Bool)

(declare-fun e!2953184 () Bool)

(assert (=> d!1510380 e!2953184))

(declare-fun res!2004896 () Bool)

(assert (=> d!1510380 (=> (not res!2004896) (not e!2953184))))

(declare-fun lt!1897555 () ListMap!5341)

(assert (=> d!1510380 (= res!2004896 (contains!16298 lt!1897555 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897553 () List!53037)

(assert (=> d!1510380 (= lt!1897555 (ListMap!5342 lt!1897553))))

(declare-fun lt!1897556 () Unit!131735)

(declare-fun lt!1897554 () Unit!131735)

(assert (=> d!1510380 (= lt!1897556 lt!1897554)))

(assert (=> d!1510380 (= (getValueByKey!2000 lt!1897553 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (Some!12425 (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> d!1510380 (= lt!1897554 (lemmaContainsTupThenGetReturnValue!1102 lt!1897553 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> d!1510380 (= lt!1897553 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896343) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> d!1510380 (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897555)))

(declare-fun b!4734599 () Bool)

(declare-fun res!2004897 () Bool)

(assert (=> b!4734599 (=> (not res!2004897) (not e!2953184))))

(assert (=> b!4734599 (= res!2004897 (= (getValueByKey!2000 (toList!5978 lt!1897555) (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (Some!12425 (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(declare-fun b!4734600 () Bool)

(assert (=> b!4734600 (= e!2953184 (contains!16300 (toList!5978 lt!1897555) (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (= (and d!1510380 res!2004896) b!4734599))

(assert (= (and b!4734599 res!2004897) b!4734600))

(declare-fun m!5679285 () Bool)

(assert (=> d!1510380 m!5679285))

(declare-fun m!5679287 () Bool)

(assert (=> d!1510380 m!5679287))

(declare-fun m!5679289 () Bool)

(assert (=> d!1510380 m!5679289))

(declare-fun m!5679291 () Bool)

(assert (=> d!1510380 m!5679291))

(declare-fun m!5679293 () Bool)

(assert (=> b!4734599 m!5679293))

(declare-fun m!5679295 () Bool)

(assert (=> b!4734600 m!5679295))

(assert (=> b!4733500 d!1510380))

(declare-fun d!1510382 () Bool)

(declare-fun res!2004898 () Bool)

(declare-fun e!2953185 () Bool)

(assert (=> d!1510382 (=> res!2004898 e!2953185)))

(assert (=> d!1510382 (= res!2004898 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510382 (= (forall!11653 (toList!5978 lt!1896343) lambda!217821) e!2953185)))

(declare-fun b!4734601 () Bool)

(declare-fun e!2953186 () Bool)

(assert (=> b!4734601 (= e!2953185 e!2953186)))

(declare-fun res!2004899 () Bool)

(assert (=> b!4734601 (=> (not res!2004899) (not e!2953186))))

(assert (=> b!4734601 (= res!2004899 (dynLambda!21858 lambda!217821 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734602 () Bool)

(assert (=> b!4734602 (= e!2953186 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217821))))

(assert (= (and d!1510382 (not res!2004898)) b!4734601))

(assert (= (and b!4734601 res!2004899) b!4734602))

(declare-fun b_lambda!180779 () Bool)

(assert (=> (not b_lambda!180779) (not b!4734601)))

(declare-fun m!5679297 () Bool)

(assert (=> b!4734601 m!5679297))

(declare-fun m!5679299 () Bool)

(assert (=> b!4734602 m!5679299))

(assert (=> b!4733500 d!1510382))

(declare-fun d!1510384 () Bool)

(declare-fun res!2004900 () Bool)

(declare-fun e!2953187 () Bool)

(assert (=> d!1510384 (=> res!2004900 e!2953187)))

(assert (=> d!1510384 (= res!2004900 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510384 (= (forall!11653 (toList!5978 lt!1896343) lambda!217820) e!2953187)))

(declare-fun b!4734603 () Bool)

(declare-fun e!2953188 () Bool)

(assert (=> b!4734603 (= e!2953187 e!2953188)))

(declare-fun res!2004901 () Bool)

(assert (=> b!4734603 (=> (not res!2004901) (not e!2953188))))

(assert (=> b!4734603 (= res!2004901 (dynLambda!21858 lambda!217820 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734604 () Bool)

(assert (=> b!4734604 (= e!2953188 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217820))))

(assert (= (and d!1510384 (not res!2004900)) b!4734603))

(assert (= (and b!4734603 res!2004901) b!4734604))

(declare-fun b_lambda!180781 () Bool)

(assert (=> (not b_lambda!180781) (not b!4734603)))

(declare-fun m!5679301 () Bool)

(assert (=> b!4734603 m!5679301))

(declare-fun m!5679303 () Bool)

(assert (=> b!4734604 m!5679303))

(assert (=> b!4733500 d!1510384))

(declare-fun bs!1122774 () Bool)

(declare-fun d!1510386 () Bool)

(assert (= bs!1122774 (and d!1510386 b!4733999)))

(declare-fun lambda!217970 () Int)

(assert (=> bs!1122774 (= (= lt!1896706 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217970 lambda!217905))))

(declare-fun bs!1122775 () Bool)

(assert (= bs!1122775 (and d!1510386 b!4734500)))

(assert (=> bs!1122775 (= (= lt!1896706 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217970 lambda!217958))))

(declare-fun bs!1122776 () Bool)

(assert (= bs!1122776 (and d!1510386 b!4733537)))

(assert (=> bs!1122776 (= (= lt!1896706 lt!1896756) (= lambda!217970 lambda!217834))))

(declare-fun bs!1122777 () Bool)

(assert (= bs!1122777 (and d!1510386 b!4733594)))

(assert (=> bs!1122777 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217850))))

(declare-fun bs!1122778 () Bool)

(assert (= bs!1122778 (and d!1510386 b!4734383)))

(assert (=> bs!1122778 (= (= lt!1896706 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217970 lambda!217930))))

(assert (=> bs!1122778 (= (= lt!1896706 lt!1897341) (= lambda!217970 lambda!217931))))

(declare-fun bs!1122779 () Bool)

(assert (= bs!1122779 (and d!1510386 b!4733550)))

(assert (=> bs!1122779 (= (= lt!1896706 lt!1896793) (= lambda!217970 lambda!217843))))

(declare-fun bs!1122780 () Bool)

(assert (= bs!1122780 (and d!1510386 b!4733596)))

(assert (=> bs!1122780 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217849))))

(declare-fun bs!1122781 () Bool)

(assert (= bs!1122781 (and d!1510386 b!4734473)))

(assert (=> bs!1122781 (= (= lt!1896706 lt!1897425) (= lambda!217970 lambda!217951))))

(declare-fun bs!1122782 () Bool)

(assert (= bs!1122782 (and d!1510386 d!1509730)))

(assert (=> bs!1122782 (= (= lt!1896706 lt!1896702) (= lambda!217970 lambda!217822))))

(declare-fun bs!1122783 () Bool)

(assert (= bs!1122783 (and d!1510386 d!1510296)))

(assert (=> bs!1122783 (= (= lt!1896706 lt!1897465) (= lambda!217970 lambda!217960))))

(declare-fun bs!1122784 () Bool)

(assert (= bs!1122784 (and d!1510386 d!1510252)))

(assert (=> bs!1122784 (= (= lt!1896706 lt!1897337) (= lambda!217970 lambda!217940))))

(declare-fun bs!1122785 () Bool)

(assert (= bs!1122785 (and d!1510386 b!4734263)))

(assert (=> bs!1122785 (= (= lt!1896706 lt!1897244) (= lambda!217970 lambda!217922))))

(declare-fun bs!1122786 () Bool)

(assert (= bs!1122786 (and d!1510386 d!1509876)))

(assert (=> bs!1122786 (not (= lambda!217970 lambda!217862))))

(declare-fun bs!1122787 () Bool)

(assert (= bs!1122787 (and d!1510386 b!4733900)))

(assert (=> bs!1122787 (= (= lt!1896706 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217970 lambda!217877))))

(declare-fun bs!1122788 () Bool)

(assert (= bs!1122788 (and d!1510386 d!1509984)))

(assert (=> bs!1122788 (= (= lt!1896706 lt!1896826) (= lambda!217970 lambda!217876))))

(assert (=> bs!1122776 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217833))))

(declare-fun bs!1122789 () Bool)

(assert (= bs!1122789 (and d!1510386 b!4734265)))

(assert (=> bs!1122789 (= (= lt!1896706 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217970 lambda!217920))))

(declare-fun bs!1122790 () Bool)

(assert (= bs!1122790 (and d!1510386 d!1509818)))

(assert (=> bs!1122790 (= (= lt!1896706 lt!1896752) (= lambda!217970 lambda!217839))))

(declare-fun bs!1122791 () Bool)

(assert (= bs!1122791 (and d!1510386 d!1510190)))

(assert (=> bs!1122791 (= (= lt!1896706 lt!1897240) (= lambda!217970 lambda!217923))))

(declare-fun bs!1122792 () Bool)

(assert (= bs!1122792 (and d!1510386 b!4733502)))

(assert (=> bs!1122792 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217819))))

(declare-fun bs!1122793 () Bool)

(assert (= bs!1122793 (and d!1510386 b!4733500)))

(assert (=> bs!1122793 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217820))))

(declare-fun bs!1122794 () Bool)

(assert (= bs!1122794 (and d!1510386 d!1510280)))

(assert (=> bs!1122794 (= (= lt!1896706 lt!1897421) (= lambda!217970 lambda!217954))))

(declare-fun bs!1122795 () Bool)

(assert (= bs!1122795 (and d!1510386 d!1509820)))

(assert (=> bs!1122795 (= (= lt!1896706 lt!1896789) (= lambda!217970 lambda!217844))))

(assert (=> bs!1122777 (= (= lt!1896706 lt!1896855) (= lambda!217970 lambda!217851))))

(assert (=> bs!1122775 (= (= lt!1896706 lt!1897469) (= lambda!217970 lambda!217959))))

(declare-fun bs!1122796 () Bool)

(assert (= bs!1122796 (and d!1510386 d!1509826)))

(assert (=> bs!1122796 (= (= lt!1896706 lt!1896822) (= lambda!217970 lambda!217848))))

(declare-fun bs!1122797 () Bool)

(assert (= bs!1122797 (and d!1510386 b!4734001)))

(assert (=> bs!1122797 (= (= lt!1896706 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217970 lambda!217904))))

(declare-fun bs!1122798 () Bool)

(assert (= bs!1122798 (and d!1510386 b!4734302)))

(assert (=> bs!1122798 (= (= lt!1896706 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217970 lambda!217924))))

(declare-fun bs!1122799 () Bool)

(assert (= bs!1122799 (and d!1510386 d!1509834)))

(assert (=> bs!1122799 (= (= lt!1896706 lt!1896851) (= lambda!217970 lambda!217852))))

(declare-fun bs!1122800 () Bool)

(assert (= bs!1122800 (and d!1510386 d!1509926)))

(assert (=> bs!1122800 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217871))))

(declare-fun bs!1122801 () Bool)

(assert (= bs!1122801 (and d!1510386 b!4734502)))

(assert (=> bs!1122801 (= (= lt!1896706 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217970 lambda!217956))))

(declare-fun bs!1122802 () Bool)

(assert (= bs!1122802 (and d!1510386 b!4733898)))

(assert (=> bs!1122802 (= (= lt!1896706 lt!1897028) (= lambda!217970 lambda!217882))))

(assert (=> bs!1122774 (= (= lt!1896706 lt!1897094) (= lambda!217970 lambda!217906))))

(declare-fun bs!1122803 () Bool)

(assert (= bs!1122803 (and d!1510386 b!4733561)))

(assert (=> bs!1122803 (= (= lt!1896706 lt!1896826) (= lambda!217970 lambda!217847))))

(declare-fun bs!1122804 () Bool)

(assert (= bs!1122804 (and d!1510386 d!1510022)))

(assert (=> bs!1122804 (= (= lt!1896706 lt!1897090) (= lambda!217970 lambda!217907))))

(declare-fun bs!1122805 () Bool)

(assert (= bs!1122805 (and d!1510386 b!4733563)))

(assert (=> bs!1122805 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217845))))

(declare-fun bs!1122806 () Bool)

(assert (= bs!1122806 (and d!1510386 b!4733539)))

(assert (=> bs!1122806 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217830))))

(assert (=> bs!1122802 (= (= lt!1896706 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217970 lambda!217880))))

(assert (=> bs!1122785 (= (= lt!1896706 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217970 lambda!217921))))

(assert (=> bs!1122779 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217841))))

(assert (=> bs!1122781 (= (= lt!1896706 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217970 lambda!217949))))

(declare-fun bs!1122807 () Bool)

(assert (= bs!1122807 (and d!1510386 d!1510262)))

(assert (=> bs!1122807 (= (= lt!1896706 lt!1896855) (= lambda!217970 lambda!217945))))

(declare-fun bs!1122808 () Bool)

(assert (= bs!1122808 (and d!1510386 b!4734385)))

(assert (=> bs!1122808 (= (= lt!1896706 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217970 lambda!217929))))

(assert (=> bs!1122793 (= lambda!217970 lambda!217821)))

(declare-fun bs!1122809 () Bool)

(assert (= bs!1122809 (and d!1510386 d!1509864)))

(assert (=> bs!1122809 (not (= lambda!217970 lambda!217860))))

(declare-fun bs!1122810 () Bool)

(assert (= bs!1122810 (and d!1510386 b!4734300)))

(assert (=> bs!1122810 (= (= lt!1896706 lt!1897285) (= lambda!217970 lambda!217926))))

(declare-fun bs!1122811 () Bool)

(assert (= bs!1122811 (and d!1510386 d!1510164)))

(assert (=> bs!1122811 (= (= lt!1896706 lt!1896793) (= lambda!217970 lambda!217918))))

(declare-fun bs!1122812 () Bool)

(assert (= bs!1122812 (and d!1510386 b!4733552)))

(assert (=> bs!1122812 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217840))))

(assert (=> bs!1122810 (= (= lt!1896706 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217970 lambda!217925))))

(declare-fun bs!1122813 () Bool)

(assert (= bs!1122813 (and d!1510386 b!4734475)))

(assert (=> bs!1122813 (= (= lt!1896706 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217970 lambda!217946))))

(assert (=> bs!1122803 (= (= lt!1896706 lt!1896343) (= lambda!217970 lambda!217846))))

(declare-fun bs!1122814 () Bool)

(assert (= bs!1122814 (and d!1510386 d!1509992)))

(assert (=> bs!1122814 (= (= lt!1896706 lt!1897024) (= lambda!217970 lambda!217883))))

(declare-fun bs!1122815 () Bool)

(assert (= bs!1122815 (and d!1510386 d!1510208)))

(assert (=> bs!1122815 (= (= lt!1896706 lt!1897281) (= lambda!217970 lambda!217927))))

(assert (=> d!1510386 true))

(assert (=> d!1510386 (forall!11653 (toList!5978 lt!1896343) lambda!217970)))

(declare-fun lt!1897557 () Unit!131735)

(assert (=> d!1510386 (= lt!1897557 (choose!33535 lt!1896343 lt!1896706 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> d!1510386 (forall!11653 (toList!5978 (+!2292 lt!1896343 (tuple2!54571 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))) lambda!217970)))

(assert (=> d!1510386 (= (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896706 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lt!1897557)))

(declare-fun bs!1122816 () Bool)

(assert (= bs!1122816 d!1510386))

(declare-fun m!5679397 () Bool)

(assert (=> bs!1122816 m!5679397))

(declare-fun m!5679399 () Bool)

(assert (=> bs!1122816 m!5679399))

(declare-fun m!5679401 () Bool)

(assert (=> bs!1122816 m!5679401))

(declare-fun m!5679403 () Bool)

(assert (=> bs!1122816 m!5679403))

(assert (=> b!4733500 d!1510386))

(declare-fun bs!1122818 () Bool)

(declare-fun b!4734637 () Bool)

(assert (= bs!1122818 (and b!4734637 b!4733999)))

(declare-fun lambda!217971 () Int)

(assert (=> bs!1122818 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217971 lambda!217905))))

(declare-fun bs!1122819 () Bool)

(assert (= bs!1122819 (and b!4734637 b!4734500)))

(assert (=> bs!1122819 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217971 lambda!217958))))

(declare-fun bs!1122820 () Bool)

(assert (= bs!1122820 (and b!4734637 b!4733537)))

(assert (=> bs!1122820 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217971 lambda!217834))))

(declare-fun bs!1122821 () Bool)

(assert (= bs!1122821 (and b!4734637 b!4733594)))

(assert (=> bs!1122821 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217850))))

(declare-fun bs!1122822 () Bool)

(assert (= bs!1122822 (and b!4734637 b!4734383)))

(assert (=> bs!1122822 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217971 lambda!217930))))

(assert (=> bs!1122822 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897341) (= lambda!217971 lambda!217931))))

(declare-fun bs!1122823 () Bool)

(assert (= bs!1122823 (and b!4734637 b!4733550)))

(assert (=> bs!1122823 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217971 lambda!217843))))

(declare-fun bs!1122824 () Bool)

(assert (= bs!1122824 (and b!4734637 b!4733596)))

(assert (=> bs!1122824 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217849))))

(declare-fun bs!1122825 () Bool)

(assert (= bs!1122825 (and b!4734637 b!4734473)))

(assert (=> bs!1122825 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897425) (= lambda!217971 lambda!217951))))

(declare-fun bs!1122826 () Bool)

(assert (= bs!1122826 (and b!4734637 d!1509730)))

(assert (=> bs!1122826 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896702) (= lambda!217971 lambda!217822))))

(declare-fun bs!1122827 () Bool)

(assert (= bs!1122827 (and b!4734637 d!1510296)))

(assert (=> bs!1122827 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897465) (= lambda!217971 lambda!217960))))

(declare-fun bs!1122828 () Bool)

(assert (= bs!1122828 (and b!4734637 d!1510252)))

(assert (=> bs!1122828 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897337) (= lambda!217971 lambda!217940))))

(declare-fun bs!1122829 () Bool)

(assert (= bs!1122829 (and b!4734637 b!4734263)))

(assert (=> bs!1122829 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897244) (= lambda!217971 lambda!217922))))

(declare-fun bs!1122830 () Bool)

(assert (= bs!1122830 (and b!4734637 d!1509876)))

(assert (=> bs!1122830 (not (= lambda!217971 lambda!217862))))

(declare-fun bs!1122831 () Bool)

(assert (= bs!1122831 (and b!4734637 b!4733900)))

(assert (=> bs!1122831 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217971 lambda!217877))))

(declare-fun bs!1122832 () Bool)

(assert (= bs!1122832 (and b!4734637 d!1509984)))

(assert (=> bs!1122832 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217971 lambda!217876))))

(assert (=> bs!1122820 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217833))))

(declare-fun bs!1122833 () Bool)

(assert (= bs!1122833 (and b!4734637 b!4734265)))

(assert (=> bs!1122833 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217971 lambda!217920))))

(declare-fun bs!1122834 () Bool)

(assert (= bs!1122834 (and b!4734637 d!1509818)))

(assert (=> bs!1122834 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896752) (= lambda!217971 lambda!217839))))

(declare-fun bs!1122835 () Bool)

(assert (= bs!1122835 (and b!4734637 d!1510190)))

(assert (=> bs!1122835 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897240) (= lambda!217971 lambda!217923))))

(declare-fun bs!1122836 () Bool)

(assert (= bs!1122836 (and b!4734637 b!4733502)))

(assert (=> bs!1122836 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217819))))

(declare-fun bs!1122837 () Bool)

(assert (= bs!1122837 (and b!4734637 b!4733500)))

(assert (=> bs!1122837 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217820))))

(declare-fun bs!1122838 () Bool)

(assert (= bs!1122838 (and b!4734637 d!1510280)))

(assert (=> bs!1122838 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897421) (= lambda!217971 lambda!217954))))

(declare-fun bs!1122839 () Bool)

(assert (= bs!1122839 (and b!4734637 d!1509820)))

(assert (=> bs!1122839 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896789) (= lambda!217971 lambda!217844))))

(assert (=> bs!1122821 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217971 lambda!217851))))

(assert (=> bs!1122819 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897469) (= lambda!217971 lambda!217959))))

(declare-fun bs!1122840 () Bool)

(assert (= bs!1122840 (and b!4734637 d!1510386)))

(assert (=> bs!1122840 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217971 lambda!217970))))

(declare-fun bs!1122841 () Bool)

(assert (= bs!1122841 (and b!4734637 d!1509826)))

(assert (=> bs!1122841 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896822) (= lambda!217971 lambda!217848))))

(declare-fun bs!1122842 () Bool)

(assert (= bs!1122842 (and b!4734637 b!4734001)))

(assert (=> bs!1122842 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217971 lambda!217904))))

(declare-fun bs!1122843 () Bool)

(assert (= bs!1122843 (and b!4734637 b!4734302)))

(assert (=> bs!1122843 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217971 lambda!217924))))

(declare-fun bs!1122844 () Bool)

(assert (= bs!1122844 (and b!4734637 d!1509834)))

(assert (=> bs!1122844 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896851) (= lambda!217971 lambda!217852))))

(declare-fun bs!1122845 () Bool)

(assert (= bs!1122845 (and b!4734637 d!1509926)))

(assert (=> bs!1122845 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217871))))

(declare-fun bs!1122846 () Bool)

(assert (= bs!1122846 (and b!4734637 b!4734502)))

(assert (=> bs!1122846 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217971 lambda!217956))))

(declare-fun bs!1122847 () Bool)

(assert (= bs!1122847 (and b!4734637 b!4733898)))

(assert (=> bs!1122847 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897028) (= lambda!217971 lambda!217882))))

(assert (=> bs!1122818 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897094) (= lambda!217971 lambda!217906))))

(declare-fun bs!1122848 () Bool)

(assert (= bs!1122848 (and b!4734637 b!4733561)))

(assert (=> bs!1122848 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217971 lambda!217847))))

(declare-fun bs!1122849 () Bool)

(assert (= bs!1122849 (and b!4734637 d!1510022)))

(assert (=> bs!1122849 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897090) (= lambda!217971 lambda!217907))))

(declare-fun bs!1122850 () Bool)

(assert (= bs!1122850 (and b!4734637 b!4733563)))

(assert (=> bs!1122850 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217845))))

(declare-fun bs!1122851 () Bool)

(assert (= bs!1122851 (and b!4734637 b!4733539)))

(assert (=> bs!1122851 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217830))))

(assert (=> bs!1122847 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217971 lambda!217880))))

(assert (=> bs!1122829 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217971 lambda!217921))))

(assert (=> bs!1122823 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217841))))

(assert (=> bs!1122825 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217971 lambda!217949))))

(declare-fun bs!1122852 () Bool)

(assert (= bs!1122852 (and b!4734637 d!1510262)))

(assert (=> bs!1122852 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217971 lambda!217945))))

(declare-fun bs!1122853 () Bool)

(assert (= bs!1122853 (and b!4734637 b!4734385)))

(assert (=> bs!1122853 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217971 lambda!217929))))

(assert (=> bs!1122837 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217971 lambda!217821))))

(declare-fun bs!1122855 () Bool)

(assert (= bs!1122855 (and b!4734637 d!1509864)))

(assert (=> bs!1122855 (not (= lambda!217971 lambda!217860))))

(declare-fun bs!1122856 () Bool)

(assert (= bs!1122856 (and b!4734637 b!4734300)))

(assert (=> bs!1122856 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897285) (= lambda!217971 lambda!217926))))

(declare-fun bs!1122858 () Bool)

(assert (= bs!1122858 (and b!4734637 d!1510164)))

(assert (=> bs!1122858 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217971 lambda!217918))))

(declare-fun bs!1122860 () Bool)

(assert (= bs!1122860 (and b!4734637 b!4733552)))

(assert (=> bs!1122860 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217840))))

(assert (=> bs!1122856 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217971 lambda!217925))))

(declare-fun bs!1122862 () Bool)

(assert (= bs!1122862 (and b!4734637 b!4734475)))

(assert (=> bs!1122862 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217971 lambda!217946))))

(assert (=> bs!1122848 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217971 lambda!217846))))

(declare-fun bs!1122866 () Bool)

(assert (= bs!1122866 (and b!4734637 d!1509992)))

(assert (=> bs!1122866 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897024) (= lambda!217971 lambda!217883))))

(declare-fun bs!1122867 () Bool)

(assert (= bs!1122867 (and b!4734637 d!1510208)))

(assert (=> bs!1122867 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897281) (= lambda!217971 lambda!217927))))

(assert (=> b!4734637 true))

(declare-fun bs!1122875 () Bool)

(declare-fun b!4734635 () Bool)

(assert (= bs!1122875 (and b!4734635 b!4733999)))

(declare-fun lambda!217973 () Int)

(assert (=> bs!1122875 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217973 lambda!217905))))

(declare-fun bs!1122877 () Bool)

(assert (= bs!1122877 (and b!4734635 b!4734500)))

(assert (=> bs!1122877 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217973 lambda!217958))))

(declare-fun bs!1122878 () Bool)

(assert (= bs!1122878 (and b!4734635 b!4733537)))

(assert (=> bs!1122878 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217973 lambda!217834))))

(declare-fun bs!1122880 () Bool)

(assert (= bs!1122880 (and b!4734635 b!4733594)))

(assert (=> bs!1122880 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217850))))

(declare-fun bs!1122882 () Bool)

(assert (= bs!1122882 (and b!4734635 b!4734383)))

(assert (=> bs!1122882 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217973 lambda!217930))))

(declare-fun bs!1122883 () Bool)

(assert (= bs!1122883 (and b!4734635 b!4734637)))

(assert (=> bs!1122883 (= lambda!217973 lambda!217971)))

(assert (=> bs!1122882 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897341) (= lambda!217973 lambda!217931))))

(declare-fun bs!1122888 () Bool)

(assert (= bs!1122888 (and b!4734635 b!4733550)))

(assert (=> bs!1122888 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217973 lambda!217843))))

(declare-fun bs!1122889 () Bool)

(assert (= bs!1122889 (and b!4734635 b!4733596)))

(assert (=> bs!1122889 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217849))))

(declare-fun bs!1122891 () Bool)

(assert (= bs!1122891 (and b!4734635 b!4734473)))

(assert (=> bs!1122891 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897425) (= lambda!217973 lambda!217951))))

(declare-fun bs!1122893 () Bool)

(assert (= bs!1122893 (and b!4734635 d!1509730)))

(assert (=> bs!1122893 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896702) (= lambda!217973 lambda!217822))))

(declare-fun bs!1122895 () Bool)

(assert (= bs!1122895 (and b!4734635 d!1510296)))

(assert (=> bs!1122895 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897465) (= lambda!217973 lambda!217960))))

(declare-fun bs!1122897 () Bool)

(assert (= bs!1122897 (and b!4734635 d!1510252)))

(assert (=> bs!1122897 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897337) (= lambda!217973 lambda!217940))))

(declare-fun bs!1122898 () Bool)

(assert (= bs!1122898 (and b!4734635 b!4734263)))

(assert (=> bs!1122898 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897244) (= lambda!217973 lambda!217922))))

(declare-fun bs!1122900 () Bool)

(assert (= bs!1122900 (and b!4734635 d!1509876)))

(assert (=> bs!1122900 (not (= lambda!217973 lambda!217862))))

(declare-fun bs!1122902 () Bool)

(assert (= bs!1122902 (and b!4734635 b!4733900)))

(assert (=> bs!1122902 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217973 lambda!217877))))

(declare-fun bs!1122904 () Bool)

(assert (= bs!1122904 (and b!4734635 d!1509984)))

(assert (=> bs!1122904 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217973 lambda!217876))))

(assert (=> bs!1122878 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217833))))

(declare-fun bs!1122906 () Bool)

(assert (= bs!1122906 (and b!4734635 b!4734265)))

(assert (=> bs!1122906 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217973 lambda!217920))))

(declare-fun bs!1122907 () Bool)

(assert (= bs!1122907 (and b!4734635 d!1509818)))

(assert (=> bs!1122907 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896752) (= lambda!217973 lambda!217839))))

(declare-fun bs!1122908 () Bool)

(assert (= bs!1122908 (and b!4734635 d!1510190)))

(assert (=> bs!1122908 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897240) (= lambda!217973 lambda!217923))))

(declare-fun bs!1122909 () Bool)

(assert (= bs!1122909 (and b!4734635 b!4733502)))

(assert (=> bs!1122909 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217819))))

(declare-fun bs!1122910 () Bool)

(assert (= bs!1122910 (and b!4734635 b!4733500)))

(assert (=> bs!1122910 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217820))))

(declare-fun bs!1122912 () Bool)

(assert (= bs!1122912 (and b!4734635 d!1510280)))

(assert (=> bs!1122912 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897421) (= lambda!217973 lambda!217954))))

(declare-fun bs!1122913 () Bool)

(assert (= bs!1122913 (and b!4734635 d!1509820)))

(assert (=> bs!1122913 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896789) (= lambda!217973 lambda!217844))))

(assert (=> bs!1122880 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217973 lambda!217851))))

(assert (=> bs!1122877 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897469) (= lambda!217973 lambda!217959))))

(declare-fun bs!1122916 () Bool)

(assert (= bs!1122916 (and b!4734635 d!1510386)))

(assert (=> bs!1122916 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217973 lambda!217970))))

(declare-fun bs!1122917 () Bool)

(assert (= bs!1122917 (and b!4734635 d!1509826)))

(assert (=> bs!1122917 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896822) (= lambda!217973 lambda!217848))))

(declare-fun bs!1122919 () Bool)

(assert (= bs!1122919 (and b!4734635 b!4734001)))

(assert (=> bs!1122919 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217973 lambda!217904))))

(declare-fun bs!1122921 () Bool)

(assert (= bs!1122921 (and b!4734635 b!4734302)))

(assert (=> bs!1122921 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217973 lambda!217924))))

(declare-fun bs!1122922 () Bool)

(assert (= bs!1122922 (and b!4734635 d!1509834)))

(assert (=> bs!1122922 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896851) (= lambda!217973 lambda!217852))))

(declare-fun bs!1122925 () Bool)

(assert (= bs!1122925 (and b!4734635 d!1509926)))

(assert (=> bs!1122925 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217871))))

(declare-fun bs!1122927 () Bool)

(assert (= bs!1122927 (and b!4734635 b!4734502)))

(assert (=> bs!1122927 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217973 lambda!217956))))

(declare-fun bs!1122929 () Bool)

(assert (= bs!1122929 (and b!4734635 b!4733898)))

(assert (=> bs!1122929 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897028) (= lambda!217973 lambda!217882))))

(assert (=> bs!1122875 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897094) (= lambda!217973 lambda!217906))))

(declare-fun bs!1122932 () Bool)

(assert (= bs!1122932 (and b!4734635 b!4733561)))

(assert (=> bs!1122932 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217973 lambda!217847))))

(declare-fun bs!1122934 () Bool)

(assert (= bs!1122934 (and b!4734635 d!1510022)))

(assert (=> bs!1122934 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897090) (= lambda!217973 lambda!217907))))

(declare-fun bs!1122936 () Bool)

(assert (= bs!1122936 (and b!4734635 b!4733563)))

(assert (=> bs!1122936 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217845))))

(declare-fun bs!1122938 () Bool)

(assert (= bs!1122938 (and b!4734635 b!4733539)))

(assert (=> bs!1122938 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217830))))

(assert (=> bs!1122929 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217973 lambda!217880))))

(assert (=> bs!1122898 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217973 lambda!217921))))

(assert (=> bs!1122888 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217841))))

(assert (=> bs!1122891 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217973 lambda!217949))))

(declare-fun bs!1122940 () Bool)

(assert (= bs!1122940 (and b!4734635 d!1510262)))

(assert (=> bs!1122940 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217973 lambda!217945))))

(declare-fun bs!1122942 () Bool)

(assert (= bs!1122942 (and b!4734635 b!4734385)))

(assert (=> bs!1122942 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217973 lambda!217929))))

(assert (=> bs!1122910 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217973 lambda!217821))))

(declare-fun bs!1122944 () Bool)

(assert (= bs!1122944 (and b!4734635 d!1509864)))

(assert (=> bs!1122944 (not (= lambda!217973 lambda!217860))))

(declare-fun bs!1122946 () Bool)

(assert (= bs!1122946 (and b!4734635 b!4734300)))

(assert (=> bs!1122946 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897285) (= lambda!217973 lambda!217926))))

(declare-fun bs!1122948 () Bool)

(assert (= bs!1122948 (and b!4734635 d!1510164)))

(assert (=> bs!1122948 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217973 lambda!217918))))

(declare-fun bs!1122949 () Bool)

(assert (= bs!1122949 (and b!4734635 b!4733552)))

(assert (=> bs!1122949 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217840))))

(assert (=> bs!1122946 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217973 lambda!217925))))

(declare-fun bs!1122952 () Bool)

(assert (= bs!1122952 (and b!4734635 b!4734475)))

(assert (=> bs!1122952 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217973 lambda!217946))))

(assert (=> bs!1122932 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217973 lambda!217846))))

(declare-fun bs!1122955 () Bool)

(assert (= bs!1122955 (and b!4734635 d!1509992)))

(assert (=> bs!1122955 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897024) (= lambda!217973 lambda!217883))))

(declare-fun bs!1122956 () Bool)

(assert (= bs!1122956 (and b!4734635 d!1510208)))

(assert (=> bs!1122956 (= (= (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897281) (= lambda!217973 lambda!217927))))

(assert (=> b!4734635 true))

(declare-fun lt!1897590 () ListMap!5341)

(declare-fun lambda!217975 () Int)

(assert (=> bs!1122875 (= (= lt!1897590 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217975 lambda!217905))))

(assert (=> bs!1122877 (= (= lt!1897590 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217975 lambda!217958))))

(assert (=> bs!1122878 (= (= lt!1897590 lt!1896756) (= lambda!217975 lambda!217834))))

(assert (=> bs!1122880 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217850))))

(assert (=> bs!1122882 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217975 lambda!217930))))

(assert (=> bs!1122883 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217975 lambda!217971))))

(assert (=> bs!1122882 (= (= lt!1897590 lt!1897341) (= lambda!217975 lambda!217931))))

(assert (=> bs!1122888 (= (= lt!1897590 lt!1896793) (= lambda!217975 lambda!217843))))

(assert (=> bs!1122889 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217849))))

(assert (=> bs!1122891 (= (= lt!1897590 lt!1897425) (= lambda!217975 lambda!217951))))

(assert (=> bs!1122893 (= (= lt!1897590 lt!1896702) (= lambda!217975 lambda!217822))))

(assert (=> bs!1122895 (= (= lt!1897590 lt!1897465) (= lambda!217975 lambda!217960))))

(assert (=> bs!1122898 (= (= lt!1897590 lt!1897244) (= lambda!217975 lambda!217922))))

(assert (=> bs!1122900 (not (= lambda!217975 lambda!217862))))

(assert (=> bs!1122902 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217975 lambda!217877))))

(assert (=> bs!1122904 (= (= lt!1897590 lt!1896826) (= lambda!217975 lambda!217876))))

(assert (=> bs!1122878 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217833))))

(assert (=> bs!1122906 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217975 lambda!217920))))

(assert (=> bs!1122907 (= (= lt!1897590 lt!1896752) (= lambda!217975 lambda!217839))))

(assert (=> bs!1122908 (= (= lt!1897590 lt!1897240) (= lambda!217975 lambda!217923))))

(assert (=> bs!1122909 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217819))))

(assert (=> bs!1122910 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217820))))

(assert (=> bs!1122912 (= (= lt!1897590 lt!1897421) (= lambda!217975 lambda!217954))))

(assert (=> bs!1122913 (= (= lt!1897590 lt!1896789) (= lambda!217975 lambda!217844))))

(assert (=> bs!1122880 (= (= lt!1897590 lt!1896855) (= lambda!217975 lambda!217851))))

(assert (=> bs!1122877 (= (= lt!1897590 lt!1897469) (= lambda!217975 lambda!217959))))

(assert (=> bs!1122916 (= (= lt!1897590 lt!1896706) (= lambda!217975 lambda!217970))))

(assert (=> bs!1122917 (= (= lt!1897590 lt!1896822) (= lambda!217975 lambda!217848))))

(assert (=> bs!1122919 (= (= lt!1897590 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217975 lambda!217904))))

(assert (=> bs!1122921 (= (= lt!1897590 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217975 lambda!217924))))

(assert (=> bs!1122922 (= (= lt!1897590 lt!1896851) (= lambda!217975 lambda!217852))))

(assert (=> bs!1122925 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217871))))

(assert (=> bs!1122927 (= (= lt!1897590 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217975 lambda!217956))))

(assert (=> bs!1122929 (= (= lt!1897590 lt!1897028) (= lambda!217975 lambda!217882))))

(assert (=> bs!1122875 (= (= lt!1897590 lt!1897094) (= lambda!217975 lambda!217906))))

(assert (=> bs!1122932 (= (= lt!1897590 lt!1896826) (= lambda!217975 lambda!217847))))

(assert (=> bs!1122934 (= (= lt!1897590 lt!1897090) (= lambda!217975 lambda!217907))))

(assert (=> bs!1122936 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217845))))

(assert (=> bs!1122938 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217830))))

(assert (=> bs!1122929 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217975 lambda!217880))))

(assert (=> bs!1122898 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217975 lambda!217921))))

(assert (=> bs!1122888 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217841))))

(assert (=> bs!1122891 (= (= lt!1897590 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217975 lambda!217949))))

(assert (=> bs!1122940 (= (= lt!1897590 lt!1896855) (= lambda!217975 lambda!217945))))

(assert (=> bs!1122942 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217975 lambda!217929))))

(assert (=> bs!1122910 (= (= lt!1897590 lt!1896706) (= lambda!217975 lambda!217821))))

(assert (=> bs!1122944 (not (= lambda!217975 lambda!217860))))

(assert (=> bs!1122946 (= (= lt!1897590 lt!1897285) (= lambda!217975 lambda!217926))))

(assert (=> bs!1122948 (= (= lt!1897590 lt!1896793) (= lambda!217975 lambda!217918))))

(assert (=> bs!1122949 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217840))))

(assert (=> bs!1122946 (= (= lt!1897590 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217975 lambda!217925))))

(assert (=> bs!1122952 (= (= lt!1897590 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217975 lambda!217946))))

(assert (=> bs!1122932 (= (= lt!1897590 lt!1896343) (= lambda!217975 lambda!217846))))

(assert (=> bs!1122955 (= (= lt!1897590 lt!1897024) (= lambda!217975 lambda!217883))))

(assert (=> bs!1122956 (= (= lt!1897590 lt!1897281) (= lambda!217975 lambda!217927))))

(assert (=> bs!1122897 (= (= lt!1897590 lt!1897337) (= lambda!217975 lambda!217940))))

(assert (=> b!4734635 (= (= lt!1897590 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217975 lambda!217973))))

(assert (=> b!4734635 true))

(declare-fun bs!1122964 () Bool)

(declare-fun d!1510404 () Bool)

(assert (= bs!1122964 (and d!1510404 b!4733999)))

(declare-fun lambda!217977 () Int)

(declare-fun lt!1897586 () ListMap!5341)

(assert (=> bs!1122964 (= (= lt!1897586 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217977 lambda!217905))))

(declare-fun bs!1122965 () Bool)

(assert (= bs!1122965 (and d!1510404 b!4734500)))

(assert (=> bs!1122965 (= (= lt!1897586 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217977 lambda!217958))))

(declare-fun bs!1122966 () Bool)

(assert (= bs!1122966 (and d!1510404 b!4733537)))

(assert (=> bs!1122966 (= (= lt!1897586 lt!1896756) (= lambda!217977 lambda!217834))))

(declare-fun bs!1122967 () Bool)

(assert (= bs!1122967 (and d!1510404 b!4733594)))

(assert (=> bs!1122967 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217850))))

(declare-fun bs!1122969 () Bool)

(assert (= bs!1122969 (and d!1510404 b!4734383)))

(assert (=> bs!1122969 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217977 lambda!217930))))

(declare-fun bs!1122972 () Bool)

(assert (= bs!1122972 (and d!1510404 b!4734637)))

(assert (=> bs!1122972 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217977 lambda!217971))))

(assert (=> bs!1122969 (= (= lt!1897586 lt!1897341) (= lambda!217977 lambda!217931))))

(declare-fun bs!1122974 () Bool)

(assert (= bs!1122974 (and d!1510404 b!4733550)))

(assert (=> bs!1122974 (= (= lt!1897586 lt!1896793) (= lambda!217977 lambda!217843))))

(declare-fun bs!1122975 () Bool)

(assert (= bs!1122975 (and d!1510404 b!4733596)))

(assert (=> bs!1122975 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217849))))

(declare-fun bs!1122977 () Bool)

(assert (= bs!1122977 (and d!1510404 b!4734473)))

(assert (=> bs!1122977 (= (= lt!1897586 lt!1897425) (= lambda!217977 lambda!217951))))

(declare-fun bs!1122978 () Bool)

(assert (= bs!1122978 (and d!1510404 d!1509730)))

(assert (=> bs!1122978 (= (= lt!1897586 lt!1896702) (= lambda!217977 lambda!217822))))

(declare-fun bs!1122980 () Bool)

(assert (= bs!1122980 (and d!1510404 d!1510296)))

(assert (=> bs!1122980 (= (= lt!1897586 lt!1897465) (= lambda!217977 lambda!217960))))

(declare-fun bs!1122982 () Bool)

(assert (= bs!1122982 (and d!1510404 b!4734263)))

(assert (=> bs!1122982 (= (= lt!1897586 lt!1897244) (= lambda!217977 lambda!217922))))

(declare-fun bs!1122984 () Bool)

(assert (= bs!1122984 (and d!1510404 d!1509876)))

(assert (=> bs!1122984 (not (= lambda!217977 lambda!217862))))

(declare-fun bs!1122986 () Bool)

(assert (= bs!1122986 (and d!1510404 b!4733900)))

(assert (=> bs!1122986 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217977 lambda!217877))))

(declare-fun bs!1122988 () Bool)

(assert (= bs!1122988 (and d!1510404 d!1509984)))

(assert (=> bs!1122988 (= (= lt!1897586 lt!1896826) (= lambda!217977 lambda!217876))))

(assert (=> bs!1122966 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217833))))

(declare-fun bs!1122990 () Bool)

(assert (= bs!1122990 (and d!1510404 b!4734265)))

(assert (=> bs!1122990 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217977 lambda!217920))))

(declare-fun bs!1122992 () Bool)

(assert (= bs!1122992 (and d!1510404 d!1509818)))

(assert (=> bs!1122992 (= (= lt!1897586 lt!1896752) (= lambda!217977 lambda!217839))))

(declare-fun bs!1122994 () Bool)

(assert (= bs!1122994 (and d!1510404 d!1510190)))

(assert (=> bs!1122994 (= (= lt!1897586 lt!1897240) (= lambda!217977 lambda!217923))))

(declare-fun bs!1122997 () Bool)

(assert (= bs!1122997 (and d!1510404 b!4733502)))

(assert (=> bs!1122997 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217819))))

(declare-fun bs!1122999 () Bool)

(assert (= bs!1122999 (and d!1510404 b!4733500)))

(assert (=> bs!1122999 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217820))))

(declare-fun bs!1123000 () Bool)

(assert (= bs!1123000 (and d!1510404 d!1510280)))

(assert (=> bs!1123000 (= (= lt!1897586 lt!1897421) (= lambda!217977 lambda!217954))))

(declare-fun bs!1123002 () Bool)

(assert (= bs!1123002 (and d!1510404 d!1509820)))

(assert (=> bs!1123002 (= (= lt!1897586 lt!1896789) (= lambda!217977 lambda!217844))))

(assert (=> bs!1122967 (= (= lt!1897586 lt!1896855) (= lambda!217977 lambda!217851))))

(assert (=> bs!1122965 (= (= lt!1897586 lt!1897469) (= lambda!217977 lambda!217959))))

(declare-fun bs!1123006 () Bool)

(assert (= bs!1123006 (and d!1510404 d!1510386)))

(assert (=> bs!1123006 (= (= lt!1897586 lt!1896706) (= lambda!217977 lambda!217970))))

(declare-fun bs!1123008 () Bool)

(assert (= bs!1123008 (and d!1510404 d!1509826)))

(assert (=> bs!1123008 (= (= lt!1897586 lt!1896822) (= lambda!217977 lambda!217848))))

(declare-fun bs!1123009 () Bool)

(assert (= bs!1123009 (and d!1510404 b!4734001)))

(assert (=> bs!1123009 (= (= lt!1897586 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217977 lambda!217904))))

(declare-fun bs!1123011 () Bool)

(assert (= bs!1123011 (and d!1510404 b!4734302)))

(assert (=> bs!1123011 (= (= lt!1897586 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217977 lambda!217924))))

(declare-fun bs!1123013 () Bool)

(assert (= bs!1123013 (and d!1510404 d!1509834)))

(assert (=> bs!1123013 (= (= lt!1897586 lt!1896851) (= lambda!217977 lambda!217852))))

(declare-fun bs!1123014 () Bool)

(assert (= bs!1123014 (and d!1510404 d!1509926)))

(assert (=> bs!1123014 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217871))))

(declare-fun bs!1123016 () Bool)

(assert (= bs!1123016 (and d!1510404 b!4734502)))

(assert (=> bs!1123016 (= (= lt!1897586 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217977 lambda!217956))))

(declare-fun bs!1123018 () Bool)

(assert (= bs!1123018 (and d!1510404 b!4733898)))

(assert (=> bs!1123018 (= (= lt!1897586 lt!1897028) (= lambda!217977 lambda!217882))))

(assert (=> bs!1122964 (= (= lt!1897586 lt!1897094) (= lambda!217977 lambda!217906))))

(declare-fun bs!1123020 () Bool)

(assert (= bs!1123020 (and d!1510404 b!4733561)))

(assert (=> bs!1123020 (= (= lt!1897586 lt!1896826) (= lambda!217977 lambda!217847))))

(declare-fun bs!1123021 () Bool)

(assert (= bs!1123021 (and d!1510404 d!1510022)))

(assert (=> bs!1123021 (= (= lt!1897586 lt!1897090) (= lambda!217977 lambda!217907))))

(declare-fun bs!1123023 () Bool)

(assert (= bs!1123023 (and d!1510404 b!4733563)))

(assert (=> bs!1123023 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217845))))

(declare-fun bs!1123024 () Bool)

(assert (= bs!1123024 (and d!1510404 b!4733539)))

(assert (=> bs!1123024 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217830))))

(assert (=> bs!1123018 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217977 lambda!217880))))

(assert (=> bs!1122982 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217977 lambda!217921))))

(assert (=> bs!1122974 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217841))))

(assert (=> bs!1122977 (= (= lt!1897586 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217977 lambda!217949))))

(declare-fun bs!1123028 () Bool)

(assert (= bs!1123028 (and d!1510404 b!4734635)))

(assert (=> bs!1123028 (= (= lt!1897586 lt!1897590) (= lambda!217977 lambda!217975))))

(declare-fun bs!1123029 () Bool)

(assert (= bs!1123029 (and d!1510404 d!1510262)))

(assert (=> bs!1123029 (= (= lt!1897586 lt!1896855) (= lambda!217977 lambda!217945))))

(declare-fun bs!1123030 () Bool)

(assert (= bs!1123030 (and d!1510404 b!4734385)))

(assert (=> bs!1123030 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217977 lambda!217929))))

(assert (=> bs!1122999 (= (= lt!1897586 lt!1896706) (= lambda!217977 lambda!217821))))

(declare-fun bs!1123032 () Bool)

(assert (= bs!1123032 (and d!1510404 d!1509864)))

(assert (=> bs!1123032 (not (= lambda!217977 lambda!217860))))

(declare-fun bs!1123033 () Bool)

(assert (= bs!1123033 (and d!1510404 b!4734300)))

(assert (=> bs!1123033 (= (= lt!1897586 lt!1897285) (= lambda!217977 lambda!217926))))

(declare-fun bs!1123034 () Bool)

(assert (= bs!1123034 (and d!1510404 d!1510164)))

(assert (=> bs!1123034 (= (= lt!1897586 lt!1896793) (= lambda!217977 lambda!217918))))

(declare-fun bs!1123035 () Bool)

(assert (= bs!1123035 (and d!1510404 b!4733552)))

(assert (=> bs!1123035 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217840))))

(assert (=> bs!1123033 (= (= lt!1897586 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217977 lambda!217925))))

(declare-fun bs!1123036 () Bool)

(assert (= bs!1123036 (and d!1510404 b!4734475)))

(assert (=> bs!1123036 (= (= lt!1897586 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217977 lambda!217946))))

(assert (=> bs!1123020 (= (= lt!1897586 lt!1896343) (= lambda!217977 lambda!217846))))

(declare-fun bs!1123037 () Bool)

(assert (= bs!1123037 (and d!1510404 d!1509992)))

(assert (=> bs!1123037 (= (= lt!1897586 lt!1897024) (= lambda!217977 lambda!217883))))

(declare-fun bs!1123038 () Bool)

(assert (= bs!1123038 (and d!1510404 d!1510208)))

(assert (=> bs!1123038 (= (= lt!1897586 lt!1897281) (= lambda!217977 lambda!217927))))

(declare-fun bs!1123039 () Bool)

(assert (= bs!1123039 (and d!1510404 d!1510252)))

(assert (=> bs!1123039 (= (= lt!1897586 lt!1897337) (= lambda!217977 lambda!217940))))

(assert (=> bs!1123028 (= (= lt!1897586 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217977 lambda!217973))))

(assert (=> d!1510404 true))

(declare-fun call!331179 () Bool)

(declare-fun bm!331174 () Bool)

(declare-fun c!808634 () Bool)

(assert (=> bm!331174 (= call!331179 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (ite c!808634 lambda!217971 lambda!217975)))))

(declare-fun b!4734634 () Bool)

(declare-fun e!2953213 () Bool)

(assert (=> b!4734634 (= e!2953213 call!331179)))

(declare-fun bm!331175 () Bool)

(declare-fun call!331181 () Unit!131735)

(assert (=> bm!331175 (= call!331181 (lemmaContainsAllItsOwnKeys!820 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun call!331180 () Bool)

(declare-fun bm!331176 () Bool)

(assert (=> bm!331176 (= call!331180 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (ite c!808634 lambda!217971 lambda!217975)))))

(declare-fun e!2953211 () Bool)

(assert (=> d!1510404 e!2953211))

(declare-fun res!2004921 () Bool)

(assert (=> d!1510404 (=> (not res!2004921) (not e!2953211))))

(assert (=> d!1510404 (= res!2004921 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217977))))

(declare-fun e!2953212 () ListMap!5341)

(assert (=> d!1510404 (= lt!1897586 e!2953212)))

(assert (=> d!1510404 (= c!808634 ((_ is Nil!52913) (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(assert (=> d!1510404 (noDuplicateKeys!2044 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> d!1510404 (= (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lt!1897586)))

(assert (=> b!4734635 (= e!2953212 lt!1897590)))

(declare-fun lt!1897581 () ListMap!5341)

(assert (=> b!4734635 (= lt!1897581 (+!2292 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> b!4734635 (= lt!1897590 (addToMapMapFromBucket!1474 (t!360317 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (+!2292 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(declare-fun lt!1897582 () Unit!131735)

(assert (=> b!4734635 (= lt!1897582 call!331181)))

(assert (=> b!4734635 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lambda!217973)))

(declare-fun lt!1897579 () Unit!131735)

(assert (=> b!4734635 (= lt!1897579 lt!1897582)))

(assert (=> b!4734635 (forall!11653 (toList!5978 lt!1897581) lambda!217975)))

(declare-fun lt!1897580 () Unit!131735)

(declare-fun Unit!132081 () Unit!131735)

(assert (=> b!4734635 (= lt!1897580 Unit!132081)))

(assert (=> b!4734635 (forall!11653 (t!360317 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lambda!217975)))

(declare-fun lt!1897576 () Unit!131735)

(declare-fun Unit!132082 () Unit!131735)

(assert (=> b!4734635 (= lt!1897576 Unit!132082)))

(declare-fun lt!1897591 () Unit!131735)

(declare-fun Unit!132083 () Unit!131735)

(assert (=> b!4734635 (= lt!1897591 Unit!132083)))

(declare-fun lt!1897573 () Unit!131735)

(assert (=> b!4734635 (= lt!1897573 (forallContained!3693 (toList!5978 lt!1897581) lambda!217975 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> b!4734635 (contains!16298 lt!1897581 (_1!30579 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897585 () Unit!131735)

(declare-fun Unit!132084 () Unit!131735)

(assert (=> b!4734635 (= lt!1897585 Unit!132084)))

(assert (=> b!4734635 (contains!16298 lt!1897590 (_1!30579 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun lt!1897587 () Unit!131735)

(declare-fun Unit!132085 () Unit!131735)

(assert (=> b!4734635 (= lt!1897587 Unit!132085)))

(assert (=> b!4734635 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217975)))

(declare-fun lt!1897589 () Unit!131735)

(declare-fun Unit!132086 () Unit!131735)

(assert (=> b!4734635 (= lt!1897589 Unit!132086)))

(assert (=> b!4734635 (forall!11653 (toList!5978 lt!1897581) lambda!217975)))

(declare-fun lt!1897577 () Unit!131735)

(declare-fun Unit!132088 () Unit!131735)

(assert (=> b!4734635 (= lt!1897577 Unit!132088)))

(declare-fun lt!1897572 () Unit!131735)

(declare-fun Unit!132089 () Unit!131735)

(assert (=> b!4734635 (= lt!1897572 Unit!132089)))

(declare-fun lt!1897574 () Unit!131735)

(assert (=> b!4734635 (= lt!1897574 (addForallContainsKeyThenBeforeAdding!819 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) lt!1897590 (_1!30579 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (_2!30579 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(assert (=> b!4734635 call!331180))

(declare-fun lt!1897583 () Unit!131735)

(assert (=> b!4734635 (= lt!1897583 lt!1897574)))

(assert (=> b!4734635 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lambda!217975)))

(declare-fun lt!1897571 () Unit!131735)

(declare-fun Unit!132090 () Unit!131735)

(assert (=> b!4734635 (= lt!1897571 Unit!132090)))

(declare-fun res!2004923 () Bool)

(assert (=> b!4734635 (= res!2004923 (forall!11653 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))) lambda!217975))))

(assert (=> b!4734635 (=> (not res!2004923) (not e!2953213))))

(assert (=> b!4734635 e!2953213))

(declare-fun lt!1897575 () Unit!131735)

(declare-fun Unit!132091 () Unit!131735)

(assert (=> b!4734635 (= lt!1897575 Unit!132091)))

(declare-fun b!4734636 () Bool)

(declare-fun res!2004922 () Bool)

(assert (=> b!4734636 (=> (not res!2004922) (not e!2953211))))

(assert (=> b!4734636 (= res!2004922 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) lambda!217977))))

(assert (=> b!4734637 (= e!2953212 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))

(declare-fun lt!1897584 () Unit!131735)

(assert (=> b!4734637 (= lt!1897584 call!331181)))

(assert (=> b!4734637 call!331180))

(declare-fun lt!1897588 () Unit!131735)

(assert (=> b!4734637 (= lt!1897588 lt!1897584)))

(assert (=> b!4734637 call!331179))

(declare-fun lt!1897578 () Unit!131735)

(declare-fun Unit!132092 () Unit!131735)

(assert (=> b!4734637 (= lt!1897578 Unit!132092)))

(declare-fun b!4734638 () Bool)

(assert (=> b!4734638 (= e!2953211 (invariantList!1535 (toList!5978 lt!1897586)))))

(assert (= (and d!1510404 c!808634) b!4734637))

(assert (= (and d!1510404 (not c!808634)) b!4734635))

(assert (= (and b!4734635 res!2004923) b!4734634))

(assert (= (or b!4734637 b!4734635) bm!331175))

(assert (= (or b!4734637 b!4734635) bm!331176))

(assert (= (or b!4734637 b!4734634) bm!331174))

(assert (= (and d!1510404 res!2004921) b!4734636))

(assert (= (and b!4734636 res!2004922) b!4734638))

(declare-fun m!5679499 () Bool)

(assert (=> bm!331174 m!5679499))

(declare-fun m!5679501 () Bool)

(assert (=> d!1510404 m!5679501))

(assert (=> d!1510404 m!5678135))

(assert (=> bm!331175 m!5677127))

(declare-fun m!5679503 () Bool)

(assert (=> bm!331175 m!5679503))

(declare-fun m!5679505 () Bool)

(assert (=> b!4734635 m!5679505))

(declare-fun m!5679507 () Bool)

(assert (=> b!4734635 m!5679507))

(declare-fun m!5679509 () Bool)

(assert (=> b!4734635 m!5679509))

(declare-fun m!5679511 () Bool)

(assert (=> b!4734635 m!5679511))

(declare-fun m!5679513 () Bool)

(assert (=> b!4734635 m!5679513))

(declare-fun m!5679515 () Bool)

(assert (=> b!4734635 m!5679515))

(declare-fun m!5679517 () Bool)

(assert (=> b!4734635 m!5679517))

(assert (=> b!4734635 m!5679505))

(assert (=> b!4734635 m!5677127))

(declare-fun m!5679519 () Bool)

(assert (=> b!4734635 m!5679519))

(declare-fun m!5679521 () Bool)

(assert (=> b!4734635 m!5679521))

(assert (=> b!4734635 m!5679511))

(assert (=> b!4734635 m!5677127))

(declare-fun m!5679523 () Bool)

(assert (=> b!4734635 m!5679523))

(assert (=> b!4734635 m!5679519))

(declare-fun m!5679525 () Bool)

(assert (=> b!4734635 m!5679525))

(declare-fun m!5679527 () Bool)

(assert (=> b!4734636 m!5679527))

(assert (=> bm!331176 m!5679499))

(declare-fun m!5679529 () Bool)

(assert (=> b!4734638 m!5679529))

(assert (=> b!4733500 d!1510404))

(assert (=> b!4733343 d!1510214))

(assert (=> d!1509722 d!1509884))

(declare-fun d!1510424 () Bool)

(declare-fun c!808643 () Bool)

(assert (=> d!1510424 (= c!808643 ((_ is Nil!52913) (toList!5978 (+!2292 lt!1896340 lt!1896347))))))

(declare-fun e!2953236 () (InoxSet tuple2!54570))

(assert (=> d!1510424 (= (content!9440 (toList!5978 (+!2292 lt!1896340 lt!1896347))) e!2953236)))

(declare-fun b!4734670 () Bool)

(assert (=> b!4734670 (= e!2953236 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4734671 () Bool)

(assert (=> b!4734671 (= e!2953236 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 (+!2292 lt!1896340 lt!1896347))) true) (content!9440 (t!360317 (toList!5978 (+!2292 lt!1896340 lt!1896347))))))))

(assert (= (and d!1510424 c!808643) b!4734670))

(assert (= (and d!1510424 (not c!808643)) b!4734671))

(declare-fun m!5679531 () Bool)

(assert (=> b!4734671 m!5679531))

(declare-fun m!5679533 () Bool)

(assert (=> b!4734671 m!5679533))

(assert (=> d!1509722 d!1510424))

(declare-fun b!4734672 () Bool)

(declare-fun e!2953241 () Unit!131735)

(declare-fun lt!1897635 () Unit!131735)

(assert (=> b!4734672 (= e!2953241 lt!1897635)))

(declare-fun lt!1897631 () Unit!131735)

(assert (=> b!4734672 (= lt!1897631 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653))))

(assert (=> b!4734672 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653))))

(declare-fun lt!1897634 () Unit!131735)

(assert (=> b!4734672 (= lt!1897634 lt!1897631)))

(assert (=> b!4734672 (= lt!1897635 (lemmaInListThenGetKeysListContains!969 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653))))

(declare-fun call!331187 () Bool)

(assert (=> b!4734672 call!331187))

(declare-fun b!4734673 () Bool)

(declare-fun e!2953238 () List!53040)

(assert (=> b!4734673 (= e!2953238 (keys!19029 (extractMap!2070 (toList!5977 lm!2023))))))

(declare-fun b!4734674 () Bool)

(declare-fun e!2953239 () Bool)

(assert (=> b!4734674 (= e!2953239 (contains!16302 (keys!19029 (extractMap!2070 (toList!5977 lm!2023))) key!4653))))

(declare-fun b!4734675 () Bool)

(declare-fun e!2953237 () Bool)

(assert (=> b!4734675 (= e!2953237 e!2953239)))

(declare-fun res!2004941 () Bool)

(assert (=> b!4734675 (=> (not res!2004941) (not e!2953239))))

(assert (=> b!4734675 (= res!2004941 (isDefined!9680 (getValueByKey!2000 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653)))))

(declare-fun b!4734676 () Bool)

(assert (=> b!4734676 false))

(declare-fun lt!1897630 () Unit!131735)

(declare-fun lt!1897636 () Unit!131735)

(assert (=> b!4734676 (= lt!1897630 lt!1897636)))

(assert (=> b!4734676 (containsKey!3440 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653)))

(assert (=> b!4734676 (= lt!1897636 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653))))

(declare-fun e!2953242 () Unit!131735)

(declare-fun Unit!132094 () Unit!131735)

(assert (=> b!4734676 (= e!2953242 Unit!132094)))

(declare-fun bm!331182 () Bool)

(assert (=> bm!331182 (= call!331187 (contains!16302 e!2953238 key!4653))))

(declare-fun c!808644 () Bool)

(declare-fun c!808645 () Bool)

(assert (=> bm!331182 (= c!808644 c!808645)))

(declare-fun d!1510426 () Bool)

(assert (=> d!1510426 e!2953237))

(declare-fun res!2004939 () Bool)

(assert (=> d!1510426 (=> res!2004939 e!2953237)))

(declare-fun e!2953240 () Bool)

(assert (=> d!1510426 (= res!2004939 e!2953240)))

(declare-fun res!2004940 () Bool)

(assert (=> d!1510426 (=> (not res!2004940) (not e!2953240))))

(declare-fun lt!1897633 () Bool)

(assert (=> d!1510426 (= res!2004940 (not lt!1897633))))

(declare-fun lt!1897632 () Bool)

(assert (=> d!1510426 (= lt!1897633 lt!1897632)))

(declare-fun lt!1897637 () Unit!131735)

(assert (=> d!1510426 (= lt!1897637 e!2953241)))

(assert (=> d!1510426 (= c!808645 lt!1897632)))

(assert (=> d!1510426 (= lt!1897632 (containsKey!3440 (toList!5978 (extractMap!2070 (toList!5977 lm!2023))) key!4653))))

(assert (=> d!1510426 (= (contains!16298 (extractMap!2070 (toList!5977 lm!2023)) key!4653) lt!1897633)))

(declare-fun b!4734677 () Bool)

(assert (=> b!4734677 (= e!2953238 (getKeysList!974 (toList!5978 (extractMap!2070 (toList!5977 lm!2023)))))))

(declare-fun b!4734678 () Bool)

(assert (=> b!4734678 (= e!2953241 e!2953242)))

(declare-fun c!808646 () Bool)

(assert (=> b!4734678 (= c!808646 call!331187)))

(declare-fun b!4734679 () Bool)

(declare-fun Unit!132095 () Unit!131735)

(assert (=> b!4734679 (= e!2953242 Unit!132095)))

(declare-fun b!4734680 () Bool)

(assert (=> b!4734680 (= e!2953240 (not (contains!16302 (keys!19029 (extractMap!2070 (toList!5977 lm!2023))) key!4653)))))

(assert (= (and d!1510426 c!808645) b!4734672))

(assert (= (and d!1510426 (not c!808645)) b!4734678))

(assert (= (and b!4734678 c!808646) b!4734676))

(assert (= (and b!4734678 (not c!808646)) b!4734679))

(assert (= (or b!4734672 b!4734678) bm!331182))

(assert (= (and bm!331182 c!808644) b!4734677))

(assert (= (and bm!331182 (not c!808644)) b!4734673))

(assert (= (and d!1510426 res!2004940) b!4734680))

(assert (= (and d!1510426 (not res!2004939)) b!4734675))

(assert (= (and b!4734675 res!2004941) b!4734674))

(declare-fun m!5679535 () Bool)

(assert (=> b!4734677 m!5679535))

(declare-fun m!5679537 () Bool)

(assert (=> b!4734672 m!5679537))

(declare-fun m!5679539 () Bool)

(assert (=> b!4734672 m!5679539))

(assert (=> b!4734672 m!5679539))

(declare-fun m!5679541 () Bool)

(assert (=> b!4734672 m!5679541))

(declare-fun m!5679543 () Bool)

(assert (=> b!4734672 m!5679543))

(declare-fun m!5679545 () Bool)

(assert (=> d!1510426 m!5679545))

(declare-fun m!5679547 () Bool)

(assert (=> bm!331182 m!5679547))

(assert (=> b!4734673 m!5676549))

(declare-fun m!5679549 () Bool)

(assert (=> b!4734673 m!5679549))

(assert (=> b!4734675 m!5679539))

(assert (=> b!4734675 m!5679539))

(assert (=> b!4734675 m!5679541))

(assert (=> b!4734680 m!5676549))

(assert (=> b!4734680 m!5679549))

(assert (=> b!4734680 m!5679549))

(declare-fun m!5679551 () Bool)

(assert (=> b!4734680 m!5679551))

(assert (=> b!4734676 m!5679545))

(declare-fun m!5679553 () Bool)

(assert (=> b!4734676 m!5679553))

(assert (=> b!4734674 m!5676549))

(assert (=> b!4734674 m!5679549))

(assert (=> b!4734674 m!5679549))

(assert (=> b!4734674 m!5679551))

(assert (=> b!4733366 d!1510426))

(assert (=> b!4733366 d!1509868))

(declare-fun d!1510428 () Bool)

(assert (=> d!1510428 (= (invariantList!1535 (toList!5978 lt!1896789)) (noDuplicatedKeys!384 (toList!5978 lt!1896789)))))

(declare-fun bs!1123068 () Bool)

(assert (= bs!1123068 d!1510428))

(declare-fun m!5679555 () Bool)

(assert (=> bs!1123068 m!5679555))

(assert (=> b!4733553 d!1510428))

(assert (=> b!4733659 d!1510094))

(assert (=> b!4733659 d!1510096))

(declare-fun d!1510430 () Bool)

(declare-fun lt!1897638 () List!53037)

(assert (=> d!1510430 (not (containsKey!3437 lt!1897638 key!4653))))

(declare-fun e!2953244 () List!53037)

(assert (=> d!1510430 (= lt!1897638 e!2953244)))

(declare-fun c!808647 () Bool)

(assert (=> d!1510430 (= c!808647 (and ((_ is Cons!52913) (t!360317 (t!360317 oldBucket!34))) (= (_1!30579 (h!59284 (t!360317 (t!360317 oldBucket!34)))) key!4653)))))

(assert (=> d!1510430 (noDuplicateKeys!2044 (t!360317 (t!360317 oldBucket!34)))))

(assert (=> d!1510430 (= (removePairForKey!1639 (t!360317 (t!360317 oldBucket!34)) key!4653) lt!1897638)))

(declare-fun b!4734681 () Bool)

(assert (=> b!4734681 (= e!2953244 (t!360317 (t!360317 (t!360317 oldBucket!34))))))

(declare-fun b!4734682 () Bool)

(declare-fun e!2953243 () List!53037)

(assert (=> b!4734682 (= e!2953244 e!2953243)))

(declare-fun c!808648 () Bool)

(assert (=> b!4734682 (= c!808648 ((_ is Cons!52913) (t!360317 (t!360317 oldBucket!34))))))

(declare-fun b!4734683 () Bool)

(assert (=> b!4734683 (= e!2953243 (Cons!52913 (h!59284 (t!360317 (t!360317 oldBucket!34))) (removePairForKey!1639 (t!360317 (t!360317 (t!360317 oldBucket!34))) key!4653)))))

(declare-fun b!4734684 () Bool)

(assert (=> b!4734684 (= e!2953243 Nil!52913)))

(assert (= (and d!1510430 c!808647) b!4734681))

(assert (= (and d!1510430 (not c!808647)) b!4734682))

(assert (= (and b!4734682 c!808648) b!4734683))

(assert (= (and b!4734682 (not c!808648)) b!4734684))

(declare-fun m!5679557 () Bool)

(assert (=> d!1510430 m!5679557))

(assert (=> d!1510430 m!5678721))

(declare-fun m!5679559 () Bool)

(assert (=> b!4734683 m!5679559))

(assert (=> b!4733266 d!1510430))

(declare-fun d!1510432 () Bool)

(declare-fun res!2004942 () Bool)

(declare-fun e!2953245 () Bool)

(assert (=> d!1510432 (=> res!2004942 e!2953245)))

(assert (=> d!1510432 (= res!2004942 ((_ is Nil!52913) newBucket!218))))

(assert (=> d!1510432 (= (forall!11653 newBucket!218 lambda!217862) e!2953245)))

(declare-fun b!4734685 () Bool)

(declare-fun e!2953246 () Bool)

(assert (=> b!4734685 (= e!2953245 e!2953246)))

(declare-fun res!2004943 () Bool)

(assert (=> b!4734685 (=> (not res!2004943) (not e!2953246))))

(assert (=> b!4734685 (= res!2004943 (dynLambda!21858 lambda!217862 (h!59284 newBucket!218)))))

(declare-fun b!4734686 () Bool)

(assert (=> b!4734686 (= e!2953246 (forall!11653 (t!360317 newBucket!218) lambda!217862))))

(assert (= (and d!1510432 (not res!2004942)) b!4734685))

(assert (= (and b!4734685 res!2004943) b!4734686))

(declare-fun b_lambda!180795 () Bool)

(assert (=> (not b_lambda!180795) (not b!4734685)))

(declare-fun m!5679561 () Bool)

(assert (=> b!4734685 m!5679561))

(declare-fun m!5679563 () Bool)

(assert (=> b!4734686 m!5679563))

(assert (=> d!1509876 d!1510432))

(assert (=> bm!331076 d!1509926))

(assert (=> b!4733669 d!1509662))

(declare-fun d!1510434 () Bool)

(declare-fun res!2004944 () Bool)

(declare-fun e!2953247 () Bool)

(assert (=> d!1510434 (=> res!2004944 e!2953247)))

(assert (=> d!1510434 (= res!2004944 ((_ is Nil!52913) (toList!5978 lt!1896747)))))

(assert (=> d!1510434 (= (forall!11653 (toList!5978 lt!1896747) lambda!217834) e!2953247)))

(declare-fun b!4734687 () Bool)

(declare-fun e!2953248 () Bool)

(assert (=> b!4734687 (= e!2953247 e!2953248)))

(declare-fun res!2004945 () Bool)

(assert (=> b!4734687 (=> (not res!2004945) (not e!2953248))))

(assert (=> b!4734687 (= res!2004945 (dynLambda!21858 lambda!217834 (h!59284 (toList!5978 lt!1896747))))))

(declare-fun b!4734688 () Bool)

(assert (=> b!4734688 (= e!2953248 (forall!11653 (t!360317 (toList!5978 lt!1896747)) lambda!217834))))

(assert (= (and d!1510434 (not res!2004944)) b!4734687))

(assert (= (and b!4734687 res!2004945) b!4734688))

(declare-fun b_lambda!180797 () Bool)

(assert (=> (not b_lambda!180797) (not b!4734687)))

(declare-fun m!5679565 () Bool)

(assert (=> b!4734687 m!5679565))

(declare-fun m!5679569 () Bool)

(assert (=> b!4734688 m!5679569))

(assert (=> b!4733537 d!1510434))

(declare-fun bs!1123074 () Bool)

(declare-fun d!1510436 () Bool)

(assert (= bs!1123074 (and d!1510436 b!4733999)))

(declare-fun lambda!217980 () Int)

(assert (=> bs!1123074 (= (= lt!1896756 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217980 lambda!217905))))

(declare-fun bs!1123075 () Bool)

(assert (= bs!1123075 (and d!1510436 b!4734500)))

(assert (=> bs!1123075 (= (= lt!1896756 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217980 lambda!217958))))

(declare-fun bs!1123076 () Bool)

(assert (= bs!1123076 (and d!1510436 b!4733537)))

(assert (=> bs!1123076 (= lambda!217980 lambda!217834)))

(declare-fun bs!1123077 () Bool)

(assert (= bs!1123077 (and d!1510436 b!4734383)))

(assert (=> bs!1123077 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217980 lambda!217930))))

(declare-fun bs!1123078 () Bool)

(assert (= bs!1123078 (and d!1510436 b!4734637)))

(assert (=> bs!1123078 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217980 lambda!217971))))

(assert (=> bs!1123077 (= (= lt!1896756 lt!1897341) (= lambda!217980 lambda!217931))))

(declare-fun bs!1123079 () Bool)

(assert (= bs!1123079 (and d!1510436 b!4733550)))

(assert (=> bs!1123079 (= (= lt!1896756 lt!1896793) (= lambda!217980 lambda!217843))))

(declare-fun bs!1123080 () Bool)

(assert (= bs!1123080 (and d!1510436 b!4733596)))

(assert (=> bs!1123080 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217849))))

(declare-fun bs!1123081 () Bool)

(assert (= bs!1123081 (and d!1510436 b!4734473)))

(assert (=> bs!1123081 (= (= lt!1896756 lt!1897425) (= lambda!217980 lambda!217951))))

(declare-fun bs!1123082 () Bool)

(assert (= bs!1123082 (and d!1510436 d!1509730)))

(assert (=> bs!1123082 (= (= lt!1896756 lt!1896702) (= lambda!217980 lambda!217822))))

(declare-fun bs!1123083 () Bool)

(assert (= bs!1123083 (and d!1510436 d!1510296)))

(assert (=> bs!1123083 (= (= lt!1896756 lt!1897465) (= lambda!217980 lambda!217960))))

(declare-fun bs!1123084 () Bool)

(assert (= bs!1123084 (and d!1510436 b!4734263)))

(assert (=> bs!1123084 (= (= lt!1896756 lt!1897244) (= lambda!217980 lambda!217922))))

(declare-fun bs!1123085 () Bool)

(assert (= bs!1123085 (and d!1510436 d!1509876)))

(assert (=> bs!1123085 (not (= lambda!217980 lambda!217862))))

(declare-fun bs!1123086 () Bool)

(assert (= bs!1123086 (and d!1510436 b!4733900)))

(assert (=> bs!1123086 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217980 lambda!217877))))

(declare-fun bs!1123087 () Bool)

(assert (= bs!1123087 (and d!1510436 d!1509984)))

(assert (=> bs!1123087 (= (= lt!1896756 lt!1896826) (= lambda!217980 lambda!217876))))

(assert (=> bs!1123076 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217833))))

(declare-fun bs!1123088 () Bool)

(assert (= bs!1123088 (and d!1510436 b!4734265)))

(assert (=> bs!1123088 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217980 lambda!217920))))

(declare-fun bs!1123089 () Bool)

(assert (= bs!1123089 (and d!1510436 d!1509818)))

(assert (=> bs!1123089 (= (= lt!1896756 lt!1896752) (= lambda!217980 lambda!217839))))

(declare-fun bs!1123090 () Bool)

(assert (= bs!1123090 (and d!1510436 d!1510190)))

(assert (=> bs!1123090 (= (= lt!1896756 lt!1897240) (= lambda!217980 lambda!217923))))

(declare-fun bs!1123091 () Bool)

(assert (= bs!1123091 (and d!1510436 b!4733502)))

(assert (=> bs!1123091 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217819))))

(declare-fun bs!1123092 () Bool)

(assert (= bs!1123092 (and d!1510436 b!4733500)))

(assert (=> bs!1123092 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217820))))

(declare-fun bs!1123093 () Bool)

(assert (= bs!1123093 (and d!1510436 b!4733594)))

(assert (=> bs!1123093 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217850))))

(declare-fun bs!1123094 () Bool)

(assert (= bs!1123094 (and d!1510436 d!1510404)))

(assert (=> bs!1123094 (= (= lt!1896756 lt!1897586) (= lambda!217980 lambda!217977))))

(declare-fun bs!1123095 () Bool)

(assert (= bs!1123095 (and d!1510436 d!1510280)))

(assert (=> bs!1123095 (= (= lt!1896756 lt!1897421) (= lambda!217980 lambda!217954))))

(declare-fun bs!1123096 () Bool)

(assert (= bs!1123096 (and d!1510436 d!1509820)))

(assert (=> bs!1123096 (= (= lt!1896756 lt!1896789) (= lambda!217980 lambda!217844))))

(assert (=> bs!1123093 (= (= lt!1896756 lt!1896855) (= lambda!217980 lambda!217851))))

(assert (=> bs!1123075 (= (= lt!1896756 lt!1897469) (= lambda!217980 lambda!217959))))

(declare-fun bs!1123097 () Bool)

(assert (= bs!1123097 (and d!1510436 d!1510386)))

(assert (=> bs!1123097 (= (= lt!1896756 lt!1896706) (= lambda!217980 lambda!217970))))

(declare-fun bs!1123098 () Bool)

(assert (= bs!1123098 (and d!1510436 d!1509826)))

(assert (=> bs!1123098 (= (= lt!1896756 lt!1896822) (= lambda!217980 lambda!217848))))

(declare-fun bs!1123099 () Bool)

(assert (= bs!1123099 (and d!1510436 b!4734001)))

(assert (=> bs!1123099 (= (= lt!1896756 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217980 lambda!217904))))

(declare-fun bs!1123100 () Bool)

(assert (= bs!1123100 (and d!1510436 b!4734302)))

(assert (=> bs!1123100 (= (= lt!1896756 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217980 lambda!217924))))

(declare-fun bs!1123101 () Bool)

(assert (= bs!1123101 (and d!1510436 d!1509834)))

(assert (=> bs!1123101 (= (= lt!1896756 lt!1896851) (= lambda!217980 lambda!217852))))

(declare-fun bs!1123102 () Bool)

(assert (= bs!1123102 (and d!1510436 d!1509926)))

(assert (=> bs!1123102 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217871))))

(declare-fun bs!1123103 () Bool)

(assert (= bs!1123103 (and d!1510436 b!4734502)))

(assert (=> bs!1123103 (= (= lt!1896756 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217980 lambda!217956))))

(declare-fun bs!1123104 () Bool)

(assert (= bs!1123104 (and d!1510436 b!4733898)))

(assert (=> bs!1123104 (= (= lt!1896756 lt!1897028) (= lambda!217980 lambda!217882))))

(assert (=> bs!1123074 (= (= lt!1896756 lt!1897094) (= lambda!217980 lambda!217906))))

(declare-fun bs!1123106 () Bool)

(assert (= bs!1123106 (and d!1510436 b!4733561)))

(assert (=> bs!1123106 (= (= lt!1896756 lt!1896826) (= lambda!217980 lambda!217847))))

(declare-fun bs!1123109 () Bool)

(assert (= bs!1123109 (and d!1510436 d!1510022)))

(assert (=> bs!1123109 (= (= lt!1896756 lt!1897090) (= lambda!217980 lambda!217907))))

(declare-fun bs!1123110 () Bool)

(assert (= bs!1123110 (and d!1510436 b!4733563)))

(assert (=> bs!1123110 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217845))))

(declare-fun bs!1123112 () Bool)

(assert (= bs!1123112 (and d!1510436 b!4733539)))

(assert (=> bs!1123112 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217830))))

(assert (=> bs!1123104 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217980 lambda!217880))))

(assert (=> bs!1123084 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217980 lambda!217921))))

(assert (=> bs!1123079 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217841))))

(assert (=> bs!1123081 (= (= lt!1896756 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217980 lambda!217949))))

(declare-fun bs!1123117 () Bool)

(assert (= bs!1123117 (and d!1510436 b!4734635)))

(assert (=> bs!1123117 (= (= lt!1896756 lt!1897590) (= lambda!217980 lambda!217975))))

(declare-fun bs!1123119 () Bool)

(assert (= bs!1123119 (and d!1510436 d!1510262)))

(assert (=> bs!1123119 (= (= lt!1896756 lt!1896855) (= lambda!217980 lambda!217945))))

(declare-fun bs!1123120 () Bool)

(assert (= bs!1123120 (and d!1510436 b!4734385)))

(assert (=> bs!1123120 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217980 lambda!217929))))

(assert (=> bs!1123092 (= (= lt!1896756 lt!1896706) (= lambda!217980 lambda!217821))))

(declare-fun bs!1123122 () Bool)

(assert (= bs!1123122 (and d!1510436 d!1509864)))

(assert (=> bs!1123122 (not (= lambda!217980 lambda!217860))))

(declare-fun bs!1123124 () Bool)

(assert (= bs!1123124 (and d!1510436 b!4734300)))

(assert (=> bs!1123124 (= (= lt!1896756 lt!1897285) (= lambda!217980 lambda!217926))))

(declare-fun bs!1123125 () Bool)

(assert (= bs!1123125 (and d!1510436 d!1510164)))

(assert (=> bs!1123125 (= (= lt!1896756 lt!1896793) (= lambda!217980 lambda!217918))))

(declare-fun bs!1123127 () Bool)

(assert (= bs!1123127 (and d!1510436 b!4733552)))

(assert (=> bs!1123127 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217840))))

(assert (=> bs!1123124 (= (= lt!1896756 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217980 lambda!217925))))

(declare-fun bs!1123129 () Bool)

(assert (= bs!1123129 (and d!1510436 b!4734475)))

(assert (=> bs!1123129 (= (= lt!1896756 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217980 lambda!217946))))

(assert (=> bs!1123106 (= (= lt!1896756 lt!1896343) (= lambda!217980 lambda!217846))))

(declare-fun bs!1123132 () Bool)

(assert (= bs!1123132 (and d!1510436 d!1509992)))

(assert (=> bs!1123132 (= (= lt!1896756 lt!1897024) (= lambda!217980 lambda!217883))))

(declare-fun bs!1123134 () Bool)

(assert (= bs!1123134 (and d!1510436 d!1510208)))

(assert (=> bs!1123134 (= (= lt!1896756 lt!1897281) (= lambda!217980 lambda!217927))))

(declare-fun bs!1123135 () Bool)

(assert (= bs!1123135 (and d!1510436 d!1510252)))

(assert (=> bs!1123135 (= (= lt!1896756 lt!1897337) (= lambda!217980 lambda!217940))))

(assert (=> bs!1123117 (= (= lt!1896756 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217980 lambda!217973))))

(assert (=> d!1510436 true))

(assert (=> d!1510436 (forall!11653 (toList!5978 lt!1896343) lambda!217980)))

(declare-fun lt!1897639 () Unit!131735)

(assert (=> d!1510436 (= lt!1897639 (choose!33535 lt!1896343 lt!1896756 (_1!30579 (h!59284 lt!1896336)) (_2!30579 (h!59284 lt!1896336))))))

(assert (=> d!1510436 (forall!11653 (toList!5978 (+!2292 lt!1896343 (tuple2!54571 (_1!30579 (h!59284 lt!1896336)) (_2!30579 (h!59284 lt!1896336))))) lambda!217980)))

(assert (=> d!1510436 (= (addForallContainsKeyThenBeforeAdding!819 lt!1896343 lt!1896756 (_1!30579 (h!59284 lt!1896336)) (_2!30579 (h!59284 lt!1896336))) lt!1897639)))

(declare-fun bs!1123141 () Bool)

(assert (= bs!1123141 d!1510436))

(declare-fun m!5679609 () Bool)

(assert (=> bs!1123141 m!5679609))

(declare-fun m!5679611 () Bool)

(assert (=> bs!1123141 m!5679611))

(declare-fun m!5679613 () Bool)

(assert (=> bs!1123141 m!5679613))

(declare-fun m!5679615 () Bool)

(assert (=> bs!1123141 m!5679615))

(assert (=> b!4733537 d!1510436))

(declare-fun b!4734704 () Bool)

(declare-fun e!2953265 () Unit!131735)

(declare-fun lt!1897672 () Unit!131735)

(assert (=> b!4734704 (= e!2953265 lt!1897672)))

(declare-fun lt!1897668 () Unit!131735)

(assert (=> b!4734704 (= lt!1897668 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336))))))

(assert (=> b!4734704 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun lt!1897671 () Unit!131735)

(assert (=> b!4734704 (= lt!1897671 lt!1897668)))

(assert (=> b!4734704 (= lt!1897672 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun call!331191 () Bool)

(assert (=> b!4734704 call!331191))

(declare-fun b!4734705 () Bool)

(declare-fun e!2953262 () List!53040)

(assert (=> b!4734705 (= e!2953262 (keys!19029 lt!1896756))))

(declare-fun b!4734706 () Bool)

(declare-fun e!2953263 () Bool)

(assert (=> b!4734706 (= e!2953263 (contains!16302 (keys!19029 lt!1896756) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun b!4734707 () Bool)

(declare-fun e!2953261 () Bool)

(assert (=> b!4734707 (= e!2953261 e!2953263)))

(declare-fun res!2004961 () Bool)

(assert (=> b!4734707 (=> (not res!2004961) (not e!2953263))))

(assert (=> b!4734707 (= res!2004961 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336)))))))

(declare-fun b!4734708 () Bool)

(assert (=> b!4734708 false))

(declare-fun lt!1897667 () Unit!131735)

(declare-fun lt!1897673 () Unit!131735)

(assert (=> b!4734708 (= lt!1897667 lt!1897673)))

(assert (=> b!4734708 (containsKey!3440 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336)))))

(assert (=> b!4734708 (= lt!1897673 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun e!2953266 () Unit!131735)

(declare-fun Unit!132096 () Unit!131735)

(assert (=> b!4734708 (= e!2953266 Unit!132096)))

(declare-fun bm!331186 () Bool)

(assert (=> bm!331186 (= call!331191 (contains!16302 e!2953262 (_1!30579 (h!59284 lt!1896336))))))

(declare-fun c!808650 () Bool)

(declare-fun c!808651 () Bool)

(assert (=> bm!331186 (= c!808650 c!808651)))

(declare-fun d!1510452 () Bool)

(assert (=> d!1510452 e!2953261))

(declare-fun res!2004959 () Bool)

(assert (=> d!1510452 (=> res!2004959 e!2953261)))

(declare-fun e!2953264 () Bool)

(assert (=> d!1510452 (= res!2004959 e!2953264)))

(declare-fun res!2004960 () Bool)

(assert (=> d!1510452 (=> (not res!2004960) (not e!2953264))))

(declare-fun lt!1897670 () Bool)

(assert (=> d!1510452 (= res!2004960 (not lt!1897670))))

(declare-fun lt!1897669 () Bool)

(assert (=> d!1510452 (= lt!1897670 lt!1897669)))

(declare-fun lt!1897674 () Unit!131735)

(assert (=> d!1510452 (= lt!1897674 e!2953265)))

(assert (=> d!1510452 (= c!808651 lt!1897669)))

(assert (=> d!1510452 (= lt!1897669 (containsKey!3440 (toList!5978 lt!1896756) (_1!30579 (h!59284 lt!1896336))))))

(assert (=> d!1510452 (= (contains!16298 lt!1896756 (_1!30579 (h!59284 lt!1896336))) lt!1897670)))

(declare-fun b!4734709 () Bool)

(assert (=> b!4734709 (= e!2953262 (getKeysList!974 (toList!5978 lt!1896756)))))

(declare-fun b!4734710 () Bool)

(assert (=> b!4734710 (= e!2953265 e!2953266)))

(declare-fun c!808652 () Bool)

(assert (=> b!4734710 (= c!808652 call!331191)))

(declare-fun b!4734711 () Bool)

(declare-fun Unit!132097 () Unit!131735)

(assert (=> b!4734711 (= e!2953266 Unit!132097)))

(declare-fun b!4734712 () Bool)

(assert (=> b!4734712 (= e!2953264 (not (contains!16302 (keys!19029 lt!1896756) (_1!30579 (h!59284 lt!1896336)))))))

(assert (= (and d!1510452 c!808651) b!4734704))

(assert (= (and d!1510452 (not c!808651)) b!4734710))

(assert (= (and b!4734710 c!808652) b!4734708))

(assert (= (and b!4734710 (not c!808652)) b!4734711))

(assert (= (or b!4734704 b!4734710) bm!331186))

(assert (= (and bm!331186 c!808650) b!4734709))

(assert (= (and bm!331186 (not c!808650)) b!4734705))

(assert (= (and d!1510452 res!2004960) b!4734712))

(assert (= (and d!1510452 (not res!2004959)) b!4734707))

(assert (= (and b!4734707 res!2004961) b!4734706))

(declare-fun m!5679617 () Bool)

(assert (=> b!4734709 m!5679617))

(declare-fun m!5679619 () Bool)

(assert (=> b!4734704 m!5679619))

(declare-fun m!5679621 () Bool)

(assert (=> b!4734704 m!5679621))

(assert (=> b!4734704 m!5679621))

(declare-fun m!5679623 () Bool)

(assert (=> b!4734704 m!5679623))

(declare-fun m!5679625 () Bool)

(assert (=> b!4734704 m!5679625))

(declare-fun m!5679627 () Bool)

(assert (=> d!1510452 m!5679627))

(declare-fun m!5679629 () Bool)

(assert (=> bm!331186 m!5679629))

(declare-fun m!5679631 () Bool)

(assert (=> b!4734705 m!5679631))

(assert (=> b!4734707 m!5679621))

(assert (=> b!4734707 m!5679621))

(assert (=> b!4734707 m!5679623))

(assert (=> b!4734712 m!5679631))

(assert (=> b!4734712 m!5679631))

(declare-fun m!5679633 () Bool)

(assert (=> b!4734712 m!5679633))

(assert (=> b!4734708 m!5679627))

(declare-fun m!5679635 () Bool)

(assert (=> b!4734708 m!5679635))

(assert (=> b!4734706 m!5679631))

(assert (=> b!4734706 m!5679631))

(assert (=> b!4734706 m!5679633))

(assert (=> b!4733537 d!1510452))

(declare-fun bs!1123152 () Bool)

(declare-fun b!4734716 () Bool)

(assert (= bs!1123152 (and b!4734716 b!4733999)))

(declare-fun lambda!217982 () Int)

(assert (=> bs!1123152 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217982 lambda!217905))))

(declare-fun bs!1123154 () Bool)

(assert (= bs!1123154 (and b!4734716 b!4734500)))

(assert (=> bs!1123154 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217982 lambda!217958))))

(declare-fun bs!1123156 () Bool)

(assert (= bs!1123156 (and b!4734716 b!4733537)))

(assert (=> bs!1123156 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896756) (= lambda!217982 lambda!217834))))

(declare-fun bs!1123157 () Bool)

(assert (= bs!1123157 (and b!4734716 b!4734383)))

(assert (=> bs!1123157 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217982 lambda!217930))))

(declare-fun bs!1123158 () Bool)

(assert (= bs!1123158 (and b!4734716 b!4734637)))

(assert (=> bs!1123158 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217982 lambda!217971))))

(assert (=> bs!1123157 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897341) (= lambda!217982 lambda!217931))))

(declare-fun bs!1123159 () Bool)

(assert (= bs!1123159 (and b!4734716 b!4733550)))

(assert (=> bs!1123159 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896793) (= lambda!217982 lambda!217843))))

(declare-fun bs!1123160 () Bool)

(assert (= bs!1123160 (and b!4734716 b!4733596)))

(assert (=> bs!1123160 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217849))))

(declare-fun bs!1123161 () Bool)

(assert (= bs!1123161 (and b!4734716 d!1509730)))

(assert (=> bs!1123161 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896702) (= lambda!217982 lambda!217822))))

(declare-fun bs!1123162 () Bool)

(assert (= bs!1123162 (and b!4734716 d!1510296)))

(assert (=> bs!1123162 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897465) (= lambda!217982 lambda!217960))))

(declare-fun bs!1123164 () Bool)

(assert (= bs!1123164 (and b!4734716 b!4734263)))

(assert (=> bs!1123164 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897244) (= lambda!217982 lambda!217922))))

(declare-fun bs!1123166 () Bool)

(assert (= bs!1123166 (and b!4734716 d!1509876)))

(assert (=> bs!1123166 (not (= lambda!217982 lambda!217862))))

(declare-fun bs!1123167 () Bool)

(assert (= bs!1123167 (and b!4734716 b!4733900)))

(assert (=> bs!1123167 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217982 lambda!217877))))

(declare-fun bs!1123171 () Bool)

(assert (= bs!1123171 (and b!4734716 d!1509984)))

(assert (=> bs!1123171 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896826) (= lambda!217982 lambda!217876))))

(assert (=> bs!1123156 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217833))))

(declare-fun bs!1123181 () Bool)

(assert (= bs!1123181 (and b!4734716 b!4734265)))

(assert (=> bs!1123181 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217982 lambda!217920))))

(declare-fun bs!1123186 () Bool)

(assert (= bs!1123186 (and b!4734716 d!1509818)))

(assert (=> bs!1123186 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896752) (= lambda!217982 lambda!217839))))

(declare-fun bs!1123190 () Bool)

(assert (= bs!1123190 (and b!4734716 d!1510190)))

(assert (=> bs!1123190 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897240) (= lambda!217982 lambda!217923))))

(declare-fun bs!1123192 () Bool)

(assert (= bs!1123192 (and b!4734716 b!4733502)))

(assert (=> bs!1123192 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217819))))

(declare-fun bs!1123196 () Bool)

(assert (= bs!1123196 (and b!4734716 b!4733500)))

(assert (=> bs!1123196 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217820))))

(declare-fun bs!1123199 () Bool)

(assert (= bs!1123199 (and b!4734716 b!4733594)))

(assert (=> bs!1123199 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217850))))

(declare-fun bs!1123201 () Bool)

(assert (= bs!1123201 (and b!4734716 d!1510404)))

(assert (=> bs!1123201 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897586) (= lambda!217982 lambda!217977))))

(declare-fun bs!1123205 () Bool)

(assert (= bs!1123205 (and b!4734716 d!1510280)))

(assert (=> bs!1123205 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897421) (= lambda!217982 lambda!217954))))

(declare-fun bs!1123206 () Bool)

(assert (= bs!1123206 (and b!4734716 d!1509820)))

(assert (=> bs!1123206 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896789) (= lambda!217982 lambda!217844))))

(assert (=> bs!1123199 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896855) (= lambda!217982 lambda!217851))))

(assert (=> bs!1123154 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897469) (= lambda!217982 lambda!217959))))

(declare-fun bs!1123209 () Bool)

(assert (= bs!1123209 (and b!4734716 d!1510386)))

(assert (=> bs!1123209 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896706) (= lambda!217982 lambda!217970))))

(declare-fun bs!1123211 () Bool)

(assert (= bs!1123211 (and b!4734716 d!1509826)))

(assert (=> bs!1123211 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896822) (= lambda!217982 lambda!217848))))

(declare-fun bs!1123212 () Bool)

(assert (= bs!1123212 (and b!4734716 b!4734001)))

(assert (=> bs!1123212 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217982 lambda!217904))))

(declare-fun bs!1123213 () Bool)

(assert (= bs!1123213 (and b!4734716 b!4734302)))

(assert (=> bs!1123213 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217982 lambda!217924))))

(declare-fun bs!1123214 () Bool)

(assert (= bs!1123214 (and b!4734716 d!1509834)))

(assert (=> bs!1123214 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896851) (= lambda!217982 lambda!217852))))

(declare-fun bs!1123215 () Bool)

(assert (= bs!1123215 (and b!4734716 d!1509926)))

(assert (=> bs!1123215 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217871))))

(declare-fun bs!1123216 () Bool)

(assert (= bs!1123216 (and b!4734716 b!4734502)))

(assert (=> bs!1123216 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217982 lambda!217956))))

(declare-fun bs!1123217 () Bool)

(assert (= bs!1123217 (and b!4734716 b!4733898)))

(assert (=> bs!1123217 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897028) (= lambda!217982 lambda!217882))))

(assert (=> bs!1123152 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897094) (= lambda!217982 lambda!217906))))

(declare-fun bs!1123218 () Bool)

(assert (= bs!1123218 (and b!4734716 b!4733561)))

(assert (=> bs!1123218 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896826) (= lambda!217982 lambda!217847))))

(declare-fun bs!1123219 () Bool)

(assert (= bs!1123219 (and b!4734716 d!1510022)))

(assert (=> bs!1123219 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897090) (= lambda!217982 lambda!217907))))

(declare-fun bs!1123220 () Bool)

(assert (= bs!1123220 (and b!4734716 b!4733563)))

(assert (=> bs!1123220 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217845))))

(declare-fun bs!1123221 () Bool)

(assert (= bs!1123221 (and b!4734716 b!4733539)))

(assert (=> bs!1123221 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217830))))

(assert (=> bs!1123217 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217982 lambda!217880))))

(assert (=> bs!1123164 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217982 lambda!217921))))

(assert (=> bs!1123159 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217841))))

(declare-fun bs!1123222 () Bool)

(assert (= bs!1123222 (and b!4734716 b!4734473)))

(assert (=> bs!1123222 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217982 lambda!217949))))

(declare-fun bs!1123223 () Bool)

(assert (= bs!1123223 (and b!4734716 b!4734635)))

(assert (=> bs!1123223 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897590) (= lambda!217982 lambda!217975))))

(declare-fun bs!1123224 () Bool)

(assert (= bs!1123224 (and b!4734716 d!1510262)))

(assert (=> bs!1123224 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896855) (= lambda!217982 lambda!217945))))

(declare-fun bs!1123225 () Bool)

(assert (= bs!1123225 (and b!4734716 b!4734385)))

(assert (=> bs!1123225 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217982 lambda!217929))))

(assert (=> bs!1123196 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896706) (= lambda!217982 lambda!217821))))

(declare-fun bs!1123226 () Bool)

(assert (= bs!1123226 (and b!4734716 d!1509864)))

(assert (=> bs!1123226 (not (= lambda!217982 lambda!217860))))

(declare-fun bs!1123227 () Bool)

(assert (= bs!1123227 (and b!4734716 b!4734300)))

(assert (=> bs!1123227 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897285) (= lambda!217982 lambda!217926))))

(declare-fun bs!1123228 () Bool)

(assert (= bs!1123228 (and b!4734716 d!1510436)))

(assert (=> bs!1123228 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896756) (= lambda!217982 lambda!217980))))

(assert (=> bs!1123222 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897425) (= lambda!217982 lambda!217951))))

(declare-fun bs!1123229 () Bool)

(assert (= bs!1123229 (and b!4734716 d!1510164)))

(assert (=> bs!1123229 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896793) (= lambda!217982 lambda!217918))))

(declare-fun bs!1123230 () Bool)

(assert (= bs!1123230 (and b!4734716 b!4733552)))

(assert (=> bs!1123230 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217840))))

(assert (=> bs!1123227 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217982 lambda!217925))))

(declare-fun bs!1123231 () Bool)

(assert (= bs!1123231 (and b!4734716 b!4734475)))

(assert (=> bs!1123231 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217982 lambda!217946))))

(assert (=> bs!1123218 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217982 lambda!217846))))

(declare-fun bs!1123232 () Bool)

(assert (= bs!1123232 (and b!4734716 d!1509992)))

(assert (=> bs!1123232 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897024) (= lambda!217982 lambda!217883))))

(declare-fun bs!1123233 () Bool)

(assert (= bs!1123233 (and b!4734716 d!1510208)))

(assert (=> bs!1123233 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897281) (= lambda!217982 lambda!217927))))

(declare-fun bs!1123234 () Bool)

(assert (= bs!1123234 (and b!4734716 d!1510252)))

(assert (=> bs!1123234 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897337) (= lambda!217982 lambda!217940))))

(assert (=> bs!1123223 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217982 lambda!217973))))

(assert (=> b!4734716 true))

(declare-fun bs!1123235 () Bool)

(declare-fun b!4734714 () Bool)

(assert (= bs!1123235 (and b!4734714 b!4733999)))

(declare-fun lambda!217985 () Int)

(assert (=> bs!1123235 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217985 lambda!217905))))

(declare-fun bs!1123236 () Bool)

(assert (= bs!1123236 (and b!4734714 b!4734500)))

(assert (=> bs!1123236 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217985 lambda!217958))))

(declare-fun bs!1123237 () Bool)

(assert (= bs!1123237 (and b!4734714 b!4733537)))

(assert (=> bs!1123237 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896756) (= lambda!217985 lambda!217834))))

(declare-fun bs!1123238 () Bool)

(assert (= bs!1123238 (and b!4734714 b!4734383)))

(assert (=> bs!1123238 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217985 lambda!217930))))

(declare-fun bs!1123239 () Bool)

(assert (= bs!1123239 (and b!4734714 b!4734637)))

(assert (=> bs!1123239 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217985 lambda!217971))))

(declare-fun bs!1123240 () Bool)

(assert (= bs!1123240 (and b!4734714 b!4733550)))

(assert (=> bs!1123240 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896793) (= lambda!217985 lambda!217843))))

(declare-fun bs!1123241 () Bool)

(assert (= bs!1123241 (and b!4734714 b!4733596)))

(assert (=> bs!1123241 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217849))))

(declare-fun bs!1123242 () Bool)

(assert (= bs!1123242 (and b!4734714 d!1509730)))

(assert (=> bs!1123242 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896702) (= lambda!217985 lambda!217822))))

(declare-fun bs!1123243 () Bool)

(assert (= bs!1123243 (and b!4734714 d!1510296)))

(assert (=> bs!1123243 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897465) (= lambda!217985 lambda!217960))))

(declare-fun bs!1123244 () Bool)

(assert (= bs!1123244 (and b!4734714 b!4734263)))

(assert (=> bs!1123244 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897244) (= lambda!217985 lambda!217922))))

(declare-fun bs!1123245 () Bool)

(assert (= bs!1123245 (and b!4734714 d!1509876)))

(assert (=> bs!1123245 (not (= lambda!217985 lambda!217862))))

(declare-fun bs!1123246 () Bool)

(assert (= bs!1123246 (and b!4734714 b!4733900)))

(assert (=> bs!1123246 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217985 lambda!217877))))

(declare-fun bs!1123247 () Bool)

(assert (= bs!1123247 (and b!4734714 d!1509984)))

(assert (=> bs!1123247 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896826) (= lambda!217985 lambda!217876))))

(assert (=> bs!1123237 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217833))))

(declare-fun bs!1123248 () Bool)

(assert (= bs!1123248 (and b!4734714 b!4734265)))

(assert (=> bs!1123248 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217985 lambda!217920))))

(declare-fun bs!1123249 () Bool)

(assert (= bs!1123249 (and b!4734714 d!1509818)))

(assert (=> bs!1123249 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896752) (= lambda!217985 lambda!217839))))

(declare-fun bs!1123250 () Bool)

(assert (= bs!1123250 (and b!4734714 d!1510190)))

(assert (=> bs!1123250 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897240) (= lambda!217985 lambda!217923))))

(declare-fun bs!1123251 () Bool)

(assert (= bs!1123251 (and b!4734714 b!4733502)))

(assert (=> bs!1123251 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217819))))

(declare-fun bs!1123252 () Bool)

(assert (= bs!1123252 (and b!4734714 b!4733500)))

(assert (=> bs!1123252 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217820))))

(declare-fun bs!1123254 () Bool)

(assert (= bs!1123254 (and b!4734714 b!4733594)))

(assert (=> bs!1123254 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217850))))

(declare-fun bs!1123255 () Bool)

(assert (= bs!1123255 (and b!4734714 d!1510404)))

(assert (=> bs!1123255 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897586) (= lambda!217985 lambda!217977))))

(declare-fun bs!1123257 () Bool)

(assert (= bs!1123257 (and b!4734714 d!1510280)))

(assert (=> bs!1123257 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897421) (= lambda!217985 lambda!217954))))

(declare-fun bs!1123258 () Bool)

(assert (= bs!1123258 (and b!4734714 d!1509820)))

(assert (=> bs!1123258 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896789) (= lambda!217985 lambda!217844))))

(assert (=> bs!1123254 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896855) (= lambda!217985 lambda!217851))))

(assert (=> bs!1123236 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897469) (= lambda!217985 lambda!217959))))

(declare-fun bs!1123261 () Bool)

(assert (= bs!1123261 (and b!4734714 d!1510386)))

(assert (=> bs!1123261 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896706) (= lambda!217985 lambda!217970))))

(declare-fun bs!1123263 () Bool)

(assert (= bs!1123263 (and b!4734714 d!1509826)))

(assert (=> bs!1123263 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896822) (= lambda!217985 lambda!217848))))

(declare-fun bs!1123265 () Bool)

(assert (= bs!1123265 (and b!4734714 b!4734001)))

(assert (=> bs!1123265 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217985 lambda!217904))))

(declare-fun bs!1123266 () Bool)

(assert (= bs!1123266 (and b!4734714 b!4734302)))

(assert (=> bs!1123266 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217985 lambda!217924))))

(declare-fun bs!1123269 () Bool)

(assert (= bs!1123269 (and b!4734714 d!1509834)))

(assert (=> bs!1123269 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896851) (= lambda!217985 lambda!217852))))

(declare-fun bs!1123270 () Bool)

(assert (= bs!1123270 (and b!4734714 d!1509926)))

(assert (=> bs!1123270 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217871))))

(declare-fun bs!1123272 () Bool)

(assert (= bs!1123272 (and b!4734714 b!4734502)))

(assert (=> bs!1123272 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217985 lambda!217956))))

(declare-fun bs!1123273 () Bool)

(assert (= bs!1123273 (and b!4734714 b!4733898)))

(assert (=> bs!1123273 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897028) (= lambda!217985 lambda!217882))))

(assert (=> bs!1123235 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897094) (= lambda!217985 lambda!217906))))

(declare-fun bs!1123276 () Bool)

(assert (= bs!1123276 (and b!4734714 b!4733561)))

(assert (=> bs!1123276 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896826) (= lambda!217985 lambda!217847))))

(declare-fun bs!1123279 () Bool)

(assert (= bs!1123279 (and b!4734714 d!1510022)))

(assert (=> bs!1123279 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897090) (= lambda!217985 lambda!217907))))

(declare-fun bs!1123281 () Bool)

(assert (= bs!1123281 (and b!4734714 b!4733563)))

(assert (=> bs!1123281 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217845))))

(declare-fun bs!1123283 () Bool)

(assert (= bs!1123283 (and b!4734714 b!4734716)))

(assert (=> bs!1123283 (= lambda!217985 lambda!217982)))

(assert (=> bs!1123238 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897341) (= lambda!217985 lambda!217931))))

(declare-fun bs!1123286 () Bool)

(assert (= bs!1123286 (and b!4734714 b!4733539)))

(assert (=> bs!1123286 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217830))))

(assert (=> bs!1123273 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217985 lambda!217880))))

(assert (=> bs!1123244 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217985 lambda!217921))))

(assert (=> bs!1123240 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217841))))

(declare-fun bs!1123290 () Bool)

(assert (= bs!1123290 (and b!4734714 b!4734473)))

(assert (=> bs!1123290 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217985 lambda!217949))))

(declare-fun bs!1123292 () Bool)

(assert (= bs!1123292 (and b!4734714 b!4734635)))

(assert (=> bs!1123292 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897590) (= lambda!217985 lambda!217975))))

(declare-fun bs!1123295 () Bool)

(assert (= bs!1123295 (and b!4734714 d!1510262)))

(assert (=> bs!1123295 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896855) (= lambda!217985 lambda!217945))))

(declare-fun bs!1123297 () Bool)

(assert (= bs!1123297 (and b!4734714 b!4734385)))

(assert (=> bs!1123297 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217985 lambda!217929))))

(assert (=> bs!1123252 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896706) (= lambda!217985 lambda!217821))))

(declare-fun bs!1123301 () Bool)

(assert (= bs!1123301 (and b!4734714 d!1509864)))

(assert (=> bs!1123301 (not (= lambda!217985 lambda!217860))))

(declare-fun bs!1123302 () Bool)

(assert (= bs!1123302 (and b!4734714 b!4734300)))

(assert (=> bs!1123302 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897285) (= lambda!217985 lambda!217926))))

(declare-fun bs!1123304 () Bool)

(assert (= bs!1123304 (and b!4734714 d!1510436)))

(assert (=> bs!1123304 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896756) (= lambda!217985 lambda!217980))))

(assert (=> bs!1123290 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897425) (= lambda!217985 lambda!217951))))

(declare-fun bs!1123305 () Bool)

(assert (= bs!1123305 (and b!4734714 d!1510164)))

(assert (=> bs!1123305 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896793) (= lambda!217985 lambda!217918))))

(declare-fun bs!1123307 () Bool)

(assert (= bs!1123307 (and b!4734714 b!4733552)))

(assert (=> bs!1123307 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217840))))

(assert (=> bs!1123302 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217985 lambda!217925))))

(declare-fun bs!1123309 () Bool)

(assert (= bs!1123309 (and b!4734714 b!4734475)))

(assert (=> bs!1123309 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217985 lambda!217946))))

(assert (=> bs!1123276 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1896343) (= lambda!217985 lambda!217846))))

(declare-fun bs!1123311 () Bool)

(assert (= bs!1123311 (and b!4734714 d!1509992)))

(assert (=> bs!1123311 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897024) (= lambda!217985 lambda!217883))))

(declare-fun bs!1123313 () Bool)

(assert (= bs!1123313 (and b!4734714 d!1510208)))

(assert (=> bs!1123313 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897281) (= lambda!217985 lambda!217927))))

(declare-fun bs!1123314 () Bool)

(assert (= bs!1123314 (and b!4734714 d!1510252)))

(assert (=> bs!1123314 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897337) (= lambda!217985 lambda!217940))))

(assert (=> bs!1123292 (= (= (+!2292 lt!1896343 (h!59284 lt!1896336)) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217985 lambda!217973))))

(assert (=> b!4734714 true))

(declare-fun lt!1897694 () ListMap!5341)

(declare-fun lambda!217987 () Int)

(assert (=> bs!1123235 (= (= lt!1897694 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217987 lambda!217905))))

(assert (=> bs!1123236 (= (= lt!1897694 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217987 lambda!217958))))

(assert (=> bs!1123237 (= (= lt!1897694 lt!1896756) (= lambda!217987 lambda!217834))))

(assert (=> bs!1123238 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217987 lambda!217930))))

(assert (=> bs!1123239 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217987 lambda!217971))))

(assert (=> bs!1123240 (= (= lt!1897694 lt!1896793) (= lambda!217987 lambda!217843))))

(assert (=> bs!1123241 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217849))))

(assert (=> bs!1123242 (= (= lt!1897694 lt!1896702) (= lambda!217987 lambda!217822))))

(assert (=> bs!1123243 (= (= lt!1897694 lt!1897465) (= lambda!217987 lambda!217960))))

(assert (=> bs!1123244 (= (= lt!1897694 lt!1897244) (= lambda!217987 lambda!217922))))

(assert (=> bs!1123245 (not (= lambda!217987 lambda!217862))))

(assert (=> bs!1123246 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217987 lambda!217877))))

(assert (=> bs!1123247 (= (= lt!1897694 lt!1896826) (= lambda!217987 lambda!217876))))

(assert (=> bs!1123237 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217833))))

(assert (=> b!4734714 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217987 lambda!217985))))

(assert (=> bs!1123248 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217987 lambda!217920))))

(assert (=> bs!1123249 (= (= lt!1897694 lt!1896752) (= lambda!217987 lambda!217839))))

(assert (=> bs!1123250 (= (= lt!1897694 lt!1897240) (= lambda!217987 lambda!217923))))

(assert (=> bs!1123251 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217819))))

(assert (=> bs!1123252 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217820))))

(assert (=> bs!1123254 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217850))))

(assert (=> bs!1123255 (= (= lt!1897694 lt!1897586) (= lambda!217987 lambda!217977))))

(assert (=> bs!1123257 (= (= lt!1897694 lt!1897421) (= lambda!217987 lambda!217954))))

(assert (=> bs!1123258 (= (= lt!1897694 lt!1896789) (= lambda!217987 lambda!217844))))

(assert (=> bs!1123254 (= (= lt!1897694 lt!1896855) (= lambda!217987 lambda!217851))))

(assert (=> bs!1123236 (= (= lt!1897694 lt!1897469) (= lambda!217987 lambda!217959))))

(assert (=> bs!1123261 (= (= lt!1897694 lt!1896706) (= lambda!217987 lambda!217970))))

(assert (=> bs!1123263 (= (= lt!1897694 lt!1896822) (= lambda!217987 lambda!217848))))

(assert (=> bs!1123265 (= (= lt!1897694 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217987 lambda!217904))))

(assert (=> bs!1123266 (= (= lt!1897694 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217987 lambda!217924))))

(assert (=> bs!1123269 (= (= lt!1897694 lt!1896851) (= lambda!217987 lambda!217852))))

(assert (=> bs!1123270 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217871))))

(assert (=> bs!1123272 (= (= lt!1897694 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217987 lambda!217956))))

(assert (=> bs!1123273 (= (= lt!1897694 lt!1897028) (= lambda!217987 lambda!217882))))

(assert (=> bs!1123235 (= (= lt!1897694 lt!1897094) (= lambda!217987 lambda!217906))))

(assert (=> bs!1123276 (= (= lt!1897694 lt!1896826) (= lambda!217987 lambda!217847))))

(assert (=> bs!1123279 (= (= lt!1897694 lt!1897090) (= lambda!217987 lambda!217907))))

(assert (=> bs!1123281 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217845))))

(assert (=> bs!1123283 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217987 lambda!217982))))

(assert (=> bs!1123238 (= (= lt!1897694 lt!1897341) (= lambda!217987 lambda!217931))))

(assert (=> bs!1123286 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217830))))

(assert (=> bs!1123273 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217987 lambda!217880))))

(assert (=> bs!1123244 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217987 lambda!217921))))

(assert (=> bs!1123240 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217841))))

(assert (=> bs!1123290 (= (= lt!1897694 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217987 lambda!217949))))

(assert (=> bs!1123292 (= (= lt!1897694 lt!1897590) (= lambda!217987 lambda!217975))))

(assert (=> bs!1123295 (= (= lt!1897694 lt!1896855) (= lambda!217987 lambda!217945))))

(assert (=> bs!1123297 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217987 lambda!217929))))

(assert (=> bs!1123252 (= (= lt!1897694 lt!1896706) (= lambda!217987 lambda!217821))))

(assert (=> bs!1123301 (not (= lambda!217987 lambda!217860))))

(assert (=> bs!1123302 (= (= lt!1897694 lt!1897285) (= lambda!217987 lambda!217926))))

(assert (=> bs!1123304 (= (= lt!1897694 lt!1896756) (= lambda!217987 lambda!217980))))

(assert (=> bs!1123290 (= (= lt!1897694 lt!1897425) (= lambda!217987 lambda!217951))))

(assert (=> bs!1123305 (= (= lt!1897694 lt!1896793) (= lambda!217987 lambda!217918))))

(assert (=> bs!1123307 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217840))))

(assert (=> bs!1123302 (= (= lt!1897694 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217987 lambda!217925))))

(assert (=> bs!1123309 (= (= lt!1897694 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217987 lambda!217946))))

(assert (=> bs!1123276 (= (= lt!1897694 lt!1896343) (= lambda!217987 lambda!217846))))

(assert (=> bs!1123311 (= (= lt!1897694 lt!1897024) (= lambda!217987 lambda!217883))))

(assert (=> bs!1123313 (= (= lt!1897694 lt!1897281) (= lambda!217987 lambda!217927))))

(assert (=> bs!1123314 (= (= lt!1897694 lt!1897337) (= lambda!217987 lambda!217940))))

(assert (=> bs!1123292 (= (= lt!1897694 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217987 lambda!217973))))

(assert (=> b!4734714 true))

(declare-fun bs!1123348 () Bool)

(declare-fun d!1510454 () Bool)

(assert (= bs!1123348 (and d!1510454 b!4734500)))

(declare-fun lt!1897690 () ListMap!5341)

(declare-fun lambda!217989 () Int)

(assert (=> bs!1123348 (= (= lt!1897690 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217989 lambda!217958))))

(declare-fun bs!1123350 () Bool)

(assert (= bs!1123350 (and d!1510454 b!4733537)))

(assert (=> bs!1123350 (= (= lt!1897690 lt!1896756) (= lambda!217989 lambda!217834))))

(declare-fun bs!1123352 () Bool)

(assert (= bs!1123352 (and d!1510454 b!4734383)))

(assert (=> bs!1123352 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217989 lambda!217930))))

(declare-fun bs!1123354 () Bool)

(assert (= bs!1123354 (and d!1510454 b!4734637)))

(assert (=> bs!1123354 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217989 lambda!217971))))

(declare-fun bs!1123356 () Bool)

(assert (= bs!1123356 (and d!1510454 b!4733550)))

(assert (=> bs!1123356 (= (= lt!1897690 lt!1896793) (= lambda!217989 lambda!217843))))

(declare-fun bs!1123357 () Bool)

(assert (= bs!1123357 (and d!1510454 b!4733596)))

(assert (=> bs!1123357 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217849))))

(declare-fun bs!1123358 () Bool)

(assert (= bs!1123358 (and d!1510454 d!1509730)))

(assert (=> bs!1123358 (= (= lt!1897690 lt!1896702) (= lambda!217989 lambda!217822))))

(declare-fun bs!1123359 () Bool)

(assert (= bs!1123359 (and d!1510454 d!1510296)))

(assert (=> bs!1123359 (= (= lt!1897690 lt!1897465) (= lambda!217989 lambda!217960))))

(declare-fun bs!1123360 () Bool)

(assert (= bs!1123360 (and d!1510454 b!4734263)))

(assert (=> bs!1123360 (= (= lt!1897690 lt!1897244) (= lambda!217989 lambda!217922))))

(declare-fun bs!1123361 () Bool)

(assert (= bs!1123361 (and d!1510454 d!1509876)))

(assert (=> bs!1123361 (not (= lambda!217989 lambda!217862))))

(declare-fun bs!1123364 () Bool)

(assert (= bs!1123364 (and d!1510454 b!4733900)))

(assert (=> bs!1123364 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217989 lambda!217877))))

(declare-fun bs!1123365 () Bool)

(assert (= bs!1123365 (and d!1510454 d!1509984)))

(assert (=> bs!1123365 (= (= lt!1897690 lt!1896826) (= lambda!217989 lambda!217876))))

(assert (=> bs!1123350 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217833))))

(declare-fun bs!1123366 () Bool)

(assert (= bs!1123366 (and d!1510454 b!4734714)))

(assert (=> bs!1123366 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217989 lambda!217985))))

(declare-fun bs!1123367 () Bool)

(assert (= bs!1123367 (and d!1510454 b!4734265)))

(assert (=> bs!1123367 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217989 lambda!217920))))

(declare-fun bs!1123368 () Bool)

(assert (= bs!1123368 (and d!1510454 d!1509818)))

(assert (=> bs!1123368 (= (= lt!1897690 lt!1896752) (= lambda!217989 lambda!217839))))

(assert (=> bs!1123366 (= (= lt!1897690 lt!1897694) (= lambda!217989 lambda!217987))))

(declare-fun bs!1123370 () Bool)

(assert (= bs!1123370 (and d!1510454 b!4733999)))

(assert (=> bs!1123370 (= (= lt!1897690 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217989 lambda!217905))))

(declare-fun bs!1123371 () Bool)

(assert (= bs!1123371 (and d!1510454 d!1510190)))

(assert (=> bs!1123371 (= (= lt!1897690 lt!1897240) (= lambda!217989 lambda!217923))))

(declare-fun bs!1123372 () Bool)

(assert (= bs!1123372 (and d!1510454 b!4733502)))

(assert (=> bs!1123372 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217819))))

(declare-fun bs!1123373 () Bool)

(assert (= bs!1123373 (and d!1510454 b!4733500)))

(assert (=> bs!1123373 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217820))))

(declare-fun bs!1123374 () Bool)

(assert (= bs!1123374 (and d!1510454 b!4733594)))

(assert (=> bs!1123374 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217850))))

(declare-fun bs!1123375 () Bool)

(assert (= bs!1123375 (and d!1510454 d!1510404)))

(assert (=> bs!1123375 (= (= lt!1897690 lt!1897586) (= lambda!217989 lambda!217977))))

(declare-fun bs!1123376 () Bool)

(assert (= bs!1123376 (and d!1510454 d!1510280)))

(assert (=> bs!1123376 (= (= lt!1897690 lt!1897421) (= lambda!217989 lambda!217954))))

(declare-fun bs!1123377 () Bool)

(assert (= bs!1123377 (and d!1510454 d!1509820)))

(assert (=> bs!1123377 (= (= lt!1897690 lt!1896789) (= lambda!217989 lambda!217844))))

(assert (=> bs!1123374 (= (= lt!1897690 lt!1896855) (= lambda!217989 lambda!217851))))

(assert (=> bs!1123348 (= (= lt!1897690 lt!1897469) (= lambda!217989 lambda!217959))))

(declare-fun bs!1123378 () Bool)

(assert (= bs!1123378 (and d!1510454 d!1510386)))

(assert (=> bs!1123378 (= (= lt!1897690 lt!1896706) (= lambda!217989 lambda!217970))))

(declare-fun bs!1123379 () Bool)

(assert (= bs!1123379 (and d!1510454 d!1509826)))

(assert (=> bs!1123379 (= (= lt!1897690 lt!1896822) (= lambda!217989 lambda!217848))))

(declare-fun bs!1123380 () Bool)

(assert (= bs!1123380 (and d!1510454 b!4734001)))

(assert (=> bs!1123380 (= (= lt!1897690 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217989 lambda!217904))))

(declare-fun bs!1123381 () Bool)

(assert (= bs!1123381 (and d!1510454 b!4734302)))

(assert (=> bs!1123381 (= (= lt!1897690 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217989 lambda!217924))))

(declare-fun bs!1123382 () Bool)

(assert (= bs!1123382 (and d!1510454 d!1509834)))

(assert (=> bs!1123382 (= (= lt!1897690 lt!1896851) (= lambda!217989 lambda!217852))))

(declare-fun bs!1123383 () Bool)

(assert (= bs!1123383 (and d!1510454 d!1509926)))

(assert (=> bs!1123383 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217871))))

(declare-fun bs!1123384 () Bool)

(assert (= bs!1123384 (and d!1510454 b!4734502)))

(assert (=> bs!1123384 (= (= lt!1897690 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217989 lambda!217956))))

(declare-fun bs!1123385 () Bool)

(assert (= bs!1123385 (and d!1510454 b!4733898)))

(assert (=> bs!1123385 (= (= lt!1897690 lt!1897028) (= lambda!217989 lambda!217882))))

(assert (=> bs!1123370 (= (= lt!1897690 lt!1897094) (= lambda!217989 lambda!217906))))

(declare-fun bs!1123386 () Bool)

(assert (= bs!1123386 (and d!1510454 b!4733561)))

(assert (=> bs!1123386 (= (= lt!1897690 lt!1896826) (= lambda!217989 lambda!217847))))

(declare-fun bs!1123387 () Bool)

(assert (= bs!1123387 (and d!1510454 d!1510022)))

(assert (=> bs!1123387 (= (= lt!1897690 lt!1897090) (= lambda!217989 lambda!217907))))

(declare-fun bs!1123388 () Bool)

(assert (= bs!1123388 (and d!1510454 b!4733563)))

(assert (=> bs!1123388 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217845))))

(declare-fun bs!1123389 () Bool)

(assert (= bs!1123389 (and d!1510454 b!4734716)))

(assert (=> bs!1123389 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217989 lambda!217982))))

(assert (=> bs!1123352 (= (= lt!1897690 lt!1897341) (= lambda!217989 lambda!217931))))

(declare-fun bs!1123390 () Bool)

(assert (= bs!1123390 (and d!1510454 b!4733539)))

(assert (=> bs!1123390 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217830))))

(assert (=> bs!1123385 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217989 lambda!217880))))

(assert (=> bs!1123360 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217989 lambda!217921))))

(assert (=> bs!1123356 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217841))))

(declare-fun bs!1123391 () Bool)

(assert (= bs!1123391 (and d!1510454 b!4734473)))

(assert (=> bs!1123391 (= (= lt!1897690 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217989 lambda!217949))))

(declare-fun bs!1123392 () Bool)

(assert (= bs!1123392 (and d!1510454 b!4734635)))

(assert (=> bs!1123392 (= (= lt!1897690 lt!1897590) (= lambda!217989 lambda!217975))))

(declare-fun bs!1123393 () Bool)

(assert (= bs!1123393 (and d!1510454 d!1510262)))

(assert (=> bs!1123393 (= (= lt!1897690 lt!1896855) (= lambda!217989 lambda!217945))))

(declare-fun bs!1123394 () Bool)

(assert (= bs!1123394 (and d!1510454 b!4734385)))

(assert (=> bs!1123394 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217989 lambda!217929))))

(assert (=> bs!1123373 (= (= lt!1897690 lt!1896706) (= lambda!217989 lambda!217821))))

(declare-fun bs!1123395 () Bool)

(assert (= bs!1123395 (and d!1510454 d!1509864)))

(assert (=> bs!1123395 (not (= lambda!217989 lambda!217860))))

(declare-fun bs!1123396 () Bool)

(assert (= bs!1123396 (and d!1510454 b!4734300)))

(assert (=> bs!1123396 (= (= lt!1897690 lt!1897285) (= lambda!217989 lambda!217926))))

(declare-fun bs!1123397 () Bool)

(assert (= bs!1123397 (and d!1510454 d!1510436)))

(assert (=> bs!1123397 (= (= lt!1897690 lt!1896756) (= lambda!217989 lambda!217980))))

(assert (=> bs!1123391 (= (= lt!1897690 lt!1897425) (= lambda!217989 lambda!217951))))

(declare-fun bs!1123398 () Bool)

(assert (= bs!1123398 (and d!1510454 d!1510164)))

(assert (=> bs!1123398 (= (= lt!1897690 lt!1896793) (= lambda!217989 lambda!217918))))

(declare-fun bs!1123399 () Bool)

(assert (= bs!1123399 (and d!1510454 b!4733552)))

(assert (=> bs!1123399 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217840))))

(assert (=> bs!1123396 (= (= lt!1897690 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217989 lambda!217925))))

(declare-fun bs!1123400 () Bool)

(assert (= bs!1123400 (and d!1510454 b!4734475)))

(assert (=> bs!1123400 (= (= lt!1897690 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217989 lambda!217946))))

(assert (=> bs!1123386 (= (= lt!1897690 lt!1896343) (= lambda!217989 lambda!217846))))

(declare-fun bs!1123401 () Bool)

(assert (= bs!1123401 (and d!1510454 d!1509992)))

(assert (=> bs!1123401 (= (= lt!1897690 lt!1897024) (= lambda!217989 lambda!217883))))

(declare-fun bs!1123402 () Bool)

(assert (= bs!1123402 (and d!1510454 d!1510208)))

(assert (=> bs!1123402 (= (= lt!1897690 lt!1897281) (= lambda!217989 lambda!217927))))

(declare-fun bs!1123403 () Bool)

(assert (= bs!1123403 (and d!1510454 d!1510252)))

(assert (=> bs!1123403 (= (= lt!1897690 lt!1897337) (= lambda!217989 lambda!217940))))

(assert (=> bs!1123392 (= (= lt!1897690 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217989 lambda!217973))))

(assert (=> d!1510454 true))

(declare-fun call!331192 () Bool)

(declare-fun bm!331187 () Bool)

(declare-fun c!808653 () Bool)

(assert (=> bm!331187 (= call!331192 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896336))) (ite c!808653 lambda!217982 lambda!217987)))))

(declare-fun b!4734713 () Bool)

(declare-fun e!2953269 () Bool)

(assert (=> b!4734713 (= e!2953269 call!331192)))

(declare-fun bm!331188 () Bool)

(declare-fun call!331194 () Unit!131735)

(assert (=> bm!331188 (= call!331194 (lemmaContainsAllItsOwnKeys!820 (+!2292 lt!1896343 (h!59284 lt!1896336))))))

(declare-fun bm!331189 () Bool)

(declare-fun call!331193 () Bool)

(assert (=> bm!331189 (= call!331193 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896336))) (ite c!808653 lambda!217982 lambda!217987)))))

(declare-fun e!2953267 () Bool)

(assert (=> d!1510454 e!2953267))

(declare-fun res!2004962 () Bool)

(assert (=> d!1510454 (=> (not res!2004962) (not e!2953267))))

(assert (=> d!1510454 (= res!2004962 (forall!11653 (t!360317 lt!1896336) lambda!217989))))

(declare-fun e!2953268 () ListMap!5341)

(assert (=> d!1510454 (= lt!1897690 e!2953268)))

(assert (=> d!1510454 (= c!808653 ((_ is Nil!52913) (t!360317 lt!1896336)))))

(assert (=> d!1510454 (noDuplicateKeys!2044 (t!360317 lt!1896336))))

(assert (=> d!1510454 (= (addToMapMapFromBucket!1474 (t!360317 lt!1896336) (+!2292 lt!1896343 (h!59284 lt!1896336))) lt!1897690)))

(assert (=> b!4734714 (= e!2953268 lt!1897694)))

(declare-fun lt!1897685 () ListMap!5341)

(assert (=> b!4734714 (= lt!1897685 (+!2292 (+!2292 lt!1896343 (h!59284 lt!1896336)) (h!59284 (t!360317 lt!1896336))))))

(assert (=> b!4734714 (= lt!1897694 (addToMapMapFromBucket!1474 (t!360317 (t!360317 lt!1896336)) (+!2292 (+!2292 lt!1896343 (h!59284 lt!1896336)) (h!59284 (t!360317 lt!1896336)))))))

(declare-fun lt!1897686 () Unit!131735)

(assert (=> b!4734714 (= lt!1897686 call!331194)))

(assert (=> b!4734714 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896336))) lambda!217985)))

(declare-fun lt!1897683 () Unit!131735)

(assert (=> b!4734714 (= lt!1897683 lt!1897686)))

(assert (=> b!4734714 (forall!11653 (toList!5978 lt!1897685) lambda!217987)))

(declare-fun lt!1897684 () Unit!131735)

(declare-fun Unit!132109 () Unit!131735)

(assert (=> b!4734714 (= lt!1897684 Unit!132109)))

(assert (=> b!4734714 (forall!11653 (t!360317 (t!360317 lt!1896336)) lambda!217987)))

(declare-fun lt!1897680 () Unit!131735)

(declare-fun Unit!132110 () Unit!131735)

(assert (=> b!4734714 (= lt!1897680 Unit!132110)))

(declare-fun lt!1897695 () Unit!131735)

(declare-fun Unit!132111 () Unit!131735)

(assert (=> b!4734714 (= lt!1897695 Unit!132111)))

(declare-fun lt!1897677 () Unit!131735)

(assert (=> b!4734714 (= lt!1897677 (forallContained!3693 (toList!5978 lt!1897685) lambda!217987 (h!59284 (t!360317 lt!1896336))))))

(assert (=> b!4734714 (contains!16298 lt!1897685 (_1!30579 (h!59284 (t!360317 lt!1896336))))))

(declare-fun lt!1897689 () Unit!131735)

(declare-fun Unit!132112 () Unit!131735)

(assert (=> b!4734714 (= lt!1897689 Unit!132112)))

(assert (=> b!4734714 (contains!16298 lt!1897694 (_1!30579 (h!59284 (t!360317 lt!1896336))))))

(declare-fun lt!1897691 () Unit!131735)

(declare-fun Unit!132113 () Unit!131735)

(assert (=> b!4734714 (= lt!1897691 Unit!132113)))

(assert (=> b!4734714 (forall!11653 (t!360317 lt!1896336) lambda!217987)))

(declare-fun lt!1897693 () Unit!131735)

(declare-fun Unit!132114 () Unit!131735)

(assert (=> b!4734714 (= lt!1897693 Unit!132114)))

(assert (=> b!4734714 (forall!11653 (toList!5978 lt!1897685) lambda!217987)))

(declare-fun lt!1897681 () Unit!131735)

(declare-fun Unit!132115 () Unit!131735)

(assert (=> b!4734714 (= lt!1897681 Unit!132115)))

(declare-fun lt!1897676 () Unit!131735)

(declare-fun Unit!132116 () Unit!131735)

(assert (=> b!4734714 (= lt!1897676 Unit!132116)))

(declare-fun lt!1897678 () Unit!131735)

(assert (=> b!4734714 (= lt!1897678 (addForallContainsKeyThenBeforeAdding!819 (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897694 (_1!30579 (h!59284 (t!360317 lt!1896336))) (_2!30579 (h!59284 (t!360317 lt!1896336)))))))

(assert (=> b!4734714 call!331193))

(declare-fun lt!1897687 () Unit!131735)

(assert (=> b!4734714 (= lt!1897687 lt!1897678)))

(assert (=> b!4734714 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896336))) lambda!217987)))

(declare-fun lt!1897675 () Unit!131735)

(declare-fun Unit!132117 () Unit!131735)

(assert (=> b!4734714 (= lt!1897675 Unit!132117)))

(declare-fun res!2004964 () Bool)

(assert (=> b!4734714 (= res!2004964 (forall!11653 (t!360317 lt!1896336) lambda!217987))))

(assert (=> b!4734714 (=> (not res!2004964) (not e!2953269))))

(assert (=> b!4734714 e!2953269))

(declare-fun lt!1897679 () Unit!131735)

(declare-fun Unit!132118 () Unit!131735)

(assert (=> b!4734714 (= lt!1897679 Unit!132118)))

(declare-fun b!4734715 () Bool)

(declare-fun res!2004963 () Bool)

(assert (=> b!4734715 (=> (not res!2004963) (not e!2953267))))

(assert (=> b!4734715 (= res!2004963 (forall!11653 (toList!5978 (+!2292 lt!1896343 (h!59284 lt!1896336))) lambda!217989))))

(assert (=> b!4734716 (= e!2953268 (+!2292 lt!1896343 (h!59284 lt!1896336)))))

(declare-fun lt!1897688 () Unit!131735)

(assert (=> b!4734716 (= lt!1897688 call!331194)))

(assert (=> b!4734716 call!331193))

(declare-fun lt!1897692 () Unit!131735)

(assert (=> b!4734716 (= lt!1897692 lt!1897688)))

(assert (=> b!4734716 call!331192))

(declare-fun lt!1897682 () Unit!131735)

(declare-fun Unit!132119 () Unit!131735)

(assert (=> b!4734716 (= lt!1897682 Unit!132119)))

(declare-fun b!4734717 () Bool)

(assert (=> b!4734717 (= e!2953267 (invariantList!1535 (toList!5978 lt!1897690)))))

(assert (= (and d!1510454 c!808653) b!4734716))

(assert (= (and d!1510454 (not c!808653)) b!4734714))

(assert (= (and b!4734714 res!2004964) b!4734713))

(assert (= (or b!4734716 b!4734714) bm!331188))

(assert (= (or b!4734716 b!4734714) bm!331189))

(assert (= (or b!4734716 b!4734713) bm!331187))

(assert (= (and d!1510454 res!2004962) b!4734715))

(assert (= (and b!4734715 res!2004963) b!4734717))

(declare-fun m!5679735 () Bool)

(assert (=> bm!331187 m!5679735))

(declare-fun m!5679737 () Bool)

(assert (=> d!1510454 m!5679737))

(assert (=> d!1510454 m!5677503))

(assert (=> bm!331188 m!5677217))

(declare-fun m!5679739 () Bool)

(assert (=> bm!331188 m!5679739))

(declare-fun m!5679741 () Bool)

(assert (=> b!4734714 m!5679741))

(declare-fun m!5679743 () Bool)

(assert (=> b!4734714 m!5679743))

(declare-fun m!5679745 () Bool)

(assert (=> b!4734714 m!5679745))

(declare-fun m!5679747 () Bool)

(assert (=> b!4734714 m!5679747))

(declare-fun m!5679749 () Bool)

(assert (=> b!4734714 m!5679749))

(declare-fun m!5679751 () Bool)

(assert (=> b!4734714 m!5679751))

(declare-fun m!5679753 () Bool)

(assert (=> b!4734714 m!5679753))

(assert (=> b!4734714 m!5679741))

(assert (=> b!4734714 m!5677217))

(declare-fun m!5679755 () Bool)

(assert (=> b!4734714 m!5679755))

(declare-fun m!5679757 () Bool)

(assert (=> b!4734714 m!5679757))

(assert (=> b!4734714 m!5679747))

(assert (=> b!4734714 m!5677217))

(declare-fun m!5679759 () Bool)

(assert (=> b!4734714 m!5679759))

(assert (=> b!4734714 m!5679755))

(declare-fun m!5679761 () Bool)

(assert (=> b!4734714 m!5679761))

(declare-fun m!5679763 () Bool)

(assert (=> b!4734715 m!5679763))

(assert (=> bm!331189 m!5679735))

(declare-fun m!5679765 () Bool)

(assert (=> b!4734717 m!5679765))

(assert (=> b!4733537 d!1510454))

(declare-fun d!1510472 () Bool)

(declare-fun res!2004982 () Bool)

(declare-fun e!2953292 () Bool)

(assert (=> d!1510472 (=> res!2004982 e!2953292)))

(assert (=> d!1510472 (= res!2004982 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510472 (= (forall!11653 (toList!5978 lt!1896343) lambda!217833) e!2953292)))

(declare-fun b!4734749 () Bool)

(declare-fun e!2953293 () Bool)

(assert (=> b!4734749 (= e!2953292 e!2953293)))

(declare-fun res!2004983 () Bool)

(assert (=> b!4734749 (=> (not res!2004983) (not e!2953293))))

(assert (=> b!4734749 (= res!2004983 (dynLambda!21858 lambda!217833 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734750 () Bool)

(assert (=> b!4734750 (= e!2953293 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217833))))

(assert (= (and d!1510472 (not res!2004982)) b!4734749))

(assert (= (and b!4734749 res!2004983) b!4734750))

(declare-fun b_lambda!180813 () Bool)

(assert (=> (not b_lambda!180813) (not b!4734749)))

(declare-fun m!5679767 () Bool)

(assert (=> b!4734749 m!5679767))

(declare-fun m!5679769 () Bool)

(assert (=> b!4734750 m!5679769))

(assert (=> b!4733537 d!1510472))

(declare-fun b!4734751 () Bool)

(declare-fun e!2953298 () Unit!131735)

(declare-fun lt!1897743 () Unit!131735)

(assert (=> b!4734751 (= e!2953298 lt!1897743)))

(declare-fun lt!1897739 () Unit!131735)

(assert (=> b!4734751 (= lt!1897739 (lemmaContainsKeyImpliesGetValueByKeyDefined!1891 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336))))))

(assert (=> b!4734751 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun lt!1897742 () Unit!131735)

(assert (=> b!4734751 (= lt!1897742 lt!1897739)))

(assert (=> b!4734751 (= lt!1897743 (lemmaInListThenGetKeysListContains!969 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun call!331200 () Bool)

(assert (=> b!4734751 call!331200))

(declare-fun b!4734752 () Bool)

(declare-fun e!2953295 () List!53040)

(assert (=> b!4734752 (= e!2953295 (keys!19029 lt!1896747))))

(declare-fun b!4734753 () Bool)

(declare-fun e!2953296 () Bool)

(assert (=> b!4734753 (= e!2953296 (contains!16302 (keys!19029 lt!1896747) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun b!4734754 () Bool)

(declare-fun e!2953294 () Bool)

(assert (=> b!4734754 (= e!2953294 e!2953296)))

(declare-fun res!2004986 () Bool)

(assert (=> b!4734754 (=> (not res!2004986) (not e!2953296))))

(assert (=> b!4734754 (= res!2004986 (isDefined!9680 (getValueByKey!2000 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336)))))))

(declare-fun b!4734755 () Bool)

(assert (=> b!4734755 false))

(declare-fun lt!1897738 () Unit!131735)

(declare-fun lt!1897744 () Unit!131735)

(assert (=> b!4734755 (= lt!1897738 lt!1897744)))

(assert (=> b!4734755 (containsKey!3440 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336)))))

(assert (=> b!4734755 (= lt!1897744 (lemmaInGetKeysListThenContainsKey!973 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336))))))

(declare-fun e!2953299 () Unit!131735)

(declare-fun Unit!132120 () Unit!131735)

(assert (=> b!4734755 (= e!2953299 Unit!132120)))

(declare-fun bm!331195 () Bool)

(assert (=> bm!331195 (= call!331200 (contains!16302 e!2953295 (_1!30579 (h!59284 lt!1896336))))))

(declare-fun c!808661 () Bool)

(declare-fun c!808662 () Bool)

(assert (=> bm!331195 (= c!808661 c!808662)))

(declare-fun d!1510474 () Bool)

(assert (=> d!1510474 e!2953294))

(declare-fun res!2004984 () Bool)

(assert (=> d!1510474 (=> res!2004984 e!2953294)))

(declare-fun e!2953297 () Bool)

(assert (=> d!1510474 (= res!2004984 e!2953297)))

(declare-fun res!2004985 () Bool)

(assert (=> d!1510474 (=> (not res!2004985) (not e!2953297))))

(declare-fun lt!1897741 () Bool)

(assert (=> d!1510474 (= res!2004985 (not lt!1897741))))

(declare-fun lt!1897740 () Bool)

(assert (=> d!1510474 (= lt!1897741 lt!1897740)))

(declare-fun lt!1897745 () Unit!131735)

(assert (=> d!1510474 (= lt!1897745 e!2953298)))

(assert (=> d!1510474 (= c!808662 lt!1897740)))

(assert (=> d!1510474 (= lt!1897740 (containsKey!3440 (toList!5978 lt!1896747) (_1!30579 (h!59284 lt!1896336))))))

(assert (=> d!1510474 (= (contains!16298 lt!1896747 (_1!30579 (h!59284 lt!1896336))) lt!1897741)))

(declare-fun b!4734756 () Bool)

(assert (=> b!4734756 (= e!2953295 (getKeysList!974 (toList!5978 lt!1896747)))))

(declare-fun b!4734757 () Bool)

(assert (=> b!4734757 (= e!2953298 e!2953299)))

(declare-fun c!808663 () Bool)

(assert (=> b!4734757 (= c!808663 call!331200)))

(declare-fun b!4734758 () Bool)

(declare-fun Unit!132121 () Unit!131735)

(assert (=> b!4734758 (= e!2953299 Unit!132121)))

(declare-fun b!4734759 () Bool)

(assert (=> b!4734759 (= e!2953297 (not (contains!16302 (keys!19029 lt!1896747) (_1!30579 (h!59284 lt!1896336)))))))

(assert (= (and d!1510474 c!808662) b!4734751))

(assert (= (and d!1510474 (not c!808662)) b!4734757))

(assert (= (and b!4734757 c!808663) b!4734755))

(assert (= (and b!4734757 (not c!808663)) b!4734758))

(assert (= (or b!4734751 b!4734757) bm!331195))

(assert (= (and bm!331195 c!808661) b!4734756))

(assert (= (and bm!331195 (not c!808661)) b!4734752))

(assert (= (and d!1510474 res!2004985) b!4734759))

(assert (= (and d!1510474 (not res!2004984)) b!4734754))

(assert (= (and b!4734754 res!2004986) b!4734753))

(declare-fun m!5679771 () Bool)

(assert (=> b!4734756 m!5679771))

(declare-fun m!5679773 () Bool)

(assert (=> b!4734751 m!5679773))

(declare-fun m!5679775 () Bool)

(assert (=> b!4734751 m!5679775))

(assert (=> b!4734751 m!5679775))

(declare-fun m!5679777 () Bool)

(assert (=> b!4734751 m!5679777))

(declare-fun m!5679779 () Bool)

(assert (=> b!4734751 m!5679779))

(declare-fun m!5679781 () Bool)

(assert (=> d!1510474 m!5679781))

(declare-fun m!5679783 () Bool)

(assert (=> bm!331195 m!5679783))

(declare-fun m!5679785 () Bool)

(assert (=> b!4734752 m!5679785))

(assert (=> b!4734754 m!5679775))

(assert (=> b!4734754 m!5679775))

(assert (=> b!4734754 m!5679777))

(assert (=> b!4734759 m!5679785))

(assert (=> b!4734759 m!5679785))

(declare-fun m!5679787 () Bool)

(assert (=> b!4734759 m!5679787))

(assert (=> b!4734755 m!5679781))

(declare-fun m!5679789 () Bool)

(assert (=> b!4734755 m!5679789))

(assert (=> b!4734753 m!5679785))

(assert (=> b!4734753 m!5679785))

(assert (=> b!4734753 m!5679787))

(assert (=> b!4733537 d!1510474))

(declare-fun d!1510476 () Bool)

(declare-fun res!2004987 () Bool)

(declare-fun e!2953300 () Bool)

(assert (=> d!1510476 (=> res!2004987 e!2953300)))

(assert (=> d!1510476 (= res!2004987 ((_ is Nil!52913) (toList!5978 lt!1896343)))))

(assert (=> d!1510476 (= (forall!11653 (toList!5978 lt!1896343) lambda!217834) e!2953300)))

(declare-fun b!4734760 () Bool)

(declare-fun e!2953301 () Bool)

(assert (=> b!4734760 (= e!2953300 e!2953301)))

(declare-fun res!2004988 () Bool)

(assert (=> b!4734760 (=> (not res!2004988) (not e!2953301))))

(assert (=> b!4734760 (= res!2004988 (dynLambda!21858 lambda!217834 (h!59284 (toList!5978 lt!1896343))))))

(declare-fun b!4734761 () Bool)

(assert (=> b!4734761 (= e!2953301 (forall!11653 (t!360317 (toList!5978 lt!1896343)) lambda!217834))))

(assert (= (and d!1510476 (not res!2004987)) b!4734760))

(assert (= (and b!4734760 res!2004988) b!4734761))

(declare-fun b_lambda!180815 () Bool)

(assert (=> (not b_lambda!180815) (not b!4734760)))

(declare-fun m!5679791 () Bool)

(assert (=> b!4734760 m!5679791))

(declare-fun m!5679793 () Bool)

(assert (=> b!4734761 m!5679793))

(assert (=> b!4733537 d!1510476))

(declare-fun d!1510478 () Bool)

(assert (=> d!1510478 (dynLambda!21858 lambda!217834 (h!59284 lt!1896336))))

(declare-fun lt!1897746 () Unit!131735)

(assert (=> d!1510478 (= lt!1897746 (choose!33534 (toList!5978 lt!1896747) lambda!217834 (h!59284 lt!1896336)))))

(declare-fun e!2953302 () Bool)

(assert (=> d!1510478 e!2953302))

(declare-fun res!2004989 () Bool)

(assert (=> d!1510478 (=> (not res!2004989) (not e!2953302))))

(assert (=> d!1510478 (= res!2004989 (forall!11653 (toList!5978 lt!1896747) lambda!217834))))

(assert (=> d!1510478 (= (forallContained!3693 (toList!5978 lt!1896747) lambda!217834 (h!59284 lt!1896336)) lt!1897746)))

(declare-fun b!4734762 () Bool)

(assert (=> b!4734762 (= e!2953302 (contains!16300 (toList!5978 lt!1896747) (h!59284 lt!1896336)))))

(assert (= (and d!1510478 res!2004989) b!4734762))

(declare-fun b_lambda!180817 () Bool)

(assert (=> (not b_lambda!180817) (not d!1510478)))

(declare-fun m!5679795 () Bool)

(assert (=> d!1510478 m!5679795))

(declare-fun m!5679797 () Bool)

(assert (=> d!1510478 m!5679797))

(assert (=> d!1510478 m!5677209))

(declare-fun m!5679799 () Bool)

(assert (=> b!4734762 m!5679799))

(assert (=> b!4733537 d!1510478))

(declare-fun d!1510480 () Bool)

(declare-fun e!2953303 () Bool)

(assert (=> d!1510480 e!2953303))

(declare-fun res!2004990 () Bool)

(assert (=> d!1510480 (=> (not res!2004990) (not e!2953303))))

(declare-fun lt!1897749 () ListMap!5341)

(assert (=> d!1510480 (= res!2004990 (contains!16298 lt!1897749 (_1!30579 (h!59284 lt!1896336))))))

(declare-fun lt!1897747 () List!53037)

(assert (=> d!1510480 (= lt!1897749 (ListMap!5342 lt!1897747))))

(declare-fun lt!1897750 () Unit!131735)

(declare-fun lt!1897748 () Unit!131735)

(assert (=> d!1510480 (= lt!1897750 lt!1897748)))

(assert (=> d!1510480 (= (getValueByKey!2000 lt!1897747 (_1!30579 (h!59284 lt!1896336))) (Some!12425 (_2!30579 (h!59284 lt!1896336))))))

(assert (=> d!1510480 (= lt!1897748 (lemmaContainsTupThenGetReturnValue!1102 lt!1897747 (_1!30579 (h!59284 lt!1896336)) (_2!30579 (h!59284 lt!1896336))))))

(assert (=> d!1510480 (= lt!1897747 (insertNoDuplicatedKeys!610 (toList!5978 lt!1896343) (_1!30579 (h!59284 lt!1896336)) (_2!30579 (h!59284 lt!1896336))))))

(assert (=> d!1510480 (= (+!2292 lt!1896343 (h!59284 lt!1896336)) lt!1897749)))

(declare-fun b!4734763 () Bool)

(declare-fun res!2004991 () Bool)

(assert (=> b!4734763 (=> (not res!2004991) (not e!2953303))))

(assert (=> b!4734763 (= res!2004991 (= (getValueByKey!2000 (toList!5978 lt!1897749) (_1!30579 (h!59284 lt!1896336))) (Some!12425 (_2!30579 (h!59284 lt!1896336)))))))

(declare-fun b!4734764 () Bool)

(assert (=> b!4734764 (= e!2953303 (contains!16300 (toList!5978 lt!1897749) (h!59284 lt!1896336)))))

(assert (= (and d!1510480 res!2004990) b!4734763))

(assert (= (and b!4734763 res!2004991) b!4734764))

(declare-fun m!5679801 () Bool)

(assert (=> d!1510480 m!5679801))

(declare-fun m!5679803 () Bool)

(assert (=> d!1510480 m!5679803))

(declare-fun m!5679805 () Bool)

(assert (=> d!1510480 m!5679805))

(declare-fun m!5679807 () Bool)

(assert (=> d!1510480 m!5679807))

(declare-fun m!5679809 () Bool)

(assert (=> b!4734763 m!5679809))

(declare-fun m!5679811 () Bool)

(assert (=> b!4734764 m!5679811))

(assert (=> b!4733537 d!1510480))

(declare-fun d!1510482 () Bool)

(declare-fun res!2004992 () Bool)

(declare-fun e!2953304 () Bool)

(assert (=> d!1510482 (=> res!2004992 e!2953304)))

(assert (=> d!1510482 (= res!2004992 ((_ is Nil!52913) lt!1896336))))

(assert (=> d!1510482 (= (forall!11653 lt!1896336 lambda!217834) e!2953304)))

(declare-fun b!4734765 () Bool)

(declare-fun e!2953305 () Bool)

(assert (=> b!4734765 (= e!2953304 e!2953305)))

(declare-fun res!2004993 () Bool)

(assert (=> b!4734765 (=> (not res!2004993) (not e!2953305))))

(assert (=> b!4734765 (= res!2004993 (dynLambda!21858 lambda!217834 (h!59284 lt!1896336)))))

(declare-fun b!4734766 () Bool)

(assert (=> b!4734766 (= e!2953305 (forall!11653 (t!360317 lt!1896336) lambda!217834))))

(assert (= (and d!1510482 (not res!2004992)) b!4734765))

(assert (= (and b!4734765 res!2004993) b!4734766))

(declare-fun b_lambda!180819 () Bool)

(assert (=> (not b_lambda!180819) (not b!4734765)))

(assert (=> b!4734765 m!5679795))

(assert (=> b!4734766 m!5677205))

(assert (=> b!4733537 d!1510482))

(declare-fun d!1510484 () Bool)

(declare-fun res!2004994 () Bool)

(declare-fun e!2953306 () Bool)

(assert (=> d!1510484 (=> res!2004994 e!2953306)))

(assert (=> d!1510484 (= res!2004994 ((_ is Nil!52913) (t!360317 lt!1896336)))))

(assert (=> d!1510484 (= (forall!11653 (t!360317 lt!1896336) lambda!217834) e!2953306)))

(declare-fun b!4734767 () Bool)

(declare-fun e!2953307 () Bool)

(assert (=> b!4734767 (= e!2953306 e!2953307)))

(declare-fun res!2004995 () Bool)

(assert (=> b!4734767 (=> (not res!2004995) (not e!2953307))))

(assert (=> b!4734767 (= res!2004995 (dynLambda!21858 lambda!217834 (h!59284 (t!360317 lt!1896336))))))

(declare-fun b!4734768 () Bool)

(assert (=> b!4734768 (= e!2953307 (forall!11653 (t!360317 (t!360317 lt!1896336)) lambda!217834))))

(assert (= (and d!1510484 (not res!2004994)) b!4734767))

(assert (= (and b!4734767 res!2004995) b!4734768))

(declare-fun b_lambda!180821 () Bool)

(assert (=> (not b_lambda!180821) (not b!4734767)))

(declare-fun m!5679813 () Bool)

(assert (=> b!4734767 m!5679813))

(declare-fun m!5679815 () Bool)

(assert (=> b!4734768 m!5679815))

(assert (=> b!4733537 d!1510484))

(declare-fun d!1510486 () Bool)

(declare-fun res!2004996 () Bool)

(declare-fun e!2953308 () Bool)

(assert (=> d!1510486 (=> res!2004996 e!2953308)))

(assert (=> d!1510486 (= res!2004996 ((_ is Nil!52913) (Cons!52913 lt!1896347 lt!1896335)))))

(assert (=> d!1510486 (= (forall!11653 (Cons!52913 lt!1896347 lt!1896335) lambda!217848) e!2953308)))

(declare-fun b!4734769 () Bool)

(declare-fun e!2953309 () Bool)

(assert (=> b!4734769 (= e!2953308 e!2953309)))

(declare-fun res!2004997 () Bool)

(assert (=> b!4734769 (=> (not res!2004997) (not e!2953309))))

(assert (=> b!4734769 (= res!2004997 (dynLambda!21858 lambda!217848 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))

(declare-fun b!4734770 () Bool)

(assert (=> b!4734770 (= e!2953309 (forall!11653 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) lambda!217848))))

(assert (= (and d!1510486 (not res!2004996)) b!4734769))

(assert (= (and b!4734769 res!2004997) b!4734770))

(declare-fun b_lambda!180823 () Bool)

(assert (=> (not b_lambda!180823) (not b!4734769)))

(declare-fun m!5679817 () Bool)

(assert (=> b!4734769 m!5679817))

(declare-fun m!5679819 () Bool)

(assert (=> b!4734770 m!5679819))

(assert (=> d!1509826 d!1510486))

(declare-fun d!1510488 () Bool)

(declare-fun res!2004998 () Bool)

(declare-fun e!2953310 () Bool)

(assert (=> d!1510488 (=> res!2004998 e!2953310)))

(assert (=> d!1510488 (= res!2004998 (not ((_ is Cons!52913) (Cons!52913 lt!1896347 lt!1896335))))))

(assert (=> d!1510488 (= (noDuplicateKeys!2044 (Cons!52913 lt!1896347 lt!1896335)) e!2953310)))

(declare-fun b!4734771 () Bool)

(declare-fun e!2953311 () Bool)

(assert (=> b!4734771 (= e!2953310 e!2953311)))

(declare-fun res!2004999 () Bool)

(assert (=> b!4734771 (=> (not res!2004999) (not e!2953311))))

(assert (=> b!4734771 (= res!2004999 (not (containsKey!3437 (t!360317 (Cons!52913 lt!1896347 lt!1896335)) (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335))))))))

(declare-fun b!4734772 () Bool)

(assert (=> b!4734772 (= e!2953311 (noDuplicateKeys!2044 (t!360317 (Cons!52913 lt!1896347 lt!1896335))))))

(assert (= (and d!1510488 (not res!2004998)) b!4734771))

(assert (= (and b!4734771 res!2004999) b!4734772))

(declare-fun m!5679821 () Bool)

(assert (=> b!4734771 m!5679821))

(assert (=> b!4734772 m!5677831))

(assert (=> d!1509826 d!1510488))

(declare-fun bs!1123451 () Bool)

(declare-fun b!4734776 () Bool)

(assert (= bs!1123451 (and b!4734776 b!4734500)))

(declare-fun lambda!217992 () Int)

(assert (=> bs!1123451 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217992 lambda!217958))))

(declare-fun bs!1123455 () Bool)

(assert (= bs!1123455 (and b!4734776 b!4733537)))

(assert (=> bs!1123455 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217992 lambda!217834))))

(declare-fun bs!1123457 () Bool)

(assert (= bs!1123457 (and b!4734776 b!4734383)))

(assert (=> bs!1123457 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217992 lambda!217930))))

(declare-fun bs!1123460 () Bool)

(assert (= bs!1123460 (and b!4734776 b!4734637)))

(assert (=> bs!1123460 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217992 lambda!217971))))

(declare-fun bs!1123462 () Bool)

(assert (= bs!1123462 (and b!4734776 b!4733550)))

(assert (=> bs!1123462 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217992 lambda!217843))))

(declare-fun bs!1123464 () Bool)

(assert (= bs!1123464 (and b!4734776 b!4733596)))

(assert (=> bs!1123464 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217849))))

(declare-fun bs!1123466 () Bool)

(assert (= bs!1123466 (and b!4734776 d!1509730)))

(assert (=> bs!1123466 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896702) (= lambda!217992 lambda!217822))))

(declare-fun bs!1123468 () Bool)

(assert (= bs!1123468 (and b!4734776 d!1510296)))

(assert (=> bs!1123468 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897465) (= lambda!217992 lambda!217960))))

(declare-fun bs!1123470 () Bool)

(assert (= bs!1123470 (and b!4734776 b!4734263)))

(assert (=> bs!1123470 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897244) (= lambda!217992 lambda!217922))))

(declare-fun bs!1123471 () Bool)

(assert (= bs!1123471 (and b!4734776 d!1509876)))

(assert (=> bs!1123471 (not (= lambda!217992 lambda!217862))))

(declare-fun bs!1123474 () Bool)

(assert (= bs!1123474 (and b!4734776 b!4733900)))

(assert (=> bs!1123474 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217992 lambda!217877))))

(declare-fun bs!1123476 () Bool)

(assert (= bs!1123476 (and b!4734776 d!1509984)))

(assert (=> bs!1123476 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217992 lambda!217876))))

(assert (=> bs!1123455 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217833))))

(declare-fun bs!1123478 () Bool)

(assert (= bs!1123478 (and b!4734776 b!4734714)))

(assert (=> bs!1123478 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217992 lambda!217985))))

(declare-fun bs!1123480 () Bool)

(assert (= bs!1123480 (and b!4734776 b!4734265)))

(assert (=> bs!1123480 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217992 lambda!217920))))

(declare-fun bs!1123482 () Bool)

(assert (= bs!1123482 (and b!4734776 d!1509818)))

(assert (=> bs!1123482 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896752) (= lambda!217992 lambda!217839))))

(assert (=> bs!1123478 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897694) (= lambda!217992 lambda!217987))))

(declare-fun bs!1123485 () Bool)

(assert (= bs!1123485 (and b!4734776 b!4733999)))

(assert (=> bs!1123485 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217992 lambda!217905))))

(declare-fun bs!1123486 () Bool)

(assert (= bs!1123486 (and b!4734776 d!1510190)))

(assert (=> bs!1123486 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897240) (= lambda!217992 lambda!217923))))

(declare-fun bs!1123487 () Bool)

(assert (= bs!1123487 (and b!4734776 b!4733502)))

(assert (=> bs!1123487 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217819))))

(declare-fun bs!1123489 () Bool)

(assert (= bs!1123489 (and b!4734776 b!4733500)))

(assert (=> bs!1123489 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217820))))

(declare-fun bs!1123491 () Bool)

(assert (= bs!1123491 (and b!4734776 b!4733594)))

(assert (=> bs!1123491 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217850))))

(declare-fun bs!1123493 () Bool)

(assert (= bs!1123493 (and b!4734776 d!1510404)))

(assert (=> bs!1123493 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897586) (= lambda!217992 lambda!217977))))

(declare-fun bs!1123495 () Bool)

(assert (= bs!1123495 (and b!4734776 d!1510280)))

(assert (=> bs!1123495 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897421) (= lambda!217992 lambda!217954))))

(declare-fun bs!1123497 () Bool)

(assert (= bs!1123497 (and b!4734776 d!1509820)))

(assert (=> bs!1123497 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896789) (= lambda!217992 lambda!217844))))

(assert (=> bs!1123491 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217992 lambda!217851))))

(assert (=> bs!1123451 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897469) (= lambda!217992 lambda!217959))))

(declare-fun bs!1123500 () Bool)

(assert (= bs!1123500 (and b!4734776 d!1510386)))

(assert (=> bs!1123500 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217992 lambda!217970))))

(declare-fun bs!1123501 () Bool)

(assert (= bs!1123501 (and b!4734776 d!1509826)))

(assert (=> bs!1123501 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896822) (= lambda!217992 lambda!217848))))

(declare-fun bs!1123503 () Bool)

(assert (= bs!1123503 (and b!4734776 b!4734001)))

(assert (=> bs!1123503 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217992 lambda!217904))))

(declare-fun bs!1123505 () Bool)

(assert (= bs!1123505 (and b!4734776 b!4734302)))

(assert (=> bs!1123505 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217992 lambda!217924))))

(declare-fun bs!1123506 () Bool)

(assert (= bs!1123506 (and b!4734776 d!1509834)))

(assert (=> bs!1123506 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896851) (= lambda!217992 lambda!217852))))

(declare-fun bs!1123507 () Bool)

(assert (= bs!1123507 (and b!4734776 d!1509926)))

(assert (=> bs!1123507 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217871))))

(declare-fun bs!1123508 () Bool)

(assert (= bs!1123508 (and b!4734776 b!4734502)))

(assert (=> bs!1123508 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217992 lambda!217956))))

(declare-fun bs!1123509 () Bool)

(assert (= bs!1123509 (and b!4734776 b!4733898)))

(assert (=> bs!1123509 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897028) (= lambda!217992 lambda!217882))))

(assert (=> bs!1123485 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897094) (= lambda!217992 lambda!217906))))

(declare-fun bs!1123510 () Bool)

(assert (= bs!1123510 (and b!4734776 b!4733561)))

(assert (=> bs!1123510 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217992 lambda!217847))))

(declare-fun bs!1123511 () Bool)

(assert (= bs!1123511 (and b!4734776 d!1510022)))

(assert (=> bs!1123511 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897090) (= lambda!217992 lambda!217907))))

(declare-fun bs!1123512 () Bool)

(assert (= bs!1123512 (and b!4734776 b!4733563)))

(assert (=> bs!1123512 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217845))))

(declare-fun bs!1123513 () Bool)

(assert (= bs!1123513 (and b!4734776 b!4734716)))

(assert (=> bs!1123513 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217992 lambda!217982))))

(assert (=> bs!1123457 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897341) (= lambda!217992 lambda!217931))))

(declare-fun bs!1123514 () Bool)

(assert (= bs!1123514 (and b!4734776 b!4733539)))

(assert (=> bs!1123514 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217830))))

(assert (=> bs!1123509 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217992 lambda!217880))))

(assert (=> bs!1123470 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217992 lambda!217921))))

(assert (=> bs!1123462 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217841))))

(declare-fun bs!1123515 () Bool)

(assert (= bs!1123515 (and b!4734776 b!4734473)))

(assert (=> bs!1123515 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217992 lambda!217949))))

(declare-fun bs!1123516 () Bool)

(assert (= bs!1123516 (and b!4734776 b!4734635)))

(assert (=> bs!1123516 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897590) (= lambda!217992 lambda!217975))))

(declare-fun bs!1123517 () Bool)

(assert (= bs!1123517 (and b!4734776 d!1510262)))

(assert (=> bs!1123517 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217992 lambda!217945))))

(declare-fun bs!1123518 () Bool)

(assert (= bs!1123518 (and b!4734776 b!4734385)))

(assert (=> bs!1123518 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217992 lambda!217929))))

(assert (=> bs!1123489 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217992 lambda!217821))))

(declare-fun bs!1123519 () Bool)

(assert (= bs!1123519 (and b!4734776 d!1509864)))

(assert (=> bs!1123519 (not (= lambda!217992 lambda!217860))))

(declare-fun bs!1123520 () Bool)

(assert (= bs!1123520 (and b!4734776 b!4734300)))

(assert (=> bs!1123520 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897285) (= lambda!217992 lambda!217926))))

(declare-fun bs!1123521 () Bool)

(assert (= bs!1123521 (and b!4734776 d!1510436)))

(assert (=> bs!1123521 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217992 lambda!217980))))

(assert (=> bs!1123515 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897425) (= lambda!217992 lambda!217951))))

(declare-fun bs!1123522 () Bool)

(assert (= bs!1123522 (and b!4734776 d!1510164)))

(assert (=> bs!1123522 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217992 lambda!217918))))

(declare-fun bs!1123523 () Bool)

(assert (= bs!1123523 (and b!4734776 b!4733552)))

(assert (=> bs!1123523 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217840))))

(assert (=> bs!1123520 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217992 lambda!217925))))

(declare-fun bs!1123524 () Bool)

(assert (= bs!1123524 (and b!4734776 b!4734475)))

(assert (=> bs!1123524 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217992 lambda!217946))))

(assert (=> bs!1123510 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217992 lambda!217846))))

(declare-fun bs!1123525 () Bool)

(assert (= bs!1123525 (and b!4734776 d!1509992)))

(assert (=> bs!1123525 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897024) (= lambda!217992 lambda!217883))))

(declare-fun bs!1123526 () Bool)

(assert (= bs!1123526 (and b!4734776 d!1510208)))

(assert (=> bs!1123526 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897281) (= lambda!217992 lambda!217927))))

(declare-fun bs!1123527 () Bool)

(assert (= bs!1123527 (and b!4734776 d!1510252)))

(assert (=> bs!1123527 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897337) (= lambda!217992 lambda!217940))))

(declare-fun bs!1123528 () Bool)

(assert (= bs!1123528 (and b!4734776 d!1510454)))

(assert (=> bs!1123528 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897690) (= lambda!217992 lambda!217989))))

(assert (=> bs!1123516 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217992 lambda!217973))))

(assert (=> b!4734776 true))

(declare-fun bs!1123529 () Bool)

(declare-fun b!4734774 () Bool)

(assert (= bs!1123529 (and b!4734774 b!4734500)))

(declare-fun lambda!217994 () Int)

(assert (=> bs!1123529 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217994 lambda!217958))))

(declare-fun bs!1123530 () Bool)

(assert (= bs!1123530 (and b!4734774 b!4733537)))

(assert (=> bs!1123530 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217994 lambda!217834))))

(declare-fun bs!1123531 () Bool)

(assert (= bs!1123531 (and b!4734774 b!4734383)))

(assert (=> bs!1123531 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217994 lambda!217930))))

(declare-fun bs!1123532 () Bool)

(assert (= bs!1123532 (and b!4734774 b!4734637)))

(assert (=> bs!1123532 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217994 lambda!217971))))

(declare-fun bs!1123533 () Bool)

(assert (= bs!1123533 (and b!4734774 b!4734776)))

(assert (=> bs!1123533 (= lambda!217994 lambda!217992)))

(declare-fun bs!1123534 () Bool)

(assert (= bs!1123534 (and b!4734774 b!4733550)))

(assert (=> bs!1123534 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217994 lambda!217843))))

(declare-fun bs!1123535 () Bool)

(assert (= bs!1123535 (and b!4734774 b!4733596)))

(assert (=> bs!1123535 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217849))))

(declare-fun bs!1123536 () Bool)

(assert (= bs!1123536 (and b!4734774 d!1509730)))

(assert (=> bs!1123536 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896702) (= lambda!217994 lambda!217822))))

(declare-fun bs!1123537 () Bool)

(assert (= bs!1123537 (and b!4734774 d!1510296)))

(assert (=> bs!1123537 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897465) (= lambda!217994 lambda!217960))))

(declare-fun bs!1123538 () Bool)

(assert (= bs!1123538 (and b!4734774 b!4734263)))

(assert (=> bs!1123538 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897244) (= lambda!217994 lambda!217922))))

(declare-fun bs!1123539 () Bool)

(assert (= bs!1123539 (and b!4734774 d!1509876)))

(assert (=> bs!1123539 (not (= lambda!217994 lambda!217862))))

(declare-fun bs!1123540 () Bool)

(assert (= bs!1123540 (and b!4734774 b!4733900)))

(assert (=> bs!1123540 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217994 lambda!217877))))

(declare-fun bs!1123541 () Bool)

(assert (= bs!1123541 (and b!4734774 d!1509984)))

(assert (=> bs!1123541 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217994 lambda!217876))))

(assert (=> bs!1123530 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217833))))

(declare-fun bs!1123542 () Bool)

(assert (= bs!1123542 (and b!4734774 b!4734714)))

(assert (=> bs!1123542 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217994 lambda!217985))))

(declare-fun bs!1123543 () Bool)

(assert (= bs!1123543 (and b!4734774 b!4734265)))

(assert (=> bs!1123543 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217994 lambda!217920))))

(declare-fun bs!1123544 () Bool)

(assert (= bs!1123544 (and b!4734774 d!1509818)))

(assert (=> bs!1123544 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896752) (= lambda!217994 lambda!217839))))

(assert (=> bs!1123542 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897694) (= lambda!217994 lambda!217987))))

(declare-fun bs!1123545 () Bool)

(assert (= bs!1123545 (and b!4734774 b!4733999)))

(assert (=> bs!1123545 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217994 lambda!217905))))

(declare-fun bs!1123546 () Bool)

(assert (= bs!1123546 (and b!4734774 d!1510190)))

(assert (=> bs!1123546 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897240) (= lambda!217994 lambda!217923))))

(declare-fun bs!1123547 () Bool)

(assert (= bs!1123547 (and b!4734774 b!4733502)))

(assert (=> bs!1123547 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217819))))

(declare-fun bs!1123548 () Bool)

(assert (= bs!1123548 (and b!4734774 b!4733500)))

(assert (=> bs!1123548 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217820))))

(declare-fun bs!1123549 () Bool)

(assert (= bs!1123549 (and b!4734774 b!4733594)))

(assert (=> bs!1123549 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217850))))

(declare-fun bs!1123550 () Bool)

(assert (= bs!1123550 (and b!4734774 d!1510404)))

(assert (=> bs!1123550 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897586) (= lambda!217994 lambda!217977))))

(declare-fun bs!1123551 () Bool)

(assert (= bs!1123551 (and b!4734774 d!1510280)))

(assert (=> bs!1123551 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897421) (= lambda!217994 lambda!217954))))

(declare-fun bs!1123552 () Bool)

(assert (= bs!1123552 (and b!4734774 d!1509820)))

(assert (=> bs!1123552 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896789) (= lambda!217994 lambda!217844))))

(assert (=> bs!1123549 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217994 lambda!217851))))

(assert (=> bs!1123529 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897469) (= lambda!217994 lambda!217959))))

(declare-fun bs!1123553 () Bool)

(assert (= bs!1123553 (and b!4734774 d!1510386)))

(assert (=> bs!1123553 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217994 lambda!217970))))

(declare-fun bs!1123554 () Bool)

(assert (= bs!1123554 (and b!4734774 d!1509826)))

(assert (=> bs!1123554 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896822) (= lambda!217994 lambda!217848))))

(declare-fun bs!1123555 () Bool)

(assert (= bs!1123555 (and b!4734774 b!4734001)))

(assert (=> bs!1123555 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217994 lambda!217904))))

(declare-fun bs!1123556 () Bool)

(assert (= bs!1123556 (and b!4734774 b!4734302)))

(assert (=> bs!1123556 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217994 lambda!217924))))

(declare-fun bs!1123557 () Bool)

(assert (= bs!1123557 (and b!4734774 d!1509834)))

(assert (=> bs!1123557 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896851) (= lambda!217994 lambda!217852))))

(declare-fun bs!1123559 () Bool)

(assert (= bs!1123559 (and b!4734774 d!1509926)))

(assert (=> bs!1123559 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217871))))

(declare-fun bs!1123561 () Bool)

(assert (= bs!1123561 (and b!4734774 b!4734502)))

(assert (=> bs!1123561 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217994 lambda!217956))))

(declare-fun bs!1123562 () Bool)

(assert (= bs!1123562 (and b!4734774 b!4733898)))

(assert (=> bs!1123562 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897028) (= lambda!217994 lambda!217882))))

(assert (=> bs!1123545 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897094) (= lambda!217994 lambda!217906))))

(declare-fun bs!1123566 () Bool)

(assert (= bs!1123566 (and b!4734774 b!4733561)))

(assert (=> bs!1123566 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896826) (= lambda!217994 lambda!217847))))

(declare-fun bs!1123568 () Bool)

(assert (= bs!1123568 (and b!4734774 d!1510022)))

(assert (=> bs!1123568 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897090) (= lambda!217994 lambda!217907))))

(declare-fun bs!1123570 () Bool)

(assert (= bs!1123570 (and b!4734774 b!4733563)))

(assert (=> bs!1123570 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217845))))

(declare-fun bs!1123572 () Bool)

(assert (= bs!1123572 (and b!4734774 b!4734716)))

(assert (=> bs!1123572 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217994 lambda!217982))))

(assert (=> bs!1123531 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897341) (= lambda!217994 lambda!217931))))

(declare-fun bs!1123575 () Bool)

(assert (= bs!1123575 (and b!4734774 b!4733539)))

(assert (=> bs!1123575 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217830))))

(assert (=> bs!1123562 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217994 lambda!217880))))

(assert (=> bs!1123538 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217994 lambda!217921))))

(assert (=> bs!1123534 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217841))))

(declare-fun bs!1123579 () Bool)

(assert (= bs!1123579 (and b!4734774 b!4734473)))

(assert (=> bs!1123579 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217994 lambda!217949))))

(declare-fun bs!1123581 () Bool)

(assert (= bs!1123581 (and b!4734774 b!4734635)))

(assert (=> bs!1123581 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897590) (= lambda!217994 lambda!217975))))

(declare-fun bs!1123582 () Bool)

(assert (= bs!1123582 (and b!4734774 d!1510262)))

(assert (=> bs!1123582 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896855) (= lambda!217994 lambda!217945))))

(declare-fun bs!1123584 () Bool)

(assert (= bs!1123584 (and b!4734774 b!4734385)))

(assert (=> bs!1123584 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217994 lambda!217929))))

(assert (=> bs!1123548 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896706) (= lambda!217994 lambda!217821))))

(declare-fun bs!1123587 () Bool)

(assert (= bs!1123587 (and b!4734774 d!1509864)))

(assert (=> bs!1123587 (not (= lambda!217994 lambda!217860))))

(declare-fun bs!1123588 () Bool)

(assert (= bs!1123588 (and b!4734774 b!4734300)))

(assert (=> bs!1123588 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897285) (= lambda!217994 lambda!217926))))

(declare-fun bs!1123590 () Bool)

(assert (= bs!1123590 (and b!4734774 d!1510436)))

(assert (=> bs!1123590 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896756) (= lambda!217994 lambda!217980))))

(assert (=> bs!1123579 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897425) (= lambda!217994 lambda!217951))))

(declare-fun bs!1123592 () Bool)

(assert (= bs!1123592 (and b!4734774 d!1510164)))

(assert (=> bs!1123592 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896793) (= lambda!217994 lambda!217918))))

(declare-fun bs!1123594 () Bool)

(assert (= bs!1123594 (and b!4734774 b!4733552)))

(assert (=> bs!1123594 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217840))))

(assert (=> bs!1123588 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217994 lambda!217925))))

(declare-fun bs!1123597 () Bool)

(assert (= bs!1123597 (and b!4734774 b!4734475)))

(assert (=> bs!1123597 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217994 lambda!217946))))

(assert (=> bs!1123566 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1896343) (= lambda!217994 lambda!217846))))

(declare-fun bs!1123599 () Bool)

(assert (= bs!1123599 (and b!4734774 d!1509992)))

(assert (=> bs!1123599 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897024) (= lambda!217994 lambda!217883))))

(declare-fun bs!1123601 () Bool)

(assert (= bs!1123601 (and b!4734774 d!1510208)))

(assert (=> bs!1123601 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897281) (= lambda!217994 lambda!217927))))

(declare-fun bs!1123603 () Bool)

(assert (= bs!1123603 (and b!4734774 d!1510252)))

(assert (=> bs!1123603 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897337) (= lambda!217994 lambda!217940))))

(declare-fun bs!1123604 () Bool)

(assert (= bs!1123604 (and b!4734774 d!1510454)))

(assert (=> bs!1123604 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897690) (= lambda!217994 lambda!217989))))

(assert (=> bs!1123581 (= (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217994 lambda!217973))))

(assert (=> b!4734774 true))

(declare-fun lt!1897770 () ListMap!5341)

(declare-fun lambda!217996 () Int)

(assert (=> bs!1123529 (= (= lt!1897770 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217996 lambda!217958))))

(assert (=> bs!1123530 (= (= lt!1897770 lt!1896756) (= lambda!217996 lambda!217834))))

(assert (=> bs!1123531 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217996 lambda!217930))))

(assert (=> bs!1123532 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217996 lambda!217971))))

(assert (=> bs!1123533 (= (= lt!1897770 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (= lambda!217996 lambda!217992))))

(assert (=> bs!1123534 (= (= lt!1897770 lt!1896793) (= lambda!217996 lambda!217843))))

(assert (=> bs!1123535 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217849))))

(assert (=> bs!1123536 (= (= lt!1897770 lt!1896702) (= lambda!217996 lambda!217822))))

(assert (=> bs!1123537 (= (= lt!1897770 lt!1897465) (= lambda!217996 lambda!217960))))

(assert (=> bs!1123538 (= (= lt!1897770 lt!1897244) (= lambda!217996 lambda!217922))))

(assert (=> bs!1123539 (not (= lambda!217996 lambda!217862))))

(assert (=> bs!1123540 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217996 lambda!217877))))

(assert (=> bs!1123541 (= (= lt!1897770 lt!1896826) (= lambda!217996 lambda!217876))))

(assert (=> bs!1123530 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217833))))

(assert (=> bs!1123542 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217996 lambda!217985))))

(assert (=> bs!1123543 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217996 lambda!217920))))

(assert (=> bs!1123544 (= (= lt!1897770 lt!1896752) (= lambda!217996 lambda!217839))))

(assert (=> bs!1123542 (= (= lt!1897770 lt!1897694) (= lambda!217996 lambda!217987))))

(assert (=> bs!1123545 (= (= lt!1897770 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217996 lambda!217905))))

(assert (=> bs!1123546 (= (= lt!1897770 lt!1897240) (= lambda!217996 lambda!217923))))

(assert (=> bs!1123547 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217819))))

(assert (=> bs!1123548 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217820))))

(assert (=> bs!1123549 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217850))))

(assert (=> bs!1123550 (= (= lt!1897770 lt!1897586) (= lambda!217996 lambda!217977))))

(assert (=> b!4734774 (= (= lt!1897770 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (= lambda!217996 lambda!217994))))

(assert (=> bs!1123551 (= (= lt!1897770 lt!1897421) (= lambda!217996 lambda!217954))))

(assert (=> bs!1123552 (= (= lt!1897770 lt!1896789) (= lambda!217996 lambda!217844))))

(assert (=> bs!1123549 (= (= lt!1897770 lt!1896855) (= lambda!217996 lambda!217851))))

(assert (=> bs!1123529 (= (= lt!1897770 lt!1897469) (= lambda!217996 lambda!217959))))

(assert (=> bs!1123553 (= (= lt!1897770 lt!1896706) (= lambda!217996 lambda!217970))))

(assert (=> bs!1123554 (= (= lt!1897770 lt!1896822) (= lambda!217996 lambda!217848))))

(assert (=> bs!1123555 (= (= lt!1897770 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217996 lambda!217904))))

(assert (=> bs!1123556 (= (= lt!1897770 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217996 lambda!217924))))

(assert (=> bs!1123557 (= (= lt!1897770 lt!1896851) (= lambda!217996 lambda!217852))))

(assert (=> bs!1123559 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217871))))

(assert (=> bs!1123561 (= (= lt!1897770 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217996 lambda!217956))))

(assert (=> bs!1123562 (= (= lt!1897770 lt!1897028) (= lambda!217996 lambda!217882))))

(assert (=> bs!1123545 (= (= lt!1897770 lt!1897094) (= lambda!217996 lambda!217906))))

(assert (=> bs!1123566 (= (= lt!1897770 lt!1896826) (= lambda!217996 lambda!217847))))

(assert (=> bs!1123568 (= (= lt!1897770 lt!1897090) (= lambda!217996 lambda!217907))))

(assert (=> bs!1123570 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217845))))

(assert (=> bs!1123572 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217996 lambda!217982))))

(assert (=> bs!1123531 (= (= lt!1897770 lt!1897341) (= lambda!217996 lambda!217931))))

(assert (=> bs!1123575 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217830))))

(assert (=> bs!1123562 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217996 lambda!217880))))

(assert (=> bs!1123538 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217996 lambda!217921))))

(assert (=> bs!1123534 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217841))))

(assert (=> bs!1123579 (= (= lt!1897770 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217996 lambda!217949))))

(assert (=> bs!1123581 (= (= lt!1897770 lt!1897590) (= lambda!217996 lambda!217975))))

(assert (=> bs!1123582 (= (= lt!1897770 lt!1896855) (= lambda!217996 lambda!217945))))

(assert (=> bs!1123584 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217996 lambda!217929))))

(assert (=> bs!1123548 (= (= lt!1897770 lt!1896706) (= lambda!217996 lambda!217821))))

(assert (=> bs!1123587 (not (= lambda!217996 lambda!217860))))

(assert (=> bs!1123588 (= (= lt!1897770 lt!1897285) (= lambda!217996 lambda!217926))))

(assert (=> bs!1123590 (= (= lt!1897770 lt!1896756) (= lambda!217996 lambda!217980))))

(assert (=> bs!1123579 (= (= lt!1897770 lt!1897425) (= lambda!217996 lambda!217951))))

(assert (=> bs!1123592 (= (= lt!1897770 lt!1896793) (= lambda!217996 lambda!217918))))

(assert (=> bs!1123594 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217840))))

(assert (=> bs!1123588 (= (= lt!1897770 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217996 lambda!217925))))

(assert (=> bs!1123597 (= (= lt!1897770 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217996 lambda!217946))))

(assert (=> bs!1123566 (= (= lt!1897770 lt!1896343) (= lambda!217996 lambda!217846))))

(assert (=> bs!1123599 (= (= lt!1897770 lt!1897024) (= lambda!217996 lambda!217883))))

(assert (=> bs!1123601 (= (= lt!1897770 lt!1897281) (= lambda!217996 lambda!217927))))

(assert (=> bs!1123603 (= (= lt!1897770 lt!1897337) (= lambda!217996 lambda!217940))))

(assert (=> bs!1123604 (= (= lt!1897770 lt!1897690) (= lambda!217996 lambda!217989))))

(assert (=> bs!1123581 (= (= lt!1897770 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217996 lambda!217973))))

(assert (=> b!4734774 true))

(declare-fun bs!1123630 () Bool)

(declare-fun d!1510490 () Bool)

(assert (= bs!1123630 (and d!1510490 b!4734500)))

(declare-fun lambda!217998 () Int)

(declare-fun lt!1897766 () ListMap!5341)

(assert (=> bs!1123630 (= (= lt!1897766 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217998 lambda!217958))))

(declare-fun bs!1123631 () Bool)

(assert (= bs!1123631 (and d!1510490 b!4733537)))

(assert (=> bs!1123631 (= (= lt!1897766 lt!1896756) (= lambda!217998 lambda!217834))))

(declare-fun bs!1123632 () Bool)

(assert (= bs!1123632 (and d!1510490 b!4734383)))

(assert (=> bs!1123632 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217998 lambda!217930))))

(declare-fun bs!1123633 () Bool)

(assert (= bs!1123633 (and d!1510490 b!4734637)))

(assert (=> bs!1123633 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217998 lambda!217971))))

(declare-fun bs!1123634 () Bool)

(assert (= bs!1123634 (and d!1510490 b!4734776)))

(assert (=> bs!1123634 (= (= lt!1897766 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (= lambda!217998 lambda!217992))))

(declare-fun bs!1123635 () Bool)

(assert (= bs!1123635 (and d!1510490 b!4733550)))

(assert (=> bs!1123635 (= (= lt!1897766 lt!1896793) (= lambda!217998 lambda!217843))))

(declare-fun bs!1123636 () Bool)

(assert (= bs!1123636 (and d!1510490 b!4733596)))

(assert (=> bs!1123636 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217849))))

(declare-fun bs!1123637 () Bool)

(assert (= bs!1123637 (and d!1510490 d!1509730)))

(assert (=> bs!1123637 (= (= lt!1897766 lt!1896702) (= lambda!217998 lambda!217822))))

(declare-fun bs!1123638 () Bool)

(assert (= bs!1123638 (and d!1510490 d!1510296)))

(assert (=> bs!1123638 (= (= lt!1897766 lt!1897465) (= lambda!217998 lambda!217960))))

(declare-fun bs!1123639 () Bool)

(assert (= bs!1123639 (and d!1510490 b!4734263)))

(assert (=> bs!1123639 (= (= lt!1897766 lt!1897244) (= lambda!217998 lambda!217922))))

(declare-fun bs!1123640 () Bool)

(assert (= bs!1123640 (and d!1510490 d!1509876)))

(assert (=> bs!1123640 (not (= lambda!217998 lambda!217862))))

(declare-fun bs!1123641 () Bool)

(assert (= bs!1123641 (and d!1510490 b!4733900)))

(assert (=> bs!1123641 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217998 lambda!217877))))

(declare-fun bs!1123642 () Bool)

(assert (= bs!1123642 (and d!1510490 d!1509984)))

(assert (=> bs!1123642 (= (= lt!1897766 lt!1896826) (= lambda!217998 lambda!217876))))

(assert (=> bs!1123631 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217833))))

(declare-fun bs!1123645 () Bool)

(assert (= bs!1123645 (and d!1510490 b!4734714)))

(assert (=> bs!1123645 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217998 lambda!217985))))

(declare-fun bs!1123646 () Bool)

(assert (= bs!1123646 (and d!1510490 b!4734265)))

(assert (=> bs!1123646 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217998 lambda!217920))))

(declare-fun bs!1123648 () Bool)

(assert (= bs!1123648 (and d!1510490 d!1509818)))

(assert (=> bs!1123648 (= (= lt!1897766 lt!1896752) (= lambda!217998 lambda!217839))))

(assert (=> bs!1123645 (= (= lt!1897766 lt!1897694) (= lambda!217998 lambda!217987))))

(declare-fun bs!1123650 () Bool)

(assert (= bs!1123650 (and d!1510490 b!4733999)))

(assert (=> bs!1123650 (= (= lt!1897766 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217998 lambda!217905))))

(declare-fun bs!1123652 () Bool)

(assert (= bs!1123652 (and d!1510490 d!1510190)))

(assert (=> bs!1123652 (= (= lt!1897766 lt!1897240) (= lambda!217998 lambda!217923))))

(declare-fun bs!1123655 () Bool)

(assert (= bs!1123655 (and d!1510490 b!4733502)))

(assert (=> bs!1123655 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217819))))

(declare-fun bs!1123657 () Bool)

(assert (= bs!1123657 (and d!1510490 b!4733500)))

(assert (=> bs!1123657 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217820))))

(declare-fun bs!1123658 () Bool)

(assert (= bs!1123658 (and d!1510490 b!4733594)))

(assert (=> bs!1123658 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217850))))

(declare-fun bs!1123660 () Bool)

(assert (= bs!1123660 (and d!1510490 d!1510404)))

(assert (=> bs!1123660 (= (= lt!1897766 lt!1897586) (= lambda!217998 lambda!217977))))

(declare-fun bs!1123662 () Bool)

(assert (= bs!1123662 (and d!1510490 b!4734774)))

(assert (=> bs!1123662 (= (= lt!1897766 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (= lambda!217998 lambda!217994))))

(declare-fun bs!1123665 () Bool)

(assert (= bs!1123665 (and d!1510490 d!1510280)))

(assert (=> bs!1123665 (= (= lt!1897766 lt!1897421) (= lambda!217998 lambda!217954))))

(declare-fun bs!1123667 () Bool)

(assert (= bs!1123667 (and d!1510490 d!1509820)))

(assert (=> bs!1123667 (= (= lt!1897766 lt!1896789) (= lambda!217998 lambda!217844))))

(assert (=> bs!1123658 (= (= lt!1897766 lt!1896855) (= lambda!217998 lambda!217851))))

(assert (=> bs!1123630 (= (= lt!1897766 lt!1897469) (= lambda!217998 lambda!217959))))

(declare-fun bs!1123670 () Bool)

(assert (= bs!1123670 (and d!1510490 d!1510386)))

(assert (=> bs!1123670 (= (= lt!1897766 lt!1896706) (= lambda!217998 lambda!217970))))

(declare-fun bs!1123673 () Bool)

(assert (= bs!1123673 (and d!1510490 d!1509826)))

(assert (=> bs!1123673 (= (= lt!1897766 lt!1896822) (= lambda!217998 lambda!217848))))

(declare-fun bs!1123675 () Bool)

(assert (= bs!1123675 (and d!1510490 b!4734001)))

(assert (=> bs!1123675 (= (= lt!1897766 (extractMap!2070 (t!360318 lt!1896327))) (= lambda!217998 lambda!217904))))

(declare-fun bs!1123677 () Bool)

(assert (= bs!1123677 (and d!1510490 b!4734302)))

(assert (=> bs!1123677 (= (= lt!1897766 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217998 lambda!217924))))

(declare-fun bs!1123680 () Bool)

(assert (= bs!1123680 (and d!1510490 d!1509834)))

(assert (=> bs!1123680 (= (= lt!1897766 lt!1896851) (= lambda!217998 lambda!217852))))

(declare-fun bs!1123682 () Bool)

(assert (= bs!1123682 (and d!1510490 d!1509926)))

(assert (=> bs!1123682 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217871))))

(declare-fun bs!1123685 () Bool)

(assert (= bs!1123685 (and d!1510490 b!4734502)))

(assert (=> bs!1123685 (= (= lt!1897766 (extractMap!2070 (t!360318 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))) (= lambda!217998 lambda!217956))))

(declare-fun bs!1123688 () Bool)

(assert (= bs!1123688 (and d!1510490 b!4733898)))

(assert (=> bs!1123688 (= (= lt!1897766 lt!1897028) (= lambda!217998 lambda!217882))))

(assert (=> bs!1123650 (= (= lt!1897766 lt!1897094) (= lambda!217998 lambda!217906))))

(declare-fun bs!1123691 () Bool)

(assert (= bs!1123691 (and d!1510490 b!4733561)))

(assert (=> bs!1123691 (= (= lt!1897766 lt!1896826) (= lambda!217998 lambda!217847))))

(declare-fun bs!1123693 () Bool)

(assert (= bs!1123693 (and d!1510490 d!1510022)))

(assert (=> bs!1123693 (= (= lt!1897766 lt!1897090) (= lambda!217998 lambda!217907))))

(assert (=> bs!1123662 (= (= lt!1897766 lt!1897770) (= lambda!217998 lambda!217996))))

(declare-fun bs!1123696 () Bool)

(assert (= bs!1123696 (and d!1510490 b!4733563)))

(assert (=> bs!1123696 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217845))))

(declare-fun bs!1123699 () Bool)

(assert (= bs!1123699 (and d!1510490 b!4734716)))

(assert (=> bs!1123699 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 lt!1896336))) (= lambda!217998 lambda!217982))))

(assert (=> bs!1123632 (= (= lt!1897766 lt!1897341) (= lambda!217998 lambda!217931))))

(declare-fun bs!1123707 () Bool)

(assert (= bs!1123707 (and d!1510490 b!4733539)))

(assert (=> bs!1123707 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217830))))

(assert (=> bs!1123688 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))) (= lambda!217998 lambda!217880))))

(assert (=> bs!1123639 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 lt!1896335))) (= lambda!217998 lambda!217921))))

(assert (=> bs!1123635 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217841))))

(declare-fun bs!1123708 () Bool)

(assert (= bs!1123708 (and d!1510490 b!4734473)))

(assert (=> bs!1123708 (= (= lt!1897766 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217998 lambda!217949))))

(declare-fun bs!1123709 () Bool)

(assert (= bs!1123709 (and d!1510490 b!4734635)))

(assert (=> bs!1123709 (= (= lt!1897766 lt!1897590) (= lambda!217998 lambda!217975))))

(declare-fun bs!1123710 () Bool)

(assert (= bs!1123710 (and d!1510490 d!1510262)))

(assert (=> bs!1123710 (= (= lt!1897766 lt!1896855) (= lambda!217998 lambda!217945))))

(declare-fun bs!1123712 () Bool)

(assert (= bs!1123712 (and d!1510490 b!4734385)))

(assert (=> bs!1123712 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))) (= lambda!217998 lambda!217929))))

(assert (=> bs!1123657 (= (= lt!1897766 lt!1896706) (= lambda!217998 lambda!217821))))

(declare-fun bs!1123713 () Bool)

(assert (= bs!1123713 (and d!1510490 d!1509864)))

(assert (=> bs!1123713 (not (= lambda!217998 lambda!217860))))

(declare-fun bs!1123715 () Bool)

(assert (= bs!1123715 (and d!1510490 b!4734300)))

(assert (=> bs!1123715 (= (= lt!1897766 lt!1897285) (= lambda!217998 lambda!217926))))

(declare-fun bs!1123716 () Bool)

(assert (= bs!1123716 (and d!1510490 d!1510436)))

(assert (=> bs!1123716 (= (= lt!1897766 lt!1896756) (= lambda!217998 lambda!217980))))

(assert (=> bs!1123708 (= (= lt!1897766 lt!1897425) (= lambda!217998 lambda!217951))))

(declare-fun bs!1123717 () Bool)

(assert (= bs!1123717 (and d!1510490 d!1510164)))

(assert (=> bs!1123717 (= (= lt!1897766 lt!1896793) (= lambda!217998 lambda!217918))))

(declare-fun bs!1123718 () Bool)

(assert (= bs!1123718 (and d!1510490 b!4733552)))

(assert (=> bs!1123718 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217840))))

(assert (=> bs!1123715 (= (= lt!1897766 (extractMap!2070 (t!360318 (t!360318 (toList!5977 lm!2023))))) (= lambda!217998 lambda!217925))))

(declare-fun bs!1123720 () Bool)

(assert (= bs!1123720 (and d!1510490 b!4734475)))

(assert (=> bs!1123720 (= (= lt!1897766 (extractMap!2070 (t!360318 (toList!5977 lm!2023)))) (= lambda!217998 lambda!217946))))

(assert (=> bs!1123691 (= (= lt!1897766 lt!1896343) (= lambda!217998 lambda!217846))))

(declare-fun bs!1123722 () Bool)

(assert (= bs!1123722 (and d!1510490 d!1509992)))

(assert (=> bs!1123722 (= (= lt!1897766 lt!1897024) (= lambda!217998 lambda!217883))))

(declare-fun bs!1123723 () Bool)

(assert (= bs!1123723 (and d!1510490 d!1510208)))

(assert (=> bs!1123723 (= (= lt!1897766 lt!1897281) (= lambda!217998 lambda!217927))))

(declare-fun bs!1123725 () Bool)

(assert (= bs!1123725 (and d!1510490 d!1510252)))

(assert (=> bs!1123725 (= (= lt!1897766 lt!1897337) (= lambda!217998 lambda!217940))))

(declare-fun bs!1123727 () Bool)

(assert (= bs!1123727 (and d!1510490 d!1510454)))

(assert (=> bs!1123727 (= (= lt!1897766 lt!1897690) (= lambda!217998 lambda!217989))))

(assert (=> bs!1123709 (= (= lt!1897766 (+!2292 lt!1896343 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (= lambda!217998 lambda!217973))))

(assert (=> d!1510490 true))

(declare-fun bm!331196 () Bool)

(declare-fun c!808664 () Bool)

(declare-fun call!331201 () Bool)

(assert (=> bm!331196 (= call!331201 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (ite c!808664 lambda!217992 lambda!217996)))))

(declare-fun b!4734773 () Bool)

(declare-fun e!2953314 () Bool)

(assert (=> b!4734773 (= e!2953314 call!331201)))

(declare-fun bm!331197 () Bool)

(declare-fun call!331203 () Unit!131735)

(assert (=> bm!331197 (= call!331203 (lemmaContainsAllItsOwnKeys!820 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))))

(declare-fun bm!331198 () Bool)

(declare-fun call!331202 () Bool)

(assert (=> bm!331198 (= call!331202 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (ite c!808664 lambda!217992 lambda!217996)))))

(declare-fun e!2953312 () Bool)

(assert (=> d!1510490 e!2953312))

(declare-fun res!2005000 () Bool)

(assert (=> d!1510490 (=> (not res!2005000) (not e!2953312))))

(assert (=> d!1510490 (= res!2005000 (forall!11653 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lambda!217998))))

(declare-fun e!2953313 () ListMap!5341)

(assert (=> d!1510490 (= lt!1897766 e!2953313)))

(assert (=> d!1510490 (= c!808664 ((_ is Nil!52913) (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))))

(assert (=> d!1510490 (noDuplicateKeys!2044 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))

(assert (=> d!1510490 (= (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) lt!1897766)))

(assert (=> b!4734774 (= e!2953313 lt!1897770)))

(declare-fun lt!1897761 () ListMap!5341)

(assert (=> b!4734774 (= lt!1897761 (+!2292 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))))

(assert (=> b!4734774 (= lt!1897770 (addToMapMapFromBucket!1474 (t!360317 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (+!2292 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))))))

(declare-fun lt!1897762 () Unit!131735)

(assert (=> b!4734774 (= lt!1897762 call!331203)))

(assert (=> b!4734774 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) lambda!217994)))

(declare-fun lt!1897759 () Unit!131735)

(assert (=> b!4734774 (= lt!1897759 lt!1897762)))

(assert (=> b!4734774 (forall!11653 (toList!5978 lt!1897761) lambda!217996)))

(declare-fun lt!1897760 () Unit!131735)

(declare-fun Unit!132122 () Unit!131735)

(assert (=> b!4734774 (= lt!1897760 Unit!132122)))

(assert (=> b!4734774 (forall!11653 (t!360317 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) lambda!217996)))

(declare-fun lt!1897756 () Unit!131735)

(declare-fun Unit!132123 () Unit!131735)

(assert (=> b!4734774 (= lt!1897756 Unit!132123)))

(declare-fun lt!1897771 () Unit!131735)

(declare-fun Unit!132124 () Unit!131735)

(assert (=> b!4734774 (= lt!1897771 Unit!132124)))

(declare-fun lt!1897753 () Unit!131735)

(assert (=> b!4734774 (= lt!1897753 (forallContained!3693 (toList!5978 lt!1897761) lambda!217996 (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))))

(assert (=> b!4734774 (contains!16298 lt!1897761 (_1!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun lt!1897765 () Unit!131735)

(declare-fun Unit!132125 () Unit!131735)

(assert (=> b!4734774 (= lt!1897765 Unit!132125)))

(assert (=> b!4734774 (contains!16298 lt!1897770 (_1!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun lt!1897767 () Unit!131735)

(declare-fun Unit!132126 () Unit!131735)

(assert (=> b!4734774 (= lt!1897767 Unit!132126)))

(assert (=> b!4734774 (forall!11653 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lambda!217996)))

(declare-fun lt!1897769 () Unit!131735)

(declare-fun Unit!132127 () Unit!131735)

(assert (=> b!4734774 (= lt!1897769 Unit!132127)))

(assert (=> b!4734774 (forall!11653 (toList!5978 lt!1897761) lambda!217996)))

(declare-fun lt!1897757 () Unit!131735)

(declare-fun Unit!132128 () Unit!131735)

(assert (=> b!4734774 (= lt!1897757 Unit!132128)))

(declare-fun lt!1897752 () Unit!131735)

(declare-fun Unit!132129 () Unit!131735)

(assert (=> b!4734774 (= lt!1897752 Unit!132129)))

(declare-fun lt!1897754 () Unit!131735)

(assert (=> b!4734774 (= lt!1897754 (addForallContainsKeyThenBeforeAdding!819 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897770 (_1!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))) (_2!30579 (h!59284 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))))))

(assert (=> b!4734774 call!331202))

(declare-fun lt!1897763 () Unit!131735)

(assert (=> b!4734774 (= lt!1897763 lt!1897754)))

(assert (=> b!4734774 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) lambda!217996)))

(declare-fun lt!1897751 () Unit!131735)

(declare-fun Unit!132133 () Unit!131735)

(assert (=> b!4734774 (= lt!1897751 Unit!132133)))

(declare-fun res!2005002 () Bool)

(assert (=> b!4734774 (= res!2005002 (forall!11653 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lambda!217996))))

(assert (=> b!4734774 (=> (not res!2005002) (not e!2953314))))

(assert (=> b!4734774 e!2953314))

(declare-fun lt!1897755 () Unit!131735)

(declare-fun Unit!132135 () Unit!131735)

(assert (=> b!4734774 (= lt!1897755 Unit!132135)))

(declare-fun b!4734775 () Bool)

(declare-fun res!2005001 () Bool)

(assert (=> b!4734775 (=> (not res!2005001) (not e!2953312))))

(assert (=> b!4734775 (= res!2005001 (forall!11653 (toList!5978 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) lambda!217998))))

(assert (=> b!4734776 (= e!2953313 (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))

(declare-fun lt!1897764 () Unit!131735)

(assert (=> b!4734776 (= lt!1897764 call!331203)))

(assert (=> b!4734776 call!331202))

(declare-fun lt!1897768 () Unit!131735)

(assert (=> b!4734776 (= lt!1897768 lt!1897764)))

(assert (=> b!4734776 call!331201))

(declare-fun lt!1897758 () Unit!131735)

(declare-fun Unit!132140 () Unit!131735)

(assert (=> b!4734776 (= lt!1897758 Unit!132140)))

(declare-fun b!4734777 () Bool)

(assert (=> b!4734777 (= e!2953312 (invariantList!1535 (toList!5978 lt!1897766)))))

(assert (= (and d!1510490 c!808664) b!4734776))

(assert (= (and d!1510490 (not c!808664)) b!4734774))

(assert (= (and b!4734774 res!2005002) b!4734773))

(assert (= (or b!4734776 b!4734774) bm!331197))

(assert (= (or b!4734776 b!4734774) bm!331198))

(assert (= (or b!4734776 b!4734773) bm!331196))

(assert (= (and d!1510490 res!2005000) b!4734775))

(assert (= (and b!4734775 res!2005001) b!4734777))

(declare-fun m!5679865 () Bool)

(assert (=> bm!331196 m!5679865))

(declare-fun m!5679867 () Bool)

(assert (=> d!1510490 m!5679867))

(declare-fun m!5679869 () Bool)

(assert (=> d!1510490 m!5679869))

(assert (=> bm!331197 m!5677409))

(declare-fun m!5679871 () Bool)

(assert (=> bm!331197 m!5679871))

(declare-fun m!5679873 () Bool)

(assert (=> b!4734774 m!5679873))

(declare-fun m!5679875 () Bool)

(assert (=> b!4734774 m!5679875))

(declare-fun m!5679877 () Bool)

(assert (=> b!4734774 m!5679877))

(declare-fun m!5679879 () Bool)

(assert (=> b!4734774 m!5679879))

(declare-fun m!5679881 () Bool)

(assert (=> b!4734774 m!5679881))

(declare-fun m!5679883 () Bool)

(assert (=> b!4734774 m!5679883))

(declare-fun m!5679885 () Bool)

(assert (=> b!4734774 m!5679885))

(assert (=> b!4734774 m!5679873))

(assert (=> b!4734774 m!5677409))

(declare-fun m!5679887 () Bool)

(assert (=> b!4734774 m!5679887))

(declare-fun m!5679889 () Bool)

(assert (=> b!4734774 m!5679889))

(assert (=> b!4734774 m!5679879))

(assert (=> b!4734774 m!5677409))

(declare-fun m!5679891 () Bool)

(assert (=> b!4734774 m!5679891))

(assert (=> b!4734774 m!5679887))

(declare-fun m!5679893 () Bool)

(assert (=> b!4734774 m!5679893))

(declare-fun m!5679895 () Bool)

(assert (=> b!4734775 m!5679895))

(assert (=> bm!331198 m!5679865))

(declare-fun m!5679897 () Bool)

(assert (=> b!4734777 m!5679897))

(assert (=> b!4733615 d!1510490))

(declare-fun bs!1123760 () Bool)

(declare-fun d!1510496 () Bool)

(assert (= bs!1123760 (and d!1510496 start!482632)))

(declare-fun lambda!218001 () Int)

(assert (=> bs!1123760 (= lambda!218001 lambda!217712)))

(declare-fun bs!1123761 () Bool)

(assert (= bs!1123761 (and d!1510496 d!1509850)))

(assert (=> bs!1123761 (= lambda!218001 lambda!217854)))

(declare-fun bs!1123763 () Bool)

(assert (= bs!1123763 (and d!1510496 d!1509868)))

(assert (=> bs!1123763 (= lambda!218001 lambda!217861)))

(declare-fun bs!1123765 () Bool)

(assert (= bs!1123765 (and d!1510496 d!1509812)))

(assert (=> bs!1123765 (= lambda!218001 lambda!217826)))

(declare-fun bs!1123766 () Bool)

(assert (= bs!1123766 (and d!1510496 d!1509816)))

(assert (=> bs!1123766 (= lambda!218001 lambda!217829)))

(declare-fun bs!1123768 () Bool)

(assert (= bs!1123768 (and d!1510496 d!1509792)))

(assert (=> bs!1123768 (= lambda!218001 lambda!217825)))

(declare-fun bs!1123769 () Bool)

(assert (= bs!1123769 (and d!1510496 d!1509862)))

(assert (=> bs!1123769 (not (= lambda!218001 lambda!217857))))

(declare-fun bs!1123770 () Bool)

(assert (= bs!1123770 (and d!1510496 d!1510034)))

(assert (=> bs!1123770 (= lambda!218001 lambda!217908)))

(declare-fun bs!1123771 () Bool)

(assert (= bs!1123771 (and d!1510496 d!1509704)))

(assert (=> bs!1123771 (= lambda!218001 lambda!217749)))

(declare-fun bs!1123772 () Bool)

(assert (= bs!1123772 (and d!1510496 d!1510332)))

(assert (=> bs!1123772 (= lambda!218001 lambda!217961)))

(declare-fun bs!1123773 () Bool)

(assert (= bs!1123773 (and d!1510496 d!1510348)))

(assert (=> bs!1123773 (= lambda!218001 lambda!217967)))

(declare-fun bs!1123774 () Bool)

(assert (= bs!1123774 (and d!1510496 d!1509848)))

(assert (=> bs!1123774 (= lambda!218001 lambda!217853)))

(declare-fun bs!1123775 () Bool)

(assert (= bs!1123775 (and d!1510496 d!1510210)))

(assert (=> bs!1123775 (= lambda!218001 lambda!217928)))

(declare-fun bs!1123776 () Bool)

(assert (= bs!1123776 (and d!1510496 d!1509702)))

(assert (=> bs!1123776 (= lambda!218001 lambda!217718)))

(declare-fun bs!1123777 () Bool)

(assert (= bs!1123777 (and d!1510496 d!1510042)))

(assert (=> bs!1123777 (= lambda!218001 lambda!217909)))

(declare-fun lt!1897794 () ListMap!5341)

(assert (=> d!1510496 (invariantList!1535 (toList!5978 lt!1897794))))

(declare-fun e!2953319 () ListMap!5341)

(assert (=> d!1510496 (= lt!1897794 e!2953319)))

(declare-fun c!808667 () Bool)

(assert (=> d!1510496 (= c!808667 ((_ is Cons!52914) (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))

(assert (=> d!1510496 (forall!11651 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))) lambda!218001)))

(assert (=> d!1510496 (= (extractMap!2070 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) lt!1897794)))

(declare-fun b!4734785 () Bool)

(assert (=> b!4734785 (= e!2953319 (addToMapMapFromBucket!1474 (_2!30580 (h!59285 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))) (extractMap!2070 (t!360318 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))))

(declare-fun b!4734786 () Bool)

(assert (=> b!4734786 (= e!2953319 (ListMap!5342 Nil!52913))))

(assert (= (and d!1510496 c!808667) b!4734785))

(assert (= (and d!1510496 (not c!808667)) b!4734786))

(declare-fun m!5679899 () Bool)

(assert (=> d!1510496 m!5679899))

(declare-fun m!5679901 () Bool)

(assert (=> d!1510496 m!5679901))

(declare-fun m!5679903 () Bool)

(assert (=> b!4734785 m!5679903))

(assert (=> b!4734785 m!5679903))

(declare-fun m!5679905 () Bool)

(assert (=> b!4734785 m!5679905))

(assert (=> b!4733615 d!1510496))

(declare-fun d!1510498 () Bool)

(assert (=> d!1510498 (isDefined!9678 (getValueByKey!1999 (toList!5977 lm!2023) lt!1896341))))

(declare-fun lt!1897797 () Unit!131735)

(declare-fun choose!33544 (List!53038 (_ BitVec 64)) Unit!131735)

(assert (=> d!1510498 (= lt!1897797 (choose!33544 (toList!5977 lm!2023) lt!1896341))))

(declare-fun e!2953322 () Bool)

(assert (=> d!1510498 e!2953322))

(declare-fun res!2005008 () Bool)

(assert (=> d!1510498 (=> (not res!2005008) (not e!2953322))))

(assert (=> d!1510498 (= res!2005008 (isStrictlySorted!771 (toList!5977 lm!2023)))))

(assert (=> d!1510498 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1889 (toList!5977 lm!2023) lt!1896341) lt!1897797)))

(declare-fun b!4734789 () Bool)

(assert (=> b!4734789 (= e!2953322 (containsKey!3438 (toList!5977 lm!2023) lt!1896341))))

(assert (= (and d!1510498 res!2005008) b!4734789))

(assert (=> d!1510498 m!5676685))

(assert (=> d!1510498 m!5676685))

(assert (=> d!1510498 m!5676687))

(declare-fun m!5679907 () Bool)

(assert (=> d!1510498 m!5679907))

(assert (=> d!1510498 m!5676649))

(assert (=> b!4734789 m!5676681))

(assert (=> b!4733324 d!1510498))

(assert (=> b!4733324 d!1510088))

(assert (=> b!4733324 d!1510090))

(declare-fun d!1510500 () Bool)

(declare-fun res!2005009 () Bool)

(declare-fun e!2953323 () Bool)

(assert (=> d!1510500 (=> res!2005009 e!2953323)))

(assert (=> d!1510500 (= res!2005009 (and ((_ is Cons!52913) (t!360317 oldBucket!34)) (= (_1!30579 (h!59284 (t!360317 oldBucket!34))) (_1!30579 (h!59284 oldBucket!34)))))))

(assert (=> d!1510500 (= (containsKey!3437 (t!360317 oldBucket!34) (_1!30579 (h!59284 oldBucket!34))) e!2953323)))

(declare-fun b!4734790 () Bool)

(declare-fun e!2953324 () Bool)

(assert (=> b!4734790 (= e!2953323 e!2953324)))

(declare-fun res!2005010 () Bool)

(assert (=> b!4734790 (=> (not res!2005010) (not e!2953324))))

(assert (=> b!4734790 (= res!2005010 ((_ is Cons!52913) (t!360317 oldBucket!34)))))

(declare-fun b!4734791 () Bool)

(assert (=> b!4734791 (= e!2953324 (containsKey!3437 (t!360317 (t!360317 oldBucket!34)) (_1!30579 (h!59284 oldBucket!34))))))

(assert (= (and d!1510500 (not res!2005009)) b!4734790))

(assert (= (and b!4734790 res!2005010) b!4734791))

(declare-fun m!5679909 () Bool)

(assert (=> b!4734791 m!5679909))

(assert (=> b!4733278 d!1510500))

(declare-fun d!1510502 () Bool)

(declare-fun lt!1897798 () Bool)

(assert (=> d!1510502 (= lt!1897798 (select (content!9439 (t!360318 (toList!5977 lm!2023))) lt!1896328))))

(declare-fun e!2953326 () Bool)

(assert (=> d!1510502 (= lt!1897798 e!2953326)))

(declare-fun res!2005011 () Bool)

(assert (=> d!1510502 (=> (not res!2005011) (not e!2953326))))

(assert (=> d!1510502 (= res!2005011 ((_ is Cons!52914) (t!360318 (toList!5977 lm!2023))))))

(assert (=> d!1510502 (= (contains!16296 (t!360318 (toList!5977 lm!2023)) lt!1896328) lt!1897798)))

(declare-fun b!4734792 () Bool)

(declare-fun e!2953325 () Bool)

(assert (=> b!4734792 (= e!2953326 e!2953325)))

(declare-fun res!2005012 () Bool)

(assert (=> b!4734792 (=> res!2005012 e!2953325)))

(assert (=> b!4734792 (= res!2005012 (= (h!59285 (t!360318 (toList!5977 lm!2023))) lt!1896328))))

(declare-fun b!4734793 () Bool)

(assert (=> b!4734793 (= e!2953325 (contains!16296 (t!360318 (t!360318 (toList!5977 lm!2023))) lt!1896328))))

(assert (= (and d!1510502 res!2005011) b!4734792))

(assert (= (and b!4734792 (not res!2005012)) b!4734793))

(assert (=> d!1510502 m!5678745))

(declare-fun m!5679911 () Bool)

(assert (=> d!1510502 m!5679911))

(declare-fun m!5679913 () Bool)

(assert (=> b!4734793 m!5679913))

(assert (=> b!4733291 d!1510502))

(declare-fun d!1510504 () Bool)

(declare-fun res!2005013 () Bool)

(declare-fun e!2953327 () Bool)

(assert (=> d!1510504 (=> res!2005013 e!2953327)))

(assert (=> d!1510504 (= res!2005013 (and ((_ is Cons!52913) lt!1896889) (= (_1!30579 (h!59284 lt!1896889)) key!4653)))))

(assert (=> d!1510504 (= (containsKey!3437 lt!1896889 key!4653) e!2953327)))

(declare-fun b!4734794 () Bool)

(declare-fun e!2953328 () Bool)

(assert (=> b!4734794 (= e!2953327 e!2953328)))

(declare-fun res!2005014 () Bool)

(assert (=> b!4734794 (=> (not res!2005014) (not e!2953328))))

(assert (=> b!4734794 (= res!2005014 ((_ is Cons!52913) lt!1896889))))

(declare-fun b!4734795 () Bool)

(assert (=> b!4734795 (= e!2953328 (containsKey!3437 (t!360317 lt!1896889) key!4653))))

(assert (= (and d!1510504 (not res!2005013)) b!4734794))

(assert (= (and b!4734794 res!2005014) b!4734795))

(declare-fun m!5679915 () Bool)

(assert (=> b!4734795 m!5679915))

(assert (=> d!1509856 d!1510504))

(assert (=> d!1509856 d!1509890))

(assert (=> bm!331069 d!1509902))

(declare-fun d!1510506 () Bool)

(assert (=> d!1510506 (= (invariantList!1535 (toList!5978 lt!1896863)) (noDuplicatedKeys!384 (toList!5978 lt!1896863)))))

(declare-fun bs!1123778 () Bool)

(assert (= bs!1123778 d!1510506))

(declare-fun m!5679917 () Bool)

(assert (=> bs!1123778 m!5679917))

(assert (=> d!1509848 d!1510506))

(declare-fun d!1510508 () Bool)

(declare-fun res!2005015 () Bool)

(declare-fun e!2953329 () Bool)

(assert (=> d!1510508 (=> res!2005015 e!2953329)))

(assert (=> d!1510508 (= res!2005015 ((_ is Nil!52914) (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))

(assert (=> d!1510508 (= (forall!11651 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))) lambda!217853) e!2953329)))

(declare-fun b!4734796 () Bool)

(declare-fun e!2953330 () Bool)

(assert (=> b!4734796 (= e!2953329 e!2953330)))

(declare-fun res!2005016 () Bool)

(assert (=> b!4734796 (=> (not res!2005016) (not e!2953330))))

(assert (=> b!4734796 (= res!2005016 (dynLambda!21856 lambda!217853 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))))))

(declare-fun b!4734797 () Bool)

(assert (=> b!4734797 (= e!2953330 (forall!11651 (t!360318 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))) lambda!217853))))

(assert (= (and d!1510508 (not res!2005015)) b!4734796))

(assert (= (and b!4734796 res!2005016) b!4734797))

(declare-fun b_lambda!180825 () Bool)

(assert (=> (not b_lambda!180825) (not b!4734796)))

(declare-fun m!5679919 () Bool)

(assert (=> b!4734796 m!5679919))

(declare-fun m!5679921 () Bool)

(assert (=> b!4734797 m!5679921))

(assert (=> d!1509848 d!1510508))

(assert (=> bm!331068 d!1510292))

(declare-fun d!1510510 () Bool)

(declare-fun lt!1897799 () List!53037)

(assert (=> d!1510510 (not (containsKey!3437 lt!1897799 key!4653))))

(declare-fun e!2953332 () List!53037)

(assert (=> d!1510510 (= lt!1897799 e!2953332)))

(declare-fun c!808668 () Bool)

(assert (=> d!1510510 (= c!808668 (and ((_ is Cons!52913) (t!360317 lt!1896336)) (= (_1!30579 (h!59284 (t!360317 lt!1896336))) key!4653)))))

(assert (=> d!1510510 (noDuplicateKeys!2044 (t!360317 lt!1896336))))

(assert (=> d!1510510 (= (removePairForKey!1639 (t!360317 lt!1896336) key!4653) lt!1897799)))

(declare-fun b!4734798 () Bool)

(assert (=> b!4734798 (= e!2953332 (t!360317 (t!360317 lt!1896336)))))

(declare-fun b!4734799 () Bool)

(declare-fun e!2953331 () List!53037)

(assert (=> b!4734799 (= e!2953332 e!2953331)))

(declare-fun c!808669 () Bool)

(assert (=> b!4734799 (= c!808669 ((_ is Cons!52913) (t!360317 lt!1896336)))))

(declare-fun b!4734800 () Bool)

(assert (=> b!4734800 (= e!2953331 (Cons!52913 (h!59284 (t!360317 lt!1896336)) (removePairForKey!1639 (t!360317 (t!360317 lt!1896336)) key!4653)))))

(declare-fun b!4734801 () Bool)

(assert (=> b!4734801 (= e!2953331 Nil!52913)))

(assert (= (and d!1510510 c!808668) b!4734798))

(assert (= (and d!1510510 (not c!808668)) b!4734799))

(assert (= (and b!4734799 c!808669) b!4734800))

(assert (= (and b!4734799 (not c!808669)) b!4734801))

(declare-fun m!5679923 () Bool)

(assert (=> d!1510510 m!5679923))

(assert (=> d!1510510 m!5677503))

(declare-fun m!5679925 () Bool)

(assert (=> b!4734800 m!5679925))

(assert (=> b!4733648 d!1510510))

(declare-fun d!1510512 () Bool)

(declare-fun res!2005017 () Bool)

(declare-fun e!2953333 () Bool)

(assert (=> d!1510512 (=> res!2005017 e!2953333)))

(assert (=> d!1510512 (= res!2005017 (and ((_ is Cons!52913) (t!360317 (t!360317 oldBucket!34))) (= (_1!30579 (h!59284 (t!360317 (t!360317 oldBucket!34)))) key!4653)))))

(assert (=> d!1510512 (= (containsKey!3437 (t!360317 (t!360317 oldBucket!34)) key!4653) e!2953333)))

(declare-fun b!4734802 () Bool)

(declare-fun e!2953334 () Bool)

(assert (=> b!4734802 (= e!2953333 e!2953334)))

(declare-fun res!2005018 () Bool)

(assert (=> b!4734802 (=> (not res!2005018) (not e!2953334))))

(assert (=> b!4734802 (= res!2005018 ((_ is Cons!52913) (t!360317 (t!360317 oldBucket!34))))))

(declare-fun b!4734803 () Bool)

(assert (=> b!4734803 (= e!2953334 (containsKey!3437 (t!360317 (t!360317 (t!360317 oldBucket!34))) key!4653))))

(assert (= (and d!1510512 (not res!2005017)) b!4734802))

(assert (= (and b!4734802 res!2005018) b!4734803))

(declare-fun m!5679927 () Bool)

(assert (=> b!4734803 m!5679927))

(assert (=> b!4733378 d!1510512))

(assert (=> bm!331080 d!1510220))

(declare-fun d!1510514 () Bool)

(declare-fun res!2005019 () Bool)

(declare-fun e!2953335 () Bool)

(assert (=> d!1510514 (=> res!2005019 e!2953335)))

(assert (=> d!1510514 (= res!2005019 (and ((_ is Cons!52913) lt!1896350) (= (_1!30579 (h!59284 lt!1896350)) key!4653)))))

(assert (=> d!1510514 (= (containsKey!3437 lt!1896350 key!4653) e!2953335)))

(declare-fun b!4734804 () Bool)

(declare-fun e!2953336 () Bool)

(assert (=> b!4734804 (= e!2953335 e!2953336)))

(declare-fun res!2005020 () Bool)

(assert (=> b!4734804 (=> (not res!2005020) (not e!2953336))))

(assert (=> b!4734804 (= res!2005020 ((_ is Cons!52913) lt!1896350))))

(declare-fun b!4734805 () Bool)

(assert (=> b!4734805 (= e!2953336 (containsKey!3437 (t!360317 lt!1896350) key!4653))))

(assert (= (and d!1510514 (not res!2005019)) b!4734804))

(assert (= (and b!4734804 res!2005020) b!4734805))

(declare-fun m!5679929 () Bool)

(assert (=> b!4734805 m!5679929))

(assert (=> d!1509662 d!1510514))

(assert (=> d!1509662 d!1510216))

(assert (=> b!4733381 d!1509674))

(declare-fun d!1510516 () Bool)

(assert (=> d!1510516 (= (isEmpty!29210 lt!1896376) (not ((_ is Some!12422) lt!1896376)))))

(assert (=> d!1509696 d!1510516))

(declare-fun d!1510518 () Bool)

(declare-fun res!2005021 () Bool)

(declare-fun e!2953337 () Bool)

(assert (=> d!1510518 (=> res!2005021 e!2953337)))

(assert (=> d!1510518 (= res!2005021 (not ((_ is Cons!52913) lt!1896345)))))

(assert (=> d!1510518 (= (noDuplicateKeys!2044 lt!1896345) e!2953337)))

(declare-fun b!4734806 () Bool)

(declare-fun e!2953338 () Bool)

(assert (=> b!4734806 (= e!2953337 e!2953338)))

(declare-fun res!2005022 () Bool)

(assert (=> b!4734806 (=> (not res!2005022) (not e!2953338))))

(assert (=> b!4734806 (= res!2005022 (not (containsKey!3437 (t!360317 lt!1896345) (_1!30579 (h!59284 lt!1896345)))))))

(declare-fun b!4734807 () Bool)

(assert (=> b!4734807 (= e!2953338 (noDuplicateKeys!2044 (t!360317 lt!1896345)))))

(assert (= (and d!1510518 (not res!2005021)) b!4734806))

(assert (= (and b!4734806 res!2005022) b!4734807))

(declare-fun m!5679931 () Bool)

(assert (=> b!4734806 m!5679931))

(assert (=> b!4734807 m!5677973))

(assert (=> d!1509696 d!1510518))

(declare-fun bs!1123809 () Bool)

(declare-fun b!4734814 () Bool)

(assert (= bs!1123809 (and b!4734814 b!4733723)))

(declare-fun lambda!218004 () Int)

(assert (=> bs!1123809 (= (= (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) (toList!5978 lt!1896330)) (= lambda!218004 lambda!217867))))

(declare-fun bs!1123812 () Bool)

(assert (= bs!1123812 (and b!4734814 b!4733962)))

(assert (=> bs!1123812 (= (= (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 lt!1896330))) (= lambda!218004 lambda!217898))))

(declare-fun bs!1123814 () Bool)

(assert (= bs!1123814 (and b!4734814 b!4733956)))

(assert (=> bs!1123814 (= (= (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330)))) (= lambda!218004 lambda!217899))))

(declare-fun bs!1123816 () Bool)

(assert (= bs!1123816 (and b!4734814 b!4733963)))

(assert (=> bs!1123816 (= (= (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) (toList!5978 lt!1896330)) (= lambda!218004 lambda!217900))))

(declare-fun bs!1123818 () Bool)

(assert (= bs!1123818 (and b!4734814 b!4733984)))

(assert (=> bs!1123818 (= (= (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) (toList!5978 (extractMap!2070 lt!1896327))) (= lambda!218004 lambda!217902))))

(assert (=> b!4734814 true))

(declare-fun bs!1123822 () Bool)

(declare-fun b!4734808 () Bool)

(assert (= bs!1123822 (and b!4734808 b!4733723)))

(declare-fun lambda!218005 () Int)

(assert (=> bs!1123822 (= (= (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (toList!5978 lt!1896330)) (= lambda!218005 lambda!217867))))

(declare-fun bs!1123823 () Bool)

(assert (= bs!1123823 (and b!4734808 b!4733962)))

(assert (=> bs!1123823 (= (= (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (t!360317 (toList!5978 lt!1896330))) (= lambda!218005 lambda!217898))))

(declare-fun bs!1123824 () Bool)

(assert (= bs!1123824 (and b!4734808 b!4733956)))

(assert (=> bs!1123824 (= (= (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330)))) (= lambda!218005 lambda!217899))))

(declare-fun bs!1123826 () Bool)

(assert (= bs!1123826 (and b!4734808 b!4734814)))

(assert (=> bs!1123826 (= (= (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (= lambda!218005 lambda!218004))))

(declare-fun bs!1123829 () Bool)

(assert (= bs!1123829 (and b!4734808 b!4733963)))

(assert (=> bs!1123829 (= (= (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (toList!5978 lt!1896330)) (= lambda!218005 lambda!217900))))

(declare-fun bs!1123831 () Bool)

(assert (= bs!1123831 (and b!4734808 b!4733984)))

(assert (=> bs!1123831 (= (= (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (toList!5978 (extractMap!2070 lt!1896327))) (= lambda!218005 lambda!217902))))

(assert (=> b!4734808 true))

(declare-fun bs!1123832 () Bool)

(declare-fun b!4734815 () Bool)

(assert (= bs!1123832 (and b!4734815 b!4734808)))

(declare-fun lambda!218006 () Int)

(assert (=> bs!1123832 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (Cons!52913 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))) (t!360317 (toList!5978 (extractMap!2070 lt!1896327))))) (= lambda!218006 lambda!218005))))

(declare-fun bs!1123833 () Bool)

(assert (= bs!1123833 (and b!4734815 b!4733723)))

(assert (=> bs!1123833 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (toList!5978 lt!1896330)) (= lambda!218006 lambda!217867))))

(declare-fun bs!1123834 () Bool)

(assert (= bs!1123834 (and b!4734815 b!4733962)))

(assert (=> bs!1123834 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (t!360317 (toList!5978 lt!1896330))) (= lambda!218006 lambda!217898))))

(declare-fun bs!1123835 () Bool)

(assert (= bs!1123835 (and b!4734815 b!4733956)))

(assert (=> bs!1123835 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (Cons!52913 (h!59284 (toList!5978 lt!1896330)) (t!360317 (toList!5978 lt!1896330)))) (= lambda!218006 lambda!217899))))

(declare-fun bs!1123836 () Bool)

(assert (= bs!1123836 (and b!4734815 b!4734814)))

(assert (=> bs!1123836 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (= lambda!218006 lambda!218004))))

(declare-fun bs!1123837 () Bool)

(assert (= bs!1123837 (and b!4734815 b!4733963)))

(assert (=> bs!1123837 (= (= (toList!5978 (extractMap!2070 lt!1896327)) (toList!5978 lt!1896330)) (= lambda!218006 lambda!217900))))

(declare-fun bs!1123838 () Bool)

(assert (= bs!1123838 (and b!4734815 b!4733984)))

(assert (=> bs!1123838 (= lambda!218006 lambda!217902)))

(assert (=> b!4734815 true))

(declare-fun bs!1123839 () Bool)

(declare-fun b!4734812 () Bool)

(assert (= bs!1123839 (and b!4734812 b!4733724)))

(declare-fun lambda!218007 () Int)

(assert (=> bs!1123839 (= lambda!218007 lambda!217868)))

(declare-fun bs!1123840 () Bool)

(assert (= bs!1123840 (and b!4734812 b!4733960)))

(assert (=> bs!1123840 (= lambda!218007 lambda!217901)))

(declare-fun bs!1123841 () Bool)

(assert (= bs!1123841 (and b!4734812 b!4733985)))

(assert (=> bs!1123841 (= lambda!218007 lambda!217903)))

(declare-fun e!2953341 () List!53040)

(assert (=> b!4734808 (= e!2953341 (Cons!52916 (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327)))) (getKeysList!974 (t!360317 (toList!5978 (extractMap!2070 lt!1896327))))))))

(declare-fun c!808670 () Bool)

(assert (=> b!4734808 (= c!808670 (containsKey!3440 (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))))))))

(declare-fun lt!1897806 () Unit!131735)

(declare-fun e!2953340 () Unit!131735)

(assert (=> b!4734808 (= lt!1897806 e!2953340)))

(declare-fun c!808672 () Bool)

(assert (=> b!4734808 (= c!808672 (contains!16302 (getKeysList!974 (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))))))))

(declare-fun lt!1897803 () Unit!131735)

(declare-fun e!2953342 () Unit!131735)

(assert (=> b!4734808 (= lt!1897803 e!2953342)))

(declare-fun lt!1897801 () List!53040)

(assert (=> b!4734808 (= lt!1897801 (getKeysList!974 (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))))))

(declare-fun lt!1897805 () Unit!131735)

(assert (=> b!4734808 (= lt!1897805 (lemmaForallContainsAddHeadPreserves!288 (t!360317 (toList!5978 (extractMap!2070 lt!1896327))) lt!1897801 (h!59284 (toList!5978 (extractMap!2070 lt!1896327)))))))

(assert (=> b!4734808 (forall!11654 lt!1897801 lambda!218005)))

(declare-fun lt!1897804 () Unit!131735)

(assert (=> b!4734808 (= lt!1897804 lt!1897805)))

(declare-fun b!4734809 () Bool)

(assert (=> b!4734809 false))

(declare-fun Unit!132147 () Unit!131735)

(assert (=> b!4734809 (= e!2953340 Unit!132147)))

(declare-fun b!4734811 () Bool)

(declare-fun res!2005023 () Bool)

(declare-fun e!2953339 () Bool)

(assert (=> b!4734811 (=> (not res!2005023) (not e!2953339))))

(declare-fun lt!1897802 () List!53040)

(assert (=> b!4734811 (= res!2005023 (= (length!596 lt!1897802) (length!597 (toList!5978 (extractMap!2070 lt!1896327)))))))

(assert (=> b!4734812 (= e!2953339 (= (content!9442 lt!1897802) (content!9442 (map!11705 (toList!5978 (extractMap!2070 lt!1896327)) lambda!218007))))))

(declare-fun b!4734813 () Bool)

(declare-fun Unit!132148 () Unit!131735)

(assert (=> b!4734813 (= e!2953340 Unit!132148)))

(assert (=> b!4734814 false))

(declare-fun lt!1897800 () Unit!131735)

(assert (=> b!4734814 (= lt!1897800 (forallContained!3694 (getKeysList!974 (t!360317 (toList!5978 (extractMap!2070 lt!1896327)))) lambda!218004 (_1!30579 (h!59284 (toList!5978 (extractMap!2070 lt!1896327))))))))

(declare-fun Unit!132149 () Unit!131735)

(assert (=> b!4734814 (= e!2953342 Unit!132149)))

(declare-fun d!1510520 () Bool)

(assert (=> d!1510520 e!2953339))

(declare-fun res!2005025 () Bool)

(assert (=> d!1510520 (=> (not res!2005025) (not e!2953339))))

(assert (=> d!1510520 (= res!2005025 (noDuplicate!870 lt!1897802))))

(assert (=> d!1510520 (= lt!1897802 e!2953341)))

(declare-fun c!808671 () Bool)

(assert (=> d!1510520 (= c!808671 ((_ is Cons!52913) (toList!5978 (extractMap!2070 lt!1896327))))))

(assert (=> d!1510520 (invariantList!1535 (toList!5978 (extractMap!2070 lt!1896327)))))

(assert (=> d!1510520 (= (getKeysList!974 (toList!5978 (extractMap!2070 lt!1896327))) lt!1897802)))

(declare-fun b!4734810 () Bool)

(declare-fun Unit!132150 () Unit!131735)

(assert (=> b!4734810 (= e!2953342 Unit!132150)))

(declare-fun res!2005024 () Bool)

(assert (=> b!4734815 (=> (not res!2005024) (not e!2953339))))

(assert (=> b!4734815 (= res!2005024 (forall!11654 lt!1897802 lambda!218006))))

(declare-fun b!4734816 () Bool)

(assert (=> b!4734816 (= e!2953341 Nil!52916)))

(assert (= (and d!1510520 c!808671) b!4734808))

(assert (= (and d!1510520 (not c!808671)) b!4734816))

(assert (= (and b!4734808 c!808670) b!4734809))

(assert (= (and b!4734808 (not c!808670)) b!4734813))

(assert (= (and b!4734808 c!808672) b!4734814))

(assert (= (and b!4734808 (not c!808672)) b!4734810))

(assert (= (and d!1510520 res!2005025) b!4734811))

(assert (= (and b!4734811 res!2005023) b!4734815))

(assert (= (and b!4734815 res!2005024) b!4734812))

(declare-fun m!5679949 () Bool)

(assert (=> b!4734815 m!5679949))

(declare-fun m!5679953 () Bool)

(assert (=> b!4734814 m!5679953))

(assert (=> b!4734814 m!5679953))

(declare-fun m!5679957 () Bool)

(assert (=> b!4734814 m!5679957))

(assert (=> b!4734808 m!5679953))

(declare-fun m!5679961 () Bool)

(assert (=> b!4734808 m!5679961))

(assert (=> b!4734808 m!5679953))

(declare-fun m!5679967 () Bool)

(assert (=> b!4734808 m!5679967))

(declare-fun m!5679973 () Bool)

(assert (=> b!4734808 m!5679973))

(declare-fun m!5679977 () Bool)

(assert (=> b!4734808 m!5679977))

(declare-fun m!5679979 () Bool)

(assert (=> d!1510520 m!5679979))

(assert (=> d!1510520 m!5677553))

(declare-fun m!5679983 () Bool)

(assert (=> b!4734812 m!5679983))

(declare-fun m!5679985 () Bool)

(assert (=> b!4734812 m!5679985))

(assert (=> b!4734812 m!5679985))

(declare-fun m!5679987 () Bool)

(assert (=> b!4734812 m!5679987))

(declare-fun m!5679989 () Bool)

(assert (=> b!4734811 m!5679989))

(assert (=> b!4734811 m!5677961))

(assert (=> b!4733642 d!1510520))

(declare-fun d!1510524 () Bool)

(declare-fun res!2005026 () Bool)

(declare-fun e!2953344 () Bool)

(assert (=> d!1510524 (=> res!2005026 e!2953344)))

(assert (=> d!1510524 (= res!2005026 (and ((_ is Cons!52913) lt!1896345) (= (_1!30579 (h!59284 lt!1896345)) key!4653)))))

(assert (=> d!1510524 (= (containsKey!3437 lt!1896345 key!4653) e!2953344)))

(declare-fun b!4734819 () Bool)

(declare-fun e!2953345 () Bool)

(assert (=> b!4734819 (= e!2953344 e!2953345)))

(declare-fun res!2005027 () Bool)

(assert (=> b!4734819 (=> (not res!2005027) (not e!2953345))))

(assert (=> b!4734819 (= res!2005027 ((_ is Cons!52913) lt!1896345))))

(declare-fun b!4734820 () Bool)

(assert (=> b!4734820 (= e!2953345 (containsKey!3437 (t!360317 lt!1896345) key!4653))))

(assert (= (and d!1510524 (not res!2005026)) b!4734819))

(assert (= (and b!4734819 res!2005027) b!4734820))

(assert (=> b!4734820 m!5677979))

(assert (=> b!4733346 d!1510524))

(declare-fun d!1510526 () Bool)

(declare-fun c!808674 () Bool)

(assert (=> d!1510526 (= c!808674 ((_ is Nil!52913) (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343))))))

(declare-fun e!2953346 () (InoxSet tuple2!54570))

(assert (=> d!1510526 (= (content!9440 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343))) e!2953346)))

(declare-fun b!4734821 () Bool)

(assert (=> b!4734821 (= e!2953346 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4734822 () Bool)

(assert (=> b!4734822 (= e!2953346 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343))) true) (content!9440 (t!360317 (toList!5978 (addToMapMapFromBucket!1474 (Cons!52913 lt!1896326 lt!1896336) lt!1896343))))))))

(assert (= (and d!1510526 c!808674) b!4734821))

(assert (= (and d!1510526 (not c!808674)) b!4734822))

(declare-fun m!5679991 () Bool)

(assert (=> b!4734822 m!5679991))

(declare-fun m!5679993 () Bool)

(assert (=> b!4734822 m!5679993))

(assert (=> d!1509810 d!1510526))

(declare-fun d!1510528 () Bool)

(declare-fun c!808675 () Bool)

(assert (=> d!1510528 (= c!808675 ((_ is Nil!52913) (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))))))

(declare-fun e!2953347 () (InoxSet tuple2!54570))

(assert (=> d!1510528 (= (content!9440 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))) e!2953347)))

(declare-fun b!4734823 () Bool)

(assert (=> b!4734823 (= e!2953347 ((as const (Array tuple2!54570 Bool)) false))))

(declare-fun b!4734824 () Bool)

(assert (=> b!4734824 (= e!2953347 ((_ map or) (store ((as const (Array tuple2!54570 Bool)) false) (h!59284 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))) true) (content!9440 (t!360317 (toList!5978 (+!2292 (addToMapMapFromBucket!1474 lt!1896336 lt!1896343) lt!1896326))))))))

(assert (= (and d!1510528 c!808675) b!4734823))

(assert (= (and d!1510528 (not c!808675)) b!4734824))

(declare-fun m!5679995 () Bool)

(assert (=> b!4734824 m!5679995))

(declare-fun m!5679997 () Bool)

(assert (=> b!4734824 m!5679997))

(assert (=> d!1509810 d!1510528))

(declare-fun d!1510530 () Bool)

(assert (=> d!1510530 (= (invariantList!1535 (toList!5978 lt!1896702)) (noDuplicatedKeys!384 (toList!5978 lt!1896702)))))

(declare-fun bs!1123850 () Bool)

(assert (= bs!1123850 d!1510530))

(declare-fun m!5679999 () Bool)

(assert (=> bs!1123850 m!5679999))

(assert (=> b!4733503 d!1510530))

(assert (=> bm!331073 d!1509926))

(declare-fun d!1510532 () Bool)

(assert (=> d!1510532 (dynLambda!21856 lambda!217712 lt!1896328)))

(assert (=> d!1510532 true))

(declare-fun _$7!2266 () Unit!131735)

(assert (=> d!1510532 (= (choose!33517 (toList!5977 lm!2023) lambda!217712 lt!1896328) _$7!2266)))

(declare-fun b_lambda!180827 () Bool)

(assert (=> (not b_lambda!180827) (not d!1510532)))

(declare-fun bs!1123855 () Bool)

(assert (= bs!1123855 d!1510532))

(assert (=> bs!1123855 m!5676741))

(assert (=> d!1509710 d!1510532))

(assert (=> d!1509710 d!1509664))

(declare-fun d!1510536 () Bool)

(assert (=> d!1510536 (= (invariantList!1535 (toList!5978 lt!1896851)) (noDuplicatedKeys!384 (toList!5978 lt!1896851)))))

(declare-fun bs!1123856 () Bool)

(assert (= bs!1123856 d!1510536))

(declare-fun m!5680009 () Bool)

(assert (=> bs!1123856 m!5680009))

(assert (=> b!4733597 d!1510536))

(assert (=> d!1509866 d!1510152))

(declare-fun d!1510538 () Bool)

(assert (=> d!1510538 (= (tail!9078 (toList!5977 lm!2023)) (t!360318 (toList!5977 lm!2023)))))

(assert (=> d!1509804 d!1510538))

(assert (=> b!4733638 d!1510016))

(declare-fun d!1510540 () Bool)

(assert (=> d!1510540 (= (isEmpty!29210 (getPair!584 lt!1896345 key!4653)) (not ((_ is Some!12422) (getPair!584 lt!1896345 key!4653))))))

(assert (=> d!1509718 d!1510540))

(declare-fun b!4734829 () Bool)

(declare-fun e!2953352 () Bool)

(declare-fun tp!1349000 () Bool)

(assert (=> b!4734829 (= e!2953352 (and tp_is_empty!31469 tp_is_empty!31471 tp!1349000))))

(assert (=> b!4733676 (= tp!1348993 e!2953352)))

(assert (= (and b!4733676 ((_ is Cons!52913) (t!360317 (t!360317 newBucket!218)))) b!4734829))

(declare-fun tp!1349001 () Bool)

(declare-fun b!4734830 () Bool)

(declare-fun e!2953353 () Bool)

(assert (=> b!4734830 (= e!2953353 (and tp_is_empty!31469 tp_is_empty!31471 tp!1349001))))

(assert (=> b!4733681 (= tp!1348998 e!2953353)))

(assert (= (and b!4733681 ((_ is Cons!52913) (_2!30580 (h!59285 (toList!5977 lm!2023))))) b!4734830))

(declare-fun b!4734831 () Bool)

(declare-fun e!2953354 () Bool)

(declare-fun tp!1349002 () Bool)

(declare-fun tp!1349003 () Bool)

(assert (=> b!4734831 (= e!2953354 (and tp!1349002 tp!1349003))))

(assert (=> b!4733681 (= tp!1348999 e!2953354)))

(assert (= (and b!4733681 ((_ is Cons!52914) (t!360318 (toList!5977 lm!2023)))) b!4734831))

(declare-fun tp!1349004 () Bool)

(declare-fun e!2953357 () Bool)

(declare-fun b!4734834 () Bool)

(assert (=> b!4734834 (= e!2953357 (and tp_is_empty!31469 tp_is_empty!31471 tp!1349004))))

(assert (=> b!4733675 (= tp!1348992 e!2953357)))

(assert (= (and b!4733675 ((_ is Cons!52913) (t!360317 (t!360317 oldBucket!34)))) b!4734834))

(declare-fun b_lambda!180831 () Bool)

(assert (= b_lambda!180733 (or d!1509868 b_lambda!180831)))

(declare-fun bs!1123863 () Bool)

(declare-fun d!1510568 () Bool)

(assert (= bs!1123863 (and d!1510568 d!1509868)))

(assert (=> bs!1123863 (= (dynLambda!21856 lambda!217861 (h!59285 (toList!5977 lm!2023))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> bs!1123863 m!5677109))

(assert (=> b!4734360 d!1510568))

(declare-fun b_lambda!180833 () Bool)

(assert (= b_lambda!180773 (or b!4733500 b_lambda!180833)))

(declare-fun bs!1123864 () Bool)

(declare-fun d!1510570 () Bool)

(assert (= bs!1123864 (and d!1510570 b!4733500)))

(assert (=> bs!1123864 (= (dynLambda!21858 lambda!217821 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (contains!16298 lt!1896706 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(assert (=> bs!1123864 m!5677125))

(assert (=> d!1510372 d!1510570))

(declare-fun b_lambda!180835 () Bool)

(assert (= b_lambda!180661 (or b!4733561 b_lambda!180835)))

(declare-fun bs!1123865 () Bool)

(declare-fun d!1510572 () Bool)

(assert (= bs!1123865 (and d!1510572 b!4733561)))

(assert (=> bs!1123865 (= (dynLambda!21858 lambda!217847 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (contains!16298 lt!1896826 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(assert (=> bs!1123865 m!5677329))

(assert (=> d!1509974 d!1510572))

(declare-fun b_lambda!180837 () Bool)

(assert (= b_lambda!180763 (or d!1509704 b_lambda!180837)))

(declare-fun bs!1123866 () Bool)

(declare-fun d!1510574 () Bool)

(assert (= bs!1123866 (and d!1510574 d!1509704)))

(assert (=> bs!1123866 (= (dynLambda!21856 lambda!217749 (h!59285 (toList!5977 lm!2023))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> bs!1123866 m!5677109))

(assert (=> b!4734550 d!1510574))

(declare-fun b_lambda!180839 () Bool)

(assert (= b_lambda!180707 (or d!1509864 b_lambda!180839)))

(declare-fun bs!1123867 () Bool)

(declare-fun d!1510578 () Bool)

(assert (= bs!1123867 (and d!1510578 d!1509864)))

(assert (=> bs!1123867 (= (dynLambda!21858 lambda!217860 (h!59284 oldBucket!34)) (= (hash!4436 hashF!1323 (_1!30579 (h!59284 oldBucket!34))) hash!405))))

(declare-fun m!5680039 () Bool)

(assert (=> bs!1123867 m!5680039))

(assert (=> b!4734202 d!1510578))

(declare-fun b_lambda!180841 () Bool)

(assert (= b_lambda!180663 (or b!4733561 b_lambda!180841)))

(declare-fun bs!1123868 () Bool)

(declare-fun d!1510580 () Bool)

(assert (= bs!1123868 (and d!1510580 b!4733561)))

(assert (=> bs!1123868 (= (dynLambda!21858 lambda!217847 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335)))) (contains!16298 lt!1896826 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896347 lt!1896335))))))))

(declare-fun m!5680041 () Bool)

(assert (=> bs!1123868 m!5680041))

(assert (=> b!4733877 d!1510580))

(declare-fun b_lambda!180843 () Bool)

(assert (= b_lambda!180827 (or start!482632 b_lambda!180843)))

(assert (=> d!1510532 d!1509878))

(declare-fun b_lambda!180845 () Bool)

(assert (= b_lambda!180813 (or b!4733537 b_lambda!180845)))

(declare-fun bs!1123869 () Bool)

(declare-fun d!1510582 () Bool)

(assert (= bs!1123869 (and d!1510582 b!4733537)))

(assert (=> bs!1123869 (= (dynLambda!21858 lambda!217833 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896343 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680043 () Bool)

(assert (=> bs!1123869 m!5680043))

(assert (=> b!4734749 d!1510582))

(declare-fun b_lambda!180847 () Bool)

(assert (= b_lambda!180651 (or d!1509792 b_lambda!180847)))

(declare-fun bs!1123870 () Bool)

(declare-fun d!1510584 () Bool)

(assert (= bs!1123870 (and d!1510584 d!1509792)))

(assert (=> bs!1123870 (= (dynLambda!21856 lambda!217825 (h!59285 (t!360318 (toList!5977 lm!2023)))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))))))

(assert (=> bs!1123870 m!5678635))

(assert (=> b!4733814 d!1510584))

(declare-fun b_lambda!180849 () Bool)

(assert (= b_lambda!180825 (or d!1509848 b_lambda!180849)))

(declare-fun bs!1123871 () Bool)

(declare-fun d!1510586 () Bool)

(assert (= bs!1123871 (and d!1510586 d!1509848)))

(assert (=> bs!1123871 (= (dynLambda!21856 lambda!217853 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023))))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (Cons!52914 lt!1896331 (t!360318 (toList!5977 lm!2023)))))))))

(assert (=> bs!1123871 m!5679869))

(assert (=> b!4734796 d!1510586))

(declare-fun b_lambda!180851 () Bool)

(assert (= b_lambda!180781 (or b!4733500 b_lambda!180851)))

(declare-fun bs!1123872 () Bool)

(declare-fun d!1510588 () Bool)

(assert (= bs!1123872 (and d!1510588 b!4733500)))

(assert (=> bs!1123872 (= (dynLambda!21858 lambda!217820 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896343 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(assert (=> bs!1123872 m!5680043))

(assert (=> b!4734603 d!1510588))

(declare-fun b_lambda!180853 () Bool)

(assert (= b_lambda!180775 (or b!4733500 b_lambda!180853)))

(declare-fun bs!1123873 () Bool)

(declare-fun d!1510590 () Bool)

(assert (= bs!1123873 (and d!1510590 b!4733500)))

(assert (=> bs!1123873 (= (dynLambda!21858 lambda!217821 (h!59284 (toList!5978 lt!1896697))) (contains!16298 lt!1896706 (_1!30579 (h!59284 (toList!5978 lt!1896697)))))))

(declare-fun m!5680053 () Bool)

(assert (=> bs!1123873 m!5680053))

(assert (=> b!4734586 d!1510590))

(declare-fun b_lambda!180855 () Bool)

(assert (= b_lambda!180739 (or b!4733594 b_lambda!180855)))

(declare-fun bs!1123874 () Bool)

(declare-fun d!1510592 () Bool)

(assert (= bs!1123874 (and d!1510592 b!4733594)))

(assert (=> bs!1123874 (= (dynLambda!21858 lambda!217850 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896343 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(assert (=> bs!1123874 m!5680043))

(assert (=> b!4734378 d!1510592))

(declare-fun b_lambda!180857 () Bool)

(assert (= b_lambda!180777 (or b!4733500 b_lambda!180857)))

(declare-fun bs!1123875 () Bool)

(declare-fun d!1510594 () Bool)

(assert (= bs!1123875 (and d!1510594 b!4733500)))

(assert (=> bs!1123875 (= (dynLambda!21858 lambda!217821 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023)))))) (contains!16298 lt!1896706 (_1!30579 (h!59284 (t!360317 (_2!30580 (h!59285 (toList!5977 lm!2023))))))))))

(declare-fun m!5680055 () Bool)

(assert (=> bs!1123875 m!5680055))

(assert (=> b!4734588 d!1510594))

(declare-fun b_lambda!180859 () Bool)

(assert (= b_lambda!180705 (or d!1509818 b_lambda!180859)))

(declare-fun bs!1123876 () Bool)

(declare-fun d!1510596 () Bool)

(assert (= bs!1123876 (and d!1510596 d!1509818)))

(assert (=> bs!1123876 (= (dynLambda!21858 lambda!217839 (h!59284 lt!1896336)) (contains!16298 lt!1896752 (_1!30579 (h!59284 lt!1896336))))))

(declare-fun m!5680057 () Bool)

(assert (=> bs!1123876 m!5680057))

(assert (=> b!4734200 d!1510596))

(declare-fun b_lambda!180861 () Bool)

(assert (= b_lambda!180749 (or b!4733594 b_lambda!180861)))

(declare-fun bs!1123877 () Bool)

(declare-fun d!1510598 () Bool)

(assert (= bs!1123877 (and d!1510598 b!4733594)))

(assert (=> bs!1123877 (= (dynLambda!21858 lambda!217851 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336)))) (contains!16298 lt!1896855 (_1!30579 (h!59284 (t!360317 (Cons!52913 lt!1896326 lt!1896336))))))))

(declare-fun m!5680059 () Bool)

(assert (=> bs!1123877 m!5680059))

(assert (=> b!4734470 d!1510598))

(declare-fun b_lambda!180863 () Bool)

(assert (= b_lambda!180735 (or d!1509862 b_lambda!180863)))

(declare-fun bs!1123878 () Bool)

(declare-fun d!1510602 () Bool)

(assert (= bs!1123878 (and d!1510602 d!1509862)))

(assert (=> bs!1123878 (= (dynLambda!21856 lambda!217857 (h!59285 (toList!5977 lm!2023))) (allKeysSameHash!1870 (_2!30580 (h!59285 (toList!5977 lm!2023))) (_1!30580 (h!59285 (toList!5977 lm!2023))) hashF!1323))))

(declare-fun m!5680061 () Bool)

(assert (=> bs!1123878 m!5680061))

(assert (=> b!4734372 d!1510602))

(declare-fun b_lambda!180865 () Bool)

(assert (= b_lambda!180723 (or b!4733550 b_lambda!180865)))

(declare-fun bs!1123879 () Bool)

(declare-fun d!1510604 () Bool)

(assert (= bs!1123879 (and d!1510604 b!4733550)))

(assert (=> bs!1123879 (= (dynLambda!21858 lambda!217841 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896343 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(assert (=> bs!1123879 m!5680043))

(assert (=> b!4734254 d!1510604))

(declare-fun b_lambda!180867 () Bool)

(assert (= b_lambda!180673 (or d!1509820 b_lambda!180867)))

(declare-fun bs!1123880 () Bool)

(declare-fun d!1510606 () Bool)

(assert (= bs!1123880 (and d!1510606 d!1509820)))

(assert (=> bs!1123880 (= (dynLambda!21858 lambda!217844 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896789 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680063 () Bool)

(assert (=> bs!1123880 m!5680063))

(assert (=> b!4733975 d!1510606))

(declare-fun b_lambda!180869 () Bool)

(assert (= b_lambda!180817 (or b!4733537 b_lambda!180869)))

(declare-fun bs!1123881 () Bool)

(declare-fun d!1510608 () Bool)

(assert (= bs!1123881 (and d!1510608 b!4733537)))

(assert (=> bs!1123881 (= (dynLambda!21858 lambda!217834 (h!59284 lt!1896336)) (contains!16298 lt!1896756 (_1!30579 (h!59284 lt!1896336))))))

(assert (=> bs!1123881 m!5677215))

(assert (=> d!1510478 d!1510608))

(declare-fun b_lambda!180871 () Bool)

(assert (= b_lambda!180691 (or d!1509834 b_lambda!180871)))

(declare-fun bs!1123882 () Bool)

(declare-fun d!1510610 () Bool)

(assert (= bs!1123882 (and d!1510610 d!1509834)))

(assert (=> bs!1123882 (= (dynLambda!21858 lambda!217852 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896851 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680065 () Bool)

(assert (=> bs!1123882 m!5680065))

(assert (=> b!4734122 d!1510610))

(declare-fun b_lambda!180873 () Bool)

(assert (= b_lambda!180821 (or b!4733537 b_lambda!180873)))

(declare-fun bs!1123883 () Bool)

(declare-fun d!1510612 () Bool)

(assert (= bs!1123883 (and d!1510612 b!4733537)))

(assert (=> bs!1123883 (= (dynLambda!21858 lambda!217834 (h!59284 (t!360317 lt!1896336))) (contains!16298 lt!1896756 (_1!30579 (h!59284 (t!360317 lt!1896336)))))))

(declare-fun m!5680067 () Bool)

(assert (=> bs!1123883 m!5680067))

(assert (=> b!4734767 d!1510612))

(declare-fun b_lambda!180875 () Bool)

(assert (= b_lambda!180797 (or b!4733537 b_lambda!180875)))

(declare-fun bs!1123884 () Bool)

(declare-fun d!1510614 () Bool)

(assert (= bs!1123884 (and d!1510614 b!4733537)))

(assert (=> bs!1123884 (= (dynLambda!21858 lambda!217834 (h!59284 (toList!5978 lt!1896747))) (contains!16298 lt!1896756 (_1!30579 (h!59284 (toList!5978 lt!1896747)))))))

(declare-fun m!5680069 () Bool)

(assert (=> bs!1123884 m!5680069))

(assert (=> b!4734687 d!1510614))

(declare-fun b_lambda!180877 () Bool)

(assert (= b_lambda!180689 (or d!1509816 b_lambda!180877)))

(declare-fun bs!1123885 () Bool)

(declare-fun d!1510616 () Bool)

(assert (= bs!1123885 (and d!1510616 d!1509816)))

(assert (=> bs!1123885 (= (dynLambda!21856 lambda!217829 (h!59285 (toList!5977 lt!1896338))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lt!1896338)))))))

(declare-fun m!5680071 () Bool)

(assert (=> bs!1123885 m!5680071))

(assert (=> b!4734068 d!1510616))

(declare-fun b_lambda!180879 () Bool)

(assert (= b_lambda!180717 (or b!4733550 b_lambda!180879)))

(declare-fun bs!1123886 () Bool)

(declare-fun d!1510618 () Bool)

(assert (= bs!1123886 (and d!1510618 b!4733550)))

(assert (=> bs!1123886 (= (dynLambda!21858 lambda!217843 (h!59284 (toList!5978 lt!1896784))) (contains!16298 lt!1896793 (_1!30579 (h!59284 (toList!5978 lt!1896784)))))))

(declare-fun m!5680073 () Bool)

(assert (=> bs!1123886 m!5680073))

(assert (=> b!4734232 d!1510618))

(declare-fun b_lambda!180881 () Bool)

(assert (= b_lambda!180645 (or d!1509826 b_lambda!180881)))

(declare-fun bs!1123887 () Bool)

(declare-fun d!1510620 () Bool)

(assert (= bs!1123887 (and d!1510620 d!1509826)))

(assert (=> bs!1123887 (= (dynLambda!21858 lambda!217848 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896822 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680075 () Bool)

(assert (=> bs!1123887 m!5680075))

(assert (=> b!4733702 d!1510620))

(declare-fun b_lambda!180883 () Bool)

(assert (= b_lambda!180667 (or b!4733561 b_lambda!180883)))

(declare-fun bs!1123888 () Bool)

(declare-fun d!1510622 () Bool)

(assert (= bs!1123888 (and d!1510622 b!4733561)))

(assert (=> bs!1123888 (= (dynLambda!21858 lambda!217847 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896826 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680077 () Bool)

(assert (=> bs!1123888 m!5680077))

(assert (=> b!4733881 d!1510622))

(declare-fun b_lambda!180885 () Bool)

(assert (= b_lambda!180771 (or b!4733500 b_lambda!180885)))

(assert (=> b!4734574 d!1510570))

(declare-fun b_lambda!180887 () Bool)

(assert (= b_lambda!180653 (or d!1509834 b_lambda!180887)))

(declare-fun bs!1123889 () Bool)

(declare-fun d!1510624 () Bool)

(assert (= bs!1123889 (and d!1510624 d!1509834)))

(assert (=> bs!1123889 (= (dynLambda!21858 lambda!217852 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (contains!16298 lt!1896851 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(declare-fun m!5680079 () Bool)

(assert (=> bs!1123889 m!5680079))

(assert (=> b!4733816 d!1510624))

(declare-fun b_lambda!180889 () Bool)

(assert (= b_lambda!180823 (or d!1509826 b_lambda!180889)))

(declare-fun bs!1123890 () Bool)

(declare-fun d!1510626 () Bool)

(assert (= bs!1123890 (and d!1510626 d!1509826)))

(assert (=> bs!1123890 (= (dynLambda!21858 lambda!217848 (h!59284 (Cons!52913 lt!1896347 lt!1896335))) (contains!16298 lt!1896822 (_1!30579 (h!59284 (Cons!52913 lt!1896347 lt!1896335)))))))

(declare-fun m!5680081 () Bool)

(assert (=> bs!1123890 m!5680081))

(assert (=> b!4734769 d!1510626))

(declare-fun b_lambda!180891 () Bool)

(assert (= b_lambda!180743 (or b!4733594 b_lambda!180891)))

(declare-fun bs!1123891 () Bool)

(declare-fun d!1510628 () Bool)

(assert (= bs!1123891 (and d!1510628 b!4733594)))

(assert (=> bs!1123891 (= (dynLambda!21858 lambda!217851 (h!59284 (Cons!52913 lt!1896326 lt!1896336))) (contains!16298 lt!1896855 (_1!30579 (h!59284 (Cons!52913 lt!1896326 lt!1896336)))))))

(assert (=> bs!1123891 m!5677377))

(assert (=> b!4734416 d!1510628))

(declare-fun b_lambda!180893 () Bool)

(assert (= b_lambda!180713 (or b!4733550 b_lambda!180893)))

(declare-fun bs!1123892 () Bool)

(declare-fun d!1510630 () Bool)

(assert (= bs!1123892 (and d!1510630 b!4733550)))

(assert (=> bs!1123892 (= (dynLambda!21858 lambda!217843 (h!59284 lt!1896335)) (contains!16298 lt!1896793 (_1!30579 (h!59284 lt!1896335))))))

(assert (=> bs!1123892 m!5677269))

(assert (=> b!4734228 d!1510630))

(declare-fun b_lambda!180895 () Bool)

(assert (= b_lambda!180745 (or b!4733594 b_lambda!180895)))

(assert (=> d!1510260 d!1510628))

(declare-fun b_lambda!180897 () Bool)

(assert (= b_lambda!180795 (or d!1509876 b_lambda!180897)))

(declare-fun bs!1123893 () Bool)

(declare-fun d!1510632 () Bool)

(assert (= bs!1123893 (and d!1510632 d!1509876)))

(assert (=> bs!1123893 (= (dynLambda!21858 lambda!217862 (h!59284 newBucket!218)) (= (hash!4436 hashF!1323 (_1!30579 (h!59284 newBucket!218))) hash!405))))

(declare-fun m!5680083 () Bool)

(assert (=> bs!1123893 m!5680083))

(assert (=> b!4734685 d!1510632))

(declare-fun b_lambda!180899 () Bool)

(assert (= b_lambda!180753 (or d!1509818 b_lambda!180899)))

(declare-fun bs!1123894 () Bool)

(declare-fun d!1510634 () Bool)

(assert (= bs!1123894 (and d!1510634 d!1509818)))

(assert (=> bs!1123894 (= (dynLambda!21858 lambda!217839 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896752 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680085 () Bool)

(assert (=> bs!1123894 m!5680085))

(assert (=> b!4734497 d!1510634))

(declare-fun b_lambda!180901 () Bool)

(assert (= b_lambda!180719 (or b!4733550 b_lambda!180901)))

(assert (=> d!1510176 d!1510630))

(declare-fun b_lambda!180903 () Bool)

(assert (= b_lambda!180665 (or b!4733561 b_lambda!180903)))

(assert (=> b!4733879 d!1510572))

(declare-fun b_lambda!180905 () Bool)

(assert (= b_lambda!180819 (or b!4733537 b_lambda!180905)))

(assert (=> b!4734765 d!1510608))

(declare-fun b_lambda!180907 () Bool)

(assert (= b_lambda!180725 (or b!4733550 b_lambda!180907)))

(declare-fun bs!1123896 () Bool)

(declare-fun d!1510636 () Bool)

(assert (= bs!1123896 (and d!1510636 b!4733550)))

(assert (=> bs!1123896 (= (dynLambda!21858 lambda!217843 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896793 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680087 () Bool)

(assert (=> bs!1123896 m!5680087))

(assert (=> b!4734258 d!1510636))

(declare-fun b_lambda!180909 () Bool)

(assert (= b_lambda!180669 (or b!4733561 b_lambda!180909)))

(declare-fun bs!1123897 () Bool)

(declare-fun d!1510640 () Bool)

(assert (= bs!1123897 (and d!1510640 b!4733561)))

(assert (=> bs!1123897 (= (dynLambda!21858 lambda!217846 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896343 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(assert (=> bs!1123897 m!5680043))

(assert (=> b!4733886 d!1510640))

(declare-fun b_lambda!180911 () Bool)

(assert (= b_lambda!180815 (or b!4733537 b_lambda!180911)))

(declare-fun bs!1123898 () Bool)

(declare-fun d!1510642 () Bool)

(assert (= bs!1123898 (and d!1510642 b!4733537)))

(assert (=> bs!1123898 (= (dynLambda!21858 lambda!217834 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896756 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680089 () Bool)

(assert (=> bs!1123898 m!5680089))

(assert (=> b!4734760 d!1510642))

(declare-fun b_lambda!180913 () Bool)

(assert (= b_lambda!180693 (or start!482632 b_lambda!180913)))

(declare-fun bs!1123899 () Bool)

(declare-fun d!1510644 () Bool)

(assert (= bs!1123899 (and d!1510644 start!482632)))

(assert (=> bs!1123899 (= (dynLambda!21856 lambda!217712 (h!59285 (t!360318 (toList!5977 lm!2023)))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (t!360318 (toList!5977 lm!2023))))))))

(assert (=> bs!1123899 m!5678635))

(assert (=> b!4734130 d!1510644))

(declare-fun b_lambda!180915 () Bool)

(assert (= b_lambda!180649 (or d!1509820 b_lambda!180915)))

(declare-fun bs!1123900 () Bool)

(declare-fun d!1510646 () Bool)

(assert (= bs!1123900 (and d!1510646 d!1509820)))

(assert (=> bs!1123900 (= (dynLambda!21858 lambda!217844 (h!59284 lt!1896335)) (contains!16298 lt!1896789 (_1!30579 (h!59284 lt!1896335))))))

(declare-fun m!5680095 () Bool)

(assert (=> bs!1123900 m!5680095))

(assert (=> b!4733735 d!1510646))

(declare-fun b_lambda!180917 () Bool)

(assert (= b_lambda!180659 (or d!1509812 b_lambda!180917)))

(declare-fun bs!1123901 () Bool)

(declare-fun d!1510650 () Bool)

(assert (= bs!1123901 (and d!1510650 d!1509812)))

(assert (=> bs!1123901 (= (dynLambda!21856 lambda!217826 (h!59285 lt!1896327)) (noDuplicateKeys!2044 (_2!30580 (h!59285 lt!1896327))))))

(assert (=> bs!1123901 m!5678007))

(assert (=> b!4733868 d!1510650))

(declare-fun b_lambda!180919 () Bool)

(assert (= b_lambda!180737 (or d!1509850 b_lambda!180919)))

(declare-fun bs!1123902 () Bool)

(declare-fun d!1510652 () Bool)

(assert (= bs!1123902 (and d!1510652 d!1509850)))

(assert (=> bs!1123902 (= (dynLambda!21856 lambda!217854 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023))))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (Cons!52914 (tuple2!54573 hash!405 lt!1896336) (t!360318 (toList!5977 lm!2023)))))))))

(assert (=> bs!1123902 m!5679113))

(assert (=> b!4734374 d!1510652))

(declare-fun b_lambda!180921 () Bool)

(assert (= b_lambda!180657 (or d!1509702 b_lambda!180921)))

(declare-fun bs!1123903 () Bool)

(declare-fun d!1510654 () Bool)

(assert (= bs!1123903 (and d!1510654 d!1509702)))

(assert (=> bs!1123903 (= (dynLambda!21856 lambda!217718 (h!59285 (toList!5977 lm!2023))) (noDuplicateKeys!2044 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))

(assert (=> bs!1123903 m!5677109))

(assert (=> b!4733831 d!1510654))

(declare-fun b_lambda!180923 () Bool)

(assert (= b_lambda!180779 (or b!4733500 b_lambda!180923)))

(declare-fun bs!1123904 () Bool)

(declare-fun d!1510656 () Bool)

(assert (= bs!1123904 (and d!1510656 b!4733500)))

(assert (=> bs!1123904 (= (dynLambda!21858 lambda!217821 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896706 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680097 () Bool)

(assert (=> bs!1123904 m!5680097))

(assert (=> b!4734601 d!1510656))

(declare-fun b_lambda!180925 () Bool)

(assert (= b_lambda!180747 (or b!4733594 b_lambda!180925)))

(declare-fun bs!1123905 () Bool)

(declare-fun d!1510658 () Bool)

(assert (= bs!1123905 (and d!1510658 b!4733594)))

(assert (=> bs!1123905 (= (dynLambda!21858 lambda!217851 (h!59284 (toList!5978 lt!1896846))) (contains!16298 lt!1896855 (_1!30579 (h!59284 (toList!5978 lt!1896846)))))))

(declare-fun m!5680099 () Bool)

(assert (=> bs!1123905 m!5680099))

(assert (=> b!4734428 d!1510658))

(declare-fun b_lambda!180927 () Bool)

(assert (= b_lambda!180715 (or b!4733550 b_lambda!180927)))

(declare-fun bs!1123906 () Bool)

(declare-fun d!1510660 () Bool)

(assert (= bs!1123906 (and d!1510660 b!4733550)))

(assert (=> bs!1123906 (= (dynLambda!21858 lambda!217843 (h!59284 (t!360317 lt!1896335))) (contains!16298 lt!1896793 (_1!30579 (h!59284 (t!360317 lt!1896335)))))))

(declare-fun m!5680101 () Bool)

(assert (=> bs!1123906 m!5680101))

(assert (=> b!4734230 d!1510660))

(declare-fun b_lambda!180929 () Bool)

(assert (= b_lambda!180709 (or d!1509704 b_lambda!180929)))

(declare-fun bs!1123907 () Bool)

(declare-fun d!1510662 () Bool)

(assert (= bs!1123907 (and d!1510662 d!1509704)))

(assert (=> bs!1123907 (= (dynLambda!21856 lambda!217749 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653)))) (noDuplicateKeys!2044 (_2!30580 (tuple2!54573 (hash!4436 hashF!1323 key!4653) (apply!12469 lm!2023 (hash!4436 hashF!1323 key!4653))))))))

(declare-fun m!5680103 () Bool)

(assert (=> bs!1123907 m!5680103))

(assert (=> d!1510142 d!1510662))

(declare-fun b_lambda!180931 () Bool)

(assert (= b_lambda!180701 (or d!1509730 b_lambda!180931)))

(declare-fun bs!1123908 () Bool)

(declare-fun d!1510664 () Bool)

(assert (= bs!1123908 (and d!1510664 d!1509730)))

(assert (=> bs!1123908 (= (dynLambda!21858 lambda!217822 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896702 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680105 () Bool)

(assert (=> bs!1123908 m!5680105))

(assert (=> b!4734191 d!1510664))

(declare-fun b_lambda!180933 () Bool)

(assert (= b_lambda!180741 (or b!4733594 b_lambda!180933)))

(declare-fun bs!1123909 () Bool)

(declare-fun d!1510666 () Bool)

(assert (= bs!1123909 (and d!1510666 b!4733594)))

(assert (=> bs!1123909 (= (dynLambda!21858 lambda!217851 (h!59284 (toList!5978 lt!1896343))) (contains!16298 lt!1896855 (_1!30579 (h!59284 (toList!5978 lt!1896343)))))))

(declare-fun m!5680107 () Bool)

(assert (=> bs!1123909 m!5680107))

(assert (=> b!4734380 d!1510666))

(declare-fun b_lambda!180935 () Bool)

(assert (= b_lambda!180711 (or d!1509730 b_lambda!180935)))

(declare-fun bs!1123910 () Bool)

(declare-fun d!1510668 () Bool)

(assert (= bs!1123910 (and d!1510668 d!1509730)))

(assert (=> bs!1123910 (= (dynLambda!21858 lambda!217822 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023))))) (contains!16298 lt!1896702 (_1!30579 (h!59284 (_2!30580 (h!59285 (toList!5977 lm!2023)))))))))

(declare-fun m!5680109 () Bool)

(assert (=> bs!1123910 m!5680109))

(assert (=> b!4734224 d!1510668))

(declare-fun b_lambda!180937 () Bool)

(assert (= b_lambda!180671 (or b!4733561 b_lambda!180937)))

(declare-fun bs!1123911 () Bool)

(declare-fun d!1510670 () Bool)

(assert (= bs!1123911 (and d!1510670 b!4733561)))

(assert (=> bs!1123911 (= (dynLambda!21858 lambda!217847 (h!59284 (toList!5978 lt!1896817))) (contains!16298 lt!1896826 (_1!30579 (h!59284 (toList!5978 lt!1896817)))))))

(declare-fun m!5680111 () Bool)

(assert (=> bs!1123911 m!5680111))

(assert (=> b!4733908 d!1510670))

(check-sat (not bm!331149) (not b!4733696) (not bs!1123876) (not b!4733884) (not b!4734777) (not b!4734129) (not b!4733847) (not bs!1123879) (not b_lambda!180833) (not b!4734423) (not d!1510206) (not b_lambda!180647) (not b!4734671) (not bm!331113) (not b!4734419) (not b!4734214) (not d!1510044) (not bs!1123907) (not b!4734206) (not b!4733804) (not b!4733753) (not b!4734159) (not d!1510142) (not b!4733758) (not b!4734029) (not b!4733992) (not bs!1123899) (not b!4734774) (not b_lambda!180865) (not b!4734255) (not b!4734238) (not b!4733838) (not bs!1123903) (not b_lambda!180907) (not b!4734161) (not b!4734383) (not d!1510496) (not b_lambda!180937) (not b!4734570) (not b!4734793) (not bs!1123897) (not b!4734194) (not b!4733887) (not b!4734830) (not bm!331104) (not b!4733984) (not bm!331196) (not b!4734213) (not b!4734105) (not b!4733695) (not d!1510240) (not b!4733732) (not d!1510280) (not b!4734149) (not b_lambda!180871) (not b!4734761) (not b!4734361) (not bs!1123885) (not bm!331174) (not d!1509882) (not d!1509974) (not b!4734153) (not d!1510332) (not b!4733757) (not b!4734715) (not d!1510138) (not d!1509984) (not b!4734677) (not b!4734211) (not b!4734079) (not d!1510154) (not b!4734156) (not b!4733738) (not b!4734500) (not bs!1123863) (not d!1510130) (not b!4734791) (not b!4733866) (not b!4733808) (not b!4734598) (not bs!1123872) (not b!4734714) (not b!4733802) (not d!1510372) (not bm!331160) (not b_lambda!180931) (not b!4733834) (not bm!331189) (not d!1510164) (not d!1510498) (not b!4734173) (not b!4733693) (not b!4734349) (not b!4734095) (not d!1510386) (not bm!331103) (not b!4733880) (not d!1510270) (not b!4734141) (not bs!1123890) (not d!1509998) (not b!4733754) (not b!4733962) (not d!1510430) (not d!1510454) (not b!4734636) (not bm!331119) (not b!4734264) (not b_lambda!180935) (not b!4734216) (not b!4734081) (not bs!1123881) (not b!4734241) (not d!1510478) (not b!4733737) (not d!1510262) (not b!4734092) (not b!4733734) (not b!4734753) (not b!4734233) (not b!4734673) (not bm!331106) (not b!4734101) (not bm!331105) (not b!4734712) (not b_lambda!180901) (not b_lambda!180641) (not bm!331175) (not b!4734377) (not b!4734705) (not b_lambda!180911) (not b!4733830) (not b!4734175) (not bm!331127) (not bs!1123880) (not b!4733817) (not b!4733821) (not b!4734026) (not b!4733915) (not bm!331186) (not d!1510042) (not b!4734446) (not b!4733770) (not b!4734580) (not bs!1123901) (not d!1509908) (not b!4734592) (not b!4734717) (not b!4733846) (not b!4733858) (not b!4733844) (not b_lambda!180837) (not bm!331108) (not b!4734589) (not bm!331182) (not b!4734751) (not b!4734082) (not b_lambda!180917) (not b!4733989) (not b!4734805) (not b!4734386) (not b!4733863) (not b_lambda!180927) (not b!4734785) (not d!1509952) (not bs!1123904) (not bm!331164) (not b!4734126) (not b!4733827) (not d!1510212) (not d!1510364) (not b!4733985) (not b_lambda!180909) (not b!4733856) (not d!1510140) (not b!4734263) (not b!4734675) (not bs!1123896) (not d!1510348) (not b!4733991) (not bs!1123883) (not b!4734579) (not d!1509910) (not b!4734552) (not d!1509888) (not bs!1123892) (not b!4734231) (not b!4734176) (not b!4734266) (not b!4734221) (not b!4734604) (not b!4733722) (not b!4734099) (not b!4734599) (not d!1510072) (not b!4734824) (not b!4733806) (not b!4734807) (not b!4734584) (not b!4733740) (not b!4734418) (not bs!1123868) (not b!4733983) (not b!4733833) (not b!4734148) (not bs!1123910) (not b!4733836) (not b!4733810) (not d!1509944) (not bm!331159) (not bm!331165) (not b!4733837) (not d!1510380) (not b!4734300) (not b!4734030) (not b!4734822) (not b_lambda!180729) (not b!4734089) (not b_lambda!180869) (not d!1510238) (not b_lambda!180905) (not b_lambda!180703) (not bm!331110) (not b_lambda!180873) (not bs!1123875) (not b_lambda!180863) (not b!4734595) (not b!4733723) (not d!1510452) (not b!4733849) (not d!1510366) (not bs!1123870) (not b!4734585) (not b!4734080) (not b_lambda!180643) (not bs!1123908) (not b!4733888) (not d!1509938) (not b!4734829) (not d!1509950) (not b!4734635) (not d!1510502) (not b_lambda!180853) (not b!4734590) (not d!1509896) (not d!1510360) (not bs!1123867) (not b_lambda!180913) (not b!4734094) (not d!1509926) (not b!4733764) (not d!1510510) (not b!4733878) (not b!4734444) (not b!4733956) (not b!4733724) (not b!4734834) (not b!4734676) (not b!4733893) (not bm!331158) (not d!1510378) (not b!4734797) (not b_lambda!180879) (not b!4733899) (not d!1510490) (not b!4734421) (not b!4734086) (not b!4733825) (not b!4734027) (not bs!1123889) (not b!4734152) (not bs!1123874) (not b!4734291) (not b!4734763) (not bm!331109) (not b!4734814) (not bm!331176) (not b_lambda!180857) (not bm!331111) (not b!4733835) (not bm!331150) (not d!1510506) (not b!4734171) (not bm!331130) (not b!4734755) (not b!4733850) (not b_lambda!180845) (not b!4734104) (not d!1510210) (not bs!1123864) (not bs!1123869) (not d!1510168) (not d!1510068) (not b!4734219) (not b_lambda!180883) (not b!4734534) (not d!1510426) (not b!4734572) (not bm!331134) (not b!4734422) (not b!4733703) (not bm!331085) (not b!4733890) (not d!1509918) (not d!1510176) (not b!4733912) (not b!4733914) (not b!4733852) (not b!4734303) (not d!1510034) (not d!1510436) (not b!4734498) (not b!4733755) (not b!4734638) (not b_lambda!180889) (not bs!1123886) (not d!1509916) (not b!4734145) (not b!4733876) (not b!4734815) (not bm!331171) (not d!1510146) (not b_lambda!180887) (not b!4734426) (not d!1510098) (not b!4733889) (not d!1510252) (not b!4734443) (not d!1510014) (not b!4733751) (not bs!1123882) (not bm!331107) (not b_lambda!180875) (not d!1510268) (not bm!331135) (not bs!1123909) (not b!4733771) (not b_lambda!180835) (not b_lambda!180885) (not b!4734028) (not d!1509968) (not b!4734234) (not b!4733819) (not b!4734150) (not bs!1123902) (not b!4733911) (not b!4734449) (not b!4734501) (not b!4734440) (not b!4734764) (not d!1510148) (not b!4734808) (not b!4733812) (not b!4734811) (not b!4733896) (not d!1510520) (not b!4733811) (not b!4733999) (not b_lambda!180841) (not b!4734227) (not bm!331172) (not b!4733709) (not bm!331188) (not bs!1123894) (not bs!1123898) (not b!4733715) (not b!4733823) (not d!1509924) (not b!4734471) (not d!1510022) (not b!4734167) (not bm!331096) (not b!4733963) (not b!4734756) (not b_lambda!180903) (not b!4734177) (not b_lambda!180867) (not b!4734591) (not b_lambda!180849) (not d!1509932) (not b!4734707) (not b!4734169) (not d!1510208) (not b!4733841) (not b!4734091) (not b!4733960) (not d!1510016) (not bs!1123865) (not d!1510074) (not bs!1123878) (not b!4734602) (not d!1510170) (not b!4734249) (not b_lambda!180925) (not b!4733832) (not b!4734020) (not b!4733736) (not b!4733959) (not b_lambda!180923) (not b!4733869) (not b!4734151) (not b_lambda!180855) (not b!4734772) (not b!4734295) (not d!1509898) (not bs!1123877) (not d!1510260) (not bm!331133) (not b!4733898) (not b!4733854) (not b_lambda!180861) (not b!4734704) (not b!4734236) (not b!4734373) (not bm!331129) (not b!4734576) (not b!4734131) (not bm!331094) (not bs!1123866) (not b!4734070) (not b!4734594) (not bm!331128) (not bs!1123891) (not b!4734775) (not b!4734071) (not b_lambda!180851) (not b!4734789) (not b!4733860) (not b!4734762) (not b_lambda!180895) tp_is_empty!31471 (not b!4733976) (not b!4733801) (not b!4734209) (not d!1509964) (not b_lambda!180843) (not b!4734766) (not b!4733697) (not b!4733818) (not b!4734108) (not b!4734417) (not b!4733822) (not d!1510004) (not b!4733882) (not b!4733909) (not d!1510428) (not d!1510474) (not b!4734709) (not b_lambda!180859) (not b!4734077) (not b!4734375) (not d!1509990) (not b_lambda!180933) (not b!4734680) (not b!4734290) (not b!4734229) (not b!4733756) (not d!1509956) (not b_lambda!180877) (not bs!1123905) (not d!1509992) (not b!4733892) (not b!4734162) (not b_lambda!180891) (not b!4734103) (not b_lambda!180655) (not b!4734831) (not b_lambda!180839) (not b!4734217) (not b!4734752) (not bs!1123884) (not b!4734355) (not b!4734292) (not b!4734201) (not b!4734350) (not bm!331153) (not b!4733982) (not b!4734351) (not b!4733986) (not b!4734429) (not b!4734031) (not d!1509962) (not d!1510244) (not b!4734806) (not b!4733859) (not d!1510076) (not b!4734002) (not bm!331148) (not b!4734770) (not d!1510256) (not d!1510144) (not bs!1123888) (not d!1510530) (not bs!1123887) (not b!4734226) (not b!4734439) (not b!4734476) (not b!4734672) (not b!4734708) (not d!1510110) (not bm!331195) (not b_lambda!180881) (not b!4734384) (not b!4734293) (not b!4734759) (not b!4734575) (not d!1510150) (not d!1510092) (not b_lambda!180847) (not b!4733987) (not d!1509922) (not b!4733891) (not b!4734674) (not b!4734496) (not bm!331132) (not b!4734379) (not bs!1123873) (not d!1510480) (not b!4733918) (not b!4734577) (not bm!331197) (not bm!331166) (not d!1510036) (not b!4734820) (not d!1510404) (not b!4734754) (not d!1509928) (not d!1510296) (not b!4734259) (not b!4734768) (not bm!331116) (not d!1510226) (not b!4733828) (not b_lambda!180897) (not d!1510020) (not d!1510370) (not b!4734083) (not b!4733883) (not b!4734225) (not b!4733910) (not b!4734039) (not d!1509982) (not b!4734244) (not b!4734803) (not b!4734069) (not b!4733872) (not b!4734688) (not b_lambda!180751) (not b!4734298) (not b!4734000) (not d!1510190) (not b!4734120) (not bm!331151) (not b!4734474) (not d!1510094) (not b!4734683) (not b!4734442) (not b!4734223) tp_is_empty!31469 (not bs!1123906) (not b!4734686) (not bs!1123911) (not b!4734371) (not b!4734427) (not b_lambda!180915) (not b!4734445) (not b!4734138) (not b_lambda!180899) (not b!4734750) (not bm!331198) (not b!4734600) (not b!4734420) (not b!4734203) (not b!4734581) (not b!4734239) (not b!4733761) (not d!1510084) (not b!4734441) (not bm!331187) (not d!1510116) (not b_lambda!180893) (not b!4734237) (not d!1510088) (not b!4734593) (not b!4733815) (not b!4734166) (not bs!1123893) (not b!4734134) (not b_lambda!180831) (not b!4734192) (not b!4734097) (not b!4734473) (not d!1510362) (not b!4733687) (not bs!1123900) (not d!1510536) (not b!4734240) (not b_lambda!180919) (not b!4734503) (not b!4734123) (not bm!331121) (not bm!331099) (not b!4734034) (not b!4734812) (not b!4734294) (not b_lambda!180929) (not b!4734208) (not b_lambda!180921) (not d!1510118) (not b!4734078) (not b!4734578) (not bm!331114) (not b!4734301) (not b!4734587) (not b!4734381) (not bm!331101) (not b!4734235) (not bs!1123871) (not bm!331118) (not b!4734800) (not b!4734706) (not b!4733901) (not b!4734771) (not b!4734795) (not b!4734332) (not bm!331098) (not b!4733913) (not d!1509912) (not d!1509960))
(check-sat)
