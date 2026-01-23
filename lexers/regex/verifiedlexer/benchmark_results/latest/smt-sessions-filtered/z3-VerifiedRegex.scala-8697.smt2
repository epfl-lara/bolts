; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463204 () Bool)

(assert start!463204)

(declare-fun b!4623476 () Bool)

(declare-fun tp_is_empty!29279 () Bool)

(declare-fun tp!1342023 () Bool)

(declare-fun tp_is_empty!29277 () Bool)

(declare-fun e!2884023 () Bool)

(assert (=> b!4623476 (= e!2884023 (and tp_is_empty!29277 tp_is_empty!29279 tp!1342023))))

(declare-fun b!4623477 () Bool)

(declare-fun e!2884027 () Bool)

(declare-fun e!2884025 () Bool)

(assert (=> b!4623477 (= e!2884027 e!2884025)))

(declare-fun res!1938491 () Bool)

(assert (=> b!4623477 (=> (not res!1938491) (not e!2884025))))

(declare-datatypes ((K!12890 0))(
  ( (K!12891 (val!18583 Int)) )
))
(declare-datatypes ((V!13136 0))(
  ( (V!13137 (val!18584 Int)) )
))
(declare-datatypes ((tuple2!52430 0))(
  ( (tuple2!52431 (_1!29509 K!12890) (_2!29509 V!13136)) )
))
(declare-datatypes ((List!51632 0))(
  ( (Nil!51508) (Cons!51508 (h!57552 tuple2!52430) (t!358658 List!51632)) )
))
(declare-datatypes ((ListMap!4261 0))(
  ( (ListMap!4262 (toList!4957 List!51632)) )
))
(declare-fun lt!1780559 () ListMap!4261)

(declare-fun key!4968 () K!12890)

(declare-fun contains!14535 (ListMap!4261 K!12890) Bool)

(assert (=> b!4623477 (= res!1938491 (contains!14535 lt!1780559 key!4968))))

(declare-datatypes ((tuple2!52432 0))(
  ( (tuple2!52433 (_1!29510 (_ BitVec 64)) (_2!29510 List!51632)) )
))
(declare-datatypes ((List!51633 0))(
  ( (Nil!51509) (Cons!51509 (h!57553 tuple2!52432) (t!358659 List!51633)) )
))
(declare-fun lt!1780564 () List!51633)

(declare-fun extractMap!1552 (List!51633) ListMap!4261)

