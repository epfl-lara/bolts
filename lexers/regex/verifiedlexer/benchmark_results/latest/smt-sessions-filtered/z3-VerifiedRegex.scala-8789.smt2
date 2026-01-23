; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470856 () Bool)

(assert start!470856)

(declare-fun b!4669365 () Bool)

(declare-fun e!2913855 () Bool)

(declare-fun e!2913858 () Bool)

(assert (=> b!4669365 (= e!2913855 e!2913858)))

(declare-fun res!1965362 () Bool)

(assert (=> b!4669365 (=> (not res!1965362) (not e!2913858))))

(declare-fun lt!1831481 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4669365 (= res!1965362 (= lt!1831481 hash!414))))

(declare-datatypes ((Hashable!6077 0))(
  ( (HashableExt!6076 (__x!31780 Int)) )
))
(declare-fun hashF!1389 () Hashable!6077)

(declare-datatypes ((K!13350 0))(
  ( (K!13351 (val!18951 Int)) )
))
(declare-fun key!4968 () K!13350)

(declare-fun hash!3851 (Hashable!6077 K!13350) (_ BitVec 64))

(assert (=> b!4669365 (= lt!1831481 (hash!3851 hashF!1389 key!4968))))

(declare-fun b!4669366 () Bool)

(declare-fun res!1965358 () Bool)

(declare-fun e!2913861 () Bool)

(assert (=> b!4669366 (=> res!1965358 e!2913861)))

(declare-datatypes ((V!13596 0))(
  ( (V!13597 (val!18952 Int)) )
))
(declare-datatypes ((tuple2!53166 0))(
  ( (tuple2!53167 (_1!29877 K!13350) (_2!29877 V!13596)) )
))
(declare-datatypes ((List!52132 0))(
  ( (Nil!52008) (Cons!52008 (h!58184 tuple2!53166) (t!359268 List!52132)) )
))
(declare-fun lt!1831464 () List!52132)

(declare-fun oldBucket!40 () List!52132)

(declare-fun removePairForKey!1303 (List!52132 K!13350) List!52132)

(assert (=> b!4669366 (= res!1965358 (not (= (removePairForKey!1303 (t!359268 oldBucket!40) key!4968) lt!1831464)))))

(declare-fun b!4669367 () Bool)

(declare-fun e!2913865 () Bool)

(assert (=> b!4669367 (= e!2913865 e!2913861)))

(declare-fun res!1965360 () Bool)

(assert (=> b!4669367 (=> res!1965360 e!2913861)))

(declare-fun lt!1831471 () List!52132)

(assert (=> b!4669367 (= res!1965360 (not (= (removePairForKey!1303 lt!1831471 key!4968) lt!1831464)))))

(declare-fun newBucket!224 () List!52132)

(declare-fun tail!8283 (List!52132) List!52132)

(assert (=> b!4669367 (= lt!1831464 (tail!8283 newBucket!224))))

(assert (=> b!4669367 (= lt!1831471 (tail!8283 oldBucket!40))))

(declare-fun b!4669368 () Bool)

(declare-fun res!1965364 () Bool)

(declare-fun e!2913856 () Bool)

(assert (=> b!4669368 (=> res!1965364 e!2913856)))

(declare-fun lt!1831469 () tuple2!53166)

(assert (=> b!4669368 (= res!1965364 (not (= lt!1831469 (h!58184 oldBucket!40))))))

(declare-fun b!4669369 () Bool)

(declare-fun e!2913854 () Bool)

(assert (=> b!4669369 (= e!2913861 e!2913854)))

(declare-fun res!1965354 () Bool)

(assert (=> b!4669369 (=> res!1965354 e!2913854)))

(declare-datatypes ((ListMap!4629 0))(
  ( (ListMap!4630 (toList!5289 List!52132)) )
))
(declare-fun lt!1831462 () ListMap!4629)

(declare-fun eq!935 (ListMap!4629 ListMap!4629) Bool)

(declare-fun +!2020 (ListMap!4629 tuple2!53166) ListMap!4629)

(declare-datatypes ((tuple2!53168 0))(
  ( (tuple2!53169 (_1!29878 (_ BitVec 64)) (_2!29878 List!52132)) )
))
(declare-datatypes ((List!52133 0))(
  ( (Nil!52009) (Cons!52009 (h!58185 tuple2!53168) (t!359269 List!52133)) )
))
(declare-fun extractMap!1736 (List!52133) ListMap!4629)

(assert (=> b!4669369 (= res!1965354 (not (eq!935 lt!1831462 (+!2020 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)) (h!58184 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!1137 (List!52132 ListMap!4629) ListMap!4629)

(assert (=> b!4669369 (eq!935 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831469 lt!1831464) (ListMap!4630 Nil!52008)) (+!2020 (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008)) lt!1831469))))

(declare-datatypes ((Unit!120908 0))(
  ( (Unit!120909) )
))
(declare-fun lt!1831482 () Unit!120908)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!186 (tuple2!53166 List!52132 ListMap!4629) Unit!120908)

(assert (=> b!4669369 (= lt!1831482 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!186 lt!1831469 lt!1831464 (ListMap!4630 Nil!52008)))))

(declare-fun head!9758 (List!52132) tuple2!53166)

(assert (=> b!4669369 (= lt!1831469 (head!9758 newBucket!224))))

(declare-fun lt!1831485 () tuple2!53166)

(assert (=> b!4669369 (eq!935 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831485 lt!1831471) (ListMap!4630 Nil!52008)) (+!2020 (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008)) lt!1831485))))

(declare-fun lt!1831490 () Unit!120908)

(assert (=> b!4669369 (= lt!1831490 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!186 lt!1831485 lt!1831471 (ListMap!4630 Nil!52008)))))

(assert (=> b!4669369 (= lt!1831485 (head!9758 oldBucket!40))))

(declare-fun lt!1831483 () ListMap!4629)

(declare-fun contains!15215 (ListMap!4629 K!13350) Bool)

(assert (=> b!4669369 (contains!15215 lt!1831483 key!4968)))

(declare-fun lt!1831487 () List!52133)

(assert (=> b!4669369 (= lt!1831483 (extractMap!1736 lt!1831487))))

(declare-fun lt!1831476 () Unit!120908)

(declare-datatypes ((ListLongMap!3843 0))(
  ( (ListLongMap!3844 (toList!5290 List!52133)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!414 (ListLongMap!3843 K!13350 Hashable!6077) Unit!120908)

(assert (=> b!4669369 (= lt!1831476 (lemmaListContainsThenExtractedMapContains!414 (ListLongMap!3844 lt!1831487) key!4968 hashF!1389))))

(assert (=> b!4669369 (= lt!1831487 (Cons!52009 (tuple2!53169 hash!414 (t!359268 oldBucket!40)) Nil!52009))))

(declare-fun b!4669370 () Bool)

(declare-fun res!1965353 () Bool)

(declare-fun e!2913857 () Bool)

(assert (=> b!4669370 (=> (not res!1965353) (not e!2913857))))

(declare-fun noDuplicateKeys!1680 (List!52132) Bool)

(assert (=> b!4669370 (= res!1965353 (noDuplicateKeys!1680 newBucket!224))))

(declare-fun b!4669371 () Bool)

(declare-fun e!2913860 () Bool)

(assert (=> b!4669371 (= e!2913854 e!2913860)))

(declare-fun res!1965368 () Bool)

(assert (=> b!4669371 (=> res!1965368 e!2913860)))

(declare-fun lt!1831484 () ListMap!4629)

(declare-fun lt!1831474 () ListMap!4629)

(assert (=> b!4669371 (= res!1965368 (not (eq!935 lt!1831474 (+!2020 lt!1831484 lt!1831469))))))

(assert (=> b!4669371 (= lt!1831484 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009)))))

(assert (=> b!4669371 (= lt!1831474 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 newBucket!224) Nil!52009)))))

(declare-fun e!2913862 () Bool)

(declare-fun tp_is_empty!30015 () Bool)

(declare-fun b!4669372 () Bool)

(declare-fun tp_is_empty!30013 () Bool)

(declare-fun tp!1343710 () Bool)

(assert (=> b!4669372 (= e!2913862 (and tp_is_empty!30013 tp_is_empty!30015 tp!1343710))))

(declare-fun b!4669373 () Bool)

(declare-fun e!2913859 () Bool)

(assert (=> b!4669373 (= e!2913860 e!2913859)))

(declare-fun res!1965366 () Bool)

(assert (=> b!4669373 (=> res!1965366 e!2913859)))

(declare-fun lt!1831475 () ListMap!4629)

(declare-fun lt!1831488 () ListMap!4629)

(assert (=> b!4669373 (= res!1965366 (not (= lt!1831475 lt!1831488)))))

(declare-fun lt!1831479 () ListMap!4629)

(assert (=> b!4669373 (= lt!1831488 (+!2020 lt!1831479 (h!58184 oldBucket!40)))))

(declare-fun lt!1831467 () ListMap!4629)

(declare-fun -!620 (ListMap!4629 K!13350) ListMap!4629)

(assert (=> b!4669373 (= lt!1831475 (-!620 lt!1831467 key!4968))))

(assert (=> b!4669373 (= lt!1831467 (+!2020 lt!1831483 (h!58184 oldBucket!40)))))

(assert (=> b!4669373 (= (-!620 (+!2020 lt!1831483 (h!58184 oldBucket!40)) key!4968) (+!2020 lt!1831479 (h!58184 oldBucket!40)))))

(declare-fun lt!1831478 () Unit!120908)

(declare-fun addRemoveCommutativeForDiffKeys!63 (ListMap!4629 K!13350 V!13596 K!13350) Unit!120908)

(assert (=> b!4669373 (= lt!1831478 (addRemoveCommutativeForDiffKeys!63 lt!1831483 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40)) key!4968))))

(assert (=> b!4669373 (eq!935 lt!1831484 lt!1831479)))

(assert (=> b!4669373 (= lt!1831479 (-!620 lt!1831483 key!4968))))

(declare-fun lt!1831472 () Unit!120908)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!170 ((_ BitVec 64) List!52132 List!52132 K!13350 Hashable!6077) Unit!120908)

(assert (=> b!4669373 (= lt!1831472 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!170 hash!414 (t!359268 oldBucket!40) lt!1831464 key!4968 hashF!1389))))

(declare-fun b!4669374 () Bool)

(declare-fun e!2913864 () Bool)

(assert (=> b!4669374 (= e!2913864 e!2913865)))

(declare-fun res!1965367 () Bool)

(assert (=> b!4669374 (=> res!1965367 e!2913865)))

(declare-fun containsKey!2822 (List!52132 K!13350) Bool)

(assert (=> b!4669374 (= res!1965367 (not (containsKey!2822 (t!359268 oldBucket!40) key!4968)))))

(assert (=> b!4669374 (containsKey!2822 oldBucket!40 key!4968)))

(declare-fun lt!1831465 () Unit!120908)

(declare-fun lemmaGetPairDefinedThenContainsKey!158 (List!52132 K!13350 Hashable!6077) Unit!120908)

