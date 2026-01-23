; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472448 () Bool)

(assert start!472448)

(declare-fun b!4679446 () Bool)

(declare-fun e!2919576 () Bool)

(declare-fun e!2919575 () Bool)

(assert (=> b!4679446 (= e!2919576 e!2919575)))

(declare-fun res!1971718 () Bool)

(assert (=> b!4679446 (=> (not res!1971718) (not e!2919575))))

(declare-datatypes ((K!13620 0))(
  ( (K!13621 (val!19167 Int)) )
))
(declare-datatypes ((V!13866 0))(
  ( (V!13867 (val!19168 Int)) )
))
(declare-datatypes ((tuple2!53546 0))(
  ( (tuple2!53547 (_1!30067 K!13620) (_2!30067 V!13866)) )
))
(declare-datatypes ((List!52365 0))(
  ( (Nil!52241) (Cons!52241 (h!58450 tuple2!53546) (t!359517 List!52365)) )
))
(declare-datatypes ((ListMap!4829 0))(
  ( (ListMap!4830 (toList!5465 List!52365)) )
))
(declare-fun lt!1839117 () ListMap!4829)

(declare-fun key!4653 () K!13620)

(declare-fun contains!15376 (ListMap!4829 K!13620) Bool)

(assert (=> b!4679446 (= res!1971718 (contains!15376 lt!1839117 key!4653))))

(declare-datatypes ((tuple2!53548 0))(
  ( (tuple2!53549 (_1!30068 (_ BitVec 64)) (_2!30068 List!52365)) )
))
(declare-datatypes ((List!52366 0))(
  ( (Nil!52242) (Cons!52242 (h!58451 tuple2!53548) (t!359518 List!52366)) )
))
(declare-datatypes ((ListLongMap!3995 0))(
  ( (ListLongMap!3996 (toList!5466 List!52366)) )
))
(declare-fun lm!2023 () ListLongMap!3995)

(declare-fun extractMap!1814 (List!52366) ListMap!4829)

(assert (=> b!4679446 (= lt!1839117 (extractMap!1814 (toList!5466 lm!2023)))))

(declare-fun b!4679447 () Bool)

(declare-fun e!2919585 () Bool)

(declare-fun tp!1344963 () Bool)

(assert (=> b!4679447 (= e!2919585 tp!1344963)))

(declare-fun b!4679448 () Bool)

(declare-fun e!2919578 () Bool)

(assert (=> b!4679448 (= e!2919575 e!2919578)))

(declare-fun res!1971716 () Bool)

(assert (=> b!4679448 (=> (not res!1971716) (not e!2919578))))

(declare-fun lt!1839126 () tuple2!53548)

(declare-fun head!9867 (List!52366) tuple2!53548)

