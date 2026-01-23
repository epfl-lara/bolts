; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473812 () Bool)

(assert start!473812)

(declare-fun b!4686994 () Bool)

(declare-fun res!1976431 () Bool)

(declare-fun e!2924067 () Bool)

(assert (=> b!4686994 (=> (not res!1976431) (not e!2924067))))

(declare-datatypes ((K!13750 0))(
  ( (K!13751 (val!19271 Int)) )
))
(declare-datatypes ((V!13996 0))(
  ( (V!13997 (val!19272 Int)) )
))
(declare-datatypes ((tuple2!53754 0))(
  ( (tuple2!53755 (_1!30171 K!13750) (_2!30171 V!13996)) )
))
(declare-datatypes ((List!52495 0))(
  ( (Nil!52371) (Cons!52371 (h!58606 tuple2!53754) (t!359661 List!52495)) )
))
(declare-datatypes ((tuple2!53756 0))(
  ( (tuple2!53757 (_1!30172 (_ BitVec 64)) (_2!30172 List!52495)) )
))
(declare-datatypes ((List!52496 0))(
  ( (Nil!52372) (Cons!52372 (h!58607 tuple2!53756) (t!359662 List!52496)) )
))
(declare-datatypes ((ListLongMap!4099 0))(
  ( (ListLongMap!4100 (toList!5569 List!52496)) )
))
(declare-fun lm!2023 () ListLongMap!4099)

(declare-datatypes ((Hashable!6209 0))(
  ( (HashableExt!6208 (__x!31912 Int)) )
))
(declare-fun hashF!1323 () Hashable!6209)

(declare-fun allKeysSameHashInMap!1754 (ListLongMap!4099 Hashable!6209) Bool)

(assert (=> b!4686994 (= res!1976431 (allKeysSameHashInMap!1754 lm!2023 hashF!1323))))

(declare-fun b!4686995 () Bool)

(declare-fun res!1976439 () Bool)

(declare-fun e!2924074 () Bool)

(assert (=> b!4686995 (=> (not res!1976439) (not e!2924074))))

(declare-fun newBucket!218 () List!52495)

(declare-fun noDuplicateKeys!1840 (List!52495) Bool)

(assert (=> b!4686995 (= res!1976439 (noDuplicateKeys!1840 newBucket!218))))

(declare-fun b!4686996 () Bool)

(declare-fun res!1976429 () Bool)

(assert (=> b!4686996 (=> (not res!1976429) (not e!2924074))))

(declare-fun oldBucket!34 () List!52495)

(assert (=> b!4686996 (= res!1976429 (noDuplicateKeys!1840 oldBucket!34))))

(declare-fun res!1976432 () Bool)

(assert (=> start!473812 (=> (not res!1976432) (not e!2924074))))

(declare-fun lambda!206277 () Int)

(declare-fun forall!11297 (List!52496 Int) Bool)

(assert (=> start!473812 (= res!1976432 (forall!11297 (toList!5569 lm!2023) lambda!206277))))

(assert (=> start!473812 e!2924074))

(declare-fun e!2924070 () Bool)

(declare-fun inv!67624 (ListLongMap!4099) Bool)

(assert (=> start!473812 (and (inv!67624 lm!2023) e!2924070)))

(declare-fun tp_is_empty!30653 () Bool)

(assert (=> start!473812 tp_is_empty!30653))

(declare-fun e!2924068 () Bool)

(assert (=> start!473812 e!2924068))

(assert (=> start!473812 true))

(declare-fun e!2924076 () Bool)

(assert (=> start!473812 e!2924076))

(declare-fun b!4686997 () Bool)

(declare-fun res!1976434 () Bool)

