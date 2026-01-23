; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!464470 () Bool)

(assert start!464470)

(declare-fun b!4629533 () Bool)

(declare-fun e!2887931 () Bool)

(declare-fun e!2887937 () Bool)

(assert (=> b!4629533 (= e!2887931 e!2887937)))

(declare-fun res!1942069 () Bool)

(assert (=> b!4629533 (=> res!1942069 e!2887937)))

(declare-datatypes ((K!12958 0))(
  ( (K!12959 (val!18637 Int)) )
))
(declare-datatypes ((V!13204 0))(
  ( (V!13205 (val!18638 Int)) )
))
(declare-datatypes ((tuple2!52538 0))(
  ( (tuple2!52539 (_1!29563 K!12958) (_2!29563 V!13204)) )
))
(declare-datatypes ((List!51708 0))(
  ( (Nil!51584) (Cons!51584 (h!57650 tuple2!52538) (t!358756 List!51708)) )
))
(declare-datatypes ((ListMap!4315 0))(
  ( (ListMap!4316 (toList!5011 List!51708)) )
))
(declare-fun lt!1789132 () ListMap!4315)

(declare-fun lt!1789150 () ListMap!4315)

(assert (=> b!4629533 (= res!1942069 (not (= lt!1789132 lt!1789150)))))

(declare-fun lt!1789145 () ListMap!4315)

(declare-fun oldBucket!40 () List!51708)

(declare-fun +!1889 (ListMap!4315 tuple2!52538) ListMap!4315)

(assert (=> b!4629533 (= lt!1789150 (+!1889 lt!1789145 (h!57650 oldBucket!40)))))

(declare-fun lt!1789124 () ListMap!4315)

(declare-fun key!4968 () K!12958)

(declare-fun -!563 (ListMap!4315 K!12958) ListMap!4315)

(assert (=> b!4629533 (= lt!1789132 (-!563 lt!1789124 key!4968))))

(declare-fun lt!1789126 () ListMap!4315)

(assert (=> b!4629533 (= lt!1789124 (+!1889 lt!1789126 (h!57650 oldBucket!40)))))

(assert (=> b!4629533 (= (-!563 (+!1889 lt!1789126 (h!57650 oldBucket!40)) key!4968) (+!1889 lt!1789145 (h!57650 oldBucket!40)))))

(declare-datatypes ((Unit!113006 0))(
  ( (Unit!113007) )
))
(declare-fun lt!1789148 () Unit!113006)

(declare-fun addRemoveCommutativeForDiffKeys!18 (ListMap!4315 K!12958 V!13204 K!12958) Unit!113006)

(assert (=> b!4629533 (= lt!1789148 (addRemoveCommutativeForDiffKeys!18 lt!1789126 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40)) key!4968))))

(declare-fun lt!1789137 () ListMap!4315)

(declare-fun eq!838 (ListMap!4315 ListMap!4315) Bool)

(assert (=> b!4629533 (eq!838 lt!1789137 lt!1789145)))

(assert (=> b!4629533 (= lt!1789145 (-!563 lt!1789126 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1789153 () List!51708)

(declare-datatypes ((Hashable!5920 0))(
  ( (HashableExt!5919 (__x!31623 Int)) )
))
(declare-fun hashF!1389 () Hashable!5920)

(declare-fun lt!1789152 () Unit!113006)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!125 ((_ BitVec 64) List!51708 List!51708 K!12958 Hashable!5920) Unit!113006)

(assert (=> b!4629533 (= lt!1789152 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!125 hash!414 (t!358756 oldBucket!40) lt!1789153 key!4968 hashF!1389))))

(declare-fun b!4629534 () Bool)

(declare-fun e!2887927 () Bool)

(assert (=> b!4629534 (= e!2887937 e!2887927)))

(declare-fun res!1942070 () Bool)

(assert (=> b!4629534 (=> res!1942070 e!2887927)))

(declare-fun lt!1789129 () ListMap!4315)

(assert (=> b!4629534 (= res!1942070 (not (eq!838 lt!1789129 lt!1789150)))))

(assert (=> b!4629534 (eq!838 lt!1789132 lt!1789129)))

(declare-fun lt!1789134 () ListMap!4315)

(assert (=> b!4629534 (= lt!1789129 (-!563 lt!1789134 key!4968))))

(declare-fun lt!1789149 () Unit!113006)

(declare-fun lemmaRemovePreservesEq!19 (ListMap!4315 ListMap!4315 K!12958) Unit!113006)

(assert (=> b!4629534 (= lt!1789149 (lemmaRemovePreservesEq!19 lt!1789124 lt!1789134 key!4968))))

(declare-fun b!4629535 () Bool)

(declare-fun e!2887935 () Bool)

(declare-fun e!2887932 () Bool)

(assert (=> b!4629535 (= e!2887935 (not e!2887932))))

(declare-fun res!1942078 () Bool)

(assert (=> b!4629535 (=> res!1942078 e!2887932)))

(assert (=> b!4629535 (= res!1942078 (or (and (is-Cons!51584 oldBucket!40) (= (_1!29563 (h!57650 oldBucket!40)) key!4968)) (not (is-Cons!51584 oldBucket!40)) (= (_1!29563 (h!57650 oldBucket!40)) key!4968)))))

(declare-fun e!2887933 () Bool)

(assert (=> b!4629535 e!2887933))

(declare-fun res!1942080 () Bool)

(assert (=> b!4629535 (=> (not res!1942080) (not e!2887933))))

(declare-fun lt!1789147 () ListMap!4315)

(declare-fun addToMapMapFromBucket!984 (List!51708 ListMap!4315) ListMap!4315)

(assert (=> b!4629535 (= res!1942080 (= lt!1789134 (addToMapMapFromBucket!984 oldBucket!40 lt!1789147)))))

(declare-datatypes ((tuple2!52540 0))(
  ( (tuple2!52541 (_1!29564 (_ BitVec 64)) (_2!29564 List!51708)) )
))
(declare-datatypes ((List!51709 0))(
  ( (Nil!51585) (Cons!51585 (h!57651 tuple2!52540) (t!358757 List!51709)) )
))
(declare-fun extractMap!1579 (List!51709) ListMap!4315)

(assert (=> b!4629535 (= lt!1789147 (extractMap!1579 Nil!51585))))

(assert (=> b!4629535 true))

(declare-fun b!4629537 () Bool)

(declare-fun e!2887925 () Bool)

(declare-fun e!2887936 () Bool)

(assert (=> b!4629537 (= e!2887925 e!2887936)))

(declare-fun res!1942084 () Bool)

(assert (=> b!4629537 (=> res!1942084 e!2887936)))

(declare-fun lt!1789136 () List!51708)

(declare-fun removePairForKey!1146 (List!51708 K!12958) List!51708)

(assert (=> b!4629537 (= res!1942084 (not (= (removePairForKey!1146 lt!1789136 key!4968) lt!1789153)))))

(declare-fun newBucket!224 () List!51708)

(declare-fun tail!8158 (List!51708) List!51708)

(assert (=> b!4629537 (= lt!1789153 (tail!8158 newBucket!224))))

(assert (=> b!4629537 (= lt!1789136 (tail!8158 oldBucket!40))))

(declare-fun b!4629538 () Bool)

(declare-fun e!2887926 () Bool)

(assert (=> b!4629538 (= e!2887926 e!2887931)))

(declare-fun res!1942071 () Bool)

(assert (=> b!4629538 (=> res!1942071 e!2887931)))

(declare-fun lt!1789127 () ListMap!4315)

(declare-fun lt!1789125 () tuple2!52538)

(assert (=> b!4629538 (= res!1942071 (not (eq!838 lt!1789127 (+!1889 lt!1789137 lt!1789125))))))

(assert (=> b!4629538 (= lt!1789137 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585)))))

(assert (=> b!4629538 (= lt!1789127 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 newBucket!224) Nil!51585)))))

(declare-fun b!4629539 () Bool)

(assert (=> b!4629539 (= e!2887932 e!2887925)))

(declare-fun res!1942082 () Bool)

(assert (=> b!4629539 (=> res!1942082 e!2887925)))

(declare-fun containsKey!2495 (List!51708 K!12958) Bool)

(assert (=> b!4629539 (= res!1942082 (not (containsKey!2495 (t!358756 oldBucket!40) key!4968)))))

(assert (=> b!4629539 (containsKey!2495 oldBucket!40 key!4968)))

(declare-fun lt!1789140 () Unit!113006)

(declare-fun lemmaGetPairDefinedThenContainsKey!69 (List!51708 K!12958 Hashable!5920) Unit!113006)

(assert (=> b!4629539 (= lt!1789140 (lemmaGetPairDefinedThenContainsKey!69 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1789143 () List!51708)

(declare-datatypes ((Option!11637 0))(
  ( (None!11636) (Some!11636 (v!45794 tuple2!52538)) )
))
(declare-fun isDefined!8902 (Option!11637) Bool)

(declare-fun getPair!315 (List!51708 K!12958) Option!11637)

(assert (=> b!4629539 (isDefined!8902 (getPair!315 lt!1789143 key!4968))))

(declare-fun lt!1789128 () tuple2!52540)

(declare-fun lt!1789131 () Unit!113006)

(declare-fun lambda!193225 () Int)

(declare-fun lt!1789138 () List!51709)

(declare-fun forallContained!3083 (List!51709 Int tuple2!52540) Unit!113006)

(assert (=> b!4629539 (= lt!1789131 (forallContained!3083 lt!1789138 lambda!193225 lt!1789128))))

(declare-fun contains!14660 (List!51709 tuple2!52540) Bool)

(assert (=> b!4629539 (contains!14660 lt!1789138 lt!1789128)))

(declare-fun lt!1789146 () (_ BitVec 64))

(assert (=> b!4629539 (= lt!1789128 (tuple2!52541 lt!1789146 lt!1789143))))

(declare-fun lt!1789151 () Unit!113006)

(declare-datatypes ((ListLongMap!3601 0))(
  ( (ListLongMap!3602 (toList!5012 List!51709)) )
))
(declare-fun lt!1789133 () ListLongMap!3601)

(declare-fun lemmaGetValueImpliesTupleContained!120 (ListLongMap!3601 (_ BitVec 64) List!51708) Unit!113006)

(assert (=> b!4629539 (= lt!1789151 (lemmaGetValueImpliesTupleContained!120 lt!1789133 lt!1789146 lt!1789143))))

(declare-fun apply!12188 (ListLongMap!3601 (_ BitVec 64)) List!51708)

(assert (=> b!4629539 (= lt!1789143 (apply!12188 lt!1789133 lt!1789146))))

(declare-fun contains!14661 (ListLongMap!3601 (_ BitVec 64)) Bool)

(assert (=> b!4629539 (contains!14661 lt!1789133 lt!1789146)))

(declare-fun lt!1789141 () Unit!113006)

(declare-fun lemmaInGenMapThenLongMapContainsHash!521 (ListLongMap!3601 K!12958 Hashable!5920) Unit!113006)

(assert (=> b!4629539 (= lt!1789141 (lemmaInGenMapThenLongMapContainsHash!521 lt!1789133 key!4968 hashF!1389))))

(declare-fun lt!1789144 () Unit!113006)

(declare-fun lemmaInGenMapThenGetPairDefined!111 (ListLongMap!3601 K!12958 Hashable!5920) Unit!113006)

(assert (=> b!4629539 (= lt!1789144 (lemmaInGenMapThenGetPairDefined!111 lt!1789133 key!4968 hashF!1389))))

(assert (=> b!4629539 (= lt!1789133 (ListLongMap!3602 lt!1789138))))

(declare-fun tp_is_empty!29387 () Bool)

(declare-fun e!2887934 () Bool)

(declare-fun tp!1342272 () Bool)

(declare-fun tp_is_empty!29385 () Bool)

(declare-fun b!4629540 () Bool)

(assert (=> b!4629540 (= e!2887934 (and tp_is_empty!29385 tp_is_empty!29387 tp!1342272))))

(declare-fun b!4629541 () Bool)

(declare-fun e!2887928 () Bool)

(assert (=> b!4629541 (= e!2887928 e!2887935)))

(declare-fun res!1942079 () Bool)

(assert (=> b!4629541 (=> (not res!1942079) (not e!2887935))))

(assert (=> b!4629541 (= res!1942079 (= lt!1789146 hash!414))))

(declare-fun hash!3547 (Hashable!5920 K!12958) (_ BitVec 64))

(assert (=> b!4629541 (= lt!1789146 (hash!3547 hashF!1389 key!4968))))

(declare-fun b!4629542 () Bool)

(declare-fun tp!1342273 () Bool)

(declare-fun e!2887930 () Bool)

(assert (=> b!4629542 (= e!2887930 (and tp_is_empty!29385 tp_is_empty!29387 tp!1342273))))

(declare-fun b!4629543 () Bool)

(declare-fun res!1942076 () Bool)

(declare-fun e!2887929 () Bool)

(assert (=> b!4629543 (=> (not res!1942076) (not e!2887929))))

(assert (=> b!4629543 (= res!1942076 (= (removePairForKey!1146 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4629544 () Bool)

(assert (=> b!4629544 (= e!2887929 e!2887928)))

(declare-fun res!1942077 () Bool)

(assert (=> b!4629544 (=> (not res!1942077) (not e!2887928))))

(declare-fun contains!14662 (ListMap!4315 K!12958) Bool)

(assert (=> b!4629544 (= res!1942077 (contains!14662 lt!1789134 key!4968))))

(assert (=> b!4629544 (= lt!1789134 (extractMap!1579 lt!1789138))))

(assert (=> b!4629544 (= lt!1789138 (Cons!51585 (tuple2!52541 hash!414 oldBucket!40) Nil!51585))))

(declare-fun b!4629545 () Bool)

(declare-fun res!1942073 () Bool)

(assert (=> b!4629545 (=> (not res!1942073) (not e!2887929))))

(declare-fun allKeysSameHash!1377 (List!51708 (_ BitVec 64) Hashable!5920) Bool)

(assert (=> b!4629545 (= res!1942073 (allKeysSameHash!1377 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4629546 () Bool)

(assert (=> b!4629546 (= e!2887936 e!2887926)))

(declare-fun res!1942072 () Bool)

(assert (=> b!4629546 (=> res!1942072 e!2887926)))

(assert (=> b!4629546 (= res!1942072 (not (eq!838 lt!1789134 (+!1889 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)) (h!57650 oldBucket!40)))))))

(assert (=> b!4629546 (eq!838 (addToMapMapFromBucket!984 (Cons!51584 lt!1789125 lt!1789153) (ListMap!4316 Nil!51584)) (+!1889 (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789125))))

(declare-fun lt!1789130 () Unit!113006)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!89 (tuple2!52538 List!51708 ListMap!4315) Unit!113006)

(assert (=> b!4629546 (= lt!1789130 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!89 lt!1789125 lt!1789153 (ListMap!4316 Nil!51584)))))

(declare-fun head!9657 (List!51708) tuple2!52538)

(assert (=> b!4629546 (= lt!1789125 (head!9657 newBucket!224))))

(declare-fun lt!1789142 () tuple2!52538)

(assert (=> b!4629546 (eq!838 (addToMapMapFromBucket!984 (Cons!51584 lt!1789142 lt!1789136) (ListMap!4316 Nil!51584)) (+!1889 (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789142))))

(declare-fun lt!1789135 () Unit!113006)

(assert (=> b!4629546 (= lt!1789135 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!89 lt!1789142 lt!1789136 (ListMap!4316 Nil!51584)))))

(assert (=> b!4629546 (= lt!1789142 (head!9657 oldBucket!40))))

(assert (=> b!4629546 (contains!14662 lt!1789126 key!4968)))

(declare-fun lt!1789154 () List!51709)

(assert (=> b!4629546 (= lt!1789126 (extractMap!1579 lt!1789154))))

(declare-fun lt!1789139 () Unit!113006)

(declare-fun lemmaListContainsThenExtractedMapContains!341 (ListLongMap!3601 K!12958 Hashable!5920) Unit!113006)

(assert (=> b!4629546 (= lt!1789139 (lemmaListContainsThenExtractedMapContains!341 (ListLongMap!3602 lt!1789154) key!4968 hashF!1389))))

(assert (=> b!4629546 (= lt!1789154 (Cons!51585 (tuple2!52541 hash!414 (t!358756 oldBucket!40)) Nil!51585))))

(declare-fun b!4629547 () Bool)

(assert (=> b!4629547 (= e!2887927 (or (not (= lt!1789125 (h!57650 oldBucket!40))) (not (= newBucket!224 Nil!51584))))))

(declare-fun res!1942081 () Bool)

(assert (=> start!464470 (=> (not res!1942081) (not e!2887929))))

(declare-fun noDuplicateKeys!1523 (List!51708) Bool)

(assert (=> start!464470 (= res!1942081 (noDuplicateKeys!1523 oldBucket!40))))

(assert (=> start!464470 e!2887929))

(assert (=> start!464470 true))

(assert (=> start!464470 e!2887930))

(assert (=> start!464470 tp_is_empty!29385))

(assert (=> start!464470 e!2887934))

(declare-fun b!4629536 () Bool)

(declare-fun res!1942083 () Bool)

(assert (=> b!4629536 (=> (not res!1942083) (not e!2887929))))

(assert (=> b!4629536 (= res!1942083 (noDuplicateKeys!1523 newBucket!224))))

(declare-fun b!4629548 () Bool)

(assert (=> b!4629548 (= e!2887933 (= lt!1789147 (ListMap!4316 Nil!51584)))))

(declare-fun b!4629549 () Bool)

(declare-fun res!1942074 () Bool)

(assert (=> b!4629549 (=> (not res!1942074) (not e!2887935))))

(assert (=> b!4629549 (= res!1942074 (allKeysSameHash!1377 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4629550 () Bool)

(declare-fun res!1942075 () Bool)

(assert (=> b!4629550 (=> res!1942075 e!2887936)))

(assert (=> b!4629550 (= res!1942075 (not (= (removePairForKey!1146 (t!358756 oldBucket!40) key!4968) lt!1789153)))))

(assert (= (and start!464470 res!1942081) b!4629536))

(assert (= (and b!4629536 res!1942083) b!4629543))

(assert (= (and b!4629543 res!1942076) b!4629545))

(assert (= (and b!4629545 res!1942073) b!4629544))

(assert (= (and b!4629544 res!1942077) b!4629541))

(assert (= (and b!4629541 res!1942079) b!4629549))

(assert (= (and b!4629549 res!1942074) b!4629535))

(assert (= (and b!4629535 res!1942080) b!4629548))

(assert (= (and b!4629535 (not res!1942078)) b!4629539))

(assert (= (and b!4629539 (not res!1942082)) b!4629537))

(assert (= (and b!4629537 (not res!1942084)) b!4629550))

(assert (= (and b!4629550 (not res!1942075)) b!4629546))

(assert (= (and b!4629546 (not res!1942072)) b!4629538))

(assert (= (and b!4629538 (not res!1942071)) b!4629533))

(assert (= (and b!4629533 (not res!1942069)) b!4629534))

(assert (= (and b!4629534 (not res!1942070)) b!4629547))

(assert (= (and start!464470 (is-Cons!51584 oldBucket!40)) b!4629542))

(assert (= (and start!464470 (is-Cons!51584 newBucket!224)) b!4629540))

(declare-fun m!5476721 () Bool)

(assert (=> b!4629533 m!5476721))

(declare-fun m!5476723 () Bool)

(assert (=> b!4629533 m!5476723))

(declare-fun m!5476725 () Bool)

(assert (=> b!4629533 m!5476725))

(declare-fun m!5476727 () Bool)

(assert (=> b!4629533 m!5476727))

(declare-fun m!5476729 () Bool)

(assert (=> b!4629533 m!5476729))

(declare-fun m!5476731 () Bool)

(assert (=> b!4629533 m!5476731))

(declare-fun m!5476733 () Bool)

(assert (=> b!4629533 m!5476733))

(assert (=> b!4629533 m!5476727))

(declare-fun m!5476735 () Bool)

(assert (=> b!4629533 m!5476735))

(declare-fun m!5476737 () Bool)

(assert (=> b!4629535 m!5476737))

(declare-fun m!5476739 () Bool)

(assert (=> b!4629535 m!5476739))

(declare-fun m!5476741 () Bool)

(assert (=> b!4629534 m!5476741))

(declare-fun m!5476743 () Bool)

(assert (=> b!4629534 m!5476743))

(declare-fun m!5476745 () Bool)

(assert (=> b!4629534 m!5476745))

(declare-fun m!5476747 () Bool)

(assert (=> b!4629534 m!5476747))

(declare-fun m!5476749 () Bool)

(assert (=> b!4629539 m!5476749))

(declare-fun m!5476751 () Bool)

(assert (=> b!4629539 m!5476751))

(declare-fun m!5476753 () Bool)

(assert (=> b!4629539 m!5476753))

(declare-fun m!5476755 () Bool)

(assert (=> b!4629539 m!5476755))

(declare-fun m!5476757 () Bool)

(assert (=> b!4629539 m!5476757))

(declare-fun m!5476759 () Bool)

(assert (=> b!4629539 m!5476759))

(declare-fun m!5476761 () Bool)

(assert (=> b!4629539 m!5476761))

(declare-fun m!5476763 () Bool)

(assert (=> b!4629539 m!5476763))

(declare-fun m!5476765 () Bool)

(assert (=> b!4629539 m!5476765))

(assert (=> b!4629539 m!5476759))

(declare-fun m!5476767 () Bool)

(assert (=> b!4629539 m!5476767))

(declare-fun m!5476769 () Bool)

(assert (=> b!4629539 m!5476769))

(declare-fun m!5476771 () Bool)

(assert (=> b!4629539 m!5476771))

(declare-fun m!5476773 () Bool)

(assert (=> b!4629550 m!5476773))

(declare-fun m!5476775 () Bool)

(assert (=> b!4629536 m!5476775))

(declare-fun m!5476777 () Bool)

(assert (=> b!4629544 m!5476777))

(declare-fun m!5476779 () Bool)

(assert (=> b!4629544 m!5476779))

(declare-fun m!5476781 () Bool)

(assert (=> start!464470 m!5476781))

(declare-fun m!5476783 () Bool)

(assert (=> b!4629543 m!5476783))

(declare-fun m!5476785 () Bool)

(assert (=> b!4629537 m!5476785))

(declare-fun m!5476787 () Bool)

(assert (=> b!4629537 m!5476787))

(declare-fun m!5476789 () Bool)

(assert (=> b!4629537 m!5476789))

(declare-fun m!5476791 () Bool)

(assert (=> b!4629545 m!5476791))

(declare-fun m!5476793 () Bool)

(assert (=> b!4629549 m!5476793))

(declare-fun m!5476795 () Bool)

(assert (=> b!4629546 m!5476795))

(declare-fun m!5476797 () Bool)

(assert (=> b!4629546 m!5476797))

(declare-fun m!5476799 () Bool)

(assert (=> b!4629546 m!5476799))

(declare-fun m!5476801 () Bool)

(assert (=> b!4629546 m!5476801))

(declare-fun m!5476803 () Bool)

(assert (=> b!4629546 m!5476803))

(declare-fun m!5476805 () Bool)

(assert (=> b!4629546 m!5476805))

(declare-fun m!5476807 () Bool)

(assert (=> b!4629546 m!5476807))

(declare-fun m!5476809 () Bool)

(assert (=> b!4629546 m!5476809))

(declare-fun m!5476811 () Bool)

(assert (=> b!4629546 m!5476811))

(declare-fun m!5476813 () Bool)

(assert (=> b!4629546 m!5476813))

(declare-fun m!5476815 () Bool)

(assert (=> b!4629546 m!5476815))

(assert (=> b!4629546 m!5476807))

(assert (=> b!4629546 m!5476813))

(assert (=> b!4629546 m!5476809))

(declare-fun m!5476817 () Bool)

(assert (=> b!4629546 m!5476817))

(assert (=> b!4629546 m!5476805))

(assert (=> b!4629546 m!5476801))

(assert (=> b!4629546 m!5476795))

(declare-fun m!5476819 () Bool)

(assert (=> b!4629546 m!5476819))

(declare-fun m!5476821 () Bool)

(assert (=> b!4629546 m!5476821))

(declare-fun m!5476823 () Bool)

(assert (=> b!4629546 m!5476823))

(declare-fun m!5476825 () Bool)

(assert (=> b!4629546 m!5476825))

(declare-fun m!5476827 () Bool)

(assert (=> b!4629546 m!5476827))

(assert (=> b!4629546 m!5476797))

(declare-fun m!5476829 () Bool)

(assert (=> b!4629546 m!5476829))

(assert (=> b!4629546 m!5476827))

(declare-fun m!5476831 () Bool)

(assert (=> b!4629541 m!5476831))

(declare-fun m!5476833 () Bool)

(assert (=> b!4629538 m!5476833))

(assert (=> b!4629538 m!5476833))

(declare-fun m!5476835 () Bool)

(assert (=> b!4629538 m!5476835))

(declare-fun m!5476837 () Bool)

(assert (=> b!4629538 m!5476837))

(declare-fun m!5476839 () Bool)

(assert (=> b!4629538 m!5476839))

(push 1)

(assert tp_is_empty!29387)

(assert (not b!4629549))

(assert (not start!464470))

(assert (not b!4629538))

(assert (not b!4629544))

(assert (not b!4629539))

(assert tp_is_empty!29385)

(assert (not b!4629540))

(assert (not b!4629535))

(assert (not b!4629550))

(assert (not b!4629545))

(assert (not b!4629536))

(assert (not b!4629543))

(assert (not b!4629533))

(assert (not b!4629541))

(assert (not b!4629537))

(assert (not b!4629534))

(assert (not b!4629542))

(assert (not b!4629546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1458780 () Bool)

(declare-fun res!1942137 () Bool)

(declare-fun e!2887981 () Bool)

(assert (=> d!1458780 (=> res!1942137 e!2887981)))

(assert (=> d!1458780 (= res!1942137 (not (is-Cons!51584 oldBucket!40)))))

(assert (=> d!1458780 (= (noDuplicateKeys!1523 oldBucket!40) e!2887981)))

(declare-fun b!4629609 () Bool)

(declare-fun e!2887982 () Bool)

(assert (=> b!4629609 (= e!2887981 e!2887982)))

(declare-fun res!1942138 () Bool)

(assert (=> b!4629609 (=> (not res!1942138) (not e!2887982))))

(assert (=> b!4629609 (= res!1942138 (not (containsKey!2495 (t!358756 oldBucket!40) (_1!29563 (h!57650 oldBucket!40)))))))

(declare-fun b!4629610 () Bool)

(assert (=> b!4629610 (= e!2887982 (noDuplicateKeys!1523 (t!358756 oldBucket!40)))))

(assert (= (and d!1458780 (not res!1942137)) b!4629609))

(assert (= (and b!4629609 res!1942138) b!4629610))

(declare-fun m!5476961 () Bool)

(assert (=> b!4629609 m!5476961))

(declare-fun m!5476963 () Bool)

(assert (=> b!4629610 m!5476963))

(assert (=> start!464470 d!1458780))

(declare-fun d!1458782 () Bool)

(declare-fun res!1942139 () Bool)

(declare-fun e!2887983 () Bool)

(assert (=> d!1458782 (=> res!1942139 e!2887983)))

(assert (=> d!1458782 (= res!1942139 (not (is-Cons!51584 newBucket!224)))))

(assert (=> d!1458782 (= (noDuplicateKeys!1523 newBucket!224) e!2887983)))

(declare-fun b!4629611 () Bool)

(declare-fun e!2887984 () Bool)

(assert (=> b!4629611 (= e!2887983 e!2887984)))

(declare-fun res!1942140 () Bool)

(assert (=> b!4629611 (=> (not res!1942140) (not e!2887984))))

(assert (=> b!4629611 (= res!1942140 (not (containsKey!2495 (t!358756 newBucket!224) (_1!29563 (h!57650 newBucket!224)))))))

(declare-fun b!4629612 () Bool)

(assert (=> b!4629612 (= e!2887984 (noDuplicateKeys!1523 (t!358756 newBucket!224)))))

(assert (= (and d!1458782 (not res!1942139)) b!4629611))

(assert (= (and b!4629611 res!1942140) b!4629612))

(declare-fun m!5476965 () Bool)

(assert (=> b!4629611 m!5476965))

(declare-fun m!5476967 () Bool)

(assert (=> b!4629612 m!5476967))

(assert (=> b!4629536 d!1458782))

(declare-fun b!4629651 () Bool)

(assert (=> b!4629651 true))

(declare-fun bs!1026370 () Bool)

(declare-fun b!4629654 () Bool)

(assert (= bs!1026370 (and b!4629654 b!4629651)))

(declare-fun lambda!193258 () Int)

(declare-fun lambda!193257 () Int)

(assert (=> bs!1026370 (= lambda!193258 lambda!193257)))

(assert (=> b!4629654 true))

(declare-fun lt!1789319 () ListMap!4315)

(declare-fun lambda!193259 () Int)

(assert (=> bs!1026370 (= (= lt!1789319 lt!1789147) (= lambda!193259 lambda!193257))))

(assert (=> b!4629654 (= (= lt!1789319 lt!1789147) (= lambda!193259 lambda!193258))))

(assert (=> b!4629654 true))

(declare-fun bs!1026371 () Bool)

(declare-fun d!1458784 () Bool)

(assert (= bs!1026371 (and d!1458784 b!4629651)))

(declare-fun lt!1789321 () ListMap!4315)

(declare-fun lambda!193260 () Int)

(assert (=> bs!1026371 (= (= lt!1789321 lt!1789147) (= lambda!193260 lambda!193257))))

(declare-fun bs!1026372 () Bool)

(assert (= bs!1026372 (and d!1458784 b!4629654)))

(assert (=> bs!1026372 (= (= lt!1789321 lt!1789147) (= lambda!193260 lambda!193258))))

(assert (=> bs!1026372 (= (= lt!1789321 lt!1789319) (= lambda!193260 lambda!193259))))

(assert (=> d!1458784 true))

(declare-fun b!4629650 () Bool)

(declare-fun res!1942158 () Bool)

(declare-fun e!2888011 () Bool)

(assert (=> b!4629650 (=> (not res!1942158) (not e!2888011))))

(declare-fun forall!10853 (List!51708 Int) Bool)

(assert (=> b!4629650 (= res!1942158 (forall!10853 (toList!5011 lt!1789147) lambda!193260))))

(assert (=> d!1458784 e!2888011))

(declare-fun res!1942156 () Bool)

(assert (=> d!1458784 (=> (not res!1942156) (not e!2888011))))

(assert (=> d!1458784 (= res!1942156 (forall!10853 oldBucket!40 lambda!193260))))

(declare-fun e!2888009 () ListMap!4315)

(assert (=> d!1458784 (= lt!1789321 e!2888009)))

(declare-fun c!792450 () Bool)

(assert (=> d!1458784 (= c!792450 (is-Nil!51584 oldBucket!40))))

(assert (=> d!1458784 (noDuplicateKeys!1523 oldBucket!40)))

(assert (=> d!1458784 (= (addToMapMapFromBucket!984 oldBucket!40 lt!1789147) lt!1789321)))

(declare-fun lt!1789317 () ListMap!4315)

(declare-fun call!323013 () Bool)

(declare-fun bm!323006 () Bool)

(assert (=> bm!323006 (= call!323013 (forall!10853 (ite c!792450 (toList!5011 lt!1789147) (toList!5011 lt!1789317)) (ite c!792450 lambda!193257 lambda!193259)))))

(assert (=> b!4629651 (= e!2888009 lt!1789147)))

(declare-fun lt!1789326 () Unit!113006)

(declare-fun call!323011 () Unit!113006)

(assert (=> b!4629651 (= lt!1789326 call!323011)))

(assert (=> b!4629651 call!323013))

(declare-fun lt!1789324 () Unit!113006)

(assert (=> b!4629651 (= lt!1789324 lt!1789326)))

(declare-fun call!323012 () Bool)

(assert (=> b!4629651 call!323012))

(declare-fun lt!1789320 () Unit!113006)

(declare-fun Unit!113010 () Unit!113006)

(assert (=> b!4629651 (= lt!1789320 Unit!113010)))

(declare-fun bm!323007 () Bool)

(assert (=> bm!323007 (= call!323012 (forall!10853 (toList!5011 lt!1789147) (ite c!792450 lambda!193257 lambda!193259)))))

(declare-fun bm!323008 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!521 (ListMap!4315) Unit!113006)

(assert (=> bm!323008 (= call!323011 (lemmaContainsAllItsOwnKeys!521 lt!1789147))))

(declare-fun b!4629652 () Bool)

(declare-fun invariantList!1219 (List!51708) Bool)

(assert (=> b!4629652 (= e!2888011 (invariantList!1219 (toList!5011 lt!1789321)))))

(declare-fun b!4629653 () Bool)

(declare-fun e!2888010 () Bool)

(assert (=> b!4629653 (= e!2888010 call!323012)))

(assert (=> b!4629654 (= e!2888009 lt!1789319)))

(assert (=> b!4629654 (= lt!1789317 (+!1889 lt!1789147 (h!57650 oldBucket!40)))))

(assert (=> b!4629654 (= lt!1789319 (addToMapMapFromBucket!984 (t!358756 oldBucket!40) (+!1889 lt!1789147 (h!57650 oldBucket!40))))))

(declare-fun lt!1789331 () Unit!113006)

(assert (=> b!4629654 (= lt!1789331 call!323011)))

(assert (=> b!4629654 (forall!10853 (toList!5011 lt!1789147) lambda!193258)))

(declare-fun lt!1789328 () Unit!113006)

(assert (=> b!4629654 (= lt!1789328 lt!1789331)))

(assert (=> b!4629654 call!323013))

(declare-fun lt!1789314 () Unit!113006)

(declare-fun Unit!113011 () Unit!113006)

(assert (=> b!4629654 (= lt!1789314 Unit!113011)))

(assert (=> b!4629654 (forall!10853 (t!358756 oldBucket!40) lambda!193259)))

(declare-fun lt!1789316 () Unit!113006)

(declare-fun Unit!113012 () Unit!113006)

(assert (=> b!4629654 (= lt!1789316 Unit!113012)))

(declare-fun lt!1789318 () Unit!113006)

(declare-fun Unit!113013 () Unit!113006)

(assert (=> b!4629654 (= lt!1789318 Unit!113013)))

(declare-fun lt!1789323 () Unit!113006)

(declare-fun forallContained!3085 (List!51708 Int tuple2!52538) Unit!113006)

(assert (=> b!4629654 (= lt!1789323 (forallContained!3085 (toList!5011 lt!1789317) lambda!193259 (h!57650 oldBucket!40)))))

(assert (=> b!4629654 (contains!14662 lt!1789317 (_1!29563 (h!57650 oldBucket!40)))))

(declare-fun lt!1789315 () Unit!113006)

(declare-fun Unit!113014 () Unit!113006)

(assert (=> b!4629654 (= lt!1789315 Unit!113014)))

(assert (=> b!4629654 (contains!14662 lt!1789319 (_1!29563 (h!57650 oldBucket!40)))))

(declare-fun lt!1789330 () Unit!113006)

(declare-fun Unit!113015 () Unit!113006)

(assert (=> b!4629654 (= lt!1789330 Unit!113015)))

(assert (=> b!4629654 (forall!10853 oldBucket!40 lambda!193259)))

(declare-fun lt!1789334 () Unit!113006)

(declare-fun Unit!113016 () Unit!113006)

(assert (=> b!4629654 (= lt!1789334 Unit!113016)))

(assert (=> b!4629654 (forall!10853 (toList!5011 lt!1789317) lambda!193259)))

(declare-fun lt!1789329 () Unit!113006)

(declare-fun Unit!113017 () Unit!113006)

(assert (=> b!4629654 (= lt!1789329 Unit!113017)))

(declare-fun lt!1789327 () Unit!113006)

(declare-fun Unit!113018 () Unit!113006)

(assert (=> b!4629654 (= lt!1789327 Unit!113018)))

(declare-fun lt!1789333 () Unit!113006)

(declare-fun addForallContainsKeyThenBeforeAdding!520 (ListMap!4315 ListMap!4315 K!12958 V!13204) Unit!113006)

(assert (=> b!4629654 (= lt!1789333 (addForallContainsKeyThenBeforeAdding!520 lt!1789147 lt!1789319 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> b!4629654 (forall!10853 (toList!5011 lt!1789147) lambda!193259)))

(declare-fun lt!1789322 () Unit!113006)

(assert (=> b!4629654 (= lt!1789322 lt!1789333)))

(assert (=> b!4629654 (forall!10853 (toList!5011 lt!1789147) lambda!193259)))

(declare-fun lt!1789325 () Unit!113006)

(declare-fun Unit!113019 () Unit!113006)

(assert (=> b!4629654 (= lt!1789325 Unit!113019)))

(declare-fun res!1942157 () Bool)

(assert (=> b!4629654 (= res!1942157 (forall!10853 oldBucket!40 lambda!193259))))

(assert (=> b!4629654 (=> (not res!1942157) (not e!2888010))))

(assert (=> b!4629654 e!2888010))

(declare-fun lt!1789332 () Unit!113006)

(declare-fun Unit!113020 () Unit!113006)

(assert (=> b!4629654 (= lt!1789332 Unit!113020)))

(assert (= (and d!1458784 c!792450) b!4629651))

(assert (= (and d!1458784 (not c!792450)) b!4629654))

(assert (= (and b!4629654 res!1942157) b!4629653))

(assert (= (or b!4629651 b!4629654) bm!323008))

(assert (= (or b!4629651 b!4629653) bm!323007))

(assert (= (or b!4629651 b!4629654) bm!323006))

(assert (= (and d!1458784 res!1942156) b!4629650))

(assert (= (and b!4629650 res!1942158) b!4629652))

(declare-fun m!5476989 () Bool)

(assert (=> b!4629652 m!5476989))

(declare-fun m!5476991 () Bool)

(assert (=> b!4629650 m!5476991))

(declare-fun m!5476993 () Bool)

(assert (=> b!4629654 m!5476993))

(declare-fun m!5476995 () Bool)

(assert (=> b!4629654 m!5476995))

(declare-fun m!5476997 () Bool)

(assert (=> b!4629654 m!5476997))

(declare-fun m!5476999 () Bool)

(assert (=> b!4629654 m!5476999))

(declare-fun m!5477001 () Bool)

(assert (=> b!4629654 m!5477001))

(assert (=> b!4629654 m!5476993))

(declare-fun m!5477003 () Bool)

(assert (=> b!4629654 m!5477003))

(declare-fun m!5477005 () Bool)

(assert (=> b!4629654 m!5477005))

(declare-fun m!5477007 () Bool)

(assert (=> b!4629654 m!5477007))

(assert (=> b!4629654 m!5476999))

(assert (=> b!4629654 m!5477005))

(declare-fun m!5477009 () Bool)

(assert (=> b!4629654 m!5477009))

(declare-fun m!5477011 () Bool)

(assert (=> b!4629654 m!5477011))

(declare-fun m!5477013 () Bool)

(assert (=> b!4629654 m!5477013))

(declare-fun m!5477015 () Bool)

(assert (=> bm!323007 m!5477015))

(declare-fun m!5477017 () Bool)

(assert (=> d!1458784 m!5477017))

(assert (=> d!1458784 m!5476781))

(declare-fun m!5477019 () Bool)

(assert (=> bm!323006 m!5477019))

(declare-fun m!5477021 () Bool)

(assert (=> bm!323008 m!5477021))

(assert (=> b!4629535 d!1458784))

(declare-fun bs!1026375 () Bool)

(declare-fun d!1458790 () Bool)

(assert (= bs!1026375 (and d!1458790 b!4629539)))

(declare-fun lambda!193266 () Int)

(assert (=> bs!1026375 (= lambda!193266 lambda!193225)))

(declare-fun lt!1789340 () ListMap!4315)

(assert (=> d!1458790 (invariantList!1219 (toList!5011 lt!1789340))))

(declare-fun e!2888017 () ListMap!4315)

(assert (=> d!1458790 (= lt!1789340 e!2888017)))

(declare-fun c!792456 () Bool)

(assert (=> d!1458790 (= c!792456 (is-Cons!51585 Nil!51585))))

(declare-fun forall!10854 (List!51709 Int) Bool)

(assert (=> d!1458790 (forall!10854 Nil!51585 lambda!193266)))

(assert (=> d!1458790 (= (extractMap!1579 Nil!51585) lt!1789340)))

(declare-fun b!4629667 () Bool)

(assert (=> b!4629667 (= e!2888017 (addToMapMapFromBucket!984 (_2!29564 (h!57651 Nil!51585)) (extractMap!1579 (t!358757 Nil!51585))))))

(declare-fun b!4629668 () Bool)

(assert (=> b!4629668 (= e!2888017 (ListMap!4316 Nil!51584))))

(assert (= (and d!1458790 c!792456) b!4629667))

(assert (= (and d!1458790 (not c!792456)) b!4629668))

(declare-fun m!5477033 () Bool)

(assert (=> d!1458790 m!5477033))

(declare-fun m!5477035 () Bool)

(assert (=> d!1458790 m!5477035))

(declare-fun m!5477037 () Bool)

(assert (=> b!4629667 m!5477037))

(assert (=> b!4629667 m!5477037))

(declare-fun m!5477039 () Bool)

(assert (=> b!4629667 m!5477039))

(assert (=> b!4629535 d!1458790))

(declare-fun bs!1026376 () Bool)

(declare-fun b!4629670 () Bool)

(assert (= bs!1026376 (and b!4629670 b!4629651)))

(declare-fun lambda!193267 () Int)

(assert (=> bs!1026376 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193267 lambda!193257))))

(declare-fun bs!1026377 () Bool)

(assert (= bs!1026377 (and b!4629670 b!4629654)))

(assert (=> bs!1026377 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193267 lambda!193258))))

(assert (=> bs!1026377 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193267 lambda!193259))))

(declare-fun bs!1026378 () Bool)

(assert (= bs!1026378 (and b!4629670 d!1458784)))

(assert (=> bs!1026378 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193267 lambda!193260))))

(assert (=> b!4629670 true))

(declare-fun bs!1026380 () Bool)

(declare-fun b!4629673 () Bool)

(assert (= bs!1026380 (and b!4629673 b!4629654)))

(declare-fun lambda!193268 () Int)

(assert (=> bs!1026380 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193268 lambda!193259))))

(declare-fun bs!1026381 () Bool)

(assert (= bs!1026381 (and b!4629673 d!1458784)))

(assert (=> bs!1026381 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193268 lambda!193260))))

(declare-fun bs!1026382 () Bool)

(assert (= bs!1026382 (and b!4629673 b!4629670)))

(assert (=> bs!1026382 (= lambda!193268 lambda!193267)))

(assert (=> bs!1026380 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193268 lambda!193258))))

