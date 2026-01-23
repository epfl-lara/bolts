; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!464352 () Bool)

(assert start!464352)

(declare-fun b!4629042 () Bool)

(declare-fun res!1941803 () Bool)

(declare-fun e!2887613 () Bool)

(assert (=> b!4629042 (=> (not res!1941803) (not e!2887613))))

(declare-datatypes ((Hashable!5919 0))(
  ( (HashableExt!5918 (__x!31622 Int)) )
))
(declare-fun hashF!1389 () Hashable!5919)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12955 0))(
  ( (K!12956 (val!18635 Int)) )
))
(declare-datatypes ((V!13201 0))(
  ( (V!13202 (val!18636 Int)) )
))
(declare-datatypes ((tuple2!52534 0))(
  ( (tuple2!52535 (_1!29561 K!12955) (_2!29561 V!13201)) )
))
(declare-datatypes ((List!51704 0))(
  ( (Nil!51580) (Cons!51580 (h!57644 tuple2!52534) (t!358750 List!51704)) )
))
(declare-fun oldBucket!40 () List!51704)

(declare-fun allKeysSameHash!1376 (List!51704 (_ BitVec 64) Hashable!5919) Bool)

(assert (=> b!4629042 (= res!1941803 (allKeysSameHash!1376 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4629043 () Bool)

(declare-fun e!2887619 () Bool)

(declare-fun e!2887608 () Bool)

(assert (=> b!4629043 (= e!2887619 e!2887608)))

(declare-fun res!1941799 () Bool)

(assert (=> b!4629043 (=> res!1941799 e!2887608)))

(declare-datatypes ((ListMap!4313 0))(
  ( (ListMap!4314 (toList!5009 List!51704)) )
))
(declare-fun lt!1788457 () ListMap!4313)

(declare-fun lt!1788435 () ListMap!4313)

(assert (=> b!4629043 (= res!1941799 (not (= lt!1788457 lt!1788435)))))

(declare-fun lt!1788456 () ListMap!4313)

(declare-fun +!1888 (ListMap!4313 tuple2!52534) ListMap!4313)

(assert (=> b!4629043 (= lt!1788435 (+!1888 lt!1788456 (h!57644 oldBucket!40)))))

(declare-fun lt!1788431 () ListMap!4313)

(declare-fun key!4968 () K!12955)

(declare-fun -!562 (ListMap!4313 K!12955) ListMap!4313)

(assert (=> b!4629043 (= lt!1788457 (-!562 lt!1788431 key!4968))))

(declare-fun lt!1788448 () ListMap!4313)

(assert (=> b!4629043 (= lt!1788431 (+!1888 lt!1788448 (h!57644 oldBucket!40)))))

(assert (=> b!4629043 (= (-!562 (+!1888 lt!1788448 (h!57644 oldBucket!40)) key!4968) (+!1888 lt!1788456 (h!57644 oldBucket!40)))))

(declare-datatypes ((Unit!112884 0))(
  ( (Unit!112885) )
))
(declare-fun lt!1788446 () Unit!112884)

(declare-fun addRemoveCommutativeForDiffKeys!17 (ListMap!4313 K!12955 V!13201 K!12955) Unit!112884)

(assert (=> b!4629043 (= lt!1788446 (addRemoveCommutativeForDiffKeys!17 lt!1788448 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40)) key!4968))))

(declare-fun lt!1788461 () ListMap!4313)

(declare-fun eq!837 (ListMap!4313 ListMap!4313) Bool)

(assert (=> b!4629043 (eq!837 lt!1788461 lt!1788456)))

(assert (=> b!4629043 (= lt!1788456 (-!562 lt!1788448 key!4968))))

(declare-fun lt!1788452 () Unit!112884)

(declare-fun lt!1788438 () List!51704)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!124 ((_ BitVec 64) List!51704 List!51704 K!12955 Hashable!5919) Unit!112884)

(assert (=> b!4629043 (= lt!1788452 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!124 hash!414 (t!358750 oldBucket!40) lt!1788438 key!4968 hashF!1389))))

(declare-fun b!4629044 () Bool)

(declare-fun e!2887615 () Bool)

(declare-fun lt!1788437 () ListMap!4313)

(assert (=> b!4629044 (= e!2887615 (= lt!1788437 (ListMap!4314 Nil!51580)))))

(declare-fun b!4629045 () Bool)

(declare-fun res!1941810 () Bool)

(declare-fun e!2887612 () Bool)

(assert (=> b!4629045 (=> res!1941810 e!2887612)))

(declare-fun removePairForKey!1145 (List!51704 K!12955) List!51704)

(assert (=> b!4629045 (= res!1941810 (not (= (removePairForKey!1145 (t!358750 oldBucket!40) key!4968) lt!1788438)))))

(declare-fun b!4629046 () Bool)

(declare-fun e!2887611 () Bool)

(assert (=> b!4629046 (= e!2887611 e!2887619)))

(declare-fun res!1941805 () Bool)

(assert (=> b!4629046 (=> res!1941805 e!2887619)))

(declare-fun lt!1788459 () tuple2!52534)

(declare-fun lt!1788433 () ListMap!4313)

(assert (=> b!4629046 (= res!1941805 (not (eq!837 lt!1788433 (+!1888 lt!1788461 lt!1788459))))))

(declare-datatypes ((tuple2!52536 0))(
  ( (tuple2!52537 (_1!29562 (_ BitVec 64)) (_2!29562 List!51704)) )
))
(declare-datatypes ((List!51705 0))(
  ( (Nil!51581) (Cons!51581 (h!57645 tuple2!52536) (t!358751 List!51705)) )
))
(declare-fun extractMap!1578 (List!51705) ListMap!4313)

(assert (=> b!4629046 (= lt!1788461 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581)))))

(declare-fun lt!1788450 () List!51705)

(assert (=> b!4629046 (= lt!1788433 (extractMap!1578 lt!1788450))))

(declare-fun newBucket!224 () List!51704)

(assert (=> b!4629046 (= lt!1788450 (Cons!51581 (tuple2!52537 hash!414 newBucket!224) Nil!51581))))

(declare-fun b!4629047 () Bool)

(declare-fun res!1941804 () Bool)

(assert (=> b!4629047 (=> (not res!1941804) (not e!2887613))))

