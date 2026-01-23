; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432492 () Bool)

(assert start!432492)

(declare-fun b!4429585 () Bool)

(declare-fun res!1832019 () Bool)

(declare-fun e!2758132 () Bool)

(assert (=> b!4429585 (=> (not res!1832019) (not e!2758132))))

(declare-datatypes ((K!11000 0))(
  ( (K!11001 (val!17071 Int)) )
))
(declare-datatypes ((V!11246 0))(
  ( (V!11247 (val!17072 Int)) )
))
(declare-datatypes ((tuple2!49462 0))(
  ( (tuple2!49463 (_1!28025 K!11000) (_2!28025 V!11246)) )
))
(declare-datatypes ((List!49761 0))(
  ( (Nil!49637) (Cons!49637 (h!55334 tuple2!49462) (t!356699 List!49761)) )
))
(declare-fun newBucket!194 () List!49761)

(declare-datatypes ((Hashable!5165 0))(
  ( (HashableExt!5164 (__x!30868 Int)) )
))
(declare-fun hashF!1220 () Hashable!5165)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!731 (List!49761 (_ BitVec 64) Hashable!5165) Bool)

(assert (=> b!4429585 (= res!1832019 (allKeysSameHash!731 newBucket!194 hash!366 hashF!1220))))

(declare-fun tp_is_empty!26331 () Bool)

(declare-fun b!4429586 () Bool)

(declare-fun tp_is_empty!26329 () Bool)

(declare-fun tp!1333442 () Bool)

(declare-fun e!2758142 () Bool)

(assert (=> b!4429586 (= e!2758142 (and tp_is_empty!26331 tp_is_empty!26329 tp!1333442))))

(declare-fun b!4429587 () Bool)

(declare-fun res!1832027 () Bool)

(assert (=> b!4429587 (=> (not res!1832027) (not e!2758132))))

(declare-fun key!3717 () K!11000)

(declare-fun hash!2184 (Hashable!5165 K!11000) (_ BitVec 64))

(assert (=> b!4429587 (= res!1832027 (= (hash!2184 hashF!1220 key!3717) hash!366))))

(declare-fun b!4429588 () Bool)

(declare-fun e!2758136 () Bool)

(declare-fun e!2758139 () Bool)

(assert (=> b!4429588 (= e!2758136 e!2758139)))

(declare-fun res!1832021 () Bool)

(assert (=> b!4429588 (=> res!1832021 e!2758139)))

(declare-datatypes ((tuple2!49464 0))(
  ( (tuple2!49465 (_1!28026 (_ BitVec 64)) (_2!28026 List!49761)) )
))
(declare-datatypes ((List!49762 0))(
  ( (Nil!49638) (Cons!49638 (h!55335 tuple2!49464) (t!356700 List!49762)) )
))
(declare-datatypes ((ListLongMap!2179 0))(
  ( (ListLongMap!2180 (toList!3529 List!49762)) )
))
(declare-fun lm!1616 () ListLongMap!2179)

(declare-fun noDuplicateKeys!771 (List!49761) Bool)

(assert (=> b!4429588 (= res!1832021 (not (noDuplicateKeys!771 (_2!28026 (h!55335 (toList!3529 lm!1616))))))))

(declare-datatypes ((ListMap!2773 0))(
  ( (ListMap!2774 (toList!3530 List!49761)) )
))
(declare-fun lt!1628991 () ListMap!2773)

(declare-fun lt!1629009 () tuple2!49462)

(declare-fun lt!1628999 () ListMap!2773)

(declare-fun eq!429 (ListMap!2773 ListMap!2773) Bool)

(declare-fun +!1126 (ListMap!2773 tuple2!49462) ListMap!2773)

(assert (=> b!4429588 (eq!429 (+!1126 lt!1628991 lt!1629009) lt!1628999)))

(declare-fun lt!1629001 () ListMap!2773)