(declare-fun bs!1026383 () Bool)

(assert (= bs!1026383 (and b!4629673 b!4629651)))

(assert (=> bs!1026383 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193268 lambda!193257))))

(assert (=> b!4629673 true))

(declare-fun lambda!193269 () Int)

(declare-fun lt!1789346 () ListMap!4315)

(assert (=> bs!1026380 (= (= lt!1789346 lt!1789319) (= lambda!193269 lambda!193259))))

(assert (=> bs!1026381 (= (= lt!1789346 lt!1789321) (= lambda!193269 lambda!193260))))

(assert (=> bs!1026382 (= (= lt!1789346 (ListMap!4316 Nil!51584)) (= lambda!193269 lambda!193267))))

(assert (=> b!4629673 (= (= lt!1789346 (ListMap!4316 Nil!51584)) (= lambda!193269 lambda!193268))))

(assert (=> bs!1026380 (= (= lt!1789346 lt!1789147) (= lambda!193269 lambda!193258))))

(assert (=> bs!1026383 (= (= lt!1789346 lt!1789147) (= lambda!193269 lambda!193257))))

(assert (=> b!4629673 true))

(declare-fun bs!1026384 () Bool)

(declare-fun d!1458796 () Bool)

(assert (= bs!1026384 (and d!1458796 b!4629654)))

(declare-fun lambda!193270 () Int)

(declare-fun lt!1789348 () ListMap!4315)

(assert (=> bs!1026384 (= (= lt!1789348 lt!1789319) (= lambda!193270 lambda!193259))))

(declare-fun bs!1026385 () Bool)

(assert (= bs!1026385 (and d!1458796 d!1458784)))

(assert (=> bs!1026385 (= (= lt!1789348 lt!1789321) (= lambda!193270 lambda!193260))))

(declare-fun bs!1026386 () Bool)

(assert (= bs!1026386 (and d!1458796 b!4629670)))

(assert (=> bs!1026386 (= (= lt!1789348 (ListMap!4316 Nil!51584)) (= lambda!193270 lambda!193267))))

(declare-fun bs!1026387 () Bool)

(assert (= bs!1026387 (and d!1458796 b!4629673)))

(assert (=> bs!1026387 (= (= lt!1789348 (ListMap!4316 Nil!51584)) (= lambda!193270 lambda!193268))))

(assert (=> bs!1026387 (= (= lt!1789348 lt!1789346) (= lambda!193270 lambda!193269))))

(assert (=> bs!1026384 (= (= lt!1789348 lt!1789147) (= lambda!193270 lambda!193258))))

(declare-fun bs!1026388 () Bool)

(assert (= bs!1026388 (and d!1458796 b!4629651)))

(assert (=> bs!1026388 (= (= lt!1789348 lt!1789147) (= lambda!193270 lambda!193257))))

(assert (=> d!1458796 true))

(declare-fun b!4629669 () Bool)

(declare-fun res!1942161 () Bool)

(declare-fun e!2888020 () Bool)

(assert (=> b!4629669 (=> (not res!1942161) (not e!2888020))))

(assert (=> b!4629669 (= res!1942161 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193270))))

(assert (=> d!1458796 e!2888020))

(declare-fun res!1942159 () Bool)

(assert (=> d!1458796 (=> (not res!1942159) (not e!2888020))))

(assert (=> d!1458796 (= res!1942159 (forall!10853 lt!1789153 lambda!193270))))

(declare-fun e!2888018 () ListMap!4315)

(assert (=> d!1458796 (= lt!1789348 e!2888018)))

(declare-fun c!792457 () Bool)

(assert (=> d!1458796 (= c!792457 (is-Nil!51584 lt!1789153))))

(assert (=> d!1458796 (noDuplicateKeys!1523 lt!1789153)))

(assert (=> d!1458796 (= (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789348)))

(declare-fun bm!323009 () Bool)

(declare-fun lt!1789344 () ListMap!4315)

(declare-fun call!323016 () Bool)

(assert (=> bm!323009 (= call!323016 (forall!10853 (ite c!792457 (toList!5011 (ListMap!4316 Nil!51584)) (toList!5011 lt!1789344)) (ite c!792457 lambda!193267 lambda!193269)))))

(assert (=> b!4629670 (= e!2888018 (ListMap!4316 Nil!51584))))

(declare-fun lt!1789353 () Unit!113006)

(declare-fun call!323014 () Unit!113006)

(assert (=> b!4629670 (= lt!1789353 call!323014)))

(assert (=> b!4629670 call!323016))

(declare-fun lt!1789351 () Unit!113006)

(assert (=> b!4629670 (= lt!1789351 lt!1789353)))

(declare-fun call!323015 () Bool)

(assert (=> b!4629670 call!323015))

(declare-fun lt!1789347 () Unit!113006)

(declare-fun Unit!113021 () Unit!113006)

(assert (=> b!4629670 (= lt!1789347 Unit!113021)))

(declare-fun bm!323010 () Bool)

(assert (=> bm!323010 (= call!323015 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) (ite c!792457 lambda!193267 lambda!193269)))))

(declare-fun bm!323011 () Bool)

(assert (=> bm!323011 (= call!323014 (lemmaContainsAllItsOwnKeys!521 (ListMap!4316 Nil!51584)))))

(declare-fun b!4629671 () Bool)

(assert (=> b!4629671 (= e!2888020 (invariantList!1219 (toList!5011 lt!1789348)))))

(declare-fun b!4629672 () Bool)

(declare-fun e!2888019 () Bool)

(assert (=> b!4629672 (= e!2888019 call!323015)))

(assert (=> b!4629673 (= e!2888018 lt!1789346)))

(assert (=> b!4629673 (= lt!1789344 (+!1889 (ListMap!4316 Nil!51584) (h!57650 lt!1789153)))))

(assert (=> b!4629673 (= lt!1789346 (addToMapMapFromBucket!984 (t!358756 lt!1789153) (+!1889 (ListMap!4316 Nil!51584) (h!57650 lt!1789153))))))

(declare-fun lt!1789358 () Unit!113006)

(assert (=> b!4629673 (= lt!1789358 call!323014)))

(assert (=> b!4629673 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193268)))

(declare-fun lt!1789355 () Unit!113006)

(assert (=> b!4629673 (= lt!1789355 lt!1789358)))

(assert (=> b!4629673 call!323016))

(declare-fun lt!1789341 () Unit!113006)

(declare-fun Unit!113022 () Unit!113006)

(assert (=> b!4629673 (= lt!1789341 Unit!113022)))

(assert (=> b!4629673 (forall!10853 (t!358756 lt!1789153) lambda!193269)))

(declare-fun lt!1789343 () Unit!113006)

(declare-fun Unit!113023 () Unit!113006)

(assert (=> b!4629673 (= lt!1789343 Unit!113023)))

(declare-fun lt!1789345 () Unit!113006)

(declare-fun Unit!113024 () Unit!113006)

(assert (=> b!4629673 (= lt!1789345 Unit!113024)))

(declare-fun lt!1789350 () Unit!113006)

(assert (=> b!4629673 (= lt!1789350 (forallContained!3085 (toList!5011 lt!1789344) lambda!193269 (h!57650 lt!1789153)))))

(assert (=> b!4629673 (contains!14662 lt!1789344 (_1!29563 (h!57650 lt!1789153)))))

(declare-fun lt!1789342 () Unit!113006)

(declare-fun Unit!113025 () Unit!113006)

(assert (=> b!4629673 (= lt!1789342 Unit!113025)))

(assert (=> b!4629673 (contains!14662 lt!1789346 (_1!29563 (h!57650 lt!1789153)))))

(declare-fun lt!1789357 () Unit!113006)

(declare-fun Unit!113026 () Unit!113006)

(assert (=> b!4629673 (= lt!1789357 Unit!113026)))

(assert (=> b!4629673 (forall!10853 lt!1789153 lambda!193269)))

(declare-fun lt!1789361 () Unit!113006)

(declare-fun Unit!113027 () Unit!113006)

(assert (=> b!4629673 (= lt!1789361 Unit!113027)))

(assert (=> b!4629673 (forall!10853 (toList!5011 lt!1789344) lambda!193269)))

(declare-fun lt!1789356 () Unit!113006)

(declare-fun Unit!113028 () Unit!113006)

(assert (=> b!4629673 (= lt!1789356 Unit!113028)))

(declare-fun lt!1789354 () Unit!113006)

(declare-fun Unit!113029 () Unit!113006)

(assert (=> b!4629673 (= lt!1789354 Unit!113029)))

(declare-fun lt!1789360 () Unit!113006)

(assert (=> b!4629673 (= lt!1789360 (addForallContainsKeyThenBeforeAdding!520 (ListMap!4316 Nil!51584) lt!1789346 (_1!29563 (h!57650 lt!1789153)) (_2!29563 (h!57650 lt!1789153))))))

(assert (=> b!4629673 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193269)))

(declare-fun lt!1789349 () Unit!113006)

(assert (=> b!4629673 (= lt!1789349 lt!1789360)))

(assert (=> b!4629673 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193269)))

(declare-fun lt!1789352 () Unit!113006)

(declare-fun Unit!113030 () Unit!113006)

(assert (=> b!4629673 (= lt!1789352 Unit!113030)))

(declare-fun res!1942160 () Bool)

(assert (=> b!4629673 (= res!1942160 (forall!10853 lt!1789153 lambda!193269))))

(assert (=> b!4629673 (=> (not res!1942160) (not e!2888019))))

(assert (=> b!4629673 e!2888019))

(declare-fun lt!1789359 () Unit!113006)

(declare-fun Unit!113031 () Unit!113006)

(assert (=> b!4629673 (= lt!1789359 Unit!113031)))

(assert (= (and d!1458796 c!792457) b!4629670))

(assert (= (and d!1458796 (not c!792457)) b!4629673))

(assert (= (and b!4629673 res!1942160) b!4629672))

(assert (= (or b!4629670 b!4629673) bm!323011))

(assert (= (or b!4629670 b!4629672) bm!323010))

(assert (= (or b!4629670 b!4629673) bm!323009))

(assert (= (and d!1458796 res!1942159) b!4629669))

(assert (= (and b!4629669 res!1942161) b!4629671))

(declare-fun m!5477045 () Bool)

(assert (=> b!4629671 m!5477045))

(declare-fun m!5477047 () Bool)

(assert (=> b!4629669 m!5477047))

(declare-fun m!5477049 () Bool)

(assert (=> b!4629673 m!5477049))

(declare-fun m!5477051 () Bool)

(assert (=> b!4629673 m!5477051))

(declare-fun m!5477053 () Bool)

(assert (=> b!4629673 m!5477053))

(declare-fun m!5477055 () Bool)

(assert (=> b!4629673 m!5477055))

(declare-fun m!5477057 () Bool)

(assert (=> b!4629673 m!5477057))

(assert (=> b!4629673 m!5477049))

(declare-fun m!5477059 () Bool)

(assert (=> b!4629673 m!5477059))

(declare-fun m!5477061 () Bool)

(assert (=> b!4629673 m!5477061))

(declare-fun m!5477063 () Bool)

(assert (=> b!4629673 m!5477063))

(assert (=> b!4629673 m!5477055))

(assert (=> b!4629673 m!5477061))

(declare-fun m!5477065 () Bool)

(assert (=> b!4629673 m!5477065))

(declare-fun m!5477067 () Bool)

(assert (=> b!4629673 m!5477067))

(declare-fun m!5477069 () Bool)

(assert (=> b!4629673 m!5477069))

(declare-fun m!5477071 () Bool)

(assert (=> bm!323010 m!5477071))

(declare-fun m!5477073 () Bool)

(assert (=> d!1458796 m!5477073))

(declare-fun m!5477075 () Bool)

(assert (=> d!1458796 m!5477075))

(declare-fun m!5477077 () Bool)

(assert (=> bm!323009 m!5477077))

(declare-fun m!5477079 () Bool)

(assert (=> bm!323011 m!5477079))

(assert (=> b!4629546 d!1458796))

(declare-fun d!1458800 () Bool)

(declare-fun content!8842 (List!51708) (Set tuple2!52538))

(assert (=> d!1458800 (= (eq!838 lt!1789134 (+!1889 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)) (h!57650 oldBucket!40))) (= (content!8842 (toList!5011 lt!1789134)) (content!8842 (toList!5011 (+!1889 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)) (h!57650 oldBucket!40))))))))

(declare-fun bs!1026389 () Bool)

(assert (= bs!1026389 d!1458800))

(declare-fun m!5477081 () Bool)

(assert (=> bs!1026389 m!5477081))

(declare-fun m!5477083 () Bool)

(assert (=> bs!1026389 m!5477083))

(assert (=> b!4629546 d!1458800))

(declare-fun bs!1026390 () Bool)

(declare-fun b!4629675 () Bool)

(assert (= bs!1026390 (and b!4629675 b!4629654)))

(declare-fun lambda!193271 () Int)

(assert (=> bs!1026390 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193271 lambda!193259))))

(declare-fun bs!1026391 () Bool)

(assert (= bs!1026391 (and b!4629675 d!1458784)))

(assert (=> bs!1026391 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193271 lambda!193260))))

(declare-fun bs!1026392 () Bool)

(assert (= bs!1026392 (and b!4629675 b!4629670)))

(assert (=> bs!1026392 (= lambda!193271 lambda!193267)))

(declare-fun bs!1026393 () Bool)

