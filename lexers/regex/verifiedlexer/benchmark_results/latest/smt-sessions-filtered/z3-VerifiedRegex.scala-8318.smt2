; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432488 () Bool)

(assert start!432488)

(declare-fun b!4429459 () Bool)

(declare-fun res!1831923 () Bool)

(declare-fun e!2758055 () Bool)

(assert (=> b!4429459 (=> (not res!1831923) (not e!2758055))))

(declare-datatypes ((K!10995 0))(
  ( (K!10996 (val!17067 Int)) )
))
(declare-datatypes ((V!11241 0))(
  ( (V!11242 (val!17068 Int)) )
))
(declare-datatypes ((tuple2!49454 0))(
  ( (tuple2!49455 (_1!28021 K!10995) (_2!28021 V!11241)) )
))
(declare-datatypes ((List!49757 0))(
  ( (Nil!49633) (Cons!49633 (h!55330 tuple2!49454) (t!356695 List!49757)) )
))
(declare-fun newBucket!194 () List!49757)

(declare-datatypes ((Hashable!5163 0))(
  ( (HashableExt!5162 (__x!30866 Int)) )
))
(declare-fun hashF!1220 () Hashable!5163)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!729 (List!49757 (_ BitVec 64) Hashable!5163) Bool)

(assert (=> b!4429459 (= res!1831923 (allKeysSameHash!729 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4429460 () Bool)

(declare-fun e!2758063 () Bool)

(declare-fun e!2758059 () Bool)

(assert (=> b!4429460 (= e!2758063 e!2758059)))

(declare-fun res!1831914 () Bool)

(assert (=> b!4429460 (=> res!1831914 e!2758059)))

(declare-datatypes ((tuple2!49456 0))(
  ( (tuple2!49457 (_1!28022 (_ BitVec 64)) (_2!28022 List!49757)) )
))
(declare-datatypes ((List!49758 0))(
  ( (Nil!49634) (Cons!49634 (h!55331 tuple2!49456) (t!356696 List!49758)) )
))
(declare-datatypes ((ListLongMap!2175 0))(
  ( (ListLongMap!2176 (toList!3525 List!49758)) )
))
(declare-fun lm!1616 () ListLongMap!2175)

(declare-fun noDuplicateKeys!769 (List!49757) Bool)

(assert (=> b!4429460 (= res!1831914 (not (noDuplicateKeys!769 (_2!28022 (h!55331 (toList!3525 lm!1616))))))))

(declare-datatypes ((ListMap!2769 0))(
  ( (ListMap!2770 (toList!3526 List!49757)) )
))
(declare-fun lt!1628872 () ListMap!2769)

(declare-fun lt!1628878 () tuple2!49454)

(declare-fun lt!1628876 () ListMap!2769)

(declare-fun eq!427 (ListMap!2769 ListMap!2769) Bool)

(declare-fun +!1122 (ListMap!2769 tuple2!49454) ListMap!2769)

(assert (=> b!4429460 (eq!427 (+!1122 lt!1628872 lt!1628878) lt!1628876)))

(declare-fun newValue!93 () V!11241)

(declare-fun key!3717 () K!10995)

(declare-fun lt!1628865 () ListMap!2769)

(declare-datatypes ((Unit!82597 0))(
  ( (Unit!82598) )
))
(declare-fun lt!1628867 () Unit!82597)

(declare-fun lemmaAddToEqMapsPreservesEq!38 (ListMap!2769 ListMap!2769 K!10995 V!11241) Unit!82597)

(assert (=> b!4429460 (= lt!1628867 (lemmaAddToEqMapsPreservesEq!38 lt!1628872 lt!1628865 key!3717 newValue!93))))

(declare-fun lt!1628882 () ListMap!2769)

(assert (=> b!4429460 (eq!427 lt!1628882 lt!1628876)))

(assert (=> b!4429460 (= lt!1628876 (+!1122 lt!1628865 lt!1628878))))

(declare-fun lt!1628881 () ListMap!2769)

(declare-fun addToMapMapFromBucket!406 (List!49757 ListMap!2769) ListMap!2769)

(assert (=> b!4429460 (= lt!1628882 (addToMapMapFromBucket!406 (_2!28022 (h!55331 (toList!3525 lm!1616))) lt!1628881))))

(declare-fun lt!1628875 () ListMap!2769)

(declare-fun lt!1628873 () Unit!82597)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!198 (ListMap!2769 K!10995 V!11241 List!49757) Unit!82597)

(assert (=> b!4429460 (= lt!1628873 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!198 lt!1628875 key!3717 newValue!93 (_2!28022 (h!55331 (toList!3525 lm!1616)))))))

(declare-fun b!4429461 () Bool)

(declare-fun res!1831921 () Bool)

(declare-fun e!2758052 () Bool)

(assert (=> b!4429461 (=> res!1831921 e!2758052)))

(get-info :version)

(assert (=> b!4429461 (= res!1831921 (or (and ((_ is Cons!49634) (toList!3525 lm!1616)) (= (_1!28022 (h!55331 (toList!3525 lm!1616))) hash!366)) (not ((_ is Cons!49634) (toList!3525 lm!1616))) (= (_1!28022 (h!55331 (toList!3525 lm!1616))) hash!366)))))

(declare-fun b!4429462 () Bool)

(declare-fun res!1831919 () Bool)

(assert (=> b!4429462 (=> res!1831919 e!2758059)))

(declare-fun lt!1628883 () ListMap!2769)

(assert (=> b!4429462 (= res!1831919 (not (eq!427 lt!1628881 lt!1628883)))))

(declare-fun b!4429463 () Bool)

(declare-fun e!2758053 () Bool)

(declare-fun e!2758054 () Bool)

(assert (=> b!4429463 (= e!2758053 e!2758054)))

(declare-fun res!1831927 () Bool)

(assert (=> b!4429463 (=> (not res!1831927) (not e!2758054))))

(declare-fun e!2758056 () Bool)

(assert (=> b!4429463 (= res!1831927 e!2758056)))

(declare-fun res!1831912 () Bool)

(assert (=> b!4429463 (=> res!1831912 e!2758056)))

(declare-fun e!2758062 () Bool)

(assert (=> b!4429463 (= res!1831912 e!2758062)))

(declare-fun res!1831915 () Bool)

(assert (=> b!4429463 (=> (not res!1831915) (not e!2758062))))

(declare-fun lt!1628877 () Bool)

(assert (=> b!4429463 (= res!1831915 lt!1628877)))

(declare-fun contains!12158 (ListLongMap!2175 (_ BitVec 64)) Bool)

(assert (=> b!4429463 (= lt!1628877 (contains!12158 lm!1616 hash!366))))

(declare-fun b!4429464 () Bool)

(declare-fun e!2758064 () Bool)

(declare-fun tp!1333429 () Bool)

(assert (=> b!4429464 (= e!2758064 tp!1333429)))

(declare-fun b!4429465 () Bool)

(assert (=> b!4429465 (= e!2758055 e!2758053)))

(declare-fun res!1831924 () Bool)

(assert (=> b!4429465 (=> (not res!1831924) (not e!2758053))))

(declare-fun contains!12159 (ListMap!2769 K!10995) Bool)

(assert (=> b!4429465 (= res!1831924 (not (contains!12159 lt!1628872 key!3717)))))

(declare-fun extractMap!830 (List!49758) ListMap!2769)

(assert (=> b!4429465 (= lt!1628872 (extractMap!830 (toList!3525 lm!1616)))))

(declare-fun b!4429466 () Bool)

(declare-fun e!2758061 () Bool)

(declare-fun e!2758060 () Bool)

(assert (=> b!4429466 (= e!2758061 e!2758060)))

(declare-fun res!1831918 () Bool)

(assert (=> b!4429466 (=> res!1831918 e!2758060)))

(assert (=> b!4429466 (= res!1831918 (not (eq!427 lt!1628872 lt!1628865)))))

(assert (=> b!4429466 (= lt!1628865 (addToMapMapFromBucket!406 (_2!28022 (h!55331 (toList!3525 lm!1616))) lt!1628875))))

(declare-fun res!1831917 () Bool)

(assert (=> start!432488 (=> (not res!1831917) (not e!2758055))))

(declare-fun lambda!154936 () Int)

(declare-fun forall!9596 (List!49758 Int) Bool)

(assert (=> start!432488 (= res!1831917 (forall!9596 (toList!3525 lm!1616) lambda!154936))))

(assert (=> start!432488 e!2758055))

(declare-fun tp_is_empty!26321 () Bool)

(assert (=> start!432488 tp_is_empty!26321))

(declare-fun tp_is_empty!26323 () Bool)

(assert (=> start!432488 tp_is_empty!26323))

(declare-fun e!2758058 () Bool)

(assert (=> start!432488 e!2758058))

(declare-fun inv!65181 (ListLongMap!2175) Bool)

(assert (=> start!432488 (and (inv!65181 lm!1616) e!2758064)))

(assert (=> start!432488 true))

(declare-fun b!4429467 () Bool)

(declare-fun apply!11621 (ListLongMap!2175 (_ BitVec 64)) List!49757)

(assert (=> b!4429467 (= e!2758062 (= newBucket!194 (Cons!49633 (tuple2!49455 key!3717 newValue!93) (apply!11621 lm!1616 hash!366))))))

(declare-fun b!4429468 () Bool)

(assert (=> b!4429468 (= e!2758056 (and (not lt!1628877) (= newBucket!194 (Cons!49633 (tuple2!49455 key!3717 newValue!93) Nil!49633))))))

(declare-fun b!4429469 () Bool)

(declare-fun tp!1333430 () Bool)

(assert (=> b!4429469 (= e!2758058 (and tp_is_empty!26323 tp_is_empty!26321 tp!1333430))))

(declare-fun b!4429470 () Bool)

(declare-fun res!1831916 () Bool)

(assert (=> b!4429470 (=> (not res!1831916) (not e!2758054))))

(assert (=> b!4429470 (= res!1831916 (noDuplicateKeys!769 newBucket!194))))

(declare-fun b!4429471 () Bool)

(declare-fun e!2758057 () Unit!82597)

(declare-fun Unit!82599 () Unit!82597)

(assert (=> b!4429471 (= e!2758057 Unit!82599)))

(declare-fun b!4429472 () Bool)

(declare-fun Unit!82600 () Unit!82597)

(assert (=> b!4429472 (= e!2758057 Unit!82600)))

(declare-fun lt!1628864 () Unit!82597)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!56 (ListLongMap!2175 K!10995 Hashable!5163) Unit!82597)

