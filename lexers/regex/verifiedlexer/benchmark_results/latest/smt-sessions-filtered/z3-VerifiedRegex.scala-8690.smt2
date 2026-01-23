; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462584 () Bool)

(assert start!462584)

(declare-fun b!4620453 () Bool)

(declare-fun e!2882102 () Bool)

(declare-fun e!2882105 () Bool)

(assert (=> b!4620453 (= e!2882102 e!2882105)))

(declare-fun res!1936769 () Bool)

(assert (=> b!4620453 (=> res!1936769 e!2882105)))

(declare-datatypes ((K!12855 0))(
  ( (K!12856 (val!18555 Int)) )
))
(declare-datatypes ((V!13101 0))(
  ( (V!13102 (val!18556 Int)) )
))
(declare-datatypes ((tuple2!52374 0))(
  ( (tuple2!52375 (_1!29481 K!12855) (_2!29481 V!13101)) )
))
(declare-datatypes ((List!51592 0))(
  ( (Nil!51468) (Cons!51468 (h!57500 tuple2!52374) (t!358606 List!51592)) )
))
(declare-fun oldBucket!40 () List!51592)

(declare-fun key!4968 () K!12855)

(declare-fun containsKey!2386 (List!51592 K!12855) Bool)

(assert (=> b!4620453 (= res!1936769 (not (containsKey!2386 (t!358606 oldBucket!40) key!4968)))))

(assert (=> b!4620453 (containsKey!2386 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5879 0))(
  ( (HashableExt!5878 (__x!31582 Int)) )
))
(declare-fun hashF!1389 () Hashable!5879)

(declare-datatypes ((Unit!110904 0))(
  ( (Unit!110905) )
))
(declare-fun lt!1776464 () Unit!110904)

(declare-fun lemmaGetPairDefinedThenContainsKey!28 (List!51592 K!12855 Hashable!5879) Unit!110904)