(declare-datatypes ((Unit!82605 0))(
  ( (Unit!82606) )
))
(declare-fun lt!1629006 () Unit!82605)

(declare-fun newValue!93 () V!11246)

(declare-fun lemmaAddToEqMapsPreservesEq!40 (ListMap!2773 ListMap!2773 K!11000 V!11246) Unit!82605)

(assert (=> b!4429588 (= lt!1629006 (lemmaAddToEqMapsPreservesEq!40 lt!1628991 lt!1629001 key!3717 newValue!93))))

(declare-fun lt!1628995 () ListMap!2773)

(assert (=> b!4429588 (eq!429 lt!1628995 lt!1628999)))

(assert (=> b!4429588 (= lt!1628999 (+!1126 lt!1629001 lt!1629009))))

(declare-fun lt!1628990 () ListMap!2773)

(declare-fun addToMapMapFromBucket!408 (List!49761 ListMap!2773) ListMap!2773)

(assert (=> b!4429588 (= lt!1628995 (addToMapMapFromBucket!408 (_2!28026 (h!55335 (toList!3529 lm!1616))) lt!1628990))))

(declare-fun lt!1628992 () ListMap!2773)

(declare-fun lt!1628997 () Unit!82605)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!200 (ListMap!2773 K!11000 V!11246 List!49761) Unit!82605)

(assert (=> b!4429588 (= lt!1628997 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!200 lt!1628992 key!3717 newValue!93 (_2!28026 (h!55335 (toList!3529 lm!1616)))))))

(declare-fun b!4429590 () Bool)

(declare-fun res!1832018 () Bool)

(assert (=> b!4429590 (=> (not res!1832018) (not e!2758132))))

(declare-fun allKeysSameHashInMap!877 (ListLongMap!2179 Hashable!5165) Bool)

(assert (=> b!4429590 (= res!1832018 (allKeysSameHashInMap!877 lm!1616 hashF!1220))))

(declare-fun b!4429591 () Bool)

(declare-fun e!2758130 () Bool)

(declare-fun e!2758135 () Bool)

(assert (=> b!4429591 (= e!2758130 e!2758135)))

(declare-fun res!1832020 () Bool)

(assert (=> b!4429591 (=> (not res!1832020) (not e!2758135))))

(declare-fun e!2758138 () Bool)

(assert (=> b!4429591 (= res!1832020 e!2758138)))

(declare-fun res!1832022 () Bool)

(assert (=> b!4429591 (=> res!1832022 e!2758138)))

(declare-fun e!2758140 () Bool)

(assert (=> b!4429591 (= res!1832022 e!2758140)))

(declare-fun res!1832016 () Bool)

(assert (=> b!4429591 (=> (not res!1832016) (not e!2758140))))

(declare-fun lt!1629005 () Bool)

(assert (=> b!4429591 (= res!1832016 lt!1629005)))

(declare-fun contains!12162 (ListLongMap!2179 (_ BitVec 64)) Bool)

(assert (=> b!4429591 (= lt!1629005 (contains!12162 lm!1616 hash!366))))

(declare-fun b!4429592 () Bool)

(declare-fun e!2758141 () Unit!82605)

(declare-fun Unit!82607 () Unit!82605)

(assert (=> b!4429592 (= e!2758141 Unit!82607)))

(declare-fun lt!1628998 () Unit!82605)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!58 (ListLongMap!2179 K!11000 Hashable!5165) Unit!82605)