(assert (=> b!4623477 (= lt!1780559 (extractMap!1552 lt!1780564))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51632)

(assert (=> b!4623477 (= lt!1780564 (Cons!51509 (tuple2!52433 hash!414 oldBucket!40) Nil!51509))))

(declare-fun b!4623478 () Bool)

(declare-fun res!1938496 () Bool)

(assert (=> b!4623478 (=> (not res!1938496) (not e!2884027))))

(declare-fun newBucket!224 () List!51632)

(declare-fun noDuplicateKeys!1496 (List!51632) Bool)

(assert (=> b!4623478 (= res!1938496 (noDuplicateKeys!1496 newBucket!224))))

(declare-fun b!4623479 () Bool)

(declare-fun e!2884026 () Bool)

(declare-fun e!2884024 () Bool)

(assert (=> b!4623479 (= e!2884026 e!2884024)))

(declare-fun res!1938483 () Bool)

(assert (=> b!4623479 (=> res!1938483 e!2884024)))

(declare-fun lt!1780558 () List!51632)

(declare-fun lt!1780575 () List!51632)

(declare-fun removePairForKey!1119 (List!51632 K!12890) List!51632)

(assert (=> b!4623479 (= res!1938483 (not (= (removePairForKey!1119 lt!1780558 key!4968) lt!1780575)))))

(declare-fun tail!8131 (List!51632) List!51632)

(assert (=> b!4623479 (= lt!1780575 (tail!8131 newBucket!224))))

(assert (=> b!4623479 (= lt!1780558 (tail!8131 oldBucket!40))))

(declare-fun b!4623480 () Bool)

(declare-fun res!1938484 () Bool)

(assert (=> b!4623480 (=> (not res!1938484) (not e!2884027))))

(assert (=> b!4623480 (= res!1938484 (= (removePairForKey!1119 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4623481 () Bool)

(declare-fun res!1938486 () Bool)

(declare-fun e!2884022 () Bool)

(assert (=> b!4623481 (=> res!1938486 e!2884022)))

(declare-fun lt!1780574 () tuple2!52430)

(declare-fun eq!811 (ListMap!4261 ListMap!4261) Bool)

(declare-fun +!1862 (ListMap!4261 tuple2!52430) ListMap!4261)

(assert (=> b!4623481 (= res!1938486 (not (eq!811 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509)) (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)) lt!1780574))))))

(declare-fun b!4623482 () Bool)

(assert (=> b!4623482 (= e!2884024 e!2884022)))

(declare-fun res!1938490 () Bool)

(assert (=> b!4623482 (=> res!1938490 e!2884022)))

(assert (=> b!4623482 (= res!1938490 (not (eq!811 lt!1780559 (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)) (h!57552 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!957 (List!51632 ListMap!4261) ListMap!4261)

(assert (=> b!4623482 (eq!811 (addToMapMapFromBucket!957 (Cons!51508 lt!1780574 lt!1780575) (ListMap!4262 Nil!51508)) (+!1862 (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780574))))

(declare-datatypes ((Unit!111641 0))(
  ( (Unit!111642) )
))
(declare-fun lt!1780556 () Unit!111641)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!62 (tuple2!52430 List!51632 ListMap!4261) Unit!111641)

(assert (=> b!4623482 (= lt!1780556 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!62 lt!1780574 lt!1780575 (ListMap!4262 Nil!51508)))))

(declare-fun head!9630 (List!51632) tuple2!52430)

(assert (=> b!4623482 (= lt!1780574 (head!9630 newBucket!224))))

(declare-fun lt!1780566 () tuple2!52430)

(assert (=> b!4623482 (eq!811 (addToMapMapFromBucket!957 (Cons!51508 lt!1780566 lt!1780558) (ListMap!4262 Nil!51508)) (+!1862 (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780566))))

(declare-fun lt!1780571 () Unit!111641)

(assert (=> b!4623482 (= lt!1780571 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!62 lt!1780566 lt!1780558 (ListMap!4262 Nil!51508)))))

(assert (=> b!4623482 (= lt!1780566 (head!9630 oldBucket!40))))

(declare-fun lt!1780573 () List!51633)

(assert (=> b!4623482 (contains!14535 (extractMap!1552 lt!1780573) key!4968)))

(declare-datatypes ((Hashable!5893 0))(
  ( (HashableExt!5892 (__x!31596 Int)) )
))
(declare-fun hashF!1389 () Hashable!5893)

(declare-fun lt!1780562 () Unit!111641)

(declare-datatypes ((ListLongMap!3547 0))(
  ( (ListLongMap!3548 (toList!4958 List!51633)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!314 (ListLongMap!3547 K!12890 Hashable!5893) Unit!111641)

(assert (=> b!4623482 (= lt!1780562 (lemmaListContainsThenExtractedMapContains!314 (ListLongMap!3548 lt!1780573) key!4968 hashF!1389))))

(assert (=> b!4623482 (= lt!1780573 (Cons!51509 (tuple2!52433 hash!414 (t!358658 oldBucket!40)) Nil!51509))))

(declare-fun res!1938488 () Bool)

(assert (=> start!463204 (=> (not res!1938488) (not e!2884027))))

(assert (=> start!463204 (= res!1938488 (noDuplicateKeys!1496 oldBucket!40))))

(assert (=> start!463204 e!2884027))

(assert (=> start!463204 true))

(declare-fun e!2884021 () Bool)

(assert (=> start!463204 e!2884021))

(assert (=> start!463204 tp_is_empty!29277))

(assert (=> start!463204 e!2884023))

(declare-fun b!4623475 () Bool)

(declare-fun res!1938494 () Bool)

(assert (=> b!4623475 (=> res!1938494 e!2884024)))

(assert (=> b!4623475 (= res!1938494 (not (= (removePairForKey!1119 (t!358658 oldBucket!40) key!4968) lt!1780575)))))

(declare-fun b!4623483 () Bool)

(declare-fun e!2884020 () Bool)

(declare-fun lt!1780570 () ListMap!4261)

(assert (=> b!4623483 (= e!2884020 (= lt!1780570 (ListMap!4262 Nil!51508)))))

(declare-fun b!4623484 () Bool)

(declare-fun e!2884028 () Bool)

(assert (=> b!4623484 (= e!2884028 e!2884026)))

(declare-fun res!1938489 () Bool)

(assert (=> b!4623484 (=> res!1938489 e!2884026)))

(declare-fun containsKey!2424 (List!51632 K!12890) Bool)

(assert (=> b!4623484 (= res!1938489 (not (containsKey!2424 (t!358658 oldBucket!40) key!4968)))))

(assert (=> b!4623484 (containsKey!2424 oldBucket!40 key!4968)))

(declare-fun lt!1780561 () Unit!111641)

(declare-fun lemmaGetPairDefinedThenContainsKey!42 (List!51632 K!12890 Hashable!5893) Unit!111641)

(assert (=> b!4623484 (= lt!1780561 (lemmaGetPairDefinedThenContainsKey!42 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1780568 () List!51632)

(declare-datatypes ((Option!11566 0))(
  ( (None!11565) (Some!11565 (v!45679 tuple2!52430)) )
))
(declare-fun isDefined!8831 (Option!11566) Bool)

(declare-fun getPair!288 (List!51632 K!12890) Option!11566)

(assert (=> b!4623484 (isDefined!8831 (getPair!288 lt!1780568 key!4968))))

(declare-fun lt!1780563 () tuple2!52432)

(declare-fun lt!1780569 () Unit!111641)

(declare-fun lambda!191506 () Int)

(declare-fun forallContained!3034 (List!51633 Int tuple2!52432) Unit!111641)

(assert (=> b!4623484 (= lt!1780569 (forallContained!3034 lt!1780564 lambda!191506 lt!1780563))))

(declare-fun contains!14536 (List!51633 tuple2!52432) Bool)

(assert (=> b!4623484 (contains!14536 lt!1780564 lt!1780563)))

(declare-fun lt!1780560 () (_ BitVec 64))

(assert (=> b!4623484 (= lt!1780563 (tuple2!52433 lt!1780560 lt!1780568))))

(declare-fun lt!1780557 () ListLongMap!3547)

(declare-fun lt!1780572 () Unit!111641)

(declare-fun lemmaGetValueImpliesTupleContained!93 (ListLongMap!3547 (_ BitVec 64) List!51632) Unit!111641)

(assert (=> b!4623484 (= lt!1780572 (lemmaGetValueImpliesTupleContained!93 lt!1780557 lt!1780560 lt!1780568))))

(declare-fun apply!12161 (ListLongMap!3547 (_ BitVec 64)) List!51632)

(assert (=> b!4623484 (= lt!1780568 (apply!12161 lt!1780557 lt!1780560))))

(declare-fun contains!14537 (ListLongMap!3547 (_ BitVec 64)) Bool)

(assert (=> b!4623484 (contains!14537 lt!1780557 lt!1780560)))

(declare-fun lt!1780565 () Unit!111641)

(declare-fun lemmaInGenMapThenLongMapContainsHash!494 (ListLongMap!3547 K!12890 Hashable!5893) Unit!111641)

(assert (=> b!4623484 (= lt!1780565 (lemmaInGenMapThenLongMapContainsHash!494 lt!1780557 key!4968 hashF!1389))))

(declare-fun lt!1780567 () Unit!111641)

(declare-fun lemmaInGenMapThenGetPairDefined!84 (ListLongMap!3547 K!12890 Hashable!5893) Unit!111641)

(assert (=> b!4623484 (= lt!1780567 (lemmaInGenMapThenGetPairDefined!84 lt!1780557 key!4968 hashF!1389))))

(assert (=> b!4623484 (= lt!1780557 (ListLongMap!3548 lt!1780564))))

(declare-fun b!4623485 () Bool)

(declare-fun e!2884019 () Bool)

(assert (=> b!4623485 (= e!2884025 e!2884019)))

(declare-fun res!1938485 () Bool)

(assert (=> b!4623485 (=> (not res!1938485) (not e!2884019))))

(assert (=> b!4623485 (= res!1938485 (= lt!1780560 hash!414))))

(declare-fun hash!3479 (Hashable!5893 K!12890) (_ BitVec 64))

(assert (=> b!4623485 (= lt!1780560 (hash!3479 hashF!1389 key!4968))))

(declare-fun b!4623486 () Bool)

(assert (=> b!4623486 (= e!2884019 (not e!2884028))))

(declare-fun res!1938493 () Bool)

(assert (=> b!4623486 (=> res!1938493 e!2884028)))

(get-info :version)

(assert (=> b!4623486 (= res!1938493 (or (and ((_ is Cons!51508) oldBucket!40) (= (_1!29509 (h!57552 oldBucket!40)) key!4968)) (not ((_ is Cons!51508) oldBucket!40)) (= (_1!29509 (h!57552 oldBucket!40)) key!4968)))))

(assert (=> b!4623486 e!2884020))

(declare-fun res!1938492 () Bool)

(assert (=> b!4623486 (=> (not res!1938492) (not e!2884020))))

(assert (=> b!4623486 (= res!1938492 (= lt!1780559 (addToMapMapFromBucket!957 oldBucket!40 lt!1780570)))))

(assert (=> b!4623486 (= lt!1780570 (extractMap!1552 Nil!51509))))

(assert (=> b!4623486 true))

(declare-fun b!4623487 () Bool)

(declare-fun res!1938495 () Bool)

(assert (=> b!4623487 (=> (not res!1938495) (not e!2884027))))

(declare-fun allKeysSameHash!1350 (List!51632 (_ BitVec 64) Hashable!5893) Bool)

(assert (=> b!4623487 (= res!1938495 (allKeysSameHash!1350 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342022 () Bool)

(declare-fun b!4623488 () Bool)

(assert (=> b!4623488 (= e!2884021 (and tp_is_empty!29277 tp_is_empty!29279 tp!1342022))))

(declare-fun b!4623489 () Bool)

(assert (=> b!4623489 (= e!2884022 (not (= newBucket!224 Nil!51508)))))

(declare-fun b!4623490 () Bool)

(declare-fun res!1938487 () Bool)

(assert (=> b!4623490 (=> (not res!1938487) (not e!2884019))))

(assert (=> b!4623490 (= res!1938487 (allKeysSameHash!1350 newBucket!224 hash!414 hashF!1389))))

(assert (= (and start!463204 res!1938488) b!4623478))

(assert (= (and b!4623478 res!1938496) b!4623480))

(assert (= (and b!4623480 res!1938484) b!4623487))

(assert (= (and b!4623487 res!1938495) b!4623477))

(assert (= (and b!4623477 res!1938491) b!4623485))

(assert (= (and b!4623485 res!1938485) b!4623490))

(assert (= (and b!4623490 res!1938487) b!4623486))

(assert (= (and b!4623486 res!1938492) b!4623483))

(assert (= (and b!4623486 (not res!1938493)) b!4623484))

(assert (= (and b!4623484 (not res!1938489)) b!4623479))

(assert (= (and b!4623479 (not res!1938483)) b!4623475))

(assert (= (and b!4623475 (not res!1938494)) b!4623482))

(assert (= (and b!4623482 (not res!1938490)) b!4623481))

(assert (= (and b!4623481 (not res!1938486)) b!4623489))

(assert (= (and start!463204 ((_ is Cons!51508) oldBucket!40)) b!4623488))

(assert (= (and start!463204 ((_ is Cons!51508) newBucket!224)) b!4623476))

(declare-fun m!5462745 () Bool)

(assert (=> b!4623485 m!5462745))

(declare-fun m!5462747 () Bool)

(assert (=> b!4623481 m!5462747))

(declare-fun m!5462749 () Bool)

(assert (=> b!4623481 m!5462749))

(assert (=> b!4623481 m!5462749))

(declare-fun m!5462751 () Bool)

(assert (=> b!4623481 m!5462751))

(assert (=> b!4623481 m!5462747))

(assert (=> b!4623481 m!5462751))

(declare-fun m!5462753 () Bool)

(assert (=> b!4623481 m!5462753))

(declare-fun m!5462755 () Bool)

(assert (=> b!4623487 m!5462755))

(declare-fun m!5462757 () Bool)

(assert (=> b!4623486 m!5462757))

(declare-fun m!5462759 () Bool)

(assert (=> b!4623486 m!5462759))

(declare-fun m!5462761 () Bool)

(assert (=> b!4623484 m!5462761))

(declare-fun m!5462763 () Bool)

(assert (=> b!4623484 m!5462763))

(declare-fun m!5462765 () Bool)

(assert (=> b!4623484 m!5462765))

(declare-fun m!5462767 () Bool)

(assert (=> b!4623484 m!5462767))

(declare-fun m!5462769 () Bool)

(assert (=> b!4623484 m!5462769))

(declare-fun m!5462771 () Bool)

(assert (=> b!4623484 m!5462771))

(declare-fun m!5462773 () Bool)

(assert (=> b!4623484 m!5462773))

(assert (=> b!4623484 m!5462767))

(declare-fun m!5462775 () Bool)

(assert (=> b!4623484 m!5462775))

(declare-fun m!5462777 () Bool)

(assert (=> b!4623484 m!5462777))

(declare-fun m!5462779 () Bool)

(assert (=> b!4623484 m!5462779))

(declare-fun m!5462781 () Bool)

(assert (=> b!4623484 m!5462781))

(declare-fun m!5462783 () Bool)

(assert (=> b!4623484 m!5462783))

(declare-fun m!5462785 () Bool)

(assert (=> b!4623477 m!5462785))

(declare-fun m!5462787 () Bool)

(assert (=> b!4623477 m!5462787))

(declare-fun m!5462789 () Bool)

(assert (=> b!4623482 m!5462789))

(declare-fun m!5462791 () Bool)

(assert (=> b!4623482 m!5462791))

(declare-fun m!5462793 () Bool)

(assert (=> b!4623482 m!5462793))

(declare-fun m!5462795 () Bool)

(assert (=> b!4623482 m!5462795))

(declare-fun m!5462797 () Bool)

(assert (=> b!4623482 m!5462797))

(declare-fun m!5462799 () Bool)

(assert (=> b!4623482 m!5462799))

(declare-fun m!5462801 () Bool)

(assert (=> b!4623482 m!5462801))

(declare-fun m!5462803 () Bool)

(assert (=> b!4623482 m!5462803))

(declare-fun m!5462805 () Bool)

(assert (=> b!4623482 m!5462805))

(assert (=> b!4623482 m!5462793))

(declare-fun m!5462807 () Bool)

(assert (=> b!4623482 m!5462807))

(assert (=> b!4623482 m!5462799))

(assert (=> b!4623482 m!5462797))

(declare-fun m!5462809 () Bool)

(assert (=> b!4623482 m!5462809))

(declare-fun m!5462811 () Bool)

(assert (=> b!4623482 m!5462811))

(declare-fun m!5462813 () Bool)

(assert (=> b!4623482 m!5462813))

(declare-fun m!5462815 () Bool)

(assert (=> b!4623482 m!5462815))

(assert (=> b!4623482 m!5462795))

(declare-fun m!5462817 () Bool)

(assert (=> b!4623482 m!5462817))

(assert (=> b!4623482 m!5462791))

(assert (=> b!4623482 m!5462815))

(declare-fun m!5462819 () Bool)

(assert (=> b!4623482 m!5462819))

(declare-fun m!5462821 () Bool)

(assert (=> b!4623482 m!5462821))

(assert (=> b!4623482 m!5462811))

(assert (=> b!4623482 m!5462817))

(assert (=> b!4623482 m!5462819))

(declare-fun m!5462823 () Bool)

(assert (=> b!4623482 m!5462823))

(declare-fun m!5462825 () Bool)

(assert (=> b!4623490 m!5462825))

(declare-fun m!5462827 () Bool)

(assert (=> b!4623475 m!5462827))

(declare-fun m!5462829 () Bool)

(assert (=> b!4623480 m!5462829))

(declare-fun m!5462831 () Bool)

(assert (=> start!463204 m!5462831))

(declare-fun m!5462833 () Bool)

(assert (=> b!4623479 m!5462833))

(declare-fun m!5462835 () Bool)

(assert (=> b!4623479 m!5462835))

(declare-fun m!5462837 () Bool)

(assert (=> b!4623479 m!5462837))

(declare-fun m!5462839 () Bool)

(assert (=> b!4623478 m!5462839))

(check-sat (not b!4623479) tp_is_empty!29279 (not b!4623480) (not b!4623481) (not b!4623478) (not b!4623477) tp_is_empty!29277 (not start!463204) (not b!4623486) (not b!4623476) (not b!4623488) (not b!4623475) (not b!4623482) (not b!4623485) (not b!4623490) (not b!4623484) (not b!4623487))
(check-sat)
(get-model)

(declare-fun b!4623500 () Bool)

(declare-fun e!2884034 () List!51632)

(declare-fun e!2884033 () List!51632)

(assert (=> b!4623500 (= e!2884034 e!2884033)))

(declare-fun c!791431 () Bool)

(assert (=> b!4623500 (= c!791431 ((_ is Cons!51508) (t!358658 oldBucket!40)))))

(declare-fun d!1456242 () Bool)

(declare-fun lt!1780578 () List!51632)

(assert (=> d!1456242 (not (containsKey!2424 lt!1780578 key!4968))))

(assert (=> d!1456242 (= lt!1780578 e!2884034)))

(declare-fun c!791432 () Bool)

(assert (=> d!1456242 (= c!791432 (and ((_ is Cons!51508) (t!358658 oldBucket!40)) (= (_1!29509 (h!57552 (t!358658 oldBucket!40))) key!4968)))))

(assert (=> d!1456242 (noDuplicateKeys!1496 (t!358658 oldBucket!40))))

(assert (=> d!1456242 (= (removePairForKey!1119 (t!358658 oldBucket!40) key!4968) lt!1780578)))

(declare-fun b!4623501 () Bool)

(assert (=> b!4623501 (= e!2884033 (Cons!51508 (h!57552 (t!358658 oldBucket!40)) (removePairForKey!1119 (t!358658 (t!358658 oldBucket!40)) key!4968)))))

(declare-fun b!4623499 () Bool)

(assert (=> b!4623499 (= e!2884034 (t!358658 (t!358658 oldBucket!40)))))

(declare-fun b!4623502 () Bool)

(assert (=> b!4623502 (= e!2884033 Nil!51508)))

(assert (= (and d!1456242 c!791432) b!4623499))

(assert (= (and d!1456242 (not c!791432)) b!4623500))

(assert (= (and b!4623500 c!791431) b!4623501))

(assert (= (and b!4623500 (not c!791431)) b!4623502))

(declare-fun m!5462841 () Bool)

(assert (=> d!1456242 m!5462841))

(declare-fun m!5462843 () Bool)

(assert (=> d!1456242 m!5462843))

(declare-fun m!5462845 () Bool)

(assert (=> b!4623501 m!5462845))

(assert (=> b!4623475 d!1456242))

(declare-fun b!4623591 () Bool)

(assert (=> b!4623591 true))

(declare-fun bs!1021927 () Bool)

(declare-fun b!4623592 () Bool)

(assert (= bs!1021927 (and b!4623592 b!4623591)))

(declare-fun lambda!191546 () Int)

(declare-fun lambda!191545 () Int)

(assert (=> bs!1021927 (= lambda!191546 lambda!191545)))

(assert (=> b!4623592 true))

(declare-fun lt!1780698 () ListMap!4261)

(declare-fun lambda!191547 () Int)

(assert (=> bs!1021927 (= (= lt!1780698 lt!1780570) (= lambda!191547 lambda!191545))))

(assert (=> b!4623592 (= (= lt!1780698 lt!1780570) (= lambda!191547 lambda!191546))))

(assert (=> b!4623592 true))

(declare-fun bs!1021928 () Bool)

(declare-fun d!1456244 () Bool)

(assert (= bs!1021928 (and d!1456244 b!4623591)))

(declare-fun lambda!191548 () Int)

(declare-fun lt!1780680 () ListMap!4261)

(assert (=> bs!1021928 (= (= lt!1780680 lt!1780570) (= lambda!191548 lambda!191545))))

(declare-fun bs!1021929 () Bool)

(assert (= bs!1021929 (and d!1456244 b!4623592)))

(assert (=> bs!1021929 (= (= lt!1780680 lt!1780570) (= lambda!191548 lambda!191546))))

(assert (=> bs!1021929 (= (= lt!1780680 lt!1780698) (= lambda!191548 lambda!191547))))

(assert (=> d!1456244 true))

(declare-fun b!4623588 () Bool)

(declare-fun res!1938547 () Bool)

(declare-fun e!2884093 () Bool)

(assert (=> b!4623588 (=> (not res!1938547) (not e!2884093))))

(declare-fun forall!10809 (List!51632 Int) Bool)

(assert (=> b!4623588 (= res!1938547 (forall!10809 (toList!4957 lt!1780570) lambda!191548))))

(declare-fun b!4623589 () Bool)

(declare-fun e!2884092 () Bool)

(assert (=> b!4623589 (= e!2884092 (forall!10809 (toList!4957 lt!1780570) lambda!191547))))

(declare-fun call!322458 () Bool)

(declare-fun lt!1780692 () ListMap!4261)

(declare-fun c!791450 () Bool)

(declare-fun bm!322453 () Bool)

(assert (=> bm!322453 (= call!322458 (forall!10809 (ite c!791450 (toList!4957 lt!1780570) (toList!4957 lt!1780692)) (ite c!791450 lambda!191545 lambda!191547)))))

(declare-fun call!322460 () Bool)

(declare-fun bm!322454 () Bool)

(assert (=> bm!322454 (= call!322460 (forall!10809 (ite c!791450 (toList!4957 lt!1780570) (toList!4957 lt!1780692)) (ite c!791450 lambda!191545 lambda!191547)))))

(declare-fun b!4623590 () Bool)

(declare-fun invariantList!1197 (List!51632) Bool)

(assert (=> b!4623590 (= e!2884093 (invariantList!1197 (toList!4957 lt!1780680)))))

(declare-fun e!2884091 () ListMap!4261)

(assert (=> b!4623591 (= e!2884091 lt!1780570)))

(declare-fun lt!1780682 () Unit!111641)

(declare-fun call!322459 () Unit!111641)

(assert (=> b!4623591 (= lt!1780682 call!322459)))

(assert (=> b!4623591 call!322458))

(declare-fun lt!1780686 () Unit!111641)

(assert (=> b!4623591 (= lt!1780686 lt!1780682)))

(assert (=> b!4623591 call!322460))

(declare-fun lt!1780688 () Unit!111641)

(declare-fun Unit!111643 () Unit!111641)

(assert (=> b!4623591 (= lt!1780688 Unit!111643)))

(declare-fun bm!322455 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!499 (ListMap!4261) Unit!111641)

(assert (=> bm!322455 (= call!322459 (lemmaContainsAllItsOwnKeys!499 lt!1780570))))

(assert (=> b!4623592 (= e!2884091 lt!1780698)))

(assert (=> b!4623592 (= lt!1780692 (+!1862 lt!1780570 (h!57552 oldBucket!40)))))

(assert (=> b!4623592 (= lt!1780698 (addToMapMapFromBucket!957 (t!358658 oldBucket!40) (+!1862 lt!1780570 (h!57552 oldBucket!40))))))

(declare-fun lt!1780691 () Unit!111641)

(assert (=> b!4623592 (= lt!1780691 call!322459)))

(assert (=> b!4623592 (forall!10809 (toList!4957 lt!1780570) lambda!191546)))

(declare-fun lt!1780683 () Unit!111641)

(assert (=> b!4623592 (= lt!1780683 lt!1780691)))

(assert (=> b!4623592 call!322458))

(declare-fun lt!1780693 () Unit!111641)

(declare-fun Unit!111644 () Unit!111641)

(assert (=> b!4623592 (= lt!1780693 Unit!111644)))

(assert (=> b!4623592 (forall!10809 (t!358658 oldBucket!40) lambda!191547)))

(declare-fun lt!1780679 () Unit!111641)

(declare-fun Unit!111645 () Unit!111641)

(assert (=> b!4623592 (= lt!1780679 Unit!111645)))

(declare-fun lt!1780696 () Unit!111641)

(declare-fun Unit!111646 () Unit!111641)

(assert (=> b!4623592 (= lt!1780696 Unit!111646)))

(declare-fun lt!1780687 () Unit!111641)

(declare-fun forallContained!3035 (List!51632 Int tuple2!52430) Unit!111641)

(assert (=> b!4623592 (= lt!1780687 (forallContained!3035 (toList!4957 lt!1780692) lambda!191547 (h!57552 oldBucket!40)))))

(assert (=> b!4623592 (contains!14535 lt!1780692 (_1!29509 (h!57552 oldBucket!40)))))

(declare-fun lt!1780690 () Unit!111641)

(declare-fun Unit!111647 () Unit!111641)

(assert (=> b!4623592 (= lt!1780690 Unit!111647)))

(assert (=> b!4623592 (contains!14535 lt!1780698 (_1!29509 (h!57552 oldBucket!40)))))

(declare-fun lt!1780678 () Unit!111641)

(declare-fun Unit!111648 () Unit!111641)

(assert (=> b!4623592 (= lt!1780678 Unit!111648)))

(assert (=> b!4623592 (forall!10809 oldBucket!40 lambda!191547)))

(declare-fun lt!1780681 () Unit!111641)

(declare-fun Unit!111649 () Unit!111641)

(assert (=> b!4623592 (= lt!1780681 Unit!111649)))

(assert (=> b!4623592 call!322460))

(declare-fun lt!1780685 () Unit!111641)

(declare-fun Unit!111650 () Unit!111641)

(assert (=> b!4623592 (= lt!1780685 Unit!111650)))

(declare-fun lt!1780684 () Unit!111641)

(declare-fun Unit!111651 () Unit!111641)

(assert (=> b!4623592 (= lt!1780684 Unit!111651)))

(declare-fun lt!1780697 () Unit!111641)

(declare-fun addForallContainsKeyThenBeforeAdding!498 (ListMap!4261 ListMap!4261 K!12890 V!13136) Unit!111641)

(assert (=> b!4623592 (= lt!1780697 (addForallContainsKeyThenBeforeAdding!498 lt!1780570 lt!1780698 (_1!29509 (h!57552 oldBucket!40)) (_2!29509 (h!57552 oldBucket!40))))))

(assert (=> b!4623592 (forall!10809 (toList!4957 lt!1780570) lambda!191547)))

(declare-fun lt!1780689 () Unit!111641)

(assert (=> b!4623592 (= lt!1780689 lt!1780697)))

(assert (=> b!4623592 (forall!10809 (toList!4957 lt!1780570) lambda!191547)))

(declare-fun lt!1780694 () Unit!111641)

(declare-fun Unit!111652 () Unit!111641)

(assert (=> b!4623592 (= lt!1780694 Unit!111652)))

(declare-fun res!1938549 () Bool)

(assert (=> b!4623592 (= res!1938549 (forall!10809 oldBucket!40 lambda!191547))))

(assert (=> b!4623592 (=> (not res!1938549) (not e!2884092))))

(assert (=> b!4623592 e!2884092))

(declare-fun lt!1780695 () Unit!111641)

(declare-fun Unit!111653 () Unit!111641)

(assert (=> b!4623592 (= lt!1780695 Unit!111653)))

(assert (=> d!1456244 e!2884093))

(declare-fun res!1938548 () Bool)

(assert (=> d!1456244 (=> (not res!1938548) (not e!2884093))))

(assert (=> d!1456244 (= res!1938548 (forall!10809 oldBucket!40 lambda!191548))))

(assert (=> d!1456244 (= lt!1780680 e!2884091)))

(assert (=> d!1456244 (= c!791450 ((_ is Nil!51508) oldBucket!40))))

(assert (=> d!1456244 (noDuplicateKeys!1496 oldBucket!40)))

(assert (=> d!1456244 (= (addToMapMapFromBucket!957 oldBucket!40 lt!1780570) lt!1780680)))

(assert (= (and d!1456244 c!791450) b!4623591))

(assert (= (and d!1456244 (not c!791450)) b!4623592))

(assert (= (and b!4623592 res!1938549) b!4623589))

(assert (= (or b!4623591 b!4623592) bm!322455))

(assert (= (or b!4623591 b!4623592) bm!322453))

(assert (= (or b!4623591 b!4623592) bm!322454))

(assert (= (and d!1456244 res!1938548) b!4623588))

(assert (= (and b!4623588 res!1938547) b!4623590))

(declare-fun m!5462933 () Bool)

(assert (=> b!4623588 m!5462933))

(declare-fun m!5462935 () Bool)

(assert (=> bm!322453 m!5462935))

(declare-fun m!5462937 () Bool)

(assert (=> d!1456244 m!5462937))

(assert (=> d!1456244 m!5462831))

(assert (=> bm!322454 m!5462935))

(declare-fun m!5462939 () Bool)

(assert (=> b!4623590 m!5462939))

(declare-fun m!5462941 () Bool)

(assert (=> b!4623592 m!5462941))

(declare-fun m!5462943 () Bool)

(assert (=> b!4623592 m!5462943))

(declare-fun m!5462945 () Bool)

(assert (=> b!4623592 m!5462945))

(declare-fun m!5462947 () Bool)

(assert (=> b!4623592 m!5462947))

(assert (=> b!4623592 m!5462943))

(assert (=> b!4623592 m!5462941))

(declare-fun m!5462949 () Bool)

(assert (=> b!4623592 m!5462949))

(declare-fun m!5462951 () Bool)

(assert (=> b!4623592 m!5462951))

(declare-fun m!5462953 () Bool)

(assert (=> b!4623592 m!5462953))

(declare-fun m!5462955 () Bool)

(assert (=> b!4623592 m!5462955))

(assert (=> b!4623592 m!5462953))

(declare-fun m!5462957 () Bool)

(assert (=> b!4623592 m!5462957))

(declare-fun m!5462959 () Bool)

(assert (=> b!4623592 m!5462959))

(assert (=> b!4623589 m!5462953))

(declare-fun m!5462961 () Bool)

(assert (=> bm!322455 m!5462961))

(assert (=> b!4623486 d!1456244))

(declare-fun bs!1021930 () Bool)

(declare-fun d!1456280 () Bool)

(assert (= bs!1021930 (and d!1456280 b!4623484)))

(declare-fun lambda!191551 () Int)

(assert (=> bs!1021930 (= lambda!191551 lambda!191506)))

(declare-fun lt!1780701 () ListMap!4261)

(assert (=> d!1456280 (invariantList!1197 (toList!4957 lt!1780701))))

(declare-fun e!2884096 () ListMap!4261)

(assert (=> d!1456280 (= lt!1780701 e!2884096)))

(declare-fun c!791453 () Bool)

(assert (=> d!1456280 (= c!791453 ((_ is Cons!51509) Nil!51509))))

(declare-fun forall!10811 (List!51633 Int) Bool)

(assert (=> d!1456280 (forall!10811 Nil!51509 lambda!191551)))

(assert (=> d!1456280 (= (extractMap!1552 Nil!51509) lt!1780701)))

(declare-fun b!4623599 () Bool)

(assert (=> b!4623599 (= e!2884096 (addToMapMapFromBucket!957 (_2!29510 (h!57553 Nil!51509)) (extractMap!1552 (t!358659 Nil!51509))))))

(declare-fun b!4623600 () Bool)

(assert (=> b!4623600 (= e!2884096 (ListMap!4262 Nil!51508))))

(assert (= (and d!1456280 c!791453) b!4623599))

(assert (= (and d!1456280 (not c!791453)) b!4623600))

(declare-fun m!5462963 () Bool)

(assert (=> d!1456280 m!5462963))

(declare-fun m!5462965 () Bool)

(assert (=> d!1456280 m!5462965))

(declare-fun m!5462967 () Bool)

(assert (=> b!4623599 m!5462967))

(assert (=> b!4623599 m!5462967))

(declare-fun m!5462969 () Bool)

(assert (=> b!4623599 m!5462969))

(assert (=> b!4623486 d!1456280))

(declare-fun b!4623617 () Bool)

(declare-fun e!2884108 () Option!11566)

(assert (=> b!4623617 (= e!2884108 (getPair!288 (t!358658 lt!1780568) key!4968))))

(declare-fun b!4623618 () Bool)

(declare-fun e!2884107 () Bool)

(declare-fun lt!1780704 () Option!11566)

(declare-fun contains!14539 (List!51632 tuple2!52430) Bool)

(declare-fun get!17059 (Option!11566) tuple2!52430)

(assert (=> b!4623618 (= e!2884107 (contains!14539 lt!1780568 (get!17059 lt!1780704)))))

(declare-fun d!1456282 () Bool)

(declare-fun e!2884109 () Bool)

(assert (=> d!1456282 e!2884109))

(declare-fun res!1938561 () Bool)

(assert (=> d!1456282 (=> res!1938561 e!2884109)))

(declare-fun e!2884111 () Bool)

(assert (=> d!1456282 (= res!1938561 e!2884111)))

(declare-fun res!1938558 () Bool)

(assert (=> d!1456282 (=> (not res!1938558) (not e!2884111))))

(declare-fun isEmpty!28924 (Option!11566) Bool)

(assert (=> d!1456282 (= res!1938558 (isEmpty!28924 lt!1780704))))

(declare-fun e!2884110 () Option!11566)

(assert (=> d!1456282 (= lt!1780704 e!2884110)))

(declare-fun c!791459 () Bool)

(assert (=> d!1456282 (= c!791459 (and ((_ is Cons!51508) lt!1780568) (= (_1!29509 (h!57552 lt!1780568)) key!4968)))))

(assert (=> d!1456282 (noDuplicateKeys!1496 lt!1780568)))

(assert (=> d!1456282 (= (getPair!288 lt!1780568 key!4968) lt!1780704)))

(declare-fun b!4623619 () Bool)

(assert (=> b!4623619 (= e!2884109 e!2884107)))

(declare-fun res!1938560 () Bool)

(assert (=> b!4623619 (=> (not res!1938560) (not e!2884107))))

(assert (=> b!4623619 (= res!1938560 (isDefined!8831 lt!1780704))))

(declare-fun b!4623620 () Bool)

(assert (=> b!4623620 (= e!2884110 e!2884108)))

(declare-fun c!791458 () Bool)

(assert (=> b!4623620 (= c!791458 ((_ is Cons!51508) lt!1780568))))

(declare-fun b!4623621 () Bool)

(assert (=> b!4623621 (= e!2884108 None!11565)))

(declare-fun b!4623622 () Bool)

(declare-fun res!1938559 () Bool)

(assert (=> b!4623622 (=> (not res!1938559) (not e!2884107))))

(assert (=> b!4623622 (= res!1938559 (= (_1!29509 (get!17059 lt!1780704)) key!4968))))

(declare-fun b!4623623 () Bool)

(assert (=> b!4623623 (= e!2884111 (not (containsKey!2424 lt!1780568 key!4968)))))

(declare-fun b!4623624 () Bool)

(assert (=> b!4623624 (= e!2884110 (Some!11565 (h!57552 lt!1780568)))))

(assert (= (and d!1456282 c!791459) b!4623624))

(assert (= (and d!1456282 (not c!791459)) b!4623620))

(assert (= (and b!4623620 c!791458) b!4623617))

(assert (= (and b!4623620 (not c!791458)) b!4623621))

(assert (= (and d!1456282 res!1938558) b!4623623))

(assert (= (and d!1456282 (not res!1938561)) b!4623619))

(assert (= (and b!4623619 res!1938560) b!4623622))

(assert (= (and b!4623622 res!1938559) b!4623618))

(declare-fun m!5462971 () Bool)

(assert (=> d!1456282 m!5462971))

(declare-fun m!5462973 () Bool)

(assert (=> d!1456282 m!5462973))

(declare-fun m!5462975 () Bool)

(assert (=> b!4623618 m!5462975))

(assert (=> b!4623618 m!5462975))

(declare-fun m!5462977 () Bool)

(assert (=> b!4623618 m!5462977))

(assert (=> b!4623622 m!5462975))

(declare-fun m!5462979 () Bool)

(assert (=> b!4623623 m!5462979))

(declare-fun m!5462981 () Bool)

(assert (=> b!4623619 m!5462981))

(declare-fun m!5462983 () Bool)

(assert (=> b!4623617 m!5462983))

(assert (=> b!4623484 d!1456282))

(declare-fun d!1456284 () Bool)

(assert (=> d!1456284 (containsKey!2424 oldBucket!40 key!4968)))

(declare-fun lt!1780707 () Unit!111641)

(declare-fun choose!31257 (List!51632 K!12890 Hashable!5893) Unit!111641)

(assert (=> d!1456284 (= lt!1780707 (choose!31257 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1456284 (noDuplicateKeys!1496 oldBucket!40)))

(assert (=> d!1456284 (= (lemmaGetPairDefinedThenContainsKey!42 oldBucket!40 key!4968 hashF!1389) lt!1780707)))

(declare-fun bs!1021931 () Bool)

(assert (= bs!1021931 d!1456284))

(assert (=> bs!1021931 m!5462765))

(declare-fun m!5462985 () Bool)

(assert (=> bs!1021931 m!5462985))

(assert (=> bs!1021931 m!5462831))

(assert (=> b!4623484 d!1456284))

(declare-fun d!1456286 () Bool)

(declare-fun res!1938566 () Bool)

(declare-fun e!2884116 () Bool)

(assert (=> d!1456286 (=> res!1938566 e!2884116)))

(assert (=> d!1456286 (= res!1938566 (and ((_ is Cons!51508) (t!358658 oldBucket!40)) (= (_1!29509 (h!57552 (t!358658 oldBucket!40))) key!4968)))))

(assert (=> d!1456286 (= (containsKey!2424 (t!358658 oldBucket!40) key!4968) e!2884116)))

(declare-fun b!4623629 () Bool)

(declare-fun e!2884117 () Bool)

(assert (=> b!4623629 (= e!2884116 e!2884117)))

(declare-fun res!1938567 () Bool)

(assert (=> b!4623629 (=> (not res!1938567) (not e!2884117))))

(assert (=> b!4623629 (= res!1938567 ((_ is Cons!51508) (t!358658 oldBucket!40)))))

(declare-fun b!4623630 () Bool)

(assert (=> b!4623630 (= e!2884117 (containsKey!2424 (t!358658 (t!358658 oldBucket!40)) key!4968))))

(assert (= (and d!1456286 (not res!1938566)) b!4623629))

(assert (= (and b!4623629 res!1938567) b!4623630))

(declare-fun m!5462987 () Bool)

(assert (=> b!4623630 m!5462987))

(assert (=> b!4623484 d!1456286))

(declare-fun bs!1021932 () Bool)

(declare-fun d!1456288 () Bool)

(assert (= bs!1021932 (and d!1456288 b!4623484)))

(declare-fun lambda!191554 () Int)

(assert (=> bs!1021932 (= lambda!191554 lambda!191506)))

(declare-fun bs!1021933 () Bool)

(assert (= bs!1021933 (and d!1456288 d!1456280)))

(assert (=> bs!1021933 (= lambda!191554 lambda!191551)))

(assert (=> d!1456288 (contains!14537 lt!1780557 (hash!3479 hashF!1389 key!4968))))

(declare-fun lt!1780710 () Unit!111641)

(declare-fun choose!31259 (ListLongMap!3547 K!12890 Hashable!5893) Unit!111641)

(assert (=> d!1456288 (= lt!1780710 (choose!31259 lt!1780557 key!4968 hashF!1389))))

(assert (=> d!1456288 (forall!10811 (toList!4958 lt!1780557) lambda!191554)))

(assert (=> d!1456288 (= (lemmaInGenMapThenLongMapContainsHash!494 lt!1780557 key!4968 hashF!1389) lt!1780710)))

(declare-fun bs!1021934 () Bool)

(assert (= bs!1021934 d!1456288))

(assert (=> bs!1021934 m!5462745))

(assert (=> bs!1021934 m!5462745))

(declare-fun m!5462989 () Bool)

(assert (=> bs!1021934 m!5462989))

(declare-fun m!5462991 () Bool)

(assert (=> bs!1021934 m!5462991))

(declare-fun m!5462993 () Bool)

(assert (=> bs!1021934 m!5462993))

(assert (=> b!4623484 d!1456288))

(declare-fun d!1456290 () Bool)

(declare-fun dynLambda!21492 (Int tuple2!52432) Bool)

(assert (=> d!1456290 (dynLambda!21492 lambda!191506 lt!1780563)))

(declare-fun lt!1780713 () Unit!111641)

(declare-fun choose!31260 (List!51633 Int tuple2!52432) Unit!111641)

(assert (=> d!1456290 (= lt!1780713 (choose!31260 lt!1780564 lambda!191506 lt!1780563))))

(declare-fun e!2884120 () Bool)

(assert (=> d!1456290 e!2884120))

(declare-fun res!1938570 () Bool)

(assert (=> d!1456290 (=> (not res!1938570) (not e!2884120))))

(assert (=> d!1456290 (= res!1938570 (forall!10811 lt!1780564 lambda!191506))))

(assert (=> d!1456290 (= (forallContained!3034 lt!1780564 lambda!191506 lt!1780563) lt!1780713)))

(declare-fun b!4623633 () Bool)

(assert (=> b!4623633 (= e!2884120 (contains!14536 lt!1780564 lt!1780563))))

(assert (= (and d!1456290 res!1938570) b!4623633))

(declare-fun b_lambda!170695 () Bool)

(assert (=> (not b_lambda!170695) (not d!1456290)))

(declare-fun m!5462995 () Bool)

(assert (=> d!1456290 m!5462995))

(declare-fun m!5462997 () Bool)

(assert (=> d!1456290 m!5462997))

(declare-fun m!5462999 () Bool)

(assert (=> d!1456290 m!5462999))

(assert (=> b!4623633 m!5462783))

(assert (=> b!4623484 d!1456290))

(declare-fun d!1456292 () Bool)

(declare-fun res!1938571 () Bool)

(declare-fun e!2884121 () Bool)

(assert (=> d!1456292 (=> res!1938571 e!2884121)))

(assert (=> d!1456292 (= res!1938571 (and ((_ is Cons!51508) oldBucket!40) (= (_1!29509 (h!57552 oldBucket!40)) key!4968)))))

(assert (=> d!1456292 (= (containsKey!2424 oldBucket!40 key!4968) e!2884121)))

(declare-fun b!4623634 () Bool)

(declare-fun e!2884122 () Bool)

(assert (=> b!4623634 (= e!2884121 e!2884122)))

(declare-fun res!1938572 () Bool)

(assert (=> b!4623634 (=> (not res!1938572) (not e!2884122))))

(assert (=> b!4623634 (= res!1938572 ((_ is Cons!51508) oldBucket!40))))

(declare-fun b!4623635 () Bool)

(assert (=> b!4623635 (= e!2884122 (containsKey!2424 (t!358658 oldBucket!40) key!4968))))

(assert (= (and d!1456292 (not res!1938571)) b!4623634))

(assert (= (and b!4623634 res!1938572) b!4623635))

(assert (=> b!4623635 m!5462771))

(assert (=> b!4623484 d!1456292))

(declare-fun d!1456294 () Bool)

(assert (=> d!1456294 (contains!14536 (toList!4958 lt!1780557) (tuple2!52433 lt!1780560 lt!1780568))))

(declare-fun lt!1780716 () Unit!111641)

(declare-fun choose!31261 (ListLongMap!3547 (_ BitVec 64) List!51632) Unit!111641)

(assert (=> d!1456294 (= lt!1780716 (choose!31261 lt!1780557 lt!1780560 lt!1780568))))

(assert (=> d!1456294 (contains!14537 lt!1780557 lt!1780560)))

(assert (=> d!1456294 (= (lemmaGetValueImpliesTupleContained!93 lt!1780557 lt!1780560 lt!1780568) lt!1780716)))

(declare-fun bs!1021935 () Bool)

(assert (= bs!1021935 d!1456294))

(declare-fun m!5463001 () Bool)

(assert (=> bs!1021935 m!5463001))

(declare-fun m!5463003 () Bool)

(assert (=> bs!1021935 m!5463003))

(assert (=> bs!1021935 m!5462773))

(assert (=> b!4623484 d!1456294))

(declare-fun d!1456296 () Bool)

(assert (=> d!1456296 (= (isDefined!8831 (getPair!288 lt!1780568 key!4968)) (not (isEmpty!28924 (getPair!288 lt!1780568 key!4968))))))

(declare-fun bs!1021936 () Bool)

(assert (= bs!1021936 d!1456296))

(assert (=> bs!1021936 m!5462767))

(declare-fun m!5463005 () Bool)

(assert (=> bs!1021936 m!5463005))

(assert (=> b!4623484 d!1456296))

(declare-fun d!1456298 () Bool)

(declare-datatypes ((Option!11568 0))(
  ( (None!11567) (Some!11567 (v!45685 List!51632)) )
))
(declare-fun get!17061 (Option!11568) List!51632)

(declare-fun getValueByKey!1438 (List!51633 (_ BitVec 64)) Option!11568)

(assert (=> d!1456298 (= (apply!12161 lt!1780557 lt!1780560) (get!17061 (getValueByKey!1438 (toList!4958 lt!1780557) lt!1780560)))))

(declare-fun bs!1021937 () Bool)

(assert (= bs!1021937 d!1456298))

(declare-fun m!5463007 () Bool)

(assert (=> bs!1021937 m!5463007))

(assert (=> bs!1021937 m!5463007))

(declare-fun m!5463009 () Bool)

(assert (=> bs!1021937 m!5463009))

(assert (=> b!4623484 d!1456298))

(declare-fun d!1456300 () Bool)

(declare-fun lt!1780719 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8780 (List!51633) (InoxSet tuple2!52432))

(assert (=> d!1456300 (= lt!1780719 (select (content!8780 lt!1780564) lt!1780563))))

(declare-fun e!2884127 () Bool)

(assert (=> d!1456300 (= lt!1780719 e!2884127)))

(declare-fun res!1938577 () Bool)

(assert (=> d!1456300 (=> (not res!1938577) (not e!2884127))))

(assert (=> d!1456300 (= res!1938577 ((_ is Cons!51509) lt!1780564))))

(assert (=> d!1456300 (= (contains!14536 lt!1780564 lt!1780563) lt!1780719)))

(declare-fun b!4623641 () Bool)

(declare-fun e!2884128 () Bool)

(assert (=> b!4623641 (= e!2884127 e!2884128)))

(declare-fun res!1938578 () Bool)

(assert (=> b!4623641 (=> res!1938578 e!2884128)))

(assert (=> b!4623641 (= res!1938578 (= (h!57553 lt!1780564) lt!1780563))))

(declare-fun b!4623642 () Bool)

(assert (=> b!4623642 (= e!2884128 (contains!14536 (t!358659 lt!1780564) lt!1780563))))

(assert (= (and d!1456300 res!1938577) b!4623641))

(assert (= (and b!4623641 (not res!1938578)) b!4623642))

(declare-fun m!5463011 () Bool)

(assert (=> d!1456300 m!5463011))

(declare-fun m!5463013 () Bool)

(assert (=> d!1456300 m!5463013))

(declare-fun m!5463015 () Bool)

(assert (=> b!4623642 m!5463015))

(assert (=> b!4623484 d!1456300))

(declare-fun d!1456302 () Bool)

(declare-fun e!2884134 () Bool)

(assert (=> d!1456302 e!2884134))

(declare-fun res!1938581 () Bool)

(assert (=> d!1456302 (=> res!1938581 e!2884134)))

(declare-fun lt!1780731 () Bool)

(assert (=> d!1456302 (= res!1938581 (not lt!1780731))))

(declare-fun lt!1780728 () Bool)

(assert (=> d!1456302 (= lt!1780731 lt!1780728)))

(declare-fun lt!1780729 () Unit!111641)

(declare-fun e!2884133 () Unit!111641)

(assert (=> d!1456302 (= lt!1780729 e!2884133)))

(declare-fun c!791462 () Bool)

(assert (=> d!1456302 (= c!791462 lt!1780728)))

(declare-fun containsKey!2426 (List!51633 (_ BitVec 64)) Bool)

(assert (=> d!1456302 (= lt!1780728 (containsKey!2426 (toList!4958 lt!1780557) lt!1780560))))

(assert (=> d!1456302 (= (contains!14537 lt!1780557 lt!1780560) lt!1780731)))

(declare-fun b!4623649 () Bool)

(declare-fun lt!1780730 () Unit!111641)

(assert (=> b!4623649 (= e!2884133 lt!1780730)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1340 (List!51633 (_ BitVec 64)) Unit!111641)

(assert (=> b!4623649 (= lt!1780730 (lemmaContainsKeyImpliesGetValueByKeyDefined!1340 (toList!4958 lt!1780557) lt!1780560))))

(declare-fun isDefined!8833 (Option!11568) Bool)

(assert (=> b!4623649 (isDefined!8833 (getValueByKey!1438 (toList!4958 lt!1780557) lt!1780560))))

(declare-fun b!4623650 () Bool)

(declare-fun Unit!111655 () Unit!111641)

(assert (=> b!4623650 (= e!2884133 Unit!111655)))

(declare-fun b!4623651 () Bool)

(assert (=> b!4623651 (= e!2884134 (isDefined!8833 (getValueByKey!1438 (toList!4958 lt!1780557) lt!1780560)))))

(assert (= (and d!1456302 c!791462) b!4623649))

(assert (= (and d!1456302 (not c!791462)) b!4623650))

(assert (= (and d!1456302 (not res!1938581)) b!4623651))

(declare-fun m!5463017 () Bool)

(assert (=> d!1456302 m!5463017))

(declare-fun m!5463019 () Bool)

(assert (=> b!4623649 m!5463019))

(assert (=> b!4623649 m!5463007))

(assert (=> b!4623649 m!5463007))

(declare-fun m!5463021 () Bool)

(assert (=> b!4623649 m!5463021))

(assert (=> b!4623651 m!5463007))

(assert (=> b!4623651 m!5463007))

(assert (=> b!4623651 m!5463021))

(assert (=> b!4623484 d!1456302))

(declare-fun bs!1021941 () Bool)

(declare-fun d!1456304 () Bool)

(assert (= bs!1021941 (and d!1456304 b!4623484)))

(declare-fun lambda!191593 () Int)

(assert (=> bs!1021941 (= lambda!191593 lambda!191506)))

(declare-fun bs!1021942 () Bool)

(assert (= bs!1021942 (and d!1456304 d!1456280)))

(assert (=> bs!1021942 (= lambda!191593 lambda!191551)))

(declare-fun bs!1021943 () Bool)

(assert (= bs!1021943 (and d!1456304 d!1456288)))

(assert (=> bs!1021943 (= lambda!191593 lambda!191554)))

(declare-fun e!2884148 () Bool)

(declare-fun lt!1780816 () (_ BitVec 64))

(declare-fun b!4623680 () Bool)

(declare-fun lt!1780815 () List!51632)

(assert (=> b!4623680 (= e!2884148 (= (getValueByKey!1438 (toList!4958 lt!1780557) lt!1780816) (Some!11567 lt!1780815)))))

(declare-fun b!4623678 () Bool)

(declare-fun res!1938602 () Bool)

(declare-fun e!2884149 () Bool)

(assert (=> b!4623678 (=> (not res!1938602) (not e!2884149))))

(assert (=> b!4623678 (= res!1938602 (contains!14535 (extractMap!1552 (toList!4958 lt!1780557)) key!4968))))

(declare-fun b!4623679 () Bool)

(assert (=> b!4623679 (= e!2884149 (isDefined!8831 (getPair!288 (apply!12161 lt!1780557 (hash!3479 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1780813 () Unit!111641)

(assert (=> b!4623679 (= lt!1780813 (forallContained!3034 (toList!4958 lt!1780557) lambda!191593 (tuple2!52433 (hash!3479 hashF!1389 key!4968) (apply!12161 lt!1780557 (hash!3479 hashF!1389 key!4968)))))))

(declare-fun lt!1780817 () Unit!111641)

(declare-fun lt!1780818 () Unit!111641)

(assert (=> b!4623679 (= lt!1780817 lt!1780818)))

(assert (=> b!4623679 (contains!14536 (toList!4958 lt!1780557) (tuple2!52433 lt!1780816 lt!1780815))))

(assert (=> b!4623679 (= lt!1780818 (lemmaGetValueImpliesTupleContained!93 lt!1780557 lt!1780816 lt!1780815))))

(assert (=> b!4623679 e!2884148))

(declare-fun res!1938600 () Bool)

(assert (=> b!4623679 (=> (not res!1938600) (not e!2884148))))

(assert (=> b!4623679 (= res!1938600 (contains!14537 lt!1780557 lt!1780816))))

(assert (=> b!4623679 (= lt!1780815 (apply!12161 lt!1780557 (hash!3479 hashF!1389 key!4968)))))

(assert (=> b!4623679 (= lt!1780816 (hash!3479 hashF!1389 key!4968))))

(declare-fun lt!1780811 () Unit!111641)

(declare-fun lt!1780814 () Unit!111641)

(assert (=> b!4623679 (= lt!1780811 lt!1780814)))

(assert (=> b!4623679 (contains!14537 lt!1780557 (hash!3479 hashF!1389 key!4968))))

(assert (=> b!4623679 (= lt!1780814 (lemmaInGenMapThenLongMapContainsHash!494 lt!1780557 key!4968 hashF!1389))))

(assert (=> d!1456304 e!2884149))

(declare-fun res!1938601 () Bool)

(assert (=> d!1456304 (=> (not res!1938601) (not e!2884149))))

(assert (=> d!1456304 (= res!1938601 (forall!10811 (toList!4958 lt!1780557) lambda!191593))))

(declare-fun lt!1780812 () Unit!111641)

(declare-fun choose!31263 (ListLongMap!3547 K!12890 Hashable!5893) Unit!111641)

(assert (=> d!1456304 (= lt!1780812 (choose!31263 lt!1780557 key!4968 hashF!1389))))

(assert (=> d!1456304 (forall!10811 (toList!4958 lt!1780557) lambda!191593)))

(assert (=> d!1456304 (= (lemmaInGenMapThenGetPairDefined!84 lt!1780557 key!4968 hashF!1389) lt!1780812)))

(declare-fun b!4623677 () Bool)

(declare-fun res!1938599 () Bool)

(assert (=> b!4623677 (=> (not res!1938599) (not e!2884149))))

(declare-fun allKeysSameHashInMap!1524 (ListLongMap!3547 Hashable!5893) Bool)

(assert (=> b!4623677 (= res!1938599 (allKeysSameHashInMap!1524 lt!1780557 hashF!1389))))

(assert (= (and d!1456304 res!1938601) b!4623677))

(assert (= (and b!4623677 res!1938599) b!4623678))

(assert (= (and b!4623678 res!1938602) b!4623679))

(assert (= (and b!4623679 res!1938600) b!4623680))

(declare-fun m!5463055 () Bool)

(assert (=> d!1456304 m!5463055))

(declare-fun m!5463057 () Bool)

(assert (=> d!1456304 m!5463057))

(assert (=> d!1456304 m!5463055))

(declare-fun m!5463059 () Bool)

(assert (=> b!4623678 m!5463059))

(assert (=> b!4623678 m!5463059))

(declare-fun m!5463061 () Bool)

(assert (=> b!4623678 m!5463061))

(declare-fun m!5463063 () Bool)

(assert (=> b!4623677 m!5463063))

(declare-fun m!5463065 () Bool)

(assert (=> b!4623680 m!5463065))

(declare-fun m!5463067 () Bool)

(assert (=> b!4623679 m!5463067))

(declare-fun m!5463069 () Bool)

(assert (=> b!4623679 m!5463069))

(declare-fun m!5463071 () Bool)

(assert (=> b!4623679 m!5463071))

(assert (=> b!4623679 m!5462745))

(assert (=> b!4623679 m!5463067))

(assert (=> b!4623679 m!5463069))

(declare-fun m!5463073 () Bool)

(assert (=> b!4623679 m!5463073))

(declare-fun m!5463075 () Bool)

(assert (=> b!4623679 m!5463075))

(declare-fun m!5463077 () Bool)

(assert (=> b!4623679 m!5463077))

(assert (=> b!4623679 m!5462745))

(assert (=> b!4623679 m!5462989))

(assert (=> b!4623679 m!5462763))

(assert (=> b!4623679 m!5462745))

(declare-fun m!5463079 () Bool)

(assert (=> b!4623679 m!5463079))

(assert (=> b!4623484 d!1456304))

(declare-fun d!1456308 () Bool)

(declare-fun hash!3481 (Hashable!5893 K!12890) (_ BitVec 64))

(assert (=> d!1456308 (= (hash!3479 hashF!1389 key!4968) (hash!3481 hashF!1389 key!4968))))

(declare-fun bs!1021944 () Bool)

(assert (= bs!1021944 d!1456308))

(declare-fun m!5463081 () Bool)

(assert (=> bs!1021944 m!5463081))

(assert (=> b!4623485 d!1456308))

(declare-fun d!1456310 () Bool)

(declare-fun content!8781 (List!51632) (InoxSet tuple2!52430))

(assert (=> d!1456310 (= (eq!811 lt!1780559 (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)) (h!57552 oldBucket!40))) (= (content!8781 (toList!4957 lt!1780559)) (content!8781 (toList!4957 (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)) (h!57552 oldBucket!40))))))))

(declare-fun bs!1021945 () Bool)

(assert (= bs!1021945 d!1456310))

(declare-fun m!5463083 () Bool)

(assert (=> bs!1021945 m!5463083))

(declare-fun m!5463085 () Bool)

(assert (=> bs!1021945 m!5463085))

(assert (=> b!4623482 d!1456310))

(declare-fun d!1456312 () Bool)

(assert (=> d!1456312 (= (eq!811 (addToMapMapFromBucket!957 (Cons!51508 lt!1780574 lt!1780575) (ListMap!4262 Nil!51508)) (+!1862 (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780574)) (= (content!8781 (toList!4957 (addToMapMapFromBucket!957 (Cons!51508 lt!1780574 lt!1780575) (ListMap!4262 Nil!51508)))) (content!8781 (toList!4957 (+!1862 (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780574)))))))

(declare-fun bs!1021946 () Bool)

(assert (= bs!1021946 d!1456312))

(declare-fun m!5463087 () Bool)

(assert (=> bs!1021946 m!5463087))

(declare-fun m!5463089 () Bool)

(assert (=> bs!1021946 m!5463089))

(assert (=> b!4623482 d!1456312))

(declare-fun d!1456314 () Bool)

(declare-fun e!2884155 () Bool)

(assert (=> d!1456314 e!2884155))

(declare-fun res!1938608 () Bool)

(assert (=> d!1456314 (=> (not res!1938608) (not e!2884155))))

(declare-fun lt!1780832 () ListMap!4261)

(assert (=> d!1456314 (= res!1938608 (contains!14535 lt!1780832 (_1!29509 (h!57552 oldBucket!40))))))

(declare-fun lt!1780830 () List!51632)

(assert (=> d!1456314 (= lt!1780832 (ListMap!4262 lt!1780830))))

(declare-fun lt!1780833 () Unit!111641)

(declare-fun lt!1780831 () Unit!111641)

(assert (=> d!1456314 (= lt!1780833 lt!1780831)))

(declare-datatypes ((Option!11569 0))(
  ( (None!11568) (Some!11568 (v!45686 V!13136)) )
))
(declare-fun getValueByKey!1439 (List!51632 K!12890) Option!11569)

(assert (=> d!1456314 (= (getValueByKey!1439 lt!1780830 (_1!29509 (h!57552 oldBucket!40))) (Some!11568 (_2!29509 (h!57552 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!841 (List!51632 K!12890 V!13136) Unit!111641)

(assert (=> d!1456314 (= lt!1780831 (lemmaContainsTupThenGetReturnValue!841 lt!1780830 (_1!29509 (h!57552 oldBucket!40)) (_2!29509 (h!57552 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!349 (List!51632 K!12890 V!13136) List!51632)

(assert (=> d!1456314 (= lt!1780830 (insertNoDuplicatedKeys!349 (toList!4957 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509))) (_1!29509 (h!57552 oldBucket!40)) (_2!29509 (h!57552 oldBucket!40))))))

(assert (=> d!1456314 (= (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)) (h!57552 oldBucket!40)) lt!1780832)))

(declare-fun b!4623691 () Bool)

(declare-fun res!1938607 () Bool)

(assert (=> b!4623691 (=> (not res!1938607) (not e!2884155))))

(assert (=> b!4623691 (= res!1938607 (= (getValueByKey!1439 (toList!4957 lt!1780832) (_1!29509 (h!57552 oldBucket!40))) (Some!11568 (_2!29509 (h!57552 oldBucket!40)))))))

(declare-fun b!4623692 () Bool)

(assert (=> b!4623692 (= e!2884155 (contains!14539 (toList!4957 lt!1780832) (h!57552 oldBucket!40)))))

(assert (= (and d!1456314 res!1938608) b!4623691))

(assert (= (and b!4623691 res!1938607) b!4623692))

(declare-fun m!5463099 () Bool)

(assert (=> d!1456314 m!5463099))

(declare-fun m!5463101 () Bool)

(assert (=> d!1456314 m!5463101))

(declare-fun m!5463103 () Bool)

(assert (=> d!1456314 m!5463103))

(declare-fun m!5463105 () Bool)

(assert (=> d!1456314 m!5463105))

(declare-fun m!5463107 () Bool)

(assert (=> b!4623691 m!5463107))

(declare-fun m!5463109 () Bool)

(assert (=> b!4623692 m!5463109))

(assert (=> b!4623482 d!1456314))

(declare-fun bs!1021954 () Bool)

(declare-fun b!4623698 () Bool)

(assert (= bs!1021954 (and b!4623698 b!4623591)))

(declare-fun lambda!191598 () Int)

(assert (=> bs!1021954 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191598 lambda!191545))))

(declare-fun bs!1021956 () Bool)

(assert (= bs!1021956 (and b!4623698 b!4623592)))

(assert (=> bs!1021956 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191598 lambda!191546))))

(assert (=> bs!1021956 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191598 lambda!191547))))

(declare-fun bs!1021957 () Bool)

(assert (= bs!1021957 (and b!4623698 d!1456244)))

(assert (=> bs!1021957 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191598 lambda!191548))))

(assert (=> b!4623698 true))

(declare-fun bs!1021958 () Bool)

(declare-fun b!4623699 () Bool)

(assert (= bs!1021958 (and b!4623699 b!4623592)))

(declare-fun lambda!191599 () Int)

(assert (=> bs!1021958 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191599 lambda!191546))))

(declare-fun bs!1021959 () Bool)

(assert (= bs!1021959 (and b!4623699 b!4623698)))

(assert (=> bs!1021959 (= lambda!191599 lambda!191598)))

(declare-fun bs!1021960 () Bool)

(assert (= bs!1021960 (and b!4623699 b!4623591)))

(assert (=> bs!1021960 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191599 lambda!191545))))

(declare-fun bs!1021961 () Bool)

(assert (= bs!1021961 (and b!4623699 d!1456244)))

(assert (=> bs!1021961 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191599 lambda!191548))))

(assert (=> bs!1021958 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191599 lambda!191547))))

(assert (=> b!4623699 true))

(declare-fun lambda!191600 () Int)

(declare-fun lt!1780855 () ListMap!4261)

(assert (=> bs!1021958 (= (= lt!1780855 lt!1780570) (= lambda!191600 lambda!191546))))

(assert (=> bs!1021959 (= (= lt!1780855 (ListMap!4262 Nil!51508)) (= lambda!191600 lambda!191598))))

(assert (=> bs!1021960 (= (= lt!1780855 lt!1780570) (= lambda!191600 lambda!191545))))

(assert (=> bs!1021961 (= (= lt!1780855 lt!1780680) (= lambda!191600 lambda!191548))))

(assert (=> b!4623699 (= (= lt!1780855 (ListMap!4262 Nil!51508)) (= lambda!191600 lambda!191599))))

(assert (=> bs!1021958 (= (= lt!1780855 lt!1780698) (= lambda!191600 lambda!191547))))

(assert (=> b!4623699 true))

(declare-fun bs!1021962 () Bool)

(declare-fun d!1456318 () Bool)

(assert (= bs!1021962 (and d!1456318 b!4623592)))

(declare-fun lambda!191601 () Int)

(declare-fun lt!1780836 () ListMap!4261)

(assert (=> bs!1021962 (= (= lt!1780836 lt!1780570) (= lambda!191601 lambda!191546))))

(declare-fun bs!1021963 () Bool)

(assert (= bs!1021963 (and d!1456318 b!4623698)))

(assert (=> bs!1021963 (= (= lt!1780836 (ListMap!4262 Nil!51508)) (= lambda!191601 lambda!191598))))

(declare-fun bs!1021964 () Bool)

(assert (= bs!1021964 (and d!1456318 b!4623591)))

(assert (=> bs!1021964 (= (= lt!1780836 lt!1780570) (= lambda!191601 lambda!191545))))

(declare-fun bs!1021965 () Bool)

(assert (= bs!1021965 (and d!1456318 b!4623699)))

(assert (=> bs!1021965 (= (= lt!1780836 lt!1780855) (= lambda!191601 lambda!191600))))

(declare-fun bs!1021966 () Bool)

(assert (= bs!1021966 (and d!1456318 d!1456244)))

(assert (=> bs!1021966 (= (= lt!1780836 lt!1780680) (= lambda!191601 lambda!191548))))

(assert (=> bs!1021965 (= (= lt!1780836 (ListMap!4262 Nil!51508)) (= lambda!191601 lambda!191599))))

(assert (=> bs!1021962 (= (= lt!1780836 lt!1780698) (= lambda!191601 lambda!191547))))

(assert (=> d!1456318 true))

(declare-fun b!4623695 () Bool)

(declare-fun res!1938609 () Bool)

(declare-fun e!2884158 () Bool)

(assert (=> b!4623695 (=> (not res!1938609) (not e!2884158))))

(assert (=> b!4623695 (= res!1938609 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191601))))

(declare-fun b!4623696 () Bool)

(declare-fun e!2884157 () Bool)

(assert (=> b!4623696 (= e!2884157 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191600))))

(declare-fun c!791469 () Bool)

(declare-fun call!322470 () Bool)

(declare-fun bm!322465 () Bool)

(declare-fun lt!1780848 () ListMap!4261)

(assert (=> bm!322465 (= call!322470 (forall!10809 (ite c!791469 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780848)) (ite c!791469 lambda!191598 lambda!191600)))))

(declare-fun call!322472 () Bool)

(declare-fun bm!322466 () Bool)

(assert (=> bm!322466 (= call!322472 (forall!10809 (ite c!791469 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780848)) (ite c!791469 lambda!191598 lambda!191600)))))

(declare-fun b!4623697 () Bool)

(assert (=> b!4623697 (= e!2884158 (invariantList!1197 (toList!4957 lt!1780836)))))

(declare-fun e!2884156 () ListMap!4261)

(assert (=> b!4623698 (= e!2884156 (ListMap!4262 Nil!51508))))

(declare-fun lt!1780838 () Unit!111641)

(declare-fun call!322471 () Unit!111641)

(assert (=> b!4623698 (= lt!1780838 call!322471)))

(assert (=> b!4623698 call!322470))

(declare-fun lt!1780842 () Unit!111641)

(assert (=> b!4623698 (= lt!1780842 lt!1780838)))

(assert (=> b!4623698 call!322472))

(declare-fun lt!1780844 () Unit!111641)

(declare-fun Unit!111667 () Unit!111641)

(assert (=> b!4623698 (= lt!1780844 Unit!111667)))

(declare-fun bm!322467 () Bool)

(assert (=> bm!322467 (= call!322471 (lemmaContainsAllItsOwnKeys!499 (ListMap!4262 Nil!51508)))))

(assert (=> b!4623699 (= e!2884156 lt!1780855)))

(assert (=> b!4623699 (= lt!1780848 (+!1862 (ListMap!4262 Nil!51508) (h!57552 lt!1780575)))))

(assert (=> b!4623699 (= lt!1780855 (addToMapMapFromBucket!957 (t!358658 lt!1780575) (+!1862 (ListMap!4262 Nil!51508) (h!57552 lt!1780575))))))

(declare-fun lt!1780847 () Unit!111641)

(assert (=> b!4623699 (= lt!1780847 call!322471)))

(assert (=> b!4623699 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191599)))

(declare-fun lt!1780839 () Unit!111641)

(assert (=> b!4623699 (= lt!1780839 lt!1780847)))

(assert (=> b!4623699 call!322470))

(declare-fun lt!1780849 () Unit!111641)

(declare-fun Unit!111668 () Unit!111641)

(assert (=> b!4623699 (= lt!1780849 Unit!111668)))

(assert (=> b!4623699 (forall!10809 (t!358658 lt!1780575) lambda!191600)))

(declare-fun lt!1780835 () Unit!111641)

(declare-fun Unit!111669 () Unit!111641)

(assert (=> b!4623699 (= lt!1780835 Unit!111669)))

(declare-fun lt!1780853 () Unit!111641)

(declare-fun Unit!111670 () Unit!111641)

(assert (=> b!4623699 (= lt!1780853 Unit!111670)))

(declare-fun lt!1780843 () Unit!111641)

(assert (=> b!4623699 (= lt!1780843 (forallContained!3035 (toList!4957 lt!1780848) lambda!191600 (h!57552 lt!1780575)))))

(assert (=> b!4623699 (contains!14535 lt!1780848 (_1!29509 (h!57552 lt!1780575)))))

(declare-fun lt!1780846 () Unit!111641)

(declare-fun Unit!111671 () Unit!111641)

(assert (=> b!4623699 (= lt!1780846 Unit!111671)))

(assert (=> b!4623699 (contains!14535 lt!1780855 (_1!29509 (h!57552 lt!1780575)))))

(declare-fun lt!1780834 () Unit!111641)

(declare-fun Unit!111672 () Unit!111641)

(assert (=> b!4623699 (= lt!1780834 Unit!111672)))

(assert (=> b!4623699 (forall!10809 lt!1780575 lambda!191600)))

(declare-fun lt!1780837 () Unit!111641)

(declare-fun Unit!111673 () Unit!111641)

(assert (=> b!4623699 (= lt!1780837 Unit!111673)))

(assert (=> b!4623699 call!322472))

(declare-fun lt!1780841 () Unit!111641)

(declare-fun Unit!111674 () Unit!111641)

(assert (=> b!4623699 (= lt!1780841 Unit!111674)))

(declare-fun lt!1780840 () Unit!111641)

(declare-fun Unit!111675 () Unit!111641)

(assert (=> b!4623699 (= lt!1780840 Unit!111675)))

(declare-fun lt!1780854 () Unit!111641)

(assert (=> b!4623699 (= lt!1780854 (addForallContainsKeyThenBeforeAdding!498 (ListMap!4262 Nil!51508) lt!1780855 (_1!29509 (h!57552 lt!1780575)) (_2!29509 (h!57552 lt!1780575))))))

(assert (=> b!4623699 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191600)))

(declare-fun lt!1780845 () Unit!111641)

(assert (=> b!4623699 (= lt!1780845 lt!1780854)))

(assert (=> b!4623699 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191600)))

(declare-fun lt!1780850 () Unit!111641)

(declare-fun Unit!111676 () Unit!111641)

(assert (=> b!4623699 (= lt!1780850 Unit!111676)))

(declare-fun res!1938611 () Bool)

(assert (=> b!4623699 (= res!1938611 (forall!10809 lt!1780575 lambda!191600))))

(assert (=> b!4623699 (=> (not res!1938611) (not e!2884157))))

(assert (=> b!4623699 e!2884157))

(declare-fun lt!1780851 () Unit!111641)

(declare-fun Unit!111677 () Unit!111641)

(assert (=> b!4623699 (= lt!1780851 Unit!111677)))

(assert (=> d!1456318 e!2884158))

(declare-fun res!1938610 () Bool)

(assert (=> d!1456318 (=> (not res!1938610) (not e!2884158))))

(assert (=> d!1456318 (= res!1938610 (forall!10809 lt!1780575 lambda!191601))))

(assert (=> d!1456318 (= lt!1780836 e!2884156)))

(assert (=> d!1456318 (= c!791469 ((_ is Nil!51508) lt!1780575))))

(assert (=> d!1456318 (noDuplicateKeys!1496 lt!1780575)))

(assert (=> d!1456318 (= (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780836)))

(assert (= (and d!1456318 c!791469) b!4623698))

(assert (= (and d!1456318 (not c!791469)) b!4623699))

(assert (= (and b!4623699 res!1938611) b!4623696))

(assert (= (or b!4623698 b!4623699) bm!322467))

(assert (= (or b!4623698 b!4623699) bm!322465))

(assert (= (or b!4623698 b!4623699) bm!322466))

(assert (= (and d!1456318 res!1938610) b!4623695))

(assert (= (and b!4623695 res!1938609) b!4623697))

(declare-fun m!5463123 () Bool)

(assert (=> b!4623695 m!5463123))

(declare-fun m!5463125 () Bool)

(assert (=> bm!322465 m!5463125))

(declare-fun m!5463127 () Bool)

(assert (=> d!1456318 m!5463127))

(declare-fun m!5463129 () Bool)

(assert (=> d!1456318 m!5463129))

(assert (=> bm!322466 m!5463125))

(declare-fun m!5463131 () Bool)

(assert (=> b!4623697 m!5463131))

(declare-fun m!5463133 () Bool)

(assert (=> b!4623699 m!5463133))

(declare-fun m!5463135 () Bool)

(assert (=> b!4623699 m!5463135))

(declare-fun m!5463137 () Bool)

(assert (=> b!4623699 m!5463137))

(declare-fun m!5463139 () Bool)

(assert (=> b!4623699 m!5463139))

(assert (=> b!4623699 m!5463135))

(assert (=> b!4623699 m!5463133))

(declare-fun m!5463141 () Bool)

(assert (=> b!4623699 m!5463141))

(declare-fun m!5463143 () Bool)

(assert (=> b!4623699 m!5463143))

(declare-fun m!5463145 () Bool)

(assert (=> b!4623699 m!5463145))

(declare-fun m!5463147 () Bool)

(assert (=> b!4623699 m!5463147))

(assert (=> b!4623699 m!5463145))

(declare-fun m!5463149 () Bool)

(assert (=> b!4623699 m!5463149))

(declare-fun m!5463151 () Bool)

(assert (=> b!4623699 m!5463151))

(assert (=> b!4623696 m!5463145))

(declare-fun m!5463153 () Bool)

(assert (=> bm!322467 m!5463153))

(assert (=> b!4623482 d!1456318))

(declare-fun bs!1021967 () Bool)

(declare-fun b!4623703 () Bool)

(assert (= bs!1021967 (and b!4623703 b!4623592)))

(declare-fun lambda!191602 () Int)

(assert (=> bs!1021967 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191602 lambda!191546))))

(declare-fun bs!1021968 () Bool)

(assert (= bs!1021968 (and b!4623703 b!4623698)))

(assert (=> bs!1021968 (= lambda!191602 lambda!191598)))

(declare-fun bs!1021969 () Bool)

(assert (= bs!1021969 (and b!4623703 b!4623699)))

(assert (=> bs!1021969 (= (= (ListMap!4262 Nil!51508) lt!1780855) (= lambda!191602 lambda!191600))))

(declare-fun bs!1021970 () Bool)

(assert (= bs!1021970 (and b!4623703 d!1456244)))

(assert (=> bs!1021970 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191602 lambda!191548))))

