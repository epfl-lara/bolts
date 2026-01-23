; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!483404 () Bool)

(assert start!483404)

(declare-fun b!4738434 () Bool)

(declare-fun res!2007128 () Bool)

(declare-fun e!2955636 () Bool)

(assert (=> b!4738434 (=> (not res!2007128) (not e!2955636))))

(declare-datatypes ((K!14285 0))(
  ( (K!14286 (val!19699 Int)) )
))
(declare-fun key!4653 () K!14285)

(declare-datatypes ((V!14531 0))(
  ( (V!14532 (val!19700 Int)) )
))
(declare-datatypes ((tuple2!54610 0))(
  ( (tuple2!54611 (_1!30599 K!14285) (_2!30599 V!14531)) )
))
(declare-datatypes ((List!53065 0))(
  ( (Nil!52941) (Cons!52941 (h!59320 tuple2!54610) (t!360357 List!53065)) )
))
(declare-fun newBucket!218 () List!53065)

(declare-fun oldBucket!34 () List!53065)

(declare-fun removePairForKey!1649 (List!53065 K!14285) List!53065)

(assert (=> b!4738434 (= res!2007128 (= (removePairForKey!1649 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4738435 () Bool)

(declare-fun res!2007134 () Bool)

(assert (=> b!4738435 (=> (not res!2007134) (not e!2955636))))

(declare-fun noDuplicateKeys!2054 (List!53065) Bool)

(assert (=> b!4738435 (= res!2007134 (noDuplicateKeys!2054 oldBucket!34))))

(declare-fun b!4738437 () Bool)

(declare-fun res!2007129 () Bool)

(declare-fun e!2955634 () Bool)

(assert (=> b!4738437 (=> (not res!2007129) (not e!2955634))))

(declare-datatypes ((tuple2!54612 0))(
  ( (tuple2!54613 (_1!30600 (_ BitVec 64)) (_2!30600 List!53065)) )
))
(declare-datatypes ((List!53066 0))(
  ( (Nil!52942) (Cons!52942 (h!59321 tuple2!54612) (t!360358 List!53066)) )
))
(declare-datatypes ((ListLongMap!4527 0))(
  ( (ListLongMap!4528 (toList!5997 List!53066)) )
))
(declare-fun lm!2023 () ListLongMap!4527)

(get-info :version)

(assert (=> b!4738437 (= res!2007129 ((_ is Cons!52942) (toList!5997 lm!2023)))))

(declare-fun b!4738438 () Bool)

(declare-fun e!2955633 () Bool)

(declare-fun e!2955630 () Bool)

(assert (=> b!4738438 (= e!2955633 e!2955630)))

(declare-fun res!2007135 () Bool)

(assert (=> b!4738438 (=> (not res!2007135) (not e!2955630))))

(declare-fun lt!1901372 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4738438 (= res!2007135 (= lt!1901372 hash!405))))

(declare-datatypes ((Hashable!6423 0))(
  ( (HashableExt!6422 (__x!32126 Int)) )
))
(declare-fun hashF!1323 () Hashable!6423)

(declare-fun hash!4454 (Hashable!6423 K!14285) (_ BitVec 64))

(assert (=> b!4738438 (= lt!1901372 (hash!4454 hashF!1323 key!4653))))

(declare-fun b!4738439 () Bool)

(declare-fun res!2007140 () Bool)

(declare-fun e!2955632 () Bool)

(assert (=> b!4738439 (=> res!2007140 e!2955632)))

(declare-fun lt!1901390 () tuple2!54610)

(assert (=> b!4738439 (= res!2007140 (not (= (h!59320 oldBucket!34) lt!1901390)))))

(declare-fun b!4738440 () Bool)

(declare-fun e!2955626 () Bool)

(declare-fun e!2955635 () Bool)

(assert (=> b!4738440 (= e!2955626 e!2955635)))

(declare-fun res!2007126 () Bool)

(assert (=> b!4738440 (=> res!2007126 e!2955635)))

(declare-fun containsKey!3463 (List!53065 K!14285) Bool)

(assert (=> b!4738440 (= res!2007126 (not (containsKey!3463 (t!360357 oldBucket!34) key!4653)))))

(assert (=> b!4738440 (containsKey!3463 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!132875 0))(
  ( (Unit!132876) )
))
(declare-fun lt!1901371 () Unit!132875)

(declare-fun lemmaGetPairDefinedThenContainsKey!338 (List!53065 K!14285 Hashable!6423) Unit!132875)

(assert (=> b!4738440 (= lt!1901371 (lemmaGetPairDefinedThenContainsKey!338 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1901375 () List!53065)

(declare-datatypes ((Option!12449 0))(
  ( (None!12448) (Some!12448 (v!47105 tuple2!54610)) )
))
(declare-fun isDefined!9703 (Option!12449) Bool)

(declare-fun getPair!594 (List!53065 K!14285) Option!12449)

(assert (=> b!4738440 (isDefined!9703 (getPair!594 lt!1901375 key!4653))))

(declare-fun lt!1901376 () tuple2!54612)

(declare-fun lambda!218720 () Int)

(declare-fun lt!1901378 () Unit!132875)

(declare-fun forallContained!3713 (List!53066 Int tuple2!54612) Unit!132875)

(assert (=> b!4738440 (= lt!1901378 (forallContained!3713 (toList!5997 lm!2023) lambda!218720 lt!1901376))))

(declare-fun contains!16342 (List!53066 tuple2!54612) Bool)

(assert (=> b!4738440 (contains!16342 (toList!5997 lm!2023) lt!1901376)))

(assert (=> b!4738440 (= lt!1901376 (tuple2!54613 lt!1901372 lt!1901375))))

(declare-fun lt!1901373 () Unit!132875)

(declare-fun lemmaGetValueImpliesTupleContained!399 (ListLongMap!4527 (_ BitVec 64) List!53065) Unit!132875)

(assert (=> b!4738440 (= lt!1901373 (lemmaGetValueImpliesTupleContained!399 lm!2023 lt!1901372 lt!1901375))))

(declare-fun apply!12479 (ListLongMap!4527 (_ BitVec 64)) List!53065)

(assert (=> b!4738440 (= lt!1901375 (apply!12479 lm!2023 lt!1901372))))

(declare-fun contains!16343 (ListLongMap!4527 (_ BitVec 64)) Bool)

(assert (=> b!4738440 (contains!16343 lm!2023 lt!1901372)))

(declare-fun lt!1901381 () Unit!132875)

(declare-fun lemmaInGenMapThenLongMapContainsHash!800 (ListLongMap!4527 K!14285 Hashable!6423) Unit!132875)

(assert (=> b!4738440 (= lt!1901381 (lemmaInGenMapThenLongMapContainsHash!800 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1901380 () Unit!132875)

(declare-fun lemmaInGenMapThenGetPairDefined!390 (ListLongMap!4527 K!14285 Hashable!6423) Unit!132875)

(assert (=> b!4738440 (= lt!1901380 (lemmaInGenMapThenGetPairDefined!390 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4738441 () Bool)

(declare-fun e!2955628 () Bool)

(assert (=> b!4738441 (= e!2955628 e!2955632)))

(declare-fun res!2007138 () Bool)

(assert (=> b!4738441 (=> res!2007138 e!2955632)))

(declare-datatypes ((ListMap!5361 0))(
  ( (ListMap!5362 (toList!5998 List!53065)) )
))
(declare-fun lt!1901382 () ListMap!5361)

(declare-fun lt!1901385 () ListMap!5361)

(declare-fun eq!1151 (ListMap!5361 ListMap!5361) Bool)

(declare-fun +!2302 (ListMap!5361 tuple2!54610) ListMap!5361)

(assert (=> b!4738441 (= res!2007138 (not (eq!1151 lt!1901385 (+!2302 lt!1901382 (h!59320 oldBucket!34)))))))

(declare-fun lt!1901374 () List!53065)

(declare-fun extractMap!2080 (List!53066) ListMap!5361)

(assert (=> b!4738441 (= lt!1901382 (extractMap!2080 (Cons!52942 (tuple2!54613 hash!405 lt!1901374) (t!360358 (toList!5997 lm!2023)))))))

(declare-fun lt!1901383 () tuple2!54612)

(assert (=> b!4738441 (= lt!1901385 (extractMap!2080 (Cons!52942 lt!1901383 (t!360358 (toList!5997 lm!2023)))))))

(declare-fun lt!1901377 () List!53065)

(declare-fun lt!1901389 () ListMap!5361)

(declare-fun addToMapMapFromBucket!1484 (List!53065 ListMap!5361) ListMap!5361)

(assert (=> b!4738441 (eq!1151 (addToMapMapFromBucket!1484 (Cons!52941 lt!1901390 lt!1901377) lt!1901389) (+!2302 (addToMapMapFromBucket!1484 lt!1901377 lt!1901389) lt!1901390))))

(declare-fun lt!1901379 () Unit!132875)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!400 (tuple2!54610 List!53065 ListMap!5361) Unit!132875)

(assert (=> b!4738441 (= lt!1901379 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!400 lt!1901390 lt!1901377 lt!1901389))))

(declare-fun head!10311 (List!53065) tuple2!54610)

(assert (=> b!4738441 (= lt!1901390 (head!10311 newBucket!218))))

(declare-fun lt!1901388 () tuple2!54610)

(assert (=> b!4738441 (eq!1151 (addToMapMapFromBucket!1484 (Cons!52941 lt!1901388 lt!1901374) lt!1901389) (+!2302 (addToMapMapFromBucket!1484 lt!1901374 lt!1901389) lt!1901388))))

(declare-fun lt!1901384 () Unit!132875)

(assert (=> b!4738441 (= lt!1901384 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!400 lt!1901388 lt!1901374 lt!1901389))))

(assert (=> b!4738441 (= lt!1901388 (head!10311 oldBucket!34))))

(declare-fun lt!1901386 () List!53066)

(declare-fun contains!16344 (ListMap!5361 K!14285) Bool)

(assert (=> b!4738441 (contains!16344 (extractMap!2080 lt!1901386) key!4653)))

(declare-fun lt!1901387 () Unit!132875)

(declare-fun lemmaListContainsThenExtractedMapContains!562 (ListLongMap!4527 K!14285 Hashable!6423) Unit!132875)

(assert (=> b!4738441 (= lt!1901387 (lemmaListContainsThenExtractedMapContains!562 (ListLongMap!4528 lt!1901386) key!4653 hashF!1323))))

(assert (=> b!4738441 (= lt!1901386 (Cons!52942 (tuple2!54613 hash!405 (t!360357 oldBucket!34)) (t!360358 (toList!5997 lm!2023))))))

(declare-fun b!4738442 () Bool)

(assert (=> b!4738442 (= e!2955635 e!2955628)))

(declare-fun res!2007133 () Bool)

(assert (=> b!4738442 (=> res!2007133 e!2955628)))

(assert (=> b!4738442 (= res!2007133 (not (= (removePairForKey!1649 lt!1901374 key!4653) lt!1901377)))))

(declare-fun tail!9104 (List!53065) List!53065)

(assert (=> b!4738442 (= lt!1901377 (tail!9104 newBucket!218))))

(assert (=> b!4738442 (= lt!1901374 (tail!9104 oldBucket!34))))

(declare-fun b!4738443 () Bool)

(declare-fun res!2007125 () Bool)

(assert (=> b!4738443 (=> res!2007125 e!2955632)))

(assert (=> b!4738443 (= res!2007125 (not (noDuplicateKeys!2054 lt!1901377)))))

(declare-fun b!4738444 () Bool)

(declare-fun e!2955629 () Bool)

(declare-fun tp!1349168 () Bool)

(assert (=> b!4738444 (= e!2955629 tp!1349168)))

(declare-fun b!4738445 () Bool)

(assert (=> b!4738445 (= e!2955632 true)))

(declare-fun b!4738446 () Bool)

(declare-fun res!2007130 () Bool)

(assert (=> b!4738446 (=> res!2007130 e!2955628)))

(assert (=> b!4738446 (= res!2007130 (not (= (removePairForKey!1649 (t!360357 oldBucket!34) key!4653) lt!1901377)))))

(declare-fun b!4738447 () Bool)

(declare-fun res!2007124 () Bool)

(assert (=> b!4738447 (=> (not res!2007124) (not e!2955630))))

(declare-fun allKeysSameHash!1880 (List!53065 (_ BitVec 64) Hashable!6423) Bool)

(assert (=> b!4738447 (= res!2007124 (allKeysSameHash!1880 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4738448 () Bool)

(declare-fun res!2007137 () Bool)

(assert (=> b!4738448 (=> (not res!2007137) (not e!2955630))))

(declare-fun allKeysSameHashInMap!1968 (ListLongMap!4527 Hashable!6423) Bool)

(assert (=> b!4738448 (= res!2007137 (allKeysSameHashInMap!1968 lm!2023 hashF!1323))))

(declare-fun b!4738436 () Bool)

(assert (=> b!4738436 (= e!2955636 e!2955633)))

(declare-fun res!2007121 () Bool)

(assert (=> b!4738436 (=> (not res!2007121) (not e!2955633))))

(declare-fun lt!1901391 () ListMap!5361)

(assert (=> b!4738436 (= res!2007121 (contains!16344 lt!1901391 key!4653))))

(assert (=> b!4738436 (= lt!1901391 (extractMap!2080 (toList!5997 lm!2023)))))

(declare-fun res!2007136 () Bool)

(assert (=> start!483404 (=> (not res!2007136) (not e!2955636))))

(declare-fun forall!11673 (List!53066 Int) Bool)

(assert (=> start!483404 (= res!2007136 (forall!11673 (toList!5997 lm!2023) lambda!218720))))

(assert (=> start!483404 e!2955636))

(declare-fun inv!68159 (ListLongMap!4527) Bool)

(assert (=> start!483404 (and (inv!68159 lm!2023) e!2955629)))

(declare-fun tp_is_empty!31509 () Bool)

(assert (=> start!483404 tp_is_empty!31509))

(declare-fun e!2955627 () Bool)

(assert (=> start!483404 e!2955627))

(assert (=> start!483404 true))

(declare-fun e!2955631 () Bool)

(assert (=> start!483404 e!2955631))

(declare-fun b!4738449 () Bool)

(declare-fun res!2007139 () Bool)

(assert (=> b!4738449 (=> res!2007139 e!2955632)))

(assert (=> b!4738449 (= res!2007139 (not (eq!1151 lt!1901385 (+!2302 lt!1901382 lt!1901390))))))

(declare-fun b!4738450 () Bool)

(assert (=> b!4738450 (= e!2955630 e!2955634)))

(declare-fun res!2007141 () Bool)

(assert (=> b!4738450 (=> (not res!2007141) (not e!2955634))))

(declare-fun head!10312 (List!53066) tuple2!54612)

(assert (=> b!4738450 (= res!2007141 (= (head!10312 (toList!5997 lm!2023)) lt!1901383))))

(assert (=> b!4738450 (= lt!1901383 (tuple2!54613 hash!405 oldBucket!34))))

(declare-fun b!4738451 () Bool)

(declare-fun res!2007132 () Bool)

(assert (=> b!4738451 (=> res!2007132 e!2955632)))

(assert (=> b!4738451 (= res!2007132 (not (noDuplicateKeys!2054 (t!360357 oldBucket!34))))))

(declare-fun b!4738452 () Bool)

(declare-fun res!2007131 () Bool)

(assert (=> b!4738452 (=> (not res!2007131) (not e!2955636))))

(assert (=> b!4738452 (= res!2007131 (allKeysSameHash!1880 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4738453 () Bool)

(assert (=> b!4738453 (= e!2955634 (not e!2955626))))

(declare-fun res!2007122 () Bool)

(assert (=> b!4738453 (=> res!2007122 e!2955626)))

(assert (=> b!4738453 (= res!2007122 (or (and ((_ is Cons!52941) oldBucket!34) (= (_1!30599 (h!59320 oldBucket!34)) key!4653)) (not ((_ is Cons!52941) oldBucket!34)) (= (_1!30599 (h!59320 oldBucket!34)) key!4653)))))

(assert (=> b!4738453 (= lt!1901391 (addToMapMapFromBucket!1484 (_2!30600 (h!59321 (toList!5997 lm!2023))) lt!1901389))))

(assert (=> b!4738453 (= lt!1901389 (extractMap!2080 (t!360358 (toList!5997 lm!2023))))))

(declare-fun tail!9105 (ListLongMap!4527) ListLongMap!4527)

(assert (=> b!4738453 (= (t!360358 (toList!5997 lm!2023)) (toList!5997 (tail!9105 lm!2023)))))

(declare-fun b!4738454 () Bool)

(declare-fun res!2007127 () Bool)

(assert (=> b!4738454 (=> res!2007127 e!2955632)))

(assert (=> b!4738454 (= res!2007127 (not (forall!11673 lt!1901386 lambda!218720)))))

(declare-fun tp!1349169 () Bool)

(declare-fun tp_is_empty!31511 () Bool)

(declare-fun b!4738455 () Bool)

(assert (=> b!4738455 (= e!2955627 (and tp_is_empty!31509 tp_is_empty!31511 tp!1349169))))

(declare-fun b!4738456 () Bool)

(declare-fun res!2007123 () Bool)

(assert (=> b!4738456 (=> (not res!2007123) (not e!2955636))))

(assert (=> b!4738456 (= res!2007123 (noDuplicateKeys!2054 newBucket!218))))

(declare-fun tp!1349167 () Bool)

(declare-fun b!4738457 () Bool)

(assert (=> b!4738457 (= e!2955631 (and tp_is_empty!31509 tp_is_empty!31511 tp!1349167))))

(assert (= (and start!483404 res!2007136) b!4738435))

(assert (= (and b!4738435 res!2007134) b!4738456))

(assert (= (and b!4738456 res!2007123) b!4738434))

(assert (= (and b!4738434 res!2007128) b!4738452))

(assert (= (and b!4738452 res!2007131) b!4738436))

(assert (= (and b!4738436 res!2007121) b!4738438))

(assert (= (and b!4738438 res!2007135) b!4738447))

(assert (= (and b!4738447 res!2007124) b!4738448))

(assert (= (and b!4738448 res!2007137) b!4738450))

(assert (= (and b!4738450 res!2007141) b!4738437))

(assert (= (and b!4738437 res!2007129) b!4738453))

(assert (= (and b!4738453 (not res!2007122)) b!4738440))

(assert (= (and b!4738440 (not res!2007126)) b!4738442))

(assert (= (and b!4738442 (not res!2007133)) b!4738446))

(assert (= (and b!4738446 (not res!2007130)) b!4738441))

(assert (= (and b!4738441 (not res!2007138)) b!4738439))

(assert (= (and b!4738439 (not res!2007140)) b!4738449))

(assert (= (and b!4738449 (not res!2007139)) b!4738454))

(assert (= (and b!4738454 (not res!2007127)) b!4738451))

(assert (= (and b!4738451 (not res!2007132)) b!4738443))

(assert (= (and b!4738443 (not res!2007125)) b!4738445))

(assert (= start!483404 b!4738444))

(assert (= (and start!483404 ((_ is Cons!52941) oldBucket!34)) b!4738455))

(assert (= (and start!483404 ((_ is Cons!52941) newBucket!218)) b!4738457))

(declare-fun m!5687551 () Bool)

(assert (=> start!483404 m!5687551))

(declare-fun m!5687553 () Bool)

(assert (=> start!483404 m!5687553))

(declare-fun m!5687555 () Bool)

(assert (=> b!4738447 m!5687555))

(declare-fun m!5687557 () Bool)

(assert (=> b!4738442 m!5687557))

(declare-fun m!5687559 () Bool)

(assert (=> b!4738442 m!5687559))

(declare-fun m!5687561 () Bool)

(assert (=> b!4738442 m!5687561))

(declare-fun m!5687563 () Bool)

(assert (=> b!4738452 m!5687563))

(declare-fun m!5687565 () Bool)

(assert (=> b!4738436 m!5687565))

(declare-fun m!5687567 () Bool)

(assert (=> b!4738436 m!5687567))

(declare-fun m!5687569 () Bool)

(assert (=> b!4738449 m!5687569))

(assert (=> b!4738449 m!5687569))

(declare-fun m!5687571 () Bool)

(assert (=> b!4738449 m!5687571))

(declare-fun m!5687573 () Bool)

(assert (=> b!4738440 m!5687573))

(declare-fun m!5687575 () Bool)

(assert (=> b!4738440 m!5687575))

(declare-fun m!5687577 () Bool)

(assert (=> b!4738440 m!5687577))

(declare-fun m!5687579 () Bool)

(assert (=> b!4738440 m!5687579))

(declare-fun m!5687581 () Bool)

(assert (=> b!4738440 m!5687581))

(declare-fun m!5687583 () Bool)

(assert (=> b!4738440 m!5687583))

(declare-fun m!5687585 () Bool)

(assert (=> b!4738440 m!5687585))

(declare-fun m!5687587 () Bool)

(assert (=> b!4738440 m!5687587))

(declare-fun m!5687589 () Bool)

(assert (=> b!4738440 m!5687589))

(declare-fun m!5687591 () Bool)

(assert (=> b!4738440 m!5687591))

(declare-fun m!5687593 () Bool)

(assert (=> b!4738440 m!5687593))

(assert (=> b!4738440 m!5687587))

(declare-fun m!5687595 () Bool)

(assert (=> b!4738440 m!5687595))

(declare-fun m!5687597 () Bool)

(assert (=> b!4738450 m!5687597))

(declare-fun m!5687599 () Bool)

(assert (=> b!4738434 m!5687599))

(declare-fun m!5687601 () Bool)

(assert (=> b!4738448 m!5687601))

(declare-fun m!5687603 () Bool)

(assert (=> b!4738441 m!5687603))

(declare-fun m!5687605 () Bool)

(assert (=> b!4738441 m!5687605))

(declare-fun m!5687607 () Bool)

(assert (=> b!4738441 m!5687607))

(declare-fun m!5687609 () Bool)

(assert (=> b!4738441 m!5687609))

(declare-fun m!5687611 () Bool)

(assert (=> b!4738441 m!5687611))

(assert (=> b!4738441 m!5687609))

(declare-fun m!5687613 () Bool)

(assert (=> b!4738441 m!5687613))

(declare-fun m!5687615 () Bool)

(assert (=> b!4738441 m!5687615))

(declare-fun m!5687617 () Bool)

(assert (=> b!4738441 m!5687617))

(assert (=> b!4738441 m!5687613))

(declare-fun m!5687619 () Bool)

(assert (=> b!4738441 m!5687619))

(declare-fun m!5687621 () Bool)

(assert (=> b!4738441 m!5687621))

(declare-fun m!5687623 () Bool)

(assert (=> b!4738441 m!5687623))

(assert (=> b!4738441 m!5687621))

(assert (=> b!4738441 m!5687615))

(declare-fun m!5687625 () Bool)

(assert (=> b!4738441 m!5687625))

(declare-fun m!5687627 () Bool)

(assert (=> b!4738441 m!5687627))

(declare-fun m!5687629 () Bool)

(assert (=> b!4738441 m!5687629))

(declare-fun m!5687631 () Bool)

(assert (=> b!4738441 m!5687631))

(declare-fun m!5687633 () Bool)

(assert (=> b!4738441 m!5687633))

(declare-fun m!5687635 () Bool)

(assert (=> b!4738441 m!5687635))

(assert (=> b!4738441 m!5687605))

(declare-fun m!5687637 () Bool)

(assert (=> b!4738441 m!5687637))

(assert (=> b!4738441 m!5687635))

(declare-fun m!5687639 () Bool)

(assert (=> b!4738441 m!5687639))

(assert (=> b!4738441 m!5687633))

(assert (=> b!4738441 m!5687637))

(declare-fun m!5687641 () Bool)

(assert (=> b!4738453 m!5687641))

(declare-fun m!5687643 () Bool)

(assert (=> b!4738453 m!5687643))

(declare-fun m!5687645 () Bool)

(assert (=> b!4738453 m!5687645))

(declare-fun m!5687647 () Bool)

(assert (=> b!4738454 m!5687647))

(declare-fun m!5687649 () Bool)

(assert (=> b!4738451 m!5687649))

(declare-fun m!5687651 () Bool)

(assert (=> b!4738443 m!5687651))

(declare-fun m!5687653 () Bool)

(assert (=> b!4738456 m!5687653))

(declare-fun m!5687655 () Bool)

(assert (=> b!4738446 m!5687655))

(declare-fun m!5687657 () Bool)

(assert (=> b!4738435 m!5687657))

(declare-fun m!5687659 () Bool)

(assert (=> b!4738438 m!5687659))

(check-sat (not b!4738449) (not b!4738443) (not b!4738455) tp_is_empty!31509 (not b!4738446) (not b!4738435) (not start!483404) (not b!4738444) (not b!4738451) (not b!4738452) tp_is_empty!31511 (not b!4738436) (not b!4738448) (not b!4738440) (not b!4738450) (not b!4738434) (not b!4738442) (not b!4738454) (not b!4738453) (not b!4738438) (not b!4738457) (not b!4738441) (not b!4738456) (not b!4738447))
(check-sat)