(assert (=> b!4429592 (= lt!1628998 (lemmaExtractTailMapContainsThenExtractMapDoes!58 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4429592 false))

(declare-fun b!4429593 () Bool)

(declare-fun e!2758133 () Bool)

(declare-fun e!2758131 () Bool)

(assert (=> b!4429593 (= e!2758133 e!2758131)))

(declare-fun res!1832015 () Bool)

(assert (=> b!4429593 (=> res!1832015 e!2758131)))

(assert (=> b!4429593 (= res!1832015 (not (eq!429 lt!1628991 lt!1629001)))))

(assert (=> b!4429593 (= lt!1629001 (addToMapMapFromBucket!408 (_2!28026 (h!55335 (toList!3529 lm!1616))) lt!1628992))))

(declare-fun b!4429594 () Bool)

(declare-fun lambda!154958 () Int)

(declare-fun forall!9598 (List!49762 Int) Bool)

(assert (=> b!4429594 (= e!2758139 (forall!9598 (toList!3529 lm!1616) lambda!154958))))

(declare-fun lt!1629002 () ListMap!2773)

(declare-fun lt!1628996 () ListLongMap!2179)

(declare-fun extractMap!832 (List!49762) ListMap!2773)

(assert (=> b!4429594 (= lt!1629002 (extractMap!832 (toList!3529 lt!1628996)))))

(declare-fun lt!1628993 () ListMap!2773)

(assert (=> b!4429594 (eq!429 lt!1628995 (addToMapMapFromBucket!408 (_2!28026 (h!55335 (toList!3529 lm!1616))) lt!1628993))))

(declare-fun lt!1628994 () Unit!82605)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!16 (ListMap!2773 ListMap!2773 List!49761) Unit!82605)

(assert (=> b!4429594 (= lt!1628994 (lemmaAddToMapFromBucketPreservesEquivalence!16 lt!1628990 lt!1628993 (_2!28026 (h!55335 (toList!3529 lm!1616)))))))

(declare-fun b!4429595 () Bool)

(declare-fun res!1832017 () Bool)

(assert (=> b!4429595 (=> (not res!1832017) (not e!2758135))))

(assert (=> b!4429595 (= res!1832017 (noDuplicateKeys!771 newBucket!194))))

(declare-fun b!4429596 () Bool)

(declare-fun res!1832013 () Bool)

(declare-fun e!2758137 () Bool)

(assert (=> b!4429596 (=> res!1832013 e!2758137)))

(get-info :version)

(assert (=> b!4429596 (= res!1832013 (or (and ((_ is Cons!49638) (toList!3529 lm!1616)) (= (_1!28026 (h!55335 (toList!3529 lm!1616))) hash!366)) (not ((_ is Cons!49638) (toList!3529 lm!1616))) (= (_1!28026 (h!55335 (toList!3529 lm!1616))) hash!366)))))

(declare-fun b!4429597 () Bool)

(declare-fun apply!11623 (ListLongMap!2179 (_ BitVec 64)) List!49761)

(assert (=> b!4429597 (= e!2758140 (= newBucket!194 (Cons!49637 (tuple2!49463 key!3717 newValue!93) (apply!11623 lm!1616 hash!366))))))

(declare-fun b!4429598 () Bool)

(declare-fun res!1832026 () Bool)

(assert (=> b!4429598 (=> (not res!1832026) (not e!2758135))))

(assert (=> b!4429598 (= res!1832026 (forall!9598 (toList!3529 lm!1616) lambda!154958))))

(declare-fun b!4429599 () Bool)

(declare-fun res!1832029 () Bool)

(assert (=> b!4429599 (=> res!1832029 e!2758139)))

(assert (=> b!4429599 (= res!1832029 (not (eq!429 lt!1628990 lt!1628993)))))

(declare-fun b!4429600 () Bool)

(declare-fun Unit!82608 () Unit!82605)

(assert (=> b!4429600 (= e!2758141 Unit!82608)))

(declare-fun b!4429601 () Bool)

(assert (=> b!4429601 (= e!2758131 e!2758136)))

(declare-fun res!1832024 () Bool)

(assert (=> b!4429601 (=> res!1832024 e!2758136)))

(declare-fun containsKey!1158 (List!49761 K!11000) Bool)

(assert (=> b!4429601 (= res!1832024 (containsKey!1158 (_2!28026 (h!55335 (toList!3529 lm!1616))) key!3717))))

(assert (=> b!4429601 (not (containsKey!1158 (apply!11623 lm!1616 (_1!28026 (h!55335 (toList!3529 lm!1616)))) key!3717))))

(declare-fun lt!1629008 () Unit!82605)

(declare-fun lemmaNotSameHashThenCannotContainKey!150 (ListLongMap!2179 K!11000 (_ BitVec 64) Hashable!5165) Unit!82605)

(assert (=> b!4429601 (= lt!1629008 (lemmaNotSameHashThenCannotContainKey!150 lm!1616 key!3717 (_1!28026 (h!55335 (toList!3529 lm!1616))) hashF!1220))))

(declare-fun res!1832028 () Bool)

(assert (=> start!432492 (=> (not res!1832028) (not e!2758132))))

(assert (=> start!432492 (= res!1832028 (forall!9598 (toList!3529 lm!1616) lambda!154958))))

(assert (=> start!432492 e!2758132))

(assert (=> start!432492 tp_is_empty!26329))

(assert (=> start!432492 tp_is_empty!26331))

(assert (=> start!432492 e!2758142))

(declare-fun e!2758134 () Bool)

(declare-fun inv!65186 (ListLongMap!2179) Bool)

(assert (=> start!432492 (and (inv!65186 lm!1616) e!2758134)))

(assert (=> start!432492 true))

(declare-fun b!4429589 () Bool)

(assert (=> b!4429589 (= e!2758132 e!2758130)))

(declare-fun res!1832025 () Bool)

(assert (=> b!4429589 (=> (not res!1832025) (not e!2758130))))

(declare-fun contains!12163 (ListMap!2773 K!11000) Bool)

(assert (=> b!4429589 (= res!1832025 (not (contains!12163 lt!1628991 key!3717)))))

(assert (=> b!4429589 (= lt!1628991 (extractMap!832 (toList!3529 lm!1616)))))

(declare-fun b!4429602 () Bool)

(assert (=> b!4429602 (= e!2758137 e!2758133)))

(declare-fun res!1832023 () Bool)

(assert (=> b!4429602 (=> res!1832023 e!2758133)))

(declare-fun lt!1629000 () tuple2!49464)

(declare-fun head!9250 (ListLongMap!2179) tuple2!49464)

(assert (=> b!4429602 (= res!1832023 (= (head!9250 lm!1616) lt!1629000))))

(assert (=> b!4429602 (eq!429 lt!1628993 lt!1628990)))

(assert (=> b!4429602 (= lt!1628990 (+!1126 lt!1628992 lt!1629009))))

(assert (=> b!4429602 (= lt!1629009 (tuple2!49463 key!3717 newValue!93))))

(declare-fun lt!1628989 () ListLongMap!2179)

(assert (=> b!4429602 (= lt!1628992 (extractMap!832 (toList!3529 lt!1628989)))))

(declare-fun +!1127 (ListLongMap!2179 tuple2!49464) ListLongMap!2179)

(assert (=> b!4429602 (= lt!1628993 (extractMap!832 (toList!3529 (+!1127 lt!1628989 lt!1629000))))))

(declare-fun lt!1629003 () Unit!82605)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!145 (ListLongMap!2179 (_ BitVec 64) List!49761 K!11000 V!11246 Hashable!5165) Unit!82605)