(assert (=> b!4620453 (= lt!1776464 (lemmaGetPairDefinedThenContainsKey!28 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1776460 () List!51592)

(declare-datatypes ((Option!11528 0))(
  ( (None!11527) (Some!11527 (v!45617 tuple2!52374)) )
))
(declare-fun isDefined!8793 (Option!11528) Bool)

(declare-fun getPair!274 (List!51592 K!12855) Option!11528)

(assert (=> b!4620453 (isDefined!8793 (getPair!274 lt!1776460 key!4968))))

(declare-fun lt!1776467 () Unit!110904)

(declare-fun lambda!190596 () Int)

(declare-datatypes ((tuple2!52376 0))(
  ( (tuple2!52377 (_1!29482 (_ BitVec 64)) (_2!29482 List!51592)) )
))
(declare-fun lt!1776470 () tuple2!52376)

(declare-datatypes ((List!51593 0))(
  ( (Nil!51469) (Cons!51469 (h!57501 tuple2!52376) (t!358607 List!51593)) )
))
(declare-fun lt!1776471 () List!51593)

(declare-fun forallContained!3008 (List!51593 Int tuple2!52376) Unit!110904)

(assert (=> b!4620453 (= lt!1776467 (forallContained!3008 lt!1776471 lambda!190596 lt!1776470))))

(declare-fun contains!14469 (List!51593 tuple2!52376) Bool)

(assert (=> b!4620453 (contains!14469 lt!1776471 lt!1776470)))

(declare-fun lt!1776453 () (_ BitVec 64))

(assert (=> b!4620453 (= lt!1776470 (tuple2!52377 lt!1776453 lt!1776460))))

(declare-fun lt!1776458 () Unit!110904)

(declare-datatypes ((ListLongMap!3519 0))(
  ( (ListLongMap!3520 (toList!4929 List!51593)) )
))
(declare-fun lt!1776456 () ListLongMap!3519)

(declare-fun lemmaGetValueImpliesTupleContained!79 (ListLongMap!3519 (_ BitVec 64) List!51592) Unit!110904)

(assert (=> b!4620453 (= lt!1776458 (lemmaGetValueImpliesTupleContained!79 lt!1776456 lt!1776453 lt!1776460))))

(declare-fun apply!12147 (ListLongMap!3519 (_ BitVec 64)) List!51592)

(assert (=> b!4620453 (= lt!1776460 (apply!12147 lt!1776456 lt!1776453))))

(declare-fun contains!14470 (ListLongMap!3519 (_ BitVec 64)) Bool)

(assert (=> b!4620453 (contains!14470 lt!1776456 lt!1776453)))

(declare-fun lt!1776469 () Unit!110904)

(declare-fun lemmaInGenMapThenLongMapContainsHash!480 (ListLongMap!3519 K!12855 Hashable!5879) Unit!110904)

(assert (=> b!4620453 (= lt!1776469 (lemmaInGenMapThenLongMapContainsHash!480 lt!1776456 key!4968 hashF!1389))))

(declare-fun lt!1776461 () Unit!110904)

(declare-fun lemmaInGenMapThenGetPairDefined!70 (ListLongMap!3519 K!12855 Hashable!5879) Unit!110904)

(assert (=> b!4620453 (= lt!1776461 (lemmaInGenMapThenGetPairDefined!70 lt!1776456 key!4968 hashF!1389))))

(assert (=> b!4620453 (= lt!1776456 (ListLongMap!3520 lt!1776471))))

(declare-fun b!4620454 () Bool)

(declare-fun e!2882104 () Bool)

(assert (=> b!4620454 (= e!2882105 e!2882104)))

(declare-fun res!1936773 () Bool)

(assert (=> b!4620454 (=> res!1936773 e!2882104)))

(declare-fun lt!1776465 () List!51592)

(declare-fun lt!1776466 () List!51592)

(declare-fun removePairForKey!1105 (List!51592 K!12855) List!51592)

(assert (=> b!4620454 (= res!1936773 (not (= (removePairForKey!1105 lt!1776466 key!4968) lt!1776465)))))

(declare-fun newBucket!224 () List!51592)

(declare-fun tail!8117 (List!51592) List!51592)

(assert (=> b!4620454 (= lt!1776465 (tail!8117 newBucket!224))))

(assert (=> b!4620454 (= lt!1776466 (tail!8117 oldBucket!40))))

(declare-fun b!4620455 () Bool)

(declare-fun e!2882108 () Bool)

(declare-fun tp!1341891 () Bool)

(declare-fun tp_is_empty!29223 () Bool)

(declare-fun tp_is_empty!29221 () Bool)

(assert (=> b!4620455 (= e!2882108 (and tp_is_empty!29221 tp_is_empty!29223 tp!1341891))))

(declare-fun b!4620456 () Bool)

(declare-fun res!1936771 () Bool)

(declare-fun e!2882103 () Bool)

(assert (=> b!4620456 (=> (not res!1936771) (not e!2882103))))

(declare-fun noDuplicateKeys!1482 (List!51592) Bool)

(assert (=> b!4620456 (= res!1936771 (noDuplicateKeys!1482 newBucket!224))))

(declare-fun b!4620457 () Bool)

(declare-fun e!2882101 () Bool)

(assert (=> b!4620457 (= e!2882101 (not e!2882102))))

(declare-fun res!1936772 () Bool)

(assert (=> b!4620457 (=> res!1936772 e!2882102)))

(get-info :version)

(assert (=> b!4620457 (= res!1936772 (or (and ((_ is Cons!51468) oldBucket!40) (= (_1!29481 (h!57500 oldBucket!40)) key!4968)) (not ((_ is Cons!51468) oldBucket!40)) (= (_1!29481 (h!57500 oldBucket!40)) key!4968)))))

(declare-fun e!2882106 () Bool)

(assert (=> b!4620457 e!2882106))

(declare-fun res!1936765 () Bool)

(assert (=> b!4620457 (=> (not res!1936765) (not e!2882106))))

(declare-datatypes ((ListMap!4233 0))(
  ( (ListMap!4234 (toList!4930 List!51592)) )
))
(declare-fun lt!1776462 () ListMap!4233)

(declare-fun lt!1776463 () ListMap!4233)

(declare-fun addToMapMapFromBucket!943 (List!51592 ListMap!4233) ListMap!4233)

(assert (=> b!4620457 (= res!1936765 (= lt!1776463 (addToMapMapFromBucket!943 oldBucket!40 lt!1776462)))))

(declare-fun extractMap!1538 (List!51593) ListMap!4233)

(assert (=> b!4620457 (= lt!1776462 (extractMap!1538 Nil!51469))))

(assert (=> b!4620457 true))

(declare-fun b!4620458 () Bool)

(declare-fun res!1936767 () Bool)

(assert (=> b!4620458 (=> (not res!1936767) (not e!2882103))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1336 (List!51592 (_ BitVec 64) Hashable!5879) Bool)

(assert (=> b!4620458 (= res!1936767 (allKeysSameHash!1336 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1936776 () Bool)

(assert (=> start!462584 (=> (not res!1936776) (not e!2882103))))

(assert (=> start!462584 (= res!1936776 (noDuplicateKeys!1482 oldBucket!40))))

(assert (=> start!462584 e!2882103))

(assert (=> start!462584 true))

(declare-fun e!2882100 () Bool)

(assert (=> start!462584 e!2882100))

(assert (=> start!462584 tp_is_empty!29221))

(assert (=> start!462584 e!2882108))

(declare-fun b!4620459 () Bool)

(declare-fun forall!10786 (List!51593 Int) Bool)

(assert (=> b!4620459 (= e!2882104 (forall!10786 lt!1776471 lambda!190596))))

(declare-fun lt!1776452 () tuple2!52374)

(declare-fun eq!797 (ListMap!4233 ListMap!4233) Bool)

(declare-fun +!1848 (ListMap!4233 tuple2!52374) ListMap!4233)

(assert (=> b!4620459 (eq!797 (addToMapMapFromBucket!943 (Cons!51468 lt!1776452 lt!1776465) (ListMap!4234 Nil!51468)) (+!1848 (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776452))))

(declare-fun lt!1776457 () Unit!110904)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!48 (tuple2!52374 List!51592 ListMap!4233) Unit!110904)

(assert (=> b!4620459 (= lt!1776457 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!48 lt!1776452 lt!1776465 (ListMap!4234 Nil!51468)))))

(declare-fun head!9616 (List!51592) tuple2!52374)

(assert (=> b!4620459 (= lt!1776452 (head!9616 newBucket!224))))

(declare-fun lt!1776455 () tuple2!52374)

(assert (=> b!4620459 (eq!797 (addToMapMapFromBucket!943 (Cons!51468 lt!1776455 lt!1776466) (ListMap!4234 Nil!51468)) (+!1848 (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776455))))

(declare-fun lt!1776454 () Unit!110904)

(assert (=> b!4620459 (= lt!1776454 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!48 lt!1776455 lt!1776466 (ListMap!4234 Nil!51468)))))

(assert (=> b!4620459 (= lt!1776455 (head!9616 oldBucket!40))))

(declare-fun lt!1776468 () List!51593)

(declare-fun contains!14471 (ListMap!4233 K!12855) Bool)

(assert (=> b!4620459 (contains!14471 (extractMap!1538 lt!1776468) key!4968)))

(declare-fun lt!1776459 () Unit!110904)

(declare-fun lemmaListContainsThenExtractedMapContains!300 (ListLongMap!3519 K!12855 Hashable!5879) Unit!110904)

(assert (=> b!4620459 (= lt!1776459 (lemmaListContainsThenExtractedMapContains!300 (ListLongMap!3520 lt!1776468) key!4968 hashF!1389))))

(assert (=> b!4620459 (= lt!1776468 (Cons!51469 (tuple2!52377 hash!414 (t!358606 oldBucket!40)) Nil!51469))))

(declare-fun b!4620460 () Bool)

(declare-fun res!1936768 () Bool)

(assert (=> b!4620460 (=> (not res!1936768) (not e!2882101))))

(assert (=> b!4620460 (= res!1936768 (allKeysSameHash!1336 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4620461 () Bool)

(assert (=> b!4620461 (= e!2882106 (= lt!1776462 (ListMap!4234 Nil!51468)))))

(declare-fun b!4620462 () Bool)

(declare-fun e!2882107 () Bool)

(assert (=> b!4620462 (= e!2882107 e!2882101)))

(declare-fun res!1936775 () Bool)

(assert (=> b!4620462 (=> (not res!1936775) (not e!2882101))))

(assert (=> b!4620462 (= res!1936775 (= lt!1776453 hash!414))))

(declare-fun hash!3454 (Hashable!5879 K!12855) (_ BitVec 64))

(assert (=> b!4620462 (= lt!1776453 (hash!3454 hashF!1389 key!4968))))

(declare-fun b!4620463 () Bool)

(declare-fun res!1936770 () Bool)

(assert (=> b!4620463 (=> (not res!1936770) (not e!2882103))))

(assert (=> b!4620463 (= res!1936770 (= (removePairForKey!1105 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1341890 () Bool)

(declare-fun b!4620464 () Bool)

(assert (=> b!4620464 (= e!2882100 (and tp_is_empty!29221 tp_is_empty!29223 tp!1341890))))

(declare-fun b!4620465 () Bool)

(declare-fun res!1936766 () Bool)

(assert (=> b!4620465 (=> res!1936766 e!2882104)))

(assert (=> b!4620465 (= res!1936766 (not (= (removePairForKey!1105 (t!358606 oldBucket!40) key!4968) lt!1776465)))))

(declare-fun b!4620466 () Bool)

(assert (=> b!4620466 (= e!2882103 e!2882107)))

(declare-fun res!1936774 () Bool)

(assert (=> b!4620466 (=> (not res!1936774) (not e!2882107))))

(assert (=> b!4620466 (= res!1936774 (contains!14471 lt!1776463 key!4968))))

(assert (=> b!4620466 (= lt!1776463 (extractMap!1538 lt!1776471))))

(assert (=> b!4620466 (= lt!1776471 (Cons!51469 (tuple2!52377 hash!414 oldBucket!40) Nil!51469))))

(assert (= (and start!462584 res!1936776) b!4620456))

(assert (= (and b!4620456 res!1936771) b!4620463))

(assert (= (and b!4620463 res!1936770) b!4620458))

(assert (= (and b!4620458 res!1936767) b!4620466))

(assert (= (and b!4620466 res!1936774) b!4620462))

(assert (= (and b!4620462 res!1936775) b!4620460))

(assert (= (and b!4620460 res!1936768) b!4620457))

(assert (= (and b!4620457 res!1936765) b!4620461))

(assert (= (and b!4620457 (not res!1936772)) b!4620453))

(assert (= (and b!4620453 (not res!1936769)) b!4620454))

(assert (= (and b!4620454 (not res!1936773)) b!4620465))

(assert (= (and b!4620465 (not res!1936766)) b!4620459))

(assert (= (and start!462584 ((_ is Cons!51468) oldBucket!40)) b!4620464))

(assert (= (and start!462584 ((_ is Cons!51468) newBucket!224)) b!4620455))

(declare-fun m!5456687 () Bool)

(assert (=> b!4620453 m!5456687))

(declare-fun m!5456689 () Bool)

(assert (=> b!4620453 m!5456689))

(declare-fun m!5456691 () Bool)

(assert (=> b!4620453 m!5456691))

(declare-fun m!5456693 () Bool)

(assert (=> b!4620453 m!5456693))

(assert (=> b!4620453 m!5456689))

(declare-fun m!5456695 () Bool)

(assert (=> b!4620453 m!5456695))

(declare-fun m!5456697 () Bool)

(assert (=> b!4620453 m!5456697))

(declare-fun m!5456699 () Bool)

(assert (=> b!4620453 m!5456699))

(declare-fun m!5456701 () Bool)

(assert (=> b!4620453 m!5456701))

(declare-fun m!5456703 () Bool)

(assert (=> b!4620453 m!5456703))

(declare-fun m!5456705 () Bool)

(assert (=> b!4620453 m!5456705))

(declare-fun m!5456707 () Bool)

(assert (=> b!4620453 m!5456707))

(declare-fun m!5456709 () Bool)

(assert (=> b!4620453 m!5456709))

(declare-fun m!5456711 () Bool)

(assert (=> b!4620465 m!5456711))

(declare-fun m!5456713 () Bool)

(assert (=> b!4620458 m!5456713))

(declare-fun m!5456715 () Bool)

(assert (=> b!4620459 m!5456715))

(declare-fun m!5456717 () Bool)

(assert (=> b!4620459 m!5456717))

(declare-fun m!5456719 () Bool)

(assert (=> b!4620459 m!5456719))

(declare-fun m!5456721 () Bool)

(assert (=> b!4620459 m!5456721))

(declare-fun m!5456723 () Bool)

(assert (=> b!4620459 m!5456723))

(declare-fun m!5456725 () Bool)

(assert (=> b!4620459 m!5456725))

(declare-fun m!5456727 () Bool)

(assert (=> b!4620459 m!5456727))

(declare-fun m!5456729 () Bool)

(assert (=> b!4620459 m!5456729))

(assert (=> b!4620459 m!5456715))

(declare-fun m!5456731 () Bool)

(assert (=> b!4620459 m!5456731))

(assert (=> b!4620459 m!5456721))

(declare-fun m!5456733 () Bool)

(assert (=> b!4620459 m!5456733))

(assert (=> b!4620459 m!5456733))

(declare-fun m!5456735 () Bool)

(assert (=> b!4620459 m!5456735))

(declare-fun m!5456737 () Bool)

(assert (=> b!4620459 m!5456737))

(declare-fun m!5456739 () Bool)

(assert (=> b!4620459 m!5456739))

(declare-fun m!5456741 () Bool)

(assert (=> b!4620459 m!5456741))

(assert (=> b!4620459 m!5456727))

(assert (=> b!4620459 m!5456717))

(declare-fun m!5456743 () Bool)

(assert (=> b!4620459 m!5456743))

(declare-fun m!5456745 () Bool)

(assert (=> b!4620459 m!5456745))

(assert (=> b!4620459 m!5456741))

(assert (=> b!4620459 m!5456735))

(declare-fun m!5456747 () Bool)

(assert (=> start!462584 m!5456747))

(declare-fun m!5456749 () Bool)

(assert (=> b!4620466 m!5456749))

(declare-fun m!5456751 () Bool)

(assert (=> b!4620466 m!5456751))

(declare-fun m!5456753 () Bool)

(assert (=> b!4620462 m!5456753))

(declare-fun m!5456755 () Bool)

(assert (=> b!4620463 m!5456755))

(declare-fun m!5456757 () Bool)

(assert (=> b!4620457 m!5456757))

(declare-fun m!5456759 () Bool)

(assert (=> b!4620457 m!5456759))

(declare-fun m!5456761 () Bool)

(assert (=> b!4620456 m!5456761))

(declare-fun m!5456763 () Bool)

(assert (=> b!4620460 m!5456763))

(declare-fun m!5456765 () Bool)

(assert (=> b!4620454 m!5456765))

(declare-fun m!5456767 () Bool)

(assert (=> b!4620454 m!5456767))

(declare-fun m!5456769 () Bool)

(assert (=> b!4620454 m!5456769))

(check-sat (not b!4620453) (not b!4620466) (not b!4620465) (not b!4620457) (not b!4620460) (not b!4620458) (not b!4620464) (not b!4620454) (not b!4620455) (not b!4620463) (not b!4620459) (not b!4620456) (not start!462584) tp_is_empty!29223 tp_is_empty!29221 (not b!4620462))
(check-sat)
(get-model)

(declare-fun d!1455145 () Bool)

(declare-fun res!1936787 () Bool)

(declare-fun e!2882128 () Bool)

(assert (=> d!1455145 (=> res!1936787 e!2882128)))

(assert (=> d!1455145 (= res!1936787 (not ((_ is Cons!51468) newBucket!224)))))

(assert (=> d!1455145 (= (noDuplicateKeys!1482 newBucket!224) e!2882128)))

(declare-fun b!4620499 () Bool)

(declare-fun e!2882129 () Bool)

(assert (=> b!4620499 (= e!2882128 e!2882129)))

(declare-fun res!1936788 () Bool)

(assert (=> b!4620499 (=> (not res!1936788) (not e!2882129))))

(assert (=> b!4620499 (= res!1936788 (not (containsKey!2386 (t!358606 newBucket!224) (_1!29481 (h!57500 newBucket!224)))))))

(declare-fun b!4620500 () Bool)

(assert (=> b!4620500 (= e!2882129 (noDuplicateKeys!1482 (t!358606 newBucket!224)))))

(assert (= (and d!1455145 (not res!1936787)) b!4620499))

(assert (= (and b!4620499 res!1936788) b!4620500))

(declare-fun m!5456801 () Bool)

(assert (=> b!4620499 m!5456801))

(declare-fun m!5456803 () Bool)

(assert (=> b!4620500 m!5456803))

(assert (=> b!4620456 d!1455145))

(declare-fun b!4620519 () Bool)

(declare-fun e!2882147 () Unit!110904)

(declare-fun Unit!110939 () Unit!110904)

(assert (=> b!4620519 (= e!2882147 Unit!110939)))

(declare-fun b!4620520 () Bool)

(assert (=> b!4620520 false))

(declare-fun lt!1776494 () Unit!110904)

(declare-fun lt!1776501 () Unit!110904)

(assert (=> b!4620520 (= lt!1776494 lt!1776501)))

(declare-fun containsKey!2387 (List!51592 K!12855) Bool)

(assert (=> b!4620520 (containsKey!2387 (toList!4930 lt!1776463) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!635 (List!51592 K!12855) Unit!110904)

(assert (=> b!4620520 (= lt!1776501 (lemmaInGetKeysListThenContainsKey!635 (toList!4930 lt!1776463) key!4968))))

(declare-fun Unit!110940 () Unit!110904)

(assert (=> b!4620520 (= e!2882147 Unit!110940)))

(declare-fun d!1455149 () Bool)

(declare-fun e!2882143 () Bool)

(assert (=> d!1455149 e!2882143))

(declare-fun res!1936796 () Bool)

(assert (=> d!1455149 (=> res!1936796 e!2882143)))

(declare-fun e!2882142 () Bool)

(assert (=> d!1455149 (= res!1936796 e!2882142)))

(declare-fun res!1936797 () Bool)

(assert (=> d!1455149 (=> (not res!1936797) (not e!2882142))))

(declare-fun lt!1776500 () Bool)

(assert (=> d!1455149 (= res!1936797 (not lt!1776500))))

(declare-fun lt!1776498 () Bool)

(assert (=> d!1455149 (= lt!1776500 lt!1776498)))

(declare-fun lt!1776495 () Unit!110904)

(declare-fun e!2882145 () Unit!110904)

(assert (=> d!1455149 (= lt!1776495 e!2882145)))

(declare-fun c!790910 () Bool)

(assert (=> d!1455149 (= c!790910 lt!1776498)))

(assert (=> d!1455149 (= lt!1776498 (containsKey!2387 (toList!4930 lt!1776463) key!4968))))

(assert (=> d!1455149 (= (contains!14471 lt!1776463 key!4968) lt!1776500)))

(declare-fun b!4620521 () Bool)

(declare-datatypes ((List!51594 0))(
  ( (Nil!51470) (Cons!51470 (h!57504 K!12855) (t!358610 List!51594)) )
))
(declare-fun contains!14473 (List!51594 K!12855) Bool)

(declare-fun keys!18111 (ListMap!4233) List!51594)

(assert (=> b!4620521 (= e!2882142 (not (contains!14473 (keys!18111 lt!1776463) key!4968)))))

(declare-fun b!4620522 () Bool)

(declare-fun lt!1776497 () Unit!110904)

(assert (=> b!4620522 (= e!2882145 lt!1776497)))

(declare-fun lt!1776496 () Unit!110904)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1315 (List!51592 K!12855) Unit!110904)

(assert (=> b!4620522 (= lt!1776496 (lemmaContainsKeyImpliesGetValueByKeyDefined!1315 (toList!4930 lt!1776463) key!4968))))

(declare-datatypes ((Option!11530 0))(
  ( (None!11529) (Some!11529 (v!45623 V!13101)) )
))
(declare-fun isDefined!8794 (Option!11530) Bool)

(declare-fun getValueByKey!1414 (List!51592 K!12855) Option!11530)

(assert (=> b!4620522 (isDefined!8794 (getValueByKey!1414 (toList!4930 lt!1776463) key!4968))))

(declare-fun lt!1776499 () Unit!110904)

(assert (=> b!4620522 (= lt!1776499 lt!1776496)))

(declare-fun lemmaInListThenGetKeysListContains!631 (List!51592 K!12855) Unit!110904)

(assert (=> b!4620522 (= lt!1776497 (lemmaInListThenGetKeysListContains!631 (toList!4930 lt!1776463) key!4968))))

(declare-fun call!322154 () Bool)

(assert (=> b!4620522 call!322154))

(declare-fun b!4620523 () Bool)

(declare-fun e!2882146 () Bool)

(assert (=> b!4620523 (= e!2882143 e!2882146)))

(declare-fun res!1936795 () Bool)

(assert (=> b!4620523 (=> (not res!1936795) (not e!2882146))))

(assert (=> b!4620523 (= res!1936795 (isDefined!8794 (getValueByKey!1414 (toList!4930 lt!1776463) key!4968)))))

(declare-fun b!4620524 () Bool)

(declare-fun e!2882144 () List!51594)

(assert (=> b!4620524 (= e!2882144 (keys!18111 lt!1776463))))

(declare-fun bm!322149 () Bool)

(assert (=> bm!322149 (= call!322154 (contains!14473 e!2882144 key!4968))))

(declare-fun c!790912 () Bool)

(assert (=> bm!322149 (= c!790912 c!790910)))

(declare-fun b!4620525 () Bool)

(assert (=> b!4620525 (= e!2882145 e!2882147)))

(declare-fun c!790911 () Bool)

(assert (=> b!4620525 (= c!790911 call!322154)))

(declare-fun b!4620526 () Bool)

(assert (=> b!4620526 (= e!2882146 (contains!14473 (keys!18111 lt!1776463) key!4968))))

(declare-fun b!4620527 () Bool)

(declare-fun getKeysList!636 (List!51592) List!51594)

(assert (=> b!4620527 (= e!2882144 (getKeysList!636 (toList!4930 lt!1776463)))))

(assert (= (and d!1455149 c!790910) b!4620522))

(assert (= (and d!1455149 (not c!790910)) b!4620525))

(assert (= (and b!4620525 c!790911) b!4620520))

(assert (= (and b!4620525 (not c!790911)) b!4620519))

(assert (= (or b!4620522 b!4620525) bm!322149))

(assert (= (and bm!322149 c!790912) b!4620527))

(assert (= (and bm!322149 (not c!790912)) b!4620524))

(assert (= (and d!1455149 res!1936797) b!4620521))

(assert (= (and d!1455149 (not res!1936796)) b!4620523))

(assert (= (and b!4620523 res!1936795) b!4620526))

(declare-fun m!5456805 () Bool)

(assert (=> d!1455149 m!5456805))

(declare-fun m!5456807 () Bool)

(assert (=> b!4620524 m!5456807))

(assert (=> b!4620521 m!5456807))

(assert (=> b!4620521 m!5456807))

(declare-fun m!5456809 () Bool)

(assert (=> b!4620521 m!5456809))

(declare-fun m!5456811 () Bool)

(assert (=> b!4620527 m!5456811))

(declare-fun m!5456813 () Bool)

(assert (=> b!4620522 m!5456813))

(declare-fun m!5456815 () Bool)

(assert (=> b!4620522 m!5456815))

(assert (=> b!4620522 m!5456815))

(declare-fun m!5456817 () Bool)

(assert (=> b!4620522 m!5456817))

(declare-fun m!5456819 () Bool)

(assert (=> b!4620522 m!5456819))

(declare-fun m!5456821 () Bool)

(assert (=> bm!322149 m!5456821))

(assert (=> b!4620526 m!5456807))

(assert (=> b!4620526 m!5456807))

(assert (=> b!4620526 m!5456809))

(assert (=> b!4620523 m!5456815))

(assert (=> b!4620523 m!5456815))

(assert (=> b!4620523 m!5456817))

(assert (=> b!4620520 m!5456805))

(declare-fun m!5456823 () Bool)

(assert (=> b!4620520 m!5456823))

(assert (=> b!4620466 d!1455149))

(declare-fun bs!1019719 () Bool)

(declare-fun d!1455151 () Bool)

(assert (= bs!1019719 (and d!1455151 b!4620453)))

(declare-fun lambda!190605 () Int)

(assert (=> bs!1019719 (= lambda!190605 lambda!190596)))

(declare-fun lt!1776504 () ListMap!4233)

(declare-fun invariantList!1186 (List!51592) Bool)

(assert (=> d!1455151 (invariantList!1186 (toList!4930 lt!1776504))))

(declare-fun e!2882150 () ListMap!4233)

(assert (=> d!1455151 (= lt!1776504 e!2882150)))

(declare-fun c!790915 () Bool)

(assert (=> d!1455151 (= c!790915 ((_ is Cons!51469) lt!1776471))))

(assert (=> d!1455151 (forall!10786 lt!1776471 lambda!190605)))

(assert (=> d!1455151 (= (extractMap!1538 lt!1776471) lt!1776504)))

(declare-fun b!4620532 () Bool)

(assert (=> b!4620532 (= e!2882150 (addToMapMapFromBucket!943 (_2!29482 (h!57501 lt!1776471)) (extractMap!1538 (t!358607 lt!1776471))))))

(declare-fun b!4620533 () Bool)

(assert (=> b!4620533 (= e!2882150 (ListMap!4234 Nil!51468))))

(assert (= (and d!1455151 c!790915) b!4620532))

(assert (= (and d!1455151 (not c!790915)) b!4620533))

(declare-fun m!5456825 () Bool)

(assert (=> d!1455151 m!5456825))

(declare-fun m!5456827 () Bool)

(assert (=> d!1455151 m!5456827))

(declare-fun m!5456829 () Bool)

(assert (=> b!4620532 m!5456829))

(assert (=> b!4620532 m!5456829))

(declare-fun m!5456831 () Bool)

(assert (=> b!4620532 m!5456831))

(assert (=> b!4620466 d!1455151))

(declare-fun b!4620548 () Bool)

(declare-fun e!2882159 () List!51592)

(assert (=> b!4620548 (= e!2882159 (t!358606 (t!358606 oldBucket!40)))))

(declare-fun b!4620550 () Bool)

(declare-fun e!2882160 () List!51592)

(assert (=> b!4620550 (= e!2882160 (Cons!51468 (h!57500 (t!358606 oldBucket!40)) (removePairForKey!1105 (t!358606 (t!358606 oldBucket!40)) key!4968)))))

(declare-fun d!1455153 () Bool)

(declare-fun lt!1776549 () List!51592)

(assert (=> d!1455153 (not (containsKey!2386 lt!1776549 key!4968))))

(assert (=> d!1455153 (= lt!1776549 e!2882159)))

(declare-fun c!790923 () Bool)

(assert (=> d!1455153 (= c!790923 (and ((_ is Cons!51468) (t!358606 oldBucket!40)) (= (_1!29481 (h!57500 (t!358606 oldBucket!40))) key!4968)))))

(assert (=> d!1455153 (noDuplicateKeys!1482 (t!358606 oldBucket!40))))

(assert (=> d!1455153 (= (removePairForKey!1105 (t!358606 oldBucket!40) key!4968) lt!1776549)))

(declare-fun b!4620549 () Bool)

(assert (=> b!4620549 (= e!2882159 e!2882160)))

(declare-fun c!790922 () Bool)

(assert (=> b!4620549 (= c!790922 ((_ is Cons!51468) (t!358606 oldBucket!40)))))

(declare-fun b!4620551 () Bool)

(assert (=> b!4620551 (= e!2882160 Nil!51468)))

(assert (= (and d!1455153 c!790923) b!4620548))

(assert (= (and d!1455153 (not c!790923)) b!4620549))

(assert (= (and b!4620549 c!790922) b!4620550))

(assert (= (and b!4620549 (not c!790922)) b!4620551))

(declare-fun m!5456833 () Bool)

(assert (=> b!4620550 m!5456833))

(declare-fun m!5456835 () Bool)

(assert (=> d!1455153 m!5456835))

(declare-fun m!5456837 () Bool)

(assert (=> d!1455153 m!5456837))

(assert (=> b!4620465 d!1455153))

(declare-fun b!4620690 () Bool)

(assert (=> b!4620690 true))

(declare-fun bs!1019824 () Bool)

(declare-fun b!4620691 () Bool)

(assert (= bs!1019824 (and b!4620691 b!4620690)))

(declare-fun lambda!190686 () Int)

(declare-fun lambda!190685 () Int)

(assert (=> bs!1019824 (= lambda!190686 lambda!190685)))

(assert (=> b!4620691 true))

(declare-fun lt!1776756 () ListMap!4233)

(declare-fun lambda!190687 () Int)

(assert (=> bs!1019824 (= (= lt!1776756 (ListMap!4234 Nil!51468)) (= lambda!190687 lambda!190685))))

(assert (=> b!4620691 (= (= lt!1776756 (ListMap!4234 Nil!51468)) (= lambda!190687 lambda!190686))))

(assert (=> b!4620691 true))

(declare-fun bs!1019825 () Bool)

(declare-fun d!1455155 () Bool)

(assert (= bs!1019825 (and d!1455155 b!4620690)))

(declare-fun lt!1776757 () ListMap!4233)

(declare-fun lambda!190688 () Int)

(assert (=> bs!1019825 (= (= lt!1776757 (ListMap!4234 Nil!51468)) (= lambda!190688 lambda!190685))))

(declare-fun bs!1019826 () Bool)

(assert (= bs!1019826 (and d!1455155 b!4620691)))

(assert (=> bs!1019826 (= (= lt!1776757 (ListMap!4234 Nil!51468)) (= lambda!190688 lambda!190686))))

(assert (=> bs!1019826 (= (= lt!1776757 lt!1776756) (= lambda!190688 lambda!190687))))

(assert (=> d!1455155 true))

(declare-fun bm!322177 () Bool)

(declare-fun call!322183 () Unit!110904)

(declare-fun lemmaContainsAllItsOwnKeys!488 (ListMap!4233) Unit!110904)

(assert (=> bm!322177 (= call!322183 (lemmaContainsAllItsOwnKeys!488 (ListMap!4234 Nil!51468)))))

(declare-fun b!4620687 () Bool)

(declare-fun e!2882252 () Bool)

(declare-fun forall!10788 (List!51592 Int) Bool)

(assert (=> b!4620687 (= e!2882252 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190687))))

(declare-fun b!4620688 () Bool)

(declare-fun e!2882250 () Bool)

(assert (=> b!4620688 (= e!2882250 (invariantList!1186 (toList!4930 lt!1776757)))))

(declare-fun c!790952 () Bool)

(declare-fun bm!322178 () Bool)

(declare-fun call!322184 () Bool)

(assert (=> bm!322178 (= call!322184 (forall!10788 (ite c!790952 (toList!4930 (ListMap!4234 Nil!51468)) (Cons!51468 lt!1776455 lt!1776466)) (ite c!790952 lambda!190685 lambda!190687)))))

(declare-fun b!4620689 () Bool)

(declare-fun res!1936877 () Bool)

(assert (=> b!4620689 (=> (not res!1936877) (not e!2882250))))

(assert (=> b!4620689 (= res!1936877 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190688))))

(declare-fun e!2882251 () ListMap!4233)

(assert (=> b!4620690 (= e!2882251 (ListMap!4234 Nil!51468))))

(declare-fun lt!1776762 () Unit!110904)

(assert (=> b!4620690 (= lt!1776762 call!322183)))

(assert (=> b!4620690 call!322184))

(declare-fun lt!1776753 () Unit!110904)

(assert (=> b!4620690 (= lt!1776753 lt!1776762)))

(declare-fun call!322182 () Bool)

(assert (=> b!4620690 call!322182))

(declare-fun lt!1776754 () Unit!110904)

(declare-fun Unit!110952 () Unit!110904)

(assert (=> b!4620690 (= lt!1776754 Unit!110952)))

(assert (=> b!4620691 (= e!2882251 lt!1776756)))

(declare-fun lt!1776760 () ListMap!4233)

(assert (=> b!4620691 (= lt!1776760 (+!1848 (ListMap!4234 Nil!51468) (h!57500 (Cons!51468 lt!1776455 lt!1776466))))))

(assert (=> b!4620691 (= lt!1776756 (addToMapMapFromBucket!943 (t!358606 (Cons!51468 lt!1776455 lt!1776466)) (+!1848 (ListMap!4234 Nil!51468) (h!57500 (Cons!51468 lt!1776455 lt!1776466)))))))

(declare-fun lt!1776761 () Unit!110904)

(assert (=> b!4620691 (= lt!1776761 call!322183)))

(assert (=> b!4620691 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190686)))

(declare-fun lt!1776759 () Unit!110904)

(assert (=> b!4620691 (= lt!1776759 lt!1776761)))

(assert (=> b!4620691 (forall!10788 (toList!4930 lt!1776760) lambda!190687)))

(declare-fun lt!1776752 () Unit!110904)

(declare-fun Unit!110953 () Unit!110904)

(assert (=> b!4620691 (= lt!1776752 Unit!110953)))

(assert (=> b!4620691 call!322182))

(declare-fun lt!1776755 () Unit!110904)

(declare-fun Unit!110954 () Unit!110904)

(assert (=> b!4620691 (= lt!1776755 Unit!110954)))

(declare-fun lt!1776772 () Unit!110904)

(declare-fun Unit!110955 () Unit!110904)

(assert (=> b!4620691 (= lt!1776772 Unit!110955)))

(declare-fun lt!1776771 () Unit!110904)

(declare-fun forallContained!3010 (List!51592 Int tuple2!52374) Unit!110904)

(assert (=> b!4620691 (= lt!1776771 (forallContained!3010 (toList!4930 lt!1776760) lambda!190687 (h!57500 (Cons!51468 lt!1776455 lt!1776466))))))

(assert (=> b!4620691 (contains!14471 lt!1776760 (_1!29481 (h!57500 (Cons!51468 lt!1776455 lt!1776466))))))

(declare-fun lt!1776767 () Unit!110904)

(declare-fun Unit!110956 () Unit!110904)

(assert (=> b!4620691 (= lt!1776767 Unit!110956)))

(assert (=> b!4620691 (contains!14471 lt!1776756 (_1!29481 (h!57500 (Cons!51468 lt!1776455 lt!1776466))))))

(declare-fun lt!1776758 () Unit!110904)

(declare-fun Unit!110957 () Unit!110904)

(assert (=> b!4620691 (= lt!1776758 Unit!110957)))

(assert (=> b!4620691 (forall!10788 (Cons!51468 lt!1776455 lt!1776466) lambda!190687)))

(declare-fun lt!1776769 () Unit!110904)

(declare-fun Unit!110958 () Unit!110904)

(assert (=> b!4620691 (= lt!1776769 Unit!110958)))

(assert (=> b!4620691 (forall!10788 (toList!4930 lt!1776760) lambda!190687)))

(declare-fun lt!1776766 () Unit!110904)

(declare-fun Unit!110959 () Unit!110904)

(assert (=> b!4620691 (= lt!1776766 Unit!110959)))

(declare-fun lt!1776763 () Unit!110904)

(declare-fun Unit!110960 () Unit!110904)

(assert (=> b!4620691 (= lt!1776763 Unit!110960)))

(declare-fun lt!1776768 () Unit!110904)

(declare-fun addForallContainsKeyThenBeforeAdding!487 (ListMap!4233 ListMap!4233 K!12855 V!13101) Unit!110904)

(assert (=> b!4620691 (= lt!1776768 (addForallContainsKeyThenBeforeAdding!487 (ListMap!4234 Nil!51468) lt!1776756 (_1!29481 (h!57500 (Cons!51468 lt!1776455 lt!1776466))) (_2!29481 (h!57500 (Cons!51468 lt!1776455 lt!1776466)))))))

(assert (=> b!4620691 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190687)))

(declare-fun lt!1776765 () Unit!110904)

(assert (=> b!4620691 (= lt!1776765 lt!1776768)))

(assert (=> b!4620691 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190687)))

(declare-fun lt!1776764 () Unit!110904)

(declare-fun Unit!110961 () Unit!110904)

(assert (=> b!4620691 (= lt!1776764 Unit!110961)))

(declare-fun res!1936876 () Bool)

(assert (=> b!4620691 (= res!1936876 call!322184)))

(assert (=> b!4620691 (=> (not res!1936876) (not e!2882252))))

(assert (=> b!4620691 e!2882252))

(declare-fun lt!1776770 () Unit!110904)

(declare-fun Unit!110962 () Unit!110904)

(assert (=> b!4620691 (= lt!1776770 Unit!110962)))

(declare-fun bm!322179 () Bool)

(assert (=> bm!322179 (= call!322182 (forall!10788 (ite c!790952 (toList!4930 (ListMap!4234 Nil!51468)) (t!358606 (Cons!51468 lt!1776455 lt!1776466))) (ite c!790952 lambda!190685 lambda!190687)))))

(assert (=> d!1455155 e!2882250))

(declare-fun res!1936878 () Bool)

(assert (=> d!1455155 (=> (not res!1936878) (not e!2882250))))

(assert (=> d!1455155 (= res!1936878 (forall!10788 (Cons!51468 lt!1776455 lt!1776466) lambda!190688))))

(assert (=> d!1455155 (= lt!1776757 e!2882251)))

(assert (=> d!1455155 (= c!790952 ((_ is Nil!51468) (Cons!51468 lt!1776455 lt!1776466)))))

(assert (=> d!1455155 (noDuplicateKeys!1482 (Cons!51468 lt!1776455 lt!1776466))))

(assert (=> d!1455155 (= (addToMapMapFromBucket!943 (Cons!51468 lt!1776455 lt!1776466) (ListMap!4234 Nil!51468)) lt!1776757)))

(assert (= (and d!1455155 c!790952) b!4620690))

(assert (= (and d!1455155 (not c!790952)) b!4620691))

(assert (= (and b!4620691 res!1936876) b!4620687))

(assert (= (or b!4620690 b!4620691) bm!322177))

(assert (= (or b!4620690 b!4620691) bm!322178))

(assert (= (or b!4620690 b!4620691) bm!322179))

(assert (= (and d!1455155 res!1936878) b!4620689))

(assert (= (and b!4620689 res!1936877) b!4620688))

(declare-fun m!5457083 () Bool)

(assert (=> bm!322177 m!5457083))

(declare-fun m!5457085 () Bool)

(assert (=> b!4620691 m!5457085))

(declare-fun m!5457087 () Bool)

(assert (=> b!4620691 m!5457087))

(assert (=> b!4620691 m!5457087))

(declare-fun m!5457089 () Bool)

(assert (=> b!4620691 m!5457089))

(declare-fun m!5457091 () Bool)

(assert (=> b!4620691 m!5457091))

(declare-fun m!5457093 () Bool)

(assert (=> b!4620691 m!5457093))

(declare-fun m!5457095 () Bool)

(assert (=> b!4620691 m!5457095))

(assert (=> b!4620691 m!5457093))

(declare-fun m!5457097 () Bool)

(assert (=> b!4620691 m!5457097))

(declare-fun m!5457099 () Bool)

(assert (=> b!4620691 m!5457099))

(declare-fun m!5457101 () Bool)

(assert (=> b!4620691 m!5457101))

(assert (=> b!4620691 m!5457089))

(declare-fun m!5457103 () Bool)

(assert (=> b!4620691 m!5457103))

(assert (=> b!4620687 m!5457087))

(declare-fun m!5457105 () Bool)

(assert (=> bm!322178 m!5457105))

(declare-fun m!5457107 () Bool)

(assert (=> b!4620688 m!5457107))

(declare-fun m!5457109 () Bool)

(assert (=> b!4620689 m!5457109))

(declare-fun m!5457111 () Bool)

(assert (=> bm!322179 m!5457111))

(declare-fun m!5457113 () Bool)

(assert (=> d!1455155 m!5457113))

(declare-fun m!5457115 () Bool)

(assert (=> d!1455155 m!5457115))

(assert (=> b!4620459 d!1455155))

(declare-fun d!1455213 () Bool)

(assert (=> d!1455213 (= (head!9616 oldBucket!40) (h!57500 oldBucket!40))))

(assert (=> b!4620459 d!1455213))

(declare-fun d!1455215 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8756 (List!51592) (InoxSet tuple2!52374))

(assert (=> d!1455215 (= (eq!797 (addToMapMapFromBucket!943 (Cons!51468 lt!1776452 lt!1776465) (ListMap!4234 Nil!51468)) (+!1848 (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776452)) (= (content!8756 (toList!4930 (addToMapMapFromBucket!943 (Cons!51468 lt!1776452 lt!1776465) (ListMap!4234 Nil!51468)))) (content!8756 (toList!4930 (+!1848 (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776452)))))))

(declare-fun bs!1019827 () Bool)

(assert (= bs!1019827 d!1455215))

(declare-fun m!5457117 () Bool)

(assert (=> bs!1019827 m!5457117))

(declare-fun m!5457119 () Bool)

(assert (=> bs!1019827 m!5457119))

(assert (=> b!4620459 d!1455215))

(declare-fun d!1455217 () Bool)

(assert (=> d!1455217 (= (head!9616 newBucket!224) (h!57500 newBucket!224))))

(assert (=> b!4620459 d!1455217))

(declare-fun d!1455219 () Bool)

(declare-fun e!2882261 () Bool)

(assert (=> d!1455219 e!2882261))

(declare-fun res!1936895 () Bool)

(assert (=> d!1455219 (=> (not res!1936895) (not e!2882261))))

(declare-fun lt!1776806 () ListMap!4233)

(assert (=> d!1455219 (= res!1936895 (contains!14471 lt!1776806 (_1!29481 lt!1776455)))))

(declare-fun lt!1776805 () List!51592)

(assert (=> d!1455219 (= lt!1776806 (ListMap!4234 lt!1776805))))

(declare-fun lt!1776808 () Unit!110904)

(declare-fun lt!1776807 () Unit!110904)

(assert (=> d!1455219 (= lt!1776808 lt!1776807)))

(assert (=> d!1455219 (= (getValueByKey!1414 lt!1776805 (_1!29481 lt!1776455)) (Some!11529 (_2!29481 lt!1776455)))))

(declare-fun lemmaContainsTupThenGetReturnValue!830 (List!51592 K!12855 V!13101) Unit!110904)

(assert (=> d!1455219 (= lt!1776807 (lemmaContainsTupThenGetReturnValue!830 lt!1776805 (_1!29481 lt!1776455) (_2!29481 lt!1776455)))))

(declare-fun insertNoDuplicatedKeys!338 (List!51592 K!12855 V!13101) List!51592)

(assert (=> d!1455219 (= lt!1776805 (insertNoDuplicatedKeys!338 (toList!4930 (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468))) (_1!29481 lt!1776455) (_2!29481 lt!1776455)))))

(assert (=> d!1455219 (= (+!1848 (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776455) lt!1776806)))

(declare-fun b!4620710 () Bool)

(declare-fun res!1936896 () Bool)

(assert (=> b!4620710 (=> (not res!1936896) (not e!2882261))))

(assert (=> b!4620710 (= res!1936896 (= (getValueByKey!1414 (toList!4930 lt!1776806) (_1!29481 lt!1776455)) (Some!11529 (_2!29481 lt!1776455))))))

(declare-fun b!4620711 () Bool)

(declare-fun contains!14475 (List!51592 tuple2!52374) Bool)

(assert (=> b!4620711 (= e!2882261 (contains!14475 (toList!4930 lt!1776806) lt!1776455))))

(assert (= (and d!1455219 res!1936895) b!4620710))

(assert (= (and b!4620710 res!1936896) b!4620711))

(declare-fun m!5457149 () Bool)

(assert (=> d!1455219 m!5457149))

(declare-fun m!5457151 () Bool)

(assert (=> d!1455219 m!5457151))

(declare-fun m!5457153 () Bool)

(assert (=> d!1455219 m!5457153))

(declare-fun m!5457155 () Bool)

(assert (=> d!1455219 m!5457155))

(declare-fun m!5457157 () Bool)

(assert (=> b!4620710 m!5457157))

(declare-fun m!5457159 () Bool)

(assert (=> b!4620711 m!5457159))

(assert (=> b!4620459 d!1455219))

(declare-fun bs!1019833 () Bool)

(declare-fun b!4620715 () Bool)

(assert (= bs!1019833 (and b!4620715 b!4620690)))

(declare-fun lambda!190696 () Int)

(assert (=> bs!1019833 (= lambda!190696 lambda!190685)))

(declare-fun bs!1019834 () Bool)

(assert (= bs!1019834 (and b!4620715 b!4620691)))

(assert (=> bs!1019834 (= lambda!190696 lambda!190686)))

(assert (=> bs!1019834 (= (= (ListMap!4234 Nil!51468) lt!1776756) (= lambda!190696 lambda!190687))))

(declare-fun bs!1019835 () Bool)

(assert (= bs!1019835 (and b!4620715 d!1455155)))

(assert (=> bs!1019835 (= (= (ListMap!4234 Nil!51468) lt!1776757) (= lambda!190696 lambda!190688))))

(assert (=> b!4620715 true))

(declare-fun bs!1019836 () Bool)

(declare-fun b!4620716 () Bool)

(assert (= bs!1019836 (and b!4620716 b!4620691)))

(declare-fun lambda!190697 () Int)

(assert (=> bs!1019836 (= lambda!190697 lambda!190686)))

(assert (=> bs!1019836 (= (= (ListMap!4234 Nil!51468) lt!1776756) (= lambda!190697 lambda!190687))))

(declare-fun bs!1019837 () Bool)

(assert (= bs!1019837 (and b!4620716 b!4620690)))

(assert (=> bs!1019837 (= lambda!190697 lambda!190685)))

(declare-fun bs!1019838 () Bool)

(assert (= bs!1019838 (and b!4620716 d!1455155)))

(assert (=> bs!1019838 (= (= (ListMap!4234 Nil!51468) lt!1776757) (= lambda!190697 lambda!190688))))

(declare-fun bs!1019839 () Bool)

(assert (= bs!1019839 (and b!4620716 b!4620715)))

(assert (=> bs!1019839 (= lambda!190697 lambda!190696)))

(assert (=> b!4620716 true))

(declare-fun lt!1776813 () ListMap!4233)

(declare-fun lambda!190698 () Int)

(assert (=> bs!1019836 (= (= lt!1776813 (ListMap!4234 Nil!51468)) (= lambda!190698 lambda!190686))))

(assert (=> b!4620716 (= (= lt!1776813 (ListMap!4234 Nil!51468)) (= lambda!190698 lambda!190697))))

(assert (=> bs!1019836 (= (= lt!1776813 lt!1776756) (= lambda!190698 lambda!190687))))

(assert (=> bs!1019837 (= (= lt!1776813 (ListMap!4234 Nil!51468)) (= lambda!190698 lambda!190685))))

(assert (=> bs!1019838 (= (= lt!1776813 lt!1776757) (= lambda!190698 lambda!190688))))

(assert (=> bs!1019839 (= (= lt!1776813 (ListMap!4234 Nil!51468)) (= lambda!190698 lambda!190696))))

(assert (=> b!4620716 true))

(declare-fun bs!1019840 () Bool)

(declare-fun d!1455225 () Bool)

(assert (= bs!1019840 (and d!1455225 b!4620691)))

(declare-fun lt!1776814 () ListMap!4233)

(declare-fun lambda!190699 () Int)

(assert (=> bs!1019840 (= (= lt!1776814 (ListMap!4234 Nil!51468)) (= lambda!190699 lambda!190686))))

(declare-fun bs!1019841 () Bool)

(assert (= bs!1019841 (and d!1455225 b!4620716)))

(assert (=> bs!1019841 (= (= lt!1776814 (ListMap!4234 Nil!51468)) (= lambda!190699 lambda!190697))))

(assert (=> bs!1019840 (= (= lt!1776814 lt!1776756) (= lambda!190699 lambda!190687))))

(declare-fun bs!1019844 () Bool)

(assert (= bs!1019844 (and d!1455225 b!4620690)))

(assert (=> bs!1019844 (= (= lt!1776814 (ListMap!4234 Nil!51468)) (= lambda!190699 lambda!190685))))

(declare-fun bs!1019846 () Bool)

(assert (= bs!1019846 (and d!1455225 d!1455155)))

(assert (=> bs!1019846 (= (= lt!1776814 lt!1776757) (= lambda!190699 lambda!190688))))

(assert (=> bs!1019841 (= (= lt!1776814 lt!1776813) (= lambda!190699 lambda!190698))))

(declare-fun bs!1019848 () Bool)

(assert (= bs!1019848 (and d!1455225 b!4620715)))

(assert (=> bs!1019848 (= (= lt!1776814 (ListMap!4234 Nil!51468)) (= lambda!190699 lambda!190696))))

(assert (=> d!1455225 true))

(declare-fun bm!322180 () Bool)

(declare-fun call!322186 () Unit!110904)

(assert (=> bm!322180 (= call!322186 (lemmaContainsAllItsOwnKeys!488 (ListMap!4234 Nil!51468)))))

(declare-fun b!4620712 () Bool)

(declare-fun e!2882264 () Bool)

(assert (=> b!4620712 (= e!2882264 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190698))))

(declare-fun b!4620713 () Bool)

(declare-fun e!2882262 () Bool)

(assert (=> b!4620713 (= e!2882262 (invariantList!1186 (toList!4930 lt!1776814)))))

(declare-fun c!790953 () Bool)

(declare-fun bm!322181 () Bool)

(declare-fun call!322187 () Bool)

(assert (=> bm!322181 (= call!322187 (forall!10788 (ite c!790953 (toList!4930 (ListMap!4234 Nil!51468)) lt!1776466) (ite c!790953 lambda!190696 lambda!190698)))))

(declare-fun b!4620714 () Bool)

(declare-fun res!1936898 () Bool)

(assert (=> b!4620714 (=> (not res!1936898) (not e!2882262))))

(assert (=> b!4620714 (= res!1936898 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190699))))

(declare-fun e!2882263 () ListMap!4233)

(assert (=> b!4620715 (= e!2882263 (ListMap!4234 Nil!51468))))

(declare-fun lt!1776819 () Unit!110904)

(assert (=> b!4620715 (= lt!1776819 call!322186)))

(assert (=> b!4620715 call!322187))

(declare-fun lt!1776810 () Unit!110904)

(assert (=> b!4620715 (= lt!1776810 lt!1776819)))

(declare-fun call!322185 () Bool)

(assert (=> b!4620715 call!322185))

(declare-fun lt!1776811 () Unit!110904)

(declare-fun Unit!110965 () Unit!110904)

(assert (=> b!4620715 (= lt!1776811 Unit!110965)))

(assert (=> b!4620716 (= e!2882263 lt!1776813)))

(declare-fun lt!1776817 () ListMap!4233)

(assert (=> b!4620716 (= lt!1776817 (+!1848 (ListMap!4234 Nil!51468) (h!57500 lt!1776466)))))

(assert (=> b!4620716 (= lt!1776813 (addToMapMapFromBucket!943 (t!358606 lt!1776466) (+!1848 (ListMap!4234 Nil!51468) (h!57500 lt!1776466))))))

(declare-fun lt!1776818 () Unit!110904)

(assert (=> b!4620716 (= lt!1776818 call!322186)))

(assert (=> b!4620716 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190697)))

(declare-fun lt!1776816 () Unit!110904)

(assert (=> b!4620716 (= lt!1776816 lt!1776818)))

(assert (=> b!4620716 (forall!10788 (toList!4930 lt!1776817) lambda!190698)))

(declare-fun lt!1776809 () Unit!110904)

(declare-fun Unit!110966 () Unit!110904)

(assert (=> b!4620716 (= lt!1776809 Unit!110966)))

(assert (=> b!4620716 call!322185))

(declare-fun lt!1776812 () Unit!110904)

(declare-fun Unit!110967 () Unit!110904)

(assert (=> b!4620716 (= lt!1776812 Unit!110967)))

(declare-fun lt!1776829 () Unit!110904)

(declare-fun Unit!110968 () Unit!110904)

(assert (=> b!4620716 (= lt!1776829 Unit!110968)))

(declare-fun lt!1776828 () Unit!110904)

(assert (=> b!4620716 (= lt!1776828 (forallContained!3010 (toList!4930 lt!1776817) lambda!190698 (h!57500 lt!1776466)))))

(assert (=> b!4620716 (contains!14471 lt!1776817 (_1!29481 (h!57500 lt!1776466)))))

(declare-fun lt!1776824 () Unit!110904)

(declare-fun Unit!110969 () Unit!110904)

(assert (=> b!4620716 (= lt!1776824 Unit!110969)))

(assert (=> b!4620716 (contains!14471 lt!1776813 (_1!29481 (h!57500 lt!1776466)))))

(declare-fun lt!1776815 () Unit!110904)

(declare-fun Unit!110970 () Unit!110904)

(assert (=> b!4620716 (= lt!1776815 Unit!110970)))

(assert (=> b!4620716 (forall!10788 lt!1776466 lambda!190698)))

(declare-fun lt!1776826 () Unit!110904)

(declare-fun Unit!110971 () Unit!110904)

(assert (=> b!4620716 (= lt!1776826 Unit!110971)))

(assert (=> b!4620716 (forall!10788 (toList!4930 lt!1776817) lambda!190698)))

(declare-fun lt!1776823 () Unit!110904)

(declare-fun Unit!110972 () Unit!110904)

(assert (=> b!4620716 (= lt!1776823 Unit!110972)))

(declare-fun lt!1776820 () Unit!110904)

(declare-fun Unit!110973 () Unit!110904)

(assert (=> b!4620716 (= lt!1776820 Unit!110973)))

(declare-fun lt!1776825 () Unit!110904)

(assert (=> b!4620716 (= lt!1776825 (addForallContainsKeyThenBeforeAdding!487 (ListMap!4234 Nil!51468) lt!1776813 (_1!29481 (h!57500 lt!1776466)) (_2!29481 (h!57500 lt!1776466))))))

(assert (=> b!4620716 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190698)))

(declare-fun lt!1776822 () Unit!110904)

(assert (=> b!4620716 (= lt!1776822 lt!1776825)))

(assert (=> b!4620716 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190698)))

(declare-fun lt!1776821 () Unit!110904)

(declare-fun Unit!110974 () Unit!110904)

(assert (=> b!4620716 (= lt!1776821 Unit!110974)))

(declare-fun res!1936897 () Bool)

(assert (=> b!4620716 (= res!1936897 call!322187)))

(assert (=> b!4620716 (=> (not res!1936897) (not e!2882264))))

(assert (=> b!4620716 e!2882264))

(declare-fun lt!1776827 () Unit!110904)

(declare-fun Unit!110975 () Unit!110904)

(assert (=> b!4620716 (= lt!1776827 Unit!110975)))

(declare-fun bm!322182 () Bool)

(assert (=> bm!322182 (= call!322185 (forall!10788 (ite c!790953 (toList!4930 (ListMap!4234 Nil!51468)) (t!358606 lt!1776466)) (ite c!790953 lambda!190696 lambda!190698)))))

(assert (=> d!1455225 e!2882262))

(declare-fun res!1936899 () Bool)

(assert (=> d!1455225 (=> (not res!1936899) (not e!2882262))))

(assert (=> d!1455225 (= res!1936899 (forall!10788 lt!1776466 lambda!190699))))

(assert (=> d!1455225 (= lt!1776814 e!2882263)))

(assert (=> d!1455225 (= c!790953 ((_ is Nil!51468) lt!1776466))))

(assert (=> d!1455225 (noDuplicateKeys!1482 lt!1776466)))

(assert (=> d!1455225 (= (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776814)))

(assert (= (and d!1455225 c!790953) b!4620715))

(assert (= (and d!1455225 (not c!790953)) b!4620716))

(assert (= (and b!4620716 res!1936897) b!4620712))

(assert (= (or b!4620715 b!4620716) bm!322180))

(assert (= (or b!4620715 b!4620716) bm!322181))

(assert (= (or b!4620715 b!4620716) bm!322182))

(assert (= (and d!1455225 res!1936899) b!4620714))

(assert (= (and b!4620714 res!1936898) b!4620713))

(assert (=> bm!322180 m!5457083))

(declare-fun m!5457193 () Bool)

(assert (=> b!4620716 m!5457193))

(declare-fun m!5457195 () Bool)

(assert (=> b!4620716 m!5457195))

(assert (=> b!4620716 m!5457195))

(declare-fun m!5457197 () Bool)

(assert (=> b!4620716 m!5457197))

(declare-fun m!5457199 () Bool)

(assert (=> b!4620716 m!5457199))

(declare-fun m!5457201 () Bool)

(assert (=> b!4620716 m!5457201))

(declare-fun m!5457203 () Bool)

(assert (=> b!4620716 m!5457203))

(assert (=> b!4620716 m!5457201))

(declare-fun m!5457205 () Bool)

(assert (=> b!4620716 m!5457205))

(declare-fun m!5457207 () Bool)

(assert (=> b!4620716 m!5457207))

(declare-fun m!5457209 () Bool)

(assert (=> b!4620716 m!5457209))

(assert (=> b!4620716 m!5457197))

(declare-fun m!5457211 () Bool)

(assert (=> b!4620716 m!5457211))

(assert (=> b!4620712 m!5457195))

(declare-fun m!5457213 () Bool)

(assert (=> bm!322181 m!5457213))

(declare-fun m!5457215 () Bool)

(assert (=> b!4620713 m!5457215))

(declare-fun m!5457217 () Bool)

(assert (=> b!4620714 m!5457217))

(declare-fun m!5457219 () Bool)

(assert (=> bm!322182 m!5457219))

(declare-fun m!5457221 () Bool)

(assert (=> d!1455225 m!5457221))

(declare-fun m!5457223 () Bool)

(assert (=> d!1455225 m!5457223))

(assert (=> b!4620459 d!1455225))

(declare-fun d!1455233 () Bool)

(assert (=> d!1455233 (eq!797 (addToMapMapFromBucket!943 (Cons!51468 lt!1776452 lt!1776465) (ListMap!4234 Nil!51468)) (+!1848 (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776452))))

(declare-fun lt!1776866 () Unit!110904)

(declare-fun choose!31172 (tuple2!52374 List!51592 ListMap!4233) Unit!110904)

(assert (=> d!1455233 (= lt!1776866 (choose!31172 lt!1776452 lt!1776465 (ListMap!4234 Nil!51468)))))

(assert (=> d!1455233 (noDuplicateKeys!1482 lt!1776465)))

(assert (=> d!1455233 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!48 lt!1776452 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776866)))

(declare-fun bs!1019901 () Bool)

(assert (= bs!1019901 d!1455233))

(assert (=> bs!1019901 m!5456733))

(assert (=> bs!1019901 m!5456735))

(assert (=> bs!1019901 m!5456737))

(assert (=> bs!1019901 m!5456741))

(declare-fun m!5457265 () Bool)

(assert (=> bs!1019901 m!5457265))

(declare-fun m!5457267 () Bool)

(assert (=> bs!1019901 m!5457267))

(assert (=> bs!1019901 m!5456741))

(assert (=> bs!1019901 m!5456735))

(assert (=> bs!1019901 m!5456733))

(assert (=> b!4620459 d!1455233))

(declare-fun d!1455237 () Bool)

(declare-fun res!1936913 () Bool)

(declare-fun e!2882287 () Bool)

(assert (=> d!1455237 (=> res!1936913 e!2882287)))

(assert (=> d!1455237 (= res!1936913 ((_ is Nil!51469) lt!1776471))))

(assert (=> d!1455237 (= (forall!10786 lt!1776471 lambda!190596) e!2882287)))

(declare-fun b!4620748 () Bool)

(declare-fun e!2882288 () Bool)

(assert (=> b!4620748 (= e!2882287 e!2882288)))

(declare-fun res!1936914 () Bool)

(assert (=> b!4620748 (=> (not res!1936914) (not e!2882288))))

(declare-fun dynLambda!21480 (Int tuple2!52376) Bool)

(assert (=> b!4620748 (= res!1936914 (dynLambda!21480 lambda!190596 (h!57501 lt!1776471)))))

(declare-fun b!4620749 () Bool)

(assert (=> b!4620749 (= e!2882288 (forall!10786 (t!358607 lt!1776471) lambda!190596))))

(assert (= (and d!1455237 (not res!1936913)) b!4620748))

(assert (= (and b!4620748 res!1936914) b!4620749))

(declare-fun b_lambda!170621 () Bool)

(assert (=> (not b_lambda!170621) (not b!4620748)))

(declare-fun m!5457273 () Bool)

(assert (=> b!4620748 m!5457273))

(declare-fun m!5457275 () Bool)

(assert (=> b!4620749 m!5457275))

(assert (=> b!4620459 d!1455237))

(declare-fun bs!1019904 () Bool)

(declare-fun b!4620753 () Bool)

(assert (= bs!1019904 (and b!4620753 b!4620691)))

(declare-fun lambda!190706 () Int)

(assert (=> bs!1019904 (= lambda!190706 lambda!190686)))

(declare-fun bs!1019905 () Bool)

(assert (= bs!1019905 (and b!4620753 b!4620716)))

(assert (=> bs!1019905 (= lambda!190706 lambda!190697)))

(assert (=> bs!1019904 (= (= (ListMap!4234 Nil!51468) lt!1776756) (= lambda!190706 lambda!190687))))

(declare-fun bs!1019906 () Bool)

(assert (= bs!1019906 (and b!4620753 d!1455225)))

(assert (=> bs!1019906 (= (= (ListMap!4234 Nil!51468) lt!1776814) (= lambda!190706 lambda!190699))))

(declare-fun bs!1019907 () Bool)

(assert (= bs!1019907 (and b!4620753 b!4620690)))

(assert (=> bs!1019907 (= lambda!190706 lambda!190685)))

(declare-fun bs!1019908 () Bool)

(assert (= bs!1019908 (and b!4620753 d!1455155)))

(assert (=> bs!1019908 (= (= (ListMap!4234 Nil!51468) lt!1776757) (= lambda!190706 lambda!190688))))

(assert (=> bs!1019905 (= (= (ListMap!4234 Nil!51468) lt!1776813) (= lambda!190706 lambda!190698))))

(declare-fun bs!1019909 () Bool)

(assert (= bs!1019909 (and b!4620753 b!4620715)))

(assert (=> bs!1019909 (= lambda!190706 lambda!190696)))

(assert (=> b!4620753 true))

(declare-fun bs!1019910 () Bool)

(declare-fun b!4620754 () Bool)

(assert (= bs!1019910 (and b!4620754 b!4620691)))

(declare-fun lambda!190707 () Int)

(assert (=> bs!1019910 (= lambda!190707 lambda!190686)))

(declare-fun bs!1019911 () Bool)

(assert (= bs!1019911 (and b!4620754 b!4620716)))

(assert (=> bs!1019911 (= lambda!190707 lambda!190697)))

(assert (=> bs!1019910 (= (= (ListMap!4234 Nil!51468) lt!1776756) (= lambda!190707 lambda!190687))))

(declare-fun bs!1019912 () Bool)

(assert (= bs!1019912 (and b!4620754 d!1455225)))

(assert (=> bs!1019912 (= (= (ListMap!4234 Nil!51468) lt!1776814) (= lambda!190707 lambda!190699))))

(declare-fun bs!1019913 () Bool)

(assert (= bs!1019913 (and b!4620754 b!4620690)))

(assert (=> bs!1019913 (= lambda!190707 lambda!190685)))

(declare-fun bs!1019914 () Bool)

(assert (= bs!1019914 (and b!4620754 d!1455155)))

(assert (=> bs!1019914 (= (= (ListMap!4234 Nil!51468) lt!1776757) (= lambda!190707 lambda!190688))))

(assert (=> bs!1019911 (= (= (ListMap!4234 Nil!51468) lt!1776813) (= lambda!190707 lambda!190698))))

(declare-fun bs!1019915 () Bool)

(assert (= bs!1019915 (and b!4620754 b!4620715)))

(assert (=> bs!1019915 (= lambda!190707 lambda!190696)))

(declare-fun bs!1019916 () Bool)

(assert (= bs!1019916 (and b!4620754 b!4620753)))

(assert (=> bs!1019916 (= lambda!190707 lambda!190706)))

(assert (=> b!4620754 true))

(declare-fun lt!1776871 () ListMap!4233)

(declare-fun lambda!190708 () Int)

(assert (=> bs!1019910 (= (= lt!1776871 (ListMap!4234 Nil!51468)) (= lambda!190708 lambda!190686))))

(assert (=> bs!1019911 (= (= lt!1776871 (ListMap!4234 Nil!51468)) (= lambda!190708 lambda!190697))))

(assert (=> bs!1019910 (= (= lt!1776871 lt!1776756) (= lambda!190708 lambda!190687))))

(assert (=> bs!1019912 (= (= lt!1776871 lt!1776814) (= lambda!190708 lambda!190699))))

(assert (=> bs!1019913 (= (= lt!1776871 (ListMap!4234 Nil!51468)) (= lambda!190708 lambda!190685))))

(assert (=> bs!1019914 (= (= lt!1776871 lt!1776757) (= lambda!190708 lambda!190688))))

(assert (=> bs!1019911 (= (= lt!1776871 lt!1776813) (= lambda!190708 lambda!190698))))

(assert (=> b!4620754 (= (= lt!1776871 (ListMap!4234 Nil!51468)) (= lambda!190708 lambda!190707))))

(assert (=> bs!1019915 (= (= lt!1776871 (ListMap!4234 Nil!51468)) (= lambda!190708 lambda!190696))))

(assert (=> bs!1019916 (= (= lt!1776871 (ListMap!4234 Nil!51468)) (= lambda!190708 lambda!190706))))

(assert (=> b!4620754 true))

(declare-fun bs!1019917 () Bool)

(declare-fun d!1455243 () Bool)

(assert (= bs!1019917 (and d!1455243 b!4620754)))

(declare-fun lt!1776872 () ListMap!4233)

(declare-fun lambda!190709 () Int)

(assert (=> bs!1019917 (= (= lt!1776872 lt!1776871) (= lambda!190709 lambda!190708))))

(declare-fun bs!1019918 () Bool)

(assert (= bs!1019918 (and d!1455243 b!4620691)))

(assert (=> bs!1019918 (= (= lt!1776872 (ListMap!4234 Nil!51468)) (= lambda!190709 lambda!190686))))

(declare-fun bs!1019919 () Bool)

(assert (= bs!1019919 (and d!1455243 b!4620716)))

(assert (=> bs!1019919 (= (= lt!1776872 (ListMap!4234 Nil!51468)) (= lambda!190709 lambda!190697))))

(assert (=> bs!1019918 (= (= lt!1776872 lt!1776756) (= lambda!190709 lambda!190687))))

(declare-fun bs!1019920 () Bool)

(assert (= bs!1019920 (and d!1455243 d!1455225)))

(assert (=> bs!1019920 (= (= lt!1776872 lt!1776814) (= lambda!190709 lambda!190699))))

(declare-fun bs!1019921 () Bool)

(assert (= bs!1019921 (and d!1455243 b!4620690)))

(assert (=> bs!1019921 (= (= lt!1776872 (ListMap!4234 Nil!51468)) (= lambda!190709 lambda!190685))))

(declare-fun bs!1019922 () Bool)

(assert (= bs!1019922 (and d!1455243 d!1455155)))

(assert (=> bs!1019922 (= (= lt!1776872 lt!1776757) (= lambda!190709 lambda!190688))))

(assert (=> bs!1019919 (= (= lt!1776872 lt!1776813) (= lambda!190709 lambda!190698))))

(assert (=> bs!1019917 (= (= lt!1776872 (ListMap!4234 Nil!51468)) (= lambda!190709 lambda!190707))))

(declare-fun bs!1019923 () Bool)

(assert (= bs!1019923 (and d!1455243 b!4620715)))

(assert (=> bs!1019923 (= (= lt!1776872 (ListMap!4234 Nil!51468)) (= lambda!190709 lambda!190696))))

(declare-fun bs!1019924 () Bool)

(assert (= bs!1019924 (and d!1455243 b!4620753)))

(assert (=> bs!1019924 (= (= lt!1776872 (ListMap!4234 Nil!51468)) (= lambda!190709 lambda!190706))))

(assert (=> d!1455243 true))

(declare-fun bm!322187 () Bool)

(declare-fun call!322193 () Unit!110904)

(assert (=> bm!322187 (= call!322193 (lemmaContainsAllItsOwnKeys!488 (ListMap!4234 Nil!51468)))))

(declare-fun b!4620750 () Bool)

(declare-fun e!2882291 () Bool)

(assert (=> b!4620750 (= e!2882291 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190708))))

(declare-fun b!4620751 () Bool)

(declare-fun e!2882289 () Bool)

(assert (=> b!4620751 (= e!2882289 (invariantList!1186 (toList!4930 lt!1776872)))))

(declare-fun call!322194 () Bool)

(declare-fun bm!322188 () Bool)

(declare-fun c!790960 () Bool)

(assert (=> bm!322188 (= call!322194 (forall!10788 (ite c!790960 (toList!4930 (ListMap!4234 Nil!51468)) (Cons!51468 lt!1776452 lt!1776465)) (ite c!790960 lambda!190706 lambda!190708)))))

(declare-fun b!4620752 () Bool)

(declare-fun res!1936916 () Bool)

(assert (=> b!4620752 (=> (not res!1936916) (not e!2882289))))

(assert (=> b!4620752 (= res!1936916 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190709))))

(declare-fun e!2882290 () ListMap!4233)

(assert (=> b!4620753 (= e!2882290 (ListMap!4234 Nil!51468))))

(declare-fun lt!1776877 () Unit!110904)

(assert (=> b!4620753 (= lt!1776877 call!322193)))

(assert (=> b!4620753 call!322194))

(declare-fun lt!1776868 () Unit!110904)

(assert (=> b!4620753 (= lt!1776868 lt!1776877)))

(declare-fun call!322192 () Bool)

(assert (=> b!4620753 call!322192))

(declare-fun lt!1776869 () Unit!110904)

(declare-fun Unit!110976 () Unit!110904)

(assert (=> b!4620753 (= lt!1776869 Unit!110976)))

(assert (=> b!4620754 (= e!2882290 lt!1776871)))

(declare-fun lt!1776875 () ListMap!4233)

(assert (=> b!4620754 (= lt!1776875 (+!1848 (ListMap!4234 Nil!51468) (h!57500 (Cons!51468 lt!1776452 lt!1776465))))))

(assert (=> b!4620754 (= lt!1776871 (addToMapMapFromBucket!943 (t!358606 (Cons!51468 lt!1776452 lt!1776465)) (+!1848 (ListMap!4234 Nil!51468) (h!57500 (Cons!51468 lt!1776452 lt!1776465)))))))

(declare-fun lt!1776876 () Unit!110904)

(assert (=> b!4620754 (= lt!1776876 call!322193)))

(assert (=> b!4620754 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190707)))

(declare-fun lt!1776874 () Unit!110904)

(assert (=> b!4620754 (= lt!1776874 lt!1776876)))

(assert (=> b!4620754 (forall!10788 (toList!4930 lt!1776875) lambda!190708)))

(declare-fun lt!1776867 () Unit!110904)

(declare-fun Unit!110977 () Unit!110904)

(assert (=> b!4620754 (= lt!1776867 Unit!110977)))

(assert (=> b!4620754 call!322192))

(declare-fun lt!1776870 () Unit!110904)

(declare-fun Unit!110978 () Unit!110904)

(assert (=> b!4620754 (= lt!1776870 Unit!110978)))

(declare-fun lt!1776887 () Unit!110904)

(declare-fun Unit!110979 () Unit!110904)

(assert (=> b!4620754 (= lt!1776887 Unit!110979)))

(declare-fun lt!1776886 () Unit!110904)

(assert (=> b!4620754 (= lt!1776886 (forallContained!3010 (toList!4930 lt!1776875) lambda!190708 (h!57500 (Cons!51468 lt!1776452 lt!1776465))))))

(assert (=> b!4620754 (contains!14471 lt!1776875 (_1!29481 (h!57500 (Cons!51468 lt!1776452 lt!1776465))))))

(declare-fun lt!1776882 () Unit!110904)

(declare-fun Unit!110980 () Unit!110904)

(assert (=> b!4620754 (= lt!1776882 Unit!110980)))

(assert (=> b!4620754 (contains!14471 lt!1776871 (_1!29481 (h!57500 (Cons!51468 lt!1776452 lt!1776465))))))

(declare-fun lt!1776873 () Unit!110904)

(declare-fun Unit!110981 () Unit!110904)

(assert (=> b!4620754 (= lt!1776873 Unit!110981)))

(assert (=> b!4620754 (forall!10788 (Cons!51468 lt!1776452 lt!1776465) lambda!190708)))

(declare-fun lt!1776884 () Unit!110904)

(declare-fun Unit!110982 () Unit!110904)

(assert (=> b!4620754 (= lt!1776884 Unit!110982)))

(assert (=> b!4620754 (forall!10788 (toList!4930 lt!1776875) lambda!190708)))

(declare-fun lt!1776881 () Unit!110904)

(declare-fun Unit!110983 () Unit!110904)

(assert (=> b!4620754 (= lt!1776881 Unit!110983)))

(declare-fun lt!1776878 () Unit!110904)

(declare-fun Unit!110984 () Unit!110904)

(assert (=> b!4620754 (= lt!1776878 Unit!110984)))

(declare-fun lt!1776883 () Unit!110904)

(assert (=> b!4620754 (= lt!1776883 (addForallContainsKeyThenBeforeAdding!487 (ListMap!4234 Nil!51468) lt!1776871 (_1!29481 (h!57500 (Cons!51468 lt!1776452 lt!1776465))) (_2!29481 (h!57500 (Cons!51468 lt!1776452 lt!1776465)))))))

(assert (=> b!4620754 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190708)))

(declare-fun lt!1776880 () Unit!110904)

(assert (=> b!4620754 (= lt!1776880 lt!1776883)))

(assert (=> b!4620754 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190708)))

(declare-fun lt!1776879 () Unit!110904)

(declare-fun Unit!110985 () Unit!110904)

(assert (=> b!4620754 (= lt!1776879 Unit!110985)))

(declare-fun res!1936915 () Bool)

(assert (=> b!4620754 (= res!1936915 call!322194)))

(assert (=> b!4620754 (=> (not res!1936915) (not e!2882291))))

(assert (=> b!4620754 e!2882291))

(declare-fun lt!1776885 () Unit!110904)

(declare-fun Unit!110986 () Unit!110904)

(assert (=> b!4620754 (= lt!1776885 Unit!110986)))

(declare-fun bm!322189 () Bool)

(assert (=> bm!322189 (= call!322192 (forall!10788 (ite c!790960 (toList!4930 (ListMap!4234 Nil!51468)) (t!358606 (Cons!51468 lt!1776452 lt!1776465))) (ite c!790960 lambda!190706 lambda!190708)))))

(assert (=> d!1455243 e!2882289))

(declare-fun res!1936917 () Bool)

(assert (=> d!1455243 (=> (not res!1936917) (not e!2882289))))

(assert (=> d!1455243 (= res!1936917 (forall!10788 (Cons!51468 lt!1776452 lt!1776465) lambda!190709))))

(assert (=> d!1455243 (= lt!1776872 e!2882290)))

(assert (=> d!1455243 (= c!790960 ((_ is Nil!51468) (Cons!51468 lt!1776452 lt!1776465)))))

(assert (=> d!1455243 (noDuplicateKeys!1482 (Cons!51468 lt!1776452 lt!1776465))))

(assert (=> d!1455243 (= (addToMapMapFromBucket!943 (Cons!51468 lt!1776452 lt!1776465) (ListMap!4234 Nil!51468)) lt!1776872)))

(assert (= (and d!1455243 c!790960) b!4620753))

(assert (= (and d!1455243 (not c!790960)) b!4620754))

(assert (= (and b!4620754 res!1936915) b!4620750))

(assert (= (or b!4620753 b!4620754) bm!322187))

(assert (= (or b!4620753 b!4620754) bm!322188))

(assert (= (or b!4620753 b!4620754) bm!322189))

(assert (= (and d!1455243 res!1936917) b!4620752))

(assert (= (and b!4620752 res!1936916) b!4620751))

(assert (=> bm!322187 m!5457083))

(declare-fun m!5457277 () Bool)

(assert (=> b!4620754 m!5457277))

(declare-fun m!5457279 () Bool)

(assert (=> b!4620754 m!5457279))

(assert (=> b!4620754 m!5457279))

(declare-fun m!5457281 () Bool)

(assert (=> b!4620754 m!5457281))

(declare-fun m!5457283 () Bool)

(assert (=> b!4620754 m!5457283))

(declare-fun m!5457285 () Bool)

(assert (=> b!4620754 m!5457285))

(declare-fun m!5457287 () Bool)

(assert (=> b!4620754 m!5457287))

(assert (=> b!4620754 m!5457285))

(declare-fun m!5457289 () Bool)

(assert (=> b!4620754 m!5457289))

(declare-fun m!5457291 () Bool)

(assert (=> b!4620754 m!5457291))

(declare-fun m!5457293 () Bool)

(assert (=> b!4620754 m!5457293))

(assert (=> b!4620754 m!5457281))

(declare-fun m!5457295 () Bool)

(assert (=> b!4620754 m!5457295))

(assert (=> b!4620750 m!5457279))

(declare-fun m!5457297 () Bool)

(assert (=> bm!322188 m!5457297))

(declare-fun m!5457299 () Bool)

(assert (=> b!4620751 m!5457299))

(declare-fun m!5457301 () Bool)

(assert (=> b!4620752 m!5457301))

(declare-fun m!5457303 () Bool)

(assert (=> bm!322189 m!5457303))

(declare-fun m!5457305 () Bool)

(assert (=> d!1455243 m!5457305))

(declare-fun m!5457307 () Bool)

(assert (=> d!1455243 m!5457307))

(assert (=> b!4620459 d!1455243))

(declare-fun bs!1019925 () Bool)

(declare-fun b!4620758 () Bool)

(assert (= bs!1019925 (and b!4620758 b!4620754)))

(declare-fun lambda!190710 () Int)

(assert (=> bs!1019925 (= (= (ListMap!4234 Nil!51468) lt!1776871) (= lambda!190710 lambda!190708))))

(declare-fun bs!1019926 () Bool)

(assert (= bs!1019926 (and b!4620758 b!4620691)))

(assert (=> bs!1019926 (= lambda!190710 lambda!190686)))

(declare-fun bs!1019927 () Bool)

(assert (= bs!1019927 (and b!4620758 b!4620716)))

(assert (=> bs!1019927 (= lambda!190710 lambda!190697)))

(assert (=> bs!1019926 (= (= (ListMap!4234 Nil!51468) lt!1776756) (= lambda!190710 lambda!190687))))

(declare-fun bs!1019928 () Bool)

(assert (= bs!1019928 (and b!4620758 d!1455243)))

(assert (=> bs!1019928 (= (= (ListMap!4234 Nil!51468) lt!1776872) (= lambda!190710 lambda!190709))))

(declare-fun bs!1019929 () Bool)

(assert (= bs!1019929 (and b!4620758 d!1455225)))

(assert (=> bs!1019929 (= (= (ListMap!4234 Nil!51468) lt!1776814) (= lambda!190710 lambda!190699))))

(declare-fun bs!1019930 () Bool)

(assert (= bs!1019930 (and b!4620758 b!4620690)))

(assert (=> bs!1019930 (= lambda!190710 lambda!190685)))

(declare-fun bs!1019931 () Bool)

(assert (= bs!1019931 (and b!4620758 d!1455155)))

(assert (=> bs!1019931 (= (= (ListMap!4234 Nil!51468) lt!1776757) (= lambda!190710 lambda!190688))))

(assert (=> bs!1019927 (= (= (ListMap!4234 Nil!51468) lt!1776813) (= lambda!190710 lambda!190698))))

(assert (=> bs!1019925 (= lambda!190710 lambda!190707)))

(declare-fun bs!1019932 () Bool)

(assert (= bs!1019932 (and b!4620758 b!4620715)))

(assert (=> bs!1019932 (= lambda!190710 lambda!190696)))

(declare-fun bs!1019933 () Bool)

(assert (= bs!1019933 (and b!4620758 b!4620753)))

(assert (=> bs!1019933 (= lambda!190710 lambda!190706)))

(assert (=> b!4620758 true))

(declare-fun bs!1019934 () Bool)

(declare-fun b!4620759 () Bool)

(assert (= bs!1019934 (and b!4620759 b!4620754)))

(declare-fun lambda!190711 () Int)

(assert (=> bs!1019934 (= (= (ListMap!4234 Nil!51468) lt!1776871) (= lambda!190711 lambda!190708))))

(declare-fun bs!1019935 () Bool)

(assert (= bs!1019935 (and b!4620759 b!4620758)))

(assert (=> bs!1019935 (= lambda!190711 lambda!190710)))

(declare-fun bs!1019936 () Bool)

(assert (= bs!1019936 (and b!4620759 b!4620691)))

(assert (=> bs!1019936 (= lambda!190711 lambda!190686)))

(declare-fun bs!1019937 () Bool)

(assert (= bs!1019937 (and b!4620759 b!4620716)))

(assert (=> bs!1019937 (= lambda!190711 lambda!190697)))

(assert (=> bs!1019936 (= (= (ListMap!4234 Nil!51468) lt!1776756) (= lambda!190711 lambda!190687))))

(declare-fun bs!1019938 () Bool)

(assert (= bs!1019938 (and b!4620759 d!1455243)))

(assert (=> bs!1019938 (= (= (ListMap!4234 Nil!51468) lt!1776872) (= lambda!190711 lambda!190709))))

(declare-fun bs!1019939 () Bool)

(assert (= bs!1019939 (and b!4620759 d!1455225)))

(assert (=> bs!1019939 (= (= (ListMap!4234 Nil!51468) lt!1776814) (= lambda!190711 lambda!190699))))

(declare-fun bs!1019940 () Bool)

(assert (= bs!1019940 (and b!4620759 b!4620690)))

(assert (=> bs!1019940 (= lambda!190711 lambda!190685)))

(declare-fun bs!1019941 () Bool)

(assert (= bs!1019941 (and b!4620759 d!1455155)))

(assert (=> bs!1019941 (= (= (ListMap!4234 Nil!51468) lt!1776757) (= lambda!190711 lambda!190688))))

(assert (=> bs!1019937 (= (= (ListMap!4234 Nil!51468) lt!1776813) (= lambda!190711 lambda!190698))))

(assert (=> bs!1019934 (= lambda!190711 lambda!190707)))

(declare-fun bs!1019942 () Bool)

(assert (= bs!1019942 (and b!4620759 b!4620715)))

(assert (=> bs!1019942 (= lambda!190711 lambda!190696)))

(declare-fun bs!1019943 () Bool)

(assert (= bs!1019943 (and b!4620759 b!4620753)))

(assert (=> bs!1019943 (= lambda!190711 lambda!190706)))

(assert (=> b!4620759 true))

(declare-fun lambda!190712 () Int)

(declare-fun lt!1776892 () ListMap!4233)

(assert (=> bs!1019934 (= (= lt!1776892 lt!1776871) (= lambda!190712 lambda!190708))))

(assert (=> bs!1019935 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190710))))