(assert (=> bs!1021969 (= lambda!191602 lambda!191599)))

(assert (=> bs!1021967 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191602 lambda!191547))))

(declare-fun bs!1021971 () Bool)

(assert (= bs!1021971 (and b!4623703 b!4623591)))

(assert (=> bs!1021971 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191602 lambda!191545))))

(declare-fun bs!1021972 () Bool)

(assert (= bs!1021972 (and b!4623703 d!1456318)))

(assert (=> bs!1021972 (= (= (ListMap!4262 Nil!51508) lt!1780836) (= lambda!191602 lambda!191601))))

(assert (=> b!4623703 true))

(declare-fun bs!1021973 () Bool)

(declare-fun b!4623704 () Bool)

(assert (= bs!1021973 (and b!4623704 b!4623592)))

(declare-fun lambda!191603 () Int)

(assert (=> bs!1021973 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191603 lambda!191546))))

(declare-fun bs!1021974 () Bool)

(assert (= bs!1021974 (and b!4623704 b!4623703)))

(assert (=> bs!1021974 (= lambda!191603 lambda!191602)))

(declare-fun bs!1021975 () Bool)

(assert (= bs!1021975 (and b!4623704 b!4623698)))

(assert (=> bs!1021975 (= lambda!191603 lambda!191598)))