(assert (=> b!4686997 (=> (not res!1976434) (not e!2924074))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1666 (List!52495 (_ BitVec 64) Hashable!6209) Bool)

(assert (=> b!4686997 (= res!1976434 (allKeysSameHash!1666 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4686998 () Bool)

(declare-fun res!1976428 () Bool)

(assert (=> b!4686998 (=> (not res!1976428) (not e!2924067))))

(assert (=> b!4686998 (= res!1976428 (allKeysSameHash!1666 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4686999 () Bool)

(declare-fun e!2924072 () Bool)

(assert (=> b!4686999 (= e!2924072 e!2924067)))

(declare-fun res!1976437 () Bool)

(assert (=> b!4686999 (=> (not res!1976437) (not e!2924067))))

(declare-fun lt!1846146 () (_ BitVec 64))

(assert (=> b!4686999 (= res!1976437 (= lt!1846146 hash!405))))

(declare-fun key!4653 () K!13750)

(declare-fun hash!4041 (Hashable!6209 K!13750) (_ BitVec 64))

(assert (=> b!4686999 (= lt!1846146 (hash!4041 hashF!1323 key!4653))))

(declare-fun b!4687000 () Bool)

(declare-fun res!1976427 () Bool)

(assert (=> b!4687000 (=> (not res!1976427) (not e!2924074))))

(declare-fun removePairForKey!1435 (List!52495 K!13750) List!52495)

(assert (=> b!4687000 (= res!1976427 (= (removePairForKey!1435 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4687001 () Bool)

(declare-fun e!2924075 () Bool)

(assert (=> b!4687001 (= e!2924067 e!2924075)))

(declare-fun res!1976433 () Bool)

(assert (=> b!4687001 (=> (not res!1976433) (not e!2924075))))

(declare-fun lt!1846151 () tuple2!53756)

(declare-fun head!9943 (List!52496) tuple2!53756)

(assert (=> b!4687001 (= res!1976433 (= (head!9943 (toList!5569 lm!2023)) lt!1846151))))

(assert (=> b!4687001 (= lt!1846151 (tuple2!53757 hash!405 oldBucket!34))))

(declare-fun b!4687002 () Bool)

(declare-fun tp!1345689 () Bool)

(declare-fun tp_is_empty!30655 () Bool)

(assert (=> b!4687002 (= e!2924076 (and tp_is_empty!30653 tp_is_empty!30655 tp!1345689))))

(declare-fun b!4687003 () Bool)

(declare-fun tp!1345691 () Bool)

(assert (=> b!4687003 (= e!2924070 tp!1345691)))

(declare-fun b!4687004 () Bool)

(declare-fun tp!1345690 () Bool)

(assert (=> b!4687004 (= e!2924068 (and tp_is_empty!30653 tp_is_empty!30655 tp!1345690))))

(declare-fun b!4687005 () Bool)

(declare-fun e!2924071 () Bool)

(declare-fun e!2924073 () Bool)

(assert (=> b!4687005 (= e!2924071 e!2924073)))

(declare-fun res!1976435 () Bool)

(assert (=> b!4687005 (=> res!1976435 e!2924073)))

(declare-fun lt!1846157 () List!52495)

(declare-fun lt!1846149 () List!52495)

(assert (=> b!4687005 (= res!1976435 (not (= (removePairForKey!1435 lt!1846149 key!4653) lt!1846157)))))

(declare-fun tail!8552 (List!52495) List!52495)

(assert (=> b!4687005 (= lt!1846157 (tail!8552 newBucket!218))))

(assert (=> b!4687005 (= lt!1846149 (tail!8552 oldBucket!34))))

(declare-fun b!4687006 () Bool)

(declare-fun e!2924069 () Bool)

(assert (=> b!4687006 (= e!2924069 e!2924071)))

(declare-fun res!1976426 () Bool)

(assert (=> b!4687006 (=> res!1976426 e!2924071)))

(declare-fun containsKey!3019 (List!52495 K!13750) Bool)

(assert (=> b!4687006 (= res!1976426 (not (containsKey!3019 (t!359661 oldBucket!34) key!4653)))))

(assert (=> b!4687006 (containsKey!3019 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123397 0))(
  ( (Unit!123398) )
))
(declare-fun lt!1846143 () Unit!123397)

(declare-fun lemmaGetPairDefinedThenContainsKey!192 (List!52495 K!13750 Hashable!6209) Unit!123397)

(assert (=> b!4687006 (= lt!1846143 (lemmaGetPairDefinedThenContainsKey!192 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1846144 () List!52495)

(declare-datatypes ((Option!12043 0))(
  ( (None!12042) (Some!12042 (v!46437 tuple2!53754)) )
))
(declare-fun isDefined!9298 (Option!12043) Bool)

(declare-fun getPair!444 (List!52495 K!13750) Option!12043)

(assert (=> b!4687006 (isDefined!9298 (getPair!444 lt!1846144 key!4653))))

(declare-fun lt!1846155 () Unit!123397)

(declare-fun lt!1846145 () tuple2!53756)

(declare-fun forallContained!3404 (List!52496 Int tuple2!53756) Unit!123397)

(assert (=> b!4687006 (= lt!1846155 (forallContained!3404 (toList!5569 lm!2023) lambda!206277 lt!1846145))))

(declare-fun contains!15546 (List!52496 tuple2!53756) Bool)

(assert (=> b!4687006 (contains!15546 (toList!5569 lm!2023) lt!1846145)))

(assert (=> b!4687006 (= lt!1846145 (tuple2!53757 lt!1846146 lt!1846144))))

(declare-fun lt!1846141 () Unit!123397)

(declare-fun lemmaGetValueImpliesTupleContained!249 (ListLongMap!4099 (_ BitVec 64) List!52495) Unit!123397)

(assert (=> b!4687006 (= lt!1846141 (lemmaGetValueImpliesTupleContained!249 lm!2023 lt!1846146 lt!1846144))))

(declare-fun apply!12323 (ListLongMap!4099 (_ BitVec 64)) List!52495)

(assert (=> b!4687006 (= lt!1846144 (apply!12323 lm!2023 lt!1846146))))

(declare-fun contains!15547 (ListLongMap!4099 (_ BitVec 64)) Bool)

(assert (=> b!4687006 (contains!15547 lm!2023 lt!1846146)))

(declare-fun lt!1846158 () Unit!123397)

(declare-fun lemmaInGenMapThenLongMapContainsHash!650 (ListLongMap!4099 K!13750 Hashable!6209) Unit!123397)

(assert (=> b!4687006 (= lt!1846158 (lemmaInGenMapThenLongMapContainsHash!650 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1846150 () Unit!123397)

(declare-fun lemmaInGenMapThenGetPairDefined!240 (ListLongMap!4099 K!13750 Hashable!6209) Unit!123397)

(assert (=> b!4687006 (= lt!1846150 (lemmaInGenMapThenGetPairDefined!240 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4687007 () Bool)

(assert (=> b!4687007 (= e!2924074 e!2924072)))

(declare-fun res!1976438 () Bool)

(assert (=> b!4687007 (=> (not res!1976438) (not e!2924072))))

(declare-datatypes ((ListMap!4933 0))(
  ( (ListMap!4934 (toList!5570 List!52495)) )
))
(declare-fun lt!1846140 () ListMap!4933)

(declare-fun contains!15548 (ListMap!4933 K!13750) Bool)

(assert (=> b!4687007 (= res!1976438 (contains!15548 lt!1846140 key!4653))))

(declare-fun extractMap!1866 (List!52496) ListMap!4933)

(assert (=> b!4687007 (= lt!1846140 (extractMap!1866 (toList!5569 lm!2023)))))

(declare-fun b!4687008 () Bool)

(assert (=> b!4687008 (= e!2924073 (forall!11297 (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023))) lambda!206277))))

(declare-fun lt!1846152 () tuple2!53754)

(declare-fun lt!1846156 () ListMap!4933)

(declare-fun eq!999 (ListMap!4933 ListMap!4933) Bool)

(declare-fun addToMapMapFromBucket!1272 (List!52495 ListMap!4933) ListMap!4933)

(declare-fun +!2124 (ListMap!4933 tuple2!53754) ListMap!4933)

(assert (=> b!4687008 (eq!999 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846152 lt!1846157) lt!1846156) (+!2124 (addToMapMapFromBucket!1272 lt!1846157 lt!1846156) lt!1846152))))

(declare-fun lt!1846154 () Unit!123397)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!248 (tuple2!53754 List!52495 ListMap!4933) Unit!123397)

(assert (=> b!4687008 (= lt!1846154 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!248 lt!1846152 lt!1846157 lt!1846156))))

(declare-fun head!9944 (List!52495) tuple2!53754)

(assert (=> b!4687008 (= lt!1846152 (head!9944 newBucket!218))))

(declare-fun lt!1846147 () tuple2!53754)

(assert (=> b!4687008 (eq!999 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846147 lt!1846149) lt!1846156) (+!2124 (addToMapMapFromBucket!1272 lt!1846149 lt!1846156) lt!1846147))))

(declare-fun lt!1846148 () Unit!123397)

(assert (=> b!4687008 (= lt!1846148 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!248 lt!1846147 lt!1846149 lt!1846156))))

(assert (=> b!4687008 (= lt!1846147 (head!9944 oldBucket!34))))

(declare-fun lt!1846153 () List!52496)

(assert (=> b!4687008 (contains!15548 (extractMap!1866 lt!1846153) key!4653)))

(declare-fun lt!1846142 () Unit!123397)

(declare-fun lemmaListContainsThenExtractedMapContains!432 (ListLongMap!4099 K!13750 Hashable!6209) Unit!123397)

(assert (=> b!4687008 (= lt!1846142 (lemmaListContainsThenExtractedMapContains!432 (ListLongMap!4100 lt!1846153) key!4653 hashF!1323))))

(assert (=> b!4687008 (= lt!1846153 (Cons!52372 (tuple2!53757 hash!405 (t!359661 oldBucket!34)) (t!359662 (toList!5569 lm!2023))))))

(declare-fun b!4687009 () Bool)

(assert (=> b!4687009 (= e!2924075 (not e!2924069))))

(declare-fun res!1976436 () Bool)

(assert (=> b!4687009 (=> res!1976436 e!2924069)))

(get-info :version)

(assert (=> b!4687009 (= res!1976436 (or (and ((_ is Cons!52371) oldBucket!34) (= (_1!30171 (h!58606 oldBucket!34)) key!4653)) (not ((_ is Cons!52371) oldBucket!34)) (= (_1!30171 (h!58606 oldBucket!34)) key!4653)))))

(assert (=> b!4687009 (= lt!1846140 (addToMapMapFromBucket!1272 (_2!30172 (h!58607 (toList!5569 lm!2023))) lt!1846156))))

(assert (=> b!4687009 (= lt!1846156 (extractMap!1866 (t!359662 (toList!5569 lm!2023))))))

(declare-fun tail!8553 (ListLongMap!4099) ListLongMap!4099)

(assert (=> b!4687009 (= (t!359662 (toList!5569 lm!2023)) (toList!5569 (tail!8553 lm!2023)))))

(declare-fun b!4687010 () Bool)

(declare-fun res!1976430 () Bool)

(assert (=> b!4687010 (=> res!1976430 e!2924073)))

(assert (=> b!4687010 (= res!1976430 (not (= (removePairForKey!1435 (t!359661 oldBucket!34) key!4653) lt!1846157)))))

(declare-fun b!4687011 () Bool)

(declare-fun res!1976425 () Bool)

(assert (=> b!4687011 (=> (not res!1976425) (not e!2924075))))

(assert (=> b!4687011 (= res!1976425 ((_ is Cons!52372) (toList!5569 lm!2023)))))

(assert (= (and start!473812 res!1976432) b!4686996))

(assert (= (and b!4686996 res!1976429) b!4686995))

(assert (= (and b!4686995 res!1976439) b!4687000))

(assert (= (and b!4687000 res!1976427) b!4686997))

(assert (= (and b!4686997 res!1976434) b!4687007))

(assert (= (and b!4687007 res!1976438) b!4686999))

(assert (= (and b!4686999 res!1976437) b!4686998))

(assert (= (and b!4686998 res!1976428) b!4686994))

(assert (= (and b!4686994 res!1976431) b!4687001))

(assert (= (and b!4687001 res!1976433) b!4687011))

(assert (= (and b!4687011 res!1976425) b!4687009))

(assert (= (and b!4687009 (not res!1976436)) b!4687006))

(assert (= (and b!4687006 (not res!1976426)) b!4687005))

(assert (= (and b!4687005 (not res!1976435)) b!4687010))

(assert (= (and b!4687010 (not res!1976430)) b!4687008))

(assert (= start!473812 b!4687003))

(assert (= (and start!473812 ((_ is Cons!52371) oldBucket!34)) b!4687004))

(assert (= (and start!473812 ((_ is Cons!52371) newBucket!218)) b!4687002))

(declare-fun m!5586483 () Bool)

(assert (=> b!4686997 m!5586483))

(declare-fun m!5586485 () Bool)

(assert (=> b!4686995 m!5586485))

(declare-fun m!5586487 () Bool)

(assert (=> b!4687008 m!5586487))

(declare-fun m!5586489 () Bool)

(assert (=> b!4687008 m!5586489))

(declare-fun m!5586491 () Bool)

(assert (=> b!4687008 m!5586491))

(declare-fun m!5586493 () Bool)

(assert (=> b!4687008 m!5586493))

(declare-fun m!5586495 () Bool)

(assert (=> b!4687008 m!5586495))

(declare-fun m!5586497 () Bool)

(assert (=> b!4687008 m!5586497))

(declare-fun m!5586499 () Bool)

(assert (=> b!4687008 m!5586499))

(assert (=> b!4687008 m!5586495))

(declare-fun m!5586501 () Bool)

(assert (=> b!4687008 m!5586501))

(declare-fun m!5586503 () Bool)

(assert (=> b!4687008 m!5586503))

(assert (=> b!4687008 m!5586501))

(declare-fun m!5586505 () Bool)

(assert (=> b!4687008 m!5586505))

(declare-fun m!5586507 () Bool)

(assert (=> b!4687008 m!5586507))

(assert (=> b!4687008 m!5586487))

(declare-fun m!5586509 () Bool)

(assert (=> b!4687008 m!5586509))

(assert (=> b!4687008 m!5586503))

(assert (=> b!4687008 m!5586497))

(declare-fun m!5586511 () Bool)

(assert (=> b!4687008 m!5586511))

(declare-fun m!5586513 () Bool)

(assert (=> b!4687008 m!5586513))

(assert (=> b!4687008 m!5586489))

(assert (=> b!4687008 m!5586513))

(declare-fun m!5586515 () Bool)

(assert (=> b!4687008 m!5586515))

(declare-fun m!5586517 () Bool)

(assert (=> b!4687008 m!5586517))

(declare-fun m!5586519 () Bool)

(assert (=> b!4687010 m!5586519))

(declare-fun m!5586521 () Bool)

(assert (=> b!4687000 m!5586521))

(declare-fun m!5586523 () Bool)

(assert (=> b!4687009 m!5586523))

(declare-fun m!5586525 () Bool)

(assert (=> b!4687009 m!5586525))

(declare-fun m!5586527 () Bool)

(assert (=> b!4687009 m!5586527))

(declare-fun m!5586529 () Bool)

(assert (=> b!4686999 m!5586529))

(declare-fun m!5586531 () Bool)

(assert (=> b!4687001 m!5586531))

(declare-fun m!5586533 () Bool)

(assert (=> b!4686994 m!5586533))

(declare-fun m!5586535 () Bool)

(assert (=> b!4686996 m!5586535))

(declare-fun m!5586537 () Bool)

(assert (=> b!4687005 m!5586537))

(declare-fun m!5586539 () Bool)

(assert (=> b!4687005 m!5586539))

(declare-fun m!5586541 () Bool)

(assert (=> b!4687005 m!5586541))

(declare-fun m!5586543 () Bool)

(assert (=> b!4686998 m!5586543))

(declare-fun m!5586545 () Bool)

(assert (=> start!473812 m!5586545))

(declare-fun m!5586547 () Bool)

(assert (=> start!473812 m!5586547))

(declare-fun m!5586549 () Bool)

(assert (=> b!4687006 m!5586549))

(declare-fun m!5586551 () Bool)

(assert (=> b!4687006 m!5586551))

(declare-fun m!5586553 () Bool)

(assert (=> b!4687006 m!5586553))

(declare-fun m!5586555 () Bool)

(assert (=> b!4687006 m!5586555))

(declare-fun m!5586557 () Bool)

(assert (=> b!4687006 m!5586557))

(declare-fun m!5586559 () Bool)

(assert (=> b!4687006 m!5586559))

(declare-fun m!5586561 () Bool)

(assert (=> b!4687006 m!5586561))

(declare-fun m!5586563 () Bool)

(assert (=> b!4687006 m!5586563))

(declare-fun m!5586565 () Bool)

(assert (=> b!4687006 m!5586565))

(declare-fun m!5586567 () Bool)

(assert (=> b!4687006 m!5586567))

(declare-fun m!5586569 () Bool)

(assert (=> b!4687006 m!5586569))

(declare-fun m!5586571 () Bool)

(assert (=> b!4687006 m!5586571))

(assert (=> b!4687006 m!5586551))

(declare-fun m!5586573 () Bool)

(assert (=> b!4687007 m!5586573))

(declare-fun m!5586575 () Bool)

(assert (=> b!4687007 m!5586575))

(check-sat (not b!4687006) (not b!4686998) (not b!4687009) (not b!4686995) (not b!4686996) tp_is_empty!30655 (not b!4687007) (not b!4686994) (not b!4687004) (not b!4686997) (not b!4686999) (not b!4687010) (not b!4687003) (not start!473812) (not b!4687002) (not b!4687000) (not b!4687005) (not b!4687008) tp_is_empty!30653 (not b!4687001))
(check-sat)
(get-model)

(declare-fun d!1489414 () Bool)

(declare-fun hash!4043 (Hashable!6209 K!13750) (_ BitVec 64))

(assert (=> d!1489414 (= (hash!4041 hashF!1323 key!4653) (hash!4043 hashF!1323 key!4653))))

(declare-fun bs!1084563 () Bool)

(assert (= bs!1084563 d!1489414))

(declare-fun m!5586589 () Bool)

(assert (=> bs!1084563 m!5586589))

(assert (=> b!4686999 d!1489414))

(declare-fun d!1489416 () Bool)

(declare-fun lt!1846164 () List!52495)

(assert (=> d!1489416 (not (containsKey!3019 lt!1846164 key!4653))))

(declare-fun e!2924093 () List!52495)

(assert (=> d!1489416 (= lt!1846164 e!2924093)))

(declare-fun c!801439 () Bool)

(assert (=> d!1489416 (= c!801439 (and ((_ is Cons!52371) (t!359661 oldBucket!34)) (= (_1!30171 (h!58606 (t!359661 oldBucket!34))) key!4653)))))

(assert (=> d!1489416 (noDuplicateKeys!1840 (t!359661 oldBucket!34))))

(assert (=> d!1489416 (= (removePairForKey!1435 (t!359661 oldBucket!34) key!4653) lt!1846164)))

(declare-fun b!4687039 () Bool)

(declare-fun e!2924094 () List!52495)

(assert (=> b!4687039 (= e!2924093 e!2924094)))

(declare-fun c!801438 () Bool)

(assert (=> b!4687039 (= c!801438 ((_ is Cons!52371) (t!359661 oldBucket!34)))))

(declare-fun b!4687040 () Bool)

(assert (=> b!4687040 (= e!2924094 (Cons!52371 (h!58606 (t!359661 oldBucket!34)) (removePairForKey!1435 (t!359661 (t!359661 oldBucket!34)) key!4653)))))

(declare-fun b!4687038 () Bool)

(assert (=> b!4687038 (= e!2924093 (t!359661 (t!359661 oldBucket!34)))))

(declare-fun b!4687041 () Bool)

(assert (=> b!4687041 (= e!2924094 Nil!52371)))

(assert (= (and d!1489416 c!801439) b!4687038))

(assert (= (and d!1489416 (not c!801439)) b!4687039))

(assert (= (and b!4687039 c!801438) b!4687040))

(assert (= (and b!4687039 (not c!801438)) b!4687041))

(declare-fun m!5586591 () Bool)

(assert (=> d!1489416 m!5586591))

(declare-fun m!5586593 () Bool)

(assert (=> d!1489416 m!5586593))

(declare-fun m!5586595 () Bool)

(assert (=> b!4687040 m!5586595))

(assert (=> b!4687010 d!1489416))

(declare-fun d!1489418 () Bool)

(declare-fun lt!1846165 () List!52495)

(assert (=> d!1489418 (not (containsKey!3019 lt!1846165 key!4653))))

(declare-fun e!2924095 () List!52495)

(assert (=> d!1489418 (= lt!1846165 e!2924095)))

(declare-fun c!801441 () Bool)

(assert (=> d!1489418 (= c!801441 (and ((_ is Cons!52371) oldBucket!34) (= (_1!30171 (h!58606 oldBucket!34)) key!4653)))))

(assert (=> d!1489418 (noDuplicateKeys!1840 oldBucket!34)))

(assert (=> d!1489418 (= (removePairForKey!1435 oldBucket!34 key!4653) lt!1846165)))

(declare-fun b!4687043 () Bool)

(declare-fun e!2924096 () List!52495)

(assert (=> b!4687043 (= e!2924095 e!2924096)))

(declare-fun c!801440 () Bool)

(assert (=> b!4687043 (= c!801440 ((_ is Cons!52371) oldBucket!34))))

(declare-fun b!4687044 () Bool)

(assert (=> b!4687044 (= e!2924096 (Cons!52371 (h!58606 oldBucket!34) (removePairForKey!1435 (t!359661 oldBucket!34) key!4653)))))

(declare-fun b!4687042 () Bool)

(assert (=> b!4687042 (= e!2924095 (t!359661 oldBucket!34))))

(declare-fun b!4687045 () Bool)

(assert (=> b!4687045 (= e!2924096 Nil!52371)))

(assert (= (and d!1489418 c!801441) b!4687042))

(assert (= (and d!1489418 (not c!801441)) b!4687043))

(assert (= (and b!4687043 c!801440) b!4687044))

(assert (= (and b!4687043 (not c!801440)) b!4687045))

(declare-fun m!5586597 () Bool)

(assert (=> d!1489418 m!5586597))

(assert (=> d!1489418 m!5586535))

(assert (=> b!4687044 m!5586519))

(assert (=> b!4687000 d!1489418))

(declare-fun d!1489420 () Bool)

(assert (=> d!1489420 (= (head!9943 (toList!5569 lm!2023)) (h!58607 (toList!5569 lm!2023)))))

(assert (=> b!4687001 d!1489420))

(declare-fun b!4687064 () Bool)

(declare-fun e!2924110 () Bool)

(declare-datatypes ((List!52498 0))(
  ( (Nil!52374) (Cons!52374 (h!58611 K!13750) (t!359666 List!52498)) )
))
(declare-fun contains!15551 (List!52498 K!13750) Bool)

(declare-fun keys!18689 (ListMap!4933) List!52498)

(assert (=> b!4687064 (= e!2924110 (contains!15551 (keys!18689 lt!1846140) key!4653))))

(declare-fun b!4687065 () Bool)

(declare-fun e!2924109 () Bool)

(assert (=> b!4687065 (= e!2924109 (not (contains!15551 (keys!18689 lt!1846140) key!4653)))))

(declare-fun d!1489422 () Bool)

(declare-fun e!2924112 () Bool)

(assert (=> d!1489422 e!2924112))

(declare-fun res!1976453 () Bool)

(assert (=> d!1489422 (=> res!1976453 e!2924112)))

(assert (=> d!1489422 (= res!1976453 e!2924109)))

(declare-fun res!1976452 () Bool)

(assert (=> d!1489422 (=> (not res!1976452) (not e!2924109))))

(declare-fun lt!1846186 () Bool)

(assert (=> d!1489422 (= res!1976452 (not lt!1846186))))

(declare-fun lt!1846187 () Bool)

(assert (=> d!1489422 (= lt!1846186 lt!1846187)))

(declare-fun lt!1846185 () Unit!123397)

(declare-fun e!2924114 () Unit!123397)

(assert (=> d!1489422 (= lt!1846185 e!2924114)))

(declare-fun c!801449 () Bool)

(assert (=> d!1489422 (= c!801449 lt!1846187)))

(declare-fun containsKey!3021 (List!52495 K!13750) Bool)

(assert (=> d!1489422 (= lt!1846187 (containsKey!3021 (toList!5570 lt!1846140) key!4653))))

(assert (=> d!1489422 (= (contains!15548 lt!1846140 key!4653) lt!1846186)))

(declare-fun b!4687066 () Bool)

(assert (=> b!4687066 false))

(declare-fun lt!1846182 () Unit!123397)

(declare-fun lt!1846184 () Unit!123397)

(assert (=> b!4687066 (= lt!1846182 lt!1846184)))

(assert (=> b!4687066 (containsKey!3021 (toList!5570 lt!1846140) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!839 (List!52495 K!13750) Unit!123397)

(assert (=> b!4687066 (= lt!1846184 (lemmaInGetKeysListThenContainsKey!839 (toList!5570 lt!1846140) key!4653))))

(declare-fun e!2924111 () Unit!123397)

(declare-fun Unit!123423 () Unit!123397)

(assert (=> b!4687066 (= e!2924111 Unit!123423)))

(declare-fun b!4687067 () Bool)

(declare-fun Unit!123424 () Unit!123397)

(assert (=> b!4687067 (= e!2924111 Unit!123424)))

(declare-fun b!4687068 () Bool)

(assert (=> b!4687068 (= e!2924114 e!2924111)))

(declare-fun c!801450 () Bool)

(declare-fun call!327510 () Bool)

(assert (=> b!4687068 (= c!801450 call!327510)))

(declare-fun b!4687069 () Bool)

(declare-fun e!2924113 () List!52498)

(assert (=> b!4687069 (= e!2924113 (keys!18689 lt!1846140))))

(declare-fun b!4687070 () Bool)

(assert (=> b!4687070 (= e!2924112 e!2924110)))

(declare-fun res!1976454 () Bool)

(assert (=> b!4687070 (=> (not res!1976454) (not e!2924110))))

(declare-datatypes ((Option!12045 0))(
  ( (None!12044) (Some!12044 (v!46443 V!13996)) )
))
(declare-fun isDefined!9300 (Option!12045) Bool)

(declare-fun getValueByKey!1759 (List!52495 K!13750) Option!12045)

(assert (=> b!4687070 (= res!1976454 (isDefined!9300 (getValueByKey!1759 (toList!5570 lt!1846140) key!4653)))))

(declare-fun b!4687071 () Bool)

(declare-fun getKeysList!840 (List!52495) List!52498)

(assert (=> b!4687071 (= e!2924113 (getKeysList!840 (toList!5570 lt!1846140)))))

(declare-fun b!4687072 () Bool)

(declare-fun lt!1846188 () Unit!123397)

(assert (=> b!4687072 (= e!2924114 lt!1846188)))

(declare-fun lt!1846183 () Unit!123397)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1651 (List!52495 K!13750) Unit!123397)

(assert (=> b!4687072 (= lt!1846183 (lemmaContainsKeyImpliesGetValueByKeyDefined!1651 (toList!5570 lt!1846140) key!4653))))

(assert (=> b!4687072 (isDefined!9300 (getValueByKey!1759 (toList!5570 lt!1846140) key!4653))))

(declare-fun lt!1846189 () Unit!123397)

(assert (=> b!4687072 (= lt!1846189 lt!1846183)))

(declare-fun lemmaInListThenGetKeysListContains!835 (List!52495 K!13750) Unit!123397)

(assert (=> b!4687072 (= lt!1846188 (lemmaInListThenGetKeysListContains!835 (toList!5570 lt!1846140) key!4653))))

(assert (=> b!4687072 call!327510))

(declare-fun bm!327505 () Bool)

(assert (=> bm!327505 (= call!327510 (contains!15551 e!2924113 key!4653))))

(declare-fun c!801448 () Bool)

(assert (=> bm!327505 (= c!801448 c!801449)))

(assert (= (and d!1489422 c!801449) b!4687072))

(assert (= (and d!1489422 (not c!801449)) b!4687068))

(assert (= (and b!4687068 c!801450) b!4687066))

(assert (= (and b!4687068 (not c!801450)) b!4687067))

(assert (= (or b!4687072 b!4687068) bm!327505))

(assert (= (and bm!327505 c!801448) b!4687071))

(assert (= (and bm!327505 (not c!801448)) b!4687069))

(assert (= (and d!1489422 res!1976452) b!4687065))

(assert (= (and d!1489422 (not res!1976453)) b!4687070))

(assert (= (and b!4687070 res!1976454) b!4687064))

(declare-fun m!5586599 () Bool)

(assert (=> d!1489422 m!5586599))

(assert (=> b!4687066 m!5586599))

(declare-fun m!5586601 () Bool)

(assert (=> b!4687066 m!5586601))

(declare-fun m!5586603 () Bool)

(assert (=> b!4687065 m!5586603))

(assert (=> b!4687065 m!5586603))

(declare-fun m!5586605 () Bool)

(assert (=> b!4687065 m!5586605))

(declare-fun m!5586607 () Bool)

(assert (=> b!4687072 m!5586607))

(declare-fun m!5586609 () Bool)

(assert (=> b!4687072 m!5586609))

(assert (=> b!4687072 m!5586609))

(declare-fun m!5586611 () Bool)

(assert (=> b!4687072 m!5586611))

(declare-fun m!5586613 () Bool)

(assert (=> b!4687072 m!5586613))

(assert (=> b!4687069 m!5586603))

(declare-fun m!5586615 () Bool)

(assert (=> b!4687071 m!5586615))

(declare-fun m!5586617 () Bool)

(assert (=> bm!327505 m!5586617))

(assert (=> b!4687064 m!5586603))

(assert (=> b!4687064 m!5586603))

(assert (=> b!4687064 m!5586605))

(assert (=> b!4687070 m!5586609))

(assert (=> b!4687070 m!5586609))

(assert (=> b!4687070 m!5586611))

(assert (=> b!4687007 d!1489422))

(declare-fun bs!1084579 () Bool)

(declare-fun d!1489424 () Bool)

(assert (= bs!1084579 (and d!1489424 start!473812)))

(declare-fun lambda!206316 () Int)

(assert (=> bs!1084579 (= lambda!206316 lambda!206277)))

(declare-fun lt!1846276 () ListMap!4933)

(declare-fun invariantList!1400 (List!52495) Bool)

(assert (=> d!1489424 (invariantList!1400 (toList!5570 lt!1846276))))

(declare-fun e!2924129 () ListMap!4933)

(assert (=> d!1489424 (= lt!1846276 e!2924129)))

(declare-fun c!801457 () Bool)

(assert (=> d!1489424 (= c!801457 ((_ is Cons!52372) (toList!5569 lm!2023)))))

(assert (=> d!1489424 (forall!11297 (toList!5569 lm!2023) lambda!206316)))

(assert (=> d!1489424 (= (extractMap!1866 (toList!5569 lm!2023)) lt!1846276)))

(declare-fun b!4687099 () Bool)

(assert (=> b!4687099 (= e!2924129 (addToMapMapFromBucket!1272 (_2!30172 (h!58607 (toList!5569 lm!2023))) (extractMap!1866 (t!359662 (toList!5569 lm!2023)))))))

(declare-fun b!4687100 () Bool)

(assert (=> b!4687100 (= e!2924129 (ListMap!4934 Nil!52371))))

(assert (= (and d!1489424 c!801457) b!4687099))

(assert (= (and d!1489424 (not c!801457)) b!4687100))

(declare-fun m!5586689 () Bool)

(assert (=> d!1489424 m!5586689))

(declare-fun m!5586691 () Bool)

(assert (=> d!1489424 m!5586691))

(assert (=> b!4687099 m!5586525))

(assert (=> b!4687099 m!5586525))

(declare-fun m!5586693 () Bool)

(assert (=> b!4687099 m!5586693))

(assert (=> b!4687007 d!1489424))

(declare-fun d!1489430 () Bool)

(assert (=> d!1489430 true))

(assert (=> d!1489430 true))

(declare-fun lambda!206319 () Int)

(declare-fun forall!11299 (List!52495 Int) Bool)

(assert (=> d!1489430 (= (allKeysSameHash!1666 oldBucket!34 hash!405 hashF!1323) (forall!11299 oldBucket!34 lambda!206319))))

(declare-fun bs!1084580 () Bool)

(assert (= bs!1084580 d!1489430))

(declare-fun m!5586695 () Bool)

(assert (=> bs!1084580 m!5586695))

(assert (=> b!4686997 d!1489430))

(declare-fun bs!1084660 () Bool)

(declare-fun b!4687222 () Bool)

(assert (= bs!1084660 (and b!4687222 d!1489430)))

(declare-fun lambda!206368 () Int)

(assert (=> bs!1084660 (not (= lambda!206368 lambda!206319))))

(assert (=> b!4687222 true))

(declare-fun bs!1084661 () Bool)

(declare-fun b!4687219 () Bool)

(assert (= bs!1084661 (and b!4687219 d!1489430)))

(declare-fun lambda!206369 () Int)

(assert (=> bs!1084661 (not (= lambda!206369 lambda!206319))))

(declare-fun bs!1084662 () Bool)

(assert (= bs!1084662 (and b!4687219 b!4687222)))

(assert (=> bs!1084662 (= lambda!206369 lambda!206368)))

(assert (=> b!4687219 true))

(declare-fun lambda!206370 () Int)

(assert (=> bs!1084661 (not (= lambda!206370 lambda!206319))))

(declare-fun lt!1846443 () ListMap!4933)

(assert (=> bs!1084662 (= (= lt!1846443 lt!1846156) (= lambda!206370 lambda!206368))))

(assert (=> b!4687219 (= (= lt!1846443 lt!1846156) (= lambda!206370 lambda!206369))))

(assert (=> b!4687219 true))

(declare-fun bs!1084663 () Bool)

(declare-fun d!1489432 () Bool)

(assert (= bs!1084663 (and d!1489432 d!1489430)))

(declare-fun lambda!206371 () Int)

(assert (=> bs!1084663 (not (= lambda!206371 lambda!206319))))

(declare-fun bs!1084664 () Bool)

(assert (= bs!1084664 (and d!1489432 b!4687222)))

(declare-fun lt!1846449 () ListMap!4933)

(assert (=> bs!1084664 (= (= lt!1846449 lt!1846156) (= lambda!206371 lambda!206368))))

(declare-fun bs!1084665 () Bool)

(assert (= bs!1084665 (and d!1489432 b!4687219)))

(assert (=> bs!1084665 (= (= lt!1846449 lt!1846156) (= lambda!206371 lambda!206369))))

(assert (=> bs!1084665 (= (= lt!1846449 lt!1846443) (= lambda!206371 lambda!206370))))

(assert (=> d!1489432 true))

(declare-fun call!327538 () Bool)

(declare-fun bm!327533 () Bool)

(declare-fun c!801483 () Bool)

(assert (=> bm!327533 (= call!327538 (forall!11299 (toList!5570 lt!1846156) (ite c!801483 lambda!206368 lambda!206370)))))

(declare-fun bm!327534 () Bool)

(declare-fun call!327540 () Bool)

(assert (=> bm!327534 (= call!327540 (forall!11299 (toList!5570 lt!1846156) (ite c!801483 lambda!206368 lambda!206370)))))

(declare-fun e!2924204 () ListMap!4933)

(assert (=> b!4687219 (= e!2924204 lt!1846443)))

(declare-fun lt!1846446 () ListMap!4933)

(assert (=> b!4687219 (= lt!1846446 (+!2124 lt!1846156 (h!58606 lt!1846157)))))

(assert (=> b!4687219 (= lt!1846443 (addToMapMapFromBucket!1272 (t!359661 lt!1846157) (+!2124 lt!1846156 (h!58606 lt!1846157))))))

(declare-fun lt!1846454 () Unit!123397)

(declare-fun call!327539 () Unit!123397)

(assert (=> b!4687219 (= lt!1846454 call!327539)))

(assert (=> b!4687219 (forall!11299 (toList!5570 lt!1846156) lambda!206369)))

(declare-fun lt!1846458 () Unit!123397)

(assert (=> b!4687219 (= lt!1846458 lt!1846454)))

(assert (=> b!4687219 (forall!11299 (toList!5570 lt!1846446) lambda!206370)))

(declare-fun lt!1846453 () Unit!123397)

(declare-fun Unit!123436 () Unit!123397)

(assert (=> b!4687219 (= lt!1846453 Unit!123436)))

(assert (=> b!4687219 (forall!11299 (t!359661 lt!1846157) lambda!206370)))

(declare-fun lt!1846444 () Unit!123397)

(declare-fun Unit!123437 () Unit!123397)

(assert (=> b!4687219 (= lt!1846444 Unit!123437)))

(declare-fun lt!1846450 () Unit!123397)

(declare-fun Unit!123438 () Unit!123397)

(assert (=> b!4687219 (= lt!1846450 Unit!123438)))

(declare-fun lt!1846456 () Unit!123397)

(declare-fun forallContained!3406 (List!52495 Int tuple2!53754) Unit!123397)

(assert (=> b!4687219 (= lt!1846456 (forallContained!3406 (toList!5570 lt!1846446) lambda!206370 (h!58606 lt!1846157)))))

(assert (=> b!4687219 (contains!15548 lt!1846446 (_1!30171 (h!58606 lt!1846157)))))

(declare-fun lt!1846455 () Unit!123397)

(declare-fun Unit!123439 () Unit!123397)

(assert (=> b!4687219 (= lt!1846455 Unit!123439)))

(assert (=> b!4687219 (contains!15548 lt!1846443 (_1!30171 (h!58606 lt!1846157)))))

(declare-fun lt!1846457 () Unit!123397)

(declare-fun Unit!123440 () Unit!123397)

(assert (=> b!4687219 (= lt!1846457 Unit!123440)))

(assert (=> b!4687219 (forall!11299 lt!1846157 lambda!206370)))

(declare-fun lt!1846448 () Unit!123397)

(declare-fun Unit!123441 () Unit!123397)

(assert (=> b!4687219 (= lt!1846448 Unit!123441)))

(assert (=> b!4687219 (forall!11299 (toList!5570 lt!1846446) lambda!206370)))

(declare-fun lt!1846451 () Unit!123397)

(declare-fun Unit!123442 () Unit!123397)

(assert (=> b!4687219 (= lt!1846451 Unit!123442)))

(declare-fun lt!1846441 () Unit!123397)

(declare-fun Unit!123443 () Unit!123397)

(assert (=> b!4687219 (= lt!1846441 Unit!123443)))

(declare-fun lt!1846438 () Unit!123397)

(declare-fun addForallContainsKeyThenBeforeAdding!687 (ListMap!4933 ListMap!4933 K!13750 V!13996) Unit!123397)

(assert (=> b!4687219 (= lt!1846438 (addForallContainsKeyThenBeforeAdding!687 lt!1846156 lt!1846443 (_1!30171 (h!58606 lt!1846157)) (_2!30171 (h!58606 lt!1846157))))))

(assert (=> b!4687219 call!327538))

(declare-fun lt!1846445 () Unit!123397)

(assert (=> b!4687219 (= lt!1846445 lt!1846438)))

(assert (=> b!4687219 (forall!11299 (toList!5570 lt!1846156) lambda!206370)))

(declare-fun lt!1846447 () Unit!123397)

(declare-fun Unit!123444 () Unit!123397)

(assert (=> b!4687219 (= lt!1846447 Unit!123444)))

(declare-fun res!1976527 () Bool)

(assert (=> b!4687219 (= res!1976527 (forall!11299 lt!1846157 lambda!206370))))

(declare-fun e!2924205 () Bool)

(assert (=> b!4687219 (=> (not res!1976527) (not e!2924205))))

(assert (=> b!4687219 e!2924205))

(declare-fun lt!1846439 () Unit!123397)

(declare-fun Unit!123445 () Unit!123397)

(assert (=> b!4687219 (= lt!1846439 Unit!123445)))

(declare-fun e!2924203 () Bool)

(assert (=> d!1489432 e!2924203))

(declare-fun res!1976526 () Bool)

(assert (=> d!1489432 (=> (not res!1976526) (not e!2924203))))

(assert (=> d!1489432 (= res!1976526 (forall!11299 lt!1846157 lambda!206371))))

(assert (=> d!1489432 (= lt!1846449 e!2924204)))

(assert (=> d!1489432 (= c!801483 ((_ is Nil!52371) lt!1846157))))

(assert (=> d!1489432 (noDuplicateKeys!1840 lt!1846157)))

(assert (=> d!1489432 (= (addToMapMapFromBucket!1272 lt!1846157 lt!1846156) lt!1846449)))

(declare-fun b!4687220 () Bool)

(declare-fun res!1976528 () Bool)

(assert (=> b!4687220 (=> (not res!1976528) (not e!2924203))))

(assert (=> b!4687220 (= res!1976528 (forall!11299 (toList!5570 lt!1846156) lambda!206371))))

(declare-fun b!4687221 () Bool)

(assert (=> b!4687221 (= e!2924205 call!327540)))

(assert (=> b!4687222 (= e!2924204 lt!1846156)))

(declare-fun lt!1846442 () Unit!123397)

(assert (=> b!4687222 (= lt!1846442 call!327539)))

(assert (=> b!4687222 call!327540))

(declare-fun lt!1846440 () Unit!123397)

(assert (=> b!4687222 (= lt!1846440 lt!1846442)))

(assert (=> b!4687222 call!327538))

(declare-fun lt!1846452 () Unit!123397)

(declare-fun Unit!123446 () Unit!123397)

(assert (=> b!4687222 (= lt!1846452 Unit!123446)))

(declare-fun bm!327535 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!688 (ListMap!4933) Unit!123397)

(assert (=> bm!327535 (= call!327539 (lemmaContainsAllItsOwnKeys!688 lt!1846156))))

(declare-fun b!4687223 () Bool)

(assert (=> b!4687223 (= e!2924203 (invariantList!1400 (toList!5570 lt!1846449)))))

(assert (= (and d!1489432 c!801483) b!4687222))

(assert (= (and d!1489432 (not c!801483)) b!4687219))

(assert (= (and b!4687219 res!1976527) b!4687221))

(assert (= (or b!4687222 b!4687219) bm!327535))

(assert (= (or b!4687222 b!4687219) bm!327533))

(assert (= (or b!4687222 b!4687221) bm!327534))

(assert (= (and d!1489432 res!1976526) b!4687220))

(assert (= (and b!4687220 res!1976528) b!4687223))

(declare-fun m!5586889 () Bool)

(assert (=> bm!327534 m!5586889))

(declare-fun m!5586891 () Bool)

(assert (=> b!4687219 m!5586891))

(declare-fun m!5586893 () Bool)

(assert (=> b!4687219 m!5586893))

(declare-fun m!5586895 () Bool)

(assert (=> b!4687219 m!5586895))

(declare-fun m!5586897 () Bool)

(assert (=> b!4687219 m!5586897))

(declare-fun m!5586899 () Bool)

(assert (=> b!4687219 m!5586899))

(declare-fun m!5586901 () Bool)

(assert (=> b!4687219 m!5586901))

(assert (=> b!4687219 m!5586891))

(declare-fun m!5586903 () Bool)

(assert (=> b!4687219 m!5586903))

(assert (=> b!4687219 m!5586893))

(declare-fun m!5586905 () Bool)

(assert (=> b!4687219 m!5586905))

(declare-fun m!5586907 () Bool)

(assert (=> b!4687219 m!5586907))

(declare-fun m!5586909 () Bool)

(assert (=> b!4687219 m!5586909))

(assert (=> b!4687219 m!5586895))

(declare-fun m!5586911 () Bool)

(assert (=> b!4687219 m!5586911))

(declare-fun m!5586913 () Bool)

(assert (=> b!4687223 m!5586913))

(assert (=> bm!327533 m!5586889))

(declare-fun m!5586915 () Bool)

(assert (=> b!4687220 m!5586915))

(declare-fun m!5586917 () Bool)

(assert (=> bm!327535 m!5586917))

(declare-fun m!5586919 () Bool)

(assert (=> d!1489432 m!5586919))

(declare-fun m!5586921 () Bool)

(assert (=> d!1489432 m!5586921))

(assert (=> b!4687008 d!1489432))

(declare-fun d!1489480 () Bool)

(assert (=> d!1489480 (= (head!9944 oldBucket!34) (h!58606 oldBucket!34))))

(assert (=> b!4687008 d!1489480))

(declare-fun b!4687226 () Bool)

(declare-fun e!2924207 () Bool)

(assert (=> b!4687226 (= e!2924207 (contains!15551 (keys!18689 (extractMap!1866 lt!1846153)) key!4653))))

(declare-fun b!4687227 () Bool)

(declare-fun e!2924206 () Bool)

(assert (=> b!4687227 (= e!2924206 (not (contains!15551 (keys!18689 (extractMap!1866 lt!1846153)) key!4653)))))

(declare-fun d!1489482 () Bool)

(declare-fun e!2924209 () Bool)

(assert (=> d!1489482 e!2924209))

(declare-fun res!1976530 () Bool)

(assert (=> d!1489482 (=> res!1976530 e!2924209)))

(assert (=> d!1489482 (= res!1976530 e!2924206)))

(declare-fun res!1976529 () Bool)

(assert (=> d!1489482 (=> (not res!1976529) (not e!2924206))))

(declare-fun lt!1846463 () Bool)

(assert (=> d!1489482 (= res!1976529 (not lt!1846463))))

(declare-fun lt!1846464 () Bool)

(assert (=> d!1489482 (= lt!1846463 lt!1846464)))

(declare-fun lt!1846462 () Unit!123397)

(declare-fun e!2924211 () Unit!123397)

(assert (=> d!1489482 (= lt!1846462 e!2924211)))

(declare-fun c!801485 () Bool)

(assert (=> d!1489482 (= c!801485 lt!1846464)))

(assert (=> d!1489482 (= lt!1846464 (containsKey!3021 (toList!5570 (extractMap!1866 lt!1846153)) key!4653))))

(assert (=> d!1489482 (= (contains!15548 (extractMap!1866 lt!1846153) key!4653) lt!1846463)))

(declare-fun b!4687228 () Bool)

(assert (=> b!4687228 false))

(declare-fun lt!1846459 () Unit!123397)

(declare-fun lt!1846461 () Unit!123397)

(assert (=> b!4687228 (= lt!1846459 lt!1846461)))

(assert (=> b!4687228 (containsKey!3021 (toList!5570 (extractMap!1866 lt!1846153)) key!4653)))

(assert (=> b!4687228 (= lt!1846461 (lemmaInGetKeysListThenContainsKey!839 (toList!5570 (extractMap!1866 lt!1846153)) key!4653))))

(declare-fun e!2924208 () Unit!123397)

(declare-fun Unit!123448 () Unit!123397)

(assert (=> b!4687228 (= e!2924208 Unit!123448)))

(declare-fun b!4687229 () Bool)

(declare-fun Unit!123450 () Unit!123397)

(assert (=> b!4687229 (= e!2924208 Unit!123450)))

(declare-fun b!4687230 () Bool)

(assert (=> b!4687230 (= e!2924211 e!2924208)))

(declare-fun c!801486 () Bool)

(declare-fun call!327541 () Bool)

(assert (=> b!4687230 (= c!801486 call!327541)))

(declare-fun b!4687231 () Bool)

(declare-fun e!2924210 () List!52498)

(assert (=> b!4687231 (= e!2924210 (keys!18689 (extractMap!1866 lt!1846153)))))

(declare-fun b!4687232 () Bool)

(assert (=> b!4687232 (= e!2924209 e!2924207)))

(declare-fun res!1976531 () Bool)

(assert (=> b!4687232 (=> (not res!1976531) (not e!2924207))))

(assert (=> b!4687232 (= res!1976531 (isDefined!9300 (getValueByKey!1759 (toList!5570 (extractMap!1866 lt!1846153)) key!4653)))))

(declare-fun b!4687233 () Bool)

(assert (=> b!4687233 (= e!2924210 (getKeysList!840 (toList!5570 (extractMap!1866 lt!1846153))))))

(declare-fun b!4687234 () Bool)

(declare-fun lt!1846465 () Unit!123397)

(assert (=> b!4687234 (= e!2924211 lt!1846465)))

(declare-fun lt!1846460 () Unit!123397)

(assert (=> b!4687234 (= lt!1846460 (lemmaContainsKeyImpliesGetValueByKeyDefined!1651 (toList!5570 (extractMap!1866 lt!1846153)) key!4653))))

(assert (=> b!4687234 (isDefined!9300 (getValueByKey!1759 (toList!5570 (extractMap!1866 lt!1846153)) key!4653))))

(declare-fun lt!1846466 () Unit!123397)

(assert (=> b!4687234 (= lt!1846466 lt!1846460)))

(assert (=> b!4687234 (= lt!1846465 (lemmaInListThenGetKeysListContains!835 (toList!5570 (extractMap!1866 lt!1846153)) key!4653))))

(assert (=> b!4687234 call!327541))

(declare-fun bm!327536 () Bool)

(assert (=> bm!327536 (= call!327541 (contains!15551 e!2924210 key!4653))))

(declare-fun c!801484 () Bool)

(assert (=> bm!327536 (= c!801484 c!801485)))

(assert (= (and d!1489482 c!801485) b!4687234))

(assert (= (and d!1489482 (not c!801485)) b!4687230))

(assert (= (and b!4687230 c!801486) b!4687228))

(assert (= (and b!4687230 (not c!801486)) b!4687229))

(assert (= (or b!4687234 b!4687230) bm!327536))

(assert (= (and bm!327536 c!801484) b!4687233))

(assert (= (and bm!327536 (not c!801484)) b!4687231))

(assert (= (and d!1489482 res!1976529) b!4687227))

(assert (= (and d!1489482 (not res!1976530)) b!4687232))

(assert (= (and b!4687232 res!1976531) b!4687226))

(declare-fun m!5586923 () Bool)

(assert (=> d!1489482 m!5586923))

(assert (=> b!4687228 m!5586923))

(declare-fun m!5586925 () Bool)

(assert (=> b!4687228 m!5586925))

(assert (=> b!4687227 m!5586497))

(declare-fun m!5586927 () Bool)

(assert (=> b!4687227 m!5586927))

(assert (=> b!4687227 m!5586927))

(declare-fun m!5586929 () Bool)

(assert (=> b!4687227 m!5586929))

(declare-fun m!5586931 () Bool)

(assert (=> b!4687234 m!5586931))

(declare-fun m!5586933 () Bool)

(assert (=> b!4687234 m!5586933))

(assert (=> b!4687234 m!5586933))

(declare-fun m!5586935 () Bool)

(assert (=> b!4687234 m!5586935))

(declare-fun m!5586937 () Bool)

(assert (=> b!4687234 m!5586937))

(assert (=> b!4687231 m!5586497))

(assert (=> b!4687231 m!5586927))

(declare-fun m!5586939 () Bool)

(assert (=> b!4687233 m!5586939))

(declare-fun m!5586941 () Bool)

(assert (=> bm!327536 m!5586941))

(assert (=> b!4687226 m!5586497))

(assert (=> b!4687226 m!5586927))

(assert (=> b!4687226 m!5586927))

(assert (=> b!4687226 m!5586929))

(assert (=> b!4687232 m!5586933))

(assert (=> b!4687232 m!5586933))

(assert (=> b!4687232 m!5586935))

(assert (=> b!4687008 d!1489482))

(declare-fun d!1489484 () Bool)

(assert (=> d!1489484 (= (head!9944 newBucket!218) (h!58606 newBucket!218))))

(assert (=> b!4687008 d!1489484))

(declare-fun d!1489486 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9144 (List!52495) (InoxSet tuple2!53754))

(assert (=> d!1489486 (= (eq!999 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846152 lt!1846157) lt!1846156) (+!2124 (addToMapMapFromBucket!1272 lt!1846157 lt!1846156) lt!1846152)) (= (content!9144 (toList!5570 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846152 lt!1846157) lt!1846156))) (content!9144 (toList!5570 (+!2124 (addToMapMapFromBucket!1272 lt!1846157 lt!1846156) lt!1846152)))))))

(declare-fun bs!1084666 () Bool)

(assert (= bs!1084666 d!1489486))

(declare-fun m!5586943 () Bool)

(assert (=> bs!1084666 m!5586943))

(declare-fun m!5586945 () Bool)

(assert (=> bs!1084666 m!5586945))

(assert (=> b!4687008 d!1489486))

(declare-fun d!1489488 () Bool)

(declare-fun res!1976536 () Bool)

(declare-fun e!2924216 () Bool)

(assert (=> d!1489488 (=> res!1976536 e!2924216)))

(assert (=> d!1489488 (= res!1976536 ((_ is Nil!52372) (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023)))))))

(assert (=> d!1489488 (= (forall!11297 (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023))) lambda!206277) e!2924216)))

(declare-fun b!4687239 () Bool)

(declare-fun e!2924217 () Bool)

(assert (=> b!4687239 (= e!2924216 e!2924217)))

(declare-fun res!1976537 () Bool)

(assert (=> b!4687239 (=> (not res!1976537) (not e!2924217))))

(declare-fun dynLambda!21703 (Int tuple2!53756) Bool)

(assert (=> b!4687239 (= res!1976537 (dynLambda!21703 lambda!206277 (h!58607 (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023))))))))

(declare-fun b!4687240 () Bool)

(assert (=> b!4687240 (= e!2924217 (forall!11297 (t!359662 (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023)))) lambda!206277))))