(assert (=> b!4620759 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190711))))

(assert (=> bs!1019936 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190686))))

(assert (=> bs!1019937 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190697))))

(assert (=> bs!1019936 (= (= lt!1776892 lt!1776756) (= lambda!190712 lambda!190687))))

(assert (=> bs!1019938 (= (= lt!1776892 lt!1776872) (= lambda!190712 lambda!190709))))

(assert (=> bs!1019939 (= (= lt!1776892 lt!1776814) (= lambda!190712 lambda!190699))))

(assert (=> bs!1019940 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190685))))

(assert (=> bs!1019941 (= (= lt!1776892 lt!1776757) (= lambda!190712 lambda!190688))))

(assert (=> bs!1019937 (= (= lt!1776892 lt!1776813) (= lambda!190712 lambda!190698))))

(assert (=> bs!1019934 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190707))))

(assert (=> bs!1019942 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190696))))

(assert (=> bs!1019943 (= (= lt!1776892 (ListMap!4234 Nil!51468)) (= lambda!190712 lambda!190706))))

(assert (=> b!4620759 true))

(declare-fun bs!1019944 () Bool)

(declare-fun d!1455245 () Bool)

(assert (= bs!1019944 (and d!1455245 b!4620754)))

(declare-fun lt!1776893 () ListMap!4233)