(assert (=> b!4629047 (= res!1941804 (= (removePairForKey!1145 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4629048 () Bool)

(declare-fun e!2887617 () Bool)

(assert (=> b!4629048 (= e!2887617 e!2887612)))

(declare-fun res!1941808 () Bool)

(assert (=> b!4629048 (=> res!1941808 e!2887612)))

(declare-fun lt!1788443 () List!51704)

(assert (=> b!4629048 (= res!1941808 (not (= (removePairForKey!1145 lt!1788443 key!4968) lt!1788438)))))

(declare-fun tail!8157 (List!51704) List!51704)

(assert (=> b!4629048 (= lt!1788438 (tail!8157 newBucket!224))))

(assert (=> b!4629048 (= lt!1788443 (tail!8157 oldBucket!40))))

(declare-fun b!4629049 () Bool)

(assert (=> b!4629049 (= e!2887612 e!2887611)))

(declare-fun res!1941801 () Bool)

(assert (=> b!4629049 (=> res!1941801 e!2887611)))

(declare-fun lt!1788436 () ListMap!4313)

(assert (=> b!4629049 (= res!1941801 (not (eq!837 lt!1788436 (+!1888 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)) (h!57644 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!983 (List!51704 ListMap!4313) ListMap!4313)

(assert (=> b!4629049 (eq!837 (addToMapMapFromBucket!983 (Cons!51580 lt!1788459 lt!1788438) (ListMap!4314 Nil!51580)) (+!1888 (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788459))))

(declare-fun lt!1788445 () Unit!112884)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!88 (tuple2!52534 List!51704 ListMap!4313) Unit!112884)

(assert (=> b!4629049 (= lt!1788445 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!88 lt!1788459 lt!1788438 (ListMap!4314 Nil!51580)))))

(declare-fun head!9656 (List!51704) tuple2!52534)

(assert (=> b!4629049 (= lt!1788459 (head!9656 newBucket!224))))

(declare-fun lt!1788453 () tuple2!52534)

(assert (=> b!4629049 (eq!837 (addToMapMapFromBucket!983 (Cons!51580 lt!1788453 lt!1788443) (ListMap!4314 Nil!51580)) (+!1888 (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788453))))

(declare-fun lt!1788434 () Unit!112884)

(assert (=> b!4629049 (= lt!1788434 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!88 lt!1788453 lt!1788443 (ListMap!4314 Nil!51580)))))

(assert (=> b!4629049 (= lt!1788453 (head!9656 oldBucket!40))))

(declare-fun contains!14653 (ListMap!4313 K!12955) Bool)

(assert (=> b!4629049 (contains!14653 lt!1788448 key!4968)))

(declare-fun lt!1788439 () List!51705)

(assert (=> b!4629049 (= lt!1788448 (extractMap!1578 lt!1788439))))

(declare-fun lt!1788458 () Unit!112884)

(declare-datatypes ((ListLongMap!3599 0))(
  ( (ListLongMap!3600 (toList!5010 List!51705)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!340 (ListLongMap!3599 K!12955 Hashable!5919) Unit!112884)

(assert (=> b!4629049 (= lt!1788458 (lemmaListContainsThenExtractedMapContains!340 (ListLongMap!3600 lt!1788439) key!4968 hashF!1389))))

(assert (=> b!4629049 (= lt!1788439 (Cons!51581 (tuple2!52537 hash!414 (t!358750 oldBucket!40)) Nil!51581))))

(declare-fun b!4629050 () Bool)

(declare-fun e!2887620 () Bool)

(assert (=> b!4629050 (= e!2887613 e!2887620)))

(declare-fun res!1941797 () Bool)

(assert (=> b!4629050 (=> (not res!1941797) (not e!2887620))))

(assert (=> b!4629050 (= res!1941797 (contains!14653 lt!1788436 key!4968))))

(declare-fun lt!1788460 () List!51705)

(assert (=> b!4629050 (= lt!1788436 (extractMap!1578 lt!1788460))))

(assert (=> b!4629050 (= lt!1788460 (Cons!51581 (tuple2!52537 hash!414 oldBucket!40) Nil!51581))))

(declare-fun tp_is_empty!29383 () Bool)

(declare-fun tp_is_empty!29381 () Bool)

(declare-fun e!2887610 () Bool)

(declare-fun b!4629051 () Bool)

(declare-fun tp!1342259 () Bool)

(assert (=> b!4629051 (= e!2887610 (and tp_is_empty!29381 tp_is_empty!29383 tp!1342259))))

(declare-fun b!4629052 () Bool)

(declare-fun e!2887609 () Bool)

(declare-fun lambda!193076 () Int)

(declare-fun forall!10850 (List!51705 Int) Bool)

(assert (=> b!4629052 (= e!2887609 (forall!10850 lt!1788450 lambda!193076))))

(declare-fun res!1941794 () Bool)

(assert (=> start!464352 (=> (not res!1941794) (not e!2887613))))

(declare-fun noDuplicateKeys!1522 (List!51704) Bool)

(assert (=> start!464352 (= res!1941794 (noDuplicateKeys!1522 oldBucket!40))))

(assert (=> start!464352 e!2887613))

(assert (=> start!464352 true))

(declare-fun e!2887614 () Bool)

(assert (=> start!464352 e!2887614))

(assert (=> start!464352 tp_is_empty!29381))

(assert (=> start!464352 e!2887610))

(declare-fun b!4629053 () Bool)

(declare-fun e!2887616 () Bool)

(declare-fun e!2887618 () Bool)

(assert (=> b!4629053 (= e!2887616 (not e!2887618))))

(declare-fun res!1941796 () Bool)

(assert (=> b!4629053 (=> res!1941796 e!2887618)))

(get-info :version)

(assert (=> b!4629053 (= res!1941796 (or (and ((_ is Cons!51580) oldBucket!40) (= (_1!29561 (h!57644 oldBucket!40)) key!4968)) (not ((_ is Cons!51580) oldBucket!40)) (= (_1!29561 (h!57644 oldBucket!40)) key!4968)))))

(assert (=> b!4629053 e!2887615))

(declare-fun res!1941809 () Bool)

(assert (=> b!4629053 (=> (not res!1941809) (not e!2887615))))

(assert (=> b!4629053 (= res!1941809 (= lt!1788436 (addToMapMapFromBucket!983 oldBucket!40 lt!1788437)))))

(assert (=> b!4629053 (= lt!1788437 (extractMap!1578 Nil!51581))))

(assert (=> b!4629053 true))

(declare-fun b!4629054 () Bool)

(declare-fun res!1941798 () Bool)

(assert (=> b!4629054 (=> (not res!1941798) (not e!2887616))))

(assert (=> b!4629054 (= res!1941798 (allKeysSameHash!1376 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4629055 () Bool)

(assert (=> b!4629055 (= e!2887618 e!2887617)))

(declare-fun res!1941807 () Bool)

(assert (=> b!4629055 (=> res!1941807 e!2887617)))

(declare-fun containsKey!2490 (List!51704 K!12955) Bool)

(assert (=> b!4629055 (= res!1941807 (not (containsKey!2490 (t!358750 oldBucket!40) key!4968)))))

(assert (=> b!4629055 (containsKey!2490 oldBucket!40 key!4968)))

(declare-fun lt!1788440 () Unit!112884)

(declare-fun lemmaGetPairDefinedThenContainsKey!68 (List!51704 K!12955 Hashable!5919) Unit!112884)

(assert (=> b!4629055 (= lt!1788440 (lemmaGetPairDefinedThenContainsKey!68 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1788455 () List!51704)

(declare-datatypes ((Option!11632 0))(
  ( (None!11631) (Some!11631 (v!45785 tuple2!52534)) )
))
(declare-fun isDefined!8897 (Option!11632) Bool)

(declare-fun getPair!314 (List!51704 K!12955) Option!11632)

(assert (=> b!4629055 (isDefined!8897 (getPair!314 lt!1788455 key!4968))))

(declare-fun lt!1788451 () Unit!112884)

(declare-fun lt!1788441 () tuple2!52536)

(declare-fun forallContained!3080 (List!51705 Int tuple2!52536) Unit!112884)

(assert (=> b!4629055 (= lt!1788451 (forallContained!3080 lt!1788460 lambda!193076 lt!1788441))))

(declare-fun contains!14654 (List!51705 tuple2!52536) Bool)

(assert (=> b!4629055 (contains!14654 lt!1788460 lt!1788441)))

(declare-fun lt!1788447 () (_ BitVec 64))

(assert (=> b!4629055 (= lt!1788441 (tuple2!52537 lt!1788447 lt!1788455))))

(declare-fun lt!1788454 () ListLongMap!3599)

(declare-fun lt!1788444 () Unit!112884)

(declare-fun lemmaGetValueImpliesTupleContained!119 (ListLongMap!3599 (_ BitVec 64) List!51704) Unit!112884)

(assert (=> b!4629055 (= lt!1788444 (lemmaGetValueImpliesTupleContained!119 lt!1788454 lt!1788447 lt!1788455))))

(declare-fun apply!12187 (ListLongMap!3599 (_ BitVec 64)) List!51704)

(assert (=> b!4629055 (= lt!1788455 (apply!12187 lt!1788454 lt!1788447))))

(declare-fun contains!14655 (ListLongMap!3599 (_ BitVec 64)) Bool)

(assert (=> b!4629055 (contains!14655 lt!1788454 lt!1788447)))

(declare-fun lt!1788449 () Unit!112884)

(declare-fun lemmaInGenMapThenLongMapContainsHash!520 (ListLongMap!3599 K!12955 Hashable!5919) Unit!112884)

(assert (=> b!4629055 (= lt!1788449 (lemmaInGenMapThenLongMapContainsHash!520 lt!1788454 key!4968 hashF!1389))))

(declare-fun lt!1788432 () Unit!112884)

(declare-fun lemmaInGenMapThenGetPairDefined!110 (ListLongMap!3599 K!12955 Hashable!5919) Unit!112884)

(assert (=> b!4629055 (= lt!1788432 (lemmaInGenMapThenGetPairDefined!110 lt!1788454 key!4968 hashF!1389))))

(assert (=> b!4629055 (= lt!1788454 (ListLongMap!3600 lt!1788460))))

(declare-fun b!4629056 () Bool)

(declare-fun res!1941802 () Bool)

(assert (=> b!4629056 (=> res!1941802 e!2887609)))

(assert (=> b!4629056 (= res!1941802 (not (= lt!1788459 (h!57644 oldBucket!40))))))

(declare-fun b!4629057 () Bool)

(assert (=> b!4629057 (= e!2887608 e!2887609)))

(declare-fun res!1941806 () Bool)

(assert (=> b!4629057 (=> res!1941806 e!2887609)))

(declare-fun lt!1788442 () ListMap!4313)

(assert (=> b!4629057 (= res!1941806 (not (eq!837 lt!1788442 lt!1788435)))))

(assert (=> b!4629057 (eq!837 lt!1788457 lt!1788442)))

(assert (=> b!4629057 (= lt!1788442 (-!562 lt!1788436 key!4968))))

(declare-fun lt!1788430 () Unit!112884)

(declare-fun lemmaRemovePreservesEq!18 (ListMap!4313 ListMap!4313 K!12955) Unit!112884)

(assert (=> b!4629057 (= lt!1788430 (lemmaRemovePreservesEq!18 lt!1788431 lt!1788436 key!4968))))

(declare-fun b!4629058 () Bool)

(declare-fun res!1941800 () Bool)

(assert (=> b!4629058 (=> (not res!1941800) (not e!2887613))))

(assert (=> b!4629058 (= res!1941800 (noDuplicateKeys!1522 newBucket!224))))

(declare-fun b!4629059 () Bool)

(declare-fun tp!1342258 () Bool)

(assert (=> b!4629059 (= e!2887614 (and tp_is_empty!29381 tp_is_empty!29383 tp!1342258))))

(declare-fun b!4629060 () Bool)

(assert (=> b!4629060 (= e!2887620 e!2887616)))

(declare-fun res!1941795 () Bool)

(assert (=> b!4629060 (=> (not res!1941795) (not e!2887616))))

(assert (=> b!4629060 (= res!1941795 (= lt!1788447 hash!414))))

(declare-fun hash!3542 (Hashable!5919 K!12955) (_ BitVec 64))

(assert (=> b!4629060 (= lt!1788447 (hash!3542 hashF!1389 key!4968))))

(assert (= (and start!464352 res!1941794) b!4629058))

(assert (= (and b!4629058 res!1941800) b!4629047))

(assert (= (and b!4629047 res!1941804) b!4629042))

(assert (= (and b!4629042 res!1941803) b!4629050))

(assert (= (and b!4629050 res!1941797) b!4629060))

(assert (= (and b!4629060 res!1941795) b!4629054))

(assert (= (and b!4629054 res!1941798) b!4629053))

(assert (= (and b!4629053 res!1941809) b!4629044))

(assert (= (and b!4629053 (not res!1941796)) b!4629055))

(assert (= (and b!4629055 (not res!1941807)) b!4629048))

(assert (= (and b!4629048 (not res!1941808)) b!4629045))

(assert (= (and b!4629045 (not res!1941810)) b!4629049))

(assert (= (and b!4629049 (not res!1941801)) b!4629046))

(assert (= (and b!4629046 (not res!1941805)) b!4629043))

(assert (= (and b!4629043 (not res!1941799)) b!4629057))

(assert (= (and b!4629057 (not res!1941806)) b!4629056))

(assert (= (and b!4629056 (not res!1941802)) b!4629052))

(assert (= (and start!464352 ((_ is Cons!51580) oldBucket!40)) b!4629059))

(assert (= (and start!464352 ((_ is Cons!51580) newBucket!224)) b!4629051))

(declare-fun m!5475503 () Bool)

(assert (=> b!4629043 m!5475503))

(declare-fun m!5475505 () Bool)

(assert (=> b!4629043 m!5475505))

(declare-fun m!5475507 () Bool)

(assert (=> b!4629043 m!5475507))

(declare-fun m!5475509 () Bool)

(assert (=> b!4629043 m!5475509))

(declare-fun m!5475511 () Bool)

(assert (=> b!4629043 m!5475511))

(declare-fun m!5475513 () Bool)

(assert (=> b!4629043 m!5475513))

(declare-fun m!5475515 () Bool)

(assert (=> b!4629043 m!5475515))

(assert (=> b!4629043 m!5475509))

(declare-fun m!5475517 () Bool)

(assert (=> b!4629043 m!5475517))

(declare-fun m!5475519 () Bool)

(assert (=> b!4629046 m!5475519))

(assert (=> b!4629046 m!5475519))

(declare-fun m!5475521 () Bool)

(assert (=> b!4629046 m!5475521))

(declare-fun m!5475523 () Bool)

(assert (=> b!4629046 m!5475523))

(declare-fun m!5475525 () Bool)

(assert (=> b!4629046 m!5475525))

(declare-fun m!5475527 () Bool)

(assert (=> b!4629060 m!5475527))

(declare-fun m!5475529 () Bool)

(assert (=> b!4629054 m!5475529))

(declare-fun m!5475531 () Bool)

(assert (=> b!4629053 m!5475531))

(declare-fun m!5475533 () Bool)

(assert (=> b!4629053 m!5475533))

(declare-fun m!5475535 () Bool)

(assert (=> b!4629050 m!5475535))

(declare-fun m!5475537 () Bool)

(assert (=> b!4629050 m!5475537))

(declare-fun m!5475539 () Bool)

(assert (=> start!464352 m!5475539))

(declare-fun m!5475541 () Bool)

(assert (=> b!4629047 m!5475541))

(declare-fun m!5475543 () Bool)

(assert (=> b!4629049 m!5475543))

(declare-fun m!5475545 () Bool)

(assert (=> b!4629049 m!5475545))

(declare-fun m!5475547 () Bool)

(assert (=> b!4629049 m!5475547))

(declare-fun m!5475549 () Bool)

(assert (=> b!4629049 m!5475549))

(declare-fun m!5475551 () Bool)

(assert (=> b!4629049 m!5475551))

(declare-fun m!5475553 () Bool)

(assert (=> b!4629049 m!5475553))

(declare-fun m!5475555 () Bool)

(assert (=> b!4629049 m!5475555))

(declare-fun m!5475557 () Bool)

(assert (=> b!4629049 m!5475557))

(declare-fun m!5475559 () Bool)

(assert (=> b!4629049 m!5475559))

(declare-fun m!5475561 () Bool)

(assert (=> b!4629049 m!5475561))

(assert (=> b!4629049 m!5475553))

(declare-fun m!5475563 () Bool)

(assert (=> b!4629049 m!5475563))

(declare-fun m!5475565 () Bool)

(assert (=> b!4629049 m!5475565))

(assert (=> b!4629049 m!5475557))

(declare-fun m!5475567 () Bool)

(assert (=> b!4629049 m!5475567))

(declare-fun m!5475569 () Bool)

(assert (=> b!4629049 m!5475569))

(assert (=> b!4629049 m!5475561))

(assert (=> b!4629049 m!5475545))

(assert (=> b!4629049 m!5475543))

(declare-fun m!5475571 () Bool)

(assert (=> b!4629049 m!5475571))

(assert (=> b!4629049 m!5475563))

(declare-fun m!5475573 () Bool)

(assert (=> b!4629049 m!5475573))

(declare-fun m!5475575 () Bool)

(assert (=> b!4629049 m!5475575))

(assert (=> b!4629049 m!5475571))

(assert (=> b!4629049 m!5475555))

(declare-fun m!5475577 () Bool)

(assert (=> b!4629049 m!5475577))

(declare-fun m!5475579 () Bool)

(assert (=> b!4629045 m!5475579))

(declare-fun m!5475581 () Bool)

(assert (=> b!4629055 m!5475581))

(declare-fun m!5475583 () Bool)

(assert (=> b!4629055 m!5475583))

(declare-fun m!5475585 () Bool)

(assert (=> b!4629055 m!5475585))

(declare-fun m!5475587 () Bool)

(assert (=> b!4629055 m!5475587))

(declare-fun m!5475589 () Bool)

(assert (=> b!4629055 m!5475589))

(declare-fun m!5475591 () Bool)

(assert (=> b!4629055 m!5475591))

(declare-fun m!5475593 () Bool)

(assert (=> b!4629055 m!5475593))

(assert (=> b!4629055 m!5475589))

(declare-fun m!5475595 () Bool)

(assert (=> b!4629055 m!5475595))

(declare-fun m!5475597 () Bool)

(assert (=> b!4629055 m!5475597))

(declare-fun m!5475599 () Bool)

(assert (=> b!4629055 m!5475599))

(declare-fun m!5475601 () Bool)

(assert (=> b!4629055 m!5475601))

(declare-fun m!5475603 () Bool)

(assert (=> b!4629055 m!5475603))

(declare-fun m!5475605 () Bool)

(assert (=> b!4629057 m!5475605))

(declare-fun m!5475607 () Bool)

(assert (=> b!4629057 m!5475607))

(declare-fun m!5475609 () Bool)

(assert (=> b!4629057 m!5475609))

(declare-fun m!5475611 () Bool)

(assert (=> b!4629057 m!5475611))

(declare-fun m!5475613 () Bool)

(assert (=> b!4629058 m!5475613))

(declare-fun m!5475615 () Bool)

(assert (=> b!4629042 m!5475615))

(declare-fun m!5475617 () Bool)

(assert (=> b!4629052 m!5475617))

(declare-fun m!5475619 () Bool)

(assert (=> b!4629048 m!5475619))

(declare-fun m!5475621 () Bool)

(assert (=> b!4629048 m!5475621))

(declare-fun m!5475623 () Bool)

(assert (=> b!4629048 m!5475623))

(check-sat tp_is_empty!29383 (not b!4629050) (not b!4629047) tp_is_empty!29381 (not b!4629051) (not b!4629045) (not b!4629043) (not b!4629059) (not b!4629049) (not b!4629053) (not b!4629055) (not b!4629046) (not start!464352) (not b!4629042) (not b!4629054) (not b!4629058) (not b!4629052) (not b!4629057) (not b!4629060) (not b!4629048))
(check-sat)
(get-model)

(declare-fun b!4629129 () Bool)

(declare-fun e!2887667 () List!51704)

(assert (=> b!4629129 (= e!2887667 (t!358750 lt!1788443))))

(declare-fun b!4629130 () Bool)

(declare-fun e!2887666 () List!51704)

(assert (=> b!4629130 (= e!2887667 e!2887666)))

(declare-fun c!792361 () Bool)

(assert (=> b!4629130 (= c!792361 ((_ is Cons!51580) lt!1788443))))

(declare-fun b!4629131 () Bool)

(assert (=> b!4629131 (= e!2887666 (Cons!51580 (h!57644 lt!1788443) (removePairForKey!1145 (t!358750 lt!1788443) key!4968)))))

(declare-fun b!4629132 () Bool)

(assert (=> b!4629132 (= e!2887666 Nil!51580)))

(declare-fun d!1458545 () Bool)

(declare-fun lt!1788509 () List!51704)

(assert (=> d!1458545 (not (containsKey!2490 lt!1788509 key!4968))))

(assert (=> d!1458545 (= lt!1788509 e!2887667)))

(declare-fun c!792360 () Bool)

(assert (=> d!1458545 (= c!792360 (and ((_ is Cons!51580) lt!1788443) (= (_1!29561 (h!57644 lt!1788443)) key!4968)))))

(assert (=> d!1458545 (noDuplicateKeys!1522 lt!1788443)))

(assert (=> d!1458545 (= (removePairForKey!1145 lt!1788443 key!4968) lt!1788509)))

(assert (= (and d!1458545 c!792360) b!4629129))

(assert (= (and d!1458545 (not c!792360)) b!4629130))

(assert (= (and b!4629130 c!792361) b!4629131))

(assert (= (and b!4629130 (not c!792361)) b!4629132))

(declare-fun m!5475691 () Bool)

(assert (=> b!4629131 m!5475691))

(declare-fun m!5475693 () Bool)

(assert (=> d!1458545 m!5475693))

(declare-fun m!5475695 () Bool)

(assert (=> d!1458545 m!5475695))

(assert (=> b!4629048 d!1458545))

(declare-fun d!1458551 () Bool)

(assert (=> d!1458551 (= (tail!8157 newBucket!224) (t!358750 newBucket!224))))

(assert (=> b!4629048 d!1458551))

(declare-fun d!1458553 () Bool)

(assert (=> d!1458553 (= (tail!8157 oldBucket!40) (t!358750 oldBucket!40))))

(assert (=> b!4629048 d!1458553))

(declare-fun d!1458555 () Bool)

(declare-fun res!1941860 () Bool)

(declare-fun e!2887676 () Bool)

(assert (=> d!1458555 (=> res!1941860 e!2887676)))

(assert (=> d!1458555 (= res!1941860 (not ((_ is Cons!51580) newBucket!224)))))

(assert (=> d!1458555 (= (noDuplicateKeys!1522 newBucket!224) e!2887676)))

(declare-fun b!4629141 () Bool)

(declare-fun e!2887677 () Bool)

(assert (=> b!4629141 (= e!2887676 e!2887677)))

(declare-fun res!1941861 () Bool)

(assert (=> b!4629141 (=> (not res!1941861) (not e!2887677))))

(assert (=> b!4629141 (= res!1941861 (not (containsKey!2490 (t!358750 newBucket!224) (_1!29561 (h!57644 newBucket!224)))))))

(declare-fun b!4629142 () Bool)

(assert (=> b!4629142 (= e!2887677 (noDuplicateKeys!1522 (t!358750 newBucket!224)))))

(assert (= (and d!1458555 (not res!1941860)) b!4629141))

(assert (= (and b!4629141 res!1941861) b!4629142))

(declare-fun m!5475701 () Bool)

(assert (=> b!4629141 m!5475701))

(declare-fun m!5475703 () Bool)

(assert (=> b!4629142 m!5475703))

(assert (=> b!4629058 d!1458555))

(declare-fun b!4629145 () Bool)

(declare-fun e!2887681 () List!51704)

(assert (=> b!4629145 (= e!2887681 (t!358750 oldBucket!40))))

(declare-fun b!4629146 () Bool)

(declare-fun e!2887680 () List!51704)

(assert (=> b!4629146 (= e!2887681 e!2887680)))

(declare-fun c!792363 () Bool)

(assert (=> b!4629146 (= c!792363 ((_ is Cons!51580) oldBucket!40))))

(declare-fun b!4629147 () Bool)

(assert (=> b!4629147 (= e!2887680 (Cons!51580 (h!57644 oldBucket!40) (removePairForKey!1145 (t!358750 oldBucket!40) key!4968)))))

(declare-fun b!4629148 () Bool)

(assert (=> b!4629148 (= e!2887680 Nil!51580)))

(declare-fun d!1458559 () Bool)

(declare-fun lt!1788516 () List!51704)

(assert (=> d!1458559 (not (containsKey!2490 lt!1788516 key!4968))))

(assert (=> d!1458559 (= lt!1788516 e!2887681)))

(declare-fun c!792362 () Bool)

(assert (=> d!1458559 (= c!792362 (and ((_ is Cons!51580) oldBucket!40) (= (_1!29561 (h!57644 oldBucket!40)) key!4968)))))

(assert (=> d!1458559 (noDuplicateKeys!1522 oldBucket!40)))

(assert (=> d!1458559 (= (removePairForKey!1145 oldBucket!40 key!4968) lt!1788516)))

(assert (= (and d!1458559 c!792362) b!4629145))

(assert (= (and d!1458559 (not c!792362)) b!4629146))

(assert (= (and b!4629146 c!792363) b!4629147))

(assert (= (and b!4629146 (not c!792363)) b!4629148))

(assert (=> b!4629147 m!5475579))

(declare-fun m!5475711 () Bool)

(assert (=> d!1458559 m!5475711))

(assert (=> d!1458559 m!5475539))

(assert (=> b!4629047 d!1458559))

(declare-fun d!1458563 () Bool)

(declare-fun hash!3545 (Hashable!5919 K!12955) (_ BitVec 64))

(assert (=> d!1458563 (= (hash!3542 hashF!1389 key!4968) (hash!3545 hashF!1389 key!4968))))

(declare-fun bs!1025968 () Bool)

(assert (= bs!1025968 d!1458563))

(declare-fun m!5475713 () Bool)

(assert (=> bs!1025968 m!5475713))

(assert (=> b!4629060 d!1458563))

(declare-fun d!1458565 () Bool)

(declare-fun e!2887694 () Bool)

(assert (=> d!1458565 e!2887694))

(declare-fun res!1941878 () Bool)

(assert (=> d!1458565 (=> (not res!1941878) (not e!2887694))))

(declare-fun lt!1788547 () ListMap!4313)

(assert (=> d!1458565 (= res!1941878 (contains!14653 lt!1788547 (_1!29561 (h!57644 oldBucket!40))))))

(declare-fun lt!1788546 () List!51704)

(assert (=> d!1458565 (= lt!1788547 (ListMap!4314 lt!1788546))))

(declare-fun lt!1788544 () Unit!112884)

(declare-fun lt!1788545 () Unit!112884)

(assert (=> d!1458565 (= lt!1788544 lt!1788545)))

(declare-datatypes ((Option!11635 0))(
  ( (None!11634) (Some!11634 (v!45792 V!13201)) )
))
(declare-fun getValueByKey!1479 (List!51704 K!12955) Option!11635)

(assert (=> d!1458565 (= (getValueByKey!1479 lt!1788546 (_1!29561 (h!57644 oldBucket!40))) (Some!11634 (_2!29561 (h!57644 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!862 (List!51704 K!12955 V!13201) Unit!112884)

(assert (=> d!1458565 (= lt!1788545 (lemmaContainsTupThenGetReturnValue!862 lt!1788546 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!370 (List!51704 K!12955 V!13201) List!51704)

(assert (=> d!1458565 (= lt!1788546 (insertNoDuplicatedKeys!370 (toList!5009 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581))) (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458565 (= (+!1888 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)) (h!57644 oldBucket!40)) lt!1788547)))

(declare-fun b!4629170 () Bool)

(declare-fun res!1941877 () Bool)

(assert (=> b!4629170 (=> (not res!1941877) (not e!2887694))))

(assert (=> b!4629170 (= res!1941877 (= (getValueByKey!1479 (toList!5009 lt!1788547) (_1!29561 (h!57644 oldBucket!40))) (Some!11634 (_2!29561 (h!57644 oldBucket!40)))))))

(declare-fun b!4629171 () Bool)

(declare-fun contains!14657 (List!51704 tuple2!52534) Bool)

(assert (=> b!4629171 (= e!2887694 (contains!14657 (toList!5009 lt!1788547) (h!57644 oldBucket!40)))))

(assert (= (and d!1458565 res!1941878) b!4629170))

(assert (= (and b!4629170 res!1941877) b!4629171))

(declare-fun m!5475753 () Bool)

(assert (=> d!1458565 m!5475753))

(declare-fun m!5475755 () Bool)

(assert (=> d!1458565 m!5475755))

(declare-fun m!5475757 () Bool)

(assert (=> d!1458565 m!5475757))

(declare-fun m!5475759 () Bool)

(assert (=> d!1458565 m!5475759))

(declare-fun m!5475761 () Bool)

(assert (=> b!4629170 m!5475761))

(declare-fun m!5475763 () Bool)

(assert (=> b!4629171 m!5475763))

(assert (=> b!4629049 d!1458565))

(declare-fun b!4629242 () Bool)

(assert (=> b!4629242 true))

(declare-fun bs!1026066 () Bool)

(declare-fun b!4629239 () Bool)

(assert (= bs!1026066 (and b!4629239 b!4629242)))

(declare-fun lambda!193168 () Int)

(declare-fun lambda!193167 () Int)

(assert (=> bs!1026066 (= lambda!193168 lambda!193167)))

(assert (=> b!4629239 true))

(declare-fun lt!1788746 () ListMap!4313)

(declare-fun lambda!193169 () Int)

(assert (=> bs!1026066 (= (= lt!1788746 (ListMap!4314 Nil!51580)) (= lambda!193169 lambda!193167))))

(assert (=> b!4629239 (= (= lt!1788746 (ListMap!4314 Nil!51580)) (= lambda!193169 lambda!193168))))

(assert (=> b!4629239 true))

(declare-fun bs!1026067 () Bool)

(declare-fun d!1458577 () Bool)

(assert (= bs!1026067 (and d!1458577 b!4629242)))

(declare-fun lt!1788748 () ListMap!4313)

(declare-fun lambda!193170 () Int)

(assert (=> bs!1026067 (= (= lt!1788748 (ListMap!4314 Nil!51580)) (= lambda!193170 lambda!193167))))

(declare-fun bs!1026068 () Bool)

(assert (= bs!1026068 (and d!1458577 b!4629239)))

(assert (=> bs!1026068 (= (= lt!1788748 (ListMap!4314 Nil!51580)) (= lambda!193170 lambda!193168))))

(assert (=> bs!1026068 (= (= lt!1788748 lt!1788746) (= lambda!193170 lambda!193169))))

(assert (=> d!1458577 true))

(declare-fun b!4629238 () Bool)

(declare-fun res!1941910 () Bool)

(declare-fun e!2887729 () Bool)

(assert (=> b!4629238 (=> (not res!1941910) (not e!2887729))))

(declare-fun forall!10852 (List!51704 Int) Bool)

(assert (=> b!4629238 (= res!1941910 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193170))))

(declare-fun bm!322971 () Bool)

(declare-fun call!322977 () Bool)

(declare-fun c!792383 () Bool)

(assert (=> bm!322971 (= call!322977 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) (ite c!792383 lambda!193167 lambda!193169)))))

(declare-fun e!2887730 () ListMap!4313)

(assert (=> b!4629239 (= e!2887730 lt!1788746)))

(declare-fun lt!1788752 () ListMap!4313)

(assert (=> b!4629239 (= lt!1788752 (+!1888 (ListMap!4314 Nil!51580) (h!57644 lt!1788438)))))

(assert (=> b!4629239 (= lt!1788746 (addToMapMapFromBucket!983 (t!358750 lt!1788438) (+!1888 (ListMap!4314 Nil!51580) (h!57644 lt!1788438))))))

(declare-fun lt!1788742 () Unit!112884)

(declare-fun call!322978 () Unit!112884)

(assert (=> b!4629239 (= lt!1788742 call!322978)))

(assert (=> b!4629239 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193168)))

(declare-fun lt!1788751 () Unit!112884)

(assert (=> b!4629239 (= lt!1788751 lt!1788742)))

(declare-fun call!322976 () Bool)

(assert (=> b!4629239 call!322976))

(declare-fun lt!1788749 () Unit!112884)

(declare-fun Unit!112908 () Unit!112884)

(assert (=> b!4629239 (= lt!1788749 Unit!112908)))

(assert (=> b!4629239 (forall!10852 (t!358750 lt!1788438) lambda!193169)))

(declare-fun lt!1788753 () Unit!112884)

(declare-fun Unit!112910 () Unit!112884)

(assert (=> b!4629239 (= lt!1788753 Unit!112910)))

(declare-fun lt!1788756 () Unit!112884)

(declare-fun Unit!112911 () Unit!112884)

(assert (=> b!4629239 (= lt!1788756 Unit!112911)))

(declare-fun lt!1788738 () Unit!112884)

(declare-fun forallContained!3082 (List!51704 Int tuple2!52534) Unit!112884)

(assert (=> b!4629239 (= lt!1788738 (forallContained!3082 (toList!5009 lt!1788752) lambda!193169 (h!57644 lt!1788438)))))

(assert (=> b!4629239 (contains!14653 lt!1788752 (_1!29561 (h!57644 lt!1788438)))))

(declare-fun lt!1788736 () Unit!112884)

(declare-fun Unit!112912 () Unit!112884)

(assert (=> b!4629239 (= lt!1788736 Unit!112912)))

(assert (=> b!4629239 (contains!14653 lt!1788746 (_1!29561 (h!57644 lt!1788438)))))

(declare-fun lt!1788740 () Unit!112884)

(declare-fun Unit!112913 () Unit!112884)

(assert (=> b!4629239 (= lt!1788740 Unit!112913)))

(assert (=> b!4629239 (forall!10852 lt!1788438 lambda!193169)))

(declare-fun lt!1788744 () Unit!112884)

(declare-fun Unit!112914 () Unit!112884)

(assert (=> b!4629239 (= lt!1788744 Unit!112914)))

(assert (=> b!4629239 (forall!10852 (toList!5009 lt!1788752) lambda!193169)))

(declare-fun lt!1788743 () Unit!112884)

(declare-fun Unit!112915 () Unit!112884)

(assert (=> b!4629239 (= lt!1788743 Unit!112915)))

(declare-fun lt!1788754 () Unit!112884)

(declare-fun Unit!112916 () Unit!112884)

(assert (=> b!4629239 (= lt!1788754 Unit!112916)))

(declare-fun lt!1788737 () Unit!112884)

(declare-fun addForallContainsKeyThenBeforeAdding!519 (ListMap!4313 ListMap!4313 K!12955 V!13201) Unit!112884)

(assert (=> b!4629239 (= lt!1788737 (addForallContainsKeyThenBeforeAdding!519 (ListMap!4314 Nil!51580) lt!1788746 (_1!29561 (h!57644 lt!1788438)) (_2!29561 (h!57644 lt!1788438))))))

(assert (=> b!4629239 call!322977))

(declare-fun lt!1788745 () Unit!112884)

(assert (=> b!4629239 (= lt!1788745 lt!1788737)))

(assert (=> b!4629239 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193169)))

(declare-fun lt!1788747 () Unit!112884)

(declare-fun Unit!112917 () Unit!112884)

(assert (=> b!4629239 (= lt!1788747 Unit!112917)))

(declare-fun res!1941911 () Bool)

(assert (=> b!4629239 (= res!1941911 (forall!10852 lt!1788438 lambda!193169))))

(declare-fun e!2887731 () Bool)

(assert (=> b!4629239 (=> (not res!1941911) (not e!2887731))))

(assert (=> b!4629239 e!2887731))

(declare-fun lt!1788741 () Unit!112884)

(declare-fun Unit!112918 () Unit!112884)

(assert (=> b!4629239 (= lt!1788741 Unit!112918)))

(declare-fun bm!322972 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!520 (ListMap!4313) Unit!112884)

(assert (=> bm!322972 (= call!322978 (lemmaContainsAllItsOwnKeys!520 (ListMap!4314 Nil!51580)))))

(declare-fun bm!322973 () Bool)

(assert (=> bm!322973 (= call!322976 (forall!10852 (ite c!792383 (toList!5009 (ListMap!4314 Nil!51580)) (toList!5009 lt!1788752)) (ite c!792383 lambda!193167 lambda!193169)))))

(declare-fun b!4629240 () Bool)

(declare-fun invariantList!1218 (List!51704) Bool)

(assert (=> b!4629240 (= e!2887729 (invariantList!1218 (toList!5009 lt!1788748)))))

(assert (=> d!1458577 e!2887729))

(declare-fun res!1941909 () Bool)

(assert (=> d!1458577 (=> (not res!1941909) (not e!2887729))))

(assert (=> d!1458577 (= res!1941909 (forall!10852 lt!1788438 lambda!193170))))

(assert (=> d!1458577 (= lt!1788748 e!2887730)))

(assert (=> d!1458577 (= c!792383 ((_ is Nil!51580) lt!1788438))))

(assert (=> d!1458577 (noDuplicateKeys!1522 lt!1788438)))

(assert (=> d!1458577 (= (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788748)))

(declare-fun b!4629241 () Bool)

(assert (=> b!4629241 (= e!2887731 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193169))))

(assert (=> b!4629242 (= e!2887730 (ListMap!4314 Nil!51580))))

(declare-fun lt!1788739 () Unit!112884)

(assert (=> b!4629242 (= lt!1788739 call!322978)))

(assert (=> b!4629242 call!322977))

(declare-fun lt!1788755 () Unit!112884)

(assert (=> b!4629242 (= lt!1788755 lt!1788739)))

(assert (=> b!4629242 call!322976))

(declare-fun lt!1788750 () Unit!112884)

(declare-fun Unit!112919 () Unit!112884)

(assert (=> b!4629242 (= lt!1788750 Unit!112919)))

(assert (= (and d!1458577 c!792383) b!4629242))

(assert (= (and d!1458577 (not c!792383)) b!4629239))

(assert (= (and b!4629239 res!1941911) b!4629241))

(assert (= (or b!4629242 b!4629239) bm!322972))

(assert (= (or b!4629242 b!4629239) bm!322973))

(assert (= (or b!4629242 b!4629239) bm!322971))

(assert (= (and d!1458577 res!1941909) b!4629238))

(assert (= (and b!4629238 res!1941910) b!4629240))

(declare-fun m!5475969 () Bool)

(assert (=> d!1458577 m!5475969))

(declare-fun m!5475971 () Bool)

(assert (=> d!1458577 m!5475971))

(declare-fun m!5475973 () Bool)

(assert (=> b!4629240 m!5475973))

(declare-fun m!5475975 () Bool)

(assert (=> bm!322971 m!5475975))

(declare-fun m!5475977 () Bool)

(assert (=> b!4629239 m!5475977))

(declare-fun m!5475979 () Bool)

(assert (=> b!4629239 m!5475979))

(declare-fun m!5475981 () Bool)

(assert (=> b!4629239 m!5475981))

(declare-fun m!5475983 () Bool)

(assert (=> b!4629239 m!5475983))

(declare-fun m!5475985 () Bool)

(assert (=> b!4629239 m!5475985))

(declare-fun m!5475987 () Bool)

(assert (=> b!4629239 m!5475987))

(declare-fun m!5475989 () Bool)

(assert (=> b!4629239 m!5475989))

(declare-fun m!5475991 () Bool)

(assert (=> b!4629239 m!5475991))

(declare-fun m!5475993 () Bool)

(assert (=> b!4629239 m!5475993))

(assert (=> b!4629239 m!5475977))

(declare-fun m!5475995 () Bool)

(assert (=> b!4629239 m!5475995))

(assert (=> b!4629239 m!5475991))

(declare-fun m!5475997 () Bool)

(assert (=> b!4629239 m!5475997))

(declare-fun m!5475999 () Bool)

(assert (=> b!4629238 m!5475999))

(declare-fun m!5476001 () Bool)

(assert (=> bm!322973 m!5476001))

(assert (=> b!4629241 m!5475985))

(declare-fun m!5476003 () Bool)

(assert (=> bm!322972 m!5476003))

(assert (=> b!4629049 d!1458577))

(declare-fun d!1458617 () Bool)

(assert (=> d!1458617 (eq!837 (addToMapMapFromBucket!983 (Cons!51580 lt!1788453 lt!1788443) (ListMap!4314 Nil!51580)) (+!1888 (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788453))))

(declare-fun lt!1788775 () Unit!112884)

(declare-fun choose!31433 (tuple2!52534 List!51704 ListMap!4313) Unit!112884)

(assert (=> d!1458617 (= lt!1788775 (choose!31433 lt!1788453 lt!1788443 (ListMap!4314 Nil!51580)))))

(assert (=> d!1458617 (noDuplicateKeys!1522 lt!1788443)))

(assert (=> d!1458617 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!88 lt!1788453 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788775)))

(declare-fun bs!1026069 () Bool)

(assert (= bs!1026069 d!1458617))

(assert (=> bs!1026069 m!5475561))

(assert (=> bs!1026069 m!5475695))

(assert (=> bs!1026069 m!5475561))

(assert (=> bs!1026069 m!5475545))

(declare-fun m!5476005 () Bool)

(assert (=> bs!1026069 m!5476005))

(assert (=> bs!1026069 m!5475543))

(assert (=> bs!1026069 m!5475543))

(assert (=> bs!1026069 m!5475545))

(assert (=> bs!1026069 m!5475547))

(assert (=> b!4629049 d!1458617))

(declare-fun d!1458619 () Bool)

(assert (=> d!1458619 (= (head!9656 oldBucket!40) (h!57644 oldBucket!40))))

(assert (=> b!4629049 d!1458619))

(declare-fun bs!1026076 () Bool)

(declare-fun d!1458621 () Bool)

(assert (= bs!1026076 (and d!1458621 b!4629055)))

(declare-fun lambda!193174 () Int)

(assert (=> bs!1026076 (= lambda!193174 lambda!193076)))

(declare-fun lt!1788787 () ListMap!4313)

(assert (=> d!1458621 (invariantList!1218 (toList!5009 lt!1788787))))

(declare-fun e!2887753 () ListMap!4313)

(assert (=> d!1458621 (= lt!1788787 e!2887753)))

(declare-fun c!792396 () Bool)

(assert (=> d!1458621 (= c!792396 ((_ is Cons!51581) lt!1788439))))

(assert (=> d!1458621 (forall!10850 lt!1788439 lambda!193174)))

(assert (=> d!1458621 (= (extractMap!1578 lt!1788439) lt!1788787)))

(declare-fun b!4629278 () Bool)

(assert (=> b!4629278 (= e!2887753 (addToMapMapFromBucket!983 (_2!29562 (h!57645 lt!1788439)) (extractMap!1578 (t!358751 lt!1788439))))))

(declare-fun b!4629279 () Bool)

(assert (=> b!4629279 (= e!2887753 (ListMap!4314 Nil!51580))))

(assert (= (and d!1458621 c!792396) b!4629278))

(assert (= (and d!1458621 (not c!792396)) b!4629279))

(declare-fun m!5476035 () Bool)

(assert (=> d!1458621 m!5476035))

(declare-fun m!5476037 () Bool)

(assert (=> d!1458621 m!5476037))

(declare-fun m!5476039 () Bool)

(assert (=> b!4629278 m!5476039))

(assert (=> b!4629278 m!5476039))

(declare-fun m!5476041 () Bool)

(assert (=> b!4629278 m!5476041))

(assert (=> b!4629049 d!1458621))

(declare-fun d!1458627 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8838 (List!51704) (InoxSet tuple2!52534))

(assert (=> d!1458627 (= (eq!837 lt!1788436 (+!1888 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)) (h!57644 oldBucket!40))) (= (content!8838 (toList!5009 lt!1788436)) (content!8838 (toList!5009 (+!1888 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)) (h!57644 oldBucket!40))))))))

(declare-fun bs!1026077 () Bool)

(assert (= bs!1026077 d!1458627))

(declare-fun m!5476043 () Bool)

(assert (=> bs!1026077 m!5476043))

(declare-fun m!5476045 () Bool)

(assert (=> bs!1026077 m!5476045))

(assert (=> b!4629049 d!1458627))

(declare-fun bs!1026078 () Bool)

(declare-fun b!4629284 () Bool)

(assert (= bs!1026078 (and b!4629284 b!4629242)))

(declare-fun lambda!193175 () Int)

(assert (=> bs!1026078 (= lambda!193175 lambda!193167)))

(declare-fun bs!1026079 () Bool)

(assert (= bs!1026079 (and b!4629284 b!4629239)))

(assert (=> bs!1026079 (= lambda!193175 lambda!193168)))

(assert (=> bs!1026079 (= (= (ListMap!4314 Nil!51580) lt!1788746) (= lambda!193175 lambda!193169))))

(declare-fun bs!1026080 () Bool)

(assert (= bs!1026080 (and b!4629284 d!1458577)))

(assert (=> bs!1026080 (= (= (ListMap!4314 Nil!51580) lt!1788748) (= lambda!193175 lambda!193170))))

(assert (=> b!4629284 true))

(declare-fun bs!1026081 () Bool)

(declare-fun b!4629281 () Bool)

(assert (= bs!1026081 (and b!4629281 b!4629242)))

(declare-fun lambda!193178 () Int)

(assert (=> bs!1026081 (= lambda!193178 lambda!193167)))

(declare-fun bs!1026082 () Bool)

(assert (= bs!1026082 (and b!4629281 b!4629239)))

(assert (=> bs!1026082 (= (= (ListMap!4314 Nil!51580) lt!1788746) (= lambda!193178 lambda!193169))))

(declare-fun bs!1026083 () Bool)

(assert (= bs!1026083 (and b!4629281 b!4629284)))

(assert (=> bs!1026083 (= lambda!193178 lambda!193175)))

(assert (=> bs!1026082 (= lambda!193178 lambda!193168)))

(declare-fun bs!1026084 () Bool)

(assert (= bs!1026084 (and b!4629281 d!1458577)))

(assert (=> bs!1026084 (= (= (ListMap!4314 Nil!51580) lt!1788748) (= lambda!193178 lambda!193170))))

(assert (=> b!4629281 true))

(declare-fun lt!1788798 () ListMap!4313)

(declare-fun lambda!193179 () Int)

(assert (=> bs!1026081 (= (= lt!1788798 (ListMap!4314 Nil!51580)) (= lambda!193179 lambda!193167))))

(assert (=> bs!1026082 (= (= lt!1788798 lt!1788746) (= lambda!193179 lambda!193169))))

(assert (=> bs!1026083 (= (= lt!1788798 (ListMap!4314 Nil!51580)) (= lambda!193179 lambda!193175))))

(assert (=> bs!1026082 (= (= lt!1788798 (ListMap!4314 Nil!51580)) (= lambda!193179 lambda!193168))))

(assert (=> bs!1026084 (= (= lt!1788798 lt!1788748) (= lambda!193179 lambda!193170))))

(assert (=> b!4629281 (= (= lt!1788798 (ListMap!4314 Nil!51580)) (= lambda!193179 lambda!193178))))

(assert (=> b!4629281 true))

(declare-fun bs!1026093 () Bool)

(declare-fun d!1458629 () Bool)

(assert (= bs!1026093 (and d!1458629 b!4629242)))

(declare-fun lt!1788800 () ListMap!4313)

(declare-fun lambda!193182 () Int)

(assert (=> bs!1026093 (= (= lt!1788800 (ListMap!4314 Nil!51580)) (= lambda!193182 lambda!193167))))

(declare-fun bs!1026095 () Bool)

(assert (= bs!1026095 (and d!1458629 b!4629239)))

(assert (=> bs!1026095 (= (= lt!1788800 lt!1788746) (= lambda!193182 lambda!193169))))

(declare-fun bs!1026097 () Bool)

(assert (= bs!1026097 (and d!1458629 b!4629284)))

(assert (=> bs!1026097 (= (= lt!1788800 (ListMap!4314 Nil!51580)) (= lambda!193182 lambda!193175))))

(declare-fun bs!1026099 () Bool)

(assert (= bs!1026099 (and d!1458629 b!4629281)))

(assert (=> bs!1026099 (= (= lt!1788800 lt!1788798) (= lambda!193182 lambda!193179))))

(assert (=> bs!1026095 (= (= lt!1788800 (ListMap!4314 Nil!51580)) (= lambda!193182 lambda!193168))))

(declare-fun bs!1026102 () Bool)

(assert (= bs!1026102 (and d!1458629 d!1458577)))

(assert (=> bs!1026102 (= (= lt!1788800 lt!1788748) (= lambda!193182 lambda!193170))))

(assert (=> bs!1026099 (= (= lt!1788800 (ListMap!4314 Nil!51580)) (= lambda!193182 lambda!193178))))

(assert (=> d!1458629 true))

(declare-fun b!4629280 () Bool)

(declare-fun res!1941922 () Bool)

(declare-fun e!2887754 () Bool)

(assert (=> b!4629280 (=> (not res!1941922) (not e!2887754))))

(assert (=> b!4629280 (= res!1941922 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193182))))

(declare-fun call!322983 () Bool)

(declare-fun bm!322977 () Bool)

(declare-fun c!792397 () Bool)

(assert (=> bm!322977 (= call!322983 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) (ite c!792397 lambda!193175 lambda!193179)))))

(declare-fun e!2887755 () ListMap!4313)

(assert (=> b!4629281 (= e!2887755 lt!1788798)))

(declare-fun lt!1788804 () ListMap!4313)

(assert (=> b!4629281 (= lt!1788804 (+!1888 (ListMap!4314 Nil!51580) (h!57644 lt!1788443)))))

(assert (=> b!4629281 (= lt!1788798 (addToMapMapFromBucket!983 (t!358750 lt!1788443) (+!1888 (ListMap!4314 Nil!51580) (h!57644 lt!1788443))))))

(declare-fun lt!1788794 () Unit!112884)

(declare-fun call!322984 () Unit!112884)

(assert (=> b!4629281 (= lt!1788794 call!322984)))

(assert (=> b!4629281 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193178)))

(declare-fun lt!1788803 () Unit!112884)

(assert (=> b!4629281 (= lt!1788803 lt!1788794)))

(declare-fun call!322982 () Bool)

(assert (=> b!4629281 call!322982))

(declare-fun lt!1788801 () Unit!112884)

(declare-fun Unit!112931 () Unit!112884)

(assert (=> b!4629281 (= lt!1788801 Unit!112931)))

(assert (=> b!4629281 (forall!10852 (t!358750 lt!1788443) lambda!193179)))

(declare-fun lt!1788805 () Unit!112884)

(declare-fun Unit!112932 () Unit!112884)

(assert (=> b!4629281 (= lt!1788805 Unit!112932)))

(declare-fun lt!1788808 () Unit!112884)

(declare-fun Unit!112933 () Unit!112884)

(assert (=> b!4629281 (= lt!1788808 Unit!112933)))

(declare-fun lt!1788790 () Unit!112884)

(assert (=> b!4629281 (= lt!1788790 (forallContained!3082 (toList!5009 lt!1788804) lambda!193179 (h!57644 lt!1788443)))))

(assert (=> b!4629281 (contains!14653 lt!1788804 (_1!29561 (h!57644 lt!1788443)))))

(declare-fun lt!1788788 () Unit!112884)

(declare-fun Unit!112934 () Unit!112884)

(assert (=> b!4629281 (= lt!1788788 Unit!112934)))

(assert (=> b!4629281 (contains!14653 lt!1788798 (_1!29561 (h!57644 lt!1788443)))))

(declare-fun lt!1788792 () Unit!112884)

(declare-fun Unit!112935 () Unit!112884)

(assert (=> b!4629281 (= lt!1788792 Unit!112935)))

(assert (=> b!4629281 (forall!10852 lt!1788443 lambda!193179)))

(declare-fun lt!1788796 () Unit!112884)

(declare-fun Unit!112936 () Unit!112884)

(assert (=> b!4629281 (= lt!1788796 Unit!112936)))

(assert (=> b!4629281 (forall!10852 (toList!5009 lt!1788804) lambda!193179)))

(declare-fun lt!1788795 () Unit!112884)

(declare-fun Unit!112937 () Unit!112884)

(assert (=> b!4629281 (= lt!1788795 Unit!112937)))

(declare-fun lt!1788806 () Unit!112884)

(declare-fun Unit!112938 () Unit!112884)

(assert (=> b!4629281 (= lt!1788806 Unit!112938)))

(declare-fun lt!1788789 () Unit!112884)

(assert (=> b!4629281 (= lt!1788789 (addForallContainsKeyThenBeforeAdding!519 (ListMap!4314 Nil!51580) lt!1788798 (_1!29561 (h!57644 lt!1788443)) (_2!29561 (h!57644 lt!1788443))))))

(assert (=> b!4629281 call!322983))

(declare-fun lt!1788797 () Unit!112884)

(assert (=> b!4629281 (= lt!1788797 lt!1788789)))

(assert (=> b!4629281 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193179)))

(declare-fun lt!1788799 () Unit!112884)

(declare-fun Unit!112939 () Unit!112884)

(assert (=> b!4629281 (= lt!1788799 Unit!112939)))

(declare-fun res!1941923 () Bool)

(assert (=> b!4629281 (= res!1941923 (forall!10852 lt!1788443 lambda!193179))))

(declare-fun e!2887756 () Bool)

(assert (=> b!4629281 (=> (not res!1941923) (not e!2887756))))

(assert (=> b!4629281 e!2887756))

(declare-fun lt!1788793 () Unit!112884)

(declare-fun Unit!112940 () Unit!112884)

(assert (=> b!4629281 (= lt!1788793 Unit!112940)))

(declare-fun bm!322978 () Bool)

(assert (=> bm!322978 (= call!322984 (lemmaContainsAllItsOwnKeys!520 (ListMap!4314 Nil!51580)))))

(declare-fun bm!322979 () Bool)

(assert (=> bm!322979 (= call!322982 (forall!10852 (ite c!792397 (toList!5009 (ListMap!4314 Nil!51580)) (toList!5009 lt!1788804)) (ite c!792397 lambda!193175 lambda!193179)))))

(declare-fun b!4629282 () Bool)

(assert (=> b!4629282 (= e!2887754 (invariantList!1218 (toList!5009 lt!1788800)))))

(assert (=> d!1458629 e!2887754))

(declare-fun res!1941921 () Bool)

(assert (=> d!1458629 (=> (not res!1941921) (not e!2887754))))

(assert (=> d!1458629 (= res!1941921 (forall!10852 lt!1788443 lambda!193182))))

(assert (=> d!1458629 (= lt!1788800 e!2887755)))

(assert (=> d!1458629 (= c!792397 ((_ is Nil!51580) lt!1788443))))

(assert (=> d!1458629 (noDuplicateKeys!1522 lt!1788443)))

(assert (=> d!1458629 (= (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788800)))

(declare-fun b!4629283 () Bool)

(assert (=> b!4629283 (= e!2887756 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193179))))

(assert (=> b!4629284 (= e!2887755 (ListMap!4314 Nil!51580))))

(declare-fun lt!1788791 () Unit!112884)

(assert (=> b!4629284 (= lt!1788791 call!322984)))

(assert (=> b!4629284 call!322983))

(declare-fun lt!1788807 () Unit!112884)

(assert (=> b!4629284 (= lt!1788807 lt!1788791)))

(assert (=> b!4629284 call!322982))

(declare-fun lt!1788802 () Unit!112884)

(declare-fun Unit!112941 () Unit!112884)

(assert (=> b!4629284 (= lt!1788802 Unit!112941)))

(assert (= (and d!1458629 c!792397) b!4629284))

(assert (= (and d!1458629 (not c!792397)) b!4629281))

(assert (= (and b!4629281 res!1941923) b!4629283))

(assert (= (or b!4629284 b!4629281) bm!322978))

(assert (= (or b!4629284 b!4629281) bm!322979))

(assert (= (or b!4629284 b!4629281) bm!322977))

(assert (= (and d!1458629 res!1941921) b!4629280))

(assert (= (and b!4629280 res!1941922) b!4629282))

(declare-fun m!5476057 () Bool)

(assert (=> d!1458629 m!5476057))

(assert (=> d!1458629 m!5475695))

(declare-fun m!5476059 () Bool)

(assert (=> b!4629282 m!5476059))

(declare-fun m!5476061 () Bool)

(assert (=> bm!322977 m!5476061))

(declare-fun m!5476063 () Bool)

(assert (=> b!4629281 m!5476063))

(declare-fun m!5476065 () Bool)

(assert (=> b!4629281 m!5476065))

(declare-fun m!5476067 () Bool)

(assert (=> b!4629281 m!5476067))

(declare-fun m!5476071 () Bool)

(assert (=> b!4629281 m!5476071))

(declare-fun m!5476073 () Bool)

(assert (=> b!4629281 m!5476073))

(declare-fun m!5476077 () Bool)

(assert (=> b!4629281 m!5476077))

(declare-fun m!5476079 () Bool)

(assert (=> b!4629281 m!5476079))

(declare-fun m!5476081 () Bool)

(assert (=> b!4629281 m!5476081))

(declare-fun m!5476083 () Bool)

(assert (=> b!4629281 m!5476083))

(assert (=> b!4629281 m!5476063))

(declare-fun m!5476085 () Bool)

(assert (=> b!4629281 m!5476085))

(assert (=> b!4629281 m!5476081))

(declare-fun m!5476087 () Bool)

(assert (=> b!4629281 m!5476087))

(declare-fun m!5476089 () Bool)

(assert (=> b!4629280 m!5476089))

(declare-fun m!5476091 () Bool)

(assert (=> bm!322979 m!5476091))

(assert (=> b!4629283 m!5476073))

(assert (=> bm!322978 m!5476003))

(assert (=> b!4629049 d!1458629))

(declare-fun bs!1026113 () Bool)

(declare-fun d!1458637 () Bool)

(assert (= bs!1026113 (and d!1458637 b!4629055)))

(declare-fun lambda!193183 () Int)

(assert (=> bs!1026113 (= lambda!193183 lambda!193076)))

(declare-fun bs!1026114 () Bool)

(assert (= bs!1026114 (and d!1458637 d!1458621)))

(assert (=> bs!1026114 (= lambda!193183 lambda!193174)))

(declare-fun lt!1788813 () ListMap!4313)

(assert (=> d!1458637 (invariantList!1218 (toList!5009 lt!1788813))))

(declare-fun e!2887759 () ListMap!4313)

(assert (=> d!1458637 (= lt!1788813 e!2887759)))

(declare-fun c!792400 () Bool)

(assert (=> d!1458637 (= c!792400 ((_ is Cons!51581) (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)))))

(assert (=> d!1458637 (forall!10850 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581) lambda!193183)))

(assert (=> d!1458637 (= (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)) lt!1788813)))

(declare-fun b!4629289 () Bool)

(assert (=> b!4629289 (= e!2887759 (addToMapMapFromBucket!983 (_2!29562 (h!57645 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581))) (extractMap!1578 (t!358751 (Cons!51581 (tuple2!52537 hash!414 lt!1788443) Nil!51581)))))))

(declare-fun b!4629290 () Bool)

(assert (=> b!4629290 (= e!2887759 (ListMap!4314 Nil!51580))))

(assert (= (and d!1458637 c!792400) b!4629289))

(assert (= (and d!1458637 (not c!792400)) b!4629290))

(declare-fun m!5476095 () Bool)

(assert (=> d!1458637 m!5476095))

(declare-fun m!5476097 () Bool)

(assert (=> d!1458637 m!5476097))

(declare-fun m!5476099 () Bool)

(assert (=> b!4629289 m!5476099))

(assert (=> b!4629289 m!5476099))

(declare-fun m!5476101 () Bool)

(assert (=> b!4629289 m!5476101))

(assert (=> b!4629049 d!1458637))

(declare-fun d!1458641 () Bool)

(assert (=> d!1458641 (eq!837 (addToMapMapFromBucket!983 (Cons!51580 lt!1788459 lt!1788438) (ListMap!4314 Nil!51580)) (+!1888 (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788459))))

(declare-fun lt!1788835 () Unit!112884)

(assert (=> d!1458641 (= lt!1788835 (choose!31433 lt!1788459 lt!1788438 (ListMap!4314 Nil!51580)))))

(assert (=> d!1458641 (noDuplicateKeys!1522 lt!1788438)))

(assert (=> d!1458641 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!88 lt!1788459 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788835)))

(declare-fun bs!1026125 () Bool)

(assert (= bs!1026125 d!1458641))

(assert (=> bs!1026125 m!5475571))

(assert (=> bs!1026125 m!5475971))

(assert (=> bs!1026125 m!5475571))

(assert (=> bs!1026125 m!5475563))

(declare-fun m!5476103 () Bool)

(assert (=> bs!1026125 m!5476103))

(assert (=> bs!1026125 m!5475553))

(assert (=> bs!1026125 m!5475553))

(assert (=> bs!1026125 m!5475563))

(assert (=> bs!1026125 m!5475565))

(assert (=> b!4629049 d!1458641))

(declare-fun bs!1026130 () Bool)

(declare-fun b!4629300 () Bool)

(assert (= bs!1026130 (and b!4629300 b!4629242)))

(declare-fun lambda!193185 () Int)

(assert (=> bs!1026130 (= lambda!193185 lambda!193167)))

(declare-fun bs!1026132 () Bool)

(assert (= bs!1026132 (and b!4629300 b!4629239)))

(assert (=> bs!1026132 (= (= (ListMap!4314 Nil!51580) lt!1788746) (= lambda!193185 lambda!193169))))

(declare-fun bs!1026134 () Bool)

(assert (= bs!1026134 (and b!4629300 b!4629284)))

(assert (=> bs!1026134 (= lambda!193185 lambda!193175)))

(declare-fun bs!1026136 () Bool)

(assert (= bs!1026136 (and b!4629300 d!1458629)))

(assert (=> bs!1026136 (= (= (ListMap!4314 Nil!51580) lt!1788800) (= lambda!193185 lambda!193182))))

(declare-fun bs!1026138 () Bool)

(assert (= bs!1026138 (and b!4629300 b!4629281)))

(assert (=> bs!1026138 (= (= (ListMap!4314 Nil!51580) lt!1788798) (= lambda!193185 lambda!193179))))

(assert (=> bs!1026132 (= lambda!193185 lambda!193168)))

(declare-fun bs!1026141 () Bool)

(assert (= bs!1026141 (and b!4629300 d!1458577)))

(assert (=> bs!1026141 (= (= (ListMap!4314 Nil!51580) lt!1788748) (= lambda!193185 lambda!193170))))

(assert (=> bs!1026138 (= lambda!193185 lambda!193178)))

(assert (=> b!4629300 true))

(declare-fun bs!1026147 () Bool)

(declare-fun b!4629297 () Bool)

(assert (= bs!1026147 (and b!4629297 b!4629242)))

(declare-fun lambda!193187 () Int)

(assert (=> bs!1026147 (= lambda!193187 lambda!193167)))

(declare-fun bs!1026148 () Bool)

(assert (= bs!1026148 (and b!4629297 b!4629239)))

(assert (=> bs!1026148 (= (= (ListMap!4314 Nil!51580) lt!1788746) (= lambda!193187 lambda!193169))))

(declare-fun bs!1026150 () Bool)

(assert (= bs!1026150 (and b!4629297 b!4629284)))

(assert (=> bs!1026150 (= lambda!193187 lambda!193175)))

(declare-fun bs!1026152 () Bool)

(assert (= bs!1026152 (and b!4629297 d!1458629)))

(assert (=> bs!1026152 (= (= (ListMap!4314 Nil!51580) lt!1788800) (= lambda!193187 lambda!193182))))

(declare-fun bs!1026153 () Bool)

(assert (= bs!1026153 (and b!4629297 b!4629281)))

(assert (=> bs!1026153 (= (= (ListMap!4314 Nil!51580) lt!1788798) (= lambda!193187 lambda!193179))))

(declare-fun bs!1026155 () Bool)

(assert (= bs!1026155 (and b!4629297 d!1458577)))

(assert (=> bs!1026155 (= (= (ListMap!4314 Nil!51580) lt!1788748) (= lambda!193187 lambda!193170))))

(assert (=> bs!1026153 (= lambda!193187 lambda!193178)))

(assert (=> bs!1026148 (= lambda!193187 lambda!193168)))

(declare-fun bs!1026157 () Bool)

(assert (= bs!1026157 (and b!4629297 b!4629300)))

(assert (=> bs!1026157 (= lambda!193187 lambda!193185)))

(assert (=> b!4629297 true))

(declare-fun lt!1788846 () ListMap!4313)

(declare-fun lambda!193189 () Int)

(assert (=> bs!1026147 (= (= lt!1788846 (ListMap!4314 Nil!51580)) (= lambda!193189 lambda!193167))))

(assert (=> bs!1026148 (= (= lt!1788846 lt!1788746) (= lambda!193189 lambda!193169))))

(assert (=> bs!1026152 (= (= lt!1788846 lt!1788800) (= lambda!193189 lambda!193182))))

(assert (=> bs!1026153 (= (= lt!1788846 lt!1788798) (= lambda!193189 lambda!193179))))

(assert (=> bs!1026155 (= (= lt!1788846 lt!1788748) (= lambda!193189 lambda!193170))))

(assert (=> bs!1026153 (= (= lt!1788846 (ListMap!4314 Nil!51580)) (= lambda!193189 lambda!193178))))

(assert (=> bs!1026150 (= (= lt!1788846 (ListMap!4314 Nil!51580)) (= lambda!193189 lambda!193175))))

(assert (=> b!4629297 (= (= lt!1788846 (ListMap!4314 Nil!51580)) (= lambda!193189 lambda!193187))))

(assert (=> bs!1026148 (= (= lt!1788846 (ListMap!4314 Nil!51580)) (= lambda!193189 lambda!193168))))

(assert (=> bs!1026157 (= (= lt!1788846 (ListMap!4314 Nil!51580)) (= lambda!193189 lambda!193185))))

(assert (=> b!4629297 true))

(declare-fun bs!1026158 () Bool)

(declare-fun d!1458643 () Bool)

(assert (= bs!1026158 (and d!1458643 b!4629242)))

(declare-fun lt!1788848 () ListMap!4313)

(declare-fun lambda!193190 () Int)

(assert (=> bs!1026158 (= (= lt!1788848 (ListMap!4314 Nil!51580)) (= lambda!193190 lambda!193167))))

(declare-fun bs!1026159 () Bool)

(assert (= bs!1026159 (and d!1458643 b!4629239)))

(assert (=> bs!1026159 (= (= lt!1788848 lt!1788746) (= lambda!193190 lambda!193169))))

(declare-fun bs!1026160 () Bool)

(assert (= bs!1026160 (and d!1458643 d!1458629)))

(assert (=> bs!1026160 (= (= lt!1788848 lt!1788800) (= lambda!193190 lambda!193182))))

(declare-fun bs!1026161 () Bool)

(assert (= bs!1026161 (and d!1458643 b!4629281)))

(assert (=> bs!1026161 (= (= lt!1788848 lt!1788798) (= lambda!193190 lambda!193179))))

(declare-fun bs!1026162 () Bool)

(assert (= bs!1026162 (and d!1458643 d!1458577)))

(assert (=> bs!1026162 (= (= lt!1788848 lt!1788748) (= lambda!193190 lambda!193170))))

(assert (=> bs!1026161 (= (= lt!1788848 (ListMap!4314 Nil!51580)) (= lambda!193190 lambda!193178))))

(declare-fun bs!1026163 () Bool)

(assert (= bs!1026163 (and d!1458643 b!4629297)))

(assert (=> bs!1026163 (= (= lt!1788848 lt!1788846) (= lambda!193190 lambda!193189))))

(declare-fun bs!1026164 () Bool)

(assert (= bs!1026164 (and d!1458643 b!4629284)))

(assert (=> bs!1026164 (= (= lt!1788848 (ListMap!4314 Nil!51580)) (= lambda!193190 lambda!193175))))

(assert (=> bs!1026163 (= (= lt!1788848 (ListMap!4314 Nil!51580)) (= lambda!193190 lambda!193187))))

(assert (=> bs!1026159 (= (= lt!1788848 (ListMap!4314 Nil!51580)) (= lambda!193190 lambda!193168))))

(declare-fun bs!1026168 () Bool)

(assert (= bs!1026168 (and d!1458643 b!4629300)))

(assert (=> bs!1026168 (= (= lt!1788848 (ListMap!4314 Nil!51580)) (= lambda!193190 lambda!193185))))

(assert (=> d!1458643 true))

(declare-fun b!4629296 () Bool)

(declare-fun res!1941928 () Bool)

(declare-fun e!2887763 () Bool)

(assert (=> b!4629296 (=> (not res!1941928) (not e!2887763))))

(assert (=> b!4629296 (= res!1941928 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193190))))

(declare-fun call!322989 () Bool)

(declare-fun c!792402 () Bool)

(declare-fun bm!322983 () Bool)

(assert (=> bm!322983 (= call!322989 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) (ite c!792402 lambda!193185 lambda!193189)))))

(declare-fun e!2887764 () ListMap!4313)

(assert (=> b!4629297 (= e!2887764 lt!1788846)))

(declare-fun lt!1788852 () ListMap!4313)

(assert (=> b!4629297 (= lt!1788852 (+!1888 (ListMap!4314 Nil!51580) (h!57644 (Cons!51580 lt!1788459 lt!1788438))))))

(assert (=> b!4629297 (= lt!1788846 (addToMapMapFromBucket!983 (t!358750 (Cons!51580 lt!1788459 lt!1788438)) (+!1888 (ListMap!4314 Nil!51580) (h!57644 (Cons!51580 lt!1788459 lt!1788438)))))))

(declare-fun lt!1788842 () Unit!112884)

(declare-fun call!322990 () Unit!112884)

(assert (=> b!4629297 (= lt!1788842 call!322990)))

(assert (=> b!4629297 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193187)))

(declare-fun lt!1788851 () Unit!112884)

(assert (=> b!4629297 (= lt!1788851 lt!1788842)))

(declare-fun call!322988 () Bool)

(assert (=> b!4629297 call!322988))

(declare-fun lt!1788849 () Unit!112884)

(declare-fun Unit!112950 () Unit!112884)

(assert (=> b!4629297 (= lt!1788849 Unit!112950)))

(assert (=> b!4629297 (forall!10852 (t!358750 (Cons!51580 lt!1788459 lt!1788438)) lambda!193189)))

(declare-fun lt!1788853 () Unit!112884)

(declare-fun Unit!112952 () Unit!112884)

(assert (=> b!4629297 (= lt!1788853 Unit!112952)))

(declare-fun lt!1788856 () Unit!112884)

(declare-fun Unit!112953 () Unit!112884)

(assert (=> b!4629297 (= lt!1788856 Unit!112953)))

(declare-fun lt!1788838 () Unit!112884)

(assert (=> b!4629297 (= lt!1788838 (forallContained!3082 (toList!5009 lt!1788852) lambda!193189 (h!57644 (Cons!51580 lt!1788459 lt!1788438))))))

(assert (=> b!4629297 (contains!14653 lt!1788852 (_1!29561 (h!57644 (Cons!51580 lt!1788459 lt!1788438))))))

(declare-fun lt!1788836 () Unit!112884)

(declare-fun Unit!112955 () Unit!112884)

(assert (=> b!4629297 (= lt!1788836 Unit!112955)))

(assert (=> b!4629297 (contains!14653 lt!1788846 (_1!29561 (h!57644 (Cons!51580 lt!1788459 lt!1788438))))))

(declare-fun lt!1788840 () Unit!112884)

(declare-fun Unit!112956 () Unit!112884)

(assert (=> b!4629297 (= lt!1788840 Unit!112956)))

(assert (=> b!4629297 (forall!10852 (Cons!51580 lt!1788459 lt!1788438) lambda!193189)))

(declare-fun lt!1788844 () Unit!112884)

(declare-fun Unit!112957 () Unit!112884)

(assert (=> b!4629297 (= lt!1788844 Unit!112957)))

(assert (=> b!4629297 (forall!10852 (toList!5009 lt!1788852) lambda!193189)))

(declare-fun lt!1788843 () Unit!112884)

(declare-fun Unit!112959 () Unit!112884)

(assert (=> b!4629297 (= lt!1788843 Unit!112959)))

(declare-fun lt!1788854 () Unit!112884)

(declare-fun Unit!112960 () Unit!112884)

(assert (=> b!4629297 (= lt!1788854 Unit!112960)))

(declare-fun lt!1788837 () Unit!112884)

(assert (=> b!4629297 (= lt!1788837 (addForallContainsKeyThenBeforeAdding!519 (ListMap!4314 Nil!51580) lt!1788846 (_1!29561 (h!57644 (Cons!51580 lt!1788459 lt!1788438))) (_2!29561 (h!57644 (Cons!51580 lt!1788459 lt!1788438)))))))

(assert (=> b!4629297 call!322989))

(declare-fun lt!1788845 () Unit!112884)

(assert (=> b!4629297 (= lt!1788845 lt!1788837)))

(assert (=> b!4629297 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193189)))

(declare-fun lt!1788847 () Unit!112884)

(declare-fun Unit!112961 () Unit!112884)

(assert (=> b!4629297 (= lt!1788847 Unit!112961)))

(declare-fun res!1941929 () Bool)

(assert (=> b!4629297 (= res!1941929 (forall!10852 (Cons!51580 lt!1788459 lt!1788438) lambda!193189))))

(declare-fun e!2887765 () Bool)

(assert (=> b!4629297 (=> (not res!1941929) (not e!2887765))))

(assert (=> b!4629297 e!2887765))

(declare-fun lt!1788841 () Unit!112884)

(declare-fun Unit!112962 () Unit!112884)

(assert (=> b!4629297 (= lt!1788841 Unit!112962)))

(declare-fun bm!322984 () Bool)

(assert (=> bm!322984 (= call!322990 (lemmaContainsAllItsOwnKeys!520 (ListMap!4314 Nil!51580)))))

(declare-fun bm!322985 () Bool)

(assert (=> bm!322985 (= call!322988 (forall!10852 (ite c!792402 (toList!5009 (ListMap!4314 Nil!51580)) (toList!5009 lt!1788852)) (ite c!792402 lambda!193185 lambda!193189)))))

(declare-fun b!4629298 () Bool)

(assert (=> b!4629298 (= e!2887763 (invariantList!1218 (toList!5009 lt!1788848)))))

(assert (=> d!1458643 e!2887763))

(declare-fun res!1941927 () Bool)

(assert (=> d!1458643 (=> (not res!1941927) (not e!2887763))))

(assert (=> d!1458643 (= res!1941927 (forall!10852 (Cons!51580 lt!1788459 lt!1788438) lambda!193190))))

(assert (=> d!1458643 (= lt!1788848 e!2887764)))

(assert (=> d!1458643 (= c!792402 ((_ is Nil!51580) (Cons!51580 lt!1788459 lt!1788438)))))

(assert (=> d!1458643 (noDuplicateKeys!1522 (Cons!51580 lt!1788459 lt!1788438))))

(assert (=> d!1458643 (= (addToMapMapFromBucket!983 (Cons!51580 lt!1788459 lt!1788438) (ListMap!4314 Nil!51580)) lt!1788848)))

(declare-fun b!4629299 () Bool)

(assert (=> b!4629299 (= e!2887765 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193189))))

