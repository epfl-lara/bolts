; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474920 () Bool)

(assert start!474920)

(declare-datatypes ((K!13815 0))(
  ( (K!13816 (val!19323 Int)) )
))
(declare-datatypes ((V!14061 0))(
  ( (V!14062 (val!19324 Int)) )
))
(declare-datatypes ((tuple2!53858 0))(
  ( (tuple2!53859 (_1!30223 K!13815) (_2!30223 V!14061)) )
))
(declare-datatypes ((List!52565 0))(
  ( (Nil!52441) (Cons!52441 (h!58694 tuple2!53858) (t!359749 List!52565)) )
))
(declare-datatypes ((tuple2!53860 0))(
  ( (tuple2!53861 (_1!30224 (_ BitVec 64)) (_2!30224 List!52565)) )
))
(declare-datatypes ((List!52566 0))(
  ( (Nil!52442) (Cons!52442 (h!58695 tuple2!53860) (t!359750 List!52566)) )
))
(declare-datatypes ((ListLongMap!4151 0))(
  ( (ListLongMap!4152 (toList!5621 List!52566)) )
))
(declare-fun lm!2023 () ListLongMap!4151)

(declare-fun lt!1852711 () tuple2!53860)

(declare-fun lambda!207793 () Int)

(declare-fun e!2927320 () Bool)

(declare-fun b!4692447 () Bool)

(declare-fun forall!11341 (List!52566 Int) Bool)

(assert (=> b!4692447 (= e!2927320 (forall!11341 (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023))) lambda!207793))))

(declare-fun key!4653 () K!13815)

(declare-fun lt!1852710 () List!52566)

(declare-fun lt!1852698 () tuple2!53860)

(declare-datatypes ((ListMap!4985 0))(
  ( (ListMap!4986 (toList!5622 List!52565)) )
))
(declare-fun eq!1025 (ListMap!4985 ListMap!4985) Bool)

(declare-fun extractMap!1892 (List!52566) ListMap!4985)

(declare-fun -!670 (ListMap!4985 K!13815) ListMap!4985)

(assert (=> b!4692447 (eq!1025 (extractMap!1892 (Cons!52442 lt!1852711 lt!1852710)) (-!670 (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710)) key!4653))))

(declare-fun lt!1852705 () List!52566)

(declare-fun tail!8623 (List!52566) List!52566)

(assert (=> b!4692447 (= lt!1852710 (tail!8623 lt!1852705))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1852706 () List!52565)

(assert (=> b!4692447 (= lt!1852711 (tuple2!53861 hash!405 lt!1852706))))

(declare-datatypes ((Unit!124529 0))(
  ( (Unit!124530) )
))
(declare-fun lt!1852708 () Unit!124529)

(declare-datatypes ((Hashable!6235 0))(
  ( (HashableExt!6234 (__x!31938 Int)) )
))
(declare-fun hashF!1323 () Hashable!6235)

(declare-fun lt!1852702 () ListLongMap!4151)

(declare-fun oldBucket!34 () List!52565)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!40 (ListLongMap!4151 (_ BitVec 64) List!52565 List!52565 K!13815 Hashable!6235) Unit!124529)

(assert (=> b!4692447 (= lt!1852708 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!40 lt!1852702 hash!405 (t!359749 oldBucket!34) lt!1852706 key!4653 hashF!1323))))

(declare-fun b!4692449 () Bool)

(declare-fun res!1979668 () Bool)

(declare-fun e!2927316 () Bool)

(assert (=> b!4692449 (=> res!1979668 e!2927316)))

(declare-fun removePairForKey!1461 (List!52565 K!13815) List!52565)

(assert (=> b!4692449 (= res!1979668 (not (= (removePairForKey!1461 (t!359749 oldBucket!34) key!4653) lt!1852706)))))

(declare-fun b!4692450 () Bool)

(declare-fun res!1979669 () Bool)

(declare-fun e!2927318 () Bool)

(assert (=> b!4692450 (=> (not res!1979669) (not e!2927318))))

(declare-fun newBucket!218 () List!52565)

(declare-fun noDuplicateKeys!1866 (List!52565) Bool)

(assert (=> b!4692450 (= res!1979669 (noDuplicateKeys!1866 newBucket!218))))

(declare-fun b!4692451 () Bool)

(declare-fun e!2927319 () Bool)

(declare-fun e!2927317 () Bool)

(assert (=> b!4692451 (= e!2927319 (not e!2927317))))

(declare-fun res!1979682 () Bool)

(assert (=> b!4692451 (=> res!1979682 e!2927317)))

(get-info :version)

(assert (=> b!4692451 (= res!1979682 (or (and ((_ is Cons!52441) oldBucket!34) (= (_1!30223 (h!58694 oldBucket!34)) key!4653)) (not ((_ is Cons!52441) oldBucket!34)) (= (_1!30223 (h!58694 oldBucket!34)) key!4653)))))

(declare-fun lt!1852707 () ListMap!4985)

(declare-fun lt!1852721 () ListMap!4985)

(declare-fun addToMapMapFromBucket!1298 (List!52565 ListMap!4985) ListMap!4985)

(assert (=> b!4692451 (= lt!1852707 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (toList!5621 lm!2023))) lt!1852721))))

(assert (=> b!4692451 (= lt!1852721 (extractMap!1892 (t!359750 (toList!5621 lm!2023))))))

(declare-fun tail!8624 (ListLongMap!4151) ListLongMap!4151)

(assert (=> b!4692451 (= (t!359750 (toList!5621 lm!2023)) (toList!5621 (tail!8624 lm!2023)))))

(declare-fun b!4692452 () Bool)

(declare-fun res!1979680 () Bool)

(assert (=> b!4692452 (=> (not res!1979680) (not e!2927318))))

(declare-fun allKeysSameHash!1692 (List!52565 (_ BitVec 64) Hashable!6235) Bool)

(assert (=> b!4692452 (= res!1979680 (allKeysSameHash!1692 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4692453 () Bool)

(declare-fun tp_is_empty!30759 () Bool)

(declare-fun tp!1346103 () Bool)

(declare-fun tp_is_empty!30757 () Bool)

(declare-fun e!2927322 () Bool)

(assert (=> b!4692453 (= e!2927322 (and tp_is_empty!30757 tp_is_empty!30759 tp!1346103))))

(declare-fun b!4692454 () Bool)

(declare-fun res!1979671 () Bool)

(assert (=> b!4692454 (=> res!1979671 e!2927320)))

(declare-fun lt!1852716 () tuple2!53858)

(assert (=> b!4692454 (= res!1979671 (not (= (h!58694 oldBucket!34) lt!1852716)))))

(declare-fun b!4692455 () Bool)

(declare-fun e!2927324 () Bool)

(declare-fun tp!1346104 () Bool)

(assert (=> b!4692455 (= e!2927324 (and tp_is_empty!30757 tp_is_empty!30759 tp!1346104))))

(declare-fun b!4692456 () Bool)

(declare-fun res!1979678 () Bool)

(assert (=> b!4692456 (=> res!1979678 e!2927320)))

(declare-fun lt!1852699 () ListMap!4985)

(declare-fun lt!1852701 () ListMap!4985)

(declare-fun +!2150 (ListMap!4985 tuple2!53858) ListMap!4985)

(assert (=> b!4692456 (= res!1979678 (not (eq!1025 lt!1852699 (+!2150 lt!1852701 lt!1852716))))))

(declare-fun b!4692457 () Bool)

(declare-fun res!1979670 () Bool)

(declare-fun e!2927314 () Bool)

(assert (=> b!4692457 (=> (not res!1979670) (not e!2927314))))

(assert (=> b!4692457 (= res!1979670 (allKeysSameHash!1692 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1979673 () Bool)

(assert (=> start!474920 (=> (not res!1979673) (not e!2927318))))

(assert (=> start!474920 (= res!1979673 (forall!11341 (toList!5621 lm!2023) lambda!207793))))

(assert (=> start!474920 e!2927318))

(declare-fun e!2927323 () Bool)

(declare-fun inv!67689 (ListLongMap!4151) Bool)

(assert (=> start!474920 (and (inv!67689 lm!2023) e!2927323)))

(assert (=> start!474920 tp_is_empty!30757))

(assert (=> start!474920 e!2927324))

(assert (=> start!474920 true))

(assert (=> start!474920 e!2927322))

(declare-fun b!4692448 () Bool)

(declare-fun e!2927321 () Bool)

(assert (=> b!4692448 (= e!2927317 e!2927321)))

(declare-fun res!1979674 () Bool)

(assert (=> b!4692448 (=> res!1979674 e!2927321)))

(declare-fun containsKey!3081 (List!52565 K!13815) Bool)

(assert (=> b!4692448 (= res!1979674 (not (containsKey!3081 (t!359749 oldBucket!34) key!4653)))))

(assert (=> b!4692448 (containsKey!3081 oldBucket!34 key!4653)))

(declare-fun lt!1852714 () Unit!124529)

(declare-fun lemmaGetPairDefinedThenContainsKey!218 (List!52565 K!13815 Hashable!6235) Unit!124529)

(assert (=> b!4692448 (= lt!1852714 (lemmaGetPairDefinedThenContainsKey!218 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1852709 () List!52565)

(declare-datatypes ((Option!12105 0))(
  ( (None!12104) (Some!12104 (v!46535 tuple2!53858)) )
))
(declare-fun isDefined!9360 (Option!12105) Bool)

(declare-fun getPair!470 (List!52565 K!13815) Option!12105)

(assert (=> b!4692448 (isDefined!9360 (getPair!470 lt!1852709 key!4653))))

(declare-fun lt!1852718 () tuple2!53860)

(declare-fun lt!1852704 () Unit!124529)

(declare-fun forallContained!3448 (List!52566 Int tuple2!53860) Unit!124529)

(assert (=> b!4692448 (= lt!1852704 (forallContained!3448 (toList!5621 lm!2023) lambda!207793 lt!1852718))))

(declare-fun contains!15660 (List!52566 tuple2!53860) Bool)

(assert (=> b!4692448 (contains!15660 (toList!5621 lm!2023) lt!1852718)))

(declare-fun lt!1852703 () (_ BitVec 64))

(assert (=> b!4692448 (= lt!1852718 (tuple2!53861 lt!1852703 lt!1852709))))

(declare-fun lt!1852697 () Unit!124529)

(declare-fun lemmaGetValueImpliesTupleContained!275 (ListLongMap!4151 (_ BitVec 64) List!52565) Unit!124529)

(assert (=> b!4692448 (= lt!1852697 (lemmaGetValueImpliesTupleContained!275 lm!2023 lt!1852703 lt!1852709))))

(declare-fun apply!12349 (ListLongMap!4151 (_ BitVec 64)) List!52565)

(assert (=> b!4692448 (= lt!1852709 (apply!12349 lm!2023 lt!1852703))))

(declare-fun contains!15661 (ListLongMap!4151 (_ BitVec 64)) Bool)

(assert (=> b!4692448 (contains!15661 lm!2023 lt!1852703)))

(declare-fun lt!1852720 () Unit!124529)

(declare-fun lemmaInGenMapThenLongMapContainsHash!676 (ListLongMap!4151 K!13815 Hashable!6235) Unit!124529)

(assert (=> b!4692448 (= lt!1852720 (lemmaInGenMapThenLongMapContainsHash!676 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1852717 () Unit!124529)

(declare-fun lemmaInGenMapThenGetPairDefined!266 (ListLongMap!4151 K!13815 Hashable!6235) Unit!124529)

(assert (=> b!4692448 (= lt!1852717 (lemmaInGenMapThenGetPairDefined!266 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4692458 () Bool)

(declare-fun e!2927315 () Bool)

(assert (=> b!4692458 (= e!2927315 e!2927314)))

(declare-fun res!1979685 () Bool)

(assert (=> b!4692458 (=> (not res!1979685) (not e!2927314))))

(assert (=> b!4692458 (= res!1979685 (= lt!1852703 hash!405))))

(declare-fun hash!4087 (Hashable!6235 K!13815) (_ BitVec 64))

(assert (=> b!4692458 (= lt!1852703 (hash!4087 hashF!1323 key!4653))))

(declare-fun b!4692459 () Bool)

(assert (=> b!4692459 (= e!2927316 e!2927320)))

(declare-fun res!1979677 () Bool)

(assert (=> b!4692459 (=> res!1979677 e!2927320)))

(assert (=> b!4692459 (= res!1979677 (not (eq!1025 lt!1852699 (+!2150 lt!1852701 (h!58694 oldBucket!34)))))))

(declare-fun lt!1852719 () List!52565)

(assert (=> b!4692459 (= lt!1852701 (extractMap!1892 (Cons!52442 (tuple2!53861 hash!405 lt!1852719) (t!359750 (toList!5621 lm!2023)))))))

(declare-fun lt!1852715 () tuple2!53860)

(assert (=> b!4692459 (= lt!1852699 (extractMap!1892 (Cons!52442 lt!1852715 (t!359750 (toList!5621 lm!2023)))))))

(assert (=> b!4692459 (eq!1025 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852716 lt!1852706) lt!1852721) (+!2150 (addToMapMapFromBucket!1298 lt!1852706 lt!1852721) lt!1852716))))

(declare-fun lt!1852700 () Unit!124529)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!274 (tuple2!53858 List!52565 ListMap!4985) Unit!124529)

(assert (=> b!4692459 (= lt!1852700 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!274 lt!1852716 lt!1852706 lt!1852721))))

(declare-fun head!9995 (List!52565) tuple2!53858)

(assert (=> b!4692459 (= lt!1852716 (head!9995 newBucket!218))))

(declare-fun lt!1852713 () tuple2!53858)

(assert (=> b!4692459 (eq!1025 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852713 lt!1852719) lt!1852721) (+!2150 (addToMapMapFromBucket!1298 lt!1852719 lt!1852721) lt!1852713))))

(declare-fun lt!1852712 () Unit!124529)

(assert (=> b!4692459 (= lt!1852712 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!274 lt!1852713 lt!1852719 lt!1852721))))

(assert (=> b!4692459 (= lt!1852713 (head!9995 oldBucket!34))))

(declare-fun contains!15662 (ListMap!4985 K!13815) Bool)

(assert (=> b!4692459 (contains!15662 (extractMap!1892 lt!1852705) key!4653)))

(declare-fun lt!1852722 () Unit!124529)

(declare-fun lemmaListContainsThenExtractedMapContains!458 (ListLongMap!4151 K!13815 Hashable!6235) Unit!124529)

(assert (=> b!4692459 (= lt!1852722 (lemmaListContainsThenExtractedMapContains!458 lt!1852702 key!4653 hashF!1323))))

(assert (=> b!4692459 (= lt!1852702 (ListLongMap!4152 lt!1852705))))

(assert (=> b!4692459 (= lt!1852705 (Cons!52442 lt!1852698 (t!359750 (toList!5621 lm!2023))))))

(assert (=> b!4692459 (= lt!1852698 (tuple2!53861 hash!405 (t!359749 oldBucket!34)))))

(declare-fun b!4692460 () Bool)

(declare-fun res!1979675 () Bool)

(assert (=> b!4692460 (=> (not res!1979675) (not e!2927319))))

(assert (=> b!4692460 (= res!1979675 ((_ is Cons!52442) (toList!5621 lm!2023)))))

(declare-fun b!4692461 () Bool)

(declare-fun tp!1346105 () Bool)

(assert (=> b!4692461 (= e!2927323 tp!1346105)))

(declare-fun b!4692462 () Bool)

(declare-fun res!1979679 () Bool)

(assert (=> b!4692462 (=> (not res!1979679) (not e!2927314))))

(declare-fun allKeysSameHashInMap!1780 (ListLongMap!4151 Hashable!6235) Bool)

(assert (=> b!4692462 (= res!1979679 (allKeysSameHashInMap!1780 lm!2023 hashF!1323))))

(declare-fun b!4692463 () Bool)

(declare-fun res!1979681 () Bool)

(assert (=> b!4692463 (=> (not res!1979681) (not e!2927318))))

(assert (=> b!4692463 (= res!1979681 (noDuplicateKeys!1866 oldBucket!34))))

(declare-fun b!4692464 () Bool)

(assert (=> b!4692464 (= e!2927314 e!2927319)))

(declare-fun res!1979683 () Bool)

(assert (=> b!4692464 (=> (not res!1979683) (not e!2927319))))

(declare-fun head!9996 (List!52566) tuple2!53860)

(assert (=> b!4692464 (= res!1979683 (= (head!9996 (toList!5621 lm!2023)) lt!1852715))))

(assert (=> b!4692464 (= lt!1852715 (tuple2!53861 hash!405 oldBucket!34))))

(declare-fun b!4692465 () Bool)

(assert (=> b!4692465 (= e!2927318 e!2927315)))

(declare-fun res!1979676 () Bool)

(assert (=> b!4692465 (=> (not res!1979676) (not e!2927315))))

(assert (=> b!4692465 (= res!1979676 (contains!15662 lt!1852707 key!4653))))

(assert (=> b!4692465 (= lt!1852707 (extractMap!1892 (toList!5621 lm!2023)))))

(declare-fun b!4692466 () Bool)

(assert (=> b!4692466 (= e!2927321 e!2927316)))

(declare-fun res!1979672 () Bool)

(assert (=> b!4692466 (=> res!1979672 e!2927316)))

(assert (=> b!4692466 (= res!1979672 (not (= (removePairForKey!1461 lt!1852719 key!4653) lt!1852706)))))

(declare-fun tail!8625 (List!52565) List!52565)

(assert (=> b!4692466 (= lt!1852706 (tail!8625 newBucket!218))))

(assert (=> b!4692466 (= lt!1852719 (tail!8625 oldBucket!34))))

(declare-fun b!4692467 () Bool)

(declare-fun res!1979684 () Bool)

(assert (=> b!4692467 (=> (not res!1979684) (not e!2927318))))

(assert (=> b!4692467 (= res!1979684 (= (removePairForKey!1461 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!474920 res!1979673) b!4692463))

(assert (= (and b!4692463 res!1979681) b!4692450))

(assert (= (and b!4692450 res!1979669) b!4692467))

(assert (= (and b!4692467 res!1979684) b!4692452))

(assert (= (and b!4692452 res!1979680) b!4692465))

(assert (= (and b!4692465 res!1979676) b!4692458))

(assert (= (and b!4692458 res!1979685) b!4692457))

(assert (= (and b!4692457 res!1979670) b!4692462))

(assert (= (and b!4692462 res!1979679) b!4692464))

(assert (= (and b!4692464 res!1979683) b!4692460))

(assert (= (and b!4692460 res!1979675) b!4692451))

(assert (= (and b!4692451 (not res!1979682)) b!4692448))

(assert (= (and b!4692448 (not res!1979674)) b!4692466))

(assert (= (and b!4692466 (not res!1979672)) b!4692449))

(assert (= (and b!4692449 (not res!1979668)) b!4692459))

(assert (= (and b!4692459 (not res!1979677)) b!4692454))

(assert (= (and b!4692454 (not res!1979671)) b!4692456))

(assert (= (and b!4692456 (not res!1979678)) b!4692447))

(assert (= start!474920 b!4692461))

(assert (= (and start!474920 ((_ is Cons!52441) oldBucket!34)) b!4692455))

(assert (= (and start!474920 ((_ is Cons!52441) newBucket!218)) b!4692453))

(declare-fun m!5596755 () Bool)

(assert (=> b!4692456 m!5596755))

(assert (=> b!4692456 m!5596755))

(declare-fun m!5596757 () Bool)

(assert (=> b!4692456 m!5596757))

(declare-fun m!5596759 () Bool)

(assert (=> b!4692448 m!5596759))

(declare-fun m!5596761 () Bool)

(assert (=> b!4692448 m!5596761))

(declare-fun m!5596763 () Bool)

(assert (=> b!4692448 m!5596763))

(declare-fun m!5596765 () Bool)

(assert (=> b!4692448 m!5596765))

(declare-fun m!5596767 () Bool)

(assert (=> b!4692448 m!5596767))

(assert (=> b!4692448 m!5596767))

(declare-fun m!5596769 () Bool)

(assert (=> b!4692448 m!5596769))

(declare-fun m!5596771 () Bool)

(assert (=> b!4692448 m!5596771))

(declare-fun m!5596773 () Bool)

(assert (=> b!4692448 m!5596773))

(declare-fun m!5596775 () Bool)

(assert (=> b!4692448 m!5596775))

(declare-fun m!5596777 () Bool)

(assert (=> b!4692448 m!5596777))

(declare-fun m!5596779 () Bool)

(assert (=> b!4692448 m!5596779))

(declare-fun m!5596781 () Bool)

(assert (=> b!4692448 m!5596781))

(declare-fun m!5596783 () Bool)

(assert (=> b!4692463 m!5596783))

(declare-fun m!5596785 () Bool)

(assert (=> b!4692464 m!5596785))

(declare-fun m!5596787 () Bool)

(assert (=> b!4692458 m!5596787))

(declare-fun m!5596789 () Bool)

(assert (=> b!4692450 m!5596789))

(declare-fun m!5596791 () Bool)

(assert (=> b!4692465 m!5596791))

(declare-fun m!5596793 () Bool)

(assert (=> b!4692465 m!5596793))

(declare-fun m!5596795 () Bool)

(assert (=> start!474920 m!5596795))

(declare-fun m!5596797 () Bool)

(assert (=> start!474920 m!5596797))

(declare-fun m!5596799 () Bool)

(assert (=> b!4692447 m!5596799))

(declare-fun m!5596801 () Bool)

(assert (=> b!4692447 m!5596801))

(declare-fun m!5596803 () Bool)

(assert (=> b!4692447 m!5596803))

(declare-fun m!5596805 () Bool)

(assert (=> b!4692447 m!5596805))

(declare-fun m!5596807 () Bool)

(assert (=> b!4692447 m!5596807))

(declare-fun m!5596809 () Bool)

(assert (=> b!4692447 m!5596809))

(declare-fun m!5596811 () Bool)

(assert (=> b!4692447 m!5596811))

(assert (=> b!4692447 m!5596801))

(assert (=> b!4692447 m!5596811))

(assert (=> b!4692447 m!5596799))

(declare-fun m!5596813 () Bool)

(assert (=> b!4692466 m!5596813))

(declare-fun m!5596815 () Bool)

(assert (=> b!4692466 m!5596815))

(declare-fun m!5596817 () Bool)

(assert (=> b!4692466 m!5596817))

(declare-fun m!5596819 () Bool)

(assert (=> b!4692467 m!5596819))

(declare-fun m!5596821 () Bool)

(assert (=> b!4692451 m!5596821))

(declare-fun m!5596823 () Bool)

(assert (=> b!4692451 m!5596823))

(declare-fun m!5596825 () Bool)

(assert (=> b!4692451 m!5596825))

(declare-fun m!5596827 () Bool)

(assert (=> b!4692459 m!5596827))

(declare-fun m!5596829 () Bool)

(assert (=> b!4692459 m!5596829))

(declare-fun m!5596831 () Bool)

(assert (=> b!4692459 m!5596831))

(declare-fun m!5596833 () Bool)

(assert (=> b!4692459 m!5596833))

(declare-fun m!5596835 () Bool)

(assert (=> b!4692459 m!5596835))

(declare-fun m!5596837 () Bool)

(assert (=> b!4692459 m!5596837))

(declare-fun m!5596839 () Bool)

(assert (=> b!4692459 m!5596839))

(assert (=> b!4692459 m!5596827))

(declare-fun m!5596841 () Bool)

(assert (=> b!4692459 m!5596841))

(declare-fun m!5596843 () Bool)

(assert (=> b!4692459 m!5596843))

(assert (=> b!4692459 m!5596837))

(declare-fun m!5596845 () Bool)

(assert (=> b!4692459 m!5596845))

(declare-fun m!5596847 () Bool)

(assert (=> b!4692459 m!5596847))

(declare-fun m!5596849 () Bool)

(assert (=> b!4692459 m!5596849))

(declare-fun m!5596851 () Bool)

(assert (=> b!4692459 m!5596851))

(assert (=> b!4692459 m!5596835))

(declare-fun m!5596853 () Bool)

(assert (=> b!4692459 m!5596853))

(declare-fun m!5596855 () Bool)

(assert (=> b!4692459 m!5596855))

(declare-fun m!5596857 () Bool)

(assert (=> b!4692459 m!5596857))

(declare-fun m!5596859 () Bool)

(assert (=> b!4692459 m!5596859))

(assert (=> b!4692459 m!5596829))

(assert (=> b!4692459 m!5596849))

(assert (=> b!4692459 m!5596857))

(declare-fun m!5596861 () Bool)

(assert (=> b!4692459 m!5596861))

(assert (=> b!4692459 m!5596843))

(assert (=> b!4692459 m!5596855))

(declare-fun m!5596863 () Bool)

(assert (=> b!4692459 m!5596863))

(declare-fun m!5596865 () Bool)

(assert (=> b!4692449 m!5596865))

(declare-fun m!5596867 () Bool)

(assert (=> b!4692457 m!5596867))

(declare-fun m!5596869 () Bool)

(assert (=> b!4692452 m!5596869))

(declare-fun m!5596871 () Bool)

(assert (=> b!4692462 m!5596871))

(check-sat (not b!4692466) (not b!4692448) (not b!4692458) (not b!4692452) (not b!4692459) (not b!4692462) (not b!4692461) (not b!4692450) (not b!4692457) (not b!4692456) (not b!4692463) (not start!474920) (not b!4692465) tp_is_empty!30759 (not b!4692449) (not b!4692451) (not b!4692447) (not b!4692464) tp_is_empty!30757 (not b!4692453) (not b!4692467) (not b!4692455))
(check-sat)
(get-model)

(declare-fun b!4692502 () Bool)

(declare-fun e!2927346 () List!52565)

(assert (=> b!4692502 (= e!2927346 (t!359749 lt!1852719))))

(declare-fun b!4692504 () Bool)

(declare-fun e!2927345 () List!52565)

(assert (=> b!4692504 (= e!2927345 (Cons!52441 (h!58694 lt!1852719) (removePairForKey!1461 (t!359749 lt!1852719) key!4653)))))

(declare-fun b!4692505 () Bool)

(assert (=> b!4692505 (= e!2927345 Nil!52441)))

(declare-fun b!4692503 () Bool)

(assert (=> b!4692503 (= e!2927346 e!2927345)))

(declare-fun c!802251 () Bool)

(assert (=> b!4692503 (= c!802251 ((_ is Cons!52441) lt!1852719))))

(declare-fun d!1491355 () Bool)

(declare-fun lt!1852732 () List!52565)

(assert (=> d!1491355 (not (containsKey!3081 lt!1852732 key!4653))))

(assert (=> d!1491355 (= lt!1852732 e!2927346)))

(declare-fun c!802250 () Bool)

(assert (=> d!1491355 (= c!802250 (and ((_ is Cons!52441) lt!1852719) (= (_1!30223 (h!58694 lt!1852719)) key!4653)))))

(assert (=> d!1491355 (noDuplicateKeys!1866 lt!1852719)))

(assert (=> d!1491355 (= (removePairForKey!1461 lt!1852719 key!4653) lt!1852732)))

(assert (= (and d!1491355 c!802250) b!4692502))

(assert (= (and d!1491355 (not c!802250)) b!4692503))

(assert (= (and b!4692503 c!802251) b!4692504))

(assert (= (and b!4692503 (not c!802251)) b!4692505))

(declare-fun m!5596895 () Bool)

(assert (=> b!4692504 m!5596895))

(declare-fun m!5596897 () Bool)

(assert (=> d!1491355 m!5596897))

(declare-fun m!5596899 () Bool)

(assert (=> d!1491355 m!5596899))

(assert (=> b!4692466 d!1491355))

(declare-fun d!1491363 () Bool)

(assert (=> d!1491363 (= (tail!8625 newBucket!218) (t!359749 newBucket!218))))

(assert (=> b!4692466 d!1491363))

(declare-fun d!1491365 () Bool)

(assert (=> d!1491365 (= (tail!8625 oldBucket!34) (t!359749 oldBucket!34))))

(assert (=> b!4692466 d!1491365))

(declare-fun d!1491367 () Bool)

(declare-fun res!1979696 () Bool)

(declare-fun e!2927351 () Bool)

(assert (=> d!1491367 (=> res!1979696 e!2927351)))

(assert (=> d!1491367 (= res!1979696 ((_ is Nil!52442) (toList!5621 lm!2023)))))

(assert (=> d!1491367 (= (forall!11341 (toList!5621 lm!2023) lambda!207793) e!2927351)))

(declare-fun b!4692510 () Bool)

(declare-fun e!2927352 () Bool)

(assert (=> b!4692510 (= e!2927351 e!2927352)))

(declare-fun res!1979697 () Bool)

(assert (=> b!4692510 (=> (not res!1979697) (not e!2927352))))

(declare-fun dynLambda!21721 (Int tuple2!53860) Bool)

(assert (=> b!4692510 (= res!1979697 (dynLambda!21721 lambda!207793 (h!58695 (toList!5621 lm!2023))))))

(declare-fun b!4692511 () Bool)

(assert (=> b!4692511 (= e!2927352 (forall!11341 (t!359750 (toList!5621 lm!2023)) lambda!207793))))

(assert (= (and d!1491367 (not res!1979696)) b!4692510))

(assert (= (and b!4692510 res!1979697) b!4692511))

(declare-fun b_lambda!177063 () Bool)

(assert (=> (not b_lambda!177063) (not b!4692510)))

(declare-fun m!5596901 () Bool)

(assert (=> b!4692510 m!5596901))

(declare-fun m!5596903 () Bool)

(assert (=> b!4692511 m!5596903))

(assert (=> start!474920 d!1491367))

(declare-fun d!1491369 () Bool)

(declare-fun isStrictlySorted!657 (List!52566) Bool)

(assert (=> d!1491369 (= (inv!67689 lm!2023) (isStrictlySorted!657 (toList!5621 lm!2023)))))

(declare-fun bs!1088221 () Bool)

(assert (= bs!1088221 d!1491369))

(declare-fun m!5596905 () Bool)

(assert (=> bs!1088221 m!5596905))

(assert (=> start!474920 d!1491369))

(declare-fun d!1491371 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9183 (List!52565) (InoxSet tuple2!53858))

(assert (=> d!1491371 (= (eq!1025 lt!1852699 (+!2150 lt!1852701 lt!1852716)) (= (content!9183 (toList!5622 lt!1852699)) (content!9183 (toList!5622 (+!2150 lt!1852701 lt!1852716)))))))

(declare-fun bs!1088222 () Bool)

(assert (= bs!1088222 d!1491371))

(declare-fun m!5596907 () Bool)

(assert (=> bs!1088222 m!5596907))

(declare-fun m!5596909 () Bool)

(assert (=> bs!1088222 m!5596909))

(assert (=> b!4692456 d!1491371))

(declare-fun d!1491373 () Bool)

(declare-fun e!2927358 () Bool)

(assert (=> d!1491373 e!2927358))

(declare-fun res!1979705 () Bool)

(assert (=> d!1491373 (=> (not res!1979705) (not e!2927358))))

(declare-fun lt!1852744 () ListMap!4985)

(assert (=> d!1491373 (= res!1979705 (contains!15662 lt!1852744 (_1!30223 lt!1852716)))))

(declare-fun lt!1852747 () List!52565)

(assert (=> d!1491373 (= lt!1852744 (ListMap!4986 lt!1852747))))

(declare-fun lt!1852746 () Unit!124529)

(declare-fun lt!1852745 () Unit!124529)

(assert (=> d!1491373 (= lt!1852746 lt!1852745)))

(declare-datatypes ((Option!12106 0))(
  ( (None!12105) (Some!12105 (v!46540 V!14061)) )
))
(declare-fun getValueByKey!1794 (List!52565 K!13815) Option!12106)

(assert (=> d!1491373 (= (getValueByKey!1794 lt!1852747 (_1!30223 lt!1852716)) (Some!12105 (_2!30223 lt!1852716)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1007 (List!52565 K!13815 V!14061) Unit!124529)

(assert (=> d!1491373 (= lt!1852745 (lemmaContainsTupThenGetReturnValue!1007 lt!1852747 (_1!30223 lt!1852716) (_2!30223 lt!1852716)))))

(declare-fun insertNoDuplicatedKeys!515 (List!52565 K!13815 V!14061) List!52565)

(assert (=> d!1491373 (= lt!1852747 (insertNoDuplicatedKeys!515 (toList!5622 lt!1852701) (_1!30223 lt!1852716) (_2!30223 lt!1852716)))))

(assert (=> d!1491373 (= (+!2150 lt!1852701 lt!1852716) lt!1852744)))

(declare-fun b!4692519 () Bool)

(declare-fun res!1979706 () Bool)

(assert (=> b!4692519 (=> (not res!1979706) (not e!2927358))))

(assert (=> b!4692519 (= res!1979706 (= (getValueByKey!1794 (toList!5622 lt!1852744) (_1!30223 lt!1852716)) (Some!12105 (_2!30223 lt!1852716))))))

(declare-fun b!4692520 () Bool)

(declare-fun contains!15663 (List!52565 tuple2!53858) Bool)

(assert (=> b!4692520 (= e!2927358 (contains!15663 (toList!5622 lt!1852744) lt!1852716))))

(assert (= (and d!1491373 res!1979705) b!4692519))

(assert (= (and b!4692519 res!1979706) b!4692520))

(declare-fun m!5596925 () Bool)

(assert (=> d!1491373 m!5596925))

(declare-fun m!5596927 () Bool)

(assert (=> d!1491373 m!5596927))

(declare-fun m!5596929 () Bool)

(assert (=> d!1491373 m!5596929))

(declare-fun m!5596931 () Bool)

(assert (=> d!1491373 m!5596931))

(declare-fun m!5596933 () Bool)

(assert (=> b!4692519 m!5596933))

(declare-fun m!5596935 () Bool)

(assert (=> b!4692520 m!5596935))

(assert (=> b!4692456 d!1491373))

(declare-fun b!4692548 () Bool)

(declare-fun e!2927378 () Bool)

(declare-datatypes ((List!52568 0))(
  ( (Nil!52444) (Cons!52444 (h!58699 K!13815) (t!359754 List!52568)) )
))
(declare-fun contains!15664 (List!52568 K!13815) Bool)

(declare-fun keys!18733 (ListMap!4985) List!52568)

(assert (=> b!4692548 (= e!2927378 (contains!15664 (keys!18733 lt!1852707) key!4653))))

(declare-fun bm!327955 () Bool)

(declare-fun call!327960 () Bool)

(declare-fun e!2927382 () List!52568)

(assert (=> bm!327955 (= call!327960 (contains!15664 e!2927382 key!4653))))

(declare-fun c!802261 () Bool)

(declare-fun c!802263 () Bool)

(assert (=> bm!327955 (= c!802261 c!802263)))

(declare-fun b!4692550 () Bool)

(declare-fun e!2927380 () Bool)

(assert (=> b!4692550 (= e!2927380 (not (contains!15664 (keys!18733 lt!1852707) key!4653)))))

(declare-fun b!4692551 () Bool)

(declare-fun e!2927377 () Bool)

(assert (=> b!4692551 (= e!2927377 e!2927378)))

(declare-fun res!1979718 () Bool)

(assert (=> b!4692551 (=> (not res!1979718) (not e!2927378))))

(declare-fun isDefined!9362 (Option!12106) Bool)

(assert (=> b!4692551 (= res!1979718 (isDefined!9362 (getValueByKey!1794 (toList!5622 lt!1852707) key!4653)))))

(declare-fun b!4692552 () Bool)

(declare-fun getKeysList!857 (List!52565) List!52568)

(assert (=> b!4692552 (= e!2927382 (getKeysList!857 (toList!5622 lt!1852707)))))

(declare-fun b!4692553 () Bool)

(assert (=> b!4692553 false))

(declare-fun lt!1852782 () Unit!124529)

(declare-fun lt!1852785 () Unit!124529)

(assert (=> b!4692553 (= lt!1852782 lt!1852785)))

(declare-fun containsKey!3083 (List!52565 K!13815) Bool)

(assert (=> b!4692553 (containsKey!3083 (toList!5622 lt!1852707) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!856 (List!52565 K!13815) Unit!124529)

(assert (=> b!4692553 (= lt!1852785 (lemmaInGetKeysListThenContainsKey!856 (toList!5622 lt!1852707) key!4653))))

(declare-fun e!2927381 () Unit!124529)

(declare-fun Unit!124532 () Unit!124529)

(assert (=> b!4692553 (= e!2927381 Unit!124532)))

(declare-fun b!4692554 () Bool)

(declare-fun Unit!124533 () Unit!124529)

(assert (=> b!4692554 (= e!2927381 Unit!124533)))

(declare-fun b!4692549 () Bool)

(assert (=> b!4692549 (= e!2927382 (keys!18733 lt!1852707))))

(declare-fun d!1491377 () Bool)

(assert (=> d!1491377 e!2927377))

(declare-fun res!1979717 () Bool)

(assert (=> d!1491377 (=> res!1979717 e!2927377)))

(assert (=> d!1491377 (= res!1979717 e!2927380)))

(declare-fun res!1979716 () Bool)

(assert (=> d!1491377 (=> (not res!1979716) (not e!2927380))))

(declare-fun lt!1852783 () Bool)

(assert (=> d!1491377 (= res!1979716 (not lt!1852783))))

(declare-fun lt!1852786 () Bool)

(assert (=> d!1491377 (= lt!1852783 lt!1852786)))

(declare-fun lt!1852780 () Unit!124529)

(declare-fun e!2927379 () Unit!124529)

(assert (=> d!1491377 (= lt!1852780 e!2927379)))

(assert (=> d!1491377 (= c!802263 lt!1852786)))

(assert (=> d!1491377 (= lt!1852786 (containsKey!3083 (toList!5622 lt!1852707) key!4653))))

(assert (=> d!1491377 (= (contains!15662 lt!1852707 key!4653) lt!1852783)))

(declare-fun b!4692555 () Bool)

(declare-fun lt!1852781 () Unit!124529)

(assert (=> b!4692555 (= e!2927379 lt!1852781)))

(declare-fun lt!1852779 () Unit!124529)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1687 (List!52565 K!13815) Unit!124529)

(assert (=> b!4692555 (= lt!1852779 (lemmaContainsKeyImpliesGetValueByKeyDefined!1687 (toList!5622 lt!1852707) key!4653))))

(assert (=> b!4692555 (isDefined!9362 (getValueByKey!1794 (toList!5622 lt!1852707) key!4653))))

(declare-fun lt!1852784 () Unit!124529)

(assert (=> b!4692555 (= lt!1852784 lt!1852779)))

(declare-fun lemmaInListThenGetKeysListContains!852 (List!52565 K!13815) Unit!124529)

(assert (=> b!4692555 (= lt!1852781 (lemmaInListThenGetKeysListContains!852 (toList!5622 lt!1852707) key!4653))))

(assert (=> b!4692555 call!327960))

(declare-fun b!4692556 () Bool)

(assert (=> b!4692556 (= e!2927379 e!2927381)))

(declare-fun c!802262 () Bool)

(assert (=> b!4692556 (= c!802262 call!327960)))

(assert (= (and d!1491377 c!802263) b!4692555))

(assert (= (and d!1491377 (not c!802263)) b!4692556))

(assert (= (and b!4692556 c!802262) b!4692553))

(assert (= (and b!4692556 (not c!802262)) b!4692554))

(assert (= (or b!4692555 b!4692556) bm!327955))

(assert (= (and bm!327955 c!802261) b!4692552))

(assert (= (and bm!327955 (not c!802261)) b!4692549))

(assert (= (and d!1491377 res!1979716) b!4692550))

(assert (= (and d!1491377 (not res!1979717)) b!4692551))

(assert (= (and b!4692551 res!1979718) b!4692548))

(declare-fun m!5596967 () Bool)

(assert (=> b!4692553 m!5596967))

(declare-fun m!5596969 () Bool)

(assert (=> b!4692553 m!5596969))

(declare-fun m!5596971 () Bool)

(assert (=> b!4692548 m!5596971))

(assert (=> b!4692548 m!5596971))

(declare-fun m!5596973 () Bool)

(assert (=> b!4692548 m!5596973))

(assert (=> d!1491377 m!5596967))

(declare-fun m!5596975 () Bool)

(assert (=> b!4692552 m!5596975))

(assert (=> b!4692550 m!5596971))

(assert (=> b!4692550 m!5596971))

(assert (=> b!4692550 m!5596973))

(declare-fun m!5596977 () Bool)

(assert (=> b!4692551 m!5596977))

(assert (=> b!4692551 m!5596977))

(declare-fun m!5596979 () Bool)

(assert (=> b!4692551 m!5596979))

(declare-fun m!5596981 () Bool)

(assert (=> bm!327955 m!5596981))

(assert (=> b!4692549 m!5596971))

(declare-fun m!5596983 () Bool)

(assert (=> b!4692555 m!5596983))

(assert (=> b!4692555 m!5596977))

(assert (=> b!4692555 m!5596977))

(assert (=> b!4692555 m!5596979))

(declare-fun m!5596985 () Bool)

(assert (=> b!4692555 m!5596985))

(assert (=> b!4692465 d!1491377))

(declare-fun bs!1088232 () Bool)

(declare-fun d!1491391 () Bool)

(assert (= bs!1088232 (and d!1491391 start!474920)))

(declare-fun lambda!207803 () Int)

(assert (=> bs!1088232 (= lambda!207803 lambda!207793)))

(declare-fun lt!1852795 () ListMap!4985)

(declare-fun invariantList!1418 (List!52565) Bool)

(assert (=> d!1491391 (invariantList!1418 (toList!5622 lt!1852795))))

(declare-fun e!2927388 () ListMap!4985)

(assert (=> d!1491391 (= lt!1852795 e!2927388)))

(declare-fun c!802266 () Bool)

(assert (=> d!1491391 (= c!802266 ((_ is Cons!52442) (toList!5621 lm!2023)))))

(assert (=> d!1491391 (forall!11341 (toList!5621 lm!2023) lambda!207803)))

(assert (=> d!1491391 (= (extractMap!1892 (toList!5621 lm!2023)) lt!1852795)))

(declare-fun b!4692565 () Bool)

(assert (=> b!4692565 (= e!2927388 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (toList!5621 lm!2023))) (extractMap!1892 (t!359750 (toList!5621 lm!2023)))))))

(declare-fun b!4692566 () Bool)

(assert (=> b!4692566 (= e!2927388 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491391 c!802266) b!4692565))

(assert (= (and d!1491391 (not c!802266)) b!4692566))

(declare-fun m!5596997 () Bool)

(assert (=> d!1491391 m!5596997))

(declare-fun m!5596999 () Bool)

(assert (=> d!1491391 m!5596999))

(assert (=> b!4692565 m!5596823))

(assert (=> b!4692565 m!5596823))

(declare-fun m!5597001 () Bool)

(assert (=> b!4692565 m!5597001))

(assert (=> b!4692465 d!1491391))

(declare-fun d!1491399 () Bool)

(declare-fun res!1979726 () Bool)

(declare-fun e!2927393 () Bool)

(assert (=> d!1491399 (=> res!1979726 e!2927393)))

(assert (=> d!1491399 (= res!1979726 (not ((_ is Cons!52441) oldBucket!34)))))

(assert (=> d!1491399 (= (noDuplicateKeys!1866 oldBucket!34) e!2927393)))

(declare-fun b!4692571 () Bool)

(declare-fun e!2927394 () Bool)

(assert (=> b!4692571 (= e!2927393 e!2927394)))

(declare-fun res!1979727 () Bool)

(assert (=> b!4692571 (=> (not res!1979727) (not e!2927394))))

(assert (=> b!4692571 (= res!1979727 (not (containsKey!3081 (t!359749 oldBucket!34) (_1!30223 (h!58694 oldBucket!34)))))))

(declare-fun b!4692572 () Bool)

(assert (=> b!4692572 (= e!2927394 (noDuplicateKeys!1866 (t!359749 oldBucket!34)))))

(assert (= (and d!1491399 (not res!1979726)) b!4692571))

(assert (= (and b!4692571 res!1979727) b!4692572))

(declare-fun m!5597003 () Bool)

(assert (=> b!4692571 m!5597003))

(declare-fun m!5597005 () Bool)

(assert (=> b!4692572 m!5597005))

(assert (=> b!4692463 d!1491399))

(declare-fun d!1491401 () Bool)

(assert (=> d!1491401 (= (head!9996 (toList!5621 lm!2023)) (h!58695 (toList!5621 lm!2023)))))

(assert (=> b!4692464 d!1491401))

(declare-fun b!4692693 () Bool)

(assert (=> b!4692693 true))

(declare-fun bs!1088262 () Bool)

(declare-fun b!4692691 () Bool)

(assert (= bs!1088262 (and b!4692691 b!4692693)))

(declare-fun lambda!207851 () Int)

(declare-fun lambda!207850 () Int)

(assert (=> bs!1088262 (= lambda!207851 lambda!207850)))

(assert (=> b!4692691 true))

(declare-fun lt!1852938 () ListMap!4985)

(declare-fun lambda!207852 () Int)

(assert (=> bs!1088262 (= (= lt!1852938 lt!1852721) (= lambda!207852 lambda!207850))))

(assert (=> b!4692691 (= (= lt!1852938 lt!1852721) (= lambda!207852 lambda!207851))))

(assert (=> b!4692691 true))

(declare-fun bs!1088263 () Bool)

(declare-fun d!1491403 () Bool)

(assert (= bs!1088263 (and d!1491403 b!4692693)))

(declare-fun lambda!207853 () Int)

(declare-fun lt!1852924 () ListMap!4985)

(assert (=> bs!1088263 (= (= lt!1852924 lt!1852721) (= lambda!207853 lambda!207850))))

(declare-fun bs!1088264 () Bool)

(assert (= bs!1088264 (and d!1491403 b!4692691)))

(assert (=> bs!1088264 (= (= lt!1852924 lt!1852721) (= lambda!207853 lambda!207851))))

(assert (=> bs!1088264 (= (= lt!1852924 lt!1852938) (= lambda!207853 lambda!207852))))

(assert (=> d!1491403 true))

(declare-fun b!4692690 () Bool)

(declare-fun e!2927470 () Bool)

(assert (=> b!4692690 (= e!2927470 (invariantList!1418 (toList!5622 lt!1852924)))))

(declare-fun e!2927472 () ListMap!4985)

(assert (=> b!4692691 (= e!2927472 lt!1852938)))

(declare-fun lt!1852926 () ListMap!4985)

(assert (=> b!4692691 (= lt!1852926 (+!2150 lt!1852721 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023))))))))

(assert (=> b!4692691 (= lt!1852938 (addToMapMapFromBucket!1298 (t!359749 (_2!30224 (h!58695 (toList!5621 lm!2023)))) (+!2150 lt!1852721 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023)))))))))

(declare-fun lt!1852925 () Unit!124529)

(declare-fun call!327972 () Unit!124529)

(assert (=> b!4692691 (= lt!1852925 call!327972)))

(declare-fun call!327970 () Bool)

(assert (=> b!4692691 call!327970))

(declare-fun lt!1852920 () Unit!124529)

(assert (=> b!4692691 (= lt!1852920 lt!1852925)))

(declare-fun forall!11342 (List!52565 Int) Bool)

(assert (=> b!4692691 (forall!11342 (toList!5622 lt!1852926) lambda!207852)))

(declare-fun lt!1852933 () Unit!124529)

(declare-fun Unit!124534 () Unit!124529)

(assert (=> b!4692691 (= lt!1852933 Unit!124534)))

(assert (=> b!4692691 (forall!11342 (t!359749 (_2!30224 (h!58695 (toList!5621 lm!2023)))) lambda!207852)))

(declare-fun lt!1852929 () Unit!124529)

(declare-fun Unit!124535 () Unit!124529)

(assert (=> b!4692691 (= lt!1852929 Unit!124535)))

(declare-fun lt!1852928 () Unit!124529)

(declare-fun Unit!124536 () Unit!124529)

(assert (=> b!4692691 (= lt!1852928 Unit!124536)))

(declare-fun lt!1852921 () Unit!124529)

(declare-fun forallContained!3449 (List!52565 Int tuple2!53858) Unit!124529)

(assert (=> b!4692691 (= lt!1852921 (forallContained!3449 (toList!5622 lt!1852926) lambda!207852 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023))))))))