(assert (= bs!1026393 (and b!4629675 b!4629673)))

(assert (=> bs!1026393 (= lambda!193271 lambda!193268)))

(assert (=> bs!1026393 (= (= (ListMap!4316 Nil!51584) lt!1789346) (= lambda!193271 lambda!193269))))

(declare-fun bs!1026394 () Bool)

(assert (= bs!1026394 (and b!4629675 d!1458796)))

(assert (=> bs!1026394 (= (= (ListMap!4316 Nil!51584) lt!1789348) (= lambda!193271 lambda!193270))))

(assert (=> bs!1026390 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193271 lambda!193258))))

(declare-fun bs!1026395 () Bool)

(assert (= bs!1026395 (and b!4629675 b!4629651)))

(assert (=> bs!1026395 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193271 lambda!193257))))

(assert (=> b!4629675 true))

(declare-fun bs!1026396 () Bool)

(declare-fun b!4629678 () Bool)

(assert (= bs!1026396 (and b!4629678 b!4629654)))

(declare-fun lambda!193272 () Int)

(assert (=> bs!1026396 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193272 lambda!193259))))

(declare-fun bs!1026397 () Bool)

(assert (= bs!1026397 (and b!4629678 b!4629670)))

(assert (=> bs!1026397 (= lambda!193272 lambda!193267)))

(declare-fun bs!1026398 () Bool)

(assert (= bs!1026398 (and b!4629678 b!4629673)))

(assert (=> bs!1026398 (= lambda!193272 lambda!193268)))

(assert (=> bs!1026398 (= (= (ListMap!4316 Nil!51584) lt!1789346) (= lambda!193272 lambda!193269))))

(declare-fun bs!1026399 () Bool)

(assert (= bs!1026399 (and b!4629678 d!1458796)))

(assert (=> bs!1026399 (= (= (ListMap!4316 Nil!51584) lt!1789348) (= lambda!193272 lambda!193270))))

(declare-fun bs!1026400 () Bool)

(assert (= bs!1026400 (and b!4629678 d!1458784)))

(assert (=> bs!1026400 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193272 lambda!193260))))

(declare-fun bs!1026401 () Bool)

(assert (= bs!1026401 (and b!4629678 b!4629675)))

(assert (=> bs!1026401 (= lambda!193272 lambda!193271)))

(assert (=> bs!1026396 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193272 lambda!193258))))

(declare-fun bs!1026402 () Bool)

(assert (= bs!1026402 (and b!4629678 b!4629651)))

(assert (=> bs!1026402 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193272 lambda!193257))))

(assert (=> b!4629678 true))

(declare-fun lambda!193273 () Int)

(declare-fun lt!1789367 () ListMap!4315)

(assert (=> bs!1026396 (= (= lt!1789367 lt!1789319) (= lambda!193273 lambda!193259))))

(assert (=> bs!1026397 (= (= lt!1789367 (ListMap!4316 Nil!51584)) (= lambda!193273 lambda!193267))))

(assert (=> bs!1026398 (= (= lt!1789367 (ListMap!4316 Nil!51584)) (= lambda!193273 lambda!193268))))

(assert (=> bs!1026398 (= (= lt!1789367 lt!1789346) (= lambda!193273 lambda!193269))))

(assert (=> b!4629678 (= (= lt!1789367 (ListMap!4316 Nil!51584)) (= lambda!193273 lambda!193272))))

(assert (=> bs!1026399 (= (= lt!1789367 lt!1789348) (= lambda!193273 lambda!193270))))

(assert (=> bs!1026400 (= (= lt!1789367 lt!1789321) (= lambda!193273 lambda!193260))))

(assert (=> bs!1026401 (= (= lt!1789367 (ListMap!4316 Nil!51584)) (= lambda!193273 lambda!193271))))

(assert (=> bs!1026396 (= (= lt!1789367 lt!1789147) (= lambda!193273 lambda!193258))))

(assert (=> bs!1026402 (= (= lt!1789367 lt!1789147) (= lambda!193273 lambda!193257))))

(assert (=> b!4629678 true))

(declare-fun bs!1026403 () Bool)

(declare-fun d!1458802 () Bool)

(assert (= bs!1026403 (and d!1458802 b!4629654)))

(declare-fun lt!1789369 () ListMap!4315)

(declare-fun lambda!193274 () Int)

(assert (=> bs!1026403 (= (= lt!1789369 lt!1789319) (= lambda!193274 lambda!193259))))

(declare-fun bs!1026404 () Bool)

(assert (= bs!1026404 (and d!1458802 b!4629670)))

(assert (=> bs!1026404 (= (= lt!1789369 (ListMap!4316 Nil!51584)) (= lambda!193274 lambda!193267))))

(declare-fun bs!1026405 () Bool)

(assert (= bs!1026405 (and d!1458802 b!4629678)))

(assert (=> bs!1026405 (= (= lt!1789369 lt!1789367) (= lambda!193274 lambda!193273))))

(declare-fun bs!1026406 () Bool)

(assert (= bs!1026406 (and d!1458802 b!4629673)))

(assert (=> bs!1026406 (= (= lt!1789369 (ListMap!4316 Nil!51584)) (= lambda!193274 lambda!193268))))

(assert (=> bs!1026406 (= (= lt!1789369 lt!1789346) (= lambda!193274 lambda!193269))))

(assert (=> bs!1026405 (= (= lt!1789369 (ListMap!4316 Nil!51584)) (= lambda!193274 lambda!193272))))

(declare-fun bs!1026407 () Bool)

(assert (= bs!1026407 (and d!1458802 d!1458796)))

(assert (=> bs!1026407 (= (= lt!1789369 lt!1789348) (= lambda!193274 lambda!193270))))

(declare-fun bs!1026408 () Bool)

(assert (= bs!1026408 (and d!1458802 d!1458784)))

(assert (=> bs!1026408 (= (= lt!1789369 lt!1789321) (= lambda!193274 lambda!193260))))

(declare-fun bs!1026409 () Bool)

(assert (= bs!1026409 (and d!1458802 b!4629675)))

(assert (=> bs!1026409 (= (= lt!1789369 (ListMap!4316 Nil!51584)) (= lambda!193274 lambda!193271))))

(assert (=> bs!1026403 (= (= lt!1789369 lt!1789147) (= lambda!193274 lambda!193258))))

(declare-fun bs!1026410 () Bool)

(assert (= bs!1026410 (and d!1458802 b!4629651)))

(assert (=> bs!1026410 (= (= lt!1789369 lt!1789147) (= lambda!193274 lambda!193257))))

(assert (=> d!1458802 true))

(declare-fun b!4629674 () Bool)

(declare-fun res!1942164 () Bool)

(declare-fun e!2888023 () Bool)

(assert (=> b!4629674 (=> (not res!1942164) (not e!2888023))))

(assert (=> b!4629674 (= res!1942164 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193274))))

(assert (=> d!1458802 e!2888023))

(declare-fun res!1942162 () Bool)

(assert (=> d!1458802 (=> (not res!1942162) (not e!2888023))))

(assert (=> d!1458802 (= res!1942162 (forall!10853 (Cons!51584 lt!1789125 lt!1789153) lambda!193274))))

(declare-fun e!2888021 () ListMap!4315)

(assert (=> d!1458802 (= lt!1789369 e!2888021)))

(declare-fun c!792458 () Bool)

(assert (=> d!1458802 (= c!792458 (is-Nil!51584 (Cons!51584 lt!1789125 lt!1789153)))))

(assert (=> d!1458802 (noDuplicateKeys!1523 (Cons!51584 lt!1789125 lt!1789153))))

(assert (=> d!1458802 (= (addToMapMapFromBucket!984 (Cons!51584 lt!1789125 lt!1789153) (ListMap!4316 Nil!51584)) lt!1789369)))

(declare-fun bm!323012 () Bool)

(declare-fun lt!1789365 () ListMap!4315)

(declare-fun call!323019 () Bool)

(assert (=> bm!323012 (= call!323019 (forall!10853 (ite c!792458 (toList!5011 (ListMap!4316 Nil!51584)) (toList!5011 lt!1789365)) (ite c!792458 lambda!193271 lambda!193273)))))

(assert (=> b!4629675 (= e!2888021 (ListMap!4316 Nil!51584))))

(declare-fun lt!1789374 () Unit!113006)

(declare-fun call!323017 () Unit!113006)

(assert (=> b!4629675 (= lt!1789374 call!323017)))

(assert (=> b!4629675 call!323019))

(declare-fun lt!1789372 () Unit!113006)

(assert (=> b!4629675 (= lt!1789372 lt!1789374)))

(declare-fun call!323018 () Bool)

(assert (=> b!4629675 call!323018))

(declare-fun lt!1789368 () Unit!113006)

(declare-fun Unit!113032 () Unit!113006)

(assert (=> b!4629675 (= lt!1789368 Unit!113032)))

(declare-fun bm!323013 () Bool)

(assert (=> bm!323013 (= call!323018 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) (ite c!792458 lambda!193271 lambda!193273)))))

(declare-fun bm!323014 () Bool)

(assert (=> bm!323014 (= call!323017 (lemmaContainsAllItsOwnKeys!521 (ListMap!4316 Nil!51584)))))

(declare-fun b!4629676 () Bool)

(assert (=> b!4629676 (= e!2888023 (invariantList!1219 (toList!5011 lt!1789369)))))

(declare-fun b!4629677 () Bool)

(declare-fun e!2888022 () Bool)

(assert (=> b!4629677 (= e!2888022 call!323018)))

(assert (=> b!4629678 (= e!2888021 lt!1789367)))

(assert (=> b!4629678 (= lt!1789365 (+!1889 (ListMap!4316 Nil!51584) (h!57650 (Cons!51584 lt!1789125 lt!1789153))))))

(assert (=> b!4629678 (= lt!1789367 (addToMapMapFromBucket!984 (t!358756 (Cons!51584 lt!1789125 lt!1789153)) (+!1889 (ListMap!4316 Nil!51584) (h!57650 (Cons!51584 lt!1789125 lt!1789153)))))))

(declare-fun lt!1789379 () Unit!113006)

(assert (=> b!4629678 (= lt!1789379 call!323017)))

(assert (=> b!4629678 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193272)))

(declare-fun lt!1789376 () Unit!113006)

(assert (=> b!4629678 (= lt!1789376 lt!1789379)))

(assert (=> b!4629678 call!323019))

(declare-fun lt!1789362 () Unit!113006)

(declare-fun Unit!113033 () Unit!113006)

(assert (=> b!4629678 (= lt!1789362 Unit!113033)))

(assert (=> b!4629678 (forall!10853 (t!358756 (Cons!51584 lt!1789125 lt!1789153)) lambda!193273)))

(declare-fun lt!1789364 () Unit!113006)

(declare-fun Unit!113034 () Unit!113006)

(assert (=> b!4629678 (= lt!1789364 Unit!113034)))

(declare-fun lt!1789366 () Unit!113006)

(declare-fun Unit!113035 () Unit!113006)

(assert (=> b!4629678 (= lt!1789366 Unit!113035)))

(declare-fun lt!1789371 () Unit!113006)

(assert (=> b!4629678 (= lt!1789371 (forallContained!3085 (toList!5011 lt!1789365) lambda!193273 (h!57650 (Cons!51584 lt!1789125 lt!1789153))))))

(assert (=> b!4629678 (contains!14662 lt!1789365 (_1!29563 (h!57650 (Cons!51584 lt!1789125 lt!1789153))))))

(declare-fun lt!1789363 () Unit!113006)

(declare-fun Unit!113036 () Unit!113006)

(assert (=> b!4629678 (= lt!1789363 Unit!113036)))

(assert (=> b!4629678 (contains!14662 lt!1789367 (_1!29563 (h!57650 (Cons!51584 lt!1789125 lt!1789153))))))

(declare-fun lt!1789378 () Unit!113006)

(declare-fun Unit!113037 () Unit!113006)

(assert (=> b!4629678 (= lt!1789378 Unit!113037)))

(assert (=> b!4629678 (forall!10853 (Cons!51584 lt!1789125 lt!1789153) lambda!193273)))

(declare-fun lt!1789382 () Unit!113006)

(declare-fun Unit!113038 () Unit!113006)

(assert (=> b!4629678 (= lt!1789382 Unit!113038)))

(assert (=> b!4629678 (forall!10853 (toList!5011 lt!1789365) lambda!193273)))

(declare-fun lt!1789377 () Unit!113006)

(declare-fun Unit!113039 () Unit!113006)

(assert (=> b!4629678 (= lt!1789377 Unit!113039)))

(declare-fun lt!1789375 () Unit!113006)

(declare-fun Unit!113040 () Unit!113006)

(assert (=> b!4629678 (= lt!1789375 Unit!113040)))

(declare-fun lt!1789381 () Unit!113006)

(assert (=> b!4629678 (= lt!1789381 (addForallContainsKeyThenBeforeAdding!520 (ListMap!4316 Nil!51584) lt!1789367 (_1!29563 (h!57650 (Cons!51584 lt!1789125 lt!1789153))) (_2!29563 (h!57650 (Cons!51584 lt!1789125 lt!1789153)))))))

(assert (=> b!4629678 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193273)))

(declare-fun lt!1789370 () Unit!113006)

(assert (=> b!4629678 (= lt!1789370 lt!1789381)))

(assert (=> b!4629678 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193273)))

(declare-fun lt!1789373 () Unit!113006)

(declare-fun Unit!113041 () Unit!113006)

(assert (=> b!4629678 (= lt!1789373 Unit!113041)))

(declare-fun res!1942163 () Bool)

(assert (=> b!4629678 (= res!1942163 (forall!10853 (Cons!51584 lt!1789125 lt!1789153) lambda!193273))))

(assert (=> b!4629678 (=> (not res!1942163) (not e!2888022))))

(assert (=> b!4629678 e!2888022))

(declare-fun lt!1789380 () Unit!113006)

(declare-fun Unit!113042 () Unit!113006)

(assert (=> b!4629678 (= lt!1789380 Unit!113042)))

(assert (= (and d!1458802 c!792458) b!4629675))

(assert (= (and d!1458802 (not c!792458)) b!4629678))

(assert (= (and b!4629678 res!1942163) b!4629677))

(assert (= (or b!4629675 b!4629678) bm!323014))

(assert (= (or b!4629675 b!4629677) bm!323013))

(assert (= (or b!4629675 b!4629678) bm!323012))

(assert (= (and d!1458802 res!1942162) b!4629674))

(assert (= (and b!4629674 res!1942164) b!4629676))

(declare-fun m!5477085 () Bool)

(assert (=> b!4629676 m!5477085))

(declare-fun m!5477087 () Bool)

(assert (=> b!4629674 m!5477087))

(declare-fun m!5477089 () Bool)

(assert (=> b!4629678 m!5477089))

(declare-fun m!5477091 () Bool)

(assert (=> b!4629678 m!5477091))

(declare-fun m!5477093 () Bool)

(assert (=> b!4629678 m!5477093))

(declare-fun m!5477095 () Bool)

(assert (=> b!4629678 m!5477095))

(declare-fun m!5477097 () Bool)

(assert (=> b!4629678 m!5477097))

(assert (=> b!4629678 m!5477089))

(declare-fun m!5477099 () Bool)

(assert (=> b!4629678 m!5477099))

(declare-fun m!5477101 () Bool)

(assert (=> b!4629678 m!5477101))

(declare-fun m!5477103 () Bool)

(assert (=> b!4629678 m!5477103))

(assert (=> b!4629678 m!5477095))

(assert (=> b!4629678 m!5477101))

(declare-fun m!5477105 () Bool)

(assert (=> b!4629678 m!5477105))

(declare-fun m!5477107 () Bool)

(assert (=> b!4629678 m!5477107))

(declare-fun m!5477109 () Bool)

(assert (=> b!4629678 m!5477109))

(declare-fun m!5477111 () Bool)

(assert (=> bm!323013 m!5477111))

(declare-fun m!5477113 () Bool)

(assert (=> d!1458802 m!5477113))

(declare-fun m!5477115 () Bool)

(assert (=> d!1458802 m!5477115))

(declare-fun m!5477117 () Bool)

(assert (=> bm!323012 m!5477117))

(assert (=> bm!323014 m!5477079))

(assert (=> b!4629546 d!1458802))

(declare-fun d!1458804 () Bool)

(declare-fun e!2888030 () Bool)

(assert (=> d!1458804 e!2888030))

(declare-fun res!1942176 () Bool)

(assert (=> d!1458804 (=> (not res!1942176) (not e!2888030))))

(declare-fun lt!1789405 () ListMap!4315)

(assert (=> d!1458804 (= res!1942176 (contains!14662 lt!1789405 (_1!29563 (h!57650 oldBucket!40))))))

(declare-fun lt!1789406 () List!51708)

(assert (=> d!1458804 (= lt!1789405 (ListMap!4316 lt!1789406))))

(declare-fun lt!1789407 () Unit!113006)

(declare-fun lt!1789404 () Unit!113006)

(assert (=> d!1458804 (= lt!1789407 lt!1789404)))

(declare-datatypes ((Option!11639 0))(
  ( (None!11638) (Some!11638 (v!45800 V!13204)) )
))
(declare-fun getValueByKey!1481 (List!51708 K!12958) Option!11639)

(assert (=> d!1458804 (= (getValueByKey!1481 lt!1789406 (_1!29563 (h!57650 oldBucket!40))) (Some!11638 (_2!29563 (h!57650 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!863 (List!51708 K!12958 V!13204) Unit!113006)

(assert (=> d!1458804 (= lt!1789404 (lemmaContainsTupThenGetReturnValue!863 lt!1789406 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!371 (List!51708 K!12958 V!13204) List!51708)

(assert (=> d!1458804 (= lt!1789406 (insertNoDuplicatedKeys!371 (toList!5011 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585))) (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458804 (= (+!1889 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)) (h!57650 oldBucket!40)) lt!1789405)))

(declare-fun b!4629691 () Bool)

(declare-fun res!1942175 () Bool)

(assert (=> b!4629691 (=> (not res!1942175) (not e!2888030))))

(assert (=> b!4629691 (= res!1942175 (= (getValueByKey!1481 (toList!5011 lt!1789405) (_1!29563 (h!57650 oldBucket!40))) (Some!11638 (_2!29563 (h!57650 oldBucket!40)))))))

(declare-fun b!4629692 () Bool)

(declare-fun contains!14666 (List!51708 tuple2!52538) Bool)

(assert (=> b!4629692 (= e!2888030 (contains!14666 (toList!5011 lt!1789405) (h!57650 oldBucket!40)))))

(assert (= (and d!1458804 res!1942176) b!4629691))

(assert (= (and b!4629691 res!1942175) b!4629692))

(declare-fun m!5477139 () Bool)

(assert (=> d!1458804 m!5477139))

(declare-fun m!5477141 () Bool)

(assert (=> d!1458804 m!5477141))

(declare-fun m!5477143 () Bool)

(assert (=> d!1458804 m!5477143))

(declare-fun m!5477145 () Bool)

(assert (=> d!1458804 m!5477145))

(declare-fun m!5477147 () Bool)

(assert (=> b!4629691 m!5477147))

(declare-fun m!5477149 () Bool)

(assert (=> b!4629692 m!5477149))

(assert (=> b!4629546 d!1458804))

(declare-fun d!1458810 () Bool)

(assert (=> d!1458810 (eq!838 (addToMapMapFromBucket!984 (Cons!51584 lt!1789125 lt!1789153) (ListMap!4316 Nil!51584)) (+!1889 (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789125))))

(declare-fun lt!1789411 () Unit!113006)

(declare-fun choose!31447 (tuple2!52538 List!51708 ListMap!4315) Unit!113006)

(assert (=> d!1458810 (= lt!1789411 (choose!31447 lt!1789125 lt!1789153 (ListMap!4316 Nil!51584)))))

(assert (=> d!1458810 (noDuplicateKeys!1523 lt!1789153)))

(assert (=> d!1458810 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!89 lt!1789125 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789411)))

(declare-fun bs!1026421 () Bool)

(assert (= bs!1026421 d!1458810))

(declare-fun m!5477169 () Bool)

(assert (=> bs!1026421 m!5477169))

(assert (=> bs!1026421 m!5476807))

(assert (=> bs!1026421 m!5476813))

(assert (=> bs!1026421 m!5476807))

(assert (=> bs!1026421 m!5476809))

(assert (=> bs!1026421 m!5476811))

(assert (=> bs!1026421 m!5477075))

(assert (=> bs!1026421 m!5476813))

(assert (=> bs!1026421 m!5476809))

(assert (=> b!4629546 d!1458810))

(declare-fun d!1458822 () Bool)

(assert (=> d!1458822 (= (head!9657 oldBucket!40) (h!57650 oldBucket!40))))

(assert (=> b!4629546 d!1458822))

(declare-fun b!4629720 () Bool)

(declare-datatypes ((List!51712 0))(
  ( (Nil!51588) (Cons!51588 (h!57656 K!12958) (t!358761 List!51712)) )
))
(declare-fun e!2888052 () List!51712)

(declare-fun keys!18187 (ListMap!4315) List!51712)

(assert (=> b!4629720 (= e!2888052 (keys!18187 lt!1789126))))

(declare-fun b!4629721 () Bool)

(assert (=> b!4629721 false))

(declare-fun lt!1789436 () Unit!113006)

(declare-fun lt!1789433 () Unit!113006)

(assert (=> b!4629721 (= lt!1789436 lt!1789433)))

(declare-fun containsKey!2497 (List!51708 K!12958) Bool)

(assert (=> b!4629721 (containsKey!2497 (toList!5011 lt!1789126) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!669 (List!51708 K!12958) Unit!113006)

(assert (=> b!4629721 (= lt!1789433 (lemmaInGetKeysListThenContainsKey!669 (toList!5011 lt!1789126) key!4968))))

(declare-fun e!2888047 () Unit!113006)

(declare-fun Unit!113043 () Unit!113006)

(assert (=> b!4629721 (= e!2888047 Unit!113043)))

(declare-fun b!4629722 () Bool)

(declare-fun e!2888049 () Unit!113006)

(assert (=> b!4629722 (= e!2888049 e!2888047)))

(declare-fun c!792469 () Bool)

(declare-fun call!323022 () Bool)

(assert (=> b!4629722 (= c!792469 call!323022)))

(declare-fun d!1458824 () Bool)

(declare-fun e!2888048 () Bool)

(assert (=> d!1458824 e!2888048))

(declare-fun res!1942187 () Bool)

(assert (=> d!1458824 (=> res!1942187 e!2888048)))

(declare-fun e!2888050 () Bool)

(assert (=> d!1458824 (= res!1942187 e!2888050)))

(declare-fun res!1942188 () Bool)

(assert (=> d!1458824 (=> (not res!1942188) (not e!2888050))))

(declare-fun lt!1789434 () Bool)

(assert (=> d!1458824 (= res!1942188 (not lt!1789434))))

(declare-fun lt!1789437 () Bool)

(assert (=> d!1458824 (= lt!1789434 lt!1789437)))

(declare-fun lt!1789432 () Unit!113006)

(assert (=> d!1458824 (= lt!1789432 e!2888049)))

(declare-fun c!792468 () Bool)

(assert (=> d!1458824 (= c!792468 lt!1789437)))

(assert (=> d!1458824 (= lt!1789437 (containsKey!2497 (toList!5011 lt!1789126) key!4968))))

(assert (=> d!1458824 (= (contains!14662 lt!1789126 key!4968) lt!1789434)))

(declare-fun bm!323017 () Bool)

(declare-fun contains!14667 (List!51712 K!12958) Bool)

(assert (=> bm!323017 (= call!323022 (contains!14667 e!2888052 key!4968))))

(declare-fun c!792467 () Bool)

(assert (=> bm!323017 (= c!792467 c!792468)))

(declare-fun b!4629723 () Bool)

(declare-fun e!2888051 () Bool)

(assert (=> b!4629723 (= e!2888051 (contains!14667 (keys!18187 lt!1789126) key!4968))))

(declare-fun b!4629724 () Bool)

(declare-fun Unit!113044 () Unit!113006)

(assert (=> b!4629724 (= e!2888047 Unit!113044)))

(declare-fun b!4629725 () Bool)

(assert (=> b!4629725 (= e!2888048 e!2888051)))

(declare-fun res!1942186 () Bool)

(assert (=> b!4629725 (=> (not res!1942186) (not e!2888051))))

(declare-fun isDefined!8904 (Option!11639) Bool)

(assert (=> b!4629725 (= res!1942186 (isDefined!8904 (getValueByKey!1481 (toList!5011 lt!1789126) key!4968)))))

(declare-fun b!4629726 () Bool)

(declare-fun lt!1789438 () Unit!113006)

(assert (=> b!4629726 (= e!2888049 lt!1789438)))

(declare-fun lt!1789431 () Unit!113006)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1383 (List!51708 K!12958) Unit!113006)

(assert (=> b!4629726 (= lt!1789431 (lemmaContainsKeyImpliesGetValueByKeyDefined!1383 (toList!5011 lt!1789126) key!4968))))

(assert (=> b!4629726 (isDefined!8904 (getValueByKey!1481 (toList!5011 lt!1789126) key!4968))))

(declare-fun lt!1789435 () Unit!113006)

(assert (=> b!4629726 (= lt!1789435 lt!1789431)))

(declare-fun lemmaInListThenGetKeysListContains!665 (List!51708 K!12958) Unit!113006)

(assert (=> b!4629726 (= lt!1789438 (lemmaInListThenGetKeysListContains!665 (toList!5011 lt!1789126) key!4968))))

(assert (=> b!4629726 call!323022))

(declare-fun b!4629727 () Bool)

(declare-fun getKeysList!670 (List!51708) List!51712)

(assert (=> b!4629727 (= e!2888052 (getKeysList!670 (toList!5011 lt!1789126)))))

(declare-fun b!4629728 () Bool)

(assert (=> b!4629728 (= e!2888050 (not (contains!14667 (keys!18187 lt!1789126) key!4968)))))

(assert (= (and d!1458824 c!792468) b!4629726))

(assert (= (and d!1458824 (not c!792468)) b!4629722))

(assert (= (and b!4629722 c!792469) b!4629721))

(assert (= (and b!4629722 (not c!792469)) b!4629724))

(assert (= (or b!4629726 b!4629722) bm!323017))

(assert (= (and bm!323017 c!792467) b!4629727))

(assert (= (and bm!323017 (not c!792467)) b!4629720))

(assert (= (and d!1458824 res!1942188) b!4629728))

(assert (= (and d!1458824 (not res!1942187)) b!4629725))

(assert (= (and b!4629725 res!1942186) b!4629723))

(declare-fun m!5477183 () Bool)

(assert (=> b!4629723 m!5477183))

(assert (=> b!4629723 m!5477183))

(declare-fun m!5477185 () Bool)

(assert (=> b!4629723 m!5477185))

(assert (=> b!4629728 m!5477183))

(assert (=> b!4629728 m!5477183))

(assert (=> b!4629728 m!5477185))

(assert (=> b!4629720 m!5477183))

(declare-fun m!5477187 () Bool)

(assert (=> b!4629726 m!5477187))

(declare-fun m!5477189 () Bool)

(assert (=> b!4629726 m!5477189))

(assert (=> b!4629726 m!5477189))

(declare-fun m!5477191 () Bool)

(assert (=> b!4629726 m!5477191))

(declare-fun m!5477193 () Bool)

(assert (=> b!4629726 m!5477193))

(declare-fun m!5477195 () Bool)

(assert (=> b!4629721 m!5477195))

(declare-fun m!5477197 () Bool)

(assert (=> b!4629721 m!5477197))

(assert (=> d!1458824 m!5477195))

(declare-fun m!5477199 () Bool)

(assert (=> b!4629727 m!5477199))

(assert (=> b!4629725 m!5477189))

(assert (=> b!4629725 m!5477189))

(assert (=> b!4629725 m!5477191))

(declare-fun m!5477201 () Bool)

(assert (=> bm!323017 m!5477201))

(assert (=> b!4629546 d!1458824))

(declare-fun d!1458828 () Bool)

(assert (=> d!1458828 (= (head!9657 newBucket!224) (h!57650 newBucket!224))))

(assert (=> b!4629546 d!1458828))

(declare-fun bs!1026422 () Bool)

(declare-fun d!1458830 () Bool)

(assert (= bs!1026422 (and d!1458830 b!4629539)))

(declare-fun lambda!193281 () Int)

(assert (=> bs!1026422 (= lambda!193281 lambda!193225)))

(declare-fun bs!1026423 () Bool)

(assert (= bs!1026423 (and d!1458830 d!1458790)))

(assert (=> bs!1026423 (= lambda!193281 lambda!193266)))

(declare-fun lt!1789439 () ListMap!4315)

(assert (=> d!1458830 (invariantList!1219 (toList!5011 lt!1789439))))

(declare-fun e!2888053 () ListMap!4315)

(assert (=> d!1458830 (= lt!1789439 e!2888053)))

(declare-fun c!792470 () Bool)

(assert (=> d!1458830 (= c!792470 (is-Cons!51585 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)))))

(assert (=> d!1458830 (forall!10854 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585) lambda!193281)))

(assert (=> d!1458830 (= (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)) lt!1789439)))

(declare-fun b!4629729 () Bool)

(assert (=> b!4629729 (= e!2888053 (addToMapMapFromBucket!984 (_2!29564 (h!57651 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585))) (extractMap!1579 (t!358757 (Cons!51585 (tuple2!52541 hash!414 lt!1789136) Nil!51585)))))))

(declare-fun b!4629730 () Bool)

(assert (=> b!4629730 (= e!2888053 (ListMap!4316 Nil!51584))))

(assert (= (and d!1458830 c!792470) b!4629729))

(assert (= (and d!1458830 (not c!792470)) b!4629730))

(declare-fun m!5477203 () Bool)

(assert (=> d!1458830 m!5477203))

(declare-fun m!5477205 () Bool)

(assert (=> d!1458830 m!5477205))

(declare-fun m!5477207 () Bool)

(assert (=> b!4629729 m!5477207))

(assert (=> b!4629729 m!5477207))

(declare-fun m!5477209 () Bool)

(assert (=> b!4629729 m!5477209))

(assert (=> b!4629546 d!1458830))

(declare-fun bs!1026424 () Bool)

(declare-fun b!4629732 () Bool)

(assert (= bs!1026424 (and b!4629732 d!1458802)))

(declare-fun lambda!193282 () Int)

(assert (=> bs!1026424 (= (= (ListMap!4316 Nil!51584) lt!1789369) (= lambda!193282 lambda!193274))))

(declare-fun bs!1026425 () Bool)

(assert (= bs!1026425 (and b!4629732 b!4629654)))

(assert (=> bs!1026425 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193282 lambda!193259))))

(declare-fun bs!1026426 () Bool)

(assert (= bs!1026426 (and b!4629732 b!4629670)))

(assert (=> bs!1026426 (= lambda!193282 lambda!193267)))

(declare-fun bs!1026427 () Bool)

(assert (= bs!1026427 (and b!4629732 b!4629678)))

(assert (=> bs!1026427 (= (= (ListMap!4316 Nil!51584) lt!1789367) (= lambda!193282 lambda!193273))))

(declare-fun bs!1026428 () Bool)

(assert (= bs!1026428 (and b!4629732 b!4629673)))

(assert (=> bs!1026428 (= lambda!193282 lambda!193268)))

(assert (=> bs!1026428 (= (= (ListMap!4316 Nil!51584) lt!1789346) (= lambda!193282 lambda!193269))))

(assert (=> bs!1026427 (= lambda!193282 lambda!193272)))

(declare-fun bs!1026429 () Bool)

(assert (= bs!1026429 (and b!4629732 d!1458796)))

(assert (=> bs!1026429 (= (= (ListMap!4316 Nil!51584) lt!1789348) (= lambda!193282 lambda!193270))))

(declare-fun bs!1026430 () Bool)

(assert (= bs!1026430 (and b!4629732 d!1458784)))

(assert (=> bs!1026430 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193282 lambda!193260))))