(assert (= (and d!1489488 (not res!1976536)) b!4687239))

(assert (= (and b!4687239 res!1976537) b!4687240))

(declare-fun b_lambda!176881 () Bool)

(assert (=> (not b_lambda!176881) (not b!4687239)))

(declare-fun m!5586947 () Bool)

(assert (=> b!4687239 m!5586947))

(declare-fun m!5586949 () Bool)

(assert (=> b!4687240 m!5586949))

(assert (=> b!4687008 d!1489488))

(declare-fun d!1489490 () Bool)

(assert (=> d!1489490 (= (eq!999 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846147 lt!1846149) lt!1846156) (+!2124 (addToMapMapFromBucket!1272 lt!1846149 lt!1846156) lt!1846147)) (= (content!9144 (toList!5570 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846147 lt!1846149) lt!1846156))) (content!9144 (toList!5570 (+!2124 (addToMapMapFromBucket!1272 lt!1846149 lt!1846156) lt!1846147)))))))

(declare-fun bs!1084667 () Bool)

(assert (= bs!1084667 d!1489490))

(declare-fun m!5586951 () Bool)

(assert (=> bs!1084667 m!5586951))

(declare-fun m!5586953 () Bool)

(assert (=> bs!1084667 m!5586953))

(assert (=> b!4687008 d!1489490))

(declare-fun d!1489492 () Bool)

(assert (=> d!1489492 (eq!999 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846152 lt!1846157) lt!1846156) (+!2124 (addToMapMapFromBucket!1272 lt!1846157 lt!1846156) lt!1846152))))

(declare-fun lt!1846495 () Unit!123397)

(declare-fun choose!32510 (tuple2!53754 List!52495 ListMap!4933) Unit!123397)

(assert (=> d!1489492 (= lt!1846495 (choose!32510 lt!1846152 lt!1846157 lt!1846156))))

(assert (=> d!1489492 (noDuplicateKeys!1840 lt!1846157)))

(assert (=> d!1489492 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!248 lt!1846152 lt!1846157 lt!1846156) lt!1846495)))

(declare-fun bs!1084673 () Bool)

(assert (= bs!1084673 d!1489492))

(assert (=> bs!1084673 m!5586503))

(assert (=> bs!1084673 m!5586495))

(assert (=> bs!1084673 m!5586501))

(assert (=> bs!1084673 m!5586503))

(assert (=> bs!1084673 m!5586501))

(assert (=> bs!1084673 m!5586505))

(assert (=> bs!1084673 m!5586921))

(assert (=> bs!1084673 m!5586495))

(declare-fun m!5586979 () Bool)

(assert (=> bs!1084673 m!5586979))

(assert (=> b!4687008 d!1489492))

(declare-fun d!1489498 () Bool)

(declare-fun e!2924237 () Bool)

(assert (=> d!1489498 e!2924237))

(declare-fun res!1976566 () Bool)

(assert (=> d!1489498 (=> (not res!1976566) (not e!2924237))))

(declare-fun lt!1846526 () ListMap!4933)

(assert (=> d!1489498 (= res!1976566 (contains!15548 lt!1846526 (_1!30171 lt!1846152)))))

(declare-fun lt!1846528 () List!52495)

(assert (=> d!1489498 (= lt!1846526 (ListMap!4934 lt!1846528))))

(declare-fun lt!1846529 () Unit!123397)

(declare-fun lt!1846527 () Unit!123397)

(assert (=> d!1489498 (= lt!1846529 lt!1846527)))

(assert (=> d!1489498 (= (getValueByKey!1759 lt!1846528 (_1!30171 lt!1846152)) (Some!12044 (_2!30171 lt!1846152)))))

(declare-fun lemmaContainsTupThenGetReturnValue!990 (List!52495 K!13750 V!13996) Unit!123397)

(assert (=> d!1489498 (= lt!1846527 (lemmaContainsTupThenGetReturnValue!990 lt!1846528 (_1!30171 lt!1846152) (_2!30171 lt!1846152)))))

(declare-fun insertNoDuplicatedKeys!498 (List!52495 K!13750 V!13996) List!52495)

(assert (=> d!1489498 (= lt!1846528 (insertNoDuplicatedKeys!498 (toList!5570 (addToMapMapFromBucket!1272 lt!1846157 lt!1846156)) (_1!30171 lt!1846152) (_2!30171 lt!1846152)))))

(assert (=> d!1489498 (= (+!2124 (addToMapMapFromBucket!1272 lt!1846157 lt!1846156) lt!1846152) lt!1846526)))

(declare-fun b!4687272 () Bool)

(declare-fun res!1976565 () Bool)

(assert (=> b!4687272 (=> (not res!1976565) (not e!2924237))))

(assert (=> b!4687272 (= res!1976565 (= (getValueByKey!1759 (toList!5570 lt!1846526) (_1!30171 lt!1846152)) (Some!12044 (_2!30171 lt!1846152))))))

(declare-fun b!4687273 () Bool)

(declare-fun contains!15552 (List!52495 tuple2!53754) Bool)

(assert (=> b!4687273 (= e!2924237 (contains!15552 (toList!5570 lt!1846526) lt!1846152))))

(assert (= (and d!1489498 res!1976566) b!4687272))

(assert (= (and b!4687272 res!1976565) b!4687273))

(declare-fun m!5586985 () Bool)

(assert (=> d!1489498 m!5586985))

(declare-fun m!5586987 () Bool)

(assert (=> d!1489498 m!5586987))

(declare-fun m!5586989 () Bool)

(assert (=> d!1489498 m!5586989))

(declare-fun m!5586991 () Bool)

(assert (=> d!1489498 m!5586991))

(declare-fun m!5586993 () Bool)

(assert (=> b!4687272 m!5586993))

(declare-fun m!5586995 () Bool)

(assert (=> b!4687273 m!5586995))

(assert (=> b!4687008 d!1489498))

(declare-fun bs!1084730 () Bool)

(declare-fun d!1489506 () Bool)

(assert (= bs!1084730 (and d!1489506 start!473812)))

(declare-fun lambda!206389 () Int)

(assert (=> bs!1084730 (= lambda!206389 lambda!206277)))

(declare-fun bs!1084731 () Bool)

(assert (= bs!1084731 (and d!1489506 d!1489424)))

(assert (=> bs!1084731 (= lambda!206389 lambda!206316)))

(assert (=> d!1489506 (contains!15548 (extractMap!1866 (toList!5569 (ListLongMap!4100 lt!1846153))) key!4653)))

(declare-fun lt!1846543 () Unit!123397)

(declare-fun choose!32512 (ListLongMap!4099 K!13750 Hashable!6209) Unit!123397)

(assert (=> d!1489506 (= lt!1846543 (choose!32512 (ListLongMap!4100 lt!1846153) key!4653 hashF!1323))))

(assert (=> d!1489506 (forall!11297 (toList!5569 (ListLongMap!4100 lt!1846153)) lambda!206389)))

(assert (=> d!1489506 (= (lemmaListContainsThenExtractedMapContains!432 (ListLongMap!4100 lt!1846153) key!4653 hashF!1323) lt!1846543)))

(declare-fun bs!1084732 () Bool)

(assert (= bs!1084732 d!1489506))

(declare-fun m!5587075 () Bool)

(assert (=> bs!1084732 m!5587075))

(assert (=> bs!1084732 m!5587075))

(declare-fun m!5587077 () Bool)

(assert (=> bs!1084732 m!5587077))

(declare-fun m!5587079 () Bool)

(assert (=> bs!1084732 m!5587079))

(declare-fun m!5587081 () Bool)

(assert (=> bs!1084732 m!5587081))

(assert (=> b!4687008 d!1489506))

(declare-fun bs!1084740 () Bool)

(declare-fun b!4687302 () Bool)

(assert (= bs!1084740 (and b!4687302 b!4687219)))

(declare-fun lambda!206391 () Int)

(assert (=> bs!1084740 (= lambda!206391 lambda!206369)))

(declare-fun bs!1084741 () Bool)

(assert (= bs!1084741 (and b!4687302 d!1489432)))

(assert (=> bs!1084741 (= (= lt!1846156 lt!1846449) (= lambda!206391 lambda!206371))))

(assert (=> bs!1084740 (= (= lt!1846156 lt!1846443) (= lambda!206391 lambda!206370))))

(declare-fun bs!1084742 () Bool)

(assert (= bs!1084742 (and b!4687302 d!1489430)))

(assert (=> bs!1084742 (not (= lambda!206391 lambda!206319))))

(declare-fun bs!1084743 () Bool)

(assert (= bs!1084743 (and b!4687302 b!4687222)))

(assert (=> bs!1084743 (= lambda!206391 lambda!206368)))

(assert (=> b!4687302 true))

(declare-fun bs!1084744 () Bool)

(declare-fun b!4687299 () Bool)

(assert (= bs!1084744 (and b!4687299 b!4687219)))

(declare-fun lambda!206392 () Int)

(assert (=> bs!1084744 (= lambda!206392 lambda!206369)))

(declare-fun bs!1084745 () Bool)

(assert (= bs!1084745 (and b!4687299 d!1489432)))

(assert (=> bs!1084745 (= (= lt!1846156 lt!1846449) (= lambda!206392 lambda!206371))))

(assert (=> bs!1084744 (= (= lt!1846156 lt!1846443) (= lambda!206392 lambda!206370))))

(declare-fun bs!1084746 () Bool)

(assert (= bs!1084746 (and b!4687299 b!4687222)))

(assert (=> bs!1084746 (= lambda!206392 lambda!206368)))

(declare-fun bs!1084747 () Bool)

(assert (= bs!1084747 (and b!4687299 d!1489430)))

(assert (=> bs!1084747 (not (= lambda!206392 lambda!206319))))

(declare-fun bs!1084748 () Bool)

(assert (= bs!1084748 (and b!4687299 b!4687302)))

(assert (=> bs!1084748 (= lambda!206392 lambda!206391)))

(assert (=> b!4687299 true))

(declare-fun lt!1846550 () ListMap!4933)

(declare-fun lambda!206394 () Int)

(assert (=> b!4687299 (= (= lt!1846550 lt!1846156) (= lambda!206394 lambda!206392))))

(assert (=> bs!1084744 (= (= lt!1846550 lt!1846156) (= lambda!206394 lambda!206369))))

(assert (=> bs!1084745 (= (= lt!1846550 lt!1846449) (= lambda!206394 lambda!206371))))

(assert (=> bs!1084744 (= (= lt!1846550 lt!1846443) (= lambda!206394 lambda!206370))))

(assert (=> bs!1084746 (= (= lt!1846550 lt!1846156) (= lambda!206394 lambda!206368))))

(assert (=> bs!1084747 (not (= lambda!206394 lambda!206319))))

(assert (=> bs!1084748 (= (= lt!1846550 lt!1846156) (= lambda!206394 lambda!206391))))

(assert (=> b!4687299 true))

(declare-fun bs!1084766 () Bool)

(declare-fun d!1489530 () Bool)

(assert (= bs!1084766 (and d!1489530 b!4687299)))

(declare-fun lambda!206395 () Int)

(declare-fun lt!1846556 () ListMap!4933)

(assert (=> bs!1084766 (= (= lt!1846556 lt!1846156) (= lambda!206395 lambda!206392))))

(declare-fun bs!1084767 () Bool)

(assert (= bs!1084767 (and d!1489530 b!4687219)))

(assert (=> bs!1084767 (= (= lt!1846556 lt!1846156) (= lambda!206395 lambda!206369))))

(declare-fun bs!1084768 () Bool)

(assert (= bs!1084768 (and d!1489530 d!1489432)))

(assert (=> bs!1084768 (= (= lt!1846556 lt!1846449) (= lambda!206395 lambda!206371))))

(declare-fun bs!1084769 () Bool)

(assert (= bs!1084769 (and d!1489530 b!4687222)))

(assert (=> bs!1084769 (= (= lt!1846556 lt!1846156) (= lambda!206395 lambda!206368))))

(assert (=> bs!1084766 (= (= lt!1846556 lt!1846550) (= lambda!206395 lambda!206394))))

(assert (=> bs!1084767 (= (= lt!1846556 lt!1846443) (= lambda!206395 lambda!206370))))

(declare-fun bs!1084770 () Bool)

(assert (= bs!1084770 (and d!1489530 d!1489430)))

(assert (=> bs!1084770 (not (= lambda!206395 lambda!206319))))

(declare-fun bs!1084771 () Bool)

(assert (= bs!1084771 (and d!1489530 b!4687302)))

(assert (=> bs!1084771 (= (= lt!1846556 lt!1846156) (= lambda!206395 lambda!206391))))

(assert (=> d!1489530 true))

(declare-fun bm!327541 () Bool)

(declare-fun call!327546 () Bool)

(declare-fun c!801497 () Bool)

(assert (=> bm!327541 (= call!327546 (forall!11299 (toList!5570 lt!1846156) (ite c!801497 lambda!206391 lambda!206394)))))

(declare-fun bm!327542 () Bool)

(declare-fun call!327548 () Bool)

(assert (=> bm!327542 (= call!327548 (forall!11299 (toList!5570 lt!1846156) (ite c!801497 lambda!206391 lambda!206394)))))

(declare-fun e!2924255 () ListMap!4933)

(assert (=> b!4687299 (= e!2924255 lt!1846550)))

(declare-fun lt!1846553 () ListMap!4933)

(assert (=> b!4687299 (= lt!1846553 (+!2124 lt!1846156 (h!58606 lt!1846149)))))

(assert (=> b!4687299 (= lt!1846550 (addToMapMapFromBucket!1272 (t!359661 lt!1846149) (+!2124 lt!1846156 (h!58606 lt!1846149))))))

(declare-fun lt!1846561 () Unit!123397)

(declare-fun call!327547 () Unit!123397)

(assert (=> b!4687299 (= lt!1846561 call!327547)))

(assert (=> b!4687299 (forall!11299 (toList!5570 lt!1846156) lambda!206392)))

(declare-fun lt!1846565 () Unit!123397)

(assert (=> b!4687299 (= lt!1846565 lt!1846561)))

(assert (=> b!4687299 (forall!11299 (toList!5570 lt!1846553) lambda!206394)))

(declare-fun lt!1846560 () Unit!123397)

(declare-fun Unit!123461 () Unit!123397)