(assert (=> b!4429472 (= lt!1628864 (lemmaExtractTailMapContainsThenExtractMapDoes!56 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4429472 false))

(declare-fun b!4429473 () Bool)

(declare-fun res!1831913 () Bool)

(assert (=> b!4429473 (=> (not res!1831913) (not e!2758055))))

(declare-fun hash!2182 (Hashable!5163 K!10995) (_ BitVec 64))

(assert (=> b!4429473 (= res!1831913 (= (hash!2182 hashF!1220 key!3717) hash!366))))

(declare-fun b!4429474 () Bool)

(declare-fun lt!1628874 () ListLongMap!2175)

(assert (=> b!4429474 (= e!2758059 (forall!9596 (toList!3525 lt!1628874) lambda!154936))))

(assert (=> b!4429474 (eq!427 lt!1628882 (addToMapMapFromBucket!406 (_2!28022 (h!55331 (toList!3525 lm!1616))) lt!1628883))))

(declare-fun lt!1628871 () Unit!82597)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!14 (ListMap!2769 ListMap!2769 List!49757) Unit!82597)

(assert (=> b!4429474 (= lt!1628871 (lemmaAddToMapFromBucketPreservesEquivalence!14 lt!1628881 lt!1628883 (_2!28022 (h!55331 (toList!3525 lm!1616)))))))

(declare-fun b!4429475 () Bool)

(assert (=> b!4429475 (= e!2758060 e!2758063)))

(declare-fun res!1831922 () Bool)

(assert (=> b!4429475 (=> res!1831922 e!2758063)))

(declare-fun containsKey!1156 (List!49757 K!10995) Bool)

(assert (=> b!4429475 (= res!1831922 (containsKey!1156 (_2!28022 (h!55331 (toList!3525 lm!1616))) key!3717))))

(assert (=> b!4429475 (not (containsKey!1156 (apply!11621 lm!1616 (_1!28022 (h!55331 (toList!3525 lm!1616)))) key!3717))))

(declare-fun lt!1628869 () Unit!82597)

(declare-fun lemmaNotSameHashThenCannotContainKey!148 (ListLongMap!2175 K!10995 (_ BitVec 64) Hashable!5163) Unit!82597)

(assert (=> b!4429475 (= lt!1628869 (lemmaNotSameHashThenCannotContainKey!148 lm!1616 key!3717 (_1!28022 (h!55331 (toList!3525 lm!1616))) hashF!1220))))

(declare-fun b!4429476 () Bool)

(declare-fun res!1831920 () Bool)

(assert (=> b!4429476 (=> (not res!1831920) (not e!2758055))))

(declare-fun allKeysSameHashInMap!875 (ListLongMap!2175 Hashable!5163) Bool)

(assert (=> b!4429476 (= res!1831920 (allKeysSameHashInMap!875 lm!1616 hashF!1220))))

(declare-fun b!4429477 () Bool)

(assert (=> b!4429477 (= e!2758054 (not e!2758052))))

(declare-fun res!1831911 () Bool)

(assert (=> b!4429477 (=> res!1831911 e!2758052)))

(assert (=> b!4429477 (= res!1831911 (not (forall!9596 (toList!3525 lt!1628874) lambda!154936)))))

(assert (=> b!4429477 (forall!9596 (toList!3525 lt!1628874) lambda!154936)))

(declare-fun lt!1628868 () tuple2!49456)

(declare-fun +!1123 (ListLongMap!2175 tuple2!49456) ListLongMap!2175)

(assert (=> b!4429477 (= lt!1628874 (+!1123 lm!1616 lt!1628868))))

(assert (=> b!4429477 (= lt!1628868 (tuple2!49457 hash!366 newBucket!194))))

(declare-fun lt!1628879 () Unit!82597)

(declare-fun addValidProp!413 (ListLongMap!2175 Int (_ BitVec 64) List!49757) Unit!82597)

(assert (=> b!4429477 (= lt!1628879 (addValidProp!413 lm!1616 lambda!154936 hash!366 newBucket!194))))

(declare-fun b!4429478 () Bool)

(assert (=> b!4429478 (= e!2758052 e!2758061)))

(declare-fun res!1831926 () Bool)

(assert (=> b!4429478 (=> res!1831926 e!2758061)))

(declare-fun head!9248 (ListLongMap!2175) tuple2!49456)

(assert (=> b!4429478 (= res!1831926 (= (head!9248 lm!1616) lt!1628868))))

(assert (=> b!4429478 (eq!427 lt!1628883 lt!1628881)))

(assert (=> b!4429478 (= lt!1628881 (+!1122 lt!1628875 lt!1628878))))

(assert (=> b!4429478 (= lt!1628878 (tuple2!49455 key!3717 newValue!93))))

(declare-fun lt!1628866 () ListLongMap!2175)

(assert (=> b!4429478 (= lt!1628875 (extractMap!830 (toList!3525 lt!1628866)))))

(assert (=> b!4429478 (= lt!1628883 (extractMap!830 (toList!3525 (+!1123 lt!1628866 lt!1628868))))))

(declare-fun lt!1628880 () Unit!82597)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!143 (ListLongMap!2175 (_ BitVec 64) List!49757 K!10995 V!11241 Hashable!5163) Unit!82597)

