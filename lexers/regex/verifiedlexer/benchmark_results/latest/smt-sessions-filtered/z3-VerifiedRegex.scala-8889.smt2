; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475728 () Bool)

(assert start!475728)

(declare-fun b!4696108 () Bool)

(declare-fun res!1981833 () Bool)

(declare-fun e!2929538 () Bool)

(assert (=> b!4696108 (=> (not res!1981833) (not e!2929538))))

(declare-datatypes ((K!13850 0))(
  ( (K!13851 (val!19351 Int)) )
))
(declare-datatypes ((V!14096 0))(
  ( (V!14097 (val!19352 Int)) )
))
(declare-datatypes ((tuple2!53914 0))(
  ( (tuple2!53915 (_1!30251 K!13850) (_2!30251 V!14096)) )
))
(declare-datatypes ((List!52605 0))(
  ( (Nil!52481) (Cons!52481 (h!58746 tuple2!53914) (t!359801 List!52605)) )
))
(declare-fun newBucket!218 () List!52605)

(declare-fun noDuplicateKeys!1880 (List!52605) Bool)

(assert (=> b!4696108 (= res!1981833 (noDuplicateKeys!1880 newBucket!218))))

(declare-fun b!4696109 () Bool)

(declare-fun e!2929545 () Bool)

(declare-fun e!2929541 () Bool)

(assert (=> b!4696109 (= e!2929545 e!2929541)))

(declare-fun res!1981830 () Bool)

(assert (=> b!4696109 (=> res!1981830 e!2929541)))

(declare-fun oldBucket!34 () List!52605)

(declare-datatypes ((ListMap!5013 0))(
  ( (ListMap!5014 (toList!5649 List!52605)) )
))
(declare-fun lt!1857453 () ListMap!5013)

(declare-fun lt!1857446 () ListMap!5013)

(declare-fun eq!1039 (ListMap!5013 ListMap!5013) Bool)

(declare-fun +!2164 (ListMap!5013 tuple2!53914) ListMap!5013)

(assert (=> b!4696109 (= res!1981830 (not (eq!1039 lt!1857446 (+!2164 lt!1857453 (h!58746 oldBucket!34)))))))

(declare-datatypes ((tuple2!53916 0))(
  ( (tuple2!53917 (_1!30252 (_ BitVec 64)) (_2!30252 List!52605)) )
))
(declare-datatypes ((List!52606 0))(
  ( (Nil!52482) (Cons!52482 (h!58747 tuple2!53916) (t!359802 List!52606)) )
))
(declare-datatypes ((ListLongMap!4179 0))(
  ( (ListLongMap!4180 (toList!5650 List!52606)) )
))
(declare-fun lm!2023 () ListLongMap!4179)

(declare-fun lt!1857444 () List!52605)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun extractMap!1906 (List!52606) ListMap!5013)

(assert (=> b!4696109 (= lt!1857453 (extractMap!1906 (Cons!52482 (tuple2!53917 hash!405 lt!1857444) (t!359802 (toList!5650 lm!2023)))))))

(declare-fun lt!1857436 () List!52606)

(assert (=> b!4696109 (= lt!1857446 (extractMap!1906 lt!1857436))))

(declare-fun lt!1857452 () tuple2!53916)

(assert (=> b!4696109 (= lt!1857436 (Cons!52482 lt!1857452 (t!359802 (toList!5650 lm!2023))))))

(declare-fun lt!1857441 () tuple2!53914)

(declare-fun lt!1857443 () List!52605)

(declare-fun lt!1857448 () ListMap!5013)

(declare-fun addToMapMapFromBucket!1312 (List!52605 ListMap!5013) ListMap!5013)

(assert (=> b!4696109 (eq!1039 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857441 lt!1857443) lt!1857448) (+!2164 (addToMapMapFromBucket!1312 lt!1857443 lt!1857448) lt!1857441))))

(declare-datatypes ((Unit!125277 0))(
  ( (Unit!125278) )
))
(declare-fun lt!1857440 () Unit!125277)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!288 (tuple2!53914 List!52605 ListMap!5013) Unit!125277)

(assert (=> b!4696109 (= lt!1857440 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!288 lt!1857441 lt!1857443 lt!1857448))))

(declare-fun head!10023 (List!52605) tuple2!53914)

(assert (=> b!4696109 (= lt!1857441 (head!10023 newBucket!218))))

(declare-fun lt!1857460 () tuple2!53914)

(assert (=> b!4696109 (eq!1039 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857460 lt!1857444) lt!1857448) (+!2164 (addToMapMapFromBucket!1312 lt!1857444 lt!1857448) lt!1857460))))

(declare-fun lt!1857435 () Unit!125277)

(assert (=> b!4696109 (= lt!1857435 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!288 lt!1857460 lt!1857444 lt!1857448))))

(assert (=> b!4696109 (= lt!1857460 (head!10023 oldBucket!34))))

(declare-fun lt!1857442 () ListMap!5013)

(declare-fun key!4653 () K!13850)

(declare-fun contains!15726 (ListMap!5013 K!13850) Bool)

(assert (=> b!4696109 (contains!15726 lt!1857442 key!4653)))

(declare-fun lt!1857451 () List!52606)

(assert (=> b!4696109 (= lt!1857442 (extractMap!1906 lt!1857451))))

(declare-fun lt!1857431 () Unit!125277)

(declare-datatypes ((Hashable!6249 0))(
  ( (HashableExt!6248 (__x!31952 Int)) )
))
(declare-fun hashF!1323 () Hashable!6249)

(declare-fun lt!1857447 () ListLongMap!4179)

(declare-fun lemmaListContainsThenExtractedMapContains!472 (ListLongMap!4179 K!13850 Hashable!6249) Unit!125277)

(assert (=> b!4696109 (= lt!1857431 (lemmaListContainsThenExtractedMapContains!472 lt!1857447 key!4653 hashF!1323))))

(assert (=> b!4696109 (= lt!1857447 (ListLongMap!4180 lt!1857451))))

(declare-fun lt!1857430 () tuple2!53916)

(assert (=> b!4696109 (= lt!1857451 (Cons!52482 lt!1857430 (t!359802 (toList!5650 lm!2023))))))

(assert (=> b!4696109 (= lt!1857430 (tuple2!53917 hash!405 (t!359801 oldBucket!34)))))

(declare-fun b!4696110 () Bool)

(declare-fun res!1981816 () Bool)

(assert (=> b!4696110 (=> res!1981816 e!2929541)))

(assert (=> b!4696110 (= res!1981816 (not (= (h!58746 oldBucket!34) lt!1857441)))))

(declare-fun b!4696111 () Bool)

(declare-fun e!2929550 () Bool)

(declare-fun e!2929547 () Bool)

(assert (=> b!4696111 (= e!2929550 (not e!2929547))))

(declare-fun res!1981820 () Bool)

(assert (=> b!4696111 (=> res!1981820 e!2929547)))

(get-info :version)

(assert (=> b!4696111 (= res!1981820 (or (and ((_ is Cons!52481) oldBucket!34) (= (_1!30251 (h!58746 oldBucket!34)) key!4653)) (not ((_ is Cons!52481) oldBucket!34)) (= (_1!30251 (h!58746 oldBucket!34)) key!4653)))))

(declare-fun lt!1857445 () ListMap!5013)

(assert (=> b!4696111 (= lt!1857445 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (toList!5650 lm!2023))) lt!1857448))))

(assert (=> b!4696111 (= lt!1857448 (extractMap!1906 (t!359802 (toList!5650 lm!2023))))))

(declare-fun tail!8665 (ListLongMap!4179) ListLongMap!4179)

(assert (=> b!4696111 (= (t!359802 (toList!5650 lm!2023)) (toList!5650 (tail!8665 lm!2023)))))

(declare-fun b!4696112 () Bool)

(declare-fun e!2929546 () Bool)

(assert (=> b!4696112 (= e!2929546 e!2929550)))

(declare-fun res!1981832 () Bool)

(assert (=> b!4696112 (=> (not res!1981832) (not e!2929550))))

(declare-fun head!10024 (List!52606) tuple2!53916)

(assert (=> b!4696112 (= res!1981832 (= (head!10024 (toList!5650 lm!2023)) lt!1857452))))

(assert (=> b!4696112 (= lt!1857452 (tuple2!53917 hash!405 oldBucket!34))))

(declare-fun b!4696113 () Bool)

(declare-fun res!1981831 () Bool)

(assert (=> b!4696113 (=> (not res!1981831) (not e!2929550))))

(assert (=> b!4696113 (= res!1981831 ((_ is Cons!52482) (toList!5650 lm!2023)))))

(declare-fun b!4696114 () Bool)

(declare-fun res!1981829 () Bool)

(assert (=> b!4696114 (=> (not res!1981829) (not e!2929546))))

(declare-fun allKeysSameHashInMap!1794 (ListLongMap!4179 Hashable!6249) Bool)

(assert (=> b!4696114 (= res!1981829 (allKeysSameHashInMap!1794 lm!2023 hashF!1323))))

(declare-fun b!4696116 () Bool)

(declare-fun e!2929539 () Bool)

(assert (=> b!4696116 (= e!2929538 e!2929539)))

(declare-fun res!1981828 () Bool)

(assert (=> b!4696116 (=> (not res!1981828) (not e!2929539))))

(assert (=> b!4696116 (= res!1981828 (contains!15726 lt!1857445 key!4653))))

(assert (=> b!4696116 (= lt!1857445 (extractMap!1906 (toList!5650 lm!2023)))))

(declare-fun b!4696117 () Bool)

(declare-fun res!1981817 () Bool)

(declare-fun e!2929548 () Bool)

(assert (=> b!4696117 (=> res!1981817 e!2929548)))

(declare-fun lt!1857437 () ListMap!5013)

(declare-fun lt!1857461 () ListMap!5013)

(assert (=> b!4696117 (= res!1981817 (not (eq!1039 lt!1857437 lt!1857461)))))

(declare-fun b!4696118 () Bool)

(declare-fun e!2929543 () Bool)

(assert (=> b!4696118 (= e!2929541 e!2929543)))

(declare-fun res!1981822 () Bool)

(assert (=> b!4696118 (=> res!1981822 e!2929543)))

(declare-fun lt!1857438 () ListMap!5013)

(declare-fun lt!1857456 () ListMap!5013)

(assert (=> b!4696118 (= res!1981822 (not (eq!1039 lt!1857438 lt!1857456)))))

(declare-fun -!684 (ListMap!5013 K!13850) ListMap!5013)

(assert (=> b!4696118 (= lt!1857456 (-!684 lt!1857442 key!4653))))

(declare-fun lt!1857449 () tuple2!53916)

(assert (=> b!4696118 (= lt!1857438 (extractMap!1906 (Cons!52482 lt!1857449 (t!359802 (toList!5650 lm!2023)))))))

(declare-fun lt!1857462 () List!52606)

(assert (=> b!4696118 (eq!1039 (extractMap!1906 (Cons!52482 lt!1857449 lt!1857462)) (-!684 (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462)) key!4653))))

(declare-fun tail!8666 (List!52606) List!52606)

(assert (=> b!4696118 (= lt!1857462 (tail!8666 lt!1857451))))

(assert (=> b!4696118 (= lt!1857449 (tuple2!53917 hash!405 lt!1857443))))

(declare-fun lt!1857432 () Unit!125277)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!54 (ListLongMap!4179 (_ BitVec 64) List!52605 List!52605 K!13850 Hashable!6249) Unit!125277)

(assert (=> b!4696118 (= lt!1857432 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!54 lt!1857447 hash!405 (t!359801 oldBucket!34) lt!1857443 key!4653 hashF!1323))))

(declare-fun b!4696119 () Bool)

(declare-fun e!2929542 () Bool)

(assert (=> b!4696119 (= e!2929547 e!2929542)))

(declare-fun res!1981818 () Bool)

(assert (=> b!4696119 (=> res!1981818 e!2929542)))

(declare-fun containsKey!3119 (List!52605 K!13850) Bool)

(assert (=> b!4696119 (= res!1981818 (not (containsKey!3119 (t!359801 oldBucket!34) key!4653)))))

(assert (=> b!4696119 (containsKey!3119 oldBucket!34 key!4653)))

(declare-fun lt!1857459 () Unit!125277)

(declare-fun lemmaGetPairDefinedThenContainsKey!232 (List!52605 K!13850 Hashable!6249) Unit!125277)