(assert (=> b!4669374 (= lt!1831465 (lemmaGetPairDefinedThenContainsKey!158 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1831477 () List!52132)

(declare-datatypes ((Option!11920 0))(
  ( (None!11919) (Some!11919 (v!46273 tuple2!53166)) )
))
(declare-fun isDefined!9185 (Option!11920) Bool)

(declare-fun getPair!408 (List!52132 K!13350) Option!11920)

(assert (=> b!4669374 (isDefined!9185 (getPair!408 lt!1831477 key!4968))))

(declare-fun lt!1831480 () List!52133)

(declare-fun lambda!202178 () Int)

(declare-fun lt!1831461 () Unit!120908)

(declare-fun lt!1831468 () tuple2!53168)

(declare-fun forallContained!3306 (List!52133 Int tuple2!53168) Unit!120908)

(assert (=> b!4669374 (= lt!1831461 (forallContained!3306 lt!1831480 lambda!202178 lt!1831468))))

(declare-fun contains!15216 (List!52133 tuple2!53168) Bool)

(assert (=> b!4669374 (contains!15216 lt!1831480 lt!1831468)))

(assert (=> b!4669374 (= lt!1831468 (tuple2!53169 lt!1831481 lt!1831477))))

(declare-fun lt!1831466 () Unit!120908)

(declare-fun lt!1831486 () ListLongMap!3843)

(declare-fun lemmaGetValueImpliesTupleContained!213 (ListLongMap!3843 (_ BitVec 64) List!52132) Unit!120908)

(assert (=> b!4669374 (= lt!1831466 (lemmaGetValueImpliesTupleContained!213 lt!1831486 lt!1831481 lt!1831477))))

(declare-fun apply!12283 (ListLongMap!3843 (_ BitVec 64)) List!52132)

(assert (=> b!4669374 (= lt!1831477 (apply!12283 lt!1831486 lt!1831481))))

(declare-fun contains!15217 (ListLongMap!3843 (_ BitVec 64)) Bool)

(assert (=> b!4669374 (contains!15217 lt!1831486 lt!1831481)))

(declare-fun lt!1831470 () Unit!120908)

(declare-fun lemmaInGenMapThenLongMapContainsHash!614 (ListLongMap!3843 K!13350 Hashable!6077) Unit!120908)

(assert (=> b!4669374 (= lt!1831470 (lemmaInGenMapThenLongMapContainsHash!614 lt!1831486 key!4968 hashF!1389))))

(declare-fun lt!1831473 () Unit!120908)

(declare-fun lemmaInGenMapThenGetPairDefined!204 (ListLongMap!3843 K!13350 Hashable!6077) Unit!120908)

(assert (=> b!4669374 (= lt!1831473 (lemmaInGenMapThenGetPairDefined!204 lt!1831486 key!4968 hashF!1389))))

(assert (=> b!4669374 (= lt!1831486 (ListLongMap!3844 lt!1831480))))

(declare-fun tp!1343711 () Bool)

(declare-fun e!2913866 () Bool)

(declare-fun b!4669375 () Bool)

(assert (=> b!4669375 (= e!2913866 (and tp_is_empty!30013 tp_is_empty!30015 tp!1343711))))

(declare-fun b!4669376 () Bool)

(declare-fun res!1965351 () Bool)

(assert (=> b!4669376 (=> (not res!1965351) (not e!2913858))))

(declare-fun allKeysSameHash!1534 (List!52132 (_ BitVec 64) Hashable!6077) Bool)

(assert (=> b!4669376 (= res!1965351 (allKeysSameHash!1534 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4669377 () Bool)

(declare-fun res!1965355 () Bool)

(assert (=> b!4669377 (=> res!1965355 e!2913856)))

(assert (=> b!4669377 (= res!1965355 (not (eq!935 lt!1831474 (+!2020 lt!1831484 (h!58184 oldBucket!40)))))))

(declare-fun b!4669378 () Bool)

(assert (=> b!4669378 (= e!2913856 (eq!935 lt!1831479 lt!1831484))))

(declare-fun b!4669379 () Bool)

(assert (=> b!4669379 (= e!2913858 (not e!2913864))))

(declare-fun res!1965359 () Bool)

(assert (=> b!4669379 (=> res!1965359 e!2913864)))

(get-info :version)

(assert (=> b!4669379 (= res!1965359 (or (and ((_ is Cons!52008) oldBucket!40) (= (_1!29877 (h!58184 oldBucket!40)) key!4968)) (not ((_ is Cons!52008) oldBucket!40)) (= (_1!29877 (h!58184 oldBucket!40)) key!4968)))))

(declare-fun e!2913863 () Bool)

(assert (=> b!4669379 e!2913863))

(declare-fun res!1965361 () Bool)

(assert (=> b!4669379 (=> (not res!1965361) (not e!2913863))))

(declare-fun lt!1831491 () ListMap!4629)

(assert (=> b!4669379 (= res!1965361 (= lt!1831462 (addToMapMapFromBucket!1137 oldBucket!40 lt!1831491)))))

(assert (=> b!4669379 (= lt!1831491 (extractMap!1736 Nil!52009))))

(assert (=> b!4669379 true))

(declare-fun b!4669380 () Bool)

(assert (=> b!4669380 (= e!2913859 e!2913856)))

(declare-fun res!1965365 () Bool)

(assert (=> b!4669380 (=> res!1965365 e!2913856)))

(declare-fun lt!1831489 () ListMap!4629)

(assert (=> b!4669380 (= res!1965365 (not (eq!935 lt!1831489 lt!1831488)))))

(assert (=> b!4669380 (eq!935 lt!1831475 lt!1831489)))

(assert (=> b!4669380 (= lt!1831489 (-!620 lt!1831462 key!4968))))

(declare-fun lt!1831463 () Unit!120908)

(declare-fun lemmaRemovePreservesEq!66 (ListMap!4629 ListMap!4629 K!13350) Unit!120908)

(assert (=> b!4669380 (= lt!1831463 (lemmaRemovePreservesEq!66 lt!1831467 lt!1831462 key!4968))))

(declare-fun b!4669381 () Bool)

(declare-fun res!1965363 () Bool)

(assert (=> b!4669381 (=> (not res!1965363) (not e!2913857))))

(assert (=> b!4669381 (= res!1965363 (allKeysSameHash!1534 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4669382 () Bool)

(assert (=> b!4669382 (= e!2913857 e!2913855)))

(declare-fun res!1965352 () Bool)

(assert (=> b!4669382 (=> (not res!1965352) (not e!2913855))))

(assert (=> b!4669382 (= res!1965352 (contains!15215 lt!1831462 key!4968))))

(assert (=> b!4669382 (= lt!1831462 (extractMap!1736 lt!1831480))))

(assert (=> b!4669382 (= lt!1831480 (Cons!52009 (tuple2!53169 hash!414 oldBucket!40) Nil!52009))))

(declare-fun b!4669383 () Bool)

(assert (=> b!4669383 (= e!2913863 (= lt!1831491 (ListMap!4630 Nil!52008)))))

(declare-fun b!4669384 () Bool)

(declare-fun res!1965356 () Bool)

(assert (=> b!4669384 (=> (not res!1965356) (not e!2913857))))

(assert (=> b!4669384 (= res!1965356 (= (removePairForKey!1303 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1965357 () Bool)

(assert (=> start!470856 (=> (not res!1965357) (not e!2913857))))

(assert (=> start!470856 (= res!1965357 (noDuplicateKeys!1680 oldBucket!40))))

(assert (=> start!470856 e!2913857))

(assert (=> start!470856 true))

(assert (=> start!470856 e!2913862))

(assert (=> start!470856 tp_is_empty!30013))

(assert (=> start!470856 e!2913866))

(assert (= (and start!470856 res!1965357) b!4669370))

(assert (= (and b!4669370 res!1965353) b!4669384))

(assert (= (and b!4669384 res!1965356) b!4669381))

(assert (= (and b!4669381 res!1965363) b!4669382))

(assert (= (and b!4669382 res!1965352) b!4669365))

(assert (= (and b!4669365 res!1965362) b!4669376))

(assert (= (and b!4669376 res!1965351) b!4669379))

(assert (= (and b!4669379 res!1965361) b!4669383))

(assert (= (and b!4669379 (not res!1965359)) b!4669374))

(assert (= (and b!4669374 (not res!1965367)) b!4669367))

(assert (= (and b!4669367 (not res!1965360)) b!4669366))

(assert (= (and b!4669366 (not res!1965358)) b!4669369))

(assert (= (and b!4669369 (not res!1965354)) b!4669371))

(assert (= (and b!4669371 (not res!1965368)) b!4669373))

(assert (= (and b!4669373 (not res!1965366)) b!4669380))

(assert (= (and b!4669380 (not res!1965365)) b!4669368))

(assert (= (and b!4669368 (not res!1965364)) b!4669377))

(assert (= (and b!4669377 (not res!1965355)) b!4669378))

(assert (= (and start!470856 ((_ is Cons!52008) oldBucket!40)) b!4669372))

(assert (= (and start!470856 ((_ is Cons!52008) newBucket!224)) b!4669375))

(declare-fun m!5561525 () Bool)

(assert (=> b!4669365 m!5561525))

(declare-fun m!5561527 () Bool)

(assert (=> b!4669384 m!5561527))

(declare-fun m!5561529 () Bool)

(assert (=> b!4669382 m!5561529))

(declare-fun m!5561531 () Bool)

(assert (=> b!4669382 m!5561531))

(declare-fun m!5561533 () Bool)

(assert (=> b!4669378 m!5561533))

(declare-fun m!5561535 () Bool)

(assert (=> b!4669366 m!5561535))

(declare-fun m!5561537 () Bool)

(assert (=> b!4669371 m!5561537))

(assert (=> b!4669371 m!5561537))

(declare-fun m!5561539 () Bool)

(assert (=> b!4669371 m!5561539))

(declare-fun m!5561541 () Bool)

(assert (=> b!4669371 m!5561541))

(declare-fun m!5561543 () Bool)

(assert (=> b!4669371 m!5561543))

(declare-fun m!5561545 () Bool)

(assert (=> b!4669370 m!5561545))

(declare-fun m!5561547 () Bool)

(assert (=> b!4669367 m!5561547))

(declare-fun m!5561549 () Bool)

(assert (=> b!4669367 m!5561549))

(declare-fun m!5561551 () Bool)

(assert (=> b!4669367 m!5561551))

(declare-fun m!5561553 () Bool)

(assert (=> b!4669380 m!5561553))

(declare-fun m!5561555 () Bool)

(assert (=> b!4669380 m!5561555))

(declare-fun m!5561557 () Bool)

(assert (=> b!4669380 m!5561557))

(declare-fun m!5561559 () Bool)

(assert (=> b!4669380 m!5561559))

(declare-fun m!5561561 () Bool)

(assert (=> b!4669374 m!5561561))

(declare-fun m!5561563 () Bool)

(assert (=> b!4669374 m!5561563))

(declare-fun m!5561565 () Bool)

(assert (=> b!4669374 m!5561565))

(declare-fun m!5561567 () Bool)

(assert (=> b!4669374 m!5561567))

(declare-fun m!5561569 () Bool)

(assert (=> b!4669374 m!5561569))

(declare-fun m!5561571 () Bool)

(assert (=> b!4669374 m!5561571))

(assert (=> b!4669374 m!5561571))

(declare-fun m!5561573 () Bool)

(assert (=> b!4669374 m!5561573))

(declare-fun m!5561575 () Bool)

(assert (=> b!4669374 m!5561575))

(declare-fun m!5561577 () Bool)

(assert (=> b!4669374 m!5561577))

(declare-fun m!5561579 () Bool)

(assert (=> b!4669374 m!5561579))

(declare-fun m!5561581 () Bool)

(assert (=> b!4669374 m!5561581))

(declare-fun m!5561583 () Bool)

(assert (=> b!4669374 m!5561583))

(declare-fun m!5561585 () Bool)

(assert (=> b!4669373 m!5561585))

(declare-fun m!5561587 () Bool)

(assert (=> b!4669373 m!5561587))

(declare-fun m!5561589 () Bool)

(assert (=> b!4669373 m!5561589))

(declare-fun m!5561591 () Bool)

(assert (=> b!4669373 m!5561591))

(declare-fun m!5561593 () Bool)

(assert (=> b!4669373 m!5561593))

(declare-fun m!5561595 () Bool)

(assert (=> b!4669373 m!5561595))

(declare-fun m!5561597 () Bool)

(assert (=> b!4669373 m!5561597))

(assert (=> b!4669373 m!5561589))

(declare-fun m!5561599 () Bool)

(assert (=> b!4669373 m!5561599))

(declare-fun m!5561601 () Bool)

(assert (=> start!470856 m!5561601))

(declare-fun m!5561603 () Bool)

(assert (=> b!4669379 m!5561603))

(declare-fun m!5561605 () Bool)

(assert (=> b!4669379 m!5561605))

(declare-fun m!5561607 () Bool)

(assert (=> b!4669369 m!5561607))

(declare-fun m!5561609 () Bool)

(assert (=> b!4669369 m!5561609))

(declare-fun m!5561611 () Bool)

(assert (=> b!4669369 m!5561611))

(declare-fun m!5561613 () Bool)

(assert (=> b!4669369 m!5561613))

(declare-fun m!5561615 () Bool)

(assert (=> b!4669369 m!5561615))

(declare-fun m!5561617 () Bool)

(assert (=> b!4669369 m!5561617))

(declare-fun m!5561619 () Bool)

(assert (=> b!4669369 m!5561619))

(assert (=> b!4669369 m!5561607))

(declare-fun m!5561621 () Bool)

(assert (=> b!4669369 m!5561621))

(declare-fun m!5561623 () Bool)

(assert (=> b!4669369 m!5561623))

(declare-fun m!5561625 () Bool)

(assert (=> b!4669369 m!5561625))

(assert (=> b!4669369 m!5561621))

(declare-fun m!5561627 () Bool)

(assert (=> b!4669369 m!5561627))

(assert (=> b!4669369 m!5561625))

(declare-fun m!5561629 () Bool)

(assert (=> b!4669369 m!5561629))

(assert (=> b!4669369 m!5561609))

(declare-fun m!5561631 () Bool)

(assert (=> b!4669369 m!5561631))

(declare-fun m!5561633 () Bool)

(assert (=> b!4669369 m!5561633))

(declare-fun m!5561635 () Bool)

(assert (=> b!4669369 m!5561635))

(assert (=> b!4669369 m!5561633))

(declare-fun m!5561637 () Bool)

(assert (=> b!4669369 m!5561637))

(assert (=> b!4669369 m!5561629))

(assert (=> b!4669369 m!5561635))

(declare-fun m!5561639 () Bool)

(assert (=> b!4669369 m!5561639))

(assert (=> b!4669369 m!5561631))

(declare-fun m!5561641 () Bool)

(assert (=> b!4669369 m!5561641))

(declare-fun m!5561643 () Bool)

(assert (=> b!4669376 m!5561643))

(declare-fun m!5561645 () Bool)

(assert (=> b!4669381 m!5561645))

(declare-fun m!5561647 () Bool)

(assert (=> b!4669377 m!5561647))

(assert (=> b!4669377 m!5561647))

(declare-fun m!5561649 () Bool)

(assert (=> b!4669377 m!5561649))

(check-sat (not b!4669369) (not b!4669382) (not b!4669378) (not b!4669377) (not b!4669371) tp_is_empty!30015 (not b!4669379) (not b!4669372) (not start!470856) (not b!4669374) (not b!4669373) (not b!4669384) (not b!4669380) (not b!4669381) (not b!4669365) (not b!4669376) (not b!4669375) tp_is_empty!30013 (not b!4669367) (not b!4669366) (not b!4669370))
(check-sat)
(get-model)

(declare-fun d!1484764 () Bool)

(declare-fun e!2913875 () Bool)

(assert (=> d!1484764 e!2913875))

(declare-fun res!1965373 () Bool)

(assert (=> d!1484764 (=> (not res!1965373) (not e!2913875))))

(declare-fun lt!1831505 () ListMap!4629)

(assert (=> d!1484764 (= res!1965373 (contains!15215 lt!1831505 (_1!29877 (h!58184 oldBucket!40))))))

(declare-fun lt!1831503 () List!52132)

(assert (=> d!1484764 (= lt!1831505 (ListMap!4630 lt!1831503))))

(declare-fun lt!1831506 () Unit!120908)

(declare-fun lt!1831504 () Unit!120908)

(assert (=> d!1484764 (= lt!1831506 lt!1831504)))

(declare-datatypes ((Option!11922 0))(
  ( (None!11921) (Some!11921 (v!46279 V!13596)) )
))
(declare-fun getValueByKey!1672 (List!52132 K!13350) Option!11922)

(assert (=> d!1484764 (= (getValueByKey!1672 lt!1831503 (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!948 (List!52132 K!13350 V!13596) Unit!120908)

(assert (=> d!1484764 (= lt!1831504 (lemmaContainsTupThenGetReturnValue!948 lt!1831503 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!456 (List!52132 K!13350 V!13596) List!52132)

(assert (=> d!1484764 (= lt!1831503 (insertNoDuplicatedKeys!456 (toList!5289 lt!1831483) (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484764 (= (+!2020 lt!1831483 (h!58184 oldBucket!40)) lt!1831505)))

(declare-fun b!4669401 () Bool)

(declare-fun res!1965374 () Bool)

(assert (=> b!4669401 (=> (not res!1965374) (not e!2913875))))

(assert (=> b!4669401 (= res!1965374 (= (getValueByKey!1672 (toList!5289 lt!1831505) (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40)))))))

(declare-fun b!4669402 () Bool)

(declare-fun contains!15220 (List!52132 tuple2!53166) Bool)

(assert (=> b!4669402 (= e!2913875 (contains!15220 (toList!5289 lt!1831505) (h!58184 oldBucket!40)))))

(assert (= (and d!1484764 res!1965373) b!4669401))

(assert (= (and b!4669401 res!1965374) b!4669402))

(declare-fun m!5561653 () Bool)

(assert (=> d!1484764 m!5561653))

(declare-fun m!5561655 () Bool)

(assert (=> d!1484764 m!5561655))

(declare-fun m!5561657 () Bool)

(assert (=> d!1484764 m!5561657))

(declare-fun m!5561659 () Bool)

(assert (=> d!1484764 m!5561659))

(declare-fun m!5561661 () Bool)

(assert (=> b!4669401 m!5561661))

(declare-fun m!5561663 () Bool)

(assert (=> b!4669402 m!5561663))

(assert (=> b!4669373 d!1484764))

(declare-fun d!1484766 () Bool)

(assert (=> d!1484766 (= (-!620 (+!2020 lt!1831483 (tuple2!53167 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40)))) key!4968) (+!2020 (-!620 lt!1831483 key!4968) (tuple2!53167 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40)))))))

(declare-fun lt!1831509 () Unit!120908)

(declare-fun choose!32295 (ListMap!4629 K!13350 V!13596 K!13350) Unit!120908)

(assert (=> d!1484766 (= lt!1831509 (choose!32295 lt!1831483 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40)) key!4968))))

(assert (=> d!1484766 (not (= (_1!29877 (h!58184 oldBucket!40)) key!4968))))

(assert (=> d!1484766 (= (addRemoveCommutativeForDiffKeys!63 lt!1831483 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40)) key!4968) lt!1831509)))

(declare-fun bs!1078173 () Bool)

(assert (= bs!1078173 d!1484766))

(assert (=> bs!1078173 m!5561597))

(declare-fun m!5561665 () Bool)

(assert (=> bs!1078173 m!5561665))

(declare-fun m!5561667 () Bool)

(assert (=> bs!1078173 m!5561667))

(assert (=> bs!1078173 m!5561597))

(declare-fun m!5561669 () Bool)

(assert (=> bs!1078173 m!5561669))

(assert (=> bs!1078173 m!5561669))

(declare-fun m!5561671 () Bool)

(assert (=> bs!1078173 m!5561671))

(assert (=> b!4669373 d!1484766))

(declare-fun d!1484768 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9064 (List!52132) (InoxSet tuple2!53166))

(assert (=> d!1484768 (= (eq!935 lt!1831484 lt!1831479) (= (content!9064 (toList!5289 lt!1831484)) (content!9064 (toList!5289 lt!1831479))))))

(declare-fun bs!1078174 () Bool)

(assert (= bs!1078174 d!1484768))

(declare-fun m!5561673 () Bool)

(assert (=> bs!1078174 m!5561673))

(declare-fun m!5561675 () Bool)

(assert (=> bs!1078174 m!5561675))

(assert (=> b!4669373 d!1484768))

(declare-fun d!1484770 () Bool)

(declare-fun e!2913882 () Bool)

(assert (=> d!1484770 e!2913882))

(declare-fun res!1965379 () Bool)

(assert (=> d!1484770 (=> (not res!1965379) (not e!2913882))))

(declare-fun lt!1831554 () ListMap!4629)

(assert (=> d!1484770 (= res!1965379 (not (contains!15215 lt!1831554 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!309 (List!52132 K!13350) List!52132)

(assert (=> d!1484770 (= lt!1831554 (ListMap!4630 (removePresrvNoDuplicatedKeys!309 (toList!5289 lt!1831467) key!4968)))))

(assert (=> d!1484770 (= (-!620 lt!1831467 key!4968) lt!1831554)))

(declare-fun b!4669409 () Bool)

(declare-datatypes ((List!52135 0))(
  ( (Nil!52011) (Cons!52011 (h!58189 K!13350) (t!359273 List!52135)) )
))
(declare-fun content!9065 (List!52135) (InoxSet K!13350))

(declare-fun keys!18460 (ListMap!4629) List!52135)

(assert (=> b!4669409 (= e!2913882 (= ((_ map and) (content!9065 (keys!18460 lt!1831467)) ((_ map not) (store ((as const (Array K!13350 Bool)) false) key!4968 true))) (content!9065 (keys!18460 lt!1831554))))))

(assert (= (and d!1484770 res!1965379) b!4669409))

(declare-fun m!5561677 () Bool)

(assert (=> d!1484770 m!5561677))

(declare-fun m!5561679 () Bool)

(assert (=> d!1484770 m!5561679))

(declare-fun m!5561681 () Bool)

(assert (=> b!4669409 m!5561681))

(declare-fun m!5561683 () Bool)

(assert (=> b!4669409 m!5561683))

(declare-fun m!5561685 () Bool)

(assert (=> b!4669409 m!5561685))

(declare-fun m!5561687 () Bool)

(assert (=> b!4669409 m!5561687))

(assert (=> b!4669409 m!5561681))

(assert (=> b!4669409 m!5561687))

(declare-fun m!5561689 () Bool)

(assert (=> b!4669409 m!5561689))

(assert (=> b!4669373 d!1484770))

(declare-fun d!1484772 () Bool)

(assert (=> d!1484772 (eq!935 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009)) (-!620 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 (t!359268 oldBucket!40)) Nil!52009)) key!4968))))

(declare-fun lt!1831581 () Unit!120908)

(declare-fun choose!32296 ((_ BitVec 64) List!52132 List!52132 K!13350 Hashable!6077) Unit!120908)

(assert (=> d!1484772 (= lt!1831581 (choose!32296 hash!414 (t!359268 oldBucket!40) lt!1831464 key!4968 hashF!1389))))

(assert (=> d!1484772 (noDuplicateKeys!1680 (t!359268 oldBucket!40))))

(assert (=> d!1484772 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!170 hash!414 (t!359268 oldBucket!40) lt!1831464 key!4968 hashF!1389) lt!1831581)))

(declare-fun bs!1078184 () Bool)

(assert (= bs!1078184 d!1484772))

(declare-fun m!5561741 () Bool)

(assert (=> bs!1078184 m!5561741))

(assert (=> bs!1078184 m!5561541))

(declare-fun m!5561743 () Bool)

(assert (=> bs!1078184 m!5561743))

(declare-fun m!5561745 () Bool)

(assert (=> bs!1078184 m!5561745))

(assert (=> bs!1078184 m!5561541))

(declare-fun m!5561749 () Bool)

(assert (=> bs!1078184 m!5561749))

(assert (=> bs!1078184 m!5561743))

(declare-fun m!5561751 () Bool)

(assert (=> bs!1078184 m!5561751))

(assert (=> bs!1078184 m!5561749))

(assert (=> b!4669373 d!1484772))

(declare-fun d!1484784 () Bool)

(declare-fun e!2913893 () Bool)

(assert (=> d!1484784 e!2913893))

(declare-fun res!1965387 () Bool)

(assert (=> d!1484784 (=> (not res!1965387) (not e!2913893))))

(declare-fun lt!1831583 () ListMap!4629)

(assert (=> d!1484784 (= res!1965387 (not (contains!15215 lt!1831583 key!4968)))))

(assert (=> d!1484784 (= lt!1831583 (ListMap!4630 (removePresrvNoDuplicatedKeys!309 (toList!5289 (+!2020 lt!1831483 (h!58184 oldBucket!40))) key!4968)))))

(assert (=> d!1484784 (= (-!620 (+!2020 lt!1831483 (h!58184 oldBucket!40)) key!4968) lt!1831583)))

(declare-fun b!4669437 () Bool)

(assert (=> b!4669437 (= e!2913893 (= ((_ map and) (content!9065 (keys!18460 (+!2020 lt!1831483 (h!58184 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13350 Bool)) false) key!4968 true))) (content!9065 (keys!18460 lt!1831583))))))

(assert (= (and d!1484784 res!1965387) b!4669437))

(declare-fun m!5561753 () Bool)

(assert (=> d!1484784 m!5561753))

(declare-fun m!5561755 () Bool)

(assert (=> d!1484784 m!5561755))

(declare-fun m!5561757 () Bool)

(assert (=> b!4669437 m!5561757))

(declare-fun m!5561759 () Bool)

(assert (=> b!4669437 m!5561759))

(assert (=> b!4669437 m!5561685))

(declare-fun m!5561761 () Bool)

(assert (=> b!4669437 m!5561761))

(assert (=> b!4669437 m!5561589))

(assert (=> b!4669437 m!5561757))

(assert (=> b!4669437 m!5561761))

(declare-fun m!5561763 () Bool)

(assert (=> b!4669437 m!5561763))

(assert (=> b!4669373 d!1484784))

(declare-fun d!1484786 () Bool)

(declare-fun e!2913894 () Bool)

(assert (=> d!1484786 e!2913894))

(declare-fun res!1965388 () Bool)

(assert (=> d!1484786 (=> (not res!1965388) (not e!2913894))))

(declare-fun lt!1831586 () ListMap!4629)

(assert (=> d!1484786 (= res!1965388 (contains!15215 lt!1831586 (_1!29877 (h!58184 oldBucket!40))))))

(declare-fun lt!1831584 () List!52132)

(assert (=> d!1484786 (= lt!1831586 (ListMap!4630 lt!1831584))))

(declare-fun lt!1831587 () Unit!120908)

(declare-fun lt!1831585 () Unit!120908)

(assert (=> d!1484786 (= lt!1831587 lt!1831585)))

(assert (=> d!1484786 (= (getValueByKey!1672 lt!1831584 (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484786 (= lt!1831585 (lemmaContainsTupThenGetReturnValue!948 lt!1831584 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484786 (= lt!1831584 (insertNoDuplicatedKeys!456 (toList!5289 lt!1831479) (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484786 (= (+!2020 lt!1831479 (h!58184 oldBucket!40)) lt!1831586)))

(declare-fun b!4669438 () Bool)

(declare-fun res!1965389 () Bool)

(assert (=> b!4669438 (=> (not res!1965389) (not e!2913894))))

(assert (=> b!4669438 (= res!1965389 (= (getValueByKey!1672 (toList!5289 lt!1831586) (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40)))))))

(declare-fun b!4669439 () Bool)

(assert (=> b!4669439 (= e!2913894 (contains!15220 (toList!5289 lt!1831586) (h!58184 oldBucket!40)))))

(assert (= (and d!1484786 res!1965388) b!4669438))

(assert (= (and b!4669438 res!1965389) b!4669439))

(declare-fun m!5561765 () Bool)

(assert (=> d!1484786 m!5561765))

(declare-fun m!5561767 () Bool)

(assert (=> d!1484786 m!5561767))

(declare-fun m!5561769 () Bool)

(assert (=> d!1484786 m!5561769))

(declare-fun m!5561771 () Bool)

(assert (=> d!1484786 m!5561771))

(declare-fun m!5561773 () Bool)

(assert (=> b!4669438 m!5561773))

(declare-fun m!5561775 () Bool)

(assert (=> b!4669439 m!5561775))

(assert (=> b!4669373 d!1484786))

(declare-fun d!1484788 () Bool)

(declare-fun e!2913895 () Bool)

(assert (=> d!1484788 e!2913895))

(declare-fun res!1965390 () Bool)

(assert (=> d!1484788 (=> (not res!1965390) (not e!2913895))))

(declare-fun lt!1831588 () ListMap!4629)

(assert (=> d!1484788 (= res!1965390 (not (contains!15215 lt!1831588 key!4968)))))

(assert (=> d!1484788 (= lt!1831588 (ListMap!4630 (removePresrvNoDuplicatedKeys!309 (toList!5289 lt!1831483) key!4968)))))

(assert (=> d!1484788 (= (-!620 lt!1831483 key!4968) lt!1831588)))

(declare-fun b!4669440 () Bool)

(assert (=> b!4669440 (= e!2913895 (= ((_ map and) (content!9065 (keys!18460 lt!1831483)) ((_ map not) (store ((as const (Array K!13350 Bool)) false) key!4968 true))) (content!9065 (keys!18460 lt!1831588))))))

(assert (= (and d!1484788 res!1965390) b!4669440))

(declare-fun m!5561777 () Bool)

(assert (=> d!1484788 m!5561777))

(declare-fun m!5561779 () Bool)

(assert (=> d!1484788 m!5561779))

(declare-fun m!5561781 () Bool)

(assert (=> b!4669440 m!5561781))

(declare-fun m!5561783 () Bool)

(assert (=> b!4669440 m!5561783))

(assert (=> b!4669440 m!5561685))

(declare-fun m!5561785 () Bool)

(assert (=> b!4669440 m!5561785))

(assert (=> b!4669440 m!5561781))

(assert (=> b!4669440 m!5561785))

(declare-fun m!5561787 () Bool)

(assert (=> b!4669440 m!5561787))

(assert (=> b!4669373 d!1484788))

(declare-fun d!1484790 () Bool)

(declare-fun e!2913900 () Bool)

(assert (=> d!1484790 e!2913900))

(declare-fun res!1965393 () Bool)

(assert (=> d!1484790 (=> res!1965393 e!2913900)))

(declare-fun lt!1831603 () Bool)

(assert (=> d!1484790 (= res!1965393 (not lt!1831603))))

(declare-fun lt!1831601 () Bool)

(assert (=> d!1484790 (= lt!1831603 lt!1831601)))

(declare-fun lt!1831600 () Unit!120908)

(declare-fun e!2913901 () Unit!120908)

(assert (=> d!1484790 (= lt!1831600 e!2913901)))

(declare-fun c!799455 () Bool)

(assert (=> d!1484790 (= c!799455 lt!1831601)))

(declare-fun containsKey!2824 (List!52133 (_ BitVec 64)) Bool)

(assert (=> d!1484790 (= lt!1831601 (containsKey!2824 (toList!5290 lt!1831486) lt!1831481))))

(assert (=> d!1484790 (= (contains!15217 lt!1831486 lt!1831481) lt!1831603)))

(declare-fun b!4669447 () Bool)

(declare-fun lt!1831602 () Unit!120908)

(assert (=> b!4669447 (= e!2913901 lt!1831602)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1574 (List!52133 (_ BitVec 64)) Unit!120908)

(assert (=> b!4669447 (= lt!1831602 (lemmaContainsKeyImpliesGetValueByKeyDefined!1574 (toList!5290 lt!1831486) lt!1831481))))

(declare-datatypes ((Option!11923 0))(
  ( (None!11922) (Some!11922 (v!46280 List!52132)) )
))
(declare-fun isDefined!9187 (Option!11923) Bool)

(declare-fun getValueByKey!1673 (List!52133 (_ BitVec 64)) Option!11923)

(assert (=> b!4669447 (isDefined!9187 (getValueByKey!1673 (toList!5290 lt!1831486) lt!1831481))))

(declare-fun b!4669448 () Bool)

(declare-fun Unit!120923 () Unit!120908)

(assert (=> b!4669448 (= e!2913901 Unit!120923)))

(declare-fun b!4669449 () Bool)

(assert (=> b!4669449 (= e!2913900 (isDefined!9187 (getValueByKey!1673 (toList!5290 lt!1831486) lt!1831481)))))

(assert (= (and d!1484790 c!799455) b!4669447))

(assert (= (and d!1484790 (not c!799455)) b!4669448))

(assert (= (and d!1484790 (not res!1965393)) b!4669449))

(declare-fun m!5561797 () Bool)

(assert (=> d!1484790 m!5561797))

(declare-fun m!5561799 () Bool)

(assert (=> b!4669447 m!5561799))

(declare-fun m!5561801 () Bool)

(assert (=> b!4669447 m!5561801))

(assert (=> b!4669447 m!5561801))

(declare-fun m!5561803 () Bool)

(assert (=> b!4669447 m!5561803))

(assert (=> b!4669449 m!5561801))

(assert (=> b!4669449 m!5561801))

(assert (=> b!4669449 m!5561803))

(assert (=> b!4669374 d!1484790))

(declare-fun d!1484794 () Bool)

(assert (=> d!1484794 (containsKey!2822 oldBucket!40 key!4968)))

(declare-fun lt!1831608 () Unit!120908)

(declare-fun choose!32299 (List!52132 K!13350 Hashable!6077) Unit!120908)

(assert (=> d!1484794 (= lt!1831608 (choose!32299 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1484794 (noDuplicateKeys!1680 oldBucket!40)))

(assert (=> d!1484794 (= (lemmaGetPairDefinedThenContainsKey!158 oldBucket!40 key!4968 hashF!1389) lt!1831608)))

(declare-fun bs!1078190 () Bool)

(assert (= bs!1078190 d!1484794))

(assert (=> bs!1078190 m!5561565))

(declare-fun m!5561805 () Bool)

(assert (=> bs!1078190 m!5561805))

(assert (=> bs!1078190 m!5561601))

(assert (=> b!4669374 d!1484794))

(declare-fun d!1484796 () Bool)

(declare-fun res!1965401 () Bool)

(declare-fun e!2913909 () Bool)

(assert (=> d!1484796 (=> res!1965401 e!2913909)))

(assert (=> d!1484796 (= res!1965401 (and ((_ is Cons!52008) (t!359268 oldBucket!40)) (= (_1!29877 (h!58184 (t!359268 oldBucket!40))) key!4968)))))

(assert (=> d!1484796 (= (containsKey!2822 (t!359268 oldBucket!40) key!4968) e!2913909)))

(declare-fun b!4669457 () Bool)

(declare-fun e!2913910 () Bool)

(assert (=> b!4669457 (= e!2913909 e!2913910)))

(declare-fun res!1965402 () Bool)

(assert (=> b!4669457 (=> (not res!1965402) (not e!2913910))))

(assert (=> b!4669457 (= res!1965402 ((_ is Cons!52008) (t!359268 oldBucket!40)))))

(declare-fun b!4669458 () Bool)

(assert (=> b!4669458 (= e!2913910 (containsKey!2822 (t!359268 (t!359268 oldBucket!40)) key!4968))))

(assert (= (and d!1484796 (not res!1965401)) b!4669457))

(assert (= (and b!4669457 res!1965402) b!4669458))

(declare-fun m!5561821 () Bool)

(assert (=> b!4669458 m!5561821))

(assert (=> b!4669374 d!1484796))

(declare-fun bs!1078192 () Bool)

(declare-fun d!1484800 () Bool)

(assert (= bs!1078192 (and d!1484800 b!4669374)))

(declare-fun lambda!202220 () Int)

(assert (=> bs!1078192 (= lambda!202220 lambda!202178)))

(assert (=> d!1484800 (contains!15217 lt!1831486 (hash!3851 hashF!1389 key!4968))))

(declare-fun lt!1831616 () Unit!120908)

(declare-fun choose!32300 (ListLongMap!3843 K!13350 Hashable!6077) Unit!120908)

(assert (=> d!1484800 (= lt!1831616 (choose!32300 lt!1831486 key!4968 hashF!1389))))

(declare-fun forall!11103 (List!52133 Int) Bool)

(assert (=> d!1484800 (forall!11103 (toList!5290 lt!1831486) lambda!202220)))

(assert (=> d!1484800 (= (lemmaInGenMapThenLongMapContainsHash!614 lt!1831486 key!4968 hashF!1389) lt!1831616)))

(declare-fun bs!1078193 () Bool)

(assert (= bs!1078193 d!1484800))

(assert (=> bs!1078193 m!5561525))

(assert (=> bs!1078193 m!5561525))

(declare-fun m!5561843 () Bool)

(assert (=> bs!1078193 m!5561843))

(declare-fun m!5561845 () Bool)

(assert (=> bs!1078193 m!5561845))

(declare-fun m!5561847 () Bool)

(assert (=> bs!1078193 m!5561847))

(assert (=> b!4669374 d!1484800))

(declare-fun b!4669493 () Bool)

(declare-fun e!2913938 () Option!11920)

(declare-fun e!2913935 () Option!11920)

(assert (=> b!4669493 (= e!2913938 e!2913935)))

(declare-fun c!799460 () Bool)

(assert (=> b!4669493 (= c!799460 ((_ is Cons!52008) lt!1831477))))

(declare-fun d!1484806 () Bool)

(declare-fun e!2913937 () Bool)

(assert (=> d!1484806 e!2913937))

(declare-fun res!1965429 () Bool)

(assert (=> d!1484806 (=> res!1965429 e!2913937)))

(declare-fun e!2913934 () Bool)

(assert (=> d!1484806 (= res!1965429 e!2913934)))

(declare-fun res!1965432 () Bool)

(assert (=> d!1484806 (=> (not res!1965432) (not e!2913934))))

(declare-fun lt!1831640 () Option!11920)

(declare-fun isEmpty!29056 (Option!11920) Bool)

(assert (=> d!1484806 (= res!1965432 (isEmpty!29056 lt!1831640))))

(assert (=> d!1484806 (= lt!1831640 e!2913938)))

(declare-fun c!799461 () Bool)

(assert (=> d!1484806 (= c!799461 (and ((_ is Cons!52008) lt!1831477) (= (_1!29877 (h!58184 lt!1831477)) key!4968)))))

(assert (=> d!1484806 (noDuplicateKeys!1680 lt!1831477)))

(assert (=> d!1484806 (= (getPair!408 lt!1831477 key!4968) lt!1831640)))

(declare-fun b!4669494 () Bool)

(declare-fun e!2913936 () Bool)

(declare-fun get!17349 (Option!11920) tuple2!53166)

(assert (=> b!4669494 (= e!2913936 (contains!15220 lt!1831477 (get!17349 lt!1831640)))))

(declare-fun b!4669495 () Bool)

(declare-fun res!1965430 () Bool)

(assert (=> b!4669495 (=> (not res!1965430) (not e!2913936))))

(assert (=> b!4669495 (= res!1965430 (= (_1!29877 (get!17349 lt!1831640)) key!4968))))

(declare-fun b!4669496 () Bool)

(assert (=> b!4669496 (= e!2913935 (getPair!408 (t!359268 lt!1831477) key!4968))))

(declare-fun b!4669497 () Bool)

(assert (=> b!4669497 (= e!2913934 (not (containsKey!2822 lt!1831477 key!4968)))))

(declare-fun b!4669498 () Bool)

(assert (=> b!4669498 (= e!2913937 e!2913936)))

(declare-fun res!1965431 () Bool)

(assert (=> b!4669498 (=> (not res!1965431) (not e!2913936))))

(assert (=> b!4669498 (= res!1965431 (isDefined!9185 lt!1831640))))

(declare-fun b!4669499 () Bool)

(assert (=> b!4669499 (= e!2913935 None!11919)))

(declare-fun b!4669500 () Bool)

(assert (=> b!4669500 (= e!2913938 (Some!11919 (h!58184 lt!1831477)))))

(assert (= (and d!1484806 c!799461) b!4669500))

(assert (= (and d!1484806 (not c!799461)) b!4669493))

(assert (= (and b!4669493 c!799460) b!4669496))

(assert (= (and b!4669493 (not c!799460)) b!4669499))

(assert (= (and d!1484806 res!1965432) b!4669497))

(assert (= (and d!1484806 (not res!1965429)) b!4669498))

(assert (= (and b!4669498 res!1965431) b!4669495))

(assert (= (and b!4669495 res!1965430) b!4669494))

(declare-fun m!5561915 () Bool)

(assert (=> b!4669495 m!5561915))

(declare-fun m!5561917 () Bool)

(assert (=> b!4669496 m!5561917))

(declare-fun m!5561919 () Bool)

(assert (=> d!1484806 m!5561919))

(declare-fun m!5561921 () Bool)

(assert (=> d!1484806 m!5561921))

(assert (=> b!4669494 m!5561915))

(assert (=> b!4669494 m!5561915))

(declare-fun m!5561925 () Bool)

(assert (=> b!4669494 m!5561925))

(declare-fun m!5561927 () Bool)

(assert (=> b!4669498 m!5561927))

(declare-fun m!5561929 () Bool)

(assert (=> b!4669497 m!5561929))

(assert (=> b!4669374 d!1484806))

(declare-fun d!1484830 () Bool)

(declare-fun dynLambda!21640 (Int tuple2!53168) Bool)

(assert (=> d!1484830 (dynLambda!21640 lambda!202178 lt!1831468)))

(declare-fun lt!1831650 () Unit!120908)

(declare-fun choose!32301 (List!52133 Int tuple2!53168) Unit!120908)

(assert (=> d!1484830 (= lt!1831650 (choose!32301 lt!1831480 lambda!202178 lt!1831468))))

(declare-fun e!2913946 () Bool)

(assert (=> d!1484830 e!2913946))

(declare-fun res!1965437 () Bool)

(assert (=> d!1484830 (=> (not res!1965437) (not e!2913946))))

(assert (=> d!1484830 (= res!1965437 (forall!11103 lt!1831480 lambda!202178))))

(assert (=> d!1484830 (= (forallContained!3306 lt!1831480 lambda!202178 lt!1831468) lt!1831650)))

(declare-fun b!4669513 () Bool)

(assert (=> b!4669513 (= e!2913946 (contains!15216 lt!1831480 lt!1831468))))

(assert (= (and d!1484830 res!1965437) b!4669513))

(declare-fun b_lambda!176249 () Bool)

(assert (=> (not b_lambda!176249) (not d!1484830)))

(declare-fun m!5561959 () Bool)

(assert (=> d!1484830 m!5561959))

(declare-fun m!5561961 () Bool)

(assert (=> d!1484830 m!5561961))

(declare-fun m!5561963 () Bool)

(assert (=> d!1484830 m!5561963))

(assert (=> b!4669513 m!5561563))

(assert (=> b!4669374 d!1484830))

(declare-fun d!1484838 () Bool)

(assert (=> d!1484838 (= (isDefined!9185 (getPair!408 lt!1831477 key!4968)) (not (isEmpty!29056 (getPair!408 lt!1831477 key!4968))))))

(declare-fun bs!1078202 () Bool)

(assert (= bs!1078202 d!1484838))

(assert (=> bs!1078202 m!5561571))

(declare-fun m!5561965 () Bool)

(assert (=> bs!1078202 m!5561965))

(assert (=> b!4669374 d!1484838))

(declare-fun d!1484840 () Bool)

(declare-fun get!17350 (Option!11923) List!52132)

(assert (=> d!1484840 (= (apply!12283 lt!1831486 lt!1831481) (get!17350 (getValueByKey!1673 (toList!5290 lt!1831486) lt!1831481)))))

(declare-fun bs!1078203 () Bool)

(assert (= bs!1078203 d!1484840))

(assert (=> bs!1078203 m!5561801))

(assert (=> bs!1078203 m!5561801))

(declare-fun m!5561967 () Bool)

(assert (=> bs!1078203 m!5561967))

(assert (=> b!4669374 d!1484840))

(declare-fun d!1484842 () Bool)

(declare-fun res!1965438 () Bool)

(declare-fun e!2913947 () Bool)

(assert (=> d!1484842 (=> res!1965438 e!2913947)))

(assert (=> d!1484842 (= res!1965438 (and ((_ is Cons!52008) oldBucket!40) (= (_1!29877 (h!58184 oldBucket!40)) key!4968)))))

(assert (=> d!1484842 (= (containsKey!2822 oldBucket!40 key!4968) e!2913947)))

(declare-fun b!4669514 () Bool)

(declare-fun e!2913948 () Bool)

(assert (=> b!4669514 (= e!2913947 e!2913948)))

(declare-fun res!1965439 () Bool)

(assert (=> b!4669514 (=> (not res!1965439) (not e!2913948))))

(assert (=> b!4669514 (= res!1965439 ((_ is Cons!52008) oldBucket!40))))

(declare-fun b!4669515 () Bool)

(assert (=> b!4669515 (= e!2913948 (containsKey!2822 (t!359268 oldBucket!40) key!4968))))

(assert (= (and d!1484842 (not res!1965438)) b!4669514))

(assert (= (and b!4669514 res!1965439) b!4669515))

(assert (=> b!4669515 m!5561569))

(assert (=> b!4669374 d!1484842))

(declare-fun d!1484844 () Bool)

(assert (=> d!1484844 (contains!15216 (toList!5290 lt!1831486) (tuple2!53169 lt!1831481 lt!1831477))))

(declare-fun lt!1831653 () Unit!120908)

(declare-fun choose!32303 (ListLongMap!3843 (_ BitVec 64) List!52132) Unit!120908)

(assert (=> d!1484844 (= lt!1831653 (choose!32303 lt!1831486 lt!1831481 lt!1831477))))

(assert (=> d!1484844 (contains!15217 lt!1831486 lt!1831481)))

(assert (=> d!1484844 (= (lemmaGetValueImpliesTupleContained!213 lt!1831486 lt!1831481 lt!1831477) lt!1831653)))

(declare-fun bs!1078204 () Bool)

(assert (= bs!1078204 d!1484844))

(declare-fun m!5561969 () Bool)

(assert (=> bs!1078204 m!5561969))

(declare-fun m!5561971 () Bool)

(assert (=> bs!1078204 m!5561971))

(assert (=> bs!1078204 m!5561577))

(assert (=> b!4669374 d!1484844))

(declare-fun d!1484846 () Bool)

(declare-fun lt!1831672 () Bool)

(declare-fun content!9067 (List!52133) (InoxSet tuple2!53168))

(assert (=> d!1484846 (= lt!1831672 (select (content!9067 lt!1831480) lt!1831468))))

(declare-fun e!2913959 () Bool)

(assert (=> d!1484846 (= lt!1831672 e!2913959)))

(declare-fun res!1965444 () Bool)

(assert (=> d!1484846 (=> (not res!1965444) (not e!2913959))))

(assert (=> d!1484846 (= res!1965444 ((_ is Cons!52009) lt!1831480))))

(assert (=> d!1484846 (= (contains!15216 lt!1831480 lt!1831468) lt!1831672)))

(declare-fun b!4669533 () Bool)

(declare-fun e!2913960 () Bool)

(assert (=> b!4669533 (= e!2913959 e!2913960)))

(declare-fun res!1965445 () Bool)

(assert (=> b!4669533 (=> res!1965445 e!2913960)))

(assert (=> b!4669533 (= res!1965445 (= (h!58185 lt!1831480) lt!1831468))))

(declare-fun b!4669534 () Bool)

(assert (=> b!4669534 (= e!2913960 (contains!15216 (t!359269 lt!1831480) lt!1831468))))

(assert (= (and d!1484846 res!1965444) b!4669533))

(assert (= (and b!4669533 (not res!1965445)) b!4669534))

(declare-fun m!5561973 () Bool)

(assert (=> d!1484846 m!5561973))

(declare-fun m!5561975 () Bool)

(assert (=> d!1484846 m!5561975))

(declare-fun m!5561977 () Bool)

(assert (=> b!4669534 m!5561977))

(assert (=> b!4669374 d!1484846))

(declare-fun bs!1078214 () Bool)

(declare-fun d!1484848 () Bool)

(assert (= bs!1078214 (and d!1484848 b!4669374)))

(declare-fun lambda!202230 () Int)

(assert (=> bs!1078214 (= lambda!202230 lambda!202178)))

(declare-fun bs!1078215 () Bool)

(assert (= bs!1078215 (and d!1484848 d!1484800)))

(assert (=> bs!1078215 (= lambda!202230 lambda!202220)))

(declare-fun b!4669580 () Bool)

(declare-fun res!1965483 () Bool)

(declare-fun e!2913999 () Bool)

(assert (=> b!4669580 (=> (not res!1965483) (not e!2913999))))

(declare-fun allKeysSameHashInMap!1632 (ListLongMap!3843 Hashable!6077) Bool)

(assert (=> b!4669580 (= res!1965483 (allKeysSameHashInMap!1632 lt!1831486 hashF!1389))))

(assert (=> d!1484848 e!2913999))

(declare-fun res!1965485 () Bool)

(assert (=> d!1484848 (=> (not res!1965485) (not e!2913999))))

(assert (=> d!1484848 (= res!1965485 (forall!11103 (toList!5290 lt!1831486) lambda!202230))))

(declare-fun lt!1831715 () Unit!120908)

(declare-fun choose!32304 (ListLongMap!3843 K!13350 Hashable!6077) Unit!120908)

(assert (=> d!1484848 (= lt!1831715 (choose!32304 lt!1831486 key!4968 hashF!1389))))

(assert (=> d!1484848 (forall!11103 (toList!5290 lt!1831486) lambda!202230)))

(assert (=> d!1484848 (= (lemmaInGenMapThenGetPairDefined!204 lt!1831486 key!4968 hashF!1389) lt!1831715)))

(declare-fun e!2913998 () Bool)

(declare-fun b!4669583 () Bool)

(declare-fun lt!1831708 () List!52132)

(declare-fun lt!1831714 () (_ BitVec 64))

(assert (=> b!4669583 (= e!2913998 (= (getValueByKey!1673 (toList!5290 lt!1831486) lt!1831714) (Some!11922 lt!1831708)))))

(declare-fun b!4669581 () Bool)

(declare-fun res!1965486 () Bool)

(assert (=> b!4669581 (=> (not res!1965486) (not e!2913999))))

(assert (=> b!4669581 (= res!1965486 (contains!15215 (extractMap!1736 (toList!5290 lt!1831486)) key!4968))))

(declare-fun b!4669582 () Bool)

(assert (=> b!4669582 (= e!2913999 (isDefined!9185 (getPair!408 (apply!12283 lt!1831486 (hash!3851 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1831712 () Unit!120908)

(assert (=> b!4669582 (= lt!1831712 (forallContained!3306 (toList!5290 lt!1831486) lambda!202230 (tuple2!53169 (hash!3851 hashF!1389 key!4968) (apply!12283 lt!1831486 (hash!3851 hashF!1389 key!4968)))))))

(declare-fun lt!1831713 () Unit!120908)

(declare-fun lt!1831710 () Unit!120908)

(assert (=> b!4669582 (= lt!1831713 lt!1831710)))

(assert (=> b!4669582 (contains!15216 (toList!5290 lt!1831486) (tuple2!53169 lt!1831714 lt!1831708))))

(assert (=> b!4669582 (= lt!1831710 (lemmaGetValueImpliesTupleContained!213 lt!1831486 lt!1831714 lt!1831708))))

(assert (=> b!4669582 e!2913998))

(declare-fun res!1965484 () Bool)

(assert (=> b!4669582 (=> (not res!1965484) (not e!2913998))))

(assert (=> b!4669582 (= res!1965484 (contains!15217 lt!1831486 lt!1831714))))

(assert (=> b!4669582 (= lt!1831708 (apply!12283 lt!1831486 (hash!3851 hashF!1389 key!4968)))))

(assert (=> b!4669582 (= lt!1831714 (hash!3851 hashF!1389 key!4968))))

(declare-fun lt!1831711 () Unit!120908)

(declare-fun lt!1831709 () Unit!120908)

(assert (=> b!4669582 (= lt!1831711 lt!1831709)))

(assert (=> b!4669582 (contains!15217 lt!1831486 (hash!3851 hashF!1389 key!4968))))

(assert (=> b!4669582 (= lt!1831709 (lemmaInGenMapThenLongMapContainsHash!614 lt!1831486 key!4968 hashF!1389))))

(assert (= (and d!1484848 res!1965485) b!4669580))

(assert (= (and b!4669580 res!1965483) b!4669581))

(assert (= (and b!4669581 res!1965486) b!4669582))

(assert (= (and b!4669582 res!1965484) b!4669583))

(declare-fun m!5562049 () Bool)

(assert (=> b!4669581 m!5562049))

(assert (=> b!4669581 m!5562049))

(declare-fun m!5562051 () Bool)

(assert (=> b!4669581 m!5562051))

(declare-fun m!5562053 () Bool)

(assert (=> b!4669582 m!5562053))

(declare-fun m!5562055 () Bool)

(assert (=> b!4669582 m!5562055))

(assert (=> b!4669582 m!5561525))

(assert (=> b!4669582 m!5561843))

(declare-fun m!5562057 () Bool)

(assert (=> b!4669582 m!5562057))

(assert (=> b!4669582 m!5561525))

(assert (=> b!4669582 m!5562053))

(declare-fun m!5562059 () Bool)

(assert (=> b!4669582 m!5562059))

(declare-fun m!5562061 () Bool)

(assert (=> b!4669582 m!5562061))

(assert (=> b!4669582 m!5562055))

(declare-fun m!5562063 () Bool)

(assert (=> b!4669582 m!5562063))

(declare-fun m!5562065 () Bool)

(assert (=> b!4669582 m!5562065))

(assert (=> b!4669582 m!5561525))

(assert (=> b!4669582 m!5561579))

(declare-fun m!5562067 () Bool)

(assert (=> b!4669583 m!5562067))

(declare-fun m!5562069 () Bool)

(assert (=> b!4669580 m!5562069))

(declare-fun m!5562071 () Bool)

(assert (=> d!1484848 m!5562071))

(declare-fun m!5562073 () Bool)

(assert (=> d!1484848 m!5562073))

(assert (=> d!1484848 m!5562071))

(assert (=> b!4669374 d!1484848))

(declare-fun b!4669592 () Bool)

(declare-fun e!2914005 () List!52132)

(assert (=> b!4669592 (= e!2914005 (t!359268 oldBucket!40))))

(declare-fun b!4669595 () Bool)

(declare-fun e!2914004 () List!52132)

(assert (=> b!4669595 (= e!2914004 Nil!52008)))

(declare-fun d!1484876 () Bool)

(declare-fun lt!1831718 () List!52132)

(assert (=> d!1484876 (not (containsKey!2822 lt!1831718 key!4968))))

(assert (=> d!1484876 (= lt!1831718 e!2914005)))

(declare-fun c!799480 () Bool)

(assert (=> d!1484876 (= c!799480 (and ((_ is Cons!52008) oldBucket!40) (= (_1!29877 (h!58184 oldBucket!40)) key!4968)))))

(assert (=> d!1484876 (noDuplicateKeys!1680 oldBucket!40)))

(assert (=> d!1484876 (= (removePairForKey!1303 oldBucket!40 key!4968) lt!1831718)))

(declare-fun b!4669593 () Bool)

(assert (=> b!4669593 (= e!2914005 e!2914004)))

(declare-fun c!799481 () Bool)

(assert (=> b!4669593 (= c!799481 ((_ is Cons!52008) oldBucket!40))))

(declare-fun b!4669594 () Bool)

(assert (=> b!4669594 (= e!2914004 (Cons!52008 (h!58184 oldBucket!40) (removePairForKey!1303 (t!359268 oldBucket!40) key!4968)))))

(assert (= (and d!1484876 c!799480) b!4669592))

(assert (= (and d!1484876 (not c!799480)) b!4669593))

(assert (= (and b!4669593 c!799481) b!4669594))

(assert (= (and b!4669593 (not c!799481)) b!4669595))

(declare-fun m!5562075 () Bool)

(assert (=> d!1484876 m!5562075))

(assert (=> d!1484876 m!5561601))

(assert (=> b!4669594 m!5561535))

(assert (=> b!4669384 d!1484876))

(declare-fun d!1484878 () Bool)

(declare-fun hash!3854 (Hashable!6077 K!13350) (_ BitVec 64))

(assert (=> d!1484878 (= (hash!3851 hashF!1389 key!4968) (hash!3854 hashF!1389 key!4968))))

(declare-fun bs!1078216 () Bool)

(assert (= bs!1078216 d!1484878))

(declare-fun m!5562077 () Bool)

(assert (=> bs!1078216 m!5562077))

(assert (=> b!4669365 d!1484878))

(declare-fun d!1484880 () Bool)

(assert (=> d!1484880 (= (eq!935 lt!1831474 (+!2020 lt!1831484 (h!58184 oldBucket!40))) (= (content!9064 (toList!5289 lt!1831474)) (content!9064 (toList!5289 (+!2020 lt!1831484 (h!58184 oldBucket!40))))))))

(declare-fun bs!1078217 () Bool)

(assert (= bs!1078217 d!1484880))

(declare-fun m!5562079 () Bool)

(assert (=> bs!1078217 m!5562079))

(declare-fun m!5562081 () Bool)

(assert (=> bs!1078217 m!5562081))

(assert (=> b!4669377 d!1484880))

(declare-fun d!1484882 () Bool)

(declare-fun e!2914006 () Bool)

(assert (=> d!1484882 e!2914006))

(declare-fun res!1965487 () Bool)

(assert (=> d!1484882 (=> (not res!1965487) (not e!2914006))))

(declare-fun lt!1831721 () ListMap!4629)

(assert (=> d!1484882 (= res!1965487 (contains!15215 lt!1831721 (_1!29877 (h!58184 oldBucket!40))))))

(declare-fun lt!1831719 () List!52132)

(assert (=> d!1484882 (= lt!1831721 (ListMap!4630 lt!1831719))))

(declare-fun lt!1831722 () Unit!120908)

(declare-fun lt!1831720 () Unit!120908)

(assert (=> d!1484882 (= lt!1831722 lt!1831720)))

(assert (=> d!1484882 (= (getValueByKey!1672 lt!1831719 (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484882 (= lt!1831720 (lemmaContainsTupThenGetReturnValue!948 lt!1831719 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484882 (= lt!1831719 (insertNoDuplicatedKeys!456 (toList!5289 lt!1831484) (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484882 (= (+!2020 lt!1831484 (h!58184 oldBucket!40)) lt!1831721)))

(declare-fun b!4669596 () Bool)

(declare-fun res!1965488 () Bool)

(assert (=> b!4669596 (=> (not res!1965488) (not e!2914006))))

(assert (=> b!4669596 (= res!1965488 (= (getValueByKey!1672 (toList!5289 lt!1831721) (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40)))))))

(declare-fun b!4669597 () Bool)

(assert (=> b!4669597 (= e!2914006 (contains!15220 (toList!5289 lt!1831721) (h!58184 oldBucket!40)))))

(assert (= (and d!1484882 res!1965487) b!4669596))

(assert (= (and b!4669596 res!1965488) b!4669597))

(declare-fun m!5562083 () Bool)

(assert (=> d!1484882 m!5562083))

(declare-fun m!5562085 () Bool)

(assert (=> d!1484882 m!5562085))

(declare-fun m!5562087 () Bool)

(assert (=> d!1484882 m!5562087))

(declare-fun m!5562089 () Bool)

(assert (=> d!1484882 m!5562089))

(declare-fun m!5562091 () Bool)

(assert (=> b!4669596 m!5562091))

(declare-fun m!5562093 () Bool)

(assert (=> b!4669597 m!5562093))

(assert (=> b!4669377 d!1484882))

(declare-fun b!4669598 () Bool)

(declare-fun e!2914008 () List!52132)

(assert (=> b!4669598 (= e!2914008 (t!359268 (t!359268 oldBucket!40)))))

(declare-fun b!4669601 () Bool)

(declare-fun e!2914007 () List!52132)

(assert (=> b!4669601 (= e!2914007 Nil!52008)))

(declare-fun d!1484884 () Bool)

(declare-fun lt!1831723 () List!52132)

(assert (=> d!1484884 (not (containsKey!2822 lt!1831723 key!4968))))

(assert (=> d!1484884 (= lt!1831723 e!2914008)))

(declare-fun c!799482 () Bool)

(assert (=> d!1484884 (= c!799482 (and ((_ is Cons!52008) (t!359268 oldBucket!40)) (= (_1!29877 (h!58184 (t!359268 oldBucket!40))) key!4968)))))

(assert (=> d!1484884 (noDuplicateKeys!1680 (t!359268 oldBucket!40))))

(assert (=> d!1484884 (= (removePairForKey!1303 (t!359268 oldBucket!40) key!4968) lt!1831723)))

(declare-fun b!4669599 () Bool)

(assert (=> b!4669599 (= e!2914008 e!2914007)))

(declare-fun c!799483 () Bool)

(assert (=> b!4669599 (= c!799483 ((_ is Cons!52008) (t!359268 oldBucket!40)))))

(declare-fun b!4669600 () Bool)

(assert (=> b!4669600 (= e!2914007 (Cons!52008 (h!58184 (t!359268 oldBucket!40)) (removePairForKey!1303 (t!359268 (t!359268 oldBucket!40)) key!4968)))))

(assert (= (and d!1484884 c!799482) b!4669598))

(assert (= (and d!1484884 (not c!799482)) b!4669599))

(assert (= (and b!4669599 c!799483) b!4669600))

(assert (= (and b!4669599 (not c!799483)) b!4669601))

(declare-fun m!5562095 () Bool)

(assert (=> d!1484884 m!5562095))

(assert (=> d!1484884 m!5561741))

(declare-fun m!5562097 () Bool)

(assert (=> b!4669600 m!5562097))

(assert (=> b!4669366 d!1484884))

(declare-fun d!1484886 () Bool)

(assert (=> d!1484886 true))

(assert (=> d!1484886 true))

(declare-fun lambda!202233 () Int)

(declare-fun forall!11104 (List!52132 Int) Bool)

(assert (=> d!1484886 (= (allKeysSameHash!1534 newBucket!224 hash!414 hashF!1389) (forall!11104 newBucket!224 lambda!202233))))

(declare-fun bs!1078218 () Bool)

(assert (= bs!1078218 d!1484886))

(declare-fun m!5562099 () Bool)

(assert (=> bs!1078218 m!5562099))

(assert (=> b!4669376 d!1484886))

(declare-fun d!1484888 () Bool)

(assert (=> d!1484888 (= (eq!935 lt!1831479 lt!1831484) (= (content!9064 (toList!5289 lt!1831479)) (content!9064 (toList!5289 lt!1831484))))))

(declare-fun bs!1078219 () Bool)

(assert (= bs!1078219 d!1484888))

(assert (=> bs!1078219 m!5561675))

(assert (=> bs!1078219 m!5561673))

(assert (=> b!4669378 d!1484888))

(declare-fun b!4669606 () Bool)

(declare-fun e!2914010 () List!52132)

(assert (=> b!4669606 (= e!2914010 (t!359268 lt!1831471))))

(declare-fun b!4669609 () Bool)

(declare-fun e!2914009 () List!52132)

(assert (=> b!4669609 (= e!2914009 Nil!52008)))

(declare-fun d!1484890 () Bool)

(declare-fun lt!1831724 () List!52132)

(assert (=> d!1484890 (not (containsKey!2822 lt!1831724 key!4968))))

(assert (=> d!1484890 (= lt!1831724 e!2914010)))

(declare-fun c!799484 () Bool)

(assert (=> d!1484890 (= c!799484 (and ((_ is Cons!52008) lt!1831471) (= (_1!29877 (h!58184 lt!1831471)) key!4968)))))

(assert (=> d!1484890 (noDuplicateKeys!1680 lt!1831471)))

(assert (=> d!1484890 (= (removePairForKey!1303 lt!1831471 key!4968) lt!1831724)))

(declare-fun b!4669607 () Bool)

(assert (=> b!4669607 (= e!2914010 e!2914009)))

(declare-fun c!799485 () Bool)

(assert (=> b!4669607 (= c!799485 ((_ is Cons!52008) lt!1831471))))

(declare-fun b!4669608 () Bool)

(assert (=> b!4669608 (= e!2914009 (Cons!52008 (h!58184 lt!1831471) (removePairForKey!1303 (t!359268 lt!1831471) key!4968)))))

(assert (= (and d!1484890 c!799484) b!4669606))

(assert (= (and d!1484890 (not c!799484)) b!4669607))

(assert (= (and b!4669607 c!799485) b!4669608))

(assert (= (and b!4669607 (not c!799485)) b!4669609))

(declare-fun m!5562101 () Bool)

(assert (=> d!1484890 m!5562101))

(declare-fun m!5562103 () Bool)

(assert (=> d!1484890 m!5562103))

(declare-fun m!5562105 () Bool)

(assert (=> b!4669608 m!5562105))

(assert (=> b!4669367 d!1484890))

(declare-fun d!1484892 () Bool)

(assert (=> d!1484892 (= (tail!8283 newBucket!224) (t!359268 newBucket!224))))

(assert (=> b!4669367 d!1484892))

(declare-fun d!1484894 () Bool)

(assert (=> d!1484894 (= (tail!8283 oldBucket!40) (t!359268 oldBucket!40))))

(assert (=> b!4669367 d!1484894))

(declare-fun d!1484896 () Bool)

(declare-fun res!1965493 () Bool)

(declare-fun e!2914015 () Bool)

(assert (=> d!1484896 (=> res!1965493 e!2914015)))

(assert (=> d!1484896 (= res!1965493 (not ((_ is Cons!52008) oldBucket!40)))))

(assert (=> d!1484896 (= (noDuplicateKeys!1680 oldBucket!40) e!2914015)))

(declare-fun b!4669614 () Bool)

(declare-fun e!2914016 () Bool)

(assert (=> b!4669614 (= e!2914015 e!2914016)))

(declare-fun res!1965494 () Bool)

(assert (=> b!4669614 (=> (not res!1965494) (not e!2914016))))

(assert (=> b!4669614 (= res!1965494 (not (containsKey!2822 (t!359268 oldBucket!40) (_1!29877 (h!58184 oldBucket!40)))))))

(declare-fun b!4669615 () Bool)

(assert (=> b!4669615 (= e!2914016 (noDuplicateKeys!1680 (t!359268 oldBucket!40)))))

(assert (= (and d!1484896 (not res!1965493)) b!4669614))

(assert (= (and b!4669614 res!1965494) b!4669615))

(declare-fun m!5562107 () Bool)

(assert (=> b!4669614 m!5562107))

(assert (=> b!4669615 m!5561741))

(assert (=> start!470856 d!1484896))

(declare-fun b!4669646 () Bool)

(declare-fun e!2914035 () Bool)

(declare-fun contains!15221 (List!52135 K!13350) Bool)

(assert (=> b!4669646 (= e!2914035 (not (contains!15221 (keys!18460 lt!1831483) key!4968)))))

(declare-fun b!4669647 () Bool)

(declare-fun e!2914039 () Bool)

(declare-fun e!2914040 () Bool)

(assert (=> b!4669647 (= e!2914039 e!2914040)))

(declare-fun res!1965513 () Bool)

(assert (=> b!4669647 (=> (not res!1965513) (not e!2914040))))

(declare-fun isDefined!9189 (Option!11922) Bool)

(assert (=> b!4669647 (= res!1965513 (isDefined!9189 (getValueByKey!1672 (toList!5289 lt!1831483) key!4968)))))

(declare-fun b!4669648 () Bool)

(declare-fun e!2914038 () List!52135)

(assert (=> b!4669648 (= e!2914038 (keys!18460 lt!1831483))))

(declare-fun d!1484898 () Bool)

(assert (=> d!1484898 e!2914039))

(declare-fun res!1965515 () Bool)

(assert (=> d!1484898 (=> res!1965515 e!2914039)))

(assert (=> d!1484898 (= res!1965515 e!2914035)))

(declare-fun res!1965514 () Bool)

(assert (=> d!1484898 (=> (not res!1965514) (not e!2914035))))

(declare-fun lt!1831768 () Bool)

(assert (=> d!1484898 (= res!1965514 (not lt!1831768))))

(declare-fun lt!1831770 () Bool)

(assert (=> d!1484898 (= lt!1831768 lt!1831770)))

(declare-fun lt!1831772 () Unit!120908)

(declare-fun e!2914036 () Unit!120908)

(assert (=> d!1484898 (= lt!1831772 e!2914036)))

(declare-fun c!799493 () Bool)

(assert (=> d!1484898 (= c!799493 lt!1831770)))

(declare-fun containsKey!2826 (List!52132 K!13350) Bool)

(assert (=> d!1484898 (= lt!1831770 (containsKey!2826 (toList!5289 lt!1831483) key!4968))))

(assert (=> d!1484898 (= (contains!15215 lt!1831483 key!4968) lt!1831768)))

(declare-fun b!4669649 () Bool)

(declare-fun e!2914037 () Unit!120908)

(declare-fun Unit!120925 () Unit!120908)

(assert (=> b!4669649 (= e!2914037 Unit!120925)))

(declare-fun b!4669650 () Bool)

(declare-fun getKeysList!781 (List!52132) List!52135)

(assert (=> b!4669650 (= e!2914038 (getKeysList!781 (toList!5289 lt!1831483)))))

(declare-fun b!4669651 () Bool)

(assert (=> b!4669651 (= e!2914040 (contains!15221 (keys!18460 lt!1831483) key!4968))))

(declare-fun b!4669652 () Bool)

(assert (=> b!4669652 (= e!2914036 e!2914037)))

(declare-fun c!799494 () Bool)

(declare-fun call!326384 () Bool)

(assert (=> b!4669652 (= c!799494 call!326384)))

(declare-fun bm!326379 () Bool)

(assert (=> bm!326379 (= call!326384 (contains!15221 e!2914038 key!4968))))

(declare-fun c!799492 () Bool)

(assert (=> bm!326379 (= c!799492 c!799493)))

(declare-fun b!4669653 () Bool)

(assert (=> b!4669653 false))

(declare-fun lt!1831771 () Unit!120908)

(declare-fun lt!1831769 () Unit!120908)

(assert (=> b!4669653 (= lt!1831771 lt!1831769)))

(assert (=> b!4669653 (containsKey!2826 (toList!5289 lt!1831483) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!780 (List!52132 K!13350) Unit!120908)

(assert (=> b!4669653 (= lt!1831769 (lemmaInGetKeysListThenContainsKey!780 (toList!5289 lt!1831483) key!4968))))

(declare-fun Unit!120926 () Unit!120908)

(assert (=> b!4669653 (= e!2914037 Unit!120926)))

(declare-fun b!4669654 () Bool)

(declare-fun lt!1831766 () Unit!120908)

(assert (=> b!4669654 (= e!2914036 lt!1831766)))

(declare-fun lt!1831767 () Unit!120908)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1576 (List!52132 K!13350) Unit!120908)

(assert (=> b!4669654 (= lt!1831767 (lemmaContainsKeyImpliesGetValueByKeyDefined!1576 (toList!5289 lt!1831483) key!4968))))

(assert (=> b!4669654 (isDefined!9189 (getValueByKey!1672 (toList!5289 lt!1831483) key!4968))))

(declare-fun lt!1831765 () Unit!120908)

(assert (=> b!4669654 (= lt!1831765 lt!1831767)))

(declare-fun lemmaInListThenGetKeysListContains!776 (List!52132 K!13350) Unit!120908)

(assert (=> b!4669654 (= lt!1831766 (lemmaInListThenGetKeysListContains!776 (toList!5289 lt!1831483) key!4968))))

(assert (=> b!4669654 call!326384))

(assert (= (and d!1484898 c!799493) b!4669654))

(assert (= (and d!1484898 (not c!799493)) b!4669652))

(assert (= (and b!4669652 c!799494) b!4669653))

(assert (= (and b!4669652 (not c!799494)) b!4669649))

(assert (= (or b!4669654 b!4669652) bm!326379))

(assert (= (and bm!326379 c!799492) b!4669650))

(assert (= (and bm!326379 (not c!799492)) b!4669648))

(assert (= (and d!1484898 res!1965514) b!4669646))

(assert (= (and d!1484898 (not res!1965515)) b!4669647))

(assert (= (and b!4669647 res!1965513) b!4669651))

(declare-fun m!5562139 () Bool)

(assert (=> d!1484898 m!5562139))

(assert (=> b!4669651 m!5561781))

(assert (=> b!4669651 m!5561781))

(declare-fun m!5562141 () Bool)

(assert (=> b!4669651 m!5562141))

(assert (=> b!4669646 m!5561781))

(assert (=> b!4669646 m!5561781))

(assert (=> b!4669646 m!5562141))

(declare-fun m!5562143 () Bool)

(assert (=> bm!326379 m!5562143))

(assert (=> b!4669653 m!5562139))

(declare-fun m!5562145 () Bool)

(assert (=> b!4669653 m!5562145))

(declare-fun m!5562147 () Bool)

(assert (=> b!4669647 m!5562147))

(assert (=> b!4669647 m!5562147))

(declare-fun m!5562149 () Bool)

(assert (=> b!4669647 m!5562149))

(assert (=> b!4669648 m!5561781))

(declare-fun m!5562151 () Bool)

(assert (=> b!4669650 m!5562151))

(declare-fun m!5562153 () Bool)

(assert (=> b!4669654 m!5562153))

(assert (=> b!4669654 m!5562147))

(assert (=> b!4669654 m!5562147))

(assert (=> b!4669654 m!5562149))

(declare-fun m!5562155 () Bool)

(assert (=> b!4669654 m!5562155))

(assert (=> b!4669369 d!1484898))

(declare-fun d!1484904 () Bool)

(assert (=> d!1484904 (= (eq!935 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831485 lt!1831471) (ListMap!4630 Nil!52008)) (+!2020 (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008)) lt!1831485)) (= (content!9064 (toList!5289 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831485 lt!1831471) (ListMap!4630 Nil!52008)))) (content!9064 (toList!5289 (+!2020 (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008)) lt!1831485)))))))

(declare-fun bs!1078226 () Bool)

(assert (= bs!1078226 d!1484904))

(declare-fun m!5562157 () Bool)

(assert (=> bs!1078226 m!5562157))

(declare-fun m!5562159 () Bool)

(assert (=> bs!1078226 m!5562159))

(assert (=> b!4669369 d!1484904))

(declare-fun bs!1078229 () Bool)

(declare-fun d!1484906 () Bool)

(assert (= bs!1078229 (and d!1484906 b!4669374)))

(declare-fun lambda!202243 () Int)

(assert (=> bs!1078229 (= lambda!202243 lambda!202178)))

(declare-fun bs!1078230 () Bool)

(assert (= bs!1078230 (and d!1484906 d!1484800)))

(assert (=> bs!1078230 (= lambda!202243 lambda!202220)))

(declare-fun bs!1078231 () Bool)

(assert (= bs!1078231 (and d!1484906 d!1484848)))

(assert (=> bs!1078231 (= lambda!202243 lambda!202230)))

(assert (=> d!1484906 (contains!15215 (extractMap!1736 (toList!5290 (ListLongMap!3844 lt!1831487))) key!4968)))

(declare-fun lt!1831795 () Unit!120908)

(declare-fun choose!32308 (ListLongMap!3843 K!13350 Hashable!6077) Unit!120908)

(assert (=> d!1484906 (= lt!1831795 (choose!32308 (ListLongMap!3844 lt!1831487) key!4968 hashF!1389))))

(assert (=> d!1484906 (forall!11103 (toList!5290 (ListLongMap!3844 lt!1831487)) lambda!202243)))

(assert (=> d!1484906 (= (lemmaListContainsThenExtractedMapContains!414 (ListLongMap!3844 lt!1831487) key!4968 hashF!1389) lt!1831795)))

(declare-fun bs!1078232 () Bool)

(assert (= bs!1078232 d!1484906))

(declare-fun m!5562173 () Bool)

(assert (=> bs!1078232 m!5562173))

(assert (=> bs!1078232 m!5562173))

(declare-fun m!5562175 () Bool)

(assert (=> bs!1078232 m!5562175))

(declare-fun m!5562177 () Bool)

(assert (=> bs!1078232 m!5562177))

(declare-fun m!5562179 () Bool)

(assert (=> bs!1078232 m!5562179))

(assert (=> b!4669369 d!1484906))

(declare-fun bs!1078398 () Bool)

(declare-fun b!4669747 () Bool)

(assert (= bs!1078398 (and b!4669747 d!1484886)))

(declare-fun lambda!202296 () Int)

(assert (=> bs!1078398 (not (= lambda!202296 lambda!202233))))

(assert (=> b!4669747 true))

(declare-fun bs!1078399 () Bool)

(declare-fun b!4669746 () Bool)

(assert (= bs!1078399 (and b!4669746 d!1484886)))

(declare-fun lambda!202297 () Int)

(assert (=> bs!1078399 (not (= lambda!202297 lambda!202233))))

(declare-fun bs!1078400 () Bool)

(assert (= bs!1078400 (and b!4669746 b!4669747)))

(assert (=> bs!1078400 (= lambda!202297 lambda!202296)))

(assert (=> b!4669746 true))

(declare-fun lambda!202298 () Int)

(assert (=> bs!1078399 (not (= lambda!202298 lambda!202233))))

(declare-fun lt!1831957 () ListMap!4629)

(assert (=> bs!1078400 (= (= lt!1831957 (ListMap!4630 Nil!52008)) (= lambda!202298 lambda!202296))))

(assert (=> b!4669746 (= (= lt!1831957 (ListMap!4630 Nil!52008)) (= lambda!202298 lambda!202297))))

(assert (=> b!4669746 true))

(declare-fun bs!1078401 () Bool)

(declare-fun d!1484914 () Bool)

(assert (= bs!1078401 (and d!1484914 d!1484886)))

(declare-fun lambda!202299 () Int)

(assert (=> bs!1078401 (not (= lambda!202299 lambda!202233))))

(declare-fun bs!1078402 () Bool)

(assert (= bs!1078402 (and d!1484914 b!4669747)))

(declare-fun lt!1831962 () ListMap!4629)

(assert (=> bs!1078402 (= (= lt!1831962 (ListMap!4630 Nil!52008)) (= lambda!202299 lambda!202296))))

(declare-fun bs!1078403 () Bool)

(assert (= bs!1078403 (and d!1484914 b!4669746)))

(assert (=> bs!1078403 (= (= lt!1831962 (ListMap!4630 Nil!52008)) (= lambda!202299 lambda!202297))))

(assert (=> bs!1078403 (= (= lt!1831962 lt!1831957) (= lambda!202299 lambda!202298))))

(assert (=> d!1484914 true))

(declare-fun call!326404 () Bool)

(declare-fun c!799515 () Bool)

(declare-fun bm!326399 () Bool)

(assert (=> bm!326399 (= call!326404 (forall!11104 (ite c!799515 (toList!5289 (ListMap!4630 Nil!52008)) (Cons!52008 lt!1831469 lt!1831464)) (ite c!799515 lambda!202296 lambda!202298)))))

(declare-fun e!2914095 () Bool)

(assert (=> d!1484914 e!2914095))

(declare-fun res!1965560 () Bool)

(assert (=> d!1484914 (=> (not res!1965560) (not e!2914095))))

(assert (=> d!1484914 (= res!1965560 (forall!11104 (Cons!52008 lt!1831469 lt!1831464) lambda!202299))))

(declare-fun e!2914096 () ListMap!4629)

(assert (=> d!1484914 (= lt!1831962 e!2914096)))

(assert (=> d!1484914 (= c!799515 ((_ is Nil!52008) (Cons!52008 lt!1831469 lt!1831464)))))

(assert (=> d!1484914 (noDuplicateKeys!1680 (Cons!52008 lt!1831469 lt!1831464))))

(assert (=> d!1484914 (= (addToMapMapFromBucket!1137 (Cons!52008 lt!1831469 lt!1831464) (ListMap!4630 Nil!52008)) lt!1831962)))

(declare-fun b!4669744 () Bool)

(declare-fun invariantList!1330 (List!52132) Bool)

(assert (=> b!4669744 (= e!2914095 (invariantList!1330 (toList!5289 lt!1831962)))))

(declare-fun b!4669745 () Bool)

(declare-fun e!2914097 () Bool)

(assert (=> b!4669745 (= e!2914097 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202298))))

(assert (=> b!4669746 (= e!2914096 lt!1831957)))

(declare-fun lt!1831958 () ListMap!4629)

(assert (=> b!4669746 (= lt!1831958 (+!2020 (ListMap!4630 Nil!52008) (h!58184 (Cons!52008 lt!1831469 lt!1831464))))))

(assert (=> b!4669746 (= lt!1831957 (addToMapMapFromBucket!1137 (t!359268 (Cons!52008 lt!1831469 lt!1831464)) (+!2020 (ListMap!4630 Nil!52008) (h!58184 (Cons!52008 lt!1831469 lt!1831464)))))))

(declare-fun lt!1831956 () Unit!120908)

(declare-fun call!326405 () Unit!120908)

(assert (=> b!4669746 (= lt!1831956 call!326405)))

(assert (=> b!4669746 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202297)))

(declare-fun lt!1831959 () Unit!120908)

(assert (=> b!4669746 (= lt!1831959 lt!1831956)))

(assert (=> b!4669746 (forall!11104 (toList!5289 lt!1831958) lambda!202298)))

(declare-fun lt!1831965 () Unit!120908)

(declare-fun Unit!120938 () Unit!120908)

(assert (=> b!4669746 (= lt!1831965 Unit!120938)))

(assert (=> b!4669746 (forall!11104 (t!359268 (Cons!52008 lt!1831469 lt!1831464)) lambda!202298)))

(declare-fun lt!1831960 () Unit!120908)

(declare-fun Unit!120939 () Unit!120908)

(assert (=> b!4669746 (= lt!1831960 Unit!120939)))

(declare-fun lt!1831961 () Unit!120908)

(declare-fun Unit!120940 () Unit!120908)

(assert (=> b!4669746 (= lt!1831961 Unit!120940)))

(declare-fun lt!1831969 () Unit!120908)

(declare-fun forallContained!3308 (List!52132 Int tuple2!53166) Unit!120908)

(assert (=> b!4669746 (= lt!1831969 (forallContained!3308 (toList!5289 lt!1831958) lambda!202298 (h!58184 (Cons!52008 lt!1831469 lt!1831464))))))

(assert (=> b!4669746 (contains!15215 lt!1831958 (_1!29877 (h!58184 (Cons!52008 lt!1831469 lt!1831464))))))

(declare-fun lt!1831964 () Unit!120908)

(declare-fun Unit!120941 () Unit!120908)

(assert (=> b!4669746 (= lt!1831964 Unit!120941)))

(assert (=> b!4669746 (contains!15215 lt!1831957 (_1!29877 (h!58184 (Cons!52008 lt!1831469 lt!1831464))))))

(declare-fun lt!1831972 () Unit!120908)

(declare-fun Unit!120942 () Unit!120908)

(assert (=> b!4669746 (= lt!1831972 Unit!120942)))

(assert (=> b!4669746 (forall!11104 (Cons!52008 lt!1831469 lt!1831464) lambda!202298)))

(declare-fun lt!1831967 () Unit!120908)

(declare-fun Unit!120943 () Unit!120908)

(assert (=> b!4669746 (= lt!1831967 Unit!120943)))

(declare-fun call!326406 () Bool)

(assert (=> b!4669746 call!326406))

(declare-fun lt!1831970 () Unit!120908)

(declare-fun Unit!120944 () Unit!120908)

(assert (=> b!4669746 (= lt!1831970 Unit!120944)))

(declare-fun lt!1831975 () Unit!120908)

(declare-fun Unit!120945 () Unit!120908)

(assert (=> b!4669746 (= lt!1831975 Unit!120945)))

(declare-fun lt!1831955 () Unit!120908)

(declare-fun addForallContainsKeyThenBeforeAdding!629 (ListMap!4629 ListMap!4629 K!13350 V!13596) Unit!120908)

(assert (=> b!4669746 (= lt!1831955 (addForallContainsKeyThenBeforeAdding!629 (ListMap!4630 Nil!52008) lt!1831957 (_1!29877 (h!58184 (Cons!52008 lt!1831469 lt!1831464))) (_2!29877 (h!58184 (Cons!52008 lt!1831469 lt!1831464)))))))

(assert (=> b!4669746 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202298)))

(declare-fun lt!1831973 () Unit!120908)

(assert (=> b!4669746 (= lt!1831973 lt!1831955)))

(assert (=> b!4669746 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202298)))

(declare-fun lt!1831968 () Unit!120908)

(declare-fun Unit!120946 () Unit!120908)

(assert (=> b!4669746 (= lt!1831968 Unit!120946)))

(declare-fun res!1965559 () Bool)

(assert (=> b!4669746 (= res!1965559 call!326404)))

(assert (=> b!4669746 (=> (not res!1965559) (not e!2914097))))

(assert (=> b!4669746 e!2914097))

(declare-fun lt!1831974 () Unit!120908)

(declare-fun Unit!120947 () Unit!120908)

(assert (=> b!4669746 (= lt!1831974 Unit!120947)))

(declare-fun bm!326400 () Bool)

(assert (=> bm!326400 (= call!326406 (forall!11104 (ite c!799515 (toList!5289 (ListMap!4630 Nil!52008)) (toList!5289 lt!1831958)) (ite c!799515 lambda!202296 lambda!202298)))))

(declare-fun bm!326401 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!630 (ListMap!4629) Unit!120908)

(assert (=> bm!326401 (= call!326405 (lemmaContainsAllItsOwnKeys!630 (ListMap!4630 Nil!52008)))))

(assert (=> b!4669747 (= e!2914096 (ListMap!4630 Nil!52008))))

(declare-fun lt!1831971 () Unit!120908)

(assert (=> b!4669747 (= lt!1831971 call!326405)))

(assert (=> b!4669747 call!326406))

(declare-fun lt!1831966 () Unit!120908)

(assert (=> b!4669747 (= lt!1831966 lt!1831971)))

(assert (=> b!4669747 call!326404))

(declare-fun lt!1831963 () Unit!120908)

(declare-fun Unit!120948 () Unit!120908)

(assert (=> b!4669747 (= lt!1831963 Unit!120948)))

(declare-fun b!4669748 () Bool)

(declare-fun res!1965558 () Bool)

(assert (=> b!4669748 (=> (not res!1965558) (not e!2914095))))

(assert (=> b!4669748 (= res!1965558 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202299))))

(assert (= (and d!1484914 c!799515) b!4669747))

(assert (= (and d!1484914 (not c!799515)) b!4669746))

(assert (= (and b!4669746 res!1965559) b!4669745))

(assert (= (or b!4669747 b!4669746) bm!326401))

(assert (= (or b!4669747 b!4669746) bm!326399))

(assert (= (or b!4669747 b!4669746) bm!326400))

(assert (= (and d!1484914 res!1965560) b!4669748))

(assert (= (and b!4669748 res!1965558) b!4669744))

(declare-fun m!5562433 () Bool)

(assert (=> bm!326401 m!5562433))

(declare-fun m!5562435 () Bool)

(assert (=> bm!326400 m!5562435))

(declare-fun m!5562437 () Bool)

(assert (=> b!4669746 m!5562437))

(declare-fun m!5562439 () Bool)

(assert (=> b!4669746 m!5562439))

(declare-fun m!5562441 () Bool)

(assert (=> b!4669746 m!5562441))

(assert (=> b!4669746 m!5562437))

(declare-fun m!5562443 () Bool)

(assert (=> b!4669746 m!5562443))

(declare-fun m!5562445 () Bool)

(assert (=> b!4669746 m!5562445))

(declare-fun m!5562447 () Bool)

(assert (=> b!4669746 m!5562447))

(assert (=> b!4669746 m!5562439))

(declare-fun m!5562449 () Bool)

(assert (=> b!4669746 m!5562449))

(declare-fun m!5562451 () Bool)

(assert (=> b!4669746 m!5562451))

(declare-fun m!5562453 () Bool)

(assert (=> b!4669746 m!5562453))

(declare-fun m!5562455 () Bool)

(assert (=> b!4669746 m!5562455))

(declare-fun m!5562457 () Bool)

(assert (=> b!4669746 m!5562457))

(declare-fun m!5562459 () Bool)

(assert (=> b!4669744 m!5562459))

(assert (=> b!4669745 m!5562437))

(declare-fun m!5562461 () Bool)

(assert (=> d!1484914 m!5562461))

(declare-fun m!5562463 () Bool)

(assert (=> d!1484914 m!5562463))

(declare-fun m!5562465 () Bool)

(assert (=> b!4669748 m!5562465))

(declare-fun m!5562467 () Bool)

(assert (=> bm!326399 m!5562467))

(assert (=> b!4669369 d!1484914))

(declare-fun d!1484958 () Bool)

(assert (=> d!1484958 (eq!935 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831469 lt!1831464) (ListMap!4630 Nil!52008)) (+!2020 (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008)) lt!1831469))))

(declare-fun lt!1831978 () Unit!120908)

(declare-fun choose!32310 (tuple2!53166 List!52132 ListMap!4629) Unit!120908)

(assert (=> d!1484958 (= lt!1831978 (choose!32310 lt!1831469 lt!1831464 (ListMap!4630 Nil!52008)))))

(assert (=> d!1484958 (noDuplicateKeys!1680 lt!1831464)))

(assert (=> d!1484958 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!186 lt!1831469 lt!1831464 (ListMap!4630 Nil!52008)) lt!1831978)))

(declare-fun bs!1078404 () Bool)

(assert (= bs!1078404 d!1484958))

(assert (=> bs!1078404 m!5561607))

(assert (=> bs!1078404 m!5561621))

(assert (=> bs!1078404 m!5561623))

(declare-fun m!5562469 () Bool)

(assert (=> bs!1078404 m!5562469))

(declare-fun m!5562471 () Bool)

(assert (=> bs!1078404 m!5562471))

(assert (=> bs!1078404 m!5561607))

(assert (=> bs!1078404 m!5561625))

(assert (=> bs!1078404 m!5561625))

(assert (=> bs!1078404 m!5561621))

(assert (=> b!4669369 d!1484958))

(declare-fun d!1484960 () Bool)

(assert (=> d!1484960 (= (eq!935 lt!1831462 (+!2020 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)) (h!58184 oldBucket!40))) (= (content!9064 (toList!5289 lt!1831462)) (content!9064 (toList!5289 (+!2020 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)) (h!58184 oldBucket!40))))))))

(declare-fun bs!1078405 () Bool)

(assert (= bs!1078405 d!1484960))

(declare-fun m!5562473 () Bool)

(assert (=> bs!1078405 m!5562473))

(declare-fun m!5562475 () Bool)

(assert (=> bs!1078405 m!5562475))

(assert (=> b!4669369 d!1484960))

(declare-fun d!1484962 () Bool)

(assert (=> d!1484962 (= (head!9758 newBucket!224) (h!58184 newBucket!224))))

(assert (=> b!4669369 d!1484962))

(declare-fun bs!1078406 () Bool)

(declare-fun d!1484964 () Bool)

(assert (= bs!1078406 (and d!1484964 b!4669374)))

(declare-fun lambda!202302 () Int)

(assert (=> bs!1078406 (= lambda!202302 lambda!202178)))

(declare-fun bs!1078407 () Bool)

(assert (= bs!1078407 (and d!1484964 d!1484800)))

(assert (=> bs!1078407 (= lambda!202302 lambda!202220)))

(declare-fun bs!1078408 () Bool)

(assert (= bs!1078408 (and d!1484964 d!1484848)))

(assert (=> bs!1078408 (= lambda!202302 lambda!202230)))

(declare-fun bs!1078409 () Bool)

(assert (= bs!1078409 (and d!1484964 d!1484906)))

(assert (=> bs!1078409 (= lambda!202302 lambda!202243)))

(declare-fun lt!1831981 () ListMap!4629)

(assert (=> d!1484964 (invariantList!1330 (toList!5289 lt!1831981))))

(declare-fun e!2914100 () ListMap!4629)

(assert (=> d!1484964 (= lt!1831981 e!2914100)))

(declare-fun c!799518 () Bool)

(assert (=> d!1484964 (= c!799518 ((_ is Cons!52009) lt!1831487))))

(assert (=> d!1484964 (forall!11103 lt!1831487 lambda!202302)))

(assert (=> d!1484964 (= (extractMap!1736 lt!1831487) lt!1831981)))

(declare-fun b!4669755 () Bool)

(assert (=> b!4669755 (= e!2914100 (addToMapMapFromBucket!1137 (_2!29878 (h!58185 lt!1831487)) (extractMap!1736 (t!359269 lt!1831487))))))

(declare-fun b!4669756 () Bool)

(assert (=> b!4669756 (= e!2914100 (ListMap!4630 Nil!52008))))

(assert (= (and d!1484964 c!799518) b!4669755))

(assert (= (and d!1484964 (not c!799518)) b!4669756))

(declare-fun m!5562477 () Bool)

(assert (=> d!1484964 m!5562477))

(declare-fun m!5562479 () Bool)

(assert (=> d!1484964 m!5562479))

(declare-fun m!5562481 () Bool)

(assert (=> b!4669755 m!5562481))

(assert (=> b!4669755 m!5562481))

(declare-fun m!5562483 () Bool)

(assert (=> b!4669755 m!5562483))

(assert (=> b!4669369 d!1484964))

(declare-fun d!1484966 () Bool)

(declare-fun e!2914101 () Bool)

(assert (=> d!1484966 e!2914101))

(declare-fun res!1965561 () Bool)

(assert (=> d!1484966 (=> (not res!1965561) (not e!2914101))))

(declare-fun lt!1831984 () ListMap!4629)

(assert (=> d!1484966 (= res!1965561 (contains!15215 lt!1831984 (_1!29877 lt!1831485)))))

(declare-fun lt!1831982 () List!52132)

(assert (=> d!1484966 (= lt!1831984 (ListMap!4630 lt!1831982))))

(declare-fun lt!1831985 () Unit!120908)

(declare-fun lt!1831983 () Unit!120908)

(assert (=> d!1484966 (= lt!1831985 lt!1831983)))

(assert (=> d!1484966 (= (getValueByKey!1672 lt!1831982 (_1!29877 lt!1831485)) (Some!11921 (_2!29877 lt!1831485)))))

(assert (=> d!1484966 (= lt!1831983 (lemmaContainsTupThenGetReturnValue!948 lt!1831982 (_1!29877 lt!1831485) (_2!29877 lt!1831485)))))

(assert (=> d!1484966 (= lt!1831982 (insertNoDuplicatedKeys!456 (toList!5289 (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008))) (_1!29877 lt!1831485) (_2!29877 lt!1831485)))))

(assert (=> d!1484966 (= (+!2020 (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008)) lt!1831485) lt!1831984)))

(declare-fun b!4669757 () Bool)

(declare-fun res!1965562 () Bool)

(assert (=> b!4669757 (=> (not res!1965562) (not e!2914101))))

(assert (=> b!4669757 (= res!1965562 (= (getValueByKey!1672 (toList!5289 lt!1831984) (_1!29877 lt!1831485)) (Some!11921 (_2!29877 lt!1831485))))))

(declare-fun b!4669758 () Bool)

(assert (=> b!4669758 (= e!2914101 (contains!15220 (toList!5289 lt!1831984) lt!1831485))))

(assert (= (and d!1484966 res!1965561) b!4669757))

(assert (= (and b!4669757 res!1965562) b!4669758))

(declare-fun m!5562485 () Bool)

(assert (=> d!1484966 m!5562485))

(declare-fun m!5562487 () Bool)

(assert (=> d!1484966 m!5562487))

(declare-fun m!5562489 () Bool)

(assert (=> d!1484966 m!5562489))

(declare-fun m!5562491 () Bool)

(assert (=> d!1484966 m!5562491))

(declare-fun m!5562493 () Bool)

(assert (=> b!4669757 m!5562493))

(declare-fun m!5562495 () Bool)

(assert (=> b!4669758 m!5562495))

(assert (=> b!4669369 d!1484966))

(declare-fun bs!1078410 () Bool)

(declare-fun d!1484968 () Bool)

(assert (= bs!1078410 (and d!1484968 b!4669374)))

(declare-fun lambda!202303 () Int)

(assert (=> bs!1078410 (= lambda!202303 lambda!202178)))

(declare-fun bs!1078411 () Bool)

(assert (= bs!1078411 (and d!1484968 d!1484800)))

(assert (=> bs!1078411 (= lambda!202303 lambda!202220)))

(declare-fun bs!1078412 () Bool)

(assert (= bs!1078412 (and d!1484968 d!1484906)))

(assert (=> bs!1078412 (= lambda!202303 lambda!202243)))

(declare-fun bs!1078413 () Bool)

(assert (= bs!1078413 (and d!1484968 d!1484964)))

(assert (=> bs!1078413 (= lambda!202303 lambda!202302)))

(declare-fun bs!1078414 () Bool)

(assert (= bs!1078414 (and d!1484968 d!1484848)))

(assert (=> bs!1078414 (= lambda!202303 lambda!202230)))

(declare-fun lt!1831986 () ListMap!4629)

(assert (=> d!1484968 (invariantList!1330 (toList!5289 lt!1831986))))

(declare-fun e!2914102 () ListMap!4629)

(assert (=> d!1484968 (= lt!1831986 e!2914102)))

(declare-fun c!799519 () Bool)

(assert (=> d!1484968 (= c!799519 ((_ is Cons!52009) (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)))))

(assert (=> d!1484968 (forall!11103 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009) lambda!202303)))

(assert (=> d!1484968 (= (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)) lt!1831986)))

(declare-fun b!4669759 () Bool)

(assert (=> b!4669759 (= e!2914102 (addToMapMapFromBucket!1137 (_2!29878 (h!58185 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009))) (extractMap!1736 (t!359269 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)))))))

(declare-fun b!4669760 () Bool)

(assert (=> b!4669760 (= e!2914102 (ListMap!4630 Nil!52008))))

(assert (= (and d!1484968 c!799519) b!4669759))

(assert (= (and d!1484968 (not c!799519)) b!4669760))

(declare-fun m!5562497 () Bool)

(assert (=> d!1484968 m!5562497))

(declare-fun m!5562499 () Bool)

(assert (=> d!1484968 m!5562499))

(declare-fun m!5562501 () Bool)

(assert (=> b!4669759 m!5562501))

(assert (=> b!4669759 m!5562501))

(declare-fun m!5562503 () Bool)

(assert (=> b!4669759 m!5562503))

(assert (=> b!4669369 d!1484968))

(declare-fun d!1484970 () Bool)

(declare-fun e!2914103 () Bool)

(assert (=> d!1484970 e!2914103))

(declare-fun res!1965563 () Bool)

(assert (=> d!1484970 (=> (not res!1965563) (not e!2914103))))

(declare-fun lt!1831989 () ListMap!4629)

(assert (=> d!1484970 (= res!1965563 (contains!15215 lt!1831989 (_1!29877 (h!58184 oldBucket!40))))))

(declare-fun lt!1831987 () List!52132)

(assert (=> d!1484970 (= lt!1831989 (ListMap!4630 lt!1831987))))

(declare-fun lt!1831990 () Unit!120908)

(declare-fun lt!1831988 () Unit!120908)

(assert (=> d!1484970 (= lt!1831990 lt!1831988)))

(assert (=> d!1484970 (= (getValueByKey!1672 lt!1831987 (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484970 (= lt!1831988 (lemmaContainsTupThenGetReturnValue!948 lt!1831987 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484970 (= lt!1831987 (insertNoDuplicatedKeys!456 (toList!5289 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009))) (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> d!1484970 (= (+!2020 (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831471) Nil!52009)) (h!58184 oldBucket!40)) lt!1831989)))

(declare-fun b!4669761 () Bool)

(declare-fun res!1965564 () Bool)

(assert (=> b!4669761 (=> (not res!1965564) (not e!2914103))))

(assert (=> b!4669761 (= res!1965564 (= (getValueByKey!1672 (toList!5289 lt!1831989) (_1!29877 (h!58184 oldBucket!40))) (Some!11921 (_2!29877 (h!58184 oldBucket!40)))))))

(declare-fun b!4669762 () Bool)

(assert (=> b!4669762 (= e!2914103 (contains!15220 (toList!5289 lt!1831989) (h!58184 oldBucket!40)))))

(assert (= (and d!1484970 res!1965563) b!4669761))

(assert (= (and b!4669761 res!1965564) b!4669762))

(declare-fun m!5562505 () Bool)

(assert (=> d!1484970 m!5562505))

(declare-fun m!5562507 () Bool)

(assert (=> d!1484970 m!5562507))

(declare-fun m!5562509 () Bool)

(assert (=> d!1484970 m!5562509))

(declare-fun m!5562511 () Bool)

(assert (=> d!1484970 m!5562511))

(declare-fun m!5562513 () Bool)

(assert (=> b!4669761 m!5562513))

(declare-fun m!5562515 () Bool)

(assert (=> b!4669762 m!5562515))

(assert (=> b!4669369 d!1484970))

(declare-fun d!1484972 () Bool)

(declare-fun e!2914104 () Bool)

(assert (=> d!1484972 e!2914104))

(declare-fun res!1965565 () Bool)

(assert (=> d!1484972 (=> (not res!1965565) (not e!2914104))))

(declare-fun lt!1831993 () ListMap!4629)

(assert (=> d!1484972 (= res!1965565 (contains!15215 lt!1831993 (_1!29877 lt!1831469)))))

(declare-fun lt!1831991 () List!52132)

(assert (=> d!1484972 (= lt!1831993 (ListMap!4630 lt!1831991))))

(declare-fun lt!1831994 () Unit!120908)

(declare-fun lt!1831992 () Unit!120908)

(assert (=> d!1484972 (= lt!1831994 lt!1831992)))

(assert (=> d!1484972 (= (getValueByKey!1672 lt!1831991 (_1!29877 lt!1831469)) (Some!11921 (_2!29877 lt!1831469)))))

(assert (=> d!1484972 (= lt!1831992 (lemmaContainsTupThenGetReturnValue!948 lt!1831991 (_1!29877 lt!1831469) (_2!29877 lt!1831469)))))

(assert (=> d!1484972 (= lt!1831991 (insertNoDuplicatedKeys!456 (toList!5289 (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008))) (_1!29877 lt!1831469) (_2!29877 lt!1831469)))))

(assert (=> d!1484972 (= (+!2020 (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008)) lt!1831469) lt!1831993)))

(declare-fun b!4669763 () Bool)

(declare-fun res!1965566 () Bool)

(assert (=> b!4669763 (=> (not res!1965566) (not e!2914104))))

(assert (=> b!4669763 (= res!1965566 (= (getValueByKey!1672 (toList!5289 lt!1831993) (_1!29877 lt!1831469)) (Some!11921 (_2!29877 lt!1831469))))))

(declare-fun b!4669764 () Bool)

(assert (=> b!4669764 (= e!2914104 (contains!15220 (toList!5289 lt!1831993) lt!1831469))))

(assert (= (and d!1484972 res!1965565) b!4669763))

(assert (= (and b!4669763 res!1965566) b!4669764))

(declare-fun m!5562517 () Bool)

(assert (=> d!1484972 m!5562517))

(declare-fun m!5562519 () Bool)

(assert (=> d!1484972 m!5562519))

(declare-fun m!5562521 () Bool)

(assert (=> d!1484972 m!5562521))

(declare-fun m!5562523 () Bool)

(assert (=> d!1484972 m!5562523))

(declare-fun m!5562525 () Bool)

(assert (=> b!4669763 m!5562525))

(declare-fun m!5562527 () Bool)

(assert (=> b!4669764 m!5562527))

(assert (=> b!4669369 d!1484972))

(declare-fun d!1484974 () Bool)

(assert (=> d!1484974 (= (eq!935 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831469 lt!1831464) (ListMap!4630 Nil!52008)) (+!2020 (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008)) lt!1831469)) (= (content!9064 (toList!5289 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831469 lt!1831464) (ListMap!4630 Nil!52008)))) (content!9064 (toList!5289 (+!2020 (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008)) lt!1831469)))))))

(declare-fun bs!1078415 () Bool)

(assert (= bs!1078415 d!1484974))

(declare-fun m!5562529 () Bool)

(assert (=> bs!1078415 m!5562529))

(declare-fun m!5562531 () Bool)

(assert (=> bs!1078415 m!5562531))

(assert (=> b!4669369 d!1484974))

(declare-fun d!1484976 () Bool)

(assert (=> d!1484976 (eq!935 (addToMapMapFromBucket!1137 (Cons!52008 lt!1831485 lt!1831471) (ListMap!4630 Nil!52008)) (+!2020 (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008)) lt!1831485))))

(declare-fun lt!1831995 () Unit!120908)

(assert (=> d!1484976 (= lt!1831995 (choose!32310 lt!1831485 lt!1831471 (ListMap!4630 Nil!52008)))))

(assert (=> d!1484976 (noDuplicateKeys!1680 lt!1831471)))

(assert (=> d!1484976 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!186 lt!1831485 lt!1831471 (ListMap!4630 Nil!52008)) lt!1831995)))

(declare-fun bs!1078416 () Bool)

(assert (= bs!1078416 d!1484976))

(assert (=> bs!1078416 m!5561629))

(assert (=> bs!1078416 m!5561635))

(assert (=> bs!1078416 m!5561639))

(declare-fun m!5562533 () Bool)

(assert (=> bs!1078416 m!5562533))

(assert (=> bs!1078416 m!5562103))

(assert (=> bs!1078416 m!5561629))

(assert (=> bs!1078416 m!5561633))

(assert (=> bs!1078416 m!5561633))

(assert (=> bs!1078416 m!5561635))

(assert (=> b!4669369 d!1484976))

(declare-fun bs!1078417 () Bool)

(declare-fun b!4669768 () Bool)

(assert (= bs!1078417 (and b!4669768 b!4669746)))

(declare-fun lambda!202304 () Int)

(assert (=> bs!1078417 (= (= (ListMap!4630 Nil!52008) lt!1831957) (= lambda!202304 lambda!202298))))

(declare-fun bs!1078418 () Bool)

(assert (= bs!1078418 (and b!4669768 d!1484914)))

(assert (=> bs!1078418 (= (= (ListMap!4630 Nil!52008) lt!1831962) (= lambda!202304 lambda!202299))))

(declare-fun bs!1078419 () Bool)

(assert (= bs!1078419 (and b!4669768 d!1484886)))

(assert (=> bs!1078419 (not (= lambda!202304 lambda!202233))))

(declare-fun bs!1078420 () Bool)

(assert (= bs!1078420 (and b!4669768 b!4669747)))

(assert (=> bs!1078420 (= lambda!202304 lambda!202296)))

(assert (=> bs!1078417 (= lambda!202304 lambda!202297)))

(assert (=> b!4669768 true))

(declare-fun bs!1078421 () Bool)

(declare-fun b!4669767 () Bool)

(assert (= bs!1078421 (and b!4669767 b!4669746)))

(declare-fun lambda!202305 () Int)

(assert (=> bs!1078421 (= (= (ListMap!4630 Nil!52008) lt!1831957) (= lambda!202305 lambda!202298))))

(declare-fun bs!1078422 () Bool)

(assert (= bs!1078422 (and b!4669767 d!1484914)))

(assert (=> bs!1078422 (= (= (ListMap!4630 Nil!52008) lt!1831962) (= lambda!202305 lambda!202299))))

(declare-fun bs!1078423 () Bool)

(assert (= bs!1078423 (and b!4669767 d!1484886)))

(assert (=> bs!1078423 (not (= lambda!202305 lambda!202233))))

(declare-fun bs!1078424 () Bool)

(assert (= bs!1078424 (and b!4669767 b!4669768)))

(assert (=> bs!1078424 (= lambda!202305 lambda!202304)))

(declare-fun bs!1078425 () Bool)

(assert (= bs!1078425 (and b!4669767 b!4669747)))

(assert (=> bs!1078425 (= lambda!202305 lambda!202296)))

(assert (=> bs!1078421 (= lambda!202305 lambda!202297)))

(assert (=> b!4669767 true))

(declare-fun lambda!202306 () Int)

(declare-fun lt!1831998 () ListMap!4629)

(assert (=> bs!1078421 (= (= lt!1831998 lt!1831957) (= lambda!202306 lambda!202298))))

(assert (=> bs!1078422 (= (= lt!1831998 lt!1831962) (= lambda!202306 lambda!202299))))

(assert (=> bs!1078423 (not (= lambda!202306 lambda!202233))))

(assert (=> bs!1078424 (= (= lt!1831998 (ListMap!4630 Nil!52008)) (= lambda!202306 lambda!202304))))

(assert (=> bs!1078425 (= (= lt!1831998 (ListMap!4630 Nil!52008)) (= lambda!202306 lambda!202296))))

(assert (=> bs!1078421 (= (= lt!1831998 (ListMap!4630 Nil!52008)) (= lambda!202306 lambda!202297))))

(assert (=> b!4669767 (= (= lt!1831998 (ListMap!4630 Nil!52008)) (= lambda!202306 lambda!202305))))

(assert (=> b!4669767 true))

(declare-fun bs!1078426 () Bool)

(declare-fun d!1484978 () Bool)

(assert (= bs!1078426 (and d!1484978 b!4669746)))

(declare-fun lt!1832003 () ListMap!4629)

(declare-fun lambda!202307 () Int)

(assert (=> bs!1078426 (= (= lt!1832003 lt!1831957) (= lambda!202307 lambda!202298))))

(declare-fun bs!1078427 () Bool)

(assert (= bs!1078427 (and d!1484978 d!1484914)))

(assert (=> bs!1078427 (= (= lt!1832003 lt!1831962) (= lambda!202307 lambda!202299))))

(declare-fun bs!1078428 () Bool)

(assert (= bs!1078428 (and d!1484978 d!1484886)))

(assert (=> bs!1078428 (not (= lambda!202307 lambda!202233))))

(declare-fun bs!1078429 () Bool)

(assert (= bs!1078429 (and d!1484978 b!4669768)))

(assert (=> bs!1078429 (= (= lt!1832003 (ListMap!4630 Nil!52008)) (= lambda!202307 lambda!202304))))

(declare-fun bs!1078430 () Bool)

(assert (= bs!1078430 (and d!1484978 b!4669767)))

(assert (=> bs!1078430 (= (= lt!1832003 lt!1831998) (= lambda!202307 lambda!202306))))

(declare-fun bs!1078431 () Bool)

(assert (= bs!1078431 (and d!1484978 b!4669747)))

(assert (=> bs!1078431 (= (= lt!1832003 (ListMap!4630 Nil!52008)) (= lambda!202307 lambda!202296))))

(assert (=> bs!1078426 (= (= lt!1832003 (ListMap!4630 Nil!52008)) (= lambda!202307 lambda!202297))))

(assert (=> bs!1078430 (= (= lt!1832003 (ListMap!4630 Nil!52008)) (= lambda!202307 lambda!202305))))

(assert (=> d!1484978 true))

(declare-fun bm!326402 () Bool)

(declare-fun c!799520 () Bool)

(declare-fun call!326407 () Bool)

(assert (=> bm!326402 (= call!326407 (forall!11104 (ite c!799520 (toList!5289 (ListMap!4630 Nil!52008)) lt!1831471) (ite c!799520 lambda!202304 lambda!202306)))))

(declare-fun e!2914105 () Bool)

(assert (=> d!1484978 e!2914105))

(declare-fun res!1965569 () Bool)

(assert (=> d!1484978 (=> (not res!1965569) (not e!2914105))))

(assert (=> d!1484978 (= res!1965569 (forall!11104 lt!1831471 lambda!202307))))

(declare-fun e!2914106 () ListMap!4629)

(assert (=> d!1484978 (= lt!1832003 e!2914106)))

(assert (=> d!1484978 (= c!799520 ((_ is Nil!52008) lt!1831471))))

(assert (=> d!1484978 (noDuplicateKeys!1680 lt!1831471)))

(assert (=> d!1484978 (= (addToMapMapFromBucket!1137 lt!1831471 (ListMap!4630 Nil!52008)) lt!1832003)))

(declare-fun b!4669765 () Bool)

(assert (=> b!4669765 (= e!2914105 (invariantList!1330 (toList!5289 lt!1832003)))))

(declare-fun b!4669766 () Bool)

(declare-fun e!2914107 () Bool)

(assert (=> b!4669766 (= e!2914107 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202306))))