(assert (=> b!4692691 (contains!15662 lt!1852926 (_1!30223 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023))))))))

(declare-fun lt!1852940 () Unit!124529)

(declare-fun Unit!124537 () Unit!124529)

(assert (=> b!4692691 (= lt!1852940 Unit!124537)))

(assert (=> b!4692691 (contains!15662 lt!1852938 (_1!30223 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023))))))))

(declare-fun lt!1852931 () Unit!124529)

(declare-fun Unit!124538 () Unit!124529)

(assert (=> b!4692691 (= lt!1852931 Unit!124538)))

(assert (=> b!4692691 (forall!11342 (_2!30224 (h!58695 (toList!5621 lm!2023))) lambda!207852)))

(declare-fun lt!1852922 () Unit!124529)

(declare-fun Unit!124539 () Unit!124529)

(assert (=> b!4692691 (= lt!1852922 Unit!124539)))

(assert (=> b!4692691 (forall!11342 (toList!5622 lt!1852926) lambda!207852)))

(declare-fun lt!1852936 () Unit!124529)

(declare-fun Unit!124540 () Unit!124529)

(assert (=> b!4692691 (= lt!1852936 Unit!124540)))

(declare-fun lt!1852937 () Unit!124529)

(declare-fun Unit!124541 () Unit!124529)

(assert (=> b!4692691 (= lt!1852937 Unit!124541)))

(declare-fun lt!1852927 () Unit!124529)

(declare-fun addForallContainsKeyThenBeforeAdding!704 (ListMap!4985 ListMap!4985 K!13815 V!14061) Unit!124529)

(assert (=> b!4692691 (= lt!1852927 (addForallContainsKeyThenBeforeAdding!704 lt!1852721 lt!1852938 (_1!30223 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023))))) (_2!30223 (h!58694 (_2!30224 (h!58695 (toList!5621 lm!2023)))))))))

(assert (=> b!4692691 (forall!11342 (toList!5622 lt!1852721) lambda!207852)))

(declare-fun lt!1852939 () Unit!124529)

(assert (=> b!4692691 (= lt!1852939 lt!1852927)))

(assert (=> b!4692691 (forall!11342 (toList!5622 lt!1852721) lambda!207852)))

(declare-fun lt!1852923 () Unit!124529)

(declare-fun Unit!124542 () Unit!124529)

(assert (=> b!4692691 (= lt!1852923 Unit!124542)))

(declare-fun res!1979800 () Bool)

(assert (=> b!4692691 (= res!1979800 (forall!11342 (_2!30224 (h!58695 (toList!5621 lm!2023))) lambda!207852))))

(declare-fun e!2927471 () Bool)

(assert (=> b!4692691 (=> (not res!1979800) (not e!2927471))))

(assert (=> b!4692691 e!2927471))

(declare-fun lt!1852934 () Unit!124529)

(declare-fun Unit!124543 () Unit!124529)

(assert (=> b!4692691 (= lt!1852934 Unit!124543)))

(declare-fun b!4692692 () Bool)

(declare-fun call!327971 () Bool)

(assert (=> b!4692692 (= e!2927471 call!327971)))

(assert (=> b!4692693 (= e!2927472 lt!1852721)))

(declare-fun lt!1852932 () Unit!124529)

(assert (=> b!4692693 (= lt!1852932 call!327972)))

(assert (=> b!4692693 call!327971))

(declare-fun lt!1852935 () Unit!124529)

(assert (=> b!4692693 (= lt!1852935 lt!1852932)))

(assert (=> b!4692693 call!327970))

(declare-fun lt!1852930 () Unit!124529)

(declare-fun Unit!124544 () Unit!124529)

(assert (=> b!4692693 (= lt!1852930 Unit!124544)))

(assert (=> d!1491403 e!2927470))

(declare-fun res!1979801 () Bool)

(assert (=> d!1491403 (=> (not res!1979801) (not e!2927470))))

(assert (=> d!1491403 (= res!1979801 (forall!11342 (_2!30224 (h!58695 (toList!5621 lm!2023))) lambda!207853))))

(assert (=> d!1491403 (= lt!1852924 e!2927472)))

(declare-fun c!802287 () Bool)

(assert (=> d!1491403 (= c!802287 ((_ is Nil!52441) (_2!30224 (h!58695 (toList!5621 lm!2023)))))))

(assert (=> d!1491403 (noDuplicateKeys!1866 (_2!30224 (h!58695 (toList!5621 lm!2023))))))

(assert (=> d!1491403 (= (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (toList!5621 lm!2023))) lt!1852721) lt!1852924)))

(declare-fun bm!327965 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!705 (ListMap!4985) Unit!124529)

(assert (=> bm!327965 (= call!327972 (lemmaContainsAllItsOwnKeys!705 lt!1852721))))

(declare-fun b!4692694 () Bool)

(declare-fun res!1979799 () Bool)

(assert (=> b!4692694 (=> (not res!1979799) (not e!2927470))))

(assert (=> b!4692694 (= res!1979799 (forall!11342 (toList!5622 lt!1852721) lambda!207853))))

(declare-fun bm!327966 () Bool)

(assert (=> bm!327966 (= call!327970 (forall!11342 (toList!5622 lt!1852721) (ite c!802287 lambda!207850 lambda!207851)))))

(declare-fun bm!327967 () Bool)

(assert (=> bm!327967 (= call!327971 (forall!11342 (toList!5622 lt!1852721) (ite c!802287 lambda!207850 lambda!207852)))))

(assert (= (and d!1491403 c!802287) b!4692693))

(assert (= (and d!1491403 (not c!802287)) b!4692691))

(assert (= (and b!4692691 res!1979800) b!4692692))

(assert (= (or b!4692693 b!4692691) bm!327965))

(assert (= (or b!4692693 b!4692691) bm!327966))

(assert (= (or b!4692693 b!4692692) bm!327967))

(assert (= (and d!1491403 res!1979801) b!4692694))

(assert (= (and b!4692694 res!1979799) b!4692690))

(declare-fun m!5597143 () Bool)

(assert (=> bm!327967 m!5597143))

(declare-fun m!5597145 () Bool)

(assert (=> d!1491403 m!5597145))

(declare-fun m!5597147 () Bool)

(assert (=> d!1491403 m!5597147))

(declare-fun m!5597149 () Bool)

(assert (=> bm!327965 m!5597149))

(declare-fun m!5597151 () Bool)

(assert (=> b!4692691 m!5597151))

(declare-fun m!5597153 () Bool)

(assert (=> b!4692691 m!5597153))

(declare-fun m!5597155 () Bool)

(assert (=> b!4692691 m!5597155))

(declare-fun m!5597157 () Bool)

(assert (=> b!4692691 m!5597157))

(assert (=> b!4692691 m!5597153))

(declare-fun m!5597159 () Bool)

(assert (=> b!4692691 m!5597159))

(declare-fun m!5597161 () Bool)

(assert (=> b!4692691 m!5597161))

(assert (=> b!4692691 m!5597157))

(assert (=> b!4692691 m!5597161))

(declare-fun m!5597163 () Bool)

(assert (=> b!4692691 m!5597163))

(declare-fun m!5597165 () Bool)

(assert (=> b!4692691 m!5597165))

(declare-fun m!5597167 () Bool)

(assert (=> b!4692691 m!5597167))

(declare-fun m!5597169 () Bool)

(assert (=> b!4692691 m!5597169))

(assert (=> b!4692691 m!5597159))

(declare-fun m!5597171 () Bool)

(assert (=> b!4692694 m!5597171))

