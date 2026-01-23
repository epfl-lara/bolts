; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463992 () Bool)

(assert start!463992)

(declare-fun b!4627322 () Bool)

(declare-fun res!1940752 () Bool)

(declare-fun e!2886488 () Bool)

(assert (=> b!4627322 (=> (not res!1940752) (not e!2886488))))

(declare-datatypes ((Hashable!5911 0))(
  ( (HashableExt!5910 (__x!31614 Int)) )
))
(declare-fun hashF!1389 () Hashable!5911)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12935 0))(
  ( (K!12936 (val!18619 Int)) )
))
(declare-datatypes ((V!13181 0))(
  ( (V!13182 (val!18620 Int)) )
))
(declare-datatypes ((tuple2!52502 0))(
  ( (tuple2!52503 (_1!29545 K!12935) (_2!29545 V!13181)) )
))
(declare-datatypes ((List!51682 0))(
  ( (Nil!51558) (Cons!51558 (h!57616 tuple2!52502) (t!358722 List!51682)) )
))
(declare-fun oldBucket!40 () List!51682)

(declare-fun allKeysSameHash!1368 (List!51682 (_ BitVec 64) Hashable!5911) Bool)

(assert (=> b!4627322 (= res!1940752 (allKeysSameHash!1368 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4627323 () Bool)

(declare-fun e!2886491 () Bool)

(assert (=> b!4627323 (= e!2886488 e!2886491)))

(declare-fun res!1940755 () Bool)

(assert (=> b!4627323 (=> (not res!1940755) (not e!2886491))))

(declare-datatypes ((ListMap!4297 0))(
  ( (ListMap!4298 (toList!4993 List!51682)) )
))
(declare-fun lt!1785919 () ListMap!4297)

(declare-fun key!4968 () K!12935)

(declare-fun contains!14617 (ListMap!4297 K!12935) Bool)

(assert (=> b!4627323 (= res!1940755 (contains!14617 lt!1785919 key!4968))))

(declare-datatypes ((tuple2!52504 0))(
  ( (tuple2!52505 (_1!29546 (_ BitVec 64)) (_2!29546 List!51682)) )
))
(declare-datatypes ((List!51683 0))(
  ( (Nil!51559) (Cons!51559 (h!57617 tuple2!52504) (t!358723 List!51683)) )
))
(declare-fun lt!1785928 () List!51683)

(declare-fun extractMap!1570 (List!51683) ListMap!4297)

(assert (=> b!4627323 (= lt!1785919 (extractMap!1570 lt!1785928))))

(assert (=> b!4627323 (= lt!1785928 (Cons!51559 (tuple2!52505 hash!414 oldBucket!40) Nil!51559))))

(declare-fun b!4627324 () Bool)

(declare-fun res!1940753 () Bool)

(declare-fun e!2886494 () Bool)

(assert (=> b!4627324 (=> res!1940753 e!2886494)))

(declare-fun lt!1785934 () List!51682)

(declare-fun removePairForKey!1137 (List!51682 K!12935) List!51682)

(assert (=> b!4627324 (= res!1940753 (not (= (removePairForKey!1137 (t!358722 oldBucket!40) key!4968) lt!1785934)))))

(declare-fun tp_is_empty!29351 () Bool)

(declare-fun e!2886487 () Bool)

(declare-fun b!4627325 () Bool)

(declare-fun tp!1342187 () Bool)

(declare-fun tp_is_empty!29349 () Bool)

(assert (=> b!4627325 (= e!2886487 (and tp_is_empty!29349 tp_is_empty!29351 tp!1342187))))

(declare-fun b!4627326 () Bool)

(declare-fun e!2886497 () Bool)

(assert (=> b!4627326 (= e!2886494 e!2886497)))

(declare-fun res!1940756 () Bool)

(assert (=> b!4627326 (=> res!1940756 e!2886497)))

(declare-fun lt!1785908 () List!51682)

(declare-fun eq!829 (ListMap!4297 ListMap!4297) Bool)

(declare-fun +!1880 (ListMap!4297 tuple2!52502) ListMap!4297)

(assert (=> b!4627326 (= res!1940756 (not (eq!829 lt!1785919 (+!1880 (extractMap!1570 (Cons!51559 (tuple2!52505 hash!414 lt!1785908) Nil!51559)) (h!57616 oldBucket!40)))))))

(declare-fun lt!1785913 () tuple2!52502)

(declare-fun addToMapMapFromBucket!975 (List!51682 ListMap!4297) ListMap!4297)

(assert (=> b!4627326 (eq!829 (addToMapMapFromBucket!975 (Cons!51558 lt!1785913 lt!1785934) (ListMap!4298 Nil!51558)) (+!1880 (addToMapMapFromBucket!975 lt!1785934 (ListMap!4298 Nil!51558)) lt!1785913))))

(declare-datatypes ((Unit!112508 0))(
  ( (Unit!112509) )
))
(declare-fun lt!1785930 () Unit!112508)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!80 (tuple2!52502 List!51682 ListMap!4297) Unit!112508)

(assert (=> b!4627326 (= lt!1785930 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!80 lt!1785913 lt!1785934 (ListMap!4298 Nil!51558)))))

(declare-fun newBucket!224 () List!51682)

(declare-fun head!9648 (List!51682) tuple2!52502)

(assert (=> b!4627326 (= lt!1785913 (head!9648 newBucket!224))))

(declare-fun lt!1785924 () tuple2!52502)

(assert (=> b!4627326 (eq!829 (addToMapMapFromBucket!975 (Cons!51558 lt!1785924 lt!1785908) (ListMap!4298 Nil!51558)) (+!1880 (addToMapMapFromBucket!975 lt!1785908 (ListMap!4298 Nil!51558)) lt!1785924))))

(declare-fun lt!1785921 () Unit!112508)

(assert (=> b!4627326 (= lt!1785921 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!80 lt!1785924 lt!1785908 (ListMap!4298 Nil!51558)))))