(declare-fun lambda!190713 () Int)

(assert (=> bs!1019944 (= (= lt!1776893 lt!1776871) (= lambda!190713 lambda!190708))))

(declare-fun bs!1019945 () Bool)

(assert (= bs!1019945 (and d!1455245 b!4620758)))

(assert (=> bs!1019945 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190710))))

(declare-fun bs!1019946 () Bool)

(assert (= bs!1019946 (and d!1455245 b!4620759)))

(assert (=> bs!1019946 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190711))))

(declare-fun bs!1019947 () Bool)

(assert (= bs!1019947 (and d!1455245 b!4620691)))

(assert (=> bs!1019947 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190686))))

(declare-fun bs!1019948 () Bool)

(assert (= bs!1019948 (and d!1455245 b!4620716)))

(assert (=> bs!1019948 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190697))))

(assert (=> bs!1019946 (= (= lt!1776893 lt!1776892) (= lambda!190713 lambda!190712))))

(assert (=> bs!1019947 (= (= lt!1776893 lt!1776756) (= lambda!190713 lambda!190687))))

(declare-fun bs!1019949 () Bool)

(assert (= bs!1019949 (and d!1455245 d!1455243)))

(assert (=> bs!1019949 (= (= lt!1776893 lt!1776872) (= lambda!190713 lambda!190709))))

(declare-fun bs!1019950 () Bool)

(assert (= bs!1019950 (and d!1455245 d!1455225)))

(assert (=> bs!1019950 (= (= lt!1776893 lt!1776814) (= lambda!190713 lambda!190699))))

(declare-fun bs!1019951 () Bool)

(assert (= bs!1019951 (and d!1455245 b!4620690)))

(assert (=> bs!1019951 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190685))))

(declare-fun bs!1019952 () Bool)

(assert (= bs!1019952 (and d!1455245 d!1455155)))

(assert (=> bs!1019952 (= (= lt!1776893 lt!1776757) (= lambda!190713 lambda!190688))))

(assert (=> bs!1019948 (= (= lt!1776893 lt!1776813) (= lambda!190713 lambda!190698))))

(assert (=> bs!1019944 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190707))))

(declare-fun bs!1019953 () Bool)

(assert (= bs!1019953 (and d!1455245 b!4620715)))

(assert (=> bs!1019953 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190696))))

(declare-fun bs!1019954 () Bool)

(assert (= bs!1019954 (and d!1455245 b!4620753)))

(assert (=> bs!1019954 (= (= lt!1776893 (ListMap!4234 Nil!51468)) (= lambda!190713 lambda!190706))))

(assert (=> d!1455245 true))

(declare-fun bm!322190 () Bool)

(declare-fun call!322196 () Unit!110904)

(assert (=> bm!322190 (= call!322196 (lemmaContainsAllItsOwnKeys!488 (ListMap!4234 Nil!51468)))))

(declare-fun b!4620755 () Bool)

(declare-fun e!2882294 () Bool)

(assert (=> b!4620755 (= e!2882294 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190712))))

(declare-fun b!4620756 () Bool)

(declare-fun e!2882292 () Bool)