(declare-fun m!5597173 () Bool)

(assert (=> b!4692690 m!5597173))

(declare-fun m!5597175 () Bool)

(assert (=> bm!327966 m!5597175))

(assert (=> b!4692451 d!1491403))

(declare-fun bs!1088265 () Bool)

(declare-fun d!1491449 () Bool)

(assert (= bs!1088265 (and d!1491449 start!474920)))

(declare-fun lambda!207854 () Int)

(assert (=> bs!1088265 (= lambda!207854 lambda!207793)))

(declare-fun bs!1088266 () Bool)

(assert (= bs!1088266 (and d!1491449 d!1491391)))

(assert (=> bs!1088266 (= lambda!207854 lambda!207803)))

(declare-fun lt!1852941 () ListMap!4985)

(assert (=> d!1491449 (invariantList!1418 (toList!5622 lt!1852941))))

(declare-fun e!2927473 () ListMap!4985)

(assert (=> d!1491449 (= lt!1852941 e!2927473)))

(declare-fun c!802288 () Bool)

(assert (=> d!1491449 (= c!802288 ((_ is Cons!52442) (t!359750 (toList!5621 lm!2023))))))

(assert (=> d!1491449 (forall!11341 (t!359750 (toList!5621 lm!2023)) lambda!207854)))

(assert (=> d!1491449 (= (extractMap!1892 (t!359750 (toList!5621 lm!2023))) lt!1852941)))

(declare-fun b!4692697 () Bool)

(assert (=> b!4692697 (= e!2927473 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (t!359750 (toList!5621 lm!2023)))) (extractMap!1892 (t!359750 (t!359750 (toList!5621 lm!2023))))))))

(declare-fun b!4692698 () Bool)

(assert (=> b!4692698 (= e!2927473 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491449 c!802288) b!4692697))

(assert (= (and d!1491449 (not c!802288)) b!4692698))

(declare-fun m!5597177 () Bool)

(assert (=> d!1491449 m!5597177))

(declare-fun m!5597179 () Bool)

(assert (=> d!1491449 m!5597179))

(declare-fun m!5597181 () Bool)

(assert (=> b!4692697 m!5597181))

(assert (=> b!4692697 m!5597181))

(declare-fun m!5597183 () Bool)

(assert (=> b!4692697 m!5597183))

(assert (=> b!4692451 d!1491449))

(declare-fun d!1491451 () Bool)

(assert (=> d!1491451 (= (tail!8624 lm!2023) (ListLongMap!4152 (tail!8623 (toList!5621 lm!2023))))))

(declare-fun bs!1088267 () Bool)

(assert (= bs!1088267 d!1491451))

(declare-fun m!5597185 () Bool)

(assert (=> bs!1088267 m!5597185))

(assert (=> b!4692451 d!1491451))

(declare-fun bs!1088268 () Bool)

(declare-fun d!1491453 () Bool)

(assert (= bs!1088268 (and d!1491453 start!474920)))

(declare-fun lambda!207857 () Int)

(assert (=> bs!1088268 (not (= lambda!207857 lambda!207793))))

(declare-fun bs!1088269 () Bool)

(assert (= bs!1088269 (and d!1491453 d!1491391)))

(assert (=> bs!1088269 (not (= lambda!207857 lambda!207803))))

(declare-fun bs!1088270 () Bool)

(assert (= bs!1088270 (and d!1491453 d!1491449)))

(assert (=> bs!1088270 (not (= lambda!207857 lambda!207854))))

(assert (=> d!1491453 true))

(assert (=> d!1491453 (= (allKeysSameHashInMap!1780 lm!2023 hashF!1323) (forall!11341 (toList!5621 lm!2023) lambda!207857))))

(declare-fun bs!1088271 () Bool)

(assert (= bs!1088271 d!1491453))

(declare-fun m!5597187 () Bool)

(assert (=> bs!1088271 m!5597187))

(assert (=> b!4692462 d!1491453))

(declare-fun bs!1088272 () Bool)

(declare-fun d!1491455 () Bool)

(assert (= bs!1088272 (and d!1491455 b!4692693)))

(declare-fun lambda!207860 () Int)

(assert (=> bs!1088272 (not (= lambda!207860 lambda!207850))))

(declare-fun bs!1088273 () Bool)

(assert (= bs!1088273 (and d!1491455 b!4692691)))

(assert (=> bs!1088273 (not (= lambda!207860 lambda!207851))))

(assert (=> bs!1088273 (not (= lambda!207860 lambda!207852))))

(declare-fun bs!1088274 () Bool)

(assert (= bs!1088274 (and d!1491455 d!1491403)))

(assert (=> bs!1088274 (not (= lambda!207860 lambda!207853))))

(assert (=> d!1491455 true))

(assert (=> d!1491455 true))

(assert (=> d!1491455 (= (allKeysSameHash!1692 oldBucket!34 hash!405 hashF!1323) (forall!11342 oldBucket!34 lambda!207860))))

(declare-fun bs!1088275 () Bool)

(assert (= bs!1088275 d!1491455))

(declare-fun m!5597189 () Bool)

(assert (=> bs!1088275 m!5597189))

(assert (=> b!4692452 d!1491455))

(declare-fun d!1491457 () Bool)

(declare-fun res!1979802 () Bool)

(declare-fun e!2927474 () Bool)

(assert (=> d!1491457 (=> res!1979802 e!2927474)))

(assert (=> d!1491457 (= res!1979802 (not ((_ is Cons!52441) newBucket!218)))))

(assert (=> d!1491457 (= (noDuplicateKeys!1866 newBucket!218) e!2927474)))

(declare-fun b!4692705 () Bool)

(declare-fun e!2927475 () Bool)

(assert (=> b!4692705 (= e!2927474 e!2927475)))

(declare-fun res!1979803 () Bool)

(assert (=> b!4692705 (=> (not res!1979803) (not e!2927475))))

(assert (=> b!4692705 (= res!1979803 (not (containsKey!3081 (t!359749 newBucket!218) (_1!30223 (h!58694 newBucket!218)))))))

(declare-fun b!4692706 () Bool)

(assert (=> b!4692706 (= e!2927475 (noDuplicateKeys!1866 (t!359749 newBucket!218)))))

(assert (= (and d!1491457 (not res!1979802)) b!4692705))

(assert (= (and b!4692705 res!1979803) b!4692706))

(declare-fun m!5597191 () Bool)

(assert (=> b!4692705 m!5597191))

(declare-fun m!5597193 () Bool)

(assert (=> b!4692706 m!5597193))

(assert (=> b!4692450 d!1491457))

(declare-fun bs!1088276 () Bool)

(declare-fun d!1491459 () Bool)

(assert (= bs!1088276 (and d!1491459 start!474920)))

(declare-fun lambda!207863 () Int)

(assert (=> bs!1088276 (= lambda!207863 lambda!207793)))

(declare-fun bs!1088277 () Bool)

(assert (= bs!1088277 (and d!1491459 d!1491391)))

(assert (=> bs!1088277 (= lambda!207863 lambda!207803)))

(declare-fun bs!1088278 () Bool)

(assert (= bs!1088278 (and d!1491459 d!1491449)))

(assert (=> bs!1088278 (= lambda!207863 lambda!207854)))

(declare-fun bs!1088279 () Bool)

(assert (= bs!1088279 (and d!1491459 d!1491453)))

(assert (=> bs!1088279 (not (= lambda!207863 lambda!207857))))

(assert (=> d!1491459 (contains!15662 (extractMap!1892 (toList!5621 lt!1852702)) key!4653)))

(declare-fun lt!1852944 () Unit!124529)

(declare-fun choose!32642 (ListLongMap!4151 K!13815 Hashable!6235) Unit!124529)

(assert (=> d!1491459 (= lt!1852944 (choose!32642 lt!1852702 key!4653 hashF!1323))))

(assert (=> d!1491459 (forall!11341 (toList!5621 lt!1852702) lambda!207863)))

(assert (=> d!1491459 (= (lemmaListContainsThenExtractedMapContains!458 lt!1852702 key!4653 hashF!1323) lt!1852944)))

(declare-fun bs!1088280 () Bool)

(assert (= bs!1088280 d!1491459))

(declare-fun m!5597195 () Bool)

(assert (=> bs!1088280 m!5597195))

(assert (=> bs!1088280 m!5597195))

(declare-fun m!5597197 () Bool)

(assert (=> bs!1088280 m!5597197))

(declare-fun m!5597199 () Bool)

(assert (=> bs!1088280 m!5597199))

(declare-fun m!5597201 () Bool)

(assert (=> bs!1088280 m!5597201))

(assert (=> b!4692459 d!1491459))

(declare-fun d!1491461 () Bool)

(assert (=> d!1491461 (= (eq!1025 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852713 lt!1852719) lt!1852721) (+!2150 (addToMapMapFromBucket!1298 lt!1852719 lt!1852721) lt!1852713)) (= (content!9183 (toList!5622 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852713 lt!1852719) lt!1852721))) (content!9183 (toList!5622 (+!2150 (addToMapMapFromBucket!1298 lt!1852719 lt!1852721) lt!1852713)))))))

(declare-fun bs!1088281 () Bool)

(assert (= bs!1088281 d!1491461))

(declare-fun m!5597203 () Bool)

(assert (=> bs!1088281 m!5597203))

(declare-fun m!5597205 () Bool)

(assert (=> bs!1088281 m!5597205))

(assert (=> b!4692459 d!1491461))

(declare-fun d!1491463 () Bool)

(assert (=> d!1491463 (= (head!9995 oldBucket!34) (h!58694 oldBucket!34))))

(assert (=> b!4692459 d!1491463))

(declare-fun d!1491465 () Bool)

(declare-fun e!2927476 () Bool)

(assert (=> d!1491465 e!2927476))

(declare-fun res!1979804 () Bool)

(assert (=> d!1491465 (=> (not res!1979804) (not e!2927476))))

(declare-fun lt!1852945 () ListMap!4985)

(assert (=> d!1491465 (= res!1979804 (contains!15662 lt!1852945 (_1!30223 lt!1852713)))))

(declare-fun lt!1852948 () List!52565)

(assert (=> d!1491465 (= lt!1852945 (ListMap!4986 lt!1852948))))

(declare-fun lt!1852947 () Unit!124529)

(declare-fun lt!1852946 () Unit!124529)

(assert (=> d!1491465 (= lt!1852947 lt!1852946)))

(assert (=> d!1491465 (= (getValueByKey!1794 lt!1852948 (_1!30223 lt!1852713)) (Some!12105 (_2!30223 lt!1852713)))))

(assert (=> d!1491465 (= lt!1852946 (lemmaContainsTupThenGetReturnValue!1007 lt!1852948 (_1!30223 lt!1852713) (_2!30223 lt!1852713)))))

(assert (=> d!1491465 (= lt!1852948 (insertNoDuplicatedKeys!515 (toList!5622 (addToMapMapFromBucket!1298 lt!1852719 lt!1852721)) (_1!30223 lt!1852713) (_2!30223 lt!1852713)))))

(assert (=> d!1491465 (= (+!2150 (addToMapMapFromBucket!1298 lt!1852719 lt!1852721) lt!1852713) lt!1852945)))

(declare-fun b!4692707 () Bool)

(declare-fun res!1979805 () Bool)

(assert (=> b!4692707 (=> (not res!1979805) (not e!2927476))))

(assert (=> b!4692707 (= res!1979805 (= (getValueByKey!1794 (toList!5622 lt!1852945) (_1!30223 lt!1852713)) (Some!12105 (_2!30223 lt!1852713))))))

(declare-fun b!4692708 () Bool)

(assert (=> b!4692708 (= e!2927476 (contains!15663 (toList!5622 lt!1852945) lt!1852713))))

(assert (= (and d!1491465 res!1979804) b!4692707))

(assert (= (and b!4692707 res!1979805) b!4692708))

(declare-fun m!5597207 () Bool)

(assert (=> d!1491465 m!5597207))

(declare-fun m!5597209 () Bool)

(assert (=> d!1491465 m!5597209))

(declare-fun m!5597211 () Bool)

(assert (=> d!1491465 m!5597211))

(declare-fun m!5597213 () Bool)

(assert (=> d!1491465 m!5597213))

(declare-fun m!5597215 () Bool)

(assert (=> b!4692707 m!5597215))

(declare-fun m!5597217 () Bool)

(assert (=> b!4692708 m!5597217))

(assert (=> b!4692459 d!1491465))

(declare-fun bs!1088282 () Bool)

(declare-fun b!4692712 () Bool)

(assert (= bs!1088282 (and b!4692712 b!4692691)))

(declare-fun lambda!207864 () Int)

(assert (=> bs!1088282 (= (= lt!1852721 lt!1852938) (= lambda!207864 lambda!207852))))

(declare-fun bs!1088283 () Bool)

(assert (= bs!1088283 (and b!4692712 d!1491455)))

(assert (=> bs!1088283 (not (= lambda!207864 lambda!207860))))

(declare-fun bs!1088284 () Bool)

(assert (= bs!1088284 (and b!4692712 b!4692693)))

(assert (=> bs!1088284 (= lambda!207864 lambda!207850)))

(assert (=> bs!1088282 (= lambda!207864 lambda!207851)))

(declare-fun bs!1088285 () Bool)

(assert (= bs!1088285 (and b!4692712 d!1491403)))

(assert (=> bs!1088285 (= (= lt!1852721 lt!1852924) (= lambda!207864 lambda!207853))))

(assert (=> b!4692712 true))

(declare-fun bs!1088286 () Bool)

(declare-fun b!4692710 () Bool)

(assert (= bs!1088286 (and b!4692710 b!4692691)))

(declare-fun lambda!207865 () Int)

(assert (=> bs!1088286 (= (= lt!1852721 lt!1852938) (= lambda!207865 lambda!207852))))

(declare-fun bs!1088287 () Bool)

(assert (= bs!1088287 (and b!4692710 d!1491455)))

(assert (=> bs!1088287 (not (= lambda!207865 lambda!207860))))

(declare-fun bs!1088288 () Bool)

(assert (= bs!1088288 (and b!4692710 b!4692712)))

(assert (=> bs!1088288 (= lambda!207865 lambda!207864)))

(declare-fun bs!1088289 () Bool)

(assert (= bs!1088289 (and b!4692710 b!4692693)))

(assert (=> bs!1088289 (= lambda!207865 lambda!207850)))

(assert (=> bs!1088286 (= lambda!207865 lambda!207851)))

(declare-fun bs!1088290 () Bool)

(assert (= bs!1088290 (and b!4692710 d!1491403)))

(assert (=> bs!1088290 (= (= lt!1852721 lt!1852924) (= lambda!207865 lambda!207853))))

(assert (=> b!4692710 true))

(declare-fun lambda!207866 () Int)

(declare-fun lt!1852967 () ListMap!4985)

(assert (=> bs!1088286 (= (= lt!1852967 lt!1852938) (= lambda!207866 lambda!207852))))

(assert (=> bs!1088287 (not (= lambda!207866 lambda!207860))))

(assert (=> bs!1088288 (= (= lt!1852967 lt!1852721) (= lambda!207866 lambda!207864))))

(assert (=> b!4692710 (= (= lt!1852967 lt!1852721) (= lambda!207866 lambda!207865))))

(assert (=> bs!1088289 (= (= lt!1852967 lt!1852721) (= lambda!207866 lambda!207850))))

(assert (=> bs!1088286 (= (= lt!1852967 lt!1852721) (= lambda!207866 lambda!207851))))

(assert (=> bs!1088290 (= (= lt!1852967 lt!1852924) (= lambda!207866 lambda!207853))))

(assert (=> b!4692710 true))

(declare-fun bs!1088291 () Bool)

(declare-fun d!1491467 () Bool)

(assert (= bs!1088291 (and d!1491467 b!4692691)))

(declare-fun lt!1852953 () ListMap!4985)

(declare-fun lambda!207867 () Int)

(assert (=> bs!1088291 (= (= lt!1852953 lt!1852938) (= lambda!207867 lambda!207852))))

(declare-fun bs!1088292 () Bool)

(assert (= bs!1088292 (and d!1491467 d!1491455)))

(assert (=> bs!1088292 (not (= lambda!207867 lambda!207860))))

(declare-fun bs!1088293 () Bool)

(assert (= bs!1088293 (and d!1491467 b!4692710)))

(assert (=> bs!1088293 (= (= lt!1852953 lt!1852967) (= lambda!207867 lambda!207866))))

(declare-fun bs!1088294 () Bool)

(assert (= bs!1088294 (and d!1491467 b!4692712)))

(assert (=> bs!1088294 (= (= lt!1852953 lt!1852721) (= lambda!207867 lambda!207864))))

(assert (=> bs!1088293 (= (= lt!1852953 lt!1852721) (= lambda!207867 lambda!207865))))

(declare-fun bs!1088295 () Bool)

(assert (= bs!1088295 (and d!1491467 b!4692693)))

(assert (=> bs!1088295 (= (= lt!1852953 lt!1852721) (= lambda!207867 lambda!207850))))

(assert (=> bs!1088291 (= (= lt!1852953 lt!1852721) (= lambda!207867 lambda!207851))))

(declare-fun bs!1088296 () Bool)

(assert (= bs!1088296 (and d!1491467 d!1491403)))

(assert (=> bs!1088296 (= (= lt!1852953 lt!1852924) (= lambda!207867 lambda!207853))))

(assert (=> d!1491467 true))

(declare-fun b!4692709 () Bool)

(declare-fun e!2927477 () Bool)

(assert (=> b!4692709 (= e!2927477 (invariantList!1418 (toList!5622 lt!1852953)))))

(declare-fun e!2927479 () ListMap!4985)

(assert (=> b!4692710 (= e!2927479 lt!1852967)))

(declare-fun lt!1852955 () ListMap!4985)

(assert (=> b!4692710 (= lt!1852955 (+!2150 lt!1852721 (h!58694 lt!1852706)))))

(assert (=> b!4692710 (= lt!1852967 (addToMapMapFromBucket!1298 (t!359749 lt!1852706) (+!2150 lt!1852721 (h!58694 lt!1852706))))))

(declare-fun lt!1852954 () Unit!124529)

(declare-fun call!327975 () Unit!124529)

(assert (=> b!4692710 (= lt!1852954 call!327975)))

(declare-fun call!327973 () Bool)

(assert (=> b!4692710 call!327973))

(declare-fun lt!1852949 () Unit!124529)

(assert (=> b!4692710 (= lt!1852949 lt!1852954)))

(assert (=> b!4692710 (forall!11342 (toList!5622 lt!1852955) lambda!207866)))

(declare-fun lt!1852962 () Unit!124529)

(declare-fun Unit!124547 () Unit!124529)

(assert (=> b!4692710 (= lt!1852962 Unit!124547)))

(assert (=> b!4692710 (forall!11342 (t!359749 lt!1852706) lambda!207866)))

(declare-fun lt!1852958 () Unit!124529)

(declare-fun Unit!124548 () Unit!124529)

(assert (=> b!4692710 (= lt!1852958 Unit!124548)))

(declare-fun lt!1852957 () Unit!124529)

(declare-fun Unit!124549 () Unit!124529)

(assert (=> b!4692710 (= lt!1852957 Unit!124549)))

(declare-fun lt!1852950 () Unit!124529)

(assert (=> b!4692710 (= lt!1852950 (forallContained!3449 (toList!5622 lt!1852955) lambda!207866 (h!58694 lt!1852706)))))

(assert (=> b!4692710 (contains!15662 lt!1852955 (_1!30223 (h!58694 lt!1852706)))))

(declare-fun lt!1852969 () Unit!124529)

(declare-fun Unit!124550 () Unit!124529)

(assert (=> b!4692710 (= lt!1852969 Unit!124550)))

(assert (=> b!4692710 (contains!15662 lt!1852967 (_1!30223 (h!58694 lt!1852706)))))

(declare-fun lt!1852960 () Unit!124529)

(declare-fun Unit!124551 () Unit!124529)

(assert (=> b!4692710 (= lt!1852960 Unit!124551)))

(assert (=> b!4692710 (forall!11342 lt!1852706 lambda!207866)))

(declare-fun lt!1852951 () Unit!124529)

(declare-fun Unit!124552 () Unit!124529)

(assert (=> b!4692710 (= lt!1852951 Unit!124552)))

(assert (=> b!4692710 (forall!11342 (toList!5622 lt!1852955) lambda!207866)))

(declare-fun lt!1852965 () Unit!124529)

(declare-fun Unit!124553 () Unit!124529)

(assert (=> b!4692710 (= lt!1852965 Unit!124553)))

(declare-fun lt!1852966 () Unit!124529)

(declare-fun Unit!124554 () Unit!124529)

(assert (=> b!4692710 (= lt!1852966 Unit!124554)))

(declare-fun lt!1852956 () Unit!124529)

(assert (=> b!4692710 (= lt!1852956 (addForallContainsKeyThenBeforeAdding!704 lt!1852721 lt!1852967 (_1!30223 (h!58694 lt!1852706)) (_2!30223 (h!58694 lt!1852706))))))

(assert (=> b!4692710 (forall!11342 (toList!5622 lt!1852721) lambda!207866)))

(declare-fun lt!1852968 () Unit!124529)

(assert (=> b!4692710 (= lt!1852968 lt!1852956)))

(assert (=> b!4692710 (forall!11342 (toList!5622 lt!1852721) lambda!207866)))

(declare-fun lt!1852952 () Unit!124529)

(declare-fun Unit!124555 () Unit!124529)

(assert (=> b!4692710 (= lt!1852952 Unit!124555)))

(declare-fun res!1979807 () Bool)

(assert (=> b!4692710 (= res!1979807 (forall!11342 lt!1852706 lambda!207866))))

(declare-fun e!2927478 () Bool)

(assert (=> b!4692710 (=> (not res!1979807) (not e!2927478))))

(assert (=> b!4692710 e!2927478))

(declare-fun lt!1852963 () Unit!124529)

(declare-fun Unit!124556 () Unit!124529)

(assert (=> b!4692710 (= lt!1852963 Unit!124556)))

(declare-fun b!4692711 () Bool)

(declare-fun call!327974 () Bool)

(assert (=> b!4692711 (= e!2927478 call!327974)))

(assert (=> b!4692712 (= e!2927479 lt!1852721)))

(declare-fun lt!1852961 () Unit!124529)

(assert (=> b!4692712 (= lt!1852961 call!327975)))

(assert (=> b!4692712 call!327974))

(declare-fun lt!1852964 () Unit!124529)

(assert (=> b!4692712 (= lt!1852964 lt!1852961)))

(assert (=> b!4692712 call!327973))

(declare-fun lt!1852959 () Unit!124529)

(declare-fun Unit!124557 () Unit!124529)

(assert (=> b!4692712 (= lt!1852959 Unit!124557)))

(assert (=> d!1491467 e!2927477))

(declare-fun res!1979808 () Bool)

(assert (=> d!1491467 (=> (not res!1979808) (not e!2927477))))

(assert (=> d!1491467 (= res!1979808 (forall!11342 lt!1852706 lambda!207867))))

(assert (=> d!1491467 (= lt!1852953 e!2927479)))

(declare-fun c!802289 () Bool)

(assert (=> d!1491467 (= c!802289 ((_ is Nil!52441) lt!1852706))))

(assert (=> d!1491467 (noDuplicateKeys!1866 lt!1852706)))

(assert (=> d!1491467 (= (addToMapMapFromBucket!1298 lt!1852706 lt!1852721) lt!1852953)))

(declare-fun bm!327968 () Bool)

(assert (=> bm!327968 (= call!327975 (lemmaContainsAllItsOwnKeys!705 lt!1852721))))

(declare-fun b!4692713 () Bool)

(declare-fun res!1979806 () Bool)

(assert (=> b!4692713 (=> (not res!1979806) (not e!2927477))))

(assert (=> b!4692713 (= res!1979806 (forall!11342 (toList!5622 lt!1852721) lambda!207867))))

(declare-fun bm!327969 () Bool)

(assert (=> bm!327969 (= call!327973 (forall!11342 (toList!5622 lt!1852721) (ite c!802289 lambda!207864 lambda!207865)))))

(declare-fun bm!327970 () Bool)

(assert (=> bm!327970 (= call!327974 (forall!11342 (toList!5622 lt!1852721) (ite c!802289 lambda!207864 lambda!207866)))))

(assert (= (and d!1491467 c!802289) b!4692712))

(assert (= (and d!1491467 (not c!802289)) b!4692710))

(assert (= (and b!4692710 res!1979807) b!4692711))

(assert (= (or b!4692712 b!4692710) bm!327968))

(assert (= (or b!4692712 b!4692710) bm!327969))

(assert (= (or b!4692712 b!4692711) bm!327970))

(assert (= (and d!1491467 res!1979808) b!4692713))

(assert (= (and b!4692713 res!1979806) b!4692709))

(declare-fun m!5597219 () Bool)

(assert (=> bm!327970 m!5597219))

(declare-fun m!5597221 () Bool)

(assert (=> d!1491467 m!5597221))

(declare-fun m!5597223 () Bool)

(assert (=> d!1491467 m!5597223))

(assert (=> bm!327968 m!5597149))

(declare-fun m!5597225 () Bool)

(assert (=> b!4692710 m!5597225))

(declare-fun m!5597227 () Bool)

(assert (=> b!4692710 m!5597227))

(declare-fun m!5597229 () Bool)

(assert (=> b!4692710 m!5597229))

(declare-fun m!5597231 () Bool)

(assert (=> b!4692710 m!5597231))

(assert (=> b!4692710 m!5597227))

(declare-fun m!5597233 () Bool)

(assert (=> b!4692710 m!5597233))

(declare-fun m!5597235 () Bool)

(assert (=> b!4692710 m!5597235))

(assert (=> b!4692710 m!5597231))

(assert (=> b!4692710 m!5597235))

(declare-fun m!5597237 () Bool)

(assert (=> b!4692710 m!5597237))

(declare-fun m!5597239 () Bool)

(assert (=> b!4692710 m!5597239))

(declare-fun m!5597241 () Bool)

(assert (=> b!4692710 m!5597241))

(declare-fun m!5597243 () Bool)

(assert (=> b!4692710 m!5597243))

(assert (=> b!4692710 m!5597233))

(declare-fun m!5597245 () Bool)

(assert (=> b!4692713 m!5597245))

(declare-fun m!5597247 () Bool)

(assert (=> b!4692709 m!5597247))

(declare-fun m!5597249 () Bool)

(assert (=> bm!327969 m!5597249))

(assert (=> b!4692459 d!1491467))

(declare-fun d!1491469 () Bool)

(assert (=> d!1491469 (= (eq!1025 lt!1852699 (+!2150 lt!1852701 (h!58694 oldBucket!34))) (= (content!9183 (toList!5622 lt!1852699)) (content!9183 (toList!5622 (+!2150 lt!1852701 (h!58694 oldBucket!34))))))))

(declare-fun bs!1088297 () Bool)

(assert (= bs!1088297 d!1491469))

(assert (=> bs!1088297 m!5596907))

(declare-fun m!5597251 () Bool)

(assert (=> bs!1088297 m!5597251))

(assert (=> b!4692459 d!1491469))

(declare-fun bs!1088298 () Bool)

(declare-fun d!1491471 () Bool)

(assert (= bs!1088298 (and d!1491471 d!1491449)))

(declare-fun lambda!207868 () Int)

(assert (=> bs!1088298 (= lambda!207868 lambda!207854)))

(declare-fun bs!1088299 () Bool)

(assert (= bs!1088299 (and d!1491471 d!1491391)))

(assert (=> bs!1088299 (= lambda!207868 lambda!207803)))

(declare-fun bs!1088300 () Bool)

(assert (= bs!1088300 (and d!1491471 start!474920)))

(assert (=> bs!1088300 (= lambda!207868 lambda!207793)))

(declare-fun bs!1088301 () Bool)

(assert (= bs!1088301 (and d!1491471 d!1491459)))

(assert (=> bs!1088301 (= lambda!207868 lambda!207863)))