(declare-fun bs!1026431 () Bool)

(assert (= bs!1026431 (and b!4629732 b!4629675)))

(assert (=> bs!1026431 (= lambda!193282 lambda!193271)))

(assert (=> bs!1026425 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193282 lambda!193258))))

(declare-fun bs!1026432 () Bool)

(assert (= bs!1026432 (and b!4629732 b!4629651)))

(assert (=> bs!1026432 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193282 lambda!193257))))

(assert (=> b!4629732 true))

(declare-fun bs!1026433 () Bool)

(declare-fun b!4629735 () Bool)

(assert (= bs!1026433 (and b!4629735 d!1458802)))

(declare-fun lambda!193283 () Int)

(assert (=> bs!1026433 (= (= (ListMap!4316 Nil!51584) lt!1789369) (= lambda!193283 lambda!193274))))

(declare-fun bs!1026434 () Bool)

(assert (= bs!1026434 (and b!4629735 b!4629654)))

(assert (=> bs!1026434 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193283 lambda!193259))))

(declare-fun bs!1026435 () Bool)

(assert (= bs!1026435 (and b!4629735 b!4629670)))

(assert (=> bs!1026435 (= lambda!193283 lambda!193267)))

(declare-fun bs!1026437 () Bool)

(assert (= bs!1026437 (and b!4629735 b!4629732)))

(assert (=> bs!1026437 (= lambda!193283 lambda!193282)))

(declare-fun bs!1026438 () Bool)

(assert (= bs!1026438 (and b!4629735 b!4629678)))

(assert (=> bs!1026438 (= (= (ListMap!4316 Nil!51584) lt!1789367) (= lambda!193283 lambda!193273))))

(declare-fun bs!1026439 () Bool)

(assert (= bs!1026439 (and b!4629735 b!4629673)))

(assert (=> bs!1026439 (= lambda!193283 lambda!193268)))

(assert (=> bs!1026439 (= (= (ListMap!4316 Nil!51584) lt!1789346) (= lambda!193283 lambda!193269))))

(assert (=> bs!1026438 (= lambda!193283 lambda!193272)))

(declare-fun bs!1026440 () Bool)

(assert (= bs!1026440 (and b!4629735 d!1458796)))

(assert (=> bs!1026440 (= (= (ListMap!4316 Nil!51584) lt!1789348) (= lambda!193283 lambda!193270))))

(declare-fun bs!1026441 () Bool)

(assert (= bs!1026441 (and b!4629735 d!1458784)))

(assert (=> bs!1026441 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193283 lambda!193260))))

(declare-fun bs!1026442 () Bool)

(assert (= bs!1026442 (and b!4629735 b!4629675)))

(assert (=> bs!1026442 (= lambda!193283 lambda!193271)))

(assert (=> bs!1026434 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193283 lambda!193258))))

(declare-fun bs!1026443 () Bool)

(assert (= bs!1026443 (and b!4629735 b!4629651)))

(assert (=> bs!1026443 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193283 lambda!193257))))

(assert (=> b!4629735 true))

(declare-fun lambda!193284 () Int)

(declare-fun lt!1789445 () ListMap!4315)

(assert (=> bs!1026433 (= (= lt!1789445 lt!1789369) (= lambda!193284 lambda!193274))))

(assert (=> bs!1026434 (= (= lt!1789445 lt!1789319) (= lambda!193284 lambda!193259))))

(assert (=> bs!1026435 (= (= lt!1789445 (ListMap!4316 Nil!51584)) (= lambda!193284 lambda!193267))))

(assert (=> bs!1026437 (= (= lt!1789445 (ListMap!4316 Nil!51584)) (= lambda!193284 lambda!193282))))

(assert (=> bs!1026438 (= (= lt!1789445 lt!1789367) (= lambda!193284 lambda!193273))))

(assert (=> bs!1026439 (= (= lt!1789445 (ListMap!4316 Nil!51584)) (= lambda!193284 lambda!193268))))

(assert (=> bs!1026439 (= (= lt!1789445 lt!1789346) (= lambda!193284 lambda!193269))))

(assert (=> b!4629735 (= (= lt!1789445 (ListMap!4316 Nil!51584)) (= lambda!193284 lambda!193283))))

(assert (=> bs!1026438 (= (= lt!1789445 (ListMap!4316 Nil!51584)) (= lambda!193284 lambda!193272))))

(assert (=> bs!1026440 (= (= lt!1789445 lt!1789348) (= lambda!193284 lambda!193270))))

(assert (=> bs!1026441 (= (= lt!1789445 lt!1789321) (= lambda!193284 lambda!193260))))

(assert (=> bs!1026442 (= (= lt!1789445 (ListMap!4316 Nil!51584)) (= lambda!193284 lambda!193271))))

(assert (=> bs!1026434 (= (= lt!1789445 lt!1789147) (= lambda!193284 lambda!193258))))

(assert (=> bs!1026443 (= (= lt!1789445 lt!1789147) (= lambda!193284 lambda!193257))))

(assert (=> b!4629735 true))

(declare-fun bs!1026444 () Bool)

(declare-fun d!1458832 () Bool)

(assert (= bs!1026444 (and d!1458832 d!1458802)))

(declare-fun lambda!193285 () Int)

(declare-fun lt!1789447 () ListMap!4315)

(assert (=> bs!1026444 (= (= lt!1789447 lt!1789369) (= lambda!193285 lambda!193274))))

(declare-fun bs!1026445 () Bool)

(assert (= bs!1026445 (and d!1458832 b!4629654)))

(assert (=> bs!1026445 (= (= lt!1789447 lt!1789319) (= lambda!193285 lambda!193259))))

(declare-fun bs!1026446 () Bool)

(assert (= bs!1026446 (and d!1458832 b!4629670)))

(assert (=> bs!1026446 (= (= lt!1789447 (ListMap!4316 Nil!51584)) (= lambda!193285 lambda!193267))))

(declare-fun bs!1026447 () Bool)

(assert (= bs!1026447 (and d!1458832 b!4629732)))

(assert (=> bs!1026447 (= (= lt!1789447 (ListMap!4316 Nil!51584)) (= lambda!193285 lambda!193282))))

(declare-fun bs!1026448 () Bool)

(assert (= bs!1026448 (and d!1458832 b!4629678)))

(assert (=> bs!1026448 (= (= lt!1789447 lt!1789367) (= lambda!193285 lambda!193273))))

(declare-fun bs!1026449 () Bool)

(assert (= bs!1026449 (and d!1458832 b!4629673)))

(assert (=> bs!1026449 (= (= lt!1789447 (ListMap!4316 Nil!51584)) (= lambda!193285 lambda!193268))))

(assert (=> bs!1026449 (= (= lt!1789447 lt!1789346) (= lambda!193285 lambda!193269))))

(declare-fun bs!1026450 () Bool)

(assert (= bs!1026450 (and d!1458832 b!4629735)))

(assert (=> bs!1026450 (= (= lt!1789447 (ListMap!4316 Nil!51584)) (= lambda!193285 lambda!193283))))

(assert (=> bs!1026448 (= (= lt!1789447 (ListMap!4316 Nil!51584)) (= lambda!193285 lambda!193272))))

(declare-fun bs!1026451 () Bool)

(assert (= bs!1026451 (and d!1458832 d!1458796)))

(assert (=> bs!1026451 (= (= lt!1789447 lt!1789348) (= lambda!193285 lambda!193270))))

(declare-fun bs!1026452 () Bool)

(assert (= bs!1026452 (and d!1458832 d!1458784)))

(assert (=> bs!1026452 (= (= lt!1789447 lt!1789321) (= lambda!193285 lambda!193260))))

(declare-fun bs!1026453 () Bool)

(assert (= bs!1026453 (and d!1458832 b!4629675)))

(assert (=> bs!1026453 (= (= lt!1789447 (ListMap!4316 Nil!51584)) (= lambda!193285 lambda!193271))))

(assert (=> bs!1026450 (= (= lt!1789447 lt!1789445) (= lambda!193285 lambda!193284))))

(assert (=> bs!1026445 (= (= lt!1789447 lt!1789147) (= lambda!193285 lambda!193258))))

(declare-fun bs!1026454 () Bool)

(assert (= bs!1026454 (and d!1458832 b!4629651)))

(assert (=> bs!1026454 (= (= lt!1789447 lt!1789147) (= lambda!193285 lambda!193257))))

(assert (=> d!1458832 true))

(declare-fun b!4629731 () Bool)

(declare-fun res!1942191 () Bool)

(declare-fun e!2888056 () Bool)

(assert (=> b!4629731 (=> (not res!1942191) (not e!2888056))))

(assert (=> b!4629731 (= res!1942191 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193285))))

(assert (=> d!1458832 e!2888056))

(declare-fun res!1942189 () Bool)

(assert (=> d!1458832 (=> (not res!1942189) (not e!2888056))))

(assert (=> d!1458832 (= res!1942189 (forall!10853 (Cons!51584 lt!1789142 lt!1789136) lambda!193285))))

(declare-fun e!2888054 () ListMap!4315)

(assert (=> d!1458832 (= lt!1789447 e!2888054)))

(declare-fun c!792471 () Bool)

(assert (=> d!1458832 (= c!792471 (is-Nil!51584 (Cons!51584 lt!1789142 lt!1789136)))))

(assert (=> d!1458832 (noDuplicateKeys!1523 (Cons!51584 lt!1789142 lt!1789136))))

(assert (=> d!1458832 (= (addToMapMapFromBucket!984 (Cons!51584 lt!1789142 lt!1789136) (ListMap!4316 Nil!51584)) lt!1789447)))

(declare-fun bm!323018 () Bool)

(declare-fun lt!1789443 () ListMap!4315)

(declare-fun call!323025 () Bool)

(assert (=> bm!323018 (= call!323025 (forall!10853 (ite c!792471 (toList!5011 (ListMap!4316 Nil!51584)) (toList!5011 lt!1789443)) (ite c!792471 lambda!193282 lambda!193284)))))

(assert (=> b!4629732 (= e!2888054 (ListMap!4316 Nil!51584))))

(declare-fun lt!1789452 () Unit!113006)

(declare-fun call!323023 () Unit!113006)

(assert (=> b!4629732 (= lt!1789452 call!323023)))

(assert (=> b!4629732 call!323025))

(declare-fun lt!1789450 () Unit!113006)

(assert (=> b!4629732 (= lt!1789450 lt!1789452)))

(declare-fun call!323024 () Bool)

(assert (=> b!4629732 call!323024))

(declare-fun lt!1789446 () Unit!113006)

(declare-fun Unit!113045 () Unit!113006)

(assert (=> b!4629732 (= lt!1789446 Unit!113045)))

(declare-fun bm!323019 () Bool)

(assert (=> bm!323019 (= call!323024 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) (ite c!792471 lambda!193282 lambda!193284)))))

(declare-fun bm!323020 () Bool)

(assert (=> bm!323020 (= call!323023 (lemmaContainsAllItsOwnKeys!521 (ListMap!4316 Nil!51584)))))

(declare-fun b!4629733 () Bool)

(assert (=> b!4629733 (= e!2888056 (invariantList!1219 (toList!5011 lt!1789447)))))

(declare-fun b!4629734 () Bool)

(declare-fun e!2888055 () Bool)

(assert (=> b!4629734 (= e!2888055 call!323024)))

(assert (=> b!4629735 (= e!2888054 lt!1789445)))

(assert (=> b!4629735 (= lt!1789443 (+!1889 (ListMap!4316 Nil!51584) (h!57650 (Cons!51584 lt!1789142 lt!1789136))))))

(assert (=> b!4629735 (= lt!1789445 (addToMapMapFromBucket!984 (t!358756 (Cons!51584 lt!1789142 lt!1789136)) (+!1889 (ListMap!4316 Nil!51584) (h!57650 (Cons!51584 lt!1789142 lt!1789136)))))))

(declare-fun lt!1789457 () Unit!113006)

(assert (=> b!4629735 (= lt!1789457 call!323023)))

(assert (=> b!4629735 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193283)))

(declare-fun lt!1789454 () Unit!113006)

(assert (=> b!4629735 (= lt!1789454 lt!1789457)))

(assert (=> b!4629735 call!323025))

(declare-fun lt!1789440 () Unit!113006)

(declare-fun Unit!113046 () Unit!113006)

(assert (=> b!4629735 (= lt!1789440 Unit!113046)))

(assert (=> b!4629735 (forall!10853 (t!358756 (Cons!51584 lt!1789142 lt!1789136)) lambda!193284)))

(declare-fun lt!1789442 () Unit!113006)

(declare-fun Unit!113047 () Unit!113006)

(assert (=> b!4629735 (= lt!1789442 Unit!113047)))

(declare-fun lt!1789444 () Unit!113006)

(declare-fun Unit!113048 () Unit!113006)

(assert (=> b!4629735 (= lt!1789444 Unit!113048)))

(declare-fun lt!1789449 () Unit!113006)

(assert (=> b!4629735 (= lt!1789449 (forallContained!3085 (toList!5011 lt!1789443) lambda!193284 (h!57650 (Cons!51584 lt!1789142 lt!1789136))))))

(assert (=> b!4629735 (contains!14662 lt!1789443 (_1!29563 (h!57650 (Cons!51584 lt!1789142 lt!1789136))))))

(declare-fun lt!1789441 () Unit!113006)

(declare-fun Unit!113049 () Unit!113006)

(assert (=> b!4629735 (= lt!1789441 Unit!113049)))

(assert (=> b!4629735 (contains!14662 lt!1789445 (_1!29563 (h!57650 (Cons!51584 lt!1789142 lt!1789136))))))

(declare-fun lt!1789456 () Unit!113006)

(declare-fun Unit!113050 () Unit!113006)

(assert (=> b!4629735 (= lt!1789456 Unit!113050)))

(assert (=> b!4629735 (forall!10853 (Cons!51584 lt!1789142 lt!1789136) lambda!193284)))

(declare-fun lt!1789460 () Unit!113006)

(declare-fun Unit!113051 () Unit!113006)

(assert (=> b!4629735 (= lt!1789460 Unit!113051)))

(assert (=> b!4629735 (forall!10853 (toList!5011 lt!1789443) lambda!193284)))

(declare-fun lt!1789455 () Unit!113006)

(declare-fun Unit!113052 () Unit!113006)

(assert (=> b!4629735 (= lt!1789455 Unit!113052)))

(declare-fun lt!1789453 () Unit!113006)

(declare-fun Unit!113053 () Unit!113006)

(assert (=> b!4629735 (= lt!1789453 Unit!113053)))

(declare-fun lt!1789459 () Unit!113006)

(assert (=> b!4629735 (= lt!1789459 (addForallContainsKeyThenBeforeAdding!520 (ListMap!4316 Nil!51584) lt!1789445 (_1!29563 (h!57650 (Cons!51584 lt!1789142 lt!1789136))) (_2!29563 (h!57650 (Cons!51584 lt!1789142 lt!1789136)))))))

(assert (=> b!4629735 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193284)))

(declare-fun lt!1789448 () Unit!113006)

(assert (=> b!4629735 (= lt!1789448 lt!1789459)))

(assert (=> b!4629735 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193284)))

(declare-fun lt!1789451 () Unit!113006)

(declare-fun Unit!113054 () Unit!113006)

(assert (=> b!4629735 (= lt!1789451 Unit!113054)))

(declare-fun res!1942190 () Bool)

(assert (=> b!4629735 (= res!1942190 (forall!10853 (Cons!51584 lt!1789142 lt!1789136) lambda!193284))))

(assert (=> b!4629735 (=> (not res!1942190) (not e!2888055))))

(assert (=> b!4629735 e!2888055))

(declare-fun lt!1789458 () Unit!113006)

(declare-fun Unit!113055 () Unit!113006)

(assert (=> b!4629735 (= lt!1789458 Unit!113055)))

(assert (= (and d!1458832 c!792471) b!4629732))

(assert (= (and d!1458832 (not c!792471)) b!4629735))

(assert (= (and b!4629735 res!1942190) b!4629734))

(assert (= (or b!4629732 b!4629735) bm!323020))

(assert (= (or b!4629732 b!4629734) bm!323019))

(assert (= (or b!4629732 b!4629735) bm!323018))

(assert (= (and d!1458832 res!1942189) b!4629731))

(assert (= (and b!4629731 res!1942191) b!4629733))

(declare-fun m!5477217 () Bool)

(assert (=> b!4629733 m!5477217))

(declare-fun m!5477219 () Bool)

(assert (=> b!4629731 m!5477219))

(declare-fun m!5477221 () Bool)

(assert (=> b!4629735 m!5477221))

(declare-fun m!5477223 () Bool)

(assert (=> b!4629735 m!5477223))

(declare-fun m!5477225 () Bool)

(assert (=> b!4629735 m!5477225))

(declare-fun m!5477227 () Bool)

(assert (=> b!4629735 m!5477227))

(declare-fun m!5477229 () Bool)

(assert (=> b!4629735 m!5477229))

(assert (=> b!4629735 m!5477221))

(declare-fun m!5477231 () Bool)

(assert (=> b!4629735 m!5477231))

(declare-fun m!5477233 () Bool)

(assert (=> b!4629735 m!5477233))

(declare-fun m!5477235 () Bool)

(assert (=> b!4629735 m!5477235))

(assert (=> b!4629735 m!5477227))

(assert (=> b!4629735 m!5477233))

(declare-fun m!5477237 () Bool)

(assert (=> b!4629735 m!5477237))

(declare-fun m!5477239 () Bool)

(assert (=> b!4629735 m!5477239))

(declare-fun m!5477241 () Bool)

(assert (=> b!4629735 m!5477241))

(declare-fun m!5477243 () Bool)

(assert (=> bm!323019 m!5477243))

(declare-fun m!5477245 () Bool)

(assert (=> d!1458832 m!5477245))

(declare-fun m!5477247 () Bool)

(assert (=> d!1458832 m!5477247))

(declare-fun m!5477249 () Bool)

(assert (=> bm!323018 m!5477249))

(assert (=> bm!323020 m!5477079))

(assert (=> b!4629546 d!1458832))

(declare-fun bs!1026455 () Bool)

(declare-fun d!1458836 () Bool)

(assert (= bs!1026455 (and d!1458836 b!4629539)))

(declare-fun lambda!193286 () Int)

(assert (=> bs!1026455 (= lambda!193286 lambda!193225)))

(declare-fun bs!1026456 () Bool)

(assert (= bs!1026456 (and d!1458836 d!1458790)))

(assert (=> bs!1026456 (= lambda!193286 lambda!193266)))

(declare-fun bs!1026457 () Bool)

(assert (= bs!1026457 (and d!1458836 d!1458830)))

(assert (=> bs!1026457 (= lambda!193286 lambda!193281)))

(declare-fun lt!1789464 () ListMap!4315)

(assert (=> d!1458836 (invariantList!1219 (toList!5011 lt!1789464))))

(declare-fun e!2888057 () ListMap!4315)

(assert (=> d!1458836 (= lt!1789464 e!2888057)))

(declare-fun c!792472 () Bool)

(assert (=> d!1458836 (= c!792472 (is-Cons!51585 lt!1789154))))

(assert (=> d!1458836 (forall!10854 lt!1789154 lambda!193286)))

(assert (=> d!1458836 (= (extractMap!1579 lt!1789154) lt!1789464)))

(declare-fun b!4629736 () Bool)

(assert (=> b!4629736 (= e!2888057 (addToMapMapFromBucket!984 (_2!29564 (h!57651 lt!1789154)) (extractMap!1579 (t!358757 lt!1789154))))))

(declare-fun b!4629737 () Bool)

(assert (=> b!4629737 (= e!2888057 (ListMap!4316 Nil!51584))))

(assert (= (and d!1458836 c!792472) b!4629736))

(assert (= (and d!1458836 (not c!792472)) b!4629737))

(declare-fun m!5477251 () Bool)

(assert (=> d!1458836 m!5477251))

(declare-fun m!5477253 () Bool)

(assert (=> d!1458836 m!5477253))

(declare-fun m!5477255 () Bool)

(assert (=> b!4629736 m!5477255))

(assert (=> b!4629736 m!5477255))

(declare-fun m!5477257 () Bool)

(assert (=> b!4629736 m!5477257))

(assert (=> b!4629546 d!1458836))

(declare-fun d!1458838 () Bool)

(assert (=> d!1458838 (= (eq!838 (addToMapMapFromBucket!984 (Cons!51584 lt!1789142 lt!1789136) (ListMap!4316 Nil!51584)) (+!1889 (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789142)) (= (content!8842 (toList!5011 (addToMapMapFromBucket!984 (Cons!51584 lt!1789142 lt!1789136) (ListMap!4316 Nil!51584)))) (content!8842 (toList!5011 (+!1889 (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789142)))))))

(declare-fun bs!1026458 () Bool)

(assert (= bs!1026458 d!1458838))

(declare-fun m!5477259 () Bool)

(assert (=> bs!1026458 m!5477259))

(declare-fun m!5477261 () Bool)

(assert (=> bs!1026458 m!5477261))

(assert (=> b!4629546 d!1458838))

(declare-fun bs!1026459 () Bool)

(declare-fun b!4629739 () Bool)

(assert (= bs!1026459 (and b!4629739 d!1458802)))

(declare-fun lambda!193287 () Int)

(assert (=> bs!1026459 (= (= (ListMap!4316 Nil!51584) lt!1789369) (= lambda!193287 lambda!193274))))

(declare-fun bs!1026460 () Bool)

(assert (= bs!1026460 (and b!4629739 b!4629654)))

(assert (=> bs!1026460 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193287 lambda!193259))))

(declare-fun bs!1026461 () Bool)

(assert (= bs!1026461 (and b!4629739 b!4629670)))

(assert (=> bs!1026461 (= lambda!193287 lambda!193267)))

(declare-fun bs!1026462 () Bool)

(assert (= bs!1026462 (and b!4629739 b!4629732)))

(assert (=> bs!1026462 (= lambda!193287 lambda!193282)))

(declare-fun bs!1026463 () Bool)

(assert (= bs!1026463 (and b!4629739 b!4629678)))

(assert (=> bs!1026463 (= (= (ListMap!4316 Nil!51584) lt!1789367) (= lambda!193287 lambda!193273))))

(declare-fun bs!1026464 () Bool)

(assert (= bs!1026464 (and b!4629739 b!4629673)))

(assert (=> bs!1026464 (= lambda!193287 lambda!193268)))

(assert (=> bs!1026464 (= (= (ListMap!4316 Nil!51584) lt!1789346) (= lambda!193287 lambda!193269))))

(declare-fun bs!1026465 () Bool)

(assert (= bs!1026465 (and b!4629739 b!4629735)))

(assert (=> bs!1026465 (= lambda!193287 lambda!193283)))

(declare-fun bs!1026466 () Bool)

(assert (= bs!1026466 (and b!4629739 d!1458796)))

(assert (=> bs!1026466 (= (= (ListMap!4316 Nil!51584) lt!1789348) (= lambda!193287 lambda!193270))))

(declare-fun bs!1026467 () Bool)

(assert (= bs!1026467 (and b!4629739 d!1458784)))

(assert (=> bs!1026467 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193287 lambda!193260))))

(declare-fun bs!1026468 () Bool)

(assert (= bs!1026468 (and b!4629739 b!4629675)))

(assert (=> bs!1026468 (= lambda!193287 lambda!193271)))

(assert (=> bs!1026465 (= (= (ListMap!4316 Nil!51584) lt!1789445) (= lambda!193287 lambda!193284))))

(assert (=> bs!1026460 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193287 lambda!193258))))

(declare-fun bs!1026469 () Bool)

(assert (= bs!1026469 (and b!4629739 b!4629651)))

(assert (=> bs!1026469 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193287 lambda!193257))))

(declare-fun bs!1026470 () Bool)

(assert (= bs!1026470 (and b!4629739 d!1458832)))

(assert (=> bs!1026470 (= (= (ListMap!4316 Nil!51584) lt!1789447) (= lambda!193287 lambda!193285))))

(assert (=> bs!1026463 (= lambda!193287 lambda!193272)))

(assert (=> b!4629739 true))

(declare-fun bs!1026471 () Bool)

