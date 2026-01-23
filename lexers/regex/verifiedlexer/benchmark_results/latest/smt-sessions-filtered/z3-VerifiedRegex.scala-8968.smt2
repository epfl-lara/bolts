; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!482284 () Bool)

(assert start!482284)

(declare-fun b!4731742 () Bool)

(declare-fun e!2951384 () Bool)

(declare-fun e!2951389 () Bool)

(assert (=> b!4731742 (= e!2951384 e!2951389)))

(declare-fun res!2003381 () Bool)

(assert (=> b!4731742 (=> (not res!2003381) (not e!2951389))))

(declare-datatypes ((K!14245 0))(
  ( (K!14246 (val!19667 Int)) )
))
(declare-datatypes ((V!14491 0))(
  ( (V!14492 (val!19668 Int)) )
))
(declare-datatypes ((tuple2!54546 0))(
  ( (tuple2!54547 (_1!30567 K!14245) (_2!30567 V!14491)) )
))
(declare-datatypes ((List!53019 0))(
  ( (Nil!52895) (Cons!52895 (h!59260 tuple2!54546) (t!360295 List!53019)) )
))
(declare-datatypes ((ListMap!5329 0))(
  ( (ListMap!5330 (toList!5965 List!53019)) )
))
(declare-fun lt!1894821 () ListMap!5329)

(declare-fun key!4653 () K!14245)

(declare-fun contains!16266 (ListMap!5329 K!14245) Bool)

(assert (=> b!4731742 (= res!2003381 (contains!16266 lt!1894821 key!4653))))

(declare-datatypes ((tuple2!54548 0))(
  ( (tuple2!54549 (_1!30568 (_ BitVec 64)) (_2!30568 List!53019)) )
))
(declare-datatypes ((List!53020 0))(
  ( (Nil!52896) (Cons!52896 (h!59261 tuple2!54548) (t!360296 List!53020)) )
))
(declare-datatypes ((ListLongMap!4495 0))(
  ( (ListLongMap!4496 (toList!5966 List!53020)) )
))
(declare-fun lm!2023 () ListLongMap!4495)

(declare-fun extractMap!2064 (List!53020) ListMap!5329)

(assert (=> b!4731742 (= lt!1894821 (extractMap!2064 (toList!5966 lm!2023)))))

(declare-fun tp_is_empty!31447 () Bool)

(declare-fun tp!1348863 () Bool)

(declare-fun e!2951382 () Bool)

(declare-fun tp_is_empty!31445 () Bool)

(declare-fun b!4731743 () Bool)

(assert (=> b!4731743 (= e!2951382 (and tp_is_empty!31445 tp_is_empty!31447 tp!1348863))))

(declare-fun b!4731745 () Bool)

(declare-fun e!2951381 () Bool)

(declare-fun e!2951388 () Bool)

(assert (=> b!4731745 (= e!2951381 e!2951388)))

(declare-fun res!2003383 () Bool)

(assert (=> b!4731745 (=> res!2003383 e!2951388)))

(declare-fun oldBucket!34 () List!53019)

(declare-fun containsKey!3419 (List!53019 K!14245) Bool)

(assert (=> b!4731745 (= res!2003383 (not (containsKey!3419 (t!360295 oldBucket!34) key!4653)))))

(assert (=> b!4731745 (containsKey!3419 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6407 0))(
  ( (HashableExt!6406 (__x!32110 Int)) )
))
(declare-fun hashF!1323 () Hashable!6407)

(declare-datatypes ((Unit!131539 0))(
  ( (Unit!131540) )
))
(declare-fun lt!1894816 () Unit!131539)

(declare-fun lemmaGetPairDefinedThenContainsKey!322 (List!53019 K!14245 Hashable!6407) Unit!131539)