(declare-fun bs!1088302 () Bool)

(assert (= bs!1088302 (and d!1491471 d!1491453)))

(assert (=> bs!1088302 (not (= lambda!207868 lambda!207857))))

(declare-fun lt!1852970 () ListMap!4985)

(assert (=> d!1491471 (invariantList!1418 (toList!5622 lt!1852970))))

(declare-fun e!2927480 () ListMap!4985)

(assert (=> d!1491471 (= lt!1852970 e!2927480)))

(declare-fun c!802290 () Bool)

(assert (=> d!1491471 (= c!802290 ((_ is Cons!52442) (Cons!52442 (tuple2!53861 hash!405 lt!1852719) (t!359750 (toList!5621 lm!2023)))))))

(assert (=> d!1491471 (forall!11341 (Cons!52442 (tuple2!53861 hash!405 lt!1852719) (t!359750 (toList!5621 lm!2023))) lambda!207868)))

(assert (=> d!1491471 (= (extractMap!1892 (Cons!52442 (tuple2!53861 hash!405 lt!1852719) (t!359750 (toList!5621 lm!2023)))) lt!1852970)))

(declare-fun b!4692714 () Bool)

(assert (=> b!4692714 (= e!2927480 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (Cons!52442 (tuple2!53861 hash!405 lt!1852719) (t!359750 (toList!5621 lm!2023))))) (extractMap!1892 (t!359750 (Cons!52442 (tuple2!53861 hash!405 lt!1852719) (t!359750 (toList!5621 lm!2023)))))))))

(declare-fun b!4692715 () Bool)

(assert (=> b!4692715 (= e!2927480 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491471 c!802290) b!4692714))

(assert (= (and d!1491471 (not c!802290)) b!4692715))

(declare-fun m!5597253 () Bool)

(assert (=> d!1491471 m!5597253))

(declare-fun m!5597255 () Bool)

(assert (=> d!1491471 m!5597255))

(declare-fun m!5597257 () Bool)

(assert (=> b!4692714 m!5597257))

(assert (=> b!4692714 m!5597257))

(declare-fun m!5597259 () Bool)

(assert (=> b!4692714 m!5597259))

(assert (=> b!4692459 d!1491471))

(declare-fun bs!1088303 () Bool)

(declare-fun d!1491473 () Bool)

(assert (= bs!1088303 (and d!1491473 d!1491449)))

(declare-fun lambda!207869 () Int)

(assert (=> bs!1088303 (= lambda!207869 lambda!207854)))

(declare-fun bs!1088304 () Bool)

(assert (= bs!1088304 (and d!1491473 d!1491391)))

(assert (=> bs!1088304 (= lambda!207869 lambda!207803)))

(declare-fun bs!1088305 () Bool)

(assert (= bs!1088305 (and d!1491473 d!1491471)))

(assert (=> bs!1088305 (= lambda!207869 lambda!207868)))

(declare-fun bs!1088306 () Bool)

(assert (= bs!1088306 (and d!1491473 start!474920)))

(assert (=> bs!1088306 (= lambda!207869 lambda!207793)))

(declare-fun bs!1088307 () Bool)

(assert (= bs!1088307 (and d!1491473 d!1491459)))

(assert (=> bs!1088307 (= lambda!207869 lambda!207863)))

(declare-fun bs!1088308 () Bool)

(assert (= bs!1088308 (and d!1491473 d!1491453)))

(assert (=> bs!1088308 (not (= lambda!207869 lambda!207857))))

(declare-fun lt!1852971 () ListMap!4985)

(assert (=> d!1491473 (invariantList!1418 (toList!5622 lt!1852971))))

(declare-fun e!2927481 () ListMap!4985)

(assert (=> d!1491473 (= lt!1852971 e!2927481)))

(declare-fun c!802291 () Bool)

(assert (=> d!1491473 (= c!802291 ((_ is Cons!52442) lt!1852705))))

(assert (=> d!1491473 (forall!11341 lt!1852705 lambda!207869)))

(assert (=> d!1491473 (= (extractMap!1892 lt!1852705) lt!1852971)))

(declare-fun b!4692716 () Bool)

(assert (=> b!4692716 (= e!2927481 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 lt!1852705)) (extractMap!1892 (t!359750 lt!1852705))))))

(declare-fun b!4692717 () Bool)

(assert (=> b!4692717 (= e!2927481 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491473 c!802291) b!4692716))

(assert (= (and d!1491473 (not c!802291)) b!4692717))

(declare-fun m!5597261 () Bool)

(assert (=> d!1491473 m!5597261))

(declare-fun m!5597263 () Bool)

(assert (=> d!1491473 m!5597263))

(declare-fun m!5597265 () Bool)

(assert (=> b!4692716 m!5597265))

(assert (=> b!4692716 m!5597265))

(declare-fun m!5597267 () Bool)

(assert (=> b!4692716 m!5597267))

(assert (=> b!4692459 d!1491473))

(declare-fun bs!1088309 () Bool)

(declare-fun d!1491475 () Bool)

(assert (= bs!1088309 (and d!1491475 d!1491449)))

(declare-fun lambda!207870 () Int)

(assert (=> bs!1088309 (= lambda!207870 lambda!207854)))

(declare-fun bs!1088310 () Bool)

(assert (= bs!1088310 (and d!1491475 d!1491391)))

(assert (=> bs!1088310 (= lambda!207870 lambda!207803)))

(declare-fun bs!1088311 () Bool)

(assert (= bs!1088311 (and d!1491475 d!1491471)))

(assert (=> bs!1088311 (= lambda!207870 lambda!207868)))

(declare-fun bs!1088312 () Bool)

(assert (= bs!1088312 (and d!1491475 start!474920)))

(assert (=> bs!1088312 (= lambda!207870 lambda!207793)))

(declare-fun bs!1088313 () Bool)

(assert (= bs!1088313 (and d!1491475 d!1491473)))

(assert (=> bs!1088313 (= lambda!207870 lambda!207869)))

(declare-fun bs!1088314 () Bool)

(assert (= bs!1088314 (and d!1491475 d!1491459)))

(assert (=> bs!1088314 (= lambda!207870 lambda!207863)))

(declare-fun bs!1088315 () Bool)

(assert (= bs!1088315 (and d!1491475 d!1491453)))

(assert (=> bs!1088315 (not (= lambda!207870 lambda!207857))))

(declare-fun lt!1852972 () ListMap!4985)

(assert (=> d!1491475 (invariantList!1418 (toList!5622 lt!1852972))))

(declare-fun e!2927482 () ListMap!4985)

(assert (=> d!1491475 (= lt!1852972 e!2927482)))

(declare-fun c!802292 () Bool)

(assert (=> d!1491475 (= c!802292 ((_ is Cons!52442) (Cons!52442 lt!1852715 (t!359750 (toList!5621 lm!2023)))))))

(assert (=> d!1491475 (forall!11341 (Cons!52442 lt!1852715 (t!359750 (toList!5621 lm!2023))) lambda!207870)))

(assert (=> d!1491475 (= (extractMap!1892 (Cons!52442 lt!1852715 (t!359750 (toList!5621 lm!2023)))) lt!1852972)))

(declare-fun b!4692718 () Bool)

(assert (=> b!4692718 (= e!2927482 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (Cons!52442 lt!1852715 (t!359750 (toList!5621 lm!2023))))) (extractMap!1892 (t!359750 (Cons!52442 lt!1852715 (t!359750 (toList!5621 lm!2023)))))))))

(declare-fun b!4692719 () Bool)

(assert (=> b!4692719 (= e!2927482 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491475 c!802292) b!4692718))

(assert (= (and d!1491475 (not c!802292)) b!4692719))

(declare-fun m!5597269 () Bool)

(assert (=> d!1491475 m!5597269))

(declare-fun m!5597271 () Bool)

(assert (=> d!1491475 m!5597271))

(declare-fun m!5597273 () Bool)

(assert (=> b!4692718 m!5597273))

(assert (=> b!4692718 m!5597273))

(declare-fun m!5597275 () Bool)

(assert (=> b!4692718 m!5597275))

(assert (=> b!4692459 d!1491475))

(declare-fun d!1491477 () Bool)

(assert (=> d!1491477 (= (eq!1025 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852716 lt!1852706) lt!1852721) (+!2150 (addToMapMapFromBucket!1298 lt!1852706 lt!1852721) lt!1852716)) (= (content!9183 (toList!5622 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852716 lt!1852706) lt!1852721))) (content!9183 (toList!5622 (+!2150 (addToMapMapFromBucket!1298 lt!1852706 lt!1852721) lt!1852716)))))))

(declare-fun bs!1088316 () Bool)

(assert (= bs!1088316 d!1491477))

(declare-fun m!5597277 () Bool)

(assert (=> bs!1088316 m!5597277))

(declare-fun m!5597279 () Bool)

(assert (=> bs!1088316 m!5597279))

(assert (=> b!4692459 d!1491477))

(declare-fun b!4692720 () Bool)

(declare-fun e!2927484 () Bool)

(assert (=> b!4692720 (= e!2927484 (contains!15664 (keys!18733 (extractMap!1892 lt!1852705)) key!4653))))

(declare-fun bm!327971 () Bool)

(declare-fun call!327976 () Bool)

(declare-fun e!2927488 () List!52568)

(assert (=> bm!327971 (= call!327976 (contains!15664 e!2927488 key!4653))))

(declare-fun c!802293 () Bool)

(declare-fun c!802295 () Bool)

(assert (=> bm!327971 (= c!802293 c!802295)))

(declare-fun b!4692722 () Bool)

(declare-fun e!2927486 () Bool)

(assert (=> b!4692722 (= e!2927486 (not (contains!15664 (keys!18733 (extractMap!1892 lt!1852705)) key!4653)))))

(declare-fun b!4692723 () Bool)

(declare-fun e!2927483 () Bool)

(assert (=> b!4692723 (= e!2927483 e!2927484)))

(declare-fun res!1979811 () Bool)

(assert (=> b!4692723 (=> (not res!1979811) (not e!2927484))))

(assert (=> b!4692723 (= res!1979811 (isDefined!9362 (getValueByKey!1794 (toList!5622 (extractMap!1892 lt!1852705)) key!4653)))))

(declare-fun b!4692724 () Bool)

(assert (=> b!4692724 (= e!2927488 (getKeysList!857 (toList!5622 (extractMap!1892 lt!1852705))))))

(declare-fun b!4692725 () Bool)

(assert (=> b!4692725 false))

(declare-fun lt!1852976 () Unit!124529)

(declare-fun lt!1852979 () Unit!124529)

(assert (=> b!4692725 (= lt!1852976 lt!1852979)))

(assert (=> b!4692725 (containsKey!3083 (toList!5622 (extractMap!1892 lt!1852705)) key!4653)))

(assert (=> b!4692725 (= lt!1852979 (lemmaInGetKeysListThenContainsKey!856 (toList!5622 (extractMap!1892 lt!1852705)) key!4653))))

(declare-fun e!2927487 () Unit!124529)

(declare-fun Unit!124569 () Unit!124529)

(assert (=> b!4692725 (= e!2927487 Unit!124569)))

(declare-fun b!4692726 () Bool)

(declare-fun Unit!124570 () Unit!124529)

(assert (=> b!4692726 (= e!2927487 Unit!124570)))

(declare-fun b!4692721 () Bool)

(assert (=> b!4692721 (= e!2927488 (keys!18733 (extractMap!1892 lt!1852705)))))

(declare-fun d!1491479 () Bool)

(assert (=> d!1491479 e!2927483))

(declare-fun res!1979810 () Bool)

(assert (=> d!1491479 (=> res!1979810 e!2927483)))

(assert (=> d!1491479 (= res!1979810 e!2927486)))

(declare-fun res!1979809 () Bool)

(assert (=> d!1491479 (=> (not res!1979809) (not e!2927486))))

(declare-fun lt!1852977 () Bool)

(assert (=> d!1491479 (= res!1979809 (not lt!1852977))))

(declare-fun lt!1852980 () Bool)

(assert (=> d!1491479 (= lt!1852977 lt!1852980)))

(declare-fun lt!1852974 () Unit!124529)

(declare-fun e!2927485 () Unit!124529)

(assert (=> d!1491479 (= lt!1852974 e!2927485)))

(assert (=> d!1491479 (= c!802295 lt!1852980)))

(assert (=> d!1491479 (= lt!1852980 (containsKey!3083 (toList!5622 (extractMap!1892 lt!1852705)) key!4653))))

(assert (=> d!1491479 (= (contains!15662 (extractMap!1892 lt!1852705) key!4653) lt!1852977)))

(declare-fun b!4692727 () Bool)

(declare-fun lt!1852975 () Unit!124529)

(assert (=> b!4692727 (= e!2927485 lt!1852975)))

(declare-fun lt!1852973 () Unit!124529)

(assert (=> b!4692727 (= lt!1852973 (lemmaContainsKeyImpliesGetValueByKeyDefined!1687 (toList!5622 (extractMap!1892 lt!1852705)) key!4653))))

(assert (=> b!4692727 (isDefined!9362 (getValueByKey!1794 (toList!5622 (extractMap!1892 lt!1852705)) key!4653))))

(declare-fun lt!1852978 () Unit!124529)

(assert (=> b!4692727 (= lt!1852978 lt!1852973)))

(assert (=> b!4692727 (= lt!1852975 (lemmaInListThenGetKeysListContains!852 (toList!5622 (extractMap!1892 lt!1852705)) key!4653))))

(assert (=> b!4692727 call!327976))

(declare-fun b!4692728 () Bool)

(assert (=> b!4692728 (= e!2927485 e!2927487)))

(declare-fun c!802294 () Bool)

(assert (=> b!4692728 (= c!802294 call!327976)))

(assert (= (and d!1491479 c!802295) b!4692727))

(assert (= (and d!1491479 (not c!802295)) b!4692728))

(assert (= (and b!4692728 c!802294) b!4692725))

(assert (= (and b!4692728 (not c!802294)) b!4692726))

(assert (= (or b!4692727 b!4692728) bm!327971))

(assert (= (and bm!327971 c!802293) b!4692724))

(assert (= (and bm!327971 (not c!802293)) b!4692721))

(assert (= (and d!1491479 res!1979809) b!4692722))

(assert (= (and d!1491479 (not res!1979810)) b!4692723))

(assert (= (and b!4692723 res!1979811) b!4692720))

(declare-fun m!5597281 () Bool)

(assert (=> b!4692725 m!5597281))

(declare-fun m!5597283 () Bool)

(assert (=> b!4692725 m!5597283))

(assert (=> b!4692720 m!5596827))

(declare-fun m!5597285 () Bool)

(assert (=> b!4692720 m!5597285))

(assert (=> b!4692720 m!5597285))

(declare-fun m!5597287 () Bool)

(assert (=> b!4692720 m!5597287))

(assert (=> d!1491479 m!5597281))

(declare-fun m!5597289 () Bool)

(assert (=> b!4692724 m!5597289))

(assert (=> b!4692722 m!5596827))

(assert (=> b!4692722 m!5597285))

(assert (=> b!4692722 m!5597285))

(assert (=> b!4692722 m!5597287))

(declare-fun m!5597291 () Bool)

(assert (=> b!4692723 m!5597291))

(assert (=> b!4692723 m!5597291))

(declare-fun m!5597293 () Bool)

(assert (=> b!4692723 m!5597293))

(declare-fun m!5597295 () Bool)

(assert (=> bm!327971 m!5597295))

(assert (=> b!4692721 m!5596827))

(assert (=> b!4692721 m!5597285))

(declare-fun m!5597297 () Bool)

(assert (=> b!4692727 m!5597297))

(assert (=> b!4692727 m!5597291))

(assert (=> b!4692727 m!5597291))

(assert (=> b!4692727 m!5597293))

(declare-fun m!5597299 () Bool)

(assert (=> b!4692727 m!5597299))

(assert (=> b!4692459 d!1491479))

(declare-fun d!1491481 () Bool)

(assert (=> d!1491481 (eq!1025 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852713 lt!1852719) lt!1852721) (+!2150 (addToMapMapFromBucket!1298 lt!1852719 lt!1852721) lt!1852713))))

(declare-fun lt!1852983 () Unit!124529)

(declare-fun choose!32644 (tuple2!53858 List!52565 ListMap!4985) Unit!124529)

(assert (=> d!1491481 (= lt!1852983 (choose!32644 lt!1852713 lt!1852719 lt!1852721))))

(assert (=> d!1491481 (noDuplicateKeys!1866 lt!1852719)))

(assert (=> d!1491481 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!274 lt!1852713 lt!1852719 lt!1852721) lt!1852983)))

(declare-fun bs!1088317 () Bool)

(assert (= bs!1088317 d!1491481))

(assert (=> bs!1088317 m!5596855))

(assert (=> bs!1088317 m!5596849))

(assert (=> bs!1088317 m!5596857))

(assert (=> bs!1088317 m!5596899))

(assert (=> bs!1088317 m!5596855))

(assert (=> bs!1088317 m!5596857))

(assert (=> bs!1088317 m!5596859))

(declare-fun m!5597301 () Bool)

(assert (=> bs!1088317 m!5597301))

(assert (=> bs!1088317 m!5596849))

(assert (=> b!4692459 d!1491481))

(declare-fun d!1491483 () Bool)

(assert (=> d!1491483 (eq!1025 (addToMapMapFromBucket!1298 (Cons!52441 lt!1852716 lt!1852706) lt!1852721) (+!2150 (addToMapMapFromBucket!1298 lt!1852706 lt!1852721) lt!1852716))))

(declare-fun lt!1852984 () Unit!124529)

(assert (=> d!1491483 (= lt!1852984 (choose!32644 lt!1852716 lt!1852706 lt!1852721))))

(assert (=> d!1491483 (noDuplicateKeys!1866 lt!1852706)))

(assert (=> d!1491483 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!274 lt!1852716 lt!1852706 lt!1852721) lt!1852984)))

(declare-fun bs!1088318 () Bool)

(assert (= bs!1088318 d!1491483))

(assert (=> bs!1088318 m!5596843))

(assert (=> bs!1088318 m!5596835))

(assert (=> bs!1088318 m!5596837))

(assert (=> bs!1088318 m!5597223))

(assert (=> bs!1088318 m!5596843))

(assert (=> bs!1088318 m!5596837))

(assert (=> bs!1088318 m!5596845))

(declare-fun m!5597303 () Bool)

(assert (=> bs!1088318 m!5597303))

(assert (=> bs!1088318 m!5596835))

(assert (=> b!4692459 d!1491483))

(declare-fun bs!1088319 () Bool)

(declare-fun b!4692732 () Bool)

(assert (= bs!1088319 (and b!4692732 b!4692691)))

(declare-fun lambda!207871 () Int)

(assert (=> bs!1088319 (= (= lt!1852721 lt!1852938) (= lambda!207871 lambda!207852))))

(declare-fun bs!1088320 () Bool)

(assert (= bs!1088320 (and b!4692732 d!1491455)))

(assert (=> bs!1088320 (not (= lambda!207871 lambda!207860))))

(declare-fun bs!1088321 () Bool)

(assert (= bs!1088321 (and b!4692732 b!4692710)))

(assert (=> bs!1088321 (= (= lt!1852721 lt!1852967) (= lambda!207871 lambda!207866))))

(declare-fun bs!1088322 () Bool)

(assert (= bs!1088322 (and b!4692732 d!1491467)))

(assert (=> bs!1088322 (= (= lt!1852721 lt!1852953) (= lambda!207871 lambda!207867))))

(declare-fun bs!1088323 () Bool)

(assert (= bs!1088323 (and b!4692732 b!4692712)))

(assert (=> bs!1088323 (= lambda!207871 lambda!207864)))

(assert (=> bs!1088321 (= lambda!207871 lambda!207865)))

(declare-fun bs!1088324 () Bool)

(assert (= bs!1088324 (and b!4692732 b!4692693)))

(assert (=> bs!1088324 (= lambda!207871 lambda!207850)))

(assert (=> bs!1088319 (= lambda!207871 lambda!207851)))

(declare-fun bs!1088325 () Bool)

(assert (= bs!1088325 (and b!4692732 d!1491403)))

(assert (=> bs!1088325 (= (= lt!1852721 lt!1852924) (= lambda!207871 lambda!207853))))

(assert (=> b!4692732 true))

(declare-fun bs!1088326 () Bool)

(declare-fun b!4692730 () Bool)

(assert (= bs!1088326 (and b!4692730 b!4692691)))

(declare-fun lambda!207872 () Int)

(assert (=> bs!1088326 (= (= lt!1852721 lt!1852938) (= lambda!207872 lambda!207852))))

(declare-fun bs!1088327 () Bool)

(assert (= bs!1088327 (and b!4692730 b!4692732)))

(assert (=> bs!1088327 (= lambda!207872 lambda!207871)))

(declare-fun bs!1088328 () Bool)

(assert (= bs!1088328 (and b!4692730 d!1491455)))

(assert (=> bs!1088328 (not (= lambda!207872 lambda!207860))))

(declare-fun bs!1088329 () Bool)

(assert (= bs!1088329 (and b!4692730 b!4692710)))

(assert (=> bs!1088329 (= (= lt!1852721 lt!1852967) (= lambda!207872 lambda!207866))))

(declare-fun bs!1088330 () Bool)

(assert (= bs!1088330 (and b!4692730 d!1491467)))

(assert (=> bs!1088330 (= (= lt!1852721 lt!1852953) (= lambda!207872 lambda!207867))))

(declare-fun bs!1088331 () Bool)

(assert (= bs!1088331 (and b!4692730 b!4692712)))

(assert (=> bs!1088331 (= lambda!207872 lambda!207864)))

(assert (=> bs!1088329 (= lambda!207872 lambda!207865)))

(declare-fun bs!1088332 () Bool)

(assert (= bs!1088332 (and b!4692730 b!4692693)))

(assert (=> bs!1088332 (= lambda!207872 lambda!207850)))

(assert (=> bs!1088326 (= lambda!207872 lambda!207851)))

(declare-fun bs!1088333 () Bool)

(assert (= bs!1088333 (and b!4692730 d!1491403)))

(assert (=> bs!1088333 (= (= lt!1852721 lt!1852924) (= lambda!207872 lambda!207853))))

(assert (=> b!4692730 true))

(declare-fun lambda!207873 () Int)

(declare-fun lt!1853003 () ListMap!4985)

(assert (=> bs!1088326 (= (= lt!1853003 lt!1852938) (= lambda!207873 lambda!207852))))

(assert (=> bs!1088327 (= (= lt!1853003 lt!1852721) (= lambda!207873 lambda!207871))))

(assert (=> bs!1088328 (not (= lambda!207873 lambda!207860))))

(assert (=> bs!1088329 (= (= lt!1853003 lt!1852967) (= lambda!207873 lambda!207866))))

(assert (=> b!4692730 (= (= lt!1853003 lt!1852721) (= lambda!207873 lambda!207872))))

(assert (=> bs!1088330 (= (= lt!1853003 lt!1852953) (= lambda!207873 lambda!207867))))

(assert (=> bs!1088331 (= (= lt!1853003 lt!1852721) (= lambda!207873 lambda!207864))))

(assert (=> bs!1088329 (= (= lt!1853003 lt!1852721) (= lambda!207873 lambda!207865))))

(assert (=> bs!1088332 (= (= lt!1853003 lt!1852721) (= lambda!207873 lambda!207850))))

(assert (=> bs!1088326 (= (= lt!1853003 lt!1852721) (= lambda!207873 lambda!207851))))

(assert (=> bs!1088333 (= (= lt!1853003 lt!1852924) (= lambda!207873 lambda!207853))))

(assert (=> b!4692730 true))

(declare-fun bs!1088334 () Bool)

(declare-fun d!1491485 () Bool)

(assert (= bs!1088334 (and d!1491485 b!4692691)))

(declare-fun lt!1852989 () ListMap!4985)

(declare-fun lambda!207874 () Int)

(assert (=> bs!1088334 (= (= lt!1852989 lt!1852938) (= lambda!207874 lambda!207852))))

(declare-fun bs!1088335 () Bool)

(assert (= bs!1088335 (and d!1491485 b!4692732)))

(assert (=> bs!1088335 (= (= lt!1852989 lt!1852721) (= lambda!207874 lambda!207871))))

(declare-fun bs!1088336 () Bool)

(assert (= bs!1088336 (and d!1491485 d!1491455)))

(assert (=> bs!1088336 (not (= lambda!207874 lambda!207860))))

(declare-fun bs!1088337 () Bool)

(assert (= bs!1088337 (and d!1491485 b!4692730)))

(assert (=> bs!1088337 (= (= lt!1852989 lt!1853003) (= lambda!207874 lambda!207873))))

(declare-fun bs!1088338 () Bool)

(assert (= bs!1088338 (and d!1491485 b!4692710)))

(assert (=> bs!1088338 (= (= lt!1852989 lt!1852967) (= lambda!207874 lambda!207866))))

(assert (=> bs!1088337 (= (= lt!1852989 lt!1852721) (= lambda!207874 lambda!207872))))

(declare-fun bs!1088339 () Bool)

(assert (= bs!1088339 (and d!1491485 d!1491467)))

(assert (=> bs!1088339 (= (= lt!1852989 lt!1852953) (= lambda!207874 lambda!207867))))

(declare-fun bs!1088340 () Bool)

(assert (= bs!1088340 (and d!1491485 b!4692712)))

(assert (=> bs!1088340 (= (= lt!1852989 lt!1852721) (= lambda!207874 lambda!207864))))

(assert (=> bs!1088338 (= (= lt!1852989 lt!1852721) (= lambda!207874 lambda!207865))))

(declare-fun bs!1088341 () Bool)

(assert (= bs!1088341 (and d!1491485 b!4692693)))

(assert (=> bs!1088341 (= (= lt!1852989 lt!1852721) (= lambda!207874 lambda!207850))))

(assert (=> bs!1088334 (= (= lt!1852989 lt!1852721) (= lambda!207874 lambda!207851))))

(declare-fun bs!1088342 () Bool)

(assert (= bs!1088342 (and d!1491485 d!1491403)))

(assert (=> bs!1088342 (= (= lt!1852989 lt!1852924) (= lambda!207874 lambda!207853))))

(assert (=> d!1491485 true))

(declare-fun b!4692729 () Bool)

(declare-fun e!2927489 () Bool)

(assert (=> b!4692729 (= e!2927489 (invariantList!1418 (toList!5622 lt!1852989)))))

(declare-fun e!2927491 () ListMap!4985)

(assert (=> b!4692730 (= e!2927491 lt!1853003)))

(declare-fun lt!1852991 () ListMap!4985)

(assert (=> b!4692730 (= lt!1852991 (+!2150 lt!1852721 (h!58694 (Cons!52441 lt!1852713 lt!1852719))))))

(assert (=> b!4692730 (= lt!1853003 (addToMapMapFromBucket!1298 (t!359749 (Cons!52441 lt!1852713 lt!1852719)) (+!2150 lt!1852721 (h!58694 (Cons!52441 lt!1852713 lt!1852719)))))))

(declare-fun lt!1852990 () Unit!124529)

(declare-fun call!327979 () Unit!124529)

(assert (=> b!4692730 (= lt!1852990 call!327979)))

(declare-fun call!327977 () Bool)

(assert (=> b!4692730 call!327977))

(declare-fun lt!1852985 () Unit!124529)

(assert (=> b!4692730 (= lt!1852985 lt!1852990)))

(assert (=> b!4692730 (forall!11342 (toList!5622 lt!1852991) lambda!207873)))

(declare-fun lt!1852998 () Unit!124529)

(declare-fun Unit!124582 () Unit!124529)

(assert (=> b!4692730 (= lt!1852998 Unit!124582)))

(assert (=> b!4692730 (forall!11342 (t!359749 (Cons!52441 lt!1852713 lt!1852719)) lambda!207873)))

(declare-fun lt!1852994 () Unit!124529)

(declare-fun Unit!124583 () Unit!124529)