(assert (=> b!4669767 (= e!2914106 lt!1831998)))

(declare-fun lt!1831999 () ListMap!4629)

(assert (=> b!4669767 (= lt!1831999 (+!2020 (ListMap!4630 Nil!52008) (h!58184 lt!1831471)))))

(assert (=> b!4669767 (= lt!1831998 (addToMapMapFromBucket!1137 (t!359268 lt!1831471) (+!2020 (ListMap!4630 Nil!52008) (h!58184 lt!1831471))))))

(declare-fun lt!1831997 () Unit!120908)

(declare-fun call!326408 () Unit!120908)

(assert (=> b!4669767 (= lt!1831997 call!326408)))

(assert (=> b!4669767 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202305)))

(declare-fun lt!1832000 () Unit!120908)

(assert (=> b!4669767 (= lt!1832000 lt!1831997)))

(assert (=> b!4669767 (forall!11104 (toList!5289 lt!1831999) lambda!202306)))

(declare-fun lt!1832006 () Unit!120908)

(declare-fun Unit!120951 () Unit!120908)

(assert (=> b!4669767 (= lt!1832006 Unit!120951)))

(assert (=> b!4669767 (forall!11104 (t!359268 lt!1831471) lambda!202306)))

(declare-fun lt!1832001 () Unit!120908)