(assert (=> b!4629300 (= e!2887764 (ListMap!4314 Nil!51580))))

(declare-fun lt!1788839 () Unit!112884)

(assert (=> b!4629300 (= lt!1788839 call!322990)))

(assert (=> b!4629300 call!322989))

(declare-fun lt!1788855 () Unit!112884)

(assert (=> b!4629300 (= lt!1788855 lt!1788839)))

(assert (=> b!4629300 call!322988))

(declare-fun lt!1788850 () Unit!112884)

(declare-fun Unit!112963 () Unit!112884)

(assert (=> b!4629300 (= lt!1788850 Unit!112963)))

(assert (= (and d!1458643 c!792402) b!4629300))

(assert (= (and d!1458643 (not c!792402)) b!4629297))

(assert (= (and b!4629297 res!1941929) b!4629299))

(assert (= (or b!4629300 b!4629297) bm!322984))

(assert (= (or b!4629300 b!4629297) bm!322985))

(assert (= (or b!4629300 b!4629297) bm!322983))

(assert (= (and d!1458643 res!1941927) b!4629296))

(assert (= (and b!4629296 res!1941928) b!4629298))

(declare-fun m!5476105 () Bool)

(assert (=> d!1458643 m!5476105))

(declare-fun m!5476107 () Bool)

(assert (=> d!1458643 m!5476107))

(declare-fun m!5476109 () Bool)

(assert (=> b!4629298 m!5476109))

(declare-fun m!5476111 () Bool)

(assert (=> bm!322983 m!5476111))

(declare-fun m!5476113 () Bool)

(assert (=> b!4629297 m!5476113))

(declare-fun m!5476115 () Bool)

(assert (=> b!4629297 m!5476115))

(declare-fun m!5476117 () Bool)

(assert (=> b!4629297 m!5476117))

(declare-fun m!5476119 () Bool)

(assert (=> b!4629297 m!5476119))

(declare-fun m!5476121 () Bool)

(assert (=> b!4629297 m!5476121))

(declare-fun m!5476123 () Bool)

(assert (=> b!4629297 m!5476123))

(declare-fun m!5476125 () Bool)

(assert (=> b!4629297 m!5476125))

(declare-fun m!5476127 () Bool)

(assert (=> b!4629297 m!5476127))

(declare-fun m!5476129 () Bool)

(assert (=> b!4629297 m!5476129))

(assert (=> b!4629297 m!5476113))

(declare-fun m!5476131 () Bool)

(assert (=> b!4629297 m!5476131))

(assert (=> b!4629297 m!5476127))