(assert (=> b!4429602 (= lt!1629003 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!145 lt!1628989 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7314 (ListLongMap!2179) ListLongMap!2179)

(assert (=> b!4429602 (= lt!1628989 (tail!7314 lm!1616))))

(declare-fun lt!1629007 () Unit!82605)

(assert (=> b!4429602 (= lt!1629007 e!2758141)))

(declare-fun c!754001 () Bool)

(declare-fun tail!7315 (List!49762) List!49762)

(assert (=> b!4429602 (= c!754001 (contains!12163 (extractMap!832 (tail!7315 (toList!3529 lm!1616))) key!3717))))

(declare-fun b!4429603 () Bool)

(assert (=> b!4429603 (= e!2758138 (and (not lt!1629005) (= newBucket!194 (Cons!49637 (tuple2!49463 key!3717 newValue!93) Nil!49637))))))

(declare-fun b!4429604 () Bool)

(assert (=> b!4429604 (= e!2758135 (not e!2758137))))

(declare-fun res!1832014 () Bool)

(assert (=> b!4429604 (=> res!1832014 e!2758137)))

(assert (=> b!4429604 (= res!1832014 (not (forall!9598 (toList!3529 lt!1628996) lambda!154958)))))

(assert (=> b!4429604 (forall!9598 (toList!3529 lt!1628996) lambda!154958)))

(assert (=> b!4429604 (= lt!1628996 (+!1127 lm!1616 lt!1629000))))

(assert (=> b!4429604 (= lt!1629000 (tuple2!49465 hash!366 newBucket!194))))

(declare-fun lt!1629004 () Unit!82605)

(declare-fun addValidProp!415 (ListLongMap!2179 Int (_ BitVec 64) List!49761) Unit!82605)

(assert (=> b!4429604 (= lt!1629004 (addValidProp!415 lm!1616 lambda!154958 hash!366 newBucket!194))))

(declare-fun b!4429605 () Bool)

(declare-fun tp!1333441 () Bool)

(assert (=> b!4429605 (= e!2758134 tp!1333441)))

(assert (= (and start!432492 res!1832028) b!4429590))

(assert (= (and b!4429590 res!1832018) b!4429587))

(assert (= (and b!4429587 res!1832027) b!4429585))

(assert (= (and b!4429585 res!1832019) b!4429589))

(assert (= (and b!4429589 res!1832025) b!4429591))

(assert (= (and b!4429591 res!1832016) b!4429597))

(assert (= (and b!4429591 (not res!1832022)) b!4429603))

(assert (= (and b!4429591 res!1832020) b!4429595))

(assert (= (and b!4429595 res!1832017) b!4429598))

(assert (= (and b!4429598 res!1832026) b!4429604))

(assert (= (and b!4429604 (not res!1832014)) b!4429596))

(assert (= (and b!4429596 (not res!1832013)) b!4429602))

(assert (= (and b!4429602 c!754001) b!4429592))

(assert (= (and b!4429602 (not c!754001)) b!4429600))

(assert (= (and b!4429602 (not res!1832023)) b!4429593))

(assert (= (and b!4429593 (not res!1832015)) b!4429601))

(assert (= (and b!4429601 (not res!1832024)) b!4429588))

(assert (= (and b!4429588 (not res!1832021)) b!4429599))

(assert (= (and b!4429599 (not res!1832029)) b!4429594))

(assert (= (and start!432492 ((_ is Cons!49637) newBucket!194)) b!4429586))

(assert (= start!432492 b!4429605))

(declare-fun m!5113811 () Bool)

(assert (=> b!4429599 m!5113811))

(declare-fun m!5113813 () Bool)

(assert (=> b!4429589 m!5113813))

(declare-fun m!5113815 () Bool)

(assert (=> b!4429589 m!5113815))

(declare-fun m!5113817 () Bool)

(assert (=> b!4429604 m!5113817))

(assert (=> b!4429604 m!5113817))

(declare-fun m!5113819 () Bool)

(assert (=> b!4429604 m!5113819))

(declare-fun m!5113821 () Bool)

(assert (=> b!4429604 m!5113821))

(declare-fun m!5113823 () Bool)

(assert (=> b!4429595 m!5113823))

(declare-fun m!5113825 () Bool)

(assert (=> b!4429590 m!5113825))

(declare-fun m!5113827 () Bool)

(assert (=> b!4429593 m!5113827))

(declare-fun m!5113829 () Bool)

(assert (=> b!4429593 m!5113829))

(declare-fun m!5113831 () Bool)

(assert (=> b!4429594 m!5113831))

(declare-fun m!5113833 () Bool)

(assert (=> b!4429594 m!5113833))

(declare-fun m!5113835 () Bool)

(assert (=> b!4429594 m!5113835))

(declare-fun m!5113837 () Bool)

(assert (=> b!4429594 m!5113837))

(assert (=> b!4429594 m!5113833))

(declare-fun m!5113839 () Bool)

(assert (=> b!4429594 m!5113839))

(declare-fun m!5113841 () Bool)

(assert (=> b!4429587 m!5113841))

(declare-fun m!5113843 () Bool)

(assert (=> b!4429591 m!5113843))

(assert (=> start!432492 m!5113835))

(declare-fun m!5113845 () Bool)

(assert (=> start!432492 m!5113845))

(declare-fun m!5113847 () Bool)

(assert (=> b!4429597 m!5113847))

(declare-fun m!5113849 () Bool)

(assert (=> b!4429601 m!5113849))

(declare-fun m!5113851 () Bool)

(assert (=> b!4429601 m!5113851))

(assert (=> b!4429601 m!5113851))

(declare-fun m!5113853 () Bool)

(assert (=> b!4429601 m!5113853))

(declare-fun m!5113855 () Bool)

(assert (=> b!4429601 m!5113855))

(declare-fun m!5113857 () Bool)

(assert (=> b!4429585 m!5113857))

(declare-fun m!5113859 () Bool)

(assert (=> b!4429592 m!5113859))

(declare-fun m!5113861 () Bool)

(assert (=> b!4429588 m!5113861))

(declare-fun m!5113863 () Bool)

(assert (=> b!4429588 m!5113863))

(assert (=> b!4429588 m!5113861))

(declare-fun m!5113865 () Bool)

(assert (=> b!4429588 m!5113865))

(declare-fun m!5113867 () Bool)

(assert (=> b!4429588 m!5113867))

(declare-fun m!5113869 () Bool)

(assert (=> b!4429588 m!5113869))

(declare-fun m!5113871 () Bool)

(assert (=> b!4429588 m!5113871))

(declare-fun m!5113873 () Bool)

(assert (=> b!4429588 m!5113873))

(declare-fun m!5113875 () Bool)

(assert (=> b!4429588 m!5113875))

(declare-fun m!5113877 () Bool)

(assert (=> b!4429602 m!5113877))

(declare-fun m!5113879 () Bool)

(assert (=> b!4429602 m!5113879))

(declare-fun m!5113881 () Bool)

(assert (=> b!4429602 m!5113881))

(declare-fun m!5113883 () Bool)

(assert (=> b!4429602 m!5113883))

(declare-fun m!5113885 () Bool)

(assert (=> b!4429602 m!5113885))

(declare-fun m!5113887 () Bool)

(assert (=> b!4429602 m!5113887))

(assert (=> b!4429602 m!5113877))

(declare-fun m!5113889 () Bool)

(assert (=> b!4429602 m!5113889))

(declare-fun m!5113891 () Bool)

(assert (=> b!4429602 m!5113891))

(declare-fun m!5113893 () Bool)

(assert (=> b!4429602 m!5113893))

(assert (=> b!4429602 m!5113879))

(declare-fun m!5113895 () Bool)

(assert (=> b!4429602 m!5113895))

(declare-fun m!5113897 () Bool)

(assert (=> b!4429602 m!5113897))

(assert (=> b!4429598 m!5113835))

(check-sat (not b!4429605) (not b!4429599) (not b!4429601) tp_is_empty!26329 (not b!4429598) (not b!4429589) (not b!4429588) (not b!4429594) (not b!4429585) tp_is_empty!26331 (not b!4429592) (not b!4429593) (not b!4429591) (not b!4429602) (not b!4429587) (not b!4429590) (not b!4429595) (not b!4429604) (not b!4429586) (not start!432492) (not b!4429597))
(check-sat)