(declare-fun Unit!120952 () Unit!120908)

(assert (=> b!4669767 (= lt!1832001 Unit!120952)))

(declare-fun lt!1832002 () Unit!120908)

(declare-fun Unit!120953 () Unit!120908)

(assert (=> b!4669767 (= lt!1832002 Unit!120953)))

(declare-fun lt!1832010 () Unit!120908)

(assert (=> b!4669767 (= lt!1832010 (forallContained!3308 (toList!5289 lt!1831999) lambda!202306 (h!58184 lt!1831471)))))

(assert (=> b!4669767 (contains!15215 lt!1831999 (_1!29877 (h!58184 lt!1831471)))))

(declare-fun lt!1832005 () Unit!120908)

(declare-fun Unit!120954 () Unit!120908)

(assert (=> b!4669767 (= lt!1832005 Unit!120954)))

(assert (=> b!4669767 (contains!15215 lt!1831998 (_1!29877 (h!58184 lt!1831471)))))

(declare-fun lt!1832013 () Unit!120908)

(declare-fun Unit!120955 () Unit!120908)

(assert (=> b!4669767 (= lt!1832013 Unit!120955)))

(assert (=> b!4669767 (forall!11104 lt!1831471 lambda!202306)))

(declare-fun lt!1832008 () Unit!120908)

