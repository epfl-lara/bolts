; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473932 () Bool)

(assert start!473932)

(declare-fun b!4687516 () Bool)

(declare-fun res!1976721 () Bool)

(declare-fun e!2924392 () Bool)

(assert (=> b!4687516 (=> (not res!1976721) (not e!2924392))))

(declare-datatypes ((K!13755 0))(
  ( (K!13756 (val!19275 Int)) )
))
(declare-datatypes ((V!14001 0))(
  ( (V!14002 (val!19276 Int)) )
))
(declare-datatypes ((tuple2!53762 0))(
  ( (tuple2!53763 (_1!30175 K!13755) (_2!30175 V!14001)) )
))
(declare-datatypes ((List!52501 0))(
  ( (Nil!52377) (Cons!52377 (h!58614 tuple2!53762) (t!359669 List!52501)) )
))
(declare-fun oldBucket!34 () List!52501)

(declare-fun noDuplicateKeys!1842 (List!52501) Bool)

(assert (=> b!4687516 (= res!1976721 (noDuplicateKeys!1842 oldBucket!34))))

(declare-fun b!4687517 () Bool)

(declare-fun e!2924393 () Bool)

(declare-fun e!2924394 () Bool)

(assert (=> b!4687517 (= e!2924393 (not e!2924394))))

(declare-fun res!1976726 () Bool)

(assert (=> b!4687517 (=> res!1976726 e!2924394)))

(declare-fun key!4653 () K!13755)

(get-info :version)