(assert (=> b!4696119 (= lt!1857459 (lemmaGetPairDefinedThenContainsKey!232 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1857454 () List!52605)

(declare-datatypes ((Option!12143 0))(
  ( (None!12142) (Some!12142 (v!46597 tuple2!53914)) )
))
(declare-fun isDefined!9398 (Option!12143) Bool)

(declare-fun getPair!484 (List!52605 K!13850) Option!12143)

(assert (=> b!4696119 (isDefined!9398 (getPair!484 lt!1857454 key!4653))))

(declare-fun lambda!208857 () Int)

(declare-fun lt!1857433 () tuple2!53916)

(declare-fun lt!1857439 () Unit!125277)

(declare-fun forallContained!3474 (List!52606 Int tuple2!53916) Unit!125277)

(assert (=> b!4696119 (= lt!1857439 (forallContained!3474 (toList!5650 lm!2023) lambda!208857 lt!1857433))))

(declare-fun contains!15727 (List!52606 tuple2!53916) Bool)

(assert (=> b!4696119 (contains!15727 (toList!5650 lm!2023) lt!1857433)))

(declare-fun lt!1857450 () (_ BitVec 64))

(assert (=> b!4696119 (= lt!1857433 (tuple2!53917 lt!1857450 lt!1857454))))

(declare-fun lt!1857457 () Unit!125277)

(declare-fun lemmaGetValueImpliesTupleContained!289 (ListLongMap!4179 (_ BitVec 64) List!52605) Unit!125277)

(assert (=> b!4696119 (= lt!1857457 (lemmaGetValueImpliesTupleContained!289 lm!2023 lt!1857450 lt!1857454))))

(declare-fun apply!12363 (ListLongMap!4179 (_ BitVec 64)) List!52605)

(assert (=> b!4696119 (= lt!1857454 (apply!12363 lm!2023 lt!1857450))))

(declare-fun contains!15728 (ListLongMap!4179 (_ BitVec 64)) Bool)

(assert (=> b!4696119 (contains!15728 lm!2023 lt!1857450)))

(declare-fun lt!1857434 () Unit!125277)

(declare-fun lemmaInGenMapThenLongMapContainsHash!690 (ListLongMap!4179 K!13850 Hashable!6249) Unit!125277)

(assert (=> b!4696119 (= lt!1857434 (lemmaInGenMapThenLongMapContainsHash!690 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1857455 () Unit!125277)

(declare-fun lemmaInGenMapThenGetPairDefined!280 (ListLongMap!4179 K!13850 Hashable!6249) Unit!125277)

(assert (=> b!4696119 (= lt!1857455 (lemmaInGenMapThenGetPairDefined!280 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4696120 () Bool)

(declare-fun tp!1346351 () Bool)

(declare-fun tp_is_empty!30813 () Bool)

(declare-fun e!2929549 () Bool)

(declare-fun tp_is_empty!30815 () Bool)

(assert (=> b!4696120 (= e!2929549 (and tp_is_empty!30813 tp_is_empty!30815 tp!1346351))))

(declare-fun b!4696121 () Bool)

(declare-fun res!1981825 () Bool)

(assert (=> b!4696121 (=> (not res!1981825) (not e!2929546))))

(declare-fun allKeysSameHash!1706 (List!52605 (_ BitVec 64) Hashable!6249) Bool)

(assert (=> b!4696121 (= res!1981825 (allKeysSameHash!1706 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4696122 () Bool)

(assert (=> b!4696122 (= e!2929542 e!2929545)))

(declare-fun res!1981821 () Bool)

(assert (=> b!4696122 (=> res!1981821 e!2929545)))

(declare-fun removePairForKey!1475 (List!52605 K!13850) List!52605)

(assert (=> b!4696122 (= res!1981821 (not (= (removePairForKey!1475 lt!1857444 key!4653) lt!1857443)))))

(declare-fun tail!8667 (List!52605) List!52605)

(assert (=> b!4696122 (= lt!1857443 (tail!8667 newBucket!218))))

(assert (=> b!4696122 (= lt!1857444 (tail!8667 oldBucket!34))))

(declare-fun b!4696123 () Bool)

(declare-fun e!2929544 () Bool)

(declare-fun tp!1346349 () Bool)

(assert (=> b!4696123 (= e!2929544 tp!1346349)))

(declare-fun b!4696124 () Bool)

(assert (=> b!4696124 (= e!2929539 e!2929546)))

(declare-fun res!1981823 () Bool)

(assert (=> b!4696124 (=> (not res!1981823) (not e!2929546))))

(assert (=> b!4696124 (= res!1981823 (= lt!1857450 hash!405))))

(declare-fun hash!4125 (Hashable!6249 K!13850) (_ BitVec 64))

(assert (=> b!4696124 (= lt!1857450 (hash!4125 hashF!1323 key!4653))))

(declare-fun b!4696115 () Bool)

(declare-fun forall!11367 (List!52606 Int) Bool)

(assert (=> b!4696115 (= e!2929548 (forall!11367 lt!1857436 lambda!208857))))

(declare-fun res!1981826 () Bool)

(assert (=> start!475728 (=> (not res!1981826) (not e!2929538))))

(assert (=> start!475728 (= res!1981826 (forall!11367 (toList!5650 lm!2023) lambda!208857))))

(assert (=> start!475728 e!2929538))

(declare-fun inv!67724 (ListLongMap!4179) Bool)

(assert (=> start!475728 (and (inv!67724 lm!2023) e!2929544)))

(assert (=> start!475728 tp_is_empty!30813))

(declare-fun e!2929540 () Bool)

(assert (=> start!475728 e!2929540))

(assert (=> start!475728 true))

(assert (=> start!475728 e!2929549))

(declare-fun b!4696125 () Bool)

(declare-fun res!1981835 () Bool)

(assert (=> b!4696125 (=> (not res!1981835) (not e!2929538))))

(assert (=> b!4696125 (= res!1981835 (allKeysSameHash!1706 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4696126 () Bool)

(declare-fun res!1981834 () Bool)

(assert (=> b!4696126 (=> res!1981834 e!2929541)))

(assert (=> b!4696126 (= res!1981834 (not (eq!1039 lt!1857446 (+!2164 lt!1857453 lt!1857441))))))

(declare-fun b!4696127 () Bool)

(declare-fun res!1981819 () Bool)

(assert (=> b!4696127 (=> res!1981819 e!2929545)))

(assert (=> b!4696127 (= res!1981819 (not (= (removePairForKey!1475 (t!359801 oldBucket!34) key!4653) lt!1857443)))))

(declare-fun b!4696128 () Bool)

(declare-fun res!1981815 () Bool)

(assert (=> b!4696128 (=> (not res!1981815) (not e!2929538))))

(assert (=> b!4696128 (= res!1981815 (= (removePairForKey!1475 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4696129 () Bool)

(assert (=> b!4696129 (= e!2929543 e!2929548)))

(declare-fun res!1981824 () Bool)

(assert (=> b!4696129 (=> res!1981824 e!2929548)))

(assert (=> b!4696129 (= res!1981824 (not (= lt!1857437 lt!1857461)))))

(assert (=> b!4696129 (= lt!1857461 (+!2164 lt!1857456 (h!58746 oldBucket!34)))))

(assert (=> b!4696129 (= lt!1857437 (-!684 (+!2164 lt!1857442 (h!58746 oldBucket!34)) key!4653))))

(assert (=> b!4696129 (= (-!684 (+!2164 lt!1857442 (h!58746 oldBucket!34)) key!4653) (+!2164 lt!1857456 (h!58746 oldBucket!34)))))

(declare-fun lt!1857458 () Unit!125277)

(declare-fun addRemoveCommutativeForDiffKeys!85 (ListMap!5013 K!13850 V!14096 K!13850) Unit!125277)

(assert (=> b!4696129 (= lt!1857458 (addRemoveCommutativeForDiffKeys!85 lt!1857442 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34)) key!4653))))

(declare-fun b!4696130 () Bool)

(declare-fun tp!1346350 () Bool)

(assert (=> b!4696130 (= e!2929540 (and tp_is_empty!30813 tp_is_empty!30815 tp!1346350))))

(declare-fun b!4696131 () Bool)

(declare-fun res!1981827 () Bool)

(assert (=> b!4696131 (=> (not res!1981827) (not e!2929538))))

(assert (=> b!4696131 (= res!1981827 (noDuplicateKeys!1880 oldBucket!34))))

(assert (= (and start!475728 res!1981826) b!4696131))

(assert (= (and b!4696131 res!1981827) b!4696108))

(assert (= (and b!4696108 res!1981833) b!4696128))

(assert (= (and b!4696128 res!1981815) b!4696125))

(assert (= (and b!4696125 res!1981835) b!4696116))

(assert (= (and b!4696116 res!1981828) b!4696124))

(assert (= (and b!4696124 res!1981823) b!4696121))

(assert (= (and b!4696121 res!1981825) b!4696114))

(assert (= (and b!4696114 res!1981829) b!4696112))

(assert (= (and b!4696112 res!1981832) b!4696113))

(assert (= (and b!4696113 res!1981831) b!4696111))

(assert (= (and b!4696111 (not res!1981820)) b!4696119))

(assert (= (and b!4696119 (not res!1981818)) b!4696122))

(assert (= (and b!4696122 (not res!1981821)) b!4696127))

(assert (= (and b!4696127 (not res!1981819)) b!4696109))

(assert (= (and b!4696109 (not res!1981830)) b!4696110))

(assert (= (and b!4696110 (not res!1981816)) b!4696126))

(assert (= (and b!4696126 (not res!1981834)) b!4696118))

(assert (= (and b!4696118 (not res!1981822)) b!4696129))

(assert (= (and b!4696129 (not res!1981824)) b!4696117))

(assert (= (and b!4696117 (not res!1981817)) b!4696115))

(assert (= start!475728 b!4696123))

(assert (= (and start!475728 ((_ is Cons!52481) oldBucket!34)) b!4696130))

(assert (= (and start!475728 ((_ is Cons!52481) newBucket!218)) b!4696120))

(declare-fun m!5604761 () Bool)

(assert (=> b!4696109 m!5604761))

(declare-fun m!5604763 () Bool)

(assert (=> b!4696109 m!5604763))

(declare-fun m!5604765 () Bool)

(assert (=> b!4696109 m!5604765))

(declare-fun m!5604767 () Bool)

(assert (=> b!4696109 m!5604767))

(declare-fun m!5604769 () Bool)

(assert (=> b!4696109 m!5604769))

(declare-fun m!5604771 () Bool)

(assert (=> b!4696109 m!5604771))

(assert (=> b!4696109 m!5604763))

(declare-fun m!5604773 () Bool)

(assert (=> b!4696109 m!5604773))

(declare-fun m!5604775 () Bool)

(assert (=> b!4696109 m!5604775))

(declare-fun m!5604777 () Bool)

(assert (=> b!4696109 m!5604777))

(declare-fun m!5604779 () Bool)

(assert (=> b!4696109 m!5604779))

(declare-fun m!5604781 () Bool)

(assert (=> b!4696109 m!5604781))

(declare-fun m!5604783 () Bool)

(assert (=> b!4696109 m!5604783))

(declare-fun m!5604785 () Bool)

(assert (=> b!4696109 m!5604785))

(assert (=> b!4696109 m!5604761))

(declare-fun m!5604787 () Bool)

(assert (=> b!4696109 m!5604787))

(declare-fun m!5604789 () Bool)

(assert (=> b!4696109 m!5604789))

(assert (=> b!4696109 m!5604767))

(assert (=> b!4696109 m!5604787))

(declare-fun m!5604791 () Bool)

(assert (=> b!4696109 m!5604791))

(assert (=> b!4696109 m!5604781))

(declare-fun m!5604793 () Bool)

(assert (=> b!4696109 m!5604793))

(declare-fun m!5604795 () Bool)

(assert (=> b!4696109 m!5604795))

(assert (=> b!4696109 m!5604783))

(declare-fun m!5604797 () Bool)

(assert (=> b!4696109 m!5604797))

(assert (=> b!4696109 m!5604795))

(declare-fun m!5604799 () Bool)

(assert (=> b!4696116 m!5604799))

(declare-fun m!5604801 () Bool)

(assert (=> b!4696116 m!5604801))

(declare-fun m!5604803 () Bool)

(assert (=> b!4696128 m!5604803))

(declare-fun m!5604805 () Bool)

(assert (=> b!4696111 m!5604805))

(declare-fun m!5604807 () Bool)

(assert (=> b!4696111 m!5604807))

(declare-fun m!5604809 () Bool)

(assert (=> b!4696111 m!5604809))

(declare-fun m!5604811 () Bool)

(assert (=> b!4696124 m!5604811))

(declare-fun m!5604813 () Bool)

(assert (=> b!4696127 m!5604813))

(declare-fun m!5604815 () Bool)

(assert (=> b!4696125 m!5604815))

(declare-fun m!5604817 () Bool)

(assert (=> b!4696129 m!5604817))

(declare-fun m!5604819 () Bool)

(assert (=> b!4696129 m!5604819))

(assert (=> b!4696129 m!5604819))

(declare-fun m!5604821 () Bool)

(assert (=> b!4696129 m!5604821))

(declare-fun m!5604823 () Bool)

(assert (=> b!4696129 m!5604823))

(declare-fun m!5604825 () Bool)

(assert (=> b!4696131 m!5604825))

(declare-fun m!5604827 () Bool)

(assert (=> b!4696119 m!5604827))

(declare-fun m!5604829 () Bool)

(assert (=> b!4696119 m!5604829))

(declare-fun m!5604831 () Bool)

(assert (=> b!4696119 m!5604831))

(declare-fun m!5604833 () Bool)

(assert (=> b!4696119 m!5604833))

(declare-fun m!5604835 () Bool)

(assert (=> b!4696119 m!5604835))

(declare-fun m!5604837 () Bool)

(assert (=> b!4696119 m!5604837))

(assert (=> b!4696119 m!5604827))

(declare-fun m!5604839 () Bool)

(assert (=> b!4696119 m!5604839))

(declare-fun m!5604841 () Bool)

(assert (=> b!4696119 m!5604841))

(declare-fun m!5604843 () Bool)

(assert (=> b!4696119 m!5604843))

(declare-fun m!5604845 () Bool)

(assert (=> b!4696119 m!5604845))

(declare-fun m!5604847 () Bool)

(assert (=> b!4696119 m!5604847))

(declare-fun m!5604849 () Bool)

(assert (=> b!4696119 m!5604849))

(declare-fun m!5604851 () Bool)

(assert (=> b!4696121 m!5604851))

(declare-fun m!5604853 () Bool)

(assert (=> b!4696118 m!5604853))

(declare-fun m!5604855 () Bool)

(assert (=> b!4696118 m!5604855))

(declare-fun m!5604857 () Bool)

(assert (=> b!4696118 m!5604857))

(declare-fun m!5604859 () Bool)

(assert (=> b!4696118 m!5604859))

(declare-fun m!5604861 () Bool)

(assert (=> b!4696118 m!5604861))

(declare-fun m!5604863 () Bool)

(assert (=> b!4696118 m!5604863))

(declare-fun m!5604865 () Bool)

(assert (=> b!4696118 m!5604865))

(assert (=> b!4696118 m!5604865))

(assert (=> b!4696118 m!5604859))

(declare-fun m!5604867 () Bool)

(assert (=> b!4696118 m!5604867))

(assert (=> b!4696118 m!5604857))

(declare-fun m!5604869 () Bool)

(assert (=> b!4696118 m!5604869))

(declare-fun m!5604871 () Bool)

(assert (=> b!4696115 m!5604871))

(declare-fun m!5604873 () Bool)

(assert (=> start!475728 m!5604873))

(declare-fun m!5604875 () Bool)

(assert (=> start!475728 m!5604875))

(declare-fun m!5604877 () Bool)

(assert (=> b!4696117 m!5604877))

(declare-fun m!5604879 () Bool)

(assert (=> b!4696122 m!5604879))

(declare-fun m!5604881 () Bool)

(assert (=> b!4696122 m!5604881))

(declare-fun m!5604883 () Bool)

(assert (=> b!4696122 m!5604883))

(declare-fun m!5604885 () Bool)

(assert (=> b!4696112 m!5604885))

(declare-fun m!5604887 () Bool)

(assert (=> b!4696126 m!5604887))

(assert (=> b!4696126 m!5604887))

(declare-fun m!5604889 () Bool)

(assert (=> b!4696126 m!5604889))

(declare-fun m!5604891 () Bool)

(assert (=> b!4696108 m!5604891))

(declare-fun m!5604893 () Bool)

(assert (=> b!4696114 m!5604893))

(check-sat (not b!4696130) (not b!4696129) (not b!4696117) (not b!4696127) (not b!4696108) (not b!4696124) (not start!475728) tp_is_empty!30815 (not b!4696116) (not b!4696118) (not b!4696111) (not b!4696112) (not b!4696119) (not b!4696122) (not b!4696125) (not b!4696114) (not b!4696128) (not b!4696120) tp_is_empty!30813 (not b!4696109) (not b!4696131) (not b!4696126) (not b!4696121) (not b!4696123) (not b!4696115))
(check-sat)
(get-model)

(declare-fun d!1492950 () Bool)

(declare-fun res!1981840 () Bool)

(declare-fun e!2929555 () Bool)

(assert (=> d!1492950 (=> res!1981840 e!2929555)))

(assert (=> d!1492950 (= res!1981840 (not ((_ is Cons!52481) oldBucket!34)))))

(assert (=> d!1492950 (= (noDuplicateKeys!1880 oldBucket!34) e!2929555)))

(declare-fun b!4696136 () Bool)

(declare-fun e!2929556 () Bool)

(assert (=> b!4696136 (= e!2929555 e!2929556)))

(declare-fun res!1981841 () Bool)

(assert (=> b!4696136 (=> (not res!1981841) (not e!2929556))))

(assert (=> b!4696136 (= res!1981841 (not (containsKey!3119 (t!359801 oldBucket!34) (_1!30251 (h!58746 oldBucket!34)))))))

(declare-fun b!4696137 () Bool)

(assert (=> b!4696137 (= e!2929556 (noDuplicateKeys!1880 (t!359801 oldBucket!34)))))

(assert (= (and d!1492950 (not res!1981840)) b!4696136))

(assert (= (and b!4696136 res!1981841) b!4696137))

(declare-fun m!5604895 () Bool)

(assert (=> b!4696136 m!5604895))

(declare-fun m!5604897 () Bool)

(assert (=> b!4696137 m!5604897))

(assert (=> b!4696131 d!1492950))

(declare-fun d!1492952 () Bool)

(assert (=> d!1492952 true))

(assert (=> d!1492952 true))

(declare-fun lambda!208860 () Int)

(declare-fun forall!11369 (List!52605 Int) Bool)

(assert (=> d!1492952 (= (allKeysSameHash!1706 newBucket!218 hash!405 hashF!1323) (forall!11369 newBucket!218 lambda!208860))))

(declare-fun bs!1091222 () Bool)

(assert (= bs!1091222 d!1492952))

(declare-fun m!5604899 () Bool)

(assert (=> bs!1091222 m!5604899))

(assert (=> b!4696121 d!1492952))

(declare-fun d!1492954 () Bool)

(declare-fun dynLambda!21733 (Int tuple2!53916) Bool)

(assert (=> d!1492954 (dynLambda!21733 lambda!208857 lt!1857433)))

(declare-fun lt!1857465 () Unit!125277)

(declare-fun choose!32743 (List!52606 Int tuple2!53916) Unit!125277)

(assert (=> d!1492954 (= lt!1857465 (choose!32743 (toList!5650 lm!2023) lambda!208857 lt!1857433))))

(declare-fun e!2929563 () Bool)

(assert (=> d!1492954 e!2929563))

(declare-fun res!1981848 () Bool)

(assert (=> d!1492954 (=> (not res!1981848) (not e!2929563))))

(assert (=> d!1492954 (= res!1981848 (forall!11367 (toList!5650 lm!2023) lambda!208857))))

(assert (=> d!1492954 (= (forallContained!3474 (toList!5650 lm!2023) lambda!208857 lt!1857433) lt!1857465)))

(declare-fun b!4696152 () Bool)

(assert (=> b!4696152 (= e!2929563 (contains!15727 (toList!5650 lm!2023) lt!1857433))))

(assert (= (and d!1492954 res!1981848) b!4696152))

(declare-fun b_lambda!177205 () Bool)

(assert (=> (not b_lambda!177205) (not d!1492954)))

(declare-fun m!5604907 () Bool)

(assert (=> d!1492954 m!5604907))

(declare-fun m!5604909 () Bool)

(assert (=> d!1492954 m!5604909))

(assert (=> d!1492954 m!5604873))

(assert (=> b!4696152 m!5604837))

(assert (=> b!4696119 d!1492954))

(declare-fun bs!1091225 () Bool)

(declare-fun d!1492964 () Bool)

(assert (= bs!1091225 (and d!1492964 start!475728)))

(declare-fun lambda!208866 () Int)

(assert (=> bs!1091225 (= lambda!208866 lambda!208857)))

(assert (=> d!1492964 (contains!15728 lm!2023 (hash!4125 hashF!1323 key!4653))))

(declare-fun lt!1857471 () Unit!125277)

(declare-fun choose!32744 (ListLongMap!4179 K!13850 Hashable!6249) Unit!125277)

(assert (=> d!1492964 (= lt!1857471 (choose!32744 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492964 (forall!11367 (toList!5650 lm!2023) lambda!208866)))

(assert (=> d!1492964 (= (lemmaInGenMapThenLongMapContainsHash!690 lm!2023 key!4653 hashF!1323) lt!1857471)))

(declare-fun bs!1091226 () Bool)

(assert (= bs!1091226 d!1492964))

(assert (=> bs!1091226 m!5604811))

(assert (=> bs!1091226 m!5604811))

(declare-fun m!5604925 () Bool)

(assert (=> bs!1091226 m!5604925))

(declare-fun m!5604927 () Bool)

(assert (=> bs!1091226 m!5604927))

(declare-fun m!5604929 () Bool)

(assert (=> bs!1091226 m!5604929))

(assert (=> b!4696119 d!1492964))

(declare-fun d!1492972 () Bool)

(declare-fun e!2929604 () Bool)

(assert (=> d!1492972 e!2929604))

(declare-fun res!1981880 () Bool)

(assert (=> d!1492972 (=> res!1981880 e!2929604)))

(declare-fun lt!1857500 () Bool)

(assert (=> d!1492972 (= res!1981880 (not lt!1857500))))

(declare-fun lt!1857501 () Bool)

(assert (=> d!1492972 (= lt!1857500 lt!1857501)))

(declare-fun lt!1857498 () Unit!125277)

(declare-fun e!2929603 () Unit!125277)

(assert (=> d!1492972 (= lt!1857498 e!2929603)))

(declare-fun c!802821 () Bool)

(assert (=> d!1492972 (= c!802821 lt!1857501)))

(declare-fun containsKey!3121 (List!52606 (_ BitVec 64)) Bool)

(assert (=> d!1492972 (= lt!1857501 (containsKey!3121 (toList!5650 lm!2023) lt!1857450))))

(assert (=> d!1492972 (= (contains!15728 lm!2023 lt!1857450) lt!1857500)))

(declare-fun b!4696206 () Bool)

(declare-fun lt!1857499 () Unit!125277)

(assert (=> b!4696206 (= e!2929603 lt!1857499)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1711 (List!52606 (_ BitVec 64)) Unit!125277)

(assert (=> b!4696206 (= lt!1857499 (lemmaContainsKeyImpliesGetValueByKeyDefined!1711 (toList!5650 lm!2023) lt!1857450))))

(declare-datatypes ((Option!12145 0))(
  ( (None!12144) (Some!12144 (v!46603 List!52605)) )
))
(declare-fun isDefined!9400 (Option!12145) Bool)

(declare-fun getValueByKey!1819 (List!52606 (_ BitVec 64)) Option!12145)

(assert (=> b!4696206 (isDefined!9400 (getValueByKey!1819 (toList!5650 lm!2023) lt!1857450))))

(declare-fun b!4696207 () Bool)

(declare-fun Unit!125291 () Unit!125277)

(assert (=> b!4696207 (= e!2929603 Unit!125291)))

(declare-fun b!4696208 () Bool)

(assert (=> b!4696208 (= e!2929604 (isDefined!9400 (getValueByKey!1819 (toList!5650 lm!2023) lt!1857450)))))

(assert (= (and d!1492972 c!802821) b!4696206))

(assert (= (and d!1492972 (not c!802821)) b!4696207))

(assert (= (and d!1492972 (not res!1981880)) b!4696208))

(declare-fun m!5604959 () Bool)

(assert (=> d!1492972 m!5604959))

(declare-fun m!5604961 () Bool)

(assert (=> b!4696206 m!5604961))

(declare-fun m!5604963 () Bool)

(assert (=> b!4696206 m!5604963))

(assert (=> b!4696206 m!5604963))

(declare-fun m!5604965 () Bool)

(assert (=> b!4696206 m!5604965))

(assert (=> b!4696208 m!5604963))

(assert (=> b!4696208 m!5604963))

(assert (=> b!4696208 m!5604965))

(assert (=> b!4696119 d!1492972))

(declare-fun bs!1091234 () Bool)

(declare-fun d!1492982 () Bool)

(assert (= bs!1091234 (and d!1492982 start!475728)))

(declare-fun lambda!208883 () Int)

(assert (=> bs!1091234 (= lambda!208883 lambda!208857)))

(declare-fun bs!1091235 () Bool)

(assert (= bs!1091235 (and d!1492982 d!1492964)))

(assert (=> bs!1091235 (= lambda!208883 lambda!208866)))

(declare-fun b!4696242 () Bool)

(declare-fun res!1981913 () Bool)

(declare-fun e!2929627 () Bool)

(assert (=> b!4696242 (=> (not res!1981913) (not e!2929627))))

(assert (=> b!4696242 (= res!1981913 (contains!15726 (extractMap!1906 (toList!5650 lm!2023)) key!4653))))

(declare-fun b!4696241 () Bool)

(declare-fun res!1981915 () Bool)

(assert (=> b!4696241 (=> (not res!1981915) (not e!2929627))))

(assert (=> b!4696241 (= res!1981915 (allKeysSameHashInMap!1794 lm!2023 hashF!1323))))

(assert (=> d!1492982 e!2929627))

(declare-fun res!1981914 () Bool)

(assert (=> d!1492982 (=> (not res!1981914) (not e!2929627))))

(assert (=> d!1492982 (= res!1981914 (forall!11367 (toList!5650 lm!2023) lambda!208883))))

(declare-fun lt!1857555 () Unit!125277)

(declare-fun choose!32745 (ListLongMap!4179 K!13850 Hashable!6249) Unit!125277)

(assert (=> d!1492982 (= lt!1857555 (choose!32745 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492982 (forall!11367 (toList!5650 lm!2023) lambda!208883)))

(assert (=> d!1492982 (= (lemmaInGenMapThenGetPairDefined!280 lm!2023 key!4653 hashF!1323) lt!1857555)))

(declare-fun b!4696243 () Bool)

(assert (=> b!4696243 (= e!2929627 (isDefined!9398 (getPair!484 (apply!12363 lm!2023 (hash!4125 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1857558 () Unit!125277)

(assert (=> b!4696243 (= lt!1857558 (forallContained!3474 (toList!5650 lm!2023) lambda!208883 (tuple2!53917 (hash!4125 hashF!1323 key!4653) (apply!12363 lm!2023 (hash!4125 hashF!1323 key!4653)))))))

(declare-fun lt!1857553 () Unit!125277)

(declare-fun lt!1857552 () Unit!125277)

(assert (=> b!4696243 (= lt!1857553 lt!1857552)))

(declare-fun lt!1857554 () (_ BitVec 64))

(declare-fun lt!1857551 () List!52605)

(assert (=> b!4696243 (contains!15727 (toList!5650 lm!2023) (tuple2!53917 lt!1857554 lt!1857551))))

(assert (=> b!4696243 (= lt!1857552 (lemmaGetValueImpliesTupleContained!289 lm!2023 lt!1857554 lt!1857551))))

(declare-fun e!2929626 () Bool)

(assert (=> b!4696243 e!2929626))

(declare-fun res!1981912 () Bool)

(assert (=> b!4696243 (=> (not res!1981912) (not e!2929626))))

(assert (=> b!4696243 (= res!1981912 (contains!15728 lm!2023 lt!1857554))))

(assert (=> b!4696243 (= lt!1857551 (apply!12363 lm!2023 (hash!4125 hashF!1323 key!4653)))))

(assert (=> b!4696243 (= lt!1857554 (hash!4125 hashF!1323 key!4653))))

(declare-fun lt!1857556 () Unit!125277)

(declare-fun lt!1857557 () Unit!125277)

(assert (=> b!4696243 (= lt!1857556 lt!1857557)))

(assert (=> b!4696243 (contains!15728 lm!2023 (hash!4125 hashF!1323 key!4653))))

(assert (=> b!4696243 (= lt!1857557 (lemmaInGenMapThenLongMapContainsHash!690 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4696244 () Bool)

(assert (=> b!4696244 (= e!2929626 (= (getValueByKey!1819 (toList!5650 lm!2023) lt!1857554) (Some!12144 lt!1857551)))))

(assert (= (and d!1492982 res!1981914) b!4696241))

(assert (= (and b!4696241 res!1981915) b!4696242))

(assert (= (and b!4696242 res!1981913) b!4696243))

(assert (= (and b!4696243 res!1981912) b!4696244))

(assert (=> b!4696241 m!5604893))

(declare-fun m!5605001 () Bool)

(assert (=> b!4696244 m!5605001))

(assert (=> b!4696242 m!5604801))

(assert (=> b!4696242 m!5604801))

(declare-fun m!5605003 () Bool)

(assert (=> b!4696242 m!5605003))

(declare-fun m!5605005 () Bool)

(assert (=> d!1492982 m!5605005))

(declare-fun m!5605007 () Bool)

(assert (=> d!1492982 m!5605007))

(assert (=> d!1492982 m!5605005))

(assert (=> b!4696243 m!5604833))

(declare-fun m!5605009 () Bool)

(assert (=> b!4696243 m!5605009))

(declare-fun m!5605011 () Bool)

(assert (=> b!4696243 m!5605011))

(declare-fun m!5605013 () Bool)

(assert (=> b!4696243 m!5605013))

(declare-fun m!5605015 () Bool)

(assert (=> b!4696243 m!5605015))

(assert (=> b!4696243 m!5604811))

(assert (=> b!4696243 m!5604925))

(assert (=> b!4696243 m!5604811))

(assert (=> b!4696243 m!5605011))

(assert (=> b!4696243 m!5604811))

(assert (=> b!4696243 m!5605013))

(declare-fun m!5605017 () Bool)

(assert (=> b!4696243 m!5605017))

(declare-fun m!5605019 () Bool)

(assert (=> b!4696243 m!5605019))

(declare-fun m!5605021 () Bool)

(assert (=> b!4696243 m!5605021))

(assert (=> b!4696119 d!1492982))

(declare-fun d!1492996 () Bool)

(declare-fun get!17546 (Option!12145) List!52605)

(assert (=> d!1492996 (= (apply!12363 lm!2023 lt!1857450) (get!17546 (getValueByKey!1819 (toList!5650 lm!2023) lt!1857450)))))

(declare-fun bs!1091236 () Bool)

(assert (= bs!1091236 d!1492996))

(assert (=> bs!1091236 m!5604963))

(assert (=> bs!1091236 m!5604963))

(declare-fun m!5605023 () Bool)

(assert (=> bs!1091236 m!5605023))

(assert (=> b!4696119 d!1492996))

(declare-fun d!1492998 () Bool)

(assert (=> d!1492998 (containsKey!3119 oldBucket!34 key!4653)))

(declare-fun lt!1857561 () Unit!125277)

(declare-fun choose!32746 (List!52605 K!13850 Hashable!6249) Unit!125277)

(assert (=> d!1492998 (= lt!1857561 (choose!32746 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1492998 (noDuplicateKeys!1880 oldBucket!34)))

(assert (=> d!1492998 (= (lemmaGetPairDefinedThenContainsKey!232 oldBucket!34 key!4653 hashF!1323) lt!1857561)))

(declare-fun bs!1091237 () Bool)

(assert (= bs!1091237 d!1492998))

(assert (=> bs!1091237 m!5604847))

(declare-fun m!5605025 () Bool)

(assert (=> bs!1091237 m!5605025))

(assert (=> bs!1091237 m!5604825))

(assert (=> b!4696119 d!1492998))

(declare-fun d!1493000 () Bool)

(declare-fun res!1981920 () Bool)

(declare-fun e!2929632 () Bool)

(assert (=> d!1493000 (=> res!1981920 e!2929632)))

(assert (=> d!1493000 (= res!1981920 (and ((_ is Cons!52481) (t!359801 oldBucket!34)) (= (_1!30251 (h!58746 (t!359801 oldBucket!34))) key!4653)))))

(assert (=> d!1493000 (= (containsKey!3119 (t!359801 oldBucket!34) key!4653) e!2929632)))

(declare-fun b!4696249 () Bool)

(declare-fun e!2929633 () Bool)

(assert (=> b!4696249 (= e!2929632 e!2929633)))

(declare-fun res!1981921 () Bool)

(assert (=> b!4696249 (=> (not res!1981921) (not e!2929633))))

(assert (=> b!4696249 (= res!1981921 ((_ is Cons!52481) (t!359801 oldBucket!34)))))

(declare-fun b!4696250 () Bool)

(assert (=> b!4696250 (= e!2929633 (containsKey!3119 (t!359801 (t!359801 oldBucket!34)) key!4653))))

(assert (= (and d!1493000 (not res!1981920)) b!4696249))

(assert (= (and b!4696249 res!1981921) b!4696250))

(declare-fun m!5605027 () Bool)

(assert (=> b!4696250 m!5605027))

(assert (=> b!4696119 d!1493000))

(declare-fun d!1493002 () Bool)

(declare-fun res!1981922 () Bool)

(declare-fun e!2929634 () Bool)

(assert (=> d!1493002 (=> res!1981922 e!2929634)))

(assert (=> d!1493002 (= res!1981922 (and ((_ is Cons!52481) oldBucket!34) (= (_1!30251 (h!58746 oldBucket!34)) key!4653)))))

(assert (=> d!1493002 (= (containsKey!3119 oldBucket!34 key!4653) e!2929634)))

(declare-fun b!4696251 () Bool)

(declare-fun e!2929635 () Bool)

(assert (=> b!4696251 (= e!2929634 e!2929635)))

(declare-fun res!1981923 () Bool)

(assert (=> b!4696251 (=> (not res!1981923) (not e!2929635))))

(assert (=> b!4696251 (= res!1981923 ((_ is Cons!52481) oldBucket!34))))

(declare-fun b!4696252 () Bool)

(assert (=> b!4696252 (= e!2929635 (containsKey!3119 (t!359801 oldBucket!34) key!4653))))

(assert (= (and d!1493002 (not res!1981922)) b!4696251))

(assert (= (and b!4696251 res!1981923) b!4696252))

(assert (=> b!4696252 m!5604843))

(assert (=> b!4696119 d!1493002))

(declare-fun b!4696269 () Bool)

(declare-fun e!2929650 () Option!12143)

(declare-fun e!2929649 () Option!12143)

(assert (=> b!4696269 (= e!2929650 e!2929649)))

(declare-fun c!802826 () Bool)

(assert (=> b!4696269 (= c!802826 ((_ is Cons!52481) lt!1857454))))

(declare-fun b!4696270 () Bool)

(assert (=> b!4696270 (= e!2929649 None!12142)))

(declare-fun b!4696271 () Bool)

(assert (=> b!4696271 (= e!2929650 (Some!12142 (h!58746 lt!1857454)))))

(declare-fun b!4696273 () Bool)

(declare-fun e!2929646 () Bool)

(declare-fun lt!1857564 () Option!12143)

(declare-fun contains!15730 (List!52605 tuple2!53914) Bool)

(declare-fun get!17547 (Option!12143) tuple2!53914)

(assert (=> b!4696273 (= e!2929646 (contains!15730 lt!1857454 (get!17547 lt!1857564)))))

(declare-fun b!4696274 () Bool)

(declare-fun res!1981933 () Bool)

(assert (=> b!4696274 (=> (not res!1981933) (not e!2929646))))

(assert (=> b!4696274 (= res!1981933 (= (_1!30251 (get!17547 lt!1857564)) key!4653))))

(declare-fun b!4696275 () Bool)

(declare-fun e!2929647 () Bool)

(assert (=> b!4696275 (= e!2929647 (not (containsKey!3119 lt!1857454 key!4653)))))

(declare-fun b!4696276 () Bool)

(declare-fun e!2929648 () Bool)

(assert (=> b!4696276 (= e!2929648 e!2929646)))

(declare-fun res!1981935 () Bool)

(assert (=> b!4696276 (=> (not res!1981935) (not e!2929646))))

(assert (=> b!4696276 (= res!1981935 (isDefined!9398 lt!1857564))))

(declare-fun b!4696272 () Bool)

(assert (=> b!4696272 (= e!2929649 (getPair!484 (t!359801 lt!1857454) key!4653))))

(declare-fun d!1493004 () Bool)

(assert (=> d!1493004 e!2929648))

(declare-fun res!1981934 () Bool)

(assert (=> d!1493004 (=> res!1981934 e!2929648)))

(assert (=> d!1493004 (= res!1981934 e!2929647)))

(declare-fun res!1981932 () Bool)

(assert (=> d!1493004 (=> (not res!1981932) (not e!2929647))))

(declare-fun isEmpty!29114 (Option!12143) Bool)

(assert (=> d!1493004 (= res!1981932 (isEmpty!29114 lt!1857564))))

(assert (=> d!1493004 (= lt!1857564 e!2929650)))

(declare-fun c!802827 () Bool)

(assert (=> d!1493004 (= c!802827 (and ((_ is Cons!52481) lt!1857454) (= (_1!30251 (h!58746 lt!1857454)) key!4653)))))

(assert (=> d!1493004 (noDuplicateKeys!1880 lt!1857454)))

(assert (=> d!1493004 (= (getPair!484 lt!1857454 key!4653) lt!1857564)))

(assert (= (and d!1493004 c!802827) b!4696271))

(assert (= (and d!1493004 (not c!802827)) b!4696269))

(assert (= (and b!4696269 c!802826) b!4696272))

(assert (= (and b!4696269 (not c!802826)) b!4696270))

(assert (= (and d!1493004 res!1981932) b!4696275))

(assert (= (and d!1493004 (not res!1981934)) b!4696276))

(assert (= (and b!4696276 res!1981935) b!4696274))

(assert (= (and b!4696274 res!1981933) b!4696273))

(declare-fun m!5605029 () Bool)

(assert (=> b!4696275 m!5605029))

(declare-fun m!5605031 () Bool)

(assert (=> d!1493004 m!5605031))

(declare-fun m!5605033 () Bool)

(assert (=> d!1493004 m!5605033))

(declare-fun m!5605035 () Bool)

(assert (=> b!4696273 m!5605035))

(assert (=> b!4696273 m!5605035))

(declare-fun m!5605037 () Bool)

(assert (=> b!4696273 m!5605037))

(declare-fun m!5605039 () Bool)

(assert (=> b!4696276 m!5605039))

(declare-fun m!5605041 () Bool)

(assert (=> b!4696272 m!5605041))

(assert (=> b!4696274 m!5605035))

(assert (=> b!4696119 d!1493004))

(declare-fun d!1493006 () Bool)

(assert (=> d!1493006 (contains!15727 (toList!5650 lm!2023) (tuple2!53917 lt!1857450 lt!1857454))))

(declare-fun lt!1857567 () Unit!125277)

(declare-fun choose!32747 (ListLongMap!4179 (_ BitVec 64) List!52605) Unit!125277)

(assert (=> d!1493006 (= lt!1857567 (choose!32747 lm!2023 lt!1857450 lt!1857454))))

(assert (=> d!1493006 (contains!15728 lm!2023 lt!1857450)))

(assert (=> d!1493006 (= (lemmaGetValueImpliesTupleContained!289 lm!2023 lt!1857450 lt!1857454) lt!1857567)))

(declare-fun bs!1091238 () Bool)

(assert (= bs!1091238 d!1493006))

(declare-fun m!5605043 () Bool)

(assert (=> bs!1091238 m!5605043))

(declare-fun m!5605045 () Bool)

(assert (=> bs!1091238 m!5605045))

(assert (=> bs!1091238 m!5604849))

(assert (=> b!4696119 d!1493006))

(declare-fun d!1493008 () Bool)

(declare-fun lt!1857570 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9220 (List!52606) (InoxSet tuple2!53916))

(assert (=> d!1493008 (= lt!1857570 (select (content!9220 (toList!5650 lm!2023)) lt!1857433))))

(declare-fun e!2929655 () Bool)

(assert (=> d!1493008 (= lt!1857570 e!2929655)))

(declare-fun res!1981941 () Bool)

(assert (=> d!1493008 (=> (not res!1981941) (not e!2929655))))

(assert (=> d!1493008 (= res!1981941 ((_ is Cons!52482) (toList!5650 lm!2023)))))

(assert (=> d!1493008 (= (contains!15727 (toList!5650 lm!2023) lt!1857433) lt!1857570)))

(declare-fun b!4696282 () Bool)

(declare-fun e!2929656 () Bool)

(assert (=> b!4696282 (= e!2929655 e!2929656)))

(declare-fun res!1981940 () Bool)

(assert (=> b!4696282 (=> res!1981940 e!2929656)))

(assert (=> b!4696282 (= res!1981940 (= (h!58747 (toList!5650 lm!2023)) lt!1857433))))

(declare-fun b!4696283 () Bool)

(assert (=> b!4696283 (= e!2929656 (contains!15727 (t!359802 (toList!5650 lm!2023)) lt!1857433))))

(assert (= (and d!1493008 res!1981941) b!4696282))

(assert (= (and b!4696282 (not res!1981940)) b!4696283))

(declare-fun m!5605047 () Bool)

(assert (=> d!1493008 m!5605047))

(declare-fun m!5605049 () Bool)

(assert (=> d!1493008 m!5605049))

(declare-fun m!5605051 () Bool)

(assert (=> b!4696283 m!5605051))

(assert (=> b!4696119 d!1493008))

(declare-fun d!1493010 () Bool)

(assert (=> d!1493010 (= (isDefined!9398 (getPair!484 lt!1857454 key!4653)) (not (isEmpty!29114 (getPair!484 lt!1857454 key!4653))))))

(declare-fun bs!1091239 () Bool)

(assert (= bs!1091239 d!1493010))

(assert (=> bs!1091239 m!5604827))

(declare-fun m!5605053 () Bool)

(assert (=> bs!1091239 m!5605053))

(assert (=> b!4696119 d!1493010))

(declare-fun bs!1091283 () Bool)

(declare-fun b!4696335 () Bool)

(assert (= bs!1091283 (and b!4696335 d!1492952)))

(declare-fun lambda!208954 () Int)

(assert (=> bs!1091283 (not (= lambda!208954 lambda!208860))))

(assert (=> b!4696335 true))

(declare-fun bs!1091284 () Bool)

(declare-fun b!4696336 () Bool)

(assert (= bs!1091284 (and b!4696336 d!1492952)))

(declare-fun lambda!208955 () Int)

(assert (=> bs!1091284 (not (= lambda!208955 lambda!208860))))

(declare-fun bs!1091285 () Bool)

(assert (= bs!1091285 (and b!4696336 b!4696335)))

(assert (=> bs!1091285 (= lambda!208955 lambda!208954)))

(assert (=> b!4696336 true))

(declare-fun lambda!208956 () Int)

(assert (=> bs!1091284 (not (= lambda!208956 lambda!208860))))

(declare-fun lt!1857704 () ListMap!5013)

(assert (=> bs!1091285 (= (= lt!1857704 lt!1857448) (= lambda!208956 lambda!208954))))

(assert (=> b!4696336 (= (= lt!1857704 lt!1857448) (= lambda!208956 lambda!208955))))

(assert (=> b!4696336 true))

(declare-fun bs!1091286 () Bool)

(declare-fun d!1493012 () Bool)

(assert (= bs!1091286 (and d!1493012 d!1492952)))

(declare-fun lambda!208957 () Int)

(assert (=> bs!1091286 (not (= lambda!208957 lambda!208860))))

(declare-fun bs!1091287 () Bool)

(assert (= bs!1091287 (and d!1493012 b!4696335)))

(declare-fun lt!1857708 () ListMap!5013)

(assert (=> bs!1091287 (= (= lt!1857708 lt!1857448) (= lambda!208957 lambda!208954))))

(declare-fun bs!1091288 () Bool)

(assert (= bs!1091288 (and d!1493012 b!4696336)))

(assert (=> bs!1091288 (= (= lt!1857708 lt!1857448) (= lambda!208957 lambda!208955))))

(assert (=> bs!1091288 (= (= lt!1857708 lt!1857704) (= lambda!208957 lambda!208956))))

(assert (=> d!1493012 true))

(declare-fun bm!328268 () Bool)

(declare-fun c!802840 () Bool)

(declare-fun call!328274 () Bool)

(assert (=> bm!328268 (= call!328274 (forall!11369 (toList!5649 lt!1857448) (ite c!802840 lambda!208954 lambda!208956)))))

(declare-fun e!2929686 () ListMap!5013)

(assert (=> b!4696335 (= e!2929686 lt!1857448)))

(declare-fun lt!1857714 () Unit!125277)

(declare-fun call!328275 () Unit!125277)

(assert (=> b!4696335 (= lt!1857714 call!328275)))

(declare-fun call!328273 () Bool)

(assert (=> b!4696335 call!328273))

(declare-fun lt!1857709 () Unit!125277)

(assert (=> b!4696335 (= lt!1857709 lt!1857714)))

(assert (=> b!4696335 call!328274))

(declare-fun lt!1857705 () Unit!125277)

(declare-fun Unit!125292 () Unit!125277)

(assert (=> b!4696335 (= lt!1857705 Unit!125292)))

(assert (=> b!4696336 (= e!2929686 lt!1857704)))

(declare-fun lt!1857722 () ListMap!5013)

(assert (=> b!4696336 (= lt!1857722 (+!2164 lt!1857448 (h!58746 (Cons!52481 lt!1857460 lt!1857444))))))

(assert (=> b!4696336 (= lt!1857704 (addToMapMapFromBucket!1312 (t!359801 (Cons!52481 lt!1857460 lt!1857444)) (+!2164 lt!1857448 (h!58746 (Cons!52481 lt!1857460 lt!1857444)))))))

(declare-fun lt!1857702 () Unit!125277)

(assert (=> b!4696336 (= lt!1857702 call!328275)))

(assert (=> b!4696336 (forall!11369 (toList!5649 lt!1857448) lambda!208955)))

(declare-fun lt!1857713 () Unit!125277)

(assert (=> b!4696336 (= lt!1857713 lt!1857702)))

(assert (=> b!4696336 (forall!11369 (toList!5649 lt!1857722) lambda!208956)))

(declare-fun lt!1857706 () Unit!125277)

(declare-fun Unit!125293 () Unit!125277)

(assert (=> b!4696336 (= lt!1857706 Unit!125293)))

(assert (=> b!4696336 (forall!11369 (t!359801 (Cons!52481 lt!1857460 lt!1857444)) lambda!208956)))

(declare-fun lt!1857721 () Unit!125277)

(declare-fun Unit!125294 () Unit!125277)

(assert (=> b!4696336 (= lt!1857721 Unit!125294)))

(declare-fun lt!1857716 () Unit!125277)

(declare-fun Unit!125295 () Unit!125277)

(assert (=> b!4696336 (= lt!1857716 Unit!125295)))

(declare-fun lt!1857711 () Unit!125277)

(declare-fun forallContained!3476 (List!52605 Int tuple2!53914) Unit!125277)

(assert (=> b!4696336 (= lt!1857711 (forallContained!3476 (toList!5649 lt!1857722) lambda!208956 (h!58746 (Cons!52481 lt!1857460 lt!1857444))))))

(assert (=> b!4696336 (contains!15726 lt!1857722 (_1!30251 (h!58746 (Cons!52481 lt!1857460 lt!1857444))))))

(declare-fun lt!1857715 () Unit!125277)

(declare-fun Unit!125296 () Unit!125277)

(assert (=> b!4696336 (= lt!1857715 Unit!125296)))

(assert (=> b!4696336 (contains!15726 lt!1857704 (_1!30251 (h!58746 (Cons!52481 lt!1857460 lt!1857444))))))

(declare-fun lt!1857712 () Unit!125277)

(declare-fun Unit!125297 () Unit!125277)

(assert (=> b!4696336 (= lt!1857712 Unit!125297)))

(assert (=> b!4696336 (forall!11369 (Cons!52481 lt!1857460 lt!1857444) lambda!208956)))

(declare-fun lt!1857717 () Unit!125277)

(declare-fun Unit!125298 () Unit!125277)

(assert (=> b!4696336 (= lt!1857717 Unit!125298)))

(assert (=> b!4696336 call!328273))

(declare-fun lt!1857719 () Unit!125277)

(declare-fun Unit!125299 () Unit!125277)

(assert (=> b!4696336 (= lt!1857719 Unit!125299)))

(declare-fun lt!1857703 () Unit!125277)

(declare-fun Unit!125300 () Unit!125277)

(assert (=> b!4696336 (= lt!1857703 Unit!125300)))

(declare-fun lt!1857710 () Unit!125277)

(declare-fun addForallContainsKeyThenBeforeAdding!717 (ListMap!5013 ListMap!5013 K!13850 V!14096) Unit!125277)

(assert (=> b!4696336 (= lt!1857710 (addForallContainsKeyThenBeforeAdding!717 lt!1857448 lt!1857704 (_1!30251 (h!58746 (Cons!52481 lt!1857460 lt!1857444))) (_2!30251 (h!58746 (Cons!52481 lt!1857460 lt!1857444)))))))

(assert (=> b!4696336 (forall!11369 (toList!5649 lt!1857448) lambda!208956)))

(declare-fun lt!1857707 () Unit!125277)

(assert (=> b!4696336 (= lt!1857707 lt!1857710)))

(assert (=> b!4696336 call!328274))

(declare-fun lt!1857718 () Unit!125277)

(declare-fun Unit!125301 () Unit!125277)

(assert (=> b!4696336 (= lt!1857718 Unit!125301)))

(declare-fun res!1981969 () Bool)

(assert (=> b!4696336 (= res!1981969 (forall!11369 (Cons!52481 lt!1857460 lt!1857444) lambda!208956))))

(declare-fun e!2929687 () Bool)

(assert (=> b!4696336 (=> (not res!1981969) (not e!2929687))))

(assert (=> b!4696336 e!2929687))

(declare-fun lt!1857720 () Unit!125277)

(declare-fun Unit!125302 () Unit!125277)

(assert (=> b!4696336 (= lt!1857720 Unit!125302)))

(declare-fun e!2929688 () Bool)

(assert (=> d!1493012 e!2929688))

(declare-fun res!1981968 () Bool)

(assert (=> d!1493012 (=> (not res!1981968) (not e!2929688))))

(assert (=> d!1493012 (= res!1981968 (forall!11369 (Cons!52481 lt!1857460 lt!1857444) lambda!208957))))

(assert (=> d!1493012 (= lt!1857708 e!2929686)))

(assert (=> d!1493012 (= c!802840 ((_ is Nil!52481) (Cons!52481 lt!1857460 lt!1857444)))))

(assert (=> d!1493012 (noDuplicateKeys!1880 (Cons!52481 lt!1857460 lt!1857444))))

(assert (=> d!1493012 (= (addToMapMapFromBucket!1312 (Cons!52481 lt!1857460 lt!1857444) lt!1857448) lt!1857708)))

(declare-fun b!4696337 () Bool)

(assert (=> b!4696337 (= e!2929687 (forall!11369 (toList!5649 lt!1857448) lambda!208956))))

(declare-fun bm!328269 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!718 (ListMap!5013) Unit!125277)

(assert (=> bm!328269 (= call!328275 (lemmaContainsAllItsOwnKeys!718 lt!1857448))))

(declare-fun b!4696338 () Bool)

(declare-fun invariantList!1430 (List!52605) Bool)

(assert (=> b!4696338 (= e!2929688 (invariantList!1430 (toList!5649 lt!1857708)))))

(declare-fun b!4696339 () Bool)

(declare-fun res!1981967 () Bool)

(assert (=> b!4696339 (=> (not res!1981967) (not e!2929688))))

(assert (=> b!4696339 (= res!1981967 (forall!11369 (toList!5649 lt!1857448) lambda!208957))))

(declare-fun bm!328270 () Bool)

(assert (=> bm!328270 (= call!328273 (forall!11369 (ite c!802840 (toList!5649 lt!1857448) (toList!5649 lt!1857722)) (ite c!802840 lambda!208954 lambda!208956)))))

(assert (= (and d!1493012 c!802840) b!4696335))

(assert (= (and d!1493012 (not c!802840)) b!4696336))

(assert (= (and b!4696336 res!1981969) b!4696337))

(assert (= (or b!4696335 b!4696336) bm!328269))

(assert (= (or b!4696335 b!4696336) bm!328270))

(assert (= (or b!4696335 b!4696336) bm!328268))

(assert (= (and d!1493012 res!1981968) b!4696339))

(assert (= (and b!4696339 res!1981967) b!4696338))

(declare-fun m!5605189 () Bool)

(assert (=> b!4696336 m!5605189))

(declare-fun m!5605191 () Bool)

(assert (=> b!4696336 m!5605191))

(declare-fun m!5605193 () Bool)

(assert (=> b!4696336 m!5605193))

(declare-fun m!5605195 () Bool)

(assert (=> b!4696336 m!5605195))

(declare-fun m!5605197 () Bool)

(assert (=> b!4696336 m!5605197))

(declare-fun m!5605199 () Bool)

(assert (=> b!4696336 m!5605199))

(declare-fun m!5605201 () Bool)

(assert (=> b!4696336 m!5605201))

(declare-fun m!5605203 () Bool)

(assert (=> b!4696336 m!5605203))

(declare-fun m!5605205 () Bool)

(assert (=> b!4696336 m!5605205))

(declare-fun m!5605207 () Bool)

(assert (=> b!4696336 m!5605207))

(assert (=> b!4696336 m!5605193))

(declare-fun m!5605209 () Bool)

(assert (=> b!4696336 m!5605209))

(assert (=> b!4696336 m!5605197))

(declare-fun m!5605211 () Bool)

(assert (=> b!4696338 m!5605211))

(declare-fun m!5605213 () Bool)

(assert (=> bm!328270 m!5605213))

(declare-fun m!5605215 () Bool)

(assert (=> b!4696339 m!5605215))

(declare-fun m!5605217 () Bool)

(assert (=> bm!328268 m!5605217))

(declare-fun m!5605219 () Bool)

(assert (=> d!1493012 m!5605219))

(declare-fun m!5605221 () Bool)

(assert (=> d!1493012 m!5605221))

(assert (=> b!4696337 m!5605207))

(declare-fun m!5605223 () Bool)

(assert (=> bm!328269 m!5605223))

(assert (=> b!4696109 d!1493012))

(declare-fun d!1493042 () Bool)

(assert (=> d!1493042 (eq!1039 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857441 lt!1857443) lt!1857448) (+!2164 (addToMapMapFromBucket!1312 lt!1857443 lt!1857448) lt!1857441))))

(declare-fun lt!1857778 () Unit!125277)

(declare-fun choose!32749 (tuple2!53914 List!52605 ListMap!5013) Unit!125277)

(assert (=> d!1493042 (= lt!1857778 (choose!32749 lt!1857441 lt!1857443 lt!1857448))))

(assert (=> d!1493042 (noDuplicateKeys!1880 lt!1857443)))

(assert (=> d!1493042 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!288 lt!1857441 lt!1857443 lt!1857448) lt!1857778)))

(declare-fun bs!1091314 () Bool)

(assert (= bs!1091314 d!1493042))

(declare-fun m!5605295 () Bool)

(assert (=> bs!1091314 m!5605295))

(assert (=> bs!1091314 m!5604781))

(assert (=> bs!1091314 m!5604783))

(assert (=> bs!1091314 m!5604785))

(declare-fun m!5605297 () Bool)

(assert (=> bs!1091314 m!5605297))

(assert (=> bs!1091314 m!5604795))

(assert (=> bs!1091314 m!5604781))

(assert (=> bs!1091314 m!5604795))

(assert (=> bs!1091314 m!5604783))

(assert (=> b!4696109 d!1493042))

(declare-fun d!1493060 () Bool)

(declare-fun content!9221 (List!52605) (InoxSet tuple2!53914))

(assert (=> d!1493060 (= (eq!1039 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857441 lt!1857443) lt!1857448) (+!2164 (addToMapMapFromBucket!1312 lt!1857443 lt!1857448) lt!1857441)) (= (content!9221 (toList!5649 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857441 lt!1857443) lt!1857448))) (content!9221 (toList!5649 (+!2164 (addToMapMapFromBucket!1312 lt!1857443 lt!1857448) lt!1857441)))))))

(declare-fun bs!1091324 () Bool)

(assert (= bs!1091324 d!1493060))

(declare-fun m!5605299 () Bool)

(assert (=> bs!1091324 m!5605299))

(declare-fun m!5605301 () Bool)

(assert (=> bs!1091324 m!5605301))

(assert (=> b!4696109 d!1493060))

(declare-fun bs!1091343 () Bool)

(declare-fun d!1493062 () Bool)

(assert (= bs!1091343 (and d!1493062 start!475728)))

(declare-fun lambda!208969 () Int)

(assert (=> bs!1091343 (= lambda!208969 lambda!208857)))

(declare-fun bs!1091344 () Bool)

(assert (= bs!1091344 (and d!1493062 d!1492964)))

(assert (=> bs!1091344 (= lambda!208969 lambda!208866)))

(declare-fun bs!1091345 () Bool)

(assert (= bs!1091345 (and d!1493062 d!1492982)))

(assert (=> bs!1091345 (= lambda!208969 lambda!208883)))

(assert (=> d!1493062 (contains!15726 (extractMap!1906 (toList!5650 lt!1857447)) key!4653)))

(declare-fun lt!1857782 () Unit!125277)

(declare-fun choose!32751 (ListLongMap!4179 K!13850 Hashable!6249) Unit!125277)

(assert (=> d!1493062 (= lt!1857782 (choose!32751 lt!1857447 key!4653 hashF!1323))))

(assert (=> d!1493062 (forall!11367 (toList!5650 lt!1857447) lambda!208969)))

(assert (=> d!1493062 (= (lemmaListContainsThenExtractedMapContains!472 lt!1857447 key!4653 hashF!1323) lt!1857782)))

(declare-fun bs!1091346 () Bool)

(assert (= bs!1091346 d!1493062))

(declare-fun m!5605339 () Bool)

(assert (=> bs!1091346 m!5605339))

(assert (=> bs!1091346 m!5605339))

(declare-fun m!5605341 () Bool)

(assert (=> bs!1091346 m!5605341))

(declare-fun m!5605343 () Bool)

(assert (=> bs!1091346 m!5605343))

(declare-fun m!5605345 () Bool)

(assert (=> bs!1091346 m!5605345))

(assert (=> b!4696109 d!1493062))

(declare-fun d!1493068 () Bool)

(assert (=> d!1493068 (= (eq!1039 lt!1857446 (+!2164 lt!1857453 (h!58746 oldBucket!34))) (= (content!9221 (toList!5649 lt!1857446)) (content!9221 (toList!5649 (+!2164 lt!1857453 (h!58746 oldBucket!34))))))))

(declare-fun bs!1091347 () Bool)

(assert (= bs!1091347 d!1493068))

(declare-fun m!5605347 () Bool)

(assert (=> bs!1091347 m!5605347))

(declare-fun m!5605349 () Bool)

(assert (=> bs!1091347 m!5605349))

(assert (=> b!4696109 d!1493068))

(declare-fun bs!1091348 () Bool)

(declare-fun b!4696358 () Bool)

(assert (= bs!1091348 (and b!4696358 d!1493012)))

(declare-fun lambda!208970 () Int)

(assert (=> bs!1091348 (= (= lt!1857448 lt!1857708) (= lambda!208970 lambda!208957))))

(declare-fun bs!1091349 () Bool)

(assert (= bs!1091349 (and b!4696358 b!4696336)))

(assert (=> bs!1091349 (= (= lt!1857448 lt!1857704) (= lambda!208970 lambda!208956))))

(declare-fun bs!1091350 () Bool)

(assert (= bs!1091350 (and b!4696358 d!1492952)))

(assert (=> bs!1091350 (not (= lambda!208970 lambda!208860))))

(declare-fun bs!1091351 () Bool)

(assert (= bs!1091351 (and b!4696358 b!4696335)))

(assert (=> bs!1091351 (= lambda!208970 lambda!208954)))

(assert (=> bs!1091349 (= lambda!208970 lambda!208955)))

(assert (=> b!4696358 true))

(declare-fun bs!1091352 () Bool)

(declare-fun b!4696359 () Bool)

(assert (= bs!1091352 (and b!4696359 d!1493012)))

(declare-fun lambda!208971 () Int)

(assert (=> bs!1091352 (= (= lt!1857448 lt!1857708) (= lambda!208971 lambda!208957))))

(declare-fun bs!1091353 () Bool)

(assert (= bs!1091353 (and b!4696359 b!4696336)))

(assert (=> bs!1091353 (= (= lt!1857448 lt!1857704) (= lambda!208971 lambda!208956))))

(declare-fun bs!1091354 () Bool)

(assert (= bs!1091354 (and b!4696359 b!4696358)))

(assert (=> bs!1091354 (= lambda!208971 lambda!208970)))

(declare-fun bs!1091355 () Bool)

(assert (= bs!1091355 (and b!4696359 d!1492952)))

(assert (=> bs!1091355 (not (= lambda!208971 lambda!208860))))

(declare-fun bs!1091356 () Bool)

(assert (= bs!1091356 (and b!4696359 b!4696335)))

(assert (=> bs!1091356 (= lambda!208971 lambda!208954)))

(assert (=> bs!1091353 (= lambda!208971 lambda!208955)))

(assert (=> b!4696359 true))

(declare-fun lambda!208972 () Int)

(declare-fun lt!1857785 () ListMap!5013)

(assert (=> bs!1091352 (= (= lt!1857785 lt!1857708) (= lambda!208972 lambda!208957))))

(assert (=> b!4696359 (= (= lt!1857785 lt!1857448) (= lambda!208972 lambda!208971))))

(assert (=> bs!1091353 (= (= lt!1857785 lt!1857704) (= lambda!208972 lambda!208956))))

(assert (=> bs!1091354 (= (= lt!1857785 lt!1857448) (= lambda!208972 lambda!208970))))

(assert (=> bs!1091355 (not (= lambda!208972 lambda!208860))))

(assert (=> bs!1091356 (= (= lt!1857785 lt!1857448) (= lambda!208972 lambda!208954))))

(assert (=> bs!1091353 (= (= lt!1857785 lt!1857448) (= lambda!208972 lambda!208955))))

(assert (=> b!4696359 true))

(declare-fun bs!1091357 () Bool)

(declare-fun d!1493070 () Bool)

(assert (= bs!1091357 (and d!1493070 b!4696359)))

(declare-fun lt!1857789 () ListMap!5013)

(declare-fun lambda!208975 () Int)

(assert (=> bs!1091357 (= (= lt!1857789 lt!1857785) (= lambda!208975 lambda!208972))))

(declare-fun bs!1091358 () Bool)

(assert (= bs!1091358 (and d!1493070 d!1493012)))

(assert (=> bs!1091358 (= (= lt!1857789 lt!1857708) (= lambda!208975 lambda!208957))))

(assert (=> bs!1091357 (= (= lt!1857789 lt!1857448) (= lambda!208975 lambda!208971))))

(declare-fun bs!1091359 () Bool)

(assert (= bs!1091359 (and d!1493070 b!4696336)))

(assert (=> bs!1091359 (= (= lt!1857789 lt!1857704) (= lambda!208975 lambda!208956))))

(declare-fun bs!1091360 () Bool)

(assert (= bs!1091360 (and d!1493070 b!4696358)))

(assert (=> bs!1091360 (= (= lt!1857789 lt!1857448) (= lambda!208975 lambda!208970))))

(declare-fun bs!1091361 () Bool)

(assert (= bs!1091361 (and d!1493070 d!1492952)))

(assert (=> bs!1091361 (not (= lambda!208975 lambda!208860))))

(declare-fun bs!1091362 () Bool)

(assert (= bs!1091362 (and d!1493070 b!4696335)))

(assert (=> bs!1091362 (= (= lt!1857789 lt!1857448) (= lambda!208975 lambda!208954))))

(assert (=> bs!1091359 (= (= lt!1857789 lt!1857448) (= lambda!208975 lambda!208955))))

(assert (=> d!1493070 true))

(declare-fun call!328283 () Bool)

(declare-fun c!802844 () Bool)

(declare-fun bm!328277 () Bool)

(assert (=> bm!328277 (= call!328283 (forall!11369 (toList!5649 lt!1857448) (ite c!802844 lambda!208970 lambda!208972)))))

(declare-fun e!2929698 () ListMap!5013)

(assert (=> b!4696358 (= e!2929698 lt!1857448)))

(declare-fun lt!1857795 () Unit!125277)

(declare-fun call!328284 () Unit!125277)

(assert (=> b!4696358 (= lt!1857795 call!328284)))

(declare-fun call!328282 () Bool)

(assert (=> b!4696358 call!328282))

(declare-fun lt!1857790 () Unit!125277)

(assert (=> b!4696358 (= lt!1857790 lt!1857795)))

(assert (=> b!4696358 call!328283))

(declare-fun lt!1857786 () Unit!125277)

(declare-fun Unit!125307 () Unit!125277)

(assert (=> b!4696358 (= lt!1857786 Unit!125307)))

(assert (=> b!4696359 (= e!2929698 lt!1857785)))

(declare-fun lt!1857803 () ListMap!5013)

(assert (=> b!4696359 (= lt!1857803 (+!2164 lt!1857448 (h!58746 (Cons!52481 lt!1857441 lt!1857443))))))

(assert (=> b!4696359 (= lt!1857785 (addToMapMapFromBucket!1312 (t!359801 (Cons!52481 lt!1857441 lt!1857443)) (+!2164 lt!1857448 (h!58746 (Cons!52481 lt!1857441 lt!1857443)))))))

(declare-fun lt!1857783 () Unit!125277)

(assert (=> b!4696359 (= lt!1857783 call!328284)))

(assert (=> b!4696359 (forall!11369 (toList!5649 lt!1857448) lambda!208971)))

(declare-fun lt!1857794 () Unit!125277)

(assert (=> b!4696359 (= lt!1857794 lt!1857783)))

(assert (=> b!4696359 (forall!11369 (toList!5649 lt!1857803) lambda!208972)))

(declare-fun lt!1857787 () Unit!125277)

(declare-fun Unit!125311 () Unit!125277)

(assert (=> b!4696359 (= lt!1857787 Unit!125311)))

(assert (=> b!4696359 (forall!11369 (t!359801 (Cons!52481 lt!1857441 lt!1857443)) lambda!208972)))

(declare-fun lt!1857802 () Unit!125277)

(declare-fun Unit!125313 () Unit!125277)

(assert (=> b!4696359 (= lt!1857802 Unit!125313)))

(declare-fun lt!1857797 () Unit!125277)

(declare-fun Unit!125315 () Unit!125277)

(assert (=> b!4696359 (= lt!1857797 Unit!125315)))

(declare-fun lt!1857792 () Unit!125277)

(assert (=> b!4696359 (= lt!1857792 (forallContained!3476 (toList!5649 lt!1857803) lambda!208972 (h!58746 (Cons!52481 lt!1857441 lt!1857443))))))

(assert (=> b!4696359 (contains!15726 lt!1857803 (_1!30251 (h!58746 (Cons!52481 lt!1857441 lt!1857443))))))

(declare-fun lt!1857796 () Unit!125277)

(declare-fun Unit!125316 () Unit!125277)

(assert (=> b!4696359 (= lt!1857796 Unit!125316)))

(assert (=> b!4696359 (contains!15726 lt!1857785 (_1!30251 (h!58746 (Cons!52481 lt!1857441 lt!1857443))))))

(declare-fun lt!1857793 () Unit!125277)

(declare-fun Unit!125318 () Unit!125277)

(assert (=> b!4696359 (= lt!1857793 Unit!125318)))

(assert (=> b!4696359 (forall!11369 (Cons!52481 lt!1857441 lt!1857443) lambda!208972)))

(declare-fun lt!1857798 () Unit!125277)

(declare-fun Unit!125319 () Unit!125277)

(assert (=> b!4696359 (= lt!1857798 Unit!125319)))

(assert (=> b!4696359 call!328282))

(declare-fun lt!1857800 () Unit!125277)

(declare-fun Unit!125321 () Unit!125277)

(assert (=> b!4696359 (= lt!1857800 Unit!125321)))

(declare-fun lt!1857784 () Unit!125277)

(declare-fun Unit!125322 () Unit!125277)

(assert (=> b!4696359 (= lt!1857784 Unit!125322)))

(declare-fun lt!1857791 () Unit!125277)

(assert (=> b!4696359 (= lt!1857791 (addForallContainsKeyThenBeforeAdding!717 lt!1857448 lt!1857785 (_1!30251 (h!58746 (Cons!52481 lt!1857441 lt!1857443))) (_2!30251 (h!58746 (Cons!52481 lt!1857441 lt!1857443)))))))

(assert (=> b!4696359 (forall!11369 (toList!5649 lt!1857448) lambda!208972)))

(declare-fun lt!1857788 () Unit!125277)

(assert (=> b!4696359 (= lt!1857788 lt!1857791)))

(assert (=> b!4696359 call!328283))

(declare-fun lt!1857799 () Unit!125277)

(declare-fun Unit!125323 () Unit!125277)

(assert (=> b!4696359 (= lt!1857799 Unit!125323)))

(declare-fun res!1981982 () Bool)

(assert (=> b!4696359 (= res!1981982 (forall!11369 (Cons!52481 lt!1857441 lt!1857443) lambda!208972))))

(declare-fun e!2929699 () Bool)

(assert (=> b!4696359 (=> (not res!1981982) (not e!2929699))))

(assert (=> b!4696359 e!2929699))

(declare-fun lt!1857801 () Unit!125277)

(declare-fun Unit!125324 () Unit!125277)

(assert (=> b!4696359 (= lt!1857801 Unit!125324)))

(declare-fun e!2929700 () Bool)

(assert (=> d!1493070 e!2929700))

(declare-fun res!1981981 () Bool)

(assert (=> d!1493070 (=> (not res!1981981) (not e!2929700))))

(assert (=> d!1493070 (= res!1981981 (forall!11369 (Cons!52481 lt!1857441 lt!1857443) lambda!208975))))

(assert (=> d!1493070 (= lt!1857789 e!2929698)))

(assert (=> d!1493070 (= c!802844 ((_ is Nil!52481) (Cons!52481 lt!1857441 lt!1857443)))))

(assert (=> d!1493070 (noDuplicateKeys!1880 (Cons!52481 lt!1857441 lt!1857443))))

(assert (=> d!1493070 (= (addToMapMapFromBucket!1312 (Cons!52481 lt!1857441 lt!1857443) lt!1857448) lt!1857789)))

(declare-fun b!4696360 () Bool)

(assert (=> b!4696360 (= e!2929699 (forall!11369 (toList!5649 lt!1857448) lambda!208972))))

(declare-fun bm!328278 () Bool)

(assert (=> bm!328278 (= call!328284 (lemmaContainsAllItsOwnKeys!718 lt!1857448))))

(declare-fun b!4696361 () Bool)

(assert (=> b!4696361 (= e!2929700 (invariantList!1430 (toList!5649 lt!1857789)))))

(declare-fun b!4696362 () Bool)

(declare-fun res!1981980 () Bool)

(assert (=> b!4696362 (=> (not res!1981980) (not e!2929700))))

(assert (=> b!4696362 (= res!1981980 (forall!11369 (toList!5649 lt!1857448) lambda!208975))))

(declare-fun bm!328279 () Bool)

(assert (=> bm!328279 (= call!328282 (forall!11369 (ite c!802844 (toList!5649 lt!1857448) (toList!5649 lt!1857803)) (ite c!802844 lambda!208970 lambda!208972)))))

(assert (= (and d!1493070 c!802844) b!4696358))

(assert (= (and d!1493070 (not c!802844)) b!4696359))

(assert (= (and b!4696359 res!1981982) b!4696360))

(assert (= (or b!4696358 b!4696359) bm!328278))

(assert (= (or b!4696358 b!4696359) bm!328279))

(assert (= (or b!4696358 b!4696359) bm!328277))

(assert (= (and d!1493070 res!1981981) b!4696362))

(assert (= (and b!4696362 res!1981980) b!4696361))

(declare-fun m!5605351 () Bool)

(assert (=> b!4696359 m!5605351))

(declare-fun m!5605353 () Bool)

(assert (=> b!4696359 m!5605353))

(declare-fun m!5605355 () Bool)

(assert (=> b!4696359 m!5605355))

(declare-fun m!5605357 () Bool)

(assert (=> b!4696359 m!5605357))

(declare-fun m!5605359 () Bool)

(assert (=> b!4696359 m!5605359))

(declare-fun m!5605361 () Bool)

(assert (=> b!4696359 m!5605361))

(declare-fun m!5605365 () Bool)

(assert (=> b!4696359 m!5605365))

(declare-fun m!5605367 () Bool)

(assert (=> b!4696359 m!5605367))

(declare-fun m!5605371 () Bool)

(assert (=> b!4696359 m!5605371))

(declare-fun m!5605375 () Bool)

(assert (=> b!4696359 m!5605375))

(assert (=> b!4696359 m!5605355))

(declare-fun m!5605379 () Bool)

(assert (=> b!4696359 m!5605379))

(assert (=> b!4696359 m!5605359))

(declare-fun m!5605381 () Bool)

(assert (=> b!4696361 m!5605381))

(declare-fun m!5605383 () Bool)

(assert (=> bm!328279 m!5605383))

(declare-fun m!5605385 () Bool)

(assert (=> b!4696362 m!5605385))

(declare-fun m!5605387 () Bool)

(assert (=> bm!328277 m!5605387))

(declare-fun m!5605389 () Bool)

(assert (=> d!1493070 m!5605389))

(declare-fun m!5605391 () Bool)

(assert (=> d!1493070 m!5605391))

(assert (=> b!4696360 m!5605375))

(assert (=> bm!328278 m!5605223))

(assert (=> b!4696109 d!1493070))

(declare-fun d!1493074 () Bool)

(declare-fun e!2929718 () Bool)

(assert (=> d!1493074 e!2929718))

(declare-fun res!1981992 () Bool)

(assert (=> d!1493074 (=> res!1981992 e!2929718)))

(declare-fun e!2929720 () Bool)

(assert (=> d!1493074 (= res!1981992 e!2929720)))

(declare-fun res!1981993 () Bool)

(assert (=> d!1493074 (=> (not res!1981993) (not e!2929720))))

(declare-fun lt!1857848 () Bool)

(assert (=> d!1493074 (= res!1981993 (not lt!1857848))))

(declare-fun lt!1857846 () Bool)

(assert (=> d!1493074 (= lt!1857848 lt!1857846)))

(declare-fun lt!1857845 () Unit!125277)

(declare-fun e!2929717 () Unit!125277)

(assert (=> d!1493074 (= lt!1857845 e!2929717)))

(declare-fun c!802854 () Bool)

(assert (=> d!1493074 (= c!802854 lt!1857846)))

(declare-fun containsKey!3122 (List!52605 K!13850) Bool)

(assert (=> d!1493074 (= lt!1857846 (containsKey!3122 (toList!5649 lt!1857442) key!4653))))

(assert (=> d!1493074 (= (contains!15726 lt!1857442 key!4653) lt!1857848)))

(declare-fun b!4696386 () Bool)

(declare-fun e!2929716 () Bool)

(declare-datatypes ((List!52608 0))(
  ( (Nil!52484) (Cons!52484 (h!58751 K!13850) (t!359806 List!52608)) )
))
(declare-fun contains!15731 (List!52608 K!13850) Bool)

(declare-fun keys!18759 (ListMap!5013) List!52608)

(assert (=> b!4696386 (= e!2929716 (contains!15731 (keys!18759 lt!1857442) key!4653))))

(declare-fun bm!328285 () Bool)

(declare-fun call!328290 () Bool)

(declare-fun e!2929721 () List!52608)

(assert (=> bm!328285 (= call!328290 (contains!15731 e!2929721 key!4653))))

(declare-fun c!802852 () Bool)

(assert (=> bm!328285 (= c!802852 c!802854)))

(declare-fun b!4696387 () Bool)

(declare-fun getKeysList!869 (List!52605) List!52608)

(assert (=> b!4696387 (= e!2929721 (getKeysList!869 (toList!5649 lt!1857442)))))

(declare-fun b!4696388 () Bool)

(assert (=> b!4696388 (= e!2929721 (keys!18759 lt!1857442))))

(declare-fun b!4696389 () Bool)

(assert (=> b!4696389 false))

(declare-fun lt!1857847 () Unit!125277)

(declare-fun lt!1857852 () Unit!125277)

(assert (=> b!4696389 (= lt!1857847 lt!1857852)))

(assert (=> b!4696389 (containsKey!3122 (toList!5649 lt!1857442) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!868 (List!52605 K!13850) Unit!125277)

(assert (=> b!4696389 (= lt!1857852 (lemmaInGetKeysListThenContainsKey!868 (toList!5649 lt!1857442) key!4653))))

(declare-fun e!2929719 () Unit!125277)

(declare-fun Unit!125325 () Unit!125277)

(assert (=> b!4696389 (= e!2929719 Unit!125325)))

(declare-fun b!4696390 () Bool)

(assert (=> b!4696390 (= e!2929718 e!2929716)))

(declare-fun res!1981994 () Bool)

(assert (=> b!4696390 (=> (not res!1981994) (not e!2929716))))

(declare-datatypes ((Option!12147 0))(
  ( (None!12146) (Some!12146 (v!46605 V!14096)) )
))
(declare-fun isDefined!9401 (Option!12147) Bool)

(declare-fun getValueByKey!1821 (List!52605 K!13850) Option!12147)

(assert (=> b!4696390 (= res!1981994 (isDefined!9401 (getValueByKey!1821 (toList!5649 lt!1857442) key!4653)))))

(declare-fun b!4696391 () Bool)

(declare-fun lt!1857851 () Unit!125277)

(assert (=> b!4696391 (= e!2929717 lt!1857851)))

(declare-fun lt!1857849 () Unit!125277)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1712 (List!52605 K!13850) Unit!125277)

(assert (=> b!4696391 (= lt!1857849 (lemmaContainsKeyImpliesGetValueByKeyDefined!1712 (toList!5649 lt!1857442) key!4653))))

(assert (=> b!4696391 (isDefined!9401 (getValueByKey!1821 (toList!5649 lt!1857442) key!4653))))

(declare-fun lt!1857850 () Unit!125277)

(assert (=> b!4696391 (= lt!1857850 lt!1857849)))

(declare-fun lemmaInListThenGetKeysListContains!864 (List!52605 K!13850) Unit!125277)

(assert (=> b!4696391 (= lt!1857851 (lemmaInListThenGetKeysListContains!864 (toList!5649 lt!1857442) key!4653))))

(assert (=> b!4696391 call!328290))

(declare-fun b!4696392 () Bool)

(assert (=> b!4696392 (= e!2929720 (not (contains!15731 (keys!18759 lt!1857442) key!4653)))))

(declare-fun b!4696393 () Bool)

(declare-fun Unit!125326 () Unit!125277)

(assert (=> b!4696393 (= e!2929719 Unit!125326)))

(declare-fun b!4696394 () Bool)

(assert (=> b!4696394 (= e!2929717 e!2929719)))

(declare-fun c!802853 () Bool)

(assert (=> b!4696394 (= c!802853 call!328290)))

(assert (= (and d!1493074 c!802854) b!4696391))

(assert (= (and d!1493074 (not c!802854)) b!4696394))

(assert (= (and b!4696394 c!802853) b!4696389))

(assert (= (and b!4696394 (not c!802853)) b!4696393))

(assert (= (or b!4696391 b!4696394) bm!328285))

(assert (= (and bm!328285 c!802852) b!4696387))

(assert (= (and bm!328285 (not c!802852)) b!4696388))

(assert (= (and d!1493074 res!1981993) b!4696392))

(assert (= (and d!1493074 (not res!1981992)) b!4696390))

(assert (= (and b!4696390 res!1981994) b!4696386))

(declare-fun m!5605425 () Bool)

(assert (=> b!4696387 m!5605425))

(declare-fun m!5605427 () Bool)

(assert (=> b!4696386 m!5605427))

(assert (=> b!4696386 m!5605427))

(declare-fun m!5605429 () Bool)

(assert (=> b!4696386 m!5605429))

(declare-fun m!5605431 () Bool)

(assert (=> b!4696390 m!5605431))

(assert (=> b!4696390 m!5605431))

(declare-fun m!5605433 () Bool)

(assert (=> b!4696390 m!5605433))

(declare-fun m!5605435 () Bool)

(assert (=> d!1493074 m!5605435))

(assert (=> b!4696392 m!5605427))

(assert (=> b!4696392 m!5605427))

(assert (=> b!4696392 m!5605429))

(declare-fun m!5605437 () Bool)

(assert (=> b!4696391 m!5605437))

(assert (=> b!4696391 m!5605431))

(assert (=> b!4696391 m!5605431))

(assert (=> b!4696391 m!5605433))

(declare-fun m!5605439 () Bool)

(assert (=> b!4696391 m!5605439))

(declare-fun m!5605441 () Bool)

(assert (=> bm!328285 m!5605441))

(assert (=> b!4696389 m!5605435))

(declare-fun m!5605443 () Bool)

(assert (=> b!4696389 m!5605443))

(assert (=> b!4696388 m!5605427))

(assert (=> b!4696109 d!1493074))

(declare-fun d!1493082 () Bool)

(assert (=> d!1493082 (= (head!10023 newBucket!218) (h!58746 newBucket!218))))

(assert (=> b!4696109 d!1493082))

(declare-fun d!1493084 () Bool)

(assert (=> d!1493084 (= (eq!1039 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857460 lt!1857444) lt!1857448) (+!2164 (addToMapMapFromBucket!1312 lt!1857444 lt!1857448) lt!1857460)) (= (content!9221 (toList!5649 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857460 lt!1857444) lt!1857448))) (content!9221 (toList!5649 (+!2164 (addToMapMapFromBucket!1312 lt!1857444 lt!1857448) lt!1857460)))))))

(declare-fun bs!1091408 () Bool)

(assert (= bs!1091408 d!1493084))

(declare-fun m!5605445 () Bool)

(assert (=> bs!1091408 m!5605445))

(declare-fun m!5605447 () Bool)

(assert (=> bs!1091408 m!5605447))

(assert (=> b!4696109 d!1493084))

(declare-fun bs!1091409 () Bool)

(declare-fun b!4696395 () Bool)

(assert (= bs!1091409 (and b!4696395 b!4696359)))

(declare-fun lambda!208981 () Int)

(assert (=> bs!1091409 (= (= lt!1857448 lt!1857785) (= lambda!208981 lambda!208972))))

(declare-fun bs!1091410 () Bool)

(assert (= bs!1091410 (and b!4696395 d!1493012)))

(assert (=> bs!1091410 (= (= lt!1857448 lt!1857708) (= lambda!208981 lambda!208957))))

(assert (=> bs!1091409 (= lambda!208981 lambda!208971)))

(declare-fun bs!1091411 () Bool)

(assert (= bs!1091411 (and b!4696395 b!4696336)))

(assert (=> bs!1091411 (= (= lt!1857448 lt!1857704) (= lambda!208981 lambda!208956))))

(declare-fun bs!1091412 () Bool)

(assert (= bs!1091412 (and b!4696395 b!4696358)))

(assert (=> bs!1091412 (= lambda!208981 lambda!208970)))

(declare-fun bs!1091413 () Bool)

(assert (= bs!1091413 (and b!4696395 d!1492952)))

(assert (=> bs!1091413 (not (= lambda!208981 lambda!208860))))

(declare-fun bs!1091414 () Bool)

(assert (= bs!1091414 (and b!4696395 d!1493070)))

(assert (=> bs!1091414 (= (= lt!1857448 lt!1857789) (= lambda!208981 lambda!208975))))

(declare-fun bs!1091415 () Bool)

(assert (= bs!1091415 (and b!4696395 b!4696335)))

(assert (=> bs!1091415 (= lambda!208981 lambda!208954)))

(assert (=> bs!1091411 (= lambda!208981 lambda!208955)))

(assert (=> b!4696395 true))

(declare-fun bs!1091416 () Bool)

(declare-fun b!4696396 () Bool)

(assert (= bs!1091416 (and b!4696396 b!4696359)))

(declare-fun lambda!208982 () Int)

(assert (=> bs!1091416 (= (= lt!1857448 lt!1857785) (= lambda!208982 lambda!208972))))

(declare-fun bs!1091417 () Bool)

(assert (= bs!1091417 (and b!4696396 b!4696395)))

(assert (=> bs!1091417 (= lambda!208982 lambda!208981)))

(declare-fun bs!1091418 () Bool)

(assert (= bs!1091418 (and b!4696396 d!1493012)))

(assert (=> bs!1091418 (= (= lt!1857448 lt!1857708) (= lambda!208982 lambda!208957))))

(assert (=> bs!1091416 (= lambda!208982 lambda!208971)))

(declare-fun bs!1091419 () Bool)

(assert (= bs!1091419 (and b!4696396 b!4696336)))

(assert (=> bs!1091419 (= (= lt!1857448 lt!1857704) (= lambda!208982 lambda!208956))))

(declare-fun bs!1091420 () Bool)

(assert (= bs!1091420 (and b!4696396 b!4696358)))

(assert (=> bs!1091420 (= lambda!208982 lambda!208970)))

(declare-fun bs!1091421 () Bool)

(assert (= bs!1091421 (and b!4696396 d!1492952)))

(assert (=> bs!1091421 (not (= lambda!208982 lambda!208860))))

(declare-fun bs!1091422 () Bool)

(assert (= bs!1091422 (and b!4696396 d!1493070)))

(assert (=> bs!1091422 (= (= lt!1857448 lt!1857789) (= lambda!208982 lambda!208975))))

(declare-fun bs!1091423 () Bool)

(assert (= bs!1091423 (and b!4696396 b!4696335)))

(assert (=> bs!1091423 (= lambda!208982 lambda!208954)))

(assert (=> bs!1091419 (= lambda!208982 lambda!208955)))

(assert (=> b!4696396 true))

(declare-fun lambda!208983 () Int)

(declare-fun lt!1857855 () ListMap!5013)

(assert (=> bs!1091416 (= (= lt!1857855 lt!1857785) (= lambda!208983 lambda!208972))))

(assert (=> bs!1091417 (= (= lt!1857855 lt!1857448) (= lambda!208983 lambda!208981))))

(assert (=> bs!1091418 (= (= lt!1857855 lt!1857708) (= lambda!208983 lambda!208957))))

(assert (=> bs!1091416 (= (= lt!1857855 lt!1857448) (= lambda!208983 lambda!208971))))

(assert (=> bs!1091420 (= (= lt!1857855 lt!1857448) (= lambda!208983 lambda!208970))))

(assert (=> bs!1091421 (not (= lambda!208983 lambda!208860))))

(assert (=> bs!1091422 (= (= lt!1857855 lt!1857789) (= lambda!208983 lambda!208975))))

(assert (=> bs!1091423 (= (= lt!1857855 lt!1857448) (= lambda!208983 lambda!208954))))

(assert (=> bs!1091419 (= (= lt!1857855 lt!1857448) (= lambda!208983 lambda!208955))))

(assert (=> b!4696396 (= (= lt!1857855 lt!1857448) (= lambda!208983 lambda!208982))))

(assert (=> bs!1091419 (= (= lt!1857855 lt!1857704) (= lambda!208983 lambda!208956))))

(assert (=> b!4696396 true))

(declare-fun bs!1091424 () Bool)

(declare-fun d!1493086 () Bool)

(assert (= bs!1091424 (and d!1493086 b!4696359)))

(declare-fun lambda!208984 () Int)

(declare-fun lt!1857859 () ListMap!5013)

(assert (=> bs!1091424 (= (= lt!1857859 lt!1857785) (= lambda!208984 lambda!208972))))

(declare-fun bs!1091425 () Bool)

(assert (= bs!1091425 (and d!1493086 b!4696395)))

(assert (=> bs!1091425 (= (= lt!1857859 lt!1857448) (= lambda!208984 lambda!208981))))

(declare-fun bs!1091426 () Bool)

(assert (= bs!1091426 (and d!1493086 d!1493012)))

(assert (=> bs!1091426 (= (= lt!1857859 lt!1857708) (= lambda!208984 lambda!208957))))

(assert (=> bs!1091424 (= (= lt!1857859 lt!1857448) (= lambda!208984 lambda!208971))))

(declare-fun bs!1091427 () Bool)

(assert (= bs!1091427 (and d!1493086 d!1492952)))

(assert (=> bs!1091427 (not (= lambda!208984 lambda!208860))))

(declare-fun bs!1091428 () Bool)

(assert (= bs!1091428 (and d!1493086 d!1493070)))

(assert (=> bs!1091428 (= (= lt!1857859 lt!1857789) (= lambda!208984 lambda!208975))))

(declare-fun bs!1091429 () Bool)

(assert (= bs!1091429 (and d!1493086 b!4696335)))

(assert (=> bs!1091429 (= (= lt!1857859 lt!1857448) (= lambda!208984 lambda!208954))))

(declare-fun bs!1091430 () Bool)

(assert (= bs!1091430 (and d!1493086 b!4696336)))

(assert (=> bs!1091430 (= (= lt!1857859 lt!1857448) (= lambda!208984 lambda!208955))))

(declare-fun bs!1091431 () Bool)

(assert (= bs!1091431 (and d!1493086 b!4696396)))

(assert (=> bs!1091431 (= (= lt!1857859 lt!1857448) (= lambda!208984 lambda!208982))))

(assert (=> bs!1091430 (= (= lt!1857859 lt!1857704) (= lambda!208984 lambda!208956))))

(declare-fun bs!1091432 () Bool)

(assert (= bs!1091432 (and d!1493086 b!4696358)))

(assert (=> bs!1091432 (= (= lt!1857859 lt!1857448) (= lambda!208984 lambda!208970))))

(assert (=> bs!1091431 (= (= lt!1857859 lt!1857855) (= lambda!208984 lambda!208983))))

(assert (=> d!1493086 true))

(declare-fun call!328292 () Bool)

(declare-fun c!802855 () Bool)

(declare-fun bm!328286 () Bool)

(assert (=> bm!328286 (= call!328292 (forall!11369 (toList!5649 lt!1857448) (ite c!802855 lambda!208981 lambda!208983)))))

(declare-fun e!2929722 () ListMap!5013)

(assert (=> b!4696395 (= e!2929722 lt!1857448)))

(declare-fun lt!1857865 () Unit!125277)

(declare-fun call!328293 () Unit!125277)

(assert (=> b!4696395 (= lt!1857865 call!328293)))

(declare-fun call!328291 () Bool)

(assert (=> b!4696395 call!328291))

(declare-fun lt!1857860 () Unit!125277)

(assert (=> b!4696395 (= lt!1857860 lt!1857865)))

(assert (=> b!4696395 call!328292))

(declare-fun lt!1857856 () Unit!125277)

(declare-fun Unit!125328 () Unit!125277)

(assert (=> b!4696395 (= lt!1857856 Unit!125328)))

(assert (=> b!4696396 (= e!2929722 lt!1857855)))

(declare-fun lt!1857873 () ListMap!5013)

(assert (=> b!4696396 (= lt!1857873 (+!2164 lt!1857448 (h!58746 lt!1857443)))))

(assert (=> b!4696396 (= lt!1857855 (addToMapMapFromBucket!1312 (t!359801 lt!1857443) (+!2164 lt!1857448 (h!58746 lt!1857443))))))

(declare-fun lt!1857853 () Unit!125277)

(assert (=> b!4696396 (= lt!1857853 call!328293)))

(assert (=> b!4696396 (forall!11369 (toList!5649 lt!1857448) lambda!208982)))

(declare-fun lt!1857864 () Unit!125277)

(assert (=> b!4696396 (= lt!1857864 lt!1857853)))

(assert (=> b!4696396 (forall!11369 (toList!5649 lt!1857873) lambda!208983)))

(declare-fun lt!1857857 () Unit!125277)

(declare-fun Unit!125332 () Unit!125277)

(assert (=> b!4696396 (= lt!1857857 Unit!125332)))

(assert (=> b!4696396 (forall!11369 (t!359801 lt!1857443) lambda!208983)))

(declare-fun lt!1857872 () Unit!125277)

(declare-fun Unit!125334 () Unit!125277)

(assert (=> b!4696396 (= lt!1857872 Unit!125334)))

(declare-fun lt!1857867 () Unit!125277)

(declare-fun Unit!125335 () Unit!125277)

(assert (=> b!4696396 (= lt!1857867 Unit!125335)))

(declare-fun lt!1857862 () Unit!125277)

(assert (=> b!4696396 (= lt!1857862 (forallContained!3476 (toList!5649 lt!1857873) lambda!208983 (h!58746 lt!1857443)))))

(assert (=> b!4696396 (contains!15726 lt!1857873 (_1!30251 (h!58746 lt!1857443)))))

(declare-fun lt!1857866 () Unit!125277)

(declare-fun Unit!125338 () Unit!125277)

(assert (=> b!4696396 (= lt!1857866 Unit!125338)))

(assert (=> b!4696396 (contains!15726 lt!1857855 (_1!30251 (h!58746 lt!1857443)))))

(declare-fun lt!1857863 () Unit!125277)

(declare-fun Unit!125340 () Unit!125277)

(assert (=> b!4696396 (= lt!1857863 Unit!125340)))

(assert (=> b!4696396 (forall!11369 lt!1857443 lambda!208983)))

(declare-fun lt!1857868 () Unit!125277)

(declare-fun Unit!125342 () Unit!125277)

(assert (=> b!4696396 (= lt!1857868 Unit!125342)))

(assert (=> b!4696396 call!328291))

(declare-fun lt!1857870 () Unit!125277)

(declare-fun Unit!125343 () Unit!125277)

(assert (=> b!4696396 (= lt!1857870 Unit!125343)))

(declare-fun lt!1857854 () Unit!125277)

(declare-fun Unit!125344 () Unit!125277)

(assert (=> b!4696396 (= lt!1857854 Unit!125344)))

(declare-fun lt!1857861 () Unit!125277)

(assert (=> b!4696396 (= lt!1857861 (addForallContainsKeyThenBeforeAdding!717 lt!1857448 lt!1857855 (_1!30251 (h!58746 lt!1857443)) (_2!30251 (h!58746 lt!1857443))))))

(assert (=> b!4696396 (forall!11369 (toList!5649 lt!1857448) lambda!208983)))

(declare-fun lt!1857858 () Unit!125277)

(assert (=> b!4696396 (= lt!1857858 lt!1857861)))

(assert (=> b!4696396 call!328292))

(declare-fun lt!1857869 () Unit!125277)

(declare-fun Unit!125347 () Unit!125277)

(assert (=> b!4696396 (= lt!1857869 Unit!125347)))

(declare-fun res!1981997 () Bool)

(assert (=> b!4696396 (= res!1981997 (forall!11369 lt!1857443 lambda!208983))))

(declare-fun e!2929723 () Bool)

(assert (=> b!4696396 (=> (not res!1981997) (not e!2929723))))

(assert (=> b!4696396 e!2929723))

(declare-fun lt!1857871 () Unit!125277)

(declare-fun Unit!125348 () Unit!125277)

(assert (=> b!4696396 (= lt!1857871 Unit!125348)))

(declare-fun e!2929724 () Bool)

(assert (=> d!1493086 e!2929724))

(declare-fun res!1981996 () Bool)

(assert (=> d!1493086 (=> (not res!1981996) (not e!2929724))))

(assert (=> d!1493086 (= res!1981996 (forall!11369 lt!1857443 lambda!208984))))

(assert (=> d!1493086 (= lt!1857859 e!2929722)))

(assert (=> d!1493086 (= c!802855 ((_ is Nil!52481) lt!1857443))))

(assert (=> d!1493086 (noDuplicateKeys!1880 lt!1857443)))

(assert (=> d!1493086 (= (addToMapMapFromBucket!1312 lt!1857443 lt!1857448) lt!1857859)))

(declare-fun b!4696397 () Bool)

(assert (=> b!4696397 (= e!2929723 (forall!11369 (toList!5649 lt!1857448) lambda!208983))))

(declare-fun bm!328287 () Bool)

(assert (=> bm!328287 (= call!328293 (lemmaContainsAllItsOwnKeys!718 lt!1857448))))

(declare-fun b!4696398 () Bool)

(assert (=> b!4696398 (= e!2929724 (invariantList!1430 (toList!5649 lt!1857859)))))

(declare-fun b!4696399 () Bool)

(declare-fun res!1981995 () Bool)

(assert (=> b!4696399 (=> (not res!1981995) (not e!2929724))))

(assert (=> b!4696399 (= res!1981995 (forall!11369 (toList!5649 lt!1857448) lambda!208984))))

(declare-fun bm!328288 () Bool)

(assert (=> bm!328288 (= call!328291 (forall!11369 (ite c!802855 (toList!5649 lt!1857448) (toList!5649 lt!1857873)) (ite c!802855 lambda!208981 lambda!208983)))))

(assert (= (and d!1493086 c!802855) b!4696395))

(assert (= (and d!1493086 (not c!802855)) b!4696396))

(assert (= (and b!4696396 res!1981997) b!4696397))

(assert (= (or b!4696395 b!4696396) bm!328287))

(assert (= (or b!4696395 b!4696396) bm!328288))

(assert (= (or b!4696395 b!4696396) bm!328286))

(assert (= (and d!1493086 res!1981996) b!4696399))

(assert (= (and b!4696399 res!1981995) b!4696398))

(declare-fun m!5605449 () Bool)

(assert (=> b!4696396 m!5605449))

(declare-fun m!5605451 () Bool)

(assert (=> b!4696396 m!5605451))

(declare-fun m!5605453 () Bool)

(assert (=> b!4696396 m!5605453))

(declare-fun m!5605455 () Bool)

(assert (=> b!4696396 m!5605455))

(declare-fun m!5605457 () Bool)

(assert (=> b!4696396 m!5605457))

(declare-fun m!5605459 () Bool)

(assert (=> b!4696396 m!5605459))

(declare-fun m!5605461 () Bool)

(assert (=> b!4696396 m!5605461))

(declare-fun m!5605463 () Bool)

(assert (=> b!4696396 m!5605463))

(declare-fun m!5605465 () Bool)

(assert (=> b!4696396 m!5605465))

(declare-fun m!5605467 () Bool)

(assert (=> b!4696396 m!5605467))

(assert (=> b!4696396 m!5605453))

(declare-fun m!5605469 () Bool)

(assert (=> b!4696396 m!5605469))

(assert (=> b!4696396 m!5605457))

(declare-fun m!5605471 () Bool)

(assert (=> b!4696398 m!5605471))

(declare-fun m!5605473 () Bool)

(assert (=> bm!328288 m!5605473))

(declare-fun m!5605475 () Bool)

(assert (=> b!4696399 m!5605475))

(declare-fun m!5605477 () Bool)

(assert (=> bm!328286 m!5605477))

(declare-fun m!5605479 () Bool)

(assert (=> d!1493086 m!5605479))

(assert (=> d!1493086 m!5605295))

(assert (=> b!4696397 m!5605467))

(assert (=> bm!328287 m!5605223))

(assert (=> b!4696109 d!1493086))

(declare-fun d!1493088 () Bool)

(declare-fun e!2929748 () Bool)

(assert (=> d!1493088 e!2929748))

(declare-fun res!1982015 () Bool)

(assert (=> d!1493088 (=> (not res!1982015) (not e!2929748))))

(declare-fun lt!1857927 () ListMap!5013)

(assert (=> d!1493088 (= res!1982015 (contains!15726 lt!1857927 (_1!30251 lt!1857441)))))

(declare-fun lt!1857929 () List!52605)

(assert (=> d!1493088 (= lt!1857927 (ListMap!5014 lt!1857929))))

(declare-fun lt!1857930 () Unit!125277)

(declare-fun lt!1857928 () Unit!125277)

(assert (=> d!1493088 (= lt!1857930 lt!1857928)))

(assert (=> d!1493088 (= (getValueByKey!1821 lt!1857929 (_1!30251 lt!1857441)) (Some!12146 (_2!30251 lt!1857441)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1020 (List!52605 K!13850 V!14096) Unit!125277)

(assert (=> d!1493088 (= lt!1857928 (lemmaContainsTupThenGetReturnValue!1020 lt!1857929 (_1!30251 lt!1857441) (_2!30251 lt!1857441)))))

(declare-fun insertNoDuplicatedKeys!528 (List!52605 K!13850 V!14096) List!52605)

(assert (=> d!1493088 (= lt!1857929 (insertNoDuplicatedKeys!528 (toList!5649 (addToMapMapFromBucket!1312 lt!1857443 lt!1857448)) (_1!30251 lt!1857441) (_2!30251 lt!1857441)))))

(assert (=> d!1493088 (= (+!2164 (addToMapMapFromBucket!1312 lt!1857443 lt!1857448) lt!1857441) lt!1857927)))

(declare-fun b!4696436 () Bool)

(declare-fun res!1982014 () Bool)

(assert (=> b!4696436 (=> (not res!1982014) (not e!2929748))))

(assert (=> b!4696436 (= res!1982014 (= (getValueByKey!1821 (toList!5649 lt!1857927) (_1!30251 lt!1857441)) (Some!12146 (_2!30251 lt!1857441))))))

(declare-fun b!4696437 () Bool)

(assert (=> b!4696437 (= e!2929748 (contains!15730 (toList!5649 lt!1857927) lt!1857441))))

(assert (= (and d!1493088 res!1982015) b!4696436))

(assert (= (and b!4696436 res!1982014) b!4696437))

(declare-fun m!5605499 () Bool)

(assert (=> d!1493088 m!5605499))

(declare-fun m!5605503 () Bool)

(assert (=> d!1493088 m!5605503))

(declare-fun m!5605505 () Bool)

(assert (=> d!1493088 m!5605505))

(declare-fun m!5605509 () Bool)

(assert (=> d!1493088 m!5605509))

(declare-fun m!5605515 () Bool)

(assert (=> b!4696436 m!5605515))

(declare-fun m!5605517 () Bool)

(assert (=> b!4696437 m!5605517))

(assert (=> b!4696109 d!1493088))

(declare-fun bs!1091505 () Bool)

(declare-fun d!1493092 () Bool)

(assert (= bs!1091505 (and d!1493092 start!475728)))

(declare-fun lambda!208993 () Int)

(assert (=> bs!1091505 (= lambda!208993 lambda!208857)))

(declare-fun bs!1091506 () Bool)

(assert (= bs!1091506 (and d!1493092 d!1492964)))

(assert (=> bs!1091506 (= lambda!208993 lambda!208866)))

(declare-fun bs!1091507 () Bool)

(assert (= bs!1091507 (and d!1493092 d!1492982)))

(assert (=> bs!1091507 (= lambda!208993 lambda!208883)))

(declare-fun bs!1091508 () Bool)

(assert (= bs!1091508 (and d!1493092 d!1493062)))

(assert (=> bs!1091508 (= lambda!208993 lambda!208969)))

(declare-fun lt!1857946 () ListMap!5013)

(assert (=> d!1493092 (invariantList!1430 (toList!5649 lt!1857946))))

(declare-fun e!2929770 () ListMap!5013)

(assert (=> d!1493092 (= lt!1857946 e!2929770)))

(declare-fun c!802880 () Bool)

(assert (=> d!1493092 (= c!802880 ((_ is Cons!52482) lt!1857436))))

(assert (=> d!1493092 (forall!11367 lt!1857436 lambda!208993)))

(assert (=> d!1493092 (= (extractMap!1906 lt!1857436) lt!1857946)))

(declare-fun b!4696473 () Bool)

(assert (=> b!4696473 (= e!2929770 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 lt!1857436)) (extractMap!1906 (t!359802 lt!1857436))))))

(declare-fun b!4696474 () Bool)

(assert (=> b!4696474 (= e!2929770 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493092 c!802880) b!4696473))

(assert (= (and d!1493092 (not c!802880)) b!4696474))

(declare-fun m!5605591 () Bool)

(assert (=> d!1493092 m!5605591))

(declare-fun m!5605593 () Bool)

(assert (=> d!1493092 m!5605593))

(declare-fun m!5605595 () Bool)

(assert (=> b!4696473 m!5605595))

(assert (=> b!4696473 m!5605595))

(declare-fun m!5605597 () Bool)

(assert (=> b!4696473 m!5605597))

(assert (=> b!4696109 d!1493092))

(declare-fun d!1493114 () Bool)

(declare-fun e!2929772 () Bool)

(assert (=> d!1493114 e!2929772))

(declare-fun res!1982024 () Bool)

(assert (=> d!1493114 (=> (not res!1982024) (not e!2929772))))

(declare-fun lt!1857948 () ListMap!5013)

(assert (=> d!1493114 (= res!1982024 (contains!15726 lt!1857948 (_1!30251 lt!1857460)))))

(declare-fun lt!1857950 () List!52605)

(assert (=> d!1493114 (= lt!1857948 (ListMap!5014 lt!1857950))))

(declare-fun lt!1857951 () Unit!125277)

(declare-fun lt!1857949 () Unit!125277)

(assert (=> d!1493114 (= lt!1857951 lt!1857949)))

(assert (=> d!1493114 (= (getValueByKey!1821 lt!1857950 (_1!30251 lt!1857460)) (Some!12146 (_2!30251 lt!1857460)))))

(assert (=> d!1493114 (= lt!1857949 (lemmaContainsTupThenGetReturnValue!1020 lt!1857950 (_1!30251 lt!1857460) (_2!30251 lt!1857460)))))

(assert (=> d!1493114 (= lt!1857950 (insertNoDuplicatedKeys!528 (toList!5649 (addToMapMapFromBucket!1312 lt!1857444 lt!1857448)) (_1!30251 lt!1857460) (_2!30251 lt!1857460)))))

(assert (=> d!1493114 (= (+!2164 (addToMapMapFromBucket!1312 lt!1857444 lt!1857448) lt!1857460) lt!1857948)))

(declare-fun b!4696477 () Bool)

(declare-fun res!1982023 () Bool)

(assert (=> b!4696477 (=> (not res!1982023) (not e!2929772))))

(assert (=> b!4696477 (= res!1982023 (= (getValueByKey!1821 (toList!5649 lt!1857948) (_1!30251 lt!1857460)) (Some!12146 (_2!30251 lt!1857460))))))

(declare-fun b!4696478 () Bool)

(assert (=> b!4696478 (= e!2929772 (contains!15730 (toList!5649 lt!1857948) lt!1857460))))

(assert (= (and d!1493114 res!1982024) b!4696477))

(assert (= (and b!4696477 res!1982023) b!4696478))

(declare-fun m!5605599 () Bool)

(assert (=> d!1493114 m!5605599))

(declare-fun m!5605601 () Bool)

(assert (=> d!1493114 m!5605601))

(declare-fun m!5605603 () Bool)

(assert (=> d!1493114 m!5605603))

(declare-fun m!5605605 () Bool)

(assert (=> d!1493114 m!5605605))

(declare-fun m!5605607 () Bool)

(assert (=> b!4696477 m!5605607))

(declare-fun m!5605609 () Bool)

(assert (=> b!4696478 m!5605609))

(assert (=> b!4696109 d!1493114))

(declare-fun bs!1091521 () Bool)

(declare-fun d!1493116 () Bool)

(assert (= bs!1091521 (and d!1493116 d!1492964)))

(declare-fun lambda!208995 () Int)

(assert (=> bs!1091521 (= lambda!208995 lambda!208866)))

(declare-fun bs!1091522 () Bool)

(assert (= bs!1091522 (and d!1493116 d!1493092)))

(assert (=> bs!1091522 (= lambda!208995 lambda!208993)))

(declare-fun bs!1091523 () Bool)

(assert (= bs!1091523 (and d!1493116 d!1492982)))

(assert (=> bs!1091523 (= lambda!208995 lambda!208883)))

(declare-fun bs!1091524 () Bool)

(assert (= bs!1091524 (and d!1493116 start!475728)))

(assert (=> bs!1091524 (= lambda!208995 lambda!208857)))

(declare-fun bs!1091525 () Bool)

(assert (= bs!1091525 (and d!1493116 d!1493062)))

(assert (=> bs!1091525 (= lambda!208995 lambda!208969)))

(declare-fun lt!1857952 () ListMap!5013)

(assert (=> d!1493116 (invariantList!1430 (toList!5649 lt!1857952))))

(declare-fun e!2929773 () ListMap!5013)

(assert (=> d!1493116 (= lt!1857952 e!2929773)))

(declare-fun c!802882 () Bool)

(assert (=> d!1493116 (= c!802882 ((_ is Cons!52482) lt!1857451))))

(assert (=> d!1493116 (forall!11367 lt!1857451 lambda!208995)))

(assert (=> d!1493116 (= (extractMap!1906 lt!1857451) lt!1857952)))

(declare-fun b!4696479 () Bool)

(assert (=> b!4696479 (= e!2929773 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 lt!1857451)) (extractMap!1906 (t!359802 lt!1857451))))))

(declare-fun b!4696480 () Bool)

(assert (=> b!4696480 (= e!2929773 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493116 c!802882) b!4696479))

(assert (= (and d!1493116 (not c!802882)) b!4696480))

(declare-fun m!5605617 () Bool)

(assert (=> d!1493116 m!5605617))

(declare-fun m!5605619 () Bool)

(assert (=> d!1493116 m!5605619))

(declare-fun m!5605621 () Bool)

(assert (=> b!4696479 m!5605621))

(assert (=> b!4696479 m!5605621))

(declare-fun m!5605623 () Bool)

(assert (=> b!4696479 m!5605623))

(assert (=> b!4696109 d!1493116))

(declare-fun d!1493120 () Bool)

(declare-fun e!2929774 () Bool)

(assert (=> d!1493120 e!2929774))

(declare-fun res!1982026 () Bool)

(assert (=> d!1493120 (=> (not res!1982026) (not e!2929774))))

(declare-fun lt!1857953 () ListMap!5013)

(assert (=> d!1493120 (= res!1982026 (contains!15726 lt!1857953 (_1!30251 (h!58746 oldBucket!34))))))

(declare-fun lt!1857955 () List!52605)

(assert (=> d!1493120 (= lt!1857953 (ListMap!5014 lt!1857955))))

(declare-fun lt!1857956 () Unit!125277)

(declare-fun lt!1857954 () Unit!125277)

(assert (=> d!1493120 (= lt!1857956 lt!1857954)))

(assert (=> d!1493120 (= (getValueByKey!1821 lt!1857955 (_1!30251 (h!58746 oldBucket!34))) (Some!12146 (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493120 (= lt!1857954 (lemmaContainsTupThenGetReturnValue!1020 lt!1857955 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493120 (= lt!1857955 (insertNoDuplicatedKeys!528 (toList!5649 lt!1857453) (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493120 (= (+!2164 lt!1857453 (h!58746 oldBucket!34)) lt!1857953)))

(declare-fun b!4696481 () Bool)

(declare-fun res!1982025 () Bool)

(assert (=> b!4696481 (=> (not res!1982025) (not e!2929774))))

(assert (=> b!4696481 (= res!1982025 (= (getValueByKey!1821 (toList!5649 lt!1857953) (_1!30251 (h!58746 oldBucket!34))) (Some!12146 (_2!30251 (h!58746 oldBucket!34)))))))

(declare-fun b!4696482 () Bool)

(assert (=> b!4696482 (= e!2929774 (contains!15730 (toList!5649 lt!1857953) (h!58746 oldBucket!34)))))

(assert (= (and d!1493120 res!1982026) b!4696481))

(assert (= (and b!4696481 res!1982025) b!4696482))

(declare-fun m!5605627 () Bool)

(assert (=> d!1493120 m!5605627))

(declare-fun m!5605629 () Bool)

(assert (=> d!1493120 m!5605629))

(declare-fun m!5605631 () Bool)

(assert (=> d!1493120 m!5605631))

(declare-fun m!5605633 () Bool)

(assert (=> d!1493120 m!5605633))

(declare-fun m!5605635 () Bool)

(assert (=> b!4696481 m!5605635))

(declare-fun m!5605637 () Bool)

(assert (=> b!4696482 m!5605637))

(assert (=> b!4696109 d!1493120))

(declare-fun d!1493124 () Bool)

(assert (=> d!1493124 (eq!1039 (addToMapMapFromBucket!1312 (Cons!52481 lt!1857460 lt!1857444) lt!1857448) (+!2164 (addToMapMapFromBucket!1312 lt!1857444 lt!1857448) lt!1857460))))

(declare-fun lt!1857961 () Unit!125277)

(assert (=> d!1493124 (= lt!1857961 (choose!32749 lt!1857460 lt!1857444 lt!1857448))))

(assert (=> d!1493124 (noDuplicateKeys!1880 lt!1857444)))

(assert (=> d!1493124 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!288 lt!1857460 lt!1857444 lt!1857448) lt!1857961)))

(declare-fun bs!1091527 () Bool)

(assert (= bs!1091527 d!1493124))

(declare-fun m!5605651 () Bool)

(assert (=> bs!1091527 m!5605651))

(assert (=> bs!1091527 m!5604761))

(assert (=> bs!1091527 m!5604787))

(assert (=> bs!1091527 m!5604789))

(declare-fun m!5605653 () Bool)

(assert (=> bs!1091527 m!5605653))

(assert (=> bs!1091527 m!5604767))

(assert (=> bs!1091527 m!5604761))

(assert (=> bs!1091527 m!5604767))

(assert (=> bs!1091527 m!5604787))

(assert (=> b!4696109 d!1493124))

(declare-fun d!1493128 () Bool)

(assert (=> d!1493128 (= (head!10023 oldBucket!34) (h!58746 oldBucket!34))))

(assert (=> b!4696109 d!1493128))

(declare-fun bs!1091528 () Bool)

(declare-fun d!1493130 () Bool)

(assert (= bs!1091528 (and d!1493130 d!1493116)))

(declare-fun lambda!208996 () Int)

(assert (=> bs!1091528 (= lambda!208996 lambda!208995)))

(declare-fun bs!1091529 () Bool)

(assert (= bs!1091529 (and d!1493130 d!1492964)))

(assert (=> bs!1091529 (= lambda!208996 lambda!208866)))

(declare-fun bs!1091530 () Bool)

(assert (= bs!1091530 (and d!1493130 d!1493092)))

(assert (=> bs!1091530 (= lambda!208996 lambda!208993)))

(declare-fun bs!1091531 () Bool)

(assert (= bs!1091531 (and d!1493130 d!1492982)))

(assert (=> bs!1091531 (= lambda!208996 lambda!208883)))

(declare-fun bs!1091532 () Bool)

(assert (= bs!1091532 (and d!1493130 start!475728)))

(assert (=> bs!1091532 (= lambda!208996 lambda!208857)))

(declare-fun bs!1091533 () Bool)

(assert (= bs!1091533 (and d!1493130 d!1493062)))

(assert (=> bs!1091533 (= lambda!208996 lambda!208969)))

(declare-fun lt!1857963 () ListMap!5013)

(assert (=> d!1493130 (invariantList!1430 (toList!5649 lt!1857963))))

(declare-fun e!2929777 () ListMap!5013)

(assert (=> d!1493130 (= lt!1857963 e!2929777)))

(declare-fun c!802883 () Bool)

(assert (=> d!1493130 (= c!802883 ((_ is Cons!52482) (Cons!52482 (tuple2!53917 hash!405 lt!1857444) (t!359802 (toList!5650 lm!2023)))))))

(assert (=> d!1493130 (forall!11367 (Cons!52482 (tuple2!53917 hash!405 lt!1857444) (t!359802 (toList!5650 lm!2023))) lambda!208996)))

(assert (=> d!1493130 (= (extractMap!1906 (Cons!52482 (tuple2!53917 hash!405 lt!1857444) (t!359802 (toList!5650 lm!2023)))) lt!1857963)))

(declare-fun b!4696486 () Bool)

(assert (=> b!4696486 (= e!2929777 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (Cons!52482 (tuple2!53917 hash!405 lt!1857444) (t!359802 (toList!5650 lm!2023))))) (extractMap!1906 (t!359802 (Cons!52482 (tuple2!53917 hash!405 lt!1857444) (t!359802 (toList!5650 lm!2023)))))))))

(declare-fun b!4696487 () Bool)

(assert (=> b!4696487 (= e!2929777 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493130 c!802883) b!4696486))

(assert (= (and d!1493130 (not c!802883)) b!4696487))

(declare-fun m!5605679 () Bool)

(assert (=> d!1493130 m!5605679))

(declare-fun m!5605681 () Bool)

(assert (=> d!1493130 m!5605681))

(declare-fun m!5605683 () Bool)

(assert (=> b!4696486 m!5605683))

(assert (=> b!4696486 m!5605683))

(declare-fun m!5605685 () Bool)

(assert (=> b!4696486 m!5605685))

(assert (=> b!4696109 d!1493130))

(declare-fun bs!1091534 () Bool)

(declare-fun b!4696490 () Bool)

(assert (= bs!1091534 (and b!4696490 b!4696359)))

(declare-fun lambda!208997 () Int)

(assert (=> bs!1091534 (= (= lt!1857448 lt!1857785) (= lambda!208997 lambda!208972))))

(declare-fun bs!1091535 () Bool)

(assert (= bs!1091535 (and b!4696490 d!1493086)))

(assert (=> bs!1091535 (= (= lt!1857448 lt!1857859) (= lambda!208997 lambda!208984))))

(declare-fun bs!1091536 () Bool)

(assert (= bs!1091536 (and b!4696490 b!4696395)))

(assert (=> bs!1091536 (= lambda!208997 lambda!208981)))

(declare-fun bs!1091537 () Bool)

(assert (= bs!1091537 (and b!4696490 d!1493012)))

(assert (=> bs!1091537 (= (= lt!1857448 lt!1857708) (= lambda!208997 lambda!208957))))

(assert (=> bs!1091534 (= lambda!208997 lambda!208971)))

(declare-fun bs!1091538 () Bool)

(assert (= bs!1091538 (and b!4696490 d!1492952)))

(assert (=> bs!1091538 (not (= lambda!208997 lambda!208860))))

(declare-fun bs!1091539 () Bool)

(assert (= bs!1091539 (and b!4696490 d!1493070)))

(assert (=> bs!1091539 (= (= lt!1857448 lt!1857789) (= lambda!208997 lambda!208975))))

(declare-fun bs!1091540 () Bool)

(assert (= bs!1091540 (and b!4696490 b!4696335)))

(assert (=> bs!1091540 (= lambda!208997 lambda!208954)))

(declare-fun bs!1091541 () Bool)

(assert (= bs!1091541 (and b!4696490 b!4696336)))

(assert (=> bs!1091541 (= lambda!208997 lambda!208955)))

(declare-fun bs!1091542 () Bool)

(assert (= bs!1091542 (and b!4696490 b!4696396)))

(assert (=> bs!1091542 (= lambda!208997 lambda!208982)))

(assert (=> bs!1091541 (= (= lt!1857448 lt!1857704) (= lambda!208997 lambda!208956))))

(declare-fun bs!1091543 () Bool)

(assert (= bs!1091543 (and b!4696490 b!4696358)))

(assert (=> bs!1091543 (= lambda!208997 lambda!208970)))

(assert (=> bs!1091542 (= (= lt!1857448 lt!1857855) (= lambda!208997 lambda!208983))))

(assert (=> b!4696490 true))

(declare-fun bs!1091544 () Bool)

(declare-fun b!4696491 () Bool)

(assert (= bs!1091544 (and b!4696491 b!4696359)))

(declare-fun lambda!208998 () Int)

(assert (=> bs!1091544 (= (= lt!1857448 lt!1857785) (= lambda!208998 lambda!208972))))

(declare-fun bs!1091545 () Bool)

(assert (= bs!1091545 (and b!4696491 d!1493086)))

(assert (=> bs!1091545 (= (= lt!1857448 lt!1857859) (= lambda!208998 lambda!208984))))

(declare-fun bs!1091546 () Bool)

(assert (= bs!1091546 (and b!4696491 b!4696395)))

(assert (=> bs!1091546 (= lambda!208998 lambda!208981)))

(declare-fun bs!1091547 () Bool)

(assert (= bs!1091547 (and b!4696491 d!1493012)))

(assert (=> bs!1091547 (= (= lt!1857448 lt!1857708) (= lambda!208998 lambda!208957))))

(declare-fun bs!1091548 () Bool)

(assert (= bs!1091548 (and b!4696491 d!1492952)))

(assert (=> bs!1091548 (not (= lambda!208998 lambda!208860))))

(declare-fun bs!1091549 () Bool)

(assert (= bs!1091549 (and b!4696491 d!1493070)))

(assert (=> bs!1091549 (= (= lt!1857448 lt!1857789) (= lambda!208998 lambda!208975))))

(declare-fun bs!1091550 () Bool)

(assert (= bs!1091550 (and b!4696491 b!4696335)))

(assert (=> bs!1091550 (= lambda!208998 lambda!208954)))

(declare-fun bs!1091551 () Bool)

(assert (= bs!1091551 (and b!4696491 b!4696336)))

(assert (=> bs!1091551 (= lambda!208998 lambda!208955)))

(assert (=> bs!1091544 (= lambda!208998 lambda!208971)))

(declare-fun bs!1091552 () Bool)

(assert (= bs!1091552 (and b!4696491 b!4696490)))

(assert (=> bs!1091552 (= lambda!208998 lambda!208997)))

(declare-fun bs!1091553 () Bool)

(assert (= bs!1091553 (and b!4696491 b!4696396)))

(assert (=> bs!1091553 (= lambda!208998 lambda!208982)))

(assert (=> bs!1091551 (= (= lt!1857448 lt!1857704) (= lambda!208998 lambda!208956))))

(declare-fun bs!1091554 () Bool)

(assert (= bs!1091554 (and b!4696491 b!4696358)))

(assert (=> bs!1091554 (= lambda!208998 lambda!208970)))

(assert (=> bs!1091553 (= (= lt!1857448 lt!1857855) (= lambda!208998 lambda!208983))))

(assert (=> b!4696491 true))

(declare-fun lt!1857970 () ListMap!5013)

(declare-fun lambda!208999 () Int)

(assert (=> bs!1091544 (= (= lt!1857970 lt!1857785) (= lambda!208999 lambda!208972))))

(assert (=> bs!1091545 (= (= lt!1857970 lt!1857859) (= lambda!208999 lambda!208984))))

(assert (=> bs!1091546 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208981))))

(assert (=> bs!1091547 (= (= lt!1857970 lt!1857708) (= lambda!208999 lambda!208957))))

(assert (=> bs!1091549 (= (= lt!1857970 lt!1857789) (= lambda!208999 lambda!208975))))

(assert (=> bs!1091550 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208954))))

(assert (=> bs!1091551 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208955))))

(assert (=> bs!1091544 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208971))))

(assert (=> bs!1091552 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208997))))

(assert (=> bs!1091553 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208982))))

(assert (=> bs!1091551 (= (= lt!1857970 lt!1857704) (= lambda!208999 lambda!208956))))

(assert (=> bs!1091554 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208970))))

(assert (=> bs!1091553 (= (= lt!1857970 lt!1857855) (= lambda!208999 lambda!208983))))

(assert (=> b!4696491 (= (= lt!1857970 lt!1857448) (= lambda!208999 lambda!208998))))

(assert (=> bs!1091548 (not (= lambda!208999 lambda!208860))))

(assert (=> b!4696491 true))

(declare-fun bs!1091555 () Bool)

(declare-fun d!1493136 () Bool)

(assert (= bs!1091555 (and d!1493136 d!1493086)))

(declare-fun lt!1857974 () ListMap!5013)

(declare-fun lambda!209000 () Int)

(assert (=> bs!1091555 (= (= lt!1857974 lt!1857859) (= lambda!209000 lambda!208984))))

(declare-fun bs!1091556 () Bool)

(assert (= bs!1091556 (and d!1493136 b!4696395)))

(assert (=> bs!1091556 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208981))))

(declare-fun bs!1091557 () Bool)

(assert (= bs!1091557 (and d!1493136 d!1493012)))

(assert (=> bs!1091557 (= (= lt!1857974 lt!1857708) (= lambda!209000 lambda!208957))))

(declare-fun bs!1091558 () Bool)

(assert (= bs!1091558 (and d!1493136 d!1493070)))

(assert (=> bs!1091558 (= (= lt!1857974 lt!1857789) (= lambda!209000 lambda!208975))))

(declare-fun bs!1091559 () Bool)

(assert (= bs!1091559 (and d!1493136 b!4696359)))

(assert (=> bs!1091559 (= (= lt!1857974 lt!1857785) (= lambda!209000 lambda!208972))))

(declare-fun bs!1091560 () Bool)

(assert (= bs!1091560 (and d!1493136 b!4696491)))

(assert (=> bs!1091560 (= (= lt!1857974 lt!1857970) (= lambda!209000 lambda!208999))))

(declare-fun bs!1091561 () Bool)

(assert (= bs!1091561 (and d!1493136 b!4696335)))

(assert (=> bs!1091561 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208954))))

(declare-fun bs!1091562 () Bool)

(assert (= bs!1091562 (and d!1493136 b!4696336)))

(assert (=> bs!1091562 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208955))))

(assert (=> bs!1091559 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208971))))