(assert (=> b!4620756 (= e!2882292 (invariantList!1186 (toList!4930 lt!1776893)))))

(declare-fun call!322197 () Bool)

(declare-fun bm!322191 () Bool)

(declare-fun c!790961 () Bool)

(assert (=> bm!322191 (= call!322197 (forall!10788 (ite c!790961 (toList!4930 (ListMap!4234 Nil!51468)) lt!1776465) (ite c!790961 lambda!190710 lambda!190712)))))

(declare-fun b!4620757 () Bool)

(declare-fun res!1936919 () Bool)

(assert (=> b!4620757 (=> (not res!1936919) (not e!2882292))))

(assert (=> b!4620757 (= res!1936919 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190713))))

(declare-fun e!2882293 () ListMap!4233)

(assert (=> b!4620758 (= e!2882293 (ListMap!4234 Nil!51468))))

(declare-fun lt!1776898 () Unit!110904)

(assert (=> b!4620758 (= lt!1776898 call!322196)))

(assert (=> b!4620758 call!322197))

(declare-fun lt!1776889 () Unit!110904)

(assert (=> b!4620758 (= lt!1776889 lt!1776898)))

(declare-fun call!322195 () Bool)

(assert (=> b!4620758 call!322195))

(declare-fun lt!1776890 () Unit!110904)

(declare-fun Unit!110988 () Unit!110904)

(assert (=> b!4620758 (= lt!1776890 Unit!110988)))

(assert (=> b!4620759 (= e!2882293 lt!1776892)))

(declare-fun lt!1776896 () ListMap!4233)

(assert (=> b!4620759 (= lt!1776896 (+!1848 (ListMap!4234 Nil!51468) (h!57500 lt!1776465)))))

(assert (=> b!4620759 (= lt!1776892 (addToMapMapFromBucket!943 (t!358606 lt!1776465) (+!1848 (ListMap!4234 Nil!51468) (h!57500 lt!1776465))))))

(declare-fun lt!1776897 () Unit!110904)

(assert (=> b!4620759 (= lt!1776897 call!322196)))

(assert (=> b!4620759 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190711)))

(declare-fun lt!1776895 () Unit!110904)

(assert (=> b!4620759 (= lt!1776895 lt!1776897)))

(assert (=> b!4620759 (forall!10788 (toList!4930 lt!1776896) lambda!190712)))

(declare-fun lt!1776888 () Unit!110904)

(declare-fun Unit!110989 () Unit!110904)

(assert (=> b!4620759 (= lt!1776888 Unit!110989)))

(assert (=> b!4620759 call!322195))

(declare-fun lt!1776891 () Unit!110904)

(declare-fun Unit!110990 () Unit!110904)

(assert (=> b!4620759 (= lt!1776891 Unit!110990)))

(declare-fun lt!1776908 () Unit!110904)

(declare-fun Unit!110991 () Unit!110904)

(assert (=> b!4620759 (= lt!1776908 Unit!110991)))

(declare-fun lt!1776907 () Unit!110904)

(assert (=> b!4620759 (= lt!1776907 (forallContained!3010 (toList!4930 lt!1776896) lambda!190712 (h!57500 lt!1776465)))))

(assert (=> b!4620759 (contains!14471 lt!1776896 (_1!29481 (h!57500 lt!1776465)))))

(declare-fun lt!1776903 () Unit!110904)

(declare-fun Unit!110992 () Unit!110904)

(assert (=> b!4620759 (= lt!1776903 Unit!110992)))

(assert (=> b!4620759 (contains!14471 lt!1776892 (_1!29481 (h!57500 lt!1776465)))))

(declare-fun lt!1776894 () Unit!110904)

(declare-fun Unit!110994 () Unit!110904)

(assert (=> b!4620759 (= lt!1776894 Unit!110994)))

(assert (=> b!4620759 (forall!10788 lt!1776465 lambda!190712)))

(declare-fun lt!1776905 () Unit!110904)

(declare-fun Unit!110995 () Unit!110904)

(assert (=> b!4620759 (= lt!1776905 Unit!110995)))

(assert (=> b!4620759 (forall!10788 (toList!4930 lt!1776896) lambda!190712)))

(declare-fun lt!1776902 () Unit!110904)

(declare-fun Unit!110996 () Unit!110904)

(assert (=> b!4620759 (= lt!1776902 Unit!110996)))

(declare-fun lt!1776899 () Unit!110904)

(declare-fun Unit!110997 () Unit!110904)

(assert (=> b!4620759 (= lt!1776899 Unit!110997)))

(declare-fun lt!1776904 () Unit!110904)

(assert (=> b!4620759 (= lt!1776904 (addForallContainsKeyThenBeforeAdding!487 (ListMap!4234 Nil!51468) lt!1776892 (_1!29481 (h!57500 lt!1776465)) (_2!29481 (h!57500 lt!1776465))))))

(assert (=> b!4620759 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190712)))

(declare-fun lt!1776901 () Unit!110904)

(assert (=> b!4620759 (= lt!1776901 lt!1776904)))

(assert (=> b!4620759 (forall!10788 (toList!4930 (ListMap!4234 Nil!51468)) lambda!190712)))

(declare-fun lt!1776900 () Unit!110904)

(declare-fun Unit!110998 () Unit!110904)

(assert (=> b!4620759 (= lt!1776900 Unit!110998)))

(declare-fun res!1936918 () Bool)

(assert (=> b!4620759 (= res!1936918 call!322197)))

(assert (=> b!4620759 (=> (not res!1936918) (not e!2882294))))

(assert (=> b!4620759 e!2882294))

(declare-fun lt!1776906 () Unit!110904)

(declare-fun Unit!110999 () Unit!110904)

(assert (=> b!4620759 (= lt!1776906 Unit!110999)))

(declare-fun bm!322192 () Bool)

(assert (=> bm!322192 (= call!322195 (forall!10788 (ite c!790961 (toList!4930 (ListMap!4234 Nil!51468)) (t!358606 lt!1776465)) (ite c!790961 lambda!190710 lambda!190712)))))

(assert (=> d!1455245 e!2882292))

(declare-fun res!1936920 () Bool)

(assert (=> d!1455245 (=> (not res!1936920) (not e!2882292))))

(assert (=> d!1455245 (= res!1936920 (forall!10788 lt!1776465 lambda!190713))))

(assert (=> d!1455245 (= lt!1776893 e!2882293)))

(assert (=> d!1455245 (= c!790961 ((_ is Nil!51468) lt!1776465))))

(assert (=> d!1455245 (noDuplicateKeys!1482 lt!1776465)))

(assert (=> d!1455245 (= (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776893)))

(assert (= (and d!1455245 c!790961) b!4620758))

(assert (= (and d!1455245 (not c!790961)) b!4620759))

(assert (= (and b!4620759 res!1936918) b!4620755))

(assert (= (or b!4620758 b!4620759) bm!322190))

(assert (= (or b!4620758 b!4620759) bm!322191))

(assert (= (or b!4620758 b!4620759) bm!322192))

(assert (= (and d!1455245 res!1936920) b!4620757))

(assert (= (and b!4620757 res!1936919) b!4620756))

(assert (=> bm!322190 m!5457083))

(declare-fun m!5457309 () Bool)

(assert (=> b!4620759 m!5457309))

(declare-fun m!5457311 () Bool)

(assert (=> b!4620759 m!5457311))

(assert (=> b!4620759 m!5457311))

(declare-fun m!5457313 () Bool)

(assert (=> b!4620759 m!5457313))

(declare-fun m!5457315 () Bool)

(assert (=> b!4620759 m!5457315))

(declare-fun m!5457317 () Bool)

(assert (=> b!4620759 m!5457317))

(declare-fun m!5457319 () Bool)

(assert (=> b!4620759 m!5457319))

(assert (=> b!4620759 m!5457317))

(declare-fun m!5457321 () Bool)

(assert (=> b!4620759 m!5457321))

(declare-fun m!5457323 () Bool)

(assert (=> b!4620759 m!5457323))

(declare-fun m!5457325 () Bool)

(assert (=> b!4620759 m!5457325))

(assert (=> b!4620759 m!5457313))

(declare-fun m!5457327 () Bool)

(assert (=> b!4620759 m!5457327))

(assert (=> b!4620755 m!5457311))

(declare-fun m!5457329 () Bool)

(assert (=> bm!322191 m!5457329))

(declare-fun m!5457331 () Bool)

(assert (=> b!4620756 m!5457331))

(declare-fun m!5457333 () Bool)

(assert (=> b!4620757 m!5457333))

(declare-fun m!5457335 () Bool)

(assert (=> bm!322192 m!5457335))

(declare-fun m!5457337 () Bool)

(assert (=> d!1455245 m!5457337))

(assert (=> d!1455245 m!5457267))

(assert (=> b!4620459 d!1455245))

(declare-fun d!1455247 () Bool)

(assert (=> d!1455247 (= (eq!797 (addToMapMapFromBucket!943 (Cons!51468 lt!1776455 lt!1776466) (ListMap!4234 Nil!51468)) (+!1848 (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776455)) (= (content!8756 (toList!4930 (addToMapMapFromBucket!943 (Cons!51468 lt!1776455 lt!1776466) (ListMap!4234 Nil!51468)))) (content!8756 (toList!4930 (+!1848 (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776455)))))))

(declare-fun bs!1019955 () Bool)

(assert (= bs!1019955 d!1455247))

(declare-fun m!5457339 () Bool)

(assert (=> bs!1019955 m!5457339))

(declare-fun m!5457341 () Bool)

(assert (=> bs!1019955 m!5457341))

(assert (=> b!4620459 d!1455247))

(declare-fun b!4620760 () Bool)

(declare-fun e!2882300 () Unit!110904)

(declare-fun Unit!111001 () Unit!110904)

(assert (=> b!4620760 (= e!2882300 Unit!111001)))

(declare-fun b!4620761 () Bool)

(assert (=> b!4620761 false))

(declare-fun lt!1776909 () Unit!110904)

(declare-fun lt!1776916 () Unit!110904)

(assert (=> b!4620761 (= lt!1776909 lt!1776916)))

(assert (=> b!4620761 (containsKey!2387 (toList!4930 (extractMap!1538 lt!1776468)) key!4968)))

(assert (=> b!4620761 (= lt!1776916 (lemmaInGetKeysListThenContainsKey!635 (toList!4930 (extractMap!1538 lt!1776468)) key!4968))))

(declare-fun Unit!111002 () Unit!110904)

(assert (=> b!4620761 (= e!2882300 Unit!111002)))

(declare-fun d!1455249 () Bool)

(declare-fun e!2882296 () Bool)

(assert (=> d!1455249 e!2882296))

(declare-fun res!1936922 () Bool)

(assert (=> d!1455249 (=> res!1936922 e!2882296)))

(declare-fun e!2882295 () Bool)

(assert (=> d!1455249 (= res!1936922 e!2882295)))

(declare-fun res!1936923 () Bool)

(assert (=> d!1455249 (=> (not res!1936923) (not e!2882295))))

(declare-fun lt!1776915 () Bool)

(assert (=> d!1455249 (= res!1936923 (not lt!1776915))))

(declare-fun lt!1776913 () Bool)

(assert (=> d!1455249 (= lt!1776915 lt!1776913)))

(declare-fun lt!1776910 () Unit!110904)

(declare-fun e!2882298 () Unit!110904)

(assert (=> d!1455249 (= lt!1776910 e!2882298)))

(declare-fun c!790962 () Bool)

(assert (=> d!1455249 (= c!790962 lt!1776913)))

(assert (=> d!1455249 (= lt!1776913 (containsKey!2387 (toList!4930 (extractMap!1538 lt!1776468)) key!4968))))

(assert (=> d!1455249 (= (contains!14471 (extractMap!1538 lt!1776468) key!4968) lt!1776915)))

(declare-fun b!4620762 () Bool)

(assert (=> b!4620762 (= e!2882295 (not (contains!14473 (keys!18111 (extractMap!1538 lt!1776468)) key!4968)))))

(declare-fun b!4620763 () Bool)

(declare-fun lt!1776912 () Unit!110904)

(assert (=> b!4620763 (= e!2882298 lt!1776912)))

(declare-fun lt!1776911 () Unit!110904)

(assert (=> b!4620763 (= lt!1776911 (lemmaContainsKeyImpliesGetValueByKeyDefined!1315 (toList!4930 (extractMap!1538 lt!1776468)) key!4968))))

(assert (=> b!4620763 (isDefined!8794 (getValueByKey!1414 (toList!4930 (extractMap!1538 lt!1776468)) key!4968))))

(declare-fun lt!1776914 () Unit!110904)

(assert (=> b!4620763 (= lt!1776914 lt!1776911)))

(assert (=> b!4620763 (= lt!1776912 (lemmaInListThenGetKeysListContains!631 (toList!4930 (extractMap!1538 lt!1776468)) key!4968))))

(declare-fun call!322198 () Bool)

(assert (=> b!4620763 call!322198))

(declare-fun b!4620764 () Bool)

(declare-fun e!2882299 () Bool)

(assert (=> b!4620764 (= e!2882296 e!2882299)))

(declare-fun res!1936921 () Bool)

(assert (=> b!4620764 (=> (not res!1936921) (not e!2882299))))

(assert (=> b!4620764 (= res!1936921 (isDefined!8794 (getValueByKey!1414 (toList!4930 (extractMap!1538 lt!1776468)) key!4968)))))

(declare-fun b!4620765 () Bool)

(declare-fun e!2882297 () List!51594)

(assert (=> b!4620765 (= e!2882297 (keys!18111 (extractMap!1538 lt!1776468)))))

(declare-fun bm!322193 () Bool)

(assert (=> bm!322193 (= call!322198 (contains!14473 e!2882297 key!4968))))

(declare-fun c!790964 () Bool)

(assert (=> bm!322193 (= c!790964 c!790962)))

(declare-fun b!4620766 () Bool)

(assert (=> b!4620766 (= e!2882298 e!2882300)))

(declare-fun c!790963 () Bool)

(assert (=> b!4620766 (= c!790963 call!322198)))

(declare-fun b!4620767 () Bool)

(assert (=> b!4620767 (= e!2882299 (contains!14473 (keys!18111 (extractMap!1538 lt!1776468)) key!4968))))

(declare-fun b!4620768 () Bool)

(assert (=> b!4620768 (= e!2882297 (getKeysList!636 (toList!4930 (extractMap!1538 lt!1776468))))))

(assert (= (and d!1455249 c!790962) b!4620763))

(assert (= (and d!1455249 (not c!790962)) b!4620766))

(assert (= (and b!4620766 c!790963) b!4620761))

(assert (= (and b!4620766 (not c!790963)) b!4620760))

(assert (= (or b!4620763 b!4620766) bm!322193))

(assert (= (and bm!322193 c!790964) b!4620768))

(assert (= (and bm!322193 (not c!790964)) b!4620765))

(assert (= (and d!1455249 res!1936923) b!4620762))

(assert (= (and d!1455249 (not res!1936922)) b!4620764))

(assert (= (and b!4620764 res!1936921) b!4620767))

(declare-fun m!5457343 () Bool)

(assert (=> d!1455249 m!5457343))

(assert (=> b!4620765 m!5456721))

(declare-fun m!5457345 () Bool)

(assert (=> b!4620765 m!5457345))

(assert (=> b!4620762 m!5456721))

(assert (=> b!4620762 m!5457345))

(assert (=> b!4620762 m!5457345))

(declare-fun m!5457347 () Bool)

(assert (=> b!4620762 m!5457347))

(declare-fun m!5457349 () Bool)

(assert (=> b!4620768 m!5457349))

(declare-fun m!5457351 () Bool)

(assert (=> b!4620763 m!5457351))

(declare-fun m!5457353 () Bool)

(assert (=> b!4620763 m!5457353))

(assert (=> b!4620763 m!5457353))

(declare-fun m!5457355 () Bool)

(assert (=> b!4620763 m!5457355))

(declare-fun m!5457357 () Bool)

(assert (=> b!4620763 m!5457357))

(declare-fun m!5457359 () Bool)

(assert (=> bm!322193 m!5457359))

(assert (=> b!4620767 m!5456721))

(assert (=> b!4620767 m!5457345))

(assert (=> b!4620767 m!5457345))

(assert (=> b!4620767 m!5457347))

(assert (=> b!4620764 m!5457353))

(assert (=> b!4620764 m!5457353))

(assert (=> b!4620764 m!5457355))

(assert (=> b!4620761 m!5457343))

(declare-fun m!5457361 () Bool)

(assert (=> b!4620761 m!5457361))

(assert (=> b!4620459 d!1455249))

(declare-fun d!1455251 () Bool)

(declare-fun e!2882301 () Bool)

(assert (=> d!1455251 e!2882301))

(declare-fun res!1936924 () Bool)

(assert (=> d!1455251 (=> (not res!1936924) (not e!2882301))))

(declare-fun lt!1776918 () ListMap!4233)

(assert (=> d!1455251 (= res!1936924 (contains!14471 lt!1776918 (_1!29481 lt!1776452)))))

(declare-fun lt!1776917 () List!51592)

(assert (=> d!1455251 (= lt!1776918 (ListMap!4234 lt!1776917))))

(declare-fun lt!1776920 () Unit!110904)

(declare-fun lt!1776919 () Unit!110904)

(assert (=> d!1455251 (= lt!1776920 lt!1776919)))

(assert (=> d!1455251 (= (getValueByKey!1414 lt!1776917 (_1!29481 lt!1776452)) (Some!11529 (_2!29481 lt!1776452)))))

(assert (=> d!1455251 (= lt!1776919 (lemmaContainsTupThenGetReturnValue!830 lt!1776917 (_1!29481 lt!1776452) (_2!29481 lt!1776452)))))

(assert (=> d!1455251 (= lt!1776917 (insertNoDuplicatedKeys!338 (toList!4930 (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468))) (_1!29481 lt!1776452) (_2!29481 lt!1776452)))))

(assert (=> d!1455251 (= (+!1848 (addToMapMapFromBucket!943 lt!1776465 (ListMap!4234 Nil!51468)) lt!1776452) lt!1776918)))

(declare-fun b!4620769 () Bool)

(declare-fun res!1936925 () Bool)

(assert (=> b!4620769 (=> (not res!1936925) (not e!2882301))))

(assert (=> b!4620769 (= res!1936925 (= (getValueByKey!1414 (toList!4930 lt!1776918) (_1!29481 lt!1776452)) (Some!11529 (_2!29481 lt!1776452))))))

(declare-fun b!4620770 () Bool)

(assert (=> b!4620770 (= e!2882301 (contains!14475 (toList!4930 lt!1776918) lt!1776452))))

(assert (= (and d!1455251 res!1936924) b!4620769))

(assert (= (and b!4620769 res!1936925) b!4620770))

(declare-fun m!5457363 () Bool)

(assert (=> d!1455251 m!5457363))

(declare-fun m!5457365 () Bool)

(assert (=> d!1455251 m!5457365))

(declare-fun m!5457367 () Bool)

(assert (=> d!1455251 m!5457367))

(declare-fun m!5457369 () Bool)

(assert (=> d!1455251 m!5457369))

(declare-fun m!5457371 () Bool)

(assert (=> b!4620769 m!5457371))

(declare-fun m!5457373 () Bool)

(assert (=> b!4620770 m!5457373))

(assert (=> b!4620459 d!1455251))

(declare-fun d!1455253 () Bool)

(assert (=> d!1455253 (eq!797 (addToMapMapFromBucket!943 (Cons!51468 lt!1776455 lt!1776466) (ListMap!4234 Nil!51468)) (+!1848 (addToMapMapFromBucket!943 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776455))))

(declare-fun lt!1776921 () Unit!110904)

(assert (=> d!1455253 (= lt!1776921 (choose!31172 lt!1776455 lt!1776466 (ListMap!4234 Nil!51468)))))

(assert (=> d!1455253 (noDuplicateKeys!1482 lt!1776466)))

(assert (=> d!1455253 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!48 lt!1776455 lt!1776466 (ListMap!4234 Nil!51468)) lt!1776921)))

(declare-fun bs!1019956 () Bool)

(assert (= bs!1019956 d!1455253))

(assert (=> bs!1019956 m!5456715))

(assert (=> bs!1019956 m!5456717))

(assert (=> bs!1019956 m!5456719))

(assert (=> bs!1019956 m!5456727))

(declare-fun m!5457375 () Bool)

(assert (=> bs!1019956 m!5457375))

(assert (=> bs!1019956 m!5457223))

(assert (=> bs!1019956 m!5456727))

(assert (=> bs!1019956 m!5456717))

(assert (=> bs!1019956 m!5456715))

(assert (=> b!4620459 d!1455253))

(declare-fun bs!1019957 () Bool)

(declare-fun d!1455255 () Bool)

(assert (= bs!1019957 (and d!1455255 b!4620453)))

(declare-fun lambda!190714 () Int)

(assert (=> bs!1019957 (= lambda!190714 lambda!190596)))

(declare-fun bs!1019958 () Bool)

(assert (= bs!1019958 (and d!1455255 d!1455151)))

(assert (=> bs!1019958 (= lambda!190714 lambda!190605)))

(declare-fun lt!1776922 () ListMap!4233)

(assert (=> d!1455255 (invariantList!1186 (toList!4930 lt!1776922))))

(declare-fun e!2882302 () ListMap!4233)

(assert (=> d!1455255 (= lt!1776922 e!2882302)))

(declare-fun c!790965 () Bool)

(assert (=> d!1455255 (= c!790965 ((_ is Cons!51469) lt!1776468))))

(assert (=> d!1455255 (forall!10786 lt!1776468 lambda!190714)))

(assert (=> d!1455255 (= (extractMap!1538 lt!1776468) lt!1776922)))

(declare-fun b!4620771 () Bool)

(assert (=> b!4620771 (= e!2882302 (addToMapMapFromBucket!943 (_2!29482 (h!57501 lt!1776468)) (extractMap!1538 (t!358607 lt!1776468))))))

(declare-fun b!4620772 () Bool)

(assert (=> b!4620772 (= e!2882302 (ListMap!4234 Nil!51468))))

(assert (= (and d!1455255 c!790965) b!4620771))

(assert (= (and d!1455255 (not c!790965)) b!4620772))

(declare-fun m!5457377 () Bool)

(assert (=> d!1455255 m!5457377))

(declare-fun m!5457379 () Bool)

(assert (=> d!1455255 m!5457379))

(declare-fun m!5457381 () Bool)

(assert (=> b!4620771 m!5457381))

(assert (=> b!4620771 m!5457381))

(declare-fun m!5457383 () Bool)

(assert (=> b!4620771 m!5457383))

(assert (=> b!4620459 d!1455255))

(declare-fun bs!1019959 () Bool)

(declare-fun d!1455257 () Bool)

(assert (= bs!1019959 (and d!1455257 b!4620453)))

(declare-fun lambda!190717 () Int)

(assert (=> bs!1019959 (= lambda!190717 lambda!190596)))

(declare-fun bs!1019960 () Bool)

(assert (= bs!1019960 (and d!1455257 d!1455151)))

(assert (=> bs!1019960 (= lambda!190717 lambda!190605)))

(declare-fun bs!1019961 () Bool)

(assert (= bs!1019961 (and d!1455257 d!1455255)))

(assert (=> bs!1019961 (= lambda!190717 lambda!190714)))

(assert (=> d!1455257 (contains!14471 (extractMap!1538 (toList!4929 (ListLongMap!3520 lt!1776468))) key!4968)))

(declare-fun lt!1776925 () Unit!110904)

(declare-fun choose!31178 (ListLongMap!3519 K!12855 Hashable!5879) Unit!110904)

(assert (=> d!1455257 (= lt!1776925 (choose!31178 (ListLongMap!3520 lt!1776468) key!4968 hashF!1389))))

(assert (=> d!1455257 (forall!10786 (toList!4929 (ListLongMap!3520 lt!1776468)) lambda!190717)))

(assert (=> d!1455257 (= (lemmaListContainsThenExtractedMapContains!300 (ListLongMap!3520 lt!1776468) key!4968 hashF!1389) lt!1776925)))

(declare-fun bs!1019962 () Bool)

(assert (= bs!1019962 d!1455257))

(declare-fun m!5457385 () Bool)

(assert (=> bs!1019962 m!5457385))

(assert (=> bs!1019962 m!5457385))

(declare-fun m!5457387 () Bool)

(assert (=> bs!1019962 m!5457387))

(declare-fun m!5457389 () Bool)

(assert (=> bs!1019962 m!5457389))

(declare-fun m!5457391 () Bool)

(assert (=> bs!1019962 m!5457391))

(assert (=> b!4620459 d!1455257))

(declare-fun bs!1019963 () Bool)

(declare-fun d!1455259 () Bool)

(assert (= bs!1019963 (and d!1455259 b!4620758)))

(declare-fun lambda!190720 () Int)

(assert (=> bs!1019963 (not (= lambda!190720 lambda!190710))))

(declare-fun bs!1019964 () Bool)

(assert (= bs!1019964 (and d!1455259 b!4620759)))

(assert (=> bs!1019964 (not (= lambda!190720 lambda!190711))))

(declare-fun bs!1019965 () Bool)

(assert (= bs!1019965 (and d!1455259 b!4620691)))

(assert (=> bs!1019965 (not (= lambda!190720 lambda!190686))))

(declare-fun bs!1019966 () Bool)

(assert (= bs!1019966 (and d!1455259 b!4620716)))

(assert (=> bs!1019966 (not (= lambda!190720 lambda!190697))))

(assert (=> bs!1019964 (not (= lambda!190720 lambda!190712))))

(assert (=> bs!1019965 (not (= lambda!190720 lambda!190687))))

(declare-fun bs!1019967 () Bool)

(assert (= bs!1019967 (and d!1455259 d!1455243)))

(assert (=> bs!1019967 (not (= lambda!190720 lambda!190709))))

(declare-fun bs!1019968 () Bool)

(assert (= bs!1019968 (and d!1455259 d!1455225)))

(assert (=> bs!1019968 (not (= lambda!190720 lambda!190699))))

(declare-fun bs!1019969 () Bool)

(assert (= bs!1019969 (and d!1455259 b!4620690)))

(assert (=> bs!1019969 (not (= lambda!190720 lambda!190685))))

(declare-fun bs!1019970 () Bool)

(assert (= bs!1019970 (and d!1455259 d!1455155)))

(assert (=> bs!1019970 (not (= lambda!190720 lambda!190688))))

(assert (=> bs!1019966 (not (= lambda!190720 lambda!190698))))

(declare-fun bs!1019971 () Bool)

(assert (= bs!1019971 (and d!1455259 b!4620754)))

(assert (=> bs!1019971 (not (= lambda!190720 lambda!190707))))

(declare-fun bs!1019972 () Bool)

(assert (= bs!1019972 (and d!1455259 d!1455245)))

(assert (=> bs!1019972 (not (= lambda!190720 lambda!190713))))

(assert (=> bs!1019971 (not (= lambda!190720 lambda!190708))))

(declare-fun bs!1019973 () Bool)

(assert (= bs!1019973 (and d!1455259 b!4620715)))

(assert (=> bs!1019973 (not (= lambda!190720 lambda!190696))))

(declare-fun bs!1019974 () Bool)

(assert (= bs!1019974 (and d!1455259 b!4620753)))

(assert (=> bs!1019974 (not (= lambda!190720 lambda!190706))))

(assert (=> d!1455259 true))

(assert (=> d!1455259 true))

(assert (=> d!1455259 (= (allKeysSameHash!1336 oldBucket!40 hash!414 hashF!1389) (forall!10788 oldBucket!40 lambda!190720))))

(declare-fun bs!1019975 () Bool)

(assert (= bs!1019975 d!1455259))

(declare-fun m!5457393 () Bool)

(assert (=> bs!1019975 m!5457393))

(assert (=> b!4620458 d!1455259))

(declare-fun bs!1019976 () Bool)

(declare-fun b!4620780 () Bool)

(assert (= bs!1019976 (and b!4620780 b!4620758)))

(declare-fun lambda!190721 () Int)

(assert (=> bs!1019976 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190710))))

