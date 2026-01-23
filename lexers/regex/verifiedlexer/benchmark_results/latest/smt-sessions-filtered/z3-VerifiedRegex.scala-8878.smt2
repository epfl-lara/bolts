; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474660 () Bool)

(assert start!474660)

(declare-fun b!4690999 () Bool)

(declare-fun res!1978741 () Bool)

(declare-fun e!2926515 () Bool)

(assert (=> b!4690999 (=> (not res!1978741) (not e!2926515))))

(declare-datatypes ((K!13795 0))(
  ( (K!13796 (val!19307 Int)) )
))
(declare-datatypes ((V!14041 0))(
  ( (V!14042 (val!19308 Int)) )
))
(declare-datatypes ((tuple2!53826 0))(
  ( (tuple2!53827 (_1!30207 K!13795) (_2!30207 V!14041)) )
))
(declare-datatypes ((List!52545 0))(
  ( (Nil!52421) (Cons!52421 (h!58670 tuple2!53826) (t!359725 List!52545)) )
))
(declare-fun oldBucket!34 () List!52545)

(declare-fun noDuplicateKeys!1858 (List!52545) Bool)

(assert (=> b!4690999 (= res!1978741 (noDuplicateKeys!1858 oldBucket!34))))

(declare-fun b!4691000 () Bool)

(declare-fun res!1978757 () Bool)

(assert (=> b!4691000 (=> (not res!1978757) (not e!2926515))))

(declare-fun key!4653 () K!13795)

(declare-fun newBucket!218 () List!52545)

(declare-fun removePairForKey!1453 (List!52545 K!13795) List!52545)

(assert (=> b!4691000 (= res!1978757 (= (removePairForKey!1453 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4691001 () Bool)

(declare-fun res!1978742 () Bool)

(declare-fun e!2926514 () Bool)

(assert (=> b!4691001 (=> res!1978742 e!2926514)))

(declare-fun lt!1851008 () tuple2!53826)

(declare-datatypes ((ListMap!4969 0))(
  ( (ListMap!4970 (toList!5605 List!52545)) )
))
(declare-fun lt!1851013 () ListMap!4969)

(declare-fun lt!1851026 () ListMap!4969)

(declare-fun eq!1017 (ListMap!4969 ListMap!4969) Bool)

(declare-fun +!2142 (ListMap!4969 tuple2!53826) ListMap!4969)

(assert (=> b!4691001 (= res!1978742 (not (eq!1017 lt!1851026 (+!2142 lt!1851013 lt!1851008))))))

(declare-fun b!4691002 () Bool)

(declare-fun e!2926511 () Bool)

(declare-fun e!2926516 () Bool)

(assert (=> b!4691002 (= e!2926511 e!2926516)))

(declare-fun res!1978755 () Bool)

(assert (=> b!4691002 (=> (not res!1978755) (not e!2926516))))

(declare-datatypes ((tuple2!53828 0))(
  ( (tuple2!53829 (_1!30208 (_ BitVec 64)) (_2!30208 List!52545)) )
))
(declare-datatypes ((List!52546 0))(
  ( (Nil!52422) (Cons!52422 (h!58671 tuple2!53828) (t!359726 List!52546)) )
))
(declare-datatypes ((ListLongMap!4135 0))(
  ( (ListLongMap!4136 (toList!5606 List!52546)) )
))
(declare-fun lm!2023 () ListLongMap!4135)

(declare-fun lt!1851007 () tuple2!53828)

(declare-fun head!9979 (List!52546) tuple2!53828)

(assert (=> b!4691002 (= res!1978755 (= (head!9979 (toList!5606 lm!2023)) lt!1851007))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4691002 (= lt!1851007 (tuple2!53829 hash!405 oldBucket!34))))

(declare-fun b!4691004 () Bool)

(declare-fun res!1978746 () Bool)

(assert (=> b!4691004 (=> (not res!1978746) (not e!2926515))))

(assert (=> b!4691004 (= res!1978746 (noDuplicateKeys!1858 newBucket!218))))

(declare-fun b!4691005 () Bool)

(assert (=> b!4691005 (= e!2926514 (not (= newBucket!218 Nil!52421)))))

(declare-fun b!4691006 () Bool)

(declare-fun res!1978748 () Bool)

(assert (=> b!4691006 (=> (not res!1978748) (not e!2926511))))

(declare-datatypes ((Hashable!6227 0))(
  ( (HashableExt!6226 (__x!31930 Int)) )
))
(declare-fun hashF!1323 () Hashable!6227)

(declare-fun allKeysSameHashInMap!1772 (ListLongMap!4135 Hashable!6227) Bool)

(assert (=> b!4691006 (= res!1978748 (allKeysSameHashInMap!1772 lm!2023 hashF!1323))))

(declare-fun b!4691007 () Bool)

(declare-fun e!2926508 () Bool)

(assert (=> b!4691007 (= e!2926508 e!2926514)))

(declare-fun res!1978740 () Bool)

(assert (=> b!4691007 (=> res!1978740 e!2926514)))

(assert (=> b!4691007 (= res!1978740 (not (eq!1017 lt!1851026 (+!2142 lt!1851013 (h!58670 oldBucket!34)))))))

(declare-fun lt!1851025 () List!52545)

(declare-fun extractMap!1884 (List!52546) ListMap!4969)

(assert (=> b!4691007 (= lt!1851013 (extractMap!1884 (Cons!52422 (tuple2!53829 hash!405 lt!1851025) (t!359726 (toList!5606 lm!2023)))))))

(assert (=> b!4691007 (= lt!1851026 (extractMap!1884 (Cons!52422 lt!1851007 (t!359726 (toList!5606 lm!2023)))))))

(declare-fun lt!1851023 () List!52545)

(declare-fun lt!1851016 () ListMap!4969)

(declare-fun addToMapMapFromBucket!1290 (List!52545 ListMap!4969) ListMap!4969)

(assert (=> b!4691007 (eq!1017 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851008 lt!1851023) lt!1851016) (+!2142 (addToMapMapFromBucket!1290 lt!1851023 lt!1851016) lt!1851008))))

(declare-datatypes ((Unit!124273 0))(
  ( (Unit!124274) )
))
(declare-fun lt!1851017 () Unit!124273)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!266 (tuple2!53826 List!52545 ListMap!4969) Unit!124273)

(assert (=> b!4691007 (= lt!1851017 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!266 lt!1851008 lt!1851023 lt!1851016))))

(declare-fun head!9980 (List!52545) tuple2!53826)

(assert (=> b!4691007 (= lt!1851008 (head!9980 newBucket!218))))

(declare-fun lt!1851020 () tuple2!53826)

(assert (=> b!4691007 (eq!1017 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851020 lt!1851025) lt!1851016) (+!2142 (addToMapMapFromBucket!1290 lt!1851025 lt!1851016) lt!1851020))))

(declare-fun lt!1851021 () Unit!124273)

(assert (=> b!4691007 (= lt!1851021 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!266 lt!1851020 lt!1851025 lt!1851016))))

(assert (=> b!4691007 (= lt!1851020 (head!9980 oldBucket!34))))

(declare-fun lt!1851015 () List!52546)

(declare-fun contains!15628 (ListMap!4969 K!13795) Bool)

(assert (=> b!4691007 (contains!15628 (extractMap!1884 lt!1851015) key!4653)))

(declare-fun lt!1851018 () Unit!124273)

(declare-fun lemmaListContainsThenExtractedMapContains!450 (ListLongMap!4135 K!13795 Hashable!6227) Unit!124273)

(assert (=> b!4691007 (= lt!1851018 (lemmaListContainsThenExtractedMapContains!450 (ListLongMap!4136 lt!1851015) key!4653 hashF!1323))))

(assert (=> b!4691007 (= lt!1851015 (Cons!52422 (tuple2!53829 hash!405 (t!359725 oldBucket!34)) (t!359726 (toList!5606 lm!2023))))))

(declare-fun b!4691008 () Bool)

(declare-fun e!2926518 () Bool)

(declare-fun tp_is_empty!30725 () Bool)

(declare-fun tp_is_empty!30727 () Bool)

(declare-fun tp!1345991 () Bool)

(assert (=> b!4691008 (= e!2926518 (and tp_is_empty!30725 tp_is_empty!30727 tp!1345991))))

(declare-fun b!4691009 () Bool)

(declare-fun e!2926509 () Bool)

(assert (=> b!4691009 (= e!2926515 e!2926509)))

(declare-fun res!1978745 () Bool)

(assert (=> b!4691009 (=> (not res!1978745) (not e!2926509))))

(declare-fun lt!1851014 () ListMap!4969)

(assert (=> b!4691009 (= res!1978745 (contains!15628 lt!1851014 key!4653))))

(assert (=> b!4691009 (= lt!1851014 (extractMap!1884 (toList!5606 lm!2023)))))

(declare-fun b!4691010 () Bool)

(declare-fun e!2926517 () Bool)

(declare-fun tp!1345992 () Bool)

(assert (=> b!4691010 (= e!2926517 (and tp_is_empty!30725 tp_is_empty!30727 tp!1345992))))

(declare-fun b!4691011 () Bool)

(declare-fun res!1978752 () Bool)

(assert (=> b!4691011 (=> (not res!1978752) (not e!2926515))))

(declare-fun allKeysSameHash!1684 (List!52545 (_ BitVec 64) Hashable!6227) Bool)