(declare-fun bs!1091563 () Bool)

(assert (= bs!1091563 (and d!1493136 b!4696490)))

(assert (=> bs!1091563 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208997))))

(declare-fun bs!1091564 () Bool)

(assert (= bs!1091564 (and d!1493136 b!4696396)))

(assert (=> bs!1091564 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208982))))

(assert (=> bs!1091562 (= (= lt!1857974 lt!1857704) (= lambda!209000 lambda!208956))))

(declare-fun bs!1091565 () Bool)

(assert (= bs!1091565 (and d!1493136 b!4696358)))

(assert (=> bs!1091565 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208970))))

(assert (=> bs!1091564 (= (= lt!1857974 lt!1857855) (= lambda!209000 lambda!208983))))

(assert (=> bs!1091560 (= (= lt!1857974 lt!1857448) (= lambda!209000 lambda!208998))))

(declare-fun bs!1091566 () Bool)

(assert (= bs!1091566 (and d!1493136 d!1492952)))

(assert (=> bs!1091566 (not (= lambda!209000 lambda!208860))))

(assert (=> d!1493136 true))

(declare-fun bm!328296 () Bool)

(declare-fun c!802884 () Bool)

(declare-fun call!328302 () Bool)

(assert (=> bm!328296 (= call!328302 (forall!11369 (toList!5649 lt!1857448) (ite c!802884 lambda!208997 lambda!208999)))))