(assert (=> b!4687299 (= lt!1846560 Unit!123461)))

(assert (=> b!4687299 (forall!11299 (t!359661 lt!1846149) lambda!206394)))

(declare-fun lt!1846551 () Unit!123397)

(declare-fun Unit!123462 () Unit!123397)

(assert (=> b!4687299 (= lt!1846551 Unit!123462)))

(declare-fun lt!1846557 () Unit!123397)

(declare-fun Unit!123463 () Unit!123397)

(assert (=> b!4687299 (= lt!1846557 Unit!123463)))

(declare-fun lt!1846563 () Unit!123397)

(assert (=> b!4687299 (= lt!1846563 (forallContained!3406 (toList!5570 lt!1846553) lambda!206394 (h!58606 lt!1846149)))))

(assert (=> b!4687299 (contains!15548 lt!1846553 (_1!30171 (h!58606 lt!1846149)))))

(declare-fun lt!1846562 () Unit!123397)

(declare-fun Unit!123464 () Unit!123397)

(assert (=> b!4687299 (= lt!1846562 Unit!123464)))

(assert (=> b!4687299 (contains!15548 lt!1846550 (_1!30171 (h!58606 lt!1846149)))))

(declare-fun lt!1846564 () Unit!123397)

(declare-fun Unit!123465 () Unit!123397)

(assert (=> b!4687299 (= lt!1846564 Unit!123465)))

(assert (=> b!4687299 (forall!11299 lt!1846149 lambda!206394)))

(declare-fun lt!1846555 () Unit!123397)

(declare-fun Unit!123466 () Unit!123397)

(assert (=> b!4687299 (= lt!1846555 Unit!123466)))

(assert (=> b!4687299 (forall!11299 (toList!5570 lt!1846553) lambda!206394)))

(declare-fun lt!1846558 () Unit!123397)

(declare-fun Unit!123467 () Unit!123397)

(assert (=> b!4687299 (= lt!1846558 Unit!123467)))

(declare-fun lt!1846548 () Unit!123397)

(declare-fun Unit!123468 () Unit!123397)

(assert (=> b!4687299 (= lt!1846548 Unit!123468)))

(declare-fun lt!1846545 () Unit!123397)

(assert (=> b!4687299 (= lt!1846545 (addForallContainsKeyThenBeforeAdding!687 lt!1846156 lt!1846550 (_1!30171 (h!58606 lt!1846149)) (_2!30171 (h!58606 lt!1846149))))))

(assert (=> b!4687299 call!327546))

(declare-fun lt!1846552 () Unit!123397)

(assert (=> b!4687299 (= lt!1846552 lt!1846545)))

(assert (=> b!4687299 (forall!11299 (toList!5570 lt!1846156) lambda!206394)))

(declare-fun lt!1846554 () Unit!123397)

(declare-fun Unit!123469 () Unit!123397)

(assert (=> b!4687299 (= lt!1846554 Unit!123469)))

(declare-fun res!1976575 () Bool)

(assert (=> b!4687299 (= res!1976575 (forall!11299 lt!1846149 lambda!206394))))

(declare-fun e!2924256 () Bool)

(assert (=> b!4687299 (=> (not res!1976575) (not e!2924256))))

(assert (=> b!4687299 e!2924256))

(declare-fun lt!1846546 () Unit!123397)

(declare-fun Unit!123470 () Unit!123397)

(assert (=> b!4687299 (= lt!1846546 Unit!123470)))

(declare-fun e!2924254 () Bool)

(assert (=> d!1489530 e!2924254))

(declare-fun res!1976574 () Bool)

(assert (=> d!1489530 (=> (not res!1976574) (not e!2924254))))

(assert (=> d!1489530 (= res!1976574 (forall!11299 lt!1846149 lambda!206395))))

(assert (=> d!1489530 (= lt!1846556 e!2924255)))

(assert (=> d!1489530 (= c!801497 ((_ is Nil!52371) lt!1846149))))

(assert (=> d!1489530 (noDuplicateKeys!1840 lt!1846149)))

(assert (=> d!1489530 (= (addToMapMapFromBucket!1272 lt!1846149 lt!1846156) lt!1846556)))

(declare-fun b!4687300 () Bool)

(declare-fun res!1976576 () Bool)

(assert (=> b!4687300 (=> (not res!1976576) (not e!2924254))))

(assert (=> b!4687300 (= res!1976576 (forall!11299 (toList!5570 lt!1846156) lambda!206395))))

(declare-fun b!4687301 () Bool)

(assert (=> b!4687301 (= e!2924256 call!327548)))

(assert (=> b!4687302 (= e!2924255 lt!1846156)))

(declare-fun lt!1846549 () Unit!123397)

(assert (=> b!4687302 (= lt!1846549 call!327547)))

(assert (=> b!4687302 call!327548))

(declare-fun lt!1846547 () Unit!123397)

(assert (=> b!4687302 (= lt!1846547 lt!1846549)))

(assert (=> b!4687302 call!327546))

(declare-fun lt!1846559 () Unit!123397)

(declare-fun Unit!123471 () Unit!123397)

(assert (=> b!4687302 (= lt!1846559 Unit!123471)))

(declare-fun bm!327543 () Bool)

(assert (=> bm!327543 (= call!327547 (lemmaContainsAllItsOwnKeys!688 lt!1846156))))

(declare-fun b!4687303 () Bool)

(assert (=> b!4687303 (= e!2924254 (invariantList!1400 (toList!5570 lt!1846556)))))

(assert (= (and d!1489530 c!801497) b!4687302))

(assert (= (and d!1489530 (not c!801497)) b!4687299))

(assert (= (and b!4687299 res!1976575) b!4687301))

(assert (= (or b!4687302 b!4687299) bm!327543))

(assert (= (or b!4687302 b!4687299) bm!327541))

(assert (= (or b!4687302 b!4687301) bm!327542))

(assert (= (and d!1489530 res!1976574) b!4687300))

(assert (= (and b!4687300 res!1976576) b!4687303))

(declare-fun m!5587095 () Bool)

(assert (=> bm!327542 m!5587095))

(declare-fun m!5587097 () Bool)

(assert (=> b!4687299 m!5587097))

(declare-fun m!5587099 () Bool)

(assert (=> b!4687299 m!5587099))

(declare-fun m!5587101 () Bool)

(assert (=> b!4687299 m!5587101))

(declare-fun m!5587103 () Bool)

(assert (=> b!4687299 m!5587103))

(declare-fun m!5587105 () Bool)

(assert (=> b!4687299 m!5587105))

(declare-fun m!5587107 () Bool)

(assert (=> b!4687299 m!5587107))

(assert (=> b!4687299 m!5587097))

(declare-fun m!5587109 () Bool)

(assert (=> b!4687299 m!5587109))

(assert (=> b!4687299 m!5587099))

(declare-fun m!5587111 () Bool)

(assert (=> b!4687299 m!5587111))

(declare-fun m!5587113 () Bool)

(assert (=> b!4687299 m!5587113))

(declare-fun m!5587115 () Bool)

(assert (=> b!4687299 m!5587115))

(assert (=> b!4687299 m!5587101))

(declare-fun m!5587117 () Bool)

(assert (=> b!4687299 m!5587117))

(declare-fun m!5587119 () Bool)

(assert (=> b!4687303 m!5587119))

(assert (=> bm!327541 m!5587095))

(declare-fun m!5587121 () Bool)

(assert (=> b!4687300 m!5587121))

(assert (=> bm!327543 m!5586917))

(declare-fun m!5587123 () Bool)

(assert (=> d!1489530 m!5587123))

(declare-fun m!5587125 () Bool)

(assert (=> d!1489530 m!5587125))

(assert (=> b!4687008 d!1489530))

(declare-fun bs!1084775 () Bool)

(declare-fun d!1489542 () Bool)

(assert (= bs!1084775 (and d!1489542 start!473812)))

(declare-fun lambda!206396 () Int)

(assert (=> bs!1084775 (= lambda!206396 lambda!206277)))

(declare-fun bs!1084776 () Bool)

(assert (= bs!1084776 (and d!1489542 d!1489424)))

(assert (=> bs!1084776 (= lambda!206396 lambda!206316)))

(declare-fun bs!1084777 () Bool)

(assert (= bs!1084777 (and d!1489542 d!1489506)))

(assert (=> bs!1084777 (= lambda!206396 lambda!206389)))

(declare-fun lt!1846566 () ListMap!4933)

(assert (=> d!1489542 (invariantList!1400 (toList!5570 lt!1846566))))

(declare-fun e!2924264 () ListMap!4933)

(assert (=> d!1489542 (= lt!1846566 e!2924264)))

(declare-fun c!801498 () Bool)

(assert (=> d!1489542 (= c!801498 ((_ is Cons!52372) lt!1846153))))

(assert (=> d!1489542 (forall!11297 lt!1846153 lambda!206396)))

(assert (=> d!1489542 (= (extractMap!1866 lt!1846153) lt!1846566)))

(declare-fun b!4687315 () Bool)

(assert (=> b!4687315 (= e!2924264 (addToMapMapFromBucket!1272 (_2!30172 (h!58607 lt!1846153)) (extractMap!1866 (t!359662 lt!1846153))))))

(declare-fun b!4687316 () Bool)

(assert (=> b!4687316 (= e!2924264 (ListMap!4934 Nil!52371))))

(assert (= (and d!1489542 c!801498) b!4687315))

(assert (= (and d!1489542 (not c!801498)) b!4687316))

(declare-fun m!5587127 () Bool)

(assert (=> d!1489542 m!5587127))

(declare-fun m!5587129 () Bool)

(assert (=> d!1489542 m!5587129))

(declare-fun m!5587131 () Bool)

(assert (=> b!4687315 m!5587131))

(assert (=> b!4687315 m!5587131))

(declare-fun m!5587133 () Bool)

(assert (=> b!4687315 m!5587133))

(assert (=> b!4687008 d!1489542))

(declare-fun bs!1084778 () Bool)

(declare-fun b!4687320 () Bool)

(assert (= bs!1084778 (and b!4687320 b!4687299)))

(declare-fun lambda!206397 () Int)

(assert (=> bs!1084778 (= lambda!206397 lambda!206392)))

(declare-fun bs!1084779 () Bool)

(assert (= bs!1084779 (and b!4687320 b!4687219)))

(assert (=> bs!1084779 (= lambda!206397 lambda!206369)))

(declare-fun bs!1084780 () Bool)

(assert (= bs!1084780 (and b!4687320 d!1489432)))

(assert (=> bs!1084780 (= (= lt!1846156 lt!1846449) (= lambda!206397 lambda!206371))))

(declare-fun bs!1084781 () Bool)

(assert (= bs!1084781 (and b!4687320 b!4687222)))

(assert (=> bs!1084781 (= lambda!206397 lambda!206368)))

(assert (=> bs!1084778 (= (= lt!1846156 lt!1846550) (= lambda!206397 lambda!206394))))

(assert (=> bs!1084779 (= (= lt!1846156 lt!1846443) (= lambda!206397 lambda!206370))))

(declare-fun bs!1084782 () Bool)

(assert (= bs!1084782 (and b!4687320 d!1489430)))

(assert (=> bs!1084782 (not (= lambda!206397 lambda!206319))))

(declare-fun bs!1084783 () Bool)

(assert (= bs!1084783 (and b!4687320 d!1489530)))

(assert (=> bs!1084783 (= (= lt!1846156 lt!1846556) (= lambda!206397 lambda!206395))))

(declare-fun bs!1084784 () Bool)

(assert (= bs!1084784 (and b!4687320 b!4687302)))

(assert (=> bs!1084784 (= lambda!206397 lambda!206391)))

(assert (=> b!4687320 true))

(declare-fun bs!1084785 () Bool)

(declare-fun b!4687317 () Bool)

(assert (= bs!1084785 (and b!4687317 b!4687299)))

(declare-fun lambda!206398 () Int)

(assert (=> bs!1084785 (= lambda!206398 lambda!206392)))

(declare-fun bs!1084786 () Bool)

(assert (= bs!1084786 (and b!4687317 b!4687219)))

(assert (=> bs!1084786 (= lambda!206398 lambda!206369)))

(declare-fun bs!1084787 () Bool)

(assert (= bs!1084787 (and b!4687317 d!1489432)))

(assert (=> bs!1084787 (= (= lt!1846156 lt!1846449) (= lambda!206398 lambda!206371))))

(declare-fun bs!1084788 () Bool)

(assert (= bs!1084788 (and b!4687317 b!4687320)))

(assert (=> bs!1084788 (= lambda!206398 lambda!206397)))

(declare-fun bs!1084789 () Bool)

(assert (= bs!1084789 (and b!4687317 b!4687222)))

(assert (=> bs!1084789 (= lambda!206398 lambda!206368)))

(assert (=> bs!1084785 (= (= lt!1846156 lt!1846550) (= lambda!206398 lambda!206394))))

(assert (=> bs!1084786 (= (= lt!1846156 lt!1846443) (= lambda!206398 lambda!206370))))

(declare-fun bs!1084790 () Bool)

(assert (= bs!1084790 (and b!4687317 d!1489430)))

(assert (=> bs!1084790 (not (= lambda!206398 lambda!206319))))

(declare-fun bs!1084791 () Bool)

(assert (= bs!1084791 (and b!4687317 d!1489530)))

(assert (=> bs!1084791 (= (= lt!1846156 lt!1846556) (= lambda!206398 lambda!206395))))

(declare-fun bs!1084792 () Bool)

(assert (= bs!1084792 (and b!4687317 b!4687302)))

(assert (=> bs!1084792 (= lambda!206398 lambda!206391)))

(assert (=> b!4687317 true))

(declare-fun lambda!206399 () Int)

(declare-fun lt!1846572 () ListMap!4933)

(assert (=> bs!1084785 (= (= lt!1846572 lt!1846156) (= lambda!206399 lambda!206392))))

(assert (=> bs!1084786 (= (= lt!1846572 lt!1846156) (= lambda!206399 lambda!206369))))

(assert (=> bs!1084787 (= (= lt!1846572 lt!1846449) (= lambda!206399 lambda!206371))))

(assert (=> bs!1084788 (= (= lt!1846572 lt!1846156) (= lambda!206399 lambda!206397))))

(assert (=> b!4687317 (= (= lt!1846572 lt!1846156) (= lambda!206399 lambda!206398))))

(assert (=> bs!1084789 (= (= lt!1846572 lt!1846156) (= lambda!206399 lambda!206368))))

(assert (=> bs!1084785 (= (= lt!1846572 lt!1846550) (= lambda!206399 lambda!206394))))

(assert (=> bs!1084786 (= (= lt!1846572 lt!1846443) (= lambda!206399 lambda!206370))))

(assert (=> bs!1084790 (not (= lambda!206399 lambda!206319))))

(assert (=> bs!1084791 (= (= lt!1846572 lt!1846556) (= lambda!206399 lambda!206395))))

(assert (=> bs!1084792 (= (= lt!1846572 lt!1846156) (= lambda!206399 lambda!206391))))

(assert (=> b!4687317 true))

(declare-fun bs!1084793 () Bool)

(declare-fun d!1489544 () Bool)

(assert (= bs!1084793 (and d!1489544 b!4687317)))

(declare-fun lt!1846578 () ListMap!4933)

(declare-fun lambda!206400 () Int)

(assert (=> bs!1084793 (= (= lt!1846578 lt!1846572) (= lambda!206400 lambda!206399))))

(declare-fun bs!1084794 () Bool)

(assert (= bs!1084794 (and d!1489544 b!4687299)))

(assert (=> bs!1084794 (= (= lt!1846578 lt!1846156) (= lambda!206400 lambda!206392))))

(declare-fun bs!1084795 () Bool)

(assert (= bs!1084795 (and d!1489544 b!4687219)))

(assert (=> bs!1084795 (= (= lt!1846578 lt!1846156) (= lambda!206400 lambda!206369))))

(declare-fun bs!1084796 () Bool)

(assert (= bs!1084796 (and d!1489544 d!1489432)))

(assert (=> bs!1084796 (= (= lt!1846578 lt!1846449) (= lambda!206400 lambda!206371))))

(declare-fun bs!1084797 () Bool)

(assert (= bs!1084797 (and d!1489544 b!4687320)))

(assert (=> bs!1084797 (= (= lt!1846578 lt!1846156) (= lambda!206400 lambda!206397))))

(assert (=> bs!1084793 (= (= lt!1846578 lt!1846156) (= lambda!206400 lambda!206398))))

(declare-fun bs!1084798 () Bool)

(assert (= bs!1084798 (and d!1489544 b!4687222)))

(assert (=> bs!1084798 (= (= lt!1846578 lt!1846156) (= lambda!206400 lambda!206368))))

(assert (=> bs!1084794 (= (= lt!1846578 lt!1846550) (= lambda!206400 lambda!206394))))

(assert (=> bs!1084795 (= (= lt!1846578 lt!1846443) (= lambda!206400 lambda!206370))))

(declare-fun bs!1084799 () Bool)

(assert (= bs!1084799 (and d!1489544 d!1489430)))

(assert (=> bs!1084799 (not (= lambda!206400 lambda!206319))))

(declare-fun bs!1084800 () Bool)

(assert (= bs!1084800 (and d!1489544 d!1489530)))

(assert (=> bs!1084800 (= (= lt!1846578 lt!1846556) (= lambda!206400 lambda!206395))))

(declare-fun bs!1084801 () Bool)

(assert (= bs!1084801 (and d!1489544 b!4687302)))

(assert (=> bs!1084801 (= (= lt!1846578 lt!1846156) (= lambda!206400 lambda!206391))))

(assert (=> d!1489544 true))

(declare-fun call!327549 () Bool)

(declare-fun c!801499 () Bool)

(declare-fun bm!327544 () Bool)

(assert (=> bm!327544 (= call!327549 (forall!11299 (toList!5570 lt!1846156) (ite c!801499 lambda!206397 lambda!206399)))))

(declare-fun call!327551 () Bool)

(declare-fun bm!327545 () Bool)

(assert (=> bm!327545 (= call!327551 (forall!11299 (toList!5570 lt!1846156) (ite c!801499 lambda!206397 lambda!206399)))))

(declare-fun e!2924266 () ListMap!4933)

(assert (=> b!4687317 (= e!2924266 lt!1846572)))

(declare-fun lt!1846575 () ListMap!4933)

(assert (=> b!4687317 (= lt!1846575 (+!2124 lt!1846156 (h!58606 (Cons!52371 lt!1846152 lt!1846157))))))

(assert (=> b!4687317 (= lt!1846572 (addToMapMapFromBucket!1272 (t!359661 (Cons!52371 lt!1846152 lt!1846157)) (+!2124 lt!1846156 (h!58606 (Cons!52371 lt!1846152 lt!1846157)))))))

(declare-fun lt!1846583 () Unit!123397)

(declare-fun call!327550 () Unit!123397)

(assert (=> b!4687317 (= lt!1846583 call!327550)))

(assert (=> b!4687317 (forall!11299 (toList!5570 lt!1846156) lambda!206398)))

(declare-fun lt!1846587 () Unit!123397)

(assert (=> b!4687317 (= lt!1846587 lt!1846583)))

(assert (=> b!4687317 (forall!11299 (toList!5570 lt!1846575) lambda!206399)))

(declare-fun lt!1846582 () Unit!123397)

(declare-fun Unit!123472 () Unit!123397)

(assert (=> b!4687317 (= lt!1846582 Unit!123472)))

(assert (=> b!4687317 (forall!11299 (t!359661 (Cons!52371 lt!1846152 lt!1846157)) lambda!206399)))

(declare-fun lt!1846573 () Unit!123397)

(declare-fun Unit!123473 () Unit!123397)

(assert (=> b!4687317 (= lt!1846573 Unit!123473)))

(declare-fun lt!1846579 () Unit!123397)

(declare-fun Unit!123474 () Unit!123397)

(assert (=> b!4687317 (= lt!1846579 Unit!123474)))

(declare-fun lt!1846585 () Unit!123397)

(assert (=> b!4687317 (= lt!1846585 (forallContained!3406 (toList!5570 lt!1846575) lambda!206399 (h!58606 (Cons!52371 lt!1846152 lt!1846157))))))

(assert (=> b!4687317 (contains!15548 lt!1846575 (_1!30171 (h!58606 (Cons!52371 lt!1846152 lt!1846157))))))

(declare-fun lt!1846584 () Unit!123397)

(declare-fun Unit!123475 () Unit!123397)

(assert (=> b!4687317 (= lt!1846584 Unit!123475)))

(assert (=> b!4687317 (contains!15548 lt!1846572 (_1!30171 (h!58606 (Cons!52371 lt!1846152 lt!1846157))))))

(declare-fun lt!1846586 () Unit!123397)

(declare-fun Unit!123476 () Unit!123397)

(assert (=> b!4687317 (= lt!1846586 Unit!123476)))

(assert (=> b!4687317 (forall!11299 (Cons!52371 lt!1846152 lt!1846157) lambda!206399)))

(declare-fun lt!1846577 () Unit!123397)

(declare-fun Unit!123477 () Unit!123397)

(assert (=> b!4687317 (= lt!1846577 Unit!123477)))

(assert (=> b!4687317 (forall!11299 (toList!5570 lt!1846575) lambda!206399)))

(declare-fun lt!1846580 () Unit!123397)

(declare-fun Unit!123478 () Unit!123397)

(assert (=> b!4687317 (= lt!1846580 Unit!123478)))

(declare-fun lt!1846570 () Unit!123397)

(declare-fun Unit!123479 () Unit!123397)

(assert (=> b!4687317 (= lt!1846570 Unit!123479)))

(declare-fun lt!1846567 () Unit!123397)

(assert (=> b!4687317 (= lt!1846567 (addForallContainsKeyThenBeforeAdding!687 lt!1846156 lt!1846572 (_1!30171 (h!58606 (Cons!52371 lt!1846152 lt!1846157))) (_2!30171 (h!58606 (Cons!52371 lt!1846152 lt!1846157)))))))

(assert (=> b!4687317 call!327549))

(declare-fun lt!1846574 () Unit!123397)

(assert (=> b!4687317 (= lt!1846574 lt!1846567)))

(assert (=> b!4687317 (forall!11299 (toList!5570 lt!1846156) lambda!206399)))

(declare-fun lt!1846576 () Unit!123397)

(declare-fun Unit!123480 () Unit!123397)

(assert (=> b!4687317 (= lt!1846576 Unit!123480)))

(declare-fun res!1976578 () Bool)

(assert (=> b!4687317 (= res!1976578 (forall!11299 (Cons!52371 lt!1846152 lt!1846157) lambda!206399))))

(declare-fun e!2924267 () Bool)

(assert (=> b!4687317 (=> (not res!1976578) (not e!2924267))))

(assert (=> b!4687317 e!2924267))

(declare-fun lt!1846568 () Unit!123397)

(declare-fun Unit!123481 () Unit!123397)

(assert (=> b!4687317 (= lt!1846568 Unit!123481)))

(declare-fun e!2924265 () Bool)

(assert (=> d!1489544 e!2924265))

(declare-fun res!1976577 () Bool)

(assert (=> d!1489544 (=> (not res!1976577) (not e!2924265))))

(assert (=> d!1489544 (= res!1976577 (forall!11299 (Cons!52371 lt!1846152 lt!1846157) lambda!206400))))

(assert (=> d!1489544 (= lt!1846578 e!2924266)))

(assert (=> d!1489544 (= c!801499 ((_ is Nil!52371) (Cons!52371 lt!1846152 lt!1846157)))))

(assert (=> d!1489544 (noDuplicateKeys!1840 (Cons!52371 lt!1846152 lt!1846157))))

(assert (=> d!1489544 (= (addToMapMapFromBucket!1272 (Cons!52371 lt!1846152 lt!1846157) lt!1846156) lt!1846578)))

(declare-fun b!4687318 () Bool)

(declare-fun res!1976579 () Bool)