(declare-fun m!5476133 () Bool)

(assert (=> b!4629297 m!5476133))

(declare-fun m!5476135 () Bool)

(assert (=> b!4629296 m!5476135))

(declare-fun m!5476137 () Bool)

(assert (=> bm!322985 m!5476137))

(assert (=> b!4629299 m!5476121))

(assert (=> bm!322984 m!5476003))

(assert (=> b!4629049 d!1458643))

(declare-fun d!1458645 () Bool)

(assert (=> d!1458645 (= (eq!837 (addToMapMapFromBucket!983 (Cons!51580 lt!1788459 lt!1788438) (ListMap!4314 Nil!51580)) (+!1888 (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788459)) (= (content!8838 (toList!5009 (addToMapMapFromBucket!983 (Cons!51580 lt!1788459 lt!1788438) (ListMap!4314 Nil!51580)))) (content!8838 (toList!5009 (+!1888 (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788459)))))))

(declare-fun bs!1026182 () Bool)

(assert (= bs!1026182 d!1458645))

(declare-fun m!5476139 () Bool)

(assert (=> bs!1026182 m!5476139))

(declare-fun m!5476141 () Bool)

(assert (=> bs!1026182 m!5476141))

(assert (=> b!4629049 d!1458645))

(declare-fun bs!1026183 () Bool)

(declare-fun b!4629305 () Bool)

(assert (= bs!1026183 (and b!4629305 b!4629242)))

(declare-fun lambda!193192 () Int)

(assert (=> bs!1026183 (= lambda!193192 lambda!193167)))

(declare-fun bs!1026184 () Bool)

(assert (= bs!1026184 (and b!4629305 b!4629239)))

(assert (=> bs!1026184 (= (= (ListMap!4314 Nil!51580) lt!1788746) (= lambda!193192 lambda!193169))))

(declare-fun bs!1026185 () Bool)

(assert (= bs!1026185 (and b!4629305 d!1458629)))

(assert (=> bs!1026185 (= (= (ListMap!4314 Nil!51580) lt!1788800) (= lambda!193192 lambda!193182))))

(declare-fun bs!1026186 () Bool)

(assert (= bs!1026186 (and b!4629305 b!4629281)))

(assert (=> bs!1026186 (= (= (ListMap!4314 Nil!51580) lt!1788798) (= lambda!193192 lambda!193179))))

(declare-fun bs!1026187 () Bool)

(assert (= bs!1026187 (and b!4629305 d!1458643)))

(assert (=> bs!1026187 (= (= (ListMap!4314 Nil!51580) lt!1788848) (= lambda!193192 lambda!193190))))

(declare-fun bs!1026188 () Bool)

(assert (= bs!1026188 (and b!4629305 d!1458577)))

(assert (=> bs!1026188 (= (= (ListMap!4314 Nil!51580) lt!1788748) (= lambda!193192 lambda!193170))))

(assert (=> bs!1026186 (= lambda!193192 lambda!193178)))

(declare-fun bs!1026189 () Bool)

(assert (= bs!1026189 (and b!4629305 b!4629297)))

(assert (=> bs!1026189 (= (= (ListMap!4314 Nil!51580) lt!1788846) (= lambda!193192 lambda!193189))))

(declare-fun bs!1026190 () Bool)

(assert (= bs!1026190 (and b!4629305 b!4629284)))

(assert (=> bs!1026190 (= lambda!193192 lambda!193175)))

(assert (=> bs!1026189 (= lambda!193192 lambda!193187)))

(assert (=> bs!1026184 (= lambda!193192 lambda!193168)))

(declare-fun bs!1026192 () Bool)

(assert (= bs!1026192 (and b!4629305 b!4629300)))

(assert (=> bs!1026192 (= lambda!193192 lambda!193185)))

(assert (=> b!4629305 true))

(declare-fun bs!1026198 () Bool)

(declare-fun b!4629302 () Bool)

(assert (= bs!1026198 (and b!4629302 b!4629242)))

(declare-fun lambda!193194 () Int)

(assert (=> bs!1026198 (= lambda!193194 lambda!193167)))

(declare-fun bs!1026200 () Bool)

(assert (= bs!1026200 (and b!4629302 b!4629239)))

(assert (=> bs!1026200 (= (= (ListMap!4314 Nil!51580) lt!1788746) (= lambda!193194 lambda!193169))))

(declare-fun bs!1026202 () Bool)

(assert (= bs!1026202 (and b!4629302 b!4629305)))

(assert (=> bs!1026202 (= lambda!193194 lambda!193192)))

(declare-fun bs!1026203 () Bool)

(assert (= bs!1026203 (and b!4629302 d!1458629)))

(assert (=> bs!1026203 (= (= (ListMap!4314 Nil!51580) lt!1788800) (= lambda!193194 lambda!193182))))

(declare-fun bs!1026204 () Bool)

(assert (= bs!1026204 (and b!4629302 b!4629281)))

(assert (=> bs!1026204 (= (= (ListMap!4314 Nil!51580) lt!1788798) (= lambda!193194 lambda!193179))))

(declare-fun bs!1026205 () Bool)

(assert (= bs!1026205 (and b!4629302 d!1458643)))

(assert (=> bs!1026205 (= (= (ListMap!4314 Nil!51580) lt!1788848) (= lambda!193194 lambda!193190))))

(declare-fun bs!1026206 () Bool)

(assert (= bs!1026206 (and b!4629302 d!1458577)))

(assert (=> bs!1026206 (= (= (ListMap!4314 Nil!51580) lt!1788748) (= lambda!193194 lambda!193170))))

(assert (=> bs!1026204 (= lambda!193194 lambda!193178)))

(declare-fun bs!1026207 () Bool)

(assert (= bs!1026207 (and b!4629302 b!4629297)))

(assert (=> bs!1026207 (= (= (ListMap!4314 Nil!51580) lt!1788846) (= lambda!193194 lambda!193189))))

(declare-fun bs!1026208 () Bool)

(assert (= bs!1026208 (and b!4629302 b!4629284)))

(assert (=> bs!1026208 (= lambda!193194 lambda!193175)))

(assert (=> bs!1026207 (= lambda!193194 lambda!193187)))

(assert (=> bs!1026200 (= lambda!193194 lambda!193168)))

(declare-fun bs!1026209 () Bool)

(assert (= bs!1026209 (and b!4629302 b!4629300)))

(assert (=> bs!1026209 (= lambda!193194 lambda!193185)))

(assert (=> b!4629302 true))

(declare-fun lt!1788867 () ListMap!4313)

(declare-fun lambda!193195 () Int)

(assert (=> bs!1026198 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193167))))

(assert (=> bs!1026200 (= (= lt!1788867 lt!1788746) (= lambda!193195 lambda!193169))))

(assert (=> bs!1026202 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193192))))

(assert (=> bs!1026203 (= (= lt!1788867 lt!1788800) (= lambda!193195 lambda!193182))))

(assert (=> bs!1026204 (= (= lt!1788867 lt!1788798) (= lambda!193195 lambda!193179))))

(assert (=> bs!1026205 (= (= lt!1788867 lt!1788848) (= lambda!193195 lambda!193190))))

(assert (=> bs!1026206 (= (= lt!1788867 lt!1788748) (= lambda!193195 lambda!193170))))

(assert (=> bs!1026207 (= (= lt!1788867 lt!1788846) (= lambda!193195 lambda!193189))))

(assert (=> bs!1026208 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193175))))

(assert (=> bs!1026207 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193187))))

(assert (=> bs!1026200 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193168))))

(assert (=> bs!1026209 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193185))))

(assert (=> bs!1026204 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193178))))

(assert (=> b!4629302 (= (= lt!1788867 (ListMap!4314 Nil!51580)) (= lambda!193195 lambda!193194))))

(assert (=> b!4629302 true))

(declare-fun bs!1026210 () Bool)

(declare-fun d!1458647 () Bool)

(assert (= bs!1026210 (and d!1458647 b!4629242)))

(declare-fun lt!1788869 () ListMap!4313)

(declare-fun lambda!193196 () Int)

(assert (=> bs!1026210 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193167))))

(declare-fun bs!1026211 () Bool)

(assert (= bs!1026211 (and d!1458647 b!4629239)))

(assert (=> bs!1026211 (= (= lt!1788869 lt!1788746) (= lambda!193196 lambda!193169))))

(declare-fun bs!1026212 () Bool)

(assert (= bs!1026212 (and d!1458647 b!4629305)))

(assert (=> bs!1026212 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193192))))

(declare-fun bs!1026213 () Bool)

(assert (= bs!1026213 (and d!1458647 b!4629281)))

(assert (=> bs!1026213 (= (= lt!1788869 lt!1788798) (= lambda!193196 lambda!193179))))

(declare-fun bs!1026214 () Bool)

(assert (= bs!1026214 (and d!1458647 d!1458643)))

(assert (=> bs!1026214 (= (= lt!1788869 lt!1788848) (= lambda!193196 lambda!193190))))

(declare-fun bs!1026215 () Bool)

(assert (= bs!1026215 (and d!1458647 d!1458577)))

(assert (=> bs!1026215 (= (= lt!1788869 lt!1788748) (= lambda!193196 lambda!193170))))

(declare-fun bs!1026216 () Bool)

(assert (= bs!1026216 (and d!1458647 b!4629297)))

(assert (=> bs!1026216 (= (= lt!1788869 lt!1788846) (= lambda!193196 lambda!193189))))

(declare-fun bs!1026217 () Bool)

(assert (= bs!1026217 (and d!1458647 b!4629284)))

(assert (=> bs!1026217 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193175))))

(assert (=> bs!1026216 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193187))))

(declare-fun bs!1026218 () Bool)

(assert (= bs!1026218 (and d!1458647 b!4629302)))

(assert (=> bs!1026218 (= (= lt!1788869 lt!1788867) (= lambda!193196 lambda!193195))))

(declare-fun bs!1026219 () Bool)

(assert (= bs!1026219 (and d!1458647 d!1458629)))

(assert (=> bs!1026219 (= (= lt!1788869 lt!1788800) (= lambda!193196 lambda!193182))))

(assert (=> bs!1026211 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193168))))

(declare-fun bs!1026220 () Bool)

(assert (= bs!1026220 (and d!1458647 b!4629300)))

(assert (=> bs!1026220 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193185))))

(assert (=> bs!1026213 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193178))))

(assert (=> bs!1026218 (= (= lt!1788869 (ListMap!4314 Nil!51580)) (= lambda!193196 lambda!193194))))

(assert (=> d!1458647 true))

(declare-fun b!4629301 () Bool)

(declare-fun res!1941931 () Bool)

(declare-fun e!2887766 () Bool)

(assert (=> b!4629301 (=> (not res!1941931) (not e!2887766))))

(assert (=> b!4629301 (= res!1941931 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193196))))

(declare-fun bm!322986 () Bool)

(declare-fun c!792403 () Bool)

(declare-fun call!322992 () Bool)

(assert (=> bm!322986 (= call!322992 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) (ite c!792403 lambda!193192 lambda!193195)))))

(declare-fun e!2887767 () ListMap!4313)

(assert (=> b!4629302 (= e!2887767 lt!1788867)))

(declare-fun lt!1788873 () ListMap!4313)

(assert (=> b!4629302 (= lt!1788873 (+!1888 (ListMap!4314 Nil!51580) (h!57644 (Cons!51580 lt!1788453 lt!1788443))))))

(assert (=> b!4629302 (= lt!1788867 (addToMapMapFromBucket!983 (t!358750 (Cons!51580 lt!1788453 lt!1788443)) (+!1888 (ListMap!4314 Nil!51580) (h!57644 (Cons!51580 lt!1788453 lt!1788443)))))))

(declare-fun lt!1788863 () Unit!112884)

(declare-fun call!322993 () Unit!112884)

(assert (=> b!4629302 (= lt!1788863 call!322993)))

(assert (=> b!4629302 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193194)))

(declare-fun lt!1788872 () Unit!112884)

(assert (=> b!4629302 (= lt!1788872 lt!1788863)))

(declare-fun call!322991 () Bool)

(assert (=> b!4629302 call!322991))

(declare-fun lt!1788870 () Unit!112884)

(declare-fun Unit!112966 () Unit!112884)

(assert (=> b!4629302 (= lt!1788870 Unit!112966)))

(assert (=> b!4629302 (forall!10852 (t!358750 (Cons!51580 lt!1788453 lt!1788443)) lambda!193195)))

(declare-fun lt!1788874 () Unit!112884)

(declare-fun Unit!112967 () Unit!112884)

(assert (=> b!4629302 (= lt!1788874 Unit!112967)))

(declare-fun lt!1788877 () Unit!112884)

(declare-fun Unit!112968 () Unit!112884)

(assert (=> b!4629302 (= lt!1788877 Unit!112968)))

(declare-fun lt!1788859 () Unit!112884)

(assert (=> b!4629302 (= lt!1788859 (forallContained!3082 (toList!5009 lt!1788873) lambda!193195 (h!57644 (Cons!51580 lt!1788453 lt!1788443))))))

(assert (=> b!4629302 (contains!14653 lt!1788873 (_1!29561 (h!57644 (Cons!51580 lt!1788453 lt!1788443))))))

(declare-fun lt!1788857 () Unit!112884)

(declare-fun Unit!112969 () Unit!112884)

(assert (=> b!4629302 (= lt!1788857 Unit!112969)))

(assert (=> b!4629302 (contains!14653 lt!1788867 (_1!29561 (h!57644 (Cons!51580 lt!1788453 lt!1788443))))))

(declare-fun lt!1788861 () Unit!112884)

(declare-fun Unit!112970 () Unit!112884)

(assert (=> b!4629302 (= lt!1788861 Unit!112970)))

(assert (=> b!4629302 (forall!10852 (Cons!51580 lt!1788453 lt!1788443) lambda!193195)))

(declare-fun lt!1788865 () Unit!112884)

(declare-fun Unit!112971 () Unit!112884)

(assert (=> b!4629302 (= lt!1788865 Unit!112971)))

(assert (=> b!4629302 (forall!10852 (toList!5009 lt!1788873) lambda!193195)))

(declare-fun lt!1788864 () Unit!112884)

(declare-fun Unit!112972 () Unit!112884)

(assert (=> b!4629302 (= lt!1788864 Unit!112972)))

(declare-fun lt!1788875 () Unit!112884)

(declare-fun Unit!112973 () Unit!112884)

(assert (=> b!4629302 (= lt!1788875 Unit!112973)))

(declare-fun lt!1788858 () Unit!112884)

(assert (=> b!4629302 (= lt!1788858 (addForallContainsKeyThenBeforeAdding!519 (ListMap!4314 Nil!51580) lt!1788867 (_1!29561 (h!57644 (Cons!51580 lt!1788453 lt!1788443))) (_2!29561 (h!57644 (Cons!51580 lt!1788453 lt!1788443)))))))

(assert (=> b!4629302 call!322992))

(declare-fun lt!1788866 () Unit!112884)

(assert (=> b!4629302 (= lt!1788866 lt!1788858)))

(assert (=> b!4629302 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193195)))

(declare-fun lt!1788868 () Unit!112884)

(declare-fun Unit!112974 () Unit!112884)

(assert (=> b!4629302 (= lt!1788868 Unit!112974)))

(declare-fun res!1941932 () Bool)

(assert (=> b!4629302 (= res!1941932 (forall!10852 (Cons!51580 lt!1788453 lt!1788443) lambda!193195))))

(declare-fun e!2887768 () Bool)

(assert (=> b!4629302 (=> (not res!1941932) (not e!2887768))))

(assert (=> b!4629302 e!2887768))

(declare-fun lt!1788862 () Unit!112884)

(declare-fun Unit!112975 () Unit!112884)

(assert (=> b!4629302 (= lt!1788862 Unit!112975)))

(declare-fun bm!322987 () Bool)

(assert (=> bm!322987 (= call!322993 (lemmaContainsAllItsOwnKeys!520 (ListMap!4314 Nil!51580)))))

(declare-fun bm!322988 () Bool)

(assert (=> bm!322988 (= call!322991 (forall!10852 (ite c!792403 (toList!5009 (ListMap!4314 Nil!51580)) (toList!5009 lt!1788873)) (ite c!792403 lambda!193192 lambda!193195)))))

(declare-fun b!4629303 () Bool)

(assert (=> b!4629303 (= e!2887766 (invariantList!1218 (toList!5009 lt!1788869)))))

(assert (=> d!1458647 e!2887766))

(declare-fun res!1941930 () Bool)

(assert (=> d!1458647 (=> (not res!1941930) (not e!2887766))))

(assert (=> d!1458647 (= res!1941930 (forall!10852 (Cons!51580 lt!1788453 lt!1788443) lambda!193196))))

(assert (=> d!1458647 (= lt!1788869 e!2887767)))

(assert (=> d!1458647 (= c!792403 ((_ is Nil!51580) (Cons!51580 lt!1788453 lt!1788443)))))

(assert (=> d!1458647 (noDuplicateKeys!1522 (Cons!51580 lt!1788453 lt!1788443))))

(assert (=> d!1458647 (= (addToMapMapFromBucket!983 (Cons!51580 lt!1788453 lt!1788443) (ListMap!4314 Nil!51580)) lt!1788869)))

(declare-fun b!4629304 () Bool)

(assert (=> b!4629304 (= e!2887768 (forall!10852 (toList!5009 (ListMap!4314 Nil!51580)) lambda!193195))))

(assert (=> b!4629305 (= e!2887767 (ListMap!4314 Nil!51580))))

(declare-fun lt!1788860 () Unit!112884)

(assert (=> b!4629305 (= lt!1788860 call!322993)))

(assert (=> b!4629305 call!322992))

(declare-fun lt!1788876 () Unit!112884)

(assert (=> b!4629305 (= lt!1788876 lt!1788860)))

(assert (=> b!4629305 call!322991))

(declare-fun lt!1788871 () Unit!112884)

(declare-fun Unit!112976 () Unit!112884)

(assert (=> b!4629305 (= lt!1788871 Unit!112976)))

(assert (= (and d!1458647 c!792403) b!4629305))

(assert (= (and d!1458647 (not c!792403)) b!4629302))

(assert (= (and b!4629302 res!1941932) b!4629304))

(assert (= (or b!4629305 b!4629302) bm!322987))

(assert (= (or b!4629305 b!4629302) bm!322988))

(assert (= (or b!4629305 b!4629302) bm!322986))

(assert (= (and d!1458647 res!1941930) b!4629301))

(assert (= (and b!4629301 res!1941931) b!4629303))

(declare-fun m!5476187 () Bool)

(assert (=> d!1458647 m!5476187))

(declare-fun m!5476189 () Bool)

(assert (=> d!1458647 m!5476189))

(declare-fun m!5476191 () Bool)

(assert (=> b!4629303 m!5476191))

(declare-fun m!5476193 () Bool)

(assert (=> bm!322986 m!5476193))

(declare-fun m!5476195 () Bool)

(assert (=> b!4629302 m!5476195))

(declare-fun m!5476197 () Bool)

(assert (=> b!4629302 m!5476197))

(declare-fun m!5476199 () Bool)

(assert (=> b!4629302 m!5476199))

(declare-fun m!5476201 () Bool)

(assert (=> b!4629302 m!5476201))

(declare-fun m!5476203 () Bool)

(assert (=> b!4629302 m!5476203))

(declare-fun m!5476205 () Bool)

(assert (=> b!4629302 m!5476205))

(declare-fun m!5476207 () Bool)

(assert (=> b!4629302 m!5476207))

(declare-fun m!5476209 () Bool)

(assert (=> b!4629302 m!5476209))

(declare-fun m!5476211 () Bool)

(assert (=> b!4629302 m!5476211))

(assert (=> b!4629302 m!5476195))

(declare-fun m!5476213 () Bool)

(assert (=> b!4629302 m!5476213))

(assert (=> b!4629302 m!5476209))

(declare-fun m!5476215 () Bool)

(assert (=> b!4629302 m!5476215))

(declare-fun m!5476217 () Bool)

(assert (=> b!4629301 m!5476217))

(declare-fun m!5476219 () Bool)

(assert (=> bm!322988 m!5476219))

(assert (=> b!4629304 m!5476203))

(assert (=> bm!322987 m!5476003))

(assert (=> b!4629049 d!1458647))

(declare-fun d!1458655 () Bool)

(assert (=> d!1458655 (= (head!9656 newBucket!224) (h!57644 newBucket!224))))

(assert (=> b!4629049 d!1458655))

(declare-fun bs!1026221 () Bool)

(declare-fun d!1458657 () Bool)

(assert (= bs!1026221 (and d!1458657 b!4629055)))

(declare-fun lambda!193199 () Int)

(assert (=> bs!1026221 (= lambda!193199 lambda!193076)))

(declare-fun bs!1026222 () Bool)

(assert (= bs!1026222 (and d!1458657 d!1458621)))

(assert (=> bs!1026222 (= lambda!193199 lambda!193174)))

(declare-fun bs!1026223 () Bool)

(assert (= bs!1026223 (and d!1458657 d!1458637)))

(assert (=> bs!1026223 (= lambda!193199 lambda!193183)))

(assert (=> d!1458657 (contains!14653 (extractMap!1578 (toList!5010 (ListLongMap!3600 lt!1788439))) key!4968)))

(declare-fun lt!1788885 () Unit!112884)

(declare-fun choose!31435 (ListLongMap!3599 K!12955 Hashable!5919) Unit!112884)

(assert (=> d!1458657 (= lt!1788885 (choose!31435 (ListLongMap!3600 lt!1788439) key!4968 hashF!1389))))

(assert (=> d!1458657 (forall!10850 (toList!5010 (ListLongMap!3600 lt!1788439)) lambda!193199)))

(assert (=> d!1458657 (= (lemmaListContainsThenExtractedMapContains!340 (ListLongMap!3600 lt!1788439) key!4968 hashF!1389) lt!1788885)))

(declare-fun bs!1026224 () Bool)

(assert (= bs!1026224 d!1458657))

(declare-fun m!5476233 () Bool)

(assert (=> bs!1026224 m!5476233))

(assert (=> bs!1026224 m!5476233))

(declare-fun m!5476235 () Bool)

(assert (=> bs!1026224 m!5476235))

(declare-fun m!5476237 () Bool)

(assert (=> bs!1026224 m!5476237))

(declare-fun m!5476239 () Bool)

(assert (=> bs!1026224 m!5476239))

(assert (=> b!4629049 d!1458657))

(declare-fun d!1458661 () Bool)

(declare-fun e!2887775 () Bool)

(assert (=> d!1458661 e!2887775))

(declare-fun res!1941937 () Bool)

(assert (=> d!1458661 (=> (not res!1941937) (not e!2887775))))

(declare-fun lt!1788889 () ListMap!4313)

(assert (=> d!1458661 (= res!1941937 (contains!14653 lt!1788889 (_1!29561 lt!1788459)))))

(declare-fun lt!1788888 () List!51704)

(assert (=> d!1458661 (= lt!1788889 (ListMap!4314 lt!1788888))))

(declare-fun lt!1788886 () Unit!112884)

(declare-fun lt!1788887 () Unit!112884)

(assert (=> d!1458661 (= lt!1788886 lt!1788887)))

(assert (=> d!1458661 (= (getValueByKey!1479 lt!1788888 (_1!29561 lt!1788459)) (Some!11634 (_2!29561 lt!1788459)))))

(assert (=> d!1458661 (= lt!1788887 (lemmaContainsTupThenGetReturnValue!862 lt!1788888 (_1!29561 lt!1788459) (_2!29561 lt!1788459)))))

(assert (=> d!1458661 (= lt!1788888 (insertNoDuplicatedKeys!370 (toList!5009 (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580))) (_1!29561 lt!1788459) (_2!29561 lt!1788459)))))

(assert (=> d!1458661 (= (+!1888 (addToMapMapFromBucket!983 lt!1788438 (ListMap!4314 Nil!51580)) lt!1788459) lt!1788889)))

(declare-fun b!4629315 () Bool)

(declare-fun res!1941936 () Bool)

(assert (=> b!4629315 (=> (not res!1941936) (not e!2887775))))

(assert (=> b!4629315 (= res!1941936 (= (getValueByKey!1479 (toList!5009 lt!1788889) (_1!29561 lt!1788459)) (Some!11634 (_2!29561 lt!1788459))))))

(declare-fun b!4629316 () Bool)

(assert (=> b!4629316 (= e!2887775 (contains!14657 (toList!5009 lt!1788889) lt!1788459))))

(assert (= (and d!1458661 res!1941937) b!4629315))

(assert (= (and b!4629315 res!1941936) b!4629316))

(declare-fun m!5476241 () Bool)

(assert (=> d!1458661 m!5476241))

(declare-fun m!5476243 () Bool)

(assert (=> d!1458661 m!5476243))

(declare-fun m!5476245 () Bool)

(assert (=> d!1458661 m!5476245))

(declare-fun m!5476247 () Bool)

(assert (=> d!1458661 m!5476247))

(declare-fun m!5476249 () Bool)

(assert (=> b!4629315 m!5476249))

(declare-fun m!5476251 () Bool)

(assert (=> b!4629316 m!5476251))

(assert (=> b!4629049 d!1458661))

(declare-fun d!1458663 () Bool)

(declare-fun e!2887776 () Bool)

(assert (=> d!1458663 e!2887776))

(declare-fun res!1941939 () Bool)

(assert (=> d!1458663 (=> (not res!1941939) (not e!2887776))))

(declare-fun lt!1788893 () ListMap!4313)

(assert (=> d!1458663 (= res!1941939 (contains!14653 lt!1788893 (_1!29561 lt!1788453)))))

(declare-fun lt!1788892 () List!51704)

(assert (=> d!1458663 (= lt!1788893 (ListMap!4314 lt!1788892))))

(declare-fun lt!1788890 () Unit!112884)

(declare-fun lt!1788891 () Unit!112884)

(assert (=> d!1458663 (= lt!1788890 lt!1788891)))

(assert (=> d!1458663 (= (getValueByKey!1479 lt!1788892 (_1!29561 lt!1788453)) (Some!11634 (_2!29561 lt!1788453)))))

(assert (=> d!1458663 (= lt!1788891 (lemmaContainsTupThenGetReturnValue!862 lt!1788892 (_1!29561 lt!1788453) (_2!29561 lt!1788453)))))

(assert (=> d!1458663 (= lt!1788892 (insertNoDuplicatedKeys!370 (toList!5009 (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580))) (_1!29561 lt!1788453) (_2!29561 lt!1788453)))))

