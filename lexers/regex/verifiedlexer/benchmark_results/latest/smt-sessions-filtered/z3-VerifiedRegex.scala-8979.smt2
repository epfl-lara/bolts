; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!483936 () Bool)

(assert start!483936)

(declare-fun b!4742598 () Bool)

(declare-fun res!2009482 () Bool)

(declare-fun e!2958351 () Bool)

(assert (=> b!4742598 (=> (not res!2009482) (not e!2958351))))

(declare-datatypes ((K!14300 0))(
  ( (K!14301 (val!19711 Int)) )
))
(declare-datatypes ((V!14546 0))(
  ( (V!14547 (val!19712 Int)) )
))
(declare-datatypes ((tuple2!54634 0))(
  ( (tuple2!54635 (_1!30611 K!14300) (_2!30611 V!14546)) )
))
(declare-datatypes ((List!53081 0))(
  ( (Nil!52957) (Cons!52957 (h!59340 tuple2!54634) (t!360381 List!53081)) )
))
(declare-fun oldBucket!34 () List!53081)

(declare-fun noDuplicateKeys!2060 (List!53081) Bool)

(assert (=> b!4742598 (= res!2009482 (noDuplicateKeys!2060 oldBucket!34))))

(declare-fun b!4742599 () Bool)

(declare-fun res!2009489 () Bool)

(declare-fun e!2958350 () Bool)

(assert (=> b!4742599 (=> res!2009489 e!2958350)))

(declare-fun lt!1905090 () List!53081)

(assert (=> b!4742599 (= res!2009489 (not (noDuplicateKeys!2060 lt!1905090)))))

(declare-fun b!4742600 () Bool)

(declare-fun e!2958354 () Bool)

(declare-fun tp!1349283 () Bool)

(assert (=> b!4742600 (= e!2958354 tp!1349283)))

(declare-fun b!4742601 () Bool)

(declare-fun res!2009498 () Bool)

(declare-fun e!2958347 () Bool)

(assert (=> b!4742601 (=> res!2009498 e!2958347)))

(declare-fun key!4653 () K!14300)

(declare-fun removePairForKey!1655 (List!53081 K!14300) List!53081)

(assert (=> b!4742601 (= res!2009498 (not (= (removePairForKey!1655 (t!360381 oldBucket!34) key!4653) lt!1905090)))))

(declare-fun b!4742602 () Bool)

(declare-fun res!2009501 () Bool)

(assert (=> b!4742602 (=> (not res!2009501) (not e!2958351))))

(declare-fun newBucket!218 () List!53081)

(assert (=> b!4742602 (= res!2009501 (noDuplicateKeys!2060 newBucket!218))))

(declare-fun tp_is_empty!31533 () Bool)

(declare-fun e!2958348 () Bool)

(declare-fun b!4742603 () Bool)

(declare-fun tp!1349282 () Bool)

(declare-fun tp_is_empty!31535 () Bool)

(assert (=> b!4742603 (= e!2958348 (and tp_is_empty!31533 tp_is_empty!31535 tp!1349282))))

(declare-fun b!4742605 () Bool)

(declare-fun res!2009495 () Bool)

(declare-fun e!2958352 () Bool)

(assert (=> b!4742605 (=> (not res!2009495) (not e!2958352))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6429 0))(
  ( (HashableExt!6428 (__x!32132 Int)) )
))
(declare-fun hashF!1323 () Hashable!6429)

(declare-fun allKeysSameHash!1886 (List!53081 (_ BitVec 64) Hashable!6429) Bool)