(assert (=> b!4691011 (= res!1978752 (allKeysSameHash!1684 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4691012 () Bool)

(assert (=> b!4691012 (= e!2926509 e!2926511)))

(declare-fun res!1978756 () Bool)

(assert (=> b!4691012 (=> (not res!1978756) (not e!2926511))))

(declare-fun lt!1851012 () (_ BitVec 64))

(assert (=> b!4691012 (= res!1978756 (= lt!1851012 hash!405))))

(declare-fun hash!4073 (Hashable!6227 K!13795) (_ BitVec 64))

(assert (=> b!4691012 (= lt!1851012 (hash!4073 hashF!1323 key!4653))))

(declare-fun b!4691013 () Bool)

(declare-fun res!1978754 () Bool)

(assert (=> b!4691013 (=> (not res!1978754) (not e!2926511))))

(assert (=> b!4691013 (= res!1978754 (allKeysSameHash!1684 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4691014 () Bool)

(declare-fun res!1978753 () Bool)

(assert (=> b!4691014 (=> res!1978753 e!2926514)))

(assert (=> b!4691014 (= res!1978753 (not (= (h!58670 oldBucket!34) lt!1851008)))))

(declare-fun b!4691003 () Bool)

(declare-fun res!1978751 () Bool)

(assert (=> b!4691003 (=> (not res!1978751) (not e!2926516))))

(get-info :version)

(assert (=> b!4691003 (= res!1978751 ((_ is Cons!52422) (toList!5606 lm!2023)))))

(declare-fun res!1978749 () Bool)

(assert (=> start!474660 (=> (not res!1978749) (not e!2926515))))

(declare-fun lambda!207427 () Int)

(declare-fun forall!11329 (List!52546 Int) Bool)

(assert (=> start!474660 (= res!1978749 (forall!11329 (toList!5606 lm!2023) lambda!207427))))

(assert (=> start!474660 e!2926515))

(declare-fun e!2926510 () Bool)

(declare-fun inv!67669 (ListLongMap!4135) Bool)

(assert (=> start!474660 (and (inv!67669 lm!2023) e!2926510)))

(assert (=> start!474660 tp_is_empty!30725))

(assert (=> start!474660 e!2926518))

(assert (=> start!474660 true))

(assert (=> start!474660 e!2926517))

(declare-fun b!4691015 () Bool)

(declare-fun e!2926513 () Bool)

(assert (=> b!4691015 (= e!2926516 (not e!2926513))))

(declare-fun res!1978744 () Bool)

(assert (=> b!4691015 (=> res!1978744 e!2926513)))

(assert (=> b!4691015 (= res!1978744 (or (and ((_ is Cons!52421) oldBucket!34) (= (_1!30207 (h!58670 oldBucket!34)) key!4653)) (not ((_ is Cons!52421) oldBucket!34)) (= (_1!30207 (h!58670 oldBucket!34)) key!4653)))))

(assert (=> b!4691015 (= lt!1851014 (addToMapMapFromBucket!1290 (_2!30208 (h!58671 (toList!5606 lm!2023))) lt!1851016))))

(assert (=> b!4691015 (= lt!1851016 (extractMap!1884 (t!359726 (toList!5606 lm!2023))))))

(declare-fun tail!8602 (ListLongMap!4135) ListLongMap!4135)

(assert (=> b!4691015 (= (t!359726 (toList!5606 lm!2023)) (toList!5606 (tail!8602 lm!2023)))))

(declare-fun b!4691016 () Bool)

(declare-fun e!2926512 () Bool)

(assert (=> b!4691016 (= e!2926513 e!2926512)))

(declare-fun res!1978747 () Bool)

(assert (=> b!4691016 (=> res!1978747 e!2926512)))

(declare-fun containsKey!3065 (List!52545 K!13795) Bool)

(assert (=> b!4691016 (= res!1978747 (not (containsKey!3065 (t!359725 oldBucket!34) key!4653)))))

(assert (=> b!4691016 (containsKey!3065 oldBucket!34 key!4653)))

(declare-fun lt!1851024 () Unit!124273)

(declare-fun lemmaGetPairDefinedThenContainsKey!210 (List!52545 K!13795 Hashable!6227) Unit!124273)

(assert (=> b!4691016 (= lt!1851024 (lemmaGetPairDefinedThenContainsKey!210 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1851019 () List!52545)

(declare-datatypes ((Option!12089 0))(
  ( (None!12088) (Some!12088 (v!46511 tuple2!53826)) )
))
(declare-fun isDefined!9344 (Option!12089) Bool)

(declare-fun getPair!462 (List!52545 K!13795) Option!12089)

(assert (=> b!4691016 (isDefined!9344 (getPair!462 lt!1851019 key!4653))))

(declare-fun lt!1851022 () tuple2!53828)

(declare-fun lt!1851010 () Unit!124273)

(declare-fun forallContained!3436 (List!52546 Int tuple2!53828) Unit!124273)

(assert (=> b!4691016 (= lt!1851010 (forallContained!3436 (toList!5606 lm!2023) lambda!207427 lt!1851022))))

(declare-fun contains!15629 (List!52546 tuple2!53828) Bool)

(assert (=> b!4691016 (contains!15629 (toList!5606 lm!2023) lt!1851022)))

(assert (=> b!4691016 (= lt!1851022 (tuple2!53829 lt!1851012 lt!1851019))))

(declare-fun lt!1851006 () Unit!124273)

(declare-fun lemmaGetValueImpliesTupleContained!267 (ListLongMap!4135 (_ BitVec 64) List!52545) Unit!124273)

(assert (=> b!4691016 (= lt!1851006 (lemmaGetValueImpliesTupleContained!267 lm!2023 lt!1851012 lt!1851019))))

(declare-fun apply!12341 (ListLongMap!4135 (_ BitVec 64)) List!52545)

(assert (=> b!4691016 (= lt!1851019 (apply!12341 lm!2023 lt!1851012))))

(declare-fun contains!15630 (ListLongMap!4135 (_ BitVec 64)) Bool)

(assert (=> b!4691016 (contains!15630 lm!2023 lt!1851012)))

(declare-fun lt!1851011 () Unit!124273)

(declare-fun lemmaInGenMapThenLongMapContainsHash!668 (ListLongMap!4135 K!13795 Hashable!6227) Unit!124273)

(assert (=> b!4691016 (= lt!1851011 (lemmaInGenMapThenLongMapContainsHash!668 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1851009 () Unit!124273)

(declare-fun lemmaInGenMapThenGetPairDefined!258 (ListLongMap!4135 K!13795 Hashable!6227) Unit!124273)

(assert (=> b!4691016 (= lt!1851009 (lemmaInGenMapThenGetPairDefined!258 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4691017 () Bool)

(declare-fun res!1978743 () Bool)

(assert (=> b!4691017 (=> res!1978743 e!2926508)))

(assert (=> b!4691017 (= res!1978743 (not (= (removePairForKey!1453 (t!359725 oldBucket!34) key!4653) lt!1851023)))))

(declare-fun b!4691018 () Bool)

(assert (=> b!4691018 (= e!2926512 e!2926508)))

(declare-fun res!1978750 () Bool)

(assert (=> b!4691018 (=> res!1978750 e!2926508)))

(assert (=> b!4691018 (= res!1978750 (not (= (removePairForKey!1453 lt!1851025 key!4653) lt!1851023)))))

(declare-fun tail!8603 (List!52545) List!52545)

(assert (=> b!4691018 (= lt!1851023 (tail!8603 newBucket!218))))

(assert (=> b!4691018 (= lt!1851025 (tail!8603 oldBucket!34))))

(declare-fun b!4691019 () Bool)

(declare-fun tp!1345993 () Bool)

(assert (=> b!4691019 (= e!2926510 tp!1345993)))

(assert (= (and start!474660 res!1978749) b!4690999))

(assert (= (and b!4690999 res!1978741) b!4691004))

(assert (= (and b!4691004 res!1978746) b!4691000))

(assert (= (and b!4691000 res!1978757) b!4691011))

(assert (= (and b!4691011 res!1978752) b!4691009))

(assert (= (and b!4691009 res!1978745) b!4691012))

(assert (= (and b!4691012 res!1978756) b!4691013))

(assert (= (and b!4691013 res!1978754) b!4691006))

(assert (= (and b!4691006 res!1978748) b!4691002))

(assert (= (and b!4691002 res!1978755) b!4691003))

(assert (= (and b!4691003 res!1978751) b!4691015))

(assert (= (and b!4691015 (not res!1978744)) b!4691016))

(assert (= (and b!4691016 (not res!1978747)) b!4691018))

(assert (= (and b!4691018 (not res!1978750)) b!4691017))

(assert (= (and b!4691017 (not res!1978743)) b!4691007))

(assert (= (and b!4691007 (not res!1978740)) b!4691014))

(assert (= (and b!4691014 (not res!1978753)) b!4691001))

(assert (= (and b!4691001 (not res!1978742)) b!4691005))

(assert (= start!474660 b!4691019))

(assert (= (and start!474660 ((_ is Cons!52421) oldBucket!34)) b!4691008))

(assert (= (and start!474660 ((_ is Cons!52421) newBucket!218)) b!4691010))

(declare-fun m!5594019 () Bool)

(assert (=> b!4691007 m!5594019))

(declare-fun m!5594021 () Bool)

(assert (=> b!4691007 m!5594021))

(declare-fun m!5594023 () Bool)

(assert (=> b!4691007 m!5594023))

(declare-fun m!5594025 () Bool)

(assert (=> b!4691007 m!5594025))

(declare-fun m!5594027 () Bool)

(assert (=> b!4691007 m!5594027))

(assert (=> b!4691007 m!5594019))

(declare-fun m!5594029 () Bool)

(assert (=> b!4691007 m!5594029))

(declare-fun m!5594031 () Bool)

(assert (=> b!4691007 m!5594031))

(declare-fun m!5594033 () Bool)

(assert (=> b!4691007 m!5594033))

(assert (=> b!4691007 m!5594023))

(declare-fun m!5594035 () Bool)

(assert (=> b!4691007 m!5594035))

(declare-fun m!5594037 () Bool)

(assert (=> b!4691007 m!5594037))

(declare-fun m!5594039 () Bool)

(assert (=> b!4691007 m!5594039))

(assert (=> b!4691007 m!5594031))

(assert (=> b!4691007 m!5594025))

(declare-fun m!5594041 () Bool)

(assert (=> b!4691007 m!5594041))

(assert (=> b!4691007 m!5594033))

(assert (=> b!4691007 m!5594037))

(declare-fun m!5594043 () Bool)

(assert (=> b!4691007 m!5594043))

(declare-fun m!5594045 () Bool)

(assert (=> b!4691007 m!5594045))

(assert (=> b!4691007 m!5594029))

(declare-fun m!5594047 () Bool)

(assert (=> b!4691007 m!5594047))

(declare-fun m!5594049 () Bool)

(assert (=> b!4691007 m!5594049))

(declare-fun m!5594051 () Bool)

(assert (=> b!4691007 m!5594051))

(declare-fun m!5594053 () Bool)

(assert (=> b!4691007 m!5594053))

(declare-fun m!5594055 () Bool)

(assert (=> b!4691007 m!5594055))

(assert (=> b!4691007 m!5594035))

(declare-fun m!5594057 () Bool)

(assert (=> b!4691017 m!5594057))

(declare-fun m!5594059 () Bool)

(assert (=> b!4691006 m!5594059))

(declare-fun m!5594061 () Bool)

(assert (=> b!4691001 m!5594061))

(assert (=> b!4691001 m!5594061))

(declare-fun m!5594063 () Bool)

(assert (=> b!4691001 m!5594063))

(declare-fun m!5594065 () Bool)

(assert (=> start!474660 m!5594065))

(declare-fun m!5594067 () Bool)

(assert (=> start!474660 m!5594067))

(declare-fun m!5594069 () Bool)

(assert (=> b!4691002 m!5594069))

(declare-fun m!5594071 () Bool)

(assert (=> b!4691011 m!5594071))

(declare-fun m!5594073 () Bool)

(assert (=> b!4691009 m!5594073))

(declare-fun m!5594075 () Bool)

(assert (=> b!4691009 m!5594075))

(declare-fun m!5594077 () Bool)

(assert (=> b!4691013 m!5594077))

(declare-fun m!5594079 () Bool)

(assert (=> b!4690999 m!5594079))

(declare-fun m!5594081 () Bool)

(assert (=> b!4691018 m!5594081))

(declare-fun m!5594083 () Bool)

(assert (=> b!4691018 m!5594083))

(declare-fun m!5594085 () Bool)

(assert (=> b!4691018 m!5594085))

(declare-fun m!5594087 () Bool)

(assert (=> b!4691016 m!5594087))

(declare-fun m!5594089 () Bool)

(assert (=> b!4691016 m!5594089))

(declare-fun m!5594091 () Bool)

(assert (=> b!4691016 m!5594091))

(declare-fun m!5594093 () Bool)

(assert (=> b!4691016 m!5594093))

(declare-fun m!5594095 () Bool)

(assert (=> b!4691016 m!5594095))

(declare-fun m!5594097 () Bool)

(assert (=> b!4691016 m!5594097))

(declare-fun m!5594099 () Bool)

(assert (=> b!4691016 m!5594099))

(declare-fun m!5594101 () Bool)

(assert (=> b!4691016 m!5594101))

(declare-fun m!5594103 () Bool)

(assert (=> b!4691016 m!5594103))

(declare-fun m!5594105 () Bool)

(assert (=> b!4691016 m!5594105))

(declare-fun m!5594107 () Bool)

(assert (=> b!4691016 m!5594107))

(assert (=> b!4691016 m!5594101))

(declare-fun m!5594109 () Bool)

(assert (=> b!4691016 m!5594109))

(declare-fun m!5594111 () Bool)

(assert (=> b!4691015 m!5594111))

(declare-fun m!5594113 () Bool)

(assert (=> b!4691015 m!5594113))

(declare-fun m!5594115 () Bool)

(assert (=> b!4691015 m!5594115))

(declare-fun m!5594117 () Bool)

(assert (=> b!4691004 m!5594117))

(declare-fun m!5594119 () Bool)

(assert (=> b!4691000 m!5594119))

(declare-fun m!5594121 () Bool)

(assert (=> b!4691012 m!5594121))

(check-sat (not b!4691006) (not b!4691002) (not b!4691013) (not b!4691019) (not b!4691018) (not start!474660) (not b!4691011) (not b!4691009) (not b!4691007) tp_is_empty!30725 (not b!4691015) (not b!4691017) (not b!4691008) (not b!4691004) (not b!4691000) tp_is_empty!30727 (not b!4691001) (not b!4691016) (not b!4690999) (not b!4691012) (not b!4691010))
(check-sat)
(get-model)

(declare-fun d!1490893 () Bool)

(assert (=> d!1490893 true))

(assert (=> d!1490893 true))

(declare-fun lambda!207433 () Int)

(declare-fun forall!11331 (List!52545 Int) Bool)

(assert (=> d!1490893 (= (allKeysSameHash!1684 oldBucket!34 hash!405 hashF!1323) (forall!11331 oldBucket!34 lambda!207433))))

(declare-fun bs!1087338 () Bool)

(assert (= bs!1087338 d!1490893))

(declare-fun m!5594127 () Bool)

(assert (=> bs!1087338 m!5594127))

(assert (=> b!4691011 d!1490893))

(declare-fun b!4691047 () Bool)

(declare-fun e!2926529 () List!52545)

(declare-fun e!2926530 () List!52545)

(assert (=> b!4691047 (= e!2926529 e!2926530)))

(declare-fun c!802063 () Bool)

(assert (=> b!4691047 (= c!802063 ((_ is Cons!52421) oldBucket!34))))

(declare-fun d!1490899 () Bool)

(declare-fun lt!1851032 () List!52545)

(assert (=> d!1490899 (not (containsKey!3065 lt!1851032 key!4653))))

(assert (=> d!1490899 (= lt!1851032 e!2926529)))

(declare-fun c!802062 () Bool)

(assert (=> d!1490899 (= c!802062 (and ((_ is Cons!52421) oldBucket!34) (= (_1!30207 (h!58670 oldBucket!34)) key!4653)))))

(assert (=> d!1490899 (noDuplicateKeys!1858 oldBucket!34)))

(assert (=> d!1490899 (= (removePairForKey!1453 oldBucket!34 key!4653) lt!1851032)))

(declare-fun b!4691049 () Bool)

(assert (=> b!4691049 (= e!2926530 Nil!52421)))

(declare-fun b!4691048 () Bool)

(assert (=> b!4691048 (= e!2926530 (Cons!52421 (h!58670 oldBucket!34) (removePairForKey!1453 (t!359725 oldBucket!34) key!4653)))))

(declare-fun b!4691046 () Bool)

(assert (=> b!4691046 (= e!2926529 (t!359725 oldBucket!34))))

(assert (= (and d!1490899 c!802062) b!4691046))

(assert (= (and d!1490899 (not c!802062)) b!4691047))

(assert (= (and b!4691047 c!802063) b!4691048))

(assert (= (and b!4691047 (not c!802063)) b!4691049))

(declare-fun m!5594133 () Bool)

(assert (=> d!1490899 m!5594133))

(assert (=> d!1490899 m!5594079))

(assert (=> b!4691048 m!5594057))

(assert (=> b!4691000 d!1490899))

(declare-fun d!1490903 () Bool)

(declare-fun res!1978762 () Bool)

(declare-fun e!2926538 () Bool)

(assert (=> d!1490903 (=> res!1978762 e!2926538)))

(assert (=> d!1490903 (= res!1978762 (not ((_ is Cons!52421) oldBucket!34)))))

(assert (=> d!1490903 (= (noDuplicateKeys!1858 oldBucket!34) e!2926538)))

(declare-fun b!4691060 () Bool)

(declare-fun e!2926539 () Bool)

(assert (=> b!4691060 (= e!2926538 e!2926539)))

(declare-fun res!1978763 () Bool)

(assert (=> b!4691060 (=> (not res!1978763) (not e!2926539))))

(assert (=> b!4691060 (= res!1978763 (not (containsKey!3065 (t!359725 oldBucket!34) (_1!30207 (h!58670 oldBucket!34)))))))

(declare-fun b!4691061 () Bool)

(assert (=> b!4691061 (= e!2926539 (noDuplicateKeys!1858 (t!359725 oldBucket!34)))))

(assert (= (and d!1490903 (not res!1978762)) b!4691060))

(assert (= (and b!4691060 res!1978763) b!4691061))

(declare-fun m!5594143 () Bool)

(assert (=> b!4691060 m!5594143))

(declare-fun m!5594145 () Bool)

(assert (=> b!4691061 m!5594145))

(assert (=> b!4690999 d!1490903))

(declare-fun d!1490907 () Bool)

(declare-fun e!2926557 () Bool)

(assert (=> d!1490907 e!2926557))

(declare-fun res!1978776 () Bool)

(assert (=> d!1490907 (=> res!1978776 e!2926557)))

(declare-fun e!2926559 () Bool)

(assert (=> d!1490907 (= res!1978776 e!2926559)))

(declare-fun res!1978777 () Bool)

(assert (=> d!1490907 (=> (not res!1978777) (not e!2926559))))

(declare-fun lt!1851065 () Bool)

(assert (=> d!1490907 (= res!1978777 (not lt!1851065))))

(declare-fun lt!1851070 () Bool)

(assert (=> d!1490907 (= lt!1851065 lt!1851070)))

(declare-fun lt!1851068 () Unit!124273)

(declare-fun e!2926555 () Unit!124273)

(assert (=> d!1490907 (= lt!1851068 e!2926555)))

(declare-fun c!802074 () Bool)

(assert (=> d!1490907 (= c!802074 lt!1851070)))

(declare-fun containsKey!3067 (List!52545 K!13795) Bool)

(assert (=> d!1490907 (= lt!1851070 (containsKey!3067 (toList!5605 lt!1851014) key!4653))))

(assert (=> d!1490907 (= (contains!15628 lt!1851014 key!4653) lt!1851065)))

(declare-fun b!4691086 () Bool)

(declare-datatypes ((List!52548 0))(
  ( (Nil!52424) (Cons!52424 (h!58675 K!13795) (t!359730 List!52548)) )
))
(declare-fun contains!15633 (List!52548 K!13795) Bool)

(declare-fun keys!18721 (ListMap!4969) List!52548)

(assert (=> b!4691086 (= e!2926559 (not (contains!15633 (keys!18721 lt!1851014) key!4653)))))

(declare-fun b!4691087 () Bool)

(declare-fun e!2926556 () Unit!124273)

(assert (=> b!4691087 (= e!2926555 e!2926556)))

(declare-fun c!802075 () Bool)

(declare-fun call!327860 () Bool)

(assert (=> b!4691087 (= c!802075 call!327860)))

(declare-fun b!4691088 () Bool)

(declare-fun e!2926558 () Bool)

(assert (=> b!4691088 (= e!2926557 e!2926558)))

(declare-fun res!1978778 () Bool)

(assert (=> b!4691088 (=> (not res!1978778) (not e!2926558))))

(declare-datatypes ((Option!12091 0))(
  ( (None!12090) (Some!12090 (v!46517 V!14041)) )
))
(declare-fun isDefined!9346 (Option!12091) Bool)

(declare-fun getValueByKey!1787 (List!52545 K!13795) Option!12091)

(assert (=> b!4691088 (= res!1978778 (isDefined!9346 (getValueByKey!1787 (toList!5605 lt!1851014) key!4653)))))

(declare-fun bm!327855 () Bool)

(declare-fun e!2926560 () List!52548)

(assert (=> bm!327855 (= call!327860 (contains!15633 e!2926560 key!4653))))

(declare-fun c!802073 () Bool)

(assert (=> bm!327855 (= c!802073 c!802074)))

(declare-fun b!4691089 () Bool)

(assert (=> b!4691089 false))

(declare-fun lt!1851071 () Unit!124273)

(declare-fun lt!1851069 () Unit!124273)

(assert (=> b!4691089 (= lt!1851071 lt!1851069)))

(assert (=> b!4691089 (containsKey!3067 (toList!5605 lt!1851014) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!853 (List!52545 K!13795) Unit!124273)

(assert (=> b!4691089 (= lt!1851069 (lemmaInGetKeysListThenContainsKey!853 (toList!5605 lt!1851014) key!4653))))

(declare-fun Unit!124299 () Unit!124273)

(assert (=> b!4691089 (= e!2926556 Unit!124299)))

(declare-fun b!4691090 () Bool)

(declare-fun Unit!124300 () Unit!124273)

(assert (=> b!4691090 (= e!2926556 Unit!124300)))

(declare-fun b!4691091 () Bool)

(declare-fun lt!1851064 () Unit!124273)

(assert (=> b!4691091 (= e!2926555 lt!1851064)))

(declare-fun lt!1851066 () Unit!124273)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1679 (List!52545 K!13795) Unit!124273)

(assert (=> b!4691091 (= lt!1851066 (lemmaContainsKeyImpliesGetValueByKeyDefined!1679 (toList!5605 lt!1851014) key!4653))))

(assert (=> b!4691091 (isDefined!9346 (getValueByKey!1787 (toList!5605 lt!1851014) key!4653))))

(declare-fun lt!1851067 () Unit!124273)

(assert (=> b!4691091 (= lt!1851067 lt!1851066)))

(declare-fun lemmaInListThenGetKeysListContains!849 (List!52545 K!13795) Unit!124273)

(assert (=> b!4691091 (= lt!1851064 (lemmaInListThenGetKeysListContains!849 (toList!5605 lt!1851014) key!4653))))

(assert (=> b!4691091 call!327860))

(declare-fun b!4691092 () Bool)

(assert (=> b!4691092 (= e!2926560 (keys!18721 lt!1851014))))

(declare-fun b!4691093 () Bool)

(declare-fun getKeysList!854 (List!52545) List!52548)

(assert (=> b!4691093 (= e!2926560 (getKeysList!854 (toList!5605 lt!1851014)))))

(declare-fun b!4691094 () Bool)

(assert (=> b!4691094 (= e!2926558 (contains!15633 (keys!18721 lt!1851014) key!4653))))

(assert (= (and d!1490907 c!802074) b!4691091))

(assert (= (and d!1490907 (not c!802074)) b!4691087))

(assert (= (and b!4691087 c!802075) b!4691089))

(assert (= (and b!4691087 (not c!802075)) b!4691090))

(assert (= (or b!4691091 b!4691087) bm!327855))

(assert (= (and bm!327855 c!802073) b!4691093))

(assert (= (and bm!327855 (not c!802073)) b!4691092))

(assert (= (and d!1490907 res!1978777) b!4691086))

(assert (= (and d!1490907 (not res!1978776)) b!4691088))

(assert (= (and b!4691088 res!1978778) b!4691094))

(declare-fun m!5594159 () Bool)

(assert (=> d!1490907 m!5594159))

(declare-fun m!5594161 () Bool)

(assert (=> b!4691086 m!5594161))

(assert (=> b!4691086 m!5594161))

(declare-fun m!5594163 () Bool)

(assert (=> b!4691086 m!5594163))

(declare-fun m!5594165 () Bool)

(assert (=> b!4691088 m!5594165))

(assert (=> b!4691088 m!5594165))

(declare-fun m!5594167 () Bool)

(assert (=> b!4691088 m!5594167))

(declare-fun m!5594169 () Bool)

(assert (=> b!4691091 m!5594169))

(assert (=> b!4691091 m!5594165))

(assert (=> b!4691091 m!5594165))

(assert (=> b!4691091 m!5594167))

(declare-fun m!5594171 () Bool)

(assert (=> b!4691091 m!5594171))

(assert (=> b!4691092 m!5594161))

(declare-fun m!5594173 () Bool)

(assert (=> bm!327855 m!5594173))

(assert (=> b!4691094 m!5594161))

(assert (=> b!4691094 m!5594161))

(assert (=> b!4691094 m!5594163))

(assert (=> b!4691089 m!5594159))

(declare-fun m!5594175 () Bool)

(assert (=> b!4691089 m!5594175))

(declare-fun m!5594177 () Bool)

(assert (=> b!4691093 m!5594177))

(assert (=> b!4691009 d!1490907))

(declare-fun bs!1087342 () Bool)

(declare-fun d!1490911 () Bool)

(assert (= bs!1087342 (and d!1490911 start!474660)))

(declare-fun lambda!207439 () Int)

(assert (=> bs!1087342 (= lambda!207439 lambda!207427)))

(declare-fun lt!1851074 () ListMap!4969)

(declare-fun invariantList!1414 (List!52545) Bool)

(assert (=> d!1490911 (invariantList!1414 (toList!5605 lt!1851074))))

(declare-fun e!2926563 () ListMap!4969)

(assert (=> d!1490911 (= lt!1851074 e!2926563)))

(declare-fun c!802078 () Bool)

(assert (=> d!1490911 (= c!802078 ((_ is Cons!52422) (toList!5606 lm!2023)))))

(assert (=> d!1490911 (forall!11329 (toList!5606 lm!2023) lambda!207439)))

(assert (=> d!1490911 (= (extractMap!1884 (toList!5606 lm!2023)) lt!1851074)))

(declare-fun b!4691099 () Bool)

(assert (=> b!4691099 (= e!2926563 (addToMapMapFromBucket!1290 (_2!30208 (h!58671 (toList!5606 lm!2023))) (extractMap!1884 (t!359726 (toList!5606 lm!2023)))))))

(declare-fun b!4691100 () Bool)

(assert (=> b!4691100 (= e!2926563 (ListMap!4970 Nil!52421))))

(assert (= (and d!1490911 c!802078) b!4691099))

(assert (= (and d!1490911 (not c!802078)) b!4691100))

(declare-fun m!5594179 () Bool)

(assert (=> d!1490911 m!5594179))

(declare-fun m!5594181 () Bool)

(assert (=> d!1490911 m!5594181))

(assert (=> b!4691099 m!5594113))

(assert (=> b!4691099 m!5594113))

(declare-fun m!5594183 () Bool)

(assert (=> b!4691099 m!5594183))

(assert (=> b!4691009 d!1490911))

(declare-fun bs!1087343 () Bool)

(declare-fun d!1490913 () Bool)

(assert (= bs!1087343 (and d!1490913 d!1490893)))

(declare-fun lambda!207440 () Int)

(assert (=> bs!1087343 (= lambda!207440 lambda!207433)))

(assert (=> d!1490913 true))

(assert (=> d!1490913 true))

(assert (=> d!1490913 (= (allKeysSameHash!1684 newBucket!218 hash!405 hashF!1323) (forall!11331 newBucket!218 lambda!207440))))

(declare-fun bs!1087344 () Bool)

(assert (= bs!1087344 d!1490913))

(declare-fun m!5594185 () Bool)

(assert (=> bs!1087344 m!5594185))

(assert (=> b!4691013 d!1490913))

(declare-fun d!1490915 () Bool)

(assert (=> d!1490915 (= (head!9979 (toList!5606 lm!2023)) (h!58671 (toList!5606 lm!2023)))))

(assert (=> b!4691002 d!1490915))

(declare-fun d!1490917 () Bool)

(declare-fun hash!4074 (Hashable!6227 K!13795) (_ BitVec 64))

(assert (=> d!1490917 (= (hash!4073 hashF!1323 key!4653) (hash!4074 hashF!1323 key!4653))))

(declare-fun bs!1087345 () Bool)

(assert (= bs!1087345 d!1490917))

(declare-fun m!5594187 () Bool)

(assert (=> bs!1087345 m!5594187))

(assert (=> b!4691012 d!1490917))

(declare-fun d!1490919 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9172 (List!52545) (InoxSet tuple2!53826))

(assert (=> d!1490919 (= (eq!1017 lt!1851026 (+!2142 lt!1851013 lt!1851008)) (= (content!9172 (toList!5605 lt!1851026)) (content!9172 (toList!5605 (+!2142 lt!1851013 lt!1851008)))))))

(declare-fun bs!1087346 () Bool)

(assert (= bs!1087346 d!1490919))

(declare-fun m!5594189 () Bool)

(assert (=> bs!1087346 m!5594189))

(declare-fun m!5594191 () Bool)

(assert (=> bs!1087346 m!5594191))

(assert (=> b!4691001 d!1490919))

(declare-fun d!1490921 () Bool)

(declare-fun e!2926570 () Bool)

(assert (=> d!1490921 e!2926570))

(declare-fun res!1978786 () Bool)

(assert (=> d!1490921 (=> (not res!1978786) (not e!2926570))))

(declare-fun lt!1851126 () ListMap!4969)

(assert (=> d!1490921 (= res!1978786 (contains!15628 lt!1851126 (_1!30207 lt!1851008)))))

(declare-fun lt!1851128 () List!52545)

(assert (=> d!1490921 (= lt!1851126 (ListMap!4970 lt!1851128))))

(declare-fun lt!1851125 () Unit!124273)

(declare-fun lt!1851127 () Unit!124273)

(assert (=> d!1490921 (= lt!1851125 lt!1851127)))

(assert (=> d!1490921 (= (getValueByKey!1787 lt!1851128 (_1!30207 lt!1851008)) (Some!12090 (_2!30207 lt!1851008)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1004 (List!52545 K!13795 V!14041) Unit!124273)

(assert (=> d!1490921 (= lt!1851127 (lemmaContainsTupThenGetReturnValue!1004 lt!1851128 (_1!30207 lt!1851008) (_2!30207 lt!1851008)))))

(declare-fun insertNoDuplicatedKeys!512 (List!52545 K!13795 V!14041) List!52545)

(assert (=> d!1490921 (= lt!1851128 (insertNoDuplicatedKeys!512 (toList!5605 lt!1851013) (_1!30207 lt!1851008) (_2!30207 lt!1851008)))))

(assert (=> d!1490921 (= (+!2142 lt!1851013 lt!1851008) lt!1851126)))

(declare-fun b!4691111 () Bool)

(declare-fun res!1978785 () Bool)

(assert (=> b!4691111 (=> (not res!1978785) (not e!2926570))))

(assert (=> b!4691111 (= res!1978785 (= (getValueByKey!1787 (toList!5605 lt!1851126) (_1!30207 lt!1851008)) (Some!12090 (_2!30207 lt!1851008))))))

(declare-fun b!4691112 () Bool)

(declare-fun contains!15634 (List!52545 tuple2!53826) Bool)

(assert (=> b!4691112 (= e!2926570 (contains!15634 (toList!5605 lt!1851126) lt!1851008))))

(assert (= (and d!1490921 res!1978786) b!4691111))

(assert (= (and b!4691111 res!1978785) b!4691112))

(declare-fun m!5594193 () Bool)

(assert (=> d!1490921 m!5594193))

(declare-fun m!5594195 () Bool)

(assert (=> d!1490921 m!5594195))

(declare-fun m!5594197 () Bool)

(assert (=> d!1490921 m!5594197))

(declare-fun m!5594199 () Bool)

(assert (=> d!1490921 m!5594199))

(declare-fun m!5594201 () Bool)

(assert (=> b!4691111 m!5594201))

(declare-fun m!5594203 () Bool)

(assert (=> b!4691112 m!5594203))

(assert (=> b!4691001 d!1490921))

(declare-fun d!1490923 () Bool)

(declare-fun e!2926584 () Bool)

(assert (=> d!1490923 e!2926584))

(declare-fun res!1978799 () Bool)

(assert (=> d!1490923 (=> res!1978799 e!2926584)))

(declare-fun lt!1851182 () Bool)

(assert (=> d!1490923 (= res!1978799 (not lt!1851182))))

(declare-fun lt!1851179 () Bool)

(assert (=> d!1490923 (= lt!1851182 lt!1851179)))

(declare-fun lt!1851180 () Unit!124273)

(declare-fun e!2926583 () Unit!124273)

(assert (=> d!1490923 (= lt!1851180 e!2926583)))

(declare-fun c!802085 () Bool)

(assert (=> d!1490923 (= c!802085 lt!1851179)))

(declare-fun containsKey!3068 (List!52546 (_ BitVec 64)) Bool)

(assert (=> d!1490923 (= lt!1851179 (containsKey!3068 (toList!5606 lm!2023) lt!1851012))))

(assert (=> d!1490923 (= (contains!15630 lm!2023 lt!1851012) lt!1851182)))

(declare-fun b!4691135 () Bool)

(declare-fun lt!1851181 () Unit!124273)

(assert (=> b!4691135 (= e!2926583 lt!1851181)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1680 (List!52546 (_ BitVec 64)) Unit!124273)

(assert (=> b!4691135 (= lt!1851181 (lemmaContainsKeyImpliesGetValueByKeyDefined!1680 (toList!5606 lm!2023) lt!1851012))))

(declare-datatypes ((Option!12092 0))(
  ( (None!12091) (Some!12091 (v!46518 List!52545)) )
))
(declare-fun isDefined!9347 (Option!12092) Bool)

(declare-fun getValueByKey!1788 (List!52546 (_ BitVec 64)) Option!12092)

(assert (=> b!4691135 (isDefined!9347 (getValueByKey!1788 (toList!5606 lm!2023) lt!1851012))))

(declare-fun b!4691136 () Bool)

(declare-fun Unit!124301 () Unit!124273)

(assert (=> b!4691136 (= e!2926583 Unit!124301)))

(declare-fun b!4691137 () Bool)

(assert (=> b!4691137 (= e!2926584 (isDefined!9347 (getValueByKey!1788 (toList!5606 lm!2023) lt!1851012)))))

(assert (= (and d!1490923 c!802085) b!4691135))

(assert (= (and d!1490923 (not c!802085)) b!4691136))

(assert (= (and d!1490923 (not res!1978799)) b!4691137))

(declare-fun m!5594241 () Bool)

(assert (=> d!1490923 m!5594241))

(declare-fun m!5594243 () Bool)

(assert (=> b!4691135 m!5594243))

(declare-fun m!5594245 () Bool)

(assert (=> b!4691135 m!5594245))

(assert (=> b!4691135 m!5594245))

(declare-fun m!5594247 () Bool)

(assert (=> b!4691135 m!5594247))

(assert (=> b!4691137 m!5594245))

(assert (=> b!4691137 m!5594245))

(assert (=> b!4691137 m!5594247))

(assert (=> b!4691016 d!1490923))

(declare-fun b!4691155 () Bool)

(declare-fun e!2926598 () Option!12089)

(assert (=> b!4691155 (= e!2926598 (getPair!462 (t!359725 lt!1851019) key!4653))))

(declare-fun b!4691156 () Bool)

(declare-fun e!2926599 () Bool)

(assert (=> b!4691156 (= e!2926599 (not (containsKey!3065 lt!1851019 key!4653)))))

(declare-fun b!4691157 () Bool)

(declare-fun e!2926596 () Bool)

(declare-fun e!2926597 () Bool)

(assert (=> b!4691157 (= e!2926596 e!2926597)))

(declare-fun res!1978810 () Bool)

(assert (=> b!4691157 (=> (not res!1978810) (not e!2926597))))

(declare-fun lt!1851185 () Option!12089)

(assert (=> b!4691157 (= res!1978810 (isDefined!9344 lt!1851185))))

(declare-fun b!4691158 () Bool)

(declare-fun e!2926595 () Option!12089)

(assert (=> b!4691158 (= e!2926595 e!2926598)))

(declare-fun c!802091 () Bool)

(assert (=> b!4691158 (= c!802091 ((_ is Cons!52421) lt!1851019))))

(declare-fun b!4691159 () Bool)

(assert (=> b!4691159 (= e!2926595 (Some!12088 (h!58670 lt!1851019)))))

(declare-fun b!4691160 () Bool)

(declare-fun res!1978811 () Bool)

(assert (=> b!4691160 (=> (not res!1978811) (not e!2926597))))

(declare-fun get!17501 (Option!12089) tuple2!53826)

(assert (=> b!4691160 (= res!1978811 (= (_1!30207 (get!17501 lt!1851185)) key!4653))))

(declare-fun b!4691161 () Bool)

(assert (=> b!4691161 (= e!2926597 (contains!15634 lt!1851019 (get!17501 lt!1851185)))))

(declare-fun d!1490927 () Bool)

(assert (=> d!1490927 e!2926596))

(declare-fun res!1978808 () Bool)

(assert (=> d!1490927 (=> res!1978808 e!2926596)))

(assert (=> d!1490927 (= res!1978808 e!2926599)))

(declare-fun res!1978809 () Bool)

(assert (=> d!1490927 (=> (not res!1978809) (not e!2926599))))

(declare-fun isEmpty!29097 (Option!12089) Bool)

(assert (=> d!1490927 (= res!1978809 (isEmpty!29097 lt!1851185))))

(assert (=> d!1490927 (= lt!1851185 e!2926595)))

(declare-fun c!802090 () Bool)

(assert (=> d!1490927 (= c!802090 (and ((_ is Cons!52421) lt!1851019) (= (_1!30207 (h!58670 lt!1851019)) key!4653)))))

(assert (=> d!1490927 (noDuplicateKeys!1858 lt!1851019)))

(assert (=> d!1490927 (= (getPair!462 lt!1851019 key!4653) lt!1851185)))

(declare-fun b!4691154 () Bool)

(assert (=> b!4691154 (= e!2926598 None!12088)))

(assert (= (and d!1490927 c!802090) b!4691159))

(assert (= (and d!1490927 (not c!802090)) b!4691158))

(assert (= (and b!4691158 c!802091) b!4691155))

(assert (= (and b!4691158 (not c!802091)) b!4691154))

(assert (= (and d!1490927 res!1978809) b!4691156))

(assert (= (and d!1490927 (not res!1978808)) b!4691157))

(assert (= (and b!4691157 res!1978810) b!4691160))

(assert (= (and b!4691160 res!1978811) b!4691161))

(declare-fun m!5594287 () Bool)

(assert (=> b!4691155 m!5594287))

(declare-fun m!5594289 () Bool)

(assert (=> b!4691160 m!5594289))

(declare-fun m!5594291 () Bool)

(assert (=> b!4691156 m!5594291))

(declare-fun m!5594293 () Bool)

(assert (=> b!4691157 m!5594293))

(declare-fun m!5594295 () Bool)

(assert (=> d!1490927 m!5594295))

(declare-fun m!5594297 () Bool)

(assert (=> d!1490927 m!5594297))

(assert (=> b!4691161 m!5594289))

(assert (=> b!4691161 m!5594289))

(declare-fun m!5594299 () Bool)

(assert (=> b!4691161 m!5594299))

(assert (=> b!4691016 d!1490927))

(declare-fun bs!1087397 () Bool)

(declare-fun d!1490935 () Bool)

(assert (= bs!1087397 (and d!1490935 start!474660)))

(declare-fun lambda!207492 () Int)

(assert (=> bs!1087397 (= lambda!207492 lambda!207427)))

(declare-fun bs!1087398 () Bool)

(assert (= bs!1087398 (and d!1490935 d!1490911)))

(assert (=> bs!1087398 (= lambda!207492 lambda!207439)))

(declare-fun b!4691211 () Bool)

(declare-fun lt!1851263 () (_ BitVec 64))

(declare-fun e!2926628 () Bool)

(declare-fun lt!1851259 () List!52545)

(assert (=> b!4691211 (= e!2926628 (= (getValueByKey!1788 (toList!5606 lm!2023) lt!1851263) (Some!12091 lt!1851259)))))

(declare-fun b!4691209 () Bool)

(declare-fun res!1978834 () Bool)

(declare-fun e!2926629 () Bool)

(assert (=> b!4691209 (=> (not res!1978834) (not e!2926629))))

(assert (=> b!4691209 (= res!1978834 (contains!15628 (extractMap!1884 (toList!5606 lm!2023)) key!4653))))

(assert (=> d!1490935 e!2926629))

(declare-fun res!1978836 () Bool)

(assert (=> d!1490935 (=> (not res!1978836) (not e!2926629))))

(assert (=> d!1490935 (= res!1978836 (forall!11329 (toList!5606 lm!2023) lambda!207492))))

(declare-fun lt!1851261 () Unit!124273)

(declare-fun choose!32607 (ListLongMap!4135 K!13795 Hashable!6227) Unit!124273)

(assert (=> d!1490935 (= lt!1851261 (choose!32607 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490935 (forall!11329 (toList!5606 lm!2023) lambda!207492)))

(assert (=> d!1490935 (= (lemmaInGenMapThenGetPairDefined!258 lm!2023 key!4653 hashF!1323) lt!1851261)))

(declare-fun b!4691210 () Bool)

(assert (=> b!4691210 (= e!2926629 (isDefined!9344 (getPair!462 (apply!12341 lm!2023 (hash!4073 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1851264 () Unit!124273)

(assert (=> b!4691210 (= lt!1851264 (forallContained!3436 (toList!5606 lm!2023) lambda!207492 (tuple2!53829 (hash!4073 hashF!1323 key!4653) (apply!12341 lm!2023 (hash!4073 hashF!1323 key!4653)))))))

(declare-fun lt!1851265 () Unit!124273)

(declare-fun lt!1851258 () Unit!124273)

(assert (=> b!4691210 (= lt!1851265 lt!1851258)))

(assert (=> b!4691210 (contains!15629 (toList!5606 lm!2023) (tuple2!53829 lt!1851263 lt!1851259))))

(assert (=> b!4691210 (= lt!1851258 (lemmaGetValueImpliesTupleContained!267 lm!2023 lt!1851263 lt!1851259))))

(assert (=> b!4691210 e!2926628))

(declare-fun res!1978837 () Bool)

(assert (=> b!4691210 (=> (not res!1978837) (not e!2926628))))

(assert (=> b!4691210 (= res!1978837 (contains!15630 lm!2023 lt!1851263))))

(assert (=> b!4691210 (= lt!1851259 (apply!12341 lm!2023 (hash!4073 hashF!1323 key!4653)))))

(assert (=> b!4691210 (= lt!1851263 (hash!4073 hashF!1323 key!4653))))

(declare-fun lt!1851260 () Unit!124273)

(declare-fun lt!1851262 () Unit!124273)

(assert (=> b!4691210 (= lt!1851260 lt!1851262)))

(assert (=> b!4691210 (contains!15630 lm!2023 (hash!4073 hashF!1323 key!4653))))

(assert (=> b!4691210 (= lt!1851262 (lemmaInGenMapThenLongMapContainsHash!668 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4691208 () Bool)

(declare-fun res!1978835 () Bool)

(assert (=> b!4691208 (=> (not res!1978835) (not e!2926629))))

(assert (=> b!4691208 (= res!1978835 (allKeysSameHashInMap!1772 lm!2023 hashF!1323))))

(assert (= (and d!1490935 res!1978836) b!4691208))

(assert (= (and b!4691208 res!1978835) b!4691209))

(assert (= (and b!4691209 res!1978834) b!4691210))

(assert (= (and b!4691210 res!1978837) b!4691211))

(declare-fun m!5594397 () Bool)

(assert (=> b!4691211 m!5594397))

(assert (=> b!4691208 m!5594059))

(declare-fun m!5594399 () Bool)

(assert (=> d!1490935 m!5594399))

(declare-fun m!5594401 () Bool)

(assert (=> d!1490935 m!5594401))

(assert (=> d!1490935 m!5594399))

(assert (=> b!4691209 m!5594075))

(assert (=> b!4691209 m!5594075))

(declare-fun m!5594409 () Bool)

(assert (=> b!4691209 m!5594409))

(declare-fun m!5594413 () Bool)

(assert (=> b!4691210 m!5594413))

(declare-fun m!5594419 () Bool)

(assert (=> b!4691210 m!5594419))

(declare-fun m!5594421 () Bool)

(assert (=> b!4691210 m!5594421))

(declare-fun m!5594423 () Bool)

(assert (=> b!4691210 m!5594423))

(assert (=> b!4691210 m!5594121))

(declare-fun m!5594427 () Bool)

(assert (=> b!4691210 m!5594427))

(assert (=> b!4691210 m!5594121))

(declare-fun m!5594431 () Bool)

(assert (=> b!4691210 m!5594431))

(assert (=> b!4691210 m!5594121))

(declare-fun m!5594433 () Bool)

(assert (=> b!4691210 m!5594433))

(assert (=> b!4691210 m!5594087))

(declare-fun m!5594435 () Bool)

(assert (=> b!4691210 m!5594435))

(assert (=> b!4691210 m!5594433))

(assert (=> b!4691210 m!5594421))

(assert (=> b!4691016 d!1490935))

(declare-fun d!1490957 () Bool)

(assert (=> d!1490957 (containsKey!3065 oldBucket!34 key!4653)))

(declare-fun lt!1851295 () Unit!124273)

(declare-fun choose!32609 (List!52545 K!13795 Hashable!6227) Unit!124273)

(assert (=> d!1490957 (= lt!1851295 (choose!32609 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1490957 (noDuplicateKeys!1858 oldBucket!34)))

(assert (=> d!1490957 (= (lemmaGetPairDefinedThenContainsKey!210 oldBucket!34 key!4653 hashF!1323) lt!1851295)))

(declare-fun bs!1087414 () Bool)

(assert (= bs!1087414 d!1490957))

(assert (=> bs!1087414 m!5594099))

(declare-fun m!5594437 () Bool)

(assert (=> bs!1087414 m!5594437))

(assert (=> bs!1087414 m!5594079))

(assert (=> b!4691016 d!1490957))

(declare-fun d!1490959 () Bool)

(declare-fun res!1978847 () Bool)

(declare-fun e!2926638 () Bool)

(assert (=> d!1490959 (=> res!1978847 e!2926638)))

(assert (=> d!1490959 (= res!1978847 (and ((_ is Cons!52421) (t!359725 oldBucket!34)) (= (_1!30207 (h!58670 (t!359725 oldBucket!34))) key!4653)))))

(assert (=> d!1490959 (= (containsKey!3065 (t!359725 oldBucket!34) key!4653) e!2926638)))

(declare-fun b!4691223 () Bool)

(declare-fun e!2926639 () Bool)

(assert (=> b!4691223 (= e!2926638 e!2926639)))

(declare-fun res!1978848 () Bool)

(assert (=> b!4691223 (=> (not res!1978848) (not e!2926639))))

(assert (=> b!4691223 (= res!1978848 ((_ is Cons!52421) (t!359725 oldBucket!34)))))

(declare-fun b!4691224 () Bool)

(assert (=> b!4691224 (= e!2926639 (containsKey!3065 (t!359725 (t!359725 oldBucket!34)) key!4653))))

(assert (= (and d!1490959 (not res!1978847)) b!4691223))

(assert (= (and b!4691223 res!1978848) b!4691224))

(declare-fun m!5594439 () Bool)

(assert (=> b!4691224 m!5594439))

(assert (=> b!4691016 d!1490959))

(declare-fun d!1490961 () Bool)

(declare-fun lt!1851298 () Bool)

(declare-fun content!9173 (List!52546) (InoxSet tuple2!53828))

(assert (=> d!1490961 (= lt!1851298 (select (content!9173 (toList!5606 lm!2023)) lt!1851022))))

(declare-fun e!2926645 () Bool)

(assert (=> d!1490961 (= lt!1851298 e!2926645)))

(declare-fun res!1978854 () Bool)

(assert (=> d!1490961 (=> (not res!1978854) (not e!2926645))))

(assert (=> d!1490961 (= res!1978854 ((_ is Cons!52422) (toList!5606 lm!2023)))))

(assert (=> d!1490961 (= (contains!15629 (toList!5606 lm!2023) lt!1851022) lt!1851298)))

(declare-fun b!4691229 () Bool)

(declare-fun e!2926644 () Bool)

(assert (=> b!4691229 (= e!2926645 e!2926644)))

(declare-fun res!1978853 () Bool)

(assert (=> b!4691229 (=> res!1978853 e!2926644)))

(assert (=> b!4691229 (= res!1978853 (= (h!58671 (toList!5606 lm!2023)) lt!1851022))))

(declare-fun b!4691230 () Bool)

(assert (=> b!4691230 (= e!2926644 (contains!15629 (t!359726 (toList!5606 lm!2023)) lt!1851022))))

(assert (= (and d!1490961 res!1978854) b!4691229))

(assert (= (and b!4691229 (not res!1978853)) b!4691230))

(declare-fun m!5594441 () Bool)

(assert (=> d!1490961 m!5594441))

(declare-fun m!5594443 () Bool)

(assert (=> d!1490961 m!5594443))

(declare-fun m!5594445 () Bool)

(assert (=> b!4691230 m!5594445))

(assert (=> b!4691016 d!1490961))

(declare-fun d!1490963 () Bool)

(declare-fun res!1978855 () Bool)

(declare-fun e!2926646 () Bool)

(assert (=> d!1490963 (=> res!1978855 e!2926646)))

(assert (=> d!1490963 (= res!1978855 (and ((_ is Cons!52421) oldBucket!34) (= (_1!30207 (h!58670 oldBucket!34)) key!4653)))))

(assert (=> d!1490963 (= (containsKey!3065 oldBucket!34 key!4653) e!2926646)))

(declare-fun b!4691231 () Bool)

(declare-fun e!2926647 () Bool)

(assert (=> b!4691231 (= e!2926646 e!2926647)))

(declare-fun res!1978856 () Bool)

(assert (=> b!4691231 (=> (not res!1978856) (not e!2926647))))

(assert (=> b!4691231 (= res!1978856 ((_ is Cons!52421) oldBucket!34))))

(declare-fun b!4691232 () Bool)

(assert (=> b!4691232 (= e!2926647 (containsKey!3065 (t!359725 oldBucket!34) key!4653))))

(assert (= (and d!1490963 (not res!1978855)) b!4691231))

(assert (= (and b!4691231 res!1978856) b!4691232))

(assert (=> b!4691232 m!5594091))

(assert (=> b!4691016 d!1490963))

(declare-fun d!1490965 () Bool)

(assert (=> d!1490965 (= (isDefined!9344 (getPair!462 lt!1851019 key!4653)) (not (isEmpty!29097 (getPair!462 lt!1851019 key!4653))))))

(declare-fun bs!1087433 () Bool)

(assert (= bs!1087433 d!1490965))

(assert (=> bs!1087433 m!5594101))

(declare-fun m!5594473 () Bool)

(assert (=> bs!1087433 m!5594473))

(assert (=> b!4691016 d!1490965))

(declare-fun bs!1087434 () Bool)

(declare-fun d!1490967 () Bool)

(assert (= bs!1087434 (and d!1490967 start!474660)))

(declare-fun lambda!207501 () Int)

(assert (=> bs!1087434 (= lambda!207501 lambda!207427)))

(declare-fun bs!1087435 () Bool)

(assert (= bs!1087435 (and d!1490967 d!1490911)))

(assert (=> bs!1087435 (= lambda!207501 lambda!207439)))

(declare-fun bs!1087436 () Bool)

(assert (= bs!1087436 (and d!1490967 d!1490935)))

(assert (=> bs!1087436 (= lambda!207501 lambda!207492)))

(assert (=> d!1490967 (contains!15630 lm!2023 (hash!4073 hashF!1323 key!4653))))

(declare-fun lt!1851301 () Unit!124273)

(declare-fun choose!32610 (ListLongMap!4135 K!13795 Hashable!6227) Unit!124273)

(assert (=> d!1490967 (= lt!1851301 (choose!32610 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490967 (forall!11329 (toList!5606 lm!2023) lambda!207501)))

(assert (=> d!1490967 (= (lemmaInGenMapThenLongMapContainsHash!668 lm!2023 key!4653 hashF!1323) lt!1851301)))

(declare-fun bs!1087437 () Bool)

(assert (= bs!1087437 d!1490967))

(assert (=> bs!1087437 m!5594121))

(assert (=> bs!1087437 m!5594121))

(assert (=> bs!1087437 m!5594427))

(declare-fun m!5594485 () Bool)

(assert (=> bs!1087437 m!5594485))

(declare-fun m!5594487 () Bool)

(assert (=> bs!1087437 m!5594487))

(assert (=> b!4691016 d!1490967))

(declare-fun d!1490975 () Bool)

(declare-fun get!17502 (Option!12092) List!52545)

(assert (=> d!1490975 (= (apply!12341 lm!2023 lt!1851012) (get!17502 (getValueByKey!1788 (toList!5606 lm!2023) lt!1851012)))))

(declare-fun bs!1087449 () Bool)

(assert (= bs!1087449 d!1490975))

(assert (=> bs!1087449 m!5594245))

(assert (=> bs!1087449 m!5594245))

(declare-fun m!5594489 () Bool)

(assert (=> bs!1087449 m!5594489))

(assert (=> b!4691016 d!1490975))

(declare-fun d!1490977 () Bool)

(declare-fun dynLambda!21716 (Int tuple2!53828) Bool)

(assert (=> d!1490977 (dynLambda!21716 lambda!207427 lt!1851022)))

(declare-fun lt!1851313 () Unit!124273)

(declare-fun choose!32611 (List!52546 Int tuple2!53828) Unit!124273)

(assert (=> d!1490977 (= lt!1851313 (choose!32611 (toList!5606 lm!2023) lambda!207427 lt!1851022))))

(declare-fun e!2926663 () Bool)

(assert (=> d!1490977 e!2926663))

(declare-fun res!1978868 () Bool)

(assert (=> d!1490977 (=> (not res!1978868) (not e!2926663))))

(assert (=> d!1490977 (= res!1978868 (forall!11329 (toList!5606 lm!2023) lambda!207427))))

(assert (=> d!1490977 (= (forallContained!3436 (toList!5606 lm!2023) lambda!207427 lt!1851022) lt!1851313)))

(declare-fun b!4691256 () Bool)

(assert (=> b!4691256 (= e!2926663 (contains!15629 (toList!5606 lm!2023) lt!1851022))))

(assert (= (and d!1490977 res!1978868) b!4691256))

(declare-fun b_lambda!177029 () Bool)

(assert (=> (not b_lambda!177029) (not d!1490977)))

(declare-fun m!5594519 () Bool)

(assert (=> d!1490977 m!5594519))

(declare-fun m!5594521 () Bool)

(assert (=> d!1490977 m!5594521))

(assert (=> d!1490977 m!5594065))

(assert (=> b!4691256 m!5594095))

(assert (=> b!4691016 d!1490977))

(declare-fun d!1490985 () Bool)

(assert (=> d!1490985 (contains!15629 (toList!5606 lm!2023) (tuple2!53829 lt!1851012 lt!1851019))))

(declare-fun lt!1851317 () Unit!124273)

(declare-fun choose!32612 (ListLongMap!4135 (_ BitVec 64) List!52545) Unit!124273)

(assert (=> d!1490985 (= lt!1851317 (choose!32612 lm!2023 lt!1851012 lt!1851019))))

(assert (=> d!1490985 (contains!15630 lm!2023 lt!1851012)))

(assert (=> d!1490985 (= (lemmaGetValueImpliesTupleContained!267 lm!2023 lt!1851012 lt!1851019) lt!1851317)))

(declare-fun bs!1087472 () Bool)

(assert (= bs!1087472 d!1490985))

(declare-fun m!5594529 () Bool)

(assert (=> bs!1087472 m!5594529))

(declare-fun m!5594531 () Bool)

(assert (=> bs!1087472 m!5594531))

(assert (=> bs!1087472 m!5594093))

(assert (=> b!4691016 d!1490985))

(declare-fun d!1490995 () Bool)

(declare-fun res!1978876 () Bool)

(declare-fun e!2926673 () Bool)

(assert (=> d!1490995 (=> res!1978876 e!2926673)))

(assert (=> d!1490995 (= res!1978876 ((_ is Nil!52422) (toList!5606 lm!2023)))))

(assert (=> d!1490995 (= (forall!11329 (toList!5606 lm!2023) lambda!207427) e!2926673)))

(declare-fun b!4691271 () Bool)

(declare-fun e!2926674 () Bool)

(assert (=> b!4691271 (= e!2926673 e!2926674)))

(declare-fun res!1978877 () Bool)

(assert (=> b!4691271 (=> (not res!1978877) (not e!2926674))))

(assert (=> b!4691271 (= res!1978877 (dynLambda!21716 lambda!207427 (h!58671 (toList!5606 lm!2023))))))

(declare-fun b!4691272 () Bool)

(assert (=> b!4691272 (= e!2926674 (forall!11329 (t!359726 (toList!5606 lm!2023)) lambda!207427))))

(assert (= (and d!1490995 (not res!1978876)) b!4691271))

(assert (= (and b!4691271 res!1978877) b!4691272))

(declare-fun b_lambda!177031 () Bool)

(assert (=> (not b_lambda!177031) (not b!4691271)))

(declare-fun m!5594533 () Bool)

(assert (=> b!4691271 m!5594533))

(declare-fun m!5594535 () Bool)

(assert (=> b!4691272 m!5594535))

(assert (=> start!474660 d!1490995))

(declare-fun d!1490997 () Bool)

(declare-fun isStrictlySorted!653 (List!52546) Bool)

(assert (=> d!1490997 (= (inv!67669 lm!2023) (isStrictlySorted!653 (toList!5606 lm!2023)))))

(declare-fun bs!1087500 () Bool)

(assert (= bs!1087500 d!1490997))

(declare-fun m!5594537 () Bool)

(assert (=> bs!1087500 m!5594537))

(assert (=> start!474660 d!1490997))

(declare-fun bs!1087554 () Bool)

(declare-fun b!4691375 () Bool)

(assert (= bs!1087554 (and b!4691375 d!1490893)))

(declare-fun lambda!207548 () Int)

(assert (=> bs!1087554 (not (= lambda!207548 lambda!207433))))

(declare-fun bs!1087555 () Bool)

(assert (= bs!1087555 (and b!4691375 d!1490913)))

(assert (=> bs!1087555 (not (= lambda!207548 lambda!207440))))

(assert (=> b!4691375 true))

(declare-fun bs!1087556 () Bool)

(declare-fun b!4691373 () Bool)

(assert (= bs!1087556 (and b!4691373 d!1490893)))

(declare-fun lambda!207549 () Int)

(assert (=> bs!1087556 (not (= lambda!207549 lambda!207433))))

(declare-fun bs!1087557 () Bool)

(assert (= bs!1087557 (and b!4691373 d!1490913)))

(assert (=> bs!1087557 (not (= lambda!207549 lambda!207440))))

(declare-fun bs!1087558 () Bool)

(assert (= bs!1087558 (and b!4691373 b!4691375)))

(assert (=> bs!1087558 (= lambda!207549 lambda!207548)))

(assert (=> b!4691373 true))

(declare-fun lambda!207550 () Int)

(assert (=> bs!1087556 (not (= lambda!207550 lambda!207433))))

(assert (=> bs!1087557 (not (= lambda!207550 lambda!207440))))

(declare-fun lt!1851456 () ListMap!4969)

(assert (=> bs!1087558 (= (= lt!1851456 lt!1851016) (= lambda!207550 lambda!207548))))

(assert (=> b!4691373 (= (= lt!1851456 lt!1851016) (= lambda!207550 lambda!207549))))

(assert (=> b!4691373 true))

(declare-fun bs!1087559 () Bool)

(declare-fun d!1490999 () Bool)

(assert (= bs!1087559 (and d!1490999 d!1490913)))

(declare-fun lambda!207551 () Int)

(assert (=> bs!1087559 (not (= lambda!207551 lambda!207440))))

(declare-fun bs!1087560 () Bool)

(assert (= bs!1087560 (and d!1490999 d!1490893)))

(assert (=> bs!1087560 (not (= lambda!207551 lambda!207433))))

(declare-fun bs!1087561 () Bool)

(assert (= bs!1087561 (and d!1490999 b!4691375)))

(declare-fun lt!1851458 () ListMap!4969)

(assert (=> bs!1087561 (= (= lt!1851458 lt!1851016) (= lambda!207551 lambda!207548))))

(declare-fun bs!1087562 () Bool)

(assert (= bs!1087562 (and d!1490999 b!4691373)))

(assert (=> bs!1087562 (= (= lt!1851458 lt!1851016) (= lambda!207551 lambda!207549))))

(assert (=> bs!1087562 (= (= lt!1851458 lt!1851456) (= lambda!207551 lambda!207550))))

(assert (=> d!1490999 true))

(declare-fun e!2926745 () ListMap!4969)

(assert (=> b!4691373 (= e!2926745 lt!1851456)))

(declare-fun lt!1851447 () ListMap!4969)

(assert (=> b!4691373 (= lt!1851447 (+!2142 lt!1851016 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023))))))))

(assert (=> b!4691373 (= lt!1851456 (addToMapMapFromBucket!1290 (t!359725 (_2!30208 (h!58671 (toList!5606 lm!2023)))) (+!2142 lt!1851016 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023)))))))))

(declare-fun lt!1851446 () Unit!124273)

(declare-fun call!327894 () Unit!124273)

(assert (=> b!4691373 (= lt!1851446 call!327894)))

(assert (=> b!4691373 (forall!11331 (toList!5605 lt!1851016) lambda!207549)))

(declare-fun lt!1851454 () Unit!124273)

(assert (=> b!4691373 (= lt!1851454 lt!1851446)))

(assert (=> b!4691373 (forall!11331 (toList!5605 lt!1851447) lambda!207550)))

(declare-fun lt!1851449 () Unit!124273)

(declare-fun Unit!124317 () Unit!124273)

(assert (=> b!4691373 (= lt!1851449 Unit!124317)))

(assert (=> b!4691373 (forall!11331 (t!359725 (_2!30208 (h!58671 (toList!5606 lm!2023)))) lambda!207550)))

(declare-fun lt!1851444 () Unit!124273)

(declare-fun Unit!124319 () Unit!124273)

(assert (=> b!4691373 (= lt!1851444 Unit!124319)))

(declare-fun lt!1851443 () Unit!124273)

(declare-fun Unit!124321 () Unit!124273)

(assert (=> b!4691373 (= lt!1851443 Unit!124321)))

(declare-fun lt!1851448 () Unit!124273)

(declare-fun forallContained!3438 (List!52545 Int tuple2!53826) Unit!124273)

(assert (=> b!4691373 (= lt!1851448 (forallContained!3438 (toList!5605 lt!1851447) lambda!207550 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023))))))))

(assert (=> b!4691373 (contains!15628 lt!1851447 (_1!30207 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023))))))))

(declare-fun lt!1851461 () Unit!124273)

(declare-fun Unit!124324 () Unit!124273)

(assert (=> b!4691373 (= lt!1851461 Unit!124324)))

(assert (=> b!4691373 (contains!15628 lt!1851456 (_1!30207 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023))))))))

(declare-fun lt!1851453 () Unit!124273)

(declare-fun Unit!124325 () Unit!124273)

(assert (=> b!4691373 (= lt!1851453 Unit!124325)))

(assert (=> b!4691373 (forall!11331 (_2!30208 (h!58671 (toList!5606 lm!2023))) lambda!207550)))

(declare-fun lt!1851455 () Unit!124273)

(declare-fun Unit!124327 () Unit!124273)

(assert (=> b!4691373 (= lt!1851455 Unit!124327)))

(declare-fun call!327892 () Bool)

(assert (=> b!4691373 call!327892))

(declare-fun lt!1851451 () Unit!124273)

(declare-fun Unit!124328 () Unit!124273)

(assert (=> b!4691373 (= lt!1851451 Unit!124328)))

(declare-fun lt!1851445 () Unit!124273)

(declare-fun Unit!124330 () Unit!124273)

(assert (=> b!4691373 (= lt!1851445 Unit!124330)))

(declare-fun lt!1851460 () Unit!124273)

(declare-fun addForallContainsKeyThenBeforeAdding!701 (ListMap!4969 ListMap!4969 K!13795 V!14041) Unit!124273)

(assert (=> b!4691373 (= lt!1851460 (addForallContainsKeyThenBeforeAdding!701 lt!1851016 lt!1851456 (_1!30207 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023))))) (_2!30207 (h!58670 (_2!30208 (h!58671 (toList!5606 lm!2023)))))))))

(declare-fun call!327893 () Bool)

(assert (=> b!4691373 call!327893))

(declare-fun lt!1851450 () Unit!124273)

(assert (=> b!4691373 (= lt!1851450 lt!1851460)))

(assert (=> b!4691373 (forall!11331 (toList!5605 lt!1851016) lambda!207550)))

(declare-fun lt!1851442 () Unit!124273)

(declare-fun Unit!124331 () Unit!124273)

(assert (=> b!4691373 (= lt!1851442 Unit!124331)))

(declare-fun res!1978939 () Bool)

(assert (=> b!4691373 (= res!1978939 (forall!11331 (_2!30208 (h!58671 (toList!5606 lm!2023))) lambda!207550))))

(declare-fun e!2926746 () Bool)

(assert (=> b!4691373 (=> (not res!1978939) (not e!2926746))))

(assert (=> b!4691373 e!2926746))

(declare-fun lt!1851459 () Unit!124273)

(declare-fun Unit!124333 () Unit!124273)

(assert (=> b!4691373 (= lt!1851459 Unit!124333)))

(declare-fun b!4691374 () Bool)

(declare-fun res!1978938 () Bool)

(declare-fun e!2926744 () Bool)

(assert (=> b!4691374 (=> (not res!1978938) (not e!2926744))))

(assert (=> b!4691374 (= res!1978938 (forall!11331 (toList!5605 lt!1851016) lambda!207551))))

(declare-fun bm!327887 () Bool)

(declare-fun c!802126 () Bool)

(assert (=> bm!327887 (= call!327892 (forall!11331 (ite c!802126 (toList!5605 lt!1851016) (toList!5605 lt!1851447)) (ite c!802126 lambda!207548 lambda!207550)))))

(assert (=> b!4691375 (= e!2926745 lt!1851016)))

(declare-fun lt!1851441 () Unit!124273)

(assert (=> b!4691375 (= lt!1851441 call!327894)))

(assert (=> b!4691375 call!327893))

(declare-fun lt!1851452 () Unit!124273)

(assert (=> b!4691375 (= lt!1851452 lt!1851441)))

(assert (=> b!4691375 call!327892))

(declare-fun lt!1851457 () Unit!124273)

(declare-fun Unit!124334 () Unit!124273)

(assert (=> b!4691375 (= lt!1851457 Unit!124334)))

(declare-fun bm!327888 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!702 (ListMap!4969) Unit!124273)

(assert (=> bm!327888 (= call!327894 (lemmaContainsAllItsOwnKeys!702 lt!1851016))))

(declare-fun b!4691376 () Bool)

(assert (=> b!4691376 (= e!2926744 (invariantList!1414 (toList!5605 lt!1851458)))))

(declare-fun b!4691377 () Bool)

(assert (=> b!4691377 (= e!2926746 (forall!11331 (toList!5605 lt!1851016) lambda!207550))))

(assert (=> d!1490999 e!2926744))

(declare-fun res!1978940 () Bool)

(assert (=> d!1490999 (=> (not res!1978940) (not e!2926744))))

(assert (=> d!1490999 (= res!1978940 (forall!11331 (_2!30208 (h!58671 (toList!5606 lm!2023))) lambda!207551))))

(assert (=> d!1490999 (= lt!1851458 e!2926745)))

(assert (=> d!1490999 (= c!802126 ((_ is Nil!52421) (_2!30208 (h!58671 (toList!5606 lm!2023)))))))

(assert (=> d!1490999 (noDuplicateKeys!1858 (_2!30208 (h!58671 (toList!5606 lm!2023))))))

(assert (=> d!1490999 (= (addToMapMapFromBucket!1290 (_2!30208 (h!58671 (toList!5606 lm!2023))) lt!1851016) lt!1851458)))

(declare-fun bm!327889 () Bool)

(assert (=> bm!327889 (= call!327893 (forall!11331 (toList!5605 lt!1851016) (ite c!802126 lambda!207548 lambda!207550)))))

(assert (= (and d!1490999 c!802126) b!4691375))

(assert (= (and d!1490999 (not c!802126)) b!4691373))

(assert (= (and b!4691373 res!1978939) b!4691377))

(assert (= (or b!4691375 b!4691373) bm!327888))

(assert (= (or b!4691375 b!4691373) bm!327887))

(assert (= (or b!4691375 b!4691373) bm!327889))

(assert (= (and d!1490999 res!1978940) b!4691374))

(assert (= (and b!4691374 res!1978938) b!4691376))

(declare-fun m!5594687 () Bool)

(assert (=> b!4691377 m!5594687))

(declare-fun m!5594689 () Bool)

(assert (=> b!4691373 m!5594689))

(declare-fun m!5594691 () Bool)

(assert (=> b!4691373 m!5594691))

(declare-fun m!5594693 () Bool)

(assert (=> b!4691373 m!5594693))

(declare-fun m!5594695 () Bool)

(assert (=> b!4691373 m!5594695))

(declare-fun m!5594697 () Bool)

(assert (=> b!4691373 m!5594697))

(declare-fun m!5594699 () Bool)

(assert (=> b!4691373 m!5594699))

(assert (=> b!4691373 m!5594697))

(declare-fun m!5594701 () Bool)

(assert (=> b!4691373 m!5594701))

(declare-fun m!5594703 () Bool)

(assert (=> b!4691373 m!5594703))

(assert (=> b!4691373 m!5594687))

(assert (=> b!4691373 m!5594691))

(declare-fun m!5594705 () Bool)

(assert (=> b!4691373 m!5594705))

(declare-fun m!5594707 () Bool)

(assert (=> b!4691373 m!5594707))

(declare-fun m!5594709 () Bool)

(assert (=> bm!327887 m!5594709))

(declare-fun m!5594711 () Bool)

(assert (=> bm!327889 m!5594711))

(declare-fun m!5594713 () Bool)

(assert (=> b!4691374 m!5594713))

(declare-fun m!5594715 () Bool)

(assert (=> bm!327888 m!5594715))

(declare-fun m!5594717 () Bool)

(assert (=> b!4691376 m!5594717))

(declare-fun m!5594719 () Bool)

(assert (=> d!1490999 m!5594719))

(declare-fun m!5594721 () Bool)

(assert (=> d!1490999 m!5594721))

(assert (=> b!4691015 d!1490999))

(declare-fun bs!1087563 () Bool)

(declare-fun d!1491049 () Bool)

(assert (= bs!1087563 (and d!1491049 start!474660)))

(declare-fun lambda!207552 () Int)

(assert (=> bs!1087563 (= lambda!207552 lambda!207427)))

(declare-fun bs!1087564 () Bool)

(assert (= bs!1087564 (and d!1491049 d!1490911)))

(assert (=> bs!1087564 (= lambda!207552 lambda!207439)))

(declare-fun bs!1087565 () Bool)

(assert (= bs!1087565 (and d!1491049 d!1490935)))

(assert (=> bs!1087565 (= lambda!207552 lambda!207492)))

(declare-fun bs!1087566 () Bool)

(assert (= bs!1087566 (and d!1491049 d!1490967)))

(assert (=> bs!1087566 (= lambda!207552 lambda!207501)))

(declare-fun lt!1851462 () ListMap!4969)

(assert (=> d!1491049 (invariantList!1414 (toList!5605 lt!1851462))))

(declare-fun e!2926747 () ListMap!4969)

(assert (=> d!1491049 (= lt!1851462 e!2926747)))

(declare-fun c!802127 () Bool)

(assert (=> d!1491049 (= c!802127 ((_ is Cons!52422) (t!359726 (toList!5606 lm!2023))))))

(assert (=> d!1491049 (forall!11329 (t!359726 (toList!5606 lm!2023)) lambda!207552)))

(assert (=> d!1491049 (= (extractMap!1884 (t!359726 (toList!5606 lm!2023))) lt!1851462)))

(declare-fun b!4691380 () Bool)

(assert (=> b!4691380 (= e!2926747 (addToMapMapFromBucket!1290 (_2!30208 (h!58671 (t!359726 (toList!5606 lm!2023)))) (extractMap!1884 (t!359726 (t!359726 (toList!5606 lm!2023))))))))

(declare-fun b!4691381 () Bool)

(assert (=> b!4691381 (= e!2926747 (ListMap!4970 Nil!52421))))

(assert (= (and d!1491049 c!802127) b!4691380))

(assert (= (and d!1491049 (not c!802127)) b!4691381))

(declare-fun m!5594723 () Bool)

(assert (=> d!1491049 m!5594723))

(declare-fun m!5594725 () Bool)

(assert (=> d!1491049 m!5594725))

(declare-fun m!5594727 () Bool)

(assert (=> b!4691380 m!5594727))

(assert (=> b!4691380 m!5594727))

(declare-fun m!5594729 () Bool)

(assert (=> b!4691380 m!5594729))

(assert (=> b!4691015 d!1491049))

(declare-fun d!1491051 () Bool)

(declare-fun tail!8604 (List!52546) List!52546)

(assert (=> d!1491051 (= (tail!8602 lm!2023) (ListLongMap!4136 (tail!8604 (toList!5606 lm!2023))))))

(declare-fun bs!1087567 () Bool)

(assert (= bs!1087567 d!1491051))

(declare-fun m!5594731 () Bool)

(assert (=> bs!1087567 m!5594731))

(assert (=> b!4691015 d!1491051))

(declare-fun d!1491053 () Bool)

(declare-fun res!1978941 () Bool)

(declare-fun e!2926748 () Bool)

(assert (=> d!1491053 (=> res!1978941 e!2926748)))

(assert (=> d!1491053 (= res!1978941 (not ((_ is Cons!52421) newBucket!218)))))

(assert (=> d!1491053 (= (noDuplicateKeys!1858 newBucket!218) e!2926748)))

(declare-fun b!4691382 () Bool)

(declare-fun e!2926749 () Bool)

(assert (=> b!4691382 (= e!2926748 e!2926749)))

(declare-fun res!1978942 () Bool)

(assert (=> b!4691382 (=> (not res!1978942) (not e!2926749))))

(assert (=> b!4691382 (= res!1978942 (not (containsKey!3065 (t!359725 newBucket!218) (_1!30207 (h!58670 newBucket!218)))))))

(declare-fun b!4691383 () Bool)

(assert (=> b!4691383 (= e!2926749 (noDuplicateKeys!1858 (t!359725 newBucket!218)))))

(assert (= (and d!1491053 (not res!1978941)) b!4691382))

(assert (= (and b!4691382 res!1978942) b!4691383))

(declare-fun m!5594733 () Bool)

(assert (=> b!4691382 m!5594733))

(declare-fun m!5594735 () Bool)

(assert (=> b!4691383 m!5594735))

(assert (=> b!4691004 d!1491053))

(declare-fun b!4691385 () Bool)

(declare-fun e!2926750 () List!52545)

(declare-fun e!2926751 () List!52545)

(assert (=> b!4691385 (= e!2926750 e!2926751)))

(declare-fun c!802129 () Bool)

(assert (=> b!4691385 (= c!802129 ((_ is Cons!52421) lt!1851025))))

(declare-fun d!1491055 () Bool)

(declare-fun lt!1851463 () List!52545)

(assert (=> d!1491055 (not (containsKey!3065 lt!1851463 key!4653))))

(assert (=> d!1491055 (= lt!1851463 e!2926750)))

(declare-fun c!802128 () Bool)

(assert (=> d!1491055 (= c!802128 (and ((_ is Cons!52421) lt!1851025) (= (_1!30207 (h!58670 lt!1851025)) key!4653)))))

(assert (=> d!1491055 (noDuplicateKeys!1858 lt!1851025)))

(assert (=> d!1491055 (= (removePairForKey!1453 lt!1851025 key!4653) lt!1851463)))

(declare-fun b!4691387 () Bool)

(assert (=> b!4691387 (= e!2926751 Nil!52421)))

(declare-fun b!4691386 () Bool)

(assert (=> b!4691386 (= e!2926751 (Cons!52421 (h!58670 lt!1851025) (removePairForKey!1453 (t!359725 lt!1851025) key!4653)))))

(declare-fun b!4691384 () Bool)

(assert (=> b!4691384 (= e!2926750 (t!359725 lt!1851025))))

(assert (= (and d!1491055 c!802128) b!4691384))

(assert (= (and d!1491055 (not c!802128)) b!4691385))

(assert (= (and b!4691385 c!802129) b!4691386))

(assert (= (and b!4691385 (not c!802129)) b!4691387))

(declare-fun m!5594737 () Bool)

(assert (=> d!1491055 m!5594737))

(declare-fun m!5594739 () Bool)

(assert (=> d!1491055 m!5594739))

(declare-fun m!5594741 () Bool)

(assert (=> b!4691386 m!5594741))

(assert (=> b!4691018 d!1491055))

(declare-fun d!1491057 () Bool)

(assert (=> d!1491057 (= (tail!8603 newBucket!218) (t!359725 newBucket!218))))

(assert (=> b!4691018 d!1491057))

(declare-fun d!1491059 () Bool)

(assert (=> d!1491059 (= (tail!8603 oldBucket!34) (t!359725 oldBucket!34))))

(assert (=> b!4691018 d!1491059))

(declare-fun d!1491061 () Bool)

(assert (=> d!1491061 (= (eq!1017 lt!1851026 (+!2142 lt!1851013 (h!58670 oldBucket!34))) (= (content!9172 (toList!5605 lt!1851026)) (content!9172 (toList!5605 (+!2142 lt!1851013 (h!58670 oldBucket!34))))))))

(declare-fun bs!1087568 () Bool)

(assert (= bs!1087568 d!1491061))

(assert (=> bs!1087568 m!5594189))

(declare-fun m!5594743 () Bool)

(assert (=> bs!1087568 m!5594743))

(assert (=> b!4691007 d!1491061))

(declare-fun d!1491063 () Bool)

(assert (=> d!1491063 (= (head!9980 oldBucket!34) (h!58670 oldBucket!34))))

(assert (=> b!4691007 d!1491063))

(declare-fun d!1491065 () Bool)

(assert (=> d!1491065 (= (eq!1017 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851008 lt!1851023) lt!1851016) (+!2142 (addToMapMapFromBucket!1290 lt!1851023 lt!1851016) lt!1851008)) (= (content!9172 (toList!5605 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851008 lt!1851023) lt!1851016))) (content!9172 (toList!5605 (+!2142 (addToMapMapFromBucket!1290 lt!1851023 lt!1851016) lt!1851008)))))))

(declare-fun bs!1087569 () Bool)

(assert (= bs!1087569 d!1491065))

(declare-fun m!5594745 () Bool)

(assert (=> bs!1087569 m!5594745))

(declare-fun m!5594747 () Bool)

(assert (=> bs!1087569 m!5594747))

(assert (=> b!4691007 d!1491065))

(declare-fun d!1491067 () Bool)

(declare-fun e!2926752 () Bool)

(assert (=> d!1491067 e!2926752))

(declare-fun res!1978944 () Bool)

(assert (=> d!1491067 (=> (not res!1978944) (not e!2926752))))

(declare-fun lt!1851465 () ListMap!4969)

(assert (=> d!1491067 (= res!1978944 (contains!15628 lt!1851465 (_1!30207 lt!1851008)))))

(declare-fun lt!1851467 () List!52545)

(assert (=> d!1491067 (= lt!1851465 (ListMap!4970 lt!1851467))))

(declare-fun lt!1851464 () Unit!124273)

(declare-fun lt!1851466 () Unit!124273)

(assert (=> d!1491067 (= lt!1851464 lt!1851466)))

(assert (=> d!1491067 (= (getValueByKey!1787 lt!1851467 (_1!30207 lt!1851008)) (Some!12090 (_2!30207 lt!1851008)))))

(assert (=> d!1491067 (= lt!1851466 (lemmaContainsTupThenGetReturnValue!1004 lt!1851467 (_1!30207 lt!1851008) (_2!30207 lt!1851008)))))

(assert (=> d!1491067 (= lt!1851467 (insertNoDuplicatedKeys!512 (toList!5605 (addToMapMapFromBucket!1290 lt!1851023 lt!1851016)) (_1!30207 lt!1851008) (_2!30207 lt!1851008)))))

(assert (=> d!1491067 (= (+!2142 (addToMapMapFromBucket!1290 lt!1851023 lt!1851016) lt!1851008) lt!1851465)))

(declare-fun b!4691388 () Bool)

(declare-fun res!1978943 () Bool)

(assert (=> b!4691388 (=> (not res!1978943) (not e!2926752))))

(assert (=> b!4691388 (= res!1978943 (= (getValueByKey!1787 (toList!5605 lt!1851465) (_1!30207 lt!1851008)) (Some!12090 (_2!30207 lt!1851008))))))

(declare-fun b!4691389 () Bool)

(assert (=> b!4691389 (= e!2926752 (contains!15634 (toList!5605 lt!1851465) lt!1851008))))

(assert (= (and d!1491067 res!1978944) b!4691388))

(assert (= (and b!4691388 res!1978943) b!4691389))

(declare-fun m!5594749 () Bool)

(assert (=> d!1491067 m!5594749))

(declare-fun m!5594751 () Bool)

(assert (=> d!1491067 m!5594751))

(declare-fun m!5594753 () Bool)

(assert (=> d!1491067 m!5594753))

(declare-fun m!5594755 () Bool)

(assert (=> d!1491067 m!5594755))

(declare-fun m!5594757 () Bool)

(assert (=> b!4691388 m!5594757))

(declare-fun m!5594759 () Bool)

(assert (=> b!4691389 m!5594759))

(assert (=> b!4691007 d!1491067))

(declare-fun bs!1087570 () Bool)

(declare-fun d!1491069 () Bool)

(assert (= bs!1087570 (and d!1491069 d!1490911)))

(declare-fun lambda!207553 () Int)

(assert (=> bs!1087570 (= lambda!207553 lambda!207439)))

(declare-fun bs!1087571 () Bool)

(assert (= bs!1087571 (and d!1491069 d!1490967)))

(assert (=> bs!1087571 (= lambda!207553 lambda!207501)))

(declare-fun bs!1087572 () Bool)

(assert (= bs!1087572 (and d!1491069 start!474660)))

(assert (=> bs!1087572 (= lambda!207553 lambda!207427)))

(declare-fun bs!1087573 () Bool)

(assert (= bs!1087573 (and d!1491069 d!1490935)))

(assert (=> bs!1087573 (= lambda!207553 lambda!207492)))

(declare-fun bs!1087574 () Bool)

(assert (= bs!1087574 (and d!1491069 d!1491049)))

(assert (=> bs!1087574 (= lambda!207553 lambda!207552)))

(declare-fun lt!1851468 () ListMap!4969)

(assert (=> d!1491069 (invariantList!1414 (toList!5605 lt!1851468))))

(declare-fun e!2926753 () ListMap!4969)

(assert (=> d!1491069 (= lt!1851468 e!2926753)))

(declare-fun c!802130 () Bool)

(assert (=> d!1491069 (= c!802130 ((_ is Cons!52422) (Cons!52422 (tuple2!53829 hash!405 lt!1851025) (t!359726 (toList!5606 lm!2023)))))))

(assert (=> d!1491069 (forall!11329 (Cons!52422 (tuple2!53829 hash!405 lt!1851025) (t!359726 (toList!5606 lm!2023))) lambda!207553)))

(assert (=> d!1491069 (= (extractMap!1884 (Cons!52422 (tuple2!53829 hash!405 lt!1851025) (t!359726 (toList!5606 lm!2023)))) lt!1851468)))

(declare-fun b!4691390 () Bool)

(assert (=> b!4691390 (= e!2926753 (addToMapMapFromBucket!1290 (_2!30208 (h!58671 (Cons!52422 (tuple2!53829 hash!405 lt!1851025) (t!359726 (toList!5606 lm!2023))))) (extractMap!1884 (t!359726 (Cons!52422 (tuple2!53829 hash!405 lt!1851025) (t!359726 (toList!5606 lm!2023)))))))))

(declare-fun b!4691391 () Bool)

(assert (=> b!4691391 (= e!2926753 (ListMap!4970 Nil!52421))))

(assert (= (and d!1491069 c!802130) b!4691390))

(assert (= (and d!1491069 (not c!802130)) b!4691391))

(declare-fun m!5594761 () Bool)

(assert (=> d!1491069 m!5594761))

(declare-fun m!5594763 () Bool)

(assert (=> d!1491069 m!5594763))

(declare-fun m!5594765 () Bool)

(assert (=> b!4691390 m!5594765))

(assert (=> b!4691390 m!5594765))

(declare-fun m!5594767 () Bool)

(assert (=> b!4691390 m!5594767))

(assert (=> b!4691007 d!1491069))

(declare-fun d!1491071 () Bool)

(assert (=> d!1491071 (eq!1017 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851020 lt!1851025) lt!1851016) (+!2142 (addToMapMapFromBucket!1290 lt!1851025 lt!1851016) lt!1851020))))

(declare-fun lt!1851471 () Unit!124273)

(declare-fun choose!32613 (tuple2!53826 List!52545 ListMap!4969) Unit!124273)

(assert (=> d!1491071 (= lt!1851471 (choose!32613 lt!1851020 lt!1851025 lt!1851016))))

(assert (=> d!1491071 (noDuplicateKeys!1858 lt!1851025)))

(assert (=> d!1491071 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!266 lt!1851020 lt!1851025 lt!1851016) lt!1851471)))

(declare-fun bs!1087575 () Bool)

(assert (= bs!1087575 d!1491071))

(assert (=> bs!1087575 m!5594035))

(assert (=> bs!1087575 m!5594037))

(assert (=> bs!1087575 m!5594033))

(assert (=> bs!1087575 m!5594035))

(declare-fun m!5594769 () Bool)

(assert (=> bs!1087575 m!5594769))

(assert (=> bs!1087575 m!5594739))

(assert (=> bs!1087575 m!5594033))

(assert (=> bs!1087575 m!5594037))

(assert (=> bs!1087575 m!5594043))

(assert (=> b!4691007 d!1491071))

(declare-fun d!1491073 () Bool)

(assert (=> d!1491073 (= (head!9980 newBucket!218) (h!58670 newBucket!218))))

(assert (=> b!4691007 d!1491073))

(declare-fun d!1491075 () Bool)

(assert (=> d!1491075 (eq!1017 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851008 lt!1851023) lt!1851016) (+!2142 (addToMapMapFromBucket!1290 lt!1851023 lt!1851016) lt!1851008))))

(declare-fun lt!1851472 () Unit!124273)

(assert (=> d!1491075 (= lt!1851472 (choose!32613 lt!1851008 lt!1851023 lt!1851016))))

(assert (=> d!1491075 (noDuplicateKeys!1858 lt!1851023)))

(assert (=> d!1491075 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!266 lt!1851008 lt!1851023 lt!1851016) lt!1851472)))