(assert (=> b!4692730 (= lt!1852994 Unit!124583)))

(declare-fun lt!1852993 () Unit!124529)

(declare-fun Unit!124584 () Unit!124529)

(assert (=> b!4692730 (= lt!1852993 Unit!124584)))

(declare-fun lt!1852986 () Unit!124529)

(assert (=> b!4692730 (= lt!1852986 (forallContained!3449 (toList!5622 lt!1852991) lambda!207873 (h!58694 (Cons!52441 lt!1852713 lt!1852719))))))

(assert (=> b!4692730 (contains!15662 lt!1852991 (_1!30223 (h!58694 (Cons!52441 lt!1852713 lt!1852719))))))

(declare-fun lt!1853005 () Unit!124529)

(declare-fun Unit!124586 () Unit!124529)

(assert (=> b!4692730 (= lt!1853005 Unit!124586)))

(assert (=> b!4692730 (contains!15662 lt!1853003 (_1!30223 (h!58694 (Cons!52441 lt!1852713 lt!1852719))))))

(declare-fun lt!1852996 () Unit!124529)

(declare-fun Unit!124588 () Unit!124529)

(assert (=> b!4692730 (= lt!1852996 Unit!124588)))

(assert (=> b!4692730 (forall!11342 (Cons!52441 lt!1852713 lt!1852719) lambda!207873)))

(declare-fun lt!1852987 () Unit!124529)

(declare-fun Unit!124590 () Unit!124529)

(assert (=> b!4692730 (= lt!1852987 Unit!124590)))

(assert (=> b!4692730 (forall!11342 (toList!5622 lt!1852991) lambda!207873)))

(declare-fun lt!1853001 () Unit!124529)

(declare-fun Unit!124592 () Unit!124529)

(assert (=> b!4692730 (= lt!1853001 Unit!124592)))

(declare-fun lt!1853002 () Unit!124529)

(declare-fun Unit!124594 () Unit!124529)

(assert (=> b!4692730 (= lt!1853002 Unit!124594)))

(declare-fun lt!1852992 () Unit!124529)

(assert (=> b!4692730 (= lt!1852992 (addForallContainsKeyThenBeforeAdding!704 lt!1852721 lt!1853003 (_1!30223 (h!58694 (Cons!52441 lt!1852713 lt!1852719))) (_2!30223 (h!58694 (Cons!52441 lt!1852713 lt!1852719)))))))

(assert (=> b!4692730 (forall!11342 (toList!5622 lt!1852721) lambda!207873)))

(declare-fun lt!1853004 () Unit!124529)

(assert (=> b!4692730 (= lt!1853004 lt!1852992)))

(assert (=> b!4692730 (forall!11342 (toList!5622 lt!1852721) lambda!207873)))

(declare-fun lt!1852988 () Unit!124529)

(declare-fun Unit!124598 () Unit!124529)

(assert (=> b!4692730 (= lt!1852988 Unit!124598)))

(declare-fun res!1979813 () Bool)

(assert (=> b!4692730 (= res!1979813 (forall!11342 (Cons!52441 lt!1852713 lt!1852719) lambda!207873))))

(declare-fun e!2927490 () Bool)

(assert (=> b!4692730 (=> (not res!1979813) (not e!2927490))))

(assert (=> b!4692730 e!2927490))

(declare-fun lt!1852999 () Unit!124529)

(declare-fun Unit!124600 () Unit!124529)

(assert (=> b!4692730 (= lt!1852999 Unit!124600)))

(declare-fun b!4692731 () Bool)

(declare-fun call!327978 () Bool)

(assert (=> b!4692731 (= e!2927490 call!327978)))

(assert (=> b!4692732 (= e!2927491 lt!1852721)))

(declare-fun lt!1852997 () Unit!124529)

(assert (=> b!4692732 (= lt!1852997 call!327979)))

(assert (=> b!4692732 call!327978))

(declare-fun lt!1853000 () Unit!124529)

(assert (=> b!4692732 (= lt!1853000 lt!1852997)))

(assert (=> b!4692732 call!327977))

(declare-fun lt!1852995 () Unit!124529)

(declare-fun Unit!124602 () Unit!124529)

(assert (=> b!4692732 (= lt!1852995 Unit!124602)))

(assert (=> d!1491485 e!2927489))

(declare-fun res!1979814 () Bool)

(assert (=> d!1491485 (=> (not res!1979814) (not e!2927489))))

(assert (=> d!1491485 (= res!1979814 (forall!11342 (Cons!52441 lt!1852713 lt!1852719) lambda!207874))))

(assert (=> d!1491485 (= lt!1852989 e!2927491)))

(declare-fun c!802296 () Bool)

(assert (=> d!1491485 (= c!802296 ((_ is Nil!52441) (Cons!52441 lt!1852713 lt!1852719)))))

(assert (=> d!1491485 (noDuplicateKeys!1866 (Cons!52441 lt!1852713 lt!1852719))))

(assert (=> d!1491485 (= (addToMapMapFromBucket!1298 (Cons!52441 lt!1852713 lt!1852719) lt!1852721) lt!1852989)))

(declare-fun bm!327972 () Bool)

(assert (=> bm!327972 (= call!327979 (lemmaContainsAllItsOwnKeys!705 lt!1852721))))

(declare-fun b!4692733 () Bool)

(declare-fun res!1979812 () Bool)

(assert (=> b!4692733 (=> (not res!1979812) (not e!2927489))))

(assert (=> b!4692733 (= res!1979812 (forall!11342 (toList!5622 lt!1852721) lambda!207874))))

(declare-fun bm!327973 () Bool)

(assert (=> bm!327973 (= call!327977 (forall!11342 (toList!5622 lt!1852721) (ite c!802296 lambda!207871 lambda!207872)))))

(declare-fun bm!327974 () Bool)

(assert (=> bm!327974 (= call!327978 (forall!11342 (toList!5622 lt!1852721) (ite c!802296 lambda!207871 lambda!207873)))))

(assert (= (and d!1491485 c!802296) b!4692732))

(assert (= (and d!1491485 (not c!802296)) b!4692730))

(assert (= (and b!4692730 res!1979813) b!4692731))

(assert (= (or b!4692732 b!4692730) bm!327972))

(assert (= (or b!4692732 b!4692730) bm!327973))

(assert (= (or b!4692732 b!4692731) bm!327974))

(assert (= (and d!1491485 res!1979814) b!4692733))

(assert (= (and b!4692733 res!1979812) b!4692729))

(declare-fun m!5597305 () Bool)

(assert (=> bm!327974 m!5597305))

(declare-fun m!5597307 () Bool)

(assert (=> d!1491485 m!5597307))

(declare-fun m!5597309 () Bool)

(assert (=> d!1491485 m!5597309))

(assert (=> bm!327972 m!5597149))

(declare-fun m!5597311 () Bool)

(assert (=> b!4692730 m!5597311))

(declare-fun m!5597313 () Bool)

(assert (=> b!4692730 m!5597313))

(declare-fun m!5597315 () Bool)

(assert (=> b!4692730 m!5597315))

(declare-fun m!5597317 () Bool)

(assert (=> b!4692730 m!5597317))

(assert (=> b!4692730 m!5597313))

(declare-fun m!5597319 () Bool)

(assert (=> b!4692730 m!5597319))

(declare-fun m!5597321 () Bool)

(assert (=> b!4692730 m!5597321))

(assert (=> b!4692730 m!5597317))

(assert (=> b!4692730 m!5597321))

(declare-fun m!5597323 () Bool)

(assert (=> b!4692730 m!5597323))

(declare-fun m!5597325 () Bool)

(assert (=> b!4692730 m!5597325))

(declare-fun m!5597327 () Bool)

(assert (=> b!4692730 m!5597327))

(declare-fun m!5597329 () Bool)

(assert (=> b!4692730 m!5597329))

(assert (=> b!4692730 m!5597319))

(declare-fun m!5597331 () Bool)

(assert (=> b!4692733 m!5597331))

(declare-fun m!5597333 () Bool)

(assert (=> b!4692729 m!5597333))

(declare-fun m!5597335 () Bool)

(assert (=> bm!327973 m!5597335))

(assert (=> b!4692459 d!1491485))

(declare-fun d!1491487 () Bool)

(declare-fun e!2927492 () Bool)

(assert (=> d!1491487 e!2927492))

(declare-fun res!1979815 () Bool)

(assert (=> d!1491487 (=> (not res!1979815) (not e!2927492))))

(declare-fun lt!1853006 () ListMap!4985)

(assert (=> d!1491487 (= res!1979815 (contains!15662 lt!1853006 (_1!30223 lt!1852716)))))

(declare-fun lt!1853009 () List!52565)

(assert (=> d!1491487 (= lt!1853006 (ListMap!4986 lt!1853009))))

(declare-fun lt!1853008 () Unit!124529)

(declare-fun lt!1853007 () Unit!124529)

(assert (=> d!1491487 (= lt!1853008 lt!1853007)))

(assert (=> d!1491487 (= (getValueByKey!1794 lt!1853009 (_1!30223 lt!1852716)) (Some!12105 (_2!30223 lt!1852716)))))

(assert (=> d!1491487 (= lt!1853007 (lemmaContainsTupThenGetReturnValue!1007 lt!1853009 (_1!30223 lt!1852716) (_2!30223 lt!1852716)))))

(assert (=> d!1491487 (= lt!1853009 (insertNoDuplicatedKeys!515 (toList!5622 (addToMapMapFromBucket!1298 lt!1852706 lt!1852721)) (_1!30223 lt!1852716) (_2!30223 lt!1852716)))))

(assert (=> d!1491487 (= (+!2150 (addToMapMapFromBucket!1298 lt!1852706 lt!1852721) lt!1852716) lt!1853006)))

(declare-fun b!4692734 () Bool)

(declare-fun res!1979816 () Bool)

(assert (=> b!4692734 (=> (not res!1979816) (not e!2927492))))

(assert (=> b!4692734 (= res!1979816 (= (getValueByKey!1794 (toList!5622 lt!1853006) (_1!30223 lt!1852716)) (Some!12105 (_2!30223 lt!1852716))))))

(declare-fun b!4692735 () Bool)

(assert (=> b!4692735 (= e!2927492 (contains!15663 (toList!5622 lt!1853006) lt!1852716))))

(assert (= (and d!1491487 res!1979815) b!4692734))

(assert (= (and b!4692734 res!1979816) b!4692735))

(declare-fun m!5597337 () Bool)

(assert (=> d!1491487 m!5597337))

(declare-fun m!5597339 () Bool)

(assert (=> d!1491487 m!5597339))

(declare-fun m!5597341 () Bool)

(assert (=> d!1491487 m!5597341))

(declare-fun m!5597343 () Bool)

(assert (=> d!1491487 m!5597343))

(declare-fun m!5597345 () Bool)

(assert (=> b!4692734 m!5597345))

(declare-fun m!5597347 () Bool)

(assert (=> b!4692735 m!5597347))

(assert (=> b!4692459 d!1491487))

(declare-fun d!1491489 () Bool)

(assert (=> d!1491489 (= (head!9995 newBucket!218) (h!58694 newBucket!218))))

(assert (=> b!4692459 d!1491489))

(declare-fun d!1491491 () Bool)

(declare-fun e!2927493 () Bool)

(assert (=> d!1491491 e!2927493))

(declare-fun res!1979817 () Bool)

(assert (=> d!1491491 (=> (not res!1979817) (not e!2927493))))

(declare-fun lt!1853010 () ListMap!4985)

(assert (=> d!1491491 (= res!1979817 (contains!15662 lt!1853010 (_1!30223 (h!58694 oldBucket!34))))))

(declare-fun lt!1853013 () List!52565)

(assert (=> d!1491491 (= lt!1853010 (ListMap!4986 lt!1853013))))

(declare-fun lt!1853012 () Unit!124529)

(declare-fun lt!1853011 () Unit!124529)

(assert (=> d!1491491 (= lt!1853012 lt!1853011)))

(assert (=> d!1491491 (= (getValueByKey!1794 lt!1853013 (_1!30223 (h!58694 oldBucket!34))) (Some!12105 (_2!30223 (h!58694 oldBucket!34))))))

(assert (=> d!1491491 (= lt!1853011 (lemmaContainsTupThenGetReturnValue!1007 lt!1853013 (_1!30223 (h!58694 oldBucket!34)) (_2!30223 (h!58694 oldBucket!34))))))

(assert (=> d!1491491 (= lt!1853013 (insertNoDuplicatedKeys!515 (toList!5622 lt!1852701) (_1!30223 (h!58694 oldBucket!34)) (_2!30223 (h!58694 oldBucket!34))))))

(assert (=> d!1491491 (= (+!2150 lt!1852701 (h!58694 oldBucket!34)) lt!1853010)))

(declare-fun b!4692736 () Bool)

(declare-fun res!1979818 () Bool)

(assert (=> b!4692736 (=> (not res!1979818) (not e!2927493))))

(assert (=> b!4692736 (= res!1979818 (= (getValueByKey!1794 (toList!5622 lt!1853010) (_1!30223 (h!58694 oldBucket!34))) (Some!12105 (_2!30223 (h!58694 oldBucket!34)))))))

(declare-fun b!4692737 () Bool)

(assert (=> b!4692737 (= e!2927493 (contains!15663 (toList!5622 lt!1853010) (h!58694 oldBucket!34)))))

(assert (= (and d!1491491 res!1979817) b!4692736))

(assert (= (and b!4692736 res!1979818) b!4692737))

(declare-fun m!5597349 () Bool)

(assert (=> d!1491491 m!5597349))

(declare-fun m!5597351 () Bool)

(assert (=> d!1491491 m!5597351))

(declare-fun m!5597353 () Bool)

(assert (=> d!1491491 m!5597353))

(declare-fun m!5597355 () Bool)

(assert (=> d!1491491 m!5597355))

(declare-fun m!5597357 () Bool)

(assert (=> b!4692736 m!5597357))

(declare-fun m!5597359 () Bool)

(assert (=> b!4692737 m!5597359))

(assert (=> b!4692459 d!1491491))

(declare-fun bs!1088343 () Bool)

(declare-fun b!4692741 () Bool)

(assert (= bs!1088343 (and b!4692741 b!4692732)))

(declare-fun lambda!207875 () Int)

(assert (=> bs!1088343 (= lambda!207875 lambda!207871)))

(declare-fun bs!1088344 () Bool)

(assert (= bs!1088344 (and b!4692741 d!1491455)))

(assert (=> bs!1088344 (not (= lambda!207875 lambda!207860))))

(declare-fun bs!1088345 () Bool)

(assert (= bs!1088345 (and b!4692741 b!4692730)))

(assert (=> bs!1088345 (= (= lt!1852721 lt!1853003) (= lambda!207875 lambda!207873))))

(declare-fun bs!1088346 () Bool)

(assert (= bs!1088346 (and b!4692741 b!4692710)))

(assert (=> bs!1088346 (= (= lt!1852721 lt!1852967) (= lambda!207875 lambda!207866))))

(assert (=> bs!1088345 (= lambda!207875 lambda!207872)))

(declare-fun bs!1088347 () Bool)

(assert (= bs!1088347 (and b!4692741 d!1491467)))

(assert (=> bs!1088347 (= (= lt!1852721 lt!1852953) (= lambda!207875 lambda!207867))))

(declare-fun bs!1088348 () Bool)

(assert (= bs!1088348 (and b!4692741 b!4692712)))

(assert (=> bs!1088348 (= lambda!207875 lambda!207864)))

(assert (=> bs!1088346 (= lambda!207875 lambda!207865)))

(declare-fun bs!1088349 () Bool)

(assert (= bs!1088349 (and b!4692741 b!4692693)))

(assert (=> bs!1088349 (= lambda!207875 lambda!207850)))

(declare-fun bs!1088350 () Bool)

(assert (= bs!1088350 (and b!4692741 b!4692691)))

(assert (=> bs!1088350 (= (= lt!1852721 lt!1852938) (= lambda!207875 lambda!207852))))

(declare-fun bs!1088351 () Bool)

(assert (= bs!1088351 (and b!4692741 d!1491485)))

(assert (=> bs!1088351 (= (= lt!1852721 lt!1852989) (= lambda!207875 lambda!207874))))

(assert (=> bs!1088350 (= lambda!207875 lambda!207851)))

(declare-fun bs!1088352 () Bool)

(assert (= bs!1088352 (and b!4692741 d!1491403)))

(assert (=> bs!1088352 (= (= lt!1852721 lt!1852924) (= lambda!207875 lambda!207853))))

(assert (=> b!4692741 true))

(declare-fun bs!1088353 () Bool)

(declare-fun b!4692739 () Bool)

(assert (= bs!1088353 (and b!4692739 b!4692732)))

(declare-fun lambda!207876 () Int)

(assert (=> bs!1088353 (= lambda!207876 lambda!207871)))

(declare-fun bs!1088354 () Bool)

(assert (= bs!1088354 (and b!4692739 d!1491455)))

(assert (=> bs!1088354 (not (= lambda!207876 lambda!207860))))

(declare-fun bs!1088355 () Bool)

(assert (= bs!1088355 (and b!4692739 b!4692730)))

(assert (=> bs!1088355 (= (= lt!1852721 lt!1853003) (= lambda!207876 lambda!207873))))

(declare-fun bs!1088356 () Bool)

(assert (= bs!1088356 (and b!4692739 b!4692710)))

(assert (=> bs!1088356 (= (= lt!1852721 lt!1852967) (= lambda!207876 lambda!207866))))

(assert (=> bs!1088355 (= lambda!207876 lambda!207872)))

(declare-fun bs!1088357 () Bool)

(assert (= bs!1088357 (and b!4692739 b!4692741)))

(assert (=> bs!1088357 (= lambda!207876 lambda!207875)))

(declare-fun bs!1088358 () Bool)

(assert (= bs!1088358 (and b!4692739 d!1491467)))

(assert (=> bs!1088358 (= (= lt!1852721 lt!1852953) (= lambda!207876 lambda!207867))))

(declare-fun bs!1088359 () Bool)

(assert (= bs!1088359 (and b!4692739 b!4692712)))

(assert (=> bs!1088359 (= lambda!207876 lambda!207864)))

(assert (=> bs!1088356 (= lambda!207876 lambda!207865)))

(declare-fun bs!1088360 () Bool)

(assert (= bs!1088360 (and b!4692739 b!4692693)))

(assert (=> bs!1088360 (= lambda!207876 lambda!207850)))

(declare-fun bs!1088361 () Bool)

(assert (= bs!1088361 (and b!4692739 b!4692691)))

(assert (=> bs!1088361 (= (= lt!1852721 lt!1852938) (= lambda!207876 lambda!207852))))

(declare-fun bs!1088362 () Bool)

(assert (= bs!1088362 (and b!4692739 d!1491485)))

(assert (=> bs!1088362 (= (= lt!1852721 lt!1852989) (= lambda!207876 lambda!207874))))

(assert (=> bs!1088361 (= lambda!207876 lambda!207851)))

(declare-fun bs!1088363 () Bool)

(assert (= bs!1088363 (and b!4692739 d!1491403)))

(assert (=> bs!1088363 (= (= lt!1852721 lt!1852924) (= lambda!207876 lambda!207853))))

(assert (=> b!4692739 true))

(declare-fun lt!1853032 () ListMap!4985)

(declare-fun lambda!207877 () Int)

(assert (=> bs!1088353 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207871))))

(assert (=> bs!1088354 (not (= lambda!207877 lambda!207860))))

(assert (=> bs!1088355 (= (= lt!1853032 lt!1853003) (= lambda!207877 lambda!207873))))

(assert (=> bs!1088356 (= (= lt!1853032 lt!1852967) (= lambda!207877 lambda!207866))))

(assert (=> bs!1088355 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207872))))

(assert (=> bs!1088357 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207875))))

(assert (=> bs!1088358 (= (= lt!1853032 lt!1852953) (= lambda!207877 lambda!207867))))

(assert (=> bs!1088359 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207864))))

(assert (=> bs!1088356 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207865))))

(assert (=> b!4692739 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207876))))

(assert (=> bs!1088360 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207850))))

(assert (=> bs!1088361 (= (= lt!1853032 lt!1852938) (= lambda!207877 lambda!207852))))

(assert (=> bs!1088362 (= (= lt!1853032 lt!1852989) (= lambda!207877 lambda!207874))))

(assert (=> bs!1088361 (= (= lt!1853032 lt!1852721) (= lambda!207877 lambda!207851))))

(assert (=> bs!1088363 (= (= lt!1853032 lt!1852924) (= lambda!207877 lambda!207853))))

(assert (=> b!4692739 true))

(declare-fun bs!1088364 () Bool)

(declare-fun d!1491493 () Bool)

(assert (= bs!1088364 (and d!1491493 b!4692732)))

(declare-fun lt!1853018 () ListMap!4985)

(declare-fun lambda!207878 () Int)

(assert (=> bs!1088364 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207871))))

(declare-fun bs!1088365 () Bool)

(assert (= bs!1088365 (and d!1491493 d!1491455)))

(assert (=> bs!1088365 (not (= lambda!207878 lambda!207860))))

(declare-fun bs!1088366 () Bool)

(assert (= bs!1088366 (and d!1491493 b!4692730)))

(assert (=> bs!1088366 (= (= lt!1853018 lt!1853003) (= lambda!207878 lambda!207873))))

(declare-fun bs!1088367 () Bool)

(assert (= bs!1088367 (and d!1491493 b!4692710)))

(assert (=> bs!1088367 (= (= lt!1853018 lt!1852967) (= lambda!207878 lambda!207866))))

(assert (=> bs!1088366 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207872))))

(declare-fun bs!1088368 () Bool)

(assert (= bs!1088368 (and d!1491493 b!4692741)))

(assert (=> bs!1088368 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207875))))

(declare-fun bs!1088369 () Bool)

(assert (= bs!1088369 (and d!1491493 d!1491467)))

(assert (=> bs!1088369 (= (= lt!1853018 lt!1852953) (= lambda!207878 lambda!207867))))

(declare-fun bs!1088370 () Bool)

(assert (= bs!1088370 (and d!1491493 b!4692712)))

(assert (=> bs!1088370 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207864))))

(assert (=> bs!1088367 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207865))))

(declare-fun bs!1088371 () Bool)

(assert (= bs!1088371 (and d!1491493 b!4692739)))

(assert (=> bs!1088371 (= (= lt!1853018 lt!1853032) (= lambda!207878 lambda!207877))))

(assert (=> bs!1088371 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207876))))

(declare-fun bs!1088372 () Bool)

(assert (= bs!1088372 (and d!1491493 b!4692693)))

(assert (=> bs!1088372 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207850))))

(declare-fun bs!1088373 () Bool)

(assert (= bs!1088373 (and d!1491493 b!4692691)))

(assert (=> bs!1088373 (= (= lt!1853018 lt!1852938) (= lambda!207878 lambda!207852))))

(declare-fun bs!1088374 () Bool)

(assert (= bs!1088374 (and d!1491493 d!1491485)))

(assert (=> bs!1088374 (= (= lt!1853018 lt!1852989) (= lambda!207878 lambda!207874))))

(assert (=> bs!1088373 (= (= lt!1853018 lt!1852721) (= lambda!207878 lambda!207851))))

(declare-fun bs!1088375 () Bool)

(assert (= bs!1088375 (and d!1491493 d!1491403)))

(assert (=> bs!1088375 (= (= lt!1853018 lt!1852924) (= lambda!207878 lambda!207853))))

(assert (=> d!1491493 true))

(declare-fun b!4692738 () Bool)

(declare-fun e!2927494 () Bool)

(assert (=> b!4692738 (= e!2927494 (invariantList!1418 (toList!5622 lt!1853018)))))

(declare-fun e!2927496 () ListMap!4985)

(assert (=> b!4692739 (= e!2927496 lt!1853032)))

(declare-fun lt!1853020 () ListMap!4985)

(assert (=> b!4692739 (= lt!1853020 (+!2150 lt!1852721 (h!58694 (Cons!52441 lt!1852716 lt!1852706))))))

(assert (=> b!4692739 (= lt!1853032 (addToMapMapFromBucket!1298 (t!359749 (Cons!52441 lt!1852716 lt!1852706)) (+!2150 lt!1852721 (h!58694 (Cons!52441 lt!1852716 lt!1852706)))))))

(declare-fun lt!1853019 () Unit!124529)

(declare-fun call!327982 () Unit!124529)

(assert (=> b!4692739 (= lt!1853019 call!327982)))

(declare-fun call!327980 () Bool)

(assert (=> b!4692739 call!327980))

(declare-fun lt!1853014 () Unit!124529)

(assert (=> b!4692739 (= lt!1853014 lt!1853019)))

(assert (=> b!4692739 (forall!11342 (toList!5622 lt!1853020) lambda!207877)))

(declare-fun lt!1853027 () Unit!124529)

(declare-fun Unit!124604 () Unit!124529)

(assert (=> b!4692739 (= lt!1853027 Unit!124604)))

(assert (=> b!4692739 (forall!11342 (t!359749 (Cons!52441 lt!1852716 lt!1852706)) lambda!207877)))

(declare-fun lt!1853023 () Unit!124529)

(declare-fun Unit!124605 () Unit!124529)

(assert (=> b!4692739 (= lt!1853023 Unit!124605)))

(declare-fun lt!1853022 () Unit!124529)

(declare-fun Unit!124606 () Unit!124529)

(assert (=> b!4692739 (= lt!1853022 Unit!124606)))

(declare-fun lt!1853015 () Unit!124529)

(assert (=> b!4692739 (= lt!1853015 (forallContained!3449 (toList!5622 lt!1853020) lambda!207877 (h!58694 (Cons!52441 lt!1852716 lt!1852706))))))

(assert (=> b!4692739 (contains!15662 lt!1853020 (_1!30223 (h!58694 (Cons!52441 lt!1852716 lt!1852706))))))

(declare-fun lt!1853034 () Unit!124529)

(declare-fun Unit!124607 () Unit!124529)

(assert (=> b!4692739 (= lt!1853034 Unit!124607)))

(assert (=> b!4692739 (contains!15662 lt!1853032 (_1!30223 (h!58694 (Cons!52441 lt!1852716 lt!1852706))))))

(declare-fun lt!1853025 () Unit!124529)

(declare-fun Unit!124608 () Unit!124529)

(assert (=> b!4692739 (= lt!1853025 Unit!124608)))

(assert (=> b!4692739 (forall!11342 (Cons!52441 lt!1852716 lt!1852706) lambda!207877)))

(declare-fun lt!1853016 () Unit!124529)

(declare-fun Unit!124609 () Unit!124529)

(assert (=> b!4692739 (= lt!1853016 Unit!124609)))

(assert (=> b!4692739 (forall!11342 (toList!5622 lt!1853020) lambda!207877)))

(declare-fun lt!1853030 () Unit!124529)

(declare-fun Unit!124610 () Unit!124529)

(assert (=> b!4692739 (= lt!1853030 Unit!124610)))

(declare-fun lt!1853031 () Unit!124529)

(declare-fun Unit!124611 () Unit!124529)

(assert (=> b!4692739 (= lt!1853031 Unit!124611)))

(declare-fun lt!1853021 () Unit!124529)

(assert (=> b!4692739 (= lt!1853021 (addForallContainsKeyThenBeforeAdding!704 lt!1852721 lt!1853032 (_1!30223 (h!58694 (Cons!52441 lt!1852716 lt!1852706))) (_2!30223 (h!58694 (Cons!52441 lt!1852716 lt!1852706)))))))

(assert (=> b!4692739 (forall!11342 (toList!5622 lt!1852721) lambda!207877)))

(declare-fun lt!1853033 () Unit!124529)

(assert (=> b!4692739 (= lt!1853033 lt!1853021)))

(assert (=> b!4692739 (forall!11342 (toList!5622 lt!1852721) lambda!207877)))

(declare-fun lt!1853017 () Unit!124529)

(declare-fun Unit!124613 () Unit!124529)