(assert (=> b!4687318 (=> (not res!1976579) (not e!2924265))))

(assert (=> b!4687318 (= res!1976579 (forall!11299 (toList!5570 lt!1846156) lambda!206400))))

(declare-fun b!4687319 () Bool)

(assert (=> b!4687319 (= e!2924267 call!327551)))

(assert (=> b!4687320 (= e!2924266 lt!1846156)))

(declare-fun lt!1846571 () Unit!123397)

(assert (=> b!4687320 (= lt!1846571 call!327550)))

(assert (=> b!4687320 call!327551))

(declare-fun lt!1846569 () Unit!123397)

(assert (=> b!4687320 (= lt!1846569 lt!1846571)))

(assert (=> b!4687320 call!327549))

(declare-fun lt!1846581 () Unit!123397)

(declare-fun Unit!123482 () Unit!123397)

(assert (=> b!4687320 (= lt!1846581 Unit!123482)))

(declare-fun bm!327546 () Bool)

(assert (=> bm!327546 (= call!327550 (lemmaContainsAllItsOwnKeys!688 lt!1846156))))

(declare-fun b!4687321 () Bool)

(assert (=> b!4687321 (= e!2924265 (invariantList!1400 (toList!5570 lt!1846578)))))

(assert (= (and d!1489544 c!801499) b!4687320))

(assert (= (and d!1489544 (not c!801499)) b!4687317))

(assert (= (and b!4687317 res!1976578) b!4687319))

(assert (= (or b!4687320 b!4687317) bm!327546))

(assert (= (or b!4687320 b!4687317) bm!327544))

(assert (= (or b!4687320 b!4687319) bm!327545))

(assert (= (and d!1489544 res!1976577) b!4687318))

(assert (= (and b!4687318 res!1976579) b!4687321))

(declare-fun m!5587135 () Bool)

(assert (=> bm!327545 m!5587135))

(declare-fun m!5587137 () Bool)

(assert (=> b!4687317 m!5587137))

(declare-fun m!5587139 () Bool)

(assert (=> b!4687317 m!5587139))

(declare-fun m!5587141 () Bool)

(assert (=> b!4687317 m!5587141))

(declare-fun m!5587143 () Bool)

(assert (=> b!4687317 m!5587143))

(declare-fun m!5587145 () Bool)

(assert (=> b!4687317 m!5587145))

(declare-fun m!5587147 () Bool)

(assert (=> b!4687317 m!5587147))

(assert (=> b!4687317 m!5587137))

(declare-fun m!5587149 () Bool)

(assert (=> b!4687317 m!5587149))

(assert (=> b!4687317 m!5587139))

(declare-fun m!5587151 () Bool)

(assert (=> b!4687317 m!5587151))

(declare-fun m!5587153 () Bool)

(assert (=> b!4687317 m!5587153))

(declare-fun m!5587155 () Bool)

(assert (=> b!4687317 m!5587155))

(assert (=> b!4687317 m!5587141))

(declare-fun m!5587157 () Bool)

(assert (=> b!4687317 m!5587157))

(declare-fun m!5587159 () Bool)

(assert (=> b!4687321 m!5587159))

(assert (=> bm!327544 m!5587135))

(declare-fun m!5587161 () Bool)

(assert (=> b!4687318 m!5587161))

(assert (=> bm!327546 m!5586917))

(declare-fun m!5587163 () Bool)

(assert (=> d!1489544 m!5587163))

(declare-fun m!5587165 () Bool)

(assert (=> d!1489544 m!5587165))

(assert (=> b!4687008 d!1489544))

(declare-fun d!1489546 () Bool)

(assert (=> d!1489546 (eq!999 (addToMapMapFromBucket!1272 (Cons!52371 lt!1846147 lt!1846149) lt!1846156) (+!2124 (addToMapMapFromBucket!1272 lt!1846149 lt!1846156) lt!1846147))))

(declare-fun lt!1846588 () Unit!123397)

(assert (=> d!1489546 (= lt!1846588 (choose!32510 lt!1846147 lt!1846149 lt!1846156))))

(assert (=> d!1489546 (noDuplicateKeys!1840 lt!1846149)))

(assert (=> d!1489546 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!248 lt!1846147 lt!1846149 lt!1846156) lt!1846588)))

(declare-fun bs!1084802 () Bool)

(assert (= bs!1084802 d!1489546))

(assert (=> bs!1084802 m!5586487))

(assert (=> bs!1084802 m!5586513))

(assert (=> bs!1084802 m!5586489))

(assert (=> bs!1084802 m!5586487))

(assert (=> bs!1084802 m!5586489))

(assert (=> bs!1084802 m!5586491))

(assert (=> bs!1084802 m!5587125))

(assert (=> bs!1084802 m!5586513))

(declare-fun m!5587167 () Bool)

(assert (=> bs!1084802 m!5587167))

(assert (=> b!4687008 d!1489546))

(declare-fun bs!1084803 () Bool)

(declare-fun b!4687325 () Bool)

(assert (= bs!1084803 (and b!4687325 b!4687317)))

(declare-fun lambda!206401 () Int)

(assert (=> bs!1084803 (= (= lt!1846156 lt!1846572) (= lambda!206401 lambda!206399))))

(declare-fun bs!1084804 () Bool)

(assert (= bs!1084804 (and b!4687325 b!4687299)))

(assert (=> bs!1084804 (= lambda!206401 lambda!206392)))

(declare-fun bs!1084805 () Bool)

(assert (= bs!1084805 (and b!4687325 b!4687219)))

(assert (=> bs!1084805 (= lambda!206401 lambda!206369)))

(declare-fun bs!1084806 () Bool)

(assert (= bs!1084806 (and b!4687325 d!1489432)))

(assert (=> bs!1084806 (= (= lt!1846156 lt!1846449) (= lambda!206401 lambda!206371))))

(declare-fun bs!1084807 () Bool)

(assert (= bs!1084807 (and b!4687325 b!4687320)))

(assert (=> bs!1084807 (= lambda!206401 lambda!206397)))

(assert (=> bs!1084803 (= lambda!206401 lambda!206398)))

(declare-fun bs!1084808 () Bool)

(assert (= bs!1084808 (and b!4687325 b!4687222)))

(assert (=> bs!1084808 (= lambda!206401 lambda!206368)))

(declare-fun bs!1084809 () Bool)

(assert (= bs!1084809 (and b!4687325 d!1489544)))

(assert (=> bs!1084809 (= (= lt!1846156 lt!1846578) (= lambda!206401 lambda!206400))))

(assert (=> bs!1084804 (= (= lt!1846156 lt!1846550) (= lambda!206401 lambda!206394))))

(assert (=> bs!1084805 (= (= lt!1846156 lt!1846443) (= lambda!206401 lambda!206370))))

(declare-fun bs!1084810 () Bool)

(assert (= bs!1084810 (and b!4687325 d!1489430)))

(assert (=> bs!1084810 (not (= lambda!206401 lambda!206319))))

(declare-fun bs!1084811 () Bool)

(assert (= bs!1084811 (and b!4687325 d!1489530)))

(assert (=> bs!1084811 (= (= lt!1846156 lt!1846556) (= lambda!206401 lambda!206395))))

(declare-fun bs!1084812 () Bool)

(assert (= bs!1084812 (and b!4687325 b!4687302)))

(assert (=> bs!1084812 (= lambda!206401 lambda!206391)))

(assert (=> b!4687325 true))

(declare-fun bs!1084813 () Bool)

(declare-fun b!4687322 () Bool)

(assert (= bs!1084813 (and b!4687322 b!4687317)))

(declare-fun lambda!206402 () Int)

(assert (=> bs!1084813 (= (= lt!1846156 lt!1846572) (= lambda!206402 lambda!206399))))

(declare-fun bs!1084814 () Bool)

(assert (= bs!1084814 (and b!4687322 b!4687299)))

(assert (=> bs!1084814 (= lambda!206402 lambda!206392)))

(declare-fun bs!1084815 () Bool)

(assert (= bs!1084815 (and b!4687322 b!4687219)))

(assert (=> bs!1084815 (= lambda!206402 lambda!206369)))

(declare-fun bs!1084816 () Bool)

(assert (= bs!1084816 (and b!4687322 b!4687325)))

(assert (=> bs!1084816 (= lambda!206402 lambda!206401)))

(declare-fun bs!1084817 () Bool)

(assert (= bs!1084817 (and b!4687322 d!1489432)))

(assert (=> bs!1084817 (= (= lt!1846156 lt!1846449) (= lambda!206402 lambda!206371))))

(declare-fun bs!1084818 () Bool)

(assert (= bs!1084818 (and b!4687322 b!4687320)))

(assert (=> bs!1084818 (= lambda!206402 lambda!206397)))

(assert (=> bs!1084813 (= lambda!206402 lambda!206398)))

(declare-fun bs!1084819 () Bool)

(assert (= bs!1084819 (and b!4687322 b!4687222)))

(assert (=> bs!1084819 (= lambda!206402 lambda!206368)))

(declare-fun bs!1084820 () Bool)

(assert (= bs!1084820 (and b!4687322 d!1489544)))

(assert (=> bs!1084820 (= (= lt!1846156 lt!1846578) (= lambda!206402 lambda!206400))))

(assert (=> bs!1084814 (= (= lt!1846156 lt!1846550) (= lambda!206402 lambda!206394))))

(assert (=> bs!1084815 (= (= lt!1846156 lt!1846443) (= lambda!206402 lambda!206370))))

(declare-fun bs!1084821 () Bool)

(assert (= bs!1084821 (and b!4687322 d!1489430)))

(assert (=> bs!1084821 (not (= lambda!206402 lambda!206319))))

(declare-fun bs!1084822 () Bool)

(assert (= bs!1084822 (and b!4687322 d!1489530)))

(assert (=> bs!1084822 (= (= lt!1846156 lt!1846556) (= lambda!206402 lambda!206395))))

(declare-fun bs!1084823 () Bool)

(assert (= bs!1084823 (and b!4687322 b!4687302)))

(assert (=> bs!1084823 (= lambda!206402 lambda!206391)))

(assert (=> b!4687322 true))

(declare-fun lambda!206403 () Int)

(declare-fun lt!1846594 () ListMap!4933)

(assert (=> bs!1084813 (= (= lt!1846594 lt!1846572) (= lambda!206403 lambda!206399))))

(assert (=> bs!1084814 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206392))))

(assert (=> bs!1084815 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206369))))

(assert (=> bs!1084816 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206401))))

(assert (=> bs!1084817 (= (= lt!1846594 lt!1846449) (= lambda!206403 lambda!206371))))

(assert (=> bs!1084818 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206397))))

(assert (=> bs!1084813 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206398))))

(assert (=> bs!1084819 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206368))))

(assert (=> bs!1084820 (= (= lt!1846594 lt!1846578) (= lambda!206403 lambda!206400))))

(assert (=> bs!1084814 (= (= lt!1846594 lt!1846550) (= lambda!206403 lambda!206394))))

(assert (=> bs!1084815 (= (= lt!1846594 lt!1846443) (= lambda!206403 lambda!206370))))

(assert (=> b!4687322 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206402))))

(assert (=> bs!1084821 (not (= lambda!206403 lambda!206319))))

(assert (=> bs!1084822 (= (= lt!1846594 lt!1846556) (= lambda!206403 lambda!206395))))

(assert (=> bs!1084823 (= (= lt!1846594 lt!1846156) (= lambda!206403 lambda!206391))))

(assert (=> b!4687322 true))

(declare-fun bs!1084824 () Bool)

(declare-fun d!1489548 () Bool)

(assert (= bs!1084824 (and d!1489548 b!4687299)))

(declare-fun lt!1846600 () ListMap!4933)

(declare-fun lambda!206404 () Int)

(assert (=> bs!1084824 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206392))))

(declare-fun bs!1084825 () Bool)

(assert (= bs!1084825 (and d!1489548 b!4687219)))

(assert (=> bs!1084825 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206369))))

(declare-fun bs!1084826 () Bool)

(assert (= bs!1084826 (and d!1489548 b!4687325)))

(assert (=> bs!1084826 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206401))))

(declare-fun bs!1084827 () Bool)

(assert (= bs!1084827 (and d!1489548 d!1489432)))

(assert (=> bs!1084827 (= (= lt!1846600 lt!1846449) (= lambda!206404 lambda!206371))))

(declare-fun bs!1084828 () Bool)

(assert (= bs!1084828 (and d!1489548 b!4687320)))

(assert (=> bs!1084828 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206397))))

(declare-fun bs!1084829 () Bool)

(assert (= bs!1084829 (and d!1489548 b!4687317)))

(assert (=> bs!1084829 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206398))))

(declare-fun bs!1084830 () Bool)

(assert (= bs!1084830 (and d!1489548 b!4687222)))

(assert (=> bs!1084830 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206368))))

(assert (=> bs!1084829 (= (= lt!1846600 lt!1846572) (= lambda!206404 lambda!206399))))

(declare-fun bs!1084831 () Bool)

(assert (= bs!1084831 (and d!1489548 b!4687322)))

(assert (=> bs!1084831 (= (= lt!1846600 lt!1846594) (= lambda!206404 lambda!206403))))

(declare-fun bs!1084832 () Bool)

(assert (= bs!1084832 (and d!1489548 d!1489544)))

(assert (=> bs!1084832 (= (= lt!1846600 lt!1846578) (= lambda!206404 lambda!206400))))

(assert (=> bs!1084824 (= (= lt!1846600 lt!1846550) (= lambda!206404 lambda!206394))))

(assert (=> bs!1084825 (= (= lt!1846600 lt!1846443) (= lambda!206404 lambda!206370))))

(assert (=> bs!1084831 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206402))))

(declare-fun bs!1084833 () Bool)

(assert (= bs!1084833 (and d!1489548 d!1489430)))

(assert (=> bs!1084833 (not (= lambda!206404 lambda!206319))))

(declare-fun bs!1084834 () Bool)

(assert (= bs!1084834 (and d!1489548 d!1489530)))

(assert (=> bs!1084834 (= (= lt!1846600 lt!1846556) (= lambda!206404 lambda!206395))))

(declare-fun bs!1084835 () Bool)

(assert (= bs!1084835 (and d!1489548 b!4687302)))

(assert (=> bs!1084835 (= (= lt!1846600 lt!1846156) (= lambda!206404 lambda!206391))))

(assert (=> d!1489548 true))

(declare-fun bm!327547 () Bool)

(declare-fun c!801500 () Bool)

(declare-fun call!327552 () Bool)

(assert (=> bm!327547 (= call!327552 (forall!11299 (toList!5570 lt!1846156) (ite c!801500 lambda!206401 lambda!206403)))))

(declare-fun call!327554 () Bool)

(declare-fun bm!327548 () Bool)

(assert (=> bm!327548 (= call!327554 (forall!11299 (toList!5570 lt!1846156) (ite c!801500 lambda!206401 lambda!206403)))))

(declare-fun e!2924269 () ListMap!4933)

(assert (=> b!4687322 (= e!2924269 lt!1846594)))

(declare-fun lt!1846597 () ListMap!4933)

(assert (=> b!4687322 (= lt!1846597 (+!2124 lt!1846156 (h!58606 (Cons!52371 lt!1846147 lt!1846149))))))

(assert (=> b!4687322 (= lt!1846594 (addToMapMapFromBucket!1272 (t!359661 (Cons!52371 lt!1846147 lt!1846149)) (+!2124 lt!1846156 (h!58606 (Cons!52371 lt!1846147 lt!1846149)))))))

(declare-fun lt!1846605 () Unit!123397)

(declare-fun call!327553 () Unit!123397)

(assert (=> b!4687322 (= lt!1846605 call!327553)))

(assert (=> b!4687322 (forall!11299 (toList!5570 lt!1846156) lambda!206402)))

(declare-fun lt!1846609 () Unit!123397)

(assert (=> b!4687322 (= lt!1846609 lt!1846605)))

(assert (=> b!4687322 (forall!11299 (toList!5570 lt!1846597) lambda!206403)))

(declare-fun lt!1846604 () Unit!123397)

(declare-fun Unit!123491 () Unit!123397)

(assert (=> b!4687322 (= lt!1846604 Unit!123491)))

(assert (=> b!4687322 (forall!11299 (t!359661 (Cons!52371 lt!1846147 lt!1846149)) lambda!206403)))

(declare-fun lt!1846595 () Unit!123397)

(declare-fun Unit!123492 () Unit!123397)

(assert (=> b!4687322 (= lt!1846595 Unit!123492)))

(declare-fun lt!1846601 () Unit!123397)

(declare-fun Unit!123493 () Unit!123397)

(assert (=> b!4687322 (= lt!1846601 Unit!123493)))

(declare-fun lt!1846607 () Unit!123397)

(assert (=> b!4687322 (= lt!1846607 (forallContained!3406 (toList!5570 lt!1846597) lambda!206403 (h!58606 (Cons!52371 lt!1846147 lt!1846149))))))

(assert (=> b!4687322 (contains!15548 lt!1846597 (_1!30171 (h!58606 (Cons!52371 lt!1846147 lt!1846149))))))

(declare-fun lt!1846606 () Unit!123397)

(declare-fun Unit!123495 () Unit!123397)

(assert (=> b!4687322 (= lt!1846606 Unit!123495)))

(assert (=> b!4687322 (contains!15548 lt!1846594 (_1!30171 (h!58606 (Cons!52371 lt!1846147 lt!1846149))))))

(declare-fun lt!1846608 () Unit!123397)

(declare-fun Unit!123496 () Unit!123397)

(assert (=> b!4687322 (= lt!1846608 Unit!123496)))

(assert (=> b!4687322 (forall!11299 (Cons!52371 lt!1846147 lt!1846149) lambda!206403)))

(declare-fun lt!1846599 () Unit!123397)

(declare-fun Unit!123498 () Unit!123397)

(assert (=> b!4687322 (= lt!1846599 Unit!123498)))

(assert (=> b!4687322 (forall!11299 (toList!5570 lt!1846597) lambda!206403)))

(declare-fun lt!1846602 () Unit!123397)

(declare-fun Unit!123499 () Unit!123397)

(assert (=> b!4687322 (= lt!1846602 Unit!123499)))

(declare-fun lt!1846592 () Unit!123397)

(declare-fun Unit!123500 () Unit!123397)

(assert (=> b!4687322 (= lt!1846592 Unit!123500)))

(declare-fun lt!1846589 () Unit!123397)

(assert (=> b!4687322 (= lt!1846589 (addForallContainsKeyThenBeforeAdding!687 lt!1846156 lt!1846594 (_1!30171 (h!58606 (Cons!52371 lt!1846147 lt!1846149))) (_2!30171 (h!58606 (Cons!52371 lt!1846147 lt!1846149)))))))

(assert (=> b!4687322 call!327552))

(declare-fun lt!1846596 () Unit!123397)

(assert (=> b!4687322 (= lt!1846596 lt!1846589)))

(assert (=> b!4687322 (forall!11299 (toList!5570 lt!1846156) lambda!206403)))

(declare-fun lt!1846598 () Unit!123397)

(declare-fun Unit!123502 () Unit!123397)

(assert (=> b!4687322 (= lt!1846598 Unit!123502)))

(declare-fun res!1976581 () Bool)

(assert (=> b!4687322 (= res!1976581 (forall!11299 (Cons!52371 lt!1846147 lt!1846149) lambda!206403))))

(declare-fun e!2924270 () Bool)

(assert (=> b!4687322 (=> (not res!1976581) (not e!2924270))))

(assert (=> b!4687322 e!2924270))

(declare-fun lt!1846590 () Unit!123397)

(declare-fun Unit!123503 () Unit!123397)

(assert (=> b!4687322 (= lt!1846590 Unit!123503)))

(declare-fun e!2924268 () Bool)

(assert (=> d!1489548 e!2924268))

(declare-fun res!1976580 () Bool)

(assert (=> d!1489548 (=> (not res!1976580) (not e!2924268))))

(assert (=> d!1489548 (= res!1976580 (forall!11299 (Cons!52371 lt!1846147 lt!1846149) lambda!206404))))

(assert (=> d!1489548 (= lt!1846600 e!2924269)))

(assert (=> d!1489548 (= c!801500 ((_ is Nil!52371) (Cons!52371 lt!1846147 lt!1846149)))))

(assert (=> d!1489548 (noDuplicateKeys!1840 (Cons!52371 lt!1846147 lt!1846149))))

(assert (=> d!1489548 (= (addToMapMapFromBucket!1272 (Cons!52371 lt!1846147 lt!1846149) lt!1846156) lt!1846600)))

(declare-fun b!4687323 () Bool)

(declare-fun res!1976582 () Bool)

(assert (=> b!4687323 (=> (not res!1976582) (not e!2924268))))

(assert (=> b!4687323 (= res!1976582 (forall!11299 (toList!5570 lt!1846156) lambda!206404))))

(declare-fun b!4687324 () Bool)

(assert (=> b!4687324 (= e!2924270 call!327554)))

(assert (=> b!4687325 (= e!2924269 lt!1846156)))

(declare-fun lt!1846593 () Unit!123397)

(assert (=> b!4687325 (= lt!1846593 call!327553)))

(assert (=> b!4687325 call!327554))

(declare-fun lt!1846591 () Unit!123397)

(assert (=> b!4687325 (= lt!1846591 lt!1846593)))

(assert (=> b!4687325 call!327552))

(declare-fun lt!1846603 () Unit!123397)

(declare-fun Unit!123504 () Unit!123397)

(assert (=> b!4687325 (= lt!1846603 Unit!123504)))

(declare-fun bm!327549 () Bool)

(assert (=> bm!327549 (= call!327553 (lemmaContainsAllItsOwnKeys!688 lt!1846156))))

(declare-fun b!4687326 () Bool)

(assert (=> b!4687326 (= e!2924268 (invariantList!1400 (toList!5570 lt!1846600)))))

(assert (= (and d!1489548 c!801500) b!4687325))

(assert (= (and d!1489548 (not c!801500)) b!4687322))

(assert (= (and b!4687322 res!1976581) b!4687324))

(assert (= (or b!4687325 b!4687322) bm!327549))

(assert (= (or b!4687325 b!4687322) bm!327547))

(assert (= (or b!4687325 b!4687324) bm!327548))

(assert (= (and d!1489548 res!1976580) b!4687323))

(assert (= (and b!4687323 res!1976582) b!4687326))

(declare-fun m!5587169 () Bool)

(assert (=> bm!327548 m!5587169))

(declare-fun m!5587171 () Bool)

(assert (=> b!4687322 m!5587171))

(declare-fun m!5587173 () Bool)

(assert (=> b!4687322 m!5587173))

(declare-fun m!5587175 () Bool)

(assert (=> b!4687322 m!5587175))

(declare-fun m!5587177 () Bool)

(assert (=> b!4687322 m!5587177))

(declare-fun m!5587179 () Bool)

(assert (=> b!4687322 m!5587179))

(declare-fun m!5587181 () Bool)

(assert (=> b!4687322 m!5587181))

(assert (=> b!4687322 m!5587171))

(declare-fun m!5587183 () Bool)

(assert (=> b!4687322 m!5587183))

(assert (=> b!4687322 m!5587173))

(declare-fun m!5587185 () Bool)

(assert (=> b!4687322 m!5587185))

(declare-fun m!5587187 () Bool)

(assert (=> b!4687322 m!5587187))

(declare-fun m!5587189 () Bool)

(assert (=> b!4687322 m!5587189))

(assert (=> b!4687322 m!5587175))

(declare-fun m!5587191 () Bool)

(assert (=> b!4687322 m!5587191))

(declare-fun m!5587193 () Bool)

(assert (=> b!4687326 m!5587193))

(assert (=> bm!327547 m!5587169))

(declare-fun m!5587195 () Bool)

(assert (=> b!4687323 m!5587195))

(assert (=> bm!327549 m!5586917))

(declare-fun m!5587197 () Bool)

(assert (=> d!1489548 m!5587197))

