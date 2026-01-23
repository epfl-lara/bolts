; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473564 () Bool)

(assert start!473564)

(declare-fun res!1975691 () Bool)

(declare-fun e!2923348 () Bool)

(assert (=> start!473564 (=> (not res!1975691) (not e!2923348))))

(declare-datatypes ((K!13730 0))(
  ( (K!13731 (val!19255 Int)) )
))
(declare-datatypes ((V!13976 0))(
  ( (V!13977 (val!19256 Int)) )
))
(declare-datatypes ((tuple2!53722 0))(
  ( (tuple2!53723 (_1!30155 K!13730) (_2!30155 V!13976)) )
))
(declare-datatypes ((List!52475 0))(
  ( (Nil!52351) (Cons!52351 (h!58582 tuple2!53722) (t!359637 List!52475)) )
))
(declare-datatypes ((tuple2!53724 0))(
  ( (tuple2!53725 (_1!30156 (_ BitVec 64)) (_2!30156 List!52475)) )
))
(declare-datatypes ((List!52476 0))(
  ( (Nil!52352) (Cons!52352 (h!58583 tuple2!53724) (t!359638 List!52476)) )
))
(declare-datatypes ((ListLongMap!4083 0))(
  ( (ListLongMap!4084 (toList!5553 List!52476)) )
))
(declare-fun lm!2023 () ListLongMap!4083)

(declare-fun lambda!205969 () Int)

(declare-fun forall!11285 (List!52476 Int) Bool)

(assert (=> start!473564 (= res!1975691 (forall!11285 (toList!5553 lm!2023) lambda!205969))))

(assert (=> start!473564 e!2923348))

(declare-fun e!2923349 () Bool)

(declare-fun inv!67604 (ListLongMap!4083) Bool)

(assert (=> start!473564 (and (inv!67604 lm!2023) e!2923349)))

(declare-fun tp_is_empty!30621 () Bool)

(assert (=> start!473564 tp_is_empty!30621))

(declare-fun e!2923354 () Bool)

(assert (=> start!473564 e!2923354))

(assert (=> start!473564 true))

(declare-fun e!2923355 () Bool)

(assert (=> start!473564 e!2923355))

(declare-fun b!4685778 () Bool)

(declare-fun res!1975698 () Bool)

(declare-fun e!2923346 () Bool)

(assert (=> b!4685778 (=> (not res!1975698) (not e!2923346))))

(declare-datatypes ((Hashable!6201 0))(
  ( (HashableExt!6200 (__x!31904 Int)) )
))
(declare-fun hashF!1323 () Hashable!6201)

(declare-fun allKeysSameHashInMap!1746 (ListLongMap!4083 Hashable!6201) Bool)

(assert (=> b!4685778 (= res!1975698 (allKeysSameHashInMap!1746 lm!2023 hashF!1323))))

(declare-fun b!4685779 () Bool)

(declare-fun res!1975700 () Bool)

(declare-fun e!2923356 () Bool)

(assert (=> b!4685779 (=> res!1975700 e!2923356)))

(declare-fun key!4653 () K!13730)

(declare-fun oldBucket!34 () List!52475)

(declare-fun lt!1844873 () List!52475)

(declare-fun removePairForKey!1427 (List!52475 K!13730) List!52475)

(assert (=> b!4685779 (= res!1975700 (not (= (removePairForKey!1427 (t!359637 oldBucket!34) key!4653) lt!1844873)))))

(declare-fun b!4685780 () Bool)

(declare-fun e!2923347 () Bool)

(assert (=> b!4685780 (= e!2923347 e!2923346)))

(declare-fun res!1975690 () Bool)

(assert (=> b!4685780 (=> (not res!1975690) (not e!2923346))))

(declare-fun lt!1844871 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4685780 (= res!1975690 (= lt!1844871 hash!405))))

(declare-fun hash!4029 (Hashable!6201 K!13730) (_ BitVec 64))

(assert (=> b!4685780 (= lt!1844871 (hash!4029 hashF!1323 key!4653))))

(declare-fun b!4685781 () Bool)