(declare-fun bs!1021976 () Bool)

(assert (= bs!1021976 (and b!4623704 b!4623699)))

(assert (=> bs!1021976 (= (= (ListMap!4262 Nil!51508) lt!1780855) (= lambda!191603 lambda!191600))))

(declare-fun bs!1021977 () Bool)

(assert (= bs!1021977 (and b!4623704 d!1456244)))

(assert (=> bs!1021977 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191603 lambda!191548))))

(assert (=> bs!1021976 (= lambda!191603 lambda!191599)))

(assert (=> bs!1021973 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191603 lambda!191547))))

(declare-fun bs!1021978 () Bool)

(assert (= bs!1021978 (and b!4623704 b!4623591)))

(assert (=> bs!1021978 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191603 lambda!191545))))

(declare-fun bs!1021979 () Bool)

(assert (= bs!1021979 (and b!4623704 d!1456318)))

(assert (=> bs!1021979 (= (= (ListMap!4262 Nil!51508) lt!1780836) (= lambda!191603 lambda!191601))))

(assert (=> b!4623704 true))

(declare-fun lt!1780876 () ListMap!4261)

(declare-fun lambda!191604 () Int)

(assert (=> bs!1021973 (= (= lt!1780876 lt!1780570) (= lambda!191604 lambda!191546))))

(assert (=> bs!1021974 (= (= lt!1780876 (ListMap!4262 Nil!51508)) (= lambda!191604 lambda!191602))))

(assert (=> bs!1021975 (= (= lt!1780876 (ListMap!4262 Nil!51508)) (= lambda!191604 lambda!191598))))

(assert (=> bs!1021976 (= (= lt!1780876 lt!1780855) (= lambda!191604 lambda!191600))))

(assert (=> bs!1021977 (= (= lt!1780876 lt!1780680) (= lambda!191604 lambda!191548))))

(assert (=> b!4623704 (= (= lt!1780876 (ListMap!4262 Nil!51508)) (= lambda!191604 lambda!191603))))

(assert (=> bs!1021976 (= (= lt!1780876 (ListMap!4262 Nil!51508)) (= lambda!191604 lambda!191599))))

(assert (=> bs!1021973 (= (= lt!1780876 lt!1780698) (= lambda!191604 lambda!191547))))

(assert (=> bs!1021978 (= (= lt!1780876 lt!1780570) (= lambda!191604 lambda!191545))))

(assert (=> bs!1021979 (= (= lt!1780876 lt!1780836) (= lambda!191604 lambda!191601))))

(assert (=> b!4623704 true))

(declare-fun bs!1021980 () Bool)

(declare-fun d!1456324 () Bool)

(assert (= bs!1021980 (and d!1456324 b!4623704)))

(declare-fun lt!1780858 () ListMap!4261)

(declare-fun lambda!191605 () Int)

(assert (=> bs!1021980 (= (= lt!1780858 lt!1780876) (= lambda!191605 lambda!191604))))

(declare-fun bs!1021981 () Bool)

(assert (= bs!1021981 (and d!1456324 b!4623592)))

(assert (=> bs!1021981 (= (= lt!1780858 lt!1780570) (= lambda!191605 lambda!191546))))

(declare-fun bs!1021982 () Bool)

(assert (= bs!1021982 (and d!1456324 b!4623703)))

(assert (=> bs!1021982 (= (= lt!1780858 (ListMap!4262 Nil!51508)) (= lambda!191605 lambda!191602))))

(declare-fun bs!1021983 () Bool)

(assert (= bs!1021983 (and d!1456324 b!4623698)))

(assert (=> bs!1021983 (= (= lt!1780858 (ListMap!4262 Nil!51508)) (= lambda!191605 lambda!191598))))

(declare-fun bs!1021984 () Bool)

(assert (= bs!1021984 (and d!1456324 b!4623699)))

(assert (=> bs!1021984 (= (= lt!1780858 lt!1780855) (= lambda!191605 lambda!191600))))

(declare-fun bs!1021985 () Bool)

(assert (= bs!1021985 (and d!1456324 d!1456244)))

(assert (=> bs!1021985 (= (= lt!1780858 lt!1780680) (= lambda!191605 lambda!191548))))

(assert (=> bs!1021980 (= (= lt!1780858 (ListMap!4262 Nil!51508)) (= lambda!191605 lambda!191603))))

(assert (=> bs!1021984 (= (= lt!1780858 (ListMap!4262 Nil!51508)) (= lambda!191605 lambda!191599))))

(assert (=> bs!1021981 (= (= lt!1780858 lt!1780698) (= lambda!191605 lambda!191547))))

(declare-fun bs!1021986 () Bool)

(assert (= bs!1021986 (and d!1456324 b!4623591)))

(assert (=> bs!1021986 (= (= lt!1780858 lt!1780570) (= lambda!191605 lambda!191545))))

(declare-fun bs!1021987 () Bool)

(assert (= bs!1021987 (and d!1456324 d!1456318)))

(assert (=> bs!1021987 (= (= lt!1780858 lt!1780836) (= lambda!191605 lambda!191601))))

(assert (=> d!1456324 true))

(declare-fun b!4623700 () Bool)

(declare-fun res!1938612 () Bool)

(declare-fun e!2884162 () Bool)

(assert (=> b!4623700 (=> (not res!1938612) (not e!2884162))))

(assert (=> b!4623700 (= res!1938612 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191605))))

(declare-fun b!4623701 () Bool)

(declare-fun e!2884161 () Bool)

(assert (=> b!4623701 (= e!2884161 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191604))))

(declare-fun call!322473 () Bool)

(declare-fun bm!322468 () Bool)

(declare-fun c!791471 () Bool)

(declare-fun lt!1780870 () ListMap!4261)

(assert (=> bm!322468 (= call!322473 (forall!10809 (ite c!791471 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780870)) (ite c!791471 lambda!191602 lambda!191604)))))

(declare-fun call!322475 () Bool)

(declare-fun bm!322469 () Bool)

(assert (=> bm!322469 (= call!322475 (forall!10809 (ite c!791471 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780870)) (ite c!791471 lambda!191602 lambda!191604)))))

(declare-fun b!4623702 () Bool)

(assert (=> b!4623702 (= e!2884162 (invariantList!1197 (toList!4957 lt!1780858)))))

(declare-fun e!2884160 () ListMap!4261)

(assert (=> b!4623703 (= e!2884160 (ListMap!4262 Nil!51508))))

(declare-fun lt!1780860 () Unit!111641)

(declare-fun call!322474 () Unit!111641)

(assert (=> b!4623703 (= lt!1780860 call!322474)))

(assert (=> b!4623703 call!322473))

(declare-fun lt!1780864 () Unit!111641)

(assert (=> b!4623703 (= lt!1780864 lt!1780860)))

(assert (=> b!4623703 call!322475))

(declare-fun lt!1780866 () Unit!111641)

(declare-fun Unit!111678 () Unit!111641)

(assert (=> b!4623703 (= lt!1780866 Unit!111678)))

(declare-fun bm!322470 () Bool)

(assert (=> bm!322470 (= call!322474 (lemmaContainsAllItsOwnKeys!499 (ListMap!4262 Nil!51508)))))

(assert (=> b!4623704 (= e!2884160 lt!1780876)))

(assert (=> b!4623704 (= lt!1780870 (+!1862 (ListMap!4262 Nil!51508) (h!57552 lt!1780558)))))

(assert (=> b!4623704 (= lt!1780876 (addToMapMapFromBucket!957 (t!358658 lt!1780558) (+!1862 (ListMap!4262 Nil!51508) (h!57552 lt!1780558))))))

(declare-fun lt!1780869 () Unit!111641)

(assert (=> b!4623704 (= lt!1780869 call!322474)))

(assert (=> b!4623704 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191603)))

(declare-fun lt!1780861 () Unit!111641)

(assert (=> b!4623704 (= lt!1780861 lt!1780869)))

(assert (=> b!4623704 call!322473))

(declare-fun lt!1780871 () Unit!111641)

(declare-fun Unit!111679 () Unit!111641)

(assert (=> b!4623704 (= lt!1780871 Unit!111679)))

(assert (=> b!4623704 (forall!10809 (t!358658 lt!1780558) lambda!191604)))

(declare-fun lt!1780857 () Unit!111641)

(declare-fun Unit!111680 () Unit!111641)

(assert (=> b!4623704 (= lt!1780857 Unit!111680)))

(declare-fun lt!1780874 () Unit!111641)

(declare-fun Unit!111681 () Unit!111641)

(assert (=> b!4623704 (= lt!1780874 Unit!111681)))

(declare-fun lt!1780865 () Unit!111641)

(assert (=> b!4623704 (= lt!1780865 (forallContained!3035 (toList!4957 lt!1780870) lambda!191604 (h!57552 lt!1780558)))))

(assert (=> b!4623704 (contains!14535 lt!1780870 (_1!29509 (h!57552 lt!1780558)))))

(declare-fun lt!1780868 () Unit!111641)

(declare-fun Unit!111682 () Unit!111641)

(assert (=> b!4623704 (= lt!1780868 Unit!111682)))

(assert (=> b!4623704 (contains!14535 lt!1780876 (_1!29509 (h!57552 lt!1780558)))))

(declare-fun lt!1780856 () Unit!111641)

(declare-fun Unit!111683 () Unit!111641)

(assert (=> b!4623704 (= lt!1780856 Unit!111683)))

(assert (=> b!4623704 (forall!10809 lt!1780558 lambda!191604)))

(declare-fun lt!1780859 () Unit!111641)

(declare-fun Unit!111684 () Unit!111641)

(assert (=> b!4623704 (= lt!1780859 Unit!111684)))

(assert (=> b!4623704 call!322475))

(declare-fun lt!1780863 () Unit!111641)

(declare-fun Unit!111685 () Unit!111641)

(assert (=> b!4623704 (= lt!1780863 Unit!111685)))

(declare-fun lt!1780862 () Unit!111641)

(declare-fun Unit!111686 () Unit!111641)

(assert (=> b!4623704 (= lt!1780862 Unit!111686)))

(declare-fun lt!1780875 () Unit!111641)

(assert (=> b!4623704 (= lt!1780875 (addForallContainsKeyThenBeforeAdding!498 (ListMap!4262 Nil!51508) lt!1780876 (_1!29509 (h!57552 lt!1780558)) (_2!29509 (h!57552 lt!1780558))))))

(assert (=> b!4623704 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191604)))

(declare-fun lt!1780867 () Unit!111641)

(assert (=> b!4623704 (= lt!1780867 lt!1780875)))

(assert (=> b!4623704 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191604)))

(declare-fun lt!1780872 () Unit!111641)

(declare-fun Unit!111687 () Unit!111641)

(assert (=> b!4623704 (= lt!1780872 Unit!111687)))

(declare-fun res!1938614 () Bool)

(assert (=> b!4623704 (= res!1938614 (forall!10809 lt!1780558 lambda!191604))))

(assert (=> b!4623704 (=> (not res!1938614) (not e!2884161))))

(assert (=> b!4623704 e!2884161))

(declare-fun lt!1780873 () Unit!111641)

(declare-fun Unit!111688 () Unit!111641)

(assert (=> b!4623704 (= lt!1780873 Unit!111688)))

(assert (=> d!1456324 e!2884162))

(declare-fun res!1938613 () Bool)

(assert (=> d!1456324 (=> (not res!1938613) (not e!2884162))))

(assert (=> d!1456324 (= res!1938613 (forall!10809 lt!1780558 lambda!191605))))

(assert (=> d!1456324 (= lt!1780858 e!2884160)))

(assert (=> d!1456324 (= c!791471 ((_ is Nil!51508) lt!1780558))))

(assert (=> d!1456324 (noDuplicateKeys!1496 lt!1780558)))

(assert (=> d!1456324 (= (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780858)))

(assert (= (and d!1456324 c!791471) b!4623703))

(assert (= (and d!1456324 (not c!791471)) b!4623704))

(assert (= (and b!4623704 res!1938614) b!4623701))

(assert (= (or b!4623703 b!4623704) bm!322470))

(assert (= (or b!4623703 b!4623704) bm!322468))

(assert (= (or b!4623703 b!4623704) bm!322469))

(assert (= (and d!1456324 res!1938613) b!4623700))

(assert (= (and b!4623700 res!1938612) b!4623702))

(declare-fun m!5463175 () Bool)

(assert (=> b!4623700 m!5463175))

(declare-fun m!5463177 () Bool)

(assert (=> bm!322468 m!5463177))

(declare-fun m!5463179 () Bool)

(assert (=> d!1456324 m!5463179))

(declare-fun m!5463181 () Bool)

(assert (=> d!1456324 m!5463181))

(assert (=> bm!322469 m!5463177))

(declare-fun m!5463183 () Bool)

(assert (=> b!4623702 m!5463183))

(declare-fun m!5463185 () Bool)

(assert (=> b!4623704 m!5463185))

(declare-fun m!5463187 () Bool)

(assert (=> b!4623704 m!5463187))

(declare-fun m!5463189 () Bool)

(assert (=> b!4623704 m!5463189))

(declare-fun m!5463191 () Bool)

(assert (=> b!4623704 m!5463191))

(assert (=> b!4623704 m!5463187))

(assert (=> b!4623704 m!5463185))

(declare-fun m!5463193 () Bool)

(assert (=> b!4623704 m!5463193))

(declare-fun m!5463195 () Bool)

(assert (=> b!4623704 m!5463195))

(declare-fun m!5463197 () Bool)

(assert (=> b!4623704 m!5463197))

(declare-fun m!5463199 () Bool)

(assert (=> b!4623704 m!5463199))

(assert (=> b!4623704 m!5463197))

(declare-fun m!5463201 () Bool)

(assert (=> b!4623704 m!5463201))

(declare-fun m!5463203 () Bool)

(assert (=> b!4623704 m!5463203))

(assert (=> b!4623701 m!5463197))

(assert (=> bm!322470 m!5463153))

(assert (=> b!4623482 d!1456324))

(declare-fun bs!1021993 () Bool)

(declare-fun b!4623720 () Bool)

(assert (= bs!1021993 (and b!4623720 b!4623704)))

(declare-fun lambda!191607 () Int)

(assert (=> bs!1021993 (= (= (ListMap!4262 Nil!51508) lt!1780876) (= lambda!191607 lambda!191604))))

(declare-fun bs!1021994 () Bool)

(assert (= bs!1021994 (and b!4623720 b!4623592)))

(assert (=> bs!1021994 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191607 lambda!191546))))

(declare-fun bs!1021995 () Bool)

(assert (= bs!1021995 (and b!4623720 b!4623703)))

(assert (=> bs!1021995 (= lambda!191607 lambda!191602)))

(declare-fun bs!1021996 () Bool)

(assert (= bs!1021996 (and b!4623720 b!4623699)))

(assert (=> bs!1021996 (= (= (ListMap!4262 Nil!51508) lt!1780855) (= lambda!191607 lambda!191600))))

(declare-fun bs!1021997 () Bool)

(assert (= bs!1021997 (and b!4623720 d!1456244)))

(assert (=> bs!1021997 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191607 lambda!191548))))

(assert (=> bs!1021993 (= lambda!191607 lambda!191603)))

(assert (=> bs!1021996 (= lambda!191607 lambda!191599)))

(assert (=> bs!1021994 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191607 lambda!191547))))

(declare-fun bs!1021998 () Bool)

(assert (= bs!1021998 (and b!4623720 b!4623698)))

(assert (=> bs!1021998 (= lambda!191607 lambda!191598)))

(declare-fun bs!1021999 () Bool)

(assert (= bs!1021999 (and b!4623720 d!1456324)))

(assert (=> bs!1021999 (= (= (ListMap!4262 Nil!51508) lt!1780858) (= lambda!191607 lambda!191605))))

(declare-fun bs!1022000 () Bool)

(assert (= bs!1022000 (and b!4623720 b!4623591)))

(assert (=> bs!1022000 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191607 lambda!191545))))

(declare-fun bs!1022001 () Bool)

(assert (= bs!1022001 (and b!4623720 d!1456318)))

(assert (=> bs!1022001 (= (= (ListMap!4262 Nil!51508) lt!1780836) (= lambda!191607 lambda!191601))))

(assert (=> b!4623720 true))

(declare-fun bs!1022002 () Bool)

(declare-fun b!4623721 () Bool)

(assert (= bs!1022002 (and b!4623721 b!4623704)))

(declare-fun lambda!191608 () Int)

(assert (=> bs!1022002 (= (= (ListMap!4262 Nil!51508) lt!1780876) (= lambda!191608 lambda!191604))))

(declare-fun bs!1022003 () Bool)

(assert (= bs!1022003 (and b!4623721 b!4623592)))

(assert (=> bs!1022003 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191608 lambda!191546))))

(declare-fun bs!1022004 () Bool)

(assert (= bs!1022004 (and b!4623721 b!4623703)))

(assert (=> bs!1022004 (= lambda!191608 lambda!191602)))

(declare-fun bs!1022005 () Bool)

(assert (= bs!1022005 (and b!4623721 b!4623699)))

(assert (=> bs!1022005 (= (= (ListMap!4262 Nil!51508) lt!1780855) (= lambda!191608 lambda!191600))))

(declare-fun bs!1022006 () Bool)

(assert (= bs!1022006 (and b!4623721 b!4623720)))

(assert (=> bs!1022006 (= lambda!191608 lambda!191607)))

(declare-fun bs!1022007 () Bool)

(assert (= bs!1022007 (and b!4623721 d!1456244)))

(assert (=> bs!1022007 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191608 lambda!191548))))

(assert (=> bs!1022002 (= lambda!191608 lambda!191603)))

(assert (=> bs!1022005 (= lambda!191608 lambda!191599)))

(assert (=> bs!1022003 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191608 lambda!191547))))

(declare-fun bs!1022008 () Bool)

(assert (= bs!1022008 (and b!4623721 b!4623698)))

(assert (=> bs!1022008 (= lambda!191608 lambda!191598)))

(declare-fun bs!1022009 () Bool)

(assert (= bs!1022009 (and b!4623721 d!1456324)))

(assert (=> bs!1022009 (= (= (ListMap!4262 Nil!51508) lt!1780858) (= lambda!191608 lambda!191605))))

(declare-fun bs!1022010 () Bool)

(assert (= bs!1022010 (and b!4623721 b!4623591)))

(assert (=> bs!1022010 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191608 lambda!191545))))

(declare-fun bs!1022011 () Bool)

(assert (= bs!1022011 (and b!4623721 d!1456318)))