(assert (=> b!4679448 (= res!1971716 (= (head!9867 (toList!5466 lm!2023)) lt!1839126))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!52365)

(assert (=> b!4679448 (= lt!1839126 (tuple2!53549 hash!405 oldBucket!34))))

(declare-fun b!4679449 () Bool)

(declare-fun res!1971729 () Bool)

(assert (=> b!4679449 (=> (not res!1971729) (not e!2919576))))

(declare-datatypes ((Hashable!6157 0))(
  ( (HashableExt!6156 (__x!31860 Int)) )
))
(declare-fun hashF!1323 () Hashable!6157)

(declare-fun allKeysSameHash!1614 (List!52365 (_ BitVec 64) Hashable!6157) Bool)

(assert (=> b!4679449 (= res!1971729 (allKeysSameHash!1614 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4679450 () Bool)

(declare-fun res!1971719 () Bool)

(assert (=> b!4679450 (=> (not res!1971719) (not e!2919578))))

(get-info :version)

(assert (=> b!4679450 (= res!1971719 ((_ is Cons!52242) (toList!5466 lm!2023)))))

(declare-fun b!4679451 () Bool)

(declare-fun e!2919582 () Bool)

(declare-fun e!2919583 () Bool)

(assert (=> b!4679451 (= e!2919582 e!2919583)))

(declare-fun res!1971717 () Bool)

(assert (=> b!4679451 (=> res!1971717 e!2919583)))

(declare-fun lt!1839125 () List!52365)

(declare-fun newBucket!218 () List!52365)

(assert (=> b!4679451 (= res!1971717 (not (= lt!1839125 newBucket!218)))))

(declare-fun tail!8432 (List!52365) List!52365)

(assert (=> b!4679451 (= lt!1839125 (tail!8432 oldBucket!34))))

(declare-fun b!4679452 () Bool)

(declare-fun res!1971726 () Bool)

(assert (=> b!4679452 (=> (not res!1971726) (not e!2919575))))

(declare-fun allKeysSameHashInMap!1702 (ListLongMap!3995 Hashable!6157) Bool)

(assert (=> b!4679452 (= res!1971726 (allKeysSameHashInMap!1702 lm!2023 hashF!1323))))

(declare-fun b!4679453 () Bool)

(assert (=> b!4679453 (= e!2919578 (not e!2919582))))

(declare-fun res!1971720 () Bool)

(assert (=> b!4679453 (=> res!1971720 e!2919582)))

(assert (=> b!4679453 (= res!1971720 (or (not ((_ is Cons!52241) oldBucket!34)) (not (= (_1!30067 (h!58450 oldBucket!34)) key!4653))))))

(declare-fun lt!1839127 () ListMap!4829)

(declare-fun addToMapMapFromBucket!1220 (List!52365 ListMap!4829) ListMap!4829)

(assert (=> b!4679453 (= lt!1839117 (addToMapMapFromBucket!1220 (_2!30068 (h!58451 (toList!5466 lm!2023))) lt!1839127))))

(assert (=> b!4679453 (= lt!1839127 (extractMap!1814 (t!359518 (toList!5466 lm!2023))))))

(declare-fun tail!8433 (ListLongMap!3995) ListLongMap!3995)

(assert (=> b!4679453 (= (t!359518 (toList!5466 lm!2023)) (toList!5466 (tail!8433 lm!2023)))))

(declare-fun b!4679454 () Bool)

(declare-fun res!1971714 () Bool)

(assert (=> b!4679454 (=> (not res!1971714) (not e!2919575))))

(declare-fun hash!3964 (Hashable!6157 K!13620) (_ BitVec 64))

(assert (=> b!4679454 (= res!1971714 (= (hash!3964 hashF!1323 key!4653) hash!405))))

(declare-fun b!4679455 () Bool)

(declare-fun e!2919579 () Bool)

(assert (=> b!4679455 (= e!2919583 e!2919579)))

(declare-fun res!1971712 () Bool)

(assert (=> b!4679455 (=> res!1971712 e!2919579)))

(declare-fun lt!1839123 () ListMap!4829)

(assert (=> b!4679455 (= res!1971712 (not (= lt!1839123 (extractMap!1814 (Cons!52242 (tuple2!53549 hash!405 newBucket!218) (t!359518 (toList!5466 lm!2023)))))))))

(declare-fun lt!1839116 () List!52366)

(assert (=> b!4679455 (= lt!1839123 (extractMap!1814 lt!1839116))))

(assert (=> b!4679455 (= lt!1839116 (Cons!52242 (tuple2!53549 hash!405 lt!1839125) (t!359518 (toList!5466 lm!2023))))))

(declare-fun b!4679456 () Bool)

(declare-fun e!2919577 () Bool)

(declare-fun e!2919584 () Bool)

(assert (=> b!4679456 (= e!2919577 e!2919584)))

(declare-fun res!1971721 () Bool)

(assert (=> b!4679456 (=> res!1971721 e!2919584)))

(declare-fun lt!1839122 () ListMap!4829)

(declare-fun lt!1839124 () ListMap!4829)

(assert (=> b!4679456 (= res!1971721 (not (= lt!1839122 lt!1839124)))))

(declare-fun lt!1839120 () ListMap!4829)

(declare-fun -!652 (ListMap!4829 K!13620) ListMap!4829)

(assert (=> b!4679456 (= lt!1839122 (-!652 lt!1839120 key!4653))))

(declare-fun +!2090 (ListMap!4829 tuple2!53546) ListMap!4829)

(assert (=> b!4679456 (= (-!652 (+!2090 lt!1839124 (tuple2!53547 key!4653 (_2!30067 (h!58450 oldBucket!34)))) key!4653) lt!1839124)))

(declare-datatypes ((Unit!122363 0))(
  ( (Unit!122364) )
))
(declare-fun lt!1839118 () Unit!122363)

(declare-fun addThenRemoveForNewKeyIsSame!43 (ListMap!4829 K!13620 V!13866) Unit!122363)

(assert (=> b!4679456 (= lt!1839118 (addThenRemoveForNewKeyIsSame!43 lt!1839124 key!4653 (_2!30067 (h!58450 oldBucket!34))))))

(declare-fun b!4679457 () Bool)

(declare-fun res!1971731 () Bool)

(declare-fun e!2919573 () Bool)

(assert (=> b!4679457 (=> res!1971731 e!2919573)))

(declare-fun containsKey!2931 (List!52365 K!13620) Bool)

(assert (=> b!4679457 (= res!1971731 (containsKey!2931 lt!1839125 key!4653))))

(declare-fun b!4679458 () Bool)

(declare-fun res!1971715 () Bool)

(assert (=> b!4679458 (=> res!1971715 e!2919573)))

(assert (=> b!4679458 (= res!1971715 (not (= lt!1839124 lt!1839123)))))

(declare-fun b!4679459 () Bool)

(declare-fun res!1971722 () Bool)

(assert (=> b!4679459 (=> (not res!1971722) (not e!2919576))))

(declare-fun noDuplicateKeys!1788 (List!52365) Bool)

(assert (=> b!4679459 (= res!1971722 (noDuplicateKeys!1788 newBucket!218))))

(declare-fun b!4679460 () Bool)

(declare-fun e!2919574 () Bool)

(assert (=> b!4679460 (= e!2919584 e!2919574)))

(declare-fun res!1971725 () Bool)

(assert (=> b!4679460 (=> res!1971725 e!2919574)))

(declare-fun lt!1839121 () ListMap!4829)

(declare-fun eq!977 (ListMap!4829 ListMap!4829) Bool)

(assert (=> b!4679460 (= res!1971725 (not (eq!977 lt!1839120 lt!1839121)))))

(assert (=> b!4679460 (= lt!1839121 (extractMap!1814 (Cons!52242 lt!1839126 (t!359518 (toList!5466 lm!2023)))))))

(declare-fun b!4679461 () Bool)

(declare-fun e!2919580 () Bool)

(declare-fun tp_is_empty!30445 () Bool)

(declare-fun tp!1344962 () Bool)

(declare-fun tp_is_empty!30447 () Bool)

(assert (=> b!4679461 (= e!2919580 (and tp_is_empty!30445 tp_is_empty!30447 tp!1344962))))

(declare-fun b!4679462 () Bool)

(declare-fun res!1971723 () Bool)

(assert (=> b!4679462 (=> (not res!1971723) (not e!2919576))))

(declare-fun removePairForKey!1383 (List!52365 K!13620) List!52365)

(assert (=> b!4679462 (= res!1971723 (= (removePairForKey!1383 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4679463 () Bool)

(assert (=> b!4679463 (= e!2919573 e!2919577)))

(declare-fun res!1971713 () Bool)

(assert (=> b!4679463 (=> res!1971713 e!2919577)))

(assert (=> b!4679463 (= res!1971713 (contains!15376 lt!1839124 key!4653))))

(assert (=> b!4679463 (not (contains!15376 lt!1839123 key!4653))))

(declare-fun lt!1839130 () Unit!122363)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!388 (ListLongMap!3995 K!13620 Hashable!6157) Unit!122363)

(assert (=> b!4679463 (= lt!1839130 (lemmaNotInItsHashBucketThenNotInMap!388 (ListLongMap!3996 lt!1839116) key!4653 hashF!1323))))

(declare-fun b!4679464 () Bool)

(assert (=> b!4679464 (= e!2919574 (not (= oldBucket!34 Nil!52241)))))

(assert (=> b!4679464 (eq!977 lt!1839122 (-!652 lt!1839121 key!4653))))

(declare-fun lt!1839128 () Unit!122363)

(declare-fun lemmaRemovePreservesEq!72 (ListMap!4829 ListMap!4829 K!13620) Unit!122363)

(assert (=> b!4679464 (= lt!1839128 (lemmaRemovePreservesEq!72 lt!1839120 lt!1839121 key!4653))))

(declare-fun b!4679465 () Bool)

(declare-fun res!1971727 () Bool)

(assert (=> b!4679465 (=> (not res!1971727) (not e!2919576))))

(assert (=> b!4679465 (= res!1971727 (noDuplicateKeys!1788 oldBucket!34))))

(declare-fun b!4679466 () Bool)

(declare-fun e!2919581 () Bool)

(assert (=> b!4679466 (= e!2919581 e!2919573)))

(declare-fun res!1971711 () Bool)

(assert (=> b!4679466 (=> res!1971711 e!2919573)))

(assert (=> b!4679466 (= res!1971711 (not (eq!977 lt!1839120 (addToMapMapFromBucket!1220 oldBucket!34 lt!1839127))))))

(assert (=> b!4679466 (= lt!1839120 (+!2090 lt!1839124 (h!58450 oldBucket!34)))))

(declare-fun lt!1839129 () tuple2!53546)

(assert (=> b!4679466 (eq!977 (addToMapMapFromBucket!1220 (Cons!52241 lt!1839129 lt!1839125) lt!1839127) (+!2090 lt!1839124 lt!1839129))))

(declare-fun lt!1839119 () Unit!122363)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!226 (tuple2!53546 List!52365 ListMap!4829) Unit!122363)

(assert (=> b!4679466 (= lt!1839119 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!226 lt!1839129 lt!1839125 lt!1839127))))

(declare-fun head!9868 (List!52365) tuple2!53546)

(assert (=> b!4679466 (= lt!1839129 (head!9868 oldBucket!34))))

(declare-fun b!4679467 () Bool)

(declare-fun res!1971730 () Bool)

(assert (=> b!4679467 (=> (not res!1971730) (not e!2919575))))

(assert (=> b!4679467 (= res!1971730 (allKeysSameHash!1614 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1971728 () Bool)

(assert (=> start!472448 (=> (not res!1971728) (not e!2919576))))

(declare-fun lambda!204433 () Int)

(declare-fun forall!11219 (List!52366 Int) Bool)

(assert (=> start!472448 (= res!1971728 (forall!11219 (toList!5466 lm!2023) lambda!204433))))

(assert (=> start!472448 e!2919576))

(declare-fun inv!67494 (ListLongMap!3995) Bool)

(assert (=> start!472448 (and (inv!67494 lm!2023) e!2919585)))

(assert (=> start!472448 tp_is_empty!30445))

(declare-fun e!2919586 () Bool)

(assert (=> start!472448 e!2919586))

(assert (=> start!472448 true))

(assert (=> start!472448 e!2919580))

(declare-fun b!4679468 () Bool)

(declare-fun tp!1344961 () Bool)

(assert (=> b!4679468 (= e!2919586 (and tp_is_empty!30445 tp_is_empty!30447 tp!1344961))))

(declare-fun b!4679469 () Bool)

(assert (=> b!4679469 (= e!2919579 e!2919581)))

(declare-fun res!1971724 () Bool)

(assert (=> b!4679469 (=> res!1971724 e!2919581)))

(assert (=> b!4679469 (= res!1971724 (not (= lt!1839124 (addToMapMapFromBucket!1220 newBucket!218 lt!1839127))))))

(assert (=> b!4679469 (= lt!1839124 (addToMapMapFromBucket!1220 lt!1839125 lt!1839127))))

(assert (= (and start!472448 res!1971728) b!4679465))

(assert (= (and b!4679465 res!1971727) b!4679459))

(assert (= (and b!4679459 res!1971722) b!4679462))

(assert (= (and b!4679462 res!1971723) b!4679449))

(assert (= (and b!4679449 res!1971729) b!4679446))

(assert (= (and b!4679446 res!1971718) b!4679454))

(assert (= (and b!4679454 res!1971714) b!4679467))

(assert (= (and b!4679467 res!1971730) b!4679452))

(assert (= (and b!4679452 res!1971726) b!4679448))

(assert (= (and b!4679448 res!1971716) b!4679450))

(assert (= (and b!4679450 res!1971719) b!4679453))

(assert (= (and b!4679453 (not res!1971720)) b!4679451))

(assert (= (and b!4679451 (not res!1971717)) b!4679455))

(assert (= (and b!4679455 (not res!1971712)) b!4679469))

(assert (= (and b!4679469 (not res!1971724)) b!4679466))

(assert (= (and b!4679466 (not res!1971711)) b!4679457))

(assert (= (and b!4679457 (not res!1971731)) b!4679458))

(assert (= (and b!4679458 (not res!1971715)) b!4679463))

(assert (= (and b!4679463 (not res!1971713)) b!4679456))

(assert (= (and b!4679456 (not res!1971721)) b!4679460))

(assert (= (and b!4679460 (not res!1971725)) b!4679464))

(assert (= start!472448 b!4679447))

(assert (= (and start!472448 ((_ is Cons!52241) oldBucket!34)) b!4679468))

(assert (= (and start!472448 ((_ is Cons!52241) newBucket!218)) b!4679461))

(declare-fun m!5575313 () Bool)

(assert (=> b!4679459 m!5575313))

(declare-fun m!5575315 () Bool)

(assert (=> b!4679448 m!5575315))

(declare-fun m!5575317 () Bool)

(assert (=> b!4679451 m!5575317))

(declare-fun m!5575319 () Bool)

(assert (=> b!4679466 m!5575319))

(declare-fun m!5575321 () Bool)

(assert (=> b!4679466 m!5575321))

(declare-fun m!5575323 () Bool)

(assert (=> b!4679466 m!5575323))

(declare-fun m!5575325 () Bool)

(assert (=> b!4679466 m!5575325))

(assert (=> b!4679466 m!5575323))

(declare-fun m!5575327 () Bool)

(assert (=> b!4679466 m!5575327))

(assert (=> b!4679466 m!5575321))

(assert (=> b!4679466 m!5575319))

(declare-fun m!5575329 () Bool)

(assert (=> b!4679466 m!5575329))

(declare-fun m!5575331 () Bool)

(assert (=> b!4679466 m!5575331))

(declare-fun m!5575333 () Bool)

(assert (=> b!4679466 m!5575333))

(declare-fun m!5575335 () Bool)

(assert (=> b!4679457 m!5575335))

(declare-fun m!5575337 () Bool)

(assert (=> b!4679446 m!5575337))

(declare-fun m!5575339 () Bool)

(assert (=> b!4679446 m!5575339))

(declare-fun m!5575341 () Bool)

(assert (=> b!4679469 m!5575341))

(declare-fun m!5575343 () Bool)

(assert (=> b!4679469 m!5575343))

(declare-fun m!5575345 () Bool)

(assert (=> b!4679454 m!5575345))

(declare-fun m!5575347 () Bool)

(assert (=> b!4679465 m!5575347))

(declare-fun m!5575349 () Bool)

(assert (=> b!4679464 m!5575349))

(assert (=> b!4679464 m!5575349))

(declare-fun m!5575351 () Bool)

(assert (=> b!4679464 m!5575351))

(declare-fun m!5575353 () Bool)

(assert (=> b!4679464 m!5575353))

(declare-fun m!5575355 () Bool)

(assert (=> b!4679467 m!5575355))

(declare-fun m!5575357 () Bool)

(assert (=> b!4679463 m!5575357))

(declare-fun m!5575359 () Bool)

(assert (=> b!4679463 m!5575359))

(declare-fun m!5575361 () Bool)

(assert (=> b!4679463 m!5575361))

(declare-fun m!5575363 () Bool)

(assert (=> b!4679453 m!5575363))

(declare-fun m!5575365 () Bool)

(assert (=> b!4679453 m!5575365))

(declare-fun m!5575367 () Bool)

(assert (=> b!4679453 m!5575367))

(declare-fun m!5575369 () Bool)

(assert (=> b!4679455 m!5575369))

(declare-fun m!5575371 () Bool)

(assert (=> b!4679455 m!5575371))

(declare-fun m!5575373 () Bool)

(assert (=> start!472448 m!5575373))

(declare-fun m!5575375 () Bool)

(assert (=> start!472448 m!5575375))

(declare-fun m!5575377 () Bool)

(assert (=> b!4679456 m!5575377))

(declare-fun m!5575379 () Bool)

(assert (=> b!4679456 m!5575379))

(assert (=> b!4679456 m!5575379))

(declare-fun m!5575381 () Bool)

(assert (=> b!4679456 m!5575381))

(declare-fun m!5575383 () Bool)

(assert (=> b!4679456 m!5575383))

(declare-fun m!5575385 () Bool)

(assert (=> b!4679452 m!5575385))

(declare-fun m!5575387 () Bool)

(assert (=> b!4679462 m!5575387))

(declare-fun m!5575389 () Bool)

(assert (=> b!4679460 m!5575389))

(declare-fun m!5575391 () Bool)

(assert (=> b!4679460 m!5575391))

(declare-fun m!5575393 () Bool)

(assert (=> b!4679449 m!5575393))

(check-sat (not b!4679448) (not b!4679469) (not start!472448) (not b!4679465) tp_is_empty!30445 (not b!4679456) (not b!4679451) (not b!4679446) (not b!4679463) tp_is_empty!30447 (not b!4679467) (not b!4679453) (not b!4679464) (not b!4679468) (not b!4679457) (not b!4679462) (not b!4679460) (not b!4679466) (not b!4679449) (not b!4679454) (not b!4679459) (not b!4679447) (not b!4679461) (not b!4679452) (not b!4679455))
(check-sat)