(declare-fun bs!1087576 () Bool)

(assert (= bs!1087576 d!1491075))

(assert (=> bs!1087576 m!5594023))

(assert (=> bs!1087576 m!5594025))

(assert (=> bs!1087576 m!5594031))

(assert (=> bs!1087576 m!5594023))

(declare-fun m!5594771 () Bool)

(assert (=> bs!1087576 m!5594771))

(declare-fun m!5594773 () Bool)

(assert (=> bs!1087576 m!5594773))

(assert (=> bs!1087576 m!5594031))

(assert (=> bs!1087576 m!5594025))

(assert (=> bs!1087576 m!5594041))

(assert (=> b!4691007 d!1491075))

(declare-fun bs!1087577 () Bool)

(declare-fun d!1491077 () Bool)

(assert (= bs!1087577 (and d!1491077 d!1490911)))

(declare-fun lambda!207554 () Int)

(assert (=> bs!1087577 (= lambda!207554 lambda!207439)))

(declare-fun bs!1087578 () Bool)

(assert (= bs!1087578 (and d!1491077 d!1491069)))

(assert (=> bs!1087578 (= lambda!207554 lambda!207553)))

(declare-fun bs!1087579 () Bool)

(assert (= bs!1087579 (and d!1491077 d!1490967)))