(declare-fun b!4629742 () Bool)

(assert (= bs!1026471 (and b!4629742 d!1458802)))

(declare-fun lambda!193288 () Int)

(assert (=> bs!1026471 (= (= (ListMap!4316 Nil!51584) lt!1789369) (= lambda!193288 lambda!193274))))

(declare-fun bs!1026472 () Bool)

(assert (= bs!1026472 (and b!4629742 b!4629654)))

(assert (=> bs!1026472 (= (= (ListMap!4316 Nil!51584) lt!1789319) (= lambda!193288 lambda!193259))))

(declare-fun bs!1026473 () Bool)

(assert (= bs!1026473 (and b!4629742 b!4629670)))

(assert (=> bs!1026473 (= lambda!193288 lambda!193267)))

(declare-fun bs!1026474 () Bool)

(assert (= bs!1026474 (and b!4629742 b!4629732)))

(assert (=> bs!1026474 (= lambda!193288 lambda!193282)))

(declare-fun bs!1026475 () Bool)

(assert (= bs!1026475 (and b!4629742 b!4629678)))

(assert (=> bs!1026475 (= (= (ListMap!4316 Nil!51584) lt!1789367) (= lambda!193288 lambda!193273))))

(declare-fun bs!1026476 () Bool)

(assert (= bs!1026476 (and b!4629742 b!4629673)))

(assert (=> bs!1026476 (= lambda!193288 lambda!193268)))

(assert (=> bs!1026476 (= (= (ListMap!4316 Nil!51584) lt!1789346) (= lambda!193288 lambda!193269))))

(declare-fun bs!1026477 () Bool)

(assert (= bs!1026477 (and b!4629742 b!4629735)))

(assert (=> bs!1026477 (= lambda!193288 lambda!193283)))

(declare-fun bs!1026478 () Bool)

(assert (= bs!1026478 (and b!4629742 b!4629739)))

(assert (=> bs!1026478 (= lambda!193288 lambda!193287)))

(declare-fun bs!1026479 () Bool)

(assert (= bs!1026479 (and b!4629742 d!1458796)))

(assert (=> bs!1026479 (= (= (ListMap!4316 Nil!51584) lt!1789348) (= lambda!193288 lambda!193270))))

(declare-fun bs!1026480 () Bool)

(assert (= bs!1026480 (and b!4629742 d!1458784)))

(assert (=> bs!1026480 (= (= (ListMap!4316 Nil!51584) lt!1789321) (= lambda!193288 lambda!193260))))

(declare-fun bs!1026481 () Bool)

(assert (= bs!1026481 (and b!4629742 b!4629675)))

(assert (=> bs!1026481 (= lambda!193288 lambda!193271)))

(assert (=> bs!1026477 (= (= (ListMap!4316 Nil!51584) lt!1789445) (= lambda!193288 lambda!193284))))

(assert (=> bs!1026472 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193288 lambda!193258))))

(declare-fun bs!1026482 () Bool)

(assert (= bs!1026482 (and b!4629742 b!4629651)))

(assert (=> bs!1026482 (= (= (ListMap!4316 Nil!51584) lt!1789147) (= lambda!193288 lambda!193257))))

(declare-fun bs!1026483 () Bool)

(assert (= bs!1026483 (and b!4629742 d!1458832)))

(assert (=> bs!1026483 (= (= (ListMap!4316 Nil!51584) lt!1789447) (= lambda!193288 lambda!193285))))

(assert (=> bs!1026475 (= lambda!193288 lambda!193272)))

(assert (=> b!4629742 true))

(declare-fun lambda!193289 () Int)

(declare-fun lt!1789470 () ListMap!4315)

(assert (=> bs!1026471 (= (= lt!1789470 lt!1789369) (= lambda!193289 lambda!193274))))

(assert (=> bs!1026472 (= (= lt!1789470 lt!1789319) (= lambda!193289 lambda!193259))))

(assert (=> bs!1026473 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193267))))

(assert (=> bs!1026474 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193282))))

(assert (=> bs!1026475 (= (= lt!1789470 lt!1789367) (= lambda!193289 lambda!193273))))

(assert (=> bs!1026476 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193268))))

(assert (=> bs!1026476 (= (= lt!1789470 lt!1789346) (= lambda!193289 lambda!193269))))

(assert (=> bs!1026477 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193283))))

(assert (=> bs!1026478 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193287))))

(assert (=> bs!1026479 (= (= lt!1789470 lt!1789348) (= lambda!193289 lambda!193270))))

(assert (=> bs!1026480 (= (= lt!1789470 lt!1789321) (= lambda!193289 lambda!193260))))

(assert (=> bs!1026481 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193271))))

(assert (=> bs!1026477 (= (= lt!1789470 lt!1789445) (= lambda!193289 lambda!193284))))

(assert (=> bs!1026472 (= (= lt!1789470 lt!1789147) (= lambda!193289 lambda!193258))))

(assert (=> b!4629742 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193288))))

(assert (=> bs!1026482 (= (= lt!1789470 lt!1789147) (= lambda!193289 lambda!193257))))

(assert (=> bs!1026483 (= (= lt!1789470 lt!1789447) (= lambda!193289 lambda!193285))))

(assert (=> bs!1026475 (= (= lt!1789470 (ListMap!4316 Nil!51584)) (= lambda!193289 lambda!193272))))

(assert (=> b!4629742 true))

(declare-fun bs!1026484 () Bool)

(declare-fun d!1458840 () Bool)

(assert (= bs!1026484 (and d!1458840 d!1458802)))

(declare-fun lt!1789472 () ListMap!4315)

(declare-fun lambda!193290 () Int)

(assert (=> bs!1026484 (= (= lt!1789472 lt!1789369) (= lambda!193290 lambda!193274))))

(declare-fun bs!1026485 () Bool)

(assert (= bs!1026485 (and d!1458840 b!4629654)))

(assert (=> bs!1026485 (= (= lt!1789472 lt!1789319) (= lambda!193290 lambda!193259))))

(declare-fun bs!1026486 () Bool)

(assert (= bs!1026486 (and d!1458840 b!4629670)))

(assert (=> bs!1026486 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193267))))

(declare-fun bs!1026487 () Bool)

(assert (= bs!1026487 (and d!1458840 b!4629742)))

(assert (=> bs!1026487 (= (= lt!1789472 lt!1789470) (= lambda!193290 lambda!193289))))

(declare-fun bs!1026488 () Bool)

(assert (= bs!1026488 (and d!1458840 b!4629732)))

(assert (=> bs!1026488 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193282))))

(declare-fun bs!1026489 () Bool)

(assert (= bs!1026489 (and d!1458840 b!4629678)))

(assert (=> bs!1026489 (= (= lt!1789472 lt!1789367) (= lambda!193290 lambda!193273))))

(declare-fun bs!1026490 () Bool)

(assert (= bs!1026490 (and d!1458840 b!4629673)))

(assert (=> bs!1026490 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193268))))

(assert (=> bs!1026490 (= (= lt!1789472 lt!1789346) (= lambda!193290 lambda!193269))))

(declare-fun bs!1026491 () Bool)

(assert (= bs!1026491 (and d!1458840 b!4629735)))

(assert (=> bs!1026491 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193283))))

(declare-fun bs!1026492 () Bool)

(assert (= bs!1026492 (and d!1458840 b!4629739)))

(assert (=> bs!1026492 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193287))))

(declare-fun bs!1026493 () Bool)

(assert (= bs!1026493 (and d!1458840 d!1458796)))

(assert (=> bs!1026493 (= (= lt!1789472 lt!1789348) (= lambda!193290 lambda!193270))))

(declare-fun bs!1026494 () Bool)

(assert (= bs!1026494 (and d!1458840 d!1458784)))

(assert (=> bs!1026494 (= (= lt!1789472 lt!1789321) (= lambda!193290 lambda!193260))))

(declare-fun bs!1026495 () Bool)

(assert (= bs!1026495 (and d!1458840 b!4629675)))

(assert (=> bs!1026495 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193271))))

(assert (=> bs!1026491 (= (= lt!1789472 lt!1789445) (= lambda!193290 lambda!193284))))

(assert (=> bs!1026485 (= (= lt!1789472 lt!1789147) (= lambda!193290 lambda!193258))))

(assert (=> bs!1026487 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193288))))

(declare-fun bs!1026496 () Bool)

(assert (= bs!1026496 (and d!1458840 b!4629651)))

(assert (=> bs!1026496 (= (= lt!1789472 lt!1789147) (= lambda!193290 lambda!193257))))

(declare-fun bs!1026497 () Bool)

(assert (= bs!1026497 (and d!1458840 d!1458832)))

(assert (=> bs!1026497 (= (= lt!1789472 lt!1789447) (= lambda!193290 lambda!193285))))

(assert (=> bs!1026489 (= (= lt!1789472 (ListMap!4316 Nil!51584)) (= lambda!193290 lambda!193272))))

(assert (=> d!1458840 true))

(declare-fun b!4629738 () Bool)

(declare-fun res!1942194 () Bool)

(declare-fun e!2888060 () Bool)

(assert (=> b!4629738 (=> (not res!1942194) (not e!2888060))))

(assert (=> b!4629738 (= res!1942194 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193290))))

(assert (=> d!1458840 e!2888060))

(declare-fun res!1942192 () Bool)

(assert (=> d!1458840 (=> (not res!1942192) (not e!2888060))))

(assert (=> d!1458840 (= res!1942192 (forall!10853 lt!1789136 lambda!193290))))

(declare-fun e!2888058 () ListMap!4315)

(assert (=> d!1458840 (= lt!1789472 e!2888058)))

(declare-fun c!792473 () Bool)

(assert (=> d!1458840 (= c!792473 (is-Nil!51584 lt!1789136))))

(assert (=> d!1458840 (noDuplicateKeys!1523 lt!1789136)))

(assert (=> d!1458840 (= (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789472)))

(declare-fun lt!1789468 () ListMap!4315)

(declare-fun bm!323021 () Bool)

(declare-fun call!323028 () Bool)

(assert (=> bm!323021 (= call!323028 (forall!10853 (ite c!792473 (toList!5011 (ListMap!4316 Nil!51584)) (toList!5011 lt!1789468)) (ite c!792473 lambda!193287 lambda!193289)))))

(assert (=> b!4629739 (= e!2888058 (ListMap!4316 Nil!51584))))

(declare-fun lt!1789477 () Unit!113006)

(declare-fun call!323026 () Unit!113006)

(assert (=> b!4629739 (= lt!1789477 call!323026)))

(assert (=> b!4629739 call!323028))

(declare-fun lt!1789475 () Unit!113006)

(assert (=> b!4629739 (= lt!1789475 lt!1789477)))

(declare-fun call!323027 () Bool)

(assert (=> b!4629739 call!323027))

(declare-fun lt!1789471 () Unit!113006)

(declare-fun Unit!113058 () Unit!113006)

(assert (=> b!4629739 (= lt!1789471 Unit!113058)))

(declare-fun bm!323022 () Bool)

(assert (=> bm!323022 (= call!323027 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) (ite c!792473 lambda!193287 lambda!193289)))))

(declare-fun bm!323023 () Bool)

(assert (=> bm!323023 (= call!323026 (lemmaContainsAllItsOwnKeys!521 (ListMap!4316 Nil!51584)))))

(declare-fun b!4629740 () Bool)

(assert (=> b!4629740 (= e!2888060 (invariantList!1219 (toList!5011 lt!1789472)))))

(declare-fun b!4629741 () Bool)

(declare-fun e!2888059 () Bool)

(assert (=> b!4629741 (= e!2888059 call!323027)))

(assert (=> b!4629742 (= e!2888058 lt!1789470)))

(assert (=> b!4629742 (= lt!1789468 (+!1889 (ListMap!4316 Nil!51584) (h!57650 lt!1789136)))))

(assert (=> b!4629742 (= lt!1789470 (addToMapMapFromBucket!984 (t!358756 lt!1789136) (+!1889 (ListMap!4316 Nil!51584) (h!57650 lt!1789136))))))

(declare-fun lt!1789482 () Unit!113006)

(assert (=> b!4629742 (= lt!1789482 call!323026)))

(assert (=> b!4629742 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193288)))

(declare-fun lt!1789479 () Unit!113006)

(assert (=> b!4629742 (= lt!1789479 lt!1789482)))

(assert (=> b!4629742 call!323028))

(declare-fun lt!1789465 () Unit!113006)

(declare-fun Unit!113059 () Unit!113006)

(assert (=> b!4629742 (= lt!1789465 Unit!113059)))

(assert (=> b!4629742 (forall!10853 (t!358756 lt!1789136) lambda!193289)))

(declare-fun lt!1789467 () Unit!113006)

(declare-fun Unit!113060 () Unit!113006)

(assert (=> b!4629742 (= lt!1789467 Unit!113060)))

(declare-fun lt!1789469 () Unit!113006)

(declare-fun Unit!113061 () Unit!113006)

(assert (=> b!4629742 (= lt!1789469 Unit!113061)))

(declare-fun lt!1789474 () Unit!113006)

(assert (=> b!4629742 (= lt!1789474 (forallContained!3085 (toList!5011 lt!1789468) lambda!193289 (h!57650 lt!1789136)))))

(assert (=> b!4629742 (contains!14662 lt!1789468 (_1!29563 (h!57650 lt!1789136)))))

(declare-fun lt!1789466 () Unit!113006)

(declare-fun Unit!113062 () Unit!113006)

(assert (=> b!4629742 (= lt!1789466 Unit!113062)))

(assert (=> b!4629742 (contains!14662 lt!1789470 (_1!29563 (h!57650 lt!1789136)))))

(declare-fun lt!1789481 () Unit!113006)

(declare-fun Unit!113063 () Unit!113006)

(assert (=> b!4629742 (= lt!1789481 Unit!113063)))

(assert (=> b!4629742 (forall!10853 lt!1789136 lambda!193289)))

(declare-fun lt!1789485 () Unit!113006)

(declare-fun Unit!113064 () Unit!113006)

(assert (=> b!4629742 (= lt!1789485 Unit!113064)))

(assert (=> b!4629742 (forall!10853 (toList!5011 lt!1789468) lambda!193289)))

(declare-fun lt!1789480 () Unit!113006)

(declare-fun Unit!113065 () Unit!113006)

(assert (=> b!4629742 (= lt!1789480 Unit!113065)))

(declare-fun lt!1789478 () Unit!113006)

(declare-fun Unit!113066 () Unit!113006)

(assert (=> b!4629742 (= lt!1789478 Unit!113066)))

(declare-fun lt!1789484 () Unit!113006)

(assert (=> b!4629742 (= lt!1789484 (addForallContainsKeyThenBeforeAdding!520 (ListMap!4316 Nil!51584) lt!1789470 (_1!29563 (h!57650 lt!1789136)) (_2!29563 (h!57650 lt!1789136))))))

(assert (=> b!4629742 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193289)))

(declare-fun lt!1789473 () Unit!113006)

(assert (=> b!4629742 (= lt!1789473 lt!1789484)))

(assert (=> b!4629742 (forall!10853 (toList!5011 (ListMap!4316 Nil!51584)) lambda!193289)))

(declare-fun lt!1789476 () Unit!113006)

(declare-fun Unit!113067 () Unit!113006)

(assert (=> b!4629742 (= lt!1789476 Unit!113067)))

(declare-fun res!1942193 () Bool)

(assert (=> b!4629742 (= res!1942193 (forall!10853 lt!1789136 lambda!193289))))

(assert (=> b!4629742 (=> (not res!1942193) (not e!2888059))))

(assert (=> b!4629742 e!2888059))

(declare-fun lt!1789483 () Unit!113006)

(declare-fun Unit!113068 () Unit!113006)

(assert (=> b!4629742 (= lt!1789483 Unit!113068)))

(assert (= (and d!1458840 c!792473) b!4629739))

(assert (= (and d!1458840 (not c!792473)) b!4629742))

(assert (= (and b!4629742 res!1942193) b!4629741))

(assert (= (or b!4629739 b!4629742) bm!323023))

(assert (= (or b!4629739 b!4629741) bm!323022))

(assert (= (or b!4629739 b!4629742) bm!323021))

(assert (= (and d!1458840 res!1942192) b!4629738))

(assert (= (and b!4629738 res!1942194) b!4629740))

(declare-fun m!5477263 () Bool)

(assert (=> b!4629740 m!5477263))

(declare-fun m!5477265 () Bool)

(assert (=> b!4629738 m!5477265))

(declare-fun m!5477267 () Bool)

(assert (=> b!4629742 m!5477267))

(declare-fun m!5477269 () Bool)

(assert (=> b!4629742 m!5477269))

(declare-fun m!5477271 () Bool)

(assert (=> b!4629742 m!5477271))

(declare-fun m!5477273 () Bool)

(assert (=> b!4629742 m!5477273))

(declare-fun m!5477275 () Bool)

(assert (=> b!4629742 m!5477275))

(assert (=> b!4629742 m!5477267))

(declare-fun m!5477277 () Bool)

(assert (=> b!4629742 m!5477277))

(declare-fun m!5477279 () Bool)

(assert (=> b!4629742 m!5477279))

(declare-fun m!5477281 () Bool)

(assert (=> b!4629742 m!5477281))

(assert (=> b!4629742 m!5477273))

(assert (=> b!4629742 m!5477279))

(declare-fun m!5477283 () Bool)

(assert (=> b!4629742 m!5477283))

(declare-fun m!5477285 () Bool)

(assert (=> b!4629742 m!5477285))

(declare-fun m!5477287 () Bool)

(assert (=> b!4629742 m!5477287))

(declare-fun m!5477289 () Bool)

(assert (=> bm!323022 m!5477289))

(declare-fun m!5477291 () Bool)

(assert (=> d!1458840 m!5477291))

(declare-fun m!5477293 () Bool)

(assert (=> d!1458840 m!5477293))

(declare-fun m!5477295 () Bool)

(assert (=> bm!323021 m!5477295))

(assert (=> bm!323023 m!5477079))

(assert (=> b!4629546 d!1458840))

(declare-fun d!1458842 () Bool)

(assert (=> d!1458842 (= (eq!838 (addToMapMapFromBucket!984 (Cons!51584 lt!1789125 lt!1789153) (ListMap!4316 Nil!51584)) (+!1889 (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789125)) (= (content!8842 (toList!5011 (addToMapMapFromBucket!984 (Cons!51584 lt!1789125 lt!1789153) (ListMap!4316 Nil!51584)))) (content!8842 (toList!5011 (+!1889 (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789125)))))))

(declare-fun bs!1026498 () Bool)

(assert (= bs!1026498 d!1458842))

(declare-fun m!5477297 () Bool)

(assert (=> bs!1026498 m!5477297))

(declare-fun m!5477299 () Bool)

(assert (=> bs!1026498 m!5477299))

(assert (=> b!4629546 d!1458842))

(declare-fun d!1458844 () Bool)

(declare-fun e!2888061 () Bool)

(assert (=> d!1458844 e!2888061))

(declare-fun res!1942196 () Bool)

(assert (=> d!1458844 (=> (not res!1942196) (not e!2888061))))

(declare-fun lt!1789487 () ListMap!4315)

(assert (=> d!1458844 (= res!1942196 (contains!14662 lt!1789487 (_1!29563 lt!1789125)))))

(declare-fun lt!1789488 () List!51708)

(assert (=> d!1458844 (= lt!1789487 (ListMap!4316 lt!1789488))))

(declare-fun lt!1789489 () Unit!113006)

(declare-fun lt!1789486 () Unit!113006)

(assert (=> d!1458844 (= lt!1789489 lt!1789486)))

(assert (=> d!1458844 (= (getValueByKey!1481 lt!1789488 (_1!29563 lt!1789125)) (Some!11638 (_2!29563 lt!1789125)))))

(assert (=> d!1458844 (= lt!1789486 (lemmaContainsTupThenGetReturnValue!863 lt!1789488 (_1!29563 lt!1789125) (_2!29563 lt!1789125)))))

(assert (=> d!1458844 (= lt!1789488 (insertNoDuplicatedKeys!371 (toList!5011 (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584))) (_1!29563 lt!1789125) (_2!29563 lt!1789125)))))

(assert (=> d!1458844 (= (+!1889 (addToMapMapFromBucket!984 lt!1789153 (ListMap!4316 Nil!51584)) lt!1789125) lt!1789487)))

(declare-fun b!4629743 () Bool)

(declare-fun res!1942195 () Bool)

(assert (=> b!4629743 (=> (not res!1942195) (not e!2888061))))

(assert (=> b!4629743 (= res!1942195 (= (getValueByKey!1481 (toList!5011 lt!1789487) (_1!29563 lt!1789125)) (Some!11638 (_2!29563 lt!1789125))))))

(declare-fun b!4629744 () Bool)

(assert (=> b!4629744 (= e!2888061 (contains!14666 (toList!5011 lt!1789487) lt!1789125))))

(assert (= (and d!1458844 res!1942196) b!4629743))

(assert (= (and b!4629743 res!1942195) b!4629744))

(declare-fun m!5477301 () Bool)

(assert (=> d!1458844 m!5477301))

(declare-fun m!5477303 () Bool)

(assert (=> d!1458844 m!5477303))

(declare-fun m!5477305 () Bool)

(assert (=> d!1458844 m!5477305))

(declare-fun m!5477307 () Bool)

(assert (=> d!1458844 m!5477307))

(declare-fun m!5477309 () Bool)

(assert (=> b!4629743 m!5477309))

(declare-fun m!5477311 () Bool)

(assert (=> b!4629744 m!5477311))

(assert (=> b!4629546 d!1458844))

(declare-fun d!1458846 () Bool)

(declare-fun e!2888062 () Bool)

(assert (=> d!1458846 e!2888062))

(declare-fun res!1942198 () Bool)

(assert (=> d!1458846 (=> (not res!1942198) (not e!2888062))))

(declare-fun lt!1789491 () ListMap!4315)

(assert (=> d!1458846 (= res!1942198 (contains!14662 lt!1789491 (_1!29563 lt!1789142)))))

(declare-fun lt!1789492 () List!51708)

(assert (=> d!1458846 (= lt!1789491 (ListMap!4316 lt!1789492))))

(declare-fun lt!1789493 () Unit!113006)

(declare-fun lt!1789490 () Unit!113006)

(assert (=> d!1458846 (= lt!1789493 lt!1789490)))

(assert (=> d!1458846 (= (getValueByKey!1481 lt!1789492 (_1!29563 lt!1789142)) (Some!11638 (_2!29563 lt!1789142)))))

(assert (=> d!1458846 (= lt!1789490 (lemmaContainsTupThenGetReturnValue!863 lt!1789492 (_1!29563 lt!1789142) (_2!29563 lt!1789142)))))

(assert (=> d!1458846 (= lt!1789492 (insertNoDuplicatedKeys!371 (toList!5011 (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584))) (_1!29563 lt!1789142) (_2!29563 lt!1789142)))))

(assert (=> d!1458846 (= (+!1889 (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789142) lt!1789491)))

(declare-fun b!4629745 () Bool)

(declare-fun res!1942197 () Bool)

(assert (=> b!4629745 (=> (not res!1942197) (not e!2888062))))

(assert (=> b!4629745 (= res!1942197 (= (getValueByKey!1481 (toList!5011 lt!1789491) (_1!29563 lt!1789142)) (Some!11638 (_2!29563 lt!1789142))))))

(declare-fun b!4629746 () Bool)

(assert (=> b!4629746 (= e!2888062 (contains!14666 (toList!5011 lt!1789491) lt!1789142))))

(assert (= (and d!1458846 res!1942198) b!4629745))

(assert (= (and b!4629745 res!1942197) b!4629746))

(declare-fun m!5477313 () Bool)

(assert (=> d!1458846 m!5477313))

(declare-fun m!5477315 () Bool)

(assert (=> d!1458846 m!5477315))

(declare-fun m!5477317 () Bool)

(assert (=> d!1458846 m!5477317))

(declare-fun m!5477319 () Bool)

(assert (=> d!1458846 m!5477319))

(declare-fun m!5477321 () Bool)

(assert (=> b!4629745 m!5477321))

(declare-fun m!5477323 () Bool)

(assert (=> b!4629746 m!5477323))

(assert (=> b!4629546 d!1458846))

(declare-fun bs!1026499 () Bool)

(declare-fun d!1458848 () Bool)

(assert (= bs!1026499 (and d!1458848 b!4629539)))

(declare-fun lambda!193293 () Int)

(assert (=> bs!1026499 (= lambda!193293 lambda!193225)))

(declare-fun bs!1026500 () Bool)

(assert (= bs!1026500 (and d!1458848 d!1458790)))

(assert (=> bs!1026500 (= lambda!193293 lambda!193266)))

(declare-fun bs!1026501 () Bool)

(assert (= bs!1026501 (and d!1458848 d!1458830)))

(assert (=> bs!1026501 (= lambda!193293 lambda!193281)))

(declare-fun bs!1026502 () Bool)

(assert (= bs!1026502 (and d!1458848 d!1458836)))

(assert (=> bs!1026502 (= lambda!193293 lambda!193286)))

(assert (=> d!1458848 (contains!14662 (extractMap!1579 (toList!5012 (ListLongMap!3602 lt!1789154))) key!4968)))

(declare-fun lt!1789496 () Unit!113006)

(declare-fun choose!31448 (ListLongMap!3601 K!12958 Hashable!5920) Unit!113006)

(assert (=> d!1458848 (= lt!1789496 (choose!31448 (ListLongMap!3602 lt!1789154) key!4968 hashF!1389))))

(assert (=> d!1458848 (forall!10854 (toList!5012 (ListLongMap!3602 lt!1789154)) lambda!193293)))

(assert (=> d!1458848 (= (lemmaListContainsThenExtractedMapContains!341 (ListLongMap!3602 lt!1789154) key!4968 hashF!1389) lt!1789496)))

(declare-fun bs!1026503 () Bool)

(assert (= bs!1026503 d!1458848))

(declare-fun m!5477325 () Bool)

(assert (=> bs!1026503 m!5477325))

(assert (=> bs!1026503 m!5477325))

(declare-fun m!5477327 () Bool)

(assert (=> bs!1026503 m!5477327))

(declare-fun m!5477329 () Bool)

(assert (=> bs!1026503 m!5477329))

(declare-fun m!5477331 () Bool)

(assert (=> bs!1026503 m!5477331))

(assert (=> b!4629546 d!1458848))

(declare-fun d!1458850 () Bool)

(assert (=> d!1458850 (eq!838 (addToMapMapFromBucket!984 (Cons!51584 lt!1789142 lt!1789136) (ListMap!4316 Nil!51584)) (+!1889 (addToMapMapFromBucket!984 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789142))))

(declare-fun lt!1789497 () Unit!113006)

(assert (=> d!1458850 (= lt!1789497 (choose!31447 lt!1789142 lt!1789136 (ListMap!4316 Nil!51584)))))

(assert (=> d!1458850 (noDuplicateKeys!1523 lt!1789136)))

(assert (=> d!1458850 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!89 lt!1789142 lt!1789136 (ListMap!4316 Nil!51584)) lt!1789497)))

(declare-fun bs!1026504 () Bool)

(assert (= bs!1026504 d!1458850))

(declare-fun m!5477333 () Bool)

(assert (=> bs!1026504 m!5477333))

(assert (=> bs!1026504 m!5476827))

(assert (=> bs!1026504 m!5476795))

(assert (=> bs!1026504 m!5476827))

(assert (=> bs!1026504 m!5476797))

(assert (=> bs!1026504 m!5476829))

(assert (=> bs!1026504 m!5477293))

(assert (=> bs!1026504 m!5476795))

(assert (=> bs!1026504 m!5476797))

(assert (=> b!4629546 d!1458850))

(declare-fun bs!1026505 () Bool)

(declare-fun d!1458852 () Bool)

(assert (= bs!1026505 (and d!1458852 d!1458802)))

(declare-fun lambda!193296 () Int)

(assert (=> bs!1026505 (not (= lambda!193296 lambda!193274))))

(declare-fun bs!1026506 () Bool)

(assert (= bs!1026506 (and d!1458852 b!4629654)))

