; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!483938 () Bool)

(assert start!483938)

(declare-fun tp_is_empty!31537 () Bool)

(declare-fun tp!1349292 () Bool)

(declare-fun tp_is_empty!31539 () Bool)

(declare-fun e!2958381 () Bool)

(declare-fun b!4742678 () Bool)

(assert (=> b!4742678 (= e!2958381 (and tp_is_empty!31537 tp_is_empty!31539 tp!1349292))))

(declare-fun b!4742679 () Bool)

(declare-fun res!2009564 () Bool)

(declare-fun e!2958378 () Bool)

(assert (=> b!4742679 (=> (not res!2009564) (not e!2958378))))

(declare-datatypes ((K!14303 0))(
  ( (K!14304 (val!19713 Int)) )
))
(declare-datatypes ((V!14549 0))(
  ( (V!14550 (val!19714 Int)) )
))
(declare-datatypes ((tuple2!54638 0))(
  ( (tuple2!54639 (_1!30613 K!14303) (_2!30613 V!14549)) )
))
(declare-datatypes ((List!53083 0))(
  ( (Nil!52959) (Cons!52959 (h!59342 tuple2!54638) (t!360383 List!53083)) )
))
(declare-datatypes ((tuple2!54640 0))(
  ( (tuple2!54641 (_1!30614 (_ BitVec 64)) (_2!30614 List!53083)) )
))
(declare-datatypes ((List!53084 0))(
  ( (Nil!52960) (Cons!52960 (h!59343 tuple2!54640) (t!360384 List!53084)) )
))
(declare-datatypes ((ListLongMap!4541 0))(
  ( (ListLongMap!4542 (toList!6011 List!53084)) )
))
(declare-fun lm!2023 () ListLongMap!4541)

(declare-datatypes ((Hashable!6430 0))(
  ( (HashableExt!6429 (__x!32133 Int)) )
))
(declare-fun hashF!1323 () Hashable!6430)

(declare-fun allKeysSameHashInMap!1975 (ListLongMap!4541 Hashable!6430) Bool)

(assert (=> b!4742679 (= res!2009564 (allKeysSameHashInMap!1975 lm!2023 hashF!1323))))

(declare-fun b!4742680 () Bool)

(declare-fun res!2009573 () Bool)

(declare-fun e!2958385 () Bool)

(assert (=> b!4742680 (=> res!2009573 e!2958385)))

(declare-fun lt!1905148 () List!53084)

(declare-fun lambda!219415 () Int)

(declare-fun forall!11688 (List!53084 Int) Bool)

(assert (=> b!4742680 (= res!2009573 (not (forall!11688 lt!1905148 lambda!219415)))))

(declare-fun b!4742681 () Bool)

(declare-fun e!2958387 () Bool)

(declare-fun e!2958379 () Bool)

(assert (=> b!4742681 (= e!2958387 e!2958379)))

(declare-fun res!2009563 () Bool)

(assert (=> b!4742681 (=> res!2009563 e!2958379)))

(declare-fun key!4653 () K!14303)

(declare-fun lt!1905156 () List!53083)

(declare-fun lt!1905145 () List!53083)

(declare-fun removePairForKey!1656 (List!53083 K!14303) List!53083)

(assert (=> b!4742681 (= res!2009563 (not (= (removePairForKey!1656 lt!1905156 key!4653) lt!1905145)))))

(declare-fun newBucket!218 () List!53083)

(declare-fun tail!9122 (List!53083) List!53083)

(assert (=> b!4742681 (= lt!1905145 (tail!9122 newBucket!218))))

(declare-fun oldBucket!34 () List!53083)

(assert (=> b!4742681 (= lt!1905156 (tail!9122 oldBucket!34))))

(declare-fun b!4742682 () Bool)

(declare-fun res!2009550 () Bool)

(assert (=> b!4742682 (=> res!2009550 e!2958385)))

(declare-fun lt!1905154 () tuple2!54638)

(assert (=> b!4742682 (= res!2009550 (not (= (h!59342 oldBucket!34) lt!1905154)))))

(declare-fun b!4742683 () Bool)

(declare-fun res!2009568 () Bool)

(assert (=> b!4742683 (=> res!2009568 e!2958385)))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1887 (List!53083 (_ BitVec 64) Hashable!6430) Bool)

(assert (=> b!4742683 (= res!2009568 (not (allKeysSameHash!1887 lt!1905145 hash!405 hashF!1323)))))

(declare-fun b!4742684 () Bool)

(declare-fun res!2009558 () Bool)

(assert (=> b!4742684 (=> res!2009558 e!2958385)))

(declare-datatypes ((ListMap!5375 0))(
  ( (ListMap!5376 (toList!6012 List!53083)) )
))
(declare-fun lt!1905160 () ListMap!5375)

(declare-fun lt!1905149 () ListMap!5375)

(declare-fun eq!1158 (ListMap!5375 ListMap!5375) Bool)

(declare-fun +!2309 (ListMap!5375 tuple2!54638) ListMap!5375)

(assert (=> b!4742684 (= res!2009558 (not (eq!1158 lt!1905149 (+!2309 lt!1905160 lt!1905154))))))

(declare-fun b!4742685 () Bool)

(declare-fun res!2009572 () Bool)

(declare-fun e!2958382 () Bool)

(assert (=> b!4742685 (=> (not res!2009572) (not e!2958382))))

(assert (=> b!4742685 (= res!2009572 (allKeysSameHash!1887 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4742687 () Bool)

(declare-fun res!2009561 () Bool)

(assert (=> b!4742687 (=> res!2009561 e!2958385)))

(declare-fun noDuplicateKeys!2061 (List!53083) Bool)

(assert (=> b!4742687 (= res!2009561 (not (noDuplicateKeys!2061 (t!360383 oldBucket!34))))))

(declare-fun b!4742688 () Bool)

(declare-fun e!2958386 () Bool)

(assert (=> b!4742688 (= e!2958382 e!2958386)))

(declare-fun res!2009560 () Bool)

(assert (=> b!4742688 (=> (not res!2009560) (not e!2958386))))

(declare-fun lt!1905139 () ListMap!5375)

(declare-fun contains!16371 (ListMap!5375 K!14303) Bool)

(assert (=> b!4742688 (= res!2009560 (contains!16371 lt!1905139 key!4653))))

(declare-fun extractMap!2087 (List!53084) ListMap!5375)

(assert (=> b!4742688 (= lt!1905139 (extractMap!2087 (toList!6011 lm!2023)))))

(declare-fun b!4742689 () Bool)

(declare-fun res!2009555 () Bool)

(assert (=> b!4742689 (=> (not res!2009555) (not e!2958378))))

(assert (=> b!4742689 (= res!2009555 (allKeysSameHash!1887 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4742690 () Bool)

(declare-fun e!2958384 () Bool)

(declare-fun e!2958380 () Bool)

(assert (=> b!4742690 (= e!2958384 (not e!2958380))))

(declare-fun res!2009559 () Bool)

(assert (=> b!4742690 (=> res!2009559 e!2958380)))

(assert (=> b!4742690 (= res!2009559 (or (and (is-Cons!52959 oldBucket!34) (= (_1!30613 (h!59342 oldBucket!34)) key!4653)) (not (is-Cons!52959 oldBucket!34)) (= (_1!30613 (h!59342 oldBucket!34)) key!4653)))))

(declare-fun lt!1905142 () ListMap!5375)

(declare-fun addToMapMapFromBucket!1491 (List!53083 ListMap!5375) ListMap!5375)

(assert (=> b!4742690 (= lt!1905139 (addToMapMapFromBucket!1491 (_2!30614 (h!59343 (toList!6011 lm!2023))) lt!1905142))))

(assert (=> b!4742690 (= lt!1905142 (extractMap!2087 (t!360384 (toList!6011 lm!2023))))))

(declare-fun tail!9123 (ListLongMap!4541) ListLongMap!4541)

(assert (=> b!4742690 (= (t!360384 (toList!6011 lm!2023)) (toList!6011 (tail!9123 lm!2023)))))

(declare-fun b!4742691 () Bool)

(declare-fun res!2009571 () Bool)

(assert (=> b!4742691 (=> (not res!2009571) (not e!2958382))))

(assert (=> b!4742691 (= res!2009571 (noDuplicateKeys!2061 oldBucket!34))))

(declare-fun b!4742692 () Bool)

(declare-fun res!2009569 () Bool)

(assert (=> b!4742692 (=> (not res!2009569) (not e!2958382))))

(assert (=> b!4742692 (= res!2009569 (noDuplicateKeys!2061 newBucket!218))))

(declare-fun b!4742693 () Bool)

(declare-fun res!2009566 () Bool)

(assert (=> b!4742693 (=> res!2009566 e!2958379)))

(assert (=> b!4742693 (= res!2009566 (not (= (removePairForKey!1656 (t!360383 oldBucket!34) key!4653) lt!1905145)))))

(declare-fun b!4742694 () Bool)

(assert (=> b!4742694 (= e!2958386 e!2958378)))

(declare-fun res!2009565 () Bool)

(assert (=> b!4742694 (=> (not res!2009565) (not e!2958378))))

(declare-fun lt!1905157 () (_ BitVec 64))

(assert (=> b!4742694 (= res!2009565 (= lt!1905157 hash!405))))

(declare-fun hash!4465 (Hashable!6430 K!14303) (_ BitVec 64))

(assert (=> b!4742694 (= lt!1905157 (hash!4465 hashF!1323 key!4653))))

(declare-fun b!4742695 () Bool)

(declare-fun res!2009557 () Bool)

(assert (=> b!4742695 (=> res!2009557 e!2958385)))

(declare-fun lt!1905150 () ListLongMap!4541)

(assert (=> b!4742695 (= res!2009557 (not (allKeysSameHashInMap!1975 lt!1905150 hashF!1323)))))

(declare-fun b!4742696 () Bool)

(assert (=> b!4742696 (= e!2958379 e!2958385)))

(declare-fun res!2009554 () Bool)

(assert (=> b!4742696 (=> res!2009554 e!2958385)))

(assert (=> b!4742696 (= res!2009554 (not (eq!1158 lt!1905149 (+!2309 lt!1905160 (h!59342 oldBucket!34)))))))

(assert (=> b!4742696 (= lt!1905160 (extractMap!2087 (Cons!52960 (tuple2!54641 hash!405 lt!1905156) (t!360384 (toList!6011 lm!2023)))))))

(declare-fun lt!1905153 () tuple2!54640)

(assert (=> b!4742696 (= lt!1905149 (extractMap!2087 (Cons!52960 lt!1905153 (t!360384 (toList!6011 lm!2023)))))))

(assert (=> b!4742696 (eq!1158 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905154 lt!1905145) lt!1905142) (+!2309 (addToMapMapFromBucket!1491 lt!1905145 lt!1905142) lt!1905154))))

(declare-datatypes ((Unit!133727 0))(
  ( (Unit!133728) )
))
(declare-fun lt!1905141 () Unit!133727)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!407 (tuple2!54638 List!53083 ListMap!5375) Unit!133727)

(assert (=> b!4742696 (= lt!1905141 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!407 lt!1905154 lt!1905145 lt!1905142))))

(declare-fun head!10325 (List!53083) tuple2!54638)

(assert (=> b!4742696 (= lt!1905154 (head!10325 newBucket!218))))

(declare-fun lt!1905155 () tuple2!54638)

(assert (=> b!4742696 (eq!1158 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905155 lt!1905156) lt!1905142) (+!2309 (addToMapMapFromBucket!1491 lt!1905156 lt!1905142) lt!1905155))))

(declare-fun lt!1905152 () Unit!133727)

(assert (=> b!4742696 (= lt!1905152 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!407 lt!1905155 lt!1905156 lt!1905142))))

(assert (=> b!4742696 (= lt!1905155 (head!10325 oldBucket!34))))

(assert (=> b!4742696 (contains!16371 (extractMap!2087 lt!1905148) key!4653)))

(declare-fun lt!1905144 () Unit!133727)

(declare-fun lemmaListContainsThenExtractedMapContains!569 (ListLongMap!4541 K!14303 Hashable!6430) Unit!133727)

(assert (=> b!4742696 (= lt!1905144 (lemmaListContainsThenExtractedMapContains!569 lt!1905150 key!4653 hashF!1323))))

(assert (=> b!4742696 (= lt!1905150 (ListLongMap!4542 lt!1905148))))

(declare-fun lt!1905146 () tuple2!54640)

(assert (=> b!4742696 (= lt!1905148 (Cons!52960 lt!1905146 (t!360384 (toList!6011 lm!2023))))))

(assert (=> b!4742696 (= lt!1905146 (tuple2!54641 hash!405 (t!360383 oldBucket!34)))))

(declare-fun b!4742697 () Bool)

(declare-fun res!2009551 () Bool)

(assert (=> b!4742697 (=> res!2009551 e!2958385)))

(assert (=> b!4742697 (= res!2009551 (not (noDuplicateKeys!2061 lt!1905145)))))

(declare-fun b!4742698 () Bool)

(declare-fun res!2009562 () Bool)

(assert (=> b!4742698 (=> (not res!2009562) (not e!2958382))))

(assert (=> b!4742698 (= res!2009562 (= (removePairForKey!1656 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4742699 () Bool)

(assert (=> b!4742699 (= e!2958378 e!2958384)))

(declare-fun res!2009570 () Bool)

(assert (=> b!4742699 (=> (not res!2009570) (not e!2958384))))

(declare-fun head!10326 (List!53084) tuple2!54640)

(assert (=> b!4742699 (= res!2009570 (= (head!10326 (toList!6011 lm!2023)) lt!1905153))))

(assert (=> b!4742699 (= lt!1905153 (tuple2!54641 hash!405 oldBucket!34))))

(declare-fun b!4742700 () Bool)

(assert (=> b!4742700 (= e!2958380 e!2958387)))

(declare-fun res!2009556 () Bool)

(assert (=> b!4742700 (=> res!2009556 e!2958387)))

(declare-fun containsKey!3478 (List!53083 K!14303) Bool)

(assert (=> b!4742700 (= res!2009556 (not (containsKey!3478 (t!360383 oldBucket!34) key!4653)))))

(assert (=> b!4742700 (containsKey!3478 oldBucket!34 key!4653)))

(declare-fun lt!1905151 () Unit!133727)

(declare-fun lemmaGetPairDefinedThenContainsKey!345 (List!53083 K!14303 Hashable!6430) Unit!133727)

(assert (=> b!4742700 (= lt!1905151 (lemmaGetPairDefinedThenContainsKey!345 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1905138 () List!53083)

(declare-datatypes ((Option!12464 0))(
  ( (None!12463) (Some!12463 (v!47136 tuple2!54638)) )
))
(declare-fun isDefined!9718 (Option!12464) Bool)

(declare-fun getPair!601 (List!53083 K!14303) Option!12464)

(assert (=> b!4742700 (isDefined!9718 (getPair!601 lt!1905138 key!4653))))

(declare-fun lt!1905143 () Unit!133727)

(declare-fun lt!1905147 () tuple2!54640)

(declare-fun forallContained!3728 (List!53084 Int tuple2!54640) Unit!133727)

(assert (=> b!4742700 (= lt!1905143 (forallContained!3728 (toList!6011 lm!2023) lambda!219415 lt!1905147))))

(declare-fun contains!16372 (List!53084 tuple2!54640) Bool)

(assert (=> b!4742700 (contains!16372 (toList!6011 lm!2023) lt!1905147)))

(assert (=> b!4742700 (= lt!1905147 (tuple2!54641 lt!1905157 lt!1905138))))

(declare-fun lt!1905158 () Unit!133727)

(declare-fun lemmaGetValueImpliesTupleContained!406 (ListLongMap!4541 (_ BitVec 64) List!53083) Unit!133727)

(assert (=> b!4742700 (= lt!1905158 (lemmaGetValueImpliesTupleContained!406 lm!2023 lt!1905157 lt!1905138))))

(declare-fun apply!12486 (ListLongMap!4541 (_ BitVec 64)) List!53083)

(assert (=> b!4742700 (= lt!1905138 (apply!12486 lm!2023 lt!1905157))))

(declare-fun contains!16373 (ListLongMap!4541 (_ BitVec 64)) Bool)

(assert (=> b!4742700 (contains!16373 lm!2023 lt!1905157)))

(declare-fun lt!1905159 () Unit!133727)

(declare-fun lemmaInGenMapThenLongMapContainsHash!807 (ListLongMap!4541 K!14303 Hashable!6430) Unit!133727)

(assert (=> b!4742700 (= lt!1905159 (lemmaInGenMapThenLongMapContainsHash!807 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1905140 () Unit!133727)

(declare-fun lemmaInGenMapThenGetPairDefined!397 (ListLongMap!4541 K!14303 Hashable!6430) Unit!133727)

(assert (=> b!4742700 (= lt!1905140 (lemmaInGenMapThenGetPairDefined!397 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4742701 () Bool)

(assert (=> b!4742701 (= e!2958385 (= (head!10326 lt!1905148) lt!1905146))))

(declare-fun b!4742702 () Bool)

(declare-fun res!2009552 () Bool)

(assert (=> b!4742702 (=> res!2009552 e!2958385)))

(assert (=> b!4742702 (= res!2009552 (not (allKeysSameHash!1887 (t!360383 oldBucket!34) hash!405 hashF!1323)))))

(declare-fun res!2009553 () Bool)

(assert (=> start!483938 (=> (not res!2009553) (not e!2958382))))

(assert (=> start!483938 (= res!2009553 (forall!11688 (toList!6011 lm!2023) lambda!219415))))

(assert (=> start!483938 e!2958382))

(declare-fun e!2958383 () Bool)

(declare-fun inv!68178 (ListLongMap!4541) Bool)

(assert (=> start!483938 (and (inv!68178 lm!2023) e!2958383)))

(assert (=> start!483938 tp_is_empty!31537))

(declare-fun e!2958377 () Bool)

(assert (=> start!483938 e!2958377))

(assert (=> start!483938 true))

(assert (=> start!483938 e!2958381))

(declare-fun b!4742686 () Bool)

(declare-fun res!2009567 () Bool)

(assert (=> b!4742686 (=> (not res!2009567) (not e!2958384))))

(assert (=> b!4742686 (= res!2009567 (is-Cons!52960 (toList!6011 lm!2023)))))

(declare-fun b!4742703 () Bool)

(declare-fun tp!1349290 () Bool)

(assert (=> b!4742703 (= e!2958383 tp!1349290)))

(declare-fun b!4742704 () Bool)

(declare-fun tp!1349291 () Bool)

(assert (=> b!4742704 (= e!2958377 (and tp_is_empty!31537 tp_is_empty!31539 tp!1349291))))

(assert (= (and start!483938 res!2009553) b!4742691))

(assert (= (and b!4742691 res!2009571) b!4742692))

(assert (= (and b!4742692 res!2009569) b!4742698))

(assert (= (and b!4742698 res!2009562) b!4742685))

(assert (= (and b!4742685 res!2009572) b!4742688))

(assert (= (and b!4742688 res!2009560) b!4742694))

(assert (= (and b!4742694 res!2009565) b!4742689))

(assert (= (and b!4742689 res!2009555) b!4742679))

(assert (= (and b!4742679 res!2009564) b!4742699))

(assert (= (and b!4742699 res!2009570) b!4742686))

(assert (= (and b!4742686 res!2009567) b!4742690))

(assert (= (and b!4742690 (not res!2009559)) b!4742700))

(assert (= (and b!4742700 (not res!2009556)) b!4742681))

(assert (= (and b!4742681 (not res!2009563)) b!4742693))

(assert (= (and b!4742693 (not res!2009566)) b!4742696))

(assert (= (and b!4742696 (not res!2009554)) b!4742682))

(assert (= (and b!4742682 (not res!2009550)) b!4742684))

(assert (= (and b!4742684 (not res!2009558)) b!4742680))

(assert (= (and b!4742680 (not res!2009573)) b!4742687))

(assert (= (and b!4742687 (not res!2009561)) b!4742697))

(assert (= (and b!4742697 (not res!2009551)) b!4742702))

(assert (= (and b!4742702 (not res!2009552)) b!4742683))

(assert (= (and b!4742683 (not res!2009568)) b!4742695))

(assert (= (and b!4742695 (not res!2009557)) b!4742701))

(assert (= start!483938 b!4742703))

(assert (= (and start!483938 (is-Cons!52959 oldBucket!34)) b!4742704))

(assert (= (and start!483938 (is-Cons!52959 newBucket!218)) b!4742678))

(declare-fun m!5696763 () Bool)

(assert (=> b!4742694 m!5696763))

(declare-fun m!5696765 () Bool)

(assert (=> start!483938 m!5696765))

(declare-fun m!5696767 () Bool)

(assert (=> start!483938 m!5696767))

(declare-fun m!5696769 () Bool)

(assert (=> b!4742692 m!5696769))

(declare-fun m!5696771 () Bool)

(assert (=> b!4742698 m!5696771))

(declare-fun m!5696773 () Bool)

(assert (=> b!4742699 m!5696773))

(declare-fun m!5696775 () Bool)

(assert (=> b!4742689 m!5696775))

(declare-fun m!5696777 () Bool)

(assert (=> b!4742687 m!5696777))

(declare-fun m!5696779 () Bool)

(assert (=> b!4742700 m!5696779))

(declare-fun m!5696781 () Bool)

(assert (=> b!4742700 m!5696781))

(declare-fun m!5696783 () Bool)

(assert (=> b!4742700 m!5696783))

(declare-fun m!5696785 () Bool)

(assert (=> b!4742700 m!5696785))

(declare-fun m!5696787 () Bool)

(assert (=> b!4742700 m!5696787))

(declare-fun m!5696789 () Bool)

(assert (=> b!4742700 m!5696789))

(declare-fun m!5696791 () Bool)

(assert (=> b!4742700 m!5696791))

(declare-fun m!5696793 () Bool)

(assert (=> b!4742700 m!5696793))

(declare-fun m!5696795 () Bool)

(assert (=> b!4742700 m!5696795))

(declare-fun m!5696797 () Bool)

(assert (=> b!4742700 m!5696797))

(declare-fun m!5696799 () Bool)

(assert (=> b!4742700 m!5696799))

(declare-fun m!5696801 () Bool)

(assert (=> b!4742700 m!5696801))

(assert (=> b!4742700 m!5696795))

(declare-fun m!5696803 () Bool)

(assert (=> b!4742696 m!5696803))

(declare-fun m!5696805 () Bool)

(assert (=> b!4742696 m!5696805))

(declare-fun m!5696807 () Bool)

(assert (=> b!4742696 m!5696807))

(declare-fun m!5696809 () Bool)

(assert (=> b!4742696 m!5696809))

(assert (=> b!4742696 m!5696809))

(declare-fun m!5696811 () Bool)

(assert (=> b!4742696 m!5696811))

(declare-fun m!5696813 () Bool)

(assert (=> b!4742696 m!5696813))

(declare-fun m!5696815 () Bool)

(assert (=> b!4742696 m!5696815))

(declare-fun m!5696817 () Bool)

(assert (=> b!4742696 m!5696817))

(declare-fun m!5696819 () Bool)

(assert (=> b!4742696 m!5696819))

(declare-fun m!5696821 () Bool)

(assert (=> b!4742696 m!5696821))

(declare-fun m!5696823 () Bool)

(assert (=> b!4742696 m!5696823))

(declare-fun m!5696825 () Bool)

(assert (=> b!4742696 m!5696825))

(declare-fun m!5696827 () Bool)

(assert (=> b!4742696 m!5696827))

(assert (=> b!4742696 m!5696811))

(declare-fun m!5696829 () Bool)

(assert (=> b!4742696 m!5696829))

(assert (=> b!4742696 m!5696827))

(assert (=> b!4742696 m!5696821))

(declare-fun m!5696831 () Bool)

(assert (=> b!4742696 m!5696831))

(declare-fun m!5696833 () Bool)

(assert (=> b!4742696 m!5696833))

(declare-fun m!5696835 () Bool)

(assert (=> b!4742696 m!5696835))

(assert (=> b!4742696 m!5696815))

(declare-fun m!5696837 () Bool)

(assert (=> b!4742696 m!5696837))

(assert (=> b!4742696 m!5696835))

(assert (=> b!4742696 m!5696805))

(declare-fun m!5696839 () Bool)

(assert (=> b!4742696 m!5696839))

(assert (=> b!4742696 m!5696803))

(declare-fun m!5696841 () Bool)

(assert (=> b!4742685 m!5696841))

(declare-fun m!5696843 () Bool)

(assert (=> b!4742690 m!5696843))

(declare-fun m!5696845 () Bool)

(assert (=> b!4742690 m!5696845))

(declare-fun m!5696847 () Bool)

(assert (=> b!4742690 m!5696847))

(declare-fun m!5696849 () Bool)

(assert (=> b!4742681 m!5696849))

(declare-fun m!5696851 () Bool)

(assert (=> b!4742681 m!5696851))

(declare-fun m!5696853 () Bool)

(assert (=> b!4742681 m!5696853))

(declare-fun m!5696855 () Bool)

(assert (=> b!4742695 m!5696855))

(declare-fun m!5696857 () Bool)

(assert (=> b!4742679 m!5696857))

(declare-fun m!5696859 () Bool)

(assert (=> b!4742691 m!5696859))

(declare-fun m!5696861 () Bool)

(assert (=> b!4742701 m!5696861))

(declare-fun m!5696863 () Bool)

(assert (=> b!4742697 m!5696863))

(declare-fun m!5696865 () Bool)

(assert (=> b!4742683 m!5696865))

(declare-fun m!5696867 () Bool)

(assert (=> b!4742684 m!5696867))

(assert (=> b!4742684 m!5696867))

(declare-fun m!5696869 () Bool)

(assert (=> b!4742684 m!5696869))

(declare-fun m!5696871 () Bool)

(assert (=> b!4742702 m!5696871))

(declare-fun m!5696873 () Bool)

(assert (=> b!4742688 m!5696873))

(declare-fun m!5696875 () Bool)

(assert (=> b!4742688 m!5696875))

(declare-fun m!5696877 () Bool)

(assert (=> b!4742693 m!5696877))

(declare-fun m!5696879 () Bool)

(assert (=> b!4742680 m!5696879))

(push 1)

(assert tp_is_empty!31537)

(assert (not b!4742689))

(assert (not b!4742701))

(assert (not b!4742702))

(assert (not b!4742703))

(assert (not b!4742695))

(assert tp_is_empty!31539)

(assert (not b!4742699))

(assert (not b!4742700))

(assert (not b!4742678))

(assert (not start!483938))

(assert (not b!4742694))

(assert (not b!4742698))

(assert (not b!4742697))

(assert (not b!4742680))

(assert (not b!4742679))

(assert (not b!4742683))

(assert (not b!4742681))

(assert (not b!4742693))

(assert (not b!4742704))

(assert (not b!4742696))

(assert (not b!4742691))

(assert (not b!4742685))

(assert (not b!4742692))

(assert (not b!4742688))

(assert (not b!4742687))

(assert (not b!4742690))

(assert (not b!4742684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4742797 () Bool)

(declare-fun e!2958426 () List!53083)

(assert (=> b!4742797 (= e!2958426 Nil!52959)))

(declare-fun b!4742795 () Bool)

(declare-fun e!2958425 () List!53083)

(assert (=> b!4742795 (= e!2958425 e!2958426)))

(declare-fun c!810137 () Bool)

(assert (=> b!4742795 (= c!810137 (is-Cons!52959 lt!1905156))))

(declare-fun b!4742794 () Bool)

(assert (=> b!4742794 (= e!2958425 (t!360383 lt!1905156))))

(declare-fun d!1515249 () Bool)

(declare-fun lt!1905232 () List!53083)

(assert (=> d!1515249 (not (containsKey!3478 lt!1905232 key!4653))))

(assert (=> d!1515249 (= lt!1905232 e!2958425)))

(declare-fun c!810136 () Bool)

(assert (=> d!1515249 (= c!810136 (and (is-Cons!52959 lt!1905156) (= (_1!30613 (h!59342 lt!1905156)) key!4653)))))

(assert (=> d!1515249 (noDuplicateKeys!2061 lt!1905156)))

(assert (=> d!1515249 (= (removePairForKey!1656 lt!1905156 key!4653) lt!1905232)))

(declare-fun b!4742796 () Bool)

(assert (=> b!4742796 (= e!2958426 (Cons!52959 (h!59342 lt!1905156) (removePairForKey!1656 (t!360383 lt!1905156) key!4653)))))

(assert (= (and d!1515249 c!810136) b!4742794))

(assert (= (and d!1515249 (not c!810136)) b!4742795))

(assert (= (and b!4742795 c!810137) b!4742796))

(assert (= (and b!4742795 (not c!810137)) b!4742797))

(declare-fun m!5696999 () Bool)

(assert (=> d!1515249 m!5696999))

(declare-fun m!5697001 () Bool)

(assert (=> d!1515249 m!5697001))

(declare-fun m!5697003 () Bool)

(assert (=> b!4742796 m!5697003))

(assert (=> b!4742681 d!1515249))

(declare-fun d!1515251 () Bool)

(assert (=> d!1515251 (= (tail!9122 newBucket!218) (t!360383 newBucket!218))))

(assert (=> b!4742681 d!1515251))

(declare-fun d!1515253 () Bool)

(assert (=> d!1515253 (= (tail!9122 oldBucket!34) (t!360383 oldBucket!34))))

(assert (=> b!4742681 d!1515253))

(declare-fun d!1515255 () Bool)

(declare-fun res!2009650 () Bool)

(declare-fun e!2958431 () Bool)

(assert (=> d!1515255 (=> res!2009650 e!2958431)))

(assert (=> d!1515255 (= res!2009650 (not (is-Cons!52959 newBucket!218)))))

(assert (=> d!1515255 (= (noDuplicateKeys!2061 newBucket!218) e!2958431)))

(declare-fun b!4742802 () Bool)

(declare-fun e!2958432 () Bool)

(assert (=> b!4742802 (= e!2958431 e!2958432)))

(declare-fun res!2009651 () Bool)

(assert (=> b!4742802 (=> (not res!2009651) (not e!2958432))))

(assert (=> b!4742802 (= res!2009651 (not (containsKey!3478 (t!360383 newBucket!218) (_1!30613 (h!59342 newBucket!218)))))))

(declare-fun b!4742803 () Bool)

(assert (=> b!4742803 (= e!2958432 (noDuplicateKeys!2061 (t!360383 newBucket!218)))))

(assert (= (and d!1515255 (not res!2009650)) b!4742802))

(assert (= (and b!4742802 res!2009651) b!4742803))

(declare-fun m!5697005 () Bool)

(assert (=> b!4742802 m!5697005))

(declare-fun m!5697007 () Bool)

(assert (=> b!4742803 m!5697007))

(assert (=> b!4742692 d!1515255))

(declare-fun d!1515257 () Bool)

(declare-fun res!2009652 () Bool)

(declare-fun e!2958433 () Bool)

(assert (=> d!1515257 (=> res!2009652 e!2958433)))

(assert (=> d!1515257 (= res!2009652 (not (is-Cons!52959 oldBucket!34)))))

(assert (=> d!1515257 (= (noDuplicateKeys!2061 oldBucket!34) e!2958433)))

(declare-fun b!4742804 () Bool)

(declare-fun e!2958434 () Bool)

(assert (=> b!4742804 (= e!2958433 e!2958434)))

(declare-fun res!2009653 () Bool)

(assert (=> b!4742804 (=> (not res!2009653) (not e!2958434))))

(assert (=> b!4742804 (= res!2009653 (not (containsKey!3478 (t!360383 oldBucket!34) (_1!30613 (h!59342 oldBucket!34)))))))

(declare-fun b!4742805 () Bool)

(assert (=> b!4742805 (= e!2958434 (noDuplicateKeys!2061 (t!360383 oldBucket!34)))))

(assert (= (and d!1515257 (not res!2009652)) b!4742804))

(assert (= (and b!4742804 res!2009653) b!4742805))

(declare-fun m!5697009 () Bool)

(assert (=> b!4742804 m!5697009))

(assert (=> b!4742805 m!5696777))

(assert (=> b!4742691 d!1515257))

(declare-fun d!1515259 () Bool)

(assert (=> d!1515259 true))

(assert (=> d!1515259 true))

(declare-fun lambda!219425 () Int)

(declare-fun forall!11690 (List!53083 Int) Bool)

(assert (=> d!1515259 (= (allKeysSameHash!1887 (t!360383 oldBucket!34) hash!405 hashF!1323) (forall!11690 (t!360383 oldBucket!34) lambda!219425))))

(declare-fun bs!1135749 () Bool)

(assert (= bs!1135749 d!1515259))

(declare-fun m!5697011 () Bool)

(assert (=> bs!1135749 m!5697011))

(assert (=> b!4742702 d!1515259))

(declare-fun d!1515261 () Bool)

(assert (=> d!1515261 (= (head!10326 lt!1905148) (h!59343 lt!1905148))))

(assert (=> b!4742701 d!1515261))

(declare-fun d!1515263 () Bool)

(declare-fun res!2009658 () Bool)

(declare-fun e!2958439 () Bool)

(assert (=> d!1515263 (=> res!2009658 e!2958439)))

(assert (=> d!1515263 (= res!2009658 (is-Nil!52960 lt!1905148))))

(assert (=> d!1515263 (= (forall!11688 lt!1905148 lambda!219415) e!2958439)))

(declare-fun b!4742814 () Bool)

(declare-fun e!2958440 () Bool)

(assert (=> b!4742814 (= e!2958439 e!2958440)))

(declare-fun res!2009659 () Bool)

(assert (=> b!4742814 (=> (not res!2009659) (not e!2958440))))

(declare-fun dynLambda!21876 (Int tuple2!54640) Bool)

(assert (=> b!4742814 (= res!2009659 (dynLambda!21876 lambda!219415 (h!59343 lt!1905148)))))

(declare-fun b!4742815 () Bool)

(assert (=> b!4742815 (= e!2958440 (forall!11688 (t!360384 lt!1905148) lambda!219415))))

(assert (= (and d!1515263 (not res!2009658)) b!4742814))

(assert (= (and b!4742814 res!2009659) b!4742815))

(declare-fun b_lambda!182605 () Bool)

(assert (=> (not b_lambda!182605) (not b!4742814)))

(declare-fun m!5697013 () Bool)

(assert (=> b!4742814 m!5697013))

(declare-fun m!5697015 () Bool)

(assert (=> b!4742815 m!5697015))

(assert (=> b!4742680 d!1515263))

(declare-fun bs!1135750 () Bool)

(declare-fun d!1515265 () Bool)

(assert (= bs!1135750 (and d!1515265 start!483938)))

(declare-fun lambda!219428 () Int)

(assert (=> bs!1135750 (not (= lambda!219428 lambda!219415))))

(assert (=> d!1515265 true))

(assert (=> d!1515265 (= (allKeysSameHashInMap!1975 lm!2023 hashF!1323) (forall!11688 (toList!6011 lm!2023) lambda!219428))))

(declare-fun bs!1135751 () Bool)

(assert (= bs!1135751 d!1515265))

(declare-fun m!5697017 () Bool)

(assert (=> bs!1135751 m!5697017))

(assert (=> b!4742679 d!1515265))

(declare-fun bs!1135756 () Bool)

(declare-fun b!4742886 () Bool)

(assert (= bs!1135756 (and b!4742886 d!1515259)))

(declare-fun lambda!219461 () Int)

(assert (=> bs!1135756 (not (= lambda!219461 lambda!219425))))

(assert (=> b!4742886 true))

(declare-fun bs!1135757 () Bool)

(declare-fun b!4742887 () Bool)

(assert (= bs!1135757 (and b!4742887 d!1515259)))

(declare-fun lambda!219462 () Int)

(assert (=> bs!1135757 (not (= lambda!219462 lambda!219425))))

(declare-fun bs!1135758 () Bool)

(assert (= bs!1135758 (and b!4742887 b!4742886)))

(assert (=> bs!1135758 (= lambda!219462 lambda!219461)))

(assert (=> b!4742887 true))

(declare-fun lambda!219463 () Int)

(assert (=> bs!1135757 (not (= lambda!219463 lambda!219425))))

(declare-fun lt!1905306 () ListMap!5375)

(assert (=> bs!1135758 (= (= lt!1905306 lt!1905142) (= lambda!219463 lambda!219461))))

(assert (=> b!4742887 (= (= lt!1905306 lt!1905142) (= lambda!219463 lambda!219462))))

(assert (=> b!4742887 true))

(declare-fun bs!1135759 () Bool)

(declare-fun d!1515267 () Bool)

(assert (= bs!1135759 (and d!1515267 d!1515259)))

(declare-fun lambda!219464 () Int)

(assert (=> bs!1135759 (not (= lambda!219464 lambda!219425))))

(declare-fun bs!1135760 () Bool)

(assert (= bs!1135760 (and d!1515267 b!4742886)))

(declare-fun lt!1905304 () ListMap!5375)

(assert (=> bs!1135760 (= (= lt!1905304 lt!1905142) (= lambda!219464 lambda!219461))))

(declare-fun bs!1135761 () Bool)

(assert (= bs!1135761 (and d!1515267 b!4742887)))

(assert (=> bs!1135761 (= (= lt!1905304 lt!1905142) (= lambda!219464 lambda!219462))))

(assert (=> bs!1135761 (= (= lt!1905304 lt!1905306) (= lambda!219464 lambda!219463))))

(assert (=> d!1515267 true))

(declare-fun bm!331903 () Bool)

(declare-fun call!331910 () Unit!133727)

(declare-fun lemmaContainsAllItsOwnKeys!831 (ListMap!5375) Unit!133727)

(assert (=> bm!331903 (= call!331910 (lemmaContainsAllItsOwnKeys!831 lt!1905142))))

(declare-fun e!2958484 () Bool)

(assert (=> d!1515267 e!2958484))

(declare-fun res!2009687 () Bool)

(assert (=> d!1515267 (=> (not res!2009687) (not e!2958484))))

(assert (=> d!1515267 (= res!2009687 (forall!11690 (_2!30614 (h!59343 (toList!6011 lm!2023))) lambda!219464))))

(declare-fun e!2958485 () ListMap!5375)

(assert (=> d!1515267 (= lt!1905304 e!2958485)))

(declare-fun c!810156 () Bool)

(assert (=> d!1515267 (= c!810156 (is-Nil!52959 (_2!30614 (h!59343 (toList!6011 lm!2023)))))))

(assert (=> d!1515267 (noDuplicateKeys!2061 (_2!30614 (h!59343 (toList!6011 lm!2023))))))

(assert (=> d!1515267 (= (addToMapMapFromBucket!1491 (_2!30614 (h!59343 (toList!6011 lm!2023))) lt!1905142) lt!1905304)))

(declare-fun b!4742884 () Bool)

(declare-fun e!2958483 () Bool)

(assert (=> b!4742884 (= e!2958483 (forall!11690 (toList!6012 lt!1905142) lambda!219463))))

(declare-fun call!331909 () Bool)

(declare-fun bm!331904 () Bool)

(assert (=> bm!331904 (= call!331909 (forall!11690 (ite c!810156 (toList!6012 lt!1905142) (t!360383 (_2!30614 (h!59343 (toList!6011 lm!2023))))) (ite c!810156 lambda!219461 lambda!219463)))))

(declare-fun b!4742885 () Bool)

(declare-fun invariantList!1546 (List!53083) Bool)

(assert (=> b!4742885 (= e!2958484 (invariantList!1546 (toList!6012 lt!1905304)))))

(declare-fun call!331908 () Bool)

(declare-fun bm!331905 () Bool)

(assert (=> bm!331905 (= call!331908 (forall!11690 (ite c!810156 (toList!6012 lt!1905142) (_2!30614 (h!59343 (toList!6011 lm!2023)))) (ite c!810156 lambda!219461 lambda!219463)))))

(assert (=> b!4742886 (= e!2958485 lt!1905142)))

(declare-fun lt!1905312 () Unit!133727)

(assert (=> b!4742886 (= lt!1905312 call!331910)))

(assert (=> b!4742886 call!331909))

(declare-fun lt!1905307 () Unit!133727)

(assert (=> b!4742886 (= lt!1905307 lt!1905312)))

(assert (=> b!4742886 call!331908))

(declare-fun lt!1905309 () Unit!133727)

(declare-fun Unit!133731 () Unit!133727)

(assert (=> b!4742886 (= lt!1905309 Unit!133731)))

(assert (=> b!4742887 (= e!2958485 lt!1905306)))

(declare-fun lt!1905311 () ListMap!5375)

(assert (=> b!4742887 (= lt!1905311 (+!2309 lt!1905142 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023))))))))

(assert (=> b!4742887 (= lt!1905306 (addToMapMapFromBucket!1491 (t!360383 (_2!30614 (h!59343 (toList!6011 lm!2023)))) (+!2309 lt!1905142 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023)))))))))

(declare-fun lt!1905315 () Unit!133727)

(assert (=> b!4742887 (= lt!1905315 call!331910)))

(assert (=> b!4742887 (forall!11690 (toList!6012 lt!1905142) lambda!219462)))

(declare-fun lt!1905300 () Unit!133727)

(assert (=> b!4742887 (= lt!1905300 lt!1905315)))

(assert (=> b!4742887 (forall!11690 (toList!6012 lt!1905311) lambda!219463)))

(declare-fun lt!1905296 () Unit!133727)

(declare-fun Unit!133732 () Unit!133727)

(assert (=> b!4742887 (= lt!1905296 Unit!133732)))

(assert (=> b!4742887 call!331909))

(declare-fun lt!1905301 () Unit!133727)

(declare-fun Unit!133733 () Unit!133727)

(assert (=> b!4742887 (= lt!1905301 Unit!133733)))

(declare-fun lt!1905299 () Unit!133727)

(declare-fun Unit!133734 () Unit!133727)

(assert (=> b!4742887 (= lt!1905299 Unit!133734)))

(declare-fun lt!1905308 () Unit!133727)

(declare-fun forallContained!3730 (List!53083 Int tuple2!54638) Unit!133727)

(assert (=> b!4742887 (= lt!1905308 (forallContained!3730 (toList!6012 lt!1905311) lambda!219463 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023))))))))

(assert (=> b!4742887 (contains!16371 lt!1905311 (_1!30613 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023))))))))