(declare-fun Unit!120956 () Unit!120908)

(assert (=> b!4669767 (= lt!1832008 Unit!120956)))

(declare-fun call!326409 () Bool)

(assert (=> b!4669767 call!326409))

(declare-fun lt!1832011 () Unit!120908)

(declare-fun Unit!120957 () Unit!120908)

(assert (=> b!4669767 (= lt!1832011 Unit!120957)))

(declare-fun lt!1832016 () Unit!120908)

(declare-fun Unit!120958 () Unit!120908)

(assert (=> b!4669767 (= lt!1832016 Unit!120958)))

(declare-fun lt!1831996 () Unit!120908)

(assert (=> b!4669767 (= lt!1831996 (addForallContainsKeyThenBeforeAdding!629 (ListMap!4630 Nil!52008) lt!1831998 (_1!29877 (h!58184 lt!1831471)) (_2!29877 (h!58184 lt!1831471))))))

(assert (=> b!4669767 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202306)))

(declare-fun lt!1832014 () Unit!120908)

(assert (=> b!4669767 (= lt!1832014 lt!1831996)))

(assert (=> b!4669767 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202306)))

(declare-fun lt!1832009 () Unit!120908)

(declare-fun Unit!120959 () Unit!120908)

(assert (=> b!4669767 (= lt!1832009 Unit!120959)))

(declare-fun res!1965568 () Bool)

(assert (=> b!4669767 (= res!1965568 call!326407)))

(assert (=> b!4669767 (=> (not res!1965568) (not e!2914107))))

(assert (=> b!4669767 e!2914107))

(declare-fun lt!1832015 () Unit!120908)

(declare-fun Unit!120960 () Unit!120908)

(assert (=> b!4669767 (= lt!1832015 Unit!120960)))

(declare-fun bm!326403 () Bool)

(assert (=> bm!326403 (= call!326409 (forall!11104 (ite c!799520 (toList!5289 (ListMap!4630 Nil!52008)) (toList!5289 lt!1831999)) (ite c!799520 lambda!202304 lambda!202306)))))

(declare-fun bm!326404 () Bool)

(assert (=> bm!326404 (= call!326408 (lemmaContainsAllItsOwnKeys!630 (ListMap!4630 Nil!52008)))))

(assert (=> b!4669768 (= e!2914106 (ListMap!4630 Nil!52008))))

(declare-fun lt!1832012 () Unit!120908)

(assert (=> b!4669768 (= lt!1832012 call!326408)))

(assert (=> b!4669768 call!326409))

(declare-fun lt!1832007 () Unit!120908)

(assert (=> b!4669768 (= lt!1832007 lt!1832012)))

(assert (=> b!4669768 call!326407))

(declare-fun lt!1832004 () Unit!120908)

(declare-fun Unit!120961 () Unit!120908)

(assert (=> b!4669768 (= lt!1832004 Unit!120961)))

(declare-fun b!4669769 () Bool)

(declare-fun res!1965567 () Bool)

(assert (=> b!4669769 (=> (not res!1965567) (not e!2914105))))

(assert (=> b!4669769 (= res!1965567 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202307))))

(assert (= (and d!1484978 c!799520) b!4669768))

(assert (= (and d!1484978 (not c!799520)) b!4669767))

(assert (= (and b!4669767 res!1965568) b!4669766))

(assert (= (or b!4669768 b!4669767) bm!326404))

(assert (= (or b!4669768 b!4669767) bm!326402))

(assert (= (or b!4669768 b!4669767) bm!326403))

(assert (= (and d!1484978 res!1965569) b!4669769))

(assert (= (and b!4669769 res!1965567) b!4669765))

(assert (=> bm!326404 m!5562433))

(declare-fun m!5562535 () Bool)

(assert (=> bm!326403 m!5562535))

(declare-fun m!5562537 () Bool)

(assert (=> b!4669767 m!5562537))

(declare-fun m!5562539 () Bool)

(assert (=> b!4669767 m!5562539))

(declare-fun m!5562541 () Bool)

(assert (=> b!4669767 m!5562541))

(assert (=> b!4669767 m!5562537))

(declare-fun m!5562543 () Bool)

(assert (=> b!4669767 m!5562543))

(declare-fun m!5562545 () Bool)

(assert (=> b!4669767 m!5562545))

(declare-fun m!5562547 () Bool)

(assert (=> b!4669767 m!5562547))

(assert (=> b!4669767 m!5562539))

(declare-fun m!5562549 () Bool)

(assert (=> b!4669767 m!5562549))

(declare-fun m!5562551 () Bool)

(assert (=> b!4669767 m!5562551))

(declare-fun m!5562553 () Bool)

(assert (=> b!4669767 m!5562553))

(declare-fun m!5562555 () Bool)

(assert (=> b!4669767 m!5562555))

(declare-fun m!5562557 () Bool)

(assert (=> b!4669767 m!5562557))

(declare-fun m!5562559 () Bool)

(assert (=> b!4669765 m!5562559))

(assert (=> b!4669766 m!5562537))

(declare-fun m!5562561 () Bool)

(assert (=> d!1484978 m!5562561))

(assert (=> d!1484978 m!5562103))

(declare-fun m!5562563 () Bool)

(assert (=> b!4669769 m!5562563))

(declare-fun m!5562565 () Bool)

(assert (=> bm!326402 m!5562565))

(assert (=> b!4669369 d!1484978))

(declare-fun bs!1078432 () Bool)

(declare-fun b!4669773 () Bool)

(assert (= bs!1078432 (and b!4669773 b!4669746)))

(declare-fun lambda!202308 () Int)

(assert (=> bs!1078432 (= (= (ListMap!4630 Nil!52008) lt!1831957) (= lambda!202308 lambda!202298))))

(declare-fun bs!1078433 () Bool)

(assert (= bs!1078433 (and b!4669773 d!1484914)))

(assert (=> bs!1078433 (= (= (ListMap!4630 Nil!52008) lt!1831962) (= lambda!202308 lambda!202299))))

(declare-fun bs!1078434 () Bool)

(assert (= bs!1078434 (and b!4669773 d!1484886)))

(assert (=> bs!1078434 (not (= lambda!202308 lambda!202233))))

(declare-fun bs!1078435 () Bool)

(assert (= bs!1078435 (and b!4669773 d!1484978)))

(assert (=> bs!1078435 (= (= (ListMap!4630 Nil!52008) lt!1832003) (= lambda!202308 lambda!202307))))

(declare-fun bs!1078436 () Bool)

(assert (= bs!1078436 (and b!4669773 b!4669768)))

(assert (=> bs!1078436 (= lambda!202308 lambda!202304)))

(declare-fun bs!1078437 () Bool)

(assert (= bs!1078437 (and b!4669773 b!4669767)))

(assert (=> bs!1078437 (= (= (ListMap!4630 Nil!52008) lt!1831998) (= lambda!202308 lambda!202306))))

(declare-fun bs!1078438 () Bool)

(assert (= bs!1078438 (and b!4669773 b!4669747)))

(assert (=> bs!1078438 (= lambda!202308 lambda!202296)))

(assert (=> bs!1078432 (= lambda!202308 lambda!202297)))

(assert (=> bs!1078437 (= lambda!202308 lambda!202305)))

(assert (=> b!4669773 true))

(declare-fun bs!1078439 () Bool)

(declare-fun b!4669772 () Bool)

(assert (= bs!1078439 (and b!4669772 b!4669746)))

(declare-fun lambda!202309 () Int)

(assert (=> bs!1078439 (= (= (ListMap!4630 Nil!52008) lt!1831957) (= lambda!202309 lambda!202298))))

(declare-fun bs!1078440 () Bool)

(assert (= bs!1078440 (and b!4669772 d!1484914)))

(assert (=> bs!1078440 (= (= (ListMap!4630 Nil!52008) lt!1831962) (= lambda!202309 lambda!202299))))

(declare-fun bs!1078441 () Bool)

(assert (= bs!1078441 (and b!4669772 d!1484886)))

(assert (=> bs!1078441 (not (= lambda!202309 lambda!202233))))

(declare-fun bs!1078442 () Bool)

(assert (= bs!1078442 (and b!4669772 d!1484978)))

(assert (=> bs!1078442 (= (= (ListMap!4630 Nil!52008) lt!1832003) (= lambda!202309 lambda!202307))))

(declare-fun bs!1078443 () Bool)

(assert (= bs!1078443 (and b!4669772 b!4669768)))

(assert (=> bs!1078443 (= lambda!202309 lambda!202304)))

(declare-fun bs!1078444 () Bool)

(assert (= bs!1078444 (and b!4669772 b!4669767)))

(assert (=> bs!1078444 (= (= (ListMap!4630 Nil!52008) lt!1831998) (= lambda!202309 lambda!202306))))

(declare-fun bs!1078445 () Bool)

(assert (= bs!1078445 (and b!4669772 b!4669747)))

(assert (=> bs!1078445 (= lambda!202309 lambda!202296)))

(assert (=> bs!1078439 (= lambda!202309 lambda!202297)))

(assert (=> bs!1078444 (= lambda!202309 lambda!202305)))

(declare-fun bs!1078446 () Bool)

(assert (= bs!1078446 (and b!4669772 b!4669773)))

(assert (=> bs!1078446 (= lambda!202309 lambda!202308)))

(assert (=> b!4669772 true))

(declare-fun lt!1832019 () ListMap!4629)

(declare-fun lambda!202310 () Int)

(assert (=> bs!1078439 (= (= lt!1832019 lt!1831957) (= lambda!202310 lambda!202298))))

(assert (=> bs!1078440 (= (= lt!1832019 lt!1831962) (= lambda!202310 lambda!202299))))

(assert (=> bs!1078441 (not (= lambda!202310 lambda!202233))))

(assert (=> bs!1078442 (= (= lt!1832019 lt!1832003) (= lambda!202310 lambda!202307))))

(assert (=> bs!1078443 (= (= lt!1832019 (ListMap!4630 Nil!52008)) (= lambda!202310 lambda!202304))))

(assert (=> bs!1078444 (= (= lt!1832019 lt!1831998) (= lambda!202310 lambda!202306))))

(assert (=> bs!1078445 (= (= lt!1832019 (ListMap!4630 Nil!52008)) (= lambda!202310 lambda!202296))))

(assert (=> bs!1078439 (= (= lt!1832019 (ListMap!4630 Nil!52008)) (= lambda!202310 lambda!202297))))

(assert (=> b!4669772 (= (= lt!1832019 (ListMap!4630 Nil!52008)) (= lambda!202310 lambda!202309))))

(assert (=> bs!1078444 (= (= lt!1832019 (ListMap!4630 Nil!52008)) (= lambda!202310 lambda!202305))))

(assert (=> bs!1078446 (= (= lt!1832019 (ListMap!4630 Nil!52008)) (= lambda!202310 lambda!202308))))

(assert (=> b!4669772 true))

(declare-fun bs!1078447 () Bool)

(declare-fun d!1484980 () Bool)

(assert (= bs!1078447 (and d!1484980 b!4669746)))

(declare-fun lambda!202311 () Int)

(declare-fun lt!1832024 () ListMap!4629)

(assert (=> bs!1078447 (= (= lt!1832024 lt!1831957) (= lambda!202311 lambda!202298))))

(declare-fun bs!1078448 () Bool)

(assert (= bs!1078448 (and d!1484980 d!1484914)))

(assert (=> bs!1078448 (= (= lt!1832024 lt!1831962) (= lambda!202311 lambda!202299))))

(declare-fun bs!1078449 () Bool)

(assert (= bs!1078449 (and d!1484980 d!1484886)))

(assert (=> bs!1078449 (not (= lambda!202311 lambda!202233))))

(declare-fun bs!1078450 () Bool)

(assert (= bs!1078450 (and d!1484980 b!4669768)))

(assert (=> bs!1078450 (= (= lt!1832024 (ListMap!4630 Nil!52008)) (= lambda!202311 lambda!202304))))

(declare-fun bs!1078451 () Bool)

(assert (= bs!1078451 (and d!1484980 b!4669767)))

(assert (=> bs!1078451 (= (= lt!1832024 lt!1831998) (= lambda!202311 lambda!202306))))

(declare-fun bs!1078452 () Bool)

(assert (= bs!1078452 (and d!1484980 b!4669747)))

(assert (=> bs!1078452 (= (= lt!1832024 (ListMap!4630 Nil!52008)) (= lambda!202311 lambda!202296))))

(assert (=> bs!1078447 (= (= lt!1832024 (ListMap!4630 Nil!52008)) (= lambda!202311 lambda!202297))))

(declare-fun bs!1078453 () Bool)

(assert (= bs!1078453 (and d!1484980 b!4669772)))

(assert (=> bs!1078453 (= (= lt!1832024 (ListMap!4630 Nil!52008)) (= lambda!202311 lambda!202309))))

(assert (=> bs!1078453 (= (= lt!1832024 lt!1832019) (= lambda!202311 lambda!202310))))

(declare-fun bs!1078454 () Bool)

(assert (= bs!1078454 (and d!1484980 d!1484978)))

(assert (=> bs!1078454 (= (= lt!1832024 lt!1832003) (= lambda!202311 lambda!202307))))

(assert (=> bs!1078451 (= (= lt!1832024 (ListMap!4630 Nil!52008)) (= lambda!202311 lambda!202305))))

(declare-fun bs!1078455 () Bool)

(assert (= bs!1078455 (and d!1484980 b!4669773)))

(assert (=> bs!1078455 (= (= lt!1832024 (ListMap!4630 Nil!52008)) (= lambda!202311 lambda!202308))))

(assert (=> d!1484980 true))

(declare-fun bm!326405 () Bool)

(declare-fun call!326410 () Bool)

(declare-fun c!799521 () Bool)

(assert (=> bm!326405 (= call!326410 (forall!11104 (ite c!799521 (toList!5289 (ListMap!4630 Nil!52008)) (Cons!52008 lt!1831485 lt!1831471)) (ite c!799521 lambda!202308 lambda!202310)))))

(declare-fun e!2914108 () Bool)

(assert (=> d!1484980 e!2914108))

(declare-fun res!1965572 () Bool)

(assert (=> d!1484980 (=> (not res!1965572) (not e!2914108))))

(assert (=> d!1484980 (= res!1965572 (forall!11104 (Cons!52008 lt!1831485 lt!1831471) lambda!202311))))

(declare-fun e!2914109 () ListMap!4629)

(assert (=> d!1484980 (= lt!1832024 e!2914109)))

(assert (=> d!1484980 (= c!799521 ((_ is Nil!52008) (Cons!52008 lt!1831485 lt!1831471)))))

(assert (=> d!1484980 (noDuplicateKeys!1680 (Cons!52008 lt!1831485 lt!1831471))))

(assert (=> d!1484980 (= (addToMapMapFromBucket!1137 (Cons!52008 lt!1831485 lt!1831471) (ListMap!4630 Nil!52008)) lt!1832024)))

(declare-fun b!4669770 () Bool)

(assert (=> b!4669770 (= e!2914108 (invariantList!1330 (toList!5289 lt!1832024)))))

(declare-fun b!4669771 () Bool)

(declare-fun e!2914110 () Bool)

(assert (=> b!4669771 (= e!2914110 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202310))))

(assert (=> b!4669772 (= e!2914109 lt!1832019)))

(declare-fun lt!1832020 () ListMap!4629)

(assert (=> b!4669772 (= lt!1832020 (+!2020 (ListMap!4630 Nil!52008) (h!58184 (Cons!52008 lt!1831485 lt!1831471))))))

