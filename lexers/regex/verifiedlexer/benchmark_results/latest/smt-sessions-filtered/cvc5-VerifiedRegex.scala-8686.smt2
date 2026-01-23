; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!462470 () Bool)

(assert start!462470)

(declare-fun b!4619703 () Bool)

(declare-fun res!1936265 () Bool)

(declare-fun e!2881625 () Bool)

(assert (=> b!4619703 (=> (not res!1936265) (not e!2881625))))

(declare-datatypes ((Hashable!5870 0))(
  ( (HashableExt!5869 (__x!31573 Int)) )
))
(declare-fun hashF!1389 () Hashable!5870)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12833 0))(
  ( (K!12834 (val!18537 Int)) )
))
(declare-datatypes ((V!13079 0))(
  ( (V!13080 (val!18538 Int)) )
))
(declare-datatypes ((tuple2!52338 0))(
  ( (tuple2!52339 (_1!29463 K!12833) (_2!29463 V!13079)) )
))
(declare-datatypes ((List!51572 0))(
  ( (Nil!51448) (Cons!51448 (h!57478 tuple2!52338) (t!358584 List!51572)) )
))
(declare-fun oldBucket!40 () List!51572)

(declare-fun allKeysSameHash!1327 (List!51572 (_ BitVec 64) Hashable!5870) Bool)