(declare-fun lt!1905314 () Unit!133727)

(declare-fun Unit!133735 () Unit!133727)

(assert (=> b!4742887 (= lt!1905314 Unit!133735)))

(assert (=> b!4742887 (contains!16371 lt!1905306 (_1!30613 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023))))))))

(declare-fun lt!1905310 () Unit!133727)

(declare-fun Unit!133736 () Unit!133727)

(assert (=> b!4742887 (= lt!1905310 Unit!133736)))

(assert (=> b!4742887 call!331908))

(declare-fun lt!1905297 () Unit!133727)

(declare-fun Unit!133737 () Unit!133727)

(assert (=> b!4742887 (= lt!1905297 Unit!133737)))

(assert (=> b!4742887 (forall!11690 (toList!6012 lt!1905311) lambda!219463)))

(declare-fun lt!1905316 () Unit!133727)

(declare-fun Unit!133738 () Unit!133727)

(assert (=> b!4742887 (= lt!1905316 Unit!133738)))

(declare-fun lt!1905305 () Unit!133727)

(declare-fun Unit!133739 () Unit!133727)

(assert (=> b!4742887 (= lt!1905305 Unit!133739)))

(declare-fun lt!1905302 () Unit!133727)

(declare-fun addForallContainsKeyThenBeforeAdding!830 (ListMap!5375 ListMap!5375 K!14303 V!14549) Unit!133727)

(assert (=> b!4742887 (= lt!1905302 (addForallContainsKeyThenBeforeAdding!830 lt!1905142 lt!1905306 (_1!30613 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023))))) (_2!30613 (h!59342 (_2!30614 (h!59343 (toList!6011 lm!2023)))))))))

(assert (=> b!4742887 (forall!11690 (toList!6012 lt!1905142) lambda!219463)))

(declare-fun lt!1905313 () Unit!133727)

(assert (=> b!4742887 (= lt!1905313 lt!1905302)))

(assert (=> b!4742887 (forall!11690 (toList!6012 lt!1905142) lambda!219463)))

(declare-fun lt!1905298 () Unit!133727)

(declare-fun Unit!133740 () Unit!133727)

(assert (=> b!4742887 (= lt!1905298 Unit!133740)))

(declare-fun res!2009688 () Bool)

(assert (=> b!4742887 (= res!2009688 (forall!11690 (_2!30614 (h!59343 (toList!6011 lm!2023))) lambda!219463))))

(assert (=> b!4742887 (=> (not res!2009688) (not e!2958483))))

(assert (=> b!4742887 e!2958483))

(declare-fun lt!1905303 () Unit!133727)

(declare-fun Unit!133741 () Unit!133727)

(assert (=> b!4742887 (= lt!1905303 Unit!133741)))

(declare-fun b!4742888 () Bool)

(declare-fun res!2009686 () Bool)

(assert (=> b!4742888 (=> (not res!2009686) (not e!2958484))))

(assert (=> b!4742888 (= res!2009686 (forall!11690 (toList!6012 lt!1905142) lambda!219464))))

(assert (= (and d!1515267 c!810156) b!4742886))

(assert (= (and d!1515267 (not c!810156)) b!4742887))

(assert (= (and b!4742887 res!2009688) b!4742884))

(assert (= (or b!4742886 b!4742887) bm!331903))

(assert (= (or b!4742886 b!4742887) bm!331905))

(assert (= (or b!4742886 b!4742887) bm!331904))

(assert (= (and d!1515267 res!2009687) b!4742888))

(assert (= (and b!4742888 res!2009686) b!4742885))

(declare-fun m!5697049 () Bool)

(assert (=> b!4742887 m!5697049))

(declare-fun m!5697051 () Bool)

(assert (=> b!4742887 m!5697051))

(declare-fun m!5697053 () Bool)

(assert (=> b!4742887 m!5697053))

(assert (=> b!4742887 m!5697049))

(declare-fun m!5697055 () Bool)

(assert (=> b!4742887 m!5697055))

(declare-fun m!5697057 () Bool)

(assert (=> b!4742887 m!5697057))

(declare-fun m!5697059 () Bool)

(assert (=> b!4742887 m!5697059))

(assert (=> b!4742887 m!5697057))

(declare-fun m!5697061 () Bool)

(assert (=> b!4742887 m!5697061))

(declare-fun m!5697063 () Bool)

(assert (=> b!4742887 m!5697063))

(declare-fun m!5697065 () Bool)

(assert (=> b!4742887 m!5697065))

(assert (=> b!4742887 m!5697063))

(declare-fun m!5697069 () Bool)

(assert (=> b!4742887 m!5697069))

(declare-fun m!5697071 () Bool)

(assert (=> b!4742888 m!5697071))

(declare-fun m!5697075 () Bool)

(assert (=> d!1515267 m!5697075))

(declare-fun m!5697077 () Bool)

(assert (=> d!1515267 m!5697077))

(declare-fun m!5697081 () Bool)

(assert (=> bm!331905 m!5697081))

(declare-fun m!5697083 () Bool)

(assert (=> bm!331903 m!5697083))

(declare-fun m!5697087 () Bool)

(assert (=> b!4742885 m!5697087))

(assert (=> b!4742884 m!5697049))

(declare-fun m!5697089 () Bool)

(assert (=> bm!331904 m!5697089))

(assert (=> b!4742690 d!1515267))

(declare-fun bs!1135762 () Bool)

(declare-fun d!1515297 () Bool)

(assert (= bs!1135762 (and d!1515297 start!483938)))

(declare-fun lambda!219467 () Int)

(assert (=> bs!1135762 (= lambda!219467 lambda!219415)))

(declare-fun bs!1135763 () Bool)

(assert (= bs!1135763 (and d!1515297 d!1515265)))

(assert (=> bs!1135763 (not (= lambda!219467 lambda!219428))))

(declare-fun lt!1905327 () ListMap!5375)

(assert (=> d!1515297 (invariantList!1546 (toList!6012 lt!1905327))))

(declare-fun e!2958494 () ListMap!5375)

(assert (=> d!1515297 (= lt!1905327 e!2958494)))

(declare-fun c!810162 () Bool)

(assert (=> d!1515297 (= c!810162 (is-Cons!52960 (t!360384 (toList!6011 lm!2023))))))

(assert (=> d!1515297 (forall!11688 (t!360384 (toList!6011 lm!2023)) lambda!219467)))

(assert (=> d!1515297 (= (extractMap!2087 (t!360384 (toList!6011 lm!2023))) lt!1905327)))

(declare-fun b!4742904 () Bool)

(assert (=> b!4742904 (= e!2958494 (addToMapMapFromBucket!1491 (_2!30614 (h!59343 (t!360384 (toList!6011 lm!2023)))) (extractMap!2087 (t!360384 (t!360384 (toList!6011 lm!2023))))))))

(declare-fun b!4742905 () Bool)

(assert (=> b!4742905 (= e!2958494 (ListMap!5376 Nil!52959))))

(assert (= (and d!1515297 c!810162) b!4742904))

(assert (= (and d!1515297 (not c!810162)) b!4742905))

(declare-fun m!5697103 () Bool)

(assert (=> d!1515297 m!5697103))

(declare-fun m!5697105 () Bool)

(assert (=> d!1515297 m!5697105))

(declare-fun m!5697107 () Bool)

(assert (=> b!4742904 m!5697107))

(assert (=> b!4742904 m!5697107))

(declare-fun m!5697109 () Bool)

(assert (=> b!4742904 m!5697109))

(assert (=> b!4742690 d!1515297))

(declare-fun d!1515301 () Bool)

(declare-fun tail!9126 (List!53084) List!53084)

(assert (=> d!1515301 (= (tail!9123 lm!2023) (ListLongMap!4542 (tail!9126 (toList!6011 lm!2023))))))

(declare-fun bs!1135764 () Bool)

(assert (= bs!1135764 d!1515301))

(declare-fun m!5697111 () Bool)

(assert (=> bs!1135764 m!5697111))

(assert (=> b!4742690 d!1515301))

(declare-fun bs!1135765 () Bool)

(declare-fun d!1515303 () Bool)

(assert (= bs!1135765 (and d!1515303 b!4742887)))

(declare-fun lambda!219468 () Int)

(assert (=> bs!1135765 (not (= lambda!219468 lambda!219462))))

(assert (=> bs!1135765 (not (= lambda!219468 lambda!219463))))

(declare-fun bs!1135766 () Bool)

(assert (= bs!1135766 (and d!1515303 b!4742886)))

(assert (=> bs!1135766 (not (= lambda!219468 lambda!219461))))

(declare-fun bs!1135767 () Bool)

(assert (= bs!1135767 (and d!1515303 d!1515259)))

(assert (=> bs!1135767 (= lambda!219468 lambda!219425)))

(declare-fun bs!1135768 () Bool)

(assert (= bs!1135768 (and d!1515303 d!1515267)))

(assert (=> bs!1135768 (not (= lambda!219468 lambda!219464))))

(assert (=> d!1515303 true))

(assert (=> d!1515303 true))

(assert (=> d!1515303 (= (allKeysSameHash!1887 newBucket!218 hash!405 hashF!1323) (forall!11690 newBucket!218 lambda!219468))))

(declare-fun bs!1135769 () Bool)

(assert (= bs!1135769 d!1515303))

(declare-fun m!5697113 () Bool)

(assert (=> bs!1135769 m!5697113))

(assert (=> b!4742689 d!1515303))

(declare-fun d!1515305 () Bool)

(assert (=> d!1515305 (dynLambda!21876 lambda!219415 lt!1905147)))

(declare-fun lt!1905330 () Unit!133727)

(declare-fun choose!33669 (List!53084 Int tuple2!54640) Unit!133727)

(assert (=> d!1515305 (= lt!1905330 (choose!33669 (toList!6011 lm!2023) lambda!219415 lt!1905147))))

(declare-fun e!2958497 () Bool)

(assert (=> d!1515305 e!2958497))

(declare-fun res!2009694 () Bool)

(assert (=> d!1515305 (=> (not res!2009694) (not e!2958497))))

(assert (=> d!1515305 (= res!2009694 (forall!11688 (toList!6011 lm!2023) lambda!219415))))

(assert (=> d!1515305 (= (forallContained!3728 (toList!6011 lm!2023) lambda!219415 lt!1905147) lt!1905330)))

(declare-fun b!4742908 () Bool)

(assert (=> b!4742908 (= e!2958497 (contains!16372 (toList!6011 lm!2023) lt!1905147))))

(assert (= (and d!1515305 res!2009694) b!4742908))

(declare-fun b_lambda!182609 () Bool)

(assert (=> (not b_lambda!182609) (not d!1515305)))

(declare-fun m!5697115 () Bool)

(assert (=> d!1515305 m!5697115))

(declare-fun m!5697117 () Bool)

(assert (=> d!1515305 m!5697117))

(assert (=> d!1515305 m!5696765))

(assert (=> b!4742908 m!5696783))

(assert (=> b!4742700 d!1515305))

(declare-fun bs!1135770 () Bool)

(declare-fun d!1515307 () Bool)

(assert (= bs!1135770 (and d!1515307 start!483938)))

(declare-fun lambda!219471 () Int)

(assert (=> bs!1135770 (= lambda!219471 lambda!219415)))

(declare-fun bs!1135771 () Bool)

(assert (= bs!1135771 (and d!1515307 d!1515265)))

(assert (=> bs!1135771 (not (= lambda!219471 lambda!219428))))

(declare-fun bs!1135772 () Bool)

(assert (= bs!1135772 (and d!1515307 d!1515297)))

(assert (=> bs!1135772 (= lambda!219471 lambda!219467)))

(assert (=> d!1515307 (contains!16373 lm!2023 (hash!4465 hashF!1323 key!4653))))

(declare-fun lt!1905333 () Unit!133727)

(declare-fun choose!33670 (ListLongMap!4541 K!14303 Hashable!6430) Unit!133727)