(declare-fun e!2929779 () ListMap!5013)

(assert (=> b!4696490 (= e!2929779 lt!1857448)))

(declare-fun lt!1857980 () Unit!125277)

(declare-fun call!328303 () Unit!125277)

(assert (=> b!4696490 (= lt!1857980 call!328303)))

(declare-fun call!328301 () Bool)

(assert (=> b!4696490 call!328301))

(declare-fun lt!1857975 () Unit!125277)

(assert (=> b!4696490 (= lt!1857975 lt!1857980)))

(assert (=> b!4696490 call!328302))

(declare-fun lt!1857971 () Unit!125277)

(declare-fun Unit!125360 () Unit!125277)

(assert (=> b!4696490 (= lt!1857971 Unit!125360)))

(assert (=> b!4696491 (= e!2929779 lt!1857970)))

(declare-fun lt!1857988 () ListMap!5013)

(assert (=> b!4696491 (= lt!1857988 (+!2164 lt!1857448 (h!58746 lt!1857444)))))

(assert (=> b!4696491 (= lt!1857970 (addToMapMapFromBucket!1312 (t!359801 lt!1857444) (+!2164 lt!1857448 (h!58746 lt!1857444))))))

(declare-fun lt!1857968 () Unit!125277)

(assert (=> b!4696491 (= lt!1857968 call!328303)))