(assert (=> b!4627326 (= lt!1785924 (head!9648 oldBucket!40))))

(declare-fun lt!1785918 () ListMap!4297)

(assert (=> b!4627326 (contains!14617 lt!1785918 key!4968)))

(declare-fun lt!1785931 () List!51683)

(assert (=> b!4627326 (= lt!1785918 (extractMap!1570 lt!1785931))))

(declare-fun lt!1785912 () Unit!112508)

(declare-datatypes ((ListLongMap!3583 0))(
  ( (ListLongMap!3584 (toList!4994 List!51683)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!332 (ListLongMap!3583 K!12935 Hashable!5911) Unit!112508)

(assert (=> b!4627326 (= lt!1785912 (lemmaListContainsThenExtractedMapContains!332 (ListLongMap!3584 lt!1785931) key!4968 hashF!1389))))

(assert (=> b!4627326 (= lt!1785931 (Cons!51559 (tuple2!52505 hash!414 (t!358722 oldBucket!40)) Nil!51559))))

(declare-fun b!4627327 () Bool)

(declare-fun res!1940765 () Bool)

(assert (=> b!4627327 (=> (not res!1940765) (not e!2886488))))

(assert (=> b!4627327 (= res!1940765 (= (removePairForKey!1137 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4627328 () Bool)

(declare-fun e!2886493 () Bool)

(assert (=> b!4627328 (= e!2886493 e!2886494)))

(declare-fun res!1940764 () Bool)

(assert (=> b!4627328 (=> res!1940764 e!2886494)))

(assert (=> b!4627328 (= res!1940764 (not (= (removePairForKey!1137 lt!1785908 key!4968) lt!1785934)))))

(declare-fun tail!8149 (List!51682) List!51682)

(assert (=> b!4627328 (= lt!1785934 (tail!8149 newBucket!224))))

(assert (=> b!4627328 (= lt!1785908 (tail!8149 oldBucket!40))))

(declare-fun b!4627329 () Bool)

(declare-fun res!1940766 () Bool)

(declare-fun e!2886496 () Bool)

(assert (=> b!4627329 (=> (not res!1940766) (not e!2886496))))

(assert (=> b!4627329 (= res!1940766 (allKeysSameHash!1368 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4627330 () Bool)

(declare-fun e!2886489 () Bool)

(declare-fun e!2886495 () Bool)

(assert (=> b!4627330 (= e!2886489 e!2886495)))

(declare-fun res!1940760 () Bool)

(assert (=> b!4627330 (=> res!1940760 e!2886495)))

(declare-fun lt!1785933 () ListMap!4297)

(declare-fun lt!1785932 () ListMap!4297)

(declare-fun -!554 (ListMap!4297 K!12935) ListMap!4297)

(assert (=> b!4627330 (= res!1940760 (not (= (-!554 lt!1785932 key!4968) (+!1880 lt!1785933 (h!57616 oldBucket!40)))))))

(assert (=> b!4627330 (= lt!1785932 (+!1880 lt!1785918 (h!57616 oldBucket!40)))))

(assert (=> b!4627330 (= (-!554 (+!1880 lt!1785918 (h!57616 oldBucket!40)) key!4968) (+!1880 lt!1785933 (h!57616 oldBucket!40)))))

(declare-fun lt!1785929 () Unit!112508)

(declare-fun addRemoveCommutativeForDiffKeys!9 (ListMap!4297 K!12935 V!13181 K!12935) Unit!112508)

(assert (=> b!4627330 (= lt!1785929 (addRemoveCommutativeForDiffKeys!9 lt!1785918 (_1!29545 (h!57616 oldBucket!40)) (_2!29545 (h!57616 oldBucket!40)) key!4968))))

(declare-fun lt!1785922 () ListMap!4297)

(assert (=> b!4627330 (eq!829 lt!1785922 lt!1785933)))

(assert (=> b!4627330 (= lt!1785933 (-!554 lt!1785918 key!4968))))

(declare-fun lt!1785935 () Unit!112508)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!116 ((_ BitVec 64) List!51682 List!51682 K!12935 Hashable!5911) Unit!112508)

(assert (=> b!4627330 (= lt!1785935 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!116 hash!414 (t!358722 oldBucket!40) lt!1785934 key!4968 hashF!1389))))

(declare-fun b!4627331 () Bool)

(declare-fun res!1940763 () Bool)

(assert (=> b!4627331 (=> (not res!1940763) (not e!2886488))))

(declare-fun noDuplicateKeys!1514 (List!51682) Bool)

(assert (=> b!4627331 (= res!1940763 (noDuplicateKeys!1514 newBucket!224))))

(declare-fun res!1940758 () Bool)

(assert (=> start!463992 (=> (not res!1940758) (not e!2886488))))

(assert (=> start!463992 (= res!1940758 (noDuplicateKeys!1514 oldBucket!40))))

(assert (=> start!463992 e!2886488))

(assert (=> start!463992 true))

(assert (=> start!463992 e!2886487))

(assert (=> start!463992 tp_is_empty!29349))

(declare-fun e!2886492 () Bool)

(assert (=> start!463992 e!2886492))

(declare-fun b!4627332 () Bool)

(declare-fun tp!1342186 () Bool)

(assert (=> b!4627332 (= e!2886492 (and tp_is_empty!29349 tp_is_empty!29351 tp!1342186))))

(declare-fun b!4627333 () Bool)

(declare-fun e!2886490 () Bool)

(assert (=> b!4627333 (= e!2886490 e!2886493)))

(declare-fun res!1940759 () Bool)

(assert (=> b!4627333 (=> res!1940759 e!2886493)))

(declare-fun containsKey!2470 (List!51682 K!12935) Bool)

(assert (=> b!4627333 (= res!1940759 (not (containsKey!2470 (t!358722 oldBucket!40) key!4968)))))

(assert (=> b!4627333 (containsKey!2470 oldBucket!40 key!4968)))

(declare-fun lt!1785911 () Unit!112508)

(declare-fun lemmaGetPairDefinedThenContainsKey!60 (List!51682 K!12935 Hashable!5911) Unit!112508)

(assert (=> b!4627333 (= lt!1785911 (lemmaGetPairDefinedThenContainsKey!60 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1785910 () List!51682)

(declare-datatypes ((Option!11612 0))(
  ( (None!11611) (Some!11611 (v!45753 tuple2!52502)) )
))
(declare-fun isDefined!8877 (Option!11612) Bool)

(declare-fun getPair!306 (List!51682 K!12935) Option!11612)

(assert (=> b!4627333 (isDefined!8877 (getPair!306 lt!1785910 key!4968))))

(declare-fun lt!1785923 () Unit!112508)

(declare-fun lambda!192602 () Int)

(declare-fun lt!1785909 () tuple2!52504)

(declare-fun forallContained!3066 (List!51683 Int tuple2!52504) Unit!112508)

(assert (=> b!4627333 (= lt!1785923 (forallContained!3066 lt!1785928 lambda!192602 lt!1785909))))

(declare-fun contains!14618 (List!51683 tuple2!52504) Bool)

(assert (=> b!4627333 (contains!14618 lt!1785928 lt!1785909)))

(declare-fun lt!1785917 () (_ BitVec 64))

(assert (=> b!4627333 (= lt!1785909 (tuple2!52505 lt!1785917 lt!1785910))))

(declare-fun lt!1785916 () ListLongMap!3583)

(declare-fun lt!1785926 () Unit!112508)

(declare-fun lemmaGetValueImpliesTupleContained!111 (ListLongMap!3583 (_ BitVec 64) List!51682) Unit!112508)

(assert (=> b!4627333 (= lt!1785926 (lemmaGetValueImpliesTupleContained!111 lt!1785916 lt!1785917 lt!1785910))))

(declare-fun apply!12179 (ListLongMap!3583 (_ BitVec 64)) List!51682)

(assert (=> b!4627333 (= lt!1785910 (apply!12179 lt!1785916 lt!1785917))))

(declare-fun contains!14619 (ListLongMap!3583 (_ BitVec 64)) Bool)

(assert (=> b!4627333 (contains!14619 lt!1785916 lt!1785917)))

(declare-fun lt!1785920 () Unit!112508)

(declare-fun lemmaInGenMapThenLongMapContainsHash!512 (ListLongMap!3583 K!12935 Hashable!5911) Unit!112508)

(assert (=> b!4627333 (= lt!1785920 (lemmaInGenMapThenLongMapContainsHash!512 lt!1785916 key!4968 hashF!1389))))

(declare-fun lt!1785915 () Unit!112508)

(declare-fun lemmaInGenMapThenGetPairDefined!102 (ListLongMap!3583 K!12935 Hashable!5911) Unit!112508)

(assert (=> b!4627333 (= lt!1785915 (lemmaInGenMapThenGetPairDefined!102 lt!1785916 key!4968 hashF!1389))))

(assert (=> b!4627333 (= lt!1785916 (ListLongMap!3584 lt!1785928))))

(declare-fun b!4627334 () Bool)

(declare-fun e!2886498 () Bool)

(declare-fun lt!1785925 () ListMap!4297)

(assert (=> b!4627334 (= e!2886498 (= lt!1785925 (ListMap!4298 Nil!51558)))))

(declare-fun b!4627335 () Bool)

(assert (=> b!4627335 (= e!2886491 e!2886496)))

(declare-fun res!1940762 () Bool)

(assert (=> b!4627335 (=> (not res!1940762) (not e!2886496))))

(assert (=> b!4627335 (= res!1940762 (= lt!1785917 hash!414))))

(declare-fun hash!3523 (Hashable!5911 K!12935) (_ BitVec 64))

(assert (=> b!4627335 (= lt!1785917 (hash!3523 hashF!1389 key!4968))))

(declare-fun b!4627336 () Bool)

(assert (=> b!4627336 (= e!2886496 (not e!2886490))))

(declare-fun res!1940754 () Bool)

(assert (=> b!4627336 (=> res!1940754 e!2886490)))

(get-info :version)

(assert (=> b!4627336 (= res!1940754 (or (and ((_ is Cons!51558) oldBucket!40) (= (_1!29545 (h!57616 oldBucket!40)) key!4968)) (not ((_ is Cons!51558) oldBucket!40)) (= (_1!29545 (h!57616 oldBucket!40)) key!4968)))))

(assert (=> b!4627336 e!2886498))

(declare-fun res!1940761 () Bool)

(assert (=> b!4627336 (=> (not res!1940761) (not e!2886498))))

(assert (=> b!4627336 (= res!1940761 (= lt!1785919 (addToMapMapFromBucket!975 oldBucket!40 lt!1785925)))))

(assert (=> b!4627336 (= lt!1785925 (extractMap!1570 Nil!51559))))

(assert (=> b!4627336 true))

(declare-fun b!4627337 () Bool)

(assert (=> b!4627337 (= e!2886497 e!2886489)))

(declare-fun res!1940757 () Bool)

(assert (=> b!4627337 (=> res!1940757 e!2886489)))

(declare-fun lt!1785914 () ListMap!4297)

(assert (=> b!4627337 (= res!1940757 (not (eq!829 lt!1785914 (+!1880 lt!1785922 lt!1785913))))))

(assert (=> b!4627337 (= lt!1785922 (extractMap!1570 (Cons!51559 (tuple2!52505 hash!414 lt!1785934) Nil!51559)))))

(assert (=> b!4627337 (= lt!1785914 (extractMap!1570 (Cons!51559 (tuple2!52505 hash!414 newBucket!224) Nil!51559)))))

(declare-fun b!4627338 () Bool)

(assert (=> b!4627338 (= e!2886495 true)))

(declare-fun lt!1785927 () Bool)

(assert (=> b!4627338 (= lt!1785927 (eq!829 lt!1785932 lt!1785919))))

(assert (= (and start!463992 res!1940758) b!4627331))

(assert (= (and b!4627331 res!1940763) b!4627327))

(assert (= (and b!4627327 res!1940765) b!4627322))

(assert (= (and b!4627322 res!1940752) b!4627323))

(assert (= (and b!4627323 res!1940755) b!4627335))

(assert (= (and b!4627335 res!1940762) b!4627329))

(assert (= (and b!4627329 res!1940766) b!4627336))

(assert (= (and b!4627336 res!1940761) b!4627334))

(assert (= (and b!4627336 (not res!1940754)) b!4627333))

(assert (= (and b!4627333 (not res!1940759)) b!4627328))

(assert (= (and b!4627328 (not res!1940764)) b!4627324))

(assert (= (and b!4627324 (not res!1940753)) b!4627326))

(assert (= (and b!4627326 (not res!1940756)) b!4627337))

(assert (= (and b!4627337 (not res!1940757)) b!4627330))

(assert (= (and b!4627330 (not res!1940760)) b!4627338))

(assert (= (and start!463992 ((_ is Cons!51558) oldBucket!40)) b!4627325))

(assert (= (and start!463992 ((_ is Cons!51558) newBucket!224)) b!4627332))

(declare-fun m!5471333 () Bool)

(assert (=> b!4627331 m!5471333))

(declare-fun m!5471335 () Bool)

(assert (=> b!4627329 m!5471335))

(declare-fun m!5471337 () Bool)

(assert (=> b!4627323 m!5471337))

(declare-fun m!5471339 () Bool)

(assert (=> b!4627323 m!5471339))

(declare-fun m!5471341 () Bool)

(assert (=> b!4627338 m!5471341))

(declare-fun m!5471343 () Bool)

(assert (=> b!4627327 m!5471343))

(declare-fun m!5471345 () Bool)

(assert (=> b!4627333 m!5471345))

(declare-fun m!5471347 () Bool)

(assert (=> b!4627333 m!5471347))

(declare-fun m!5471349 () Bool)

(assert (=> b!4627333 m!5471349))

(declare-fun m!5471351 () Bool)

(assert (=> b!4627333 m!5471351))

(declare-fun m!5471353 () Bool)

(assert (=> b!4627333 m!5471353))

(declare-fun m!5471355 () Bool)

(assert (=> b!4627333 m!5471355))

(declare-fun m!5471357 () Bool)

(assert (=> b!4627333 m!5471357))

(declare-fun m!5471359 () Bool)

(assert (=> b!4627333 m!5471359))

(declare-fun m!5471361 () Bool)

(assert (=> b!4627333 m!5471361))

(declare-fun m!5471363 () Bool)

(assert (=> b!4627333 m!5471363))

(declare-fun m!5471365 () Bool)

(assert (=> b!4627333 m!5471365))

(declare-fun m!5471367 () Bool)

(assert (=> b!4627333 m!5471367))

(assert (=> b!4627333 m!5471353))

(declare-fun m!5471369 () Bool)

(assert (=> b!4627328 m!5471369))

(declare-fun m!5471371 () Bool)

(assert (=> b!4627328 m!5471371))

(declare-fun m!5471373 () Bool)

(assert (=> b!4627328 m!5471373))

(declare-fun m!5471375 () Bool)

(assert (=> b!4627324 m!5471375))

(declare-fun m!5471377 () Bool)

(assert (=> b!4627322 m!5471377))

(declare-fun m!5471379 () Bool)

(assert (=> b!4627336 m!5471379))

(declare-fun m!5471381 () Bool)

(assert (=> b!4627336 m!5471381))

(declare-fun m!5471383 () Bool)

(assert (=> b!4627326 m!5471383))

(declare-fun m!5471385 () Bool)

(assert (=> b!4627326 m!5471385))

(declare-fun m!5471387 () Bool)

(assert (=> b!4627326 m!5471387))

(declare-fun m!5471389 () Bool)

(assert (=> b!4627326 m!5471389))

(declare-fun m!5471391 () Bool)

(assert (=> b!4627326 m!5471391))

(declare-fun m!5471393 () Bool)

(assert (=> b!4627326 m!5471393))

(declare-fun m!5471395 () Bool)

(assert (=> b!4627326 m!5471395))

(declare-fun m!5471397 () Bool)

(assert (=> b!4627326 m!5471397))

(assert (=> b!4627326 m!5471393))

(declare-fun m!5471399 () Bool)

(assert (=> b!4627326 m!5471399))

(assert (=> b!4627326 m!5471385))

(declare-fun m!5471401 () Bool)

(assert (=> b!4627326 m!5471401))

(declare-fun m!5471403 () Bool)

(assert (=> b!4627326 m!5471403))

(declare-fun m!5471405 () Bool)

(assert (=> b!4627326 m!5471405))

(declare-fun m!5471407 () Bool)

(assert (=> b!4627326 m!5471407))

(assert (=> b!4627326 m!5471391))

(assert (=> b!4627326 m!5471397))

(assert (=> b!4627326 m!5471407))

(assert (=> b!4627326 m!5471401))

(declare-fun m!5471409 () Bool)

(assert (=> b!4627326 m!5471409))

(declare-fun m!5471411 () Bool)

(assert (=> b!4627326 m!5471411))

(assert (=> b!4627326 m!5471405))

(declare-fun m!5471413 () Bool)

(assert (=> b!4627326 m!5471413))

(declare-fun m!5471415 () Bool)

(assert (=> b!4627326 m!5471415))

(assert (=> b!4627326 m!5471413))

(declare-fun m!5471417 () Bool)

(assert (=> b!4627326 m!5471417))

(declare-fun m!5471419 () Bool)

(assert (=> b!4627337 m!5471419))

(assert (=> b!4627337 m!5471419))

(declare-fun m!5471421 () Bool)

(assert (=> b!4627337 m!5471421))

(declare-fun m!5471423 () Bool)

(assert (=> b!4627337 m!5471423))

(declare-fun m!5471425 () Bool)

(assert (=> b!4627337 m!5471425))

(declare-fun m!5471427 () Bool)

(assert (=> start!463992 m!5471427))

(declare-fun m!5471429 () Bool)

(assert (=> b!4627330 m!5471429))

(declare-fun m!5471431 () Bool)

(assert (=> b!4627330 m!5471431))

(declare-fun m!5471433 () Bool)

(assert (=> b!4627330 m!5471433))

(declare-fun m!5471435 () Bool)

(assert (=> b!4627330 m!5471435))

(declare-fun m!5471437 () Bool)

(assert (=> b!4627330 m!5471437))

(declare-fun m!5471439 () Bool)

(assert (=> b!4627330 m!5471439))

(declare-fun m!5471441 () Bool)

(assert (=> b!4627330 m!5471441))

(declare-fun m!5471443 () Bool)

(assert (=> b!4627330 m!5471443))

(assert (=> b!4627330 m!5471435))

(declare-fun m!5471445 () Bool)

(assert (=> b!4627335 m!5471445))

(check-sat tp_is_empty!29351 (not b!4627333) (not start!463992) (not b!4627337) (not b!4627323) (not b!4627332) (not b!4627330) (not b!4627329) (not b!4627327) (not b!4627335) (not b!4627331) (not b!4627325) (not b!4627338) (not b!4627328) (not b!4627326) (not b!4627324) (not b!4627322) tp_is_empty!29349 (not b!4627336))
(check-sat)