(assert (=> d!1515307 (= lt!1905333 (choose!33670 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1515307 (forall!11688 (toList!6011 lm!2023) lambda!219471)))

(assert (=> d!1515307 (= (lemmaInGenMapThenLongMapContainsHash!807 lm!2023 key!4653 hashF!1323) lt!1905333)))

(declare-fun bs!1135773 () Bool)

(assert (= bs!1135773 d!1515307))

(assert (=> bs!1135773 m!5696763))

(assert (=> bs!1135773 m!5696763))

(declare-fun m!5697119 () Bool)

(assert (=> bs!1135773 m!5697119))

(declare-fun m!5697121 () Bool)

(assert (=> bs!1135773 m!5697121))

(declare-fun m!5697123 () Bool)

(assert (=> bs!1135773 m!5697123))

(assert (=> b!4742700 d!1515307))

(declare-fun d!1515309 () Bool)

(declare-datatypes ((Option!12466 0))(
  ( (None!12465) (Some!12465 (v!47142 List!53083)) )
))
(declare-fun get!17805 (Option!12466) List!53083)

(declare-fun getValueByKey!2022 (List!53084 (_ BitVec 64)) Option!12466)

(assert (=> d!1515309 (= (apply!12486 lm!2023 lt!1905157) (get!17805 (getValueByKey!2022 (toList!6011 lm!2023) lt!1905157)))))

(declare-fun bs!1135774 () Bool)

(assert (= bs!1135774 d!1515309))

(declare-fun m!5697125 () Bool)

(assert (=> bs!1135774 m!5697125))

(assert (=> bs!1135774 m!5697125))

(declare-fun m!5697127 () Bool)

(assert (=> bs!1135774 m!5697127))

(assert (=> b!4742700 d!1515309))

(declare-fun b!4742931 () Bool)

(declare-fun res!2009706 () Bool)

(declare-fun e!2958515 () Bool)

(assert (=> b!4742931 (=> (not res!2009706) (not e!2958515))))

(declare-fun lt!1905339 () Option!12464)

(declare-fun get!17806 (Option!12464) tuple2!54638)

(assert (=> b!4742931 (= res!2009706 (= (_1!30613 (get!17806 lt!1905339)) key!4653))))

(declare-fun b!4742932 () Bool)

(declare-fun e!2958514 () Option!12464)

(assert (=> b!4742932 (= e!2958514 (Some!12463 (h!59342 lt!1905138)))))

(declare-fun b!4742934 () Bool)

(declare-fun e!2958513 () Bool)

(assert (=> b!4742934 (= e!2958513 e!2958515)))

(declare-fun res!2009703 () Bool)

(assert (=> b!4742934 (=> (not res!2009703) (not e!2958515))))

(assert (=> b!4742934 (= res!2009703 (isDefined!9718 lt!1905339))))

(declare-fun b!4742935 () Bool)

(declare-fun contains!16377 (List!53083 tuple2!54638) Bool)

(assert (=> b!4742935 (= e!2958515 (contains!16377 lt!1905138 (get!17806 lt!1905339)))))

(declare-fun b!4742936 () Bool)

(declare-fun e!2958512 () Option!12464)

(assert (=> b!4742936 (= e!2958514 e!2958512)))

(declare-fun c!810170 () Bool)

(assert (=> b!4742936 (= c!810170 (is-Cons!52959 lt!1905138))))

(declare-fun b!4742937 () Bool)

(assert (=> b!4742937 (= e!2958512 None!12463)))

(declare-fun b!4742938 () Bool)

(assert (=> b!4742938 (= e!2958512 (getPair!601 (t!360383 lt!1905138) key!4653))))

(declare-fun b!4742933 () Bool)

(declare-fun e!2958511 () Bool)

(assert (=> b!4742933 (= e!2958511 (not (containsKey!3478 lt!1905138 key!4653)))))

(declare-fun d!1515311 () Bool)

(assert (=> d!1515311 e!2958513))

(declare-fun res!2009704 () Bool)

(assert (=> d!1515311 (=> res!2009704 e!2958513)))

(assert (=> d!1515311 (= res!2009704 e!2958511)))

(declare-fun res!2009705 () Bool)

(assert (=> d!1515311 (=> (not res!2009705) (not e!2958511))))

(declare-fun isEmpty!29238 (Option!12464) Bool)

(assert (=> d!1515311 (= res!2009705 (isEmpty!29238 lt!1905339))))

(assert (=> d!1515311 (= lt!1905339 e!2958514)))

(declare-fun c!810171 () Bool)

(assert (=> d!1515311 (= c!810171 (and (is-Cons!52959 lt!1905138) (= (_1!30613 (h!59342 lt!1905138)) key!4653)))))

(assert (=> d!1515311 (noDuplicateKeys!2061 lt!1905138)))

(assert (=> d!1515311 (= (getPair!601 lt!1905138 key!4653) lt!1905339)))

(assert (= (and d!1515311 c!810171) b!4742932))

(assert (= (and d!1515311 (not c!810171)) b!4742936))

(assert (= (and b!4742936 c!810170) b!4742938))

(assert (= (and b!4742936 (not c!810170)) b!4742937))

(assert (= (and d!1515311 res!2009705) b!4742933))

(assert (= (and d!1515311 (not res!2009704)) b!4742934))

(assert (= (and b!4742934 res!2009703) b!4742931))

(assert (= (and b!4742931 res!2009706) b!4742935))

(declare-fun m!5697135 () Bool)

(assert (=> b!4742935 m!5697135))

(assert (=> b!4742935 m!5697135))

(declare-fun m!5697137 () Bool)

(assert (=> b!4742935 m!5697137))

(assert (=> b!4742931 m!5697135))

(declare-fun m!5697139 () Bool)

(assert (=> b!4742938 m!5697139))

(declare-fun m!5697141 () Bool)

(assert (=> b!4742934 m!5697141))

(declare-fun m!5697143 () Bool)

(assert (=> d!1515311 m!5697143))

(declare-fun m!5697145 () Bool)

(assert (=> d!1515311 m!5697145))

(declare-fun m!5697147 () Bool)

(assert (=> b!4742933 m!5697147))

(assert (=> b!4742700 d!1515311))

(declare-fun bs!1135776 () Bool)

(declare-fun d!1515315 () Bool)

(assert (= bs!1135776 (and d!1515315 start!483938)))

(declare-fun lambda!219481 () Int)

(assert (=> bs!1135776 (= lambda!219481 lambda!219415)))

(declare-fun bs!1135777 () Bool)

(assert (= bs!1135777 (and d!1515315 d!1515265)))

(assert (=> bs!1135777 (not (= lambda!219481 lambda!219428))))

(declare-fun bs!1135778 () Bool)

(assert (= bs!1135778 (and d!1515315 d!1515297)))

(assert (=> bs!1135778 (= lambda!219481 lambda!219467)))

(declare-fun bs!1135779 () Bool)

(assert (= bs!1135779 (and d!1515315 d!1515307)))

(assert (=> bs!1135779 (= lambda!219481 lambda!219471)))

(declare-fun b!4742947 () Bool)

(declare-fun res!2009717 () Bool)

(declare-fun e!2958521 () Bool)

(assert (=> b!4742947 (=> (not res!2009717) (not e!2958521))))

(assert (=> b!4742947 (= res!2009717 (allKeysSameHashInMap!1975 lm!2023 hashF!1323))))

(declare-fun b!4742948 () Bool)

(declare-fun res!2009718 () Bool)

(assert (=> b!4742948 (=> (not res!2009718) (not e!2958521))))

(assert (=> b!4742948 (= res!2009718 (contains!16371 (extractMap!2087 (toList!6011 lm!2023)) key!4653))))

(declare-fun b!4742949 () Bool)

(assert (=> b!4742949 (= e!2958521 (isDefined!9718 (getPair!601 (apply!12486 lm!2023 (hash!4465 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1905357 () Unit!133727)

(assert (=> b!4742949 (= lt!1905357 (forallContained!3728 (toList!6011 lm!2023) lambda!219481 (tuple2!54641 (hash!4465 hashF!1323 key!4653) (apply!12486 lm!2023 (hash!4465 hashF!1323 key!4653)))))))

(declare-fun lt!1905358 () Unit!133727)

(declare-fun lt!1905363 () Unit!133727)

(assert (=> b!4742949 (= lt!1905358 lt!1905363)))

(declare-fun lt!1905356 () (_ BitVec 64))

(declare-fun lt!1905359 () List!53083)

(assert (=> b!4742949 (contains!16372 (toList!6011 lm!2023) (tuple2!54641 lt!1905356 lt!1905359))))

(assert (=> b!4742949 (= lt!1905363 (lemmaGetValueImpliesTupleContained!406 lm!2023 lt!1905356 lt!1905359))))

(declare-fun e!2958520 () Bool)

(assert (=> b!4742949 e!2958520))

(declare-fun res!2009715 () Bool)

(assert (=> b!4742949 (=> (not res!2009715) (not e!2958520))))

(assert (=> b!4742949 (= res!2009715 (contains!16373 lm!2023 lt!1905356))))

(assert (=> b!4742949 (= lt!1905359 (apply!12486 lm!2023 (hash!4465 hashF!1323 key!4653)))))

(assert (=> b!4742949 (= lt!1905356 (hash!4465 hashF!1323 key!4653))))

(declare-fun lt!1905362 () Unit!133727)

(declare-fun lt!1905360 () Unit!133727)

(assert (=> b!4742949 (= lt!1905362 lt!1905360)))

(assert (=> b!4742949 (contains!16373 lm!2023 (hash!4465 hashF!1323 key!4653))))

(assert (=> b!4742949 (= lt!1905360 (lemmaInGenMapThenLongMapContainsHash!807 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4742950 () Bool)

(assert (=> b!4742950 (= e!2958520 (= (getValueByKey!2022 (toList!6011 lm!2023) lt!1905356) (Some!12465 lt!1905359)))))

(assert (=> d!1515315 e!2958521))

(declare-fun res!2009716 () Bool)

(assert (=> d!1515315 (=> (not res!2009716) (not e!2958521))))

(assert (=> d!1515315 (= res!2009716 (forall!11688 (toList!6011 lm!2023) lambda!219481))))

(declare-fun lt!1905361 () Unit!133727)

(declare-fun choose!33671 (ListLongMap!4541 K!14303 Hashable!6430) Unit!133727)

(assert (=> d!1515315 (= lt!1905361 (choose!33671 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1515315 (forall!11688 (toList!6011 lm!2023) lambda!219481)))

(assert (=> d!1515315 (= (lemmaInGenMapThenGetPairDefined!397 lm!2023 key!4653 hashF!1323) lt!1905361)))

(assert (= (and d!1515315 res!2009716) b!4742947))

(assert (= (and b!4742947 res!2009717) b!4742948))

(assert (= (and b!4742948 res!2009718) b!4742949))

(assert (= (and b!4742949 res!2009715) b!4742950))

(assert (=> b!4742947 m!5696857))

(declare-fun m!5697149 () Bool)

(assert (=> b!4742949 m!5697149))

(declare-fun m!5697151 () Bool)

(assert (=> b!4742949 m!5697151))

(declare-fun m!5697153 () Bool)

(assert (=> b!4742949 m!5697153))

(assert (=> b!4742949 m!5697151))

(declare-fun m!5697155 () Bool)

(assert (=> b!4742949 m!5697155))

(assert (=> b!4742949 m!5696763))

(assert (=> b!4742949 m!5697119))

(declare-fun m!5697157 () Bool)

(assert (=> b!4742949 m!5697157))

(assert (=> b!4742949 m!5696785))

(assert (=> b!4742949 m!5696763))

(assert (=> b!4742949 m!5697149))

(declare-fun m!5697159 () Bool)

(assert (=> b!4742949 m!5697159))

(declare-fun m!5697161 () Bool)

(assert (=> b!4742949 m!5697161))

(assert (=> b!4742949 m!5696763))

(declare-fun m!5697163 () Bool)

(assert (=> d!1515315 m!5697163))

(declare-fun m!5697165 () Bool)

(assert (=> d!1515315 m!5697165))

(assert (=> d!1515315 m!5697163))

(assert (=> b!4742948 m!5696875))

(assert (=> b!4742948 m!5696875))

(declare-fun m!5697167 () Bool)

(assert (=> b!4742948 m!5697167))

(declare-fun m!5697169 () Bool)

(assert (=> b!4742950 m!5697169))

(assert (=> b!4742700 d!1515315))

(declare-fun d!1515317 () Bool)

(declare-fun lt!1905366 () Bool)

(declare-fun content!9470 (List!53084) (Set tuple2!54640))

(assert (=> d!1515317 (= lt!1905366 (set.member lt!1905147 (content!9470 (toList!6011 lm!2023))))))

(declare-fun e!2958526 () Bool)

(assert (=> d!1515317 (= lt!1905366 e!2958526)))

(declare-fun res!2009723 () Bool)

(assert (=> d!1515317 (=> (not res!2009723) (not e!2958526))))

(assert (=> d!1515317 (= res!2009723 (is-Cons!52960 (toList!6011 lm!2023)))))

(assert (=> d!1515317 (= (contains!16372 (toList!6011 lm!2023) lt!1905147) lt!1905366)))

(declare-fun b!4742955 () Bool)

(declare-fun e!2958527 () Bool)

(assert (=> b!4742955 (= e!2958526 e!2958527)))

(declare-fun res!2009724 () Bool)

(assert (=> b!4742955 (=> res!2009724 e!2958527)))

(assert (=> b!4742955 (= res!2009724 (= (h!59343 (toList!6011 lm!2023)) lt!1905147))))

(declare-fun b!4742956 () Bool)

(assert (=> b!4742956 (= e!2958527 (contains!16372 (t!360384 (toList!6011 lm!2023)) lt!1905147))))

(assert (= (and d!1515317 res!2009723) b!4742955))

(assert (= (and b!4742955 (not res!2009724)) b!4742956))

(declare-fun m!5697171 () Bool)

(assert (=> d!1515317 m!5697171))

(declare-fun m!5697173 () Bool)

(assert (=> d!1515317 m!5697173))

(declare-fun m!5697175 () Bool)

(assert (=> b!4742956 m!5697175))

(assert (=> b!4742700 d!1515317))

(declare-fun d!1515319 () Bool)

(assert (=> d!1515319 (containsKey!3478 oldBucket!34 key!4653)))

(declare-fun lt!1905369 () Unit!133727)

(declare-fun choose!33672 (List!53083 K!14303 Hashable!6430) Unit!133727)

(assert (=> d!1515319 (= lt!1905369 (choose!33672 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1515319 (noDuplicateKeys!2061 oldBucket!34)))

(assert (=> d!1515319 (= (lemmaGetPairDefinedThenContainsKey!345 oldBucket!34 key!4653 hashF!1323) lt!1905369)))

(declare-fun bs!1135780 () Bool)

(assert (= bs!1135780 d!1515319))

(assert (=> bs!1135780 m!5696793))

(declare-fun m!5697177 () Bool)

(assert (=> bs!1135780 m!5697177))

(assert (=> bs!1135780 m!5696859))

(assert (=> b!4742700 d!1515319))

(declare-fun d!1515321 () Bool)

(assert (=> d!1515321 (contains!16372 (toList!6011 lm!2023) (tuple2!54641 lt!1905157 lt!1905138))))

(declare-fun lt!1905372 () Unit!133727)

(declare-fun choose!33673 (ListLongMap!4541 (_ BitVec 64) List!53083) Unit!133727)

(assert (=> d!1515321 (= lt!1905372 (choose!33673 lm!2023 lt!1905157 lt!1905138))))

(assert (=> d!1515321 (contains!16373 lm!2023 lt!1905157)))

(assert (=> d!1515321 (= (lemmaGetValueImpliesTupleContained!406 lm!2023 lt!1905157 lt!1905138) lt!1905372)))

(declare-fun bs!1135781 () Bool)

(assert (= bs!1135781 d!1515321))

(declare-fun m!5697179 () Bool)

(assert (=> bs!1135781 m!5697179))

(declare-fun m!5697181 () Bool)

(assert (=> bs!1135781 m!5697181))

(assert (=> bs!1135781 m!5696801))

(assert (=> b!4742700 d!1515321))

(declare-fun d!1515323 () Bool)

(declare-fun res!2009729 () Bool)

(declare-fun e!2958532 () Bool)

(assert (=> d!1515323 (=> res!2009729 e!2958532)))

(assert (=> d!1515323 (= res!2009729 (and (is-Cons!52959 (t!360383 oldBucket!34)) (= (_1!30613 (h!59342 (t!360383 oldBucket!34))) key!4653)))))

(assert (=> d!1515323 (= (containsKey!3478 (t!360383 oldBucket!34) key!4653) e!2958532)))

(declare-fun b!4742962 () Bool)

(declare-fun e!2958533 () Bool)

(assert (=> b!4742962 (= e!2958532 e!2958533)))

(declare-fun res!2009730 () Bool)

(assert (=> b!4742962 (=> (not res!2009730) (not e!2958533))))

(assert (=> b!4742962 (= res!2009730 (is-Cons!52959 (t!360383 oldBucket!34)))))

(declare-fun b!4742963 () Bool)

(assert (=> b!4742963 (= e!2958533 (containsKey!3478 (t!360383 (t!360383 oldBucket!34)) key!4653))))

(assert (= (and d!1515323 (not res!2009729)) b!4742962))

(assert (= (and b!4742962 res!2009730) b!4742963))

(declare-fun m!5697183 () Bool)

(assert (=> b!4742963 m!5697183))

(assert (=> b!4742700 d!1515323))

(declare-fun d!1515325 () Bool)

(declare-fun res!2009731 () Bool)

(declare-fun e!2958534 () Bool)

(assert (=> d!1515325 (=> res!2009731 e!2958534)))

(assert (=> d!1515325 (= res!2009731 (and (is-Cons!52959 oldBucket!34) (= (_1!30613 (h!59342 oldBucket!34)) key!4653)))))

(assert (=> d!1515325 (= (containsKey!3478 oldBucket!34 key!4653) e!2958534)))

(declare-fun b!4742964 () Bool)

(declare-fun e!2958535 () Bool)

(assert (=> b!4742964 (= e!2958534 e!2958535)))

(declare-fun res!2009732 () Bool)

(assert (=> b!4742964 (=> (not res!2009732) (not e!2958535))))

(assert (=> b!4742964 (= res!2009732 (is-Cons!52959 oldBucket!34))))

(declare-fun b!4742965 () Bool)

(assert (=> b!4742965 (= e!2958535 (containsKey!3478 (t!360383 oldBucket!34) key!4653))))

(assert (= (and d!1515325 (not res!2009731)) b!4742964))

(assert (= (and b!4742964 res!2009732) b!4742965))

(assert (=> b!4742965 m!5696789))

(assert (=> b!4742700 d!1515325))

(declare-fun d!1515327 () Bool)

(declare-fun e!2958540 () Bool)

(assert (=> d!1515327 e!2958540))

(declare-fun res!2009735 () Bool)

(assert (=> d!1515327 (=> res!2009735 e!2958540)))

(declare-fun lt!1905384 () Bool)

(assert (=> d!1515327 (= res!2009735 (not lt!1905384))))

(declare-fun lt!1905382 () Bool)

(assert (=> d!1515327 (= lt!1905384 lt!1905382)))

(declare-fun lt!1905381 () Unit!133727)

(declare-fun e!2958541 () Unit!133727)

(assert (=> d!1515327 (= lt!1905381 e!2958541)))

(declare-fun c!810174 () Bool)

(assert (=> d!1515327 (= c!810174 lt!1905382)))

(declare-fun containsKey!3480 (List!53084 (_ BitVec 64)) Bool)

(assert (=> d!1515327 (= lt!1905382 (containsKey!3480 (toList!6011 lm!2023) lt!1905157))))

(assert (=> d!1515327 (= (contains!16373 lm!2023 lt!1905157) lt!1905384)))

(declare-fun b!4742972 () Bool)

(declare-fun lt!1905383 () Unit!133727)

(assert (=> b!4742972 (= e!2958541 lt!1905383)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1913 (List!53084 (_ BitVec 64)) Unit!133727)

(assert (=> b!4742972 (= lt!1905383 (lemmaContainsKeyImpliesGetValueByKeyDefined!1913 (toList!6011 lm!2023) lt!1905157))))

(declare-fun isDefined!9720 (Option!12466) Bool)

(assert (=> b!4742972 (isDefined!9720 (getValueByKey!2022 (toList!6011 lm!2023) lt!1905157))))

(declare-fun b!4742973 () Bool)

(declare-fun Unit!133742 () Unit!133727)

(assert (=> b!4742973 (= e!2958541 Unit!133742)))

(declare-fun b!4742974 () Bool)

(assert (=> b!4742974 (= e!2958540 (isDefined!9720 (getValueByKey!2022 (toList!6011 lm!2023) lt!1905157)))))

(assert (= (and d!1515327 c!810174) b!4742972))

(assert (= (and d!1515327 (not c!810174)) b!4742973))

(assert (= (and d!1515327 (not res!2009735)) b!4742974))

(declare-fun m!5697185 () Bool)

(assert (=> d!1515327 m!5697185))

(declare-fun m!5697187 () Bool)

(assert (=> b!4742972 m!5697187))

(assert (=> b!4742972 m!5697125))

(assert (=> b!4742972 m!5697125))

(declare-fun m!5697189 () Bool)

(assert (=> b!4742972 m!5697189))

(assert (=> b!4742974 m!5697125))

(assert (=> b!4742974 m!5697125))

(assert (=> b!4742974 m!5697189))

(assert (=> b!4742700 d!1515327))

(declare-fun d!1515329 () Bool)

(assert (=> d!1515329 (= (isDefined!9718 (getPair!601 lt!1905138 key!4653)) (not (isEmpty!29238 (getPair!601 lt!1905138 key!4653))))))

(declare-fun bs!1135782 () Bool)

(assert (= bs!1135782 d!1515329))

(assert (=> bs!1135782 m!5696795))

(declare-fun m!5697191 () Bool)

(assert (=> bs!1135782 m!5697191))

(assert (=> b!4742700 d!1515329))

(declare-fun d!1515331 () Bool)

(assert (=> d!1515331 (= (head!10326 (toList!6011 lm!2023)) (h!59343 (toList!6011 lm!2023)))))

(assert (=> b!4742699 d!1515331))

(declare-fun b!4742993 () Bool)

(declare-fun e!2958557 () Unit!133727)

(declare-fun lt!1905403 () Unit!133727)

(assert (=> b!4742993 (= e!2958557 lt!1905403)))

(declare-fun lt!1905405 () Unit!133727)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1914 (List!53083 K!14303) Unit!133727)

(assert (=> b!4742993 (= lt!1905405 (lemmaContainsKeyImpliesGetValueByKeyDefined!1914 (toList!6012 lt!1905139) key!4653))))

(declare-datatypes ((Option!12467 0))(
  ( (None!12466) (Some!12466 (v!47143 V!14549)) )
))
(declare-fun isDefined!9721 (Option!12467) Bool)

(declare-fun getValueByKey!2023 (List!53083 K!14303) Option!12467)

(assert (=> b!4742993 (isDefined!9721 (getValueByKey!2023 (toList!6012 lt!1905139) key!4653))))

(declare-fun lt!1905406 () Unit!133727)

(assert (=> b!4742993 (= lt!1905406 lt!1905405)))

(declare-fun lemmaInListThenGetKeysListContains!980 (List!53083 K!14303) Unit!133727)

(assert (=> b!4742993 (= lt!1905403 (lemmaInListThenGetKeysListContains!980 (toList!6012 lt!1905139) key!4653))))

(declare-fun call!331914 () Bool)

(assert (=> b!4742993 call!331914))

(declare-fun bm!331909 () Bool)

(declare-datatypes ((List!53087 0))(
  ( (Nil!52963) (Cons!52963 (h!59348 K!14303) (t!360389 List!53087)) )
))
(declare-fun e!2958556 () List!53087)

(declare-fun contains!16378 (List!53087 K!14303) Bool)

(assert (=> bm!331909 (= call!331914 (contains!16378 e!2958556 key!4653))))

(declare-fun c!810182 () Bool)

(declare-fun c!810183 () Bool)

(assert (=> bm!331909 (= c!810182 c!810183)))

(declare-fun b!4742994 () Bool)

(declare-fun e!2958555 () Unit!133727)

(declare-fun Unit!133743 () Unit!133727)

(assert (=> b!4742994 (= e!2958555 Unit!133743)))

(declare-fun d!1515333 () Bool)

(declare-fun e!2958558 () Bool)

(assert (=> d!1515333 e!2958558))

(declare-fun res!2009743 () Bool)

(assert (=> d!1515333 (=> res!2009743 e!2958558)))

(declare-fun e!2958554 () Bool)

(assert (=> d!1515333 (= res!2009743 e!2958554)))

(declare-fun res!2009744 () Bool)

(assert (=> d!1515333 (=> (not res!2009744) (not e!2958554))))

(declare-fun lt!1905402 () Bool)

(assert (=> d!1515333 (= res!2009744 (not lt!1905402))))

(declare-fun lt!1905408 () Bool)

(assert (=> d!1515333 (= lt!1905402 lt!1905408)))

(declare-fun lt!1905401 () Unit!133727)

(assert (=> d!1515333 (= lt!1905401 e!2958557)))

(assert (=> d!1515333 (= c!810183 lt!1905408)))

(declare-fun containsKey!3481 (List!53083 K!14303) Bool)

(assert (=> d!1515333 (= lt!1905408 (containsKey!3481 (toList!6012 lt!1905139) key!4653))))

(assert (=> d!1515333 (= (contains!16371 lt!1905139 key!4653) lt!1905402)))

(declare-fun b!4742995 () Bool)

(declare-fun getKeysList!985 (List!53083) List!53087)

(assert (=> b!4742995 (= e!2958556 (getKeysList!985 (toList!6012 lt!1905139)))))

(declare-fun b!4742996 () Bool)

(assert (=> b!4742996 (= e!2958557 e!2958555)))

(declare-fun c!810181 () Bool)

(assert (=> b!4742996 (= c!810181 call!331914)))

(declare-fun b!4742997 () Bool)

(declare-fun e!2958559 () Bool)

(declare-fun keys!19058 (ListMap!5375) List!53087)

(assert (=> b!4742997 (= e!2958559 (contains!16378 (keys!19058 lt!1905139) key!4653))))

(declare-fun b!4742998 () Bool)

(assert (=> b!4742998 (= e!2958556 (keys!19058 lt!1905139))))

(declare-fun b!4742999 () Bool)

(assert (=> b!4742999 (= e!2958558 e!2958559)))

(declare-fun res!2009742 () Bool)

(assert (=> b!4742999 (=> (not res!2009742) (not e!2958559))))

(assert (=> b!4742999 (= res!2009742 (isDefined!9721 (getValueByKey!2023 (toList!6012 lt!1905139) key!4653)))))

(declare-fun b!4743000 () Bool)

(assert (=> b!4743000 (= e!2958554 (not (contains!16378 (keys!19058 lt!1905139) key!4653)))))

(declare-fun b!4743001 () Bool)

(assert (=> b!4743001 false))

(declare-fun lt!1905407 () Unit!133727)

(declare-fun lt!1905404 () Unit!133727)

(assert (=> b!4743001 (= lt!1905407 lt!1905404)))

(assert (=> b!4743001 (containsKey!3481 (toList!6012 lt!1905139) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!984 (List!53083 K!14303) Unit!133727)

(assert (=> b!4743001 (= lt!1905404 (lemmaInGetKeysListThenContainsKey!984 (toList!6012 lt!1905139) key!4653))))

(declare-fun Unit!133744 () Unit!133727)

(assert (=> b!4743001 (= e!2958555 Unit!133744)))

(assert (= (and d!1515333 c!810183) b!4742993))

(assert (= (and d!1515333 (not c!810183)) b!4742996))

(assert (= (and b!4742996 c!810181) b!4743001))

(assert (= (and b!4742996 (not c!810181)) b!4742994))

(assert (= (or b!4742993 b!4742996) bm!331909))

(assert (= (and bm!331909 c!810182) b!4742995))

(assert (= (and bm!331909 (not c!810182)) b!4742998))

(assert (= (and d!1515333 res!2009744) b!4743000))

(assert (= (and d!1515333 (not res!2009743)) b!4742999))

(assert (= (and b!4742999 res!2009742) b!4742997))

(declare-fun m!5697193 () Bool)

(assert (=> b!4743000 m!5697193))

(assert (=> b!4743000 m!5697193))

(declare-fun m!5697195 () Bool)

(assert (=> b!4743000 m!5697195))

(declare-fun m!5697197 () Bool)

(assert (=> b!4742993 m!5697197))

(declare-fun m!5697199 () Bool)

(assert (=> b!4742993 m!5697199))

(assert (=> b!4742993 m!5697199))

(declare-fun m!5697201 () Bool)

(assert (=> b!4742993 m!5697201))

(declare-fun m!5697203 () Bool)

(assert (=> b!4742993 m!5697203))

(assert (=> b!4742997 m!5697193))

(assert (=> b!4742997 m!5697193))

(assert (=> b!4742997 m!5697195))

(declare-fun m!5697205 () Bool)

(assert (=> b!4743001 m!5697205))

(declare-fun m!5697207 () Bool)

(assert (=> b!4743001 m!5697207))

(declare-fun m!5697209 () Bool)

(assert (=> bm!331909 m!5697209))

(declare-fun m!5697211 () Bool)

(assert (=> b!4742995 m!5697211))

(assert (=> b!4742998 m!5697193))

(assert (=> b!4742999 m!5697199))

(assert (=> b!4742999 m!5697199))

(assert (=> b!4742999 m!5697201))

(assert (=> d!1515333 m!5697205))

(assert (=> b!4742688 d!1515333))

(declare-fun bs!1135783 () Bool)

(declare-fun d!1515335 () Bool)

(assert (= bs!1135783 (and d!1515335 d!1515297)))

(declare-fun lambda!219482 () Int)

(assert (=> bs!1135783 (= lambda!219482 lambda!219467)))

(declare-fun bs!1135784 () Bool)

(assert (= bs!1135784 (and d!1515335 d!1515315)))

(assert (=> bs!1135784 (= lambda!219482 lambda!219481)))

(declare-fun bs!1135785 () Bool)

(assert (= bs!1135785 (and d!1515335 start!483938)))

(assert (=> bs!1135785 (= lambda!219482 lambda!219415)))

(declare-fun bs!1135786 () Bool)

(assert (= bs!1135786 (and d!1515335 d!1515265)))

(assert (=> bs!1135786 (not (= lambda!219482 lambda!219428))))

(declare-fun bs!1135787 () Bool)

(assert (= bs!1135787 (and d!1515335 d!1515307)))

(assert (=> bs!1135787 (= lambda!219482 lambda!219471)))

(declare-fun lt!1905409 () ListMap!5375)

(assert (=> d!1515335 (invariantList!1546 (toList!6012 lt!1905409))))

(declare-fun e!2958560 () ListMap!5375)

(assert (=> d!1515335 (= lt!1905409 e!2958560)))

(declare-fun c!810184 () Bool)

(assert (=> d!1515335 (= c!810184 (is-Cons!52960 (toList!6011 lm!2023)))))

(assert (=> d!1515335 (forall!11688 (toList!6011 lm!2023) lambda!219482)))

(assert (=> d!1515335 (= (extractMap!2087 (toList!6011 lm!2023)) lt!1905409)))

(declare-fun b!4743002 () Bool)

(assert (=> b!4743002 (= e!2958560 (addToMapMapFromBucket!1491 (_2!30614 (h!59343 (toList!6011 lm!2023))) (extractMap!2087 (t!360384 (toList!6011 lm!2023)))))))

(declare-fun b!4743003 () Bool)

(assert (=> b!4743003 (= e!2958560 (ListMap!5376 Nil!52959))))

(assert (= (and d!1515335 c!810184) b!4743002))

(assert (= (and d!1515335 (not c!810184)) b!4743003))

(declare-fun m!5697213 () Bool)

(assert (=> d!1515335 m!5697213))

(declare-fun m!5697215 () Bool)

(assert (=> d!1515335 m!5697215))

(assert (=> b!4743002 m!5696845))

(assert (=> b!4743002 m!5696845))

(declare-fun m!5697217 () Bool)

(assert (=> b!4743002 m!5697217))

(assert (=> b!4742688 d!1515335))

(declare-fun d!1515337 () Bool)

(declare-fun res!2009745 () Bool)

(declare-fun e!2958561 () Bool)

(assert (=> d!1515337 (=> res!2009745 e!2958561)))

(assert (=> d!1515337 (= res!2009745 (not (is-Cons!52959 (t!360383 oldBucket!34))))))

(assert (=> d!1515337 (= (noDuplicateKeys!2061 (t!360383 oldBucket!34)) e!2958561)))

(declare-fun b!4743004 () Bool)

(declare-fun e!2958562 () Bool)

(assert (=> b!4743004 (= e!2958561 e!2958562)))

(declare-fun res!2009746 () Bool)

(assert (=> b!4743004 (=> (not res!2009746) (not e!2958562))))

(assert (=> b!4743004 (= res!2009746 (not (containsKey!3478 (t!360383 (t!360383 oldBucket!34)) (_1!30613 (h!59342 (t!360383 oldBucket!34))))))))

(declare-fun b!4743005 () Bool)

(assert (=> b!4743005 (= e!2958562 (noDuplicateKeys!2061 (t!360383 (t!360383 oldBucket!34))))))

(assert (= (and d!1515337 (not res!2009745)) b!4743004))

(assert (= (and b!4743004 res!2009746) b!4743005))

(declare-fun m!5697219 () Bool)

(assert (=> b!4743004 m!5697219))

(declare-fun m!5697221 () Bool)

(assert (=> b!4743005 m!5697221))

(assert (=> b!4742687 d!1515337))

(declare-fun b!4743009 () Bool)

(declare-fun e!2958564 () List!53083)

(assert (=> b!4743009 (= e!2958564 Nil!52959)))

(declare-fun b!4743007 () Bool)

(declare-fun e!2958563 () List!53083)

(assert (=> b!4743007 (= e!2958563 e!2958564)))

(declare-fun c!810186 () Bool)

(assert (=> b!4743007 (= c!810186 (is-Cons!52959 oldBucket!34))))

(declare-fun b!4743006 () Bool)

(assert (=> b!4743006 (= e!2958563 (t!360383 oldBucket!34))))

(declare-fun d!1515339 () Bool)

(declare-fun lt!1905410 () List!53083)

(assert (=> d!1515339 (not (containsKey!3478 lt!1905410 key!4653))))

(assert (=> d!1515339 (= lt!1905410 e!2958563)))

(declare-fun c!810185 () Bool)

(assert (=> d!1515339 (= c!810185 (and (is-Cons!52959 oldBucket!34) (= (_1!30613 (h!59342 oldBucket!34)) key!4653)))))

(assert (=> d!1515339 (noDuplicateKeys!2061 oldBucket!34)))

(assert (=> d!1515339 (= (removePairForKey!1656 oldBucket!34 key!4653) lt!1905410)))

(declare-fun b!4743008 () Bool)

(assert (=> b!4743008 (= e!2958564 (Cons!52959 (h!59342 oldBucket!34) (removePairForKey!1656 (t!360383 oldBucket!34) key!4653)))))

(assert (= (and d!1515339 c!810185) b!4743006))

(assert (= (and d!1515339 (not c!810185)) b!4743007))

(assert (= (and b!4743007 c!810186) b!4743008))

(assert (= (and b!4743007 (not c!810186)) b!4743009))

(declare-fun m!5697223 () Bool)

(assert (=> d!1515339 m!5697223))

(assert (=> d!1515339 m!5696859))

(assert (=> b!4743008 m!5696877))

(assert (=> b!4742698 d!1515339))

(declare-fun d!1515341 () Bool)

(declare-fun res!2009747 () Bool)

(declare-fun e!2958565 () Bool)

(assert (=> d!1515341 (=> res!2009747 e!2958565)))

(assert (=> d!1515341 (= res!2009747 (not (is-Cons!52959 lt!1905145)))))

(assert (=> d!1515341 (= (noDuplicateKeys!2061 lt!1905145) e!2958565)))

(declare-fun b!4743010 () Bool)

(declare-fun e!2958566 () Bool)

(assert (=> b!4743010 (= e!2958565 e!2958566)))

(declare-fun res!2009748 () Bool)

(assert (=> b!4743010 (=> (not res!2009748) (not e!2958566))))

(assert (=> b!4743010 (= res!2009748 (not (containsKey!3478 (t!360383 lt!1905145) (_1!30613 (h!59342 lt!1905145)))))))

(declare-fun b!4743011 () Bool)

(assert (=> b!4743011 (= e!2958566 (noDuplicateKeys!2061 (t!360383 lt!1905145)))))

(assert (= (and d!1515341 (not res!2009747)) b!4743010))

(assert (= (and b!4743010 res!2009748) b!4743011))

(declare-fun m!5697225 () Bool)

(assert (=> b!4743010 m!5697225))

(declare-fun m!5697227 () Bool)

(assert (=> b!4743011 m!5697227))

(assert (=> b!4742697 d!1515341))

(declare-fun d!1515343 () Bool)

(declare-fun res!2009749 () Bool)

(declare-fun e!2958567 () Bool)

(assert (=> d!1515343 (=> res!2009749 e!2958567)))

(assert (=> d!1515343 (= res!2009749 (is-Nil!52960 (toList!6011 lm!2023)))))

(assert (=> d!1515343 (= (forall!11688 (toList!6011 lm!2023) lambda!219415) e!2958567)))

(declare-fun b!4743012 () Bool)

(declare-fun e!2958568 () Bool)

(assert (=> b!4743012 (= e!2958567 e!2958568)))

(declare-fun res!2009750 () Bool)

(assert (=> b!4743012 (=> (not res!2009750) (not e!2958568))))

(assert (=> b!4743012 (= res!2009750 (dynLambda!21876 lambda!219415 (h!59343 (toList!6011 lm!2023))))))

(declare-fun b!4743013 () Bool)

(assert (=> b!4743013 (= e!2958568 (forall!11688 (t!360384 (toList!6011 lm!2023)) lambda!219415))))

(assert (= (and d!1515343 (not res!2009749)) b!4743012))

(assert (= (and b!4743012 res!2009750) b!4743013))

(declare-fun b_lambda!182611 () Bool)

(assert (=> (not b_lambda!182611) (not b!4743012)))

(declare-fun m!5697229 () Bool)

(assert (=> b!4743012 m!5697229))

(declare-fun m!5697231 () Bool)

(assert (=> b!4743013 m!5697231))

(assert (=> start!483938 d!1515343))

(declare-fun d!1515345 () Bool)

(declare-fun isStrictlySorted!783 (List!53084) Bool)

(assert (=> d!1515345 (= (inv!68178 lm!2023) (isStrictlySorted!783 (toList!6011 lm!2023)))))

(declare-fun bs!1135788 () Bool)

(assert (= bs!1135788 d!1515345))

(declare-fun m!5697233 () Bool)

(assert (=> bs!1135788 m!5697233))

(assert (=> start!483938 d!1515345))

(declare-fun bs!1135789 () Bool)

(declare-fun d!1515347 () Bool)

(assert (= bs!1135789 (and d!1515347 b!4742887)))

(declare-fun lambda!219483 () Int)

(assert (=> bs!1135789 (not (= lambda!219483 lambda!219462))))

(declare-fun bs!1135790 () Bool)

(assert (= bs!1135790 (and d!1515347 d!1515303)))

(assert (=> bs!1135790 (= lambda!219483 lambda!219468)))

(assert (=> bs!1135789 (not (= lambda!219483 lambda!219463))))

(declare-fun bs!1135791 () Bool)

(assert (= bs!1135791 (and d!1515347 b!4742886)))

(assert (=> bs!1135791 (not (= lambda!219483 lambda!219461))))

(declare-fun bs!1135792 () Bool)

(assert (= bs!1135792 (and d!1515347 d!1515259)))

(assert (=> bs!1135792 (= lambda!219483 lambda!219425)))

(declare-fun bs!1135793 () Bool)

(assert (= bs!1135793 (and d!1515347 d!1515267)))

(assert (=> bs!1135793 (not (= lambda!219483 lambda!219464))))

(assert (=> d!1515347 true))

(assert (=> d!1515347 true))

(assert (=> d!1515347 (= (allKeysSameHash!1887 oldBucket!34 hash!405 hashF!1323) (forall!11690 oldBucket!34 lambda!219483))))

(declare-fun bs!1135794 () Bool)

(assert (= bs!1135794 d!1515347))

(declare-fun m!5697235 () Bool)

(assert (=> bs!1135794 m!5697235))

(assert (=> b!4742685 d!1515347))

(declare-fun bs!1135795 () Bool)

(declare-fun b!4743016 () Bool)

(assert (= bs!1135795 (and b!4743016 d!1515347)))

(declare-fun lambda!219484 () Int)

(assert (=> bs!1135795 (not (= lambda!219484 lambda!219483))))

(declare-fun bs!1135796 () Bool)

(assert (= bs!1135796 (and b!4743016 b!4742887)))

(assert (=> bs!1135796 (= lambda!219484 lambda!219462)))

(declare-fun bs!1135797 () Bool)

(assert (= bs!1135797 (and b!4743016 d!1515303)))

(assert (=> bs!1135797 (not (= lambda!219484 lambda!219468))))

(assert (=> bs!1135796 (= (= lt!1905142 lt!1905306) (= lambda!219484 lambda!219463))))

(declare-fun bs!1135798 () Bool)

(assert (= bs!1135798 (and b!4743016 b!4742886)))

(assert (=> bs!1135798 (= lambda!219484 lambda!219461)))

(declare-fun bs!1135799 () Bool)

(assert (= bs!1135799 (and b!4743016 d!1515259)))

(assert (=> bs!1135799 (not (= lambda!219484 lambda!219425))))

(declare-fun bs!1135800 () Bool)

(assert (= bs!1135800 (and b!4743016 d!1515267)))

(assert (=> bs!1135800 (= (= lt!1905142 lt!1905304) (= lambda!219484 lambda!219464))))

(assert (=> b!4743016 true))

(declare-fun bs!1135801 () Bool)

(declare-fun b!4743017 () Bool)

(assert (= bs!1135801 (and b!4743017 d!1515347)))

(declare-fun lambda!219485 () Int)

(assert (=> bs!1135801 (not (= lambda!219485 lambda!219483))))

(declare-fun bs!1135802 () Bool)

(assert (= bs!1135802 (and b!4743017 b!4742887)))

(assert (=> bs!1135802 (= lambda!219485 lambda!219462)))

(declare-fun bs!1135803 () Bool)

(assert (= bs!1135803 (and b!4743017 d!1515303)))

(assert (=> bs!1135803 (not (= lambda!219485 lambda!219468))))

(assert (=> bs!1135802 (= (= lt!1905142 lt!1905306) (= lambda!219485 lambda!219463))))

(declare-fun bs!1135804 () Bool)

(assert (= bs!1135804 (and b!4743017 b!4743016)))

(assert (=> bs!1135804 (= lambda!219485 lambda!219484)))

(declare-fun bs!1135805 () Bool)

(assert (= bs!1135805 (and b!4743017 b!4742886)))

(assert (=> bs!1135805 (= lambda!219485 lambda!219461)))

(declare-fun bs!1135806 () Bool)

(assert (= bs!1135806 (and b!4743017 d!1515259)))

(assert (=> bs!1135806 (not (= lambda!219485 lambda!219425))))

(declare-fun bs!1135807 () Bool)

(assert (= bs!1135807 (and b!4743017 d!1515267)))

(assert (=> bs!1135807 (= (= lt!1905142 lt!1905304) (= lambda!219485 lambda!219464))))

(assert (=> b!4743017 true))

(declare-fun lambda!219486 () Int)

(assert (=> bs!1135801 (not (= lambda!219486 lambda!219483))))

(declare-fun lt!1905421 () ListMap!5375)

(assert (=> bs!1135802 (= (= lt!1905421 lt!1905142) (= lambda!219486 lambda!219462))))

(assert (=> bs!1135803 (not (= lambda!219486 lambda!219468))))

(assert (=> bs!1135802 (= (= lt!1905421 lt!1905306) (= lambda!219486 lambda!219463))))

(assert (=> bs!1135804 (= (= lt!1905421 lt!1905142) (= lambda!219486 lambda!219484))))

(assert (=> bs!1135805 (= (= lt!1905421 lt!1905142) (= lambda!219486 lambda!219461))))

(assert (=> b!4743017 (= (= lt!1905421 lt!1905142) (= lambda!219486 lambda!219485))))

(assert (=> bs!1135806 (not (= lambda!219486 lambda!219425))))

(assert (=> bs!1135807 (= (= lt!1905421 lt!1905304) (= lambda!219486 lambda!219464))))

(assert (=> b!4743017 true))

(declare-fun bs!1135808 () Bool)

(declare-fun d!1515349 () Bool)

(assert (= bs!1135808 (and d!1515349 d!1515347)))

(declare-fun lambda!219487 () Int)

(assert (=> bs!1135808 (not (= lambda!219487 lambda!219483))))

(declare-fun bs!1135809 () Bool)

(assert (= bs!1135809 (and d!1515349 b!4742887)))

(declare-fun lt!1905419 () ListMap!5375)

(assert (=> bs!1135809 (= (= lt!1905419 lt!1905142) (= lambda!219487 lambda!219462))))

(declare-fun bs!1135810 () Bool)

(assert (= bs!1135810 (and d!1515349 d!1515303)))

(assert (=> bs!1135810 (not (= lambda!219487 lambda!219468))))

(assert (=> bs!1135809 (= (= lt!1905419 lt!1905306) (= lambda!219487 lambda!219463))))

(declare-fun bs!1135811 () Bool)

(assert (= bs!1135811 (and d!1515349 b!4743016)))

(assert (=> bs!1135811 (= (= lt!1905419 lt!1905142) (= lambda!219487 lambda!219484))))

(declare-fun bs!1135812 () Bool)

(assert (= bs!1135812 (and d!1515349 b!4742886)))

(assert (=> bs!1135812 (= (= lt!1905419 lt!1905142) (= lambda!219487 lambda!219461))))

(declare-fun bs!1135813 () Bool)

(assert (= bs!1135813 (and d!1515349 b!4743017)))

(assert (=> bs!1135813 (= (= lt!1905419 lt!1905142) (= lambda!219487 lambda!219485))))

(declare-fun bs!1135814 () Bool)

(assert (= bs!1135814 (and d!1515349 d!1515267)))

(assert (=> bs!1135814 (= (= lt!1905419 lt!1905304) (= lambda!219487 lambda!219464))))

(assert (=> bs!1135813 (= (= lt!1905419 lt!1905421) (= lambda!219487 lambda!219486))))

(declare-fun bs!1135815 () Bool)

(assert (= bs!1135815 (and d!1515349 d!1515259)))

(assert (=> bs!1135815 (not (= lambda!219487 lambda!219425))))

(assert (=> d!1515349 true))

(declare-fun bm!331910 () Bool)

(declare-fun call!331917 () Unit!133727)

(assert (=> bm!331910 (= call!331917 (lemmaContainsAllItsOwnKeys!831 lt!1905142))))

(declare-fun e!2958570 () Bool)

(assert (=> d!1515349 e!2958570))

(declare-fun res!2009752 () Bool)

(assert (=> d!1515349 (=> (not res!2009752) (not e!2958570))))

(assert (=> d!1515349 (= res!2009752 (forall!11690 lt!1905145 lambda!219487))))

(declare-fun e!2958571 () ListMap!5375)

(assert (=> d!1515349 (= lt!1905419 e!2958571)))

(declare-fun c!810187 () Bool)

(assert (=> d!1515349 (= c!810187 (is-Nil!52959 lt!1905145))))

(assert (=> d!1515349 (noDuplicateKeys!2061 lt!1905145)))

(assert (=> d!1515349 (= (addToMapMapFromBucket!1491 lt!1905145 lt!1905142) lt!1905419)))

(declare-fun b!4743014 () Bool)

(declare-fun e!2958569 () Bool)

(assert (=> b!4743014 (= e!2958569 (forall!11690 (toList!6012 lt!1905142) lambda!219486))))

(declare-fun bm!331911 () Bool)

(declare-fun call!331916 () Bool)

(assert (=> bm!331911 (= call!331916 (forall!11690 (ite c!810187 (toList!6012 lt!1905142) (t!360383 lt!1905145)) (ite c!810187 lambda!219484 lambda!219486)))))

(declare-fun b!4743015 () Bool)

(assert (=> b!4743015 (= e!2958570 (invariantList!1546 (toList!6012 lt!1905419)))))

(declare-fun call!331915 () Bool)

(declare-fun bm!331912 () Bool)

(assert (=> bm!331912 (= call!331915 (forall!11690 (ite c!810187 (toList!6012 lt!1905142) lt!1905145) (ite c!810187 lambda!219484 lambda!219486)))))

(assert (=> b!4743016 (= e!2958571 lt!1905142)))

(declare-fun lt!1905427 () Unit!133727)

(assert (=> b!4743016 (= lt!1905427 call!331917)))

(assert (=> b!4743016 call!331916))

(declare-fun lt!1905422 () Unit!133727)

(assert (=> b!4743016 (= lt!1905422 lt!1905427)))

(assert (=> b!4743016 call!331915))

(declare-fun lt!1905424 () Unit!133727)

(declare-fun Unit!133745 () Unit!133727)

(assert (=> b!4743016 (= lt!1905424 Unit!133745)))

(assert (=> b!4743017 (= e!2958571 lt!1905421)))

(declare-fun lt!1905426 () ListMap!5375)

(assert (=> b!4743017 (= lt!1905426 (+!2309 lt!1905142 (h!59342 lt!1905145)))))

(assert (=> b!4743017 (= lt!1905421 (addToMapMapFromBucket!1491 (t!360383 lt!1905145) (+!2309 lt!1905142 (h!59342 lt!1905145))))))

(declare-fun lt!1905430 () Unit!133727)

(assert (=> b!4743017 (= lt!1905430 call!331917)))

(assert (=> b!4743017 (forall!11690 (toList!6012 lt!1905142) lambda!219485)))

(declare-fun lt!1905415 () Unit!133727)

(assert (=> b!4743017 (= lt!1905415 lt!1905430)))

(assert (=> b!4743017 (forall!11690 (toList!6012 lt!1905426) lambda!219486)))

(declare-fun lt!1905411 () Unit!133727)

(declare-fun Unit!133746 () Unit!133727)

(assert (=> b!4743017 (= lt!1905411 Unit!133746)))

(assert (=> b!4743017 call!331916))

(declare-fun lt!1905416 () Unit!133727)

(declare-fun Unit!133747 () Unit!133727)

(assert (=> b!4743017 (= lt!1905416 Unit!133747)))

(declare-fun lt!1905414 () Unit!133727)

(declare-fun Unit!133748 () Unit!133727)

(assert (=> b!4743017 (= lt!1905414 Unit!133748)))

(declare-fun lt!1905423 () Unit!133727)

(assert (=> b!4743017 (= lt!1905423 (forallContained!3730 (toList!6012 lt!1905426) lambda!219486 (h!59342 lt!1905145)))))

(assert (=> b!4743017 (contains!16371 lt!1905426 (_1!30613 (h!59342 lt!1905145)))))

(declare-fun lt!1905429 () Unit!133727)

(declare-fun Unit!133749 () Unit!133727)

(assert (=> b!4743017 (= lt!1905429 Unit!133749)))

(assert (=> b!4743017 (contains!16371 lt!1905421 (_1!30613 (h!59342 lt!1905145)))))

(declare-fun lt!1905425 () Unit!133727)

(declare-fun Unit!133750 () Unit!133727)

(assert (=> b!4743017 (= lt!1905425 Unit!133750)))

(assert (=> b!4743017 call!331915))

(declare-fun lt!1905412 () Unit!133727)

(declare-fun Unit!133751 () Unit!133727)

(assert (=> b!4743017 (= lt!1905412 Unit!133751)))

(assert (=> b!4743017 (forall!11690 (toList!6012 lt!1905426) lambda!219486)))

(declare-fun lt!1905431 () Unit!133727)

(declare-fun Unit!133752 () Unit!133727)

(assert (=> b!4743017 (= lt!1905431 Unit!133752)))

(declare-fun lt!1905420 () Unit!133727)

(declare-fun Unit!133753 () Unit!133727)

(assert (=> b!4743017 (= lt!1905420 Unit!133753)))

(declare-fun lt!1905417 () Unit!133727)

(assert (=> b!4743017 (= lt!1905417 (addForallContainsKeyThenBeforeAdding!830 lt!1905142 lt!1905421 (_1!30613 (h!59342 lt!1905145)) (_2!30613 (h!59342 lt!1905145))))))

(assert (=> b!4743017 (forall!11690 (toList!6012 lt!1905142) lambda!219486)))

(declare-fun lt!1905428 () Unit!133727)

(assert (=> b!4743017 (= lt!1905428 lt!1905417)))

(assert (=> b!4743017 (forall!11690 (toList!6012 lt!1905142) lambda!219486)))

(declare-fun lt!1905413 () Unit!133727)

(declare-fun Unit!133754 () Unit!133727)

(assert (=> b!4743017 (= lt!1905413 Unit!133754)))

(declare-fun res!2009753 () Bool)

(assert (=> b!4743017 (= res!2009753 (forall!11690 lt!1905145 lambda!219486))))

(assert (=> b!4743017 (=> (not res!2009753) (not e!2958569))))

(assert (=> b!4743017 e!2958569))

(declare-fun lt!1905418 () Unit!133727)

(declare-fun Unit!133755 () Unit!133727)

(assert (=> b!4743017 (= lt!1905418 Unit!133755)))

(declare-fun b!4743018 () Bool)

(declare-fun res!2009751 () Bool)

(assert (=> b!4743018 (=> (not res!2009751) (not e!2958570))))

(assert (=> b!4743018 (= res!2009751 (forall!11690 (toList!6012 lt!1905142) lambda!219487))))

(assert (= (and d!1515349 c!810187) b!4743016))

(assert (= (and d!1515349 (not c!810187)) b!4743017))

(assert (= (and b!4743017 res!2009753) b!4743014))

(assert (= (or b!4743016 b!4743017) bm!331910))

(assert (= (or b!4743016 b!4743017) bm!331912))

(assert (= (or b!4743016 b!4743017) bm!331911))

(assert (= (and d!1515349 res!2009752) b!4743018))

(assert (= (and b!4743018 res!2009751) b!4743015))

(declare-fun m!5697237 () Bool)

(assert (=> b!4743017 m!5697237))

(declare-fun m!5697239 () Bool)

(assert (=> b!4743017 m!5697239))

(declare-fun m!5697241 () Bool)

(assert (=> b!4743017 m!5697241))

(assert (=> b!4743017 m!5697237))

(declare-fun m!5697243 () Bool)

(assert (=> b!4743017 m!5697243))

(declare-fun m!5697245 () Bool)

(assert (=> b!4743017 m!5697245))

(declare-fun m!5697247 () Bool)

(assert (=> b!4743017 m!5697247))

(assert (=> b!4743017 m!5697245))

(declare-fun m!5697249 () Bool)

(assert (=> b!4743017 m!5697249))

(declare-fun m!5697251 () Bool)

(assert (=> b!4743017 m!5697251))

(declare-fun m!5697253 () Bool)

(assert (=> b!4743017 m!5697253))

(assert (=> b!4743017 m!5697251))

(declare-fun m!5697255 () Bool)

(assert (=> b!4743017 m!5697255))

(declare-fun m!5697257 () Bool)

(assert (=> b!4743018 m!5697257))

(declare-fun m!5697259 () Bool)

(assert (=> d!1515349 m!5697259))

(assert (=> d!1515349 m!5696863))

(declare-fun m!5697261 () Bool)

(assert (=> bm!331912 m!5697261))

(assert (=> bm!331910 m!5697083))

(declare-fun m!5697263 () Bool)

(assert (=> b!4743015 m!5697263))

(assert (=> b!4743014 m!5697237))

(declare-fun m!5697265 () Bool)

(assert (=> bm!331911 m!5697265))

(assert (=> b!4742696 d!1515349))

(declare-fun d!1515351 () Bool)

(declare-fun content!9471 (List!53083) (Set tuple2!54638))

(assert (=> d!1515351 (= (eq!1158 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905154 lt!1905145) lt!1905142) (+!2309 (addToMapMapFromBucket!1491 lt!1905145 lt!1905142) lt!1905154)) (= (content!9471 (toList!6012 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905154 lt!1905145) lt!1905142))) (content!9471 (toList!6012 (+!2309 (addToMapMapFromBucket!1491 lt!1905145 lt!1905142) lt!1905154)))))))

(declare-fun bs!1135816 () Bool)

(assert (= bs!1135816 d!1515351))

(declare-fun m!5697267 () Bool)

(assert (=> bs!1135816 m!5697267))

(declare-fun m!5697269 () Bool)

(assert (=> bs!1135816 m!5697269))

(assert (=> b!4742696 d!1515351))

(declare-fun d!1515353 () Bool)

(declare-fun e!2958576 () Bool)

(assert (=> d!1515353 e!2958576))

(declare-fun res!2009758 () Bool)

(assert (=> d!1515353 (=> (not res!2009758) (not e!2958576))))

(declare-fun lt!1905462 () ListMap!5375)

(assert (=> d!1515353 (= res!2009758 (contains!16371 lt!1905462 (_1!30613 lt!1905154)))))

(declare-fun lt!1905463 () List!53083)

(assert (=> d!1515353 (= lt!1905462 (ListMap!5376 lt!1905463))))

(declare-fun lt!1905460 () Unit!133727)

(declare-fun lt!1905461 () Unit!133727)

(assert (=> d!1515353 (= lt!1905460 lt!1905461)))

(assert (=> d!1515353 (= (getValueByKey!2023 lt!1905463 (_1!30613 lt!1905154)) (Some!12466 (_2!30613 lt!1905154)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1113 (List!53083 K!14303 V!14549) Unit!133727)

(assert (=> d!1515353 (= lt!1905461 (lemmaContainsTupThenGetReturnValue!1113 lt!1905463 (_1!30613 lt!1905154) (_2!30613 lt!1905154)))))

(declare-fun insertNoDuplicatedKeys!621 (List!53083 K!14303 V!14549) List!53083)

(assert (=> d!1515353 (= lt!1905463 (insertNoDuplicatedKeys!621 (toList!6012 (addToMapMapFromBucket!1491 lt!1905145 lt!1905142)) (_1!30613 lt!1905154) (_2!30613 lt!1905154)))))

(assert (=> d!1515353 (= (+!2309 (addToMapMapFromBucket!1491 lt!1905145 lt!1905142) lt!1905154) lt!1905462)))

(declare-fun b!4743027 () Bool)

(declare-fun res!2009759 () Bool)

(assert (=> b!4743027 (=> (not res!2009759) (not e!2958576))))

(assert (=> b!4743027 (= res!2009759 (= (getValueByKey!2023 (toList!6012 lt!1905462) (_1!30613 lt!1905154)) (Some!12466 (_2!30613 lt!1905154))))))

(declare-fun b!4743028 () Bool)

(assert (=> b!4743028 (= e!2958576 (contains!16377 (toList!6012 lt!1905462) lt!1905154))))

(assert (= (and d!1515353 res!2009758) b!4743027))

(assert (= (and b!4743027 res!2009759) b!4743028))

(declare-fun m!5697271 () Bool)

(assert (=> d!1515353 m!5697271))

(declare-fun m!5697273 () Bool)

(assert (=> d!1515353 m!5697273))

(declare-fun m!5697275 () Bool)

(assert (=> d!1515353 m!5697275))

(declare-fun m!5697277 () Bool)

(assert (=> d!1515353 m!5697277))

(declare-fun m!5697279 () Bool)

(assert (=> b!4743027 m!5697279))

(declare-fun m!5697281 () Bool)

(assert (=> b!4743028 m!5697281))

(assert (=> b!4742696 d!1515353))

(declare-fun bs!1135817 () Bool)

(declare-fun b!4743031 () Bool)

(assert (= bs!1135817 (and b!4743031 d!1515347)))

(declare-fun lambda!219500 () Int)

(assert (=> bs!1135817 (not (= lambda!219500 lambda!219483))))

(declare-fun bs!1135818 () Bool)

(assert (= bs!1135818 (and b!4743031 b!4742887)))

(assert (=> bs!1135818 (= lambda!219500 lambda!219462)))

(declare-fun bs!1135819 () Bool)

(assert (= bs!1135819 (and b!4743031 d!1515303)))

(assert (=> bs!1135819 (not (= lambda!219500 lambda!219468))))

(assert (=> bs!1135818 (= (= lt!1905142 lt!1905306) (= lambda!219500 lambda!219463))))

(declare-fun bs!1135820 () Bool)

(assert (= bs!1135820 (and b!4743031 b!4743016)))

(assert (=> bs!1135820 (= lambda!219500 lambda!219484)))

(declare-fun bs!1135821 () Bool)

(assert (= bs!1135821 (and b!4743031 b!4742886)))

(assert (=> bs!1135821 (= lambda!219500 lambda!219461)))

(declare-fun bs!1135822 () Bool)

(assert (= bs!1135822 (and b!4743031 b!4743017)))

(assert (=> bs!1135822 (= lambda!219500 lambda!219485)))

(declare-fun bs!1135823 () Bool)

(assert (= bs!1135823 (and b!4743031 d!1515267)))

(assert (=> bs!1135823 (= (= lt!1905142 lt!1905304) (= lambda!219500 lambda!219464))))

(declare-fun bs!1135824 () Bool)

(assert (= bs!1135824 (and b!4743031 d!1515349)))

(assert (=> bs!1135824 (= (= lt!1905142 lt!1905419) (= lambda!219500 lambda!219487))))

(assert (=> bs!1135822 (= (= lt!1905142 lt!1905421) (= lambda!219500 lambda!219486))))

(declare-fun bs!1135825 () Bool)

(assert (= bs!1135825 (and b!4743031 d!1515259)))

(assert (=> bs!1135825 (not (= lambda!219500 lambda!219425))))

(assert (=> b!4743031 true))

(declare-fun bs!1135826 () Bool)

(declare-fun b!4743032 () Bool)

(assert (= bs!1135826 (and b!4743032 d!1515347)))

(declare-fun lambda!219503 () Int)

(assert (=> bs!1135826 (not (= lambda!219503 lambda!219483))))

(declare-fun bs!1135827 () Bool)

(assert (= bs!1135827 (and b!4743032 b!4742887)))

(assert (=> bs!1135827 (= lambda!219503 lambda!219462)))

(declare-fun bs!1135828 () Bool)

(assert (= bs!1135828 (and b!4743032 d!1515303)))

(assert (=> bs!1135828 (not (= lambda!219503 lambda!219468))))

(assert (=> bs!1135827 (= (= lt!1905142 lt!1905306) (= lambda!219503 lambda!219463))))

(declare-fun bs!1135829 () Bool)

(assert (= bs!1135829 (and b!4743032 b!4743016)))

(assert (=> bs!1135829 (= lambda!219503 lambda!219484)))

(declare-fun bs!1135830 () Bool)

(assert (= bs!1135830 (and b!4743032 b!4742886)))

(assert (=> bs!1135830 (= lambda!219503 lambda!219461)))

(declare-fun bs!1135831 () Bool)

(assert (= bs!1135831 (and b!4743032 b!4743017)))

(assert (=> bs!1135831 (= lambda!219503 lambda!219485)))

(declare-fun bs!1135832 () Bool)

(assert (= bs!1135832 (and b!4743032 b!4743031)))

(assert (=> bs!1135832 (= lambda!219503 lambda!219500)))

(declare-fun bs!1135833 () Bool)

(assert (= bs!1135833 (and b!4743032 d!1515267)))

(assert (=> bs!1135833 (= (= lt!1905142 lt!1905304) (= lambda!219503 lambda!219464))))

(declare-fun bs!1135834 () Bool)

(assert (= bs!1135834 (and b!4743032 d!1515349)))

(assert (=> bs!1135834 (= (= lt!1905142 lt!1905419) (= lambda!219503 lambda!219487))))

(assert (=> bs!1135831 (= (= lt!1905142 lt!1905421) (= lambda!219503 lambda!219486))))

(declare-fun bs!1135835 () Bool)

(assert (= bs!1135835 (and b!4743032 d!1515259)))

(assert (=> bs!1135835 (not (= lambda!219503 lambda!219425))))

(assert (=> b!4743032 true))

(declare-fun lambda!219506 () Int)

(assert (=> bs!1135826 (not (= lambda!219506 lambda!219483))))

(declare-fun lt!1905478 () ListMap!5375)

(assert (=> bs!1135827 (= (= lt!1905478 lt!1905142) (= lambda!219506 lambda!219462))))

(assert (=> bs!1135828 (not (= lambda!219506 lambda!219468))))

(assert (=> b!4743032 (= (= lt!1905478 lt!1905142) (= lambda!219506 lambda!219503))))

(assert (=> bs!1135827 (= (= lt!1905478 lt!1905306) (= lambda!219506 lambda!219463))))

(assert (=> bs!1135829 (= (= lt!1905478 lt!1905142) (= lambda!219506 lambda!219484))))

(assert (=> bs!1135830 (= (= lt!1905478 lt!1905142) (= lambda!219506 lambda!219461))))

(assert (=> bs!1135831 (= (= lt!1905478 lt!1905142) (= lambda!219506 lambda!219485))))

(assert (=> bs!1135832 (= (= lt!1905478 lt!1905142) (= lambda!219506 lambda!219500))))

(assert (=> bs!1135833 (= (= lt!1905478 lt!1905304) (= lambda!219506 lambda!219464))))

(assert (=> bs!1135834 (= (= lt!1905478 lt!1905419) (= lambda!219506 lambda!219487))))

(assert (=> bs!1135831 (= (= lt!1905478 lt!1905421) (= lambda!219506 lambda!219486))))

(assert (=> bs!1135835 (not (= lambda!219506 lambda!219425))))

(assert (=> b!4743032 true))

(declare-fun bs!1135836 () Bool)

(declare-fun d!1515355 () Bool)

(assert (= bs!1135836 (and d!1515355 d!1515347)))

(declare-fun lambda!219513 () Int)

(assert (=> bs!1135836 (not (= lambda!219513 lambda!219483))))

(declare-fun bs!1135837 () Bool)

(assert (= bs!1135837 (and d!1515355 b!4742887)))

(declare-fun lt!1905476 () ListMap!5375)

(assert (=> bs!1135837 (= (= lt!1905476 lt!1905142) (= lambda!219513 lambda!219462))))

(declare-fun bs!1135838 () Bool)

(assert (= bs!1135838 (and d!1515355 d!1515303)))

(assert (=> bs!1135838 (not (= lambda!219513 lambda!219468))))

(declare-fun bs!1135839 () Bool)

(assert (= bs!1135839 (and d!1515355 b!4743032)))

(assert (=> bs!1135839 (= (= lt!1905476 lt!1905142) (= lambda!219513 lambda!219503))))

(assert (=> bs!1135837 (= (= lt!1905476 lt!1905306) (= lambda!219513 lambda!219463))))

(declare-fun bs!1135840 () Bool)

(assert (= bs!1135840 (and d!1515355 b!4743016)))

(assert (=> bs!1135840 (= (= lt!1905476 lt!1905142) (= lambda!219513 lambda!219484))))

(declare-fun bs!1135841 () Bool)

(assert (= bs!1135841 (and d!1515355 b!4742886)))

(assert (=> bs!1135841 (= (= lt!1905476 lt!1905142) (= lambda!219513 lambda!219461))))

(declare-fun bs!1135842 () Bool)

(assert (= bs!1135842 (and d!1515355 b!4743017)))

(assert (=> bs!1135842 (= (= lt!1905476 lt!1905142) (= lambda!219513 lambda!219485))))

(declare-fun bs!1135843 () Bool)

(assert (= bs!1135843 (and d!1515355 d!1515267)))

(assert (=> bs!1135843 (= (= lt!1905476 lt!1905304) (= lambda!219513 lambda!219464))))

(assert (=> bs!1135839 (= (= lt!1905476 lt!1905478) (= lambda!219513 lambda!219506))))

(declare-fun bs!1135844 () Bool)

(assert (= bs!1135844 (and d!1515355 b!4743031)))

(assert (=> bs!1135844 (= (= lt!1905476 lt!1905142) (= lambda!219513 lambda!219500))))

(declare-fun bs!1135845 () Bool)

(assert (= bs!1135845 (and d!1515355 d!1515349)))

(assert (=> bs!1135845 (= (= lt!1905476 lt!1905419) (= lambda!219513 lambda!219487))))

(assert (=> bs!1135842 (= (= lt!1905476 lt!1905421) (= lambda!219513 lambda!219486))))

(declare-fun bs!1135846 () Bool)

(assert (= bs!1135846 (and d!1515355 d!1515259)))

(assert (=> bs!1135846 (not (= lambda!219513 lambda!219425))))

(assert (=> d!1515355 true))

(declare-fun bm!331913 () Bool)

(declare-fun call!331920 () Unit!133727)

(assert (=> bm!331913 (= call!331920 (lemmaContainsAllItsOwnKeys!831 lt!1905142))))

(declare-fun e!2958578 () Bool)

(assert (=> d!1515355 e!2958578))

(declare-fun res!2009761 () Bool)

(assert (=> d!1515355 (=> (not res!2009761) (not e!2958578))))

(assert (=> d!1515355 (= res!2009761 (forall!11690 lt!1905156 lambda!219513))))

(declare-fun e!2958579 () ListMap!5375)

(assert (=> d!1515355 (= lt!1905476 e!2958579)))

(declare-fun c!810190 () Bool)

(assert (=> d!1515355 (= c!810190 (is-Nil!52959 lt!1905156))))

(assert (=> d!1515355 (noDuplicateKeys!2061 lt!1905156)))

(assert (=> d!1515355 (= (addToMapMapFromBucket!1491 lt!1905156 lt!1905142) lt!1905476)))

(declare-fun b!4743029 () Bool)

(declare-fun e!2958577 () Bool)

(assert (=> b!4743029 (= e!2958577 (forall!11690 (toList!6012 lt!1905142) lambda!219506))))

(declare-fun call!331919 () Bool)

(declare-fun bm!331914 () Bool)

(assert (=> bm!331914 (= call!331919 (forall!11690 (ite c!810190 (toList!6012 lt!1905142) (t!360383 lt!1905156)) (ite c!810190 lambda!219500 lambda!219506)))))

(declare-fun b!4743030 () Bool)

(assert (=> b!4743030 (= e!2958578 (invariantList!1546 (toList!6012 lt!1905476)))))

(declare-fun call!331918 () Bool)

(declare-fun bm!331915 () Bool)

(assert (=> bm!331915 (= call!331918 (forall!11690 (ite c!810190 (toList!6012 lt!1905142) lt!1905156) (ite c!810190 lambda!219500 lambda!219506)))))

(assert (=> b!4743031 (= e!2958579 lt!1905142)))

(declare-fun lt!1905484 () Unit!133727)

(assert (=> b!4743031 (= lt!1905484 call!331920)))

(assert (=> b!4743031 call!331919))

(declare-fun lt!1905479 () Unit!133727)

(assert (=> b!4743031 (= lt!1905479 lt!1905484)))

(assert (=> b!4743031 call!331918))

(declare-fun lt!1905481 () Unit!133727)

(declare-fun Unit!133756 () Unit!133727)

(assert (=> b!4743031 (= lt!1905481 Unit!133756)))

(assert (=> b!4743032 (= e!2958579 lt!1905478)))

(declare-fun lt!1905483 () ListMap!5375)

(assert (=> b!4743032 (= lt!1905483 (+!2309 lt!1905142 (h!59342 lt!1905156)))))

(assert (=> b!4743032 (= lt!1905478 (addToMapMapFromBucket!1491 (t!360383 lt!1905156) (+!2309 lt!1905142 (h!59342 lt!1905156))))))

(declare-fun lt!1905487 () Unit!133727)

(assert (=> b!4743032 (= lt!1905487 call!331920)))

(assert (=> b!4743032 (forall!11690 (toList!6012 lt!1905142) lambda!219503)))

(declare-fun lt!1905472 () Unit!133727)

(assert (=> b!4743032 (= lt!1905472 lt!1905487)))

(assert (=> b!4743032 (forall!11690 (toList!6012 lt!1905483) lambda!219506)))

(declare-fun lt!1905468 () Unit!133727)

(declare-fun Unit!133758 () Unit!133727)

(assert (=> b!4743032 (= lt!1905468 Unit!133758)))

(assert (=> b!4743032 call!331919))

(declare-fun lt!1905473 () Unit!133727)

(declare-fun Unit!133759 () Unit!133727)

(assert (=> b!4743032 (= lt!1905473 Unit!133759)))

(declare-fun lt!1905471 () Unit!133727)

(declare-fun Unit!133760 () Unit!133727)

(assert (=> b!4743032 (= lt!1905471 Unit!133760)))

(declare-fun lt!1905480 () Unit!133727)

(assert (=> b!4743032 (= lt!1905480 (forallContained!3730 (toList!6012 lt!1905483) lambda!219506 (h!59342 lt!1905156)))))

(assert (=> b!4743032 (contains!16371 lt!1905483 (_1!30613 (h!59342 lt!1905156)))))

(declare-fun lt!1905486 () Unit!133727)

(declare-fun Unit!133761 () Unit!133727)

(assert (=> b!4743032 (= lt!1905486 Unit!133761)))

(assert (=> b!4743032 (contains!16371 lt!1905478 (_1!30613 (h!59342 lt!1905156)))))

(declare-fun lt!1905482 () Unit!133727)

(declare-fun Unit!133762 () Unit!133727)

(assert (=> b!4743032 (= lt!1905482 Unit!133762)))

(assert (=> b!4743032 call!331918))

(declare-fun lt!1905469 () Unit!133727)

(declare-fun Unit!133763 () Unit!133727)

(assert (=> b!4743032 (= lt!1905469 Unit!133763)))

(assert (=> b!4743032 (forall!11690 (toList!6012 lt!1905483) lambda!219506)))

(declare-fun lt!1905488 () Unit!133727)

(declare-fun Unit!133764 () Unit!133727)

(assert (=> b!4743032 (= lt!1905488 Unit!133764)))

(declare-fun lt!1905477 () Unit!133727)

(declare-fun Unit!133765 () Unit!133727)

(assert (=> b!4743032 (= lt!1905477 Unit!133765)))

(declare-fun lt!1905474 () Unit!133727)

(assert (=> b!4743032 (= lt!1905474 (addForallContainsKeyThenBeforeAdding!830 lt!1905142 lt!1905478 (_1!30613 (h!59342 lt!1905156)) (_2!30613 (h!59342 lt!1905156))))))

(assert (=> b!4743032 (forall!11690 (toList!6012 lt!1905142) lambda!219506)))

(declare-fun lt!1905485 () Unit!133727)

(assert (=> b!4743032 (= lt!1905485 lt!1905474)))

(assert (=> b!4743032 (forall!11690 (toList!6012 lt!1905142) lambda!219506)))

(declare-fun lt!1905470 () Unit!133727)

(declare-fun Unit!133766 () Unit!133727)

(assert (=> b!4743032 (= lt!1905470 Unit!133766)))

(declare-fun res!2009762 () Bool)

(assert (=> b!4743032 (= res!2009762 (forall!11690 lt!1905156 lambda!219506))))

(assert (=> b!4743032 (=> (not res!2009762) (not e!2958577))))

(assert (=> b!4743032 e!2958577))

(declare-fun lt!1905475 () Unit!133727)

(declare-fun Unit!133767 () Unit!133727)

(assert (=> b!4743032 (= lt!1905475 Unit!133767)))

(declare-fun b!4743033 () Bool)

(declare-fun res!2009760 () Bool)

(assert (=> b!4743033 (=> (not res!2009760) (not e!2958578))))

(assert (=> b!4743033 (= res!2009760 (forall!11690 (toList!6012 lt!1905142) lambda!219513))))

(assert (= (and d!1515355 c!810190) b!4743031))

(assert (= (and d!1515355 (not c!810190)) b!4743032))

(assert (= (and b!4743032 res!2009762) b!4743029))

(assert (= (or b!4743031 b!4743032) bm!331913))

(assert (= (or b!4743031 b!4743032) bm!331915))

(assert (= (or b!4743031 b!4743032) bm!331914))

(assert (= (and d!1515355 res!2009761) b!4743033))

(assert (= (and b!4743033 res!2009760) b!4743030))

(declare-fun m!5697283 () Bool)

(assert (=> b!4743032 m!5697283))

(declare-fun m!5697285 () Bool)

(assert (=> b!4743032 m!5697285))

(declare-fun m!5697287 () Bool)

(assert (=> b!4743032 m!5697287))

(assert (=> b!4743032 m!5697283))

(declare-fun m!5697289 () Bool)

(assert (=> b!4743032 m!5697289))

(declare-fun m!5697291 () Bool)

(assert (=> b!4743032 m!5697291))

(declare-fun m!5697293 () Bool)

(assert (=> b!4743032 m!5697293))

(assert (=> b!4743032 m!5697291))

(declare-fun m!5697295 () Bool)

(assert (=> b!4743032 m!5697295))

(declare-fun m!5697297 () Bool)

(assert (=> b!4743032 m!5697297))

(declare-fun m!5697299 () Bool)

(assert (=> b!4743032 m!5697299))

(assert (=> b!4743032 m!5697297))

(declare-fun m!5697301 () Bool)

(assert (=> b!4743032 m!5697301))

(declare-fun m!5697303 () Bool)

(assert (=> b!4743033 m!5697303))

(declare-fun m!5697305 () Bool)

(assert (=> d!1515355 m!5697305))

(assert (=> d!1515355 m!5697001))

(declare-fun m!5697307 () Bool)

(assert (=> bm!331915 m!5697307))

(assert (=> bm!331913 m!5697083))

(declare-fun m!5697309 () Bool)

(assert (=> b!4743030 m!5697309))

(assert (=> b!4743029 m!5697283))

(declare-fun m!5697311 () Bool)

(assert (=> bm!331914 m!5697311))

(assert (=> b!4742696 d!1515355))

(declare-fun d!1515357 () Bool)

(declare-fun e!2958584 () Bool)

(assert (=> d!1515357 e!2958584))

(declare-fun res!2009767 () Bool)

(assert (=> d!1515357 (=> (not res!2009767) (not e!2958584))))

(declare-fun lt!1905509 () ListMap!5375)

(assert (=> d!1515357 (= res!2009767 (contains!16371 lt!1905509 (_1!30613 (h!59342 oldBucket!34))))))

(declare-fun lt!1905510 () List!53083)

(assert (=> d!1515357 (= lt!1905509 (ListMap!5376 lt!1905510))))

(declare-fun lt!1905507 () Unit!133727)

(declare-fun lt!1905508 () Unit!133727)

(assert (=> d!1515357 (= lt!1905507 lt!1905508)))

(assert (=> d!1515357 (= (getValueByKey!2023 lt!1905510 (_1!30613 (h!59342 oldBucket!34))) (Some!12466 (_2!30613 (h!59342 oldBucket!34))))))

(assert (=> d!1515357 (= lt!1905508 (lemmaContainsTupThenGetReturnValue!1113 lt!1905510 (_1!30613 (h!59342 oldBucket!34)) (_2!30613 (h!59342 oldBucket!34))))))

(assert (=> d!1515357 (= lt!1905510 (insertNoDuplicatedKeys!621 (toList!6012 lt!1905160) (_1!30613 (h!59342 oldBucket!34)) (_2!30613 (h!59342 oldBucket!34))))))

(assert (=> d!1515357 (= (+!2309 lt!1905160 (h!59342 oldBucket!34)) lt!1905509)))

(declare-fun b!4743036 () Bool)

(declare-fun res!2009768 () Bool)

(assert (=> b!4743036 (=> (not res!2009768) (not e!2958584))))

(assert (=> b!4743036 (= res!2009768 (= (getValueByKey!2023 (toList!6012 lt!1905509) (_1!30613 (h!59342 oldBucket!34))) (Some!12466 (_2!30613 (h!59342 oldBucket!34)))))))

(declare-fun b!4743037 () Bool)

(assert (=> b!4743037 (= e!2958584 (contains!16377 (toList!6012 lt!1905509) (h!59342 oldBucket!34)))))

(assert (= (and d!1515357 res!2009767) b!4743036))

(assert (= (and b!4743036 res!2009768) b!4743037))

(declare-fun m!5697313 () Bool)

(assert (=> d!1515357 m!5697313))

(declare-fun m!5697315 () Bool)

(assert (=> d!1515357 m!5697315))

(declare-fun m!5697317 () Bool)

(assert (=> d!1515357 m!5697317))

(declare-fun m!5697319 () Bool)

(assert (=> d!1515357 m!5697319))

(declare-fun m!5697321 () Bool)

(assert (=> b!4743036 m!5697321))

(declare-fun m!5697323 () Bool)

(assert (=> b!4743037 m!5697323))

(assert (=> b!4742696 d!1515357))

(declare-fun bs!1135847 () Bool)

(declare-fun d!1515359 () Bool)

(assert (= bs!1135847 (and d!1515359 d!1515315)))

(declare-fun lambda!219518 () Int)

(assert (=> bs!1135847 (= lambda!219518 lambda!219481)))

(declare-fun bs!1135848 () Bool)

(assert (= bs!1135848 (and d!1515359 start!483938)))

(assert (=> bs!1135848 (= lambda!219518 lambda!219415)))

(declare-fun bs!1135849 () Bool)

(assert (= bs!1135849 (and d!1515359 d!1515265)))

(assert (=> bs!1135849 (not (= lambda!219518 lambda!219428))))

(declare-fun bs!1135850 () Bool)

(assert (= bs!1135850 (and d!1515359 d!1515307)))

(assert (=> bs!1135850 (= lambda!219518 lambda!219471)))

(declare-fun bs!1135851 () Bool)

(assert (= bs!1135851 (and d!1515359 d!1515297)))

(assert (=> bs!1135851 (= lambda!219518 lambda!219467)))

(declare-fun bs!1135852 () Bool)

(assert (= bs!1135852 (and d!1515359 d!1515335)))

(assert (=> bs!1135852 (= lambda!219518 lambda!219482)))

(declare-fun lt!1905511 () ListMap!5375)

(assert (=> d!1515359 (invariantList!1546 (toList!6012 lt!1905511))))

(declare-fun e!2958585 () ListMap!5375)

(assert (=> d!1515359 (= lt!1905511 e!2958585)))

(declare-fun c!810191 () Bool)

(assert (=> d!1515359 (= c!810191 (is-Cons!52960 (Cons!52960 (tuple2!54641 hash!405 lt!1905156) (t!360384 (toList!6011 lm!2023)))))))

(assert (=> d!1515359 (forall!11688 (Cons!52960 (tuple2!54641 hash!405 lt!1905156) (t!360384 (toList!6011 lm!2023))) lambda!219518)))

(assert (=> d!1515359 (= (extractMap!2087 (Cons!52960 (tuple2!54641 hash!405 lt!1905156) (t!360384 (toList!6011 lm!2023)))) lt!1905511)))

(declare-fun b!4743040 () Bool)

(assert (=> b!4743040 (= e!2958585 (addToMapMapFromBucket!1491 (_2!30614 (h!59343 (Cons!52960 (tuple2!54641 hash!405 lt!1905156) (t!360384 (toList!6011 lm!2023))))) (extractMap!2087 (t!360384 (Cons!52960 (tuple2!54641 hash!405 lt!1905156) (t!360384 (toList!6011 lm!2023)))))))))

(declare-fun b!4743041 () Bool)

(assert (=> b!4743041 (= e!2958585 (ListMap!5376 Nil!52959))))

(assert (= (and d!1515359 c!810191) b!4743040))

(assert (= (and d!1515359 (not c!810191)) b!4743041))

(declare-fun m!5697325 () Bool)

(assert (=> d!1515359 m!5697325))

(declare-fun m!5697327 () Bool)

(assert (=> d!1515359 m!5697327))

(declare-fun m!5697329 () Bool)

(assert (=> b!4743040 m!5697329))

(assert (=> b!4743040 m!5697329))

(declare-fun m!5697331 () Bool)

(assert (=> b!4743040 m!5697331))

(assert (=> b!4742696 d!1515359))

(declare-fun d!1515361 () Bool)

(assert (=> d!1515361 (eq!1158 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905154 lt!1905145) lt!1905142) (+!2309 (addToMapMapFromBucket!1491 lt!1905145 lt!1905142) lt!1905154))))

(declare-fun lt!1905535 () Unit!133727)

(declare-fun choose!33674 (tuple2!54638 List!53083 ListMap!5375) Unit!133727)

(assert (=> d!1515361 (= lt!1905535 (choose!33674 lt!1905154 lt!1905145 lt!1905142))))

(assert (=> d!1515361 (noDuplicateKeys!2061 lt!1905145)))

(assert (=> d!1515361 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!407 lt!1905154 lt!1905145 lt!1905142) lt!1905535)))

(declare-fun bs!1135862 () Bool)

(assert (= bs!1135862 d!1515361))

(assert (=> bs!1135862 m!5696827))

(declare-fun m!5697335 () Bool)

(assert (=> bs!1135862 m!5697335))

(assert (=> bs!1135862 m!5696863))

(assert (=> bs!1135862 m!5696809))

(assert (=> bs!1135862 m!5696811))

(assert (=> bs!1135862 m!5696813))

(assert (=> bs!1135862 m!5696827))

(assert (=> bs!1135862 m!5696811))

(assert (=> bs!1135862 m!5696809))

(assert (=> b!4742696 d!1515361))

(declare-fun bs!1135863 () Bool)

(declare-fun d!1515363 () Bool)

(assert (= bs!1135863 (and d!1515363 d!1515359)))

(declare-fun lambda!219525 () Int)

(assert (=> bs!1135863 (= lambda!219525 lambda!219518)))

(declare-fun bs!1135864 () Bool)

(assert (= bs!1135864 (and d!1515363 d!1515315)))

(assert (=> bs!1135864 (= lambda!219525 lambda!219481)))

(declare-fun bs!1135865 () Bool)

(assert (= bs!1135865 (and d!1515363 start!483938)))

(assert (=> bs!1135865 (= lambda!219525 lambda!219415)))

(declare-fun bs!1135866 () Bool)

(assert (= bs!1135866 (and d!1515363 d!1515265)))

(assert (=> bs!1135866 (not (= lambda!219525 lambda!219428))))

(declare-fun bs!1135867 () Bool)

(assert (= bs!1135867 (and d!1515363 d!1515307)))

(assert (=> bs!1135867 (= lambda!219525 lambda!219471)))

(declare-fun bs!1135868 () Bool)

(assert (= bs!1135868 (and d!1515363 d!1515297)))

(assert (=> bs!1135868 (= lambda!219525 lambda!219467)))

(declare-fun bs!1135869 () Bool)

(assert (= bs!1135869 (and d!1515363 d!1515335)))

(assert (=> bs!1135869 (= lambda!219525 lambda!219482)))

(declare-fun lt!1905536 () ListMap!5375)

(assert (=> d!1515363 (invariantList!1546 (toList!6012 lt!1905536))))

(declare-fun e!2958589 () ListMap!5375)

(assert (=> d!1515363 (= lt!1905536 e!2958589)))

(declare-fun c!810193 () Bool)

(assert (=> d!1515363 (= c!810193 (is-Cons!52960 lt!1905148))))

(assert (=> d!1515363 (forall!11688 lt!1905148 lambda!219525)))

(assert (=> d!1515363 (= (extractMap!2087 lt!1905148) lt!1905536)))

(declare-fun b!4743051 () Bool)

(assert (=> b!4743051 (= e!2958589 (addToMapMapFromBucket!1491 (_2!30614 (h!59343 lt!1905148)) (extractMap!2087 (t!360384 lt!1905148))))))

(declare-fun b!4743052 () Bool)

(assert (=> b!4743052 (= e!2958589 (ListMap!5376 Nil!52959))))

(assert (= (and d!1515363 c!810193) b!4743051))

(assert (= (and d!1515363 (not c!810193)) b!4743052))

(declare-fun m!5697371 () Bool)

(assert (=> d!1515363 m!5697371))

(declare-fun m!5697373 () Bool)

(assert (=> d!1515363 m!5697373))

(declare-fun m!5697375 () Bool)

(assert (=> b!4743051 m!5697375))

(assert (=> b!4743051 m!5697375))

(declare-fun m!5697379 () Bool)

(assert (=> b!4743051 m!5697379))

(assert (=> b!4742696 d!1515363))

(declare-fun d!1515367 () Bool)

(declare-fun e!2958591 () Bool)

(assert (=> d!1515367 e!2958591))

(declare-fun res!2009774 () Bool)

(assert (=> d!1515367 (=> (not res!2009774) (not e!2958591))))

(declare-fun lt!1905540 () ListMap!5375)

(assert (=> d!1515367 (= res!2009774 (contains!16371 lt!1905540 (_1!30613 lt!1905155)))))

(declare-fun lt!1905541 () List!53083)

(assert (=> d!1515367 (= lt!1905540 (ListMap!5376 lt!1905541))))

(declare-fun lt!1905538 () Unit!133727)

(declare-fun lt!1905539 () Unit!133727)

(assert (=> d!1515367 (= lt!1905538 lt!1905539)))

(assert (=> d!1515367 (= (getValueByKey!2023 lt!1905541 (_1!30613 lt!1905155)) (Some!12466 (_2!30613 lt!1905155)))))

(assert (=> d!1515367 (= lt!1905539 (lemmaContainsTupThenGetReturnValue!1113 lt!1905541 (_1!30613 lt!1905155) (_2!30613 lt!1905155)))))

(assert (=> d!1515367 (= lt!1905541 (insertNoDuplicatedKeys!621 (toList!6012 (addToMapMapFromBucket!1491 lt!1905156 lt!1905142)) (_1!30613 lt!1905155) (_2!30613 lt!1905155)))))

(assert (=> d!1515367 (= (+!2309 (addToMapMapFromBucket!1491 lt!1905156 lt!1905142) lt!1905155) lt!1905540)))

(declare-fun b!4743055 () Bool)

(declare-fun res!2009775 () Bool)

(assert (=> b!4743055 (=> (not res!2009775) (not e!2958591))))

(assert (=> b!4743055 (= res!2009775 (= (getValueByKey!2023 (toList!6012 lt!1905540) (_1!30613 lt!1905155)) (Some!12466 (_2!30613 lt!1905155))))))

(declare-fun b!4743056 () Bool)

(assert (=> b!4743056 (= e!2958591 (contains!16377 (toList!6012 lt!1905540) lt!1905155))))

(assert (= (and d!1515367 res!2009774) b!4743055))

(assert (= (and b!4743055 res!2009775) b!4743056))

(declare-fun m!5697387 () Bool)

(assert (=> d!1515367 m!5697387))

(declare-fun m!5697389 () Bool)

(assert (=> d!1515367 m!5697389))

(declare-fun m!5697391 () Bool)

(assert (=> d!1515367 m!5697391))

(declare-fun m!5697393 () Bool)

(assert (=> d!1515367 m!5697393))

(declare-fun m!5697395 () Bool)

(assert (=> b!4743055 m!5697395))

(declare-fun m!5697397 () Bool)

(assert (=> b!4743056 m!5697397))

(assert (=> b!4742696 d!1515367))

(declare-fun bs!1135878 () Bool)

(declare-fun d!1515371 () Bool)

(assert (= bs!1135878 (and d!1515371 d!1515359)))

(declare-fun lambda!219532 () Int)

(assert (=> bs!1135878 (= lambda!219532 lambda!219518)))

(declare-fun bs!1135879 () Bool)

(assert (= bs!1135879 (and d!1515371 d!1515363)))

(assert (=> bs!1135879 (= lambda!219532 lambda!219525)))

(declare-fun bs!1135880 () Bool)

(assert (= bs!1135880 (and d!1515371 d!1515315)))

(assert (=> bs!1135880 (= lambda!219532 lambda!219481)))

(declare-fun bs!1135881 () Bool)

(assert (= bs!1135881 (and d!1515371 start!483938)))

(assert (=> bs!1135881 (= lambda!219532 lambda!219415)))

(declare-fun bs!1135882 () Bool)

(assert (= bs!1135882 (and d!1515371 d!1515265)))

(assert (=> bs!1135882 (not (= lambda!219532 lambda!219428))))

(declare-fun bs!1135883 () Bool)

(assert (= bs!1135883 (and d!1515371 d!1515307)))

(assert (=> bs!1135883 (= lambda!219532 lambda!219471)))

(declare-fun bs!1135884 () Bool)

(assert (= bs!1135884 (and d!1515371 d!1515297)))

(assert (=> bs!1135884 (= lambda!219532 lambda!219467)))

(declare-fun bs!1135885 () Bool)

(assert (= bs!1135885 (and d!1515371 d!1515335)))

(assert (=> bs!1135885 (= lambda!219532 lambda!219482)))

(assert (=> d!1515371 (contains!16371 (extractMap!2087 (toList!6011 lt!1905150)) key!4653)))

(declare-fun lt!1905544 () Unit!133727)

(declare-fun choose!33675 (ListLongMap!4541 K!14303 Hashable!6430) Unit!133727)

(assert (=> d!1515371 (= lt!1905544 (choose!33675 lt!1905150 key!4653 hashF!1323))))

(assert (=> d!1515371 (forall!11688 (toList!6011 lt!1905150) lambda!219532)))

(assert (=> d!1515371 (= (lemmaListContainsThenExtractedMapContains!569 lt!1905150 key!4653 hashF!1323) lt!1905544)))

(declare-fun bs!1135886 () Bool)

(assert (= bs!1135886 d!1515371))

(declare-fun m!5697407 () Bool)

(assert (=> bs!1135886 m!5697407))

(assert (=> bs!1135886 m!5697407))

(declare-fun m!5697409 () Bool)

(assert (=> bs!1135886 m!5697409))

(declare-fun m!5697411 () Bool)

(assert (=> bs!1135886 m!5697411))

(declare-fun m!5697413 () Bool)

(assert (=> bs!1135886 m!5697413))

(assert (=> b!4742696 d!1515371))

(declare-fun d!1515379 () Bool)

(assert (=> d!1515379 (= (head!10325 oldBucket!34) (h!59342 oldBucket!34))))

(assert (=> b!4742696 d!1515379))

(declare-fun d!1515381 () Bool)

(assert (=> d!1515381 (eq!1158 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905155 lt!1905156) lt!1905142) (+!2309 (addToMapMapFromBucket!1491 lt!1905156 lt!1905142) lt!1905155))))

(declare-fun lt!1905553 () Unit!133727)

(assert (=> d!1515381 (= lt!1905553 (choose!33674 lt!1905155 lt!1905156 lt!1905142))))

(assert (=> d!1515381 (noDuplicateKeys!2061 lt!1905156)))

(assert (=> d!1515381 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!407 lt!1905155 lt!1905156 lt!1905142) lt!1905553)))

(declare-fun bs!1135887 () Bool)

(assert (= bs!1135887 d!1515381))

(assert (=> bs!1135887 m!5696835))

(declare-fun m!5697415 () Bool)

(assert (=> bs!1135887 m!5697415))

(assert (=> bs!1135887 m!5697001))

(assert (=> bs!1135887 m!5696803))

(assert (=> bs!1135887 m!5696805))

(assert (=> bs!1135887 m!5696807))

(assert (=> bs!1135887 m!5696835))

(assert (=> bs!1135887 m!5696805))

(assert (=> bs!1135887 m!5696803))

(assert (=> b!4742696 d!1515381))

(declare-fun d!1515383 () Bool)

(assert (=> d!1515383 (= (head!10325 newBucket!218) (h!59342 newBucket!218))))

(assert (=> b!4742696 d!1515383))

(declare-fun bs!1135888 () Bool)

(declare-fun b!4743065 () Bool)

(assert (= bs!1135888 (and b!4743065 d!1515347)))

(declare-fun lambda!219533 () Int)

(assert (=> bs!1135888 (not (= lambda!219533 lambda!219483))))

(declare-fun bs!1135889 () Bool)

(assert (= bs!1135889 (and b!4743065 b!4742887)))

(assert (=> bs!1135889 (= lambda!219533 lambda!219462)))

(declare-fun bs!1135890 () Bool)

(assert (= bs!1135890 (and b!4743065 d!1515303)))

(assert (=> bs!1135890 (not (= lambda!219533 lambda!219468))))

(declare-fun bs!1135891 () Bool)

(assert (= bs!1135891 (and b!4743065 d!1515355)))

(assert (=> bs!1135891 (= (= lt!1905142 lt!1905476) (= lambda!219533 lambda!219513))))

(declare-fun bs!1135892 () Bool)

(assert (= bs!1135892 (and b!4743065 b!4743032)))

(assert (=> bs!1135892 (= lambda!219533 lambda!219503)))

(assert (=> bs!1135889 (= (= lt!1905142 lt!1905306) (= lambda!219533 lambda!219463))))

(declare-fun bs!1135893 () Bool)

(assert (= bs!1135893 (and b!4743065 b!4743016)))

(assert (=> bs!1135893 (= lambda!219533 lambda!219484)))

(declare-fun bs!1135894 () Bool)

(assert (= bs!1135894 (and b!4743065 b!4742886)))

(assert (=> bs!1135894 (= lambda!219533 lambda!219461)))

(declare-fun bs!1135895 () Bool)

(assert (= bs!1135895 (and b!4743065 b!4743017)))

(assert (=> bs!1135895 (= lambda!219533 lambda!219485)))

(declare-fun bs!1135896 () Bool)

(assert (= bs!1135896 (and b!4743065 d!1515267)))

(assert (=> bs!1135896 (= (= lt!1905142 lt!1905304) (= lambda!219533 lambda!219464))))

(assert (=> bs!1135892 (= (= lt!1905142 lt!1905478) (= lambda!219533 lambda!219506))))

(declare-fun bs!1135897 () Bool)

(assert (= bs!1135897 (and b!4743065 b!4743031)))

(assert (=> bs!1135897 (= lambda!219533 lambda!219500)))

(declare-fun bs!1135898 () Bool)

(assert (= bs!1135898 (and b!4743065 d!1515349)))

(assert (=> bs!1135898 (= (= lt!1905142 lt!1905419) (= lambda!219533 lambda!219487))))

(assert (=> bs!1135895 (= (= lt!1905142 lt!1905421) (= lambda!219533 lambda!219486))))

(declare-fun bs!1135899 () Bool)

(assert (= bs!1135899 (and b!4743065 d!1515259)))

(assert (=> bs!1135899 (not (= lambda!219533 lambda!219425))))

(assert (=> b!4743065 true))

(declare-fun bs!1135900 () Bool)

(declare-fun b!4743066 () Bool)

(assert (= bs!1135900 (and b!4743066 d!1515347)))

(declare-fun lambda!219534 () Int)

(assert (=> bs!1135900 (not (= lambda!219534 lambda!219483))))

(declare-fun bs!1135901 () Bool)

(assert (= bs!1135901 (and b!4743066 b!4743065)))

(assert (=> bs!1135901 (= lambda!219534 lambda!219533)))

(declare-fun bs!1135902 () Bool)

(assert (= bs!1135902 (and b!4743066 b!4742887)))

(assert (=> bs!1135902 (= lambda!219534 lambda!219462)))

(declare-fun bs!1135903 () Bool)

(assert (= bs!1135903 (and b!4743066 d!1515303)))

(assert (=> bs!1135903 (not (= lambda!219534 lambda!219468))))

(declare-fun bs!1135904 () Bool)

(assert (= bs!1135904 (and b!4743066 d!1515355)))

(assert (=> bs!1135904 (= (= lt!1905142 lt!1905476) (= lambda!219534 lambda!219513))))

(declare-fun bs!1135905 () Bool)

(assert (= bs!1135905 (and b!4743066 b!4743032)))

(assert (=> bs!1135905 (= lambda!219534 lambda!219503)))

(assert (=> bs!1135902 (= (= lt!1905142 lt!1905306) (= lambda!219534 lambda!219463))))

(declare-fun bs!1135906 () Bool)

(assert (= bs!1135906 (and b!4743066 b!4743016)))

(assert (=> bs!1135906 (= lambda!219534 lambda!219484)))

(declare-fun bs!1135907 () Bool)

(assert (= bs!1135907 (and b!4743066 b!4742886)))

(assert (=> bs!1135907 (= lambda!219534 lambda!219461)))

(declare-fun bs!1135908 () Bool)

(assert (= bs!1135908 (and b!4743066 b!4743017)))

(assert (=> bs!1135908 (= lambda!219534 lambda!219485)))

(declare-fun bs!1135909 () Bool)

(assert (= bs!1135909 (and b!4743066 d!1515267)))

(assert (=> bs!1135909 (= (= lt!1905142 lt!1905304) (= lambda!219534 lambda!219464))))

(assert (=> bs!1135905 (= (= lt!1905142 lt!1905478) (= lambda!219534 lambda!219506))))

(declare-fun bs!1135910 () Bool)

(assert (= bs!1135910 (and b!4743066 b!4743031)))

(assert (=> bs!1135910 (= lambda!219534 lambda!219500)))

(declare-fun bs!1135911 () Bool)

(assert (= bs!1135911 (and b!4743066 d!1515349)))

(assert (=> bs!1135911 (= (= lt!1905142 lt!1905419) (= lambda!219534 lambda!219487))))

(assert (=> bs!1135908 (= (= lt!1905142 lt!1905421) (= lambda!219534 lambda!219486))))

(declare-fun bs!1135912 () Bool)

(assert (= bs!1135912 (and b!4743066 d!1515259)))

(assert (=> bs!1135912 (not (= lambda!219534 lambda!219425))))

(assert (=> b!4743066 true))

(declare-fun lambda!219535 () Int)

(assert (=> bs!1135900 (not (= lambda!219535 lambda!219483))))

(declare-fun lt!1905564 () ListMap!5375)

(assert (=> bs!1135901 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219533))))

(assert (=> bs!1135902 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219462))))

(assert (=> bs!1135903 (not (= lambda!219535 lambda!219468))))

(assert (=> bs!1135904 (= (= lt!1905564 lt!1905476) (= lambda!219535 lambda!219513))))

(assert (=> bs!1135905 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219503))))

(assert (=> bs!1135902 (= (= lt!1905564 lt!1905306) (= lambda!219535 lambda!219463))))

(assert (=> bs!1135906 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219484))))