(assert (=> b!4429478 (= lt!1628880 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!143 lt!1628866 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7310 (ListLongMap!2175) ListLongMap!2175)

(assert (=> b!4429478 (= lt!1628866 (tail!7310 lm!1616))))

(declare-fun lt!1628870 () Unit!82597)

(assert (=> b!4429478 (= lt!1628870 e!2758057)))

(declare-fun c!753995 () Bool)

(declare-fun tail!7311 (List!49758) List!49758)

(assert (=> b!4429478 (= c!753995 (contains!12159 (extractMap!830 (tail!7311 (toList!3525 lm!1616))) key!3717))))

(declare-fun b!4429479 () Bool)

(declare-fun res!1831925 () Bool)

(assert (=> b!4429479 (=> (not res!1831925) (not e!2758054))))

(assert (=> b!4429479 (= res!1831925 (forall!9596 (toList!3525 lm!1616) lambda!154936))))

(assert (= (and start!432488 res!1831917) b!4429476))

(assert (= (and b!4429476 res!1831920) b!4429473))

(assert (= (and b!4429473 res!1831913) b!4429459))

(assert (= (and b!4429459 res!1831923) b!4429465))

(assert (= (and b!4429465 res!1831924) b!4429463))

(assert (= (and b!4429463 res!1831915) b!4429467))

(assert (= (and b!4429463 (not res!1831912)) b!4429468))

(assert (= (and b!4429463 res!1831927) b!4429470))

(assert (= (and b!4429470 res!1831916) b!4429479))

(assert (= (and b!4429479 res!1831925) b!4429477))

(assert (= (and b!4429477 (not res!1831911)) b!4429461))

(assert (= (and b!4429461 (not res!1831921)) b!4429478))

(assert (= (and b!4429478 c!753995) b!4429472))

(assert (= (and b!4429478 (not c!753995)) b!4429471))

(assert (= (and b!4429478 (not res!1831926)) b!4429466))

(assert (= (and b!4429466 (not res!1831918)) b!4429475))

(assert (= (and b!4429475 (not res!1831922)) b!4429460))

(assert (= (and b!4429460 (not res!1831914)) b!4429462))

(assert (= (and b!4429462 (not res!1831919)) b!4429474))

(assert (= (and start!432488 ((_ is Cons!49633) newBucket!194)) b!4429469))

(assert (= start!432488 b!4429464))

(declare-fun m!5113637 () Bool)

(assert (=> b!4429465 m!5113637))

(declare-fun m!5113639 () Bool)

(assert (=> b!4429465 m!5113639))

(declare-fun m!5113641 () Bool)

(assert (=> b!4429462 m!5113641))

(declare-fun m!5113643 () Bool)

(assert (=> b!4429473 m!5113643))

(declare-fun m!5113645 () Bool)

(assert (=> b!4429472 m!5113645))

(declare-fun m!5113647 () Bool)

(assert (=> b!4429475 m!5113647))

(declare-fun m!5113649 () Bool)

(assert (=> b!4429475 m!5113649))

(assert (=> b!4429475 m!5113649))

(declare-fun m!5113651 () Bool)

(assert (=> b!4429475 m!5113651))

(declare-fun m!5113653 () Bool)

(assert (=> b!4429475 m!5113653))

(declare-fun m!5113655 () Bool)

(assert (=> start!432488 m!5113655))

(declare-fun m!5113657 () Bool)

(assert (=> start!432488 m!5113657))

(declare-fun m!5113659 () Bool)

(assert (=> b!4429460 m!5113659))

(declare-fun m!5113661 () Bool)

(assert (=> b!4429460 m!5113661))

(declare-fun m!5113663 () Bool)

(assert (=> b!4429460 m!5113663))

(declare-fun m!5113665 () Bool)

(assert (=> b!4429460 m!5113665))

(declare-fun m!5113667 () Bool)

(assert (=> b!4429460 m!5113667))

(declare-fun m!5113669 () Bool)

(assert (=> b!4429460 m!5113669))

(declare-fun m!5113671 () Bool)

(assert (=> b!4429460 m!5113671))

(assert (=> b!4429460 m!5113669))

(declare-fun m!5113673 () Bool)

(assert (=> b!4429460 m!5113673))

(assert (=> b!4429479 m!5113655))

(declare-fun m!5113675 () Bool)

(assert (=> b!4429474 m!5113675))

(declare-fun m!5113677 () Bool)

(assert (=> b!4429474 m!5113677))

(assert (=> b!4429474 m!5113677))

(declare-fun m!5113679 () Bool)

(assert (=> b!4429474 m!5113679))

(declare-fun m!5113681 () Bool)

(assert (=> b!4429474 m!5113681))

(declare-fun m!5113683 () Bool)

(assert (=> b!4429467 m!5113683))

(declare-fun m!5113685 () Bool)

(assert (=> b!4429476 m!5113685))

(assert (=> b!4429477 m!5113675))

(assert (=> b!4429477 m!5113675))

(declare-fun m!5113687 () Bool)

(assert (=> b!4429477 m!5113687))

(declare-fun m!5113689 () Bool)

(assert (=> b!4429477 m!5113689))

(declare-fun m!5113691 () Bool)

(assert (=> b!4429463 m!5113691))

(declare-fun m!5113693 () Bool)

(assert (=> b!4429470 m!5113693))

(declare-fun m!5113695 () Bool)

(assert (=> b!4429466 m!5113695))

(declare-fun m!5113697 () Bool)

(assert (=> b!4429466 m!5113697))

(declare-fun m!5113699 () Bool)

(assert (=> b!4429459 m!5113699))

(declare-fun m!5113701 () Bool)

(assert (=> b!4429478 m!5113701))

(declare-fun m!5113703 () Bool)

(assert (=> b!4429478 m!5113703))

(declare-fun m!5113705 () Bool)

(assert (=> b!4429478 m!5113705))

(declare-fun m!5113707 () Bool)

(assert (=> b!4429478 m!5113707))

(declare-fun m!5113709 () Bool)

(assert (=> b!4429478 m!5113709))

(declare-fun m!5113711 () Bool)

(assert (=> b!4429478 m!5113711))

(assert (=> b!4429478 m!5113701))

(declare-fun m!5113713 () Bool)

(assert (=> b!4429478 m!5113713))

(assert (=> b!4429478 m!5113703))

(declare-fun m!5113715 () Bool)

(assert (=> b!4429478 m!5113715))

(declare-fun m!5113717 () Bool)

(assert (=> b!4429478 m!5113717))

(declare-fun m!5113719 () Bool)

(assert (=> b!4429478 m!5113719))

(declare-fun m!5113721 () Bool)

(assert (=> b!4429478 m!5113721))

(check-sat (not b!4429467) (not b!4429476) (not start!432488) (not b!4429460) (not b!4429469) tp_is_empty!26323 (not b!4429464) (not b!4429463) (not b!4429478) (not b!4429477) (not b!4429462) (not b!4429473) (not b!4429459) (not b!4429466) (not b!4429479) (not b!4429475) (not b!4429474) (not b!4429472) (not b!4429470) (not b!4429465) tp_is_empty!26321)
(check-sat)
