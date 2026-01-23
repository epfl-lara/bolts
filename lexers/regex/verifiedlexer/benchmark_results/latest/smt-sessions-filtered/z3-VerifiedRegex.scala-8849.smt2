; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472828 () Bool)

(assert start!472828)

(declare-fun b!4681652 () Bool)

(declare-fun e!2920938 () Bool)

(declare-fun e!2920935 () Bool)

(assert (=> b!4681652 (= e!2920938 e!2920935)))

(declare-fun res!1973111 () Bool)

(assert (=> b!4681652 (=> res!1973111 e!2920935)))

(declare-datatypes ((K!13650 0))(
  ( (K!13651 (val!19191 Int)) )
))
(declare-datatypes ((V!13896 0))(
  ( (V!13897 (val!19192 Int)) )
))
(declare-datatypes ((tuple2!53594 0))(
  ( (tuple2!53595 (_1!30091 K!13650) (_2!30091 V!13896)) )
))
(declare-datatypes ((List!52397 0))(
  ( (Nil!52273) (Cons!52273 (h!58490 tuple2!53594) (t!359557 List!52397)) )
))
(declare-datatypes ((ListMap!4853 0))(
  ( (ListMap!4854 (toList!5489 List!52397)) )
))
(declare-fun lt!1841618 () ListMap!4853)

(declare-fun lt!1841607 () ListMap!4853)

(assert (=> b!4681652 (= res!1973111 (not (= lt!1841618 lt!1841607)))))

(declare-datatypes ((tuple2!53596 0))(
  ( (tuple2!53597 (_1!30092 (_ BitVec 64)) (_2!30092 List!52397)) )
))
(declare-fun lt!1841602 () tuple2!53596)

(declare-datatypes ((List!52398 0))(
  ( (Nil!52274) (Cons!52274 (h!58491 tuple2!53596) (t!359558 List!52398)) )
))
(declare-datatypes ((ListLongMap!4019 0))(
  ( (ListLongMap!4020 (toList!5490 List!52398)) )
))
(declare-fun lm!2023 () ListLongMap!4019)

(declare-fun extractMap!1826 (List!52398) ListMap!4853)

(assert (=> b!4681652 (= lt!1841607 (extractMap!1826 (Cons!52274 lt!1841602 (t!359558 (toList!5490 lm!2023)))))))

(declare-fun lt!1841605 () List!52398)

(assert (=> b!4681652 (= lt!1841618 (extractMap!1826 lt!1841605))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun newBucket!218 () List!52397)

(assert (=> b!4681652 (= lt!1841602 (tuple2!53597 hash!405 newBucket!218))))

(declare-fun lt!1841613 () List!52397)

(assert (=> b!4681652 (= lt!1841605 (Cons!52274 (tuple2!53597 hash!405 lt!1841613) (t!359558 (toList!5490 lm!2023))))))

(declare-fun b!4681653 () Bool)

(declare-fun e!2920934 () Bool)

(declare-fun e!2920940 () Bool)

(assert (=> b!4681653 (= e!2920934 e!2920940)))

(declare-fun res!1973116 () Bool)

(assert (=> b!4681653 (=> res!1973116 e!2920940)))

(declare-fun lt!1841620 () ListMap!4853)

(declare-fun key!4653 () K!13650)

(declare-fun contains!15404 (ListMap!4853 K!13650) Bool)

(assert (=> b!4681653 (= res!1973116 (contains!15404 lt!1841620 key!4653))))

(assert (=> b!4681653 (not (contains!15404 lt!1841618 key!4653))))

(declare-datatypes ((Hashable!6169 0))(
  ( (HashableExt!6168 (__x!31872 Int)) )
))
(declare-fun hashF!1323 () Hashable!6169)

(declare-datatypes ((Unit!122875 0))(
  ( (Unit!122876) )
))
(declare-fun lt!1841617 () Unit!122875)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!400 (ListLongMap!4019 K!13650 Hashable!6169) Unit!122875)

(assert (=> b!4681653 (= lt!1841617 (lemmaNotInItsHashBucketThenNotInMap!400 (ListLongMap!4020 lt!1841605) key!4653 hashF!1323))))