(assert (=> bs!1135907 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219461))))

(assert (=> bs!1135908 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219485))))

(assert (=> b!4743066 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219534))))

(assert (=> bs!1135909 (= (= lt!1905564 lt!1905304) (= lambda!219535 lambda!219464))))

(assert (=> bs!1135905 (= (= lt!1905564 lt!1905478) (= lambda!219535 lambda!219506))))

(assert (=> bs!1135910 (= (= lt!1905564 lt!1905142) (= lambda!219535 lambda!219500))))

(assert (=> bs!1135911 (= (= lt!1905564 lt!1905419) (= lambda!219535 lambda!219487))))

(assert (=> bs!1135908 (= (= lt!1905564 lt!1905421) (= lambda!219535 lambda!219486))))

(assert (=> bs!1135912 (not (= lambda!219535 lambda!219425))))

(assert (=> b!4743066 true))

(declare-fun bs!1135914 () Bool)

(declare-fun d!1515385 () Bool)

(assert (= bs!1135914 (and d!1515385 d!1515347)))

(declare-fun lambda!219536 () Int)

(assert (=> bs!1135914 (not (= lambda!219536 lambda!219483))))

(declare-fun bs!1135915 () Bool)

(assert (= bs!1135915 (and d!1515385 b!4743065)))