(assert (=> b!4692739 (= lt!1853017 Unit!124613)))

(declare-fun res!1979820 () Bool)

(assert (=> b!4692739 (= res!1979820 (forall!11342 (Cons!52441 lt!1852716 lt!1852706) lambda!207877))))

(declare-fun e!2927495 () Bool)

(assert (=> b!4692739 (=> (not res!1979820) (not e!2927495))))

(assert (=> b!4692739 e!2927495))

(declare-fun lt!1853028 () Unit!124529)

(declare-fun Unit!124616 () Unit!124529)

(assert (=> b!4692739 (= lt!1853028 Unit!124616)))

(declare-fun b!4692740 () Bool)

(declare-fun call!327981 () Bool)

(assert (=> b!4692740 (= e!2927495 call!327981)))

(assert (=> b!4692741 (= e!2927496 lt!1852721)))

(declare-fun lt!1853026 () Unit!124529)

(assert (=> b!4692741 (= lt!1853026 call!327982)))

(assert (=> b!4692741 call!327981))

(declare-fun lt!1853029 () Unit!124529)

(assert (=> b!4692741 (= lt!1853029 lt!1853026)))

(assert (=> b!4692741 call!327980))

(declare-fun lt!1853024 () Unit!124529)

(declare-fun Unit!124620 () Unit!124529)

(assert (=> b!4692741 (= lt!1853024 Unit!124620)))

(assert (=> d!1491493 e!2927494))

(declare-fun res!1979821 () Bool)

(assert (=> d!1491493 (=> (not res!1979821) (not e!2927494))))

(assert (=> d!1491493 (= res!1979821 (forall!11342 (Cons!52441 lt!1852716 lt!1852706) lambda!207878))))

(assert (=> d!1491493 (= lt!1853018 e!2927496)))

(declare-fun c!802297 () Bool)

(assert (=> d!1491493 (= c!802297 ((_ is Nil!52441) (Cons!52441 lt!1852716 lt!1852706)))))

(assert (=> d!1491493 (noDuplicateKeys!1866 (Cons!52441 lt!1852716 lt!1852706))))

(assert (=> d!1491493 (= (addToMapMapFromBucket!1298 (Cons!52441 lt!1852716 lt!1852706) lt!1852721) lt!1853018)))

(declare-fun bm!327975 () Bool)

(assert (=> bm!327975 (= call!327982 (lemmaContainsAllItsOwnKeys!705 lt!1852721))))

(declare-fun b!4692742 () Bool)

(declare-fun res!1979819 () Bool)

(assert (=> b!4692742 (=> (not res!1979819) (not e!2927494))))

(assert (=> b!4692742 (= res!1979819 (forall!11342 (toList!5622 lt!1852721) lambda!207878))))

(declare-fun bm!327976 () Bool)

(assert (=> bm!327976 (= call!327980 (forall!11342 (toList!5622 lt!1852721) (ite c!802297 lambda!207875 lambda!207876)))))

(declare-fun bm!327977 () Bool)

(assert (=> bm!327977 (= call!327981 (forall!11342 (toList!5622 lt!1852721) (ite c!802297 lambda!207875 lambda!207877)))))

(assert (= (and d!1491493 c!802297) b!4692741))

(assert (= (and d!1491493 (not c!802297)) b!4692739))

(assert (= (and b!4692739 res!1979820) b!4692740))

(assert (= (or b!4692741 b!4692739) bm!327975))

(assert (= (or b!4692741 b!4692739) bm!327976))

(assert (= (or b!4692741 b!4692740) bm!327977))

(assert (= (and d!1491493 res!1979821) b!4692742))

(assert (= (and b!4692742 res!1979819) b!4692738))

(declare-fun m!5597361 () Bool)

(assert (=> bm!327977 m!5597361))

(declare-fun m!5597363 () Bool)

(assert (=> d!1491493 m!5597363))

(declare-fun m!5597365 () Bool)

(assert (=> d!1491493 m!5597365))

(assert (=> bm!327975 m!5597149))

(declare-fun m!5597367 () Bool)

(assert (=> b!4692739 m!5597367))

(declare-fun m!5597369 () Bool)

(assert (=> b!4692739 m!5597369))

(declare-fun m!5597371 () Bool)

(assert (=> b!4692739 m!5597371))

(declare-fun m!5597373 () Bool)

(assert (=> b!4692739 m!5597373))

(assert (=> b!4692739 m!5597369))

(declare-fun m!5597375 () Bool)

(assert (=> b!4692739 m!5597375))

(declare-fun m!5597377 () Bool)

(assert (=> b!4692739 m!5597377))

(assert (=> b!4692739 m!5597373))

(assert (=> b!4692739 m!5597377))

(declare-fun m!5597379 () Bool)

(assert (=> b!4692739 m!5597379))

(declare-fun m!5597381 () Bool)

(assert (=> b!4692739 m!5597381))

(declare-fun m!5597383 () Bool)

(assert (=> b!4692739 m!5597383))

(declare-fun m!5597385 () Bool)

(assert (=> b!4692739 m!5597385))

(assert (=> b!4692739 m!5597375))

(declare-fun m!5597387 () Bool)

(assert (=> b!4692742 m!5597387))

(declare-fun m!5597389 () Bool)

(assert (=> b!4692738 m!5597389))

(declare-fun m!5597391 () Bool)

(assert (=> bm!327976 m!5597391))

(assert (=> b!4692459 d!1491493))

(declare-fun bs!1088376 () Bool)

(declare-fun b!4692746 () Bool)

(assert (= bs!1088376 (and b!4692746 b!4692732)))

(declare-fun lambda!207879 () Int)

(assert (=> bs!1088376 (= lambda!207879 lambda!207871)))

(declare-fun bs!1088377 () Bool)

(assert (= bs!1088377 (and b!4692746 d!1491455)))

(assert (=> bs!1088377 (not (= lambda!207879 lambda!207860))))

(declare-fun bs!1088378 () Bool)

(assert (= bs!1088378 (and b!4692746 b!4692730)))

(assert (=> bs!1088378 (= (= lt!1852721 lt!1853003) (= lambda!207879 lambda!207873))))

(declare-fun bs!1088379 () Bool)

(assert (= bs!1088379 (and b!4692746 b!4692710)))

(assert (=> bs!1088379 (= (= lt!1852721 lt!1852967) (= lambda!207879 lambda!207866))))

(assert (=> bs!1088378 (= lambda!207879 lambda!207872)))

(declare-fun bs!1088380 () Bool)

(assert (= bs!1088380 (and b!4692746 b!4692741)))

(assert (=> bs!1088380 (= lambda!207879 lambda!207875)))

(declare-fun bs!1088381 () Bool)

(assert (= bs!1088381 (and b!4692746 d!1491467)))

(assert (=> bs!1088381 (= (= lt!1852721 lt!1852953) (= lambda!207879 lambda!207867))))

(declare-fun bs!1088382 () Bool)

(assert (= bs!1088382 (and b!4692746 b!4692712)))

(assert (=> bs!1088382 (= lambda!207879 lambda!207864)))

(assert (=> bs!1088379 (= lambda!207879 lambda!207865)))

(declare-fun bs!1088383 () Bool)

(assert (= bs!1088383 (and b!4692746 b!4692739)))

(assert (=> bs!1088383 (= (= lt!1852721 lt!1853032) (= lambda!207879 lambda!207877))))

(assert (=> bs!1088383 (= lambda!207879 lambda!207876)))

(declare-fun bs!1088384 () Bool)

(assert (= bs!1088384 (and b!4692746 b!4692693)))

(assert (=> bs!1088384 (= lambda!207879 lambda!207850)))

(declare-fun bs!1088385 () Bool)

(assert (= bs!1088385 (and b!4692746 d!1491493)))

(assert (=> bs!1088385 (= (= lt!1852721 lt!1853018) (= lambda!207879 lambda!207878))))

(declare-fun bs!1088386 () Bool)

(assert (= bs!1088386 (and b!4692746 b!4692691)))

(assert (=> bs!1088386 (= (= lt!1852721 lt!1852938) (= lambda!207879 lambda!207852))))

(declare-fun bs!1088387 () Bool)

(assert (= bs!1088387 (and b!4692746 d!1491485)))

(assert (=> bs!1088387 (= (= lt!1852721 lt!1852989) (= lambda!207879 lambda!207874))))

(assert (=> bs!1088386 (= lambda!207879 lambda!207851)))

(declare-fun bs!1088388 () Bool)

(assert (= bs!1088388 (and b!4692746 d!1491403)))

(assert (=> bs!1088388 (= (= lt!1852721 lt!1852924) (= lambda!207879 lambda!207853))))

(assert (=> b!4692746 true))

(declare-fun bs!1088389 () Bool)

(declare-fun b!4692744 () Bool)

(assert (= bs!1088389 (and b!4692744 b!4692732)))

(declare-fun lambda!207880 () Int)

(assert (=> bs!1088389 (= lambda!207880 lambda!207871)))

(declare-fun bs!1088390 () Bool)

(assert (= bs!1088390 (and b!4692744 d!1491455)))

(assert (=> bs!1088390 (not (= lambda!207880 lambda!207860))))

(declare-fun bs!1088391 () Bool)

(assert (= bs!1088391 (and b!4692744 b!4692730)))

(assert (=> bs!1088391 (= (= lt!1852721 lt!1853003) (= lambda!207880 lambda!207873))))

(assert (=> bs!1088391 (= lambda!207880 lambda!207872)))

(declare-fun bs!1088392 () Bool)

(assert (= bs!1088392 (and b!4692744 b!4692741)))

(assert (=> bs!1088392 (= lambda!207880 lambda!207875)))

(declare-fun bs!1088393 () Bool)

(assert (= bs!1088393 (and b!4692744 d!1491467)))

(assert (=> bs!1088393 (= (= lt!1852721 lt!1852953) (= lambda!207880 lambda!207867))))

(declare-fun bs!1088394 () Bool)

(assert (= bs!1088394 (and b!4692744 b!4692712)))

(assert (=> bs!1088394 (= lambda!207880 lambda!207864)))

(declare-fun bs!1088395 () Bool)

(assert (= bs!1088395 (and b!4692744 b!4692710)))

(assert (=> bs!1088395 (= lambda!207880 lambda!207865)))

(declare-fun bs!1088396 () Bool)

(assert (= bs!1088396 (and b!4692744 b!4692739)))

(assert (=> bs!1088396 (= (= lt!1852721 lt!1853032) (= lambda!207880 lambda!207877))))

(assert (=> bs!1088396 (= lambda!207880 lambda!207876)))

(declare-fun bs!1088397 () Bool)

(assert (= bs!1088397 (and b!4692744 b!4692693)))

(assert (=> bs!1088397 (= lambda!207880 lambda!207850)))

(declare-fun bs!1088398 () Bool)

(assert (= bs!1088398 (and b!4692744 d!1491493)))

(assert (=> bs!1088398 (= (= lt!1852721 lt!1853018) (= lambda!207880 lambda!207878))))

(declare-fun bs!1088399 () Bool)

(assert (= bs!1088399 (and b!4692744 b!4692691)))

(assert (=> bs!1088399 (= (= lt!1852721 lt!1852938) (= lambda!207880 lambda!207852))))

(declare-fun bs!1088400 () Bool)

(assert (= bs!1088400 (and b!4692744 d!1491485)))

(assert (=> bs!1088400 (= (= lt!1852721 lt!1852989) (= lambda!207880 lambda!207874))))

(assert (=> bs!1088399 (= lambda!207880 lambda!207851)))

(declare-fun bs!1088401 () Bool)

(assert (= bs!1088401 (and b!4692744 d!1491403)))

(assert (=> bs!1088401 (= (= lt!1852721 lt!1852924) (= lambda!207880 lambda!207853))))

(assert (=> bs!1088395 (= (= lt!1852721 lt!1852967) (= lambda!207880 lambda!207866))))

(declare-fun bs!1088402 () Bool)

(assert (= bs!1088402 (and b!4692744 b!4692746)))

(assert (=> bs!1088402 (= lambda!207880 lambda!207879)))

(assert (=> b!4692744 true))

(declare-fun lt!1853053 () ListMap!4985)

(declare-fun lambda!207881 () Int)

(assert (=> bs!1088389 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207871))))

(assert (=> bs!1088390 (not (= lambda!207881 lambda!207860))))

(assert (=> bs!1088391 (= (= lt!1853053 lt!1853003) (= lambda!207881 lambda!207873))))

(assert (=> bs!1088391 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207872))))

(assert (=> bs!1088392 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207875))))

(assert (=> bs!1088393 (= (= lt!1853053 lt!1852953) (= lambda!207881 lambda!207867))))

(assert (=> bs!1088394 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207864))))

(assert (=> bs!1088395 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207865))))

(assert (=> bs!1088396 (= (= lt!1853053 lt!1853032) (= lambda!207881 lambda!207877))))

(assert (=> bs!1088396 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207876))))

(assert (=> bs!1088397 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207850))))

(assert (=> bs!1088398 (= (= lt!1853053 lt!1853018) (= lambda!207881 lambda!207878))))

(assert (=> bs!1088399 (= (= lt!1853053 lt!1852938) (= lambda!207881 lambda!207852))))

(assert (=> bs!1088400 (= (= lt!1853053 lt!1852989) (= lambda!207881 lambda!207874))))

(assert (=> bs!1088399 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207851))))

(assert (=> bs!1088401 (= (= lt!1853053 lt!1852924) (= lambda!207881 lambda!207853))))

(assert (=> b!4692744 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207880))))

(assert (=> bs!1088395 (= (= lt!1853053 lt!1852967) (= lambda!207881 lambda!207866))))

(assert (=> bs!1088402 (= (= lt!1853053 lt!1852721) (= lambda!207881 lambda!207879))))

(assert (=> b!4692744 true))

(declare-fun bs!1088403 () Bool)

(declare-fun d!1491495 () Bool)

(assert (= bs!1088403 (and d!1491495 b!4692744)))

(declare-fun lambda!207882 () Int)

(declare-fun lt!1853039 () ListMap!4985)

(assert (=> bs!1088403 (= (= lt!1853039 lt!1853053) (= lambda!207882 lambda!207881))))

(declare-fun bs!1088404 () Bool)

(assert (= bs!1088404 (and d!1491495 b!4692732)))

(assert (=> bs!1088404 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207871))))

(declare-fun bs!1088405 () Bool)

(assert (= bs!1088405 (and d!1491495 d!1491455)))

(assert (=> bs!1088405 (not (= lambda!207882 lambda!207860))))

(declare-fun bs!1088406 () Bool)

(assert (= bs!1088406 (and d!1491495 b!4692730)))

(assert (=> bs!1088406 (= (= lt!1853039 lt!1853003) (= lambda!207882 lambda!207873))))

(assert (=> bs!1088406 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207872))))

(declare-fun bs!1088407 () Bool)

(assert (= bs!1088407 (and d!1491495 b!4692741)))

(assert (=> bs!1088407 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207875))))

(declare-fun bs!1088408 () Bool)

(assert (= bs!1088408 (and d!1491495 d!1491467)))

(assert (=> bs!1088408 (= (= lt!1853039 lt!1852953) (= lambda!207882 lambda!207867))))

(declare-fun bs!1088409 () Bool)

(assert (= bs!1088409 (and d!1491495 b!4692712)))

(assert (=> bs!1088409 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207864))))

(declare-fun bs!1088410 () Bool)

(assert (= bs!1088410 (and d!1491495 b!4692710)))

(assert (=> bs!1088410 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207865))))

(declare-fun bs!1088411 () Bool)

(assert (= bs!1088411 (and d!1491495 b!4692739)))

(assert (=> bs!1088411 (= (= lt!1853039 lt!1853032) (= lambda!207882 lambda!207877))))

(assert (=> bs!1088411 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207876))))

(declare-fun bs!1088412 () Bool)

(assert (= bs!1088412 (and d!1491495 b!4692693)))

(assert (=> bs!1088412 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207850))))

(declare-fun bs!1088413 () Bool)

(assert (= bs!1088413 (and d!1491495 d!1491493)))

(assert (=> bs!1088413 (= (= lt!1853039 lt!1853018) (= lambda!207882 lambda!207878))))

(declare-fun bs!1088414 () Bool)

(assert (= bs!1088414 (and d!1491495 b!4692691)))

(assert (=> bs!1088414 (= (= lt!1853039 lt!1852938) (= lambda!207882 lambda!207852))))

(declare-fun bs!1088415 () Bool)

(assert (= bs!1088415 (and d!1491495 d!1491485)))

(assert (=> bs!1088415 (= (= lt!1853039 lt!1852989) (= lambda!207882 lambda!207874))))

(assert (=> bs!1088414 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207851))))

(declare-fun bs!1088416 () Bool)

(assert (= bs!1088416 (and d!1491495 d!1491403)))

(assert (=> bs!1088416 (= (= lt!1853039 lt!1852924) (= lambda!207882 lambda!207853))))

(assert (=> bs!1088403 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207880))))

(assert (=> bs!1088410 (= (= lt!1853039 lt!1852967) (= lambda!207882 lambda!207866))))

(declare-fun bs!1088417 () Bool)

(assert (= bs!1088417 (and d!1491495 b!4692746)))

(assert (=> bs!1088417 (= (= lt!1853039 lt!1852721) (= lambda!207882 lambda!207879))))

(assert (=> d!1491495 true))

(declare-fun b!4692743 () Bool)

(declare-fun e!2927497 () Bool)

(assert (=> b!4692743 (= e!2927497 (invariantList!1418 (toList!5622 lt!1853039)))))

(declare-fun e!2927499 () ListMap!4985)

(assert (=> b!4692744 (= e!2927499 lt!1853053)))

(declare-fun lt!1853041 () ListMap!4985)

(assert (=> b!4692744 (= lt!1853041 (+!2150 lt!1852721 (h!58694 lt!1852719)))))

(assert (=> b!4692744 (= lt!1853053 (addToMapMapFromBucket!1298 (t!359749 lt!1852719) (+!2150 lt!1852721 (h!58694 lt!1852719))))))

(declare-fun lt!1853040 () Unit!124529)

(declare-fun call!327985 () Unit!124529)

(assert (=> b!4692744 (= lt!1853040 call!327985)))

(declare-fun call!327983 () Bool)

(assert (=> b!4692744 call!327983))

(declare-fun lt!1853035 () Unit!124529)

(assert (=> b!4692744 (= lt!1853035 lt!1853040)))

(assert (=> b!4692744 (forall!11342 (toList!5622 lt!1853041) lambda!207881)))

(declare-fun lt!1853048 () Unit!124529)

(declare-fun Unit!124627 () Unit!124529)

(assert (=> b!4692744 (= lt!1853048 Unit!124627)))

(assert (=> b!4692744 (forall!11342 (t!359749 lt!1852719) lambda!207881)))

(declare-fun lt!1853044 () Unit!124529)

(declare-fun Unit!124629 () Unit!124529)

(assert (=> b!4692744 (= lt!1853044 Unit!124629)))

(declare-fun lt!1853043 () Unit!124529)

(declare-fun Unit!124631 () Unit!124529)

(assert (=> b!4692744 (= lt!1853043 Unit!124631)))

(declare-fun lt!1853036 () Unit!124529)

(assert (=> b!4692744 (= lt!1853036 (forallContained!3449 (toList!5622 lt!1853041) lambda!207881 (h!58694 lt!1852719)))))

(assert (=> b!4692744 (contains!15662 lt!1853041 (_1!30223 (h!58694 lt!1852719)))))

(declare-fun lt!1853055 () Unit!124529)

(declare-fun Unit!124633 () Unit!124529)

(assert (=> b!4692744 (= lt!1853055 Unit!124633)))

(assert (=> b!4692744 (contains!15662 lt!1853053 (_1!30223 (h!58694 lt!1852719)))))

(declare-fun lt!1853046 () Unit!124529)

(declare-fun Unit!124635 () Unit!124529)

(assert (=> b!4692744 (= lt!1853046 Unit!124635)))

(assert (=> b!4692744 (forall!11342 lt!1852719 lambda!207881)))

(declare-fun lt!1853037 () Unit!124529)

(declare-fun Unit!124637 () Unit!124529)

(assert (=> b!4692744 (= lt!1853037 Unit!124637)))

(assert (=> b!4692744 (forall!11342 (toList!5622 lt!1853041) lambda!207881)))

(declare-fun lt!1853051 () Unit!124529)

(declare-fun Unit!124639 () Unit!124529)

(assert (=> b!4692744 (= lt!1853051 Unit!124639)))

(declare-fun lt!1853052 () Unit!124529)

(declare-fun Unit!124641 () Unit!124529)

(assert (=> b!4692744 (= lt!1853052 Unit!124641)))

(declare-fun lt!1853042 () Unit!124529)

(assert (=> b!4692744 (= lt!1853042 (addForallContainsKeyThenBeforeAdding!704 lt!1852721 lt!1853053 (_1!30223 (h!58694 lt!1852719)) (_2!30223 (h!58694 lt!1852719))))))

(assert (=> b!4692744 (forall!11342 (toList!5622 lt!1852721) lambda!207881)))

(declare-fun lt!1853054 () Unit!124529)

(assert (=> b!4692744 (= lt!1853054 lt!1853042)))

(assert (=> b!4692744 (forall!11342 (toList!5622 lt!1852721) lambda!207881)))

(declare-fun lt!1853038 () Unit!124529)

(declare-fun Unit!124643 () Unit!124529)

(assert (=> b!4692744 (= lt!1853038 Unit!124643)))

(declare-fun res!1979823 () Bool)

(assert (=> b!4692744 (= res!1979823 (forall!11342 lt!1852719 lambda!207881))))

(declare-fun e!2927498 () Bool)

(assert (=> b!4692744 (=> (not res!1979823) (not e!2927498))))

(assert (=> b!4692744 e!2927498))

(declare-fun lt!1853049 () Unit!124529)

(declare-fun Unit!124645 () Unit!124529)

(assert (=> b!4692744 (= lt!1853049 Unit!124645)))

(declare-fun b!4692745 () Bool)

(declare-fun call!327984 () Bool)

(assert (=> b!4692745 (= e!2927498 call!327984)))

(assert (=> b!4692746 (= e!2927499 lt!1852721)))

(declare-fun lt!1853047 () Unit!124529)

(assert (=> b!4692746 (= lt!1853047 call!327985)))

(assert (=> b!4692746 call!327984))

(declare-fun lt!1853050 () Unit!124529)

(assert (=> b!4692746 (= lt!1853050 lt!1853047)))

(assert (=> b!4692746 call!327983))

(declare-fun lt!1853045 () Unit!124529)

(declare-fun Unit!124646 () Unit!124529)

(assert (=> b!4692746 (= lt!1853045 Unit!124646)))

(assert (=> d!1491495 e!2927497))

(declare-fun res!1979824 () Bool)

(assert (=> d!1491495 (=> (not res!1979824) (not e!2927497))))

(assert (=> d!1491495 (= res!1979824 (forall!11342 lt!1852719 lambda!207882))))

(assert (=> d!1491495 (= lt!1853039 e!2927499)))

(declare-fun c!802298 () Bool)

(assert (=> d!1491495 (= c!802298 ((_ is Nil!52441) lt!1852719))))

(assert (=> d!1491495 (noDuplicateKeys!1866 lt!1852719)))

(assert (=> d!1491495 (= (addToMapMapFromBucket!1298 lt!1852719 lt!1852721) lt!1853039)))

(declare-fun bm!327978 () Bool)

(assert (=> bm!327978 (= call!327985 (lemmaContainsAllItsOwnKeys!705 lt!1852721))))

(declare-fun b!4692747 () Bool)

(declare-fun res!1979822 () Bool)

(assert (=> b!4692747 (=> (not res!1979822) (not e!2927497))))

(assert (=> b!4692747 (= res!1979822 (forall!11342 (toList!5622 lt!1852721) lambda!207882))))

(declare-fun bm!327979 () Bool)

(assert (=> bm!327979 (= call!327983 (forall!11342 (toList!5622 lt!1852721) (ite c!802298 lambda!207879 lambda!207880)))))

(declare-fun bm!327980 () Bool)

(assert (=> bm!327980 (= call!327984 (forall!11342 (toList!5622 lt!1852721) (ite c!802298 lambda!207879 lambda!207881)))))

(assert (= (and d!1491495 c!802298) b!4692746))

(assert (= (and d!1491495 (not c!802298)) b!4692744))

(assert (= (and b!4692744 res!1979823) b!4692745))

(assert (= (or b!4692746 b!4692744) bm!327978))

(assert (= (or b!4692746 b!4692744) bm!327979))

(assert (= (or b!4692746 b!4692745) bm!327980))

(assert (= (and d!1491495 res!1979824) b!4692747))

(assert (= (and b!4692747 res!1979822) b!4692743))

(declare-fun m!5597393 () Bool)

(assert (=> bm!327980 m!5597393))

(declare-fun m!5597395 () Bool)

(assert (=> d!1491495 m!5597395))

(assert (=> d!1491495 m!5596899))

(assert (=> bm!327978 m!5597149))

(declare-fun m!5597397 () Bool)

(assert (=> b!4692744 m!5597397))

(declare-fun m!5597399 () Bool)

(assert (=> b!4692744 m!5597399))

(declare-fun m!5597401 () Bool)

(assert (=> b!4692744 m!5597401))

(declare-fun m!5597403 () Bool)

(assert (=> b!4692744 m!5597403))

(assert (=> b!4692744 m!5597399))

(declare-fun m!5597405 () Bool)

(assert (=> b!4692744 m!5597405))

(declare-fun m!5597407 () Bool)

(assert (=> b!4692744 m!5597407))

(assert (=> b!4692744 m!5597403))

(assert (=> b!4692744 m!5597407))

(declare-fun m!5597409 () Bool)

(assert (=> b!4692744 m!5597409))

(declare-fun m!5597411 () Bool)

(assert (=> b!4692744 m!5597411))

(declare-fun m!5597413 () Bool)

(assert (=> b!4692744 m!5597413))

(declare-fun m!5597415 () Bool)

(assert (=> b!4692744 m!5597415))

(assert (=> b!4692744 m!5597405))

(declare-fun m!5597417 () Bool)

(assert (=> b!4692747 m!5597417))

(declare-fun m!5597419 () Bool)

(assert (=> b!4692743 m!5597419))

(declare-fun m!5597421 () Bool)

(assert (=> bm!327979 m!5597421))

(assert (=> b!4692459 d!1491495))

(declare-fun b!4692748 () Bool)

(declare-fun e!2927501 () List!52565)

(assert (=> b!4692748 (= e!2927501 (t!359749 (t!359749 oldBucket!34)))))

(declare-fun b!4692750 () Bool)

(declare-fun e!2927500 () List!52565)

(assert (=> b!4692750 (= e!2927500 (Cons!52441 (h!58694 (t!359749 oldBucket!34)) (removePairForKey!1461 (t!359749 (t!359749 oldBucket!34)) key!4653)))))

(declare-fun b!4692751 () Bool)

(assert (=> b!4692751 (= e!2927500 Nil!52441)))

(declare-fun b!4692749 () Bool)

(assert (=> b!4692749 (= e!2927501 e!2927500)))

(declare-fun c!802300 () Bool)

(assert (=> b!4692749 (= c!802300 ((_ is Cons!52441) (t!359749 oldBucket!34)))))

(declare-fun d!1491497 () Bool)

(declare-fun lt!1853058 () List!52565)

(assert (=> d!1491497 (not (containsKey!3081 lt!1853058 key!4653))))

(assert (=> d!1491497 (= lt!1853058 e!2927501)))

(declare-fun c!802299 () Bool)

(assert (=> d!1491497 (= c!802299 (and ((_ is Cons!52441) (t!359749 oldBucket!34)) (= (_1!30223 (h!58694 (t!359749 oldBucket!34))) key!4653)))))

(assert (=> d!1491497 (noDuplicateKeys!1866 (t!359749 oldBucket!34))))