(declare-fun bs!1019977 () Bool)

(assert (= bs!1019977 (and b!4620780 b!4620759)))

(assert (=> bs!1019977 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190711))))

(declare-fun bs!1019978 () Bool)

(assert (= bs!1019978 (and b!4620780 b!4620691)))

(assert (=> bs!1019978 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190686))))

(declare-fun bs!1019979 () Bool)

(assert (= bs!1019979 (and b!4620780 b!4620716)))

(assert (=> bs!1019979 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190697))))

(assert (=> bs!1019977 (= (= lt!1776462 lt!1776892) (= lambda!190721 lambda!190712))))

(assert (=> bs!1019978 (= (= lt!1776462 lt!1776756) (= lambda!190721 lambda!190687))))

(declare-fun bs!1019980 () Bool)

(assert (= bs!1019980 (and b!4620780 d!1455243)))

(assert (=> bs!1019980 (= (= lt!1776462 lt!1776872) (= lambda!190721 lambda!190709))))

(declare-fun bs!1019981 () Bool)

(assert (= bs!1019981 (and b!4620780 d!1455225)))

(assert (=> bs!1019981 (= (= lt!1776462 lt!1776814) (= lambda!190721 lambda!190699))))

(declare-fun bs!1019982 () Bool)

(assert (= bs!1019982 (and b!4620780 b!4620690)))

(assert (=> bs!1019982 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190685))))

(declare-fun bs!1019983 () Bool)

(assert (= bs!1019983 (and b!4620780 d!1455155)))

(assert (=> bs!1019983 (= (= lt!1776462 lt!1776757) (= lambda!190721 lambda!190688))))

(assert (=> bs!1019979 (= (= lt!1776462 lt!1776813) (= lambda!190721 lambda!190698))))

(declare-fun bs!1019984 () Bool)

(assert (= bs!1019984 (and b!4620780 b!4620754)))

(assert (=> bs!1019984 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190707))))

(declare-fun bs!1019985 () Bool)

(assert (= bs!1019985 (and b!4620780 d!1455259)))

(assert (=> bs!1019985 (not (= lambda!190721 lambda!190720))))

(declare-fun bs!1019986 () Bool)

(assert (= bs!1019986 (and b!4620780 d!1455245)))

(assert (=> bs!1019986 (= (= lt!1776462 lt!1776893) (= lambda!190721 lambda!190713))))

(assert (=> bs!1019984 (= (= lt!1776462 lt!1776871) (= lambda!190721 lambda!190708))))

(declare-fun bs!1019987 () Bool)

(assert (= bs!1019987 (and b!4620780 b!4620715)))

(assert (=> bs!1019987 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190696))))

(declare-fun bs!1019988 () Bool)

(assert (= bs!1019988 (and b!4620780 b!4620753)))

(assert (=> bs!1019988 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190721 lambda!190706))))

(assert (=> b!4620780 true))

(declare-fun bs!1019989 () Bool)

(declare-fun b!4620781 () Bool)

(assert (= bs!1019989 (and b!4620781 b!4620758)))

(declare-fun lambda!190722 () Int)

(assert (=> bs!1019989 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190710))))

(declare-fun bs!1019990 () Bool)

(assert (= bs!1019990 (and b!4620781 b!4620759)))

(assert (=> bs!1019990 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190711))))

(declare-fun bs!1019991 () Bool)

(assert (= bs!1019991 (and b!4620781 b!4620691)))

(assert (=> bs!1019991 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190686))))

(declare-fun bs!1019992 () Bool)

(assert (= bs!1019992 (and b!4620781 b!4620716)))

(assert (=> bs!1019992 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190697))))

(assert (=> bs!1019990 (= (= lt!1776462 lt!1776892) (= lambda!190722 lambda!190712))))

(assert (=> bs!1019991 (= (= lt!1776462 lt!1776756) (= lambda!190722 lambda!190687))))

(declare-fun bs!1019993 () Bool)

(assert (= bs!1019993 (and b!4620781 d!1455243)))

(assert (=> bs!1019993 (= (= lt!1776462 lt!1776872) (= lambda!190722 lambda!190709))))

(declare-fun bs!1019994 () Bool)

(assert (= bs!1019994 (and b!4620781 d!1455225)))

(assert (=> bs!1019994 (= (= lt!1776462 lt!1776814) (= lambda!190722 lambda!190699))))

(declare-fun bs!1019995 () Bool)

(assert (= bs!1019995 (and b!4620781 b!4620690)))

(assert (=> bs!1019995 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190685))))

(declare-fun bs!1019996 () Bool)

(assert (= bs!1019996 (and b!4620781 d!1455155)))

(assert (=> bs!1019996 (= (= lt!1776462 lt!1776757) (= lambda!190722 lambda!190688))))

(assert (=> bs!1019992 (= (= lt!1776462 lt!1776813) (= lambda!190722 lambda!190698))))

(declare-fun bs!1019997 () Bool)

(assert (= bs!1019997 (and b!4620781 b!4620754)))

(assert (=> bs!1019997 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190707))))

(declare-fun bs!1019998 () Bool)

(assert (= bs!1019998 (and b!4620781 d!1455259)))

(assert (=> bs!1019998 (not (= lambda!190722 lambda!190720))))

(declare-fun bs!1019999 () Bool)

(assert (= bs!1019999 (and b!4620781 b!4620780)))

(assert (=> bs!1019999 (= lambda!190722 lambda!190721)))

(declare-fun bs!1020000 () Bool)

(assert (= bs!1020000 (and b!4620781 d!1455245)))

(assert (=> bs!1020000 (= (= lt!1776462 lt!1776893) (= lambda!190722 lambda!190713))))

(assert (=> bs!1019997 (= (= lt!1776462 lt!1776871) (= lambda!190722 lambda!190708))))

(declare-fun bs!1020001 () Bool)

(assert (= bs!1020001 (and b!4620781 b!4620715)))

(assert (=> bs!1020001 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190696))))

(declare-fun bs!1020002 () Bool)

(assert (= bs!1020002 (and b!4620781 b!4620753)))

(assert (=> bs!1020002 (= (= lt!1776462 (ListMap!4234 Nil!51468)) (= lambda!190722 lambda!190706))))

(assert (=> b!4620781 true))

(declare-fun lt!1776930 () ListMap!4233)

(declare-fun lambda!190723 () Int)

(assert (=> bs!1019989 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190710))))

(assert (=> bs!1019990 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190711))))

(assert (=> bs!1019991 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190686))))

(assert (=> bs!1019992 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190697))))

(assert (=> bs!1019990 (= (= lt!1776930 lt!1776892) (= lambda!190723 lambda!190712))))

(assert (=> bs!1019991 (= (= lt!1776930 lt!1776756) (= lambda!190723 lambda!190687))))

(assert (=> bs!1019993 (= (= lt!1776930 lt!1776872) (= lambda!190723 lambda!190709))))

(assert (=> bs!1019994 (= (= lt!1776930 lt!1776814) (= lambda!190723 lambda!190699))))

(assert (=> bs!1019995 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190685))))

(assert (=> bs!1019996 (= (= lt!1776930 lt!1776757) (= lambda!190723 lambda!190688))))

(assert (=> bs!1019992 (= (= lt!1776930 lt!1776813) (= lambda!190723 lambda!190698))))

(assert (=> bs!1019997 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190707))))

(assert (=> bs!1019998 (not (= lambda!190723 lambda!190720))))

(assert (=> bs!1019999 (= (= lt!1776930 lt!1776462) (= lambda!190723 lambda!190721))))

(assert (=> bs!1020000 (= (= lt!1776930 lt!1776893) (= lambda!190723 lambda!190713))))

(assert (=> bs!1019997 (= (= lt!1776930 lt!1776871) (= lambda!190723 lambda!190708))))

(assert (=> b!4620781 (= (= lt!1776930 lt!1776462) (= lambda!190723 lambda!190722))))

(assert (=> bs!1020001 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190696))))

(assert (=> bs!1020002 (= (= lt!1776930 (ListMap!4234 Nil!51468)) (= lambda!190723 lambda!190706))))

(assert (=> b!4620781 true))

(declare-fun bs!1020003 () Bool)

(declare-fun d!1455261 () Bool)

(assert (= bs!1020003 (and d!1455261 b!4620758)))

(declare-fun lt!1776931 () ListMap!4233)

(declare-fun lambda!190724 () Int)

(assert (=> bs!1020003 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190710))))

(declare-fun bs!1020004 () Bool)

(assert (= bs!1020004 (and d!1455261 b!4620759)))

(assert (=> bs!1020004 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190711))))

(declare-fun bs!1020005 () Bool)

(assert (= bs!1020005 (and d!1455261 b!4620691)))

(assert (=> bs!1020005 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190686))))

(declare-fun bs!1020006 () Bool)

(assert (= bs!1020006 (and d!1455261 b!4620716)))

(assert (=> bs!1020006 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190697))))

(assert (=> bs!1020004 (= (= lt!1776931 lt!1776892) (= lambda!190724 lambda!190712))))

(assert (=> bs!1020005 (= (= lt!1776931 lt!1776756) (= lambda!190724 lambda!190687))))

(declare-fun bs!1020007 () Bool)

(assert (= bs!1020007 (and d!1455261 d!1455243)))

(assert (=> bs!1020007 (= (= lt!1776931 lt!1776872) (= lambda!190724 lambda!190709))))

(declare-fun bs!1020008 () Bool)

(assert (= bs!1020008 (and d!1455261 d!1455225)))

(assert (=> bs!1020008 (= (= lt!1776931 lt!1776814) (= lambda!190724 lambda!190699))))

(declare-fun bs!1020009 () Bool)

(assert (= bs!1020009 (and d!1455261 b!4620690)))

(assert (=> bs!1020009 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190685))))

(declare-fun bs!1020010 () Bool)

(assert (= bs!1020010 (and d!1455261 b!4620781)))

(assert (=> bs!1020010 (= (= lt!1776931 lt!1776930) (= lambda!190724 lambda!190723))))

(declare-fun bs!1020011 () Bool)

(assert (= bs!1020011 (and d!1455261 d!1455155)))

(assert (=> bs!1020011 (= (= lt!1776931 lt!1776757) (= lambda!190724 lambda!190688))))

(assert (=> bs!1020006 (= (= lt!1776931 lt!1776813) (= lambda!190724 lambda!190698))))

(declare-fun bs!1020012 () Bool)

(assert (= bs!1020012 (and d!1455261 b!4620754)))

(assert (=> bs!1020012 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190707))))

(declare-fun bs!1020013 () Bool)

(assert (= bs!1020013 (and d!1455261 d!1455259)))

(assert (=> bs!1020013 (not (= lambda!190724 lambda!190720))))

(declare-fun bs!1020014 () Bool)

(assert (= bs!1020014 (and d!1455261 b!4620780)))

(assert (=> bs!1020014 (= (= lt!1776931 lt!1776462) (= lambda!190724 lambda!190721))))

(declare-fun bs!1020015 () Bool)

(assert (= bs!1020015 (and d!1455261 d!1455245)))

(assert (=> bs!1020015 (= (= lt!1776931 lt!1776893) (= lambda!190724 lambda!190713))))

(assert (=> bs!1020012 (= (= lt!1776931 lt!1776871) (= lambda!190724 lambda!190708))))

(assert (=> bs!1020010 (= (= lt!1776931 lt!1776462) (= lambda!190724 lambda!190722))))

(declare-fun bs!1020016 () Bool)

(assert (= bs!1020016 (and d!1455261 b!4620715)))

(assert (=> bs!1020016 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190696))))

(declare-fun bs!1020017 () Bool)

(assert (= bs!1020017 (and d!1455261 b!4620753)))

(assert (=> bs!1020017 (= (= lt!1776931 (ListMap!4234 Nil!51468)) (= lambda!190724 lambda!190706))))

(assert (=> d!1455261 true))

(declare-fun bm!322194 () Bool)

(declare-fun call!322200 () Unit!110904)

(assert (=> bm!322194 (= call!322200 (lemmaContainsAllItsOwnKeys!488 lt!1776462))))

(declare-fun b!4620777 () Bool)

(declare-fun e!2882305 () Bool)

(assert (=> b!4620777 (= e!2882305 (forall!10788 (toList!4930 lt!1776462) lambda!190723))))

(declare-fun b!4620778 () Bool)

(declare-fun e!2882303 () Bool)

(assert (=> b!4620778 (= e!2882303 (invariantList!1186 (toList!4930 lt!1776931)))))

(declare-fun call!322201 () Bool)

(declare-fun c!790966 () Bool)

(declare-fun bm!322195 () Bool)

(assert (=> bm!322195 (= call!322201 (forall!10788 (ite c!790966 (toList!4930 lt!1776462) oldBucket!40) (ite c!790966 lambda!190721 lambda!190723)))))

(declare-fun b!4620779 () Bool)

(declare-fun res!1936927 () Bool)

(assert (=> b!4620779 (=> (not res!1936927) (not e!2882303))))

(assert (=> b!4620779 (= res!1936927 (forall!10788 (toList!4930 lt!1776462) lambda!190724))))

(declare-fun e!2882304 () ListMap!4233)

(assert (=> b!4620780 (= e!2882304 lt!1776462)))

(declare-fun lt!1776936 () Unit!110904)

(assert (=> b!4620780 (= lt!1776936 call!322200)))

(assert (=> b!4620780 call!322201))

(declare-fun lt!1776927 () Unit!110904)

(assert (=> b!4620780 (= lt!1776927 lt!1776936)))

(declare-fun call!322199 () Bool)

(assert (=> b!4620780 call!322199))

(declare-fun lt!1776928 () Unit!110904)

(declare-fun Unit!111014 () Unit!110904)

(assert (=> b!4620780 (= lt!1776928 Unit!111014)))

(assert (=> b!4620781 (= e!2882304 lt!1776930)))

(declare-fun lt!1776934 () ListMap!4233)

(assert (=> b!4620781 (= lt!1776934 (+!1848 lt!1776462 (h!57500 oldBucket!40)))))

(assert (=> b!4620781 (= lt!1776930 (addToMapMapFromBucket!943 (t!358606 oldBucket!40) (+!1848 lt!1776462 (h!57500 oldBucket!40))))))

(declare-fun lt!1776935 () Unit!110904)

(assert (=> b!4620781 (= lt!1776935 call!322200)))

(assert (=> b!4620781 (forall!10788 (toList!4930 lt!1776462) lambda!190722)))

(declare-fun lt!1776933 () Unit!110904)

(assert (=> b!4620781 (= lt!1776933 lt!1776935)))

(assert (=> b!4620781 (forall!10788 (toList!4930 lt!1776934) lambda!190723)))

(declare-fun lt!1776926 () Unit!110904)

(declare-fun Unit!111015 () Unit!110904)

(assert (=> b!4620781 (= lt!1776926 Unit!111015)))

(assert (=> b!4620781 call!322199))

(declare-fun lt!1776929 () Unit!110904)

(declare-fun Unit!111016 () Unit!110904)

(assert (=> b!4620781 (= lt!1776929 Unit!111016)))

(declare-fun lt!1776946 () Unit!110904)

(declare-fun Unit!111017 () Unit!110904)

(assert (=> b!4620781 (= lt!1776946 Unit!111017)))

(declare-fun lt!1776945 () Unit!110904)

(assert (=> b!4620781 (= lt!1776945 (forallContained!3010 (toList!4930 lt!1776934) lambda!190723 (h!57500 oldBucket!40)))))

(assert (=> b!4620781 (contains!14471 lt!1776934 (_1!29481 (h!57500 oldBucket!40)))))

(declare-fun lt!1776941 () Unit!110904)

(declare-fun Unit!111018 () Unit!110904)

(assert (=> b!4620781 (= lt!1776941 Unit!111018)))

(assert (=> b!4620781 (contains!14471 lt!1776930 (_1!29481 (h!57500 oldBucket!40)))))

(declare-fun lt!1776932 () Unit!110904)

(declare-fun Unit!111019 () Unit!110904)

(assert (=> b!4620781 (= lt!1776932 Unit!111019)))

(assert (=> b!4620781 (forall!10788 oldBucket!40 lambda!190723)))

(declare-fun lt!1776943 () Unit!110904)

(declare-fun Unit!111020 () Unit!110904)

(assert (=> b!4620781 (= lt!1776943 Unit!111020)))

(assert (=> b!4620781 (forall!10788 (toList!4930 lt!1776934) lambda!190723)))

(declare-fun lt!1776940 () Unit!110904)

(declare-fun Unit!111021 () Unit!110904)

(assert (=> b!4620781 (= lt!1776940 Unit!111021)))

(declare-fun lt!1776937 () Unit!110904)

(declare-fun Unit!111022 () Unit!110904)

(assert (=> b!4620781 (= lt!1776937 Unit!111022)))

(declare-fun lt!1776942 () Unit!110904)

(assert (=> b!4620781 (= lt!1776942 (addForallContainsKeyThenBeforeAdding!487 lt!1776462 lt!1776930 (_1!29481 (h!57500 oldBucket!40)) (_2!29481 (h!57500 oldBucket!40))))))

(assert (=> b!4620781 (forall!10788 (toList!4930 lt!1776462) lambda!190723)))

(declare-fun lt!1776939 () Unit!110904)

(assert (=> b!4620781 (= lt!1776939 lt!1776942)))

(assert (=> b!4620781 (forall!10788 (toList!4930 lt!1776462) lambda!190723)))

(declare-fun lt!1776938 () Unit!110904)

(declare-fun Unit!111023 () Unit!110904)

(assert (=> b!4620781 (= lt!1776938 Unit!111023)))

(declare-fun res!1936926 () Bool)

(assert (=> b!4620781 (= res!1936926 call!322201)))

(assert (=> b!4620781 (=> (not res!1936926) (not e!2882305))))

(assert (=> b!4620781 e!2882305))

(declare-fun lt!1776944 () Unit!110904)

(declare-fun Unit!111024 () Unit!110904)

(assert (=> b!4620781 (= lt!1776944 Unit!111024)))