(declare-fun m!5587199 () Bool)

(assert (=> d!1489548 m!5587199))

(assert (=> b!4687008 d!1489548))

(declare-fun d!1489550 () Bool)

(declare-fun e!2924271 () Bool)

(assert (=> d!1489550 e!2924271))

(declare-fun res!1976584 () Bool)

(assert (=> d!1489550 (=> (not res!1976584) (not e!2924271))))

(declare-fun lt!1846610 () ListMap!4933)

(assert (=> d!1489550 (= res!1976584 (contains!15548 lt!1846610 (_1!30171 lt!1846147)))))

(declare-fun lt!1846612 () List!52495)

(assert (=> d!1489550 (= lt!1846610 (ListMap!4934 lt!1846612))))

(declare-fun lt!1846613 () Unit!123397)

(declare-fun lt!1846611 () Unit!123397)

(assert (=> d!1489550 (= lt!1846613 lt!1846611)))

(assert (=> d!1489550 (= (getValueByKey!1759 lt!1846612 (_1!30171 lt!1846147)) (Some!12044 (_2!30171 lt!1846147)))))

(assert (=> d!1489550 (= lt!1846611 (lemmaContainsTupThenGetReturnValue!990 lt!1846612 (_1!30171 lt!1846147) (_2!30171 lt!1846147)))))

(assert (=> d!1489550 (= lt!1846612 (insertNoDuplicatedKeys!498 (toList!5570 (addToMapMapFromBucket!1272 lt!1846149 lt!1846156)) (_1!30171 lt!1846147) (_2!30171 lt!1846147)))))

(assert (=> d!1489550 (= (+!2124 (addToMapMapFromBucket!1272 lt!1846149 lt!1846156) lt!1846147) lt!1846610)))

(declare-fun b!4687327 () Bool)

(declare-fun res!1976583 () Bool)

(assert (=> b!4687327 (=> (not res!1976583) (not e!2924271))))

(assert (=> b!4687327 (= res!1976583 (= (getValueByKey!1759 (toList!5570 lt!1846610) (_1!30171 lt!1846147)) (Some!12044 (_2!30171 lt!1846147))))))

(declare-fun b!4687328 () Bool)

(assert (=> b!4687328 (= e!2924271 (contains!15552 (toList!5570 lt!1846610) lt!1846147))))

(assert (= (and d!1489550 res!1976584) b!4687327))

(assert (= (and b!4687327 res!1976583) b!4687328))

(declare-fun m!5587201 () Bool)

(assert (=> d!1489550 m!5587201))

(declare-fun m!5587203 () Bool)

(assert (=> d!1489550 m!5587203))

(declare-fun m!5587205 () Bool)

(assert (=> d!1489550 m!5587205))

(declare-fun m!5587207 () Bool)

(assert (=> d!1489550 m!5587207))

(declare-fun m!5587209 () Bool)

(assert (=> b!4687327 m!5587209))

(declare-fun m!5587211 () Bool)

(assert (=> b!4687328 m!5587211))

(assert (=> b!4687008 d!1489550))

(declare-fun bs!1084836 () Bool)

(declare-fun d!1489552 () Bool)

(assert (= bs!1084836 (and d!1489552 b!4687299)))

(declare-fun lambda!206405 () Int)

(assert (=> bs!1084836 (not (= lambda!206405 lambda!206392))))

(declare-fun bs!1084837 () Bool)

(assert (= bs!1084837 (and d!1489552 b!4687219)))

(assert (=> bs!1084837 (not (= lambda!206405 lambda!206369))))

(declare-fun bs!1084838 () Bool)

(assert (= bs!1084838 (and d!1489552 b!4687325)))

(assert (=> bs!1084838 (not (= lambda!206405 lambda!206401))))

(declare-fun bs!1084839 () Bool)

(assert (= bs!1084839 (and d!1489552 d!1489548)))

(assert (=> bs!1084839 (not (= lambda!206405 lambda!206404))))

(declare-fun bs!1084840 () Bool)

(assert (= bs!1084840 (and d!1489552 d!1489432)))

(assert (=> bs!1084840 (not (= lambda!206405 lambda!206371))))

(declare-fun bs!1084841 () Bool)

(assert (= bs!1084841 (and d!1489552 b!4687320)))

(assert (=> bs!1084841 (not (= lambda!206405 lambda!206397))))

(declare-fun bs!1084842 () Bool)

(assert (= bs!1084842 (and d!1489552 b!4687317)))

(assert (=> bs!1084842 (not (= lambda!206405 lambda!206398))))

(declare-fun bs!1084843 () Bool)

(assert (= bs!1084843 (and d!1489552 b!4687222)))

(assert (=> bs!1084843 (not (= lambda!206405 lambda!206368))))

(assert (=> bs!1084842 (not (= lambda!206405 lambda!206399))))

(declare-fun bs!1084844 () Bool)

(assert (= bs!1084844 (and d!1489552 b!4687322)))

(assert (=> bs!1084844 (not (= lambda!206405 lambda!206403))))

(declare-fun bs!1084845 () Bool)

(assert (= bs!1084845 (and d!1489552 d!1489544)))

(assert (=> bs!1084845 (not (= lambda!206405 lambda!206400))))

(assert (=> bs!1084836 (not (= lambda!206405 lambda!206394))))

(assert (=> bs!1084837 (not (= lambda!206405 lambda!206370))))

(assert (=> bs!1084844 (not (= lambda!206405 lambda!206402))))

(declare-fun bs!1084846 () Bool)

(assert (= bs!1084846 (and d!1489552 d!1489430)))

(assert (=> bs!1084846 (= lambda!206405 lambda!206319)))

(declare-fun bs!1084847 () Bool)

(assert (= bs!1084847 (and d!1489552 d!1489530)))

(assert (=> bs!1084847 (not (= lambda!206405 lambda!206395))))

(declare-fun bs!1084848 () Bool)

(assert (= bs!1084848 (and d!1489552 b!4687302)))

(assert (=> bs!1084848 (not (= lambda!206405 lambda!206391))))

(assert (=> d!1489552 true))

(assert (=> d!1489552 true))

(assert (=> d!1489552 (= (allKeysSameHash!1666 newBucket!218 hash!405 hashF!1323) (forall!11299 newBucket!218 lambda!206405))))

(declare-fun bs!1084849 () Bool)

(assert (= bs!1084849 d!1489552))

(declare-fun m!5587213 () Bool)

(assert (=> bs!1084849 m!5587213))

(assert (=> b!4686998 d!1489552))

(declare-fun bs!1084850 () Bool)

(declare-fun b!4687332 () Bool)

(assert (= bs!1084850 (and b!4687332 b!4687299)))

(declare-fun lambda!206406 () Int)

(assert (=> bs!1084850 (= lambda!206406 lambda!206392)))

(declare-fun bs!1084851 () Bool)

(assert (= bs!1084851 (and b!4687332 b!4687219)))

(assert (=> bs!1084851 (= lambda!206406 lambda!206369)))

(declare-fun bs!1084852 () Bool)

(assert (= bs!1084852 (and b!4687332 b!4687325)))

(assert (=> bs!1084852 (= lambda!206406 lambda!206401)))

(declare-fun bs!1084853 () Bool)

(assert (= bs!1084853 (and b!4687332 d!1489548)))

(assert (=> bs!1084853 (= (= lt!1846156 lt!1846600) (= lambda!206406 lambda!206404))))

(declare-fun bs!1084854 () Bool)

(assert (= bs!1084854 (and b!4687332 d!1489432)))

(assert (=> bs!1084854 (= (= lt!1846156 lt!1846449) (= lambda!206406 lambda!206371))))

(declare-fun bs!1084855 () Bool)

(assert (= bs!1084855 (and b!4687332 d!1489552)))

(assert (=> bs!1084855 (not (= lambda!206406 lambda!206405))))

(declare-fun bs!1084856 () Bool)

(assert (= bs!1084856 (and b!4687332 b!4687320)))

(assert (=> bs!1084856 (= lambda!206406 lambda!206397)))

(declare-fun bs!1084857 () Bool)

(assert (= bs!1084857 (and b!4687332 b!4687317)))

(assert (=> bs!1084857 (= lambda!206406 lambda!206398)))

(declare-fun bs!1084858 () Bool)

(assert (= bs!1084858 (and b!4687332 b!4687222)))

(assert (=> bs!1084858 (= lambda!206406 lambda!206368)))

(assert (=> bs!1084857 (= (= lt!1846156 lt!1846572) (= lambda!206406 lambda!206399))))

(declare-fun bs!1084859 () Bool)

(assert (= bs!1084859 (and b!4687332 b!4687322)))

(assert (=> bs!1084859 (= (= lt!1846156 lt!1846594) (= lambda!206406 lambda!206403))))

(declare-fun bs!1084860 () Bool)

(assert (= bs!1084860 (and b!4687332 d!1489544)))

(assert (=> bs!1084860 (= (= lt!1846156 lt!1846578) (= lambda!206406 lambda!206400))))

(assert (=> bs!1084850 (= (= lt!1846156 lt!1846550) (= lambda!206406 lambda!206394))))

(assert (=> bs!1084851 (= (= lt!1846156 lt!1846443) (= lambda!206406 lambda!206370))))

(assert (=> bs!1084859 (= lambda!206406 lambda!206402)))

(declare-fun bs!1084861 () Bool)

(assert (= bs!1084861 (and b!4687332 d!1489430)))

(assert (=> bs!1084861 (not (= lambda!206406 lambda!206319))))

(declare-fun bs!1084862 () Bool)

(assert (= bs!1084862 (and b!4687332 d!1489530)))

(assert (=> bs!1084862 (= (= lt!1846156 lt!1846556) (= lambda!206406 lambda!206395))))

(declare-fun bs!1084863 () Bool)

(assert (= bs!1084863 (and b!4687332 b!4687302)))

(assert (=> bs!1084863 (= lambda!206406 lambda!206391)))

(assert (=> b!4687332 true))

(declare-fun bs!1084864 () Bool)

(declare-fun b!4687329 () Bool)

(assert (= bs!1084864 (and b!4687329 b!4687299)))

(declare-fun lambda!206407 () Int)

(assert (=> bs!1084864 (= lambda!206407 lambda!206392)))

(declare-fun bs!1084865 () Bool)

(assert (= bs!1084865 (and b!4687329 b!4687219)))

(assert (=> bs!1084865 (= lambda!206407 lambda!206369)))

(declare-fun bs!1084866 () Bool)

(assert (= bs!1084866 (and b!4687329 b!4687325)))

(assert (=> bs!1084866 (= lambda!206407 lambda!206401)))

(declare-fun bs!1084867 () Bool)

(assert (= bs!1084867 (and b!4687329 d!1489548)))

(assert (=> bs!1084867 (= (= lt!1846156 lt!1846600) (= lambda!206407 lambda!206404))))

(declare-fun bs!1084868 () Bool)

(assert (= bs!1084868 (and b!4687329 d!1489432)))

(assert (=> bs!1084868 (= (= lt!1846156 lt!1846449) (= lambda!206407 lambda!206371))))

(declare-fun bs!1084869 () Bool)

(assert (= bs!1084869 (and b!4687329 d!1489552)))

(assert (=> bs!1084869 (not (= lambda!206407 lambda!206405))))

(declare-fun bs!1084870 () Bool)

(assert (= bs!1084870 (and b!4687329 b!4687320)))

(assert (=> bs!1084870 (= lambda!206407 lambda!206397)))

(declare-fun bs!1084871 () Bool)

(assert (= bs!1084871 (and b!4687329 b!4687317)))

(assert (=> bs!1084871 (= lambda!206407 lambda!206398)))

(declare-fun bs!1084872 () Bool)

(assert (= bs!1084872 (and b!4687329 b!4687222)))

(assert (=> bs!1084872 (= lambda!206407 lambda!206368)))

(assert (=> bs!1084871 (= (= lt!1846156 lt!1846572) (= lambda!206407 lambda!206399))))

(declare-fun bs!1084873 () Bool)

(assert (= bs!1084873 (and b!4687329 b!4687322)))

(assert (=> bs!1084873 (= (= lt!1846156 lt!1846594) (= lambda!206407 lambda!206403))))

(declare-fun bs!1084874 () Bool)

(assert (= bs!1084874 (and b!4687329 d!1489544)))

(assert (=> bs!1084874 (= (= lt!1846156 lt!1846578) (= lambda!206407 lambda!206400))))

(assert (=> bs!1084864 (= (= lt!1846156 lt!1846550) (= lambda!206407 lambda!206394))))

(assert (=> bs!1084865 (= (= lt!1846156 lt!1846443) (= lambda!206407 lambda!206370))))

(assert (=> bs!1084873 (= lambda!206407 lambda!206402)))

(declare-fun bs!1084875 () Bool)

(assert (= bs!1084875 (and b!4687329 b!4687332)))

(assert (=> bs!1084875 (= lambda!206407 lambda!206406)))

(declare-fun bs!1084876 () Bool)

(assert (= bs!1084876 (and b!4687329 d!1489430)))

(assert (=> bs!1084876 (not (= lambda!206407 lambda!206319))))

(declare-fun bs!1084877 () Bool)

(assert (= bs!1084877 (and b!4687329 d!1489530)))

(assert (=> bs!1084877 (= (= lt!1846156 lt!1846556) (= lambda!206407 lambda!206395))))

(declare-fun bs!1084878 () Bool)

(assert (= bs!1084878 (and b!4687329 b!4687302)))

(assert (=> bs!1084878 (= lambda!206407 lambda!206391)))

(assert (=> b!4687329 true))

(declare-fun lambda!206408 () Int)

(declare-fun lt!1846619 () ListMap!4933)

(assert (=> bs!1084864 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206392))))

(assert (=> bs!1084865 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206369))))

(assert (=> bs!1084866 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206401))))

(assert (=> bs!1084867 (= (= lt!1846619 lt!1846600) (= lambda!206408 lambda!206404))))

(assert (=> bs!1084868 (= (= lt!1846619 lt!1846449) (= lambda!206408 lambda!206371))))

(assert (=> bs!1084869 (not (= lambda!206408 lambda!206405))))

(assert (=> bs!1084870 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206397))))

(assert (=> bs!1084871 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206398))))

(assert (=> bs!1084871 (= (= lt!1846619 lt!1846572) (= lambda!206408 lambda!206399))))

(assert (=> bs!1084873 (= (= lt!1846619 lt!1846594) (= lambda!206408 lambda!206403))))

(assert (=> bs!1084874 (= (= lt!1846619 lt!1846578) (= lambda!206408 lambda!206400))))

(assert (=> bs!1084864 (= (= lt!1846619 lt!1846550) (= lambda!206408 lambda!206394))))

(assert (=> bs!1084865 (= (= lt!1846619 lt!1846443) (= lambda!206408 lambda!206370))))

(assert (=> bs!1084873 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206402))))

(assert (=> bs!1084875 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206406))))

(assert (=> bs!1084876 (not (= lambda!206408 lambda!206319))))

(assert (=> bs!1084877 (= (= lt!1846619 lt!1846556) (= lambda!206408 lambda!206395))))

(assert (=> bs!1084878 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206391))))

(assert (=> b!4687329 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206407))))

(assert (=> bs!1084872 (= (= lt!1846619 lt!1846156) (= lambda!206408 lambda!206368))))

(assert (=> b!4687329 true))

(declare-fun bs!1084879 () Bool)

(declare-fun d!1489554 () Bool)

(assert (= bs!1084879 (and d!1489554 b!4687299)))

(declare-fun lambda!206409 () Int)

(declare-fun lt!1846625 () ListMap!4933)

(assert (=> bs!1084879 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206392))))

(declare-fun bs!1084880 () Bool)

(assert (= bs!1084880 (and d!1489554 b!4687219)))

(assert (=> bs!1084880 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206369))))

(declare-fun bs!1084881 () Bool)

(assert (= bs!1084881 (and d!1489554 b!4687325)))

(assert (=> bs!1084881 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206401))))

(declare-fun bs!1084882 () Bool)

(assert (= bs!1084882 (and d!1489554 d!1489548)))

(assert (=> bs!1084882 (= (= lt!1846625 lt!1846600) (= lambda!206409 lambda!206404))))

(declare-fun bs!1084883 () Bool)

(assert (= bs!1084883 (and d!1489554 d!1489432)))

(assert (=> bs!1084883 (= (= lt!1846625 lt!1846449) (= lambda!206409 lambda!206371))))

(declare-fun bs!1084884 () Bool)

(assert (= bs!1084884 (and d!1489554 d!1489552)))

(assert (=> bs!1084884 (not (= lambda!206409 lambda!206405))))

(declare-fun bs!1084885 () Bool)

(assert (= bs!1084885 (and d!1489554 b!4687320)))

(assert (=> bs!1084885 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206397))))

(declare-fun bs!1084886 () Bool)

(assert (= bs!1084886 (and d!1489554 b!4687317)))

(assert (=> bs!1084886 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206398))))

(declare-fun bs!1084887 () Bool)

(assert (= bs!1084887 (and d!1489554 b!4687329)))

(assert (=> bs!1084887 (= (= lt!1846625 lt!1846619) (= lambda!206409 lambda!206408))))

(assert (=> bs!1084886 (= (= lt!1846625 lt!1846572) (= lambda!206409 lambda!206399))))

(declare-fun bs!1084888 () Bool)

(assert (= bs!1084888 (and d!1489554 b!4687322)))

(assert (=> bs!1084888 (= (= lt!1846625 lt!1846594) (= lambda!206409 lambda!206403))))

(declare-fun bs!1084889 () Bool)

(assert (= bs!1084889 (and d!1489554 d!1489544)))

(assert (=> bs!1084889 (= (= lt!1846625 lt!1846578) (= lambda!206409 lambda!206400))))

(assert (=> bs!1084879 (= (= lt!1846625 lt!1846550) (= lambda!206409 lambda!206394))))

(assert (=> bs!1084880 (= (= lt!1846625 lt!1846443) (= lambda!206409 lambda!206370))))

(assert (=> bs!1084888 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206402))))

(declare-fun bs!1084890 () Bool)

(assert (= bs!1084890 (and d!1489554 b!4687332)))

(assert (=> bs!1084890 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206406))))

(declare-fun bs!1084891 () Bool)

(assert (= bs!1084891 (and d!1489554 d!1489430)))

(assert (=> bs!1084891 (not (= lambda!206409 lambda!206319))))

(declare-fun bs!1084892 () Bool)

(assert (= bs!1084892 (and d!1489554 d!1489530)))

(assert (=> bs!1084892 (= (= lt!1846625 lt!1846556) (= lambda!206409 lambda!206395))))

(declare-fun bs!1084893 () Bool)

(assert (= bs!1084893 (and d!1489554 b!4687302)))

(assert (=> bs!1084893 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206391))))

(assert (=> bs!1084887 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206407))))

(declare-fun bs!1084894 () Bool)

(assert (= bs!1084894 (and d!1489554 b!4687222)))

(assert (=> bs!1084894 (= (= lt!1846625 lt!1846156) (= lambda!206409 lambda!206368))))

(assert (=> d!1489554 true))

(declare-fun c!801501 () Bool)

(declare-fun bm!327550 () Bool)

(declare-fun call!327555 () Bool)

(assert (=> bm!327550 (= call!327555 (forall!11299 (toList!5570 lt!1846156) (ite c!801501 lambda!206406 lambda!206408)))))

(declare-fun call!327557 () Bool)

(declare-fun bm!327551 () Bool)

(assert (=> bm!327551 (= call!327557 (forall!11299 (toList!5570 lt!1846156) (ite c!801501 lambda!206406 lambda!206408)))))

(declare-fun e!2924273 () ListMap!4933)

(assert (=> b!4687329 (= e!2924273 lt!1846619)))

(declare-fun lt!1846622 () ListMap!4933)

(assert (=> b!4687329 (= lt!1846622 (+!2124 lt!1846156 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023))))))))

(assert (=> b!4687329 (= lt!1846619 (addToMapMapFromBucket!1272 (t!359661 (_2!30172 (h!58607 (toList!5569 lm!2023)))) (+!2124 lt!1846156 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023)))))))))

(declare-fun lt!1846630 () Unit!123397)

(declare-fun call!327556 () Unit!123397)

(assert (=> b!4687329 (= lt!1846630 call!327556)))

(assert (=> b!4687329 (forall!11299 (toList!5570 lt!1846156) lambda!206407)))

(declare-fun lt!1846634 () Unit!123397)

(assert (=> b!4687329 (= lt!1846634 lt!1846630)))

(assert (=> b!4687329 (forall!11299 (toList!5570 lt!1846622) lambda!206408)))

(declare-fun lt!1846629 () Unit!123397)

(declare-fun Unit!123507 () Unit!123397)

(assert (=> b!4687329 (= lt!1846629 Unit!123507)))

(assert (=> b!4687329 (forall!11299 (t!359661 (_2!30172 (h!58607 (toList!5569 lm!2023)))) lambda!206408)))

(declare-fun lt!1846620 () Unit!123397)

(declare-fun Unit!123508 () Unit!123397)

(assert (=> b!4687329 (= lt!1846620 Unit!123508)))

(declare-fun lt!1846626 () Unit!123397)

(declare-fun Unit!123509 () Unit!123397)

(assert (=> b!4687329 (= lt!1846626 Unit!123509)))

(declare-fun lt!1846632 () Unit!123397)

(assert (=> b!4687329 (= lt!1846632 (forallContained!3406 (toList!5570 lt!1846622) lambda!206408 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023))))))))

(assert (=> b!4687329 (contains!15548 lt!1846622 (_1!30171 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023))))))))

(declare-fun lt!1846631 () Unit!123397)

(declare-fun Unit!123510 () Unit!123397)

(assert (=> b!4687329 (= lt!1846631 Unit!123510)))

(assert (=> b!4687329 (contains!15548 lt!1846619 (_1!30171 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023))))))))

(declare-fun lt!1846633 () Unit!123397)

(declare-fun Unit!123511 () Unit!123397)

(assert (=> b!4687329 (= lt!1846633 Unit!123511)))

(assert (=> b!4687329 (forall!11299 (_2!30172 (h!58607 (toList!5569 lm!2023))) lambda!206408)))

(declare-fun lt!1846624 () Unit!123397)

(declare-fun Unit!123512 () Unit!123397)

(assert (=> b!4687329 (= lt!1846624 Unit!123512)))

(assert (=> b!4687329 (forall!11299 (toList!5570 lt!1846622) lambda!206408)))

(declare-fun lt!1846627 () Unit!123397)

(declare-fun Unit!123513 () Unit!123397)

(assert (=> b!4687329 (= lt!1846627 Unit!123513)))

(declare-fun lt!1846617 () Unit!123397)

(declare-fun Unit!123514 () Unit!123397)

(assert (=> b!4687329 (= lt!1846617 Unit!123514)))

(declare-fun lt!1846614 () Unit!123397)

(assert (=> b!4687329 (= lt!1846614 (addForallContainsKeyThenBeforeAdding!687 lt!1846156 lt!1846619 (_1!30171 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023))))) (_2!30171 (h!58606 (_2!30172 (h!58607 (toList!5569 lm!2023)))))))))

(assert (=> b!4687329 call!327555))

(declare-fun lt!1846621 () Unit!123397)

(assert (=> b!4687329 (= lt!1846621 lt!1846614)))

(assert (=> b!4687329 (forall!11299 (toList!5570 lt!1846156) lambda!206408)))

(declare-fun lt!1846623 () Unit!123397)

(declare-fun Unit!123515 () Unit!123397)

(assert (=> b!4687329 (= lt!1846623 Unit!123515)))

(declare-fun res!1976586 () Bool)

(assert (=> b!4687329 (= res!1976586 (forall!11299 (_2!30172 (h!58607 (toList!5569 lm!2023))) lambda!206408))))

(declare-fun e!2924274 () Bool)

(assert (=> b!4687329 (=> (not res!1976586) (not e!2924274))))