(assert (=> b!4696491 (forall!11369 (toList!5649 lt!1857448) lambda!208998)))

(declare-fun lt!1857979 () Unit!125277)

(assert (=> b!4696491 (= lt!1857979 lt!1857968)))

(assert (=> b!4696491 (forall!11369 (toList!5649 lt!1857988) lambda!208999)))

(declare-fun lt!1857972 () Unit!125277)

(declare-fun Unit!125361 () Unit!125277)

(assert (=> b!4696491 (= lt!1857972 Unit!125361)))

(assert (=> b!4696491 (forall!11369 (t!359801 lt!1857444) lambda!208999)))

(declare-fun lt!1857987 () Unit!125277)

(declare-fun Unit!125362 () Unit!125277)

(assert (=> b!4696491 (= lt!1857987 Unit!125362)))

(declare-fun lt!1857982 () Unit!125277)

(declare-fun Unit!125363 () Unit!125277)

(assert (=> b!4696491 (= lt!1857982 Unit!125363)))

(declare-fun lt!1857977 () Unit!125277)

(assert (=> b!4696491 (= lt!1857977 (forallContained!3476 (toList!5649 lt!1857988) lambda!208999 (h!58746 lt!1857444)))))

(assert (=> b!4696491 (contains!15726 lt!1857988 (_1!30251 (h!58746 lt!1857444)))))

(declare-fun lt!1857981 () Unit!125277)

(declare-fun Unit!125365 () Unit!125277)

(assert (=> b!4696491 (= lt!1857981 Unit!125365)))

(assert (=> b!4696491 (contains!15726 lt!1857970 (_1!30251 (h!58746 lt!1857444)))))

(declare-fun lt!1857978 () Unit!125277)

(declare-fun Unit!125366 () Unit!125277)

(assert (=> b!4696491 (= lt!1857978 Unit!125366)))

(assert (=> b!4696491 (forall!11369 lt!1857444 lambda!208999)))

(declare-fun lt!1857983 () Unit!125277)

(declare-fun Unit!125367 () Unit!125277)

(assert (=> b!4696491 (= lt!1857983 Unit!125367)))

(assert (=> b!4696491 call!328301))

(declare-fun lt!1857985 () Unit!125277)

(declare-fun Unit!125368 () Unit!125277)

(assert (=> b!4696491 (= lt!1857985 Unit!125368)))

(declare-fun lt!1857969 () Unit!125277)

(declare-fun Unit!125370 () Unit!125277)

(assert (=> b!4696491 (= lt!1857969 Unit!125370)))

(declare-fun lt!1857976 () Unit!125277)

(assert (=> b!4696491 (= lt!1857976 (addForallContainsKeyThenBeforeAdding!717 lt!1857448 lt!1857970 (_1!30251 (h!58746 lt!1857444)) (_2!30251 (h!58746 lt!1857444))))))

(assert (=> b!4696491 (forall!11369 (toList!5649 lt!1857448) lambda!208999)))

(declare-fun lt!1857973 () Unit!125277)

(assert (=> b!4696491 (= lt!1857973 lt!1857976)))

(assert (=> b!4696491 call!328302))

(declare-fun lt!1857984 () Unit!125277)

(declare-fun Unit!125371 () Unit!125277)

(assert (=> b!4696491 (= lt!1857984 Unit!125371)))

(declare-fun res!1982034 () Bool)

(assert (=> b!4696491 (= res!1982034 (forall!11369 lt!1857444 lambda!208999))))

(declare-fun e!2929780 () Bool)

(assert (=> b!4696491 (=> (not res!1982034) (not e!2929780))))

(assert (=> b!4696491 e!2929780))

(declare-fun lt!1857986 () Unit!125277)

(declare-fun Unit!125372 () Unit!125277)

(assert (=> b!4696491 (= lt!1857986 Unit!125372)))

(declare-fun e!2929781 () Bool)

(assert (=> d!1493136 e!2929781))

(declare-fun res!1982033 () Bool)

(assert (=> d!1493136 (=> (not res!1982033) (not e!2929781))))

(assert (=> d!1493136 (= res!1982033 (forall!11369 lt!1857444 lambda!209000))))

(assert (=> d!1493136 (= lt!1857974 e!2929779)))

(assert (=> d!1493136 (= c!802884 ((_ is Nil!52481) lt!1857444))))

(assert (=> d!1493136 (noDuplicateKeys!1880 lt!1857444)))

(assert (=> d!1493136 (= (addToMapMapFromBucket!1312 lt!1857444 lt!1857448) lt!1857974)))

(declare-fun b!4696492 () Bool)

(assert (=> b!4696492 (= e!2929780 (forall!11369 (toList!5649 lt!1857448) lambda!208999))))

(declare-fun bm!328297 () Bool)

(assert (=> bm!328297 (= call!328303 (lemmaContainsAllItsOwnKeys!718 lt!1857448))))

(declare-fun b!4696493 () Bool)

(assert (=> b!4696493 (= e!2929781 (invariantList!1430 (toList!5649 lt!1857974)))))

(declare-fun b!4696494 () Bool)

(declare-fun res!1982032 () Bool)

(assert (=> b!4696494 (=> (not res!1982032) (not e!2929781))))

(assert (=> b!4696494 (= res!1982032 (forall!11369 (toList!5649 lt!1857448) lambda!209000))))

(declare-fun bm!328298 () Bool)

(assert (=> bm!328298 (= call!328301 (forall!11369 (ite c!802884 (toList!5649 lt!1857448) (toList!5649 lt!1857988)) (ite c!802884 lambda!208997 lambda!208999)))))

(assert (= (and d!1493136 c!802884) b!4696490))

(assert (= (and d!1493136 (not c!802884)) b!4696491))

(assert (= (and b!4696491 res!1982034) b!4696492))

(assert (= (or b!4696490 b!4696491) bm!328297))

(assert (= (or b!4696490 b!4696491) bm!328298))

(assert (= (or b!4696490 b!4696491) bm!328296))

(assert (= (and d!1493136 res!1982033) b!4696494))

(assert (= (and b!4696494 res!1982032) b!4696493))

(declare-fun m!5605687 () Bool)

(assert (=> b!4696491 m!5605687))

(declare-fun m!5605689 () Bool)

(assert (=> b!4696491 m!5605689))

(declare-fun m!5605691 () Bool)

(assert (=> b!4696491 m!5605691))

(declare-fun m!5605693 () Bool)

(assert (=> b!4696491 m!5605693))

(declare-fun m!5605695 () Bool)

(assert (=> b!4696491 m!5605695))

(declare-fun m!5605697 () Bool)

(assert (=> b!4696491 m!5605697))

(declare-fun m!5605699 () Bool)

(assert (=> b!4696491 m!5605699))

(declare-fun m!5605701 () Bool)

(assert (=> b!4696491 m!5605701))

(declare-fun m!5605703 () Bool)

(assert (=> b!4696491 m!5605703))

(declare-fun m!5605705 () Bool)

(assert (=> b!4696491 m!5605705))

(assert (=> b!4696491 m!5605691))

(declare-fun m!5605707 () Bool)

(assert (=> b!4696491 m!5605707))

(assert (=> b!4696491 m!5605695))

(declare-fun m!5605709 () Bool)

(assert (=> b!4696493 m!5605709))

(declare-fun m!5605711 () Bool)

(assert (=> bm!328298 m!5605711))

(declare-fun m!5605713 () Bool)

(assert (=> b!4696494 m!5605713))

(declare-fun m!5605715 () Bool)

(assert (=> bm!328296 m!5605715))

(declare-fun m!5605717 () Bool)

(assert (=> d!1493136 m!5605717))

(assert (=> d!1493136 m!5605651))

(assert (=> b!4696492 m!5605705))

(assert (=> bm!328297 m!5605223))

(assert (=> b!4696109 d!1493136))

(declare-fun bs!1091568 () Bool)

(declare-fun d!1493138 () Bool)

(assert (= bs!1091568 (and d!1493138 d!1493116)))

(declare-fun lambda!209001 () Int)

(assert (=> bs!1091568 (= lambda!209001 lambda!208995)))

(declare-fun bs!1091569 () Bool)

(assert (= bs!1091569 (and d!1493138 d!1492964)))

(assert (=> bs!1091569 (= lambda!209001 lambda!208866)))

(declare-fun bs!1091570 () Bool)

(assert (= bs!1091570 (and d!1493138 d!1493092)))

(assert (=> bs!1091570 (= lambda!209001 lambda!208993)))

(declare-fun bs!1091571 () Bool)

(assert (= bs!1091571 (and d!1493138 d!1492982)))

(assert (=> bs!1091571 (= lambda!209001 lambda!208883)))

(declare-fun bs!1091572 () Bool)

(assert (= bs!1091572 (and d!1493138 start!475728)))

(assert (=> bs!1091572 (= lambda!209001 lambda!208857)))

(declare-fun bs!1091573 () Bool)

(assert (= bs!1091573 (and d!1493138 d!1493062)))

(assert (=> bs!1091573 (= lambda!209001 lambda!208969)))

(declare-fun bs!1091574 () Bool)

(assert (= bs!1091574 (and d!1493138 d!1493130)))

(assert (=> bs!1091574 (= lambda!209001 lambda!208996)))

(declare-fun lt!1857992 () ListMap!5013)

(assert (=> d!1493138 (invariantList!1430 (toList!5649 lt!1857992))))

(declare-fun e!2929782 () ListMap!5013)

(assert (=> d!1493138 (= lt!1857992 e!2929782)))

(declare-fun c!802885 () Bool)

(assert (=> d!1493138 (= c!802885 ((_ is Cons!52482) (Cons!52482 lt!1857449 lt!1857462)))))

(assert (=> d!1493138 (forall!11367 (Cons!52482 lt!1857449 lt!1857462) lambda!209001)))

(assert (=> d!1493138 (= (extractMap!1906 (Cons!52482 lt!1857449 lt!1857462)) lt!1857992)))

(declare-fun b!4696495 () Bool)

(assert (=> b!4696495 (= e!2929782 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (Cons!52482 lt!1857449 lt!1857462))) (extractMap!1906 (t!359802 (Cons!52482 lt!1857449 lt!1857462)))))))