(assert (=> d!1458663 (= (+!1888 (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788453) lt!1788893)))

(declare-fun b!4629317 () Bool)

(declare-fun res!1941938 () Bool)

(assert (=> b!4629317 (=> (not res!1941938) (not e!2887776))))

(assert (=> b!4629317 (= res!1941938 (= (getValueByKey!1479 (toList!5009 lt!1788893) (_1!29561 lt!1788453)) (Some!11634 (_2!29561 lt!1788453))))))

(declare-fun b!4629318 () Bool)

(assert (=> b!4629318 (= e!2887776 (contains!14657 (toList!5009 lt!1788893) lt!1788453))))

(assert (= (and d!1458663 res!1941939) b!4629317))

(assert (= (and b!4629317 res!1941938) b!4629318))

(declare-fun m!5476253 () Bool)

(assert (=> d!1458663 m!5476253))

(declare-fun m!5476255 () Bool)

(assert (=> d!1458663 m!5476255))

(declare-fun m!5476257 () Bool)

(assert (=> d!1458663 m!5476257))

(declare-fun m!5476259 () Bool)

(assert (=> d!1458663 m!5476259))

(declare-fun m!5476261 () Bool)

(assert (=> b!4629317 m!5476261))

(declare-fun m!5476263 () Bool)

(assert (=> b!4629318 m!5476263))

(assert (=> b!4629049 d!1458663))

(declare-fun d!1458665 () Bool)

(assert (=> d!1458665 (= (eq!837 (addToMapMapFromBucket!983 (Cons!51580 lt!1788453 lt!1788443) (ListMap!4314 Nil!51580)) (+!1888 (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788453)) (= (content!8838 (toList!5009 (addToMapMapFromBucket!983 (Cons!51580 lt!1788453 lt!1788443) (ListMap!4314 Nil!51580)))) (content!8838 (toList!5009 (+!1888 (addToMapMapFromBucket!983 lt!1788443 (ListMap!4314 Nil!51580)) lt!1788453)))))))

(declare-fun bs!1026225 () Bool)

(assert (= bs!1026225 d!1458665))

(declare-fun m!5476265 () Bool)

(assert (=> bs!1026225 m!5476265))

(declare-fun m!5476267 () Bool)

(assert (=> bs!1026225 m!5476267))

(assert (=> b!4629049 d!1458665))

(declare-fun b!4629356 () Bool)

(declare-datatypes ((List!51707 0))(
  ( (Nil!51583) (Cons!51583 (h!57649 K!12955) (t!358755 List!51707)) )
))
(declare-fun e!2887804 () List!51707)

(declare-fun getKeysList!669 (List!51704) List!51707)

(assert (=> b!4629356 (= e!2887804 (getKeysList!669 (toList!5009 lt!1788448)))))

(declare-fun b!4629357 () Bool)

(declare-fun e!2887805 () Bool)

(declare-fun e!2887807 () Bool)

(assert (=> b!4629357 (= e!2887805 e!2887807)))

(declare-fun res!1941958 () Bool)

(assert (=> b!4629357 (=> (not res!1941958) (not e!2887807))))

(declare-fun isDefined!8900 (Option!11635) Bool)

(assert (=> b!4629357 (= res!1941958 (isDefined!8900 (getValueByKey!1479 (toList!5009 lt!1788448) key!4968)))))

(declare-fun b!4629358 () Bool)

(declare-fun keys!18184 (ListMap!4313) List!51707)

(assert (=> b!4629358 (= e!2887804 (keys!18184 lt!1788448))))

(declare-fun b!4629359 () Bool)

(declare-fun e!2887806 () Unit!112884)

(declare-fun e!2887803 () Unit!112884)

(assert (=> b!4629359 (= e!2887806 e!2887803)))

(declare-fun c!792419 () Bool)

(declare-fun call!322997 () Bool)

(assert (=> b!4629359 (= c!792419 call!322997)))

(declare-fun b!4629360 () Bool)

(declare-fun lt!1788942 () Unit!112884)

(assert (=> b!4629360 (= e!2887806 lt!1788942)))

(declare-fun lt!1788940 () Unit!112884)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1381 (List!51704 K!12955) Unit!112884)

(assert (=> b!4629360 (= lt!1788940 (lemmaContainsKeyImpliesGetValueByKeyDefined!1381 (toList!5009 lt!1788448) key!4968))))

(assert (=> b!4629360 (isDefined!8900 (getValueByKey!1479 (toList!5009 lt!1788448) key!4968))))

(declare-fun lt!1788941 () Unit!112884)

(assert (=> b!4629360 (= lt!1788941 lt!1788940)))

(declare-fun lemmaInListThenGetKeysListContains!664 (List!51704 K!12955) Unit!112884)

(assert (=> b!4629360 (= lt!1788942 (lemmaInListThenGetKeysListContains!664 (toList!5009 lt!1788448) key!4968))))

(assert (=> b!4629360 call!322997))

(declare-fun b!4629361 () Bool)

(declare-fun contains!14659 (List!51707 K!12955) Bool)

(assert (=> b!4629361 (= e!2887807 (contains!14659 (keys!18184 lt!1788448) key!4968))))

(declare-fun d!1458667 () Bool)

(assert (=> d!1458667 e!2887805))

(declare-fun res!1941959 () Bool)

(assert (=> d!1458667 (=> res!1941959 e!2887805)))

(declare-fun e!2887802 () Bool)

(assert (=> d!1458667 (= res!1941959 e!2887802)))

(declare-fun res!1941957 () Bool)

(assert (=> d!1458667 (=> (not res!1941957) (not e!2887802))))

(declare-fun lt!1788937 () Bool)

(assert (=> d!1458667 (= res!1941957 (not lt!1788937))))

(declare-fun lt!1788936 () Bool)

(assert (=> d!1458667 (= lt!1788937 lt!1788936)))

(declare-fun lt!1788939 () Unit!112884)

(assert (=> d!1458667 (= lt!1788939 e!2887806)))

(declare-fun c!792417 () Bool)

(assert (=> d!1458667 (= c!792417 lt!1788936)))

(declare-fun containsKey!2493 (List!51704 K!12955) Bool)

(assert (=> d!1458667 (= lt!1788936 (containsKey!2493 (toList!5009 lt!1788448) key!4968))))

(assert (=> d!1458667 (= (contains!14653 lt!1788448 key!4968) lt!1788937)))

(declare-fun bm!322992 () Bool)

(assert (=> bm!322992 (= call!322997 (contains!14659 e!2887804 key!4968))))

(declare-fun c!792418 () Bool)

(assert (=> bm!322992 (= c!792418 c!792417)))

(declare-fun b!4629362 () Bool)

(declare-fun Unit!112977 () Unit!112884)

(assert (=> b!4629362 (= e!2887803 Unit!112977)))

(declare-fun b!4629363 () Bool)

(assert (=> b!4629363 false))

(declare-fun lt!1788935 () Unit!112884)

(declare-fun lt!1788938 () Unit!112884)

(assert (=> b!4629363 (= lt!1788935 lt!1788938)))

(assert (=> b!4629363 (containsKey!2493 (toList!5009 lt!1788448) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!668 (List!51704 K!12955) Unit!112884)

(assert (=> b!4629363 (= lt!1788938 (lemmaInGetKeysListThenContainsKey!668 (toList!5009 lt!1788448) key!4968))))

(declare-fun Unit!112978 () Unit!112884)

(assert (=> b!4629363 (= e!2887803 Unit!112978)))

(declare-fun b!4629364 () Bool)

(assert (=> b!4629364 (= e!2887802 (not (contains!14659 (keys!18184 lt!1788448) key!4968)))))

(assert (= (and d!1458667 c!792417) b!4629360))

(assert (= (and d!1458667 (not c!792417)) b!4629359))

(assert (= (and b!4629359 c!792419) b!4629363))

(assert (= (and b!4629359 (not c!792419)) b!4629362))

(assert (= (or b!4629360 b!4629359) bm!322992))

(assert (= (and bm!322992 c!792418) b!4629356))

(assert (= (and bm!322992 (not c!792418)) b!4629358))

(assert (= (and d!1458667 res!1941957) b!4629364))

(assert (= (and d!1458667 (not res!1941959)) b!4629357))

(assert (= (and b!4629357 res!1941958) b!4629361))

(declare-fun m!5476369 () Bool)

(assert (=> b!4629358 m!5476369))

(declare-fun m!5476371 () Bool)

(assert (=> bm!322992 m!5476371))

(assert (=> b!4629361 m!5476369))

(assert (=> b!4629361 m!5476369))

(declare-fun m!5476373 () Bool)

(assert (=> b!4629361 m!5476373))

(declare-fun m!5476375 () Bool)

(assert (=> b!4629360 m!5476375))

(declare-fun m!5476377 () Bool)

(assert (=> b!4629360 m!5476377))

(assert (=> b!4629360 m!5476377))

(declare-fun m!5476379 () Bool)

(assert (=> b!4629360 m!5476379))

(declare-fun m!5476381 () Bool)

(assert (=> b!4629360 m!5476381))

(assert (=> b!4629364 m!5476369))

(assert (=> b!4629364 m!5476369))

(assert (=> b!4629364 m!5476373))

(declare-fun m!5476383 () Bool)

(assert (=> b!4629363 m!5476383))

(declare-fun m!5476385 () Bool)

(assert (=> b!4629363 m!5476385))

(assert (=> b!4629357 m!5476377))

(assert (=> b!4629357 m!5476377))

(assert (=> b!4629357 m!5476379))

(declare-fun m!5476387 () Bool)

(assert (=> b!4629356 m!5476387))

(assert (=> d!1458667 m!5476383))

(assert (=> b!4629049 d!1458667))

(declare-fun b!4629369 () Bool)

(declare-fun e!2887813 () List!51704)

(assert (=> b!4629369 (= e!2887813 (t!358750 (t!358750 oldBucket!40)))))

(declare-fun b!4629370 () Bool)

(declare-fun e!2887812 () List!51704)

(assert (=> b!4629370 (= e!2887813 e!2887812)))

(declare-fun c!792421 () Bool)

(assert (=> b!4629370 (= c!792421 ((_ is Cons!51580) (t!358750 oldBucket!40)))))

(declare-fun b!4629371 () Bool)

(assert (=> b!4629371 (= e!2887812 (Cons!51580 (h!57644 (t!358750 oldBucket!40)) (removePairForKey!1145 (t!358750 (t!358750 oldBucket!40)) key!4968)))))

(declare-fun b!4629372 () Bool)

(assert (=> b!4629372 (= e!2887812 Nil!51580)))

(declare-fun d!1458689 () Bool)

(declare-fun lt!1788943 () List!51704)

(assert (=> d!1458689 (not (containsKey!2490 lt!1788943 key!4968))))

(assert (=> d!1458689 (= lt!1788943 e!2887813)))

(declare-fun c!792420 () Bool)

(assert (=> d!1458689 (= c!792420 (and ((_ is Cons!51580) (t!358750 oldBucket!40)) (= (_1!29561 (h!57644 (t!358750 oldBucket!40))) key!4968)))))

(assert (=> d!1458689 (noDuplicateKeys!1522 (t!358750 oldBucket!40))))

(assert (=> d!1458689 (= (removePairForKey!1145 (t!358750 oldBucket!40) key!4968) lt!1788943)))

(assert (= (and d!1458689 c!792420) b!4629369))

(assert (= (and d!1458689 (not c!792420)) b!4629370))

(assert (= (and b!4629370 c!792421) b!4629371))

(assert (= (and b!4629370 (not c!792421)) b!4629372))

(declare-fun m!5476389 () Bool)

(assert (=> b!4629371 m!5476389))

(declare-fun m!5476391 () Bool)

(assert (=> d!1458689 m!5476391))

(declare-fun m!5476393 () Bool)

(assert (=> d!1458689 m!5476393))

(assert (=> b!4629045 d!1458689))

(declare-fun bs!1026243 () Bool)

(declare-fun d!1458691 () Bool)

(assert (= bs!1026243 (and d!1458691 b!4629055)))

(declare-fun lambda!193207 () Int)

(assert (=> bs!1026243 (= lambda!193207 lambda!193076)))

(declare-fun bs!1026244 () Bool)

(assert (= bs!1026244 (and d!1458691 d!1458621)))

(assert (=> bs!1026244 (= lambda!193207 lambda!193174)))

(declare-fun bs!1026245 () Bool)

(assert (= bs!1026245 (and d!1458691 d!1458637)))

(assert (=> bs!1026245 (= lambda!193207 lambda!193183)))

(declare-fun bs!1026246 () Bool)

(assert (= bs!1026246 (and d!1458691 d!1458657)))

(assert (=> bs!1026246 (= lambda!193207 lambda!193199)))

(declare-fun e!2887826 () Bool)

(assert (=> d!1458691 e!2887826))

(declare-fun res!1941976 () Bool)

(assert (=> d!1458691 (=> (not res!1941976) (not e!2887826))))

(assert (=> d!1458691 (= res!1941976 (forall!10850 (toList!5010 lt!1788454) lambda!193207))))

(declare-fun lt!1788968 () Unit!112884)

(declare-fun choose!31436 (ListLongMap!3599 K!12955 Hashable!5919) Unit!112884)

(assert (=> d!1458691 (= lt!1788968 (choose!31436 lt!1788454 key!4968 hashF!1389))))

(assert (=> d!1458691 (forall!10850 (toList!5010 lt!1788454) lambda!193207)))

(assert (=> d!1458691 (= (lemmaInGenMapThenGetPairDefined!110 lt!1788454 key!4968 hashF!1389) lt!1788968)))

(declare-fun b!4629392 () Bool)

(assert (=> b!4629392 (= e!2887826 (isDefined!8897 (getPair!314 (apply!12187 lt!1788454 (hash!3542 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1788969 () Unit!112884)

(assert (=> b!4629392 (= lt!1788969 (forallContained!3080 (toList!5010 lt!1788454) lambda!193207 (tuple2!52537 (hash!3542 hashF!1389 key!4968) (apply!12187 lt!1788454 (hash!3542 hashF!1389 key!4968)))))))

(declare-fun lt!1788971 () Unit!112884)

(declare-fun lt!1788966 () Unit!112884)

(assert (=> b!4629392 (= lt!1788971 lt!1788966)))

(declare-fun lt!1788967 () (_ BitVec 64))

(declare-fun lt!1788964 () List!51704)

(assert (=> b!4629392 (contains!14654 (toList!5010 lt!1788454) (tuple2!52537 lt!1788967 lt!1788964))))

(assert (=> b!4629392 (= lt!1788966 (lemmaGetValueImpliesTupleContained!119 lt!1788454 lt!1788967 lt!1788964))))

(declare-fun e!2887825 () Bool)

(assert (=> b!4629392 e!2887825))

(declare-fun res!1941977 () Bool)

(assert (=> b!4629392 (=> (not res!1941977) (not e!2887825))))

(assert (=> b!4629392 (= res!1941977 (contains!14655 lt!1788454 lt!1788967))))

(assert (=> b!4629392 (= lt!1788964 (apply!12187 lt!1788454 (hash!3542 hashF!1389 key!4968)))))

(assert (=> b!4629392 (= lt!1788967 (hash!3542 hashF!1389 key!4968))))

(declare-fun lt!1788970 () Unit!112884)

(declare-fun lt!1788965 () Unit!112884)

(assert (=> b!4629392 (= lt!1788970 lt!1788965)))

(assert (=> b!4629392 (contains!14655 lt!1788454 (hash!3542 hashF!1389 key!4968))))

(assert (=> b!4629392 (= lt!1788965 (lemmaInGenMapThenLongMapContainsHash!520 lt!1788454 key!4968 hashF!1389))))

(declare-fun b!4629391 () Bool)

(declare-fun res!1941975 () Bool)

(assert (=> b!4629391 (=> (not res!1941975) (not e!2887826))))

(assert (=> b!4629391 (= res!1941975 (contains!14653 (extractMap!1578 (toList!5010 lt!1788454)) key!4968))))

(declare-fun b!4629390 () Bool)

(declare-fun res!1941978 () Bool)

(assert (=> b!4629390 (=> (not res!1941978) (not e!2887826))))

(declare-fun allKeysSameHashInMap!1544 (ListLongMap!3599 Hashable!5919) Bool)

(assert (=> b!4629390 (= res!1941978 (allKeysSameHashInMap!1544 lt!1788454 hashF!1389))))

(declare-fun b!4629393 () Bool)

(declare-datatypes ((Option!11636 0))(
  ( (None!11635) (Some!11635 (v!45793 List!51704)) )
))
(declare-fun getValueByKey!1480 (List!51705 (_ BitVec 64)) Option!11636)

(assert (=> b!4629393 (= e!2887825 (= (getValueByKey!1480 (toList!5010 lt!1788454) lt!1788967) (Some!11635 lt!1788964)))))

(assert (= (and d!1458691 res!1941976) b!4629390))

(assert (= (and b!4629390 res!1941978) b!4629391))

(assert (= (and b!4629391 res!1941975) b!4629392))

(assert (= (and b!4629392 res!1941977) b!4629393))

(declare-fun m!5476425 () Bool)

(assert (=> b!4629393 m!5476425))

(assert (=> b!4629392 m!5475599))

(declare-fun m!5476427 () Bool)

(assert (=> b!4629392 m!5476427))

(assert (=> b!4629392 m!5475527))

(declare-fun m!5476429 () Bool)

(assert (=> b!4629392 m!5476429))

(declare-fun m!5476431 () Bool)

(assert (=> b!4629392 m!5476431))

(assert (=> b!4629392 m!5475527))

(declare-fun m!5476433 () Bool)

(assert (=> b!4629392 m!5476433))

(declare-fun m!5476435 () Bool)

(assert (=> b!4629392 m!5476435))

(declare-fun m!5476437 () Bool)

(assert (=> b!4629392 m!5476437))

(assert (=> b!4629392 m!5476435))

(declare-fun m!5476439 () Bool)

(assert (=> b!4629392 m!5476439))

(declare-fun m!5476441 () Bool)

(assert (=> b!4629392 m!5476441))

(assert (=> b!4629392 m!5475527))

(assert (=> b!4629392 m!5476433))

(declare-fun m!5476443 () Bool)

(assert (=> b!4629390 m!5476443))

(declare-fun m!5476445 () Bool)

(assert (=> b!4629391 m!5476445))

(assert (=> b!4629391 m!5476445))

(declare-fun m!5476447 () Bool)

(assert (=> b!4629391 m!5476447))

(declare-fun m!5476449 () Bool)

(assert (=> d!1458691 m!5476449))

(declare-fun m!5476451 () Bool)

(assert (=> d!1458691 m!5476451))

(assert (=> d!1458691 m!5476449))

(assert (=> b!4629055 d!1458691))

(declare-fun d!1458705 () Bool)

(assert (=> d!1458705 (containsKey!2490 oldBucket!40 key!4968)))

(declare-fun lt!1788974 () Unit!112884)

(declare-fun choose!31437 (List!51704 K!12955 Hashable!5919) Unit!112884)

(assert (=> d!1458705 (= lt!1788974 (choose!31437 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1458705 (noDuplicateKeys!1522 oldBucket!40)))

(assert (=> d!1458705 (= (lemmaGetPairDefinedThenContainsKey!68 oldBucket!40 key!4968 hashF!1389) lt!1788974)))

(declare-fun bs!1026247 () Bool)

(assert (= bs!1026247 d!1458705))

(assert (=> bs!1026247 m!5475585))

(declare-fun m!5476453 () Bool)

(assert (=> bs!1026247 m!5476453))

(assert (=> bs!1026247 m!5475539))

(assert (=> b!4629055 d!1458705))

(declare-fun b!4629410 () Bool)

(declare-fun res!1941989 () Bool)

(declare-fun e!2887837 () Bool)

(assert (=> b!4629410 (=> (not res!1941989) (not e!2887837))))

(declare-fun lt!1788977 () Option!11632)

(declare-fun get!17113 (Option!11632) tuple2!52534)

(assert (=> b!4629410 (= res!1941989 (= (_1!29561 (get!17113 lt!1788977)) key!4968))))

(declare-fun b!4629411 () Bool)

(declare-fun e!2887839 () Option!11632)

(assert (=> b!4629411 (= e!2887839 (Some!11631 (h!57644 lt!1788455)))))

(declare-fun d!1458707 () Bool)

(declare-fun e!2887840 () Bool)

(assert (=> d!1458707 e!2887840))

(declare-fun res!1941988 () Bool)

(assert (=> d!1458707 (=> res!1941988 e!2887840)))

(declare-fun e!2887838 () Bool)

(assert (=> d!1458707 (= res!1941988 e!2887838)))

(declare-fun res!1941990 () Bool)

(assert (=> d!1458707 (=> (not res!1941990) (not e!2887838))))

(declare-fun isEmpty!28944 (Option!11632) Bool)

(assert (=> d!1458707 (= res!1941990 (isEmpty!28944 lt!1788977))))

(assert (=> d!1458707 (= lt!1788977 e!2887839)))

(declare-fun c!792426 () Bool)

(assert (=> d!1458707 (= c!792426 (and ((_ is Cons!51580) lt!1788455) (= (_1!29561 (h!57644 lt!1788455)) key!4968)))))

(assert (=> d!1458707 (noDuplicateKeys!1522 lt!1788455)))

(assert (=> d!1458707 (= (getPair!314 lt!1788455 key!4968) lt!1788977)))

(declare-fun b!4629412 () Bool)

(assert (=> b!4629412 (= e!2887838 (not (containsKey!2490 lt!1788455 key!4968)))))

(declare-fun b!4629413 () Bool)

(declare-fun e!2887841 () Option!11632)

(assert (=> b!4629413 (= e!2887839 e!2887841)))

(declare-fun c!792427 () Bool)

(assert (=> b!4629413 (= c!792427 ((_ is Cons!51580) lt!1788455))))

(declare-fun b!4629414 () Bool)

(assert (=> b!4629414 (= e!2887841 None!11631)))

(declare-fun b!4629415 () Bool)

(assert (=> b!4629415 (= e!2887837 (contains!14657 lt!1788455 (get!17113 lt!1788977)))))

(declare-fun b!4629416 () Bool)

(assert (=> b!4629416 (= e!2887841 (getPair!314 (t!358750 lt!1788455) key!4968))))

(declare-fun b!4629417 () Bool)

(assert (=> b!4629417 (= e!2887840 e!2887837)))

(declare-fun res!1941987 () Bool)

(assert (=> b!4629417 (=> (not res!1941987) (not e!2887837))))

(assert (=> b!4629417 (= res!1941987 (isDefined!8897 lt!1788977))))

(assert (= (and d!1458707 c!792426) b!4629411))

(assert (= (and d!1458707 (not c!792426)) b!4629413))

(assert (= (and b!4629413 c!792427) b!4629416))

(assert (= (and b!4629413 (not c!792427)) b!4629414))

(assert (= (and d!1458707 res!1941990) b!4629412))

(assert (= (and d!1458707 (not res!1941988)) b!4629417))

(assert (= (and b!4629417 res!1941987) b!4629410))

(assert (= (and b!4629410 res!1941989) b!4629415))

(declare-fun m!5476455 () Bool)

(assert (=> b!4629410 m!5476455))

(assert (=> b!4629415 m!5476455))

(assert (=> b!4629415 m!5476455))

(declare-fun m!5476457 () Bool)

(assert (=> b!4629415 m!5476457))

(declare-fun m!5476459 () Bool)

(assert (=> b!4629412 m!5476459))

(declare-fun m!5476461 () Bool)

(assert (=> d!1458707 m!5476461))

(declare-fun m!5476463 () Bool)

(assert (=> d!1458707 m!5476463))

(declare-fun m!5476465 () Bool)

(assert (=> b!4629417 m!5476465))

(declare-fun m!5476467 () Bool)

(assert (=> b!4629416 m!5476467))

(assert (=> b!4629055 d!1458707))

(declare-fun d!1458709 () Bool)

(declare-fun res!1941995 () Bool)

(declare-fun e!2887846 () Bool)

(assert (=> d!1458709 (=> res!1941995 e!2887846)))

(assert (=> d!1458709 (= res!1941995 (and ((_ is Cons!51580) (t!358750 oldBucket!40)) (= (_1!29561 (h!57644 (t!358750 oldBucket!40))) key!4968)))))

(assert (=> d!1458709 (= (containsKey!2490 (t!358750 oldBucket!40) key!4968) e!2887846)))

(declare-fun b!4629422 () Bool)

(declare-fun e!2887847 () Bool)

(assert (=> b!4629422 (= e!2887846 e!2887847)))

(declare-fun res!1941996 () Bool)

(assert (=> b!4629422 (=> (not res!1941996) (not e!2887847))))

(assert (=> b!4629422 (= res!1941996 ((_ is Cons!51580) (t!358750 oldBucket!40)))))

(declare-fun b!4629423 () Bool)

(assert (=> b!4629423 (= e!2887847 (containsKey!2490 (t!358750 (t!358750 oldBucket!40)) key!4968))))

(assert (= (and d!1458709 (not res!1941995)) b!4629422))

(assert (= (and b!4629422 res!1941996) b!4629423))

(declare-fun m!5476469 () Bool)

(assert (=> b!4629423 m!5476469))

(assert (=> b!4629055 d!1458709))

(declare-fun d!1458711 () Bool)

(declare-fun dynLambda!21512 (Int tuple2!52536) Bool)

(assert (=> d!1458711 (dynLambda!21512 lambda!193076 lt!1788441)))

(declare-fun lt!1788980 () Unit!112884)

(declare-fun choose!31438 (List!51705 Int tuple2!52536) Unit!112884)

(assert (=> d!1458711 (= lt!1788980 (choose!31438 lt!1788460 lambda!193076 lt!1788441))))

(declare-fun e!2887850 () Bool)

(assert (=> d!1458711 e!2887850))

(declare-fun res!1941999 () Bool)

(assert (=> d!1458711 (=> (not res!1941999) (not e!2887850))))

(assert (=> d!1458711 (= res!1941999 (forall!10850 lt!1788460 lambda!193076))))

(assert (=> d!1458711 (= (forallContained!3080 lt!1788460 lambda!193076 lt!1788441) lt!1788980)))

(declare-fun b!4629426 () Bool)

(assert (=> b!4629426 (= e!2887850 (contains!14654 lt!1788460 lt!1788441))))

(assert (= (and d!1458711 res!1941999) b!4629426))

(declare-fun b_lambda!170837 () Bool)

(assert (=> (not b_lambda!170837) (not d!1458711)))

(declare-fun m!5476471 () Bool)

(assert (=> d!1458711 m!5476471))

(declare-fun m!5476473 () Bool)

(assert (=> d!1458711 m!5476473))

(declare-fun m!5476475 () Bool)

(assert (=> d!1458711 m!5476475))

(assert (=> b!4629426 m!5475581))

(assert (=> b!4629055 d!1458711))

(declare-fun d!1458713 () Bool)

(declare-fun e!2887855 () Bool)

(assert (=> d!1458713 e!2887855))

(declare-fun res!1942002 () Bool)

(assert (=> d!1458713 (=> res!1942002 e!2887855)))

(declare-fun lt!1788992 () Bool)

(assert (=> d!1458713 (= res!1942002 (not lt!1788992))))

(declare-fun lt!1788989 () Bool)

(assert (=> d!1458713 (= lt!1788992 lt!1788989)))

(declare-fun lt!1788990 () Unit!112884)

(declare-fun e!2887856 () Unit!112884)

(assert (=> d!1458713 (= lt!1788990 e!2887856)))

(declare-fun c!792430 () Bool)

(assert (=> d!1458713 (= c!792430 lt!1788989)))

(declare-fun containsKey!2494 (List!51705 (_ BitVec 64)) Bool)

(assert (=> d!1458713 (= lt!1788989 (containsKey!2494 (toList!5010 lt!1788454) lt!1788447))))

(assert (=> d!1458713 (= (contains!14655 lt!1788454 lt!1788447) lt!1788992)))

(declare-fun b!4629433 () Bool)

(declare-fun lt!1788991 () Unit!112884)

(assert (=> b!4629433 (= e!2887856 lt!1788991)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1382 (List!51705 (_ BitVec 64)) Unit!112884)

(assert (=> b!4629433 (= lt!1788991 (lemmaContainsKeyImpliesGetValueByKeyDefined!1382 (toList!5010 lt!1788454) lt!1788447))))

(declare-fun isDefined!8901 (Option!11636) Bool)

(assert (=> b!4629433 (isDefined!8901 (getValueByKey!1480 (toList!5010 lt!1788454) lt!1788447))))

(declare-fun b!4629434 () Bool)

(declare-fun Unit!112990 () Unit!112884)

(assert (=> b!4629434 (= e!2887856 Unit!112990)))

(declare-fun b!4629435 () Bool)

(assert (=> b!4629435 (= e!2887855 (isDefined!8901 (getValueByKey!1480 (toList!5010 lt!1788454) lt!1788447)))))

(assert (= (and d!1458713 c!792430) b!4629433))

(assert (= (and d!1458713 (not c!792430)) b!4629434))

(assert (= (and d!1458713 (not res!1942002)) b!4629435))

(declare-fun m!5476477 () Bool)

(assert (=> d!1458713 m!5476477))

(declare-fun m!5476479 () Bool)

(assert (=> b!4629433 m!5476479))

(declare-fun m!5476481 () Bool)

(assert (=> b!4629433 m!5476481))

(assert (=> b!4629433 m!5476481))

(declare-fun m!5476483 () Bool)

(assert (=> b!4629433 m!5476483))

(assert (=> b!4629435 m!5476481))

(assert (=> b!4629435 m!5476481))

(assert (=> b!4629435 m!5476483))

(assert (=> b!4629055 d!1458713))

(declare-fun d!1458715 () Bool)

(declare-fun res!1942003 () Bool)

(declare-fun e!2887857 () Bool)

(assert (=> d!1458715 (=> res!1942003 e!2887857)))

(assert (=> d!1458715 (= res!1942003 (and ((_ is Cons!51580) oldBucket!40) (= (_1!29561 (h!57644 oldBucket!40)) key!4968)))))

(assert (=> d!1458715 (= (containsKey!2490 oldBucket!40 key!4968) e!2887857)))

(declare-fun b!4629436 () Bool)

(declare-fun e!2887858 () Bool)

(assert (=> b!4629436 (= e!2887857 e!2887858)))

(declare-fun res!1942004 () Bool)

(assert (=> b!4629436 (=> (not res!1942004) (not e!2887858))))

(assert (=> b!4629436 (= res!1942004 ((_ is Cons!51580) oldBucket!40))))

(declare-fun b!4629437 () Bool)

(assert (=> b!4629437 (= e!2887858 (containsKey!2490 (t!358750 oldBucket!40) key!4968))))

(assert (= (and d!1458715 (not res!1942003)) b!4629436))

(assert (= (and b!4629436 res!1942004) b!4629437))

(assert (=> b!4629437 m!5475593))

(assert (=> b!4629055 d!1458715))

(declare-fun bs!1026248 () Bool)

(declare-fun d!1458717 () Bool)

(assert (= bs!1026248 (and d!1458717 d!1458691)))

(declare-fun lambda!193210 () Int)

(assert (=> bs!1026248 (= lambda!193210 lambda!193207)))

(declare-fun bs!1026249 () Bool)

(assert (= bs!1026249 (and d!1458717 d!1458637)))

(assert (=> bs!1026249 (= lambda!193210 lambda!193183)))

(declare-fun bs!1026250 () Bool)

(assert (= bs!1026250 (and d!1458717 d!1458657)))

(assert (=> bs!1026250 (= lambda!193210 lambda!193199)))

(declare-fun bs!1026251 () Bool)

(assert (= bs!1026251 (and d!1458717 d!1458621)))

(assert (=> bs!1026251 (= lambda!193210 lambda!193174)))

(declare-fun bs!1026252 () Bool)

(assert (= bs!1026252 (and d!1458717 b!4629055)))

(assert (=> bs!1026252 (= lambda!193210 lambda!193076)))

(assert (=> d!1458717 (contains!14655 lt!1788454 (hash!3542 hashF!1389 key!4968))))

(declare-fun lt!1788995 () Unit!112884)

(declare-fun choose!31441 (ListLongMap!3599 K!12955 Hashable!5919) Unit!112884)

(assert (=> d!1458717 (= lt!1788995 (choose!31441 lt!1788454 key!4968 hashF!1389))))

(assert (=> d!1458717 (forall!10850 (toList!5010 lt!1788454) lambda!193210)))

(assert (=> d!1458717 (= (lemmaInGenMapThenLongMapContainsHash!520 lt!1788454 key!4968 hashF!1389) lt!1788995)))

(declare-fun bs!1026253 () Bool)

(assert (= bs!1026253 d!1458717))

(assert (=> bs!1026253 m!5475527))

(assert (=> bs!1026253 m!5475527))

(assert (=> bs!1026253 m!5476429))

(declare-fun m!5476485 () Bool)

(assert (=> bs!1026253 m!5476485))

(declare-fun m!5476487 () Bool)

(assert (=> bs!1026253 m!5476487))

(assert (=> b!4629055 d!1458717))

(declare-fun d!1458719 () Bool)

(declare-fun lt!1788998 () Bool)

(declare-fun content!8840 (List!51705) (InoxSet tuple2!52536))

(assert (=> d!1458719 (= lt!1788998 (select (content!8840 lt!1788460) lt!1788441))))

(declare-fun e!2887863 () Bool)

(assert (=> d!1458719 (= lt!1788998 e!2887863)))

(declare-fun res!1942009 () Bool)

(assert (=> d!1458719 (=> (not res!1942009) (not e!2887863))))

(assert (=> d!1458719 (= res!1942009 ((_ is Cons!51581) lt!1788460))))

(assert (=> d!1458719 (= (contains!14654 lt!1788460 lt!1788441) lt!1788998)))

(declare-fun b!4629442 () Bool)

(declare-fun e!2887864 () Bool)

(assert (=> b!4629442 (= e!2887863 e!2887864)))

(declare-fun res!1942010 () Bool)

(assert (=> b!4629442 (=> res!1942010 e!2887864)))

(assert (=> b!4629442 (= res!1942010 (= (h!57645 lt!1788460) lt!1788441))))

(declare-fun b!4629443 () Bool)

(assert (=> b!4629443 (= e!2887864 (contains!14654 (t!358751 lt!1788460) lt!1788441))))

(assert (= (and d!1458719 res!1942009) b!4629442))

(assert (= (and b!4629442 (not res!1942010)) b!4629443))

(declare-fun m!5476489 () Bool)

(assert (=> d!1458719 m!5476489))

(declare-fun m!5476491 () Bool)

(assert (=> d!1458719 m!5476491))

(declare-fun m!5476493 () Bool)

(assert (=> b!4629443 m!5476493))

(assert (=> b!4629055 d!1458719))

(declare-fun d!1458721 () Bool)

(assert (=> d!1458721 (= (isDefined!8897 (getPair!314 lt!1788455 key!4968)) (not (isEmpty!28944 (getPair!314 lt!1788455 key!4968))))))

(declare-fun bs!1026254 () Bool)

(assert (= bs!1026254 d!1458721))

(assert (=> bs!1026254 m!5475589))

(declare-fun m!5476495 () Bool)

(assert (=> bs!1026254 m!5476495))

(assert (=> b!4629055 d!1458721))

(declare-fun d!1458723 () Bool)

(assert (=> d!1458723 (contains!14654 (toList!5010 lt!1788454) (tuple2!52537 lt!1788447 lt!1788455))))

(declare-fun lt!1789001 () Unit!112884)

(declare-fun choose!31442 (ListLongMap!3599 (_ BitVec 64) List!51704) Unit!112884)

(assert (=> d!1458723 (= lt!1789001 (choose!31442 lt!1788454 lt!1788447 lt!1788455))))

(assert (=> d!1458723 (contains!14655 lt!1788454 lt!1788447)))

(assert (=> d!1458723 (= (lemmaGetValueImpliesTupleContained!119 lt!1788454 lt!1788447 lt!1788455) lt!1789001)))

(declare-fun bs!1026255 () Bool)

(assert (= bs!1026255 d!1458723))

(declare-fun m!5476497 () Bool)

(assert (=> bs!1026255 m!5476497))

(declare-fun m!5476499 () Bool)

(assert (=> bs!1026255 m!5476499))

(assert (=> bs!1026255 m!5475583))

(assert (=> b!4629055 d!1458723))

(declare-fun d!1458725 () Bool)

(declare-fun get!17114 (Option!11636) List!51704)

(assert (=> d!1458725 (= (apply!12187 lt!1788454 lt!1788447) (get!17114 (getValueByKey!1480 (toList!5010 lt!1788454) lt!1788447)))))

(declare-fun bs!1026256 () Bool)

(assert (= bs!1026256 d!1458725))

(assert (=> bs!1026256 m!5476481))

(assert (=> bs!1026256 m!5476481))

(declare-fun m!5476501 () Bool)

(assert (=> bs!1026256 m!5476501))

(assert (=> b!4629055 d!1458725))

(declare-fun d!1458727 () Bool)

(assert (=> d!1458727 (= (eq!837 lt!1788442 lt!1788435) (= (content!8838 (toList!5009 lt!1788442)) (content!8838 (toList!5009 lt!1788435))))))

(declare-fun bs!1026257 () Bool)

(assert (= bs!1026257 d!1458727))

(declare-fun m!5476503 () Bool)

(assert (=> bs!1026257 m!5476503))

(declare-fun m!5476505 () Bool)

(assert (=> bs!1026257 m!5476505))

(assert (=> b!4629057 d!1458727))

(declare-fun d!1458729 () Bool)

(assert (=> d!1458729 (= (eq!837 lt!1788457 lt!1788442) (= (content!8838 (toList!5009 lt!1788457)) (content!8838 (toList!5009 lt!1788442))))))

(declare-fun bs!1026258 () Bool)

(assert (= bs!1026258 d!1458729))

(declare-fun m!5476507 () Bool)

(assert (=> bs!1026258 m!5476507))

(assert (=> bs!1026258 m!5476503))

(assert (=> b!4629057 d!1458729))

(declare-fun d!1458731 () Bool)

(declare-fun e!2887867 () Bool)

(assert (=> d!1458731 e!2887867))

(declare-fun res!1942013 () Bool)

(assert (=> d!1458731 (=> (not res!1942013) (not e!2887867))))

(declare-fun lt!1789004 () ListMap!4313)

(assert (=> d!1458731 (= res!1942013 (not (contains!14653 lt!1789004 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!267 (List!51704 K!12955) List!51704)

(assert (=> d!1458731 (= lt!1789004 (ListMap!4314 (removePresrvNoDuplicatedKeys!267 (toList!5009 lt!1788436) key!4968)))))

(assert (=> d!1458731 (= (-!562 lt!1788436 key!4968) lt!1789004)))

(declare-fun b!4629447 () Bool)

(declare-fun content!8841 (List!51707) (InoxSet K!12955))

(assert (=> b!4629447 (= e!2887867 (= ((_ map and) (content!8841 (keys!18184 lt!1788436)) ((_ map not) (store ((as const (Array K!12955 Bool)) false) key!4968 true))) (content!8841 (keys!18184 lt!1789004))))))

(assert (= (and d!1458731 res!1942013) b!4629447))

(declare-fun m!5476509 () Bool)

(assert (=> d!1458731 m!5476509))

(declare-fun m!5476511 () Bool)

(assert (=> d!1458731 m!5476511))

(declare-fun m!5476513 () Bool)

(assert (=> b!4629447 m!5476513))

(declare-fun m!5476515 () Bool)

(assert (=> b!4629447 m!5476515))

(assert (=> b!4629447 m!5476513))

(declare-fun m!5476517 () Bool)

(assert (=> b!4629447 m!5476517))

(declare-fun m!5476519 () Bool)

(assert (=> b!4629447 m!5476519))

(assert (=> b!4629447 m!5476515))

(declare-fun m!5476521 () Bool)

(assert (=> b!4629447 m!5476521))

(assert (=> b!4629057 d!1458731))

(declare-fun d!1458733 () Bool)

(assert (=> d!1458733 (eq!837 (-!562 lt!1788431 key!4968) (-!562 lt!1788436 key!4968))))

(declare-fun lt!1789007 () Unit!112884)

(declare-fun choose!31443 (ListMap!4313 ListMap!4313 K!12955) Unit!112884)

(assert (=> d!1458733 (= lt!1789007 (choose!31443 lt!1788431 lt!1788436 key!4968))))

(assert (=> d!1458733 (eq!837 lt!1788431 lt!1788436)))

(assert (=> d!1458733 (= (lemmaRemovePreservesEq!18 lt!1788431 lt!1788436 key!4968) lt!1789007)))

(declare-fun bs!1026259 () Bool)

(assert (= bs!1026259 d!1458733))

(assert (=> bs!1026259 m!5475609))

(declare-fun m!5476523 () Bool)

(assert (=> bs!1026259 m!5476523))

(declare-fun m!5476525 () Bool)

(assert (=> bs!1026259 m!5476525))

(assert (=> bs!1026259 m!5475517))

(assert (=> bs!1026259 m!5475609))

(declare-fun m!5476527 () Bool)

(assert (=> bs!1026259 m!5476527))

(assert (=> bs!1026259 m!5475517))

(assert (=> b!4629057 d!1458733))

(declare-fun d!1458735 () Bool)

(assert (=> d!1458735 (= (eq!837 lt!1788433 (+!1888 lt!1788461 lt!1788459)) (= (content!8838 (toList!5009 lt!1788433)) (content!8838 (toList!5009 (+!1888 lt!1788461 lt!1788459)))))))

(declare-fun bs!1026260 () Bool)

(assert (= bs!1026260 d!1458735))

(declare-fun m!5476529 () Bool)

(assert (=> bs!1026260 m!5476529))

(declare-fun m!5476531 () Bool)

(assert (=> bs!1026260 m!5476531))

(assert (=> b!4629046 d!1458735))

(declare-fun d!1458737 () Bool)

(declare-fun e!2887868 () Bool)

(assert (=> d!1458737 e!2887868))

(declare-fun res!1942015 () Bool)

(assert (=> d!1458737 (=> (not res!1942015) (not e!2887868))))

(declare-fun lt!1789011 () ListMap!4313)

(assert (=> d!1458737 (= res!1942015 (contains!14653 lt!1789011 (_1!29561 lt!1788459)))))

(declare-fun lt!1789010 () List!51704)

(assert (=> d!1458737 (= lt!1789011 (ListMap!4314 lt!1789010))))

(declare-fun lt!1789008 () Unit!112884)

(declare-fun lt!1789009 () Unit!112884)

(assert (=> d!1458737 (= lt!1789008 lt!1789009)))

(assert (=> d!1458737 (= (getValueByKey!1479 lt!1789010 (_1!29561 lt!1788459)) (Some!11634 (_2!29561 lt!1788459)))))

(assert (=> d!1458737 (= lt!1789009 (lemmaContainsTupThenGetReturnValue!862 lt!1789010 (_1!29561 lt!1788459) (_2!29561 lt!1788459)))))

(assert (=> d!1458737 (= lt!1789010 (insertNoDuplicatedKeys!370 (toList!5009 lt!1788461) (_1!29561 lt!1788459) (_2!29561 lt!1788459)))))

(assert (=> d!1458737 (= (+!1888 lt!1788461 lt!1788459) lt!1789011)))

(declare-fun b!4629448 () Bool)

(declare-fun res!1942014 () Bool)

(assert (=> b!4629448 (=> (not res!1942014) (not e!2887868))))

(assert (=> b!4629448 (= res!1942014 (= (getValueByKey!1479 (toList!5009 lt!1789011) (_1!29561 lt!1788459)) (Some!11634 (_2!29561 lt!1788459))))))

(declare-fun b!4629449 () Bool)

(assert (=> b!4629449 (= e!2887868 (contains!14657 (toList!5009 lt!1789011) lt!1788459))))

(assert (= (and d!1458737 res!1942015) b!4629448))

(assert (= (and b!4629448 res!1942014) b!4629449))

(declare-fun m!5476533 () Bool)

(assert (=> d!1458737 m!5476533))

(declare-fun m!5476535 () Bool)

(assert (=> d!1458737 m!5476535))

(declare-fun m!5476537 () Bool)

(assert (=> d!1458737 m!5476537))

(declare-fun m!5476539 () Bool)

(assert (=> d!1458737 m!5476539))

(declare-fun m!5476541 () Bool)

(assert (=> b!4629448 m!5476541))

(declare-fun m!5476543 () Bool)

(assert (=> b!4629449 m!5476543))

(assert (=> b!4629046 d!1458737))

(declare-fun bs!1026261 () Bool)

(declare-fun d!1458739 () Bool)

(assert (= bs!1026261 (and d!1458739 d!1458691)))

(declare-fun lambda!193211 () Int)

(assert (=> bs!1026261 (= lambda!193211 lambda!193207)))

(declare-fun bs!1026262 () Bool)

(assert (= bs!1026262 (and d!1458739 d!1458637)))

(assert (=> bs!1026262 (= lambda!193211 lambda!193183)))

(declare-fun bs!1026263 () Bool)

(assert (= bs!1026263 (and d!1458739 d!1458657)))

(assert (=> bs!1026263 (= lambda!193211 lambda!193199)))

(declare-fun bs!1026264 () Bool)

(assert (= bs!1026264 (and d!1458739 d!1458717)))

(assert (=> bs!1026264 (= lambda!193211 lambda!193210)))

(declare-fun bs!1026265 () Bool)

(assert (= bs!1026265 (and d!1458739 d!1458621)))

(assert (=> bs!1026265 (= lambda!193211 lambda!193174)))

(declare-fun bs!1026266 () Bool)

(assert (= bs!1026266 (and d!1458739 b!4629055)))

(assert (=> bs!1026266 (= lambda!193211 lambda!193076)))

(declare-fun lt!1789012 () ListMap!4313)

(assert (=> d!1458739 (invariantList!1218 (toList!5009 lt!1789012))))

(declare-fun e!2887869 () ListMap!4313)

(assert (=> d!1458739 (= lt!1789012 e!2887869)))

(declare-fun c!792431 () Bool)

(assert (=> d!1458739 (= c!792431 ((_ is Cons!51581) (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581)))))

(assert (=> d!1458739 (forall!10850 (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581) lambda!193211)))

(assert (=> d!1458739 (= (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581)) lt!1789012)))

(declare-fun b!4629450 () Bool)

(assert (=> b!4629450 (= e!2887869 (addToMapMapFromBucket!983 (_2!29562 (h!57645 (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581))) (extractMap!1578 (t!358751 (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581)))))))

(declare-fun b!4629451 () Bool)

(assert (=> b!4629451 (= e!2887869 (ListMap!4314 Nil!51580))))

(assert (= (and d!1458739 c!792431) b!4629450))

(assert (= (and d!1458739 (not c!792431)) b!4629451))

(declare-fun m!5476545 () Bool)

(assert (=> d!1458739 m!5476545))

(declare-fun m!5476547 () Bool)

(assert (=> d!1458739 m!5476547))

(declare-fun m!5476549 () Bool)

(assert (=> b!4629450 m!5476549))

(assert (=> b!4629450 m!5476549))

(declare-fun m!5476551 () Bool)

(assert (=> b!4629450 m!5476551))

(assert (=> b!4629046 d!1458739))

(declare-fun bs!1026267 () Bool)

(declare-fun d!1458741 () Bool)

(assert (= bs!1026267 (and d!1458741 d!1458691)))

(declare-fun lambda!193212 () Int)

(assert (=> bs!1026267 (= lambda!193212 lambda!193207)))

(declare-fun bs!1026268 () Bool)

(assert (= bs!1026268 (and d!1458741 d!1458637)))

(assert (=> bs!1026268 (= lambda!193212 lambda!193183)))

(declare-fun bs!1026269 () Bool)

(assert (= bs!1026269 (and d!1458741 d!1458657)))

(assert (=> bs!1026269 (= lambda!193212 lambda!193199)))

(declare-fun bs!1026270 () Bool)

(assert (= bs!1026270 (and d!1458741 d!1458739)))

(assert (=> bs!1026270 (= lambda!193212 lambda!193211)))

(declare-fun bs!1026271 () Bool)

(assert (= bs!1026271 (and d!1458741 d!1458717)))

(assert (=> bs!1026271 (= lambda!193212 lambda!193210)))

(declare-fun bs!1026272 () Bool)

(assert (= bs!1026272 (and d!1458741 d!1458621)))

(assert (=> bs!1026272 (= lambda!193212 lambda!193174)))

(declare-fun bs!1026273 () Bool)

(assert (= bs!1026273 (and d!1458741 b!4629055)))

(assert (=> bs!1026273 (= lambda!193212 lambda!193076)))

(declare-fun lt!1789013 () ListMap!4313)

(assert (=> d!1458741 (invariantList!1218 (toList!5009 lt!1789013))))

(declare-fun e!2887870 () ListMap!4313)

(assert (=> d!1458741 (= lt!1789013 e!2887870)))

(declare-fun c!792432 () Bool)

(assert (=> d!1458741 (= c!792432 ((_ is Cons!51581) lt!1788450))))

(assert (=> d!1458741 (forall!10850 lt!1788450 lambda!193212)))

(assert (=> d!1458741 (= (extractMap!1578 lt!1788450) lt!1789013)))

(declare-fun b!4629452 () Bool)

(assert (=> b!4629452 (= e!2887870 (addToMapMapFromBucket!983 (_2!29562 (h!57645 lt!1788450)) (extractMap!1578 (t!358751 lt!1788450))))))

(declare-fun b!4629453 () Bool)

(assert (=> b!4629453 (= e!2887870 (ListMap!4314 Nil!51580))))

(assert (= (and d!1458741 c!792432) b!4629452))

(assert (= (and d!1458741 (not c!792432)) b!4629453))

(declare-fun m!5476553 () Bool)

(assert (=> d!1458741 m!5476553))

(declare-fun m!5476555 () Bool)

(assert (=> d!1458741 m!5476555))

(declare-fun m!5476557 () Bool)

(assert (=> b!4629452 m!5476557))

(assert (=> b!4629452 m!5476557))

(declare-fun m!5476559 () Bool)

(assert (=> b!4629452 m!5476559))

(assert (=> b!4629046 d!1458741))

(declare-fun bs!1026274 () Bool)

(declare-fun b!4629458 () Bool)

(assert (= bs!1026274 (and b!4629458 b!4629242)))

(declare-fun lambda!193213 () Int)

(assert (=> bs!1026274 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193167))))

(declare-fun bs!1026275 () Bool)

(assert (= bs!1026275 (and b!4629458 b!4629239)))

(assert (=> bs!1026275 (= (= lt!1788437 lt!1788746) (= lambda!193213 lambda!193169))))

(declare-fun bs!1026276 () Bool)

(assert (= bs!1026276 (and b!4629458 b!4629305)))

(assert (=> bs!1026276 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193192))))

(declare-fun bs!1026277 () Bool)

(assert (= bs!1026277 (and b!4629458 d!1458647)))

(assert (=> bs!1026277 (= (= lt!1788437 lt!1788869) (= lambda!193213 lambda!193196))))

(declare-fun bs!1026278 () Bool)

(assert (= bs!1026278 (and b!4629458 b!4629281)))

(assert (=> bs!1026278 (= (= lt!1788437 lt!1788798) (= lambda!193213 lambda!193179))))

(declare-fun bs!1026279 () Bool)

(assert (= bs!1026279 (and b!4629458 d!1458643)))

(assert (=> bs!1026279 (= (= lt!1788437 lt!1788848) (= lambda!193213 lambda!193190))))

(declare-fun bs!1026280 () Bool)

(assert (= bs!1026280 (and b!4629458 d!1458577)))

(assert (=> bs!1026280 (= (= lt!1788437 lt!1788748) (= lambda!193213 lambda!193170))))

(declare-fun bs!1026281 () Bool)

(assert (= bs!1026281 (and b!4629458 b!4629297)))

(assert (=> bs!1026281 (= (= lt!1788437 lt!1788846) (= lambda!193213 lambda!193189))))

(declare-fun bs!1026282 () Bool)

(assert (= bs!1026282 (and b!4629458 b!4629284)))

(assert (=> bs!1026282 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193175))))

(assert (=> bs!1026281 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193187))))

(declare-fun bs!1026283 () Bool)

(assert (= bs!1026283 (and b!4629458 b!4629302)))

(assert (=> bs!1026283 (= (= lt!1788437 lt!1788867) (= lambda!193213 lambda!193195))))

(declare-fun bs!1026284 () Bool)

(assert (= bs!1026284 (and b!4629458 d!1458629)))

(assert (=> bs!1026284 (= (= lt!1788437 lt!1788800) (= lambda!193213 lambda!193182))))

(assert (=> bs!1026275 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193168))))

(declare-fun bs!1026285 () Bool)

(assert (= bs!1026285 (and b!4629458 b!4629300)))

(assert (=> bs!1026285 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193185))))

(assert (=> bs!1026278 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193178))))

(assert (=> bs!1026283 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193213 lambda!193194))))