(assert (=> b!4687329 e!2924274))

(declare-fun lt!1846615 () Unit!123397)

(declare-fun Unit!123516 () Unit!123397)

(assert (=> b!4687329 (= lt!1846615 Unit!123516)))

(declare-fun e!2924272 () Bool)

(assert (=> d!1489554 e!2924272))

(declare-fun res!1976585 () Bool)

(assert (=> d!1489554 (=> (not res!1976585) (not e!2924272))))

(assert (=> d!1489554 (= res!1976585 (forall!11299 (_2!30172 (h!58607 (toList!5569 lm!2023))) lambda!206409))))

(assert (=> d!1489554 (= lt!1846625 e!2924273)))

(assert (=> d!1489554 (= c!801501 ((_ is Nil!52371) (_2!30172 (h!58607 (toList!5569 lm!2023)))))))

(assert (=> d!1489554 (noDuplicateKeys!1840 (_2!30172 (h!58607 (toList!5569 lm!2023))))))

(assert (=> d!1489554 (= (addToMapMapFromBucket!1272 (_2!30172 (h!58607 (toList!5569 lm!2023))) lt!1846156) lt!1846625)))

(declare-fun b!4687330 () Bool)

(declare-fun res!1976587 () Bool)

(assert (=> b!4687330 (=> (not res!1976587) (not e!2924272))))

(assert (=> b!4687330 (= res!1976587 (forall!11299 (toList!5570 lt!1846156) lambda!206409))))

(declare-fun b!4687331 () Bool)

(assert (=> b!4687331 (= e!2924274 call!327557)))

(assert (=> b!4687332 (= e!2924273 lt!1846156)))

(declare-fun lt!1846618 () Unit!123397)

(assert (=> b!4687332 (= lt!1846618 call!327556)))

(assert (=> b!4687332 call!327557))

(declare-fun lt!1846616 () Unit!123397)

(assert (=> b!4687332 (= lt!1846616 lt!1846618)))

(assert (=> b!4687332 call!327555))

(declare-fun lt!1846628 () Unit!123397)

(declare-fun Unit!123517 () Unit!123397)

(assert (=> b!4687332 (= lt!1846628 Unit!123517)))

(declare-fun bm!327552 () Bool)

(assert (=> bm!327552 (= call!327556 (lemmaContainsAllItsOwnKeys!688 lt!1846156))))

(declare-fun b!4687333 () Bool)

(assert (=> b!4687333 (= e!2924272 (invariantList!1400 (toList!5570 lt!1846625)))))

(assert (= (and d!1489554 c!801501) b!4687332))

(assert (= (and d!1489554 (not c!801501)) b!4687329))

(assert (= (and b!4687329 res!1976586) b!4687331))

(assert (= (or b!4687332 b!4687329) bm!327552))

(assert (= (or b!4687332 b!4687329) bm!327550))

(assert (= (or b!4687332 b!4687331) bm!327551))

(assert (= (and d!1489554 res!1976585) b!4687330))

(assert (= (and b!4687330 res!1976587) b!4687333))

(declare-fun m!5587215 () Bool)

(assert (=> bm!327551 m!5587215))

(declare-fun m!5587217 () Bool)

(assert (=> b!4687329 m!5587217))

(declare-fun m!5587219 () Bool)

(assert (=> b!4687329 m!5587219))

(declare-fun m!5587221 () Bool)

(assert (=> b!4687329 m!5587221))

(declare-fun m!5587223 () Bool)

(assert (=> b!4687329 m!5587223))

(declare-fun m!5587225 () Bool)

(assert (=> b!4687329 m!5587225))

(declare-fun m!5587227 () Bool)

(assert (=> b!4687329 m!5587227))

(assert (=> b!4687329 m!5587217))

(declare-fun m!5587229 () Bool)

(assert (=> b!4687329 m!5587229))

(assert (=> b!4687329 m!5587219))

(declare-fun m!5587231 () Bool)

(assert (=> b!4687329 m!5587231))

(declare-fun m!5587233 () Bool)

(assert (=> b!4687329 m!5587233))

(declare-fun m!5587235 () Bool)

(assert (=> b!4687329 m!5587235))

(assert (=> b!4687329 m!5587221))

(declare-fun m!5587237 () Bool)

(assert (=> b!4687329 m!5587237))

(declare-fun m!5587239 () Bool)

(assert (=> b!4687333 m!5587239))

(assert (=> bm!327550 m!5587215))

(declare-fun m!5587241 () Bool)

(assert (=> b!4687330 m!5587241))

(assert (=> bm!327552 m!5586917))

(declare-fun m!5587243 () Bool)

(assert (=> d!1489554 m!5587243))

(declare-fun m!5587245 () Bool)

(assert (=> d!1489554 m!5587245))

(assert (=> b!4687009 d!1489554))

(declare-fun bs!1084895 () Bool)

(declare-fun d!1489556 () Bool)

(assert (= bs!1084895 (and d!1489556 start!473812)))

(declare-fun lambda!206410 () Int)

(assert (=> bs!1084895 (= lambda!206410 lambda!206277)))

(declare-fun bs!1084896 () Bool)

(assert (= bs!1084896 (and d!1489556 d!1489424)))

(assert (=> bs!1084896 (= lambda!206410 lambda!206316)))

(declare-fun bs!1084897 () Bool)

(assert (= bs!1084897 (and d!1489556 d!1489506)))

(assert (=> bs!1084897 (= lambda!206410 lambda!206389)))

(declare-fun bs!1084898 () Bool)

(assert (= bs!1084898 (and d!1489556 d!1489542)))

(assert (=> bs!1084898 (= lambda!206410 lambda!206396)))

(declare-fun lt!1846635 () ListMap!4933)

(assert (=> d!1489556 (invariantList!1400 (toList!5570 lt!1846635))))

(declare-fun e!2924275 () ListMap!4933)

(assert (=> d!1489556 (= lt!1846635 e!2924275)))

(declare-fun c!801502 () Bool)

(assert (=> d!1489556 (= c!801502 ((_ is Cons!52372) (t!359662 (toList!5569 lm!2023))))))

(assert (=> d!1489556 (forall!11297 (t!359662 (toList!5569 lm!2023)) lambda!206410)))

(assert (=> d!1489556 (= (extractMap!1866 (t!359662 (toList!5569 lm!2023))) lt!1846635)))

(declare-fun b!4687334 () Bool)

(assert (=> b!4687334 (= e!2924275 (addToMapMapFromBucket!1272 (_2!30172 (h!58607 (t!359662 (toList!5569 lm!2023)))) (extractMap!1866 (t!359662 (t!359662 (toList!5569 lm!2023))))))))

(declare-fun b!4687335 () Bool)

(assert (=> b!4687335 (= e!2924275 (ListMap!4934 Nil!52371))))

(assert (= (and d!1489556 c!801502) b!4687334))

(assert (= (and d!1489556 (not c!801502)) b!4687335))

(declare-fun m!5587247 () Bool)

(assert (=> d!1489556 m!5587247))

(declare-fun m!5587249 () Bool)

(assert (=> d!1489556 m!5587249))

(declare-fun m!5587251 () Bool)

(assert (=> b!4687334 m!5587251))

(assert (=> b!4687334 m!5587251))

(declare-fun m!5587253 () Bool)

(assert (=> b!4687334 m!5587253))

(assert (=> b!4687009 d!1489556))

(declare-fun d!1489558 () Bool)

(declare-fun tail!8555 (List!52496) List!52496)

(assert (=> d!1489558 (= (tail!8553 lm!2023) (ListLongMap!4100 (tail!8555 (toList!5569 lm!2023))))))

(declare-fun bs!1084899 () Bool)

(assert (= bs!1084899 d!1489558))

(declare-fun m!5587255 () Bool)

(assert (=> bs!1084899 m!5587255))

(assert (=> b!4687009 d!1489558))

(declare-fun d!1489560 () Bool)

(declare-fun res!1976588 () Bool)

(declare-fun e!2924276 () Bool)

(assert (=> d!1489560 (=> res!1976588 e!2924276)))

(assert (=> d!1489560 (= res!1976588 ((_ is Nil!52372) (toList!5569 lm!2023)))))

(assert (=> d!1489560 (= (forall!11297 (toList!5569 lm!2023) lambda!206277) e!2924276)))

(declare-fun b!4687336 () Bool)

(declare-fun e!2924277 () Bool)

(assert (=> b!4687336 (= e!2924276 e!2924277)))

(declare-fun res!1976589 () Bool)

(assert (=> b!4687336 (=> (not res!1976589) (not e!2924277))))

(assert (=> b!4687336 (= res!1976589 (dynLambda!21703 lambda!206277 (h!58607 (toList!5569 lm!2023))))))

(declare-fun b!4687337 () Bool)

(assert (=> b!4687337 (= e!2924277 (forall!11297 (t!359662 (toList!5569 lm!2023)) lambda!206277))))

(assert (= (and d!1489560 (not res!1976588)) b!4687336))

(assert (= (and b!4687336 res!1976589) b!4687337))

(declare-fun b_lambda!176891 () Bool)

(assert (=> (not b_lambda!176891) (not b!4687336)))

(declare-fun m!5587257 () Bool)

(assert (=> b!4687336 m!5587257))

(declare-fun m!5587259 () Bool)

(assert (=> b!4687337 m!5587259))

(assert (=> start!473812 d!1489560))

(declare-fun d!1489562 () Bool)

(declare-fun isStrictlySorted!640 (List!52496) Bool)

(assert (=> d!1489562 (= (inv!67624 lm!2023) (isStrictlySorted!640 (toList!5569 lm!2023)))))

(declare-fun bs!1084900 () Bool)

(assert (= bs!1084900 d!1489562))

(declare-fun m!5587261 () Bool)

(assert (=> bs!1084900 m!5587261))

(assert (=> start!473812 d!1489562))

(declare-fun bs!1084901 () Bool)

(declare-fun d!1489564 () Bool)

(assert (= bs!1084901 (and d!1489564 d!1489506)))

(declare-fun lambda!206413 () Int)

(assert (=> bs!1084901 (not (= lambda!206413 lambda!206389))))

(declare-fun bs!1084902 () Bool)

(assert (= bs!1084902 (and d!1489564 d!1489542)))

(assert (=> bs!1084902 (not (= lambda!206413 lambda!206396))))

(declare-fun bs!1084903 () Bool)

(assert (= bs!1084903 (and d!1489564 d!1489424)))

(assert (=> bs!1084903 (not (= lambda!206413 lambda!206316))))

(declare-fun bs!1084904 () Bool)

(assert (= bs!1084904 (and d!1489564 d!1489556)))

(assert (=> bs!1084904 (not (= lambda!206413 lambda!206410))))

(declare-fun bs!1084905 () Bool)

(assert (= bs!1084905 (and d!1489564 start!473812)))

(assert (=> bs!1084905 (not (= lambda!206413 lambda!206277))))

(assert (=> d!1489564 true))

(assert (=> d!1489564 (= (allKeysSameHashInMap!1754 lm!2023 hashF!1323) (forall!11297 (toList!5569 lm!2023) lambda!206413))))

(declare-fun bs!1084906 () Bool)

(assert (= bs!1084906 d!1489564))

(declare-fun m!5587263 () Bool)

(assert (=> bs!1084906 m!5587263))

(assert (=> b!4686994 d!1489564))

(declare-fun d!1489566 () Bool)

(declare-fun lt!1846636 () List!52495)

(assert (=> d!1489566 (not (containsKey!3019 lt!1846636 key!4653))))

(declare-fun e!2924278 () List!52495)

(assert (=> d!1489566 (= lt!1846636 e!2924278)))

(declare-fun c!801504 () Bool)

(assert (=> d!1489566 (= c!801504 (and ((_ is Cons!52371) lt!1846149) (= (_1!30171 (h!58606 lt!1846149)) key!4653)))))

(assert (=> d!1489566 (noDuplicateKeys!1840 lt!1846149)))

(assert (=> d!1489566 (= (removePairForKey!1435 lt!1846149 key!4653) lt!1846636)))

(declare-fun b!4687341 () Bool)

(declare-fun e!2924279 () List!52495)

(assert (=> b!4687341 (= e!2924278 e!2924279)))

(declare-fun c!801503 () Bool)

(assert (=> b!4687341 (= c!801503 ((_ is Cons!52371) lt!1846149))))

(declare-fun b!4687342 () Bool)

(assert (=> b!4687342 (= e!2924279 (Cons!52371 (h!58606 lt!1846149) (removePairForKey!1435 (t!359661 lt!1846149) key!4653)))))

(declare-fun b!4687340 () Bool)

(assert (=> b!4687340 (= e!2924278 (t!359661 lt!1846149))))

(declare-fun b!4687343 () Bool)

(assert (=> b!4687343 (= e!2924279 Nil!52371)))

(assert (= (and d!1489566 c!801504) b!4687340))

(assert (= (and d!1489566 (not c!801504)) b!4687341))

(assert (= (and b!4687341 c!801503) b!4687342))

(assert (= (and b!4687341 (not c!801503)) b!4687343))

(declare-fun m!5587265 () Bool)

(assert (=> d!1489566 m!5587265))

(assert (=> d!1489566 m!5587125))

(declare-fun m!5587267 () Bool)

(assert (=> b!4687342 m!5587267))

(assert (=> b!4687005 d!1489566))

(declare-fun d!1489568 () Bool)

(assert (=> d!1489568 (= (tail!8552 newBucket!218) (t!359661 newBucket!218))))

(assert (=> b!4687005 d!1489568))

(declare-fun d!1489570 () Bool)

(assert (=> d!1489570 (= (tail!8552 oldBucket!34) (t!359661 oldBucket!34))))

(assert (=> b!4687005 d!1489570))

(declare-fun d!1489572 () Bool)

(declare-fun res!1976594 () Bool)

(declare-fun e!2924284 () Bool)

(assert (=> d!1489572 (=> res!1976594 e!2924284)))

(assert (=> d!1489572 (= res!1976594 (not ((_ is Cons!52371) newBucket!218)))))

(assert (=> d!1489572 (= (noDuplicateKeys!1840 newBucket!218) e!2924284)))

(declare-fun b!4687348 () Bool)

(declare-fun e!2924285 () Bool)

(assert (=> b!4687348 (= e!2924284 e!2924285)))

(declare-fun res!1976595 () Bool)

(assert (=> b!4687348 (=> (not res!1976595) (not e!2924285))))

(assert (=> b!4687348 (= res!1976595 (not (containsKey!3019 (t!359661 newBucket!218) (_1!30171 (h!58606 newBucket!218)))))))

(declare-fun b!4687349 () Bool)

(assert (=> b!4687349 (= e!2924285 (noDuplicateKeys!1840 (t!359661 newBucket!218)))))

(assert (= (and d!1489572 (not res!1976594)) b!4687348))

(assert (= (and b!4687348 res!1976595) b!4687349))

(declare-fun m!5587269 () Bool)

(assert (=> b!4687348 m!5587269))

(declare-fun m!5587271 () Bool)

(assert (=> b!4687349 m!5587271))

(assert (=> b!4686995 d!1489572))

(declare-fun d!1489574 () Bool)

(declare-fun lt!1846639 () Bool)

(declare-fun content!9146 (List!52496) (InoxSet tuple2!53756))

(assert (=> d!1489574 (= lt!1846639 (select (content!9146 (toList!5569 lm!2023)) lt!1846145))))

(declare-fun e!2924290 () Bool)

(assert (=> d!1489574 (= lt!1846639 e!2924290)))

(declare-fun res!1976600 () Bool)

(assert (=> d!1489574 (=> (not res!1976600) (not e!2924290))))

(assert (=> d!1489574 (= res!1976600 ((_ is Cons!52372) (toList!5569 lm!2023)))))

(assert (=> d!1489574 (= (contains!15546 (toList!5569 lm!2023) lt!1846145) lt!1846639)))

(declare-fun b!4687354 () Bool)

(declare-fun e!2924291 () Bool)

(assert (=> b!4687354 (= e!2924290 e!2924291)))

(declare-fun res!1976601 () Bool)

(assert (=> b!4687354 (=> res!1976601 e!2924291)))

(assert (=> b!4687354 (= res!1976601 (= (h!58607 (toList!5569 lm!2023)) lt!1846145))))

(declare-fun b!4687355 () Bool)

(assert (=> b!4687355 (= e!2924291 (contains!15546 (t!359662 (toList!5569 lm!2023)) lt!1846145))))

(assert (= (and d!1489574 res!1976600) b!4687354))

(assert (= (and b!4687354 (not res!1976601)) b!4687355))

(declare-fun m!5587273 () Bool)

(assert (=> d!1489574 m!5587273))

(declare-fun m!5587275 () Bool)

(assert (=> d!1489574 m!5587275))

(declare-fun m!5587277 () Bool)

(assert (=> b!4687355 m!5587277))

(assert (=> b!4687006 d!1489574))

(declare-fun d!1489576 () Bool)

(declare-fun isEmpty!29084 (Option!12043) Bool)

(assert (=> d!1489576 (= (isDefined!9298 (getPair!444 lt!1846144 key!4653)) (not (isEmpty!29084 (getPair!444 lt!1846144 key!4653))))))

(declare-fun bs!1084907 () Bool)

(assert (= bs!1084907 d!1489576))

(assert (=> bs!1084907 m!5586551))

(declare-fun m!5587279 () Bool)

(assert (=> bs!1084907 m!5587279))

(assert (=> b!4687006 d!1489576))

(declare-fun b!4687372 () Bool)

(declare-fun e!2924304 () Option!12043)

(assert (=> b!4687372 (= e!2924304 None!12042)))

(declare-fun b!4687373 () Bool)

(declare-fun e!2924302 () Bool)

(declare-fun lt!1846642 () Option!12043)

(declare-fun get!17466 (Option!12043) tuple2!53754)

(assert (=> b!4687373 (= e!2924302 (contains!15552 lt!1846144 (get!17466 lt!1846642)))))

(declare-fun b!4687374 () Bool)

(declare-fun e!2924306 () Bool)

(assert (=> b!4687374 (= e!2924306 (not (containsKey!3019 lt!1846144 key!4653)))))

(declare-fun b!4687376 () Bool)

(assert (=> b!4687376 (= e!2924304 (getPair!444 (t!359661 lt!1846144) key!4653))))

(declare-fun b!4687377 () Bool)

(declare-fun e!2924305 () Option!12043)

(assert (=> b!4687377 (= e!2924305 e!2924304)))

(declare-fun c!801509 () Bool)

(assert (=> b!4687377 (= c!801509 ((_ is Cons!52371) lt!1846144))))

(declare-fun b!4687378 () Bool)

(assert (=> b!4687378 (= e!2924305 (Some!12042 (h!58606 lt!1846144)))))

(declare-fun b!4687379 () Bool)

(declare-fun res!1976613 () Bool)

(assert (=> b!4687379 (=> (not res!1976613) (not e!2924302))))

(assert (=> b!4687379 (= res!1976613 (= (_1!30171 (get!17466 lt!1846642)) key!4653))))

(declare-fun d!1489578 () Bool)

(declare-fun e!2924303 () Bool)

(assert (=> d!1489578 e!2924303))

(declare-fun res!1976612 () Bool)

(assert (=> d!1489578 (=> res!1976612 e!2924303)))

(assert (=> d!1489578 (= res!1976612 e!2924306)))

(declare-fun res!1976610 () Bool)

(assert (=> d!1489578 (=> (not res!1976610) (not e!2924306))))

(assert (=> d!1489578 (= res!1976610 (isEmpty!29084 lt!1846642))))

(assert (=> d!1489578 (= lt!1846642 e!2924305)))

(declare-fun c!801510 () Bool)

(assert (=> d!1489578 (= c!801510 (and ((_ is Cons!52371) lt!1846144) (= (_1!30171 (h!58606 lt!1846144)) key!4653)))))

(assert (=> d!1489578 (noDuplicateKeys!1840 lt!1846144)))

(assert (=> d!1489578 (= (getPair!444 lt!1846144 key!4653) lt!1846642)))

(declare-fun b!4687375 () Bool)

(assert (=> b!4687375 (= e!2924303 e!2924302)))

(declare-fun res!1976611 () Bool)

(assert (=> b!4687375 (=> (not res!1976611) (not e!2924302))))

(assert (=> b!4687375 (= res!1976611 (isDefined!9298 lt!1846642))))

(assert (= (and d!1489578 c!801510) b!4687378))

(assert (= (and d!1489578 (not c!801510)) b!4687377))

(assert (= (and b!4687377 c!801509) b!4687376))

(assert (= (and b!4687377 (not c!801509)) b!4687372))

(assert (= (and d!1489578 res!1976610) b!4687374))

(assert (= (and d!1489578 (not res!1976612)) b!4687375))

(assert (= (and b!4687375 res!1976611) b!4687379))

(assert (= (and b!4687379 res!1976613) b!4687373))

(declare-fun m!5587281 () Bool)

(assert (=> b!4687374 m!5587281))

(declare-fun m!5587283 () Bool)

(assert (=> b!4687373 m!5587283))

(assert (=> b!4687373 m!5587283))

(declare-fun m!5587285 () Bool)

(assert (=> b!4687373 m!5587285))

(assert (=> b!4687379 m!5587283))

(declare-fun m!5587287 () Bool)

(assert (=> d!1489578 m!5587287))

(declare-fun m!5587289 () Bool)

(assert (=> d!1489578 m!5587289))

(declare-fun m!5587291 () Bool)

(assert (=> b!4687376 m!5587291))

(declare-fun m!5587293 () Bool)

(assert (=> b!4687375 m!5587293))

(assert (=> b!4687006 d!1489578))

(declare-fun bs!1084908 () Bool)

(declare-fun d!1489580 () Bool)

(assert (= bs!1084908 (and d!1489580 d!1489506)))

(declare-fun lambda!206416 () Int)

(assert (=> bs!1084908 (= lambda!206416 lambda!206389)))

(declare-fun bs!1084909 () Bool)

(assert (= bs!1084909 (and d!1489580 d!1489542)))

(assert (=> bs!1084909 (= lambda!206416 lambda!206396)))

(declare-fun bs!1084910 () Bool)

(assert (= bs!1084910 (and d!1489580 d!1489564)))

(assert (=> bs!1084910 (not (= lambda!206416 lambda!206413))))

(declare-fun bs!1084911 () Bool)

(assert (= bs!1084911 (and d!1489580 d!1489424)))

(assert (=> bs!1084911 (= lambda!206416 lambda!206316)))

(declare-fun bs!1084912 () Bool)

(assert (= bs!1084912 (and d!1489580 d!1489556)))

(assert (=> bs!1084912 (= lambda!206416 lambda!206410)))

(declare-fun bs!1084913 () Bool)

(assert (= bs!1084913 (and d!1489580 start!473812)))

(assert (=> bs!1084913 (= lambda!206416 lambda!206277)))

(assert (=> d!1489580 (contains!15547 lm!2023 (hash!4041 hashF!1323 key!4653))))

(declare-fun lt!1846645 () Unit!123397)

(declare-fun choose!32517 (ListLongMap!4099 K!13750 Hashable!6209) Unit!123397)