(assert (=> b!4731745 (= lt!1894816 (lemmaGetPairDefinedThenContainsKey!322 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1894822 () List!53019)

(declare-datatypes ((Option!12405 0))(
  ( (None!12404) (Some!12404 (v!47025 tuple2!54546)) )
))
(declare-fun isDefined!9659 (Option!12405) Bool)

(declare-fun getPair!578 (List!53019 K!14245) Option!12405)

(assert (=> b!4731745 (isDefined!9659 (getPair!578 lt!1894822 key!4653))))

(declare-fun lambda!217308 () Int)

(declare-fun lt!1894811 () Unit!131539)

(declare-fun lt!1894812 () tuple2!54548)

(declare-fun forallContained!3679 (List!53020 Int tuple2!54548) Unit!131539)

(assert (=> b!4731745 (= lt!1894811 (forallContained!3679 (toList!5966 lm!2023) lambda!217308 lt!1894812))))

(declare-fun contains!16267 (List!53020 tuple2!54548) Bool)

(assert (=> b!4731745 (contains!16267 (toList!5966 lm!2023) lt!1894812)))

(declare-fun lt!1894820 () (_ BitVec 64))

(assert (=> b!4731745 (= lt!1894812 (tuple2!54549 lt!1894820 lt!1894822))))

(declare-fun lt!1894817 () Unit!131539)

(declare-fun lemmaGetValueImpliesTupleContained!383 (ListLongMap!4495 (_ BitVec 64) List!53019) Unit!131539)

(assert (=> b!4731745 (= lt!1894817 (lemmaGetValueImpliesTupleContained!383 lm!2023 lt!1894820 lt!1894822))))

(declare-fun apply!12463 (ListLongMap!4495 (_ BitVec 64)) List!53019)

(assert (=> b!4731745 (= lt!1894822 (apply!12463 lm!2023 lt!1894820))))

(declare-fun contains!16268 (ListLongMap!4495 (_ BitVec 64)) Bool)

(assert (=> b!4731745 (contains!16268 lm!2023 lt!1894820)))

(declare-fun lt!1894815 () Unit!131539)

(declare-fun lemmaInGenMapThenLongMapContainsHash!784 (ListLongMap!4495 K!14245 Hashable!6407) Unit!131539)

(assert (=> b!4731745 (= lt!1894815 (lemmaInGenMapThenLongMapContainsHash!784 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1894813 () Unit!131539)

(declare-fun lemmaInGenMapThenGetPairDefined!374 (ListLongMap!4495 K!14245 Hashable!6407) Unit!131539)

(assert (=> b!4731745 (= lt!1894813 (lemmaInGenMapThenGetPairDefined!374 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4731746 () Bool)

(declare-fun res!2003379 () Bool)

(declare-fun e!2951383 () Bool)

(assert (=> b!4731746 (=> res!2003379 e!2951383)))

(declare-fun lt!1894818 () List!53019)

(declare-fun removePairForKey!1633 (List!53019 K!14245) List!53019)

(assert (=> b!4731746 (= res!2003379 (not (= (removePairForKey!1633 (t!360295 oldBucket!34) key!4653) lt!1894818)))))

(declare-fun b!4731747 () Bool)

(declare-fun e!2951390 () Bool)

(declare-fun addToMapMapFromBucket!1468 (List!53019 ListMap!5329) ListMap!5329)

(assert (=> b!4731747 (= e!2951390 (= lt!1894821 (addToMapMapFromBucket!1468 (_2!30568 (h!59261 (toList!5966 lm!2023))) (extractMap!2064 (t!360296 (toList!5966 lm!2023))))))))

(declare-fun b!4731748 () Bool)

(declare-fun e!2951380 () Bool)

(assert (=> b!4731748 (= e!2951380 (not e!2951381))))

(declare-fun res!2003370 () Bool)

(assert (=> b!4731748 (=> res!2003370 e!2951381)))

(get-info :version)

(assert (=> b!4731748 (= res!2003370 (or (and ((_ is Cons!52895) oldBucket!34) (= (_1!30567 (h!59260 oldBucket!34)) key!4653)) (not ((_ is Cons!52895) oldBucket!34)) (= (_1!30567 (h!59260 oldBucket!34)) key!4653)))))

(assert (=> b!4731748 e!2951390))

(declare-fun res!2003377 () Bool)

(assert (=> b!4731748 (=> (not res!2003377) (not e!2951390))))

(declare-fun tail!9058 (ListLongMap!4495) ListLongMap!4495)

(assert (=> b!4731748 (= res!2003377 (= (t!360296 (toList!5966 lm!2023)) (toList!5966 (tail!9058 lm!2023))))))

(declare-fun res!2003376 () Bool)

(assert (=> start!482284 (=> (not res!2003376) (not e!2951384))))

(declare-fun forall!11639 (List!53020 Int) Bool)

(assert (=> start!482284 (= res!2003376 (forall!11639 (toList!5966 lm!2023) lambda!217308))))

(assert (=> start!482284 e!2951384))

(declare-fun e!2951387 () Bool)

(declare-fun inv!68119 (ListLongMap!4495) Bool)

(assert (=> start!482284 (and (inv!68119 lm!2023) e!2951387)))

(assert (=> start!482284 tp_is_empty!31445))

(declare-fun e!2951385 () Bool)

(assert (=> start!482284 e!2951385))

(assert (=> start!482284 true))

(assert (=> start!482284 e!2951382))

(declare-fun b!4731744 () Bool)

(declare-fun res!2003382 () Bool)

(assert (=> b!4731744 (=> (not res!2003382) (not e!2951380))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10279 (List!53020) tuple2!54548)

(assert (=> b!4731744 (= res!2003382 (= (head!10279 (toList!5966 lm!2023)) (tuple2!54549 hash!405 oldBucket!34)))))

(declare-fun b!4731749 () Bool)

(declare-fun res!2003369 () Bool)

(assert (=> b!4731749 (=> (not res!2003369) (not e!2951380))))

(assert (=> b!4731749 (= res!2003369 ((_ is Cons!52896) (toList!5966 lm!2023)))))

(declare-fun b!4731750 () Bool)

(assert (=> b!4731750 (= e!2951388 e!2951383)))

(declare-fun res!2003374 () Bool)

(assert (=> b!4731750 (=> res!2003374 e!2951383)))

(declare-fun lt!1894823 () List!53019)

(assert (=> b!4731750 (= res!2003374 (not (= (removePairForKey!1633 lt!1894823 key!4653) lt!1894818)))))

(declare-fun newBucket!218 () List!53019)

(declare-fun tail!9059 (List!53019) List!53019)

(assert (=> b!4731750 (= lt!1894818 (tail!9059 newBucket!218))))

(assert (=> b!4731750 (= lt!1894823 (tail!9059 oldBucket!34))))

(declare-fun b!4731751 () Bool)

(declare-fun tp!1348865 () Bool)

(assert (=> b!4731751 (= e!2951385 (and tp_is_empty!31445 tp_is_empty!31447 tp!1348865))))

(declare-fun b!4731752 () Bool)

(declare-fun res!2003378 () Bool)

(assert (=> b!4731752 (=> (not res!2003378) (not e!2951384))))

(declare-fun allKeysSameHash!1864 (List!53019 (_ BitVec 64) Hashable!6407) Bool)

(assert (=> b!4731752 (= res!2003378 (allKeysSameHash!1864 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4731753 () Bool)

(declare-fun e!2951386 () Bool)

(declare-fun noDuplicateKeys!2038 (List!53019) Bool)

(declare-fun head!10280 (List!53019) tuple2!54546)

(assert (=> b!4731753 (= e!2951386 (noDuplicateKeys!2038 (Cons!52895 (head!10280 oldBucket!34) lt!1894823)))))

(declare-fun b!4731754 () Bool)

(declare-fun res!2003385 () Bool)

(assert (=> b!4731754 (=> (not res!2003385) (not e!2951380))))

(assert (=> b!4731754 (= res!2003385 (allKeysSameHash!1864 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4731755 () Bool)

(declare-fun res!2003371 () Bool)

(assert (=> b!4731755 (=> (not res!2003371) (not e!2951384))))

(assert (=> b!4731755 (= res!2003371 (noDuplicateKeys!2038 oldBucket!34))))

(declare-fun b!4731756 () Bool)

(declare-fun res!2003372 () Bool)

(assert (=> b!4731756 (=> (not res!2003372) (not e!2951384))))

(assert (=> b!4731756 (= res!2003372 (= (removePairForKey!1633 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4731757 () Bool)

(declare-fun res!2003373 () Bool)

(assert (=> b!4731757 (=> (not res!2003373) (not e!2951380))))

(declare-fun allKeysSameHashInMap!1952 (ListLongMap!4495 Hashable!6407) Bool)

(assert (=> b!4731757 (= res!2003373 (allKeysSameHashInMap!1952 lm!2023 hashF!1323))))

(declare-fun b!4731758 () Bool)

(declare-fun tp!1348864 () Bool)

(assert (=> b!4731758 (= e!2951387 tp!1348864)))

(declare-fun b!4731759 () Bool)

(assert (=> b!4731759 (= e!2951389 e!2951380)))

(declare-fun res!2003380 () Bool)

(assert (=> b!4731759 (=> (not res!2003380) (not e!2951380))))

(assert (=> b!4731759 (= res!2003380 (= lt!1894820 hash!405))))

(declare-fun hash!4424 (Hashable!6407 K!14245) (_ BitVec 64))

(assert (=> b!4731759 (= lt!1894820 (hash!4424 hashF!1323 key!4653))))

(declare-fun b!4731760 () Bool)

(declare-fun res!2003384 () Bool)

(assert (=> b!4731760 (=> (not res!2003384) (not e!2951384))))

(assert (=> b!4731760 (= res!2003384 (noDuplicateKeys!2038 newBucket!218))))

(declare-fun b!4731761 () Bool)

(assert (=> b!4731761 (= e!2951383 e!2951386)))

(declare-fun res!2003375 () Bool)

(assert (=> b!4731761 (=> res!2003375 e!2951386)))

(assert (=> b!4731761 (= res!2003375 (not (noDuplicateKeys!2038 lt!1894823)))))

(declare-fun lt!1894814 () List!53020)

(assert (=> b!4731761 (contains!16266 (extractMap!2064 lt!1894814) key!4653)))

(declare-fun lt!1894819 () Unit!131539)

(declare-fun lemmaListContainsThenExtractedMapContains!546 (ListLongMap!4495 K!14245 Hashable!6407) Unit!131539)

(assert (=> b!4731761 (= lt!1894819 (lemmaListContainsThenExtractedMapContains!546 (ListLongMap!4496 lt!1894814) key!4653 hashF!1323))))

(assert (=> b!4731761 (= lt!1894814 (Cons!52896 (tuple2!54549 hash!405 (t!360295 oldBucket!34)) (t!360296 (toList!5966 lm!2023))))))

(assert (= (and start!482284 res!2003376) b!4731755))

(assert (= (and b!4731755 res!2003371) b!4731760))

(assert (= (and b!4731760 res!2003384) b!4731756))

(assert (= (and b!4731756 res!2003372) b!4731752))

(assert (= (and b!4731752 res!2003378) b!4731742))

(assert (= (and b!4731742 res!2003381) b!4731759))

(assert (= (and b!4731759 res!2003380) b!4731754))

(assert (= (and b!4731754 res!2003385) b!4731757))

(assert (= (and b!4731757 res!2003373) b!4731744))

(assert (= (and b!4731744 res!2003382) b!4731749))

(assert (= (and b!4731749 res!2003369) b!4731748))

(assert (= (and b!4731748 res!2003377) b!4731747))

(assert (= (and b!4731748 (not res!2003370)) b!4731745))

(assert (= (and b!4731745 (not res!2003383)) b!4731750))

(assert (= (and b!4731750 (not res!2003374)) b!4731746))

(assert (= (and b!4731746 (not res!2003379)) b!4731761))

(assert (= (and b!4731761 (not res!2003375)) b!4731753))

(assert (= start!482284 b!4731758))

(assert (= (and start!482284 ((_ is Cons!52895) oldBucket!34)) b!4731751))

(assert (= (and start!482284 ((_ is Cons!52895) newBucket!218)) b!4731743))

(declare-fun m!5674369 () Bool)

(assert (=> b!4731744 m!5674369))

(declare-fun m!5674371 () Bool)

(assert (=> b!4731761 m!5674371))

(declare-fun m!5674373 () Bool)

(assert (=> b!4731761 m!5674373))

(assert (=> b!4731761 m!5674373))

(declare-fun m!5674375 () Bool)

(assert (=> b!4731761 m!5674375))

(declare-fun m!5674377 () Bool)

(assert (=> b!4731761 m!5674377))

(declare-fun m!5674379 () Bool)

(assert (=> b!4731742 m!5674379))

(declare-fun m!5674381 () Bool)

(assert (=> b!4731742 m!5674381))

(declare-fun m!5674383 () Bool)

(assert (=> b!4731750 m!5674383))

(declare-fun m!5674385 () Bool)

(assert (=> b!4731750 m!5674385))

(declare-fun m!5674387 () Bool)

(assert (=> b!4731750 m!5674387))

(declare-fun m!5674389 () Bool)

(assert (=> b!4731748 m!5674389))

(declare-fun m!5674391 () Bool)

(assert (=> b!4731757 m!5674391))

(declare-fun m!5674393 () Bool)

(assert (=> b!4731755 m!5674393))

(declare-fun m!5674395 () Bool)

(assert (=> b!4731752 m!5674395))

(declare-fun m!5674397 () Bool)

(assert (=> b!4731754 m!5674397))

(declare-fun m!5674399 () Bool)

(assert (=> b!4731747 m!5674399))

(assert (=> b!4731747 m!5674399))

(declare-fun m!5674401 () Bool)

(assert (=> b!4731747 m!5674401))

(declare-fun m!5674403 () Bool)

(assert (=> b!4731753 m!5674403))

(declare-fun m!5674405 () Bool)

(assert (=> b!4731753 m!5674405))

(declare-fun m!5674407 () Bool)

(assert (=> b!4731760 m!5674407))

(declare-fun m!5674409 () Bool)

(assert (=> b!4731756 m!5674409))

(declare-fun m!5674411 () Bool)

(assert (=> b!4731746 m!5674411))

(declare-fun m!5674413 () Bool)

(assert (=> b!4731745 m!5674413))

(declare-fun m!5674415 () Bool)

(assert (=> b!4731745 m!5674415))

(declare-fun m!5674417 () Bool)

(assert (=> b!4731745 m!5674417))

(declare-fun m!5674419 () Bool)

(assert (=> b!4731745 m!5674419))

(declare-fun m!5674421 () Bool)

(assert (=> b!4731745 m!5674421))

(declare-fun m!5674423 () Bool)

(assert (=> b!4731745 m!5674423))

(declare-fun m!5674425 () Bool)

(assert (=> b!4731745 m!5674425))

(declare-fun m!5674427 () Bool)

(assert (=> b!4731745 m!5674427))

(declare-fun m!5674429 () Bool)

(assert (=> b!4731745 m!5674429))

(declare-fun m!5674431 () Bool)

(assert (=> b!4731745 m!5674431))

(declare-fun m!5674433 () Bool)

(assert (=> b!4731745 m!5674433))

(declare-fun m!5674435 () Bool)

(assert (=> b!4731745 m!5674435))

(assert (=> b!4731745 m!5674431))

(declare-fun m!5674437 () Bool)

(assert (=> b!4731759 m!5674437))

(declare-fun m!5674439 () Bool)

(assert (=> start!482284 m!5674439))

(declare-fun m!5674441 () Bool)

(assert (=> start!482284 m!5674441))

(check-sat tp_is_empty!31447 (not b!4731745) (not b!4731751) (not b!4731746) (not b!4731748) (not b!4731743) (not b!4731753) (not b!4731757) (not b!4731744) (not b!4731754) (not b!4731759) (not b!4731758) (not b!4731750) (not b!4731755) (not b!4731761) (not b!4731760) tp_is_empty!31445 (not b!4731756) (not b!4731747) (not b!4731742) (not b!4731752) (not start!482284))
(check-sat)
(get-model)

(declare-fun d!1509157 () Bool)

(declare-fun res!2003405 () Bool)

(declare-fun e!2951419 () Bool)

(assert (=> d!1509157 (=> res!2003405 e!2951419)))

(assert (=> d!1509157 (= res!2003405 (not ((_ is Cons!52895) lt!1894823)))))

(assert (=> d!1509157 (= (noDuplicateKeys!2038 lt!1894823) e!2951419)))

(declare-fun b!4731799 () Bool)

(declare-fun e!2951420 () Bool)

(assert (=> b!4731799 (= e!2951419 e!2951420)))

(declare-fun res!2003406 () Bool)

(assert (=> b!4731799 (=> (not res!2003406) (not e!2951420))))

(assert (=> b!4731799 (= res!2003406 (not (containsKey!3419 (t!360295 lt!1894823) (_1!30567 (h!59260 lt!1894823)))))))

(declare-fun b!4731800 () Bool)

(assert (=> b!4731800 (= e!2951420 (noDuplicateKeys!2038 (t!360295 lt!1894823)))))

(assert (= (and d!1509157 (not res!2003405)) b!4731799))

(assert (= (and b!4731799 res!2003406) b!4731800))

(declare-fun m!5674469 () Bool)

(assert (=> b!4731799 m!5674469))

(declare-fun m!5674471 () Bool)

(assert (=> b!4731800 m!5674471))

(assert (=> b!4731761 d!1509157))

(declare-fun b!4731858 () Bool)

(declare-fun e!2951456 () Unit!131539)

(declare-fun Unit!131556 () Unit!131539)

(assert (=> b!4731858 (= e!2951456 Unit!131556)))

(declare-fun bm!330939 () Bool)

(declare-fun call!330944 () Bool)

(declare-datatypes ((List!53022 0))(
  ( (Nil!52898) (Cons!52898 (h!59265 K!14245) (t!360298 List!53022)) )
))
(declare-fun e!2951457 () List!53022)

(declare-fun contains!16270 (List!53022 K!14245) Bool)

(assert (=> bm!330939 (= call!330944 (contains!16270 e!2951457 key!4653))))

(declare-fun c!808110 () Bool)

(declare-fun c!808109 () Bool)

(assert (=> bm!330939 (= c!808110 c!808109)))

(declare-fun b!4731859 () Bool)

(declare-fun e!2951459 () Bool)

(declare-fun keys!19017 (ListMap!5329) List!53022)

(assert (=> b!4731859 (= e!2951459 (contains!16270 (keys!19017 (extractMap!2064 lt!1894814)) key!4653))))

(declare-fun d!1509161 () Bool)

(declare-fun e!2951455 () Bool)

(assert (=> d!1509161 e!2951455))

(declare-fun res!2003420 () Bool)

(assert (=> d!1509161 (=> res!2003420 e!2951455)))

(declare-fun e!2951458 () Bool)

(assert (=> d!1509161 (= res!2003420 e!2951458)))

(declare-fun res!2003421 () Bool)

(assert (=> d!1509161 (=> (not res!2003421) (not e!2951458))))

(declare-fun lt!1894884 () Bool)

(assert (=> d!1509161 (= res!2003421 (not lt!1894884))))

(declare-fun lt!1894890 () Bool)

(assert (=> d!1509161 (= lt!1894884 lt!1894890)))

(declare-fun lt!1894885 () Unit!131539)

(declare-fun e!2951460 () Unit!131539)

(assert (=> d!1509161 (= lt!1894885 e!2951460)))

(assert (=> d!1509161 (= c!808109 lt!1894890)))

(declare-fun containsKey!3421 (List!53019 K!14245) Bool)

(assert (=> d!1509161 (= lt!1894890 (containsKey!3421 (toList!5965 (extractMap!2064 lt!1894814)) key!4653))))

(assert (=> d!1509161 (= (contains!16266 (extractMap!2064 lt!1894814) key!4653) lt!1894884)))

(declare-fun b!4731860 () Bool)

(assert (=> b!4731860 (= e!2951457 (keys!19017 (extractMap!2064 lt!1894814)))))

(declare-fun b!4731861 () Bool)

(declare-fun getKeysList!968 (List!53019) List!53022)

(assert (=> b!4731861 (= e!2951457 (getKeysList!968 (toList!5965 (extractMap!2064 lt!1894814))))))

(declare-fun b!4731862 () Bool)

(assert (=> b!4731862 (= e!2951460 e!2951456)))

(declare-fun c!808108 () Bool)

(assert (=> b!4731862 (= c!808108 call!330944)))

(declare-fun b!4731863 () Bool)

(assert (=> b!4731863 (= e!2951458 (not (contains!16270 (keys!19017 (extractMap!2064 lt!1894814)) key!4653)))))

(declare-fun b!4731864 () Bool)

(assert (=> b!4731864 (= e!2951455 e!2951459)))

(declare-fun res!2003422 () Bool)

(assert (=> b!4731864 (=> (not res!2003422) (not e!2951459))))

(declare-datatypes ((Option!12407 0))(
  ( (None!12406) (Some!12406 (v!47031 V!14491)) )
))
(declare-fun isDefined!9661 (Option!12407) Bool)

(declare-fun getValueByKey!1987 (List!53019 K!14245) Option!12407)

(assert (=> b!4731864 (= res!2003422 (isDefined!9661 (getValueByKey!1987 (toList!5965 (extractMap!2064 lt!1894814)) key!4653)))))

(declare-fun b!4731865 () Bool)

(assert (=> b!4731865 false))

(declare-fun lt!1894888 () Unit!131539)

(declare-fun lt!1894883 () Unit!131539)

(assert (=> b!4731865 (= lt!1894888 lt!1894883)))

(assert (=> b!4731865 (containsKey!3421 (toList!5965 (extractMap!2064 lt!1894814)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!967 (List!53019 K!14245) Unit!131539)

(assert (=> b!4731865 (= lt!1894883 (lemmaInGetKeysListThenContainsKey!967 (toList!5965 (extractMap!2064 lt!1894814)) key!4653))))

(declare-fun Unit!131557 () Unit!131539)

(assert (=> b!4731865 (= e!2951456 Unit!131557)))

(declare-fun b!4731866 () Bool)

(declare-fun lt!1894887 () Unit!131539)

(assert (=> b!4731866 (= e!2951460 lt!1894887)))

(declare-fun lt!1894889 () Unit!131539)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1878 (List!53019 K!14245) Unit!131539)

(assert (=> b!4731866 (= lt!1894889 (lemmaContainsKeyImpliesGetValueByKeyDefined!1878 (toList!5965 (extractMap!2064 lt!1894814)) key!4653))))

(assert (=> b!4731866 (isDefined!9661 (getValueByKey!1987 (toList!5965 (extractMap!2064 lt!1894814)) key!4653))))

(declare-fun lt!1894886 () Unit!131539)

(assert (=> b!4731866 (= lt!1894886 lt!1894889)))

(declare-fun lemmaInListThenGetKeysListContains!963 (List!53019 K!14245) Unit!131539)

(assert (=> b!4731866 (= lt!1894887 (lemmaInListThenGetKeysListContains!963 (toList!5965 (extractMap!2064 lt!1894814)) key!4653))))

(assert (=> b!4731866 call!330944))

(assert (= (and d!1509161 c!808109) b!4731866))

(assert (= (and d!1509161 (not c!808109)) b!4731862))

(assert (= (and b!4731862 c!808108) b!4731865))

(assert (= (and b!4731862 (not c!808108)) b!4731858))

(assert (= (or b!4731866 b!4731862) bm!330939))

(assert (= (and bm!330939 c!808110) b!4731861))

(assert (= (and bm!330939 (not c!808110)) b!4731860))

(assert (= (and d!1509161 res!2003421) b!4731863))

(assert (= (and d!1509161 (not res!2003420)) b!4731864))

(assert (= (and b!4731864 res!2003422) b!4731859))

(declare-fun m!5674531 () Bool)

(assert (=> d!1509161 m!5674531))

(declare-fun m!5674533 () Bool)

(assert (=> b!4731864 m!5674533))

(assert (=> b!4731864 m!5674533))

(declare-fun m!5674535 () Bool)

(assert (=> b!4731864 m!5674535))

(assert (=> b!4731859 m!5674373))

(declare-fun m!5674537 () Bool)

(assert (=> b!4731859 m!5674537))

(assert (=> b!4731859 m!5674537))

(declare-fun m!5674539 () Bool)

(assert (=> b!4731859 m!5674539))

(assert (=> b!4731863 m!5674373))

(assert (=> b!4731863 m!5674537))

(assert (=> b!4731863 m!5674537))

(assert (=> b!4731863 m!5674539))

(declare-fun m!5674541 () Bool)

(assert (=> b!4731866 m!5674541))

(assert (=> b!4731866 m!5674533))

(assert (=> b!4731866 m!5674533))

(assert (=> b!4731866 m!5674535))

(declare-fun m!5674543 () Bool)

(assert (=> b!4731866 m!5674543))

(declare-fun m!5674545 () Bool)

(assert (=> bm!330939 m!5674545))

(assert (=> b!4731860 m!5674373))

(assert (=> b!4731860 m!5674537))

(declare-fun m!5674547 () Bool)

(assert (=> b!4731861 m!5674547))

(assert (=> b!4731865 m!5674531))

(declare-fun m!5674549 () Bool)

(assert (=> b!4731865 m!5674549))

(assert (=> b!4731761 d!1509161))

(declare-fun bs!1120742 () Bool)

(declare-fun d!1509185 () Bool)

(assert (= bs!1120742 (and d!1509185 start!482284)))

(declare-fun lambda!217321 () Int)

(assert (=> bs!1120742 (= lambda!217321 lambda!217308)))

(declare-fun lt!1894893 () ListMap!5329)

(declare-fun invariantList!1529 (List!53019) Bool)

(assert (=> d!1509185 (invariantList!1529 (toList!5965 lt!1894893))))

(declare-fun e!2951463 () ListMap!5329)

(assert (=> d!1509185 (= lt!1894893 e!2951463)))

(declare-fun c!808113 () Bool)

(assert (=> d!1509185 (= c!808113 ((_ is Cons!52896) lt!1894814))))

(assert (=> d!1509185 (forall!11639 lt!1894814 lambda!217321)))

(assert (=> d!1509185 (= (extractMap!2064 lt!1894814) lt!1894893)))

(declare-fun b!4731871 () Bool)

(assert (=> b!4731871 (= e!2951463 (addToMapMapFromBucket!1468 (_2!30568 (h!59261 lt!1894814)) (extractMap!2064 (t!360296 lt!1894814))))))

(declare-fun b!4731872 () Bool)

(assert (=> b!4731872 (= e!2951463 (ListMap!5330 Nil!52895))))

(assert (= (and d!1509185 c!808113) b!4731871))

(assert (= (and d!1509185 (not c!808113)) b!4731872))

(declare-fun m!5674551 () Bool)

(assert (=> d!1509185 m!5674551))

(declare-fun m!5674553 () Bool)

(assert (=> d!1509185 m!5674553))

(declare-fun m!5674555 () Bool)

(assert (=> b!4731871 m!5674555))

(assert (=> b!4731871 m!5674555))

(declare-fun m!5674557 () Bool)

(assert (=> b!4731871 m!5674557))

(assert (=> b!4731761 d!1509185))

(declare-fun bs!1120743 () Bool)

(declare-fun d!1509187 () Bool)

(assert (= bs!1120743 (and d!1509187 start!482284)))

(declare-fun lambda!217324 () Int)

(assert (=> bs!1120743 (= lambda!217324 lambda!217308)))

(declare-fun bs!1120744 () Bool)

(assert (= bs!1120744 (and d!1509187 d!1509185)))

(assert (=> bs!1120744 (= lambda!217324 lambda!217321)))

(assert (=> d!1509187 (contains!16266 (extractMap!2064 (toList!5966 (ListLongMap!4496 lt!1894814))) key!4653)))

(declare-fun lt!1894896 () Unit!131539)

(declare-fun choose!33477 (ListLongMap!4495 K!14245 Hashable!6407) Unit!131539)

(assert (=> d!1509187 (= lt!1894896 (choose!33477 (ListLongMap!4496 lt!1894814) key!4653 hashF!1323))))

(assert (=> d!1509187 (forall!11639 (toList!5966 (ListLongMap!4496 lt!1894814)) lambda!217324)))

(assert (=> d!1509187 (= (lemmaListContainsThenExtractedMapContains!546 (ListLongMap!4496 lt!1894814) key!4653 hashF!1323) lt!1894896)))

(declare-fun bs!1120745 () Bool)

(assert (= bs!1120745 d!1509187))

(declare-fun m!5674559 () Bool)

(assert (=> bs!1120745 m!5674559))

(assert (=> bs!1120745 m!5674559))

(declare-fun m!5674561 () Bool)

(assert (=> bs!1120745 m!5674561))

(declare-fun m!5674563 () Bool)

(assert (=> bs!1120745 m!5674563))

(declare-fun m!5674565 () Bool)

(assert (=> bs!1120745 m!5674565))

(assert (=> b!4731761 d!1509187))

(declare-fun b!4731873 () Bool)

(declare-fun e!2951465 () Unit!131539)

(declare-fun Unit!131558 () Unit!131539)

(assert (=> b!4731873 (= e!2951465 Unit!131558)))

(declare-fun bm!330940 () Bool)

(declare-fun call!330945 () Bool)

(declare-fun e!2951466 () List!53022)

(assert (=> bm!330940 (= call!330945 (contains!16270 e!2951466 key!4653))))

(declare-fun c!808116 () Bool)

(declare-fun c!808115 () Bool)

(assert (=> bm!330940 (= c!808116 c!808115)))

(declare-fun b!4731874 () Bool)

(declare-fun e!2951468 () Bool)

(assert (=> b!4731874 (= e!2951468 (contains!16270 (keys!19017 lt!1894821) key!4653))))

(declare-fun d!1509189 () Bool)

(declare-fun e!2951464 () Bool)

(assert (=> d!1509189 e!2951464))

(declare-fun res!2003423 () Bool)

(assert (=> d!1509189 (=> res!2003423 e!2951464)))

(declare-fun e!2951467 () Bool)

(assert (=> d!1509189 (= res!2003423 e!2951467)))

(declare-fun res!2003424 () Bool)

(assert (=> d!1509189 (=> (not res!2003424) (not e!2951467))))

(declare-fun lt!1894898 () Bool)

(assert (=> d!1509189 (= res!2003424 (not lt!1894898))))

(declare-fun lt!1894904 () Bool)

(assert (=> d!1509189 (= lt!1894898 lt!1894904)))

(declare-fun lt!1894899 () Unit!131539)

(declare-fun e!2951469 () Unit!131539)

(assert (=> d!1509189 (= lt!1894899 e!2951469)))

(assert (=> d!1509189 (= c!808115 lt!1894904)))

(assert (=> d!1509189 (= lt!1894904 (containsKey!3421 (toList!5965 lt!1894821) key!4653))))

(assert (=> d!1509189 (= (contains!16266 lt!1894821 key!4653) lt!1894898)))

(declare-fun b!4731875 () Bool)

(assert (=> b!4731875 (= e!2951466 (keys!19017 lt!1894821))))

(declare-fun b!4731876 () Bool)

(assert (=> b!4731876 (= e!2951466 (getKeysList!968 (toList!5965 lt!1894821)))))

(declare-fun b!4731877 () Bool)

(assert (=> b!4731877 (= e!2951469 e!2951465)))

(declare-fun c!808114 () Bool)

(assert (=> b!4731877 (= c!808114 call!330945)))

(declare-fun b!4731878 () Bool)

(assert (=> b!4731878 (= e!2951467 (not (contains!16270 (keys!19017 lt!1894821) key!4653)))))

(declare-fun b!4731879 () Bool)

(assert (=> b!4731879 (= e!2951464 e!2951468)))

(declare-fun res!2003425 () Bool)

(assert (=> b!4731879 (=> (not res!2003425) (not e!2951468))))

(assert (=> b!4731879 (= res!2003425 (isDefined!9661 (getValueByKey!1987 (toList!5965 lt!1894821) key!4653)))))

(declare-fun b!4731880 () Bool)

(assert (=> b!4731880 false))

(declare-fun lt!1894902 () Unit!131539)

(declare-fun lt!1894897 () Unit!131539)

(assert (=> b!4731880 (= lt!1894902 lt!1894897)))

(assert (=> b!4731880 (containsKey!3421 (toList!5965 lt!1894821) key!4653)))

(assert (=> b!4731880 (= lt!1894897 (lemmaInGetKeysListThenContainsKey!967 (toList!5965 lt!1894821) key!4653))))

(declare-fun Unit!131559 () Unit!131539)

(assert (=> b!4731880 (= e!2951465 Unit!131559)))

(declare-fun b!4731881 () Bool)

(declare-fun lt!1894901 () Unit!131539)

(assert (=> b!4731881 (= e!2951469 lt!1894901)))

(declare-fun lt!1894903 () Unit!131539)

(assert (=> b!4731881 (= lt!1894903 (lemmaContainsKeyImpliesGetValueByKeyDefined!1878 (toList!5965 lt!1894821) key!4653))))

(assert (=> b!4731881 (isDefined!9661 (getValueByKey!1987 (toList!5965 lt!1894821) key!4653))))

(declare-fun lt!1894900 () Unit!131539)

(assert (=> b!4731881 (= lt!1894900 lt!1894903)))

(assert (=> b!4731881 (= lt!1894901 (lemmaInListThenGetKeysListContains!963 (toList!5965 lt!1894821) key!4653))))

(assert (=> b!4731881 call!330945))

(assert (= (and d!1509189 c!808115) b!4731881))

(assert (= (and d!1509189 (not c!808115)) b!4731877))

(assert (= (and b!4731877 c!808114) b!4731880))

(assert (= (and b!4731877 (not c!808114)) b!4731873))

(assert (= (or b!4731881 b!4731877) bm!330940))

(assert (= (and bm!330940 c!808116) b!4731876))

(assert (= (and bm!330940 (not c!808116)) b!4731875))

(assert (= (and d!1509189 res!2003424) b!4731878))

(assert (= (and d!1509189 (not res!2003423)) b!4731879))

(assert (= (and b!4731879 res!2003425) b!4731874))

(declare-fun m!5674567 () Bool)

(assert (=> d!1509189 m!5674567))

(declare-fun m!5674569 () Bool)

(assert (=> b!4731879 m!5674569))

(assert (=> b!4731879 m!5674569))

(declare-fun m!5674571 () Bool)

(assert (=> b!4731879 m!5674571))

(declare-fun m!5674573 () Bool)

(assert (=> b!4731874 m!5674573))

(assert (=> b!4731874 m!5674573))

(declare-fun m!5674575 () Bool)

(assert (=> b!4731874 m!5674575))

(assert (=> b!4731878 m!5674573))

(assert (=> b!4731878 m!5674573))

(assert (=> b!4731878 m!5674575))

(declare-fun m!5674577 () Bool)

(assert (=> b!4731881 m!5674577))

(assert (=> b!4731881 m!5674569))

(assert (=> b!4731881 m!5674569))

(assert (=> b!4731881 m!5674571))

(declare-fun m!5674579 () Bool)

(assert (=> b!4731881 m!5674579))

(declare-fun m!5674581 () Bool)

(assert (=> bm!330940 m!5674581))

(assert (=> b!4731875 m!5674573))

(declare-fun m!5674583 () Bool)

(assert (=> b!4731876 m!5674583))

(assert (=> b!4731880 m!5674567))

(declare-fun m!5674585 () Bool)

(assert (=> b!4731880 m!5674585))

(assert (=> b!4731742 d!1509189))

(declare-fun bs!1120746 () Bool)

(declare-fun d!1509191 () Bool)

(assert (= bs!1120746 (and d!1509191 start!482284)))

(declare-fun lambda!217325 () Int)

(assert (=> bs!1120746 (= lambda!217325 lambda!217308)))

(declare-fun bs!1120747 () Bool)

(assert (= bs!1120747 (and d!1509191 d!1509185)))

(assert (=> bs!1120747 (= lambda!217325 lambda!217321)))

(declare-fun bs!1120748 () Bool)

(assert (= bs!1120748 (and d!1509191 d!1509187)))

(assert (=> bs!1120748 (= lambda!217325 lambda!217324)))

(declare-fun lt!1894905 () ListMap!5329)

(assert (=> d!1509191 (invariantList!1529 (toList!5965 lt!1894905))))

(declare-fun e!2951470 () ListMap!5329)

(assert (=> d!1509191 (= lt!1894905 e!2951470)))

(declare-fun c!808117 () Bool)

(assert (=> d!1509191 (= c!808117 ((_ is Cons!52896) (toList!5966 lm!2023)))))

(assert (=> d!1509191 (forall!11639 (toList!5966 lm!2023) lambda!217325)))

(assert (=> d!1509191 (= (extractMap!2064 (toList!5966 lm!2023)) lt!1894905)))

(declare-fun b!4731882 () Bool)

(assert (=> b!4731882 (= e!2951470 (addToMapMapFromBucket!1468 (_2!30568 (h!59261 (toList!5966 lm!2023))) (extractMap!2064 (t!360296 (toList!5966 lm!2023)))))))

(declare-fun b!4731883 () Bool)

(assert (=> b!4731883 (= e!2951470 (ListMap!5330 Nil!52895))))

(assert (= (and d!1509191 c!808117) b!4731882))

(assert (= (and d!1509191 (not c!808117)) b!4731883))

(declare-fun m!5674587 () Bool)

(assert (=> d!1509191 m!5674587))

(declare-fun m!5674589 () Bool)

(assert (=> d!1509191 m!5674589))

(assert (=> b!4731882 m!5674399))

(assert (=> b!4731882 m!5674399))

(assert (=> b!4731882 m!5674401))

(assert (=> b!4731742 d!1509191))

(declare-fun d!1509193 () Bool)

(assert (=> d!1509193 true))

(assert (=> d!1509193 true))

(declare-fun lambda!217328 () Int)

(declare-fun forall!11641 (List!53019 Int) Bool)

(assert (=> d!1509193 (= (allKeysSameHash!1864 oldBucket!34 hash!405 hashF!1323) (forall!11641 oldBucket!34 lambda!217328))))

(declare-fun bs!1120749 () Bool)

(assert (= bs!1120749 d!1509193))

(declare-fun m!5674591 () Bool)

(assert (=> bs!1120749 m!5674591))

(assert (=> b!4731752 d!1509193))

(declare-fun d!1509195 () Bool)

(declare-fun hash!4426 (Hashable!6407 K!14245) (_ BitVec 64))

(assert (=> d!1509195 (= (hash!4424 hashF!1323 key!4653) (hash!4426 hashF!1323 key!4653))))

(declare-fun bs!1120750 () Bool)

(assert (= bs!1120750 d!1509195))

(declare-fun m!5674593 () Bool)

(assert (=> bs!1120750 m!5674593))

(assert (=> b!4731759 d!1509195))

(declare-fun d!1509197 () Bool)

(declare-fun tail!9061 (List!53020) List!53020)

(assert (=> d!1509197 (= (tail!9058 lm!2023) (ListLongMap!4496 (tail!9061 (toList!5966 lm!2023))))))

(declare-fun bs!1120751 () Bool)

(assert (= bs!1120751 d!1509197))

(declare-fun m!5674595 () Bool)

(assert (=> bs!1120751 m!5674595))

(assert (=> b!4731748 d!1509197))

(declare-fun b!4731903 () Bool)

(declare-fun e!2951477 () List!53019)

(assert (=> b!4731903 (= e!2951477 Nil!52895)))

(declare-fun b!4731900 () Bool)

(declare-fun e!2951478 () List!53019)

(assert (=> b!4731900 (= e!2951478 (t!360295 lt!1894823))))

(declare-fun b!4731902 () Bool)

(assert (=> b!4731902 (= e!2951477 (Cons!52895 (h!59260 lt!1894823) (removePairForKey!1633 (t!360295 lt!1894823) key!4653)))))

(declare-fun d!1509199 () Bool)

(declare-fun lt!1894924 () List!53019)

(assert (=> d!1509199 (not (containsKey!3419 lt!1894924 key!4653))))

(assert (=> d!1509199 (= lt!1894924 e!2951478)))

(declare-fun c!808124 () Bool)

(assert (=> d!1509199 (= c!808124 (and ((_ is Cons!52895) lt!1894823) (= (_1!30567 (h!59260 lt!1894823)) key!4653)))))

(assert (=> d!1509199 (noDuplicateKeys!2038 lt!1894823)))

(assert (=> d!1509199 (= (removePairForKey!1633 lt!1894823 key!4653) lt!1894924)))

(declare-fun b!4731901 () Bool)

(assert (=> b!4731901 (= e!2951478 e!2951477)))

(declare-fun c!808125 () Bool)

(assert (=> b!4731901 (= c!808125 ((_ is Cons!52895) lt!1894823))))

(assert (= (and d!1509199 c!808124) b!4731900))

(assert (= (and d!1509199 (not c!808124)) b!4731901))

(assert (= (and b!4731901 c!808125) b!4731902))

(assert (= (and b!4731901 (not c!808125)) b!4731903))

(declare-fun m!5674597 () Bool)

(assert (=> b!4731902 m!5674597))

(declare-fun m!5674599 () Bool)

(assert (=> d!1509199 m!5674599))

(assert (=> d!1509199 m!5674371))

(assert (=> b!4731750 d!1509199))

(declare-fun d!1509201 () Bool)

(assert (=> d!1509201 (= (tail!9059 newBucket!218) (t!360295 newBucket!218))))

(assert (=> b!4731750 d!1509201))

(declare-fun d!1509203 () Bool)

(assert (=> d!1509203 (= (tail!9059 oldBucket!34) (t!360295 oldBucket!34))))

(assert (=> b!4731750 d!1509203))

(declare-fun d!1509205 () Bool)

(declare-fun res!2003426 () Bool)

(declare-fun e!2951479 () Bool)

(assert (=> d!1509205 (=> res!2003426 e!2951479)))

(assert (=> d!1509205 (= res!2003426 (not ((_ is Cons!52895) newBucket!218)))))

(assert (=> d!1509205 (= (noDuplicateKeys!2038 newBucket!218) e!2951479)))

(declare-fun b!4731904 () Bool)

(declare-fun e!2951480 () Bool)

(assert (=> b!4731904 (= e!2951479 e!2951480)))

(declare-fun res!2003427 () Bool)

(assert (=> b!4731904 (=> (not res!2003427) (not e!2951480))))

(assert (=> b!4731904 (= res!2003427 (not (containsKey!3419 (t!360295 newBucket!218) (_1!30567 (h!59260 newBucket!218)))))))

(declare-fun b!4731905 () Bool)

(assert (=> b!4731905 (= e!2951480 (noDuplicateKeys!2038 (t!360295 newBucket!218)))))

(assert (= (and d!1509205 (not res!2003426)) b!4731904))

(assert (= (and b!4731904 res!2003427) b!4731905))

(declare-fun m!5674601 () Bool)

(assert (=> b!4731904 m!5674601))

(declare-fun m!5674603 () Bool)

(assert (=> b!4731905 m!5674603))

(assert (=> b!4731760 d!1509205))

(declare-fun b!4731909 () Bool)

(declare-fun e!2951481 () List!53019)

(assert (=> b!4731909 (= e!2951481 Nil!52895)))

(declare-fun b!4731906 () Bool)

(declare-fun e!2951482 () List!53019)

(assert (=> b!4731906 (= e!2951482 (t!360295 (t!360295 oldBucket!34)))))

(declare-fun b!4731908 () Bool)

(assert (=> b!4731908 (= e!2951481 (Cons!52895 (h!59260 (t!360295 oldBucket!34)) (removePairForKey!1633 (t!360295 (t!360295 oldBucket!34)) key!4653)))))

(declare-fun d!1509207 () Bool)

(declare-fun lt!1894929 () List!53019)

(assert (=> d!1509207 (not (containsKey!3419 lt!1894929 key!4653))))

(assert (=> d!1509207 (= lt!1894929 e!2951482)))

(declare-fun c!808126 () Bool)

(assert (=> d!1509207 (= c!808126 (and ((_ is Cons!52895) (t!360295 oldBucket!34)) (= (_1!30567 (h!59260 (t!360295 oldBucket!34))) key!4653)))))

(assert (=> d!1509207 (noDuplicateKeys!2038 (t!360295 oldBucket!34))))

(assert (=> d!1509207 (= (removePairForKey!1633 (t!360295 oldBucket!34) key!4653) lt!1894929)))

(declare-fun b!4731907 () Bool)

(assert (=> b!4731907 (= e!2951482 e!2951481)))

(declare-fun c!808127 () Bool)

(assert (=> b!4731907 (= c!808127 ((_ is Cons!52895) (t!360295 oldBucket!34)))))

(assert (= (and d!1509207 c!808126) b!4731906))

(assert (= (and d!1509207 (not c!808126)) b!4731907))

(assert (= (and b!4731907 c!808127) b!4731908))

(assert (= (and b!4731907 (not c!808127)) b!4731909))

(declare-fun m!5674605 () Bool)

(assert (=> b!4731908 m!5674605))

(declare-fun m!5674607 () Bool)

(assert (=> d!1509207 m!5674607))

(declare-fun m!5674609 () Bool)

(assert (=> d!1509207 m!5674609))

(assert (=> b!4731746 d!1509207))

(declare-fun d!1509209 () Bool)

(declare-fun res!2003432 () Bool)

(declare-fun e!2951487 () Bool)

(assert (=> d!1509209 (=> res!2003432 e!2951487)))

(assert (=> d!1509209 (= res!2003432 ((_ is Nil!52896) (toList!5966 lm!2023)))))

(assert (=> d!1509209 (= (forall!11639 (toList!5966 lm!2023) lambda!217308) e!2951487)))

(declare-fun b!4731914 () Bool)

(declare-fun e!2951488 () Bool)

(assert (=> b!4731914 (= e!2951487 e!2951488)))

(declare-fun res!2003433 () Bool)

(assert (=> b!4731914 (=> (not res!2003433) (not e!2951488))))

(declare-fun dynLambda!21851 (Int tuple2!54548) Bool)

(assert (=> b!4731914 (= res!2003433 (dynLambda!21851 lambda!217308 (h!59261 (toList!5966 lm!2023))))))

(declare-fun b!4731915 () Bool)

(assert (=> b!4731915 (= e!2951488 (forall!11639 (t!360296 (toList!5966 lm!2023)) lambda!217308))))

(assert (= (and d!1509209 (not res!2003432)) b!4731914))

(assert (= (and b!4731914 res!2003433) b!4731915))

(declare-fun b_lambda!180581 () Bool)

(assert (=> (not b_lambda!180581) (not b!4731914)))

(declare-fun m!5674611 () Bool)

(assert (=> b!4731914 m!5674611))

(declare-fun m!5674613 () Bool)

(assert (=> b!4731915 m!5674613))

(assert (=> start!482284 d!1509209))

(declare-fun d!1509211 () Bool)

(declare-fun isStrictlySorted!766 (List!53020) Bool)

(assert (=> d!1509211 (= (inv!68119 lm!2023) (isStrictlySorted!766 (toList!5966 lm!2023)))))

(declare-fun bs!1120752 () Bool)

(assert (= bs!1120752 d!1509211))

(declare-fun m!5674615 () Bool)

(assert (=> bs!1120752 m!5674615))

(assert (=> start!482284 d!1509211))

(declare-fun d!1509213 () Bool)

(assert (=> d!1509213 (contains!16267 (toList!5966 lm!2023) (tuple2!54549 lt!1894820 lt!1894822))))

(declare-fun lt!1894954 () Unit!131539)

(declare-fun choose!33480 (ListLongMap!4495 (_ BitVec 64) List!53019) Unit!131539)

(assert (=> d!1509213 (= lt!1894954 (choose!33480 lm!2023 lt!1894820 lt!1894822))))

(assert (=> d!1509213 (contains!16268 lm!2023 lt!1894820)))

(assert (=> d!1509213 (= (lemmaGetValueImpliesTupleContained!383 lm!2023 lt!1894820 lt!1894822) lt!1894954)))

(declare-fun bs!1120753 () Bool)

(assert (= bs!1120753 d!1509213))

(declare-fun m!5674617 () Bool)

(assert (=> bs!1120753 m!5674617))

(declare-fun m!5674619 () Bool)

(assert (=> bs!1120753 m!5674619))

(assert (=> bs!1120753 m!5674423))

(assert (=> b!4731745 d!1509213))

(declare-fun d!1509215 () Bool)

(declare-fun isEmpty!29205 (Option!12405) Bool)

(assert (=> d!1509215 (= (isDefined!9659 (getPair!578 lt!1894822 key!4653)) (not (isEmpty!29205 (getPair!578 lt!1894822 key!4653))))))

(declare-fun bs!1120754 () Bool)

(assert (= bs!1120754 d!1509215))

(assert (=> bs!1120754 m!5674431))

(declare-fun m!5674621 () Bool)

(assert (=> bs!1120754 m!5674621))

(assert (=> b!4731745 d!1509215))

(declare-fun bs!1120764 () Bool)

(declare-fun d!1509217 () Bool)

(assert (= bs!1120764 (and d!1509217 start!482284)))

(declare-fun lambda!217364 () Int)

(assert (=> bs!1120764 (= lambda!217364 lambda!217308)))

(declare-fun bs!1120765 () Bool)

(assert (= bs!1120765 (and d!1509217 d!1509185)))

(assert (=> bs!1120765 (= lambda!217364 lambda!217321)))

(declare-fun bs!1120766 () Bool)

(assert (= bs!1120766 (and d!1509217 d!1509187)))

(assert (=> bs!1120766 (= lambda!217364 lambda!217324)))

(declare-fun bs!1120767 () Bool)

(assert (= bs!1120767 (and d!1509217 d!1509191)))

(assert (=> bs!1120767 (= lambda!217364 lambda!217325)))

(assert (=> d!1509217 (contains!16268 lm!2023 (hash!4424 hashF!1323 key!4653))))

(declare-fun lt!1894979 () Unit!131539)

(declare-fun choose!33481 (ListLongMap!4495 K!14245 Hashable!6407) Unit!131539)

(assert (=> d!1509217 (= lt!1894979 (choose!33481 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509217 (forall!11639 (toList!5966 lm!2023) lambda!217364)))

(assert (=> d!1509217 (= (lemmaInGenMapThenLongMapContainsHash!784 lm!2023 key!4653 hashF!1323) lt!1894979)))

(declare-fun bs!1120768 () Bool)

(assert (= bs!1120768 d!1509217))

(assert (=> bs!1120768 m!5674437))

(assert (=> bs!1120768 m!5674437))

(declare-fun m!5674673 () Bool)

(assert (=> bs!1120768 m!5674673))

(declare-fun m!5674675 () Bool)

(assert (=> bs!1120768 m!5674675))

(declare-fun m!5674677 () Bool)

(assert (=> bs!1120768 m!5674677))

(assert (=> b!4731745 d!1509217))

(declare-fun b!4731967 () Bool)

(declare-fun e!2951523 () Option!12405)

(declare-fun e!2951524 () Option!12405)

(assert (=> b!4731967 (= e!2951523 e!2951524)))

(declare-fun c!808136 () Bool)

(assert (=> b!4731967 (= c!808136 ((_ is Cons!52895) lt!1894822))))

(declare-fun b!4731968 () Bool)

(declare-fun e!2951522 () Bool)

(declare-fun e!2951521 () Bool)

(assert (=> b!4731968 (= e!2951522 e!2951521)))

(declare-fun res!2003465 () Bool)

(assert (=> b!4731968 (=> (not res!2003465) (not e!2951521))))

(declare-fun lt!1894986 () Option!12405)

(assert (=> b!4731968 (= res!2003465 (isDefined!9659 lt!1894986))))

(declare-fun b!4731970 () Bool)

(declare-fun res!2003464 () Bool)

(assert (=> b!4731970 (=> (not res!2003464) (not e!2951521))))

(declare-fun get!17759 (Option!12405) tuple2!54546)

(assert (=> b!4731970 (= res!2003464 (= (_1!30567 (get!17759 lt!1894986)) key!4653))))

(declare-fun b!4731971 () Bool)

(declare-fun contains!16272 (List!53019 tuple2!54546) Bool)

(assert (=> b!4731971 (= e!2951521 (contains!16272 lt!1894822 (get!17759 lt!1894986)))))

(declare-fun b!4731972 () Bool)

(assert (=> b!4731972 (= e!2951524 None!12404)))

(declare-fun b!4731973 () Bool)

(assert (=> b!4731973 (= e!2951524 (getPair!578 (t!360295 lt!1894822) key!4653))))

(declare-fun b!4731974 () Bool)

(declare-fun e!2951520 () Bool)

(assert (=> b!4731974 (= e!2951520 (not (containsKey!3419 lt!1894822 key!4653)))))

(declare-fun b!4731969 () Bool)

(assert (=> b!4731969 (= e!2951523 (Some!12404 (h!59260 lt!1894822)))))

(declare-fun d!1509233 () Bool)

(assert (=> d!1509233 e!2951522))

(declare-fun res!2003463 () Bool)

(assert (=> d!1509233 (=> res!2003463 e!2951522)))

(assert (=> d!1509233 (= res!2003463 e!2951520)))

(declare-fun res!2003462 () Bool)

(assert (=> d!1509233 (=> (not res!2003462) (not e!2951520))))

(assert (=> d!1509233 (= res!2003462 (isEmpty!29205 lt!1894986))))

(assert (=> d!1509233 (= lt!1894986 e!2951523)))

(declare-fun c!808137 () Bool)

(assert (=> d!1509233 (= c!808137 (and ((_ is Cons!52895) lt!1894822) (= (_1!30567 (h!59260 lt!1894822)) key!4653)))))

(assert (=> d!1509233 (noDuplicateKeys!2038 lt!1894822)))

(assert (=> d!1509233 (= (getPair!578 lt!1894822 key!4653) lt!1894986)))

(assert (= (and d!1509233 c!808137) b!4731969))

(assert (= (and d!1509233 (not c!808137)) b!4731967))

(assert (= (and b!4731967 c!808136) b!4731973))

(assert (= (and b!4731967 (not c!808136)) b!4731972))

(assert (= (and d!1509233 res!2003462) b!4731974))

(assert (= (and d!1509233 (not res!2003463)) b!4731968))

(assert (= (and b!4731968 res!2003465) b!4731970))

(assert (= (and b!4731970 res!2003464) b!4731971))

(declare-fun m!5674697 () Bool)

(assert (=> b!4731971 m!5674697))

(assert (=> b!4731971 m!5674697))

(declare-fun m!5674699 () Bool)

(assert (=> b!4731971 m!5674699))

(declare-fun m!5674701 () Bool)

(assert (=> d!1509233 m!5674701))

(declare-fun m!5674703 () Bool)

(assert (=> d!1509233 m!5674703))

(declare-fun m!5674705 () Bool)

(assert (=> b!4731973 m!5674705))

(assert (=> b!4731970 m!5674697))

(declare-fun m!5674707 () Bool)

(assert (=> b!4731968 m!5674707))

(declare-fun m!5674709 () Bool)

(assert (=> b!4731974 m!5674709))

(assert (=> b!4731745 d!1509233))

(declare-fun bs!1120785 () Bool)

(declare-fun d!1509247 () Bool)

(assert (= bs!1120785 (and d!1509247 start!482284)))

(declare-fun lambda!217377 () Int)

(assert (=> bs!1120785 (= lambda!217377 lambda!217308)))

(declare-fun bs!1120786 () Bool)

(assert (= bs!1120786 (and d!1509247 d!1509191)))

(assert (=> bs!1120786 (= lambda!217377 lambda!217325)))

(declare-fun bs!1120787 () Bool)

(assert (= bs!1120787 (and d!1509247 d!1509187)))

(assert (=> bs!1120787 (= lambda!217377 lambda!217324)))

(declare-fun bs!1120788 () Bool)

(assert (= bs!1120788 (and d!1509247 d!1509185)))

(assert (=> bs!1120788 (= lambda!217377 lambda!217321)))

(declare-fun bs!1120789 () Bool)

(assert (= bs!1120789 (and d!1509247 d!1509217)))

(assert (=> bs!1120789 (= lambda!217377 lambda!217364)))

(declare-fun b!4732032 () Bool)

(declare-fun res!2003504 () Bool)

(declare-fun e!2951565 () Bool)

(assert (=> b!4732032 (=> (not res!2003504) (not e!2951565))))

(assert (=> b!4732032 (= res!2003504 (contains!16266 (extractMap!2064 (toList!5966 lm!2023)) key!4653))))

(declare-fun b!4732031 () Bool)

(declare-fun res!2003506 () Bool)

(assert (=> b!4732031 (=> (not res!2003506) (not e!2951565))))

(assert (=> b!4732031 (= res!2003506 (allKeysSameHashInMap!1952 lm!2023 hashF!1323))))

(declare-fun b!4732033 () Bool)

(assert (=> b!4732033 (= e!2951565 (isDefined!9659 (getPair!578 (apply!12463 lm!2023 (hash!4424 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1895031 () Unit!131539)

(assert (=> b!4732033 (= lt!1895031 (forallContained!3679 (toList!5966 lm!2023) lambda!217377 (tuple2!54549 (hash!4424 hashF!1323 key!4653) (apply!12463 lm!2023 (hash!4424 hashF!1323 key!4653)))))))

(declare-fun lt!1895033 () Unit!131539)

(declare-fun lt!1895030 () Unit!131539)

(assert (=> b!4732033 (= lt!1895033 lt!1895030)))

(declare-fun lt!1895034 () (_ BitVec 64))

(declare-fun lt!1895037 () List!53019)

(assert (=> b!4732033 (contains!16267 (toList!5966 lm!2023) (tuple2!54549 lt!1895034 lt!1895037))))

(assert (=> b!4732033 (= lt!1895030 (lemmaGetValueImpliesTupleContained!383 lm!2023 lt!1895034 lt!1895037))))

(declare-fun e!2951564 () Bool)

(assert (=> b!4732033 e!2951564))

(declare-fun res!2003505 () Bool)

(assert (=> b!4732033 (=> (not res!2003505) (not e!2951564))))

(assert (=> b!4732033 (= res!2003505 (contains!16268 lm!2023 lt!1895034))))

(assert (=> b!4732033 (= lt!1895037 (apply!12463 lm!2023 (hash!4424 hashF!1323 key!4653)))))

(assert (=> b!4732033 (= lt!1895034 (hash!4424 hashF!1323 key!4653))))

(declare-fun lt!1895035 () Unit!131539)

(declare-fun lt!1895032 () Unit!131539)

(assert (=> b!4732033 (= lt!1895035 lt!1895032)))

(assert (=> b!4732033 (contains!16268 lm!2023 (hash!4424 hashF!1323 key!4653))))

(assert (=> b!4732033 (= lt!1895032 (lemmaInGenMapThenLongMapContainsHash!784 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509247 e!2951565))

(declare-fun res!2003503 () Bool)

(assert (=> d!1509247 (=> (not res!2003503) (not e!2951565))))

(assert (=> d!1509247 (= res!2003503 (forall!11639 (toList!5966 lm!2023) lambda!217377))))

(declare-fun lt!1895036 () Unit!131539)

(declare-fun choose!33482 (ListLongMap!4495 K!14245 Hashable!6407) Unit!131539)

(assert (=> d!1509247 (= lt!1895036 (choose!33482 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509247 (forall!11639 (toList!5966 lm!2023) lambda!217377)))

(assert (=> d!1509247 (= (lemmaInGenMapThenGetPairDefined!374 lm!2023 key!4653 hashF!1323) lt!1895036)))

(declare-fun b!4732034 () Bool)

(declare-datatypes ((Option!12409 0))(
  ( (None!12408) (Some!12408 (v!47033 List!53019)) )
))
(declare-fun getValueByKey!1989 (List!53020 (_ BitVec 64)) Option!12409)

(assert (=> b!4732034 (= e!2951564 (= (getValueByKey!1989 (toList!5966 lm!2023) lt!1895034) (Some!12408 lt!1895037)))))

(assert (= (and d!1509247 res!2003503) b!4732031))

(assert (= (and b!4732031 res!2003506) b!4732032))

(assert (= (and b!4732032 res!2003504) b!4732033))

(assert (= (and b!4732033 res!2003505) b!4732034))

(declare-fun m!5674751 () Bool)

(assert (=> d!1509247 m!5674751))

(declare-fun m!5674753 () Bool)

(assert (=> d!1509247 m!5674753))

(assert (=> d!1509247 m!5674751))

(declare-fun m!5674755 () Bool)

(assert (=> b!4732034 m!5674755))

(assert (=> b!4732031 m!5674391))

(assert (=> b!4732032 m!5674381))

(assert (=> b!4732032 m!5674381))

(declare-fun m!5674757 () Bool)

(assert (=> b!4732032 m!5674757))

(assert (=> b!4732033 m!5674437))

(assert (=> b!4732033 m!5674673))

(declare-fun m!5674759 () Bool)

(assert (=> b!4732033 m!5674759))

(assert (=> b!4732033 m!5674437))

(assert (=> b!4732033 m!5674417))

(declare-fun m!5674761 () Bool)

(assert (=> b!4732033 m!5674761))

(declare-fun m!5674763 () Bool)

(assert (=> b!4732033 m!5674763))

(declare-fun m!5674765 () Bool)

(assert (=> b!4732033 m!5674765))

(declare-fun m!5674767 () Bool)

(assert (=> b!4732033 m!5674767))

(assert (=> b!4732033 m!5674437))

(assert (=> b!4732033 m!5674763))

(declare-fun m!5674769 () Bool)

(assert (=> b!4732033 m!5674769))

(assert (=> b!4732033 m!5674765))

(declare-fun m!5674771 () Bool)

(assert (=> b!4732033 m!5674771))

(assert (=> b!4731745 d!1509247))

(declare-fun d!1509265 () Bool)

(assert (=> d!1509265 (containsKey!3419 oldBucket!34 key!4653)))

(declare-fun lt!1895040 () Unit!131539)

(declare-fun choose!33483 (List!53019 K!14245 Hashable!6407) Unit!131539)

(assert (=> d!1509265 (= lt!1895040 (choose!33483 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1509265 (noDuplicateKeys!2038 oldBucket!34)))

(assert (=> d!1509265 (= (lemmaGetPairDefinedThenContainsKey!322 oldBucket!34 key!4653 hashF!1323) lt!1895040)))

(declare-fun bs!1120790 () Bool)

(assert (= bs!1120790 d!1509265))

(assert (=> bs!1120790 m!5674429))

(declare-fun m!5674773 () Bool)

(assert (=> bs!1120790 m!5674773))

(assert (=> bs!1120790 m!5674393))

(assert (=> b!4731745 d!1509265))

(declare-fun d!1509267 () Bool)

(declare-fun res!2003511 () Bool)

(declare-fun e!2951570 () Bool)

(assert (=> d!1509267 (=> res!2003511 e!2951570)))

(assert (=> d!1509267 (= res!2003511 (and ((_ is Cons!52895) (t!360295 oldBucket!34)) (= (_1!30567 (h!59260 (t!360295 oldBucket!34))) key!4653)))))

(assert (=> d!1509267 (= (containsKey!3419 (t!360295 oldBucket!34) key!4653) e!2951570)))

(declare-fun b!4732039 () Bool)

(declare-fun e!2951571 () Bool)

(assert (=> b!4732039 (= e!2951570 e!2951571)))

(declare-fun res!2003512 () Bool)

(assert (=> b!4732039 (=> (not res!2003512) (not e!2951571))))

(assert (=> b!4732039 (= res!2003512 ((_ is Cons!52895) (t!360295 oldBucket!34)))))

(declare-fun b!4732040 () Bool)

(assert (=> b!4732040 (= e!2951571 (containsKey!3419 (t!360295 (t!360295 oldBucket!34)) key!4653))))

(assert (= (and d!1509267 (not res!2003511)) b!4732039))

(assert (= (and b!4732039 res!2003512) b!4732040))

(declare-fun m!5674775 () Bool)

(assert (=> b!4732040 m!5674775))

(assert (=> b!4731745 d!1509267))

(declare-fun d!1509269 () Bool)

(declare-fun res!2003513 () Bool)

(declare-fun e!2951572 () Bool)

(assert (=> d!1509269 (=> res!2003513 e!2951572)))

(assert (=> d!1509269 (= res!2003513 (and ((_ is Cons!52895) oldBucket!34) (= (_1!30567 (h!59260 oldBucket!34)) key!4653)))))

(assert (=> d!1509269 (= (containsKey!3419 oldBucket!34 key!4653) e!2951572)))

(declare-fun b!4732041 () Bool)

(declare-fun e!2951573 () Bool)

(assert (=> b!4732041 (= e!2951572 e!2951573)))

(declare-fun res!2003514 () Bool)

(assert (=> b!4732041 (=> (not res!2003514) (not e!2951573))))

(assert (=> b!4732041 (= res!2003514 ((_ is Cons!52895) oldBucket!34))))

(declare-fun b!4732042 () Bool)

(assert (=> b!4732042 (= e!2951573 (containsKey!3419 (t!360295 oldBucket!34) key!4653))))

(assert (= (and d!1509269 (not res!2003513)) b!4732041))

(assert (= (and b!4732041 res!2003514) b!4732042))

(assert (=> b!4732042 m!5674425))

(assert (=> b!4731745 d!1509269))

(declare-fun d!1509271 () Bool)

(declare-fun lt!1895043 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9429 (List!53020) (InoxSet tuple2!54548))

(assert (=> d!1509271 (= lt!1895043 (select (content!9429 (toList!5966 lm!2023)) lt!1894812))))

(declare-fun e!2951579 () Bool)

(assert (=> d!1509271 (= lt!1895043 e!2951579)))

(declare-fun res!2003520 () Bool)

(assert (=> d!1509271 (=> (not res!2003520) (not e!2951579))))

(assert (=> d!1509271 (= res!2003520 ((_ is Cons!52896) (toList!5966 lm!2023)))))

(assert (=> d!1509271 (= (contains!16267 (toList!5966 lm!2023) lt!1894812) lt!1895043)))

(declare-fun b!4732047 () Bool)

(declare-fun e!2951578 () Bool)

(assert (=> b!4732047 (= e!2951579 e!2951578)))

(declare-fun res!2003519 () Bool)

(assert (=> b!4732047 (=> res!2003519 e!2951578)))

(assert (=> b!4732047 (= res!2003519 (= (h!59261 (toList!5966 lm!2023)) lt!1894812))))

(declare-fun b!4732048 () Bool)

(assert (=> b!4732048 (= e!2951578 (contains!16267 (t!360296 (toList!5966 lm!2023)) lt!1894812))))

(assert (= (and d!1509271 res!2003520) b!4732047))

(assert (= (and b!4732047 (not res!2003519)) b!4732048))

(declare-fun m!5674777 () Bool)

(assert (=> d!1509271 m!5674777))

(declare-fun m!5674779 () Bool)

(assert (=> d!1509271 m!5674779))

(declare-fun m!5674781 () Bool)

(assert (=> b!4732048 m!5674781))

(assert (=> b!4731745 d!1509271))

(declare-fun d!1509273 () Bool)

(declare-fun e!2951585 () Bool)

(assert (=> d!1509273 e!2951585))

(declare-fun res!2003523 () Bool)

(assert (=> d!1509273 (=> res!2003523 e!2951585)))

(declare-fun lt!1895054 () Bool)

(assert (=> d!1509273 (= res!2003523 (not lt!1895054))))

(declare-fun lt!1895055 () Bool)

(assert (=> d!1509273 (= lt!1895054 lt!1895055)))

(declare-fun lt!1895053 () Unit!131539)

(declare-fun e!2951584 () Unit!131539)

(assert (=> d!1509273 (= lt!1895053 e!2951584)))

(declare-fun c!808149 () Bool)

(assert (=> d!1509273 (= c!808149 lt!1895055)))

(declare-fun containsKey!3423 (List!53020 (_ BitVec 64)) Bool)

(assert (=> d!1509273 (= lt!1895055 (containsKey!3423 (toList!5966 lm!2023) lt!1894820))))

(assert (=> d!1509273 (= (contains!16268 lm!2023 lt!1894820) lt!1895054)))

(declare-fun b!4732055 () Bool)

(declare-fun lt!1895052 () Unit!131539)

(assert (=> b!4732055 (= e!2951584 lt!1895052)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1880 (List!53020 (_ BitVec 64)) Unit!131539)

(assert (=> b!4732055 (= lt!1895052 (lemmaContainsKeyImpliesGetValueByKeyDefined!1880 (toList!5966 lm!2023) lt!1894820))))

(declare-fun isDefined!9663 (Option!12409) Bool)

(assert (=> b!4732055 (isDefined!9663 (getValueByKey!1989 (toList!5966 lm!2023) lt!1894820))))

(declare-fun b!4732056 () Bool)

(declare-fun Unit!131561 () Unit!131539)

(assert (=> b!4732056 (= e!2951584 Unit!131561)))

(declare-fun b!4732057 () Bool)

(assert (=> b!4732057 (= e!2951585 (isDefined!9663 (getValueByKey!1989 (toList!5966 lm!2023) lt!1894820)))))

(assert (= (and d!1509273 c!808149) b!4732055))

(assert (= (and d!1509273 (not c!808149)) b!4732056))

(assert (= (and d!1509273 (not res!2003523)) b!4732057))

(declare-fun m!5674783 () Bool)

(assert (=> d!1509273 m!5674783))

(declare-fun m!5674785 () Bool)

(assert (=> b!4732055 m!5674785))

(declare-fun m!5674787 () Bool)

(assert (=> b!4732055 m!5674787))

(assert (=> b!4732055 m!5674787))

(declare-fun m!5674789 () Bool)

(assert (=> b!4732055 m!5674789))

(assert (=> b!4732057 m!5674787))

(assert (=> b!4732057 m!5674787))

(assert (=> b!4732057 m!5674789))

(assert (=> b!4731745 d!1509273))

(declare-fun d!1509275 () Bool)

(declare-fun get!17760 (Option!12409) List!53019)

(assert (=> d!1509275 (= (apply!12463 lm!2023 lt!1894820) (get!17760 (getValueByKey!1989 (toList!5966 lm!2023) lt!1894820)))))

(declare-fun bs!1120791 () Bool)

(assert (= bs!1120791 d!1509275))

(assert (=> bs!1120791 m!5674787))

(assert (=> bs!1120791 m!5674787))

(declare-fun m!5674791 () Bool)

(assert (=> bs!1120791 m!5674791))

(assert (=> b!4731745 d!1509275))

(declare-fun d!1509277 () Bool)

(assert (=> d!1509277 (dynLambda!21851 lambda!217308 lt!1894812)))

(declare-fun lt!1895074 () Unit!131539)

(declare-fun choose!33484 (List!53020 Int tuple2!54548) Unit!131539)

(assert (=> d!1509277 (= lt!1895074 (choose!33484 (toList!5966 lm!2023) lambda!217308 lt!1894812))))

(declare-fun e!2951592 () Bool)

(assert (=> d!1509277 e!2951592))

(declare-fun res!2003534 () Bool)

(assert (=> d!1509277 (=> (not res!2003534) (not e!2951592))))

(assert (=> d!1509277 (= res!2003534 (forall!11639 (toList!5966 lm!2023) lambda!217308))))

(assert (=> d!1509277 (= (forallContained!3679 (toList!5966 lm!2023) lambda!217308 lt!1894812) lt!1895074)))

(declare-fun b!4732068 () Bool)

(assert (=> b!4732068 (= e!2951592 (contains!16267 (toList!5966 lm!2023) lt!1894812))))

(assert (= (and d!1509277 res!2003534) b!4732068))

(declare-fun b_lambda!180587 () Bool)

(assert (=> (not b_lambda!180587) (not d!1509277)))

(declare-fun m!5674793 () Bool)

(assert (=> d!1509277 m!5674793))

(declare-fun m!5674795 () Bool)

(assert (=> d!1509277 m!5674795))

(assert (=> d!1509277 m!5674439))

(assert (=> b!4732068 m!5674415))

(assert (=> b!4731745 d!1509277))

(declare-fun b!4732072 () Bool)

(declare-fun e!2951593 () List!53019)

(assert (=> b!4732072 (= e!2951593 Nil!52895)))

(declare-fun b!4732069 () Bool)

(declare-fun e!2951594 () List!53019)

(assert (=> b!4732069 (= e!2951594 (t!360295 oldBucket!34))))

(declare-fun b!4732071 () Bool)

(assert (=> b!4732071 (= e!2951593 (Cons!52895 (h!59260 oldBucket!34) (removePairForKey!1633 (t!360295 oldBucket!34) key!4653)))))

(declare-fun d!1509279 () Bool)

(declare-fun lt!1895075 () List!53019)

(assert (=> d!1509279 (not (containsKey!3419 lt!1895075 key!4653))))

(assert (=> d!1509279 (= lt!1895075 e!2951594)))

(declare-fun c!808150 () Bool)

(assert (=> d!1509279 (= c!808150 (and ((_ is Cons!52895) oldBucket!34) (= (_1!30567 (h!59260 oldBucket!34)) key!4653)))))

(assert (=> d!1509279 (noDuplicateKeys!2038 oldBucket!34)))

(assert (=> d!1509279 (= (removePairForKey!1633 oldBucket!34 key!4653) lt!1895075)))

(declare-fun b!4732070 () Bool)

(assert (=> b!4732070 (= e!2951594 e!2951593)))

(declare-fun c!808151 () Bool)

(assert (=> b!4732070 (= c!808151 ((_ is Cons!52895) oldBucket!34))))

(assert (= (and d!1509279 c!808150) b!4732069))

(assert (= (and d!1509279 (not c!808150)) b!4732070))

(assert (= (and b!4732070 c!808151) b!4732071))

(assert (= (and b!4732070 (not c!808151)) b!4732072))

(assert (=> b!4732071 m!5674411))

(declare-fun m!5674797 () Bool)

(assert (=> d!1509279 m!5674797))

(assert (=> d!1509279 m!5674393))

(assert (=> b!4731756 d!1509279))

(declare-fun bs!1120806 () Bool)

(declare-fun b!4732099 () Bool)

(assert (= bs!1120806 (and b!4732099 d!1509193)))

(declare-fun lambda!217414 () Int)

(assert (=> bs!1120806 (not (= lambda!217414 lambda!217328))))

(assert (=> b!4732099 true))

(declare-fun bs!1120807 () Bool)

(declare-fun b!4732098 () Bool)

(assert (= bs!1120807 (and b!4732098 d!1509193)))

(declare-fun lambda!217415 () Int)

(assert (=> bs!1120807 (not (= lambda!217415 lambda!217328))))

(declare-fun bs!1120808 () Bool)

(assert (= bs!1120808 (and b!4732098 b!4732099)))

(assert (=> bs!1120808 (= lambda!217415 lambda!217414)))

(assert (=> b!4732098 true))

(declare-fun lambda!217416 () Int)

(assert (=> bs!1120807 (not (= lambda!217416 lambda!217328))))

(declare-fun lt!1895137 () ListMap!5329)

(assert (=> bs!1120808 (= (= lt!1895137 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) (= lambda!217416 lambda!217414))))

(assert (=> b!4732098 (= (= lt!1895137 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) (= lambda!217416 lambda!217415))))

(assert (=> b!4732098 true))

(declare-fun bs!1120809 () Bool)

(declare-fun d!1509281 () Bool)

(assert (= bs!1120809 (and d!1509281 d!1509193)))

(declare-fun lambda!217417 () Int)

(assert (=> bs!1120809 (not (= lambda!217417 lambda!217328))))

(declare-fun bs!1120810 () Bool)

(assert (= bs!1120810 (and d!1509281 b!4732099)))

(declare-fun lt!1895131 () ListMap!5329)

(assert (=> bs!1120810 (= (= lt!1895131 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) (= lambda!217417 lambda!217414))))

(declare-fun bs!1120811 () Bool)

(assert (= bs!1120811 (and d!1509281 b!4732098)))

(assert (=> bs!1120811 (= (= lt!1895131 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) (= lambda!217417 lambda!217415))))

(assert (=> bs!1120811 (= (= lt!1895131 lt!1895137) (= lambda!217417 lambda!217416))))

(assert (=> d!1509281 true))

(declare-fun lt!1895129 () ListMap!5329)

(declare-fun bm!330956 () Bool)

(declare-fun call!330962 () Bool)

(declare-fun c!808154 () Bool)

(assert (=> bm!330956 (= call!330962 (forall!11641 (ite c!808154 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) (toList!5965 lt!1895129)) (ite c!808154 lambda!217414 lambda!217416)))))

(declare-fun e!2951612 () ListMap!5329)

(assert (=> b!4732098 (= e!2951612 lt!1895137)))

(declare-fun +!2286 (ListMap!5329 tuple2!54546) ListMap!5329)

(assert (=> b!4732098 (= lt!1895129 (+!2286 (extractMap!2064 (t!360296 (toList!5966 lm!2023))) (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023))))))))

(assert (=> b!4732098 (= lt!1895137 (addToMapMapFromBucket!1468 (t!360295 (_2!30568 (h!59261 (toList!5966 lm!2023)))) (+!2286 (extractMap!2064 (t!360296 (toList!5966 lm!2023))) (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023)))))))))

(declare-fun lt!1895141 () Unit!131539)

(declare-fun call!330963 () Unit!131539)

(assert (=> b!4732098 (= lt!1895141 call!330963)))

(assert (=> b!4732098 (forall!11641 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) lambda!217415)))

(declare-fun lt!1895128 () Unit!131539)

(assert (=> b!4732098 (= lt!1895128 lt!1895141)))

(assert (=> b!4732098 (forall!11641 (toList!5965 lt!1895129) lambda!217416)))

(declare-fun lt!1895133 () Unit!131539)

(declare-fun Unit!131562 () Unit!131539)

(assert (=> b!4732098 (= lt!1895133 Unit!131562)))

(declare-fun call!330961 () Bool)

(assert (=> b!4732098 call!330961))

(declare-fun lt!1895145 () Unit!131539)

(declare-fun Unit!131563 () Unit!131539)

(assert (=> b!4732098 (= lt!1895145 Unit!131563)))

(declare-fun lt!1895143 () Unit!131539)

(declare-fun Unit!131564 () Unit!131539)

(assert (=> b!4732098 (= lt!1895143 Unit!131564)))

(declare-fun lt!1895139 () Unit!131539)

(declare-fun forallContained!3681 (List!53019 Int tuple2!54546) Unit!131539)

(assert (=> b!4732098 (= lt!1895139 (forallContained!3681 (toList!5965 lt!1895129) lambda!217416 (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023))))))))

(assert (=> b!4732098 (contains!16266 lt!1895129 (_1!30567 (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023))))))))

(declare-fun lt!1895130 () Unit!131539)

(declare-fun Unit!131565 () Unit!131539)

(assert (=> b!4732098 (= lt!1895130 Unit!131565)))

(assert (=> b!4732098 (contains!16266 lt!1895137 (_1!30567 (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023))))))))

(declare-fun lt!1895126 () Unit!131539)

(declare-fun Unit!131566 () Unit!131539)

(assert (=> b!4732098 (= lt!1895126 Unit!131566)))

(assert (=> b!4732098 (forall!11641 (_2!30568 (h!59261 (toList!5966 lm!2023))) lambda!217416)))

(declare-fun lt!1895138 () Unit!131539)

(declare-fun Unit!131567 () Unit!131539)

(assert (=> b!4732098 (= lt!1895138 Unit!131567)))

(assert (=> b!4732098 call!330962))

(declare-fun lt!1895140 () Unit!131539)

(declare-fun Unit!131568 () Unit!131539)

(assert (=> b!4732098 (= lt!1895140 Unit!131568)))

(declare-fun lt!1895135 () Unit!131539)

(declare-fun Unit!131569 () Unit!131539)

(assert (=> b!4732098 (= lt!1895135 Unit!131569)))

(declare-fun lt!1895132 () Unit!131539)

(declare-fun addForallContainsKeyThenBeforeAdding!813 (ListMap!5329 ListMap!5329 K!14245 V!14491) Unit!131539)

(assert (=> b!4732098 (= lt!1895132 (addForallContainsKeyThenBeforeAdding!813 (extractMap!2064 (t!360296 (toList!5966 lm!2023))) lt!1895137 (_1!30567 (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023))))) (_2!30567 (h!59260 (_2!30568 (h!59261 (toList!5966 lm!2023)))))))))

(assert (=> b!4732098 (forall!11641 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) lambda!217416)))

(declare-fun lt!1895142 () Unit!131539)

(assert (=> b!4732098 (= lt!1895142 lt!1895132)))

(assert (=> b!4732098 (forall!11641 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) lambda!217416)))

(declare-fun lt!1895136 () Unit!131539)

(declare-fun Unit!131570 () Unit!131539)

(assert (=> b!4732098 (= lt!1895136 Unit!131570)))

(declare-fun res!2003547 () Bool)

(assert (=> b!4732098 (= res!2003547 (forall!11641 (_2!30568 (h!59261 (toList!5966 lm!2023))) lambda!217416))))

(declare-fun e!2951610 () Bool)

(assert (=> b!4732098 (=> (not res!2003547) (not e!2951610))))

(assert (=> b!4732098 e!2951610))

(declare-fun lt!1895134 () Unit!131539)

(declare-fun Unit!131571 () Unit!131539)

(assert (=> b!4732098 (= lt!1895134 Unit!131571)))

(assert (=> b!4732099 (= e!2951612 (extractMap!2064 (t!360296 (toList!5966 lm!2023))))))

(declare-fun lt!1895127 () Unit!131539)

(assert (=> b!4732099 (= lt!1895127 call!330963)))

(assert (=> b!4732099 call!330962))

(declare-fun lt!1895144 () Unit!131539)

(assert (=> b!4732099 (= lt!1895144 lt!1895127)))

(assert (=> b!4732099 call!330961))

(declare-fun lt!1895146 () Unit!131539)

(declare-fun Unit!131572 () Unit!131539)

(assert (=> b!4732099 (= lt!1895146 Unit!131572)))

(declare-fun bm!330957 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!814 (ListMap!5329) Unit!131539)

(assert (=> bm!330957 (= call!330963 (lemmaContainsAllItsOwnKeys!814 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))))))

(declare-fun e!2951611 () Bool)

(assert (=> d!1509281 e!2951611))

(declare-fun res!2003546 () Bool)

(assert (=> d!1509281 (=> (not res!2003546) (not e!2951611))))

(assert (=> d!1509281 (= res!2003546 (forall!11641 (_2!30568 (h!59261 (toList!5966 lm!2023))) lambda!217417))))

(assert (=> d!1509281 (= lt!1895131 e!2951612)))

(assert (=> d!1509281 (= c!808154 ((_ is Nil!52895) (_2!30568 (h!59261 (toList!5966 lm!2023)))))))

(assert (=> d!1509281 (noDuplicateKeys!2038 (_2!30568 (h!59261 (toList!5966 lm!2023))))))

(assert (=> d!1509281 (= (addToMapMapFromBucket!1468 (_2!30568 (h!59261 (toList!5966 lm!2023))) (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) lt!1895131)))

(declare-fun b!4732100 () Bool)

(declare-fun res!2003545 () Bool)

(assert (=> b!4732100 (=> (not res!2003545) (not e!2951611))))

(assert (=> b!4732100 (= res!2003545 (forall!11641 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) lambda!217417))))

(declare-fun bm!330958 () Bool)

(assert (=> bm!330958 (= call!330961 (forall!11641 (ite c!808154 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) (t!360295 (_2!30568 (h!59261 (toList!5966 lm!2023))))) (ite c!808154 lambda!217414 lambda!217416)))))

(declare-fun b!4732101 () Bool)

(assert (=> b!4732101 (= e!2951611 (invariantList!1529 (toList!5965 lt!1895131)))))

(declare-fun b!4732102 () Bool)

(assert (=> b!4732102 (= e!2951610 (forall!11641 (toList!5965 (extractMap!2064 (t!360296 (toList!5966 lm!2023)))) lambda!217416))))

(assert (= (and d!1509281 c!808154) b!4732099))

(assert (= (and d!1509281 (not c!808154)) b!4732098))

(assert (= (and b!4732098 res!2003547) b!4732102))

(assert (= (or b!4732099 b!4732098) bm!330957))

(assert (= (or b!4732099 b!4732098) bm!330956))

(assert (= (or b!4732099 b!4732098) bm!330958))

(assert (= (and d!1509281 res!2003546) b!4732100))

(assert (= (and b!4732100 res!2003545) b!4732101))

(declare-fun m!5674825 () Bool)

(assert (=> b!4732102 m!5674825))

(declare-fun m!5674827 () Bool)

(assert (=> d!1509281 m!5674827))

(declare-fun m!5674829 () Bool)

(assert (=> d!1509281 m!5674829))

(assert (=> bm!330957 m!5674399))

(declare-fun m!5674831 () Bool)

(assert (=> bm!330957 m!5674831))

(declare-fun m!5674833 () Bool)

(assert (=> b!4732100 m!5674833))

(declare-fun m!5674835 () Bool)

(assert (=> b!4732101 m!5674835))

(declare-fun m!5674837 () Bool)

(assert (=> b!4732098 m!5674837))

(assert (=> b!4732098 m!5674825))

(declare-fun m!5674839 () Bool)

(assert (=> b!4732098 m!5674839))

(declare-fun m!5674841 () Bool)

(assert (=> b!4732098 m!5674841))

(assert (=> b!4732098 m!5674399))

(declare-fun m!5674843 () Bool)

(assert (=> b!4732098 m!5674843))

(assert (=> b!4732098 m!5674843))

(declare-fun m!5674845 () Bool)

(assert (=> b!4732098 m!5674845))

(declare-fun m!5674847 () Bool)

(assert (=> b!4732098 m!5674847))

(assert (=> b!4732098 m!5674847))

(declare-fun m!5674849 () Bool)

(assert (=> b!4732098 m!5674849))

(declare-fun m!5674851 () Bool)

(assert (=> b!4732098 m!5674851))

(assert (=> b!4732098 m!5674399))

(declare-fun m!5674853 () Bool)

(assert (=> b!4732098 m!5674853))

(assert (=> b!4732098 m!5674825))

(declare-fun m!5674855 () Bool)

(assert (=> bm!330956 m!5674855))

(declare-fun m!5674857 () Bool)

(assert (=> bm!330958 m!5674857))

(assert (=> b!4731747 d!1509281))

(declare-fun bs!1120812 () Bool)

(declare-fun d!1509289 () Bool)

(assert (= bs!1120812 (and d!1509289 start!482284)))

(declare-fun lambda!217418 () Int)

(assert (=> bs!1120812 (= lambda!217418 lambda!217308)))

(declare-fun bs!1120813 () Bool)

(assert (= bs!1120813 (and d!1509289 d!1509191)))

(assert (=> bs!1120813 (= lambda!217418 lambda!217325)))

(declare-fun bs!1120814 () Bool)

(assert (= bs!1120814 (and d!1509289 d!1509187)))

(assert (=> bs!1120814 (= lambda!217418 lambda!217324)))

(declare-fun bs!1120815 () Bool)

(assert (= bs!1120815 (and d!1509289 d!1509185)))

(assert (=> bs!1120815 (= lambda!217418 lambda!217321)))

(declare-fun bs!1120816 () Bool)

(assert (= bs!1120816 (and d!1509289 d!1509247)))

(assert (=> bs!1120816 (= lambda!217418 lambda!217377)))

(declare-fun bs!1120817 () Bool)

(assert (= bs!1120817 (and d!1509289 d!1509217)))

(assert (=> bs!1120817 (= lambda!217418 lambda!217364)))

(declare-fun lt!1895147 () ListMap!5329)

(assert (=> d!1509289 (invariantList!1529 (toList!5965 lt!1895147))))

(declare-fun e!2951613 () ListMap!5329)

(assert (=> d!1509289 (= lt!1895147 e!2951613)))

(declare-fun c!808155 () Bool)

(assert (=> d!1509289 (= c!808155 ((_ is Cons!52896) (t!360296 (toList!5966 lm!2023))))))

(assert (=> d!1509289 (forall!11639 (t!360296 (toList!5966 lm!2023)) lambda!217418)))

(assert (=> d!1509289 (= (extractMap!2064 (t!360296 (toList!5966 lm!2023))) lt!1895147)))

(declare-fun b!4732105 () Bool)

(assert (=> b!4732105 (= e!2951613 (addToMapMapFromBucket!1468 (_2!30568 (h!59261 (t!360296 (toList!5966 lm!2023)))) (extractMap!2064 (t!360296 (t!360296 (toList!5966 lm!2023))))))))

(declare-fun b!4732106 () Bool)

(assert (=> b!4732106 (= e!2951613 (ListMap!5330 Nil!52895))))

(assert (= (and d!1509289 c!808155) b!4732105))

(assert (= (and d!1509289 (not c!808155)) b!4732106))

(declare-fun m!5674859 () Bool)

(assert (=> d!1509289 m!5674859))

(declare-fun m!5674861 () Bool)

(assert (=> d!1509289 m!5674861))

(declare-fun m!5674863 () Bool)

(assert (=> b!4732105 m!5674863))

(assert (=> b!4732105 m!5674863))

(declare-fun m!5674865 () Bool)

(assert (=> b!4732105 m!5674865))

(assert (=> b!4731747 d!1509289))

(declare-fun bs!1120818 () Bool)

(declare-fun d!1509291 () Bool)

(assert (= bs!1120818 (and d!1509291 start!482284)))

(declare-fun lambda!217421 () Int)

(assert (=> bs!1120818 (not (= lambda!217421 lambda!217308))))

(declare-fun bs!1120819 () Bool)

(assert (= bs!1120819 (and d!1509291 d!1509187)))

(assert (=> bs!1120819 (not (= lambda!217421 lambda!217324))))

(declare-fun bs!1120820 () Bool)

(assert (= bs!1120820 (and d!1509291 d!1509185)))

(assert (=> bs!1120820 (not (= lambda!217421 lambda!217321))))

(declare-fun bs!1120821 () Bool)

(assert (= bs!1120821 (and d!1509291 d!1509247)))

(assert (=> bs!1120821 (not (= lambda!217421 lambda!217377))))

(declare-fun bs!1120822 () Bool)

(assert (= bs!1120822 (and d!1509291 d!1509217)))

(assert (=> bs!1120822 (not (= lambda!217421 lambda!217364))))

(declare-fun bs!1120823 () Bool)

(assert (= bs!1120823 (and d!1509291 d!1509289)))

(assert (=> bs!1120823 (not (= lambda!217421 lambda!217418))))

(declare-fun bs!1120824 () Bool)

(assert (= bs!1120824 (and d!1509291 d!1509191)))

(assert (=> bs!1120824 (not (= lambda!217421 lambda!217325))))

(assert (=> d!1509291 true))

(assert (=> d!1509291 (= (allKeysSameHashInMap!1952 lm!2023 hashF!1323) (forall!11639 (toList!5966 lm!2023) lambda!217421))))

(declare-fun bs!1120825 () Bool)

(assert (= bs!1120825 d!1509291))

(declare-fun m!5674867 () Bool)

(assert (=> bs!1120825 m!5674867))

(assert (=> b!4731757 d!1509291))

(declare-fun bs!1120826 () Bool)

(declare-fun d!1509293 () Bool)

(assert (= bs!1120826 (and d!1509293 b!4732098)))

(declare-fun lambda!217422 () Int)

(assert (=> bs!1120826 (not (= lambda!217422 lambda!217415))))

(declare-fun bs!1120827 () Bool)

(assert (= bs!1120827 (and d!1509293 d!1509281)))

(assert (=> bs!1120827 (not (= lambda!217422 lambda!217417))))

(declare-fun bs!1120828 () Bool)

(assert (= bs!1120828 (and d!1509293 d!1509193)))

(assert (=> bs!1120828 (= lambda!217422 lambda!217328)))

(assert (=> bs!1120826 (not (= lambda!217422 lambda!217416))))

(declare-fun bs!1120829 () Bool)

(assert (= bs!1120829 (and d!1509293 b!4732099)))

(assert (=> bs!1120829 (not (= lambda!217422 lambda!217414))))

(assert (=> d!1509293 true))

(assert (=> d!1509293 true))

(assert (=> d!1509293 (= (allKeysSameHash!1864 newBucket!218 hash!405 hashF!1323) (forall!11641 newBucket!218 lambda!217422))))

(declare-fun bs!1120830 () Bool)

(assert (= bs!1120830 d!1509293))

(declare-fun m!5674869 () Bool)

(assert (=> bs!1120830 m!5674869))

(assert (=> b!4731754 d!1509293))

(declare-fun d!1509295 () Bool)

(declare-fun res!2003548 () Bool)

(declare-fun e!2951614 () Bool)

(assert (=> d!1509295 (=> res!2003548 e!2951614)))

(assert (=> d!1509295 (= res!2003548 (not ((_ is Cons!52895) (Cons!52895 (head!10280 oldBucket!34) lt!1894823))))))

(assert (=> d!1509295 (= (noDuplicateKeys!2038 (Cons!52895 (head!10280 oldBucket!34) lt!1894823)) e!2951614)))

(declare-fun b!4732109 () Bool)

(declare-fun e!2951615 () Bool)

(assert (=> b!4732109 (= e!2951614 e!2951615)))

(declare-fun res!2003549 () Bool)

(assert (=> b!4732109 (=> (not res!2003549) (not e!2951615))))

(assert (=> b!4732109 (= res!2003549 (not (containsKey!3419 (t!360295 (Cons!52895 (head!10280 oldBucket!34) lt!1894823)) (_1!30567 (h!59260 (Cons!52895 (head!10280 oldBucket!34) lt!1894823))))))))

(declare-fun b!4732110 () Bool)

(assert (=> b!4732110 (= e!2951615 (noDuplicateKeys!2038 (t!360295 (Cons!52895 (head!10280 oldBucket!34) lt!1894823))))))

(assert (= (and d!1509295 (not res!2003548)) b!4732109))

(assert (= (and b!4732109 res!2003549) b!4732110))

(declare-fun m!5674871 () Bool)

(assert (=> b!4732109 m!5674871))

(declare-fun m!5674873 () Bool)

(assert (=> b!4732110 m!5674873))

(assert (=> b!4731753 d!1509295))

(declare-fun d!1509297 () Bool)

(assert (=> d!1509297 (= (head!10280 oldBucket!34) (h!59260 oldBucket!34))))

(assert (=> b!4731753 d!1509297))

(declare-fun d!1509299 () Bool)

(declare-fun res!2003550 () Bool)

(declare-fun e!2951616 () Bool)

(assert (=> d!1509299 (=> res!2003550 e!2951616)))

(assert (=> d!1509299 (= res!2003550 (not ((_ is Cons!52895) oldBucket!34)))))

(assert (=> d!1509299 (= (noDuplicateKeys!2038 oldBucket!34) e!2951616)))

(declare-fun b!4732111 () Bool)

(declare-fun e!2951617 () Bool)

(assert (=> b!4732111 (= e!2951616 e!2951617)))

(declare-fun res!2003551 () Bool)

(assert (=> b!4732111 (=> (not res!2003551) (not e!2951617))))

(assert (=> b!4732111 (= res!2003551 (not (containsKey!3419 (t!360295 oldBucket!34) (_1!30567 (h!59260 oldBucket!34)))))))

(declare-fun b!4732112 () Bool)

(assert (=> b!4732112 (= e!2951617 (noDuplicateKeys!2038 (t!360295 oldBucket!34)))))

(assert (= (and d!1509299 (not res!2003550)) b!4732111))

(assert (= (and b!4732111 res!2003551) b!4732112))

(declare-fun m!5674875 () Bool)

(assert (=> b!4732111 m!5674875))

(assert (=> b!4732112 m!5674609))

(assert (=> b!4731755 d!1509299))

(declare-fun d!1509301 () Bool)

(assert (=> d!1509301 (= (head!10279 (toList!5966 lm!2023)) (h!59261 (toList!5966 lm!2023)))))

(assert (=> b!4731744 d!1509301))

(declare-fun b!4732117 () Bool)

(declare-fun e!2951620 () Bool)

(declare-fun tp!1348878 () Bool)

(assert (=> b!4732117 (= e!2951620 (and tp_is_empty!31445 tp_is_empty!31447 tp!1348878))))

(assert (=> b!4731751 (= tp!1348865 e!2951620)))

(assert (= (and b!4731751 ((_ is Cons!52895) (t!360295 oldBucket!34))) b!4732117))

(declare-fun b!4732122 () Bool)

(declare-fun e!2951623 () Bool)

(declare-fun tp!1348883 () Bool)

(declare-fun tp!1348884 () Bool)

(assert (=> b!4732122 (= e!2951623 (and tp!1348883 tp!1348884))))

(assert (=> b!4731758 (= tp!1348864 e!2951623)))

(assert (= (and b!4731758 ((_ is Cons!52896) (toList!5966 lm!2023))) b!4732122))

(declare-fun b!4732123 () Bool)

(declare-fun tp!1348885 () Bool)

(declare-fun e!2951624 () Bool)

(assert (=> b!4732123 (= e!2951624 (and tp_is_empty!31445 tp_is_empty!31447 tp!1348885))))

(assert (=> b!4731743 (= tp!1348863 e!2951624)))

(assert (= (and b!4731743 ((_ is Cons!52895) (t!360295 newBucket!218))) b!4732123))

(declare-fun b_lambda!180593 () Bool)

(assert (= b_lambda!180581 (or start!482284 b_lambda!180593)))

(declare-fun bs!1120831 () Bool)

(declare-fun d!1509303 () Bool)

(assert (= bs!1120831 (and d!1509303 start!482284)))

(assert (=> bs!1120831 (= (dynLambda!21851 lambda!217308 (h!59261 (toList!5966 lm!2023))) (noDuplicateKeys!2038 (_2!30568 (h!59261 (toList!5966 lm!2023)))))))

(assert (=> bs!1120831 m!5674829))

(assert (=> b!4731914 d!1509303))

(declare-fun b_lambda!180595 () Bool)

(assert (= b_lambda!180587 (or start!482284 b_lambda!180595)))

(declare-fun bs!1120832 () Bool)

(declare-fun d!1509305 () Bool)

(assert (= bs!1120832 (and d!1509305 start!482284)))

(assert (=> bs!1120832 (= (dynLambda!21851 lambda!217308 lt!1894812) (noDuplicateKeys!2038 (_2!30568 lt!1894812)))))

(declare-fun m!5674877 () Bool)

(assert (=> bs!1120832 m!5674877))

(assert (=> d!1509277 d!1509305))

(check-sat (not b!4732101) (not b!4732102) (not b!4732098) (not d!1509277) (not b!4732057) (not b!4731973) (not d!1509211) (not bm!330940) tp_is_empty!31447 (not b!4732110) (not b_lambda!180595) (not d!1509291) (not b!4731875) (not d!1509279) (not b!4731860) (not b!4731861) (not b!4731902) (not d!1509289) (not b!4731874) (not b!4732042) (not b!4732032) (not d!1509195) (not b!4731859) (not d!1509217) (not b!4732031) (not d!1509199) (not b!4732033) (not b!4731876) (not b!4732105) (not b!4731863) (not b!4731908) (not d!1509207) (not d!1509197) (not b!4732109) (not bm!330957) (not d!1509213) (not b!4731864) (not bm!330956) (not b!4731915) (not b!4731865) (not bs!1120831) (not b!4731904) (not bm!330958) (not d!1509161) (not d!1509247) (not b!4731880) (not d!1509185) (not b!4731905) (not b!4732111) (not b_lambda!180593) (not d!1509191) (not b!4732071) tp_is_empty!31445 (not d!1509189) (not b!4731882) (not b!4731871) (not bs!1120832) (not b!4731800) (not d!1509193) (not b!4732112) (not b!4732034) (not b!4732040) (not b!4731968) (not b!4732055) (not d!1509265) (not b!4731866) (not d!1509273) (not d!1509275) (not d!1509281) (not b!4731974) (not b!4732068) (not d!1509187) (not b!4731878) (not b!4731971) (not bm!330939) (not b!4732117) (not d!1509271) (not d!1509293) (not b!4731881) (not b!4732123) (not d!1509215) (not d!1509233) (not b!4731970) (not b!4731799) (not b!4731879) (not b!4732048) (not b!4732122) (not b!4732100))
(check-sat)