(assert (=> b!4687517 (= res!1976726 (or (and ((_ is Cons!52377) oldBucket!34) (= (_1!30175 (h!58614 oldBucket!34)) key!4653)) (not ((_ is Cons!52377) oldBucket!34)) (= (_1!30175 (h!58614 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4937 0))(
  ( (ListMap!4938 (toList!5573 List!52501)) )
))
(declare-fun lt!1846791 () ListMap!4937)

(declare-datatypes ((tuple2!53764 0))(
  ( (tuple2!53765 (_1!30176 (_ BitVec 64)) (_2!30176 List!52501)) )
))
(declare-datatypes ((List!52502 0))(
  ( (Nil!52378) (Cons!52378 (h!58615 tuple2!53764) (t!359670 List!52502)) )
))
(declare-datatypes ((ListLongMap!4103 0))(
  ( (ListLongMap!4104 (toList!5574 List!52502)) )
))
(declare-fun lm!2023 () ListLongMap!4103)

(declare-fun lt!1846797 () ListMap!4937)

(declare-fun addToMapMapFromBucket!1274 (List!52501 ListMap!4937) ListMap!4937)

(assert (=> b!4687517 (= lt!1846791 (addToMapMapFromBucket!1274 (_2!30176 (h!58615 (toList!5574 lm!2023))) lt!1846797))))

(declare-fun extractMap!1868 (List!52502) ListMap!4937)

(assert (=> b!4687517 (= lt!1846797 (extractMap!1868 (t!359670 (toList!5574 lm!2023))))))

(declare-fun tail!8558 (ListLongMap!4103) ListLongMap!4103)

(assert (=> b!4687517 (= (t!359670 (toList!5574 lm!2023)) (toList!5574 (tail!8558 lm!2023)))))

(declare-fun b!4687518 () Bool)

(declare-fun e!2924397 () Bool)

(assert (=> b!4687518 (= e!2924392 e!2924397)))

(declare-fun res!1976722 () Bool)

(assert (=> b!4687518 (=> (not res!1976722) (not e!2924397))))

(declare-fun contains!15556 (ListMap!4937 K!13755) Bool)

(assert (=> b!4687518 (= res!1976722 (contains!15556 lt!1846791 key!4653))))

(assert (=> b!4687518 (= lt!1846791 (extractMap!1868 (toList!5574 lm!2023)))))

(declare-fun b!4687519 () Bool)

(declare-fun e!2924398 () Bool)

(declare-fun e!2924391 () Bool)

(assert (=> b!4687519 (= e!2924398 e!2924391)))

(declare-fun res!1976720 () Bool)

(assert (=> b!4687519 (=> res!1976720 e!2924391)))

(declare-fun lt!1846804 () List!52501)

(declare-fun lt!1846795 () List!52501)

(declare-fun removePairForKey!1437 (List!52501 K!13755) List!52501)

(assert (=> b!4687519 (= res!1976720 (not (= (removePairForKey!1437 lt!1846795 key!4653) lt!1846804)))))

(declare-fun newBucket!218 () List!52501)

(declare-fun tail!8559 (List!52501) List!52501)

(assert (=> b!4687519 (= lt!1846804 (tail!8559 newBucket!218))))

(assert (=> b!4687519 (= lt!1846795 (tail!8559 oldBucket!34))))

(declare-fun b!4687520 () Bool)

(declare-fun e!2924390 () Bool)

(assert (=> b!4687520 (= e!2924397 e!2924390)))

(declare-fun res!1976730 () Bool)

(assert (=> b!4687520 (=> (not res!1976730) (not e!2924390))))

(declare-fun lt!1846801 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4687520 (= res!1976730 (= lt!1846801 hash!405))))

(declare-datatypes ((Hashable!6211 0))(
  ( (HashableExt!6210 (__x!31914 Int)) )
))
(declare-fun hashF!1323 () Hashable!6211)

(declare-fun hash!4045 (Hashable!6211 K!13755) (_ BitVec 64))

(assert (=> b!4687520 (= lt!1846801 (hash!4045 hashF!1323 key!4653))))

(declare-fun b!4687521 () Bool)

(declare-fun e!2924389 () Bool)

(declare-fun tp!1345728 () Bool)

(assert (=> b!4687521 (= e!2924389 tp!1345728)))

(declare-fun res!1976717 () Bool)

(assert (=> start!473932 (=> (not res!1976717) (not e!2924392))))

(declare-fun lambda!206433 () Int)

(declare-fun forall!11301 (List!52502 Int) Bool)

(assert (=> start!473932 (= res!1976717 (forall!11301 (toList!5574 lm!2023) lambda!206433))))

(assert (=> start!473932 e!2924392))

(declare-fun inv!67629 (ListLongMap!4103) Bool)

(assert (=> start!473932 (and (inv!67629 lm!2023) e!2924389)))

(declare-fun tp_is_empty!30661 () Bool)

(assert (=> start!473932 tp_is_empty!30661))

(declare-fun e!2924395 () Bool)

(assert (=> start!473932 e!2924395))

(assert (=> start!473932 true))

(declare-fun e!2924396 () Bool)

(assert (=> start!473932 e!2924396))

(declare-fun b!4687522 () Bool)

(assert (=> b!4687522 (= e!2924394 e!2924398)))

(declare-fun res!1976719 () Bool)

(assert (=> b!4687522 (=> res!1976719 e!2924398)))

(declare-fun containsKey!3025 (List!52501 K!13755) Bool)

(assert (=> b!4687522 (= res!1976719 (not (containsKey!3025 (t!359669 oldBucket!34) key!4653)))))

(assert (=> b!4687522 (containsKey!3025 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123521 0))(
  ( (Unit!123522) )
))
(declare-fun lt!1846802 () Unit!123521)

(declare-fun lemmaGetPairDefinedThenContainsKey!194 (List!52501 K!13755 Hashable!6211) Unit!123521)

(assert (=> b!4687522 (= lt!1846802 (lemmaGetPairDefinedThenContainsKey!194 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1846803 () List!52501)

(declare-datatypes ((Option!12049 0))(
  ( (None!12048) (Some!12048 (v!46447 tuple2!53762)) )
))
(declare-fun isDefined!9304 (Option!12049) Bool)

(declare-fun getPair!446 (List!52501 K!13755) Option!12049)

(assert (=> b!4687522 (isDefined!9304 (getPair!446 lt!1846803 key!4653))))

(declare-fun lt!1846806 () tuple2!53764)

(declare-fun lt!1846798 () Unit!123521)

(declare-fun forallContained!3408 (List!52502 Int tuple2!53764) Unit!123521)

(assert (=> b!4687522 (= lt!1846798 (forallContained!3408 (toList!5574 lm!2023) lambda!206433 lt!1846806))))

(declare-fun contains!15557 (List!52502 tuple2!53764) Bool)

(assert (=> b!4687522 (contains!15557 (toList!5574 lm!2023) lt!1846806)))

(assert (=> b!4687522 (= lt!1846806 (tuple2!53765 lt!1846801 lt!1846803))))

(declare-fun lt!1846800 () Unit!123521)

(declare-fun lemmaGetValueImpliesTupleContained!251 (ListLongMap!4103 (_ BitVec 64) List!52501) Unit!123521)

(assert (=> b!4687522 (= lt!1846800 (lemmaGetValueImpliesTupleContained!251 lm!2023 lt!1846801 lt!1846803))))

(declare-fun apply!12325 (ListLongMap!4103 (_ BitVec 64)) List!52501)

(assert (=> b!4687522 (= lt!1846803 (apply!12325 lm!2023 lt!1846801))))

(declare-fun contains!15558 (ListLongMap!4103 (_ BitVec 64)) Bool)

(assert (=> b!4687522 (contains!15558 lm!2023 lt!1846801)))

(declare-fun lt!1846810 () Unit!123521)

(declare-fun lemmaInGenMapThenLongMapContainsHash!652 (ListLongMap!4103 K!13755 Hashable!6211) Unit!123521)

(assert (=> b!4687522 (= lt!1846810 (lemmaInGenMapThenLongMapContainsHash!652 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1846809 () Unit!123521)

(declare-fun lemmaInGenMapThenGetPairDefined!242 (ListLongMap!4103 K!13755 Hashable!6211) Unit!123521)

(assert (=> b!4687522 (= lt!1846809 (lemmaInGenMapThenGetPairDefined!242 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4687523 () Bool)

(declare-fun res!1976724 () Bool)

(assert (=> b!4687523 (=> (not res!1976724) (not e!2924390))))

(declare-fun allKeysSameHash!1668 (List!52501 (_ BitVec 64) Hashable!6211) Bool)

(assert (=> b!4687523 (= res!1976724 (allKeysSameHash!1668 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4687524 () Bool)

(declare-fun tp_is_empty!30663 () Bool)

(declare-fun tp!1345729 () Bool)

(assert (=> b!4687524 (= e!2924396 (and tp_is_empty!30661 tp_is_empty!30663 tp!1345729))))

(declare-fun b!4687525 () Bool)

(assert (=> b!4687525 (= e!2924390 e!2924393)))

(declare-fun res!1976727 () Bool)

(assert (=> b!4687525 (=> (not res!1976727) (not e!2924393))))

(declare-fun lt!1846794 () tuple2!53764)

(declare-fun head!9947 (List!52502) tuple2!53764)

(assert (=> b!4687525 (= res!1976727 (= (head!9947 (toList!5574 lm!2023)) lt!1846794))))

(assert (=> b!4687525 (= lt!1846794 (tuple2!53765 hash!405 oldBucket!34))))

(declare-fun b!4687526 () Bool)

(declare-fun res!1976725 () Bool)

(assert (=> b!4687526 (=> (not res!1976725) (not e!2924392))))

(assert (=> b!4687526 (= res!1976725 (= (removePairForKey!1437 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4687527 () Bool)

(declare-fun res!1976729 () Bool)

(assert (=> b!4687527 (=> res!1976729 e!2924391)))

(assert (=> b!4687527 (= res!1976729 (not (= (removePairForKey!1437 (t!359669 oldBucket!34) key!4653) lt!1846804)))))

(declare-fun b!4687528 () Bool)

(declare-fun res!1976723 () Bool)

(assert (=> b!4687528 (=> (not res!1976723) (not e!2924392))))

(assert (=> b!4687528 (= res!1976723 (allKeysSameHash!1668 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1345727 () Bool)

(declare-fun b!4687529 () Bool)

(assert (=> b!4687529 (= e!2924395 (and tp_is_empty!30661 tp_is_empty!30663 tp!1345727))))

(declare-fun b!4687530 () Bool)

(declare-fun res!1976728 () Bool)

(assert (=> b!4687530 (=> (not res!1976728) (not e!2924393))))

(assert (=> b!4687530 (= res!1976728 ((_ is Cons!52378) (toList!5574 lm!2023)))))

(declare-fun b!4687531 () Bool)

(declare-fun res!1976718 () Bool)

(assert (=> b!4687531 (=> (not res!1976718) (not e!2924392))))

(assert (=> b!4687531 (= res!1976718 (noDuplicateKeys!1842 newBucket!218))))

(declare-fun b!4687532 () Bool)

(assert (=> b!4687532 (= e!2924391 (not (= oldBucket!34 Nil!52377)))))

(declare-fun lt!1846799 () ListMap!4937)

(assert (=> b!4687532 (= lt!1846799 (extractMap!1868 (Cons!52378 lt!1846794 (t!359670 (toList!5574 lm!2023)))))))

(declare-fun lt!1846792 () tuple2!53762)

(declare-fun eq!1001 (ListMap!4937 ListMap!4937) Bool)

(declare-fun +!2126 (ListMap!4937 tuple2!53762) ListMap!4937)

(assert (=> b!4687532 (eq!1001 (addToMapMapFromBucket!1274 (Cons!52377 lt!1846792 lt!1846804) lt!1846797) (+!2126 (addToMapMapFromBucket!1274 lt!1846804 lt!1846797) lt!1846792))))

(declare-fun lt!1846793 () Unit!123521)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!250 (tuple2!53762 List!52501 ListMap!4937) Unit!123521)

(assert (=> b!4687532 (= lt!1846793 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!250 lt!1846792 lt!1846804 lt!1846797))))

(declare-fun head!9948 (List!52501) tuple2!53762)

(assert (=> b!4687532 (= lt!1846792 (head!9948 newBucket!218))))

(declare-fun lt!1846808 () tuple2!53762)

(assert (=> b!4687532 (eq!1001 (addToMapMapFromBucket!1274 (Cons!52377 lt!1846808 lt!1846795) lt!1846797) (+!2126 (addToMapMapFromBucket!1274 lt!1846795 lt!1846797) lt!1846808))))

(declare-fun lt!1846805 () Unit!123521)

(assert (=> b!4687532 (= lt!1846805 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!250 lt!1846808 lt!1846795 lt!1846797))))

(assert (=> b!4687532 (= lt!1846808 (head!9948 oldBucket!34))))

(declare-fun lt!1846796 () List!52502)

(assert (=> b!4687532 (contains!15556 (extractMap!1868 lt!1846796) key!4653)))

(declare-fun lt!1846807 () Unit!123521)

(declare-fun lemmaListContainsThenExtractedMapContains!434 (ListLongMap!4103 K!13755 Hashable!6211) Unit!123521)

(assert (=> b!4687532 (= lt!1846807 (lemmaListContainsThenExtractedMapContains!434 (ListLongMap!4104 lt!1846796) key!4653 hashF!1323))))

(assert (=> b!4687532 (= lt!1846796 (Cons!52378 (tuple2!53765 hash!405 (t!359669 oldBucket!34)) (t!359670 (toList!5574 lm!2023))))))

(declare-fun b!4687533 () Bool)

(declare-fun res!1976731 () Bool)

(assert (=> b!4687533 (=> (not res!1976731) (not e!2924390))))

(declare-fun allKeysSameHashInMap!1756 (ListLongMap!4103 Hashable!6211) Bool)

(assert (=> b!4687533 (= res!1976731 (allKeysSameHashInMap!1756 lm!2023 hashF!1323))))

(assert (= (and start!473932 res!1976717) b!4687516))

(assert (= (and b!4687516 res!1976721) b!4687531))

(assert (= (and b!4687531 res!1976718) b!4687526))

(assert (= (and b!4687526 res!1976725) b!4687528))

(assert (= (and b!4687528 res!1976723) b!4687518))

(assert (= (and b!4687518 res!1976722) b!4687520))

(assert (= (and b!4687520 res!1976730) b!4687523))

(assert (= (and b!4687523 res!1976724) b!4687533))

(assert (= (and b!4687533 res!1976731) b!4687525))

(assert (= (and b!4687525 res!1976727) b!4687530))

(assert (= (and b!4687530 res!1976728) b!4687517))

(assert (= (and b!4687517 (not res!1976726)) b!4687522))

(assert (= (and b!4687522 (not res!1976719)) b!4687519))

(assert (= (and b!4687519 (not res!1976720)) b!4687527))

(assert (= (and b!4687527 (not res!1976729)) b!4687532))

(assert (= start!473932 b!4687521))

(assert (= (and start!473932 ((_ is Cons!52377) oldBucket!34)) b!4687529))

(assert (= (and start!473932 ((_ is Cons!52377) newBucket!218)) b!4687524))

(declare-fun m!5587445 () Bool)

(assert (=> b!4687516 m!5587445))

(declare-fun m!5587447 () Bool)

(assert (=> b!4687517 m!5587447))

(declare-fun m!5587449 () Bool)

(assert (=> b!4687517 m!5587449))

(declare-fun m!5587451 () Bool)

(assert (=> b!4687517 m!5587451))

(declare-fun m!5587453 () Bool)

(assert (=> b!4687525 m!5587453))

(declare-fun m!5587455 () Bool)

(assert (=> b!4687532 m!5587455))

(declare-fun m!5587457 () Bool)

(assert (=> b!4687532 m!5587457))

(declare-fun m!5587459 () Bool)

(assert (=> b!4687532 m!5587459))

(declare-fun m!5587461 () Bool)

(assert (=> b!4687532 m!5587461))

(declare-fun m!5587463 () Bool)

(assert (=> b!4687532 m!5587463))

(declare-fun m!5587465 () Bool)

(assert (=> b!4687532 m!5587465))

(assert (=> b!4687532 m!5587457))

(declare-fun m!5587467 () Bool)

(assert (=> b!4687532 m!5587467))

(declare-fun m!5587469 () Bool)

(assert (=> b!4687532 m!5587469))

(declare-fun m!5587471 () Bool)

(assert (=> b!4687532 m!5587471))

(declare-fun m!5587473 () Bool)

(assert (=> b!4687532 m!5587473))

(declare-fun m!5587475 () Bool)

(assert (=> b!4687532 m!5587475))

(assert (=> b!4687532 m!5587471))

(assert (=> b!4687532 m!5587459))

(assert (=> b!4687532 m!5587467))

(declare-fun m!5587477 () Bool)

(assert (=> b!4687532 m!5587477))

(assert (=> b!4687532 m!5587465))

(declare-fun m!5587479 () Bool)

(assert (=> b!4687532 m!5587479))

(declare-fun m!5587481 () Bool)

(assert (=> b!4687532 m!5587481))

(declare-fun m!5587483 () Bool)

(assert (=> b!4687532 m!5587483))

(assert (=> b!4687532 m!5587473))

(declare-fun m!5587485 () Bool)

(assert (=> b!4687532 m!5587485))

(assert (=> b!4687532 m!5587483))

(declare-fun m!5587487 () Bool)

(assert (=> b!4687531 m!5587487))

(declare-fun m!5587489 () Bool)

(assert (=> b!4687518 m!5587489))

(declare-fun m!5587491 () Bool)

(assert (=> b!4687518 m!5587491))

(declare-fun m!5587493 () Bool)

(assert (=> b!4687527 m!5587493))

(declare-fun m!5587495 () Bool)

(assert (=> b!4687526 m!5587495))

(declare-fun m!5587497 () Bool)

(assert (=> b!4687523 m!5587497))

(declare-fun m!5587499 () Bool)

(assert (=> b!4687522 m!5587499))

(declare-fun m!5587501 () Bool)

(assert (=> b!4687522 m!5587501))

(assert (=> b!4687522 m!5587499))

(declare-fun m!5587503 () Bool)

(assert (=> b!4687522 m!5587503))

(declare-fun m!5587505 () Bool)

(assert (=> b!4687522 m!5587505))

(declare-fun m!5587507 () Bool)

(assert (=> b!4687522 m!5587507))

(declare-fun m!5587509 () Bool)

(assert (=> b!4687522 m!5587509))

(declare-fun m!5587511 () Bool)

(assert (=> b!4687522 m!5587511))

(declare-fun m!5587513 () Bool)

(assert (=> b!4687522 m!5587513))

(declare-fun m!5587515 () Bool)

(assert (=> b!4687522 m!5587515))

(declare-fun m!5587517 () Bool)

(assert (=> b!4687522 m!5587517))

(declare-fun m!5587519 () Bool)

(assert (=> b!4687522 m!5587519))

(declare-fun m!5587521 () Bool)

(assert (=> b!4687522 m!5587521))

(declare-fun m!5587523 () Bool)

(assert (=> start!473932 m!5587523))

(declare-fun m!5587525 () Bool)

(assert (=> start!473932 m!5587525))

(declare-fun m!5587527 () Bool)

(assert (=> b!4687519 m!5587527))

(declare-fun m!5587529 () Bool)

(assert (=> b!4687519 m!5587529))

(declare-fun m!5587531 () Bool)

(assert (=> b!4687519 m!5587531))

(declare-fun m!5587533 () Bool)

(assert (=> b!4687533 m!5587533))

(declare-fun m!5587535 () Bool)

(assert (=> b!4687520 m!5587535))

(declare-fun m!5587537 () Bool)

(assert (=> b!4687528 m!5587537))

(check-sat (not b!4687524) (not b!4687517) (not start!473932) (not b!4687528) (not b!4687531) (not b!4687523) (not b!4687521) tp_is_empty!30661 (not b!4687518) (not b!4687526) (not b!4687533) (not b!4687522) (not b!4687532) (not b!4687520) (not b!4687519) (not b!4687529) tp_is_empty!30663 (not b!4687516) (not b!4687527) (not b!4687525))
(check-sat)