(assert (=> b!4629458 true))

(declare-fun bs!1026286 () Bool)

(declare-fun b!4629455 () Bool)

(assert (= bs!1026286 (and b!4629455 b!4629242)))

(declare-fun lambda!193214 () Int)

(assert (=> bs!1026286 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193167))))

(declare-fun bs!1026287 () Bool)

(assert (= bs!1026287 (and b!4629455 b!4629239)))

(assert (=> bs!1026287 (= (= lt!1788437 lt!1788746) (= lambda!193214 lambda!193169))))

(declare-fun bs!1026288 () Bool)

(assert (= bs!1026288 (and b!4629455 b!4629305)))

(assert (=> bs!1026288 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193192))))

(declare-fun bs!1026289 () Bool)

(assert (= bs!1026289 (and b!4629455 b!4629281)))

(assert (=> bs!1026289 (= (= lt!1788437 lt!1788798) (= lambda!193214 lambda!193179))))

(declare-fun bs!1026290 () Bool)

(assert (= bs!1026290 (and b!4629455 d!1458643)))

(assert (=> bs!1026290 (= (= lt!1788437 lt!1788848) (= lambda!193214 lambda!193190))))

(declare-fun bs!1026291 () Bool)

(assert (= bs!1026291 (and b!4629455 d!1458577)))

(assert (=> bs!1026291 (= (= lt!1788437 lt!1788748) (= lambda!193214 lambda!193170))))

(declare-fun bs!1026292 () Bool)

(assert (= bs!1026292 (and b!4629455 b!4629297)))

(assert (=> bs!1026292 (= (= lt!1788437 lt!1788846) (= lambda!193214 lambda!193189))))

(declare-fun bs!1026293 () Bool)

(assert (= bs!1026293 (and b!4629455 b!4629284)))

(assert (=> bs!1026293 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193175))))

(assert (=> bs!1026292 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193187))))

(declare-fun bs!1026294 () Bool)

(assert (= bs!1026294 (and b!4629455 b!4629302)))

(assert (=> bs!1026294 (= (= lt!1788437 lt!1788867) (= lambda!193214 lambda!193195))))

(declare-fun bs!1026295 () Bool)

(assert (= bs!1026295 (and b!4629455 d!1458629)))

(assert (=> bs!1026295 (= (= lt!1788437 lt!1788800) (= lambda!193214 lambda!193182))))

(declare-fun bs!1026296 () Bool)

(assert (= bs!1026296 (and b!4629455 b!4629458)))

(assert (=> bs!1026296 (= lambda!193214 lambda!193213)))

(declare-fun bs!1026297 () Bool)

(assert (= bs!1026297 (and b!4629455 d!1458647)))

(assert (=> bs!1026297 (= (= lt!1788437 lt!1788869) (= lambda!193214 lambda!193196))))

(assert (=> bs!1026287 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193168))))

(declare-fun bs!1026298 () Bool)

(assert (= bs!1026298 (and b!4629455 b!4629300)))

(assert (=> bs!1026298 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193185))))

(assert (=> bs!1026289 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193178))))

(assert (=> bs!1026294 (= (= lt!1788437 (ListMap!4314 Nil!51580)) (= lambda!193214 lambda!193194))))

(assert (=> b!4629455 true))

(declare-fun lt!1789024 () ListMap!4313)

(declare-fun lambda!193215 () Int)

(assert (=> b!4629455 (= (= lt!1789024 lt!1788437) (= lambda!193215 lambda!193214))))

(assert (=> bs!1026286 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193167))))

(assert (=> bs!1026287 (= (= lt!1789024 lt!1788746) (= lambda!193215 lambda!193169))))

(assert (=> bs!1026288 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193192))))

(assert (=> bs!1026289 (= (= lt!1789024 lt!1788798) (= lambda!193215 lambda!193179))))

(assert (=> bs!1026290 (= (= lt!1789024 lt!1788848) (= lambda!193215 lambda!193190))))

(assert (=> bs!1026291 (= (= lt!1789024 lt!1788748) (= lambda!193215 lambda!193170))))

(assert (=> bs!1026292 (= (= lt!1789024 lt!1788846) (= lambda!193215 lambda!193189))))

(assert (=> bs!1026293 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193175))))

(assert (=> bs!1026292 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193187))))

(assert (=> bs!1026294 (= (= lt!1789024 lt!1788867) (= lambda!193215 lambda!193195))))

(assert (=> bs!1026295 (= (= lt!1789024 lt!1788800) (= lambda!193215 lambda!193182))))

(assert (=> bs!1026296 (= (= lt!1789024 lt!1788437) (= lambda!193215 lambda!193213))))

(assert (=> bs!1026297 (= (= lt!1789024 lt!1788869) (= lambda!193215 lambda!193196))))

(assert (=> bs!1026287 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193168))))

(assert (=> bs!1026298 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193185))))

(assert (=> bs!1026289 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193178))))