(declare-fun b!4681654 () Bool)

(declare-fun e!2920939 () Bool)

(declare-fun e!2920936 () Bool)

(assert (=> b!4681654 (= e!2920939 e!2920936)))

(declare-fun res!1973115 () Bool)

(assert (=> b!4681654 (=> res!1973115 e!2920936)))

(declare-fun lt!1841610 () ListMap!4853)

(declare-fun eq!989 (ListMap!4853 ListMap!4853) Bool)

(assert (=> b!4681654 (= res!1973115 (not (eq!989 lt!1841610 lt!1841618)))))

(declare-fun lt!1841603 () ListMap!4853)

(assert (=> b!4681654 (eq!989 lt!1841603 lt!1841610)))

(declare-fun lt!1841615 () ListMap!4853)

(declare-fun -!664 (ListMap!4853 K!13650) ListMap!4853)

(assert (=> b!4681654 (= lt!1841610 (-!664 lt!1841615 key!4653))))

(declare-fun lt!1841619 () ListMap!4853)

(declare-fun lt!1841608 () Unit!122875)

(declare-fun lemmaRemovePreservesEq!84 (ListMap!4853 ListMap!4853 K!13650) Unit!122875)

(assert (=> b!4681654 (= lt!1841608 (lemmaRemovePreservesEq!84 lt!1841619 lt!1841615 key!4653))))

(declare-fun b!4681655 () Bool)

(declare-fun e!2920941 () Bool)

(assert (=> b!4681655 (= e!2920941 e!2920934)))

(declare-fun res!1973098 () Bool)

(assert (=> b!4681655 (=> res!1973098 e!2920934)))

(declare-fun lt!1841609 () ListMap!4853)

(declare-fun oldBucket!34 () List!52397)

(declare-fun addToMapMapFromBucket!1232 (List!52397 ListMap!4853) ListMap!4853)

(assert (=> b!4681655 (= res!1973098 (not (eq!989 lt!1841619 (addToMapMapFromBucket!1232 oldBucket!34 lt!1841609))))))

(declare-fun +!2102 (ListMap!4853 tuple2!53594) ListMap!4853)

(assert (=> b!4681655 (= lt!1841619 (+!2102 lt!1841620 (h!58490 oldBucket!34)))))

(declare-fun lt!1841612 () tuple2!53594)

(assert (=> b!4681655 (eq!989 (addToMapMapFromBucket!1232 (Cons!52273 lt!1841612 lt!1841613) lt!1841609) (+!2102 lt!1841620 lt!1841612))))

(declare-fun lt!1841611 () Unit!122875)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!238 (tuple2!53594 List!52397 ListMap!4853) Unit!122875)

(assert (=> b!4681655 (= lt!1841611 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!238 lt!1841612 lt!1841613 lt!1841609))))

(declare-fun head!9891 (List!52397) tuple2!53594)

(assert (=> b!4681655 (= lt!1841612 (head!9891 oldBucket!34))))

(declare-fun b!4681656 () Bool)

(declare-fun res!1973114 () Bool)

(declare-fun e!2920942 () Bool)

(assert (=> b!4681656 (=> (not res!1973114) (not e!2920942))))

(declare-fun allKeysSameHash!1626 (List!52397 (_ BitVec 64) Hashable!6169) Bool)