(assert (=> d!1489580 (= lt!1846645 (choose!32517 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489580 (forall!11297 (toList!5569 lm!2023) lambda!206416)))

(assert (=> d!1489580 (= (lemmaInGenMapThenLongMapContainsHash!650 lm!2023 key!4653 hashF!1323) lt!1846645)))

(declare-fun bs!1084914 () Bool)

(assert (= bs!1084914 d!1489580))

(assert (=> bs!1084914 m!5586529))

(assert (=> bs!1084914 m!5586529))

(declare-fun m!5587295 () Bool)

(assert (=> bs!1084914 m!5587295))

(declare-fun m!5587297 () Bool)

(assert (=> bs!1084914 m!5587297))

(declare-fun m!5587299 () Bool)

(assert (=> bs!1084914 m!5587299))

(assert (=> b!4687006 d!1489580))

(declare-fun d!1489582 () Bool)

(declare-datatypes ((Option!12047 0))(
  ( (None!12046) (Some!12046 (v!46445 List!52495)) )
))
(declare-fun get!17467 (Option!12047) List!52495)

(declare-fun getValueByKey!1761 (List!52496 (_ BitVec 64)) Option!12047)

(assert (=> d!1489582 (= (apply!12323 lm!2023 lt!1846146) (get!17467 (getValueByKey!1761 (toList!5569 lm!2023) lt!1846146)))))

(declare-fun bs!1084915 () Bool)

(assert (= bs!1084915 d!1489582))

(declare-fun m!5587301 () Bool)

(assert (=> bs!1084915 m!5587301))

(assert (=> bs!1084915 m!5587301))

(declare-fun m!5587303 () Bool)

(assert (=> bs!1084915 m!5587303))

(assert (=> b!4687006 d!1489582))

(declare-fun bs!1084916 () Bool)

(declare-fun d!1489584 () Bool)

(assert (= bs!1084916 (and d!1489584 d!1489506)))

(declare-fun lambda!206423 () Int)

(assert (=> bs!1084916 (= lambda!206423 lambda!206389)))

(declare-fun bs!1084917 () Bool)

(assert (= bs!1084917 (and d!1489584 d!1489542)))

(assert (=> bs!1084917 (= lambda!206423 lambda!206396)))

(declare-fun bs!1084918 () Bool)

(assert (= bs!1084918 (and d!1489584 d!1489564)))

(assert (=> bs!1084918 (not (= lambda!206423 lambda!206413))))

(declare-fun bs!1084919 () Bool)

(assert (= bs!1084919 (and d!1489584 d!1489424)))

(assert (=> bs!1084919 (= lambda!206423 lambda!206316)))

(declare-fun bs!1084920 () Bool)

(assert (= bs!1084920 (and d!1489584 d!1489580)))

(assert (=> bs!1084920 (= lambda!206423 lambda!206416)))

(declare-fun bs!1084921 () Bool)

(assert (= bs!1084921 (and d!1489584 d!1489556)))

(assert (=> bs!1084921 (= lambda!206423 lambda!206410)))

(declare-fun bs!1084922 () Bool)

(assert (= bs!1084922 (and d!1489584 start!473812)))

(assert (=> bs!1084922 (= lambda!206423 lambda!206277)))

(declare-fun e!2924311 () Bool)

(declare-fun b!4687390 () Bool)

(assert (=> b!4687390 (= e!2924311 (isDefined!9298 (getPair!444 (apply!12323 lm!2023 (hash!4041 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1846668 () Unit!123397)

(assert (=> b!4687390 (= lt!1846668 (forallContained!3404 (toList!5569 lm!2023) lambda!206423 (tuple2!53757 (hash!4041 hashF!1323 key!4653) (apply!12323 lm!2023 (hash!4041 hashF!1323 key!4653)))))))

(declare-fun lt!1846667 () Unit!123397)

(declare-fun lt!1846665 () Unit!123397)

(assert (=> b!4687390 (= lt!1846667 lt!1846665)))

(declare-fun lt!1846666 () (_ BitVec 64))

(declare-fun lt!1846663 () List!52495)

(assert (=> b!4687390 (contains!15546 (toList!5569 lm!2023) (tuple2!53757 lt!1846666 lt!1846663))))

(assert (=> b!4687390 (= lt!1846665 (lemmaGetValueImpliesTupleContained!249 lm!2023 lt!1846666 lt!1846663))))

(declare-fun e!2924312 () Bool)

(assert (=> b!4687390 e!2924312))

(declare-fun res!1976624 () Bool)

(assert (=> b!4687390 (=> (not res!1976624) (not e!2924312))))

(assert (=> b!4687390 (= res!1976624 (contains!15547 lm!2023 lt!1846666))))

(assert (=> b!4687390 (= lt!1846663 (apply!12323 lm!2023 (hash!4041 hashF!1323 key!4653)))))

(assert (=> b!4687390 (= lt!1846666 (hash!4041 hashF!1323 key!4653))))

(declare-fun lt!1846664 () Unit!123397)

(declare-fun lt!1846669 () Unit!123397)

(assert (=> b!4687390 (= lt!1846664 lt!1846669)))

(assert (=> b!4687390 (contains!15547 lm!2023 (hash!4041 hashF!1323 key!4653))))

(assert (=> b!4687390 (= lt!1846669 (lemmaInGenMapThenLongMapContainsHash!650 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489584 e!2924311))

(declare-fun res!1976625 () Bool)

(assert (=> d!1489584 (=> (not res!1976625) (not e!2924311))))

(assert (=> d!1489584 (= res!1976625 (forall!11297 (toList!5569 lm!2023) lambda!206423))))

(declare-fun lt!1846662 () Unit!123397)

(declare-fun choose!32518 (ListLongMap!4099 K!13750 Hashable!6209) Unit!123397)

(assert (=> d!1489584 (= lt!1846662 (choose!32518 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489584 (forall!11297 (toList!5569 lm!2023) lambda!206423)))

(assert (=> d!1489584 (= (lemmaInGenMapThenGetPairDefined!240 lm!2023 key!4653 hashF!1323) lt!1846662)))

(declare-fun b!4687389 () Bool)

(declare-fun res!1976623 () Bool)

(assert (=> b!4687389 (=> (not res!1976623) (not e!2924311))))

(assert (=> b!4687389 (= res!1976623 (contains!15548 (extractMap!1866 (toList!5569 lm!2023)) key!4653))))

(declare-fun b!4687388 () Bool)

(declare-fun res!1976622 () Bool)

(assert (=> b!4687388 (=> (not res!1976622) (not e!2924311))))

(assert (=> b!4687388 (= res!1976622 (allKeysSameHashInMap!1754 lm!2023 hashF!1323))))

(declare-fun b!4687391 () Bool)

(assert (=> b!4687391 (= e!2924312 (= (getValueByKey!1761 (toList!5569 lm!2023) lt!1846666) (Some!12046 lt!1846663)))))

(assert (= (and d!1489584 res!1976625) b!4687388))

(assert (= (and b!4687388 res!1976622) b!4687389))

(assert (= (and b!4687389 res!1976623) b!4687390))

(assert (= (and b!4687390 res!1976624) b!4687391))

(assert (=> b!4687389 m!5586575))

(assert (=> b!4687389 m!5586575))

(declare-fun m!5587305 () Bool)

(assert (=> b!4687389 m!5587305))

(assert (=> b!4687388 m!5586533))

(declare-fun m!5587307 () Bool)

(assert (=> d!1489584 m!5587307))

(declare-fun m!5587309 () Bool)

(assert (=> d!1489584 m!5587309))

(assert (=> d!1489584 m!5587307))

(assert (=> b!4687390 m!5586529))

(declare-fun m!5587311 () Bool)

(assert (=> b!4687390 m!5587311))

(assert (=> b!4687390 m!5587311))

(declare-fun m!5587313 () Bool)

(assert (=> b!4687390 m!5587313))

(assert (=> b!4687390 m!5586571))

(declare-fun m!5587315 () Bool)

(assert (=> b!4687390 m!5587315))

(declare-fun m!5587317 () Bool)

(assert (=> b!4687390 m!5587317))

(declare-fun m!5587319 () Bool)

(assert (=> b!4687390 m!5587319))

(declare-fun m!5587321 () Bool)

(assert (=> b!4687390 m!5587321))

(assert (=> b!4687390 m!5587313))

(declare-fun m!5587323 () Bool)

(assert (=> b!4687390 m!5587323))

(assert (=> b!4687390 m!5586529))

(assert (=> b!4687390 m!5587295))

(assert (=> b!4687390 m!5586529))

(declare-fun m!5587325 () Bool)

(assert (=> b!4687391 m!5587325))

(assert (=> b!4687006 d!1489584))

(declare-fun d!1489586 () Bool)

(assert (=> d!1489586 (containsKey!3019 oldBucket!34 key!4653)))

(declare-fun lt!1846672 () Unit!123397)

(declare-fun choose!32519 (List!52495 K!13750 Hashable!6209) Unit!123397)

(assert (=> d!1489586 (= lt!1846672 (choose!32519 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1489586 (noDuplicateKeys!1840 oldBucket!34)))

(assert (=> d!1489586 (= (lemmaGetPairDefinedThenContainsKey!192 oldBucket!34 key!4653 hashF!1323) lt!1846672)))

(declare-fun bs!1084923 () Bool)

(assert (= bs!1084923 d!1489586))

(assert (=> bs!1084923 m!5586567))

(declare-fun m!5587327 () Bool)

(assert (=> bs!1084923 m!5587327))

(assert (=> bs!1084923 m!5586535))

(assert (=> b!4687006 d!1489586))

(declare-fun d!1489588 () Bool)

(declare-fun res!1976630 () Bool)

(declare-fun e!2924317 () Bool)

(assert (=> d!1489588 (=> res!1976630 e!2924317)))

(assert (=> d!1489588 (= res!1976630 (and ((_ is Cons!52371) (t!359661 oldBucket!34)) (= (_1!30171 (h!58606 (t!359661 oldBucket!34))) key!4653)))))

(assert (=> d!1489588 (= (containsKey!3019 (t!359661 oldBucket!34) key!4653) e!2924317)))

(declare-fun b!4687396 () Bool)

(declare-fun e!2924318 () Bool)

(assert (=> b!4687396 (= e!2924317 e!2924318)))

(declare-fun res!1976631 () Bool)

(assert (=> b!4687396 (=> (not res!1976631) (not e!2924318))))

(assert (=> b!4687396 (= res!1976631 ((_ is Cons!52371) (t!359661 oldBucket!34)))))

(declare-fun b!4687397 () Bool)

(assert (=> b!4687397 (= e!2924318 (containsKey!3019 (t!359661 (t!359661 oldBucket!34)) key!4653))))

(assert (= (and d!1489588 (not res!1976630)) b!4687396))

(assert (= (and b!4687396 res!1976631) b!4687397))

(declare-fun m!5587329 () Bool)

(assert (=> b!4687397 m!5587329))

(assert (=> b!4687006 d!1489588))

(declare-fun d!1489590 () Bool)

(declare-fun res!1976632 () Bool)

(declare-fun e!2924319 () Bool)

(assert (=> d!1489590 (=> res!1976632 e!2924319)))

(assert (=> d!1489590 (= res!1976632 (and ((_ is Cons!52371) oldBucket!34) (= (_1!30171 (h!58606 oldBucket!34)) key!4653)))))

(assert (=> d!1489590 (= (containsKey!3019 oldBucket!34 key!4653) e!2924319)))

(declare-fun b!4687398 () Bool)

(declare-fun e!2924320 () Bool)

(assert (=> b!4687398 (= e!2924319 e!2924320)))

(declare-fun res!1976633 () Bool)

(assert (=> b!4687398 (=> (not res!1976633) (not e!2924320))))

(assert (=> b!4687398 (= res!1976633 ((_ is Cons!52371) oldBucket!34))))

(declare-fun b!4687399 () Bool)

(assert (=> b!4687399 (= e!2924320 (containsKey!3019 (t!359661 oldBucket!34) key!4653))))

(assert (= (and d!1489590 (not res!1976632)) b!4687398))

(assert (= (and b!4687398 res!1976633) b!4687399))

(assert (=> b!4687399 m!5586563))

(assert (=> b!4687006 d!1489590))

(declare-fun d!1489592 () Bool)

(assert (=> d!1489592 (contains!15546 (toList!5569 lm!2023) (tuple2!53757 lt!1846146 lt!1846144))))

(declare-fun lt!1846675 () Unit!123397)

(declare-fun choose!32520 (ListLongMap!4099 (_ BitVec 64) List!52495) Unit!123397)

(assert (=> d!1489592 (= lt!1846675 (choose!32520 lm!2023 lt!1846146 lt!1846144))))

(assert (=> d!1489592 (contains!15547 lm!2023 lt!1846146)))

(assert (=> d!1489592 (= (lemmaGetValueImpliesTupleContained!249 lm!2023 lt!1846146 lt!1846144) lt!1846675)))

(declare-fun bs!1084924 () Bool)

(assert (= bs!1084924 d!1489592))

(declare-fun m!5587331 () Bool)

(assert (=> bs!1084924 m!5587331))

(declare-fun m!5587333 () Bool)

(assert (=> bs!1084924 m!5587333))

(assert (=> bs!1084924 m!5586559))

(assert (=> b!4687006 d!1489592))

(declare-fun d!1489594 () Bool)

(assert (=> d!1489594 (dynLambda!21703 lambda!206277 lt!1846145)))

(declare-fun lt!1846678 () Unit!123397)

(declare-fun choose!32521 (List!52496 Int tuple2!53756) Unit!123397)

(assert (=> d!1489594 (= lt!1846678 (choose!32521 (toList!5569 lm!2023) lambda!206277 lt!1846145))))

(declare-fun e!2924323 () Bool)

(assert (=> d!1489594 e!2924323))

(declare-fun res!1976636 () Bool)

(assert (=> d!1489594 (=> (not res!1976636) (not e!2924323))))

(assert (=> d!1489594 (= res!1976636 (forall!11297 (toList!5569 lm!2023) lambda!206277))))

(assert (=> d!1489594 (= (forallContained!3404 (toList!5569 lm!2023) lambda!206277 lt!1846145) lt!1846678)))

(declare-fun b!4687403 () Bool)

(assert (=> b!4687403 (= e!2924323 (contains!15546 (toList!5569 lm!2023) lt!1846145))))

(assert (= (and d!1489594 res!1976636) b!4687403))

(declare-fun b_lambda!176893 () Bool)

(assert (=> (not b_lambda!176893) (not d!1489594)))

(declare-fun m!5587335 () Bool)

(assert (=> d!1489594 m!5587335))

(declare-fun m!5587337 () Bool)

(assert (=> d!1489594 m!5587337))

(assert (=> d!1489594 m!5586545))

(assert (=> b!4687403 m!5586557))

(assert (=> b!4687006 d!1489594))

(declare-fun d!1489596 () Bool)

(declare-fun e!2924328 () Bool)

(assert (=> d!1489596 e!2924328))

(declare-fun res!1976639 () Bool)

(assert (=> d!1489596 (=> res!1976639 e!2924328)))

(declare-fun lt!1846690 () Bool)

(assert (=> d!1489596 (= res!1976639 (not lt!1846690))))

(declare-fun lt!1846688 () Bool)

(assert (=> d!1489596 (= lt!1846690 lt!1846688)))

(declare-fun lt!1846687 () Unit!123397)

(declare-fun e!2924329 () Unit!123397)

(assert (=> d!1489596 (= lt!1846687 e!2924329)))

(declare-fun c!801513 () Bool)

(assert (=> d!1489596 (= c!801513 lt!1846688)))

(declare-fun containsKey!3023 (List!52496 (_ BitVec 64)) Bool)

(assert (=> d!1489596 (= lt!1846688 (containsKey!3023 (toList!5569 lm!2023) lt!1846146))))

(assert (=> d!1489596 (= (contains!15547 lm!2023 lt!1846146) lt!1846690)))

(declare-fun b!4687410 () Bool)

(declare-fun lt!1846689 () Unit!123397)

(assert (=> b!4687410 (= e!2924329 lt!1846689)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1653 (List!52496 (_ BitVec 64)) Unit!123397)

(assert (=> b!4687410 (= lt!1846689 (lemmaContainsKeyImpliesGetValueByKeyDefined!1653 (toList!5569 lm!2023) lt!1846146))))

(declare-fun isDefined!9302 (Option!12047) Bool)

(assert (=> b!4687410 (isDefined!9302 (getValueByKey!1761 (toList!5569 lm!2023) lt!1846146))))

(declare-fun b!4687411 () Bool)

(declare-fun Unit!123518 () Unit!123397)

(assert (=> b!4687411 (= e!2924329 Unit!123518)))

(declare-fun b!4687412 () Bool)

(assert (=> b!4687412 (= e!2924328 (isDefined!9302 (getValueByKey!1761 (toList!5569 lm!2023) lt!1846146)))))

(assert (= (and d!1489596 c!801513) b!4687410))

(assert (= (and d!1489596 (not c!801513)) b!4687411))

(assert (= (and d!1489596 (not res!1976639)) b!4687412))

(declare-fun m!5587339 () Bool)

(assert (=> d!1489596 m!5587339))

(declare-fun m!5587341 () Bool)

(assert (=> b!4687410 m!5587341))

(assert (=> b!4687410 m!5587301))

(assert (=> b!4687410 m!5587301))

(declare-fun m!5587343 () Bool)

(assert (=> b!4687410 m!5587343))

(assert (=> b!4687412 m!5587301))

(assert (=> b!4687412 m!5587301))

(assert (=> b!4687412 m!5587343))

(assert (=> b!4687006 d!1489596))

(declare-fun d!1489598 () Bool)

(declare-fun res!1976640 () Bool)

(declare-fun e!2924330 () Bool)

(assert (=> d!1489598 (=> res!1976640 e!2924330)))

(assert (=> d!1489598 (= res!1976640 (not ((_ is Cons!52371) oldBucket!34)))))

(assert (=> d!1489598 (= (noDuplicateKeys!1840 oldBucket!34) e!2924330)))

(declare-fun b!4687413 () Bool)

(declare-fun e!2924331 () Bool)

(assert (=> b!4687413 (= e!2924330 e!2924331)))

(declare-fun res!1976641 () Bool)

(assert (=> b!4687413 (=> (not res!1976641) (not e!2924331))))

(assert (=> b!4687413 (= res!1976641 (not (containsKey!3019 (t!359661 oldBucket!34) (_1!30171 (h!58606 oldBucket!34)))))))

(declare-fun b!4687414 () Bool)

(assert (=> b!4687414 (= e!2924331 (noDuplicateKeys!1840 (t!359661 oldBucket!34)))))

(assert (= (and d!1489598 (not res!1976640)) b!4687413))

(assert (= (and b!4687413 res!1976641) b!4687414))

(declare-fun m!5587345 () Bool)

(assert (=> b!4687413 m!5587345))

(assert (=> b!4687414 m!5586593))

(assert (=> b!4686996 d!1489598))

(declare-fun tp!1345704 () Bool)

(declare-fun b!4687419 () Bool)

(declare-fun e!2924334 () Bool)

(assert (=> b!4687419 (= e!2924334 (and tp_is_empty!30653 tp_is_empty!30655 tp!1345704))))

(assert (=> b!4687002 (= tp!1345689 e!2924334)))

(assert (= (and b!4687002 ((_ is Cons!52371) (t!359661 newBucket!218))) b!4687419))

(declare-fun b!4687424 () Bool)

(declare-fun e!2924337 () Bool)

(declare-fun tp!1345709 () Bool)

(declare-fun tp!1345710 () Bool)

(assert (=> b!4687424 (= e!2924337 (and tp!1345709 tp!1345710))))

(assert (=> b!4687003 (= tp!1345691 e!2924337)))

(assert (= (and b!4687003 ((_ is Cons!52372) (toList!5569 lm!2023))) b!4687424))

(declare-fun b!4687425 () Bool)

(declare-fun e!2924338 () Bool)

(declare-fun tp!1345711 () Bool)

(assert (=> b!4687425 (= e!2924338 (and tp_is_empty!30653 tp_is_empty!30655 tp!1345711))))

(assert (=> b!4687004 (= tp!1345690 e!2924338)))

(assert (= (and b!4687004 ((_ is Cons!52371) (t!359661 oldBucket!34))) b!4687425))

(declare-fun b_lambda!176895 () Bool)

(assert (= b_lambda!176881 (or start!473812 b_lambda!176895)))

(declare-fun bs!1084925 () Bool)

(declare-fun d!1489600 () Bool)

(assert (= bs!1084925 (and d!1489600 start!473812)))

(assert (=> bs!1084925 (= (dynLambda!21703 lambda!206277 (h!58607 (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023))))) (noDuplicateKeys!1840 (_2!30172 (h!58607 (Cons!52372 lt!1846151 (t!359662 (toList!5569 lm!2023)))))))))

(declare-fun m!5587347 () Bool)

(assert (=> bs!1084925 m!5587347))

(assert (=> b!4687239 d!1489600))

(declare-fun b_lambda!176897 () Bool)

(assert (= b_lambda!176893 (or start!473812 b_lambda!176897)))

(declare-fun bs!1084926 () Bool)

(declare-fun d!1489602 () Bool)

(assert (= bs!1084926 (and d!1489602 start!473812)))

(assert (=> bs!1084926 (= (dynLambda!21703 lambda!206277 lt!1846145) (noDuplicateKeys!1840 (_2!30172 lt!1846145)))))

(declare-fun m!5587349 () Bool)

(assert (=> bs!1084926 m!5587349))

(assert (=> d!1489594 d!1489602))

(declare-fun b_lambda!176899 () Bool)

(assert (= b_lambda!176891 (or start!473812 b_lambda!176899)))

(declare-fun bs!1084927 () Bool)

(declare-fun d!1489604 () Bool)

(assert (= bs!1084927 (and d!1489604 start!473812)))

(assert (=> bs!1084927 (= (dynLambda!21703 lambda!206277 (h!58607 (toList!5569 lm!2023))) (noDuplicateKeys!1840 (_2!30172 (h!58607 (toList!5569 lm!2023)))))))

(assert (=> bs!1084927 m!5587245))

(assert (=> b!4687336 d!1489604))

(check-sat (not b!4687419) (not b_lambda!176895) (not d!1489548) (not b!4687337) (not b!4687389) (not b!4687391) (not b!4687226) (not b!4687334) (not d!1489416) (not b!4687099) (not b!4687228) (not b_lambda!176897) (not b!4687323) (not b!4687328) (not bs!1084925) (not d!1489574) (not b!4687373) (not b!4687300) (not b!4687040) (not b!4687342) (not bm!327552) (not d!1489414) (not d!1489550) (not d!1489576) (not d!1489544) (not b!4687330) (not b!4687066) (not d!1489554) (not bm!327541) (not b!4687231) (not d!1489584) (not b!4687233) (not b!4687220) (not bm!327545) (not bm!327550) (not d!1489556) (not b!4687322) (not bm!327551) (not b!4687072) (not d!1489432) (not bm!327536) (not d!1489430) (not d!1489586) (not bm!327546) (not bm!327543) (not b!4687321) (not d!1489566) (not d!1489552) (not b!4687425) (not b!4687424) (not d!1489592) (not b_lambda!176899) tp_is_empty!30655 (not d!1489582) (not bm!327547) (not d!1489564) (not b!4687219) (not b!4687333) (not b!4687349) (not b!4687303) (not d!1489594) (not d!1489492) (not b!4687317) (not b!4687064) (not b!4687413) (not b!4687065) (not b!4687326) (not b!4687414) (not b!4687318) (not b!4687232) (not d!1489530) (not b!4687315) (not b!4687403) (not bm!327534) (not b!4687399) (not b!4687240) (not b!4687227) (not bm!327548) (not bs!1084927) (not b!4687379) (not d!1489490) (not d!1489506) (not bs!1084926) (not d!1489558) (not b!4687376) (not bm!327542) (not d!1489486) (not d!1489422) (not b!4687044) (not d!1489542) (not d!1489498) (not b!4687388) (not b!4687375) (not d!1489596) (not b!4687397) (not d!1489580) (not d!1489418) (not b!4687390) (not b!4687069) (not d!1489424) (not b!4687374) (not d!1489562) (not b!4687234) (not b!4687299) tp_is_empty!30653 (not b!4687070) (not d!1489482) (not d!1489578) (not bm!327505) (not b!4687273) (not b!4687412) (not b!4687348) (not bm!327549) (not b!4687071) (not bm!327535) (not b!4687410) (not b!4687272) (not b!4687223) (not b!4687327) (not bm!327533) (not bm!327544) (not b!4687355) (not b!4687329) (not d!1489546))
(check-sat)