(declare-fun b!4696496 () Bool)

(assert (=> b!4696496 (= e!2929782 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493138 c!802885) b!4696495))

(assert (= (and d!1493138 (not c!802885)) b!4696496))

(declare-fun m!5605727 () Bool)

(assert (=> d!1493138 m!5605727))

(declare-fun m!5605729 () Bool)

(assert (=> d!1493138 m!5605729))

(declare-fun m!5605731 () Bool)

(assert (=> b!4696495 m!5605731))

(assert (=> b!4696495 m!5605731))

(declare-fun m!5605733 () Bool)

(assert (=> b!4696495 m!5605733))

(assert (=> b!4696118 d!1493138))

(declare-fun bs!1091575 () Bool)

(declare-fun d!1493142 () Bool)

(assert (= bs!1091575 (and d!1493142 d!1493116)))

(declare-fun lambda!209002 () Int)

(assert (=> bs!1091575 (= lambda!209002 lambda!208995)))

(declare-fun bs!1091576 () Bool)

(assert (= bs!1091576 (and d!1493142 d!1493138)))

(assert (=> bs!1091576 (= lambda!209002 lambda!209001)))

(declare-fun bs!1091577 () Bool)

(assert (= bs!1091577 (and d!1493142 d!1492964)))

(assert (=> bs!1091577 (= lambda!209002 lambda!208866)))

(declare-fun bs!1091578 () Bool)

(assert (= bs!1091578 (and d!1493142 d!1493092)))

(assert (=> bs!1091578 (= lambda!209002 lambda!208993)))

(declare-fun bs!1091579 () Bool)

(assert (= bs!1091579 (and d!1493142 d!1492982)))

(assert (=> bs!1091579 (= lambda!209002 lambda!208883)))

(declare-fun bs!1091580 () Bool)

(assert (= bs!1091580 (and d!1493142 start!475728)))

(assert (=> bs!1091580 (= lambda!209002 lambda!208857)))

(declare-fun bs!1091581 () Bool)

(assert (= bs!1091581 (and d!1493142 d!1493062)))

(assert (=> bs!1091581 (= lambda!209002 lambda!208969)))

(declare-fun bs!1091582 () Bool)

(assert (= bs!1091582 (and d!1493142 d!1493130)))

(assert (=> bs!1091582 (= lambda!209002 lambda!208996)))

(declare-fun lt!1857993 () ListMap!5013)

(assert (=> d!1493142 (invariantList!1430 (toList!5649 lt!1857993))))

(declare-fun e!2929783 () ListMap!5013)

(assert (=> d!1493142 (= lt!1857993 e!2929783)))

(declare-fun c!802886 () Bool)

(assert (=> d!1493142 (= c!802886 ((_ is Cons!52482) (Cons!52482 lt!1857449 (t!359802 (toList!5650 lm!2023)))))))

(assert (=> d!1493142 (forall!11367 (Cons!52482 lt!1857449 (t!359802 (toList!5650 lm!2023))) lambda!209002)))

(assert (=> d!1493142 (= (extractMap!1906 (Cons!52482 lt!1857449 (t!359802 (toList!5650 lm!2023)))) lt!1857993)))

(declare-fun b!4696497 () Bool)

(assert (=> b!4696497 (= e!2929783 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (Cons!52482 lt!1857449 (t!359802 (toList!5650 lm!2023))))) (extractMap!1906 (t!359802 (Cons!52482 lt!1857449 (t!359802 (toList!5650 lm!2023)))))))))

(declare-fun b!4696498 () Bool)

(assert (=> b!4696498 (= e!2929783 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493142 c!802886) b!4696497))

(assert (= (and d!1493142 (not c!802886)) b!4696498))

(declare-fun m!5605735 () Bool)

(assert (=> d!1493142 m!5605735))

(declare-fun m!5605737 () Bool)

(assert (=> d!1493142 m!5605737))

(declare-fun m!5605739 () Bool)

(assert (=> b!4696497 m!5605739))

(assert (=> b!4696497 m!5605739))

(declare-fun m!5605741 () Bool)

(assert (=> b!4696497 m!5605741))

(assert (=> b!4696118 d!1493142))

(declare-fun bs!1091583 () Bool)

(declare-fun d!1493144 () Bool)

(assert (= bs!1091583 (and d!1493144 d!1493116)))

(declare-fun lambda!209006 () Int)

(assert (=> bs!1091583 (= lambda!209006 lambda!208995)))

(declare-fun bs!1091585 () Bool)

(assert (= bs!1091585 (and d!1493144 d!1493138)))

(assert (=> bs!1091585 (= lambda!209006 lambda!209001)))

(declare-fun bs!1091587 () Bool)

(assert (= bs!1091587 (and d!1493144 d!1492964)))

(assert (=> bs!1091587 (= lambda!209006 lambda!208866)))

(declare-fun bs!1091588 () Bool)

(assert (= bs!1091588 (and d!1493144 d!1493092)))

(assert (=> bs!1091588 (= lambda!209006 lambda!208993)))

(declare-fun bs!1091590 () Bool)

(assert (= bs!1091590 (and d!1493144 d!1492982)))

(assert (=> bs!1091590 (= lambda!209006 lambda!208883)))

(declare-fun bs!1091592 () Bool)

(assert (= bs!1091592 (and d!1493144 start!475728)))

(assert (=> bs!1091592 (= lambda!209006 lambda!208857)))

(declare-fun bs!1091594 () Bool)

(assert (= bs!1091594 (and d!1493144 d!1493062)))

(assert (=> bs!1091594 (= lambda!209006 lambda!208969)))

(declare-fun bs!1091596 () Bool)

(assert (= bs!1091596 (and d!1493144 d!1493142)))

(assert (=> bs!1091596 (= lambda!209006 lambda!209002)))

(declare-fun bs!1091598 () Bool)

(assert (= bs!1091598 (and d!1493144 d!1493130)))

(assert (=> bs!1091598 (= lambda!209006 lambda!208996)))

(declare-fun lt!1857994 () ListMap!5013)

(assert (=> d!1493144 (invariantList!1430 (toList!5649 lt!1857994))))

(declare-fun e!2929784 () ListMap!5013)

(assert (=> d!1493144 (= lt!1857994 e!2929784)))

(declare-fun c!802887 () Bool)

(assert (=> d!1493144 (= c!802887 ((_ is Cons!52482) (Cons!52482 lt!1857430 lt!1857462)))))

(assert (=> d!1493144 (forall!11367 (Cons!52482 lt!1857430 lt!1857462) lambda!209006)))

(assert (=> d!1493144 (= (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462)) lt!1857994)))

(declare-fun b!4696499 () Bool)

(assert (=> b!4696499 (= e!2929784 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (Cons!52482 lt!1857430 lt!1857462))) (extractMap!1906 (t!359802 (Cons!52482 lt!1857430 lt!1857462)))))))

(declare-fun b!4696500 () Bool)

(assert (=> b!4696500 (= e!2929784 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493144 c!802887) b!4696499))

(assert (= (and d!1493144 (not c!802887)) b!4696500))

(declare-fun m!5605743 () Bool)

(assert (=> d!1493144 m!5605743))

(declare-fun m!5605745 () Bool)

(assert (=> d!1493144 m!5605745))

(declare-fun m!5605747 () Bool)

(assert (=> b!4696499 m!5605747))

(assert (=> b!4696499 m!5605747))

(declare-fun m!5605749 () Bool)

(assert (=> b!4696499 m!5605749))

(assert (=> b!4696118 d!1493144))

(declare-fun d!1493146 () Bool)

(declare-fun e!2929797 () Bool)

(assert (=> d!1493146 e!2929797))

(declare-fun res!1982039 () Bool)

(assert (=> d!1493146 (=> (not res!1982039) (not e!2929797))))

(declare-fun lt!1858002 () ListMap!5013)

(assert (=> d!1493146 (= res!1982039 (not (contains!15726 lt!1858002 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!351 (List!52605 K!13850) List!52605)

(assert (=> d!1493146 (= lt!1858002 (ListMap!5014 (removePresrvNoDuplicatedKeys!351 (toList!5649 (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462))) key!4653)))))

(assert (=> d!1493146 (= (-!684 (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462)) key!4653) lt!1858002)))

(declare-fun b!4696522 () Bool)

(declare-fun content!9222 (List!52608) (InoxSet K!13850))

(assert (=> b!4696522 (= e!2929797 (= ((_ map and) (content!9222 (keys!18759 (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462)))) ((_ map not) (store ((as const (Array K!13850 Bool)) false) key!4653 true))) (content!9222 (keys!18759 lt!1858002))))))

(assert (= (and d!1493146 res!1982039) b!4696522))

(declare-fun m!5605775 () Bool)

(assert (=> d!1493146 m!5605775))

(declare-fun m!5605777 () Bool)

(assert (=> d!1493146 m!5605777))

(declare-fun m!5605779 () Bool)

(assert (=> b!4696522 m!5605779))

(declare-fun m!5605781 () Bool)

(assert (=> b!4696522 m!5605781))

(declare-fun m!5605783 () Bool)

(assert (=> b!4696522 m!5605783))

(declare-fun m!5605785 () Bool)

(assert (=> b!4696522 m!5605785))

(assert (=> b!4696522 m!5604865))

(assert (=> b!4696522 m!5605783))

(assert (=> b!4696522 m!5605779))

(declare-fun m!5605787 () Bool)

(assert (=> b!4696522 m!5605787))

(assert (=> b!4696118 d!1493146))

(declare-fun bs!1091610 () Bool)

(declare-fun d!1493164 () Bool)

(assert (= bs!1091610 (and d!1493164 d!1493116)))

(declare-fun lambda!209009 () Int)

(assert (=> bs!1091610 (= lambda!209009 lambda!208995)))

(declare-fun bs!1091611 () Bool)

(assert (= bs!1091611 (and d!1493164 d!1493138)))

(assert (=> bs!1091611 (= lambda!209009 lambda!209001)))

(declare-fun bs!1091612 () Bool)

(assert (= bs!1091612 (and d!1493164 d!1492964)))

(assert (=> bs!1091612 (= lambda!209009 lambda!208866)))

(declare-fun bs!1091613 () Bool)

(assert (= bs!1091613 (and d!1493164 d!1493092)))

(assert (=> bs!1091613 (= lambda!209009 lambda!208993)))

(declare-fun bs!1091614 () Bool)

(assert (= bs!1091614 (and d!1493164 d!1492982)))

(assert (=> bs!1091614 (= lambda!209009 lambda!208883)))

(declare-fun bs!1091615 () Bool)

(assert (= bs!1091615 (and d!1493164 start!475728)))

(assert (=> bs!1091615 (= lambda!209009 lambda!208857)))

(declare-fun bs!1091616 () Bool)

(assert (= bs!1091616 (and d!1493164 d!1493062)))

(assert (=> bs!1091616 (= lambda!209009 lambda!208969)))

(declare-fun bs!1091617 () Bool)

(assert (= bs!1091617 (and d!1493164 d!1493142)))

(assert (=> bs!1091617 (= lambda!209009 lambda!209002)))

(declare-fun bs!1091618 () Bool)

(assert (= bs!1091618 (and d!1493164 d!1493144)))

(assert (=> bs!1091618 (= lambda!209009 lambda!209006)))

(declare-fun bs!1091619 () Bool)

(assert (= bs!1091619 (and d!1493164 d!1493130)))

(assert (=> bs!1091619 (= lambda!209009 lambda!208996)))

(assert (=> d!1493164 (eq!1039 (extractMap!1906 (Cons!52482 (tuple2!53917 hash!405 lt!1857443) (tail!8666 (toList!5650 lt!1857447)))) (-!684 (extractMap!1906 (Cons!52482 (tuple2!53917 hash!405 (t!359801 oldBucket!34)) (tail!8666 (toList!5650 lt!1857447)))) key!4653))))

(declare-fun lt!1858005 () Unit!125277)

(declare-fun choose!32753 (ListLongMap!4179 (_ BitVec 64) List!52605 List!52605 K!13850 Hashable!6249) Unit!125277)

(assert (=> d!1493164 (= lt!1858005 (choose!32753 lt!1857447 hash!405 (t!359801 oldBucket!34) lt!1857443 key!4653 hashF!1323))))

(assert (=> d!1493164 (forall!11367 (toList!5650 lt!1857447) lambda!209009)))

(assert (=> d!1493164 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!54 lt!1857447 hash!405 (t!359801 oldBucket!34) lt!1857443 key!4653 hashF!1323) lt!1858005)))

(declare-fun bs!1091620 () Bool)

(assert (= bs!1091620 d!1493164))

(declare-fun m!5605789 () Bool)

(assert (=> bs!1091620 m!5605789))

(declare-fun m!5605791 () Bool)

(assert (=> bs!1091620 m!5605791))

(declare-fun m!5605793 () Bool)

(assert (=> bs!1091620 m!5605793))

(declare-fun m!5605795 () Bool)

(assert (=> bs!1091620 m!5605795))

(declare-fun m!5605797 () Bool)

(assert (=> bs!1091620 m!5605797))

(assert (=> bs!1091620 m!5605791))

(assert (=> bs!1091620 m!5605797))

(declare-fun m!5605799 () Bool)

(assert (=> bs!1091620 m!5605799))

(declare-fun m!5605801 () Bool)

(assert (=> bs!1091620 m!5605801))

(assert (=> bs!1091620 m!5605795))

(assert (=> b!4696118 d!1493164))

(declare-fun d!1493166 () Bool)

(assert (=> d!1493166 (= (eq!1039 (extractMap!1906 (Cons!52482 lt!1857449 lt!1857462)) (-!684 (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462)) key!4653)) (= (content!9221 (toList!5649 (extractMap!1906 (Cons!52482 lt!1857449 lt!1857462)))) (content!9221 (toList!5649 (-!684 (extractMap!1906 (Cons!52482 lt!1857430 lt!1857462)) key!4653)))))))

(declare-fun bs!1091621 () Bool)

(assert (= bs!1091621 d!1493166))

(declare-fun m!5605803 () Bool)

(assert (=> bs!1091621 m!5605803))

(declare-fun m!5605805 () Bool)

(assert (=> bs!1091621 m!5605805))

(assert (=> b!4696118 d!1493166))

(declare-fun d!1493168 () Bool)

(assert (=> d!1493168 (= (eq!1039 lt!1857438 lt!1857456) (= (content!9221 (toList!5649 lt!1857438)) (content!9221 (toList!5649 lt!1857456))))))

(declare-fun bs!1091622 () Bool)

(assert (= bs!1091622 d!1493168))

(declare-fun m!5605807 () Bool)

(assert (=> bs!1091622 m!5605807))

(declare-fun m!5605809 () Bool)

(assert (=> bs!1091622 m!5605809))

(assert (=> b!4696118 d!1493168))

(declare-fun d!1493170 () Bool)

(assert (=> d!1493170 (= (tail!8666 lt!1857451) (t!359802 lt!1857451))))

(assert (=> b!4696118 d!1493170))

(declare-fun d!1493172 () Bool)

(declare-fun e!2929798 () Bool)

(assert (=> d!1493172 e!2929798))

(declare-fun res!1982040 () Bool)

(assert (=> d!1493172 (=> (not res!1982040) (not e!2929798))))

(declare-fun lt!1858006 () ListMap!5013)

(assert (=> d!1493172 (= res!1982040 (not (contains!15726 lt!1858006 key!4653)))))

(assert (=> d!1493172 (= lt!1858006 (ListMap!5014 (removePresrvNoDuplicatedKeys!351 (toList!5649 lt!1857442) key!4653)))))

(assert (=> d!1493172 (= (-!684 lt!1857442 key!4653) lt!1858006)))

(declare-fun b!4696523 () Bool)

(assert (=> b!4696523 (= e!2929798 (= ((_ map and) (content!9222 (keys!18759 lt!1857442)) ((_ map not) (store ((as const (Array K!13850 Bool)) false) key!4653 true))) (content!9222 (keys!18759 lt!1858006))))))

(assert (= (and d!1493172 res!1982040) b!4696523))

(declare-fun m!5605811 () Bool)

(assert (=> d!1493172 m!5605811))

(declare-fun m!5605813 () Bool)

(assert (=> d!1493172 m!5605813))

(declare-fun m!5605815 () Bool)

(assert (=> b!4696523 m!5605815))

(assert (=> b!4696523 m!5605781))

(assert (=> b!4696523 m!5605427))

(declare-fun m!5605817 () Bool)

(assert (=> b!4696523 m!5605817))

(assert (=> b!4696523 m!5605427))

(assert (=> b!4696523 m!5605815))

(declare-fun m!5605819 () Bool)

(assert (=> b!4696523 m!5605819))

(assert (=> b!4696118 d!1493172))

(declare-fun d!1493174 () Bool)

(declare-fun e!2929799 () Bool)

(assert (=> d!1493174 e!2929799))

(declare-fun res!1982042 () Bool)

(assert (=> d!1493174 (=> (not res!1982042) (not e!2929799))))

(declare-fun lt!1858007 () ListMap!5013)

(assert (=> d!1493174 (= res!1982042 (contains!15726 lt!1858007 (_1!30251 (h!58746 oldBucket!34))))))

(declare-fun lt!1858009 () List!52605)

(assert (=> d!1493174 (= lt!1858007 (ListMap!5014 lt!1858009))))

(declare-fun lt!1858010 () Unit!125277)

(declare-fun lt!1858008 () Unit!125277)

(assert (=> d!1493174 (= lt!1858010 lt!1858008)))