(declare-fun lt!1905562 () ListMap!5375)

(assert (=> bs!1135915 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219533))))

(declare-fun bs!1135916 () Bool)

(assert (= bs!1135916 (and d!1515385 b!4742887)))

(assert (=> bs!1135916 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219462))))

(declare-fun bs!1135917 () Bool)

(assert (= bs!1135917 (and d!1515385 d!1515303)))

(assert (=> bs!1135917 (not (= lambda!219536 lambda!219468))))

(declare-fun bs!1135918 () Bool)

(assert (= bs!1135918 (and d!1515385 d!1515355)))

(assert (=> bs!1135918 (= (= lt!1905562 lt!1905476) (= lambda!219536 lambda!219513))))

(declare-fun bs!1135919 () Bool)

(assert (= bs!1135919 (and d!1515385 b!4743032)))

(assert (=> bs!1135919 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219503))))

(assert (=> bs!1135916 (= (= lt!1905562 lt!1905306) (= lambda!219536 lambda!219463))))

(declare-fun bs!1135920 () Bool)

(assert (= bs!1135920 (and d!1515385 b!4743016)))

(assert (=> bs!1135920 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219484))))

(declare-fun bs!1135921 () Bool)

(assert (= bs!1135921 (and d!1515385 b!4742886)))