(assert (=> bs!1022011 (= (= (ListMap!4262 Nil!51508) lt!1780836) (= lambda!191608 lambda!191601))))

(assert (=> b!4623721 true))

(declare-fun lt!1780910 () ListMap!4261)

(declare-fun lambda!191611 () Int)

(assert (=> bs!1022003 (= (= lt!1780910 lt!1780570) (= lambda!191611 lambda!191546))))

(assert (=> bs!1022004 (= (= lt!1780910 (ListMap!4262 Nil!51508)) (= lambda!191611 lambda!191602))))

(assert (=> bs!1022005 (= (= lt!1780910 lt!1780855) (= lambda!191611 lambda!191600))))

(assert (=> bs!1022006 (= (= lt!1780910 (ListMap!4262 Nil!51508)) (= lambda!191611 lambda!191607))))

(assert (=> bs!1022007 (= (= lt!1780910 lt!1780680) (= lambda!191611 lambda!191548))))

(assert (=> bs!1022002 (= (= lt!1780910 (ListMap!4262 Nil!51508)) (= lambda!191611 lambda!191603))))

(assert (=> bs!1022005 (= (= lt!1780910 (ListMap!4262 Nil!51508)) (= lambda!191611 lambda!191599))))

(assert (=> bs!1022003 (= (= lt!1780910 lt!1780698) (= lambda!191611 lambda!191547))))

(assert (=> bs!1022002 (= (= lt!1780910 lt!1780876) (= lambda!191611 lambda!191604))))

(assert (=> b!4623721 (= (= lt!1780910 (ListMap!4262 Nil!51508)) (= lambda!191611 lambda!191608))))

(assert (=> bs!1022008 (= (= lt!1780910 (ListMap!4262 Nil!51508)) (= lambda!191611 lambda!191598))))

(assert (=> bs!1022009 (= (= lt!1780910 lt!1780858) (= lambda!191611 lambda!191605))))

(assert (=> bs!1022010 (= (= lt!1780910 lt!1780570) (= lambda!191611 lambda!191545))))

(assert (=> bs!1022011 (= (= lt!1780910 lt!1780836) (= lambda!191611 lambda!191601))))

(assert (=> b!4623721 true))

(declare-fun bs!1022017 () Bool)

(declare-fun d!1456330 () Bool)

(assert (= bs!1022017 (and d!1456330 b!4623592)))

(declare-fun lambda!191614 () Int)

(declare-fun lt!1780892 () ListMap!4261)

(assert (=> bs!1022017 (= (= lt!1780892 lt!1780570) (= lambda!191614 lambda!191546))))

(declare-fun bs!1022019 () Bool)

(assert (= bs!1022019 (and d!1456330 b!4623703)))

(assert (=> bs!1022019 (= (= lt!1780892 (ListMap!4262 Nil!51508)) (= lambda!191614 lambda!191602))))

(declare-fun bs!1022021 () Bool)

(assert (= bs!1022021 (and d!1456330 b!4623721)))

(assert (=> bs!1022021 (= (= lt!1780892 lt!1780910) (= lambda!191614 lambda!191611))))

(declare-fun bs!1022022 () Bool)

(assert (= bs!1022022 (and d!1456330 b!4623699)))

(assert (=> bs!1022022 (= (= lt!1780892 lt!1780855) (= lambda!191614 lambda!191600))))

(declare-fun bs!1022024 () Bool)

(assert (= bs!1022024 (and d!1456330 b!4623720)))

(assert (=> bs!1022024 (= (= lt!1780892 (ListMap!4262 Nil!51508)) (= lambda!191614 lambda!191607))))

(declare-fun bs!1022025 () Bool)

(assert (= bs!1022025 (and d!1456330 d!1456244)))

(assert (=> bs!1022025 (= (= lt!1780892 lt!1780680) (= lambda!191614 lambda!191548))))

(declare-fun bs!1022027 () Bool)

(assert (= bs!1022027 (and d!1456330 b!4623704)))

(assert (=> bs!1022027 (= (= lt!1780892 (ListMap!4262 Nil!51508)) (= lambda!191614 lambda!191603))))

(assert (=> bs!1022022 (= (= lt!1780892 (ListMap!4262 Nil!51508)) (= lambda!191614 lambda!191599))))

(assert (=> bs!1022017 (= (= lt!1780892 lt!1780698) (= lambda!191614 lambda!191547))))

(assert (=> bs!1022027 (= (= lt!1780892 lt!1780876) (= lambda!191614 lambda!191604))))

(assert (=> bs!1022021 (= (= lt!1780892 (ListMap!4262 Nil!51508)) (= lambda!191614 lambda!191608))))

(declare-fun bs!1022028 () Bool)

(assert (= bs!1022028 (and d!1456330 b!4623698)))

(assert (=> bs!1022028 (= (= lt!1780892 (ListMap!4262 Nil!51508)) (= lambda!191614 lambda!191598))))

(declare-fun bs!1022029 () Bool)

(assert (= bs!1022029 (and d!1456330 d!1456324)))

(assert (=> bs!1022029 (= (= lt!1780892 lt!1780858) (= lambda!191614 lambda!191605))))

(declare-fun bs!1022030 () Bool)

(assert (= bs!1022030 (and d!1456330 b!4623591)))

(assert (=> bs!1022030 (= (= lt!1780892 lt!1780570) (= lambda!191614 lambda!191545))))

(declare-fun bs!1022031 () Bool)

(assert (= bs!1022031 (and d!1456330 d!1456318)))

(assert (=> bs!1022031 (= (= lt!1780892 lt!1780836) (= lambda!191614 lambda!191601))))

(assert (=> d!1456330 true))

(declare-fun b!4623717 () Bool)

(declare-fun res!1938623 () Bool)

(declare-fun e!2884171 () Bool)

(assert (=> b!4623717 (=> (not res!1938623) (not e!2884171))))

(assert (=> b!4623717 (= res!1938623 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191614))))

(declare-fun b!4623718 () Bool)

(declare-fun e!2884170 () Bool)

(assert (=> b!4623718 (= e!2884170 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191611))))

(declare-fun bm!322471 () Bool)

(declare-fun c!791473 () Bool)

(declare-fun call!322476 () Bool)

(declare-fun lt!1780904 () ListMap!4261)

(assert (=> bm!322471 (= call!322476 (forall!10809 (ite c!791473 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780904)) (ite c!791473 lambda!191607 lambda!191611)))))

(declare-fun bm!322472 () Bool)

(declare-fun call!322478 () Bool)

(assert (=> bm!322472 (= call!322478 (forall!10809 (ite c!791473 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780904)) (ite c!791473 lambda!191607 lambda!191611)))))

(declare-fun b!4623719 () Bool)

(assert (=> b!4623719 (= e!2884171 (invariantList!1197 (toList!4957 lt!1780892)))))

(declare-fun e!2884169 () ListMap!4261)

(assert (=> b!4623720 (= e!2884169 (ListMap!4262 Nil!51508))))

(declare-fun lt!1780894 () Unit!111641)

(declare-fun call!322477 () Unit!111641)

(assert (=> b!4623720 (= lt!1780894 call!322477)))

(assert (=> b!4623720 call!322476))

(declare-fun lt!1780898 () Unit!111641)

(assert (=> b!4623720 (= lt!1780898 lt!1780894)))

(assert (=> b!4623720 call!322478))

(declare-fun lt!1780900 () Unit!111641)

(declare-fun Unit!111691 () Unit!111641)

(assert (=> b!4623720 (= lt!1780900 Unit!111691)))

(declare-fun bm!322473 () Bool)

(assert (=> bm!322473 (= call!322477 (lemmaContainsAllItsOwnKeys!499 (ListMap!4262 Nil!51508)))))

(assert (=> b!4623721 (= e!2884169 lt!1780910)))

(assert (=> b!4623721 (= lt!1780904 (+!1862 (ListMap!4262 Nil!51508) (h!57552 (Cons!51508 lt!1780566 lt!1780558))))))

(assert (=> b!4623721 (= lt!1780910 (addToMapMapFromBucket!957 (t!358658 (Cons!51508 lt!1780566 lt!1780558)) (+!1862 (ListMap!4262 Nil!51508) (h!57552 (Cons!51508 lt!1780566 lt!1780558)))))))

(declare-fun lt!1780903 () Unit!111641)

(assert (=> b!4623721 (= lt!1780903 call!322477)))

(assert (=> b!4623721 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191608)))

(declare-fun lt!1780895 () Unit!111641)

(assert (=> b!4623721 (= lt!1780895 lt!1780903)))

(assert (=> b!4623721 call!322476))

(declare-fun lt!1780905 () Unit!111641)

(declare-fun Unit!111692 () Unit!111641)

(assert (=> b!4623721 (= lt!1780905 Unit!111692)))

(assert (=> b!4623721 (forall!10809 (t!358658 (Cons!51508 lt!1780566 lt!1780558)) lambda!191611)))

(declare-fun lt!1780891 () Unit!111641)

(declare-fun Unit!111693 () Unit!111641)

(assert (=> b!4623721 (= lt!1780891 Unit!111693)))

(declare-fun lt!1780908 () Unit!111641)

(declare-fun Unit!111694 () Unit!111641)

(assert (=> b!4623721 (= lt!1780908 Unit!111694)))

(declare-fun lt!1780899 () Unit!111641)

(assert (=> b!4623721 (= lt!1780899 (forallContained!3035 (toList!4957 lt!1780904) lambda!191611 (h!57552 (Cons!51508 lt!1780566 lt!1780558))))))

(assert (=> b!4623721 (contains!14535 lt!1780904 (_1!29509 (h!57552 (Cons!51508 lt!1780566 lt!1780558))))))

(declare-fun lt!1780902 () Unit!111641)

(declare-fun Unit!111695 () Unit!111641)

(assert (=> b!4623721 (= lt!1780902 Unit!111695)))

(assert (=> b!4623721 (contains!14535 lt!1780910 (_1!29509 (h!57552 (Cons!51508 lt!1780566 lt!1780558))))))

(declare-fun lt!1780890 () Unit!111641)

(declare-fun Unit!111696 () Unit!111641)

(assert (=> b!4623721 (= lt!1780890 Unit!111696)))

(assert (=> b!4623721 (forall!10809 (Cons!51508 lt!1780566 lt!1780558) lambda!191611)))

(declare-fun lt!1780893 () Unit!111641)

(declare-fun Unit!111697 () Unit!111641)

(assert (=> b!4623721 (= lt!1780893 Unit!111697)))

(assert (=> b!4623721 call!322478))

(declare-fun lt!1780897 () Unit!111641)

(declare-fun Unit!111698 () Unit!111641)

(assert (=> b!4623721 (= lt!1780897 Unit!111698)))

(declare-fun lt!1780896 () Unit!111641)

(declare-fun Unit!111699 () Unit!111641)

(assert (=> b!4623721 (= lt!1780896 Unit!111699)))

(declare-fun lt!1780909 () Unit!111641)

(assert (=> b!4623721 (= lt!1780909 (addForallContainsKeyThenBeforeAdding!498 (ListMap!4262 Nil!51508) lt!1780910 (_1!29509 (h!57552 (Cons!51508 lt!1780566 lt!1780558))) (_2!29509 (h!57552 (Cons!51508 lt!1780566 lt!1780558)))))))

(assert (=> b!4623721 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191611)))

(declare-fun lt!1780901 () Unit!111641)

(assert (=> b!4623721 (= lt!1780901 lt!1780909)))

(assert (=> b!4623721 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191611)))

(declare-fun lt!1780906 () Unit!111641)

(declare-fun Unit!111701 () Unit!111641)

(assert (=> b!4623721 (= lt!1780906 Unit!111701)))

(declare-fun res!1938627 () Bool)

(assert (=> b!4623721 (= res!1938627 (forall!10809 (Cons!51508 lt!1780566 lt!1780558) lambda!191611))))

(assert (=> b!4623721 (=> (not res!1938627) (not e!2884170))))

(assert (=> b!4623721 e!2884170))

(declare-fun lt!1780907 () Unit!111641)

(declare-fun Unit!111703 () Unit!111641)

(assert (=> b!4623721 (= lt!1780907 Unit!111703)))

(assert (=> d!1456330 e!2884171))

(declare-fun res!1938624 () Bool)

(assert (=> d!1456330 (=> (not res!1938624) (not e!2884171))))

(assert (=> d!1456330 (= res!1938624 (forall!10809 (Cons!51508 lt!1780566 lt!1780558) lambda!191614))))

(assert (=> d!1456330 (= lt!1780892 e!2884169)))

(assert (=> d!1456330 (= c!791473 ((_ is Nil!51508) (Cons!51508 lt!1780566 lt!1780558)))))

(assert (=> d!1456330 (noDuplicateKeys!1496 (Cons!51508 lt!1780566 lt!1780558))))

(assert (=> d!1456330 (= (addToMapMapFromBucket!957 (Cons!51508 lt!1780566 lt!1780558) (ListMap!4262 Nil!51508)) lt!1780892)))

(assert (= (and d!1456330 c!791473) b!4623720))

(assert (= (and d!1456330 (not c!791473)) b!4623721))

(assert (= (and b!4623721 res!1938627) b!4623718))

(assert (= (or b!4623720 b!4623721) bm!322473))

(assert (= (or b!4623720 b!4623721) bm!322471))

(assert (= (or b!4623720 b!4623721) bm!322472))

(assert (= (and d!1456330 res!1938624) b!4623717))

(assert (= (and b!4623717 res!1938623) b!4623719))

(declare-fun m!5463223 () Bool)

(assert (=> b!4623717 m!5463223))

(declare-fun m!5463225 () Bool)

(assert (=> bm!322471 m!5463225))

(declare-fun m!5463227 () Bool)

(assert (=> d!1456330 m!5463227))

(declare-fun m!5463229 () Bool)

(assert (=> d!1456330 m!5463229))

(assert (=> bm!322472 m!5463225))

(declare-fun m!5463231 () Bool)

(assert (=> b!4623719 m!5463231))

(declare-fun m!5463233 () Bool)

(assert (=> b!4623721 m!5463233))

(declare-fun m!5463235 () Bool)

(assert (=> b!4623721 m!5463235))

(declare-fun m!5463237 () Bool)

(assert (=> b!4623721 m!5463237))

(declare-fun m!5463239 () Bool)

(assert (=> b!4623721 m!5463239))

(assert (=> b!4623721 m!5463235))

(assert (=> b!4623721 m!5463233))

(declare-fun m!5463241 () Bool)

(assert (=> b!4623721 m!5463241))

(declare-fun m!5463243 () Bool)

(assert (=> b!4623721 m!5463243))

(declare-fun m!5463245 () Bool)

(assert (=> b!4623721 m!5463245))

(declare-fun m!5463247 () Bool)

(assert (=> b!4623721 m!5463247))

(assert (=> b!4623721 m!5463245))

(declare-fun m!5463249 () Bool)

(assert (=> b!4623721 m!5463249))

(declare-fun m!5463251 () Bool)

(assert (=> b!4623721 m!5463251))

(assert (=> b!4623718 m!5463245))

(assert (=> bm!322473 m!5463153))

(assert (=> b!4623482 d!1456330))

(declare-fun bs!1022032 () Bool)

(declare-fun b!4623741 () Bool)

(assert (= bs!1022032 (and b!4623741 b!4623703)))

(declare-fun lambda!191615 () Int)

(assert (=> bs!1022032 (= lambda!191615 lambda!191602)))

(declare-fun bs!1022033 () Bool)

(assert (= bs!1022033 (and b!4623741 b!4623721)))

(assert (=> bs!1022033 (= (= (ListMap!4262 Nil!51508) lt!1780910) (= lambda!191615 lambda!191611))))

(declare-fun bs!1022034 () Bool)

(assert (= bs!1022034 (and b!4623741 b!4623699)))

(assert (=> bs!1022034 (= (= (ListMap!4262 Nil!51508) lt!1780855) (= lambda!191615 lambda!191600))))

(declare-fun bs!1022035 () Bool)

(assert (= bs!1022035 (and b!4623741 b!4623720)))

(assert (=> bs!1022035 (= lambda!191615 lambda!191607)))

(declare-fun bs!1022036 () Bool)

(assert (= bs!1022036 (and b!4623741 d!1456244)))

(assert (=> bs!1022036 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191615 lambda!191548))))

(declare-fun bs!1022037 () Bool)

(assert (= bs!1022037 (and b!4623741 b!4623704)))

(assert (=> bs!1022037 (= lambda!191615 lambda!191603)))

(assert (=> bs!1022034 (= lambda!191615 lambda!191599)))

(declare-fun bs!1022038 () Bool)

(assert (= bs!1022038 (and b!4623741 b!4623592)))

(assert (=> bs!1022038 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191615 lambda!191547))))

(assert (=> bs!1022037 (= (= (ListMap!4262 Nil!51508) lt!1780876) (= lambda!191615 lambda!191604))))

(assert (=> bs!1022033 (= lambda!191615 lambda!191608)))

(assert (=> bs!1022038 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191615 lambda!191546))))

(declare-fun bs!1022039 () Bool)

(assert (= bs!1022039 (and b!4623741 d!1456330)))

(assert (=> bs!1022039 (= (= (ListMap!4262 Nil!51508) lt!1780892) (= lambda!191615 lambda!191614))))

(declare-fun bs!1022040 () Bool)

(assert (= bs!1022040 (and b!4623741 b!4623698)))

(assert (=> bs!1022040 (= lambda!191615 lambda!191598)))

(declare-fun bs!1022041 () Bool)

(assert (= bs!1022041 (and b!4623741 d!1456324)))

(assert (=> bs!1022041 (= (= (ListMap!4262 Nil!51508) lt!1780858) (= lambda!191615 lambda!191605))))

(declare-fun bs!1022042 () Bool)

(assert (= bs!1022042 (and b!4623741 b!4623591)))

(assert (=> bs!1022042 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191615 lambda!191545))))

(declare-fun bs!1022043 () Bool)

(assert (= bs!1022043 (and b!4623741 d!1456318)))

(assert (=> bs!1022043 (= (= (ListMap!4262 Nil!51508) lt!1780836) (= lambda!191615 lambda!191601))))

(assert (=> b!4623741 true))

(declare-fun bs!1022044 () Bool)

(declare-fun b!4623742 () Bool)

(assert (= bs!1022044 (and b!4623742 b!4623703)))

(declare-fun lambda!191616 () Int)

(assert (=> bs!1022044 (= lambda!191616 lambda!191602)))

(declare-fun bs!1022045 () Bool)

(assert (= bs!1022045 (and b!4623742 b!4623721)))

(assert (=> bs!1022045 (= (= (ListMap!4262 Nil!51508) lt!1780910) (= lambda!191616 lambda!191611))))

(declare-fun bs!1022046 () Bool)

(assert (= bs!1022046 (and b!4623742 b!4623699)))

(assert (=> bs!1022046 (= (= (ListMap!4262 Nil!51508) lt!1780855) (= lambda!191616 lambda!191600))))

(declare-fun bs!1022047 () Bool)

(assert (= bs!1022047 (and b!4623742 b!4623720)))

(assert (=> bs!1022047 (= lambda!191616 lambda!191607)))

(declare-fun bs!1022048 () Bool)

(assert (= bs!1022048 (and b!4623742 d!1456244)))

(assert (=> bs!1022048 (= (= (ListMap!4262 Nil!51508) lt!1780680) (= lambda!191616 lambda!191548))))

(declare-fun bs!1022049 () Bool)

(assert (= bs!1022049 (and b!4623742 b!4623704)))

(assert (=> bs!1022049 (= lambda!191616 lambda!191603)))

(assert (=> bs!1022046 (= lambda!191616 lambda!191599)))

(declare-fun bs!1022050 () Bool)

(assert (= bs!1022050 (and b!4623742 b!4623592)))

(assert (=> bs!1022050 (= (= (ListMap!4262 Nil!51508) lt!1780698) (= lambda!191616 lambda!191547))))

(assert (=> bs!1022049 (= (= (ListMap!4262 Nil!51508) lt!1780876) (= lambda!191616 lambda!191604))))

(assert (=> bs!1022045 (= lambda!191616 lambda!191608)))

(assert (=> bs!1022050 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191616 lambda!191546))))

(declare-fun bs!1022051 () Bool)

(assert (= bs!1022051 (and b!4623742 d!1456330)))

(assert (=> bs!1022051 (= (= (ListMap!4262 Nil!51508) lt!1780892) (= lambda!191616 lambda!191614))))

(declare-fun bs!1022052 () Bool)

(assert (= bs!1022052 (and b!4623742 b!4623698)))

(assert (=> bs!1022052 (= lambda!191616 lambda!191598)))

(declare-fun bs!1022053 () Bool)

(assert (= bs!1022053 (and b!4623742 d!1456324)))

(assert (=> bs!1022053 (= (= (ListMap!4262 Nil!51508) lt!1780858) (= lambda!191616 lambda!191605))))

(declare-fun bs!1022054 () Bool)

(assert (= bs!1022054 (and b!4623742 b!4623591)))

(assert (=> bs!1022054 (= (= (ListMap!4262 Nil!51508) lt!1780570) (= lambda!191616 lambda!191545))))

(declare-fun bs!1022055 () Bool)

(assert (= bs!1022055 (and b!4623742 b!4623741)))

(assert (=> bs!1022055 (= lambda!191616 lambda!191615)))

(declare-fun bs!1022056 () Bool)

(assert (= bs!1022056 (and b!4623742 d!1456318)))

(assert (=> bs!1022056 (= (= (ListMap!4262 Nil!51508) lt!1780836) (= lambda!191616 lambda!191601))))

(assert (=> b!4623742 true))

(declare-fun lt!1780933 () ListMap!4261)

(declare-fun lambda!191617 () Int)

(assert (=> bs!1022044 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191602))))

(assert (=> bs!1022045 (= (= lt!1780933 lt!1780910) (= lambda!191617 lambda!191611))))

(assert (=> bs!1022046 (= (= lt!1780933 lt!1780855) (= lambda!191617 lambda!191600))))

(assert (=> bs!1022047 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191607))))

(assert (=> bs!1022048 (= (= lt!1780933 lt!1780680) (= lambda!191617 lambda!191548))))

(assert (=> bs!1022049 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191603))))

(assert (=> bs!1022046 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191599))))

(assert (=> bs!1022050 (= (= lt!1780933 lt!1780698) (= lambda!191617 lambda!191547))))

(assert (=> bs!1022049 (= (= lt!1780933 lt!1780876) (= lambda!191617 lambda!191604))))

(assert (=> bs!1022045 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191608))))

(assert (=> bs!1022050 (= (= lt!1780933 lt!1780570) (= lambda!191617 lambda!191546))))

(assert (=> bs!1022051 (= (= lt!1780933 lt!1780892) (= lambda!191617 lambda!191614))))

(assert (=> bs!1022052 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191598))))

(assert (=> bs!1022053 (= (= lt!1780933 lt!1780858) (= lambda!191617 lambda!191605))))

(assert (=> b!4623742 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191616))))

(assert (=> bs!1022054 (= (= lt!1780933 lt!1780570) (= lambda!191617 lambda!191545))))

(assert (=> bs!1022055 (= (= lt!1780933 (ListMap!4262 Nil!51508)) (= lambda!191617 lambda!191615))))

(assert (=> bs!1022056 (= (= lt!1780933 lt!1780836) (= lambda!191617 lambda!191601))))

(assert (=> b!4623742 true))

(declare-fun bs!1022057 () Bool)

(declare-fun d!1456344 () Bool)

(assert (= bs!1022057 (and d!1456344 b!4623703)))

(declare-fun lt!1780915 () ListMap!4261)

(declare-fun lambda!191618 () Int)

(assert (=> bs!1022057 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191602))))

(declare-fun bs!1022058 () Bool)

(assert (= bs!1022058 (and d!1456344 b!4623742)))

(assert (=> bs!1022058 (= (= lt!1780915 lt!1780933) (= lambda!191618 lambda!191617))))

(declare-fun bs!1022059 () Bool)

(assert (= bs!1022059 (and d!1456344 b!4623721)))

(assert (=> bs!1022059 (= (= lt!1780915 lt!1780910) (= lambda!191618 lambda!191611))))

(declare-fun bs!1022060 () Bool)

(assert (= bs!1022060 (and d!1456344 b!4623699)))

(assert (=> bs!1022060 (= (= lt!1780915 lt!1780855) (= lambda!191618 lambda!191600))))

(declare-fun bs!1022061 () Bool)

(assert (= bs!1022061 (and d!1456344 b!4623720)))

(assert (=> bs!1022061 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191607))))

(declare-fun bs!1022062 () Bool)

(assert (= bs!1022062 (and d!1456344 d!1456244)))

(assert (=> bs!1022062 (= (= lt!1780915 lt!1780680) (= lambda!191618 lambda!191548))))

(declare-fun bs!1022063 () Bool)

(assert (= bs!1022063 (and d!1456344 b!4623704)))

(assert (=> bs!1022063 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191603))))

(assert (=> bs!1022060 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191599))))

(declare-fun bs!1022064 () Bool)