(assert (=> b!4669772 (= lt!1832019 (addToMapMapFromBucket!1137 (t!359268 (Cons!52008 lt!1831485 lt!1831471)) (+!2020 (ListMap!4630 Nil!52008) (h!58184 (Cons!52008 lt!1831485 lt!1831471)))))))

(declare-fun lt!1832018 () Unit!120908)

(declare-fun call!326411 () Unit!120908)

(assert (=> b!4669772 (= lt!1832018 call!326411)))

(assert (=> b!4669772 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202309)))

(declare-fun lt!1832021 () Unit!120908)

(assert (=> b!4669772 (= lt!1832021 lt!1832018)))

(assert (=> b!4669772 (forall!11104 (toList!5289 lt!1832020) lambda!202310)))

(declare-fun lt!1832027 () Unit!120908)

(declare-fun Unit!120973 () Unit!120908)

(assert (=> b!4669772 (= lt!1832027 Unit!120973)))

(assert (=> b!4669772 (forall!11104 (t!359268 (Cons!52008 lt!1831485 lt!1831471)) lambda!202310)))

(declare-fun lt!1832022 () Unit!120908)

(declare-fun Unit!120974 () Unit!120908)

(assert (=> b!4669772 (= lt!1832022 Unit!120974)))

(declare-fun lt!1832023 () Unit!120908)

(declare-fun Unit!120975 () Unit!120908)

(assert (=> b!4669772 (= lt!1832023 Unit!120975)))

(declare-fun lt!1832031 () Unit!120908)

(assert (=> b!4669772 (= lt!1832031 (forallContained!3308 (toList!5289 lt!1832020) lambda!202310 (h!58184 (Cons!52008 lt!1831485 lt!1831471))))))

(assert (=> b!4669772 (contains!15215 lt!1832020 (_1!29877 (h!58184 (Cons!52008 lt!1831485 lt!1831471))))))

(declare-fun lt!1832026 () Unit!120908)

(declare-fun Unit!120976 () Unit!120908)

(assert (=> b!4669772 (= lt!1832026 Unit!120976)))

(assert (=> b!4669772 (contains!15215 lt!1832019 (_1!29877 (h!58184 (Cons!52008 lt!1831485 lt!1831471))))))

(declare-fun lt!1832034 () Unit!120908)

(declare-fun Unit!120977 () Unit!120908)

(assert (=> b!4669772 (= lt!1832034 Unit!120977)))

(assert (=> b!4669772 (forall!11104 (Cons!52008 lt!1831485 lt!1831471) lambda!202310)))

(declare-fun lt!1832029 () Unit!120908)

(declare-fun Unit!120978 () Unit!120908)

(assert (=> b!4669772 (= lt!1832029 Unit!120978)))

(declare-fun call!326412 () Bool)

(assert (=> b!4669772 call!326412))

(declare-fun lt!1832032 () Unit!120908)

(declare-fun Unit!120979 () Unit!120908)

(assert (=> b!4669772 (= lt!1832032 Unit!120979)))

(declare-fun lt!1832037 () Unit!120908)

(declare-fun Unit!120980 () Unit!120908)

(assert (=> b!4669772 (= lt!1832037 Unit!120980)))

(declare-fun lt!1832017 () Unit!120908)

(assert (=> b!4669772 (= lt!1832017 (addForallContainsKeyThenBeforeAdding!629 (ListMap!4630 Nil!52008) lt!1832019 (_1!29877 (h!58184 (Cons!52008 lt!1831485 lt!1831471))) (_2!29877 (h!58184 (Cons!52008 lt!1831485 lt!1831471)))))))

(assert (=> b!4669772 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202310)))

(declare-fun lt!1832035 () Unit!120908)

(assert (=> b!4669772 (= lt!1832035 lt!1832017)))

(assert (=> b!4669772 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202310)))

(declare-fun lt!1832030 () Unit!120908)

(declare-fun Unit!120981 () Unit!120908)

(assert (=> b!4669772 (= lt!1832030 Unit!120981)))

(declare-fun res!1965571 () Bool)

(assert (=> b!4669772 (= res!1965571 call!326410)))

(assert (=> b!4669772 (=> (not res!1965571) (not e!2914110))))

(assert (=> b!4669772 e!2914110))

(declare-fun lt!1832036 () Unit!120908)

(declare-fun Unit!120982 () Unit!120908)

(assert (=> b!4669772 (= lt!1832036 Unit!120982)))

(declare-fun bm!326406 () Bool)

(assert (=> bm!326406 (= call!326412 (forall!11104 (ite c!799521 (toList!5289 (ListMap!4630 Nil!52008)) (toList!5289 lt!1832020)) (ite c!799521 lambda!202308 lambda!202310)))))

(declare-fun bm!326407 () Bool)

(assert (=> bm!326407 (= call!326411 (lemmaContainsAllItsOwnKeys!630 (ListMap!4630 Nil!52008)))))

(assert (=> b!4669773 (= e!2914109 (ListMap!4630 Nil!52008))))

(declare-fun lt!1832033 () Unit!120908)

(assert (=> b!4669773 (= lt!1832033 call!326411)))

(assert (=> b!4669773 call!326412))

(declare-fun lt!1832028 () Unit!120908)

(assert (=> b!4669773 (= lt!1832028 lt!1832033)))

(assert (=> b!4669773 call!326410))

(declare-fun lt!1832025 () Unit!120908)

(declare-fun Unit!120983 () Unit!120908)

(assert (=> b!4669773 (= lt!1832025 Unit!120983)))

(declare-fun b!4669774 () Bool)

(declare-fun res!1965570 () Bool)

(assert (=> b!4669774 (=> (not res!1965570) (not e!2914108))))

(assert (=> b!4669774 (= res!1965570 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202311))))

(assert (= (and d!1484980 c!799521) b!4669773))

(assert (= (and d!1484980 (not c!799521)) b!4669772))

(assert (= (and b!4669772 res!1965571) b!4669771))

(assert (= (or b!4669773 b!4669772) bm!326407))

(assert (= (or b!4669773 b!4669772) bm!326405))

(assert (= (or b!4669773 b!4669772) bm!326406))

(assert (= (and d!1484980 res!1965572) b!4669774))

(assert (= (and b!4669774 res!1965570) b!4669770))

(assert (=> bm!326407 m!5562433))

(declare-fun m!5562567 () Bool)

(assert (=> bm!326406 m!5562567))

(declare-fun m!5562569 () Bool)

(assert (=> b!4669772 m!5562569))

(declare-fun m!5562571 () Bool)

(assert (=> b!4669772 m!5562571))

(declare-fun m!5562573 () Bool)

(assert (=> b!4669772 m!5562573))

(assert (=> b!4669772 m!5562569))

(declare-fun m!5562575 () Bool)

(assert (=> b!4669772 m!5562575))

(declare-fun m!5562577 () Bool)

(assert (=> b!4669772 m!5562577))

(declare-fun m!5562579 () Bool)

(assert (=> b!4669772 m!5562579))

(assert (=> b!4669772 m!5562571))

(declare-fun m!5562581 () Bool)

(assert (=> b!4669772 m!5562581))

(declare-fun m!5562583 () Bool)

(assert (=> b!4669772 m!5562583))

(declare-fun m!5562585 () Bool)

(assert (=> b!4669772 m!5562585))

(declare-fun m!5562587 () Bool)

(assert (=> b!4669772 m!5562587))

(declare-fun m!5562589 () Bool)

(assert (=> b!4669772 m!5562589))

(declare-fun m!5562591 () Bool)

(assert (=> b!4669770 m!5562591))

(assert (=> b!4669771 m!5562569))

(declare-fun m!5562593 () Bool)

(assert (=> d!1484980 m!5562593))

(declare-fun m!5562595 () Bool)

(assert (=> d!1484980 m!5562595))

(declare-fun m!5562597 () Bool)

(assert (=> b!4669774 m!5562597))

(declare-fun m!5562599 () Bool)

(assert (=> bm!326405 m!5562599))

(assert (=> b!4669369 d!1484980))

(declare-fun d!1484982 () Bool)

(assert (=> d!1484982 (= (head!9758 oldBucket!40) (h!58184 oldBucket!40))))

(assert (=> b!4669369 d!1484982))

(declare-fun bs!1078456 () Bool)

(declare-fun b!4669778 () Bool)

(assert (= bs!1078456 (and b!4669778 b!4669746)))

(declare-fun lambda!202312 () Int)

(assert (=> bs!1078456 (= (= (ListMap!4630 Nil!52008) lt!1831957) (= lambda!202312 lambda!202298))))

(declare-fun bs!1078457 () Bool)

(assert (= bs!1078457 (and b!4669778 d!1484914)))

(assert (=> bs!1078457 (= (= (ListMap!4630 Nil!52008) lt!1831962) (= lambda!202312 lambda!202299))))

(declare-fun bs!1078458 () Bool)

(assert (= bs!1078458 (and b!4669778 d!1484886)))

(assert (=> bs!1078458 (not (= lambda!202312 lambda!202233))))

(declare-fun bs!1078459 () Bool)

(assert (= bs!1078459 (and b!4669778 b!4669768)))

(assert (=> bs!1078459 (= lambda!202312 lambda!202304)))

(declare-fun bs!1078460 () Bool)

(assert (= bs!1078460 (and b!4669778 b!4669767)))

(assert (=> bs!1078460 (= (= (ListMap!4630 Nil!52008) lt!1831998) (= lambda!202312 lambda!202306))))

(declare-fun bs!1078461 () Bool)

(assert (= bs!1078461 (and b!4669778 b!4669747)))

(assert (=> bs!1078461 (= lambda!202312 lambda!202296)))

(assert (=> bs!1078456 (= lambda!202312 lambda!202297)))

(declare-fun bs!1078462 () Bool)

(assert (= bs!1078462 (and b!4669778 b!4669772)))

(assert (=> bs!1078462 (= lambda!202312 lambda!202309)))

(declare-fun bs!1078463 () Bool)

(assert (= bs!1078463 (and b!4669778 d!1484980)))

(assert (=> bs!1078463 (= (= (ListMap!4630 Nil!52008) lt!1832024) (= lambda!202312 lambda!202311))))

(assert (=> bs!1078462 (= (= (ListMap!4630 Nil!52008) lt!1832019) (= lambda!202312 lambda!202310))))

(declare-fun bs!1078464 () Bool)

(assert (= bs!1078464 (and b!4669778 d!1484978)))

(assert (=> bs!1078464 (= (= (ListMap!4630 Nil!52008) lt!1832003) (= lambda!202312 lambda!202307))))

(assert (=> bs!1078460 (= lambda!202312 lambda!202305)))

(declare-fun bs!1078465 () Bool)

(assert (= bs!1078465 (and b!4669778 b!4669773)))

(assert (=> bs!1078465 (= lambda!202312 lambda!202308)))

(assert (=> b!4669778 true))

(declare-fun bs!1078466 () Bool)

(declare-fun b!4669777 () Bool)

(assert (= bs!1078466 (and b!4669777 b!4669746)))

(declare-fun lambda!202313 () Int)

(assert (=> bs!1078466 (= (= (ListMap!4630 Nil!52008) lt!1831957) (= lambda!202313 lambda!202298))))

(declare-fun bs!1078467 () Bool)

(assert (= bs!1078467 (and b!4669777 d!1484914)))

(assert (=> bs!1078467 (= (= (ListMap!4630 Nil!52008) lt!1831962) (= lambda!202313 lambda!202299))))

(declare-fun bs!1078468 () Bool)

(assert (= bs!1078468 (and b!4669777 d!1484886)))

(assert (=> bs!1078468 (not (= lambda!202313 lambda!202233))))

(declare-fun bs!1078469 () Bool)

(assert (= bs!1078469 (and b!4669777 b!4669768)))

(assert (=> bs!1078469 (= lambda!202313 lambda!202304)))

(declare-fun bs!1078470 () Bool)

(assert (= bs!1078470 (and b!4669777 b!4669767)))

(assert (=> bs!1078470 (= (= (ListMap!4630 Nil!52008) lt!1831998) (= lambda!202313 lambda!202306))))

(declare-fun bs!1078471 () Bool)

(assert (= bs!1078471 (and b!4669777 b!4669747)))

(assert (=> bs!1078471 (= lambda!202313 lambda!202296)))

(declare-fun bs!1078472 () Bool)

(assert (= bs!1078472 (and b!4669777 b!4669772)))

(assert (=> bs!1078472 (= lambda!202313 lambda!202309)))

(declare-fun bs!1078473 () Bool)

(assert (= bs!1078473 (and b!4669777 d!1484980)))

(assert (=> bs!1078473 (= (= (ListMap!4630 Nil!52008) lt!1832024) (= lambda!202313 lambda!202311))))

(assert (=> bs!1078472 (= (= (ListMap!4630 Nil!52008) lt!1832019) (= lambda!202313 lambda!202310))))

(declare-fun bs!1078474 () Bool)

(assert (= bs!1078474 (and b!4669777 d!1484978)))

(assert (=> bs!1078474 (= (= (ListMap!4630 Nil!52008) lt!1832003) (= lambda!202313 lambda!202307))))

(declare-fun bs!1078475 () Bool)

(assert (= bs!1078475 (and b!4669777 b!4669778)))

(assert (=> bs!1078475 (= lambda!202313 lambda!202312)))

(assert (=> bs!1078466 (= lambda!202313 lambda!202297)))

(assert (=> bs!1078470 (= lambda!202313 lambda!202305)))

(declare-fun bs!1078476 () Bool)

(assert (= bs!1078476 (and b!4669777 b!4669773)))

(assert (=> bs!1078476 (= lambda!202313 lambda!202308)))

(assert (=> b!4669777 true))

(declare-fun lambda!202314 () Int)

(declare-fun lt!1832040 () ListMap!4629)

(assert (=> bs!1078466 (= (= lt!1832040 lt!1831957) (= lambda!202314 lambda!202298))))

(assert (=> bs!1078467 (= (= lt!1832040 lt!1831962) (= lambda!202314 lambda!202299))))

(assert (=> bs!1078468 (not (= lambda!202314 lambda!202233))))

(assert (=> bs!1078469 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202304))))

(assert (=> bs!1078470 (= (= lt!1832040 lt!1831998) (= lambda!202314 lambda!202306))))

(assert (=> bs!1078471 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202296))))

(assert (=> bs!1078472 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202309))))

(assert (=> bs!1078473 (= (= lt!1832040 lt!1832024) (= lambda!202314 lambda!202311))))

(assert (=> bs!1078472 (= (= lt!1832040 lt!1832019) (= lambda!202314 lambda!202310))))

(assert (=> bs!1078474 (= (= lt!1832040 lt!1832003) (= lambda!202314 lambda!202307))))

(assert (=> bs!1078475 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202312))))

(assert (=> bs!1078466 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202297))))

(assert (=> bs!1078470 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202305))))

(assert (=> b!4669777 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202313))))

(assert (=> bs!1078476 (= (= lt!1832040 (ListMap!4630 Nil!52008)) (= lambda!202314 lambda!202308))))

(assert (=> b!4669777 true))

(declare-fun bs!1078477 () Bool)

(declare-fun d!1484984 () Bool)

(assert (= bs!1078477 (and d!1484984 b!4669746)))

(declare-fun lt!1832045 () ListMap!4629)

(declare-fun lambda!202315 () Int)

(assert (=> bs!1078477 (= (= lt!1832045 lt!1831957) (= lambda!202315 lambda!202298))))

(declare-fun bs!1078478 () Bool)

(assert (= bs!1078478 (and d!1484984 d!1484914)))

(assert (=> bs!1078478 (= (= lt!1832045 lt!1831962) (= lambda!202315 lambda!202299))))

(declare-fun bs!1078479 () Bool)

(assert (= bs!1078479 (and d!1484984 d!1484886)))

(assert (=> bs!1078479 (not (= lambda!202315 lambda!202233))))

(declare-fun bs!1078480 () Bool)

(assert (= bs!1078480 (and d!1484984 b!4669768)))

(assert (=> bs!1078480 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202304))))

(declare-fun bs!1078481 () Bool)

(assert (= bs!1078481 (and d!1484984 b!4669777)))

(assert (=> bs!1078481 (= (= lt!1832045 lt!1832040) (= lambda!202315 lambda!202314))))

(declare-fun bs!1078482 () Bool)

(assert (= bs!1078482 (and d!1484984 b!4669767)))

(assert (=> bs!1078482 (= (= lt!1832045 lt!1831998) (= lambda!202315 lambda!202306))))

(declare-fun bs!1078483 () Bool)

(assert (= bs!1078483 (and d!1484984 b!4669747)))

(assert (=> bs!1078483 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202296))))

(declare-fun bs!1078484 () Bool)

(assert (= bs!1078484 (and d!1484984 b!4669772)))

(assert (=> bs!1078484 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202309))))

(declare-fun bs!1078485 () Bool)

(assert (= bs!1078485 (and d!1484984 d!1484980)))

(assert (=> bs!1078485 (= (= lt!1832045 lt!1832024) (= lambda!202315 lambda!202311))))

(assert (=> bs!1078484 (= (= lt!1832045 lt!1832019) (= lambda!202315 lambda!202310))))

(declare-fun bs!1078486 () Bool)

(assert (= bs!1078486 (and d!1484984 d!1484978)))

(assert (=> bs!1078486 (= (= lt!1832045 lt!1832003) (= lambda!202315 lambda!202307))))

(declare-fun bs!1078487 () Bool)

(assert (= bs!1078487 (and d!1484984 b!4669778)))

(assert (=> bs!1078487 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202312))))

(assert (=> bs!1078477 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202297))))

(assert (=> bs!1078482 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202305))))

(assert (=> bs!1078481 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202313))))

(declare-fun bs!1078488 () Bool)

(assert (= bs!1078488 (and d!1484984 b!4669773)))

(assert (=> bs!1078488 (= (= lt!1832045 (ListMap!4630 Nil!52008)) (= lambda!202315 lambda!202308))))

(assert (=> d!1484984 true))

(declare-fun c!799522 () Bool)

(declare-fun call!326413 () Bool)

(declare-fun bm!326408 () Bool)

(assert (=> bm!326408 (= call!326413 (forall!11104 (ite c!799522 (toList!5289 (ListMap!4630 Nil!52008)) lt!1831464) (ite c!799522 lambda!202312 lambda!202314)))))

(declare-fun e!2914111 () Bool)

(assert (=> d!1484984 e!2914111))

(declare-fun res!1965575 () Bool)

(assert (=> d!1484984 (=> (not res!1965575) (not e!2914111))))

(assert (=> d!1484984 (= res!1965575 (forall!11104 lt!1831464 lambda!202315))))

(declare-fun e!2914112 () ListMap!4629)

(assert (=> d!1484984 (= lt!1832045 e!2914112)))

(assert (=> d!1484984 (= c!799522 ((_ is Nil!52008) lt!1831464))))

(assert (=> d!1484984 (noDuplicateKeys!1680 lt!1831464)))

(assert (=> d!1484984 (= (addToMapMapFromBucket!1137 lt!1831464 (ListMap!4630 Nil!52008)) lt!1832045)))

(declare-fun b!4669775 () Bool)

(assert (=> b!4669775 (= e!2914111 (invariantList!1330 (toList!5289 lt!1832045)))))

(declare-fun b!4669776 () Bool)

(declare-fun e!2914113 () Bool)

(assert (=> b!4669776 (= e!2914113 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202314))))

(assert (=> b!4669777 (= e!2914112 lt!1832040)))

(declare-fun lt!1832041 () ListMap!4629)

(assert (=> b!4669777 (= lt!1832041 (+!2020 (ListMap!4630 Nil!52008) (h!58184 lt!1831464)))))

(assert (=> b!4669777 (= lt!1832040 (addToMapMapFromBucket!1137 (t!359268 lt!1831464) (+!2020 (ListMap!4630 Nil!52008) (h!58184 lt!1831464))))))

(declare-fun lt!1832039 () Unit!120908)

(declare-fun call!326414 () Unit!120908)

(assert (=> b!4669777 (= lt!1832039 call!326414)))

(assert (=> b!4669777 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202313)))

(declare-fun lt!1832042 () Unit!120908)

(assert (=> b!4669777 (= lt!1832042 lt!1832039)))

(assert (=> b!4669777 (forall!11104 (toList!5289 lt!1832041) lambda!202314)))

(declare-fun lt!1832048 () Unit!120908)

(declare-fun Unit!120985 () Unit!120908)

(assert (=> b!4669777 (= lt!1832048 Unit!120985)))

(assert (=> b!4669777 (forall!11104 (t!359268 lt!1831464) lambda!202314)))

(declare-fun lt!1832043 () Unit!120908)

(declare-fun Unit!120986 () Unit!120908)

(assert (=> b!4669777 (= lt!1832043 Unit!120986)))

(declare-fun lt!1832044 () Unit!120908)

(declare-fun Unit!120987 () Unit!120908)

(assert (=> b!4669777 (= lt!1832044 Unit!120987)))

(declare-fun lt!1832052 () Unit!120908)

(assert (=> b!4669777 (= lt!1832052 (forallContained!3308 (toList!5289 lt!1832041) lambda!202314 (h!58184 lt!1831464)))))

(assert (=> b!4669777 (contains!15215 lt!1832041 (_1!29877 (h!58184 lt!1831464)))))

(declare-fun lt!1832047 () Unit!120908)

(declare-fun Unit!120988 () Unit!120908)

(assert (=> b!4669777 (= lt!1832047 Unit!120988)))

(assert (=> b!4669777 (contains!15215 lt!1832040 (_1!29877 (h!58184 lt!1831464)))))

(declare-fun lt!1832055 () Unit!120908)

(declare-fun Unit!120989 () Unit!120908)

(assert (=> b!4669777 (= lt!1832055 Unit!120989)))

(assert (=> b!4669777 (forall!11104 lt!1831464 lambda!202314)))

(declare-fun lt!1832050 () Unit!120908)

(declare-fun Unit!120990 () Unit!120908)

(assert (=> b!4669777 (= lt!1832050 Unit!120990)))

(declare-fun call!326415 () Bool)

(assert (=> b!4669777 call!326415))

(declare-fun lt!1832053 () Unit!120908)

(declare-fun Unit!120992 () Unit!120908)

(assert (=> b!4669777 (= lt!1832053 Unit!120992)))

(declare-fun lt!1832058 () Unit!120908)

(declare-fun Unit!120994 () Unit!120908)

(assert (=> b!4669777 (= lt!1832058 Unit!120994)))

(declare-fun lt!1832038 () Unit!120908)

(assert (=> b!4669777 (= lt!1832038 (addForallContainsKeyThenBeforeAdding!629 (ListMap!4630 Nil!52008) lt!1832040 (_1!29877 (h!58184 lt!1831464)) (_2!29877 (h!58184 lt!1831464))))))

(assert (=> b!4669777 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202314)))

(declare-fun lt!1832056 () Unit!120908)

(assert (=> b!4669777 (= lt!1832056 lt!1832038)))

(assert (=> b!4669777 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202314)))

(declare-fun lt!1832051 () Unit!120908)

(declare-fun Unit!120997 () Unit!120908)

(assert (=> b!4669777 (= lt!1832051 Unit!120997)))

(declare-fun res!1965574 () Bool)

(assert (=> b!4669777 (= res!1965574 call!326413)))

(assert (=> b!4669777 (=> (not res!1965574) (not e!2914113))))

(assert (=> b!4669777 e!2914113))

(declare-fun lt!1832057 () Unit!120908)

(declare-fun Unit!120999 () Unit!120908)

(assert (=> b!4669777 (= lt!1832057 Unit!120999)))

(declare-fun bm!326409 () Bool)

(assert (=> bm!326409 (= call!326415 (forall!11104 (ite c!799522 (toList!5289 (ListMap!4630 Nil!52008)) (toList!5289 lt!1832041)) (ite c!799522 lambda!202312 lambda!202314)))))

(declare-fun bm!326410 () Bool)

(assert (=> bm!326410 (= call!326414 (lemmaContainsAllItsOwnKeys!630 (ListMap!4630 Nil!52008)))))

(assert (=> b!4669778 (= e!2914112 (ListMap!4630 Nil!52008))))

(declare-fun lt!1832054 () Unit!120908)

(assert (=> b!4669778 (= lt!1832054 call!326414)))

(assert (=> b!4669778 call!326415))

(declare-fun lt!1832049 () Unit!120908)

(assert (=> b!4669778 (= lt!1832049 lt!1832054)))

(assert (=> b!4669778 call!326413))

(declare-fun lt!1832046 () Unit!120908)

(declare-fun Unit!121003 () Unit!120908)

(assert (=> b!4669778 (= lt!1832046 Unit!121003)))

(declare-fun b!4669779 () Bool)

(declare-fun res!1965573 () Bool)

(assert (=> b!4669779 (=> (not res!1965573) (not e!2914111))))

(assert (=> b!4669779 (= res!1965573 (forall!11104 (toList!5289 (ListMap!4630 Nil!52008)) lambda!202315))))

(assert (= (and d!1484984 c!799522) b!4669778))

(assert (= (and d!1484984 (not c!799522)) b!4669777))

(assert (= (and b!4669777 res!1965574) b!4669776))

(assert (= (or b!4669778 b!4669777) bm!326410))

(assert (= (or b!4669778 b!4669777) bm!326408))

(assert (= (or b!4669778 b!4669777) bm!326409))

(assert (= (and d!1484984 res!1965575) b!4669779))

(assert (= (and b!4669779 res!1965573) b!4669775))

(assert (=> bm!326410 m!5562433))

(declare-fun m!5562601 () Bool)

(assert (=> bm!326409 m!5562601))

(declare-fun m!5562603 () Bool)

(assert (=> b!4669777 m!5562603))

(declare-fun m!5562605 () Bool)

(assert (=> b!4669777 m!5562605))

(declare-fun m!5562607 () Bool)

(assert (=> b!4669777 m!5562607))

(assert (=> b!4669777 m!5562603))

(declare-fun m!5562609 () Bool)

(assert (=> b!4669777 m!5562609))

(declare-fun m!5562611 () Bool)

(assert (=> b!4669777 m!5562611))

(declare-fun m!5562613 () Bool)

(assert (=> b!4669777 m!5562613))

(assert (=> b!4669777 m!5562605))

(declare-fun m!5562615 () Bool)

(assert (=> b!4669777 m!5562615))

(declare-fun m!5562617 () Bool)

(assert (=> b!4669777 m!5562617))

(declare-fun m!5562619 () Bool)

(assert (=> b!4669777 m!5562619))

(declare-fun m!5562621 () Bool)

(assert (=> b!4669777 m!5562621))

(declare-fun m!5562623 () Bool)

(assert (=> b!4669777 m!5562623))

(declare-fun m!5562625 () Bool)

(assert (=> b!4669775 m!5562625))

(assert (=> b!4669776 m!5562603))

(declare-fun m!5562627 () Bool)

(assert (=> d!1484984 m!5562627))

(assert (=> d!1484984 m!5562471))

(declare-fun m!5562629 () Bool)

(assert (=> b!4669779 m!5562629))

(declare-fun m!5562631 () Bool)

(assert (=> bm!326408 m!5562631))

(assert (=> b!4669369 d!1484984))

(declare-fun bs!1078489 () Bool)

(declare-fun b!4669783 () Bool)

(assert (= bs!1078489 (and b!4669783 b!4669746)))

(declare-fun lambda!202316 () Int)

(assert (=> bs!1078489 (= (= lt!1831491 lt!1831957) (= lambda!202316 lambda!202298))))

(declare-fun bs!1078490 () Bool)

(assert (= bs!1078490 (and b!4669783 d!1484914)))

(assert (=> bs!1078490 (= (= lt!1831491 lt!1831962) (= lambda!202316 lambda!202299))))

(declare-fun bs!1078491 () Bool)

(assert (= bs!1078491 (and b!4669783 d!1484886)))

(assert (=> bs!1078491 (not (= lambda!202316 lambda!202233))))

(declare-fun bs!1078492 () Bool)

(assert (= bs!1078492 (and b!4669783 b!4669768)))

(assert (=> bs!1078492 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202304))))

(declare-fun bs!1078493 () Bool)

(assert (= bs!1078493 (and b!4669783 b!4669777)))

(assert (=> bs!1078493 (= (= lt!1831491 lt!1832040) (= lambda!202316 lambda!202314))))

(declare-fun bs!1078494 () Bool)

(assert (= bs!1078494 (and b!4669783 b!4669767)))