(assert (=> bs!1087579 (= lambda!207554 lambda!207501)))

(declare-fun bs!1087580 () Bool)

(assert (= bs!1087580 (and d!1491077 start!474660)))

(assert (=> bs!1087580 (= lambda!207554 lambda!207427)))

(declare-fun bs!1087581 () Bool)

(assert (= bs!1087581 (and d!1491077 d!1490935)))

(assert (=> bs!1087581 (= lambda!207554 lambda!207492)))

(declare-fun bs!1087582 () Bool)

(assert (= bs!1087582 (and d!1491077 d!1491049)))

(assert (=> bs!1087582 (= lambda!207554 lambda!207552)))

(declare-fun lt!1851473 () ListMap!4969)

(assert (=> d!1491077 (invariantList!1414 (toList!5605 lt!1851473))))

(declare-fun e!2926754 () ListMap!4969)

(assert (=> d!1491077 (= lt!1851473 e!2926754)))

(declare-fun c!802131 () Bool)

(assert (=> d!1491077 (= c!802131 ((_ is Cons!52422) (Cons!52422 lt!1851007 (t!359726 (toList!5606 lm!2023)))))))

(assert (=> d!1491077 (forall!11329 (Cons!52422 lt!1851007 (t!359726 (toList!5606 lm!2023))) lambda!207554)))

(assert (=> d!1491077 (= (extractMap!1884 (Cons!52422 lt!1851007 (t!359726 (toList!5606 lm!2023)))) lt!1851473)))

(declare-fun b!4691392 () Bool)

(assert (=> b!4691392 (= e!2926754 (addToMapMapFromBucket!1290 (_2!30208 (h!58671 (Cons!52422 lt!1851007 (t!359726 (toList!5606 lm!2023))))) (extractMap!1884 (t!359726 (Cons!52422 lt!1851007 (t!359726 (toList!5606 lm!2023)))))))))

(declare-fun b!4691393 () Bool)

(assert (=> b!4691393 (= e!2926754 (ListMap!4970 Nil!52421))))

(assert (= (and d!1491077 c!802131) b!4691392))

(assert (= (and d!1491077 (not c!802131)) b!4691393))

(declare-fun m!5594775 () Bool)

(assert (=> d!1491077 m!5594775))

(declare-fun m!5594777 () Bool)

(assert (=> d!1491077 m!5594777))

(declare-fun m!5594779 () Bool)

(assert (=> b!4691392 m!5594779))

(assert (=> b!4691392 m!5594779))

(declare-fun m!5594781 () Bool)

(assert (=> b!4691392 m!5594781))

(assert (=> b!4691007 d!1491077))

(declare-fun bs!1087583 () Bool)

(declare-fun b!4691396 () Bool)

(assert (= bs!1087583 (and b!4691396 d!1490913)))

(declare-fun lambda!207555 () Int)

(assert (=> bs!1087583 (not (= lambda!207555 lambda!207440))))

(declare-fun bs!1087584 () Bool)

(assert (= bs!1087584 (and b!4691396 d!1490893)))

(assert (=> bs!1087584 (not (= lambda!207555 lambda!207433))))

(declare-fun bs!1087585 () Bool)

(assert (= bs!1087585 (and b!4691396 b!4691375)))

(assert (=> bs!1087585 (= lambda!207555 lambda!207548)))

(declare-fun bs!1087586 () Bool)

(assert (= bs!1087586 (and b!4691396 b!4691373)))

(assert (=> bs!1087586 (= lambda!207555 lambda!207549)))

(declare-fun bs!1087587 () Bool)

(assert (= bs!1087587 (and b!4691396 d!1490999)))

(assert (=> bs!1087587 (= (= lt!1851016 lt!1851458) (= lambda!207555 lambda!207551))))

(assert (=> bs!1087586 (= (= lt!1851016 lt!1851456) (= lambda!207555 lambda!207550))))

(assert (=> b!4691396 true))

(declare-fun bs!1087588 () Bool)

(declare-fun b!4691394 () Bool)