(declare-fun bm!322196 () Bool)

(assert (=> bm!322196 (= call!322199 (forall!10788 (ite c!790966 (toList!4930 lt!1776462) (t!358606 oldBucket!40)) (ite c!790966 lambda!190721 lambda!190723)))))

(assert (=> d!1455261 e!2882303))

(declare-fun res!1936928 () Bool)

(assert (=> d!1455261 (=> (not res!1936928) (not e!2882303))))

(assert (=> d!1455261 (= res!1936928 (forall!10788 oldBucket!40 lambda!190724))))

(assert (=> d!1455261 (= lt!1776931 e!2882304)))

(assert (=> d!1455261 (= c!790966 ((_ is Nil!51468) oldBucket!40))))

(assert (=> d!1455261 (noDuplicateKeys!1482 oldBucket!40)))

(assert (=> d!1455261 (= (addToMapMapFromBucket!943 oldBucket!40 lt!1776462) lt!1776931)))

(assert (= (and d!1455261 c!790966) b!4620780))

(assert (= (and d!1455261 (not c!790966)) b!4620781))

(assert (= (and b!4620781 res!1936926) b!4620777))

(assert (= (or b!4620780 b!4620781) bm!322194))

(assert (= (or b!4620780 b!4620781) bm!322195))

(assert (= (or b!4620780 b!4620781) bm!322196))

(assert (= (and d!1455261 res!1936928) b!4620779))

(assert (= (and b!4620779 res!1936927) b!4620778))

(declare-fun m!5457395 () Bool)

(assert (=> bm!322194 m!5457395))

(declare-fun m!5457397 () Bool)

(assert (=> b!4620781 m!5457397))

(declare-fun m!5457399 () Bool)

(assert (=> b!4620781 m!5457399))

(assert (=> b!4620781 m!5457399))

(declare-fun m!5457401 () Bool)

(assert (=> b!4620781 m!5457401))

(declare-fun m!5457403 () Bool)

(assert (=> b!4620781 m!5457403))

(declare-fun m!5457405 () Bool)

(assert (=> b!4620781 m!5457405))

(declare-fun m!5457407 () Bool)

(assert (=> b!4620781 m!5457407))

(assert (=> b!4620781 m!5457405))

(declare-fun m!5457409 () Bool)

(assert (=> b!4620781 m!5457409))

(declare-fun m!5457411 () Bool)

(assert (=> b!4620781 m!5457411))

(declare-fun m!5457413 () Bool)

(assert (=> b!4620781 m!5457413))

(assert (=> b!4620781 m!5457401))

(declare-fun m!5457415 () Bool)

(assert (=> b!4620781 m!5457415))

(assert (=> b!4620777 m!5457399))

(declare-fun m!5457417 () Bool)

(assert (=> bm!322195 m!5457417))

(declare-fun m!5457419 () Bool)

(assert (=> b!4620778 m!5457419))

(declare-fun m!5457421 () Bool)

(assert (=> b!4620779 m!5457421))

(declare-fun m!5457423 () Bool)

(assert (=> bm!322196 m!5457423))

(declare-fun m!5457425 () Bool)

(assert (=> d!1455261 m!5457425))

(assert (=> d!1455261 m!5456747))

(assert (=> b!4620457 d!1455261))

(declare-fun bs!1020018 () Bool)

(declare-fun d!1455263 () Bool)

(assert (= bs!1020018 (and d!1455263 b!4620453)))

(declare-fun lambda!190725 () Int)

(assert (=> bs!1020018 (= lambda!190725 lambda!190596)))

(declare-fun bs!1020019 () Bool)

(assert (= bs!1020019 (and d!1455263 d!1455151)))

(assert (=> bs!1020019 (= lambda!190725 lambda!190605)))

(declare-fun bs!1020020 () Bool)

(assert (= bs!1020020 (and d!1455263 d!1455255)))

(assert (=> bs!1020020 (= lambda!190725 lambda!190714)))

(declare-fun bs!1020021 () Bool)

(assert (= bs!1020021 (and d!1455263 d!1455257)))

(assert (=> bs!1020021 (= lambda!190725 lambda!190717)))

(declare-fun lt!1776947 () ListMap!4233)

(assert (=> d!1455263 (invariantList!1186 (toList!4930 lt!1776947))))

(declare-fun e!2882306 () ListMap!4233)

(assert (=> d!1455263 (= lt!1776947 e!2882306)))

(declare-fun c!790967 () Bool)

(assert (=> d!1455263 (= c!790967 ((_ is Cons!51469) Nil!51469))))

(assert (=> d!1455263 (forall!10786 Nil!51469 lambda!190725)))

(assert (=> d!1455263 (= (extractMap!1538 Nil!51469) lt!1776947)))

(declare-fun b!4620782 () Bool)

(assert (=> b!4620782 (= e!2882306 (addToMapMapFromBucket!943 (_2!29482 (h!57501 Nil!51469)) (extractMap!1538 (t!358607 Nil!51469))))))

(declare-fun b!4620783 () Bool)

(assert (=> b!4620783 (= e!2882306 (ListMap!4234 Nil!51468))))

(assert (= (and d!1455263 c!790967) b!4620782))

(assert (= (and d!1455263 (not c!790967)) b!4620783))

(declare-fun m!5457427 () Bool)

(assert (=> d!1455263 m!5457427))

(declare-fun m!5457429 () Bool)

(assert (=> d!1455263 m!5457429))

(declare-fun m!5457431 () Bool)

(assert (=> b!4620782 m!5457431))

(assert (=> b!4620782 m!5457431))

(declare-fun m!5457433 () Bool)

(assert (=> b!4620782 m!5457433))

(assert (=> b!4620457 d!1455263))

(declare-fun d!1455265 () Bool)

(declare-fun hash!3456 (Hashable!5879 K!12855) (_ BitVec 64))

(assert (=> d!1455265 (= (hash!3454 hashF!1389 key!4968) (hash!3456 hashF!1389 key!4968))))

(declare-fun bs!1020022 () Bool)

(assert (= bs!1020022 d!1455265))

(declare-fun m!5457435 () Bool)

(assert (=> bs!1020022 m!5457435))

(assert (=> b!4620462 d!1455265))

(declare-fun bs!1020023 () Bool)

(declare-fun d!1455267 () Bool)

(assert (= bs!1020023 (and d!1455267 b!4620759)))

(declare-fun lambda!190726 () Int)

(assert (=> bs!1020023 (not (= lambda!190726 lambda!190711))))

(declare-fun bs!1020024 () Bool)

(assert (= bs!1020024 (and d!1455267 b!4620691)))

(assert (=> bs!1020024 (not (= lambda!190726 lambda!190686))))

(declare-fun bs!1020025 () Bool)

(assert (= bs!1020025 (and d!1455267 b!4620716)))

(assert (=> bs!1020025 (not (= lambda!190726 lambda!190697))))

(assert (=> bs!1020023 (not (= lambda!190726 lambda!190712))))

(assert (=> bs!1020024 (not (= lambda!190726 lambda!190687))))

(declare-fun bs!1020026 () Bool)

(assert (= bs!1020026 (and d!1455267 d!1455243)))

(assert (=> bs!1020026 (not (= lambda!190726 lambda!190709))))

(declare-fun bs!1020027 () Bool)

(assert (= bs!1020027 (and d!1455267 d!1455225)))

(assert (=> bs!1020027 (not (= lambda!190726 lambda!190699))))

(declare-fun bs!1020028 () Bool)

(assert (= bs!1020028 (and d!1455267 b!4620690)))

(assert (=> bs!1020028 (not (= lambda!190726 lambda!190685))))

(declare-fun bs!1020029 () Bool)

(assert (= bs!1020029 (and d!1455267 b!4620781)))

(assert (=> bs!1020029 (not (= lambda!190726 lambda!190723))))

(declare-fun bs!1020030 () Bool)

(assert (= bs!1020030 (and d!1455267 d!1455155)))

(assert (=> bs!1020030 (not (= lambda!190726 lambda!190688))))

(assert (=> bs!1020025 (not (= lambda!190726 lambda!190698))))

(declare-fun bs!1020031 () Bool)

(assert (= bs!1020031 (and d!1455267 b!4620754)))

(assert (=> bs!1020031 (not (= lambda!190726 lambda!190707))))

(declare-fun bs!1020032 () Bool)

(assert (= bs!1020032 (and d!1455267 d!1455259)))

(assert (=> bs!1020032 (= lambda!190726 lambda!190720)))

(declare-fun bs!1020033 () Bool)

(assert (= bs!1020033 (and d!1455267 b!4620780)))

(assert (=> bs!1020033 (not (= lambda!190726 lambda!190721))))

(declare-fun bs!1020034 () Bool)

(assert (= bs!1020034 (and d!1455267 d!1455245)))

(assert (=> bs!1020034 (not (= lambda!190726 lambda!190713))))

(assert (=> bs!1020031 (not (= lambda!190726 lambda!190708))))

(declare-fun bs!1020035 () Bool)

(assert (= bs!1020035 (and d!1455267 b!4620758)))

(assert (=> bs!1020035 (not (= lambda!190726 lambda!190710))))

(declare-fun bs!1020036 () Bool)

(assert (= bs!1020036 (and d!1455267 d!1455261)))

(assert (=> bs!1020036 (not (= lambda!190726 lambda!190724))))

(assert (=> bs!1020029 (not (= lambda!190726 lambda!190722))))

(declare-fun bs!1020037 () Bool)

(assert (= bs!1020037 (and d!1455267 b!4620715)))

(assert (=> bs!1020037 (not (= lambda!190726 lambda!190696))))

(declare-fun bs!1020038 () Bool)

(assert (= bs!1020038 (and d!1455267 b!4620753)))

(assert (=> bs!1020038 (not (= lambda!190726 lambda!190706))))

(assert (=> d!1455267 true))

(assert (=> d!1455267 true))

(assert (=> d!1455267 (= (allKeysSameHash!1336 newBucket!224 hash!414 hashF!1389) (forall!10788 newBucket!224 lambda!190726))))

(declare-fun bs!1020039 () Bool)

(assert (= bs!1020039 d!1455267))

(declare-fun m!5457437 () Bool)

(assert (=> bs!1020039 m!5457437))

(assert (=> b!4620460 d!1455267))

(declare-fun b!4620784 () Bool)

(declare-fun e!2882307 () List!51592)

(assert (=> b!4620784 (= e!2882307 (t!358606 lt!1776466))))

(declare-fun b!4620786 () Bool)

(declare-fun e!2882308 () List!51592)

(assert (=> b!4620786 (= e!2882308 (Cons!51468 (h!57500 lt!1776466) (removePairForKey!1105 (t!358606 lt!1776466) key!4968)))))

(declare-fun d!1455269 () Bool)

(declare-fun lt!1776948 () List!51592)

(assert (=> d!1455269 (not (containsKey!2386 lt!1776948 key!4968))))

(assert (=> d!1455269 (= lt!1776948 e!2882307)))

(declare-fun c!790969 () Bool)

(assert (=> d!1455269 (= c!790969 (and ((_ is Cons!51468) lt!1776466) (= (_1!29481 (h!57500 lt!1776466)) key!4968)))))

(assert (=> d!1455269 (noDuplicateKeys!1482 lt!1776466)))

(assert (=> d!1455269 (= (removePairForKey!1105 lt!1776466 key!4968) lt!1776948)))

(declare-fun b!4620785 () Bool)

(assert (=> b!4620785 (= e!2882307 e!2882308)))

(declare-fun c!790968 () Bool)

(assert (=> b!4620785 (= c!790968 ((_ is Cons!51468) lt!1776466))))

(declare-fun b!4620787 () Bool)

(assert (=> b!4620787 (= e!2882308 Nil!51468)))

(assert (= (and d!1455269 c!790969) b!4620784))

(assert (= (and d!1455269 (not c!790969)) b!4620785))

(assert (= (and b!4620785 c!790968) b!4620786))

(assert (= (and b!4620785 (not c!790968)) b!4620787))

(declare-fun m!5457439 () Bool)

(assert (=> b!4620786 m!5457439))

(declare-fun m!5457441 () Bool)

(assert (=> d!1455269 m!5457441))

(assert (=> d!1455269 m!5457223))

(assert (=> b!4620454 d!1455269))

(declare-fun d!1455271 () Bool)

(assert (=> d!1455271 (= (tail!8117 newBucket!224) (t!358606 newBucket!224))))

(assert (=> b!4620454 d!1455271))

(declare-fun d!1455273 () Bool)

(assert (=> d!1455273 (= (tail!8117 oldBucket!40) (t!358606 oldBucket!40))))

(assert (=> b!4620454 d!1455273))

(declare-fun d!1455275 () Bool)

(declare-fun res!1936929 () Bool)

(declare-fun e!2882309 () Bool)

(assert (=> d!1455275 (=> res!1936929 e!2882309)))

(assert (=> d!1455275 (= res!1936929 (not ((_ is Cons!51468) oldBucket!40)))))

(assert (=> d!1455275 (= (noDuplicateKeys!1482 oldBucket!40) e!2882309)))

(declare-fun b!4620788 () Bool)

(declare-fun e!2882310 () Bool)

(assert (=> b!4620788 (= e!2882309 e!2882310)))

(declare-fun res!1936930 () Bool)

(assert (=> b!4620788 (=> (not res!1936930) (not e!2882310))))

(assert (=> b!4620788 (= res!1936930 (not (containsKey!2386 (t!358606 oldBucket!40) (_1!29481 (h!57500 oldBucket!40)))))))

(declare-fun b!4620789 () Bool)

(assert (=> b!4620789 (= e!2882310 (noDuplicateKeys!1482 (t!358606 oldBucket!40)))))

(assert (= (and d!1455275 (not res!1936929)) b!4620788))

(assert (= (and b!4620788 res!1936930) b!4620789))

(declare-fun m!5457443 () Bool)

(assert (=> b!4620788 m!5457443))

(assert (=> b!4620789 m!5456837))

(assert (=> start!462584 d!1455275))

(declare-fun bs!1020040 () Bool)

(declare-fun d!1455277 () Bool)

(assert (= bs!1020040 (and d!1455277 d!1455257)))

(declare-fun lambda!190733 () Int)

(assert (=> bs!1020040 (= lambda!190733 lambda!190717)))

(declare-fun bs!1020041 () Bool)

(assert (= bs!1020041 (and d!1455277 b!4620453)))

(assert (=> bs!1020041 (= lambda!190733 lambda!190596)))

(declare-fun bs!1020042 () Bool)

(assert (= bs!1020042 (and d!1455277 d!1455263)))

(assert (=> bs!1020042 (= lambda!190733 lambda!190725)))

(declare-fun bs!1020043 () Bool)

(assert (= bs!1020043 (and d!1455277 d!1455255)))

(assert (=> bs!1020043 (= lambda!190733 lambda!190714)))

(declare-fun bs!1020044 () Bool)

(assert (= bs!1020044 (and d!1455277 d!1455151)))

(assert (=> bs!1020044 (= lambda!190733 lambda!190605)))

(declare-fun b!4620798 () Bool)

(declare-fun res!1936942 () Bool)

(declare-fun e!2882316 () Bool)

(assert (=> b!4620798 (=> (not res!1936942) (not e!2882316))))

(declare-fun allKeysSameHashInMap!1512 (ListLongMap!3519 Hashable!5879) Bool)

(assert (=> b!4620798 (= res!1936942 (allKeysSameHashInMap!1512 lt!1776456 hashF!1389))))

(assert (=> d!1455277 e!2882316))

(declare-fun res!1936939 () Bool)

(assert (=> d!1455277 (=> (not res!1936939) (not e!2882316))))

(assert (=> d!1455277 (= res!1936939 (forall!10786 (toList!4929 lt!1776456) lambda!190733))))

(declare-fun lt!1776971 () Unit!110904)

(declare-fun choose!31179 (ListLongMap!3519 K!12855 Hashable!5879) Unit!110904)

(assert (=> d!1455277 (= lt!1776971 (choose!31179 lt!1776456 key!4968 hashF!1389))))

(assert (=> d!1455277 (forall!10786 (toList!4929 lt!1776456) lambda!190733)))

(assert (=> d!1455277 (= (lemmaInGenMapThenGetPairDefined!70 lt!1776456 key!4968 hashF!1389) lt!1776971)))

(declare-fun b!4620799 () Bool)

(declare-fun res!1936940 () Bool)

(assert (=> b!4620799 (=> (not res!1936940) (not e!2882316))))

(assert (=> b!4620799 (= res!1936940 (contains!14471 (extractMap!1538 (toList!4929 lt!1776456)) key!4968))))

(declare-fun b!4620800 () Bool)

