; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474780 () Bool)

(assert start!474780)

(declare-fun b!4691586 () Bool)

(declare-fun res!1979099 () Bool)

(declare-fun e!2926847 () Bool)

(assert (=> b!4691586 (=> res!1979099 e!2926847)))

(declare-datatypes ((K!13800 0))(
  ( (K!13801 (val!19311 Int)) )
))
(declare-datatypes ((V!14046 0))(
  ( (V!14047 (val!19312 Int)) )
))
(declare-datatypes ((tuple2!53834 0))(
  ( (tuple2!53835 (_1!30211 K!13800) (_2!30211 V!14046)) )
))
(declare-datatypes ((List!52551 0))(
  ( (Nil!52427) (Cons!52427 (h!58678 tuple2!53834) (t!359733 List!52551)) )
))
(declare-fun oldBucket!34 () List!52551)

(declare-fun lt!1851704 () tuple2!53834)

(assert (=> b!4691586 (= res!1979099 (not (= (h!58678 oldBucket!34) lt!1851704)))))

(declare-fun tp!1346031 () Bool)

(declare-fun tp_is_empty!30733 () Bool)

(declare-fun e!2926845 () Bool)

(declare-fun b!4691587 () Bool)

(declare-fun tp_is_empty!30735 () Bool)

(assert (=> b!4691587 (= e!2926845 (and tp_is_empty!30733 tp_is_empty!30735 tp!1346031))))

(declare-fun b!4691588 () Bool)

(declare-fun res!1979105 () Bool)

(assert (=> b!4691588 (=> res!1979105 e!2926847)))

(declare-fun noDuplicateKeys!1860 (List!52551) Bool)

(assert (=> b!4691588 (= res!1979105 (not (noDuplicateKeys!1860 (t!359733 oldBucket!34))))))

(declare-fun b!4691590 () Bool)

(declare-fun e!2926850 () Bool)

(declare-fun e!2926846 () Bool)

(assert (=> b!4691590 (= e!2926850 e!2926846)))

(declare-fun res!1979091 () Bool)

(assert (=> b!4691590 (=> res!1979091 e!2926846)))

(declare-fun lt!1851708 () List!52551)

(declare-fun key!4653 () K!13800)

(declare-fun lt!1851696 () List!52551)

(declare-fun removePairForKey!1455 (List!52551 K!13800) List!52551)

(assert (=> b!4691590 (= res!1979091 (not (= (removePairForKey!1455 lt!1851696 key!4653) lt!1851708)))))

(declare-fun newBucket!218 () List!52551)

(declare-fun tail!8608 (List!52551) List!52551)

(assert (=> b!4691590 (= lt!1851708 (tail!8608 newBucket!218))))

(assert (=> b!4691590 (= lt!1851696 (tail!8608 oldBucket!34))))

(declare-fun b!4691591 () Bool)

(declare-fun res!1979092 () Bool)

(assert (=> b!4691591 (=> res!1979092 e!2926847)))

(assert (=> b!4691591 (= res!1979092 (not (noDuplicateKeys!1860 lt!1851708)))))

(declare-fun b!4691592 () Bool)

(declare-fun res!1979109 () Bool)

(assert (=> b!4691592 (=> res!1979109 e!2926847)))

(declare-datatypes ((ListMap!4973 0))(
  ( (ListMap!4974 (toList!5609 List!52551)) )
))
(declare-fun lt!1851701 () ListMap!4973)

(declare-fun lt!1851703 () ListMap!4973)

(declare-fun eq!1019 (ListMap!4973 ListMap!4973) Bool)

(declare-fun +!2144 (ListMap!4973 tuple2!53834) ListMap!4973)

(assert (=> b!4691592 (= res!1979109 (not (eq!1019 lt!1851701 (+!2144 lt!1851703 lt!1851704))))))

(declare-fun b!4691593 () Bool)

(declare-fun e!2926849 () Bool)

(assert (=> b!4691593 (= e!2926849 e!2926850)))

(declare-fun res!1979112 () Bool)