(assert (=> d!1493174 (= (getValueByKey!1821 lt!1858009 (_1!30251 (h!58746 oldBucket!34))) (Some!12146 (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493174 (= lt!1858008 (lemmaContainsTupThenGetReturnValue!1020 lt!1858009 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493174 (= lt!1858009 (insertNoDuplicatedKeys!528 (toList!5649 lt!1857456) (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493174 (= (+!2164 lt!1857456 (h!58746 oldBucket!34)) lt!1858007)))

(declare-fun b!4696524 () Bool)

(declare-fun res!1982041 () Bool)

(assert (=> b!4696524 (=> (not res!1982041) (not e!2929799))))

(assert (=> b!4696524 (= res!1982041 (= (getValueByKey!1821 (toList!5649 lt!1858007) (_1!30251 (h!58746 oldBucket!34))) (Some!12146 (_2!30251 (h!58746 oldBucket!34)))))))

(declare-fun b!4696525 () Bool)

(assert (=> b!4696525 (= e!2929799 (contains!15730 (toList!5649 lt!1858007) (h!58746 oldBucket!34)))))

(assert (= (and d!1493174 res!1982042) b!4696524))

(assert (= (and b!4696524 res!1982041) b!4696525))

(declare-fun m!5605821 () Bool)

(assert (=> d!1493174 m!5605821))

(declare-fun m!5605823 () Bool)

(assert (=> d!1493174 m!5605823))

(declare-fun m!5605825 () Bool)

(assert (=> d!1493174 m!5605825))

(declare-fun m!5605827 () Bool)

(assert (=> d!1493174 m!5605827))

(declare-fun m!5605829 () Bool)

(assert (=> b!4696524 m!5605829))

(declare-fun m!5605831 () Bool)

(assert (=> b!4696525 m!5605831))

(assert (=> b!4696129 d!1493174))

(declare-fun d!1493176 () Bool)

(declare-fun e!2929800 () Bool)

(assert (=> d!1493176 e!2929800))

(declare-fun res!1982043 () Bool)

(assert (=> d!1493176 (=> (not res!1982043) (not e!2929800))))

(declare-fun lt!1858011 () ListMap!5013)

(assert (=> d!1493176 (= res!1982043 (not (contains!15726 lt!1858011 key!4653)))))

(assert (=> d!1493176 (= lt!1858011 (ListMap!5014 (removePresrvNoDuplicatedKeys!351 (toList!5649 (+!2164 lt!1857442 (h!58746 oldBucket!34))) key!4653)))))

(assert (=> d!1493176 (= (-!684 (+!2164 lt!1857442 (h!58746 oldBucket!34)) key!4653) lt!1858011)))

(declare-fun b!4696526 () Bool)

(assert (=> b!4696526 (= e!2929800 (= ((_ map and) (content!9222 (keys!18759 (+!2164 lt!1857442 (h!58746 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13850 Bool)) false) key!4653 true))) (content!9222 (keys!18759 lt!1858011))))))

(assert (= (and d!1493176 res!1982043) b!4696526))

(declare-fun m!5605833 () Bool)

(assert (=> d!1493176 m!5605833))

(declare-fun m!5605835 () Bool)

(assert (=> d!1493176 m!5605835))

(declare-fun m!5605837 () Bool)

(assert (=> b!4696526 m!5605837))

(assert (=> b!4696526 m!5605781))

(declare-fun m!5605839 () Bool)

(assert (=> b!4696526 m!5605839))

(declare-fun m!5605841 () Bool)

(assert (=> b!4696526 m!5605841))

(assert (=> b!4696526 m!5604819))

(assert (=> b!4696526 m!5605839))

(assert (=> b!4696526 m!5605837))

(declare-fun m!5605843 () Bool)

(assert (=> b!4696526 m!5605843))

(assert (=> b!4696129 d!1493176))

(declare-fun d!1493178 () Bool)

(declare-fun e!2929801 () Bool)

(assert (=> d!1493178 e!2929801))

(declare-fun res!1982045 () Bool)

(assert (=> d!1493178 (=> (not res!1982045) (not e!2929801))))

(declare-fun lt!1858012 () ListMap!5013)

(assert (=> d!1493178 (= res!1982045 (contains!15726 lt!1858012 (_1!30251 (h!58746 oldBucket!34))))))

(declare-fun lt!1858014 () List!52605)

(assert (=> d!1493178 (= lt!1858012 (ListMap!5014 lt!1858014))))

(declare-fun lt!1858015 () Unit!125277)

(declare-fun lt!1858013 () Unit!125277)

(assert (=> d!1493178 (= lt!1858015 lt!1858013)))

(assert (=> d!1493178 (= (getValueByKey!1821 lt!1858014 (_1!30251 (h!58746 oldBucket!34))) (Some!12146 (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493178 (= lt!1858013 (lemmaContainsTupThenGetReturnValue!1020 lt!1858014 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493178 (= lt!1858014 (insertNoDuplicatedKeys!528 (toList!5649 lt!1857442) (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34))))))

(assert (=> d!1493178 (= (+!2164 lt!1857442 (h!58746 oldBucket!34)) lt!1858012)))

(declare-fun b!4696527 () Bool)

(declare-fun res!1982044 () Bool)

(assert (=> b!4696527 (=> (not res!1982044) (not e!2929801))))

(assert (=> b!4696527 (= res!1982044 (= (getValueByKey!1821 (toList!5649 lt!1858012) (_1!30251 (h!58746 oldBucket!34))) (Some!12146 (_2!30251 (h!58746 oldBucket!34)))))))

(declare-fun b!4696528 () Bool)

(assert (=> b!4696528 (= e!2929801 (contains!15730 (toList!5649 lt!1858012) (h!58746 oldBucket!34)))))

(assert (= (and d!1493178 res!1982045) b!4696527))

(assert (= (and b!4696527 res!1982044) b!4696528))

(declare-fun m!5605845 () Bool)

(assert (=> d!1493178 m!5605845))

(declare-fun m!5605847 () Bool)

(assert (=> d!1493178 m!5605847))

(declare-fun m!5605849 () Bool)

(assert (=> d!1493178 m!5605849))

(declare-fun m!5605851 () Bool)

(assert (=> d!1493178 m!5605851))

(declare-fun m!5605853 () Bool)

(assert (=> b!4696527 m!5605853))

(declare-fun m!5605855 () Bool)

(assert (=> b!4696528 m!5605855))

(assert (=> b!4696129 d!1493178))

(declare-fun d!1493180 () Bool)

(assert (=> d!1493180 (= (-!684 (+!2164 lt!1857442 (tuple2!53915 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34)))) key!4653) (+!2164 (-!684 lt!1857442 key!4653) (tuple2!53915 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34)))))))

(declare-fun lt!1858018 () Unit!125277)

(declare-fun choose!32754 (ListMap!5013 K!13850 V!14096 K!13850) Unit!125277)

(assert (=> d!1493180 (= lt!1858018 (choose!32754 lt!1857442 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34)) key!4653))))

(assert (=> d!1493180 (not (= (_1!30251 (h!58746 oldBucket!34)) key!4653))))

(assert (=> d!1493180 (= (addRemoveCommutativeForDiffKeys!85 lt!1857442 (_1!30251 (h!58746 oldBucket!34)) (_2!30251 (h!58746 oldBucket!34)) key!4653) lt!1858018)))

(declare-fun bs!1091623 () Bool)

(assert (= bs!1091623 d!1493180))

(declare-fun m!5605857 () Bool)

(assert (=> bs!1091623 m!5605857))

(assert (=> bs!1091623 m!5605857))

(declare-fun m!5605859 () Bool)

(assert (=> bs!1091623 m!5605859))

(assert (=> bs!1091623 m!5604855))

(assert (=> bs!1091623 m!5604855))

(declare-fun m!5605861 () Bool)

(assert (=> bs!1091623 m!5605861))

(declare-fun m!5605863 () Bool)

(assert (=> bs!1091623 m!5605863))

(assert (=> b!4696129 d!1493180))

(declare-fun d!1493182 () Bool)

(declare-fun res!1982046 () Bool)

(declare-fun e!2929802 () Bool)

(assert (=> d!1493182 (=> res!1982046 e!2929802)))

(assert (=> d!1493182 (= res!1982046 (not ((_ is Cons!52481) newBucket!218)))))

(assert (=> d!1493182 (= (noDuplicateKeys!1880 newBucket!218) e!2929802)))

(declare-fun b!4696529 () Bool)

(declare-fun e!2929803 () Bool)

(assert (=> b!4696529 (= e!2929802 e!2929803)))

(declare-fun res!1982047 () Bool)

(assert (=> b!4696529 (=> (not res!1982047) (not e!2929803))))

(assert (=> b!4696529 (= res!1982047 (not (containsKey!3119 (t!359801 newBucket!218) (_1!30251 (h!58746 newBucket!218)))))))

(declare-fun b!4696530 () Bool)

(assert (=> b!4696530 (= e!2929803 (noDuplicateKeys!1880 (t!359801 newBucket!218)))))

(assert (= (and d!1493182 (not res!1982046)) b!4696529))

(assert (= (and b!4696529 res!1982047) b!4696530))

(declare-fun m!5605865 () Bool)

(assert (=> b!4696529 m!5605865))

(declare-fun m!5605867 () Bool)

(assert (=> b!4696530 m!5605867))

(assert (=> b!4696108 d!1493182))

(declare-fun b!4696542 () Bool)

(declare-fun e!2929808 () List!52605)

(assert (=> b!4696542 (= e!2929808 Nil!52481)))

(declare-fun b!4696539 () Bool)

(declare-fun e!2929809 () List!52605)

(assert (=> b!4696539 (= e!2929809 (t!359801 (t!359801 oldBucket!34)))))

(declare-fun d!1493184 () Bool)

(declare-fun lt!1858021 () List!52605)

(assert (=> d!1493184 (not (containsKey!3119 lt!1858021 key!4653))))

(assert (=> d!1493184 (= lt!1858021 e!2929809)))

(declare-fun c!802895 () Bool)

(assert (=> d!1493184 (= c!802895 (and ((_ is Cons!52481) (t!359801 oldBucket!34)) (= (_1!30251 (h!58746 (t!359801 oldBucket!34))) key!4653)))))

(assert (=> d!1493184 (noDuplicateKeys!1880 (t!359801 oldBucket!34))))

(assert (=> d!1493184 (= (removePairForKey!1475 (t!359801 oldBucket!34) key!4653) lt!1858021)))

(declare-fun b!4696541 () Bool)

(assert (=> b!4696541 (= e!2929808 (Cons!52481 (h!58746 (t!359801 oldBucket!34)) (removePairForKey!1475 (t!359801 (t!359801 oldBucket!34)) key!4653)))))

(declare-fun b!4696540 () Bool)

(assert (=> b!4696540 (= e!2929809 e!2929808)))

(declare-fun c!802894 () Bool)

(assert (=> b!4696540 (= c!802894 ((_ is Cons!52481) (t!359801 oldBucket!34)))))

(assert (= (and d!1493184 c!802895) b!4696539))

(assert (= (and d!1493184 (not c!802895)) b!4696540))

(assert (= (and b!4696540 c!802894) b!4696541))

(assert (= (and b!4696540 (not c!802894)) b!4696542))

(declare-fun m!5605869 () Bool)

(assert (=> d!1493184 m!5605869))

(assert (=> d!1493184 m!5604897))

(declare-fun m!5605871 () Bool)

(assert (=> b!4696541 m!5605871))

(assert (=> b!4696127 d!1493184))

(declare-fun d!1493186 () Bool)

(assert (=> d!1493186 (= (eq!1039 lt!1857437 lt!1857461) (= (content!9221 (toList!5649 lt!1857437)) (content!9221 (toList!5649 lt!1857461))))))

(declare-fun bs!1091624 () Bool)

(assert (= bs!1091624 d!1493186))

(declare-fun m!5605873 () Bool)

(assert (=> bs!1091624 m!5605873))

(declare-fun m!5605875 () Bool)

(assert (=> bs!1091624 m!5605875))

(assert (=> b!4696117 d!1493186))

(declare-fun d!1493188 () Bool)

(declare-fun res!1982052 () Bool)

(declare-fun e!2929814 () Bool)

(assert (=> d!1493188 (=> res!1982052 e!2929814)))

(assert (=> d!1493188 (= res!1982052 ((_ is Nil!52482) (toList!5650 lm!2023)))))

(assert (=> d!1493188 (= (forall!11367 (toList!5650 lm!2023) lambda!208857) e!2929814)))

(declare-fun b!4696547 () Bool)

(declare-fun e!2929815 () Bool)

(assert (=> b!4696547 (= e!2929814 e!2929815)))

(declare-fun res!1982053 () Bool)

(assert (=> b!4696547 (=> (not res!1982053) (not e!2929815))))

(assert (=> b!4696547 (= res!1982053 (dynLambda!21733 lambda!208857 (h!58747 (toList!5650 lm!2023))))))

(declare-fun b!4696548 () Bool)

(assert (=> b!4696548 (= e!2929815 (forall!11367 (t!359802 (toList!5650 lm!2023)) lambda!208857))))

(assert (= (and d!1493188 (not res!1982052)) b!4696547))

(assert (= (and b!4696547 res!1982053) b!4696548))

(declare-fun b_lambda!177219 () Bool)

(assert (=> (not b_lambda!177219) (not b!4696547)))

(declare-fun m!5605877 () Bool)

(assert (=> b!4696547 m!5605877))

(declare-fun m!5605879 () Bool)

(assert (=> b!4696548 m!5605879))

(assert (=> start!475728 d!1493188))

(declare-fun d!1493190 () Bool)

(declare-fun isStrictlySorted!670 (List!52606) Bool)

(assert (=> d!1493190 (= (inv!67724 lm!2023) (isStrictlySorted!670 (toList!5650 lm!2023)))))

(declare-fun bs!1091625 () Bool)

(assert (= bs!1091625 d!1493190))

(declare-fun m!5605881 () Bool)

(assert (=> bs!1091625 m!5605881))

(assert (=> start!475728 d!1493190))

(declare-fun b!4696552 () Bool)

(declare-fun e!2929816 () List!52605)

(assert (=> b!4696552 (= e!2929816 Nil!52481)))

(declare-fun b!4696549 () Bool)

(declare-fun e!2929817 () List!52605)

(assert (=> b!4696549 (= e!2929817 (t!359801 oldBucket!34))))

(declare-fun d!1493192 () Bool)

(declare-fun lt!1858022 () List!52605)

(assert (=> d!1493192 (not (containsKey!3119 lt!1858022 key!4653))))

(assert (=> d!1493192 (= lt!1858022 e!2929817)))

(declare-fun c!802897 () Bool)

(assert (=> d!1493192 (= c!802897 (and ((_ is Cons!52481) oldBucket!34) (= (_1!30251 (h!58746 oldBucket!34)) key!4653)))))

(assert (=> d!1493192 (noDuplicateKeys!1880 oldBucket!34)))

(assert (=> d!1493192 (= (removePairForKey!1475 oldBucket!34 key!4653) lt!1858022)))

(declare-fun b!4696551 () Bool)

(assert (=> b!4696551 (= e!2929816 (Cons!52481 (h!58746 oldBucket!34) (removePairForKey!1475 (t!359801 oldBucket!34) key!4653)))))

(declare-fun b!4696550 () Bool)

(assert (=> b!4696550 (= e!2929817 e!2929816)))

(declare-fun c!802896 () Bool)

(assert (=> b!4696550 (= c!802896 ((_ is Cons!52481) oldBucket!34))))

(assert (= (and d!1493192 c!802897) b!4696549))

(assert (= (and d!1493192 (not c!802897)) b!4696550))

(assert (= (and b!4696550 c!802896) b!4696551))

(assert (= (and b!4696550 (not c!802896)) b!4696552))

(declare-fun m!5605883 () Bool)

(assert (=> d!1493192 m!5605883))

(assert (=> d!1493192 m!5604825))

(assert (=> b!4696551 m!5604813))

(assert (=> b!4696128 d!1493192))

(declare-fun d!1493194 () Bool)

(declare-fun res!1982054 () Bool)

(declare-fun e!2929818 () Bool)

(assert (=> d!1493194 (=> res!1982054 e!2929818)))

(assert (=> d!1493194 (= res!1982054 ((_ is Nil!52482) lt!1857436))))

(assert (=> d!1493194 (= (forall!11367 lt!1857436 lambda!208857) e!2929818)))

(declare-fun b!4696553 () Bool)

(declare-fun e!2929819 () Bool)

(assert (=> b!4696553 (= e!2929818 e!2929819)))

(declare-fun res!1982055 () Bool)

(assert (=> b!4696553 (=> (not res!1982055) (not e!2929819))))

(assert (=> b!4696553 (= res!1982055 (dynLambda!21733 lambda!208857 (h!58747 lt!1857436)))))

(declare-fun b!4696554 () Bool)

(assert (=> b!4696554 (= e!2929819 (forall!11367 (t!359802 lt!1857436) lambda!208857))))

(assert (= (and d!1493194 (not res!1982054)) b!4696553))

(assert (= (and b!4696553 res!1982055) b!4696554))

(declare-fun b_lambda!177221 () Bool)

(assert (=> (not b_lambda!177221) (not b!4696553)))

(declare-fun m!5605885 () Bool)

(assert (=> b!4696553 m!5605885))

(declare-fun m!5605887 () Bool)

(assert (=> b!4696554 m!5605887))

(assert (=> b!4696115 d!1493194))

(declare-fun d!1493196 () Bool)

(assert (=> d!1493196 (= (eq!1039 lt!1857446 (+!2164 lt!1857453 lt!1857441)) (= (content!9221 (toList!5649 lt!1857446)) (content!9221 (toList!5649 (+!2164 lt!1857453 lt!1857441)))))))

(declare-fun bs!1091626 () Bool)

(assert (= bs!1091626 d!1493196))

(assert (=> bs!1091626 m!5605347))

(declare-fun m!5605889 () Bool)

(assert (=> bs!1091626 m!5605889))

(assert (=> b!4696126 d!1493196))

(declare-fun d!1493198 () Bool)

(declare-fun e!2929820 () Bool)

(assert (=> d!1493198 e!2929820))

(declare-fun res!1982057 () Bool)

(assert (=> d!1493198 (=> (not res!1982057) (not e!2929820))))

(declare-fun lt!1858023 () ListMap!5013)

(assert (=> d!1493198 (= res!1982057 (contains!15726 lt!1858023 (_1!30251 lt!1857441)))))

(declare-fun lt!1858025 () List!52605)

(assert (=> d!1493198 (= lt!1858023 (ListMap!5014 lt!1858025))))

(declare-fun lt!1858026 () Unit!125277)

(declare-fun lt!1858024 () Unit!125277)

(assert (=> d!1493198 (= lt!1858026 lt!1858024)))

(assert (=> d!1493198 (= (getValueByKey!1821 lt!1858025 (_1!30251 lt!1857441)) (Some!12146 (_2!30251 lt!1857441)))))

(assert (=> d!1493198 (= lt!1858024 (lemmaContainsTupThenGetReturnValue!1020 lt!1858025 (_1!30251 lt!1857441) (_2!30251 lt!1857441)))))

(assert (=> d!1493198 (= lt!1858025 (insertNoDuplicatedKeys!528 (toList!5649 lt!1857453) (_1!30251 lt!1857441) (_2!30251 lt!1857441)))))

(assert (=> d!1493198 (= (+!2164 lt!1857453 lt!1857441) lt!1858023)))

(declare-fun b!4696555 () Bool)

(declare-fun res!1982056 () Bool)

(assert (=> b!4696555 (=> (not res!1982056) (not e!2929820))))

(assert (=> b!4696555 (= res!1982056 (= (getValueByKey!1821 (toList!5649 lt!1858023) (_1!30251 lt!1857441)) (Some!12146 (_2!30251 lt!1857441))))))

(declare-fun b!4696556 () Bool)

(assert (=> b!4696556 (= e!2929820 (contains!15730 (toList!5649 lt!1858023) lt!1857441))))

(assert (= (and d!1493198 res!1982057) b!4696555))

(assert (= (and b!4696555 res!1982056) b!4696556))

(declare-fun m!5605891 () Bool)

(assert (=> d!1493198 m!5605891))

(declare-fun m!5605893 () Bool)

(assert (=> d!1493198 m!5605893))

(declare-fun m!5605895 () Bool)

(assert (=> d!1493198 m!5605895))

(declare-fun m!5605897 () Bool)

(assert (=> d!1493198 m!5605897))

(declare-fun m!5605899 () Bool)

(assert (=> b!4696555 m!5605899))

(declare-fun m!5605901 () Bool)

(assert (=> b!4696556 m!5605901))

(assert (=> b!4696126 d!1493198))

(declare-fun d!1493200 () Bool)

(declare-fun e!2929823 () Bool)

(assert (=> d!1493200 e!2929823))

(declare-fun res!1982058 () Bool)

(assert (=> d!1493200 (=> res!1982058 e!2929823)))

(declare-fun e!2929825 () Bool)

(assert (=> d!1493200 (= res!1982058 e!2929825)))

(declare-fun res!1982059 () Bool)

(assert (=> d!1493200 (=> (not res!1982059) (not e!2929825))))

(declare-fun lt!1858030 () Bool)

(assert (=> d!1493200 (= res!1982059 (not lt!1858030))))

(declare-fun lt!1858028 () Bool)

(assert (=> d!1493200 (= lt!1858030 lt!1858028)))

(declare-fun lt!1858027 () Unit!125277)

(declare-fun e!2929822 () Unit!125277)

(assert (=> d!1493200 (= lt!1858027 e!2929822)))

(declare-fun c!802900 () Bool)

(assert (=> d!1493200 (= c!802900 lt!1858028)))

(assert (=> d!1493200 (= lt!1858028 (containsKey!3122 (toList!5649 lt!1857445) key!4653))))

(assert (=> d!1493200 (= (contains!15726 lt!1857445 key!4653) lt!1858030)))

(declare-fun b!4696557 () Bool)

(declare-fun e!2929821 () Bool)

(assert (=> b!4696557 (= e!2929821 (contains!15731 (keys!18759 lt!1857445) key!4653))))

(declare-fun bm!328299 () Bool)

(declare-fun call!328304 () Bool)

(declare-fun e!2929826 () List!52608)

(assert (=> bm!328299 (= call!328304 (contains!15731 e!2929826 key!4653))))

(declare-fun c!802898 () Bool)

(assert (=> bm!328299 (= c!802898 c!802900)))

(declare-fun b!4696558 () Bool)

(assert (=> b!4696558 (= e!2929826 (getKeysList!869 (toList!5649 lt!1857445)))))

(declare-fun b!4696559 () Bool)

(assert (=> b!4696559 (= e!2929826 (keys!18759 lt!1857445))))

(declare-fun b!4696560 () Bool)

(assert (=> b!4696560 false))

(declare-fun lt!1858029 () Unit!125277)

(declare-fun lt!1858034 () Unit!125277)

(assert (=> b!4696560 (= lt!1858029 lt!1858034)))

(assert (=> b!4696560 (containsKey!3122 (toList!5649 lt!1857445) key!4653)))

(assert (=> b!4696560 (= lt!1858034 (lemmaInGetKeysListThenContainsKey!868 (toList!5649 lt!1857445) key!4653))))

(declare-fun e!2929824 () Unit!125277)

(declare-fun Unit!125386 () Unit!125277)

(assert (=> b!4696560 (= e!2929824 Unit!125386)))

(declare-fun b!4696561 () Bool)

(assert (=> b!4696561 (= e!2929823 e!2929821)))

(declare-fun res!1982060 () Bool)

(assert (=> b!4696561 (=> (not res!1982060) (not e!2929821))))

(assert (=> b!4696561 (= res!1982060 (isDefined!9401 (getValueByKey!1821 (toList!5649 lt!1857445) key!4653)))))

(declare-fun b!4696562 () Bool)

(declare-fun lt!1858033 () Unit!125277)

(assert (=> b!4696562 (= e!2929822 lt!1858033)))

(declare-fun lt!1858031 () Unit!125277)

(assert (=> b!4696562 (= lt!1858031 (lemmaContainsKeyImpliesGetValueByKeyDefined!1712 (toList!5649 lt!1857445) key!4653))))

(assert (=> b!4696562 (isDefined!9401 (getValueByKey!1821 (toList!5649 lt!1857445) key!4653))))

(declare-fun lt!1858032 () Unit!125277)

(assert (=> b!4696562 (= lt!1858032 lt!1858031)))

(assert (=> b!4696562 (= lt!1858033 (lemmaInListThenGetKeysListContains!864 (toList!5649 lt!1857445) key!4653))))

(assert (=> b!4696562 call!328304))

(declare-fun b!4696563 () Bool)

(assert (=> b!4696563 (= e!2929825 (not (contains!15731 (keys!18759 lt!1857445) key!4653)))))

(declare-fun b!4696564 () Bool)

(declare-fun Unit!125387 () Unit!125277)

(assert (=> b!4696564 (= e!2929824 Unit!125387)))

(declare-fun b!4696565 () Bool)

(assert (=> b!4696565 (= e!2929822 e!2929824)))

(declare-fun c!802899 () Bool)

(assert (=> b!4696565 (= c!802899 call!328304)))

(assert (= (and d!1493200 c!802900) b!4696562))

(assert (= (and d!1493200 (not c!802900)) b!4696565))

(assert (= (and b!4696565 c!802899) b!4696560))

(assert (= (and b!4696565 (not c!802899)) b!4696564))

(assert (= (or b!4696562 b!4696565) bm!328299))

(assert (= (and bm!328299 c!802898) b!4696558))

(assert (= (and bm!328299 (not c!802898)) b!4696559))

(assert (= (and d!1493200 res!1982059) b!4696563))

(assert (= (and d!1493200 (not res!1982058)) b!4696561))

(assert (= (and b!4696561 res!1982060) b!4696557))

(declare-fun m!5605903 () Bool)

(assert (=> b!4696558 m!5605903))

(declare-fun m!5605905 () Bool)

(assert (=> b!4696557 m!5605905))

(assert (=> b!4696557 m!5605905))

(declare-fun m!5605907 () Bool)

(assert (=> b!4696557 m!5605907))

(declare-fun m!5605909 () Bool)

(assert (=> b!4696561 m!5605909))

(assert (=> b!4696561 m!5605909))

(declare-fun m!5605911 () Bool)

(assert (=> b!4696561 m!5605911))

(declare-fun m!5605913 () Bool)

(assert (=> d!1493200 m!5605913))

(assert (=> b!4696563 m!5605905))

(assert (=> b!4696563 m!5605905))

(assert (=> b!4696563 m!5605907))

(declare-fun m!5605915 () Bool)

(assert (=> b!4696562 m!5605915))

(assert (=> b!4696562 m!5605909))

(assert (=> b!4696562 m!5605909))

(assert (=> b!4696562 m!5605911))

(declare-fun m!5605917 () Bool)

(assert (=> b!4696562 m!5605917))

(declare-fun m!5605919 () Bool)

(assert (=> bm!328299 m!5605919))

(assert (=> b!4696560 m!5605913))

(declare-fun m!5605921 () Bool)

(assert (=> b!4696560 m!5605921))

(assert (=> b!4696559 m!5605905))

(assert (=> b!4696116 d!1493200))

(declare-fun bs!1091627 () Bool)

(declare-fun d!1493202 () Bool)

(assert (= bs!1091627 (and d!1493202 d!1493116)))

(declare-fun lambda!209010 () Int)

(assert (=> bs!1091627 (= lambda!209010 lambda!208995)))

(declare-fun bs!1091628 () Bool)

(assert (= bs!1091628 (and d!1493202 d!1493138)))

(assert (=> bs!1091628 (= lambda!209010 lambda!209001)))

(declare-fun bs!1091629 () Bool)

(assert (= bs!1091629 (and d!1493202 d!1492964)))

(assert (=> bs!1091629 (= lambda!209010 lambda!208866)))

(declare-fun bs!1091630 () Bool)

(assert (= bs!1091630 (and d!1493202 d!1493092)))

(assert (=> bs!1091630 (= lambda!209010 lambda!208993)))

(declare-fun bs!1091631 () Bool)

(assert (= bs!1091631 (and d!1493202 d!1492982)))

(assert (=> bs!1091631 (= lambda!209010 lambda!208883)))

(declare-fun bs!1091632 () Bool)

(assert (= bs!1091632 (and d!1493202 start!475728)))

(assert (=> bs!1091632 (= lambda!209010 lambda!208857)))

(declare-fun bs!1091633 () Bool)

(assert (= bs!1091633 (and d!1493202 d!1493062)))

(assert (=> bs!1091633 (= lambda!209010 lambda!208969)))

(declare-fun bs!1091634 () Bool)

(assert (= bs!1091634 (and d!1493202 d!1493142)))

(assert (=> bs!1091634 (= lambda!209010 lambda!209002)))

(declare-fun bs!1091635 () Bool)

(assert (= bs!1091635 (and d!1493202 d!1493144)))

(assert (=> bs!1091635 (= lambda!209010 lambda!209006)))

(declare-fun bs!1091636 () Bool)

(assert (= bs!1091636 (and d!1493202 d!1493164)))

(assert (=> bs!1091636 (= lambda!209010 lambda!209009)))

(declare-fun bs!1091637 () Bool)

(assert (= bs!1091637 (and d!1493202 d!1493130)))

(assert (=> bs!1091637 (= lambda!209010 lambda!208996)))

(declare-fun lt!1858035 () ListMap!5013)

(assert (=> d!1493202 (invariantList!1430 (toList!5649 lt!1858035))))

(declare-fun e!2929827 () ListMap!5013)

(assert (=> d!1493202 (= lt!1858035 e!2929827)))

(declare-fun c!802901 () Bool)

(assert (=> d!1493202 (= c!802901 ((_ is Cons!52482) (toList!5650 lm!2023)))))

(assert (=> d!1493202 (forall!11367 (toList!5650 lm!2023) lambda!209010)))

(assert (=> d!1493202 (= (extractMap!1906 (toList!5650 lm!2023)) lt!1858035)))

(declare-fun b!4696566 () Bool)

(assert (=> b!4696566 (= e!2929827 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (toList!5650 lm!2023))) (extractMap!1906 (t!359802 (toList!5650 lm!2023)))))))

(declare-fun b!4696567 () Bool)

(assert (=> b!4696567 (= e!2929827 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493202 c!802901) b!4696566))

(assert (= (and d!1493202 (not c!802901)) b!4696567))

(declare-fun m!5605923 () Bool)

(assert (=> d!1493202 m!5605923))

(declare-fun m!5605925 () Bool)

(assert (=> d!1493202 m!5605925))

(assert (=> b!4696566 m!5604807))

(assert (=> b!4696566 m!5604807))

(declare-fun m!5605927 () Bool)

(assert (=> b!4696566 m!5605927))

(assert (=> b!4696116 d!1493202))

(declare-fun bs!1091638 () Bool)

(declare-fun d!1493204 () Bool)

(assert (= bs!1091638 (and d!1493204 d!1493116)))

(declare-fun lambda!209013 () Int)

(assert (=> bs!1091638 (not (= lambda!209013 lambda!208995))))

(declare-fun bs!1091639 () Bool)

(assert (= bs!1091639 (and d!1493204 d!1493138)))

(assert (=> bs!1091639 (not (= lambda!209013 lambda!209001))))

(declare-fun bs!1091640 () Bool)

(assert (= bs!1091640 (and d!1493204 d!1492964)))

(assert (=> bs!1091640 (not (= lambda!209013 lambda!208866))))

(declare-fun bs!1091641 () Bool)

(assert (= bs!1091641 (and d!1493204 d!1493092)))

(assert (=> bs!1091641 (not (= lambda!209013 lambda!208993))))

(declare-fun bs!1091642 () Bool)

(assert (= bs!1091642 (and d!1493204 d!1492982)))

(assert (=> bs!1091642 (not (= lambda!209013 lambda!208883))))

(declare-fun bs!1091643 () Bool)

(assert (= bs!1091643 (and d!1493204 d!1493202)))

(assert (=> bs!1091643 (not (= lambda!209013 lambda!209010))))

(declare-fun bs!1091644 () Bool)

(assert (= bs!1091644 (and d!1493204 start!475728)))

(assert (=> bs!1091644 (not (= lambda!209013 lambda!208857))))

(declare-fun bs!1091645 () Bool)

(assert (= bs!1091645 (and d!1493204 d!1493062)))

(assert (=> bs!1091645 (not (= lambda!209013 lambda!208969))))

(declare-fun bs!1091646 () Bool)

(assert (= bs!1091646 (and d!1493204 d!1493142)))

(assert (=> bs!1091646 (not (= lambda!209013 lambda!209002))))

(declare-fun bs!1091647 () Bool)

(assert (= bs!1091647 (and d!1493204 d!1493144)))

(assert (=> bs!1091647 (not (= lambda!209013 lambda!209006))))

(declare-fun bs!1091648 () Bool)

(assert (= bs!1091648 (and d!1493204 d!1493164)))

(assert (=> bs!1091648 (not (= lambda!209013 lambda!209009))))

(declare-fun bs!1091649 () Bool)

(assert (= bs!1091649 (and d!1493204 d!1493130)))

(assert (=> bs!1091649 (not (= lambda!209013 lambda!208996))))

(assert (=> d!1493204 true))

(assert (=> d!1493204 (= (allKeysSameHashInMap!1794 lm!2023 hashF!1323) (forall!11367 (toList!5650 lm!2023) lambda!209013))))

(declare-fun bs!1091650 () Bool)

(assert (= bs!1091650 d!1493204))

(declare-fun m!5605929 () Bool)

(assert (=> bs!1091650 m!5605929))

(assert (=> b!4696114 d!1493204))

(declare-fun bs!1091651 () Bool)

(declare-fun d!1493206 () Bool)

(assert (= bs!1091651 (and d!1493206 b!4696395)))

(declare-fun lambda!209014 () Int)

(assert (=> bs!1091651 (not (= lambda!209014 lambda!208981))))

(declare-fun bs!1091652 () Bool)

(assert (= bs!1091652 (and d!1493206 d!1493012)))

(assert (=> bs!1091652 (not (= lambda!209014 lambda!208957))))

(declare-fun bs!1091653 () Bool)

(assert (= bs!1091653 (and d!1493206 d!1493070)))

(assert (=> bs!1091653 (not (= lambda!209014 lambda!208975))))

(declare-fun bs!1091654 () Bool)

(assert (= bs!1091654 (and d!1493206 b!4696359)))

(assert (=> bs!1091654 (not (= lambda!209014 lambda!208972))))

(declare-fun bs!1091655 () Bool)

(assert (= bs!1091655 (and d!1493206 b!4696491)))

(assert (=> bs!1091655 (not (= lambda!209014 lambda!208999))))

(declare-fun bs!1091656 () Bool)

(assert (= bs!1091656 (and d!1493206 d!1493086)))

(assert (=> bs!1091656 (not (= lambda!209014 lambda!208984))))

(declare-fun bs!1091657 () Bool)

(assert (= bs!1091657 (and d!1493206 d!1493136)))

(assert (=> bs!1091657 (not (= lambda!209014 lambda!209000))))

(declare-fun bs!1091658 () Bool)

(assert (= bs!1091658 (and d!1493206 b!4696335)))

(assert (=> bs!1091658 (not (= lambda!209014 lambda!208954))))

(declare-fun bs!1091659 () Bool)

(assert (= bs!1091659 (and d!1493206 b!4696336)))

(assert (=> bs!1091659 (not (= lambda!209014 lambda!208955))))

(assert (=> bs!1091654 (not (= lambda!209014 lambda!208971))))

(declare-fun bs!1091660 () Bool)

(assert (= bs!1091660 (and d!1493206 b!4696490)))

(assert (=> bs!1091660 (not (= lambda!209014 lambda!208997))))

(declare-fun bs!1091661 () Bool)

(assert (= bs!1091661 (and d!1493206 b!4696396)))

(assert (=> bs!1091661 (not (= lambda!209014 lambda!208982))))

(assert (=> bs!1091659 (not (= lambda!209014 lambda!208956))))

(declare-fun bs!1091662 () Bool)

(assert (= bs!1091662 (and d!1493206 b!4696358)))

(assert (=> bs!1091662 (not (= lambda!209014 lambda!208970))))

(assert (=> bs!1091661 (not (= lambda!209014 lambda!208983))))

(assert (=> bs!1091655 (not (= lambda!209014 lambda!208998))))

(declare-fun bs!1091663 () Bool)

(assert (= bs!1091663 (and d!1493206 d!1492952)))

(assert (=> bs!1091663 (= lambda!209014 lambda!208860)))

(assert (=> d!1493206 true))

(assert (=> d!1493206 true))

(assert (=> d!1493206 (= (allKeysSameHash!1706 oldBucket!34 hash!405 hashF!1323) (forall!11369 oldBucket!34 lambda!209014))))

(declare-fun bs!1091664 () Bool)

(assert (= bs!1091664 d!1493206))

(declare-fun m!5605931 () Bool)

(assert (=> bs!1091664 m!5605931))

(assert (=> b!4696125 d!1493206))

(declare-fun d!1493208 () Bool)

(declare-fun hash!4129 (Hashable!6249 K!13850) (_ BitVec 64))

(assert (=> d!1493208 (= (hash!4125 hashF!1323 key!4653) (hash!4129 hashF!1323 key!4653))))

(declare-fun bs!1091665 () Bool)

(assert (= bs!1091665 d!1493208))

(declare-fun m!5605933 () Bool)

(assert (=> bs!1091665 m!5605933))

(assert (=> b!4696124 d!1493208))

(declare-fun bs!1091666 () Bool)

(declare-fun b!4696570 () Bool)

(assert (= bs!1091666 (and b!4696570 b!4696395)))

(declare-fun lambda!209015 () Int)

(assert (=> bs!1091666 (= lambda!209015 lambda!208981)))

(declare-fun bs!1091667 () Bool)

(assert (= bs!1091667 (and b!4696570 d!1493012)))

(assert (=> bs!1091667 (= (= lt!1857448 lt!1857708) (= lambda!209015 lambda!208957))))

(declare-fun bs!1091668 () Bool)

(assert (= bs!1091668 (and b!4696570 d!1493206)))

(assert (=> bs!1091668 (not (= lambda!209015 lambda!209014))))

(declare-fun bs!1091669 () Bool)

(assert (= bs!1091669 (and b!4696570 d!1493070)))

(assert (=> bs!1091669 (= (= lt!1857448 lt!1857789) (= lambda!209015 lambda!208975))))

(declare-fun bs!1091670 () Bool)

(assert (= bs!1091670 (and b!4696570 b!4696359)))

(assert (=> bs!1091670 (= (= lt!1857448 lt!1857785) (= lambda!209015 lambda!208972))))

(declare-fun bs!1091671 () Bool)

(assert (= bs!1091671 (and b!4696570 b!4696491)))

(assert (=> bs!1091671 (= (= lt!1857448 lt!1857970) (= lambda!209015 lambda!208999))))

(declare-fun bs!1091672 () Bool)

(assert (= bs!1091672 (and b!4696570 d!1493086)))

(assert (=> bs!1091672 (= (= lt!1857448 lt!1857859) (= lambda!209015 lambda!208984))))

(declare-fun bs!1091673 () Bool)

(assert (= bs!1091673 (and b!4696570 d!1493136)))

(assert (=> bs!1091673 (= (= lt!1857448 lt!1857974) (= lambda!209015 lambda!209000))))

(declare-fun bs!1091674 () Bool)

(assert (= bs!1091674 (and b!4696570 b!4696335)))

(assert (=> bs!1091674 (= lambda!209015 lambda!208954)))

(declare-fun bs!1091675 () Bool)

(assert (= bs!1091675 (and b!4696570 b!4696336)))

(assert (=> bs!1091675 (= lambda!209015 lambda!208955)))

(assert (=> bs!1091670 (= lambda!209015 lambda!208971)))

(declare-fun bs!1091676 () Bool)

(assert (= bs!1091676 (and b!4696570 b!4696490)))

(assert (=> bs!1091676 (= lambda!209015 lambda!208997)))

(declare-fun bs!1091677 () Bool)

(assert (= bs!1091677 (and b!4696570 b!4696396)))

(assert (=> bs!1091677 (= lambda!209015 lambda!208982)))

(assert (=> bs!1091675 (= (= lt!1857448 lt!1857704) (= lambda!209015 lambda!208956))))

(declare-fun bs!1091678 () Bool)

(assert (= bs!1091678 (and b!4696570 b!4696358)))

(assert (=> bs!1091678 (= lambda!209015 lambda!208970)))

(assert (=> bs!1091677 (= (= lt!1857448 lt!1857855) (= lambda!209015 lambda!208983))))

(assert (=> bs!1091671 (= lambda!209015 lambda!208998)))

(declare-fun bs!1091679 () Bool)

(assert (= bs!1091679 (and b!4696570 d!1492952)))

(assert (=> bs!1091679 (not (= lambda!209015 lambda!208860))))

(assert (=> b!4696570 true))

(declare-fun bs!1091680 () Bool)

(declare-fun b!4696571 () Bool)

(assert (= bs!1091680 (and b!4696571 b!4696395)))

(declare-fun lambda!209016 () Int)

(assert (=> bs!1091680 (= lambda!209016 lambda!208981)))

(declare-fun bs!1091681 () Bool)

(assert (= bs!1091681 (and b!4696571 d!1493012)))

(assert (=> bs!1091681 (= (= lt!1857448 lt!1857708) (= lambda!209016 lambda!208957))))

(declare-fun bs!1091682 () Bool)

(assert (= bs!1091682 (and b!4696571 d!1493206)))

(assert (=> bs!1091682 (not (= lambda!209016 lambda!209014))))

(declare-fun bs!1091683 () Bool)

(assert (= bs!1091683 (and b!4696571 d!1493070)))

(assert (=> bs!1091683 (= (= lt!1857448 lt!1857789) (= lambda!209016 lambda!208975))))

(declare-fun bs!1091684 () Bool)

(assert (= bs!1091684 (and b!4696571 b!4696359)))

(assert (=> bs!1091684 (= (= lt!1857448 lt!1857785) (= lambda!209016 lambda!208972))))

(declare-fun bs!1091685 () Bool)

(assert (= bs!1091685 (and b!4696571 b!4696491)))

(assert (=> bs!1091685 (= (= lt!1857448 lt!1857970) (= lambda!209016 lambda!208999))))

(declare-fun bs!1091686 () Bool)

(assert (= bs!1091686 (and b!4696571 d!1493086)))

(assert (=> bs!1091686 (= (= lt!1857448 lt!1857859) (= lambda!209016 lambda!208984))))

(declare-fun bs!1091687 () Bool)

(assert (= bs!1091687 (and b!4696571 d!1493136)))

(assert (=> bs!1091687 (= (= lt!1857448 lt!1857974) (= lambda!209016 lambda!209000))))

(declare-fun bs!1091688 () Bool)

(assert (= bs!1091688 (and b!4696571 b!4696335)))

(assert (=> bs!1091688 (= lambda!209016 lambda!208954)))

(declare-fun bs!1091689 () Bool)

(assert (= bs!1091689 (and b!4696571 b!4696570)))

(assert (=> bs!1091689 (= lambda!209016 lambda!209015)))

(declare-fun bs!1091690 () Bool)

(assert (= bs!1091690 (and b!4696571 b!4696336)))

(assert (=> bs!1091690 (= lambda!209016 lambda!208955)))

(assert (=> bs!1091684 (= lambda!209016 lambda!208971)))

(declare-fun bs!1091691 () Bool)

(assert (= bs!1091691 (and b!4696571 b!4696490)))

(assert (=> bs!1091691 (= lambda!209016 lambda!208997)))

(declare-fun bs!1091692 () Bool)

(assert (= bs!1091692 (and b!4696571 b!4696396)))

(assert (=> bs!1091692 (= lambda!209016 lambda!208982)))

(assert (=> bs!1091690 (= (= lt!1857448 lt!1857704) (= lambda!209016 lambda!208956))))

(declare-fun bs!1091693 () Bool)

(assert (= bs!1091693 (and b!4696571 b!4696358)))

(assert (=> bs!1091693 (= lambda!209016 lambda!208970)))

(assert (=> bs!1091692 (= (= lt!1857448 lt!1857855) (= lambda!209016 lambda!208983))))

(assert (=> bs!1091685 (= lambda!209016 lambda!208998)))

(declare-fun bs!1091694 () Bool)

(assert (= bs!1091694 (and b!4696571 d!1492952)))

(assert (=> bs!1091694 (not (= lambda!209016 lambda!208860))))

(assert (=> b!4696571 true))

(declare-fun lambda!209017 () Int)

(declare-fun lt!1858038 () ListMap!5013)

(assert (=> bs!1091680 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208981))))