(assert (=> bs!1135921 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219461))))

(declare-fun bs!1135922 () Bool)

(assert (= bs!1135922 (and d!1515385 b!4743017)))

(assert (=> bs!1135922 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219485))))

(declare-fun bs!1135923 () Bool)

(assert (= bs!1135923 (and d!1515385 d!1515267)))

(assert (=> bs!1135923 (= (= lt!1905562 lt!1905304) (= lambda!219536 lambda!219464))))

(declare-fun bs!1135924 () Bool)

(assert (= bs!1135924 (and d!1515385 b!4743066)))

(assert (=> bs!1135924 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219534))))

(assert (=> bs!1135924 (= (= lt!1905562 lt!1905564) (= lambda!219536 lambda!219535))))

(assert (=> bs!1135919 (= (= lt!1905562 lt!1905478) (= lambda!219536 lambda!219506))))

(declare-fun bs!1135925 () Bool)

(assert (= bs!1135925 (and d!1515385 b!4743031)))

(assert (=> bs!1135925 (= (= lt!1905562 lt!1905142) (= lambda!219536 lambda!219500))))

(declare-fun bs!1135926 () Bool)

(assert (= bs!1135926 (and d!1515385 d!1515349)))

(assert (=> bs!1135926 (= (= lt!1905562 lt!1905419) (= lambda!219536 lambda!219487))))

(assert (=> bs!1135922 (= (= lt!1905562 lt!1905421) (= lambda!219536 lambda!219486))))

(declare-fun bs!1135927 () Bool)

(assert (= bs!1135927 (and d!1515385 d!1515259)))

(assert (=> bs!1135927 (not (= lambda!219536 lambda!219425))))

(assert (=> d!1515385 true))

(declare-fun bm!331925 () Bool)

(declare-fun call!331932 () Unit!133727)

(assert (=> bm!331925 (= call!331932 (lemmaContainsAllItsOwnKeys!831 lt!1905142))))

(declare-fun e!2958595 () Bool)

(assert (=> d!1515385 e!2958595))

(declare-fun res!2009781 () Bool)

(assert (=> d!1515385 (=> (not res!2009781) (not e!2958595))))

(assert (=> d!1515385 (= res!2009781 (forall!11690 (Cons!52959 lt!1905154 lt!1905145) lambda!219536))))

(declare-fun e!2958596 () ListMap!5375)

(assert (=> d!1515385 (= lt!1905562 e!2958596)))

(declare-fun c!810195 () Bool)

(assert (=> d!1515385 (= c!810195 (is-Nil!52959 (Cons!52959 lt!1905154 lt!1905145)))))

(assert (=> d!1515385 (noDuplicateKeys!2061 (Cons!52959 lt!1905154 lt!1905145))))

(assert (=> d!1515385 (= (addToMapMapFromBucket!1491 (Cons!52959 lt!1905154 lt!1905145) lt!1905142) lt!1905562)))

(declare-fun b!4743063 () Bool)

(declare-fun e!2958594 () Bool)

(assert (=> b!4743063 (= e!2958594 (forall!11690 (toList!6012 lt!1905142) lambda!219535))))

(declare-fun call!331931 () Bool)

(declare-fun bm!331926 () Bool)

(assert (=> bm!331926 (= call!331931 (forall!11690 (ite c!810195 (toList!6012 lt!1905142) (t!360383 (Cons!52959 lt!1905154 lt!1905145))) (ite c!810195 lambda!219533 lambda!219535)))))

(declare-fun b!4743064 () Bool)

(assert (=> b!4743064 (= e!2958595 (invariantList!1546 (toList!6012 lt!1905562)))))

(declare-fun call!331930 () Bool)

(declare-fun bm!331927 () Bool)

(assert (=> bm!331927 (= call!331930 (forall!11690 (ite c!810195 (toList!6012 lt!1905142) (Cons!52959 lt!1905154 lt!1905145)) (ite c!810195 lambda!219533 lambda!219535)))))

(assert (=> b!4743065 (= e!2958596 lt!1905142)))

(declare-fun lt!1905570 () Unit!133727)

(assert (=> b!4743065 (= lt!1905570 call!331932)))

(assert (=> b!4743065 call!331931))

(declare-fun lt!1905565 () Unit!133727)

(assert (=> b!4743065 (= lt!1905565 lt!1905570)))

(assert (=> b!4743065 call!331930))

(declare-fun lt!1905567 () Unit!133727)

(declare-fun Unit!133780 () Unit!133727)

(assert (=> b!4743065 (= lt!1905567 Unit!133780)))

(assert (=> b!4743066 (= e!2958596 lt!1905564)))

(declare-fun lt!1905569 () ListMap!5375)

(assert (=> b!4743066 (= lt!1905569 (+!2309 lt!1905142 (h!59342 (Cons!52959 lt!1905154 lt!1905145))))))

(assert (=> b!4743066 (= lt!1905564 (addToMapMapFromBucket!1491 (t!360383 (Cons!52959 lt!1905154 lt!1905145)) (+!2309 lt!1905142 (h!59342 (Cons!52959 lt!1905154 lt!1905145)))))))

(declare-fun lt!1905573 () Unit!133727)

(assert (=> b!4743066 (= lt!1905573 call!331932)))

(assert (=> b!4743066 (forall!11690 (toList!6012 lt!1905142) lambda!219534)))

(declare-fun lt!1905558 () Unit!133727)

(assert (=> b!4743066 (= lt!1905558 lt!1905573)))

(assert (=> b!4743066 (forall!11690 (toList!6012 lt!1905569) lambda!219535)))

(declare-fun lt!1905554 () Unit!133727)

(declare-fun Unit!133781 () Unit!133727)

(assert (=> b!4743066 (= lt!1905554 Unit!133781)))

(assert (=> b!4743066 call!331931))

(declare-fun lt!1905559 () Unit!133727)

(declare-fun Unit!133782 () Unit!133727)

(assert (=> b!4743066 (= lt!1905559 Unit!133782)))

(declare-fun lt!1905557 () Unit!133727)

(declare-fun Unit!133783 () Unit!133727)

(assert (=> b!4743066 (= lt!1905557 Unit!133783)))

(declare-fun lt!1905566 () Unit!133727)

(assert (=> b!4743066 (= lt!1905566 (forallContained!3730 (toList!6012 lt!1905569) lambda!219535 (h!59342 (Cons!52959 lt!1905154 lt!1905145))))))

(assert (=> b!4743066 (contains!16371 lt!1905569 (_1!30613 (h!59342 (Cons!52959 lt!1905154 lt!1905145))))))

(declare-fun lt!1905572 () Unit!133727)

(declare-fun Unit!133784 () Unit!133727)

(assert (=> b!4743066 (= lt!1905572 Unit!133784)))

(assert (=> b!4743066 (contains!16371 lt!1905564 (_1!30613 (h!59342 (Cons!52959 lt!1905154 lt!1905145))))))

(declare-fun lt!1905568 () Unit!133727)

(declare-fun Unit!133785 () Unit!133727)

(assert (=> b!4743066 (= lt!1905568 Unit!133785)))

(assert (=> b!4743066 call!331930))

(declare-fun lt!1905555 () Unit!133727)

(declare-fun Unit!133786 () Unit!133727)

(assert (=> b!4743066 (= lt!1905555 Unit!133786)))

(assert (=> b!4743066 (forall!11690 (toList!6012 lt!1905569) lambda!219535)))

(declare-fun lt!1905574 () Unit!133727)

(declare-fun Unit!133787 () Unit!133727)

(assert (=> b!4743066 (= lt!1905574 Unit!133787)))

(declare-fun lt!1905563 () Unit!133727)

(declare-fun Unit!133788 () Unit!133727)

(assert (=> b!4743066 (= lt!1905563 Unit!133788)))

(declare-fun lt!1905560 () Unit!133727)

(assert (=> b!4743066 (= lt!1905560 (addForallContainsKeyThenBeforeAdding!830 lt!1905142 lt!1905564 (_1!30613 (h!59342 (Cons!52959 lt!1905154 lt!1905145))) (_2!30613 (h!59342 (Cons!52959 lt!1905154 lt!1905145)))))))

(assert (=> b!4743066 (forall!11690 (toList!6012 lt!1905142) lambda!219535)))

(declare-fun lt!1905571 () Unit!133727)

(assert (=> b!4743066 (= lt!1905571 lt!1905560)))

(assert (=> b!4743066 (forall!11690 (toList!6012 lt!1905142) lambda!219535)))

(declare-fun lt!1905556 () Unit!133727)

(declare-fun Unit!133789 () Unit!133727)

(assert (=> b!4743066 (= lt!1905556 Unit!133789)))

(declare-fun res!2009782 () Bool)

(assert (=> b!4743066 (= res!2009782 (forall!11690 (Cons!52959 lt!1905154 lt!1905145) lambda!219535))))

(assert (=> b!4743066 (=> (not res!2009782) (not e!2958594))))

(assert (=> b!4743066 e!2958594))

(declare-fun lt!1905561 () Unit!133727)

(declare-fun Unit!133790 () Unit!133727)

(assert (=> b!4743066 (= lt!1905561 Unit!133790)))

(declare-fun b!4743067 () Bool)

(declare-fun res!2009780 () Bool)

(assert (=> b!4743067 (=> (not res!2009780) (not e!2958595))))

(assert (=> b!4743067 (= res!2009780 (forall!11690 (toList!6012 lt!1905142) lambda!219536))))

(assert (= (and d!1515385 c!810195) b!4743065))

(assert (= (and d!1515385 (not c!810195)) b!4743066))

(assert (= (and b!4743066 res!2009782) b!4743063))

(assert (= (or b!4743065 b!4743066) bm!331925))

(assert (= (or b!4743065 b!4743066) bm!331927))

(assert (= (or b!4743065 b!4743066) bm!331926))

(assert (= (and d!1515385 res!2009781) b!4743067))

(assert (= (and b!4743067 res!2009780) b!4743064))

(declare-fun m!5697437 () Bool)

(assert (=> b!4743066 m!5697437))

(declare-fun m!5697439 () Bool)

(assert (=> b!4743066 m!5697439))

(declare-fun m!5697441 () Bool)

(assert (=> b!4743066 m!5697441))

(assert (=> b!4743066 m!5697437))

(declare-fun m!5697443 () Bool)

(assert (=> b!4743066 m!5697443))

(declare-fun m!5697445 () Bool)

(assert (=> b!4743066 m!5697445))

(declare-fun m!5697447 () Bool)

(assert (=> b!4743066 m!5697447))

(assert (=> b!4743066 m!5697445))

(declare-fun m!5697449 () Bool)

(assert (=> b!4743066 m!5697449))

(declare-fun m!5697451 () Bool)