(assert (=> b!4691593 (=> res!1979112 e!2926850)))

(declare-fun containsKey!3071 (List!52551 K!13800) Bool)

(assert (=> b!4691593 (= res!1979112 (not (containsKey!3071 (t!359733 oldBucket!34) key!4653)))))

(assert (=> b!4691593 (containsKey!3071 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!124397 0))(
  ( (Unit!124398) )
))
(declare-fun lt!1851711 () Unit!124397)

(declare-datatypes ((Hashable!6229 0))(
  ( (HashableExt!6228 (__x!31932 Int)) )
))
(declare-fun hashF!1323 () Hashable!6229)

(declare-fun lemmaGetPairDefinedThenContainsKey!212 (List!52551 K!13800 Hashable!6229) Unit!124397)

(assert (=> b!4691593 (= lt!1851711 (lemmaGetPairDefinedThenContainsKey!212 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1851716 () List!52551)

(declare-datatypes ((Option!12095 0))(
  ( (None!12094) (Some!12094 (v!46521 tuple2!53834)) )
))
(declare-fun isDefined!9350 (Option!12095) Bool)

(declare-fun getPair!464 (List!52551 K!13800) Option!12095)

(assert (=> b!4691593 (isDefined!9350 (getPair!464 lt!1851716 key!4653))))

(declare-datatypes ((tuple2!53836 0))(
  ( (tuple2!53837 (_1!30212 (_ BitVec 64)) (_2!30212 List!52551)) )
))
(declare-datatypes ((List!52552 0))(
  ( (Nil!52428) (Cons!52428 (h!58679 tuple2!53836) (t!359734 List!52552)) )
))
(declare-datatypes ((ListLongMap!4139 0))(
  ( (ListLongMap!4140 (toList!5610 List!52552)) )
))
(declare-fun lm!2023 () ListLongMap!4139)

(declare-fun lambda!207595 () Int)

(declare-fun lt!1851695 () Unit!124397)

(declare-fun lt!1851698 () tuple2!53836)

(declare-fun forallContained!3440 (List!52552 Int tuple2!53836) Unit!124397)

(assert (=> b!4691593 (= lt!1851695 (forallContained!3440 (toList!5610 lm!2023) lambda!207595 lt!1851698))))

(declare-fun contains!15638 (List!52552 tuple2!53836) Bool)

(assert (=> b!4691593 (contains!15638 (toList!5610 lm!2023) lt!1851698)))

(declare-fun lt!1851705 () (_ BitVec 64))

(assert (=> b!4691593 (= lt!1851698 (tuple2!53837 lt!1851705 lt!1851716))))

(declare-fun lt!1851714 () Unit!124397)

(declare-fun lemmaGetValueImpliesTupleContained!269 (ListLongMap!4139 (_ BitVec 64) List!52551) Unit!124397)

(assert (=> b!4691593 (= lt!1851714 (lemmaGetValueImpliesTupleContained!269 lm!2023 lt!1851705 lt!1851716))))

(declare-fun apply!12343 (ListLongMap!4139 (_ BitVec 64)) List!52551)

(assert (=> b!4691593 (= lt!1851716 (apply!12343 lm!2023 lt!1851705))))

(declare-fun contains!15639 (ListLongMap!4139 (_ BitVec 64)) Bool)

(assert (=> b!4691593 (contains!15639 lm!2023 lt!1851705)))

(declare-fun lt!1851700 () Unit!124397)

(declare-fun lemmaInGenMapThenLongMapContainsHash!670 (ListLongMap!4139 K!13800 Hashable!6229) Unit!124397)

(assert (=> b!4691593 (= lt!1851700 (lemmaInGenMapThenLongMapContainsHash!670 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1851702 () Unit!124397)

(declare-fun lemmaInGenMapThenGetPairDefined!260 (ListLongMap!4139 K!13800 Hashable!6229) Unit!124397)

(assert (=> b!4691593 (= lt!1851702 (lemmaInGenMapThenGetPairDefined!260 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4691594 () Bool)

(declare-fun e!2926842 () Bool)

(assert (=> b!4691594 (= e!2926842 (not e!2926849))))

(declare-fun res!1979102 () Bool)

(assert (=> b!4691594 (=> res!1979102 e!2926849)))

(get-info :version)

(assert (=> b!4691594 (= res!1979102 (or (and ((_ is Cons!52427) oldBucket!34) (= (_1!30211 (h!58678 oldBucket!34)) key!4653)) (not ((_ is Cons!52427) oldBucket!34)) (= (_1!30211 (h!58678 oldBucket!34)) key!4653)))))

(declare-fun lt!1851709 () ListMap!4973)

(declare-fun lt!1851706 () ListMap!4973)

(declare-fun addToMapMapFromBucket!1292 (List!52551 ListMap!4973) ListMap!4973)

(assert (=> b!4691594 (= lt!1851709 (addToMapMapFromBucket!1292 (_2!30212 (h!58679 (toList!5610 lm!2023))) lt!1851706))))

(declare-fun extractMap!1886 (List!52552) ListMap!4973)

(assert (=> b!4691594 (= lt!1851706 (extractMap!1886 (t!359734 (toList!5610 lm!2023))))))

(declare-fun tail!8609 (ListLongMap!4139) ListLongMap!4139)

(assert (=> b!4691594 (= (t!359734 (toList!5610 lm!2023)) (toList!5610 (tail!8609 lm!2023)))))

(declare-fun b!4691595 () Bool)

(declare-fun e!2926841 () Bool)

(declare-fun e!2926840 () Bool)

(assert (=> b!4691595 (= e!2926841 e!2926840)))

(declare-fun res!1979103 () Bool)

(assert (=> b!4691595 (=> (not res!1979103) (not e!2926840))))

(declare-fun contains!15640 (ListMap!4973 K!13800) Bool)

(assert (=> b!4691595 (= res!1979103 (contains!15640 lt!1851709 key!4653))))

(assert (=> b!4691595 (= lt!1851709 (extractMap!1886 (toList!5610 lm!2023)))))

(declare-fun b!4691596 () Bool)

(declare-fun res!1979094 () Bool)

(assert (=> b!4691596 (=> (not res!1979094) (not e!2926842))))

(assert (=> b!4691596 (= res!1979094 ((_ is Cons!52428) (toList!5610 lm!2023)))))

(declare-fun b!4691597 () Bool)

(declare-fun res!1979100 () Bool)

(assert (=> b!4691597 (=> (not res!1979100) (not e!2926841))))

(assert (=> b!4691597 (= res!1979100 (noDuplicateKeys!1860 newBucket!218))))

(declare-fun b!4691598 () Bool)

(declare-fun lt!1851707 () List!52552)

(declare-fun forall!11333 (List!52552 Int) Bool)

(assert (=> b!4691598 (= e!2926847 (forall!11333 lt!1851707 lambda!207595))))

(declare-fun b!4691599 () Bool)

(declare-fun e!2926844 () Bool)

(declare-fun tp!1346029 () Bool)

(assert (=> b!4691599 (= e!2926844 tp!1346029)))

(declare-fun b!4691600 () Bool)

(assert (=> b!4691600 (= e!2926846 e!2926847)))

(declare-fun res!1979111 () Bool)

(assert (=> b!4691600 (=> res!1979111 e!2926847)))

(assert (=> b!4691600 (= res!1979111 (not (eq!1019 lt!1851701 (+!2144 lt!1851703 (h!58678 oldBucket!34)))))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4691600 (= lt!1851703 (extractMap!1886 (Cons!52428 (tuple2!53837 hash!405 lt!1851696) (t!359734 (toList!5610 lm!2023)))))))

(declare-fun lt!1851694 () tuple2!53836)

(assert (=> b!4691600 (= lt!1851701 (extractMap!1886 (Cons!52428 lt!1851694 (t!359734 (toList!5610 lm!2023)))))))

(assert (=> b!4691600 (eq!1019 (addToMapMapFromBucket!1292 (Cons!52427 lt!1851704 lt!1851708) lt!1851706) (+!2144 (addToMapMapFromBucket!1292 lt!1851708 lt!1851706) lt!1851704))))

(declare-fun lt!1851713 () Unit!124397)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!268 (tuple2!53834 List!52551 ListMap!4973) Unit!124397)

(assert (=> b!4691600 (= lt!1851713 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!268 lt!1851704 lt!1851708 lt!1851706))))

(declare-fun head!9983 (List!52551) tuple2!53834)

(assert (=> b!4691600 (= lt!1851704 (head!9983 newBucket!218))))

(declare-fun lt!1851712 () tuple2!53834)

(assert (=> b!4691600 (eq!1019 (addToMapMapFromBucket!1292 (Cons!52427 lt!1851712 lt!1851696) lt!1851706) (+!2144 (addToMapMapFromBucket!1292 lt!1851696 lt!1851706) lt!1851712))))

(declare-fun lt!1851710 () Unit!124397)

(assert (=> b!4691600 (= lt!1851710 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!268 lt!1851712 lt!1851696 lt!1851706))))

(assert (=> b!4691600 (= lt!1851712 (head!9983 oldBucket!34))))

(assert (=> b!4691600 (contains!15640 (extractMap!1886 lt!1851707) key!4653)))

(declare-fun lt!1851715 () ListLongMap!4139)

(declare-fun lt!1851699 () Unit!124397)

(declare-fun lemmaListContainsThenExtractedMapContains!452 (ListLongMap!4139 K!13800 Hashable!6229) Unit!124397)

(assert (=> b!4691600 (= lt!1851699 (lemmaListContainsThenExtractedMapContains!452 lt!1851715 key!4653 hashF!1323))))

(assert (=> b!4691600 (= lt!1851715 (ListLongMap!4140 lt!1851707))))

(declare-fun lt!1851697 () tuple2!53836)

(assert (=> b!4691600 (= lt!1851707 (Cons!52428 lt!1851697 (t!359734 (toList!5610 lm!2023))))))

(assert (=> b!4691600 (= lt!1851697 (tuple2!53837 hash!405 (t!359733 oldBucket!34)))))

(declare-fun b!4691601 () Bool)

(declare-fun res!1979106 () Bool)

(assert (=> b!4691601 (=> res!1979106 e!2926847)))

(declare-fun allKeysSameHash!1686 (List!52551 (_ BitVec 64) Hashable!6229) Bool)

(assert (=> b!4691601 (= res!1979106 (not (allKeysSameHash!1686 lt!1851708 hash!405 hashF!1323)))))

(declare-fun b!4691602 () Bool)

(declare-fun res!1979090 () Bool)

(assert (=> b!4691602 (=> res!1979090 e!2926847)))

(assert (=> b!4691602 (= res!1979090 (not (allKeysSameHash!1686 (t!359733 oldBucket!34) hash!405 hashF!1323)))))

(declare-fun b!4691603 () Bool)

(declare-fun res!1979107 () Bool)

(assert (=> b!4691603 (=> (not res!1979107) (not e!2926841))))

(assert (=> b!4691603 (= res!1979107 (= (removePairForKey!1455 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4691604 () Bool)

(declare-fun e!2926848 () Bool)

(declare-fun tp!1346030 () Bool)

(assert (=> b!4691604 (= e!2926848 (and tp_is_empty!30733 tp_is_empty!30735 tp!1346030))))

(declare-fun b!4691605 () Bool)

(declare-fun res!1979110 () Bool)

(assert (=> b!4691605 (=> res!1979110 e!2926847)))

(declare-fun head!9984 (List!52552) tuple2!53836)

(assert (=> b!4691605 (= res!1979110 (not (= (head!9984 lt!1851707) lt!1851697)))))

(declare-fun b!4691606 () Bool)

(declare-fun res!1979104 () Bool)

(declare-fun e!2926843 () Bool)

(assert (=> b!4691606 (=> (not res!1979104) (not e!2926843))))

(declare-fun allKeysSameHashInMap!1774 (ListLongMap!4139 Hashable!6229) Bool)

(assert (=> b!4691606 (= res!1979104 (allKeysSameHashInMap!1774 lm!2023 hashF!1323))))

(declare-fun b!4691607 () Bool)

(declare-fun res!1979098 () Bool)

(assert (=> b!4691607 (=> (not res!1979098) (not e!2926841))))

(assert (=> b!4691607 (= res!1979098 (noDuplicateKeys!1860 oldBucket!34))))

(declare-fun b!4691608 () Bool)

(assert (=> b!4691608 (= e!2926840 e!2926843)))

(declare-fun res!1979095 () Bool)

(assert (=> b!4691608 (=> (not res!1979095) (not e!2926843))))

(assert (=> b!4691608 (= res!1979095 (= lt!1851705 hash!405))))

(declare-fun hash!4077 (Hashable!6229 K!13800) (_ BitVec 64))

(assert (=> b!4691608 (= lt!1851705 (hash!4077 hashF!1323 key!4653))))

(declare-fun b!4691609 () Bool)

(declare-fun res!1979113 () Bool)

(assert (=> b!4691609 (=> (not res!1979113) (not e!2926841))))

(assert (=> b!4691609 (= res!1979113 (allKeysSameHash!1686 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4691589 () Bool)

(declare-fun res!1979096 () Bool)

(assert (=> b!4691589 (=> res!1979096 e!2926846)))

(assert (=> b!4691589 (= res!1979096 (not (= (removePairForKey!1455 (t!359733 oldBucket!34) key!4653) lt!1851708)))))

(declare-fun res!1979089 () Bool)

(assert (=> start!474780 (=> (not res!1979089) (not e!2926841))))

(assert (=> start!474780 (= res!1979089 (forall!11333 (toList!5610 lm!2023) lambda!207595))))

(assert (=> start!474780 e!2926841))

(declare-fun inv!67674 (ListLongMap!4139) Bool)

(assert (=> start!474780 (and (inv!67674 lm!2023) e!2926844)))

(assert (=> start!474780 tp_is_empty!30733))

(assert (=> start!474780 e!2926848))

(assert (=> start!474780 true))

(assert (=> start!474780 e!2926845))

(declare-fun b!4691610 () Bool)

(declare-fun res!1979097 () Bool)

(assert (=> b!4691610 (=> res!1979097 e!2926847)))

(assert (=> b!4691610 (= res!1979097 (not (allKeysSameHashInMap!1774 lt!1851715 hashF!1323)))))

(declare-fun b!4691611 () Bool)

(declare-fun res!1979101 () Bool)

(assert (=> b!4691611 (=> (not res!1979101) (not e!2926843))))

(assert (=> b!4691611 (= res!1979101 (allKeysSameHash!1686 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4691612 () Bool)

(declare-fun res!1979093 () Bool)

(assert (=> b!4691612 (=> res!1979093 e!2926847)))

(assert (=> b!4691612 (= res!1979093 (not (forall!11333 lt!1851707 lambda!207595)))))

(declare-fun b!4691613 () Bool)

(assert (=> b!4691613 (= e!2926843 e!2926842)))

(declare-fun res!1979108 () Bool)

(assert (=> b!4691613 (=> (not res!1979108) (not e!2926842))))

(assert (=> b!4691613 (= res!1979108 (= (head!9984 (toList!5610 lm!2023)) lt!1851694))))

(assert (=> b!4691613 (= lt!1851694 (tuple2!53837 hash!405 oldBucket!34))))

(assert (= (and start!474780 res!1979089) b!4691607))

(assert (= (and b!4691607 res!1979098) b!4691597))

(assert (= (and b!4691597 res!1979100) b!4691603))

(assert (= (and b!4691603 res!1979107) b!4691609))

(assert (= (and b!4691609 res!1979113) b!4691595))

(assert (= (and b!4691595 res!1979103) b!4691608))

(assert (= (and b!4691608 res!1979095) b!4691611))

(assert (= (and b!4691611 res!1979101) b!4691606))

(assert (= (and b!4691606 res!1979104) b!4691613))

(assert (= (and b!4691613 res!1979108) b!4691596))

(assert (= (and b!4691596 res!1979094) b!4691594))

(assert (= (and b!4691594 (not res!1979102)) b!4691593))

(assert (= (and b!4691593 (not res!1979112)) b!4691590))

(assert (= (and b!4691590 (not res!1979091)) b!4691589))

(assert (= (and b!4691589 (not res!1979096)) b!4691600))

(assert (= (and b!4691600 (not res!1979111)) b!4691586))

(assert (= (and b!4691586 (not res!1979099)) b!4691592))

(assert (= (and b!4691592 (not res!1979109)) b!4691612))

(assert (= (and b!4691612 (not res!1979093)) b!4691588))

(assert (= (and b!4691588 (not res!1979105)) b!4691591))

(assert (= (and b!4691591 (not res!1979092)) b!4691602))

(assert (= (and b!4691602 (not res!1979090)) b!4691601))

(assert (= (and b!4691601 (not res!1979106)) b!4691610))

(assert (= (and b!4691610 (not res!1979097)) b!4691605))

(assert (= (and b!4691605 (not res!1979110)) b!4691598))

(assert (= start!474780 b!4691599))

(assert (= (and start!474780 ((_ is Cons!52427) oldBucket!34)) b!4691604))

(assert (= (and start!474780 ((_ is Cons!52427) newBucket!218)) b!4691587))

(declare-fun m!5595105 () Bool)

(assert (=> b!4691611 m!5595105))

(declare-fun m!5595107 () Bool)

(assert (=> b!4691610 m!5595107))

(declare-fun m!5595109 () Bool)

(assert (=> b!4691588 m!5595109))

(declare-fun m!5595111 () Bool)

(assert (=> b!4691612 m!5595111))

(declare-fun m!5595113 () Bool)

(assert (=> b!4691608 m!5595113))

(declare-fun m!5595115 () Bool)

(assert (=> b!4691590 m!5595115))

(declare-fun m!5595117 () Bool)

(assert (=> b!4691590 m!5595117))

(declare-fun m!5595119 () Bool)

(assert (=> b!4691590 m!5595119))

(declare-fun m!5595121 () Bool)

(assert (=> b!4691603 m!5595121))

(declare-fun m!5595123 () Bool)

(assert (=> b!4691601 m!5595123))

(declare-fun m!5595125 () Bool)

(assert (=> b!4691607 m!5595125))

(declare-fun m!5595127 () Bool)

(assert (=> b!4691606 m!5595127))

(declare-fun m!5595129 () Bool)

(assert (=> b!4691613 m!5595129))

(assert (=> b!4691598 m!5595111))

(declare-fun m!5595131 () Bool)

(assert (=> b!4691602 m!5595131))

(declare-fun m!5595133 () Bool)

(assert (=> b!4691605 m!5595133))

(declare-fun m!5595135 () Bool)

(assert (=> b!4691593 m!5595135))

(declare-fun m!5595137 () Bool)

(assert (=> b!4691593 m!5595137))

(declare-fun m!5595139 () Bool)

(assert (=> b!4691593 m!5595139))

(assert (=> b!4691593 m!5595139))

(declare-fun m!5595141 () Bool)

(assert (=> b!4691593 m!5595141))

(declare-fun m!5595143 () Bool)

(assert (=> b!4691593 m!5595143))

(declare-fun m!5595145 () Bool)

(assert (=> b!4691593 m!5595145))

(declare-fun m!5595147 () Bool)

(assert (=> b!4691593 m!5595147))

(declare-fun m!5595149 () Bool)

(assert (=> b!4691593 m!5595149))

(declare-fun m!5595151 () Bool)

(assert (=> b!4691593 m!5595151))

(declare-fun m!5595153 () Bool)

(assert (=> b!4691593 m!5595153))

(declare-fun m!5595155 () Bool)

(assert (=> b!4691593 m!5595155))

(declare-fun m!5595157 () Bool)

(assert (=> b!4691593 m!5595157))

(declare-fun m!5595159 () Bool)

(assert (=> b!4691609 m!5595159))

(declare-fun m!5595161 () Bool)

(assert (=> start!474780 m!5595161))

(declare-fun m!5595163 () Bool)

(assert (=> start!474780 m!5595163))

(declare-fun m!5595165 () Bool)

(assert (=> b!4691595 m!5595165))

(declare-fun m!5595167 () Bool)

(assert (=> b!4691595 m!5595167))

(declare-fun m!5595169 () Bool)

(assert (=> b!4691589 m!5595169))

(declare-fun m!5595171 () Bool)

(assert (=> b!4691600 m!5595171))

(declare-fun m!5595173 () Bool)

(assert (=> b!4691600 m!5595173))

(declare-fun m!5595175 () Bool)

(assert (=> b!4691600 m!5595175))

(declare-fun m!5595177 () Bool)

(assert (=> b!4691600 m!5595177))

(declare-fun m!5595179 () Bool)

(assert (=> b!4691600 m!5595179))

(declare-fun m!5595181 () Bool)

(assert (=> b!4691600 m!5595181))

(assert (=> b!4691600 m!5595179))

(declare-fun m!5595183 () Bool)

(assert (=> b!4691600 m!5595183))

(declare-fun m!5595185 () Bool)

(assert (=> b!4691600 m!5595185))

(declare-fun m!5595187 () Bool)

(assert (=> b!4691600 m!5595187))

(assert (=> b!4691600 m!5595173))

(declare-fun m!5595189 () Bool)

(assert (=> b!4691600 m!5595189))

(declare-fun m!5595191 () Bool)

(assert (=> b!4691600 m!5595191))

(declare-fun m!5595193 () Bool)

(assert (=> b!4691600 m!5595193))

(declare-fun m!5595195 () Bool)

(assert (=> b!4691600 m!5595195))

(declare-fun m!5595197 () Bool)

(assert (=> b!4691600 m!5595197))

(declare-fun m!5595199 () Bool)

(assert (=> b!4691600 m!5595199))

(declare-fun m!5595201 () Bool)

(assert (=> b!4691600 m!5595201))

(declare-fun m!5595203 () Bool)

(assert (=> b!4691600 m!5595203))

(declare-fun m!5595205 () Bool)

(assert (=> b!4691600 m!5595205))

(assert (=> b!4691600 m!5595191))

(assert (=> b!4691600 m!5595183))

(assert (=> b!4691600 m!5595193))

(assert (=> b!4691600 m!5595199))

(declare-fun m!5595207 () Bool)

(assert (=> b!4691600 m!5595207))

(assert (=> b!4691600 m!5595201))

(assert (=> b!4691600 m!5595197))

(declare-fun m!5595209 () Bool)

(assert (=> b!4691592 m!5595209))

(assert (=> b!4691592 m!5595209))

(declare-fun m!5595211 () Bool)

(assert (=> b!4691592 m!5595211))

(declare-fun m!5595213 () Bool)

(assert (=> b!4691597 m!5595213))

(declare-fun m!5595215 () Bool)

(assert (=> b!4691591 m!5595215))

(declare-fun m!5595217 () Bool)

(assert (=> b!4691594 m!5595217))

(declare-fun m!5595219 () Bool)

(assert (=> b!4691594 m!5595219))

(declare-fun m!5595221 () Bool)

(assert (=> b!4691594 m!5595221))

(check-sat (not b!4691601) (not b!4691597) (not b!4691611) (not b!4691609) (not b!4691591) (not b!4691602) (not b!4691598) (not b!4691600) tp_is_empty!30735 (not b!4691587) (not b!4691593) (not b!4691610) (not b!4691608) (not b!4691592) (not start!474780) (not b!4691590) (not b!4691603) tp_is_empty!30733 (not b!4691589) (not b!4691599) (not b!4691607) (not b!4691588) (not b!4691605) (not b!4691606) (not b!4691612) (not b!4691604) (not b!4691595) (not b!4691613) (not b!4691594))
(check-sat)