(assert (=> bs!1026294 (= (= lt!1789024 (ListMap!4314 Nil!51580)) (= lambda!193215 lambda!193194))))

(assert (=> b!4629455 true))

(declare-fun bs!1026299 () Bool)

(declare-fun d!1458743 () Bool)

(assert (= bs!1026299 (and d!1458743 b!4629455)))

(declare-fun lt!1789026 () ListMap!4313)

(declare-fun lambda!193216 () Int)

(assert (=> bs!1026299 (= (= lt!1789026 lt!1788437) (= lambda!193216 lambda!193214))))

(declare-fun bs!1026300 () Bool)

(assert (= bs!1026300 (and d!1458743 b!4629242)))

(assert (=> bs!1026300 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193167))))

(declare-fun bs!1026301 () Bool)

(assert (= bs!1026301 (and d!1458743 b!4629239)))

(assert (=> bs!1026301 (= (= lt!1789026 lt!1788746) (= lambda!193216 lambda!193169))))

(declare-fun bs!1026302 () Bool)

(assert (= bs!1026302 (and d!1458743 b!4629305)))

(assert (=> bs!1026302 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193192))))

(declare-fun bs!1026303 () Bool)

(assert (= bs!1026303 (and d!1458743 b!4629281)))

(assert (=> bs!1026303 (= (= lt!1789026 lt!1788798) (= lambda!193216 lambda!193179))))

(declare-fun bs!1026304 () Bool)

(assert (= bs!1026304 (and d!1458743 d!1458643)))

(assert (=> bs!1026304 (= (= lt!1789026 lt!1788848) (= lambda!193216 lambda!193190))))

(declare-fun bs!1026305 () Bool)

(assert (= bs!1026305 (and d!1458743 d!1458577)))

(assert (=> bs!1026305 (= (= lt!1789026 lt!1788748) (= lambda!193216 lambda!193170))))

(declare-fun bs!1026306 () Bool)

(assert (= bs!1026306 (and d!1458743 b!4629297)))

(assert (=> bs!1026306 (= (= lt!1789026 lt!1788846) (= lambda!193216 lambda!193189))))

(assert (=> bs!1026299 (= (= lt!1789026 lt!1789024) (= lambda!193216 lambda!193215))))

(declare-fun bs!1026307 () Bool)

(assert (= bs!1026307 (and d!1458743 b!4629284)))

(assert (=> bs!1026307 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193175))))

(assert (=> bs!1026306 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193187))))

(declare-fun bs!1026308 () Bool)

(assert (= bs!1026308 (and d!1458743 b!4629302)))

(assert (=> bs!1026308 (= (= lt!1789026 lt!1788867) (= lambda!193216 lambda!193195))))

(declare-fun bs!1026309 () Bool)

(assert (= bs!1026309 (and d!1458743 d!1458629)))

(assert (=> bs!1026309 (= (= lt!1789026 lt!1788800) (= lambda!193216 lambda!193182))))

(declare-fun bs!1026310 () Bool)

(assert (= bs!1026310 (and d!1458743 b!4629458)))

(assert (=> bs!1026310 (= (= lt!1789026 lt!1788437) (= lambda!193216 lambda!193213))))

(declare-fun bs!1026311 () Bool)

(assert (= bs!1026311 (and d!1458743 d!1458647)))

(assert (=> bs!1026311 (= (= lt!1789026 lt!1788869) (= lambda!193216 lambda!193196))))

(assert (=> bs!1026301 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193168))))

(declare-fun bs!1026312 () Bool)

(assert (= bs!1026312 (and d!1458743 b!4629300)))

(assert (=> bs!1026312 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193185))))

(assert (=> bs!1026303 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193178))))

(assert (=> bs!1026308 (= (= lt!1789026 (ListMap!4314 Nil!51580)) (= lambda!193216 lambda!193194))))

(assert (=> d!1458743 true))

(declare-fun b!4629454 () Bool)

(declare-fun res!1942017 () Bool)

(declare-fun e!2887871 () Bool)

(assert (=> b!4629454 (=> (not res!1942017) (not e!2887871))))

(assert (=> b!4629454 (= res!1942017 (forall!10852 (toList!5009 lt!1788437) lambda!193216))))

(declare-fun bm!322993 () Bool)

(declare-fun call!322999 () Bool)

(declare-fun c!792433 () Bool)

(assert (=> bm!322993 (= call!322999 (forall!10852 (toList!5009 lt!1788437) (ite c!792433 lambda!193213 lambda!193215)))))

(declare-fun e!2887872 () ListMap!4313)

(assert (=> b!4629455 (= e!2887872 lt!1789024)))

(declare-fun lt!1789030 () ListMap!4313)

(assert (=> b!4629455 (= lt!1789030 (+!1888 lt!1788437 (h!57644 oldBucket!40)))))

(assert (=> b!4629455 (= lt!1789024 (addToMapMapFromBucket!983 (t!358750 oldBucket!40) (+!1888 lt!1788437 (h!57644 oldBucket!40))))))

(declare-fun lt!1789020 () Unit!112884)

(declare-fun call!323000 () Unit!112884)

(assert (=> b!4629455 (= lt!1789020 call!323000)))

(assert (=> b!4629455 (forall!10852 (toList!5009 lt!1788437) lambda!193214)))

(declare-fun lt!1789029 () Unit!112884)

(assert (=> b!4629455 (= lt!1789029 lt!1789020)))

(declare-fun call!322998 () Bool)

(assert (=> b!4629455 call!322998))

(declare-fun lt!1789027 () Unit!112884)

(declare-fun Unit!112993 () Unit!112884)

(assert (=> b!4629455 (= lt!1789027 Unit!112993)))

(assert (=> b!4629455 (forall!10852 (t!358750 oldBucket!40) lambda!193215)))

(declare-fun lt!1789031 () Unit!112884)

(declare-fun Unit!112994 () Unit!112884)

(assert (=> b!4629455 (= lt!1789031 Unit!112994)))

(declare-fun lt!1789034 () Unit!112884)

(declare-fun Unit!112995 () Unit!112884)

(assert (=> b!4629455 (= lt!1789034 Unit!112995)))

(declare-fun lt!1789016 () Unit!112884)

(assert (=> b!4629455 (= lt!1789016 (forallContained!3082 (toList!5009 lt!1789030) lambda!193215 (h!57644 oldBucket!40)))))

(assert (=> b!4629455 (contains!14653 lt!1789030 (_1!29561 (h!57644 oldBucket!40)))))

(declare-fun lt!1789014 () Unit!112884)

(declare-fun Unit!112996 () Unit!112884)

(assert (=> b!4629455 (= lt!1789014 Unit!112996)))

(assert (=> b!4629455 (contains!14653 lt!1789024 (_1!29561 (h!57644 oldBucket!40)))))

(declare-fun lt!1789018 () Unit!112884)

(declare-fun Unit!112997 () Unit!112884)

(assert (=> b!4629455 (= lt!1789018 Unit!112997)))

(assert (=> b!4629455 (forall!10852 oldBucket!40 lambda!193215)))

(declare-fun lt!1789022 () Unit!112884)

(declare-fun Unit!112998 () Unit!112884)

(assert (=> b!4629455 (= lt!1789022 Unit!112998)))

(assert (=> b!4629455 (forall!10852 (toList!5009 lt!1789030) lambda!193215)))

(declare-fun lt!1789021 () Unit!112884)

(declare-fun Unit!112999 () Unit!112884)

(assert (=> b!4629455 (= lt!1789021 Unit!112999)))

(declare-fun lt!1789032 () Unit!112884)

(declare-fun Unit!113000 () Unit!112884)

(assert (=> b!4629455 (= lt!1789032 Unit!113000)))

(declare-fun lt!1789015 () Unit!112884)

(assert (=> b!4629455 (= lt!1789015 (addForallContainsKeyThenBeforeAdding!519 lt!1788437 lt!1789024 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> b!4629455 call!322999))

(declare-fun lt!1789023 () Unit!112884)

(assert (=> b!4629455 (= lt!1789023 lt!1789015)))

(assert (=> b!4629455 (forall!10852 (toList!5009 lt!1788437) lambda!193215)))

(declare-fun lt!1789025 () Unit!112884)

(declare-fun Unit!113001 () Unit!112884)

(assert (=> b!4629455 (= lt!1789025 Unit!113001)))

(declare-fun res!1942018 () Bool)

(assert (=> b!4629455 (= res!1942018 (forall!10852 oldBucket!40 lambda!193215))))

(declare-fun e!2887873 () Bool)

(assert (=> b!4629455 (=> (not res!1942018) (not e!2887873))))

(assert (=> b!4629455 e!2887873))

(declare-fun lt!1789019 () Unit!112884)

(declare-fun Unit!113002 () Unit!112884)

(assert (=> b!4629455 (= lt!1789019 Unit!113002)))

(declare-fun bm!322994 () Bool)

(assert (=> bm!322994 (= call!323000 (lemmaContainsAllItsOwnKeys!520 lt!1788437))))

(declare-fun bm!322995 () Bool)

(assert (=> bm!322995 (= call!322998 (forall!10852 (ite c!792433 (toList!5009 lt!1788437) (toList!5009 lt!1789030)) (ite c!792433 lambda!193213 lambda!193215)))))

(declare-fun b!4629456 () Bool)

(assert (=> b!4629456 (= e!2887871 (invariantList!1218 (toList!5009 lt!1789026)))))

(assert (=> d!1458743 e!2887871))

(declare-fun res!1942016 () Bool)

(assert (=> d!1458743 (=> (not res!1942016) (not e!2887871))))

(assert (=> d!1458743 (= res!1942016 (forall!10852 oldBucket!40 lambda!193216))))

(assert (=> d!1458743 (= lt!1789026 e!2887872)))

(assert (=> d!1458743 (= c!792433 ((_ is Nil!51580) oldBucket!40))))

(assert (=> d!1458743 (noDuplicateKeys!1522 oldBucket!40)))

(assert (=> d!1458743 (= (addToMapMapFromBucket!983 oldBucket!40 lt!1788437) lt!1789026)))

(declare-fun b!4629457 () Bool)

(assert (=> b!4629457 (= e!2887873 (forall!10852 (toList!5009 lt!1788437) lambda!193215))))

(assert (=> b!4629458 (= e!2887872 lt!1788437)))

(declare-fun lt!1789017 () Unit!112884)

(assert (=> b!4629458 (= lt!1789017 call!323000)))

(assert (=> b!4629458 call!322999))

(declare-fun lt!1789033 () Unit!112884)

(assert (=> b!4629458 (= lt!1789033 lt!1789017)))

(assert (=> b!4629458 call!322998))

(declare-fun lt!1789028 () Unit!112884)

(declare-fun Unit!113003 () Unit!112884)

(assert (=> b!4629458 (= lt!1789028 Unit!113003)))

(assert (= (and d!1458743 c!792433) b!4629458))

(assert (= (and d!1458743 (not c!792433)) b!4629455))

(assert (= (and b!4629455 res!1942018) b!4629457))

(assert (= (or b!4629458 b!4629455) bm!322994))

(assert (= (or b!4629458 b!4629455) bm!322995))

(assert (= (or b!4629458 b!4629455) bm!322993))

(assert (= (and d!1458743 res!1942016) b!4629454))

(assert (= (and b!4629454 res!1942017) b!4629456))

(declare-fun m!5476561 () Bool)

(assert (=> d!1458743 m!5476561))

(assert (=> d!1458743 m!5475539))

(declare-fun m!5476563 () Bool)

(assert (=> b!4629456 m!5476563))

(declare-fun m!5476565 () Bool)

(assert (=> bm!322993 m!5476565))

(declare-fun m!5476567 () Bool)

(assert (=> b!4629455 m!5476567))

(declare-fun m!5476569 () Bool)

(assert (=> b!4629455 m!5476569))

(declare-fun m!5476571 () Bool)

(assert (=> b!4629455 m!5476571))

(declare-fun m!5476573 () Bool)

(assert (=> b!4629455 m!5476573))

(declare-fun m!5476575 () Bool)

(assert (=> b!4629455 m!5476575))

(declare-fun m!5476577 () Bool)

(assert (=> b!4629455 m!5476577))

(declare-fun m!5476579 () Bool)

(assert (=> b!4629455 m!5476579))

(declare-fun m!5476581 () Bool)

(assert (=> b!4629455 m!5476581))

(declare-fun m!5476583 () Bool)

(assert (=> b!4629455 m!5476583))

(assert (=> b!4629455 m!5476567))

(declare-fun m!5476585 () Bool)

(assert (=> b!4629455 m!5476585))

(assert (=> b!4629455 m!5476581))

(declare-fun m!5476587 () Bool)

(assert (=> b!4629455 m!5476587))

(declare-fun m!5476589 () Bool)

(assert (=> b!4629454 m!5476589))

(declare-fun m!5476591 () Bool)

(assert (=> bm!322995 m!5476591))

(assert (=> b!4629457 m!5476575))

(declare-fun m!5476593 () Bool)

(assert (=> bm!322994 m!5476593))

(assert (=> b!4629053 d!1458743))

(declare-fun bs!1026313 () Bool)

(declare-fun d!1458745 () Bool)

(assert (= bs!1026313 (and d!1458745 d!1458637)))

(declare-fun lambda!193217 () Int)

(assert (=> bs!1026313 (= lambda!193217 lambda!193183)))

(declare-fun bs!1026314 () Bool)

(assert (= bs!1026314 (and d!1458745 d!1458657)))

(assert (=> bs!1026314 (= lambda!193217 lambda!193199)))

(declare-fun bs!1026315 () Bool)

(assert (= bs!1026315 (and d!1458745 d!1458739)))

(assert (=> bs!1026315 (= lambda!193217 lambda!193211)))

(declare-fun bs!1026316 () Bool)

(assert (= bs!1026316 (and d!1458745 d!1458717)))

(assert (=> bs!1026316 (= lambda!193217 lambda!193210)))

(declare-fun bs!1026317 () Bool)

(assert (= bs!1026317 (and d!1458745 d!1458741)))

(assert (=> bs!1026317 (= lambda!193217 lambda!193212)))

(declare-fun bs!1026318 () Bool)

(assert (= bs!1026318 (and d!1458745 d!1458691)))

(assert (=> bs!1026318 (= lambda!193217 lambda!193207)))

(declare-fun bs!1026319 () Bool)

(assert (= bs!1026319 (and d!1458745 d!1458621)))

(assert (=> bs!1026319 (= lambda!193217 lambda!193174)))

(declare-fun bs!1026320 () Bool)

(assert (= bs!1026320 (and d!1458745 b!4629055)))

(assert (=> bs!1026320 (= lambda!193217 lambda!193076)))

(declare-fun lt!1789035 () ListMap!4313)

(assert (=> d!1458745 (invariantList!1218 (toList!5009 lt!1789035))))

(declare-fun e!2887874 () ListMap!4313)

(assert (=> d!1458745 (= lt!1789035 e!2887874)))

(declare-fun c!792434 () Bool)

(assert (=> d!1458745 (= c!792434 ((_ is Cons!51581) Nil!51581))))

(assert (=> d!1458745 (forall!10850 Nil!51581 lambda!193217)))

(assert (=> d!1458745 (= (extractMap!1578 Nil!51581) lt!1789035)))

(declare-fun b!4629459 () Bool)

(assert (=> b!4629459 (= e!2887874 (addToMapMapFromBucket!983 (_2!29562 (h!57645 Nil!51581)) (extractMap!1578 (t!358751 Nil!51581))))))

(declare-fun b!4629460 () Bool)

(assert (=> b!4629460 (= e!2887874 (ListMap!4314 Nil!51580))))

(assert (= (and d!1458745 c!792434) b!4629459))

(assert (= (and d!1458745 (not c!792434)) b!4629460))

(declare-fun m!5476595 () Bool)

(assert (=> d!1458745 m!5476595))

(declare-fun m!5476597 () Bool)

(assert (=> d!1458745 m!5476597))

(declare-fun m!5476599 () Bool)

(assert (=> b!4629459 m!5476599))

(assert (=> b!4629459 m!5476599))

(declare-fun m!5476601 () Bool)

(assert (=> b!4629459 m!5476601))

(assert (=> b!4629053 d!1458745))

(declare-fun bs!1026321 () Bool)

(declare-fun d!1458747 () Bool)

(assert (= bs!1026321 (and d!1458747 b!4629455)))

(declare-fun lambda!193220 () Int)

(assert (=> bs!1026321 (not (= lambda!193220 lambda!193214))))

(declare-fun bs!1026322 () Bool)

(assert (= bs!1026322 (and d!1458747 b!4629242)))

(assert (=> bs!1026322 (not (= lambda!193220 lambda!193167))))

(declare-fun bs!1026323 () Bool)

(assert (= bs!1026323 (and d!1458747 b!4629239)))

(assert (=> bs!1026323 (not (= lambda!193220 lambda!193169))))

(declare-fun bs!1026324 () Bool)

(assert (= bs!1026324 (and d!1458747 b!4629305)))

(assert (=> bs!1026324 (not (= lambda!193220 lambda!193192))))

(declare-fun bs!1026325 () Bool)

(assert (= bs!1026325 (and d!1458747 b!4629281)))

(assert (=> bs!1026325 (not (= lambda!193220 lambda!193179))))

(declare-fun bs!1026326 () Bool)

(assert (= bs!1026326 (and d!1458747 d!1458643)))

(assert (=> bs!1026326 (not (= lambda!193220 lambda!193190))))

(declare-fun bs!1026327 () Bool)

(assert (= bs!1026327 (and d!1458747 d!1458577)))

(assert (=> bs!1026327 (not (= lambda!193220 lambda!193170))))

(declare-fun bs!1026328 () Bool)

(assert (= bs!1026328 (and d!1458747 b!4629297)))

(assert (=> bs!1026328 (not (= lambda!193220 lambda!193189))))

(assert (=> bs!1026321 (not (= lambda!193220 lambda!193215))))

(declare-fun bs!1026329 () Bool)

(assert (= bs!1026329 (and d!1458747 b!4629284)))

(assert (=> bs!1026329 (not (= lambda!193220 lambda!193175))))

(assert (=> bs!1026328 (not (= lambda!193220 lambda!193187))))

(declare-fun bs!1026330 () Bool)

(assert (= bs!1026330 (and d!1458747 b!4629302)))

(assert (=> bs!1026330 (not (= lambda!193220 lambda!193195))))

(declare-fun bs!1026331 () Bool)

(assert (= bs!1026331 (and d!1458747 d!1458629)))

(assert (=> bs!1026331 (not (= lambda!193220 lambda!193182))))

(declare-fun bs!1026332 () Bool)

(assert (= bs!1026332 (and d!1458747 b!4629458)))

(assert (=> bs!1026332 (not (= lambda!193220 lambda!193213))))

(declare-fun bs!1026333 () Bool)

(assert (= bs!1026333 (and d!1458747 d!1458647)))

(assert (=> bs!1026333 (not (= lambda!193220 lambda!193196))))

(declare-fun bs!1026334 () Bool)

(assert (= bs!1026334 (and d!1458747 d!1458743)))

(assert (=> bs!1026334 (not (= lambda!193220 lambda!193216))))

(assert (=> bs!1026323 (not (= lambda!193220 lambda!193168))))

(declare-fun bs!1026335 () Bool)

(assert (= bs!1026335 (and d!1458747 b!4629300)))

(assert (=> bs!1026335 (not (= lambda!193220 lambda!193185))))

(assert (=> bs!1026325 (not (= lambda!193220 lambda!193178))))

(assert (=> bs!1026330 (not (= lambda!193220 lambda!193194))))

(assert (=> d!1458747 true))

(assert (=> d!1458747 true))

(assert (=> d!1458747 (= (allKeysSameHash!1376 oldBucket!40 hash!414 hashF!1389) (forall!10852 oldBucket!40 lambda!193220))))

(declare-fun bs!1026336 () Bool)

(assert (= bs!1026336 d!1458747))

(declare-fun m!5476603 () Bool)

(assert (=> bs!1026336 m!5476603))

(assert (=> b!4629042 d!1458747))

(declare-fun d!1458749 () Bool)

(declare-fun res!1942019 () Bool)

(declare-fun e!2887875 () Bool)

(assert (=> d!1458749 (=> res!1942019 e!2887875)))

(assert (=> d!1458749 (= res!1942019 (not ((_ is Cons!51580) oldBucket!40)))))

(assert (=> d!1458749 (= (noDuplicateKeys!1522 oldBucket!40) e!2887875)))

(declare-fun b!4629465 () Bool)

(declare-fun e!2887876 () Bool)

(assert (=> b!4629465 (= e!2887875 e!2887876)))

(declare-fun res!1942020 () Bool)

(assert (=> b!4629465 (=> (not res!1942020) (not e!2887876))))

(assert (=> b!4629465 (= res!1942020 (not (containsKey!2490 (t!358750 oldBucket!40) (_1!29561 (h!57644 oldBucket!40)))))))

(declare-fun b!4629466 () Bool)

(assert (=> b!4629466 (= e!2887876 (noDuplicateKeys!1522 (t!358750 oldBucket!40)))))

(assert (= (and d!1458749 (not res!1942019)) b!4629465))

(assert (= (and b!4629465 res!1942020) b!4629466))

(declare-fun m!5476605 () Bool)

(assert (=> b!4629465 m!5476605))

(assert (=> b!4629466 m!5476393))

(assert (=> start!464352 d!1458749))

(declare-fun bs!1026337 () Bool)

(declare-fun d!1458751 () Bool)

(assert (= bs!1026337 (and d!1458751 b!4629455)))

(declare-fun lambda!193221 () Int)

(assert (=> bs!1026337 (not (= lambda!193221 lambda!193214))))

(declare-fun bs!1026338 () Bool)

(assert (= bs!1026338 (and d!1458751 b!4629242)))

(assert (=> bs!1026338 (not (= lambda!193221 lambda!193167))))

(declare-fun bs!1026339 () Bool)

(assert (= bs!1026339 (and d!1458751 b!4629239)))

(assert (=> bs!1026339 (not (= lambda!193221 lambda!193169))))

(declare-fun bs!1026340 () Bool)

(assert (= bs!1026340 (and d!1458751 b!4629305)))

(assert (=> bs!1026340 (not (= lambda!193221 lambda!193192))))

(declare-fun bs!1026341 () Bool)

(assert (= bs!1026341 (and d!1458751 b!4629281)))

(assert (=> bs!1026341 (not (= lambda!193221 lambda!193179))))

(declare-fun bs!1026342 () Bool)

(assert (= bs!1026342 (and d!1458751 d!1458643)))

(assert (=> bs!1026342 (not (= lambda!193221 lambda!193190))))

(declare-fun bs!1026343 () Bool)

(assert (= bs!1026343 (and d!1458751 d!1458747)))

(assert (=> bs!1026343 (= lambda!193221 lambda!193220)))

(declare-fun bs!1026344 () Bool)

(assert (= bs!1026344 (and d!1458751 d!1458577)))

(assert (=> bs!1026344 (not (= lambda!193221 lambda!193170))))

(declare-fun bs!1026345 () Bool)

(assert (= bs!1026345 (and d!1458751 b!4629297)))

(assert (=> bs!1026345 (not (= lambda!193221 lambda!193189))))

(assert (=> bs!1026337 (not (= lambda!193221 lambda!193215))))

(declare-fun bs!1026346 () Bool)

(assert (= bs!1026346 (and d!1458751 b!4629284)))

(assert (=> bs!1026346 (not (= lambda!193221 lambda!193175))))

(assert (=> bs!1026345 (not (= lambda!193221 lambda!193187))))

(declare-fun bs!1026347 () Bool)

(assert (= bs!1026347 (and d!1458751 b!4629302)))

(assert (=> bs!1026347 (not (= lambda!193221 lambda!193195))))

(declare-fun bs!1026348 () Bool)

(assert (= bs!1026348 (and d!1458751 d!1458629)))

(assert (=> bs!1026348 (not (= lambda!193221 lambda!193182))))

(declare-fun bs!1026349 () Bool)

(assert (= bs!1026349 (and d!1458751 b!4629458)))

(assert (=> bs!1026349 (not (= lambda!193221 lambda!193213))))

(declare-fun bs!1026350 () Bool)

(assert (= bs!1026350 (and d!1458751 d!1458647)))

(assert (=> bs!1026350 (not (= lambda!193221 lambda!193196))))

(declare-fun bs!1026351 () Bool)

(assert (= bs!1026351 (and d!1458751 d!1458743)))

(assert (=> bs!1026351 (not (= lambda!193221 lambda!193216))))

(assert (=> bs!1026339 (not (= lambda!193221 lambda!193168))))

(declare-fun bs!1026352 () Bool)

(assert (= bs!1026352 (and d!1458751 b!4629300)))

(assert (=> bs!1026352 (not (= lambda!193221 lambda!193185))))

(assert (=> bs!1026341 (not (= lambda!193221 lambda!193178))))

(assert (=> bs!1026347 (not (= lambda!193221 lambda!193194))))

(assert (=> d!1458751 true))

(assert (=> d!1458751 true))

(assert (=> d!1458751 (= (allKeysSameHash!1376 newBucket!224 hash!414 hashF!1389) (forall!10852 newBucket!224 lambda!193221))))

(declare-fun bs!1026353 () Bool)

(assert (= bs!1026353 d!1458751))

(declare-fun m!5476607 () Bool)

(assert (=> bs!1026353 m!5476607))

(assert (=> b!4629054 d!1458751))

(declare-fun d!1458753 () Bool)

(declare-fun e!2887877 () Bool)

(assert (=> d!1458753 e!2887877))

(declare-fun res!1942021 () Bool)

(assert (=> d!1458753 (=> (not res!1942021) (not e!2887877))))

(declare-fun lt!1789036 () ListMap!4313)

(assert (=> d!1458753 (= res!1942021 (not (contains!14653 lt!1789036 key!4968)))))

(assert (=> d!1458753 (= lt!1789036 (ListMap!4314 (removePresrvNoDuplicatedKeys!267 (toList!5009 lt!1788431) key!4968)))))

(assert (=> d!1458753 (= (-!562 lt!1788431 key!4968) lt!1789036)))

(declare-fun b!4629467 () Bool)

(assert (=> b!4629467 (= e!2887877 (= ((_ map and) (content!8841 (keys!18184 lt!1788431)) ((_ map not) (store ((as const (Array K!12955 Bool)) false) key!4968 true))) (content!8841 (keys!18184 lt!1789036))))))

(assert (= (and d!1458753 res!1942021) b!4629467))

(declare-fun m!5476609 () Bool)

(assert (=> d!1458753 m!5476609))

(declare-fun m!5476611 () Bool)

(assert (=> d!1458753 m!5476611))

(declare-fun m!5476613 () Bool)

(assert (=> b!4629467 m!5476613))

(declare-fun m!5476615 () Bool)

(assert (=> b!4629467 m!5476615))

(assert (=> b!4629467 m!5476613))

(declare-fun m!5476617 () Bool)

(assert (=> b!4629467 m!5476617))

(assert (=> b!4629467 m!5476519))

(assert (=> b!4629467 m!5476615))

(declare-fun m!5476619 () Bool)

(assert (=> b!4629467 m!5476619))

(assert (=> b!4629043 d!1458753))

(declare-fun d!1458755 () Bool)

(declare-fun e!2887878 () Bool)

(assert (=> d!1458755 e!2887878))

(declare-fun res!1942022 () Bool)

(assert (=> d!1458755 (=> (not res!1942022) (not e!2887878))))

(declare-fun lt!1789037 () ListMap!4313)

(assert (=> d!1458755 (= res!1942022 (not (contains!14653 lt!1789037 key!4968)))))

(assert (=> d!1458755 (= lt!1789037 (ListMap!4314 (removePresrvNoDuplicatedKeys!267 (toList!5009 lt!1788448) key!4968)))))

(assert (=> d!1458755 (= (-!562 lt!1788448 key!4968) lt!1789037)))

(declare-fun b!4629468 () Bool)

(assert (=> b!4629468 (= e!2887878 (= ((_ map and) (content!8841 (keys!18184 lt!1788448)) ((_ map not) (store ((as const (Array K!12955 Bool)) false) key!4968 true))) (content!8841 (keys!18184 lt!1789037))))))

(assert (= (and d!1458755 res!1942022) b!4629468))

(declare-fun m!5476621 () Bool)

(assert (=> d!1458755 m!5476621))

(declare-fun m!5476623 () Bool)

(assert (=> d!1458755 m!5476623))

(declare-fun m!5476625 () Bool)

(assert (=> b!4629468 m!5476625))

(assert (=> b!4629468 m!5476369))

(assert (=> b!4629468 m!5476625))

(declare-fun m!5476627 () Bool)

(assert (=> b!4629468 m!5476627))

(assert (=> b!4629468 m!5476519))

(assert (=> b!4629468 m!5476369))

(declare-fun m!5476629 () Bool)

(assert (=> b!4629468 m!5476629))

(assert (=> b!4629043 d!1458755))

(declare-fun d!1458757 () Bool)

(assert (=> d!1458757 (= (-!562 (+!1888 lt!1788448 (tuple2!52535 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40)))) key!4968) (+!1888 (-!562 lt!1788448 key!4968) (tuple2!52535 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40)))))))