(assert (=> b!4743066 m!5697451))

(declare-fun m!5697453 () Bool)

(assert (=> b!4743066 m!5697453))

(assert (=> b!4743066 m!5697451))

(declare-fun m!5697455 () Bool)

(assert (=> b!4743066 m!5697455))

(declare-fun m!5697457 () Bool)

(assert (=> b!4743067 m!5697457))

(declare-fun m!5697459 () Bool)

(assert (=> d!1515385 m!5697459))

(declare-fun m!5697461 () Bool)

(assert (=> d!1515385 m!5697461))

(declare-fun m!5697463 () Bool)

(assert (=> bm!331927 m!5697463))

(assert (=> bm!331925 m!5697083))

(declare-fun m!5697465 () Bool)

(assert (=> b!4743064 m!5697465))

(assert (=> b!4743063 m!5697437))

(declare-fun m!5697467 () Bool)

(assert (=> bm!331926 m!5697467))

(assert (=> b!4742696 d!1515385))

(declare-fun d!1515393 () Bool)

(assert (=> d!1515393 (= (eq!1158 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905155 lt!1905156) lt!1905142) (+!2309 (addToMapMapFromBucket!1491 lt!1905156 lt!1905142) lt!1905155)) (= (content!9471 (toList!6012 (addToMapMapFromBucket!1491 (Cons!52959 lt!1905155 lt!1905156) lt!1905142))) (content!9471 (toList!6012 (+!2309 (addToMapMapFromBucket!1491 lt!1905156 lt!1905142) lt!1905155)))))))

(declare-fun bs!1135928 () Bool)

(assert (= bs!1135928 d!1515393))

(declare-fun m!5697469 () Bool)

(assert (=> bs!1135928 m!5697469))

(declare-fun m!5697471 () Bool)

(assert (=> bs!1135928 m!5697471))

(assert (=> b!4742696 d!1515393))

(declare-fun bs!1135929 () Bool)

(declare-fun d!1515395 () Bool)

(assert (= bs!1135929 (and d!1515395 d!1515371)))

(declare-fun lambda!219537 () Int)

(assert (=> bs!1135929 (= lambda!219537 lambda!219532)))

(declare-fun bs!1135930 () Bool)

(assert (= bs!1135930 (and d!1515395 d!1515359)))

(assert (=> bs!1135930 (= lambda!219537 lambda!219518)))

(declare-fun bs!1135931 () Bool)

(assert (= bs!1135931 (and d!1515395 d!1515363)))

(assert (=> bs!1135931 (= lambda!219537 lambda!219525)))

(declare-fun bs!1135932 () Bool)

(assert (= bs!1135932 (and d!1515395 d!1515315)))

(assert (=> bs!1135932 (= lambda!219537 lambda!219481)))

(declare-fun bs!1135933 () Bool)

(assert (= bs!1135933 (and d!1515395 start!483938)))

(assert (=> bs!1135933 (= lambda!219537 lambda!219415)))

(declare-fun bs!1135934 () Bool)

(assert (= bs!1135934 (and d!1515395 d!1515265)))

(assert (=> bs!1135934 (not (= lambda!219537 lambda!219428))))

(declare-fun bs!1135935 () Bool)

(assert (= bs!1135935 (and d!1515395 d!1515307)))

(assert (=> bs!1135935 (= lambda!219537 lambda!219471)))

(declare-fun bs!1135936 () Bool)

(assert (= bs!1135936 (and d!1515395 d!1515297)))

(assert (=> bs!1135936 (= lambda!219537 lambda!219467)))

(declare-fun bs!1135937 () Bool)

(assert (= bs!1135937 (and d!1515395 d!1515335)))

(assert (=> bs!1135937 (= lambda!219537 lambda!219482)))

(declare-fun lt!1905582 () ListMap!5375)

(assert (=> d!1515395 (invariantList!1546 (toList!6012 lt!1905582))))

(declare-fun e!2958601 () ListMap!5375)

(assert (=> d!1515395 (= lt!1905582 e!2958601)))

(declare-fun c!810196 () Bool)

(assert (=> d!1515395 (= c!810196 (is-Cons!52960 (Cons!52960 lt!1905153 (t!360384 (toList!6011 lm!2023)))))))

(assert (=> d!1515395 (forall!11688 (Cons!52960 lt!1905153 (t!360384 (toList!6011 lm!2023))) lambda!219537)))

(assert (=> d!1515395 (= (extractMap!2087 (Cons!52960 lt!1905153 (t!360384 (toList!6011 lm!2023)))) lt!1905582)))

(declare-fun b!4743073 () Bool)

(assert (=> b!4743073 (= e!2958601 (addToMapMapFromBucket!1491 (_2!30614 (h!59343 (Cons!52960 lt!1905153 (t!360384 (toList!6011 lm!2023))))) (extractMap!2087 (t!360384 (Cons!52960 lt!1905153 (t!360384 (toList!6011 lm!2023)))))))))

(declare-fun b!4743074 () Bool)

(assert (=> b!4743074 (= e!2958601 (ListMap!5376 Nil!52959))))

(assert (= (and d!1515395 c!810196) b!4743073))

(assert (= (and d!1515395 (not c!810196)) b!4743074))

(declare-fun m!5697473 () Bool)

(assert (=> d!1515395 m!5697473))

(declare-fun m!5697475 () Bool)

(assert (=> d!1515395 m!5697475))

(declare-fun m!5697477 () Bool)

(assert (=> b!4743073 m!5697477))

(assert (=> b!4743073 m!5697477))

(declare-fun m!5697479 () Bool)

(assert (=> b!4743073 m!5697479))

(assert (=> b!4742696 d!1515395))

(declare-fun bs!1135938 () Bool)

(declare-fun b!4743077 () Bool)

(assert (= bs!1135938 (and b!4743077 d!1515347)))

(declare-fun lambda!219538 () Int)

(assert (=> bs!1135938 (not (= lambda!219538 lambda!219483))))

(declare-fun bs!1135939 () Bool)

(assert (= bs!1135939 (and b!4743077 b!4743065)))

(assert (=> bs!1135939 (= lambda!219538 lambda!219533)))

(declare-fun bs!1135940 () Bool)

(assert (= bs!1135940 (and b!4743077 b!4742887)))

(assert (=> bs!1135940 (= lambda!219538 lambda!219462)))

(declare-fun bs!1135941 () Bool)

(assert (= bs!1135941 (and b!4743077 d!1515303)))

(assert (=> bs!1135941 (not (= lambda!219538 lambda!219468))))

(declare-fun bs!1135942 () Bool)

(assert (= bs!1135942 (and b!4743077 d!1515355)))

(assert (=> bs!1135942 (= (= lt!1905142 lt!1905476) (= lambda!219538 lambda!219513))))

(declare-fun bs!1135943 () Bool)

(assert (= bs!1135943 (and b!4743077 b!4743032)))

(assert (=> bs!1135943 (= lambda!219538 lambda!219503)))

(assert (=> bs!1135940 (= (= lt!1905142 lt!1905306) (= lambda!219538 lambda!219463))))

(declare-fun bs!1135944 () Bool)

(assert (= bs!1135944 (and b!4743077 b!4743016)))

(assert (=> bs!1135944 (= lambda!219538 lambda!219484)))

(declare-fun bs!1135945 () Bool)

(assert (= bs!1135945 (and b!4743077 b!4742886)))

(assert (=> bs!1135945 (= lambda!219538 lambda!219461)))

(declare-fun bs!1135946 () Bool)

(assert (= bs!1135946 (and b!4743077 b!4743017)))

(assert (=> bs!1135946 (= lambda!219538 lambda!219485)))

(declare-fun bs!1135947 () Bool)

(assert (= bs!1135947 (and b!4743077 d!1515267)))

(assert (=> bs!1135947 (= (= lt!1905142 lt!1905304) (= lambda!219538 lambda!219464))))

(declare-fun bs!1135948 () Bool)

(assert (= bs!1135948 (and b!4743077 b!4743066)))

(assert (=> bs!1135948 (= lambda!219538 lambda!219534)))

(declare-fun bs!1135949 () Bool)

(assert (= bs!1135949 (and b!4743077 d!1515385)))

(assert (=> bs!1135949 (= (= lt!1905142 lt!1905562) (= lambda!219538 lambda!219536))))

(assert (=> bs!1135948 (= (= lt!1905142 lt!1905564) (= lambda!219538 lambda!219535))))

(assert (=> bs!1135943 (= (= lt!1905142 lt!1905478) (= lambda!219538 lambda!219506))))

(declare-fun bs!1135950 () Bool)

(assert (= bs!1135950 (and b!4743077 b!4743031)))

(assert (=> bs!1135950 (= lambda!219538 lambda!219500)))

(declare-fun bs!1135951 () Bool)

(assert (= bs!1135951 (and b!4743077 d!1515349)))

(assert (=> bs!1135951 (= (= lt!1905142 lt!1905419) (= lambda!219538 lambda!219487))))

(assert (=> bs!1135946 (= (= lt!1905142 lt!1905421) (= lambda!219538 lambda!219486))))

(declare-fun bs!1135952 () Bool)

(assert (= bs!1135952 (and b!4743077 d!1515259)))

(assert (=> bs!1135952 (not (= lambda!219538 lambda!219425))))

(assert (=> b!4743077 true))

(declare-fun bs!1135953 () Bool)

(declare-fun b!4743078 () Bool)

(assert (= bs!1135953 (and b!4743078 d!1515347)))

(declare-fun lambda!219539 () Int)

(assert (=> bs!1135953 (not (= lambda!219539 lambda!219483))))

(declare-fun bs!1135954 () Bool)

(assert (= bs!1135954 (and b!4743078 b!4743065)))

(assert (=> bs!1135954 (= lambda!219539 lambda!219533)))

(declare-fun bs!1135955 () Bool)

(assert (= bs!1135955 (and b!4743078 b!4742887)))

(assert (=> bs!1135955 (= lambda!219539 lambda!219462)))

(declare-fun bs!1135956 () Bool)

(assert (= bs!1135956 (and b!4743078 d!1515303)))

(assert (=> bs!1135956 (not (= lambda!219539 lambda!219468))))

(declare-fun bs!1135957 () Bool)

(assert (= bs!1135957 (and b!4743078 d!1515355)))

(assert (=> bs!1135957 (= (= lt!1905142 lt!1905476) (= lambda!219539 lambda!219513))))

(declare-fun bs!1135958 () Bool)

(assert (= bs!1135958 (and b!4743078 b!4743032)))

(assert (=> bs!1135958 (= lambda!219539 lambda!219503)))

(declare-fun bs!1135959 () Bool)

(assert (= bs!1135959 (and b!4743078 b!4743077)))

(assert (=> bs!1135959 (= lambda!219539 lambda!219538)))

(assert (=> bs!1135955 (= (= lt!1905142 lt!1905306) (= lambda!219539 lambda!219463))))

(declare-fun bs!1135960 () Bool)

(assert (= bs!1135960 (and b!4743078 b!4743016)))

(assert (=> bs!1135960 (= lambda!219539 lambda!219484)))

(declare-fun bs!1135961 () Bool)

(assert (= bs!1135961 (and b!4743078 b!4742886)))

(assert (=> bs!1135961 (= lambda!219539 lambda!219461)))

(declare-fun bs!1135962 () Bool)

(assert (= bs!1135962 (and b!4743078 b!4743017)))

(assert (=> bs!1135962 (= lambda!219539 lambda!219485)))

(declare-fun bs!1135963 () Bool)

(assert (= bs!1135963 (and b!4743078 d!1515267)))

(assert (=> bs!1135963 (= (= lt!1905142 lt!1905304) (= lambda!219539 lambda!219464))))

(declare-fun bs!1135964 () Bool)

(assert (= bs!1135964 (and b!4743078 b!4743066)))

(assert (=> bs!1135964 (= lambda!219539 lambda!219534)))

(declare-fun bs!1135965 () Bool)

(assert (= bs!1135965 (and b!4743078 d!1515385)))

(assert (=> bs!1135965 (= (= lt!1905142 lt!1905562) (= lambda!219539 lambda!219536))))

(assert (=> bs!1135964 (= (= lt!1905142 lt!1905564) (= lambda!219539 lambda!219535))))

(assert (=> bs!1135958 (= (= lt!1905142 lt!1905478) (= lambda!219539 lambda!219506))))

(declare-fun bs!1135966 () Bool)

(assert (= bs!1135966 (and b!4743078 b!4743031)))

(assert (=> bs!1135966 (= lambda!219539 lambda!219500)))

(declare-fun bs!1135967 () Bool)

(assert (= bs!1135967 (and b!4743078 d!1515349)))

(assert (=> bs!1135967 (= (= lt!1905142 lt!1905419) (= lambda!219539 lambda!219487))))

(assert (=> bs!1135962 (= (= lt!1905142 lt!1905421) (= lambda!219539 lambda!219486))))

(declare-fun bs!1135968 () Bool)

(assert (= bs!1135968 (and b!4743078 d!1515259)))

(assert (=> bs!1135968 (not (= lambda!219539 lambda!219425))))

(assert (=> b!4743078 true))

(declare-fun lambda!219540 () Int)

(assert (=> bs!1135953 (not (= lambda!219540 lambda!219483))))

(declare-fun lt!1905593 () ListMap!5375)

(assert (=> bs!1135954 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219533))))

(assert (=> bs!1135955 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219462))))

(assert (=> bs!1135956 (not (= lambda!219540 lambda!219468))))

(assert (=> bs!1135957 (= (= lt!1905593 lt!1905476) (= lambda!219540 lambda!219513))))

(assert (=> bs!1135958 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219503))))

(assert (=> bs!1135959 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219538))))

(assert (=> bs!1135955 (= (= lt!1905593 lt!1905306) (= lambda!219540 lambda!219463))))

(assert (=> bs!1135960 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219484))))

(assert (=> bs!1135962 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219485))))

(assert (=> bs!1135963 (= (= lt!1905593 lt!1905304) (= lambda!219540 lambda!219464))))

(assert (=> b!4743078 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219539))))

(assert (=> bs!1135961 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219461))))

(assert (=> bs!1135964 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219534))))

(assert (=> bs!1135965 (= (= lt!1905593 lt!1905562) (= lambda!219540 lambda!219536))))

(assert (=> bs!1135964 (= (= lt!1905593 lt!1905564) (= lambda!219540 lambda!219535))))

(assert (=> bs!1135958 (= (= lt!1905593 lt!1905478) (= lambda!219540 lambda!219506))))

(assert (=> bs!1135966 (= (= lt!1905593 lt!1905142) (= lambda!219540 lambda!219500))))

(assert (=> bs!1135967 (= (= lt!1905593 lt!1905419) (= lambda!219540 lambda!219487))))

(assert (=> bs!1135962 (= (= lt!1905593 lt!1905421) (= lambda!219540 lambda!219486))))

(assert (=> bs!1135968 (not (= lambda!219540 lambda!219425))))

(assert (=> b!4743078 true))

(declare-fun bs!1135969 () Bool)

(declare-fun d!1515397 () Bool)

(assert (= bs!1135969 (and d!1515397 d!1515347)))

(declare-fun lambda!219541 () Int)

(assert (=> bs!1135969 (not (= lambda!219541 lambda!219483))))

(declare-fun bs!1135970 () Bool)

(assert (= bs!1135970 (and d!1515397 b!4742887)))

(declare-fun lt!1905591 () ListMap!5375)

(assert (=> bs!1135970 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219462))))

(declare-fun bs!1135971 () Bool)

(assert (= bs!1135971 (and d!1515397 d!1515303)))

(assert (=> bs!1135971 (not (= lambda!219541 lambda!219468))))

(declare-fun bs!1135972 () Bool)

(assert (= bs!1135972 (and d!1515397 d!1515355)))

(assert (=> bs!1135972 (= (= lt!1905591 lt!1905476) (= lambda!219541 lambda!219513))))

(declare-fun bs!1135973 () Bool)

(assert (= bs!1135973 (and d!1515397 b!4743032)))

(assert (=> bs!1135973 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219503))))

(declare-fun bs!1135974 () Bool)

(assert (= bs!1135974 (and d!1515397 b!4743077)))

(assert (=> bs!1135974 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219538))))

(assert (=> bs!1135970 (= (= lt!1905591 lt!1905306) (= lambda!219541 lambda!219463))))

(declare-fun bs!1135975 () Bool)

(assert (= bs!1135975 (and d!1515397 b!4743016)))

(assert (=> bs!1135975 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219484))))

(declare-fun bs!1135976 () Bool)

(assert (= bs!1135976 (and d!1515397 b!4743017)))

(assert (=> bs!1135976 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219485))))

(declare-fun bs!1135977 () Bool)

(assert (= bs!1135977 (and d!1515397 d!1515267)))

(assert (=> bs!1135977 (= (= lt!1905591 lt!1905304) (= lambda!219541 lambda!219464))))

(declare-fun bs!1135978 () Bool)

(assert (= bs!1135978 (and d!1515397 b!4743065)))

(assert (=> bs!1135978 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219533))))

(declare-fun bs!1135979 () Bool)

(assert (= bs!1135979 (and d!1515397 b!4743078)))

(assert (=> bs!1135979 (= (= lt!1905591 lt!1905593) (= lambda!219541 lambda!219540))))

(assert (=> bs!1135979 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219539))))

(declare-fun bs!1135980 () Bool)

(assert (= bs!1135980 (and d!1515397 b!4742886)))

(assert (=> bs!1135980 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219461))))

(declare-fun bs!1135981 () Bool)

(assert (= bs!1135981 (and d!1515397 b!4743066)))

(assert (=> bs!1135981 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219534))))

(declare-fun bs!1135982 () Bool)

(assert (= bs!1135982 (and d!1515397 d!1515385)))

(assert (=> bs!1135982 (= (= lt!1905591 lt!1905562) (= lambda!219541 lambda!219536))))

(assert (=> bs!1135981 (= (= lt!1905591 lt!1905564) (= lambda!219541 lambda!219535))))

(assert (=> bs!1135973 (= (= lt!1905591 lt!1905478) (= lambda!219541 lambda!219506))))

(declare-fun bs!1135983 () Bool)

(assert (= bs!1135983 (and d!1515397 b!4743031)))

(assert (=> bs!1135983 (= (= lt!1905591 lt!1905142) (= lambda!219541 lambda!219500))))

(declare-fun bs!1135984 () Bool)

(assert (= bs!1135984 (and d!1515397 d!1515349)))

(assert (=> bs!1135984 (= (= lt!1905591 lt!1905419) (= lambda!219541 lambda!219487))))

(assert (=> bs!1135976 (= (= lt!1905591 lt!1905421) (= lambda!219541 lambda!219486))))

(declare-fun bs!1135985 () Bool)

(assert (= bs!1135985 (and d!1515397 d!1515259)))

(assert (=> bs!1135985 (not (= lambda!219541 lambda!219425))))

(assert (=> d!1515397 true))

(declare-fun bm!331928 () Bool)

(declare-fun call!331935 () Unit!133727)

(assert (=> bm!331928 (= call!331935 (lemmaContainsAllItsOwnKeys!831 lt!1905142))))

(declare-fun e!2958603 () Bool)

(assert (=> d!1515397 e!2958603))

(declare-fun res!2009789 () Bool)

(assert (=> d!1515397 (=> (not res!2009789) (not e!2958603))))

(assert (=> d!1515397 (= res!2009789 (forall!11690 (Cons!52959 lt!1905155 lt!1905156) lambda!219541))))

(declare-fun e!2958604 () ListMap!5375)

(assert (=> d!1515397 (= lt!1905591 e!2958604)))

(declare-fun c!810197 () Bool)

(assert (=> d!1515397 (= c!810197 (is-Nil!52959 (Cons!52959 lt!1905155 lt!1905156)))))

(assert (=> d!1515397 (noDuplicateKeys!2061 (Cons!52959 lt!1905155 lt!1905156))))

(assert (=> d!1515397 (= (addToMapMapFromBucket!1491 (Cons!52959 lt!1905155 lt!1905156) lt!1905142) lt!1905591)))

(declare-fun b!4743075 () Bool)

(declare-fun e!2958602 () Bool)

(assert (=> b!4743075 (= e!2958602 (forall!11690 (toList!6012 lt!1905142) lambda!219540))))

(declare-fun call!331934 () Bool)

(declare-fun bm!331929 () Bool)

(assert (=> bm!331929 (= call!331934 (forall!11690 (ite c!810197 (toList!6012 lt!1905142) (t!360383 (Cons!52959 lt!1905155 lt!1905156))) (ite c!810197 lambda!219538 lambda!219540)))))

(declare-fun b!4743076 () Bool)

(assert (=> b!4743076 (= e!2958603 (invariantList!1546 (toList!6012 lt!1905591)))))

(declare-fun call!331933 () Bool)

(declare-fun bm!331930 () Bool)

(assert (=> bm!331930 (= call!331933 (forall!11690 (ite c!810197 (toList!6012 lt!1905142) (Cons!52959 lt!1905155 lt!1905156)) (ite c!810197 lambda!219538 lambda!219540)))))

(assert (=> b!4743077 (= e!2958604 lt!1905142)))

(declare-fun lt!1905599 () Unit!133727)

(assert (=> b!4743077 (= lt!1905599 call!331935)))

(assert (=> b!4743077 call!331934))

(declare-fun lt!1905594 () Unit!133727)

(assert (=> b!4743077 (= lt!1905594 lt!1905599)))

(assert (=> b!4743077 call!331933))

(declare-fun lt!1905596 () Unit!133727)

(declare-fun Unit!133791 () Unit!133727)

(assert (=> b!4743077 (= lt!1905596 Unit!133791)))

(assert (=> b!4743078 (= e!2958604 lt!1905593)))

(declare-fun lt!1905598 () ListMap!5375)

(assert (=> b!4743078 (= lt!1905598 (+!2309 lt!1905142 (h!59342 (Cons!52959 lt!1905155 lt!1905156))))))

(assert (=> b!4743078 (= lt!1905593 (addToMapMapFromBucket!1491 (t!360383 (Cons!52959 lt!1905155 lt!1905156)) (+!2309 lt!1905142 (h!59342 (Cons!52959 lt!1905155 lt!1905156)))))))

(declare-fun lt!1905602 () Unit!133727)

(assert (=> b!4743078 (= lt!1905602 call!331935)))

(assert (=> b!4743078 (forall!11690 (toList!6012 lt!1905142) lambda!219539)))

(declare-fun lt!1905587 () Unit!133727)

(assert (=> b!4743078 (= lt!1905587 lt!1905602)))

(assert (=> b!4743078 (forall!11690 (toList!6012 lt!1905598) lambda!219540)))

(declare-fun lt!1905583 () Unit!133727)

(declare-fun Unit!133792 () Unit!133727)

(assert (=> b!4743078 (= lt!1905583 Unit!133792)))

(assert (=> b!4743078 call!331934))

(declare-fun lt!1905588 () Unit!133727)

(declare-fun Unit!133793 () Unit!133727)

(assert (=> b!4743078 (= lt!1905588 Unit!133793)))

(declare-fun lt!1905586 () Unit!133727)

(declare-fun Unit!133794 () Unit!133727)

(assert (=> b!4743078 (= lt!1905586 Unit!133794)))

(declare-fun lt!1905595 () Unit!133727)

(assert (=> b!4743078 (= lt!1905595 (forallContained!3730 (toList!6012 lt!1905598) lambda!219540 (h!59342 (Cons!52959 lt!1905155 lt!1905156))))))

(assert (=> b!4743078 (contains!16371 lt!1905598 (_1!30613 (h!59342 (Cons!52959 lt!1905155 lt!1905156))))))

(declare-fun lt!1905601 () Unit!133727)

(declare-fun Unit!133795 () Unit!133727)

(assert (=> b!4743078 (= lt!1905601 Unit!133795)))

(assert (=> b!4743078 (contains!16371 lt!1905593 (_1!30613 (h!59342 (Cons!52959 lt!1905155 lt!1905156))))))

(declare-fun lt!1905597 () Unit!133727)

(declare-fun Unit!133796 () Unit!133727)

(assert (=> b!4743078 (= lt!1905597 Unit!133796)))

(assert (=> b!4743078 call!331933))

(declare-fun lt!1905584 () Unit!133727)

(declare-fun Unit!133797 () Unit!133727)

(assert (=> b!4743078 (= lt!1905584 Unit!133797)))

(assert (=> b!4743078 (forall!11690 (toList!6012 lt!1905598) lambda!219540)))

(declare-fun lt!1905603 () Unit!133727)

(declare-fun Unit!133798 () Unit!133727)

(assert (=> b!4743078 (= lt!1905603 Unit!133798)))

(declare-fun lt!1905592 () Unit!133727)

(declare-fun Unit!133799 () Unit!133727)

(assert (=> b!4743078 (= lt!1905592 Unit!133799)))

(declare-fun lt!1905589 () Unit!133727)

(assert (=> b!4743078 (= lt!1905589 (addForallContainsKeyThenBeforeAdding!830 lt!1905142 lt!1905593 (_1!30613 (h!59342 (Cons!52959 lt!1905155 lt!1905156))) (_2!30613 (h!59342 (Cons!52959 lt!1905155 lt!1905156)))))))

(assert (=> b!4743078 (forall!11690 (toList!6012 lt!1905142) lambda!219540)))

(declare-fun lt!1905600 () Unit!133727)

(assert (=> b!4743078 (= lt!1905600 lt!1905589)))

(assert (=> b!4743078 (forall!11690 (toList!6012 lt!1905142) lambda!219540)))

(declare-fun lt!1905585 () Unit!133727)

(declare-fun Unit!133800 () Unit!133727)

(assert (=> b!4743078 (= lt!1905585 Unit!133800)))

(declare-fun res!2009790 () Bool)

(assert (=> b!4743078 (= res!2009790 (forall!11690 (Cons!52959 lt!1905155 lt!1905156) lambda!219540))))

(assert (=> b!4743078 (=> (not res!2009790) (not e!2958602))))

(assert (=> b!4743078 e!2958602))

(declare-fun lt!1905590 () Unit!133727)

(declare-fun Unit!133801 () Unit!133727)

(assert (=> b!4743078 (= lt!1905590 Unit!133801)))

(declare-fun b!4743079 () Bool)

(declare-fun res!2009788 () Bool)

(assert (=> b!4743079 (=> (not res!2009788) (not e!2958603))))

(assert (=> b!4743079 (= res!2009788 (forall!11690 (toList!6012 lt!1905142) lambda!219541))))

(assert (= (and d!1515397 c!810197) b!4743077))

(assert (= (and d!1515397 (not c!810197)) b!4743078))

(assert (= (and b!4743078 res!2009790) b!4743075))

(assert (= (or b!4743077 b!4743078) bm!331928))

(assert (= (or b!4743077 b!4743078) bm!331930))

(assert (= (or b!4743077 b!4743078) bm!331929))

(assert (= (and d!1515397 res!2009789) b!4743079))

(assert (= (and b!4743079 res!2009788) b!4743076))

(declare-fun m!5697481 () Bool)

(assert (=> b!4743078 m!5697481))

(declare-fun m!5697483 () Bool)

(assert (=> b!4743078 m!5697483))

(declare-fun m!5697485 () Bool)

(assert (=> b!4743078 m!5697485))

(assert (=> b!4743078 m!5697481))

(declare-fun m!5697487 () Bool)

(assert (=> b!4743078 m!5697487))

(declare-fun m!5697489 () Bool)

(assert (=> b!4743078 m!5697489))

(declare-fun m!5697491 () Bool)

(assert (=> b!4743078 m!5697491))

(assert (=> b!4743078 m!5697489))

(declare-fun m!5697493 () Bool)

(assert (=> b!4743078 m!5697493))

(declare-fun m!5697495 () Bool)

(assert (=> b!4743078 m!5697495))

(declare-fun m!5697497 () Bool)

(assert (=> b!4743078 m!5697497))

(assert (=> b!4743078 m!5697495))

(declare-fun m!5697499 () Bool)

(assert (=> b!4743078 m!5697499))

(declare-fun m!5697501 () Bool)

(assert (=> b!4743079 m!5697501))

(declare-fun m!5697503 () Bool)

(assert (=> d!1515397 m!5697503))

(declare-fun m!5697505 () Bool)

(assert (=> d!1515397 m!5697505))

(declare-fun m!5697507 () Bool)

(assert (=> bm!331930 m!5697507))

(assert (=> bm!331928 m!5697083))

