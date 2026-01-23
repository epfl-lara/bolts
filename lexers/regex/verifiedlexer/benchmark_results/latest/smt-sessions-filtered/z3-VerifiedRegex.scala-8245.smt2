; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427700 () Bool)

(assert start!427700)

(declare-fun b!4400053 () Bool)

(declare-fun res!1814740 () Bool)

(declare-fun e!2739729 () Bool)

(assert (=> b!4400053 (=> res!1814740 e!2739729)))

(declare-datatypes ((V!10876 0))(
  ( (V!10877 (val!16775 Int)) )
))
(declare-datatypes ((K!10630 0))(
  ( (K!10631 (val!16776 Int)) )
))
(declare-datatypes ((tuple2!48870 0))(
  ( (tuple2!48871 (_1!27729 K!10630) (_2!27729 V!10876)) )
))
(declare-datatypes ((List!49398 0))(
  ( (Nil!49274) (Cons!49274 (h!54899 tuple2!48870) (t!356332 List!49398)) )
))
(declare-datatypes ((tuple2!48872 0))(
  ( (tuple2!48873 (_1!27730 (_ BitVec 64)) (_2!27730 List!49398)) )
))
(declare-datatypes ((List!49399 0))(
  ( (Nil!49275) (Cons!49275 (h!54900 tuple2!48872) (t!356333 List!49399)) )
))
(declare-datatypes ((ListLongMap!1883 0))(
  ( (ListLongMap!1884 (toList!3233 List!49399)) )
))
(declare-fun lt!1605369 () ListLongMap!1883)

(declare-datatypes ((Hashable!5017 0))(
  ( (HashableExt!5016 (__x!30720 Int)) )
))
(declare-fun hashF!1247 () Hashable!5017)

(declare-fun allKeysSameHashInMap!729 (ListLongMap!1883 Hashable!5017) Bool)

(assert (=> b!4400053 (= res!1814740 (not (allKeysSameHashInMap!729 lt!1605369 hashF!1247)))))

(declare-fun b!4400054 () Bool)

(declare-fun res!1814751 () Bool)

(declare-fun e!2739728 () Bool)

(assert (=> b!4400054 (=> (not res!1814751) (not e!2739728))))

(declare-fun newBucket!200 () List!49398)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!583 (List!49398 (_ BitVec 64) Hashable!5017) Bool)