(assert (= bs!1087588 (and b!4691394 d!1490913)))

(declare-fun lambda!207556 () Int)

(assert (=> bs!1087588 (not (= lambda!207556 lambda!207440))))

(declare-fun bs!1087589 () Bool)

(assert (= bs!1087589 (and b!4691394 d!1490893)))

(assert (=> bs!1087589 (not (= lambda!207556 lambda!207433))))

(declare-fun bs!1087590 () Bool)

(assert (= bs!1087590 (and b!4691394 b!4691375)))

(assert (=> bs!1087590 (= lambda!207556 lambda!207548)))

(declare-fun bs!1087591 () Bool)

(assert (= bs!1087591 (and b!4691394 b!4691396)))

(assert (=> bs!1087591 (= lambda!207556 lambda!207555)))

(declare-fun bs!1087592 () Bool)

(assert (= bs!1087592 (and b!4691394 b!4691373)))

(assert (=> bs!1087592 (= lambda!207556 lambda!207549)))

(declare-fun bs!1087593 () Bool)

(assert (= bs!1087593 (and b!4691394 d!1490999)))

(assert (=> bs!1087593 (= (= lt!1851016 lt!1851458) (= lambda!207556 lambda!207551))))

(assert (=> bs!1087592 (= (= lt!1851016 lt!1851456) (= lambda!207556 lambda!207550))))

(assert (=> b!4691394 true))

(declare-fun lambda!207557 () Int)

(assert (=> bs!1087588 (not (= lambda!207557 lambda!207440))))

(assert (=> bs!1087589 (not (= lambda!207557 lambda!207433))))

(declare-fun lt!1851489 () ListMap!4969)

(assert (=> bs!1087590 (= (= lt!1851489 lt!1851016) (= lambda!207557 lambda!207548))))

(assert (=> bs!1087591 (= (= lt!1851489 lt!1851016) (= lambda!207557 lambda!207555))))

(assert (=> bs!1087592 (= (= lt!1851489 lt!1851016) (= lambda!207557 lambda!207549))))

(assert (=> bs!1087593 (= (= lt!1851489 lt!1851458) (= lambda!207557 lambda!207551))))

(assert (=> b!4691394 (= (= lt!1851489 lt!1851016) (= lambda!207557 lambda!207556))))

(assert (=> bs!1087592 (= (= lt!1851489 lt!1851456) (= lambda!207557 lambda!207550))))

(assert (=> b!4691394 true))

(declare-fun bs!1087594 () Bool)

(declare-fun d!1491079 () Bool)

(assert (= bs!1087594 (and d!1491079 d!1490913)))

(declare-fun lambda!207558 () Int)

(assert (=> bs!1087594 (not (= lambda!207558 lambda!207440))))

(declare-fun bs!1087595 () Bool)

(assert (= bs!1087595 (and d!1491079 b!4691394)))

(declare-fun lt!1851491 () ListMap!4969)

(assert (=> bs!1087595 (= (= lt!1851491 lt!1851489) (= lambda!207558 lambda!207557))))

(declare-fun bs!1087596 () Bool)

(assert (= bs!1087596 (and d!1491079 d!1490893)))

(assert (=> bs!1087596 (not (= lambda!207558 lambda!207433))))

(declare-fun bs!1087597 () Bool)

(assert (= bs!1087597 (and d!1491079 b!4691375)))

(assert (=> bs!1087597 (= (= lt!1851491 lt!1851016) (= lambda!207558 lambda!207548))))

(declare-fun bs!1087598 () Bool)

(assert (= bs!1087598 (and d!1491079 b!4691396)))

(assert (=> bs!1087598 (= (= lt!1851491 lt!1851016) (= lambda!207558 lambda!207555))))

(declare-fun bs!1087599 () Bool)

(assert (= bs!1087599 (and d!1491079 b!4691373)))

(assert (=> bs!1087599 (= (= lt!1851491 lt!1851016) (= lambda!207558 lambda!207549))))

(declare-fun bs!1087600 () Bool)

(assert (= bs!1087600 (and d!1491079 d!1490999)))

(assert (=> bs!1087600 (= (= lt!1851491 lt!1851458) (= lambda!207558 lambda!207551))))

(assert (=> bs!1087595 (= (= lt!1851491 lt!1851016) (= lambda!207558 lambda!207556))))

(assert (=> bs!1087599 (= (= lt!1851491 lt!1851456) (= lambda!207558 lambda!207550))))

(assert (=> d!1491079 true))

(declare-fun e!2926756 () ListMap!4969)

(assert (=> b!4691394 (= e!2926756 lt!1851489)))

(declare-fun lt!1851480 () ListMap!4969)

(assert (=> b!4691394 (= lt!1851480 (+!2142 lt!1851016 (h!58670 lt!1851023)))))

(assert (=> b!4691394 (= lt!1851489 (addToMapMapFromBucket!1290 (t!359725 lt!1851023) (+!2142 lt!1851016 (h!58670 lt!1851023))))))

(declare-fun lt!1851479 () Unit!124273)

(declare-fun call!327897 () Unit!124273)

(assert (=> b!4691394 (= lt!1851479 call!327897)))

(assert (=> b!4691394 (forall!11331 (toList!5605 lt!1851016) lambda!207556)))

(declare-fun lt!1851487 () Unit!124273)

(assert (=> b!4691394 (= lt!1851487 lt!1851479)))

(assert (=> b!4691394 (forall!11331 (toList!5605 lt!1851480) lambda!207557)))

(declare-fun lt!1851482 () Unit!124273)

(declare-fun Unit!124337 () Unit!124273)

(assert (=> b!4691394 (= lt!1851482 Unit!124337)))

(assert (=> b!4691394 (forall!11331 (t!359725 lt!1851023) lambda!207557)))

(declare-fun lt!1851477 () Unit!124273)

(declare-fun Unit!124338 () Unit!124273)

(assert (=> b!4691394 (= lt!1851477 Unit!124338)))

(declare-fun lt!1851476 () Unit!124273)

(declare-fun Unit!124339 () Unit!124273)

(assert (=> b!4691394 (= lt!1851476 Unit!124339)))

(declare-fun lt!1851481 () Unit!124273)

(assert (=> b!4691394 (= lt!1851481 (forallContained!3438 (toList!5605 lt!1851480) lambda!207557 (h!58670 lt!1851023)))))

(assert (=> b!4691394 (contains!15628 lt!1851480 (_1!30207 (h!58670 lt!1851023)))))

(declare-fun lt!1851494 () Unit!124273)

(declare-fun Unit!124340 () Unit!124273)

(assert (=> b!4691394 (= lt!1851494 Unit!124340)))

(assert (=> b!4691394 (contains!15628 lt!1851489 (_1!30207 (h!58670 lt!1851023)))))

(declare-fun lt!1851486 () Unit!124273)

(declare-fun Unit!124341 () Unit!124273)

(assert (=> b!4691394 (= lt!1851486 Unit!124341)))

(assert (=> b!4691394 (forall!11331 lt!1851023 lambda!207557)))

(declare-fun lt!1851488 () Unit!124273)

(declare-fun Unit!124342 () Unit!124273)

(assert (=> b!4691394 (= lt!1851488 Unit!124342)))

(declare-fun call!327895 () Bool)

(assert (=> b!4691394 call!327895))

(declare-fun lt!1851484 () Unit!124273)

(declare-fun Unit!124343 () Unit!124273)

(assert (=> b!4691394 (= lt!1851484 Unit!124343)))

(declare-fun lt!1851478 () Unit!124273)

(declare-fun Unit!124344 () Unit!124273)

(assert (=> b!4691394 (= lt!1851478 Unit!124344)))

(declare-fun lt!1851493 () Unit!124273)

(assert (=> b!4691394 (= lt!1851493 (addForallContainsKeyThenBeforeAdding!701 lt!1851016 lt!1851489 (_1!30207 (h!58670 lt!1851023)) (_2!30207 (h!58670 lt!1851023))))))

(declare-fun call!327896 () Bool)

(assert (=> b!4691394 call!327896))

(declare-fun lt!1851483 () Unit!124273)

(assert (=> b!4691394 (= lt!1851483 lt!1851493)))

(assert (=> b!4691394 (forall!11331 (toList!5605 lt!1851016) lambda!207557)))

(declare-fun lt!1851475 () Unit!124273)

(declare-fun Unit!124345 () Unit!124273)

(assert (=> b!4691394 (= lt!1851475 Unit!124345)))

(declare-fun res!1978946 () Bool)

(assert (=> b!4691394 (= res!1978946 (forall!11331 lt!1851023 lambda!207557))))

(declare-fun e!2926757 () Bool)

(assert (=> b!4691394 (=> (not res!1978946) (not e!2926757))))

(assert (=> b!4691394 e!2926757))

(declare-fun lt!1851492 () Unit!124273)

(declare-fun Unit!124346 () Unit!124273)

(assert (=> b!4691394 (= lt!1851492 Unit!124346)))

(declare-fun b!4691395 () Bool)

(declare-fun res!1978945 () Bool)

(declare-fun e!2926755 () Bool)

(assert (=> b!4691395 (=> (not res!1978945) (not e!2926755))))

(assert (=> b!4691395 (= res!1978945 (forall!11331 (toList!5605 lt!1851016) lambda!207558))))

(declare-fun bm!327890 () Bool)

(declare-fun c!802132 () Bool)

(assert (=> bm!327890 (= call!327895 (forall!11331 (ite c!802132 (toList!5605 lt!1851016) (toList!5605 lt!1851480)) (ite c!802132 lambda!207555 lambda!207557)))))

(assert (=> b!4691396 (= e!2926756 lt!1851016)))

(declare-fun lt!1851474 () Unit!124273)

(assert (=> b!4691396 (= lt!1851474 call!327897)))

(assert (=> b!4691396 call!327896))

(declare-fun lt!1851485 () Unit!124273)

(assert (=> b!4691396 (= lt!1851485 lt!1851474)))

(assert (=> b!4691396 call!327895))

(declare-fun lt!1851490 () Unit!124273)

(declare-fun Unit!124347 () Unit!124273)

(assert (=> b!4691396 (= lt!1851490 Unit!124347)))

(declare-fun bm!327891 () Bool)

(assert (=> bm!327891 (= call!327897 (lemmaContainsAllItsOwnKeys!702 lt!1851016))))

(declare-fun b!4691397 () Bool)

(assert (=> b!4691397 (= e!2926755 (invariantList!1414 (toList!5605 lt!1851491)))))

(declare-fun b!4691398 () Bool)

(assert (=> b!4691398 (= e!2926757 (forall!11331 (toList!5605 lt!1851016) lambda!207557))))

(assert (=> d!1491079 e!2926755))

(declare-fun res!1978947 () Bool)

(assert (=> d!1491079 (=> (not res!1978947) (not e!2926755))))

(assert (=> d!1491079 (= res!1978947 (forall!11331 lt!1851023 lambda!207558))))

(assert (=> d!1491079 (= lt!1851491 e!2926756)))

(assert (=> d!1491079 (= c!802132 ((_ is Nil!52421) lt!1851023))))

(assert (=> d!1491079 (noDuplicateKeys!1858 lt!1851023)))

(assert (=> d!1491079 (= (addToMapMapFromBucket!1290 lt!1851023 lt!1851016) lt!1851491)))

(declare-fun bm!327892 () Bool)

(assert (=> bm!327892 (= call!327896 (forall!11331 (toList!5605 lt!1851016) (ite c!802132 lambda!207555 lambda!207557)))))

(assert (= (and d!1491079 c!802132) b!4691396))

(assert (= (and d!1491079 (not c!802132)) b!4691394))

(assert (= (and b!4691394 res!1978946) b!4691398))

(assert (= (or b!4691396 b!4691394) bm!327891))

(assert (= (or b!4691396 b!4691394) bm!327890))

(assert (= (or b!4691396 b!4691394) bm!327892))

(assert (= (and d!1491079 res!1978947) b!4691395))

(assert (= (and b!4691395 res!1978945) b!4691397))

(declare-fun m!5594783 () Bool)

(assert (=> b!4691398 m!5594783))

(declare-fun m!5594785 () Bool)

(assert (=> b!4691394 m!5594785))

(declare-fun m!5594787 () Bool)

(assert (=> b!4691394 m!5594787))

(declare-fun m!5594789 () Bool)

(assert (=> b!4691394 m!5594789))

(declare-fun m!5594791 () Bool)

(assert (=> b!4691394 m!5594791))

(declare-fun m!5594793 () Bool)

(assert (=> b!4691394 m!5594793))

(declare-fun m!5594795 () Bool)

(assert (=> b!4691394 m!5594795))

(assert (=> b!4691394 m!5594793))

(declare-fun m!5594797 () Bool)

(assert (=> b!4691394 m!5594797))

(declare-fun m!5594799 () Bool)

(assert (=> b!4691394 m!5594799))

(assert (=> b!4691394 m!5594783))

(assert (=> b!4691394 m!5594787))

(declare-fun m!5594801 () Bool)

(assert (=> b!4691394 m!5594801))

(declare-fun m!5594803 () Bool)

(assert (=> b!4691394 m!5594803))

(declare-fun m!5594805 () Bool)

(assert (=> bm!327890 m!5594805))

(declare-fun m!5594807 () Bool)

(assert (=> bm!327892 m!5594807))

(declare-fun m!5594809 () Bool)

(assert (=> b!4691395 m!5594809))

(assert (=> bm!327891 m!5594715))

(declare-fun m!5594811 () Bool)

(assert (=> b!4691397 m!5594811))

(declare-fun m!5594813 () Bool)

(assert (=> d!1491079 m!5594813))

(assert (=> d!1491079 m!5594773))

(assert (=> b!4691007 d!1491079))

(declare-fun bs!1087601 () Bool)

(declare-fun b!4691401 () Bool)

(assert (= bs!1087601 (and b!4691401 d!1490913)))

(declare-fun lambda!207559 () Int)

(assert (=> bs!1087601 (not (= lambda!207559 lambda!207440))))

(declare-fun bs!1087602 () Bool)

(assert (= bs!1087602 (and b!4691401 b!4691394)))

(assert (=> bs!1087602 (= (= lt!1851016 lt!1851489) (= lambda!207559 lambda!207557))))

(declare-fun bs!1087603 () Bool)

(assert (= bs!1087603 (and b!4691401 d!1491079)))

(assert (=> bs!1087603 (= (= lt!1851016 lt!1851491) (= lambda!207559 lambda!207558))))

(declare-fun bs!1087604 () Bool)

(assert (= bs!1087604 (and b!4691401 d!1490893)))

(assert (=> bs!1087604 (not (= lambda!207559 lambda!207433))))

(declare-fun bs!1087605 () Bool)

(assert (= bs!1087605 (and b!4691401 b!4691375)))

(assert (=> bs!1087605 (= lambda!207559 lambda!207548)))

(declare-fun bs!1087606 () Bool)

(assert (= bs!1087606 (and b!4691401 b!4691396)))

(assert (=> bs!1087606 (= lambda!207559 lambda!207555)))

(declare-fun bs!1087607 () Bool)

(assert (= bs!1087607 (and b!4691401 b!4691373)))

(assert (=> bs!1087607 (= lambda!207559 lambda!207549)))

(declare-fun bs!1087608 () Bool)

(assert (= bs!1087608 (and b!4691401 d!1490999)))

(assert (=> bs!1087608 (= (= lt!1851016 lt!1851458) (= lambda!207559 lambda!207551))))

(assert (=> bs!1087602 (= lambda!207559 lambda!207556)))

(assert (=> bs!1087607 (= (= lt!1851016 lt!1851456) (= lambda!207559 lambda!207550))))

(assert (=> b!4691401 true))

(declare-fun bs!1087609 () Bool)

(declare-fun b!4691399 () Bool)

(assert (= bs!1087609 (and b!4691399 d!1490913)))

(declare-fun lambda!207560 () Int)

(assert (=> bs!1087609 (not (= lambda!207560 lambda!207440))))

(declare-fun bs!1087610 () Bool)

(assert (= bs!1087610 (and b!4691399 b!4691394)))

(assert (=> bs!1087610 (= (= lt!1851016 lt!1851489) (= lambda!207560 lambda!207557))))

(declare-fun bs!1087611 () Bool)

(assert (= bs!1087611 (and b!4691399 d!1490893)))

(assert (=> bs!1087611 (not (= lambda!207560 lambda!207433))))

(declare-fun bs!1087612 () Bool)

(assert (= bs!1087612 (and b!4691399 b!4691375)))

(assert (=> bs!1087612 (= lambda!207560 lambda!207548)))

(declare-fun bs!1087613 () Bool)

(assert (= bs!1087613 (and b!4691399 b!4691396)))

(assert (=> bs!1087613 (= lambda!207560 lambda!207555)))

(declare-fun bs!1087614 () Bool)

(assert (= bs!1087614 (and b!4691399 b!4691373)))

(assert (=> bs!1087614 (= lambda!207560 lambda!207549)))

(declare-fun bs!1087615 () Bool)

(assert (= bs!1087615 (and b!4691399 d!1490999)))

(assert (=> bs!1087615 (= (= lt!1851016 lt!1851458) (= lambda!207560 lambda!207551))))

(declare-fun bs!1087616 () Bool)

(assert (= bs!1087616 (and b!4691399 d!1491079)))

(assert (=> bs!1087616 (= (= lt!1851016 lt!1851491) (= lambda!207560 lambda!207558))))

(declare-fun bs!1087617 () Bool)

(assert (= bs!1087617 (and b!4691399 b!4691401)))

(assert (=> bs!1087617 (= lambda!207560 lambda!207559)))

(assert (=> bs!1087610 (= lambda!207560 lambda!207556)))

(assert (=> bs!1087614 (= (= lt!1851016 lt!1851456) (= lambda!207560 lambda!207550))))

(assert (=> b!4691399 true))

(declare-fun lambda!207561 () Int)

(assert (=> bs!1087609 (not (= lambda!207561 lambda!207440))))

(declare-fun lt!1851510 () ListMap!4969)

(assert (=> bs!1087610 (= (= lt!1851510 lt!1851489) (= lambda!207561 lambda!207557))))

(assert (=> bs!1087611 (not (= lambda!207561 lambda!207433))))

(assert (=> bs!1087612 (= (= lt!1851510 lt!1851016) (= lambda!207561 lambda!207548))))

(assert (=> bs!1087613 (= (= lt!1851510 lt!1851016) (= lambda!207561 lambda!207555))))

(assert (=> bs!1087614 (= (= lt!1851510 lt!1851016) (= lambda!207561 lambda!207549))))

(assert (=> bs!1087616 (= (= lt!1851510 lt!1851491) (= lambda!207561 lambda!207558))))

(assert (=> bs!1087617 (= (= lt!1851510 lt!1851016) (= lambda!207561 lambda!207559))))

(assert (=> bs!1087615 (= (= lt!1851510 lt!1851458) (= lambda!207561 lambda!207551))))

(assert (=> b!4691399 (= (= lt!1851510 lt!1851016) (= lambda!207561 lambda!207560))))

(assert (=> bs!1087610 (= (= lt!1851510 lt!1851016) (= lambda!207561 lambda!207556))))

(assert (=> bs!1087614 (= (= lt!1851510 lt!1851456) (= lambda!207561 lambda!207550))))

(assert (=> b!4691399 true))

(declare-fun bs!1087618 () Bool)

(declare-fun d!1491081 () Bool)

(assert (= bs!1087618 (and d!1491081 d!1490913)))

(declare-fun lambda!207562 () Int)

(assert (=> bs!1087618 (not (= lambda!207562 lambda!207440))))

(declare-fun bs!1087619 () Bool)

(assert (= bs!1087619 (and d!1491081 b!4691394)))

(declare-fun lt!1851512 () ListMap!4969)

(assert (=> bs!1087619 (= (= lt!1851512 lt!1851489) (= lambda!207562 lambda!207557))))

(declare-fun bs!1087620 () Bool)

(assert (= bs!1087620 (and d!1491081 d!1490893)))

(assert (=> bs!1087620 (not (= lambda!207562 lambda!207433))))

(declare-fun bs!1087621 () Bool)

(assert (= bs!1087621 (and d!1491081 b!4691375)))

(assert (=> bs!1087621 (= (= lt!1851512 lt!1851016) (= lambda!207562 lambda!207548))))

(declare-fun bs!1087622 () Bool)

(assert (= bs!1087622 (and d!1491081 b!4691399)))

(assert (=> bs!1087622 (= (= lt!1851512 lt!1851510) (= lambda!207562 lambda!207561))))

(declare-fun bs!1087623 () Bool)

(assert (= bs!1087623 (and d!1491081 b!4691396)))

(assert (=> bs!1087623 (= (= lt!1851512 lt!1851016) (= lambda!207562 lambda!207555))))

(declare-fun bs!1087624 () Bool)

(assert (= bs!1087624 (and d!1491081 b!4691373)))

(assert (=> bs!1087624 (= (= lt!1851512 lt!1851016) (= lambda!207562 lambda!207549))))

(declare-fun bs!1087625 () Bool)

(assert (= bs!1087625 (and d!1491081 d!1491079)))

(assert (=> bs!1087625 (= (= lt!1851512 lt!1851491) (= lambda!207562 lambda!207558))))

(declare-fun bs!1087626 () Bool)

(assert (= bs!1087626 (and d!1491081 b!4691401)))

(assert (=> bs!1087626 (= (= lt!1851512 lt!1851016) (= lambda!207562 lambda!207559))))

(declare-fun bs!1087627 () Bool)

(assert (= bs!1087627 (and d!1491081 d!1490999)))

(assert (=> bs!1087627 (= (= lt!1851512 lt!1851458) (= lambda!207562 lambda!207551))))

(assert (=> bs!1087622 (= (= lt!1851512 lt!1851016) (= lambda!207562 lambda!207560))))

(assert (=> bs!1087619 (= (= lt!1851512 lt!1851016) (= lambda!207562 lambda!207556))))

(assert (=> bs!1087624 (= (= lt!1851512 lt!1851456) (= lambda!207562 lambda!207550))))

(assert (=> d!1491081 true))

(declare-fun e!2926759 () ListMap!4969)

(assert (=> b!4691399 (= e!2926759 lt!1851510)))

(declare-fun lt!1851501 () ListMap!4969)

(assert (=> b!4691399 (= lt!1851501 (+!2142 lt!1851016 (h!58670 (Cons!52421 lt!1851020 lt!1851025))))))

(assert (=> b!4691399 (= lt!1851510 (addToMapMapFromBucket!1290 (t!359725 (Cons!52421 lt!1851020 lt!1851025)) (+!2142 lt!1851016 (h!58670 (Cons!52421 lt!1851020 lt!1851025)))))))

(declare-fun lt!1851500 () Unit!124273)

(declare-fun call!327900 () Unit!124273)

(assert (=> b!4691399 (= lt!1851500 call!327900)))

(assert (=> b!4691399 (forall!11331 (toList!5605 lt!1851016) lambda!207560)))

(declare-fun lt!1851508 () Unit!124273)

(assert (=> b!4691399 (= lt!1851508 lt!1851500)))

(assert (=> b!4691399 (forall!11331 (toList!5605 lt!1851501) lambda!207561)))

(declare-fun lt!1851503 () Unit!124273)

(declare-fun Unit!124359 () Unit!124273)

(assert (=> b!4691399 (= lt!1851503 Unit!124359)))

(assert (=> b!4691399 (forall!11331 (t!359725 (Cons!52421 lt!1851020 lt!1851025)) lambda!207561)))

(declare-fun lt!1851498 () Unit!124273)

(declare-fun Unit!124360 () Unit!124273)

(assert (=> b!4691399 (= lt!1851498 Unit!124360)))

(declare-fun lt!1851497 () Unit!124273)

(declare-fun Unit!124361 () Unit!124273)

(assert (=> b!4691399 (= lt!1851497 Unit!124361)))

(declare-fun lt!1851502 () Unit!124273)

(assert (=> b!4691399 (= lt!1851502 (forallContained!3438 (toList!5605 lt!1851501) lambda!207561 (h!58670 (Cons!52421 lt!1851020 lt!1851025))))))

(assert (=> b!4691399 (contains!15628 lt!1851501 (_1!30207 (h!58670 (Cons!52421 lt!1851020 lt!1851025))))))

(declare-fun lt!1851515 () Unit!124273)

(declare-fun Unit!124362 () Unit!124273)

(assert (=> b!4691399 (= lt!1851515 Unit!124362)))

(assert (=> b!4691399 (contains!15628 lt!1851510 (_1!30207 (h!58670 (Cons!52421 lt!1851020 lt!1851025))))))

(declare-fun lt!1851507 () Unit!124273)

(declare-fun Unit!124363 () Unit!124273)

(assert (=> b!4691399 (= lt!1851507 Unit!124363)))

(assert (=> b!4691399 (forall!11331 (Cons!52421 lt!1851020 lt!1851025) lambda!207561)))

(declare-fun lt!1851509 () Unit!124273)

(declare-fun Unit!124364 () Unit!124273)

(assert (=> b!4691399 (= lt!1851509 Unit!124364)))

(declare-fun call!327898 () Bool)

(assert (=> b!4691399 call!327898))

(declare-fun lt!1851505 () Unit!124273)

(declare-fun Unit!124365 () Unit!124273)

(assert (=> b!4691399 (= lt!1851505 Unit!124365)))

(declare-fun lt!1851499 () Unit!124273)

(declare-fun Unit!124366 () Unit!124273)

(assert (=> b!4691399 (= lt!1851499 Unit!124366)))

(declare-fun lt!1851514 () Unit!124273)

(assert (=> b!4691399 (= lt!1851514 (addForallContainsKeyThenBeforeAdding!701 lt!1851016 lt!1851510 (_1!30207 (h!58670 (Cons!52421 lt!1851020 lt!1851025))) (_2!30207 (h!58670 (Cons!52421 lt!1851020 lt!1851025)))))))

