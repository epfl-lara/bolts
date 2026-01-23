; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420396 () Bool)

(assert start!420396)

(declare-fun b!4350603 () Bool)

(declare-fun e!2707367 () Bool)

(assert (=> b!4350603 (= e!2707367 true)))

(declare-fun b!4350604 () Bool)

(declare-fun res!1787313 () Bool)

(declare-fun e!2707370 () Bool)

(assert (=> b!4350604 (=> (not res!1787313) (not e!2707370))))

(declare-datatypes ((V!10481 0))(
  ( (V!10482 (val!16459 Int)) )
))
(declare-datatypes ((K!10235 0))(
  ( (K!10236 (val!16460 Int)) )
))
(declare-datatypes ((tuple2!48238 0))(
  ( (tuple2!48239 (_1!27413 K!10235) (_2!27413 V!10481)) )
))
(declare-datatypes ((List!48995 0))(
  ( (Nil!48871) (Cons!48871 (h!54406 tuple2!48238) (t!355915 List!48995)) )
))
(declare-datatypes ((tuple2!48240 0))(
  ( (tuple2!48241 (_1!27414 (_ BitVec 64)) (_2!27414 List!48995)) )
))
(declare-datatypes ((List!48996 0))(
  ( (Nil!48872) (Cons!48872 (h!54407 tuple2!48240) (t!355916 List!48996)) )
))
(declare-datatypes ((ListLongMap!1567 0))(
  ( (ListLongMap!1568 (toList!2917 List!48996)) )
))
(declare-fun lm!1707 () ListLongMap!1567)

(declare-fun key!3918 () K!10235)

(declare-datatypes ((ListMap!2161 0))(
  ( (ListMap!2162 (toList!2918 List!48995)) )
))
(declare-fun contains!11038 (ListMap!2161 K!10235) Bool)

(declare-fun extractMap!526 (List!48996) ListMap!2161)

(assert (=> b!4350604 (= res!1787313 (contains!11038 (extractMap!526 (toList!2917 lm!1707)) key!3918))))

(declare-fun b!4350605 () Bool)

(declare-fun res!1787317 () Bool)

(assert (=> b!4350605 (=> (not res!1787317) (not e!2707370))))

(declare-fun newBucket!200 () List!48995)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4859 0))(
  ( (HashableExt!4858 (__x!30562 Int)) )
))
(declare-fun hashF!1247 () Hashable!4859)

(declare-fun allKeysSameHash!425 (List!48995 (_ BitVec 64) Hashable!4859) Bool)