(assert (=> bs!1078494 (= (= lt!1831491 lt!1831998) (= lambda!202316 lambda!202306))))

(declare-fun bs!1078495 () Bool)

(assert (= bs!1078495 (and b!4669783 b!4669747)))

(assert (=> bs!1078495 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202296))))

(declare-fun bs!1078496 () Bool)

(assert (= bs!1078496 (and b!4669783 b!4669772)))

(assert (=> bs!1078496 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202309))))

(assert (=> bs!1078496 (= (= lt!1831491 lt!1832019) (= lambda!202316 lambda!202310))))

(declare-fun bs!1078497 () Bool)

(assert (= bs!1078497 (and b!4669783 d!1484978)))

(assert (=> bs!1078497 (= (= lt!1831491 lt!1832003) (= lambda!202316 lambda!202307))))

(declare-fun bs!1078498 () Bool)

(assert (= bs!1078498 (and b!4669783 b!4669778)))

(assert (=> bs!1078498 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202312))))

(assert (=> bs!1078489 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202297))))

(assert (=> bs!1078494 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202305))))

(assert (=> bs!1078493 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202313))))

(declare-fun bs!1078499 () Bool)

(assert (= bs!1078499 (and b!4669783 b!4669773)))

(assert (=> bs!1078499 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202316 lambda!202308))))

(declare-fun bs!1078500 () Bool)

(assert (= bs!1078500 (and b!4669783 d!1484984)))

(assert (=> bs!1078500 (= (= lt!1831491 lt!1832045) (= lambda!202316 lambda!202315))))

(declare-fun bs!1078501 () Bool)

(assert (= bs!1078501 (and b!4669783 d!1484980)))

(assert (=> bs!1078501 (= (= lt!1831491 lt!1832024) (= lambda!202316 lambda!202311))))

(assert (=> b!4669783 true))

(declare-fun bs!1078502 () Bool)

(declare-fun b!4669782 () Bool)

(assert (= bs!1078502 (and b!4669782 b!4669746)))

(declare-fun lambda!202317 () Int)

(assert (=> bs!1078502 (= (= lt!1831491 lt!1831957) (= lambda!202317 lambda!202298))))

(declare-fun bs!1078503 () Bool)

(assert (= bs!1078503 (and b!4669782 d!1484914)))

(assert (=> bs!1078503 (= (= lt!1831491 lt!1831962) (= lambda!202317 lambda!202299))))

(declare-fun bs!1078504 () Bool)

(assert (= bs!1078504 (and b!4669782 d!1484886)))

(assert (=> bs!1078504 (not (= lambda!202317 lambda!202233))))

(declare-fun bs!1078505 () Bool)

(assert (= bs!1078505 (and b!4669782 b!4669768)))

(assert (=> bs!1078505 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202304))))

(declare-fun bs!1078506 () Bool)

(assert (= bs!1078506 (and b!4669782 b!4669767)))

(assert (=> bs!1078506 (= (= lt!1831491 lt!1831998) (= lambda!202317 lambda!202306))))

(declare-fun bs!1078507 () Bool)

(assert (= bs!1078507 (and b!4669782 b!4669747)))

(assert (=> bs!1078507 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202296))))

(declare-fun bs!1078508 () Bool)

(assert (= bs!1078508 (and b!4669782 b!4669772)))

(assert (=> bs!1078508 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202309))))

(assert (=> bs!1078508 (= (= lt!1831491 lt!1832019) (= lambda!202317 lambda!202310))))

(declare-fun bs!1078509 () Bool)

(assert (= bs!1078509 (and b!4669782 d!1484978)))

(assert (=> bs!1078509 (= (= lt!1831491 lt!1832003) (= lambda!202317 lambda!202307))))

(declare-fun bs!1078510 () Bool)

(assert (= bs!1078510 (and b!4669782 b!4669783)))

(assert (=> bs!1078510 (= lambda!202317 lambda!202316)))

(declare-fun bs!1078511 () Bool)

(assert (= bs!1078511 (and b!4669782 b!4669777)))

(assert (=> bs!1078511 (= (= lt!1831491 lt!1832040) (= lambda!202317 lambda!202314))))

(declare-fun bs!1078512 () Bool)

(assert (= bs!1078512 (and b!4669782 b!4669778)))

(assert (=> bs!1078512 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202312))))

(assert (=> bs!1078502 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202297))))

(assert (=> bs!1078506 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202305))))

(assert (=> bs!1078511 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202313))))

(declare-fun bs!1078513 () Bool)

(assert (= bs!1078513 (and b!4669782 b!4669773)))

(assert (=> bs!1078513 (= (= lt!1831491 (ListMap!4630 Nil!52008)) (= lambda!202317 lambda!202308))))

(declare-fun bs!1078514 () Bool)

(assert (= bs!1078514 (and b!4669782 d!1484984)))

(assert (=> bs!1078514 (= (= lt!1831491 lt!1832045) (= lambda!202317 lambda!202315))))

(declare-fun bs!1078515 () Bool)

(assert (= bs!1078515 (and b!4669782 d!1484980)))

(assert (=> bs!1078515 (= (= lt!1831491 lt!1832024) (= lambda!202317 lambda!202311))))

(assert (=> b!4669782 true))

(declare-fun lt!1832061 () ListMap!4629)

(declare-fun lambda!202318 () Int)

(assert (=> bs!1078502 (= (= lt!1832061 lt!1831957) (= lambda!202318 lambda!202298))))

(assert (=> bs!1078503 (= (= lt!1832061 lt!1831962) (= lambda!202318 lambda!202299))))

(assert (=> b!4669782 (= (= lt!1832061 lt!1831491) (= lambda!202318 lambda!202317))))

(assert (=> bs!1078504 (not (= lambda!202318 lambda!202233))))

(assert (=> bs!1078505 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202304))))

(assert (=> bs!1078506 (= (= lt!1832061 lt!1831998) (= lambda!202318 lambda!202306))))

(assert (=> bs!1078507 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202296))))

(assert (=> bs!1078508 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202309))))

(assert (=> bs!1078508 (= (= lt!1832061 lt!1832019) (= lambda!202318 lambda!202310))))

(assert (=> bs!1078509 (= (= lt!1832061 lt!1832003) (= lambda!202318 lambda!202307))))

(assert (=> bs!1078510 (= (= lt!1832061 lt!1831491) (= lambda!202318 lambda!202316))))

(assert (=> bs!1078511 (= (= lt!1832061 lt!1832040) (= lambda!202318 lambda!202314))))

(assert (=> bs!1078512 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202312))))

(assert (=> bs!1078502 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202297))))

(assert (=> bs!1078506 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202305))))

(assert (=> bs!1078511 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202313))))

(assert (=> bs!1078513 (= (= lt!1832061 (ListMap!4630 Nil!52008)) (= lambda!202318 lambda!202308))))

(assert (=> bs!1078514 (= (= lt!1832061 lt!1832045) (= lambda!202318 lambda!202315))))

(assert (=> bs!1078515 (= (= lt!1832061 lt!1832024) (= lambda!202318 lambda!202311))))

(assert (=> b!4669782 true))

(declare-fun bs!1078516 () Bool)

(declare-fun d!1484986 () Bool)

(assert (= bs!1078516 (and d!1484986 b!4669746)))

(declare-fun lambda!202319 () Int)

(declare-fun lt!1832066 () ListMap!4629)

(assert (=> bs!1078516 (= (= lt!1832066 lt!1831957) (= lambda!202319 lambda!202298))))

(declare-fun bs!1078517 () Bool)

(assert (= bs!1078517 (and d!1484986 d!1484914)))

(assert (=> bs!1078517 (= (= lt!1832066 lt!1831962) (= lambda!202319 lambda!202299))))

(declare-fun bs!1078518 () Bool)

(assert (= bs!1078518 (and d!1484986 b!4669782)))

(assert (=> bs!1078518 (= (= lt!1832066 lt!1831491) (= lambda!202319 lambda!202317))))

(declare-fun bs!1078519 () Bool)

(assert (= bs!1078519 (and d!1484986 d!1484886)))

(assert (=> bs!1078519 (not (= lambda!202319 lambda!202233))))

(assert (=> bs!1078518 (= (= lt!1832066 lt!1832061) (= lambda!202319 lambda!202318))))

(declare-fun bs!1078520 () Bool)

(assert (= bs!1078520 (and d!1484986 b!4669768)))

(assert (=> bs!1078520 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202304))))

(declare-fun bs!1078521 () Bool)

(assert (= bs!1078521 (and d!1484986 b!4669767)))

(assert (=> bs!1078521 (= (= lt!1832066 lt!1831998) (= lambda!202319 lambda!202306))))

(declare-fun bs!1078522 () Bool)

(assert (= bs!1078522 (and d!1484986 b!4669747)))

(assert (=> bs!1078522 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202296))))

(declare-fun bs!1078523 () Bool)

(assert (= bs!1078523 (and d!1484986 b!4669772)))

(assert (=> bs!1078523 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202309))))

(assert (=> bs!1078523 (= (= lt!1832066 lt!1832019) (= lambda!202319 lambda!202310))))

(declare-fun bs!1078524 () Bool)

(assert (= bs!1078524 (and d!1484986 d!1484978)))

(assert (=> bs!1078524 (= (= lt!1832066 lt!1832003) (= lambda!202319 lambda!202307))))

(declare-fun bs!1078525 () Bool)

(assert (= bs!1078525 (and d!1484986 b!4669783)))

(assert (=> bs!1078525 (= (= lt!1832066 lt!1831491) (= lambda!202319 lambda!202316))))

(declare-fun bs!1078526 () Bool)

(assert (= bs!1078526 (and d!1484986 b!4669777)))

(assert (=> bs!1078526 (= (= lt!1832066 lt!1832040) (= lambda!202319 lambda!202314))))

(declare-fun bs!1078527 () Bool)

(assert (= bs!1078527 (and d!1484986 b!4669778)))

(assert (=> bs!1078527 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202312))))

(assert (=> bs!1078516 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202297))))

(assert (=> bs!1078521 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202305))))

(assert (=> bs!1078526 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202313))))

(declare-fun bs!1078528 () Bool)

(assert (= bs!1078528 (and d!1484986 b!4669773)))

(assert (=> bs!1078528 (= (= lt!1832066 (ListMap!4630 Nil!52008)) (= lambda!202319 lambda!202308))))

(declare-fun bs!1078529 () Bool)

(assert (= bs!1078529 (and d!1484986 d!1484984)))

(assert (=> bs!1078529 (= (= lt!1832066 lt!1832045) (= lambda!202319 lambda!202315))))

(declare-fun bs!1078530 () Bool)

(assert (= bs!1078530 (and d!1484986 d!1484980)))

(assert (=> bs!1078530 (= (= lt!1832066 lt!1832024) (= lambda!202319 lambda!202311))))

(assert (=> d!1484986 true))

(declare-fun bm!326411 () Bool)

(declare-fun c!799523 () Bool)

(declare-fun call!326416 () Bool)

(assert (=> bm!326411 (= call!326416 (forall!11104 (ite c!799523 (toList!5289 lt!1831491) oldBucket!40) (ite c!799523 lambda!202316 lambda!202318)))))

(declare-fun e!2914114 () Bool)

(assert (=> d!1484986 e!2914114))

(declare-fun res!1965578 () Bool)

(assert (=> d!1484986 (=> (not res!1965578) (not e!2914114))))

(assert (=> d!1484986 (= res!1965578 (forall!11104 oldBucket!40 lambda!202319))))

(declare-fun e!2914115 () ListMap!4629)

(assert (=> d!1484986 (= lt!1832066 e!2914115)))

(assert (=> d!1484986 (= c!799523 ((_ is Nil!52008) oldBucket!40))))

(assert (=> d!1484986 (noDuplicateKeys!1680 oldBucket!40)))

(assert (=> d!1484986 (= (addToMapMapFromBucket!1137 oldBucket!40 lt!1831491) lt!1832066)))

(declare-fun b!4669780 () Bool)

(assert (=> b!4669780 (= e!2914114 (invariantList!1330 (toList!5289 lt!1832066)))))

(declare-fun b!4669781 () Bool)

(declare-fun e!2914116 () Bool)

(assert (=> b!4669781 (= e!2914116 (forall!11104 (toList!5289 lt!1831491) lambda!202318))))

(assert (=> b!4669782 (= e!2914115 lt!1832061)))

(declare-fun lt!1832062 () ListMap!4629)

(assert (=> b!4669782 (= lt!1832062 (+!2020 lt!1831491 (h!58184 oldBucket!40)))))

(assert (=> b!4669782 (= lt!1832061 (addToMapMapFromBucket!1137 (t!359268 oldBucket!40) (+!2020 lt!1831491 (h!58184 oldBucket!40))))))

(declare-fun lt!1832060 () Unit!120908)

(declare-fun call!326417 () Unit!120908)

(assert (=> b!4669782 (= lt!1832060 call!326417)))

(assert (=> b!4669782 (forall!11104 (toList!5289 lt!1831491) lambda!202317)))

(declare-fun lt!1832063 () Unit!120908)

(assert (=> b!4669782 (= lt!1832063 lt!1832060)))

(assert (=> b!4669782 (forall!11104 (toList!5289 lt!1832062) lambda!202318)))

(declare-fun lt!1832069 () Unit!120908)

(declare-fun Unit!121006 () Unit!120908)

(assert (=> b!4669782 (= lt!1832069 Unit!121006)))

(assert (=> b!4669782 (forall!11104 (t!359268 oldBucket!40) lambda!202318)))

(declare-fun lt!1832064 () Unit!120908)

(declare-fun Unit!121007 () Unit!120908)

(assert (=> b!4669782 (= lt!1832064 Unit!121007)))

(declare-fun lt!1832065 () Unit!120908)

(declare-fun Unit!121008 () Unit!120908)

(assert (=> b!4669782 (= lt!1832065 Unit!121008)))

(declare-fun lt!1832073 () Unit!120908)

(assert (=> b!4669782 (= lt!1832073 (forallContained!3308 (toList!5289 lt!1832062) lambda!202318 (h!58184 oldBucket!40)))))

(assert (=> b!4669782 (contains!15215 lt!1832062 (_1!29877 (h!58184 oldBucket!40)))))

(declare-fun lt!1832068 () Unit!120908)

(declare-fun Unit!121009 () Unit!120908)

(assert (=> b!4669782 (= lt!1832068 Unit!121009)))

(assert (=> b!4669782 (contains!15215 lt!1832061 (_1!29877 (h!58184 oldBucket!40)))))

(declare-fun lt!1832076 () Unit!120908)

(declare-fun Unit!121010 () Unit!120908)

(assert (=> b!4669782 (= lt!1832076 Unit!121010)))

(assert (=> b!4669782 (forall!11104 oldBucket!40 lambda!202318)))

(declare-fun lt!1832071 () Unit!120908)

(declare-fun Unit!121012 () Unit!120908)

(assert (=> b!4669782 (= lt!1832071 Unit!121012)))

(declare-fun call!326418 () Bool)

(assert (=> b!4669782 call!326418))

(declare-fun lt!1832074 () Unit!120908)

(declare-fun Unit!121013 () Unit!120908)

(assert (=> b!4669782 (= lt!1832074 Unit!121013)))

(declare-fun lt!1832079 () Unit!120908)

(declare-fun Unit!121014 () Unit!120908)

(assert (=> b!4669782 (= lt!1832079 Unit!121014)))

(declare-fun lt!1832059 () Unit!120908)

(assert (=> b!4669782 (= lt!1832059 (addForallContainsKeyThenBeforeAdding!629 lt!1831491 lt!1832061 (_1!29877 (h!58184 oldBucket!40)) (_2!29877 (h!58184 oldBucket!40))))))

(assert (=> b!4669782 (forall!11104 (toList!5289 lt!1831491) lambda!202318)))

(declare-fun lt!1832077 () Unit!120908)

(assert (=> b!4669782 (= lt!1832077 lt!1832059)))

(assert (=> b!4669782 (forall!11104 (toList!5289 lt!1831491) lambda!202318)))

(declare-fun lt!1832072 () Unit!120908)

(declare-fun Unit!121015 () Unit!120908)

(assert (=> b!4669782 (= lt!1832072 Unit!121015)))

(declare-fun res!1965577 () Bool)

(assert (=> b!4669782 (= res!1965577 call!326416)))

(assert (=> b!4669782 (=> (not res!1965577) (not e!2914116))))

(assert (=> b!4669782 e!2914116))

(declare-fun lt!1832078 () Unit!120908)

(declare-fun Unit!121016 () Unit!120908)

(assert (=> b!4669782 (= lt!1832078 Unit!121016)))

(declare-fun bm!326412 () Bool)

(assert (=> bm!326412 (= call!326418 (forall!11104 (ite c!799523 (toList!5289 lt!1831491) (toList!5289 lt!1832062)) (ite c!799523 lambda!202316 lambda!202318)))))

(declare-fun bm!326413 () Bool)

(assert (=> bm!326413 (= call!326417 (lemmaContainsAllItsOwnKeys!630 lt!1831491))))

(assert (=> b!4669783 (= e!2914115 lt!1831491)))

(declare-fun lt!1832075 () Unit!120908)

(assert (=> b!4669783 (= lt!1832075 call!326417)))

(assert (=> b!4669783 call!326418))

(declare-fun lt!1832070 () Unit!120908)

(assert (=> b!4669783 (= lt!1832070 lt!1832075)))

(assert (=> b!4669783 call!326416))

(declare-fun lt!1832067 () Unit!120908)

(declare-fun Unit!121017 () Unit!120908)

(assert (=> b!4669783 (= lt!1832067 Unit!121017)))

(declare-fun b!4669784 () Bool)

(declare-fun res!1965576 () Bool)

(assert (=> b!4669784 (=> (not res!1965576) (not e!2914114))))

(assert (=> b!4669784 (= res!1965576 (forall!11104 (toList!5289 lt!1831491) lambda!202319))))

(assert (= (and d!1484986 c!799523) b!4669783))

(assert (= (and d!1484986 (not c!799523)) b!4669782))

(assert (= (and b!4669782 res!1965577) b!4669781))

(assert (= (or b!4669783 b!4669782) bm!326413))

(assert (= (or b!4669783 b!4669782) bm!326411))

(assert (= (or b!4669783 b!4669782) bm!326412))

(assert (= (and d!1484986 res!1965578) b!4669784))

(assert (= (and b!4669784 res!1965576) b!4669780))

(declare-fun m!5562633 () Bool)

(assert (=> bm!326413 m!5562633))

(declare-fun m!5562635 () Bool)

(assert (=> bm!326412 m!5562635))

(declare-fun m!5562637 () Bool)

(assert (=> b!4669782 m!5562637))

(declare-fun m!5562639 () Bool)

(assert (=> b!4669782 m!5562639))

(declare-fun m!5562641 () Bool)

(assert (=> b!4669782 m!5562641))

(assert (=> b!4669782 m!5562637))

(declare-fun m!5562643 () Bool)

(assert (=> b!4669782 m!5562643))

(declare-fun m!5562645 () Bool)

(assert (=> b!4669782 m!5562645))

(declare-fun m!5562647 () Bool)

(assert (=> b!4669782 m!5562647))

(assert (=> b!4669782 m!5562639))

(declare-fun m!5562649 () Bool)

(assert (=> b!4669782 m!5562649))

(declare-fun m!5562651 () Bool)

(assert (=> b!4669782 m!5562651))

(declare-fun m!5562653 () Bool)

(assert (=> b!4669782 m!5562653))

(declare-fun m!5562655 () Bool)

(assert (=> b!4669782 m!5562655))

(declare-fun m!5562657 () Bool)

(assert (=> b!4669782 m!5562657))

(declare-fun m!5562659 () Bool)

(assert (=> b!4669780 m!5562659))

(assert (=> b!4669781 m!5562637))

(declare-fun m!5562661 () Bool)

(assert (=> d!1484986 m!5562661))

(assert (=> d!1484986 m!5561601))

(declare-fun m!5562663 () Bool)

(assert (=> b!4669784 m!5562663))

(declare-fun m!5562665 () Bool)

(assert (=> bm!326411 m!5562665))

(assert (=> b!4669379 d!1484986))

(declare-fun bs!1078531 () Bool)

(declare-fun d!1484988 () Bool)

(assert (= bs!1078531 (and d!1484988 b!4669374)))

(declare-fun lambda!202320 () Int)

(assert (=> bs!1078531 (= lambda!202320 lambda!202178)))

(declare-fun bs!1078532 () Bool)

(assert (= bs!1078532 (and d!1484988 d!1484906)))

(assert (=> bs!1078532 (= lambda!202320 lambda!202243)))

(declare-fun bs!1078533 () Bool)

(assert (= bs!1078533 (and d!1484988 d!1484964)))

(assert (=> bs!1078533 (= lambda!202320 lambda!202302)))

(declare-fun bs!1078534 () Bool)

(assert (= bs!1078534 (and d!1484988 d!1484848)))

(assert (=> bs!1078534 (= lambda!202320 lambda!202230)))

(declare-fun bs!1078535 () Bool)

(assert (= bs!1078535 (and d!1484988 d!1484800)))

(assert (=> bs!1078535 (= lambda!202320 lambda!202220)))

(declare-fun bs!1078536 () Bool)

(assert (= bs!1078536 (and d!1484988 d!1484968)))

(assert (=> bs!1078536 (= lambda!202320 lambda!202303)))

(declare-fun lt!1832080 () ListMap!4629)

(assert (=> d!1484988 (invariantList!1330 (toList!5289 lt!1832080))))

(declare-fun e!2914117 () ListMap!4629)

(assert (=> d!1484988 (= lt!1832080 e!2914117)))

(declare-fun c!799524 () Bool)

(assert (=> d!1484988 (= c!799524 ((_ is Cons!52009) Nil!52009))))

(assert (=> d!1484988 (forall!11103 Nil!52009 lambda!202320)))

(assert (=> d!1484988 (= (extractMap!1736 Nil!52009) lt!1832080)))

(declare-fun b!4669785 () Bool)

(assert (=> b!4669785 (= e!2914117 (addToMapMapFromBucket!1137 (_2!29878 (h!58185 Nil!52009)) (extractMap!1736 (t!359269 Nil!52009))))))

(declare-fun b!4669786 () Bool)

(assert (=> b!4669786 (= e!2914117 (ListMap!4630 Nil!52008))))

(assert (= (and d!1484988 c!799524) b!4669785))

(assert (= (and d!1484988 (not c!799524)) b!4669786))

(declare-fun m!5562667 () Bool)

(assert (=> d!1484988 m!5562667))

(declare-fun m!5562669 () Bool)

(assert (=> d!1484988 m!5562669))

(declare-fun m!5562671 () Bool)

(assert (=> b!4669785 m!5562671))

(assert (=> b!4669785 m!5562671))

(declare-fun m!5562673 () Bool)

(assert (=> b!4669785 m!5562673))

(assert (=> b!4669379 d!1484988))

(declare-fun bs!1078537 () Bool)

(declare-fun d!1484990 () Bool)

(assert (= bs!1078537 (and d!1484990 b!4669746)))

(declare-fun lambda!202321 () Int)

(assert (=> bs!1078537 (not (= lambda!202321 lambda!202298))))

(declare-fun bs!1078538 () Bool)

(assert (= bs!1078538 (and d!1484990 d!1484986)))

(assert (=> bs!1078538 (not (= lambda!202321 lambda!202319))))

(declare-fun bs!1078539 () Bool)

(assert (= bs!1078539 (and d!1484990 d!1484914)))

(assert (=> bs!1078539 (not (= lambda!202321 lambda!202299))))

(declare-fun bs!1078540 () Bool)

(assert (= bs!1078540 (and d!1484990 b!4669782)))

(assert (=> bs!1078540 (not (= lambda!202321 lambda!202317))))

(declare-fun bs!1078541 () Bool)

(assert (= bs!1078541 (and d!1484990 d!1484886)))

(assert (=> bs!1078541 (= lambda!202321 lambda!202233)))

(assert (=> bs!1078540 (not (= lambda!202321 lambda!202318))))

(declare-fun bs!1078542 () Bool)

(assert (= bs!1078542 (and d!1484990 b!4669768)))

(assert (=> bs!1078542 (not (= lambda!202321 lambda!202304))))

(declare-fun bs!1078543 () Bool)

(assert (= bs!1078543 (and d!1484990 b!4669767)))

(assert (=> bs!1078543 (not (= lambda!202321 lambda!202306))))

(declare-fun bs!1078544 () Bool)

(assert (= bs!1078544 (and d!1484990 b!4669747)))

(assert (=> bs!1078544 (not (= lambda!202321 lambda!202296))))

(declare-fun bs!1078545 () Bool)

(assert (= bs!1078545 (and d!1484990 b!4669772)))

(assert (=> bs!1078545 (not (= lambda!202321 lambda!202309))))

(assert (=> bs!1078545 (not (= lambda!202321 lambda!202310))))

(declare-fun bs!1078546 () Bool)

(assert (= bs!1078546 (and d!1484990 d!1484978)))

(assert (=> bs!1078546 (not (= lambda!202321 lambda!202307))))

(declare-fun bs!1078547 () Bool)

(assert (= bs!1078547 (and d!1484990 b!4669783)))

(assert (=> bs!1078547 (not (= lambda!202321 lambda!202316))))

(declare-fun bs!1078548 () Bool)

(assert (= bs!1078548 (and d!1484990 b!4669777)))

(assert (=> bs!1078548 (not (= lambda!202321 lambda!202314))))

(declare-fun bs!1078549 () Bool)

(assert (= bs!1078549 (and d!1484990 b!4669778)))

(assert (=> bs!1078549 (not (= lambda!202321 lambda!202312))))

(assert (=> bs!1078537 (not (= lambda!202321 lambda!202297))))

(assert (=> bs!1078543 (not (= lambda!202321 lambda!202305))))

(assert (=> bs!1078548 (not (= lambda!202321 lambda!202313))))

(declare-fun bs!1078550 () Bool)

(assert (= bs!1078550 (and d!1484990 b!4669773)))

(assert (=> bs!1078550 (not (= lambda!202321 lambda!202308))))

(declare-fun bs!1078551 () Bool)

(assert (= bs!1078551 (and d!1484990 d!1484984)))

(assert (=> bs!1078551 (not (= lambda!202321 lambda!202315))))

(declare-fun bs!1078552 () Bool)

(assert (= bs!1078552 (and d!1484990 d!1484980)))

(assert (=> bs!1078552 (not (= lambda!202321 lambda!202311))))

(assert (=> d!1484990 true))

(assert (=> d!1484990 true))

(assert (=> d!1484990 (= (allKeysSameHash!1534 oldBucket!40 hash!414 hashF!1389) (forall!11104 oldBucket!40 lambda!202321))))

(declare-fun bs!1078553 () Bool)

(assert (= bs!1078553 d!1484990))

(declare-fun m!5562675 () Bool)

(assert (=> bs!1078553 m!5562675))

(assert (=> b!4669381 d!1484990))

(declare-fun d!1484992 () Bool)

(declare-fun res!1965579 () Bool)

(declare-fun e!2914118 () Bool)

(assert (=> d!1484992 (=> res!1965579 e!2914118)))

(assert (=> d!1484992 (= res!1965579 (not ((_ is Cons!52008) newBucket!224)))))

(assert (=> d!1484992 (= (noDuplicateKeys!1680 newBucket!224) e!2914118)))

(declare-fun b!4669787 () Bool)

(declare-fun e!2914119 () Bool)

(assert (=> b!4669787 (= e!2914118 e!2914119)))

(declare-fun res!1965580 () Bool)

(assert (=> b!4669787 (=> (not res!1965580) (not e!2914119))))

(assert (=> b!4669787 (= res!1965580 (not (containsKey!2822 (t!359268 newBucket!224) (_1!29877 (h!58184 newBucket!224)))))))

(declare-fun b!4669788 () Bool)

(assert (=> b!4669788 (= e!2914119 (noDuplicateKeys!1680 (t!359268 newBucket!224)))))

(assert (= (and d!1484992 (not res!1965579)) b!4669787))

(assert (= (and b!4669787 res!1965580) b!4669788))

(declare-fun m!5562677 () Bool)

(assert (=> b!4669787 m!5562677))

(declare-fun m!5562679 () Bool)

(assert (=> b!4669788 m!5562679))

(assert (=> b!4669370 d!1484992))

(declare-fun d!1484994 () Bool)