(assert (= bs!1022064 (and d!1456344 b!4623592)))

(assert (=> bs!1022064 (= (= lt!1780915 lt!1780698) (= lambda!191618 lambda!191547))))

(assert (=> bs!1022063 (= (= lt!1780915 lt!1780876) (= lambda!191618 lambda!191604))))

(assert (=> bs!1022059 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191608))))

(assert (=> bs!1022064 (= (= lt!1780915 lt!1780570) (= lambda!191618 lambda!191546))))

(declare-fun bs!1022065 () Bool)

(assert (= bs!1022065 (and d!1456344 d!1456330)))

(assert (=> bs!1022065 (= (= lt!1780915 lt!1780892) (= lambda!191618 lambda!191614))))

(declare-fun bs!1022066 () Bool)

(assert (= bs!1022066 (and d!1456344 b!4623698)))

(assert (=> bs!1022066 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191598))))

(declare-fun bs!1022067 () Bool)

(assert (= bs!1022067 (and d!1456344 d!1456324)))

(assert (=> bs!1022067 (= (= lt!1780915 lt!1780858) (= lambda!191618 lambda!191605))))

(assert (=> bs!1022058 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191616))))

(declare-fun bs!1022068 () Bool)

(assert (= bs!1022068 (and d!1456344 b!4623591)))

(assert (=> bs!1022068 (= (= lt!1780915 lt!1780570) (= lambda!191618 lambda!191545))))

(declare-fun bs!1022069 () Bool)

(assert (= bs!1022069 (and d!1456344 b!4623741)))

(assert (=> bs!1022069 (= (= lt!1780915 (ListMap!4262 Nil!51508)) (= lambda!191618 lambda!191615))))

(declare-fun bs!1022070 () Bool)

(assert (= bs!1022070 (and d!1456344 d!1456318)))

(assert (=> bs!1022070 (= (= lt!1780915 lt!1780836) (= lambda!191618 lambda!191601))))

(assert (=> d!1456344 true))

(declare-fun b!4623738 () Bool)

(declare-fun res!1938632 () Bool)

(declare-fun e!2884184 () Bool)

(assert (=> b!4623738 (=> (not res!1938632) (not e!2884184))))

(assert (=> b!4623738 (= res!1938632 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191618))))

(declare-fun b!4623739 () Bool)

(declare-fun e!2884183 () Bool)

(assert (=> b!4623739 (= e!2884183 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191617))))

(declare-fun c!791478 () Bool)

(declare-fun call!322479 () Bool)

(declare-fun bm!322474 () Bool)

(declare-fun lt!1780927 () ListMap!4261)

(assert (=> bm!322474 (= call!322479 (forall!10809 (ite c!791478 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780927)) (ite c!791478 lambda!191615 lambda!191617)))))

(declare-fun bm!322475 () Bool)

(declare-fun call!322481 () Bool)

(assert (=> bm!322475 (= call!322481 (forall!10809 (ite c!791478 (toList!4957 (ListMap!4262 Nil!51508)) (toList!4957 lt!1780927)) (ite c!791478 lambda!191615 lambda!191617)))))

(declare-fun b!4623740 () Bool)

(assert (=> b!4623740 (= e!2884184 (invariantList!1197 (toList!4957 lt!1780915)))))

(declare-fun e!2884182 () ListMap!4261)

(assert (=> b!4623741 (= e!2884182 (ListMap!4262 Nil!51508))))

(declare-fun lt!1780917 () Unit!111641)

(declare-fun call!322480 () Unit!111641)

(assert (=> b!4623741 (= lt!1780917 call!322480)))

(assert (=> b!4623741 call!322479))

(declare-fun lt!1780921 () Unit!111641)

(assert (=> b!4623741 (= lt!1780921 lt!1780917)))

(assert (=> b!4623741 call!322481))

(declare-fun lt!1780923 () Unit!111641)

(declare-fun Unit!111704 () Unit!111641)

(assert (=> b!4623741 (= lt!1780923 Unit!111704)))

(declare-fun bm!322476 () Bool)

(assert (=> bm!322476 (= call!322480 (lemmaContainsAllItsOwnKeys!499 (ListMap!4262 Nil!51508)))))

(assert (=> b!4623742 (= e!2884182 lt!1780933)))

(assert (=> b!4623742 (= lt!1780927 (+!1862 (ListMap!4262 Nil!51508) (h!57552 (Cons!51508 lt!1780574 lt!1780575))))))

(assert (=> b!4623742 (= lt!1780933 (addToMapMapFromBucket!957 (t!358658 (Cons!51508 lt!1780574 lt!1780575)) (+!1862 (ListMap!4262 Nil!51508) (h!57552 (Cons!51508 lt!1780574 lt!1780575)))))))

(declare-fun lt!1780926 () Unit!111641)

(assert (=> b!4623742 (= lt!1780926 call!322480)))

(assert (=> b!4623742 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191616)))

(declare-fun lt!1780918 () Unit!111641)

(assert (=> b!4623742 (= lt!1780918 lt!1780926)))

(assert (=> b!4623742 call!322479))

(declare-fun lt!1780928 () Unit!111641)

(declare-fun Unit!111705 () Unit!111641)

(assert (=> b!4623742 (= lt!1780928 Unit!111705)))

(assert (=> b!4623742 (forall!10809 (t!358658 (Cons!51508 lt!1780574 lt!1780575)) lambda!191617)))

(declare-fun lt!1780914 () Unit!111641)

(declare-fun Unit!111706 () Unit!111641)

(assert (=> b!4623742 (= lt!1780914 Unit!111706)))

(declare-fun lt!1780931 () Unit!111641)

(declare-fun Unit!111707 () Unit!111641)

(assert (=> b!4623742 (= lt!1780931 Unit!111707)))

(declare-fun lt!1780922 () Unit!111641)

(assert (=> b!4623742 (= lt!1780922 (forallContained!3035 (toList!4957 lt!1780927) lambda!191617 (h!57552 (Cons!51508 lt!1780574 lt!1780575))))))

(assert (=> b!4623742 (contains!14535 lt!1780927 (_1!29509 (h!57552 (Cons!51508 lt!1780574 lt!1780575))))))

(declare-fun lt!1780925 () Unit!111641)

(declare-fun Unit!111708 () Unit!111641)

(assert (=> b!4623742 (= lt!1780925 Unit!111708)))

(assert (=> b!4623742 (contains!14535 lt!1780933 (_1!29509 (h!57552 (Cons!51508 lt!1780574 lt!1780575))))))

(declare-fun lt!1780913 () Unit!111641)

(declare-fun Unit!111709 () Unit!111641)

(assert (=> b!4623742 (= lt!1780913 Unit!111709)))

(assert (=> b!4623742 (forall!10809 (Cons!51508 lt!1780574 lt!1780575) lambda!191617)))

(declare-fun lt!1780916 () Unit!111641)

(declare-fun Unit!111710 () Unit!111641)

(assert (=> b!4623742 (= lt!1780916 Unit!111710)))

(assert (=> b!4623742 call!322481))

(declare-fun lt!1780920 () Unit!111641)

(declare-fun Unit!111711 () Unit!111641)

(assert (=> b!4623742 (= lt!1780920 Unit!111711)))

(declare-fun lt!1780919 () Unit!111641)

(declare-fun Unit!111712 () Unit!111641)

(assert (=> b!4623742 (= lt!1780919 Unit!111712)))

(declare-fun lt!1780932 () Unit!111641)

(assert (=> b!4623742 (= lt!1780932 (addForallContainsKeyThenBeforeAdding!498 (ListMap!4262 Nil!51508) lt!1780933 (_1!29509 (h!57552 (Cons!51508 lt!1780574 lt!1780575))) (_2!29509 (h!57552 (Cons!51508 lt!1780574 lt!1780575)))))))

(assert (=> b!4623742 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191617)))

(declare-fun lt!1780924 () Unit!111641)

(assert (=> b!4623742 (= lt!1780924 lt!1780932)))

(assert (=> b!4623742 (forall!10809 (toList!4957 (ListMap!4262 Nil!51508)) lambda!191617)))

(declare-fun lt!1780929 () Unit!111641)

(declare-fun Unit!111713 () Unit!111641)

(assert (=> b!4623742 (= lt!1780929 Unit!111713)))

(declare-fun res!1938634 () Bool)

(assert (=> b!4623742 (= res!1938634 (forall!10809 (Cons!51508 lt!1780574 lt!1780575) lambda!191617))))

(assert (=> b!4623742 (=> (not res!1938634) (not e!2884183))))

(assert (=> b!4623742 e!2884183))

(declare-fun lt!1780930 () Unit!111641)

(declare-fun Unit!111714 () Unit!111641)

(assert (=> b!4623742 (= lt!1780930 Unit!111714)))

(assert (=> d!1456344 e!2884184))

(declare-fun res!1938633 () Bool)

(assert (=> d!1456344 (=> (not res!1938633) (not e!2884184))))

(assert (=> d!1456344 (= res!1938633 (forall!10809 (Cons!51508 lt!1780574 lt!1780575) lambda!191618))))

(assert (=> d!1456344 (= lt!1780915 e!2884182)))

(assert (=> d!1456344 (= c!791478 ((_ is Nil!51508) (Cons!51508 lt!1780574 lt!1780575)))))

(assert (=> d!1456344 (noDuplicateKeys!1496 (Cons!51508 lt!1780574 lt!1780575))))

(assert (=> d!1456344 (= (addToMapMapFromBucket!957 (Cons!51508 lt!1780574 lt!1780575) (ListMap!4262 Nil!51508)) lt!1780915)))

(assert (= (and d!1456344 c!791478) b!4623741))

(assert (= (and d!1456344 (not c!791478)) b!4623742))

(assert (= (and b!4623742 res!1938634) b!4623739))

(assert (= (or b!4623741 b!4623742) bm!322476))

(assert (= (or b!4623741 b!4623742) bm!322474))

(assert (= (or b!4623741 b!4623742) bm!322475))

(assert (= (and d!1456344 res!1938633) b!4623738))

(assert (= (and b!4623738 res!1938632) b!4623740))

(declare-fun m!5463253 () Bool)

(assert (=> b!4623738 m!5463253))

(declare-fun m!5463255 () Bool)

(assert (=> bm!322474 m!5463255))

(declare-fun m!5463257 () Bool)

(assert (=> d!1456344 m!5463257))

(declare-fun m!5463259 () Bool)

(assert (=> d!1456344 m!5463259))

(assert (=> bm!322475 m!5463255))

(declare-fun m!5463261 () Bool)

(assert (=> b!4623740 m!5463261))

(declare-fun m!5463263 () Bool)

(assert (=> b!4623742 m!5463263))

(declare-fun m!5463265 () Bool)

(assert (=> b!4623742 m!5463265))

(declare-fun m!5463267 () Bool)

(assert (=> b!4623742 m!5463267))

(declare-fun m!5463269 () Bool)

(assert (=> b!4623742 m!5463269))

(assert (=> b!4623742 m!5463265))

(assert (=> b!4623742 m!5463263))

(declare-fun m!5463271 () Bool)

(assert (=> b!4623742 m!5463271))

(declare-fun m!5463273 () Bool)

(assert (=> b!4623742 m!5463273))

(declare-fun m!5463275 () Bool)

(assert (=> b!4623742 m!5463275))

(declare-fun m!5463277 () Bool)

(assert (=> b!4623742 m!5463277))

(assert (=> b!4623742 m!5463275))

(declare-fun m!5463279 () Bool)

(assert (=> b!4623742 m!5463279))

(declare-fun m!5463281 () Bool)

(assert (=> b!4623742 m!5463281))

(assert (=> b!4623739 m!5463275))

(assert (=> bm!322476 m!5463153))

(assert (=> b!4623482 d!1456344))

(declare-fun d!1456346 () Bool)

(assert (=> d!1456346 (= (head!9630 newBucket!224) (h!57552 newBucket!224))))

(assert (=> b!4623482 d!1456346))

(declare-fun bs!1022071 () Bool)

(declare-fun d!1456348 () Bool)

(assert (= bs!1022071 (and d!1456348 b!4623484)))

(declare-fun lambda!191619 () Int)

(assert (=> bs!1022071 (= lambda!191619 lambda!191506)))

(declare-fun bs!1022072 () Bool)

(assert (= bs!1022072 (and d!1456348 d!1456280)))

(assert (=> bs!1022072 (= lambda!191619 lambda!191551)))

(declare-fun bs!1022073 () Bool)

(assert (= bs!1022073 (and d!1456348 d!1456288)))

(assert (=> bs!1022073 (= lambda!191619 lambda!191554)))

(declare-fun bs!1022074 () Bool)

(assert (= bs!1022074 (and d!1456348 d!1456304)))

(assert (=> bs!1022074 (= lambda!191619 lambda!191593)))

(declare-fun lt!1780934 () ListMap!4261)

(assert (=> d!1456348 (invariantList!1197 (toList!4957 lt!1780934))))

(declare-fun e!2884185 () ListMap!4261)

(assert (=> d!1456348 (= lt!1780934 e!2884185)))

(declare-fun c!791479 () Bool)

(assert (=> d!1456348 (= c!791479 ((_ is Cons!51509) lt!1780573))))

(assert (=> d!1456348 (forall!10811 lt!1780573 lambda!191619)))

(assert (=> d!1456348 (= (extractMap!1552 lt!1780573) lt!1780934)))

(declare-fun b!4623743 () Bool)

(assert (=> b!4623743 (= e!2884185 (addToMapMapFromBucket!957 (_2!29510 (h!57553 lt!1780573)) (extractMap!1552 (t!358659 lt!1780573))))))

(declare-fun b!4623744 () Bool)

(assert (=> b!4623744 (= e!2884185 (ListMap!4262 Nil!51508))))

(assert (= (and d!1456348 c!791479) b!4623743))

(assert (= (and d!1456348 (not c!791479)) b!4623744))

(declare-fun m!5463283 () Bool)

(assert (=> d!1456348 m!5463283))

(declare-fun m!5463285 () Bool)

(assert (=> d!1456348 m!5463285))

(declare-fun m!5463287 () Bool)

(assert (=> b!4623743 m!5463287))

(assert (=> b!4623743 m!5463287))

(declare-fun m!5463289 () Bool)

(assert (=> b!4623743 m!5463289))

(assert (=> b!4623482 d!1456348))

(declare-fun bs!1022088 () Bool)

(declare-fun d!1456350 () Bool)

(assert (= bs!1022088 (and d!1456350 d!1456348)))

(declare-fun lambda!191624 () Int)

(assert (=> bs!1022088 (= lambda!191624 lambda!191619)))

(declare-fun bs!1022089 () Bool)

(assert (= bs!1022089 (and d!1456350 d!1456280)))

(assert (=> bs!1022089 (= lambda!191624 lambda!191551)))

(declare-fun bs!1022090 () Bool)

(assert (= bs!1022090 (and d!1456350 d!1456288)))

(assert (=> bs!1022090 (= lambda!191624 lambda!191554)))

(declare-fun bs!1022091 () Bool)

(assert (= bs!1022091 (and d!1456350 b!4623484)))

(assert (=> bs!1022091 (= lambda!191624 lambda!191506)))

(declare-fun bs!1022092 () Bool)

(assert (= bs!1022092 (and d!1456350 d!1456304)))

(assert (=> bs!1022092 (= lambda!191624 lambda!191593)))

(assert (=> d!1456350 (contains!14535 (extractMap!1552 (toList!4958 (ListLongMap!3548 lt!1780573))) key!4968)))

(declare-fun lt!1780975 () Unit!111641)

(declare-fun choose!31266 (ListLongMap!3547 K!12890 Hashable!5893) Unit!111641)

(assert (=> d!1456350 (= lt!1780975 (choose!31266 (ListLongMap!3548 lt!1780573) key!4968 hashF!1389))))

(assert (=> d!1456350 (forall!10811 (toList!4958 (ListLongMap!3548 lt!1780573)) lambda!191624)))

(assert (=> d!1456350 (= (lemmaListContainsThenExtractedMapContains!314 (ListLongMap!3548 lt!1780573) key!4968 hashF!1389) lt!1780975)))

(declare-fun bs!1022093 () Bool)

(assert (= bs!1022093 d!1456350))

(declare-fun m!5463359 () Bool)

(assert (=> bs!1022093 m!5463359))

(assert (=> bs!1022093 m!5463359))

(declare-fun m!5463361 () Bool)

(assert (=> bs!1022093 m!5463361))

(declare-fun m!5463363 () Bool)

(assert (=> bs!1022093 m!5463363))

(declare-fun m!5463365 () Bool)

(assert (=> bs!1022093 m!5463365))

(assert (=> b!4623482 d!1456350))

(declare-fun bs!1022094 () Bool)

(declare-fun d!1456366 () Bool)

(assert (= bs!1022094 (and d!1456366 d!1456348)))

(declare-fun lambda!191625 () Int)

(assert (=> bs!1022094 (= lambda!191625 lambda!191619)))

(declare-fun bs!1022095 () Bool)

(assert (= bs!1022095 (and d!1456366 d!1456280)))

(assert (=> bs!1022095 (= lambda!191625 lambda!191551)))

(declare-fun bs!1022096 () Bool)

(assert (= bs!1022096 (and d!1456366 d!1456288)))

(assert (=> bs!1022096 (= lambda!191625 lambda!191554)))

(declare-fun bs!1022097 () Bool)

(assert (= bs!1022097 (and d!1456366 d!1456350)))

(assert (=> bs!1022097 (= lambda!191625 lambda!191624)))

(declare-fun bs!1022098 () Bool)

(assert (= bs!1022098 (and d!1456366 b!4623484)))

(assert (=> bs!1022098 (= lambda!191625 lambda!191506)))

(declare-fun bs!1022099 () Bool)

(assert (= bs!1022099 (and d!1456366 d!1456304)))

(assert (=> bs!1022099 (= lambda!191625 lambda!191593)))

(declare-fun lt!1780976 () ListMap!4261)

(assert (=> d!1456366 (invariantList!1197 (toList!4957 lt!1780976))))

(declare-fun e!2884213 () ListMap!4261)

(assert (=> d!1456366 (= lt!1780976 e!2884213)))

(declare-fun c!791494 () Bool)

(assert (=> d!1456366 (= c!791494 ((_ is Cons!51509) (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)))))

(assert (=> d!1456366 (forall!10811 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509) lambda!191625)))

(assert (=> d!1456366 (= (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)) lt!1780976)))

(declare-fun b!4623787 () Bool)

(assert (=> b!4623787 (= e!2884213 (addToMapMapFromBucket!957 (_2!29510 (h!57553 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509))) (extractMap!1552 (t!358659 (Cons!51509 (tuple2!52433 hash!414 lt!1780558) Nil!51509)))))))

(declare-fun b!4623788 () Bool)

(assert (=> b!4623788 (= e!2884213 (ListMap!4262 Nil!51508))))

(assert (= (and d!1456366 c!791494) b!4623787))

(assert (= (and d!1456366 (not c!791494)) b!4623788))

(declare-fun m!5463367 () Bool)

(assert (=> d!1456366 m!5463367))

(declare-fun m!5463369 () Bool)

(assert (=> d!1456366 m!5463369))

(declare-fun m!5463371 () Bool)

(assert (=> b!4623787 m!5463371))

(assert (=> b!4623787 m!5463371))

(declare-fun m!5463373 () Bool)

(assert (=> b!4623787 m!5463373))

(assert (=> b!4623482 d!1456366))

(declare-fun d!1456368 () Bool)

(assert (=> d!1456368 (eq!811 (addToMapMapFromBucket!957 (Cons!51508 lt!1780566 lt!1780558) (ListMap!4262 Nil!51508)) (+!1862 (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780566))))

(declare-fun lt!1780983 () Unit!111641)

(declare-fun choose!31267 (tuple2!52430 List!51632 ListMap!4261) Unit!111641)

(assert (=> d!1456368 (= lt!1780983 (choose!31267 lt!1780566 lt!1780558 (ListMap!4262 Nil!51508)))))

(assert (=> d!1456368 (noDuplicateKeys!1496 lt!1780558)))

(assert (=> d!1456368 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!62 lt!1780566 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780983)))

(declare-fun bs!1022102 () Bool)

(assert (= bs!1022102 d!1456368))

(assert (=> bs!1022102 m!5462795))

(assert (=> bs!1022102 m!5462797))

(assert (=> bs!1022102 m!5462795))

(assert (=> bs!1022102 m!5462799))

(assert (=> bs!1022102 m!5462797))

(assert (=> bs!1022102 m!5462809))

(assert (=> bs!1022102 m!5462799))

(declare-fun m!5463381 () Bool)

(assert (=> bs!1022102 m!5463381))

(assert (=> bs!1022102 m!5463181))

(assert (=> b!4623482 d!1456368))

(declare-fun d!1456374 () Bool)

(assert (=> d!1456374 (eq!811 (addToMapMapFromBucket!957 (Cons!51508 lt!1780574 lt!1780575) (ListMap!4262 Nil!51508)) (+!1862 (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780574))))

(declare-fun lt!1780984 () Unit!111641)

(assert (=> d!1456374 (= lt!1780984 (choose!31267 lt!1780574 lt!1780575 (ListMap!4262 Nil!51508)))))

(assert (=> d!1456374 (noDuplicateKeys!1496 lt!1780575)))

(assert (=> d!1456374 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!62 lt!1780574 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780984)))

(declare-fun bs!1022103 () Bool)

(assert (= bs!1022103 d!1456374))

(assert (=> bs!1022103 m!5462817))

(assert (=> bs!1022103 m!5462819))

(assert (=> bs!1022103 m!5462817))

(assert (=> bs!1022103 m!5462815))

(assert (=> bs!1022103 m!5462819))

(assert (=> bs!1022103 m!5462821))

(assert (=> bs!1022103 m!5462815))

(declare-fun m!5463383 () Bool)

(assert (=> bs!1022103 m!5463383))

(assert (=> bs!1022103 m!5463129))

(assert (=> b!4623482 d!1456374))

(declare-fun d!1456376 () Bool)

(declare-fun e!2884214 () Bool)

(assert (=> d!1456376 e!2884214))

(declare-fun res!1938650 () Bool)

(assert (=> d!1456376 (=> (not res!1938650) (not e!2884214))))

(declare-fun lt!1780987 () ListMap!4261)

(assert (=> d!1456376 (= res!1938650 (contains!14535 lt!1780987 (_1!29509 lt!1780574)))))

(declare-fun lt!1780985 () List!51632)

(assert (=> d!1456376 (= lt!1780987 (ListMap!4262 lt!1780985))))

(declare-fun lt!1780988 () Unit!111641)

(declare-fun lt!1780986 () Unit!111641)

(assert (=> d!1456376 (= lt!1780988 lt!1780986)))

(assert (=> d!1456376 (= (getValueByKey!1439 lt!1780985 (_1!29509 lt!1780574)) (Some!11568 (_2!29509 lt!1780574)))))

(assert (=> d!1456376 (= lt!1780986 (lemmaContainsTupThenGetReturnValue!841 lt!1780985 (_1!29509 lt!1780574) (_2!29509 lt!1780574)))))

(assert (=> d!1456376 (= lt!1780985 (insertNoDuplicatedKeys!349 (toList!4957 (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508))) (_1!29509 lt!1780574) (_2!29509 lt!1780574)))))

(assert (=> d!1456376 (= (+!1862 (addToMapMapFromBucket!957 lt!1780575 (ListMap!4262 Nil!51508)) lt!1780574) lt!1780987)))

(declare-fun b!4623789 () Bool)

(declare-fun res!1938649 () Bool)

(assert (=> b!4623789 (=> (not res!1938649) (not e!2884214))))

(assert (=> b!4623789 (= res!1938649 (= (getValueByKey!1439 (toList!4957 lt!1780987) (_1!29509 lt!1780574)) (Some!11568 (_2!29509 lt!1780574))))))

(declare-fun b!4623790 () Bool)

(assert (=> b!4623790 (= e!2884214 (contains!14539 (toList!4957 lt!1780987) lt!1780574))))

(assert (= (and d!1456376 res!1938650) b!4623789))

(assert (= (and b!4623789 res!1938649) b!4623790))

(declare-fun m!5463385 () Bool)

(assert (=> d!1456376 m!5463385))

(declare-fun m!5463387 () Bool)

(assert (=> d!1456376 m!5463387))

(declare-fun m!5463389 () Bool)

(assert (=> d!1456376 m!5463389))

(declare-fun m!5463391 () Bool)

(assert (=> d!1456376 m!5463391))

(declare-fun m!5463393 () Bool)

(assert (=> b!4623789 m!5463393))

(declare-fun m!5463395 () Bool)

(assert (=> b!4623790 m!5463395))

(assert (=> b!4623482 d!1456376))

(declare-fun d!1456378 () Bool)

(declare-fun e!2884215 () Bool)

(assert (=> d!1456378 e!2884215))

(declare-fun res!1938652 () Bool)

(assert (=> d!1456378 (=> (not res!1938652) (not e!2884215))))