(assert (=> bs!1026506 (not (= lambda!193296 lambda!193259))))

(declare-fun bs!1026507 () Bool)

(assert (= bs!1026507 (and d!1458852 d!1458840)))

(assert (=> bs!1026507 (not (= lambda!193296 lambda!193290))))

(declare-fun bs!1026508 () Bool)

(assert (= bs!1026508 (and d!1458852 b!4629670)))

(assert (=> bs!1026508 (not (= lambda!193296 lambda!193267))))

(declare-fun bs!1026509 () Bool)

(assert (= bs!1026509 (and d!1458852 b!4629742)))

(assert (=> bs!1026509 (not (= lambda!193296 lambda!193289))))

(declare-fun bs!1026510 () Bool)

(assert (= bs!1026510 (and d!1458852 b!4629732)))

(assert (=> bs!1026510 (not (= lambda!193296 lambda!193282))))

(declare-fun bs!1026511 () Bool)

(assert (= bs!1026511 (and d!1458852 b!4629678)))

(assert (=> bs!1026511 (not (= lambda!193296 lambda!193273))))

(declare-fun bs!1026512 () Bool)

(assert (= bs!1026512 (and d!1458852 b!4629673)))

(assert (=> bs!1026512 (not (= lambda!193296 lambda!193268))))

(assert (=> bs!1026512 (not (= lambda!193296 lambda!193269))))

(declare-fun bs!1026513 () Bool)

(assert (= bs!1026513 (and d!1458852 b!4629735)))

(assert (=> bs!1026513 (not (= lambda!193296 lambda!193283))))

(declare-fun bs!1026514 () Bool)

(assert (= bs!1026514 (and d!1458852 b!4629739)))

(assert (=> bs!1026514 (not (= lambda!193296 lambda!193287))))

(declare-fun bs!1026515 () Bool)

(assert (= bs!1026515 (and d!1458852 d!1458796)))

(assert (=> bs!1026515 (not (= lambda!193296 lambda!193270))))

(declare-fun bs!1026516 () Bool)

(assert (= bs!1026516 (and d!1458852 d!1458784)))

(assert (=> bs!1026516 (not (= lambda!193296 lambda!193260))))

(declare-fun bs!1026517 () Bool)

(assert (= bs!1026517 (and d!1458852 b!4629675)))

(assert (=> bs!1026517 (not (= lambda!193296 lambda!193271))))

(assert (=> bs!1026513 (not (= lambda!193296 lambda!193284))))

(assert (=> bs!1026506 (not (= lambda!193296 lambda!193258))))

(assert (=> bs!1026509 (not (= lambda!193296 lambda!193288))))

(declare-fun bs!1026518 () Bool)

(assert (= bs!1026518 (and d!1458852 b!4629651)))

(assert (=> bs!1026518 (not (= lambda!193296 lambda!193257))))

(declare-fun bs!1026519 () Bool)

(assert (= bs!1026519 (and d!1458852 d!1458832)))

(assert (=> bs!1026519 (not (= lambda!193296 lambda!193285))))

(assert (=> bs!1026511 (not (= lambda!193296 lambda!193272))))

(assert (=> d!1458852 true))

(assert (=> d!1458852 true))

(assert (=> d!1458852 (= (allKeysSameHash!1377 oldBucket!40 hash!414 hashF!1389) (forall!10853 oldBucket!40 lambda!193296))))

(declare-fun bs!1026520 () Bool)

(assert (= bs!1026520 d!1458852))

(declare-fun m!5477335 () Bool)

(assert (=> bs!1026520 m!5477335))

(assert (=> b!4629545 d!1458852))

(declare-fun bs!1026521 () Bool)

(declare-fun d!1458854 () Bool)

(assert (= bs!1026521 (and d!1458854 d!1458830)))

(declare-fun lambda!193303 () Int)

(assert (=> bs!1026521 (= lambda!193303 lambda!193281)))

(declare-fun bs!1026522 () Bool)

(assert (= bs!1026522 (and d!1458854 b!4629539)))

(assert (=> bs!1026522 (= lambda!193303 lambda!193225)))

(declare-fun bs!1026523 () Bool)

(assert (= bs!1026523 (and d!1458854 d!1458848)))

(assert (=> bs!1026523 (= lambda!193303 lambda!193293)))

(declare-fun bs!1026524 () Bool)

(assert (= bs!1026524 (and d!1458854 d!1458836)))

(assert (=> bs!1026524 (= lambda!193303 lambda!193286)))

(declare-fun bs!1026525 () Bool)

(assert (= bs!1026525 (and d!1458854 d!1458790)))

(assert (=> bs!1026525 (= lambda!193303 lambda!193266)))

(declare-fun b!4629762 () Bool)

(declare-fun e!2888067 () Bool)

(declare-fun lt!1789517 () (_ BitVec 64))

(declare-fun lt!1789519 () List!51708)

(declare-datatypes ((Option!11641 0))(
  ( (None!11640) (Some!11640 (v!45802 List!51708)) )
))
(declare-fun getValueByKey!1483 (List!51709 (_ BitVec 64)) Option!11641)

(assert (=> b!4629762 (= e!2888067 (= (getValueByKey!1483 (toList!5012 lt!1789133) lt!1789517) (Some!11640 lt!1789519)))))

(declare-fun b!4629759 () Bool)

(declare-fun res!1942207 () Bool)

(declare-fun e!2888068 () Bool)

(assert (=> b!4629759 (=> (not res!1942207) (not e!2888068))))

(declare-fun allKeysSameHashInMap!1545 (ListLongMap!3601 Hashable!5920) Bool)

(assert (=> b!4629759 (= res!1942207 (allKeysSameHashInMap!1545 lt!1789133 hashF!1389))))

(declare-fun b!4629761 () Bool)