(assert (=> b!4400054 (= res!1814751 (allKeysSameHash!583 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4400055 () Bool)

(declare-fun e!2739734 () Bool)

(assert (=> b!4400055 (= e!2739728 (not e!2739734))))

(declare-fun res!1814753 () Bool)

(assert (=> b!4400055 (=> res!1814753 e!2739734)))

(declare-fun lt!1605371 () List!49398)

(declare-fun key!3918 () K!10630)

(declare-fun newValue!99 () V!10876)

(declare-fun removePairForKey!593 (List!49398 K!10630) List!49398)

(assert (=> b!4400055 (= res!1814753 (not (= newBucket!200 (Cons!49274 (tuple2!48871 key!3918 newValue!99) (removePairForKey!593 lt!1605371 key!3918)))))))

(declare-fun lambda!148759 () Int)

(declare-datatypes ((Unit!78747 0))(
  ( (Unit!78748) )
))
(declare-fun lt!1605375 () Unit!78747)

(declare-fun lm!1707 () ListLongMap!1883)

(declare-fun lt!1605366 () tuple2!48872)

(declare-fun forallContained!1997 (List!49399 Int tuple2!48872) Unit!78747)

(assert (=> b!4400055 (= lt!1605375 (forallContained!1997 (toList!3233 lm!1707) lambda!148759 lt!1605366))))

(declare-fun contains!11661 (List!49399 tuple2!48872) Bool)

(assert (=> b!4400055 (contains!11661 (toList!3233 lm!1707) lt!1605366)))

(assert (=> b!4400055 (= lt!1605366 (tuple2!48873 hash!377 lt!1605371))))

(declare-fun lt!1605367 () Unit!78747)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!470 (List!49399 (_ BitVec 64) List!49398) Unit!78747)

(assert (=> b!4400055 (= lt!1605367 (lemmaGetValueByKeyImpliesContainsTuple!470 (toList!3233 lm!1707) hash!377 lt!1605371))))

(declare-fun apply!11477 (ListLongMap!1883 (_ BitVec 64)) List!49398)

(assert (=> b!4400055 (= lt!1605371 (apply!11477 lm!1707 hash!377))))

(declare-fun res!1814742 () Bool)

(assert (=> start!427700 (=> (not res!1814742) (not e!2739728))))

(declare-fun forall!9362 (List!49399 Int) Bool)

(assert (=> start!427700 (= res!1814742 (forall!9362 (toList!3233 lm!1707) lambda!148759))))

(assert (=> start!427700 e!2739728))

(declare-fun e!2739731 () Bool)

(assert (=> start!427700 e!2739731))

(assert (=> start!427700 true))

(declare-fun e!2739733 () Bool)

(declare-fun inv!64816 (ListLongMap!1883) Bool)

(assert (=> start!427700 (and (inv!64816 lm!1707) e!2739733)))

(declare-fun tp_is_empty!25737 () Bool)

(assert (=> start!427700 tp_is_empty!25737))

(declare-fun tp_is_empty!25739 () Bool)

(assert (=> start!427700 tp_is_empty!25739))

(declare-fun b!4400056 () Bool)

(declare-fun e!2739727 () Bool)

(assert (=> b!4400056 (= e!2739727 e!2739729)))

(declare-fun res!1814750 () Bool)

(assert (=> b!4400056 (=> res!1814750 e!2739729)))

(assert (=> b!4400056 (= res!1814750 (not (forall!9362 (toList!3233 lt!1605369) lambda!148759)))))

(declare-datatypes ((ListMap!2477 0))(
  ( (ListMap!2478 (toList!3234 List!49398)) )
))
(declare-fun contains!11662 (ListMap!2477 K!10630) Bool)

(declare-fun extractMap!684 (List!49399) ListMap!2477)

(assert (=> b!4400056 (contains!11662 (extractMap!684 (toList!3233 lt!1605369)) key!3918)))

(declare-fun tail!7111 (ListLongMap!1883) ListLongMap!1883)

(assert (=> b!4400056 (= lt!1605369 (tail!7111 lm!1707))))

(declare-fun lt!1605364 () ListMap!2477)

(assert (=> b!4400056 (contains!11662 lt!1605364 key!3918)))

(declare-fun lt!1605363 () Unit!78747)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!84 (List!49398 K!10630 V!10876 ListMap!2477) Unit!78747)

(assert (=> b!4400056 (= lt!1605363 (lemmaAddToMapContainsAndNotInListThenInAcc!84 (_2!27730 (h!54900 (toList!3233 lm!1707))) key!3918 newValue!99 lt!1605364))))

(assert (=> b!4400056 (= lt!1605364 (extractMap!684 (t!356333 (toList!3233 lm!1707))))))

(declare-fun e!2739730 () Bool)

(assert (=> b!4400056 e!2739730))

(declare-fun res!1814741 () Bool)

(assert (=> b!4400056 (=> (not res!1814741) (not e!2739730))))

(declare-fun containsKey!931 (List!49398 K!10630) Bool)

(assert (=> b!4400056 (= res!1814741 (not (containsKey!931 (apply!11477 lm!1707 (_1!27730 (h!54900 (toList!3233 lm!1707)))) key!3918)))))

(declare-fun lt!1605365 () Unit!78747)

(declare-fun lemmaNotSameHashThenCannotContainKey!96 (ListLongMap!1883 K!10630 (_ BitVec 64) Hashable!5017) Unit!78747)

(assert (=> b!4400056 (= lt!1605365 (lemmaNotSameHashThenCannotContainKey!96 lm!1707 key!3918 (_1!27730 (h!54900 (toList!3233 lm!1707))) hashF!1247))))

(declare-fun b!4400057 () Bool)

(assert (=> b!4400057 (= e!2739734 e!2739727)))

(declare-fun res!1814748 () Bool)

(assert (=> b!4400057 (=> res!1814748 e!2739727)))

(get-info :version)

(assert (=> b!4400057 (= res!1814748 (or (and ((_ is Cons!49275) (toList!3233 lm!1707)) (= (_1!27730 (h!54900 (toList!3233 lm!1707))) hash!377)) (not ((_ is Cons!49275) (toList!3233 lm!1707))) (= (_1!27730 (h!54900 (toList!3233 lm!1707))) hash!377)))))

(declare-fun e!2739732 () Bool)

(assert (=> b!4400057 e!2739732))

(declare-fun res!1814746 () Bool)

(assert (=> b!4400057 (=> (not res!1814746) (not e!2739732))))

(declare-fun lt!1605372 () ListLongMap!1883)

(assert (=> b!4400057 (= res!1814746 (forall!9362 (toList!3233 lt!1605372) lambda!148759))))

(declare-fun +!866 (ListLongMap!1883 tuple2!48872) ListLongMap!1883)

(assert (=> b!4400057 (= lt!1605372 (+!866 lm!1707 (tuple2!48873 hash!377 newBucket!200)))))

(declare-fun lt!1605368 () Unit!78747)

(declare-fun addValidProp!271 (ListLongMap!1883 Int (_ BitVec 64) List!49398) Unit!78747)

(assert (=> b!4400057 (= lt!1605368 (addValidProp!271 lm!1707 lambda!148759 hash!377 newBucket!200))))

(assert (=> b!4400057 (forall!9362 (toList!3233 lm!1707) lambda!148759)))

(declare-fun b!4400058 () Bool)

(declare-fun tp!1331800 () Bool)

(assert (=> b!4400058 (= e!2739733 tp!1331800)))

(declare-fun b!4400059 () Bool)

(assert (=> b!4400059 (= e!2739732 (forall!9362 (toList!3233 lt!1605372) lambda!148759))))

(declare-fun b!4400060 () Bool)

(declare-fun res!1814744 () Bool)

(assert (=> b!4400060 (=> (not res!1814744) (not e!2739728))))

(declare-fun hash!1865 (Hashable!5017 K!10630) (_ BitVec 64))

(assert (=> b!4400060 (= res!1814744 (= (hash!1865 hashF!1247 key!3918) hash!377))))

(declare-fun b!4400061 () Bool)

(declare-fun res!1814749 () Bool)

(assert (=> b!4400061 (=> (not res!1814749) (not e!2739728))))

(assert (=> b!4400061 (= res!1814749 (allKeysSameHashInMap!729 lm!1707 hashF!1247))))

(declare-fun b!4400062 () Bool)

(assert (=> b!4400062 (= e!2739730 (not (containsKey!931 (_2!27730 (h!54900 (toList!3233 lm!1707))) key!3918)))))

(declare-fun b!4400063 () Bool)

(assert (=> b!4400063 (= e!2739729 true)))

(declare-fun lt!1605376 () List!49398)

(declare-fun lt!1605373 () List!49398)

(assert (=> b!4400063 (= lt!1605376 (removePairForKey!593 lt!1605373 key!3918))))

(declare-fun lt!1605374 () Unit!78747)

(declare-fun lt!1605370 () tuple2!48872)

(assert (=> b!4400063 (= lt!1605374 (forallContained!1997 (toList!3233 lt!1605369) lambda!148759 lt!1605370))))

(assert (=> b!4400063 (contains!11661 (toList!3233 lt!1605369) lt!1605370)))

(assert (=> b!4400063 (= lt!1605370 (tuple2!48873 hash!377 lt!1605373))))

(declare-fun lt!1605362 () Unit!78747)

(assert (=> b!4400063 (= lt!1605362 (lemmaGetValueByKeyImpliesContainsTuple!470 (toList!3233 lt!1605369) hash!377 lt!1605373))))

(assert (=> b!4400063 (= lt!1605373 (apply!11477 lt!1605369 hash!377))))

(declare-fun b!4400064 () Bool)

(declare-fun res!1814743 () Bool)

(assert (=> b!4400064 (=> (not res!1814743) (not e!2739728))))

(declare-fun contains!11663 (ListLongMap!1883 (_ BitVec 64)) Bool)

(assert (=> b!4400064 (= res!1814743 (contains!11663 lm!1707 hash!377))))

(declare-fun b!4400065 () Bool)

(declare-fun res!1814745 () Bool)

(assert (=> b!4400065 (=> res!1814745 e!2739734)))

(declare-fun noDuplicateKeys!625 (List!49398) Bool)

(assert (=> b!4400065 (= res!1814745 (not (noDuplicateKeys!625 newBucket!200)))))

(declare-fun b!4400066 () Bool)

(declare-fun res!1814752 () Bool)

(assert (=> b!4400066 (=> (not res!1814752) (not e!2739728))))

(assert (=> b!4400066 (= res!1814752 (contains!11662 (extractMap!684 (toList!3233 lm!1707)) key!3918))))

(declare-fun b!4400067 () Bool)

(declare-fun res!1814747 () Bool)

(assert (=> b!4400067 (=> res!1814747 e!2739729)))

(assert (=> b!4400067 (= res!1814747 (not (contains!11663 lt!1605369 hash!377)))))

(declare-fun tp!1331799 () Bool)

(declare-fun b!4400068 () Bool)

(assert (=> b!4400068 (= e!2739731 (and tp_is_empty!25737 tp_is_empty!25739 tp!1331799))))

(assert (= (and start!427700 res!1814742) b!4400061))

(assert (= (and b!4400061 res!1814749) b!4400060))

(assert (= (and b!4400060 res!1814744) b!4400054))

(assert (= (and b!4400054 res!1814751) b!4400066))

(assert (= (and b!4400066 res!1814752) b!4400064))

(assert (= (and b!4400064 res!1814743) b!4400055))

(assert (= (and b!4400055 (not res!1814753)) b!4400065))

(assert (= (and b!4400065 (not res!1814745)) b!4400057))

(assert (= (and b!4400057 res!1814746) b!4400059))

(assert (= (and b!4400057 (not res!1814748)) b!4400056))

(assert (= (and b!4400056 res!1814741) b!4400062))

(assert (= (and b!4400056 (not res!1814750)) b!4400053))

(assert (= (and b!4400053 (not res!1814740)) b!4400067))

(assert (= (and b!4400067 (not res!1814747)) b!4400063))

(assert (= (and start!427700 ((_ is Cons!49274) newBucket!200)) b!4400068))

(assert (= start!427700 b!4400058))

(declare-fun m!5062541 () Bool)

(assert (=> b!4400065 m!5062541))

(declare-fun m!5062543 () Bool)

(assert (=> b!4400055 m!5062543))

(declare-fun m!5062545 () Bool)

(assert (=> b!4400055 m!5062545))

(declare-fun m!5062547 () Bool)

(assert (=> b!4400055 m!5062547))

(declare-fun m!5062549 () Bool)

(assert (=> b!4400055 m!5062549))

(declare-fun m!5062551 () Bool)

(assert (=> b!4400055 m!5062551))

(declare-fun m!5062553 () Bool)

(assert (=> b!4400063 m!5062553))

(declare-fun m!5062555 () Bool)

(assert (=> b!4400063 m!5062555))

(declare-fun m!5062557 () Bool)

(assert (=> b!4400063 m!5062557))

(declare-fun m!5062559 () Bool)

(assert (=> b!4400063 m!5062559))

(declare-fun m!5062561 () Bool)

(assert (=> b!4400063 m!5062561))

(declare-fun m!5062563 () Bool)

(assert (=> b!4400053 m!5062563))

(declare-fun m!5062565 () Bool)

(assert (=> start!427700 m!5062565))

(declare-fun m!5062567 () Bool)

(assert (=> start!427700 m!5062567))

(declare-fun m!5062569 () Bool)

(assert (=> b!4400066 m!5062569))

(assert (=> b!4400066 m!5062569))

(declare-fun m!5062571 () Bool)

(assert (=> b!4400066 m!5062571))

(declare-fun m!5062573 () Bool)

(assert (=> b!4400054 m!5062573))

(declare-fun m!5062575 () Bool)

(assert (=> b!4400060 m!5062575))

(declare-fun m!5062577 () Bool)

(assert (=> b!4400061 m!5062577))

(declare-fun m!5062579 () Bool)

(assert (=> b!4400056 m!5062579))

(declare-fun m!5062581 () Bool)

(assert (=> b!4400056 m!5062581))

(declare-fun m!5062583 () Bool)

(assert (=> b!4400056 m!5062583))

(assert (=> b!4400056 m!5062579))

(declare-fun m!5062585 () Bool)

(assert (=> b!4400056 m!5062585))

(declare-fun m!5062587 () Bool)

(assert (=> b!4400056 m!5062587))

(declare-fun m!5062589 () Bool)

(assert (=> b!4400056 m!5062589))

(declare-fun m!5062591 () Bool)

(assert (=> b!4400056 m!5062591))

(declare-fun m!5062593 () Bool)

(assert (=> b!4400056 m!5062593))

(declare-fun m!5062595 () Bool)

(assert (=> b!4400056 m!5062595))

(assert (=> b!4400056 m!5062595))

(declare-fun m!5062597 () Bool)

(assert (=> b!4400056 m!5062597))

(declare-fun m!5062599 () Bool)

(assert (=> b!4400064 m!5062599))

(declare-fun m!5062601 () Bool)

(assert (=> b!4400067 m!5062601))

(declare-fun m!5062603 () Bool)

(assert (=> b!4400057 m!5062603))

(declare-fun m!5062605 () Bool)

(assert (=> b!4400057 m!5062605))

(declare-fun m!5062607 () Bool)

(assert (=> b!4400057 m!5062607))

(assert (=> b!4400057 m!5062565))

(declare-fun m!5062609 () Bool)

(assert (=> b!4400062 m!5062609))

(assert (=> b!4400059 m!5062603))

(check-sat (not b!4400058) (not b!4400061) (not b!4400063) (not b!4400060) (not b!4400066) (not b!4400059) tp_is_empty!25737 (not b!4400055) (not start!427700) (not b!4400062) (not b!4400054) (not b!4400068) (not b!4400064) (not b!4400053) (not b!4400067) tp_is_empty!25739 (not b!4400065) (not b!4400056) (not b!4400057))
(check-sat)