(declare-fun lt!1780991 () ListMap!4261)

(assert (=> d!1456378 (= res!1938652 (contains!14535 lt!1780991 (_1!29509 lt!1780566)))))

(declare-fun lt!1780989 () List!51632)

(assert (=> d!1456378 (= lt!1780991 (ListMap!4262 lt!1780989))))

(declare-fun lt!1780992 () Unit!111641)

(declare-fun lt!1780990 () Unit!111641)

(assert (=> d!1456378 (= lt!1780992 lt!1780990)))

(assert (=> d!1456378 (= (getValueByKey!1439 lt!1780989 (_1!29509 lt!1780566)) (Some!11568 (_2!29509 lt!1780566)))))

(assert (=> d!1456378 (= lt!1780990 (lemmaContainsTupThenGetReturnValue!841 lt!1780989 (_1!29509 lt!1780566) (_2!29509 lt!1780566)))))

(assert (=> d!1456378 (= lt!1780989 (insertNoDuplicatedKeys!349 (toList!4957 (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508))) (_1!29509 lt!1780566) (_2!29509 lt!1780566)))))

(assert (=> d!1456378 (= (+!1862 (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780566) lt!1780991)))

(declare-fun b!4623791 () Bool)

(declare-fun res!1938651 () Bool)

(assert (=> b!4623791 (=> (not res!1938651) (not e!2884215))))

(assert (=> b!4623791 (= res!1938651 (= (getValueByKey!1439 (toList!4957 lt!1780991) (_1!29509 lt!1780566)) (Some!11568 (_2!29509 lt!1780566))))))

(declare-fun b!4623792 () Bool)

(assert (=> b!4623792 (= e!2884215 (contains!14539 (toList!4957 lt!1780991) lt!1780566))))

(assert (= (and d!1456378 res!1938652) b!4623791))

(assert (= (and b!4623791 res!1938651) b!4623792))

(declare-fun m!5463397 () Bool)

(assert (=> d!1456378 m!5463397))

(declare-fun m!5463399 () Bool)

(assert (=> d!1456378 m!5463399))

(declare-fun m!5463401 () Bool)

(assert (=> d!1456378 m!5463401))

(declare-fun m!5463403 () Bool)

(assert (=> d!1456378 m!5463403))

(declare-fun m!5463405 () Bool)

(assert (=> b!4623791 m!5463405))

(declare-fun m!5463407 () Bool)

(assert (=> b!4623792 m!5463407))

(assert (=> b!4623482 d!1456378))

(declare-fun d!1456380 () Bool)

(assert (=> d!1456380 (= (head!9630 oldBucket!40) (h!57552 oldBucket!40))))

(assert (=> b!4623482 d!1456380))

(declare-fun d!1456382 () Bool)

(assert (=> d!1456382 (= (eq!811 (addToMapMapFromBucket!957 (Cons!51508 lt!1780566 lt!1780558) (ListMap!4262 Nil!51508)) (+!1862 (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780566)) (= (content!8781 (toList!4957 (addToMapMapFromBucket!957 (Cons!51508 lt!1780566 lt!1780558) (ListMap!4262 Nil!51508)))) (content!8781 (toList!4957 (+!1862 (addToMapMapFromBucket!957 lt!1780558 (ListMap!4262 Nil!51508)) lt!1780566)))))))

(declare-fun bs!1022104 () Bool)

(assert (= bs!1022104 d!1456382))

(declare-fun m!5463409 () Bool)

(assert (=> bs!1022104 m!5463409))

(declare-fun m!5463411 () Bool)

(assert (=> bs!1022104 m!5463411))

(assert (=> b!4623482 d!1456382))

(declare-fun b!4623820 () Bool)

(declare-datatypes ((List!51635 0))(
  ( (Nil!51511) (Cons!51511 (h!57557 K!12890) (t!358663 List!51635)) )
))
(declare-fun e!2884235 () List!51635)

(declare-fun getKeysList!649 (List!51632) List!51635)

(assert (=> b!4623820 (= e!2884235 (getKeysList!649 (toList!4957 (extractMap!1552 lt!1780573))))))

(declare-fun b!4623821 () Bool)

(declare-fun e!2884238 () Bool)

(declare-fun e!2884237 () Bool)

(assert (=> b!4623821 (= e!2884238 e!2884237)))

(declare-fun res!1938666 () Bool)

(assert (=> b!4623821 (=> (not res!1938666) (not e!2884237))))

(declare-fun isDefined!8835 (Option!11569) Bool)

(assert (=> b!4623821 (= res!1938666 (isDefined!8835 (getValueByKey!1439 (toList!4957 (extractMap!1552 lt!1780573)) key!4968)))))

(declare-fun d!1456384 () Bool)

(assert (=> d!1456384 e!2884238))

(declare-fun res!1938664 () Bool)

(assert (=> d!1456384 (=> res!1938664 e!2884238)))

(declare-fun e!2884233 () Bool)

(assert (=> d!1456384 (= res!1938664 e!2884233)))

(declare-fun res!1938665 () Bool)

(assert (=> d!1456384 (=> (not res!1938665) (not e!2884233))))

(declare-fun lt!1781043 () Bool)

(assert (=> d!1456384 (= res!1938665 (not lt!1781043))))

(declare-fun lt!1781038 () Bool)

(assert (=> d!1456384 (= lt!1781043 lt!1781038)))

(declare-fun lt!1781039 () Unit!111641)

(declare-fun e!2884236 () Unit!111641)

(assert (=> d!1456384 (= lt!1781039 e!2884236)))

(declare-fun c!791503 () Bool)

(assert (=> d!1456384 (= c!791503 lt!1781038)))

(declare-fun containsKey!2428 (List!51632 K!12890) Bool)

(assert (=> d!1456384 (= lt!1781038 (containsKey!2428 (toList!4957 (extractMap!1552 lt!1780573)) key!4968))))

(assert (=> d!1456384 (= (contains!14535 (extractMap!1552 lt!1780573) key!4968) lt!1781043)))

(declare-fun b!4623822 () Bool)

(declare-fun lt!1781041 () Unit!111641)

(assert (=> b!4623822 (= e!2884236 lt!1781041)))

(declare-fun lt!1781042 () Unit!111641)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1342 (List!51632 K!12890) Unit!111641)

(assert (=> b!4623822 (= lt!1781042 (lemmaContainsKeyImpliesGetValueByKeyDefined!1342 (toList!4957 (extractMap!1552 lt!1780573)) key!4968))))

(assert (=> b!4623822 (isDefined!8835 (getValueByKey!1439 (toList!4957 (extractMap!1552 lt!1780573)) key!4968))))

(declare-fun lt!1781045 () Unit!111641)

(assert (=> b!4623822 (= lt!1781045 lt!1781042)))

(declare-fun lemmaInListThenGetKeysListContains!644 (List!51632 K!12890) Unit!111641)

(assert (=> b!4623822 (= lt!1781041 (lemmaInListThenGetKeysListContains!644 (toList!4957 (extractMap!1552 lt!1780573)) key!4968))))

(declare-fun call!322491 () Bool)

(assert (=> b!4623822 call!322491))

(declare-fun b!4623823 () Bool)

(assert (=> b!4623823 false))

(declare-fun lt!1781044 () Unit!111641)

(declare-fun lt!1781040 () Unit!111641)

(assert (=> b!4623823 (= lt!1781044 lt!1781040)))

(assert (=> b!4623823 (containsKey!2428 (toList!4957 (extractMap!1552 lt!1780573)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!648 (List!51632 K!12890) Unit!111641)

(assert (=> b!4623823 (= lt!1781040 (lemmaInGetKeysListThenContainsKey!648 (toList!4957 (extractMap!1552 lt!1780573)) key!4968))))

(declare-fun e!2884234 () Unit!111641)

(declare-fun Unit!111726 () Unit!111641)

(assert (=> b!4623823 (= e!2884234 Unit!111726)))

(declare-fun b!4623824 () Bool)

(declare-fun Unit!111727 () Unit!111641)

(assert (=> b!4623824 (= e!2884234 Unit!111727)))

(declare-fun b!4623825 () Bool)

(declare-fun keys!18138 (ListMap!4261) List!51635)

(assert (=> b!4623825 (= e!2884235 (keys!18138 (extractMap!1552 lt!1780573)))))

(declare-fun bm!322486 () Bool)

(declare-fun contains!14541 (List!51635 K!12890) Bool)

(assert (=> bm!322486 (= call!322491 (contains!14541 e!2884235 key!4968))))

(declare-fun c!791505 () Bool)

(assert (=> bm!322486 (= c!791505 c!791503)))

(declare-fun b!4623826 () Bool)

(assert (=> b!4623826 (= e!2884236 e!2884234)))

(declare-fun c!791504 () Bool)

(assert (=> b!4623826 (= c!791504 call!322491)))

(declare-fun b!4623827 () Bool)

(assert (=> b!4623827 (= e!2884233 (not (contains!14541 (keys!18138 (extractMap!1552 lt!1780573)) key!4968)))))

(declare-fun b!4623828 () Bool)

(assert (=> b!4623828 (= e!2884237 (contains!14541 (keys!18138 (extractMap!1552 lt!1780573)) key!4968))))

(assert (= (and d!1456384 c!791503) b!4623822))

(assert (= (and d!1456384 (not c!791503)) b!4623826))

(assert (= (and b!4623826 c!791504) b!4623823))

(assert (= (and b!4623826 (not c!791504)) b!4623824))

(assert (= (or b!4623822 b!4623826) bm!322486))

(assert (= (and bm!322486 c!791505) b!4623820))

(assert (= (and bm!322486 (not c!791505)) b!4623825))

(assert (= (and d!1456384 res!1938665) b!4623827))

(assert (= (and d!1456384 (not res!1938664)) b!4623821))

(assert (= (and b!4623821 res!1938666) b!4623828))

(declare-fun m!5463481 () Bool)

(assert (=> b!4623822 m!5463481))

(declare-fun m!5463483 () Bool)

(assert (=> b!4623822 m!5463483))

(assert (=> b!4623822 m!5463483))

(declare-fun m!5463485 () Bool)

(assert (=> b!4623822 m!5463485))

(declare-fun m!5463487 () Bool)

(assert (=> b!4623822 m!5463487))

(declare-fun m!5463489 () Bool)

(assert (=> b!4623823 m!5463489))

(declare-fun m!5463491 () Bool)

(assert (=> b!4623823 m!5463491))

(assert (=> b!4623821 m!5463483))

(assert (=> b!4623821 m!5463483))

(assert (=> b!4623821 m!5463485))

(assert (=> b!4623827 m!5462811))

(declare-fun m!5463493 () Bool)

(assert (=> b!4623827 m!5463493))

(assert (=> b!4623827 m!5463493))

(declare-fun m!5463495 () Bool)

(assert (=> b!4623827 m!5463495))

(declare-fun m!5463497 () Bool)

(assert (=> bm!322486 m!5463497))

(declare-fun m!5463499 () Bool)

(assert (=> b!4623820 m!5463499))

(assert (=> b!4623828 m!5462811))

(assert (=> b!4623828 m!5463493))

(assert (=> b!4623828 m!5463493))

(assert (=> b!4623828 m!5463495))

(assert (=> b!4623825 m!5462811))

(assert (=> b!4623825 m!5463493))

(assert (=> d!1456384 m!5463489))

(assert (=> b!4623482 d!1456384))

(declare-fun b!4623835 () Bool)

(declare-fun e!2884243 () List!51632)

(declare-fun e!2884242 () List!51632)

(assert (=> b!4623835 (= e!2884243 e!2884242)))

(declare-fun c!791507 () Bool)

(assert (=> b!4623835 (= c!791507 ((_ is Cons!51508) oldBucket!40))))

(declare-fun d!1456398 () Bool)

(declare-fun lt!1781067 () List!51632)

(assert (=> d!1456398 (not (containsKey!2424 lt!1781067 key!4968))))

(assert (=> d!1456398 (= lt!1781067 e!2884243)))

(declare-fun c!791508 () Bool)

(assert (=> d!1456398 (= c!791508 (and ((_ is Cons!51508) oldBucket!40) (= (_1!29509 (h!57552 oldBucket!40)) key!4968)))))

(assert (=> d!1456398 (noDuplicateKeys!1496 oldBucket!40)))

(assert (=> d!1456398 (= (removePairForKey!1119 oldBucket!40 key!4968) lt!1781067)))

(declare-fun b!4623836 () Bool)

(assert (=> b!4623836 (= e!2884242 (Cons!51508 (h!57552 oldBucket!40) (removePairForKey!1119 (t!358658 oldBucket!40) key!4968)))))

(declare-fun b!4623834 () Bool)

(assert (=> b!4623834 (= e!2884243 (t!358658 oldBucket!40))))

(declare-fun b!4623837 () Bool)

(assert (=> b!4623837 (= e!2884242 Nil!51508)))

(assert (= (and d!1456398 c!791508) b!4623834))

(assert (= (and d!1456398 (not c!791508)) b!4623835))

(assert (= (and b!4623835 c!791507) b!4623836))

(assert (= (and b!4623835 (not c!791507)) b!4623837))

(declare-fun m!5463501 () Bool)

(assert (=> d!1456398 m!5463501))

(assert (=> d!1456398 m!5462831))

(assert (=> b!4623836 m!5462827))

(assert (=> b!4623480 d!1456398))

(declare-fun d!1456400 () Bool)

(assert (=> d!1456400 (= (eq!811 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509)) (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)) lt!1780574)) (= (content!8781 (toList!4957 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509)))) (content!8781 (toList!4957 (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)) lt!1780574)))))))

(declare-fun bs!1022156 () Bool)

(assert (= bs!1022156 d!1456400))

(declare-fun m!5463503 () Bool)

(assert (=> bs!1022156 m!5463503))

(declare-fun m!5463505 () Bool)

(assert (=> bs!1022156 m!5463505))

(assert (=> b!4623481 d!1456400))

(declare-fun bs!1022160 () Bool)

(declare-fun d!1456402 () Bool)

(assert (= bs!1022160 (and d!1456402 d!1456348)))

(declare-fun lambda!191636 () Int)

(assert (=> bs!1022160 (= lambda!191636 lambda!191619)))

(declare-fun bs!1022162 () Bool)

(assert (= bs!1022162 (and d!1456402 d!1456280)))

(assert (=> bs!1022162 (= lambda!191636 lambda!191551)))

(declare-fun bs!1022163 () Bool)

(assert (= bs!1022163 (and d!1456402 d!1456288)))

(assert (=> bs!1022163 (= lambda!191636 lambda!191554)))

(declare-fun bs!1022164 () Bool)

(assert (= bs!1022164 (and d!1456402 d!1456366)))

(assert (=> bs!1022164 (= lambda!191636 lambda!191625)))

(declare-fun bs!1022165 () Bool)

(assert (= bs!1022165 (and d!1456402 d!1456350)))

(assert (=> bs!1022165 (= lambda!191636 lambda!191624)))

(declare-fun bs!1022166 () Bool)

(assert (= bs!1022166 (and d!1456402 b!4623484)))

(assert (=> bs!1022166 (= lambda!191636 lambda!191506)))

(declare-fun bs!1022167 () Bool)

(assert (= bs!1022167 (and d!1456402 d!1456304)))

(assert (=> bs!1022167 (= lambda!191636 lambda!191593)))

(declare-fun lt!1781068 () ListMap!4261)

(assert (=> d!1456402 (invariantList!1197 (toList!4957 lt!1781068))))

(declare-fun e!2884244 () ListMap!4261)

(assert (=> d!1456402 (= lt!1781068 e!2884244)))

(declare-fun c!791509 () Bool)

(assert (=> d!1456402 (= c!791509 ((_ is Cons!51509) (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509)))))

(assert (=> d!1456402 (forall!10811 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509) lambda!191636)))

(assert (=> d!1456402 (= (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509)) lt!1781068)))

(declare-fun b!4623838 () Bool)

(assert (=> b!4623838 (= e!2884244 (addToMapMapFromBucket!957 (_2!29510 (h!57553 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509))) (extractMap!1552 (t!358659 (Cons!51509 (tuple2!52433 hash!414 newBucket!224) Nil!51509)))))))

(declare-fun b!4623839 () Bool)

(assert (=> b!4623839 (= e!2884244 (ListMap!4262 Nil!51508))))

(assert (= (and d!1456402 c!791509) b!4623838))

(assert (= (and d!1456402 (not c!791509)) b!4623839))

(declare-fun m!5463507 () Bool)

(assert (=> d!1456402 m!5463507))

(declare-fun m!5463509 () Bool)

(assert (=> d!1456402 m!5463509))

(declare-fun m!5463511 () Bool)

(assert (=> b!4623838 m!5463511))

(assert (=> b!4623838 m!5463511))

(declare-fun m!5463513 () Bool)

(assert (=> b!4623838 m!5463513))

(assert (=> b!4623481 d!1456402))

(declare-fun d!1456404 () Bool)

(declare-fun e!2884245 () Bool)

(assert (=> d!1456404 e!2884245))

(declare-fun res!1938671 () Bool)

(assert (=> d!1456404 (=> (not res!1938671) (not e!2884245))))

(declare-fun lt!1781071 () ListMap!4261)

(assert (=> d!1456404 (= res!1938671 (contains!14535 lt!1781071 (_1!29509 lt!1780574)))))

(declare-fun lt!1781069 () List!51632)

(assert (=> d!1456404 (= lt!1781071 (ListMap!4262 lt!1781069))))

(declare-fun lt!1781072 () Unit!111641)

(declare-fun lt!1781070 () Unit!111641)

(assert (=> d!1456404 (= lt!1781072 lt!1781070)))

(assert (=> d!1456404 (= (getValueByKey!1439 lt!1781069 (_1!29509 lt!1780574)) (Some!11568 (_2!29509 lt!1780574)))))

(assert (=> d!1456404 (= lt!1781070 (lemmaContainsTupThenGetReturnValue!841 lt!1781069 (_1!29509 lt!1780574) (_2!29509 lt!1780574)))))

(assert (=> d!1456404 (= lt!1781069 (insertNoDuplicatedKeys!349 (toList!4957 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509))) (_1!29509 lt!1780574) (_2!29509 lt!1780574)))))

(assert (=> d!1456404 (= (+!1862 (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)) lt!1780574) lt!1781071)))

(declare-fun b!4623840 () Bool)

(declare-fun res!1938670 () Bool)

(assert (=> b!4623840 (=> (not res!1938670) (not e!2884245))))

(assert (=> b!4623840 (= res!1938670 (= (getValueByKey!1439 (toList!4957 lt!1781071) (_1!29509 lt!1780574)) (Some!11568 (_2!29509 lt!1780574))))))

(declare-fun b!4623841 () Bool)

(assert (=> b!4623841 (= e!2884245 (contains!14539 (toList!4957 lt!1781071) lt!1780574))))

(assert (= (and d!1456404 res!1938671) b!4623840))

(assert (= (and b!4623840 res!1938670) b!4623841))

(declare-fun m!5463515 () Bool)

(assert (=> d!1456404 m!5463515))

(declare-fun m!5463517 () Bool)

(assert (=> d!1456404 m!5463517))

(declare-fun m!5463519 () Bool)

(assert (=> d!1456404 m!5463519))

(declare-fun m!5463521 () Bool)

(assert (=> d!1456404 m!5463521))

(declare-fun m!5463523 () Bool)

(assert (=> b!4623840 m!5463523))

(declare-fun m!5463525 () Bool)

(assert (=> b!4623841 m!5463525))

(assert (=> b!4623481 d!1456404))

(declare-fun bs!1022168 () Bool)

(declare-fun d!1456406 () Bool)

(assert (= bs!1022168 (and d!1456406 d!1456348)))

(declare-fun lambda!191638 () Int)

(assert (=> bs!1022168 (= lambda!191638 lambda!191619)))

(declare-fun bs!1022169 () Bool)

(assert (= bs!1022169 (and d!1456406 d!1456280)))

(assert (=> bs!1022169 (= lambda!191638 lambda!191551)))

(declare-fun bs!1022171 () Bool)

(assert (= bs!1022171 (and d!1456406 d!1456288)))

(assert (=> bs!1022171 (= lambda!191638 lambda!191554)))

(declare-fun bs!1022172 () Bool)

(assert (= bs!1022172 (and d!1456406 d!1456366)))

(assert (=> bs!1022172 (= lambda!191638 lambda!191625)))

(declare-fun bs!1022174 () Bool)

(assert (= bs!1022174 (and d!1456406 d!1456402)))

(assert (=> bs!1022174 (= lambda!191638 lambda!191636)))

(declare-fun bs!1022176 () Bool)

(assert (= bs!1022176 (and d!1456406 d!1456350)))

(assert (=> bs!1022176 (= lambda!191638 lambda!191624)))

(declare-fun bs!1022178 () Bool)

(assert (= bs!1022178 (and d!1456406 b!4623484)))

(assert (=> bs!1022178 (= lambda!191638 lambda!191506)))

(declare-fun bs!1022180 () Bool)

(assert (= bs!1022180 (and d!1456406 d!1456304)))

(assert (=> bs!1022180 (= lambda!191638 lambda!191593)))

(declare-fun lt!1781073 () ListMap!4261)

(assert (=> d!1456406 (invariantList!1197 (toList!4957 lt!1781073))))

(declare-fun e!2884246 () ListMap!4261)

(assert (=> d!1456406 (= lt!1781073 e!2884246)))

(declare-fun c!791510 () Bool)

(assert (=> d!1456406 (= c!791510 ((_ is Cons!51509) (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)))))

(assert (=> d!1456406 (forall!10811 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509) lambda!191638)))

(assert (=> d!1456406 (= (extractMap!1552 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)) lt!1781073)))

(declare-fun b!4623842 () Bool)

(assert (=> b!4623842 (= e!2884246 (addToMapMapFromBucket!957 (_2!29510 (h!57553 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509))) (extractMap!1552 (t!358659 (Cons!51509 (tuple2!52433 hash!414 lt!1780575) Nil!51509)))))))

(declare-fun b!4623843 () Bool)

(assert (=> b!4623843 (= e!2884246 (ListMap!4262 Nil!51508))))

(assert (= (and d!1456406 c!791510) b!4623842))

(assert (= (and d!1456406 (not c!791510)) b!4623843))

(declare-fun m!5463527 () Bool)

(assert (=> d!1456406 m!5463527))

(declare-fun m!5463529 () Bool)

(assert (=> d!1456406 m!5463529))

(declare-fun m!5463531 () Bool)

(assert (=> b!4623842 m!5463531))

(assert (=> b!4623842 m!5463531))

(declare-fun m!5463533 () Bool)

(assert (=> b!4623842 m!5463533))

(assert (=> b!4623481 d!1456406))

(declare-fun b!4623845 () Bool)

(declare-fun e!2884248 () List!51632)

(declare-fun e!2884247 () List!51632)

(assert (=> b!4623845 (= e!2884248 e!2884247)))

(declare-fun c!791511 () Bool)

(assert (=> b!4623845 (= c!791511 ((_ is Cons!51508) lt!1780558))))

(declare-fun d!1456408 () Bool)

(declare-fun lt!1781074 () List!51632)

(assert (=> d!1456408 (not (containsKey!2424 lt!1781074 key!4968))))

(assert (=> d!1456408 (= lt!1781074 e!2884248)))

(declare-fun c!791512 () Bool)

(assert (=> d!1456408 (= c!791512 (and ((_ is Cons!51508) lt!1780558) (= (_1!29509 (h!57552 lt!1780558)) key!4968)))))

(assert (=> d!1456408 (noDuplicateKeys!1496 lt!1780558)))

(assert (=> d!1456408 (= (removePairForKey!1119 lt!1780558 key!4968) lt!1781074)))

(declare-fun b!4623846 () Bool)

(assert (=> b!4623846 (= e!2884247 (Cons!51508 (h!57552 lt!1780558) (removePairForKey!1119 (t!358658 lt!1780558) key!4968)))))

(declare-fun b!4623844 () Bool)

(assert (=> b!4623844 (= e!2884248 (t!358658 lt!1780558))))

(declare-fun b!4623847 () Bool)

(assert (=> b!4623847 (= e!2884247 Nil!51508)))

(assert (= (and d!1456408 c!791512) b!4623844))

(assert (= (and d!1456408 (not c!791512)) b!4623845))

(assert (= (and b!4623845 c!791511) b!4623846))

(assert (= (and b!4623845 (not c!791511)) b!4623847))

(declare-fun m!5463535 () Bool)

(assert (=> d!1456408 m!5463535))

(assert (=> d!1456408 m!5463181))

(declare-fun m!5463537 () Bool)

(assert (=> b!4623846 m!5463537))

(assert (=> b!4623479 d!1456408))

(declare-fun d!1456410 () Bool)

(assert (=> d!1456410 (= (tail!8131 newBucket!224) (t!358658 newBucket!224))))

(assert (=> b!4623479 d!1456410))

(declare-fun d!1456412 () Bool)