(declare-fun e!2923352 () Bool)

(declare-datatypes ((ListMap!4917 0))(
  ( (ListMap!4918 (toList!5554 List!52475)) )
))
(declare-fun lt!1844869 () ListMap!4917)

(declare-fun addToMapMapFromBucket!1264 (List!52475 ListMap!4917) ListMap!4917)

(declare-fun extractMap!1858 (List!52476) ListMap!4917)

(assert (=> b!4685781 (= e!2923352 (= lt!1844869 (addToMapMapFromBucket!1264 (_2!30156 (h!58583 (toList!5553 lm!2023))) (extractMap!1858 (t!359638 (toList!5553 lm!2023))))))))

(declare-fun b!4685782 () Bool)

(declare-fun tp!1345577 () Bool)

(declare-fun tp_is_empty!30623 () Bool)

(assert (=> b!4685782 (= e!2923355 (and tp_is_empty!30621 tp_is_empty!30623 tp!1345577))))

(declare-fun b!4685783 () Bool)

(declare-fun e!2923353 () Bool)

(assert (=> b!4685783 (= e!2923356 e!2923353)))

(declare-fun res!1975704 () Bool)

(assert (=> b!4685783 (=> res!1975704 e!2923353)))

(declare-fun lt!1844874 () List!52475)

(declare-fun noDuplicateKeys!1832 (List!52475) Bool)

(assert (=> b!4685783 (= res!1975704 (not (noDuplicateKeys!1832 lt!1844874)))))

(declare-fun lt!1844865 () List!52476)

(declare-fun contains!15514 (ListMap!4917 K!13730) Bool)

(assert (=> b!4685783 (contains!15514 (extractMap!1858 lt!1844865) key!4653)))

(declare-datatypes ((Unit!123229 0))(
  ( (Unit!123230) )
))
(declare-fun lt!1844862 () Unit!123229)

(declare-fun lemmaListContainsThenExtractedMapContains!424 (ListLongMap!4083 K!13730 Hashable!6201) Unit!123229)

(assert (=> b!4685783 (= lt!1844862 (lemmaListContainsThenExtractedMapContains!424 (ListLongMap!4084 lt!1844865) key!4653 hashF!1323))))

(assert (=> b!4685783 (= lt!1844865 (Cons!52352 (tuple2!53725 hash!405 (t!359637 oldBucket!34)) (t!359638 (toList!5553 lm!2023))))))

(declare-fun b!4685784 () Bool)

(declare-fun res!1975699 () Bool)

(assert (=> b!4685784 (=> (not res!1975699) (not e!2923348))))

(assert (=> b!4685784 (= res!1975699 (noDuplicateKeys!1832 oldBucket!34))))

(declare-fun b!4685785 () Bool)

(declare-fun res!1975705 () Bool)

(assert (=> b!4685785 (=> (not res!1975705) (not e!2923346))))

(get-info :version)

(assert (=> b!4685785 (= res!1975705 ((_ is Cons!52352) (toList!5553 lm!2023)))))

(declare-fun b!4685786 () Bool)

(declare-fun tp!1345579 () Bool)

(assert (=> b!4685786 (= e!2923349 tp!1345579)))

(declare-fun b!4685787 () Bool)

(declare-fun res!1975703 () Bool)

(assert (=> b!4685787 (=> (not res!1975703) (not e!2923346))))

(declare-fun newBucket!218 () List!52475)

(declare-fun allKeysSameHash!1658 (List!52475 (_ BitVec 64) Hashable!6201) Bool)