(assert (=> b!4742605 (= res!2009495 (allKeysSameHash!1886 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4742606 () Bool)

(declare-fun res!2009479 () Bool)

(assert (=> b!4742606 (=> (not res!2009479) (not e!2958351))))

(assert (=> b!4742606 (= res!2009479 (= (removePairForKey!1655 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4742607 () Bool)

(declare-fun e!2958345 () Bool)

(declare-fun e!2958344 () Bool)

(assert (=> b!4742607 (= e!2958345 (not e!2958344))))

(declare-fun res!2009480 () Bool)

(assert (=> b!4742607 (=> res!2009480 e!2958344)))

(get-info :version)

(assert (=> b!4742607 (= res!2009480 (or (and ((_ is Cons!52957) oldBucket!34) (= (_1!30611 (h!59340 oldBucket!34)) key!4653)) (not ((_ is Cons!52957) oldBucket!34)) (= (_1!30611 (h!59340 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5373 0))(
  ( (ListMap!5374 (toList!6009 List!53081)) )
))
(declare-fun lt!1905072 () ListMap!5373)

(declare-datatypes ((tuple2!54636 0))(
  ( (tuple2!54637 (_1!30612 (_ BitVec 64)) (_2!30612 List!53081)) )
))
(declare-datatypes ((List!53082 0))(
  ( (Nil!52958) (Cons!52958 (h!59341 tuple2!54636) (t!360382 List!53082)) )
))
(declare-datatypes ((ListLongMap!4539 0))(
  ( (ListLongMap!4540 (toList!6010 List!53082)) )
))
(declare-fun lm!2023 () ListLongMap!4539)

(declare-fun lt!1905069 () ListMap!5373)

(declare-fun addToMapMapFromBucket!1490 (List!53081 ListMap!5373) ListMap!5373)

(assert (=> b!4742607 (= lt!1905072 (addToMapMapFromBucket!1490 (_2!30612 (h!59341 (toList!6010 lm!2023))) lt!1905069))))

(declare-fun extractMap!2086 (List!53082) ListMap!5373)

(assert (=> b!4742607 (= lt!1905069 (extractMap!2086 (t!360382 (toList!6010 lm!2023))))))

(declare-fun tail!9120 (ListLongMap!4539) ListLongMap!4539)

(assert (=> b!4742607 (= (t!360382 (toList!6010 lm!2023)) (toList!6010 (tail!9120 lm!2023)))))

(declare-fun b!4742608 () Bool)

(declare-fun res!2009481 () Bool)

(assert (=> b!4742608 (=> (not res!2009481) (not e!2958352))))

(declare-fun allKeysSameHashInMap!1974 (ListLongMap!4539 Hashable!6429) Bool)

(assert (=> b!4742608 (= res!2009481 (allKeysSameHashInMap!1974 lm!2023 hashF!1323))))

(declare-fun tp!1349281 () Bool)

(declare-fun e!2958346 () Bool)

(declare-fun b!4742609 () Bool)

(assert (=> b!4742609 (= e!2958346 (and tp_is_empty!31533 tp_is_empty!31535 tp!1349281))))

(declare-fun b!4742610 () Bool)

(declare-fun e!2958349 () Bool)

(assert (=> b!4742610 (= e!2958344 e!2958349)))

(declare-fun res!2009483 () Bool)

(assert (=> b!4742610 (=> res!2009483 e!2958349)))

(declare-fun containsKey!3477 (List!53081 K!14300) Bool)

(assert (=> b!4742610 (= res!2009483 (not (containsKey!3477 (t!360381 oldBucket!34) key!4653)))))

(assert (=> b!4742610 (containsKey!3477 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!133725 0))(
  ( (Unit!133726) )
))
(declare-fun lt!1905082 () Unit!133725)

(declare-fun lemmaGetPairDefinedThenContainsKey!344 (List!53081 K!14300 Hashable!6429) Unit!133725)

(assert (=> b!4742610 (= lt!1905082 (lemmaGetPairDefinedThenContainsKey!344 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1905083 () List!53081)

(declare-datatypes ((Option!12463 0))(
  ( (None!12462) (Some!12462 (v!47135 tuple2!54634)) )
))
(declare-fun isDefined!9717 (Option!12463) Bool)

(declare-fun getPair!600 (List!53081 K!14300) Option!12463)

(assert (=> b!4742610 (isDefined!9717 (getPair!600 lt!1905083 key!4653))))

(declare-fun lt!1905080 () tuple2!54636)

(declare-fun lambda!219408 () Int)

(declare-fun lt!1905087 () Unit!133725)

(declare-fun forallContained!3727 (List!53082 Int tuple2!54636) Unit!133725)

(assert (=> b!4742610 (= lt!1905087 (forallContained!3727 (toList!6010 lm!2023) lambda!219408 lt!1905080))))

(declare-fun contains!16368 (List!53082 tuple2!54636) Bool)

(assert (=> b!4742610 (contains!16368 (toList!6010 lm!2023) lt!1905080)))

(declare-fun lt!1905089 () (_ BitVec 64))

(assert (=> b!4742610 (= lt!1905080 (tuple2!54637 lt!1905089 lt!1905083))))

(declare-fun lt!1905075 () Unit!133725)

(declare-fun lemmaGetValueImpliesTupleContained!405 (ListLongMap!4539 (_ BitVec 64) List!53081) Unit!133725)

(assert (=> b!4742610 (= lt!1905075 (lemmaGetValueImpliesTupleContained!405 lm!2023 lt!1905089 lt!1905083))))

(declare-fun apply!12485 (ListLongMap!4539 (_ BitVec 64)) List!53081)

(assert (=> b!4742610 (= lt!1905083 (apply!12485 lm!2023 lt!1905089))))

(declare-fun contains!16369 (ListLongMap!4539 (_ BitVec 64)) Bool)

(assert (=> b!4742610 (contains!16369 lm!2023 lt!1905089)))

(declare-fun lt!1905078 () Unit!133725)

(declare-fun lemmaInGenMapThenLongMapContainsHash!806 (ListLongMap!4539 K!14300 Hashable!6429) Unit!133725)

(assert (=> b!4742610 (= lt!1905078 (lemmaInGenMapThenLongMapContainsHash!806 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1905071 () Unit!133725)

(declare-fun lemmaInGenMapThenGetPairDefined!396 (ListLongMap!4539 K!14300 Hashable!6429) Unit!133725)

(assert (=> b!4742610 (= lt!1905071 (lemmaInGenMapThenGetPairDefined!396 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4742611 () Bool)

(declare-fun res!2009490 () Bool)

(assert (=> b!4742611 (=> res!2009490 e!2958350)))

(declare-fun lt!1905074 () tuple2!54634)

(assert (=> b!4742611 (= res!2009490 (not (= (h!59340 oldBucket!34) lt!1905074)))))

(declare-fun b!4742612 () Bool)

(declare-fun res!2009484 () Bool)

(assert (=> b!4742612 (=> res!2009484 e!2958350)))

(assert (=> b!4742612 (= res!2009484 (not (noDuplicateKeys!2060 (t!360381 oldBucket!34))))))

(declare-fun b!4742613 () Bool)

(declare-fun res!2009499 () Bool)

(assert (=> b!4742613 (=> (not res!2009499) (not e!2958345))))

(assert (=> b!4742613 (= res!2009499 ((_ is Cons!52958) (toList!6010 lm!2023)))))

(declare-fun b!4742614 () Bool)

(declare-fun res!2009494 () Bool)

(assert (=> b!4742614 (=> res!2009494 e!2958350)))

(declare-fun lt!1905073 () ListMap!5373)

(declare-fun lt!1905084 () ListMap!5373)

(declare-fun eq!1157 (ListMap!5373 ListMap!5373) Bool)

(declare-fun +!2308 (ListMap!5373 tuple2!54634) ListMap!5373)

(assert (=> b!4742614 (= res!2009494 (not (eq!1157 lt!1905084 (+!2308 lt!1905073 lt!1905074))))))

(declare-fun b!4742615 () Bool)

(declare-fun res!2009487 () Bool)

(assert (=> b!4742615 (=> res!2009487 e!2958350)))

(declare-fun lt!1905085 () List!53082)

(declare-fun forall!11687 (List!53082 Int) Bool)

(assert (=> b!4742615 (= res!2009487 (not (forall!11687 lt!1905085 lambda!219408)))))

(declare-fun b!4742616 () Bool)

(assert (=> b!4742616 (= e!2958350 true)))

(declare-fun lt!1905081 () Bool)

(declare-fun lt!1905091 () ListLongMap!4539)

(assert (=> b!4742616 (= lt!1905081 (allKeysSameHashInMap!1974 lt!1905091 hashF!1323))))

(declare-fun b!4742617 () Bool)

(assert (=> b!4742617 (= e!2958352 e!2958345)))

(declare-fun res!2009493 () Bool)

(assert (=> b!4742617 (=> (not res!2009493) (not e!2958345))))

(declare-fun lt!1905086 () tuple2!54636)

(declare-fun head!10323 (List!53082) tuple2!54636)

(assert (=> b!4742617 (= res!2009493 (= (head!10323 (toList!6010 lm!2023)) lt!1905086))))

(assert (=> b!4742617 (= lt!1905086 (tuple2!54637 hash!405 oldBucket!34))))

(declare-fun b!4742618 () Bool)

(declare-fun res!2009486 () Bool)

(assert (=> b!4742618 (=> res!2009486 e!2958350)))

(assert (=> b!4742618 (= res!2009486 (not (allKeysSameHash!1886 (t!360381 oldBucket!34) hash!405 hashF!1323)))))

(declare-fun res!2009485 () Bool)

(assert (=> start!483936 (=> (not res!2009485) (not e!2958351))))

(assert (=> start!483936 (= res!2009485 (forall!11687 (toList!6010 lm!2023) lambda!219408))))

(assert (=> start!483936 e!2958351))

(declare-fun inv!68174 (ListLongMap!4539) Bool)

(assert (=> start!483936 (and (inv!68174 lm!2023) e!2958354)))

(assert (=> start!483936 tp_is_empty!31533))

(assert (=> start!483936 e!2958346))

(assert (=> start!483936 true))

(assert (=> start!483936 e!2958348))

(declare-fun b!4742604 () Bool)

(declare-fun res!2009500 () Bool)

(assert (=> b!4742604 (=> (not res!2009500) (not e!2958351))))

(assert (=> b!4742604 (= res!2009500 (allKeysSameHash!1886 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4742619 () Bool)

(declare-fun e!2958353 () Bool)

(assert (=> b!4742619 (= e!2958353 e!2958352)))

(declare-fun res!2009491 () Bool)

(assert (=> b!4742619 (=> (not res!2009491) (not e!2958352))))

(assert (=> b!4742619 (= res!2009491 (= lt!1905089 hash!405))))

(declare-fun hash!4464 (Hashable!6429 K!14300) (_ BitVec 64))

(assert (=> b!4742619 (= lt!1905089 (hash!4464 hashF!1323 key!4653))))

(declare-fun b!4742620 () Bool)

(assert (=> b!4742620 (= e!2958351 e!2958353)))

(declare-fun res!2009497 () Bool)

(assert (=> b!4742620 (=> (not res!2009497) (not e!2958353))))

(declare-fun contains!16370 (ListMap!5373 K!14300) Bool)

(assert (=> b!4742620 (= res!2009497 (contains!16370 lt!1905072 key!4653))))

(assert (=> b!4742620 (= lt!1905072 (extractMap!2086 (toList!6010 lm!2023)))))

(declare-fun b!4742621 () Bool)

(assert (=> b!4742621 (= e!2958349 e!2958347)))

(declare-fun res!2009488 () Bool)

(assert (=> b!4742621 (=> res!2009488 e!2958347)))

(declare-fun lt!1905079 () List!53081)

(assert (=> b!4742621 (= res!2009488 (not (= (removePairForKey!1655 lt!1905079 key!4653) lt!1905090)))))

(declare-fun tail!9121 (List!53081) List!53081)

(assert (=> b!4742621 (= lt!1905090 (tail!9121 newBucket!218))))

(assert (=> b!4742621 (= lt!1905079 (tail!9121 oldBucket!34))))

(declare-fun b!4742622 () Bool)

(declare-fun res!2009496 () Bool)

(assert (=> b!4742622 (=> res!2009496 e!2958350)))

(assert (=> b!4742622 (= res!2009496 (not (allKeysSameHash!1886 lt!1905090 hash!405 hashF!1323)))))

(declare-fun b!4742623 () Bool)

(assert (=> b!4742623 (= e!2958347 e!2958350)))

(declare-fun res!2009492 () Bool)

(assert (=> b!4742623 (=> res!2009492 e!2958350)))

(assert (=> b!4742623 (= res!2009492 (not (eq!1157 lt!1905084 (+!2308 lt!1905073 (h!59340 oldBucket!34)))))))

(assert (=> b!4742623 (= lt!1905073 (extractMap!2086 (Cons!52958 (tuple2!54637 hash!405 lt!1905079) (t!360382 (toList!6010 lm!2023)))))))

(assert (=> b!4742623 (= lt!1905084 (extractMap!2086 (Cons!52958 lt!1905086 (t!360382 (toList!6010 lm!2023)))))))

(assert (=> b!4742623 (eq!1157 (addToMapMapFromBucket!1490 (Cons!52957 lt!1905074 lt!1905090) lt!1905069) (+!2308 (addToMapMapFromBucket!1490 lt!1905090 lt!1905069) lt!1905074))))

(declare-fun lt!1905077 () Unit!133725)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!406 (tuple2!54634 List!53081 ListMap!5373) Unit!133725)

(assert (=> b!4742623 (= lt!1905077 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!406 lt!1905074 lt!1905090 lt!1905069))))

(declare-fun head!10324 (List!53081) tuple2!54634)

(assert (=> b!4742623 (= lt!1905074 (head!10324 newBucket!218))))

(declare-fun lt!1905070 () tuple2!54634)

(assert (=> b!4742623 (eq!1157 (addToMapMapFromBucket!1490 (Cons!52957 lt!1905070 lt!1905079) lt!1905069) (+!2308 (addToMapMapFromBucket!1490 lt!1905079 lt!1905069) lt!1905070))))

(declare-fun lt!1905076 () Unit!133725)

(assert (=> b!4742623 (= lt!1905076 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!406 lt!1905070 lt!1905079 lt!1905069))))

(assert (=> b!4742623 (= lt!1905070 (head!10324 oldBucket!34))))

(assert (=> b!4742623 (contains!16370 (extractMap!2086 lt!1905085) key!4653)))

(declare-fun lt!1905088 () Unit!133725)

(declare-fun lemmaListContainsThenExtractedMapContains!568 (ListLongMap!4539 K!14300 Hashable!6429) Unit!133725)

(assert (=> b!4742623 (= lt!1905088 (lemmaListContainsThenExtractedMapContains!568 lt!1905091 key!4653 hashF!1323))))

(assert (=> b!4742623 (= lt!1905091 (ListLongMap!4540 lt!1905085))))

(assert (=> b!4742623 (= lt!1905085 (Cons!52958 (tuple2!54637 hash!405 (t!360381 oldBucket!34)) (t!360382 (toList!6010 lm!2023))))))

(assert (= (and start!483936 res!2009485) b!4742598))

(assert (= (and b!4742598 res!2009482) b!4742602))

(assert (= (and b!4742602 res!2009501) b!4742606))

(assert (= (and b!4742606 res!2009479) b!4742604))

(assert (= (and b!4742604 res!2009500) b!4742620))

(assert (= (and b!4742620 res!2009497) b!4742619))

(assert (= (and b!4742619 res!2009491) b!4742605))

(assert (= (and b!4742605 res!2009495) b!4742608))

(assert (= (and b!4742608 res!2009481) b!4742617))

(assert (= (and b!4742617 res!2009493) b!4742613))

(assert (= (and b!4742613 res!2009499) b!4742607))

(assert (= (and b!4742607 (not res!2009480)) b!4742610))

(assert (= (and b!4742610 (not res!2009483)) b!4742621))

(assert (= (and b!4742621 (not res!2009488)) b!4742601))

(assert (= (and b!4742601 (not res!2009498)) b!4742623))

(assert (= (and b!4742623 (not res!2009492)) b!4742611))

(assert (= (and b!4742611 (not res!2009490)) b!4742614))

(assert (= (and b!4742614 (not res!2009494)) b!4742615))

(assert (= (and b!4742615 (not res!2009487)) b!4742612))

(assert (= (and b!4742612 (not res!2009484)) b!4742599))

(assert (= (and b!4742599 (not res!2009489)) b!4742618))

(assert (= (and b!4742618 (not res!2009486)) b!4742622))

(assert (= (and b!4742622 (not res!2009496)) b!4742616))

(assert (= start!483936 b!4742600))

(assert (= (and start!483936 ((_ is Cons!52957) oldBucket!34)) b!4742609))

(assert (= (and start!483936 ((_ is Cons!52957) newBucket!218)) b!4742603))

(declare-fun m!5696647 () Bool)

(assert (=> b!4742599 m!5696647))

(declare-fun m!5696649 () Bool)

(assert (=> b!4742620 m!5696649))

(declare-fun m!5696651 () Bool)

(assert (=> b!4742620 m!5696651))

(declare-fun m!5696653 () Bool)

(assert (=> b!4742619 m!5696653))

(declare-fun m!5696655 () Bool)

(assert (=> b!4742621 m!5696655))

(declare-fun m!5696657 () Bool)

(assert (=> b!4742621 m!5696657))

(declare-fun m!5696659 () Bool)

(assert (=> b!4742621 m!5696659))

(declare-fun m!5696661 () Bool)

(assert (=> b!4742598 m!5696661))

(declare-fun m!5696663 () Bool)

(assert (=> b!4742616 m!5696663))

(declare-fun m!5696665 () Bool)

(assert (=> b!4742614 m!5696665))

(assert (=> b!4742614 m!5696665))

(declare-fun m!5696667 () Bool)

(assert (=> b!4742614 m!5696667))

(declare-fun m!5696669 () Bool)

(assert (=> b!4742623 m!5696669))

(declare-fun m!5696671 () Bool)

(assert (=> b!4742623 m!5696671))

(declare-fun m!5696673 () Bool)

(assert (=> b!4742623 m!5696673))

(declare-fun m!5696675 () Bool)

(assert (=> b!4742623 m!5696675))

(declare-fun m!5696677 () Bool)

(assert (=> b!4742623 m!5696677))

(declare-fun m!5696679 () Bool)

(assert (=> b!4742623 m!5696679))

(declare-fun m!5696681 () Bool)

(assert (=> b!4742623 m!5696681))

(declare-fun m!5696683 () Bool)

(assert (=> b!4742623 m!5696683))

(declare-fun m!5696685 () Bool)

(assert (=> b!4742623 m!5696685))

(declare-fun m!5696687 () Bool)

(assert (=> b!4742623 m!5696687))

(declare-fun m!5696689 () Bool)

(assert (=> b!4742623 m!5696689))

(declare-fun m!5696691 () Bool)

(assert (=> b!4742623 m!5696691))

(declare-fun m!5696693 () Bool)

(assert (=> b!4742623 m!5696693))

(assert (=> b!4742623 m!5696669))

(declare-fun m!5696695 () Bool)

(assert (=> b!4742623 m!5696695))

(declare-fun m!5696697 () Bool)

(assert (=> b!4742623 m!5696697))

(declare-fun m!5696699 () Bool)

(assert (=> b!4742623 m!5696699))

(assert (=> b!4742623 m!5696679))

(assert (=> b!4742623 m!5696673))

(assert (=> b!4742623 m!5696697))

(assert (=> b!4742623 m!5696675))

(declare-fun m!5696701 () Bool)

(assert (=> b!4742623 m!5696701))

(declare-fun m!5696703 () Bool)

(assert (=> b!4742623 m!5696703))

(declare-fun m!5696705 () Bool)

(assert (=> b!4742623 m!5696705))

(assert (=> b!4742623 m!5696699))

(assert (=> b!4742623 m!5696703))

(assert (=> b!4742623 m!5696677))

(declare-fun m!5696707 () Bool)

(assert (=> b!4742607 m!5696707))

(declare-fun m!5696709 () Bool)

(assert (=> b!4742607 m!5696709))

(declare-fun m!5696711 () Bool)

(assert (=> b!4742607 m!5696711))

(declare-fun m!5696713 () Bool)

(assert (=> b!4742602 m!5696713))

(declare-fun m!5696715 () Bool)

(assert (=> b!4742610 m!5696715))

(declare-fun m!5696717 () Bool)

(assert (=> b!4742610 m!5696717))

(declare-fun m!5696719 () Bool)

(assert (=> b!4742610 m!5696719))

(declare-fun m!5696721 () Bool)

(assert (=> b!4742610 m!5696721))

(declare-fun m!5696723 () Bool)

(assert (=> b!4742610 m!5696723))

(declare-fun m!5696725 () Bool)

(assert (=> b!4742610 m!5696725))

(declare-fun m!5696727 () Bool)

(assert (=> b!4742610 m!5696727))

(declare-fun m!5696729 () Bool)

(assert (=> b!4742610 m!5696729))

(declare-fun m!5696731 () Bool)

(assert (=> b!4742610 m!5696731))

(declare-fun m!5696733 () Bool)

(assert (=> b!4742610 m!5696733))

(assert (=> b!4742610 m!5696719))

(declare-fun m!5696735 () Bool)

(assert (=> b!4742610 m!5696735))

(declare-fun m!5696737 () Bool)

(assert (=> b!4742610 m!5696737))

(declare-fun m!5696739 () Bool)

(assert (=> b!4742617 m!5696739))

(declare-fun m!5696741 () Bool)

(assert (=> b!4742608 m!5696741))

(declare-fun m!5696743 () Bool)

(assert (=> b!4742601 m!5696743))

(declare-fun m!5696745 () Bool)

(assert (=> b!4742612 m!5696745))

(declare-fun m!5696747 () Bool)

(assert (=> b!4742605 m!5696747))

(declare-fun m!5696749 () Bool)

(assert (=> b!4742606 m!5696749))

(declare-fun m!5696751 () Bool)

(assert (=> b!4742618 m!5696751))

(declare-fun m!5696753 () Bool)

(assert (=> b!4742622 m!5696753))

(declare-fun m!5696755 () Bool)

(assert (=> b!4742604 m!5696755))

(declare-fun m!5696757 () Bool)

(assert (=> start!483936 m!5696757))

(declare-fun m!5696759 () Bool)

(assert (=> start!483936 m!5696759))

(declare-fun m!5696761 () Bool)

(assert (=> b!4742615 m!5696761))

(check-sat tp_is_empty!31533 (not b!4742603) (not b!4742605) (not b!4742614) (not b!4742618) (not b!4742623) (not b!4742617) (not b!4742621) (not b!4742620) (not b!4742609) (not b!4742601) (not b!4742619) (not b!4742600) (not b!4742616) (not b!4742615) (not b!4742610) (not b!4742607) (not b!4742599) (not b!4742604) (not b!4742606) (not b!4742598) (not b!4742622) (not start!483936) (not b!4742602) (not b!4742612) tp_is_empty!31535 (not b!4742608))
(check-sat)