(declare-fun call!327899 () Bool)

(assert (=> b!4691399 call!327899))

(declare-fun lt!1851504 () Unit!124273)

(assert (=> b!4691399 (= lt!1851504 lt!1851514)))

(assert (=> b!4691399 (forall!11331 (toList!5605 lt!1851016) lambda!207561)))

(declare-fun lt!1851496 () Unit!124273)

(declare-fun Unit!124367 () Unit!124273)

(assert (=> b!4691399 (= lt!1851496 Unit!124367)))

(declare-fun res!1978949 () Bool)

(assert (=> b!4691399 (= res!1978949 (forall!11331 (Cons!52421 lt!1851020 lt!1851025) lambda!207561))))

(declare-fun e!2926760 () Bool)

(assert (=> b!4691399 (=> (not res!1978949) (not e!2926760))))

(assert (=> b!4691399 e!2926760))

(declare-fun lt!1851513 () Unit!124273)

(declare-fun Unit!124368 () Unit!124273)

(assert (=> b!4691399 (= lt!1851513 Unit!124368)))

(declare-fun b!4691400 () Bool)

(declare-fun res!1978948 () Bool)

(declare-fun e!2926758 () Bool)

(assert (=> b!4691400 (=> (not res!1978948) (not e!2926758))))

(assert (=> b!4691400 (= res!1978948 (forall!11331 (toList!5605 lt!1851016) lambda!207562))))

(declare-fun c!802133 () Bool)

(declare-fun bm!327893 () Bool)

(assert (=> bm!327893 (= call!327898 (forall!11331 (ite c!802133 (toList!5605 lt!1851016) (toList!5605 lt!1851501)) (ite c!802133 lambda!207559 lambda!207561)))))

(assert (=> b!4691401 (= e!2926759 lt!1851016)))

(declare-fun lt!1851495 () Unit!124273)

(assert (=> b!4691401 (= lt!1851495 call!327900)))

(assert (=> b!4691401 call!327899))

(declare-fun lt!1851506 () Unit!124273)

(assert (=> b!4691401 (= lt!1851506 lt!1851495)))

(assert (=> b!4691401 call!327898))

(declare-fun lt!1851511 () Unit!124273)

(declare-fun Unit!124369 () Unit!124273)

(assert (=> b!4691401 (= lt!1851511 Unit!124369)))

(declare-fun bm!327894 () Bool)

(assert (=> bm!327894 (= call!327900 (lemmaContainsAllItsOwnKeys!702 lt!1851016))))

(declare-fun b!4691402 () Bool)

(assert (=> b!4691402 (= e!2926758 (invariantList!1414 (toList!5605 lt!1851512)))))

(declare-fun b!4691403 () Bool)

(assert (=> b!4691403 (= e!2926760 (forall!11331 (toList!5605 lt!1851016) lambda!207561))))

(assert (=> d!1491081 e!2926758))

(declare-fun res!1978950 () Bool)

(assert (=> d!1491081 (=> (not res!1978950) (not e!2926758))))

(assert (=> d!1491081 (= res!1978950 (forall!11331 (Cons!52421 lt!1851020 lt!1851025) lambda!207562))))

(assert (=> d!1491081 (= lt!1851512 e!2926759)))

(assert (=> d!1491081 (= c!802133 ((_ is Nil!52421) (Cons!52421 lt!1851020 lt!1851025)))))

(assert (=> d!1491081 (noDuplicateKeys!1858 (Cons!52421 lt!1851020 lt!1851025))))

(assert (=> d!1491081 (= (addToMapMapFromBucket!1290 (Cons!52421 lt!1851020 lt!1851025) lt!1851016) lt!1851512)))

(declare-fun bm!327895 () Bool)

(assert (=> bm!327895 (= call!327899 (forall!11331 (toList!5605 lt!1851016) (ite c!802133 lambda!207559 lambda!207561)))))

(assert (= (and d!1491081 c!802133) b!4691401))

(assert (= (and d!1491081 (not c!802133)) b!4691399))

(assert (= (and b!4691399 res!1978949) b!4691403))

(assert (= (or b!4691401 b!4691399) bm!327894))

(assert (= (or b!4691401 b!4691399) bm!327893))

(assert (= (or b!4691401 b!4691399) bm!327895))

(assert (= (and d!1491081 res!1978950) b!4691400))

(assert (= (and b!4691400 res!1978948) b!4691402))

(declare-fun m!5594815 () Bool)

(assert (=> b!4691403 m!5594815))

(declare-fun m!5594817 () Bool)

(assert (=> b!4691399 m!5594817))

(declare-fun m!5594819 () Bool)

(assert (=> b!4691399 m!5594819))

(declare-fun m!5594821 () Bool)

(assert (=> b!4691399 m!5594821))

(declare-fun m!5594823 () Bool)

(assert (=> b!4691399 m!5594823))

(declare-fun m!5594825 () Bool)

(assert (=> b!4691399 m!5594825))

(declare-fun m!5594827 () Bool)

(assert (=> b!4691399 m!5594827))

(assert (=> b!4691399 m!5594825))

(declare-fun m!5594829 () Bool)

(assert (=> b!4691399 m!5594829))

(declare-fun m!5594831 () Bool)

(assert (=> b!4691399 m!5594831))

(assert (=> b!4691399 m!5594815))

(assert (=> b!4691399 m!5594819))

(declare-fun m!5594833 () Bool)

(assert (=> b!4691399 m!5594833))

(declare-fun m!5594835 () Bool)

(assert (=> b!4691399 m!5594835))

(declare-fun m!5594837 () Bool)

(assert (=> bm!327893 m!5594837))

(declare-fun m!5594839 () Bool)

(assert (=> bm!327895 m!5594839))

(declare-fun m!5594841 () Bool)

(assert (=> b!4691400 m!5594841))

(assert (=> bm!327894 m!5594715))

(declare-fun m!5594843 () Bool)

(assert (=> b!4691402 m!5594843))

(declare-fun m!5594845 () Bool)

(assert (=> d!1491081 m!5594845))

(declare-fun m!5594847 () Bool)

(assert (=> d!1491081 m!5594847))

(assert (=> b!4691007 d!1491081))

(declare-fun d!1491083 () Bool)

(declare-fun e!2926761 () Bool)

(assert (=> d!1491083 e!2926761))

(declare-fun res!1978952 () Bool)

(assert (=> d!1491083 (=> (not res!1978952) (not e!2926761))))

(declare-fun lt!1851517 () ListMap!4969)

(assert (=> d!1491083 (= res!1978952 (contains!15628 lt!1851517 (_1!30207 (h!58670 oldBucket!34))))))

(declare-fun lt!1851519 () List!52545)

(assert (=> d!1491083 (= lt!1851517 (ListMap!4970 lt!1851519))))

(declare-fun lt!1851516 () Unit!124273)

(declare-fun lt!1851518 () Unit!124273)

(assert (=> d!1491083 (= lt!1851516 lt!1851518)))

(assert (=> d!1491083 (= (getValueByKey!1787 lt!1851519 (_1!30207 (h!58670 oldBucket!34))) (Some!12090 (_2!30207 (h!58670 oldBucket!34))))))

(assert (=> d!1491083 (= lt!1851518 (lemmaContainsTupThenGetReturnValue!1004 lt!1851519 (_1!30207 (h!58670 oldBucket!34)) (_2!30207 (h!58670 oldBucket!34))))))

(assert (=> d!1491083 (= lt!1851519 (insertNoDuplicatedKeys!512 (toList!5605 lt!1851013) (_1!30207 (h!58670 oldBucket!34)) (_2!30207 (h!58670 oldBucket!34))))))

(assert (=> d!1491083 (= (+!2142 lt!1851013 (h!58670 oldBucket!34)) lt!1851517)))

(declare-fun b!4691404 () Bool)

(declare-fun res!1978951 () Bool)

(assert (=> b!4691404 (=> (not res!1978951) (not e!2926761))))

(assert (=> b!4691404 (= res!1978951 (= (getValueByKey!1787 (toList!5605 lt!1851517) (_1!30207 (h!58670 oldBucket!34))) (Some!12090 (_2!30207 (h!58670 oldBucket!34)))))))

(declare-fun b!4691405 () Bool)

(assert (=> b!4691405 (= e!2926761 (contains!15634 (toList!5605 lt!1851517) (h!58670 oldBucket!34)))))

(assert (= (and d!1491083 res!1978952) b!4691404))

(assert (= (and b!4691404 res!1978951) b!4691405))

(declare-fun m!5594849 () Bool)

(assert (=> d!1491083 m!5594849))

(declare-fun m!5594851 () Bool)

(assert (=> d!1491083 m!5594851))

(declare-fun m!5594853 () Bool)

(assert (=> d!1491083 m!5594853))

(declare-fun m!5594855 () Bool)

(assert (=> d!1491083 m!5594855))

(declare-fun m!5594857 () Bool)

(assert (=> b!4691404 m!5594857))

(declare-fun m!5594859 () Bool)

(assert (=> b!4691405 m!5594859))

(assert (=> b!4691007 d!1491083))

(declare-fun d!1491085 () Bool)

(declare-fun e!2926762 () Bool)

(assert (=> d!1491085 e!2926762))

(declare-fun res!1978954 () Bool)

(assert (=> d!1491085 (=> (not res!1978954) (not e!2926762))))

(declare-fun lt!1851521 () ListMap!4969)

(assert (=> d!1491085 (= res!1978954 (contains!15628 lt!1851521 (_1!30207 lt!1851020)))))

(declare-fun lt!1851523 () List!52545)

(assert (=> d!1491085 (= lt!1851521 (ListMap!4970 lt!1851523))))

(declare-fun lt!1851520 () Unit!124273)

(declare-fun lt!1851522 () Unit!124273)

(assert (=> d!1491085 (= lt!1851520 lt!1851522)))

(assert (=> d!1491085 (= (getValueByKey!1787 lt!1851523 (_1!30207 lt!1851020)) (Some!12090 (_2!30207 lt!1851020)))))

(assert (=> d!1491085 (= lt!1851522 (lemmaContainsTupThenGetReturnValue!1004 lt!1851523 (_1!30207 lt!1851020) (_2!30207 lt!1851020)))))

(assert (=> d!1491085 (= lt!1851523 (insertNoDuplicatedKeys!512 (toList!5605 (addToMapMapFromBucket!1290 lt!1851025 lt!1851016)) (_1!30207 lt!1851020) (_2!30207 lt!1851020)))))

(assert (=> d!1491085 (= (+!2142 (addToMapMapFromBucket!1290 lt!1851025 lt!1851016) lt!1851020) lt!1851521)))

(declare-fun b!4691406 () Bool)

(declare-fun res!1978953 () Bool)

(assert (=> b!4691406 (=> (not res!1978953) (not e!2926762))))

(assert (=> b!4691406 (= res!1978953 (= (getValueByKey!1787 (toList!5605 lt!1851521) (_1!30207 lt!1851020)) (Some!12090 (_2!30207 lt!1851020))))))

(declare-fun b!4691407 () Bool)

(assert (=> b!4691407 (= e!2926762 (contains!15634 (toList!5605 lt!1851521) lt!1851020))))

(assert (= (and d!1491085 res!1978954) b!4691406))

(assert (= (and b!4691406 res!1978953) b!4691407))

(declare-fun m!5594861 () Bool)

(assert (=> d!1491085 m!5594861))

(declare-fun m!5594863 () Bool)

(assert (=> d!1491085 m!5594863))

(declare-fun m!5594865 () Bool)

(assert (=> d!1491085 m!5594865))

(declare-fun m!5594867 () Bool)

(assert (=> d!1491085 m!5594867))

(declare-fun m!5594869 () Bool)

(assert (=> b!4691406 m!5594869))

(declare-fun m!5594871 () Bool)

(assert (=> b!4691407 m!5594871))

(assert (=> b!4691007 d!1491085))

(declare-fun bs!1087628 () Bool)

(declare-fun b!4691410 () Bool)

(assert (= bs!1087628 (and b!4691410 d!1490913)))

(declare-fun lambda!207563 () Int)

(assert (=> bs!1087628 (not (= lambda!207563 lambda!207440))))

(declare-fun bs!1087629 () Bool)

(assert (= bs!1087629 (and b!4691410 d!1491081)))

(assert (=> bs!1087629 (= (= lt!1851016 lt!1851512) (= lambda!207563 lambda!207562))))

(declare-fun bs!1087630 () Bool)

(assert (= bs!1087630 (and b!4691410 b!4691394)))

(assert (=> bs!1087630 (= (= lt!1851016 lt!1851489) (= lambda!207563 lambda!207557))))

(declare-fun bs!1087631 () Bool)

(assert (= bs!1087631 (and b!4691410 d!1490893)))

(assert (=> bs!1087631 (not (= lambda!207563 lambda!207433))))

(declare-fun bs!1087632 () Bool)

(assert (= bs!1087632 (and b!4691410 b!4691375)))

(assert (=> bs!1087632 (= lambda!207563 lambda!207548)))

(declare-fun bs!1087633 () Bool)

(assert (= bs!1087633 (and b!4691410 b!4691399)))

(assert (=> bs!1087633 (= (= lt!1851016 lt!1851510) (= lambda!207563 lambda!207561))))

(declare-fun bs!1087634 () Bool)

(assert (= bs!1087634 (and b!4691410 b!4691396)))

(assert (=> bs!1087634 (= lambda!207563 lambda!207555)))

(declare-fun bs!1087635 () Bool)

(assert (= bs!1087635 (and b!4691410 b!4691373)))

(assert (=> bs!1087635 (= lambda!207563 lambda!207549)))

(declare-fun bs!1087636 () Bool)

(assert (= bs!1087636 (and b!4691410 d!1491079)))

(assert (=> bs!1087636 (= (= lt!1851016 lt!1851491) (= lambda!207563 lambda!207558))))

(declare-fun bs!1087637 () Bool)

(assert (= bs!1087637 (and b!4691410 b!4691401)))

(assert (=> bs!1087637 (= lambda!207563 lambda!207559)))

(declare-fun bs!1087638 () Bool)

(assert (= bs!1087638 (and b!4691410 d!1490999)))

(assert (=> bs!1087638 (= (= lt!1851016 lt!1851458) (= lambda!207563 lambda!207551))))

(assert (=> bs!1087633 (= lambda!207563 lambda!207560)))

(assert (=> bs!1087630 (= lambda!207563 lambda!207556)))

(assert (=> bs!1087635 (= (= lt!1851016 lt!1851456) (= lambda!207563 lambda!207550))))

(assert (=> b!4691410 true))

(declare-fun bs!1087639 () Bool)

(declare-fun b!4691408 () Bool)

(assert (= bs!1087639 (and b!4691408 d!1491081)))

(declare-fun lambda!207564 () Int)

(assert (=> bs!1087639 (= (= lt!1851016 lt!1851512) (= lambda!207564 lambda!207562))))

(declare-fun bs!1087640 () Bool)

(assert (= bs!1087640 (and b!4691408 b!4691394)))

(assert (=> bs!1087640 (= (= lt!1851016 lt!1851489) (= lambda!207564 lambda!207557))))

(declare-fun bs!1087641 () Bool)

(assert (= bs!1087641 (and b!4691408 d!1490893)))

(assert (=> bs!1087641 (not (= lambda!207564 lambda!207433))))

(declare-fun bs!1087642 () Bool)

(assert (= bs!1087642 (and b!4691408 b!4691375)))

(assert (=> bs!1087642 (= lambda!207564 lambda!207548)))

(declare-fun bs!1087643 () Bool)

(assert (= bs!1087643 (and b!4691408 b!4691399)))

(assert (=> bs!1087643 (= (= lt!1851016 lt!1851510) (= lambda!207564 lambda!207561))))

(declare-fun bs!1087644 () Bool)

(assert (= bs!1087644 (and b!4691408 b!4691396)))

(assert (=> bs!1087644 (= lambda!207564 lambda!207555)))

(declare-fun bs!1087645 () Bool)

(assert (= bs!1087645 (and b!4691408 b!4691373)))

(assert (=> bs!1087645 (= lambda!207564 lambda!207549)))

(declare-fun bs!1087646 () Bool)

(assert (= bs!1087646 (and b!4691408 b!4691410)))

(assert (=> bs!1087646 (= lambda!207564 lambda!207563)))

(declare-fun bs!1087647 () Bool)

(assert (= bs!1087647 (and b!4691408 d!1490913)))

(assert (=> bs!1087647 (not (= lambda!207564 lambda!207440))))

(declare-fun bs!1087648 () Bool)

(assert (= bs!1087648 (and b!4691408 d!1491079)))

(assert (=> bs!1087648 (= (= lt!1851016 lt!1851491) (= lambda!207564 lambda!207558))))

(declare-fun bs!1087649 () Bool)

(assert (= bs!1087649 (and b!4691408 b!4691401)))

(assert (=> bs!1087649 (= lambda!207564 lambda!207559)))

(declare-fun bs!1087650 () Bool)

(assert (= bs!1087650 (and b!4691408 d!1490999)))

(assert (=> bs!1087650 (= (= lt!1851016 lt!1851458) (= lambda!207564 lambda!207551))))

(assert (=> bs!1087643 (= lambda!207564 lambda!207560)))

(assert (=> bs!1087640 (= lambda!207564 lambda!207556)))

(assert (=> bs!1087645 (= (= lt!1851016 lt!1851456) (= lambda!207564 lambda!207550))))

(assert (=> b!4691408 true))

(declare-fun lambda!207565 () Int)

(declare-fun lt!1851539 () ListMap!4969)

(assert (=> bs!1087640 (= (= lt!1851539 lt!1851489) (= lambda!207565 lambda!207557))))

(assert (=> bs!1087641 (not (= lambda!207565 lambda!207433))))

(assert (=> bs!1087642 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207548))))

(assert (=> bs!1087643 (= (= lt!1851539 lt!1851510) (= lambda!207565 lambda!207561))))

(assert (=> bs!1087644 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207555))))

(assert (=> bs!1087645 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207549))))

(assert (=> bs!1087646 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207563))))

(assert (=> bs!1087647 (not (= lambda!207565 lambda!207440))))

(assert (=> b!4691408 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207564))))

(assert (=> bs!1087639 (= (= lt!1851539 lt!1851512) (= lambda!207565 lambda!207562))))

(assert (=> bs!1087648 (= (= lt!1851539 lt!1851491) (= lambda!207565 lambda!207558))))

(assert (=> bs!1087649 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207559))))

(assert (=> bs!1087650 (= (= lt!1851539 lt!1851458) (= lambda!207565 lambda!207551))))

(assert (=> bs!1087643 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207560))))

(assert (=> bs!1087640 (= (= lt!1851539 lt!1851016) (= lambda!207565 lambda!207556))))

(assert (=> bs!1087645 (= (= lt!1851539 lt!1851456) (= lambda!207565 lambda!207550))))

(assert (=> b!4691408 true))

(declare-fun bs!1087651 () Bool)

(declare-fun d!1491087 () Bool)

(assert (= bs!1087651 (and d!1491087 b!4691394)))

(declare-fun lt!1851541 () ListMap!4969)

(declare-fun lambda!207566 () Int)

(assert (=> bs!1087651 (= (= lt!1851541 lt!1851489) (= lambda!207566 lambda!207557))))

(declare-fun bs!1087652 () Bool)

(assert (= bs!1087652 (and d!1491087 b!4691375)))

(assert (=> bs!1087652 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207548))))

(declare-fun bs!1087653 () Bool)

(assert (= bs!1087653 (and d!1491087 b!4691399)))

(assert (=> bs!1087653 (= (= lt!1851541 lt!1851510) (= lambda!207566 lambda!207561))))

(declare-fun bs!1087654 () Bool)

(assert (= bs!1087654 (and d!1491087 b!4691396)))

(assert (=> bs!1087654 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207555))))

(declare-fun bs!1087655 () Bool)

(assert (= bs!1087655 (and d!1491087 b!4691373)))

(assert (=> bs!1087655 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207549))))

(declare-fun bs!1087656 () Bool)

(assert (= bs!1087656 (and d!1491087 b!4691410)))

(assert (=> bs!1087656 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207563))))

(declare-fun bs!1087657 () Bool)

(assert (= bs!1087657 (and d!1491087 d!1490913)))

(assert (=> bs!1087657 (not (= lambda!207566 lambda!207440))))

(declare-fun bs!1087658 () Bool)

(assert (= bs!1087658 (and d!1491087 b!4691408)))

(assert (=> bs!1087658 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207564))))

(declare-fun bs!1087659 () Bool)

(assert (= bs!1087659 (and d!1491087 d!1491081)))

(assert (=> bs!1087659 (= (= lt!1851541 lt!1851512) (= lambda!207566 lambda!207562))))

(declare-fun bs!1087660 () Bool)

(assert (= bs!1087660 (and d!1491087 d!1491079)))

(assert (=> bs!1087660 (= (= lt!1851541 lt!1851491) (= lambda!207566 lambda!207558))))

(declare-fun bs!1087661 () Bool)

(assert (= bs!1087661 (and d!1491087 b!4691401)))

(assert (=> bs!1087661 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207559))))

(assert (=> bs!1087658 (= (= lt!1851541 lt!1851539) (= lambda!207566 lambda!207565))))

(declare-fun bs!1087662 () Bool)

(assert (= bs!1087662 (and d!1491087 d!1490893)))

(assert (=> bs!1087662 (not (= lambda!207566 lambda!207433))))

(declare-fun bs!1087663 () Bool)

(assert (= bs!1087663 (and d!1491087 d!1490999)))

(assert (=> bs!1087663 (= (= lt!1851541 lt!1851458) (= lambda!207566 lambda!207551))))

(assert (=> bs!1087653 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207560))))

(assert (=> bs!1087651 (= (= lt!1851541 lt!1851016) (= lambda!207566 lambda!207556))))

(assert (=> bs!1087655 (= (= lt!1851541 lt!1851456) (= lambda!207566 lambda!207550))))

(assert (=> d!1491087 true))

(declare-fun e!2926764 () ListMap!4969)

(assert (=> b!4691408 (= e!2926764 lt!1851539)))

(declare-fun lt!1851530 () ListMap!4969)

(assert (=> b!4691408 (= lt!1851530 (+!2142 lt!1851016 (h!58670 (Cons!52421 lt!1851008 lt!1851023))))))

(assert (=> b!4691408 (= lt!1851539 (addToMapMapFromBucket!1290 (t!359725 (Cons!52421 lt!1851008 lt!1851023)) (+!2142 lt!1851016 (h!58670 (Cons!52421 lt!1851008 lt!1851023)))))))

(declare-fun lt!1851529 () Unit!124273)

(declare-fun call!327903 () Unit!124273)

(assert (=> b!4691408 (= lt!1851529 call!327903)))

(assert (=> b!4691408 (forall!11331 (toList!5605 lt!1851016) lambda!207564)))

(declare-fun lt!1851537 () Unit!124273)

(assert (=> b!4691408 (= lt!1851537 lt!1851529)))

(assert (=> b!4691408 (forall!11331 (toList!5605 lt!1851530) lambda!207565)))

(declare-fun lt!1851532 () Unit!124273)

(declare-fun Unit!124370 () Unit!124273)

(assert (=> b!4691408 (= lt!1851532 Unit!124370)))

(assert (=> b!4691408 (forall!11331 (t!359725 (Cons!52421 lt!1851008 lt!1851023)) lambda!207565)))

(declare-fun lt!1851527 () Unit!124273)

(declare-fun Unit!124371 () Unit!124273)

(assert (=> b!4691408 (= lt!1851527 Unit!124371)))

(declare-fun lt!1851526 () Unit!124273)

(declare-fun Unit!124372 () Unit!124273)

(assert (=> b!4691408 (= lt!1851526 Unit!124372)))

(declare-fun lt!1851531 () Unit!124273)

(assert (=> b!4691408 (= lt!1851531 (forallContained!3438 (toList!5605 lt!1851530) lambda!207565 (h!58670 (Cons!52421 lt!1851008 lt!1851023))))))

(assert (=> b!4691408 (contains!15628 lt!1851530 (_1!30207 (h!58670 (Cons!52421 lt!1851008 lt!1851023))))))

(declare-fun lt!1851544 () Unit!124273)

(declare-fun Unit!124373 () Unit!124273)

(assert (=> b!4691408 (= lt!1851544 Unit!124373)))

(assert (=> b!4691408 (contains!15628 lt!1851539 (_1!30207 (h!58670 (Cons!52421 lt!1851008 lt!1851023))))))

(declare-fun lt!1851536 () Unit!124273)

(declare-fun Unit!124374 () Unit!124273)

(assert (=> b!4691408 (= lt!1851536 Unit!124374)))

(assert (=> b!4691408 (forall!11331 (Cons!52421 lt!1851008 lt!1851023) lambda!207565)))

(declare-fun lt!1851538 () Unit!124273)

(declare-fun Unit!124375 () Unit!124273)

(assert (=> b!4691408 (= lt!1851538 Unit!124375)))

(declare-fun call!327901 () Bool)

(assert (=> b!4691408 call!327901))

(declare-fun lt!1851534 () Unit!124273)

(declare-fun Unit!124377 () Unit!124273)

(assert (=> b!4691408 (= lt!1851534 Unit!124377)))

(declare-fun lt!1851528 () Unit!124273)

(declare-fun Unit!124378 () Unit!124273)

(assert (=> b!4691408 (= lt!1851528 Unit!124378)))

(declare-fun lt!1851543 () Unit!124273)

(assert (=> b!4691408 (= lt!1851543 (addForallContainsKeyThenBeforeAdding!701 lt!1851016 lt!1851539 (_1!30207 (h!58670 (Cons!52421 lt!1851008 lt!1851023))) (_2!30207 (h!58670 (Cons!52421 lt!1851008 lt!1851023)))))))