(assert (=> b!4685787 (= res!1975703 (allKeysSameHash!1658 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4685788 () Bool)

(declare-fun res!1975689 () Bool)

(assert (=> b!4685788 (=> (not res!1975689) (not e!2923348))))

(assert (=> b!4685788 (= res!1975689 (noDuplicateKeys!1832 newBucket!218))))

(declare-fun tp!1345578 () Bool)

(declare-fun b!4685789 () Bool)

(assert (=> b!4685789 (= e!2923354 (and tp_is_empty!30621 tp_is_empty!30623 tp!1345578))))

(declare-fun b!4685790 () Bool)

(declare-fun res!1975694 () Bool)

(assert (=> b!4685790 (=> (not res!1975694) (not e!2923346))))

(declare-fun head!9927 (List!52476) tuple2!53724)

(assert (=> b!4685790 (= res!1975694 (= (head!9927 (toList!5553 lm!2023)) (tuple2!53725 hash!405 oldBucket!34)))))

(declare-fun b!4685791 () Bool)

(declare-fun e!2923351 () Bool)

(declare-fun e!2923350 () Bool)

(assert (=> b!4685791 (= e!2923351 e!2923350)))

(declare-fun res!1975693 () Bool)

(assert (=> b!4685791 (=> res!1975693 e!2923350)))

(declare-fun containsKey!3003 (List!52475 K!13730) Bool)

(assert (=> b!4685791 (= res!1975693 (not (containsKey!3003 (t!359637 oldBucket!34) key!4653)))))

(assert (=> b!4685791 (containsKey!3003 oldBucket!34 key!4653)))

(declare-fun lt!1844863 () Unit!123229)

(declare-fun lemmaGetPairDefinedThenContainsKey!184 (List!52475 K!13730 Hashable!6201) Unit!123229)

(assert (=> b!4685791 (= lt!1844863 (lemmaGetPairDefinedThenContainsKey!184 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1844866 () List!52475)

(declare-datatypes ((Option!12027 0))(
  ( (None!12026) (Some!12026 (v!46413 tuple2!53722)) )
))
(declare-fun isDefined!9282 (Option!12027) Bool)

(declare-fun getPair!436 (List!52475 K!13730) Option!12027)

(assert (=> b!4685791 (isDefined!9282 (getPair!436 lt!1844866 key!4653))))

(declare-fun lt!1844868 () tuple2!53724)

(declare-fun lt!1844870 () Unit!123229)

(declare-fun forallContained!3392 (List!52476 Int tuple2!53724) Unit!123229)

(assert (=> b!4685791 (= lt!1844870 (forallContained!3392 (toList!5553 lm!2023) lambda!205969 lt!1844868))))

(declare-fun contains!15515 (List!52476 tuple2!53724) Bool)

(assert (=> b!4685791 (contains!15515 (toList!5553 lm!2023) lt!1844868)))

(assert (=> b!4685791 (= lt!1844868 (tuple2!53725 lt!1844871 lt!1844866))))

(declare-fun lt!1844867 () Unit!123229)

(declare-fun lemmaGetValueImpliesTupleContained!241 (ListLongMap!4083 (_ BitVec 64) List!52475) Unit!123229)

(assert (=> b!4685791 (= lt!1844867 (lemmaGetValueImpliesTupleContained!241 lm!2023 lt!1844871 lt!1844866))))

(declare-fun apply!12315 (ListLongMap!4083 (_ BitVec 64)) List!52475)

(assert (=> b!4685791 (= lt!1844866 (apply!12315 lm!2023 lt!1844871))))

(declare-fun contains!15516 (ListLongMap!4083 (_ BitVec 64)) Bool)

(assert (=> b!4685791 (contains!15516 lm!2023 lt!1844871)))

(declare-fun lt!1844864 () Unit!123229)

(declare-fun lemmaInGenMapThenLongMapContainsHash!642 (ListLongMap!4083 K!13730 Hashable!6201) Unit!123229)

(assert (=> b!4685791 (= lt!1844864 (lemmaInGenMapThenLongMapContainsHash!642 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1844872 () Unit!123229)

(declare-fun lemmaInGenMapThenGetPairDefined!232 (ListLongMap!4083 K!13730 Hashable!6201) Unit!123229)

(assert (=> b!4685791 (= lt!1844872 (lemmaInGenMapThenGetPairDefined!232 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4685792 () Bool)

(assert (=> b!4685792 (= e!2923350 e!2923356)))

(declare-fun res!1975695 () Bool)

(assert (=> b!4685792 (=> res!1975695 e!2923356)))

(assert (=> b!4685792 (= res!1975695 (not (= (removePairForKey!1427 lt!1844874 key!4653) lt!1844873)))))

(declare-fun tail!8532 (List!52475) List!52475)

(assert (=> b!4685792 (= lt!1844873 (tail!8532 newBucket!218))))

(assert (=> b!4685792 (= lt!1844874 (tail!8532 oldBucket!34))))

(declare-fun b!4685793 () Bool)

(assert (=> b!4685793 (= e!2923346 (not e!2923351))))

(declare-fun res!1975702 () Bool)

(assert (=> b!4685793 (=> res!1975702 e!2923351)))

(assert (=> b!4685793 (= res!1975702 (or (and ((_ is Cons!52351) oldBucket!34) (= (_1!30155 (h!58582 oldBucket!34)) key!4653)) (not ((_ is Cons!52351) oldBucket!34)) (= (_1!30155 (h!58582 oldBucket!34)) key!4653)))))

(assert (=> b!4685793 e!2923352))

(declare-fun res!1975697 () Bool)

(assert (=> b!4685793 (=> (not res!1975697) (not e!2923352))))

(declare-fun tail!8533 (ListLongMap!4083) ListLongMap!4083)

(assert (=> b!4685793 (= res!1975697 (= (t!359638 (toList!5553 lm!2023)) (toList!5553 (tail!8533 lm!2023))))))

(declare-fun b!4685794 () Bool)

(declare-fun res!1975701 () Bool)

(assert (=> b!4685794 (=> (not res!1975701) (not e!2923348))))

(assert (=> b!4685794 (= res!1975701 (= (removePairForKey!1427 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4685795 () Bool)

(assert (=> b!4685795 (= e!2923353 true)))

(declare-fun lt!1844861 () Bool)

(declare-fun head!9928 (List!52475) tuple2!53722)

(assert (=> b!4685795 (= lt!1844861 (noDuplicateKeys!1832 (Cons!52351 (head!9928 oldBucket!34) lt!1844874)))))

(declare-fun b!4685796 () Bool)

(declare-fun res!1975692 () Bool)

(assert (=> b!4685796 (=> (not res!1975692) (not e!2923348))))

(assert (=> b!4685796 (= res!1975692 (allKeysSameHash!1658 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4685797 () Bool)

(assert (=> b!4685797 (= e!2923348 e!2923347)))

(declare-fun res!1975696 () Bool)

(assert (=> b!4685797 (=> (not res!1975696) (not e!2923347))))

(assert (=> b!4685797 (= res!1975696 (contains!15514 lt!1844869 key!4653))))

(assert (=> b!4685797 (= lt!1844869 (extractMap!1858 (toList!5553 lm!2023)))))

(assert (= (and start!473564 res!1975691) b!4685784))

(assert (= (and b!4685784 res!1975699) b!4685788))

(assert (= (and b!4685788 res!1975689) b!4685794))

(assert (= (and b!4685794 res!1975701) b!4685796))

(assert (= (and b!4685796 res!1975692) b!4685797))

(assert (= (and b!4685797 res!1975696) b!4685780))

(assert (= (and b!4685780 res!1975690) b!4685787))

(assert (= (and b!4685787 res!1975703) b!4685778))

(assert (= (and b!4685778 res!1975698) b!4685790))

(assert (= (and b!4685790 res!1975694) b!4685785))

(assert (= (and b!4685785 res!1975705) b!4685793))

(assert (= (and b!4685793 res!1975697) b!4685781))

(assert (= (and b!4685793 (not res!1975702)) b!4685791))

(assert (= (and b!4685791 (not res!1975693)) b!4685792))

(assert (= (and b!4685792 (not res!1975695)) b!4685779))

(assert (= (and b!4685779 (not res!1975700)) b!4685783))

(assert (= (and b!4685783 (not res!1975704)) b!4685795))

(assert (= start!473564 b!4685786))

(assert (= (and start!473564 ((_ is Cons!52351) oldBucket!34)) b!4685789))

(assert (= (and start!473564 ((_ is Cons!52351) newBucket!218)) b!4685782))

(declare-fun m!5584629 () Bool)

(assert (=> b!4685797 m!5584629))

(declare-fun m!5584631 () Bool)

(assert (=> b!4685797 m!5584631))

(declare-fun m!5584633 () Bool)

(assert (=> b!4685780 m!5584633))

(declare-fun m!5584635 () Bool)

(assert (=> b!4685781 m!5584635))

(assert (=> b!4685781 m!5584635))

(declare-fun m!5584637 () Bool)

(assert (=> b!4685781 m!5584637))

(declare-fun m!5584639 () Bool)

(assert (=> b!4685783 m!5584639))

(declare-fun m!5584641 () Bool)

(assert (=> b!4685783 m!5584641))

(assert (=> b!4685783 m!5584641))

(declare-fun m!5584643 () Bool)

(assert (=> b!4685783 m!5584643))

(declare-fun m!5584645 () Bool)

(assert (=> b!4685783 m!5584645))

(declare-fun m!5584647 () Bool)

(assert (=> b!4685790 m!5584647))

(declare-fun m!5584649 () Bool)

(assert (=> b!4685794 m!5584649))

(declare-fun m!5584651 () Bool)

(assert (=> b!4685791 m!5584651))

(declare-fun m!5584653 () Bool)

(assert (=> b!4685791 m!5584653))

(declare-fun m!5584655 () Bool)

(assert (=> b!4685791 m!5584655))

(declare-fun m!5584657 () Bool)

(assert (=> b!4685791 m!5584657))

(declare-fun m!5584659 () Bool)

(assert (=> b!4685791 m!5584659))

(declare-fun m!5584661 () Bool)

(assert (=> b!4685791 m!5584661))

(declare-fun m!5584663 () Bool)

(assert (=> b!4685791 m!5584663))

(declare-fun m!5584665 () Bool)

(assert (=> b!4685791 m!5584665))

(assert (=> b!4685791 m!5584659))

(declare-fun m!5584667 () Bool)

(assert (=> b!4685791 m!5584667))

(declare-fun m!5584669 () Bool)

(assert (=> b!4685791 m!5584669))

(declare-fun m!5584671 () Bool)

(assert (=> b!4685791 m!5584671))

(declare-fun m!5584673 () Bool)

(assert (=> b!4685791 m!5584673))

(declare-fun m!5584675 () Bool)

(assert (=> b!4685784 m!5584675))

(declare-fun m!5584677 () Bool)

(assert (=> b!4685787 m!5584677))

(declare-fun m!5584679 () Bool)

(assert (=> b!4685796 m!5584679))

(declare-fun m!5584681 () Bool)

(assert (=> start!473564 m!5584681))

(declare-fun m!5584683 () Bool)

(assert (=> start!473564 m!5584683))

(declare-fun m!5584685 () Bool)

(assert (=> b!4685792 m!5584685))

(declare-fun m!5584687 () Bool)

(assert (=> b!4685792 m!5584687))

(declare-fun m!5584689 () Bool)

(assert (=> b!4685792 m!5584689))

(declare-fun m!5584691 () Bool)

(assert (=> b!4685779 m!5584691))

(declare-fun m!5584693 () Bool)

(assert (=> b!4685793 m!5584693))

(declare-fun m!5584695 () Bool)

(assert (=> b!4685788 m!5584695))

(declare-fun m!5584697 () Bool)

(assert (=> b!4685778 m!5584697))

(declare-fun m!5584699 () Bool)

(assert (=> b!4685795 m!5584699))

(declare-fun m!5584701 () Bool)

(assert (=> b!4685795 m!5584701))

(check-sat (not b!4685787) (not b!4685779) (not b!4685778) (not b!4685791) (not b!4685790) tp_is_empty!30623 (not b!4685781) (not b!4685795) (not b!4685794) (not b!4685789) (not b!4685797) (not b!4685796) (not b!4685793) (not start!473564) tp_is_empty!30621 (not b!4685782) (not b!4685783) (not b!4685788) (not b!4685792) (not b!4685780) (not b!4685786) (not b!4685784))
(check-sat)