(assert (=> b!4629761 (= e!2888068 (isDefined!8902 (getPair!315 (apply!12188 lt!1789133 (hash!3547 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1789514 () Unit!113006)

(assert (=> b!4629761 (= lt!1789514 (forallContained!3083 (toList!5012 lt!1789133) lambda!193303 (tuple2!52541 (hash!3547 hashF!1389 key!4968) (apply!12188 lt!1789133 (hash!3547 hashF!1389 key!4968)))))))

(declare-fun lt!1789516 () Unit!113006)

(declare-fun lt!1789521 () Unit!113006)

(assert (=> b!4629761 (= lt!1789516 lt!1789521)))

(assert (=> b!4629761 (contains!14660 (toList!5012 lt!1789133) (tuple2!52541 lt!1789517 lt!1789519))))

(assert (=> b!4629761 (= lt!1789521 (lemmaGetValueImpliesTupleContained!120 lt!1789133 lt!1789517 lt!1789519))))

(assert (=> b!4629761 e!2888067))

(declare-fun res!1942209 () Bool)

(assert (=> b!4629761 (=> (not res!1942209) (not e!2888067))))

(assert (=> b!4629761 (= res!1942209 (contains!14661 lt!1789133 lt!1789517))))

(assert (=> b!4629761 (= lt!1789519 (apply!12188 lt!1789133 (hash!3547 hashF!1389 key!4968)))))

(assert (=> b!4629761 (= lt!1789517 (hash!3547 hashF!1389 key!4968))))

(declare-fun lt!1789518 () Unit!113006)

(declare-fun lt!1789520 () Unit!113006)

(assert (=> b!4629761 (= lt!1789518 lt!1789520)))

(assert (=> b!4629761 (contains!14661 lt!1789133 (hash!3547 hashF!1389 key!4968))))

(assert (=> b!4629761 (= lt!1789520 (lemmaInGenMapThenLongMapContainsHash!521 lt!1789133 key!4968 hashF!1389))))

(assert (=> d!1458854 e!2888068))

(declare-fun res!1942210 () Bool)

(assert (=> d!1458854 (=> (not res!1942210) (not e!2888068))))

(assert (=> d!1458854 (= res!1942210 (forall!10854 (toList!5012 lt!1789133) lambda!193303))))

(declare-fun lt!1789515 () Unit!113006)

(declare-fun choose!31450 (ListLongMap!3601 K!12958 Hashable!5920) Unit!113006)

(assert (=> d!1458854 (= lt!1789515 (choose!31450 lt!1789133 key!4968 hashF!1389))))

(assert (=> d!1458854 (forall!10854 (toList!5012 lt!1789133) lambda!193303)))

(assert (=> d!1458854 (= (lemmaInGenMapThenGetPairDefined!111 lt!1789133 key!4968 hashF!1389) lt!1789515)))

(declare-fun b!4629760 () Bool)

(declare-fun res!1942208 () Bool)

(assert (=> b!4629760 (=> (not res!1942208) (not e!2888068))))

(assert (=> b!4629760 (= res!1942208 (contains!14662 (extractMap!1579 (toList!5012 lt!1789133)) key!4968))))

(assert (= (and d!1458854 res!1942210) b!4629759))

(assert (= (and b!4629759 res!1942207) b!4629760))

(assert (= (and b!4629760 res!1942208) b!4629761))

(assert (= (and b!4629761 res!1942209) b!4629762))

(declare-fun m!5477337 () Bool)

(assert (=> b!4629759 m!5477337))

(declare-fun m!5477339 () Bool)

(assert (=> d!1458854 m!5477339))

(declare-fun m!5477341 () Bool)

(assert (=> d!1458854 m!5477341))

(assert (=> d!1458854 m!5477339))

(declare-fun m!5477343 () Bool)

(assert (=> b!4629760 m!5477343))

(assert (=> b!4629760 m!5477343))

(declare-fun m!5477345 () Bool)

(assert (=> b!4629760 m!5477345))

(declare-fun m!5477347 () Bool)

(assert (=> b!4629762 m!5477347))

(assert (=> b!4629761 m!5476831))

(declare-fun m!5477349 () Bool)

(assert (=> b!4629761 m!5477349))

(assert (=> b!4629761 m!5476749))

(assert (=> b!4629761 m!5476831))

(declare-fun m!5477351 () Bool)

(assert (=> b!4629761 m!5477351))

(declare-fun m!5477353 () Bool)

(assert (=> b!4629761 m!5477353))

(declare-fun m!5477355 () Bool)

(assert (=> b!4629761 m!5477355))

(declare-fun m!5477357 () Bool)

(assert (=> b!4629761 m!5477357))

(declare-fun m!5477359 () Bool)

(assert (=> b!4629761 m!5477359))

(assert (=> b!4629761 m!5476831))

(assert (=> b!4629761 m!5477351))

(assert (=> b!4629761 m!5477353))

(declare-fun m!5477361 () Bool)

(assert (=> b!4629761 m!5477361))

(declare-fun m!5477363 () Bool)

(assert (=> b!4629761 m!5477363))

(assert (=> b!4629539 d!1458854))

(declare-fun d!1458856 () Bool)

(assert (=> d!1458856 (containsKey!2495 oldBucket!40 key!4968)))

(declare-fun lt!1789524 () Unit!113006)

(declare-fun choose!31451 (List!51708 K!12958 Hashable!5920) Unit!113006)

(assert (=> d!1458856 (= lt!1789524 (choose!31451 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1458856 (noDuplicateKeys!1523 oldBucket!40)))

(assert (=> d!1458856 (= (lemmaGetPairDefinedThenContainsKey!69 oldBucket!40 key!4968 hashF!1389) lt!1789524)))

(declare-fun bs!1026526 () Bool)

(assert (= bs!1026526 d!1458856))

(assert (=> bs!1026526 m!5476769))

(declare-fun m!5477365 () Bool)

(assert (=> bs!1026526 m!5477365))

(assert (=> bs!1026526 m!5476781))

(assert (=> b!4629539 d!1458856))

(declare-fun d!1458858 () Bool)

(declare-fun res!1942215 () Bool)

(declare-fun e!2888073 () Bool)

(assert (=> d!1458858 (=> res!1942215 e!2888073)))

(assert (=> d!1458858 (= res!1942215 (and (is-Cons!51584 (t!358756 oldBucket!40)) (= (_1!29563 (h!57650 (t!358756 oldBucket!40))) key!4968)))))

(assert (=> d!1458858 (= (containsKey!2495 (t!358756 oldBucket!40) key!4968) e!2888073)))

(declare-fun b!4629767 () Bool)

(declare-fun e!2888074 () Bool)

(assert (=> b!4629767 (= e!2888073 e!2888074)))

(declare-fun res!1942216 () Bool)

(assert (=> b!4629767 (=> (not res!1942216) (not e!2888074))))

(assert (=> b!4629767 (= res!1942216 (is-Cons!51584 (t!358756 oldBucket!40)))))

(declare-fun b!4629768 () Bool)

(assert (=> b!4629768 (= e!2888074 (containsKey!2495 (t!358756 (t!358756 oldBucket!40)) key!4968))))

(assert (= (and d!1458858 (not res!1942215)) b!4629767))

(assert (= (and b!4629767 res!1942216) b!4629768))

(declare-fun m!5477367 () Bool)

(assert (=> b!4629768 m!5477367))

(assert (=> b!4629539 d!1458858))

(declare-fun d!1458860 () Bool)

(declare-fun isEmpty!28945 (Option!11637) Bool)

(assert (=> d!1458860 (= (isDefined!8902 (getPair!315 lt!1789143 key!4968)) (not (isEmpty!28945 (getPair!315 lt!1789143 key!4968))))))

(declare-fun bs!1026527 () Bool)

(assert (= bs!1026527 d!1458860))

(assert (=> bs!1026527 m!5476759))

(declare-fun m!5477369 () Bool)

(assert (=> bs!1026527 m!5477369))

(assert (=> b!4629539 d!1458860))

(declare-fun d!1458862 () Bool)

(declare-fun dynLambda!21513 (Int tuple2!52540) Bool)

(assert (=> d!1458862 (dynLambda!21513 lambda!193225 lt!1789128)))

(declare-fun lt!1789527 () Unit!113006)

(declare-fun choose!31452 (List!51709 Int tuple2!52540) Unit!113006)

(assert (=> d!1458862 (= lt!1789527 (choose!31452 lt!1789138 lambda!193225 lt!1789128))))

(declare-fun e!2888077 () Bool)

(assert (=> d!1458862 e!2888077))

(declare-fun res!1942219 () Bool)

(assert (=> d!1458862 (=> (not res!1942219) (not e!2888077))))

(assert (=> d!1458862 (= res!1942219 (forall!10854 lt!1789138 lambda!193225))))

(assert (=> d!1458862 (= (forallContained!3083 lt!1789138 lambda!193225 lt!1789128) lt!1789527)))

(declare-fun b!4629771 () Bool)

(assert (=> b!4629771 (= e!2888077 (contains!14660 lt!1789138 lt!1789128))))

(assert (= (and d!1458862 res!1942219) b!4629771))

(declare-fun b_lambda!170845 () Bool)

(assert (=> (not b_lambda!170845) (not d!1458862)))

(declare-fun m!5477371 () Bool)

(assert (=> d!1458862 m!5477371))

(declare-fun m!5477373 () Bool)

(assert (=> d!1458862 m!5477373))

(declare-fun m!5477375 () Bool)

(assert (=> d!1458862 m!5477375))

(assert (=> b!4629771 m!5476771))

(assert (=> b!4629539 d!1458862))

(declare-fun d!1458864 () Bool)

(declare-fun lt!1789530 () Bool)

(declare-fun content!8845 (List!51709) (Set tuple2!52540))

(assert (=> d!1458864 (= lt!1789530 (set.member lt!1789128 (content!8845 lt!1789138)))))

(declare-fun e!2888083 () Bool)

(assert (=> d!1458864 (= lt!1789530 e!2888083)))

(declare-fun res!1942224 () Bool)

(assert (=> d!1458864 (=> (not res!1942224) (not e!2888083))))

(assert (=> d!1458864 (= res!1942224 (is-Cons!51585 lt!1789138))))

(assert (=> d!1458864 (= (contains!14660 lt!1789138 lt!1789128) lt!1789530)))

(declare-fun b!4629776 () Bool)

(declare-fun e!2888082 () Bool)

(assert (=> b!4629776 (= e!2888083 e!2888082)))

(declare-fun res!1942225 () Bool)

(assert (=> b!4629776 (=> res!1942225 e!2888082)))

(assert (=> b!4629776 (= res!1942225 (= (h!57651 lt!1789138) lt!1789128))))

(declare-fun b!4629777 () Bool)

(assert (=> b!4629777 (= e!2888082 (contains!14660 (t!358757 lt!1789138) lt!1789128))))

(assert (= (and d!1458864 res!1942224) b!4629776))

(assert (= (and b!4629776 (not res!1942225)) b!4629777))

(declare-fun m!5477377 () Bool)

(assert (=> d!1458864 m!5477377))

(declare-fun m!5477379 () Bool)

(assert (=> d!1458864 m!5477379))

(declare-fun m!5477381 () Bool)

(assert (=> b!4629777 m!5477381))

(assert (=> b!4629539 d!1458864))

(declare-fun d!1458866 () Bool)

(declare-fun res!1942226 () Bool)

(declare-fun e!2888084 () Bool)

(assert (=> d!1458866 (=> res!1942226 e!2888084)))

(assert (=> d!1458866 (= res!1942226 (and (is-Cons!51584 oldBucket!40) (= (_1!29563 (h!57650 oldBucket!40)) key!4968)))))

(assert (=> d!1458866 (= (containsKey!2495 oldBucket!40 key!4968) e!2888084)))

(declare-fun b!4629778 () Bool)

(declare-fun e!2888085 () Bool)

(assert (=> b!4629778 (= e!2888084 e!2888085)))

(declare-fun res!1942227 () Bool)

(assert (=> b!4629778 (=> (not res!1942227) (not e!2888085))))

(assert (=> b!4629778 (= res!1942227 (is-Cons!51584 oldBucket!40))))

(declare-fun b!4629779 () Bool)

(assert (=> b!4629779 (= e!2888085 (containsKey!2495 (t!358756 oldBucket!40) key!4968))))

(assert (= (and d!1458866 (not res!1942226)) b!4629778))

(assert (= (and b!4629778 res!1942227) b!4629779))

(assert (=> b!4629779 m!5476767))

(assert (=> b!4629539 d!1458866))

(declare-fun d!1458868 () Bool)

(assert (=> d!1458868 (contains!14660 (toList!5012 lt!1789133) (tuple2!52541 lt!1789146 lt!1789143))))

(declare-fun lt!1789533 () Unit!113006)

(declare-fun choose!31453 (ListLongMap!3601 (_ BitVec 64) List!51708) Unit!113006)

(assert (=> d!1458868 (= lt!1789533 (choose!31453 lt!1789133 lt!1789146 lt!1789143))))

(assert (=> d!1458868 (contains!14661 lt!1789133 lt!1789146)))

(assert (=> d!1458868 (= (lemmaGetValueImpliesTupleContained!120 lt!1789133 lt!1789146 lt!1789143) lt!1789533)))

(declare-fun bs!1026528 () Bool)

(assert (= bs!1026528 d!1458868))

(declare-fun m!5477383 () Bool)

(assert (=> bs!1026528 m!5477383))

(declare-fun m!5477385 () Bool)

(assert (=> bs!1026528 m!5477385))

(assert (=> bs!1026528 m!5476763))

(assert (=> b!4629539 d!1458868))

(declare-fun d!1458870 () Bool)

(declare-fun e!2888092 () Bool)

(assert (=> d!1458870 e!2888092))

(declare-fun res!1942230 () Bool)

(assert (=> d!1458870 (=> res!1942230 e!2888092)))

(declare-fun lt!1789555 () Bool)

(assert (=> d!1458870 (= res!1942230 (not lt!1789555))))

(declare-fun lt!1789554 () Bool)

(assert (=> d!1458870 (= lt!1789555 lt!1789554)))

(declare-fun lt!1789552 () Unit!113006)

(declare-fun e!2888093 () Unit!113006)

(assert (=> d!1458870 (= lt!1789552 e!2888093)))

(declare-fun c!792478 () Bool)

(assert (=> d!1458870 (= c!792478 lt!1789554)))

(declare-fun containsKey!2499 (List!51709 (_ BitVec 64)) Bool)

(assert (=> d!1458870 (= lt!1789554 (containsKey!2499 (toList!5012 lt!1789133) lt!1789146))))

(assert (=> d!1458870 (= (contains!14661 lt!1789133 lt!1789146) lt!1789555)))

(declare-fun b!4629791 () Bool)

(declare-fun lt!1789553 () Unit!113006)

(assert (=> b!4629791 (= e!2888093 lt!1789553)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1385 (List!51709 (_ BitVec 64)) Unit!113006)

(assert (=> b!4629791 (= lt!1789553 (lemmaContainsKeyImpliesGetValueByKeyDefined!1385 (toList!5012 lt!1789133) lt!1789146))))

(declare-fun isDefined!8906 (Option!11641) Bool)

(assert (=> b!4629791 (isDefined!8906 (getValueByKey!1483 (toList!5012 lt!1789133) lt!1789146))))

(declare-fun b!4629792 () Bool)

(declare-fun Unit!113080 () Unit!113006)

(assert (=> b!4629792 (= e!2888093 Unit!113080)))

(declare-fun b!4629793 () Bool)

(assert (=> b!4629793 (= e!2888092 (isDefined!8906 (getValueByKey!1483 (toList!5012 lt!1789133) lt!1789146)))))

(assert (= (and d!1458870 c!792478) b!4629791))

(assert (= (and d!1458870 (not c!792478)) b!4629792))

(assert (= (and d!1458870 (not res!1942230)) b!4629793))

(declare-fun m!5477387 () Bool)

(assert (=> d!1458870 m!5477387))

(declare-fun m!5477389 () Bool)

(assert (=> b!4629791 m!5477389))

(declare-fun m!5477391 () Bool)

(assert (=> b!4629791 m!5477391))

(assert (=> b!4629791 m!5477391))

(declare-fun m!5477393 () Bool)

(assert (=> b!4629791 m!5477393))

(assert (=> b!4629793 m!5477391))

(assert (=> b!4629793 m!5477391))

(assert (=> b!4629793 m!5477393))

(assert (=> b!4629539 d!1458870))

(declare-fun bs!1026529 () Bool)

(declare-fun d!1458872 () Bool)

(assert (= bs!1026529 (and d!1458872 d!1458830)))

(declare-fun lambda!193319 () Int)

(assert (=> bs!1026529 (= lambda!193319 lambda!193281)))

(declare-fun bs!1026530 () Bool)

(assert (= bs!1026530 (and d!1458872 b!4629539)))

(assert (=> bs!1026530 (= lambda!193319 lambda!193225)))

(declare-fun bs!1026531 () Bool)

(assert (= bs!1026531 (and d!1458872 d!1458848)))

(assert (=> bs!1026531 (= lambda!193319 lambda!193293)))

(declare-fun bs!1026532 () Bool)

(assert (= bs!1026532 (and d!1458872 d!1458854)))

(assert (=> bs!1026532 (= lambda!193319 lambda!193303)))

(declare-fun bs!1026533 () Bool)

(assert (= bs!1026533 (and d!1458872 d!1458836)))

(assert (=> bs!1026533 (= lambda!193319 lambda!193286)))

(declare-fun bs!1026534 () Bool)

(assert (= bs!1026534 (and d!1458872 d!1458790)))

(assert (=> bs!1026534 (= lambda!193319 lambda!193266)))

(assert (=> d!1458872 (contains!14661 lt!1789133 (hash!3547 hashF!1389 key!4968))))

(declare-fun lt!1789578 () Unit!113006)

(declare-fun choose!31454 (ListLongMap!3601 K!12958 Hashable!5920) Unit!113006)

(assert (=> d!1458872 (= lt!1789578 (choose!31454 lt!1789133 key!4968 hashF!1389))))

(assert (=> d!1458872 (forall!10854 (toList!5012 lt!1789133) lambda!193319)))

(assert (=> d!1458872 (= (lemmaInGenMapThenLongMapContainsHash!521 lt!1789133 key!4968 hashF!1389) lt!1789578)))

(declare-fun bs!1026535 () Bool)

(assert (= bs!1026535 d!1458872))

(assert (=> bs!1026535 m!5476831))

(assert (=> bs!1026535 m!5476831))

(assert (=> bs!1026535 m!5477349))

(declare-fun m!5477395 () Bool)

(assert (=> bs!1026535 m!5477395))

(declare-fun m!5477397 () Bool)

(assert (=> bs!1026535 m!5477397))

(assert (=> b!4629539 d!1458872))

(declare-fun d!1458874 () Bool)

(declare-fun get!17116 (Option!11641) List!51708)

(assert (=> d!1458874 (= (apply!12188 lt!1789133 lt!1789146) (get!17116 (getValueByKey!1483 (toList!5012 lt!1789133) lt!1789146)))))

(declare-fun bs!1026536 () Bool)

(assert (= bs!1026536 d!1458874))

(assert (=> bs!1026536 m!5477391))

(assert (=> bs!1026536 m!5477391))

(declare-fun m!5477399 () Bool)

(assert (=> bs!1026536 m!5477399))

(assert (=> b!4629539 d!1458874))

(declare-fun b!4629817 () Bool)

(declare-fun e!2888108 () Bool)

(assert (=> b!4629817 (= e!2888108 (not (containsKey!2495 lt!1789143 key!4968)))))

(declare-fun b!4629818 () Bool)

(declare-fun e!2888111 () Option!11637)

(assert (=> b!4629818 (= e!2888111 None!11636)))

(declare-fun b!4629819 () Bool)

(assert (=> b!4629819 (= e!2888111 (getPair!315 (t!358756 lt!1789143) key!4968))))

(declare-fun b!4629820 () Bool)

(declare-fun e!2888110 () Bool)

(declare-fun lt!1789593 () Option!11637)

(declare-fun get!17117 (Option!11637) tuple2!52538)

(assert (=> b!4629820 (= e!2888110 (contains!14666 lt!1789143 (get!17117 lt!1789593)))))

(declare-fun b!4629821 () Bool)

(declare-fun e!2888112 () Option!11637)

(assert (=> b!4629821 (= e!2888112 (Some!11636 (h!57650 lt!1789143)))))

(declare-fun b!4629822 () Bool)

(assert (=> b!4629822 (= e!2888112 e!2888111)))

(declare-fun c!792484 () Bool)

(assert (=> b!4629822 (= c!792484 (is-Cons!51584 lt!1789143))))

(declare-fun b!4629823 () Bool)

(declare-fun e!2888109 () Bool)

(assert (=> b!4629823 (= e!2888109 e!2888110)))

(declare-fun res!1942248 () Bool)

(assert (=> b!4629823 (=> (not res!1942248) (not e!2888110))))

(assert (=> b!4629823 (= res!1942248 (isDefined!8902 lt!1789593))))

(declare-fun b!4629816 () Bool)

(declare-fun res!1942246 () Bool)

(assert (=> b!4629816 (=> (not res!1942246) (not e!2888110))))

(assert (=> b!4629816 (= res!1942246 (= (_1!29563 (get!17117 lt!1789593)) key!4968))))

(declare-fun d!1458876 () Bool)

(assert (=> d!1458876 e!2888109))

(declare-fun res!1942247 () Bool)

(assert (=> d!1458876 (=> res!1942247 e!2888109)))

(assert (=> d!1458876 (= res!1942247 e!2888108)))

(declare-fun res!1942245 () Bool)

(assert (=> d!1458876 (=> (not res!1942245) (not e!2888108))))

(assert (=> d!1458876 (= res!1942245 (isEmpty!28945 lt!1789593))))

(assert (=> d!1458876 (= lt!1789593 e!2888112)))

(declare-fun c!792483 () Bool)

(assert (=> d!1458876 (= c!792483 (and (is-Cons!51584 lt!1789143) (= (_1!29563 (h!57650 lt!1789143)) key!4968)))))

(assert (=> d!1458876 (noDuplicateKeys!1523 lt!1789143)))

(assert (=> d!1458876 (= (getPair!315 lt!1789143 key!4968) lt!1789593)))

(assert (= (and d!1458876 c!792483) b!4629821))

(assert (= (and d!1458876 (not c!792483)) b!4629822))

(assert (= (and b!4629822 c!792484) b!4629819))

(assert (= (and b!4629822 (not c!792484)) b!4629818))

(assert (= (and d!1458876 res!1942245) b!4629817))

(assert (= (and d!1458876 (not res!1942247)) b!4629823))

(assert (= (and b!4629823 res!1942248) b!4629816))

(assert (= (and b!4629816 res!1942246) b!4629820))

(declare-fun m!5477401 () Bool)

(assert (=> b!4629823 m!5477401))

(declare-fun m!5477403 () Bool)

(assert (=> d!1458876 m!5477403))

(declare-fun m!5477405 () Bool)

(assert (=> d!1458876 m!5477405))

(declare-fun m!5477407 () Bool)

(assert (=> b!4629820 m!5477407))

(assert (=> b!4629820 m!5477407))

(declare-fun m!5477409 () Bool)

(assert (=> b!4629820 m!5477409))

(declare-fun m!5477411 () Bool)

(assert (=> b!4629817 m!5477411))

(declare-fun m!5477413 () Bool)

(assert (=> b!4629819 m!5477413))

(assert (=> b!4629816 m!5477407))

(assert (=> b!4629539 d!1458876))

(declare-fun b!4629835 () Bool)

(declare-fun e!2888118 () List!51708)

(assert (=> b!4629835 (= e!2888118 Nil!51584)))

(declare-fun b!4629833 () Bool)

(declare-fun e!2888117 () List!51708)

(assert (=> b!4629833 (= e!2888117 e!2888118)))

(declare-fun c!792489 () Bool)

(assert (=> b!4629833 (= c!792489 (is-Cons!51584 (t!358756 oldBucket!40)))))

(declare-fun b!4629832 () Bool)

(assert (=> b!4629832 (= e!2888117 (t!358756 (t!358756 oldBucket!40)))))

(declare-fun d!1458878 () Bool)

(declare-fun lt!1789596 () List!51708)

(assert (=> d!1458878 (not (containsKey!2495 lt!1789596 key!4968))))

(assert (=> d!1458878 (= lt!1789596 e!2888117)))

(declare-fun c!792490 () Bool)

(assert (=> d!1458878 (= c!792490 (and (is-Cons!51584 (t!358756 oldBucket!40)) (= (_1!29563 (h!57650 (t!358756 oldBucket!40))) key!4968)))))

(assert (=> d!1458878 (noDuplicateKeys!1523 (t!358756 oldBucket!40))))

(assert (=> d!1458878 (= (removePairForKey!1146 (t!358756 oldBucket!40) key!4968) lt!1789596)))

(declare-fun b!4629834 () Bool)

(assert (=> b!4629834 (= e!2888118 (Cons!51584 (h!57650 (t!358756 oldBucket!40)) (removePairForKey!1146 (t!358756 (t!358756 oldBucket!40)) key!4968)))))

(assert (= (and d!1458878 c!792490) b!4629832))

(assert (= (and d!1458878 (not c!792490)) b!4629833))

(assert (= (and b!4629833 c!792489) b!4629834))

(assert (= (and b!4629833 (not c!792489)) b!4629835))

(declare-fun m!5477415 () Bool)

(assert (=> d!1458878 m!5477415))

(assert (=> d!1458878 m!5476963))

(declare-fun m!5477417 () Bool)

(assert (=> b!4629834 m!5477417))

(assert (=> b!4629550 d!1458878))

(declare-fun bs!1026539 () Bool)

(declare-fun d!1458880 () Bool)

(assert (= bs!1026539 (and d!1458880 d!1458802)))

(declare-fun lambda!193336 () Int)

(assert (=> bs!1026539 (not (= lambda!193336 lambda!193274))))

(declare-fun bs!1026540 () Bool)

(assert (= bs!1026540 (and d!1458880 b!4629654)))

(assert (=> bs!1026540 (not (= lambda!193336 lambda!193259))))

(declare-fun bs!1026541 () Bool)

(assert (= bs!1026541 (and d!1458880 d!1458840)))

(assert (=> bs!1026541 (not (= lambda!193336 lambda!193290))))

(declare-fun bs!1026542 () Bool)

(assert (= bs!1026542 (and d!1458880 b!4629670)))

(assert (=> bs!1026542 (not (= lambda!193336 lambda!193267))))

(declare-fun bs!1026543 () Bool)

(assert (= bs!1026543 (and d!1458880 b!4629742)))

(assert (=> bs!1026543 (not (= lambda!193336 lambda!193289))))

(declare-fun bs!1026544 () Bool)

(assert (= bs!1026544 (and d!1458880 b!4629732)))

(assert (=> bs!1026544 (not (= lambda!193336 lambda!193282))))

(declare-fun bs!1026546 () Bool)

(assert (= bs!1026546 (and d!1458880 b!4629678)))

(assert (=> bs!1026546 (not (= lambda!193336 lambda!193273))))

(declare-fun bs!1026548 () Bool)

(assert (= bs!1026548 (and d!1458880 b!4629673)))

(assert (=> bs!1026548 (not (= lambda!193336 lambda!193268))))

(assert (=> bs!1026548 (not (= lambda!193336 lambda!193269))))

(declare-fun bs!1026550 () Bool)

(assert (= bs!1026550 (and d!1458880 d!1458852)))

(assert (=> bs!1026550 (= lambda!193336 lambda!193296)))

(declare-fun bs!1026551 () Bool)

(assert (= bs!1026551 (and d!1458880 b!4629735)))

(assert (=> bs!1026551 (not (= lambda!193336 lambda!193283))))

(declare-fun bs!1026552 () Bool)

(assert (= bs!1026552 (and d!1458880 b!4629739)))

(assert (=> bs!1026552 (not (= lambda!193336 lambda!193287))))

(declare-fun bs!1026553 () Bool)

(assert (= bs!1026553 (and d!1458880 d!1458796)))

(assert (=> bs!1026553 (not (= lambda!193336 lambda!193270))))

(declare-fun bs!1026554 () Bool)

(assert (= bs!1026554 (and d!1458880 d!1458784)))

(assert (=> bs!1026554 (not (= lambda!193336 lambda!193260))))

(declare-fun bs!1026555 () Bool)

(assert (= bs!1026555 (and d!1458880 b!4629675)))

(assert (=> bs!1026555 (not (= lambda!193336 lambda!193271))))

(assert (=> bs!1026551 (not (= lambda!193336 lambda!193284))))

(assert (=> bs!1026540 (not (= lambda!193336 lambda!193258))))

(assert (=> bs!1026543 (not (= lambda!193336 lambda!193288))))

(declare-fun bs!1026556 () Bool)

(assert (= bs!1026556 (and d!1458880 b!4629651)))

(assert (=> bs!1026556 (not (= lambda!193336 lambda!193257))))

(declare-fun bs!1026557 () Bool)

(assert (= bs!1026557 (and d!1458880 d!1458832)))

(assert (=> bs!1026557 (not (= lambda!193336 lambda!193285))))

(assert (=> bs!1026546 (not (= lambda!193336 lambda!193272))))

(assert (=> d!1458880 true))

(assert (=> d!1458880 true))

(assert (=> d!1458880 (= (allKeysSameHash!1377 newBucket!224 hash!414 hashF!1389) (forall!10853 newBucket!224 lambda!193336))))

(declare-fun bs!1026558 () Bool)

(assert (= bs!1026558 d!1458880))

(declare-fun m!5477419 () Bool)

(assert (=> bs!1026558 m!5477419))

(assert (=> b!4629549 d!1458880))

(declare-fun d!1458882 () Bool)

(assert (=> d!1458882 (= (eq!838 lt!1789127 (+!1889 lt!1789137 lt!1789125)) (= (content!8842 (toList!5011 lt!1789127)) (content!8842 (toList!5011 (+!1889 lt!1789137 lt!1789125)))))))

(declare-fun bs!1026559 () Bool)

(assert (= bs!1026559 d!1458882))

(declare-fun m!5477421 () Bool)

(assert (=> bs!1026559 m!5477421))

(declare-fun m!5477423 () Bool)

(assert (=> bs!1026559 m!5477423))

(assert (=> b!4629538 d!1458882))

(declare-fun d!1458884 () Bool)

(declare-fun e!2888122 () Bool)

(assert (=> d!1458884 e!2888122))

(declare-fun res!1942253 () Bool)

(assert (=> d!1458884 (=> (not res!1942253) (not e!2888122))))

(declare-fun lt!1789619 () ListMap!4315)

(assert (=> d!1458884 (= res!1942253 (contains!14662 lt!1789619 (_1!29563 lt!1789125)))))

(declare-fun lt!1789620 () List!51708)

(assert (=> d!1458884 (= lt!1789619 (ListMap!4316 lt!1789620))))

(declare-fun lt!1789621 () Unit!113006)

(declare-fun lt!1789618 () Unit!113006)

(assert (=> d!1458884 (= lt!1789621 lt!1789618)))

(assert (=> d!1458884 (= (getValueByKey!1481 lt!1789620 (_1!29563 lt!1789125)) (Some!11638 (_2!29563 lt!1789125)))))

(assert (=> d!1458884 (= lt!1789618 (lemmaContainsTupThenGetReturnValue!863 lt!1789620 (_1!29563 lt!1789125) (_2!29563 lt!1789125)))))

(assert (=> d!1458884 (= lt!1789620 (insertNoDuplicatedKeys!371 (toList!5011 lt!1789137) (_1!29563 lt!1789125) (_2!29563 lt!1789125)))))

(assert (=> d!1458884 (= (+!1889 lt!1789137 lt!1789125) lt!1789619)))

(declare-fun b!4629843 () Bool)

(declare-fun res!1942252 () Bool)

(assert (=> b!4629843 (=> (not res!1942252) (not e!2888122))))

(assert (=> b!4629843 (= res!1942252 (= (getValueByKey!1481 (toList!5011 lt!1789619) (_1!29563 lt!1789125)) (Some!11638 (_2!29563 lt!1789125))))))

(declare-fun b!4629844 () Bool)

(assert (=> b!4629844 (= e!2888122 (contains!14666 (toList!5011 lt!1789619) lt!1789125))))

(assert (= (and d!1458884 res!1942253) b!4629843))

(assert (= (and b!4629843 res!1942252) b!4629844))

(declare-fun m!5477425 () Bool)

(assert (=> d!1458884 m!5477425))

(declare-fun m!5477427 () Bool)

(assert (=> d!1458884 m!5477427))

(declare-fun m!5477429 () Bool)

(assert (=> d!1458884 m!5477429))

(declare-fun m!5477431 () Bool)

(assert (=> d!1458884 m!5477431))

(declare-fun m!5477433 () Bool)

(assert (=> b!4629843 m!5477433))

(declare-fun m!5477435 () Bool)

(assert (=> b!4629844 m!5477435))

(assert (=> b!4629538 d!1458884))

(declare-fun bs!1026564 () Bool)

(declare-fun d!1458886 () Bool)

(assert (= bs!1026564 (and d!1458886 d!1458872)))

(declare-fun lambda!193340 () Int)

(assert (=> bs!1026564 (= lambda!193340 lambda!193319)))

(declare-fun bs!1026565 () Bool)

(assert (= bs!1026565 (and d!1458886 d!1458830)))

(assert (=> bs!1026565 (= lambda!193340 lambda!193281)))

(declare-fun bs!1026566 () Bool)

(assert (= bs!1026566 (and d!1458886 b!4629539)))

(assert (=> bs!1026566 (= lambda!193340 lambda!193225)))

(declare-fun bs!1026567 () Bool)

(assert (= bs!1026567 (and d!1458886 d!1458848)))

(assert (=> bs!1026567 (= lambda!193340 lambda!193293)))

(declare-fun bs!1026568 () Bool)

(assert (= bs!1026568 (and d!1458886 d!1458854)))

(assert (=> bs!1026568 (= lambda!193340 lambda!193303)))

(declare-fun bs!1026569 () Bool)

(assert (= bs!1026569 (and d!1458886 d!1458836)))

(assert (=> bs!1026569 (= lambda!193340 lambda!193286)))

(declare-fun bs!1026570 () Bool)

(assert (= bs!1026570 (and d!1458886 d!1458790)))

(assert (=> bs!1026570 (= lambda!193340 lambda!193266)))

(declare-fun lt!1789622 () ListMap!4315)

(assert (=> d!1458886 (invariantList!1219 (toList!5011 lt!1789622))))

(declare-fun e!2888123 () ListMap!4315)

(assert (=> d!1458886 (= lt!1789622 e!2888123)))

(declare-fun c!792492 () Bool)

(assert (=> d!1458886 (= c!792492 (is-Cons!51585 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585)))))

(assert (=> d!1458886 (forall!10854 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585) lambda!193340)))

(assert (=> d!1458886 (= (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585)) lt!1789622)))

(declare-fun b!4629845 () Bool)

(assert (=> b!4629845 (= e!2888123 (addToMapMapFromBucket!984 (_2!29564 (h!57651 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585))) (extractMap!1579 (t!358757 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585)))))))

(declare-fun b!4629846 () Bool)

(assert (=> b!4629846 (= e!2888123 (ListMap!4316 Nil!51584))))

(assert (= (and d!1458886 c!792492) b!4629845))

(assert (= (and d!1458886 (not c!792492)) b!4629846))

(declare-fun m!5477437 () Bool)

(assert (=> d!1458886 m!5477437))

(declare-fun m!5477439 () Bool)

(assert (=> d!1458886 m!5477439))

(declare-fun m!5477441 () Bool)

(assert (=> b!4629845 m!5477441))

(assert (=> b!4629845 m!5477441))

(declare-fun m!5477443 () Bool)

(assert (=> b!4629845 m!5477443))

(assert (=> b!4629538 d!1458886))

(declare-fun bs!1026571 () Bool)

(declare-fun d!1458888 () Bool)

(assert (= bs!1026571 (and d!1458888 d!1458872)))

(declare-fun lambda!193341 () Int)

(assert (=> bs!1026571 (= lambda!193341 lambda!193319)))

(declare-fun bs!1026572 () Bool)

(assert (= bs!1026572 (and d!1458888 d!1458830)))

(assert (=> bs!1026572 (= lambda!193341 lambda!193281)))

(declare-fun bs!1026573 () Bool)

(assert (= bs!1026573 (and d!1458888 d!1458886)))

(assert (=> bs!1026573 (= lambda!193341 lambda!193340)))

(declare-fun bs!1026574 () Bool)

(assert (= bs!1026574 (and d!1458888 b!4629539)))

(assert (=> bs!1026574 (= lambda!193341 lambda!193225)))

(declare-fun bs!1026575 () Bool)

(assert (= bs!1026575 (and d!1458888 d!1458848)))

(assert (=> bs!1026575 (= lambda!193341 lambda!193293)))

(declare-fun bs!1026576 () Bool)

(assert (= bs!1026576 (and d!1458888 d!1458854)))

(assert (=> bs!1026576 (= lambda!193341 lambda!193303)))

(declare-fun bs!1026577 () Bool)

(assert (= bs!1026577 (and d!1458888 d!1458836)))

(assert (=> bs!1026577 (= lambda!193341 lambda!193286)))

(declare-fun bs!1026578 () Bool)

(assert (= bs!1026578 (and d!1458888 d!1458790)))

(assert (=> bs!1026578 (= lambda!193341 lambda!193266)))

(declare-fun lt!1789623 () ListMap!4315)

(assert (=> d!1458888 (invariantList!1219 (toList!5011 lt!1789623))))

(declare-fun e!2888124 () ListMap!4315)

(assert (=> d!1458888 (= lt!1789623 e!2888124)))

(declare-fun c!792493 () Bool)

(assert (=> d!1458888 (= c!792493 (is-Cons!51585 (Cons!51585 (tuple2!52541 hash!414 newBucket!224) Nil!51585)))))

(assert (=> d!1458888 (forall!10854 (Cons!51585 (tuple2!52541 hash!414 newBucket!224) Nil!51585) lambda!193341)))

(assert (=> d!1458888 (= (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 newBucket!224) Nil!51585)) lt!1789623)))

(declare-fun b!4629847 () Bool)

(assert (=> b!4629847 (= e!2888124 (addToMapMapFromBucket!984 (_2!29564 (h!57651 (Cons!51585 (tuple2!52541 hash!414 newBucket!224) Nil!51585))) (extractMap!1579 (t!358757 (Cons!51585 (tuple2!52541 hash!414 newBucket!224) Nil!51585)))))))

(declare-fun b!4629848 () Bool)

(assert (=> b!4629848 (= e!2888124 (ListMap!4316 Nil!51584))))

(assert (= (and d!1458888 c!792493) b!4629847))

(assert (= (and d!1458888 (not c!792493)) b!4629848))

(declare-fun m!5477479 () Bool)

(assert (=> d!1458888 m!5477479))

(declare-fun m!5477481 () Bool)

(assert (=> d!1458888 m!5477481))

(declare-fun m!5477483 () Bool)

(assert (=> b!4629847 m!5477483))

(assert (=> b!4629847 m!5477483))

(declare-fun m!5477485 () Bool)

(assert (=> b!4629847 m!5477485))

(assert (=> b!4629538 d!1458888))

(declare-fun b!4629854 () Bool)

(declare-fun e!2888127 () List!51708)

(assert (=> b!4629854 (= e!2888127 Nil!51584)))

(declare-fun b!4629852 () Bool)

(declare-fun e!2888126 () List!51708)

(assert (=> b!4629852 (= e!2888126 e!2888127)))

(declare-fun c!792495 () Bool)

(assert (=> b!4629852 (= c!792495 (is-Cons!51584 lt!1789136))))

(declare-fun b!4629851 () Bool)

(assert (=> b!4629851 (= e!2888126 (t!358756 lt!1789136))))

(declare-fun d!1458892 () Bool)

(declare-fun lt!1789625 () List!51708)

(assert (=> d!1458892 (not (containsKey!2495 lt!1789625 key!4968))))

(assert (=> d!1458892 (= lt!1789625 e!2888126)))

(declare-fun c!792496 () Bool)

(assert (=> d!1458892 (= c!792496 (and (is-Cons!51584 lt!1789136) (= (_1!29563 (h!57650 lt!1789136)) key!4968)))))

(assert (=> d!1458892 (noDuplicateKeys!1523 lt!1789136)))

(assert (=> d!1458892 (= (removePairForKey!1146 lt!1789136 key!4968) lt!1789625)))

(declare-fun b!4629853 () Bool)

(assert (=> b!4629853 (= e!2888127 (Cons!51584 (h!57650 lt!1789136) (removePairForKey!1146 (t!358756 lt!1789136) key!4968)))))

(assert (= (and d!1458892 c!792496) b!4629851))

(assert (= (and d!1458892 (not c!792496)) b!4629852))

(assert (= (and b!4629852 c!792495) b!4629853))

(assert (= (and b!4629852 (not c!792495)) b!4629854))

(declare-fun m!5477487 () Bool)

(assert (=> d!1458892 m!5477487))

(assert (=> d!1458892 m!5477293))

(declare-fun m!5477489 () Bool)

(assert (=> b!4629853 m!5477489))

(assert (=> b!4629537 d!1458892))

(declare-fun d!1458894 () Bool)

(assert (=> d!1458894 (= (tail!8158 newBucket!224) (t!358756 newBucket!224))))

(assert (=> b!4629537 d!1458894))

(declare-fun d!1458898 () Bool)

(assert (=> d!1458898 (= (tail!8158 oldBucket!40) (t!358756 oldBucket!40))))

(assert (=> b!4629537 d!1458898))

(declare-fun d!1458900 () Bool)

(declare-fun hash!3552 (Hashable!5920 K!12958) (_ BitVec 64))

(assert (=> d!1458900 (= (hash!3547 hashF!1389 key!4968) (hash!3552 hashF!1389 key!4968))))

(declare-fun bs!1026583 () Bool)

(assert (= bs!1026583 d!1458900))

(declare-fun m!5477499 () Bool)

(assert (=> bs!1026583 m!5477499))

(assert (=> b!4629541 d!1458900))

(declare-fun d!1458902 () Bool)

(assert (=> d!1458902 (= (eq!838 lt!1789129 lt!1789150) (= (content!8842 (toList!5011 lt!1789129)) (content!8842 (toList!5011 lt!1789150))))))

(declare-fun bs!1026584 () Bool)

(assert (= bs!1026584 d!1458902))

(declare-fun m!5477501 () Bool)

(assert (=> bs!1026584 m!5477501))

(declare-fun m!5477503 () Bool)

(assert (=> bs!1026584 m!5477503))

(assert (=> b!4629534 d!1458902))

(declare-fun d!1458904 () Bool)

(assert (=> d!1458904 (= (eq!838 lt!1789132 lt!1789129) (= (content!8842 (toList!5011 lt!1789132)) (content!8842 (toList!5011 lt!1789129))))))

(declare-fun bs!1026585 () Bool)

(assert (= bs!1026585 d!1458904))

(declare-fun m!5477505 () Bool)

(assert (=> bs!1026585 m!5477505))

(assert (=> bs!1026585 m!5477501))

(assert (=> b!4629534 d!1458904))

(declare-fun d!1458906 () Bool)

(declare-fun e!2888130 () Bool)

(assert (=> d!1458906 e!2888130))

(declare-fun res!1942256 () Bool)

(assert (=> d!1458906 (=> (not res!1942256) (not e!2888130))))

(declare-fun lt!1789628 () ListMap!4315)

(assert (=> d!1458906 (= res!1942256 (not (contains!14662 lt!1789628 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!269 (List!51708 K!12958) List!51708)

(assert (=> d!1458906 (= lt!1789628 (ListMap!4316 (removePresrvNoDuplicatedKeys!269 (toList!5011 lt!1789134) key!4968)))))

(assert (=> d!1458906 (= (-!563 lt!1789134 key!4968) lt!1789628)))

(declare-fun b!4629857 () Bool)

(declare-fun content!8846 (List!51712) (Set K!12958))

(assert (=> b!4629857 (= e!2888130 (= (set.minus (content!8846 (keys!18187 lt!1789134)) (set.insert key!4968 (as set.empty (Set K!12958)))) (content!8846 (keys!18187 lt!1789628))))))

(assert (= (and d!1458906 res!1942256) b!4629857))

(declare-fun m!5477507 () Bool)

(assert (=> d!1458906 m!5477507))

(declare-fun m!5477509 () Bool)

(assert (=> d!1458906 m!5477509))

(declare-fun m!5477511 () Bool)

(assert (=> b!4629857 m!5477511))

(declare-fun m!5477513 () Bool)

(assert (=> b!4629857 m!5477513))

(assert (=> b!4629857 m!5477513))

(declare-fun m!5477515 () Bool)

(assert (=> b!4629857 m!5477515))

(assert (=> b!4629857 m!5477511))

(declare-fun m!5477517 () Bool)

(assert (=> b!4629857 m!5477517))

(declare-fun m!5477519 () Bool)

(assert (=> b!4629857 m!5477519))

(assert (=> b!4629534 d!1458906))

(declare-fun d!1458908 () Bool)

(assert (=> d!1458908 (eq!838 (-!563 lt!1789124 key!4968) (-!563 lt!1789134 key!4968))))

(declare-fun lt!1789634 () Unit!113006)

(declare-fun choose!31457 (ListMap!4315 ListMap!4315 K!12958) Unit!113006)

(assert (=> d!1458908 (= lt!1789634 (choose!31457 lt!1789124 lt!1789134 key!4968))))

(assert (=> d!1458908 (eq!838 lt!1789124 lt!1789134)))

(assert (=> d!1458908 (= (lemmaRemovePreservesEq!19 lt!1789124 lt!1789134 key!4968) lt!1789634)))

(declare-fun bs!1026587 () Bool)

(assert (= bs!1026587 d!1458908))

(assert (=> bs!1026587 m!5476745))

(assert (=> bs!1026587 m!5476731))

(assert (=> bs!1026587 m!5476745))

(declare-fun m!5477531 () Bool)

(assert (=> bs!1026587 m!5477531))

(declare-fun m!5477533 () Bool)

(assert (=> bs!1026587 m!5477533))

(assert (=> bs!1026587 m!5476731))

(declare-fun m!5477537 () Bool)

(assert (=> bs!1026587 m!5477537))

(assert (=> b!4629534 d!1458908))

(declare-fun d!1458912 () Bool)

(declare-fun e!2888132 () Bool)

(assert (=> d!1458912 e!2888132))

(declare-fun res!1942259 () Bool)

(assert (=> d!1458912 (=> (not res!1942259) (not e!2888132))))

(declare-fun lt!1789637 () ListMap!4315)

(assert (=> d!1458912 (= res!1942259 (contains!14662 lt!1789637 (_1!29563 (h!57650 oldBucket!40))))))

(declare-fun lt!1789638 () List!51708)

(assert (=> d!1458912 (= lt!1789637 (ListMap!4316 lt!1789638))))

(declare-fun lt!1789639 () Unit!113006)

(declare-fun lt!1789636 () Unit!113006)

(assert (=> d!1458912 (= lt!1789639 lt!1789636)))

(assert (=> d!1458912 (= (getValueByKey!1481 lt!1789638 (_1!29563 (h!57650 oldBucket!40))) (Some!11638 (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458912 (= lt!1789636 (lemmaContainsTupThenGetReturnValue!863 lt!1789638 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458912 (= lt!1789638 (insertNoDuplicatedKeys!371 (toList!5011 lt!1789126) (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458912 (= (+!1889 lt!1789126 (h!57650 oldBucket!40)) lt!1789637)))

(declare-fun b!4629859 () Bool)

(declare-fun res!1942258 () Bool)

(assert (=> b!4629859 (=> (not res!1942258) (not e!2888132))))

(assert (=> b!4629859 (= res!1942258 (= (getValueByKey!1481 (toList!5011 lt!1789637) (_1!29563 (h!57650 oldBucket!40))) (Some!11638 (_2!29563 (h!57650 oldBucket!40)))))))

(declare-fun b!4629860 () Bool)

(assert (=> b!4629860 (= e!2888132 (contains!14666 (toList!5011 lt!1789637) (h!57650 oldBucket!40)))))

(assert (= (and d!1458912 res!1942259) b!4629859))

(assert (= (and b!4629859 res!1942258) b!4629860))

(declare-fun m!5477557 () Bool)

(assert (=> d!1458912 m!5477557))

(declare-fun m!5477559 () Bool)

(assert (=> d!1458912 m!5477559))

(declare-fun m!5477563 () Bool)

(assert (=> d!1458912 m!5477563))

(declare-fun m!5477567 () Bool)

(assert (=> d!1458912 m!5477567))

(declare-fun m!5477569 () Bool)

(assert (=> b!4629859 m!5477569))

(declare-fun m!5477571 () Bool)

(assert (=> b!4629860 m!5477571))

(assert (=> b!4629533 d!1458912))

(declare-fun d!1458918 () Bool)

(assert (=> d!1458918 (= (eq!838 lt!1789137 lt!1789145) (= (content!8842 (toList!5011 lt!1789137)) (content!8842 (toList!5011 lt!1789145))))))

(declare-fun bs!1026588 () Bool)

(assert (= bs!1026588 d!1458918))

(declare-fun m!5477573 () Bool)

(assert (=> bs!1026588 m!5477573))

(declare-fun m!5477575 () Bool)

(assert (=> bs!1026588 m!5477575))

(assert (=> b!4629533 d!1458918))

(declare-fun d!1458920 () Bool)

(assert (=> d!1458920 (eq!838 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 lt!1789153) Nil!51585)) (-!563 (extractMap!1579 (Cons!51585 (tuple2!52541 hash!414 (t!358756 oldBucket!40)) Nil!51585)) key!4968))))

(declare-fun lt!1789655 () Unit!113006)

(declare-fun choose!31458 ((_ BitVec 64) List!51708 List!51708 K!12958 Hashable!5920) Unit!113006)

(assert (=> d!1458920 (= lt!1789655 (choose!31458 hash!414 (t!358756 oldBucket!40) lt!1789153 key!4968 hashF!1389))))

(assert (=> d!1458920 (noDuplicateKeys!1523 (t!358756 oldBucket!40))))

(assert (=> d!1458920 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!125 hash!414 (t!358756 oldBucket!40) lt!1789153 key!4968 hashF!1389) lt!1789655)))

(declare-fun bs!1026591 () Bool)

(assert (= bs!1026591 d!1458920))

(declare-fun m!5477627 () Bool)

(assert (=> bs!1026591 m!5477627))

(declare-fun m!5477629 () Bool)

(assert (=> bs!1026591 m!5477629))

(assert (=> bs!1026591 m!5476837))

(assert (=> bs!1026591 m!5477627))

(assert (=> bs!1026591 m!5476837))

(assert (=> bs!1026591 m!5477629))

(declare-fun m!5477631 () Bool)

(assert (=> bs!1026591 m!5477631))

(assert (=> bs!1026591 m!5476963))

(declare-fun m!5477633 () Bool)

(assert (=> bs!1026591 m!5477633))

(assert (=> b!4629533 d!1458920))

(declare-fun d!1458934 () Bool)

(declare-fun e!2888143 () Bool)

(assert (=> d!1458934 e!2888143))

(declare-fun res!1942272 () Bool)

(assert (=> d!1458934 (=> (not res!1942272) (not e!2888143))))

(declare-fun lt!1789656 () ListMap!4315)

(assert (=> d!1458934 (= res!1942272 (not (contains!14662 lt!1789656 key!4968)))))

(assert (=> d!1458934 (= lt!1789656 (ListMap!4316 (removePresrvNoDuplicatedKeys!269 (toList!5011 lt!1789126) key!4968)))))

(assert (=> d!1458934 (= (-!563 lt!1789126 key!4968) lt!1789656)))

(declare-fun b!4629873 () Bool)

(assert (=> b!4629873 (= e!2888143 (= (set.minus (content!8846 (keys!18187 lt!1789126)) (set.insert key!4968 (as set.empty (Set K!12958)))) (content!8846 (keys!18187 lt!1789656))))))

(assert (= (and d!1458934 res!1942272) b!4629873))

(declare-fun m!5477635 () Bool)

(assert (=> d!1458934 m!5477635))

(declare-fun m!5477637 () Bool)

(assert (=> d!1458934 m!5477637))

(declare-fun m!5477639 () Bool)

(assert (=> b!4629873 m!5477639))

(assert (=> b!4629873 m!5477183))

(assert (=> b!4629873 m!5477183))

(declare-fun m!5477641 () Bool)

(assert (=> b!4629873 m!5477641))

(assert (=> b!4629873 m!5477639))

(declare-fun m!5477643 () Bool)

(assert (=> b!4629873 m!5477643))

(assert (=> b!4629873 m!5477519))

(assert (=> b!4629533 d!1458934))

(declare-fun d!1458936 () Bool)

(declare-fun e!2888144 () Bool)

(assert (=> d!1458936 e!2888144))

(declare-fun res!1942274 () Bool)

(assert (=> d!1458936 (=> (not res!1942274) (not e!2888144))))

(declare-fun lt!1789658 () ListMap!4315)

(assert (=> d!1458936 (= res!1942274 (contains!14662 lt!1789658 (_1!29563 (h!57650 oldBucket!40))))))

(declare-fun lt!1789659 () List!51708)

(assert (=> d!1458936 (= lt!1789658 (ListMap!4316 lt!1789659))))

(declare-fun lt!1789660 () Unit!113006)

(declare-fun lt!1789657 () Unit!113006)

(assert (=> d!1458936 (= lt!1789660 lt!1789657)))

(assert (=> d!1458936 (= (getValueByKey!1481 lt!1789659 (_1!29563 (h!57650 oldBucket!40))) (Some!11638 (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458936 (= lt!1789657 (lemmaContainsTupThenGetReturnValue!863 lt!1789659 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458936 (= lt!1789659 (insertNoDuplicatedKeys!371 (toList!5011 lt!1789145) (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40))))))

(assert (=> d!1458936 (= (+!1889 lt!1789145 (h!57650 oldBucket!40)) lt!1789658)))

(declare-fun b!4629874 () Bool)

(declare-fun res!1942273 () Bool)

(assert (=> b!4629874 (=> (not res!1942273) (not e!2888144))))

(assert (=> b!4629874 (= res!1942273 (= (getValueByKey!1481 (toList!5011 lt!1789658) (_1!29563 (h!57650 oldBucket!40))) (Some!11638 (_2!29563 (h!57650 oldBucket!40)))))))

(declare-fun b!4629875 () Bool)

(assert (=> b!4629875 (= e!2888144 (contains!14666 (toList!5011 lt!1789658) (h!57650 oldBucket!40)))))

(assert (= (and d!1458936 res!1942274) b!4629874))

(assert (= (and b!4629874 res!1942273) b!4629875))

(declare-fun m!5477645 () Bool)

(assert (=> d!1458936 m!5477645))

(declare-fun m!5477647 () Bool)

(assert (=> d!1458936 m!5477647))

(declare-fun m!5477649 () Bool)

(assert (=> d!1458936 m!5477649))

(declare-fun m!5477651 () Bool)

(assert (=> d!1458936 m!5477651))

(declare-fun m!5477653 () Bool)

(assert (=> b!4629874 m!5477653))

(declare-fun m!5477655 () Bool)

(assert (=> b!4629875 m!5477655))

(assert (=> b!4629533 d!1458936))

(declare-fun d!1458938 () Bool)

(assert (=> d!1458938 (= (-!563 (+!1889 lt!1789126 (tuple2!52539 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40)))) key!4968) (+!1889 (-!563 lt!1789126 key!4968) (tuple2!52539 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40)))))))

(declare-fun lt!1789674 () Unit!113006)

(declare-fun choose!31461 (ListMap!4315 K!12958 V!13204 K!12958) Unit!113006)

(assert (=> d!1458938 (= lt!1789674 (choose!31461 lt!1789126 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40)) key!4968))))

(assert (=> d!1458938 (not (= (_1!29563 (h!57650 oldBucket!40)) key!4968))))

(assert (=> d!1458938 (= (addRemoveCommutativeForDiffKeys!18 lt!1789126 (_1!29563 (h!57650 oldBucket!40)) (_2!29563 (h!57650 oldBucket!40)) key!4968) lt!1789674)))

(declare-fun bs!1026592 () Bool)

(assert (= bs!1026592 d!1458938))

(assert (=> bs!1026592 m!5476723))

(declare-fun m!5477663 () Bool)

(assert (=> bs!1026592 m!5477663))

(declare-fun m!5477665 () Bool)

(assert (=> bs!1026592 m!5477665))

(assert (=> bs!1026592 m!5476723))

(declare-fun m!5477667 () Bool)

(assert (=> bs!1026592 m!5477667))

(assert (=> bs!1026592 m!5477663))

(declare-fun m!5477669 () Bool)

(assert (=> bs!1026592 m!5477669))

(assert (=> b!4629533 d!1458938))

(declare-fun d!1458946 () Bool)

(declare-fun e!2888155 () Bool)

(assert (=> d!1458946 e!2888155))

(declare-fun res!1942277 () Bool)

(assert (=> d!1458946 (=> (not res!1942277) (not e!2888155))))

(declare-fun lt!1789675 () ListMap!4315)

(assert (=> d!1458946 (= res!1942277 (not (contains!14662 lt!1789675 key!4968)))))

(assert (=> d!1458946 (= lt!1789675 (ListMap!4316 (removePresrvNoDuplicatedKeys!269 (toList!5011 (+!1889 lt!1789126 (h!57650 oldBucket!40))) key!4968)))))

(assert (=> d!1458946 (= (-!563 (+!1889 lt!1789126 (h!57650 oldBucket!40)) key!4968) lt!1789675)))

(declare-fun b!4629894 () Bool)

(assert (=> b!4629894 (= e!2888155 (= (set.minus (content!8846 (keys!18187 (+!1889 lt!1789126 (h!57650 oldBucket!40)))) (set.insert key!4968 (as set.empty (Set K!12958)))) (content!8846 (keys!18187 lt!1789675))))))

(assert (= (and d!1458946 res!1942277) b!4629894))

(declare-fun m!5477671 () Bool)

(assert (=> d!1458946 m!5477671))

(declare-fun m!5477673 () Bool)

(assert (=> d!1458946 m!5477673))

(declare-fun m!5477675 () Bool)

(assert (=> b!4629894 m!5477675))

(assert (=> b!4629894 m!5476727))

(declare-fun m!5477677 () Bool)

(assert (=> b!4629894 m!5477677))

(assert (=> b!4629894 m!5477677))

(declare-fun m!5477679 () Bool)

(assert (=> b!4629894 m!5477679))

(assert (=> b!4629894 m!5477675))

(declare-fun m!5477681 () Bool)

(assert (=> b!4629894 m!5477681))

(assert (=> b!4629894 m!5477519))

(assert (=> b!4629533 d!1458946))

(declare-fun d!1458948 () Bool)

(declare-fun e!2888158 () Bool)

(assert (=> d!1458948 e!2888158))

(declare-fun res!1942279 () Bool)

(assert (=> d!1458948 (=> (not res!1942279) (not e!2888158))))

(declare-fun lt!1789680 () ListMap!4315)

(assert (=> d!1458948 (= res!1942279 (not (contains!14662 lt!1789680 key!4968)))))

(assert (=> d!1458948 (= lt!1789680 (ListMap!4316 (removePresrvNoDuplicatedKeys!269 (toList!5011 lt!1789124) key!4968)))))

(assert (=> d!1458948 (= (-!563 lt!1789124 key!4968) lt!1789680)))

(declare-fun b!4629898 () Bool)

(assert (=> b!4629898 (= e!2888158 (= (set.minus (content!8846 (keys!18187 lt!1789124)) (set.insert key!4968 (as set.empty (Set K!12958)))) (content!8846 (keys!18187 lt!1789680))))))

(assert (= (and d!1458948 res!1942279) b!4629898))

(declare-fun m!5477683 () Bool)

(assert (=> d!1458948 m!5477683))

(declare-fun m!5477687 () Bool)

(assert (=> d!1458948 m!5477687))

(declare-fun m!5477691 () Bool)

(assert (=> b!4629898 m!5477691))

(declare-fun m!5477693 () Bool)

(assert (=> b!4629898 m!5477693))

(assert (=> b!4629898 m!5477693))

(declare-fun m!5477697 () Bool)

(assert (=> b!4629898 m!5477697))

(assert (=> b!4629898 m!5477691))

(declare-fun m!5477699 () Bool)

(assert (=> b!4629898 m!5477699))

(assert (=> b!4629898 m!5477519))

(assert (=> b!4629533 d!1458948))

(declare-fun b!4629899 () Bool)

(declare-fun e!2888164 () List!51712)

(assert (=> b!4629899 (= e!2888164 (keys!18187 lt!1789134))))

(declare-fun b!4629900 () Bool)

(assert (=> b!4629900 false))

(declare-fun lt!1789686 () Unit!113006)

(declare-fun lt!1789683 () Unit!113006)

(assert (=> b!4629900 (= lt!1789686 lt!1789683)))

(assert (=> b!4629900 (containsKey!2497 (toList!5011 lt!1789134) key!4968)))

(assert (=> b!4629900 (= lt!1789683 (lemmaInGetKeysListThenContainsKey!669 (toList!5011 lt!1789134) key!4968))))

(declare-fun e!2888159 () Unit!113006)

(declare-fun Unit!113082 () Unit!113006)

(assert (=> b!4629900 (= e!2888159 Unit!113082)))

(declare-fun b!4629901 () Bool)

(declare-fun e!2888161 () Unit!113006)

(assert (=> b!4629901 (= e!2888161 e!2888159)))

(declare-fun c!792508 () Bool)

(declare-fun call!323038 () Bool)

(assert (=> b!4629901 (= c!792508 call!323038)))

(declare-fun d!1458950 () Bool)

(declare-fun e!2888160 () Bool)

(assert (=> d!1458950 e!2888160))

(declare-fun res!1942281 () Bool)

(assert (=> d!1458950 (=> res!1942281 e!2888160)))

(declare-fun e!2888162 () Bool)

(assert (=> d!1458950 (= res!1942281 e!2888162)))

(declare-fun res!1942282 () Bool)

(assert (=> d!1458950 (=> (not res!1942282) (not e!2888162))))

(declare-fun lt!1789684 () Bool)

(assert (=> d!1458950 (= res!1942282 (not lt!1789684))))

(declare-fun lt!1789687 () Bool)

(assert (=> d!1458950 (= lt!1789684 lt!1789687)))

(declare-fun lt!1789682 () Unit!113006)

(assert (=> d!1458950 (= lt!1789682 e!2888161)))

(declare-fun c!792507 () Bool)

(assert (=> d!1458950 (= c!792507 lt!1789687)))

(assert (=> d!1458950 (= lt!1789687 (containsKey!2497 (toList!5011 lt!1789134) key!4968))))

(assert (=> d!1458950 (= (contains!14662 lt!1789134 key!4968) lt!1789684)))

(declare-fun bm!323033 () Bool)

(assert (=> bm!323033 (= call!323038 (contains!14667 e!2888164 key!4968))))

(declare-fun c!792506 () Bool)

(assert (=> bm!323033 (= c!792506 c!792507)))

(declare-fun b!4629902 () Bool)

(declare-fun e!2888163 () Bool)

(assert (=> b!4629902 (= e!2888163 (contains!14667 (keys!18187 lt!1789134) key!4968))))

(declare-fun b!4629903 () Bool)

(declare-fun Unit!113083 () Unit!113006)

(assert (=> b!4629903 (= e!2888159 Unit!113083)))

(declare-fun b!4629904 () Bool)

(assert (=> b!4629904 (= e!2888160 e!2888163)))

(declare-fun res!1942280 () Bool)

(assert (=> b!4629904 (=> (not res!1942280) (not e!2888163))))

(assert (=> b!4629904 (= res!1942280 (isDefined!8904 (getValueByKey!1481 (toList!5011 lt!1789134) key!4968)))))

(declare-fun b!4629905 () Bool)

(declare-fun lt!1789688 () Unit!113006)

(assert (=> b!4629905 (= e!2888161 lt!1789688)))

(declare-fun lt!1789681 () Unit!113006)

(assert (=> b!4629905 (= lt!1789681 (lemmaContainsKeyImpliesGetValueByKeyDefined!1383 (toList!5011 lt!1789134) key!4968))))

(assert (=> b!4629905 (isDefined!8904 (getValueByKey!1481 (toList!5011 lt!1789134) key!4968))))

(declare-fun lt!1789685 () Unit!113006)

(assert (=> b!4629905 (= lt!1789685 lt!1789681)))

(assert (=> b!4629905 (= lt!1789688 (lemmaInListThenGetKeysListContains!665 (toList!5011 lt!1789134) key!4968))))

(assert (=> b!4629905 call!323038))

(declare-fun b!4629906 () Bool)

(assert (=> b!4629906 (= e!2888164 (getKeysList!670 (toList!5011 lt!1789134)))))

(declare-fun b!4629907 () Bool)

(assert (=> b!4629907 (= e!2888162 (not (contains!14667 (keys!18187 lt!1789134) key!4968)))))

(assert (= (and d!1458950 c!792507) b!4629905))

(assert (= (and d!1458950 (not c!792507)) b!4629901))

(assert (= (and b!4629901 c!792508) b!4629900))

(assert (= (and b!4629901 (not c!792508)) b!4629903))

(assert (= (or b!4629905 b!4629901) bm!323033))

(assert (= (and bm!323033 c!792506) b!4629906))

(assert (= (and bm!323033 (not c!792506)) b!4629899))

(assert (= (and d!1458950 res!1942282) b!4629907))

(assert (= (and d!1458950 (not res!1942281)) b!4629904))

(assert (= (and b!4629904 res!1942280) b!4629902))

(assert (=> b!4629902 m!5477513))

(assert (=> b!4629902 m!5477513))

(declare-fun m!5477705 () Bool)

(assert (=> b!4629902 m!5477705))

(assert (=> b!4629907 m!5477513))

(assert (=> b!4629907 m!5477513))

(assert (=> b!4629907 m!5477705))

(assert (=> b!4629899 m!5477513))

(declare-fun m!5477707 () Bool)

(assert (=> b!4629905 m!5477707))

(declare-fun m!5477709 () Bool)

(assert (=> b!4629905 m!5477709))

(assert (=> b!4629905 m!5477709))

(declare-fun m!5477711 () Bool)

(assert (=> b!4629905 m!5477711))

(declare-fun m!5477713 () Bool)

(assert (=> b!4629905 m!5477713))

(declare-fun m!5477715 () Bool)

(assert (=> b!4629900 m!5477715))

(declare-fun m!5477717 () Bool)

(assert (=> b!4629900 m!5477717))

(assert (=> d!1458950 m!5477715))

(declare-fun m!5477719 () Bool)

(assert (=> b!4629906 m!5477719))

(assert (=> b!4629904 m!5477709))

(assert (=> b!4629904 m!5477709))

(assert (=> b!4629904 m!5477711))

(declare-fun m!5477721 () Bool)

(assert (=> bm!323033 m!5477721))

(assert (=> b!4629544 d!1458950))

(declare-fun bs!1026594 () Bool)

(declare-fun d!1458956 () Bool)

(assert (= bs!1026594 (and d!1458956 d!1458872)))

(declare-fun lambda!193343 () Int)

(assert (=> bs!1026594 (= lambda!193343 lambda!193319)))

(declare-fun bs!1026595 () Bool)

(assert (= bs!1026595 (and d!1458956 d!1458830)))

(assert (=> bs!1026595 (= lambda!193343 lambda!193281)))

(declare-fun bs!1026596 () Bool)

(assert (= bs!1026596 (and d!1458956 d!1458886)))

(assert (=> bs!1026596 (= lambda!193343 lambda!193340)))

(declare-fun bs!1026597 () Bool)

(assert (= bs!1026597 (and d!1458956 d!1458848)))

(assert (=> bs!1026597 (= lambda!193343 lambda!193293)))

(declare-fun bs!1026598 () Bool)

(assert (= bs!1026598 (and d!1458956 d!1458854)))

(assert (=> bs!1026598 (= lambda!193343 lambda!193303)))

(declare-fun bs!1026599 () Bool)

(assert (= bs!1026599 (and d!1458956 d!1458836)))

(assert (=> bs!1026599 (= lambda!193343 lambda!193286)))

(declare-fun bs!1026600 () Bool)

(assert (= bs!1026600 (and d!1458956 d!1458790)))

(assert (=> bs!1026600 (= lambda!193343 lambda!193266)))

(declare-fun bs!1026601 () Bool)

(assert (= bs!1026601 (and d!1458956 d!1458888)))

(assert (=> bs!1026601 (= lambda!193343 lambda!193341)))

(declare-fun bs!1026602 () Bool)

(assert (= bs!1026602 (and d!1458956 b!4629539)))

(assert (=> bs!1026602 (= lambda!193343 lambda!193225)))

(declare-fun lt!1789689 () ListMap!4315)

(assert (=> d!1458956 (invariantList!1219 (toList!5011 lt!1789689))))

(declare-fun e!2888165 () ListMap!4315)

(assert (=> d!1458956 (= lt!1789689 e!2888165)))

(declare-fun c!792509 () Bool)

(assert (=> d!1458956 (= c!792509 (is-Cons!51585 lt!1789138))))

(assert (=> d!1458956 (forall!10854 lt!1789138 lambda!193343)))

(assert (=> d!1458956 (= (extractMap!1579 lt!1789138) lt!1789689)))

(declare-fun b!4629908 () Bool)

(assert (=> b!4629908 (= e!2888165 (addToMapMapFromBucket!984 (_2!29564 (h!57651 lt!1789138)) (extractMap!1579 (t!358757 lt!1789138))))))

(declare-fun b!4629909 () Bool)

(assert (=> b!4629909 (= e!2888165 (ListMap!4316 Nil!51584))))

(assert (= (and d!1458956 c!792509) b!4629908))

(assert (= (and d!1458956 (not c!792509)) b!4629909))

(declare-fun m!5477725 () Bool)

(assert (=> d!1458956 m!5477725))

(declare-fun m!5477727 () Bool)

(assert (=> d!1458956 m!5477727))

(declare-fun m!5477729 () Bool)

(assert (=> b!4629908 m!5477729))

(assert (=> b!4629908 m!5477729))

(declare-fun m!5477731 () Bool)

(assert (=> b!4629908 m!5477731))

(assert (=> b!4629544 d!1458956))

(declare-fun b!4629913 () Bool)

(declare-fun e!2888167 () List!51708)

(assert (=> b!4629913 (= e!2888167 Nil!51584)))

(declare-fun b!4629911 () Bool)

(declare-fun e!2888166 () List!51708)

(assert (=> b!4629911 (= e!2888166 e!2888167)))

(declare-fun c!792510 () Bool)

(assert (=> b!4629911 (= c!792510 (is-Cons!51584 oldBucket!40))))

(declare-fun b!4629910 () Bool)

(assert (=> b!4629910 (= e!2888166 (t!358756 oldBucket!40))))

(declare-fun d!1458960 () Bool)

(declare-fun lt!1789693 () List!51708)

(assert (=> d!1458960 (not (containsKey!2495 lt!1789693 key!4968))))

(assert (=> d!1458960 (= lt!1789693 e!2888166)))

(declare-fun c!792511 () Bool)

(assert (=> d!1458960 (= c!792511 (and (is-Cons!51584 oldBucket!40) (= (_1!29563 (h!57650 oldBucket!40)) key!4968)))))

(assert (=> d!1458960 (noDuplicateKeys!1523 oldBucket!40)))

(assert (=> d!1458960 (= (removePairForKey!1146 oldBucket!40 key!4968) lt!1789693)))

(declare-fun b!4629912 () Bool)

(assert (=> b!4629912 (= e!2888167 (Cons!51584 (h!57650 oldBucket!40) (removePairForKey!1146 (t!358756 oldBucket!40) key!4968)))))

(assert (= (and d!1458960 c!792511) b!4629910))

(assert (= (and d!1458960 (not c!792511)) b!4629911))

(assert (= (and b!4629911 c!792510) b!4629912))

(assert (= (and b!4629911 (not c!792510)) b!4629913))

(declare-fun m!5477733 () Bool)

(assert (=> d!1458960 m!5477733))

(assert (=> d!1458960 m!5476781))

(assert (=> b!4629912 m!5476773))

(assert (=> b!4629543 d!1458960))

(declare-fun tp!1342282 () Bool)

(declare-fun b!4629918 () Bool)

(declare-fun e!2888170 () Bool)

(assert (=> b!4629918 (= e!2888170 (and tp_is_empty!29385 tp_is_empty!29387 tp!1342282))))

(assert (=> b!4629542 (= tp!1342273 e!2888170)))

(assert (= (and b!4629542 (is-Cons!51584 (t!358756 oldBucket!40))) b!4629918))

(declare-fun tp!1342283 () Bool)

(declare-fun b!4629921 () Bool)

(declare-fun e!2888173 () Bool)

(assert (=> b!4629921 (= e!2888173 (and tp_is_empty!29385 tp_is_empty!29387 tp!1342283))))

(assert (=> b!4629540 (= tp!1342272 e!2888173)))

(assert (= (and b!4629540 (is-Cons!51584 (t!358756 newBucket!224))) b!4629921))

(declare-fun b_lambda!170847 () Bool)

(assert (= b_lambda!170845 (or b!4629539 b_lambda!170847)))

(declare-fun bs!1026604 () Bool)

(declare-fun d!1458962 () Bool)

(assert (= bs!1026604 (and d!1458962 b!4629539)))

(assert (=> bs!1026604 (= (dynLambda!21513 lambda!193225 lt!1789128) (noDuplicateKeys!1523 (_2!29564 lt!1789128)))))

(declare-fun m!5477735 () Bool)

(assert (=> bs!1026604 m!5477735))

(assert (=> d!1458862 d!1458962))

(push 1)

(assert (not b!4629723))

(assert (not b!4629845))

(assert (not d!1458868))

(assert (not bm!323010))

(assert (not b!4629743))

(assert (not b!4629731))

(assert (not d!1458850))

(assert (not b!4629742))

(assert (not b!4629745))

(assert (not d!1458852))

(assert (not b!4629918))

(assert (not b!4629859))

(assert (not b!4629905))

(assert (not b!4629771))

(assert (not b!4629912))

(assert tp_is_empty!29387)

(assert (not bm!323023))

(assert (not d!1458842))

(assert (not d!1458860))

(assert (not b!4629735))

(assert (not d!1458912))

(assert (not b!4629906))

(assert (not b!4629791))

(assert (not bm!323022))

(assert (not d!1458934))

(assert (not d!1458908))

(assert (not bm!323007))

(assert (not d!1458904))

(assert (not d!1458902))

(assert (not b!4629667))

(assert (not b!4629908))

(assert (not b!4629819))

(assert (not bs!1026604))

(assert (not b!4629847))

(assert (not b!4629899))

(assert (not b!4629873))

(assert (not bm!323014))

(assert (not b!4629733))

(assert (not b!4629727))

(assert (not b!4629793))

(assert (not b!4629853))

(assert (not d!1458872))

(assert (not d!1458884))

(assert (not b!4629898))

(assert (not b!4629816))

(assert (not b!4629720))

(assert (not d!1458784))

(assert (not bm!323033))

(assert (not d!1458880))

(assert (not b!4629860))

(assert (not bm!323019))

(assert (not b!4629726))

(assert (not d!1458800))

(assert (not d!1458824))

(assert (not b!4629843))

(assert (not d!1458840))

(assert (not d!1458796))

(assert (not d!1458882))

(assert (not d!1458938))

(assert (not bm!323008))

(assert (not b!4629761))

(assert (not b!4629746))

(assert (not d!1458832))

(assert (not bm!323006))

(assert (not d!1458892))

(assert (not bm!323017))

(assert (not d!1458854))

(assert (not d!1458874))

(assert (not b!4629744))

(assert (not d!1458886))

(assert (not bm!323020))

(assert (not d!1458936))

(assert (not bm!323021))

(assert (not d!1458888))

(assert (not b!4629760))

(assert (not d!1458848))

(assert (not b!4629894))

(assert (not b!4629609))

(assert (not b!4629671))

(assert (not d!1458948))

(assert (not d!1458862))

(assert (not d!1458960))

(assert (not b!4629676))

(assert (not b!4629820))

(assert (not b!4629817))

(assert (not d!1458918))

(assert (not b!4629738))

(assert (not b!4629612))

(assert (not d!1458920))

(assert (not b!4629721))

(assert (not b!4629691))

(assert (not b!4629900))

(assert (not d!1458810))

(assert (not b!4629673))

(assert (not b!4629779))

(assert (not b!4629844))

(assert (not bm!323012))

(assert (not b!4629650))

(assert (not d!1458838))

(assert (not bm!323013))

(assert (not b!4629729))

(assert (not b!4629610))

(assert (not d!1458956))

(assert (not b!4629907))

(assert (not d!1458856))

(assert (not b!4629875))

(assert (not d!1458906))

(assert (not b!4629834))

(assert (not b!4629611))

(assert (not bm!323009))

(assert (not d!1458870))

(assert (not b!4629669))

(assert (not b!4629921))

(assert (not b!4629759))

(assert (not d!1458950))

(assert (not b!4629674))

(assert (not b!4629736))

(assert (not d!1458876))

(assert (not b!4629823))

(assert (not b!4629857))

(assert (not b!4629874))

(assert (not d!1458846))

(assert (not b!4629728))

(assert (not b!4629740))

(assert (not d!1458864))

(assert (not b!4629762))

(assert (not b!4629652))

(assert tp_is_empty!29385)

(assert (not d!1458878))

(assert (not d!1458804))

(assert (not bm!323018))

(assert (not d!1458946))

(assert (not d!1458836))

(assert (not bm!323011))

(assert (not d!1458844))

(assert (not b!4629904))

(assert (not b!4629902))

(assert (not b!4629654))

(assert (not b!4629678))

(assert (not d!1458900))

(assert (not d!1458830))

(assert (not d!1458790))

(assert (not b!4629768))

(assert (not b!4629777))

(assert (not b!4629692))

(assert (not b!4629725))

(assert (not b_lambda!170847))

(assert (not d!1458802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