(assert (=> b!4681656 (= res!1973114 (allKeysSameHash!1626 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4681657 () Bool)

(declare-fun e!2920930 () Bool)

(assert (=> b!4681657 (= e!2920940 e!2920930)))

(declare-fun res!1973097 () Bool)

(assert (=> b!4681657 (=> res!1973097 e!2920930)))

(assert (=> b!4681657 (= res!1973097 (not (= lt!1841603 lt!1841620)))))

(assert (=> b!4681657 (= lt!1841603 (-!664 lt!1841619 key!4653))))

(assert (=> b!4681657 (= (-!664 (+!2102 lt!1841620 (tuple2!53595 key!4653 (_2!30091 (h!58490 oldBucket!34)))) key!4653) lt!1841620)))

(declare-fun lt!1841614 () Unit!122875)

(declare-fun addThenRemoveForNewKeyIsSame!55 (ListMap!4853 K!13650 V!13896) Unit!122875)

(assert (=> b!4681657 (= lt!1841614 (addThenRemoveForNewKeyIsSame!55 lt!1841620 key!4653 (_2!30091 (h!58490 oldBucket!34))))))

(declare-fun b!4681658 () Bool)

(assert (=> b!4681658 (= e!2920935 e!2920941)))

(declare-fun res!1973113 () Bool)

(assert (=> b!4681658 (=> res!1973113 e!2920941)))

(assert (=> b!4681658 (= res!1973113 (not (= lt!1841620 (addToMapMapFromBucket!1232 newBucket!218 lt!1841609))))))

(assert (=> b!4681658 (= lt!1841620 (addToMapMapFromBucket!1232 lt!1841613 lt!1841609))))

(declare-fun b!4681659 () Bool)

(declare-fun res!1973103 () Bool)

(declare-fun e!2920932 () Bool)

(assert (=> b!4681659 (=> (not res!1973103) (not e!2920932))))

(assert (=> b!4681659 (= res!1973103 (allKeysSameHash!1626 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4681660 () Bool)

(declare-fun res!1973110 () Bool)

(declare-fun e!2920943 () Bool)

(assert (=> b!4681660 (=> (not res!1973110) (not e!2920943))))

(get-info :version)

(assert (=> b!4681660 (= res!1973110 ((_ is Cons!52274) (toList!5490 lm!2023)))))

(declare-fun b!4681661 () Bool)

(declare-fun res!1973108 () Bool)

(assert (=> b!4681661 (=> res!1973108 e!2920934)))

(declare-fun containsKey!2951 (List!52397 K!13650) Bool)

(assert (=> b!4681661 (= res!1973108 (containsKey!2951 lt!1841613 key!4653))))

(declare-fun b!4681662 () Bool)

(declare-fun res!1973107 () Bool)

(assert (=> b!4681662 (=> (not res!1973107) (not e!2920932))))

(declare-fun allKeysSameHashInMap!1714 (ListLongMap!4019 Hashable!6169) Bool)

(assert (=> b!4681662 (= res!1973107 (allKeysSameHashInMap!1714 lm!2023 hashF!1323))))

(declare-fun b!4681664 () Bool)

(declare-fun res!1973102 () Bool)

(assert (=> b!4681664 (=> (not res!1973102) (not e!2920942))))

(declare-fun noDuplicateKeys!1800 (List!52397) Bool)

(assert (=> b!4681664 (= res!1973102 (noDuplicateKeys!1800 oldBucket!34))))

(declare-fun b!4681665 () Bool)

(assert (=> b!4681665 (= e!2920936 (not (= (toList!5490 lm!2023) Nil!52274)))))

(declare-fun lt!1841616 () ListMap!4853)

(declare-fun tail!8465 (List!52398) List!52398)

(assert (=> b!4681665 (= lt!1841616 (extractMap!1826 (Cons!52274 lt!1841602 (tail!8465 (toList!5490 lm!2023)))))))

(declare-fun b!4681666 () Bool)

(declare-fun res!1973112 () Bool)

(assert (=> b!4681666 (=> (not res!1973112) (not e!2920942))))

(declare-fun removePairForKey!1395 (List!52397 K!13650) List!52397)

(assert (=> b!4681666 (= res!1973112 (= (removePairForKey!1395 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4681667 () Bool)

(assert (=> b!4681667 (= e!2920930 e!2920939)))

(declare-fun res!1973101 () Bool)

(assert (=> b!4681667 (=> res!1973101 e!2920939)))

(assert (=> b!4681667 (= res!1973101 (not (eq!989 lt!1841619 lt!1841615)))))

(declare-fun lt!1841604 () tuple2!53596)

(assert (=> b!4681667 (= lt!1841615 (extractMap!1826 (Cons!52274 lt!1841604 (t!359558 (toList!5490 lm!2023)))))))

(declare-fun b!4681668 () Bool)

(declare-fun e!2920931 () Bool)

(assert (=> b!4681668 (= e!2920943 (not e!2920931))))

(declare-fun res!1973117 () Bool)

(assert (=> b!4681668 (=> res!1973117 e!2920931)))

(assert (=> b!4681668 (= res!1973117 (or (not ((_ is Cons!52273) oldBucket!34)) (not (= (_1!30091 (h!58490 oldBucket!34)) key!4653))))))

(declare-fun lt!1841606 () ListMap!4853)

(assert (=> b!4681668 (= lt!1841606 (addToMapMapFromBucket!1232 (_2!30092 (h!58491 (toList!5490 lm!2023))) lt!1841609))))

(assert (=> b!4681668 (= lt!1841609 (extractMap!1826 (t!359558 (toList!5490 lm!2023))))))

(declare-fun tail!8466 (ListLongMap!4019) ListLongMap!4019)

(assert (=> b!4681668 (= (t!359558 (toList!5490 lm!2023)) (toList!5490 (tail!8466 lm!2023)))))

(declare-fun b!4681669 () Bool)

(assert (=> b!4681669 (= e!2920942 e!2920932)))

(declare-fun res!1973109 () Bool)

(assert (=> b!4681669 (=> (not res!1973109) (not e!2920932))))

(assert (=> b!4681669 (= res!1973109 (contains!15404 lt!1841606 key!4653))))

(assert (=> b!4681669 (= lt!1841606 (extractMap!1826 (toList!5490 lm!2023)))))

(declare-fun b!4681670 () Bool)

(declare-fun res!1973105 () Bool)

(assert (=> b!4681670 (=> (not res!1973105) (not e!2920942))))

(assert (=> b!4681670 (= res!1973105 (noDuplicateKeys!1800 newBucket!218))))

(declare-fun b!4681671 () Bool)

(declare-fun res!1973119 () Bool)

(assert (=> b!4681671 (=> (not res!1973119) (not e!2920932))))

(declare-fun hash!3984 (Hashable!6169 K!13650) (_ BitVec 64))

(assert (=> b!4681671 (= res!1973119 (= (hash!3984 hashF!1323 key!4653) hash!405))))

(declare-fun b!4681672 () Bool)

(assert (=> b!4681672 (= e!2920931 e!2920938)))

(declare-fun res!1973099 () Bool)

(assert (=> b!4681672 (=> res!1973099 e!2920938)))

(assert (=> b!4681672 (= res!1973099 (not (= lt!1841613 newBucket!218)))))

(declare-fun tail!8467 (List!52397) List!52397)

(assert (=> b!4681672 (= lt!1841613 (tail!8467 oldBucket!34))))

(declare-fun b!4681673 () Bool)

(declare-fun res!1973106 () Bool)

(assert (=> b!4681673 (=> res!1973106 e!2920934)))

(assert (=> b!4681673 (= res!1973106 (not (= lt!1841620 lt!1841618)))))

(declare-fun res!1973118 () Bool)

(assert (=> start!472828 (=> (not res!1973118) (not e!2920942))))

(declare-fun lambda!205005 () Int)

(declare-fun forall!11239 (List!52398 Int) Bool)

(assert (=> start!472828 (= res!1973118 (forall!11239 (toList!5490 lm!2023) lambda!205005))))

(assert (=> start!472828 e!2920942))

(declare-fun e!2920937 () Bool)

(declare-fun inv!67524 (ListLongMap!4019) Bool)

(assert (=> start!472828 (and (inv!67524 lm!2023) e!2920937)))

(declare-fun tp_is_empty!30493 () Bool)

(assert (=> start!472828 tp_is_empty!30493))

(declare-fun e!2920933 () Bool)

(assert (=> start!472828 e!2920933))

(assert (=> start!472828 true))

(declare-fun e!2920944 () Bool)

(assert (=> start!472828 e!2920944))

(declare-fun tp!1345151 () Bool)

(declare-fun tp_is_empty!30495 () Bool)

(declare-fun b!4681663 () Bool)

(assert (=> b!4681663 (= e!2920944 (and tp_is_empty!30493 tp_is_empty!30495 tp!1345151))))

(declare-fun tp!1345150 () Bool)

(declare-fun b!4681674 () Bool)

(assert (=> b!4681674 (= e!2920933 (and tp_is_empty!30493 tp_is_empty!30495 tp!1345150))))

(declare-fun b!4681675 () Bool)

(assert (=> b!4681675 (= e!2920932 e!2920943)))

(declare-fun res!1973104 () Bool)

(assert (=> b!4681675 (=> (not res!1973104) (not e!2920943))))

(declare-fun head!9892 (List!52398) tuple2!53596)

(assert (=> b!4681675 (= res!1973104 (= (head!9892 (toList!5490 lm!2023)) lt!1841604))))

(assert (=> b!4681675 (= lt!1841604 (tuple2!53597 hash!405 oldBucket!34))))

(declare-fun b!4681676 () Bool)

(declare-fun tp!1345149 () Bool)

(assert (=> b!4681676 (= e!2920937 tp!1345149)))

(declare-fun b!4681677 () Bool)

(declare-fun res!1973100 () Bool)

(assert (=> b!4681677 (=> res!1973100 e!2920936)))

(assert (=> b!4681677 (= res!1973100 (not (eq!989 lt!1841607 lt!1841610)))))

(assert (= (and start!472828 res!1973118) b!4681664))

(assert (= (and b!4681664 res!1973102) b!4681670))

(assert (= (and b!4681670 res!1973105) b!4681666))

(assert (= (and b!4681666 res!1973112) b!4681656))

(assert (= (and b!4681656 res!1973114) b!4681669))

(assert (= (and b!4681669 res!1973109) b!4681671))

(assert (= (and b!4681671 res!1973119) b!4681659))

(assert (= (and b!4681659 res!1973103) b!4681662))

(assert (= (and b!4681662 res!1973107) b!4681675))

(assert (= (and b!4681675 res!1973104) b!4681660))

(assert (= (and b!4681660 res!1973110) b!4681668))

(assert (= (and b!4681668 (not res!1973117)) b!4681672))

(assert (= (and b!4681672 (not res!1973099)) b!4681652))

(assert (= (and b!4681652 (not res!1973111)) b!4681658))

(assert (= (and b!4681658 (not res!1973113)) b!4681655))

(assert (= (and b!4681655 (not res!1973098)) b!4681661))

(assert (= (and b!4681661 (not res!1973108)) b!4681673))

(assert (= (and b!4681673 (not res!1973106)) b!4681653))

(assert (= (and b!4681653 (not res!1973116)) b!4681657))

(assert (= (and b!4681657 (not res!1973097)) b!4681667))

(assert (= (and b!4681667 (not res!1973101)) b!4681654))

(assert (= (and b!4681654 (not res!1973115)) b!4681677))

(assert (= (and b!4681677 (not res!1973100)) b!4681665))

(assert (= start!472828 b!4681676))

(assert (= (and start!472828 ((_ is Cons!52273) oldBucket!34)) b!4681674))

(assert (= (and start!472828 ((_ is Cons!52273) newBucket!218)) b!4681663))

(declare-fun m!5579601 () Bool)

(assert (=> start!472828 m!5579601))

(declare-fun m!5579603 () Bool)

(assert (=> start!472828 m!5579603))

(declare-fun m!5579605 () Bool)

(assert (=> b!4681655 m!5579605))

(declare-fun m!5579607 () Bool)

(assert (=> b!4681655 m!5579607))

(declare-fun m!5579609 () Bool)

(assert (=> b!4681655 m!5579609))

(declare-fun m!5579611 () Bool)

(assert (=> b!4681655 m!5579611))

(declare-fun m!5579613 () Bool)

(assert (=> b!4681655 m!5579613))

(declare-fun m!5579615 () Bool)

(assert (=> b!4681655 m!5579615))

(declare-fun m!5579617 () Bool)

(assert (=> b!4681655 m!5579617))

(assert (=> b!4681655 m!5579607))

(declare-fun m!5579619 () Bool)

(assert (=> b!4681655 m!5579619))

(assert (=> b!4681655 m!5579615))

(assert (=> b!4681655 m!5579605))

(declare-fun m!5579621 () Bool)

(assert (=> b!4681670 m!5579621))

(declare-fun m!5579623 () Bool)

(assert (=> b!4681658 m!5579623))

(declare-fun m!5579625 () Bool)

(assert (=> b!4681658 m!5579625))

(declare-fun m!5579627 () Bool)

(assert (=> b!4681672 m!5579627))

(declare-fun m!5579629 () Bool)

(assert (=> b!4681652 m!5579629))

(declare-fun m!5579631 () Bool)

(assert (=> b!4681652 m!5579631))

(declare-fun m!5579633 () Bool)

(assert (=> b!4681662 m!5579633))

(declare-fun m!5579635 () Bool)

(assert (=> b!4681656 m!5579635))

(declare-fun m!5579637 () Bool)

(assert (=> b!4681653 m!5579637))

(declare-fun m!5579639 () Bool)

(assert (=> b!4681653 m!5579639))

(declare-fun m!5579641 () Bool)

(assert (=> b!4681653 m!5579641))

(declare-fun m!5579643 () Bool)

(assert (=> b!4681665 m!5579643))

(declare-fun m!5579645 () Bool)

(assert (=> b!4681665 m!5579645))

(declare-fun m!5579647 () Bool)

(assert (=> b!4681671 m!5579647))

(declare-fun m!5579649 () Bool)

(assert (=> b!4681675 m!5579649))

(declare-fun m!5579651 () Bool)

(assert (=> b!4681657 m!5579651))

(declare-fun m!5579653 () Bool)

(assert (=> b!4681657 m!5579653))

(assert (=> b!4681657 m!5579653))

(declare-fun m!5579655 () Bool)

(assert (=> b!4681657 m!5579655))

(declare-fun m!5579657 () Bool)

(assert (=> b!4681657 m!5579657))

(declare-fun m!5579659 () Bool)

(assert (=> b!4681659 m!5579659))

(declare-fun m!5579661 () Bool)

(assert (=> b!4681667 m!5579661))

(declare-fun m!5579663 () Bool)

(assert (=> b!4681667 m!5579663))

(declare-fun m!5579665 () Bool)

(assert (=> b!4681661 m!5579665))

(declare-fun m!5579667 () Bool)

(assert (=> b!4681654 m!5579667))

(declare-fun m!5579669 () Bool)

(assert (=> b!4681654 m!5579669))

(declare-fun m!5579671 () Bool)

(assert (=> b!4681654 m!5579671))

(declare-fun m!5579673 () Bool)

(assert (=> b!4681654 m!5579673))

(declare-fun m!5579675 () Bool)

(assert (=> b!4681668 m!5579675))

(declare-fun m!5579677 () Bool)

(assert (=> b!4681668 m!5579677))

(declare-fun m!5579679 () Bool)

(assert (=> b!4681668 m!5579679))

(declare-fun m!5579681 () Bool)

(assert (=> b!4681666 m!5579681))

(declare-fun m!5579683 () Bool)

(assert (=> b!4681669 m!5579683))

(declare-fun m!5579685 () Bool)

(assert (=> b!4681669 m!5579685))

(declare-fun m!5579687 () Bool)

(assert (=> b!4681677 m!5579687))

(declare-fun m!5579689 () Bool)

(assert (=> b!4681664 m!5579689))

(check-sat (not b!4681658) (not start!472828) (not b!4681676) tp_is_empty!30495 (not b!4681670) (not b!4681655) (not b!4681667) (not b!4681672) (not b!4681677) (not b!4681653) (not b!4681663) (not b!4681657) (not b!4681652) (not b!4681669) (not b!4681666) (not b!4681668) (not b!4681664) tp_is_empty!30493 (not b!4681674) (not b!4681665) (not b!4681654) (not b!4681671) (not b!4681656) (not b!4681659) (not b!4681662) (not b!4681675) (not b!4681661))
(check-sat)