(assert (=> d!1491497 (= (removePairForKey!1461 (t!359749 oldBucket!34) key!4653) lt!1853058)))

(assert (= (and d!1491497 c!802299) b!4692748))

(assert (= (and d!1491497 (not c!802299)) b!4692749))

(assert (= (and b!4692749 c!802300) b!4692750))

(assert (= (and b!4692749 (not c!802300)) b!4692751))

(declare-fun m!5597423 () Bool)

(assert (=> b!4692750 m!5597423))

(declare-fun m!5597425 () Bool)

(assert (=> d!1491497 m!5597425))

(assert (=> d!1491497 m!5597005))

(assert (=> b!4692449 d!1491497))

(declare-fun bs!1088418 () Bool)

(declare-fun d!1491499 () Bool)

(assert (= bs!1088418 (and d!1491499 d!1491449)))

(declare-fun lambda!207883 () Int)

(assert (=> bs!1088418 (= lambda!207883 lambda!207854)))

(declare-fun bs!1088419 () Bool)

(assert (= bs!1088419 (and d!1491499 d!1491391)))

(assert (=> bs!1088419 (= lambda!207883 lambda!207803)))

(declare-fun bs!1088420 () Bool)

(assert (= bs!1088420 (and d!1491499 d!1491471)))

(assert (=> bs!1088420 (= lambda!207883 lambda!207868)))

(declare-fun bs!1088421 () Bool)

(assert (= bs!1088421 (and d!1491499 start!474920)))

(assert (=> bs!1088421 (= lambda!207883 lambda!207793)))

(declare-fun bs!1088422 () Bool)

(assert (= bs!1088422 (and d!1491499 d!1491473)))

(assert (=> bs!1088422 (= lambda!207883 lambda!207869)))

(declare-fun bs!1088423 () Bool)

(assert (= bs!1088423 (and d!1491499 d!1491459)))

(assert (=> bs!1088423 (= lambda!207883 lambda!207863)))

(declare-fun bs!1088424 () Bool)

(assert (= bs!1088424 (and d!1491499 d!1491475)))

(assert (=> bs!1088424 (= lambda!207883 lambda!207870)))

(declare-fun bs!1088425 () Bool)

(assert (= bs!1088425 (and d!1491499 d!1491453)))

(assert (=> bs!1088425 (not (= lambda!207883 lambda!207857))))

(declare-fun lt!1853063 () ListMap!4985)

(assert (=> d!1491499 (invariantList!1418 (toList!5622 lt!1853063))))

(declare-fun e!2927504 () ListMap!4985)

(assert (=> d!1491499 (= lt!1853063 e!2927504)))

(declare-fun c!802303 () Bool)

(assert (=> d!1491499 (= c!802303 ((_ is Cons!52442) (Cons!52442 lt!1852698 lt!1852710)))))

(assert (=> d!1491499 (forall!11341 (Cons!52442 lt!1852698 lt!1852710) lambda!207883)))

(assert (=> d!1491499 (= (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710)) lt!1853063)))

(declare-fun b!4692756 () Bool)

(assert (=> b!4692756 (= e!2927504 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (Cons!52442 lt!1852698 lt!1852710))) (extractMap!1892 (t!359750 (Cons!52442 lt!1852698 lt!1852710)))))))

(declare-fun b!4692757 () Bool)

(assert (=> b!4692757 (= e!2927504 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491499 c!802303) b!4692756))

(assert (= (and d!1491499 (not c!802303)) b!4692757))

(declare-fun m!5597427 () Bool)

(assert (=> d!1491499 m!5597427))

(declare-fun m!5597429 () Bool)

(assert (=> d!1491499 m!5597429))

(declare-fun m!5597431 () Bool)

(assert (=> b!4692756 m!5597431))

(assert (=> b!4692756 m!5597431))

(declare-fun m!5597433 () Bool)

(assert (=> b!4692756 m!5597433))

(assert (=> b!4692447 d!1491499))

(declare-fun d!1491501 () Bool)

(declare-fun res!1979825 () Bool)

(declare-fun e!2927505 () Bool)

(assert (=> d!1491501 (=> res!1979825 e!2927505)))

(assert (=> d!1491501 (= res!1979825 ((_ is Nil!52442) (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023)))))))

(assert (=> d!1491501 (= (forall!11341 (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023))) lambda!207793) e!2927505)))

(declare-fun b!4692758 () Bool)

(declare-fun e!2927506 () Bool)

(assert (=> b!4692758 (= e!2927505 e!2927506)))

(declare-fun res!1979826 () Bool)

(assert (=> b!4692758 (=> (not res!1979826) (not e!2927506))))

(assert (=> b!4692758 (= res!1979826 (dynLambda!21721 lambda!207793 (h!58695 (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023))))))))

(declare-fun b!4692759 () Bool)

(assert (=> b!4692759 (= e!2927506 (forall!11341 (t!359750 (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023)))) lambda!207793))))

(assert (= (and d!1491501 (not res!1979825)) b!4692758))

(assert (= (and b!4692758 res!1979826) b!4692759))

(declare-fun b_lambda!177069 () Bool)

(assert (=> (not b_lambda!177069) (not b!4692758)))

(declare-fun m!5597435 () Bool)

(assert (=> b!4692758 m!5597435))

(declare-fun m!5597437 () Bool)

(assert (=> b!4692759 m!5597437))

(assert (=> b!4692447 d!1491501))

(declare-fun d!1491503 () Bool)

(assert (=> d!1491503 (= (eq!1025 (extractMap!1892 (Cons!52442 lt!1852711 lt!1852710)) (-!670 (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710)) key!4653)) (= (content!9183 (toList!5622 (extractMap!1892 (Cons!52442 lt!1852711 lt!1852710)))) (content!9183 (toList!5622 (-!670 (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710)) key!4653)))))))

(declare-fun bs!1088426 () Bool)

(assert (= bs!1088426 d!1491503))

(declare-fun m!5597439 () Bool)

(assert (=> bs!1088426 m!5597439))

(declare-fun m!5597441 () Bool)

(assert (=> bs!1088426 m!5597441))

(assert (=> b!4692447 d!1491503))

(declare-fun bs!1088427 () Bool)

(declare-fun d!1491505 () Bool)

(assert (= bs!1088427 (and d!1491505 d!1491449)))

(declare-fun lambda!207914 () Int)

(assert (=> bs!1088427 (= lambda!207914 lambda!207854)))

(declare-fun bs!1088428 () Bool)

(assert (= bs!1088428 (and d!1491505 d!1491391)))

(assert (=> bs!1088428 (= lambda!207914 lambda!207803)))

(declare-fun bs!1088429 () Bool)

(assert (= bs!1088429 (and d!1491505 d!1491471)))

(assert (=> bs!1088429 (= lambda!207914 lambda!207868)))

(declare-fun bs!1088430 () Bool)

(assert (= bs!1088430 (and d!1491505 start!474920)))

(assert (=> bs!1088430 (= lambda!207914 lambda!207793)))

(declare-fun bs!1088431 () Bool)

(assert (= bs!1088431 (and d!1491505 d!1491473)))

(assert (=> bs!1088431 (= lambda!207914 lambda!207869)))

(declare-fun bs!1088432 () Bool)

(assert (= bs!1088432 (and d!1491505 d!1491459)))

(assert (=> bs!1088432 (= lambda!207914 lambda!207863)))

(declare-fun bs!1088433 () Bool)

(assert (= bs!1088433 (and d!1491505 d!1491499)))

(assert (=> bs!1088433 (= lambda!207914 lambda!207883)))

(declare-fun bs!1088434 () Bool)

(assert (= bs!1088434 (and d!1491505 d!1491475)))

(assert (=> bs!1088434 (= lambda!207914 lambda!207870)))

(declare-fun bs!1088435 () Bool)

(assert (= bs!1088435 (and d!1491505 d!1491453)))

(assert (=> bs!1088435 (not (= lambda!207914 lambda!207857))))

(assert (=> d!1491505 (eq!1025 (extractMap!1892 (Cons!52442 (tuple2!53861 hash!405 lt!1852706) (tail!8623 (toList!5621 lt!1852702)))) (-!670 (extractMap!1892 (Cons!52442 (tuple2!53861 hash!405 (t!359749 oldBucket!34)) (tail!8623 (toList!5621 lt!1852702)))) key!4653))))

(declare-fun lt!1853102 () Unit!124529)

(declare-fun choose!32646 (ListLongMap!4151 (_ BitVec 64) List!52565 List!52565 K!13815 Hashable!6235) Unit!124529)

(assert (=> d!1491505 (= lt!1853102 (choose!32646 lt!1852702 hash!405 (t!359749 oldBucket!34) lt!1852706 key!4653 hashF!1323))))

(assert (=> d!1491505 (forall!11341 (toList!5621 lt!1852702) lambda!207914)))

(assert (=> d!1491505 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!40 lt!1852702 hash!405 (t!359749 oldBucket!34) lt!1852706 key!4653 hashF!1323) lt!1853102)))

(declare-fun bs!1088436 () Bool)

(assert (= bs!1088436 d!1491505))

(declare-fun m!5597443 () Bool)

(assert (=> bs!1088436 m!5597443))

(declare-fun m!5597445 () Bool)

(assert (=> bs!1088436 m!5597445))

(declare-fun m!5597447 () Bool)

(assert (=> bs!1088436 m!5597447))

(declare-fun m!5597449 () Bool)

(assert (=> bs!1088436 m!5597449))

(declare-fun m!5597451 () Bool)

(assert (=> bs!1088436 m!5597451))

(assert (=> bs!1088436 m!5597451))

(declare-fun m!5597453 () Bool)

(assert (=> bs!1088436 m!5597453))

(assert (=> bs!1088436 m!5597449))

(assert (=> bs!1088436 m!5597453))

(declare-fun m!5597455 () Bool)

(assert (=> bs!1088436 m!5597455))

(assert (=> b!4692447 d!1491505))

(declare-fun d!1491507 () Bool)

(assert (=> d!1491507 (= (tail!8623 lt!1852705) (t!359750 lt!1852705))))

(assert (=> b!4692447 d!1491507))

(declare-fun d!1491509 () Bool)

(declare-fun e!2927516 () Bool)

(assert (=> d!1491509 e!2927516))

(declare-fun res!1979838 () Bool)

(assert (=> d!1491509 (=> (not res!1979838) (not e!2927516))))

(declare-fun lt!1853126 () ListMap!4985)

