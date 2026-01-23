; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!447216 () Bool)

(assert start!447216)

(declare-fun b!4518022 () Bool)

(declare-datatypes ((Unit!94720 0))(
  ( (Unit!94721) )
))
(declare-fun e!2814787 () Unit!94720)

(declare-fun Unit!94722 () Unit!94720)

(assert (=> b!4518022 (= e!2814787 Unit!94722)))

(declare-datatypes ((Hashable!5553 0))(
  ( (HashableExt!5552 (__x!31256 Int)) )
))
(declare-fun hashF!1107 () Hashable!5553)

(declare-fun lt!1695587 () Unit!94720)

(declare-datatypes ((K!12035 0))(
  ( (K!12036 (val!17899 Int)) )
))
(declare-datatypes ((V!12281 0))(
  ( (V!12282 (val!17900 Int)) )
))
(declare-datatypes ((tuple2!51066 0))(
  ( (tuple2!51067 (_1!28827 K!12035) (_2!28827 V!12281)) )
))
(declare-datatypes ((List!50764 0))(
  ( (Nil!50640) (Cons!50640 (h!56491 tuple2!51066) (t!357726 List!50764)) )
))
(declare-datatypes ((tuple2!51068 0))(
  ( (tuple2!51069 (_1!28828 (_ BitVec 64)) (_2!28828 List!50764)) )
))
(declare-datatypes ((List!50765 0))(
  ( (Nil!50641) (Cons!50641 (h!56492 tuple2!51068) (t!357727 List!50765)) )
))
(declare-datatypes ((ListLongMap!2955 0))(
  ( (ListLongMap!2956 (toList!4323 List!50765)) )
))
(declare-fun lm!1477 () ListLongMap!2955)

(declare-fun key!3287 () K!12035)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!146 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> b!4518022 (= lt!1695587 (lemmaNotInItsHashBucketThenNotInMap!146 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4518022 false))

(declare-fun b!4518023 () Bool)

(declare-fun res!1880133 () Bool)

(declare-fun e!2814785 () Bool)

(assert (=> b!4518023 (=> res!1880133 e!2814785)))

(declare-datatypes ((ListMap!3585 0))(
  ( (ListMap!3586 (toList!4324 List!50764)) )
))
(declare-fun lt!1695582 () ListMap!3585)

(declare-fun lt!1695583 () ListMap!3585)

(declare-fun eq!615 (ListMap!3585 ListMap!3585) Bool)

(assert (=> b!4518023 (= res!1880133 (not (eq!615 lt!1695582 lt!1695583)))))

(declare-fun b!4518024 () Bool)

(declare-fun res!1880127 () Bool)

(assert (=> b!4518024 (=> res!1880127 e!2814785)))

(declare-fun lt!1695575 () tuple2!51068)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4518024 (= res!1880127 (bvsge (_1!28828 lt!1695575) hash!344))))

(declare-fun b!4518025 () Bool)

(declare-fun e!2814784 () Bool)

(declare-fun e!2814783 () Bool)

(assert (=> b!4518025 (= e!2814784 e!2814783)))

(declare-fun res!1880134 () Bool)

(assert (=> b!4518025 (=> res!1880134 e!2814783)))

(declare-fun containsKeyBiggerList!138 (List!50765 K!12035) Bool)

(assert (=> b!4518025 (= res!1880134 (not (containsKeyBiggerList!138 (t!357727 (toList!4323 lm!1477)) key!3287)))))

(declare-fun lt!1695586 () ListLongMap!2955)

(assert (=> b!4518025 (containsKeyBiggerList!138 (toList!4323 lt!1695586) key!3287)))

(declare-fun lt!1695595 () Unit!94720)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!74 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> b!4518025 (= lt!1695595 (lemmaInLongMapThenContainsKeyBiggerList!74 lt!1695586 key!3287 hashF!1107))))

(declare-fun b!4518026 () Bool)

(declare-fun e!2814794 () Bool)

(declare-fun e!2814780 () Bool)

(assert (=> b!4518026 (= e!2814794 e!2814780)))

(declare-fun res!1880125 () Bool)

(assert (=> b!4518026 (=> res!1880125 e!2814780)))

(declare-fun lt!1695577 () ListMap!3585)

(declare-fun lt!1695591 () ListMap!3585)

(assert (=> b!4518026 (= res!1880125 (not (eq!615 lt!1695577 lt!1695591)))))

(declare-fun lt!1695579 () ListMap!3585)

(assert (=> b!4518026 (eq!615 lt!1695579 lt!1695591)))

(declare-fun lt!1695572 () ListMap!3585)

(declare-fun addToMapMapFromBucket!685 (List!50764 ListMap!3585) ListMap!3585)

(assert (=> b!4518026 (= lt!1695591 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695572))))

(declare-fun lt!1695590 () ListMap!3585)

(declare-fun lt!1695578 () Unit!94720)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!34 (ListMap!3585 ListMap!3585 List!50764) Unit!94720)

(assert (=> b!4518026 (= lt!1695578 (lemmaAddToMapFromBucketPreservesEquivalence!34 lt!1695590 lt!1695572 (_2!28828 lt!1695575)))))

(declare-fun b!4518027 () Bool)

(declare-fun e!2814782 () Bool)

(declare-fun tp!1338043 () Bool)

(assert (=> b!4518027 (= e!2814782 tp!1338043)))

(declare-fun b!4518028 () Bool)

(declare-fun e!2814795 () Bool)

(assert (=> b!4518028 (= e!2814783 e!2814795)))

(declare-fun res!1880128 () Bool)

(assert (=> b!4518028 (=> res!1880128 e!2814795)))

(declare-fun contains!13361 (ListMap!3585 K!12035) Bool)

(declare-fun extractMap!1214 (List!50765) ListMap!3585)

(assert (=> b!4518028 (= res!1880128 (not (contains!13361 (extractMap!1214 (t!357727 (toList!4323 lm!1477))) key!3287)))))

(declare-fun lt!1695584 () ListMap!3585)

(assert (=> b!4518028 (contains!13361 lt!1695584 key!3287)))

(assert (=> b!4518028 (= lt!1695584 (extractMap!1214 (toList!4323 lt!1695586)))))

(declare-fun lt!1695585 () Unit!94720)

(declare-fun lemmaListContainsThenExtractedMapContains!128 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> b!4518028 (= lt!1695585 (lemmaListContainsThenExtractedMapContains!128 lt!1695586 key!3287 hashF!1107))))

(declare-fun b!4518029 () Bool)

(declare-fun e!2814788 () Bool)

(assert (=> b!4518029 (= e!2814785 e!2814788)))

(declare-fun res!1880124 () Bool)

(assert (=> b!4518029 (=> res!1880124 e!2814788)))

(declare-fun lt!1695594 () tuple2!51068)

(declare-fun lt!1695574 () ListLongMap!2955)

(declare-fun +!1534 (ListLongMap!2955 tuple2!51068) ListLongMap!2955)

(assert (=> b!4518029 (= res!1880124 (not (= lt!1695574 (+!1534 lm!1477 lt!1695594))))))

(declare-fun lt!1695580 () ListLongMap!2955)

(assert (=> b!4518029 (= lt!1695574 (+!1534 lt!1695580 lt!1695575))))

(declare-fun b!4518030 () Bool)

(declare-fun e!2814781 () Bool)

(declare-fun e!2814791 () Bool)

(assert (=> b!4518030 (= e!2814781 e!2814791)))

(declare-fun res!1880142 () Bool)

(assert (=> b!4518030 (=> res!1880142 e!2814791)))

(declare-fun contains!13362 (ListLongMap!2955 (_ BitVec 64)) Bool)

(assert (=> b!4518030 (= res!1880142 (not (contains!13362 lt!1695586 hash!344)))))

(declare-fun tail!7730 (ListLongMap!2955) ListLongMap!2955)

(assert (=> b!4518030 (= lt!1695586 (tail!7730 lm!1477))))

(declare-fun b!4518031 () Bool)

(assert (=> b!4518031 (= e!2814795 e!2814785)))

(declare-fun res!1880141 () Bool)

(assert (=> b!4518031 (=> res!1880141 e!2814785)))

(assert (=> b!4518031 (= res!1880141 (not (eq!615 lt!1695583 lt!1695582)))))

(assert (=> b!4518031 (= lt!1695583 (extractMap!1214 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))

(declare-fun head!9408 (ListLongMap!2955) tuple2!51068)

(assert (=> b!4518031 (= lt!1695575 (head!9408 lm!1477))))

(assert (=> b!4518031 (eq!615 lt!1695590 lt!1695572)))

(declare-fun -!384 (ListMap!3585 K!12035) ListMap!3585)

(assert (=> b!4518031 (= lt!1695572 (-!384 lt!1695584 key!3287))))

(assert (=> b!4518031 (= lt!1695590 (extractMap!1214 (toList!4323 lt!1695580)))))

(assert (=> b!4518031 (= lt!1695580 (+!1534 lt!1695586 lt!1695594))))

(declare-fun newBucket!178 () List!50764)

(assert (=> b!4518031 (= lt!1695594 (tuple2!51069 hash!344 newBucket!178))))

(declare-fun lt!1695576 () Unit!94720)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!143 (ListLongMap!2955 (_ BitVec 64) List!50764 K!12035 Hashable!5553) Unit!94720)

(assert (=> b!4518031 (= lt!1695576 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!143 lt!1695586 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4518032 () Bool)

(declare-fun res!1880144 () Bool)

(declare-fun e!2814786 () Bool)

(assert (=> b!4518032 (=> res!1880144 e!2814786)))

(declare-fun containsKey!1774 (List!50764 K!12035) Bool)

(assert (=> b!4518032 (= res!1880144 (not (containsKey!1774 (_2!28828 lt!1695575) key!3287)))))

(declare-fun b!4518033 () Bool)

(declare-fun res!1880135 () Bool)

(assert (=> b!4518033 (=> res!1880135 e!2814788)))

(assert (=> b!4518033 (= res!1880135 (not (= (head!9408 lt!1695574) lt!1695575)))))

(declare-fun e!2814793 () Bool)

(declare-fun tp_is_empty!27909 () Bool)

(declare-fun tp!1338042 () Bool)

(declare-fun tp_is_empty!27911 () Bool)

(declare-fun b!4518035 () Bool)

(assert (=> b!4518035 (= e!2814793 (and tp_is_empty!27909 tp_is_empty!27911 tp!1338042))))

(declare-fun res!1880126 () Bool)

(declare-fun e!2814792 () Bool)

(assert (=> start!447216 (=> (not res!1880126) (not e!2814792))))

(declare-fun lambda!172021 () Int)

(declare-fun forall!10257 (List!50765 Int) Bool)

(assert (=> start!447216 (= res!1880126 (forall!10257 (toList!4323 lm!1477) lambda!172021))))

(assert (=> start!447216 e!2814792))

(assert (=> start!447216 true))

(declare-fun inv!66219 (ListLongMap!2955) Bool)

(assert (=> start!447216 (and (inv!66219 lm!1477) e!2814782)))

(assert (=> start!447216 tp_is_empty!27909))

(assert (=> start!447216 e!2814793))

(declare-fun b!4518034 () Bool)

(declare-fun res!1880130 () Bool)

(assert (=> b!4518034 (=> (not res!1880130) (not e!2814792))))

(declare-fun allKeysSameHashInMap!1265 (ListLongMap!2955 Hashable!5553) Bool)

(assert (=> b!4518034 (= res!1880130 (allKeysSameHashInMap!1265 lm!1477 hashF!1107))))

(declare-fun b!4518036 () Bool)

(declare-fun isEmpty!28659 (ListLongMap!2955) Bool)

(assert (=> b!4518036 (= e!2814786 (not (isEmpty!28659 lm!1477)))))

(declare-fun b!4518037 () Bool)

(declare-fun res!1880137 () Bool)

(assert (=> b!4518037 (=> res!1880137 e!2814781)))

(declare-fun noDuplicateKeys!1158 (List!50764) Bool)

(assert (=> b!4518037 (= res!1880137 (not (noDuplicateKeys!1158 newBucket!178)))))

(declare-fun b!4518038 () Bool)

(declare-fun res!1880139 () Bool)

(assert (=> b!4518038 (=> res!1880139 e!2814781)))

(get-info :version)

(assert (=> b!4518038 (= res!1880139 (or ((_ is Nil!50641) (toList!4323 lm!1477)) (= (_1!28828 (h!56492 (toList!4323 lm!1477))) hash!344)))))

(declare-fun b!4518039 () Bool)

(declare-fun e!2814789 () Bool)

(assert (=> b!4518039 (= e!2814792 e!2814789)))

(declare-fun res!1880138 () Bool)

(assert (=> b!4518039 (=> (not res!1880138) (not e!2814789))))

(assert (=> b!4518039 (= res!1880138 (contains!13361 lt!1695582 key!3287))))

(assert (=> b!4518039 (= lt!1695582 (extractMap!1214 (toList!4323 lm!1477)))))

(declare-fun b!4518040 () Bool)

(assert (=> b!4518040 (= e!2814780 e!2814786)))

(declare-fun res!1880136 () Bool)

(assert (=> b!4518040 (=> res!1880136 e!2814786)))

(assert (=> b!4518040 (= res!1880136 (not (noDuplicateKeys!1158 (_2!28828 lt!1695575))))))

(declare-fun lt!1695596 () Unit!94720)

(declare-fun forallContained!2509 (List!50765 Int tuple2!51068) Unit!94720)

(assert (=> b!4518040 (= lt!1695596 (forallContained!2509 (toList!4323 lm!1477) lambda!172021 (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4518041 () Bool)

(assert (=> b!4518041 (= e!2814788 e!2814794)))

(declare-fun res!1880132 () Bool)

(assert (=> b!4518041 (=> res!1880132 e!2814794)))

(assert (=> b!4518041 (= res!1880132 (not (eq!615 lt!1695577 lt!1695579)))))

(assert (=> b!4518041 (= lt!1695579 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695590))))

(assert (=> b!4518041 (= lt!1695577 (extractMap!1214 (toList!4323 lt!1695574)))))

(declare-fun b!4518042 () Bool)

(declare-fun Unit!94723 () Unit!94720)

(assert (=> b!4518042 (= e!2814787 Unit!94723)))

(declare-fun b!4518043 () Bool)

(declare-fun e!2814790 () Bool)

(assert (=> b!4518043 (= e!2814790 (not e!2814781))))

(declare-fun res!1880140 () Bool)

(assert (=> b!4518043 (=> res!1880140 e!2814781)))

(declare-fun lt!1695573 () List!50764)

(declare-fun removePairForKey!785 (List!50764 K!12035) List!50764)

(assert (=> b!4518043 (= res!1880140 (not (= newBucket!178 (removePairForKey!785 lt!1695573 key!3287))))))

(declare-fun lt!1695581 () Unit!94720)

(declare-fun lt!1695598 () tuple2!51068)

(assert (=> b!4518043 (= lt!1695581 (forallContained!2509 (toList!4323 lm!1477) lambda!172021 lt!1695598))))

(declare-fun contains!13363 (List!50765 tuple2!51068) Bool)

(assert (=> b!4518043 (contains!13363 (toList!4323 lm!1477) lt!1695598)))

(assert (=> b!4518043 (= lt!1695598 (tuple2!51069 hash!344 lt!1695573))))

(declare-fun lt!1695592 () Unit!94720)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!670 (List!50765 (_ BitVec 64) List!50764) Unit!94720)

(assert (=> b!4518043 (= lt!1695592 (lemmaGetValueByKeyImpliesContainsTuple!670 (toList!4323 lm!1477) hash!344 lt!1695573))))

(declare-fun apply!11895 (ListLongMap!2955 (_ BitVec 64)) List!50764)

(assert (=> b!4518043 (= lt!1695573 (apply!11895 lm!1477 hash!344))))

(declare-fun lt!1695597 () (_ BitVec 64))

(assert (=> b!4518043 (contains!13362 lm!1477 lt!1695597)))

(declare-fun lt!1695593 () Unit!94720)

(declare-fun lemmaInGenMapThenLongMapContainsHash!232 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> b!4518043 (= lt!1695593 (lemmaInGenMapThenLongMapContainsHash!232 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4518044 () Bool)

(declare-fun res!1880143 () Bool)

(assert (=> b!4518044 (=> res!1880143 e!2814791)))

(assert (=> b!4518044 (= res!1880143 (not (= (apply!11895 lt!1695586 hash!344) lt!1695573)))))

(declare-fun b!4518045 () Bool)

(declare-fun res!1880131 () Bool)

(assert (=> b!4518045 (=> (not res!1880131) (not e!2814790))))

(declare-fun allKeysSameHash!1012 (List!50764 (_ BitVec 64) Hashable!5553) Bool)

(assert (=> b!4518045 (= res!1880131 (allKeysSameHash!1012 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4518046 () Bool)

(assert (=> b!4518046 (= e!2814789 e!2814790)))

(declare-fun res!1880129 () Bool)

(assert (=> b!4518046 (=> (not res!1880129) (not e!2814790))))

(assert (=> b!4518046 (= res!1880129 (= lt!1695597 hash!344))))

(declare-fun hash!2799 (Hashable!5553 K!12035) (_ BitVec 64))

(assert (=> b!4518046 (= lt!1695597 (hash!2799 hashF!1107 key!3287))))

(declare-fun b!4518047 () Bool)

(assert (=> b!4518047 (= e!2814791 e!2814784)))

(declare-fun res!1880145 () Bool)

(assert (=> b!4518047 (=> res!1880145 e!2814784)))

(declare-fun lt!1695588 () Bool)

(assert (=> b!4518047 (= res!1880145 lt!1695588)))

(declare-fun lt!1695589 () Unit!94720)

(assert (=> b!4518047 (= lt!1695589 e!2814787)))

(declare-fun c!770927 () Bool)

(assert (=> b!4518047 (= c!770927 lt!1695588)))

(assert (=> b!4518047 (= lt!1695588 (not (containsKey!1774 lt!1695573 key!3287)))))

(declare-fun b!4518048 () Bool)

(declare-fun res!1880146 () Bool)

(assert (=> b!4518048 (=> res!1880146 e!2814791)))

(assert (=> b!4518048 (= res!1880146 (not (contains!13363 (t!357727 (toList!4323 lm!1477)) lt!1695598)))))

(assert (= (and start!447216 res!1880126) b!4518034))

(assert (= (and b!4518034 res!1880130) b!4518039))

(assert (= (and b!4518039 res!1880138) b!4518046))

(assert (= (and b!4518046 res!1880129) b!4518045))

(assert (= (and b!4518045 res!1880131) b!4518043))

(assert (= (and b!4518043 (not res!1880140)) b!4518037))

(assert (= (and b!4518037 (not res!1880137)) b!4518038))

(assert (= (and b!4518038 (not res!1880139)) b!4518030))

(assert (= (and b!4518030 (not res!1880142)) b!4518044))

(assert (= (and b!4518044 (not res!1880143)) b!4518048))

(assert (= (and b!4518048 (not res!1880146)) b!4518047))

(assert (= (and b!4518047 c!770927) b!4518022))

(assert (= (and b!4518047 (not c!770927)) b!4518042))

(assert (= (and b!4518047 (not res!1880145)) b!4518025))

(assert (= (and b!4518025 (not res!1880134)) b!4518028))

(assert (= (and b!4518028 (not res!1880128)) b!4518031))

(assert (= (and b!4518031 (not res!1880141)) b!4518023))

(assert (= (and b!4518023 (not res!1880133)) b!4518024))

(assert (= (and b!4518024 (not res!1880127)) b!4518029))

(assert (= (and b!4518029 (not res!1880124)) b!4518033))

(assert (= (and b!4518033 (not res!1880135)) b!4518041))

(assert (= (and b!4518041 (not res!1880132)) b!4518026))

(assert (= (and b!4518026 (not res!1880125)) b!4518040))

(assert (= (and b!4518040 (not res!1880136)) b!4518032))

(assert (= (and b!4518032 (not res!1880144)) b!4518036))

(assert (= start!447216 b!4518027))

(assert (= (and start!447216 ((_ is Cons!50640) newBucket!178)) b!4518035))

(declare-fun m!5264087 () Bool)

(assert (=> b!4518030 m!5264087))

(declare-fun m!5264089 () Bool)

(assert (=> b!4518030 m!5264089))

(declare-fun m!5264091 () Bool)

(assert (=> b!4518045 m!5264091))

(declare-fun m!5264093 () Bool)

(assert (=> b!4518041 m!5264093))

(declare-fun m!5264095 () Bool)

(assert (=> b!4518041 m!5264095))

(declare-fun m!5264097 () Bool)

(assert (=> b!4518041 m!5264097))

(declare-fun m!5264099 () Bool)

(assert (=> b!4518048 m!5264099))

(declare-fun m!5264101 () Bool)

(assert (=> b!4518039 m!5264101))

(declare-fun m!5264103 () Bool)

(assert (=> b!4518039 m!5264103))

(declare-fun m!5264105 () Bool)

(assert (=> b!4518025 m!5264105))

(declare-fun m!5264107 () Bool)

(assert (=> b!4518025 m!5264107))

(declare-fun m!5264109 () Bool)

(assert (=> b!4518025 m!5264109))

(declare-fun m!5264111 () Bool)

(assert (=> b!4518023 m!5264111))

(declare-fun m!5264113 () Bool)

(assert (=> b!4518047 m!5264113))

(declare-fun m!5264115 () Bool)

(assert (=> b!4518029 m!5264115))

(declare-fun m!5264117 () Bool)

(assert (=> b!4518029 m!5264117))

(declare-fun m!5264119 () Bool)

(assert (=> b!4518036 m!5264119))

(declare-fun m!5264121 () Bool)

(assert (=> b!4518044 m!5264121))

(declare-fun m!5264123 () Bool)

(assert (=> b!4518037 m!5264123))

(declare-fun m!5264125 () Bool)

(assert (=> b!4518031 m!5264125))

(declare-fun m!5264127 () Bool)

(assert (=> b!4518031 m!5264127))

(declare-fun m!5264129 () Bool)

(assert (=> b!4518031 m!5264129))

(declare-fun m!5264131 () Bool)

(assert (=> b!4518031 m!5264131))

(declare-fun m!5264133 () Bool)

(assert (=> b!4518031 m!5264133))

(declare-fun m!5264135 () Bool)

(assert (=> b!4518031 m!5264135))

(declare-fun m!5264137 () Bool)

(assert (=> b!4518031 m!5264137))

(declare-fun m!5264139 () Bool)

(assert (=> b!4518031 m!5264139))

(declare-fun m!5264141 () Bool)

(assert (=> b!4518031 m!5264141))

(declare-fun m!5264143 () Bool)

(assert (=> b!4518028 m!5264143))

(declare-fun m!5264145 () Bool)

(assert (=> b!4518028 m!5264145))

(declare-fun m!5264147 () Bool)

(assert (=> b!4518028 m!5264147))

(declare-fun m!5264149 () Bool)

(assert (=> b!4518028 m!5264149))

(assert (=> b!4518028 m!5264149))

(declare-fun m!5264151 () Bool)

(assert (=> b!4518028 m!5264151))

(declare-fun m!5264153 () Bool)

(assert (=> b!4518026 m!5264153))

(declare-fun m!5264155 () Bool)

(assert (=> b!4518026 m!5264155))

(declare-fun m!5264157 () Bool)

(assert (=> b!4518026 m!5264157))

(declare-fun m!5264159 () Bool)

(assert (=> b!4518026 m!5264159))

(declare-fun m!5264161 () Bool)

(assert (=> b!4518033 m!5264161))

(declare-fun m!5264163 () Bool)

(assert (=> b!4518040 m!5264163))

(declare-fun m!5264165 () Bool)

(assert (=> b!4518040 m!5264165))

(declare-fun m!5264167 () Bool)

(assert (=> b!4518022 m!5264167))

(declare-fun m!5264169 () Bool)

(assert (=> b!4518032 m!5264169))

(declare-fun m!5264171 () Bool)

(assert (=> start!447216 m!5264171))

(declare-fun m!5264173 () Bool)

(assert (=> start!447216 m!5264173))

(declare-fun m!5264175 () Bool)

(assert (=> b!4518034 m!5264175))

(declare-fun m!5264177 () Bool)

(assert (=> b!4518046 m!5264177))

(declare-fun m!5264179 () Bool)

(assert (=> b!4518043 m!5264179))

(declare-fun m!5264181 () Bool)

(assert (=> b!4518043 m!5264181))

(declare-fun m!5264183 () Bool)

(assert (=> b!4518043 m!5264183))

(declare-fun m!5264185 () Bool)

(assert (=> b!4518043 m!5264185))

(declare-fun m!5264187 () Bool)

(assert (=> b!4518043 m!5264187))

(declare-fun m!5264189 () Bool)

(assert (=> b!4518043 m!5264189))

(declare-fun m!5264191 () Bool)

(assert (=> b!4518043 m!5264191))

(check-sat (not b!4518035) (not b!4518044) (not b!4518034) (not b!4518031) (not b!4518039) (not b!4518040) (not b!4518026) tp_is_empty!27911 (not b!4518023) (not b!4518032) (not b!4518029) (not b!4518041) (not b!4518048) (not b!4518022) (not b!4518030) (not b!4518043) (not b!4518027) (not b!4518036) (not b!4518047) (not b!4518045) (not b!4518025) tp_is_empty!27909 (not b!4518028) (not b!4518033) (not b!4518046) (not start!447216) (not b!4518037))
(check-sat)
(get-model)

(declare-fun d!1391323 () Bool)

(declare-fun head!9409 (List!50765) tuple2!51068)

(assert (=> d!1391323 (= (head!9408 lt!1695574) (head!9409 (toList!4323 lt!1695574)))))

(declare-fun bs!853556 () Bool)

(assert (= bs!853556 d!1391323))

(declare-fun m!5264203 () Bool)

(assert (=> bs!853556 m!5264203))

(assert (=> b!4518033 d!1391323))

(declare-fun d!1391325 () Bool)

(declare-fun res!1880151 () Bool)

(declare-fun e!2814800 () Bool)

(assert (=> d!1391325 (=> res!1880151 e!2814800)))

(assert (=> d!1391325 (= res!1880151 (and ((_ is Cons!50640) (_2!28828 lt!1695575)) (= (_1!28827 (h!56491 (_2!28828 lt!1695575))) key!3287)))))

(assert (=> d!1391325 (= (containsKey!1774 (_2!28828 lt!1695575) key!3287) e!2814800)))

(declare-fun b!4518053 () Bool)

(declare-fun e!2814801 () Bool)

(assert (=> b!4518053 (= e!2814800 e!2814801)))

(declare-fun res!1880152 () Bool)

(assert (=> b!4518053 (=> (not res!1880152) (not e!2814801))))

(assert (=> b!4518053 (= res!1880152 ((_ is Cons!50640) (_2!28828 lt!1695575)))))

(declare-fun b!4518054 () Bool)

(assert (=> b!4518054 (= e!2814801 (containsKey!1774 (t!357726 (_2!28828 lt!1695575)) key!3287))))

(assert (= (and d!1391325 (not res!1880151)) b!4518053))

(assert (= (and b!4518053 res!1880152) b!4518054))

(declare-fun m!5264205 () Bool)

(assert (=> b!4518054 m!5264205))

(assert (=> b!4518032 d!1391325))

(declare-fun d!1391327 () Bool)

(declare-fun e!2814804 () Bool)

(assert (=> d!1391327 e!2814804))

(declare-fun res!1880155 () Bool)

(assert (=> d!1391327 (=> (not res!1880155) (not e!2814804))))

(declare-fun lt!1695601 () ListMap!3585)

(assert (=> d!1391327 (= res!1880155 (not (contains!13361 lt!1695601 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!138 (List!50764 K!12035) List!50764)

(assert (=> d!1391327 (= lt!1695601 (ListMap!3586 (removePresrvNoDuplicatedKeys!138 (toList!4324 lt!1695584) key!3287)))))

(assert (=> d!1391327 (= (-!384 lt!1695584 key!3287) lt!1695601)))

(declare-fun b!4518057 () Bool)

(declare-datatypes ((List!50766 0))(
  ( (Nil!50642) (Cons!50642 (h!56495 K!12035) (t!357728 List!50766)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8349 (List!50766) (InoxSet K!12035))

(declare-fun keys!17589 (ListMap!3585) List!50766)

(assert (=> b!4518057 (= e!2814804 (= ((_ map and) (content!8349 (keys!17589 lt!1695584)) ((_ map not) (store ((as const (Array K!12035 Bool)) false) key!3287 true))) (content!8349 (keys!17589 lt!1695601))))))

(assert (= (and d!1391327 res!1880155) b!4518057))

(declare-fun m!5264207 () Bool)

(assert (=> d!1391327 m!5264207))

(declare-fun m!5264209 () Bool)

(assert (=> d!1391327 m!5264209))

(declare-fun m!5264211 () Bool)

(assert (=> b!4518057 m!5264211))

(declare-fun m!5264213 () Bool)

(assert (=> b!4518057 m!5264213))

(declare-fun m!5264215 () Bool)

(assert (=> b!4518057 m!5264215))

(declare-fun m!5264217 () Bool)

(assert (=> b!4518057 m!5264217))

(assert (=> b!4518057 m!5264213))

(assert (=> b!4518057 m!5264211))

(declare-fun m!5264219 () Bool)

(assert (=> b!4518057 m!5264219))

(assert (=> b!4518031 d!1391327))

(declare-fun d!1391329 () Bool)

(declare-fun e!2814807 () Bool)

(assert (=> d!1391329 e!2814807))

(declare-fun res!1880160 () Bool)

(assert (=> d!1391329 (=> (not res!1880160) (not e!2814807))))

(declare-fun lt!1695610 () ListLongMap!2955)

(assert (=> d!1391329 (= res!1880160 (contains!13362 lt!1695610 (_1!28828 lt!1695594)))))

(declare-fun lt!1695612 () List!50765)

(assert (=> d!1391329 (= lt!1695610 (ListLongMap!2956 lt!1695612))))

(declare-fun lt!1695613 () Unit!94720)

(declare-fun lt!1695611 () Unit!94720)

(assert (=> d!1391329 (= lt!1695613 lt!1695611)))

(declare-datatypes ((Option!11106 0))(
  ( (None!11105) (Some!11105 (v!44697 List!50764)) )
))
(declare-fun getValueByKey!1086 (List!50765 (_ BitVec 64)) Option!11106)

(assert (=> d!1391329 (= (getValueByKey!1086 lt!1695612 (_1!28828 lt!1695594)) (Some!11105 (_2!28828 lt!1695594)))))

(declare-fun lemmaContainsTupThenGetReturnValue!673 (List!50765 (_ BitVec 64) List!50764) Unit!94720)

(assert (=> d!1391329 (= lt!1695611 (lemmaContainsTupThenGetReturnValue!673 lt!1695612 (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(declare-fun insertStrictlySorted!405 (List!50765 (_ BitVec 64) List!50764) List!50765)

(assert (=> d!1391329 (= lt!1695612 (insertStrictlySorted!405 (toList!4323 lt!1695586) (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(assert (=> d!1391329 (= (+!1534 lt!1695586 lt!1695594) lt!1695610)))

(declare-fun b!4518062 () Bool)

(declare-fun res!1880161 () Bool)

(assert (=> b!4518062 (=> (not res!1880161) (not e!2814807))))

(assert (=> b!4518062 (= res!1880161 (= (getValueByKey!1086 (toList!4323 lt!1695610) (_1!28828 lt!1695594)) (Some!11105 (_2!28828 lt!1695594))))))

(declare-fun b!4518063 () Bool)

(assert (=> b!4518063 (= e!2814807 (contains!13363 (toList!4323 lt!1695610) lt!1695594))))

(assert (= (and d!1391329 res!1880160) b!4518062))

(assert (= (and b!4518062 res!1880161) b!4518063))

(declare-fun m!5264221 () Bool)

(assert (=> d!1391329 m!5264221))

(declare-fun m!5264223 () Bool)

(assert (=> d!1391329 m!5264223))

(declare-fun m!5264225 () Bool)

(assert (=> d!1391329 m!5264225))

(declare-fun m!5264227 () Bool)

(assert (=> d!1391329 m!5264227))

(declare-fun m!5264229 () Bool)

(assert (=> b!4518062 m!5264229))

(declare-fun m!5264231 () Bool)

(assert (=> b!4518063 m!5264231))

(assert (=> b!4518031 d!1391329))

(declare-fun bs!853557 () Bool)

(declare-fun d!1391331 () Bool)

(assert (= bs!853557 (and d!1391331 start!447216)))

(declare-fun lambda!172024 () Int)

(assert (=> bs!853557 (= lambda!172024 lambda!172021)))

(assert (=> d!1391331 (eq!615 (extractMap!1214 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))) (-!384 (extractMap!1214 (toList!4323 lt!1695586)) key!3287))))

(declare-fun lt!1695616 () Unit!94720)

(declare-fun choose!29476 (ListLongMap!2955 (_ BitVec 64) List!50764 K!12035 Hashable!5553) Unit!94720)

(assert (=> d!1391331 (= lt!1695616 (choose!29476 lt!1695586 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1391331 (forall!10257 (toList!4323 lt!1695586) lambda!172024)))

(assert (=> d!1391331 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!143 lt!1695586 hash!344 newBucket!178 key!3287 hashF!1107) lt!1695616)))

(declare-fun bs!853558 () Bool)

(assert (= bs!853558 d!1391331))

(declare-fun m!5264233 () Bool)

(assert (=> bs!853558 m!5264233))

(assert (=> bs!853558 m!5264143))

(declare-fun m!5264235 () Bool)

(assert (=> bs!853558 m!5264235))

(declare-fun m!5264237 () Bool)

(assert (=> bs!853558 m!5264237))

(assert (=> bs!853558 m!5264235))

(declare-fun m!5264239 () Bool)

(assert (=> bs!853558 m!5264239))

(assert (=> bs!853558 m!5264237))

(declare-fun m!5264241 () Bool)

(assert (=> bs!853558 m!5264241))

(declare-fun m!5264243 () Bool)

(assert (=> bs!853558 m!5264243))

(assert (=> bs!853558 m!5264143))

(assert (=> b!4518031 d!1391331))

(declare-fun d!1391333 () Bool)

(declare-fun content!8350 (List!50764) (InoxSet tuple2!51066))

(assert (=> d!1391333 (= (eq!615 lt!1695590 lt!1695572) (= (content!8350 (toList!4324 lt!1695590)) (content!8350 (toList!4324 lt!1695572))))))

(declare-fun bs!853559 () Bool)

(assert (= bs!853559 d!1391333))

(declare-fun m!5264245 () Bool)

(assert (=> bs!853559 m!5264245))

(declare-fun m!5264247 () Bool)

(assert (=> bs!853559 m!5264247))

(assert (=> b!4518031 d!1391333))

(declare-fun bs!853560 () Bool)

(declare-fun d!1391335 () Bool)

(assert (= bs!853560 (and d!1391335 start!447216)))

(declare-fun lambda!172027 () Int)

(assert (=> bs!853560 (= lambda!172027 lambda!172021)))

(declare-fun bs!853561 () Bool)

(assert (= bs!853561 (and d!1391335 d!1391331)))

(assert (=> bs!853561 (= lambda!172027 lambda!172024)))

(declare-fun lt!1695619 () ListMap!3585)

(declare-fun invariantList!1015 (List!50764) Bool)

(assert (=> d!1391335 (invariantList!1015 (toList!4324 lt!1695619))))

(declare-fun e!2814810 () ListMap!3585)

(assert (=> d!1391335 (= lt!1695619 e!2814810)))

(declare-fun c!770930 () Bool)

(assert (=> d!1391335 (= c!770930 ((_ is Cons!50641) (toList!4323 lt!1695580)))))

(assert (=> d!1391335 (forall!10257 (toList!4323 lt!1695580) lambda!172027)))

(assert (=> d!1391335 (= (extractMap!1214 (toList!4323 lt!1695580)) lt!1695619)))

(declare-fun b!4518068 () Bool)

(assert (=> b!4518068 (= e!2814810 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))))))

(declare-fun b!4518069 () Bool)

(assert (=> b!4518069 (= e!2814810 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391335 c!770930) b!4518068))

(assert (= (and d!1391335 (not c!770930)) b!4518069))

(declare-fun m!5264249 () Bool)

(assert (=> d!1391335 m!5264249))

(declare-fun m!5264251 () Bool)

(assert (=> d!1391335 m!5264251))

(declare-fun m!5264253 () Bool)

(assert (=> b!4518068 m!5264253))

(assert (=> b!4518068 m!5264253))

(declare-fun m!5264255 () Bool)

(assert (=> b!4518068 m!5264255))

(assert (=> b!4518031 d!1391335))

(declare-fun d!1391337 () Bool)

(assert (=> d!1391337 (= (eq!615 lt!1695583 lt!1695582) (= (content!8350 (toList!4324 lt!1695583)) (content!8350 (toList!4324 lt!1695582))))))

(declare-fun bs!853562 () Bool)

(assert (= bs!853562 d!1391337))

(declare-fun m!5264257 () Bool)

(assert (=> bs!853562 m!5264257))

(declare-fun m!5264259 () Bool)

(assert (=> bs!853562 m!5264259))

(assert (=> b!4518031 d!1391337))

(declare-fun d!1391339 () Bool)

(declare-fun e!2814811 () Bool)

(assert (=> d!1391339 e!2814811))

(declare-fun res!1880162 () Bool)

(assert (=> d!1391339 (=> (not res!1880162) (not e!2814811))))

(declare-fun lt!1695620 () ListLongMap!2955)

(assert (=> d!1391339 (= res!1880162 (contains!13362 lt!1695620 (_1!28828 lt!1695575)))))

(declare-fun lt!1695622 () List!50765)

(assert (=> d!1391339 (= lt!1695620 (ListLongMap!2956 lt!1695622))))

(declare-fun lt!1695623 () Unit!94720)

(declare-fun lt!1695621 () Unit!94720)

(assert (=> d!1391339 (= lt!1695623 lt!1695621)))

(assert (=> d!1391339 (= (getValueByKey!1086 lt!1695622 (_1!28828 lt!1695575)) (Some!11105 (_2!28828 lt!1695575)))))

(assert (=> d!1391339 (= lt!1695621 (lemmaContainsTupThenGetReturnValue!673 lt!1695622 (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(assert (=> d!1391339 (= lt!1695622 (insertStrictlySorted!405 (toList!4323 lt!1695586) (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(assert (=> d!1391339 (= (+!1534 lt!1695586 lt!1695575) lt!1695620)))

(declare-fun b!4518070 () Bool)

(declare-fun res!1880163 () Bool)

(assert (=> b!4518070 (=> (not res!1880163) (not e!2814811))))

(assert (=> b!4518070 (= res!1880163 (= (getValueByKey!1086 (toList!4323 lt!1695620) (_1!28828 lt!1695575)) (Some!11105 (_2!28828 lt!1695575))))))

(declare-fun b!4518071 () Bool)

(assert (=> b!4518071 (= e!2814811 (contains!13363 (toList!4323 lt!1695620) lt!1695575))))

(assert (= (and d!1391339 res!1880162) b!4518070))

(assert (= (and b!4518070 res!1880163) b!4518071))

(declare-fun m!5264261 () Bool)

(assert (=> d!1391339 m!5264261))

(declare-fun m!5264263 () Bool)

(assert (=> d!1391339 m!5264263))

(declare-fun m!5264265 () Bool)

(assert (=> d!1391339 m!5264265))

(declare-fun m!5264267 () Bool)

(assert (=> d!1391339 m!5264267))

(declare-fun m!5264269 () Bool)

(assert (=> b!4518070 m!5264269))

(declare-fun m!5264271 () Bool)

(assert (=> b!4518071 m!5264271))

(assert (=> b!4518031 d!1391339))

(declare-fun d!1391341 () Bool)

(assert (=> d!1391341 (= (head!9408 lm!1477) (head!9409 (toList!4323 lm!1477)))))

(declare-fun bs!853563 () Bool)

(assert (= bs!853563 d!1391341))

(declare-fun m!5264273 () Bool)

(assert (=> bs!853563 m!5264273))

(assert (=> b!4518031 d!1391341))

(declare-fun bs!853564 () Bool)

(declare-fun d!1391343 () Bool)

(assert (= bs!853564 (and d!1391343 start!447216)))

(declare-fun lambda!172028 () Int)

(assert (=> bs!853564 (= lambda!172028 lambda!172021)))

(declare-fun bs!853565 () Bool)

(assert (= bs!853565 (and d!1391343 d!1391331)))

(assert (=> bs!853565 (= lambda!172028 lambda!172024)))

(declare-fun bs!853566 () Bool)

(assert (= bs!853566 (and d!1391343 d!1391335)))

(assert (=> bs!853566 (= lambda!172028 lambda!172027)))

(declare-fun lt!1695624 () ListMap!3585)

(assert (=> d!1391343 (invariantList!1015 (toList!4324 lt!1695624))))

(declare-fun e!2814812 () ListMap!3585)

(assert (=> d!1391343 (= lt!1695624 e!2814812)))

(declare-fun c!770931 () Bool)

(assert (=> d!1391343 (= c!770931 ((_ is Cons!50641) (toList!4323 (+!1534 lt!1695586 lt!1695575))))))

(assert (=> d!1391343 (forall!10257 (toList!4323 (+!1534 lt!1695586 lt!1695575)) lambda!172028)))

(assert (=> d!1391343 (= (extractMap!1214 (toList!4323 (+!1534 lt!1695586 lt!1695575))) lt!1695624)))

(declare-fun b!4518072 () Bool)

(assert (=> b!4518072 (= e!2814812 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))))

(declare-fun b!4518073 () Bool)

(assert (=> b!4518073 (= e!2814812 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391343 c!770931) b!4518072))

(assert (= (and d!1391343 (not c!770931)) b!4518073))

(declare-fun m!5264275 () Bool)

(assert (=> d!1391343 m!5264275))

(declare-fun m!5264277 () Bool)

(assert (=> d!1391343 m!5264277))

(declare-fun m!5264279 () Bool)

(assert (=> b!4518072 m!5264279))

(assert (=> b!4518072 m!5264279))

(declare-fun m!5264281 () Bool)

(assert (=> b!4518072 m!5264281))

(assert (=> b!4518031 d!1391343))

(declare-fun d!1391345 () Bool)

(declare-fun isEmpty!28660 (List!50765) Bool)

(assert (=> d!1391345 (= (isEmpty!28659 lm!1477) (isEmpty!28660 (toList!4323 lm!1477)))))

(declare-fun bs!853567 () Bool)

(assert (= bs!853567 d!1391345))

(declare-fun m!5264283 () Bool)

(assert (=> bs!853567 m!5264283))

(assert (=> b!4518036 d!1391345))

(declare-fun bs!853568 () Bool)

(declare-fun d!1391347 () Bool)

(assert (= bs!853568 (and d!1391347 start!447216)))

(declare-fun lambda!172031 () Int)

(assert (=> bs!853568 (not (= lambda!172031 lambda!172021))))

(declare-fun bs!853569 () Bool)

(assert (= bs!853569 (and d!1391347 d!1391331)))

(assert (=> bs!853569 (not (= lambda!172031 lambda!172024))))

(declare-fun bs!853570 () Bool)

(assert (= bs!853570 (and d!1391347 d!1391335)))

(assert (=> bs!853570 (not (= lambda!172031 lambda!172027))))

(declare-fun bs!853571 () Bool)

(assert (= bs!853571 (and d!1391347 d!1391343)))

(assert (=> bs!853571 (not (= lambda!172031 lambda!172028))))

(assert (=> d!1391347 true))

(assert (=> d!1391347 (= (allKeysSameHashInMap!1265 lm!1477 hashF!1107) (forall!10257 (toList!4323 lm!1477) lambda!172031))))

(declare-fun bs!853572 () Bool)

(assert (= bs!853572 d!1391347))

(declare-fun m!5264285 () Bool)

(assert (=> bs!853572 m!5264285))

(assert (=> b!4518034 d!1391347))

(declare-fun b!4518094 () Bool)

(declare-fun e!2814830 () Bool)

(declare-fun contains!13364 (List!50766 K!12035) Bool)

(assert (=> b!4518094 (= e!2814830 (not (contains!13364 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287)))))

(declare-fun d!1391349 () Bool)

(declare-fun e!2814827 () Bool)

(assert (=> d!1391349 e!2814827))

(declare-fun res!1880170 () Bool)

(assert (=> d!1391349 (=> res!1880170 e!2814827)))

(assert (=> d!1391349 (= res!1880170 e!2814830)))

(declare-fun res!1880172 () Bool)

(assert (=> d!1391349 (=> (not res!1880172) (not e!2814830))))

(declare-fun lt!1695647 () Bool)

(assert (=> d!1391349 (= res!1880172 (not lt!1695647))))

(declare-fun lt!1695643 () Bool)

(assert (=> d!1391349 (= lt!1695647 lt!1695643)))

(declare-fun lt!1695641 () Unit!94720)

(declare-fun e!2814828 () Unit!94720)

(assert (=> d!1391349 (= lt!1695641 e!2814828)))

(declare-fun c!770940 () Bool)

(assert (=> d!1391349 (= c!770940 lt!1695643)))

(declare-fun containsKey!1775 (List!50764 K!12035) Bool)

(assert (=> d!1391349 (= lt!1695643 (containsKey!1775 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(assert (=> d!1391349 (= (contains!13361 (extractMap!1214 (t!357727 (toList!4323 lm!1477))) key!3287) lt!1695647)))

(declare-fun b!4518095 () Bool)

(declare-fun e!2814829 () List!50766)

(assert (=> b!4518095 (= e!2814829 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(declare-fun b!4518096 () Bool)

(declare-fun lt!1695645 () Unit!94720)

(assert (=> b!4518096 (= e!2814828 lt!1695645)))

(declare-fun lt!1695648 () Unit!94720)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!990 (List!50764 K!12035) Unit!94720)

(assert (=> b!4518096 (= lt!1695648 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11108 0))(
  ( (None!11107) (Some!11107 (v!44699 V!12281)) )
))
(declare-fun isDefined!8393 (Option!11108) Bool)

(declare-fun getValueByKey!1088 (List!50764 K!12035) Option!11108)

(assert (=> b!4518096 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-fun lt!1695642 () Unit!94720)

(assert (=> b!4518096 (= lt!1695642 lt!1695648)))

(declare-fun lemmaInListThenGetKeysListContains!458 (List!50764 K!12035) Unit!94720)

(assert (=> b!4518096 (= lt!1695645 (lemmaInListThenGetKeysListContains!458 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-fun call!314734 () Bool)

(assert (=> b!4518096 call!314734))

(declare-fun b!4518097 () Bool)

(declare-fun e!2814825 () Bool)

(assert (=> b!4518097 (= e!2814827 e!2814825)))

(declare-fun res!1880171 () Bool)

(assert (=> b!4518097 (=> (not res!1880171) (not e!2814825))))

(assert (=> b!4518097 (= res!1880171 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287)))))

(declare-fun b!4518098 () Bool)

(declare-fun getKeysList!462 (List!50764) List!50766)

(assert (=> b!4518098 (= e!2814829 (getKeysList!462 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))

(declare-fun b!4518099 () Bool)

(declare-fun e!2814826 () Unit!94720)

(declare-fun Unit!94735 () Unit!94720)

(assert (=> b!4518099 (= e!2814826 Unit!94735)))

(declare-fun b!4518100 () Bool)

(assert (=> b!4518100 false))

(declare-fun lt!1695644 () Unit!94720)

(declare-fun lt!1695646 () Unit!94720)

(assert (=> b!4518100 (= lt!1695644 lt!1695646)))

(assert (=> b!4518100 (containsKey!1775 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!461 (List!50764 K!12035) Unit!94720)

(assert (=> b!4518100 (= lt!1695646 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-fun Unit!94736 () Unit!94720)

(assert (=> b!4518100 (= e!2814826 Unit!94736)))

(declare-fun bm!314729 () Bool)

(assert (=> bm!314729 (= call!314734 (contains!13364 e!2814829 key!3287))))

(declare-fun c!770938 () Bool)

(assert (=> bm!314729 (= c!770938 c!770940)))

(declare-fun b!4518101 () Bool)

(assert (=> b!4518101 (= e!2814825 (contains!13364 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-fun b!4518102 () Bool)

(assert (=> b!4518102 (= e!2814828 e!2814826)))

(declare-fun c!770939 () Bool)

(assert (=> b!4518102 (= c!770939 call!314734)))

(assert (= (and d!1391349 c!770940) b!4518096))

(assert (= (and d!1391349 (not c!770940)) b!4518102))

(assert (= (and b!4518102 c!770939) b!4518100))

(assert (= (and b!4518102 (not c!770939)) b!4518099))

(assert (= (or b!4518096 b!4518102) bm!314729))

(assert (= (and bm!314729 c!770938) b!4518098))

(assert (= (and bm!314729 (not c!770938)) b!4518095))

(assert (= (and d!1391349 res!1880172) b!4518094))

(assert (= (and d!1391349 (not res!1880170)) b!4518097))

(assert (= (and b!4518097 res!1880171) b!4518101))

(assert (=> b!4518095 m!5264149))

(declare-fun m!5264287 () Bool)

(assert (=> b!4518095 m!5264287))

(declare-fun m!5264289 () Bool)

(assert (=> b!4518096 m!5264289))

(declare-fun m!5264291 () Bool)

(assert (=> b!4518096 m!5264291))

(assert (=> b!4518096 m!5264291))

(declare-fun m!5264293 () Bool)

(assert (=> b!4518096 m!5264293))

(declare-fun m!5264295 () Bool)

(assert (=> b!4518096 m!5264295))

(declare-fun m!5264297 () Bool)

(assert (=> b!4518098 m!5264297))

(assert (=> b!4518097 m!5264291))

(assert (=> b!4518097 m!5264291))

(assert (=> b!4518097 m!5264293))

(declare-fun m!5264299 () Bool)

(assert (=> b!4518100 m!5264299))

(declare-fun m!5264301 () Bool)

(assert (=> b!4518100 m!5264301))

(declare-fun m!5264303 () Bool)

(assert (=> bm!314729 m!5264303))

(assert (=> b!4518101 m!5264149))

(assert (=> b!4518101 m!5264287))

(assert (=> b!4518101 m!5264287))

(declare-fun m!5264305 () Bool)

(assert (=> b!4518101 m!5264305))

(assert (=> d!1391349 m!5264299))

(assert (=> b!4518094 m!5264149))

(assert (=> b!4518094 m!5264287))

(assert (=> b!4518094 m!5264287))

(assert (=> b!4518094 m!5264305))

(assert (=> b!4518028 d!1391349))

(declare-fun bs!853573 () Bool)

(declare-fun d!1391351 () Bool)

(assert (= bs!853573 (and d!1391351 d!1391343)))

(declare-fun lambda!172032 () Int)

(assert (=> bs!853573 (= lambda!172032 lambda!172028)))

(declare-fun bs!853574 () Bool)

(assert (= bs!853574 (and d!1391351 start!447216)))

(assert (=> bs!853574 (= lambda!172032 lambda!172021)))

(declare-fun bs!853575 () Bool)

(assert (= bs!853575 (and d!1391351 d!1391335)))

(assert (=> bs!853575 (= lambda!172032 lambda!172027)))

(declare-fun bs!853576 () Bool)

(assert (= bs!853576 (and d!1391351 d!1391347)))

(assert (=> bs!853576 (not (= lambda!172032 lambda!172031))))

(declare-fun bs!853577 () Bool)

(assert (= bs!853577 (and d!1391351 d!1391331)))

(assert (=> bs!853577 (= lambda!172032 lambda!172024)))

(declare-fun lt!1695649 () ListMap!3585)

(assert (=> d!1391351 (invariantList!1015 (toList!4324 lt!1695649))))

(declare-fun e!2814831 () ListMap!3585)

(assert (=> d!1391351 (= lt!1695649 e!2814831)))

(declare-fun c!770941 () Bool)

(assert (=> d!1391351 (= c!770941 ((_ is Cons!50641) (t!357727 (toList!4323 lm!1477))))))

(assert (=> d!1391351 (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172032)))

(assert (=> d!1391351 (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695649)))

(declare-fun b!4518103 () Bool)

(assert (=> b!4518103 (= e!2814831 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))))))

(declare-fun b!4518104 () Bool)

(assert (=> b!4518104 (= e!2814831 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391351 c!770941) b!4518103))

(assert (= (and d!1391351 (not c!770941)) b!4518104))

(declare-fun m!5264307 () Bool)

(assert (=> d!1391351 m!5264307))

(declare-fun m!5264309 () Bool)

(assert (=> d!1391351 m!5264309))

(declare-fun m!5264311 () Bool)

(assert (=> b!4518103 m!5264311))

(assert (=> b!4518103 m!5264311))

(declare-fun m!5264313 () Bool)

(assert (=> b!4518103 m!5264313))

(assert (=> b!4518028 d!1391351))

(declare-fun bs!853578 () Bool)

(declare-fun d!1391353 () Bool)

(assert (= bs!853578 (and d!1391353 d!1391343)))

(declare-fun lambda!172033 () Int)

(assert (=> bs!853578 (= lambda!172033 lambda!172028)))

(declare-fun bs!853579 () Bool)

(assert (= bs!853579 (and d!1391353 start!447216)))

(assert (=> bs!853579 (= lambda!172033 lambda!172021)))

(declare-fun bs!853580 () Bool)

(assert (= bs!853580 (and d!1391353 d!1391335)))

(assert (=> bs!853580 (= lambda!172033 lambda!172027)))

(declare-fun bs!853581 () Bool)

(assert (= bs!853581 (and d!1391353 d!1391351)))

(assert (=> bs!853581 (= lambda!172033 lambda!172032)))

(declare-fun bs!853582 () Bool)

(assert (= bs!853582 (and d!1391353 d!1391347)))

(assert (=> bs!853582 (not (= lambda!172033 lambda!172031))))

(declare-fun bs!853583 () Bool)

(assert (= bs!853583 (and d!1391353 d!1391331)))

(assert (=> bs!853583 (= lambda!172033 lambda!172024)))

(declare-fun lt!1695650 () ListMap!3585)

(assert (=> d!1391353 (invariantList!1015 (toList!4324 lt!1695650))))

(declare-fun e!2814832 () ListMap!3585)

(assert (=> d!1391353 (= lt!1695650 e!2814832)))

(declare-fun c!770942 () Bool)

(assert (=> d!1391353 (= c!770942 ((_ is Cons!50641) (toList!4323 lt!1695586)))))

(assert (=> d!1391353 (forall!10257 (toList!4323 lt!1695586) lambda!172033)))

(assert (=> d!1391353 (= (extractMap!1214 (toList!4323 lt!1695586)) lt!1695650)))

(declare-fun b!4518105 () Bool)

(assert (=> b!4518105 (= e!2814832 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))))))

(declare-fun b!4518106 () Bool)

(assert (=> b!4518106 (= e!2814832 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391353 c!770942) b!4518105))

(assert (= (and d!1391353 (not c!770942)) b!4518106))

(declare-fun m!5264315 () Bool)

(assert (=> d!1391353 m!5264315))

(declare-fun m!5264317 () Bool)

(assert (=> d!1391353 m!5264317))

(declare-fun m!5264319 () Bool)

(assert (=> b!4518105 m!5264319))

(assert (=> b!4518105 m!5264319))

(declare-fun m!5264321 () Bool)

(assert (=> b!4518105 m!5264321))

(assert (=> b!4518028 d!1391353))

(declare-fun bs!853584 () Bool)

(declare-fun d!1391355 () Bool)

(assert (= bs!853584 (and d!1391355 d!1391343)))

(declare-fun lambda!172050 () Int)

(assert (=> bs!853584 (= lambda!172050 lambda!172028)))

(declare-fun bs!853585 () Bool)

(assert (= bs!853585 (and d!1391355 d!1391353)))

(assert (=> bs!853585 (= lambda!172050 lambda!172033)))

(declare-fun bs!853586 () Bool)

(assert (= bs!853586 (and d!1391355 start!447216)))

(assert (=> bs!853586 (= lambda!172050 lambda!172021)))

(declare-fun bs!853587 () Bool)

(assert (= bs!853587 (and d!1391355 d!1391335)))

(assert (=> bs!853587 (= lambda!172050 lambda!172027)))

(declare-fun bs!853588 () Bool)

(assert (= bs!853588 (and d!1391355 d!1391351)))

(assert (=> bs!853588 (= lambda!172050 lambda!172032)))

(declare-fun bs!853589 () Bool)

(assert (= bs!853589 (and d!1391355 d!1391347)))

(assert (=> bs!853589 (not (= lambda!172050 lambda!172031))))

(declare-fun bs!853590 () Bool)

(assert (= bs!853590 (and d!1391355 d!1391331)))

(assert (=> bs!853590 (= lambda!172050 lambda!172024)))

(assert (=> d!1391355 (contains!13361 (extractMap!1214 (toList!4323 lt!1695586)) key!3287)))

(declare-fun lt!1695683 () Unit!94720)

(declare-fun choose!29480 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> d!1391355 (= lt!1695683 (choose!29480 lt!1695586 key!3287 hashF!1107))))

(assert (=> d!1391355 (forall!10257 (toList!4323 lt!1695586) lambda!172050)))

(assert (=> d!1391355 (= (lemmaListContainsThenExtractedMapContains!128 lt!1695586 key!3287 hashF!1107) lt!1695683)))

(declare-fun bs!853591 () Bool)

(assert (= bs!853591 d!1391355))

(assert (=> bs!853591 m!5264143))

(assert (=> bs!853591 m!5264143))

(declare-fun m!5264323 () Bool)

(assert (=> bs!853591 m!5264323))

(declare-fun m!5264325 () Bool)

(assert (=> bs!853591 m!5264325))

(declare-fun m!5264327 () Bool)

(assert (=> bs!853591 m!5264327))

(assert (=> b!4518028 d!1391355))

(declare-fun b!4518111 () Bool)

(declare-fun e!2814840 () Bool)

(assert (=> b!4518111 (= e!2814840 (not (contains!13364 (keys!17589 lt!1695584) key!3287)))))

(declare-fun d!1391357 () Bool)

(declare-fun e!2814837 () Bool)

(assert (=> d!1391357 e!2814837))

(declare-fun res!1880173 () Bool)

(assert (=> d!1391357 (=> res!1880173 e!2814837)))

(assert (=> d!1391357 (= res!1880173 e!2814840)))

(declare-fun res!1880175 () Bool)

(assert (=> d!1391357 (=> (not res!1880175) (not e!2814840))))

(declare-fun lt!1695698 () Bool)

(assert (=> d!1391357 (= res!1880175 (not lt!1695698))))

(declare-fun lt!1695694 () Bool)

(assert (=> d!1391357 (= lt!1695698 lt!1695694)))

(declare-fun lt!1695692 () Unit!94720)

(declare-fun e!2814838 () Unit!94720)

(assert (=> d!1391357 (= lt!1695692 e!2814838)))

(declare-fun c!770947 () Bool)

(assert (=> d!1391357 (= c!770947 lt!1695694)))

(assert (=> d!1391357 (= lt!1695694 (containsKey!1775 (toList!4324 lt!1695584) key!3287))))

(assert (=> d!1391357 (= (contains!13361 lt!1695584 key!3287) lt!1695698)))

(declare-fun b!4518112 () Bool)

(declare-fun e!2814839 () List!50766)

(assert (=> b!4518112 (= e!2814839 (keys!17589 lt!1695584))))

(declare-fun b!4518113 () Bool)

(declare-fun lt!1695696 () Unit!94720)

(assert (=> b!4518113 (= e!2814838 lt!1695696)))

(declare-fun lt!1695699 () Unit!94720)

(assert (=> b!4518113 (= lt!1695699 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695584) key!3287))))

(assert (=> b!4518113 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))))

(declare-fun lt!1695693 () Unit!94720)

(assert (=> b!4518113 (= lt!1695693 lt!1695699)))

(assert (=> b!4518113 (= lt!1695696 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695584) key!3287))))

(declare-fun call!314735 () Bool)

(assert (=> b!4518113 call!314735))

(declare-fun b!4518114 () Bool)

(declare-fun e!2814835 () Bool)

(assert (=> b!4518114 (= e!2814837 e!2814835)))

(declare-fun res!1880174 () Bool)

(assert (=> b!4518114 (=> (not res!1880174) (not e!2814835))))

(assert (=> b!4518114 (= res!1880174 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287)))))

(declare-fun b!4518115 () Bool)

(assert (=> b!4518115 (= e!2814839 (getKeysList!462 (toList!4324 lt!1695584)))))

(declare-fun b!4518116 () Bool)

(declare-fun e!2814836 () Unit!94720)

(declare-fun Unit!94738 () Unit!94720)

(assert (=> b!4518116 (= e!2814836 Unit!94738)))

(declare-fun b!4518117 () Bool)

(assert (=> b!4518117 false))

(declare-fun lt!1695695 () Unit!94720)

(declare-fun lt!1695697 () Unit!94720)

(assert (=> b!4518117 (= lt!1695695 lt!1695697)))

(assert (=> b!4518117 (containsKey!1775 (toList!4324 lt!1695584) key!3287)))

(assert (=> b!4518117 (= lt!1695697 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695584) key!3287))))

(declare-fun Unit!94740 () Unit!94720)

(assert (=> b!4518117 (= e!2814836 Unit!94740)))

(declare-fun bm!314730 () Bool)

(assert (=> bm!314730 (= call!314735 (contains!13364 e!2814839 key!3287))))

(declare-fun c!770945 () Bool)

(assert (=> bm!314730 (= c!770945 c!770947)))

(declare-fun b!4518118 () Bool)

(assert (=> b!4518118 (= e!2814835 (contains!13364 (keys!17589 lt!1695584) key!3287))))

(declare-fun b!4518119 () Bool)

(assert (=> b!4518119 (= e!2814838 e!2814836)))

(declare-fun c!770946 () Bool)

(assert (=> b!4518119 (= c!770946 call!314735)))

(assert (= (and d!1391357 c!770947) b!4518113))

(assert (= (and d!1391357 (not c!770947)) b!4518119))

(assert (= (and b!4518119 c!770946) b!4518117))

(assert (= (and b!4518119 (not c!770946)) b!4518116))

(assert (= (or b!4518113 b!4518119) bm!314730))

(assert (= (and bm!314730 c!770945) b!4518115))

(assert (= (and bm!314730 (not c!770945)) b!4518112))

(assert (= (and d!1391357 res!1880175) b!4518111))

(assert (= (and d!1391357 (not res!1880173)) b!4518114))

(assert (= (and b!4518114 res!1880174) b!4518118))

(assert (=> b!4518112 m!5264211))

(declare-fun m!5264329 () Bool)

(assert (=> b!4518113 m!5264329))

(declare-fun m!5264331 () Bool)

(assert (=> b!4518113 m!5264331))

(assert (=> b!4518113 m!5264331))

(declare-fun m!5264333 () Bool)

(assert (=> b!4518113 m!5264333))

(declare-fun m!5264335 () Bool)

(assert (=> b!4518113 m!5264335))

(declare-fun m!5264337 () Bool)

(assert (=> b!4518115 m!5264337))

(assert (=> b!4518114 m!5264331))

(assert (=> b!4518114 m!5264331))

(assert (=> b!4518114 m!5264333))

(declare-fun m!5264339 () Bool)

(assert (=> b!4518117 m!5264339))

(declare-fun m!5264341 () Bool)

(assert (=> b!4518117 m!5264341))

(declare-fun m!5264343 () Bool)

(assert (=> bm!314730 m!5264343))

(assert (=> b!4518118 m!5264211))

(assert (=> b!4518118 m!5264211))

(declare-fun m!5264345 () Bool)

(assert (=> b!4518118 m!5264345))

(assert (=> d!1391357 m!5264339))

(assert (=> b!4518111 m!5264211))

(assert (=> b!4518111 m!5264211))

(assert (=> b!4518111 m!5264345))

(assert (=> b!4518028 d!1391357))

(declare-fun d!1391359 () Bool)

(declare-fun lt!1695706 () Bool)

(declare-fun content!8352 (List!50765) (InoxSet tuple2!51068))

(assert (=> d!1391359 (= lt!1695706 (select (content!8352 (t!357727 (toList!4323 lm!1477))) lt!1695598))))

(declare-fun e!2814848 () Bool)

(assert (=> d!1391359 (= lt!1695706 e!2814848)))

(declare-fun res!1880182 () Bool)

(assert (=> d!1391359 (=> (not res!1880182) (not e!2814848))))

(assert (=> d!1391359 (= res!1880182 ((_ is Cons!50641) (t!357727 (toList!4323 lm!1477))))))

(assert (=> d!1391359 (= (contains!13363 (t!357727 (toList!4323 lm!1477)) lt!1695598) lt!1695706)))

(declare-fun b!4518126 () Bool)

(declare-fun e!2814847 () Bool)

(assert (=> b!4518126 (= e!2814848 e!2814847)))

(declare-fun res!1880183 () Bool)

(assert (=> b!4518126 (=> res!1880183 e!2814847)))

(assert (=> b!4518126 (= res!1880183 (= (h!56492 (t!357727 (toList!4323 lm!1477))) lt!1695598))))

(declare-fun b!4518127 () Bool)

(assert (=> b!4518127 (= e!2814847 (contains!13363 (t!357727 (t!357727 (toList!4323 lm!1477))) lt!1695598))))

(assert (= (and d!1391359 res!1880182) b!4518126))

(assert (= (and b!4518126 (not res!1880183)) b!4518127))

(declare-fun m!5264347 () Bool)

(assert (=> d!1391359 m!5264347))

(declare-fun m!5264349 () Bool)

(assert (=> d!1391359 m!5264349))

(declare-fun m!5264351 () Bool)

(assert (=> b!4518127 m!5264351))

(assert (=> b!4518048 d!1391359))

(declare-fun d!1391361 () Bool)

(declare-fun res!1880184 () Bool)

(declare-fun e!2814849 () Bool)

(assert (=> d!1391361 (=> res!1880184 e!2814849)))

(assert (=> d!1391361 (= res!1880184 (and ((_ is Cons!50640) lt!1695573) (= (_1!28827 (h!56491 lt!1695573)) key!3287)))))

(assert (=> d!1391361 (= (containsKey!1774 lt!1695573 key!3287) e!2814849)))

(declare-fun b!4518128 () Bool)

(declare-fun e!2814850 () Bool)

(assert (=> b!4518128 (= e!2814849 e!2814850)))

(declare-fun res!1880185 () Bool)

(assert (=> b!4518128 (=> (not res!1880185) (not e!2814850))))

(assert (=> b!4518128 (= res!1880185 ((_ is Cons!50640) lt!1695573))))

(declare-fun b!4518129 () Bool)

(assert (=> b!4518129 (= e!2814850 (containsKey!1774 (t!357726 lt!1695573) key!3287))))

(assert (= (and d!1391361 (not res!1880184)) b!4518128))

(assert (= (and b!4518128 res!1880185) b!4518129))

(declare-fun m!5264353 () Bool)

(assert (=> b!4518129 m!5264353))

(assert (=> b!4518047 d!1391361))

(declare-fun d!1391363 () Bool)

(assert (=> d!1391363 (= (eq!615 lt!1695577 lt!1695591) (= (content!8350 (toList!4324 lt!1695577)) (content!8350 (toList!4324 lt!1695591))))))

(declare-fun bs!853592 () Bool)

(assert (= bs!853592 d!1391363))

(declare-fun m!5264355 () Bool)

(assert (=> bs!853592 m!5264355))

(declare-fun m!5264357 () Bool)

(assert (=> bs!853592 m!5264357))

(assert (=> b!4518026 d!1391363))

(declare-fun d!1391365 () Bool)

(assert (=> d!1391365 (= (eq!615 lt!1695579 lt!1695591) (= (content!8350 (toList!4324 lt!1695579)) (content!8350 (toList!4324 lt!1695591))))))

(declare-fun bs!853593 () Bool)

(assert (= bs!853593 d!1391365))

(declare-fun m!5264359 () Bool)

(assert (=> bs!853593 m!5264359))

(assert (=> bs!853593 m!5264357))

(assert (=> b!4518026 d!1391365))

(declare-fun b!4518242 () Bool)

(assert (=> b!4518242 true))

(declare-fun bs!853632 () Bool)

(declare-fun b!4518240 () Bool)

(assert (= bs!853632 (and b!4518240 b!4518242)))

(declare-fun lambda!172115 () Int)

(declare-fun lambda!172114 () Int)

(assert (=> bs!853632 (= lambda!172115 lambda!172114)))

(assert (=> b!4518240 true))

(declare-fun lambda!172116 () Int)

(declare-fun lt!1695841 () ListMap!3585)

(assert (=> bs!853632 (= (= lt!1695841 lt!1695572) (= lambda!172116 lambda!172114))))

(assert (=> b!4518240 (= (= lt!1695841 lt!1695572) (= lambda!172116 lambda!172115))))

(assert (=> b!4518240 true))

(declare-fun bs!853633 () Bool)

(declare-fun d!1391367 () Bool)

(assert (= bs!853633 (and d!1391367 b!4518242)))

(declare-fun lt!1695839 () ListMap!3585)

(declare-fun lambda!172119 () Int)

(assert (=> bs!853633 (= (= lt!1695839 lt!1695572) (= lambda!172119 lambda!172114))))

(declare-fun bs!853634 () Bool)

(assert (= bs!853634 (and d!1391367 b!4518240)))

(assert (=> bs!853634 (= (= lt!1695839 lt!1695572) (= lambda!172119 lambda!172115))))

(assert (=> bs!853634 (= (= lt!1695839 lt!1695841) (= lambda!172119 lambda!172116))))

(assert (=> d!1391367 true))

(declare-fun e!2814924 () ListMap!3585)

(assert (=> b!4518240 (= e!2814924 lt!1695841)))

(declare-fun lt!1695856 () ListMap!3585)

(declare-fun +!1536 (ListMap!3585 tuple2!51066) ListMap!3585)

(assert (=> b!4518240 (= lt!1695856 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4518240 (= lt!1695841 (addToMapMapFromBucket!685 (t!357726 (_2!28828 lt!1695575)) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1695837 () Unit!94720)

(declare-fun call!314753 () Unit!94720)

(assert (=> b!4518240 (= lt!1695837 call!314753)))

(declare-fun forall!10259 (List!50764 Int) Bool)

(assert (=> b!4518240 (forall!10259 (toList!4324 lt!1695572) lambda!172115)))

(declare-fun lt!1695848 () Unit!94720)

(assert (=> b!4518240 (= lt!1695848 lt!1695837)))

(declare-fun call!314752 () Bool)

(assert (=> b!4518240 call!314752))

(declare-fun lt!1695853 () Unit!94720)

(declare-fun Unit!94741 () Unit!94720)

(assert (=> b!4518240 (= lt!1695853 Unit!94741)))

(declare-fun call!314751 () Bool)

(assert (=> b!4518240 call!314751))

(declare-fun lt!1695847 () Unit!94720)

(declare-fun Unit!94742 () Unit!94720)

(assert (=> b!4518240 (= lt!1695847 Unit!94742)))

(declare-fun lt!1695840 () Unit!94720)

(declare-fun Unit!94743 () Unit!94720)

(assert (=> b!4518240 (= lt!1695840 Unit!94743)))

(declare-fun lt!1695849 () Unit!94720)

(declare-fun forallContained!2511 (List!50764 Int tuple2!51066) Unit!94720)

(assert (=> b!4518240 (= lt!1695849 (forallContained!2511 (toList!4324 lt!1695856) lambda!172116 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4518240 (contains!13361 lt!1695856 (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun lt!1695857 () Unit!94720)

(declare-fun Unit!94744 () Unit!94720)

(assert (=> b!4518240 (= lt!1695857 Unit!94744)))

(assert (=> b!4518240 (contains!13361 lt!1695841 (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun lt!1695846 () Unit!94720)

(declare-fun Unit!94745 () Unit!94720)

(assert (=> b!4518240 (= lt!1695846 Unit!94745)))

(assert (=> b!4518240 (forall!10259 (_2!28828 lt!1695575) lambda!172116)))

(declare-fun lt!1695854 () Unit!94720)

(declare-fun Unit!94746 () Unit!94720)

(assert (=> b!4518240 (= lt!1695854 Unit!94746)))

(assert (=> b!4518240 (forall!10259 (toList!4324 lt!1695856) lambda!172116)))

(declare-fun lt!1695851 () Unit!94720)

(declare-fun Unit!94747 () Unit!94720)

(assert (=> b!4518240 (= lt!1695851 Unit!94747)))

(declare-fun lt!1695844 () Unit!94720)

(declare-fun Unit!94748 () Unit!94720)

(assert (=> b!4518240 (= lt!1695844 Unit!94748)))

(declare-fun lt!1695852 () Unit!94720)

(declare-fun addForallContainsKeyThenBeforeAdding!336 (ListMap!3585 ListMap!3585 K!12035 V!12281) Unit!94720)

(assert (=> b!4518240 (= lt!1695852 (addForallContainsKeyThenBeforeAdding!336 lt!1695572 lt!1695841 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> b!4518240 (forall!10259 (toList!4324 lt!1695572) lambda!172116)))

(declare-fun lt!1695855 () Unit!94720)

(assert (=> b!4518240 (= lt!1695855 lt!1695852)))

(assert (=> b!4518240 (forall!10259 (toList!4324 lt!1695572) lambda!172116)))

(declare-fun lt!1695843 () Unit!94720)

(declare-fun Unit!94749 () Unit!94720)

(assert (=> b!4518240 (= lt!1695843 Unit!94749)))

(declare-fun res!1880253 () Bool)

(assert (=> b!4518240 (= res!1880253 (forall!10259 (_2!28828 lt!1695575) lambda!172116))))

(declare-fun e!2814925 () Bool)

(assert (=> b!4518240 (=> (not res!1880253) (not e!2814925))))

(assert (=> b!4518240 e!2814925))

(declare-fun lt!1695842 () Unit!94720)

(declare-fun Unit!94750 () Unit!94720)

(assert (=> b!4518240 (= lt!1695842 Unit!94750)))

(declare-fun b!4518241 () Bool)

(declare-fun e!2814926 () Bool)

(assert (=> b!4518241 (= e!2814926 (invariantList!1015 (toList!4324 lt!1695839)))))

(declare-fun bm!314746 () Bool)

(declare-fun c!770966 () Bool)

(assert (=> bm!314746 (= call!314751 (forall!10259 (ite c!770966 (toList!4324 lt!1695572) (t!357726 (_2!28828 lt!1695575))) (ite c!770966 lambda!172114 lambda!172116)))))

(assert (=> b!4518242 (= e!2814924 lt!1695572)))

(declare-fun lt!1695845 () Unit!94720)

(assert (=> b!4518242 (= lt!1695845 call!314753)))

(assert (=> b!4518242 call!314751))

(declare-fun lt!1695850 () Unit!94720)

(assert (=> b!4518242 (= lt!1695850 lt!1695845)))

(assert (=> b!4518242 call!314752))

(declare-fun lt!1695838 () Unit!94720)

(declare-fun Unit!94751 () Unit!94720)

(assert (=> b!4518242 (= lt!1695838 Unit!94751)))

(assert (=> d!1391367 e!2814926))

(declare-fun res!1880252 () Bool)

(assert (=> d!1391367 (=> (not res!1880252) (not e!2814926))))

(assert (=> d!1391367 (= res!1880252 (forall!10259 (_2!28828 lt!1695575) lambda!172119))))

(assert (=> d!1391367 (= lt!1695839 e!2814924)))

(assert (=> d!1391367 (= c!770966 ((_ is Nil!50640) (_2!28828 lt!1695575)))))

(assert (=> d!1391367 (noDuplicateKeys!1158 (_2!28828 lt!1695575))))

(assert (=> d!1391367 (= (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695572) lt!1695839)))

(declare-fun b!4518243 () Bool)

(declare-fun res!1880254 () Bool)

(assert (=> b!4518243 (=> (not res!1880254) (not e!2814926))))

(assert (=> b!4518243 (= res!1880254 (forall!10259 (toList!4324 lt!1695572) lambda!172119))))

(declare-fun b!4518244 () Bool)

(assert (=> b!4518244 (= e!2814925 (forall!10259 (toList!4324 lt!1695572) lambda!172116))))

(declare-fun bm!314747 () Bool)

(assert (=> bm!314747 (= call!314752 (forall!10259 (ite c!770966 (toList!4324 lt!1695572) (toList!4324 lt!1695856)) (ite c!770966 lambda!172114 lambda!172116)))))

(declare-fun bm!314748 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!336 (ListMap!3585) Unit!94720)

(assert (=> bm!314748 (= call!314753 (lemmaContainsAllItsOwnKeys!336 lt!1695572))))

(assert (= (and d!1391367 c!770966) b!4518242))

(assert (= (and d!1391367 (not c!770966)) b!4518240))

(assert (= (and b!4518240 res!1880253) b!4518244))

(assert (= (or b!4518242 b!4518240) bm!314746))

(assert (= (or b!4518242 b!4518240) bm!314747))

(assert (= (or b!4518242 b!4518240) bm!314748))

(assert (= (and d!1391367 res!1880252) b!4518243))

(assert (= (and b!4518243 res!1880254) b!4518241))

(declare-fun m!5264575 () Bool)

(assert (=> bm!314746 m!5264575))

(declare-fun m!5264577 () Bool)

(assert (=> bm!314748 m!5264577))

(declare-fun m!5264579 () Bool)

(assert (=> b!4518244 m!5264579))

(declare-fun m!5264581 () Bool)

(assert (=> b!4518240 m!5264581))

(declare-fun m!5264583 () Bool)

(assert (=> b!4518240 m!5264583))

(assert (=> b!4518240 m!5264579))

(assert (=> b!4518240 m!5264581))

(assert (=> b!4518240 m!5264579))

(declare-fun m!5264585 () Bool)

(assert (=> b!4518240 m!5264585))

(declare-fun m!5264587 () Bool)

(assert (=> b!4518240 m!5264587))

(declare-fun m!5264589 () Bool)

(assert (=> b!4518240 m!5264589))

(declare-fun m!5264591 () Bool)

(assert (=> b!4518240 m!5264591))

(declare-fun m!5264593 () Bool)

(assert (=> b!4518240 m!5264593))

(declare-fun m!5264595 () Bool)

(assert (=> b!4518240 m!5264595))

(assert (=> b!4518240 m!5264589))

(declare-fun m!5264597 () Bool)

(assert (=> b!4518240 m!5264597))

(declare-fun m!5264599 () Bool)

(assert (=> d!1391367 m!5264599))

(assert (=> d!1391367 m!5264163))

(declare-fun m!5264601 () Bool)

(assert (=> bm!314747 m!5264601))

(declare-fun m!5264603 () Bool)

(assert (=> b!4518243 m!5264603))

(declare-fun m!5264605 () Bool)

(assert (=> b!4518241 m!5264605))

(assert (=> b!4518026 d!1391367))

(declare-fun d!1391433 () Bool)

(assert (=> d!1391433 (eq!615 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695590) (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695572))))

(declare-fun lt!1695863 () Unit!94720)

(declare-fun choose!29482 (ListMap!3585 ListMap!3585 List!50764) Unit!94720)

(assert (=> d!1391433 (= lt!1695863 (choose!29482 lt!1695590 lt!1695572 (_2!28828 lt!1695575)))))

(assert (=> d!1391433 (noDuplicateKeys!1158 (_2!28828 lt!1695575))))

(assert (=> d!1391433 (= (lemmaAddToMapFromBucketPreservesEquivalence!34 lt!1695590 lt!1695572 (_2!28828 lt!1695575)) lt!1695863)))

(declare-fun bs!853643 () Bool)

(assert (= bs!853643 d!1391433))

(assert (=> bs!853643 m!5264157))

(declare-fun m!5264607 () Bool)

(assert (=> bs!853643 m!5264607))

(assert (=> bs!853643 m!5264095))

(assert (=> bs!853643 m!5264095))

(assert (=> bs!853643 m!5264157))

(declare-fun m!5264609 () Bool)

(assert (=> bs!853643 m!5264609))

(assert (=> bs!853643 m!5264163))

(assert (=> b!4518026 d!1391433))

(declare-fun d!1391435 () Bool)

(declare-fun e!2814943 () Bool)

(assert (=> d!1391435 e!2814943))

(declare-fun res!1880263 () Bool)

(assert (=> d!1391435 (=> res!1880263 e!2814943)))

(declare-fun lt!1695889 () Bool)

(assert (=> d!1391435 (= res!1880263 (not lt!1695889))))

(declare-fun lt!1695890 () Bool)

(assert (=> d!1391435 (= lt!1695889 lt!1695890)))

(declare-fun lt!1695888 () Unit!94720)

(declare-fun e!2814944 () Unit!94720)

(assert (=> d!1391435 (= lt!1695888 e!2814944)))

(declare-fun c!770975 () Bool)

(assert (=> d!1391435 (= c!770975 lt!1695890)))

(declare-fun containsKey!1777 (List!50765 (_ BitVec 64)) Bool)

(assert (=> d!1391435 (= lt!1695890 (containsKey!1777 (toList!4323 lt!1695586) hash!344))))

(assert (=> d!1391435 (= (contains!13362 lt!1695586 hash!344) lt!1695889)))

(declare-fun b!4518271 () Bool)

(declare-fun lt!1695891 () Unit!94720)

(assert (=> b!4518271 (= e!2814944 lt!1695891)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!992 (List!50765 (_ BitVec 64)) Unit!94720)

(assert (=> b!4518271 (= lt!1695891 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lt!1695586) hash!344))))

(declare-fun isDefined!8395 (Option!11106) Bool)

(assert (=> b!4518271 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344))))

(declare-fun b!4518272 () Bool)

(declare-fun Unit!94752 () Unit!94720)

(assert (=> b!4518272 (= e!2814944 Unit!94752)))

(declare-fun b!4518273 () Bool)

(assert (=> b!4518273 (= e!2814943 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344)))))

(assert (= (and d!1391435 c!770975) b!4518271))

(assert (= (and d!1391435 (not c!770975)) b!4518272))

(assert (= (and d!1391435 (not res!1880263)) b!4518273))

(declare-fun m!5264611 () Bool)

(assert (=> d!1391435 m!5264611))

(declare-fun m!5264613 () Bool)

(assert (=> b!4518271 m!5264613))

(declare-fun m!5264615 () Bool)

(assert (=> b!4518271 m!5264615))

(assert (=> b!4518271 m!5264615))

(declare-fun m!5264617 () Bool)

(assert (=> b!4518271 m!5264617))

(assert (=> b!4518273 m!5264615))

(assert (=> b!4518273 m!5264615))

(assert (=> b!4518273 m!5264617))

(assert (=> b!4518030 d!1391435))

(declare-fun d!1391437 () Bool)

(declare-fun tail!7732 (List!50765) List!50765)

(assert (=> d!1391437 (= (tail!7730 lm!1477) (ListLongMap!2956 (tail!7732 (toList!4323 lm!1477))))))

(declare-fun bs!853644 () Bool)

(assert (= bs!853644 d!1391437))

(declare-fun m!5264639 () Bool)

(assert (=> bs!853644 m!5264639))

(assert (=> b!4518030 d!1391437))

(declare-fun d!1391441 () Bool)

(declare-fun e!2814952 () Bool)

(assert (=> d!1391441 e!2814952))

(declare-fun res!1880267 () Bool)

(assert (=> d!1391441 (=> (not res!1880267) (not e!2814952))))

(declare-fun lt!1695901 () ListLongMap!2955)

(assert (=> d!1391441 (= res!1880267 (contains!13362 lt!1695901 (_1!28828 lt!1695594)))))

(declare-fun lt!1695903 () List!50765)

(assert (=> d!1391441 (= lt!1695901 (ListLongMap!2956 lt!1695903))))

(declare-fun lt!1695904 () Unit!94720)

(declare-fun lt!1695902 () Unit!94720)

(assert (=> d!1391441 (= lt!1695904 lt!1695902)))

(assert (=> d!1391441 (= (getValueByKey!1086 lt!1695903 (_1!28828 lt!1695594)) (Some!11105 (_2!28828 lt!1695594)))))

(assert (=> d!1391441 (= lt!1695902 (lemmaContainsTupThenGetReturnValue!673 lt!1695903 (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(assert (=> d!1391441 (= lt!1695903 (insertStrictlySorted!405 (toList!4323 lm!1477) (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(assert (=> d!1391441 (= (+!1534 lm!1477 lt!1695594) lt!1695901)))

(declare-fun b!4518285 () Bool)

(declare-fun res!1880268 () Bool)

(assert (=> b!4518285 (=> (not res!1880268) (not e!2814952))))

(assert (=> b!4518285 (= res!1880268 (= (getValueByKey!1086 (toList!4323 lt!1695901) (_1!28828 lt!1695594)) (Some!11105 (_2!28828 lt!1695594))))))

(declare-fun b!4518286 () Bool)

(assert (=> b!4518286 (= e!2814952 (contains!13363 (toList!4323 lt!1695901) lt!1695594))))

(assert (= (and d!1391441 res!1880267) b!4518285))

(assert (= (and b!4518285 res!1880268) b!4518286))

(declare-fun m!5264641 () Bool)

(assert (=> d!1391441 m!5264641))

(declare-fun m!5264643 () Bool)

(assert (=> d!1391441 m!5264643))

(declare-fun m!5264645 () Bool)

(assert (=> d!1391441 m!5264645))

(declare-fun m!5264647 () Bool)

(assert (=> d!1391441 m!5264647))

(declare-fun m!5264649 () Bool)

(assert (=> b!4518285 m!5264649))

(declare-fun m!5264651 () Bool)

(assert (=> b!4518286 m!5264651))

(assert (=> b!4518029 d!1391441))

(declare-fun d!1391443 () Bool)

(declare-fun e!2814953 () Bool)

(assert (=> d!1391443 e!2814953))

(declare-fun res!1880269 () Bool)

(assert (=> d!1391443 (=> (not res!1880269) (not e!2814953))))

(declare-fun lt!1695905 () ListLongMap!2955)

(assert (=> d!1391443 (= res!1880269 (contains!13362 lt!1695905 (_1!28828 lt!1695575)))))

(declare-fun lt!1695907 () List!50765)

(assert (=> d!1391443 (= lt!1695905 (ListLongMap!2956 lt!1695907))))

(declare-fun lt!1695908 () Unit!94720)

(declare-fun lt!1695906 () Unit!94720)

(assert (=> d!1391443 (= lt!1695908 lt!1695906)))

(assert (=> d!1391443 (= (getValueByKey!1086 lt!1695907 (_1!28828 lt!1695575)) (Some!11105 (_2!28828 lt!1695575)))))

(assert (=> d!1391443 (= lt!1695906 (lemmaContainsTupThenGetReturnValue!673 lt!1695907 (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(assert (=> d!1391443 (= lt!1695907 (insertStrictlySorted!405 (toList!4323 lt!1695580) (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(assert (=> d!1391443 (= (+!1534 lt!1695580 lt!1695575) lt!1695905)))

(declare-fun b!4518287 () Bool)

(declare-fun res!1880270 () Bool)

(assert (=> b!4518287 (=> (not res!1880270) (not e!2814953))))

(assert (=> b!4518287 (= res!1880270 (= (getValueByKey!1086 (toList!4323 lt!1695905) (_1!28828 lt!1695575)) (Some!11105 (_2!28828 lt!1695575))))))

(declare-fun b!4518288 () Bool)

(assert (=> b!4518288 (= e!2814953 (contains!13363 (toList!4323 lt!1695905) lt!1695575))))

(assert (= (and d!1391443 res!1880269) b!4518287))

(assert (= (and b!4518287 res!1880270) b!4518288))

(declare-fun m!5264657 () Bool)

(assert (=> d!1391443 m!5264657))

(declare-fun m!5264661 () Bool)

(assert (=> d!1391443 m!5264661))

(declare-fun m!5264663 () Bool)

(assert (=> d!1391443 m!5264663))

(declare-fun m!5264665 () Bool)

(assert (=> d!1391443 m!5264665))

(declare-fun m!5264667 () Bool)

(assert (=> b!4518287 m!5264667))

(declare-fun m!5264669 () Bool)

(assert (=> b!4518288 m!5264669))

(assert (=> b!4518029 d!1391443))

(declare-fun d!1391447 () Bool)

(declare-fun get!16583 (Option!11106) List!50764)

(assert (=> d!1391447 (= (apply!11895 lt!1695586 hash!344) (get!16583 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344)))))

(declare-fun bs!853653 () Bool)

(assert (= bs!853653 d!1391447))

(assert (=> bs!853653 m!5264615))

(assert (=> bs!853653 m!5264615))

(declare-fun m!5264671 () Bool)

(assert (=> bs!853653 m!5264671))

(assert (=> b!4518044 d!1391447))

(declare-fun bs!853655 () Bool)

(declare-fun d!1391449 () Bool)

(assert (= bs!853655 (and d!1391449 d!1391343)))

(declare-fun lambda!172124 () Int)

(assert (=> bs!853655 (= lambda!172124 lambda!172028)))

(declare-fun bs!853656 () Bool)

(assert (= bs!853656 (and d!1391449 d!1391353)))

(assert (=> bs!853656 (= lambda!172124 lambda!172033)))

(declare-fun bs!853657 () Bool)

(assert (= bs!853657 (and d!1391449 start!447216)))

(assert (=> bs!853657 (= lambda!172124 lambda!172021)))

(declare-fun bs!853658 () Bool)

(assert (= bs!853658 (and d!1391449 d!1391355)))

(assert (=> bs!853658 (= lambda!172124 lambda!172050)))

(declare-fun bs!853659 () Bool)

(assert (= bs!853659 (and d!1391449 d!1391335)))

(assert (=> bs!853659 (= lambda!172124 lambda!172027)))

(declare-fun bs!853660 () Bool)

(assert (= bs!853660 (and d!1391449 d!1391351)))

(assert (=> bs!853660 (= lambda!172124 lambda!172032)))

(declare-fun bs!853661 () Bool)

(assert (= bs!853661 (and d!1391449 d!1391347)))

(assert (=> bs!853661 (not (= lambda!172124 lambda!172031))))

(declare-fun bs!853662 () Bool)

(assert (= bs!853662 (and d!1391449 d!1391331)))

(assert (=> bs!853662 (= lambda!172124 lambda!172024)))

(assert (=> d!1391449 (contains!13362 lm!1477 (hash!2799 hashF!1107 key!3287))))

(declare-fun lt!1695911 () Unit!94720)

(declare-fun choose!29484 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> d!1391449 (= lt!1695911 (choose!29484 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1391449 (forall!10257 (toList!4323 lm!1477) lambda!172124)))

(assert (=> d!1391449 (= (lemmaInGenMapThenLongMapContainsHash!232 lm!1477 key!3287 hashF!1107) lt!1695911)))

(declare-fun bs!853663 () Bool)

(assert (= bs!853663 d!1391449))

(assert (=> bs!853663 m!5264177))

(assert (=> bs!853663 m!5264177))

(declare-fun m!5264685 () Bool)

(assert (=> bs!853663 m!5264685))

(declare-fun m!5264687 () Bool)

(assert (=> bs!853663 m!5264687))

(declare-fun m!5264689 () Bool)

(assert (=> bs!853663 m!5264689))

(assert (=> b!4518043 d!1391449))

(declare-fun d!1391459 () Bool)

(assert (=> d!1391459 (contains!13363 (toList!4323 lm!1477) (tuple2!51069 hash!344 lt!1695573))))

(declare-fun lt!1695932 () Unit!94720)

(declare-fun choose!29485 (List!50765 (_ BitVec 64) List!50764) Unit!94720)

(assert (=> d!1391459 (= lt!1695932 (choose!29485 (toList!4323 lm!1477) hash!344 lt!1695573))))

(declare-fun e!2814982 () Bool)

(assert (=> d!1391459 e!2814982))

(declare-fun res!1880292 () Bool)

(assert (=> d!1391459 (=> (not res!1880292) (not e!2814982))))

(declare-fun isStrictlySorted!429 (List!50765) Bool)

(assert (=> d!1391459 (= res!1880292 (isStrictlySorted!429 (toList!4323 lm!1477)))))

(assert (=> d!1391459 (= (lemmaGetValueByKeyImpliesContainsTuple!670 (toList!4323 lm!1477) hash!344 lt!1695573) lt!1695932)))

(declare-fun b!4518324 () Bool)

(assert (=> b!4518324 (= e!2814982 (= (getValueByKey!1086 (toList!4323 lm!1477) hash!344) (Some!11105 lt!1695573)))))

(assert (= (and d!1391459 res!1880292) b!4518324))

(declare-fun m!5264737 () Bool)

(assert (=> d!1391459 m!5264737))

(declare-fun m!5264739 () Bool)

(assert (=> d!1391459 m!5264739))

(declare-fun m!5264741 () Bool)

(assert (=> d!1391459 m!5264741))

(declare-fun m!5264743 () Bool)

(assert (=> b!4518324 m!5264743))

(assert (=> b!4518043 d!1391459))

(declare-fun d!1391467 () Bool)

(assert (=> d!1391467 (= (apply!11895 lm!1477 hash!344) (get!16583 (getValueByKey!1086 (toList!4323 lm!1477) hash!344)))))

(declare-fun bs!853673 () Bool)

(assert (= bs!853673 d!1391467))

(assert (=> bs!853673 m!5264743))

(assert (=> bs!853673 m!5264743))

(declare-fun m!5264745 () Bool)

(assert (=> bs!853673 m!5264745))

(assert (=> b!4518043 d!1391467))

(declare-fun d!1391469 () Bool)

(declare-fun lt!1695933 () Bool)

(assert (=> d!1391469 (= lt!1695933 (select (content!8352 (toList!4323 lm!1477)) lt!1695598))))

(declare-fun e!2814984 () Bool)

(assert (=> d!1391469 (= lt!1695933 e!2814984)))

(declare-fun res!1880293 () Bool)

(assert (=> d!1391469 (=> (not res!1880293) (not e!2814984))))

(assert (=> d!1391469 (= res!1880293 ((_ is Cons!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391469 (= (contains!13363 (toList!4323 lm!1477) lt!1695598) lt!1695933)))

(declare-fun b!4518325 () Bool)

(declare-fun e!2814983 () Bool)

(assert (=> b!4518325 (= e!2814984 e!2814983)))

(declare-fun res!1880294 () Bool)

(assert (=> b!4518325 (=> res!1880294 e!2814983)))

(assert (=> b!4518325 (= res!1880294 (= (h!56492 (toList!4323 lm!1477)) lt!1695598))))

(declare-fun b!4518326 () Bool)

(assert (=> b!4518326 (= e!2814983 (contains!13363 (t!357727 (toList!4323 lm!1477)) lt!1695598))))

(assert (= (and d!1391469 res!1880293) b!4518325))

(assert (= (and b!4518325 (not res!1880294)) b!4518326))

(declare-fun m!5264747 () Bool)

(assert (=> d!1391469 m!5264747))

(declare-fun m!5264749 () Bool)

(assert (=> d!1391469 m!5264749))

(assert (=> b!4518326 m!5264099))

(assert (=> b!4518043 d!1391469))

(declare-fun d!1391471 () Bool)

(declare-fun e!2814985 () Bool)

(assert (=> d!1391471 e!2814985))

(declare-fun res!1880295 () Bool)

(assert (=> d!1391471 (=> res!1880295 e!2814985)))

(declare-fun lt!1695935 () Bool)

(assert (=> d!1391471 (= res!1880295 (not lt!1695935))))

(declare-fun lt!1695936 () Bool)

(assert (=> d!1391471 (= lt!1695935 lt!1695936)))

(declare-fun lt!1695934 () Unit!94720)

(declare-fun e!2814986 () Unit!94720)

(assert (=> d!1391471 (= lt!1695934 e!2814986)))

(declare-fun c!770987 () Bool)

(assert (=> d!1391471 (= c!770987 lt!1695936)))

(assert (=> d!1391471 (= lt!1695936 (containsKey!1777 (toList!4323 lm!1477) lt!1695597))))

(assert (=> d!1391471 (= (contains!13362 lm!1477 lt!1695597) lt!1695935)))

(declare-fun b!4518327 () Bool)

(declare-fun lt!1695937 () Unit!94720)

(assert (=> b!4518327 (= e!2814986 lt!1695937)))

(assert (=> b!4518327 (= lt!1695937 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lm!1477) lt!1695597))))

(assert (=> b!4518327 (isDefined!8395 (getValueByKey!1086 (toList!4323 lm!1477) lt!1695597))))

(declare-fun b!4518328 () Bool)

(declare-fun Unit!94755 () Unit!94720)

(assert (=> b!4518328 (= e!2814986 Unit!94755)))

(declare-fun b!4518329 () Bool)

(assert (=> b!4518329 (= e!2814985 (isDefined!8395 (getValueByKey!1086 (toList!4323 lm!1477) lt!1695597)))))

(assert (= (and d!1391471 c!770987) b!4518327))

(assert (= (and d!1391471 (not c!770987)) b!4518328))

(assert (= (and d!1391471 (not res!1880295)) b!4518329))

(declare-fun m!5264751 () Bool)

(assert (=> d!1391471 m!5264751))

(declare-fun m!5264753 () Bool)

(assert (=> b!4518327 m!5264753))

(declare-fun m!5264755 () Bool)

(assert (=> b!4518327 m!5264755))

(assert (=> b!4518327 m!5264755))

(declare-fun m!5264757 () Bool)

(assert (=> b!4518327 m!5264757))

(assert (=> b!4518329 m!5264755))

(assert (=> b!4518329 m!5264755))

(assert (=> b!4518329 m!5264757))

(assert (=> b!4518043 d!1391471))

(declare-fun b!4518338 () Bool)

(declare-fun e!2814991 () List!50764)

(assert (=> b!4518338 (= e!2814991 (t!357726 lt!1695573))))

(declare-fun b!4518340 () Bool)

(declare-fun e!2814992 () List!50764)

(assert (=> b!4518340 (= e!2814992 (Cons!50640 (h!56491 lt!1695573) (removePairForKey!785 (t!357726 lt!1695573) key!3287)))))

(declare-fun b!4518339 () Bool)

(assert (=> b!4518339 (= e!2814991 e!2814992)))

(declare-fun c!770993 () Bool)

(assert (=> b!4518339 (= c!770993 ((_ is Cons!50640) lt!1695573))))

(declare-fun d!1391473 () Bool)

(declare-fun lt!1695940 () List!50764)

(assert (=> d!1391473 (not (containsKey!1774 lt!1695940 key!3287))))

(assert (=> d!1391473 (= lt!1695940 e!2814991)))

(declare-fun c!770992 () Bool)

(assert (=> d!1391473 (= c!770992 (and ((_ is Cons!50640) lt!1695573) (= (_1!28827 (h!56491 lt!1695573)) key!3287)))))

(assert (=> d!1391473 (noDuplicateKeys!1158 lt!1695573)))

(assert (=> d!1391473 (= (removePairForKey!785 lt!1695573 key!3287) lt!1695940)))

(declare-fun b!4518341 () Bool)

(assert (=> b!4518341 (= e!2814992 Nil!50640)))

(assert (= (and d!1391473 c!770992) b!4518338))

(assert (= (and d!1391473 (not c!770992)) b!4518339))

(assert (= (and b!4518339 c!770993) b!4518340))

(assert (= (and b!4518339 (not c!770993)) b!4518341))

(declare-fun m!5264759 () Bool)

(assert (=> b!4518340 m!5264759))

(declare-fun m!5264761 () Bool)

(assert (=> d!1391473 m!5264761))

(declare-fun m!5264763 () Bool)

(assert (=> d!1391473 m!5264763))

(assert (=> b!4518043 d!1391473))

(declare-fun d!1391475 () Bool)

(declare-fun dynLambda!21159 (Int tuple2!51068) Bool)

(assert (=> d!1391475 (dynLambda!21159 lambda!172021 lt!1695598)))

(declare-fun lt!1695943 () Unit!94720)

(declare-fun choose!29486 (List!50765 Int tuple2!51068) Unit!94720)

(assert (=> d!1391475 (= lt!1695943 (choose!29486 (toList!4323 lm!1477) lambda!172021 lt!1695598))))

(declare-fun e!2814995 () Bool)

(assert (=> d!1391475 e!2814995))

(declare-fun res!1880298 () Bool)

(assert (=> d!1391475 (=> (not res!1880298) (not e!2814995))))

(assert (=> d!1391475 (= res!1880298 (forall!10257 (toList!4323 lm!1477) lambda!172021))))

(assert (=> d!1391475 (= (forallContained!2509 (toList!4323 lm!1477) lambda!172021 lt!1695598) lt!1695943)))

(declare-fun b!4518344 () Bool)

(assert (=> b!4518344 (= e!2814995 (contains!13363 (toList!4323 lm!1477) lt!1695598))))

(assert (= (and d!1391475 res!1880298) b!4518344))

(declare-fun b_lambda!154659 () Bool)

(assert (=> (not b_lambda!154659) (not d!1391475)))

(declare-fun m!5264765 () Bool)

(assert (=> d!1391475 m!5264765))

(declare-fun m!5264767 () Bool)

(assert (=> d!1391475 m!5264767))

(assert (=> d!1391475 m!5264171))

(assert (=> b!4518344 m!5264187))

(assert (=> b!4518043 d!1391475))

(declare-fun bs!853713 () Bool)

(declare-fun d!1391477 () Bool)

(assert (= bs!853713 (and d!1391477 d!1391343)))

(declare-fun lambda!172136 () Int)

(assert (=> bs!853713 (= lambda!172136 lambda!172028)))

(declare-fun bs!853714 () Bool)

(assert (= bs!853714 (and d!1391477 d!1391353)))

(assert (=> bs!853714 (= lambda!172136 lambda!172033)))

(declare-fun bs!853715 () Bool)

(assert (= bs!853715 (and d!1391477 start!447216)))

(assert (=> bs!853715 (= lambda!172136 lambda!172021)))

(declare-fun bs!853716 () Bool)

(assert (= bs!853716 (and d!1391477 d!1391355)))

(assert (=> bs!853716 (= lambda!172136 lambda!172050)))

(declare-fun bs!853717 () Bool)

(assert (= bs!853717 (and d!1391477 d!1391335)))

(assert (=> bs!853717 (= lambda!172136 lambda!172027)))

(declare-fun bs!853718 () Bool)

(assert (= bs!853718 (and d!1391477 d!1391351)))

(assert (=> bs!853718 (= lambda!172136 lambda!172032)))

(declare-fun bs!853719 () Bool)

(assert (= bs!853719 (and d!1391477 d!1391449)))

(assert (=> bs!853719 (= lambda!172136 lambda!172124)))

(declare-fun bs!853720 () Bool)

(assert (= bs!853720 (and d!1391477 d!1391347)))

(assert (=> bs!853720 (not (= lambda!172136 lambda!172031))))

(declare-fun bs!853721 () Bool)

(assert (= bs!853721 (and d!1391477 d!1391331)))

(assert (=> bs!853721 (= lambda!172136 lambda!172024)))

(assert (=> d!1391477 (not (contains!13361 (extractMap!1214 (toList!4323 lm!1477)) key!3287))))

(declare-fun lt!1695971 () Unit!94720)

(declare-fun choose!29487 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> d!1391477 (= lt!1695971 (choose!29487 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1391477 (forall!10257 (toList!4323 lm!1477) lambda!172136)))

(assert (=> d!1391477 (= (lemmaNotInItsHashBucketThenNotInMap!146 lm!1477 key!3287 hashF!1107) lt!1695971)))

(declare-fun bs!853722 () Bool)

(assert (= bs!853722 d!1391477))

(assert (=> bs!853722 m!5264103))

(assert (=> bs!853722 m!5264103))

(declare-fun m!5264813 () Bool)

(assert (=> bs!853722 m!5264813))

(declare-fun m!5264817 () Bool)

(assert (=> bs!853722 m!5264817))

(declare-fun m!5264821 () Bool)

(assert (=> bs!853722 m!5264821))

(assert (=> b!4518022 d!1391477))

(declare-fun d!1391489 () Bool)

(declare-fun res!1880310 () Bool)

(declare-fun e!2815009 () Bool)

(assert (=> d!1391489 (=> res!1880310 e!2815009)))

(declare-fun e!2815008 () Bool)

(assert (=> d!1391489 (= res!1880310 e!2815008)))

(declare-fun res!1880312 () Bool)

(assert (=> d!1391489 (=> (not res!1880312) (not e!2815008))))

(assert (=> d!1391489 (= res!1880312 ((_ is Cons!50641) (t!357727 (toList!4323 lm!1477))))))

(assert (=> d!1391489 (= (containsKeyBiggerList!138 (t!357727 (toList!4323 lm!1477)) key!3287) e!2815009)))

(declare-fun b!4518360 () Bool)

(assert (=> b!4518360 (= e!2815008 (containsKey!1774 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-fun b!4518361 () Bool)

(declare-fun e!2815010 () Bool)

(assert (=> b!4518361 (= e!2815009 e!2815010)))

(declare-fun res!1880311 () Bool)

(assert (=> b!4518361 (=> (not res!1880311) (not e!2815010))))

(assert (=> b!4518361 (= res!1880311 ((_ is Cons!50641) (t!357727 (toList!4323 lm!1477))))))

(declare-fun b!4518362 () Bool)

(assert (=> b!4518362 (= e!2815010 (containsKeyBiggerList!138 (t!357727 (t!357727 (toList!4323 lm!1477))) key!3287))))

(assert (= (and d!1391489 res!1880312) b!4518360))

(assert (= (and d!1391489 (not res!1880310)) b!4518361))

(assert (= (and b!4518361 res!1880311) b!4518362))

(declare-fun m!5264827 () Bool)

(assert (=> b!4518360 m!5264827))

(declare-fun m!5264829 () Bool)

(assert (=> b!4518362 m!5264829))

(assert (=> b!4518025 d!1391489))

(declare-fun d!1391493 () Bool)

(declare-fun res!1880313 () Bool)

(declare-fun e!2815012 () Bool)

(assert (=> d!1391493 (=> res!1880313 e!2815012)))

(declare-fun e!2815011 () Bool)

(assert (=> d!1391493 (= res!1880313 e!2815011)))

(declare-fun res!1880315 () Bool)

(assert (=> d!1391493 (=> (not res!1880315) (not e!2815011))))

(assert (=> d!1391493 (= res!1880315 ((_ is Cons!50641) (toList!4323 lt!1695586)))))

(assert (=> d!1391493 (= (containsKeyBiggerList!138 (toList!4323 lt!1695586) key!3287) e!2815012)))

(declare-fun b!4518363 () Bool)

(assert (=> b!4518363 (= e!2815011 (containsKey!1774 (_2!28828 (h!56492 (toList!4323 lt!1695586))) key!3287))))

(declare-fun b!4518364 () Bool)

(declare-fun e!2815013 () Bool)

(assert (=> b!4518364 (= e!2815012 e!2815013)))

(declare-fun res!1880314 () Bool)

(assert (=> b!4518364 (=> (not res!1880314) (not e!2815013))))

(assert (=> b!4518364 (= res!1880314 ((_ is Cons!50641) (toList!4323 lt!1695586)))))

(declare-fun b!4518365 () Bool)

(assert (=> b!4518365 (= e!2815013 (containsKeyBiggerList!138 (t!357727 (toList!4323 lt!1695586)) key!3287))))

(assert (= (and d!1391493 res!1880315) b!4518363))

(assert (= (and d!1391493 (not res!1880313)) b!4518364))

(assert (= (and b!4518364 res!1880314) b!4518365))

(declare-fun m!5264831 () Bool)

(assert (=> b!4518363 m!5264831))

(declare-fun m!5264833 () Bool)

(assert (=> b!4518365 m!5264833))

(assert (=> b!4518025 d!1391493))

(declare-fun bs!853723 () Bool)

(declare-fun d!1391495 () Bool)

(assert (= bs!853723 (and d!1391495 d!1391343)))

(declare-fun lambda!172139 () Int)

(assert (=> bs!853723 (= lambda!172139 lambda!172028)))

(declare-fun bs!853724 () Bool)

(assert (= bs!853724 (and d!1391495 d!1391353)))

(assert (=> bs!853724 (= lambda!172139 lambda!172033)))

(declare-fun bs!853725 () Bool)

(assert (= bs!853725 (and d!1391495 start!447216)))

(assert (=> bs!853725 (= lambda!172139 lambda!172021)))

(declare-fun bs!853726 () Bool)

(assert (= bs!853726 (and d!1391495 d!1391355)))

(assert (=> bs!853726 (= lambda!172139 lambda!172050)))

(declare-fun bs!853727 () Bool)

(assert (= bs!853727 (and d!1391495 d!1391477)))

(assert (=> bs!853727 (= lambda!172139 lambda!172136)))

(declare-fun bs!853728 () Bool)

(assert (= bs!853728 (and d!1391495 d!1391335)))

(assert (=> bs!853728 (= lambda!172139 lambda!172027)))

(declare-fun bs!853729 () Bool)

(assert (= bs!853729 (and d!1391495 d!1391351)))

(assert (=> bs!853729 (= lambda!172139 lambda!172032)))

(declare-fun bs!853730 () Bool)

(assert (= bs!853730 (and d!1391495 d!1391449)))

(assert (=> bs!853730 (= lambda!172139 lambda!172124)))

(declare-fun bs!853731 () Bool)

(assert (= bs!853731 (and d!1391495 d!1391347)))

(assert (=> bs!853731 (not (= lambda!172139 lambda!172031))))

(declare-fun bs!853732 () Bool)

(assert (= bs!853732 (and d!1391495 d!1391331)))

(assert (=> bs!853732 (= lambda!172139 lambda!172024)))

(assert (=> d!1391495 (containsKeyBiggerList!138 (toList!4323 lt!1695586) key!3287)))

(declare-fun lt!1695974 () Unit!94720)

(declare-fun choose!29488 (ListLongMap!2955 K!12035 Hashable!5553) Unit!94720)

(assert (=> d!1391495 (= lt!1695974 (choose!29488 lt!1695586 key!3287 hashF!1107))))

(assert (=> d!1391495 (forall!10257 (toList!4323 lt!1695586) lambda!172139)))

(assert (=> d!1391495 (= (lemmaInLongMapThenContainsKeyBiggerList!74 lt!1695586 key!3287 hashF!1107) lt!1695974)))

(declare-fun bs!853733 () Bool)

(assert (= bs!853733 d!1391495))

(assert (=> bs!853733 m!5264107))

(declare-fun m!5264835 () Bool)

(assert (=> bs!853733 m!5264835))

(declare-fun m!5264837 () Bool)

(assert (=> bs!853733 m!5264837))

(assert (=> b!4518025 d!1391495))

(declare-fun d!1391497 () Bool)

(declare-fun hash!2803 (Hashable!5553 K!12035) (_ BitVec 64))

(assert (=> d!1391497 (= (hash!2799 hashF!1107 key!3287) (hash!2803 hashF!1107 key!3287))))

(declare-fun bs!853734 () Bool)

(assert (= bs!853734 d!1391497))

(declare-fun m!5264839 () Bool)

(assert (=> bs!853734 m!5264839))

(assert (=> b!4518046 d!1391497))

(declare-fun bs!853736 () Bool)

(declare-fun d!1391499 () Bool)

(assert (= bs!853736 (and d!1391499 b!4518242)))

(declare-fun lambda!172142 () Int)

(assert (=> bs!853736 (not (= lambda!172142 lambda!172114))))

(declare-fun bs!853737 () Bool)

(assert (= bs!853737 (and d!1391499 b!4518240)))

(assert (=> bs!853737 (not (= lambda!172142 lambda!172115))))

(assert (=> bs!853737 (not (= lambda!172142 lambda!172116))))

(declare-fun bs!853738 () Bool)

(assert (= bs!853738 (and d!1391499 d!1391367)))

(assert (=> bs!853738 (not (= lambda!172142 lambda!172119))))

(assert (=> d!1391499 true))

(assert (=> d!1391499 true))

(assert (=> d!1391499 (= (allKeysSameHash!1012 newBucket!178 hash!344 hashF!1107) (forall!10259 newBucket!178 lambda!172142))))

(declare-fun bs!853739 () Bool)

(assert (= bs!853739 d!1391499))

(declare-fun m!5264845 () Bool)

(assert (=> bs!853739 m!5264845))

(assert (=> b!4518045 d!1391499))

(declare-fun d!1391503 () Bool)

(assert (=> d!1391503 (= (eq!615 lt!1695582 lt!1695583) (= (content!8350 (toList!4324 lt!1695582)) (content!8350 (toList!4324 lt!1695583))))))

(declare-fun bs!853740 () Bool)

(assert (= bs!853740 d!1391503))

(assert (=> bs!853740 m!5264259))

(assert (=> bs!853740 m!5264257))

(assert (=> b!4518023 d!1391503))

(declare-fun d!1391505 () Bool)

(declare-fun res!1880320 () Bool)

(declare-fun e!2815018 () Bool)

(assert (=> d!1391505 (=> res!1880320 e!2815018)))

(assert (=> d!1391505 (= res!1880320 ((_ is Nil!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391505 (= (forall!10257 (toList!4323 lm!1477) lambda!172021) e!2815018)))

(declare-fun b!4518374 () Bool)

(declare-fun e!2815019 () Bool)

(assert (=> b!4518374 (= e!2815018 e!2815019)))

(declare-fun res!1880321 () Bool)

(assert (=> b!4518374 (=> (not res!1880321) (not e!2815019))))

(assert (=> b!4518374 (= res!1880321 (dynLambda!21159 lambda!172021 (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4518375 () Bool)

(assert (=> b!4518375 (= e!2815019 (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172021))))

(assert (= (and d!1391505 (not res!1880320)) b!4518374))

(assert (= (and b!4518374 res!1880321) b!4518375))

(declare-fun b_lambda!154661 () Bool)

(assert (=> (not b_lambda!154661) (not b!4518374)))

(declare-fun m!5264847 () Bool)

(assert (=> b!4518374 m!5264847))

(declare-fun m!5264849 () Bool)

(assert (=> b!4518375 m!5264849))

(assert (=> start!447216 d!1391505))

(declare-fun d!1391507 () Bool)

(assert (=> d!1391507 (= (inv!66219 lm!1477) (isStrictlySorted!429 (toList!4323 lm!1477)))))

(declare-fun bs!853741 () Bool)

(assert (= bs!853741 d!1391507))

(assert (=> bs!853741 m!5264741))

(assert (=> start!447216 d!1391507))

(declare-fun d!1391509 () Bool)

(declare-fun res!1880326 () Bool)

(declare-fun e!2815024 () Bool)

(assert (=> d!1391509 (=> res!1880326 e!2815024)))

(assert (=> d!1391509 (= res!1880326 (not ((_ is Cons!50640) newBucket!178)))))

(assert (=> d!1391509 (= (noDuplicateKeys!1158 newBucket!178) e!2815024)))

(declare-fun b!4518380 () Bool)

(declare-fun e!2815025 () Bool)

(assert (=> b!4518380 (= e!2815024 e!2815025)))

(declare-fun res!1880327 () Bool)

(assert (=> b!4518380 (=> (not res!1880327) (not e!2815025))))

(assert (=> b!4518380 (= res!1880327 (not (containsKey!1774 (t!357726 newBucket!178) (_1!28827 (h!56491 newBucket!178)))))))

(declare-fun b!4518381 () Bool)

(assert (=> b!4518381 (= e!2815025 (noDuplicateKeys!1158 (t!357726 newBucket!178)))))

(assert (= (and d!1391509 (not res!1880326)) b!4518380))

(assert (= (and b!4518380 res!1880327) b!4518381))

(declare-fun m!5264851 () Bool)

(assert (=> b!4518380 m!5264851))

(declare-fun m!5264853 () Bool)

(assert (=> b!4518381 m!5264853))

(assert (=> b!4518037 d!1391509))

(declare-fun d!1391511 () Bool)

(assert (=> d!1391511 (= (eq!615 lt!1695577 lt!1695579) (= (content!8350 (toList!4324 lt!1695577)) (content!8350 (toList!4324 lt!1695579))))))

(declare-fun bs!853742 () Bool)

(assert (= bs!853742 d!1391511))

(assert (=> bs!853742 m!5264355))

(assert (=> bs!853742 m!5264359))

(assert (=> b!4518041 d!1391511))

(declare-fun bs!853743 () Bool)

(declare-fun b!4518384 () Bool)

(assert (= bs!853743 (and b!4518384 d!1391499)))

(declare-fun lambda!172143 () Int)

(assert (=> bs!853743 (not (= lambda!172143 lambda!172142))))

(declare-fun bs!853744 () Bool)

(assert (= bs!853744 (and b!4518384 b!4518240)))

(assert (=> bs!853744 (= (= lt!1695590 lt!1695841) (= lambda!172143 lambda!172116))))

(declare-fun bs!853745 () Bool)

(assert (= bs!853745 (and b!4518384 b!4518242)))

(assert (=> bs!853745 (= (= lt!1695590 lt!1695572) (= lambda!172143 lambda!172114))))

(declare-fun bs!853746 () Bool)

(assert (= bs!853746 (and b!4518384 d!1391367)))

(assert (=> bs!853746 (= (= lt!1695590 lt!1695839) (= lambda!172143 lambda!172119))))

(assert (=> bs!853744 (= (= lt!1695590 lt!1695572) (= lambda!172143 lambda!172115))))

(assert (=> b!4518384 true))

(declare-fun bs!853747 () Bool)

(declare-fun b!4518382 () Bool)

(assert (= bs!853747 (and b!4518382 d!1391499)))

(declare-fun lambda!172144 () Int)

(assert (=> bs!853747 (not (= lambda!172144 lambda!172142))))

(declare-fun bs!853748 () Bool)

(assert (= bs!853748 (and b!4518382 b!4518240)))

(assert (=> bs!853748 (= (= lt!1695590 lt!1695841) (= lambda!172144 lambda!172116))))

(declare-fun bs!853749 () Bool)

(assert (= bs!853749 (and b!4518382 b!4518242)))

(assert (=> bs!853749 (= (= lt!1695590 lt!1695572) (= lambda!172144 lambda!172114))))

(declare-fun bs!853750 () Bool)

(assert (= bs!853750 (and b!4518382 d!1391367)))

(assert (=> bs!853750 (= (= lt!1695590 lt!1695839) (= lambda!172144 lambda!172119))))

(declare-fun bs!853751 () Bool)

(assert (= bs!853751 (and b!4518382 b!4518384)))

(assert (=> bs!853751 (= lambda!172144 lambda!172143)))

(assert (=> bs!853748 (= (= lt!1695590 lt!1695572) (= lambda!172144 lambda!172115))))

(assert (=> b!4518382 true))

(declare-fun lambda!172145 () Int)

(assert (=> bs!853747 (not (= lambda!172145 lambda!172142))))

(declare-fun lt!1695982 () ListMap!3585)

(assert (=> b!4518382 (= (= lt!1695982 lt!1695590) (= lambda!172145 lambda!172144))))

(assert (=> bs!853748 (= (= lt!1695982 lt!1695841) (= lambda!172145 lambda!172116))))

(assert (=> bs!853749 (= (= lt!1695982 lt!1695572) (= lambda!172145 lambda!172114))))

(assert (=> bs!853750 (= (= lt!1695982 lt!1695839) (= lambda!172145 lambda!172119))))

(assert (=> bs!853751 (= (= lt!1695982 lt!1695590) (= lambda!172145 lambda!172143))))

(assert (=> bs!853748 (= (= lt!1695982 lt!1695572) (= lambda!172145 lambda!172115))))

(assert (=> b!4518382 true))

(declare-fun bs!853752 () Bool)

(declare-fun d!1391513 () Bool)

(assert (= bs!853752 (and d!1391513 d!1391499)))

(declare-fun lambda!172146 () Int)

(assert (=> bs!853752 (not (= lambda!172146 lambda!172142))))

(declare-fun bs!853753 () Bool)

(assert (= bs!853753 (and d!1391513 b!4518382)))

(declare-fun lt!1695980 () ListMap!3585)

(assert (=> bs!853753 (= (= lt!1695980 lt!1695590) (= lambda!172146 lambda!172144))))

(declare-fun bs!853754 () Bool)

(assert (= bs!853754 (and d!1391513 b!4518240)))

(assert (=> bs!853754 (= (= lt!1695980 lt!1695841) (= lambda!172146 lambda!172116))))

(declare-fun bs!853755 () Bool)

(assert (= bs!853755 (and d!1391513 b!4518242)))

(assert (=> bs!853755 (= (= lt!1695980 lt!1695572) (= lambda!172146 lambda!172114))))

(declare-fun bs!853756 () Bool)

(assert (= bs!853756 (and d!1391513 d!1391367)))

(assert (=> bs!853756 (= (= lt!1695980 lt!1695839) (= lambda!172146 lambda!172119))))

(declare-fun bs!853757 () Bool)

(assert (= bs!853757 (and d!1391513 b!4518384)))

(assert (=> bs!853757 (= (= lt!1695980 lt!1695590) (= lambda!172146 lambda!172143))))

(assert (=> bs!853754 (= (= lt!1695980 lt!1695572) (= lambda!172146 lambda!172115))))

(assert (=> bs!853753 (= (= lt!1695980 lt!1695982) (= lambda!172146 lambda!172145))))

(assert (=> d!1391513 true))

(declare-fun e!2815026 () ListMap!3585)

(assert (=> b!4518382 (= e!2815026 lt!1695982)))

(declare-fun lt!1695997 () ListMap!3585)

(assert (=> b!4518382 (= lt!1695997 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4518382 (= lt!1695982 (addToMapMapFromBucket!685 (t!357726 (_2!28828 lt!1695575)) (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1695978 () Unit!94720)

(declare-fun call!314764 () Unit!94720)

(assert (=> b!4518382 (= lt!1695978 call!314764)))

(assert (=> b!4518382 (forall!10259 (toList!4324 lt!1695590) lambda!172144)))

(declare-fun lt!1695989 () Unit!94720)

(assert (=> b!4518382 (= lt!1695989 lt!1695978)))

(declare-fun call!314763 () Bool)

(assert (=> b!4518382 call!314763))

(declare-fun lt!1695994 () Unit!94720)

(declare-fun Unit!94760 () Unit!94720)

(assert (=> b!4518382 (= lt!1695994 Unit!94760)))

(declare-fun call!314762 () Bool)

(assert (=> b!4518382 call!314762))

(declare-fun lt!1695988 () Unit!94720)

(declare-fun Unit!94761 () Unit!94720)

(assert (=> b!4518382 (= lt!1695988 Unit!94761)))

(declare-fun lt!1695981 () Unit!94720)

(declare-fun Unit!94762 () Unit!94720)

(assert (=> b!4518382 (= lt!1695981 Unit!94762)))

(declare-fun lt!1695990 () Unit!94720)

(assert (=> b!4518382 (= lt!1695990 (forallContained!2511 (toList!4324 lt!1695997) lambda!172145 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4518382 (contains!13361 lt!1695997 (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun lt!1695998 () Unit!94720)

(declare-fun Unit!94763 () Unit!94720)

(assert (=> b!4518382 (= lt!1695998 Unit!94763)))

(assert (=> b!4518382 (contains!13361 lt!1695982 (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun lt!1695987 () Unit!94720)

(declare-fun Unit!94764 () Unit!94720)

(assert (=> b!4518382 (= lt!1695987 Unit!94764)))

(assert (=> b!4518382 (forall!10259 (_2!28828 lt!1695575) lambda!172145)))

(declare-fun lt!1695995 () Unit!94720)

(declare-fun Unit!94765 () Unit!94720)

(assert (=> b!4518382 (= lt!1695995 Unit!94765)))

(assert (=> b!4518382 (forall!10259 (toList!4324 lt!1695997) lambda!172145)))

(declare-fun lt!1695992 () Unit!94720)

(declare-fun Unit!94766 () Unit!94720)

(assert (=> b!4518382 (= lt!1695992 Unit!94766)))

(declare-fun lt!1695985 () Unit!94720)

(declare-fun Unit!94767 () Unit!94720)

(assert (=> b!4518382 (= lt!1695985 Unit!94767)))

(declare-fun lt!1695993 () Unit!94720)

(assert (=> b!4518382 (= lt!1695993 (addForallContainsKeyThenBeforeAdding!336 lt!1695590 lt!1695982 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> b!4518382 (forall!10259 (toList!4324 lt!1695590) lambda!172145)))

(declare-fun lt!1695996 () Unit!94720)

(assert (=> b!4518382 (= lt!1695996 lt!1695993)))

(assert (=> b!4518382 (forall!10259 (toList!4324 lt!1695590) lambda!172145)))

(declare-fun lt!1695984 () Unit!94720)

(declare-fun Unit!94768 () Unit!94720)

(assert (=> b!4518382 (= lt!1695984 Unit!94768)))

(declare-fun res!1880329 () Bool)

(assert (=> b!4518382 (= res!1880329 (forall!10259 (_2!28828 lt!1695575) lambda!172145))))

(declare-fun e!2815027 () Bool)

(assert (=> b!4518382 (=> (not res!1880329) (not e!2815027))))

(assert (=> b!4518382 e!2815027))

(declare-fun lt!1695983 () Unit!94720)

(declare-fun Unit!94769 () Unit!94720)

(assert (=> b!4518382 (= lt!1695983 Unit!94769)))

(declare-fun b!4518383 () Bool)

(declare-fun e!2815028 () Bool)

(assert (=> b!4518383 (= e!2815028 (invariantList!1015 (toList!4324 lt!1695980)))))

(declare-fun bm!314757 () Bool)

(declare-fun c!770996 () Bool)

(assert (=> bm!314757 (= call!314762 (forall!10259 (ite c!770996 (toList!4324 lt!1695590) (t!357726 (_2!28828 lt!1695575))) (ite c!770996 lambda!172143 lambda!172145)))))

(assert (=> b!4518384 (= e!2815026 lt!1695590)))

(declare-fun lt!1695986 () Unit!94720)

(assert (=> b!4518384 (= lt!1695986 call!314764)))

(assert (=> b!4518384 call!314762))

(declare-fun lt!1695991 () Unit!94720)

(assert (=> b!4518384 (= lt!1695991 lt!1695986)))

(assert (=> b!4518384 call!314763))

(declare-fun lt!1695979 () Unit!94720)

(declare-fun Unit!94770 () Unit!94720)

(assert (=> b!4518384 (= lt!1695979 Unit!94770)))

(assert (=> d!1391513 e!2815028))

(declare-fun res!1880328 () Bool)

(assert (=> d!1391513 (=> (not res!1880328) (not e!2815028))))

(assert (=> d!1391513 (= res!1880328 (forall!10259 (_2!28828 lt!1695575) lambda!172146))))

(assert (=> d!1391513 (= lt!1695980 e!2815026)))

(assert (=> d!1391513 (= c!770996 ((_ is Nil!50640) (_2!28828 lt!1695575)))))

(assert (=> d!1391513 (noDuplicateKeys!1158 (_2!28828 lt!1695575))))

(assert (=> d!1391513 (= (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695590) lt!1695980)))

(declare-fun b!4518385 () Bool)

(declare-fun res!1880330 () Bool)

(assert (=> b!4518385 (=> (not res!1880330) (not e!2815028))))

(assert (=> b!4518385 (= res!1880330 (forall!10259 (toList!4324 lt!1695590) lambda!172146))))

(declare-fun b!4518386 () Bool)

(assert (=> b!4518386 (= e!2815027 (forall!10259 (toList!4324 lt!1695590) lambda!172145))))

(declare-fun bm!314758 () Bool)

(assert (=> bm!314758 (= call!314763 (forall!10259 (ite c!770996 (toList!4324 lt!1695590) (toList!4324 lt!1695997)) (ite c!770996 lambda!172143 lambda!172145)))))

(declare-fun bm!314759 () Bool)

(assert (=> bm!314759 (= call!314764 (lemmaContainsAllItsOwnKeys!336 lt!1695590))))

(assert (= (and d!1391513 c!770996) b!4518384))

(assert (= (and d!1391513 (not c!770996)) b!4518382))

(assert (= (and b!4518382 res!1880329) b!4518386))

(assert (= (or b!4518384 b!4518382) bm!314757))

(assert (= (or b!4518384 b!4518382) bm!314758))

(assert (= (or b!4518384 b!4518382) bm!314759))

(assert (= (and d!1391513 res!1880328) b!4518385))

(assert (= (and b!4518385 res!1880330) b!4518383))

(declare-fun m!5264855 () Bool)

(assert (=> bm!314757 m!5264855))

(declare-fun m!5264857 () Bool)

(assert (=> bm!314759 m!5264857))

(declare-fun m!5264859 () Bool)

(assert (=> b!4518386 m!5264859))

(declare-fun m!5264861 () Bool)

(assert (=> b!4518382 m!5264861))

(declare-fun m!5264863 () Bool)

(assert (=> b!4518382 m!5264863))

(assert (=> b!4518382 m!5264859))

(assert (=> b!4518382 m!5264861))

(assert (=> b!4518382 m!5264859))

(declare-fun m!5264865 () Bool)

(assert (=> b!4518382 m!5264865))

(declare-fun m!5264867 () Bool)

(assert (=> b!4518382 m!5264867))

(declare-fun m!5264869 () Bool)

(assert (=> b!4518382 m!5264869))

(declare-fun m!5264871 () Bool)

(assert (=> b!4518382 m!5264871))

(declare-fun m!5264873 () Bool)

(assert (=> b!4518382 m!5264873))

(declare-fun m!5264875 () Bool)

(assert (=> b!4518382 m!5264875))

(assert (=> b!4518382 m!5264869))

(declare-fun m!5264877 () Bool)

(assert (=> b!4518382 m!5264877))

(declare-fun m!5264879 () Bool)

(assert (=> d!1391513 m!5264879))

(assert (=> d!1391513 m!5264163))

(declare-fun m!5264883 () Bool)

(assert (=> bm!314758 m!5264883))

(declare-fun m!5264887 () Bool)

(assert (=> b!4518385 m!5264887))

(declare-fun m!5264889 () Bool)

(assert (=> b!4518383 m!5264889))

(assert (=> b!4518041 d!1391513))

(declare-fun bs!853772 () Bool)

(declare-fun d!1391515 () Bool)

(assert (= bs!853772 (and d!1391515 d!1391343)))

(declare-fun lambda!172150 () Int)

(assert (=> bs!853772 (= lambda!172150 lambda!172028)))

(declare-fun bs!853773 () Bool)

(assert (= bs!853773 (and d!1391515 d!1391495)))

(assert (=> bs!853773 (= lambda!172150 lambda!172139)))

(declare-fun bs!853774 () Bool)

(assert (= bs!853774 (and d!1391515 d!1391353)))

(assert (=> bs!853774 (= lambda!172150 lambda!172033)))

(declare-fun bs!853775 () Bool)

(assert (= bs!853775 (and d!1391515 start!447216)))

(assert (=> bs!853775 (= lambda!172150 lambda!172021)))

(declare-fun bs!853776 () Bool)

(assert (= bs!853776 (and d!1391515 d!1391355)))

(assert (=> bs!853776 (= lambda!172150 lambda!172050)))

(declare-fun bs!853777 () Bool)

(assert (= bs!853777 (and d!1391515 d!1391477)))

(assert (=> bs!853777 (= lambda!172150 lambda!172136)))

(declare-fun bs!853778 () Bool)

(assert (= bs!853778 (and d!1391515 d!1391335)))

(assert (=> bs!853778 (= lambda!172150 lambda!172027)))

(declare-fun bs!853779 () Bool)

(assert (= bs!853779 (and d!1391515 d!1391351)))

(assert (=> bs!853779 (= lambda!172150 lambda!172032)))

(declare-fun bs!853780 () Bool)

(assert (= bs!853780 (and d!1391515 d!1391449)))

(assert (=> bs!853780 (= lambda!172150 lambda!172124)))

(declare-fun bs!853781 () Bool)

(assert (= bs!853781 (and d!1391515 d!1391347)))

(assert (=> bs!853781 (not (= lambda!172150 lambda!172031))))

(declare-fun bs!853782 () Bool)

(assert (= bs!853782 (and d!1391515 d!1391331)))

(assert (=> bs!853782 (= lambda!172150 lambda!172024)))

(declare-fun lt!1696002 () ListMap!3585)

(assert (=> d!1391515 (invariantList!1015 (toList!4324 lt!1696002))))

(declare-fun e!2815029 () ListMap!3585)

(assert (=> d!1391515 (= lt!1696002 e!2815029)))

(declare-fun c!770997 () Bool)

(assert (=> d!1391515 (= c!770997 ((_ is Cons!50641) (toList!4323 lt!1695574)))))

(assert (=> d!1391515 (forall!10257 (toList!4323 lt!1695574) lambda!172150)))

(assert (=> d!1391515 (= (extractMap!1214 (toList!4323 lt!1695574)) lt!1696002)))

(declare-fun b!4518387 () Bool)

(assert (=> b!4518387 (= e!2815029 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))))))

(declare-fun b!4518388 () Bool)

(assert (=> b!4518388 (= e!2815029 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391515 c!770997) b!4518387))

(assert (= (and d!1391515 (not c!770997)) b!4518388))

(declare-fun m!5264895 () Bool)

(assert (=> d!1391515 m!5264895))

(declare-fun m!5264897 () Bool)

(assert (=> d!1391515 m!5264897))

(declare-fun m!5264899 () Bool)

(assert (=> b!4518387 m!5264899))

(assert (=> b!4518387 m!5264899))

(declare-fun m!5264901 () Bool)

(assert (=> b!4518387 m!5264901))

(assert (=> b!4518041 d!1391515))

(declare-fun d!1391521 () Bool)

(declare-fun res!1880331 () Bool)

(declare-fun e!2815036 () Bool)

(assert (=> d!1391521 (=> res!1880331 e!2815036)))

(assert (=> d!1391521 (= res!1880331 (not ((_ is Cons!50640) (_2!28828 lt!1695575))))))

(assert (=> d!1391521 (= (noDuplicateKeys!1158 (_2!28828 lt!1695575)) e!2815036)))

(declare-fun b!4518399 () Bool)

(declare-fun e!2815037 () Bool)

(assert (=> b!4518399 (= e!2815036 e!2815037)))

(declare-fun res!1880332 () Bool)

(assert (=> b!4518399 (=> (not res!1880332) (not e!2815037))))

(assert (=> b!4518399 (= res!1880332 (not (containsKey!1774 (t!357726 (_2!28828 lt!1695575)) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4518400 () Bool)

(assert (=> b!4518400 (= e!2815037 (noDuplicateKeys!1158 (t!357726 (_2!28828 lt!1695575))))))

(assert (= (and d!1391521 (not res!1880331)) b!4518399))

(assert (= (and b!4518399 res!1880332) b!4518400))

(declare-fun m!5264907 () Bool)

(assert (=> b!4518399 m!5264907))

(declare-fun m!5264909 () Bool)

(assert (=> b!4518400 m!5264909))

(assert (=> b!4518040 d!1391521))

(declare-fun d!1391525 () Bool)

(assert (=> d!1391525 (dynLambda!21159 lambda!172021 (h!56492 (toList!4323 lm!1477)))))

(declare-fun lt!1696003 () Unit!94720)

(assert (=> d!1391525 (= lt!1696003 (choose!29486 (toList!4323 lm!1477) lambda!172021 (h!56492 (toList!4323 lm!1477))))))

(declare-fun e!2815038 () Bool)

(assert (=> d!1391525 e!2815038))

(declare-fun res!1880333 () Bool)

(assert (=> d!1391525 (=> (not res!1880333) (not e!2815038))))

(assert (=> d!1391525 (= res!1880333 (forall!10257 (toList!4323 lm!1477) lambda!172021))))

(assert (=> d!1391525 (= (forallContained!2509 (toList!4323 lm!1477) lambda!172021 (h!56492 (toList!4323 lm!1477))) lt!1696003)))

(declare-fun b!4518401 () Bool)

(assert (=> b!4518401 (= e!2815038 (contains!13363 (toList!4323 lm!1477) (h!56492 (toList!4323 lm!1477))))))

(assert (= (and d!1391525 res!1880333) b!4518401))

(declare-fun b_lambda!154669 () Bool)

(assert (=> (not b_lambda!154669) (not d!1391525)))

(assert (=> d!1391525 m!5264847))

(declare-fun m!5264911 () Bool)

(assert (=> d!1391525 m!5264911))

(assert (=> d!1391525 m!5264171))

(declare-fun m!5264913 () Bool)

(assert (=> b!4518401 m!5264913))

(assert (=> b!4518040 d!1391525))

(declare-fun b!4518402 () Bool)

(declare-fun e!2815044 () Bool)

(assert (=> b!4518402 (= e!2815044 (not (contains!13364 (keys!17589 lt!1695582) key!3287)))))

(declare-fun d!1391527 () Bool)

(declare-fun e!2815041 () Bool)

(assert (=> d!1391527 e!2815041))

(declare-fun res!1880334 () Bool)

(assert (=> d!1391527 (=> res!1880334 e!2815041)))

(assert (=> d!1391527 (= res!1880334 e!2815044)))

(declare-fun res!1880336 () Bool)

(assert (=> d!1391527 (=> (not res!1880336) (not e!2815044))))

(declare-fun lt!1696010 () Bool)

(assert (=> d!1391527 (= res!1880336 (not lt!1696010))))

(declare-fun lt!1696006 () Bool)

(assert (=> d!1391527 (= lt!1696010 lt!1696006)))

(declare-fun lt!1696004 () Unit!94720)

(declare-fun e!2815042 () Unit!94720)

(assert (=> d!1391527 (= lt!1696004 e!2815042)))

(declare-fun c!771000 () Bool)

(assert (=> d!1391527 (= c!771000 lt!1696006)))

(assert (=> d!1391527 (= lt!1696006 (containsKey!1775 (toList!4324 lt!1695582) key!3287))))

(assert (=> d!1391527 (= (contains!13361 lt!1695582 key!3287) lt!1696010)))

(declare-fun b!4518403 () Bool)

(declare-fun e!2815043 () List!50766)

(assert (=> b!4518403 (= e!2815043 (keys!17589 lt!1695582))))

(declare-fun b!4518404 () Bool)

(declare-fun lt!1696008 () Unit!94720)

(assert (=> b!4518404 (= e!2815042 lt!1696008)))

(declare-fun lt!1696011 () Unit!94720)

(assert (=> b!4518404 (= lt!1696011 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695582) key!3287))))

(assert (=> b!4518404 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695582) key!3287))))

(declare-fun lt!1696005 () Unit!94720)

(assert (=> b!4518404 (= lt!1696005 lt!1696011)))

(assert (=> b!4518404 (= lt!1696008 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695582) key!3287))))

(declare-fun call!314765 () Bool)

(assert (=> b!4518404 call!314765))

(declare-fun b!4518405 () Bool)

(declare-fun e!2815039 () Bool)

(assert (=> b!4518405 (= e!2815041 e!2815039)))

(declare-fun res!1880335 () Bool)

(assert (=> b!4518405 (=> (not res!1880335) (not e!2815039))))

(assert (=> b!4518405 (= res!1880335 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695582) key!3287)))))

(declare-fun b!4518406 () Bool)

(assert (=> b!4518406 (= e!2815043 (getKeysList!462 (toList!4324 lt!1695582)))))

(declare-fun b!4518407 () Bool)

(declare-fun e!2815040 () Unit!94720)

(declare-fun Unit!94771 () Unit!94720)

(assert (=> b!4518407 (= e!2815040 Unit!94771)))

(declare-fun b!4518408 () Bool)

(assert (=> b!4518408 false))

(declare-fun lt!1696007 () Unit!94720)

(declare-fun lt!1696009 () Unit!94720)

(assert (=> b!4518408 (= lt!1696007 lt!1696009)))

(assert (=> b!4518408 (containsKey!1775 (toList!4324 lt!1695582) key!3287)))

(assert (=> b!4518408 (= lt!1696009 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695582) key!3287))))

(declare-fun Unit!94772 () Unit!94720)

(assert (=> b!4518408 (= e!2815040 Unit!94772)))

(declare-fun bm!314760 () Bool)

(assert (=> bm!314760 (= call!314765 (contains!13364 e!2815043 key!3287))))

(declare-fun c!770998 () Bool)

(assert (=> bm!314760 (= c!770998 c!771000)))

(declare-fun b!4518409 () Bool)

(assert (=> b!4518409 (= e!2815039 (contains!13364 (keys!17589 lt!1695582) key!3287))))

(declare-fun b!4518410 () Bool)

(assert (=> b!4518410 (= e!2815042 e!2815040)))

(declare-fun c!770999 () Bool)

(assert (=> b!4518410 (= c!770999 call!314765)))

(assert (= (and d!1391527 c!771000) b!4518404))

(assert (= (and d!1391527 (not c!771000)) b!4518410))

(assert (= (and b!4518410 c!770999) b!4518408))

(assert (= (and b!4518410 (not c!770999)) b!4518407))

(assert (= (or b!4518404 b!4518410) bm!314760))

(assert (= (and bm!314760 c!770998) b!4518406))

(assert (= (and bm!314760 (not c!770998)) b!4518403))

(assert (= (and d!1391527 res!1880336) b!4518402))

(assert (= (and d!1391527 (not res!1880334)) b!4518405))

(assert (= (and b!4518405 res!1880335) b!4518409))

(declare-fun m!5264915 () Bool)

(assert (=> b!4518403 m!5264915))

(declare-fun m!5264917 () Bool)

(assert (=> b!4518404 m!5264917))

(declare-fun m!5264919 () Bool)

(assert (=> b!4518404 m!5264919))

(assert (=> b!4518404 m!5264919))

(declare-fun m!5264921 () Bool)

(assert (=> b!4518404 m!5264921))

(declare-fun m!5264923 () Bool)

(assert (=> b!4518404 m!5264923))

(declare-fun m!5264925 () Bool)

(assert (=> b!4518406 m!5264925))

(assert (=> b!4518405 m!5264919))

(assert (=> b!4518405 m!5264919))

(assert (=> b!4518405 m!5264921))

(declare-fun m!5264927 () Bool)

(assert (=> b!4518408 m!5264927))

(declare-fun m!5264929 () Bool)

(assert (=> b!4518408 m!5264929))

(declare-fun m!5264931 () Bool)

(assert (=> bm!314760 m!5264931))

(assert (=> b!4518409 m!5264915))

(assert (=> b!4518409 m!5264915))

(declare-fun m!5264933 () Bool)

(assert (=> b!4518409 m!5264933))

(assert (=> d!1391527 m!5264927))

(assert (=> b!4518402 m!5264915))

(assert (=> b!4518402 m!5264915))

(assert (=> b!4518402 m!5264933))

(assert (=> b!4518039 d!1391527))

(declare-fun bs!853785 () Bool)

(declare-fun d!1391529 () Bool)

(assert (= bs!853785 (and d!1391529 d!1391343)))

(declare-fun lambda!172151 () Int)

(assert (=> bs!853785 (= lambda!172151 lambda!172028)))

(declare-fun bs!853786 () Bool)

(assert (= bs!853786 (and d!1391529 d!1391495)))

(assert (=> bs!853786 (= lambda!172151 lambda!172139)))

(declare-fun bs!853787 () Bool)

(assert (= bs!853787 (and d!1391529 d!1391353)))

(assert (=> bs!853787 (= lambda!172151 lambda!172033)))

(declare-fun bs!853788 () Bool)

(assert (= bs!853788 (and d!1391529 d!1391515)))

(assert (=> bs!853788 (= lambda!172151 lambda!172150)))

(declare-fun bs!853789 () Bool)

(assert (= bs!853789 (and d!1391529 start!447216)))

(assert (=> bs!853789 (= lambda!172151 lambda!172021)))

(declare-fun bs!853790 () Bool)

(assert (= bs!853790 (and d!1391529 d!1391355)))

(assert (=> bs!853790 (= lambda!172151 lambda!172050)))

(declare-fun bs!853791 () Bool)

(assert (= bs!853791 (and d!1391529 d!1391477)))

(assert (=> bs!853791 (= lambda!172151 lambda!172136)))

(declare-fun bs!853792 () Bool)

(assert (= bs!853792 (and d!1391529 d!1391335)))

(assert (=> bs!853792 (= lambda!172151 lambda!172027)))

(declare-fun bs!853793 () Bool)

(assert (= bs!853793 (and d!1391529 d!1391351)))

(assert (=> bs!853793 (= lambda!172151 lambda!172032)))

(declare-fun bs!853794 () Bool)

(assert (= bs!853794 (and d!1391529 d!1391449)))

(assert (=> bs!853794 (= lambda!172151 lambda!172124)))

(declare-fun bs!853795 () Bool)

(assert (= bs!853795 (and d!1391529 d!1391347)))

(assert (=> bs!853795 (not (= lambda!172151 lambda!172031))))

(declare-fun bs!853796 () Bool)

(assert (= bs!853796 (and d!1391529 d!1391331)))

(assert (=> bs!853796 (= lambda!172151 lambda!172024)))

(declare-fun lt!1696012 () ListMap!3585)

(assert (=> d!1391529 (invariantList!1015 (toList!4324 lt!1696012))))

(declare-fun e!2815045 () ListMap!3585)

(assert (=> d!1391529 (= lt!1696012 e!2815045)))

(declare-fun c!771001 () Bool)

(assert (=> d!1391529 (= c!771001 ((_ is Cons!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391529 (forall!10257 (toList!4323 lm!1477) lambda!172151)))

(assert (=> d!1391529 (= (extractMap!1214 (toList!4323 lm!1477)) lt!1696012)))

(declare-fun b!4518411 () Bool)

(assert (=> b!4518411 (= e!2815045 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lm!1477))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(declare-fun b!4518412 () Bool)

(assert (=> b!4518412 (= e!2815045 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391529 c!771001) b!4518411))

(assert (= (and d!1391529 (not c!771001)) b!4518412))

(declare-fun m!5264935 () Bool)

(assert (=> d!1391529 m!5264935))

(declare-fun m!5264937 () Bool)

(assert (=> d!1391529 m!5264937))

(assert (=> b!4518411 m!5264149))

(assert (=> b!4518411 m!5264149))

(declare-fun m!5264939 () Bool)

(assert (=> b!4518411 m!5264939))

(assert (=> b!4518039 d!1391529))

(declare-fun b!4518417 () Bool)

(declare-fun e!2815048 () Bool)

(declare-fun tp!1338057 () Bool)

(declare-fun tp!1338058 () Bool)

(assert (=> b!4518417 (= e!2815048 (and tp!1338057 tp!1338058))))

(assert (=> b!4518027 (= tp!1338043 e!2815048)))

(assert (= (and b!4518027 ((_ is Cons!50641) (toList!4323 lm!1477))) b!4518417))

(declare-fun tp!1338061 () Bool)

(declare-fun e!2815051 () Bool)

(declare-fun b!4518422 () Bool)

(assert (=> b!4518422 (= e!2815051 (and tp_is_empty!27909 tp_is_empty!27911 tp!1338061))))

(assert (=> b!4518035 (= tp!1338042 e!2815051)))

(assert (= (and b!4518035 ((_ is Cons!50640) (t!357726 newBucket!178))) b!4518422))

(declare-fun b_lambda!154671 () Bool)

(assert (= b_lambda!154659 (or start!447216 b_lambda!154671)))

(declare-fun bs!853797 () Bool)

(declare-fun d!1391531 () Bool)

(assert (= bs!853797 (and d!1391531 start!447216)))

(assert (=> bs!853797 (= (dynLambda!21159 lambda!172021 lt!1695598) (noDuplicateKeys!1158 (_2!28828 lt!1695598)))))

(declare-fun m!5264941 () Bool)

(assert (=> bs!853797 m!5264941))

(assert (=> d!1391475 d!1391531))

(declare-fun b_lambda!154673 () Bool)

(assert (= b_lambda!154669 (or start!447216 b_lambda!154673)))

(declare-fun bs!853798 () Bool)

(declare-fun d!1391533 () Bool)

(assert (= bs!853798 (and d!1391533 start!447216)))

(assert (=> bs!853798 (= (dynLambda!21159 lambda!172021 (h!56492 (toList!4323 lm!1477))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(declare-fun m!5264943 () Bool)

(assert (=> bs!853798 m!5264943))

(assert (=> d!1391525 d!1391533))

(declare-fun b_lambda!154675 () Bool)

(assert (= b_lambda!154661 (or start!447216 b_lambda!154675)))

(assert (=> b!4518374 d!1391533))

(check-sat (not b!4518103) (not b!4518402) (not bm!314746) (not b!4518400) (not b!4518113) (not d!1391329) (not d!1391337) (not b!4518327) (not b!4518098) (not d!1391497) (not b!4518409) (not b!4518401) (not b!4518411) (not d!1391355) (not d!1391447) (not b!4518057) (not b!4518329) (not b_lambda!154671) (not b!4518360) (not d!1391525) (not b!4518417) (not b!4518068) (not d!1391363) (not d!1391351) (not b!4518114) (not b!4518129) (not d!1391331) (not b!4518285) (not bs!853798) (not b!4518100) (not b!4518362) (not b!4518070) (not b!4518241) (not b!4518363) (not d!1391469) (not b!4518404) (not b!4518115) (not b!4518340) (not b!4518383) (not d!1391335) (not b!4518408) (not b!4518406) (not b!4518386) (not d!1391475) (not b!4518071) (not d!1391511) (not d!1391515) (not bm!314758) (not d!1391449) (not bm!314747) (not d!1391499) (not b!4518244) (not b!4518094) tp_is_empty!27909 (not b_lambda!154675) (not d!1391365) (not b!4518054) (not b!4518063) (not b!4518387) (not d!1391441) (not b!4518105) (not b!4518118) (not b!4518422) (not d!1391495) (not bm!314759) (not b!4518243) tp_is_empty!27911 (not d!1391435) (not d!1391443) (not bm!314760) (not b!4518097) (not b!4518326) (not d!1391343) (not d!1391467) (not d!1391477) (not b!4518127) (not b!4518381) (not d!1391513) (not d!1391527) (not b!4518271) (not b!4518096) (not d!1391359) (not b!4518288) (not b!4518324) (not d!1391333) (not bs!853797) (not b!4518405) (not d!1391339) (not b_lambda!154673) (not b!4518273) (not d!1391367) (not d!1391507) (not d!1391341) (not d!1391323) (not d!1391345) (not d!1391433) (not d!1391473) (not d!1391503) (not b!4518117) (not b!4518399) (not d!1391529) (not b!4518385) (not b!4518286) (not b!4518101) (not bm!314757) (not bm!314730) (not d!1391459) (not d!1391471) (not d!1391357) (not b!4518095) (not b!4518072) (not b!4518240) (not b!4518344) (not b!4518112) (not b!4518062) (not b!4518287) (not d!1391347) (not b!4518375) (not b!4518365) (not d!1391327) (not b!4518111) (not bm!314729) (not d!1391437) (not bm!314748) (not b!4518380) (not d!1391353) (not d!1391349) (not b!4518403) (not b!4518382))
(check-sat)
(get-model)

(declare-fun d!1391535 () Bool)

(declare-fun res!1880337 () Bool)

(declare-fun e!2815052 () Bool)

(assert (=> d!1391535 (=> res!1880337 e!2815052)))

(assert (=> d!1391535 (= res!1880337 (not ((_ is Cons!50640) (_2!28828 lt!1695598))))))

(assert (=> d!1391535 (= (noDuplicateKeys!1158 (_2!28828 lt!1695598)) e!2815052)))

(declare-fun b!4518423 () Bool)

(declare-fun e!2815053 () Bool)

(assert (=> b!4518423 (= e!2815052 e!2815053)))

(declare-fun res!1880338 () Bool)

(assert (=> b!4518423 (=> (not res!1880338) (not e!2815053))))

(assert (=> b!4518423 (= res!1880338 (not (containsKey!1774 (t!357726 (_2!28828 lt!1695598)) (_1!28827 (h!56491 (_2!28828 lt!1695598))))))))

(declare-fun b!4518424 () Bool)

(assert (=> b!4518424 (= e!2815053 (noDuplicateKeys!1158 (t!357726 (_2!28828 lt!1695598))))))

(assert (= (and d!1391535 (not res!1880337)) b!4518423))

(assert (= (and b!4518423 res!1880338) b!4518424))

(declare-fun m!5264945 () Bool)

(assert (=> b!4518423 m!5264945))

(declare-fun m!5264947 () Bool)

(assert (=> b!4518424 m!5264947))

(assert (=> bs!853797 d!1391535))

(declare-fun bs!853799 () Bool)

(declare-fun b!4518427 () Bool)

(assert (= bs!853799 (and b!4518427 d!1391499)))

(declare-fun lambda!172152 () Int)

(assert (=> bs!853799 (not (= lambda!172152 lambda!172142))))

(declare-fun bs!853800 () Bool)

(assert (= bs!853800 (and b!4518427 b!4518382)))

(assert (=> bs!853800 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695590) (= lambda!172152 lambda!172144))))

(declare-fun bs!853801 () Bool)

(assert (= bs!853801 (and b!4518427 b!4518240)))

(assert (=> bs!853801 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695841) (= lambda!172152 lambda!172116))))

(declare-fun bs!853802 () Bool)

(assert (= bs!853802 (and b!4518427 d!1391513)))

(assert (=> bs!853802 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695980) (= lambda!172152 lambda!172146))))

(declare-fun bs!853803 () Bool)

(assert (= bs!853803 (and b!4518427 b!4518242)))

(assert (=> bs!853803 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695572) (= lambda!172152 lambda!172114))))

(declare-fun bs!853804 () Bool)

(assert (= bs!853804 (and b!4518427 d!1391367)))

(assert (=> bs!853804 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695839) (= lambda!172152 lambda!172119))))

(declare-fun bs!853805 () Bool)

(assert (= bs!853805 (and b!4518427 b!4518384)))

(assert (=> bs!853805 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695590) (= lambda!172152 lambda!172143))))

(assert (=> bs!853801 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695572) (= lambda!172152 lambda!172115))))

(assert (=> bs!853800 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695982) (= lambda!172152 lambda!172145))))

(assert (=> b!4518427 true))

(declare-fun bs!853806 () Bool)

(declare-fun b!4518425 () Bool)

(assert (= bs!853806 (and b!4518425 d!1391499)))

(declare-fun lambda!172153 () Int)

(assert (=> bs!853806 (not (= lambda!172153 lambda!172142))))

(declare-fun bs!853807 () Bool)

(assert (= bs!853807 (and b!4518425 b!4518382)))

(assert (=> bs!853807 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695590) (= lambda!172153 lambda!172144))))

(declare-fun bs!853808 () Bool)

(assert (= bs!853808 (and b!4518425 b!4518240)))

(assert (=> bs!853808 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695841) (= lambda!172153 lambda!172116))))

(declare-fun bs!853809 () Bool)

(assert (= bs!853809 (and b!4518425 d!1391513)))

(assert (=> bs!853809 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695980) (= lambda!172153 lambda!172146))))

(declare-fun bs!853810 () Bool)

(assert (= bs!853810 (and b!4518425 b!4518427)))

(assert (=> bs!853810 (= lambda!172153 lambda!172152)))

(declare-fun bs!853811 () Bool)

(assert (= bs!853811 (and b!4518425 b!4518242)))

(assert (=> bs!853811 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695572) (= lambda!172153 lambda!172114))))

(declare-fun bs!853812 () Bool)

(assert (= bs!853812 (and b!4518425 d!1391367)))

(assert (=> bs!853812 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695839) (= lambda!172153 lambda!172119))))

(declare-fun bs!853813 () Bool)

(assert (= bs!853813 (and b!4518425 b!4518384)))

(assert (=> bs!853813 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695590) (= lambda!172153 lambda!172143))))

(assert (=> bs!853808 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695572) (= lambda!172153 lambda!172115))))

(assert (=> bs!853807 (= (= (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1695982) (= lambda!172153 lambda!172145))))

(assert (=> b!4518425 true))

(declare-fun lambda!172154 () Int)

(assert (=> bs!853806 (not (= lambda!172154 lambda!172142))))

(declare-fun lt!1696017 () ListMap!3585)

(assert (=> bs!853807 (= (= lt!1696017 lt!1695590) (= lambda!172154 lambda!172144))))

(assert (=> bs!853808 (= (= lt!1696017 lt!1695841) (= lambda!172154 lambda!172116))))

(assert (=> bs!853809 (= (= lt!1696017 lt!1695980) (= lambda!172154 lambda!172146))))

(assert (=> bs!853810 (= (= lt!1696017 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172154 lambda!172152))))

(assert (=> bs!853811 (= (= lt!1696017 lt!1695572) (= lambda!172154 lambda!172114))))

(assert (=> bs!853812 (= (= lt!1696017 lt!1695839) (= lambda!172154 lambda!172119))))

(assert (=> bs!853813 (= (= lt!1696017 lt!1695590) (= lambda!172154 lambda!172143))))

(assert (=> bs!853808 (= (= lt!1696017 lt!1695572) (= lambda!172154 lambda!172115))))

(assert (=> b!4518425 (= (= lt!1696017 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172154 lambda!172153))))

(assert (=> bs!853807 (= (= lt!1696017 lt!1695982) (= lambda!172154 lambda!172145))))

(assert (=> b!4518425 true))

(declare-fun bs!853814 () Bool)

(declare-fun d!1391537 () Bool)

(assert (= bs!853814 (and d!1391537 d!1391499)))

(declare-fun lambda!172155 () Int)

(assert (=> bs!853814 (not (= lambda!172155 lambda!172142))))

(declare-fun bs!853815 () Bool)

(assert (= bs!853815 (and d!1391537 b!4518382)))

(declare-fun lt!1696015 () ListMap!3585)

(assert (=> bs!853815 (= (= lt!1696015 lt!1695590) (= lambda!172155 lambda!172144))))

(declare-fun bs!853816 () Bool)

(assert (= bs!853816 (and d!1391537 b!4518240)))

(assert (=> bs!853816 (= (= lt!1696015 lt!1695841) (= lambda!172155 lambda!172116))))

(declare-fun bs!853817 () Bool)

(assert (= bs!853817 (and d!1391537 d!1391513)))

(assert (=> bs!853817 (= (= lt!1696015 lt!1695980) (= lambda!172155 lambda!172146))))

(declare-fun bs!853818 () Bool)

(assert (= bs!853818 (and d!1391537 b!4518427)))

(assert (=> bs!853818 (= (= lt!1696015 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172155 lambda!172152))))

(declare-fun bs!853819 () Bool)

(assert (= bs!853819 (and d!1391537 b!4518242)))

(assert (=> bs!853819 (= (= lt!1696015 lt!1695572) (= lambda!172155 lambda!172114))))

(declare-fun bs!853820 () Bool)

(assert (= bs!853820 (and d!1391537 d!1391367)))

(assert (=> bs!853820 (= (= lt!1696015 lt!1695839) (= lambda!172155 lambda!172119))))

(declare-fun bs!853821 () Bool)

(assert (= bs!853821 (and d!1391537 b!4518384)))

(assert (=> bs!853821 (= (= lt!1696015 lt!1695590) (= lambda!172155 lambda!172143))))

(declare-fun bs!853822 () Bool)

(assert (= bs!853822 (and d!1391537 b!4518425)))

(assert (=> bs!853822 (= (= lt!1696015 lt!1696017) (= lambda!172155 lambda!172154))))

(assert (=> bs!853816 (= (= lt!1696015 lt!1695572) (= lambda!172155 lambda!172115))))

(assert (=> bs!853822 (= (= lt!1696015 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172155 lambda!172153))))

(assert (=> bs!853815 (= (= lt!1696015 lt!1695982) (= lambda!172155 lambda!172145))))

(assert (=> d!1391537 true))

(declare-fun e!2815054 () ListMap!3585)

(assert (=> b!4518425 (= e!2815054 lt!1696017)))

(declare-fun lt!1696032 () ListMap!3585)

(assert (=> b!4518425 (= lt!1696032 (+!1536 (extractMap!1214 (t!357727 (toList!4323 lm!1477))) (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477))))))))

(assert (=> b!4518425 (= lt!1696017 (addToMapMapFromBucket!685 (t!357726 (_2!28828 (h!56492 (toList!4323 lm!1477)))) (+!1536 (extractMap!1214 (t!357727 (toList!4323 lm!1477))) (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))))

(declare-fun lt!1696013 () Unit!94720)

(declare-fun call!314768 () Unit!94720)

(assert (=> b!4518425 (= lt!1696013 call!314768)))

(assert (=> b!4518425 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172153)))

(declare-fun lt!1696024 () Unit!94720)

(assert (=> b!4518425 (= lt!1696024 lt!1696013)))

(declare-fun call!314767 () Bool)

(assert (=> b!4518425 call!314767))

(declare-fun lt!1696029 () Unit!94720)

(declare-fun Unit!94784 () Unit!94720)

(assert (=> b!4518425 (= lt!1696029 Unit!94784)))

(declare-fun call!314766 () Bool)

(assert (=> b!4518425 call!314766))

(declare-fun lt!1696023 () Unit!94720)

(declare-fun Unit!94785 () Unit!94720)

(assert (=> b!4518425 (= lt!1696023 Unit!94785)))

(declare-fun lt!1696016 () Unit!94720)

(declare-fun Unit!94786 () Unit!94720)

(assert (=> b!4518425 (= lt!1696016 Unit!94786)))

(declare-fun lt!1696025 () Unit!94720)

(assert (=> b!4518425 (= lt!1696025 (forallContained!2511 (toList!4324 lt!1696032) lambda!172154 (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477))))))))

(assert (=> b!4518425 (contains!13361 lt!1696032 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477))))))))

(declare-fun lt!1696033 () Unit!94720)

(declare-fun Unit!94787 () Unit!94720)

(assert (=> b!4518425 (= lt!1696033 Unit!94787)))

(assert (=> b!4518425 (contains!13361 lt!1696017 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477))))))))

(declare-fun lt!1696022 () Unit!94720)

(declare-fun Unit!94788 () Unit!94720)

(assert (=> b!4518425 (= lt!1696022 Unit!94788)))

(assert (=> b!4518425 (forall!10259 (_2!28828 (h!56492 (toList!4323 lm!1477))) lambda!172154)))

(declare-fun lt!1696030 () Unit!94720)

(declare-fun Unit!94789 () Unit!94720)

(assert (=> b!4518425 (= lt!1696030 Unit!94789)))

(assert (=> b!4518425 (forall!10259 (toList!4324 lt!1696032) lambda!172154)))

(declare-fun lt!1696027 () Unit!94720)

(declare-fun Unit!94790 () Unit!94720)

(assert (=> b!4518425 (= lt!1696027 Unit!94790)))

(declare-fun lt!1696020 () Unit!94720)

(declare-fun Unit!94791 () Unit!94720)

(assert (=> b!4518425 (= lt!1696020 Unit!94791)))

(declare-fun lt!1696028 () Unit!94720)

(assert (=> b!4518425 (= lt!1696028 (addForallContainsKeyThenBeforeAdding!336 (extractMap!1214 (t!357727 (toList!4323 lm!1477))) lt!1696017 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477))))) (_2!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))))

(assert (=> b!4518425 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172154)))

(declare-fun lt!1696031 () Unit!94720)

(assert (=> b!4518425 (= lt!1696031 lt!1696028)))

(assert (=> b!4518425 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172154)))

(declare-fun lt!1696019 () Unit!94720)

(declare-fun Unit!94792 () Unit!94720)

(assert (=> b!4518425 (= lt!1696019 Unit!94792)))

(declare-fun res!1880340 () Bool)

(assert (=> b!4518425 (= res!1880340 (forall!10259 (_2!28828 (h!56492 (toList!4323 lm!1477))) lambda!172154))))

(declare-fun e!2815055 () Bool)

(assert (=> b!4518425 (=> (not res!1880340) (not e!2815055))))

(assert (=> b!4518425 e!2815055))

(declare-fun lt!1696018 () Unit!94720)

(declare-fun Unit!94793 () Unit!94720)

(assert (=> b!4518425 (= lt!1696018 Unit!94793)))

(declare-fun b!4518426 () Bool)

(declare-fun e!2815056 () Bool)

(assert (=> b!4518426 (= e!2815056 (invariantList!1015 (toList!4324 lt!1696015)))))

(declare-fun bm!314761 () Bool)

(declare-fun c!771002 () Bool)

(assert (=> bm!314761 (= call!314766 (forall!10259 (ite c!771002 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (t!357726 (_2!28828 (h!56492 (toList!4323 lm!1477))))) (ite c!771002 lambda!172152 lambda!172154)))))

(assert (=> b!4518427 (= e!2815054 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))

(declare-fun lt!1696021 () Unit!94720)

(assert (=> b!4518427 (= lt!1696021 call!314768)))

(assert (=> b!4518427 call!314766))

(declare-fun lt!1696026 () Unit!94720)

(assert (=> b!4518427 (= lt!1696026 lt!1696021)))

(assert (=> b!4518427 call!314767))

(declare-fun lt!1696014 () Unit!94720)

(declare-fun Unit!94794 () Unit!94720)

(assert (=> b!4518427 (= lt!1696014 Unit!94794)))

(assert (=> d!1391537 e!2815056))

(declare-fun res!1880339 () Bool)

(assert (=> d!1391537 (=> (not res!1880339) (not e!2815056))))

(assert (=> d!1391537 (= res!1880339 (forall!10259 (_2!28828 (h!56492 (toList!4323 lm!1477))) lambda!172155))))

(assert (=> d!1391537 (= lt!1696015 e!2815054)))

(assert (=> d!1391537 (= c!771002 ((_ is Nil!50640) (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(assert (=> d!1391537 (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lm!1477))))))

(assert (=> d!1391537 (= (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lm!1477))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lt!1696015)))

(declare-fun b!4518428 () Bool)

(declare-fun res!1880341 () Bool)

(assert (=> b!4518428 (=> (not res!1880341) (not e!2815056))))

(assert (=> b!4518428 (= res!1880341 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172155))))

(declare-fun b!4518429 () Bool)

(assert (=> b!4518429 (= e!2815055 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172154))))

(declare-fun bm!314762 () Bool)

(assert (=> bm!314762 (= call!314767 (forall!10259 (ite c!771002 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (toList!4324 lt!1696032)) (ite c!771002 lambda!172152 lambda!172154)))))

(declare-fun bm!314763 () Bool)

(assert (=> bm!314763 (= call!314768 (lemmaContainsAllItsOwnKeys!336 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(assert (= (and d!1391537 c!771002) b!4518427))

(assert (= (and d!1391537 (not c!771002)) b!4518425))

(assert (= (and b!4518425 res!1880340) b!4518429))

(assert (= (or b!4518427 b!4518425) bm!314761))

(assert (= (or b!4518427 b!4518425) bm!314762))

(assert (= (or b!4518427 b!4518425) bm!314763))

(assert (= (and d!1391537 res!1880339) b!4518428))

(assert (= (and b!4518428 res!1880341) b!4518426))

(declare-fun m!5264949 () Bool)

(assert (=> bm!314761 m!5264949))

(assert (=> bm!314763 m!5264149))

(declare-fun m!5264951 () Bool)

(assert (=> bm!314763 m!5264951))

(declare-fun m!5264953 () Bool)

(assert (=> b!4518429 m!5264953))

(declare-fun m!5264955 () Bool)

(assert (=> b!4518425 m!5264955))

(declare-fun m!5264957 () Bool)

(assert (=> b!4518425 m!5264957))

(assert (=> b!4518425 m!5264953))

(assert (=> b!4518425 m!5264149))

(assert (=> b!4518425 m!5264955))

(assert (=> b!4518425 m!5264953))

(declare-fun m!5264959 () Bool)

(assert (=> b!4518425 m!5264959))

(declare-fun m!5264961 () Bool)

(assert (=> b!4518425 m!5264961))

(declare-fun m!5264963 () Bool)

(assert (=> b!4518425 m!5264963))

(declare-fun m!5264965 () Bool)

(assert (=> b!4518425 m!5264965))

(assert (=> b!4518425 m!5264149))

(declare-fun m!5264967 () Bool)

(assert (=> b!4518425 m!5264967))

(declare-fun m!5264969 () Bool)

(assert (=> b!4518425 m!5264969))

(assert (=> b!4518425 m!5264963))

(declare-fun m!5264971 () Bool)

(assert (=> b!4518425 m!5264971))

(declare-fun m!5264973 () Bool)

(assert (=> d!1391537 m!5264973))

(assert (=> d!1391537 m!5264943))

(declare-fun m!5264975 () Bool)

(assert (=> bm!314762 m!5264975))

(declare-fun m!5264977 () Bool)

(assert (=> b!4518428 m!5264977))

(declare-fun m!5264979 () Bool)

(assert (=> b!4518426 m!5264979))

(assert (=> b!4518411 d!1391537))

(assert (=> b!4518411 d!1391351))

(declare-fun b!4518437 () Bool)

(assert (=> b!4518437 true))

(declare-fun d!1391539 () Bool)

(declare-fun e!2815059 () Bool)

(assert (=> d!1391539 e!2815059))

(declare-fun res!1880349 () Bool)

(assert (=> d!1391539 (=> (not res!1880349) (not e!2815059))))

(declare-fun lt!1696036 () List!50766)

(declare-fun noDuplicate!745 (List!50766) Bool)

(assert (=> d!1391539 (= res!1880349 (noDuplicate!745 lt!1696036))))

(assert (=> d!1391539 (= lt!1696036 (getKeysList!462 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))

(assert (=> d!1391539 (= (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lt!1696036)))

(declare-fun b!4518436 () Bool)

(declare-fun res!1880348 () Bool)

(assert (=> b!4518436 (=> (not res!1880348) (not e!2815059))))

(declare-fun length!346 (List!50766) Int)

(declare-fun length!347 (List!50764) Int)

(assert (=> b!4518436 (= res!1880348 (= (length!346 lt!1696036) (length!347 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))))

(declare-fun res!1880350 () Bool)

(assert (=> b!4518437 (=> (not res!1880350) (not e!2815059))))

(declare-fun lambda!172160 () Int)

(declare-fun forall!10260 (List!50766 Int) Bool)

(assert (=> b!4518437 (= res!1880350 (forall!10260 lt!1696036 lambda!172160))))

(declare-fun b!4518438 () Bool)

(declare-fun lambda!172161 () Int)

(declare-fun map!11135 (List!50764 Int) List!50766)

(assert (=> b!4518438 (= e!2815059 (= (content!8349 lt!1696036) (content!8349 (map!11135 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172161))))))

(assert (= (and d!1391539 res!1880349) b!4518436))

(assert (= (and b!4518436 res!1880348) b!4518437))

(assert (= (and b!4518437 res!1880350) b!4518438))

(declare-fun m!5264981 () Bool)

(assert (=> d!1391539 m!5264981))

(assert (=> d!1391539 m!5264297))

(declare-fun m!5264983 () Bool)

(assert (=> b!4518436 m!5264983))

(declare-fun m!5264985 () Bool)

(assert (=> b!4518436 m!5264985))

(declare-fun m!5264987 () Bool)

(assert (=> b!4518437 m!5264987))

(declare-fun m!5264989 () Bool)

(assert (=> b!4518438 m!5264989))

(declare-fun m!5264991 () Bool)

(assert (=> b!4518438 m!5264991))

(assert (=> b!4518438 m!5264991))

(declare-fun m!5264993 () Bool)

(assert (=> b!4518438 m!5264993))

(assert (=> b!4518095 d!1391539))

(declare-fun d!1391541 () Bool)

(declare-fun noDuplicatedKeys!260 (List!50764) Bool)

(assert (=> d!1391541 (= (invariantList!1015 (toList!4324 lt!1695839)) (noDuplicatedKeys!260 (toList!4324 lt!1695839)))))

(declare-fun bs!853823 () Bool)

(assert (= bs!853823 d!1391541))

(declare-fun m!5264995 () Bool)

(assert (=> bs!853823 m!5264995))

(assert (=> b!4518241 d!1391541))

(declare-fun d!1391543 () Bool)

(declare-fun res!1880355 () Bool)

(declare-fun e!2815064 () Bool)

(assert (=> d!1391543 (=> res!1880355 e!2815064)))

(assert (=> d!1391543 (= res!1880355 ((_ is Nil!50640) newBucket!178))))

(assert (=> d!1391543 (= (forall!10259 newBucket!178 lambda!172142) e!2815064)))

(declare-fun b!4518445 () Bool)

(declare-fun e!2815065 () Bool)

(assert (=> b!4518445 (= e!2815064 e!2815065)))

(declare-fun res!1880356 () Bool)

(assert (=> b!4518445 (=> (not res!1880356) (not e!2815065))))

(declare-fun dynLambda!21160 (Int tuple2!51066) Bool)

(assert (=> b!4518445 (= res!1880356 (dynLambda!21160 lambda!172142 (h!56491 newBucket!178)))))

(declare-fun b!4518446 () Bool)

(assert (=> b!4518446 (= e!2815065 (forall!10259 (t!357726 newBucket!178) lambda!172142))))

(assert (= (and d!1391543 (not res!1880355)) b!4518445))

(assert (= (and b!4518445 res!1880356) b!4518446))

(declare-fun b_lambda!154677 () Bool)

(assert (=> (not b_lambda!154677) (not b!4518445)))

(declare-fun m!5264997 () Bool)

(assert (=> b!4518445 m!5264997))

(declare-fun m!5264999 () Bool)

(assert (=> b!4518446 m!5264999))

(assert (=> d!1391499 d!1391543))

(declare-fun d!1391545 () Bool)

(declare-fun lt!1696039 () Bool)

(assert (=> d!1391545 (= lt!1696039 (select (content!8349 e!2814839) key!3287))))

(declare-fun e!2815070 () Bool)

(assert (=> d!1391545 (= lt!1696039 e!2815070)))

(declare-fun res!1880361 () Bool)

(assert (=> d!1391545 (=> (not res!1880361) (not e!2815070))))

(assert (=> d!1391545 (= res!1880361 ((_ is Cons!50642) e!2814839))))

(assert (=> d!1391545 (= (contains!13364 e!2814839 key!3287) lt!1696039)))

(declare-fun b!4518451 () Bool)

(declare-fun e!2815071 () Bool)

(assert (=> b!4518451 (= e!2815070 e!2815071)))

(declare-fun res!1880362 () Bool)

(assert (=> b!4518451 (=> res!1880362 e!2815071)))

(assert (=> b!4518451 (= res!1880362 (= (h!56495 e!2814839) key!3287))))

(declare-fun b!4518452 () Bool)

(assert (=> b!4518452 (= e!2815071 (contains!13364 (t!357728 e!2814839) key!3287))))

(assert (= (and d!1391545 res!1880361) b!4518451))

(assert (= (and b!4518451 (not res!1880362)) b!4518452))

(declare-fun m!5265001 () Bool)

(assert (=> d!1391545 m!5265001))

(declare-fun m!5265003 () Bool)

(assert (=> d!1391545 m!5265003))

(declare-fun m!5265005 () Bool)

(assert (=> b!4518452 m!5265005))

(assert (=> bm!314730 d!1391545))

(declare-fun bs!853824 () Bool)

(declare-fun b!4518455 () Bool)

(assert (= bs!853824 (and b!4518455 d!1391499)))

(declare-fun lambda!172162 () Int)

(assert (=> bs!853824 (not (= lambda!172162 lambda!172142))))

(declare-fun bs!853825 () Bool)

(assert (= bs!853825 (and b!4518455 d!1391537)))

(assert (=> bs!853825 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1696015) (= lambda!172162 lambda!172155))))

(declare-fun bs!853826 () Bool)

(assert (= bs!853826 (and b!4518455 b!4518382)))

(assert (=> bs!853826 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695590) (= lambda!172162 lambda!172144))))

(declare-fun bs!853827 () Bool)

(assert (= bs!853827 (and b!4518455 b!4518240)))

(assert (=> bs!853827 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695841) (= lambda!172162 lambda!172116))))

(declare-fun bs!853828 () Bool)

(assert (= bs!853828 (and b!4518455 d!1391513)))

(assert (=> bs!853828 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695980) (= lambda!172162 lambda!172146))))

(declare-fun bs!853829 () Bool)

(assert (= bs!853829 (and b!4518455 b!4518427)))

(assert (=> bs!853829 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172162 lambda!172152))))

(declare-fun bs!853830 () Bool)

(assert (= bs!853830 (and b!4518455 b!4518242)))

(assert (=> bs!853830 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695572) (= lambda!172162 lambda!172114))))

(declare-fun bs!853831 () Bool)

(assert (= bs!853831 (and b!4518455 d!1391367)))

(assert (=> bs!853831 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695839) (= lambda!172162 lambda!172119))))

(declare-fun bs!853832 () Bool)

(assert (= bs!853832 (and b!4518455 b!4518384)))

(assert (=> bs!853832 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695590) (= lambda!172162 lambda!172143))))

(declare-fun bs!853833 () Bool)

(assert (= bs!853833 (and b!4518455 b!4518425)))

(assert (=> bs!853833 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1696017) (= lambda!172162 lambda!172154))))

(assert (=> bs!853827 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695572) (= lambda!172162 lambda!172115))))

(assert (=> bs!853833 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172162 lambda!172153))))

(assert (=> bs!853826 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695982) (= lambda!172162 lambda!172145))))

(assert (=> b!4518455 true))

(declare-fun bs!853834 () Bool)

(declare-fun b!4518453 () Bool)

(assert (= bs!853834 (and b!4518453 d!1391499)))

(declare-fun lambda!172163 () Int)

(assert (=> bs!853834 (not (= lambda!172163 lambda!172142))))

(declare-fun bs!853835 () Bool)

(assert (= bs!853835 (and b!4518453 d!1391537)))

(assert (=> bs!853835 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1696015) (= lambda!172163 lambda!172155))))

(declare-fun bs!853836 () Bool)

(assert (= bs!853836 (and b!4518453 b!4518382)))

(assert (=> bs!853836 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695590) (= lambda!172163 lambda!172144))))

(declare-fun bs!853837 () Bool)

(assert (= bs!853837 (and b!4518453 b!4518240)))

(assert (=> bs!853837 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695841) (= lambda!172163 lambda!172116))))

(declare-fun bs!853838 () Bool)

(assert (= bs!853838 (and b!4518453 d!1391513)))

(assert (=> bs!853838 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695980) (= lambda!172163 lambda!172146))))

(declare-fun bs!853839 () Bool)

(assert (= bs!853839 (and b!4518453 b!4518427)))

(assert (=> bs!853839 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172163 lambda!172152))))

(declare-fun bs!853840 () Bool)

(assert (= bs!853840 (and b!4518453 b!4518455)))

(assert (=> bs!853840 (= lambda!172163 lambda!172162)))

(declare-fun bs!853841 () Bool)

(assert (= bs!853841 (and b!4518453 b!4518242)))

(assert (=> bs!853841 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695572) (= lambda!172163 lambda!172114))))

(declare-fun bs!853842 () Bool)

(assert (= bs!853842 (and b!4518453 d!1391367)))

(assert (=> bs!853842 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695839) (= lambda!172163 lambda!172119))))

(declare-fun bs!853843 () Bool)

(assert (= bs!853843 (and b!4518453 b!4518384)))

(assert (=> bs!853843 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695590) (= lambda!172163 lambda!172143))))

(declare-fun bs!853844 () Bool)

(assert (= bs!853844 (and b!4518453 b!4518425)))

(assert (=> bs!853844 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1696017) (= lambda!172163 lambda!172154))))

(assert (=> bs!853837 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695572) (= lambda!172163 lambda!172115))))

(assert (=> bs!853844 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172163 lambda!172153))))

(assert (=> bs!853836 (= (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695982) (= lambda!172163 lambda!172145))))

(assert (=> b!4518453 true))

(declare-fun lambda!172164 () Int)

(assert (=> bs!853834 (not (= lambda!172164 lambda!172142))))

(declare-fun lt!1696044 () ListMap!3585)

(assert (=> bs!853836 (= (= lt!1696044 lt!1695590) (= lambda!172164 lambda!172144))))

(assert (=> bs!853837 (= (= lt!1696044 lt!1695841) (= lambda!172164 lambda!172116))))

(assert (=> bs!853838 (= (= lt!1696044 lt!1695980) (= lambda!172164 lambda!172146))))

(assert (=> bs!853839 (= (= lt!1696044 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172164 lambda!172152))))

(assert (=> bs!853840 (= (= lt!1696044 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172164 lambda!172162))))

(assert (=> bs!853841 (= (= lt!1696044 lt!1695572) (= lambda!172164 lambda!172114))))

(assert (=> bs!853842 (= (= lt!1696044 lt!1695839) (= lambda!172164 lambda!172119))))

(assert (=> bs!853843 (= (= lt!1696044 lt!1695590) (= lambda!172164 lambda!172143))))

(assert (=> bs!853844 (= (= lt!1696044 lt!1696017) (= lambda!172164 lambda!172154))))

(assert (=> bs!853837 (= (= lt!1696044 lt!1695572) (= lambda!172164 lambda!172115))))

(assert (=> bs!853844 (= (= lt!1696044 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172164 lambda!172153))))

(assert (=> bs!853836 (= (= lt!1696044 lt!1695982) (= lambda!172164 lambda!172145))))

(assert (=> b!4518453 (= (= lt!1696044 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172164 lambda!172163))))

(assert (=> bs!853835 (= (= lt!1696044 lt!1696015) (= lambda!172164 lambda!172155))))

(assert (=> b!4518453 true))

(declare-fun bs!853845 () Bool)

(declare-fun d!1391547 () Bool)

(assert (= bs!853845 (and d!1391547 d!1391499)))

(declare-fun lambda!172165 () Int)

(assert (=> bs!853845 (not (= lambda!172165 lambda!172142))))

(declare-fun bs!853846 () Bool)

(assert (= bs!853846 (and d!1391547 b!4518382)))

(declare-fun lt!1696042 () ListMap!3585)

(assert (=> bs!853846 (= (= lt!1696042 lt!1695590) (= lambda!172165 lambda!172144))))

(declare-fun bs!853847 () Bool)

(assert (= bs!853847 (and d!1391547 b!4518240)))

(assert (=> bs!853847 (= (= lt!1696042 lt!1695841) (= lambda!172165 lambda!172116))))

(declare-fun bs!853848 () Bool)

(assert (= bs!853848 (and d!1391547 d!1391513)))

(assert (=> bs!853848 (= (= lt!1696042 lt!1695980) (= lambda!172165 lambda!172146))))

(declare-fun bs!853849 () Bool)

(assert (= bs!853849 (and d!1391547 b!4518427)))

(assert (=> bs!853849 (= (= lt!1696042 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172165 lambda!172152))))

(declare-fun bs!853850 () Bool)

(assert (= bs!853850 (and d!1391547 b!4518455)))

(assert (=> bs!853850 (= (= lt!1696042 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172165 lambda!172162))))

(declare-fun bs!853851 () Bool)

(assert (= bs!853851 (and d!1391547 b!4518242)))

(assert (=> bs!853851 (= (= lt!1696042 lt!1695572) (= lambda!172165 lambda!172114))))

(declare-fun bs!853852 () Bool)

(assert (= bs!853852 (and d!1391547 d!1391367)))

(assert (=> bs!853852 (= (= lt!1696042 lt!1695839) (= lambda!172165 lambda!172119))))

(declare-fun bs!853853 () Bool)

(assert (= bs!853853 (and d!1391547 b!4518384)))

(assert (=> bs!853853 (= (= lt!1696042 lt!1695590) (= lambda!172165 lambda!172143))))

(declare-fun bs!853854 () Bool)

(assert (= bs!853854 (and d!1391547 b!4518453)))

(assert (=> bs!853854 (= (= lt!1696042 lt!1696044) (= lambda!172165 lambda!172164))))

(declare-fun bs!853855 () Bool)

(assert (= bs!853855 (and d!1391547 b!4518425)))

(assert (=> bs!853855 (= (= lt!1696042 lt!1696017) (= lambda!172165 lambda!172154))))

(assert (=> bs!853847 (= (= lt!1696042 lt!1695572) (= lambda!172165 lambda!172115))))

(assert (=> bs!853855 (= (= lt!1696042 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172165 lambda!172153))))

(assert (=> bs!853846 (= (= lt!1696042 lt!1695982) (= lambda!172165 lambda!172145))))

(assert (=> bs!853854 (= (= lt!1696042 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172165 lambda!172163))))

(declare-fun bs!853856 () Bool)

(assert (= bs!853856 (and d!1391547 d!1391537)))

(assert (=> bs!853856 (= (= lt!1696042 lt!1696015) (= lambda!172165 lambda!172155))))

(assert (=> d!1391547 true))

(declare-fun e!2815072 () ListMap!3585)

(assert (=> b!4518453 (= e!2815072 lt!1696044)))

(declare-fun lt!1696059 () ListMap!3585)

(assert (=> b!4518453 (= lt!1696059 (+!1536 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))))))

(assert (=> b!4518453 (= lt!1696044 (addToMapMapFromBucket!685 (t!357726 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))) (+!1536 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))))

(declare-fun lt!1696040 () Unit!94720)

(declare-fun call!314771 () Unit!94720)

(assert (=> b!4518453 (= lt!1696040 call!314771)))

(assert (=> b!4518453 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) lambda!172163)))

(declare-fun lt!1696051 () Unit!94720)

(assert (=> b!4518453 (= lt!1696051 lt!1696040)))

(declare-fun call!314770 () Bool)

(assert (=> b!4518453 call!314770))

(declare-fun lt!1696056 () Unit!94720)

(declare-fun Unit!94795 () Unit!94720)

(assert (=> b!4518453 (= lt!1696056 Unit!94795)))

(declare-fun call!314769 () Bool)

(assert (=> b!4518453 call!314769))

(declare-fun lt!1696050 () Unit!94720)

(declare-fun Unit!94796 () Unit!94720)

(assert (=> b!4518453 (= lt!1696050 Unit!94796)))

(declare-fun lt!1696043 () Unit!94720)

(declare-fun Unit!94797 () Unit!94720)

(assert (=> b!4518453 (= lt!1696043 Unit!94797)))

(declare-fun lt!1696052 () Unit!94720)

(assert (=> b!4518453 (= lt!1696052 (forallContained!2511 (toList!4324 lt!1696059) lambda!172164 (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))))))

(assert (=> b!4518453 (contains!13361 lt!1696059 (_1!28827 (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))))))

(declare-fun lt!1696060 () Unit!94720)

(declare-fun Unit!94798 () Unit!94720)

(assert (=> b!4518453 (= lt!1696060 Unit!94798)))

(assert (=> b!4518453 (contains!13361 lt!1696044 (_1!28827 (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))))))

(declare-fun lt!1696049 () Unit!94720)

(declare-fun Unit!94799 () Unit!94720)

(assert (=> b!4518453 (= lt!1696049 Unit!94799)))

(assert (=> b!4518453 (forall!10259 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) lambda!172164)))

(declare-fun lt!1696057 () Unit!94720)

(declare-fun Unit!94800 () Unit!94720)

(assert (=> b!4518453 (= lt!1696057 Unit!94800)))

(assert (=> b!4518453 (forall!10259 (toList!4324 lt!1696059) lambda!172164)))

(declare-fun lt!1696054 () Unit!94720)

(declare-fun Unit!94801 () Unit!94720)

(assert (=> b!4518453 (= lt!1696054 Unit!94801)))

(declare-fun lt!1696047 () Unit!94720)

(declare-fun Unit!94802 () Unit!94720)

(assert (=> b!4518453 (= lt!1696047 Unit!94802)))

(declare-fun lt!1696055 () Unit!94720)

(assert (=> b!4518453 (= lt!1696055 (addForallContainsKeyThenBeforeAdding!336 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1696044 (_1!28827 (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))) (_2!28827 (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))))

(assert (=> b!4518453 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) lambda!172164)))

(declare-fun lt!1696058 () Unit!94720)

(assert (=> b!4518453 (= lt!1696058 lt!1696055)))

(assert (=> b!4518453 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) lambda!172164)))

(declare-fun lt!1696046 () Unit!94720)

(declare-fun Unit!94803 () Unit!94720)

(assert (=> b!4518453 (= lt!1696046 Unit!94803)))

(declare-fun res!1880364 () Bool)

(assert (=> b!4518453 (= res!1880364 (forall!10259 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) lambda!172164))))

(declare-fun e!2815073 () Bool)

(assert (=> b!4518453 (=> (not res!1880364) (not e!2815073))))

(assert (=> b!4518453 e!2815073))

(declare-fun lt!1696045 () Unit!94720)

(declare-fun Unit!94804 () Unit!94720)

(assert (=> b!4518453 (= lt!1696045 Unit!94804)))

(declare-fun b!4518454 () Bool)

(declare-fun e!2815074 () Bool)

(assert (=> b!4518454 (= e!2815074 (invariantList!1015 (toList!4324 lt!1696042)))))

(declare-fun bm!314764 () Bool)

(declare-fun c!771003 () Bool)

(assert (=> bm!314764 (= call!314769 (forall!10259 (ite c!771003 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (t!357726 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))) (ite c!771003 lambda!172162 lambda!172164)))))

(assert (=> b!4518455 (= e!2815072 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))))))

(declare-fun lt!1696048 () Unit!94720)

(assert (=> b!4518455 (= lt!1696048 call!314771)))

(assert (=> b!4518455 call!314769))

(declare-fun lt!1696053 () Unit!94720)

(assert (=> b!4518455 (= lt!1696053 lt!1696048)))

(assert (=> b!4518455 call!314770))

(declare-fun lt!1696041 () Unit!94720)

(declare-fun Unit!94805 () Unit!94720)

(assert (=> b!4518455 (= lt!1696041 Unit!94805)))

(assert (=> d!1391547 e!2815074))

(declare-fun res!1880363 () Bool)

(assert (=> d!1391547 (=> (not res!1880363) (not e!2815074))))

(assert (=> d!1391547 (= res!1880363 (forall!10259 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) lambda!172165))))

(assert (=> d!1391547 (= lt!1696042 e!2815072)))

(assert (=> d!1391547 (= c!771003 ((_ is Nil!50640) (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))

(assert (=> d!1391547 (noDuplicateKeys!1158 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1391547 (= (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) lt!1696042)))

(declare-fun b!4518456 () Bool)

(declare-fun res!1880365 () Bool)

(assert (=> b!4518456 (=> (not res!1880365) (not e!2815074))))

(assert (=> b!4518456 (= res!1880365 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) lambda!172165))))

(declare-fun b!4518457 () Bool)

(assert (=> b!4518457 (= e!2815073 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) lambda!172164))))

(declare-fun bm!314765 () Bool)

(assert (=> bm!314765 (= call!314770 (forall!10259 (ite c!771003 (toList!4324 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (toList!4324 lt!1696059)) (ite c!771003 lambda!172162 lambda!172164)))))

(declare-fun bm!314766 () Bool)

(assert (=> bm!314766 (= call!314771 (lemmaContainsAllItsOwnKeys!336 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))))))

(assert (= (and d!1391547 c!771003) b!4518455))

(assert (= (and d!1391547 (not c!771003)) b!4518453))

(assert (= (and b!4518453 res!1880364) b!4518457))

(assert (= (or b!4518455 b!4518453) bm!314764))

(assert (= (or b!4518455 b!4518453) bm!314765))

(assert (= (or b!4518455 b!4518453) bm!314766))

(assert (= (and d!1391547 res!1880363) b!4518456))

(assert (= (and b!4518456 res!1880365) b!4518454))

(declare-fun m!5265007 () Bool)

(assert (=> bm!314764 m!5265007))

(assert (=> bm!314766 m!5264311))

(declare-fun m!5265009 () Bool)

(assert (=> bm!314766 m!5265009))

(declare-fun m!5265011 () Bool)

(assert (=> b!4518457 m!5265011))

(declare-fun m!5265013 () Bool)

(assert (=> b!4518453 m!5265013))

(declare-fun m!5265015 () Bool)

(assert (=> b!4518453 m!5265015))

(assert (=> b!4518453 m!5265011))

(assert (=> b!4518453 m!5264311))

(assert (=> b!4518453 m!5265013))

(assert (=> b!4518453 m!5265011))

(declare-fun m!5265017 () Bool)

(assert (=> b!4518453 m!5265017))

(declare-fun m!5265019 () Bool)

(assert (=> b!4518453 m!5265019))

(declare-fun m!5265021 () Bool)

(assert (=> b!4518453 m!5265021))

(declare-fun m!5265023 () Bool)

(assert (=> b!4518453 m!5265023))

(assert (=> b!4518453 m!5264311))

(declare-fun m!5265025 () Bool)

(assert (=> b!4518453 m!5265025))

(declare-fun m!5265027 () Bool)

(assert (=> b!4518453 m!5265027))

(assert (=> b!4518453 m!5265021))

(declare-fun m!5265029 () Bool)

(assert (=> b!4518453 m!5265029))

(declare-fun m!5265031 () Bool)

(assert (=> d!1391547 m!5265031))

(declare-fun m!5265033 () Bool)

(assert (=> d!1391547 m!5265033))

(declare-fun m!5265035 () Bool)

(assert (=> bm!314765 m!5265035))

(declare-fun m!5265037 () Bool)

(assert (=> b!4518456 m!5265037))

(declare-fun m!5265039 () Bool)

(assert (=> b!4518454 m!5265039))

(assert (=> b!4518103 d!1391547))

(declare-fun bs!853857 () Bool)

(declare-fun d!1391549 () Bool)

(assert (= bs!853857 (and d!1391549 d!1391343)))

(declare-fun lambda!172166 () Int)

(assert (=> bs!853857 (= lambda!172166 lambda!172028)))

(declare-fun bs!853858 () Bool)

(assert (= bs!853858 (and d!1391549 d!1391495)))

(assert (=> bs!853858 (= lambda!172166 lambda!172139)))

(declare-fun bs!853859 () Bool)

(assert (= bs!853859 (and d!1391549 d!1391353)))

(assert (=> bs!853859 (= lambda!172166 lambda!172033)))

(declare-fun bs!853860 () Bool)

(assert (= bs!853860 (and d!1391549 d!1391529)))

(assert (=> bs!853860 (= lambda!172166 lambda!172151)))

(declare-fun bs!853861 () Bool)

(assert (= bs!853861 (and d!1391549 d!1391515)))

(assert (=> bs!853861 (= lambda!172166 lambda!172150)))

(declare-fun bs!853862 () Bool)

(assert (= bs!853862 (and d!1391549 start!447216)))

(assert (=> bs!853862 (= lambda!172166 lambda!172021)))

(declare-fun bs!853863 () Bool)

(assert (= bs!853863 (and d!1391549 d!1391355)))

(assert (=> bs!853863 (= lambda!172166 lambda!172050)))

(declare-fun bs!853864 () Bool)

(assert (= bs!853864 (and d!1391549 d!1391477)))

(assert (=> bs!853864 (= lambda!172166 lambda!172136)))

(declare-fun bs!853865 () Bool)

(assert (= bs!853865 (and d!1391549 d!1391335)))

(assert (=> bs!853865 (= lambda!172166 lambda!172027)))

(declare-fun bs!853866 () Bool)

(assert (= bs!853866 (and d!1391549 d!1391351)))

(assert (=> bs!853866 (= lambda!172166 lambda!172032)))

(declare-fun bs!853867 () Bool)

(assert (= bs!853867 (and d!1391549 d!1391449)))

(assert (=> bs!853867 (= lambda!172166 lambda!172124)))

(declare-fun bs!853868 () Bool)

(assert (= bs!853868 (and d!1391549 d!1391347)))

(assert (=> bs!853868 (not (= lambda!172166 lambda!172031))))

(declare-fun bs!853869 () Bool)

(assert (= bs!853869 (and d!1391549 d!1391331)))

(assert (=> bs!853869 (= lambda!172166 lambda!172024)))

(declare-fun lt!1696061 () ListMap!3585)

(assert (=> d!1391549 (invariantList!1015 (toList!4324 lt!1696061))))

(declare-fun e!2815075 () ListMap!3585)

(assert (=> d!1391549 (= lt!1696061 e!2815075)))

(declare-fun c!771004 () Bool)

(assert (=> d!1391549 (= c!771004 ((_ is Cons!50641) (t!357727 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1391549 (forall!10257 (t!357727 (t!357727 (toList!4323 lm!1477))) lambda!172166)))

(assert (=> d!1391549 (= (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1696061)))

(declare-fun b!4518458 () Bool)

(assert (=> b!4518458 (= e!2815075 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (t!357727 (toList!4323 lm!1477))))) (extractMap!1214 (t!357727 (t!357727 (t!357727 (toList!4323 lm!1477)))))))))

(declare-fun b!4518459 () Bool)

(assert (=> b!4518459 (= e!2815075 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391549 c!771004) b!4518458))

(assert (= (and d!1391549 (not c!771004)) b!4518459))

(declare-fun m!5265041 () Bool)

(assert (=> d!1391549 m!5265041))

(declare-fun m!5265043 () Bool)

(assert (=> d!1391549 m!5265043))

(declare-fun m!5265045 () Bool)

(assert (=> b!4518458 m!5265045))

(assert (=> b!4518458 m!5265045))

(declare-fun m!5265047 () Bool)

(assert (=> b!4518458 m!5265047))

(assert (=> b!4518103 d!1391549))

(declare-fun d!1391551 () Bool)

(declare-fun c!771007 () Bool)

(assert (=> d!1391551 (= c!771007 ((_ is Nil!50640) (toList!4324 lt!1695583)))))

(declare-fun e!2815078 () (InoxSet tuple2!51066))

(assert (=> d!1391551 (= (content!8350 (toList!4324 lt!1695583)) e!2815078)))

(declare-fun b!4518464 () Bool)

(assert (=> b!4518464 (= e!2815078 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518465 () Bool)

(assert (=> b!4518465 (= e!2815078 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695583)) true) (content!8350 (t!357726 (toList!4324 lt!1695583)))))))

(assert (= (and d!1391551 c!771007) b!4518464))

(assert (= (and d!1391551 (not c!771007)) b!4518465))

(declare-fun m!5265049 () Bool)

(assert (=> b!4518465 m!5265049))

(declare-fun m!5265051 () Bool)

(assert (=> b!4518465 m!5265051))

(assert (=> d!1391337 d!1391551))

(declare-fun d!1391553 () Bool)

(declare-fun c!771008 () Bool)

(assert (=> d!1391553 (= c!771008 ((_ is Nil!50640) (toList!4324 lt!1695582)))))

(declare-fun e!2815079 () (InoxSet tuple2!51066))

(assert (=> d!1391553 (= (content!8350 (toList!4324 lt!1695582)) e!2815079)))

(declare-fun b!4518466 () Bool)

(assert (=> b!4518466 (= e!2815079 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518467 () Bool)

(assert (=> b!4518467 (= e!2815079 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695582)) true) (content!8350 (t!357726 (toList!4324 lt!1695582)))))))

(assert (= (and d!1391553 c!771008) b!4518466))

(assert (= (and d!1391553 (not c!771008)) b!4518467))

(declare-fun m!5265053 () Bool)

(assert (=> b!4518467 m!5265053))

(declare-fun m!5265055 () Bool)

(assert (=> b!4518467 m!5265055))

(assert (=> d!1391337 d!1391553))

(declare-fun bs!853870 () Bool)

(declare-fun b!4518470 () Bool)

(assert (= bs!853870 (and b!4518470 d!1391499)))

(declare-fun lambda!172167 () Int)

(assert (=> bs!853870 (not (= lambda!172167 lambda!172142))))

(declare-fun bs!853871 () Bool)

(assert (= bs!853871 (and b!4518470 b!4518382)))

(assert (=> bs!853871 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695590) (= lambda!172167 lambda!172144))))

(declare-fun bs!853872 () Bool)

(assert (= bs!853872 (and b!4518470 b!4518240)))

(assert (=> bs!853872 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695841) (= lambda!172167 lambda!172116))))

(declare-fun bs!853873 () Bool)

(assert (= bs!853873 (and b!4518470 d!1391513)))

(assert (=> bs!853873 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695980) (= lambda!172167 lambda!172146))))

(declare-fun bs!853874 () Bool)

(assert (= bs!853874 (and b!4518470 b!4518427)))

(assert (=> bs!853874 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172167 lambda!172152))))

(declare-fun bs!853875 () Bool)

(assert (= bs!853875 (and b!4518470 b!4518455)))

(assert (=> bs!853875 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172167 lambda!172162))))

(declare-fun bs!853876 () Bool)

(assert (= bs!853876 (and b!4518470 b!4518242)))

(assert (=> bs!853876 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695572) (= lambda!172167 lambda!172114))))

(declare-fun bs!853877 () Bool)

(assert (= bs!853877 (and b!4518470 d!1391367)))

(assert (=> bs!853877 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695839) (= lambda!172167 lambda!172119))))

(declare-fun bs!853878 () Bool)

(assert (= bs!853878 (and b!4518470 b!4518384)))

(assert (=> bs!853878 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695590) (= lambda!172167 lambda!172143))))

(declare-fun bs!853879 () Bool)

(assert (= bs!853879 (and b!4518470 b!4518453)))

(assert (=> bs!853879 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696044) (= lambda!172167 lambda!172164))))

(declare-fun bs!853880 () Bool)

(assert (= bs!853880 (and b!4518470 b!4518425)))

(assert (=> bs!853880 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696017) (= lambda!172167 lambda!172154))))

(assert (=> bs!853872 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695572) (= lambda!172167 lambda!172115))))

(assert (=> bs!853880 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172167 lambda!172153))))

(assert (=> bs!853879 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172167 lambda!172163))))

(declare-fun bs!853881 () Bool)

(assert (= bs!853881 (and b!4518470 d!1391537)))

(assert (=> bs!853881 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696015) (= lambda!172167 lambda!172155))))

(assert (=> bs!853871 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695982) (= lambda!172167 lambda!172145))))

(declare-fun bs!853882 () Bool)

(assert (= bs!853882 (and b!4518470 d!1391547)))

(assert (=> bs!853882 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696042) (= lambda!172167 lambda!172165))))

(assert (=> b!4518470 true))

(declare-fun bs!853883 () Bool)

(declare-fun b!4518468 () Bool)

(assert (= bs!853883 (and b!4518468 d!1391499)))

(declare-fun lambda!172168 () Int)

(assert (=> bs!853883 (not (= lambda!172168 lambda!172142))))

(declare-fun bs!853884 () Bool)

(assert (= bs!853884 (and b!4518468 b!4518382)))

(assert (=> bs!853884 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695590) (= lambda!172168 lambda!172144))))

(declare-fun bs!853885 () Bool)

(assert (= bs!853885 (and b!4518468 b!4518240)))

(assert (=> bs!853885 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695841) (= lambda!172168 lambda!172116))))

(declare-fun bs!853886 () Bool)

(assert (= bs!853886 (and b!4518468 d!1391513)))

(assert (=> bs!853886 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695980) (= lambda!172168 lambda!172146))))

(declare-fun bs!853887 () Bool)

(assert (= bs!853887 (and b!4518468 b!4518427)))

(assert (=> bs!853887 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172168 lambda!172152))))

(declare-fun bs!853888 () Bool)

(assert (= bs!853888 (and b!4518468 b!4518455)))

(assert (=> bs!853888 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172168 lambda!172162))))

(declare-fun bs!853889 () Bool)

(assert (= bs!853889 (and b!4518468 b!4518242)))

(assert (=> bs!853889 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695572) (= lambda!172168 lambda!172114))))

(declare-fun bs!853890 () Bool)

(assert (= bs!853890 (and b!4518468 b!4518470)))

(assert (=> bs!853890 (= lambda!172168 lambda!172167)))

(declare-fun bs!853891 () Bool)

(assert (= bs!853891 (and b!4518468 d!1391367)))

(assert (=> bs!853891 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695839) (= lambda!172168 lambda!172119))))

(declare-fun bs!853892 () Bool)

(assert (= bs!853892 (and b!4518468 b!4518384)))

(assert (=> bs!853892 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695590) (= lambda!172168 lambda!172143))))

(declare-fun bs!853893 () Bool)

(assert (= bs!853893 (and b!4518468 b!4518453)))

(assert (=> bs!853893 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696044) (= lambda!172168 lambda!172164))))

(declare-fun bs!853894 () Bool)

(assert (= bs!853894 (and b!4518468 b!4518425)))

(assert (=> bs!853894 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696017) (= lambda!172168 lambda!172154))))

(assert (=> bs!853885 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695572) (= lambda!172168 lambda!172115))))

(assert (=> bs!853894 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172168 lambda!172153))))

(assert (=> bs!853893 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172168 lambda!172163))))

(declare-fun bs!853895 () Bool)

(assert (= bs!853895 (and b!4518468 d!1391537)))

(assert (=> bs!853895 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696015) (= lambda!172168 lambda!172155))))

(assert (=> bs!853884 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1695982) (= lambda!172168 lambda!172145))))

(declare-fun bs!853896 () Bool)

(assert (= bs!853896 (and b!4518468 d!1391547)))

(assert (=> bs!853896 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696042) (= lambda!172168 lambda!172165))))

(assert (=> b!4518468 true))

(declare-fun lambda!172169 () Int)

(assert (=> bs!853883 (not (= lambda!172169 lambda!172142))))

(declare-fun lt!1696066 () ListMap!3585)

(assert (=> bs!853884 (= (= lt!1696066 lt!1695590) (= lambda!172169 lambda!172144))))

(assert (=> bs!853885 (= (= lt!1696066 lt!1695841) (= lambda!172169 lambda!172116))))

(assert (=> bs!853886 (= (= lt!1696066 lt!1695980) (= lambda!172169 lambda!172146))))

(assert (=> bs!853887 (= (= lt!1696066 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172169 lambda!172152))))

(assert (=> bs!853888 (= (= lt!1696066 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172169 lambda!172162))))

(assert (=> bs!853889 (= (= lt!1696066 lt!1695572) (= lambda!172169 lambda!172114))))

(assert (=> bs!853890 (= (= lt!1696066 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172169 lambda!172167))))

(assert (=> bs!853891 (= (= lt!1696066 lt!1695839) (= lambda!172169 lambda!172119))))

(assert (=> b!4518468 (= (= lt!1696066 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172169 lambda!172168))))

(assert (=> bs!853892 (= (= lt!1696066 lt!1695590) (= lambda!172169 lambda!172143))))

(assert (=> bs!853893 (= (= lt!1696066 lt!1696044) (= lambda!172169 lambda!172164))))

(assert (=> bs!853894 (= (= lt!1696066 lt!1696017) (= lambda!172169 lambda!172154))))

(assert (=> bs!853885 (= (= lt!1696066 lt!1695572) (= lambda!172169 lambda!172115))))

(assert (=> bs!853894 (= (= lt!1696066 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172169 lambda!172153))))

(assert (=> bs!853893 (= (= lt!1696066 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172169 lambda!172163))))

(assert (=> bs!853895 (= (= lt!1696066 lt!1696015) (= lambda!172169 lambda!172155))))

(assert (=> bs!853884 (= (= lt!1696066 lt!1695982) (= lambda!172169 lambda!172145))))

(assert (=> bs!853896 (= (= lt!1696066 lt!1696042) (= lambda!172169 lambda!172165))))

(assert (=> b!4518468 true))

(declare-fun bs!853897 () Bool)

(declare-fun d!1391555 () Bool)

(assert (= bs!853897 (and d!1391555 d!1391499)))

(declare-fun lambda!172170 () Int)

(assert (=> bs!853897 (not (= lambda!172170 lambda!172142))))

(declare-fun bs!853898 () Bool)

(assert (= bs!853898 (and d!1391555 b!4518382)))

(declare-fun lt!1696064 () ListMap!3585)

(assert (=> bs!853898 (= (= lt!1696064 lt!1695590) (= lambda!172170 lambda!172144))))

(declare-fun bs!853899 () Bool)

(assert (= bs!853899 (and d!1391555 b!4518240)))

(assert (=> bs!853899 (= (= lt!1696064 lt!1695841) (= lambda!172170 lambda!172116))))

(declare-fun bs!853900 () Bool)

(assert (= bs!853900 (and d!1391555 d!1391513)))

(assert (=> bs!853900 (= (= lt!1696064 lt!1695980) (= lambda!172170 lambda!172146))))

(declare-fun bs!853901 () Bool)

(assert (= bs!853901 (and d!1391555 b!4518427)))

(assert (=> bs!853901 (= (= lt!1696064 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172170 lambda!172152))))

(declare-fun bs!853902 () Bool)

(assert (= bs!853902 (and d!1391555 b!4518242)))

(assert (=> bs!853902 (= (= lt!1696064 lt!1695572) (= lambda!172170 lambda!172114))))

(declare-fun bs!853903 () Bool)

(assert (= bs!853903 (and d!1391555 b!4518470)))

(assert (=> bs!853903 (= (= lt!1696064 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172170 lambda!172167))))

(declare-fun bs!853904 () Bool)

(assert (= bs!853904 (and d!1391555 d!1391367)))

(assert (=> bs!853904 (= (= lt!1696064 lt!1695839) (= lambda!172170 lambda!172119))))

(declare-fun bs!853905 () Bool)

(assert (= bs!853905 (and d!1391555 b!4518468)))

(assert (=> bs!853905 (= (= lt!1696064 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172170 lambda!172168))))

(declare-fun bs!853906 () Bool)

(assert (= bs!853906 (and d!1391555 b!4518384)))

(assert (=> bs!853906 (= (= lt!1696064 lt!1695590) (= lambda!172170 lambda!172143))))

(declare-fun bs!853907 () Bool)

(assert (= bs!853907 (and d!1391555 b!4518453)))

(assert (=> bs!853907 (= (= lt!1696064 lt!1696044) (= lambda!172170 lambda!172164))))

(declare-fun bs!853908 () Bool)

(assert (= bs!853908 (and d!1391555 b!4518425)))

(assert (=> bs!853908 (= (= lt!1696064 lt!1696017) (= lambda!172170 lambda!172154))))

(assert (=> bs!853899 (= (= lt!1696064 lt!1695572) (= lambda!172170 lambda!172115))))

(assert (=> bs!853908 (= (= lt!1696064 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172170 lambda!172153))))

(assert (=> bs!853907 (= (= lt!1696064 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172170 lambda!172163))))

(declare-fun bs!853909 () Bool)

(assert (= bs!853909 (and d!1391555 d!1391537)))

(assert (=> bs!853909 (= (= lt!1696064 lt!1696015) (= lambda!172170 lambda!172155))))

(assert (=> bs!853905 (= (= lt!1696064 lt!1696066) (= lambda!172170 lambda!172169))))

(declare-fun bs!853910 () Bool)

(assert (= bs!853910 (and d!1391555 b!4518455)))

(assert (=> bs!853910 (= (= lt!1696064 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172170 lambda!172162))))

(assert (=> bs!853898 (= (= lt!1696064 lt!1695982) (= lambda!172170 lambda!172145))))

(declare-fun bs!853911 () Bool)

(assert (= bs!853911 (and d!1391555 d!1391547)))

(assert (=> bs!853911 (= (= lt!1696064 lt!1696042) (= lambda!172170 lambda!172165))))

(assert (=> d!1391555 true))

(declare-fun e!2815080 () ListMap!3585)

(assert (=> b!4518468 (= e!2815080 lt!1696066)))

(declare-fun lt!1696081 () ListMap!3585)

(assert (=> b!4518468 (= lt!1696081 (+!1536 (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586))))))))

(assert (=> b!4518468 (= lt!1696066 (addToMapMapFromBucket!685 (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695586)))) (+!1536 (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))))

(declare-fun lt!1696062 () Unit!94720)

(declare-fun call!314774 () Unit!94720)

(assert (=> b!4518468 (= lt!1696062 call!314774)))

(assert (=> b!4518468 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) lambda!172168)))

(declare-fun lt!1696073 () Unit!94720)

(assert (=> b!4518468 (= lt!1696073 lt!1696062)))

(declare-fun call!314773 () Bool)

(assert (=> b!4518468 call!314773))

(declare-fun lt!1696078 () Unit!94720)

(declare-fun Unit!94806 () Unit!94720)

(assert (=> b!4518468 (= lt!1696078 Unit!94806)))

(declare-fun call!314772 () Bool)

(assert (=> b!4518468 call!314772))

(declare-fun lt!1696072 () Unit!94720)

(declare-fun Unit!94807 () Unit!94720)

(assert (=> b!4518468 (= lt!1696072 Unit!94807)))

(declare-fun lt!1696065 () Unit!94720)

(declare-fun Unit!94808 () Unit!94720)

(assert (=> b!4518468 (= lt!1696065 Unit!94808)))

(declare-fun lt!1696074 () Unit!94720)

(assert (=> b!4518468 (= lt!1696074 (forallContained!2511 (toList!4324 lt!1696081) lambda!172169 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586))))))))

(assert (=> b!4518468 (contains!13361 lt!1696081 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586))))))))

(declare-fun lt!1696082 () Unit!94720)

(declare-fun Unit!94809 () Unit!94720)

(assert (=> b!4518468 (= lt!1696082 Unit!94809)))

(assert (=> b!4518468 (contains!13361 lt!1696066 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586))))))))

(declare-fun lt!1696071 () Unit!94720)

(declare-fun Unit!94810 () Unit!94720)

(assert (=> b!4518468 (= lt!1696071 Unit!94810)))

(assert (=> b!4518468 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695586))) lambda!172169)))

(declare-fun lt!1696079 () Unit!94720)

(declare-fun Unit!94811 () Unit!94720)

(assert (=> b!4518468 (= lt!1696079 Unit!94811)))

(assert (=> b!4518468 (forall!10259 (toList!4324 lt!1696081) lambda!172169)))

(declare-fun lt!1696076 () Unit!94720)

(declare-fun Unit!94812 () Unit!94720)

(assert (=> b!4518468 (= lt!1696076 Unit!94812)))

(declare-fun lt!1696069 () Unit!94720)

(declare-fun Unit!94813 () Unit!94720)

(assert (=> b!4518468 (= lt!1696069 Unit!94813)))

(declare-fun lt!1696077 () Unit!94720)

(assert (=> b!4518468 (= lt!1696077 (addForallContainsKeyThenBeforeAdding!336 (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696066 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586))))) (_2!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))))

(assert (=> b!4518468 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) lambda!172169)))

(declare-fun lt!1696080 () Unit!94720)

(assert (=> b!4518468 (= lt!1696080 lt!1696077)))

(assert (=> b!4518468 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) lambda!172169)))

(declare-fun lt!1696068 () Unit!94720)

(declare-fun Unit!94815 () Unit!94720)

(assert (=> b!4518468 (= lt!1696068 Unit!94815)))

(declare-fun res!1880367 () Bool)

(assert (=> b!4518468 (= res!1880367 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695586))) lambda!172169))))

(declare-fun e!2815081 () Bool)

(assert (=> b!4518468 (=> (not res!1880367) (not e!2815081))))

(assert (=> b!4518468 e!2815081))

(declare-fun lt!1696067 () Unit!94720)

(declare-fun Unit!94818 () Unit!94720)

(assert (=> b!4518468 (= lt!1696067 Unit!94818)))

(declare-fun b!4518469 () Bool)

(declare-fun e!2815082 () Bool)

(assert (=> b!4518469 (= e!2815082 (invariantList!1015 (toList!4324 lt!1696064)))))

(declare-fun c!771009 () Bool)

(declare-fun bm!314767 () Bool)

(assert (=> bm!314767 (= call!314772 (forall!10259 (ite c!771009 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695586))))) (ite c!771009 lambda!172167 lambda!172169)))))

(assert (=> b!4518470 (= e!2815080 (extractMap!1214 (t!357727 (toList!4323 lt!1695586))))))

(declare-fun lt!1696070 () Unit!94720)

(assert (=> b!4518470 (= lt!1696070 call!314774)))

(assert (=> b!4518470 call!314772))

(declare-fun lt!1696075 () Unit!94720)

(assert (=> b!4518470 (= lt!1696075 lt!1696070)))

(assert (=> b!4518470 call!314773))

(declare-fun lt!1696063 () Unit!94720)

(declare-fun Unit!94820 () Unit!94720)

(assert (=> b!4518470 (= lt!1696063 Unit!94820)))

(assert (=> d!1391555 e!2815082))

(declare-fun res!1880366 () Bool)

(assert (=> d!1391555 (=> (not res!1880366) (not e!2815082))))

(assert (=> d!1391555 (= res!1880366 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695586))) lambda!172170))))

(assert (=> d!1391555 (= lt!1696064 e!2815080)))

(assert (=> d!1391555 (= c!771009 ((_ is Nil!50640) (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(assert (=> d!1391555 (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695586))))))

(assert (=> d!1391555 (= (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lt!1695586))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) lt!1696064)))

(declare-fun b!4518471 () Bool)

(declare-fun res!1880368 () Bool)

(assert (=> b!4518471 (=> (not res!1880368) (not e!2815082))))

(assert (=> b!4518471 (= res!1880368 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) lambda!172170))))

(declare-fun b!4518472 () Bool)

(assert (=> b!4518472 (= e!2815081 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) lambda!172169))))

(declare-fun bm!314768 () Bool)

(assert (=> bm!314768 (= call!314773 (forall!10259 (ite c!771009 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (toList!4324 lt!1696081)) (ite c!771009 lambda!172167 lambda!172169)))))

(declare-fun bm!314769 () Bool)

(assert (=> bm!314769 (= call!314774 (lemmaContainsAllItsOwnKeys!336 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))))))

(assert (= (and d!1391555 c!771009) b!4518470))

(assert (= (and d!1391555 (not c!771009)) b!4518468))

(assert (= (and b!4518468 res!1880367) b!4518472))

(assert (= (or b!4518470 b!4518468) bm!314767))

(assert (= (or b!4518470 b!4518468) bm!314768))

(assert (= (or b!4518470 b!4518468) bm!314769))

(assert (= (and d!1391555 res!1880366) b!4518471))

(assert (= (and b!4518471 res!1880368) b!4518469))

(declare-fun m!5265057 () Bool)

(assert (=> bm!314767 m!5265057))

(assert (=> bm!314769 m!5264319))

(declare-fun m!5265059 () Bool)

(assert (=> bm!314769 m!5265059))

(declare-fun m!5265061 () Bool)

(assert (=> b!4518472 m!5265061))

(declare-fun m!5265063 () Bool)

(assert (=> b!4518468 m!5265063))

(declare-fun m!5265065 () Bool)

(assert (=> b!4518468 m!5265065))

(assert (=> b!4518468 m!5265061))

(assert (=> b!4518468 m!5264319))

(assert (=> b!4518468 m!5265063))

(assert (=> b!4518468 m!5265061))

(declare-fun m!5265067 () Bool)

(assert (=> b!4518468 m!5265067))

(declare-fun m!5265069 () Bool)

(assert (=> b!4518468 m!5265069))

(declare-fun m!5265071 () Bool)

(assert (=> b!4518468 m!5265071))

(declare-fun m!5265073 () Bool)

(assert (=> b!4518468 m!5265073))

(assert (=> b!4518468 m!5264319))

(declare-fun m!5265075 () Bool)

(assert (=> b!4518468 m!5265075))

(declare-fun m!5265077 () Bool)

(assert (=> b!4518468 m!5265077))

(assert (=> b!4518468 m!5265071))

(declare-fun m!5265079 () Bool)

(assert (=> b!4518468 m!5265079))

(declare-fun m!5265081 () Bool)

(assert (=> d!1391555 m!5265081))

(declare-fun m!5265083 () Bool)

(assert (=> d!1391555 m!5265083))

(declare-fun m!5265085 () Bool)

(assert (=> bm!314768 m!5265085))

(declare-fun m!5265087 () Bool)

(assert (=> b!4518471 m!5265087))

(declare-fun m!5265089 () Bool)

(assert (=> b!4518469 m!5265089))

(assert (=> b!4518105 d!1391555))

(declare-fun bs!853912 () Bool)

(declare-fun d!1391557 () Bool)

(assert (= bs!853912 (and d!1391557 d!1391495)))

(declare-fun lambda!172171 () Int)

(assert (=> bs!853912 (= lambda!172171 lambda!172139)))

(declare-fun bs!853913 () Bool)

(assert (= bs!853913 (and d!1391557 d!1391353)))

(assert (=> bs!853913 (= lambda!172171 lambda!172033)))

(declare-fun bs!853914 () Bool)

(assert (= bs!853914 (and d!1391557 d!1391529)))

(assert (=> bs!853914 (= lambda!172171 lambda!172151)))

(declare-fun bs!853915 () Bool)

(assert (= bs!853915 (and d!1391557 d!1391515)))

(assert (=> bs!853915 (= lambda!172171 lambda!172150)))

(declare-fun bs!853916 () Bool)

(assert (= bs!853916 (and d!1391557 start!447216)))

(assert (=> bs!853916 (= lambda!172171 lambda!172021)))

(declare-fun bs!853917 () Bool)

(assert (= bs!853917 (and d!1391557 d!1391355)))

(assert (=> bs!853917 (= lambda!172171 lambda!172050)))

(declare-fun bs!853918 () Bool)

(assert (= bs!853918 (and d!1391557 d!1391477)))

(assert (=> bs!853918 (= lambda!172171 lambda!172136)))

(declare-fun bs!853919 () Bool)

(assert (= bs!853919 (and d!1391557 d!1391335)))

(assert (=> bs!853919 (= lambda!172171 lambda!172027)))

(declare-fun bs!853920 () Bool)

(assert (= bs!853920 (and d!1391557 d!1391351)))

(assert (=> bs!853920 (= lambda!172171 lambda!172032)))

(declare-fun bs!853921 () Bool)

(assert (= bs!853921 (and d!1391557 d!1391449)))

(assert (=> bs!853921 (= lambda!172171 lambda!172124)))

(declare-fun bs!853922 () Bool)

(assert (= bs!853922 (and d!1391557 d!1391347)))

(assert (=> bs!853922 (not (= lambda!172171 lambda!172031))))

(declare-fun bs!853923 () Bool)

(assert (= bs!853923 (and d!1391557 d!1391331)))

(assert (=> bs!853923 (= lambda!172171 lambda!172024)))

(declare-fun bs!853924 () Bool)

(assert (= bs!853924 (and d!1391557 d!1391343)))

(assert (=> bs!853924 (= lambda!172171 lambda!172028)))

(declare-fun bs!853925 () Bool)

(assert (= bs!853925 (and d!1391557 d!1391549)))

(assert (=> bs!853925 (= lambda!172171 lambda!172166)))

(declare-fun lt!1696083 () ListMap!3585)

(assert (=> d!1391557 (invariantList!1015 (toList!4324 lt!1696083))))

(declare-fun e!2815083 () ListMap!3585)

(assert (=> d!1391557 (= lt!1696083 e!2815083)))

(declare-fun c!771010 () Bool)

(assert (=> d!1391557 (= c!771010 ((_ is Cons!50641) (t!357727 (toList!4323 lt!1695586))))))

(assert (=> d!1391557 (forall!10257 (t!357727 (toList!4323 lt!1695586)) lambda!172171)))

(assert (=> d!1391557 (= (extractMap!1214 (t!357727 (toList!4323 lt!1695586))) lt!1696083)))

(declare-fun b!4518473 () Bool)

(assert (=> b!4518473 (= e!2815083 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (toList!4323 lt!1695586)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lt!1695586))))))))

(declare-fun b!4518474 () Bool)

(assert (=> b!4518474 (= e!2815083 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391557 c!771010) b!4518473))

(assert (= (and d!1391557 (not c!771010)) b!4518474))

(declare-fun m!5265091 () Bool)

(assert (=> d!1391557 m!5265091))

(declare-fun m!5265093 () Bool)

(assert (=> d!1391557 m!5265093))

(declare-fun m!5265095 () Bool)

(assert (=> b!4518473 m!5265095))

(assert (=> b!4518473 m!5265095))

(declare-fun m!5265097 () Bool)

(assert (=> b!4518473 m!5265097))

(assert (=> b!4518105 d!1391557))

(assert (=> d!1391433 d!1391513))

(declare-fun d!1391559 () Bool)

(assert (=> d!1391559 (= (eq!615 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695590) (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695572)) (= (content!8350 (toList!4324 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695590))) (content!8350 (toList!4324 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695572)))))))

(declare-fun bs!853926 () Bool)

(assert (= bs!853926 d!1391559))

(declare-fun m!5265099 () Bool)

(assert (=> bs!853926 m!5265099))

(declare-fun m!5265101 () Bool)

(assert (=> bs!853926 m!5265101))

(assert (=> d!1391433 d!1391559))

(assert (=> d!1391433 d!1391521))

(declare-fun d!1391561 () Bool)

(assert (=> d!1391561 (eq!615 (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695590) (addToMapMapFromBucket!685 (_2!28828 lt!1695575) lt!1695572))))

(assert (=> d!1391561 true))

(declare-fun _$16!212 () Unit!94720)

(assert (=> d!1391561 (= (choose!29482 lt!1695590 lt!1695572 (_2!28828 lt!1695575)) _$16!212)))

(declare-fun bs!853927 () Bool)

(assert (= bs!853927 d!1391561))

(assert (=> bs!853927 m!5264095))

(assert (=> bs!853927 m!5264157))

(assert (=> bs!853927 m!5264095))

(assert (=> bs!853927 m!5264157))

(assert (=> bs!853927 m!5264609))

(assert (=> d!1391433 d!1391561))

(assert (=> d!1391433 d!1391367))

(declare-fun d!1391563 () Bool)

(declare-fun lt!1696084 () Bool)

(assert (=> d!1391563 (= lt!1696084 (select (content!8352 (toList!4323 lt!1695905)) lt!1695575))))

(declare-fun e!2815085 () Bool)

(assert (=> d!1391563 (= lt!1696084 e!2815085)))

(declare-fun res!1880369 () Bool)

(assert (=> d!1391563 (=> (not res!1880369) (not e!2815085))))

(assert (=> d!1391563 (= res!1880369 ((_ is Cons!50641) (toList!4323 lt!1695905)))))

(assert (=> d!1391563 (= (contains!13363 (toList!4323 lt!1695905) lt!1695575) lt!1696084)))

(declare-fun b!4518475 () Bool)

(declare-fun e!2815084 () Bool)

(assert (=> b!4518475 (= e!2815085 e!2815084)))

(declare-fun res!1880370 () Bool)

(assert (=> b!4518475 (=> res!1880370 e!2815084)))

(assert (=> b!4518475 (= res!1880370 (= (h!56492 (toList!4323 lt!1695905)) lt!1695575))))

(declare-fun b!4518476 () Bool)

(assert (=> b!4518476 (= e!2815084 (contains!13363 (t!357727 (toList!4323 lt!1695905)) lt!1695575))))

(assert (= (and d!1391563 res!1880369) b!4518475))

(assert (= (and b!4518475 (not res!1880370)) b!4518476))

(declare-fun m!5265103 () Bool)

(assert (=> d!1391563 m!5265103))

(declare-fun m!5265105 () Bool)

(assert (=> d!1391563 m!5265105))

(declare-fun m!5265107 () Bool)

(assert (=> b!4518476 m!5265107))

(assert (=> b!4518288 d!1391563))

(declare-fun d!1391565 () Bool)

(declare-fun res!1880375 () Bool)

(declare-fun e!2815090 () Bool)

(assert (=> d!1391565 (=> res!1880375 e!2815090)))

(assert (=> d!1391565 (= res!1880375 (or ((_ is Nil!50641) (toList!4323 lm!1477)) ((_ is Nil!50641) (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1391565 (= (isStrictlySorted!429 (toList!4323 lm!1477)) e!2815090)))

(declare-fun b!4518481 () Bool)

(declare-fun e!2815091 () Bool)

(assert (=> b!4518481 (= e!2815090 e!2815091)))

(declare-fun res!1880376 () Bool)

(assert (=> b!4518481 (=> (not res!1880376) (not e!2815091))))

(assert (=> b!4518481 (= res!1880376 (bvslt (_1!28828 (h!56492 (toList!4323 lm!1477))) (_1!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))

(declare-fun b!4518482 () Bool)

(assert (=> b!4518482 (= e!2815091 (isStrictlySorted!429 (t!357727 (toList!4323 lm!1477))))))

(assert (= (and d!1391565 (not res!1880375)) b!4518481))

(assert (= (and b!4518481 res!1880376) b!4518482))

(declare-fun m!5265109 () Bool)

(assert (=> b!4518482 m!5265109))

(assert (=> d!1391507 d!1391565))

(declare-fun d!1391567 () Bool)

(assert (=> d!1391567 (= (invariantList!1015 (toList!4324 lt!1696012)) (noDuplicatedKeys!260 (toList!4324 lt!1696012)))))

(declare-fun bs!853928 () Bool)

(assert (= bs!853928 d!1391567))

(declare-fun m!5265111 () Bool)

(assert (=> bs!853928 m!5265111))

(assert (=> d!1391529 d!1391567))

(declare-fun d!1391569 () Bool)

(declare-fun res!1880377 () Bool)

(declare-fun e!2815092 () Bool)

(assert (=> d!1391569 (=> res!1880377 e!2815092)))

(assert (=> d!1391569 (= res!1880377 ((_ is Nil!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391569 (= (forall!10257 (toList!4323 lm!1477) lambda!172151) e!2815092)))

(declare-fun b!4518483 () Bool)

(declare-fun e!2815093 () Bool)

(assert (=> b!4518483 (= e!2815092 e!2815093)))

(declare-fun res!1880378 () Bool)

(assert (=> b!4518483 (=> (not res!1880378) (not e!2815093))))

(assert (=> b!4518483 (= res!1880378 (dynLambda!21159 lambda!172151 (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4518484 () Bool)

(assert (=> b!4518484 (= e!2815093 (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172151))))

(assert (= (and d!1391569 (not res!1880377)) b!4518483))

(assert (= (and b!4518483 res!1880378) b!4518484))

(declare-fun b_lambda!154679 () Bool)

(assert (=> (not b_lambda!154679) (not b!4518483)))

(declare-fun m!5265113 () Bool)

(assert (=> b!4518483 m!5265113))

(declare-fun m!5265115 () Bool)

(assert (=> b!4518484 m!5265115))

(assert (=> d!1391529 d!1391569))

(declare-fun b!4518485 () Bool)

(declare-fun e!2815094 () List!50764)

(assert (=> b!4518485 (= e!2815094 (t!357726 (t!357726 lt!1695573)))))

(declare-fun b!4518487 () Bool)

(declare-fun e!2815095 () List!50764)

(assert (=> b!4518487 (= e!2815095 (Cons!50640 (h!56491 (t!357726 lt!1695573)) (removePairForKey!785 (t!357726 (t!357726 lt!1695573)) key!3287)))))

(declare-fun b!4518486 () Bool)

(assert (=> b!4518486 (= e!2815094 e!2815095)))

(declare-fun c!771012 () Bool)

(assert (=> b!4518486 (= c!771012 ((_ is Cons!50640) (t!357726 lt!1695573)))))

(declare-fun d!1391571 () Bool)

(declare-fun lt!1696085 () List!50764)

(assert (=> d!1391571 (not (containsKey!1774 lt!1696085 key!3287))))

(assert (=> d!1391571 (= lt!1696085 e!2815094)))

(declare-fun c!771011 () Bool)

(assert (=> d!1391571 (= c!771011 (and ((_ is Cons!50640) (t!357726 lt!1695573)) (= (_1!28827 (h!56491 (t!357726 lt!1695573))) key!3287)))))

(assert (=> d!1391571 (noDuplicateKeys!1158 (t!357726 lt!1695573))))

(assert (=> d!1391571 (= (removePairForKey!785 (t!357726 lt!1695573) key!3287) lt!1696085)))

(declare-fun b!4518488 () Bool)

(assert (=> b!4518488 (= e!2815095 Nil!50640)))

(assert (= (and d!1391571 c!771011) b!4518485))

(assert (= (and d!1391571 (not c!771011)) b!4518486))

(assert (= (and b!4518486 c!771012) b!4518487))

(assert (= (and b!4518486 (not c!771012)) b!4518488))

(declare-fun m!5265117 () Bool)

(assert (=> b!4518487 m!5265117))

(declare-fun m!5265119 () Bool)

(assert (=> d!1391571 m!5265119))

(declare-fun m!5265121 () Bool)

(assert (=> d!1391571 m!5265121))

(assert (=> b!4518340 d!1391571))

(declare-fun d!1391573 () Bool)

(assert (=> d!1391573 (= (head!9409 (toList!4323 lt!1695574)) (h!56492 (toList!4323 lt!1695574)))))

(assert (=> d!1391323 d!1391573))

(declare-fun d!1391575 () Bool)

(assert (=> d!1391575 (isDefined!8395 (getValueByKey!1086 (toList!4323 lm!1477) lt!1695597))))

(declare-fun lt!1696088 () Unit!94720)

(declare-fun choose!29492 (List!50765 (_ BitVec 64)) Unit!94720)

(assert (=> d!1391575 (= lt!1696088 (choose!29492 (toList!4323 lm!1477) lt!1695597))))

(declare-fun e!2815098 () Bool)

(assert (=> d!1391575 e!2815098))

(declare-fun res!1880381 () Bool)

(assert (=> d!1391575 (=> (not res!1880381) (not e!2815098))))

(assert (=> d!1391575 (= res!1880381 (isStrictlySorted!429 (toList!4323 lm!1477)))))

(assert (=> d!1391575 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lm!1477) lt!1695597) lt!1696088)))

(declare-fun b!4518491 () Bool)

(assert (=> b!4518491 (= e!2815098 (containsKey!1777 (toList!4323 lm!1477) lt!1695597))))

(assert (= (and d!1391575 res!1880381) b!4518491))

(assert (=> d!1391575 m!5264755))

(assert (=> d!1391575 m!5264755))

(assert (=> d!1391575 m!5264757))

(declare-fun m!5265123 () Bool)

(assert (=> d!1391575 m!5265123))

(assert (=> d!1391575 m!5264741))

(assert (=> b!4518491 m!5264751))

(assert (=> b!4518327 d!1391575))

(declare-fun d!1391577 () Bool)

(declare-fun isEmpty!28663 (Option!11106) Bool)

(assert (=> d!1391577 (= (isDefined!8395 (getValueByKey!1086 (toList!4323 lm!1477) lt!1695597)) (not (isEmpty!28663 (getValueByKey!1086 (toList!4323 lm!1477) lt!1695597))))))

(declare-fun bs!853929 () Bool)

(assert (= bs!853929 d!1391577))

(assert (=> bs!853929 m!5264755))

(declare-fun m!5265125 () Bool)

(assert (=> bs!853929 m!5265125))

(assert (=> b!4518327 d!1391577))

(declare-fun d!1391579 () Bool)

(declare-fun c!771017 () Bool)

(assert (=> d!1391579 (= c!771017 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (= (_1!28828 (h!56492 (toList!4323 lm!1477))) lt!1695597)))))

(declare-fun e!2815103 () Option!11106)

(assert (=> d!1391579 (= (getValueByKey!1086 (toList!4323 lm!1477) lt!1695597) e!2815103)))

(declare-fun b!4518501 () Bool)

(declare-fun e!2815104 () Option!11106)

(assert (=> b!4518501 (= e!2815103 e!2815104)))

(declare-fun c!771018 () Bool)

(assert (=> b!4518501 (= c!771018 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (not (= (_1!28828 (h!56492 (toList!4323 lm!1477))) lt!1695597))))))

(declare-fun b!4518502 () Bool)

(assert (=> b!4518502 (= e!2815104 (getValueByKey!1086 (t!357727 (toList!4323 lm!1477)) lt!1695597))))

(declare-fun b!4518503 () Bool)

(assert (=> b!4518503 (= e!2815104 None!11105)))

(declare-fun b!4518500 () Bool)

(assert (=> b!4518500 (= e!2815103 (Some!11105 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(assert (= (and d!1391579 c!771017) b!4518500))

(assert (= (and d!1391579 (not c!771017)) b!4518501))

(assert (= (and b!4518501 c!771018) b!4518502))

(assert (= (and b!4518501 (not c!771018)) b!4518503))

(declare-fun m!5265127 () Bool)

(assert (=> b!4518502 m!5265127))

(assert (=> b!4518327 d!1391579))

(declare-fun d!1391581 () Bool)

(declare-fun c!771019 () Bool)

(assert (=> d!1391581 (= c!771019 ((_ is Nil!50640) (toList!4324 lt!1695590)))))

(declare-fun e!2815105 () (InoxSet tuple2!51066))

(assert (=> d!1391581 (= (content!8350 (toList!4324 lt!1695590)) e!2815105)))

(declare-fun b!4518504 () Bool)

(assert (=> b!4518504 (= e!2815105 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518505 () Bool)

(assert (=> b!4518505 (= e!2815105 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695590)) true) (content!8350 (t!357726 (toList!4324 lt!1695590)))))))

(assert (= (and d!1391581 c!771019) b!4518504))

(assert (= (and d!1391581 (not c!771019)) b!4518505))

(declare-fun m!5265129 () Bool)

(assert (=> b!4518505 m!5265129))

(declare-fun m!5265131 () Bool)

(assert (=> b!4518505 m!5265131))

(assert (=> d!1391333 d!1391581))

(declare-fun d!1391583 () Bool)

(declare-fun c!771020 () Bool)

(assert (=> d!1391583 (= c!771020 ((_ is Nil!50640) (toList!4324 lt!1695572)))))

(declare-fun e!2815106 () (InoxSet tuple2!51066))

(assert (=> d!1391583 (= (content!8350 (toList!4324 lt!1695572)) e!2815106)))

(declare-fun b!4518506 () Bool)

(assert (=> b!4518506 (= e!2815106 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518507 () Bool)

(assert (=> b!4518507 (= e!2815106 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695572)) true) (content!8350 (t!357726 (toList!4324 lt!1695572)))))))

(assert (= (and d!1391583 c!771020) b!4518506))

(assert (= (and d!1391583 (not c!771020)) b!4518507))

(declare-fun m!5265133 () Bool)

(assert (=> b!4518507 m!5265133))

(declare-fun m!5265135 () Bool)

(assert (=> b!4518507 m!5265135))

(assert (=> d!1391333 d!1391583))

(declare-fun d!1391585 () Bool)

(assert (=> d!1391585 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695582) key!3287))))

(declare-fun lt!1696091 () Unit!94720)

(declare-fun choose!29494 (List!50764 K!12035) Unit!94720)

(assert (=> d!1391585 (= lt!1696091 (choose!29494 (toList!4324 lt!1695582) key!3287))))

(assert (=> d!1391585 (invariantList!1015 (toList!4324 lt!1695582))))

(assert (=> d!1391585 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695582) key!3287) lt!1696091)))

(declare-fun bs!853930 () Bool)

(assert (= bs!853930 d!1391585))

(assert (=> bs!853930 m!5264919))

(assert (=> bs!853930 m!5264919))

(assert (=> bs!853930 m!5264921))

(declare-fun m!5265137 () Bool)

(assert (=> bs!853930 m!5265137))

(declare-fun m!5265139 () Bool)

(assert (=> bs!853930 m!5265139))

(assert (=> b!4518404 d!1391585))

(declare-fun d!1391587 () Bool)

(declare-fun isEmpty!28664 (Option!11108) Bool)

(assert (=> d!1391587 (= (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695582) key!3287)) (not (isEmpty!28664 (getValueByKey!1088 (toList!4324 lt!1695582) key!3287))))))

(declare-fun bs!853931 () Bool)

(assert (= bs!853931 d!1391587))

(assert (=> bs!853931 m!5264919))

(declare-fun m!5265141 () Bool)

(assert (=> bs!853931 m!5265141))

(assert (=> b!4518404 d!1391587))

(declare-fun d!1391589 () Bool)

(declare-fun c!771025 () Bool)

(assert (=> d!1391589 (= c!771025 (and ((_ is Cons!50640) (toList!4324 lt!1695582)) (= (_1!28827 (h!56491 (toList!4324 lt!1695582))) key!3287)))))

(declare-fun e!2815111 () Option!11108)

(assert (=> d!1391589 (= (getValueByKey!1088 (toList!4324 lt!1695582) key!3287) e!2815111)))

(declare-fun b!4518517 () Bool)

(declare-fun e!2815112 () Option!11108)

(assert (=> b!4518517 (= e!2815111 e!2815112)))

(declare-fun c!771026 () Bool)

(assert (=> b!4518517 (= c!771026 (and ((_ is Cons!50640) (toList!4324 lt!1695582)) (not (= (_1!28827 (h!56491 (toList!4324 lt!1695582))) key!3287))))))

(declare-fun b!4518518 () Bool)

(assert (=> b!4518518 (= e!2815112 (getValueByKey!1088 (t!357726 (toList!4324 lt!1695582)) key!3287))))

(declare-fun b!4518516 () Bool)

(assert (=> b!4518516 (= e!2815111 (Some!11107 (_2!28827 (h!56491 (toList!4324 lt!1695582)))))))

(declare-fun b!4518519 () Bool)

(assert (=> b!4518519 (= e!2815112 None!11107)))

(assert (= (and d!1391589 c!771025) b!4518516))

(assert (= (and d!1391589 (not c!771025)) b!4518517))

(assert (= (and b!4518517 c!771026) b!4518518))

(assert (= (and b!4518517 (not c!771026)) b!4518519))

(declare-fun m!5265143 () Bool)

(assert (=> b!4518518 m!5265143))

(assert (=> b!4518404 d!1391589))

(declare-fun d!1391591 () Bool)

(assert (=> d!1391591 (contains!13364 (getKeysList!462 (toList!4324 lt!1695582)) key!3287)))

(declare-fun lt!1696094 () Unit!94720)

(declare-fun choose!29495 (List!50764 K!12035) Unit!94720)

(assert (=> d!1391591 (= lt!1696094 (choose!29495 (toList!4324 lt!1695582) key!3287))))

(assert (=> d!1391591 (invariantList!1015 (toList!4324 lt!1695582))))

(assert (=> d!1391591 (= (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695582) key!3287) lt!1696094)))

(declare-fun bs!853932 () Bool)

(assert (= bs!853932 d!1391591))

(assert (=> bs!853932 m!5264925))

(assert (=> bs!853932 m!5264925))

(declare-fun m!5265145 () Bool)

(assert (=> bs!853932 m!5265145))

(declare-fun m!5265147 () Bool)

(assert (=> bs!853932 m!5265147))

(assert (=> bs!853932 m!5265139))

(assert (=> b!4518404 d!1391591))

(declare-fun d!1391593 () Bool)

(declare-fun lt!1696095 () Bool)

(assert (=> d!1391593 (= lt!1696095 (select (content!8352 (toList!4323 lt!1695620)) lt!1695575))))

(declare-fun e!2815114 () Bool)

(assert (=> d!1391593 (= lt!1696095 e!2815114)))

(declare-fun res!1880382 () Bool)

(assert (=> d!1391593 (=> (not res!1880382) (not e!2815114))))

(assert (=> d!1391593 (= res!1880382 ((_ is Cons!50641) (toList!4323 lt!1695620)))))

(assert (=> d!1391593 (= (contains!13363 (toList!4323 lt!1695620) lt!1695575) lt!1696095)))

(declare-fun b!4518520 () Bool)

(declare-fun e!2815113 () Bool)

(assert (=> b!4518520 (= e!2815114 e!2815113)))

(declare-fun res!1880383 () Bool)

(assert (=> b!4518520 (=> res!1880383 e!2815113)))

(assert (=> b!4518520 (= res!1880383 (= (h!56492 (toList!4323 lt!1695620)) lt!1695575))))

(declare-fun b!4518521 () Bool)

(assert (=> b!4518521 (= e!2815113 (contains!13363 (t!357727 (toList!4323 lt!1695620)) lt!1695575))))

(assert (= (and d!1391593 res!1880382) b!4518520))

(assert (= (and b!4518520 (not res!1880383)) b!4518521))

(declare-fun m!5265149 () Bool)

(assert (=> d!1391593 m!5265149))

(declare-fun m!5265151 () Bool)

(assert (=> d!1391593 m!5265151))

(declare-fun m!5265153 () Bool)

(assert (=> b!4518521 m!5265153))

(assert (=> b!4518071 d!1391593))

(declare-fun d!1391595 () Bool)

(declare-fun c!771027 () Bool)

(assert (=> d!1391595 (= c!771027 ((_ is Nil!50640) (toList!4324 lt!1695577)))))

(declare-fun e!2815115 () (InoxSet tuple2!51066))

(assert (=> d!1391595 (= (content!8350 (toList!4324 lt!1695577)) e!2815115)))

(declare-fun b!4518522 () Bool)

(assert (=> b!4518522 (= e!2815115 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518523 () Bool)

(assert (=> b!4518523 (= e!2815115 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695577)) true) (content!8350 (t!357726 (toList!4324 lt!1695577)))))))

(assert (= (and d!1391595 c!771027) b!4518522))

(assert (= (and d!1391595 (not c!771027)) b!4518523))

(declare-fun m!5265155 () Bool)

(assert (=> b!4518523 m!5265155))

(declare-fun m!5265157 () Bool)

(assert (=> b!4518523 m!5265157))

(assert (=> d!1391511 d!1391595))

(declare-fun d!1391597 () Bool)

(declare-fun c!771028 () Bool)

(assert (=> d!1391597 (= c!771028 ((_ is Nil!50640) (toList!4324 lt!1695579)))))

(declare-fun e!2815116 () (InoxSet tuple2!51066))

(assert (=> d!1391597 (= (content!8350 (toList!4324 lt!1695579)) e!2815116)))

(declare-fun b!4518524 () Bool)

(assert (=> b!4518524 (= e!2815116 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518525 () Bool)

(assert (=> b!4518525 (= e!2815116 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695579)) true) (content!8350 (t!357726 (toList!4324 lt!1695579)))))))

(assert (= (and d!1391597 c!771028) b!4518524))

(assert (= (and d!1391597 (not c!771028)) b!4518525))

(declare-fun m!5265159 () Bool)

(assert (=> b!4518525 m!5265159))

(declare-fun m!5265161 () Bool)

(assert (=> b!4518525 m!5265161))

(assert (=> d!1391511 d!1391597))

(declare-fun d!1391599 () Bool)

(declare-fun c!771029 () Bool)

(assert (=> d!1391599 (= c!771029 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (= (_1!28828 (h!56492 (toList!4323 lm!1477))) hash!344)))))

(declare-fun e!2815117 () Option!11106)

(assert (=> d!1391599 (= (getValueByKey!1086 (toList!4323 lm!1477) hash!344) e!2815117)))

(declare-fun b!4518527 () Bool)

(declare-fun e!2815118 () Option!11106)

(assert (=> b!4518527 (= e!2815117 e!2815118)))

(declare-fun c!771030 () Bool)

(assert (=> b!4518527 (= c!771030 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (not (= (_1!28828 (h!56492 (toList!4323 lm!1477))) hash!344))))))

(declare-fun b!4518528 () Bool)

(assert (=> b!4518528 (= e!2815118 (getValueByKey!1086 (t!357727 (toList!4323 lm!1477)) hash!344))))

(declare-fun b!4518529 () Bool)

(assert (=> b!4518529 (= e!2815118 None!11105)))

(declare-fun b!4518526 () Bool)

(assert (=> b!4518526 (= e!2815117 (Some!11105 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(assert (= (and d!1391599 c!771029) b!4518526))

(assert (= (and d!1391599 (not c!771029)) b!4518527))

(assert (= (and b!4518527 c!771030) b!4518528))

(assert (= (and b!4518527 (not c!771030)) b!4518529))

(declare-fun m!5265163 () Bool)

(assert (=> b!4518528 m!5265163))

(assert (=> b!4518324 d!1391599))

(declare-fun d!1391601 () Bool)

(declare-fun res!1880384 () Bool)

(declare-fun e!2815119 () Bool)

(assert (=> d!1391601 (=> res!1880384 e!2815119)))

(assert (=> d!1391601 (= res!1880384 ((_ is Nil!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391601 (= (forall!10257 (toList!4323 lm!1477) lambda!172031) e!2815119)))

(declare-fun b!4518530 () Bool)

(declare-fun e!2815120 () Bool)

(assert (=> b!4518530 (= e!2815119 e!2815120)))

(declare-fun res!1880385 () Bool)

(assert (=> b!4518530 (=> (not res!1880385) (not e!2815120))))

(assert (=> b!4518530 (= res!1880385 (dynLambda!21159 lambda!172031 (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4518531 () Bool)

(assert (=> b!4518531 (= e!2815120 (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172031))))

(assert (= (and d!1391601 (not res!1880384)) b!4518530))

(assert (= (and b!4518530 res!1880385) b!4518531))

(declare-fun b_lambda!154681 () Bool)

(assert (=> (not b_lambda!154681) (not b!4518530)))

(declare-fun m!5265165 () Bool)

(assert (=> b!4518530 m!5265165))

(declare-fun m!5265167 () Bool)

(assert (=> b!4518531 m!5265167))

(assert (=> d!1391347 d!1391601))

(declare-fun d!1391603 () Bool)

(assert (=> d!1391603 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))))

(declare-fun lt!1696096 () Unit!94720)

(assert (=> d!1391603 (= lt!1696096 (choose!29494 (toList!4324 lt!1695584) key!3287))))

(assert (=> d!1391603 (invariantList!1015 (toList!4324 lt!1695584))))

(assert (=> d!1391603 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695584) key!3287) lt!1696096)))

(declare-fun bs!853933 () Bool)

(assert (= bs!853933 d!1391603))

(assert (=> bs!853933 m!5264331))

(assert (=> bs!853933 m!5264331))

(assert (=> bs!853933 m!5264333))

(declare-fun m!5265169 () Bool)

(assert (=> bs!853933 m!5265169))

(declare-fun m!5265171 () Bool)

(assert (=> bs!853933 m!5265171))

(assert (=> b!4518113 d!1391603))

(declare-fun d!1391605 () Bool)

(assert (=> d!1391605 (= (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287)) (not (isEmpty!28664 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))))))

(declare-fun bs!853934 () Bool)

(assert (= bs!853934 d!1391605))

(assert (=> bs!853934 m!5264331))

(declare-fun m!5265173 () Bool)

(assert (=> bs!853934 m!5265173))

(assert (=> b!4518113 d!1391605))

(declare-fun d!1391607 () Bool)

(declare-fun c!771031 () Bool)

(assert (=> d!1391607 (= c!771031 (and ((_ is Cons!50640) (toList!4324 lt!1695584)) (= (_1!28827 (h!56491 (toList!4324 lt!1695584))) key!3287)))))

(declare-fun e!2815121 () Option!11108)

(assert (=> d!1391607 (= (getValueByKey!1088 (toList!4324 lt!1695584) key!3287) e!2815121)))

(declare-fun b!4518533 () Bool)

(declare-fun e!2815122 () Option!11108)

(assert (=> b!4518533 (= e!2815121 e!2815122)))

(declare-fun c!771032 () Bool)

(assert (=> b!4518533 (= c!771032 (and ((_ is Cons!50640) (toList!4324 lt!1695584)) (not (= (_1!28827 (h!56491 (toList!4324 lt!1695584))) key!3287))))))

(declare-fun b!4518534 () Bool)

(assert (=> b!4518534 (= e!2815122 (getValueByKey!1088 (t!357726 (toList!4324 lt!1695584)) key!3287))))

(declare-fun b!4518532 () Bool)

(assert (=> b!4518532 (= e!2815121 (Some!11107 (_2!28827 (h!56491 (toList!4324 lt!1695584)))))))

(declare-fun b!4518535 () Bool)

(assert (=> b!4518535 (= e!2815122 None!11107)))

(assert (= (and d!1391607 c!771031) b!4518532))

(assert (= (and d!1391607 (not c!771031)) b!4518533))

(assert (= (and b!4518533 c!771032) b!4518534))

(assert (= (and b!4518533 (not c!771032)) b!4518535))

(declare-fun m!5265175 () Bool)

(assert (=> b!4518534 m!5265175))

(assert (=> b!4518113 d!1391607))

(declare-fun d!1391609 () Bool)

(assert (=> d!1391609 (contains!13364 (getKeysList!462 (toList!4324 lt!1695584)) key!3287)))

(declare-fun lt!1696097 () Unit!94720)

(assert (=> d!1391609 (= lt!1696097 (choose!29495 (toList!4324 lt!1695584) key!3287))))

(assert (=> d!1391609 (invariantList!1015 (toList!4324 lt!1695584))))

(assert (=> d!1391609 (= (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695584) key!3287) lt!1696097)))

(declare-fun bs!853935 () Bool)

(assert (= bs!853935 d!1391609))

(assert (=> bs!853935 m!5264337))

(assert (=> bs!853935 m!5264337))

(declare-fun m!5265177 () Bool)

(assert (=> bs!853935 m!5265177))

(declare-fun m!5265179 () Bool)

(assert (=> bs!853935 m!5265179))

(assert (=> bs!853935 m!5265171))

(assert (=> b!4518113 d!1391609))

(declare-fun d!1391611 () Bool)

(declare-fun res!1880390 () Bool)

(declare-fun e!2815127 () Bool)

(assert (=> d!1391611 (=> res!1880390 e!2815127)))

(assert (=> d!1391611 (= res!1880390 (and ((_ is Cons!50640) (toList!4324 lt!1695582)) (= (_1!28827 (h!56491 (toList!4324 lt!1695582))) key!3287)))))

(assert (=> d!1391611 (= (containsKey!1775 (toList!4324 lt!1695582) key!3287) e!2815127)))

(declare-fun b!4518540 () Bool)

(declare-fun e!2815128 () Bool)

(assert (=> b!4518540 (= e!2815127 e!2815128)))

(declare-fun res!1880391 () Bool)

(assert (=> b!4518540 (=> (not res!1880391) (not e!2815128))))

(assert (=> b!4518540 (= res!1880391 ((_ is Cons!50640) (toList!4324 lt!1695582)))))

(declare-fun b!4518541 () Bool)

(assert (=> b!4518541 (= e!2815128 (containsKey!1775 (t!357726 (toList!4324 lt!1695582)) key!3287))))

(assert (= (and d!1391611 (not res!1880390)) b!4518540))

(assert (= (and b!4518540 res!1880391) b!4518541))

(declare-fun m!5265181 () Bool)

(assert (=> b!4518541 m!5265181))

(assert (=> b!4518408 d!1391611))

(declare-fun d!1391613 () Bool)

(assert (=> d!1391613 (containsKey!1775 (toList!4324 lt!1695582) key!3287)))

(declare-fun lt!1696100 () Unit!94720)

(declare-fun choose!29497 (List!50764 K!12035) Unit!94720)

(assert (=> d!1391613 (= lt!1696100 (choose!29497 (toList!4324 lt!1695582) key!3287))))

(assert (=> d!1391613 (invariantList!1015 (toList!4324 lt!1695582))))

(assert (=> d!1391613 (= (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695582) key!3287) lt!1696100)))

(declare-fun bs!853936 () Bool)

(assert (= bs!853936 d!1391613))

(assert (=> bs!853936 m!5264927))

(declare-fun m!5265183 () Bool)

(assert (=> bs!853936 m!5265183))

(assert (=> bs!853936 m!5265139))

(assert (=> b!4518408 d!1391613))

(declare-fun d!1391615 () Bool)

(declare-fun res!1880392 () Bool)

(declare-fun e!2815129 () Bool)

(assert (=> d!1391615 (=> res!1880392 e!2815129)))

(assert (=> d!1391615 (= res!1880392 ((_ is Nil!50640) (_2!28828 lt!1695575)))))

(assert (=> d!1391615 (= (forall!10259 (_2!28828 lt!1695575) lambda!172119) e!2815129)))

(declare-fun b!4518542 () Bool)

(declare-fun e!2815130 () Bool)

(assert (=> b!4518542 (= e!2815129 e!2815130)))

(declare-fun res!1880393 () Bool)

(assert (=> b!4518542 (=> (not res!1880393) (not e!2815130))))

(assert (=> b!4518542 (= res!1880393 (dynLambda!21160 lambda!172119 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun b!4518543 () Bool)

(assert (=> b!4518543 (= e!2815130 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172119))))

(assert (= (and d!1391615 (not res!1880392)) b!4518542))

(assert (= (and b!4518542 res!1880393) b!4518543))

(declare-fun b_lambda!154683 () Bool)

(assert (=> (not b_lambda!154683) (not b!4518542)))

(declare-fun m!5265185 () Bool)

(assert (=> b!4518542 m!5265185))

(declare-fun m!5265187 () Bool)

(assert (=> b!4518543 m!5265187))

(assert (=> d!1391367 d!1391615))

(assert (=> d!1391367 d!1391521))

(declare-fun d!1391617 () Bool)

(assert (=> d!1391617 (= (isEmpty!28660 (toList!4323 lm!1477)) ((_ is Nil!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391345 d!1391617))

(declare-fun d!1391619 () Bool)

(declare-fun c!771035 () Bool)

(assert (=> d!1391619 (= c!771035 ((_ is Nil!50642) (keys!17589 lt!1695584)))))

(declare-fun e!2815133 () (InoxSet K!12035))

(assert (=> d!1391619 (= (content!8349 (keys!17589 lt!1695584)) e!2815133)))

(declare-fun b!4518548 () Bool)

(assert (=> b!4518548 (= e!2815133 ((as const (Array K!12035 Bool)) false))))

(declare-fun b!4518549 () Bool)

(assert (=> b!4518549 (= e!2815133 ((_ map or) (store ((as const (Array K!12035 Bool)) false) (h!56495 (keys!17589 lt!1695584)) true) (content!8349 (t!357728 (keys!17589 lt!1695584)))))))

(assert (= (and d!1391619 c!771035) b!4518548))

(assert (= (and d!1391619 (not c!771035)) b!4518549))

(declare-fun m!5265189 () Bool)

(assert (=> b!4518549 m!5265189))

(declare-fun m!5265191 () Bool)

(assert (=> b!4518549 m!5265191))

(assert (=> b!4518057 d!1391619))

(declare-fun bs!853937 () Bool)

(declare-fun b!4518551 () Bool)

(assert (= bs!853937 (and b!4518551 b!4518437)))

(declare-fun lambda!172172 () Int)

(assert (=> bs!853937 (= (= (toList!4324 lt!1695584) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172172 lambda!172160))))

(assert (=> b!4518551 true))

(declare-fun bs!853938 () Bool)

(declare-fun b!4518552 () Bool)

(assert (= bs!853938 (and b!4518552 b!4518438)))

(declare-fun lambda!172173 () Int)

(assert (=> bs!853938 (= lambda!172173 lambda!172161)))

(declare-fun d!1391621 () Bool)

(declare-fun e!2815134 () Bool)

(assert (=> d!1391621 e!2815134))

(declare-fun res!1880395 () Bool)

(assert (=> d!1391621 (=> (not res!1880395) (not e!2815134))))

(declare-fun lt!1696101 () List!50766)

(assert (=> d!1391621 (= res!1880395 (noDuplicate!745 lt!1696101))))

(assert (=> d!1391621 (= lt!1696101 (getKeysList!462 (toList!4324 lt!1695584)))))

(assert (=> d!1391621 (= (keys!17589 lt!1695584) lt!1696101)))

(declare-fun b!4518550 () Bool)

(declare-fun res!1880394 () Bool)

(assert (=> b!4518550 (=> (not res!1880394) (not e!2815134))))

(assert (=> b!4518550 (= res!1880394 (= (length!346 lt!1696101) (length!347 (toList!4324 lt!1695584))))))

(declare-fun res!1880396 () Bool)

(assert (=> b!4518551 (=> (not res!1880396) (not e!2815134))))

(assert (=> b!4518551 (= res!1880396 (forall!10260 lt!1696101 lambda!172172))))

(assert (=> b!4518552 (= e!2815134 (= (content!8349 lt!1696101) (content!8349 (map!11135 (toList!4324 lt!1695584) lambda!172173))))))

(assert (= (and d!1391621 res!1880395) b!4518550))

(assert (= (and b!4518550 res!1880394) b!4518551))

(assert (= (and b!4518551 res!1880396) b!4518552))

(declare-fun m!5265193 () Bool)

(assert (=> d!1391621 m!5265193))

(assert (=> d!1391621 m!5264337))

(declare-fun m!5265195 () Bool)

(assert (=> b!4518550 m!5265195))

(declare-fun m!5265197 () Bool)

(assert (=> b!4518550 m!5265197))

(declare-fun m!5265199 () Bool)

(assert (=> b!4518551 m!5265199))

(declare-fun m!5265201 () Bool)

(assert (=> b!4518552 m!5265201))

(declare-fun m!5265203 () Bool)

(assert (=> b!4518552 m!5265203))

(assert (=> b!4518552 m!5265203))

(declare-fun m!5265205 () Bool)

(assert (=> b!4518552 m!5265205))

(assert (=> b!4518057 d!1391621))

(declare-fun d!1391623 () Bool)

(declare-fun c!771036 () Bool)

(assert (=> d!1391623 (= c!771036 ((_ is Nil!50642) (keys!17589 lt!1695601)))))

(declare-fun e!2815135 () (InoxSet K!12035))

(assert (=> d!1391623 (= (content!8349 (keys!17589 lt!1695601)) e!2815135)))

(declare-fun b!4518553 () Bool)

(assert (=> b!4518553 (= e!2815135 ((as const (Array K!12035 Bool)) false))))

(declare-fun b!4518554 () Bool)

(assert (=> b!4518554 (= e!2815135 ((_ map or) (store ((as const (Array K!12035 Bool)) false) (h!56495 (keys!17589 lt!1695601)) true) (content!8349 (t!357728 (keys!17589 lt!1695601)))))))

(assert (= (and d!1391623 c!771036) b!4518553))

(assert (= (and d!1391623 (not c!771036)) b!4518554))

(declare-fun m!5265207 () Bool)

(assert (=> b!4518554 m!5265207))

(declare-fun m!5265209 () Bool)

(assert (=> b!4518554 m!5265209))

(assert (=> b!4518057 d!1391623))

(declare-fun bs!853939 () Bool)

(declare-fun b!4518556 () Bool)

(assert (= bs!853939 (and b!4518556 b!4518437)))

(declare-fun lambda!172174 () Int)

(assert (=> bs!853939 (= (= (toList!4324 lt!1695601) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172174 lambda!172160))))

(declare-fun bs!853940 () Bool)

(assert (= bs!853940 (and b!4518556 b!4518551)))

(assert (=> bs!853940 (= (= (toList!4324 lt!1695601) (toList!4324 lt!1695584)) (= lambda!172174 lambda!172172))))

(assert (=> b!4518556 true))

(declare-fun bs!853941 () Bool)

(declare-fun b!4518557 () Bool)

(assert (= bs!853941 (and b!4518557 b!4518438)))

(declare-fun lambda!172175 () Int)

(assert (=> bs!853941 (= lambda!172175 lambda!172161)))

(declare-fun bs!853942 () Bool)

(assert (= bs!853942 (and b!4518557 b!4518552)))

(assert (=> bs!853942 (= lambda!172175 lambda!172173)))

(declare-fun d!1391625 () Bool)

(declare-fun e!2815136 () Bool)

(assert (=> d!1391625 e!2815136))

(declare-fun res!1880398 () Bool)

(assert (=> d!1391625 (=> (not res!1880398) (not e!2815136))))

(declare-fun lt!1696102 () List!50766)

(assert (=> d!1391625 (= res!1880398 (noDuplicate!745 lt!1696102))))

(assert (=> d!1391625 (= lt!1696102 (getKeysList!462 (toList!4324 lt!1695601)))))

(assert (=> d!1391625 (= (keys!17589 lt!1695601) lt!1696102)))

(declare-fun b!4518555 () Bool)

(declare-fun res!1880397 () Bool)

(assert (=> b!4518555 (=> (not res!1880397) (not e!2815136))))

(assert (=> b!4518555 (= res!1880397 (= (length!346 lt!1696102) (length!347 (toList!4324 lt!1695601))))))

(declare-fun res!1880399 () Bool)

(assert (=> b!4518556 (=> (not res!1880399) (not e!2815136))))

(assert (=> b!4518556 (= res!1880399 (forall!10260 lt!1696102 lambda!172174))))

(assert (=> b!4518557 (= e!2815136 (= (content!8349 lt!1696102) (content!8349 (map!11135 (toList!4324 lt!1695601) lambda!172175))))))

(assert (= (and d!1391625 res!1880398) b!4518555))

(assert (= (and b!4518555 res!1880397) b!4518556))

(assert (= (and b!4518556 res!1880399) b!4518557))

(declare-fun m!5265211 () Bool)

(assert (=> d!1391625 m!5265211))

(declare-fun m!5265213 () Bool)

(assert (=> d!1391625 m!5265213))

(declare-fun m!5265215 () Bool)

(assert (=> b!4518555 m!5265215))

(declare-fun m!5265217 () Bool)

(assert (=> b!4518555 m!5265217))

(declare-fun m!5265219 () Bool)

(assert (=> b!4518556 m!5265219))

(declare-fun m!5265221 () Bool)

(assert (=> b!4518557 m!5265221))

(declare-fun m!5265223 () Bool)

(assert (=> b!4518557 m!5265223))

(assert (=> b!4518557 m!5265223))

(declare-fun m!5265225 () Bool)

(assert (=> b!4518557 m!5265225))

(assert (=> b!4518057 d!1391625))

(declare-fun bs!853943 () Bool)

(declare-fun d!1391627 () Bool)

(assert (= bs!853943 (and d!1391627 d!1391499)))

(declare-fun lambda!172178 () Int)

(assert (=> bs!853943 (not (= lambda!172178 lambda!172142))))

(declare-fun bs!853944 () Bool)

(assert (= bs!853944 (and d!1391627 b!4518382)))

(assert (=> bs!853944 (= lambda!172178 lambda!172144)))

(declare-fun bs!853945 () Bool)

(assert (= bs!853945 (and d!1391627 b!4518240)))

(assert (=> bs!853945 (= (= lt!1695590 lt!1695841) (= lambda!172178 lambda!172116))))

(declare-fun bs!853946 () Bool)

(assert (= bs!853946 (and d!1391627 d!1391513)))

(assert (=> bs!853946 (= (= lt!1695590 lt!1695980) (= lambda!172178 lambda!172146))))

(declare-fun bs!853947 () Bool)

(assert (= bs!853947 (and d!1391627 b!4518427)))

(assert (=> bs!853947 (= (= lt!1695590 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172178 lambda!172152))))

(declare-fun bs!853948 () Bool)

(assert (= bs!853948 (and d!1391627 b!4518242)))

(assert (=> bs!853948 (= (= lt!1695590 lt!1695572) (= lambda!172178 lambda!172114))))

(declare-fun bs!853949 () Bool)

(assert (= bs!853949 (and d!1391627 b!4518470)))

(assert (=> bs!853949 (= (= lt!1695590 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172178 lambda!172167))))

(declare-fun bs!853950 () Bool)

(assert (= bs!853950 (and d!1391627 d!1391367)))

(assert (=> bs!853950 (= (= lt!1695590 lt!1695839) (= lambda!172178 lambda!172119))))

(declare-fun bs!853951 () Bool)

(assert (= bs!853951 (and d!1391627 b!4518468)))

(assert (=> bs!853951 (= (= lt!1695590 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172178 lambda!172168))))

(declare-fun bs!853952 () Bool)

(assert (= bs!853952 (and d!1391627 b!4518384)))

(assert (=> bs!853952 (= lambda!172178 lambda!172143)))

(declare-fun bs!853953 () Bool)

(assert (= bs!853953 (and d!1391627 b!4518453)))

(assert (=> bs!853953 (= (= lt!1695590 lt!1696044) (= lambda!172178 lambda!172164))))

(assert (=> bs!853945 (= (= lt!1695590 lt!1695572) (= lambda!172178 lambda!172115))))

(declare-fun bs!853954 () Bool)

(assert (= bs!853954 (and d!1391627 b!4518425)))

(assert (=> bs!853954 (= (= lt!1695590 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172178 lambda!172153))))

(assert (=> bs!853953 (= (= lt!1695590 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172178 lambda!172163))))

(declare-fun bs!853955 () Bool)

(assert (= bs!853955 (and d!1391627 d!1391537)))

(assert (=> bs!853955 (= (= lt!1695590 lt!1696015) (= lambda!172178 lambda!172155))))

(assert (=> bs!853951 (= (= lt!1695590 lt!1696066) (= lambda!172178 lambda!172169))))

(declare-fun bs!853956 () Bool)

(assert (= bs!853956 (and d!1391627 b!4518455)))

(assert (=> bs!853956 (= (= lt!1695590 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172178 lambda!172162))))

(declare-fun bs!853957 () Bool)

(assert (= bs!853957 (and d!1391627 d!1391555)))

(assert (=> bs!853957 (= (= lt!1695590 lt!1696064) (= lambda!172178 lambda!172170))))

(assert (=> bs!853954 (= (= lt!1695590 lt!1696017) (= lambda!172178 lambda!172154))))

(assert (=> bs!853944 (= (= lt!1695590 lt!1695982) (= lambda!172178 lambda!172145))))

(declare-fun bs!853958 () Bool)

(assert (= bs!853958 (and d!1391627 d!1391547)))

(assert (=> bs!853958 (= (= lt!1695590 lt!1696042) (= lambda!172178 lambda!172165))))

(assert (=> d!1391627 true))

(assert (=> d!1391627 (forall!10259 (toList!4324 lt!1695590) lambda!172178)))

(declare-fun lt!1696105 () Unit!94720)

(declare-fun choose!29500 (ListMap!3585) Unit!94720)

(assert (=> d!1391627 (= lt!1696105 (choose!29500 lt!1695590))))

(assert (=> d!1391627 (= (lemmaContainsAllItsOwnKeys!336 lt!1695590) lt!1696105)))

(declare-fun bs!853959 () Bool)

(assert (= bs!853959 d!1391627))

(declare-fun m!5265227 () Bool)

(assert (=> bs!853959 m!5265227))

(declare-fun m!5265229 () Bool)

(assert (=> bs!853959 m!5265229))

(assert (=> bm!314759 d!1391627))

(declare-fun d!1391631 () Bool)

(declare-fun res!1880400 () Bool)

(declare-fun e!2815137 () Bool)

(assert (=> d!1391631 (=> res!1880400 e!2815137)))

(assert (=> d!1391631 (= res!1880400 (and ((_ is Cons!50640) lt!1695940) (= (_1!28827 (h!56491 lt!1695940)) key!3287)))))

(assert (=> d!1391631 (= (containsKey!1774 lt!1695940 key!3287) e!2815137)))

(declare-fun b!4518558 () Bool)

(declare-fun e!2815138 () Bool)

(assert (=> b!4518558 (= e!2815137 e!2815138)))

(declare-fun res!1880401 () Bool)

(assert (=> b!4518558 (=> (not res!1880401) (not e!2815138))))

(assert (=> b!4518558 (= res!1880401 ((_ is Cons!50640) lt!1695940))))

(declare-fun b!4518559 () Bool)

(assert (=> b!4518559 (= e!2815138 (containsKey!1774 (t!357726 lt!1695940) key!3287))))

(assert (= (and d!1391631 (not res!1880400)) b!4518558))

(assert (= (and b!4518558 res!1880401) b!4518559))

(declare-fun m!5265233 () Bool)

(assert (=> b!4518559 m!5265233))

(assert (=> d!1391473 d!1391631))

(declare-fun d!1391633 () Bool)

(declare-fun res!1880402 () Bool)

(declare-fun e!2815139 () Bool)

(assert (=> d!1391633 (=> res!1880402 e!2815139)))

(assert (=> d!1391633 (= res!1880402 (not ((_ is Cons!50640) lt!1695573)))))

(assert (=> d!1391633 (= (noDuplicateKeys!1158 lt!1695573) e!2815139)))

(declare-fun b!4518560 () Bool)

(declare-fun e!2815140 () Bool)

(assert (=> b!4518560 (= e!2815139 e!2815140)))

(declare-fun res!1880403 () Bool)

(assert (=> b!4518560 (=> (not res!1880403) (not e!2815140))))

(assert (=> b!4518560 (= res!1880403 (not (containsKey!1774 (t!357726 lt!1695573) (_1!28827 (h!56491 lt!1695573)))))))

(declare-fun b!4518561 () Bool)

(assert (=> b!4518561 (= e!2815140 (noDuplicateKeys!1158 (t!357726 lt!1695573)))))

(assert (= (and d!1391633 (not res!1880402)) b!4518560))

(assert (= (and b!4518560 res!1880403) b!4518561))

(declare-fun m!5265235 () Bool)

(assert (=> b!4518560 m!5265235))

(assert (=> b!4518561 m!5265121))

(assert (=> d!1391473 d!1391633))

(declare-fun d!1391637 () Bool)

(declare-fun res!1880413 () Bool)

(declare-fun e!2815150 () Bool)

(assert (=> d!1391637 (=> res!1880413 e!2815150)))

(assert (=> d!1391637 (= res!1880413 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (= (_1!28828 (h!56492 (toList!4323 lm!1477))) lt!1695597)))))

(assert (=> d!1391637 (= (containsKey!1777 (toList!4323 lm!1477) lt!1695597) e!2815150)))

(declare-fun b!4518573 () Bool)

(declare-fun e!2815151 () Bool)

(assert (=> b!4518573 (= e!2815150 e!2815151)))

(declare-fun res!1880414 () Bool)

(assert (=> b!4518573 (=> (not res!1880414) (not e!2815151))))

(assert (=> b!4518573 (= res!1880414 (and (or (not ((_ is Cons!50641) (toList!4323 lm!1477))) (bvsle (_1!28828 (h!56492 (toList!4323 lm!1477))) lt!1695597)) ((_ is Cons!50641) (toList!4323 lm!1477)) (bvslt (_1!28828 (h!56492 (toList!4323 lm!1477))) lt!1695597)))))

(declare-fun b!4518574 () Bool)

(assert (=> b!4518574 (= e!2815151 (containsKey!1777 (t!357727 (toList!4323 lm!1477)) lt!1695597))))

(assert (= (and d!1391637 (not res!1880413)) b!4518573))

(assert (= (and b!4518573 res!1880414) b!4518574))

(declare-fun m!5265241 () Bool)

(assert (=> b!4518574 m!5265241))

(assert (=> d!1391471 d!1391637))

(declare-fun d!1391641 () Bool)

(declare-fun c!771038 () Bool)

(assert (=> d!1391641 (= c!771038 (and ((_ is Cons!50641) (toList!4323 lt!1695610)) (= (_1!28828 (h!56492 (toList!4323 lt!1695610))) (_1!28828 lt!1695594))))))

(declare-fun e!2815152 () Option!11106)

(assert (=> d!1391641 (= (getValueByKey!1086 (toList!4323 lt!1695610) (_1!28828 lt!1695594)) e!2815152)))

(declare-fun b!4518576 () Bool)

(declare-fun e!2815153 () Option!11106)

(assert (=> b!4518576 (= e!2815152 e!2815153)))

(declare-fun c!771039 () Bool)

(assert (=> b!4518576 (= c!771039 (and ((_ is Cons!50641) (toList!4323 lt!1695610)) (not (= (_1!28828 (h!56492 (toList!4323 lt!1695610))) (_1!28828 lt!1695594)))))))

(declare-fun b!4518577 () Bool)

(assert (=> b!4518577 (= e!2815153 (getValueByKey!1086 (t!357727 (toList!4323 lt!1695610)) (_1!28828 lt!1695594)))))

(declare-fun b!4518578 () Bool)

(assert (=> b!4518578 (= e!2815153 None!11105)))

(declare-fun b!4518575 () Bool)

(assert (=> b!4518575 (= e!2815152 (Some!11105 (_2!28828 (h!56492 (toList!4323 lt!1695610)))))))

(assert (= (and d!1391641 c!771038) b!4518575))

(assert (= (and d!1391641 (not c!771038)) b!4518576))

(assert (= (and b!4518576 c!771039) b!4518577))

(assert (= (and b!4518576 (not c!771039)) b!4518578))

(declare-fun m!5265243 () Bool)

(assert (=> b!4518577 m!5265243))

(assert (=> b!4518062 d!1391641))

(declare-fun d!1391643 () Bool)

(declare-fun res!1880415 () Bool)

(declare-fun e!2815154 () Bool)

(assert (=> d!1391643 (=> res!1880415 e!2815154)))

(assert (=> d!1391643 (= res!1880415 ((_ is Nil!50640) (toList!4324 lt!1695572)))))

(assert (=> d!1391643 (= (forall!10259 (toList!4324 lt!1695572) lambda!172116) e!2815154)))

(declare-fun b!4518579 () Bool)

(declare-fun e!2815155 () Bool)

(assert (=> b!4518579 (= e!2815154 e!2815155)))

(declare-fun res!1880416 () Bool)

(assert (=> b!4518579 (=> (not res!1880416) (not e!2815155))))

(assert (=> b!4518579 (= res!1880416 (dynLambda!21160 lambda!172116 (h!56491 (toList!4324 lt!1695572))))))

(declare-fun b!4518580 () Bool)

(assert (=> b!4518580 (= e!2815155 (forall!10259 (t!357726 (toList!4324 lt!1695572)) lambda!172116))))

(assert (= (and d!1391643 (not res!1880415)) b!4518579))

(assert (= (and b!4518579 res!1880416) b!4518580))

(declare-fun b_lambda!154687 () Bool)

(assert (=> (not b_lambda!154687) (not b!4518579)))

(declare-fun m!5265245 () Bool)

(assert (=> b!4518579 m!5265245))

(declare-fun m!5265247 () Bool)

(assert (=> b!4518580 m!5265247))

(assert (=> b!4518244 d!1391643))

(declare-fun d!1391645 () Bool)

(assert (=> d!1391645 (= (tail!7732 (toList!4323 lm!1477)) (t!357727 (toList!4323 lm!1477)))))

(assert (=> d!1391437 d!1391645))

(assert (=> d!1391365 d!1391597))

(declare-fun d!1391647 () Bool)

(declare-fun c!771040 () Bool)

(assert (=> d!1391647 (= c!771040 ((_ is Nil!50640) (toList!4324 lt!1695591)))))

(declare-fun e!2815156 () (InoxSet tuple2!51066))

(assert (=> d!1391647 (= (content!8350 (toList!4324 lt!1695591)) e!2815156)))

(declare-fun b!4518581 () Bool)

(assert (=> b!4518581 (= e!2815156 ((as const (Array tuple2!51066 Bool)) false))))

(declare-fun b!4518582 () Bool)

(assert (=> b!4518582 (= e!2815156 ((_ map or) (store ((as const (Array tuple2!51066 Bool)) false) (h!56491 (toList!4324 lt!1695591)) true) (content!8350 (t!357726 (toList!4324 lt!1695591)))))))

(assert (= (and d!1391647 c!771040) b!4518581))

(assert (= (and d!1391647 (not c!771040)) b!4518582))

(declare-fun m!5265249 () Bool)

(assert (=> b!4518582 m!5265249))

(declare-fun m!5265251 () Bool)

(assert (=> b!4518582 m!5265251))

(assert (=> d!1391365 d!1391647))

(declare-fun d!1391649 () Bool)

(declare-fun e!2815157 () Bool)

(assert (=> d!1391649 e!2815157))

(declare-fun res!1880417 () Bool)

(assert (=> d!1391649 (=> res!1880417 e!2815157)))

(declare-fun lt!1696128 () Bool)

(assert (=> d!1391649 (= res!1880417 (not lt!1696128))))

(declare-fun lt!1696129 () Bool)

(assert (=> d!1391649 (= lt!1696128 lt!1696129)))

(declare-fun lt!1696127 () Unit!94720)

(declare-fun e!2815158 () Unit!94720)

(assert (=> d!1391649 (= lt!1696127 e!2815158)))

(declare-fun c!771041 () Bool)

(assert (=> d!1391649 (= c!771041 lt!1696129)))

(assert (=> d!1391649 (= lt!1696129 (containsKey!1777 (toList!4323 lt!1695620) (_1!28828 lt!1695575)))))

(assert (=> d!1391649 (= (contains!13362 lt!1695620 (_1!28828 lt!1695575)) lt!1696128)))

(declare-fun b!4518583 () Bool)

(declare-fun lt!1696130 () Unit!94720)

(assert (=> b!4518583 (= e!2815158 lt!1696130)))

(assert (=> b!4518583 (= lt!1696130 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lt!1695620) (_1!28828 lt!1695575)))))

(assert (=> b!4518583 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695620) (_1!28828 lt!1695575)))))

(declare-fun b!4518584 () Bool)

(declare-fun Unit!94829 () Unit!94720)

(assert (=> b!4518584 (= e!2815158 Unit!94829)))

(declare-fun b!4518585 () Bool)

(assert (=> b!4518585 (= e!2815157 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695620) (_1!28828 lt!1695575))))))

(assert (= (and d!1391649 c!771041) b!4518583))

(assert (= (and d!1391649 (not c!771041)) b!4518584))

(assert (= (and d!1391649 (not res!1880417)) b!4518585))

(declare-fun m!5265253 () Bool)

(assert (=> d!1391649 m!5265253))

(declare-fun m!5265255 () Bool)

(assert (=> b!4518583 m!5265255))

(assert (=> b!4518583 m!5264269))

(assert (=> b!4518583 m!5264269))

(declare-fun m!5265257 () Bool)

(assert (=> b!4518583 m!5265257))

(assert (=> b!4518585 m!5264269))

(assert (=> b!4518585 m!5264269))

(assert (=> b!4518585 m!5265257))

(assert (=> d!1391339 d!1391649))

(declare-fun d!1391651 () Bool)

(declare-fun c!771042 () Bool)

(assert (=> d!1391651 (= c!771042 (and ((_ is Cons!50641) lt!1695622) (= (_1!28828 (h!56492 lt!1695622)) (_1!28828 lt!1695575))))))

(declare-fun e!2815159 () Option!11106)

(assert (=> d!1391651 (= (getValueByKey!1086 lt!1695622 (_1!28828 lt!1695575)) e!2815159)))

(declare-fun b!4518587 () Bool)

(declare-fun e!2815160 () Option!11106)

(assert (=> b!4518587 (= e!2815159 e!2815160)))

(declare-fun c!771043 () Bool)

(assert (=> b!4518587 (= c!771043 (and ((_ is Cons!50641) lt!1695622) (not (= (_1!28828 (h!56492 lt!1695622)) (_1!28828 lt!1695575)))))))

(declare-fun b!4518588 () Bool)

(assert (=> b!4518588 (= e!2815160 (getValueByKey!1086 (t!357727 lt!1695622) (_1!28828 lt!1695575)))))

(declare-fun b!4518589 () Bool)

(assert (=> b!4518589 (= e!2815160 None!11105)))

(declare-fun b!4518586 () Bool)

(assert (=> b!4518586 (= e!2815159 (Some!11105 (_2!28828 (h!56492 lt!1695622))))))

(assert (= (and d!1391651 c!771042) b!4518586))

(assert (= (and d!1391651 (not c!771042)) b!4518587))

(assert (= (and b!4518587 c!771043) b!4518588))

(assert (= (and b!4518587 (not c!771043)) b!4518589))

(declare-fun m!5265259 () Bool)

(assert (=> b!4518588 m!5265259))

(assert (=> d!1391339 d!1391651))

(declare-fun d!1391653 () Bool)

(assert (=> d!1391653 (= (getValueByKey!1086 lt!1695622 (_1!28828 lt!1695575)) (Some!11105 (_2!28828 lt!1695575)))))

(declare-fun lt!1696133 () Unit!94720)

(declare-fun choose!29502 (List!50765 (_ BitVec 64) List!50764) Unit!94720)

(assert (=> d!1391653 (= lt!1696133 (choose!29502 lt!1695622 (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(declare-fun e!2815163 () Bool)

(assert (=> d!1391653 e!2815163))

(declare-fun res!1880422 () Bool)

(assert (=> d!1391653 (=> (not res!1880422) (not e!2815163))))

(assert (=> d!1391653 (= res!1880422 (isStrictlySorted!429 lt!1695622))))

(assert (=> d!1391653 (= (lemmaContainsTupThenGetReturnValue!673 lt!1695622 (_1!28828 lt!1695575) (_2!28828 lt!1695575)) lt!1696133)))

(declare-fun b!4518594 () Bool)

(declare-fun res!1880423 () Bool)

(assert (=> b!4518594 (=> (not res!1880423) (not e!2815163))))

(assert (=> b!4518594 (= res!1880423 (containsKey!1777 lt!1695622 (_1!28828 lt!1695575)))))

(declare-fun b!4518595 () Bool)

(assert (=> b!4518595 (= e!2815163 (contains!13363 lt!1695622 (tuple2!51069 (_1!28828 lt!1695575) (_2!28828 lt!1695575))))))

(assert (= (and d!1391653 res!1880422) b!4518594))

(assert (= (and b!4518594 res!1880423) b!4518595))

(assert (=> d!1391653 m!5264263))

(declare-fun m!5265261 () Bool)

(assert (=> d!1391653 m!5265261))

(declare-fun m!5265263 () Bool)

(assert (=> d!1391653 m!5265263))

(declare-fun m!5265265 () Bool)

(assert (=> b!4518594 m!5265265))

(declare-fun m!5265267 () Bool)

(assert (=> b!4518595 m!5265267))

(assert (=> d!1391339 d!1391653))

(declare-fun b!4518619 () Bool)

(declare-fun e!2815179 () List!50765)

(declare-fun call!314784 () List!50765)

(assert (=> b!4518619 (= e!2815179 call!314784)))

(declare-fun bm!314779 () Bool)

(declare-fun call!314785 () List!50765)

(assert (=> bm!314779 (= call!314785 call!314784)))

(declare-fun b!4518620 () Bool)

(declare-fun e!2815176 () List!50765)

(assert (=> b!4518620 (= e!2815176 (insertStrictlySorted!405 (t!357727 (toList!4323 lt!1695586)) (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(declare-fun b!4518621 () Bool)

(declare-fun res!1880429 () Bool)

(declare-fun e!2815177 () Bool)

(assert (=> b!4518621 (=> (not res!1880429) (not e!2815177))))

(declare-fun lt!1696137 () List!50765)

(assert (=> b!4518621 (= res!1880429 (containsKey!1777 lt!1696137 (_1!28828 lt!1695575)))))

(declare-fun b!4518622 () Bool)

(declare-fun c!771055 () Bool)

(assert (=> b!4518622 (= c!771055 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (bvsgt (_1!28828 (h!56492 (toList!4323 lt!1695586))) (_1!28828 lt!1695575))))))

(declare-fun e!2815178 () List!50765)

(declare-fun e!2815175 () List!50765)

(assert (=> b!4518622 (= e!2815178 e!2815175)))

(declare-fun b!4518623 () Bool)

(assert (=> b!4518623 (= e!2815179 e!2815178)))

(declare-fun c!771054 () Bool)

(assert (=> b!4518623 (= c!771054 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (= (_1!28828 (h!56492 (toList!4323 lt!1695586))) (_1!28828 lt!1695575))))))

(declare-fun d!1391655 () Bool)

(assert (=> d!1391655 e!2815177))

(declare-fun res!1880428 () Bool)

(assert (=> d!1391655 (=> (not res!1880428) (not e!2815177))))

(assert (=> d!1391655 (= res!1880428 (isStrictlySorted!429 lt!1696137))))

(assert (=> d!1391655 (= lt!1696137 e!2815179)))

(declare-fun c!771053 () Bool)

(assert (=> d!1391655 (= c!771053 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (bvslt (_1!28828 (h!56492 (toList!4323 lt!1695586))) (_1!28828 lt!1695575))))))

(assert (=> d!1391655 (isStrictlySorted!429 (toList!4323 lt!1695586))))

(assert (=> d!1391655 (= (insertStrictlySorted!405 (toList!4323 lt!1695586) (_1!28828 lt!1695575) (_2!28828 lt!1695575)) lt!1696137)))

(declare-fun b!4518618 () Bool)

(declare-fun call!314786 () List!50765)

(assert (=> b!4518618 (= e!2815175 call!314786)))

(declare-fun bm!314780 () Bool)

(declare-fun $colon$colon!932 (List!50765 tuple2!51068) List!50765)

(assert (=> bm!314780 (= call!314784 ($colon$colon!932 e!2815176 (ite c!771053 (h!56492 (toList!4323 lt!1695586)) (tuple2!51069 (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))))

(declare-fun c!771056 () Bool)

(assert (=> bm!314780 (= c!771056 c!771053)))

(declare-fun b!4518624 () Bool)

(assert (=> b!4518624 (= e!2815177 (contains!13363 lt!1696137 (tuple2!51069 (_1!28828 lt!1695575) (_2!28828 lt!1695575))))))

(declare-fun b!4518625 () Bool)

(assert (=> b!4518625 (= e!2815178 call!314785)))

(declare-fun bm!314781 () Bool)

(assert (=> bm!314781 (= call!314786 call!314785)))

(declare-fun b!4518626 () Bool)

(assert (=> b!4518626 (= e!2815176 (ite c!771054 (t!357727 (toList!4323 lt!1695586)) (ite c!771055 (Cons!50641 (h!56492 (toList!4323 lt!1695586)) (t!357727 (toList!4323 lt!1695586))) Nil!50641)))))

(declare-fun b!4518627 () Bool)

(assert (=> b!4518627 (= e!2815175 call!314786)))

(assert (= (and d!1391655 c!771053) b!4518619))

(assert (= (and d!1391655 (not c!771053)) b!4518623))

(assert (= (and b!4518623 c!771054) b!4518625))

(assert (= (and b!4518623 (not c!771054)) b!4518622))

(assert (= (and b!4518622 c!771055) b!4518627))

(assert (= (and b!4518622 (not c!771055)) b!4518618))

(assert (= (or b!4518627 b!4518618) bm!314781))

(assert (= (or b!4518625 bm!314781) bm!314779))

(assert (= (or b!4518619 bm!314779) bm!314780))

(assert (= (and bm!314780 c!771056) b!4518620))

(assert (= (and bm!314780 (not c!771056)) b!4518626))

(assert (= (and d!1391655 res!1880428) b!4518621))

(assert (= (and b!4518621 res!1880429) b!4518624))

(declare-fun m!5265313 () Bool)

(assert (=> b!4518620 m!5265313))

(declare-fun m!5265315 () Bool)

(assert (=> bm!314780 m!5265315))

(declare-fun m!5265317 () Bool)

(assert (=> b!4518621 m!5265317))

(declare-fun m!5265319 () Bool)

(assert (=> b!4518624 m!5265319))

(declare-fun m!5265321 () Bool)

(assert (=> d!1391655 m!5265321))

(declare-fun m!5265323 () Bool)

(assert (=> d!1391655 m!5265323))

(assert (=> d!1391339 d!1391655))

(declare-fun d!1391663 () Bool)

(declare-fun res!1880430 () Bool)

(declare-fun e!2815180 () Bool)

(assert (=> d!1391663 (=> res!1880430 e!2815180)))

(assert (=> d!1391663 (= res!1880430 (and ((_ is Cons!50640) (_2!28828 (h!56492 (toList!4323 lt!1695586)))) (= (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695586))))) key!3287)))))

(assert (=> d!1391663 (= (containsKey!1774 (_2!28828 (h!56492 (toList!4323 lt!1695586))) key!3287) e!2815180)))

(declare-fun b!4518628 () Bool)

(declare-fun e!2815181 () Bool)

(assert (=> b!4518628 (= e!2815180 e!2815181)))

(declare-fun res!1880431 () Bool)

(assert (=> b!4518628 (=> (not res!1880431) (not e!2815181))))

(assert (=> b!4518628 (= res!1880431 ((_ is Cons!50640) (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(declare-fun b!4518629 () Bool)

(assert (=> b!4518629 (= e!2815181 (containsKey!1774 (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695586)))) key!3287))))

(assert (= (and d!1391663 (not res!1880430)) b!4518628))

(assert (= (and b!4518628 res!1880431) b!4518629))

(declare-fun m!5265325 () Bool)

(assert (=> b!4518629 m!5265325))

(assert (=> b!4518363 d!1391663))

(declare-fun d!1391665 () Bool)

(declare-fun res!1880432 () Bool)

(declare-fun e!2815182 () Bool)

(assert (=> d!1391665 (=> res!1880432 e!2815182)))

(assert (=> d!1391665 (= res!1880432 (and ((_ is Cons!50640) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) key!3287)))))

(assert (=> d!1391665 (= (containsKey!1775 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287) e!2815182)))

(declare-fun b!4518630 () Bool)

(declare-fun e!2815183 () Bool)

(assert (=> b!4518630 (= e!2815182 e!2815183)))

(declare-fun res!1880433 () Bool)

(assert (=> b!4518630 (=> (not res!1880433) (not e!2815183))))

(assert (=> b!4518630 (= res!1880433 ((_ is Cons!50640) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))

(declare-fun b!4518631 () Bool)

(assert (=> b!4518631 (= e!2815183 (containsKey!1775 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(assert (= (and d!1391665 (not res!1880432)) b!4518630))

(assert (= (and b!4518630 res!1880433) b!4518631))

(declare-fun m!5265327 () Bool)

(assert (=> b!4518631 m!5265327))

(assert (=> d!1391349 d!1391665))

(declare-fun d!1391667 () Bool)

(declare-fun e!2815184 () Bool)

(assert (=> d!1391667 e!2815184))

(declare-fun res!1880434 () Bool)

(assert (=> d!1391667 (=> res!1880434 e!2815184)))

(declare-fun lt!1696139 () Bool)

(assert (=> d!1391667 (= res!1880434 (not lt!1696139))))

(declare-fun lt!1696140 () Bool)

(assert (=> d!1391667 (= lt!1696139 lt!1696140)))

(declare-fun lt!1696138 () Unit!94720)

(declare-fun e!2815185 () Unit!94720)

(assert (=> d!1391667 (= lt!1696138 e!2815185)))

(declare-fun c!771057 () Bool)

(assert (=> d!1391667 (= c!771057 lt!1696140)))

(assert (=> d!1391667 (= lt!1696140 (containsKey!1777 (toList!4323 lt!1695610) (_1!28828 lt!1695594)))))

(assert (=> d!1391667 (= (contains!13362 lt!1695610 (_1!28828 lt!1695594)) lt!1696139)))

(declare-fun b!4518632 () Bool)

(declare-fun lt!1696141 () Unit!94720)

(assert (=> b!4518632 (= e!2815185 lt!1696141)))

(assert (=> b!4518632 (= lt!1696141 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lt!1695610) (_1!28828 lt!1695594)))))

(assert (=> b!4518632 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695610) (_1!28828 lt!1695594)))))

(declare-fun b!4518633 () Bool)

(declare-fun Unit!94830 () Unit!94720)

(assert (=> b!4518633 (= e!2815185 Unit!94830)))

(declare-fun b!4518634 () Bool)

(assert (=> b!4518634 (= e!2815184 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695610) (_1!28828 lt!1695594))))))

(assert (= (and d!1391667 c!771057) b!4518632))

(assert (= (and d!1391667 (not c!771057)) b!4518633))

(assert (= (and d!1391667 (not res!1880434)) b!4518634))

(declare-fun m!5265329 () Bool)

(assert (=> d!1391667 m!5265329))

(declare-fun m!5265331 () Bool)

(assert (=> b!4518632 m!5265331))

(assert (=> b!4518632 m!5264229))

(assert (=> b!4518632 m!5264229))

(declare-fun m!5265333 () Bool)

(assert (=> b!4518632 m!5265333))

(assert (=> b!4518634 m!5264229))

(assert (=> b!4518634 m!5264229))

(assert (=> b!4518634 m!5265333))

(assert (=> d!1391329 d!1391667))

(declare-fun d!1391669 () Bool)

(declare-fun c!771058 () Bool)

(assert (=> d!1391669 (= c!771058 (and ((_ is Cons!50641) lt!1695612) (= (_1!28828 (h!56492 lt!1695612)) (_1!28828 lt!1695594))))))

(declare-fun e!2815186 () Option!11106)

(assert (=> d!1391669 (= (getValueByKey!1086 lt!1695612 (_1!28828 lt!1695594)) e!2815186)))

(declare-fun b!4518638 () Bool)

(declare-fun e!2815187 () Option!11106)

(assert (=> b!4518638 (= e!2815186 e!2815187)))

(declare-fun c!771059 () Bool)

(assert (=> b!4518638 (= c!771059 (and ((_ is Cons!50641) lt!1695612) (not (= (_1!28828 (h!56492 lt!1695612)) (_1!28828 lt!1695594)))))))

(declare-fun b!4518639 () Bool)

(assert (=> b!4518639 (= e!2815187 (getValueByKey!1086 (t!357727 lt!1695612) (_1!28828 lt!1695594)))))

(declare-fun b!4518640 () Bool)

(assert (=> b!4518640 (= e!2815187 None!11105)))

(declare-fun b!4518637 () Bool)

(assert (=> b!4518637 (= e!2815186 (Some!11105 (_2!28828 (h!56492 lt!1695612))))))

(assert (= (and d!1391669 c!771058) b!4518637))

(assert (= (and d!1391669 (not c!771058)) b!4518638))

(assert (= (and b!4518638 c!771059) b!4518639))

(assert (= (and b!4518638 (not c!771059)) b!4518640))

(declare-fun m!5265335 () Bool)

(assert (=> b!4518639 m!5265335))

(assert (=> d!1391329 d!1391669))

(declare-fun d!1391671 () Bool)

(assert (=> d!1391671 (= (getValueByKey!1086 lt!1695612 (_1!28828 lt!1695594)) (Some!11105 (_2!28828 lt!1695594)))))

(declare-fun lt!1696142 () Unit!94720)

(assert (=> d!1391671 (= lt!1696142 (choose!29502 lt!1695612 (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(declare-fun e!2815192 () Bool)

(assert (=> d!1391671 e!2815192))

(declare-fun res!1880435 () Bool)

(assert (=> d!1391671 (=> (not res!1880435) (not e!2815192))))

(assert (=> d!1391671 (= res!1880435 (isStrictlySorted!429 lt!1695612))))

(assert (=> d!1391671 (= (lemmaContainsTupThenGetReturnValue!673 lt!1695612 (_1!28828 lt!1695594) (_2!28828 lt!1695594)) lt!1696142)))

(declare-fun b!4518647 () Bool)

(declare-fun res!1880436 () Bool)

(assert (=> b!4518647 (=> (not res!1880436) (not e!2815192))))

(assert (=> b!4518647 (= res!1880436 (containsKey!1777 lt!1695612 (_1!28828 lt!1695594)))))

(declare-fun b!4518648 () Bool)

(assert (=> b!4518648 (= e!2815192 (contains!13363 lt!1695612 (tuple2!51069 (_1!28828 lt!1695594) (_2!28828 lt!1695594))))))

(assert (= (and d!1391671 res!1880435) b!4518647))

(assert (= (and b!4518647 res!1880436) b!4518648))

(assert (=> d!1391671 m!5264223))

(declare-fun m!5265337 () Bool)

(assert (=> d!1391671 m!5265337))

(declare-fun m!5265339 () Bool)

(assert (=> d!1391671 m!5265339))

(declare-fun m!5265341 () Bool)

(assert (=> b!4518647 m!5265341))

(declare-fun m!5265343 () Bool)

(assert (=> b!4518648 m!5265343))

(assert (=> d!1391329 d!1391671))

(declare-fun b!4518650 () Bool)

(declare-fun e!2815197 () List!50765)

(declare-fun call!314787 () List!50765)

(assert (=> b!4518650 (= e!2815197 call!314787)))

(declare-fun bm!314782 () Bool)

(declare-fun call!314788 () List!50765)

(assert (=> bm!314782 (= call!314788 call!314787)))

(declare-fun b!4518651 () Bool)

(declare-fun e!2815194 () List!50765)

(assert (=> b!4518651 (= e!2815194 (insertStrictlySorted!405 (t!357727 (toList!4323 lt!1695586)) (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(declare-fun b!4518652 () Bool)

(declare-fun res!1880438 () Bool)

(declare-fun e!2815195 () Bool)

(assert (=> b!4518652 (=> (not res!1880438) (not e!2815195))))

(declare-fun lt!1696143 () List!50765)

(assert (=> b!4518652 (= res!1880438 (containsKey!1777 lt!1696143 (_1!28828 lt!1695594)))))

(declare-fun b!4518653 () Bool)

(declare-fun c!771066 () Bool)

(assert (=> b!4518653 (= c!771066 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (bvsgt (_1!28828 (h!56492 (toList!4323 lt!1695586))) (_1!28828 lt!1695594))))))

(declare-fun e!2815196 () List!50765)

(declare-fun e!2815193 () List!50765)

(assert (=> b!4518653 (= e!2815196 e!2815193)))

(declare-fun b!4518654 () Bool)

(assert (=> b!4518654 (= e!2815197 e!2815196)))

(declare-fun c!771065 () Bool)

(assert (=> b!4518654 (= c!771065 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (= (_1!28828 (h!56492 (toList!4323 lt!1695586))) (_1!28828 lt!1695594))))))

(declare-fun d!1391673 () Bool)

(assert (=> d!1391673 e!2815195))

(declare-fun res!1880437 () Bool)

(assert (=> d!1391673 (=> (not res!1880437) (not e!2815195))))

(assert (=> d!1391673 (= res!1880437 (isStrictlySorted!429 lt!1696143))))

(assert (=> d!1391673 (= lt!1696143 e!2815197)))

(declare-fun c!771064 () Bool)

(assert (=> d!1391673 (= c!771064 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (bvslt (_1!28828 (h!56492 (toList!4323 lt!1695586))) (_1!28828 lt!1695594))))))

(assert (=> d!1391673 (isStrictlySorted!429 (toList!4323 lt!1695586))))

(assert (=> d!1391673 (= (insertStrictlySorted!405 (toList!4323 lt!1695586) (_1!28828 lt!1695594) (_2!28828 lt!1695594)) lt!1696143)))

(declare-fun b!4518649 () Bool)

(declare-fun call!314789 () List!50765)

(assert (=> b!4518649 (= e!2815193 call!314789)))

(declare-fun bm!314783 () Bool)

(assert (=> bm!314783 (= call!314787 ($colon$colon!932 e!2815194 (ite c!771064 (h!56492 (toList!4323 lt!1695586)) (tuple2!51069 (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))))

(declare-fun c!771067 () Bool)

(assert (=> bm!314783 (= c!771067 c!771064)))

(declare-fun b!4518655 () Bool)

(assert (=> b!4518655 (= e!2815195 (contains!13363 lt!1696143 (tuple2!51069 (_1!28828 lt!1695594) (_2!28828 lt!1695594))))))

(declare-fun b!4518656 () Bool)

(assert (=> b!4518656 (= e!2815196 call!314788)))

(declare-fun bm!314784 () Bool)

(assert (=> bm!314784 (= call!314789 call!314788)))

(declare-fun b!4518657 () Bool)

(assert (=> b!4518657 (= e!2815194 (ite c!771065 (t!357727 (toList!4323 lt!1695586)) (ite c!771066 (Cons!50641 (h!56492 (toList!4323 lt!1695586)) (t!357727 (toList!4323 lt!1695586))) Nil!50641)))))

(declare-fun b!4518658 () Bool)

(assert (=> b!4518658 (= e!2815193 call!314789)))

(assert (= (and d!1391673 c!771064) b!4518650))

(assert (= (and d!1391673 (not c!771064)) b!4518654))

(assert (= (and b!4518654 c!771065) b!4518656))

(assert (= (and b!4518654 (not c!771065)) b!4518653))

(assert (= (and b!4518653 c!771066) b!4518658))

(assert (= (and b!4518653 (not c!771066)) b!4518649))

(assert (= (or b!4518658 b!4518649) bm!314784))

(assert (= (or b!4518656 bm!314784) bm!314782))

(assert (= (or b!4518650 bm!314782) bm!314783))

(assert (= (and bm!314783 c!771067) b!4518651))

(assert (= (and bm!314783 (not c!771067)) b!4518657))

(assert (= (and d!1391673 res!1880437) b!4518652))

(assert (= (and b!4518652 res!1880438) b!4518655))

(declare-fun m!5265345 () Bool)

(assert (=> b!4518651 m!5265345))

(declare-fun m!5265347 () Bool)

(assert (=> bm!314783 m!5265347))

(declare-fun m!5265349 () Bool)

(assert (=> b!4518652 m!5265349))

(declare-fun m!5265351 () Bool)

(assert (=> b!4518655 m!5265351))

(declare-fun m!5265353 () Bool)

(assert (=> d!1391673 m!5265353))

(assert (=> d!1391673 m!5265323))

(assert (=> d!1391329 d!1391673))

(declare-fun d!1391675 () Bool)

(declare-fun res!1880439 () Bool)

(declare-fun e!2815198 () Bool)

(assert (=> d!1391675 (=> res!1880439 e!2815198)))

(assert (=> d!1391675 (= res!1880439 ((_ is Nil!50640) (ite c!770996 (toList!4324 lt!1695590) (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> d!1391675 (= (forall!10259 (ite c!770996 (toList!4324 lt!1695590) (t!357726 (_2!28828 lt!1695575))) (ite c!770996 lambda!172143 lambda!172145)) e!2815198)))

(declare-fun b!4518659 () Bool)

(declare-fun e!2815199 () Bool)

(assert (=> b!4518659 (= e!2815198 e!2815199)))

(declare-fun res!1880440 () Bool)

(assert (=> b!4518659 (=> (not res!1880440) (not e!2815199))))

(assert (=> b!4518659 (= res!1880440 (dynLambda!21160 (ite c!770996 lambda!172143 lambda!172145) (h!56491 (ite c!770996 (toList!4324 lt!1695590) (t!357726 (_2!28828 lt!1695575))))))))

(declare-fun b!4518660 () Bool)

(assert (=> b!4518660 (= e!2815199 (forall!10259 (t!357726 (ite c!770996 (toList!4324 lt!1695590) (t!357726 (_2!28828 lt!1695575)))) (ite c!770996 lambda!172143 lambda!172145)))))

(assert (= (and d!1391675 (not res!1880439)) b!4518659))

(assert (= (and b!4518659 res!1880440) b!4518660))

(declare-fun b_lambda!154689 () Bool)

(assert (=> (not b_lambda!154689) (not b!4518659)))

(declare-fun m!5265355 () Bool)

(assert (=> b!4518659 m!5265355))

(declare-fun m!5265357 () Bool)

(assert (=> b!4518660 m!5265357))

(assert (=> bm!314757 d!1391675))

(declare-fun d!1391677 () Bool)

(declare-fun res!1880441 () Bool)

(declare-fun e!2815202 () Bool)

(assert (=> d!1391677 (=> res!1880441 e!2815202)))

(assert (=> d!1391677 (= res!1880441 ((_ is Nil!50640) (toList!4324 lt!1695856)))))

(assert (=> d!1391677 (= (forall!10259 (toList!4324 lt!1695856) lambda!172116) e!2815202)))

(declare-fun b!4518665 () Bool)

(declare-fun e!2815203 () Bool)

(assert (=> b!4518665 (= e!2815202 e!2815203)))

(declare-fun res!1880442 () Bool)

(assert (=> b!4518665 (=> (not res!1880442) (not e!2815203))))

(assert (=> b!4518665 (= res!1880442 (dynLambda!21160 lambda!172116 (h!56491 (toList!4324 lt!1695856))))))

(declare-fun b!4518666 () Bool)

(assert (=> b!4518666 (= e!2815203 (forall!10259 (t!357726 (toList!4324 lt!1695856)) lambda!172116))))

(assert (= (and d!1391677 (not res!1880441)) b!4518665))

(assert (= (and b!4518665 res!1880442) b!4518666))

(declare-fun b_lambda!154691 () Bool)

(assert (=> (not b_lambda!154691) (not b!4518665)))

(declare-fun m!5265359 () Bool)

(assert (=> b!4518665 m!5265359))

(declare-fun m!5265361 () Bool)

(assert (=> b!4518666 m!5265361))

(assert (=> b!4518240 d!1391677))

(assert (=> b!4518240 d!1391643))

(declare-fun d!1391679 () Bool)

(declare-fun res!1880443 () Bool)

(declare-fun e!2815204 () Bool)

(assert (=> d!1391679 (=> res!1880443 e!2815204)))

(assert (=> d!1391679 (= res!1880443 ((_ is Nil!50640) (toList!4324 lt!1695572)))))

(assert (=> d!1391679 (= (forall!10259 (toList!4324 lt!1695572) lambda!172115) e!2815204)))

(declare-fun b!4518667 () Bool)

(declare-fun e!2815205 () Bool)

(assert (=> b!4518667 (= e!2815204 e!2815205)))

(declare-fun res!1880444 () Bool)

(assert (=> b!4518667 (=> (not res!1880444) (not e!2815205))))

(assert (=> b!4518667 (= res!1880444 (dynLambda!21160 lambda!172115 (h!56491 (toList!4324 lt!1695572))))))

(declare-fun b!4518668 () Bool)

(assert (=> b!4518668 (= e!2815205 (forall!10259 (t!357726 (toList!4324 lt!1695572)) lambda!172115))))

(assert (= (and d!1391679 (not res!1880443)) b!4518667))

(assert (= (and b!4518667 res!1880444) b!4518668))

(declare-fun b_lambda!154693 () Bool)

(assert (=> (not b_lambda!154693) (not b!4518667)))

(declare-fun m!5265365 () Bool)

(assert (=> b!4518667 m!5265365))

(declare-fun m!5265367 () Bool)

(assert (=> b!4518668 m!5265367))

(assert (=> b!4518240 d!1391679))

(declare-fun d!1391683 () Bool)

(declare-fun res!1880445 () Bool)

(declare-fun e!2815206 () Bool)

(assert (=> d!1391683 (=> res!1880445 e!2815206)))

(assert (=> d!1391683 (= res!1880445 ((_ is Nil!50640) (_2!28828 lt!1695575)))))

(assert (=> d!1391683 (= (forall!10259 (_2!28828 lt!1695575) lambda!172116) e!2815206)))

(declare-fun b!4518669 () Bool)

(declare-fun e!2815207 () Bool)

(assert (=> b!4518669 (= e!2815206 e!2815207)))

(declare-fun res!1880446 () Bool)

(assert (=> b!4518669 (=> (not res!1880446) (not e!2815207))))

(assert (=> b!4518669 (= res!1880446 (dynLambda!21160 lambda!172116 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun b!4518670 () Bool)

(assert (=> b!4518670 (= e!2815207 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172116))))

(assert (= (and d!1391683 (not res!1880445)) b!4518669))

(assert (= (and b!4518669 res!1880446) b!4518670))

(declare-fun b_lambda!154695 () Bool)

(assert (=> (not b_lambda!154695) (not b!4518669)))

(declare-fun m!5265369 () Bool)

(assert (=> b!4518669 m!5265369))

(declare-fun m!5265371 () Bool)

(assert (=> b!4518670 m!5265371))

(assert (=> b!4518240 d!1391683))

(declare-fun bs!854001 () Bool)

(declare-fun d!1391685 () Bool)

(assert (= bs!854001 (and d!1391685 d!1391499)))

(declare-fun lambda!172188 () Int)

(assert (=> bs!854001 (not (= lambda!172188 lambda!172142))))

(declare-fun bs!854002 () Bool)

(assert (= bs!854002 (and d!1391685 b!4518382)))

(assert (=> bs!854002 (= (= lt!1695841 lt!1695590) (= lambda!172188 lambda!172144))))

(declare-fun bs!854003 () Bool)

(assert (= bs!854003 (and d!1391685 b!4518240)))

(assert (=> bs!854003 (= lambda!172188 lambda!172116)))

(declare-fun bs!854004 () Bool)

(assert (= bs!854004 (and d!1391685 d!1391513)))

(assert (=> bs!854004 (= (= lt!1695841 lt!1695980) (= lambda!172188 lambda!172146))))

(declare-fun bs!854005 () Bool)

(assert (= bs!854005 (and d!1391685 b!4518427)))

(assert (=> bs!854005 (= (= lt!1695841 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172188 lambda!172152))))

(declare-fun bs!854006 () Bool)

(assert (= bs!854006 (and d!1391685 b!4518242)))

(assert (=> bs!854006 (= (= lt!1695841 lt!1695572) (= lambda!172188 lambda!172114))))

(declare-fun bs!854007 () Bool)

(assert (= bs!854007 (and d!1391685 d!1391627)))

(assert (=> bs!854007 (= (= lt!1695841 lt!1695590) (= lambda!172188 lambda!172178))))

(declare-fun bs!854008 () Bool)

(assert (= bs!854008 (and d!1391685 b!4518470)))

(assert (=> bs!854008 (= (= lt!1695841 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172188 lambda!172167))))

(declare-fun bs!854009 () Bool)

(assert (= bs!854009 (and d!1391685 d!1391367)))

(assert (=> bs!854009 (= (= lt!1695841 lt!1695839) (= lambda!172188 lambda!172119))))

(declare-fun bs!854010 () Bool)

(assert (= bs!854010 (and d!1391685 b!4518468)))

(assert (=> bs!854010 (= (= lt!1695841 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172188 lambda!172168))))

(declare-fun bs!854011 () Bool)

(assert (= bs!854011 (and d!1391685 b!4518384)))

(assert (=> bs!854011 (= (= lt!1695841 lt!1695590) (= lambda!172188 lambda!172143))))

(declare-fun bs!854012 () Bool)

(assert (= bs!854012 (and d!1391685 b!4518453)))

(assert (=> bs!854012 (= (= lt!1695841 lt!1696044) (= lambda!172188 lambda!172164))))

(assert (=> bs!854003 (= (= lt!1695841 lt!1695572) (= lambda!172188 lambda!172115))))

(declare-fun bs!854013 () Bool)

(assert (= bs!854013 (and d!1391685 b!4518425)))

(assert (=> bs!854013 (= (= lt!1695841 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172188 lambda!172153))))

(assert (=> bs!854012 (= (= lt!1695841 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172188 lambda!172163))))

(declare-fun bs!854014 () Bool)

(assert (= bs!854014 (and d!1391685 d!1391537)))

(assert (=> bs!854014 (= (= lt!1695841 lt!1696015) (= lambda!172188 lambda!172155))))

(assert (=> bs!854010 (= (= lt!1695841 lt!1696066) (= lambda!172188 lambda!172169))))

(declare-fun bs!854015 () Bool)

(assert (= bs!854015 (and d!1391685 b!4518455)))

(assert (=> bs!854015 (= (= lt!1695841 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172188 lambda!172162))))

(declare-fun bs!854016 () Bool)

(assert (= bs!854016 (and d!1391685 d!1391555)))

(assert (=> bs!854016 (= (= lt!1695841 lt!1696064) (= lambda!172188 lambda!172170))))

(assert (=> bs!854013 (= (= lt!1695841 lt!1696017) (= lambda!172188 lambda!172154))))

(assert (=> bs!854002 (= (= lt!1695841 lt!1695982) (= lambda!172188 lambda!172145))))

(declare-fun bs!854017 () Bool)

(assert (= bs!854017 (and d!1391685 d!1391547)))

(assert (=> bs!854017 (= (= lt!1695841 lt!1696042) (= lambda!172188 lambda!172165))))

(assert (=> d!1391685 true))

(assert (=> d!1391685 (forall!10259 (toList!4324 lt!1695572) lambda!172188)))

(declare-fun lt!1696146 () Unit!94720)

(declare-fun choose!29503 (ListMap!3585 ListMap!3585 K!12035 V!12281) Unit!94720)

(assert (=> d!1391685 (= lt!1696146 (choose!29503 lt!1695572 lt!1695841 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1391685 (forall!10259 (toList!4324 (+!1536 lt!1695572 (tuple2!51067 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))) lambda!172188)))

(assert (=> d!1391685 (= (addForallContainsKeyThenBeforeAdding!336 lt!1695572 lt!1695841 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))) lt!1696146)))

(declare-fun bs!854018 () Bool)

(assert (= bs!854018 d!1391685))

(declare-fun m!5265385 () Bool)

(assert (=> bs!854018 m!5265385))

(declare-fun m!5265387 () Bool)

(assert (=> bs!854018 m!5265387))

(declare-fun m!5265389 () Bool)

(assert (=> bs!854018 m!5265389))

(declare-fun m!5265391 () Bool)

(assert (=> bs!854018 m!5265391))

(assert (=> b!4518240 d!1391685))

(declare-fun b!4518686 () Bool)

(declare-fun e!2815227 () Bool)

(assert (=> b!4518686 (= e!2815227 (not (contains!13364 (keys!17589 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun d!1391697 () Bool)

(declare-fun e!2815224 () Bool)

(assert (=> d!1391697 e!2815224))

(declare-fun res!1880461 () Bool)

(assert (=> d!1391697 (=> res!1880461 e!2815224)))

(assert (=> d!1391697 (= res!1880461 e!2815227)))

(declare-fun res!1880463 () Bool)

(assert (=> d!1391697 (=> (not res!1880463) (not e!2815227))))

(declare-fun lt!1696153 () Bool)

(assert (=> d!1391697 (= res!1880463 (not lt!1696153))))

(declare-fun lt!1696149 () Bool)

(assert (=> d!1391697 (= lt!1696153 lt!1696149)))

(declare-fun lt!1696147 () Unit!94720)

(declare-fun e!2815225 () Unit!94720)

(assert (=> d!1391697 (= lt!1696147 e!2815225)))

(declare-fun c!771072 () Bool)

(assert (=> d!1391697 (= c!771072 lt!1696149)))

(assert (=> d!1391697 (= lt!1696149 (containsKey!1775 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1391697 (= (contains!13361 lt!1695856 (_1!28827 (h!56491 (_2!28828 lt!1695575)))) lt!1696153)))

(declare-fun b!4518687 () Bool)

(declare-fun e!2815226 () List!50766)

(assert (=> b!4518687 (= e!2815226 (keys!17589 lt!1695856))))

(declare-fun b!4518688 () Bool)

(declare-fun lt!1696151 () Unit!94720)

(assert (=> b!4518688 (= e!2815225 lt!1696151)))

(declare-fun lt!1696154 () Unit!94720)

(assert (=> b!4518688 (= lt!1696154 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> b!4518688 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696148 () Unit!94720)

(assert (=> b!4518688 (= lt!1696148 lt!1696154)))

(assert (=> b!4518688 (= lt!1696151 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun call!314790 () Bool)

(assert (=> b!4518688 call!314790))

(declare-fun b!4518689 () Bool)

(declare-fun e!2815222 () Bool)

(assert (=> b!4518689 (= e!2815224 e!2815222)))

(declare-fun res!1880462 () Bool)

(assert (=> b!4518689 (=> (not res!1880462) (not e!2815222))))

(assert (=> b!4518689 (= res!1880462 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4518690 () Bool)

(assert (=> b!4518690 (= e!2815226 (getKeysList!462 (toList!4324 lt!1695856)))))

(declare-fun b!4518691 () Bool)

(declare-fun e!2815223 () Unit!94720)

(declare-fun Unit!94842 () Unit!94720)

(assert (=> b!4518691 (= e!2815223 Unit!94842)))

(declare-fun b!4518692 () Bool)

(assert (=> b!4518692 false))

(declare-fun lt!1696150 () Unit!94720)

(declare-fun lt!1696152 () Unit!94720)

(assert (=> b!4518692 (= lt!1696150 lt!1696152)))

(assert (=> b!4518692 (containsKey!1775 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4518692 (= lt!1696152 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun Unit!94843 () Unit!94720)

(assert (=> b!4518692 (= e!2815223 Unit!94843)))

(declare-fun bm!314785 () Bool)

(assert (=> bm!314785 (= call!314790 (contains!13364 e!2815226 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun c!771070 () Bool)

(assert (=> bm!314785 (= c!771070 c!771072)))

(declare-fun b!4518693 () Bool)

(assert (=> b!4518693 (= e!2815222 (contains!13364 (keys!17589 lt!1695856) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun b!4518694 () Bool)

(assert (=> b!4518694 (= e!2815225 e!2815223)))

(declare-fun c!771071 () Bool)

(assert (=> b!4518694 (= c!771071 call!314790)))

(assert (= (and d!1391697 c!771072) b!4518688))

(assert (= (and d!1391697 (not c!771072)) b!4518694))

(assert (= (and b!4518694 c!771071) b!4518692))

(assert (= (and b!4518694 (not c!771071)) b!4518691))

(assert (= (or b!4518688 b!4518694) bm!314785))

(assert (= (and bm!314785 c!771070) b!4518690))

(assert (= (and bm!314785 (not c!771070)) b!4518687))

(assert (= (and d!1391697 res!1880463) b!4518686))

(assert (= (and d!1391697 (not res!1880461)) b!4518689))

(assert (= (and b!4518689 res!1880462) b!4518693))

(declare-fun m!5265393 () Bool)

(assert (=> b!4518687 m!5265393))

(declare-fun m!5265395 () Bool)

(assert (=> b!4518688 m!5265395))

(declare-fun m!5265397 () Bool)

(assert (=> b!4518688 m!5265397))

(assert (=> b!4518688 m!5265397))

(declare-fun m!5265399 () Bool)

(assert (=> b!4518688 m!5265399))

(declare-fun m!5265401 () Bool)

(assert (=> b!4518688 m!5265401))

(declare-fun m!5265403 () Bool)

(assert (=> b!4518690 m!5265403))

(assert (=> b!4518689 m!5265397))

(assert (=> b!4518689 m!5265397))

(assert (=> b!4518689 m!5265399))

(declare-fun m!5265405 () Bool)

(assert (=> b!4518692 m!5265405))

(declare-fun m!5265407 () Bool)

(assert (=> b!4518692 m!5265407))

(declare-fun m!5265409 () Bool)

(assert (=> bm!314785 m!5265409))

(assert (=> b!4518693 m!5265393))

(assert (=> b!4518693 m!5265393))

(declare-fun m!5265411 () Bool)

(assert (=> b!4518693 m!5265411))

(assert (=> d!1391697 m!5265405))

(assert (=> b!4518686 m!5265393))

(assert (=> b!4518686 m!5265393))

(assert (=> b!4518686 m!5265411))

(assert (=> b!4518240 d!1391697))

(declare-fun d!1391699 () Bool)

(declare-fun e!2815239 () Bool)

(assert (=> d!1391699 e!2815239))

(declare-fun res!1880474 () Bool)

(assert (=> d!1391699 (=> (not res!1880474) (not e!2815239))))

(declare-fun lt!1696169 () ListMap!3585)

(assert (=> d!1391699 (= res!1880474 (contains!13361 lt!1696169 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696172 () List!50764)

(assert (=> d!1391699 (= lt!1696169 (ListMap!3586 lt!1696172))))

(declare-fun lt!1696170 () Unit!94720)

(declare-fun lt!1696171 () Unit!94720)

(assert (=> d!1391699 (= lt!1696170 lt!1696171)))

(assert (=> d!1391699 (= (getValueByKey!1088 lt!1696172 (_1!28827 (h!56491 (_2!28828 lt!1695575)))) (Some!11107 (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!675 (List!50764 K!12035 V!12281) Unit!94720)

(assert (=> d!1391699 (= lt!1696171 (lemmaContainsTupThenGetReturnValue!675 lt!1696172 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun insertNoDuplicatedKeys!277 (List!50764 K!12035 V!12281) List!50764)

(assert (=> d!1391699 (= lt!1696172 (insertNoDuplicatedKeys!277 (toList!4324 lt!1695572) (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1391699 (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696169)))

(declare-fun b!4518711 () Bool)

(declare-fun res!1880475 () Bool)

(assert (=> b!4518711 (=> (not res!1880475) (not e!2815239))))

(assert (=> b!4518711 (= res!1880475 (= (getValueByKey!1088 (toList!4324 lt!1696169) (_1!28827 (h!56491 (_2!28828 lt!1695575)))) (Some!11107 (_2!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4518712 () Bool)

(declare-fun contains!13366 (List!50764 tuple2!51066) Bool)

(assert (=> b!4518712 (= e!2815239 (contains!13366 (toList!4324 lt!1696169) (h!56491 (_2!28828 lt!1695575))))))

(assert (= (and d!1391699 res!1880474) b!4518711))

(assert (= (and b!4518711 res!1880475) b!4518712))

(declare-fun m!5265429 () Bool)

(assert (=> d!1391699 m!5265429))

(declare-fun m!5265431 () Bool)

(assert (=> d!1391699 m!5265431))

(declare-fun m!5265433 () Bool)

(assert (=> d!1391699 m!5265433))

(declare-fun m!5265435 () Bool)

(assert (=> d!1391699 m!5265435))

(declare-fun m!5265439 () Bool)

(assert (=> b!4518711 m!5265439))

(declare-fun m!5265441 () Bool)

(assert (=> b!4518712 m!5265441))

(assert (=> b!4518240 d!1391699))

(declare-fun b!4518717 () Bool)

(declare-fun e!2815248 () Bool)

(assert (=> b!4518717 (= e!2815248 (not (contains!13364 (keys!17589 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun d!1391709 () Bool)

(declare-fun e!2815245 () Bool)

(assert (=> d!1391709 e!2815245))

(declare-fun res!1880478 () Bool)

(assert (=> d!1391709 (=> res!1880478 e!2815245)))

(assert (=> d!1391709 (= res!1880478 e!2815248)))

(declare-fun res!1880480 () Bool)

(assert (=> d!1391709 (=> (not res!1880480) (not e!2815248))))

(declare-fun lt!1696179 () Bool)

(assert (=> d!1391709 (= res!1880480 (not lt!1696179))))

(declare-fun lt!1696175 () Bool)

(assert (=> d!1391709 (= lt!1696179 lt!1696175)))

(declare-fun lt!1696173 () Unit!94720)

(declare-fun e!2815246 () Unit!94720)

(assert (=> d!1391709 (= lt!1696173 e!2815246)))

(declare-fun c!771079 () Bool)

(assert (=> d!1391709 (= c!771079 lt!1696175)))

(assert (=> d!1391709 (= lt!1696175 (containsKey!1775 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1391709 (= (contains!13361 lt!1695841 (_1!28827 (h!56491 (_2!28828 lt!1695575)))) lt!1696179)))

(declare-fun b!4518718 () Bool)

(declare-fun e!2815247 () List!50766)

(assert (=> b!4518718 (= e!2815247 (keys!17589 lt!1695841))))

(declare-fun b!4518719 () Bool)

(declare-fun lt!1696177 () Unit!94720)

(assert (=> b!4518719 (= e!2815246 lt!1696177)))

(declare-fun lt!1696180 () Unit!94720)

(assert (=> b!4518719 (= lt!1696180 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> b!4518719 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696174 () Unit!94720)

(assert (=> b!4518719 (= lt!1696174 lt!1696180)))

(assert (=> b!4518719 (= lt!1696177 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun call!314791 () Bool)

(assert (=> b!4518719 call!314791))

(declare-fun b!4518720 () Bool)

(declare-fun e!2815243 () Bool)

(assert (=> b!4518720 (= e!2815245 e!2815243)))

(declare-fun res!1880479 () Bool)

(assert (=> b!4518720 (=> (not res!1880479) (not e!2815243))))

(assert (=> b!4518720 (= res!1880479 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4518721 () Bool)

(assert (=> b!4518721 (= e!2815247 (getKeysList!462 (toList!4324 lt!1695841)))))

(declare-fun b!4518722 () Bool)

(declare-fun e!2815244 () Unit!94720)

(declare-fun Unit!94845 () Unit!94720)

(assert (=> b!4518722 (= e!2815244 Unit!94845)))

(declare-fun b!4518723 () Bool)

(assert (=> b!4518723 false))

(declare-fun lt!1696176 () Unit!94720)

(declare-fun lt!1696178 () Unit!94720)

(assert (=> b!4518723 (= lt!1696176 lt!1696178)))

(assert (=> b!4518723 (containsKey!1775 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4518723 (= lt!1696178 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun Unit!94846 () Unit!94720)

(assert (=> b!4518723 (= e!2815244 Unit!94846)))

(declare-fun bm!314786 () Bool)

(assert (=> bm!314786 (= call!314791 (contains!13364 e!2815247 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun c!771077 () Bool)

(assert (=> bm!314786 (= c!771077 c!771079)))

(declare-fun b!4518724 () Bool)

(assert (=> b!4518724 (= e!2815243 (contains!13364 (keys!17589 lt!1695841) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun b!4518725 () Bool)

(assert (=> b!4518725 (= e!2815246 e!2815244)))

(declare-fun c!771078 () Bool)

(assert (=> b!4518725 (= c!771078 call!314791)))

(assert (= (and d!1391709 c!771079) b!4518719))

(assert (= (and d!1391709 (not c!771079)) b!4518725))

(assert (= (and b!4518725 c!771078) b!4518723))

(assert (= (and b!4518725 (not c!771078)) b!4518722))

(assert (= (or b!4518719 b!4518725) bm!314786))

(assert (= (and bm!314786 c!771077) b!4518721))

(assert (= (and bm!314786 (not c!771077)) b!4518718))

(assert (= (and d!1391709 res!1880480) b!4518717))

(assert (= (and d!1391709 (not res!1880478)) b!4518720))

(assert (= (and b!4518720 res!1880479) b!4518724))

(declare-fun m!5265451 () Bool)

(assert (=> b!4518718 m!5265451))

(declare-fun m!5265453 () Bool)

(assert (=> b!4518719 m!5265453))

(declare-fun m!5265455 () Bool)

(assert (=> b!4518719 m!5265455))

(assert (=> b!4518719 m!5265455))

(declare-fun m!5265457 () Bool)

(assert (=> b!4518719 m!5265457))

(declare-fun m!5265459 () Bool)

(assert (=> b!4518719 m!5265459))

(declare-fun m!5265461 () Bool)

(assert (=> b!4518721 m!5265461))

(assert (=> b!4518720 m!5265455))

(assert (=> b!4518720 m!5265455))

(assert (=> b!4518720 m!5265457))

(declare-fun m!5265463 () Bool)

(assert (=> b!4518723 m!5265463))

(declare-fun m!5265465 () Bool)

(assert (=> b!4518723 m!5265465))

(declare-fun m!5265467 () Bool)

(assert (=> bm!314786 m!5265467))

(assert (=> b!4518724 m!5265451))

(assert (=> b!4518724 m!5265451))

(declare-fun m!5265469 () Bool)

(assert (=> b!4518724 m!5265469))

(assert (=> d!1391709 m!5265463))

(assert (=> b!4518717 m!5265451))

(assert (=> b!4518717 m!5265451))

(assert (=> b!4518717 m!5265469))

(assert (=> b!4518240 d!1391709))

(declare-fun d!1391717 () Bool)

(assert (=> d!1391717 (dynLambda!21160 lambda!172116 (h!56491 (_2!28828 lt!1695575)))))

(declare-fun lt!1696184 () Unit!94720)

(declare-fun choose!29504 (List!50764 Int tuple2!51066) Unit!94720)

(assert (=> d!1391717 (= lt!1696184 (choose!29504 (toList!4324 lt!1695856) lambda!172116 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun e!2815251 () Bool)

(assert (=> d!1391717 e!2815251))

(declare-fun res!1880483 () Bool)

(assert (=> d!1391717 (=> (not res!1880483) (not e!2815251))))

(assert (=> d!1391717 (= res!1880483 (forall!10259 (toList!4324 lt!1695856) lambda!172116))))

(assert (=> d!1391717 (= (forallContained!2511 (toList!4324 lt!1695856) lambda!172116 (h!56491 (_2!28828 lt!1695575))) lt!1696184)))

(declare-fun b!4518728 () Bool)

(assert (=> b!4518728 (= e!2815251 (contains!13366 (toList!4324 lt!1695856) (h!56491 (_2!28828 lt!1695575))))))

(assert (= (and d!1391717 res!1880483) b!4518728))

(declare-fun b_lambda!154703 () Bool)

(assert (=> (not b_lambda!154703) (not d!1391717)))

(assert (=> d!1391717 m!5265369))

(declare-fun m!5265471 () Bool)

(assert (=> d!1391717 m!5265471))

(assert (=> d!1391717 m!5264597))

(declare-fun m!5265473 () Bool)

(assert (=> b!4518728 m!5265473))

(assert (=> b!4518240 d!1391717))

(declare-fun bs!854022 () Bool)

(declare-fun b!4518731 () Bool)

(assert (= bs!854022 (and b!4518731 d!1391499)))

(declare-fun lambda!172189 () Int)

(assert (=> bs!854022 (not (= lambda!172189 lambda!172142))))

(declare-fun bs!854023 () Bool)

(assert (= bs!854023 (and b!4518731 b!4518382)))

(assert (=> bs!854023 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172189 lambda!172144))))

(declare-fun bs!854024 () Bool)

(assert (= bs!854024 (and b!4518731 b!4518240)))

(assert (=> bs!854024 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172189 lambda!172116))))

(declare-fun bs!854025 () Bool)

(assert (= bs!854025 (and b!4518731 d!1391513)))

(assert (=> bs!854025 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695980) (= lambda!172189 lambda!172146))))

(declare-fun bs!854026 () Bool)

(assert (= bs!854026 (and b!4518731 b!4518427)))

(assert (=> bs!854026 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172189 lambda!172152))))

(declare-fun bs!854027 () Bool)

(assert (= bs!854027 (and b!4518731 b!4518242)))

(assert (=> bs!854027 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172189 lambda!172114))))

(declare-fun bs!854028 () Bool)

(assert (= bs!854028 (and b!4518731 d!1391627)))

(assert (=> bs!854028 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172189 lambda!172178))))

(declare-fun bs!854029 () Bool)

(assert (= bs!854029 (and b!4518731 b!4518470)))

(assert (=> bs!854029 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172189 lambda!172167))))

(declare-fun bs!854030 () Bool)

(assert (= bs!854030 (and b!4518731 d!1391367)))

(assert (=> bs!854030 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695839) (= lambda!172189 lambda!172119))))

(declare-fun bs!854031 () Bool)

(assert (= bs!854031 (and b!4518731 b!4518468)))

(assert (=> bs!854031 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172189 lambda!172168))))

(declare-fun bs!854032 () Bool)

(assert (= bs!854032 (and b!4518731 d!1391685)))

(assert (=> bs!854032 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172189 lambda!172188))))

(declare-fun bs!854033 () Bool)

(assert (= bs!854033 (and b!4518731 b!4518384)))

(assert (=> bs!854033 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172189 lambda!172143))))

(declare-fun bs!854034 () Bool)

(assert (= bs!854034 (and b!4518731 b!4518453)))

(assert (=> bs!854034 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696044) (= lambda!172189 lambda!172164))))

(assert (=> bs!854024 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172189 lambda!172115))))

(declare-fun bs!854035 () Bool)

(assert (= bs!854035 (and b!4518731 b!4518425)))

(assert (=> bs!854035 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172189 lambda!172153))))

(assert (=> bs!854034 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172189 lambda!172163))))

(declare-fun bs!854036 () Bool)

(assert (= bs!854036 (and b!4518731 d!1391537)))

(assert (=> bs!854036 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696015) (= lambda!172189 lambda!172155))))

(assert (=> bs!854031 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696066) (= lambda!172189 lambda!172169))))

(declare-fun bs!854037 () Bool)

(assert (= bs!854037 (and b!4518731 b!4518455)))

(assert (=> bs!854037 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172189 lambda!172162))))

(declare-fun bs!854038 () Bool)

(assert (= bs!854038 (and b!4518731 d!1391555)))

(assert (=> bs!854038 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696064) (= lambda!172189 lambda!172170))))

(assert (=> bs!854035 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696017) (= lambda!172189 lambda!172154))))

(assert (=> bs!854023 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695982) (= lambda!172189 lambda!172145))))

(declare-fun bs!854039 () Bool)

(assert (= bs!854039 (and b!4518731 d!1391547)))

(assert (=> bs!854039 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696042) (= lambda!172189 lambda!172165))))

(assert (=> b!4518731 true))

(declare-fun bs!854040 () Bool)

(declare-fun b!4518729 () Bool)

(assert (= bs!854040 (and b!4518729 d!1391499)))

(declare-fun lambda!172190 () Int)

(assert (=> bs!854040 (not (= lambda!172190 lambda!172142))))

(declare-fun bs!854041 () Bool)

(assert (= bs!854041 (and b!4518729 b!4518382)))

(assert (=> bs!854041 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172190 lambda!172144))))

(declare-fun bs!854042 () Bool)

(assert (= bs!854042 (and b!4518729 b!4518240)))

(assert (=> bs!854042 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172190 lambda!172116))))

(declare-fun bs!854043 () Bool)

(assert (= bs!854043 (and b!4518729 d!1391513)))

(assert (=> bs!854043 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695980) (= lambda!172190 lambda!172146))))

(declare-fun bs!854044 () Bool)

(assert (= bs!854044 (and b!4518729 b!4518427)))

(assert (=> bs!854044 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172190 lambda!172152))))

(declare-fun bs!854045 () Bool)

(assert (= bs!854045 (and b!4518729 b!4518242)))

(assert (=> bs!854045 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172190 lambda!172114))))

(declare-fun bs!854046 () Bool)

(assert (= bs!854046 (and b!4518729 d!1391627)))

(assert (=> bs!854046 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172190 lambda!172178))))

(declare-fun bs!854047 () Bool)

(assert (= bs!854047 (and b!4518729 d!1391367)))

(assert (=> bs!854047 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695839) (= lambda!172190 lambda!172119))))

(declare-fun bs!854048 () Bool)

(assert (= bs!854048 (and b!4518729 b!4518468)))

(assert (=> bs!854048 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172190 lambda!172168))))

(declare-fun bs!854049 () Bool)

(assert (= bs!854049 (and b!4518729 d!1391685)))

(assert (=> bs!854049 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172190 lambda!172188))))

(declare-fun bs!854050 () Bool)

(assert (= bs!854050 (and b!4518729 b!4518384)))

(assert (=> bs!854050 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172190 lambda!172143))))

(declare-fun bs!854051 () Bool)

(assert (= bs!854051 (and b!4518729 b!4518453)))

(assert (=> bs!854051 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696044) (= lambda!172190 lambda!172164))))

(assert (=> bs!854042 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172190 lambda!172115))))

(declare-fun bs!854052 () Bool)

(assert (= bs!854052 (and b!4518729 b!4518425)))

(assert (=> bs!854052 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172190 lambda!172153))))

(assert (=> bs!854051 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172190 lambda!172163))))

(declare-fun bs!854053 () Bool)

(assert (= bs!854053 (and b!4518729 d!1391537)))

(assert (=> bs!854053 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696015) (= lambda!172190 lambda!172155))))

(assert (=> bs!854048 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696066) (= lambda!172190 lambda!172169))))

(declare-fun bs!854054 () Bool)

(assert (= bs!854054 (and b!4518729 b!4518455)))

(assert (=> bs!854054 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172190 lambda!172162))))

(declare-fun bs!854055 () Bool)

(assert (= bs!854055 (and b!4518729 b!4518731)))

(assert (=> bs!854055 (= lambda!172190 lambda!172189)))

(declare-fun bs!854056 () Bool)

(assert (= bs!854056 (and b!4518729 b!4518470)))

(assert (=> bs!854056 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172190 lambda!172167))))

(declare-fun bs!854057 () Bool)

(assert (= bs!854057 (and b!4518729 d!1391555)))

(assert (=> bs!854057 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696064) (= lambda!172190 lambda!172170))))

(assert (=> bs!854052 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696017) (= lambda!172190 lambda!172154))))

(assert (=> bs!854041 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1695982) (= lambda!172190 lambda!172145))))

(declare-fun bs!854058 () Bool)

(assert (= bs!854058 (and b!4518729 d!1391547)))

(assert (=> bs!854058 (= (= (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696042) (= lambda!172190 lambda!172165))))

(assert (=> b!4518729 true))

(declare-fun lambda!172193 () Int)

(assert (=> bs!854040 (not (= lambda!172193 lambda!172142))))

(declare-fun lt!1696189 () ListMap!3585)

(assert (=> bs!854041 (= (= lt!1696189 lt!1695590) (= lambda!172193 lambda!172144))))

(assert (=> bs!854042 (= (= lt!1696189 lt!1695841) (= lambda!172193 lambda!172116))))

(assert (=> bs!854043 (= (= lt!1696189 lt!1695980) (= lambda!172193 lambda!172146))))

(assert (=> bs!854044 (= (= lt!1696189 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172193 lambda!172152))))

(assert (=> bs!854045 (= (= lt!1696189 lt!1695572) (= lambda!172193 lambda!172114))))

(assert (=> bs!854046 (= (= lt!1696189 lt!1695590) (= lambda!172193 lambda!172178))))

(assert (=> bs!854047 (= (= lt!1696189 lt!1695839) (= lambda!172193 lambda!172119))))

(assert (=> bs!854048 (= (= lt!1696189 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172193 lambda!172168))))

(assert (=> bs!854049 (= (= lt!1696189 lt!1695841) (= lambda!172193 lambda!172188))))

(assert (=> b!4518729 (= (= lt!1696189 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172193 lambda!172190))))

(assert (=> bs!854050 (= (= lt!1696189 lt!1695590) (= lambda!172193 lambda!172143))))

(assert (=> bs!854051 (= (= lt!1696189 lt!1696044) (= lambda!172193 lambda!172164))))

(assert (=> bs!854042 (= (= lt!1696189 lt!1695572) (= lambda!172193 lambda!172115))))

(assert (=> bs!854052 (= (= lt!1696189 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172193 lambda!172153))))

(assert (=> bs!854051 (= (= lt!1696189 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172193 lambda!172163))))

(assert (=> bs!854053 (= (= lt!1696189 lt!1696015) (= lambda!172193 lambda!172155))))

(assert (=> bs!854048 (= (= lt!1696189 lt!1696066) (= lambda!172193 lambda!172169))))

(assert (=> bs!854054 (= (= lt!1696189 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172193 lambda!172162))))

(assert (=> bs!854055 (= (= lt!1696189 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172193 lambda!172189))))

(assert (=> bs!854056 (= (= lt!1696189 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172193 lambda!172167))))

(assert (=> bs!854057 (= (= lt!1696189 lt!1696064) (= lambda!172193 lambda!172170))))

(assert (=> bs!854052 (= (= lt!1696189 lt!1696017) (= lambda!172193 lambda!172154))))

(assert (=> bs!854041 (= (= lt!1696189 lt!1695982) (= lambda!172193 lambda!172145))))

(assert (=> bs!854058 (= (= lt!1696189 lt!1696042) (= lambda!172193 lambda!172165))))

(assert (=> b!4518729 true))

(declare-fun bs!854067 () Bool)

(declare-fun d!1391719 () Bool)

(assert (= bs!854067 (and d!1391719 d!1391499)))

(declare-fun lambda!172195 () Int)

(assert (=> bs!854067 (not (= lambda!172195 lambda!172142))))

(declare-fun bs!854068 () Bool)

(assert (= bs!854068 (and d!1391719 b!4518382)))

(declare-fun lt!1696187 () ListMap!3585)

(assert (=> bs!854068 (= (= lt!1696187 lt!1695590) (= lambda!172195 lambda!172144))))

(declare-fun bs!854069 () Bool)

(assert (= bs!854069 (and d!1391719 b!4518240)))

(assert (=> bs!854069 (= (= lt!1696187 lt!1695841) (= lambda!172195 lambda!172116))))

(declare-fun bs!854071 () Bool)

(assert (= bs!854071 (and d!1391719 d!1391513)))

(assert (=> bs!854071 (= (= lt!1696187 lt!1695980) (= lambda!172195 lambda!172146))))

(declare-fun bs!854072 () Bool)

(assert (= bs!854072 (and d!1391719 b!4518427)))

(assert (=> bs!854072 (= (= lt!1696187 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172195 lambda!172152))))

(declare-fun bs!854073 () Bool)

(assert (= bs!854073 (and d!1391719 b!4518242)))

(assert (=> bs!854073 (= (= lt!1696187 lt!1695572) (= lambda!172195 lambda!172114))))

(declare-fun bs!854074 () Bool)

(assert (= bs!854074 (and d!1391719 d!1391627)))

(assert (=> bs!854074 (= (= lt!1696187 lt!1695590) (= lambda!172195 lambda!172178))))

(declare-fun bs!854075 () Bool)

(assert (= bs!854075 (and d!1391719 d!1391367)))

(assert (=> bs!854075 (= (= lt!1696187 lt!1695839) (= lambda!172195 lambda!172119))))

(declare-fun bs!854076 () Bool)

(assert (= bs!854076 (and d!1391719 b!4518468)))

(assert (=> bs!854076 (= (= lt!1696187 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172195 lambda!172168))))

(declare-fun bs!854078 () Bool)

(assert (= bs!854078 (and d!1391719 d!1391685)))

(assert (=> bs!854078 (= (= lt!1696187 lt!1695841) (= lambda!172195 lambda!172188))))

(declare-fun bs!854079 () Bool)

(assert (= bs!854079 (and d!1391719 b!4518729)))

(assert (=> bs!854079 (= (= lt!1696187 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172195 lambda!172190))))

(declare-fun bs!854080 () Bool)

(assert (= bs!854080 (and d!1391719 b!4518384)))

(assert (=> bs!854080 (= (= lt!1696187 lt!1695590) (= lambda!172195 lambda!172143))))

(declare-fun bs!854081 () Bool)

(assert (= bs!854081 (and d!1391719 b!4518453)))

(assert (=> bs!854081 (= (= lt!1696187 lt!1696044) (= lambda!172195 lambda!172164))))

(assert (=> bs!854069 (= (= lt!1696187 lt!1695572) (= lambda!172195 lambda!172115))))

(declare-fun bs!854083 () Bool)

(assert (= bs!854083 (and d!1391719 b!4518425)))

(assert (=> bs!854083 (= (= lt!1696187 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172195 lambda!172153))))

(assert (=> bs!854081 (= (= lt!1696187 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172195 lambda!172163))))

(declare-fun bs!854084 () Bool)

(assert (= bs!854084 (and d!1391719 d!1391537)))

(assert (=> bs!854084 (= (= lt!1696187 lt!1696015) (= lambda!172195 lambda!172155))))

(assert (=> bs!854076 (= (= lt!1696187 lt!1696066) (= lambda!172195 lambda!172169))))

(declare-fun bs!854085 () Bool)

(assert (= bs!854085 (and d!1391719 b!4518455)))

(assert (=> bs!854085 (= (= lt!1696187 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172195 lambda!172162))))

(declare-fun bs!854086 () Bool)

(assert (= bs!854086 (and d!1391719 b!4518731)))

(assert (=> bs!854086 (= (= lt!1696187 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172195 lambda!172189))))

(declare-fun bs!854087 () Bool)

(assert (= bs!854087 (and d!1391719 b!4518470)))

(assert (=> bs!854087 (= (= lt!1696187 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172195 lambda!172167))))

(declare-fun bs!854088 () Bool)

(assert (= bs!854088 (and d!1391719 d!1391555)))

(assert (=> bs!854088 (= (= lt!1696187 lt!1696064) (= lambda!172195 lambda!172170))))

(assert (=> bs!854083 (= (= lt!1696187 lt!1696017) (= lambda!172195 lambda!172154))))

(assert (=> bs!854068 (= (= lt!1696187 lt!1695982) (= lambda!172195 lambda!172145))))

(assert (=> bs!854079 (= (= lt!1696187 lt!1696189) (= lambda!172195 lambda!172193))))

(declare-fun bs!854089 () Bool)

(assert (= bs!854089 (and d!1391719 d!1391547)))

(assert (=> bs!854089 (= (= lt!1696187 lt!1696042) (= lambda!172195 lambda!172165))))

(assert (=> d!1391719 true))

(declare-fun e!2815252 () ListMap!3585)

(assert (=> b!4518729 (= e!2815252 lt!1696189)))

(declare-fun lt!1696204 () ListMap!3585)

(assert (=> b!4518729 (= lt!1696204 (+!1536 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> b!4518729 (= lt!1696189 (addToMapMapFromBucket!685 (t!357726 (t!357726 (_2!28828 lt!1695575))) (+!1536 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) (h!56491 (t!357726 (_2!28828 lt!1695575))))))))

(declare-fun lt!1696185 () Unit!94720)

(declare-fun call!314794 () Unit!94720)

(assert (=> b!4518729 (= lt!1696185 call!314794)))

(assert (=> b!4518729 (forall!10259 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) lambda!172190)))

(declare-fun lt!1696196 () Unit!94720)

(assert (=> b!4518729 (= lt!1696196 lt!1696185)))

(declare-fun call!314793 () Bool)

(assert (=> b!4518729 call!314793))

(declare-fun lt!1696201 () Unit!94720)

(declare-fun Unit!94847 () Unit!94720)

(assert (=> b!4518729 (= lt!1696201 Unit!94847)))

(declare-fun call!314792 () Bool)

(assert (=> b!4518729 call!314792))

(declare-fun lt!1696195 () Unit!94720)

(declare-fun Unit!94848 () Unit!94720)

(assert (=> b!4518729 (= lt!1696195 Unit!94848)))

(declare-fun lt!1696188 () Unit!94720)

(declare-fun Unit!94849 () Unit!94720)

(assert (=> b!4518729 (= lt!1696188 Unit!94849)))

(declare-fun lt!1696197 () Unit!94720)

(assert (=> b!4518729 (= lt!1696197 (forallContained!2511 (toList!4324 lt!1696204) lambda!172193 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> b!4518729 (contains!13361 lt!1696204 (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696205 () Unit!94720)

(declare-fun Unit!94850 () Unit!94720)

(assert (=> b!4518729 (= lt!1696205 Unit!94850)))

(assert (=> b!4518729 (contains!13361 lt!1696189 (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696194 () Unit!94720)

(declare-fun Unit!94851 () Unit!94720)

(assert (=> b!4518729 (= lt!1696194 Unit!94851)))

(assert (=> b!4518729 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172193)))

(declare-fun lt!1696202 () Unit!94720)

(declare-fun Unit!94852 () Unit!94720)

(assert (=> b!4518729 (= lt!1696202 Unit!94852)))

(assert (=> b!4518729 (forall!10259 (toList!4324 lt!1696204) lambda!172193)))

(declare-fun lt!1696199 () Unit!94720)

(declare-fun Unit!94853 () Unit!94720)

(assert (=> b!4518729 (= lt!1696199 Unit!94853)))

(declare-fun lt!1696192 () Unit!94720)

(declare-fun Unit!94854 () Unit!94720)

(assert (=> b!4518729 (= lt!1696192 Unit!94854)))

(declare-fun lt!1696200 () Unit!94720)

(assert (=> b!4518729 (= lt!1696200 (addForallContainsKeyThenBeforeAdding!336 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))) lt!1696189 (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))) (_2!28827 (h!56491 (t!357726 (_2!28828 lt!1695575))))))))

(assert (=> b!4518729 (forall!10259 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) lambda!172193)))

(declare-fun lt!1696203 () Unit!94720)

(assert (=> b!4518729 (= lt!1696203 lt!1696200)))

(assert (=> b!4518729 (forall!10259 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) lambda!172193)))

(declare-fun lt!1696191 () Unit!94720)

(declare-fun Unit!94855 () Unit!94720)

(assert (=> b!4518729 (= lt!1696191 Unit!94855)))

(declare-fun res!1880485 () Bool)

(assert (=> b!4518729 (= res!1880485 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172193))))

(declare-fun e!2815253 () Bool)

(assert (=> b!4518729 (=> (not res!1880485) (not e!2815253))))

(assert (=> b!4518729 e!2815253))

(declare-fun lt!1696190 () Unit!94720)

(declare-fun Unit!94856 () Unit!94720)

(assert (=> b!4518729 (= lt!1696190 Unit!94856)))

(declare-fun b!4518730 () Bool)

(declare-fun e!2815254 () Bool)

(assert (=> b!4518730 (= e!2815254 (invariantList!1015 (toList!4324 lt!1696187)))))

(declare-fun c!771080 () Bool)

(declare-fun bm!314787 () Bool)

(assert (=> bm!314787 (= call!314792 (forall!10259 (ite c!771080 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (t!357726 (t!357726 (_2!28828 lt!1695575)))) (ite c!771080 lambda!172189 lambda!172193)))))

(assert (=> b!4518731 (= e!2815252 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun lt!1696193 () Unit!94720)

(assert (=> b!4518731 (= lt!1696193 call!314794)))

(assert (=> b!4518731 call!314792))

(declare-fun lt!1696198 () Unit!94720)

(assert (=> b!4518731 (= lt!1696198 lt!1696193)))

(assert (=> b!4518731 call!314793))

(declare-fun lt!1696186 () Unit!94720)

(declare-fun Unit!94857 () Unit!94720)

(assert (=> b!4518731 (= lt!1696186 Unit!94857)))

(assert (=> d!1391719 e!2815254))

(declare-fun res!1880484 () Bool)

(assert (=> d!1391719 (=> (not res!1880484) (not e!2815254))))

(assert (=> d!1391719 (= res!1880484 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172195))))

(assert (=> d!1391719 (= lt!1696187 e!2815252)))

(assert (=> d!1391719 (= c!771080 ((_ is Nil!50640) (t!357726 (_2!28828 lt!1695575))))))

(assert (=> d!1391719 (noDuplicateKeys!1158 (t!357726 (_2!28828 lt!1695575)))))

(assert (=> d!1391719 (= (addToMapMapFromBucket!685 (t!357726 (_2!28828 lt!1695575)) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) lt!1696187)))

(declare-fun b!4518732 () Bool)

(declare-fun res!1880486 () Bool)

(assert (=> b!4518732 (=> (not res!1880486) (not e!2815254))))

(assert (=> b!4518732 (= res!1880486 (forall!10259 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) lambda!172195))))

(declare-fun b!4518733 () Bool)

(assert (=> b!4518733 (= e!2815253 (forall!10259 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) lambda!172193))))

(declare-fun bm!314788 () Bool)

(assert (=> bm!314788 (= call!314793 (forall!10259 (ite c!771080 (toList!4324 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (toList!4324 lt!1696204)) (ite c!771080 lambda!172189 lambda!172193)))))

(declare-fun bm!314789 () Bool)

(assert (=> bm!314789 (= call!314794 (lemmaContainsAllItsOwnKeys!336 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))))))

(assert (= (and d!1391719 c!771080) b!4518731))

(assert (= (and d!1391719 (not c!771080)) b!4518729))

(assert (= (and b!4518729 res!1880485) b!4518733))

(assert (= (or b!4518731 b!4518729) bm!314787))

(assert (= (or b!4518731 b!4518729) bm!314788))

(assert (= (or b!4518731 b!4518729) bm!314789))

(assert (= (and d!1391719 res!1880484) b!4518732))

(assert (= (and b!4518732 res!1880486) b!4518730))

(declare-fun m!5265495 () Bool)

(assert (=> bm!314787 m!5265495))

(assert (=> bm!314789 m!5264581))

(declare-fun m!5265497 () Bool)

(assert (=> bm!314789 m!5265497))

(declare-fun m!5265499 () Bool)

(assert (=> b!4518733 m!5265499))

(declare-fun m!5265501 () Bool)

(assert (=> b!4518729 m!5265501))

(declare-fun m!5265503 () Bool)

(assert (=> b!4518729 m!5265503))

(assert (=> b!4518729 m!5265499))

(assert (=> b!4518729 m!5264581))

(assert (=> b!4518729 m!5265501))

(assert (=> b!4518729 m!5265499))

(declare-fun m!5265505 () Bool)

(assert (=> b!4518729 m!5265505))

(declare-fun m!5265507 () Bool)

(assert (=> b!4518729 m!5265507))

(declare-fun m!5265509 () Bool)

(assert (=> b!4518729 m!5265509))

(declare-fun m!5265511 () Bool)

(assert (=> b!4518729 m!5265511))

(assert (=> b!4518729 m!5264581))

(declare-fun m!5265513 () Bool)

(assert (=> b!4518729 m!5265513))

(declare-fun m!5265515 () Bool)

(assert (=> b!4518729 m!5265515))

(assert (=> b!4518729 m!5265509))

(declare-fun m!5265517 () Bool)

(assert (=> b!4518729 m!5265517))

(declare-fun m!5265519 () Bool)

(assert (=> d!1391719 m!5265519))

(assert (=> d!1391719 m!5264909))

(declare-fun m!5265521 () Bool)

(assert (=> bm!314788 m!5265521))

(declare-fun m!5265523 () Bool)

(assert (=> b!4518732 m!5265523))

(declare-fun m!5265525 () Bool)

(assert (=> b!4518730 m!5265525))

(assert (=> b!4518240 d!1391719))

(declare-fun d!1391729 () Bool)

(declare-fun lt!1696214 () Bool)

(assert (=> d!1391729 (= lt!1696214 (select (content!8349 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(declare-fun e!2815265 () Bool)

(assert (=> d!1391729 (= lt!1696214 e!2815265)))

(declare-fun res!1880490 () Bool)

(assert (=> d!1391729 (=> (not res!1880490) (not e!2815265))))

(assert (=> d!1391729 (= res!1880490 ((_ is Cons!50642) (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))

(assert (=> d!1391729 (= (contains!13364 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287) lt!1696214)))

(declare-fun b!4518751 () Bool)

(declare-fun e!2815266 () Bool)

(assert (=> b!4518751 (= e!2815265 e!2815266)))

(declare-fun res!1880491 () Bool)

(assert (=> b!4518751 (=> res!1880491 e!2815266)))

(assert (=> b!4518751 (= res!1880491 (= (h!56495 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(declare-fun b!4518752 () Bool)

(assert (=> b!4518752 (= e!2815266 (contains!13364 (t!357728 (keys!17589 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(assert (= (and d!1391729 res!1880490) b!4518751))

(assert (= (and b!4518751 (not res!1880491)) b!4518752))

(assert (=> d!1391729 m!5264287))

(declare-fun m!5265527 () Bool)

(assert (=> d!1391729 m!5265527))

(declare-fun m!5265529 () Bool)

(assert (=> d!1391729 m!5265529))

(declare-fun m!5265531 () Bool)

(assert (=> b!4518752 m!5265531))

(assert (=> b!4518094 d!1391729))

(assert (=> b!4518094 d!1391539))

(declare-fun bs!854090 () Bool)

(declare-fun b!4518755 () Bool)

(assert (= bs!854090 (and b!4518755 d!1391499)))

(declare-fun lambda!172196 () Int)

(assert (=> bs!854090 (not (= lambda!172196 lambda!172142))))

(declare-fun bs!854091 () Bool)

(assert (= bs!854091 (and b!4518755 b!4518382)))

(assert (=> bs!854091 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695590) (= lambda!172196 lambda!172144))))

(declare-fun bs!854092 () Bool)

(assert (= bs!854092 (and b!4518755 b!4518240)))

(assert (=> bs!854092 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695841) (= lambda!172196 lambda!172116))))

(declare-fun bs!854093 () Bool)

(assert (= bs!854093 (and b!4518755 d!1391513)))

(assert (=> bs!854093 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695980) (= lambda!172196 lambda!172146))))

(declare-fun bs!854094 () Bool)

(assert (= bs!854094 (and b!4518755 b!4518427)))

(assert (=> bs!854094 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172196 lambda!172152))))

(declare-fun bs!854095 () Bool)

(assert (= bs!854095 (and b!4518755 b!4518242)))

(assert (=> bs!854095 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695572) (= lambda!172196 lambda!172114))))

(declare-fun bs!854096 () Bool)

(assert (= bs!854096 (and b!4518755 d!1391627)))

(assert (=> bs!854096 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695590) (= lambda!172196 lambda!172178))))

(declare-fun bs!854097 () Bool)

(assert (= bs!854097 (and b!4518755 d!1391367)))

(assert (=> bs!854097 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695839) (= lambda!172196 lambda!172119))))

(declare-fun bs!854098 () Bool)

(assert (= bs!854098 (and b!4518755 b!4518468)))

(assert (=> bs!854098 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172196 lambda!172168))))

(declare-fun bs!854099 () Bool)

(assert (= bs!854099 (and b!4518755 d!1391685)))

(assert (=> bs!854099 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695841) (= lambda!172196 lambda!172188))))

(declare-fun bs!854100 () Bool)

(assert (= bs!854100 (and b!4518755 b!4518729)))

(assert (=> bs!854100 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172196 lambda!172190))))

(declare-fun bs!854101 () Bool)

(assert (= bs!854101 (and b!4518755 b!4518384)))

(assert (=> bs!854101 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695590) (= lambda!172196 lambda!172143))))

(declare-fun bs!854102 () Bool)

(assert (= bs!854102 (and b!4518755 b!4518453)))

(assert (=> bs!854102 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696044) (= lambda!172196 lambda!172164))))

(assert (=> bs!854092 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695572) (= lambda!172196 lambda!172115))))

(declare-fun bs!854103 () Bool)

(assert (= bs!854103 (and b!4518755 b!4518425)))

(assert (=> bs!854103 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172196 lambda!172153))))

(assert (=> bs!854102 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172196 lambda!172163))))

(declare-fun bs!854104 () Bool)

(assert (= bs!854104 (and b!4518755 d!1391537)))

(assert (=> bs!854104 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696015) (= lambda!172196 lambda!172155))))

(assert (=> bs!854098 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696066) (= lambda!172196 lambda!172169))))

(declare-fun bs!854105 () Bool)

(assert (= bs!854105 (and b!4518755 b!4518455)))

(assert (=> bs!854105 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172196 lambda!172162))))

(declare-fun bs!854106 () Bool)

(assert (= bs!854106 (and b!4518755 d!1391719)))

(assert (=> bs!854106 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696187) (= lambda!172196 lambda!172195))))

(declare-fun bs!854107 () Bool)

(assert (= bs!854107 (and b!4518755 b!4518731)))

(assert (=> bs!854107 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172196 lambda!172189))))

(declare-fun bs!854108 () Bool)

(assert (= bs!854108 (and b!4518755 b!4518470)))

(assert (=> bs!854108 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172196 lambda!172167))))

(declare-fun bs!854109 () Bool)

(assert (= bs!854109 (and b!4518755 d!1391555)))

(assert (=> bs!854109 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696064) (= lambda!172196 lambda!172170))))

(assert (=> bs!854103 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696017) (= lambda!172196 lambda!172154))))

(assert (=> bs!854091 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695982) (= lambda!172196 lambda!172145))))

(assert (=> bs!854100 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696189) (= lambda!172196 lambda!172193))))

(declare-fun bs!854110 () Bool)

(assert (= bs!854110 (and b!4518755 d!1391547)))

(assert (=> bs!854110 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696042) (= lambda!172196 lambda!172165))))

(assert (=> b!4518755 true))

(declare-fun bs!854111 () Bool)

(declare-fun b!4518753 () Bool)

(assert (= bs!854111 (and b!4518753 d!1391499)))

(declare-fun lambda!172197 () Int)

(assert (=> bs!854111 (not (= lambda!172197 lambda!172142))))

(declare-fun bs!854112 () Bool)

(assert (= bs!854112 (and b!4518753 b!4518382)))

(assert (=> bs!854112 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695590) (= lambda!172197 lambda!172144))))

(declare-fun bs!854113 () Bool)

(assert (= bs!854113 (and b!4518753 d!1391513)))

(assert (=> bs!854113 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695980) (= lambda!172197 lambda!172146))))

(declare-fun bs!854114 () Bool)

(assert (= bs!854114 (and b!4518753 b!4518427)))

(assert (=> bs!854114 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172197 lambda!172152))))

(declare-fun bs!854115 () Bool)

(assert (= bs!854115 (and b!4518753 b!4518242)))

(assert (=> bs!854115 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695572) (= lambda!172197 lambda!172114))))

(declare-fun bs!854116 () Bool)

(assert (= bs!854116 (and b!4518753 d!1391627)))

(assert (=> bs!854116 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695590) (= lambda!172197 lambda!172178))))

(declare-fun bs!854117 () Bool)

(assert (= bs!854117 (and b!4518753 d!1391367)))

(assert (=> bs!854117 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695839) (= lambda!172197 lambda!172119))))

(declare-fun bs!854118 () Bool)

(assert (= bs!854118 (and b!4518753 b!4518468)))

(assert (=> bs!854118 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172197 lambda!172168))))

(declare-fun bs!854119 () Bool)

(assert (= bs!854119 (and b!4518753 d!1391685)))

(assert (=> bs!854119 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695841) (= lambda!172197 lambda!172188))))

(declare-fun bs!854120 () Bool)

(assert (= bs!854120 (and b!4518753 b!4518729)))

(assert (=> bs!854120 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172197 lambda!172190))))

(declare-fun bs!854121 () Bool)

(assert (= bs!854121 (and b!4518753 b!4518384)))

(assert (=> bs!854121 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695590) (= lambda!172197 lambda!172143))))

(declare-fun bs!854122 () Bool)

(assert (= bs!854122 (and b!4518753 b!4518453)))

(assert (=> bs!854122 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696044) (= lambda!172197 lambda!172164))))

(declare-fun bs!854123 () Bool)

(assert (= bs!854123 (and b!4518753 b!4518240)))

(assert (=> bs!854123 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695572) (= lambda!172197 lambda!172115))))

(declare-fun bs!854124 () Bool)

(assert (= bs!854124 (and b!4518753 b!4518425)))

(assert (=> bs!854124 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172197 lambda!172153))))

(assert (=> bs!854122 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172197 lambda!172163))))

(declare-fun bs!854125 () Bool)

(assert (= bs!854125 (and b!4518753 d!1391537)))

(assert (=> bs!854125 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696015) (= lambda!172197 lambda!172155))))

(declare-fun bs!854126 () Bool)

(assert (= bs!854126 (and b!4518753 b!4518755)))

(assert (=> bs!854126 (= lambda!172197 lambda!172196)))

(assert (=> bs!854123 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695841) (= lambda!172197 lambda!172116))))

(assert (=> bs!854118 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696066) (= lambda!172197 lambda!172169))))

(declare-fun bs!854127 () Bool)

(assert (= bs!854127 (and b!4518753 b!4518455)))

(assert (=> bs!854127 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172197 lambda!172162))))

(declare-fun bs!854128 () Bool)

(assert (= bs!854128 (and b!4518753 d!1391719)))

(assert (=> bs!854128 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696187) (= lambda!172197 lambda!172195))))

(declare-fun bs!854129 () Bool)

(assert (= bs!854129 (and b!4518753 b!4518731)))

(assert (=> bs!854129 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172197 lambda!172189))))

(declare-fun bs!854130 () Bool)

(assert (= bs!854130 (and b!4518753 b!4518470)))

(assert (=> bs!854130 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172197 lambda!172167))))

(declare-fun bs!854131 () Bool)

(assert (= bs!854131 (and b!4518753 d!1391555)))

(assert (=> bs!854131 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696064) (= lambda!172197 lambda!172170))))

(assert (=> bs!854124 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696017) (= lambda!172197 lambda!172154))))

(assert (=> bs!854112 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1695982) (= lambda!172197 lambda!172145))))

(assert (=> bs!854120 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696189) (= lambda!172197 lambda!172193))))

(declare-fun bs!854132 () Bool)

(assert (= bs!854132 (and b!4518753 d!1391547)))

(assert (=> bs!854132 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696042) (= lambda!172197 lambda!172165))))

(assert (=> b!4518753 true))

(declare-fun lambda!172198 () Int)

(assert (=> bs!854111 (not (= lambda!172198 lambda!172142))))

(declare-fun lt!1696219 () ListMap!3585)

(assert (=> bs!854112 (= (= lt!1696219 lt!1695590) (= lambda!172198 lambda!172144))))

(assert (=> bs!854113 (= (= lt!1696219 lt!1695980) (= lambda!172198 lambda!172146))))

(assert (=> bs!854114 (= (= lt!1696219 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172198 lambda!172152))))

(assert (=> bs!854115 (= (= lt!1696219 lt!1695572) (= lambda!172198 lambda!172114))))

(assert (=> bs!854116 (= (= lt!1696219 lt!1695590) (= lambda!172198 lambda!172178))))

(assert (=> bs!854117 (= (= lt!1696219 lt!1695839) (= lambda!172198 lambda!172119))))

(assert (=> bs!854118 (= (= lt!1696219 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172198 lambda!172168))))

(assert (=> bs!854119 (= (= lt!1696219 lt!1695841) (= lambda!172198 lambda!172188))))

(assert (=> bs!854120 (= (= lt!1696219 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172198 lambda!172190))))

(assert (=> bs!854121 (= (= lt!1696219 lt!1695590) (= lambda!172198 lambda!172143))))

(assert (=> bs!854122 (= (= lt!1696219 lt!1696044) (= lambda!172198 lambda!172164))))

(assert (=> bs!854123 (= (= lt!1696219 lt!1695572) (= lambda!172198 lambda!172115))))

(assert (=> bs!854124 (= (= lt!1696219 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172198 lambda!172153))))

(assert (=> b!4518753 (= (= lt!1696219 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172198 lambda!172197))))

(assert (=> bs!854122 (= (= lt!1696219 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172198 lambda!172163))))

(assert (=> bs!854125 (= (= lt!1696219 lt!1696015) (= lambda!172198 lambda!172155))))

(assert (=> bs!854126 (= (= lt!1696219 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172198 lambda!172196))))

(assert (=> bs!854123 (= (= lt!1696219 lt!1695841) (= lambda!172198 lambda!172116))))

(assert (=> bs!854118 (= (= lt!1696219 lt!1696066) (= lambda!172198 lambda!172169))))

(assert (=> bs!854127 (= (= lt!1696219 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172198 lambda!172162))))

(assert (=> bs!854128 (= (= lt!1696219 lt!1696187) (= lambda!172198 lambda!172195))))

(assert (=> bs!854129 (= (= lt!1696219 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172198 lambda!172189))))

(assert (=> bs!854130 (= (= lt!1696219 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172198 lambda!172167))))

(assert (=> bs!854131 (= (= lt!1696219 lt!1696064) (= lambda!172198 lambda!172170))))

(assert (=> bs!854124 (= (= lt!1696219 lt!1696017) (= lambda!172198 lambda!172154))))

(assert (=> bs!854112 (= (= lt!1696219 lt!1695982) (= lambda!172198 lambda!172145))))

(assert (=> bs!854120 (= (= lt!1696219 lt!1696189) (= lambda!172198 lambda!172193))))

(assert (=> bs!854132 (= (= lt!1696219 lt!1696042) (= lambda!172198 lambda!172165))))

(assert (=> b!4518753 true))

(declare-fun bs!854133 () Bool)

(declare-fun d!1391731 () Bool)

(assert (= bs!854133 (and d!1391731 d!1391499)))

(declare-fun lambda!172199 () Int)

(assert (=> bs!854133 (not (= lambda!172199 lambda!172142))))

(declare-fun bs!854134 () Bool)

(assert (= bs!854134 (and d!1391731 b!4518382)))

(declare-fun lt!1696217 () ListMap!3585)

(assert (=> bs!854134 (= (= lt!1696217 lt!1695590) (= lambda!172199 lambda!172144))))

(declare-fun bs!854135 () Bool)

(assert (= bs!854135 (and d!1391731 d!1391513)))

(assert (=> bs!854135 (= (= lt!1696217 lt!1695980) (= lambda!172199 lambda!172146))))

(declare-fun bs!854136 () Bool)

(assert (= bs!854136 (and d!1391731 b!4518427)))

(assert (=> bs!854136 (= (= lt!1696217 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172199 lambda!172152))))

(declare-fun bs!854137 () Bool)

(assert (= bs!854137 (and d!1391731 b!4518242)))

(assert (=> bs!854137 (= (= lt!1696217 lt!1695572) (= lambda!172199 lambda!172114))))

(declare-fun bs!854138 () Bool)

(assert (= bs!854138 (and d!1391731 d!1391627)))

(assert (=> bs!854138 (= (= lt!1696217 lt!1695590) (= lambda!172199 lambda!172178))))

(declare-fun bs!854139 () Bool)

(assert (= bs!854139 (and d!1391731 b!4518468)))

(assert (=> bs!854139 (= (= lt!1696217 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172199 lambda!172168))))

(declare-fun bs!854140 () Bool)

(assert (= bs!854140 (and d!1391731 d!1391685)))

(assert (=> bs!854140 (= (= lt!1696217 lt!1695841) (= lambda!172199 lambda!172188))))

(declare-fun bs!854141 () Bool)

(assert (= bs!854141 (and d!1391731 b!4518729)))

(assert (=> bs!854141 (= (= lt!1696217 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172199 lambda!172190))))

(declare-fun bs!854142 () Bool)

(assert (= bs!854142 (and d!1391731 b!4518384)))

(assert (=> bs!854142 (= (= lt!1696217 lt!1695590) (= lambda!172199 lambda!172143))))

(declare-fun bs!854143 () Bool)

(assert (= bs!854143 (and d!1391731 b!4518453)))

(assert (=> bs!854143 (= (= lt!1696217 lt!1696044) (= lambda!172199 lambda!172164))))

(declare-fun bs!854144 () Bool)

(assert (= bs!854144 (and d!1391731 b!4518240)))

(assert (=> bs!854144 (= (= lt!1696217 lt!1695572) (= lambda!172199 lambda!172115))))

(declare-fun bs!854145 () Bool)

(assert (= bs!854145 (and d!1391731 b!4518425)))

(assert (=> bs!854145 (= (= lt!1696217 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172199 lambda!172153))))

(declare-fun bs!854146 () Bool)

(assert (= bs!854146 (and d!1391731 b!4518753)))

(assert (=> bs!854146 (= (= lt!1696217 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172199 lambda!172197))))

(assert (=> bs!854143 (= (= lt!1696217 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172199 lambda!172163))))

(declare-fun bs!854147 () Bool)

(assert (= bs!854147 (and d!1391731 d!1391537)))

(assert (=> bs!854147 (= (= lt!1696217 lt!1696015) (= lambda!172199 lambda!172155))))

(declare-fun bs!854148 () Bool)

(assert (= bs!854148 (and d!1391731 b!4518755)))

(assert (=> bs!854148 (= (= lt!1696217 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172199 lambda!172196))))

(assert (=> bs!854144 (= (= lt!1696217 lt!1695841) (= lambda!172199 lambda!172116))))

(assert (=> bs!854139 (= (= lt!1696217 lt!1696066) (= lambda!172199 lambda!172169))))

(declare-fun bs!854149 () Bool)

(assert (= bs!854149 (and d!1391731 b!4518455)))

(assert (=> bs!854149 (= (= lt!1696217 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172199 lambda!172162))))

(declare-fun bs!854150 () Bool)

(assert (= bs!854150 (and d!1391731 d!1391719)))

(assert (=> bs!854150 (= (= lt!1696217 lt!1696187) (= lambda!172199 lambda!172195))))

(declare-fun bs!854151 () Bool)

(assert (= bs!854151 (and d!1391731 b!4518731)))

(assert (=> bs!854151 (= (= lt!1696217 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172199 lambda!172189))))

(declare-fun bs!854152 () Bool)

(assert (= bs!854152 (and d!1391731 b!4518470)))

(assert (=> bs!854152 (= (= lt!1696217 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172199 lambda!172167))))

(declare-fun bs!854153 () Bool)

(assert (= bs!854153 (and d!1391731 d!1391367)))

(assert (=> bs!854153 (= (= lt!1696217 lt!1695839) (= lambda!172199 lambda!172119))))

(assert (=> bs!854146 (= (= lt!1696217 lt!1696219) (= lambda!172199 lambda!172198))))

(declare-fun bs!854154 () Bool)

(assert (= bs!854154 (and d!1391731 d!1391555)))

(assert (=> bs!854154 (= (= lt!1696217 lt!1696064) (= lambda!172199 lambda!172170))))

(assert (=> bs!854145 (= (= lt!1696217 lt!1696017) (= lambda!172199 lambda!172154))))

(assert (=> bs!854134 (= (= lt!1696217 lt!1695982) (= lambda!172199 lambda!172145))))

(assert (=> bs!854141 (= (= lt!1696217 lt!1696189) (= lambda!172199 lambda!172193))))

(declare-fun bs!854155 () Bool)

(assert (= bs!854155 (and d!1391731 d!1391547)))

(assert (=> bs!854155 (= (= lt!1696217 lt!1696042) (= lambda!172199 lambda!172165))))

(assert (=> d!1391731 true))

(declare-fun e!2815267 () ListMap!3585)

(assert (=> b!4518753 (= e!2815267 lt!1696219)))

(declare-fun lt!1696234 () ListMap!3585)

(assert (=> b!4518753 (= lt!1696234 (+!1536 (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580))))))))

(assert (=> b!4518753 (= lt!1696219 (addToMapMapFromBucket!685 (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695580)))) (+!1536 (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580)))))))))

(declare-fun lt!1696215 () Unit!94720)

(declare-fun call!314797 () Unit!94720)

(assert (=> b!4518753 (= lt!1696215 call!314797)))

(assert (=> b!4518753 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) lambda!172197)))

(declare-fun lt!1696226 () Unit!94720)

(assert (=> b!4518753 (= lt!1696226 lt!1696215)))

(declare-fun call!314796 () Bool)

(assert (=> b!4518753 call!314796))

(declare-fun lt!1696231 () Unit!94720)

(declare-fun Unit!94869 () Unit!94720)

(assert (=> b!4518753 (= lt!1696231 Unit!94869)))

(declare-fun call!314795 () Bool)

(assert (=> b!4518753 call!314795))

(declare-fun lt!1696225 () Unit!94720)

(declare-fun Unit!94870 () Unit!94720)

(assert (=> b!4518753 (= lt!1696225 Unit!94870)))

(declare-fun lt!1696218 () Unit!94720)

(declare-fun Unit!94871 () Unit!94720)

(assert (=> b!4518753 (= lt!1696218 Unit!94871)))

(declare-fun lt!1696227 () Unit!94720)

(assert (=> b!4518753 (= lt!1696227 (forallContained!2511 (toList!4324 lt!1696234) lambda!172198 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580))))))))

(assert (=> b!4518753 (contains!13361 lt!1696234 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580))))))))

(declare-fun lt!1696235 () Unit!94720)

(declare-fun Unit!94872 () Unit!94720)

(assert (=> b!4518753 (= lt!1696235 Unit!94872)))

(assert (=> b!4518753 (contains!13361 lt!1696219 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580))))))))

(declare-fun lt!1696224 () Unit!94720)

(declare-fun Unit!94873 () Unit!94720)

(assert (=> b!4518753 (= lt!1696224 Unit!94873)))

(assert (=> b!4518753 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695580))) lambda!172198)))

(declare-fun lt!1696232 () Unit!94720)

(declare-fun Unit!94874 () Unit!94720)

(assert (=> b!4518753 (= lt!1696232 Unit!94874)))

(assert (=> b!4518753 (forall!10259 (toList!4324 lt!1696234) lambda!172198)))

(declare-fun lt!1696229 () Unit!94720)

(declare-fun Unit!94875 () Unit!94720)

(assert (=> b!4518753 (= lt!1696229 Unit!94875)))

(declare-fun lt!1696222 () Unit!94720)

(declare-fun Unit!94876 () Unit!94720)

(assert (=> b!4518753 (= lt!1696222 Unit!94876)))

(declare-fun lt!1696230 () Unit!94720)

(assert (=> b!4518753 (= lt!1696230 (addForallContainsKeyThenBeforeAdding!336 (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696219 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580))))) (_2!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695580)))))))))

(assert (=> b!4518753 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) lambda!172198)))

(declare-fun lt!1696233 () Unit!94720)

(assert (=> b!4518753 (= lt!1696233 lt!1696230)))

(assert (=> b!4518753 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) lambda!172198)))

(declare-fun lt!1696221 () Unit!94720)

(declare-fun Unit!94877 () Unit!94720)

(assert (=> b!4518753 (= lt!1696221 Unit!94877)))

(declare-fun res!1880493 () Bool)

(assert (=> b!4518753 (= res!1880493 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695580))) lambda!172198))))

(declare-fun e!2815268 () Bool)

(assert (=> b!4518753 (=> (not res!1880493) (not e!2815268))))

(assert (=> b!4518753 e!2815268))

(declare-fun lt!1696220 () Unit!94720)

(declare-fun Unit!94878 () Unit!94720)

(assert (=> b!4518753 (= lt!1696220 Unit!94878)))

(declare-fun b!4518754 () Bool)

(declare-fun e!2815269 () Bool)

(assert (=> b!4518754 (= e!2815269 (invariantList!1015 (toList!4324 lt!1696217)))))

(declare-fun c!771088 () Bool)

(declare-fun bm!314790 () Bool)

(assert (=> bm!314790 (= call!314795 (forall!10259 (ite c!771088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695580))))) (ite c!771088 lambda!172196 lambda!172198)))))

(assert (=> b!4518755 (= e!2815267 (extractMap!1214 (t!357727 (toList!4323 lt!1695580))))))

(declare-fun lt!1696223 () Unit!94720)

(assert (=> b!4518755 (= lt!1696223 call!314797)))

(assert (=> b!4518755 call!314795))

(declare-fun lt!1696228 () Unit!94720)

(assert (=> b!4518755 (= lt!1696228 lt!1696223)))

(assert (=> b!4518755 call!314796))

(declare-fun lt!1696216 () Unit!94720)

(declare-fun Unit!94879 () Unit!94720)

(assert (=> b!4518755 (= lt!1696216 Unit!94879)))

(assert (=> d!1391731 e!2815269))

(declare-fun res!1880492 () Bool)

(assert (=> d!1391731 (=> (not res!1880492) (not e!2815269))))

(assert (=> d!1391731 (= res!1880492 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695580))) lambda!172199))))

(assert (=> d!1391731 (= lt!1696217 e!2815267)))

(assert (=> d!1391731 (= c!771088 ((_ is Nil!50640) (_2!28828 (h!56492 (toList!4323 lt!1695580)))))))

(assert (=> d!1391731 (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695580))))))

(assert (=> d!1391731 (= (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lt!1695580))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) lt!1696217)))

(declare-fun b!4518756 () Bool)

(declare-fun res!1880494 () Bool)

(assert (=> b!4518756 (=> (not res!1880494) (not e!2815269))))

(assert (=> b!4518756 (= res!1880494 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) lambda!172199))))

(declare-fun b!4518757 () Bool)

(assert (=> b!4518757 (= e!2815268 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) lambda!172198))))

(declare-fun bm!314791 () Bool)

(assert (=> bm!314791 (= call!314796 (forall!10259 (ite c!771088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (toList!4324 lt!1696234)) (ite c!771088 lambda!172196 lambda!172198)))))

(declare-fun bm!314792 () Bool)

(assert (=> bm!314792 (= call!314797 (lemmaContainsAllItsOwnKeys!336 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))))))

(assert (= (and d!1391731 c!771088) b!4518755))

(assert (= (and d!1391731 (not c!771088)) b!4518753))

(assert (= (and b!4518753 res!1880493) b!4518757))

(assert (= (or b!4518755 b!4518753) bm!314790))

(assert (= (or b!4518755 b!4518753) bm!314791))

(assert (= (or b!4518755 b!4518753) bm!314792))

(assert (= (and d!1391731 res!1880492) b!4518756))

(assert (= (and b!4518756 res!1880494) b!4518754))

(declare-fun m!5265543 () Bool)

(assert (=> bm!314790 m!5265543))

(assert (=> bm!314792 m!5264253))

(declare-fun m!5265545 () Bool)

(assert (=> bm!314792 m!5265545))

(declare-fun m!5265547 () Bool)

(assert (=> b!4518757 m!5265547))

(declare-fun m!5265549 () Bool)

(assert (=> b!4518753 m!5265549))

(declare-fun m!5265551 () Bool)

(assert (=> b!4518753 m!5265551))

(assert (=> b!4518753 m!5265547))

(assert (=> b!4518753 m!5264253))

(assert (=> b!4518753 m!5265549))

(assert (=> b!4518753 m!5265547))

(declare-fun m!5265553 () Bool)

(assert (=> b!4518753 m!5265553))

(declare-fun m!5265555 () Bool)

(assert (=> b!4518753 m!5265555))

(declare-fun m!5265557 () Bool)

(assert (=> b!4518753 m!5265557))

(declare-fun m!5265559 () Bool)

(assert (=> b!4518753 m!5265559))

(assert (=> b!4518753 m!5264253))

(declare-fun m!5265561 () Bool)

(assert (=> b!4518753 m!5265561))

(declare-fun m!5265563 () Bool)

(assert (=> b!4518753 m!5265563))

(assert (=> b!4518753 m!5265557))

(declare-fun m!5265565 () Bool)

(assert (=> b!4518753 m!5265565))

(declare-fun m!5265567 () Bool)

(assert (=> d!1391731 m!5265567))

(declare-fun m!5265569 () Bool)

(assert (=> d!1391731 m!5265569))

(declare-fun m!5265571 () Bool)

(assert (=> bm!314791 m!5265571))

(declare-fun m!5265573 () Bool)

(assert (=> b!4518756 m!5265573))

(declare-fun m!5265575 () Bool)

(assert (=> b!4518754 m!5265575))

(assert (=> b!4518068 d!1391731))

(declare-fun bs!854156 () Bool)

(declare-fun d!1391737 () Bool)

(assert (= bs!854156 (and d!1391737 d!1391495)))

(declare-fun lambda!172200 () Int)

(assert (=> bs!854156 (= lambda!172200 lambda!172139)))

(declare-fun bs!854157 () Bool)

(assert (= bs!854157 (and d!1391737 d!1391353)))

(assert (=> bs!854157 (= lambda!172200 lambda!172033)))

(declare-fun bs!854158 () Bool)

(assert (= bs!854158 (and d!1391737 d!1391529)))

(assert (=> bs!854158 (= lambda!172200 lambda!172151)))

(declare-fun bs!854159 () Bool)

(assert (= bs!854159 (and d!1391737 d!1391515)))

(assert (=> bs!854159 (= lambda!172200 lambda!172150)))

(declare-fun bs!854160 () Bool)

(assert (= bs!854160 (and d!1391737 start!447216)))

(assert (=> bs!854160 (= lambda!172200 lambda!172021)))

(declare-fun bs!854161 () Bool)

(assert (= bs!854161 (and d!1391737 d!1391355)))

(assert (=> bs!854161 (= lambda!172200 lambda!172050)))

(declare-fun bs!854162 () Bool)

(assert (= bs!854162 (and d!1391737 d!1391335)))

(assert (=> bs!854162 (= lambda!172200 lambda!172027)))

(declare-fun bs!854163 () Bool)

(assert (= bs!854163 (and d!1391737 d!1391351)))

(assert (=> bs!854163 (= lambda!172200 lambda!172032)))

(declare-fun bs!854164 () Bool)

(assert (= bs!854164 (and d!1391737 d!1391449)))

(assert (=> bs!854164 (= lambda!172200 lambda!172124)))

(declare-fun bs!854165 () Bool)

(assert (= bs!854165 (and d!1391737 d!1391347)))

(assert (=> bs!854165 (not (= lambda!172200 lambda!172031))))

(declare-fun bs!854166 () Bool)

(assert (= bs!854166 (and d!1391737 d!1391331)))

(assert (=> bs!854166 (= lambda!172200 lambda!172024)))

(declare-fun bs!854167 () Bool)

(assert (= bs!854167 (and d!1391737 d!1391343)))

(assert (=> bs!854167 (= lambda!172200 lambda!172028)))

(declare-fun bs!854168 () Bool)

(assert (= bs!854168 (and d!1391737 d!1391549)))

(assert (=> bs!854168 (= lambda!172200 lambda!172166)))

(declare-fun bs!854169 () Bool)

(assert (= bs!854169 (and d!1391737 d!1391557)))

(assert (=> bs!854169 (= lambda!172200 lambda!172171)))

(declare-fun bs!854170 () Bool)

(assert (= bs!854170 (and d!1391737 d!1391477)))

(assert (=> bs!854170 (= lambda!172200 lambda!172136)))

(declare-fun lt!1696241 () ListMap!3585)

(assert (=> d!1391737 (invariantList!1015 (toList!4324 lt!1696241))))

(declare-fun e!2815281 () ListMap!3585)

(assert (=> d!1391737 (= lt!1696241 e!2815281)))

(declare-fun c!771097 () Bool)

(assert (=> d!1391737 (= c!771097 ((_ is Cons!50641) (t!357727 (toList!4323 lt!1695580))))))

(assert (=> d!1391737 (forall!10257 (t!357727 (toList!4323 lt!1695580)) lambda!172200)))

(assert (=> d!1391737 (= (extractMap!1214 (t!357727 (toList!4323 lt!1695580))) lt!1696241)))

(declare-fun b!4518780 () Bool)

(assert (=> b!4518780 (= e!2815281 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (toList!4323 lt!1695580)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lt!1695580))))))))

(declare-fun b!4518781 () Bool)

(assert (=> b!4518781 (= e!2815281 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391737 c!771097) b!4518780))

(assert (= (and d!1391737 (not c!771097)) b!4518781))

(declare-fun m!5265577 () Bool)

(assert (=> d!1391737 m!5265577))

(declare-fun m!5265579 () Bool)

(assert (=> d!1391737 m!5265579))

(declare-fun m!5265581 () Bool)

(assert (=> b!4518780 m!5265581))

(assert (=> b!4518780 m!5265581))

(declare-fun m!5265583 () Bool)

(assert (=> b!4518780 m!5265583))

(assert (=> b!4518068 d!1391737))

(declare-fun d!1391739 () Bool)

(declare-fun res!1880505 () Bool)

(declare-fun e!2815286 () Bool)

(assert (=> d!1391739 (=> res!1880505 e!2815286)))

(assert (=> d!1391739 (= res!1880505 (and ((_ is Cons!50640) (toList!4324 lt!1695584)) (= (_1!28827 (h!56491 (toList!4324 lt!1695584))) key!3287)))))

(assert (=> d!1391739 (= (containsKey!1775 (toList!4324 lt!1695584) key!3287) e!2815286)))

(declare-fun b!4518790 () Bool)

(declare-fun e!2815287 () Bool)

(assert (=> b!4518790 (= e!2815286 e!2815287)))

(declare-fun res!1880506 () Bool)

(assert (=> b!4518790 (=> (not res!1880506) (not e!2815287))))

(assert (=> b!4518790 (= res!1880506 ((_ is Cons!50640) (toList!4324 lt!1695584)))))

(declare-fun b!4518791 () Bool)

(assert (=> b!4518791 (= e!2815287 (containsKey!1775 (t!357726 (toList!4324 lt!1695584)) key!3287))))

(assert (= (and d!1391739 (not res!1880505)) b!4518790))

(assert (= (and b!4518790 res!1880506) b!4518791))

(declare-fun m!5265585 () Bool)

(assert (=> b!4518791 m!5265585))

(assert (=> b!4518117 d!1391739))

(declare-fun d!1391741 () Bool)

(assert (=> d!1391741 (containsKey!1775 (toList!4324 lt!1695584) key!3287)))

(declare-fun lt!1696242 () Unit!94720)

(assert (=> d!1391741 (= lt!1696242 (choose!29497 (toList!4324 lt!1695584) key!3287))))

(assert (=> d!1391741 (invariantList!1015 (toList!4324 lt!1695584))))

(assert (=> d!1391741 (= (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695584) key!3287) lt!1696242)))

(declare-fun bs!854171 () Bool)

(assert (= bs!854171 d!1391741))

(assert (=> bs!854171 m!5264339))

(declare-fun m!5265587 () Bool)

(assert (=> bs!854171 m!5265587))

(assert (=> bs!854171 m!5265171))

(assert (=> b!4518117 d!1391741))

(declare-fun lt!1696243 () Bool)

(declare-fun d!1391743 () Bool)

(assert (=> d!1391743 (= lt!1696243 (select (content!8352 (toList!4323 lm!1477)) (tuple2!51069 hash!344 lt!1695573)))))

(declare-fun e!2815289 () Bool)

(assert (=> d!1391743 (= lt!1696243 e!2815289)))

(declare-fun res!1880507 () Bool)

(assert (=> d!1391743 (=> (not res!1880507) (not e!2815289))))

(assert (=> d!1391743 (= res!1880507 ((_ is Cons!50641) (toList!4323 lm!1477)))))

(assert (=> d!1391743 (= (contains!13363 (toList!4323 lm!1477) (tuple2!51069 hash!344 lt!1695573)) lt!1696243)))

(declare-fun b!4518792 () Bool)

(declare-fun e!2815288 () Bool)

(assert (=> b!4518792 (= e!2815289 e!2815288)))

(declare-fun res!1880508 () Bool)

(assert (=> b!4518792 (=> res!1880508 e!2815288)))

(assert (=> b!4518792 (= res!1880508 (= (h!56492 (toList!4323 lm!1477)) (tuple2!51069 hash!344 lt!1695573)))))

(declare-fun b!4518793 () Bool)

(assert (=> b!4518793 (= e!2815288 (contains!13363 (t!357727 (toList!4323 lm!1477)) (tuple2!51069 hash!344 lt!1695573)))))

(assert (= (and d!1391743 res!1880507) b!4518792))

(assert (= (and b!4518792 (not res!1880508)) b!4518793))

(assert (=> d!1391743 m!5264747))

(declare-fun m!5265589 () Bool)

(assert (=> d!1391743 m!5265589))

(declare-fun m!5265591 () Bool)

(assert (=> b!4518793 m!5265591))

(assert (=> d!1391459 d!1391743))

(declare-fun d!1391745 () Bool)

(assert (=> d!1391745 (contains!13363 (toList!4323 lm!1477) (tuple2!51069 hash!344 lt!1695573))))

(assert (=> d!1391745 true))

(declare-fun _$14!1155 () Unit!94720)

(assert (=> d!1391745 (= (choose!29485 (toList!4323 lm!1477) hash!344 lt!1695573) _$14!1155)))

(declare-fun bs!854172 () Bool)

(assert (= bs!854172 d!1391745))

(assert (=> bs!854172 m!5264737))

(assert (=> d!1391459 d!1391745))

(assert (=> d!1391459 d!1391565))

(declare-fun d!1391747 () Bool)

(declare-fun choose!29506 (Hashable!5553 K!12035) (_ BitVec 64))

(assert (=> d!1391747 (= (hash!2803 hashF!1107 key!3287) (choose!29506 hashF!1107 key!3287))))

(declare-fun bs!854173 () Bool)

(assert (= bs!854173 d!1391747))

(declare-fun m!5265595 () Bool)

(assert (=> bs!854173 m!5265595))

(assert (=> d!1391497 d!1391747))

(declare-fun d!1391749 () Bool)

(declare-fun c!771106 () Bool)

(assert (=> d!1391749 (= c!771106 ((_ is Nil!50641) (toList!4323 lm!1477)))))

(declare-fun e!2815303 () (InoxSet tuple2!51068))

(assert (=> d!1391749 (= (content!8352 (toList!4323 lm!1477)) e!2815303)))

(declare-fun b!4518814 () Bool)

(assert (=> b!4518814 (= e!2815303 ((as const (Array tuple2!51068 Bool)) false))))

(declare-fun b!4518815 () Bool)

(assert (=> b!4518815 (= e!2815303 ((_ map or) (store ((as const (Array tuple2!51068 Bool)) false) (h!56492 (toList!4323 lm!1477)) true) (content!8352 (t!357727 (toList!4323 lm!1477)))))))

(assert (= (and d!1391749 c!771106) b!4518814))

(assert (= (and d!1391749 (not c!771106)) b!4518815))

(declare-fun m!5265617 () Bool)

(assert (=> b!4518815 m!5265617))

(assert (=> b!4518815 m!5264347))

(assert (=> d!1391469 d!1391749))

(declare-fun d!1391761 () Bool)

(declare-fun c!771107 () Bool)

(assert (=> d!1391761 (= c!771107 (and ((_ is Cons!50641) (toList!4323 lt!1695905)) (= (_1!28828 (h!56492 (toList!4323 lt!1695905))) (_1!28828 lt!1695575))))))

(declare-fun e!2815304 () Option!11106)

(assert (=> d!1391761 (= (getValueByKey!1086 (toList!4323 lt!1695905) (_1!28828 lt!1695575)) e!2815304)))

(declare-fun b!4518817 () Bool)

(declare-fun e!2815305 () Option!11106)

(assert (=> b!4518817 (= e!2815304 e!2815305)))

(declare-fun c!771108 () Bool)

(assert (=> b!4518817 (= c!771108 (and ((_ is Cons!50641) (toList!4323 lt!1695905)) (not (= (_1!28828 (h!56492 (toList!4323 lt!1695905))) (_1!28828 lt!1695575)))))))

(declare-fun b!4518818 () Bool)

(assert (=> b!4518818 (= e!2815305 (getValueByKey!1086 (t!357727 (toList!4323 lt!1695905)) (_1!28828 lt!1695575)))))

(declare-fun b!4518819 () Bool)

(assert (=> b!4518819 (= e!2815305 None!11105)))

(declare-fun b!4518816 () Bool)

(assert (=> b!4518816 (= e!2815304 (Some!11105 (_2!28828 (h!56492 (toList!4323 lt!1695905)))))))

(assert (= (and d!1391761 c!771107) b!4518816))

(assert (= (and d!1391761 (not c!771107)) b!4518817))

(assert (= (and b!4518817 c!771108) b!4518818))

(assert (= (and b!4518817 (not c!771108)) b!4518819))

(declare-fun m!5265619 () Bool)

(assert (=> b!4518818 m!5265619))

(assert (=> b!4518287 d!1391761))

(assert (=> b!4518112 d!1391621))

(assert (=> b!4518101 d!1391729))

(assert (=> b!4518101 d!1391539))

(assert (=> d!1391363 d!1391595))

(assert (=> d!1391363 d!1391647))

(declare-fun d!1391763 () Bool)

(declare-fun res!1880517 () Bool)

(declare-fun e!2815306 () Bool)

(assert (=> d!1391763 (=> res!1880517 e!2815306)))

(assert (=> d!1391763 (= res!1880517 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (= (_1!28828 (h!56492 (toList!4323 lt!1695586))) hash!344)))))

(assert (=> d!1391763 (= (containsKey!1777 (toList!4323 lt!1695586) hash!344) e!2815306)))

(declare-fun b!4518820 () Bool)

(declare-fun e!2815307 () Bool)

(assert (=> b!4518820 (= e!2815306 e!2815307)))

(declare-fun res!1880518 () Bool)

(assert (=> b!4518820 (=> (not res!1880518) (not e!2815307))))

(assert (=> b!4518820 (= res!1880518 (and (or (not ((_ is Cons!50641) (toList!4323 lt!1695586))) (bvsle (_1!28828 (h!56492 (toList!4323 lt!1695586))) hash!344)) ((_ is Cons!50641) (toList!4323 lt!1695586)) (bvslt (_1!28828 (h!56492 (toList!4323 lt!1695586))) hash!344)))))

(declare-fun b!4518821 () Bool)

(assert (=> b!4518821 (= e!2815307 (containsKey!1777 (t!357727 (toList!4323 lt!1695586)) hash!344))))

(assert (= (and d!1391763 (not res!1880517)) b!4518820))

(assert (= (and b!4518820 res!1880518) b!4518821))

(declare-fun m!5265621 () Bool)

(assert (=> b!4518821 m!5265621))

(assert (=> d!1391435 d!1391763))

(declare-fun bs!854175 () Bool)

(declare-fun b!4518824 () Bool)

(assert (= bs!854175 (and b!4518824 d!1391499)))

(declare-fun lambda!172201 () Int)

(assert (=> bs!854175 (not (= lambda!172201 lambda!172142))))

(declare-fun bs!854176 () Bool)

(assert (= bs!854176 (and b!4518824 d!1391731)))

(assert (=> bs!854176 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696217) (= lambda!172201 lambda!172199))))

(declare-fun bs!854177 () Bool)

(assert (= bs!854177 (and b!4518824 b!4518382)))

(assert (=> bs!854177 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695590) (= lambda!172201 lambda!172144))))

(declare-fun bs!854179 () Bool)

(assert (= bs!854179 (and b!4518824 d!1391513)))

(assert (=> bs!854179 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695980) (= lambda!172201 lambda!172146))))

(declare-fun bs!854180 () Bool)

(assert (= bs!854180 (and b!4518824 b!4518427)))

(assert (=> bs!854180 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172201 lambda!172152))))

(declare-fun bs!854181 () Bool)

(assert (= bs!854181 (and b!4518824 b!4518242)))

(assert (=> bs!854181 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695572) (= lambda!172201 lambda!172114))))

(declare-fun bs!854183 () Bool)

(assert (= bs!854183 (and b!4518824 d!1391627)))

(assert (=> bs!854183 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695590) (= lambda!172201 lambda!172178))))

(declare-fun bs!854184 () Bool)

(assert (= bs!854184 (and b!4518824 b!4518468)))

(assert (=> bs!854184 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172201 lambda!172168))))

(declare-fun bs!854185 () Bool)

(assert (= bs!854185 (and b!4518824 d!1391685)))

(assert (=> bs!854185 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695841) (= lambda!172201 lambda!172188))))

(declare-fun bs!854186 () Bool)

(assert (= bs!854186 (and b!4518824 b!4518729)))

(assert (=> bs!854186 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172201 lambda!172190))))

(declare-fun bs!854187 () Bool)

(assert (= bs!854187 (and b!4518824 b!4518384)))

(assert (=> bs!854187 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695590) (= lambda!172201 lambda!172143))))

(declare-fun bs!854188 () Bool)

(assert (= bs!854188 (and b!4518824 b!4518453)))

(assert (=> bs!854188 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696044) (= lambda!172201 lambda!172164))))

(declare-fun bs!854189 () Bool)

(assert (= bs!854189 (and b!4518824 b!4518240)))

(assert (=> bs!854189 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695572) (= lambda!172201 lambda!172115))))

(declare-fun bs!854190 () Bool)

(assert (= bs!854190 (and b!4518824 b!4518425)))

(assert (=> bs!854190 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172201 lambda!172153))))

(declare-fun bs!854191 () Bool)

(assert (= bs!854191 (and b!4518824 b!4518753)))

(assert (=> bs!854191 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172201 lambda!172197))))

(assert (=> bs!854188 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172201 lambda!172163))))

(declare-fun bs!854192 () Bool)

(assert (= bs!854192 (and b!4518824 d!1391537)))

(assert (=> bs!854192 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696015) (= lambda!172201 lambda!172155))))

(declare-fun bs!854193 () Bool)

(assert (= bs!854193 (and b!4518824 b!4518755)))

(assert (=> bs!854193 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172201 lambda!172196))))

(assert (=> bs!854189 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695841) (= lambda!172201 lambda!172116))))

(assert (=> bs!854184 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696066) (= lambda!172201 lambda!172169))))

(declare-fun bs!854194 () Bool)

(assert (= bs!854194 (and b!4518824 b!4518455)))

(assert (=> bs!854194 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172201 lambda!172162))))

(declare-fun bs!854195 () Bool)

(assert (= bs!854195 (and b!4518824 d!1391719)))

(assert (=> bs!854195 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696187) (= lambda!172201 lambda!172195))))

(declare-fun bs!854196 () Bool)

(assert (= bs!854196 (and b!4518824 b!4518731)))

(assert (=> bs!854196 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172201 lambda!172189))))

(declare-fun bs!854197 () Bool)

(assert (= bs!854197 (and b!4518824 b!4518470)))

(assert (=> bs!854197 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172201 lambda!172167))))

(declare-fun bs!854198 () Bool)

(assert (= bs!854198 (and b!4518824 d!1391367)))

(assert (=> bs!854198 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695839) (= lambda!172201 lambda!172119))))

(assert (=> bs!854191 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696219) (= lambda!172201 lambda!172198))))

(declare-fun bs!854199 () Bool)

(assert (= bs!854199 (and b!4518824 d!1391555)))

(assert (=> bs!854199 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696064) (= lambda!172201 lambda!172170))))

(assert (=> bs!854190 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696017) (= lambda!172201 lambda!172154))))

(assert (=> bs!854177 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695982) (= lambda!172201 lambda!172145))))

(assert (=> bs!854186 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696189) (= lambda!172201 lambda!172193))))

(declare-fun bs!854200 () Bool)

(assert (= bs!854200 (and b!4518824 d!1391547)))

(assert (=> bs!854200 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696042) (= lambda!172201 lambda!172165))))

(assert (=> b!4518824 true))

(declare-fun bs!854201 () Bool)

(declare-fun b!4518822 () Bool)

(assert (= bs!854201 (and b!4518822 d!1391499)))

(declare-fun lambda!172202 () Int)

(assert (=> bs!854201 (not (= lambda!172202 lambda!172142))))

(declare-fun bs!854202 () Bool)

(assert (= bs!854202 (and b!4518822 d!1391731)))

(assert (=> bs!854202 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696217) (= lambda!172202 lambda!172199))))

(declare-fun bs!854203 () Bool)

(assert (= bs!854203 (and b!4518822 b!4518382)))

(assert (=> bs!854203 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695590) (= lambda!172202 lambda!172144))))

(declare-fun bs!854204 () Bool)

(assert (= bs!854204 (and b!4518822 d!1391513)))

(assert (=> bs!854204 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695980) (= lambda!172202 lambda!172146))))

(declare-fun bs!854205 () Bool)

(assert (= bs!854205 (and b!4518822 b!4518427)))

(assert (=> bs!854205 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172202 lambda!172152))))

(declare-fun bs!854206 () Bool)

(assert (= bs!854206 (and b!4518822 d!1391627)))

(assert (=> bs!854206 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695590) (= lambda!172202 lambda!172178))))

(declare-fun bs!854207 () Bool)

(assert (= bs!854207 (and b!4518822 b!4518468)))

(assert (=> bs!854207 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172202 lambda!172168))))

(declare-fun bs!854208 () Bool)

(assert (= bs!854208 (and b!4518822 d!1391685)))

(assert (=> bs!854208 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695841) (= lambda!172202 lambda!172188))))

(declare-fun bs!854209 () Bool)

(assert (= bs!854209 (and b!4518822 b!4518729)))

(assert (=> bs!854209 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172202 lambda!172190))))

(declare-fun bs!854210 () Bool)

(assert (= bs!854210 (and b!4518822 b!4518384)))

(assert (=> bs!854210 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695590) (= lambda!172202 lambda!172143))))

(declare-fun bs!854211 () Bool)

(assert (= bs!854211 (and b!4518822 b!4518453)))

(assert (=> bs!854211 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696044) (= lambda!172202 lambda!172164))))

(declare-fun bs!854212 () Bool)

(assert (= bs!854212 (and b!4518822 b!4518240)))

(assert (=> bs!854212 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695572) (= lambda!172202 lambda!172115))))

(declare-fun bs!854213 () Bool)

(assert (= bs!854213 (and b!4518822 b!4518425)))

(assert (=> bs!854213 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172202 lambda!172153))))

(declare-fun bs!854214 () Bool)

(assert (= bs!854214 (and b!4518822 b!4518753)))

(assert (=> bs!854214 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172202 lambda!172197))))

(assert (=> bs!854211 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172202 lambda!172163))))

(declare-fun bs!854216 () Bool)

(assert (= bs!854216 (and b!4518822 d!1391537)))

(assert (=> bs!854216 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696015) (= lambda!172202 lambda!172155))))

(declare-fun bs!854217 () Bool)

(assert (= bs!854217 (and b!4518822 b!4518755)))

(assert (=> bs!854217 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172202 lambda!172196))))

(assert (=> bs!854212 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695841) (= lambda!172202 lambda!172116))))

(assert (=> bs!854207 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696066) (= lambda!172202 lambda!172169))))

(declare-fun bs!854218 () Bool)

(assert (= bs!854218 (and b!4518822 b!4518455)))

(assert (=> bs!854218 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172202 lambda!172162))))

(declare-fun bs!854219 () Bool)

(assert (= bs!854219 (and b!4518822 b!4518242)))

(assert (=> bs!854219 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695572) (= lambda!172202 lambda!172114))))

(declare-fun bs!854220 () Bool)

(assert (= bs!854220 (and b!4518822 b!4518824)))

(assert (=> bs!854220 (= lambda!172202 lambda!172201)))

(declare-fun bs!854221 () Bool)

(assert (= bs!854221 (and b!4518822 d!1391719)))

(assert (=> bs!854221 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696187) (= lambda!172202 lambda!172195))))

(declare-fun bs!854222 () Bool)

(assert (= bs!854222 (and b!4518822 b!4518731)))

(assert (=> bs!854222 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172202 lambda!172189))))

(declare-fun bs!854223 () Bool)

(assert (= bs!854223 (and b!4518822 b!4518470)))

(assert (=> bs!854223 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172202 lambda!172167))))

(declare-fun bs!854224 () Bool)

(assert (= bs!854224 (and b!4518822 d!1391367)))

(assert (=> bs!854224 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695839) (= lambda!172202 lambda!172119))))

(assert (=> bs!854214 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696219) (= lambda!172202 lambda!172198))))

(declare-fun bs!854225 () Bool)

(assert (= bs!854225 (and b!4518822 d!1391555)))

(assert (=> bs!854225 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696064) (= lambda!172202 lambda!172170))))

(assert (=> bs!854213 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696017) (= lambda!172202 lambda!172154))))

(assert (=> bs!854203 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1695982) (= lambda!172202 lambda!172145))))

(assert (=> bs!854209 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696189) (= lambda!172202 lambda!172193))))

(declare-fun bs!854226 () Bool)

(assert (= bs!854226 (and b!4518822 d!1391547)))

(assert (=> bs!854226 (= (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696042) (= lambda!172202 lambda!172165))))

(assert (=> b!4518822 true))

(declare-fun lambda!172203 () Int)

(assert (=> bs!854201 (not (= lambda!172203 lambda!172142))))

(declare-fun lt!1696249 () ListMap!3585)

(assert (=> bs!854202 (= (= lt!1696249 lt!1696217) (= lambda!172203 lambda!172199))))

(assert (=> bs!854203 (= (= lt!1696249 lt!1695590) (= lambda!172203 lambda!172144))))

(assert (=> bs!854204 (= (= lt!1696249 lt!1695980) (= lambda!172203 lambda!172146))))

(assert (=> bs!854205 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172203 lambda!172152))))

(assert (=> bs!854206 (= (= lt!1696249 lt!1695590) (= lambda!172203 lambda!172178))))

(assert (=> bs!854207 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172203 lambda!172168))))

(assert (=> bs!854208 (= (= lt!1696249 lt!1695841) (= lambda!172203 lambda!172188))))

(assert (=> b!4518822 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172203 lambda!172202))))

(assert (=> bs!854209 (= (= lt!1696249 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172203 lambda!172190))))

(assert (=> bs!854210 (= (= lt!1696249 lt!1695590) (= lambda!172203 lambda!172143))))

(assert (=> bs!854211 (= (= lt!1696249 lt!1696044) (= lambda!172203 lambda!172164))))

(assert (=> bs!854212 (= (= lt!1696249 lt!1695572) (= lambda!172203 lambda!172115))))

(assert (=> bs!854213 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172203 lambda!172153))))

(assert (=> bs!854214 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172203 lambda!172197))))

(assert (=> bs!854211 (= (= lt!1696249 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172203 lambda!172163))))

(assert (=> bs!854216 (= (= lt!1696249 lt!1696015) (= lambda!172203 lambda!172155))))

(assert (=> bs!854217 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172203 lambda!172196))))

(assert (=> bs!854212 (= (= lt!1696249 lt!1695841) (= lambda!172203 lambda!172116))))

(assert (=> bs!854207 (= (= lt!1696249 lt!1696066) (= lambda!172203 lambda!172169))))

(assert (=> bs!854218 (= (= lt!1696249 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172203 lambda!172162))))

(assert (=> bs!854219 (= (= lt!1696249 lt!1695572) (= lambda!172203 lambda!172114))))

(assert (=> bs!854220 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172203 lambda!172201))))

(assert (=> bs!854221 (= (= lt!1696249 lt!1696187) (= lambda!172203 lambda!172195))))

(assert (=> bs!854222 (= (= lt!1696249 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172203 lambda!172189))))

(assert (=> bs!854223 (= (= lt!1696249 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172203 lambda!172167))))

(assert (=> bs!854224 (= (= lt!1696249 lt!1695839) (= lambda!172203 lambda!172119))))

(assert (=> bs!854214 (= (= lt!1696249 lt!1696219) (= lambda!172203 lambda!172198))))

(assert (=> bs!854225 (= (= lt!1696249 lt!1696064) (= lambda!172203 lambda!172170))))

(assert (=> bs!854213 (= (= lt!1696249 lt!1696017) (= lambda!172203 lambda!172154))))

(assert (=> bs!854203 (= (= lt!1696249 lt!1695982) (= lambda!172203 lambda!172145))))

(assert (=> bs!854209 (= (= lt!1696249 lt!1696189) (= lambda!172203 lambda!172193))))

(assert (=> bs!854226 (= (= lt!1696249 lt!1696042) (= lambda!172203 lambda!172165))))

(assert (=> b!4518822 true))

(declare-fun bs!854237 () Bool)

(declare-fun d!1391765 () Bool)

(assert (= bs!854237 (and d!1391765 d!1391499)))

(declare-fun lambda!172205 () Int)

(assert (=> bs!854237 (not (= lambda!172205 lambda!172142))))

(declare-fun bs!854239 () Bool)

(assert (= bs!854239 (and d!1391765 d!1391731)))

(declare-fun lt!1696247 () ListMap!3585)

(assert (=> bs!854239 (= (= lt!1696247 lt!1696217) (= lambda!172205 lambda!172199))))

(declare-fun bs!854241 () Bool)

(assert (= bs!854241 (and d!1391765 b!4518382)))

(assert (=> bs!854241 (= (= lt!1696247 lt!1695590) (= lambda!172205 lambda!172144))))

(declare-fun bs!854243 () Bool)

(assert (= bs!854243 (and d!1391765 d!1391513)))

(assert (=> bs!854243 (= (= lt!1696247 lt!1695980) (= lambda!172205 lambda!172146))))

(declare-fun bs!854244 () Bool)

(assert (= bs!854244 (and d!1391765 b!4518427)))

(assert (=> bs!854244 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172205 lambda!172152))))

(declare-fun bs!854246 () Bool)

(assert (= bs!854246 (and d!1391765 d!1391627)))

(assert (=> bs!854246 (= (= lt!1696247 lt!1695590) (= lambda!172205 lambda!172178))))

(declare-fun bs!854247 () Bool)

(assert (= bs!854247 (and d!1391765 b!4518468)))

(assert (=> bs!854247 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172205 lambda!172168))))

(declare-fun bs!854248 () Bool)

(assert (= bs!854248 (and d!1391765 d!1391685)))

(assert (=> bs!854248 (= (= lt!1696247 lt!1695841) (= lambda!172205 lambda!172188))))

(declare-fun bs!854250 () Bool)

(assert (= bs!854250 (and d!1391765 b!4518822)))

(assert (=> bs!854250 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172205 lambda!172202))))

(declare-fun bs!854251 () Bool)

(assert (= bs!854251 (and d!1391765 b!4518729)))

(assert (=> bs!854251 (= (= lt!1696247 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172205 lambda!172190))))

(declare-fun bs!854252 () Bool)

(assert (= bs!854252 (and d!1391765 b!4518384)))

(assert (=> bs!854252 (= (= lt!1696247 lt!1695590) (= lambda!172205 lambda!172143))))

(declare-fun bs!854253 () Bool)

(assert (= bs!854253 (and d!1391765 b!4518453)))

(assert (=> bs!854253 (= (= lt!1696247 lt!1696044) (= lambda!172205 lambda!172164))))

(declare-fun bs!854254 () Bool)

(assert (= bs!854254 (and d!1391765 b!4518240)))

(assert (=> bs!854254 (= (= lt!1696247 lt!1695572) (= lambda!172205 lambda!172115))))

(declare-fun bs!854255 () Bool)

(assert (= bs!854255 (and d!1391765 b!4518425)))

(assert (=> bs!854255 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172205 lambda!172153))))

(assert (=> bs!854250 (= (= lt!1696247 lt!1696249) (= lambda!172205 lambda!172203))))

(declare-fun bs!854256 () Bool)

(assert (= bs!854256 (and d!1391765 b!4518753)))

(assert (=> bs!854256 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172205 lambda!172197))))

(assert (=> bs!854253 (= (= lt!1696247 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172205 lambda!172163))))

(declare-fun bs!854258 () Bool)

(assert (= bs!854258 (and d!1391765 d!1391537)))

(assert (=> bs!854258 (= (= lt!1696247 lt!1696015) (= lambda!172205 lambda!172155))))

(declare-fun bs!854260 () Bool)

(assert (= bs!854260 (and d!1391765 b!4518755)))

(assert (=> bs!854260 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172205 lambda!172196))))

(assert (=> bs!854254 (= (= lt!1696247 lt!1695841) (= lambda!172205 lambda!172116))))

(assert (=> bs!854247 (= (= lt!1696247 lt!1696066) (= lambda!172205 lambda!172169))))

(declare-fun bs!854264 () Bool)

(assert (= bs!854264 (and d!1391765 b!4518455)))

(assert (=> bs!854264 (= (= lt!1696247 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172205 lambda!172162))))

(declare-fun bs!854266 () Bool)

(assert (= bs!854266 (and d!1391765 b!4518242)))

(assert (=> bs!854266 (= (= lt!1696247 lt!1695572) (= lambda!172205 lambda!172114))))

(declare-fun bs!854268 () Bool)

(assert (= bs!854268 (and d!1391765 b!4518824)))

(assert (=> bs!854268 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172205 lambda!172201))))

(declare-fun bs!854270 () Bool)

(assert (= bs!854270 (and d!1391765 d!1391719)))

(assert (=> bs!854270 (= (= lt!1696247 lt!1696187) (= lambda!172205 lambda!172195))))

(declare-fun bs!854271 () Bool)

(assert (= bs!854271 (and d!1391765 b!4518731)))

(assert (=> bs!854271 (= (= lt!1696247 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172205 lambda!172189))))

(declare-fun bs!854273 () Bool)

(assert (= bs!854273 (and d!1391765 b!4518470)))

(assert (=> bs!854273 (= (= lt!1696247 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172205 lambda!172167))))

(declare-fun bs!854274 () Bool)

(assert (= bs!854274 (and d!1391765 d!1391367)))

(assert (=> bs!854274 (= (= lt!1696247 lt!1695839) (= lambda!172205 lambda!172119))))

(assert (=> bs!854256 (= (= lt!1696247 lt!1696219) (= lambda!172205 lambda!172198))))

(declare-fun bs!854276 () Bool)

(assert (= bs!854276 (and d!1391765 d!1391555)))

(assert (=> bs!854276 (= (= lt!1696247 lt!1696064) (= lambda!172205 lambda!172170))))

(assert (=> bs!854255 (= (= lt!1696247 lt!1696017) (= lambda!172205 lambda!172154))))

(assert (=> bs!854241 (= (= lt!1696247 lt!1695982) (= lambda!172205 lambda!172145))))

(assert (=> bs!854251 (= (= lt!1696247 lt!1696189) (= lambda!172205 lambda!172193))))

(declare-fun bs!854279 () Bool)

(assert (= bs!854279 (and d!1391765 d!1391547)))

(assert (=> bs!854279 (= (= lt!1696247 lt!1696042) (= lambda!172205 lambda!172165))))

(assert (=> d!1391765 true))

(declare-fun e!2815308 () ListMap!3585)

(assert (=> b!4518822 (= e!2815308 lt!1696249)))

(declare-fun lt!1696264 () ListMap!3585)

(assert (=> b!4518822 (= lt!1696264 (+!1536 (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574))))))))

(assert (=> b!4518822 (= lt!1696249 (addToMapMapFromBucket!685 (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695574)))) (+!1536 (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574)))))))))

(declare-fun lt!1696245 () Unit!94720)

(declare-fun call!314809 () Unit!94720)

(assert (=> b!4518822 (= lt!1696245 call!314809)))

(assert (=> b!4518822 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) lambda!172202)))

(declare-fun lt!1696256 () Unit!94720)

(assert (=> b!4518822 (= lt!1696256 lt!1696245)))

(declare-fun call!314808 () Bool)

(assert (=> b!4518822 call!314808))

(declare-fun lt!1696261 () Unit!94720)

(declare-fun Unit!94884 () Unit!94720)

(assert (=> b!4518822 (= lt!1696261 Unit!94884)))

(declare-fun call!314807 () Bool)

(assert (=> b!4518822 call!314807))

(declare-fun lt!1696255 () Unit!94720)

(declare-fun Unit!94885 () Unit!94720)

(assert (=> b!4518822 (= lt!1696255 Unit!94885)))

(declare-fun lt!1696248 () Unit!94720)

(declare-fun Unit!94886 () Unit!94720)

(assert (=> b!4518822 (= lt!1696248 Unit!94886)))

(declare-fun lt!1696257 () Unit!94720)

(assert (=> b!4518822 (= lt!1696257 (forallContained!2511 (toList!4324 lt!1696264) lambda!172203 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574))))))))

(assert (=> b!4518822 (contains!13361 lt!1696264 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574))))))))

(declare-fun lt!1696265 () Unit!94720)

(declare-fun Unit!94887 () Unit!94720)

(assert (=> b!4518822 (= lt!1696265 Unit!94887)))

(assert (=> b!4518822 (contains!13361 lt!1696249 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574))))))))

(declare-fun lt!1696254 () Unit!94720)

(declare-fun Unit!94888 () Unit!94720)

(assert (=> b!4518822 (= lt!1696254 Unit!94888)))

(assert (=> b!4518822 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695574))) lambda!172203)))

(declare-fun lt!1696262 () Unit!94720)

(declare-fun Unit!94889 () Unit!94720)

(assert (=> b!4518822 (= lt!1696262 Unit!94889)))

(assert (=> b!4518822 (forall!10259 (toList!4324 lt!1696264) lambda!172203)))

(declare-fun lt!1696259 () Unit!94720)

(declare-fun Unit!94890 () Unit!94720)

(assert (=> b!4518822 (= lt!1696259 Unit!94890)))

(declare-fun lt!1696252 () Unit!94720)

(declare-fun Unit!94891 () Unit!94720)

(assert (=> b!4518822 (= lt!1696252 Unit!94891)))

(declare-fun lt!1696260 () Unit!94720)

(assert (=> b!4518822 (= lt!1696260 (addForallContainsKeyThenBeforeAdding!336 (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696249 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574))))) (_2!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lt!1695574)))))))))

(assert (=> b!4518822 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) lambda!172203)))

(declare-fun lt!1696263 () Unit!94720)

(assert (=> b!4518822 (= lt!1696263 lt!1696260)))

(assert (=> b!4518822 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) lambda!172203)))

(declare-fun lt!1696251 () Unit!94720)

(declare-fun Unit!94892 () Unit!94720)

(assert (=> b!4518822 (= lt!1696251 Unit!94892)))

(declare-fun res!1880520 () Bool)

(assert (=> b!4518822 (= res!1880520 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695574))) lambda!172203))))

(declare-fun e!2815309 () Bool)

(assert (=> b!4518822 (=> (not res!1880520) (not e!2815309))))

(assert (=> b!4518822 e!2815309))

(declare-fun lt!1696250 () Unit!94720)

(declare-fun Unit!94893 () Unit!94720)

(assert (=> b!4518822 (= lt!1696250 Unit!94893)))

(declare-fun b!4518823 () Bool)

(declare-fun e!2815310 () Bool)

(assert (=> b!4518823 (= e!2815310 (invariantList!1015 (toList!4324 lt!1696247)))))

(declare-fun bm!314802 () Bool)

(declare-fun c!771109 () Bool)

(assert (=> bm!314802 (= call!314807 (forall!10259 (ite c!771109 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (t!357726 (_2!28828 (h!56492 (toList!4323 lt!1695574))))) (ite c!771109 lambda!172201 lambda!172203)))))

(assert (=> b!4518824 (= e!2815308 (extractMap!1214 (t!357727 (toList!4323 lt!1695574))))))

(declare-fun lt!1696253 () Unit!94720)

(assert (=> b!4518824 (= lt!1696253 call!314809)))

(assert (=> b!4518824 call!314807))

(declare-fun lt!1696258 () Unit!94720)

(assert (=> b!4518824 (= lt!1696258 lt!1696253)))

(assert (=> b!4518824 call!314808))

(declare-fun lt!1696246 () Unit!94720)

(declare-fun Unit!94894 () Unit!94720)

(assert (=> b!4518824 (= lt!1696246 Unit!94894)))

(assert (=> d!1391765 e!2815310))

(declare-fun res!1880519 () Bool)

(assert (=> d!1391765 (=> (not res!1880519) (not e!2815310))))

(assert (=> d!1391765 (= res!1880519 (forall!10259 (_2!28828 (h!56492 (toList!4323 lt!1695574))) lambda!172205))))

(assert (=> d!1391765 (= lt!1696247 e!2815308)))

(assert (=> d!1391765 (= c!771109 ((_ is Nil!50640) (_2!28828 (h!56492 (toList!4323 lt!1695574)))))))

(assert (=> d!1391765 (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695574))))))

(assert (=> d!1391765 (= (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 lt!1695574))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) lt!1696247)))

(declare-fun b!4518825 () Bool)

(declare-fun res!1880521 () Bool)

(assert (=> b!4518825 (=> (not res!1880521) (not e!2815310))))

(assert (=> b!4518825 (= res!1880521 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) lambda!172205))))

(declare-fun b!4518826 () Bool)

(assert (=> b!4518826 (= e!2815309 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) lambda!172203))))

(declare-fun bm!314803 () Bool)

(assert (=> bm!314803 (= call!314808 (forall!10259 (ite c!771109 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (toList!4324 lt!1696264)) (ite c!771109 lambda!172201 lambda!172203)))))

(declare-fun bm!314804 () Bool)

(assert (=> bm!314804 (= call!314809 (lemmaContainsAllItsOwnKeys!336 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))))))

(assert (= (and d!1391765 c!771109) b!4518824))

(assert (= (and d!1391765 (not c!771109)) b!4518822))

(assert (= (and b!4518822 res!1880520) b!4518826))

(assert (= (or b!4518824 b!4518822) bm!314802))

(assert (= (or b!4518824 b!4518822) bm!314803))

(assert (= (or b!4518824 b!4518822) bm!314804))

(assert (= (and d!1391765 res!1880519) b!4518825))

(assert (= (and b!4518825 res!1880521) b!4518823))

(declare-fun m!5265661 () Bool)

(assert (=> bm!314802 m!5265661))

(assert (=> bm!314804 m!5264899))

(declare-fun m!5265663 () Bool)

(assert (=> bm!314804 m!5265663))

(declare-fun m!5265665 () Bool)

(assert (=> b!4518826 m!5265665))

(declare-fun m!5265667 () Bool)

(assert (=> b!4518822 m!5265667))

(declare-fun m!5265669 () Bool)

(assert (=> b!4518822 m!5265669))

(assert (=> b!4518822 m!5265665))

(assert (=> b!4518822 m!5264899))

(assert (=> b!4518822 m!5265667))

(assert (=> b!4518822 m!5265665))

(declare-fun m!5265671 () Bool)

(assert (=> b!4518822 m!5265671))

(declare-fun m!5265673 () Bool)

(assert (=> b!4518822 m!5265673))

(declare-fun m!5265675 () Bool)

(assert (=> b!4518822 m!5265675))

(declare-fun m!5265677 () Bool)

(assert (=> b!4518822 m!5265677))

(assert (=> b!4518822 m!5264899))

(declare-fun m!5265679 () Bool)

(assert (=> b!4518822 m!5265679))

(declare-fun m!5265681 () Bool)

(assert (=> b!4518822 m!5265681))

(assert (=> b!4518822 m!5265675))

(declare-fun m!5265683 () Bool)

(assert (=> b!4518822 m!5265683))

(declare-fun m!5265685 () Bool)

(assert (=> d!1391765 m!5265685))

(declare-fun m!5265687 () Bool)

(assert (=> d!1391765 m!5265687))

(declare-fun m!5265689 () Bool)

(assert (=> bm!314803 m!5265689))

(declare-fun m!5265691 () Bool)

(assert (=> b!4518825 m!5265691))

(declare-fun m!5265693 () Bool)

(assert (=> b!4518823 m!5265693))

(assert (=> b!4518387 d!1391765))

(declare-fun bs!854283 () Bool)

(declare-fun d!1391795 () Bool)

(assert (= bs!854283 (and d!1391795 d!1391495)))

(declare-fun lambda!172209 () Int)

(assert (=> bs!854283 (= lambda!172209 lambda!172139)))

(declare-fun bs!854285 () Bool)

(assert (= bs!854285 (and d!1391795 d!1391353)))

(assert (=> bs!854285 (= lambda!172209 lambda!172033)))

(declare-fun bs!854287 () Bool)

(assert (= bs!854287 (and d!1391795 d!1391529)))

(assert (=> bs!854287 (= lambda!172209 lambda!172151)))

(declare-fun bs!854289 () Bool)

(assert (= bs!854289 (and d!1391795 d!1391515)))

(assert (=> bs!854289 (= lambda!172209 lambda!172150)))

(declare-fun bs!854291 () Bool)

(assert (= bs!854291 (and d!1391795 start!447216)))

(assert (=> bs!854291 (= lambda!172209 lambda!172021)))

(declare-fun bs!854293 () Bool)

(assert (= bs!854293 (and d!1391795 d!1391355)))

(assert (=> bs!854293 (= lambda!172209 lambda!172050)))

(declare-fun bs!854295 () Bool)

(assert (= bs!854295 (and d!1391795 d!1391335)))

(assert (=> bs!854295 (= lambda!172209 lambda!172027)))

(declare-fun bs!854297 () Bool)

(assert (= bs!854297 (and d!1391795 d!1391351)))

(assert (=> bs!854297 (= lambda!172209 lambda!172032)))

(declare-fun bs!854298 () Bool)

(assert (= bs!854298 (and d!1391795 d!1391449)))

(assert (=> bs!854298 (= lambda!172209 lambda!172124)))

(declare-fun bs!854299 () Bool)

(assert (= bs!854299 (and d!1391795 d!1391737)))

(assert (=> bs!854299 (= lambda!172209 lambda!172200)))

(declare-fun bs!854301 () Bool)

(assert (= bs!854301 (and d!1391795 d!1391347)))

(assert (=> bs!854301 (not (= lambda!172209 lambda!172031))))

(declare-fun bs!854303 () Bool)

(assert (= bs!854303 (and d!1391795 d!1391331)))

(assert (=> bs!854303 (= lambda!172209 lambda!172024)))

(declare-fun bs!854305 () Bool)

(assert (= bs!854305 (and d!1391795 d!1391343)))

(assert (=> bs!854305 (= lambda!172209 lambda!172028)))

(declare-fun bs!854306 () Bool)

(assert (= bs!854306 (and d!1391795 d!1391549)))

(assert (=> bs!854306 (= lambda!172209 lambda!172166)))

(declare-fun bs!854307 () Bool)

(assert (= bs!854307 (and d!1391795 d!1391557)))

(assert (=> bs!854307 (= lambda!172209 lambda!172171)))

(declare-fun bs!854308 () Bool)

(assert (= bs!854308 (and d!1391795 d!1391477)))

(assert (=> bs!854308 (= lambda!172209 lambda!172136)))

(declare-fun lt!1696295 () ListMap!3585)

(assert (=> d!1391795 (invariantList!1015 (toList!4324 lt!1696295))))

(declare-fun e!2815327 () ListMap!3585)

(assert (=> d!1391795 (= lt!1696295 e!2815327)))

(declare-fun c!771120 () Bool)

(assert (=> d!1391795 (= c!771120 ((_ is Cons!50641) (t!357727 (toList!4323 lt!1695574))))))

(assert (=> d!1391795 (forall!10257 (t!357727 (toList!4323 lt!1695574)) lambda!172209)))

(assert (=> d!1391795 (= (extractMap!1214 (t!357727 (toList!4323 lt!1695574))) lt!1696295)))

(declare-fun b!4518854 () Bool)

(assert (=> b!4518854 (= e!2815327 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (toList!4323 lt!1695574)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lt!1695574))))))))

(declare-fun b!4518855 () Bool)

(assert (=> b!4518855 (= e!2815327 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391795 c!771120) b!4518854))

(assert (= (and d!1391795 (not c!771120)) b!4518855))

(declare-fun m!5265695 () Bool)

(assert (=> d!1391795 m!5265695))

(declare-fun m!5265697 () Bool)

(assert (=> d!1391795 m!5265697))

(declare-fun m!5265699 () Bool)

(assert (=> b!4518854 m!5265699))

(assert (=> b!4518854 m!5265699))

(declare-fun m!5265701 () Bool)

(assert (=> b!4518854 m!5265701))

(assert (=> b!4518387 d!1391795))

(declare-fun d!1391797 () Bool)

(assert (=> d!1391797 (= (get!16583 (getValueByKey!1086 (toList!4323 lm!1477) hash!344)) (v!44697 (getValueByKey!1086 (toList!4323 lm!1477) hash!344)))))

(assert (=> d!1391467 d!1391797))

(assert (=> d!1391467 d!1391599))

(declare-fun d!1391799 () Bool)

(declare-fun res!1880529 () Bool)

(declare-fun e!2815328 () Bool)

(assert (=> d!1391799 (=> res!1880529 e!2815328)))

(assert (=> d!1391799 (= res!1880529 ((_ is Nil!50640) (_2!28828 lt!1695575)))))

(assert (=> d!1391799 (= (forall!10259 (_2!28828 lt!1695575) lambda!172146) e!2815328)))

(declare-fun b!4518856 () Bool)

(declare-fun e!2815329 () Bool)

(assert (=> b!4518856 (= e!2815328 e!2815329)))

(declare-fun res!1880530 () Bool)

(assert (=> b!4518856 (=> (not res!1880530) (not e!2815329))))

(assert (=> b!4518856 (= res!1880530 (dynLambda!21160 lambda!172146 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun b!4518857 () Bool)

(assert (=> b!4518857 (= e!2815329 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172146))))

(assert (= (and d!1391799 (not res!1880529)) b!4518856))

(assert (= (and b!4518856 res!1880530) b!4518857))

(declare-fun b_lambda!154711 () Bool)

(assert (=> (not b_lambda!154711) (not b!4518856)))

(declare-fun m!5265703 () Bool)

(assert (=> b!4518856 m!5265703))

(declare-fun m!5265705 () Bool)

(assert (=> b!4518857 m!5265705))

(assert (=> d!1391513 d!1391799))

(assert (=> d!1391513 d!1391521))

(declare-fun d!1391801 () Bool)

(declare-fun res!1880531 () Bool)

(declare-fun e!2815330 () Bool)

(assert (=> d!1391801 (=> res!1880531 e!2815330)))

(assert (=> d!1391801 (= res!1880531 ((_ is Nil!50640) (toList!4324 lt!1695572)))))

(assert (=> d!1391801 (= (forall!10259 (toList!4324 lt!1695572) lambda!172119) e!2815330)))

(declare-fun b!4518858 () Bool)

(declare-fun e!2815331 () Bool)

(assert (=> b!4518858 (= e!2815330 e!2815331)))

(declare-fun res!1880532 () Bool)

(assert (=> b!4518858 (=> (not res!1880532) (not e!2815331))))

(assert (=> b!4518858 (= res!1880532 (dynLambda!21160 lambda!172119 (h!56491 (toList!4324 lt!1695572))))))

(declare-fun b!4518859 () Bool)

(assert (=> b!4518859 (= e!2815331 (forall!10259 (t!357726 (toList!4324 lt!1695572)) lambda!172119))))

(assert (= (and d!1391801 (not res!1880531)) b!4518858))

(assert (= (and b!4518858 res!1880532) b!4518859))

(declare-fun b_lambda!154713 () Bool)

(assert (=> (not b_lambda!154713) (not b!4518858)))

(declare-fun m!5265721 () Bool)

(assert (=> b!4518858 m!5265721))

(declare-fun m!5265725 () Bool)

(assert (=> b!4518859 m!5265725))

(assert (=> b!4518243 d!1391801))

(declare-fun d!1391803 () Bool)

(declare-fun res!1880533 () Bool)

(declare-fun e!2815332 () Bool)

(assert (=> d!1391803 (=> res!1880533 e!2815332)))

(assert (=> d!1391803 (= res!1880533 (not ((_ is Cons!50640) (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> d!1391803 (= (noDuplicateKeys!1158 (t!357726 (_2!28828 lt!1695575))) e!2815332)))

(declare-fun b!4518860 () Bool)

(declare-fun e!2815333 () Bool)

(assert (=> b!4518860 (= e!2815332 e!2815333)))

(declare-fun res!1880534 () Bool)

(assert (=> b!4518860 (=> (not res!1880534) (not e!2815333))))

(assert (=> b!4518860 (= res!1880534 (not (containsKey!1774 (t!357726 (t!357726 (_2!28828 lt!1695575))) (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))))

(declare-fun b!4518861 () Bool)

(assert (=> b!4518861 (= e!2815333 (noDuplicateKeys!1158 (t!357726 (t!357726 (_2!28828 lt!1695575)))))))

(assert (= (and d!1391803 (not res!1880533)) b!4518860))

(assert (= (and b!4518860 res!1880534) b!4518861))

(declare-fun m!5265733 () Bool)

(assert (=> b!4518860 m!5265733))

(declare-fun m!5265737 () Bool)

(assert (=> b!4518861 m!5265737))

(assert (=> b!4518400 d!1391803))

(declare-fun d!1391805 () Bool)

(declare-fun c!771121 () Bool)

(assert (=> d!1391805 (= c!771121 ((_ is Nil!50641) (t!357727 (toList!4323 lm!1477))))))

(declare-fun e!2815334 () (InoxSet tuple2!51068))

(assert (=> d!1391805 (= (content!8352 (t!357727 (toList!4323 lm!1477))) e!2815334)))

(declare-fun b!4518862 () Bool)

(assert (=> b!4518862 (= e!2815334 ((as const (Array tuple2!51068 Bool)) false))))

(declare-fun b!4518863 () Bool)

(assert (=> b!4518863 (= e!2815334 ((_ map or) (store ((as const (Array tuple2!51068 Bool)) false) (h!56492 (t!357727 (toList!4323 lm!1477))) true) (content!8352 (t!357727 (t!357727 (toList!4323 lm!1477))))))))

(assert (= (and d!1391805 c!771121) b!4518862))

(assert (= (and d!1391805 (not c!771121)) b!4518863))

(declare-fun m!5265747 () Bool)

(assert (=> b!4518863 m!5265747))

(declare-fun m!5265749 () Bool)

(assert (=> b!4518863 m!5265749))

(assert (=> d!1391359 d!1391805))

(declare-fun bs!854354 () Bool)

(declare-fun b!4518923 () Bool)

(assert (= bs!854354 (and b!4518923 b!4518437)))

(declare-fun lambda!172221 () Int)

(assert (=> bs!854354 (= (= (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172221 lambda!172160))))

(declare-fun bs!854355 () Bool)

(assert (= bs!854355 (and b!4518923 b!4518551)))

(assert (=> bs!854355 (= (= (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (toList!4324 lt!1695584)) (= lambda!172221 lambda!172172))))

(declare-fun bs!854356 () Bool)

(assert (= bs!854356 (and b!4518923 b!4518556)))

(assert (=> bs!854356 (= (= (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (toList!4324 lt!1695601)) (= lambda!172221 lambda!172174))))

(assert (=> b!4518923 true))

(declare-fun bs!854357 () Bool)

(declare-fun b!4518925 () Bool)

(assert (= bs!854357 (and b!4518925 b!4518437)))

(declare-fun lambda!172222 () Int)

(assert (=> bs!854357 (= (= (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172222 lambda!172160))))

(declare-fun bs!854358 () Bool)

(assert (= bs!854358 (and b!4518925 b!4518551)))

(assert (=> bs!854358 (= (= (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (toList!4324 lt!1695584)) (= lambda!172222 lambda!172172))))

(declare-fun bs!854359 () Bool)

(assert (= bs!854359 (and b!4518925 b!4518556)))

(assert (=> bs!854359 (= (= (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (toList!4324 lt!1695601)) (= lambda!172222 lambda!172174))))

(declare-fun bs!854360 () Bool)

(assert (= bs!854360 (and b!4518925 b!4518923)))

(assert (=> bs!854360 (= (= (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172222 lambda!172221))))

(assert (=> b!4518925 true))

(declare-fun bs!854361 () Bool)

(declare-fun b!4518918 () Bool)

(assert (= bs!854361 (and b!4518918 b!4518556)))

(declare-fun lambda!172223 () Int)

(assert (=> bs!854361 (= (= (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (toList!4324 lt!1695601)) (= lambda!172223 lambda!172174))))

(declare-fun bs!854362 () Bool)

(assert (= bs!854362 (and b!4518918 b!4518925)))

(assert (=> bs!854362 (= (= (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172223 lambda!172222))))

(declare-fun bs!854363 () Bool)

(assert (= bs!854363 (and b!4518918 b!4518923)))

(assert (=> bs!854363 (= (= (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172223 lambda!172221))))

(declare-fun bs!854364 () Bool)

(assert (= bs!854364 (and b!4518918 b!4518551)))

(assert (=> bs!854364 (= (= (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (toList!4324 lt!1695584)) (= lambda!172223 lambda!172172))))

(declare-fun bs!854365 () Bool)

(assert (= bs!854365 (and b!4518918 b!4518437)))

(assert (=> bs!854365 (= lambda!172223 lambda!172160)))

(assert (=> b!4518918 true))

(declare-fun bs!854366 () Bool)

(declare-fun b!4518921 () Bool)

(assert (= bs!854366 (and b!4518921 b!4518438)))

(declare-fun lambda!172224 () Int)

(assert (=> bs!854366 (= lambda!172224 lambda!172161)))

(declare-fun bs!854367 () Bool)

(assert (= bs!854367 (and b!4518921 b!4518552)))

(assert (=> bs!854367 (= lambda!172224 lambda!172173)))

(declare-fun bs!854368 () Bool)

(assert (= bs!854368 (and b!4518921 b!4518557)))

(assert (=> bs!854368 (= lambda!172224 lambda!172175)))

(declare-fun d!1391807 () Bool)

(declare-fun e!2815370 () Bool)

(assert (=> d!1391807 e!2815370))

(declare-fun res!1880556 () Bool)

(assert (=> d!1391807 (=> (not res!1880556) (not e!2815370))))

(declare-fun lt!1696325 () List!50766)

(assert (=> d!1391807 (= res!1880556 (noDuplicate!745 lt!1696325))))

(declare-fun e!2815369 () List!50766)

(assert (=> d!1391807 (= lt!1696325 e!2815369)))

(declare-fun c!771140 () Bool)

(assert (=> d!1391807 (= c!771140 ((_ is Cons!50640) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))

(assert (=> d!1391807 (invariantList!1015 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1391807 (= (getKeysList!462 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) lt!1696325)))

(declare-fun b!4518917 () Bool)

(declare-fun res!1880557 () Bool)

(assert (=> b!4518917 (=> (not res!1880557) (not e!2815370))))

(assert (=> b!4518917 (= res!1880557 (= (length!346 lt!1696325) (length!347 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))))

(declare-fun res!1880558 () Bool)

(assert (=> b!4518918 (=> (not res!1880558) (not e!2815370))))

(assert (=> b!4518918 (= res!1880558 (forall!10260 lt!1696325 lambda!172223))))

(declare-fun b!4518919 () Bool)

(declare-fun e!2815367 () Unit!94720)

(declare-fun Unit!94896 () Unit!94720)

(assert (=> b!4518919 (= e!2815367 Unit!94896)))

(declare-fun b!4518920 () Bool)

(declare-fun e!2815368 () Unit!94720)

(declare-fun Unit!94897 () Unit!94720)

(assert (=> b!4518920 (= e!2815368 Unit!94897)))

(assert (=> b!4518921 (= e!2815370 (= (content!8349 lt!1696325) (content!8349 (map!11135 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) lambda!172224))))))

(declare-fun b!4518922 () Bool)

(assert (=> b!4518922 false))

(declare-fun Unit!94898 () Unit!94720)

(assert (=> b!4518922 (= e!2815367 Unit!94898)))

(assert (=> b!4518923 false))

(declare-fun lt!1696328 () Unit!94720)

(declare-fun forallContained!2513 (List!50766 Int K!12035) Unit!94720)

(assert (=> b!4518923 (= lt!1696328 (forallContained!2513 (getKeysList!462 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) lambda!172221 (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))))

(declare-fun Unit!94899 () Unit!94720)

(assert (=> b!4518923 (= e!2815368 Unit!94899)))

(declare-fun b!4518924 () Bool)

(assert (=> b!4518924 (= e!2815369 Nil!50642)))

(assert (=> b!4518925 (= e!2815369 (Cons!50642 (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (getKeysList!462 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))))

(declare-fun c!771139 () Bool)

(assert (=> b!4518925 (= c!771139 (containsKey!1775 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))))

(declare-fun lt!1696326 () Unit!94720)

(assert (=> b!4518925 (= lt!1696326 e!2815367)))

(declare-fun c!771138 () Bool)

(assert (=> b!4518925 (= c!771138 (contains!13364 (getKeysList!462 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))))

(declare-fun lt!1696327 () Unit!94720)

(assert (=> b!4518925 (= lt!1696327 e!2815368)))

(declare-fun lt!1696322 () List!50766)

(assert (=> b!4518925 (= lt!1696322 (getKeysList!462 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))))

(declare-fun lt!1696324 () Unit!94720)

(declare-fun lemmaForallContainsAddHeadPreserves!167 (List!50764 List!50766 tuple2!51066) Unit!94720)

(assert (=> b!4518925 (= lt!1696324 (lemmaForallContainsAddHeadPreserves!167 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) lt!1696322 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))))

(assert (=> b!4518925 (forall!10260 lt!1696322 lambda!172222)))

(declare-fun lt!1696323 () Unit!94720)

(assert (=> b!4518925 (= lt!1696323 lt!1696324)))

(assert (= (and d!1391807 c!771140) b!4518925))

(assert (= (and d!1391807 (not c!771140)) b!4518924))

(assert (= (and b!4518925 c!771139) b!4518922))

(assert (= (and b!4518925 (not c!771139)) b!4518919))

(assert (= (and b!4518925 c!771138) b!4518923))

(assert (= (and b!4518925 (not c!771138)) b!4518920))

(assert (= (and d!1391807 res!1880556) b!4518917))

(assert (= (and b!4518917 res!1880557) b!4518918))

(assert (= (and b!4518918 res!1880558) b!4518921))

(declare-fun m!5265821 () Bool)

(assert (=> b!4518925 m!5265821))

(declare-fun m!5265823 () Bool)

(assert (=> b!4518925 m!5265823))

(declare-fun m!5265825 () Bool)

(assert (=> b!4518925 m!5265825))

(assert (=> b!4518925 m!5265821))

(declare-fun m!5265827 () Bool)

(assert (=> b!4518925 m!5265827))

(declare-fun m!5265829 () Bool)

(assert (=> b!4518925 m!5265829))

(declare-fun m!5265831 () Bool)

(assert (=> b!4518918 m!5265831))

(declare-fun m!5265833 () Bool)

(assert (=> b!4518917 m!5265833))

(assert (=> b!4518917 m!5264985))

(declare-fun m!5265835 () Bool)

(assert (=> b!4518921 m!5265835))

(declare-fun m!5265837 () Bool)

(assert (=> b!4518921 m!5265837))

(assert (=> b!4518921 m!5265837))

(declare-fun m!5265839 () Bool)

(assert (=> b!4518921 m!5265839))

(declare-fun m!5265841 () Bool)

(assert (=> d!1391807 m!5265841))

(declare-fun m!5265843 () Bool)

(assert (=> d!1391807 m!5265843))

(assert (=> b!4518923 m!5265821))

(assert (=> b!4518923 m!5265821))

(declare-fun m!5265845 () Bool)

(assert (=> b!4518923 m!5265845))

(assert (=> b!4518098 d!1391807))

(declare-fun d!1391839 () Bool)

(declare-fun c!771141 () Bool)

(assert (=> d!1391839 (= c!771141 (and ((_ is Cons!50641) (toList!4323 lt!1695620)) (= (_1!28828 (h!56492 (toList!4323 lt!1695620))) (_1!28828 lt!1695575))))))

(declare-fun e!2815371 () Option!11106)

(assert (=> d!1391839 (= (getValueByKey!1086 (toList!4323 lt!1695620) (_1!28828 lt!1695575)) e!2815371)))

(declare-fun b!4518929 () Bool)

(declare-fun e!2815372 () Option!11106)

(assert (=> b!4518929 (= e!2815371 e!2815372)))

(declare-fun c!771142 () Bool)

(assert (=> b!4518929 (= c!771142 (and ((_ is Cons!50641) (toList!4323 lt!1695620)) (not (= (_1!28828 (h!56492 (toList!4323 lt!1695620))) (_1!28828 lt!1695575)))))))

(declare-fun b!4518930 () Bool)

(assert (=> b!4518930 (= e!2815372 (getValueByKey!1086 (t!357727 (toList!4323 lt!1695620)) (_1!28828 lt!1695575)))))

(declare-fun b!4518931 () Bool)

(assert (=> b!4518931 (= e!2815372 None!11105)))

(declare-fun b!4518928 () Bool)

(assert (=> b!4518928 (= e!2815371 (Some!11105 (_2!28828 (h!56492 (toList!4323 lt!1695620)))))))

(assert (= (and d!1391839 c!771141) b!4518928))

(assert (= (and d!1391839 (not c!771141)) b!4518929))

(assert (= (and b!4518929 c!771142) b!4518930))

(assert (= (and b!4518929 (not c!771142)) b!4518931))

(declare-fun m!5265847 () Bool)

(assert (=> b!4518930 m!5265847))

(assert (=> b!4518070 d!1391839))

(declare-fun d!1391841 () Bool)

(declare-fun e!2815373 () Bool)

(assert (=> d!1391841 e!2815373))

(declare-fun res!1880559 () Bool)

(assert (=> d!1391841 (=> res!1880559 e!2815373)))

(declare-fun lt!1696330 () Bool)

(assert (=> d!1391841 (= res!1880559 (not lt!1696330))))

(declare-fun lt!1696331 () Bool)

(assert (=> d!1391841 (= lt!1696330 lt!1696331)))

(declare-fun lt!1696329 () Unit!94720)

(declare-fun e!2815374 () Unit!94720)

(assert (=> d!1391841 (= lt!1696329 e!2815374)))

(declare-fun c!771143 () Bool)

(assert (=> d!1391841 (= c!771143 lt!1696331)))

(assert (=> d!1391841 (= lt!1696331 (containsKey!1777 (toList!4323 lt!1695905) (_1!28828 lt!1695575)))))

(assert (=> d!1391841 (= (contains!13362 lt!1695905 (_1!28828 lt!1695575)) lt!1696330)))

(declare-fun b!4518932 () Bool)

(declare-fun lt!1696332 () Unit!94720)

(assert (=> b!4518932 (= e!2815374 lt!1696332)))

(assert (=> b!4518932 (= lt!1696332 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lt!1695905) (_1!28828 lt!1695575)))))

(assert (=> b!4518932 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695905) (_1!28828 lt!1695575)))))

(declare-fun b!4518933 () Bool)

(declare-fun Unit!94900 () Unit!94720)

(assert (=> b!4518933 (= e!2815374 Unit!94900)))

(declare-fun b!4518934 () Bool)

(assert (=> b!4518934 (= e!2815373 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695905) (_1!28828 lt!1695575))))))

(assert (= (and d!1391841 c!771143) b!4518932))

(assert (= (and d!1391841 (not c!771143)) b!4518933))

(assert (= (and d!1391841 (not res!1880559)) b!4518934))

(declare-fun m!5265849 () Bool)

(assert (=> d!1391841 m!5265849))

(declare-fun m!5265851 () Bool)

(assert (=> b!4518932 m!5265851))

(assert (=> b!4518932 m!5264667))

(assert (=> b!4518932 m!5264667))

(declare-fun m!5265853 () Bool)

(assert (=> b!4518932 m!5265853))

(assert (=> b!4518934 m!5264667))

(assert (=> b!4518934 m!5264667))

(assert (=> b!4518934 m!5265853))

(assert (=> d!1391443 d!1391841))

(declare-fun d!1391843 () Bool)

(declare-fun c!771144 () Bool)

(assert (=> d!1391843 (= c!771144 (and ((_ is Cons!50641) lt!1695907) (= (_1!28828 (h!56492 lt!1695907)) (_1!28828 lt!1695575))))))

(declare-fun e!2815375 () Option!11106)

(assert (=> d!1391843 (= (getValueByKey!1086 lt!1695907 (_1!28828 lt!1695575)) e!2815375)))

(declare-fun b!4518936 () Bool)

(declare-fun e!2815376 () Option!11106)

(assert (=> b!4518936 (= e!2815375 e!2815376)))

(declare-fun c!771145 () Bool)

(assert (=> b!4518936 (= c!771145 (and ((_ is Cons!50641) lt!1695907) (not (= (_1!28828 (h!56492 lt!1695907)) (_1!28828 lt!1695575)))))))

(declare-fun b!4518937 () Bool)

(assert (=> b!4518937 (= e!2815376 (getValueByKey!1086 (t!357727 lt!1695907) (_1!28828 lt!1695575)))))

(declare-fun b!4518938 () Bool)

(assert (=> b!4518938 (= e!2815376 None!11105)))

(declare-fun b!4518935 () Bool)

(assert (=> b!4518935 (= e!2815375 (Some!11105 (_2!28828 (h!56492 lt!1695907))))))

(assert (= (and d!1391843 c!771144) b!4518935))

(assert (= (and d!1391843 (not c!771144)) b!4518936))

(assert (= (and b!4518936 c!771145) b!4518937))

(assert (= (and b!4518936 (not c!771145)) b!4518938))

(declare-fun m!5265855 () Bool)

(assert (=> b!4518937 m!5265855))

(assert (=> d!1391443 d!1391843))

(declare-fun d!1391845 () Bool)

(assert (=> d!1391845 (= (getValueByKey!1086 lt!1695907 (_1!28828 lt!1695575)) (Some!11105 (_2!28828 lt!1695575)))))

(declare-fun lt!1696333 () Unit!94720)

(assert (=> d!1391845 (= lt!1696333 (choose!29502 lt!1695907 (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(declare-fun e!2815377 () Bool)

(assert (=> d!1391845 e!2815377))

(declare-fun res!1880560 () Bool)

(assert (=> d!1391845 (=> (not res!1880560) (not e!2815377))))

(assert (=> d!1391845 (= res!1880560 (isStrictlySorted!429 lt!1695907))))

(assert (=> d!1391845 (= (lemmaContainsTupThenGetReturnValue!673 lt!1695907 (_1!28828 lt!1695575) (_2!28828 lt!1695575)) lt!1696333)))

(declare-fun b!4518939 () Bool)

(declare-fun res!1880561 () Bool)

(assert (=> b!4518939 (=> (not res!1880561) (not e!2815377))))

(assert (=> b!4518939 (= res!1880561 (containsKey!1777 lt!1695907 (_1!28828 lt!1695575)))))

(declare-fun b!4518940 () Bool)

(assert (=> b!4518940 (= e!2815377 (contains!13363 lt!1695907 (tuple2!51069 (_1!28828 lt!1695575) (_2!28828 lt!1695575))))))

(assert (= (and d!1391845 res!1880560) b!4518939))

(assert (= (and b!4518939 res!1880561) b!4518940))

(assert (=> d!1391845 m!5264661))

(declare-fun m!5265857 () Bool)

(assert (=> d!1391845 m!5265857))

(declare-fun m!5265859 () Bool)

(assert (=> d!1391845 m!5265859))

(declare-fun m!5265861 () Bool)

(assert (=> b!4518939 m!5265861))

(declare-fun m!5265863 () Bool)

(assert (=> b!4518940 m!5265863))

(assert (=> d!1391443 d!1391845))

(declare-fun b!4518942 () Bool)

(declare-fun e!2815382 () List!50765)

(declare-fun call!314813 () List!50765)

(assert (=> b!4518942 (= e!2815382 call!314813)))

(declare-fun bm!314808 () Bool)

(declare-fun call!314814 () List!50765)

(assert (=> bm!314808 (= call!314814 call!314813)))

(declare-fun b!4518943 () Bool)

(declare-fun e!2815379 () List!50765)

(assert (=> b!4518943 (= e!2815379 (insertStrictlySorted!405 (t!357727 (toList!4323 lt!1695580)) (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))

(declare-fun b!4518944 () Bool)

(declare-fun res!1880563 () Bool)

(declare-fun e!2815380 () Bool)

(assert (=> b!4518944 (=> (not res!1880563) (not e!2815380))))

(declare-fun lt!1696334 () List!50765)

(assert (=> b!4518944 (= res!1880563 (containsKey!1777 lt!1696334 (_1!28828 lt!1695575)))))

(declare-fun b!4518945 () Bool)

(declare-fun c!771148 () Bool)

(assert (=> b!4518945 (= c!771148 (and ((_ is Cons!50641) (toList!4323 lt!1695580)) (bvsgt (_1!28828 (h!56492 (toList!4323 lt!1695580))) (_1!28828 lt!1695575))))))

(declare-fun e!2815381 () List!50765)

(declare-fun e!2815378 () List!50765)

(assert (=> b!4518945 (= e!2815381 e!2815378)))

(declare-fun b!4518946 () Bool)

(assert (=> b!4518946 (= e!2815382 e!2815381)))

(declare-fun c!771147 () Bool)

(assert (=> b!4518946 (= c!771147 (and ((_ is Cons!50641) (toList!4323 lt!1695580)) (= (_1!28828 (h!56492 (toList!4323 lt!1695580))) (_1!28828 lt!1695575))))))

(declare-fun d!1391847 () Bool)

(assert (=> d!1391847 e!2815380))

(declare-fun res!1880562 () Bool)

(assert (=> d!1391847 (=> (not res!1880562) (not e!2815380))))

(assert (=> d!1391847 (= res!1880562 (isStrictlySorted!429 lt!1696334))))

(assert (=> d!1391847 (= lt!1696334 e!2815382)))

(declare-fun c!771146 () Bool)

(assert (=> d!1391847 (= c!771146 (and ((_ is Cons!50641) (toList!4323 lt!1695580)) (bvslt (_1!28828 (h!56492 (toList!4323 lt!1695580))) (_1!28828 lt!1695575))))))

(assert (=> d!1391847 (isStrictlySorted!429 (toList!4323 lt!1695580))))

(assert (=> d!1391847 (= (insertStrictlySorted!405 (toList!4323 lt!1695580) (_1!28828 lt!1695575) (_2!28828 lt!1695575)) lt!1696334)))

(declare-fun b!4518941 () Bool)

(declare-fun call!314815 () List!50765)

(assert (=> b!4518941 (= e!2815378 call!314815)))

(declare-fun bm!314809 () Bool)

(assert (=> bm!314809 (= call!314813 ($colon$colon!932 e!2815379 (ite c!771146 (h!56492 (toList!4323 lt!1695580)) (tuple2!51069 (_1!28828 lt!1695575) (_2!28828 lt!1695575)))))))

(declare-fun c!771149 () Bool)

(assert (=> bm!314809 (= c!771149 c!771146)))

(declare-fun b!4518947 () Bool)

(assert (=> b!4518947 (= e!2815380 (contains!13363 lt!1696334 (tuple2!51069 (_1!28828 lt!1695575) (_2!28828 lt!1695575))))))

(declare-fun b!4518948 () Bool)

(assert (=> b!4518948 (= e!2815381 call!314814)))

(declare-fun bm!314810 () Bool)

(assert (=> bm!314810 (= call!314815 call!314814)))

(declare-fun b!4518949 () Bool)

(assert (=> b!4518949 (= e!2815379 (ite c!771147 (t!357727 (toList!4323 lt!1695580)) (ite c!771148 (Cons!50641 (h!56492 (toList!4323 lt!1695580)) (t!357727 (toList!4323 lt!1695580))) Nil!50641)))))

(declare-fun b!4518950 () Bool)

(assert (=> b!4518950 (= e!2815378 call!314815)))

(assert (= (and d!1391847 c!771146) b!4518942))

(assert (= (and d!1391847 (not c!771146)) b!4518946))

(assert (= (and b!4518946 c!771147) b!4518948))

(assert (= (and b!4518946 (not c!771147)) b!4518945))

(assert (= (and b!4518945 c!771148) b!4518950))

(assert (= (and b!4518945 (not c!771148)) b!4518941))

(assert (= (or b!4518950 b!4518941) bm!314810))

(assert (= (or b!4518948 bm!314810) bm!314808))

(assert (= (or b!4518942 bm!314808) bm!314809))

(assert (= (and bm!314809 c!771149) b!4518943))

(assert (= (and bm!314809 (not c!771149)) b!4518949))

(assert (= (and d!1391847 res!1880562) b!4518944))

(assert (= (and b!4518944 res!1880563) b!4518947))

(declare-fun m!5265865 () Bool)

(assert (=> b!4518943 m!5265865))

(declare-fun m!5265867 () Bool)

(assert (=> bm!314809 m!5265867))

(declare-fun m!5265869 () Bool)

(assert (=> b!4518944 m!5265869))

(declare-fun m!5265871 () Bool)

(assert (=> b!4518947 m!5265871))

(declare-fun m!5265873 () Bool)

(assert (=> d!1391847 m!5265873))

(declare-fun m!5265875 () Bool)

(assert (=> d!1391847 m!5265875))

(assert (=> d!1391443 d!1391847))

(assert (=> d!1391357 d!1391739))

(declare-fun d!1391849 () Bool)

(assert (=> d!1391849 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344))))

(declare-fun lt!1696335 () Unit!94720)

(assert (=> d!1391849 (= lt!1696335 (choose!29492 (toList!4323 lt!1695586) hash!344))))

(declare-fun e!2815383 () Bool)

(assert (=> d!1391849 e!2815383))

(declare-fun res!1880564 () Bool)

(assert (=> d!1391849 (=> (not res!1880564) (not e!2815383))))

(assert (=> d!1391849 (= res!1880564 (isStrictlySorted!429 (toList!4323 lt!1695586)))))

(assert (=> d!1391849 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lt!1695586) hash!344) lt!1696335)))

(declare-fun b!4518951 () Bool)

(assert (=> b!4518951 (= e!2815383 (containsKey!1777 (toList!4323 lt!1695586) hash!344))))

(assert (= (and d!1391849 res!1880564) b!4518951))

(assert (=> d!1391849 m!5264615))

(assert (=> d!1391849 m!5264615))

(assert (=> d!1391849 m!5264617))

(declare-fun m!5265877 () Bool)

(assert (=> d!1391849 m!5265877))

(assert (=> d!1391849 m!5265323))

(assert (=> b!4518951 m!5264611))

(assert (=> b!4518271 d!1391849))

(declare-fun d!1391851 () Bool)

(assert (=> d!1391851 (= (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344)) (not (isEmpty!28663 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344))))))

(declare-fun bs!854369 () Bool)

(assert (= bs!854369 d!1391851))

(assert (=> bs!854369 m!5264615))

(declare-fun m!5265879 () Bool)

(assert (=> bs!854369 m!5265879))

(assert (=> b!4518271 d!1391851))

(declare-fun d!1391853 () Bool)

(declare-fun c!771150 () Bool)

(assert (=> d!1391853 (= c!771150 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (= (_1!28828 (h!56492 (toList!4323 lt!1695586))) hash!344)))))

(declare-fun e!2815384 () Option!11106)

(assert (=> d!1391853 (= (getValueByKey!1086 (toList!4323 lt!1695586) hash!344) e!2815384)))

(declare-fun b!4518953 () Bool)

(declare-fun e!2815385 () Option!11106)

(assert (=> b!4518953 (= e!2815384 e!2815385)))

(declare-fun c!771151 () Bool)

(assert (=> b!4518953 (= c!771151 (and ((_ is Cons!50641) (toList!4323 lt!1695586)) (not (= (_1!28828 (h!56492 (toList!4323 lt!1695586))) hash!344))))))

(declare-fun b!4518954 () Bool)

(assert (=> b!4518954 (= e!2815385 (getValueByKey!1086 (t!357727 (toList!4323 lt!1695586)) hash!344))))

(declare-fun b!4518955 () Bool)

(assert (=> b!4518955 (= e!2815385 None!11105)))

(declare-fun b!4518952 () Bool)

(assert (=> b!4518952 (= e!2815384 (Some!11105 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(assert (= (and d!1391853 c!771150) b!4518952))

(assert (= (and d!1391853 (not c!771150)) b!4518953))

(assert (= (and b!4518953 c!771151) b!4518954))

(assert (= (and b!4518953 (not c!771151)) b!4518955))

(declare-fun m!5265881 () Bool)

(assert (=> b!4518954 m!5265881))

(assert (=> b!4518271 d!1391853))

(assert (=> d!1391495 d!1391493))

(declare-fun d!1391855 () Bool)

(assert (=> d!1391855 (containsKeyBiggerList!138 (toList!4323 lt!1695586) key!3287)))

(assert (=> d!1391855 true))

(declare-fun _$33!661 () Unit!94720)

(assert (=> d!1391855 (= (choose!29488 lt!1695586 key!3287 hashF!1107) _$33!661)))

(declare-fun bs!854372 () Bool)

(assert (= bs!854372 d!1391855))

(assert (=> bs!854372 m!5264107))

(assert (=> d!1391495 d!1391855))

(declare-fun d!1391861 () Bool)

(declare-fun res!1880566 () Bool)

(declare-fun e!2815387 () Bool)

(assert (=> d!1391861 (=> res!1880566 e!2815387)))

(assert (=> d!1391861 (= res!1880566 ((_ is Nil!50641) (toList!4323 lt!1695586)))))

(assert (=> d!1391861 (= (forall!10257 (toList!4323 lt!1695586) lambda!172139) e!2815387)))

(declare-fun b!4518957 () Bool)

(declare-fun e!2815388 () Bool)

(assert (=> b!4518957 (= e!2815387 e!2815388)))

(declare-fun res!1880567 () Bool)

(assert (=> b!4518957 (=> (not res!1880567) (not e!2815388))))

(assert (=> b!4518957 (= res!1880567 (dynLambda!21159 lambda!172139 (h!56492 (toList!4323 lt!1695586))))))

(declare-fun b!4518958 () Bool)

(assert (=> b!4518958 (= e!2815388 (forall!10257 (t!357727 (toList!4323 lt!1695586)) lambda!172139))))

(assert (= (and d!1391861 (not res!1880566)) b!4518957))

(assert (= (and b!4518957 res!1880567) b!4518958))

(declare-fun b_lambda!154719 () Bool)

(assert (=> (not b_lambda!154719) (not b!4518957)))

(declare-fun m!5265895 () Bool)

(assert (=> b!4518957 m!5265895))

(declare-fun m!5265901 () Bool)

(assert (=> b!4518958 m!5265901))

(assert (=> d!1391495 d!1391861))

(declare-fun d!1391865 () Bool)

(declare-fun res!1880568 () Bool)

(declare-fun e!2815391 () Bool)

(assert (=> d!1391865 (=> res!1880568 e!2815391)))

(declare-fun e!2815390 () Bool)

(assert (=> d!1391865 (= res!1880568 e!2815390)))

(declare-fun res!1880570 () Bool)

(assert (=> d!1391865 (=> (not res!1880570) (not e!2815390))))

(assert (=> d!1391865 (= res!1880570 ((_ is Cons!50641) (t!357727 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1391865 (= (containsKeyBiggerList!138 (t!357727 (t!357727 (toList!4323 lm!1477))) key!3287) e!2815391)))

(declare-fun b!4518961 () Bool)

(assert (=> b!4518961 (= e!2815390 (containsKey!1774 (_2!28828 (h!56492 (t!357727 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(declare-fun b!4518962 () Bool)

(declare-fun e!2815392 () Bool)

(assert (=> b!4518962 (= e!2815391 e!2815392)))

(declare-fun res!1880569 () Bool)

(assert (=> b!4518962 (=> (not res!1880569) (not e!2815392))))

(assert (=> b!4518962 (= res!1880569 ((_ is Cons!50641) (t!357727 (t!357727 (toList!4323 lm!1477)))))))

(declare-fun b!4518963 () Bool)

(assert (=> b!4518963 (= e!2815392 (containsKeyBiggerList!138 (t!357727 (t!357727 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(assert (= (and d!1391865 res!1880570) b!4518961))

(assert (= (and d!1391865 (not res!1880568)) b!4518962))

(assert (= (and b!4518962 res!1880569) b!4518963))

(declare-fun m!5265907 () Bool)

(assert (=> b!4518961 m!5265907))

(declare-fun m!5265909 () Bool)

(assert (=> b!4518963 m!5265909))

(assert (=> b!4518362 d!1391865))

(declare-fun bs!854373 () Bool)

(declare-fun b!4518967 () Bool)

(assert (= bs!854373 (and b!4518967 b!4518556)))

(declare-fun lambda!172225 () Int)

(assert (=> bs!854373 (= (= (toList!4324 lt!1695582) (toList!4324 lt!1695601)) (= lambda!172225 lambda!172174))))

(declare-fun bs!854374 () Bool)

(assert (= bs!854374 (and b!4518967 b!4518923)))

(assert (=> bs!854374 (= (= (toList!4324 lt!1695582) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172225 lambda!172221))))

(declare-fun bs!854375 () Bool)

(assert (= bs!854375 (and b!4518967 b!4518551)))

(assert (=> bs!854375 (= (= (toList!4324 lt!1695582) (toList!4324 lt!1695584)) (= lambda!172225 lambda!172172))))

(declare-fun bs!854376 () Bool)

(assert (= bs!854376 (and b!4518967 b!4518437)))

(assert (=> bs!854376 (= (= (toList!4324 lt!1695582) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172225 lambda!172160))))

(declare-fun bs!854377 () Bool)

(assert (= bs!854377 (and b!4518967 b!4518925)))

(assert (=> bs!854377 (= (= (toList!4324 lt!1695582) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172225 lambda!172222))))

(declare-fun bs!854378 () Bool)

(assert (= bs!854378 (and b!4518967 b!4518918)))

(assert (=> bs!854378 (= (= (toList!4324 lt!1695582) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172225 lambda!172223))))

(assert (=> b!4518967 true))

(declare-fun bs!854379 () Bool)

(declare-fun b!4518968 () Bool)

(assert (= bs!854379 (and b!4518968 b!4518438)))

(declare-fun lambda!172226 () Int)

(assert (=> bs!854379 (= lambda!172226 lambda!172161)))

(declare-fun bs!854380 () Bool)

(assert (= bs!854380 (and b!4518968 b!4518552)))

(assert (=> bs!854380 (= lambda!172226 lambda!172173)))

(declare-fun bs!854381 () Bool)

(assert (= bs!854381 (and b!4518968 b!4518557)))

(assert (=> bs!854381 (= lambda!172226 lambda!172175)))

(declare-fun bs!854383 () Bool)

(assert (= bs!854383 (and b!4518968 b!4518921)))

(assert (=> bs!854383 (= lambda!172226 lambda!172224)))

(declare-fun d!1391869 () Bool)

(declare-fun e!2815394 () Bool)

(assert (=> d!1391869 e!2815394))

(declare-fun res!1880572 () Bool)

(assert (=> d!1391869 (=> (not res!1880572) (not e!2815394))))

(declare-fun lt!1696337 () List!50766)

(assert (=> d!1391869 (= res!1880572 (noDuplicate!745 lt!1696337))))

(assert (=> d!1391869 (= lt!1696337 (getKeysList!462 (toList!4324 lt!1695582)))))

(assert (=> d!1391869 (= (keys!17589 lt!1695582) lt!1696337)))

(declare-fun b!4518966 () Bool)

(declare-fun res!1880571 () Bool)

(assert (=> b!4518966 (=> (not res!1880571) (not e!2815394))))

(assert (=> b!4518966 (= res!1880571 (= (length!346 lt!1696337) (length!347 (toList!4324 lt!1695582))))))

(declare-fun res!1880573 () Bool)

(assert (=> b!4518967 (=> (not res!1880573) (not e!2815394))))

(assert (=> b!4518967 (= res!1880573 (forall!10260 lt!1696337 lambda!172225))))

(assert (=> b!4518968 (= e!2815394 (= (content!8349 lt!1696337) (content!8349 (map!11135 (toList!4324 lt!1695582) lambda!172226))))))

(assert (= (and d!1391869 res!1880572) b!4518966))

(assert (= (and b!4518966 res!1880571) b!4518967))

(assert (= (and b!4518967 res!1880573) b!4518968))

(declare-fun m!5265915 () Bool)

(assert (=> d!1391869 m!5265915))

(assert (=> d!1391869 m!5264925))

(declare-fun m!5265917 () Bool)

(assert (=> b!4518966 m!5265917))

(declare-fun m!5265919 () Bool)

(assert (=> b!4518966 m!5265919))

(declare-fun m!5265921 () Bool)

(assert (=> b!4518967 m!5265921))

(declare-fun m!5265923 () Bool)

(assert (=> b!4518968 m!5265923))

(declare-fun m!5265925 () Bool)

(assert (=> b!4518968 m!5265925))

(assert (=> b!4518968 m!5265925))

(declare-fun m!5265927 () Bool)

(assert (=> b!4518968 m!5265927))

(assert (=> b!4518403 d!1391869))

(declare-fun d!1391875 () Bool)

(declare-fun res!1880577 () Bool)

(declare-fun e!2815398 () Bool)

(assert (=> d!1391875 (=> res!1880577 e!2815398)))

(assert (=> d!1391875 (= res!1880577 ((_ is Nil!50640) (ite c!770996 (toList!4324 lt!1695590) (toList!4324 lt!1695997))))))

(assert (=> d!1391875 (= (forall!10259 (ite c!770996 (toList!4324 lt!1695590) (toList!4324 lt!1695997)) (ite c!770996 lambda!172143 lambda!172145)) e!2815398)))

(declare-fun b!4518974 () Bool)

(declare-fun e!2815399 () Bool)

(assert (=> b!4518974 (= e!2815398 e!2815399)))

(declare-fun res!1880578 () Bool)

(assert (=> b!4518974 (=> (not res!1880578) (not e!2815399))))

(assert (=> b!4518974 (= res!1880578 (dynLambda!21160 (ite c!770996 lambda!172143 lambda!172145) (h!56491 (ite c!770996 (toList!4324 lt!1695590) (toList!4324 lt!1695997)))))))

(declare-fun b!4518975 () Bool)

(assert (=> b!4518975 (= e!2815399 (forall!10259 (t!357726 (ite c!770996 (toList!4324 lt!1695590) (toList!4324 lt!1695997))) (ite c!770996 lambda!172143 lambda!172145)))))

(assert (= (and d!1391875 (not res!1880577)) b!4518974))

(assert (= (and b!4518974 res!1880578) b!4518975))

(declare-fun b_lambda!154721 () Bool)

(assert (=> (not b_lambda!154721) (not b!4518974)))

(declare-fun m!5265929 () Bool)

(assert (=> b!4518974 m!5265929))

(declare-fun m!5265931 () Bool)

(assert (=> b!4518975 m!5265931))

(assert (=> bm!314758 d!1391875))

(declare-fun d!1391877 () Bool)

(assert (=> d!1391877 (= (invariantList!1015 (toList!4324 lt!1695619)) (noDuplicatedKeys!260 (toList!4324 lt!1695619)))))

(declare-fun bs!854400 () Bool)

(assert (= bs!854400 d!1391877))

(declare-fun m!5265933 () Bool)

(assert (=> bs!854400 m!5265933))

(assert (=> d!1391335 d!1391877))

(declare-fun d!1391879 () Bool)

(declare-fun res!1880579 () Bool)

(declare-fun e!2815400 () Bool)

(assert (=> d!1391879 (=> res!1880579 e!2815400)))

(assert (=> d!1391879 (= res!1880579 ((_ is Nil!50641) (toList!4323 lt!1695580)))))

(assert (=> d!1391879 (= (forall!10257 (toList!4323 lt!1695580) lambda!172027) e!2815400)))

(declare-fun b!4518976 () Bool)

(declare-fun e!2815401 () Bool)

(assert (=> b!4518976 (= e!2815400 e!2815401)))

(declare-fun res!1880580 () Bool)

(assert (=> b!4518976 (=> (not res!1880580) (not e!2815401))))

(assert (=> b!4518976 (= res!1880580 (dynLambda!21159 lambda!172027 (h!56492 (toList!4323 lt!1695580))))))

(declare-fun b!4518977 () Bool)

(assert (=> b!4518977 (= e!2815401 (forall!10257 (t!357727 (toList!4323 lt!1695580)) lambda!172027))))

(assert (= (and d!1391879 (not res!1880579)) b!4518976))

(assert (= (and b!4518976 res!1880580) b!4518977))

(declare-fun b_lambda!154723 () Bool)

(assert (=> (not b_lambda!154723) (not b!4518976)))

(declare-fun m!5265935 () Bool)

(assert (=> b!4518976 m!5265935))

(declare-fun m!5265937 () Bool)

(assert (=> b!4518977 m!5265937))

(assert (=> d!1391335 d!1391879))

(assert (=> b!4518329 d!1391577))

(assert (=> b!4518329 d!1391579))

(declare-fun d!1391881 () Bool)

(assert (=> d!1391881 (= (invariantList!1015 (toList!4324 lt!1695980)) (noDuplicatedKeys!260 (toList!4324 lt!1695980)))))

(declare-fun bs!854408 () Bool)

(assert (= bs!854408 d!1391881))

(declare-fun m!5265939 () Bool)

(assert (=> bs!854408 m!5265939))

(assert (=> b!4518383 d!1391881))

(assert (=> b!4518326 d!1391359))

(declare-fun d!1391883 () Bool)

(declare-fun res!1880581 () Bool)

(declare-fun e!2815402 () Bool)

(assert (=> d!1391883 (=> res!1880581 e!2815402)))

(assert (=> d!1391883 (= res!1880581 (not ((_ is Cons!50640) (t!357726 newBucket!178))))))

(assert (=> d!1391883 (= (noDuplicateKeys!1158 (t!357726 newBucket!178)) e!2815402)))

(declare-fun b!4518978 () Bool)

(declare-fun e!2815403 () Bool)

(assert (=> b!4518978 (= e!2815402 e!2815403)))

(declare-fun res!1880582 () Bool)

(assert (=> b!4518978 (=> (not res!1880582) (not e!2815403))))

(assert (=> b!4518978 (= res!1880582 (not (containsKey!1774 (t!357726 (t!357726 newBucket!178)) (_1!28827 (h!56491 (t!357726 newBucket!178))))))))

(declare-fun b!4518979 () Bool)

(assert (=> b!4518979 (= e!2815403 (noDuplicateKeys!1158 (t!357726 (t!357726 newBucket!178))))))

(assert (= (and d!1391883 (not res!1880581)) b!4518978))

(assert (= (and b!4518978 res!1880582) b!4518979))

(declare-fun m!5265941 () Bool)

(assert (=> b!4518978 m!5265941))

(declare-fun m!5265943 () Bool)

(assert (=> b!4518979 m!5265943))

(assert (=> b!4518381 d!1391883))

(declare-fun d!1391885 () Bool)

(declare-fun e!2815404 () Bool)

(assert (=> d!1391885 e!2815404))

(declare-fun res!1880583 () Bool)

(assert (=> d!1391885 (=> (not res!1880583) (not e!2815404))))

(declare-fun lt!1696359 () ListMap!3585)

(assert (=> d!1391885 (= res!1880583 (not (contains!13361 lt!1696359 key!3287)))))

(assert (=> d!1391885 (= lt!1696359 (ListMap!3586 (removePresrvNoDuplicatedKeys!138 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287)))))

(assert (=> d!1391885 (= (-!384 (extractMap!1214 (toList!4323 lt!1695586)) key!3287) lt!1696359)))

(declare-fun b!4518980 () Bool)

(assert (=> b!4518980 (= e!2815404 (= ((_ map and) (content!8349 (keys!17589 (extractMap!1214 (toList!4323 lt!1695586)))) ((_ map not) (store ((as const (Array K!12035 Bool)) false) key!3287 true))) (content!8349 (keys!17589 lt!1696359))))))

(assert (= (and d!1391885 res!1880583) b!4518980))

(declare-fun m!5265945 () Bool)

(assert (=> d!1391885 m!5265945))

(declare-fun m!5265947 () Bool)

(assert (=> d!1391885 m!5265947))

(assert (=> b!4518980 m!5264143))

(declare-fun m!5265949 () Bool)

(assert (=> b!4518980 m!5265949))

(declare-fun m!5265951 () Bool)

(assert (=> b!4518980 m!5265951))

(declare-fun m!5265953 () Bool)

(assert (=> b!4518980 m!5265953))

(assert (=> b!4518980 m!5264217))

(assert (=> b!4518980 m!5265951))

(assert (=> b!4518980 m!5265949))

(declare-fun m!5265955 () Bool)

(assert (=> b!4518980 m!5265955))

(assert (=> d!1391331 d!1391885))

(declare-fun d!1391887 () Bool)

(declare-fun e!2815405 () Bool)

(assert (=> d!1391887 e!2815405))

(declare-fun res!1880584 () Bool)

(assert (=> d!1391887 (=> (not res!1880584) (not e!2815405))))

(declare-fun lt!1696360 () ListLongMap!2955)

(assert (=> d!1391887 (= res!1880584 (contains!13362 lt!1696360 (_1!28828 (tuple2!51069 hash!344 newBucket!178))))))

(declare-fun lt!1696362 () List!50765)

(assert (=> d!1391887 (= lt!1696360 (ListLongMap!2956 lt!1696362))))

(declare-fun lt!1696363 () Unit!94720)

(declare-fun lt!1696361 () Unit!94720)

(assert (=> d!1391887 (= lt!1696363 lt!1696361)))

(assert (=> d!1391887 (= (getValueByKey!1086 lt!1696362 (_1!28828 (tuple2!51069 hash!344 newBucket!178))) (Some!11105 (_2!28828 (tuple2!51069 hash!344 newBucket!178))))))

(assert (=> d!1391887 (= lt!1696361 (lemmaContainsTupThenGetReturnValue!673 lt!1696362 (_1!28828 (tuple2!51069 hash!344 newBucket!178)) (_2!28828 (tuple2!51069 hash!344 newBucket!178))))))

(assert (=> d!1391887 (= lt!1696362 (insertStrictlySorted!405 (toList!4323 lt!1695586) (_1!28828 (tuple2!51069 hash!344 newBucket!178)) (_2!28828 (tuple2!51069 hash!344 newBucket!178))))))

(assert (=> d!1391887 (= (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)) lt!1696360)))

(declare-fun b!4518981 () Bool)

(declare-fun res!1880585 () Bool)

(assert (=> b!4518981 (=> (not res!1880585) (not e!2815405))))

(assert (=> b!4518981 (= res!1880585 (= (getValueByKey!1086 (toList!4323 lt!1696360) (_1!28828 (tuple2!51069 hash!344 newBucket!178))) (Some!11105 (_2!28828 (tuple2!51069 hash!344 newBucket!178)))))))

(declare-fun b!4518982 () Bool)

(assert (=> b!4518982 (= e!2815405 (contains!13363 (toList!4323 lt!1696360) (tuple2!51069 hash!344 newBucket!178)))))

(assert (= (and d!1391887 res!1880584) b!4518981))

(assert (= (and b!4518981 res!1880585) b!4518982))

(declare-fun m!5265957 () Bool)

(assert (=> d!1391887 m!5265957))

(declare-fun m!5265959 () Bool)

(assert (=> d!1391887 m!5265959))

(declare-fun m!5265961 () Bool)

(assert (=> d!1391887 m!5265961))

(declare-fun m!5265963 () Bool)

(assert (=> d!1391887 m!5265963))

(declare-fun m!5265965 () Bool)

(assert (=> b!4518981 m!5265965))

(declare-fun m!5265967 () Bool)

(assert (=> b!4518982 m!5265967))

(assert (=> d!1391331 d!1391887))

(declare-fun d!1391889 () Bool)

(declare-fun res!1880586 () Bool)

(declare-fun e!2815406 () Bool)

(assert (=> d!1391889 (=> res!1880586 e!2815406)))

(assert (=> d!1391889 (= res!1880586 ((_ is Nil!50641) (toList!4323 lt!1695586)))))

(assert (=> d!1391889 (= (forall!10257 (toList!4323 lt!1695586) lambda!172024) e!2815406)))

(declare-fun b!4518983 () Bool)

(declare-fun e!2815407 () Bool)

(assert (=> b!4518983 (= e!2815406 e!2815407)))

(declare-fun res!1880587 () Bool)

(assert (=> b!4518983 (=> (not res!1880587) (not e!2815407))))

(assert (=> b!4518983 (= res!1880587 (dynLambda!21159 lambda!172024 (h!56492 (toList!4323 lt!1695586))))))

(declare-fun b!4518984 () Bool)

(assert (=> b!4518984 (= e!2815407 (forall!10257 (t!357727 (toList!4323 lt!1695586)) lambda!172024))))

(assert (= (and d!1391889 (not res!1880586)) b!4518983))

(assert (= (and b!4518983 res!1880587) b!4518984))

(declare-fun b_lambda!154725 () Bool)

(assert (=> (not b_lambda!154725) (not b!4518983)))

(declare-fun m!5265969 () Bool)

(assert (=> b!4518983 m!5265969))

(declare-fun m!5265971 () Bool)

(assert (=> b!4518984 m!5265971))

(assert (=> d!1391331 d!1391889))

(assert (=> d!1391331 d!1391353))

(declare-fun d!1391891 () Bool)

(assert (=> d!1391891 (= (eq!615 (extractMap!1214 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))) (-!384 (extractMap!1214 (toList!4323 lt!1695586)) key!3287)) (= (content!8350 (toList!4324 (extractMap!1214 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))))) (content!8350 (toList!4324 (-!384 (extractMap!1214 (toList!4323 lt!1695586)) key!3287)))))))

(declare-fun bs!854416 () Bool)

(assert (= bs!854416 d!1391891))

(declare-fun m!5265973 () Bool)

(assert (=> bs!854416 m!5265973))

(declare-fun m!5265975 () Bool)

(assert (=> bs!854416 m!5265975))

(assert (=> d!1391331 d!1391891))

(declare-fun d!1391893 () Bool)

(assert (=> d!1391893 (eq!615 (extractMap!1214 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))) (-!384 (extractMap!1214 (toList!4323 lt!1695586)) key!3287))))

(assert (=> d!1391893 true))

(declare-fun _$8!650 () Unit!94720)

(assert (=> d!1391893 (= (choose!29476 lt!1695586 hash!344 newBucket!178 key!3287 hashF!1107) _$8!650)))

(declare-fun bs!854451 () Bool)

(assert (= bs!854451 d!1391893))

(assert (=> bs!854451 m!5264143))

(assert (=> bs!854451 m!5264143))

(assert (=> bs!854451 m!5264235))

(assert (=> bs!854451 m!5264237))

(assert (=> bs!854451 m!5264241))

(assert (=> bs!854451 m!5264237))

(assert (=> bs!854451 m!5264235))

(assert (=> bs!854451 m!5264239))

(assert (=> d!1391331 d!1391893))

(declare-fun bs!854452 () Bool)

(declare-fun d!1391905 () Bool)

(assert (= bs!854452 (and d!1391905 d!1391495)))

(declare-fun lambda!172236 () Int)

(assert (=> bs!854452 (= lambda!172236 lambda!172139)))

(declare-fun bs!854453 () Bool)

(assert (= bs!854453 (and d!1391905 d!1391353)))

(assert (=> bs!854453 (= lambda!172236 lambda!172033)))

(declare-fun bs!854454 () Bool)

(assert (= bs!854454 (and d!1391905 d!1391529)))

(assert (=> bs!854454 (= lambda!172236 lambda!172151)))

(declare-fun bs!854455 () Bool)

(assert (= bs!854455 (and d!1391905 d!1391515)))

(assert (=> bs!854455 (= lambda!172236 lambda!172150)))

(declare-fun bs!854456 () Bool)

(assert (= bs!854456 (and d!1391905 start!447216)))

(assert (=> bs!854456 (= lambda!172236 lambda!172021)))

(declare-fun bs!854457 () Bool)

(assert (= bs!854457 (and d!1391905 d!1391355)))

(assert (=> bs!854457 (= lambda!172236 lambda!172050)))

(declare-fun bs!854458 () Bool)

(assert (= bs!854458 (and d!1391905 d!1391335)))

(assert (=> bs!854458 (= lambda!172236 lambda!172027)))

(declare-fun bs!854459 () Bool)

(assert (= bs!854459 (and d!1391905 d!1391351)))

(assert (=> bs!854459 (= lambda!172236 lambda!172032)))

(declare-fun bs!854460 () Bool)

(assert (= bs!854460 (and d!1391905 d!1391449)))

(assert (=> bs!854460 (= lambda!172236 lambda!172124)))

(declare-fun bs!854461 () Bool)

(assert (= bs!854461 (and d!1391905 d!1391737)))

(assert (=> bs!854461 (= lambda!172236 lambda!172200)))

(declare-fun bs!854462 () Bool)

(assert (= bs!854462 (and d!1391905 d!1391347)))

(assert (=> bs!854462 (not (= lambda!172236 lambda!172031))))

(declare-fun bs!854463 () Bool)

(assert (= bs!854463 (and d!1391905 d!1391331)))

(assert (=> bs!854463 (= lambda!172236 lambda!172024)))

(declare-fun bs!854464 () Bool)

(assert (= bs!854464 (and d!1391905 d!1391795)))

(assert (=> bs!854464 (= lambda!172236 lambda!172209)))

(declare-fun bs!854465 () Bool)

(assert (= bs!854465 (and d!1391905 d!1391343)))

(assert (=> bs!854465 (= lambda!172236 lambda!172028)))

(declare-fun bs!854466 () Bool)

(assert (= bs!854466 (and d!1391905 d!1391549)))

(assert (=> bs!854466 (= lambda!172236 lambda!172166)))

(declare-fun bs!854467 () Bool)

(assert (= bs!854467 (and d!1391905 d!1391557)))

(assert (=> bs!854467 (= lambda!172236 lambda!172171)))

(declare-fun bs!854469 () Bool)

(assert (= bs!854469 (and d!1391905 d!1391477)))

(assert (=> bs!854469 (= lambda!172236 lambda!172136)))

(declare-fun lt!1696369 () ListMap!3585)

(assert (=> d!1391905 (invariantList!1015 (toList!4324 lt!1696369))))

(declare-fun e!2815415 () ListMap!3585)

(assert (=> d!1391905 (= lt!1696369 e!2815415)))

(declare-fun c!771156 () Bool)

(assert (=> d!1391905 (= c!771156 ((_ is Cons!50641) (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))))))

(assert (=> d!1391905 (forall!10257 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178))) lambda!172236)))

(assert (=> d!1391905 (= (extractMap!1214 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))) lt!1696369)))

(declare-fun b!4518997 () Bool)

(assert (=> b!4518997 (= e!2815415 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178))))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 (tuple2!51069 hash!344 newBucket!178)))))))))

(declare-fun b!4518998 () Bool)

(assert (=> b!4518998 (= e!2815415 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391905 c!771156) b!4518997))

(assert (= (and d!1391905 (not c!771156)) b!4518998))

(declare-fun m!5266049 () Bool)

(assert (=> d!1391905 m!5266049))

(declare-fun m!5266053 () Bool)

(assert (=> d!1391905 m!5266053))

(declare-fun m!5266055 () Bool)

(assert (=> b!4518997 m!5266055))

(assert (=> b!4518997 m!5266055))

(declare-fun m!5266059 () Bool)

(assert (=> b!4518997 m!5266059))

(assert (=> d!1391331 d!1391905))

(declare-fun bs!854472 () Bool)

(declare-fun b!4519010 () Bool)

(assert (= bs!854472 (and b!4519010 d!1391499)))

(declare-fun lambda!172240 () Int)

(assert (=> bs!854472 (not (= lambda!172240 lambda!172142))))

(declare-fun bs!854474 () Bool)

(assert (= bs!854474 (and b!4519010 d!1391731)))

(assert (=> bs!854474 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696217) (= lambda!172240 lambda!172199))))

(declare-fun bs!854475 () Bool)

(assert (= bs!854475 (and b!4519010 b!4518382)))

(assert (=> bs!854475 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695590) (= lambda!172240 lambda!172144))))

(declare-fun bs!854476 () Bool)

(assert (= bs!854476 (and b!4519010 d!1391513)))

(assert (=> bs!854476 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695980) (= lambda!172240 lambda!172146))))

(declare-fun bs!854477 () Bool)

(assert (= bs!854477 (and b!4519010 b!4518427)))

(assert (=> bs!854477 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172240 lambda!172152))))

(declare-fun bs!854478 () Bool)

(assert (= bs!854478 (and b!4519010 d!1391627)))

(assert (=> bs!854478 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695590) (= lambda!172240 lambda!172178))))

(declare-fun bs!854479 () Bool)

(assert (= bs!854479 (and b!4519010 b!4518468)))

(assert (=> bs!854479 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172240 lambda!172168))))

(declare-fun bs!854480 () Bool)

(assert (= bs!854480 (and b!4519010 d!1391765)))

(assert (=> bs!854480 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696247) (= lambda!172240 lambda!172205))))

(declare-fun bs!854481 () Bool)

(assert (= bs!854481 (and b!4519010 d!1391685)))

(assert (=> bs!854481 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695841) (= lambda!172240 lambda!172188))))

(declare-fun bs!854482 () Bool)

(assert (= bs!854482 (and b!4519010 b!4518822)))

(assert (=> bs!854482 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172240 lambda!172202))))

(declare-fun bs!854483 () Bool)

(assert (= bs!854483 (and b!4519010 b!4518729)))

(assert (=> bs!854483 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172240 lambda!172190))))

(declare-fun bs!854484 () Bool)

(assert (= bs!854484 (and b!4519010 b!4518384)))

(assert (=> bs!854484 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695590) (= lambda!172240 lambda!172143))))

(declare-fun bs!854485 () Bool)

(assert (= bs!854485 (and b!4519010 b!4518453)))

(assert (=> bs!854485 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696044) (= lambda!172240 lambda!172164))))

(declare-fun bs!854486 () Bool)

(assert (= bs!854486 (and b!4519010 b!4518240)))

(assert (=> bs!854486 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695572) (= lambda!172240 lambda!172115))))

(declare-fun bs!854487 () Bool)

(assert (= bs!854487 (and b!4519010 b!4518425)))

(assert (=> bs!854487 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172240 lambda!172153))))

(assert (=> bs!854482 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696249) (= lambda!172240 lambda!172203))))

(declare-fun bs!854488 () Bool)

(assert (= bs!854488 (and b!4519010 b!4518753)))

(assert (=> bs!854488 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172240 lambda!172197))))

(assert (=> bs!854485 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172240 lambda!172163))))

(declare-fun bs!854489 () Bool)

(assert (= bs!854489 (and b!4519010 d!1391537)))

(assert (=> bs!854489 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696015) (= lambda!172240 lambda!172155))))

(declare-fun bs!854490 () Bool)

(assert (= bs!854490 (and b!4519010 b!4518755)))

(assert (=> bs!854490 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172240 lambda!172196))))

(assert (=> bs!854486 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695841) (= lambda!172240 lambda!172116))))

(assert (=> bs!854479 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696066) (= lambda!172240 lambda!172169))))

(declare-fun bs!854491 () Bool)

(assert (= bs!854491 (and b!4519010 b!4518455)))

(assert (=> bs!854491 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172240 lambda!172162))))

(declare-fun bs!854493 () Bool)

(assert (= bs!854493 (and b!4519010 b!4518242)))

(assert (=> bs!854493 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695572) (= lambda!172240 lambda!172114))))

(declare-fun bs!854494 () Bool)

(assert (= bs!854494 (and b!4519010 b!4518824)))

(assert (=> bs!854494 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172240 lambda!172201))))

(declare-fun bs!854495 () Bool)

(assert (= bs!854495 (and b!4519010 d!1391719)))

(assert (=> bs!854495 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696187) (= lambda!172240 lambda!172195))))

(declare-fun bs!854496 () Bool)

(assert (= bs!854496 (and b!4519010 b!4518731)))

(assert (=> bs!854496 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172240 lambda!172189))))

(declare-fun bs!854497 () Bool)

(assert (= bs!854497 (and b!4519010 b!4518470)))

(assert (=> bs!854497 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172240 lambda!172167))))

(declare-fun bs!854498 () Bool)

(assert (= bs!854498 (and b!4519010 d!1391367)))

(assert (=> bs!854498 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695839) (= lambda!172240 lambda!172119))))

(assert (=> bs!854488 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696219) (= lambda!172240 lambda!172198))))

(declare-fun bs!854499 () Bool)

(assert (= bs!854499 (and b!4519010 d!1391555)))

(assert (=> bs!854499 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696064) (= lambda!172240 lambda!172170))))

(assert (=> bs!854487 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696017) (= lambda!172240 lambda!172154))))

(assert (=> bs!854475 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695982) (= lambda!172240 lambda!172145))))

(assert (=> bs!854483 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696189) (= lambda!172240 lambda!172193))))

(declare-fun bs!854500 () Bool)

(assert (= bs!854500 (and b!4519010 d!1391547)))

(assert (=> bs!854500 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696042) (= lambda!172240 lambda!172165))))

(assert (=> b!4519010 true))

(declare-fun bs!854501 () Bool)

(declare-fun b!4519008 () Bool)

(assert (= bs!854501 (and b!4519008 d!1391499)))

(declare-fun lambda!172242 () Int)

(assert (=> bs!854501 (not (= lambda!172242 lambda!172142))))

(declare-fun bs!854503 () Bool)

(assert (= bs!854503 (and b!4519008 d!1391731)))

(assert (=> bs!854503 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696217) (= lambda!172242 lambda!172199))))

(declare-fun bs!854504 () Bool)

(assert (= bs!854504 (and b!4519008 b!4518382)))

(assert (=> bs!854504 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695590) (= lambda!172242 lambda!172144))))

(declare-fun bs!854505 () Bool)

(assert (= bs!854505 (and b!4519008 d!1391513)))

(assert (=> bs!854505 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695980) (= lambda!172242 lambda!172146))))

(declare-fun bs!854506 () Bool)

(assert (= bs!854506 (and b!4519008 b!4518427)))

(assert (=> bs!854506 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172242 lambda!172152))))

(declare-fun bs!854507 () Bool)

(assert (= bs!854507 (and b!4519008 b!4519010)))

(assert (=> bs!854507 (= lambda!172242 lambda!172240)))

(declare-fun bs!854508 () Bool)

(assert (= bs!854508 (and b!4519008 d!1391627)))

(assert (=> bs!854508 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695590) (= lambda!172242 lambda!172178))))

(declare-fun bs!854509 () Bool)

(assert (= bs!854509 (and b!4519008 b!4518468)))

(assert (=> bs!854509 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172242 lambda!172168))))

(declare-fun bs!854510 () Bool)

(assert (= bs!854510 (and b!4519008 d!1391765)))

(assert (=> bs!854510 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696247) (= lambda!172242 lambda!172205))))

(declare-fun bs!854511 () Bool)

(assert (= bs!854511 (and b!4519008 d!1391685)))

(assert (=> bs!854511 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695841) (= lambda!172242 lambda!172188))))

(declare-fun bs!854512 () Bool)

(assert (= bs!854512 (and b!4519008 b!4518822)))

(assert (=> bs!854512 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172242 lambda!172202))))

(declare-fun bs!854513 () Bool)

(assert (= bs!854513 (and b!4519008 b!4518729)))

(assert (=> bs!854513 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172242 lambda!172190))))

(declare-fun bs!854514 () Bool)

(assert (= bs!854514 (and b!4519008 b!4518384)))

(assert (=> bs!854514 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695590) (= lambda!172242 lambda!172143))))

(declare-fun bs!854515 () Bool)

(assert (= bs!854515 (and b!4519008 b!4518453)))

(assert (=> bs!854515 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696044) (= lambda!172242 lambda!172164))))

(declare-fun bs!854516 () Bool)

(assert (= bs!854516 (and b!4519008 b!4518240)))

(assert (=> bs!854516 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695572) (= lambda!172242 lambda!172115))))

(declare-fun bs!854517 () Bool)

(assert (= bs!854517 (and b!4519008 b!4518425)))

(assert (=> bs!854517 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172242 lambda!172153))))

(assert (=> bs!854512 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696249) (= lambda!172242 lambda!172203))))

(declare-fun bs!854518 () Bool)

(assert (= bs!854518 (and b!4519008 b!4518753)))

(assert (=> bs!854518 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172242 lambda!172197))))

(assert (=> bs!854515 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172242 lambda!172163))))

(declare-fun bs!854519 () Bool)

(assert (= bs!854519 (and b!4519008 d!1391537)))

(assert (=> bs!854519 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696015) (= lambda!172242 lambda!172155))))

(declare-fun bs!854520 () Bool)

(assert (= bs!854520 (and b!4519008 b!4518755)))

(assert (=> bs!854520 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172242 lambda!172196))))

(assert (=> bs!854516 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695841) (= lambda!172242 lambda!172116))))

(assert (=> bs!854509 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696066) (= lambda!172242 lambda!172169))))

(declare-fun bs!854521 () Bool)

(assert (= bs!854521 (and b!4519008 b!4518455)))

(assert (=> bs!854521 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172242 lambda!172162))))

(declare-fun bs!854522 () Bool)

(assert (= bs!854522 (and b!4519008 b!4518242)))

(assert (=> bs!854522 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695572) (= lambda!172242 lambda!172114))))

(declare-fun bs!854523 () Bool)

(assert (= bs!854523 (and b!4519008 b!4518824)))

(assert (=> bs!854523 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172242 lambda!172201))))

(declare-fun bs!854524 () Bool)

(assert (= bs!854524 (and b!4519008 d!1391719)))

(assert (=> bs!854524 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696187) (= lambda!172242 lambda!172195))))

(declare-fun bs!854525 () Bool)

(assert (= bs!854525 (and b!4519008 b!4518731)))

(assert (=> bs!854525 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172242 lambda!172189))))

(declare-fun bs!854526 () Bool)

(assert (= bs!854526 (and b!4519008 b!4518470)))

(assert (=> bs!854526 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172242 lambda!172167))))

(declare-fun bs!854527 () Bool)

(assert (= bs!854527 (and b!4519008 d!1391367)))

(assert (=> bs!854527 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695839) (= lambda!172242 lambda!172119))))

(assert (=> bs!854518 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696219) (= lambda!172242 lambda!172198))))

(declare-fun bs!854528 () Bool)

(assert (= bs!854528 (and b!4519008 d!1391555)))

(assert (=> bs!854528 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696064) (= lambda!172242 lambda!172170))))

(assert (=> bs!854517 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696017) (= lambda!172242 lambda!172154))))

(assert (=> bs!854504 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1695982) (= lambda!172242 lambda!172145))))

(assert (=> bs!854513 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696189) (= lambda!172242 lambda!172193))))

(declare-fun bs!854529 () Bool)

(assert (= bs!854529 (and b!4519008 d!1391547)))

(assert (=> bs!854529 (= (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696042) (= lambda!172242 lambda!172165))))

(assert (=> b!4519008 true))

(declare-fun lambda!172243 () Int)

(assert (=> bs!854501 (not (= lambda!172243 lambda!172142))))

(declare-fun lt!1696376 () ListMap!3585)

(assert (=> bs!854503 (= (= lt!1696376 lt!1696217) (= lambda!172243 lambda!172199))))

(assert (=> bs!854504 (= (= lt!1696376 lt!1695590) (= lambda!172243 lambda!172144))))

(assert (=> bs!854505 (= (= lt!1696376 lt!1695980) (= lambda!172243 lambda!172146))))

(assert (=> bs!854506 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172243 lambda!172152))))

(assert (=> bs!854507 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172243 lambda!172240))))

(assert (=> bs!854508 (= (= lt!1696376 lt!1695590) (= lambda!172243 lambda!172178))))

(assert (=> bs!854509 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172243 lambda!172168))))

(assert (=> bs!854510 (= (= lt!1696376 lt!1696247) (= lambda!172243 lambda!172205))))

(assert (=> bs!854511 (= (= lt!1696376 lt!1695841) (= lambda!172243 lambda!172188))))

(assert (=> bs!854512 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172243 lambda!172202))))

(assert (=> bs!854513 (= (= lt!1696376 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172243 lambda!172190))))

(assert (=> bs!854514 (= (= lt!1696376 lt!1695590) (= lambda!172243 lambda!172143))))

(assert (=> bs!854515 (= (= lt!1696376 lt!1696044) (= lambda!172243 lambda!172164))))

(assert (=> bs!854516 (= (= lt!1696376 lt!1695572) (= lambda!172243 lambda!172115))))

(assert (=> bs!854517 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172243 lambda!172153))))

(assert (=> bs!854512 (= (= lt!1696376 lt!1696249) (= lambda!172243 lambda!172203))))

(assert (=> b!4519008 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172243 lambda!172242))))

(assert (=> bs!854518 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172243 lambda!172197))))

(assert (=> bs!854515 (= (= lt!1696376 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172243 lambda!172163))))

(assert (=> bs!854519 (= (= lt!1696376 lt!1696015) (= lambda!172243 lambda!172155))))

(assert (=> bs!854520 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172243 lambda!172196))))

(assert (=> bs!854516 (= (= lt!1696376 lt!1695841) (= lambda!172243 lambda!172116))))

(assert (=> bs!854509 (= (= lt!1696376 lt!1696066) (= lambda!172243 lambda!172169))))

(assert (=> bs!854521 (= (= lt!1696376 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172243 lambda!172162))))

(assert (=> bs!854522 (= (= lt!1696376 lt!1695572) (= lambda!172243 lambda!172114))))

(assert (=> bs!854523 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172243 lambda!172201))))

(assert (=> bs!854524 (= (= lt!1696376 lt!1696187) (= lambda!172243 lambda!172195))))

(assert (=> bs!854525 (= (= lt!1696376 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172243 lambda!172189))))

(assert (=> bs!854526 (= (= lt!1696376 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172243 lambda!172167))))

(assert (=> bs!854527 (= (= lt!1696376 lt!1695839) (= lambda!172243 lambda!172119))))

(assert (=> bs!854518 (= (= lt!1696376 lt!1696219) (= lambda!172243 lambda!172198))))

(assert (=> bs!854528 (= (= lt!1696376 lt!1696064) (= lambda!172243 lambda!172170))))

(assert (=> bs!854517 (= (= lt!1696376 lt!1696017) (= lambda!172243 lambda!172154))))

(assert (=> bs!854504 (= (= lt!1696376 lt!1695982) (= lambda!172243 lambda!172145))))

(assert (=> bs!854513 (= (= lt!1696376 lt!1696189) (= lambda!172243 lambda!172193))))

(assert (=> bs!854529 (= (= lt!1696376 lt!1696042) (= lambda!172243 lambda!172165))))

(assert (=> b!4519008 true))

(declare-fun bs!854530 () Bool)

(declare-fun d!1391915 () Bool)

(assert (= bs!854530 (and d!1391915 d!1391499)))

(declare-fun lambda!172244 () Int)

(assert (=> bs!854530 (not (= lambda!172244 lambda!172142))))

(declare-fun bs!854531 () Bool)

(assert (= bs!854531 (and d!1391915 d!1391731)))

(declare-fun lt!1696374 () ListMap!3585)

(assert (=> bs!854531 (= (= lt!1696374 lt!1696217) (= lambda!172244 lambda!172199))))

(declare-fun bs!854532 () Bool)

(assert (= bs!854532 (and d!1391915 b!4518382)))

(assert (=> bs!854532 (= (= lt!1696374 lt!1695590) (= lambda!172244 lambda!172144))))

(declare-fun bs!854533 () Bool)

(assert (= bs!854533 (and d!1391915 d!1391513)))

(assert (=> bs!854533 (= (= lt!1696374 lt!1695980) (= lambda!172244 lambda!172146))))

(declare-fun bs!854534 () Bool)

(assert (= bs!854534 (and d!1391915 b!4518427)))

(assert (=> bs!854534 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172244 lambda!172152))))

(declare-fun bs!854535 () Bool)

(assert (= bs!854535 (and d!1391915 b!4519010)))

(assert (=> bs!854535 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172244 lambda!172240))))

(declare-fun bs!854536 () Bool)

(assert (= bs!854536 (and d!1391915 d!1391627)))

(assert (=> bs!854536 (= (= lt!1696374 lt!1695590) (= lambda!172244 lambda!172178))))

(declare-fun bs!854537 () Bool)

(assert (= bs!854537 (and d!1391915 b!4518468)))

(assert (=> bs!854537 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172244 lambda!172168))))

(declare-fun bs!854538 () Bool)

(assert (= bs!854538 (and d!1391915 d!1391765)))

(assert (=> bs!854538 (= (= lt!1696374 lt!1696247) (= lambda!172244 lambda!172205))))

(declare-fun bs!854539 () Bool)

(assert (= bs!854539 (and d!1391915 b!4518822)))

(assert (=> bs!854539 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172244 lambda!172202))))

(declare-fun bs!854540 () Bool)

(assert (= bs!854540 (and d!1391915 b!4518729)))

(assert (=> bs!854540 (= (= lt!1696374 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172244 lambda!172190))))

(declare-fun bs!854541 () Bool)

(assert (= bs!854541 (and d!1391915 b!4518384)))

(assert (=> bs!854541 (= (= lt!1696374 lt!1695590) (= lambda!172244 lambda!172143))))

(declare-fun bs!854542 () Bool)

(assert (= bs!854542 (and d!1391915 b!4518453)))

(assert (=> bs!854542 (= (= lt!1696374 lt!1696044) (= lambda!172244 lambda!172164))))

(declare-fun bs!854543 () Bool)

(assert (= bs!854543 (and d!1391915 b!4518240)))

(assert (=> bs!854543 (= (= lt!1696374 lt!1695572) (= lambda!172244 lambda!172115))))

(declare-fun bs!854544 () Bool)

(assert (= bs!854544 (and d!1391915 b!4518425)))

(assert (=> bs!854544 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172244 lambda!172153))))

(assert (=> bs!854539 (= (= lt!1696374 lt!1696249) (= lambda!172244 lambda!172203))))

(declare-fun bs!854545 () Bool)

(assert (= bs!854545 (and d!1391915 b!4519008)))

(assert (=> bs!854545 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172244 lambda!172242))))

(declare-fun bs!854546 () Bool)

(assert (= bs!854546 (and d!1391915 b!4518753)))

(assert (=> bs!854546 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172244 lambda!172197))))

(assert (=> bs!854542 (= (= lt!1696374 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172244 lambda!172163))))

(declare-fun bs!854547 () Bool)

(assert (= bs!854547 (and d!1391915 d!1391537)))

(assert (=> bs!854547 (= (= lt!1696374 lt!1696015) (= lambda!172244 lambda!172155))))

(declare-fun bs!854548 () Bool)

(assert (= bs!854548 (and d!1391915 b!4518755)))

(assert (=> bs!854548 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172244 lambda!172196))))

(assert (=> bs!854543 (= (= lt!1696374 lt!1695841) (= lambda!172244 lambda!172116))))

(assert (=> bs!854537 (= (= lt!1696374 lt!1696066) (= lambda!172244 lambda!172169))))

(declare-fun bs!854549 () Bool)

(assert (= bs!854549 (and d!1391915 b!4518455)))

(assert (=> bs!854549 (= (= lt!1696374 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172244 lambda!172162))))

(declare-fun bs!854550 () Bool)

(assert (= bs!854550 (and d!1391915 b!4518242)))

(assert (=> bs!854550 (= (= lt!1696374 lt!1695572) (= lambda!172244 lambda!172114))))

(declare-fun bs!854551 () Bool)

(assert (= bs!854551 (and d!1391915 b!4518824)))

(assert (=> bs!854551 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172244 lambda!172201))))

(declare-fun bs!854552 () Bool)

(assert (= bs!854552 (and d!1391915 d!1391719)))

(assert (=> bs!854552 (= (= lt!1696374 lt!1696187) (= lambda!172244 lambda!172195))))

(declare-fun bs!854553 () Bool)

(assert (= bs!854553 (and d!1391915 b!4518731)))

(assert (=> bs!854553 (= (= lt!1696374 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172244 lambda!172189))))

(declare-fun bs!854554 () Bool)

(assert (= bs!854554 (and d!1391915 b!4518470)))

(assert (=> bs!854554 (= (= lt!1696374 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172244 lambda!172167))))

(declare-fun bs!854555 () Bool)

(assert (= bs!854555 (and d!1391915 d!1391367)))

(assert (=> bs!854555 (= (= lt!1696374 lt!1695839) (= lambda!172244 lambda!172119))))

(assert (=> bs!854546 (= (= lt!1696374 lt!1696219) (= lambda!172244 lambda!172198))))

(declare-fun bs!854556 () Bool)

(assert (= bs!854556 (and d!1391915 d!1391685)))

(assert (=> bs!854556 (= (= lt!1696374 lt!1695841) (= lambda!172244 lambda!172188))))

(assert (=> bs!854545 (= (= lt!1696374 lt!1696376) (= lambda!172244 lambda!172243))))

(declare-fun bs!854557 () Bool)

(assert (= bs!854557 (and d!1391915 d!1391555)))

(assert (=> bs!854557 (= (= lt!1696374 lt!1696064) (= lambda!172244 lambda!172170))))

(assert (=> bs!854544 (= (= lt!1696374 lt!1696017) (= lambda!172244 lambda!172154))))

(assert (=> bs!854532 (= (= lt!1696374 lt!1695982) (= lambda!172244 lambda!172145))))

(assert (=> bs!854540 (= (= lt!1696374 lt!1696189) (= lambda!172244 lambda!172193))))

(declare-fun bs!854558 () Bool)

(assert (= bs!854558 (and d!1391915 d!1391547)))

(assert (=> bs!854558 (= (= lt!1696374 lt!1696042) (= lambda!172244 lambda!172165))))

(assert (=> d!1391915 true))

(declare-fun e!2815421 () ListMap!3585)

(assert (=> b!4519008 (= e!2815421 lt!1696376)))

(declare-fun lt!1696391 () ListMap!3585)

(assert (=> b!4519008 (= lt!1696391 (+!1536 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))))

(assert (=> b!4519008 (= lt!1696376 (addToMapMapFromBucket!685 (t!357726 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (+!1536 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))))))

(declare-fun lt!1696372 () Unit!94720)

(declare-fun call!314821 () Unit!94720)

(assert (=> b!4519008 (= lt!1696372 call!314821)))

(assert (=> b!4519008 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) lambda!172242)))

(declare-fun lt!1696383 () Unit!94720)

(assert (=> b!4519008 (= lt!1696383 lt!1696372)))

(declare-fun call!314820 () Bool)

(assert (=> b!4519008 call!314820))

(declare-fun lt!1696388 () Unit!94720)

(declare-fun Unit!94909 () Unit!94720)

(assert (=> b!4519008 (= lt!1696388 Unit!94909)))

(declare-fun call!314819 () Bool)

(assert (=> b!4519008 call!314819))

(declare-fun lt!1696382 () Unit!94720)

(declare-fun Unit!94910 () Unit!94720)

(assert (=> b!4519008 (= lt!1696382 Unit!94910)))

(declare-fun lt!1696375 () Unit!94720)

(declare-fun Unit!94911 () Unit!94720)

(assert (=> b!4519008 (= lt!1696375 Unit!94911)))

(declare-fun lt!1696384 () Unit!94720)

(assert (=> b!4519008 (= lt!1696384 (forallContained!2511 (toList!4324 lt!1696391) lambda!172243 (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))))

(assert (=> b!4519008 (contains!13361 lt!1696391 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))))

(declare-fun lt!1696392 () Unit!94720)

(declare-fun Unit!94912 () Unit!94720)

(assert (=> b!4519008 (= lt!1696392 Unit!94912)))

(assert (=> b!4519008 (contains!13361 lt!1696376 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))))

(declare-fun lt!1696381 () Unit!94720)

(declare-fun Unit!94913 () Unit!94720)

(assert (=> b!4519008 (= lt!1696381 Unit!94913)))

(assert (=> b!4519008 (forall!10259 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lambda!172243)))

(declare-fun lt!1696389 () Unit!94720)

(declare-fun Unit!94914 () Unit!94720)

(assert (=> b!4519008 (= lt!1696389 Unit!94914)))

(assert (=> b!4519008 (forall!10259 (toList!4324 lt!1696391) lambda!172243)))

(declare-fun lt!1696386 () Unit!94720)

(declare-fun Unit!94915 () Unit!94720)

(assert (=> b!4519008 (= lt!1696386 Unit!94915)))

(declare-fun lt!1696379 () Unit!94720)

(declare-fun Unit!94916 () Unit!94720)

(assert (=> b!4519008 (= lt!1696379 Unit!94916)))

(declare-fun lt!1696387 () Unit!94720)

(assert (=> b!4519008 (= lt!1696387 (addForallContainsKeyThenBeforeAdding!336 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696376 (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))) (_2!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))))))

(assert (=> b!4519008 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) lambda!172243)))

(declare-fun lt!1696390 () Unit!94720)

(assert (=> b!4519008 (= lt!1696390 lt!1696387)))

(assert (=> b!4519008 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) lambda!172243)))

(declare-fun lt!1696378 () Unit!94720)

(declare-fun Unit!94918 () Unit!94720)

(assert (=> b!4519008 (= lt!1696378 Unit!94918)))

(declare-fun res!1880606 () Bool)

(assert (=> b!4519008 (= res!1880606 (forall!10259 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lambda!172243))))

(declare-fun e!2815422 () Bool)

(assert (=> b!4519008 (=> (not res!1880606) (not e!2815422))))

(assert (=> b!4519008 e!2815422))

(declare-fun lt!1696377 () Unit!94720)

(declare-fun Unit!94921 () Unit!94720)

(assert (=> b!4519008 (= lt!1696377 Unit!94921)))

(declare-fun b!4519009 () Bool)

(declare-fun e!2815423 () Bool)

(assert (=> b!4519009 (= e!2815423 (invariantList!1015 (toList!4324 lt!1696374)))))

(declare-fun c!771157 () Bool)

(declare-fun bm!314814 () Bool)

(assert (=> bm!314814 (= call!314819 (forall!10259 (ite c!771157 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (t!357726 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))) (ite c!771157 lambda!172240 lambda!172243)))))

(assert (=> b!4519010 (= e!2815421 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))

(declare-fun lt!1696380 () Unit!94720)

(assert (=> b!4519010 (= lt!1696380 call!314821)))

(assert (=> b!4519010 call!314819))

(declare-fun lt!1696385 () Unit!94720)

(assert (=> b!4519010 (= lt!1696385 lt!1696380)))

(assert (=> b!4519010 call!314820))

(declare-fun lt!1696373 () Unit!94720)

(declare-fun Unit!94925 () Unit!94720)

(assert (=> b!4519010 (= lt!1696373 Unit!94925)))

(assert (=> d!1391915 e!2815423))

(declare-fun res!1880605 () Bool)

(assert (=> d!1391915 (=> (not res!1880605) (not e!2815423))))

(assert (=> d!1391915 (= res!1880605 (forall!10259 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lambda!172244))))

(assert (=> d!1391915 (= lt!1696374 e!2815421)))

(assert (=> d!1391915 (= c!771157 ((_ is Nil!50640) (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))))

(assert (=> d!1391915 (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))

(assert (=> d!1391915 (= (addToMapMapFromBucket!685 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) lt!1696374)))

(declare-fun b!4519011 () Bool)

(declare-fun res!1880607 () Bool)

(assert (=> b!4519011 (=> (not res!1880607) (not e!2815423))))

(assert (=> b!4519011 (= res!1880607 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) lambda!172244))))

(declare-fun b!4519012 () Bool)

(assert (=> b!4519012 (= e!2815422 (forall!10259 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) lambda!172243))))

(declare-fun bm!314815 () Bool)

(assert (=> bm!314815 (= call!314820 (forall!10259 (ite c!771157 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (toList!4324 lt!1696391)) (ite c!771157 lambda!172240 lambda!172243)))))

(declare-fun bm!314816 () Bool)

(assert (=> bm!314816 (= call!314821 (lemmaContainsAllItsOwnKeys!336 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))))

(assert (= (and d!1391915 c!771157) b!4519010))

(assert (= (and d!1391915 (not c!771157)) b!4519008))

(assert (= (and b!4519008 res!1880606) b!4519012))

(assert (= (or b!4519010 b!4519008) bm!314814))

(assert (= (or b!4519010 b!4519008) bm!314815))

(assert (= (or b!4519010 b!4519008) bm!314816))

(assert (= (and d!1391915 res!1880605) b!4519011))

(assert (= (and b!4519011 res!1880607) b!4519009))

(declare-fun m!5266105 () Bool)

(assert (=> bm!314814 m!5266105))

(assert (=> bm!314816 m!5264279))

(declare-fun m!5266107 () Bool)

(assert (=> bm!314816 m!5266107))

(declare-fun m!5266109 () Bool)

(assert (=> b!4519012 m!5266109))

(declare-fun m!5266111 () Bool)

(assert (=> b!4519008 m!5266111))

(declare-fun m!5266113 () Bool)

(assert (=> b!4519008 m!5266113))

(assert (=> b!4519008 m!5266109))

(assert (=> b!4519008 m!5264279))

(assert (=> b!4519008 m!5266111))

(assert (=> b!4519008 m!5266109))

(declare-fun m!5266115 () Bool)

(assert (=> b!4519008 m!5266115))

(declare-fun m!5266117 () Bool)

(assert (=> b!4519008 m!5266117))

(declare-fun m!5266119 () Bool)

(assert (=> b!4519008 m!5266119))

(declare-fun m!5266121 () Bool)

(assert (=> b!4519008 m!5266121))

(assert (=> b!4519008 m!5264279))

(declare-fun m!5266123 () Bool)

(assert (=> b!4519008 m!5266123))

(declare-fun m!5266125 () Bool)

(assert (=> b!4519008 m!5266125))

(assert (=> b!4519008 m!5266119))

(declare-fun m!5266127 () Bool)

(assert (=> b!4519008 m!5266127))

(declare-fun m!5266129 () Bool)

(assert (=> d!1391915 m!5266129))

(declare-fun m!5266131 () Bool)

(assert (=> d!1391915 m!5266131))

(declare-fun m!5266133 () Bool)

(assert (=> bm!314815 m!5266133))

(declare-fun m!5266135 () Bool)

(assert (=> b!4519011 m!5266135))

(declare-fun m!5266137 () Bool)

(assert (=> b!4519009 m!5266137))

(assert (=> b!4518072 d!1391915))

(declare-fun bs!854559 () Bool)

(declare-fun d!1391941 () Bool)

(assert (= bs!854559 (and d!1391941 d!1391905)))

(declare-fun lambda!172245 () Int)

(assert (=> bs!854559 (= lambda!172245 lambda!172236)))

(declare-fun bs!854560 () Bool)

(assert (= bs!854560 (and d!1391941 d!1391495)))

(assert (=> bs!854560 (= lambda!172245 lambda!172139)))

(declare-fun bs!854561 () Bool)

(assert (= bs!854561 (and d!1391941 d!1391353)))

(assert (=> bs!854561 (= lambda!172245 lambda!172033)))

(declare-fun bs!854562 () Bool)

(assert (= bs!854562 (and d!1391941 d!1391529)))

(assert (=> bs!854562 (= lambda!172245 lambda!172151)))

(declare-fun bs!854563 () Bool)

(assert (= bs!854563 (and d!1391941 d!1391515)))

(assert (=> bs!854563 (= lambda!172245 lambda!172150)))

(declare-fun bs!854564 () Bool)

(assert (= bs!854564 (and d!1391941 start!447216)))

(assert (=> bs!854564 (= lambda!172245 lambda!172021)))

(declare-fun bs!854565 () Bool)

(assert (= bs!854565 (and d!1391941 d!1391355)))

(assert (=> bs!854565 (= lambda!172245 lambda!172050)))

(declare-fun bs!854566 () Bool)

(assert (= bs!854566 (and d!1391941 d!1391335)))

(assert (=> bs!854566 (= lambda!172245 lambda!172027)))

(declare-fun bs!854567 () Bool)

(assert (= bs!854567 (and d!1391941 d!1391351)))

(assert (=> bs!854567 (= lambda!172245 lambda!172032)))

(declare-fun bs!854568 () Bool)

(assert (= bs!854568 (and d!1391941 d!1391449)))

(assert (=> bs!854568 (= lambda!172245 lambda!172124)))

(declare-fun bs!854569 () Bool)

(assert (= bs!854569 (and d!1391941 d!1391737)))

(assert (=> bs!854569 (= lambda!172245 lambda!172200)))

(declare-fun bs!854570 () Bool)

(assert (= bs!854570 (and d!1391941 d!1391347)))

(assert (=> bs!854570 (not (= lambda!172245 lambda!172031))))

(declare-fun bs!854571 () Bool)

(assert (= bs!854571 (and d!1391941 d!1391331)))

(assert (=> bs!854571 (= lambda!172245 lambda!172024)))

(declare-fun bs!854572 () Bool)

(assert (= bs!854572 (and d!1391941 d!1391795)))

(assert (=> bs!854572 (= lambda!172245 lambda!172209)))

(declare-fun bs!854573 () Bool)

(assert (= bs!854573 (and d!1391941 d!1391343)))

(assert (=> bs!854573 (= lambda!172245 lambda!172028)))

(declare-fun bs!854574 () Bool)

(assert (= bs!854574 (and d!1391941 d!1391549)))

(assert (=> bs!854574 (= lambda!172245 lambda!172166)))

(declare-fun bs!854575 () Bool)

(assert (= bs!854575 (and d!1391941 d!1391557)))

(assert (=> bs!854575 (= lambda!172245 lambda!172171)))

(declare-fun bs!854576 () Bool)

(assert (= bs!854576 (and d!1391941 d!1391477)))

(assert (=> bs!854576 (= lambda!172245 lambda!172136)))

(declare-fun lt!1696395 () ListMap!3585)

(assert (=> d!1391941 (invariantList!1015 (toList!4324 lt!1696395))))

(declare-fun e!2815442 () ListMap!3585)

(assert (=> d!1391941 (= lt!1696395 e!2815442)))

(declare-fun c!771159 () Bool)

(assert (=> d!1391941 (= c!771159 ((_ is Cons!50641) (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))

(assert (=> d!1391941 (forall!10257 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))) lambda!172245)))

(assert (=> d!1391941 (= (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) lt!1696395)))

(declare-fun b!4519034 () Bool)

(assert (=> b!4519034 (= e!2815442 (addToMapMapFromBucket!685 (_2!28828 (h!56492 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))))

(declare-fun b!4519035 () Bool)

(assert (=> b!4519035 (= e!2815442 (ListMap!3586 Nil!50640))))

(assert (= (and d!1391941 c!771159) b!4519034))

(assert (= (and d!1391941 (not c!771159)) b!4519035))

(declare-fun m!5266139 () Bool)

(assert (=> d!1391941 m!5266139))

(declare-fun m!5266141 () Bool)

(assert (=> d!1391941 m!5266141))

(declare-fun m!5266143 () Bool)

(assert (=> b!4519034 m!5266143))

(assert (=> b!4519034 m!5266143))

(declare-fun m!5266145 () Bool)

(assert (=> b!4519034 m!5266145))

(assert (=> b!4518072 d!1391941))

(declare-fun d!1391943 () Bool)

(declare-fun lt!1696396 () Bool)

(assert (=> d!1391943 (= lt!1696396 (select (content!8349 (keys!17589 lt!1695584)) key!3287))))

(declare-fun e!2815443 () Bool)

(assert (=> d!1391943 (= lt!1696396 e!2815443)))

(declare-fun res!1880627 () Bool)

(assert (=> d!1391943 (=> (not res!1880627) (not e!2815443))))

(assert (=> d!1391943 (= res!1880627 ((_ is Cons!50642) (keys!17589 lt!1695584)))))

(assert (=> d!1391943 (= (contains!13364 (keys!17589 lt!1695584) key!3287) lt!1696396)))

(declare-fun b!4519036 () Bool)

(declare-fun e!2815444 () Bool)

(assert (=> b!4519036 (= e!2815443 e!2815444)))

(declare-fun res!1880628 () Bool)

(assert (=> b!4519036 (=> res!1880628 e!2815444)))

(assert (=> b!4519036 (= res!1880628 (= (h!56495 (keys!17589 lt!1695584)) key!3287))))

(declare-fun b!4519037 () Bool)

(assert (=> b!4519037 (= e!2815444 (contains!13364 (t!357728 (keys!17589 lt!1695584)) key!3287))))

(assert (= (and d!1391943 res!1880627) b!4519036))

(assert (= (and b!4519036 (not res!1880628)) b!4519037))

(assert (=> d!1391943 m!5264211))

(assert (=> d!1391943 m!5264219))

(declare-fun m!5266147 () Bool)

(assert (=> d!1391943 m!5266147))

(declare-fun m!5266149 () Bool)

(assert (=> b!4519037 m!5266149))

(assert (=> b!4518111 d!1391943))

(assert (=> b!4518111 d!1391621))

(declare-fun bs!854577 () Bool)

(declare-fun b!4519044 () Bool)

(assert (= bs!854577 (and b!4519044 b!4518556)))

(declare-fun lambda!172246 () Int)

(assert (=> bs!854577 (= (= (t!357726 (toList!4324 lt!1695582)) (toList!4324 lt!1695601)) (= lambda!172246 lambda!172174))))

(declare-fun bs!854578 () Bool)

(assert (= bs!854578 (and b!4519044 b!4518923)))

(assert (=> bs!854578 (= (= (t!357726 (toList!4324 lt!1695582)) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172246 lambda!172221))))

(declare-fun bs!854579 () Bool)

(assert (= bs!854579 (and b!4519044 b!4518551)))

(assert (=> bs!854579 (= (= (t!357726 (toList!4324 lt!1695582)) (toList!4324 lt!1695584)) (= lambda!172246 lambda!172172))))

(declare-fun bs!854580 () Bool)

(assert (= bs!854580 (and b!4519044 b!4518437)))

(assert (=> bs!854580 (= (= (t!357726 (toList!4324 lt!1695582)) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172246 lambda!172160))))

(declare-fun bs!854581 () Bool)

(assert (= bs!854581 (and b!4519044 b!4518967)))

(assert (=> bs!854581 (= (= (t!357726 (toList!4324 lt!1695582)) (toList!4324 lt!1695582)) (= lambda!172246 lambda!172225))))

(declare-fun bs!854582 () Bool)

(assert (= bs!854582 (and b!4519044 b!4518925)))

(assert (=> bs!854582 (= (= (t!357726 (toList!4324 lt!1695582)) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172246 lambda!172222))))

(declare-fun bs!854583 () Bool)

(assert (= bs!854583 (and b!4519044 b!4518918)))

(assert (=> bs!854583 (= (= (t!357726 (toList!4324 lt!1695582)) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172246 lambda!172223))))

(assert (=> b!4519044 true))

(declare-fun bs!854584 () Bool)

(declare-fun b!4519046 () Bool)

(assert (= bs!854584 (and b!4519046 b!4518556)))

(declare-fun lambda!172247 () Int)

(assert (=> bs!854584 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (toList!4324 lt!1695601)) (= lambda!172247 lambda!172174))))

(declare-fun bs!854585 () Bool)

(assert (= bs!854585 (and b!4519046 b!4518923)))

(assert (=> bs!854585 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172247 lambda!172221))))

(declare-fun bs!854586 () Bool)

(assert (= bs!854586 (and b!4519046 b!4518437)))

(assert (=> bs!854586 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172247 lambda!172160))))

(declare-fun bs!854587 () Bool)

(assert (= bs!854587 (and b!4519046 b!4518967)))

(assert (=> bs!854587 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (toList!4324 lt!1695582)) (= lambda!172247 lambda!172225))))

(declare-fun bs!854588 () Bool)

(assert (= bs!854588 (and b!4519046 b!4518925)))

(assert (=> bs!854588 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172247 lambda!172222))))

(declare-fun bs!854589 () Bool)

(assert (= bs!854589 (and b!4519046 b!4518918)))

(assert (=> bs!854589 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172247 lambda!172223))))

(declare-fun bs!854590 () Bool)

(assert (= bs!854590 (and b!4519046 b!4519044)))

(assert (=> bs!854590 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (t!357726 (toList!4324 lt!1695582))) (= lambda!172247 lambda!172246))))

(declare-fun bs!854591 () Bool)

(assert (= bs!854591 (and b!4519046 b!4518551)))

(assert (=> bs!854591 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582))) (toList!4324 lt!1695584)) (= lambda!172247 lambda!172172))))

(assert (=> b!4519046 true))

(declare-fun bs!854592 () Bool)

(declare-fun b!4519039 () Bool)

(assert (= bs!854592 (and b!4519039 b!4518556)))

(declare-fun lambda!172248 () Int)

(assert (=> bs!854592 (= (= (toList!4324 lt!1695582) (toList!4324 lt!1695601)) (= lambda!172248 lambda!172174))))

(declare-fun bs!854593 () Bool)

(assert (= bs!854593 (and b!4519039 b!4519046)))

(assert (=> bs!854593 (= (= (toList!4324 lt!1695582) (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582)))) (= lambda!172248 lambda!172247))))

(declare-fun bs!854594 () Bool)

(assert (= bs!854594 (and b!4519039 b!4518923)))

(assert (=> bs!854594 (= (= (toList!4324 lt!1695582) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172248 lambda!172221))))

(declare-fun bs!854595 () Bool)

(assert (= bs!854595 (and b!4519039 b!4518437)))

(assert (=> bs!854595 (= (= (toList!4324 lt!1695582) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172248 lambda!172160))))

(declare-fun bs!854596 () Bool)

(assert (= bs!854596 (and b!4519039 b!4518967)))

(assert (=> bs!854596 (= lambda!172248 lambda!172225)))

(declare-fun bs!854597 () Bool)

(assert (= bs!854597 (and b!4519039 b!4518925)))

(assert (=> bs!854597 (= (= (toList!4324 lt!1695582) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172248 lambda!172222))))

(declare-fun bs!854598 () Bool)

(assert (= bs!854598 (and b!4519039 b!4518918)))

(assert (=> bs!854598 (= (= (toList!4324 lt!1695582) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172248 lambda!172223))))

(declare-fun bs!854599 () Bool)

(assert (= bs!854599 (and b!4519039 b!4519044)))

(assert (=> bs!854599 (= (= (toList!4324 lt!1695582) (t!357726 (toList!4324 lt!1695582))) (= lambda!172248 lambda!172246))))

(declare-fun bs!854600 () Bool)

(assert (= bs!854600 (and b!4519039 b!4518551)))

(assert (=> bs!854600 (= (= (toList!4324 lt!1695582) (toList!4324 lt!1695584)) (= lambda!172248 lambda!172172))))

(assert (=> b!4519039 true))

(declare-fun bs!854601 () Bool)

(declare-fun b!4519042 () Bool)

(assert (= bs!854601 (and b!4519042 b!4518552)))

(declare-fun lambda!172249 () Int)

(assert (=> bs!854601 (= lambda!172249 lambda!172173)))

(declare-fun bs!854602 () Bool)

(assert (= bs!854602 (and b!4519042 b!4518438)))

(assert (=> bs!854602 (= lambda!172249 lambda!172161)))

(declare-fun bs!854603 () Bool)

(assert (= bs!854603 (and b!4519042 b!4518921)))

(assert (=> bs!854603 (= lambda!172249 lambda!172224)))

(declare-fun bs!854604 () Bool)

(assert (= bs!854604 (and b!4519042 b!4518968)))

(assert (=> bs!854604 (= lambda!172249 lambda!172226)))

(declare-fun bs!854605 () Bool)

(assert (= bs!854605 (and b!4519042 b!4518557)))

(assert (=> bs!854605 (= lambda!172249 lambda!172175)))

(declare-fun d!1391945 () Bool)

(declare-fun e!2815448 () Bool)

(assert (=> d!1391945 e!2815448))

(declare-fun res!1880629 () Bool)

(assert (=> d!1391945 (=> (not res!1880629) (not e!2815448))))

(declare-fun lt!1696400 () List!50766)

(assert (=> d!1391945 (= res!1880629 (noDuplicate!745 lt!1696400))))

(declare-fun e!2815447 () List!50766)

(assert (=> d!1391945 (= lt!1696400 e!2815447)))

(declare-fun c!771162 () Bool)

(assert (=> d!1391945 (= c!771162 ((_ is Cons!50640) (toList!4324 lt!1695582)))))

(assert (=> d!1391945 (invariantList!1015 (toList!4324 lt!1695582))))

(assert (=> d!1391945 (= (getKeysList!462 (toList!4324 lt!1695582)) lt!1696400)))

(declare-fun b!4519038 () Bool)

(declare-fun res!1880630 () Bool)

(assert (=> b!4519038 (=> (not res!1880630) (not e!2815448))))

(assert (=> b!4519038 (= res!1880630 (= (length!346 lt!1696400) (length!347 (toList!4324 lt!1695582))))))

(declare-fun res!1880631 () Bool)

(assert (=> b!4519039 (=> (not res!1880631) (not e!2815448))))

(assert (=> b!4519039 (= res!1880631 (forall!10260 lt!1696400 lambda!172248))))

(declare-fun b!4519040 () Bool)

(declare-fun e!2815445 () Unit!94720)

(declare-fun Unit!94932 () Unit!94720)

(assert (=> b!4519040 (= e!2815445 Unit!94932)))

(declare-fun b!4519041 () Bool)

(declare-fun e!2815446 () Unit!94720)

(declare-fun Unit!94933 () Unit!94720)

(assert (=> b!4519041 (= e!2815446 Unit!94933)))

(assert (=> b!4519042 (= e!2815448 (= (content!8349 lt!1696400) (content!8349 (map!11135 (toList!4324 lt!1695582) lambda!172249))))))

(declare-fun b!4519043 () Bool)

(assert (=> b!4519043 false))

(declare-fun Unit!94934 () Unit!94720)

(assert (=> b!4519043 (= e!2815445 Unit!94934)))

(assert (=> b!4519044 false))

(declare-fun lt!1696403 () Unit!94720)

(assert (=> b!4519044 (= lt!1696403 (forallContained!2513 (getKeysList!462 (t!357726 (toList!4324 lt!1695582))) lambda!172246 (_1!28827 (h!56491 (toList!4324 lt!1695582)))))))

(declare-fun Unit!94935 () Unit!94720)

(assert (=> b!4519044 (= e!2815446 Unit!94935)))

(declare-fun b!4519045 () Bool)

(assert (=> b!4519045 (= e!2815447 Nil!50642)))

(assert (=> b!4519046 (= e!2815447 (Cons!50642 (_1!28827 (h!56491 (toList!4324 lt!1695582))) (getKeysList!462 (t!357726 (toList!4324 lt!1695582)))))))

(declare-fun c!771161 () Bool)

(assert (=> b!4519046 (= c!771161 (containsKey!1775 (t!357726 (toList!4324 lt!1695582)) (_1!28827 (h!56491 (toList!4324 lt!1695582)))))))

(declare-fun lt!1696401 () Unit!94720)

(assert (=> b!4519046 (= lt!1696401 e!2815445)))

(declare-fun c!771160 () Bool)

(assert (=> b!4519046 (= c!771160 (contains!13364 (getKeysList!462 (t!357726 (toList!4324 lt!1695582))) (_1!28827 (h!56491 (toList!4324 lt!1695582)))))))

(declare-fun lt!1696402 () Unit!94720)

(assert (=> b!4519046 (= lt!1696402 e!2815446)))

(declare-fun lt!1696397 () List!50766)

(assert (=> b!4519046 (= lt!1696397 (getKeysList!462 (t!357726 (toList!4324 lt!1695582))))))

(declare-fun lt!1696399 () Unit!94720)

(assert (=> b!4519046 (= lt!1696399 (lemmaForallContainsAddHeadPreserves!167 (t!357726 (toList!4324 lt!1695582)) lt!1696397 (h!56491 (toList!4324 lt!1695582))))))

(assert (=> b!4519046 (forall!10260 lt!1696397 lambda!172247)))

(declare-fun lt!1696398 () Unit!94720)

(assert (=> b!4519046 (= lt!1696398 lt!1696399)))

(assert (= (and d!1391945 c!771162) b!4519046))

(assert (= (and d!1391945 (not c!771162)) b!4519045))

(assert (= (and b!4519046 c!771161) b!4519043))

(assert (= (and b!4519046 (not c!771161)) b!4519040))

(assert (= (and b!4519046 c!771160) b!4519044))

(assert (= (and b!4519046 (not c!771160)) b!4519041))

(assert (= (and d!1391945 res!1880629) b!4519038))

(assert (= (and b!4519038 res!1880630) b!4519039))

(assert (= (and b!4519039 res!1880631) b!4519042))

(declare-fun m!5266151 () Bool)

(assert (=> b!4519046 m!5266151))

(declare-fun m!5266153 () Bool)

(assert (=> b!4519046 m!5266153))

(declare-fun m!5266155 () Bool)

(assert (=> b!4519046 m!5266155))

(assert (=> b!4519046 m!5266151))

(declare-fun m!5266157 () Bool)

(assert (=> b!4519046 m!5266157))

(declare-fun m!5266159 () Bool)

(assert (=> b!4519046 m!5266159))

(declare-fun m!5266161 () Bool)

(assert (=> b!4519039 m!5266161))

(declare-fun m!5266163 () Bool)

(assert (=> b!4519038 m!5266163))

(assert (=> b!4519038 m!5265919))

(declare-fun m!5266165 () Bool)

(assert (=> b!4519042 m!5266165))

(declare-fun m!5266167 () Bool)

(assert (=> b!4519042 m!5266167))

(assert (=> b!4519042 m!5266167))

(declare-fun m!5266169 () Bool)

(assert (=> b!4519042 m!5266169))

(declare-fun m!5266171 () Bool)

(assert (=> d!1391945 m!5266171))

(assert (=> d!1391945 m!5265139))

(assert (=> b!4519044 m!5266151))

(assert (=> b!4519044 m!5266151))

(declare-fun m!5266173 () Bool)

(assert (=> b!4519044 m!5266173))

(assert (=> b!4518406 d!1391945))

(declare-fun d!1391947 () Bool)

(declare-fun lt!1696418 () Bool)

(assert (=> d!1391947 (= lt!1696418 (select (content!8349 e!2814829) key!3287))))

(declare-fun e!2815455 () Bool)

(assert (=> d!1391947 (= lt!1696418 e!2815455)))

(declare-fun res!1880632 () Bool)

(assert (=> d!1391947 (=> (not res!1880632) (not e!2815455))))

(assert (=> d!1391947 (= res!1880632 ((_ is Cons!50642) e!2814829))))

(assert (=> d!1391947 (= (contains!13364 e!2814829 key!3287) lt!1696418)))

(declare-fun b!4519059 () Bool)

(declare-fun e!2815456 () Bool)

(assert (=> b!4519059 (= e!2815455 e!2815456)))

(declare-fun res!1880633 () Bool)

(assert (=> b!4519059 (=> res!1880633 e!2815456)))

(assert (=> b!4519059 (= res!1880633 (= (h!56495 e!2814829) key!3287))))

(declare-fun b!4519060 () Bool)

(assert (=> b!4519060 (= e!2815456 (contains!13364 (t!357728 e!2814829) key!3287))))

(assert (= (and d!1391947 res!1880632) b!4519059))

(assert (= (and b!4519059 (not res!1880633)) b!4519060))

(declare-fun m!5266175 () Bool)

(assert (=> d!1391947 m!5266175))

(declare-fun m!5266177 () Bool)

(assert (=> d!1391947 m!5266177))

(declare-fun m!5266179 () Bool)

(assert (=> b!4519060 m!5266179))

(assert (=> bm!314729 d!1391947))

(declare-fun bs!854606 () Bool)

(declare-fun b!4519067 () Bool)

(assert (= bs!854606 (and b!4519067 b!4518556)))

(declare-fun lambda!172254 () Int)

(assert (=> bs!854606 (= (= (t!357726 (toList!4324 lt!1695584)) (toList!4324 lt!1695601)) (= lambda!172254 lambda!172174))))

(declare-fun bs!854607 () Bool)

(assert (= bs!854607 (and b!4519067 b!4519046)))

(assert (=> bs!854607 (= (= (t!357726 (toList!4324 lt!1695584)) (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582)))) (= lambda!172254 lambda!172247))))

(declare-fun bs!854608 () Bool)

(assert (= bs!854608 (and b!4519067 b!4518923)))

(assert (=> bs!854608 (= (= (t!357726 (toList!4324 lt!1695584)) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172254 lambda!172221))))

(declare-fun bs!854609 () Bool)

(assert (= bs!854609 (and b!4519067 b!4519039)))

(assert (=> bs!854609 (= (= (t!357726 (toList!4324 lt!1695584)) (toList!4324 lt!1695582)) (= lambda!172254 lambda!172248))))

(declare-fun bs!854610 () Bool)

(assert (= bs!854610 (and b!4519067 b!4518437)))

(assert (=> bs!854610 (= (= (t!357726 (toList!4324 lt!1695584)) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172254 lambda!172160))))

(declare-fun bs!854611 () Bool)

(assert (= bs!854611 (and b!4519067 b!4518967)))

(assert (=> bs!854611 (= (= (t!357726 (toList!4324 lt!1695584)) (toList!4324 lt!1695582)) (= lambda!172254 lambda!172225))))

(declare-fun bs!854612 () Bool)

(assert (= bs!854612 (and b!4519067 b!4518925)))

(assert (=> bs!854612 (= (= (t!357726 (toList!4324 lt!1695584)) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172254 lambda!172222))))

(declare-fun bs!854613 () Bool)

(assert (= bs!854613 (and b!4519067 b!4518918)))

(assert (=> bs!854613 (= (= (t!357726 (toList!4324 lt!1695584)) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172254 lambda!172223))))

(declare-fun bs!854614 () Bool)

(assert (= bs!854614 (and b!4519067 b!4519044)))

(assert (=> bs!854614 (= (= (t!357726 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695582))) (= lambda!172254 lambda!172246))))

(declare-fun bs!854615 () Bool)

(assert (= bs!854615 (and b!4519067 b!4518551)))

(assert (=> bs!854615 (= (= (t!357726 (toList!4324 lt!1695584)) (toList!4324 lt!1695584)) (= lambda!172254 lambda!172172))))

(assert (=> b!4519067 true))

(declare-fun bs!854616 () Bool)

(declare-fun b!4519069 () Bool)

(assert (= bs!854616 (and b!4519069 b!4518556)))

(declare-fun lambda!172255 () Int)

(assert (=> bs!854616 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (toList!4324 lt!1695601)) (= lambda!172255 lambda!172174))))

(declare-fun bs!854617 () Bool)

(assert (= bs!854617 (and b!4519069 b!4519046)))

(assert (=> bs!854617 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582)))) (= lambda!172255 lambda!172247))))

(declare-fun bs!854618 () Bool)

(assert (= bs!854618 (and b!4519069 b!4518923)))

(assert (=> bs!854618 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172255 lambda!172221))))

(declare-fun bs!854619 () Bool)

(assert (= bs!854619 (and b!4519069 b!4519039)))

(assert (=> bs!854619 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (toList!4324 lt!1695582)) (= lambda!172255 lambda!172248))))

(declare-fun bs!854620 () Bool)

(assert (= bs!854620 (and b!4519069 b!4518437)))

(assert (=> bs!854620 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172255 lambda!172160))))

(declare-fun bs!854621 () Bool)

(assert (= bs!854621 (and b!4519069 b!4518967)))

(assert (=> bs!854621 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (toList!4324 lt!1695582)) (= lambda!172255 lambda!172225))))

(declare-fun bs!854622 () Bool)

(assert (= bs!854622 (and b!4519069 b!4519067)))

(assert (=> bs!854622 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (t!357726 (toList!4324 lt!1695584))) (= lambda!172255 lambda!172254))))

(declare-fun bs!854623 () Bool)

(assert (= bs!854623 (and b!4519069 b!4518925)))

(assert (=> bs!854623 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172255 lambda!172222))))

(declare-fun bs!854624 () Bool)

(assert (= bs!854624 (and b!4519069 b!4518918)))

(assert (=> bs!854624 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172255 lambda!172223))))

(declare-fun bs!854625 () Bool)

(assert (= bs!854625 (and b!4519069 b!4519044)))

(assert (=> bs!854625 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (t!357726 (toList!4324 lt!1695582))) (= lambda!172255 lambda!172246))))

(declare-fun bs!854626 () Bool)

(assert (= bs!854626 (and b!4519069 b!4518551)))

(assert (=> bs!854626 (= (= (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584))) (toList!4324 lt!1695584)) (= lambda!172255 lambda!172172))))

(assert (=> b!4519069 true))

(declare-fun bs!854627 () Bool)

(declare-fun b!4519062 () Bool)

(assert (= bs!854627 (and b!4519062 b!4518556)))

(declare-fun lambda!172260 () Int)

(assert (=> bs!854627 (= (= (toList!4324 lt!1695584) (toList!4324 lt!1695601)) (= lambda!172260 lambda!172174))))

(declare-fun bs!854628 () Bool)

(assert (= bs!854628 (and b!4519062 b!4519046)))

(assert (=> bs!854628 (= (= (toList!4324 lt!1695584) (Cons!50640 (h!56491 (toList!4324 lt!1695582)) (t!357726 (toList!4324 lt!1695582)))) (= lambda!172260 lambda!172247))))

(declare-fun bs!854629 () Bool)

(assert (= bs!854629 (and b!4519062 b!4519069)))

(assert (=> bs!854629 (= (= (toList!4324 lt!1695584) (Cons!50640 (h!56491 (toList!4324 lt!1695584)) (t!357726 (toList!4324 lt!1695584)))) (= lambda!172260 lambda!172255))))

(declare-fun bs!854630 () Bool)

(assert (= bs!854630 (and b!4519062 b!4518923)))

(assert (=> bs!854630 (= (= (toList!4324 lt!1695584) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) (= lambda!172260 lambda!172221))))

(declare-fun bs!854631 () Bool)

(assert (= bs!854631 (and b!4519062 b!4519039)))

(assert (=> bs!854631 (= (= (toList!4324 lt!1695584) (toList!4324 lt!1695582)) (= lambda!172260 lambda!172248))))

(declare-fun bs!854632 () Bool)

(assert (= bs!854632 (and b!4519062 b!4518437)))

(assert (=> bs!854632 (= (= (toList!4324 lt!1695584) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172260 lambda!172160))))

(declare-fun bs!854633 () Bool)

(assert (= bs!854633 (and b!4519062 b!4518967)))

(assert (=> bs!854633 (= (= (toList!4324 lt!1695584) (toList!4324 lt!1695582)) (= lambda!172260 lambda!172225))))

(declare-fun bs!854634 () Bool)

(assert (= bs!854634 (and b!4519062 b!4519067)))

(assert (=> bs!854634 (= (= (toList!4324 lt!1695584) (t!357726 (toList!4324 lt!1695584))) (= lambda!172260 lambda!172254))))

(declare-fun bs!854635 () Bool)

(assert (= bs!854635 (and b!4519062 b!4518925)))

(assert (=> bs!854635 (= (= (toList!4324 lt!1695584) (Cons!50640 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))) (= lambda!172260 lambda!172222))))

(declare-fun bs!854636 () Bool)

(assert (= bs!854636 (and b!4519062 b!4518918)))

(assert (=> bs!854636 (= (= (toList!4324 lt!1695584) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= lambda!172260 lambda!172223))))

(declare-fun bs!854637 () Bool)

(assert (= bs!854637 (and b!4519062 b!4519044)))

(assert (=> bs!854637 (= (= (toList!4324 lt!1695584) (t!357726 (toList!4324 lt!1695582))) (= lambda!172260 lambda!172246))))

(declare-fun bs!854638 () Bool)

(assert (= bs!854638 (and b!4519062 b!4518551)))

(assert (=> bs!854638 (= lambda!172260 lambda!172172)))

(assert (=> b!4519062 true))

(declare-fun bs!854639 () Bool)

(declare-fun b!4519065 () Bool)

(assert (= bs!854639 (and b!4519065 b!4519042)))

(declare-fun lambda!172261 () Int)

(assert (=> bs!854639 (= lambda!172261 lambda!172249)))

(declare-fun bs!854640 () Bool)

(assert (= bs!854640 (and b!4519065 b!4518552)))

(assert (=> bs!854640 (= lambda!172261 lambda!172173)))

(declare-fun bs!854641 () Bool)

(assert (= bs!854641 (and b!4519065 b!4518438)))

(assert (=> bs!854641 (= lambda!172261 lambda!172161)))

(declare-fun bs!854642 () Bool)

(assert (= bs!854642 (and b!4519065 b!4518921)))

(assert (=> bs!854642 (= lambda!172261 lambda!172224)))

(declare-fun bs!854643 () Bool)

(assert (= bs!854643 (and b!4519065 b!4518968)))

(assert (=> bs!854643 (= lambda!172261 lambda!172226)))

(declare-fun bs!854644 () Bool)

(assert (= bs!854644 (and b!4519065 b!4518557)))

(assert (=> bs!854644 (= lambda!172261 lambda!172175)))

(declare-fun d!1391949 () Bool)

(declare-fun e!2815460 () Bool)

(assert (=> d!1391949 e!2815460))

(declare-fun res!1880634 () Bool)

(assert (=> d!1391949 (=> (not res!1880634) (not e!2815460))))

(declare-fun lt!1696422 () List!50766)

(assert (=> d!1391949 (= res!1880634 (noDuplicate!745 lt!1696422))))

(declare-fun e!2815459 () List!50766)

(assert (=> d!1391949 (= lt!1696422 e!2815459)))

(declare-fun c!771171 () Bool)

(assert (=> d!1391949 (= c!771171 ((_ is Cons!50640) (toList!4324 lt!1695584)))))

(assert (=> d!1391949 (invariantList!1015 (toList!4324 lt!1695584))))

(assert (=> d!1391949 (= (getKeysList!462 (toList!4324 lt!1695584)) lt!1696422)))

(declare-fun b!4519061 () Bool)

(declare-fun res!1880635 () Bool)

(assert (=> b!4519061 (=> (not res!1880635) (not e!2815460))))

(assert (=> b!4519061 (= res!1880635 (= (length!346 lt!1696422) (length!347 (toList!4324 lt!1695584))))))

(declare-fun res!1880636 () Bool)

(assert (=> b!4519062 (=> (not res!1880636) (not e!2815460))))

(assert (=> b!4519062 (= res!1880636 (forall!10260 lt!1696422 lambda!172260))))

(declare-fun b!4519063 () Bool)

(declare-fun e!2815457 () Unit!94720)

(declare-fun Unit!94940 () Unit!94720)

(assert (=> b!4519063 (= e!2815457 Unit!94940)))

(declare-fun b!4519064 () Bool)

(declare-fun e!2815458 () Unit!94720)

(declare-fun Unit!94941 () Unit!94720)

(assert (=> b!4519064 (= e!2815458 Unit!94941)))

(assert (=> b!4519065 (= e!2815460 (= (content!8349 lt!1696422) (content!8349 (map!11135 (toList!4324 lt!1695584) lambda!172261))))))

(declare-fun b!4519066 () Bool)

(assert (=> b!4519066 false))

(declare-fun Unit!94942 () Unit!94720)

(assert (=> b!4519066 (= e!2815457 Unit!94942)))

(assert (=> b!4519067 false))

(declare-fun lt!1696425 () Unit!94720)

(assert (=> b!4519067 (= lt!1696425 (forallContained!2513 (getKeysList!462 (t!357726 (toList!4324 lt!1695584))) lambda!172254 (_1!28827 (h!56491 (toList!4324 lt!1695584)))))))

(declare-fun Unit!94943 () Unit!94720)

(assert (=> b!4519067 (= e!2815458 Unit!94943)))

(declare-fun b!4519068 () Bool)

(assert (=> b!4519068 (= e!2815459 Nil!50642)))

(assert (=> b!4519069 (= e!2815459 (Cons!50642 (_1!28827 (h!56491 (toList!4324 lt!1695584))) (getKeysList!462 (t!357726 (toList!4324 lt!1695584)))))))

(declare-fun c!771170 () Bool)

(assert (=> b!4519069 (= c!771170 (containsKey!1775 (t!357726 (toList!4324 lt!1695584)) (_1!28827 (h!56491 (toList!4324 lt!1695584)))))))

(declare-fun lt!1696423 () Unit!94720)

(assert (=> b!4519069 (= lt!1696423 e!2815457)))

(declare-fun c!771169 () Bool)

(assert (=> b!4519069 (= c!771169 (contains!13364 (getKeysList!462 (t!357726 (toList!4324 lt!1695584))) (_1!28827 (h!56491 (toList!4324 lt!1695584)))))))

(declare-fun lt!1696424 () Unit!94720)

(assert (=> b!4519069 (= lt!1696424 e!2815458)))

(declare-fun lt!1696419 () List!50766)

(assert (=> b!4519069 (= lt!1696419 (getKeysList!462 (t!357726 (toList!4324 lt!1695584))))))

(declare-fun lt!1696421 () Unit!94720)

(assert (=> b!4519069 (= lt!1696421 (lemmaForallContainsAddHeadPreserves!167 (t!357726 (toList!4324 lt!1695584)) lt!1696419 (h!56491 (toList!4324 lt!1695584))))))

(assert (=> b!4519069 (forall!10260 lt!1696419 lambda!172255)))

(declare-fun lt!1696420 () Unit!94720)

(assert (=> b!4519069 (= lt!1696420 lt!1696421)))

(assert (= (and d!1391949 c!771171) b!4519069))

(assert (= (and d!1391949 (not c!771171)) b!4519068))

(assert (= (and b!4519069 c!771170) b!4519066))

(assert (= (and b!4519069 (not c!771170)) b!4519063))

(assert (= (and b!4519069 c!771169) b!4519067))

(assert (= (and b!4519069 (not c!771169)) b!4519064))

(assert (= (and d!1391949 res!1880634) b!4519061))

(assert (= (and b!4519061 res!1880635) b!4519062))

(assert (= (and b!4519062 res!1880636) b!4519065))

(declare-fun m!5266181 () Bool)

(assert (=> b!4519069 m!5266181))

(declare-fun m!5266183 () Bool)

(assert (=> b!4519069 m!5266183))

(declare-fun m!5266185 () Bool)

(assert (=> b!4519069 m!5266185))

(assert (=> b!4519069 m!5266181))

(declare-fun m!5266187 () Bool)

(assert (=> b!4519069 m!5266187))

(declare-fun m!5266189 () Bool)

(assert (=> b!4519069 m!5266189))

(declare-fun m!5266191 () Bool)

(assert (=> b!4519062 m!5266191))

(declare-fun m!5266193 () Bool)

(assert (=> b!4519061 m!5266193))

(assert (=> b!4519061 m!5265197))

(declare-fun m!5266195 () Bool)

(assert (=> b!4519065 m!5266195))

(declare-fun m!5266197 () Bool)

(assert (=> b!4519065 m!5266197))

(assert (=> b!4519065 m!5266197))

(declare-fun m!5266199 () Bool)

(assert (=> b!4519065 m!5266199))

(declare-fun m!5266201 () Bool)

(assert (=> d!1391949 m!5266201))

(assert (=> d!1391949 m!5265171))

(assert (=> b!4519067 m!5266181))

(assert (=> b!4519067 m!5266181))

(declare-fun m!5266203 () Bool)

(assert (=> b!4519067 m!5266203))

(assert (=> b!4518115 d!1391949))

(declare-fun b!4519076 () Bool)

(declare-fun e!2815468 () Bool)

(assert (=> b!4519076 (= e!2815468 (not (contains!13364 (keys!17589 (extractMap!1214 (toList!4323 lt!1695586))) key!3287)))))

(declare-fun d!1391951 () Bool)

(declare-fun e!2815465 () Bool)

(assert (=> d!1391951 e!2815465))

(declare-fun res!1880643 () Bool)

(assert (=> d!1391951 (=> res!1880643 e!2815465)))

(assert (=> d!1391951 (= res!1880643 e!2815468)))

(declare-fun res!1880645 () Bool)

(assert (=> d!1391951 (=> (not res!1880645) (not e!2815468))))

(declare-fun lt!1696432 () Bool)

(assert (=> d!1391951 (= res!1880645 (not lt!1696432))))

(declare-fun lt!1696428 () Bool)

(assert (=> d!1391951 (= lt!1696432 lt!1696428)))

(declare-fun lt!1696426 () Unit!94720)

(declare-fun e!2815466 () Unit!94720)

(assert (=> d!1391951 (= lt!1696426 e!2815466)))

(declare-fun c!771174 () Bool)

(assert (=> d!1391951 (= c!771174 lt!1696428)))

(assert (=> d!1391951 (= lt!1696428 (containsKey!1775 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287))))

(assert (=> d!1391951 (= (contains!13361 (extractMap!1214 (toList!4323 lt!1695586)) key!3287) lt!1696432)))

(declare-fun b!4519077 () Bool)

(declare-fun e!2815467 () List!50766)

(assert (=> b!4519077 (= e!2815467 (keys!17589 (extractMap!1214 (toList!4323 lt!1695586))))))

(declare-fun b!4519078 () Bool)

(declare-fun lt!1696430 () Unit!94720)

(assert (=> b!4519078 (= e!2815466 lt!1696430)))

(declare-fun lt!1696433 () Unit!94720)

(assert (=> b!4519078 (= lt!1696433 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287))))

(assert (=> b!4519078 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287))))

(declare-fun lt!1696427 () Unit!94720)

(assert (=> b!4519078 (= lt!1696427 lt!1696433)))

(assert (=> b!4519078 (= lt!1696430 (lemmaInListThenGetKeysListContains!458 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287))))

(declare-fun call!314822 () Bool)

(assert (=> b!4519078 call!314822))

(declare-fun b!4519079 () Bool)

(declare-fun e!2815463 () Bool)

(assert (=> b!4519079 (= e!2815465 e!2815463)))

(declare-fun res!1880644 () Bool)

(assert (=> b!4519079 (=> (not res!1880644) (not e!2815463))))

(assert (=> b!4519079 (= res!1880644 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287)))))

(declare-fun b!4519080 () Bool)

(assert (=> b!4519080 (= e!2815467 (getKeysList!462 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586)))))))

(declare-fun b!4519081 () Bool)

(declare-fun e!2815464 () Unit!94720)

(declare-fun Unit!94950 () Unit!94720)

(assert (=> b!4519081 (= e!2815464 Unit!94950)))

(declare-fun b!4519082 () Bool)

(assert (=> b!4519082 false))

(declare-fun lt!1696429 () Unit!94720)

(declare-fun lt!1696431 () Unit!94720)

(assert (=> b!4519082 (= lt!1696429 lt!1696431)))

(assert (=> b!4519082 (containsKey!1775 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287)))

(assert (=> b!4519082 (= lt!1696431 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 (extractMap!1214 (toList!4323 lt!1695586))) key!3287))))

(declare-fun Unit!94951 () Unit!94720)

(assert (=> b!4519082 (= e!2815464 Unit!94951)))

(declare-fun bm!314817 () Bool)

(assert (=> bm!314817 (= call!314822 (contains!13364 e!2815467 key!3287))))

(declare-fun c!771172 () Bool)

(assert (=> bm!314817 (= c!771172 c!771174)))

(declare-fun b!4519083 () Bool)

(assert (=> b!4519083 (= e!2815463 (contains!13364 (keys!17589 (extractMap!1214 (toList!4323 lt!1695586))) key!3287))))

(declare-fun b!4519084 () Bool)

(assert (=> b!4519084 (= e!2815466 e!2815464)))

(declare-fun c!771173 () Bool)

(assert (=> b!4519084 (= c!771173 call!314822)))

(assert (= (and d!1391951 c!771174) b!4519078))

(assert (= (and d!1391951 (not c!771174)) b!4519084))

(assert (= (and b!4519084 c!771173) b!4519082))

(assert (= (and b!4519084 (not c!771173)) b!4519081))

(assert (= (or b!4519078 b!4519084) bm!314817))

(assert (= (and bm!314817 c!771172) b!4519080))

(assert (= (and bm!314817 (not c!771172)) b!4519077))

(assert (= (and d!1391951 res!1880645) b!4519076))

(assert (= (and d!1391951 (not res!1880643)) b!4519079))

(assert (= (and b!4519079 res!1880644) b!4519083))

(assert (=> b!4519077 m!5264143))

(assert (=> b!4519077 m!5265949))

(declare-fun m!5266205 () Bool)

(assert (=> b!4519078 m!5266205))

(declare-fun m!5266207 () Bool)

(assert (=> b!4519078 m!5266207))

(assert (=> b!4519078 m!5266207))

(declare-fun m!5266209 () Bool)

(assert (=> b!4519078 m!5266209))

(declare-fun m!5266211 () Bool)

(assert (=> b!4519078 m!5266211))

(declare-fun m!5266213 () Bool)

(assert (=> b!4519080 m!5266213))

(assert (=> b!4519079 m!5266207))

(assert (=> b!4519079 m!5266207))

(assert (=> b!4519079 m!5266209))

(declare-fun m!5266215 () Bool)

(assert (=> b!4519082 m!5266215))

(declare-fun m!5266217 () Bool)

(assert (=> b!4519082 m!5266217))

(declare-fun m!5266219 () Bool)

(assert (=> bm!314817 m!5266219))

(assert (=> b!4519083 m!5264143))

(assert (=> b!4519083 m!5265949))

(assert (=> b!4519083 m!5265949))

(declare-fun m!5266221 () Bool)

(assert (=> b!4519083 m!5266221))

(assert (=> d!1391951 m!5266215))

(assert (=> b!4519076 m!5264143))

(assert (=> b!4519076 m!5265949))

(assert (=> b!4519076 m!5265949))

(assert (=> b!4519076 m!5266221))

(assert (=> d!1391355 d!1391951))

(assert (=> d!1391355 d!1391353))

(declare-fun d!1391953 () Bool)

(assert (=> d!1391953 (contains!13361 (extractMap!1214 (toList!4323 lt!1695586)) key!3287)))

(assert (=> d!1391953 true))

(declare-fun _$34!673 () Unit!94720)

(assert (=> d!1391953 (= (choose!29480 lt!1695586 key!3287 hashF!1107) _$34!673)))

(declare-fun bs!854664 () Bool)

(assert (= bs!854664 d!1391953))

(assert (=> bs!854664 m!5264143))

(assert (=> bs!854664 m!5264143))

(assert (=> bs!854664 m!5264323))

(assert (=> d!1391355 d!1391953))

(declare-fun d!1391973 () Bool)

(declare-fun res!1880663 () Bool)

(declare-fun e!2815491 () Bool)

(assert (=> d!1391973 (=> res!1880663 e!2815491)))

(assert (=> d!1391973 (= res!1880663 ((_ is Nil!50641) (toList!4323 lt!1695586)))))

(assert (=> d!1391973 (= (forall!10257 (toList!4323 lt!1695586) lambda!172050) e!2815491)))

(declare-fun b!4519122 () Bool)

(declare-fun e!2815492 () Bool)

(assert (=> b!4519122 (= e!2815491 e!2815492)))

(declare-fun res!1880664 () Bool)

(assert (=> b!4519122 (=> (not res!1880664) (not e!2815492))))

(assert (=> b!4519122 (= res!1880664 (dynLambda!21159 lambda!172050 (h!56492 (toList!4323 lt!1695586))))))

(declare-fun b!4519123 () Bool)

(assert (=> b!4519123 (= e!2815492 (forall!10257 (t!357727 (toList!4323 lt!1695586)) lambda!172050))))

(assert (= (and d!1391973 (not res!1880663)) b!4519122))

(assert (= (and b!4519122 res!1880664) b!4519123))

(declare-fun b_lambda!154737 () Bool)

(assert (=> (not b_lambda!154737) (not b!4519122)))

(declare-fun m!5266295 () Bool)

(assert (=> b!4519122 m!5266295))

(declare-fun m!5266297 () Bool)

(assert (=> b!4519123 m!5266297))

(assert (=> d!1391355 d!1391973))

(declare-fun d!1391977 () Bool)

(assert (=> d!1391977 (= (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287)) (not (isEmpty!28664 (getValueByKey!1088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))))

(declare-fun bs!854665 () Bool)

(assert (= bs!854665 d!1391977))

(assert (=> bs!854665 m!5264291))

(declare-fun m!5266301 () Bool)

(assert (=> bs!854665 m!5266301))

(assert (=> b!4518097 d!1391977))

(declare-fun d!1391979 () Bool)

(declare-fun c!771185 () Bool)

(assert (=> d!1391979 (= c!771185 (and ((_ is Cons!50640) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (= (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) key!3287)))))

(declare-fun e!2815495 () Option!11108)

(assert (=> d!1391979 (= (getValueByKey!1088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287) e!2815495)))

(declare-fun b!4519128 () Bool)

(declare-fun e!2815496 () Option!11108)

(assert (=> b!4519128 (= e!2815495 e!2815496)))

(declare-fun c!771186 () Bool)

(assert (=> b!4519128 (= c!771186 (and ((_ is Cons!50640) (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) (not (= (_1!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))) key!3287))))))

(declare-fun b!4519129 () Bool)

(assert (=> b!4519129 (= e!2815496 (getValueByKey!1088 (t!357726 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(declare-fun b!4519127 () Bool)

(assert (=> b!4519127 (= e!2815495 (Some!11107 (_2!28827 (h!56491 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))))))))

(declare-fun b!4519130 () Bool)

(assert (=> b!4519130 (= e!2815496 None!11107)))

(assert (= (and d!1391979 c!771185) b!4519127))

(assert (= (and d!1391979 (not c!771185)) b!4519128))

(assert (= (and b!4519128 c!771186) b!4519129))

(assert (= (and b!4519128 (not c!771186)) b!4519130))

(declare-fun m!5266307 () Bool)

(assert (=> b!4519129 m!5266307))

(assert (=> b!4518097 d!1391979))

(declare-fun d!1391983 () Bool)

(declare-fun res!1880666 () Bool)

(declare-fun e!2815499 () Bool)

(assert (=> d!1391983 (=> res!1880666 e!2815499)))

(assert (=> d!1391983 (= res!1880666 (and ((_ is Cons!50640) (t!357726 (_2!28828 lt!1695575))) (= (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(assert (=> d!1391983 (= (containsKey!1774 (t!357726 (_2!28828 lt!1695575)) (_1!28827 (h!56491 (_2!28828 lt!1695575)))) e!2815499)))

(declare-fun b!4519135 () Bool)

(declare-fun e!2815500 () Bool)

(assert (=> b!4519135 (= e!2815499 e!2815500)))

(declare-fun res!1880667 () Bool)

(assert (=> b!4519135 (=> (not res!1880667) (not e!2815500))))

(assert (=> b!4519135 (= res!1880667 ((_ is Cons!50640) (t!357726 (_2!28828 lt!1695575))))))

(declare-fun b!4519136 () Bool)

(assert (=> b!4519136 (= e!2815500 (containsKey!1774 (t!357726 (t!357726 (_2!28828 lt!1695575))) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (= (and d!1391983 (not res!1880666)) b!4519135))

(assert (= (and b!4519135 res!1880667) b!4519136))

(declare-fun m!5266311 () Bool)

(assert (=> b!4519136 m!5266311))

(assert (=> b!4518399 d!1391983))

(declare-fun d!1391987 () Bool)

(declare-fun lt!1696448 () Bool)

(assert (=> d!1391987 (= lt!1696448 (select (content!8352 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695598))))

(declare-fun e!2815503 () Bool)

(assert (=> d!1391987 (= lt!1696448 e!2815503)))

(declare-fun res!1880670 () Bool)

(assert (=> d!1391987 (=> (not res!1880670) (not e!2815503))))

(assert (=> d!1391987 (= res!1880670 ((_ is Cons!50641) (t!357727 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1391987 (= (contains!13363 (t!357727 (t!357727 (toList!4323 lm!1477))) lt!1695598) lt!1696448)))

(declare-fun b!4519139 () Bool)

(declare-fun e!2815502 () Bool)

(assert (=> b!4519139 (= e!2815503 e!2815502)))

(declare-fun res!1880671 () Bool)

(assert (=> b!4519139 (=> res!1880671 e!2815502)))

(assert (=> b!4519139 (= res!1880671 (= (h!56492 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695598))))

(declare-fun b!4519140 () Bool)

(assert (=> b!4519140 (= e!2815502 (contains!13363 (t!357727 (t!357727 (t!357727 (toList!4323 lm!1477)))) lt!1695598))))

(assert (= (and d!1391987 res!1880670) b!4519139))

(assert (= (and b!4519139 (not res!1880671)) b!4519140))

(assert (=> d!1391987 m!5265749))

(declare-fun m!5266319 () Bool)

(assert (=> d!1391987 m!5266319))

(declare-fun m!5266323 () Bool)

(assert (=> b!4519140 m!5266323))

(assert (=> b!4518127 d!1391987))

(declare-fun d!1391991 () Bool)

(declare-fun lt!1696449 () Bool)

(assert (=> d!1391991 (= lt!1696449 (select (content!8352 (toList!4323 lt!1695901)) lt!1695594))))

(declare-fun e!2815507 () Bool)

(assert (=> d!1391991 (= lt!1696449 e!2815507)))

(declare-fun res!1880673 () Bool)

(assert (=> d!1391991 (=> (not res!1880673) (not e!2815507))))

(assert (=> d!1391991 (= res!1880673 ((_ is Cons!50641) (toList!4323 lt!1695901)))))

(assert (=> d!1391991 (= (contains!13363 (toList!4323 lt!1695901) lt!1695594) lt!1696449)))

(declare-fun b!4519141 () Bool)

(declare-fun e!2815506 () Bool)

(assert (=> b!4519141 (= e!2815507 e!2815506)))

(declare-fun res!1880674 () Bool)

(assert (=> b!4519141 (=> res!1880674 e!2815506)))

(assert (=> b!4519141 (= res!1880674 (= (h!56492 (toList!4323 lt!1695901)) lt!1695594))))

(declare-fun b!4519142 () Bool)

(assert (=> b!4519142 (= e!2815506 (contains!13363 (t!357727 (toList!4323 lt!1695901)) lt!1695594))))

(assert (= (and d!1391991 res!1880673) b!4519141))

(assert (= (and b!4519141 (not res!1880674)) b!4519142))

(declare-fun m!5266325 () Bool)

(assert (=> d!1391991 m!5266325))

(declare-fun m!5266327 () Bool)

(assert (=> d!1391991 m!5266327))

(declare-fun m!5266329 () Bool)

(assert (=> b!4519142 m!5266329))

(assert (=> b!4518286 d!1391991))

(declare-fun d!1391993 () Bool)

(declare-fun lt!1696451 () Bool)

(assert (=> d!1391993 (= lt!1696451 (select (content!8349 (keys!17589 lt!1695582)) key!3287))))

(declare-fun e!2815511 () Bool)

(assert (=> d!1391993 (= lt!1696451 e!2815511)))

(declare-fun res!1880676 () Bool)

(assert (=> d!1391993 (=> (not res!1880676) (not e!2815511))))

(assert (=> d!1391993 (= res!1880676 ((_ is Cons!50642) (keys!17589 lt!1695582)))))

(assert (=> d!1391993 (= (contains!13364 (keys!17589 lt!1695582) key!3287) lt!1696451)))

(declare-fun b!4519153 () Bool)

(declare-fun e!2815512 () Bool)

(assert (=> b!4519153 (= e!2815511 e!2815512)))

(declare-fun res!1880677 () Bool)

(assert (=> b!4519153 (=> res!1880677 e!2815512)))

(assert (=> b!4519153 (= res!1880677 (= (h!56495 (keys!17589 lt!1695582)) key!3287))))

(declare-fun b!4519154 () Bool)

(assert (=> b!4519154 (= e!2815512 (contains!13364 (t!357728 (keys!17589 lt!1695582)) key!3287))))

(assert (= (and d!1391993 res!1880676) b!4519153))

(assert (= (and b!4519153 (not res!1880677)) b!4519154))

(assert (=> d!1391993 m!5264915))

(declare-fun m!5266331 () Bool)

(assert (=> d!1391993 m!5266331))

(declare-fun m!5266333 () Bool)

(assert (=> d!1391993 m!5266333))

(declare-fun m!5266335 () Bool)

(assert (=> b!4519154 m!5266335))

(assert (=> b!4518402 d!1391993))

(assert (=> b!4518402 d!1391869))

(declare-fun bs!854666 () Bool)

(declare-fun d!1391995 () Bool)

(assert (= bs!854666 (and d!1391995 d!1391499)))

(declare-fun lambda!172268 () Int)

(assert (=> bs!854666 (not (= lambda!172268 lambda!172142))))

(declare-fun bs!854667 () Bool)

(assert (= bs!854667 (and d!1391995 d!1391731)))

(assert (=> bs!854667 (= (= lt!1695572 lt!1696217) (= lambda!172268 lambda!172199))))

(declare-fun bs!854668 () Bool)

(assert (= bs!854668 (and d!1391995 b!4518382)))

(assert (=> bs!854668 (= (= lt!1695572 lt!1695590) (= lambda!172268 lambda!172144))))

(declare-fun bs!854669 () Bool)

(assert (= bs!854669 (and d!1391995 d!1391513)))

(assert (=> bs!854669 (= (= lt!1695572 lt!1695980) (= lambda!172268 lambda!172146))))

(declare-fun bs!854670 () Bool)

(assert (= bs!854670 (and d!1391995 b!4518427)))

(assert (=> bs!854670 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172268 lambda!172152))))

(declare-fun bs!854671 () Bool)

(assert (= bs!854671 (and d!1391995 b!4519010)))

(assert (=> bs!854671 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172268 lambda!172240))))

(declare-fun bs!854672 () Bool)

(assert (= bs!854672 (and d!1391995 d!1391627)))

(assert (=> bs!854672 (= (= lt!1695572 lt!1695590) (= lambda!172268 lambda!172178))))

(declare-fun bs!854673 () Bool)

(assert (= bs!854673 (and d!1391995 d!1391765)))

(assert (=> bs!854673 (= (= lt!1695572 lt!1696247) (= lambda!172268 lambda!172205))))

(declare-fun bs!854674 () Bool)

(assert (= bs!854674 (and d!1391995 b!4518822)))

(assert (=> bs!854674 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172268 lambda!172202))))

(declare-fun bs!854675 () Bool)

(assert (= bs!854675 (and d!1391995 b!4518729)))

(assert (=> bs!854675 (= (= lt!1695572 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172268 lambda!172190))))

(declare-fun bs!854676 () Bool)

(assert (= bs!854676 (and d!1391995 b!4518384)))

(assert (=> bs!854676 (= (= lt!1695572 lt!1695590) (= lambda!172268 lambda!172143))))

(declare-fun bs!854677 () Bool)

(assert (= bs!854677 (and d!1391995 b!4518453)))

(assert (=> bs!854677 (= (= lt!1695572 lt!1696044) (= lambda!172268 lambda!172164))))

(declare-fun bs!854678 () Bool)

(assert (= bs!854678 (and d!1391995 b!4518240)))

(assert (=> bs!854678 (= lambda!172268 lambda!172115)))

(declare-fun bs!854679 () Bool)

(assert (= bs!854679 (and d!1391995 b!4518425)))

(assert (=> bs!854679 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172268 lambda!172153))))

(assert (=> bs!854674 (= (= lt!1695572 lt!1696249) (= lambda!172268 lambda!172203))))

(declare-fun bs!854680 () Bool)

(assert (= bs!854680 (and d!1391995 b!4519008)))

(assert (=> bs!854680 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172268 lambda!172242))))

(declare-fun bs!854681 () Bool)

(assert (= bs!854681 (and d!1391995 b!4518753)))

(assert (=> bs!854681 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172268 lambda!172197))))

(assert (=> bs!854677 (= (= lt!1695572 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172268 lambda!172163))))

(declare-fun bs!854682 () Bool)

(assert (= bs!854682 (and d!1391995 d!1391537)))

(assert (=> bs!854682 (= (= lt!1695572 lt!1696015) (= lambda!172268 lambda!172155))))

(declare-fun bs!854684 () Bool)

(assert (= bs!854684 (and d!1391995 b!4518755)))

(assert (=> bs!854684 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172268 lambda!172196))))

(assert (=> bs!854678 (= (= lt!1695572 lt!1695841) (= lambda!172268 lambda!172116))))

(declare-fun bs!854687 () Bool)

(assert (= bs!854687 (and d!1391995 b!4518468)))

(assert (=> bs!854687 (= (= lt!1695572 lt!1696066) (= lambda!172268 lambda!172169))))

(declare-fun bs!854689 () Bool)

(assert (= bs!854689 (and d!1391995 b!4518455)))

(assert (=> bs!854689 (= (= lt!1695572 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172268 lambda!172162))))

(declare-fun bs!854691 () Bool)

(assert (= bs!854691 (and d!1391995 b!4518242)))

(assert (=> bs!854691 (= lambda!172268 lambda!172114)))

(declare-fun bs!854693 () Bool)

(assert (= bs!854693 (and d!1391995 b!4518824)))

(assert (=> bs!854693 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172268 lambda!172201))))

(declare-fun bs!854694 () Bool)

(assert (= bs!854694 (and d!1391995 d!1391719)))

(assert (=> bs!854694 (= (= lt!1695572 lt!1696187) (= lambda!172268 lambda!172195))))

(declare-fun bs!854695 () Bool)

(assert (= bs!854695 (and d!1391995 b!4518731)))

(assert (=> bs!854695 (= (= lt!1695572 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172268 lambda!172189))))

(declare-fun bs!854697 () Bool)

(assert (= bs!854697 (and d!1391995 b!4518470)))

(assert (=> bs!854697 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172268 lambda!172167))))

(declare-fun bs!854699 () Bool)

(assert (= bs!854699 (and d!1391995 d!1391367)))

(assert (=> bs!854699 (= (= lt!1695572 lt!1695839) (= lambda!172268 lambda!172119))))

(assert (=> bs!854681 (= (= lt!1695572 lt!1696219) (= lambda!172268 lambda!172198))))

(assert (=> bs!854687 (= (= lt!1695572 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172268 lambda!172168))))

(declare-fun bs!854702 () Bool)

(assert (= bs!854702 (and d!1391995 d!1391915)))

(assert (=> bs!854702 (= (= lt!1695572 lt!1696374) (= lambda!172268 lambda!172244))))

(declare-fun bs!854703 () Bool)

(assert (= bs!854703 (and d!1391995 d!1391685)))

(assert (=> bs!854703 (= (= lt!1695572 lt!1695841) (= lambda!172268 lambda!172188))))

(assert (=> bs!854680 (= (= lt!1695572 lt!1696376) (= lambda!172268 lambda!172243))))

(declare-fun bs!854704 () Bool)

(assert (= bs!854704 (and d!1391995 d!1391555)))

(assert (=> bs!854704 (= (= lt!1695572 lt!1696064) (= lambda!172268 lambda!172170))))

(assert (=> bs!854679 (= (= lt!1695572 lt!1696017) (= lambda!172268 lambda!172154))))

(assert (=> bs!854668 (= (= lt!1695572 lt!1695982) (= lambda!172268 lambda!172145))))

(assert (=> bs!854675 (= (= lt!1695572 lt!1696189) (= lambda!172268 lambda!172193))))

(declare-fun bs!854705 () Bool)

(assert (= bs!854705 (and d!1391995 d!1391547)))

(assert (=> bs!854705 (= (= lt!1695572 lt!1696042) (= lambda!172268 lambda!172165))))

(assert (=> d!1391995 true))

(assert (=> d!1391995 (forall!10259 (toList!4324 lt!1695572) lambda!172268)))

(declare-fun lt!1696452 () Unit!94720)

(assert (=> d!1391995 (= lt!1696452 (choose!29500 lt!1695572))))

(assert (=> d!1391995 (= (lemmaContainsAllItsOwnKeys!336 lt!1695572) lt!1696452)))

(declare-fun bs!854707 () Bool)

(assert (= bs!854707 d!1391995))

(declare-fun m!5266377 () Bool)

(assert (=> bs!854707 m!5266377))

(declare-fun m!5266379 () Bool)

(assert (=> bs!854707 m!5266379))

(assert (=> bm!314748 d!1391995))

(declare-fun d!1392009 () Bool)

(declare-fun res!1880689 () Bool)

(declare-fun e!2815522 () Bool)

(assert (=> d!1392009 (=> res!1880689 e!2815522)))

(assert (=> d!1392009 (= res!1880689 ((_ is Nil!50640) (toList!4324 lt!1695590)))))

(assert (=> d!1392009 (= (forall!10259 (toList!4324 lt!1695590) lambda!172145) e!2815522)))

(declare-fun b!4519166 () Bool)

(declare-fun e!2815523 () Bool)

(assert (=> b!4519166 (= e!2815522 e!2815523)))

(declare-fun res!1880690 () Bool)

(assert (=> b!4519166 (=> (not res!1880690) (not e!2815523))))

(assert (=> b!4519166 (= res!1880690 (dynLambda!21160 lambda!172145 (h!56491 (toList!4324 lt!1695590))))))

(declare-fun b!4519167 () Bool)

(assert (=> b!4519167 (= e!2815523 (forall!10259 (t!357726 (toList!4324 lt!1695590)) lambda!172145))))

(assert (= (and d!1392009 (not res!1880689)) b!4519166))

(assert (= (and b!4519166 res!1880690) b!4519167))

(declare-fun b_lambda!154745 () Bool)

(assert (=> (not b_lambda!154745) (not b!4519166)))

(declare-fun m!5266385 () Bool)

(assert (=> b!4519166 m!5266385))

(declare-fun m!5266387 () Bool)

(assert (=> b!4519167 m!5266387))

(assert (=> b!4518386 d!1392009))

(declare-fun d!1392013 () Bool)

(assert (=> d!1392013 (= (invariantList!1015 (toList!4324 lt!1695624)) (noDuplicatedKeys!260 (toList!4324 lt!1695624)))))

(declare-fun bs!854708 () Bool)

(assert (= bs!854708 d!1392013))

(declare-fun m!5266389 () Bool)

(assert (=> bs!854708 m!5266389))

(assert (=> d!1391343 d!1392013))

(declare-fun d!1392015 () Bool)

(declare-fun res!1880693 () Bool)

(declare-fun e!2815526 () Bool)

(assert (=> d!1392015 (=> res!1880693 e!2815526)))

(assert (=> d!1392015 (= res!1880693 ((_ is Nil!50641) (toList!4323 (+!1534 lt!1695586 lt!1695575))))))

(assert (=> d!1392015 (= (forall!10257 (toList!4323 (+!1534 lt!1695586 lt!1695575)) lambda!172028) e!2815526)))

(declare-fun b!4519170 () Bool)

(declare-fun e!2815527 () Bool)

(assert (=> b!4519170 (= e!2815526 e!2815527)))

(declare-fun res!1880694 () Bool)

(assert (=> b!4519170 (=> (not res!1880694) (not e!2815527))))

(assert (=> b!4519170 (= res!1880694 (dynLambda!21159 lambda!172028 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))))))

(declare-fun b!4519171 () Bool)

(assert (=> b!4519171 (= e!2815527 (forall!10257 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))) lambda!172028))))

(assert (= (and d!1392015 (not res!1880693)) b!4519170))

(assert (= (and b!4519170 res!1880694) b!4519171))

(declare-fun b_lambda!154749 () Bool)

(assert (=> (not b_lambda!154749) (not b!4519170)))

(declare-fun m!5266391 () Bool)

(assert (=> b!4519170 m!5266391))

(declare-fun m!5266393 () Bool)

(assert (=> b!4519171 m!5266393))

(assert (=> d!1391343 d!1392015))

(declare-fun d!1392017 () Bool)

(declare-fun res!1880695 () Bool)

(declare-fun e!2815529 () Bool)

(assert (=> d!1392017 (=> res!1880695 e!2815529)))

(declare-fun e!2815528 () Bool)

(assert (=> d!1392017 (= res!1880695 e!2815528)))

(declare-fun res!1880697 () Bool)

(assert (=> d!1392017 (=> (not res!1880697) (not e!2815528))))

(assert (=> d!1392017 (= res!1880697 ((_ is Cons!50641) (t!357727 (toList!4323 lt!1695586))))))

(assert (=> d!1392017 (= (containsKeyBiggerList!138 (t!357727 (toList!4323 lt!1695586)) key!3287) e!2815529)))

(declare-fun b!4519172 () Bool)

(assert (=> b!4519172 (= e!2815528 (containsKey!1774 (_2!28828 (h!56492 (t!357727 (toList!4323 lt!1695586)))) key!3287))))

(declare-fun b!4519173 () Bool)

(declare-fun e!2815530 () Bool)

(assert (=> b!4519173 (= e!2815529 e!2815530)))

(declare-fun res!1880696 () Bool)

(assert (=> b!4519173 (=> (not res!1880696) (not e!2815530))))

(assert (=> b!4519173 (= res!1880696 ((_ is Cons!50641) (t!357727 (toList!4323 lt!1695586))))))

(declare-fun b!4519174 () Bool)

(assert (=> b!4519174 (= e!2815530 (containsKeyBiggerList!138 (t!357727 (t!357727 (toList!4323 lt!1695586))) key!3287))))

(assert (= (and d!1392017 res!1880697) b!4519172))

(assert (= (and d!1392017 (not res!1880695)) b!4519173))

(assert (= (and b!4519173 res!1880696) b!4519174))

(declare-fun m!5266401 () Bool)

(assert (=> b!4519172 m!5266401))

(declare-fun m!5266403 () Bool)

(assert (=> b!4519174 m!5266403))

(assert (=> b!4518365 d!1392017))

(assert (=> b!4518344 d!1391469))

(declare-fun d!1392023 () Bool)

(declare-fun lt!1696455 () Bool)

(assert (=> d!1392023 (= lt!1696455 (select (content!8352 (toList!4323 lm!1477)) (h!56492 (toList!4323 lm!1477))))))

(declare-fun e!2815534 () Bool)

(assert (=> d!1392023 (= lt!1696455 e!2815534)))

(declare-fun res!1880698 () Bool)

(assert (=> d!1392023 (=> (not res!1880698) (not e!2815534))))

(assert (=> d!1392023 (= res!1880698 ((_ is Cons!50641) (toList!4323 lm!1477)))))

(assert (=> d!1392023 (= (contains!13363 (toList!4323 lm!1477) (h!56492 (toList!4323 lm!1477))) lt!1696455)))

(declare-fun b!4519179 () Bool)

(declare-fun e!2815533 () Bool)

(assert (=> b!4519179 (= e!2815534 e!2815533)))

(declare-fun res!1880699 () Bool)

(assert (=> b!4519179 (=> res!1880699 e!2815533)))

(assert (=> b!4519179 (= res!1880699 (= (h!56492 (toList!4323 lm!1477)) (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4519180 () Bool)

(assert (=> b!4519180 (= e!2815533 (contains!13363 (t!357727 (toList!4323 lm!1477)) (h!56492 (toList!4323 lm!1477))))))

(assert (= (and d!1392023 res!1880698) b!4519179))

(assert (= (and b!4519179 (not res!1880699)) b!4519180))

(assert (=> d!1392023 m!5264747))

(declare-fun m!5266407 () Bool)

(assert (=> d!1392023 m!5266407))

(declare-fun m!5266409 () Bool)

(assert (=> b!4519180 m!5266409))

(assert (=> b!4518401 d!1392023))

(declare-fun d!1392027 () Bool)

(declare-fun e!2815537 () Bool)

(assert (=> d!1392027 e!2815537))

(declare-fun res!1880702 () Bool)

(assert (=> d!1392027 (=> res!1880702 e!2815537)))

(declare-fun lt!1696457 () Bool)

(assert (=> d!1392027 (= res!1880702 (not lt!1696457))))

(declare-fun lt!1696458 () Bool)

(assert (=> d!1392027 (= lt!1696457 lt!1696458)))

(declare-fun lt!1696456 () Unit!94720)

(declare-fun e!2815538 () Unit!94720)

(assert (=> d!1392027 (= lt!1696456 e!2815538)))

(declare-fun c!771195 () Bool)

(assert (=> d!1392027 (= c!771195 lt!1696458)))

(assert (=> d!1392027 (= lt!1696458 (containsKey!1777 (toList!4323 lt!1695901) (_1!28828 lt!1695594)))))

(assert (=> d!1392027 (= (contains!13362 lt!1695901 (_1!28828 lt!1695594)) lt!1696457)))

(declare-fun b!4519183 () Bool)

(declare-fun lt!1696459 () Unit!94720)

(assert (=> b!4519183 (= e!2815538 lt!1696459)))

(assert (=> b!4519183 (= lt!1696459 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lt!1695901) (_1!28828 lt!1695594)))))

(assert (=> b!4519183 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695901) (_1!28828 lt!1695594)))))

(declare-fun b!4519184 () Bool)

(declare-fun Unit!94956 () Unit!94720)

(assert (=> b!4519184 (= e!2815538 Unit!94956)))

(declare-fun b!4519185 () Bool)

(assert (=> b!4519185 (= e!2815537 (isDefined!8395 (getValueByKey!1086 (toList!4323 lt!1695901) (_1!28828 lt!1695594))))))

(assert (= (and d!1392027 c!771195) b!4519183))

(assert (= (and d!1392027 (not c!771195)) b!4519184))

(assert (= (and d!1392027 (not res!1880702)) b!4519185))

(declare-fun m!5266413 () Bool)

(assert (=> d!1392027 m!5266413))

(declare-fun m!5266417 () Bool)

(assert (=> b!4519183 m!5266417))

(assert (=> b!4519183 m!5264649))

(assert (=> b!4519183 m!5264649))

(declare-fun m!5266421 () Bool)

(assert (=> b!4519183 m!5266421))

(assert (=> b!4519185 m!5264649))

(assert (=> b!4519185 m!5264649))

(assert (=> b!4519185 m!5266421))

(assert (=> d!1391441 d!1392027))

(declare-fun d!1392033 () Bool)

(declare-fun c!771199 () Bool)

(assert (=> d!1392033 (= c!771199 (and ((_ is Cons!50641) lt!1695903) (= (_1!28828 (h!56492 lt!1695903)) (_1!28828 lt!1695594))))))

(declare-fun e!2815545 () Option!11106)

(assert (=> d!1392033 (= (getValueByKey!1086 lt!1695903 (_1!28828 lt!1695594)) e!2815545)))

(declare-fun b!4519198 () Bool)

(declare-fun e!2815546 () Option!11106)

(assert (=> b!4519198 (= e!2815545 e!2815546)))

(declare-fun c!771200 () Bool)

(assert (=> b!4519198 (= c!771200 (and ((_ is Cons!50641) lt!1695903) (not (= (_1!28828 (h!56492 lt!1695903)) (_1!28828 lt!1695594)))))))

(declare-fun b!4519199 () Bool)

(assert (=> b!4519199 (= e!2815546 (getValueByKey!1086 (t!357727 lt!1695903) (_1!28828 lt!1695594)))))

(declare-fun b!4519200 () Bool)

(assert (=> b!4519200 (= e!2815546 None!11105)))

(declare-fun b!4519197 () Bool)

(assert (=> b!4519197 (= e!2815545 (Some!11105 (_2!28828 (h!56492 lt!1695903))))))

(assert (= (and d!1392033 c!771199) b!4519197))

(assert (= (and d!1392033 (not c!771199)) b!4519198))

(assert (= (and b!4519198 c!771200) b!4519199))

(assert (= (and b!4519198 (not c!771200)) b!4519200))

(declare-fun m!5266423 () Bool)

(assert (=> b!4519199 m!5266423))

(assert (=> d!1391441 d!1392033))

(declare-fun d!1392035 () Bool)

(assert (=> d!1392035 (= (getValueByKey!1086 lt!1695903 (_1!28828 lt!1695594)) (Some!11105 (_2!28828 lt!1695594)))))

(declare-fun lt!1696467 () Unit!94720)

(assert (=> d!1392035 (= lt!1696467 (choose!29502 lt!1695903 (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(declare-fun e!2815547 () Bool)

(assert (=> d!1392035 e!2815547))

(declare-fun res!1880708 () Bool)

(assert (=> d!1392035 (=> (not res!1880708) (not e!2815547))))

(assert (=> d!1392035 (= res!1880708 (isStrictlySorted!429 lt!1695903))))

(assert (=> d!1392035 (= (lemmaContainsTupThenGetReturnValue!673 lt!1695903 (_1!28828 lt!1695594) (_2!28828 lt!1695594)) lt!1696467)))

(declare-fun b!4519201 () Bool)

(declare-fun res!1880709 () Bool)

(assert (=> b!4519201 (=> (not res!1880709) (not e!2815547))))

(assert (=> b!4519201 (= res!1880709 (containsKey!1777 lt!1695903 (_1!28828 lt!1695594)))))

(declare-fun b!4519202 () Bool)

(assert (=> b!4519202 (= e!2815547 (contains!13363 lt!1695903 (tuple2!51069 (_1!28828 lt!1695594) (_2!28828 lt!1695594))))))

(assert (= (and d!1392035 res!1880708) b!4519201))

(assert (= (and b!4519201 res!1880709) b!4519202))

(assert (=> d!1392035 m!5264643))

(declare-fun m!5266425 () Bool)

(assert (=> d!1392035 m!5266425))

(declare-fun m!5266427 () Bool)

(assert (=> d!1392035 m!5266427))

(declare-fun m!5266429 () Bool)

(assert (=> b!4519201 m!5266429))

(declare-fun m!5266431 () Bool)

(assert (=> b!4519202 m!5266431))

(assert (=> d!1391441 d!1392035))

(declare-fun b!4519204 () Bool)

(declare-fun e!2815552 () List!50765)

(declare-fun call!314826 () List!50765)

(assert (=> b!4519204 (= e!2815552 call!314826)))

(declare-fun bm!314821 () Bool)

(declare-fun call!314827 () List!50765)

(assert (=> bm!314821 (= call!314827 call!314826)))

(declare-fun b!4519205 () Bool)

(declare-fun e!2815549 () List!50765)

(assert (=> b!4519205 (= e!2815549 (insertStrictlySorted!405 (t!357727 (toList!4323 lm!1477)) (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))

(declare-fun b!4519206 () Bool)

(declare-fun res!1880711 () Bool)

(declare-fun e!2815550 () Bool)

(assert (=> b!4519206 (=> (not res!1880711) (not e!2815550))))

(declare-fun lt!1696468 () List!50765)

(assert (=> b!4519206 (= res!1880711 (containsKey!1777 lt!1696468 (_1!28828 lt!1695594)))))

(declare-fun b!4519207 () Bool)

(declare-fun c!771203 () Bool)

(assert (=> b!4519207 (= c!771203 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (bvsgt (_1!28828 (h!56492 (toList!4323 lm!1477))) (_1!28828 lt!1695594))))))

(declare-fun e!2815551 () List!50765)

(declare-fun e!2815548 () List!50765)

(assert (=> b!4519207 (= e!2815551 e!2815548)))

(declare-fun b!4519208 () Bool)

(assert (=> b!4519208 (= e!2815552 e!2815551)))

(declare-fun c!771202 () Bool)

(assert (=> b!4519208 (= c!771202 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (= (_1!28828 (h!56492 (toList!4323 lm!1477))) (_1!28828 lt!1695594))))))

(declare-fun d!1392037 () Bool)

(assert (=> d!1392037 e!2815550))

(declare-fun res!1880710 () Bool)

(assert (=> d!1392037 (=> (not res!1880710) (not e!2815550))))

(assert (=> d!1392037 (= res!1880710 (isStrictlySorted!429 lt!1696468))))

(assert (=> d!1392037 (= lt!1696468 e!2815552)))

(declare-fun c!771201 () Bool)

(assert (=> d!1392037 (= c!771201 (and ((_ is Cons!50641) (toList!4323 lm!1477)) (bvslt (_1!28828 (h!56492 (toList!4323 lm!1477))) (_1!28828 lt!1695594))))))

(assert (=> d!1392037 (isStrictlySorted!429 (toList!4323 lm!1477))))

(assert (=> d!1392037 (= (insertStrictlySorted!405 (toList!4323 lm!1477) (_1!28828 lt!1695594) (_2!28828 lt!1695594)) lt!1696468)))

(declare-fun b!4519203 () Bool)

(declare-fun call!314828 () List!50765)

(assert (=> b!4519203 (= e!2815548 call!314828)))

(declare-fun bm!314822 () Bool)

(assert (=> bm!314822 (= call!314826 ($colon$colon!932 e!2815549 (ite c!771201 (h!56492 (toList!4323 lm!1477)) (tuple2!51069 (_1!28828 lt!1695594) (_2!28828 lt!1695594)))))))

(declare-fun c!771204 () Bool)

(assert (=> bm!314822 (= c!771204 c!771201)))

(declare-fun b!4519209 () Bool)

(assert (=> b!4519209 (= e!2815550 (contains!13363 lt!1696468 (tuple2!51069 (_1!28828 lt!1695594) (_2!28828 lt!1695594))))))

(declare-fun b!4519210 () Bool)

(assert (=> b!4519210 (= e!2815551 call!314827)))

(declare-fun bm!314823 () Bool)

(assert (=> bm!314823 (= call!314828 call!314827)))

(declare-fun b!4519211 () Bool)

(assert (=> b!4519211 (= e!2815549 (ite c!771202 (t!357727 (toList!4323 lm!1477)) (ite c!771203 (Cons!50641 (h!56492 (toList!4323 lm!1477)) (t!357727 (toList!4323 lm!1477))) Nil!50641)))))

(declare-fun b!4519212 () Bool)

(assert (=> b!4519212 (= e!2815548 call!314828)))

(assert (= (and d!1392037 c!771201) b!4519204))

(assert (= (and d!1392037 (not c!771201)) b!4519208))

(assert (= (and b!4519208 c!771202) b!4519210))

(assert (= (and b!4519208 (not c!771202)) b!4519207))

(assert (= (and b!4519207 c!771203) b!4519212))

(assert (= (and b!4519207 (not c!771203)) b!4519203))

(assert (= (or b!4519212 b!4519203) bm!314823))

(assert (= (or b!4519210 bm!314823) bm!314821))

(assert (= (or b!4519204 bm!314821) bm!314822))

(assert (= (and bm!314822 c!771204) b!4519205))

(assert (= (and bm!314822 (not c!771204)) b!4519211))

(assert (= (and d!1392037 res!1880710) b!4519206))

(assert (= (and b!4519206 res!1880711) b!4519209))

(declare-fun m!5266433 () Bool)

(assert (=> b!4519205 m!5266433))

(declare-fun m!5266435 () Bool)

(assert (=> bm!314822 m!5266435))

(declare-fun m!5266437 () Bool)

(assert (=> b!4519206 m!5266437))

(declare-fun m!5266439 () Bool)

(assert (=> b!4519209 m!5266439))

(declare-fun m!5266441 () Bool)

(assert (=> d!1392037 m!5266441))

(assert (=> d!1392037 m!5264741))

(assert (=> d!1391441 d!1392037))

(declare-fun d!1392039 () Bool)

(assert (=> d!1392039 (= (head!9409 (toList!4323 lm!1477)) (h!56492 (toList!4323 lm!1477)))))

(assert (=> d!1391341 d!1392039))

(declare-fun d!1392041 () Bool)

(declare-fun res!1880712 () Bool)

(declare-fun e!2815553 () Bool)

(assert (=> d!1392041 (=> res!1880712 e!2815553)))

(assert (=> d!1392041 (= res!1880712 ((_ is Nil!50640) (ite c!770966 (toList!4324 lt!1695572) (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> d!1392041 (= (forall!10259 (ite c!770966 (toList!4324 lt!1695572) (t!357726 (_2!28828 lt!1695575))) (ite c!770966 lambda!172114 lambda!172116)) e!2815553)))

(declare-fun b!4519213 () Bool)

(declare-fun e!2815554 () Bool)

(assert (=> b!4519213 (= e!2815553 e!2815554)))

(declare-fun res!1880713 () Bool)

(assert (=> b!4519213 (=> (not res!1880713) (not e!2815554))))

(assert (=> b!4519213 (= res!1880713 (dynLambda!21160 (ite c!770966 lambda!172114 lambda!172116) (h!56491 (ite c!770966 (toList!4324 lt!1695572) (t!357726 (_2!28828 lt!1695575))))))))

(declare-fun b!4519214 () Bool)

(assert (=> b!4519214 (= e!2815554 (forall!10259 (t!357726 (ite c!770966 (toList!4324 lt!1695572) (t!357726 (_2!28828 lt!1695575)))) (ite c!770966 lambda!172114 lambda!172116)))))

(assert (= (and d!1392041 (not res!1880712)) b!4519213))

(assert (= (and b!4519213 res!1880713) b!4519214))

(declare-fun b_lambda!154753 () Bool)

(assert (=> (not b_lambda!154753) (not b!4519213)))

(declare-fun m!5266443 () Bool)

(assert (=> b!4519213 m!5266443))

(declare-fun m!5266445 () Bool)

(assert (=> b!4519214 m!5266445))

(assert (=> bm!314746 d!1392041))

(declare-fun d!1392043 () Bool)

(declare-fun res!1880714 () Bool)

(declare-fun e!2815555 () Bool)

(assert (=> d!1392043 (=> res!1880714 e!2815555)))

(assert (=> d!1392043 (= res!1880714 ((_ is Nil!50640) (_2!28828 lt!1695575)))))

(assert (=> d!1392043 (= (forall!10259 (_2!28828 lt!1695575) lambda!172145) e!2815555)))

(declare-fun b!4519215 () Bool)

(declare-fun e!2815556 () Bool)

(assert (=> b!4519215 (= e!2815555 e!2815556)))

(declare-fun res!1880715 () Bool)

(assert (=> b!4519215 (=> (not res!1880715) (not e!2815556))))

(assert (=> b!4519215 (= res!1880715 (dynLambda!21160 lambda!172145 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun b!4519216 () Bool)

(assert (=> b!4519216 (= e!2815556 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172145))))

(assert (= (and d!1392043 (not res!1880714)) b!4519215))

(assert (= (and b!4519215 res!1880715) b!4519216))

(declare-fun b_lambda!154755 () Bool)

(assert (=> (not b_lambda!154755) (not b!4519215)))

(declare-fun m!5266457 () Bool)

(assert (=> b!4519215 m!5266457))

(declare-fun m!5266463 () Bool)

(assert (=> b!4519216 m!5266463))

(assert (=> b!4518382 d!1392043))

(declare-fun bs!854739 () Bool)

(declare-fun b!4519219 () Bool)

(assert (= bs!854739 (and b!4519219 d!1391499)))

(declare-fun lambda!172275 () Int)

(assert (=> bs!854739 (not (= lambda!172275 lambda!172142))))

(declare-fun bs!854740 () Bool)

(assert (= bs!854740 (and b!4519219 d!1391731)))

(assert (=> bs!854740 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696217) (= lambda!172275 lambda!172199))))

(declare-fun bs!854741 () Bool)

(assert (= bs!854741 (and b!4519219 b!4518382)))

(assert (=> bs!854741 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172275 lambda!172144))))

(declare-fun bs!854742 () Bool)

(assert (= bs!854742 (and b!4519219 d!1391513)))

(assert (=> bs!854742 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695980) (= lambda!172275 lambda!172146))))

(declare-fun bs!854743 () Bool)

(assert (= bs!854743 (and b!4519219 b!4518427)))

(assert (=> bs!854743 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172275 lambda!172152))))

(declare-fun bs!854744 () Bool)

(assert (= bs!854744 (and b!4519219 b!4519010)))

(assert (=> bs!854744 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172275 lambda!172240))))

(declare-fun bs!854745 () Bool)

(assert (= bs!854745 (and b!4519219 d!1391765)))

(assert (=> bs!854745 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696247) (= lambda!172275 lambda!172205))))

(declare-fun bs!854746 () Bool)

(assert (= bs!854746 (and b!4519219 b!4518822)))

(assert (=> bs!854746 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172275 lambda!172202))))

(declare-fun bs!854747 () Bool)

(assert (= bs!854747 (and b!4519219 b!4518729)))

(assert (=> bs!854747 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172275 lambda!172190))))

(declare-fun bs!854748 () Bool)

(assert (= bs!854748 (and b!4519219 b!4518384)))

(assert (=> bs!854748 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172275 lambda!172143))))

(declare-fun bs!854749 () Bool)

(assert (= bs!854749 (and b!4519219 b!4518453)))

(assert (=> bs!854749 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696044) (= lambda!172275 lambda!172164))))

(declare-fun bs!854750 () Bool)

(assert (= bs!854750 (and b!4519219 b!4518240)))

(assert (=> bs!854750 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172275 lambda!172115))))

(declare-fun bs!854751 () Bool)

(assert (= bs!854751 (and b!4519219 b!4518425)))

(assert (=> bs!854751 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172275 lambda!172153))))

(assert (=> bs!854746 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696249) (= lambda!172275 lambda!172203))))

(declare-fun bs!854752 () Bool)

(assert (= bs!854752 (and b!4519219 b!4519008)))

(assert (=> bs!854752 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172275 lambda!172242))))

(declare-fun bs!854753 () Bool)

(assert (= bs!854753 (and b!4519219 b!4518753)))

(assert (=> bs!854753 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172275 lambda!172197))))

(assert (=> bs!854749 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172275 lambda!172163))))

(declare-fun bs!854754 () Bool)

(assert (= bs!854754 (and b!4519219 d!1391537)))

(assert (=> bs!854754 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696015) (= lambda!172275 lambda!172155))))

(declare-fun bs!854755 () Bool)

(assert (= bs!854755 (and b!4519219 b!4518755)))

(assert (=> bs!854755 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172275 lambda!172196))))

(assert (=> bs!854750 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172275 lambda!172116))))

(declare-fun bs!854756 () Bool)

(assert (= bs!854756 (and b!4519219 b!4518468)))

(assert (=> bs!854756 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696066) (= lambda!172275 lambda!172169))))

(declare-fun bs!854757 () Bool)

(assert (= bs!854757 (and b!4519219 b!4518455)))

(assert (=> bs!854757 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172275 lambda!172162))))

(declare-fun bs!854758 () Bool)

(assert (= bs!854758 (and b!4519219 b!4518242)))

(assert (=> bs!854758 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172275 lambda!172114))))

(declare-fun bs!854759 () Bool)

(assert (= bs!854759 (and b!4519219 b!4518824)))

(assert (=> bs!854759 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172275 lambda!172201))))

(declare-fun bs!854760 () Bool)

(assert (= bs!854760 (and b!4519219 d!1391995)))

(assert (=> bs!854760 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172275 lambda!172268))))

(declare-fun bs!854761 () Bool)

(assert (= bs!854761 (and b!4519219 d!1391627)))

(assert (=> bs!854761 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172275 lambda!172178))))

(declare-fun bs!854762 () Bool)

(assert (= bs!854762 (and b!4519219 d!1391719)))

(assert (=> bs!854762 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696187) (= lambda!172275 lambda!172195))))

(declare-fun bs!854763 () Bool)

(assert (= bs!854763 (and b!4519219 b!4518731)))

(assert (=> bs!854763 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172275 lambda!172189))))

(declare-fun bs!854764 () Bool)

(assert (= bs!854764 (and b!4519219 b!4518470)))

(assert (=> bs!854764 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172275 lambda!172167))))

(declare-fun bs!854765 () Bool)

(assert (= bs!854765 (and b!4519219 d!1391367)))

(assert (=> bs!854765 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695839) (= lambda!172275 lambda!172119))))

(assert (=> bs!854753 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696219) (= lambda!172275 lambda!172198))))

(assert (=> bs!854756 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172275 lambda!172168))))

(declare-fun bs!854766 () Bool)

(assert (= bs!854766 (and b!4519219 d!1391915)))

(assert (=> bs!854766 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696374) (= lambda!172275 lambda!172244))))

(declare-fun bs!854767 () Bool)

(assert (= bs!854767 (and b!4519219 d!1391685)))

(assert (=> bs!854767 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172275 lambda!172188))))

(assert (=> bs!854752 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696376) (= lambda!172275 lambda!172243))))

(declare-fun bs!854768 () Bool)

(assert (= bs!854768 (and b!4519219 d!1391555)))

(assert (=> bs!854768 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696064) (= lambda!172275 lambda!172170))))

(assert (=> bs!854751 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696017) (= lambda!172275 lambda!172154))))

(assert (=> bs!854741 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695982) (= lambda!172275 lambda!172145))))

(assert (=> bs!854747 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696189) (= lambda!172275 lambda!172193))))

(declare-fun bs!854769 () Bool)

(assert (= bs!854769 (and b!4519219 d!1391547)))

(assert (=> bs!854769 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696042) (= lambda!172275 lambda!172165))))

(assert (=> b!4519219 true))

(declare-fun bs!854770 () Bool)

(declare-fun b!4519217 () Bool)

(assert (= bs!854770 (and b!4519217 d!1391499)))

(declare-fun lambda!172276 () Int)

(assert (=> bs!854770 (not (= lambda!172276 lambda!172142))))

(declare-fun bs!854771 () Bool)

(assert (= bs!854771 (and b!4519217 d!1391731)))

(assert (=> bs!854771 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696217) (= lambda!172276 lambda!172199))))

(declare-fun bs!854772 () Bool)

(assert (= bs!854772 (and b!4519217 b!4518382)))

(assert (=> bs!854772 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172276 lambda!172144))))

(declare-fun bs!854773 () Bool)

(assert (= bs!854773 (and b!4519217 d!1391513)))

(assert (=> bs!854773 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695980) (= lambda!172276 lambda!172146))))

(declare-fun bs!854774 () Bool)

(assert (= bs!854774 (and b!4519217 b!4518427)))

(assert (=> bs!854774 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172276 lambda!172152))))

(declare-fun bs!854775 () Bool)

(assert (= bs!854775 (and b!4519217 b!4519010)))

(assert (=> bs!854775 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172276 lambda!172240))))

(declare-fun bs!854776 () Bool)

(assert (= bs!854776 (and b!4519217 d!1391765)))

(assert (=> bs!854776 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696247) (= lambda!172276 lambda!172205))))

(declare-fun bs!854777 () Bool)

(assert (= bs!854777 (and b!4519217 b!4518822)))

(assert (=> bs!854777 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172276 lambda!172202))))

(declare-fun bs!854778 () Bool)

(assert (= bs!854778 (and b!4519217 b!4518729)))

(assert (=> bs!854778 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172276 lambda!172190))))

(declare-fun bs!854779 () Bool)

(assert (= bs!854779 (and b!4519217 b!4518384)))

(assert (=> bs!854779 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172276 lambda!172143))))

(declare-fun bs!854780 () Bool)

(assert (= bs!854780 (and b!4519217 b!4518453)))

(assert (=> bs!854780 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696044) (= lambda!172276 lambda!172164))))

(declare-fun bs!854781 () Bool)

(assert (= bs!854781 (and b!4519217 b!4518240)))

(assert (=> bs!854781 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172276 lambda!172115))))

(declare-fun bs!854782 () Bool)

(assert (= bs!854782 (and b!4519217 b!4518425)))

(assert (=> bs!854782 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172276 lambda!172153))))

(assert (=> bs!854777 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696249) (= lambda!172276 lambda!172203))))

(declare-fun bs!854783 () Bool)

(assert (= bs!854783 (and b!4519217 b!4519008)))

(assert (=> bs!854783 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172276 lambda!172242))))

(declare-fun bs!854784 () Bool)

(assert (= bs!854784 (and b!4519217 b!4518753)))

(assert (=> bs!854784 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172276 lambda!172197))))

(assert (=> bs!854780 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172276 lambda!172163))))

(declare-fun bs!854785 () Bool)

(assert (= bs!854785 (and b!4519217 d!1391537)))

(assert (=> bs!854785 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696015) (= lambda!172276 lambda!172155))))

(declare-fun bs!854786 () Bool)

(assert (= bs!854786 (and b!4519217 b!4518755)))

(assert (=> bs!854786 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172276 lambda!172196))))

(assert (=> bs!854781 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172276 lambda!172116))))

(declare-fun bs!854787 () Bool)

(assert (= bs!854787 (and b!4519217 b!4518468)))

(assert (=> bs!854787 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696066) (= lambda!172276 lambda!172169))))

(declare-fun bs!854788 () Bool)

(assert (= bs!854788 (and b!4519217 b!4518455)))

(assert (=> bs!854788 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172276 lambda!172162))))

(declare-fun bs!854789 () Bool)

(assert (= bs!854789 (and b!4519217 b!4518242)))

(assert (=> bs!854789 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172276 lambda!172114))))

(declare-fun bs!854790 () Bool)

(assert (= bs!854790 (and b!4519217 b!4518824)))

(assert (=> bs!854790 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172276 lambda!172201))))

(declare-fun bs!854791 () Bool)

(assert (= bs!854791 (and b!4519217 d!1391995)))

(assert (=> bs!854791 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695572) (= lambda!172276 lambda!172268))))

(declare-fun bs!854792 () Bool)

(assert (= bs!854792 (and b!4519217 d!1391627)))

(assert (=> bs!854792 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695590) (= lambda!172276 lambda!172178))))

(declare-fun bs!854793 () Bool)

(assert (= bs!854793 (and b!4519217 d!1391719)))

(assert (=> bs!854793 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696187) (= lambda!172276 lambda!172195))))

(declare-fun bs!854794 () Bool)

(assert (= bs!854794 (and b!4519217 b!4518731)))

(assert (=> bs!854794 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172276 lambda!172189))))

(declare-fun bs!854795 () Bool)

(assert (= bs!854795 (and b!4519217 b!4518470)))

(assert (=> bs!854795 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172276 lambda!172167))))

(declare-fun bs!854796 () Bool)

(assert (= bs!854796 (and b!4519217 d!1391367)))

(assert (=> bs!854796 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695839) (= lambda!172276 lambda!172119))))

(assert (=> bs!854784 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696219) (= lambda!172276 lambda!172198))))

(assert (=> bs!854787 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172276 lambda!172168))))

(declare-fun bs!854797 () Bool)

(assert (= bs!854797 (and b!4519217 d!1391915)))

(assert (=> bs!854797 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696374) (= lambda!172276 lambda!172244))))

(declare-fun bs!854798 () Bool)

(assert (= bs!854798 (and b!4519217 d!1391685)))

(assert (=> bs!854798 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695841) (= lambda!172276 lambda!172188))))

(assert (=> bs!854783 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696376) (= lambda!172276 lambda!172243))))

(declare-fun bs!854799 () Bool)

(assert (= bs!854799 (and b!4519217 d!1391555)))

(assert (=> bs!854799 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696064) (= lambda!172276 lambda!172170))))

(assert (=> bs!854782 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696017) (= lambda!172276 lambda!172154))))

(declare-fun bs!854800 () Bool)

(assert (= bs!854800 (and b!4519217 b!4519219)))

(assert (=> bs!854800 (= lambda!172276 lambda!172275)))

(assert (=> bs!854772 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1695982) (= lambda!172276 lambda!172145))))

(assert (=> bs!854778 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696189) (= lambda!172276 lambda!172193))))

(declare-fun bs!854801 () Bool)

(assert (= bs!854801 (and b!4519217 d!1391547)))

(assert (=> bs!854801 (= (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696042) (= lambda!172276 lambda!172165))))

(assert (=> b!4519217 true))

(declare-fun lambda!172277 () Int)

(assert (=> bs!854770 (not (= lambda!172277 lambda!172142))))

(declare-fun lt!1696473 () ListMap!3585)

(assert (=> bs!854771 (= (= lt!1696473 lt!1696217) (= lambda!172277 lambda!172199))))

(assert (=> bs!854772 (= (= lt!1696473 lt!1695590) (= lambda!172277 lambda!172144))))

(assert (=> bs!854773 (= (= lt!1696473 lt!1695980) (= lambda!172277 lambda!172146))))

(assert (=> bs!854774 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172277 lambda!172152))))

(assert (=> bs!854775 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172277 lambda!172240))))

(assert (=> bs!854776 (= (= lt!1696473 lt!1696247) (= lambda!172277 lambda!172205))))

(assert (=> bs!854777 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172277 lambda!172202))))

(assert (=> bs!854778 (= (= lt!1696473 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172277 lambda!172190))))

(assert (=> bs!854779 (= (= lt!1696473 lt!1695590) (= lambda!172277 lambda!172143))))

(assert (=> bs!854781 (= (= lt!1696473 lt!1695572) (= lambda!172277 lambda!172115))))

(assert (=> bs!854782 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172277 lambda!172153))))

(assert (=> bs!854777 (= (= lt!1696473 lt!1696249) (= lambda!172277 lambda!172203))))

(assert (=> bs!854783 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172277 lambda!172242))))

(assert (=> bs!854784 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172277 lambda!172197))))

(assert (=> bs!854780 (= (= lt!1696473 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172277 lambda!172163))))

(assert (=> bs!854785 (= (= lt!1696473 lt!1696015) (= lambda!172277 lambda!172155))))

(assert (=> bs!854786 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172277 lambda!172196))))

(assert (=> bs!854781 (= (= lt!1696473 lt!1695841) (= lambda!172277 lambda!172116))))

(assert (=> bs!854787 (= (= lt!1696473 lt!1696066) (= lambda!172277 lambda!172169))))

(assert (=> bs!854788 (= (= lt!1696473 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172277 lambda!172162))))

(assert (=> bs!854789 (= (= lt!1696473 lt!1695572) (= lambda!172277 lambda!172114))))

(assert (=> bs!854790 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172277 lambda!172201))))

(assert (=> bs!854791 (= (= lt!1696473 lt!1695572) (= lambda!172277 lambda!172268))))

(assert (=> bs!854792 (= (= lt!1696473 lt!1695590) (= lambda!172277 lambda!172178))))

(assert (=> bs!854793 (= (= lt!1696473 lt!1696187) (= lambda!172277 lambda!172195))))

(assert (=> bs!854794 (= (= lt!1696473 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172277 lambda!172189))))

(assert (=> bs!854795 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172277 lambda!172167))))

(assert (=> bs!854796 (= (= lt!1696473 lt!1695839) (= lambda!172277 lambda!172119))))

(assert (=> bs!854784 (= (= lt!1696473 lt!1696219) (= lambda!172277 lambda!172198))))

(assert (=> bs!854787 (= (= lt!1696473 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172277 lambda!172168))))

(assert (=> bs!854797 (= (= lt!1696473 lt!1696374) (= lambda!172277 lambda!172244))))

(assert (=> bs!854798 (= (= lt!1696473 lt!1695841) (= lambda!172277 lambda!172188))))

(assert (=> bs!854783 (= (= lt!1696473 lt!1696376) (= lambda!172277 lambda!172243))))

(assert (=> b!4519217 (= (= lt!1696473 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172277 lambda!172276))))

(assert (=> bs!854780 (= (= lt!1696473 lt!1696044) (= lambda!172277 lambda!172164))))

(assert (=> bs!854799 (= (= lt!1696473 lt!1696064) (= lambda!172277 lambda!172170))))

(assert (=> bs!854782 (= (= lt!1696473 lt!1696017) (= lambda!172277 lambda!172154))))

(assert (=> bs!854800 (= (= lt!1696473 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172277 lambda!172275))))

(assert (=> bs!854772 (= (= lt!1696473 lt!1695982) (= lambda!172277 lambda!172145))))

(assert (=> bs!854778 (= (= lt!1696473 lt!1696189) (= lambda!172277 lambda!172193))))

(assert (=> bs!854801 (= (= lt!1696473 lt!1696042) (= lambda!172277 lambda!172165))))

(assert (=> b!4519217 true))

(declare-fun bs!854802 () Bool)

(declare-fun d!1392045 () Bool)

(assert (= bs!854802 (and d!1392045 d!1391499)))

(declare-fun lambda!172278 () Int)

(assert (=> bs!854802 (not (= lambda!172278 lambda!172142))))

(declare-fun bs!854803 () Bool)

(assert (= bs!854803 (and d!1392045 d!1391731)))

(declare-fun lt!1696471 () ListMap!3585)

(assert (=> bs!854803 (= (= lt!1696471 lt!1696217) (= lambda!172278 lambda!172199))))

(declare-fun bs!854804 () Bool)

(assert (= bs!854804 (and d!1392045 b!4518382)))

(assert (=> bs!854804 (= (= lt!1696471 lt!1695590) (= lambda!172278 lambda!172144))))

(declare-fun bs!854805 () Bool)

(assert (= bs!854805 (and d!1392045 d!1391513)))

(assert (=> bs!854805 (= (= lt!1696471 lt!1695980) (= lambda!172278 lambda!172146))))

(declare-fun bs!854806 () Bool)

(assert (= bs!854806 (and d!1392045 b!4518427)))

(assert (=> bs!854806 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172278 lambda!172152))))

(declare-fun bs!854807 () Bool)

(assert (= bs!854807 (and d!1392045 b!4519010)))

(assert (=> bs!854807 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172278 lambda!172240))))

(declare-fun bs!854808 () Bool)

(assert (= bs!854808 (and d!1392045 d!1391765)))

(assert (=> bs!854808 (= (= lt!1696471 lt!1696247) (= lambda!172278 lambda!172205))))

(declare-fun bs!854809 () Bool)

(assert (= bs!854809 (and d!1392045 b!4518822)))

(assert (=> bs!854809 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172278 lambda!172202))))

(declare-fun bs!854810 () Bool)

(assert (= bs!854810 (and d!1392045 b!4518729)))

(assert (=> bs!854810 (= (= lt!1696471 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172278 lambda!172190))))

(declare-fun bs!854811 () Bool)

(assert (= bs!854811 (and d!1392045 b!4518384)))

(assert (=> bs!854811 (= (= lt!1696471 lt!1695590) (= lambda!172278 lambda!172143))))

(declare-fun bs!854812 () Bool)

(assert (= bs!854812 (and d!1392045 b!4519217)))

(assert (=> bs!854812 (= (= lt!1696471 lt!1696473) (= lambda!172278 lambda!172277))))

(declare-fun bs!854813 () Bool)

(assert (= bs!854813 (and d!1392045 b!4518240)))

(assert (=> bs!854813 (= (= lt!1696471 lt!1695572) (= lambda!172278 lambda!172115))))

(declare-fun bs!854814 () Bool)

(assert (= bs!854814 (and d!1392045 b!4518425)))

(assert (=> bs!854814 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172278 lambda!172153))))

(assert (=> bs!854809 (= (= lt!1696471 lt!1696249) (= lambda!172278 lambda!172203))))

(declare-fun bs!854815 () Bool)

(assert (= bs!854815 (and d!1392045 b!4519008)))

(assert (=> bs!854815 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172278 lambda!172242))))

(declare-fun bs!854816 () Bool)

(assert (= bs!854816 (and d!1392045 b!4518753)))

(assert (=> bs!854816 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172278 lambda!172197))))

(declare-fun bs!854817 () Bool)

(assert (= bs!854817 (and d!1392045 b!4518453)))

(assert (=> bs!854817 (= (= lt!1696471 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172278 lambda!172163))))

(declare-fun bs!854818 () Bool)

(assert (= bs!854818 (and d!1392045 d!1391537)))

(assert (=> bs!854818 (= (= lt!1696471 lt!1696015) (= lambda!172278 lambda!172155))))

(declare-fun bs!854819 () Bool)

(assert (= bs!854819 (and d!1392045 b!4518755)))

(assert (=> bs!854819 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172278 lambda!172196))))

(assert (=> bs!854813 (= (= lt!1696471 lt!1695841) (= lambda!172278 lambda!172116))))

(declare-fun bs!854820 () Bool)

(assert (= bs!854820 (and d!1392045 b!4518468)))

(assert (=> bs!854820 (= (= lt!1696471 lt!1696066) (= lambda!172278 lambda!172169))))

(declare-fun bs!854821 () Bool)

(assert (= bs!854821 (and d!1392045 b!4518455)))

(assert (=> bs!854821 (= (= lt!1696471 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172278 lambda!172162))))

(declare-fun bs!854822 () Bool)

(assert (= bs!854822 (and d!1392045 b!4518242)))

(assert (=> bs!854822 (= (= lt!1696471 lt!1695572) (= lambda!172278 lambda!172114))))

(declare-fun bs!854823 () Bool)

(assert (= bs!854823 (and d!1392045 b!4518824)))

(assert (=> bs!854823 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172278 lambda!172201))))

(declare-fun bs!854824 () Bool)

(assert (= bs!854824 (and d!1392045 d!1391995)))

(assert (=> bs!854824 (= (= lt!1696471 lt!1695572) (= lambda!172278 lambda!172268))))

(declare-fun bs!854825 () Bool)

(assert (= bs!854825 (and d!1392045 d!1391627)))

(assert (=> bs!854825 (= (= lt!1696471 lt!1695590) (= lambda!172278 lambda!172178))))

(declare-fun bs!854826 () Bool)

(assert (= bs!854826 (and d!1392045 d!1391719)))

(assert (=> bs!854826 (= (= lt!1696471 lt!1696187) (= lambda!172278 lambda!172195))))

(declare-fun bs!854827 () Bool)

(assert (= bs!854827 (and d!1392045 b!4518731)))

(assert (=> bs!854827 (= (= lt!1696471 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172278 lambda!172189))))

(declare-fun bs!854828 () Bool)

(assert (= bs!854828 (and d!1392045 b!4518470)))

(assert (=> bs!854828 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172278 lambda!172167))))

(declare-fun bs!854829 () Bool)

(assert (= bs!854829 (and d!1392045 d!1391367)))

(assert (=> bs!854829 (= (= lt!1696471 lt!1695839) (= lambda!172278 lambda!172119))))

(assert (=> bs!854816 (= (= lt!1696471 lt!1696219) (= lambda!172278 lambda!172198))))

(assert (=> bs!854820 (= (= lt!1696471 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172278 lambda!172168))))

(declare-fun bs!854830 () Bool)

(assert (= bs!854830 (and d!1392045 d!1391915)))

(assert (=> bs!854830 (= (= lt!1696471 lt!1696374) (= lambda!172278 lambda!172244))))

(declare-fun bs!854831 () Bool)

(assert (= bs!854831 (and d!1392045 d!1391685)))

(assert (=> bs!854831 (= (= lt!1696471 lt!1695841) (= lambda!172278 lambda!172188))))

(assert (=> bs!854815 (= (= lt!1696471 lt!1696376) (= lambda!172278 lambda!172243))))

(assert (=> bs!854812 (= (= lt!1696471 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172278 lambda!172276))))

(assert (=> bs!854817 (= (= lt!1696471 lt!1696044) (= lambda!172278 lambda!172164))))

(declare-fun bs!854832 () Bool)

(assert (= bs!854832 (and d!1392045 d!1391555)))

(assert (=> bs!854832 (= (= lt!1696471 lt!1696064) (= lambda!172278 lambda!172170))))

(assert (=> bs!854814 (= (= lt!1696471 lt!1696017) (= lambda!172278 lambda!172154))))

(declare-fun bs!854833 () Bool)

(assert (= bs!854833 (and d!1392045 b!4519219)))

(assert (=> bs!854833 (= (= lt!1696471 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172278 lambda!172275))))

(assert (=> bs!854804 (= (= lt!1696471 lt!1695982) (= lambda!172278 lambda!172145))))

(assert (=> bs!854810 (= (= lt!1696471 lt!1696189) (= lambda!172278 lambda!172193))))

(declare-fun bs!854834 () Bool)

(assert (= bs!854834 (and d!1392045 d!1391547)))

(assert (=> bs!854834 (= (= lt!1696471 lt!1696042) (= lambda!172278 lambda!172165))))

(assert (=> d!1392045 true))

(declare-fun e!2815557 () ListMap!3585)

(assert (=> b!4519217 (= e!2815557 lt!1696473)))

(declare-fun lt!1696488 () ListMap!3585)

(assert (=> b!4519217 (= lt!1696488 (+!1536 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> b!4519217 (= lt!1696473 (addToMapMapFromBucket!685 (t!357726 (t!357726 (_2!28828 lt!1695575))) (+!1536 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) (h!56491 (t!357726 (_2!28828 lt!1695575))))))))

(declare-fun lt!1696469 () Unit!94720)

(declare-fun call!314831 () Unit!94720)

(assert (=> b!4519217 (= lt!1696469 call!314831)))

(assert (=> b!4519217 (forall!10259 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) lambda!172276)))

(declare-fun lt!1696480 () Unit!94720)

(assert (=> b!4519217 (= lt!1696480 lt!1696469)))

(declare-fun call!314830 () Bool)

(assert (=> b!4519217 call!314830))

(declare-fun lt!1696485 () Unit!94720)

(declare-fun Unit!94975 () Unit!94720)

(assert (=> b!4519217 (= lt!1696485 Unit!94975)))

(declare-fun call!314829 () Bool)

(assert (=> b!4519217 call!314829))

(declare-fun lt!1696479 () Unit!94720)

(declare-fun Unit!94976 () Unit!94720)

(assert (=> b!4519217 (= lt!1696479 Unit!94976)))

(declare-fun lt!1696472 () Unit!94720)

(declare-fun Unit!94977 () Unit!94720)

(assert (=> b!4519217 (= lt!1696472 Unit!94977)))

(declare-fun lt!1696481 () Unit!94720)

(assert (=> b!4519217 (= lt!1696481 (forallContained!2511 (toList!4324 lt!1696488) lambda!172277 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(assert (=> b!4519217 (contains!13361 lt!1696488 (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696489 () Unit!94720)

(declare-fun Unit!94978 () Unit!94720)

(assert (=> b!4519217 (= lt!1696489 Unit!94978)))

(assert (=> b!4519217 (contains!13361 lt!1696473 (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696478 () Unit!94720)

(declare-fun Unit!94979 () Unit!94720)

(assert (=> b!4519217 (= lt!1696478 Unit!94979)))

(assert (=> b!4519217 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172277)))

(declare-fun lt!1696486 () Unit!94720)

(declare-fun Unit!94980 () Unit!94720)

(assert (=> b!4519217 (= lt!1696486 Unit!94980)))

(assert (=> b!4519217 (forall!10259 (toList!4324 lt!1696488) lambda!172277)))

(declare-fun lt!1696483 () Unit!94720)

(declare-fun Unit!94981 () Unit!94720)

(assert (=> b!4519217 (= lt!1696483 Unit!94981)))

(declare-fun lt!1696476 () Unit!94720)

(declare-fun Unit!94982 () Unit!94720)

(assert (=> b!4519217 (= lt!1696476 Unit!94982)))

(declare-fun lt!1696484 () Unit!94720)

(assert (=> b!4519217 (= lt!1696484 (addForallContainsKeyThenBeforeAdding!336 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696473 (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))) (_2!28827 (h!56491 (t!357726 (_2!28828 lt!1695575))))))))

(assert (=> b!4519217 (forall!10259 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) lambda!172277)))

(declare-fun lt!1696487 () Unit!94720)

(assert (=> b!4519217 (= lt!1696487 lt!1696484)))

(assert (=> b!4519217 (forall!10259 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) lambda!172277)))

(declare-fun lt!1696475 () Unit!94720)

(declare-fun Unit!94983 () Unit!94720)

(assert (=> b!4519217 (= lt!1696475 Unit!94983)))

(declare-fun res!1880717 () Bool)

(assert (=> b!4519217 (= res!1880717 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172277))))

(declare-fun e!2815558 () Bool)

(assert (=> b!4519217 (=> (not res!1880717) (not e!2815558))))

(assert (=> b!4519217 e!2815558))

(declare-fun lt!1696474 () Unit!94720)

(declare-fun Unit!94984 () Unit!94720)

(assert (=> b!4519217 (= lt!1696474 Unit!94984)))

(declare-fun b!4519218 () Bool)

(declare-fun e!2815559 () Bool)

(assert (=> b!4519218 (= e!2815559 (invariantList!1015 (toList!4324 lt!1696471)))))

(declare-fun bm!314824 () Bool)

(declare-fun c!771205 () Bool)

(assert (=> bm!314824 (= call!314829 (forall!10259 (ite c!771205 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (t!357726 (t!357726 (_2!28828 lt!1695575)))) (ite c!771205 lambda!172275 lambda!172277)))))

(assert (=> b!4519219 (= e!2815557 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun lt!1696477 () Unit!94720)

(assert (=> b!4519219 (= lt!1696477 call!314831)))

(assert (=> b!4519219 call!314829))

(declare-fun lt!1696482 () Unit!94720)

(assert (=> b!4519219 (= lt!1696482 lt!1696477)))

(assert (=> b!4519219 call!314830))

(declare-fun lt!1696470 () Unit!94720)

(declare-fun Unit!94985 () Unit!94720)

(assert (=> b!4519219 (= lt!1696470 Unit!94985)))

(assert (=> d!1392045 e!2815559))

(declare-fun res!1880716 () Bool)

(assert (=> d!1392045 (=> (not res!1880716) (not e!2815559))))

(assert (=> d!1392045 (= res!1880716 (forall!10259 (t!357726 (_2!28828 lt!1695575)) lambda!172278))))

(assert (=> d!1392045 (= lt!1696471 e!2815557)))

(assert (=> d!1392045 (= c!771205 ((_ is Nil!50640) (t!357726 (_2!28828 lt!1695575))))))

(assert (=> d!1392045 (noDuplicateKeys!1158 (t!357726 (_2!28828 lt!1695575)))))

(assert (=> d!1392045 (= (addToMapMapFromBucket!685 (t!357726 (_2!28828 lt!1695575)) (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) lt!1696471)))

(declare-fun b!4519220 () Bool)

(declare-fun res!1880718 () Bool)

(assert (=> b!4519220 (=> (not res!1880718) (not e!2815559))))

(assert (=> b!4519220 (= res!1880718 (forall!10259 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) lambda!172278))))

(declare-fun b!4519221 () Bool)

(assert (=> b!4519221 (= e!2815558 (forall!10259 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) lambda!172277))))

(declare-fun bm!314825 () Bool)

(assert (=> bm!314825 (= call!314830 (forall!10259 (ite c!771205 (toList!4324 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (toList!4324 lt!1696488)) (ite c!771205 lambda!172275 lambda!172277)))))

(declare-fun bm!314826 () Bool)

(assert (=> bm!314826 (= call!314831 (lemmaContainsAllItsOwnKeys!336 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))))))

(assert (= (and d!1392045 c!771205) b!4519219))

(assert (= (and d!1392045 (not c!771205)) b!4519217))

(assert (= (and b!4519217 res!1880717) b!4519221))

(assert (= (or b!4519219 b!4519217) bm!314824))

(assert (= (or b!4519219 b!4519217) bm!314825))

(assert (= (or b!4519219 b!4519217) bm!314826))

(assert (= (and d!1392045 res!1880716) b!4519220))

(assert (= (and b!4519220 res!1880718) b!4519218))

(declare-fun m!5266535 () Bool)

(assert (=> bm!314824 m!5266535))

(assert (=> bm!314826 m!5264861))

(declare-fun m!5266537 () Bool)

(assert (=> bm!314826 m!5266537))

(declare-fun m!5266539 () Bool)

(assert (=> b!4519221 m!5266539))

(declare-fun m!5266541 () Bool)

(assert (=> b!4519217 m!5266541))

(declare-fun m!5266543 () Bool)

(assert (=> b!4519217 m!5266543))

(assert (=> b!4519217 m!5266539))

(assert (=> b!4519217 m!5264861))

(assert (=> b!4519217 m!5266541))

(assert (=> b!4519217 m!5266539))

(declare-fun m!5266545 () Bool)

(assert (=> b!4519217 m!5266545))

(declare-fun m!5266547 () Bool)

(assert (=> b!4519217 m!5266547))

(declare-fun m!5266549 () Bool)

(assert (=> b!4519217 m!5266549))

(declare-fun m!5266551 () Bool)

(assert (=> b!4519217 m!5266551))

(assert (=> b!4519217 m!5264861))

(declare-fun m!5266553 () Bool)

(assert (=> b!4519217 m!5266553))

(declare-fun m!5266555 () Bool)

(assert (=> b!4519217 m!5266555))

(assert (=> b!4519217 m!5266549))

(declare-fun m!5266557 () Bool)

(assert (=> b!4519217 m!5266557))

(declare-fun m!5266559 () Bool)

(assert (=> d!1392045 m!5266559))

(assert (=> d!1392045 m!5264909))

(declare-fun m!5266561 () Bool)

(assert (=> bm!314825 m!5266561))

(declare-fun m!5266563 () Bool)

(assert (=> b!4519220 m!5266563))

(declare-fun m!5266565 () Bool)

(assert (=> b!4519218 m!5266565))

(assert (=> b!4518382 d!1392045))

(declare-fun d!1392059 () Bool)

(declare-fun res!1880735 () Bool)

(declare-fun e!2815579 () Bool)

(assert (=> d!1392059 (=> res!1880735 e!2815579)))

(assert (=> d!1392059 (= res!1880735 ((_ is Nil!50640) (toList!4324 lt!1695997)))))

(assert (=> d!1392059 (= (forall!10259 (toList!4324 lt!1695997) lambda!172145) e!2815579)))

(declare-fun b!4519250 () Bool)

(declare-fun e!2815580 () Bool)

(assert (=> b!4519250 (= e!2815579 e!2815580)))

(declare-fun res!1880736 () Bool)

(assert (=> b!4519250 (=> (not res!1880736) (not e!2815580))))

(assert (=> b!4519250 (= res!1880736 (dynLambda!21160 lambda!172145 (h!56491 (toList!4324 lt!1695997))))))

(declare-fun b!4519251 () Bool)

(assert (=> b!4519251 (= e!2815580 (forall!10259 (t!357726 (toList!4324 lt!1695997)) lambda!172145))))

(assert (= (and d!1392059 (not res!1880735)) b!4519250))

(assert (= (and b!4519250 res!1880736) b!4519251))

(declare-fun b_lambda!154761 () Bool)

(assert (=> (not b_lambda!154761) (not b!4519250)))

(declare-fun m!5266567 () Bool)

(assert (=> b!4519250 m!5266567))

(declare-fun m!5266569 () Bool)

(assert (=> b!4519251 m!5266569))

(assert (=> b!4518382 d!1392059))

(declare-fun b!4519252 () Bool)

(declare-fun e!2815586 () Bool)

(assert (=> b!4519252 (= e!2815586 (not (contains!13364 (keys!17589 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun d!1392061 () Bool)

(declare-fun e!2815583 () Bool)

(assert (=> d!1392061 e!2815583))

(declare-fun res!1880737 () Bool)

(assert (=> d!1392061 (=> res!1880737 e!2815583)))

(assert (=> d!1392061 (= res!1880737 e!2815586)))

(declare-fun res!1880739 () Bool)

(assert (=> d!1392061 (=> (not res!1880739) (not e!2815586))))

(declare-fun lt!1696524 () Bool)

(assert (=> d!1392061 (= res!1880739 (not lt!1696524))))

(declare-fun lt!1696520 () Bool)

(assert (=> d!1392061 (= lt!1696524 lt!1696520)))

(declare-fun lt!1696518 () Unit!94720)

(declare-fun e!2815584 () Unit!94720)

(assert (=> d!1392061 (= lt!1696518 e!2815584)))

(declare-fun c!771214 () Bool)

(assert (=> d!1392061 (= c!771214 lt!1696520)))

(assert (=> d!1392061 (= lt!1696520 (containsKey!1775 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1392061 (= (contains!13361 lt!1695982 (_1!28827 (h!56491 (_2!28828 lt!1695575)))) lt!1696524)))

(declare-fun b!4519253 () Bool)

(declare-fun e!2815585 () List!50766)

(assert (=> b!4519253 (= e!2815585 (keys!17589 lt!1695982))))

(declare-fun b!4519254 () Bool)

(declare-fun lt!1696522 () Unit!94720)

(assert (=> b!4519254 (= e!2815584 lt!1696522)))

(declare-fun lt!1696525 () Unit!94720)

(assert (=> b!4519254 (= lt!1696525 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> b!4519254 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696519 () Unit!94720)

(assert (=> b!4519254 (= lt!1696519 lt!1696525)))

(assert (=> b!4519254 (= lt!1696522 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun call!314834 () Bool)

(assert (=> b!4519254 call!314834))

(declare-fun b!4519255 () Bool)

(declare-fun e!2815581 () Bool)

(assert (=> b!4519255 (= e!2815583 e!2815581)))

(declare-fun res!1880738 () Bool)

(assert (=> b!4519255 (=> (not res!1880738) (not e!2815581))))

(assert (=> b!4519255 (= res!1880738 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4519256 () Bool)

(assert (=> b!4519256 (= e!2815585 (getKeysList!462 (toList!4324 lt!1695982)))))

(declare-fun b!4519257 () Bool)

(declare-fun e!2815582 () Unit!94720)

(declare-fun Unit!94986 () Unit!94720)

(assert (=> b!4519257 (= e!2815582 Unit!94986)))

(declare-fun b!4519258 () Bool)

(assert (=> b!4519258 false))

(declare-fun lt!1696521 () Unit!94720)

(declare-fun lt!1696523 () Unit!94720)

(assert (=> b!4519258 (= lt!1696521 lt!1696523)))

(assert (=> b!4519258 (containsKey!1775 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4519258 (= lt!1696523 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun Unit!94987 () Unit!94720)

(assert (=> b!4519258 (= e!2815582 Unit!94987)))

(declare-fun bm!314829 () Bool)

(assert (=> bm!314829 (= call!314834 (contains!13364 e!2815585 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun c!771212 () Bool)

(assert (=> bm!314829 (= c!771212 c!771214)))

(declare-fun b!4519259 () Bool)

(assert (=> b!4519259 (= e!2815581 (contains!13364 (keys!17589 lt!1695982) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun b!4519260 () Bool)

(assert (=> b!4519260 (= e!2815584 e!2815582)))

(declare-fun c!771213 () Bool)

(assert (=> b!4519260 (= c!771213 call!314834)))

(assert (= (and d!1392061 c!771214) b!4519254))

(assert (= (and d!1392061 (not c!771214)) b!4519260))

(assert (= (and b!4519260 c!771213) b!4519258))

(assert (= (and b!4519260 (not c!771213)) b!4519257))

(assert (= (or b!4519254 b!4519260) bm!314829))

(assert (= (and bm!314829 c!771212) b!4519256))

(assert (= (and bm!314829 (not c!771212)) b!4519253))

(assert (= (and d!1392061 res!1880739) b!4519252))

(assert (= (and d!1392061 (not res!1880737)) b!4519255))

(assert (= (and b!4519255 res!1880738) b!4519259))

(declare-fun m!5266571 () Bool)

(assert (=> b!4519253 m!5266571))

(declare-fun m!5266573 () Bool)

(assert (=> b!4519254 m!5266573))

(declare-fun m!5266575 () Bool)

(assert (=> b!4519254 m!5266575))

(assert (=> b!4519254 m!5266575))

(declare-fun m!5266577 () Bool)

(assert (=> b!4519254 m!5266577))

(declare-fun m!5266579 () Bool)

(assert (=> b!4519254 m!5266579))

(declare-fun m!5266581 () Bool)

(assert (=> b!4519256 m!5266581))

(assert (=> b!4519255 m!5266575))

(assert (=> b!4519255 m!5266575))

(assert (=> b!4519255 m!5266577))

(declare-fun m!5266583 () Bool)

(assert (=> b!4519258 m!5266583))

(declare-fun m!5266585 () Bool)

(assert (=> b!4519258 m!5266585))

(declare-fun m!5266587 () Bool)

(assert (=> bm!314829 m!5266587))

(assert (=> b!4519259 m!5266571))

(assert (=> b!4519259 m!5266571))

(declare-fun m!5266589 () Bool)

(assert (=> b!4519259 m!5266589))

(assert (=> d!1392061 m!5266583))

(assert (=> b!4519252 m!5266571))

(assert (=> b!4519252 m!5266571))

(assert (=> b!4519252 m!5266589))

(assert (=> b!4518382 d!1392061))

(declare-fun d!1392063 () Bool)

(declare-fun e!2815587 () Bool)

(assert (=> d!1392063 e!2815587))

(declare-fun res!1880740 () Bool)

(assert (=> d!1392063 (=> (not res!1880740) (not e!2815587))))

(declare-fun lt!1696526 () ListMap!3585)

(assert (=> d!1392063 (= res!1880740 (contains!13361 lt!1696526 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696529 () List!50764)

(assert (=> d!1392063 (= lt!1696526 (ListMap!3586 lt!1696529))))

(declare-fun lt!1696527 () Unit!94720)

(declare-fun lt!1696528 () Unit!94720)

(assert (=> d!1392063 (= lt!1696527 lt!1696528)))

(assert (=> d!1392063 (= (getValueByKey!1088 lt!1696529 (_1!28827 (h!56491 (_2!28828 lt!1695575)))) (Some!11107 (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1392063 (= lt!1696528 (lemmaContainsTupThenGetReturnValue!675 lt!1696529 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1392063 (= lt!1696529 (insertNoDuplicatedKeys!277 (toList!4324 lt!1695590) (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1392063 (= (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575))) lt!1696526)))

(declare-fun b!4519261 () Bool)

(declare-fun res!1880741 () Bool)

(assert (=> b!4519261 (=> (not res!1880741) (not e!2815587))))

(assert (=> b!4519261 (= res!1880741 (= (getValueByKey!1088 (toList!4324 lt!1696526) (_1!28827 (h!56491 (_2!28828 lt!1695575)))) (Some!11107 (_2!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4519262 () Bool)

(assert (=> b!4519262 (= e!2815587 (contains!13366 (toList!4324 lt!1696526) (h!56491 (_2!28828 lt!1695575))))))

(assert (= (and d!1392063 res!1880740) b!4519261))

(assert (= (and b!4519261 res!1880741) b!4519262))

(declare-fun m!5266591 () Bool)

(assert (=> d!1392063 m!5266591))

(declare-fun m!5266593 () Bool)

(assert (=> d!1392063 m!5266593))

(declare-fun m!5266595 () Bool)

(assert (=> d!1392063 m!5266595))

(declare-fun m!5266597 () Bool)

(assert (=> d!1392063 m!5266597))

(declare-fun m!5266599 () Bool)

(assert (=> b!4519261 m!5266599))

(declare-fun m!5266601 () Bool)

(assert (=> b!4519262 m!5266601))

(assert (=> b!4518382 d!1392063))

(declare-fun d!1392065 () Bool)

(assert (=> d!1392065 (dynLambda!21160 lambda!172145 (h!56491 (_2!28828 lt!1695575)))))

(declare-fun lt!1696530 () Unit!94720)

(assert (=> d!1392065 (= lt!1696530 (choose!29504 (toList!4324 lt!1695997) lambda!172145 (h!56491 (_2!28828 lt!1695575))))))

(declare-fun e!2815588 () Bool)

(assert (=> d!1392065 e!2815588))

(declare-fun res!1880742 () Bool)

(assert (=> d!1392065 (=> (not res!1880742) (not e!2815588))))

(assert (=> d!1392065 (= res!1880742 (forall!10259 (toList!4324 lt!1695997) lambda!172145))))

(assert (=> d!1392065 (= (forallContained!2511 (toList!4324 lt!1695997) lambda!172145 (h!56491 (_2!28828 lt!1695575))) lt!1696530)))

(declare-fun b!4519263 () Bool)

(assert (=> b!4519263 (= e!2815588 (contains!13366 (toList!4324 lt!1695997) (h!56491 (_2!28828 lt!1695575))))))

(assert (= (and d!1392065 res!1880742) b!4519263))

(declare-fun b_lambda!154763 () Bool)

(assert (=> (not b_lambda!154763) (not d!1392065)))

(assert (=> d!1392065 m!5266457))

(declare-fun m!5266603 () Bool)

(assert (=> d!1392065 m!5266603))

(assert (=> d!1392065 m!5264877))

(declare-fun m!5266605 () Bool)

(assert (=> b!4519263 m!5266605))

(assert (=> b!4518382 d!1392065))

(declare-fun bs!854835 () Bool)

(declare-fun d!1392067 () Bool)

(assert (= bs!854835 (and d!1392067 d!1391499)))

(declare-fun lambda!172279 () Int)

(assert (=> bs!854835 (not (= lambda!172279 lambda!172142))))

(declare-fun bs!854836 () Bool)

(assert (= bs!854836 (and d!1392067 d!1391731)))

(assert (=> bs!854836 (= (= lt!1695982 lt!1696217) (= lambda!172279 lambda!172199))))

(declare-fun bs!854837 () Bool)

(assert (= bs!854837 (and d!1392067 b!4518382)))

(assert (=> bs!854837 (= (= lt!1695982 lt!1695590) (= lambda!172279 lambda!172144))))

(declare-fun bs!854838 () Bool)

(assert (= bs!854838 (and d!1392067 d!1391513)))

(assert (=> bs!854838 (= (= lt!1695982 lt!1695980) (= lambda!172279 lambda!172146))))

(declare-fun bs!854839 () Bool)

(assert (= bs!854839 (and d!1392067 b!4518427)))

(assert (=> bs!854839 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172279 lambda!172152))))

(declare-fun bs!854840 () Bool)

(assert (= bs!854840 (and d!1392067 b!4519010)))

(assert (=> bs!854840 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172279 lambda!172240))))

(declare-fun bs!854841 () Bool)

(assert (= bs!854841 (and d!1392067 d!1392045)))

(assert (=> bs!854841 (= (= lt!1695982 lt!1696471) (= lambda!172279 lambda!172278))))

(declare-fun bs!854842 () Bool)

(assert (= bs!854842 (and d!1392067 d!1391765)))

(assert (=> bs!854842 (= (= lt!1695982 lt!1696247) (= lambda!172279 lambda!172205))))

(declare-fun bs!854843 () Bool)

(assert (= bs!854843 (and d!1392067 b!4518822)))

(assert (=> bs!854843 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172279 lambda!172202))))

(declare-fun bs!854844 () Bool)

(assert (= bs!854844 (and d!1392067 b!4518729)))

(assert (=> bs!854844 (= (= lt!1695982 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172279 lambda!172190))))

(declare-fun bs!854845 () Bool)

(assert (= bs!854845 (and d!1392067 b!4518384)))

(assert (=> bs!854845 (= (= lt!1695982 lt!1695590) (= lambda!172279 lambda!172143))))

(declare-fun bs!854846 () Bool)

(assert (= bs!854846 (and d!1392067 b!4519217)))

(assert (=> bs!854846 (= (= lt!1695982 lt!1696473) (= lambda!172279 lambda!172277))))

(declare-fun bs!854847 () Bool)

(assert (= bs!854847 (and d!1392067 b!4518240)))

(assert (=> bs!854847 (= (= lt!1695982 lt!1695572) (= lambda!172279 lambda!172115))))

(declare-fun bs!854848 () Bool)

(assert (= bs!854848 (and d!1392067 b!4518425)))

(assert (=> bs!854848 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) (= lambda!172279 lambda!172153))))

(assert (=> bs!854843 (= (= lt!1695982 lt!1696249) (= lambda!172279 lambda!172203))))

(declare-fun bs!854849 () Bool)

(assert (= bs!854849 (and d!1392067 b!4519008)))

(assert (=> bs!854849 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 (+!1534 lt!1695586 lt!1695575))))) (= lambda!172279 lambda!172242))))

(declare-fun bs!854850 () Bool)

(assert (= bs!854850 (and d!1392067 b!4518753)))

(assert (=> bs!854850 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172279 lambda!172197))))

(declare-fun bs!854851 () Bool)

(assert (= bs!854851 (and d!1392067 b!4518453)))

(assert (=> bs!854851 (= (= lt!1695982 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172279 lambda!172163))))

(declare-fun bs!854852 () Bool)

(assert (= bs!854852 (and d!1392067 d!1391537)))

(assert (=> bs!854852 (= (= lt!1695982 lt!1696015) (= lambda!172279 lambda!172155))))

(declare-fun bs!854853 () Bool)

(assert (= bs!854853 (and d!1392067 b!4518755)))

(assert (=> bs!854853 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lt!1695580)))) (= lambda!172279 lambda!172196))))

(assert (=> bs!854847 (= (= lt!1695982 lt!1695841) (= lambda!172279 lambda!172116))))

(declare-fun bs!854854 () Bool)

(assert (= bs!854854 (and d!1392067 b!4518468)))

(assert (=> bs!854854 (= (= lt!1695982 lt!1696066) (= lambda!172279 lambda!172169))))

(declare-fun bs!854855 () Bool)

(assert (= bs!854855 (and d!1392067 b!4518455)))

(assert (=> bs!854855 (= (= lt!1695982 (extractMap!1214 (t!357727 (t!357727 (toList!4323 lm!1477))))) (= lambda!172279 lambda!172162))))

(declare-fun bs!854856 () Bool)

(assert (= bs!854856 (and d!1392067 b!4518242)))

(assert (=> bs!854856 (= (= lt!1695982 lt!1695572) (= lambda!172279 lambda!172114))))

(declare-fun bs!854857 () Bool)

(assert (= bs!854857 (and d!1392067 b!4518824)))

(assert (=> bs!854857 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lt!1695574)))) (= lambda!172279 lambda!172201))))

(declare-fun bs!854858 () Bool)

(assert (= bs!854858 (and d!1392067 d!1391995)))

(assert (=> bs!854858 (= (= lt!1695982 lt!1695572) (= lambda!172279 lambda!172268))))

(declare-fun bs!854859 () Bool)

(assert (= bs!854859 (and d!1392067 d!1391627)))

(assert (=> bs!854859 (= (= lt!1695982 lt!1695590) (= lambda!172279 lambda!172178))))

(declare-fun bs!854860 () Bool)

(assert (= bs!854860 (and d!1392067 d!1391719)))

(assert (=> bs!854860 (= (= lt!1695982 lt!1696187) (= lambda!172279 lambda!172195))))

(declare-fun bs!854861 () Bool)

(assert (= bs!854861 (and d!1392067 b!4518731)))

(assert (=> bs!854861 (= (= lt!1695982 (+!1536 lt!1695572 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172279 lambda!172189))))

(declare-fun bs!854862 () Bool)

(assert (= bs!854862 (and d!1392067 b!4518470)))

(assert (=> bs!854862 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172279 lambda!172167))))

(declare-fun bs!854864 () Bool)

(assert (= bs!854864 (and d!1392067 d!1391367)))

(assert (=> bs!854864 (= (= lt!1695982 lt!1695839) (= lambda!172279 lambda!172119))))

(assert (=> bs!854850 (= (= lt!1695982 lt!1696219) (= lambda!172279 lambda!172198))))

(assert (=> bs!854854 (= (= lt!1695982 (extractMap!1214 (t!357727 (toList!4323 lt!1695586)))) (= lambda!172279 lambda!172168))))

(declare-fun bs!854867 () Bool)

(assert (= bs!854867 (and d!1392067 d!1391915)))

(assert (=> bs!854867 (= (= lt!1695982 lt!1696374) (= lambda!172279 lambda!172244))))

(declare-fun bs!854869 () Bool)

(assert (= bs!854869 (and d!1392067 d!1391685)))

(assert (=> bs!854869 (= (= lt!1695982 lt!1695841) (= lambda!172279 lambda!172188))))

(assert (=> bs!854849 (= (= lt!1695982 lt!1696376) (= lambda!172279 lambda!172243))))

(assert (=> bs!854846 (= (= lt!1695982 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172279 lambda!172276))))

(assert (=> bs!854851 (= (= lt!1695982 lt!1696044) (= lambda!172279 lambda!172164))))

(declare-fun bs!854874 () Bool)

(assert (= bs!854874 (and d!1392067 d!1391555)))

(assert (=> bs!854874 (= (= lt!1695982 lt!1696064) (= lambda!172279 lambda!172170))))

(assert (=> bs!854848 (= (= lt!1695982 lt!1696017) (= lambda!172279 lambda!172154))))

(declare-fun bs!854876 () Bool)

(assert (= bs!854876 (and d!1392067 b!4519219)))

(assert (=> bs!854876 (= (= lt!1695982 (+!1536 lt!1695590 (h!56491 (_2!28828 lt!1695575)))) (= lambda!172279 lambda!172275))))

(assert (=> bs!854837 (= lambda!172279 lambda!172145)))

(assert (=> bs!854844 (= (= lt!1695982 lt!1696189) (= lambda!172279 lambda!172193))))

(declare-fun bs!854880 () Bool)

(assert (= bs!854880 (and d!1392067 d!1391547)))

(assert (=> bs!854880 (= (= lt!1695982 lt!1696042) (= lambda!172279 lambda!172165))))

(assert (=> d!1392067 true))

(assert (=> d!1392067 (forall!10259 (toList!4324 lt!1695590) lambda!172279)))

(declare-fun lt!1696531 () Unit!94720)

(assert (=> d!1392067 (= lt!1696531 (choose!29503 lt!1695590 lt!1695982 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1392067 (forall!10259 (toList!4324 (+!1536 lt!1695590 (tuple2!51067 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))))) lambda!172279)))

(assert (=> d!1392067 (= (addForallContainsKeyThenBeforeAdding!336 lt!1695590 lt!1695982 (_1!28827 (h!56491 (_2!28828 lt!1695575))) (_2!28827 (h!56491 (_2!28828 lt!1695575)))) lt!1696531)))

(declare-fun bs!854886 () Bool)

(assert (= bs!854886 d!1392067))

(declare-fun m!5266607 () Bool)

(assert (=> bs!854886 m!5266607))

(declare-fun m!5266609 () Bool)

(assert (=> bs!854886 m!5266609))

(declare-fun m!5266611 () Bool)

(assert (=> bs!854886 m!5266611))

(declare-fun m!5266613 () Bool)

(assert (=> bs!854886 m!5266613))

(assert (=> b!4518382 d!1392067))

(assert (=> b!4518382 d!1392009))

(declare-fun d!1392069 () Bool)

(declare-fun res!1880743 () Bool)

(declare-fun e!2815589 () Bool)

(assert (=> d!1392069 (=> res!1880743 e!2815589)))

(assert (=> d!1392069 (= res!1880743 ((_ is Nil!50640) (toList!4324 lt!1695590)))))

(assert (=> d!1392069 (= (forall!10259 (toList!4324 lt!1695590) lambda!172144) e!2815589)))

(declare-fun b!4519265 () Bool)

(declare-fun e!2815590 () Bool)

(assert (=> b!4519265 (= e!2815589 e!2815590)))

(declare-fun res!1880744 () Bool)

(assert (=> b!4519265 (=> (not res!1880744) (not e!2815590))))

(assert (=> b!4519265 (= res!1880744 (dynLambda!21160 lambda!172144 (h!56491 (toList!4324 lt!1695590))))))

(declare-fun b!4519266 () Bool)

(assert (=> b!4519266 (= e!2815590 (forall!10259 (t!357726 (toList!4324 lt!1695590)) lambda!172144))))

(assert (= (and d!1392069 (not res!1880743)) b!4519265))

(assert (= (and b!4519265 res!1880744) b!4519266))

(declare-fun b_lambda!154765 () Bool)

(assert (=> (not b_lambda!154765) (not b!4519265)))

(declare-fun m!5266615 () Bool)

(assert (=> b!4519265 m!5266615))

(declare-fun m!5266617 () Bool)

(assert (=> b!4519266 m!5266617))

(assert (=> b!4518382 d!1392069))

(declare-fun b!4519267 () Bool)

(declare-fun e!2815596 () Bool)

(assert (=> b!4519267 (= e!2815596 (not (contains!13364 (keys!17589 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun d!1392071 () Bool)

(declare-fun e!2815593 () Bool)

(assert (=> d!1392071 e!2815593))

(declare-fun res!1880745 () Bool)

(assert (=> d!1392071 (=> res!1880745 e!2815593)))

(assert (=> d!1392071 (= res!1880745 e!2815596)))

(declare-fun res!1880747 () Bool)

(assert (=> d!1392071 (=> (not res!1880747) (not e!2815596))))

(declare-fun lt!1696541 () Bool)

(assert (=> d!1392071 (= res!1880747 (not lt!1696541))))

(declare-fun lt!1696537 () Bool)

(assert (=> d!1392071 (= lt!1696541 lt!1696537)))

(declare-fun lt!1696535 () Unit!94720)

(declare-fun e!2815594 () Unit!94720)

(assert (=> d!1392071 (= lt!1696535 e!2815594)))

(declare-fun c!771217 () Bool)

(assert (=> d!1392071 (= c!771217 lt!1696537)))

(assert (=> d!1392071 (= lt!1696537 (containsKey!1775 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> d!1392071 (= (contains!13361 lt!1695997 (_1!28827 (h!56491 (_2!28828 lt!1695575)))) lt!1696541)))

(declare-fun b!4519268 () Bool)

(declare-fun e!2815595 () List!50766)

(assert (=> b!4519268 (= e!2815595 (keys!17589 lt!1695997))))

(declare-fun b!4519269 () Bool)

(declare-fun lt!1696539 () Unit!94720)

(assert (=> b!4519269 (= e!2815594 lt!1696539)))

(declare-fun lt!1696542 () Unit!94720)

(assert (=> b!4519269 (= lt!1696542 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> b!4519269 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun lt!1696536 () Unit!94720)

(assert (=> b!4519269 (= lt!1696536 lt!1696542)))

(assert (=> b!4519269 (= lt!1696539 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun call!314835 () Bool)

(assert (=> b!4519269 call!314835))

(declare-fun b!4519270 () Bool)

(declare-fun e!2815591 () Bool)

(assert (=> b!4519270 (= e!2815593 e!2815591)))

(declare-fun res!1880746 () Bool)

(assert (=> b!4519270 (=> (not res!1880746) (not e!2815591))))

(assert (=> b!4519270 (= res!1880746 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))))

(declare-fun b!4519271 () Bool)

(assert (=> b!4519271 (= e!2815595 (getKeysList!462 (toList!4324 lt!1695997)))))

(declare-fun b!4519272 () Bool)

(declare-fun e!2815592 () Unit!94720)

(declare-fun Unit!94988 () Unit!94720)

(assert (=> b!4519272 (= e!2815592 Unit!94988)))

(declare-fun b!4519273 () Bool)

(assert (=> b!4519273 false))

(declare-fun lt!1696538 () Unit!94720)

(declare-fun lt!1696540 () Unit!94720)

(assert (=> b!4519273 (= lt!1696538 lt!1696540)))

(assert (=> b!4519273 (containsKey!1775 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575))))))

(assert (=> b!4519273 (= lt!1696540 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun Unit!94989 () Unit!94720)

(assert (=> b!4519273 (= e!2815592 Unit!94989)))

(declare-fun bm!314830 () Bool)

(assert (=> bm!314830 (= call!314835 (contains!13364 e!2815595 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun c!771215 () Bool)

(assert (=> bm!314830 (= c!771215 c!771217)))

(declare-fun b!4519274 () Bool)

(assert (=> b!4519274 (= e!2815591 (contains!13364 (keys!17589 lt!1695997) (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun b!4519275 () Bool)

(assert (=> b!4519275 (= e!2815594 e!2815592)))

(declare-fun c!771216 () Bool)

(assert (=> b!4519275 (= c!771216 call!314835)))

(assert (= (and d!1392071 c!771217) b!4519269))

(assert (= (and d!1392071 (not c!771217)) b!4519275))

(assert (= (and b!4519275 c!771216) b!4519273))

(assert (= (and b!4519275 (not c!771216)) b!4519272))

(assert (= (or b!4519269 b!4519275) bm!314830))

(assert (= (and bm!314830 c!771215) b!4519271))

(assert (= (and bm!314830 (not c!771215)) b!4519268))

(assert (= (and d!1392071 res!1880747) b!4519267))

(assert (= (and d!1392071 (not res!1880745)) b!4519270))

(assert (= (and b!4519270 res!1880746) b!4519274))

(declare-fun m!5266631 () Bool)

(assert (=> b!4519268 m!5266631))

(declare-fun m!5266633 () Bool)

(assert (=> b!4519269 m!5266633))

(declare-fun m!5266635 () Bool)

(assert (=> b!4519269 m!5266635))

(assert (=> b!4519269 m!5266635))

(declare-fun m!5266637 () Bool)

(assert (=> b!4519269 m!5266637))

(declare-fun m!5266639 () Bool)

(assert (=> b!4519269 m!5266639))

(declare-fun m!5266641 () Bool)

(assert (=> b!4519271 m!5266641))

(assert (=> b!4519270 m!5266635))

(assert (=> b!4519270 m!5266635))

(assert (=> b!4519270 m!5266637))

(declare-fun m!5266643 () Bool)

(assert (=> b!4519273 m!5266643))

(declare-fun m!5266645 () Bool)

(assert (=> b!4519273 m!5266645))

(declare-fun m!5266647 () Bool)

(assert (=> bm!314830 m!5266647))

(assert (=> b!4519274 m!5266631))

(assert (=> b!4519274 m!5266631))

(declare-fun m!5266649 () Bool)

(assert (=> b!4519274 m!5266649))

(assert (=> d!1392071 m!5266643))

(assert (=> b!4519267 m!5266631))

(assert (=> b!4519267 m!5266631))

(assert (=> b!4519267 m!5266649))

(assert (=> b!4518382 d!1392071))

(declare-fun d!1392077 () Bool)

(declare-fun e!2815599 () Bool)

(assert (=> d!1392077 e!2815599))

(declare-fun res!1880750 () Bool)

(assert (=> d!1392077 (=> res!1880750 e!2815599)))

(declare-fun lt!1696544 () Bool)

(assert (=> d!1392077 (= res!1880750 (not lt!1696544))))

(declare-fun lt!1696545 () Bool)

(assert (=> d!1392077 (= lt!1696544 lt!1696545)))

(declare-fun lt!1696543 () Unit!94720)

(declare-fun e!2815600 () Unit!94720)

(assert (=> d!1392077 (= lt!1696543 e!2815600)))

(declare-fun c!771218 () Bool)

(assert (=> d!1392077 (= c!771218 lt!1696545)))

(assert (=> d!1392077 (= lt!1696545 (containsKey!1777 (toList!4323 lm!1477) (hash!2799 hashF!1107 key!3287)))))

(assert (=> d!1392077 (= (contains!13362 lm!1477 (hash!2799 hashF!1107 key!3287)) lt!1696544)))

(declare-fun b!4519278 () Bool)

(declare-fun lt!1696546 () Unit!94720)

(assert (=> b!4519278 (= e!2815600 lt!1696546)))

(assert (=> b!4519278 (= lt!1696546 (lemmaContainsKeyImpliesGetValueByKeyDefined!992 (toList!4323 lm!1477) (hash!2799 hashF!1107 key!3287)))))

(assert (=> b!4519278 (isDefined!8395 (getValueByKey!1086 (toList!4323 lm!1477) (hash!2799 hashF!1107 key!3287)))))

(declare-fun b!4519279 () Bool)

(declare-fun Unit!94990 () Unit!94720)

(assert (=> b!4519279 (= e!2815600 Unit!94990)))

(declare-fun b!4519280 () Bool)

(assert (=> b!4519280 (= e!2815599 (isDefined!8395 (getValueByKey!1086 (toList!4323 lm!1477) (hash!2799 hashF!1107 key!3287))))))

(assert (= (and d!1392077 c!771218) b!4519278))

(assert (= (and d!1392077 (not c!771218)) b!4519279))

(assert (= (and d!1392077 (not res!1880750)) b!4519280))

(assert (=> d!1392077 m!5264177))

(declare-fun m!5266651 () Bool)

(assert (=> d!1392077 m!5266651))

(assert (=> b!4519278 m!5264177))

(declare-fun m!5266653 () Bool)

(assert (=> b!4519278 m!5266653))

(assert (=> b!4519278 m!5264177))

(declare-fun m!5266655 () Bool)

(assert (=> b!4519278 m!5266655))

(assert (=> b!4519278 m!5266655))

(declare-fun m!5266657 () Bool)

(assert (=> b!4519278 m!5266657))

(assert (=> b!4519280 m!5264177))

(assert (=> b!4519280 m!5266655))

(assert (=> b!4519280 m!5266655))

(assert (=> b!4519280 m!5266657))

(assert (=> d!1391449 d!1392077))

(assert (=> d!1391449 d!1391497))

(declare-fun d!1392079 () Bool)

(assert (=> d!1392079 (contains!13362 lm!1477 (hash!2799 hashF!1107 key!3287))))

(assert (=> d!1392079 true))

(declare-fun _$27!1230 () Unit!94720)

(assert (=> d!1392079 (= (choose!29484 lm!1477 key!3287 hashF!1107) _$27!1230)))

(declare-fun bs!854889 () Bool)

(assert (= bs!854889 d!1392079))

(assert (=> bs!854889 m!5264177))

(assert (=> bs!854889 m!5264177))

(assert (=> bs!854889 m!5264685))

(assert (=> d!1391449 d!1392079))

(declare-fun d!1392083 () Bool)

(declare-fun res!1880757 () Bool)

(declare-fun e!2815606 () Bool)

(assert (=> d!1392083 (=> res!1880757 e!2815606)))

(assert (=> d!1392083 (= res!1880757 ((_ is Nil!50641) (toList!4323 lm!1477)))))

(assert (=> d!1392083 (= (forall!10257 (toList!4323 lm!1477) lambda!172124) e!2815606)))

(declare-fun b!4519284 () Bool)

(declare-fun e!2815608 () Bool)

(assert (=> b!4519284 (= e!2815606 e!2815608)))

(declare-fun res!1880758 () Bool)

(assert (=> b!4519284 (=> (not res!1880758) (not e!2815608))))

(assert (=> b!4519284 (= res!1880758 (dynLambda!21159 lambda!172124 (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4519285 () Bool)

(assert (=> b!4519285 (= e!2815608 (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172124))))

(assert (= (and d!1392083 (not res!1880757)) b!4519284))

(assert (= (and b!4519284 res!1880758) b!4519285))

(declare-fun b_lambda!154771 () Bool)

(assert (=> (not b_lambda!154771) (not b!4519284)))

(declare-fun m!5266663 () Bool)

(assert (=> b!4519284 m!5266663))

(declare-fun m!5266665 () Bool)

(assert (=> b!4519285 m!5266665))

(assert (=> d!1391449 d!1392083))

(declare-fun d!1392085 () Bool)

(declare-fun res!1880759 () Bool)

(declare-fun e!2815609 () Bool)

(assert (=> d!1392085 (=> res!1880759 e!2815609)))

(assert (=> d!1392085 (= res!1880759 (and ((_ is Cons!50640) (t!357726 newBucket!178)) (= (_1!28827 (h!56491 (t!357726 newBucket!178))) (_1!28827 (h!56491 newBucket!178)))))))

(assert (=> d!1392085 (= (containsKey!1774 (t!357726 newBucket!178) (_1!28827 (h!56491 newBucket!178))) e!2815609)))

(declare-fun b!4519291 () Bool)

(declare-fun e!2815610 () Bool)

(assert (=> b!4519291 (= e!2815609 e!2815610)))

(declare-fun res!1880760 () Bool)

(assert (=> b!4519291 (=> (not res!1880760) (not e!2815610))))

(assert (=> b!4519291 (= res!1880760 ((_ is Cons!50640) (t!357726 newBucket!178)))))

(declare-fun b!4519292 () Bool)

(assert (=> b!4519292 (= e!2815610 (containsKey!1774 (t!357726 (t!357726 newBucket!178)) (_1!28827 (h!56491 newBucket!178))))))

(assert (= (and d!1392085 (not res!1880759)) b!4519291))

(assert (= (and b!4519291 res!1880760) b!4519292))

(declare-fun m!5266667 () Bool)

(assert (=> b!4519292 m!5266667))

(assert (=> b!4518380 d!1392085))

(assert (=> b!4518409 d!1391993))

(assert (=> b!4518409 d!1391869))

(declare-fun d!1392087 () Bool)

(assert (=> d!1392087 (dynLambda!21159 lambda!172021 (h!56492 (toList!4323 lm!1477)))))

(assert (=> d!1392087 true))

(declare-fun _$7!1835 () Unit!94720)

(assert (=> d!1392087 (= (choose!29486 (toList!4323 lm!1477) lambda!172021 (h!56492 (toList!4323 lm!1477))) _$7!1835)))

(declare-fun b_lambda!154773 () Bool)

(assert (=> (not b_lambda!154773) (not d!1392087)))

(declare-fun bs!854905 () Bool)

(assert (= bs!854905 d!1392087))

(assert (=> bs!854905 m!5264847))

(assert (=> d!1391525 d!1392087))

(assert (=> d!1391525 d!1391505))

(declare-fun d!1392089 () Bool)

(assert (=> d!1392089 (= (get!16583 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344)) (v!44697 (getValueByKey!1086 (toList!4323 lt!1695586) hash!344)))))

(assert (=> d!1391447 d!1392089))

(assert (=> d!1391447 d!1391853))

(assert (=> b!4518118 d!1391943))

(assert (=> b!4518118 d!1391621))

(assert (=> b!4518405 d!1391587))

(assert (=> b!4518405 d!1391589))

(declare-fun d!1392091 () Bool)

(assert (=> d!1392091 (= (invariantList!1015 (toList!4324 lt!1695650)) (noDuplicatedKeys!260 (toList!4324 lt!1695650)))))

(declare-fun bs!854910 () Bool)

(assert (= bs!854910 d!1392091))

(declare-fun m!5266669 () Bool)

(assert (=> bs!854910 m!5266669))

(assert (=> d!1391353 d!1392091))

(declare-fun d!1392093 () Bool)

(declare-fun res!1880761 () Bool)

(declare-fun e!2815611 () Bool)

(assert (=> d!1392093 (=> res!1880761 e!2815611)))

(assert (=> d!1392093 (= res!1880761 ((_ is Nil!50641) (toList!4323 lt!1695586)))))

(assert (=> d!1392093 (= (forall!10257 (toList!4323 lt!1695586) lambda!172033) e!2815611)))

(declare-fun b!4519293 () Bool)

(declare-fun e!2815612 () Bool)

(assert (=> b!4519293 (= e!2815611 e!2815612)))

(declare-fun res!1880762 () Bool)

(assert (=> b!4519293 (=> (not res!1880762) (not e!2815612))))

(assert (=> b!4519293 (= res!1880762 (dynLambda!21159 lambda!172033 (h!56492 (toList!4323 lt!1695586))))))

(declare-fun b!4519294 () Bool)

(assert (=> b!4519294 (= e!2815612 (forall!10257 (t!357727 (toList!4323 lt!1695586)) lambda!172033))))

(assert (= (and d!1392093 (not res!1880761)) b!4519293))

(assert (= (and b!4519293 res!1880762) b!4519294))

(declare-fun b_lambda!154775 () Bool)

(assert (=> (not b_lambda!154775) (not b!4519293)))

(declare-fun m!5266671 () Bool)

(assert (=> b!4519293 m!5266671))

(declare-fun m!5266673 () Bool)

(assert (=> b!4519294 m!5266673))

(assert (=> d!1391353 d!1392093))

(declare-fun d!1392095 () Bool)

(declare-fun res!1880763 () Bool)

(declare-fun e!2815613 () Bool)

(assert (=> d!1392095 (=> res!1880763 e!2815613)))

(assert (=> d!1392095 (= res!1880763 ((_ is Nil!50641) (t!357727 (toList!4323 lm!1477))))))

(assert (=> d!1392095 (= (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172021) e!2815613)))

(declare-fun b!4519295 () Bool)

(declare-fun e!2815614 () Bool)

(assert (=> b!4519295 (= e!2815613 e!2815614)))

(declare-fun res!1880764 () Bool)

(assert (=> b!4519295 (=> (not res!1880764) (not e!2815614))))

(assert (=> b!4519295 (= res!1880764 (dynLambda!21159 lambda!172021 (h!56492 (t!357727 (toList!4323 lm!1477)))))))

(declare-fun b!4519296 () Bool)

(assert (=> b!4519296 (= e!2815614 (forall!10257 (t!357727 (t!357727 (toList!4323 lm!1477))) lambda!172021))))

(assert (= (and d!1392095 (not res!1880763)) b!4519295))

(assert (= (and b!4519295 res!1880764) b!4519296))

(declare-fun b_lambda!154777 () Bool)

(assert (=> (not b_lambda!154777) (not b!4519295)))

(declare-fun m!5266675 () Bool)

(assert (=> b!4519295 m!5266675))

(declare-fun m!5266677 () Bool)

(assert (=> b!4519296 m!5266677))

(assert (=> b!4518375 d!1392095))

(declare-fun b!4519297 () Bool)

(declare-fun e!2815620 () Bool)

(assert (=> b!4519297 (= e!2815620 (not (contains!13364 (keys!17589 lt!1695601) key!3287)))))

(declare-fun d!1392097 () Bool)

(declare-fun e!2815617 () Bool)

(assert (=> d!1392097 e!2815617))

(declare-fun res!1880765 () Bool)

(assert (=> d!1392097 (=> res!1880765 e!2815617)))

(assert (=> d!1392097 (= res!1880765 e!2815620)))

(declare-fun res!1880767 () Bool)

(assert (=> d!1392097 (=> (not res!1880767) (not e!2815620))))

(declare-fun lt!1696577 () Bool)

(assert (=> d!1392097 (= res!1880767 (not lt!1696577))))

(declare-fun lt!1696573 () Bool)

(assert (=> d!1392097 (= lt!1696577 lt!1696573)))

(declare-fun lt!1696571 () Unit!94720)

(declare-fun e!2815618 () Unit!94720)

(assert (=> d!1392097 (= lt!1696571 e!2815618)))

(declare-fun c!771222 () Bool)

(assert (=> d!1392097 (= c!771222 lt!1696573)))

(assert (=> d!1392097 (= lt!1696573 (containsKey!1775 (toList!4324 lt!1695601) key!3287))))

(assert (=> d!1392097 (= (contains!13361 lt!1695601 key!3287) lt!1696577)))

(declare-fun b!4519298 () Bool)

(declare-fun e!2815619 () List!50766)

(assert (=> b!4519298 (= e!2815619 (keys!17589 lt!1695601))))

(declare-fun b!4519299 () Bool)

(declare-fun lt!1696575 () Unit!94720)

(assert (=> b!4519299 (= e!2815618 lt!1696575)))

(declare-fun lt!1696578 () Unit!94720)

(assert (=> b!4519299 (= lt!1696578 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695601) key!3287))))

(assert (=> b!4519299 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695601) key!3287))))

(declare-fun lt!1696572 () Unit!94720)

(assert (=> b!4519299 (= lt!1696572 lt!1696578)))

(assert (=> b!4519299 (= lt!1696575 (lemmaInListThenGetKeysListContains!458 (toList!4324 lt!1695601) key!3287))))

(declare-fun call!314839 () Bool)

(assert (=> b!4519299 call!314839))

(declare-fun b!4519300 () Bool)

(declare-fun e!2815615 () Bool)

(assert (=> b!4519300 (= e!2815617 e!2815615)))

(declare-fun res!1880766 () Bool)

(assert (=> b!4519300 (=> (not res!1880766) (not e!2815615))))

(assert (=> b!4519300 (= res!1880766 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695601) key!3287)))))

(declare-fun b!4519301 () Bool)

(assert (=> b!4519301 (= e!2815619 (getKeysList!462 (toList!4324 lt!1695601)))))

(declare-fun b!4519302 () Bool)

(declare-fun e!2815616 () Unit!94720)

(declare-fun Unit!95002 () Unit!94720)

(assert (=> b!4519302 (= e!2815616 Unit!95002)))

(declare-fun b!4519303 () Bool)

(assert (=> b!4519303 false))

(declare-fun lt!1696574 () Unit!94720)

(declare-fun lt!1696576 () Unit!94720)

(assert (=> b!4519303 (= lt!1696574 lt!1696576)))

(assert (=> b!4519303 (containsKey!1775 (toList!4324 lt!1695601) key!3287)))

(assert (=> b!4519303 (= lt!1696576 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 lt!1695601) key!3287))))

(declare-fun Unit!95003 () Unit!94720)

(assert (=> b!4519303 (= e!2815616 Unit!95003)))

(declare-fun bm!314834 () Bool)

(assert (=> bm!314834 (= call!314839 (contains!13364 e!2815619 key!3287))))

(declare-fun c!771220 () Bool)

(assert (=> bm!314834 (= c!771220 c!771222)))

(declare-fun b!4519304 () Bool)

(assert (=> b!4519304 (= e!2815615 (contains!13364 (keys!17589 lt!1695601) key!3287))))

(declare-fun b!4519305 () Bool)

(assert (=> b!4519305 (= e!2815618 e!2815616)))

(declare-fun c!771221 () Bool)

(assert (=> b!4519305 (= c!771221 call!314839)))

(assert (= (and d!1392097 c!771222) b!4519299))

(assert (= (and d!1392097 (not c!771222)) b!4519305))

(assert (= (and b!4519305 c!771221) b!4519303))

(assert (= (and b!4519305 (not c!771221)) b!4519302))

(assert (= (or b!4519299 b!4519305) bm!314834))

(assert (= (and bm!314834 c!771220) b!4519301))

(assert (= (and bm!314834 (not c!771220)) b!4519298))

(assert (= (and d!1392097 res!1880767) b!4519297))

(assert (= (and d!1392097 (not res!1880765)) b!4519300))

(assert (= (and b!4519300 res!1880766) b!4519304))

(assert (=> b!4519298 m!5264213))

(declare-fun m!5266679 () Bool)

(assert (=> b!4519299 m!5266679))

(declare-fun m!5266681 () Bool)

(assert (=> b!4519299 m!5266681))

(assert (=> b!4519299 m!5266681))

(declare-fun m!5266683 () Bool)

(assert (=> b!4519299 m!5266683))

(declare-fun m!5266685 () Bool)

(assert (=> b!4519299 m!5266685))

(assert (=> b!4519301 m!5265213))

(assert (=> b!4519300 m!5266681))

(assert (=> b!4519300 m!5266681))

(assert (=> b!4519300 m!5266683))

(declare-fun m!5266687 () Bool)

(assert (=> b!4519303 m!5266687))

(declare-fun m!5266689 () Bool)

(assert (=> b!4519303 m!5266689))

(declare-fun m!5266691 () Bool)

(assert (=> bm!314834 m!5266691))

(assert (=> b!4519304 m!5264213))

(assert (=> b!4519304 m!5264213))

(declare-fun m!5266693 () Bool)

(assert (=> b!4519304 m!5266693))

(assert (=> d!1392097 m!5266687))

(assert (=> b!4519297 m!5264213))

(assert (=> b!4519297 m!5264213))

(assert (=> b!4519297 m!5266693))

(assert (=> d!1391327 d!1392097))

(declare-fun b!4519398 () Bool)

(declare-fun e!2815677 () List!50764)

(assert (=> b!4519398 (= e!2815677 Nil!50640)))

(declare-fun call!314860 () (InoxSet tuple2!51066))

(declare-fun b!4519399 () Bool)

(declare-fun call!314862 () (InoxSet tuple2!51066))

(declare-fun get!16585 (Option!11108) V!12281)

(assert (=> b!4519399 (= call!314862 ((_ map and) call!314860 ((_ map not) (store ((as const (Array tuple2!51066 Bool)) false) (tuple2!51067 key!3287 (get!16585 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))) true))))))

(declare-fun lt!1696679 () Unit!94720)

(declare-fun e!2815675 () Unit!94720)

(assert (=> b!4519399 (= lt!1696679 e!2815675)))

(declare-fun c!771262 () Bool)

(assert (=> b!4519399 (= c!771262 (contains!13366 (t!357726 (toList!4324 lt!1695584)) (tuple2!51067 key!3287 (get!16585 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287)))))))

(declare-fun e!2815679 () Unit!94720)

(declare-fun Unit!95004 () Unit!94720)

(assert (=> b!4519399 (= e!2815679 Unit!95004)))

(declare-fun b!4519400 () Bool)

(declare-fun e!2815678 () Bool)

(declare-fun call!314865 () (InoxSet tuple2!51066))

(declare-fun call!314861 () (InoxSet tuple2!51066))

(assert (=> b!4519400 (= e!2815678 (= call!314865 call!314861))))

(declare-fun b!4519401 () Bool)

(declare-fun lt!1696677 () Unit!94720)

(declare-fun e!2815674 () Unit!94720)

(assert (=> b!4519401 (= lt!1696677 e!2815674)))

(declare-fun c!771267 () Bool)

(declare-fun call!314863 () Bool)

(assert (=> b!4519401 (= c!771267 call!314863)))

(declare-fun lt!1696674 () Unit!94720)

(declare-fun e!2815680 () Unit!94720)

(assert (=> b!4519401 (= lt!1696674 e!2815680)))

(declare-fun c!771264 () Bool)

(assert (=> b!4519401 (= c!771264 (contains!13364 (getKeysList!462 (t!357726 (toList!4324 lt!1695584))) (_1!28827 (h!56491 (toList!4324 lt!1695584)))))))

(declare-fun lt!1696663 () List!50764)

(declare-fun $colon$colon!934 (List!50764 tuple2!51066) List!50764)

(assert (=> b!4519401 (= lt!1696663 ($colon$colon!934 (removePresrvNoDuplicatedKeys!138 (t!357726 (toList!4324 lt!1695584)) key!3287) (h!56491 (toList!4324 lt!1695584))))))

(assert (=> b!4519401 (= e!2815677 lt!1696663)))

(declare-fun b!4519402 () Bool)

(declare-fun e!2815673 () List!50764)

(assert (=> b!4519402 (= e!2815673 (t!357726 (toList!4324 lt!1695584)))))

(declare-fun c!771266 () Bool)

(declare-fun call!314864 () Bool)

(assert (=> b!4519402 (= c!771266 call!314864)))

(declare-fun lt!1696673 () Unit!94720)

(assert (=> b!4519402 (= lt!1696673 e!2815679)))

(declare-fun b!4519403 () Bool)

(declare-fun e!2815676 () List!50764)

(assert (=> b!4519403 (= e!2815676 (removePresrvNoDuplicatedKeys!138 (t!357726 (toList!4324 lt!1695584)) key!3287))))

(declare-fun b!4519404 () Bool)

(declare-fun res!1880784 () Bool)

(declare-fun e!2815681 () Bool)

(assert (=> b!4519404 (=> (not res!1880784) (not e!2815681))))

(declare-fun lt!1696664 () List!50764)

(assert (=> b!4519404 (= res!1880784 (= (content!8349 (getKeysList!462 lt!1696664)) ((_ map and) (content!8349 (getKeysList!462 (toList!4324 lt!1695584))) ((_ map not) (store ((as const (Array K!12035 Bool)) false) key!3287 true)))))))

(declare-fun b!4519405 () Bool)

(declare-fun res!1880786 () Bool)

(assert (=> b!4519405 (=> (not res!1880786) (not e!2815681))))

(assert (=> b!4519405 (= res!1880786 (not (containsKey!1775 lt!1696664 key!3287)))))

(declare-fun bm!314856 () Bool)

(assert (=> bm!314856 (= call!314861 (content!8350 (toList!4324 lt!1695584)))))

(declare-fun b!4519406 () Bool)

(assert (=> b!4519406 (= e!2815681 e!2815678)))

(declare-fun c!771263 () Bool)

(assert (=> b!4519406 (= c!771263 (containsKey!1775 (toList!4324 lt!1695584) key!3287))))

(declare-fun bm!314857 () Bool)

(assert (=> bm!314857 (= call!314860 (content!8350 (toList!4324 lt!1695584)))))

(declare-fun b!4519407 () Bool)

(declare-fun Unit!95005 () Unit!94720)

(assert (=> b!4519407 (= e!2815675 Unit!95005)))

(declare-fun b!4519408 () Bool)

(declare-fun Unit!95006 () Unit!94720)

(assert (=> b!4519408 (= e!2815674 Unit!95006)))

(declare-fun b!4519409 () Bool)

(declare-fun Unit!95007 () Unit!94720)

(assert (=> b!4519409 (= e!2815680 Unit!95007)))

(declare-fun bm!314855 () Bool)

(assert (=> bm!314855 (= call!314865 (content!8350 lt!1696664))))

(declare-fun d!1392099 () Bool)

(assert (=> d!1392099 e!2815681))

(declare-fun res!1880785 () Bool)

(assert (=> d!1392099 (=> (not res!1880785) (not e!2815681))))

(assert (=> d!1392099 (= res!1880785 (invariantList!1015 lt!1696664))))

(assert (=> d!1392099 (= lt!1696664 e!2815673)))

(declare-fun c!771265 () Bool)

(assert (=> d!1392099 (= c!771265 (and ((_ is Cons!50640) (toList!4324 lt!1695584)) (= (_1!28827 (h!56491 (toList!4324 lt!1695584))) key!3287)))))

(assert (=> d!1392099 (invariantList!1015 (toList!4324 lt!1695584))))

(assert (=> d!1392099 (= (removePresrvNoDuplicatedKeys!138 (toList!4324 lt!1695584) key!3287) lt!1696664)))

(declare-fun lt!1696665 () K!12035)

(declare-fun bm!314858 () Bool)

(assert (=> bm!314858 (= call!314863 (containsKey!1775 e!2815676 (ite c!771265 lt!1696665 (_1!28827 (h!56491 (toList!4324 lt!1695584))))))))

(declare-fun c!771261 () Bool)

(assert (=> bm!314858 (= c!771261 c!771265)))

(declare-fun b!4519410 () Bool)

(assert (=> b!4519410 (= call!314862 call!314860)))

(declare-fun Unit!95008 () Unit!94720)

(assert (=> b!4519410 (= e!2815679 Unit!95008)))

(declare-fun b!4519411 () Bool)

(declare-fun Unit!95009 () Unit!94720)

(assert (=> b!4519411 (= e!2815675 Unit!95009)))

(declare-fun lt!1696672 () V!12281)

(assert (=> b!4519411 (= lt!1696672 (get!16585 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287)))))

(assert (=> b!4519411 (= lt!1696665 key!3287)))

(declare-fun lt!1696671 () K!12035)

(assert (=> b!4519411 (= lt!1696671 key!3287)))

(declare-fun lt!1696668 () Unit!94720)

(declare-fun lemmaContainsTupleThenContainsKey!61 (List!50764 K!12035 V!12281) Unit!94720)

(assert (=> b!4519411 (= lt!1696668 (lemmaContainsTupleThenContainsKey!61 (t!357726 (toList!4324 lt!1695584)) lt!1696665 (get!16585 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))))))

(assert (=> b!4519411 call!314863))

(declare-fun lt!1696666 () Unit!94720)

(assert (=> b!4519411 (= lt!1696666 lt!1696668)))

(assert (=> b!4519411 false))

(declare-fun bm!314859 () Bool)

(assert (=> bm!314859 (= call!314864 (containsKey!1775 (ite c!771265 (toList!4324 lt!1695584) (t!357726 (toList!4324 lt!1695584))) (ite c!771265 key!3287 (_1!28827 (h!56491 (toList!4324 lt!1695584))))))))

(declare-fun bm!314860 () Bool)

(assert (=> bm!314860 (= call!314862 (content!8350 (t!357726 (toList!4324 lt!1695584))))))

(declare-fun b!4519412 () Bool)

(assert (=> b!4519412 (= e!2815676 (t!357726 (toList!4324 lt!1695584)))))

(declare-fun b!4519413 () Bool)

(declare-fun Unit!95010 () Unit!94720)

(assert (=> b!4519413 (= e!2815674 Unit!95010)))

(declare-fun lt!1696676 () List!50764)

(assert (=> b!4519413 (= lt!1696676 (removePresrvNoDuplicatedKeys!138 (t!357726 (toList!4324 lt!1695584)) key!3287))))

(declare-fun lt!1696675 () Unit!94720)

(assert (=> b!4519413 (= lt!1696675 (lemmaInListThenGetKeysListContains!458 lt!1696676 (_1!28827 (h!56491 (toList!4324 lt!1695584)))))))

(assert (=> b!4519413 (contains!13364 (getKeysList!462 lt!1696676) (_1!28827 (h!56491 (toList!4324 lt!1695584))))))

(declare-fun lt!1696667 () Unit!94720)

(assert (=> b!4519413 (= lt!1696667 lt!1696675)))

(assert (=> b!4519413 false))

(declare-fun b!4519414 () Bool)

(declare-fun Unit!95011 () Unit!94720)

(assert (=> b!4519414 (= e!2815680 Unit!95011)))

(declare-fun lt!1696680 () Unit!94720)

(assert (=> b!4519414 (= lt!1696680 (lemmaInGetKeysListThenContainsKey!461 (t!357726 (toList!4324 lt!1695584)) (_1!28827 (h!56491 (toList!4324 lt!1695584)))))))

(assert (=> b!4519414 call!314864))

(declare-fun lt!1696669 () Unit!94720)

(assert (=> b!4519414 (= lt!1696669 lt!1696680)))

(assert (=> b!4519414 false))

(declare-fun b!4519415 () Bool)

(assert (=> b!4519415 (= e!2815673 e!2815677)))

(declare-fun c!771268 () Bool)

(assert (=> b!4519415 (= c!771268 (and ((_ is Cons!50640) (toList!4324 lt!1695584)) (not (= (_1!28827 (h!56491 (toList!4324 lt!1695584))) key!3287))))))

(declare-fun b!4519416 () Bool)

(assert (=> b!4519416 (= e!2815678 (= call!314865 ((_ map and) call!314861 ((_ map not) (store ((as const (Array tuple2!51066 Bool)) false) (tuple2!51067 key!3287 (get!16585 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))) true)))))))

(assert (=> b!4519416 (containsKey!1775 (toList!4324 lt!1695584) key!3287)))

(declare-fun lt!1696678 () Unit!94720)

(assert (=> b!4519416 (= lt!1696678 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 lt!1695584) key!3287))))

(assert (=> b!4519416 (isDefined!8393 (getValueByKey!1088 (toList!4324 lt!1695584) key!3287))))

(declare-fun lt!1696670 () Unit!94720)

(assert (=> b!4519416 (= lt!1696670 lt!1696678)))

(assert (= (and d!1392099 c!771265) b!4519402))

(assert (= (and d!1392099 (not c!771265)) b!4519415))

(assert (= (and b!4519402 c!771266) b!4519399))

(assert (= (and b!4519402 (not c!771266)) b!4519410))

(assert (= (and b!4519399 c!771262) b!4519411))

(assert (= (and b!4519399 (not c!771262)) b!4519407))

(assert (= (or b!4519399 b!4519410) bm!314860))

(assert (= (or b!4519399 b!4519410) bm!314857))

(assert (= (and b!4519415 c!771268) b!4519401))

(assert (= (and b!4519415 (not c!771268)) b!4519398))

(assert (= (and b!4519401 c!771264) b!4519414))

(assert (= (and b!4519401 (not c!771264)) b!4519409))

(assert (= (and b!4519401 c!771267) b!4519413))

(assert (= (and b!4519401 (not c!771267)) b!4519408))

(assert (= (or b!4519402 b!4519414) bm!314859))

(assert (= (or b!4519411 b!4519401) bm!314858))

(assert (= (and bm!314858 c!771261) b!4519412))

(assert (= (and bm!314858 (not c!771261)) b!4519403))

(assert (= (and d!1392099 res!1880785) b!4519405))

(assert (= (and b!4519405 res!1880786) b!4519404))

(assert (= (and b!4519404 res!1880784) b!4519406))

(assert (= (and b!4519406 c!771263) b!4519416))

(assert (= (and b!4519406 (not c!771263)) b!4519400))

(assert (= (or b!4519416 b!4519400) bm!314855))

(assert (= (or b!4519416 b!4519400) bm!314856))

(declare-fun m!5266777 () Bool)

(assert (=> b!4519414 m!5266777))

(declare-fun m!5266779 () Bool)

(assert (=> bm!314858 m!5266779))

(assert (=> b!4519411 m!5264331))

(assert (=> b!4519411 m!5264331))

(declare-fun m!5266781 () Bool)

(assert (=> b!4519411 m!5266781))

(assert (=> b!4519411 m!5266781))

(declare-fun m!5266783 () Bool)

(assert (=> b!4519411 m!5266783))

(declare-fun m!5266785 () Bool)

(assert (=> b!4519403 m!5266785))

(assert (=> b!4519399 m!5264331))

(assert (=> b!4519399 m!5264331))

(assert (=> b!4519399 m!5266781))

(declare-fun m!5266787 () Bool)

(assert (=> b!4519399 m!5266787))

(declare-fun m!5266789 () Bool)

(assert (=> b!4519399 m!5266789))

(declare-fun m!5266791 () Bool)

(assert (=> d!1392099 m!5266791))

(assert (=> d!1392099 m!5265171))

(declare-fun m!5266793 () Bool)

(assert (=> b!4519404 m!5266793))

(assert (=> b!4519404 m!5264337))

(assert (=> b!4519404 m!5264337))

(declare-fun m!5266795 () Bool)

(assert (=> b!4519404 m!5266795))

(assert (=> b!4519404 m!5266793))

(declare-fun m!5266797 () Bool)

(assert (=> b!4519404 m!5266797))

(assert (=> b!4519404 m!5264217))

(declare-fun m!5266799 () Bool)

(assert (=> bm!314856 m!5266799))

(assert (=> b!4519401 m!5266181))

(assert (=> b!4519401 m!5266181))

(assert (=> b!4519401 m!5266183))

(assert (=> b!4519401 m!5266785))

(assert (=> b!4519401 m!5266785))

(declare-fun m!5266801 () Bool)

(assert (=> b!4519401 m!5266801))

(assert (=> b!4519413 m!5266785))

(declare-fun m!5266803 () Bool)

(assert (=> b!4519413 m!5266803))

(declare-fun m!5266805 () Bool)

(assert (=> b!4519413 m!5266805))

(assert (=> b!4519413 m!5266805))

(declare-fun m!5266807 () Bool)

(assert (=> b!4519413 m!5266807))

(assert (=> bm!314857 m!5266799))

(declare-fun m!5266809 () Bool)

(assert (=> bm!314855 m!5266809))

(declare-fun m!5266811 () Bool)

(assert (=> bm!314860 m!5266811))

(declare-fun m!5266813 () Bool)

(assert (=> b!4519405 m!5266813))

(assert (=> b!4519416 m!5264329))

(assert (=> b!4519416 m!5266787))

(assert (=> b!4519416 m!5264331))

(assert (=> b!4519416 m!5264333))

(assert (=> b!4519416 m!5264331))

(assert (=> b!4519416 m!5266781))

(assert (=> b!4519416 m!5264339))

(assert (=> b!4519416 m!5264331))

(declare-fun m!5266815 () Bool)

(assert (=> bm!314859 m!5266815))

(assert (=> b!4519406 m!5264339))

(assert (=> d!1391327 d!1392099))

(declare-fun d!1392121 () Bool)

(declare-fun lt!1696685 () Bool)

(assert (=> d!1392121 (= lt!1696685 (select (content!8349 e!2815043) key!3287))))

(declare-fun e!2815688 () Bool)

(assert (=> d!1392121 (= lt!1696685 e!2815688)))

(declare-fun res!1880793 () Bool)

(assert (=> d!1392121 (=> (not res!1880793) (not e!2815688))))

(assert (=> d!1392121 (= res!1880793 ((_ is Cons!50642) e!2815043))))

(assert (=> d!1392121 (= (contains!13364 e!2815043 key!3287) lt!1696685)))

(declare-fun b!4519431 () Bool)

(declare-fun e!2815689 () Bool)

(assert (=> b!4519431 (= e!2815688 e!2815689)))

(declare-fun res!1880794 () Bool)

(assert (=> b!4519431 (=> res!1880794 e!2815689)))

(assert (=> b!4519431 (= res!1880794 (= (h!56495 e!2815043) key!3287))))

(declare-fun b!4519432 () Bool)

(assert (=> b!4519432 (= e!2815689 (contains!13364 (t!357728 e!2815043) key!3287))))

(assert (= (and d!1392121 res!1880793) b!4519431))

(assert (= (and b!4519431 (not res!1880794)) b!4519432))

(declare-fun m!5266817 () Bool)

(assert (=> d!1392121 m!5266817))

(declare-fun m!5266819 () Bool)

(assert (=> d!1392121 m!5266819))

(declare-fun m!5266821 () Bool)

(assert (=> b!4519432 m!5266821))

(assert (=> bm!314760 d!1392121))

(assert (=> b!4518114 d!1391605))

(assert (=> b!4518114 d!1391607))

(declare-fun d!1392123 () Bool)

(assert (=> d!1392123 (= (invariantList!1015 (toList!4324 lt!1695649)) (noDuplicatedKeys!260 (toList!4324 lt!1695649)))))

(declare-fun bs!854954 () Bool)

(assert (= bs!854954 d!1392123))

(declare-fun m!5266823 () Bool)

(assert (=> bs!854954 m!5266823))

(assert (=> d!1391351 d!1392123))

(declare-fun d!1392125 () Bool)

(declare-fun res!1880795 () Bool)

(declare-fun e!2815690 () Bool)

(assert (=> d!1392125 (=> res!1880795 e!2815690)))

(assert (=> d!1392125 (= res!1880795 ((_ is Nil!50641) (t!357727 (toList!4323 lm!1477))))))

(assert (=> d!1392125 (= (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172032) e!2815690)))

(declare-fun b!4519433 () Bool)

(declare-fun e!2815691 () Bool)

(assert (=> b!4519433 (= e!2815690 e!2815691)))

(declare-fun res!1880796 () Bool)

(assert (=> b!4519433 (=> (not res!1880796) (not e!2815691))))

(assert (=> b!4519433 (= res!1880796 (dynLambda!21159 lambda!172032 (h!56492 (t!357727 (toList!4323 lm!1477)))))))

(declare-fun b!4519434 () Bool)

(assert (=> b!4519434 (= e!2815691 (forall!10257 (t!357727 (t!357727 (toList!4323 lm!1477))) lambda!172032))))

(assert (= (and d!1392125 (not res!1880795)) b!4519433))

(assert (= (and b!4519433 res!1880796) b!4519434))

(declare-fun b_lambda!154779 () Bool)

(assert (=> (not b_lambda!154779) (not b!4519433)))

(declare-fun m!5266825 () Bool)

(assert (=> b!4519433 m!5266825))

(declare-fun m!5266827 () Bool)

(assert (=> b!4519434 m!5266827))

(assert (=> d!1391351 d!1392125))

(declare-fun d!1392127 () Bool)

(declare-fun res!1880797 () Bool)

(declare-fun e!2815692 () Bool)

(assert (=> d!1392127 (=> res!1880797 e!2815692)))

(assert (=> d!1392127 (= res!1880797 ((_ is Nil!50640) (toList!4324 lt!1695590)))))

(assert (=> d!1392127 (= (forall!10259 (toList!4324 lt!1695590) lambda!172146) e!2815692)))

(declare-fun b!4519435 () Bool)

(declare-fun e!2815693 () Bool)

(assert (=> b!4519435 (= e!2815692 e!2815693)))

(declare-fun res!1880798 () Bool)

(assert (=> b!4519435 (=> (not res!1880798) (not e!2815693))))

(assert (=> b!4519435 (= res!1880798 (dynLambda!21160 lambda!172146 (h!56491 (toList!4324 lt!1695590))))))

(declare-fun b!4519436 () Bool)

(assert (=> b!4519436 (= e!2815693 (forall!10259 (t!357726 (toList!4324 lt!1695590)) lambda!172146))))

(assert (= (and d!1392127 (not res!1880797)) b!4519435))

(assert (= (and b!4519435 res!1880798) b!4519436))

(declare-fun b_lambda!154781 () Bool)

(assert (=> (not b_lambda!154781) (not b!4519435)))

(declare-fun m!5266829 () Bool)

(assert (=> b!4519435 m!5266829))

(declare-fun m!5266831 () Bool)

(assert (=> b!4519436 m!5266831))

(assert (=> b!4518385 d!1392127))

(declare-fun d!1392129 () Bool)

(declare-fun res!1880799 () Bool)

(declare-fun e!2815694 () Bool)

(assert (=> d!1392129 (=> res!1880799 e!2815694)))

(assert (=> d!1392129 (= res!1880799 (not ((_ is Cons!50640) (_2!28828 (h!56492 (toList!4323 lm!1477))))))))

(assert (=> d!1392129 (= (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lm!1477)))) e!2815694)))

(declare-fun b!4519437 () Bool)

(declare-fun e!2815695 () Bool)

(assert (=> b!4519437 (= e!2815694 e!2815695)))

(declare-fun res!1880800 () Bool)

(assert (=> b!4519437 (=> (not res!1880800) (not e!2815695))))

(assert (=> b!4519437 (= res!1880800 (not (containsKey!1774 (t!357726 (_2!28828 (h!56492 (toList!4323 lm!1477)))) (_1!28827 (h!56491 (_2!28828 (h!56492 (toList!4323 lm!1477))))))))))

(declare-fun b!4519438 () Bool)

(assert (=> b!4519438 (= e!2815695 (noDuplicateKeys!1158 (t!357726 (_2!28828 (h!56492 (toList!4323 lm!1477))))))))

(assert (= (and d!1392129 (not res!1880799)) b!4519437))

(assert (= (and b!4519437 res!1880800) b!4519438))

(declare-fun m!5266833 () Bool)

(assert (=> b!4519437 m!5266833))

(declare-fun m!5266835 () Bool)

(assert (=> b!4519438 m!5266835))

(assert (=> bs!853798 d!1392129))

(declare-fun d!1392131 () Bool)

(declare-fun res!1880801 () Bool)

(declare-fun e!2815696 () Bool)

(assert (=> d!1392131 (=> res!1880801 e!2815696)))

(assert (=> d!1392131 (= res!1880801 (and ((_ is Cons!50640) (t!357726 (_2!28828 lt!1695575))) (= (_1!28827 (h!56491 (t!357726 (_2!28828 lt!1695575)))) key!3287)))))

(assert (=> d!1392131 (= (containsKey!1774 (t!357726 (_2!28828 lt!1695575)) key!3287) e!2815696)))

(declare-fun b!4519439 () Bool)

(declare-fun e!2815697 () Bool)

(assert (=> b!4519439 (= e!2815696 e!2815697)))

(declare-fun res!1880802 () Bool)

(assert (=> b!4519439 (=> (not res!1880802) (not e!2815697))))

(assert (=> b!4519439 (= res!1880802 ((_ is Cons!50640) (t!357726 (_2!28828 lt!1695575))))))

(declare-fun b!4519440 () Bool)

(assert (=> b!4519440 (= e!2815697 (containsKey!1774 (t!357726 (t!357726 (_2!28828 lt!1695575))) key!3287))))

(assert (= (and d!1392131 (not res!1880801)) b!4519439))

(assert (= (and b!4519439 res!1880802) b!4519440))

(declare-fun m!5266837 () Bool)

(assert (=> b!4519440 m!5266837))

(assert (=> b!4518054 d!1392131))

(declare-fun d!1392133 () Bool)

(assert (=> d!1392133 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(declare-fun lt!1696686 () Unit!94720)

(assert (=> d!1392133 (= lt!1696686 (choose!29494 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(assert (=> d!1392133 (invariantList!1015 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1392133 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287) lt!1696686)))

(declare-fun bs!854955 () Bool)

(assert (= bs!854955 d!1392133))

(assert (=> bs!854955 m!5264291))

(assert (=> bs!854955 m!5264291))

(assert (=> bs!854955 m!5264293))

(declare-fun m!5266839 () Bool)

(assert (=> bs!854955 m!5266839))

(assert (=> bs!854955 m!5265843))

(assert (=> b!4518096 d!1392133))

(assert (=> b!4518096 d!1391977))

(assert (=> b!4518096 d!1391979))

(declare-fun d!1392135 () Bool)

(assert (=> d!1392135 (contains!13364 (getKeysList!462 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477))))) key!3287)))

(declare-fun lt!1696687 () Unit!94720)

(assert (=> d!1392135 (= lt!1696687 (choose!29495 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(assert (=> d!1392135 (invariantList!1015 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1392135 (= (lemmaInListThenGetKeysListContains!458 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287) lt!1696687)))

(declare-fun bs!854956 () Bool)

(assert (= bs!854956 d!1392135))

(assert (=> bs!854956 m!5264297))

(assert (=> bs!854956 m!5264297))

(declare-fun m!5266841 () Bool)

(assert (=> bs!854956 m!5266841))

(declare-fun m!5266843 () Bool)

(assert (=> bs!854956 m!5266843))

(assert (=> bs!854956 m!5265843))

(assert (=> b!4518096 d!1392135))

(declare-fun d!1392137 () Bool)

(declare-fun res!1880803 () Bool)

(declare-fun e!2815698 () Bool)

(assert (=> d!1392137 (=> res!1880803 e!2815698)))

(assert (=> d!1392137 (= res!1880803 (and ((_ is Cons!50640) (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))) (= (_1!28827 (h!56491 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))))) key!3287)))))

(assert (=> d!1392137 (= (containsKey!1774 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477)))) key!3287) e!2815698)))

(declare-fun b!4519441 () Bool)

(declare-fun e!2815699 () Bool)

(assert (=> b!4519441 (= e!2815698 e!2815699)))

(declare-fun res!1880804 () Bool)

(assert (=> b!4519441 (=> (not res!1880804) (not e!2815699))))

(assert (=> b!4519441 (= res!1880804 ((_ is Cons!50640) (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))

(declare-fun b!4519442 () Bool)

(assert (=> b!4519442 (= e!2815699 (containsKey!1774 (t!357726 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))) key!3287))))

(assert (= (and d!1392137 (not res!1880803)) b!4519441))

(assert (= (and b!4519441 res!1880804) b!4519442))

(declare-fun m!5266845 () Bool)

(assert (=> b!4519442 m!5266845))

(assert (=> b!4518360 d!1392137))

(declare-fun d!1392139 () Bool)

(assert (=> d!1392139 (dynLambda!21159 lambda!172021 lt!1695598)))

(assert (=> d!1392139 true))

(declare-fun _$7!1836 () Unit!94720)

(assert (=> d!1392139 (= (choose!29486 (toList!4323 lm!1477) lambda!172021 lt!1695598) _$7!1836)))

(declare-fun b_lambda!154783 () Bool)

(assert (=> (not b_lambda!154783) (not d!1392139)))

(declare-fun bs!854957 () Bool)

(assert (= bs!854957 d!1392139))

(assert (=> bs!854957 m!5264765))

(assert (=> d!1391475 d!1392139))

(assert (=> d!1391475 d!1391505))

(declare-fun d!1392141 () Bool)

(declare-fun lt!1696688 () Bool)

(assert (=> d!1392141 (= lt!1696688 (select (content!8352 (toList!4323 lt!1695610)) lt!1695594))))

(declare-fun e!2815701 () Bool)

(assert (=> d!1392141 (= lt!1696688 e!2815701)))

(declare-fun res!1880805 () Bool)

(assert (=> d!1392141 (=> (not res!1880805) (not e!2815701))))

(assert (=> d!1392141 (= res!1880805 ((_ is Cons!50641) (toList!4323 lt!1695610)))))

(assert (=> d!1392141 (= (contains!13363 (toList!4323 lt!1695610) lt!1695594) lt!1696688)))

(declare-fun b!4519443 () Bool)

(declare-fun e!2815700 () Bool)

(assert (=> b!4519443 (= e!2815701 e!2815700)))

(declare-fun res!1880806 () Bool)

(assert (=> b!4519443 (=> res!1880806 e!2815700)))

(assert (=> b!4519443 (= res!1880806 (= (h!56492 (toList!4323 lt!1695610)) lt!1695594))))

(declare-fun b!4519444 () Bool)

(assert (=> b!4519444 (= e!2815700 (contains!13363 (t!357727 (toList!4323 lt!1695610)) lt!1695594))))

(assert (= (and d!1392141 res!1880805) b!4519443))

(assert (= (and b!4519443 (not res!1880806)) b!4519444))

(declare-fun m!5266847 () Bool)

(assert (=> d!1392141 m!5266847))

(declare-fun m!5266849 () Bool)

(assert (=> d!1392141 m!5266849))

(declare-fun m!5266851 () Bool)

(assert (=> b!4519444 m!5266851))

(assert (=> b!4518063 d!1392141))

(assert (=> b!4518273 d!1391851))

(assert (=> b!4518273 d!1391853))

(declare-fun b!4519445 () Bool)

(declare-fun e!2815707 () Bool)

(assert (=> b!4519445 (= e!2815707 (not (contains!13364 (keys!17589 (extractMap!1214 (toList!4323 lm!1477))) key!3287)))))

(declare-fun d!1392143 () Bool)

(declare-fun e!2815704 () Bool)

(assert (=> d!1392143 e!2815704))

(declare-fun res!1880807 () Bool)

(assert (=> d!1392143 (=> res!1880807 e!2815704)))

(assert (=> d!1392143 (= res!1880807 e!2815707)))

(declare-fun res!1880809 () Bool)

(assert (=> d!1392143 (=> (not res!1880809) (not e!2815707))))

(declare-fun lt!1696695 () Bool)

(assert (=> d!1392143 (= res!1880809 (not lt!1696695))))

(declare-fun lt!1696691 () Bool)

(assert (=> d!1392143 (= lt!1696695 lt!1696691)))

(declare-fun lt!1696689 () Unit!94720)

(declare-fun e!2815705 () Unit!94720)

(assert (=> d!1392143 (= lt!1696689 e!2815705)))

(declare-fun c!771275 () Bool)

(assert (=> d!1392143 (= c!771275 lt!1696691)))

(assert (=> d!1392143 (= lt!1696691 (containsKey!1775 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287))))

(assert (=> d!1392143 (= (contains!13361 (extractMap!1214 (toList!4323 lm!1477)) key!3287) lt!1696695)))

(declare-fun b!4519446 () Bool)

(declare-fun e!2815706 () List!50766)

(assert (=> b!4519446 (= e!2815706 (keys!17589 (extractMap!1214 (toList!4323 lm!1477))))))

(declare-fun b!4519447 () Bool)

(declare-fun lt!1696693 () Unit!94720)

(assert (=> b!4519447 (= e!2815705 lt!1696693)))

(declare-fun lt!1696696 () Unit!94720)

(assert (=> b!4519447 (= lt!1696696 (lemmaContainsKeyImpliesGetValueByKeyDefined!990 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287))))

(assert (=> b!4519447 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287))))

(declare-fun lt!1696690 () Unit!94720)

(assert (=> b!4519447 (= lt!1696690 lt!1696696)))

(assert (=> b!4519447 (= lt!1696693 (lemmaInListThenGetKeysListContains!458 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287))))

(declare-fun call!314874 () Bool)

(assert (=> b!4519447 call!314874))

(declare-fun b!4519448 () Bool)

(declare-fun e!2815702 () Bool)

(assert (=> b!4519448 (= e!2815704 e!2815702)))

(declare-fun res!1880808 () Bool)

(assert (=> b!4519448 (=> (not res!1880808) (not e!2815702))))

(assert (=> b!4519448 (= res!1880808 (isDefined!8393 (getValueByKey!1088 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287)))))

(declare-fun b!4519449 () Bool)

(assert (=> b!4519449 (= e!2815706 (getKeysList!462 (toList!4324 (extractMap!1214 (toList!4323 lm!1477)))))))

(declare-fun b!4519450 () Bool)

(declare-fun e!2815703 () Unit!94720)

(declare-fun Unit!95013 () Unit!94720)

(assert (=> b!4519450 (= e!2815703 Unit!95013)))

(declare-fun b!4519451 () Bool)

(assert (=> b!4519451 false))

(declare-fun lt!1696692 () Unit!94720)

(declare-fun lt!1696694 () Unit!94720)

(assert (=> b!4519451 (= lt!1696692 lt!1696694)))

(assert (=> b!4519451 (containsKey!1775 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287)))

(assert (=> b!4519451 (= lt!1696694 (lemmaInGetKeysListThenContainsKey!461 (toList!4324 (extractMap!1214 (toList!4323 lm!1477))) key!3287))))

(declare-fun Unit!95014 () Unit!94720)

(assert (=> b!4519451 (= e!2815703 Unit!95014)))

(declare-fun bm!314869 () Bool)

(assert (=> bm!314869 (= call!314874 (contains!13364 e!2815706 key!3287))))

(declare-fun c!771273 () Bool)

(assert (=> bm!314869 (= c!771273 c!771275)))

(declare-fun b!4519452 () Bool)

(assert (=> b!4519452 (= e!2815702 (contains!13364 (keys!17589 (extractMap!1214 (toList!4323 lm!1477))) key!3287))))

(declare-fun b!4519453 () Bool)

(assert (=> b!4519453 (= e!2815705 e!2815703)))

(declare-fun c!771274 () Bool)

(assert (=> b!4519453 (= c!771274 call!314874)))

(assert (= (and d!1392143 c!771275) b!4519447))

(assert (= (and d!1392143 (not c!771275)) b!4519453))

(assert (= (and b!4519453 c!771274) b!4519451))

(assert (= (and b!4519453 (not c!771274)) b!4519450))

(assert (= (or b!4519447 b!4519453) bm!314869))

(assert (= (and bm!314869 c!771273) b!4519449))

(assert (= (and bm!314869 (not c!771273)) b!4519446))

(assert (= (and d!1392143 res!1880809) b!4519445))

(assert (= (and d!1392143 (not res!1880807)) b!4519448))

(assert (= (and b!4519448 res!1880808) b!4519452))

(assert (=> b!4519446 m!5264103))

(declare-fun m!5266853 () Bool)

(assert (=> b!4519446 m!5266853))

(declare-fun m!5266855 () Bool)

(assert (=> b!4519447 m!5266855))

(declare-fun m!5266857 () Bool)

(assert (=> b!4519447 m!5266857))

(assert (=> b!4519447 m!5266857))

(declare-fun m!5266859 () Bool)

(assert (=> b!4519447 m!5266859))

(declare-fun m!5266861 () Bool)

(assert (=> b!4519447 m!5266861))

(declare-fun m!5266863 () Bool)

(assert (=> b!4519449 m!5266863))

(assert (=> b!4519448 m!5266857))

(assert (=> b!4519448 m!5266857))

(assert (=> b!4519448 m!5266859))

(declare-fun m!5266865 () Bool)

(assert (=> b!4519451 m!5266865))

(declare-fun m!5266867 () Bool)

(assert (=> b!4519451 m!5266867))

(declare-fun m!5266869 () Bool)

(assert (=> bm!314869 m!5266869))

(assert (=> b!4519452 m!5264103))

(assert (=> b!4519452 m!5266853))

(assert (=> b!4519452 m!5266853))

(declare-fun m!5266871 () Bool)

(assert (=> b!4519452 m!5266871))

(assert (=> d!1392143 m!5266865))

(assert (=> b!4519445 m!5264103))

(assert (=> b!4519445 m!5266853))

(assert (=> b!4519445 m!5266853))

(assert (=> b!4519445 m!5266871))

(assert (=> d!1391477 d!1392143))

(assert (=> d!1391477 d!1391529))

(declare-fun d!1392145 () Bool)

(assert (=> d!1392145 (not (contains!13361 (extractMap!1214 (toList!4323 lm!1477)) key!3287))))

(assert (=> d!1392145 true))

(declare-fun _$26!368 () Unit!94720)

(assert (=> d!1392145 (= (choose!29487 lm!1477 key!3287 hashF!1107) _$26!368)))

(declare-fun bs!854972 () Bool)

(assert (= bs!854972 d!1392145))

(assert (=> bs!854972 m!5264103))

(assert (=> bs!854972 m!5264103))

(assert (=> bs!854972 m!5264813))

(assert (=> d!1391477 d!1392145))

(declare-fun d!1392149 () Bool)

(declare-fun res!1880816 () Bool)

(declare-fun e!2815720 () Bool)

(assert (=> d!1392149 (=> res!1880816 e!2815720)))

(assert (=> d!1392149 (= res!1880816 ((_ is Nil!50641) (toList!4323 lm!1477)))))

(assert (=> d!1392149 (= (forall!10257 (toList!4323 lm!1477) lambda!172136) e!2815720)))

(declare-fun b!4519478 () Bool)

(declare-fun e!2815721 () Bool)

(assert (=> b!4519478 (= e!2815720 e!2815721)))

(declare-fun res!1880817 () Bool)

(assert (=> b!4519478 (=> (not res!1880817) (not e!2815721))))

(assert (=> b!4519478 (= res!1880817 (dynLambda!21159 lambda!172136 (h!56492 (toList!4323 lm!1477))))))

(declare-fun b!4519479 () Bool)

(assert (=> b!4519479 (= e!2815721 (forall!10257 (t!357727 (toList!4323 lm!1477)) lambda!172136))))

(assert (= (and d!1392149 (not res!1880816)) b!4519478))

(assert (= (and b!4519478 res!1880817) b!4519479))

(declare-fun b_lambda!154785 () Bool)

(assert (=> (not b_lambda!154785) (not b!4519478)))

(declare-fun m!5266913 () Bool)

(assert (=> b!4519478 m!5266913))

(declare-fun m!5266915 () Bool)

(assert (=> b!4519479 m!5266915))

(assert (=> d!1391477 d!1392149))

(assert (=> b!4518100 d!1391665))

(declare-fun d!1392151 () Bool)

(assert (=> d!1392151 (containsKey!1775 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287)))

(declare-fun lt!1696736 () Unit!94720)

(assert (=> d!1392151 (= lt!1696736 (choose!29497 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287))))

(assert (=> d!1392151 (invariantList!1015 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))))))

(assert (=> d!1392151 (= (lemmaInGetKeysListThenContainsKey!461 (toList!4324 (extractMap!1214 (t!357727 (toList!4323 lm!1477)))) key!3287) lt!1696736)))

(declare-fun bs!854981 () Bool)

(assert (= bs!854981 d!1392151))

(assert (=> bs!854981 m!5264299))

(declare-fun m!5266917 () Bool)

(assert (=> bs!854981 m!5266917))

(assert (=> bs!854981 m!5265843))

(assert (=> b!4518100 d!1392151))

(assert (=> d!1391527 d!1391611))

(declare-fun d!1392153 () Bool)

(declare-fun res!1880818 () Bool)

(declare-fun e!2815722 () Bool)

(assert (=> d!1392153 (=> res!1880818 e!2815722)))

(assert (=> d!1392153 (= res!1880818 (and ((_ is Cons!50640) (t!357726 lt!1695573)) (= (_1!28827 (h!56491 (t!357726 lt!1695573))) key!3287)))))

(assert (=> d!1392153 (= (containsKey!1774 (t!357726 lt!1695573) key!3287) e!2815722)))

(declare-fun b!4519480 () Bool)

(declare-fun e!2815723 () Bool)

(assert (=> b!4519480 (= e!2815722 e!2815723)))

(declare-fun res!1880819 () Bool)

(assert (=> b!4519480 (=> (not res!1880819) (not e!2815723))))

(assert (=> b!4519480 (= res!1880819 ((_ is Cons!50640) (t!357726 lt!1695573)))))

(declare-fun b!4519481 () Bool)

(assert (=> b!4519481 (= e!2815723 (containsKey!1774 (t!357726 (t!357726 lt!1695573)) key!3287))))

(assert (= (and d!1392153 (not res!1880818)) b!4519480))

(assert (= (and b!4519480 res!1880819) b!4519481))

(declare-fun m!5266919 () Bool)

(assert (=> b!4519481 m!5266919))

(assert (=> b!4518129 d!1392153))

(declare-fun d!1392155 () Bool)

(declare-fun res!1880820 () Bool)

(declare-fun e!2815724 () Bool)

(assert (=> d!1392155 (=> res!1880820 e!2815724)))

(assert (=> d!1392155 (= res!1880820 ((_ is Nil!50640) (ite c!770966 (toList!4324 lt!1695572) (toList!4324 lt!1695856))))))

(assert (=> d!1392155 (= (forall!10259 (ite c!770966 (toList!4324 lt!1695572) (toList!4324 lt!1695856)) (ite c!770966 lambda!172114 lambda!172116)) e!2815724)))

(declare-fun b!4519482 () Bool)

(declare-fun e!2815725 () Bool)

(assert (=> b!4519482 (= e!2815724 e!2815725)))

(declare-fun res!1880821 () Bool)

(assert (=> b!4519482 (=> (not res!1880821) (not e!2815725))))

(assert (=> b!4519482 (= res!1880821 (dynLambda!21160 (ite c!770966 lambda!172114 lambda!172116) (h!56491 (ite c!770966 (toList!4324 lt!1695572) (toList!4324 lt!1695856)))))))

(declare-fun b!4519483 () Bool)

(assert (=> b!4519483 (= e!2815725 (forall!10259 (t!357726 (ite c!770966 (toList!4324 lt!1695572) (toList!4324 lt!1695856))) (ite c!770966 lambda!172114 lambda!172116)))))

(assert (= (and d!1392155 (not res!1880820)) b!4519482))

(assert (= (and b!4519482 res!1880821) b!4519483))

(declare-fun b_lambda!154787 () Bool)

(assert (=> (not b_lambda!154787) (not b!4519482)))

(declare-fun m!5266921 () Bool)

(assert (=> b!4519482 m!5266921))

(declare-fun m!5266923 () Bool)

(assert (=> b!4519483 m!5266923))

(assert (=> bm!314747 d!1392155))

(declare-fun d!1392157 () Bool)

(declare-fun c!771285 () Bool)

(assert (=> d!1392157 (= c!771285 (and ((_ is Cons!50641) (toList!4323 lt!1695901)) (= (_1!28828 (h!56492 (toList!4323 lt!1695901))) (_1!28828 lt!1695594))))))

(declare-fun e!2815726 () Option!11106)

(assert (=> d!1392157 (= (getValueByKey!1086 (toList!4323 lt!1695901) (_1!28828 lt!1695594)) e!2815726)))

(declare-fun b!4519485 () Bool)

(declare-fun e!2815727 () Option!11106)

(assert (=> b!4519485 (= e!2815726 e!2815727)))

(declare-fun c!771286 () Bool)

(assert (=> b!4519485 (= c!771286 (and ((_ is Cons!50641) (toList!4323 lt!1695901)) (not (= (_1!28828 (h!56492 (toList!4323 lt!1695901))) (_1!28828 lt!1695594)))))))

(declare-fun b!4519486 () Bool)

(assert (=> b!4519486 (= e!2815727 (getValueByKey!1086 (t!357727 (toList!4323 lt!1695901)) (_1!28828 lt!1695594)))))

(declare-fun b!4519487 () Bool)

(assert (=> b!4519487 (= e!2815727 None!11105)))

(declare-fun b!4519484 () Bool)

(assert (=> b!4519484 (= e!2815726 (Some!11105 (_2!28828 (h!56492 (toList!4323 lt!1695901)))))))

(assert (= (and d!1392157 c!771285) b!4519484))

(assert (= (and d!1392157 (not c!771285)) b!4519485))

(assert (= (and b!4519485 c!771286) b!4519486))

(assert (= (and b!4519485 (not c!771286)) b!4519487))

(declare-fun m!5266925 () Bool)

(assert (=> b!4519486 m!5266925))

(assert (=> b!4518285 d!1392157))

(assert (=> d!1391503 d!1391553))

(assert (=> d!1391503 d!1391551))

(declare-fun d!1392159 () Bool)

(assert (=> d!1392159 (= (invariantList!1015 (toList!4324 lt!1696002)) (noDuplicatedKeys!260 (toList!4324 lt!1696002)))))

(declare-fun bs!855004 () Bool)

(assert (= bs!855004 d!1392159))

(declare-fun m!5266927 () Bool)

(assert (=> bs!855004 m!5266927))

(assert (=> d!1391515 d!1392159))

(declare-fun d!1392161 () Bool)

(declare-fun res!1880822 () Bool)

(declare-fun e!2815728 () Bool)

(assert (=> d!1392161 (=> res!1880822 e!2815728)))

(assert (=> d!1392161 (= res!1880822 ((_ is Nil!50641) (toList!4323 lt!1695574)))))

(assert (=> d!1392161 (= (forall!10257 (toList!4323 lt!1695574) lambda!172150) e!2815728)))

(declare-fun b!4519488 () Bool)

(declare-fun e!2815729 () Bool)

(assert (=> b!4519488 (= e!2815728 e!2815729)))

(declare-fun res!1880823 () Bool)

(assert (=> b!4519488 (=> (not res!1880823) (not e!2815729))))

(assert (=> b!4519488 (= res!1880823 (dynLambda!21159 lambda!172150 (h!56492 (toList!4323 lt!1695574))))))

(declare-fun b!4519489 () Bool)

(assert (=> b!4519489 (= e!2815729 (forall!10257 (t!357727 (toList!4323 lt!1695574)) lambda!172150))))

(assert (= (and d!1392161 (not res!1880822)) b!4519488))

(assert (= (and b!4519488 res!1880823) b!4519489))

(declare-fun b_lambda!154789 () Bool)

(assert (=> (not b_lambda!154789) (not b!4519488)))

(declare-fun m!5266929 () Bool)

(assert (=> b!4519488 m!5266929))

(declare-fun m!5266931 () Bool)

(assert (=> b!4519489 m!5266931))

(assert (=> d!1391515 d!1392161))

(declare-fun e!2815730 () Bool)

(declare-fun tp!1338062 () Bool)

(declare-fun b!4519490 () Bool)

(assert (=> b!4519490 (= e!2815730 (and tp_is_empty!27909 tp_is_empty!27911 tp!1338062))))

(assert (=> b!4518417 (= tp!1338057 e!2815730)))

(assert (= (and b!4518417 ((_ is Cons!50640) (_2!28828 (h!56492 (toList!4323 lm!1477))))) b!4519490))

(declare-fun b!4519491 () Bool)

(declare-fun e!2815731 () Bool)

(declare-fun tp!1338063 () Bool)

(declare-fun tp!1338064 () Bool)

(assert (=> b!4519491 (= e!2815731 (and tp!1338063 tp!1338064))))

(assert (=> b!4518417 (= tp!1338058 e!2815731)))

(assert (= (and b!4518417 ((_ is Cons!50641) (t!357727 (toList!4323 lm!1477)))) b!4519491))

(declare-fun tp!1338065 () Bool)

(declare-fun e!2815732 () Bool)

(declare-fun b!4519492 () Bool)

(assert (=> b!4519492 (= e!2815732 (and tp_is_empty!27909 tp_is_empty!27911 tp!1338065))))

(assert (=> b!4518422 (= tp!1338061 e!2815732)))

(assert (= (and b!4518422 ((_ is Cons!50640) (t!357726 (t!357726 newBucket!178)))) b!4519492))

(declare-fun b_lambda!154791 () Bool)

(assert (= b_lambda!154749 (or d!1391343 b_lambda!154791)))

(declare-fun bs!855006 () Bool)

(declare-fun d!1392163 () Bool)

(assert (= bs!855006 (and d!1392163 d!1391343)))

(assert (=> bs!855006 (= (dynLambda!21159 lambda!172028 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575)))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 (+!1534 lt!1695586 lt!1695575))))))))

(assert (=> bs!855006 m!5266131))

(assert (=> b!4519170 d!1392163))

(declare-fun b_lambda!154793 () Bool)

(assert (= b_lambda!154789 (or d!1391515 b_lambda!154793)))

(declare-fun bs!855007 () Bool)

(declare-fun d!1392165 () Bool)

(assert (= bs!855007 (and d!1392165 d!1391515)))

(assert (=> bs!855007 (= (dynLambda!21159 lambda!172150 (h!56492 (toList!4323 lt!1695574))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695574)))))))

(assert (=> bs!855007 m!5265687))

(assert (=> b!4519488 d!1392165))

(declare-fun b_lambda!154795 () Bool)

(assert (= b_lambda!154755 (or b!4518382 b_lambda!154795)))

(declare-fun bs!855008 () Bool)

(declare-fun d!1392167 () Bool)

(assert (= bs!855008 (and d!1392167 b!4518382)))

(assert (=> bs!855008 (= (dynLambda!21160 lambda!172145 (h!56491 (_2!28828 lt!1695575))) (contains!13361 lt!1695982 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> bs!855008 m!5264867))

(assert (=> b!4519215 d!1392167))

(declare-fun b_lambda!154797 () Bool)

(assert (= b_lambda!154761 (or b!4518382 b_lambda!154797)))

(declare-fun bs!855009 () Bool)

(declare-fun d!1392169 () Bool)

(assert (= bs!855009 (and d!1392169 b!4518382)))

(assert (=> bs!855009 (= (dynLambda!21160 lambda!172145 (h!56491 (toList!4324 lt!1695997))) (contains!13361 lt!1695982 (_1!28827 (h!56491 (toList!4324 lt!1695997)))))))

(declare-fun m!5266933 () Bool)

(assert (=> bs!855009 m!5266933))

(assert (=> b!4519250 d!1392169))

(declare-fun b_lambda!154799 () Bool)

(assert (= b_lambda!154775 (or d!1391353 b_lambda!154799)))

(declare-fun bs!855010 () Bool)

(declare-fun d!1392171 () Bool)

(assert (= bs!855010 (and d!1392171 d!1391353)))

(assert (=> bs!855010 (= (dynLambda!21159 lambda!172033 (h!56492 (toList!4323 lt!1695586))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(assert (=> bs!855010 m!5265083))

(assert (=> b!4519293 d!1392171))

(declare-fun b_lambda!154801 () Bool)

(assert (= b_lambda!154687 (or b!4518240 b_lambda!154801)))

(declare-fun bs!855011 () Bool)

(declare-fun d!1392173 () Bool)

(assert (= bs!855011 (and d!1392173 b!4518240)))

(assert (=> bs!855011 (= (dynLambda!21160 lambda!172116 (h!56491 (toList!4324 lt!1695572))) (contains!13361 lt!1695841 (_1!28827 (h!56491 (toList!4324 lt!1695572)))))))

(declare-fun m!5266935 () Bool)

(assert (=> bs!855011 m!5266935))

(assert (=> b!4518579 d!1392173))

(declare-fun b_lambda!154803 () Bool)

(assert (= b_lambda!154781 (or d!1391513 b_lambda!154803)))

(declare-fun bs!855012 () Bool)

(declare-fun d!1392175 () Bool)

(assert (= bs!855012 (and d!1392175 d!1391513)))

(assert (=> bs!855012 (= (dynLambda!21160 lambda!172146 (h!56491 (toList!4324 lt!1695590))) (contains!13361 lt!1695980 (_1!28827 (h!56491 (toList!4324 lt!1695590)))))))

(declare-fun m!5266937 () Bool)

(assert (=> bs!855012 m!5266937))

(assert (=> b!4519435 d!1392175))

(declare-fun b_lambda!154805 () Bool)

(assert (= b_lambda!154695 (or b!4518240 b_lambda!154805)))

(declare-fun bs!855013 () Bool)

(declare-fun d!1392177 () Bool)

(assert (= bs!855013 (and d!1392177 b!4518240)))

(assert (=> bs!855013 (= (dynLambda!21160 lambda!172116 (h!56491 (_2!28828 lt!1695575))) (contains!13361 lt!1695841 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(assert (=> bs!855013 m!5264587))

(assert (=> b!4518669 d!1392177))

(declare-fun b_lambda!154807 () Bool)

(assert (= b_lambda!154777 (or start!447216 b_lambda!154807)))

(declare-fun bs!855014 () Bool)

(declare-fun d!1392179 () Bool)

(assert (= bs!855014 (and d!1392179 start!447216)))

(assert (=> bs!855014 (= (dynLambda!21159 lambda!172021 (h!56492 (t!357727 (toList!4323 lm!1477)))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))

(assert (=> bs!855014 m!5265033))

(assert (=> b!4519295 d!1392179))

(declare-fun b_lambda!154809 () Bool)

(assert (= b_lambda!154773 (or start!447216 b_lambda!154809)))

(assert (=> d!1392087 d!1391533))

(declare-fun b_lambda!154811 () Bool)

(assert (= b_lambda!154771 (or d!1391449 b_lambda!154811)))

(declare-fun bs!855015 () Bool)

(declare-fun d!1392181 () Bool)

(assert (= bs!855015 (and d!1392181 d!1391449)))

(assert (=> bs!855015 (= (dynLambda!21159 lambda!172124 (h!56492 (toList!4323 lm!1477))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(assert (=> bs!855015 m!5264943))

(assert (=> b!4519284 d!1392181))

(declare-fun b_lambda!154813 () Bool)

(assert (= b_lambda!154783 (or start!447216 b_lambda!154813)))

(assert (=> d!1392139 d!1391531))

(declare-fun b_lambda!154815 () Bool)

(assert (= b_lambda!154713 (or d!1391367 b_lambda!154815)))

(declare-fun bs!855016 () Bool)

(declare-fun d!1392183 () Bool)

(assert (= bs!855016 (and d!1392183 d!1391367)))

(assert (=> bs!855016 (= (dynLambda!21160 lambda!172119 (h!56491 (toList!4324 lt!1695572))) (contains!13361 lt!1695839 (_1!28827 (h!56491 (toList!4324 lt!1695572)))))))

(declare-fun m!5266939 () Bool)

(assert (=> bs!855016 m!5266939))

(assert (=> b!4518858 d!1392183))

(declare-fun b_lambda!154817 () Bool)

(assert (= b_lambda!154693 (or b!4518240 b_lambda!154817)))

(declare-fun bs!855018 () Bool)

(declare-fun d!1392185 () Bool)

(assert (= bs!855018 (and d!1392185 b!4518240)))

(assert (=> bs!855018 (= (dynLambda!21160 lambda!172115 (h!56491 (toList!4324 lt!1695572))) (contains!13361 lt!1695572 (_1!28827 (h!56491 (toList!4324 lt!1695572)))))))

(declare-fun m!5266941 () Bool)

(assert (=> bs!855018 m!5266941))

(assert (=> b!4518667 d!1392185))

(declare-fun b_lambda!154819 () Bool)

(assert (= b_lambda!154679 (or d!1391529 b_lambda!154819)))

(declare-fun bs!855021 () Bool)

(declare-fun d!1392187 () Bool)

(assert (= bs!855021 (and d!1392187 d!1391529)))

(assert (=> bs!855021 (= (dynLambda!21159 lambda!172151 (h!56492 (toList!4323 lm!1477))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(assert (=> bs!855021 m!5264943))

(assert (=> b!4518483 d!1392187))

(declare-fun b_lambda!154821 () Bool)

(assert (= b_lambda!154765 (or b!4518382 b_lambda!154821)))

(declare-fun bs!855023 () Bool)

(declare-fun d!1392189 () Bool)

(assert (= bs!855023 (and d!1392189 b!4518382)))

(assert (=> bs!855023 (= (dynLambda!21160 lambda!172144 (h!56491 (toList!4324 lt!1695590))) (contains!13361 lt!1695590 (_1!28827 (h!56491 (toList!4324 lt!1695590)))))))

(declare-fun m!5266943 () Bool)

(assert (=> bs!855023 m!5266943))

(assert (=> b!4519265 d!1392189))

(declare-fun b_lambda!154823 () Bool)

(assert (= b_lambda!154763 (or b!4518382 b_lambda!154823)))

(assert (=> d!1392065 d!1392167))

(declare-fun b_lambda!154825 () Bool)

(assert (= b_lambda!154681 (or d!1391347 b_lambda!154825)))

(declare-fun bs!855025 () Bool)

(declare-fun d!1392191 () Bool)

(assert (= bs!855025 (and d!1392191 d!1391347)))

(assert (=> bs!855025 (= (dynLambda!21159 lambda!172031 (h!56492 (toList!4323 lm!1477))) (allKeysSameHash!1012 (_2!28828 (h!56492 (toList!4323 lm!1477))) (_1!28828 (h!56492 (toList!4323 lm!1477))) hashF!1107))))

(declare-fun m!5266945 () Bool)

(assert (=> bs!855025 m!5266945))

(assert (=> b!4518530 d!1392191))

(declare-fun b_lambda!154827 () Bool)

(assert (= b_lambda!154785 (or d!1391477 b_lambda!154827)))

(declare-fun bs!855028 () Bool)

(declare-fun d!1392193 () Bool)

(assert (= bs!855028 (and d!1392193 d!1391477)))

(assert (=> bs!855028 (= (dynLambda!21159 lambda!172136 (h!56492 (toList!4323 lm!1477))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lm!1477)))))))

(assert (=> bs!855028 m!5264943))

(assert (=> b!4519478 d!1392193))

(declare-fun b_lambda!154829 () Bool)

(assert (= b_lambda!154745 (or b!4518382 b_lambda!154829)))

(declare-fun bs!855030 () Bool)

(declare-fun d!1392195 () Bool)

(assert (= bs!855030 (and d!1392195 b!4518382)))

(assert (=> bs!855030 (= (dynLambda!21160 lambda!172145 (h!56491 (toList!4324 lt!1695590))) (contains!13361 lt!1695982 (_1!28827 (h!56491 (toList!4324 lt!1695590)))))))

(declare-fun m!5266947 () Bool)

(assert (=> bs!855030 m!5266947))

(assert (=> b!4519166 d!1392195))

(declare-fun b_lambda!154831 () Bool)

(assert (= b_lambda!154737 (or d!1391355 b_lambda!154831)))

(declare-fun bs!855031 () Bool)

(declare-fun d!1392197 () Bool)

(assert (= bs!855031 (and d!1392197 d!1391355)))

(assert (=> bs!855031 (= (dynLambda!21159 lambda!172050 (h!56492 (toList!4323 lt!1695586))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(assert (=> bs!855031 m!5265083))

(assert (=> b!4519122 d!1392197))

(declare-fun b_lambda!154833 () Bool)

(assert (= b_lambda!154725 (or d!1391331 b_lambda!154833)))

(declare-fun bs!855034 () Bool)

(declare-fun d!1392199 () Bool)

(assert (= bs!855034 (and d!1392199 d!1391331)))

(assert (=> bs!855034 (= (dynLambda!21159 lambda!172024 (h!56492 (toList!4323 lt!1695586))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(assert (=> bs!855034 m!5265083))

(assert (=> b!4518983 d!1392199))

(declare-fun b_lambda!154835 () Bool)

(assert (= b_lambda!154711 (or d!1391513 b_lambda!154835)))

(declare-fun bs!855036 () Bool)

(declare-fun d!1392201 () Bool)

(assert (= bs!855036 (and d!1392201 d!1391513)))

(assert (=> bs!855036 (= (dynLambda!21160 lambda!172146 (h!56491 (_2!28828 lt!1695575))) (contains!13361 lt!1695980 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun m!5266949 () Bool)

(assert (=> bs!855036 m!5266949))

(assert (=> b!4518856 d!1392201))

(declare-fun b_lambda!154837 () Bool)

(assert (= b_lambda!154723 (or d!1391335 b_lambda!154837)))

(declare-fun bs!855038 () Bool)

(declare-fun d!1392203 () Bool)

(assert (= bs!855038 (and d!1392203 d!1391335)))

(assert (=> bs!855038 (= (dynLambda!21159 lambda!172027 (h!56492 (toList!4323 lt!1695580))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695580)))))))

(assert (=> bs!855038 m!5265569))

(assert (=> b!4518976 d!1392203))

(declare-fun b_lambda!154839 () Bool)

(assert (= b_lambda!154779 (or d!1391351 b_lambda!154839)))

(declare-fun bs!855040 () Bool)

(declare-fun d!1392205 () Bool)

(assert (= bs!855040 (and d!1392205 d!1391351)))

(assert (=> bs!855040 (= (dynLambda!21159 lambda!172032 (h!56492 (t!357727 (toList!4323 lm!1477)))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (t!357727 (toList!4323 lm!1477))))))))

(assert (=> bs!855040 m!5265033))

(assert (=> b!4519433 d!1392205))

(declare-fun b_lambda!154841 () Bool)

(assert (= b_lambda!154719 (or d!1391495 b_lambda!154841)))

(declare-fun bs!855043 () Bool)

(declare-fun d!1392207 () Bool)

(assert (= bs!855043 (and d!1392207 d!1391495)))

(assert (=> bs!855043 (= (dynLambda!21159 lambda!172139 (h!56492 (toList!4323 lt!1695586))) (noDuplicateKeys!1158 (_2!28828 (h!56492 (toList!4323 lt!1695586)))))))

(assert (=> bs!855043 m!5265083))

(assert (=> b!4518957 d!1392207))

(declare-fun b_lambda!154843 () Bool)

(assert (= b_lambda!154691 (or b!4518240 b_lambda!154843)))

(declare-fun bs!855045 () Bool)

(declare-fun d!1392209 () Bool)

(assert (= bs!855045 (and d!1392209 b!4518240)))

(assert (=> bs!855045 (= (dynLambda!21160 lambda!172116 (h!56491 (toList!4324 lt!1695856))) (contains!13361 lt!1695841 (_1!28827 (h!56491 (toList!4324 lt!1695856)))))))

(declare-fun m!5266951 () Bool)

(assert (=> bs!855045 m!5266951))

(assert (=> b!4518665 d!1392209))

(declare-fun b_lambda!154845 () Bool)

(assert (= b_lambda!154677 (or d!1391499 b_lambda!154845)))

(declare-fun bs!855046 () Bool)

(declare-fun d!1392211 () Bool)

(assert (= bs!855046 (and d!1392211 d!1391499)))

(assert (=> bs!855046 (= (dynLambda!21160 lambda!172142 (h!56491 newBucket!178)) (= (hash!2799 hashF!1107 (_1!28827 (h!56491 newBucket!178))) hash!344))))

(declare-fun m!5266953 () Bool)

(assert (=> bs!855046 m!5266953))

(assert (=> b!4518445 d!1392211))

(declare-fun b_lambda!154847 () Bool)

(assert (= b_lambda!154683 (or d!1391367 b_lambda!154847)))

(declare-fun bs!855048 () Bool)

(declare-fun d!1392213 () Bool)

(assert (= bs!855048 (and d!1392213 d!1391367)))

(assert (=> bs!855048 (= (dynLambda!21160 lambda!172119 (h!56491 (_2!28828 lt!1695575))) (contains!13361 lt!1695839 (_1!28827 (h!56491 (_2!28828 lt!1695575)))))))

(declare-fun m!5266955 () Bool)

(assert (=> bs!855048 m!5266955))

(assert (=> b!4518542 d!1392213))

(declare-fun b_lambda!154849 () Bool)

(assert (= b_lambda!154703 (or b!4518240 b_lambda!154849)))

(assert (=> d!1391717 d!1392177))

(check-sat (not b!4518528) (not b!4518471) (not b!4519060) (not b!4518854) (not b!4518958) (not bs!855010) (not b!4518423) (not b!4518551) (not bm!314790) (not d!1391851) (not b!4519183) (not b!4519273) (not b!4518753) (not b!4518482) (not b!4519492) (not d!1391697) (not b!4518791) (not b_lambda!154845) (not b!4518860) (not b!4519254) (not b!4518469) (not d!1392065) (not b!4519009) (not b_lambda!154799) (not b!4518693) (not d!1391943) (not b!4519452) (not b!4518424) (not b_lambda!154849) (not d!1391699) (not b!4519044) (not b!4519437) (not bm!314809) (not b!4518560) (not b!4518863) (not b!4519069) (not b!4518733) (not b!4518468) (not bs!855021) (not d!1391653) (not b!4519304) (not b!4518668) (not b!4518754) (not b!4519076) (not b_lambda!154813) (not b!4519205) (not b!4518925) (not bm!314824) (not d!1391549) (not d!1391743) (not b!4519292) (not b!4518621) (not b!4518756) (not b_lambda!154841) (not bs!855011) (not d!1391993) (not b!4519445) (not bs!855034) (not d!1391729) (not b!4519301) (not b_lambda!154807) (not d!1392133) (not b!4518550) (not b!4518428) (not d!1391555) (not bm!314780) (not b!4518670) (not b!4518981) (not d!1392145) (not bm!314792) (not b_lambda!154787) (not b_lambda!154801) (not b!4519285) (not bm!314786) (not b_lambda!154671) (not bm!314762) (not b!4519221) (not b!4518436) (not d!1392143) (not b!4519167) (not b!4518859) (not b!4519220) (not d!1391621) (not bm!314856) (not b!4519255) (not b!4518984) (not b!4518582) (not d!1391671) (not b!4518752) (not d!1392121) (not d!1391559) (not b_lambda!154837) (not b!4519442) (not d!1391941) (not b!4519077) (not bm!314802) (not b!4518918) (not b_lambda!154823) (not bm!314826) (not d!1391891) (not b_lambda!154831) (not bm!314763) (not b!4519202) (not b!4519444) (not b!4518967) (not b!4518476) (not d!1391545) (not b_lambda!154817) (not b!4519405) (not d!1391847) (not bs!855045) (not b!4518954) (not b!4518666) (not b!4519067) (not b!4519414) (not b!4519483) (not bs!855016) (not b!4519078) (not d!1391737) (not d!1391667) (not b_lambda!154839) (not b!4518729) (not bs!855015) (not b!4518712) (not b!4519297) (not b!4519082) (not d!1391951) (not b!4519206) (not bm!314765) (not b_lambda!154821) (not bs!855036) (not b!4518577) (not b!4519180) (not b!4518980) (not b_lambda!154795) (not d!1391605) (not b!4519401) (not b!4518456) (not b!4518595) (not d!1391841) (not b!4518629) (not d!1391747) (not b!4518982) (not b!4518588) (not b!4518487) (not b!4518429) (not b!4519216) (not bs!855043) (not b!4518647) (not b!4518491) (not b!4519061) (not b!4518780) (not b!4518975) (not b!4519411) (not b!4518457) (not b!4519266) (not b_lambda!154811) (not d!1392097) (not bm!314858) (not b!4519479) (not b!4519136) (not b!4518543) (not bs!855018) (not b!4518583) (not b!4519123) (not b!4518977) (not d!1391575) (not b!4519012) (not bs!855012) (not b!4519268) (not b!4518979) (not b!4519489) (not d!1391945) (not b!4519294) (not b!4518660) (not d!1392045) (not bm!314787) (not bs!855013) (not b!4519011) (not b!4518917) (not d!1391845) (not b_lambda!154791) (not b!4518719) (not b_lambda!154797) (not d!1392027) (not b_lambda!154793) (not b!4518943) (not d!1391877) (not d!1391627) (not bm!314803) (not b!4518939) (not bm!314822) (not b!4519448) (not b!4518554) (not d!1391741) (not bs!855025) (not bm!314830) (not d!1391655) (not b!4518822) (not bm!314761) (not d!1392079) (not b!4518555) (not d!1391991) (not d!1392123) (not d!1391745) tp_is_empty!27909 (not b!4518624) (not b!4519271) (not bm!314789) (not b!4519034) (not b_lambda!154675) (not b!4519451) (not d!1391949) (not b!4519298) (not bs!855014) (not b!4518518) (not d!1391609) (not b!4518472) (not bm!314855) (not b!4518937) (not b!4518531) (not b!4518825) (not b!4519172) (not b!4518690) (not d!1391885) (not b!4518688) (not bs!855008) (not b!4519185) (not d!1391915) (not b!4518561) (not d!1391613) (not d!1392151) (not bm!314769) (not b!4519154) (not bm!314860) (not d!1392091) (not b!4518723) (not b!4519303) (not b!4518711) (not b!4518932) (not b!4519062) (not b!4519267) (not d!1392037) (not b!4519299) (not b!4519201) (not b!4518793) tp_is_empty!27911 (not b!4518718) (not b!4518552) (not bm!314857) (not d!1392063) (not d!1392023) (not b!4518730) (not b!4519042) (not b!4519481) (not bm!314815) (not b!4518997) (not b!4518724) (not b!4518507) (not b!4518557) (not b!4519413) (not b!4518594) (not b_lambda!154805) (not d!1391557) (not b!4518966) (not b!4518549) (not b!4519274) (not d!1391649) (not bs!855028) (not bm!314788) (not d!1392061) (not b!4518823) (not b!4518502) (not d!1391855) (not b!4519446) (not b!4518818) (not d!1391995) (not b!4518523) (not b!4519440) (not b!4518505) (not b_lambda!154815) (not b!4519486) (not b!4518968) (not d!1391947) (not b_lambda!154809) (not bm!314817) (not d!1392141) (not bs!855048) (not b!4519416) (not b!4518426) (not b!4519259) (not d!1391593) (not b!4519065) (not d!1392077) (not d!1391577) (not d!1391537) (not b_lambda!154721) (not d!1391561) (not b!4519261) (not b!4518757) (not b!4519038) (not b!4518425) (not bs!855023) (not b_lambda!154673) (not bs!855006) (not b!4518521) (not b!4519432) (not b!4518821) (not bm!314816) (not b!4518978) (not b!4519404) (not d!1391881) (not b!4518655) (not d!1391869) (not b!4519399) (not b_lambda!154827) (not b!4519218) (not b!4519079) (not b!4518951) (not b_lambda!154847) (not b!4518620) (not b!4519491) (not b!4519046) (not bs!855038) (not b!4518556) (not b!4519171) (not d!1391765) (not b!4518961) (not d!1391585) (not bm!314804) (not b!4519142) (not bm!314768) (not d!1391977) (not d!1392135) (not b!4519490) (not d!1391719) (not b!4518934) (not b_lambda!154689) (not bs!855031) (not b!4518944) (not bs!855007) (not b!4518815) (not b!4518559) (not d!1391849) (not b!4519209) (not b!4519269) (not b!4518720) (not b!4519436) (not b!4519037) (not bm!314825) (not bm!314783) (not b!4518947) (not b!4519251) (not b!4518692) (not bm!314791) (not b!4518686) (not d!1392067) (not b_lambda!154843) (not b!4518634) (not bs!855030) (not b!4518689) (not b!4519008) (not bm!314766) (not d!1391547) (not b!4518580) (not b!4519262) (not b!4518437) (not b!4518717) (not b!4518963) (not d!1391887) (not b!4518585) (not d!1391893) (not b!4519263) (not b!4519199) (not d!1391807) (not d!1392159) (not d!1391625) (not d!1392035) (not b!4519434) (not b!4519214) (not d!1391795) (not b!4519447) (not b!4518453) (not b!4518541) (not d!1391953) (not bm!314829) (not b!4519300) (not b!4518940) (not b!4518930) (not b!4518857) (not b!4519296) (not bs!855009) (not d!1391717) (not b!4518574) (not d!1391539) (not bs!855040) (not b!4519449) (not b!4518484) (not d!1391987) (not bm!314859) (not b!4518687) (not bm!314764) (not d!1391731) (not d!1392099) (not d!1391587) (not bm!314814) (not b!4518632) (not bm!314834) (not d!1391571) (not b!4519039) (not b!4518465) (not bm!314869) (not d!1391563) (not b!4519253) (not b!4519256) (not b!4519217) (not b_lambda!154825) (not d!1392071) (not b!4518639) (not d!1391591) (not d!1391603) (not b!4518458) (not b!4518631) (not b!4518651) (not b!4518923) (not b!4519140) (not b!4519080) (not b!4518446) (not b!4518452) (not b!4519258) (not b!4518473) (not b!4518438) (not b!4518534) (not bm!314785) (not bm!314767) (not d!1391905) (not b!4519083) (not b!4519252) (not b!4518861) (not b!4518921) (not b_lambda!154819) (not b_lambda!154835) (not b!4518652) (not d!1391567) (not b!4519270) (not b!4518648) (not b!4519278) (not b!4518721) (not b_lambda!154753) (not d!1392013) (not b!4518525) (not b!4519406) (not b_lambda!154829) (not b!4519174) (not d!1391685) (not d!1391673) (not bs!855046) (not b!4518826) (not b!4518732) (not b!4518728) (not b_lambda!154803) (not b!4519403) (not b!4519129) (not b!4518467) (not b!4518454) (not b!4519280) (not d!1391709) (not b_lambda!154833) (not b!4519438) (not d!1391541))
(check-sat)