(assert (=> d!1456412 (= (tail!8131 oldBucket!40) (t!358658 oldBucket!40))))

(assert (=> b!4623479 d!1456412))

(declare-fun bs!1022189 () Bool)

(declare-fun d!1456414 () Bool)

(assert (= bs!1022189 (and d!1456414 b!4623703)))

(declare-fun lambda!191643 () Int)

(assert (=> bs!1022189 (not (= lambda!191643 lambda!191602))))

(declare-fun bs!1022192 () Bool)

(assert (= bs!1022192 (and d!1456414 b!4623742)))

(assert (=> bs!1022192 (not (= lambda!191643 lambda!191617))))

(declare-fun bs!1022194 () Bool)

(assert (= bs!1022194 (and d!1456414 b!4623721)))

(assert (=> bs!1022194 (not (= lambda!191643 lambda!191611))))

(declare-fun bs!1022196 () Bool)

(assert (= bs!1022196 (and d!1456414 b!4623699)))

(assert (=> bs!1022196 (not (= lambda!191643 lambda!191600))))

(declare-fun bs!1022198 () Bool)

(assert (= bs!1022198 (and d!1456414 b!4623720)))

(assert (=> bs!1022198 (not (= lambda!191643 lambda!191607))))

(declare-fun bs!1022199 () Bool)

(assert (= bs!1022199 (and d!1456414 d!1456344)))

(assert (=> bs!1022199 (not (= lambda!191643 lambda!191618))))

(declare-fun bs!1022201 () Bool)

(assert (= bs!1022201 (and d!1456414 d!1456244)))

(assert (=> bs!1022201 (not (= lambda!191643 lambda!191548))))

(declare-fun bs!1022202 () Bool)

(assert (= bs!1022202 (and d!1456414 b!4623704)))

(assert (=> bs!1022202 (not (= lambda!191643 lambda!191603))))

(assert (=> bs!1022196 (not (= lambda!191643 lambda!191599))))

(declare-fun bs!1022204 () Bool)

(assert (= bs!1022204 (and d!1456414 b!4623592)))

(assert (=> bs!1022204 (not (= lambda!191643 lambda!191547))))

(assert (=> bs!1022202 (not (= lambda!191643 lambda!191604))))

(assert (=> bs!1022194 (not (= lambda!191643 lambda!191608))))

(assert (=> bs!1022204 (not (= lambda!191643 lambda!191546))))

(declare-fun bs!1022206 () Bool)

(assert (= bs!1022206 (and d!1456414 d!1456330)))

(assert (=> bs!1022206 (not (= lambda!191643 lambda!191614))))

(declare-fun bs!1022207 () Bool)

(assert (= bs!1022207 (and d!1456414 b!4623698)))

(assert (=> bs!1022207 (not (= lambda!191643 lambda!191598))))

(declare-fun bs!1022208 () Bool)

(assert (= bs!1022208 (and d!1456414 d!1456324)))

(assert (=> bs!1022208 (not (= lambda!191643 lambda!191605))))

(assert (=> bs!1022192 (not (= lambda!191643 lambda!191616))))

(declare-fun bs!1022211 () Bool)

(assert (= bs!1022211 (and d!1456414 b!4623591)))

(assert (=> bs!1022211 (not (= lambda!191643 lambda!191545))))

(declare-fun bs!1022213 () Bool)

(assert (= bs!1022213 (and d!1456414 b!4623741)))

(assert (=> bs!1022213 (not (= lambda!191643 lambda!191615))))

(declare-fun bs!1022215 () Bool)

(assert (= bs!1022215 (and d!1456414 d!1456318)))

(assert (=> bs!1022215 (not (= lambda!191643 lambda!191601))))

(assert (=> d!1456414 true))

(assert (=> d!1456414 true))

(assert (=> d!1456414 (= (allKeysSameHash!1350 newBucket!224 hash!414 hashF!1389) (forall!10809 newBucket!224 lambda!191643))))

(declare-fun bs!1022219 () Bool)

(assert (= bs!1022219 d!1456414))

(declare-fun m!5463569 () Bool)

(assert (=> bs!1022219 m!5463569))

(assert (=> b!4623490 d!1456414))

(declare-fun d!1456418 () Bool)

(declare-fun res!1938679 () Bool)

(declare-fun e!2884256 () Bool)

(assert (=> d!1456418 (=> res!1938679 e!2884256)))

(assert (=> d!1456418 (= res!1938679 (not ((_ is Cons!51508) newBucket!224)))))

(assert (=> d!1456418 (= (noDuplicateKeys!1496 newBucket!224) e!2884256)))

(declare-fun b!4623861 () Bool)

(declare-fun e!2884257 () Bool)

(assert (=> b!4623861 (= e!2884256 e!2884257)))

(declare-fun res!1938680 () Bool)

(assert (=> b!4623861 (=> (not res!1938680) (not e!2884257))))

(assert (=> b!4623861 (= res!1938680 (not (containsKey!2424 (t!358658 newBucket!224) (_1!29509 (h!57552 newBucket!224)))))))

(declare-fun b!4623862 () Bool)

(assert (=> b!4623862 (= e!2884257 (noDuplicateKeys!1496 (t!358658 newBucket!224)))))

(assert (= (and d!1456418 (not res!1938679)) b!4623861))

(assert (= (and b!4623861 res!1938680) b!4623862))

(declare-fun m!5463571 () Bool)

(assert (=> b!4623861 m!5463571))

(declare-fun m!5463573 () Bool)

(assert (=> b!4623862 m!5463573))

(assert (=> b!4623478 d!1456418))

(declare-fun bs!1022225 () Bool)

(declare-fun d!1456420 () Bool)

(assert (= bs!1022225 (and d!1456420 b!4623703)))

(declare-fun lambda!191646 () Int)

(assert (=> bs!1022225 (not (= lambda!191646 lambda!191602))))

(declare-fun bs!1022226 () Bool)

(assert (= bs!1022226 (and d!1456420 b!4623742)))

(assert (=> bs!1022226 (not (= lambda!191646 lambda!191617))))

(declare-fun bs!1022227 () Bool)

(assert (= bs!1022227 (and d!1456420 b!4623721)))

(assert (=> bs!1022227 (not (= lambda!191646 lambda!191611))))

(declare-fun bs!1022228 () Bool)

(assert (= bs!1022228 (and d!1456420 b!4623699)))

(assert (=> bs!1022228 (not (= lambda!191646 lambda!191600))))

(declare-fun bs!1022229 () Bool)

(assert (= bs!1022229 (and d!1456420 b!4623720)))

(assert (=> bs!1022229 (not (= lambda!191646 lambda!191607))))

(declare-fun bs!1022231 () Bool)

(assert (= bs!1022231 (and d!1456420 d!1456344)))

(assert (=> bs!1022231 (not (= lambda!191646 lambda!191618))))

(declare-fun bs!1022232 () Bool)

(assert (= bs!1022232 (and d!1456420 d!1456244)))

(assert (=> bs!1022232 (not (= lambda!191646 lambda!191548))))

(declare-fun bs!1022234 () Bool)

(assert (= bs!1022234 (and d!1456420 d!1456414)))

(assert (=> bs!1022234 (= lambda!191646 lambda!191643)))

(declare-fun bs!1022236 () Bool)

(assert (= bs!1022236 (and d!1456420 b!4623704)))

(assert (=> bs!1022236 (not (= lambda!191646 lambda!191603))))

(assert (=> bs!1022228 (not (= lambda!191646 lambda!191599))))

(declare-fun bs!1022239 () Bool)

(assert (= bs!1022239 (and d!1456420 b!4623592)))

(assert (=> bs!1022239 (not (= lambda!191646 lambda!191547))))

(assert (=> bs!1022236 (not (= lambda!191646 lambda!191604))))

(assert (=> bs!1022227 (not (= lambda!191646 lambda!191608))))

(assert (=> bs!1022239 (not (= lambda!191646 lambda!191546))))

(declare-fun bs!1022243 () Bool)

(assert (= bs!1022243 (and d!1456420 d!1456330)))

(assert (=> bs!1022243 (not (= lambda!191646 lambda!191614))))

(declare-fun bs!1022245 () Bool)

(assert (= bs!1022245 (and d!1456420 b!4623698)))

(assert (=> bs!1022245 (not (= lambda!191646 lambda!191598))))

(declare-fun bs!1022247 () Bool)

(assert (= bs!1022247 (and d!1456420 d!1456324)))

(assert (=> bs!1022247 (not (= lambda!191646 lambda!191605))))

(assert (=> bs!1022226 (not (= lambda!191646 lambda!191616))))

(declare-fun bs!1022249 () Bool)

(assert (= bs!1022249 (and d!1456420 b!4623591)))

(assert (=> bs!1022249 (not (= lambda!191646 lambda!191545))))

(declare-fun bs!1022250 () Bool)

(assert (= bs!1022250 (and d!1456420 b!4623741)))

(assert (=> bs!1022250 (not (= lambda!191646 lambda!191615))))

(declare-fun bs!1022252 () Bool)

(assert (= bs!1022252 (and d!1456420 d!1456318)))

(assert (=> bs!1022252 (not (= lambda!191646 lambda!191601))))

(assert (=> d!1456420 true))

(assert (=> d!1456420 true))

(assert (=> d!1456420 (= (allKeysSameHash!1350 oldBucket!40 hash!414 hashF!1389) (forall!10809 oldBucket!40 lambda!191646))))

(declare-fun bs!1022254 () Bool)

(assert (= bs!1022254 d!1456420))

(declare-fun m!5463575 () Bool)

(assert (=> bs!1022254 m!5463575))

(assert (=> b!4623487 d!1456420))

(declare-fun d!1456422 () Bool)

(declare-fun res!1938681 () Bool)

(declare-fun e!2884258 () Bool)

(assert (=> d!1456422 (=> res!1938681 e!2884258)))

(assert (=> d!1456422 (= res!1938681 (not ((_ is Cons!51508) oldBucket!40)))))

(assert (=> d!1456422 (= (noDuplicateKeys!1496 oldBucket!40) e!2884258)))

(declare-fun b!4623863 () Bool)

(declare-fun e!2884259 () Bool)

(assert (=> b!4623863 (= e!2884258 e!2884259)))

(declare-fun res!1938682 () Bool)

(assert (=> b!4623863 (=> (not res!1938682) (not e!2884259))))

(assert (=> b!4623863 (= res!1938682 (not (containsKey!2424 (t!358658 oldBucket!40) (_1!29509 (h!57552 oldBucket!40)))))))

(declare-fun b!4623864 () Bool)

(assert (=> b!4623864 (= e!2884259 (noDuplicateKeys!1496 (t!358658 oldBucket!40)))))

(assert (= (and d!1456422 (not res!1938681)) b!4623863))

(assert (= (and b!4623863 res!1938682) b!4623864))

(declare-fun m!5463577 () Bool)

(assert (=> b!4623863 m!5463577))

(assert (=> b!4623864 m!5462843))

(assert (=> start!463204 d!1456422))

(declare-fun b!4623865 () Bool)

(declare-fun e!2884262 () List!51635)

(assert (=> b!4623865 (= e!2884262 (getKeysList!649 (toList!4957 lt!1780559)))))

(declare-fun b!4623866 () Bool)

(declare-fun e!2884265 () Bool)

(declare-fun e!2884264 () Bool)

(assert (=> b!4623866 (= e!2884265 e!2884264)))

(declare-fun res!1938685 () Bool)

(assert (=> b!4623866 (=> (not res!1938685) (not e!2884264))))

(assert (=> b!4623866 (= res!1938685 (isDefined!8835 (getValueByKey!1439 (toList!4957 lt!1780559) key!4968)))))

(declare-fun d!1456424 () Bool)

(assert (=> d!1456424 e!2884265))

(declare-fun res!1938683 () Bool)

(assert (=> d!1456424 (=> res!1938683 e!2884265)))

(declare-fun e!2884260 () Bool)

(assert (=> d!1456424 (= res!1938683 e!2884260)))

(declare-fun res!1938684 () Bool)

(assert (=> d!1456424 (=> (not res!1938684) (not e!2884260))))

(declare-fun lt!1781101 () Bool)

(assert (=> d!1456424 (= res!1938684 (not lt!1781101))))

(declare-fun lt!1781096 () Bool)

(assert (=> d!1456424 (= lt!1781101 lt!1781096)))

(declare-fun lt!1781097 () Unit!111641)

(declare-fun e!2884263 () Unit!111641)

(assert (=> d!1456424 (= lt!1781097 e!2884263)))

(declare-fun c!791514 () Bool)

(assert (=> d!1456424 (= c!791514 lt!1781096)))

(assert (=> d!1456424 (= lt!1781096 (containsKey!2428 (toList!4957 lt!1780559) key!4968))))

(assert (=> d!1456424 (= (contains!14535 lt!1780559 key!4968) lt!1781101)))

(declare-fun b!4623867 () Bool)

(declare-fun lt!1781099 () Unit!111641)

(assert (=> b!4623867 (= e!2884263 lt!1781099)))

(declare-fun lt!1781100 () Unit!111641)

(assert (=> b!4623867 (= lt!1781100 (lemmaContainsKeyImpliesGetValueByKeyDefined!1342 (toList!4957 lt!1780559) key!4968))))

(assert (=> b!4623867 (isDefined!8835 (getValueByKey!1439 (toList!4957 lt!1780559) key!4968))))

(declare-fun lt!1781103 () Unit!111641)

(assert (=> b!4623867 (= lt!1781103 lt!1781100)))

(assert (=> b!4623867 (= lt!1781099 (lemmaInListThenGetKeysListContains!644 (toList!4957 lt!1780559) key!4968))))

(declare-fun call!322498 () Bool)

(assert (=> b!4623867 call!322498))

(declare-fun b!4623868 () Bool)

(assert (=> b!4623868 false))

(declare-fun lt!1781102 () Unit!111641)

(declare-fun lt!1781098 () Unit!111641)

(assert (=> b!4623868 (= lt!1781102 lt!1781098)))

(assert (=> b!4623868 (containsKey!2428 (toList!4957 lt!1780559) key!4968)))

(assert (=> b!4623868 (= lt!1781098 (lemmaInGetKeysListThenContainsKey!648 (toList!4957 lt!1780559) key!4968))))

(declare-fun e!2884261 () Unit!111641)

(declare-fun Unit!111750 () Unit!111641)

(assert (=> b!4623868 (= e!2884261 Unit!111750)))

(declare-fun b!4623869 () Bool)

(declare-fun Unit!111751 () Unit!111641)

(assert (=> b!4623869 (= e!2884261 Unit!111751)))

(declare-fun b!4623870 () Bool)

(assert (=> b!4623870 (= e!2884262 (keys!18138 lt!1780559))))

(declare-fun bm!322493 () Bool)

(assert (=> bm!322493 (= call!322498 (contains!14541 e!2884262 key!4968))))

(declare-fun c!791516 () Bool)

(assert (=> bm!322493 (= c!791516 c!791514)))

(declare-fun b!4623871 () Bool)

(assert (=> b!4623871 (= e!2884263 e!2884261)))

(declare-fun c!791515 () Bool)

(assert (=> b!4623871 (= c!791515 call!322498)))

(declare-fun b!4623872 () Bool)

(assert (=> b!4623872 (= e!2884260 (not (contains!14541 (keys!18138 lt!1780559) key!4968)))))

(declare-fun b!4623873 () Bool)

(assert (=> b!4623873 (= e!2884264 (contains!14541 (keys!18138 lt!1780559) key!4968))))

(assert (= (and d!1456424 c!791514) b!4623867))

(assert (= (and d!1456424 (not c!791514)) b!4623871))

(assert (= (and b!4623871 c!791515) b!4623868))

(assert (= (and b!4623871 (not c!791515)) b!4623869))

(assert (= (or b!4623867 b!4623871) bm!322493))

(assert (= (and bm!322493 c!791516) b!4623865))

(assert (= (and bm!322493 (not c!791516)) b!4623870))

(assert (= (and d!1456424 res!1938684) b!4623872))

(assert (= (and d!1456424 (not res!1938683)) b!4623866))

(assert (= (and b!4623866 res!1938685) b!4623873))

(declare-fun m!5463579 () Bool)

(assert (=> b!4623867 m!5463579))

(declare-fun m!5463581 () Bool)

(assert (=> b!4623867 m!5463581))

(assert (=> b!4623867 m!5463581))

(declare-fun m!5463583 () Bool)

(assert (=> b!4623867 m!5463583))

(declare-fun m!5463585 () Bool)

(assert (=> b!4623867 m!5463585))

(declare-fun m!5463587 () Bool)

(assert (=> b!4623868 m!5463587))

(declare-fun m!5463591 () Bool)

(assert (=> b!4623868 m!5463591))

(assert (=> b!4623866 m!5463581))

(assert (=> b!4623866 m!5463581))

(assert (=> b!4623866 m!5463583))

(declare-fun m!5463597 () Bool)

(assert (=> b!4623872 m!5463597))

(assert (=> b!4623872 m!5463597))

(declare-fun m!5463601 () Bool)

(assert (=> b!4623872 m!5463601))

(declare-fun m!5463605 () Bool)

(assert (=> bm!322493 m!5463605))

(declare-fun m!5463607 () Bool)

(assert (=> b!4623865 m!5463607))

(assert (=> b!4623873 m!5463597))

(assert (=> b!4623873 m!5463597))

(assert (=> b!4623873 m!5463601))

(assert (=> b!4623870 m!5463597))

(assert (=> d!1456424 m!5463587))

(assert (=> b!4623477 d!1456424))

(declare-fun bs!1022255 () Bool)

(declare-fun d!1456426 () Bool)

(assert (= bs!1022255 (and d!1456426 d!1456348)))

(declare-fun lambda!191648 () Int)

(assert (=> bs!1022255 (= lambda!191648 lambda!191619)))

(declare-fun bs!1022256 () Bool)

(assert (= bs!1022256 (and d!1456426 d!1456406)))

(assert (=> bs!1022256 (= lambda!191648 lambda!191638)))

(declare-fun bs!1022257 () Bool)

(assert (= bs!1022257 (and d!1456426 d!1456280)))

(assert (=> bs!1022257 (= lambda!191648 lambda!191551)))

(declare-fun bs!1022258 () Bool)

(assert (= bs!1022258 (and d!1456426 d!1456288)))

(assert (=> bs!1022258 (= lambda!191648 lambda!191554)))

(declare-fun bs!1022259 () Bool)

(assert (= bs!1022259 (and d!1456426 d!1456366)))

(assert (=> bs!1022259 (= lambda!191648 lambda!191625)))

(declare-fun bs!1022260 () Bool)

(assert (= bs!1022260 (and d!1456426 d!1456402)))

(assert (=> bs!1022260 (= lambda!191648 lambda!191636)))

(declare-fun bs!1022262 () Bool)

(assert (= bs!1022262 (and d!1456426 d!1456350)))

(assert (=> bs!1022262 (= lambda!191648 lambda!191624)))

(declare-fun bs!1022263 () Bool)

(assert (= bs!1022263 (and d!1456426 b!4623484)))

(assert (=> bs!1022263 (= lambda!191648 lambda!191506)))

(declare-fun bs!1022264 () Bool)

(assert (= bs!1022264 (and d!1456426 d!1456304)))

(assert (=> bs!1022264 (= lambda!191648 lambda!191593)))

(declare-fun lt!1781104 () ListMap!4261)

(assert (=> d!1456426 (invariantList!1197 (toList!4957 lt!1781104))))

(declare-fun e!2884266 () ListMap!4261)

(assert (=> d!1456426 (= lt!1781104 e!2884266)))

(declare-fun c!791517 () Bool)

(assert (=> d!1456426 (= c!791517 ((_ is Cons!51509) lt!1780564))))

(assert (=> d!1456426 (forall!10811 lt!1780564 lambda!191648)))

(assert (=> d!1456426 (= (extractMap!1552 lt!1780564) lt!1781104)))

(declare-fun b!4623874 () Bool)

(assert (=> b!4623874 (= e!2884266 (addToMapMapFromBucket!957 (_2!29510 (h!57553 lt!1780564)) (extractMap!1552 (t!358659 lt!1780564))))))

(declare-fun b!4623875 () Bool)

(assert (=> b!4623875 (= e!2884266 (ListMap!4262 Nil!51508))))

(assert (= (and d!1456426 c!791517) b!4623874))

(assert (= (and d!1456426 (not c!791517)) b!4623875))

(declare-fun m!5463635 () Bool)

(assert (=> d!1456426 m!5463635))

(declare-fun m!5463637 () Bool)

(assert (=> d!1456426 m!5463637))

(declare-fun m!5463639 () Bool)

(assert (=> b!4623874 m!5463639))

(assert (=> b!4623874 m!5463639))

(declare-fun m!5463641 () Bool)

(assert (=> b!4623874 m!5463641))

(assert (=> b!4623477 d!1456426))

(declare-fun tp!1342026 () Bool)

(declare-fun e!2884272 () Bool)

(declare-fun b!4623885 () Bool)

(assert (=> b!4623885 (= e!2884272 (and tp_is_empty!29277 tp_is_empty!29279 tp!1342026))))

(assert (=> b!4623488 (= tp!1342022 e!2884272)))

(assert (= (and b!4623488 ((_ is Cons!51508) (t!358658 oldBucket!40))) b!4623885))

(declare-fun e!2884273 () Bool)

(declare-fun b!4623886 () Bool)

(declare-fun tp!1342027 () Bool)

(assert (=> b!4623886 (= e!2884273 (and tp_is_empty!29277 tp_is_empty!29279 tp!1342027))))

(assert (=> b!4623476 (= tp!1342023 e!2884273)))

(assert (= (and b!4623476 ((_ is Cons!51508) (t!358658 newBucket!224))) b!4623886))

(declare-fun b_lambda!170697 () Bool)

(assert (= b_lambda!170695 (or b!4623484 b_lambda!170697)))

(declare-fun bs!1022276 () Bool)

(declare-fun d!1456432 () Bool)

(assert (= bs!1022276 (and d!1456432 b!4623484)))

(assert (=> bs!1022276 (= (dynLambda!21492 lambda!191506 lt!1780563) (noDuplicateKeys!1496 (_2!29510 lt!1780563)))))

(declare-fun m!5463643 () Bool)

(assert (=> bs!1022276 m!5463643))

(assert (=> d!1456290 d!1456432))

(check-sat (not d!1456374) (not bm!322469) (not b!4623501) (not b!4623630) (not b!4623868) (not d!1456348) (not d!1456420) (not bm!322472) (not d!1456302) (not bm!322473) (not d!1456294) (not b!4623822) (not d!1456284) (not b!4623820) (not b!4623873) (not b!4623738) (not bm!322467) (not d!1456280) (not b!4623704) (not d!1456400) (not b!4623791) (not b!4623695) (not d!1456244) (not b!4623680) (not d!1456310) (not bm!322454) (not b!4623702) (not bm!322453) (not d!1456298) (not d!1456384) (not b!4623739) (not d!1456330) (not bm!322471) tp_is_empty!29279 (not b!4623827) (not b!4623718) (not b!4623599) (not bm!322468) (not b!4623828) (not d!1456414) (not bm!322465) (not d!1456282) (not b!4623872) (not b_lambda!170697) (not d!1456426) (not d!1456242) (not b!4623867) (not b!4623740) (not d!1456382) (not b!4623696) (not b!4623743) (not b!4623842) (not bm!322470) (not bm!322466) (not b!4623789) (not b!4623863) (not b!4623874) (not d!1456290) (not b!4623692) (not d!1456404) (not b!4623679) tp_is_empty!29277 (not b!4623864) (not d!1456308) (not d!1456312) (not b!4623588) (not d!1456288) (not d!1456406) (not b!4623836) (not b!4623617) (not bm!322455) (not d!1456344) (not d!1456318) (not d!1456350) (not b!4623838) (not b!4623701) (not b!4623619) (not b!4623719) (not b!4623840) (not d!1456402) (not d!1456314) (not b!4623841) (not bm!322475) (not b!4623846) (not bm!322486) (not b!4623642) (not b!4623825) (not b!4623649) (not b!4623865) (not b!4623792) (not bs!1022276) (not b!4623862) (not b!4623885) (not b!4623700) (not bm!322474) (not d!1456378) (not b!4623622) (not d!1456368) (not d!1456424) (not d!1456324) (not b!4623697) (not b!4623678) (not b!4623699) (not b!4623590) (not b!4623861) (not b!4623623) (not bm!322493) (not b!4623821) (not b!4623651) (not d!1456376) (not bm!322476) (not b!4623633) (not d!1456304) (not b!4623677) (not d!1456398) (not b!4623742) (not b!4623787) (not b!4623866) (not b!4623721) (not d!1456408) (not b!4623823) (not b!4623790) (not b!4623691) (not d!1456300) (not b!4623717) (not b!4623886) (not b!4623589) (not b!4623870) (not d!1456296) (not d!1456366) (not b!4623635) (not b!4623592) (not b!4623618))
(check-sat)