(assert (=> d!1491509 (= res!1979838 (not (contains!15662 lt!1853126 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!339 (List!52565 K!13815) List!52565)

(assert (=> d!1491509 (= lt!1853126 (ListMap!4986 (removePresrvNoDuplicatedKeys!339 (toList!5622 (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710))) key!4653)))))

(assert (=> d!1491509 (= (-!670 (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710)) key!4653) lt!1853126)))

(declare-fun b!4692775 () Bool)

(declare-fun content!9185 (List!52568) (InoxSet K!13815))

(assert (=> b!4692775 (= e!2927516 (= ((_ map and) (content!9185 (keys!18733 (extractMap!1892 (Cons!52442 lt!1852698 lt!1852710)))) ((_ map not) (store ((as const (Array K!13815 Bool)) false) key!4653 true))) (content!9185 (keys!18733 lt!1853126))))))

(assert (= (and d!1491509 res!1979838) b!4692775))

(declare-fun m!5597497 () Bool)

(assert (=> d!1491509 m!5597497))

(declare-fun m!5597499 () Bool)

(assert (=> d!1491509 m!5597499))

(declare-fun m!5597501 () Bool)

(assert (=> b!4692775 m!5597501))

(declare-fun m!5597503 () Bool)

(assert (=> b!4692775 m!5597503))

(assert (=> b!4692775 m!5596811))

(declare-fun m!5597505 () Bool)

(assert (=> b!4692775 m!5597505))

(assert (=> b!4692775 m!5597505))

(declare-fun m!5597507 () Bool)

(assert (=> b!4692775 m!5597507))

(assert (=> b!4692775 m!5597501))

(declare-fun m!5597509 () Bool)

(assert (=> b!4692775 m!5597509))

(assert (=> b!4692447 d!1491509))

(declare-fun bs!1088447 () Bool)

(declare-fun d!1491515 () Bool)

(assert (= bs!1088447 (and d!1491515 d!1491449)))

(declare-fun lambda!207919 () Int)

(assert (=> bs!1088447 (= lambda!207919 lambda!207854)))

(declare-fun bs!1088448 () Bool)

(assert (= bs!1088448 (and d!1491515 d!1491471)))

(assert (=> bs!1088448 (= lambda!207919 lambda!207868)))

(declare-fun bs!1088449 () Bool)

(assert (= bs!1088449 (and d!1491515 start!474920)))

(assert (=> bs!1088449 (= lambda!207919 lambda!207793)))

(declare-fun bs!1088450 () Bool)

(assert (= bs!1088450 (and d!1491515 d!1491473)))

(assert (=> bs!1088450 (= lambda!207919 lambda!207869)))

(declare-fun bs!1088451 () Bool)

(assert (= bs!1088451 (and d!1491515 d!1491459)))

(assert (=> bs!1088451 (= lambda!207919 lambda!207863)))

(declare-fun bs!1088452 () Bool)

(assert (= bs!1088452 (and d!1491515 d!1491499)))

(assert (=> bs!1088452 (= lambda!207919 lambda!207883)))

(declare-fun bs!1088453 () Bool)

(assert (= bs!1088453 (and d!1491515 d!1491475)))

(assert (=> bs!1088453 (= lambda!207919 lambda!207870)))

(declare-fun bs!1088454 () Bool)

(assert (= bs!1088454 (and d!1491515 d!1491453)))

(assert (=> bs!1088454 (not (= lambda!207919 lambda!207857))))

(declare-fun bs!1088455 () Bool)

(assert (= bs!1088455 (and d!1491515 d!1491505)))

(assert (=> bs!1088455 (= lambda!207919 lambda!207914)))

(declare-fun bs!1088456 () Bool)

(assert (= bs!1088456 (and d!1491515 d!1491391)))

(assert (=> bs!1088456 (= lambda!207919 lambda!207803)))

(declare-fun lt!1853127 () ListMap!4985)

(assert (=> d!1491515 (invariantList!1418 (toList!5622 lt!1853127))))

(declare-fun e!2927517 () ListMap!4985)

(assert (=> d!1491515 (= lt!1853127 e!2927517)))

(declare-fun c!802305 () Bool)

(assert (=> d!1491515 (= c!802305 ((_ is Cons!52442) (Cons!52442 lt!1852711 lt!1852710)))))

(assert (=> d!1491515 (forall!11341 (Cons!52442 lt!1852711 lt!1852710) lambda!207919)))

(assert (=> d!1491515 (= (extractMap!1892 (Cons!52442 lt!1852711 lt!1852710)) lt!1853127)))

(declare-fun b!4692776 () Bool)

(assert (=> b!4692776 (= e!2927517 (addToMapMapFromBucket!1298 (_2!30224 (h!58695 (Cons!52442 lt!1852711 lt!1852710))) (extractMap!1892 (t!359750 (Cons!52442 lt!1852711 lt!1852710)))))))

(declare-fun b!4692777 () Bool)

(assert (=> b!4692777 (= e!2927517 (ListMap!4986 Nil!52441))))

(assert (= (and d!1491515 c!802305) b!4692776))

(assert (= (and d!1491515 (not c!802305)) b!4692777))

(declare-fun m!5597511 () Bool)

(assert (=> d!1491515 m!5597511))

(declare-fun m!5597513 () Bool)

(assert (=> d!1491515 m!5597513))

(declare-fun m!5597515 () Bool)

(assert (=> b!4692776 m!5597515))

(assert (=> b!4692776 m!5597515))

(declare-fun m!5597517 () Bool)

(assert (=> b!4692776 m!5597517))

(assert (=> b!4692447 d!1491515))

(declare-fun d!1491517 () Bool)

(declare-fun hash!4091 (Hashable!6235 K!13815) (_ BitVec 64))

(assert (=> d!1491517 (= (hash!4087 hashF!1323 key!4653) (hash!4091 hashF!1323 key!4653))))

(declare-fun bs!1088457 () Bool)

(assert (= bs!1088457 d!1491517))

(declare-fun m!5597519 () Bool)

(assert (=> bs!1088457 m!5597519))

(assert (=> b!4692458 d!1491517))

(declare-fun d!1491519 () Bool)

(declare-fun isEmpty!29102 (Option!12105) Bool)

(assert (=> d!1491519 (= (isDefined!9360 (getPair!470 lt!1852709 key!4653)) (not (isEmpty!29102 (getPair!470 lt!1852709 key!4653))))))

(declare-fun bs!1088458 () Bool)

(assert (= bs!1088458 d!1491519))

(assert (=> bs!1088458 m!5596767))

(declare-fun m!5597521 () Bool)

(assert (=> bs!1088458 m!5597521))

(assert (=> b!4692448 d!1491519))

(declare-fun bs!1088559 () Bool)

(declare-fun d!1491521 () Bool)

(assert (= bs!1088559 (and d!1491521 d!1491449)))

(declare-fun lambda!207941 () Int)

(assert (=> bs!1088559 (= lambda!207941 lambda!207854)))

(declare-fun bs!1088560 () Bool)

(assert (= bs!1088560 (and d!1491521 d!1491515)))

(assert (=> bs!1088560 (= lambda!207941 lambda!207919)))

(declare-fun bs!1088561 () Bool)

(assert (= bs!1088561 (and d!1491521 d!1491471)))

(assert (=> bs!1088561 (= lambda!207941 lambda!207868)))

(declare-fun bs!1088562 () Bool)

(assert (= bs!1088562 (and d!1491521 start!474920)))

(assert (=> bs!1088562 (= lambda!207941 lambda!207793)))

(declare-fun bs!1088563 () Bool)

(assert (= bs!1088563 (and d!1491521 d!1491473)))

(assert (=> bs!1088563 (= lambda!207941 lambda!207869)))

(declare-fun bs!1088564 () Bool)

(assert (= bs!1088564 (and d!1491521 d!1491459)))

(assert (=> bs!1088564 (= lambda!207941 lambda!207863)))

(declare-fun bs!1088565 () Bool)

(assert (= bs!1088565 (and d!1491521 d!1491499)))

(assert (=> bs!1088565 (= lambda!207941 lambda!207883)))

(declare-fun bs!1088566 () Bool)

(assert (= bs!1088566 (and d!1491521 d!1491475)))

(assert (=> bs!1088566 (= lambda!207941 lambda!207870)))

(declare-fun bs!1088567 () Bool)

(assert (= bs!1088567 (and d!1491521 d!1491453)))

(assert (=> bs!1088567 (not (= lambda!207941 lambda!207857))))

(declare-fun bs!1088568 () Bool)

(assert (= bs!1088568 (and d!1491521 d!1491505)))

(assert (=> bs!1088568 (= lambda!207941 lambda!207914)))

(declare-fun bs!1088569 () Bool)

(assert (= bs!1088569 (and d!1491521 d!1491391)))

(assert (=> bs!1088569 (= lambda!207941 lambda!207803)))

(declare-fun b!4692805 () Bool)

(declare-fun res!1979859 () Bool)

(declare-fun e!2927534 () Bool)

(assert (=> b!4692805 (=> (not res!1979859) (not e!2927534))))

(assert (=> b!4692805 (= res!1979859 (allKeysSameHashInMap!1780 lm!2023 hashF!1323))))

(declare-fun b!4692807 () Bool)

(assert (=> b!4692807 (= e!2927534 (isDefined!9360 (getPair!470 (apply!12349 lm!2023 (hash!4087 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1853221 () Unit!124529)

(assert (=> b!4692807 (= lt!1853221 (forallContained!3448 (toList!5621 lm!2023) lambda!207941 (tuple2!53861 (hash!4087 hashF!1323 key!4653) (apply!12349 lm!2023 (hash!4087 hashF!1323 key!4653)))))))

(declare-fun lt!1853219 () Unit!124529)

(declare-fun lt!1853223 () Unit!124529)

(assert (=> b!4692807 (= lt!1853219 lt!1853223)))

(declare-fun lt!1853218 () (_ BitVec 64))

(declare-fun lt!1853216 () List!52565)

(assert (=> b!4692807 (contains!15660 (toList!5621 lm!2023) (tuple2!53861 lt!1853218 lt!1853216))))

(assert (=> b!4692807 (= lt!1853223 (lemmaGetValueImpliesTupleContained!275 lm!2023 lt!1853218 lt!1853216))))

(declare-fun e!2927533 () Bool)

(assert (=> b!4692807 e!2927533))

(declare-fun res!1979856 () Bool)

(assert (=> b!4692807 (=> (not res!1979856) (not e!2927533))))

(assert (=> b!4692807 (= res!1979856 (contains!15661 lm!2023 lt!1853218))))

(assert (=> b!4692807 (= lt!1853216 (apply!12349 lm!2023 (hash!4087 hashF!1323 key!4653)))))

(assert (=> b!4692807 (= lt!1853218 (hash!4087 hashF!1323 key!4653))))

(declare-fun lt!1853220 () Unit!124529)

(declare-fun lt!1853222 () Unit!124529)

(assert (=> b!4692807 (= lt!1853220 lt!1853222)))

(assert (=> b!4692807 (contains!15661 lm!2023 (hash!4087 hashF!1323 key!4653))))

(assert (=> b!4692807 (= lt!1853222 (lemmaInGenMapThenLongMapContainsHash!676 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4692808 () Bool)

(declare-datatypes ((Option!12109 0))(
  ( (None!12108) (Some!12108 (v!46543 List!52565)) )
))
(declare-fun getValueByKey!1797 (List!52566 (_ BitVec 64)) Option!12109)

(assert (=> b!4692808 (= e!2927533 (= (getValueByKey!1797 (toList!5621 lm!2023) lt!1853218) (Some!12108 lt!1853216)))))

(declare-fun b!4692806 () Bool)

(declare-fun res!1979857 () Bool)

(assert (=> b!4692806 (=> (not res!1979857) (not e!2927534))))

(assert (=> b!4692806 (= res!1979857 (contains!15662 (extractMap!1892 (toList!5621 lm!2023)) key!4653))))

(assert (=> d!1491521 e!2927534))

(declare-fun res!1979858 () Bool)

(assert (=> d!1491521 (=> (not res!1979858) (not e!2927534))))

(assert (=> d!1491521 (= res!1979858 (forall!11341 (toList!5621 lm!2023) lambda!207941))))

(declare-fun lt!1853217 () Unit!124529)

(declare-fun choose!32647 (ListLongMap!4151 K!13815 Hashable!6235) Unit!124529)

(assert (=> d!1491521 (= lt!1853217 (choose!32647 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491521 (forall!11341 (toList!5621 lm!2023) lambda!207941)))

(assert (=> d!1491521 (= (lemmaInGenMapThenGetPairDefined!266 lm!2023 key!4653 hashF!1323) lt!1853217)))

(assert (= (and d!1491521 res!1979858) b!4692805))

(assert (= (and b!4692805 res!1979859) b!4692806))

(assert (= (and b!4692806 res!1979857) b!4692807))

(assert (= (and b!4692807 res!1979856) b!4692808))

(assert (=> b!4692805 m!5596871))

(assert (=> b!4692807 m!5596763))

(declare-fun m!5597627 () Bool)

(assert (=> b!4692807 m!5597627))

(declare-fun m!5597629 () Bool)

(assert (=> b!4692807 m!5597629))

(declare-fun m!5597631 () Bool)

(assert (=> b!4692807 m!5597631))

(assert (=> b!4692807 m!5596787))

(assert (=> b!4692807 m!5596787))

(declare-fun m!5597633 () Bool)

(assert (=> b!4692807 m!5597633))

(assert (=> b!4692807 m!5597633))

(assert (=> b!4692807 m!5597627))

(declare-fun m!5597635 () Bool)

(assert (=> b!4692807 m!5597635))

(assert (=> b!4692807 m!5596787))

(declare-fun m!5597637 () Bool)

(assert (=> b!4692807 m!5597637))

(declare-fun m!5597639 () Bool)

(assert (=> b!4692807 m!5597639))

(declare-fun m!5597641 () Bool)

(assert (=> b!4692807 m!5597641))

(declare-fun m!5597643 () Bool)

(assert (=> b!4692808 m!5597643))

(assert (=> b!4692806 m!5596793))

(assert (=> b!4692806 m!5596793))

(declare-fun m!5597645 () Bool)

(assert (=> b!4692806 m!5597645))

(declare-fun m!5597647 () Bool)

(assert (=> d!1491521 m!5597647))

(declare-fun m!5597649 () Bool)

(assert (=> d!1491521 m!5597649))

(assert (=> d!1491521 m!5597647))

(assert (=> b!4692448 d!1491521))

(declare-fun d!1491541 () Bool)

(declare-fun lt!1853226 () Bool)

(declare-fun content!9186 (List!52566) (InoxSet tuple2!53860))

(assert (=> d!1491541 (= lt!1853226 (select (content!9186 (toList!5621 lm!2023)) lt!1852718))))

(declare-fun e!2927540 () Bool)

(assert (=> d!1491541 (= lt!1853226 e!2927540)))

(declare-fun res!1979864 () Bool)

(assert (=> d!1491541 (=> (not res!1979864) (not e!2927540))))

(assert (=> d!1491541 (= res!1979864 ((_ is Cons!52442) (toList!5621 lm!2023)))))

(assert (=> d!1491541 (= (contains!15660 (toList!5621 lm!2023) lt!1852718) lt!1853226)))

(declare-fun b!4692813 () Bool)

(declare-fun e!2927539 () Bool)

(assert (=> b!4692813 (= e!2927540 e!2927539)))

(declare-fun res!1979865 () Bool)

(assert (=> b!4692813 (=> res!1979865 e!2927539)))

(assert (=> b!4692813 (= res!1979865 (= (h!58695 (toList!5621 lm!2023)) lt!1852718))))

(declare-fun b!4692814 () Bool)

(assert (=> b!4692814 (= e!2927539 (contains!15660 (t!359750 (toList!5621 lm!2023)) lt!1852718))))

(assert (= (and d!1491541 res!1979864) b!4692813))

(assert (= (and b!4692813 (not res!1979865)) b!4692814))

(declare-fun m!5597685 () Bool)

(assert (=> d!1491541 m!5597685))

(declare-fun m!5597687 () Bool)

(assert (=> d!1491541 m!5597687))

(declare-fun m!5597689 () Bool)

(assert (=> b!4692814 m!5597689))

(assert (=> b!4692448 d!1491541))

(declare-fun d!1491545 () Bool)

(assert (=> d!1491545 (containsKey!3081 oldBucket!34 key!4653)))

(declare-fun lt!1853250 () Unit!124529)

(declare-fun choose!32648 (List!52565 K!13815 Hashable!6235) Unit!124529)

(assert (=> d!1491545 (= lt!1853250 (choose!32648 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1491545 (noDuplicateKeys!1866 oldBucket!34)))

(assert (=> d!1491545 (= (lemmaGetPairDefinedThenContainsKey!218 oldBucket!34 key!4653 hashF!1323) lt!1853250)))

(declare-fun bs!1088598 () Bool)

(assert (= bs!1088598 d!1491545))

(assert (=> bs!1088598 m!5596775))

(declare-fun m!5597691 () Bool)

(assert (=> bs!1088598 m!5597691))

(assert (=> bs!1088598 m!5596783))

(assert (=> b!4692448 d!1491545))

(declare-fun d!1491547 () Bool)

(assert (=> d!1491547 (contains!15660 (toList!5621 lm!2023) (tuple2!53861 lt!1852703 lt!1852709))))

(declare-fun lt!1853253 () Unit!124529)

(declare-fun choose!32649 (ListLongMap!4151 (_ BitVec 64) List!52565) Unit!124529)

(assert (=> d!1491547 (= lt!1853253 (choose!32649 lm!2023 lt!1852703 lt!1852709))))

(assert (=> d!1491547 (contains!15661 lm!2023 lt!1852703)))

(assert (=> d!1491547 (= (lemmaGetValueImpliesTupleContained!275 lm!2023 lt!1852703 lt!1852709) lt!1853253)))

(declare-fun bs!1088613 () Bool)

(assert (= bs!1088613 d!1491547))

(declare-fun m!5597693 () Bool)

(assert (=> bs!1088613 m!5597693))

(declare-fun m!5597695 () Bool)

(assert (=> bs!1088613 m!5597695))

(assert (=> bs!1088613 m!5596765))

(assert (=> b!4692448 d!1491547))

(declare-fun d!1491549 () Bool)

(declare-fun res!1979873 () Bool)

(declare-fun e!2927548 () Bool)

(assert (=> d!1491549 (=> res!1979873 e!2927548)))

(assert (=> d!1491549 (= res!1979873 (and ((_ is Cons!52441) (t!359749 oldBucket!34)) (= (_1!30223 (h!58694 (t!359749 oldBucket!34))) key!4653)))))

(assert (=> d!1491549 (= (containsKey!3081 (t!359749 oldBucket!34) key!4653) e!2927548)))

(declare-fun b!4692825 () Bool)

(declare-fun e!2927549 () Bool)

(assert (=> b!4692825 (= e!2927548 e!2927549)))

(declare-fun res!1979874 () Bool)

(assert (=> b!4692825 (=> (not res!1979874) (not e!2927549))))

(assert (=> b!4692825 (= res!1979874 ((_ is Cons!52441) (t!359749 oldBucket!34)))))

(declare-fun b!4692826 () Bool)

(assert (=> b!4692826 (= e!2927549 (containsKey!3081 (t!359749 (t!359749 oldBucket!34)) key!4653))))

(assert (= (and d!1491549 (not res!1979873)) b!4692825))

(assert (= (and b!4692825 res!1979874) b!4692826))

(declare-fun m!5597697 () Bool)

(assert (=> b!4692826 m!5597697))

(assert (=> b!4692448 d!1491549))

(declare-fun d!1491551 () Bool)

(assert (=> d!1491551 (dynLambda!21721 lambda!207793 lt!1852718)))

(declare-fun lt!1853256 () Unit!124529)

(declare-fun choose!32650 (List!52566 Int tuple2!53860) Unit!124529)

(assert (=> d!1491551 (= lt!1853256 (choose!32650 (toList!5621 lm!2023) lambda!207793 lt!1852718))))

(declare-fun e!2927552 () Bool)

(assert (=> d!1491551 e!2927552))

(declare-fun res!1979877 () Bool)

(assert (=> d!1491551 (=> (not res!1979877) (not e!2927552))))

(assert (=> d!1491551 (= res!1979877 (forall!11341 (toList!5621 lm!2023) lambda!207793))))

(assert (=> d!1491551 (= (forallContained!3448 (toList!5621 lm!2023) lambda!207793 lt!1852718) lt!1853256)))

(declare-fun b!4692829 () Bool)

(assert (=> b!4692829 (= e!2927552 (contains!15660 (toList!5621 lm!2023) lt!1852718))))

(assert (= (and d!1491551 res!1979877) b!4692829))

(declare-fun b_lambda!177071 () Bool)

(assert (=> (not b_lambda!177071) (not d!1491551)))

(declare-fun m!5597733 () Bool)

(assert (=> d!1491551 m!5597733))

(declare-fun m!5597735 () Bool)

(assert (=> d!1491551 m!5597735))

(assert (=> d!1491551 m!5596795))

(assert (=> b!4692829 m!5596771))

(assert (=> b!4692448 d!1491551))

(declare-fun d!1491555 () Bool)

(declare-fun e!2927570 () Bool)

(assert (=> d!1491555 e!2927570))

(declare-fun res!1979887 () Bool)

(assert (=> d!1491555 (=> res!1979887 e!2927570)))

(declare-fun lt!1853281 () Bool)

(assert (=> d!1491555 (= res!1979887 (not lt!1853281))))

(declare-fun lt!1853280 () Bool)

(assert (=> d!1491555 (= lt!1853281 lt!1853280)))

(declare-fun lt!1853283 () Unit!124529)

(declare-fun e!2927569 () Unit!124529)

(assert (=> d!1491555 (= lt!1853283 e!2927569)))

(declare-fun c!802320 () Bool)

(assert (=> d!1491555 (= c!802320 lt!1853280)))

(declare-fun containsKey!3085 (List!52566 (_ BitVec 64)) Bool)

(assert (=> d!1491555 (= lt!1853280 (containsKey!3085 (toList!5621 lm!2023) lt!1852703))))

(assert (=> d!1491555 (= (contains!15661 lm!2023 lt!1852703) lt!1853281)))

(declare-fun b!4692855 () Bool)

(declare-fun lt!1853279 () Unit!124529)

(assert (=> b!4692855 (= e!2927569 lt!1853279)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1689 (List!52566 (_ BitVec 64)) Unit!124529)

(assert (=> b!4692855 (= lt!1853279 (lemmaContainsKeyImpliesGetValueByKeyDefined!1689 (toList!5621 lm!2023) lt!1852703))))

(declare-fun isDefined!9364 (Option!12109) Bool)

(assert (=> b!4692855 (isDefined!9364 (getValueByKey!1797 (toList!5621 lm!2023) lt!1852703))))

(declare-fun b!4692857 () Bool)

(declare-fun Unit!124650 () Unit!124529)

(assert (=> b!4692857 (= e!2927569 Unit!124650)))

(declare-fun b!4692859 () Bool)

(assert (=> b!4692859 (= e!2927570 (isDefined!9364 (getValueByKey!1797 (toList!5621 lm!2023) lt!1852703)))))

(assert (= (and d!1491555 c!802320) b!4692855))

(assert (= (and d!1491555 (not c!802320)) b!4692857))

(assert (= (and d!1491555 (not res!1979887)) b!4692859))

(declare-fun m!5597789 () Bool)

(assert (=> d!1491555 m!5597789))

(declare-fun m!5597791 () Bool)

(assert (=> b!4692855 m!5597791))

(declare-fun m!5597793 () Bool)

(assert (=> b!4692855 m!5597793))

(assert (=> b!4692855 m!5597793))

(declare-fun m!5597795 () Bool)

(assert (=> b!4692855 m!5597795))

(assert (=> b!4692859 m!5597793))

(assert (=> b!4692859 m!5597793))

(assert (=> b!4692859 m!5597795))

(assert (=> b!4692448 d!1491555))

(declare-fun bs!1088658 () Bool)

(declare-fun d!1491575 () Bool)

(assert (= bs!1088658 (and d!1491575 d!1491449)))

(declare-fun lambda!207952 () Int)

(assert (=> bs!1088658 (= lambda!207952 lambda!207854)))

(declare-fun bs!1088659 () Bool)

(assert (= bs!1088659 (and d!1491575 d!1491515)))

(assert (=> bs!1088659 (= lambda!207952 lambda!207919)))

(declare-fun bs!1088660 () Bool)

(assert (= bs!1088660 (and d!1491575 d!1491471)))

(assert (=> bs!1088660 (= lambda!207952 lambda!207868)))

(declare-fun bs!1088661 () Bool)

(assert (= bs!1088661 (and d!1491575 start!474920)))

(assert (=> bs!1088661 (= lambda!207952 lambda!207793)))

(declare-fun bs!1088662 () Bool)

(assert (= bs!1088662 (and d!1491575 d!1491459)))

(assert (=> bs!1088662 (= lambda!207952 lambda!207863)))

(declare-fun bs!1088663 () Bool)

(assert (= bs!1088663 (and d!1491575 d!1491499)))

(assert (=> bs!1088663 (= lambda!207952 lambda!207883)))

(declare-fun bs!1088664 () Bool)

(assert (= bs!1088664 (and d!1491575 d!1491475)))

(assert (=> bs!1088664 (= lambda!207952 lambda!207870)))

(declare-fun bs!1088665 () Bool)

(assert (= bs!1088665 (and d!1491575 d!1491453)))

(assert (=> bs!1088665 (not (= lambda!207952 lambda!207857))))

(declare-fun bs!1088666 () Bool)

(assert (= bs!1088666 (and d!1491575 d!1491505)))

(assert (=> bs!1088666 (= lambda!207952 lambda!207914)))

(declare-fun bs!1088667 () Bool)

(assert (= bs!1088667 (and d!1491575 d!1491391)))

(assert (=> bs!1088667 (= lambda!207952 lambda!207803)))

(declare-fun bs!1088668 () Bool)

(assert (= bs!1088668 (and d!1491575 d!1491521)))

(assert (=> bs!1088668 (= lambda!207952 lambda!207941)))

(declare-fun bs!1088669 () Bool)

(assert (= bs!1088669 (and d!1491575 d!1491473)))

(assert (=> bs!1088669 (= lambda!207952 lambda!207869)))

(assert (=> d!1491575 (contains!15661 lm!2023 (hash!4087 hashF!1323 key!4653))))

(declare-fun lt!1853286 () Unit!124529)

(declare-fun choose!32651 (ListLongMap!4151 K!13815 Hashable!6235) Unit!124529)

(assert (=> d!1491575 (= lt!1853286 (choose!32651 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1491575 (forall!11341 (toList!5621 lm!2023) lambda!207952)))

(assert (=> d!1491575 (= (lemmaInGenMapThenLongMapContainsHash!676 lm!2023 key!4653 hashF!1323) lt!1853286)))

(declare-fun bs!1088670 () Bool)

(assert (= bs!1088670 d!1491575))

(assert (=> bs!1088670 m!5596787))

(assert (=> bs!1088670 m!5596787))

(assert (=> bs!1088670 m!5597637))

(declare-fun m!5597807 () Bool)

(assert (=> bs!1088670 m!5597807))

(declare-fun m!5597809 () Bool)

(assert (=> bs!1088670 m!5597809))

(assert (=> b!4692448 d!1491575))

(declare-fun d!1491583 () Bool)

(declare-fun e!2927591 () Bool)

(assert (=> d!1491583 e!2927591))

(declare-fun res!1979899 () Bool)

(assert (=> d!1491583 (=> res!1979899 e!2927591)))

(declare-fun e!2927592 () Bool)

(assert (=> d!1491583 (= res!1979899 e!2927592)))

(declare-fun res!1979897 () Bool)

(assert (=> d!1491583 (=> (not res!1979897) (not e!2927592))))

(declare-fun lt!1853289 () Option!12105)

(assert (=> d!1491583 (= res!1979897 (isEmpty!29102 lt!1853289))))

(declare-fun e!2927589 () Option!12105)

(assert (=> d!1491583 (= lt!1853289 e!2927589)))

(declare-fun c!802326 () Bool)

(assert (=> d!1491583 (= c!802326 (and ((_ is Cons!52441) lt!1852709) (= (_1!30223 (h!58694 lt!1852709)) key!4653)))))

(assert (=> d!1491583 (noDuplicateKeys!1866 lt!1852709)))

(assert (=> d!1491583 (= (getPair!470 lt!1852709 key!4653) lt!1853289)))

(declare-fun b!4692887 () Bool)

(declare-fun res!1979898 () Bool)

(declare-fun e!2927593 () Bool)

(assert (=> b!4692887 (=> (not res!1979898) (not e!2927593))))

(declare-fun get!17515 (Option!12105) tuple2!53858)

(assert (=> b!4692887 (= res!1979898 (= (_1!30223 (get!17515 lt!1853289)) key!4653))))

(declare-fun b!4692888 () Bool)

(declare-fun e!2927590 () Option!12105)

(assert (=> b!4692888 (= e!2927590 None!12104)))

(declare-fun b!4692889 () Bool)

(assert (=> b!4692889 (= e!2927589 e!2927590)))

(declare-fun c!802327 () Bool)

(assert (=> b!4692889 (= c!802327 ((_ is Cons!52441) lt!1852709))))

(declare-fun b!4692890 () Bool)

(assert (=> b!4692890 (= e!2927591 e!2927593)))

(declare-fun res!1979896 () Bool)

(assert (=> b!4692890 (=> (not res!1979896) (not e!2927593))))

(assert (=> b!4692890 (= res!1979896 (isDefined!9360 lt!1853289))))

(declare-fun b!4692891 () Bool)

(assert (=> b!4692891 (= e!2927589 (Some!12104 (h!58694 lt!1852709)))))

(declare-fun b!4692892 () Bool)

(assert (=> b!4692892 (= e!2927590 (getPair!470 (t!359749 lt!1852709) key!4653))))

(declare-fun b!4692893 () Bool)

(assert (=> b!4692893 (= e!2927593 (contains!15663 lt!1852709 (get!17515 lt!1853289)))))

(declare-fun b!4692894 () Bool)

(assert (=> b!4692894 (= e!2927592 (not (containsKey!3081 lt!1852709 key!4653)))))

(assert (= (and d!1491583 c!802326) b!4692891))

(assert (= (and d!1491583 (not c!802326)) b!4692889))

(assert (= (and b!4692889 c!802327) b!4692892))

(assert (= (and b!4692889 (not c!802327)) b!4692888))

(assert (= (and d!1491583 res!1979897) b!4692894))

(assert (= (and d!1491583 (not res!1979899)) b!4692890))

(assert (= (and b!4692890 res!1979896) b!4692887))

(assert (= (and b!4692887 res!1979898) b!4692893))

(declare-fun m!5597811 () Bool)

(assert (=> b!4692892 m!5597811))

(declare-fun m!5597813 () Bool)

(assert (=> d!1491583 m!5597813))

(declare-fun m!5597815 () Bool)

(assert (=> d!1491583 m!5597815))

(declare-fun m!5597817 () Bool)

(assert (=> b!4692887 m!5597817))

(declare-fun m!5597819 () Bool)

(assert (=> b!4692894 m!5597819))

(assert (=> b!4692893 m!5597817))

(assert (=> b!4692893 m!5597817))

(declare-fun m!5597821 () Bool)

(assert (=> b!4692893 m!5597821))

(declare-fun m!5597823 () Bool)

(assert (=> b!4692890 m!5597823))

(assert (=> b!4692448 d!1491583))

(declare-fun d!1491585 () Bool)

(declare-fun res!1979900 () Bool)

(declare-fun e!2927594 () Bool)

(assert (=> d!1491585 (=> res!1979900 e!2927594)))

(assert (=> d!1491585 (= res!1979900 (and ((_ is Cons!52441) oldBucket!34) (= (_1!30223 (h!58694 oldBucket!34)) key!4653)))))

(assert (=> d!1491585 (= (containsKey!3081 oldBucket!34 key!4653) e!2927594)))

(declare-fun b!4692895 () Bool)

(declare-fun e!2927595 () Bool)

(assert (=> b!4692895 (= e!2927594 e!2927595)))

(declare-fun res!1979901 () Bool)

(assert (=> b!4692895 (=> (not res!1979901) (not e!2927595))))

(assert (=> b!4692895 (= res!1979901 ((_ is Cons!52441) oldBucket!34))))

(declare-fun b!4692896 () Bool)

(assert (=> b!4692896 (= e!2927595 (containsKey!3081 (t!359749 oldBucket!34) key!4653))))

(assert (= (and d!1491585 (not res!1979900)) b!4692895))

(assert (= (and b!4692895 res!1979901) b!4692896))

(assert (=> b!4692896 m!5596781))

(assert (=> b!4692448 d!1491585))

(declare-fun d!1491587 () Bool)

(declare-fun get!17516 (Option!12109) List!52565)

(assert (=> d!1491587 (= (apply!12349 lm!2023 lt!1852703) (get!17516 (getValueByKey!1797 (toList!5621 lm!2023) lt!1852703)))))

(declare-fun bs!1088671 () Bool)

(assert (= bs!1088671 d!1491587))

(assert (=> bs!1088671 m!5597793))

(assert (=> bs!1088671 m!5597793))

(declare-fun m!5597825 () Bool)

(assert (=> bs!1088671 m!5597825))

(assert (=> b!4692448 d!1491587))

(declare-fun b!4692897 () Bool)

(declare-fun e!2927597 () List!52565)

(assert (=> b!4692897 (= e!2927597 (t!359749 oldBucket!34))))

(declare-fun b!4692899 () Bool)

(declare-fun e!2927596 () List!52565)

(assert (=> b!4692899 (= e!2927596 (Cons!52441 (h!58694 oldBucket!34) (removePairForKey!1461 (t!359749 oldBucket!34) key!4653)))))

(declare-fun b!4692900 () Bool)

(assert (=> b!4692900 (= e!2927596 Nil!52441)))

(declare-fun b!4692898 () Bool)

(assert (=> b!4692898 (= e!2927597 e!2927596)))

(declare-fun c!802329 () Bool)

(assert (=> b!4692898 (= c!802329 ((_ is Cons!52441) oldBucket!34))))

(declare-fun d!1491589 () Bool)

(declare-fun lt!1853290 () List!52565)

(assert (=> d!1491589 (not (containsKey!3081 lt!1853290 key!4653))))

(assert (=> d!1491589 (= lt!1853290 e!2927597)))

(declare-fun c!802328 () Bool)

(assert (=> d!1491589 (= c!802328 (and ((_ is Cons!52441) oldBucket!34) (= (_1!30223 (h!58694 oldBucket!34)) key!4653)))))

(assert (=> d!1491589 (noDuplicateKeys!1866 oldBucket!34)))

(assert (=> d!1491589 (= (removePairForKey!1461 oldBucket!34 key!4653) lt!1853290)))

(assert (= (and d!1491589 c!802328) b!4692897))

(assert (= (and d!1491589 (not c!802328)) b!4692898))

(assert (= (and b!4692898 c!802329) b!4692899))

(assert (= (and b!4692898 (not c!802329)) b!4692900))

(assert (=> b!4692899 m!5596865))

(declare-fun m!5597827 () Bool)

(assert (=> d!1491589 m!5597827))

(assert (=> d!1491589 m!5596783))

(assert (=> b!4692467 d!1491589))

(declare-fun bs!1088672 () Bool)

(declare-fun d!1491591 () Bool)

(assert (= bs!1088672 (and d!1491591 b!4692744)))

(declare-fun lambda!207953 () Int)

(assert (=> bs!1088672 (not (= lambda!207953 lambda!207881))))

(declare-fun bs!1088673 () Bool)

(assert (= bs!1088673 (and d!1491591 b!4692732)))

(assert (=> bs!1088673 (not (= lambda!207953 lambda!207871))))

(declare-fun bs!1088674 () Bool)

(assert (= bs!1088674 (and d!1491591 b!4692730)))

(assert (=> bs!1088674 (not (= lambda!207953 lambda!207873))))

(assert (=> bs!1088674 (not (= lambda!207953 lambda!207872))))

(declare-fun bs!1088675 () Bool)

(assert (= bs!1088675 (and d!1491591 b!4692741)))

(assert (=> bs!1088675 (not (= lambda!207953 lambda!207875))))

(declare-fun bs!1088676 () Bool)

(assert (= bs!1088676 (and d!1491591 d!1491467)))

(assert (=> bs!1088676 (not (= lambda!207953 lambda!207867))))

(declare-fun bs!1088677 () Bool)

(assert (= bs!1088677 (and d!1491591 b!4692712)))

(assert (=> bs!1088677 (not (= lambda!207953 lambda!207864))))

(declare-fun bs!1088678 () Bool)

(assert (= bs!1088678 (and d!1491591 b!4692710)))

(assert (=> bs!1088678 (not (= lambda!207953 lambda!207865))))

(declare-fun bs!1088679 () Bool)

(assert (= bs!1088679 (and d!1491591 b!4692739)))

(assert (=> bs!1088679 (not (= lambda!207953 lambda!207877))))

(assert (=> bs!1088679 (not (= lambda!207953 lambda!207876))))

(declare-fun bs!1088680 () Bool)

(assert (= bs!1088680 (and d!1491591 b!4692693)))

(assert (=> bs!1088680 (not (= lambda!207953 lambda!207850))))

(declare-fun bs!1088681 () Bool)

(assert (= bs!1088681 (and d!1491591 d!1491493)))

(assert (=> bs!1088681 (not (= lambda!207953 lambda!207878))))

(declare-fun bs!1088682 () Bool)

(assert (= bs!1088682 (and d!1491591 b!4692691)))

(assert (=> bs!1088682 (not (= lambda!207953 lambda!207852))))

(declare-fun bs!1088683 () Bool)

(assert (= bs!1088683 (and d!1491591 d!1491485)))

(assert (=> bs!1088683 (not (= lambda!207953 lambda!207874))))

(assert (=> bs!1088682 (not (= lambda!207953 lambda!207851))))

(declare-fun bs!1088684 () Bool)

(assert (= bs!1088684 (and d!1491591 d!1491403)))

(assert (=> bs!1088684 (not (= lambda!207953 lambda!207853))))

(declare-fun bs!1088685 () Bool)

(assert (= bs!1088685 (and d!1491591 d!1491455)))

(assert (=> bs!1088685 (= lambda!207953 lambda!207860)))

(declare-fun bs!1088686 () Bool)

(assert (= bs!1088686 (and d!1491591 d!1491495)))

(assert (=> bs!1088686 (not (= lambda!207953 lambda!207882))))

(assert (=> bs!1088672 (not (= lambda!207953 lambda!207880))))

(assert (=> bs!1088678 (not (= lambda!207953 lambda!207866))))

(declare-fun bs!1088687 () Bool)

(assert (= bs!1088687 (and d!1491591 b!4692746)))

(assert (=> bs!1088687 (not (= lambda!207953 lambda!207879))))

(assert (=> d!1491591 true))

(assert (=> d!1491591 true))

(assert (=> d!1491591 (= (allKeysSameHash!1692 newBucket!218 hash!405 hashF!1323) (forall!11342 newBucket!218 lambda!207953))))

(declare-fun bs!1088688 () Bool)

(assert (= bs!1088688 d!1491591))

(declare-fun m!5597829 () Bool)

(assert (=> bs!1088688 m!5597829))

(assert (=> b!4692457 d!1491591))

(declare-fun b!4692905 () Bool)

(declare-fun tp!1346118 () Bool)

(declare-fun e!2927600 () Bool)

(assert (=> b!4692905 (= e!2927600 (and tp_is_empty!30757 tp_is_empty!30759 tp!1346118))))

(assert (=> b!4692455 (= tp!1346104 e!2927600)))

(assert (= (and b!4692455 ((_ is Cons!52441) (t!359749 oldBucket!34))) b!4692905))

(declare-fun b!4692910 () Bool)

(declare-fun e!2927603 () Bool)

(declare-fun tp!1346123 () Bool)

(declare-fun tp!1346124 () Bool)

(assert (=> b!4692910 (= e!2927603 (and tp!1346123 tp!1346124))))

(assert (=> b!4692461 (= tp!1346105 e!2927603)))

(assert (= (and b!4692461 ((_ is Cons!52442) (toList!5621 lm!2023))) b!4692910))

(declare-fun e!2927604 () Bool)

(declare-fun b!4692911 () Bool)

(declare-fun tp!1346125 () Bool)

(assert (=> b!4692911 (= e!2927604 (and tp_is_empty!30757 tp_is_empty!30759 tp!1346125))))

(assert (=> b!4692453 (= tp!1346103 e!2927604)))

(assert (= (and b!4692453 ((_ is Cons!52441) (t!359749 newBucket!218))) b!4692911))

(declare-fun b_lambda!177079 () Bool)

(assert (= b_lambda!177069 (or start!474920 b_lambda!177079)))

(declare-fun bs!1088689 () Bool)

(declare-fun d!1491593 () Bool)

(assert (= bs!1088689 (and d!1491593 start!474920)))

(assert (=> bs!1088689 (= (dynLambda!21721 lambda!207793 (h!58695 (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023))))) (noDuplicateKeys!1866 (_2!30224 (h!58695 (Cons!52442 lt!1852711 (t!359750 (toList!5621 lm!2023)))))))))

(declare-fun m!5597831 () Bool)

(assert (=> bs!1088689 m!5597831))

(assert (=> b!4692758 d!1491593))

(declare-fun b_lambda!177081 () Bool)

(assert (= b_lambda!177071 (or start!474920 b_lambda!177081)))

(declare-fun bs!1088690 () Bool)

(declare-fun d!1491595 () Bool)

(assert (= bs!1088690 (and d!1491595 start!474920)))

(assert (=> bs!1088690 (= (dynLambda!21721 lambda!207793 lt!1852718) (noDuplicateKeys!1866 (_2!30224 lt!1852718)))))

(declare-fun m!5597833 () Bool)

(assert (=> bs!1088690 m!5597833))

(assert (=> d!1491551 d!1491595))

(declare-fun b_lambda!177083 () Bool)

(assert (= b_lambda!177063 (or start!474920 b_lambda!177083)))

(declare-fun bs!1088691 () Bool)

(declare-fun d!1491597 () Bool)

(assert (= bs!1088691 (and d!1491597 start!474920)))

(assert (=> bs!1088691 (= (dynLambda!21721 lambda!207793 (h!58695 (toList!5621 lm!2023))) (noDuplicateKeys!1866 (_2!30224 (h!58695 (toList!5621 lm!2023)))))))

(assert (=> bs!1088691 m!5597147))

(assert (=> b!4692510 d!1491597))

(check-sat (not d!1491461) (not d!1491515) (not b!4692723) tp_is_empty!30759 (not b!4692776) (not b_lambda!177083) (not b!4692727) (not d!1491453) (not b!4692733) (not b!4692710) (not b!4692691) (not b!4692552) (not d!1491545) (not b!4692511) (not b!4692814) (not b!4692894) (not d!1491589) (not bm!327975) (not b!4692735) (not bm!327965) (not d!1491455) (not b!4692892) (not b!4692829) (not b!4692709) (not b!4692905) (not b!4692565) (not d!1491471) (not bm!327967) (not bm!327972) (not d!1491555) (not b!4692730) (not b!4692713) (not b!4692705) (not b!4692690) (not bm!327976) (not bm!327979) (not d!1491547) (not d!1491473) (not b!4692716) (not b!4692550) (not d!1491403) (not b!4692747) (not bm!327966) (not b!4692896) (not b!4692708) (not b!4692911) (not b!4692775) (not b!4692890) (not b!4692549) (not d!1491479) (not b!4692806) (not b!4692807) (not b!4692744) (not d!1491475) (not b!4692572) (not bm!327969) (not bm!327978) (not d!1491483) (not b!4692887) (not d!1491467) (not b!4692742) (not d!1491509) (not bs!1088689) (not d!1491575) (not b!4692750) (not bm!327968) (not d!1491519) (not d!1491491) (not b!4692826) (not d!1491451) (not d!1491369) (not bm!327973) (not b!4692808) (not d!1491499) (not b!4692734) (not b!4692893) (not b!4692736) (not d!1491583) (not b!4692718) (not d!1491503) (not b_lambda!177081) (not d!1491465) (not b!4692504) (not b!4692720) (not bm!327974) (not d!1491371) (not b!4692697) tp_is_empty!30757 (not b!4692722) (not b!4692555) (not d!1491541) (not b!4692743) (not bs!1088691) (not d!1491493) (not d!1491481) (not b!4692551) (not d!1491587) (not d!1491517) (not bs!1088690) (not b!4692738) (not b!4692729) (not d!1491591) (not b!4692855) (not d!1491485) (not b!4692706) (not b!4692756) (not d!1491521) (not b!4692694) (not d!1491487) (not d!1491551) (not b!4692721) (not b!4692520) (not d!1491391) (not b!4692553) (not d!1491373) (not b!4692725) (not b!4692910) (not b_lambda!177079) (not b!4692571) (not b!4692739) (not d!1491459) (not d!1491495) (not d!1491477) (not bm!327971) (not b!4692724) (not bm!327955) (not bm!327970) (not d!1491469) (not b!4692899) (not d!1491355) (not d!1491505) (not b!4692805) (not b!4692859) (not b!4692737) (not b!4692759) (not bm!327980) (not b!4692707) (not b!4692519) (not b!4692548) (not d!1491377) (not b!4692714) (not d!1491449) (not d!1491497) (not bm!327977))
(check-sat)