(declare-fun call!327902 () Bool)

(assert (=> b!4691408 call!327902))

(declare-fun lt!1851533 () Unit!124273)

(assert (=> b!4691408 (= lt!1851533 lt!1851543)))

(assert (=> b!4691408 (forall!11331 (toList!5605 lt!1851016) lambda!207565)))

(declare-fun lt!1851525 () Unit!124273)

(declare-fun Unit!124379 () Unit!124273)

(assert (=> b!4691408 (= lt!1851525 Unit!124379)))

(declare-fun res!1978956 () Bool)

(assert (=> b!4691408 (= res!1978956 (forall!11331 (Cons!52421 lt!1851008 lt!1851023) lambda!207565))))

(declare-fun e!2926765 () Bool)

(assert (=> b!4691408 (=> (not res!1978956) (not e!2926765))))

(assert (=> b!4691408 e!2926765))

(declare-fun lt!1851542 () Unit!124273)

(declare-fun Unit!124380 () Unit!124273)

(assert (=> b!4691408 (= lt!1851542 Unit!124380)))

(declare-fun b!4691409 () Bool)

(declare-fun res!1978955 () Bool)

(declare-fun e!2926763 () Bool)

(assert (=> b!4691409 (=> (not res!1978955) (not e!2926763))))

(assert (=> b!4691409 (= res!1978955 (forall!11331 (toList!5605 lt!1851016) lambda!207566))))

(declare-fun c!802134 () Bool)

(declare-fun bm!327896 () Bool)

(assert (=> bm!327896 (= call!327901 (forall!11331 (ite c!802134 (toList!5605 lt!1851016) (toList!5605 lt!1851530)) (ite c!802134 lambda!207563 lambda!207565)))))

(assert (=> b!4691410 (= e!2926764 lt!1851016)))

(declare-fun lt!1851524 () Unit!124273)

(assert (=> b!4691410 (= lt!1851524 call!327903)))

(assert (=> b!4691410 call!327902))

(declare-fun lt!1851535 () Unit!124273)

(assert (=> b!4691410 (= lt!1851535 lt!1851524)))

(assert (=> b!4691410 call!327901))

(declare-fun lt!1851540 () Unit!124273)

(declare-fun Unit!124381 () Unit!124273)

(assert (=> b!4691410 (= lt!1851540 Unit!124381)))

(declare-fun bm!327897 () Bool)

(assert (=> bm!327897 (= call!327903 (lemmaContainsAllItsOwnKeys!702 lt!1851016))))

(declare-fun b!4691411 () Bool)

(assert (=> b!4691411 (= e!2926763 (invariantList!1414 (toList!5605 lt!1851541)))))

(declare-fun b!4691412 () Bool)

(assert (=> b!4691412 (= e!2926765 (forall!11331 (toList!5605 lt!1851016) lambda!207565))))

(assert (=> d!1491087 e!2926763))

(declare-fun res!1978957 () Bool)

(assert (=> d!1491087 (=> (not res!1978957) (not e!2926763))))

(assert (=> d!1491087 (= res!1978957 (forall!11331 (Cons!52421 lt!1851008 lt!1851023) lambda!207566))))

(assert (=> d!1491087 (= lt!1851541 e!2926764)))

(assert (=> d!1491087 (= c!802134 ((_ is Nil!52421) (Cons!52421 lt!1851008 lt!1851023)))))

(assert (=> d!1491087 (noDuplicateKeys!1858 (Cons!52421 lt!1851008 lt!1851023))))

(assert (=> d!1491087 (= (addToMapMapFromBucket!1290 (Cons!52421 lt!1851008 lt!1851023) lt!1851016) lt!1851541)))

(declare-fun bm!327898 () Bool)

(assert (=> bm!327898 (= call!327902 (forall!11331 (toList!5605 lt!1851016) (ite c!802134 lambda!207563 lambda!207565)))))

(assert (= (and d!1491087 c!802134) b!4691410))

(assert (= (and d!1491087 (not c!802134)) b!4691408))

(assert (= (and b!4691408 res!1978956) b!4691412))

(assert (= (or b!4691410 b!4691408) bm!327897))

(assert (= (or b!4691410 b!4691408) bm!327896))

(assert (= (or b!4691410 b!4691408) bm!327898))

(assert (= (and d!1491087 res!1978957) b!4691409))

(assert (= (and b!4691409 res!1978955) b!4691411))

(declare-fun m!5594873 () Bool)

(assert (=> b!4691412 m!5594873))

(declare-fun m!5594875 () Bool)

(assert (=> b!4691408 m!5594875))

(declare-fun m!5594877 () Bool)

(assert (=> b!4691408 m!5594877))

(declare-fun m!5594879 () Bool)

(assert (=> b!4691408 m!5594879))

(declare-fun m!5594881 () Bool)

(assert (=> b!4691408 m!5594881))

(declare-fun m!5594883 () Bool)

(assert (=> b!4691408 m!5594883))

(declare-fun m!5594885 () Bool)

(assert (=> b!4691408 m!5594885))

(assert (=> b!4691408 m!5594883))

(declare-fun m!5594887 () Bool)

(assert (=> b!4691408 m!5594887))

(declare-fun m!5594889 () Bool)

(assert (=> b!4691408 m!5594889))

(assert (=> b!4691408 m!5594873))

(assert (=> b!4691408 m!5594877))

(declare-fun m!5594891 () Bool)

(assert (=> b!4691408 m!5594891))

(declare-fun m!5594893 () Bool)

(assert (=> b!4691408 m!5594893))

(declare-fun m!5594895 () Bool)

(assert (=> bm!327896 m!5594895))

(declare-fun m!5594897 () Bool)

(assert (=> bm!327898 m!5594897))

(declare-fun m!5594899 () Bool)

(assert (=> b!4691409 m!5594899))

(assert (=> bm!327897 m!5594715))

(declare-fun m!5594901 () Bool)

(assert (=> b!4691411 m!5594901))

(declare-fun m!5594903 () Bool)

(assert (=> d!1491087 m!5594903))

(declare-fun m!5594905 () Bool)

(assert (=> d!1491087 m!5594905))

(assert (=> b!4691007 d!1491087))

(declare-fun bs!1087664 () Bool)

(declare-fun b!4691415 () Bool)

(assert (= bs!1087664 (and b!4691415 b!4691394)))

(declare-fun lambda!207567 () Int)

(assert (=> bs!1087664 (= (= lt!1851016 lt!1851489) (= lambda!207567 lambda!207557))))

(declare-fun bs!1087665 () Bool)

(assert (= bs!1087665 (and b!4691415 b!4691375)))

(assert (=> bs!1087665 (= lambda!207567 lambda!207548)))

(declare-fun bs!1087666 () Bool)

(assert (= bs!1087666 (and b!4691415 b!4691399)))

(assert (=> bs!1087666 (= (= lt!1851016 lt!1851510) (= lambda!207567 lambda!207561))))

(declare-fun bs!1087667 () Bool)

(assert (= bs!1087667 (and b!4691415 b!4691396)))

(assert (=> bs!1087667 (= lambda!207567 lambda!207555)))

(declare-fun bs!1087668 () Bool)

(assert (= bs!1087668 (and b!4691415 b!4691373)))

(assert (=> bs!1087668 (= lambda!207567 lambda!207549)))

(declare-fun bs!1087669 () Bool)

(assert (= bs!1087669 (and b!4691415 b!4691410)))

(assert (=> bs!1087669 (= lambda!207567 lambda!207563)))

(declare-fun bs!1087670 () Bool)

(assert (= bs!1087670 (and b!4691415 d!1490913)))

(assert (=> bs!1087670 (not (= lambda!207567 lambda!207440))))

(declare-fun bs!1087671 () Bool)

(assert (= bs!1087671 (and b!4691415 b!4691408)))

(assert (=> bs!1087671 (= lambda!207567 lambda!207564)))

(declare-fun bs!1087672 () Bool)

(assert (= bs!1087672 (and b!4691415 d!1491081)))

(assert (=> bs!1087672 (= (= lt!1851016 lt!1851512) (= lambda!207567 lambda!207562))))

(declare-fun bs!1087673 () Bool)

(assert (= bs!1087673 (and b!4691415 d!1491079)))

(assert (=> bs!1087673 (= (= lt!1851016 lt!1851491) (= lambda!207567 lambda!207558))))

(declare-fun bs!1087674 () Bool)

(assert (= bs!1087674 (and b!4691415 d!1491087)))

(assert (=> bs!1087674 (= (= lt!1851016 lt!1851541) (= lambda!207567 lambda!207566))))

(declare-fun bs!1087675 () Bool)

(assert (= bs!1087675 (and b!4691415 b!4691401)))

(assert (=> bs!1087675 (= lambda!207567 lambda!207559)))

(assert (=> bs!1087671 (= (= lt!1851016 lt!1851539) (= lambda!207567 lambda!207565))))

(declare-fun bs!1087676 () Bool)

(assert (= bs!1087676 (and b!4691415 d!1490893)))

(assert (=> bs!1087676 (not (= lambda!207567 lambda!207433))))

(declare-fun bs!1087677 () Bool)

(assert (= bs!1087677 (and b!4691415 d!1490999)))

(assert (=> bs!1087677 (= (= lt!1851016 lt!1851458) (= lambda!207567 lambda!207551))))

(assert (=> bs!1087666 (= lambda!207567 lambda!207560)))

(assert (=> bs!1087664 (= lambda!207567 lambda!207556)))

(assert (=> bs!1087668 (= (= lt!1851016 lt!1851456) (= lambda!207567 lambda!207550))))

(assert (=> b!4691415 true))

(declare-fun bs!1087678 () Bool)

(declare-fun b!4691413 () Bool)

(assert (= bs!1087678 (and b!4691413 b!4691394)))

(declare-fun lambda!207568 () Int)

(assert (=> bs!1087678 (= (= lt!1851016 lt!1851489) (= lambda!207568 lambda!207557))))

(declare-fun bs!1087679 () Bool)

(assert (= bs!1087679 (and b!4691413 b!4691415)))

(assert (=> bs!1087679 (= lambda!207568 lambda!207567)))

(declare-fun bs!1087680 () Bool)

(assert (= bs!1087680 (and b!4691413 b!4691375)))

(assert (=> bs!1087680 (= lambda!207568 lambda!207548)))

(declare-fun bs!1087681 () Bool)

(assert (= bs!1087681 (and b!4691413 b!4691399)))

(assert (=> bs!1087681 (= (= lt!1851016 lt!1851510) (= lambda!207568 lambda!207561))))

(declare-fun bs!1087682 () Bool)

(assert (= bs!1087682 (and b!4691413 b!4691396)))

(assert (=> bs!1087682 (= lambda!207568 lambda!207555)))

(declare-fun bs!1087683 () Bool)

(assert (= bs!1087683 (and b!4691413 b!4691373)))

(assert (=> bs!1087683 (= lambda!207568 lambda!207549)))

(declare-fun bs!1087684 () Bool)

(assert (= bs!1087684 (and b!4691413 b!4691410)))

(assert (=> bs!1087684 (= lambda!207568 lambda!207563)))

(declare-fun bs!1087685 () Bool)

(assert (= bs!1087685 (and b!4691413 d!1490913)))

(assert (=> bs!1087685 (not (= lambda!207568 lambda!207440))))

(declare-fun bs!1087686 () Bool)

(assert (= bs!1087686 (and b!4691413 b!4691408)))

(assert (=> bs!1087686 (= lambda!207568 lambda!207564)))

(declare-fun bs!1087687 () Bool)

(assert (= bs!1087687 (and b!4691413 d!1491081)))

(assert (=> bs!1087687 (= (= lt!1851016 lt!1851512) (= lambda!207568 lambda!207562))))

(declare-fun bs!1087688 () Bool)

(assert (= bs!1087688 (and b!4691413 d!1491079)))

(assert (=> bs!1087688 (= (= lt!1851016 lt!1851491) (= lambda!207568 lambda!207558))))

(declare-fun bs!1087689 () Bool)

(assert (= bs!1087689 (and b!4691413 d!1491087)))

(assert (=> bs!1087689 (= (= lt!1851016 lt!1851541) (= lambda!207568 lambda!207566))))

(declare-fun bs!1087690 () Bool)

(assert (= bs!1087690 (and b!4691413 b!4691401)))

(assert (=> bs!1087690 (= lambda!207568 lambda!207559)))

(assert (=> bs!1087686 (= (= lt!1851016 lt!1851539) (= lambda!207568 lambda!207565))))

(declare-fun bs!1087691 () Bool)

(assert (= bs!1087691 (and b!4691413 d!1490893)))

(assert (=> bs!1087691 (not (= lambda!207568 lambda!207433))))

(declare-fun bs!1087692 () Bool)

(assert (= bs!1087692 (and b!4691413 d!1490999)))

(assert (=> bs!1087692 (= (= lt!1851016 lt!1851458) (= lambda!207568 lambda!207551))))

(assert (=> bs!1087681 (= lambda!207568 lambda!207560)))

(assert (=> bs!1087678 (= lambda!207568 lambda!207556)))

(assert (=> bs!1087683 (= (= lt!1851016 lt!1851456) (= lambda!207568 lambda!207550))))

(assert (=> b!4691413 true))

(declare-fun lambda!207569 () Int)

(declare-fun lt!1851560 () ListMap!4969)

(assert (=> bs!1087678 (= (= lt!1851560 lt!1851489) (= lambda!207569 lambda!207557))))

(assert (=> bs!1087679 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207567))))

(assert (=> bs!1087680 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207548))))

(assert (=> bs!1087682 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207555))))

(assert (=> bs!1087683 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207549))))

(assert (=> bs!1087684 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207563))))

(assert (=> bs!1087685 (not (= lambda!207569 lambda!207440))))

(assert (=> bs!1087686 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207564))))

(assert (=> bs!1087687 (= (= lt!1851560 lt!1851512) (= lambda!207569 lambda!207562))))

(assert (=> bs!1087688 (= (= lt!1851560 lt!1851491) (= lambda!207569 lambda!207558))))

(assert (=> bs!1087689 (= (= lt!1851560 lt!1851541) (= lambda!207569 lambda!207566))))

(assert (=> bs!1087690 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207559))))

(assert (=> bs!1087686 (= (= lt!1851560 lt!1851539) (= lambda!207569 lambda!207565))))

(assert (=> bs!1087691 (not (= lambda!207569 lambda!207433))))

(assert (=> bs!1087681 (= (= lt!1851560 lt!1851510) (= lambda!207569 lambda!207561))))

(assert (=> b!4691413 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207568))))

(assert (=> bs!1087692 (= (= lt!1851560 lt!1851458) (= lambda!207569 lambda!207551))))

(assert (=> bs!1087681 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207560))))

(assert (=> bs!1087678 (= (= lt!1851560 lt!1851016) (= lambda!207569 lambda!207556))))

(assert (=> bs!1087683 (= (= lt!1851560 lt!1851456) (= lambda!207569 lambda!207550))))

(assert (=> b!4691413 true))

(declare-fun bs!1087693 () Bool)

(declare-fun d!1491089 () Bool)

(assert (= bs!1087693 (and d!1491089 b!4691394)))

(declare-fun lambda!207570 () Int)

(declare-fun lt!1851562 () ListMap!4969)

(assert (=> bs!1087693 (= (= lt!1851562 lt!1851489) (= lambda!207570 lambda!207557))))

(declare-fun bs!1087694 () Bool)

(assert (= bs!1087694 (and d!1491089 b!4691415)))

(assert (=> bs!1087694 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207567))))

(declare-fun bs!1087695 () Bool)

(assert (= bs!1087695 (and d!1491089 b!4691413)))

(assert (=> bs!1087695 (= (= lt!1851562 lt!1851560) (= lambda!207570 lambda!207569))))

(declare-fun bs!1087696 () Bool)

(assert (= bs!1087696 (and d!1491089 b!4691375)))

(assert (=> bs!1087696 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207548))))

(declare-fun bs!1087697 () Bool)

(assert (= bs!1087697 (and d!1491089 b!4691396)))

(assert (=> bs!1087697 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207555))))

(declare-fun bs!1087698 () Bool)

(assert (= bs!1087698 (and d!1491089 b!4691373)))

(assert (=> bs!1087698 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207549))))

(declare-fun bs!1087699 () Bool)

(assert (= bs!1087699 (and d!1491089 b!4691410)))

(assert (=> bs!1087699 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207563))))

(declare-fun bs!1087700 () Bool)

(assert (= bs!1087700 (and d!1491089 d!1490913)))

(assert (=> bs!1087700 (not (= lambda!207570 lambda!207440))))

(declare-fun bs!1087701 () Bool)

(assert (= bs!1087701 (and d!1491089 b!4691408)))

(assert (=> bs!1087701 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207564))))

(declare-fun bs!1087702 () Bool)

(assert (= bs!1087702 (and d!1491089 d!1491081)))

(assert (=> bs!1087702 (= (= lt!1851562 lt!1851512) (= lambda!207570 lambda!207562))))

(declare-fun bs!1087703 () Bool)

(assert (= bs!1087703 (and d!1491089 d!1491079)))

(assert (=> bs!1087703 (= (= lt!1851562 lt!1851491) (= lambda!207570 lambda!207558))))

(declare-fun bs!1087704 () Bool)

(assert (= bs!1087704 (and d!1491089 d!1491087)))

(assert (=> bs!1087704 (= (= lt!1851562 lt!1851541) (= lambda!207570 lambda!207566))))

(declare-fun bs!1087705 () Bool)

(assert (= bs!1087705 (and d!1491089 b!4691401)))

(assert (=> bs!1087705 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207559))))

(assert (=> bs!1087701 (= (= lt!1851562 lt!1851539) (= lambda!207570 lambda!207565))))

(declare-fun bs!1087706 () Bool)

(assert (= bs!1087706 (and d!1491089 d!1490893)))

(assert (=> bs!1087706 (not (= lambda!207570 lambda!207433))))

(declare-fun bs!1087707 () Bool)

(assert (= bs!1087707 (and d!1491089 b!4691399)))

(assert (=> bs!1087707 (= (= lt!1851562 lt!1851510) (= lambda!207570 lambda!207561))))

(assert (=> bs!1087695 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207568))))

(declare-fun bs!1087708 () Bool)

(assert (= bs!1087708 (and d!1491089 d!1490999)))

(assert (=> bs!1087708 (= (= lt!1851562 lt!1851458) (= lambda!207570 lambda!207551))))

(assert (=> bs!1087707 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207560))))

(assert (=> bs!1087693 (= (= lt!1851562 lt!1851016) (= lambda!207570 lambda!207556))))

(assert (=> bs!1087698 (= (= lt!1851562 lt!1851456) (= lambda!207570 lambda!207550))))

(assert (=> d!1491089 true))

(declare-fun e!2926767 () ListMap!4969)

(assert (=> b!4691413 (= e!2926767 lt!1851560)))

(declare-fun lt!1851551 () ListMap!4969)

(assert (=> b!4691413 (= lt!1851551 (+!2142 lt!1851016 (h!58670 lt!1851025)))))

(assert (=> b!4691413 (= lt!1851560 (addToMapMapFromBucket!1290 (t!359725 lt!1851025) (+!2142 lt!1851016 (h!58670 lt!1851025))))))

(declare-fun lt!1851550 () Unit!124273)

(declare-fun call!327906 () Unit!124273)

(assert (=> b!4691413 (= lt!1851550 call!327906)))

(assert (=> b!4691413 (forall!11331 (toList!5605 lt!1851016) lambda!207568)))

(declare-fun lt!1851558 () Unit!124273)

(assert (=> b!4691413 (= lt!1851558 lt!1851550)))

(assert (=> b!4691413 (forall!11331 (toList!5605 lt!1851551) lambda!207569)))

(declare-fun lt!1851553 () Unit!124273)

(declare-fun Unit!124382 () Unit!124273)

(assert (=> b!4691413 (= lt!1851553 Unit!124382)))

(assert (=> b!4691413 (forall!11331 (t!359725 lt!1851025) lambda!207569)))

(declare-fun lt!1851548 () Unit!124273)

(declare-fun Unit!124383 () Unit!124273)

(assert (=> b!4691413 (= lt!1851548 Unit!124383)))

(declare-fun lt!1851547 () Unit!124273)

(declare-fun Unit!124384 () Unit!124273)

(assert (=> b!4691413 (= lt!1851547 Unit!124384)))

(declare-fun lt!1851552 () Unit!124273)

(assert (=> b!4691413 (= lt!1851552 (forallContained!3438 (toList!5605 lt!1851551) lambda!207569 (h!58670 lt!1851025)))))

(assert (=> b!4691413 (contains!15628 lt!1851551 (_1!30207 (h!58670 lt!1851025)))))

(declare-fun lt!1851565 () Unit!124273)

(declare-fun Unit!124385 () Unit!124273)

(assert (=> b!4691413 (= lt!1851565 Unit!124385)))

(assert (=> b!4691413 (contains!15628 lt!1851560 (_1!30207 (h!58670 lt!1851025)))))

(declare-fun lt!1851557 () Unit!124273)

(declare-fun Unit!124386 () Unit!124273)

(assert (=> b!4691413 (= lt!1851557 Unit!124386)))

(assert (=> b!4691413 (forall!11331 lt!1851025 lambda!207569)))

(declare-fun lt!1851559 () Unit!124273)

(declare-fun Unit!124387 () Unit!124273)

(assert (=> b!4691413 (= lt!1851559 Unit!124387)))

(declare-fun call!327904 () Bool)

(assert (=> b!4691413 call!327904))

(declare-fun lt!1851555 () Unit!124273)

(declare-fun Unit!124388 () Unit!124273)

(assert (=> b!4691413 (= lt!1851555 Unit!124388)))

(declare-fun lt!1851549 () Unit!124273)

(declare-fun Unit!124389 () Unit!124273)

(assert (=> b!4691413 (= lt!1851549 Unit!124389)))

(declare-fun lt!1851564 () Unit!124273)

(assert (=> b!4691413 (= lt!1851564 (addForallContainsKeyThenBeforeAdding!701 lt!1851016 lt!1851560 (_1!30207 (h!58670 lt!1851025)) (_2!30207 (h!58670 lt!1851025))))))

(declare-fun call!327905 () Bool)

(assert (=> b!4691413 call!327905))

(declare-fun lt!1851554 () Unit!124273)

(assert (=> b!4691413 (= lt!1851554 lt!1851564)))

(assert (=> b!4691413 (forall!11331 (toList!5605 lt!1851016) lambda!207569)))

(declare-fun lt!1851546 () Unit!124273)

(declare-fun Unit!124390 () Unit!124273)

(assert (=> b!4691413 (= lt!1851546 Unit!124390)))

(declare-fun res!1978959 () Bool)

(assert (=> b!4691413 (= res!1978959 (forall!11331 lt!1851025 lambda!207569))))

(declare-fun e!2926768 () Bool)

(assert (=> b!4691413 (=> (not res!1978959) (not e!2926768))))

(assert (=> b!4691413 e!2926768))

(declare-fun lt!1851563 () Unit!124273)

(declare-fun Unit!124391 () Unit!124273)

(assert (=> b!4691413 (= lt!1851563 Unit!124391)))

(declare-fun b!4691414 () Bool)

(declare-fun res!1978958 () Bool)

(declare-fun e!2926766 () Bool)

(assert (=> b!4691414 (=> (not res!1978958) (not e!2926766))))

(assert (=> b!4691414 (= res!1978958 (forall!11331 (toList!5605 lt!1851016) lambda!207570))))

(declare-fun bm!327899 () Bool)

(declare-fun c!802135 () Bool)

(assert (=> bm!327899 (= call!327904 (forall!11331 (ite c!802135 (toList!5605 lt!1851016) (toList!5605 lt!1851551)) (ite c!802135 lambda!207567 lambda!207569)))))

(assert (=> b!4691415 (= e!2926767 lt!1851016)))

(declare-fun lt!1851545 () Unit!124273)

(assert (=> b!4691415 (= lt!1851545 call!327906)))

(assert (=> b!4691415 call!327905))

(declare-fun lt!1851556 () Unit!124273)

(assert (=> b!4691415 (= lt!1851556 lt!1851545)))

(assert (=> b!4691415 call!327904))

(declare-fun lt!1851561 () Unit!124273)

(declare-fun Unit!124392 () Unit!124273)

(assert (=> b!4691415 (= lt!1851561 Unit!124392)))

(declare-fun bm!327900 () Bool)

(assert (=> bm!327900 (= call!327906 (lemmaContainsAllItsOwnKeys!702 lt!1851016))))

(declare-fun b!4691416 () Bool)

(assert (=> b!4691416 (= e!2926766 (invariantList!1414 (toList!5605 lt!1851562)))))

(declare-fun b!4691417 () Bool)

(assert (=> b!4691417 (= e!2926768 (forall!11331 (toList!5605 lt!1851016) lambda!207569))))

(assert (=> d!1491089 e!2926766))

(declare-fun res!1978960 () Bool)

(assert (=> d!1491089 (=> (not res!1978960) (not e!2926766))))

(assert (=> d!1491089 (= res!1978960 (forall!11331 lt!1851025 lambda!207570))))

(assert (=> d!1491089 (= lt!1851562 e!2926767)))

(assert (=> d!1491089 (= c!802135 ((_ is Nil!52421) lt!1851025))))

(assert (=> d!1491089 (noDuplicateKeys!1858 lt!1851025)))

(assert (=> d!1491089 (= (addToMapMapFromBucket!1290 lt!1851025 lt!1851016) lt!1851562)))

(declare-fun bm!327901 () Bool)

(assert (=> bm!327901 (= call!327905 (forall!11331 (toList!5605 lt!1851016) (ite c!802135 lambda!207567 lambda!207569)))))