(declare-fun lt!1789040 () Unit!112884)

(declare-fun choose!31445 (ListMap!4313 K!12955 V!13201 K!12955) Unit!112884)

(assert (=> d!1458757 (= lt!1789040 (choose!31445 lt!1788448 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40)) key!4968))))

(assert (=> d!1458757 (not (= (_1!29561 (h!57644 oldBucket!40)) key!4968))))

(assert (=> d!1458757 (= (addRemoveCommutativeForDiffKeys!17 lt!1788448 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40)) key!4968) lt!1789040)))

(declare-fun bs!1026354 () Bool)

(assert (= bs!1026354 d!1458757))

(assert (=> bs!1026354 m!5475515))

(assert (=> bs!1026354 m!5475515))

(declare-fun m!5476631 () Bool)

(assert (=> bs!1026354 m!5476631))

(declare-fun m!5476633 () Bool)

(assert (=> bs!1026354 m!5476633))

(declare-fun m!5476635 () Bool)

(assert (=> bs!1026354 m!5476635))

(assert (=> bs!1026354 m!5476633))

(declare-fun m!5476637 () Bool)

(assert (=> bs!1026354 m!5476637))

(assert (=> b!4629043 d!1458757))

(declare-fun d!1458759 () Bool)

(assert (=> d!1458759 (eq!837 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 lt!1788438) Nil!51581)) (-!562 (extractMap!1578 (Cons!51581 (tuple2!52537 hash!414 (t!358750 oldBucket!40)) Nil!51581)) key!4968))))

(declare-fun lt!1789043 () Unit!112884)

(declare-fun choose!31446 ((_ BitVec 64) List!51704 List!51704 K!12955 Hashable!5919) Unit!112884)

(assert (=> d!1458759 (= lt!1789043 (choose!31446 hash!414 (t!358750 oldBucket!40) lt!1788438 key!4968 hashF!1389))))

(assert (=> d!1458759 (noDuplicateKeys!1522 (t!358750 oldBucket!40))))

(assert (=> d!1458759 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!124 hash!414 (t!358750 oldBucket!40) lt!1788438 key!4968 hashF!1389) lt!1789043)))

(declare-fun bs!1026355 () Bool)

(assert (= bs!1026355 d!1458759))

(assert (=> bs!1026355 m!5476393))

(assert (=> bs!1026355 m!5475523))

(declare-fun m!5476639 () Bool)

(assert (=> bs!1026355 m!5476639))

(declare-fun m!5476641 () Bool)

(assert (=> bs!1026355 m!5476641))

(declare-fun m!5476643 () Bool)

(assert (=> bs!1026355 m!5476643))

(assert (=> bs!1026355 m!5475523))

(assert (=> bs!1026355 m!5476643))

(declare-fun m!5476645 () Bool)

(assert (=> bs!1026355 m!5476645))

(assert (=> bs!1026355 m!5476641))

(assert (=> b!4629043 d!1458759))

(declare-fun d!1458761 () Bool)

(declare-fun e!2887879 () Bool)

(assert (=> d!1458761 e!2887879))

(declare-fun res!1942023 () Bool)

(assert (=> d!1458761 (=> (not res!1942023) (not e!2887879))))

(declare-fun lt!1789044 () ListMap!4313)

(assert (=> d!1458761 (= res!1942023 (not (contains!14653 lt!1789044 key!4968)))))

(assert (=> d!1458761 (= lt!1789044 (ListMap!4314 (removePresrvNoDuplicatedKeys!267 (toList!5009 (+!1888 lt!1788448 (h!57644 oldBucket!40))) key!4968)))))

(assert (=> d!1458761 (= (-!562 (+!1888 lt!1788448 (h!57644 oldBucket!40)) key!4968) lt!1789044)))

(declare-fun b!4629469 () Bool)

(assert (=> b!4629469 (= e!2887879 (= ((_ map and) (content!8841 (keys!18184 (+!1888 lt!1788448 (h!57644 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12955 Bool)) false) key!4968 true))) (content!8841 (keys!18184 lt!1789044))))))

(assert (= (and d!1458761 res!1942023) b!4629469))

(declare-fun m!5476647 () Bool)

(assert (=> d!1458761 m!5476647))

(declare-fun m!5476649 () Bool)

(assert (=> d!1458761 m!5476649))

(declare-fun m!5476651 () Bool)

(assert (=> b!4629469 m!5476651))

(assert (=> b!4629469 m!5475509))

(declare-fun m!5476653 () Bool)

(assert (=> b!4629469 m!5476653))

(assert (=> b!4629469 m!5476651))

(declare-fun m!5476655 () Bool)

(assert (=> b!4629469 m!5476655))

(assert (=> b!4629469 m!5476519))

(assert (=> b!4629469 m!5476653))

(declare-fun m!5476657 () Bool)

(assert (=> b!4629469 m!5476657))

(assert (=> b!4629043 d!1458761))

(declare-fun d!1458763 () Bool)

(declare-fun e!2887880 () Bool)

(assert (=> d!1458763 e!2887880))

(declare-fun res!1942025 () Bool)

(assert (=> d!1458763 (=> (not res!1942025) (not e!2887880))))

(declare-fun lt!1789048 () ListMap!4313)

(assert (=> d!1458763 (= res!1942025 (contains!14653 lt!1789048 (_1!29561 (h!57644 oldBucket!40))))))

(declare-fun lt!1789047 () List!51704)

(assert (=> d!1458763 (= lt!1789048 (ListMap!4314 lt!1789047))))

(declare-fun lt!1789045 () Unit!112884)

(declare-fun lt!1789046 () Unit!112884)

(assert (=> d!1458763 (= lt!1789045 lt!1789046)))

(assert (=> d!1458763 (= (getValueByKey!1479 lt!1789047 (_1!29561 (h!57644 oldBucket!40))) (Some!11634 (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458763 (= lt!1789046 (lemmaContainsTupThenGetReturnValue!862 lt!1789047 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458763 (= lt!1789047 (insertNoDuplicatedKeys!370 (toList!5009 lt!1788448) (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458763 (= (+!1888 lt!1788448 (h!57644 oldBucket!40)) lt!1789048)))

(declare-fun b!4629470 () Bool)

(declare-fun res!1942024 () Bool)

(assert (=> b!4629470 (=> (not res!1942024) (not e!2887880))))

(assert (=> b!4629470 (= res!1942024 (= (getValueByKey!1479 (toList!5009 lt!1789048) (_1!29561 (h!57644 oldBucket!40))) (Some!11634 (_2!29561 (h!57644 oldBucket!40)))))))

(declare-fun b!4629471 () Bool)

(assert (=> b!4629471 (= e!2887880 (contains!14657 (toList!5009 lt!1789048) (h!57644 oldBucket!40)))))

(assert (= (and d!1458763 res!1942025) b!4629470))

(assert (= (and b!4629470 res!1942024) b!4629471))

(declare-fun m!5476659 () Bool)

(assert (=> d!1458763 m!5476659))

(declare-fun m!5476661 () Bool)

(assert (=> d!1458763 m!5476661))

(declare-fun m!5476663 () Bool)

(assert (=> d!1458763 m!5476663))

(declare-fun m!5476665 () Bool)

(assert (=> d!1458763 m!5476665))

(declare-fun m!5476667 () Bool)

(assert (=> b!4629470 m!5476667))

(declare-fun m!5476669 () Bool)

(assert (=> b!4629471 m!5476669))

(assert (=> b!4629043 d!1458763))

(declare-fun d!1458765 () Bool)

(declare-fun e!2887881 () Bool)

(assert (=> d!1458765 e!2887881))

(declare-fun res!1942027 () Bool)

(assert (=> d!1458765 (=> (not res!1942027) (not e!2887881))))

(declare-fun lt!1789052 () ListMap!4313)

(assert (=> d!1458765 (= res!1942027 (contains!14653 lt!1789052 (_1!29561 (h!57644 oldBucket!40))))))

(declare-fun lt!1789051 () List!51704)

(assert (=> d!1458765 (= lt!1789052 (ListMap!4314 lt!1789051))))

(declare-fun lt!1789049 () Unit!112884)

(declare-fun lt!1789050 () Unit!112884)

(assert (=> d!1458765 (= lt!1789049 lt!1789050)))

(assert (=> d!1458765 (= (getValueByKey!1479 lt!1789051 (_1!29561 (h!57644 oldBucket!40))) (Some!11634 (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458765 (= lt!1789050 (lemmaContainsTupThenGetReturnValue!862 lt!1789051 (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458765 (= lt!1789051 (insertNoDuplicatedKeys!370 (toList!5009 lt!1788456) (_1!29561 (h!57644 oldBucket!40)) (_2!29561 (h!57644 oldBucket!40))))))

(assert (=> d!1458765 (= (+!1888 lt!1788456 (h!57644 oldBucket!40)) lt!1789052)))

(declare-fun b!4629472 () Bool)

(declare-fun res!1942026 () Bool)

(assert (=> b!4629472 (=> (not res!1942026) (not e!2887881))))

(assert (=> b!4629472 (= res!1942026 (= (getValueByKey!1479 (toList!5009 lt!1789052) (_1!29561 (h!57644 oldBucket!40))) (Some!11634 (_2!29561 (h!57644 oldBucket!40)))))))

(declare-fun b!4629473 () Bool)

(assert (=> b!4629473 (= e!2887881 (contains!14657 (toList!5009 lt!1789052) (h!57644 oldBucket!40)))))

(assert (= (and d!1458765 res!1942027) b!4629472))

(assert (= (and b!4629472 res!1942026) b!4629473))

(declare-fun m!5476671 () Bool)

(assert (=> d!1458765 m!5476671))

(declare-fun m!5476673 () Bool)

(assert (=> d!1458765 m!5476673))

(declare-fun m!5476675 () Bool)

(assert (=> d!1458765 m!5476675))

(declare-fun m!5476677 () Bool)

(assert (=> d!1458765 m!5476677))

(declare-fun m!5476679 () Bool)

(assert (=> b!4629472 m!5476679))

(declare-fun m!5476681 () Bool)

(assert (=> b!4629473 m!5476681))

(assert (=> b!4629043 d!1458765))

(declare-fun d!1458767 () Bool)

(assert (=> d!1458767 (= (eq!837 lt!1788461 lt!1788456) (= (content!8838 (toList!5009 lt!1788461)) (content!8838 (toList!5009 lt!1788456))))))

(declare-fun bs!1026356 () Bool)

(assert (= bs!1026356 d!1458767))

(declare-fun m!5476683 () Bool)

(assert (=> bs!1026356 m!5476683))

(declare-fun m!5476685 () Bool)

(assert (=> bs!1026356 m!5476685))

(assert (=> b!4629043 d!1458767))

(declare-fun b!4629474 () Bool)

(declare-fun e!2887884 () List!51707)

(assert (=> b!4629474 (= e!2887884 (getKeysList!669 (toList!5009 lt!1788436)))))

(declare-fun b!4629475 () Bool)

(declare-fun e!2887885 () Bool)

(declare-fun e!2887887 () Bool)

(assert (=> b!4629475 (= e!2887885 e!2887887)))

(declare-fun res!1942029 () Bool)

(assert (=> b!4629475 (=> (not res!1942029) (not e!2887887))))

(assert (=> b!4629475 (= res!1942029 (isDefined!8900 (getValueByKey!1479 (toList!5009 lt!1788436) key!4968)))))

(declare-fun b!4629476 () Bool)

(assert (=> b!4629476 (= e!2887884 (keys!18184 lt!1788436))))

(declare-fun b!4629477 () Bool)

(declare-fun e!2887886 () Unit!112884)

(declare-fun e!2887883 () Unit!112884)

(assert (=> b!4629477 (= e!2887886 e!2887883)))

(declare-fun c!792437 () Bool)

(declare-fun call!323001 () Bool)

(assert (=> b!4629477 (= c!792437 call!323001)))

(declare-fun b!4629478 () Bool)

(declare-fun lt!1789060 () Unit!112884)

(assert (=> b!4629478 (= e!2887886 lt!1789060)))

(declare-fun lt!1789058 () Unit!112884)

(assert (=> b!4629478 (= lt!1789058 (lemmaContainsKeyImpliesGetValueByKeyDefined!1381 (toList!5009 lt!1788436) key!4968))))

(assert (=> b!4629478 (isDefined!8900 (getValueByKey!1479 (toList!5009 lt!1788436) key!4968))))

(declare-fun lt!1789059 () Unit!112884)

(assert (=> b!4629478 (= lt!1789059 lt!1789058)))

(assert (=> b!4629478 (= lt!1789060 (lemmaInListThenGetKeysListContains!664 (toList!5009 lt!1788436) key!4968))))

(assert (=> b!4629478 call!323001))

(declare-fun b!4629479 () Bool)

(assert (=> b!4629479 (= e!2887887 (contains!14659 (keys!18184 lt!1788436) key!4968))))

(declare-fun d!1458769 () Bool)

(assert (=> d!1458769 e!2887885))

(declare-fun res!1942030 () Bool)

(assert (=> d!1458769 (=> res!1942030 e!2887885)))

(declare-fun e!2887882 () Bool)

(assert (=> d!1458769 (= res!1942030 e!2887882)))

(declare-fun res!1942028 () Bool)

(assert (=> d!1458769 (=> (not res!1942028) (not e!2887882))))

(declare-fun lt!1789055 () Bool)

(assert (=> d!1458769 (= res!1942028 (not lt!1789055))))

(declare-fun lt!1789054 () Bool)

(assert (=> d!1458769 (= lt!1789055 lt!1789054)))

(declare-fun lt!1789057 () Unit!112884)

(assert (=> d!1458769 (= lt!1789057 e!2887886)))

(declare-fun c!792435 () Bool)

(assert (=> d!1458769 (= c!792435 lt!1789054)))

(assert (=> d!1458769 (= lt!1789054 (containsKey!2493 (toList!5009 lt!1788436) key!4968))))

(assert (=> d!1458769 (= (contains!14653 lt!1788436 key!4968) lt!1789055)))

(declare-fun bm!322996 () Bool)

(assert (=> bm!322996 (= call!323001 (contains!14659 e!2887884 key!4968))))

(declare-fun c!792436 () Bool)

(assert (=> bm!322996 (= c!792436 c!792435)))

(declare-fun b!4629480 () Bool)

(declare-fun Unit!113004 () Unit!112884)

(assert (=> b!4629480 (= e!2887883 Unit!113004)))

(declare-fun b!4629481 () Bool)

(assert (=> b!4629481 false))

(declare-fun lt!1789053 () Unit!112884)

(declare-fun lt!1789056 () Unit!112884)

(assert (=> b!4629481 (= lt!1789053 lt!1789056)))

(assert (=> b!4629481 (containsKey!2493 (toList!5009 lt!1788436) key!4968)))

(assert (=> b!4629481 (= lt!1789056 (lemmaInGetKeysListThenContainsKey!668 (toList!5009 lt!1788436) key!4968))))

(declare-fun Unit!113005 () Unit!112884)

(assert (=> b!4629481 (= e!2887883 Unit!113005)))

(declare-fun b!4629482 () Bool)

(assert (=> b!4629482 (= e!2887882 (not (contains!14659 (keys!18184 lt!1788436) key!4968)))))

(assert (= (and d!1458769 c!792435) b!4629478))

(assert (= (and d!1458769 (not c!792435)) b!4629477))

(assert (= (and b!4629477 c!792437) b!4629481))

(assert (= (and b!4629477 (not c!792437)) b!4629480))

(assert (= (or b!4629478 b!4629477) bm!322996))

(assert (= (and bm!322996 c!792436) b!4629474))

(assert (= (and bm!322996 (not c!792436)) b!4629476))

(assert (= (and d!1458769 res!1942028) b!4629482))

(assert (= (and d!1458769 (not res!1942030)) b!4629475))

(assert (= (and b!4629475 res!1942029) b!4629479))

(assert (=> b!4629476 m!5476515))

(declare-fun m!5476687 () Bool)

(assert (=> bm!322996 m!5476687))

(assert (=> b!4629479 m!5476515))

(assert (=> b!4629479 m!5476515))

(declare-fun m!5476689 () Bool)

(assert (=> b!4629479 m!5476689))

(declare-fun m!5476691 () Bool)

(assert (=> b!4629478 m!5476691))

(declare-fun m!5476693 () Bool)

(assert (=> b!4629478 m!5476693))

(assert (=> b!4629478 m!5476693))

(declare-fun m!5476695 () Bool)

(assert (=> b!4629478 m!5476695))

(declare-fun m!5476697 () Bool)

(assert (=> b!4629478 m!5476697))

(assert (=> b!4629482 m!5476515))

(assert (=> b!4629482 m!5476515))

(assert (=> b!4629482 m!5476689))

(declare-fun m!5476699 () Bool)

(assert (=> b!4629481 m!5476699))

(declare-fun m!5476701 () Bool)

(assert (=> b!4629481 m!5476701))

(assert (=> b!4629475 m!5476693))

(assert (=> b!4629475 m!5476693))

(assert (=> b!4629475 m!5476695))

(declare-fun m!5476703 () Bool)

(assert (=> b!4629474 m!5476703))

(assert (=> d!1458769 m!5476699))

(assert (=> b!4629050 d!1458769))

(declare-fun bs!1026357 () Bool)

(declare-fun d!1458771 () Bool)

(assert (= bs!1026357 (and d!1458771 d!1458637)))

(declare-fun lambda!193222 () Int)

(assert (=> bs!1026357 (= lambda!193222 lambda!193183)))

(declare-fun bs!1026358 () Bool)

(assert (= bs!1026358 (and d!1458771 d!1458657)))

(assert (=> bs!1026358 (= lambda!193222 lambda!193199)))

(declare-fun bs!1026359 () Bool)

(assert (= bs!1026359 (and d!1458771 d!1458745)))

(assert (=> bs!1026359 (= lambda!193222 lambda!193217)))

(declare-fun bs!1026360 () Bool)

(assert (= bs!1026360 (and d!1458771 d!1458739)))

(assert (=> bs!1026360 (= lambda!193222 lambda!193211)))

(declare-fun bs!1026361 () Bool)

(assert (= bs!1026361 (and d!1458771 d!1458717)))

(assert (=> bs!1026361 (= lambda!193222 lambda!193210)))

(declare-fun bs!1026362 () Bool)

(assert (= bs!1026362 (and d!1458771 d!1458741)))

(assert (=> bs!1026362 (= lambda!193222 lambda!193212)))

(declare-fun bs!1026363 () Bool)

(assert (= bs!1026363 (and d!1458771 d!1458691)))

(assert (=> bs!1026363 (= lambda!193222 lambda!193207)))

(declare-fun bs!1026364 () Bool)

(assert (= bs!1026364 (and d!1458771 d!1458621)))

(assert (=> bs!1026364 (= lambda!193222 lambda!193174)))

(declare-fun bs!1026365 () Bool)

(assert (= bs!1026365 (and d!1458771 b!4629055)))

(assert (=> bs!1026365 (= lambda!193222 lambda!193076)))

(declare-fun lt!1789061 () ListMap!4313)

(assert (=> d!1458771 (invariantList!1218 (toList!5009 lt!1789061))))

(declare-fun e!2887888 () ListMap!4313)

(assert (=> d!1458771 (= lt!1789061 e!2887888)))

(declare-fun c!792438 () Bool)

(assert (=> d!1458771 (= c!792438 ((_ is Cons!51581) lt!1788460))))

(assert (=> d!1458771 (forall!10850 lt!1788460 lambda!193222)))

(assert (=> d!1458771 (= (extractMap!1578 lt!1788460) lt!1789061)))

(declare-fun b!4629483 () Bool)

(assert (=> b!4629483 (= e!2887888 (addToMapMapFromBucket!983 (_2!29562 (h!57645 lt!1788460)) (extractMap!1578 (t!358751 lt!1788460))))))

(declare-fun b!4629484 () Bool)

(assert (=> b!4629484 (= e!2887888 (ListMap!4314 Nil!51580))))

(assert (= (and d!1458771 c!792438) b!4629483))

(assert (= (and d!1458771 (not c!792438)) b!4629484))

(declare-fun m!5476705 () Bool)

(assert (=> d!1458771 m!5476705))

(declare-fun m!5476707 () Bool)

(assert (=> d!1458771 m!5476707))

(declare-fun m!5476709 () Bool)

(assert (=> b!4629483 m!5476709))

(assert (=> b!4629483 m!5476709))

(declare-fun m!5476711 () Bool)

(assert (=> b!4629483 m!5476711))

(assert (=> b!4629050 d!1458771))

(declare-fun d!1458773 () Bool)

(declare-fun res!1942035 () Bool)

(declare-fun e!2887893 () Bool)

(assert (=> d!1458773 (=> res!1942035 e!2887893)))

(assert (=> d!1458773 (= res!1942035 ((_ is Nil!51581) lt!1788450))))

(assert (=> d!1458773 (= (forall!10850 lt!1788450 lambda!193076) e!2887893)))

(declare-fun b!4629489 () Bool)

(declare-fun e!2887894 () Bool)

(assert (=> b!4629489 (= e!2887893 e!2887894)))

(declare-fun res!1942036 () Bool)

(assert (=> b!4629489 (=> (not res!1942036) (not e!2887894))))

(assert (=> b!4629489 (= res!1942036 (dynLambda!21512 lambda!193076 (h!57645 lt!1788450)))))

(declare-fun b!4629490 () Bool)

(assert (=> b!4629490 (= e!2887894 (forall!10850 (t!358751 lt!1788450) lambda!193076))))

(assert (= (and d!1458773 (not res!1942035)) b!4629489))

(assert (= (and b!4629489 res!1942036) b!4629490))

(declare-fun b_lambda!170839 () Bool)

(assert (=> (not b_lambda!170839) (not b!4629489)))

(declare-fun m!5476713 () Bool)

(assert (=> b!4629489 m!5476713))

(declare-fun m!5476715 () Bool)

(assert (=> b!4629490 m!5476715))

(assert (=> b!4629052 d!1458773))

(declare-fun e!2887897 () Bool)

(declare-fun b!4629495 () Bool)

(declare-fun tp!1342266 () Bool)

(assert (=> b!4629495 (= e!2887897 (and tp_is_empty!29381 tp_is_empty!29383 tp!1342266))))

(assert (=> b!4629059 (= tp!1342258 e!2887897)))

(assert (= (and b!4629059 ((_ is Cons!51580) (t!358750 oldBucket!40))) b!4629495))

(declare-fun e!2887898 () Bool)

(declare-fun b!4629496 () Bool)

(declare-fun tp!1342267 () Bool)

(assert (=> b!4629496 (= e!2887898 (and tp_is_empty!29381 tp_is_empty!29383 tp!1342267))))

(assert (=> b!4629051 (= tp!1342259 e!2887898)))

(assert (= (and b!4629051 ((_ is Cons!51580) (t!358750 newBucket!224))) b!4629496))

(declare-fun b_lambda!170841 () Bool)

(assert (= b_lambda!170837 (or b!4629055 b_lambda!170841)))

(declare-fun bs!1026366 () Bool)

(declare-fun d!1458775 () Bool)

(assert (= bs!1026366 (and d!1458775 b!4629055)))

(assert (=> bs!1026366 (= (dynLambda!21512 lambda!193076 lt!1788441) (noDuplicateKeys!1522 (_2!29562 lt!1788441)))))

(declare-fun m!5476717 () Bool)

(assert (=> bs!1026366 m!5476717))

(assert (=> d!1458711 d!1458775))

(declare-fun b_lambda!170843 () Bool)

(assert (= b_lambda!170839 (or b!4629055 b_lambda!170843)))

(declare-fun bs!1026367 () Bool)

(declare-fun d!1458777 () Bool)

(assert (= bs!1026367 (and d!1458777 b!4629055)))

(assert (=> bs!1026367 (= (dynLambda!21512 lambda!193076 (h!57645 lt!1788450)) (noDuplicateKeys!1522 (_2!29562 (h!57645 lt!1788450))))))

(declare-fun m!5476719 () Bool)

(assert (=> bs!1026367 m!5476719))

(assert (=> b!4629489 d!1458777))

(check-sat (not d!1458721) (not b!4629282) (not b!4629417) (not b!4629456) (not b!4629475) (not bm!322988) (not b!4629280) (not b!4629390) tp_is_empty!29383 (not bm!322984) (not bs!1026366) (not b!4629240) (not d!1458729) (not b!4629141) (not d!1458719) (not bm!322993) (not d!1458713) (not d!1458737) (not d!1458755) (not b!4629468) (not bm!322994) (not b_lambda!170841) (not d!1458657) (not d!1458705) (not b!4629361) (not bs!1026367) (not b!4629296) (not d!1458617) (not b!4629447) (not b!4629357) (not bm!322977) (not b!4629412) (not b!4629142) (not b!4629449) (not b!4629392) (not d!1458745) (not bm!322979) (not b!4629391) (not d!1458753) (not b!4629478) (not b!4629316) (not d!1458769) (not b!4629299) (not d!1458665) (not d!1458723) (not b!4629278) tp_is_empty!29381 (not d!1458735) (not b!4629466) (not b!4629371) (not d!1458707) (not d!1458565) (not d!1458667) (not b!4629435) (not b!4629239) (not b!4629474) (not b!4629170) (not d!1458761) (not d!1458765) (not d!1458747) (not b!4629482) (not b!4629495) (not b!4629452) (not d!1458767) (not b!4629317) (not b!4629171) (not b!4629301) (not b_lambda!170843) (not d!1458661) (not d!1458563) (not d!1458691) (not b!4629318) (not b!4629496) (not d!1458637) (not b!4629364) (not b!4629147) (not b!4629483) (not d!1458663) (not d!1458727) (not b!4629476) (not d!1458739) (not d!1458759) (not bm!322983) (not b!4629443) (not d!1458731) (not b!4629393) (not b!4629302) (not b!4629450) (not b!4629479) (not b!4629356) (not b!4629437) (not d!1458711) (not b!4629416) (not d!1458641) (not b!4629298) (not b!4629459) (not d!1458717) (not b!4629470) (not d!1458733) (not b!4629415) (not d!1458559) (not b!4629281) (not d!1458643) (not d!1458621) (not b!4629363) (not b!4629473) (not b!4629283) (not b!4629289) (not bm!322987) (not d!1458689) (not b!4629490) (not b!4629304) (not b!4629471) (not d!1458757) (not b!4629423) (not d!1458741) (not bm!322986) (not b!4629303) (not b!4629472) (not d!1458751) (not b!4629358) (not b!4629241) (not d!1458577) (not d!1458771) (not b!4629426) (not d!1458645) (not b!4629465) (not b!4629410) (not d!1458647) (not bm!322995) (not d!1458545) (not bm!322972) (not b!4629455) (not b!4629297) (not bm!322978) (not b!4629131) (not b!4629467) (not bm!322996) (not d!1458629) (not b!4629360) (not d!1458627) (not b!4629448) (not b!4629433) (not b!4629454) (not bm!322971) (not d!1458725) (not d!1458743) (not b!4629457) (not bm!322985) (not b!4629315) (not bm!322973) (not b!4629481) (not b!4629469) (not b!4629238) (not d!1458763) (not bm!322992))
(check-sat)