(assert (=> bs!1091681 (= (= lt!1858038 lt!1857708) (= lambda!209017 lambda!208957))))

(assert (=> b!4696571 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!209016))))

(assert (=> bs!1091682 (not (= lambda!209017 lambda!209014))))

(assert (=> bs!1091683 (= (= lt!1858038 lt!1857789) (= lambda!209017 lambda!208975))))

(assert (=> bs!1091684 (= (= lt!1858038 lt!1857785) (= lambda!209017 lambda!208972))))

(assert (=> bs!1091685 (= (= lt!1858038 lt!1857970) (= lambda!209017 lambda!208999))))

(assert (=> bs!1091686 (= (= lt!1858038 lt!1857859) (= lambda!209017 lambda!208984))))

(assert (=> bs!1091687 (= (= lt!1858038 lt!1857974) (= lambda!209017 lambda!209000))))

(assert (=> bs!1091688 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208954))))

(assert (=> bs!1091689 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!209015))))

(assert (=> bs!1091690 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208955))))

(assert (=> bs!1091684 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208971))))

(assert (=> bs!1091691 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208997))))

(assert (=> bs!1091692 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208982))))

(assert (=> bs!1091690 (= (= lt!1858038 lt!1857704) (= lambda!209017 lambda!208956))))

(assert (=> bs!1091693 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208970))))

(assert (=> bs!1091692 (= (= lt!1858038 lt!1857855) (= lambda!209017 lambda!208983))))

(assert (=> bs!1091685 (= (= lt!1858038 lt!1857448) (= lambda!209017 lambda!208998))))

(assert (=> bs!1091694 (not (= lambda!209017 lambda!208860))))

(assert (=> b!4696571 true))

(declare-fun bs!1091695 () Bool)

(declare-fun d!1493210 () Bool)

(assert (= bs!1091695 (and d!1493210 b!4696395)))

(declare-fun lambda!209018 () Int)

(declare-fun lt!1858042 () ListMap!5013)

(assert (=> bs!1091695 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208981))))

(declare-fun bs!1091696 () Bool)

(assert (= bs!1091696 (and d!1493210 d!1493012)))

(assert (=> bs!1091696 (= (= lt!1858042 lt!1857708) (= lambda!209018 lambda!208957))))

(declare-fun bs!1091697 () Bool)

(assert (= bs!1091697 (and d!1493210 b!4696571)))

(assert (=> bs!1091697 (= (= lt!1858042 lt!1858038) (= lambda!209018 lambda!209017))))

(assert (=> bs!1091697 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!209016))))

(declare-fun bs!1091698 () Bool)

(assert (= bs!1091698 (and d!1493210 d!1493206)))

(assert (=> bs!1091698 (not (= lambda!209018 lambda!209014))))

(declare-fun bs!1091699 () Bool)

(assert (= bs!1091699 (and d!1493210 d!1493070)))

(assert (=> bs!1091699 (= (= lt!1858042 lt!1857789) (= lambda!209018 lambda!208975))))

(declare-fun bs!1091700 () Bool)

(assert (= bs!1091700 (and d!1493210 b!4696359)))

(assert (=> bs!1091700 (= (= lt!1858042 lt!1857785) (= lambda!209018 lambda!208972))))

(declare-fun bs!1091701 () Bool)

(assert (= bs!1091701 (and d!1493210 b!4696491)))

(assert (=> bs!1091701 (= (= lt!1858042 lt!1857970) (= lambda!209018 lambda!208999))))

(declare-fun bs!1091702 () Bool)

(assert (= bs!1091702 (and d!1493210 d!1493086)))

(assert (=> bs!1091702 (= (= lt!1858042 lt!1857859) (= lambda!209018 lambda!208984))))

(declare-fun bs!1091703 () Bool)

(assert (= bs!1091703 (and d!1493210 d!1493136)))

(assert (=> bs!1091703 (= (= lt!1858042 lt!1857974) (= lambda!209018 lambda!209000))))

(declare-fun bs!1091704 () Bool)

(assert (= bs!1091704 (and d!1493210 b!4696335)))

(assert (=> bs!1091704 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208954))))

(declare-fun bs!1091705 () Bool)

(assert (= bs!1091705 (and d!1493210 b!4696570)))

(assert (=> bs!1091705 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!209015))))

(declare-fun bs!1091706 () Bool)

(assert (= bs!1091706 (and d!1493210 b!4696336)))

(assert (=> bs!1091706 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208955))))

(assert (=> bs!1091700 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208971))))

(declare-fun bs!1091707 () Bool)

(assert (= bs!1091707 (and d!1493210 b!4696490)))

(assert (=> bs!1091707 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208997))))

(declare-fun bs!1091708 () Bool)

(assert (= bs!1091708 (and d!1493210 b!4696396)))

(assert (=> bs!1091708 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208982))))

(assert (=> bs!1091706 (= (= lt!1858042 lt!1857704) (= lambda!209018 lambda!208956))))

(declare-fun bs!1091709 () Bool)

(assert (= bs!1091709 (and d!1493210 b!4696358)))

(assert (=> bs!1091709 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208970))))

(assert (=> bs!1091708 (= (= lt!1858042 lt!1857855) (= lambda!209018 lambda!208983))))

(assert (=> bs!1091701 (= (= lt!1858042 lt!1857448) (= lambda!209018 lambda!208998))))

(declare-fun bs!1091710 () Bool)

(assert (= bs!1091710 (and d!1493210 d!1492952)))

(assert (=> bs!1091710 (not (= lambda!209018 lambda!208860))))

(assert (=> d!1493210 true))

(declare-fun bm!328300 () Bool)

(declare-fun c!802902 () Bool)

(declare-fun call!328306 () Bool)

(assert (=> bm!328300 (= call!328306 (forall!11369 (toList!5649 lt!1857448) (ite c!802902 lambda!209015 lambda!209017)))))

(declare-fun e!2929828 () ListMap!5013)

(assert (=> b!4696570 (= e!2929828 lt!1857448)))

(declare-fun lt!1858048 () Unit!125277)

(declare-fun call!328307 () Unit!125277)

(assert (=> b!4696570 (= lt!1858048 call!328307)))

(declare-fun call!328305 () Bool)

(assert (=> b!4696570 call!328305))

(declare-fun lt!1858043 () Unit!125277)

(assert (=> b!4696570 (= lt!1858043 lt!1858048)))

(assert (=> b!4696570 call!328306))

(declare-fun lt!1858039 () Unit!125277)

(declare-fun Unit!125388 () Unit!125277)

(assert (=> b!4696570 (= lt!1858039 Unit!125388)))

(assert (=> b!4696571 (= e!2929828 lt!1858038)))

(declare-fun lt!1858056 () ListMap!5013)

(assert (=> b!4696571 (= lt!1858056 (+!2164 lt!1857448 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023))))))))

(assert (=> b!4696571 (= lt!1858038 (addToMapMapFromBucket!1312 (t!359801 (_2!30252 (h!58747 (toList!5650 lm!2023)))) (+!2164 lt!1857448 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023)))))))))

(declare-fun lt!1858036 () Unit!125277)

(assert (=> b!4696571 (= lt!1858036 call!328307)))

(assert (=> b!4696571 (forall!11369 (toList!5649 lt!1857448) lambda!209016)))

(declare-fun lt!1858047 () Unit!125277)

(assert (=> b!4696571 (= lt!1858047 lt!1858036)))

(assert (=> b!4696571 (forall!11369 (toList!5649 lt!1858056) lambda!209017)))

(declare-fun lt!1858040 () Unit!125277)

(declare-fun Unit!125389 () Unit!125277)

(assert (=> b!4696571 (= lt!1858040 Unit!125389)))

(assert (=> b!4696571 (forall!11369 (t!359801 (_2!30252 (h!58747 (toList!5650 lm!2023)))) lambda!209017)))

(declare-fun lt!1858055 () Unit!125277)

(declare-fun Unit!125390 () Unit!125277)

(assert (=> b!4696571 (= lt!1858055 Unit!125390)))

(declare-fun lt!1858050 () Unit!125277)

(declare-fun Unit!125391 () Unit!125277)

(assert (=> b!4696571 (= lt!1858050 Unit!125391)))

(declare-fun lt!1858045 () Unit!125277)

(assert (=> b!4696571 (= lt!1858045 (forallContained!3476 (toList!5649 lt!1858056) lambda!209017 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023))))))))

(assert (=> b!4696571 (contains!15726 lt!1858056 (_1!30251 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023))))))))

(declare-fun lt!1858049 () Unit!125277)

(declare-fun Unit!125392 () Unit!125277)

(assert (=> b!4696571 (= lt!1858049 Unit!125392)))

(assert (=> b!4696571 (contains!15726 lt!1858038 (_1!30251 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023))))))))

(declare-fun lt!1858046 () Unit!125277)

(declare-fun Unit!125393 () Unit!125277)

(assert (=> b!4696571 (= lt!1858046 Unit!125393)))

(assert (=> b!4696571 (forall!11369 (_2!30252 (h!58747 (toList!5650 lm!2023))) lambda!209017)))

(declare-fun lt!1858051 () Unit!125277)

(declare-fun Unit!125394 () Unit!125277)

(assert (=> b!4696571 (= lt!1858051 Unit!125394)))

(assert (=> b!4696571 call!328305))

(declare-fun lt!1858053 () Unit!125277)

(declare-fun Unit!125395 () Unit!125277)

(assert (=> b!4696571 (= lt!1858053 Unit!125395)))

(declare-fun lt!1858037 () Unit!125277)

(declare-fun Unit!125396 () Unit!125277)

(assert (=> b!4696571 (= lt!1858037 Unit!125396)))

(declare-fun lt!1858044 () Unit!125277)

(assert (=> b!4696571 (= lt!1858044 (addForallContainsKeyThenBeforeAdding!717 lt!1857448 lt!1858038 (_1!30251 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023))))) (_2!30251 (h!58746 (_2!30252 (h!58747 (toList!5650 lm!2023)))))))))

(assert (=> b!4696571 (forall!11369 (toList!5649 lt!1857448) lambda!209017)))

(declare-fun lt!1858041 () Unit!125277)

(assert (=> b!4696571 (= lt!1858041 lt!1858044)))

(assert (=> b!4696571 call!328306))

(declare-fun lt!1858052 () Unit!125277)

(declare-fun Unit!125397 () Unit!125277)

(assert (=> b!4696571 (= lt!1858052 Unit!125397)))

(declare-fun res!1982063 () Bool)

(assert (=> b!4696571 (= res!1982063 (forall!11369 (_2!30252 (h!58747 (toList!5650 lm!2023))) lambda!209017))))

(declare-fun e!2929829 () Bool)

(assert (=> b!4696571 (=> (not res!1982063) (not e!2929829))))

(assert (=> b!4696571 e!2929829))

(declare-fun lt!1858054 () Unit!125277)

(declare-fun Unit!125398 () Unit!125277)

(assert (=> b!4696571 (= lt!1858054 Unit!125398)))

(declare-fun e!2929830 () Bool)

(assert (=> d!1493210 e!2929830))

(declare-fun res!1982062 () Bool)

(assert (=> d!1493210 (=> (not res!1982062) (not e!2929830))))

(assert (=> d!1493210 (= res!1982062 (forall!11369 (_2!30252 (h!58747 (toList!5650 lm!2023))) lambda!209018))))

(assert (=> d!1493210 (= lt!1858042 e!2929828)))

(assert (=> d!1493210 (= c!802902 ((_ is Nil!52481) (_2!30252 (h!58747 (toList!5650 lm!2023)))))))

(assert (=> d!1493210 (noDuplicateKeys!1880 (_2!30252 (h!58747 (toList!5650 lm!2023))))))

(assert (=> d!1493210 (= (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (toList!5650 lm!2023))) lt!1857448) lt!1858042)))

(declare-fun b!4696572 () Bool)

(assert (=> b!4696572 (= e!2929829 (forall!11369 (toList!5649 lt!1857448) lambda!209017))))

(declare-fun bm!328301 () Bool)

(assert (=> bm!328301 (= call!328307 (lemmaContainsAllItsOwnKeys!718 lt!1857448))))

(declare-fun b!4696573 () Bool)

(assert (=> b!4696573 (= e!2929830 (invariantList!1430 (toList!5649 lt!1858042)))))

(declare-fun b!4696574 () Bool)

(declare-fun res!1982061 () Bool)

(assert (=> b!4696574 (=> (not res!1982061) (not e!2929830))))

(assert (=> b!4696574 (= res!1982061 (forall!11369 (toList!5649 lt!1857448) lambda!209018))))

(declare-fun bm!328302 () Bool)

(assert (=> bm!328302 (= call!328305 (forall!11369 (ite c!802902 (toList!5649 lt!1857448) (toList!5649 lt!1858056)) (ite c!802902 lambda!209015 lambda!209017)))))

(assert (= (and d!1493210 c!802902) b!4696570))

(assert (= (and d!1493210 (not c!802902)) b!4696571))

(assert (= (and b!4696571 res!1982063) b!4696572))

(assert (= (or b!4696570 b!4696571) bm!328301))

(assert (= (or b!4696570 b!4696571) bm!328302))

(assert (= (or b!4696570 b!4696571) bm!328300))

(assert (= (and d!1493210 res!1982062) b!4696574))

(assert (= (and b!4696574 res!1982061) b!4696573))

(declare-fun m!5605935 () Bool)

(assert (=> b!4696571 m!5605935))

(declare-fun m!5605937 () Bool)

(assert (=> b!4696571 m!5605937))

(declare-fun m!5605939 () Bool)

(assert (=> b!4696571 m!5605939))

(declare-fun m!5605941 () Bool)

(assert (=> b!4696571 m!5605941))

(declare-fun m!5605943 () Bool)

(assert (=> b!4696571 m!5605943))

(declare-fun m!5605945 () Bool)

(assert (=> b!4696571 m!5605945))

(declare-fun m!5605947 () Bool)

(assert (=> b!4696571 m!5605947))

(declare-fun m!5605949 () Bool)

(assert (=> b!4696571 m!5605949))

(declare-fun m!5605951 () Bool)

(assert (=> b!4696571 m!5605951))

(declare-fun m!5605953 () Bool)

(assert (=> b!4696571 m!5605953))

(assert (=> b!4696571 m!5605939))

(declare-fun m!5605955 () Bool)

(assert (=> b!4696571 m!5605955))

(assert (=> b!4696571 m!5605943))

(declare-fun m!5605957 () Bool)

(assert (=> b!4696573 m!5605957))

(declare-fun m!5605959 () Bool)

(assert (=> bm!328302 m!5605959))

(declare-fun m!5605961 () Bool)

(assert (=> b!4696574 m!5605961))

(declare-fun m!5605963 () Bool)

(assert (=> bm!328300 m!5605963))

(declare-fun m!5605965 () Bool)

(assert (=> d!1493210 m!5605965))

(declare-fun m!5605967 () Bool)

(assert (=> d!1493210 m!5605967))

(assert (=> b!4696572 m!5605953))

(assert (=> bm!328301 m!5605223))

(assert (=> b!4696111 d!1493210))

(declare-fun bs!1091711 () Bool)

(declare-fun d!1493212 () Bool)

(assert (= bs!1091711 (and d!1493212 d!1493116)))

(declare-fun lambda!209019 () Int)

(assert (=> bs!1091711 (= lambda!209019 lambda!208995)))

(declare-fun bs!1091712 () Bool)

(assert (= bs!1091712 (and d!1493212 d!1493138)))

(assert (=> bs!1091712 (= lambda!209019 lambda!209001)))

(declare-fun bs!1091713 () Bool)

(assert (= bs!1091713 (and d!1493212 d!1492964)))

(assert (=> bs!1091713 (= lambda!209019 lambda!208866)))

(declare-fun bs!1091714 () Bool)

(assert (= bs!1091714 (and d!1493212 d!1493092)))

(assert (=> bs!1091714 (= lambda!209019 lambda!208993)))

(declare-fun bs!1091715 () Bool)

(assert (= bs!1091715 (and d!1493212 d!1492982)))

(assert (=> bs!1091715 (= lambda!209019 lambda!208883)))

(declare-fun bs!1091716 () Bool)

(assert (= bs!1091716 (and d!1493212 d!1493202)))

(assert (=> bs!1091716 (= lambda!209019 lambda!209010)))

(declare-fun bs!1091717 () Bool)

(assert (= bs!1091717 (and d!1493212 start!475728)))

(assert (=> bs!1091717 (= lambda!209019 lambda!208857)))

(declare-fun bs!1091718 () Bool)

(assert (= bs!1091718 (and d!1493212 d!1493062)))

(assert (=> bs!1091718 (= lambda!209019 lambda!208969)))

(declare-fun bs!1091719 () Bool)

(assert (= bs!1091719 (and d!1493212 d!1493142)))

(assert (=> bs!1091719 (= lambda!209019 lambda!209002)))

(declare-fun bs!1091720 () Bool)

(assert (= bs!1091720 (and d!1493212 d!1493144)))

(assert (=> bs!1091720 (= lambda!209019 lambda!209006)))

(declare-fun bs!1091721 () Bool)

(assert (= bs!1091721 (and d!1493212 d!1493164)))

(assert (=> bs!1091721 (= lambda!209019 lambda!209009)))

(declare-fun bs!1091722 () Bool)

(assert (= bs!1091722 (and d!1493212 d!1493130)))

(assert (=> bs!1091722 (= lambda!209019 lambda!208996)))

(declare-fun bs!1091723 () Bool)

(assert (= bs!1091723 (and d!1493212 d!1493204)))

(assert (=> bs!1091723 (not (= lambda!209019 lambda!209013))))

(declare-fun lt!1858057 () ListMap!5013)

(assert (=> d!1493212 (invariantList!1430 (toList!5649 lt!1858057))))

(declare-fun e!2929831 () ListMap!5013)

(assert (=> d!1493212 (= lt!1858057 e!2929831)))

(declare-fun c!802903 () Bool)

(assert (=> d!1493212 (= c!802903 ((_ is Cons!52482) (t!359802 (toList!5650 lm!2023))))))

(assert (=> d!1493212 (forall!11367 (t!359802 (toList!5650 lm!2023)) lambda!209019)))

(assert (=> d!1493212 (= (extractMap!1906 (t!359802 (toList!5650 lm!2023))) lt!1858057)))

(declare-fun b!4696575 () Bool)

(assert (=> b!4696575 (= e!2929831 (addToMapMapFromBucket!1312 (_2!30252 (h!58747 (t!359802 (toList!5650 lm!2023)))) (extractMap!1906 (t!359802 (t!359802 (toList!5650 lm!2023))))))))

(declare-fun b!4696576 () Bool)

(assert (=> b!4696576 (= e!2929831 (ListMap!5014 Nil!52481))))

(assert (= (and d!1493212 c!802903) b!4696575))

(assert (= (and d!1493212 (not c!802903)) b!4696576))

(declare-fun m!5605969 () Bool)

(assert (=> d!1493212 m!5605969))

(declare-fun m!5605971 () Bool)

(assert (=> d!1493212 m!5605971))

(declare-fun m!5605973 () Bool)

(assert (=> b!4696575 m!5605973))

(assert (=> b!4696575 m!5605973))

(declare-fun m!5605975 () Bool)

(assert (=> b!4696575 m!5605975))

(assert (=> b!4696111 d!1493212))

(declare-fun d!1493214 () Bool)

(assert (=> d!1493214 (= (tail!8665 lm!2023) (ListLongMap!4180 (tail!8666 (toList!5650 lm!2023))))))

(declare-fun bs!1091724 () Bool)

(assert (= bs!1091724 d!1493214))

(declare-fun m!5605977 () Bool)

(assert (=> bs!1091724 m!5605977))

(assert (=> b!4696111 d!1493214))

(declare-fun b!4696580 () Bool)

(declare-fun e!2929832 () List!52605)

(assert (=> b!4696580 (= e!2929832 Nil!52481)))

(declare-fun b!4696577 () Bool)

(declare-fun e!2929833 () List!52605)

(assert (=> b!4696577 (= e!2929833 (t!359801 lt!1857444))))

(declare-fun d!1493216 () Bool)

(declare-fun lt!1858058 () List!52605)

(assert (=> d!1493216 (not (containsKey!3119 lt!1858058 key!4653))))

(assert (=> d!1493216 (= lt!1858058 e!2929833)))

(declare-fun c!802905 () Bool)

(assert (=> d!1493216 (= c!802905 (and ((_ is Cons!52481) lt!1857444) (= (_1!30251 (h!58746 lt!1857444)) key!4653)))))

(assert (=> d!1493216 (noDuplicateKeys!1880 lt!1857444)))

(assert (=> d!1493216 (= (removePairForKey!1475 lt!1857444 key!4653) lt!1858058)))

(declare-fun b!4696579 () Bool)

(assert (=> b!4696579 (= e!2929832 (Cons!52481 (h!58746 lt!1857444) (removePairForKey!1475 (t!359801 lt!1857444) key!4653)))))

(declare-fun b!4696578 () Bool)

(assert (=> b!4696578 (= e!2929833 e!2929832)))

(declare-fun c!802904 () Bool)

(assert (=> b!4696578 (= c!802904 ((_ is Cons!52481) lt!1857444))))

(assert (= (and d!1493216 c!802905) b!4696577))

(assert (= (and d!1493216 (not c!802905)) b!4696578))

(assert (= (and b!4696578 c!802904) b!4696579))

(assert (= (and b!4696578 (not c!802904)) b!4696580))

(declare-fun m!5605979 () Bool)

(assert (=> d!1493216 m!5605979))

(assert (=> d!1493216 m!5605651))

(declare-fun m!5605981 () Bool)

(assert (=> b!4696579 m!5605981))

(assert (=> b!4696122 d!1493216))

(declare-fun d!1493218 () Bool)

(assert (=> d!1493218 (= (tail!8667 newBucket!218) (t!359801 newBucket!218))))

(assert (=> b!4696122 d!1493218))

(declare-fun d!1493220 () Bool)

(assert (=> d!1493220 (= (tail!8667 oldBucket!34) (t!359801 oldBucket!34))))

(assert (=> b!4696122 d!1493220))

(declare-fun d!1493222 () Bool)

(assert (=> d!1493222 (= (head!10024 (toList!5650 lm!2023)) (h!58747 (toList!5650 lm!2023)))))

(assert (=> b!4696112 d!1493222))

(declare-fun e!2929836 () Bool)

(declare-fun tp!1346364 () Bool)

(declare-fun b!4696585 () Bool)

(assert (=> b!4696585 (= e!2929836 (and tp_is_empty!30813 tp_is_empty!30815 tp!1346364))))

(assert (=> b!4696130 (= tp!1346350 e!2929836)))

(assert (= (and b!4696130 ((_ is Cons!52481) (t!359801 oldBucket!34))) b!4696585))

(declare-fun e!2929837 () Bool)

(declare-fun b!4696586 () Bool)

(declare-fun tp!1346365 () Bool)

(assert (=> b!4696586 (= e!2929837 (and tp_is_empty!30813 tp_is_empty!30815 tp!1346365))))

(assert (=> b!4696120 (= tp!1346351 e!2929837)))

(assert (= (and b!4696120 ((_ is Cons!52481) (t!359801 newBucket!218))) b!4696586))

(declare-fun b!4696591 () Bool)

(declare-fun e!2929840 () Bool)

(declare-fun tp!1346370 () Bool)

(declare-fun tp!1346371 () Bool)

(assert (=> b!4696591 (= e!2929840 (and tp!1346370 tp!1346371))))

(assert (=> b!4696123 (= tp!1346349 e!2929840)))

(assert (= (and b!4696123 ((_ is Cons!52482) (toList!5650 lm!2023))) b!4696591))

(declare-fun b_lambda!177223 () Bool)

(assert (= b_lambda!177221 (or start!475728 b_lambda!177223)))

(declare-fun bs!1091725 () Bool)

(declare-fun d!1493224 () Bool)

(assert (= bs!1091725 (and d!1493224 start!475728)))

(assert (=> bs!1091725 (= (dynLambda!21733 lambda!208857 (h!58747 lt!1857436)) (noDuplicateKeys!1880 (_2!30252 (h!58747 lt!1857436))))))

(declare-fun m!5605983 () Bool)

(assert (=> bs!1091725 m!5605983))

(assert (=> b!4696553 d!1493224))

(declare-fun b_lambda!177225 () Bool)

(assert (= b_lambda!177205 (or start!475728 b_lambda!177225)))

(declare-fun bs!1091726 () Bool)

(declare-fun d!1493226 () Bool)

(assert (= bs!1091726 (and d!1493226 start!475728)))

(assert (=> bs!1091726 (= (dynLambda!21733 lambda!208857 lt!1857433) (noDuplicateKeys!1880 (_2!30252 lt!1857433)))))

(declare-fun m!5605985 () Bool)

(assert (=> bs!1091726 m!5605985))

(assert (=> d!1492954 d!1493226))

(declare-fun b_lambda!177227 () Bool)

(assert (= b_lambda!177219 (or start!475728 b_lambda!177227)))

(declare-fun bs!1091727 () Bool)

(declare-fun d!1493228 () Bool)

(assert (= bs!1091727 (and d!1493228 start!475728)))

(assert (=> bs!1091727 (= (dynLambda!21733 lambda!208857 (h!58747 (toList!5650 lm!2023))) (noDuplicateKeys!1880 (_2!30252 (h!58747 (toList!5650 lm!2023)))))))

(assert (=> bs!1091727 m!5605967))

(assert (=> b!4696547 d!1493228))

(check-sat (not bm!328296) (not b!4696152) (not d!1492954) (not b!4696242) (not b!4696522) (not d!1493144) (not d!1493174) (not d!1493186) (not bm!328269) (not b!4696563) (not d!1493120) (not b!4696283) (not b!4696397) (not d!1493214) (not d!1493208) (not b!4696386) (not d!1493168) (not b!4696561) (not bm!328301) (not bs!1091726) (not b!4696524) (not b!4696530) (not b!4696273) (not b!4696526) (not d!1493008) (not d!1493200) (not bm!328268) (not d!1492972) (not bm!328270) (not b!4696528) (not b!4696548) (not d!1493088) (not d!1493074) (not d!1493124) (not d!1492998) (not b!4696250) (not b!4696494) (not b!4696556) (not b!4696562) (not b!4696389) (not b!4696206) (not b!4696396) (not b!4696573) (not b!4696399) (not d!1493146) (not d!1493086) (not b!4696478) (not b!4696586) (not b!4696585) (not d!1493092) (not b!4696436) (not b!4696241) (not d!1493164) (not bs!1091727) (not b!4696529) (not b!4696566) (not bm!328288) (not bm!328299) (not d!1493190) (not b!4696137) (not b!4696571) (not b!4696275) (not b!4696486) (not d!1493172) (not b!4696336) (not bm!328277) (not b!4696243) (not b!4696387) (not b!4696361) (not b!4696392) (not d!1493216) (not b!4696437) (not b!4696338) (not bs!1091725) (not b!4696579) (not d!1493206) (not b!4696479) (not d!1493004) (not b_lambda!177223) (not d!1493136) (not b!4696391) (not b!4696473) (not bm!328279) (not d!1493138) (not b!4696208) (not d!1492982) (not d!1493212) (not b!4696527) (not b!4696575) (not bm!328285) (not d!1493176) (not b!4696523) (not b!4696558) (not b_lambda!177227) tp_is_empty!30813 (not d!1493114) (not b_lambda!177225) (not b!4696555) (not b!4696541) (not d!1493192) (not d!1493180) (not d!1493210) (not b!4696337) (not b!4696359) (not b!4696390) (not b!4696276) (not b!4696499) (not b!4696525) tp_is_empty!30815 (not d!1493178) (not b!4696554) (not b!4696492) (not d!1493062) (not d!1493142) (not d!1493010) (not b!4696360) (not bm!328286) (not d!1493012) (not d!1493084) (not bm!328278) (not b!4696497) (not b!4696339) (not b!4696362) (not d!1493042) (not b!4696398) (not b!4696481) (not bm!328300) (not d!1493184) (not bm!328302) (not bm!328297) (not d!1493006) (not b!4696557) (not d!1493068) (not d!1493060) (not d!1493116) (not d!1492964) (not b!4696559) (not b!4696551) (not b!4696252) (not d!1493196) (not b!4696274) (not b!4696491) (not b!4696560) (not b!4696572) (not b!4696574) (not b!4696495) (not d!1493166) (not d!1493204) (not d!1493198) (not b!4696493) (not d!1492996) (not bm!328287) (not b!4696388) (not b!4696591) (not b!4696477) (not b!4696136) (not d!1493070) (not d!1493130) (not b!4696272) (not d!1493202) (not b!4696244) (not d!1492952) (not b!4696482) (not bm!328298))
(check-sat)