(assert (= (and d!1491089 c!802135) b!4691415))

(assert (= (and d!1491089 (not c!802135)) b!4691413))

(assert (= (and b!4691413 res!1978959) b!4691417))

(assert (= (or b!4691415 b!4691413) bm!327900))

(assert (= (or b!4691415 b!4691413) bm!327899))

(assert (= (or b!4691415 b!4691413) bm!327901))

(assert (= (and d!1491089 res!1978960) b!4691414))

(assert (= (and b!4691414 res!1978958) b!4691416))

(declare-fun m!5594907 () Bool)

(assert (=> b!4691417 m!5594907))

(declare-fun m!5594909 () Bool)

(assert (=> b!4691413 m!5594909))

(declare-fun m!5594911 () Bool)

(assert (=> b!4691413 m!5594911))

(declare-fun m!5594913 () Bool)

(assert (=> b!4691413 m!5594913))

(declare-fun m!5594915 () Bool)

(assert (=> b!4691413 m!5594915))

(declare-fun m!5594917 () Bool)

(assert (=> b!4691413 m!5594917))

(declare-fun m!5594919 () Bool)

(assert (=> b!4691413 m!5594919))

(assert (=> b!4691413 m!5594917))

(declare-fun m!5594921 () Bool)

(assert (=> b!4691413 m!5594921))

(declare-fun m!5594923 () Bool)

(assert (=> b!4691413 m!5594923))

(assert (=> b!4691413 m!5594907))

(assert (=> b!4691413 m!5594911))

(declare-fun m!5594925 () Bool)

(assert (=> b!4691413 m!5594925))

(declare-fun m!5594927 () Bool)

(assert (=> b!4691413 m!5594927))

(declare-fun m!5594929 () Bool)

(assert (=> bm!327899 m!5594929))

(declare-fun m!5594931 () Bool)

(assert (=> bm!327901 m!5594931))

(declare-fun m!5594933 () Bool)

(assert (=> b!4691414 m!5594933))

(assert (=> bm!327900 m!5594715))

(declare-fun m!5594935 () Bool)

(assert (=> b!4691416 m!5594935))

(declare-fun m!5594937 () Bool)

(assert (=> d!1491089 m!5594937))

(assert (=> d!1491089 m!5594739))

(assert (=> b!4691007 d!1491089))

(declare-fun bs!1087709 () Bool)

(declare-fun d!1491091 () Bool)

(assert (= bs!1087709 (and d!1491091 d!1490911)))

(declare-fun lambda!207571 () Int)

(assert (=> bs!1087709 (= lambda!207571 lambda!207439)))

(declare-fun bs!1087710 () Bool)

(assert (= bs!1087710 (and d!1491091 d!1491069)))

(assert (=> bs!1087710 (= lambda!207571 lambda!207553)))

(declare-fun bs!1087711 () Bool)

(assert (= bs!1087711 (and d!1491091 d!1491077)))

(assert (=> bs!1087711 (= lambda!207571 lambda!207554)))

(declare-fun bs!1087712 () Bool)

(assert (= bs!1087712 (and d!1491091 d!1490967)))

(assert (=> bs!1087712 (= lambda!207571 lambda!207501)))

(declare-fun bs!1087713 () Bool)

(assert (= bs!1087713 (and d!1491091 start!474660)))

(assert (=> bs!1087713 (= lambda!207571 lambda!207427)))

(declare-fun bs!1087714 () Bool)

(assert (= bs!1087714 (and d!1491091 d!1490935)))

(assert (=> bs!1087714 (= lambda!207571 lambda!207492)))

(declare-fun bs!1087715 () Bool)

(assert (= bs!1087715 (and d!1491091 d!1491049)))

(assert (=> bs!1087715 (= lambda!207571 lambda!207552)))

(declare-fun lt!1851566 () ListMap!4969)

(assert (=> d!1491091 (invariantList!1414 (toList!5605 lt!1851566))))

(declare-fun e!2926769 () ListMap!4969)

(assert (=> d!1491091 (= lt!1851566 e!2926769)))

(declare-fun c!802136 () Bool)

(assert (=> d!1491091 (= c!802136 ((_ is Cons!52422) lt!1851015))))

(assert (=> d!1491091 (forall!11329 lt!1851015 lambda!207571)))

(assert (=> d!1491091 (= (extractMap!1884 lt!1851015) lt!1851566)))

(declare-fun b!4691418 () Bool)

(assert (=> b!4691418 (= e!2926769 (addToMapMapFromBucket!1290 (_2!30208 (h!58671 lt!1851015)) (extractMap!1884 (t!359726 lt!1851015))))))

(declare-fun b!4691419 () Bool)

(assert (=> b!4691419 (= e!2926769 (ListMap!4970 Nil!52421))))

(assert (= (and d!1491091 c!802136) b!4691418))

(assert (= (and d!1491091 (not c!802136)) b!4691419))

(declare-fun m!5594939 () Bool)

(assert (=> d!1491091 m!5594939))

(declare-fun m!5594941 () Bool)

(assert (=> d!1491091 m!5594941))

(declare-fun m!5594943 () Bool)

(assert (=> b!4691418 m!5594943))

(assert (=> b!4691418 m!5594943))

(declare-fun m!5594945 () Bool)

(assert (=> b!4691418 m!5594945))

(assert (=> b!4691007 d!1491091))

(declare-fun d!1491093 () Bool)

(assert (=> d!1491093 (= (eq!1017 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851020 lt!1851025) lt!1851016) (+!2142 (addToMapMapFromBucket!1290 lt!1851025 lt!1851016) lt!1851020)) (= (content!9172 (toList!5605 (addToMapMapFromBucket!1290 (Cons!52421 lt!1851020 lt!1851025) lt!1851016))) (content!9172 (toList!5605 (+!2142 (addToMapMapFromBucket!1290 lt!1851025 lt!1851016) lt!1851020)))))))

(declare-fun bs!1087716 () Bool)

(assert (= bs!1087716 d!1491093))

(declare-fun m!5594947 () Bool)

(assert (=> bs!1087716 m!5594947))

(declare-fun m!5594949 () Bool)

(assert (=> bs!1087716 m!5594949))

(assert (=> b!4691007 d!1491093))

(declare-fun d!1491095 () Bool)

(declare-fun e!2926772 () Bool)

(assert (=> d!1491095 e!2926772))

(declare-fun res!1978961 () Bool)

(assert (=> d!1491095 (=> res!1978961 e!2926772)))

(declare-fun e!2926774 () Bool)

(assert (=> d!1491095 (= res!1978961 e!2926774)))

(declare-fun res!1978962 () Bool)

(assert (=> d!1491095 (=> (not res!1978962) (not e!2926774))))

(declare-fun lt!1851568 () Bool)

(assert (=> d!1491095 (= res!1978962 (not lt!1851568))))

(declare-fun lt!1851573 () Bool)

(assert (=> d!1491095 (= lt!1851568 lt!1851573)))

(declare-fun lt!1851571 () Unit!124273)

(declare-fun e!2926770 () Unit!124273)

(assert (=> d!1491095 (= lt!1851571 e!2926770)))

(declare-fun c!802138 () Bool)

(assert (=> d!1491095 (= c!802138 lt!1851573)))

(assert (=> d!1491095 (= lt!1851573 (containsKey!3067 (toList!5605 (extractMap!1884 lt!1851015)) key!4653))))

(assert (=> d!1491095 (= (contains!15628 (extractMap!1884 lt!1851015) key!4653) lt!1851568)))

(declare-fun b!4691420 () Bool)

(assert (=> b!4691420 (= e!2926774 (not (contains!15633 (keys!18721 (extractMap!1884 lt!1851015)) key!4653)))))

(declare-fun b!4691421 () Bool)

(declare-fun e!2926771 () Unit!124273)

(assert (=> b!4691421 (= e!2926770 e!2926771)))

(declare-fun c!802139 () Bool)

(declare-fun call!327907 () Bool)

(assert (=> b!4691421 (= c!802139 call!327907)))

(declare-fun b!4691422 () Bool)

(declare-fun e!2926773 () Bool)

(assert (=> b!4691422 (= e!2926772 e!2926773)))

(declare-fun res!1978963 () Bool)

(assert (=> b!4691422 (=> (not res!1978963) (not e!2926773))))

(assert (=> b!4691422 (= res!1978963 (isDefined!9346 (getValueByKey!1787 (toList!5605 (extractMap!1884 lt!1851015)) key!4653)))))

(declare-fun bm!327902 () Bool)

(declare-fun e!2926775 () List!52548)

(assert (=> bm!327902 (= call!327907 (contains!15633 e!2926775 key!4653))))

(declare-fun c!802137 () Bool)

(assert (=> bm!327902 (= c!802137 c!802138)))

(declare-fun b!4691423 () Bool)

(assert (=> b!4691423 false))

(declare-fun lt!1851574 () Unit!124273)

(declare-fun lt!1851572 () Unit!124273)

(assert (=> b!4691423 (= lt!1851574 lt!1851572)))

(assert (=> b!4691423 (containsKey!3067 (toList!5605 (extractMap!1884 lt!1851015)) key!4653)))

(assert (=> b!4691423 (= lt!1851572 (lemmaInGetKeysListThenContainsKey!853 (toList!5605 (extractMap!1884 lt!1851015)) key!4653))))

(declare-fun Unit!124393 () Unit!124273)

(assert (=> b!4691423 (= e!2926771 Unit!124393)))

(declare-fun b!4691424 () Bool)

(declare-fun Unit!124394 () Unit!124273)

(assert (=> b!4691424 (= e!2926771 Unit!124394)))

(declare-fun b!4691425 () Bool)

(declare-fun lt!1851567 () Unit!124273)

(assert (=> b!4691425 (= e!2926770 lt!1851567)))

(declare-fun lt!1851569 () Unit!124273)

(assert (=> b!4691425 (= lt!1851569 (lemmaContainsKeyImpliesGetValueByKeyDefined!1679 (toList!5605 (extractMap!1884 lt!1851015)) key!4653))))

(assert (=> b!4691425 (isDefined!9346 (getValueByKey!1787 (toList!5605 (extractMap!1884 lt!1851015)) key!4653))))

(declare-fun lt!1851570 () Unit!124273)

(assert (=> b!4691425 (= lt!1851570 lt!1851569)))

(assert (=> b!4691425 (= lt!1851567 (lemmaInListThenGetKeysListContains!849 (toList!5605 (extractMap!1884 lt!1851015)) key!4653))))

(assert (=> b!4691425 call!327907))

(declare-fun b!4691426 () Bool)

(assert (=> b!4691426 (= e!2926775 (keys!18721 (extractMap!1884 lt!1851015)))))

(declare-fun b!4691427 () Bool)

(assert (=> b!4691427 (= e!2926775 (getKeysList!854 (toList!5605 (extractMap!1884 lt!1851015))))))

(declare-fun b!4691428 () Bool)

(assert (=> b!4691428 (= e!2926773 (contains!15633 (keys!18721 (extractMap!1884 lt!1851015)) key!4653))))

(assert (= (and d!1491095 c!802138) b!4691425))

(assert (= (and d!1491095 (not c!802138)) b!4691421))

(assert (= (and b!4691421 c!802139) b!4691423))

(assert (= (and b!4691421 (not c!802139)) b!4691424))

(assert (= (or b!4691425 b!4691421) bm!327902))

(assert (= (and bm!327902 c!802137) b!4691427))

(assert (= (and bm!327902 (not c!802137)) b!4691426))

(assert (= (and d!1491095 res!1978962) b!4691420))

(assert (= (and d!1491095 (not res!1978961)) b!4691422))

(assert (= (and b!4691422 res!1978963) b!4691428))

(declare-fun m!5594951 () Bool)

(assert (=> d!1491095 m!5594951))

(assert (=> b!4691420 m!5594029))

(declare-fun m!5594953 () Bool)

(assert (=> b!4691420 m!5594953))

(assert (=> b!4691420 m!5594953))

(declare-fun m!5594955 () Bool)

(assert (=> b!4691420 m!5594955))

(declare-fun m!5594957 () Bool)

(assert (=> b!4691422 m!5594957))

(assert (=> b!4691422 m!5594957))

(declare-fun m!5594959 () Bool)

(assert (=> b!4691422 m!5594959))

(declare-fun m!5594961 () Bool)

(assert (=> b!4691425 m!5594961))

(assert (=> b!4691425 m!5594957))

(assert (=> b!4691425 m!5594957))

(assert (=> b!4691425 m!5594959))

(declare-fun m!5594963 () Bool)

(assert (=> b!4691425 m!5594963))

(assert (=> b!4691426 m!5594029))

(assert (=> b!4691426 m!5594953))

(declare-fun m!5594965 () Bool)

(assert (=> bm!327902 m!5594965))

(assert (=> b!4691428 m!5594029))

(assert (=> b!4691428 m!5594953))

(assert (=> b!4691428 m!5594953))

(assert (=> b!4691428 m!5594955))

(assert (=> b!4691423 m!5594951))

(declare-fun m!5594967 () Bool)

(assert (=> b!4691423 m!5594967))

(declare-fun m!5594969 () Bool)

(assert (=> b!4691427 m!5594969))

(assert (=> b!4691007 d!1491095))

(declare-fun bs!1087717 () Bool)

(declare-fun d!1491097 () Bool)

(assert (= bs!1087717 (and d!1491097 d!1490911)))

(declare-fun lambda!207574 () Int)

(assert (=> bs!1087717 (= lambda!207574 lambda!207439)))

(declare-fun bs!1087718 () Bool)

(assert (= bs!1087718 (and d!1491097 d!1491069)))

(assert (=> bs!1087718 (= lambda!207574 lambda!207553)))

(declare-fun bs!1087719 () Bool)

(assert (= bs!1087719 (and d!1491097 d!1491077)))

(assert (=> bs!1087719 (= lambda!207574 lambda!207554)))

(declare-fun bs!1087720 () Bool)

(assert (= bs!1087720 (and d!1491097 d!1491091)))

(assert (=> bs!1087720 (= lambda!207574 lambda!207571)))

(declare-fun bs!1087721 () Bool)

(assert (= bs!1087721 (and d!1491097 d!1490967)))

(assert (=> bs!1087721 (= lambda!207574 lambda!207501)))

(declare-fun bs!1087722 () Bool)

(assert (= bs!1087722 (and d!1491097 start!474660)))

(assert (=> bs!1087722 (= lambda!207574 lambda!207427)))

(declare-fun bs!1087723 () Bool)

(assert (= bs!1087723 (and d!1491097 d!1490935)))

(assert (=> bs!1087723 (= lambda!207574 lambda!207492)))

(declare-fun bs!1087724 () Bool)

(assert (= bs!1087724 (and d!1491097 d!1491049)))

(assert (=> bs!1087724 (= lambda!207574 lambda!207552)))

(assert (=> d!1491097 (contains!15628 (extractMap!1884 (toList!5606 (ListLongMap!4136 lt!1851015))) key!4653)))

(declare-fun lt!1851577 () Unit!124273)

(declare-fun choose!32619 (ListLongMap!4135 K!13795 Hashable!6227) Unit!124273)

(assert (=> d!1491097 (= lt!1851577 (choose!32619 (ListLongMap!4136 lt!1851015) key!4653 hashF!1323))))

(assert (=> d!1491097 (forall!11329 (toList!5606 (ListLongMap!4136 lt!1851015)) lambda!207574)))

(assert (=> d!1491097 (= (lemmaListContainsThenExtractedMapContains!450 (ListLongMap!4136 lt!1851015) key!4653 hashF!1323) lt!1851577)))

(declare-fun bs!1087725 () Bool)

(assert (= bs!1087725 d!1491097))

(declare-fun m!5594971 () Bool)

(assert (=> bs!1087725 m!5594971))

(assert (=> bs!1087725 m!5594971))

(declare-fun m!5594973 () Bool)

(assert (=> bs!1087725 m!5594973))

(declare-fun m!5594975 () Bool)

(assert (=> bs!1087725 m!5594975))

(declare-fun m!5594977 () Bool)

(assert (=> bs!1087725 m!5594977))

(assert (=> b!4691007 d!1491097))

(declare-fun b!4691430 () Bool)

(declare-fun e!2926776 () List!52545)

(declare-fun e!2926777 () List!52545)

(assert (=> b!4691430 (= e!2926776 e!2926777)))

(declare-fun c!802141 () Bool)

(assert (=> b!4691430 (= c!802141 ((_ is Cons!52421) (t!359725 oldBucket!34)))))

(declare-fun d!1491099 () Bool)

(declare-fun lt!1851578 () List!52545)

(assert (=> d!1491099 (not (containsKey!3065 lt!1851578 key!4653))))

(assert (=> d!1491099 (= lt!1851578 e!2926776)))

(declare-fun c!802140 () Bool)

(assert (=> d!1491099 (= c!802140 (and ((_ is Cons!52421) (t!359725 oldBucket!34)) (= (_1!30207 (h!58670 (t!359725 oldBucket!34))) key!4653)))))

(assert (=> d!1491099 (noDuplicateKeys!1858 (t!359725 oldBucket!34))))

(assert (=> d!1491099 (= (removePairForKey!1453 (t!359725 oldBucket!34) key!4653) lt!1851578)))

(declare-fun b!4691432 () Bool)

(assert (=> b!4691432 (= e!2926777 Nil!52421)))

(declare-fun b!4691431 () Bool)

(assert (=> b!4691431 (= e!2926777 (Cons!52421 (h!58670 (t!359725 oldBucket!34)) (removePairForKey!1453 (t!359725 (t!359725 oldBucket!34)) key!4653)))))

(declare-fun b!4691429 () Bool)

(assert (=> b!4691429 (= e!2926776 (t!359725 (t!359725 oldBucket!34)))))

(assert (= (and d!1491099 c!802140) b!4691429))

(assert (= (and d!1491099 (not c!802140)) b!4691430))

(assert (= (and b!4691430 c!802141) b!4691431))

(assert (= (and b!4691430 (not c!802141)) b!4691432))

(declare-fun m!5594979 () Bool)

(assert (=> d!1491099 m!5594979))

(assert (=> d!1491099 m!5594145))

(declare-fun m!5594981 () Bool)

(assert (=> b!4691431 m!5594981))

(assert (=> b!4691017 d!1491099))

(declare-fun bs!1087726 () Bool)

(declare-fun d!1491101 () Bool)

(assert (= bs!1087726 (and d!1491101 d!1490911)))

(declare-fun lambda!207577 () Int)

(assert (=> bs!1087726 (not (= lambda!207577 lambda!207439))))

(declare-fun bs!1087727 () Bool)

(assert (= bs!1087727 (and d!1491101 d!1491097)))

(assert (=> bs!1087727 (not (= lambda!207577 lambda!207574))))

(declare-fun bs!1087728 () Bool)

(assert (= bs!1087728 (and d!1491101 d!1491069)))

(assert (=> bs!1087728 (not (= lambda!207577 lambda!207553))))

(declare-fun bs!1087729 () Bool)

(assert (= bs!1087729 (and d!1491101 d!1491077)))

(assert (=> bs!1087729 (not (= lambda!207577 lambda!207554))))

(declare-fun bs!1087730 () Bool)

(assert (= bs!1087730 (and d!1491101 d!1491091)))

(assert (=> bs!1087730 (not (= lambda!207577 lambda!207571))))

(declare-fun bs!1087731 () Bool)

(assert (= bs!1087731 (and d!1491101 d!1490967)))

(assert (=> bs!1087731 (not (= lambda!207577 lambda!207501))))

(declare-fun bs!1087732 () Bool)

(assert (= bs!1087732 (and d!1491101 start!474660)))

(assert (=> bs!1087732 (not (= lambda!207577 lambda!207427))))

(declare-fun bs!1087733 () Bool)

(assert (= bs!1087733 (and d!1491101 d!1490935)))

(assert (=> bs!1087733 (not (= lambda!207577 lambda!207492))))

(declare-fun bs!1087734 () Bool)

(assert (= bs!1087734 (and d!1491101 d!1491049)))

(assert (=> bs!1087734 (not (= lambda!207577 lambda!207552))))

(assert (=> d!1491101 true))

(assert (=> d!1491101 (= (allKeysSameHashInMap!1772 lm!2023 hashF!1323) (forall!11329 (toList!5606 lm!2023) lambda!207577))))

(declare-fun bs!1087735 () Bool)

(assert (= bs!1087735 d!1491101))

(declare-fun m!5594983 () Bool)

(assert (=> bs!1087735 m!5594983))

(assert (=> b!4691006 d!1491101))

(declare-fun e!2926780 () Bool)

(declare-fun tp!1346006 () Bool)

(declare-fun b!4691439 () Bool)

(assert (=> b!4691439 (= e!2926780 (and tp_is_empty!30725 tp_is_empty!30727 tp!1346006))))

(assert (=> b!4691010 (= tp!1345992 e!2926780)))

(assert (= (and b!4691010 ((_ is Cons!52421) (t!359725 newBucket!218))) b!4691439))

(declare-fun b!4691444 () Bool)

(declare-fun e!2926783 () Bool)

(declare-fun tp!1346011 () Bool)

(declare-fun tp!1346012 () Bool)

(assert (=> b!4691444 (= e!2926783 (and tp!1346011 tp!1346012))))

(assert (=> b!4691019 (= tp!1345993 e!2926783)))

(assert (= (and b!4691019 ((_ is Cons!52422) (toList!5606 lm!2023))) b!4691444))

(declare-fun tp!1346013 () Bool)

(declare-fun e!2926784 () Bool)

(declare-fun b!4691445 () Bool)

(assert (=> b!4691445 (= e!2926784 (and tp_is_empty!30725 tp_is_empty!30727 tp!1346013))))

(assert (=> b!4691008 (= tp!1345991 e!2926784)))

(assert (= (and b!4691008 ((_ is Cons!52421) (t!359725 oldBucket!34))) b!4691445))

(declare-fun b_lambda!177041 () Bool)

(assert (= b_lambda!177031 (or start!474660 b_lambda!177041)))

(declare-fun bs!1087736 () Bool)

(declare-fun d!1491103 () Bool)

(assert (= bs!1087736 (and d!1491103 start!474660)))

(assert (=> bs!1087736 (= (dynLambda!21716 lambda!207427 (h!58671 (toList!5606 lm!2023))) (noDuplicateKeys!1858 (_2!30208 (h!58671 (toList!5606 lm!2023)))))))

(assert (=> bs!1087736 m!5594721))

(assert (=> b!4691271 d!1491103))

(declare-fun b_lambda!177043 () Bool)

(assert (= b_lambda!177029 (or start!474660 b_lambda!177043)))

(declare-fun bs!1087737 () Bool)

(declare-fun d!1491105 () Bool)

(assert (= bs!1087737 (and d!1491105 start!474660)))

(assert (=> bs!1087737 (= (dynLambda!21716 lambda!207427 lt!1851022) (noDuplicateKeys!1858 (_2!30208 lt!1851022)))))

(declare-fun m!5594985 () Bool)

(assert (=> bs!1087737 m!5594985))

(assert (=> d!1490977 d!1491105))

(check-sat (not b!4691398) (not bm!327899) (not b!4691089) (not bm!327887) (not bm!327893) (not b!4691414) (not b!4691389) (not b!4691111) (not b!4691210) (not b!4691407) (not bm!327891) (not b!4691422) (not d!1491095) (not b!4691400) (not bm!327898) (not b!4691412) (not b!4691397) (not b!4691376) (not d!1491055) (not d!1490975) (not b!4691208) (not d!1490919) (not b!4691431) (not bs!1087736) (not b!4691160) (not b!4691137) (not b!4691408) (not b_lambda!177043) (not b!4691403) tp_is_empty!30727 (not d!1490911) (not d!1491061) (not bm!327894) (not b!4691232) (not b!4691417) (not b!4691444) (not b!4691388) (not d!1490917) (not b!4691155) (not b!4691399) (not b!4691416) (not b!4691135) (not b!4691224) (not b!4691394) (not b!4691061) (not b!4691406) (not d!1491075) (not b!4691392) (not b!4691386) (not bm!327901) (not d!1491085) (not bm!327892) (not b!4691060) (not b!4691374) (not b!4691161) (not d!1491077) (not bm!327897) (not d!1491083) (not b!4691211) (not b!4691209) (not d!1491091) (not d!1490899) (not d!1490927) (not d!1490935) (not d!1491099) (not b!4691230) (not b!4691048) (not b!4691413) (not b!4691439) (not d!1490965) (not b!4691112) (not d!1490893) (not d!1491049) (not b!4691390) (not bs!1087737) (not b!4691086) (not b!4691423) (not d!1490985) (not b!4691405) (not d!1491065) (not b!4691099) (not d!1491087) (not b!4691092) (not d!1491067) (not b!4691383) (not b!4691425) (not bm!327888) (not d!1490913) (not d!1490967) (not d!1490999) tp_is_empty!30725 (not d!1490977) (not b!4691157) (not d!1491093) (not d!1490997) (not d!1491097) (not b!4691088) (not b_lambda!177041) (not bm!327890) (not bm!327896) (not bm!327889) (not b!4691256) (not d!1491089) (not b!4691418) (not d!1491101) (not bm!327895) (not d!1490957) (not b!4691156) (not b!4691445) (not d!1491051) (not b!4691409) (not b!4691402) (not b!4691380) (not b!4691382) (not d!1490921) (not b!4691428) (not b!4691093) (not d!1491081) (not d!1490907) (not b!4691377) (not bm!327900) (not b!4691404) (not bm!327902) (not b!4691411) (not b!4691091) (not b!4691426) (not d!1491069) (not b!4691395) (not b!4691427) (not d!1491071) (not b!4691094) (not d!1490923) (not b!4691420) (not bm!327855) (not b!4691272) (not b!4691373) (not d!1491079) (not d!1490961))
(check-sat)