(assert (=> b!4619703 (= res!1936265 (allKeysSameHash!1327 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1936264 () Bool)

(assert (=> start!462470 (=> (not res!1936264) (not e!2881625))))

(declare-fun noDuplicateKeys!1473 (List!51572) Bool)

(assert (=> start!462470 (= res!1936264 (noDuplicateKeys!1473 oldBucket!40))))

(assert (=> start!462470 e!2881625))

(assert (=> start!462470 true))

(declare-fun e!2881620 () Bool)

(assert (=> start!462470 e!2881620))

(declare-fun tp_is_empty!29185 () Bool)

(assert (=> start!462470 tp_is_empty!29185))

(declare-fun e!2881619 () Bool)

(assert (=> start!462470 e!2881619))

(declare-fun b!4619704 () Bool)

(declare-fun e!2881627 () Bool)

(declare-fun e!2881624 () Bool)

(assert (=> b!4619704 (= e!2881627 e!2881624)))

(declare-fun res!1936266 () Bool)

(assert (=> b!4619704 (=> res!1936266 e!2881624)))

(declare-fun key!4968 () K!12833)

(declare-fun containsKey!2373 (List!51572 K!12833) Bool)

(assert (=> b!4619704 (= res!1936266 (not (containsKey!2373 (t!358584 oldBucket!40) key!4968)))))

(assert (=> b!4619704 (containsKey!2373 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110810 0))(
  ( (Unit!110811) )
))
(declare-fun lt!1775544 () Unit!110810)

(declare-fun lemmaGetPairDefinedThenContainsKey!19 (List!51572 K!12833 Hashable!5870) Unit!110810)

(assert (=> b!4619704 (= lt!1775544 (lemmaGetPairDefinedThenContainsKey!19 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1775539 () List!51572)

(declare-datatypes ((Option!11515 0))(
  ( (None!11514) (Some!11514 (v!45600 tuple2!52338)) )
))
(declare-fun isDefined!8780 (Option!11515) Bool)

(declare-fun getPair!265 (List!51572 K!12833) Option!11515)

(assert (=> b!4619704 (isDefined!8780 (getPair!265 lt!1775539 key!4968))))

(declare-fun lambda!190441 () Int)

(declare-fun lt!1775543 () Unit!110810)

(declare-datatypes ((tuple2!52340 0))(
  ( (tuple2!52341 (_1!29464 (_ BitVec 64)) (_2!29464 List!51572)) )
))
(declare-datatypes ((List!51573 0))(
  ( (Nil!51449) (Cons!51449 (h!57479 tuple2!52340) (t!358585 List!51573)) )
))
(declare-fun lt!1775541 () List!51573)

(declare-fun lt!1775535 () tuple2!52340)

(declare-fun forallContained!2997 (List!51573 Int tuple2!52340) Unit!110810)

(assert (=> b!4619704 (= lt!1775543 (forallContained!2997 lt!1775541 lambda!190441 lt!1775535))))

(declare-fun contains!14438 (List!51573 tuple2!52340) Bool)

(assert (=> b!4619704 (contains!14438 lt!1775541 lt!1775535)))

(declare-fun lt!1775530 () (_ BitVec 64))

(assert (=> b!4619704 (= lt!1775535 (tuple2!52341 lt!1775530 lt!1775539))))

(declare-fun lt!1775542 () Unit!110810)

(declare-datatypes ((ListLongMap!3501 0))(
  ( (ListLongMap!3502 (toList!4911 List!51573)) )
))
(declare-fun lt!1775532 () ListLongMap!3501)

(declare-fun lemmaGetValueImpliesTupleContained!70 (ListLongMap!3501 (_ BitVec 64) List!51572) Unit!110810)

(assert (=> b!4619704 (= lt!1775542 (lemmaGetValueImpliesTupleContained!70 lt!1775532 lt!1775530 lt!1775539))))

(declare-fun apply!12138 (ListLongMap!3501 (_ BitVec 64)) List!51572)

(assert (=> b!4619704 (= lt!1775539 (apply!12138 lt!1775532 lt!1775530))))

(declare-fun contains!14439 (ListLongMap!3501 (_ BitVec 64)) Bool)

(assert (=> b!4619704 (contains!14439 lt!1775532 lt!1775530)))

(declare-fun lt!1775531 () Unit!110810)

(declare-fun lemmaInGenMapThenLongMapContainsHash!471 (ListLongMap!3501 K!12833 Hashable!5870) Unit!110810)

(assert (=> b!4619704 (= lt!1775531 (lemmaInGenMapThenLongMapContainsHash!471 lt!1775532 key!4968 hashF!1389))))

(declare-fun lt!1775537 () Unit!110810)

(declare-fun lemmaInGenMapThenGetPairDefined!61 (ListLongMap!3501 K!12833 Hashable!5870) Unit!110810)

(assert (=> b!4619704 (= lt!1775537 (lemmaInGenMapThenGetPairDefined!61 lt!1775532 key!4968 hashF!1389))))

(assert (=> b!4619704 (= lt!1775532 (ListLongMap!3502 lt!1775541))))

(declare-fun b!4619705 () Bool)

(declare-fun res!1936261 () Bool)

(declare-fun e!2881621 () Bool)

(assert (=> b!4619705 (=> res!1936261 e!2881621)))

(declare-fun lt!1775540 () List!51572)

(declare-fun removePairForKey!1096 (List!51572 K!12833) List!51572)

(assert (=> b!4619705 (= res!1936261 (not (= (removePairForKey!1096 (t!358584 oldBucket!40) key!4968) lt!1775540)))))

(declare-fun b!4619706 () Bool)

(declare-fun res!1936269 () Bool)

(assert (=> b!4619706 (=> (not res!1936269) (not e!2881625))))

(declare-fun newBucket!224 () List!51572)

(assert (=> b!4619706 (= res!1936269 (noDuplicateKeys!1473 newBucket!224))))

(declare-fun b!4619707 () Bool)

(declare-fun e!2881623 () Bool)

(declare-fun e!2881626 () Bool)

(assert (=> b!4619707 (= e!2881623 e!2881626)))

(declare-fun res!1936262 () Bool)

(assert (=> b!4619707 (=> (not res!1936262) (not e!2881626))))

(assert (=> b!4619707 (= res!1936262 (= lt!1775530 hash!414))))

(declare-fun hash!3443 (Hashable!5870 K!12833) (_ BitVec 64))

(assert (=> b!4619707 (= lt!1775530 (hash!3443 hashF!1389 key!4968))))

(declare-fun b!4619708 () Bool)

(declare-fun e!2881622 () Bool)

(declare-datatypes ((ListMap!4215 0))(
  ( (ListMap!4216 (toList!4912 List!51572)) )
))
(declare-fun lt!1775538 () ListMap!4215)

(assert (=> b!4619708 (= e!2881622 (= lt!1775538 (ListMap!4216 Nil!51448)))))

(declare-fun b!4619709 () Bool)

(assert (=> b!4619709 (= e!2881624 e!2881621)))

(declare-fun res!1936270 () Bool)

(assert (=> b!4619709 (=> res!1936270 e!2881621)))

(declare-fun tail!8108 (List!51572) List!51572)

(assert (=> b!4619709 (= res!1936270 (not (= (removePairForKey!1096 (tail!8108 oldBucket!40) key!4968) lt!1775540)))))

(assert (=> b!4619709 (= lt!1775540 (tail!8108 newBucket!224))))

(declare-fun b!4619710 () Bool)

(assert (=> b!4619710 (= e!2881626 (not e!2881627))))

(declare-fun res!1936259 () Bool)

(assert (=> b!4619710 (=> res!1936259 e!2881627)))

(assert (=> b!4619710 (= res!1936259 (or (and (is-Cons!51448 oldBucket!40) (= (_1!29463 (h!57478 oldBucket!40)) key!4968)) (not (is-Cons!51448 oldBucket!40)) (= (_1!29463 (h!57478 oldBucket!40)) key!4968)))))

(assert (=> b!4619710 e!2881622))

(declare-fun res!1936268 () Bool)

(assert (=> b!4619710 (=> (not res!1936268) (not e!2881622))))

(declare-fun lt!1775533 () ListMap!4215)

(declare-fun addToMapMapFromBucket!934 (List!51572 ListMap!4215) ListMap!4215)

(assert (=> b!4619710 (= res!1936268 (= lt!1775533 (addToMapMapFromBucket!934 oldBucket!40 lt!1775538)))))

(declare-fun extractMap!1529 (List!51573) ListMap!4215)

(assert (=> b!4619710 (= lt!1775538 (extractMap!1529 Nil!51449))))

(assert (=> b!4619710 true))

(declare-fun tp_is_empty!29187 () Bool)

(declare-fun tp!1341828 () Bool)

(declare-fun b!4619711 () Bool)

(assert (=> b!4619711 (= e!2881619 (and tp_is_empty!29185 tp_is_empty!29187 tp!1341828))))

(declare-fun b!4619712 () Bool)

(assert (=> b!4619712 (= e!2881621 (not (= oldBucket!40 Nil!51448)))))

(declare-fun lt!1775534 () List!51573)

(declare-fun contains!14440 (ListMap!4215 K!12833) Bool)

(assert (=> b!4619712 (contains!14440 (extractMap!1529 lt!1775534) key!4968)))

(declare-fun lt!1775536 () Unit!110810)

(declare-fun lemmaListContainsThenExtractedMapContains!291 (ListLongMap!3501 K!12833 Hashable!5870) Unit!110810)

(assert (=> b!4619712 (= lt!1775536 (lemmaListContainsThenExtractedMapContains!291 (ListLongMap!3502 lt!1775534) key!4968 hashF!1389))))

(assert (=> b!4619712 (= lt!1775534 (Cons!51449 (tuple2!52341 hash!414 (t!358584 oldBucket!40)) Nil!51449))))

(declare-fun b!4619713 () Bool)

(declare-fun res!1936267 () Bool)

(assert (=> b!4619713 (=> (not res!1936267) (not e!2881626))))

(assert (=> b!4619713 (= res!1936267 (allKeysSameHash!1327 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp!1341829 () Bool)

(declare-fun b!4619714 () Bool)

(assert (=> b!4619714 (= e!2881620 (and tp_is_empty!29185 tp_is_empty!29187 tp!1341829))))

(declare-fun b!4619715 () Bool)

(assert (=> b!4619715 (= e!2881625 e!2881623)))

(declare-fun res!1936263 () Bool)

(assert (=> b!4619715 (=> (not res!1936263) (not e!2881623))))

(assert (=> b!4619715 (= res!1936263 (contains!14440 lt!1775533 key!4968))))

(assert (=> b!4619715 (= lt!1775533 (extractMap!1529 lt!1775541))))

(assert (=> b!4619715 (= lt!1775541 (Cons!51449 (tuple2!52341 hash!414 oldBucket!40) Nil!51449))))

(declare-fun b!4619716 () Bool)

(declare-fun res!1936260 () Bool)

(assert (=> b!4619716 (=> (not res!1936260) (not e!2881625))))

(assert (=> b!4619716 (= res!1936260 (= (removePairForKey!1096 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!462470 res!1936264) b!4619706))

(assert (= (and b!4619706 res!1936269) b!4619716))

(assert (= (and b!4619716 res!1936260) b!4619703))

(assert (= (and b!4619703 res!1936265) b!4619715))

(assert (= (and b!4619715 res!1936263) b!4619707))

(assert (= (and b!4619707 res!1936262) b!4619713))

(assert (= (and b!4619713 res!1936267) b!4619710))

(assert (= (and b!4619710 res!1936268) b!4619708))

(assert (= (and b!4619710 (not res!1936259)) b!4619704))

(assert (= (and b!4619704 (not res!1936266)) b!4619709))

(assert (= (and b!4619709 (not res!1936270)) b!4619705))

(assert (= (and b!4619705 (not res!1936261)) b!4619712))

(assert (= (and start!462470 (is-Cons!51448 oldBucket!40)) b!4619714))

(assert (= (and start!462470 (is-Cons!51448 newBucket!224)) b!4619711))

(declare-fun m!5455477 () Bool)

(assert (=> b!4619707 m!5455477))

(declare-fun m!5455479 () Bool)

(assert (=> b!4619704 m!5455479))

(declare-fun m!5455481 () Bool)

(assert (=> b!4619704 m!5455481))

(declare-fun m!5455483 () Bool)

(assert (=> b!4619704 m!5455483))

(declare-fun m!5455485 () Bool)

(assert (=> b!4619704 m!5455485))

(declare-fun m!5455487 () Bool)

(assert (=> b!4619704 m!5455487))

(declare-fun m!5455489 () Bool)

(assert (=> b!4619704 m!5455489))

(assert (=> b!4619704 m!5455483))

(declare-fun m!5455491 () Bool)

(assert (=> b!4619704 m!5455491))

(declare-fun m!5455493 () Bool)

(assert (=> b!4619704 m!5455493))

(declare-fun m!5455495 () Bool)

(assert (=> b!4619704 m!5455495))

(declare-fun m!5455497 () Bool)

(assert (=> b!4619704 m!5455497))

(declare-fun m!5455499 () Bool)

(assert (=> b!4619704 m!5455499))

(declare-fun m!5455501 () Bool)

(assert (=> b!4619704 m!5455501))

(declare-fun m!5455503 () Bool)

(assert (=> b!4619703 m!5455503))

(declare-fun m!5455505 () Bool)

(assert (=> b!4619716 m!5455505))

(declare-fun m!5455507 () Bool)

(assert (=> b!4619705 m!5455507))

(declare-fun m!5455509 () Bool)

(assert (=> b!4619712 m!5455509))

(assert (=> b!4619712 m!5455509))

(declare-fun m!5455511 () Bool)

(assert (=> b!4619712 m!5455511))

(declare-fun m!5455513 () Bool)

(assert (=> b!4619712 m!5455513))

(declare-fun m!5455515 () Bool)

(assert (=> b!4619710 m!5455515))

(declare-fun m!5455517 () Bool)

(assert (=> b!4619710 m!5455517))

(declare-fun m!5455519 () Bool)

(assert (=> start!462470 m!5455519))

(declare-fun m!5455521 () Bool)

(assert (=> b!4619713 m!5455521))

(declare-fun m!5455523 () Bool)

(assert (=> b!4619709 m!5455523))

(assert (=> b!4619709 m!5455523))

(declare-fun m!5455525 () Bool)

(assert (=> b!4619709 m!5455525))

(declare-fun m!5455527 () Bool)

(assert (=> b!4619709 m!5455527))

(declare-fun m!5455529 () Bool)

(assert (=> b!4619706 m!5455529))

(declare-fun m!5455531 () Bool)

(assert (=> b!4619715 m!5455531))

(declare-fun m!5455533 () Bool)

(assert (=> b!4619715 m!5455533))

(push 1)

(assert (not b!4619709))

(assert (not b!4619714))

(assert (not start!462470))

(assert (not b!4619705))

(assert (not b!4619704))

(assert (not b!4619713))

(assert tp_is_empty!29187)

(assert (not b!4619715))

(assert (not b!4619707))

(assert (not b!4619706))

(assert (not b!4619716))

(assert tp_is_empty!29185)

(assert (not b!4619712))

(assert (not b!4619710))

(assert (not b!4619703))

(assert (not b!4619711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