(assert (=> b!4350605 (= res!1787317 (allKeysSameHash!425 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4350606 () Bool)

(declare-fun res!1787320 () Bool)

(assert (=> b!4350606 (=> (not res!1787320) (not e!2707370))))

(declare-fun hash!1476 (Hashable!4859 K!10235) (_ BitVec 64))

(assert (=> b!4350606 (= res!1787320 (= (hash!1476 hashF!1247 key!3918) hash!377))))

(declare-fun b!4350607 () Bool)

(declare-fun res!1787310 () Bool)

(declare-fun e!2707369 () Bool)

(assert (=> b!4350607 (=> res!1787310 e!2707369)))

(declare-fun lt!1564337 () ListLongMap!1567)

(declare-fun allKeysSameHashInMap!571 (ListLongMap!1567 Hashable!4859) Bool)

(assert (=> b!4350607 (= res!1787310 (not (allKeysSameHashInMap!571 lt!1564337 hashF!1247)))))

(declare-fun b!4350608 () Bool)

(declare-fun e!2707365 () Bool)

(declare-fun lt!1564343 () ListLongMap!1567)

(declare-fun lambda!139327 () Int)

(declare-fun forall!9077 (List!48996 Int) Bool)

(assert (=> b!4350608 (= e!2707365 (forall!9077 (toList!2917 lt!1564343) lambda!139327))))

(declare-fun b!4350609 () Bool)

(declare-fun e!2707363 () Bool)

(assert (=> b!4350609 (= e!2707363 e!2707369)))

(declare-fun res!1787307 () Bool)

(assert (=> b!4350609 (=> res!1787307 e!2707369)))

(assert (=> b!4350609 (= res!1787307 (not (forall!9077 (toList!2917 lt!1564337) lambda!139327)))))

(assert (=> b!4350609 (contains!11038 (extractMap!526 (toList!2917 lt!1564337)) key!3918)))

(declare-fun tail!6959 (ListLongMap!1567) ListLongMap!1567)

(assert (=> b!4350609 (= lt!1564337 (tail!6959 lm!1707))))

(declare-fun lt!1564342 () ListMap!2161)

(assert (=> b!4350609 (contains!11038 lt!1564342 key!3918)))

(declare-datatypes ((Unit!71037 0))(
  ( (Unit!71038) )
))
(declare-fun lt!1564341 () Unit!71037)

(declare-fun newValue!99 () V!10481)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!10 (List!48995 K!10235 V!10481 ListMap!2161) Unit!71037)

(assert (=> b!4350609 (= lt!1564341 (lemmaAddToMapContainsAndNotInListThenInAcc!10 (_2!27414 (h!54407 (toList!2917 lm!1707))) key!3918 newValue!99 lt!1564342))))

(assert (=> b!4350609 (= lt!1564342 (extractMap!526 (t!355916 (toList!2917 lm!1707))))))

(declare-fun e!2707368 () Bool)

(assert (=> b!4350609 e!2707368))

(declare-fun res!1787309 () Bool)

(assert (=> b!4350609 (=> (not res!1787309) (not e!2707368))))

(declare-fun containsKey!638 (List!48995 K!10235) Bool)

(declare-fun apply!11319 (ListLongMap!1567 (_ BitVec 64)) List!48995)

(assert (=> b!4350609 (= res!1787309 (not (containsKey!638 (apply!11319 lm!1707 (_1!27414 (h!54407 (toList!2917 lm!1707)))) key!3918)))))

(declare-fun lt!1564338 () Unit!71037)

(declare-fun lemmaNotSameHashThenCannotContainKey!14 (ListLongMap!1567 K!10235 (_ BitVec 64) Hashable!4859) Unit!71037)

(assert (=> b!4350609 (= lt!1564338 (lemmaNotSameHashThenCannotContainKey!14 lm!1707 key!3918 (_1!27414 (h!54407 (toList!2917 lm!1707))) hashF!1247))))

(declare-fun b!4350610 () Bool)

(declare-fun e!2707364 () Bool)

(declare-fun tp!1329831 () Bool)

(assert (=> b!4350610 (= e!2707364 tp!1329831)))

(declare-fun b!4350611 () Bool)

(declare-fun res!1787308 () Bool)

(assert (=> b!4350611 (=> (not res!1787308) (not e!2707370))))

(declare-fun contains!11039 (ListLongMap!1567 (_ BitVec 64)) Bool)

(assert (=> b!4350611 (= res!1787308 (contains!11039 lm!1707 hash!377))))

(declare-fun b!4350612 () Bool)

(assert (=> b!4350612 (= e!2707369 e!2707367)))

(declare-fun res!1787311 () Bool)

(assert (=> b!4350612 (=> res!1787311 e!2707367)))

(declare-fun lt!1564336 () List!48995)

(declare-fun lt!1564349 () tuple2!48238)

(declare-fun removePairForKey!437 (List!48995 K!10235) List!48995)

(assert (=> b!4350612 (= res!1787311 (not (= newBucket!200 (Cons!48871 lt!1564349 (removePairForKey!437 lt!1564336 key!3918)))))))

(declare-fun lt!1564345 () tuple2!48240)

(declare-fun lt!1564348 () Unit!71037)

(declare-fun forallContained!1725 (List!48996 Int tuple2!48240) Unit!71037)

(assert (=> b!4350612 (= lt!1564348 (forallContained!1725 (toList!2917 lt!1564337) lambda!139327 lt!1564345))))

(declare-fun contains!11040 (List!48996 tuple2!48240) Bool)

(assert (=> b!4350612 (contains!11040 (toList!2917 lt!1564337) lt!1564345)))

(assert (=> b!4350612 (= lt!1564345 (tuple2!48241 hash!377 lt!1564336))))

(declare-fun lt!1564347 () Unit!71037)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!314 (List!48996 (_ BitVec 64) List!48995) Unit!71037)

(assert (=> b!4350612 (= lt!1564347 (lemmaGetValueByKeyImpliesContainsTuple!314 (toList!2917 lt!1564337) hash!377 lt!1564336))))

(assert (=> b!4350612 (= lt!1564336 (apply!11319 lt!1564337 hash!377))))

(declare-fun tp_is_empty!25107 () Bool)

(declare-fun e!2707366 () Bool)

(declare-fun tp!1329832 () Bool)

(declare-fun tp_is_empty!25105 () Bool)

(declare-fun b!4350602 () Bool)

(assert (=> b!4350602 (= e!2707366 (and tp_is_empty!25105 tp_is_empty!25107 tp!1329832))))

(declare-fun res!1787321 () Bool)

(assert (=> start!420396 (=> (not res!1787321) (not e!2707370))))

(assert (=> start!420396 (= res!1787321 (forall!9077 (toList!2917 lm!1707) lambda!139327))))

(assert (=> start!420396 e!2707370))

(assert (=> start!420396 e!2707366))

(assert (=> start!420396 true))

(declare-fun inv!64421 (ListLongMap!1567) Bool)

(assert (=> start!420396 (and (inv!64421 lm!1707) e!2707364)))

(assert (=> start!420396 tp_is_empty!25105))

(assert (=> start!420396 tp_is_empty!25107))

(declare-fun b!4350613 () Bool)

(declare-fun e!2707362 () Bool)

(assert (=> b!4350613 (= e!2707370 (not e!2707362))))

(declare-fun res!1787316 () Bool)

(assert (=> b!4350613 (=> res!1787316 e!2707362)))

(declare-fun lt!1564344 () List!48995)

(assert (=> b!4350613 (= res!1787316 (not (= newBucket!200 (Cons!48871 lt!1564349 (removePairForKey!437 lt!1564344 key!3918)))))))

(assert (=> b!4350613 (= lt!1564349 (tuple2!48239 key!3918 newValue!99))))

(declare-fun lt!1564346 () tuple2!48240)

(declare-fun lt!1564350 () Unit!71037)

(assert (=> b!4350613 (= lt!1564350 (forallContained!1725 (toList!2917 lm!1707) lambda!139327 lt!1564346))))

(assert (=> b!4350613 (contains!11040 (toList!2917 lm!1707) lt!1564346)))

(assert (=> b!4350613 (= lt!1564346 (tuple2!48241 hash!377 lt!1564344))))

(declare-fun lt!1564339 () Unit!71037)

(assert (=> b!4350613 (= lt!1564339 (lemmaGetValueByKeyImpliesContainsTuple!314 (toList!2917 lm!1707) hash!377 lt!1564344))))

(assert (=> b!4350613 (= lt!1564344 (apply!11319 lm!1707 hash!377))))

(declare-fun b!4350614 () Bool)

(declare-fun res!1787312 () Bool)

(assert (=> b!4350614 (=> res!1787312 e!2707369)))

(assert (=> b!4350614 (= res!1787312 (not (contains!11039 lt!1564337 hash!377)))))

(declare-fun b!4350615 () Bool)

(assert (=> b!4350615 (= e!2707362 e!2707363)))

(declare-fun res!1787314 () Bool)

(assert (=> b!4350615 (=> res!1787314 e!2707363)))

(get-info :version)

(assert (=> b!4350615 (= res!1787314 (or (and ((_ is Cons!48872) (toList!2917 lm!1707)) (= (_1!27414 (h!54407 (toList!2917 lm!1707))) hash!377)) (not ((_ is Cons!48872) (toList!2917 lm!1707))) (= (_1!27414 (h!54407 (toList!2917 lm!1707))) hash!377)))))

(assert (=> b!4350615 e!2707365))

(declare-fun res!1787318 () Bool)

(assert (=> b!4350615 (=> (not res!1787318) (not e!2707365))))

(assert (=> b!4350615 (= res!1787318 (forall!9077 (toList!2917 lt!1564343) lambda!139327))))

(declare-fun +!594 (ListLongMap!1567 tuple2!48240) ListLongMap!1567)

(assert (=> b!4350615 (= lt!1564343 (+!594 lm!1707 (tuple2!48241 hash!377 newBucket!200)))))

(declare-fun lt!1564340 () Unit!71037)

(declare-fun addValidProp!121 (ListLongMap!1567 Int (_ BitVec 64) List!48995) Unit!71037)

(assert (=> b!4350615 (= lt!1564340 (addValidProp!121 lm!1707 lambda!139327 hash!377 newBucket!200))))

(assert (=> b!4350615 (forall!9077 (toList!2917 lm!1707) lambda!139327)))

(declare-fun b!4350616 () Bool)

(declare-fun res!1787319 () Bool)

(assert (=> b!4350616 (=> (not res!1787319) (not e!2707370))))

(assert (=> b!4350616 (= res!1787319 (allKeysSameHashInMap!571 lm!1707 hashF!1247))))

(declare-fun b!4350617 () Bool)

(assert (=> b!4350617 (= e!2707368 (not (containsKey!638 (_2!27414 (h!54407 (toList!2917 lm!1707))) key!3918)))))

(declare-fun b!4350618 () Bool)

(declare-fun res!1787315 () Bool)

(assert (=> b!4350618 (=> res!1787315 e!2707362)))

(declare-fun noDuplicateKeys!467 (List!48995) Bool)

(assert (=> b!4350618 (= res!1787315 (not (noDuplicateKeys!467 newBucket!200)))))

(assert (= (and start!420396 res!1787321) b!4350616))

(assert (= (and b!4350616 res!1787319) b!4350606))

(assert (= (and b!4350606 res!1787320) b!4350605))

(assert (= (and b!4350605 res!1787317) b!4350604))

(assert (= (and b!4350604 res!1787313) b!4350611))

(assert (= (and b!4350611 res!1787308) b!4350613))

(assert (= (and b!4350613 (not res!1787316)) b!4350618))

(assert (= (and b!4350618 (not res!1787315)) b!4350615))

(assert (= (and b!4350615 res!1787318) b!4350608))

(assert (= (and b!4350615 (not res!1787314)) b!4350609))

(assert (= (and b!4350609 res!1787309) b!4350617))

(assert (= (and b!4350609 (not res!1787307)) b!4350607))

(assert (= (and b!4350607 (not res!1787310)) b!4350614))

(assert (= (and b!4350614 (not res!1787312)) b!4350612))

(assert (= (and b!4350612 (not res!1787311)) b!4350603))

(assert (= (and start!420396 ((_ is Cons!48871) newBucket!200)) b!4350602))

(assert (= start!420396 b!4350610))

(declare-fun m!4960743 () Bool)

(assert (=> b!4350613 m!4960743))

(declare-fun m!4960745 () Bool)

(assert (=> b!4350613 m!4960745))

(declare-fun m!4960747 () Bool)

(assert (=> b!4350613 m!4960747))

(declare-fun m!4960749 () Bool)

(assert (=> b!4350613 m!4960749))

(declare-fun m!4960751 () Bool)

(assert (=> b!4350613 m!4960751))

(declare-fun m!4960753 () Bool)

(assert (=> start!420396 m!4960753))

(declare-fun m!4960755 () Bool)

(assert (=> start!420396 m!4960755))

(declare-fun m!4960757 () Bool)

(assert (=> b!4350615 m!4960757))

(declare-fun m!4960759 () Bool)

(assert (=> b!4350615 m!4960759))

(declare-fun m!4960761 () Bool)

(assert (=> b!4350615 m!4960761))

(assert (=> b!4350615 m!4960753))

(assert (=> b!4350608 m!4960757))

(declare-fun m!4960763 () Bool)

(assert (=> b!4350612 m!4960763))

(declare-fun m!4960765 () Bool)

(assert (=> b!4350612 m!4960765))

(declare-fun m!4960767 () Bool)

(assert (=> b!4350612 m!4960767))

(declare-fun m!4960769 () Bool)

(assert (=> b!4350612 m!4960769))

(declare-fun m!4960771 () Bool)

(assert (=> b!4350612 m!4960771))

(declare-fun m!4960773 () Bool)

(assert (=> b!4350605 m!4960773))

(declare-fun m!4960775 () Bool)

(assert (=> b!4350611 m!4960775))

(declare-fun m!4960777 () Bool)

(assert (=> b!4350606 m!4960777))

(declare-fun m!4960779 () Bool)

(assert (=> b!4350617 m!4960779))

(declare-fun m!4960781 () Bool)

(assert (=> b!4350618 m!4960781))

(declare-fun m!4960783 () Bool)

(assert (=> b!4350604 m!4960783))

(assert (=> b!4350604 m!4960783))

(declare-fun m!4960785 () Bool)

(assert (=> b!4350604 m!4960785))

(declare-fun m!4960787 () Bool)

(assert (=> b!4350616 m!4960787))

(declare-fun m!4960789 () Bool)

(assert (=> b!4350614 m!4960789))

(declare-fun m!4960791 () Bool)

(assert (=> b!4350609 m!4960791))

(declare-fun m!4960793 () Bool)

(assert (=> b!4350609 m!4960793))

(declare-fun m!4960795 () Bool)

(assert (=> b!4350609 m!4960795))

(declare-fun m!4960797 () Bool)

(assert (=> b!4350609 m!4960797))

(declare-fun m!4960799 () Bool)

(assert (=> b!4350609 m!4960799))

(assert (=> b!4350609 m!4960797))

(declare-fun m!4960801 () Bool)

(assert (=> b!4350609 m!4960801))

(declare-fun m!4960803 () Bool)

(assert (=> b!4350609 m!4960803))

(declare-fun m!4960805 () Bool)

(assert (=> b!4350609 m!4960805))

(declare-fun m!4960807 () Bool)

(assert (=> b!4350609 m!4960807))

(assert (=> b!4350609 m!4960807))

(declare-fun m!4960809 () Bool)

(assert (=> b!4350609 m!4960809))

(declare-fun m!4960811 () Bool)

(assert (=> b!4350607 m!4960811))

(check-sat (not b!4350604) (not b!4350612) tp_is_empty!25107 (not b!4350613) (not b!4350609) (not b!4350605) (not start!420396) (not b!4350602) (not b!4350607) (not b!4350616) tp_is_empty!25105 (not b!4350617) (not b!4350608) (not b!4350606) (not b!4350618) (not b!4350611) (not b!4350615) (not b!4350610) (not b!4350614))
(check-sat)