(assert (=> b!4620800 (= e!2882316 (isDefined!8793 (getPair!274 (apply!12147 lt!1776456 (hash!3454 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1776965 () Unit!110904)

(assert (=> b!4620800 (= lt!1776965 (forallContained!3008 (toList!4929 lt!1776456) lambda!190733 (tuple2!52377 (hash!3454 hashF!1389 key!4968) (apply!12147 lt!1776456 (hash!3454 hashF!1389 key!4968)))))))

(declare-fun lt!1776970 () Unit!110904)

(declare-fun lt!1776969 () Unit!110904)

(assert (=> b!4620800 (= lt!1776970 lt!1776969)))

(declare-fun lt!1776972 () (_ BitVec 64))

(declare-fun lt!1776967 () List!51592)

(assert (=> b!4620800 (contains!14469 (toList!4929 lt!1776456) (tuple2!52377 lt!1776972 lt!1776967))))

(assert (=> b!4620800 (= lt!1776969 (lemmaGetValueImpliesTupleContained!79 lt!1776456 lt!1776972 lt!1776967))))

(declare-fun e!2882315 () Bool)

(assert (=> b!4620800 e!2882315))

(declare-fun res!1936941 () Bool)

(assert (=> b!4620800 (=> (not res!1936941) (not e!2882315))))

(assert (=> b!4620800 (= res!1936941 (contains!14470 lt!1776456 lt!1776972))))

(assert (=> b!4620800 (= lt!1776967 (apply!12147 lt!1776456 (hash!3454 hashF!1389 key!4968)))))

(assert (=> b!4620800 (= lt!1776972 (hash!3454 hashF!1389 key!4968))))

(declare-fun lt!1776968 () Unit!110904)

(declare-fun lt!1776966 () Unit!110904)

(assert (=> b!4620800 (= lt!1776968 lt!1776966)))

(assert (=> b!4620800 (contains!14470 lt!1776456 (hash!3454 hashF!1389 key!4968))))

(assert (=> b!4620800 (= lt!1776966 (lemmaInGenMapThenLongMapContainsHash!480 lt!1776456 key!4968 hashF!1389))))

(declare-fun b!4620801 () Bool)

(declare-datatypes ((Option!11532 0))(
  ( (None!11531) (Some!11531 (v!45625 List!51592)) )
))
(declare-fun getValueByKey!1416 (List!51593 (_ BitVec 64)) Option!11532)

(assert (=> b!4620801 (= e!2882315 (= (getValueByKey!1416 (toList!4929 lt!1776456) lt!1776972) (Some!11531 lt!1776967)))))

(assert (= (and d!1455277 res!1936939) b!4620798))

(assert (= (and b!4620798 res!1936942) b!4620799))

(assert (= (and b!4620799 res!1936940) b!4620800))

(assert (= (and b!4620800 res!1936941) b!4620801))

(declare-fun m!5457445 () Bool)

(assert (=> b!4620798 m!5457445))

(declare-fun m!5457447 () Bool)

(assert (=> b!4620800 m!5457447))

(assert (=> b!4620800 m!5456753))

(declare-fun m!5457449 () Bool)

(assert (=> b!4620800 m!5457449))

(assert (=> b!4620800 m!5456691))

(assert (=> b!4620800 m!5456753))

(declare-fun m!5457451 () Bool)

(assert (=> b!4620800 m!5457451))

(assert (=> b!4620800 m!5456753))

(assert (=> b!4620800 m!5457449))

(declare-fun m!5457453 () Bool)

(assert (=> b!4620800 m!5457453))

(declare-fun m!5457455 () Bool)

(assert (=> b!4620800 m!5457455))

(declare-fun m!5457457 () Bool)

(assert (=> b!4620800 m!5457457))

(declare-fun m!5457459 () Bool)

(assert (=> b!4620800 m!5457459))

(assert (=> b!4620800 m!5457453))

(declare-fun m!5457461 () Bool)

(assert (=> b!4620800 m!5457461))

(declare-fun m!5457463 () Bool)

(assert (=> d!1455277 m!5457463))

(declare-fun m!5457465 () Bool)

(assert (=> d!1455277 m!5457465))

(assert (=> d!1455277 m!5457463))

(declare-fun m!5457467 () Bool)

(assert (=> b!4620801 m!5457467))

(declare-fun m!5457469 () Bool)

(assert (=> b!4620799 m!5457469))

(assert (=> b!4620799 m!5457469))

(declare-fun m!5457471 () Bool)

(assert (=> b!4620799 m!5457471))

(assert (=> b!4620453 d!1455277))

(declare-fun d!1455279 () Bool)

(declare-fun get!17029 (Option!11532) List!51592)

(assert (=> d!1455279 (= (apply!12147 lt!1776456 lt!1776453) (get!17029 (getValueByKey!1416 (toList!4929 lt!1776456) lt!1776453)))))

(declare-fun bs!1020045 () Bool)

(assert (= bs!1020045 d!1455279))

(declare-fun m!5457473 () Bool)

(assert (=> bs!1020045 m!5457473))

(assert (=> bs!1020045 m!5457473))

(declare-fun m!5457475 () Bool)

(assert (=> bs!1020045 m!5457475))

(assert (=> b!4620453 d!1455279))

(declare-fun d!1455281 () Bool)

(declare-fun e!2882328 () Bool)

(assert (=> d!1455281 e!2882328))

(declare-fun res!1936954 () Bool)

(assert (=> d!1455281 (=> res!1936954 e!2882328)))

(declare-fun e!2882330 () Bool)

(assert (=> d!1455281 (= res!1936954 e!2882330)))

(declare-fun res!1936953 () Bool)

(assert (=> d!1455281 (=> (not res!1936953) (not e!2882330))))

(declare-fun lt!1776975 () Option!11528)

(declare-fun isEmpty!28912 (Option!11528) Bool)

(assert (=> d!1455281 (= res!1936953 (isEmpty!28912 lt!1776975))))

(declare-fun e!2882329 () Option!11528)

(assert (=> d!1455281 (= lt!1776975 e!2882329)))

(declare-fun c!790974 () Bool)

(assert (=> d!1455281 (= c!790974 (and ((_ is Cons!51468) lt!1776460) (= (_1!29481 (h!57500 lt!1776460)) key!4968)))))

(assert (=> d!1455281 (noDuplicateKeys!1482 lt!1776460)))

(assert (=> d!1455281 (= (getPair!274 lt!1776460 key!4968) lt!1776975)))

(declare-fun b!4620818 () Bool)

(assert (=> b!4620818 (= e!2882330 (not (containsKey!2386 lt!1776460 key!4968)))))

(declare-fun b!4620819 () Bool)

(assert (=> b!4620819 (= e!2882329 (Some!11527 (h!57500 lt!1776460)))))

(declare-fun b!4620820 () Bool)

(declare-fun e!2882331 () Bool)

(assert (=> b!4620820 (= e!2882328 e!2882331)))

(declare-fun res!1936952 () Bool)

(assert (=> b!4620820 (=> (not res!1936952) (not e!2882331))))

(assert (=> b!4620820 (= res!1936952 (isDefined!8793 lt!1776975))))

(declare-fun b!4620821 () Bool)

(declare-fun e!2882327 () Option!11528)

(assert (=> b!4620821 (= e!2882327 None!11527)))

(declare-fun b!4620822 () Bool)

(declare-fun get!17030 (Option!11528) tuple2!52374)

(assert (=> b!4620822 (= e!2882331 (contains!14475 lt!1776460 (get!17030 lt!1776975)))))

(declare-fun b!4620823 () Bool)

(declare-fun res!1936951 () Bool)

(assert (=> b!4620823 (=> (not res!1936951) (not e!2882331))))

(assert (=> b!4620823 (= res!1936951 (= (_1!29481 (get!17030 lt!1776975)) key!4968))))

(declare-fun b!4620824 () Bool)

(assert (=> b!4620824 (= e!2882329 e!2882327)))

(declare-fun c!790975 () Bool)

(assert (=> b!4620824 (= c!790975 ((_ is Cons!51468) lt!1776460))))

(declare-fun b!4620825 () Bool)

(assert (=> b!4620825 (= e!2882327 (getPair!274 (t!358606 lt!1776460) key!4968))))

(assert (= (and d!1455281 c!790974) b!4620819))

(assert (= (and d!1455281 (not c!790974)) b!4620824))

(assert (= (and b!4620824 c!790975) b!4620825))

(assert (= (and b!4620824 (not c!790975)) b!4620821))

(assert (= (and d!1455281 res!1936953) b!4620818))

(assert (= (and d!1455281 (not res!1936954)) b!4620820))

(assert (= (and b!4620820 res!1936952) b!4620823))

(assert (= (and b!4620823 res!1936951) b!4620822))

(declare-fun m!5457477 () Bool)

(assert (=> b!4620822 m!5457477))

(assert (=> b!4620822 m!5457477))

(declare-fun m!5457479 () Bool)

(assert (=> b!4620822 m!5457479))

(declare-fun m!5457481 () Bool)

(assert (=> d!1455281 m!5457481))

(declare-fun m!5457483 () Bool)

(assert (=> d!1455281 m!5457483))

(declare-fun m!5457485 () Bool)

(assert (=> b!4620820 m!5457485))

(assert (=> b!4620823 m!5457477))

(declare-fun m!5457487 () Bool)

(assert (=> b!4620818 m!5457487))

(declare-fun m!5457489 () Bool)

(assert (=> b!4620825 m!5457489))

(assert (=> b!4620453 d!1455281))

(declare-fun d!1455283 () Bool)

(assert (=> d!1455283 (dynLambda!21480 lambda!190596 lt!1776470)))

(declare-fun lt!1776978 () Unit!110904)

(declare-fun choose!31180 (List!51593 Int tuple2!52376) Unit!110904)

(assert (=> d!1455283 (= lt!1776978 (choose!31180 lt!1776471 lambda!190596 lt!1776470))))

(declare-fun e!2882334 () Bool)

(assert (=> d!1455283 e!2882334))

(declare-fun res!1936957 () Bool)

(assert (=> d!1455283 (=> (not res!1936957) (not e!2882334))))

(assert (=> d!1455283 (= res!1936957 (forall!10786 lt!1776471 lambda!190596))))

(assert (=> d!1455283 (= (forallContained!3008 lt!1776471 lambda!190596 lt!1776470) lt!1776978)))

(declare-fun b!4620828 () Bool)

(assert (=> b!4620828 (= e!2882334 (contains!14469 lt!1776471 lt!1776470))))

(assert (= (and d!1455283 res!1936957) b!4620828))

(declare-fun b_lambda!170623 () Bool)

(assert (=> (not b_lambda!170623) (not d!1455283)))

(declare-fun m!5457491 () Bool)

(assert (=> d!1455283 m!5457491))

(declare-fun m!5457493 () Bool)

(assert (=> d!1455283 m!5457493))

(assert (=> d!1455283 m!5456743))

(assert (=> b!4620828 m!5456703))

(assert (=> b!4620453 d!1455283))

(declare-fun d!1455285 () Bool)

(assert (=> d!1455285 (containsKey!2386 oldBucket!40 key!4968)))

(declare-fun lt!1776981 () Unit!110904)

(declare-fun choose!31181 (List!51592 K!12855 Hashable!5879) Unit!110904)

(assert (=> d!1455285 (= lt!1776981 (choose!31181 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1455285 (noDuplicateKeys!1482 oldBucket!40)))

(assert (=> d!1455285 (= (lemmaGetPairDefinedThenContainsKey!28 oldBucket!40 key!4968 hashF!1389) lt!1776981)))

(declare-fun bs!1020046 () Bool)

(assert (= bs!1020046 d!1455285))

(assert (=> bs!1020046 m!5456699))

(declare-fun m!5457495 () Bool)

(assert (=> bs!1020046 m!5457495))

(assert (=> bs!1020046 m!5456747))

(assert (=> b!4620453 d!1455285))

(declare-fun bs!1020047 () Bool)

(declare-fun d!1455287 () Bool)

(assert (= bs!1020047 (and d!1455287 d!1455257)))

(declare-fun lambda!190736 () Int)

(assert (=> bs!1020047 (= lambda!190736 lambda!190717)))

(declare-fun bs!1020048 () Bool)

(assert (= bs!1020048 (and d!1455287 b!4620453)))

(assert (=> bs!1020048 (= lambda!190736 lambda!190596)))

(declare-fun bs!1020049 () Bool)

(assert (= bs!1020049 (and d!1455287 d!1455277)))

(assert (=> bs!1020049 (= lambda!190736 lambda!190733)))

(declare-fun bs!1020050 () Bool)

(assert (= bs!1020050 (and d!1455287 d!1455263)))

(assert (=> bs!1020050 (= lambda!190736 lambda!190725)))

(declare-fun bs!1020051 () Bool)

(assert (= bs!1020051 (and d!1455287 d!1455255)))

(assert (=> bs!1020051 (= lambda!190736 lambda!190714)))

(declare-fun bs!1020052 () Bool)

(assert (= bs!1020052 (and d!1455287 d!1455151)))

(assert (=> bs!1020052 (= lambda!190736 lambda!190605)))

(assert (=> d!1455287 (contains!14470 lt!1776456 (hash!3454 hashF!1389 key!4968))))

(declare-fun lt!1776984 () Unit!110904)

(declare-fun choose!31182 (ListLongMap!3519 K!12855 Hashable!5879) Unit!110904)

(assert (=> d!1455287 (= lt!1776984 (choose!31182 lt!1776456 key!4968 hashF!1389))))

(assert (=> d!1455287 (forall!10786 (toList!4929 lt!1776456) lambda!190736)))

(assert (=> d!1455287 (= (lemmaInGenMapThenLongMapContainsHash!480 lt!1776456 key!4968 hashF!1389) lt!1776984)))

(declare-fun bs!1020053 () Bool)

(assert (= bs!1020053 d!1455287))

(assert (=> bs!1020053 m!5456753))

(assert (=> bs!1020053 m!5456753))

(assert (=> bs!1020053 m!5457451))

(declare-fun m!5457497 () Bool)

(assert (=> bs!1020053 m!5457497))

(declare-fun m!5457499 () Bool)

(assert (=> bs!1020053 m!5457499))

(assert (=> b!4620453 d!1455287))

(declare-fun d!1455289 () Bool)

(declare-fun res!1936962 () Bool)

(declare-fun e!2882339 () Bool)

(assert (=> d!1455289 (=> res!1936962 e!2882339)))

(assert (=> d!1455289 (= res!1936962 (and ((_ is Cons!51468) (t!358606 oldBucket!40)) (= (_1!29481 (h!57500 (t!358606 oldBucket!40))) key!4968)))))

(assert (=> d!1455289 (= (containsKey!2386 (t!358606 oldBucket!40) key!4968) e!2882339)))

(declare-fun b!4620833 () Bool)

(declare-fun e!2882340 () Bool)

(assert (=> b!4620833 (= e!2882339 e!2882340)))

(declare-fun res!1936963 () Bool)

(assert (=> b!4620833 (=> (not res!1936963) (not e!2882340))))

(assert (=> b!4620833 (= res!1936963 ((_ is Cons!51468) (t!358606 oldBucket!40)))))

(declare-fun b!4620834 () Bool)

(assert (=> b!4620834 (= e!2882340 (containsKey!2386 (t!358606 (t!358606 oldBucket!40)) key!4968))))

(assert (= (and d!1455289 (not res!1936962)) b!4620833))

(assert (= (and b!4620833 res!1936963) b!4620834))

(declare-fun m!5457501 () Bool)

(assert (=> b!4620834 m!5457501))

(assert (=> b!4620453 d!1455289))

(declare-fun d!1455291 () Bool)

(assert (=> d!1455291 (= (isDefined!8793 (getPair!274 lt!1776460 key!4968)) (not (isEmpty!28912 (getPair!274 lt!1776460 key!4968))))))

(declare-fun bs!1020054 () Bool)

(assert (= bs!1020054 d!1455291))

(assert (=> bs!1020054 m!5456689))

(declare-fun m!5457503 () Bool)

(assert (=> bs!1020054 m!5457503))

(assert (=> b!4620453 d!1455291))

(declare-fun d!1455293 () Bool)

(assert (=> d!1455293 (contains!14469 (toList!4929 lt!1776456) (tuple2!52377 lt!1776453 lt!1776460))))

(declare-fun lt!1776987 () Unit!110904)

(declare-fun choose!31183 (ListLongMap!3519 (_ BitVec 64) List!51592) Unit!110904)

(assert (=> d!1455293 (= lt!1776987 (choose!31183 lt!1776456 lt!1776453 lt!1776460))))

(assert (=> d!1455293 (contains!14470 lt!1776456 lt!1776453)))

(assert (=> d!1455293 (= (lemmaGetValueImpliesTupleContained!79 lt!1776456 lt!1776453 lt!1776460) lt!1776987)))

(declare-fun bs!1020055 () Bool)

(assert (= bs!1020055 d!1455293))

(declare-fun m!5457505 () Bool)

(assert (=> bs!1020055 m!5457505))

(declare-fun m!5457507 () Bool)

(assert (=> bs!1020055 m!5457507))

(assert (=> bs!1020055 m!5456705))

(assert (=> b!4620453 d!1455293))

(declare-fun d!1455295 () Bool)

(declare-fun res!1936964 () Bool)

(declare-fun e!2882341 () Bool)

(assert (=> d!1455295 (=> res!1936964 e!2882341)))

(assert (=> d!1455295 (= res!1936964 (and ((_ is Cons!51468) oldBucket!40) (= (_1!29481 (h!57500 oldBucket!40)) key!4968)))))

(assert (=> d!1455295 (= (containsKey!2386 oldBucket!40 key!4968) e!2882341)))

(declare-fun b!4620836 () Bool)

(declare-fun e!2882342 () Bool)

(assert (=> b!4620836 (= e!2882341 e!2882342)))

(declare-fun res!1936965 () Bool)

(assert (=> b!4620836 (=> (not res!1936965) (not e!2882342))))

(assert (=> b!4620836 (= res!1936965 ((_ is Cons!51468) oldBucket!40))))

(declare-fun b!4620837 () Bool)

(assert (=> b!4620837 (= e!2882342 (containsKey!2386 (t!358606 oldBucket!40) key!4968))))

(assert (= (and d!1455295 (not res!1936964)) b!4620836))

(assert (= (and b!4620836 res!1936965) b!4620837))

(assert (=> b!4620837 m!5456707))

(assert (=> b!4620453 d!1455295))

(declare-fun d!1455297 () Bool)

(declare-fun e!2882347 () Bool)

(assert (=> d!1455297 e!2882347))

(declare-fun res!1936968 () Bool)

(assert (=> d!1455297 (=> res!1936968 e!2882347)))

(declare-fun lt!1776998 () Bool)

(assert (=> d!1455297 (= res!1936968 (not lt!1776998))))

(declare-fun lt!1776996 () Bool)

(assert (=> d!1455297 (= lt!1776998 lt!1776996)))

(declare-fun lt!1776997 () Unit!110904)

(declare-fun e!2882348 () Unit!110904)

(assert (=> d!1455297 (= lt!1776997 e!2882348)))

(declare-fun c!790978 () Bool)

(assert (=> d!1455297 (= c!790978 lt!1776996)))

(declare-fun containsKey!2390 (List!51593 (_ BitVec 64)) Bool)

(assert (=> d!1455297 (= lt!1776996 (containsKey!2390 (toList!4929 lt!1776456) lt!1776453))))

(assert (=> d!1455297 (= (contains!14470 lt!1776456 lt!1776453) lt!1776998)))

(declare-fun b!4620844 () Bool)

(declare-fun lt!1776999 () Unit!110904)

(assert (=> b!4620844 (= e!2882348 lt!1776999)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1318 (List!51593 (_ BitVec 64)) Unit!110904)

(assert (=> b!4620844 (= lt!1776999 (lemmaContainsKeyImpliesGetValueByKeyDefined!1318 (toList!4929 lt!1776456) lt!1776453))))

(declare-fun isDefined!8797 (Option!11532) Bool)

(assert (=> b!4620844 (isDefined!8797 (getValueByKey!1416 (toList!4929 lt!1776456) lt!1776453))))

(declare-fun b!4620845 () Bool)

(declare-fun Unit!111025 () Unit!110904)

(assert (=> b!4620845 (= e!2882348 Unit!111025)))

(declare-fun b!4620846 () Bool)

(assert (=> b!4620846 (= e!2882347 (isDefined!8797 (getValueByKey!1416 (toList!4929 lt!1776456) lt!1776453)))))

(assert (= (and d!1455297 c!790978) b!4620844))

(assert (= (and d!1455297 (not c!790978)) b!4620845))

(assert (= (and d!1455297 (not res!1936968)) b!4620846))

(declare-fun m!5457509 () Bool)

(assert (=> d!1455297 m!5457509))

(declare-fun m!5457511 () Bool)

(assert (=> b!4620844 m!5457511))

(assert (=> b!4620844 m!5457473))

(assert (=> b!4620844 m!5457473))

(declare-fun m!5457513 () Bool)

(assert (=> b!4620844 m!5457513))

(assert (=> b!4620846 m!5457473))

(assert (=> b!4620846 m!5457473))

(assert (=> b!4620846 m!5457513))

(assert (=> b!4620453 d!1455297))

(declare-fun d!1455299 () Bool)

(declare-fun lt!1777002 () Bool)

(declare-fun content!8758 (List!51593) (InoxSet tuple2!52376))

(assert (=> d!1455299 (= lt!1777002 (select (content!8758 lt!1776471) lt!1776470))))

(declare-fun e!2882354 () Bool)

(assert (=> d!1455299 (= lt!1777002 e!2882354)))

(declare-fun res!1936974 () Bool)

(assert (=> d!1455299 (=> (not res!1936974) (not e!2882354))))

(assert (=> d!1455299 (= res!1936974 ((_ is Cons!51469) lt!1776471))))

(assert (=> d!1455299 (= (contains!14469 lt!1776471 lt!1776470) lt!1777002)))

(declare-fun b!4620851 () Bool)

(declare-fun e!2882353 () Bool)

(assert (=> b!4620851 (= e!2882354 e!2882353)))

(declare-fun res!1936973 () Bool)

(assert (=> b!4620851 (=> res!1936973 e!2882353)))

(assert (=> b!4620851 (= res!1936973 (= (h!57501 lt!1776471) lt!1776470))))

(declare-fun b!4620852 () Bool)

(assert (=> b!4620852 (= e!2882353 (contains!14469 (t!358607 lt!1776471) lt!1776470))))

(assert (= (and d!1455299 res!1936974) b!4620851))

(assert (= (and b!4620851 (not res!1936973)) b!4620852))

(declare-fun m!5457515 () Bool)

(assert (=> d!1455299 m!5457515))

(declare-fun m!5457517 () Bool)

(assert (=> d!1455299 m!5457517))

(declare-fun m!5457519 () Bool)

(assert (=> b!4620852 m!5457519))

(assert (=> b!4620453 d!1455299))

(declare-fun b!4620853 () Bool)

(declare-fun e!2882355 () List!51592)

(assert (=> b!4620853 (= e!2882355 (t!358606 oldBucket!40))))

(declare-fun b!4620855 () Bool)

(declare-fun e!2882356 () List!51592)

(assert (=> b!4620855 (= e!2882356 (Cons!51468 (h!57500 oldBucket!40) (removePairForKey!1105 (t!358606 oldBucket!40) key!4968)))))

(declare-fun d!1455301 () Bool)

(declare-fun lt!1777003 () List!51592)

(assert (=> d!1455301 (not (containsKey!2386 lt!1777003 key!4968))))

(assert (=> d!1455301 (= lt!1777003 e!2882355)))

(declare-fun c!790980 () Bool)

(assert (=> d!1455301 (= c!790980 (and ((_ is Cons!51468) oldBucket!40) (= (_1!29481 (h!57500 oldBucket!40)) key!4968)))))

(assert (=> d!1455301 (noDuplicateKeys!1482 oldBucket!40)))

(assert (=> d!1455301 (= (removePairForKey!1105 oldBucket!40 key!4968) lt!1777003)))

(declare-fun b!4620854 () Bool)

(assert (=> b!4620854 (= e!2882355 e!2882356)))

(declare-fun c!790979 () Bool)

(assert (=> b!4620854 (= c!790979 ((_ is Cons!51468) oldBucket!40))))

(declare-fun b!4620856 () Bool)

(assert (=> b!4620856 (= e!2882356 Nil!51468)))

(assert (= (and d!1455301 c!790980) b!4620853))

(assert (= (and d!1455301 (not c!790980)) b!4620854))

(assert (= (and b!4620854 c!790979) b!4620855))

(assert (= (and b!4620854 (not c!790979)) b!4620856))

(assert (=> b!4620855 m!5456711))

(declare-fun m!5457521 () Bool)

(assert (=> d!1455301 m!5457521))

(assert (=> d!1455301 m!5456747))

(assert (=> b!4620463 d!1455301))

(declare-fun e!2882359 () Bool)

(declare-fun b!4620861 () Bool)

(declare-fun tp!1341898 () Bool)

(assert (=> b!4620861 (= e!2882359 (and tp_is_empty!29221 tp_is_empty!29223 tp!1341898))))

(assert (=> b!4620455 (= tp!1341891 e!2882359)))

(assert (= (and b!4620455 ((_ is Cons!51468) (t!358606 newBucket!224))) b!4620861))

(declare-fun tp!1341899 () Bool)

(declare-fun e!2882360 () Bool)

(declare-fun b!4620862 () Bool)

(assert (=> b!4620862 (= e!2882360 (and tp_is_empty!29221 tp_is_empty!29223 tp!1341899))))

(assert (=> b!4620464 (= tp!1341890 e!2882360)))

(assert (= (and b!4620464 ((_ is Cons!51468) (t!358606 oldBucket!40))) b!4620862))

(declare-fun b_lambda!170625 () Bool)

(assert (= b_lambda!170621 (or b!4620453 b_lambda!170625)))

(declare-fun bs!1020056 () Bool)

(declare-fun d!1455303 () Bool)

(assert (= bs!1020056 (and d!1455303 b!4620453)))

(assert (=> bs!1020056 (= (dynLambda!21480 lambda!190596 (h!57501 lt!1776471)) (noDuplicateKeys!1482 (_2!29482 (h!57501 lt!1776471))))))

(declare-fun m!5457523 () Bool)

(assert (=> bs!1020056 m!5457523))

(assert (=> b!4620748 d!1455303))

(declare-fun b_lambda!170627 () Bool)

(assert (= b_lambda!170623 (or b!4620453 b_lambda!170627)))

(declare-fun bs!1020057 () Bool)

(declare-fun d!1455305 () Bool)

(assert (= bs!1020057 (and d!1455305 b!4620453)))

(assert (=> bs!1020057 (= (dynLambda!21480 lambda!190596 lt!1776470) (noDuplicateKeys!1482 (_2!29482 lt!1776470)))))

(declare-fun m!5457525 () Bool)

(assert (=> bs!1020057 m!5457525))

(assert (=> d!1455283 d!1455305))

(check-sat (not b!4620778) (not b!4620550) (not d!1455263) (not b!4620750) (not b!4620714) (not d!1455267) (not b!4620771) (not d!1455299) (not d!1455253) (not b!4620779) (not d!1455149) (not b!4620754) (not b!4620786) (not b!4620788) (not d!1455277) (not b!4620500) (not bm!322195) (not b!4620770) (not b!4620789) (not b!4620764) (not b!4620691) (not b!4620710) (not bm!322180) (not bm!322179) (not b!4620688) (not b!4620687) (not d!1455293) (not bs!1020056) (not d!1455285) (not b!4620823) (not b!4620755) (not b!4620798) (not b!4620834) (not d!1455225) (not d!1455151) (not b!4620759) (not b!4620855) (not b_lambda!170625) (not b!4620523) (not b!4620846) (not b!4620763) (not b!4620800) (not d!1455291) (not d!1455153) (not b!4620782) (not b!4620762) (not bm!322190) (not bs!1020057) (not b!4620777) (not bm!322182) (not b!4620861) (not b!4620756) (not d!1455251) (not d!1455247) (not b!4620837) (not b!4620799) (not d!1455249) (not d!1455155) (not b!4620749) (not d!1455279) (not b!4620711) (not bm!322191) (not b!4620765) (not b!4620825) (not d!1455297) (not d!1455245) (not d!1455283) (not d!1455243) (not b!4620689) (not b!4620712) (not b!4620761) (not bm!322188) (not b!4620801) (not b!4620751) (not b!4620822) (not b!4620852) (not d!1455261) (not b!4620522) (not bm!322177) (not bm!322178) (not b!4620844) (not b!4620767) (not b!4620757) (not d!1455259) (not b!4620828) (not bm!322192) (not b_lambda!170627) (not b!4620769) (not d!1455215) (not b!4620768) (not b!4620521) (not d!1455265) tp_is_empty!29223 (not d!1455219) (not bm!322187) (not d!1455255) (not b!4620526) (not b!4620781) (not bm!322194) (not d!1455301) (not b!4620818) (not bm!322196) (not d!1455269) (not b!4620752) (not b!4620820) (not b!4620527) (not d!1455233) (not b!4620862) (not d!1455257) (not bm!322189) (not d!1455281) (not b!4620713) (not b!4620499) (not b!4620532) (not b!4620520) (not bm!322193) (not b!4620524) tp_is_empty!29221 (not b!4620716) (not d!1455287) (not bm!322149) (not bm!322181))
(check-sat)