(assert (=> d!1484994 (= (eq!935 lt!1831489 lt!1831488) (= (content!9064 (toList!5289 lt!1831489)) (content!9064 (toList!5289 lt!1831488))))))

(declare-fun bs!1078554 () Bool)

(assert (= bs!1078554 d!1484994))

(declare-fun m!5562681 () Bool)

(assert (=> bs!1078554 m!5562681))

(declare-fun m!5562683 () Bool)

(assert (=> bs!1078554 m!5562683))

(assert (=> b!4669380 d!1484994))

(declare-fun d!1484996 () Bool)

(assert (=> d!1484996 (= (eq!935 lt!1831475 lt!1831489) (= (content!9064 (toList!5289 lt!1831475)) (content!9064 (toList!5289 lt!1831489))))))

(declare-fun bs!1078555 () Bool)

(assert (= bs!1078555 d!1484996))

(declare-fun m!5562685 () Bool)

(assert (=> bs!1078555 m!5562685))

(assert (=> bs!1078555 m!5562681))

(assert (=> b!4669380 d!1484996))

(declare-fun d!1484998 () Bool)

(declare-fun e!2914120 () Bool)

(assert (=> d!1484998 e!2914120))

(declare-fun res!1965581 () Bool)

(assert (=> d!1484998 (=> (not res!1965581) (not e!2914120))))

(declare-fun lt!1832081 () ListMap!4629)

(assert (=> d!1484998 (= res!1965581 (not (contains!15215 lt!1832081 key!4968)))))

(assert (=> d!1484998 (= lt!1832081 (ListMap!4630 (removePresrvNoDuplicatedKeys!309 (toList!5289 lt!1831462) key!4968)))))

(assert (=> d!1484998 (= (-!620 lt!1831462 key!4968) lt!1832081)))

(declare-fun b!4669789 () Bool)

(assert (=> b!4669789 (= e!2914120 (= ((_ map and) (content!9065 (keys!18460 lt!1831462)) ((_ map not) (store ((as const (Array K!13350 Bool)) false) key!4968 true))) (content!9065 (keys!18460 lt!1832081))))))

(assert (= (and d!1484998 res!1965581) b!4669789))

(declare-fun m!5562687 () Bool)

(assert (=> d!1484998 m!5562687))

(declare-fun m!5562689 () Bool)

(assert (=> d!1484998 m!5562689))

(declare-fun m!5562691 () Bool)

(assert (=> b!4669789 m!5562691))

(declare-fun m!5562693 () Bool)

(assert (=> b!4669789 m!5562693))

(assert (=> b!4669789 m!5561685))

(declare-fun m!5562695 () Bool)

(assert (=> b!4669789 m!5562695))

(assert (=> b!4669789 m!5562691))

(assert (=> b!4669789 m!5562695))

(declare-fun m!5562697 () Bool)

(assert (=> b!4669789 m!5562697))

(assert (=> b!4669380 d!1484998))

(declare-fun d!1485000 () Bool)

(assert (=> d!1485000 (eq!935 (-!620 lt!1831467 key!4968) (-!620 lt!1831462 key!4968))))

(declare-fun lt!1832084 () Unit!120908)

(declare-fun choose!32312 (ListMap!4629 ListMap!4629 K!13350) Unit!120908)

(assert (=> d!1485000 (= lt!1832084 (choose!32312 lt!1831467 lt!1831462 key!4968))))

(assert (=> d!1485000 (eq!935 lt!1831467 lt!1831462)))

(assert (=> d!1485000 (= (lemmaRemovePreservesEq!66 lt!1831467 lt!1831462 key!4968) lt!1832084)))

(declare-fun bs!1078556 () Bool)

(assert (= bs!1078556 d!1485000))

(assert (=> bs!1078556 m!5561557))

(assert (=> bs!1078556 m!5561595))

(assert (=> bs!1078556 m!5561595))

(assert (=> bs!1078556 m!5561557))

(declare-fun m!5562699 () Bool)

(assert (=> bs!1078556 m!5562699))

(declare-fun m!5562701 () Bool)

(assert (=> bs!1078556 m!5562701))

(declare-fun m!5562703 () Bool)

(assert (=> bs!1078556 m!5562703))

(assert (=> b!4669380 d!1485000))

(declare-fun b!4669790 () Bool)

(declare-fun e!2914121 () Bool)

(assert (=> b!4669790 (= e!2914121 (not (contains!15221 (keys!18460 lt!1831462) key!4968)))))

(declare-fun b!4669791 () Bool)

(declare-fun e!2914125 () Bool)

(declare-fun e!2914126 () Bool)

(assert (=> b!4669791 (= e!2914125 e!2914126)))

(declare-fun res!1965582 () Bool)

(assert (=> b!4669791 (=> (not res!1965582) (not e!2914126))))

(assert (=> b!4669791 (= res!1965582 (isDefined!9189 (getValueByKey!1672 (toList!5289 lt!1831462) key!4968)))))

(declare-fun b!4669792 () Bool)

(declare-fun e!2914124 () List!52135)

(assert (=> b!4669792 (= e!2914124 (keys!18460 lt!1831462))))

(declare-fun d!1485002 () Bool)

(assert (=> d!1485002 e!2914125))

(declare-fun res!1965584 () Bool)

(assert (=> d!1485002 (=> res!1965584 e!2914125)))

(assert (=> d!1485002 (= res!1965584 e!2914121)))

(declare-fun res!1965583 () Bool)

(assert (=> d!1485002 (=> (not res!1965583) (not e!2914121))))

(declare-fun lt!1832088 () Bool)

(assert (=> d!1485002 (= res!1965583 (not lt!1832088))))

(declare-fun lt!1832090 () Bool)

(assert (=> d!1485002 (= lt!1832088 lt!1832090)))

(declare-fun lt!1832092 () Unit!120908)

(declare-fun e!2914122 () Unit!120908)

(assert (=> d!1485002 (= lt!1832092 e!2914122)))

(declare-fun c!799526 () Bool)

(assert (=> d!1485002 (= c!799526 lt!1832090)))

(assert (=> d!1485002 (= lt!1832090 (containsKey!2826 (toList!5289 lt!1831462) key!4968))))

(assert (=> d!1485002 (= (contains!15215 lt!1831462 key!4968) lt!1832088)))

(declare-fun b!4669793 () Bool)

(declare-fun e!2914123 () Unit!120908)

(declare-fun Unit!121028 () Unit!120908)

(assert (=> b!4669793 (= e!2914123 Unit!121028)))

(declare-fun b!4669794 () Bool)

(assert (=> b!4669794 (= e!2914124 (getKeysList!781 (toList!5289 lt!1831462)))))

(declare-fun b!4669795 () Bool)

(assert (=> b!4669795 (= e!2914126 (contains!15221 (keys!18460 lt!1831462) key!4968))))

(declare-fun b!4669796 () Bool)

(assert (=> b!4669796 (= e!2914122 e!2914123)))

(declare-fun c!799527 () Bool)

(declare-fun call!326419 () Bool)

(assert (=> b!4669796 (= c!799527 call!326419)))

(declare-fun bm!326414 () Bool)

(assert (=> bm!326414 (= call!326419 (contains!15221 e!2914124 key!4968))))

(declare-fun c!799525 () Bool)

(assert (=> bm!326414 (= c!799525 c!799526)))

(declare-fun b!4669797 () Bool)

(assert (=> b!4669797 false))

(declare-fun lt!1832091 () Unit!120908)

(declare-fun lt!1832089 () Unit!120908)

(assert (=> b!4669797 (= lt!1832091 lt!1832089)))

(assert (=> b!4669797 (containsKey!2826 (toList!5289 lt!1831462) key!4968)))

(assert (=> b!4669797 (= lt!1832089 (lemmaInGetKeysListThenContainsKey!780 (toList!5289 lt!1831462) key!4968))))

(declare-fun Unit!121029 () Unit!120908)

(assert (=> b!4669797 (= e!2914123 Unit!121029)))

(declare-fun b!4669798 () Bool)

(declare-fun lt!1832086 () Unit!120908)

(assert (=> b!4669798 (= e!2914122 lt!1832086)))

(declare-fun lt!1832087 () Unit!120908)

(assert (=> b!4669798 (= lt!1832087 (lemmaContainsKeyImpliesGetValueByKeyDefined!1576 (toList!5289 lt!1831462) key!4968))))

(assert (=> b!4669798 (isDefined!9189 (getValueByKey!1672 (toList!5289 lt!1831462) key!4968))))

(declare-fun lt!1832085 () Unit!120908)

(assert (=> b!4669798 (= lt!1832085 lt!1832087)))

(assert (=> b!4669798 (= lt!1832086 (lemmaInListThenGetKeysListContains!776 (toList!5289 lt!1831462) key!4968))))

(assert (=> b!4669798 call!326419))

(assert (= (and d!1485002 c!799526) b!4669798))

(assert (= (and d!1485002 (not c!799526)) b!4669796))

(assert (= (and b!4669796 c!799527) b!4669797))

(assert (= (and b!4669796 (not c!799527)) b!4669793))

(assert (= (or b!4669798 b!4669796) bm!326414))

(assert (= (and bm!326414 c!799525) b!4669794))

(assert (= (and bm!326414 (not c!799525)) b!4669792))

(assert (= (and d!1485002 res!1965583) b!4669790))

(assert (= (and d!1485002 (not res!1965584)) b!4669791))

(assert (= (and b!4669791 res!1965582) b!4669795))

(declare-fun m!5562705 () Bool)

(assert (=> d!1485002 m!5562705))

(assert (=> b!4669795 m!5562691))

(assert (=> b!4669795 m!5562691))

(declare-fun m!5562707 () Bool)

(assert (=> b!4669795 m!5562707))

(assert (=> b!4669790 m!5562691))

(assert (=> b!4669790 m!5562691))

(assert (=> b!4669790 m!5562707))

(declare-fun m!5562709 () Bool)

(assert (=> bm!326414 m!5562709))

(assert (=> b!4669797 m!5562705))

(declare-fun m!5562711 () Bool)

(assert (=> b!4669797 m!5562711))

(declare-fun m!5562713 () Bool)

(assert (=> b!4669791 m!5562713))

(assert (=> b!4669791 m!5562713))

(declare-fun m!5562715 () Bool)

(assert (=> b!4669791 m!5562715))

(assert (=> b!4669792 m!5562691))

(declare-fun m!5562717 () Bool)

(assert (=> b!4669794 m!5562717))

(declare-fun m!5562719 () Bool)

(assert (=> b!4669798 m!5562719))

(assert (=> b!4669798 m!5562713))

(assert (=> b!4669798 m!5562713))

(assert (=> b!4669798 m!5562715))

(declare-fun m!5562721 () Bool)

(assert (=> b!4669798 m!5562721))

(assert (=> b!4669382 d!1485002))

(declare-fun bs!1078557 () Bool)

(declare-fun d!1485004 () Bool)

(assert (= bs!1078557 (and d!1485004 d!1484988)))

(declare-fun lambda!202322 () Int)

(assert (=> bs!1078557 (= lambda!202322 lambda!202320)))

(declare-fun bs!1078558 () Bool)

(assert (= bs!1078558 (and d!1485004 b!4669374)))

(assert (=> bs!1078558 (= lambda!202322 lambda!202178)))

(declare-fun bs!1078559 () Bool)

(assert (= bs!1078559 (and d!1485004 d!1484906)))

(assert (=> bs!1078559 (= lambda!202322 lambda!202243)))

(declare-fun bs!1078560 () Bool)

(assert (= bs!1078560 (and d!1485004 d!1484964)))

(assert (=> bs!1078560 (= lambda!202322 lambda!202302)))

(declare-fun bs!1078561 () Bool)

(assert (= bs!1078561 (and d!1485004 d!1484848)))

(assert (=> bs!1078561 (= lambda!202322 lambda!202230)))

(declare-fun bs!1078562 () Bool)

(assert (= bs!1078562 (and d!1485004 d!1484800)))

(assert (=> bs!1078562 (= lambda!202322 lambda!202220)))

(declare-fun bs!1078563 () Bool)

(assert (= bs!1078563 (and d!1485004 d!1484968)))

(assert (=> bs!1078563 (= lambda!202322 lambda!202303)))

(declare-fun lt!1832093 () ListMap!4629)

(assert (=> d!1485004 (invariantList!1330 (toList!5289 lt!1832093))))

(declare-fun e!2914127 () ListMap!4629)

(assert (=> d!1485004 (= lt!1832093 e!2914127)))

(declare-fun c!799528 () Bool)

(assert (=> d!1485004 (= c!799528 ((_ is Cons!52009) lt!1831480))))

(assert (=> d!1485004 (forall!11103 lt!1831480 lambda!202322)))

(assert (=> d!1485004 (= (extractMap!1736 lt!1831480) lt!1832093)))

(declare-fun b!4669799 () Bool)

(assert (=> b!4669799 (= e!2914127 (addToMapMapFromBucket!1137 (_2!29878 (h!58185 lt!1831480)) (extractMap!1736 (t!359269 lt!1831480))))))

(declare-fun b!4669800 () Bool)

(assert (=> b!4669800 (= e!2914127 (ListMap!4630 Nil!52008))))

(assert (= (and d!1485004 c!799528) b!4669799))

(assert (= (and d!1485004 (not c!799528)) b!4669800))

(declare-fun m!5562723 () Bool)

(assert (=> d!1485004 m!5562723))

(declare-fun m!5562725 () Bool)

(assert (=> d!1485004 m!5562725))

(declare-fun m!5562727 () Bool)

(assert (=> b!4669799 m!5562727))

(assert (=> b!4669799 m!5562727))

(declare-fun m!5562729 () Bool)

(assert (=> b!4669799 m!5562729))

(assert (=> b!4669382 d!1485004))

(declare-fun d!1485006 () Bool)

(assert (=> d!1485006 (= (eq!935 lt!1831474 (+!2020 lt!1831484 lt!1831469)) (= (content!9064 (toList!5289 lt!1831474)) (content!9064 (toList!5289 (+!2020 lt!1831484 lt!1831469)))))))

(declare-fun bs!1078564 () Bool)

(assert (= bs!1078564 d!1485006))

(assert (=> bs!1078564 m!5562079))

(declare-fun m!5562731 () Bool)

(assert (=> bs!1078564 m!5562731))

(assert (=> b!4669371 d!1485006))

(declare-fun d!1485008 () Bool)

(declare-fun e!2914128 () Bool)

(assert (=> d!1485008 e!2914128))

(declare-fun res!1965585 () Bool)

(assert (=> d!1485008 (=> (not res!1965585) (not e!2914128))))

(declare-fun lt!1832096 () ListMap!4629)

(assert (=> d!1485008 (= res!1965585 (contains!15215 lt!1832096 (_1!29877 lt!1831469)))))

(declare-fun lt!1832094 () List!52132)

(assert (=> d!1485008 (= lt!1832096 (ListMap!4630 lt!1832094))))

(declare-fun lt!1832097 () Unit!120908)

(declare-fun lt!1832095 () Unit!120908)

(assert (=> d!1485008 (= lt!1832097 lt!1832095)))

(assert (=> d!1485008 (= (getValueByKey!1672 lt!1832094 (_1!29877 lt!1831469)) (Some!11921 (_2!29877 lt!1831469)))))

(assert (=> d!1485008 (= lt!1832095 (lemmaContainsTupThenGetReturnValue!948 lt!1832094 (_1!29877 lt!1831469) (_2!29877 lt!1831469)))))

(assert (=> d!1485008 (= lt!1832094 (insertNoDuplicatedKeys!456 (toList!5289 lt!1831484) (_1!29877 lt!1831469) (_2!29877 lt!1831469)))))

(assert (=> d!1485008 (= (+!2020 lt!1831484 lt!1831469) lt!1832096)))

(declare-fun b!4669801 () Bool)

(declare-fun res!1965586 () Bool)

(assert (=> b!4669801 (=> (not res!1965586) (not e!2914128))))

(assert (=> b!4669801 (= res!1965586 (= (getValueByKey!1672 (toList!5289 lt!1832096) (_1!29877 lt!1831469)) (Some!11921 (_2!29877 lt!1831469))))))

(declare-fun b!4669802 () Bool)

(assert (=> b!4669802 (= e!2914128 (contains!15220 (toList!5289 lt!1832096) lt!1831469))))

(assert (= (and d!1485008 res!1965585) b!4669801))

(assert (= (and b!4669801 res!1965586) b!4669802))

(declare-fun m!5562733 () Bool)

(assert (=> d!1485008 m!5562733))

(declare-fun m!5562735 () Bool)

(assert (=> d!1485008 m!5562735))

(declare-fun m!5562737 () Bool)

(assert (=> d!1485008 m!5562737))

(declare-fun m!5562739 () Bool)

(assert (=> d!1485008 m!5562739))

(declare-fun m!5562741 () Bool)

(assert (=> b!4669801 m!5562741))

(declare-fun m!5562743 () Bool)

(assert (=> b!4669802 m!5562743))

(assert (=> b!4669371 d!1485008))

(declare-fun bs!1078565 () Bool)

(declare-fun d!1485010 () Bool)

(assert (= bs!1078565 (and d!1485010 d!1484988)))

(declare-fun lambda!202323 () Int)

(assert (=> bs!1078565 (= lambda!202323 lambda!202320)))

(declare-fun bs!1078566 () Bool)

(assert (= bs!1078566 (and d!1485010 b!4669374)))

(assert (=> bs!1078566 (= lambda!202323 lambda!202178)))

(declare-fun bs!1078567 () Bool)

(assert (= bs!1078567 (and d!1485010 d!1484906)))

(assert (=> bs!1078567 (= lambda!202323 lambda!202243)))

(declare-fun bs!1078568 () Bool)

(assert (= bs!1078568 (and d!1485010 d!1484964)))

(assert (=> bs!1078568 (= lambda!202323 lambda!202302)))

(declare-fun bs!1078569 () Bool)

(assert (= bs!1078569 (and d!1485010 d!1484848)))

(assert (=> bs!1078569 (= lambda!202323 lambda!202230)))

(declare-fun bs!1078570 () Bool)

(assert (= bs!1078570 (and d!1485010 d!1485004)))

(assert (=> bs!1078570 (= lambda!202323 lambda!202322)))

(declare-fun bs!1078571 () Bool)

(assert (= bs!1078571 (and d!1485010 d!1484800)))

(assert (=> bs!1078571 (= lambda!202323 lambda!202220)))

(declare-fun bs!1078572 () Bool)

(assert (= bs!1078572 (and d!1485010 d!1484968)))

(assert (=> bs!1078572 (= lambda!202323 lambda!202303)))

(declare-fun lt!1832098 () ListMap!4629)

(assert (=> d!1485010 (invariantList!1330 (toList!5289 lt!1832098))))

(declare-fun e!2914129 () ListMap!4629)

(assert (=> d!1485010 (= lt!1832098 e!2914129)))

(declare-fun c!799529 () Bool)

(assert (=> d!1485010 (= c!799529 ((_ is Cons!52009) (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009)))))

(assert (=> d!1485010 (forall!11103 (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009) lambda!202323)))

(assert (=> d!1485010 (= (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009)) lt!1832098)))

(declare-fun b!4669803 () Bool)

(assert (=> b!4669803 (= e!2914129 (addToMapMapFromBucket!1137 (_2!29878 (h!58185 (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009))) (extractMap!1736 (t!359269 (Cons!52009 (tuple2!53169 hash!414 lt!1831464) Nil!52009)))))))

(declare-fun b!4669804 () Bool)

(assert (=> b!4669804 (= e!2914129 (ListMap!4630 Nil!52008))))

(assert (= (and d!1485010 c!799529) b!4669803))

(assert (= (and d!1485010 (not c!799529)) b!4669804))

(declare-fun m!5562745 () Bool)

(assert (=> d!1485010 m!5562745))

(declare-fun m!5562747 () Bool)

(assert (=> d!1485010 m!5562747))

(declare-fun m!5562749 () Bool)

(assert (=> b!4669803 m!5562749))

(assert (=> b!4669803 m!5562749))

(declare-fun m!5562751 () Bool)

(assert (=> b!4669803 m!5562751))

(assert (=> b!4669371 d!1485010))

(declare-fun bs!1078573 () Bool)

(declare-fun d!1485012 () Bool)

(assert (= bs!1078573 (and d!1485012 b!4669374)))

(declare-fun lambda!202324 () Int)

(assert (=> bs!1078573 (= lambda!202324 lambda!202178)))

(declare-fun bs!1078574 () Bool)

(assert (= bs!1078574 (and d!1485012 d!1484906)))

(assert (=> bs!1078574 (= lambda!202324 lambda!202243)))

(declare-fun bs!1078575 () Bool)

(assert (= bs!1078575 (and d!1485012 d!1484964)))

(assert (=> bs!1078575 (= lambda!202324 lambda!202302)))

(declare-fun bs!1078576 () Bool)

(assert (= bs!1078576 (and d!1485012 d!1484848)))

(assert (=> bs!1078576 (= lambda!202324 lambda!202230)))

(declare-fun bs!1078577 () Bool)

(assert (= bs!1078577 (and d!1485012 d!1485004)))

(assert (=> bs!1078577 (= lambda!202324 lambda!202322)))

(declare-fun bs!1078578 () Bool)

(assert (= bs!1078578 (and d!1485012 d!1485010)))

(assert (=> bs!1078578 (= lambda!202324 lambda!202323)))

(declare-fun bs!1078579 () Bool)

(assert (= bs!1078579 (and d!1485012 d!1484988)))

(assert (=> bs!1078579 (= lambda!202324 lambda!202320)))

(declare-fun bs!1078580 () Bool)

(assert (= bs!1078580 (and d!1485012 d!1484800)))

(assert (=> bs!1078580 (= lambda!202324 lambda!202220)))

(declare-fun bs!1078581 () Bool)

(assert (= bs!1078581 (and d!1485012 d!1484968)))

(assert (=> bs!1078581 (= lambda!202324 lambda!202303)))

(declare-fun lt!1832099 () ListMap!4629)

(assert (=> d!1485012 (invariantList!1330 (toList!5289 lt!1832099))))

(declare-fun e!2914130 () ListMap!4629)

(assert (=> d!1485012 (= lt!1832099 e!2914130)))

(declare-fun c!799530 () Bool)

(assert (=> d!1485012 (= c!799530 ((_ is Cons!52009) (Cons!52009 (tuple2!53169 hash!414 newBucket!224) Nil!52009)))))

(assert (=> d!1485012 (forall!11103 (Cons!52009 (tuple2!53169 hash!414 newBucket!224) Nil!52009) lambda!202324)))

(assert (=> d!1485012 (= (extractMap!1736 (Cons!52009 (tuple2!53169 hash!414 newBucket!224) Nil!52009)) lt!1832099)))

(declare-fun b!4669805 () Bool)

(assert (=> b!4669805 (= e!2914130 (addToMapMapFromBucket!1137 (_2!29878 (h!58185 (Cons!52009 (tuple2!53169 hash!414 newBucket!224) Nil!52009))) (extractMap!1736 (t!359269 (Cons!52009 (tuple2!53169 hash!414 newBucket!224) Nil!52009)))))))

(declare-fun b!4669806 () Bool)

(assert (=> b!4669806 (= e!2914130 (ListMap!4630 Nil!52008))))

(assert (= (and d!1485012 c!799530) b!4669805))

(assert (= (and d!1485012 (not c!799530)) b!4669806))

(declare-fun m!5562753 () Bool)

(assert (=> d!1485012 m!5562753))

(declare-fun m!5562755 () Bool)

(assert (=> d!1485012 m!5562755))

(declare-fun m!5562757 () Bool)

(assert (=> b!4669805 m!5562757))

(assert (=> b!4669805 m!5562757))

(declare-fun m!5562759 () Bool)

(assert (=> b!4669805 m!5562759))

(assert (=> b!4669371 d!1485012))

(declare-fun e!2914133 () Bool)

(declare-fun tp!1343718 () Bool)

(declare-fun b!4669811 () Bool)

(assert (=> b!4669811 (= e!2914133 (and tp_is_empty!30013 tp_is_empty!30015 tp!1343718))))

(assert (=> b!4669372 (= tp!1343710 e!2914133)))

(assert (= (and b!4669372 ((_ is Cons!52008) (t!359268 oldBucket!40))) b!4669811))

(declare-fun b!4669812 () Bool)

(declare-fun e!2914134 () Bool)

(declare-fun tp!1343719 () Bool)

(assert (=> b!4669812 (= e!2914134 (and tp_is_empty!30013 tp_is_empty!30015 tp!1343719))))

(assert (=> b!4669375 (= tp!1343711 e!2914134)))

(assert (= (and b!4669375 ((_ is Cons!52008) (t!359268 newBucket!224))) b!4669812))

(declare-fun b_lambda!176255 () Bool)

(assert (= b_lambda!176249 (or b!4669374 b_lambda!176255)))

(declare-fun bs!1078582 () Bool)

(declare-fun d!1485014 () Bool)

(assert (= bs!1078582 (and d!1485014 b!4669374)))

(assert (=> bs!1078582 (= (dynLambda!21640 lambda!202178 lt!1831468) (noDuplicateKeys!1680 (_2!29878 lt!1831468)))))

(declare-fun m!5562761 () Bool)

(assert (=> bs!1078582 m!5562761))

(assert (=> d!1484830 d!1485014))

(check-sat (not b!4669795) (not b!4669802) (not b!4669774) (not d!1484766) (not b!4669789) (not d!1485010) (not bm!326408) (not b!4669782) (not b!4669801) (not b!4669798) (not b!4669803) (not bm!326379) (not b!4669767) (not d!1485008) (not b!4669409) (not b!4669650) (not d!1484770) (not b!4669401) (not d!1485000) (not d!1484898) (not b!4669746) (not b!4669748) (not d!1484890) (not d!1484972) (not bm!326403) (not b!4669583) (not b!4669757) (not b!4669763) (not b!4669608) (not b!4669762) (not d!1484978) (not b!4669600) (not d!1484966) (not d!1485002) (not b!4669496) (not bm!326409) (not bm!326401) (not bm!326399) (not bm!326412) (not b!4669594) (not bs!1078582) (not d!1484906) (not b!4669799) (not b!4669759) (not b!4669447) (not d!1484970) (not d!1484976) (not d!1484968) (not b!4669497) (not d!1484904) (not d!1484882) (not b!4669744) (not b!4669812) (not b!4669770) (not d!1484840) (not d!1484886) (not b!4669745) (not d!1484884) (not d!1484914) (not b!4669779) (not d!1485006) (not b!4669792) (not b!4669772) (not b!4669440) (not bm!326410) (not d!1485012) (not bm!326411) (not d!1484844) (not d!1484800) (not d!1484768) (not b!4669646) (not b!4669581) (not b!4669458) (not b!4669615) (not b!4669784) (not bm!326407) (not d!1484996) (not b!4669515) (not b!4669805) (not d!1484980) (not b!4669811) (not d!1484830) (not b!4669534) (not b!4669438) (not d!1484772) (not d!1484960) (not b!4669402) (not d!1484784) (not b!4669764) (not b!4669785) (not d!1484888) (not bm!326406) (not d!1484764) (not bm!326400) (not b!4669769) (not b!4669439) tp_is_empty!30015 (not bm!326405) (not b!4669794) (not b!4669766) (not d!1484794) (not d!1484786) (not b!4669790) (not b!4669582) (not b!4669775) (not b!4669647) (not d!1484990) (not d!1484788) (not d!1484806) (not b!4669758) (not bm!326414) (not b!4669651) (not d!1484988) (not bm!326404) (not d!1484790) (not b!4669797) (not b!4669614) (not d!1484838) (not b!4669761) (not bm!326402) (not b!4669776) tp_is_empty!30013 (not d!1484994) (not d!1484984) (not b!4669765) (not b!4669449) (not b!4669777) (not b!4669648) (not b!4669494) (not b!4669781) (not b!4669437) (not d!1484998) (not b!4669597) (not d!1484848) (not d!1484876) (not b!4669498) (not b!4669596) (not b_lambda!176255) (not b!4669755) (not b!4669495) (not d!1485004) (not b!4669513) (not b!4669787) (not d!1484964) (not d!1484958) (not bm!326413) (not d!1484880) (not d!1484986) (not b!4669791) (not b!4669780) (not b!4669580) (not b!4669771) (not d!1484846) (not b!4669788) (not b!4669653) (not b!4669654) (not d!1484878) (not d!1484974))
(check-sat)