(declare-fun m!5697509 () Bool)

(assert (=> b!4743076 m!5697509))

(assert (=> b!4743075 m!5697481))

(declare-fun m!5697511 () Bool)

(assert (=> bm!331929 m!5697511))

(assert (=> b!4742696 d!1515397))

(declare-fun b!4743080 () Bool)

(declare-fun e!2958608 () Unit!133727)

(declare-fun lt!1905606 () Unit!133727)

(assert (=> b!4743080 (= e!2958608 lt!1905606)))

(declare-fun lt!1905608 () Unit!133727)

(assert (=> b!4743080 (= lt!1905608 (lemmaContainsKeyImpliesGetValueByKeyDefined!1914 (toList!6012 (extractMap!2087 lt!1905148)) key!4653))))

(assert (=> b!4743080 (isDefined!9721 (getValueByKey!2023 (toList!6012 (extractMap!2087 lt!1905148)) key!4653))))

(declare-fun lt!1905609 () Unit!133727)

(assert (=> b!4743080 (= lt!1905609 lt!1905608)))

(assert (=> b!4743080 (= lt!1905606 (lemmaInListThenGetKeysListContains!980 (toList!6012 (extractMap!2087 lt!1905148)) key!4653))))

(declare-fun call!331936 () Bool)

(assert (=> b!4743080 call!331936))

(declare-fun bm!331931 () Bool)

(declare-fun e!2958607 () List!53087)

(assert (=> bm!331931 (= call!331936 (contains!16378 e!2958607 key!4653))))

(declare-fun c!810199 () Bool)

(declare-fun c!810200 () Bool)

(assert (=> bm!331931 (= c!810199 c!810200)))

(declare-fun b!4743081 () Bool)

(declare-fun e!2958606 () Unit!133727)

(declare-fun Unit!133802 () Unit!133727)

(assert (=> b!4743081 (= e!2958606 Unit!133802)))

(declare-fun d!1515399 () Bool)

(declare-fun e!2958609 () Bool)

(assert (=> d!1515399 e!2958609))

(declare-fun res!2009792 () Bool)

(assert (=> d!1515399 (=> res!2009792 e!2958609)))

(declare-fun e!2958605 () Bool)

(assert (=> d!1515399 (= res!2009792 e!2958605)))

(declare-fun res!2009793 () Bool)

(assert (=> d!1515399 (=> (not res!2009793) (not e!2958605))))

(declare-fun lt!1905605 () Bool)

(assert (=> d!1515399 (= res!2009793 (not lt!1905605))))

(declare-fun lt!1905611 () Bool)

(assert (=> d!1515399 (= lt!1905605 lt!1905611)))

(declare-fun lt!1905604 () Unit!133727)

(assert (=> d!1515399 (= lt!1905604 e!2958608)))

(assert (=> d!1515399 (= c!810200 lt!1905611)))

(assert (=> d!1515399 (= lt!1905611 (containsKey!3481 (toList!6012 (extractMap!2087 lt!1905148)) key!4653))))

(assert (=> d!1515399 (= (contains!16371 (extractMap!2087 lt!1905148) key!4653) lt!1905605)))

(declare-fun b!4743082 () Bool)

(assert (=> b!4743082 (= e!2958607 (getKeysList!985 (toList!6012 (extractMap!2087 lt!1905148))))))

(declare-fun b!4743083 () Bool)

(assert (=> b!4743083 (= e!2958608 e!2958606)))

(declare-fun c!810198 () Bool)

(assert (=> b!4743083 (= c!810198 call!331936)))

(declare-fun b!4743084 () Bool)

(declare-fun e!2958610 () Bool)

(assert (=> b!4743084 (= e!2958610 (contains!16378 (keys!19058 (extractMap!2087 lt!1905148)) key!4653))))

(declare-fun b!4743085 () Bool)

(assert (=> b!4743085 (= e!2958607 (keys!19058 (extractMap!2087 lt!1905148)))))

(declare-fun b!4743086 () Bool)

(assert (=> b!4743086 (= e!2958609 e!2958610)))

(declare-fun res!2009791 () Bool)

(assert (=> b!4743086 (=> (not res!2009791) (not e!2958610))))

(assert (=> b!4743086 (= res!2009791 (isDefined!9721 (getValueByKey!2023 (toList!6012 (extractMap!2087 lt!1905148)) key!4653)))))

(declare-fun b!4743087 () Bool)

(assert (=> b!4743087 (= e!2958605 (not (contains!16378 (keys!19058 (extractMap!2087 lt!1905148)) key!4653)))))

(declare-fun b!4743088 () Bool)

(assert (=> b!4743088 false))

(declare-fun lt!1905610 () Unit!133727)

(declare-fun lt!1905607 () Unit!133727)

(assert (=> b!4743088 (= lt!1905610 lt!1905607)))

(assert (=> b!4743088 (containsKey!3481 (toList!6012 (extractMap!2087 lt!1905148)) key!4653)))

(assert (=> b!4743088 (= lt!1905607 (lemmaInGetKeysListThenContainsKey!984 (toList!6012 (extractMap!2087 lt!1905148)) key!4653))))

(declare-fun Unit!133804 () Unit!133727)

(assert (=> b!4743088 (= e!2958606 Unit!133804)))

(assert (= (and d!1515399 c!810200) b!4743080))

(assert (= (and d!1515399 (not c!810200)) b!4743083))

(assert (= (and b!4743083 c!810198) b!4743088))

(assert (= (and b!4743083 (not c!810198)) b!4743081))

(assert (= (or b!4743080 b!4743083) bm!331931))

(assert (= (and bm!331931 c!810199) b!4743082))

(assert (= (and bm!331931 (not c!810199)) b!4743085))

(assert (= (and d!1515399 res!2009793) b!4743087))

(assert (= (and d!1515399 (not res!2009792)) b!4743086))

(assert (= (and b!4743086 res!2009791) b!4743084))

(assert (=> b!4743087 m!5696821))

(declare-fun m!5697513 () Bool)

(assert (=> b!4743087 m!5697513))

(assert (=> b!4743087 m!5697513))

(declare-fun m!5697515 () Bool)

(assert (=> b!4743087 m!5697515))

(declare-fun m!5697517 () Bool)

(assert (=> b!4743080 m!5697517))

(declare-fun m!5697519 () Bool)

(assert (=> b!4743080 m!5697519))

(assert (=> b!4743080 m!5697519))

(declare-fun m!5697521 () Bool)

(assert (=> b!4743080 m!5697521))

(declare-fun m!5697523 () Bool)

(assert (=> b!4743080 m!5697523))

(assert (=> b!4743084 m!5696821))

(assert (=> b!4743084 m!5697513))

(assert (=> b!4743084 m!5697513))

(assert (=> b!4743084 m!5697515))

(declare-fun m!5697525 () Bool)

(assert (=> b!4743088 m!5697525))

(declare-fun m!5697527 () Bool)

(assert (=> b!4743088 m!5697527))

(declare-fun m!5697529 () Bool)

(assert (=> bm!331931 m!5697529))

(declare-fun m!5697531 () Bool)

(assert (=> b!4743082 m!5697531))

(assert (=> b!4743085 m!5696821))

(assert (=> b!4743085 m!5697513))

(assert (=> b!4743086 m!5697519))

(assert (=> b!4743086 m!5697519))

(assert (=> b!4743086 m!5697521))

(assert (=> d!1515399 m!5697525))

(assert (=> b!4742696 d!1515399))

(declare-fun d!1515401 () Bool)

(assert (=> d!1515401 (= (eq!1158 lt!1905149 (+!2309 lt!1905160 (h!59342 oldBucket!34))) (= (content!9471 (toList!6012 lt!1905149)) (content!9471 (toList!6012 (+!2309 lt!1905160 (h!59342 oldBucket!34))))))))

(declare-fun bs!1135986 () Bool)

(assert (= bs!1135986 d!1515401))

(declare-fun m!5697533 () Bool)

(assert (=> bs!1135986 m!5697533))

(declare-fun m!5697535 () Bool)

(assert (=> bs!1135986 m!5697535))

(assert (=> b!4742696 d!1515401))

(declare-fun bs!1135987 () Bool)

(declare-fun d!1515403 () Bool)

(assert (= bs!1135987 (and d!1515403 d!1515371)))

(declare-fun lambda!219542 () Int)

(assert (=> bs!1135987 (not (= lambda!219542 lambda!219532))))

(declare-fun bs!1135988 () Bool)

(assert (= bs!1135988 (and d!1515403 d!1515359)))

(assert (=> bs!1135988 (not (= lambda!219542 lambda!219518))))

(declare-fun bs!1135989 () Bool)

(assert (= bs!1135989 (and d!1515403 d!1515363)))

(assert (=> bs!1135989 (not (= lambda!219542 lambda!219525))))

(declare-fun bs!1135990 () Bool)

(assert (= bs!1135990 (and d!1515403 start!483938)))

(assert (=> bs!1135990 (not (= lambda!219542 lambda!219415))))

(declare-fun bs!1135991 () Bool)

(assert (= bs!1135991 (and d!1515403 d!1515265)))

(assert (=> bs!1135991 (= lambda!219542 lambda!219428)))

(declare-fun bs!1135992 () Bool)

(assert (= bs!1135992 (and d!1515403 d!1515307)))

(assert (=> bs!1135992 (not (= lambda!219542 lambda!219471))))

(declare-fun bs!1135993 () Bool)

(assert (= bs!1135993 (and d!1515403 d!1515297)))

(assert (=> bs!1135993 (not (= lambda!219542 lambda!219467))))

(declare-fun bs!1135994 () Bool)

(assert (= bs!1135994 (and d!1515403 d!1515335)))

(assert (=> bs!1135994 (not (= lambda!219542 lambda!219482))))

(declare-fun bs!1135995 () Bool)

(assert (= bs!1135995 (and d!1515403 d!1515395)))

(assert (=> bs!1135995 (not (= lambda!219542 lambda!219537))))

(declare-fun bs!1135996 () Bool)

(assert (= bs!1135996 (and d!1515403 d!1515315)))

(assert (=> bs!1135996 (not (= lambda!219542 lambda!219481))))

(assert (=> d!1515403 true))

(assert (=> d!1515403 (= (allKeysSameHashInMap!1975 lt!1905150 hashF!1323) (forall!11688 (toList!6011 lt!1905150) lambda!219542))))

(declare-fun bs!1135997 () Bool)

(assert (= bs!1135997 d!1515403))

(declare-fun m!5697537 () Bool)

(assert (=> bs!1135997 m!5697537))

(assert (=> b!4742695 d!1515403))

(declare-fun d!1515405 () Bool)

(assert (=> d!1515405 (= (eq!1158 lt!1905149 (+!2309 lt!1905160 lt!1905154)) (= (content!9471 (toList!6012 lt!1905149)) (content!9471 (toList!6012 (+!2309 lt!1905160 lt!1905154)))))))

(declare-fun bs!1135998 () Bool)

(assert (= bs!1135998 d!1515405))

(assert (=> bs!1135998 m!5697533))

(declare-fun m!5697539 () Bool)

(assert (=> bs!1135998 m!5697539))

(assert (=> b!4742684 d!1515405))

(declare-fun d!1515407 () Bool)

(declare-fun e!2958611 () Bool)

(assert (=> d!1515407 e!2958611))

(declare-fun res!2009794 () Bool)

(assert (=> d!1515407 (=> (not res!2009794) (not e!2958611))))

(declare-fun lt!1905614 () ListMap!5375)

(assert (=> d!1515407 (= res!2009794 (contains!16371 lt!1905614 (_1!30613 lt!1905154)))))

(declare-fun lt!1905615 () List!53083)

(assert (=> d!1515407 (= lt!1905614 (ListMap!5376 lt!1905615))))

(declare-fun lt!1905612 () Unit!133727)

(declare-fun lt!1905613 () Unit!133727)

(assert (=> d!1515407 (= lt!1905612 lt!1905613)))

(assert (=> d!1515407 (= (getValueByKey!2023 lt!1905615 (_1!30613 lt!1905154)) (Some!12466 (_2!30613 lt!1905154)))))

(assert (=> d!1515407 (= lt!1905613 (lemmaContainsTupThenGetReturnValue!1113 lt!1905615 (_1!30613 lt!1905154) (_2!30613 lt!1905154)))))

(assert (=> d!1515407 (= lt!1905615 (insertNoDuplicatedKeys!621 (toList!6012 lt!1905160) (_1!30613 lt!1905154) (_2!30613 lt!1905154)))))

(assert (=> d!1515407 (= (+!2309 lt!1905160 lt!1905154) lt!1905614)))

(declare-fun b!4743089 () Bool)

(declare-fun res!2009795 () Bool)

(assert (=> b!4743089 (=> (not res!2009795) (not e!2958611))))

(assert (=> b!4743089 (= res!2009795 (= (getValueByKey!2023 (toList!6012 lt!1905614) (_1!30613 lt!1905154)) (Some!12466 (_2!30613 lt!1905154))))))

(declare-fun b!4743090 () Bool)

(assert (=> b!4743090 (= e!2958611 (contains!16377 (toList!6012 lt!1905614) lt!1905154))))

(assert (= (and d!1515407 res!2009794) b!4743089))

(assert (= (and b!4743089 res!2009795) b!4743090))

(declare-fun m!5697541 () Bool)

(assert (=> d!1515407 m!5697541))

(declare-fun m!5697543 () Bool)

(assert (=> d!1515407 m!5697543))

(declare-fun m!5697545 () Bool)

(assert (=> d!1515407 m!5697545))

(declare-fun m!5697547 () Bool)

(assert (=> d!1515407 m!5697547))

(declare-fun m!5697549 () Bool)

(assert (=> b!4743089 m!5697549))

(declare-fun m!5697551 () Bool)

(assert (=> b!4743090 m!5697551))

(assert (=> b!4742684 d!1515407))

(declare-fun bs!1135999 () Bool)

(declare-fun d!1515409 () Bool)

(assert (= bs!1135999 (and d!1515409 d!1515347)))

(declare-fun lambda!219543 () Int)

(assert (=> bs!1135999 (= lambda!219543 lambda!219483)))

(declare-fun bs!1136000 () Bool)

(assert (= bs!1136000 (and d!1515409 d!1515397)))

(assert (=> bs!1136000 (not (= lambda!219543 lambda!219541))))

(declare-fun bs!1136001 () Bool)

(assert (= bs!1136001 (and d!1515409 b!4742887)))

(assert (=> bs!1136001 (not (= lambda!219543 lambda!219462))))

(declare-fun bs!1136002 () Bool)

(assert (= bs!1136002 (and d!1515409 d!1515303)))

(assert (=> bs!1136002 (= lambda!219543 lambda!219468)))

(declare-fun bs!1136003 () Bool)

(assert (= bs!1136003 (and d!1515409 d!1515355)))

(assert (=> bs!1136003 (not (= lambda!219543 lambda!219513))))

(declare-fun bs!1136004 () Bool)

(assert (= bs!1136004 (and d!1515409 b!4743032)))

(assert (=> bs!1136004 (not (= lambda!219543 lambda!219503))))

(declare-fun bs!1136005 () Bool)

(assert (= bs!1136005 (and d!1515409 b!4743077)))

(assert (=> bs!1136005 (not (= lambda!219543 lambda!219538))))

(assert (=> bs!1136001 (not (= lambda!219543 lambda!219463))))

(declare-fun bs!1136006 () Bool)

(assert (= bs!1136006 (and d!1515409 b!4743016)))

(assert (=> bs!1136006 (not (= lambda!219543 lambda!219484))))

(declare-fun bs!1136007 () Bool)

(assert (= bs!1136007 (and d!1515409 b!4743017)))

(assert (=> bs!1136007 (not (= lambda!219543 lambda!219485))))

(declare-fun bs!1136008 () Bool)

(assert (= bs!1136008 (and d!1515409 d!1515267)))

(assert (=> bs!1136008 (not (= lambda!219543 lambda!219464))))

(declare-fun bs!1136009 () Bool)

(assert (= bs!1136009 (and d!1515409 b!4743065)))

(assert (=> bs!1136009 (not (= lambda!219543 lambda!219533))))

(declare-fun bs!1136010 () Bool)

(assert (= bs!1136010 (and d!1515409 b!4743078)))

(assert (=> bs!1136010 (not (= lambda!219543 lambda!219540))))

(assert (=> bs!1136010 (not (= lambda!219543 lambda!219539))))

(declare-fun bs!1136011 () Bool)

(assert (= bs!1136011 (and d!1515409 b!4742886)))

(assert (=> bs!1136011 (not (= lambda!219543 lambda!219461))))

(declare-fun bs!1136012 () Bool)

(assert (= bs!1136012 (and d!1515409 b!4743066)))

(assert (=> bs!1136012 (not (= lambda!219543 lambda!219534))))

(declare-fun bs!1136013 () Bool)

(assert (= bs!1136013 (and d!1515409 d!1515385)))

(assert (=> bs!1136013 (not (= lambda!219543 lambda!219536))))

(assert (=> bs!1136012 (not (= lambda!219543 lambda!219535))))

(assert (=> bs!1136004 (not (= lambda!219543 lambda!219506))))

(declare-fun bs!1136014 () Bool)

(assert (= bs!1136014 (and d!1515409 b!4743031)))

(assert (=> bs!1136014 (not (= lambda!219543 lambda!219500))))

(declare-fun bs!1136015 () Bool)

(assert (= bs!1136015 (and d!1515409 d!1515349)))

(assert (=> bs!1136015 (not (= lambda!219543 lambda!219487))))

(assert (=> bs!1136007 (not (= lambda!219543 lambda!219486))))

(declare-fun bs!1136016 () Bool)

(assert (= bs!1136016 (and d!1515409 d!1515259)))

(assert (=> bs!1136016 (= lambda!219543 lambda!219425)))

(assert (=> d!1515409 true))

(assert (=> d!1515409 true))

(assert (=> d!1515409 (= (allKeysSameHash!1887 lt!1905145 hash!405 hashF!1323) (forall!11690 lt!1905145 lambda!219543))))

(declare-fun bs!1136017 () Bool)

(assert (= bs!1136017 d!1515409))

(declare-fun m!5697553 () Bool)

(assert (=> bs!1136017 m!5697553))

(assert (=> b!4742683 d!1515409))

(declare-fun d!1515411 () Bool)

(declare-fun hash!4468 (Hashable!6430 K!14303) (_ BitVec 64))

(assert (=> d!1515411 (= (hash!4465 hashF!1323 key!4653) (hash!4468 hashF!1323 key!4653))))

(declare-fun bs!1136018 () Bool)

(assert (= bs!1136018 d!1515411))

(declare-fun m!5697555 () Bool)

(assert (=> bs!1136018 m!5697555))

(assert (=> b!4742694 d!1515411))

(declare-fun b!4743094 () Bool)

(declare-fun e!2958613 () List!53083)

(assert (=> b!4743094 (= e!2958613 Nil!52959)))

(declare-fun b!4743092 () Bool)

(declare-fun e!2958612 () List!53083)

(assert (=> b!4743092 (= e!2958612 e!2958613)))

(declare-fun c!810202 () Bool)

(assert (=> b!4743092 (= c!810202 (is-Cons!52959 (t!360383 oldBucket!34)))))

(declare-fun b!4743091 () Bool)

(assert (=> b!4743091 (= e!2958612 (t!360383 (t!360383 oldBucket!34)))))

(declare-fun d!1515413 () Bool)

(declare-fun lt!1905616 () List!53083)

(assert (=> d!1515413 (not (containsKey!3478 lt!1905616 key!4653))))

(assert (=> d!1515413 (= lt!1905616 e!2958612)))

(declare-fun c!810201 () Bool)

(assert (=> d!1515413 (= c!810201 (and (is-Cons!52959 (t!360383 oldBucket!34)) (= (_1!30613 (h!59342 (t!360383 oldBucket!34))) key!4653)))))

(assert (=> d!1515413 (noDuplicateKeys!2061 (t!360383 oldBucket!34))))

(assert (=> d!1515413 (= (removePairForKey!1656 (t!360383 oldBucket!34) key!4653) lt!1905616)))

(declare-fun b!4743093 () Bool)

(assert (=> b!4743093 (= e!2958613 (Cons!52959 (h!59342 (t!360383 oldBucket!34)) (removePairForKey!1656 (t!360383 (t!360383 oldBucket!34)) key!4653)))))

(assert (= (and d!1515413 c!810201) b!4743091))

(assert (= (and d!1515413 (not c!810201)) b!4743092))

(assert (= (and b!4743092 c!810202) b!4743093))

(assert (= (and b!4743092 (not c!810202)) b!4743094))

(declare-fun m!5697557 () Bool)

(assert (=> d!1515413 m!5697557))

(assert (=> d!1515413 m!5696777))

(declare-fun m!5697559 () Bool)

(assert (=> b!4743093 m!5697559))

(assert (=> b!4742693 d!1515413))

(declare-fun b!4743099 () Bool)

(declare-fun e!2958616 () Bool)

(declare-fun tp!1349306 () Bool)

(declare-fun tp!1349307 () Bool)

(assert (=> b!4743099 (= e!2958616 (and tp!1349306 tp!1349307))))

(assert (=> b!4742703 (= tp!1349290 e!2958616)))

(assert (= (and b!4742703 (is-Cons!52960 (toList!6011 lm!2023))) b!4743099))

(declare-fun e!2958619 () Bool)

(declare-fun tp!1349310 () Bool)

(declare-fun b!4743104 () Bool)

(assert (=> b!4743104 (= e!2958619 (and tp_is_empty!31537 tp_is_empty!31539 tp!1349310))))

(assert (=> b!4742678 (= tp!1349292 e!2958619)))

(assert (= (and b!4742678 (is-Cons!52959 (t!360383 newBucket!218))) b!4743104))

(declare-fun tp!1349311 () Bool)

(declare-fun b!4743105 () Bool)

(declare-fun e!2958620 () Bool)

(assert (=> b!4743105 (= e!2958620 (and tp_is_empty!31537 tp_is_empty!31539 tp!1349311))))

(assert (=> b!4742704 (= tp!1349291 e!2958620)))

(assert (= (and b!4742704 (is-Cons!52959 (t!360383 oldBucket!34))) b!4743105))

(declare-fun b_lambda!182615 () Bool)

(assert (= b_lambda!182605 (or start!483938 b_lambda!182615)))

(declare-fun bs!1136019 () Bool)

(declare-fun d!1515415 () Bool)

(assert (= bs!1136019 (and d!1515415 start!483938)))

(assert (=> bs!1136019 (= (dynLambda!21876 lambda!219415 (h!59343 lt!1905148)) (noDuplicateKeys!2061 (_2!30614 (h!59343 lt!1905148))))))

(declare-fun m!5697561 () Bool)

(assert (=> bs!1136019 m!5697561))

(assert (=> b!4742814 d!1515415))

(declare-fun b_lambda!182617 () Bool)

(assert (= b_lambda!182609 (or start!483938 b_lambda!182617)))

(declare-fun bs!1136020 () Bool)

(declare-fun d!1515417 () Bool)

(assert (= bs!1136020 (and d!1515417 start!483938)))

(assert (=> bs!1136020 (= (dynLambda!21876 lambda!219415 lt!1905147) (noDuplicateKeys!2061 (_2!30614 lt!1905147)))))

(declare-fun m!5697563 () Bool)

(assert (=> bs!1136020 m!5697563))

(assert (=> d!1515305 d!1515417))

(declare-fun b_lambda!182619 () Bool)

(assert (= b_lambda!182611 (or start!483938 b_lambda!182619)))

(declare-fun bs!1136021 () Bool)

(declare-fun d!1515419 () Bool)

(assert (= bs!1136021 (and d!1515419 start!483938)))

(assert (=> bs!1136021 (= (dynLambda!21876 lambda!219415 (h!59343 (toList!6011 lm!2023))) (noDuplicateKeys!2061 (_2!30614 (h!59343 (toList!6011 lm!2023)))))))

(assert (=> bs!1136021 m!5697077))

(assert (=> b!4743012 d!1515419))

(push 1)

(assert (not b!4743099))

(assert (not b!4742947))

(assert (not b!4742802))

(assert (not b!4743079))

(assert (not b!4743086))

(assert (not b!4743080))

(assert (not b!4743088))

(assert (not d!1515315))

(assert (not b!4743085))

(assert (not d!1515405))

(assert (not d!1515381))

(assert (not b_lambda!182617))

(assert (not b!4742805))

(assert (not b!4742938))

(assert (not b!4742904))

(assert (not b!4742933))

(assert (not d!1515371))

(assert tp_is_empty!31537)

(assert (not b!4743029))

(assert (not b!4742974))

(assert (not b!4743093))

(assert (not b!4742934))

(assert (not b_lambda!182619))

(assert (not b!4743018))

(assert (not b!4742997))

(assert (not b!4743087))

(assert (not d!1515359))

(assert (not b!4743082))

(assert (not b!4742993))

(assert (not d!1515329))

(assert (not bm!331912))

(assert (not b!4742803))

(assert (not d!1515367))

(assert (not d!1515385))

(assert (not bm!331911))

(assert (not d!1515407))

(assert (not b!4743000))

(assert (not b!4743067))

(assert (not d!1515347))

(assert (not d!1515301))

(assert (not d!1515259))

(assert (not b!4743055))

(assert (not d!1515393))

(assert (not d!1515349))

(assert (not b!4743089))

(assert (not b!4743005))

(assert (not d!1515355))

(assert (not b!4743011))

(assert (not b!4742950))

(assert (not d!1515303))

(assert (not b_lambda!182615))

(assert (not d!1515319))

(assert (not b!4742948))

(assert (not b!4743013))

(assert (not d!1515361))

(assert (not b!4743073))

(assert (not b!4742999))

(assert (not b!4743036))

(assert (not d!1515399))

(assert (not bm!331926))

(assert (not b!4743032))

(assert (not d!1515335))

(assert (not d!1515317))

(assert (not b!4742887))

(assert (not d!1515397))

(assert (not b!4742935))

(assert (not b!4743033))

(assert (not d!1515409))

(assert (not b!4743028))

(assert (not d!1515345))

(assert (not b!4743056))

(assert (not b!4743051))

(assert (not b!4743076))

(assert (not b!4743064))

(assert (not bs!1136019))

(assert (not d!1515309))

(assert (not b!4743063))

(assert (not bm!331909))

(assert (not bm!331927))

(assert (not b!4743105))

(assert (not d!1515357))

(assert (not b!4742885))

(assert (not d!1515327))

(assert (not bm!331904))

(assert (not b!4743015))

(assert (not b!4743017))

(assert (not d!1515411))

(assert (not d!1515403))

(assert (not bm!331931))

(assert (not bm!331905))

(assert (not d!1515353))

(assert (not b!4742965))

(assert (not b!4743104))

(assert (not b!4742972))

(assert (not bm!331930))

(assert (not d!1515249))

(assert (not b!4743010))

(assert (not bm!331915))

(assert (not b!4742804))

(assert (not b!4742908))

(assert tp_is_empty!31539)

(assert (not b!4743014))

(assert (not b!4743004))

(assert (not bm!331914))

(assert (not d!1515351))

(assert (not bm!331928))

(assert (not bs!1136021))

(assert (not bm!331929))

(assert (not b!4742888))

(assert (not b!4743002))

(assert (not b!4742949))

(assert (not b!4742796))

(assert (not b!4743040))

(assert (not d!1515413))

(assert (not b!4743001))

(assert (not b!4743084))

(assert (not d!1515297))

(assert (not b!4743078))

(assert (not bm!331925))

(assert (not d!1515311))

(assert (not d!1515333))

(assert (not b!4742956))

(assert (not d!1515339))

(assert (not b!4743008))

(assert (not d!1515265))

(assert (not bm!331913))

(assert (not d!1515321))

(assert (not b!4743066))

(assert (not b!4742884))

(assert (not b!4742931))

(assert (not b!4742998))

(assert (not b!4742963))

(assert (not b!4743027))

(assert (not b!4743030))

(assert (not d!1515307))

(assert (not d!1515363))

(assert (not d!1515395))

(assert (not bm!331903))

(assert (not d!1515305))

(assert (not b!4743075))

(assert (not bm!331910))

(assert (not b!4743037))

(assert (not bs!1136020))

(assert (not b!4742995))

(assert (not d!1515401))

(assert (not b!4743090))

(assert (not d!1515267))

(assert (not b!4742815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

