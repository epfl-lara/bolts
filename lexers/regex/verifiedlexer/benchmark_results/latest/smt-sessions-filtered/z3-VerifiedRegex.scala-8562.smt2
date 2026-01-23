; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!452424 () Bool)

(assert start!452424)

(declare-fun b!4552607 () Bool)

(declare-datatypes ((Unit!100859 0))(
  ( (Unit!100860) )
))
(declare-fun e!2837448 () Unit!100859)

(declare-fun Unit!100861 () Unit!100859)

(assert (=> b!4552607 (= e!2837448 Unit!100861)))

(declare-fun b!4552608 () Bool)

(declare-fun res!1898830 () Bool)

(declare-fun e!2837452 () Bool)

(assert (=> b!4552608 (=> (not res!1898830) (not e!2837452))))

(declare-datatypes ((K!12215 0))(
  ( (K!12216 (val!18043 Int)) )
))
(declare-datatypes ((V!12461 0))(
  ( (V!12462 (val!18044 Int)) )
))
(declare-datatypes ((tuple2!51354 0))(
  ( (tuple2!51355 (_1!28971 K!12215) (_2!28971 V!12461)) )
))
(declare-datatypes ((List!50955 0))(
  ( (Nil!50831) (Cons!50831 (h!56730 tuple2!51354) (t!357925 List!50955)) )
))
(declare-datatypes ((tuple2!51356 0))(
  ( (tuple2!51357 (_1!28972 (_ BitVec 64)) (_2!28972 List!50955)) )
))
(declare-datatypes ((List!50956 0))(
  ( (Nil!50832) (Cons!50832 (h!56731 tuple2!51356) (t!357926 List!50956)) )
))
(declare-datatypes ((ListLongMap!3099 0))(
  ( (ListLongMap!3100 (toList!4467 List!50956)) )
))
(declare-fun lm!1477 () ListLongMap!3099)

(declare-fun key!3287 () K!12215)

(declare-datatypes ((ListMap!3729 0))(
  ( (ListMap!3730 (toList!4468 List!50955)) )
))
(declare-fun contains!13670 (ListMap!3729 K!12215) Bool)

(declare-fun extractMap!1286 (List!50956) ListMap!3729)

(assert (=> b!4552608 (= res!1898830 (contains!13670 (extractMap!1286 (toList!4467 lm!1477)) key!3287))))

(declare-fun b!4552609 () Bool)

(declare-fun e!2837449 () Bool)

(declare-fun e!2837458 () Bool)

(assert (=> b!4552609 (= e!2837449 e!2837458)))

(declare-fun res!1898834 () Bool)

(assert (=> b!4552609 (=> res!1898834 e!2837458)))

(declare-fun lt!1725007 () Bool)

(assert (=> b!4552609 (= res!1898834 lt!1725007)))

(declare-fun lt!1725013 () Unit!100859)

(assert (=> b!4552609 (= lt!1725013 e!2837448)))

(declare-fun c!778046 () Bool)

(assert (=> b!4552609 (= c!778046 lt!1725007)))

(declare-fun lt!1725010 () ListMap!3729)

(assert (=> b!4552609 (= lt!1725007 (contains!13670 lt!1725010 key!3287))))

(declare-fun e!2837455 () Bool)

(declare-fun b!4552610 () Bool)

(declare-fun newBucket!178 () List!50955)

(declare-fun lt!1725000 () ListLongMap!3099)

(declare-fun lt!1725006 () ListMap!3729)

(declare-fun eq!681 (ListMap!3729 ListMap!3729) Bool)

(declare-fun addToMapMapFromBucket!748 (List!50955 ListMap!3729) ListMap!3729)

(assert (=> b!4552610 (= e!2837455 (eq!681 (extractMap!1286 (toList!4467 lt!1725000)) (addToMapMapFromBucket!748 newBucket!178 lt!1725006)))))

(declare-fun tp_is_empty!28199 () Bool)

(declare-fun tp_is_empty!28197 () Bool)

(declare-fun b!4552611 () Bool)

(declare-fun tp!1339031 () Bool)

(declare-fun e!2837450 () Bool)

(assert (=> b!4552611 (= e!2837450 (and tp_is_empty!28197 tp_is_empty!28199 tp!1339031))))

(declare-fun b!4552612 () Bool)

(declare-fun e!2837459 () Bool)

(declare-fun e!2837451 () Bool)

(assert (=> b!4552612 (= e!2837459 e!2837451)))

(declare-fun res!1898824 () Bool)

(assert (=> b!4552612 (=> res!1898824 e!2837451)))

(declare-fun lt!1725020 () Bool)

(assert (=> b!4552612 (= res!1898824 lt!1725020)))

(declare-fun lt!1725019 () Unit!100859)

(declare-fun e!2837446 () Unit!100859)

(assert (=> b!4552612 (= lt!1725019 e!2837446)))

(declare-fun c!778047 () Bool)

(assert (=> b!4552612 (= c!778047 lt!1725020)))

(declare-fun containsKey!1941 (List!50955 K!12215) Bool)

(assert (=> b!4552612 (= lt!1725020 (not (containsKey!1941 (_2!28972 (h!56731 (toList!4467 lm!1477))) key!3287)))))

(declare-fun b!4552613 () Bool)

(declare-fun res!1898832 () Bool)

(declare-fun e!2837457 () Bool)

(assert (=> b!4552613 (=> (not res!1898832) (not e!2837457))))

(declare-datatypes ((Hashable!5625 0))(
  ( (HashableExt!5624 (__x!31328 Int)) )
))
(declare-fun hashF!1107 () Hashable!5625)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!1084 (List!50955 (_ BitVec 64) Hashable!5625) Bool)

(assert (=> b!4552613 (= res!1898832 (allKeysSameHash!1084 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4552614 () Bool)

(declare-fun e!2837445 () Bool)

(assert (=> b!4552614 (= e!2837445 false)))

(declare-fun b!4552615 () Bool)

(declare-fun e!2837454 () Bool)

(declare-fun e!2837453 () Bool)

(assert (=> b!4552615 (= e!2837454 e!2837453)))

(declare-fun res!1898823 () Bool)

(assert (=> b!4552615 (=> res!1898823 e!2837453)))

(declare-fun lt!1725003 () tuple2!51356)

(declare-fun lt!1725015 () ListLongMap!3099)

(declare-fun +!1646 (ListLongMap!3099 tuple2!51356) ListLongMap!3099)

(assert (=> b!4552615 (= res!1898823 (not (= lt!1725000 (+!1646 lt!1725015 lt!1725003))))))

(declare-fun tail!7841 (ListLongMap!3099) ListLongMap!3099)

(assert (=> b!4552615 (= lt!1725015 (tail!7841 lm!1477))))

(declare-fun b!4552616 () Bool)

(declare-fun e!2837447 () Bool)

(assert (=> b!4552616 (= e!2837451 e!2837447)))

(declare-fun res!1898827 () Bool)

(assert (=> b!4552616 (=> res!1898827 e!2837447)))

(declare-fun lt!1725008 () List!50956)

(declare-fun containsKeyBiggerList!208 (List!50956 K!12215) Bool)

(assert (=> b!4552616 (= res!1898827 (not (containsKeyBiggerList!208 lt!1725008 key!3287)))))

(assert (=> b!4552616 (= lt!1725008 (Cons!50832 (h!56731 (toList!4467 lm!1477)) Nil!50832))))

(declare-fun res!1898828 () Bool)

(assert (=> start!452424 (=> (not res!1898828) (not e!2837452))))

(declare-fun lambda!178431 () Int)

(declare-fun forall!10403 (List!50956 Int) Bool)

(assert (=> start!452424 (= res!1898828 (forall!10403 (toList!4467 lm!1477) lambda!178431))))

(assert (=> start!452424 e!2837452))

(assert (=> start!452424 true))

(declare-fun e!2837456 () Bool)

(declare-fun inv!66399 (ListLongMap!3099) Bool)

(assert (=> start!452424 (and (inv!66399 lm!1477) e!2837456)))

(assert (=> start!452424 tp_is_empty!28197))

(assert (=> start!452424 e!2837450))

(declare-fun b!4552617 () Bool)

(assert (=> b!4552617 (= e!2837457 (not e!2837459))))

(declare-fun res!1898829 () Bool)

(assert (=> b!4552617 (=> res!1898829 e!2837459)))

(declare-fun lt!1725005 () List!50955)

(declare-fun removePairForKey!857 (List!50955 K!12215) List!50955)

(assert (=> b!4552617 (= res!1898829 (not (= newBucket!178 (removePairForKey!857 lt!1725005 key!3287))))))

(declare-fun lt!1725017 () Unit!100859)

(declare-fun lt!1725014 () tuple2!51356)

(declare-fun forallContained!2667 (List!50956 Int tuple2!51356) Unit!100859)

(assert (=> b!4552617 (= lt!1725017 (forallContained!2667 (toList!4467 lm!1477) lambda!178431 lt!1725014))))

(declare-fun contains!13671 (List!50956 tuple2!51356) Bool)

(assert (=> b!4552617 (contains!13671 (toList!4467 lm!1477) lt!1725014)))

(assert (=> b!4552617 (= lt!1725014 (tuple2!51357 hash!344 lt!1725005))))

(declare-fun lt!1725021 () Unit!100859)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!742 (List!50956 (_ BitVec 64) List!50955) Unit!100859)

(assert (=> b!4552617 (= lt!1725021 (lemmaGetValueByKeyImpliesContainsTuple!742 (toList!4467 lm!1477) hash!344 lt!1725005))))

(declare-fun apply!11967 (ListLongMap!3099 (_ BitVec 64)) List!50955)

(assert (=> b!4552617 (= lt!1725005 (apply!11967 lm!1477 hash!344))))

(declare-fun lt!1725009 () (_ BitVec 64))

(declare-fun contains!13672 (ListLongMap!3099 (_ BitVec 64)) Bool)

(assert (=> b!4552617 (contains!13672 lm!1477 lt!1725009)))

(declare-fun lt!1725004 () Unit!100859)

(declare-fun lemmaInGenMapThenLongMapContainsHash!304 (ListLongMap!3099 K!12215 Hashable!5625) Unit!100859)

(assert (=> b!4552617 (= lt!1725004 (lemmaInGenMapThenLongMapContainsHash!304 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4552618 () Bool)

(declare-fun res!1898825 () Bool)

(assert (=> b!4552618 (=> res!1898825 e!2837459)))

(declare-fun noDuplicateKeys!1230 (List!50955) Bool)

(assert (=> b!4552618 (= res!1898825 (not (noDuplicateKeys!1230 newBucket!178)))))

(declare-fun b!4552619 () Bool)

(assert (=> b!4552619 (= e!2837458 e!2837455)))

(declare-fun res!1898822 () Bool)

(assert (=> b!4552619 (=> res!1898822 e!2837455)))

(assert (=> b!4552619 (= res!1898822 (not (= (toList!4467 lt!1725000) (Cons!50832 lt!1725003 (t!357926 (toList!4467 lm!1477))))))))

(declare-fun lt!1725018 () tuple2!51356)

(declare-fun lt!1725022 () List!50956)

(declare-fun -!450 (ListMap!3729 K!12215) ListMap!3729)

(assert (=> b!4552619 (eq!681 (extractMap!1286 (Cons!50832 lt!1725003 lt!1725022)) (-!450 (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022)) key!3287))))

(declare-fun tail!7842 (List!50956) List!50956)

(assert (=> b!4552619 (= lt!1725022 (tail!7842 (toList!4467 lm!1477)))))

(declare-fun lt!1725002 () Unit!100859)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!28 (ListLongMap!3099 (_ BitVec 64) List!50955 List!50955 K!12215 Hashable!5625) Unit!100859)

(assert (=> b!4552619 (= lt!1725002 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!28 lm!1477 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4552620 () Bool)

(declare-fun Unit!100862 () Unit!100859)

(assert (=> b!4552620 (= e!2837446 Unit!100862)))

(declare-fun lt!1725001 () Unit!100859)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!218 (ListLongMap!3099 K!12215 Hashable!5625) Unit!100859)

(assert (=> b!4552620 (= lt!1725001 (lemmaNotInItsHashBucketThenNotInMap!218 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4552620 false))

(declare-fun b!4552621 () Bool)

(declare-fun Unit!100863 () Unit!100859)

(assert (=> b!4552621 (= e!2837446 Unit!100863)))

(declare-fun b!4552622 () Bool)

(declare-fun res!1898831 () Bool)

(assert (=> b!4552622 (=> (not res!1898831) (not e!2837452))))

(declare-fun allKeysSameHashInMap!1337 (ListLongMap!3099 Hashable!5625) Bool)

(assert (=> b!4552622 (= res!1898831 (allKeysSameHashInMap!1337 lm!1477 hashF!1107))))

(declare-fun b!4552623 () Bool)

(declare-fun res!1898820 () Bool)

(assert (=> b!4552623 (=> res!1898820 e!2837459)))

(get-info :version)

(assert (=> b!4552623 (= res!1898820 (or ((_ is Nil!50832) (toList!4467 lm!1477)) (not (= (_1!28972 (h!56731 (toList!4467 lm!1477))) hash!344))))))

(declare-fun b!4552624 () Bool)

(assert (=> b!4552624 (= e!2837452 e!2837457)))

(declare-fun res!1898819 () Bool)

(assert (=> b!4552624 (=> (not res!1898819) (not e!2837457))))

(assert (=> b!4552624 (= res!1898819 (= lt!1725009 hash!344))))

(declare-fun hash!2994 (Hashable!5625 K!12215) (_ BitVec 64))

(assert (=> b!4552624 (= lt!1725009 (hash!2994 hashF!1107 key!3287))))

(declare-fun b!4552625 () Bool)

(declare-fun Unit!100864 () Unit!100859)

(assert (=> b!4552625 (= e!2837448 Unit!100864)))

(declare-fun lt!1725011 () Unit!100859)

(assert (=> b!4552625 (= lt!1725011 (lemmaInGenMapThenLongMapContainsHash!304 lt!1725015 key!3287 hashF!1107))))

(declare-fun res!1898821 () Bool)

(assert (=> b!4552625 (= res!1898821 (contains!13672 lt!1725015 lt!1725009))))

(assert (=> b!4552625 (=> (not res!1898821) (not e!2837445))))

(assert (=> b!4552625 e!2837445))

(declare-fun b!4552626 () Bool)

(assert (=> b!4552626 (= e!2837453 e!2837449)))

(declare-fun res!1898833 () Bool)

(assert (=> b!4552626 (=> res!1898833 e!2837449)))

(assert (=> b!4552626 (= res!1898833 (not (= lt!1725010 lt!1725006)))))

(assert (=> b!4552626 (= lt!1725006 (extractMap!1286 (t!357926 (toList!4467 lm!1477))))))

(assert (=> b!4552626 (= lt!1725010 (extractMap!1286 (toList!4467 lt!1725015)))))

(declare-fun b!4552627 () Bool)

(assert (=> b!4552627 (= e!2837447 e!2837454)))

(declare-fun res!1898826 () Bool)

(assert (=> b!4552627 (=> res!1898826 e!2837454)))

(assert (=> b!4552627 (= res!1898826 (not (= (t!357926 (toList!4467 lm!1477)) (tail!7842 (toList!4467 lt!1725000)))))))

(assert (=> b!4552627 (= lt!1725000 (+!1646 lm!1477 lt!1725003))))

(assert (=> b!4552627 (eq!681 (extractMap!1286 (Cons!50832 lt!1725003 Nil!50832)) (-!450 (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832)) key!3287))))

(assert (=> b!4552627 (= lt!1725018 (tuple2!51357 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477)))))))

(assert (=> b!4552627 (= lt!1725003 (tuple2!51357 hash!344 newBucket!178))))

(declare-fun lt!1725012 () Unit!100859)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!70 ((_ BitVec 64) List!50955 List!50955 K!12215 Hashable!5625) Unit!100859)

(assert (=> b!4552627 (= lt!1725012 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!70 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4552627 (contains!13670 (extractMap!1286 lt!1725008) key!3287)))

(declare-fun lt!1725016 () Unit!100859)

(declare-fun lemmaListContainsThenExtractedMapContains!196 (ListLongMap!3099 K!12215 Hashable!5625) Unit!100859)

(assert (=> b!4552627 (= lt!1725016 (lemmaListContainsThenExtractedMapContains!196 (ListLongMap!3100 lt!1725008) key!3287 hashF!1107))))

(declare-fun b!4552628 () Bool)

(declare-fun tp!1339030 () Bool)

(assert (=> b!4552628 (= e!2837456 tp!1339030)))

(assert (= (and start!452424 res!1898828) b!4552622))

(assert (= (and b!4552622 res!1898831) b!4552608))

(assert (= (and b!4552608 res!1898830) b!4552624))

(assert (= (and b!4552624 res!1898819) b!4552613))

(assert (= (and b!4552613 res!1898832) b!4552617))

(assert (= (and b!4552617 (not res!1898829)) b!4552618))

(assert (= (and b!4552618 (not res!1898825)) b!4552623))

(assert (= (and b!4552623 (not res!1898820)) b!4552612))

(assert (= (and b!4552612 c!778047) b!4552620))

(assert (= (and b!4552612 (not c!778047)) b!4552621))

(assert (= (and b!4552612 (not res!1898824)) b!4552616))

(assert (= (and b!4552616 (not res!1898827)) b!4552627))

(assert (= (and b!4552627 (not res!1898826)) b!4552615))

(assert (= (and b!4552615 (not res!1898823)) b!4552626))

(assert (= (and b!4552626 (not res!1898833)) b!4552609))

(assert (= (and b!4552609 c!778046) b!4552625))

(assert (= (and b!4552609 (not c!778046)) b!4552607))

(assert (= (and b!4552625 res!1898821) b!4552614))

(assert (= (and b!4552609 (not res!1898834)) b!4552619))

(assert (= (and b!4552619 (not res!1898822)) b!4552610))

(assert (= start!452424 b!4552628))

(assert (= (and start!452424 ((_ is Cons!50831) newBucket!178)) b!4552611))

(declare-fun m!5331927 () Bool)

(assert (=> b!4552626 m!5331927))

(declare-fun m!5331929 () Bool)

(assert (=> b!4552626 m!5331929))

(declare-fun m!5331931 () Bool)

(assert (=> b!4552608 m!5331931))

(assert (=> b!4552608 m!5331931))

(declare-fun m!5331933 () Bool)

(assert (=> b!4552608 m!5331933))

(declare-fun m!5331935 () Bool)

(assert (=> b!4552618 m!5331935))

(declare-fun m!5331937 () Bool)

(assert (=> b!4552613 m!5331937))

(declare-fun m!5331939 () Bool)

(assert (=> b!4552622 m!5331939))

(declare-fun m!5331941 () Bool)

(assert (=> b!4552616 m!5331941))

(declare-fun m!5331943 () Bool)

(assert (=> b!4552627 m!5331943))

(declare-fun m!5331945 () Bool)

(assert (=> b!4552627 m!5331945))

(declare-fun m!5331947 () Bool)

(assert (=> b!4552627 m!5331947))

(declare-fun m!5331949 () Bool)

(assert (=> b!4552627 m!5331949))

(declare-fun m!5331951 () Bool)

(assert (=> b!4552627 m!5331951))

(declare-fun m!5331953 () Bool)

(assert (=> b!4552627 m!5331953))

(declare-fun m!5331955 () Bool)

(assert (=> b!4552627 m!5331955))

(assert (=> b!4552627 m!5331947))

(declare-fun m!5331957 () Bool)

(assert (=> b!4552627 m!5331957))

(assert (=> b!4552627 m!5331951))

(declare-fun m!5331959 () Bool)

(assert (=> b!4552627 m!5331959))

(declare-fun m!5331961 () Bool)

(assert (=> b!4552627 m!5331961))

(assert (=> b!4552627 m!5331943))

(assert (=> b!4552627 m!5331959))

(declare-fun m!5331963 () Bool)

(assert (=> b!4552615 m!5331963))

(declare-fun m!5331965 () Bool)

(assert (=> b!4552615 m!5331965))

(declare-fun m!5331967 () Bool)

(assert (=> b!4552620 m!5331967))

(declare-fun m!5331969 () Bool)

(assert (=> b!4552625 m!5331969))

(declare-fun m!5331971 () Bool)

(assert (=> b!4552625 m!5331971))

(declare-fun m!5331973 () Bool)

(assert (=> b!4552619 m!5331973))

(declare-fun m!5331975 () Bool)

(assert (=> b!4552619 m!5331975))

(declare-fun m!5331977 () Bool)

(assert (=> b!4552619 m!5331977))

(declare-fun m!5331979 () Bool)

(assert (=> b!4552619 m!5331979))

(assert (=> b!4552619 m!5331975))

(declare-fun m!5331981 () Bool)

(assert (=> b!4552619 m!5331981))

(assert (=> b!4552619 m!5331979))

(assert (=> b!4552619 m!5331973))

(declare-fun m!5331983 () Bool)

(assert (=> b!4552619 m!5331983))

(declare-fun m!5331985 () Bool)

(assert (=> b!4552610 m!5331985))

(declare-fun m!5331987 () Bool)

(assert (=> b!4552610 m!5331987))

(assert (=> b!4552610 m!5331985))

(assert (=> b!4552610 m!5331987))

(declare-fun m!5331989 () Bool)

(assert (=> b!4552610 m!5331989))

(declare-fun m!5331991 () Bool)

(assert (=> b!4552612 m!5331991))

(declare-fun m!5331993 () Bool)

(assert (=> b!4552617 m!5331993))

(declare-fun m!5331995 () Bool)

(assert (=> b!4552617 m!5331995))

(declare-fun m!5331997 () Bool)

(assert (=> b!4552617 m!5331997))

(declare-fun m!5331999 () Bool)

(assert (=> b!4552617 m!5331999))

(declare-fun m!5332001 () Bool)

(assert (=> b!4552617 m!5332001))

(declare-fun m!5332003 () Bool)

(assert (=> b!4552617 m!5332003))

(declare-fun m!5332005 () Bool)

(assert (=> b!4552617 m!5332005))

(declare-fun m!5332007 () Bool)

(assert (=> start!452424 m!5332007))

(declare-fun m!5332009 () Bool)

(assert (=> start!452424 m!5332009))

(declare-fun m!5332011 () Bool)

(assert (=> b!4552609 m!5332011))

(declare-fun m!5332013 () Bool)

(assert (=> b!4552624 m!5332013))

(check-sat tp_is_empty!28199 (not b!4552627) (not b!4552615) (not b!4552612) (not b!4552613) (not b!4552617) (not b!4552625) (not b!4552626) (not b!4552608) (not b!4552624) (not b!4552610) (not b!4552622) (not b!4552611) (not b!4552609) (not b!4552620) (not b!4552628) (not b!4552619) (not b!4552618) tp_is_empty!28197 (not start!452424) (not b!4552616))
(check-sat)
(get-model)

(declare-fun d!1411081 () Bool)

(declare-fun hash!2999 (Hashable!5625 K!12215) (_ BitVec 64))

(assert (=> d!1411081 (= (hash!2994 hashF!1107 key!3287) (hash!2999 hashF!1107 key!3287))))

(declare-fun bs!903550 () Bool)

(assert (= bs!903550 d!1411081))

(declare-fun m!5332015 () Bool)

(assert (=> bs!903550 m!5332015))

(assert (=> b!4552624 d!1411081))

(declare-fun d!1411083 () Bool)

(assert (=> d!1411083 true))

(assert (=> d!1411083 true))

(declare-fun lambda!178434 () Int)

(declare-fun forall!10404 (List!50955 Int) Bool)

(assert (=> d!1411083 (= (allKeysSameHash!1084 newBucket!178 hash!344 hashF!1107) (forall!10404 newBucket!178 lambda!178434))))

(declare-fun bs!903551 () Bool)

(assert (= bs!903551 d!1411083))

(declare-fun m!5332017 () Bool)

(assert (=> bs!903551 m!5332017))

(assert (=> b!4552613 d!1411083))

(declare-fun d!1411085 () Bool)

(declare-fun res!1898839 () Bool)

(declare-fun e!2837464 () Bool)

(assert (=> d!1411085 (=> res!1898839 e!2837464)))

(assert (=> d!1411085 (= res!1898839 (and ((_ is Cons!50831) (_2!28972 (h!56731 (toList!4467 lm!1477)))) (= (_1!28971 (h!56730 (_2!28972 (h!56731 (toList!4467 lm!1477))))) key!3287)))))

(assert (=> d!1411085 (= (containsKey!1941 (_2!28972 (h!56731 (toList!4467 lm!1477))) key!3287) e!2837464)))

(declare-fun b!4552637 () Bool)

(declare-fun e!2837465 () Bool)

(assert (=> b!4552637 (= e!2837464 e!2837465)))

(declare-fun res!1898840 () Bool)

(assert (=> b!4552637 (=> (not res!1898840) (not e!2837465))))

(assert (=> b!4552637 (= res!1898840 ((_ is Cons!50831) (_2!28972 (h!56731 (toList!4467 lm!1477)))))))

(declare-fun b!4552638 () Bool)

(assert (=> b!4552638 (= e!2837465 (containsKey!1941 (t!357925 (_2!28972 (h!56731 (toList!4467 lm!1477)))) key!3287))))

(assert (= (and d!1411085 (not res!1898839)) b!4552637))

(assert (= (and b!4552637 res!1898840) b!4552638))

(declare-fun m!5332019 () Bool)

(assert (=> b!4552638 m!5332019))

(assert (=> b!4552612 d!1411085))

(declare-fun bs!903556 () Bool)

(declare-fun d!1411087 () Bool)

(assert (= bs!903556 (and d!1411087 start!452424)))

(declare-fun lambda!178441 () Int)

(assert (=> bs!903556 (= lambda!178441 lambda!178431)))

(declare-fun lt!1725038 () ListMap!3729)

(declare-fun invariantList!1062 (List!50955) Bool)

(assert (=> d!1411087 (invariantList!1062 (toList!4468 lt!1725038))))

(declare-fun e!2837496 () ListMap!3729)

(assert (=> d!1411087 (= lt!1725038 e!2837496)))

(declare-fun c!778060 () Bool)

(assert (=> d!1411087 (= c!778060 ((_ is Cons!50832) lt!1725008))))

(assert (=> d!1411087 (forall!10403 lt!1725008 lambda!178441)))

(assert (=> d!1411087 (= (extractMap!1286 lt!1725008) lt!1725038)))

(declare-fun b!4552681 () Bool)

(assert (=> b!4552681 (= e!2837496 (addToMapMapFromBucket!748 (_2!28972 (h!56731 lt!1725008)) (extractMap!1286 (t!357926 lt!1725008))))))

(declare-fun b!4552682 () Bool)

(assert (=> b!4552682 (= e!2837496 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411087 c!778060) b!4552681))

(assert (= (and d!1411087 (not c!778060)) b!4552682))

(declare-fun m!5332061 () Bool)

(assert (=> d!1411087 m!5332061))

(declare-fun m!5332063 () Bool)

(assert (=> d!1411087 m!5332063))

(declare-fun m!5332065 () Bool)

(assert (=> b!4552681 m!5332065))

(assert (=> b!4552681 m!5332065))

(declare-fun m!5332067 () Bool)

(assert (=> b!4552681 m!5332067))

(assert (=> b!4552627 d!1411087))

(declare-fun d!1411105 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8489 (List!50955) (InoxSet tuple2!51354))

(assert (=> d!1411105 (= (eq!681 (extractMap!1286 (Cons!50832 lt!1725003 Nil!50832)) (-!450 (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832)) key!3287)) (= (content!8489 (toList!4468 (extractMap!1286 (Cons!50832 lt!1725003 Nil!50832)))) (content!8489 (toList!4468 (-!450 (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832)) key!3287)))))))

(declare-fun bs!903557 () Bool)

(assert (= bs!903557 d!1411105))

(declare-fun m!5332075 () Bool)

(assert (=> bs!903557 m!5332075))

(declare-fun m!5332077 () Bool)

(assert (=> bs!903557 m!5332077))

(assert (=> b!4552627 d!1411105))

(declare-fun d!1411109 () Bool)

(declare-fun e!2837508 () Bool)

(assert (=> d!1411109 e!2837508))

(declare-fun res!1898867 () Bool)

(assert (=> d!1411109 (=> (not res!1898867) (not e!2837508))))

(declare-fun lt!1725059 () ListMap!3729)

(assert (=> d!1411109 (= res!1898867 (not (contains!13670 lt!1725059 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!184 (List!50955 K!12215) List!50955)

(assert (=> d!1411109 (= lt!1725059 (ListMap!3730 (removePresrvNoDuplicatedKeys!184 (toList!4468 (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832))) key!3287)))))

(assert (=> d!1411109 (= (-!450 (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832)) key!3287) lt!1725059)))

(declare-fun b!4552697 () Bool)

(declare-datatypes ((List!50958 0))(
  ( (Nil!50834) (Cons!50834 (h!56735 K!12215) (t!357928 List!50958)) )
))
(declare-fun content!8490 (List!50958) (InoxSet K!12215))

(declare-fun keys!17713 (ListMap!3729) List!50958)

(assert (=> b!4552697 (= e!2837508 (= ((_ map and) (content!8490 (keys!17713 (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832)))) ((_ map not) (store ((as const (Array K!12215 Bool)) false) key!3287 true))) (content!8490 (keys!17713 lt!1725059))))))

(assert (= (and d!1411109 res!1898867) b!4552697))

(declare-fun m!5332093 () Bool)

(assert (=> d!1411109 m!5332093))

(declare-fun m!5332095 () Bool)

(assert (=> d!1411109 m!5332095))

(assert (=> b!4552697 m!5331943))

(declare-fun m!5332097 () Bool)

(assert (=> b!4552697 m!5332097))

(declare-fun m!5332099 () Bool)

(assert (=> b!4552697 m!5332099))

(assert (=> b!4552697 m!5332099))

(declare-fun m!5332101 () Bool)

(assert (=> b!4552697 m!5332101))

(declare-fun m!5332103 () Bool)

(assert (=> b!4552697 m!5332103))

(assert (=> b!4552697 m!5332097))

(declare-fun m!5332105 () Bool)

(assert (=> b!4552697 m!5332105))

(assert (=> b!4552627 d!1411109))

(declare-fun b!4552763 () Bool)

(declare-fun e!2837556 () Bool)

(declare-fun contains!13674 (List!50958 K!12215) Bool)

(assert (=> b!4552763 (= e!2837556 (contains!13674 (keys!17713 (extractMap!1286 lt!1725008)) key!3287))))

(declare-fun b!4552764 () Bool)

(assert (=> b!4552764 false))

(declare-fun lt!1725122 () Unit!100859)

(declare-fun lt!1725123 () Unit!100859)

(assert (=> b!4552764 (= lt!1725122 lt!1725123)))

(declare-fun containsKey!1944 (List!50955 K!12215) Bool)

(assert (=> b!4552764 (containsKey!1944 (toList!4468 (extractMap!1286 lt!1725008)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!509 (List!50955 K!12215) Unit!100859)

(assert (=> b!4552764 (= lt!1725123 (lemmaInGetKeysListThenContainsKey!509 (toList!4468 (extractMap!1286 lt!1725008)) key!3287))))

(declare-fun e!2837555 () Unit!100859)

(declare-fun Unit!100878 () Unit!100859)

(assert (=> b!4552764 (= e!2837555 Unit!100878)))

(declare-fun bm!317592 () Bool)

(declare-fun call!317597 () Bool)

(declare-fun e!2837558 () List!50958)

(assert (=> bm!317592 (= call!317597 (contains!13674 e!2837558 key!3287))))

(declare-fun c!778082 () Bool)

(declare-fun c!778080 () Bool)

(assert (=> bm!317592 (= c!778082 c!778080)))

(declare-fun b!4552765 () Bool)

(declare-fun e!2837560 () Unit!100859)

(assert (=> b!4552765 (= e!2837560 e!2837555)))

(declare-fun c!778081 () Bool)

(assert (=> b!4552765 (= c!778081 call!317597)))

(declare-fun b!4552766 () Bool)

(declare-fun getKeysList!510 (List!50955) List!50958)

(assert (=> b!4552766 (= e!2837558 (getKeysList!510 (toList!4468 (extractMap!1286 lt!1725008))))))

(declare-fun b!4552767 () Bool)

(declare-fun lt!1725119 () Unit!100859)

(assert (=> b!4552767 (= e!2837560 lt!1725119)))

(declare-fun lt!1725117 () Unit!100859)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1087 (List!50955 K!12215) Unit!100859)

(assert (=> b!4552767 (= lt!1725117 (lemmaContainsKeyImpliesGetValueByKeyDefined!1087 (toList!4468 (extractMap!1286 lt!1725008)) key!3287))))

(declare-datatypes ((Option!11251 0))(
  ( (None!11250) (Some!11250 (v!45008 V!12461)) )
))
(declare-fun isDefined!8523 (Option!11251) Bool)

(declare-fun getValueByKey!1183 (List!50955 K!12215) Option!11251)

(assert (=> b!4552767 (isDefined!8523 (getValueByKey!1183 (toList!4468 (extractMap!1286 lt!1725008)) key!3287))))

(declare-fun lt!1725116 () Unit!100859)

(assert (=> b!4552767 (= lt!1725116 lt!1725117)))

(declare-fun lemmaInListThenGetKeysListContains!506 (List!50955 K!12215) Unit!100859)

(assert (=> b!4552767 (= lt!1725119 (lemmaInListThenGetKeysListContains!506 (toList!4468 (extractMap!1286 lt!1725008)) key!3287))))

(assert (=> b!4552767 call!317597))

(declare-fun d!1411115 () Bool)

(declare-fun e!2837559 () Bool)

(assert (=> d!1411115 e!2837559))

(declare-fun res!1898901 () Bool)

(assert (=> d!1411115 (=> res!1898901 e!2837559)))

(declare-fun e!2837557 () Bool)

(assert (=> d!1411115 (= res!1898901 e!2837557)))

(declare-fun res!1898903 () Bool)

(assert (=> d!1411115 (=> (not res!1898903) (not e!2837557))))

(declare-fun lt!1725118 () Bool)

(assert (=> d!1411115 (= res!1898903 (not lt!1725118))))

(declare-fun lt!1725120 () Bool)

(assert (=> d!1411115 (= lt!1725118 lt!1725120)))

(declare-fun lt!1725121 () Unit!100859)

(assert (=> d!1411115 (= lt!1725121 e!2837560)))

(assert (=> d!1411115 (= c!778080 lt!1725120)))

(assert (=> d!1411115 (= lt!1725120 (containsKey!1944 (toList!4468 (extractMap!1286 lt!1725008)) key!3287))))

(assert (=> d!1411115 (= (contains!13670 (extractMap!1286 lt!1725008) key!3287) lt!1725118)))

(declare-fun b!4552768 () Bool)

(assert (=> b!4552768 (= e!2837558 (keys!17713 (extractMap!1286 lt!1725008)))))

(declare-fun b!4552769 () Bool)

(assert (=> b!4552769 (= e!2837557 (not (contains!13674 (keys!17713 (extractMap!1286 lt!1725008)) key!3287)))))

(declare-fun b!4552770 () Bool)

(assert (=> b!4552770 (= e!2837559 e!2837556)))

(declare-fun res!1898902 () Bool)

(assert (=> b!4552770 (=> (not res!1898902) (not e!2837556))))

(assert (=> b!4552770 (= res!1898902 (isDefined!8523 (getValueByKey!1183 (toList!4468 (extractMap!1286 lt!1725008)) key!3287)))))

(declare-fun b!4552771 () Bool)

(declare-fun Unit!100880 () Unit!100859)

(assert (=> b!4552771 (= e!2837555 Unit!100880)))

(assert (= (and d!1411115 c!778080) b!4552767))

(assert (= (and d!1411115 (not c!778080)) b!4552765))

(assert (= (and b!4552765 c!778081) b!4552764))

(assert (= (and b!4552765 (not c!778081)) b!4552771))

(assert (= (or b!4552767 b!4552765) bm!317592))

(assert (= (and bm!317592 c!778082) b!4552766))

(assert (= (and bm!317592 (not c!778082)) b!4552768))

(assert (= (and d!1411115 res!1898903) b!4552769))

(assert (= (and d!1411115 (not res!1898901)) b!4552770))

(assert (= (and b!4552770 res!1898902) b!4552763))

(declare-fun m!5332161 () Bool)

(assert (=> b!4552770 m!5332161))

(assert (=> b!4552770 m!5332161))

(declare-fun m!5332163 () Bool)

(assert (=> b!4552770 m!5332163))

(assert (=> b!4552768 m!5331947))

(declare-fun m!5332165 () Bool)

(assert (=> b!4552768 m!5332165))

(assert (=> b!4552763 m!5331947))

(assert (=> b!4552763 m!5332165))

(assert (=> b!4552763 m!5332165))

(declare-fun m!5332167 () Bool)

(assert (=> b!4552763 m!5332167))

(declare-fun m!5332169 () Bool)

(assert (=> b!4552766 m!5332169))

(declare-fun m!5332171 () Bool)

(assert (=> b!4552764 m!5332171))

(declare-fun m!5332173 () Bool)

(assert (=> b!4552764 m!5332173))

(assert (=> b!4552769 m!5331947))

(assert (=> b!4552769 m!5332165))

(assert (=> b!4552769 m!5332165))

(assert (=> b!4552769 m!5332167))

(declare-fun m!5332175 () Bool)

(assert (=> b!4552767 m!5332175))

(assert (=> b!4552767 m!5332161))

(assert (=> b!4552767 m!5332161))

(assert (=> b!4552767 m!5332163))

(declare-fun m!5332177 () Bool)

(assert (=> b!4552767 m!5332177))

(assert (=> d!1411115 m!5332171))

(declare-fun m!5332179 () Bool)

(assert (=> bm!317592 m!5332179))

(assert (=> b!4552627 d!1411115))

(declare-fun d!1411133 () Bool)

(declare-fun e!2837563 () Bool)

(assert (=> d!1411133 e!2837563))

(declare-fun res!1898909 () Bool)

(assert (=> d!1411133 (=> (not res!1898909) (not e!2837563))))

(declare-fun lt!1725132 () ListLongMap!3099)

(assert (=> d!1411133 (= res!1898909 (contains!13672 lt!1725132 (_1!28972 lt!1725003)))))

(declare-fun lt!1725135 () List!50956)

(assert (=> d!1411133 (= lt!1725132 (ListLongMap!3100 lt!1725135))))

(declare-fun lt!1725134 () Unit!100859)

(declare-fun lt!1725133 () Unit!100859)

(assert (=> d!1411133 (= lt!1725134 lt!1725133)))

(declare-datatypes ((Option!11252 0))(
  ( (None!11251) (Some!11251 (v!45009 List!50955)) )
))
(declare-fun getValueByKey!1184 (List!50956 (_ BitVec 64)) Option!11252)

(assert (=> d!1411133 (= (getValueByKey!1184 lt!1725135 (_1!28972 lt!1725003)) (Some!11251 (_2!28972 lt!1725003)))))

(declare-fun lemmaContainsTupThenGetReturnValue!742 (List!50956 (_ BitVec 64) List!50955) Unit!100859)

(assert (=> d!1411133 (= lt!1725133 (lemmaContainsTupThenGetReturnValue!742 lt!1725135 (_1!28972 lt!1725003) (_2!28972 lt!1725003)))))

(declare-fun insertStrictlySorted!452 (List!50956 (_ BitVec 64) List!50955) List!50956)

(assert (=> d!1411133 (= lt!1725135 (insertStrictlySorted!452 (toList!4467 lm!1477) (_1!28972 lt!1725003) (_2!28972 lt!1725003)))))

(assert (=> d!1411133 (= (+!1646 lm!1477 lt!1725003) lt!1725132)))

(declare-fun b!4552776 () Bool)

(declare-fun res!1898908 () Bool)

(assert (=> b!4552776 (=> (not res!1898908) (not e!2837563))))

(assert (=> b!4552776 (= res!1898908 (= (getValueByKey!1184 (toList!4467 lt!1725132) (_1!28972 lt!1725003)) (Some!11251 (_2!28972 lt!1725003))))))

(declare-fun b!4552777 () Bool)

(assert (=> b!4552777 (= e!2837563 (contains!13671 (toList!4467 lt!1725132) lt!1725003))))

(assert (= (and d!1411133 res!1898909) b!4552776))

(assert (= (and b!4552776 res!1898908) b!4552777))

(declare-fun m!5332181 () Bool)

(assert (=> d!1411133 m!5332181))

(declare-fun m!5332183 () Bool)

(assert (=> d!1411133 m!5332183))

(declare-fun m!5332185 () Bool)

(assert (=> d!1411133 m!5332185))

(declare-fun m!5332187 () Bool)

(assert (=> d!1411133 m!5332187))

(declare-fun m!5332189 () Bool)

(assert (=> b!4552776 m!5332189))

(declare-fun m!5332191 () Bool)

(assert (=> b!4552777 m!5332191))

(assert (=> b!4552627 d!1411133))

(declare-fun d!1411135 () Bool)

(assert (=> d!1411135 (eq!681 (extractMap!1286 (Cons!50832 (tuple2!51357 hash!344 newBucket!178) Nil!50832)) (-!450 (extractMap!1286 (Cons!50832 (tuple2!51357 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477)))) Nil!50832)) key!3287))))

(declare-fun lt!1725138 () Unit!100859)

(declare-fun choose!30108 ((_ BitVec 64) List!50955 List!50955 K!12215 Hashable!5625) Unit!100859)

(assert (=> d!1411135 (= lt!1725138 (choose!30108 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1411135 (noDuplicateKeys!1230 (_2!28972 (h!56731 (toList!4467 lm!1477))))))

(assert (=> d!1411135 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!70 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1725138)))

(declare-fun bs!903574 () Bool)

(assert (= bs!903574 d!1411135))

(declare-fun m!5332193 () Bool)

(assert (=> bs!903574 m!5332193))

(declare-fun m!5332195 () Bool)

(assert (=> bs!903574 m!5332195))

(declare-fun m!5332197 () Bool)

(assert (=> bs!903574 m!5332197))

(declare-fun m!5332199 () Bool)

(assert (=> bs!903574 m!5332199))

(assert (=> bs!903574 m!5332197))

(declare-fun m!5332201 () Bool)

(assert (=> bs!903574 m!5332201))

(assert (=> bs!903574 m!5332199))

(declare-fun m!5332203 () Bool)

(assert (=> bs!903574 m!5332203))

(assert (=> bs!903574 m!5332195))

(assert (=> b!4552627 d!1411135))

(declare-fun bs!903575 () Bool)

(declare-fun d!1411137 () Bool)

(assert (= bs!903575 (and d!1411137 start!452424)))

(declare-fun lambda!178449 () Int)

(assert (=> bs!903575 (= lambda!178449 lambda!178431)))

(declare-fun bs!903576 () Bool)

(assert (= bs!903576 (and d!1411137 d!1411087)))

(assert (=> bs!903576 (= lambda!178449 lambda!178441)))

(declare-fun lt!1725139 () ListMap!3729)

(assert (=> d!1411137 (invariantList!1062 (toList!4468 lt!1725139))))

(declare-fun e!2837564 () ListMap!3729)

(assert (=> d!1411137 (= lt!1725139 e!2837564)))

(declare-fun c!778083 () Bool)

(assert (=> d!1411137 (= c!778083 ((_ is Cons!50832) (Cons!50832 lt!1725003 Nil!50832)))))

(assert (=> d!1411137 (forall!10403 (Cons!50832 lt!1725003 Nil!50832) lambda!178449)))

(assert (=> d!1411137 (= (extractMap!1286 (Cons!50832 lt!1725003 Nil!50832)) lt!1725139)))

(declare-fun b!4552778 () Bool)

(assert (=> b!4552778 (= e!2837564 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (Cons!50832 lt!1725003 Nil!50832))) (extractMap!1286 (t!357926 (Cons!50832 lt!1725003 Nil!50832)))))))

(declare-fun b!4552779 () Bool)

(assert (=> b!4552779 (= e!2837564 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411137 c!778083) b!4552778))

(assert (= (and d!1411137 (not c!778083)) b!4552779))

(declare-fun m!5332205 () Bool)

(assert (=> d!1411137 m!5332205))

(declare-fun m!5332207 () Bool)

(assert (=> d!1411137 m!5332207))

(declare-fun m!5332209 () Bool)

(assert (=> b!4552778 m!5332209))

(assert (=> b!4552778 m!5332209))

(declare-fun m!5332211 () Bool)

(assert (=> b!4552778 m!5332211))

(assert (=> b!4552627 d!1411137))

(declare-fun bs!903577 () Bool)

(declare-fun d!1411139 () Bool)

(assert (= bs!903577 (and d!1411139 start!452424)))

(declare-fun lambda!178452 () Int)

(assert (=> bs!903577 (= lambda!178452 lambda!178431)))

(declare-fun bs!903578 () Bool)

(assert (= bs!903578 (and d!1411139 d!1411087)))

(assert (=> bs!903578 (= lambda!178452 lambda!178441)))

(declare-fun bs!903579 () Bool)

(assert (= bs!903579 (and d!1411139 d!1411137)))

(assert (=> bs!903579 (= lambda!178452 lambda!178449)))

(assert (=> d!1411139 (contains!13670 (extractMap!1286 (toList!4467 (ListLongMap!3100 lt!1725008))) key!3287)))

(declare-fun lt!1725142 () Unit!100859)

(declare-fun choose!30109 (ListLongMap!3099 K!12215 Hashable!5625) Unit!100859)

(assert (=> d!1411139 (= lt!1725142 (choose!30109 (ListLongMap!3100 lt!1725008) key!3287 hashF!1107))))

(assert (=> d!1411139 (forall!10403 (toList!4467 (ListLongMap!3100 lt!1725008)) lambda!178452)))

(assert (=> d!1411139 (= (lemmaListContainsThenExtractedMapContains!196 (ListLongMap!3100 lt!1725008) key!3287 hashF!1107) lt!1725142)))

(declare-fun bs!903580 () Bool)

(assert (= bs!903580 d!1411139))

(declare-fun m!5332213 () Bool)

(assert (=> bs!903580 m!5332213))

(assert (=> bs!903580 m!5332213))

(declare-fun m!5332215 () Bool)

(assert (=> bs!903580 m!5332215))

(declare-fun m!5332217 () Bool)

(assert (=> bs!903580 m!5332217))

(declare-fun m!5332219 () Bool)

(assert (=> bs!903580 m!5332219))

(assert (=> b!4552627 d!1411139))

(declare-fun d!1411141 () Bool)

(assert (=> d!1411141 (= (tail!7842 (toList!4467 lt!1725000)) (t!357926 (toList!4467 lt!1725000)))))

(assert (=> b!4552627 d!1411141))

(declare-fun bs!903581 () Bool)

(declare-fun d!1411143 () Bool)

(assert (= bs!903581 (and d!1411143 start!452424)))

(declare-fun lambda!178453 () Int)

(assert (=> bs!903581 (= lambda!178453 lambda!178431)))

(declare-fun bs!903582 () Bool)

(assert (= bs!903582 (and d!1411143 d!1411087)))

(assert (=> bs!903582 (= lambda!178453 lambda!178441)))

(declare-fun bs!903583 () Bool)

(assert (= bs!903583 (and d!1411143 d!1411137)))

(assert (=> bs!903583 (= lambda!178453 lambda!178449)))

(declare-fun bs!903584 () Bool)

(assert (= bs!903584 (and d!1411143 d!1411139)))

(assert (=> bs!903584 (= lambda!178453 lambda!178452)))

(declare-fun lt!1725143 () ListMap!3729)

(assert (=> d!1411143 (invariantList!1062 (toList!4468 lt!1725143))))

(declare-fun e!2837565 () ListMap!3729)

(assert (=> d!1411143 (= lt!1725143 e!2837565)))

(declare-fun c!778084 () Bool)

(assert (=> d!1411143 (= c!778084 ((_ is Cons!50832) (Cons!50832 lt!1725018 Nil!50832)))))

(assert (=> d!1411143 (forall!10403 (Cons!50832 lt!1725018 Nil!50832) lambda!178453)))

(assert (=> d!1411143 (= (extractMap!1286 (Cons!50832 lt!1725018 Nil!50832)) lt!1725143)))

(declare-fun b!4552780 () Bool)

(assert (=> b!4552780 (= e!2837565 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (Cons!50832 lt!1725018 Nil!50832))) (extractMap!1286 (t!357926 (Cons!50832 lt!1725018 Nil!50832)))))))

(declare-fun b!4552781 () Bool)

(assert (=> b!4552781 (= e!2837565 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411143 c!778084) b!4552780))

(assert (= (and d!1411143 (not c!778084)) b!4552781))

(declare-fun m!5332221 () Bool)

(assert (=> d!1411143 m!5332221))

(declare-fun m!5332223 () Bool)

(assert (=> d!1411143 m!5332223))

(declare-fun m!5332225 () Bool)

(assert (=> b!4552780 m!5332225))

(assert (=> b!4552780 m!5332225))

(declare-fun m!5332227 () Bool)

(assert (=> b!4552780 m!5332227))

(assert (=> b!4552627 d!1411143))

(declare-fun d!1411145 () Bool)

(declare-fun res!1898918 () Bool)

(declare-fun e!2837572 () Bool)

(assert (=> d!1411145 (=> res!1898918 e!2837572)))

(declare-fun e!2837574 () Bool)

(assert (=> d!1411145 (= res!1898918 e!2837574)))

(declare-fun res!1898917 () Bool)

(assert (=> d!1411145 (=> (not res!1898917) (not e!2837574))))

(assert (=> d!1411145 (= res!1898917 ((_ is Cons!50832) lt!1725008))))

(assert (=> d!1411145 (= (containsKeyBiggerList!208 lt!1725008 key!3287) e!2837572)))

(declare-fun b!4552788 () Bool)

(assert (=> b!4552788 (= e!2837574 (containsKey!1941 (_2!28972 (h!56731 lt!1725008)) key!3287))))

(declare-fun b!4552789 () Bool)

(declare-fun e!2837573 () Bool)

(assert (=> b!4552789 (= e!2837572 e!2837573)))

(declare-fun res!1898916 () Bool)

(assert (=> b!4552789 (=> (not res!1898916) (not e!2837573))))

(assert (=> b!4552789 (= res!1898916 ((_ is Cons!50832) lt!1725008))))

(declare-fun b!4552790 () Bool)

(assert (=> b!4552790 (= e!2837573 (containsKeyBiggerList!208 (t!357926 lt!1725008) key!3287))))

(assert (= (and d!1411145 res!1898917) b!4552788))

(assert (= (and d!1411145 (not res!1898918)) b!4552789))

(assert (= (and b!4552789 res!1898916) b!4552790))

(declare-fun m!5332229 () Bool)

(assert (=> b!4552788 m!5332229))

(declare-fun m!5332231 () Bool)

(assert (=> b!4552790 m!5332231))

(assert (=> b!4552616 d!1411145))

(declare-fun bs!903585 () Bool)

(declare-fun d!1411147 () Bool)

(assert (= bs!903585 (and d!1411147 d!1411139)))

(declare-fun lambda!178454 () Int)

(assert (=> bs!903585 (= lambda!178454 lambda!178452)))

(declare-fun bs!903586 () Bool)

(assert (= bs!903586 (and d!1411147 d!1411087)))

(assert (=> bs!903586 (= lambda!178454 lambda!178441)))

(declare-fun bs!903587 () Bool)

(assert (= bs!903587 (and d!1411147 d!1411143)))

(assert (=> bs!903587 (= lambda!178454 lambda!178453)))

(declare-fun bs!903588 () Bool)

(assert (= bs!903588 (and d!1411147 start!452424)))

(assert (=> bs!903588 (= lambda!178454 lambda!178431)))

(declare-fun bs!903589 () Bool)

(assert (= bs!903589 (and d!1411147 d!1411137)))

(assert (=> bs!903589 (= lambda!178454 lambda!178449)))

(declare-fun lt!1725144 () ListMap!3729)

(assert (=> d!1411147 (invariantList!1062 (toList!4468 lt!1725144))))

(declare-fun e!2837575 () ListMap!3729)

(assert (=> d!1411147 (= lt!1725144 e!2837575)))

(declare-fun c!778085 () Bool)

(assert (=> d!1411147 (= c!778085 ((_ is Cons!50832) (t!357926 (toList!4467 lm!1477))))))

(assert (=> d!1411147 (forall!10403 (t!357926 (toList!4467 lm!1477)) lambda!178454)))

(assert (=> d!1411147 (= (extractMap!1286 (t!357926 (toList!4467 lm!1477))) lt!1725144)))

(declare-fun b!4552791 () Bool)

(assert (=> b!4552791 (= e!2837575 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (t!357926 (toList!4467 lm!1477)))) (extractMap!1286 (t!357926 (t!357926 (toList!4467 lm!1477))))))))

(declare-fun b!4552792 () Bool)

(assert (=> b!4552792 (= e!2837575 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411147 c!778085) b!4552791))

(assert (= (and d!1411147 (not c!778085)) b!4552792))

(declare-fun m!5332233 () Bool)

(assert (=> d!1411147 m!5332233))

(declare-fun m!5332235 () Bool)

(assert (=> d!1411147 m!5332235))

(declare-fun m!5332237 () Bool)

(assert (=> b!4552791 m!5332237))

(assert (=> b!4552791 m!5332237))

(declare-fun m!5332239 () Bool)

(assert (=> b!4552791 m!5332239))

(assert (=> b!4552626 d!1411147))

(declare-fun bs!903590 () Bool)

(declare-fun d!1411149 () Bool)

(assert (= bs!903590 (and d!1411149 d!1411139)))

(declare-fun lambda!178455 () Int)

(assert (=> bs!903590 (= lambda!178455 lambda!178452)))

(declare-fun bs!903591 () Bool)

(assert (= bs!903591 (and d!1411149 d!1411143)))

(assert (=> bs!903591 (= lambda!178455 lambda!178453)))

(declare-fun bs!903592 () Bool)

(assert (= bs!903592 (and d!1411149 start!452424)))

(assert (=> bs!903592 (= lambda!178455 lambda!178431)))

(declare-fun bs!903593 () Bool)

(assert (= bs!903593 (and d!1411149 d!1411137)))

(assert (=> bs!903593 (= lambda!178455 lambda!178449)))

(declare-fun bs!903594 () Bool)

(assert (= bs!903594 (and d!1411149 d!1411087)))

(assert (=> bs!903594 (= lambda!178455 lambda!178441)))

(declare-fun bs!903595 () Bool)

(assert (= bs!903595 (and d!1411149 d!1411147)))

(assert (=> bs!903595 (= lambda!178455 lambda!178454)))

(declare-fun lt!1725145 () ListMap!3729)

(assert (=> d!1411149 (invariantList!1062 (toList!4468 lt!1725145))))

(declare-fun e!2837576 () ListMap!3729)

(assert (=> d!1411149 (= lt!1725145 e!2837576)))

(declare-fun c!778086 () Bool)

(assert (=> d!1411149 (= c!778086 ((_ is Cons!50832) (toList!4467 lt!1725015)))))

(assert (=> d!1411149 (forall!10403 (toList!4467 lt!1725015) lambda!178455)))

(assert (=> d!1411149 (= (extractMap!1286 (toList!4467 lt!1725015)) lt!1725145)))

(declare-fun b!4552793 () Bool)

(assert (=> b!4552793 (= e!2837576 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (toList!4467 lt!1725015))) (extractMap!1286 (t!357926 (toList!4467 lt!1725015)))))))

(declare-fun b!4552794 () Bool)

(assert (=> b!4552794 (= e!2837576 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411149 c!778086) b!4552793))

(assert (= (and d!1411149 (not c!778086)) b!4552794))

(declare-fun m!5332241 () Bool)

(assert (=> d!1411149 m!5332241))

(declare-fun m!5332243 () Bool)

(assert (=> d!1411149 m!5332243))

(declare-fun m!5332245 () Bool)

(assert (=> b!4552793 m!5332245))

(assert (=> b!4552793 m!5332245))

(declare-fun m!5332247 () Bool)

(assert (=> b!4552793 m!5332247))

(assert (=> b!4552626 d!1411149))

(declare-fun d!1411151 () Bool)

(declare-fun e!2837579 () Bool)

(assert (=> d!1411151 e!2837579))

(declare-fun res!1898920 () Bool)

(assert (=> d!1411151 (=> (not res!1898920) (not e!2837579))))

(declare-fun lt!1725152 () ListLongMap!3099)

(assert (=> d!1411151 (= res!1898920 (contains!13672 lt!1725152 (_1!28972 lt!1725003)))))

(declare-fun lt!1725155 () List!50956)

(assert (=> d!1411151 (= lt!1725152 (ListLongMap!3100 lt!1725155))))

(declare-fun lt!1725154 () Unit!100859)

(declare-fun lt!1725153 () Unit!100859)

(assert (=> d!1411151 (= lt!1725154 lt!1725153)))

(assert (=> d!1411151 (= (getValueByKey!1184 lt!1725155 (_1!28972 lt!1725003)) (Some!11251 (_2!28972 lt!1725003)))))

(assert (=> d!1411151 (= lt!1725153 (lemmaContainsTupThenGetReturnValue!742 lt!1725155 (_1!28972 lt!1725003) (_2!28972 lt!1725003)))))

(assert (=> d!1411151 (= lt!1725155 (insertStrictlySorted!452 (toList!4467 lt!1725015) (_1!28972 lt!1725003) (_2!28972 lt!1725003)))))

(assert (=> d!1411151 (= (+!1646 lt!1725015 lt!1725003) lt!1725152)))

(declare-fun b!4552799 () Bool)

(declare-fun res!1898919 () Bool)

(assert (=> b!4552799 (=> (not res!1898919) (not e!2837579))))

(assert (=> b!4552799 (= res!1898919 (= (getValueByKey!1184 (toList!4467 lt!1725152) (_1!28972 lt!1725003)) (Some!11251 (_2!28972 lt!1725003))))))

(declare-fun b!4552800 () Bool)

(assert (=> b!4552800 (= e!2837579 (contains!13671 (toList!4467 lt!1725152) lt!1725003))))

(assert (= (and d!1411151 res!1898920) b!4552799))

(assert (= (and b!4552799 res!1898919) b!4552800))

(declare-fun m!5332249 () Bool)

(assert (=> d!1411151 m!5332249))

(declare-fun m!5332251 () Bool)

(assert (=> d!1411151 m!5332251))

(declare-fun m!5332253 () Bool)

(assert (=> d!1411151 m!5332253))

(declare-fun m!5332255 () Bool)

(assert (=> d!1411151 m!5332255))

(declare-fun m!5332257 () Bool)

(assert (=> b!4552799 m!5332257))

(declare-fun m!5332259 () Bool)

(assert (=> b!4552800 m!5332259))

(assert (=> b!4552615 d!1411151))

(declare-fun d!1411153 () Bool)

(assert (=> d!1411153 (= (tail!7841 lm!1477) (ListLongMap!3100 (tail!7842 (toList!4467 lm!1477))))))

(declare-fun bs!903596 () Bool)

(assert (= bs!903596 d!1411153))

(assert (=> bs!903596 m!5331983))

(assert (=> b!4552615 d!1411153))

(declare-fun bs!903597 () Bool)

(declare-fun d!1411155 () Bool)

(assert (= bs!903597 (and d!1411155 d!1411139)))

(declare-fun lambda!178470 () Int)

(assert (=> bs!903597 (= lambda!178470 lambda!178452)))

(declare-fun bs!903598 () Bool)

(assert (= bs!903598 (and d!1411155 d!1411149)))

(assert (=> bs!903598 (= lambda!178470 lambda!178455)))

(declare-fun bs!903599 () Bool)

(assert (= bs!903599 (and d!1411155 d!1411143)))

(assert (=> bs!903599 (= lambda!178470 lambda!178453)))

(declare-fun bs!903600 () Bool)

(assert (= bs!903600 (and d!1411155 start!452424)))

(assert (=> bs!903600 (= lambda!178470 lambda!178431)))

(declare-fun bs!903601 () Bool)

(assert (= bs!903601 (and d!1411155 d!1411137)))

(assert (=> bs!903601 (= lambda!178470 lambda!178449)))

(declare-fun bs!903602 () Bool)

(assert (= bs!903602 (and d!1411155 d!1411087)))

(assert (=> bs!903602 (= lambda!178470 lambda!178441)))

(declare-fun bs!903603 () Bool)

(assert (= bs!903603 (and d!1411155 d!1411147)))

(assert (=> bs!903603 (= lambda!178470 lambda!178454)))

(assert (=> d!1411155 (contains!13672 lt!1725015 (hash!2994 hashF!1107 key!3287))))

(declare-fun lt!1725176 () Unit!100859)

(declare-fun choose!30111 (ListLongMap!3099 K!12215 Hashable!5625) Unit!100859)

(assert (=> d!1411155 (= lt!1725176 (choose!30111 lt!1725015 key!3287 hashF!1107))))

(assert (=> d!1411155 (forall!10403 (toList!4467 lt!1725015) lambda!178470)))

(assert (=> d!1411155 (= (lemmaInGenMapThenLongMapContainsHash!304 lt!1725015 key!3287 hashF!1107) lt!1725176)))

(declare-fun bs!903604 () Bool)

(assert (= bs!903604 d!1411155))

(assert (=> bs!903604 m!5332013))

(assert (=> bs!903604 m!5332013))

(declare-fun m!5332261 () Bool)

(assert (=> bs!903604 m!5332261))

(declare-fun m!5332263 () Bool)

(assert (=> bs!903604 m!5332263))

(declare-fun m!5332265 () Bool)

(assert (=> bs!903604 m!5332265))

(assert (=> b!4552625 d!1411155))

(declare-fun d!1411157 () Bool)

(declare-fun e!2837589 () Bool)

(assert (=> d!1411157 e!2837589))

(declare-fun res!1898927 () Bool)

(assert (=> d!1411157 (=> res!1898927 e!2837589)))

(declare-fun lt!1725205 () Bool)

(assert (=> d!1411157 (= res!1898927 (not lt!1725205))))

(declare-fun lt!1725206 () Bool)

(assert (=> d!1411157 (= lt!1725205 lt!1725206)))

(declare-fun lt!1725204 () Unit!100859)

(declare-fun e!2837588 () Unit!100859)

(assert (=> d!1411157 (= lt!1725204 e!2837588)))

(declare-fun c!778091 () Bool)

(assert (=> d!1411157 (= c!778091 lt!1725206)))

(declare-fun containsKey!1945 (List!50956 (_ BitVec 64)) Bool)

(assert (=> d!1411157 (= lt!1725206 (containsKey!1945 (toList!4467 lt!1725015) lt!1725009))))

(assert (=> d!1411157 (= (contains!13672 lt!1725015 lt!1725009) lt!1725205)))

(declare-fun b!4552809 () Bool)

(declare-fun lt!1725203 () Unit!100859)

(assert (=> b!4552809 (= e!2837588 lt!1725203)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1088 (List!50956 (_ BitVec 64)) Unit!100859)

(assert (=> b!4552809 (= lt!1725203 (lemmaContainsKeyImpliesGetValueByKeyDefined!1088 (toList!4467 lt!1725015) lt!1725009))))

(declare-fun isDefined!8524 (Option!11252) Bool)

(assert (=> b!4552809 (isDefined!8524 (getValueByKey!1184 (toList!4467 lt!1725015) lt!1725009))))

(declare-fun b!4552810 () Bool)

(declare-fun Unit!100884 () Unit!100859)

(assert (=> b!4552810 (= e!2837588 Unit!100884)))

(declare-fun b!4552811 () Bool)

(assert (=> b!4552811 (= e!2837589 (isDefined!8524 (getValueByKey!1184 (toList!4467 lt!1725015) lt!1725009)))))

(assert (= (and d!1411157 c!778091) b!4552809))

(assert (= (and d!1411157 (not c!778091)) b!4552810))

(assert (= (and d!1411157 (not res!1898927)) b!4552811))

(declare-fun m!5332267 () Bool)

(assert (=> d!1411157 m!5332267))

(declare-fun m!5332269 () Bool)

(assert (=> b!4552809 m!5332269))

(declare-fun m!5332271 () Bool)

(assert (=> b!4552809 m!5332271))

(assert (=> b!4552809 m!5332271))

(declare-fun m!5332273 () Bool)

(assert (=> b!4552809 m!5332273))

(assert (=> b!4552811 m!5332271))

(assert (=> b!4552811 m!5332271))

(assert (=> b!4552811 m!5332273))

(assert (=> b!4552625 d!1411157))

(declare-fun bs!903605 () Bool)

(declare-fun d!1411159 () Bool)

(assert (= bs!903605 (and d!1411159 d!1411139)))

(declare-fun lambda!178485 () Int)

(assert (=> bs!903605 (= lambda!178485 lambda!178452)))

(declare-fun bs!903606 () Bool)

(assert (= bs!903606 (and d!1411159 d!1411149)))

(assert (=> bs!903606 (= lambda!178485 lambda!178455)))

(declare-fun bs!903607 () Bool)

(assert (= bs!903607 (and d!1411159 d!1411143)))

(assert (=> bs!903607 (= lambda!178485 lambda!178453)))

(declare-fun bs!903608 () Bool)

(assert (= bs!903608 (and d!1411159 start!452424)))

(assert (=> bs!903608 (= lambda!178485 lambda!178431)))

(declare-fun bs!903609 () Bool)

(assert (= bs!903609 (and d!1411159 d!1411155)))

(assert (=> bs!903609 (= lambda!178485 lambda!178470)))

(declare-fun bs!903610 () Bool)

(assert (= bs!903610 (and d!1411159 d!1411137)))

(assert (=> bs!903610 (= lambda!178485 lambda!178449)))

(declare-fun bs!903611 () Bool)

(assert (= bs!903611 (and d!1411159 d!1411087)))

(assert (=> bs!903611 (= lambda!178485 lambda!178441)))

(declare-fun bs!903612 () Bool)

(assert (= bs!903612 (and d!1411159 d!1411147)))

(assert (=> bs!903612 (= lambda!178485 lambda!178454)))

(declare-fun lt!1725207 () ListMap!3729)

(assert (=> d!1411159 (invariantList!1062 (toList!4468 lt!1725207))))

(declare-fun e!2837590 () ListMap!3729)

(assert (=> d!1411159 (= lt!1725207 e!2837590)))

(declare-fun c!778092 () Bool)

(assert (=> d!1411159 (= c!778092 ((_ is Cons!50832) (Cons!50832 lt!1725003 lt!1725022)))))

(assert (=> d!1411159 (forall!10403 (Cons!50832 lt!1725003 lt!1725022) lambda!178485)))

(assert (=> d!1411159 (= (extractMap!1286 (Cons!50832 lt!1725003 lt!1725022)) lt!1725207)))

(declare-fun b!4552814 () Bool)

(assert (=> b!4552814 (= e!2837590 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (Cons!50832 lt!1725003 lt!1725022))) (extractMap!1286 (t!357926 (Cons!50832 lt!1725003 lt!1725022)))))))

(declare-fun b!4552815 () Bool)

(assert (=> b!4552815 (= e!2837590 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411159 c!778092) b!4552814))

(assert (= (and d!1411159 (not c!778092)) b!4552815))

(declare-fun m!5332275 () Bool)

(assert (=> d!1411159 m!5332275))

(declare-fun m!5332277 () Bool)

(assert (=> d!1411159 m!5332277))

(declare-fun m!5332279 () Bool)

(assert (=> b!4552814 m!5332279))

(assert (=> b!4552814 m!5332279))

(declare-fun m!5332281 () Bool)

(assert (=> b!4552814 m!5332281))

(assert (=> b!4552619 d!1411159))

(declare-fun bs!903613 () Bool)

(declare-fun d!1411161 () Bool)

(assert (= bs!903613 (and d!1411161 d!1411139)))

(declare-fun lambda!178488 () Int)

(assert (=> bs!903613 (= lambda!178488 lambda!178452)))

(declare-fun bs!903614 () Bool)

(assert (= bs!903614 (and d!1411161 d!1411149)))

(assert (=> bs!903614 (= lambda!178488 lambda!178455)))

(declare-fun bs!903615 () Bool)

(assert (= bs!903615 (and d!1411161 d!1411143)))

(assert (=> bs!903615 (= lambda!178488 lambda!178453)))

(declare-fun bs!903616 () Bool)

(assert (= bs!903616 (and d!1411161 start!452424)))

(assert (=> bs!903616 (= lambda!178488 lambda!178431)))

(declare-fun bs!903617 () Bool)

(assert (= bs!903617 (and d!1411161 d!1411155)))

(assert (=> bs!903617 (= lambda!178488 lambda!178470)))

(declare-fun bs!903618 () Bool)

(assert (= bs!903618 (and d!1411161 d!1411159)))

(assert (=> bs!903618 (= lambda!178488 lambda!178485)))

(declare-fun bs!903619 () Bool)

(assert (= bs!903619 (and d!1411161 d!1411137)))

(assert (=> bs!903619 (= lambda!178488 lambda!178449)))

(declare-fun bs!903620 () Bool)

(assert (= bs!903620 (and d!1411161 d!1411087)))

(assert (=> bs!903620 (= lambda!178488 lambda!178441)))

(declare-fun bs!903621 () Bool)

(assert (= bs!903621 (and d!1411161 d!1411147)))

(assert (=> bs!903621 (= lambda!178488 lambda!178454)))

(declare-fun lt!1725208 () ListMap!3729)

(assert (=> d!1411161 (invariantList!1062 (toList!4468 lt!1725208))))

(declare-fun e!2837591 () ListMap!3729)

(assert (=> d!1411161 (= lt!1725208 e!2837591)))

(declare-fun c!778093 () Bool)

(assert (=> d!1411161 (= c!778093 ((_ is Cons!50832) (Cons!50832 lt!1725018 lt!1725022)))))

(assert (=> d!1411161 (forall!10403 (Cons!50832 lt!1725018 lt!1725022) lambda!178488)))

(assert (=> d!1411161 (= (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022)) lt!1725208)))

(declare-fun b!4552818 () Bool)

(assert (=> b!4552818 (= e!2837591 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (Cons!50832 lt!1725018 lt!1725022))) (extractMap!1286 (t!357926 (Cons!50832 lt!1725018 lt!1725022)))))))

(declare-fun b!4552819 () Bool)

(assert (=> b!4552819 (= e!2837591 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411161 c!778093) b!4552818))

(assert (= (and d!1411161 (not c!778093)) b!4552819))

(declare-fun m!5332283 () Bool)

(assert (=> d!1411161 m!5332283))

(declare-fun m!5332285 () Bool)

(assert (=> d!1411161 m!5332285))

(declare-fun m!5332287 () Bool)

(assert (=> b!4552818 m!5332287))

(assert (=> b!4552818 m!5332287))

(declare-fun m!5332289 () Bool)

(assert (=> b!4552818 m!5332289))

(assert (=> b!4552619 d!1411161))

(declare-fun bs!903633 () Bool)

(declare-fun d!1411163 () Bool)

(assert (= bs!903633 (and d!1411163 d!1411139)))

(declare-fun lambda!178496 () Int)

(assert (=> bs!903633 (= lambda!178496 lambda!178452)))

(declare-fun bs!903634 () Bool)

(assert (= bs!903634 (and d!1411163 d!1411149)))

(assert (=> bs!903634 (= lambda!178496 lambda!178455)))

(declare-fun bs!903635 () Bool)

(assert (= bs!903635 (and d!1411163 d!1411143)))

(assert (=> bs!903635 (= lambda!178496 lambda!178453)))

(declare-fun bs!903636 () Bool)

(assert (= bs!903636 (and d!1411163 start!452424)))

(assert (=> bs!903636 (= lambda!178496 lambda!178431)))

(declare-fun bs!903637 () Bool)

(assert (= bs!903637 (and d!1411163 d!1411155)))

(assert (=> bs!903637 (= lambda!178496 lambda!178470)))

(declare-fun bs!903638 () Bool)

(assert (= bs!903638 (and d!1411163 d!1411159)))

(assert (=> bs!903638 (= lambda!178496 lambda!178485)))

(declare-fun bs!903639 () Bool)

(assert (= bs!903639 (and d!1411163 d!1411161)))

(assert (=> bs!903639 (= lambda!178496 lambda!178488)))

(declare-fun bs!903640 () Bool)

(assert (= bs!903640 (and d!1411163 d!1411137)))

(assert (=> bs!903640 (= lambda!178496 lambda!178449)))

(declare-fun bs!903641 () Bool)

(assert (= bs!903641 (and d!1411163 d!1411087)))

(assert (=> bs!903641 (= lambda!178496 lambda!178441)))

(declare-fun bs!903642 () Bool)

(assert (= bs!903642 (and d!1411163 d!1411147)))

(assert (=> bs!903642 (= lambda!178496 lambda!178454)))

(assert (=> d!1411163 (eq!681 (extractMap!1286 (Cons!50832 (tuple2!51357 hash!344 newBucket!178) (tail!7842 (toList!4467 lm!1477)))) (-!450 (extractMap!1286 (Cons!50832 (tuple2!51357 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477)))) (tail!7842 (toList!4467 lm!1477)))) key!3287))))

(declare-fun lt!1725237 () Unit!100859)

(declare-fun choose!30113 (ListLongMap!3099 (_ BitVec 64) List!50955 List!50955 K!12215 Hashable!5625) Unit!100859)

(assert (=> d!1411163 (= lt!1725237 (choose!30113 lm!1477 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1411163 (forall!10403 (toList!4467 lm!1477) lambda!178496)))

(assert (=> d!1411163 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!28 lm!1477 hash!344 (_2!28972 (h!56731 (toList!4467 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1725237)))

(declare-fun bs!903643 () Bool)

(assert (= bs!903643 d!1411163))

(declare-fun m!5332343 () Bool)

(assert (=> bs!903643 m!5332343))

(declare-fun m!5332345 () Bool)

(assert (=> bs!903643 m!5332345))

(declare-fun m!5332347 () Bool)

(assert (=> bs!903643 m!5332347))

(assert (=> bs!903643 m!5332343))

(declare-fun m!5332349 () Bool)

(assert (=> bs!903643 m!5332349))

(declare-fun m!5332351 () Bool)

(assert (=> bs!903643 m!5332351))

(declare-fun m!5332353 () Bool)

(assert (=> bs!903643 m!5332353))

(assert (=> bs!903643 m!5331983))

(assert (=> bs!903643 m!5332353))

(assert (=> bs!903643 m!5332345))

(assert (=> b!4552619 d!1411163))

(declare-fun d!1411175 () Bool)

(assert (=> d!1411175 (= (eq!681 (extractMap!1286 (Cons!50832 lt!1725003 lt!1725022)) (-!450 (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022)) key!3287)) (= (content!8489 (toList!4468 (extractMap!1286 (Cons!50832 lt!1725003 lt!1725022)))) (content!8489 (toList!4468 (-!450 (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022)) key!3287)))))))

(declare-fun bs!903644 () Bool)

(assert (= bs!903644 d!1411175))

(declare-fun m!5332355 () Bool)

(assert (=> bs!903644 m!5332355))

(declare-fun m!5332357 () Bool)

(assert (=> bs!903644 m!5332357))

(assert (=> b!4552619 d!1411175))

(declare-fun d!1411177 () Bool)

(assert (=> d!1411177 (= (tail!7842 (toList!4467 lm!1477)) (t!357926 (toList!4467 lm!1477)))))

(assert (=> b!4552619 d!1411177))

(declare-fun d!1411179 () Bool)

(declare-fun e!2837603 () Bool)

(assert (=> d!1411179 e!2837603))

(declare-fun res!1898940 () Bool)

(assert (=> d!1411179 (=> (not res!1898940) (not e!2837603))))

(declare-fun lt!1725238 () ListMap!3729)

(assert (=> d!1411179 (= res!1898940 (not (contains!13670 lt!1725238 key!3287)))))

(assert (=> d!1411179 (= lt!1725238 (ListMap!3730 (removePresrvNoDuplicatedKeys!184 (toList!4468 (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022))) key!3287)))))

(assert (=> d!1411179 (= (-!450 (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022)) key!3287) lt!1725238)))

(declare-fun b!4552836 () Bool)

(assert (=> b!4552836 (= e!2837603 (= ((_ map and) (content!8490 (keys!17713 (extractMap!1286 (Cons!50832 lt!1725018 lt!1725022)))) ((_ map not) (store ((as const (Array K!12215 Bool)) false) key!3287 true))) (content!8490 (keys!17713 lt!1725238))))))

(assert (= (and d!1411179 res!1898940) b!4552836))

(declare-fun m!5332359 () Bool)

(assert (=> d!1411179 m!5332359))

(declare-fun m!5332361 () Bool)

(assert (=> d!1411179 m!5332361))

(assert (=> b!4552836 m!5331973))

(declare-fun m!5332363 () Bool)

(assert (=> b!4552836 m!5332363))

(declare-fun m!5332365 () Bool)

(assert (=> b!4552836 m!5332365))

(assert (=> b!4552836 m!5332365))

(declare-fun m!5332367 () Bool)

(assert (=> b!4552836 m!5332367))

(assert (=> b!4552836 m!5332103))

(assert (=> b!4552836 m!5332363))

(declare-fun m!5332369 () Bool)

(assert (=> b!4552836 m!5332369))

(assert (=> b!4552619 d!1411179))

(declare-fun b!4552837 () Bool)

(declare-fun e!2837605 () Bool)

(assert (=> b!4552837 (= e!2837605 (contains!13674 (keys!17713 (extractMap!1286 (toList!4467 lm!1477))) key!3287))))

(declare-fun b!4552838 () Bool)

(assert (=> b!4552838 false))

(declare-fun lt!1725245 () Unit!100859)

(declare-fun lt!1725246 () Unit!100859)

(assert (=> b!4552838 (= lt!1725245 lt!1725246)))

(assert (=> b!4552838 (containsKey!1944 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287)))

(assert (=> b!4552838 (= lt!1725246 (lemmaInGetKeysListThenContainsKey!509 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287))))

(declare-fun e!2837604 () Unit!100859)

(declare-fun Unit!100887 () Unit!100859)

(assert (=> b!4552838 (= e!2837604 Unit!100887)))

(declare-fun bm!317602 () Bool)

(declare-fun call!317607 () Bool)

(declare-fun e!2837607 () List!50958)

(assert (=> bm!317602 (= call!317607 (contains!13674 e!2837607 key!3287))))

(declare-fun c!778098 () Bool)

(declare-fun c!778096 () Bool)

(assert (=> bm!317602 (= c!778098 c!778096)))

(declare-fun b!4552839 () Bool)

(declare-fun e!2837609 () Unit!100859)

(assert (=> b!4552839 (= e!2837609 e!2837604)))

(declare-fun c!778097 () Bool)

(assert (=> b!4552839 (= c!778097 call!317607)))

(declare-fun b!4552840 () Bool)

(assert (=> b!4552840 (= e!2837607 (getKeysList!510 (toList!4468 (extractMap!1286 (toList!4467 lm!1477)))))))

(declare-fun b!4552841 () Bool)

(declare-fun lt!1725242 () Unit!100859)

(assert (=> b!4552841 (= e!2837609 lt!1725242)))

(declare-fun lt!1725240 () Unit!100859)

(assert (=> b!4552841 (= lt!1725240 (lemmaContainsKeyImpliesGetValueByKeyDefined!1087 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287))))

(assert (=> b!4552841 (isDefined!8523 (getValueByKey!1183 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287))))

(declare-fun lt!1725239 () Unit!100859)

(assert (=> b!4552841 (= lt!1725239 lt!1725240)))

(assert (=> b!4552841 (= lt!1725242 (lemmaInListThenGetKeysListContains!506 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287))))

(assert (=> b!4552841 call!317607))

(declare-fun d!1411181 () Bool)

(declare-fun e!2837608 () Bool)

(assert (=> d!1411181 e!2837608))

(declare-fun res!1898941 () Bool)

(assert (=> d!1411181 (=> res!1898941 e!2837608)))

(declare-fun e!2837606 () Bool)

(assert (=> d!1411181 (= res!1898941 e!2837606)))

(declare-fun res!1898943 () Bool)

(assert (=> d!1411181 (=> (not res!1898943) (not e!2837606))))

(declare-fun lt!1725241 () Bool)

(assert (=> d!1411181 (= res!1898943 (not lt!1725241))))

(declare-fun lt!1725243 () Bool)

(assert (=> d!1411181 (= lt!1725241 lt!1725243)))

(declare-fun lt!1725244 () Unit!100859)

(assert (=> d!1411181 (= lt!1725244 e!2837609)))

(assert (=> d!1411181 (= c!778096 lt!1725243)))

(assert (=> d!1411181 (= lt!1725243 (containsKey!1944 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287))))

(assert (=> d!1411181 (= (contains!13670 (extractMap!1286 (toList!4467 lm!1477)) key!3287) lt!1725241)))

(declare-fun b!4552842 () Bool)

(assert (=> b!4552842 (= e!2837607 (keys!17713 (extractMap!1286 (toList!4467 lm!1477))))))

(declare-fun b!4552843 () Bool)

(assert (=> b!4552843 (= e!2837606 (not (contains!13674 (keys!17713 (extractMap!1286 (toList!4467 lm!1477))) key!3287)))))

(declare-fun b!4552844 () Bool)

(assert (=> b!4552844 (= e!2837608 e!2837605)))

(declare-fun res!1898942 () Bool)

(assert (=> b!4552844 (=> (not res!1898942) (not e!2837605))))

(assert (=> b!4552844 (= res!1898942 (isDefined!8523 (getValueByKey!1183 (toList!4468 (extractMap!1286 (toList!4467 lm!1477))) key!3287)))))

(declare-fun b!4552845 () Bool)

(declare-fun Unit!100888 () Unit!100859)

(assert (=> b!4552845 (= e!2837604 Unit!100888)))

(assert (= (and d!1411181 c!778096) b!4552841))

(assert (= (and d!1411181 (not c!778096)) b!4552839))

(assert (= (and b!4552839 c!778097) b!4552838))

(assert (= (and b!4552839 (not c!778097)) b!4552845))

(assert (= (or b!4552841 b!4552839) bm!317602))

(assert (= (and bm!317602 c!778098) b!4552840))

(assert (= (and bm!317602 (not c!778098)) b!4552842))

(assert (= (and d!1411181 res!1898943) b!4552843))

(assert (= (and d!1411181 (not res!1898941)) b!4552844))

(assert (= (and b!4552844 res!1898942) b!4552837))

(declare-fun m!5332371 () Bool)

(assert (=> b!4552844 m!5332371))

(assert (=> b!4552844 m!5332371))

(declare-fun m!5332373 () Bool)

(assert (=> b!4552844 m!5332373))

(assert (=> b!4552842 m!5331931))

(declare-fun m!5332375 () Bool)

(assert (=> b!4552842 m!5332375))

(assert (=> b!4552837 m!5331931))

(assert (=> b!4552837 m!5332375))

(assert (=> b!4552837 m!5332375))

(declare-fun m!5332377 () Bool)

(assert (=> b!4552837 m!5332377))

(declare-fun m!5332379 () Bool)

(assert (=> b!4552840 m!5332379))

(declare-fun m!5332381 () Bool)

(assert (=> b!4552838 m!5332381))

(declare-fun m!5332383 () Bool)

(assert (=> b!4552838 m!5332383))

(assert (=> b!4552843 m!5331931))

(assert (=> b!4552843 m!5332375))

(assert (=> b!4552843 m!5332375))

(assert (=> b!4552843 m!5332377))

(declare-fun m!5332385 () Bool)

(assert (=> b!4552841 m!5332385))

(assert (=> b!4552841 m!5332371))

(assert (=> b!4552841 m!5332371))

(assert (=> b!4552841 m!5332373))

(declare-fun m!5332387 () Bool)

(assert (=> b!4552841 m!5332387))

(assert (=> d!1411181 m!5332381))

(declare-fun m!5332389 () Bool)

(assert (=> bm!317602 m!5332389))

(assert (=> b!4552608 d!1411181))

(declare-fun bs!903645 () Bool)

(declare-fun d!1411183 () Bool)

(assert (= bs!903645 (and d!1411183 d!1411163)))

(declare-fun lambda!178497 () Int)

(assert (=> bs!903645 (= lambda!178497 lambda!178496)))

(declare-fun bs!903646 () Bool)

(assert (= bs!903646 (and d!1411183 d!1411139)))

(assert (=> bs!903646 (= lambda!178497 lambda!178452)))

(declare-fun bs!903647 () Bool)

(assert (= bs!903647 (and d!1411183 d!1411149)))

(assert (=> bs!903647 (= lambda!178497 lambda!178455)))

(declare-fun bs!903648 () Bool)

(assert (= bs!903648 (and d!1411183 d!1411143)))

(assert (=> bs!903648 (= lambda!178497 lambda!178453)))

(declare-fun bs!903649 () Bool)

(assert (= bs!903649 (and d!1411183 start!452424)))

(assert (=> bs!903649 (= lambda!178497 lambda!178431)))

(declare-fun bs!903650 () Bool)

(assert (= bs!903650 (and d!1411183 d!1411155)))

(assert (=> bs!903650 (= lambda!178497 lambda!178470)))

(declare-fun bs!903651 () Bool)

(assert (= bs!903651 (and d!1411183 d!1411159)))

(assert (=> bs!903651 (= lambda!178497 lambda!178485)))

(declare-fun bs!903652 () Bool)

(assert (= bs!903652 (and d!1411183 d!1411161)))

(assert (=> bs!903652 (= lambda!178497 lambda!178488)))

(declare-fun bs!903653 () Bool)

(assert (= bs!903653 (and d!1411183 d!1411137)))

(assert (=> bs!903653 (= lambda!178497 lambda!178449)))

(declare-fun bs!903654 () Bool)

(assert (= bs!903654 (and d!1411183 d!1411087)))

(assert (=> bs!903654 (= lambda!178497 lambda!178441)))

(declare-fun bs!903655 () Bool)

(assert (= bs!903655 (and d!1411183 d!1411147)))

(assert (=> bs!903655 (= lambda!178497 lambda!178454)))

(declare-fun lt!1725249 () ListMap!3729)

(assert (=> d!1411183 (invariantList!1062 (toList!4468 lt!1725249))))

(declare-fun e!2837612 () ListMap!3729)

(assert (=> d!1411183 (= lt!1725249 e!2837612)))

(declare-fun c!778099 () Bool)

(assert (=> d!1411183 (= c!778099 ((_ is Cons!50832) (toList!4467 lm!1477)))))

(assert (=> d!1411183 (forall!10403 (toList!4467 lm!1477) lambda!178497)))

(assert (=> d!1411183 (= (extractMap!1286 (toList!4467 lm!1477)) lt!1725249)))

(declare-fun b!4552848 () Bool)

(assert (=> b!4552848 (= e!2837612 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (toList!4467 lm!1477))) (extractMap!1286 (t!357926 (toList!4467 lm!1477)))))))

(declare-fun b!4552849 () Bool)

(assert (=> b!4552849 (= e!2837612 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411183 c!778099) b!4552848))

(assert (= (and d!1411183 (not c!778099)) b!4552849))

(declare-fun m!5332405 () Bool)

(assert (=> d!1411183 m!5332405))

(declare-fun m!5332407 () Bool)

(assert (=> d!1411183 m!5332407))

(assert (=> b!4552848 m!5331927))

(assert (=> b!4552848 m!5331927))

(declare-fun m!5332409 () Bool)

(assert (=> b!4552848 m!5332409))

(assert (=> b!4552608 d!1411183))

(declare-fun d!1411187 () Bool)

(declare-fun res!1898951 () Bool)

(declare-fun e!2837619 () Bool)

(assert (=> d!1411187 (=> res!1898951 e!2837619)))

(assert (=> d!1411187 (= res!1898951 (not ((_ is Cons!50831) newBucket!178)))))

(assert (=> d!1411187 (= (noDuplicateKeys!1230 newBucket!178) e!2837619)))

(declare-fun b!4552857 () Bool)

(declare-fun e!2837620 () Bool)

(assert (=> b!4552857 (= e!2837619 e!2837620)))

(declare-fun res!1898952 () Bool)

(assert (=> b!4552857 (=> (not res!1898952) (not e!2837620))))

(assert (=> b!4552857 (= res!1898952 (not (containsKey!1941 (t!357925 newBucket!178) (_1!28971 (h!56730 newBucket!178)))))))

(declare-fun b!4552858 () Bool)

(assert (=> b!4552858 (= e!2837620 (noDuplicateKeys!1230 (t!357925 newBucket!178)))))

(assert (= (and d!1411187 (not res!1898951)) b!4552857))

(assert (= (and b!4552857 res!1898952) b!4552858))

(declare-fun m!5332419 () Bool)

(assert (=> b!4552857 m!5332419))

(declare-fun m!5332421 () Bool)

(assert (=> b!4552858 m!5332421))

(assert (=> b!4552618 d!1411187))

(declare-fun d!1411193 () Bool)

(declare-fun res!1898957 () Bool)

(declare-fun e!2837625 () Bool)

(assert (=> d!1411193 (=> res!1898957 e!2837625)))

(assert (=> d!1411193 (= res!1898957 ((_ is Nil!50832) (toList!4467 lm!1477)))))

(assert (=> d!1411193 (= (forall!10403 (toList!4467 lm!1477) lambda!178431) e!2837625)))

(declare-fun b!4552863 () Bool)

(declare-fun e!2837626 () Bool)

(assert (=> b!4552863 (= e!2837625 e!2837626)))

(declare-fun res!1898958 () Bool)

(assert (=> b!4552863 (=> (not res!1898958) (not e!2837626))))

(declare-fun dynLambda!21256 (Int tuple2!51356) Bool)

(assert (=> b!4552863 (= res!1898958 (dynLambda!21256 lambda!178431 (h!56731 (toList!4467 lm!1477))))))

(declare-fun b!4552864 () Bool)

(assert (=> b!4552864 (= e!2837626 (forall!10403 (t!357926 (toList!4467 lm!1477)) lambda!178431))))

(assert (= (and d!1411193 (not res!1898957)) b!4552863))

(assert (= (and b!4552863 res!1898958) b!4552864))

(declare-fun b_lambda!160275 () Bool)

(assert (=> (not b_lambda!160275) (not b!4552863)))

(declare-fun m!5332423 () Bool)

(assert (=> b!4552863 m!5332423))

(declare-fun m!5332425 () Bool)

(assert (=> b!4552864 m!5332425))

(assert (=> start!452424 d!1411193))

(declare-fun d!1411195 () Bool)

(declare-fun isStrictlySorted!476 (List!50956) Bool)

(assert (=> d!1411195 (= (inv!66399 lm!1477) (isStrictlySorted!476 (toList!4467 lm!1477)))))

(declare-fun bs!903663 () Bool)

(assert (= bs!903663 d!1411195))

(declare-fun m!5332427 () Bool)

(assert (=> bs!903663 m!5332427))

(assert (=> start!452424 d!1411195))

(declare-fun b!4552875 () Bool)

(declare-fun e!2837632 () List!50955)

(assert (=> b!4552875 (= e!2837632 (Cons!50831 (h!56730 lt!1725005) (removePairForKey!857 (t!357925 lt!1725005) key!3287)))))

(declare-fun b!4552876 () Bool)

(assert (=> b!4552876 (= e!2837632 Nil!50831)))

(declare-fun d!1411197 () Bool)

(declare-fun lt!1725254 () List!50955)

(assert (=> d!1411197 (not (containsKey!1941 lt!1725254 key!3287))))

(declare-fun e!2837631 () List!50955)

(assert (=> d!1411197 (= lt!1725254 e!2837631)))

(declare-fun c!778106 () Bool)

(assert (=> d!1411197 (= c!778106 (and ((_ is Cons!50831) lt!1725005) (= (_1!28971 (h!56730 lt!1725005)) key!3287)))))

(assert (=> d!1411197 (noDuplicateKeys!1230 lt!1725005)))

(assert (=> d!1411197 (= (removePairForKey!857 lt!1725005 key!3287) lt!1725254)))

(declare-fun b!4552874 () Bool)

(assert (=> b!4552874 (= e!2837631 e!2837632)))

(declare-fun c!778105 () Bool)

(assert (=> b!4552874 (= c!778105 ((_ is Cons!50831) lt!1725005))))

(declare-fun b!4552873 () Bool)

(assert (=> b!4552873 (= e!2837631 (t!357925 lt!1725005))))

(assert (= (and d!1411197 c!778106) b!4552873))

(assert (= (and d!1411197 (not c!778106)) b!4552874))

(assert (= (and b!4552874 c!778105) b!4552875))

(assert (= (and b!4552874 (not c!778105)) b!4552876))

(declare-fun m!5332429 () Bool)

(assert (=> b!4552875 m!5332429))

(declare-fun m!5332431 () Bool)

(assert (=> d!1411197 m!5332431))

(declare-fun m!5332433 () Bool)

(assert (=> d!1411197 m!5332433))

(assert (=> b!4552617 d!1411197))

(declare-fun d!1411199 () Bool)

(declare-fun lt!1725259 () Bool)

(declare-fun content!8492 (List!50956) (InoxSet tuple2!51356))

(assert (=> d!1411199 (= lt!1725259 (select (content!8492 (toList!4467 lm!1477)) lt!1725014))))

(declare-fun e!2837637 () Bool)

(assert (=> d!1411199 (= lt!1725259 e!2837637)))

(declare-fun res!1898964 () Bool)

(assert (=> d!1411199 (=> (not res!1898964) (not e!2837637))))

(assert (=> d!1411199 (= res!1898964 ((_ is Cons!50832) (toList!4467 lm!1477)))))

(assert (=> d!1411199 (= (contains!13671 (toList!4467 lm!1477) lt!1725014) lt!1725259)))

(declare-fun b!4552881 () Bool)

(declare-fun e!2837638 () Bool)

(assert (=> b!4552881 (= e!2837637 e!2837638)))

(declare-fun res!1898963 () Bool)

(assert (=> b!4552881 (=> res!1898963 e!2837638)))

(assert (=> b!4552881 (= res!1898963 (= (h!56731 (toList!4467 lm!1477)) lt!1725014))))

(declare-fun b!4552882 () Bool)

(assert (=> b!4552882 (= e!2837638 (contains!13671 (t!357926 (toList!4467 lm!1477)) lt!1725014))))

(assert (= (and d!1411199 res!1898964) b!4552881))

(assert (= (and b!4552881 (not res!1898963)) b!4552882))

(declare-fun m!5332435 () Bool)

(assert (=> d!1411199 m!5332435))

(declare-fun m!5332437 () Bool)

(assert (=> d!1411199 m!5332437))

(declare-fun m!5332439 () Bool)

(assert (=> b!4552882 m!5332439))

(assert (=> b!4552617 d!1411199))

(declare-fun d!1411201 () Bool)

(declare-fun e!2837640 () Bool)

(assert (=> d!1411201 e!2837640))

(declare-fun res!1898965 () Bool)

(assert (=> d!1411201 (=> res!1898965 e!2837640)))

(declare-fun lt!1725263 () Bool)

(assert (=> d!1411201 (= res!1898965 (not lt!1725263))))

(declare-fun lt!1725264 () Bool)

(assert (=> d!1411201 (= lt!1725263 lt!1725264)))

(declare-fun lt!1725262 () Unit!100859)

(declare-fun e!2837639 () Unit!100859)

(assert (=> d!1411201 (= lt!1725262 e!2837639)))

(declare-fun c!778107 () Bool)

(assert (=> d!1411201 (= c!778107 lt!1725264)))

(assert (=> d!1411201 (= lt!1725264 (containsKey!1945 (toList!4467 lm!1477) lt!1725009))))

(assert (=> d!1411201 (= (contains!13672 lm!1477 lt!1725009) lt!1725263)))

(declare-fun b!4552883 () Bool)

(declare-fun lt!1725261 () Unit!100859)

(assert (=> b!4552883 (= e!2837639 lt!1725261)))

(assert (=> b!4552883 (= lt!1725261 (lemmaContainsKeyImpliesGetValueByKeyDefined!1088 (toList!4467 lm!1477) lt!1725009))))

(assert (=> b!4552883 (isDefined!8524 (getValueByKey!1184 (toList!4467 lm!1477) lt!1725009))))

(declare-fun b!4552884 () Bool)

(declare-fun Unit!100889 () Unit!100859)

(assert (=> b!4552884 (= e!2837639 Unit!100889)))

(declare-fun b!4552885 () Bool)

(assert (=> b!4552885 (= e!2837640 (isDefined!8524 (getValueByKey!1184 (toList!4467 lm!1477) lt!1725009)))))

(assert (= (and d!1411201 c!778107) b!4552883))

(assert (= (and d!1411201 (not c!778107)) b!4552884))

(assert (= (and d!1411201 (not res!1898965)) b!4552885))

(declare-fun m!5332441 () Bool)

(assert (=> d!1411201 m!5332441))

(declare-fun m!5332443 () Bool)

(assert (=> b!4552883 m!5332443))

(declare-fun m!5332445 () Bool)

(assert (=> b!4552883 m!5332445))

(assert (=> b!4552883 m!5332445))

(declare-fun m!5332447 () Bool)

(assert (=> b!4552883 m!5332447))

(assert (=> b!4552885 m!5332445))

(assert (=> b!4552885 m!5332445))

(assert (=> b!4552885 m!5332447))

(assert (=> b!4552617 d!1411201))

(declare-fun bs!903672 () Bool)

(declare-fun d!1411203 () Bool)

(assert (= bs!903672 (and d!1411203 d!1411163)))

(declare-fun lambda!178502 () Int)

(assert (=> bs!903672 (= lambda!178502 lambda!178496)))

(declare-fun bs!903673 () Bool)

(assert (= bs!903673 (and d!1411203 d!1411139)))

(assert (=> bs!903673 (= lambda!178502 lambda!178452)))

(declare-fun bs!903674 () Bool)

(assert (= bs!903674 (and d!1411203 d!1411149)))

(assert (=> bs!903674 (= lambda!178502 lambda!178455)))

(declare-fun bs!903676 () Bool)

(assert (= bs!903676 (and d!1411203 d!1411143)))

(assert (=> bs!903676 (= lambda!178502 lambda!178453)))

(declare-fun bs!903677 () Bool)

(assert (= bs!903677 (and d!1411203 start!452424)))

(assert (=> bs!903677 (= lambda!178502 lambda!178431)))

(declare-fun bs!903678 () Bool)

(assert (= bs!903678 (and d!1411203 d!1411183)))

(assert (=> bs!903678 (= lambda!178502 lambda!178497)))

(declare-fun bs!903679 () Bool)

(assert (= bs!903679 (and d!1411203 d!1411155)))

(assert (=> bs!903679 (= lambda!178502 lambda!178470)))

(declare-fun bs!903680 () Bool)

(assert (= bs!903680 (and d!1411203 d!1411159)))

(assert (=> bs!903680 (= lambda!178502 lambda!178485)))

(declare-fun bs!903681 () Bool)

(assert (= bs!903681 (and d!1411203 d!1411161)))

(assert (=> bs!903681 (= lambda!178502 lambda!178488)))

(declare-fun bs!903682 () Bool)

(assert (= bs!903682 (and d!1411203 d!1411137)))

(assert (=> bs!903682 (= lambda!178502 lambda!178449)))

(declare-fun bs!903684 () Bool)

(assert (= bs!903684 (and d!1411203 d!1411087)))

(assert (=> bs!903684 (= lambda!178502 lambda!178441)))

(declare-fun bs!903685 () Bool)

(assert (= bs!903685 (and d!1411203 d!1411147)))

(assert (=> bs!903685 (= lambda!178502 lambda!178454)))

(assert (=> d!1411203 (contains!13672 lm!1477 (hash!2994 hashF!1107 key!3287))))

(declare-fun lt!1725265 () Unit!100859)

(assert (=> d!1411203 (= lt!1725265 (choose!30111 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1411203 (forall!10403 (toList!4467 lm!1477) lambda!178502)))

(assert (=> d!1411203 (= (lemmaInGenMapThenLongMapContainsHash!304 lm!1477 key!3287 hashF!1107) lt!1725265)))

(declare-fun bs!903687 () Bool)

(assert (= bs!903687 d!1411203))

(assert (=> bs!903687 m!5332013))

(assert (=> bs!903687 m!5332013))

(declare-fun m!5332461 () Bool)

(assert (=> bs!903687 m!5332461))

(declare-fun m!5332463 () Bool)

(assert (=> bs!903687 m!5332463))

(declare-fun m!5332465 () Bool)

(assert (=> bs!903687 m!5332465))

(assert (=> b!4552617 d!1411203))

(declare-fun d!1411209 () Bool)

(assert (=> d!1411209 (contains!13671 (toList!4467 lm!1477) (tuple2!51357 hash!344 lt!1725005))))

(declare-fun lt!1725281 () Unit!100859)

(declare-fun choose!30115 (List!50956 (_ BitVec 64) List!50955) Unit!100859)

(assert (=> d!1411209 (= lt!1725281 (choose!30115 (toList!4467 lm!1477) hash!344 lt!1725005))))

(declare-fun e!2837651 () Bool)

(assert (=> d!1411209 e!2837651))

(declare-fun res!1898973 () Bool)

(assert (=> d!1411209 (=> (not res!1898973) (not e!2837651))))

(assert (=> d!1411209 (= res!1898973 (isStrictlySorted!476 (toList!4467 lm!1477)))))

(assert (=> d!1411209 (= (lemmaGetValueByKeyImpliesContainsTuple!742 (toList!4467 lm!1477) hash!344 lt!1725005) lt!1725281)))

(declare-fun b!4552901 () Bool)

(assert (=> b!4552901 (= e!2837651 (= (getValueByKey!1184 (toList!4467 lm!1477) hash!344) (Some!11251 lt!1725005)))))

(assert (= (and d!1411209 res!1898973) b!4552901))

(declare-fun m!5332505 () Bool)

(assert (=> d!1411209 m!5332505))

(declare-fun m!5332509 () Bool)

(assert (=> d!1411209 m!5332509))

(assert (=> d!1411209 m!5332427))

(declare-fun m!5332511 () Bool)

(assert (=> b!4552901 m!5332511))

(assert (=> b!4552617 d!1411209))

(declare-fun d!1411217 () Bool)

(assert (=> d!1411217 (dynLambda!21256 lambda!178431 lt!1725014)))

(declare-fun lt!1725285 () Unit!100859)

(declare-fun choose!30116 (List!50956 Int tuple2!51356) Unit!100859)

(assert (=> d!1411217 (= lt!1725285 (choose!30116 (toList!4467 lm!1477) lambda!178431 lt!1725014))))

(declare-fun e!2837655 () Bool)

(assert (=> d!1411217 e!2837655))

(declare-fun res!1898976 () Bool)

(assert (=> d!1411217 (=> (not res!1898976) (not e!2837655))))

(assert (=> d!1411217 (= res!1898976 (forall!10403 (toList!4467 lm!1477) lambda!178431))))

(assert (=> d!1411217 (= (forallContained!2667 (toList!4467 lm!1477) lambda!178431 lt!1725014) lt!1725285)))

(declare-fun b!4552906 () Bool)

(assert (=> b!4552906 (= e!2837655 (contains!13671 (toList!4467 lm!1477) lt!1725014))))

(assert (= (and d!1411217 res!1898976) b!4552906))

(declare-fun b_lambda!160277 () Bool)

(assert (=> (not b_lambda!160277) (not d!1411217)))

(declare-fun m!5332521 () Bool)

(assert (=> d!1411217 m!5332521))

(declare-fun m!5332523 () Bool)

(assert (=> d!1411217 m!5332523))

(assert (=> d!1411217 m!5332007))

(assert (=> b!4552906 m!5332003))

(assert (=> b!4552617 d!1411217))

(declare-fun d!1411221 () Bool)

(declare-fun get!16741 (Option!11252) List!50955)

(assert (=> d!1411221 (= (apply!11967 lm!1477 hash!344) (get!16741 (getValueByKey!1184 (toList!4467 lm!1477) hash!344)))))

(declare-fun bs!903706 () Bool)

(assert (= bs!903706 d!1411221))

(assert (=> bs!903706 m!5332511))

(assert (=> bs!903706 m!5332511))

(declare-fun m!5332525 () Bool)

(assert (=> bs!903706 m!5332525))

(assert (=> b!4552617 d!1411221))

(declare-fun bs!903707 () Bool)

(declare-fun d!1411223 () Bool)

(assert (= bs!903707 (and d!1411223 d!1411163)))

(declare-fun lambda!178507 () Int)

(assert (=> bs!903707 (not (= lambda!178507 lambda!178496))))

(declare-fun bs!903708 () Bool)

(assert (= bs!903708 (and d!1411223 d!1411139)))

(assert (=> bs!903708 (not (= lambda!178507 lambda!178452))))

(declare-fun bs!903709 () Bool)

(assert (= bs!903709 (and d!1411223 d!1411149)))

(assert (=> bs!903709 (not (= lambda!178507 lambda!178455))))

(declare-fun bs!903710 () Bool)

(assert (= bs!903710 (and d!1411223 d!1411143)))

(assert (=> bs!903710 (not (= lambda!178507 lambda!178453))))

(declare-fun bs!903711 () Bool)

(assert (= bs!903711 (and d!1411223 start!452424)))

(assert (=> bs!903711 (not (= lambda!178507 lambda!178431))))

(declare-fun bs!903712 () Bool)

(assert (= bs!903712 (and d!1411223 d!1411183)))

(assert (=> bs!903712 (not (= lambda!178507 lambda!178497))))

(declare-fun bs!903713 () Bool)

(assert (= bs!903713 (and d!1411223 d!1411155)))

(assert (=> bs!903713 (not (= lambda!178507 lambda!178470))))

(declare-fun bs!903714 () Bool)

(assert (= bs!903714 (and d!1411223 d!1411159)))

(assert (=> bs!903714 (not (= lambda!178507 lambda!178485))))

(declare-fun bs!903715 () Bool)

(assert (= bs!903715 (and d!1411223 d!1411161)))

(assert (=> bs!903715 (not (= lambda!178507 lambda!178488))))

(declare-fun bs!903716 () Bool)

(assert (= bs!903716 (and d!1411223 d!1411137)))

(assert (=> bs!903716 (not (= lambda!178507 lambda!178449))))

(declare-fun bs!903717 () Bool)

(assert (= bs!903717 (and d!1411223 d!1411203)))

(assert (=> bs!903717 (not (= lambda!178507 lambda!178502))))

(declare-fun bs!903718 () Bool)

(assert (= bs!903718 (and d!1411223 d!1411087)))

(assert (=> bs!903718 (not (= lambda!178507 lambda!178441))))

(declare-fun bs!903719 () Bool)

(assert (= bs!903719 (and d!1411223 d!1411147)))

(assert (=> bs!903719 (not (= lambda!178507 lambda!178454))))

(assert (=> d!1411223 true))

(assert (=> d!1411223 (= (allKeysSameHashInMap!1337 lm!1477 hashF!1107) (forall!10403 (toList!4467 lm!1477) lambda!178507))))

(declare-fun bs!903720 () Bool)

(assert (= bs!903720 d!1411223))

(declare-fun m!5332527 () Bool)

(assert (=> bs!903720 m!5332527))

(assert (=> b!4552622 d!1411223))

(declare-fun d!1411225 () Bool)

(assert (=> d!1411225 (= (eq!681 (extractMap!1286 (toList!4467 lt!1725000)) (addToMapMapFromBucket!748 newBucket!178 lt!1725006)) (= (content!8489 (toList!4468 (extractMap!1286 (toList!4467 lt!1725000)))) (content!8489 (toList!4468 (addToMapMapFromBucket!748 newBucket!178 lt!1725006)))))))

(declare-fun bs!903721 () Bool)

(assert (= bs!903721 d!1411225))

(declare-fun m!5332529 () Bool)

(assert (=> bs!903721 m!5332529))

(declare-fun m!5332531 () Bool)

(assert (=> bs!903721 m!5332531))

(assert (=> b!4552610 d!1411225))

(declare-fun bs!903722 () Bool)

(declare-fun d!1411227 () Bool)

(assert (= bs!903722 (and d!1411227 d!1411163)))

(declare-fun lambda!178508 () Int)

(assert (=> bs!903722 (= lambda!178508 lambda!178496)))

(declare-fun bs!903723 () Bool)

(assert (= bs!903723 (and d!1411227 d!1411139)))

(assert (=> bs!903723 (= lambda!178508 lambda!178452)))

(declare-fun bs!903724 () Bool)

(assert (= bs!903724 (and d!1411227 d!1411149)))

(assert (=> bs!903724 (= lambda!178508 lambda!178455)))

(declare-fun bs!903725 () Bool)

(assert (= bs!903725 (and d!1411227 d!1411143)))

(assert (=> bs!903725 (= lambda!178508 lambda!178453)))

(declare-fun bs!903726 () Bool)

(assert (= bs!903726 (and d!1411227 start!452424)))

(assert (=> bs!903726 (= lambda!178508 lambda!178431)))

(declare-fun bs!903727 () Bool)

(assert (= bs!903727 (and d!1411227 d!1411183)))

(assert (=> bs!903727 (= lambda!178508 lambda!178497)))

(declare-fun bs!903728 () Bool)

(assert (= bs!903728 (and d!1411227 d!1411155)))

(assert (=> bs!903728 (= lambda!178508 lambda!178470)))

(declare-fun bs!903729 () Bool)

(assert (= bs!903729 (and d!1411227 d!1411223)))

(assert (=> bs!903729 (not (= lambda!178508 lambda!178507))))

(declare-fun bs!903730 () Bool)

(assert (= bs!903730 (and d!1411227 d!1411159)))

(assert (=> bs!903730 (= lambda!178508 lambda!178485)))

(declare-fun bs!903731 () Bool)

(assert (= bs!903731 (and d!1411227 d!1411161)))

(assert (=> bs!903731 (= lambda!178508 lambda!178488)))

(declare-fun bs!903732 () Bool)

(assert (= bs!903732 (and d!1411227 d!1411137)))

(assert (=> bs!903732 (= lambda!178508 lambda!178449)))

(declare-fun bs!903733 () Bool)

(assert (= bs!903733 (and d!1411227 d!1411203)))

(assert (=> bs!903733 (= lambda!178508 lambda!178502)))

(declare-fun bs!903734 () Bool)

(assert (= bs!903734 (and d!1411227 d!1411087)))

(assert (=> bs!903734 (= lambda!178508 lambda!178441)))

(declare-fun bs!903735 () Bool)

(assert (= bs!903735 (and d!1411227 d!1411147)))

(assert (=> bs!903735 (= lambda!178508 lambda!178454)))

(declare-fun lt!1725286 () ListMap!3729)

(assert (=> d!1411227 (invariantList!1062 (toList!4468 lt!1725286))))

(declare-fun e!2837656 () ListMap!3729)

(assert (=> d!1411227 (= lt!1725286 e!2837656)))

(declare-fun c!778113 () Bool)

(assert (=> d!1411227 (= c!778113 ((_ is Cons!50832) (toList!4467 lt!1725000)))))

(assert (=> d!1411227 (forall!10403 (toList!4467 lt!1725000) lambda!178508)))

(assert (=> d!1411227 (= (extractMap!1286 (toList!4467 lt!1725000)) lt!1725286)))

(declare-fun b!4552909 () Bool)

(assert (=> b!4552909 (= e!2837656 (addToMapMapFromBucket!748 (_2!28972 (h!56731 (toList!4467 lt!1725000))) (extractMap!1286 (t!357926 (toList!4467 lt!1725000)))))))

(declare-fun b!4552910 () Bool)

(assert (=> b!4552910 (= e!2837656 (ListMap!3730 Nil!50831))))

(assert (= (and d!1411227 c!778113) b!4552909))

(assert (= (and d!1411227 (not c!778113)) b!4552910))

(declare-fun m!5332533 () Bool)

(assert (=> d!1411227 m!5332533))

(declare-fun m!5332535 () Bool)

(assert (=> d!1411227 m!5332535))

(declare-fun m!5332537 () Bool)

(assert (=> b!4552909 m!5332537))

(assert (=> b!4552909 m!5332537))

(declare-fun m!5332539 () Bool)

(assert (=> b!4552909 m!5332539))

(assert (=> b!4552610 d!1411227))

(declare-fun bs!903812 () Bool)

(declare-fun b!4552955 () Bool)

(assert (= bs!903812 (and b!4552955 d!1411083)))

(declare-fun lambda!178549 () Int)

(assert (=> bs!903812 (not (= lambda!178549 lambda!178434))))

(assert (=> b!4552955 true))

(declare-fun bs!903813 () Bool)

(declare-fun b!4552956 () Bool)

(assert (= bs!903813 (and b!4552956 d!1411083)))

(declare-fun lambda!178550 () Int)

(assert (=> bs!903813 (not (= lambda!178550 lambda!178434))))

(declare-fun bs!903814 () Bool)

(assert (= bs!903814 (and b!4552956 b!4552955)))

(assert (=> bs!903814 (= lambda!178550 lambda!178549)))

(assert (=> b!4552956 true))

(declare-fun lambda!178551 () Int)

(assert (=> bs!903813 (not (= lambda!178551 lambda!178434))))

(declare-fun lt!1725352 () ListMap!3729)

(assert (=> bs!903814 (= (= lt!1725352 lt!1725006) (= lambda!178551 lambda!178549))))

(assert (=> b!4552956 (= (= lt!1725352 lt!1725006) (= lambda!178551 lambda!178550))))

(assert (=> b!4552956 true))

(declare-fun bs!903815 () Bool)

(declare-fun d!1411229 () Bool)

(assert (= bs!903815 (and d!1411229 d!1411083)))

(declare-fun lambda!178552 () Int)

(assert (=> bs!903815 (not (= lambda!178552 lambda!178434))))

(declare-fun bs!903816 () Bool)

(assert (= bs!903816 (and d!1411229 b!4552955)))

(declare-fun lt!1725354 () ListMap!3729)

(assert (=> bs!903816 (= (= lt!1725354 lt!1725006) (= lambda!178552 lambda!178549))))

(declare-fun bs!903817 () Bool)

(assert (= bs!903817 (and d!1411229 b!4552956)))

(assert (=> bs!903817 (= (= lt!1725354 lt!1725006) (= lambda!178552 lambda!178550))))

(assert (=> bs!903817 (= (= lt!1725354 lt!1725352) (= lambda!178552 lambda!178551))))

(assert (=> d!1411229 true))

(declare-fun bm!317611 () Bool)

(declare-fun c!778122 () Bool)

(declare-fun call!317616 () Bool)

(assert (=> bm!317611 (= call!317616 (forall!10404 (toList!4468 lt!1725006) (ite c!778122 lambda!178549 lambda!178551)))))

(declare-fun b!4552953 () Bool)

(declare-fun e!2837679 () Bool)

(assert (=> b!4552953 (= e!2837679 (invariantList!1062 (toList!4468 lt!1725354)))))

(declare-fun b!4552954 () Bool)

(declare-fun res!1898988 () Bool)

(assert (=> b!4552954 (=> (not res!1898988) (not e!2837679))))

(assert (=> b!4552954 (= res!1898988 (forall!10404 (toList!4468 lt!1725006) lambda!178552))))

(assert (=> d!1411229 e!2837679))

(declare-fun res!1898987 () Bool)

(assert (=> d!1411229 (=> (not res!1898987) (not e!2837679))))

(assert (=> d!1411229 (= res!1898987 (forall!10404 newBucket!178 lambda!178552))))

(declare-fun e!2837681 () ListMap!3729)

(assert (=> d!1411229 (= lt!1725354 e!2837681)))

(assert (=> d!1411229 (= c!778122 ((_ is Nil!50831) newBucket!178))))

(assert (=> d!1411229 (noDuplicateKeys!1230 newBucket!178)))

(assert (=> d!1411229 (= (addToMapMapFromBucket!748 newBucket!178 lt!1725006) lt!1725354)))

(declare-fun bm!317612 () Bool)

(declare-fun call!317617 () Unit!100859)

(declare-fun lemmaContainsAllItsOwnKeys!382 (ListMap!3729) Unit!100859)

(assert (=> bm!317612 (= call!317617 (lemmaContainsAllItsOwnKeys!382 lt!1725006))))

(declare-fun bm!317613 () Bool)

(declare-fun call!317618 () Bool)

(declare-fun lt!1725365 () ListMap!3729)

(assert (=> bm!317613 (= call!317618 (forall!10404 (ite c!778122 (toList!4468 lt!1725006) (toList!4468 lt!1725365)) (ite c!778122 lambda!178549 lambda!178551)))))

(assert (=> b!4552955 (= e!2837681 lt!1725006)))

(declare-fun lt!1725351 () Unit!100859)

(assert (=> b!4552955 (= lt!1725351 call!317617)))

(assert (=> b!4552955 call!317618))

(declare-fun lt!1725360 () Unit!100859)

(assert (=> b!4552955 (= lt!1725360 lt!1725351)))

(assert (=> b!4552955 call!317616))

(declare-fun lt!1725364 () Unit!100859)

(declare-fun Unit!100890 () Unit!100859)

(assert (=> b!4552955 (= lt!1725364 Unit!100890)))

(assert (=> b!4552956 (= e!2837681 lt!1725352)))

(declare-fun +!1648 (ListMap!3729 tuple2!51354) ListMap!3729)

(assert (=> b!4552956 (= lt!1725365 (+!1648 lt!1725006 (h!56730 newBucket!178)))))

(assert (=> b!4552956 (= lt!1725352 (addToMapMapFromBucket!748 (t!357925 newBucket!178) (+!1648 lt!1725006 (h!56730 newBucket!178))))))

(declare-fun lt!1725367 () Unit!100859)

(assert (=> b!4552956 (= lt!1725367 call!317617)))

(assert (=> b!4552956 (forall!10404 (toList!4468 lt!1725006) lambda!178550)))

(declare-fun lt!1725362 () Unit!100859)

(assert (=> b!4552956 (= lt!1725362 lt!1725367)))

(assert (=> b!4552956 (forall!10404 (toList!4468 lt!1725365) lambda!178551)))

(declare-fun lt!1725355 () Unit!100859)

(declare-fun Unit!100891 () Unit!100859)

(assert (=> b!4552956 (= lt!1725355 Unit!100891)))

(assert (=> b!4552956 (forall!10404 (t!357925 newBucket!178) lambda!178551)))

(declare-fun lt!1725348 () Unit!100859)

(declare-fun Unit!100892 () Unit!100859)

(assert (=> b!4552956 (= lt!1725348 Unit!100892)))

(declare-fun lt!1725361 () Unit!100859)

(declare-fun Unit!100893 () Unit!100859)

(assert (=> b!4552956 (= lt!1725361 Unit!100893)))

(declare-fun lt!1725347 () Unit!100859)

(declare-fun forallContained!2669 (List!50955 Int tuple2!51354) Unit!100859)

(assert (=> b!4552956 (= lt!1725347 (forallContained!2669 (toList!4468 lt!1725365) lambda!178551 (h!56730 newBucket!178)))))

(assert (=> b!4552956 (contains!13670 lt!1725365 (_1!28971 (h!56730 newBucket!178)))))

(declare-fun lt!1725356 () Unit!100859)

(declare-fun Unit!100894 () Unit!100859)

(assert (=> b!4552956 (= lt!1725356 Unit!100894)))

(assert (=> b!4552956 (contains!13670 lt!1725352 (_1!28971 (h!56730 newBucket!178)))))

(declare-fun lt!1725357 () Unit!100859)

(declare-fun Unit!100895 () Unit!100859)

(assert (=> b!4552956 (= lt!1725357 Unit!100895)))

(assert (=> b!4552956 (forall!10404 newBucket!178 lambda!178551)))

(declare-fun lt!1725350 () Unit!100859)

(declare-fun Unit!100896 () Unit!100859)

(assert (=> b!4552956 (= lt!1725350 Unit!100896)))

(assert (=> b!4552956 call!317618))

(declare-fun lt!1725358 () Unit!100859)

(declare-fun Unit!100897 () Unit!100859)

(assert (=> b!4552956 (= lt!1725358 Unit!100897)))

(declare-fun lt!1725359 () Unit!100859)

(declare-fun Unit!100898 () Unit!100859)

(assert (=> b!4552956 (= lt!1725359 Unit!100898)))

(declare-fun lt!1725353 () Unit!100859)

(declare-fun addForallContainsKeyThenBeforeAdding!382 (ListMap!3729 ListMap!3729 K!12215 V!12461) Unit!100859)

(assert (=> b!4552956 (= lt!1725353 (addForallContainsKeyThenBeforeAdding!382 lt!1725006 lt!1725352 (_1!28971 (h!56730 newBucket!178)) (_2!28971 (h!56730 newBucket!178))))))

(assert (=> b!4552956 call!317616))

(declare-fun lt!1725349 () Unit!100859)

(assert (=> b!4552956 (= lt!1725349 lt!1725353)))

(assert (=> b!4552956 (forall!10404 (toList!4468 lt!1725006) lambda!178551)))

(declare-fun lt!1725366 () Unit!100859)

(declare-fun Unit!100899 () Unit!100859)

(assert (=> b!4552956 (= lt!1725366 Unit!100899)))

(declare-fun res!1898989 () Bool)

(assert (=> b!4552956 (= res!1898989 (forall!10404 newBucket!178 lambda!178551))))

(declare-fun e!2837680 () Bool)

(assert (=> b!4552956 (=> (not res!1898989) (not e!2837680))))

(assert (=> b!4552956 e!2837680))

(declare-fun lt!1725363 () Unit!100859)

(declare-fun Unit!100900 () Unit!100859)

(assert (=> b!4552956 (= lt!1725363 Unit!100900)))

(declare-fun b!4552957 () Bool)

(assert (=> b!4552957 (= e!2837680 (forall!10404 (toList!4468 lt!1725006) lambda!178551))))

(assert (= (and d!1411229 c!778122) b!4552955))

(assert (= (and d!1411229 (not c!778122)) b!4552956))

(assert (= (and b!4552956 res!1898989) b!4552957))

(assert (= (or b!4552955 b!4552956) bm!317613))

(assert (= (or b!4552955 b!4552956) bm!317611))

(assert (= (or b!4552955 b!4552956) bm!317612))

(assert (= (and d!1411229 res!1898987) b!4552954))

(assert (= (and b!4552954 res!1898988) b!4552953))

(declare-fun m!5332631 () Bool)

(assert (=> bm!317611 m!5332631))

(declare-fun m!5332633 () Bool)

(assert (=> d!1411229 m!5332633))

(assert (=> d!1411229 m!5331935))

(declare-fun m!5332635 () Bool)

(assert (=> bm!317613 m!5332635))

(declare-fun m!5332637 () Bool)

(assert (=> b!4552956 m!5332637))

(declare-fun m!5332639 () Bool)

(assert (=> b!4552956 m!5332639))

(assert (=> b!4552956 m!5332637))

(declare-fun m!5332641 () Bool)

(assert (=> b!4552956 m!5332641))

(declare-fun m!5332643 () Bool)

(assert (=> b!4552956 m!5332643))

(declare-fun m!5332645 () Bool)

(assert (=> b!4552956 m!5332645))

(assert (=> b!4552956 m!5332641))

(declare-fun m!5332647 () Bool)

(assert (=> b!4552956 m!5332647))

(declare-fun m!5332649 () Bool)

(assert (=> b!4552956 m!5332649))

(declare-fun m!5332651 () Bool)

(assert (=> b!4552956 m!5332651))

(declare-fun m!5332653 () Bool)

(assert (=> b!4552956 m!5332653))

(declare-fun m!5332655 () Bool)

(assert (=> b!4552956 m!5332655))

(declare-fun m!5332657 () Bool)

(assert (=> b!4552956 m!5332657))

(assert (=> b!4552957 m!5332653))

(declare-fun m!5332659 () Bool)

(assert (=> b!4552954 m!5332659))

(declare-fun m!5332661 () Bool)

(assert (=> bm!317612 m!5332661))

(declare-fun m!5332663 () Bool)

(assert (=> b!4552953 m!5332663))

(assert (=> b!4552610 d!1411229))

(declare-fun bs!903818 () Bool)

(declare-fun d!1411257 () Bool)

(assert (= bs!903818 (and d!1411257 d!1411163)))

(declare-fun lambda!178555 () Int)

(assert (=> bs!903818 (= lambda!178555 lambda!178496)))

(declare-fun bs!903819 () Bool)

(assert (= bs!903819 (and d!1411257 d!1411139)))

(assert (=> bs!903819 (= lambda!178555 lambda!178452)))

(declare-fun bs!903820 () Bool)

(assert (= bs!903820 (and d!1411257 d!1411149)))

(assert (=> bs!903820 (= lambda!178555 lambda!178455)))

(declare-fun bs!903821 () Bool)

(assert (= bs!903821 (and d!1411257 start!452424)))

(assert (=> bs!903821 (= lambda!178555 lambda!178431)))

(declare-fun bs!903822 () Bool)

(assert (= bs!903822 (and d!1411257 d!1411183)))

(assert (=> bs!903822 (= lambda!178555 lambda!178497)))

(declare-fun bs!903823 () Bool)

(assert (= bs!903823 (and d!1411257 d!1411155)))

(assert (=> bs!903823 (= lambda!178555 lambda!178470)))

(declare-fun bs!903824 () Bool)

(assert (= bs!903824 (and d!1411257 d!1411223)))

(assert (=> bs!903824 (not (= lambda!178555 lambda!178507))))

(declare-fun bs!903825 () Bool)

(assert (= bs!903825 (and d!1411257 d!1411159)))

(assert (=> bs!903825 (= lambda!178555 lambda!178485)))

(declare-fun bs!903826 () Bool)

(assert (= bs!903826 (and d!1411257 d!1411161)))

(assert (=> bs!903826 (= lambda!178555 lambda!178488)))

(declare-fun bs!903827 () Bool)

(assert (= bs!903827 (and d!1411257 d!1411137)))

(assert (=> bs!903827 (= lambda!178555 lambda!178449)))

(declare-fun bs!903828 () Bool)

(assert (= bs!903828 (and d!1411257 d!1411203)))

(assert (=> bs!903828 (= lambda!178555 lambda!178502)))

(declare-fun bs!903829 () Bool)

(assert (= bs!903829 (and d!1411257 d!1411087)))

(assert (=> bs!903829 (= lambda!178555 lambda!178441)))

(declare-fun bs!903830 () Bool)

(assert (= bs!903830 (and d!1411257 d!1411147)))

(assert (=> bs!903830 (= lambda!178555 lambda!178454)))

(declare-fun bs!903831 () Bool)

(assert (= bs!903831 (and d!1411257 d!1411143)))

(assert (=> bs!903831 (= lambda!178555 lambda!178453)))

(declare-fun bs!903832 () Bool)

(assert (= bs!903832 (and d!1411257 d!1411227)))

(assert (=> bs!903832 (= lambda!178555 lambda!178508)))

(assert (=> d!1411257 (not (contains!13670 (extractMap!1286 (toList!4467 lm!1477)) key!3287))))

(declare-fun lt!1725370 () Unit!100859)

(declare-fun choose!30117 (ListLongMap!3099 K!12215 Hashable!5625) Unit!100859)

(assert (=> d!1411257 (= lt!1725370 (choose!30117 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1411257 (forall!10403 (toList!4467 lm!1477) lambda!178555)))

(assert (=> d!1411257 (= (lemmaNotInItsHashBucketThenNotInMap!218 lm!1477 key!3287 hashF!1107) lt!1725370)))

(declare-fun bs!903833 () Bool)

(assert (= bs!903833 d!1411257))

(assert (=> bs!903833 m!5331931))

(assert (=> bs!903833 m!5331931))

(assert (=> bs!903833 m!5331933))

(declare-fun m!5332665 () Bool)

(assert (=> bs!903833 m!5332665))

(declare-fun m!5332667 () Bool)

(assert (=> bs!903833 m!5332667))

(assert (=> b!4552620 d!1411257))

(declare-fun b!4552960 () Bool)

(declare-fun e!2837683 () Bool)

(assert (=> b!4552960 (= e!2837683 (contains!13674 (keys!17713 lt!1725010) key!3287))))

(declare-fun b!4552961 () Bool)

(assert (=> b!4552961 false))

(declare-fun lt!1725377 () Unit!100859)

(declare-fun lt!1725378 () Unit!100859)

(assert (=> b!4552961 (= lt!1725377 lt!1725378)))

(assert (=> b!4552961 (containsKey!1944 (toList!4468 lt!1725010) key!3287)))

(assert (=> b!4552961 (= lt!1725378 (lemmaInGetKeysListThenContainsKey!509 (toList!4468 lt!1725010) key!3287))))

(declare-fun e!2837682 () Unit!100859)

(declare-fun Unit!100901 () Unit!100859)

(assert (=> b!4552961 (= e!2837682 Unit!100901)))

(declare-fun bm!317614 () Bool)

(declare-fun call!317619 () Bool)

(declare-fun e!2837685 () List!50958)

(assert (=> bm!317614 (= call!317619 (contains!13674 e!2837685 key!3287))))

(declare-fun c!778125 () Bool)

(declare-fun c!778123 () Bool)

(assert (=> bm!317614 (= c!778125 c!778123)))

(declare-fun b!4552962 () Bool)

(declare-fun e!2837687 () Unit!100859)

(assert (=> b!4552962 (= e!2837687 e!2837682)))

(declare-fun c!778124 () Bool)

(assert (=> b!4552962 (= c!778124 call!317619)))

(declare-fun b!4552963 () Bool)

(assert (=> b!4552963 (= e!2837685 (getKeysList!510 (toList!4468 lt!1725010)))))

(declare-fun b!4552964 () Bool)

(declare-fun lt!1725374 () Unit!100859)

(assert (=> b!4552964 (= e!2837687 lt!1725374)))

(declare-fun lt!1725372 () Unit!100859)

(assert (=> b!4552964 (= lt!1725372 (lemmaContainsKeyImpliesGetValueByKeyDefined!1087 (toList!4468 lt!1725010) key!3287))))

(assert (=> b!4552964 (isDefined!8523 (getValueByKey!1183 (toList!4468 lt!1725010) key!3287))))

(declare-fun lt!1725371 () Unit!100859)

(assert (=> b!4552964 (= lt!1725371 lt!1725372)))

(assert (=> b!4552964 (= lt!1725374 (lemmaInListThenGetKeysListContains!506 (toList!4468 lt!1725010) key!3287))))

(assert (=> b!4552964 call!317619))

(declare-fun d!1411259 () Bool)

(declare-fun e!2837686 () Bool)

(assert (=> d!1411259 e!2837686))

(declare-fun res!1898990 () Bool)

(assert (=> d!1411259 (=> res!1898990 e!2837686)))

(declare-fun e!2837684 () Bool)

(assert (=> d!1411259 (= res!1898990 e!2837684)))

(declare-fun res!1898992 () Bool)

(assert (=> d!1411259 (=> (not res!1898992) (not e!2837684))))

(declare-fun lt!1725373 () Bool)

(assert (=> d!1411259 (= res!1898992 (not lt!1725373))))

(declare-fun lt!1725375 () Bool)

(assert (=> d!1411259 (= lt!1725373 lt!1725375)))

(declare-fun lt!1725376 () Unit!100859)

(assert (=> d!1411259 (= lt!1725376 e!2837687)))

(assert (=> d!1411259 (= c!778123 lt!1725375)))

(assert (=> d!1411259 (= lt!1725375 (containsKey!1944 (toList!4468 lt!1725010) key!3287))))

(assert (=> d!1411259 (= (contains!13670 lt!1725010 key!3287) lt!1725373)))

(declare-fun b!4552965 () Bool)

(assert (=> b!4552965 (= e!2837685 (keys!17713 lt!1725010))))

(declare-fun b!4552966 () Bool)

(assert (=> b!4552966 (= e!2837684 (not (contains!13674 (keys!17713 lt!1725010) key!3287)))))

(declare-fun b!4552967 () Bool)

(assert (=> b!4552967 (= e!2837686 e!2837683)))

(declare-fun res!1898991 () Bool)

(assert (=> b!4552967 (=> (not res!1898991) (not e!2837683))))

(assert (=> b!4552967 (= res!1898991 (isDefined!8523 (getValueByKey!1183 (toList!4468 lt!1725010) key!3287)))))

(declare-fun b!4552968 () Bool)

(declare-fun Unit!100902 () Unit!100859)

(assert (=> b!4552968 (= e!2837682 Unit!100902)))

(assert (= (and d!1411259 c!778123) b!4552964))

(assert (= (and d!1411259 (not c!778123)) b!4552962))

(assert (= (and b!4552962 c!778124) b!4552961))

(assert (= (and b!4552962 (not c!778124)) b!4552968))

(assert (= (or b!4552964 b!4552962) bm!317614))

(assert (= (and bm!317614 c!778125) b!4552963))

(assert (= (and bm!317614 (not c!778125)) b!4552965))

(assert (= (and d!1411259 res!1898992) b!4552966))

(assert (= (and d!1411259 (not res!1898990)) b!4552967))

(assert (= (and b!4552967 res!1898991) b!4552960))

(declare-fun m!5332669 () Bool)

(assert (=> b!4552967 m!5332669))

(assert (=> b!4552967 m!5332669))

(declare-fun m!5332671 () Bool)

(assert (=> b!4552967 m!5332671))

(declare-fun m!5332673 () Bool)

(assert (=> b!4552965 m!5332673))

(assert (=> b!4552960 m!5332673))

(assert (=> b!4552960 m!5332673))

(declare-fun m!5332675 () Bool)

(assert (=> b!4552960 m!5332675))

(declare-fun m!5332677 () Bool)

(assert (=> b!4552963 m!5332677))

(declare-fun m!5332679 () Bool)

(assert (=> b!4552961 m!5332679))

(declare-fun m!5332681 () Bool)

(assert (=> b!4552961 m!5332681))

(assert (=> b!4552966 m!5332673))

(assert (=> b!4552966 m!5332673))

(assert (=> b!4552966 m!5332675))

(declare-fun m!5332683 () Bool)

(assert (=> b!4552964 m!5332683))

(assert (=> b!4552964 m!5332669))

(assert (=> b!4552964 m!5332669))

(assert (=> b!4552964 m!5332671))

(declare-fun m!5332685 () Bool)

(assert (=> b!4552964 m!5332685))

(assert (=> d!1411259 m!5332679))

(declare-fun m!5332687 () Bool)

(assert (=> bm!317614 m!5332687))

(assert (=> b!4552609 d!1411259))

(declare-fun b!4552973 () Bool)

(declare-fun e!2837690 () Bool)

(declare-fun tp!1339045 () Bool)

(declare-fun tp!1339046 () Bool)

(assert (=> b!4552973 (= e!2837690 (and tp!1339045 tp!1339046))))

(assert (=> b!4552628 (= tp!1339030 e!2837690)))

(assert (= (and b!4552628 ((_ is Cons!50832) (toList!4467 lm!1477))) b!4552973))

(declare-fun e!2837693 () Bool)

(declare-fun tp!1339049 () Bool)

(declare-fun b!4552978 () Bool)

(assert (=> b!4552978 (= e!2837693 (and tp_is_empty!28197 tp_is_empty!28199 tp!1339049))))

(assert (=> b!4552611 (= tp!1339031 e!2837693)))

(assert (= (and b!4552611 ((_ is Cons!50831) (t!357925 newBucket!178))) b!4552978))

(declare-fun b_lambda!160283 () Bool)

(assert (= b_lambda!160275 (or start!452424 b_lambda!160283)))

(declare-fun bs!903834 () Bool)

(declare-fun d!1411261 () Bool)

(assert (= bs!903834 (and d!1411261 start!452424)))

(assert (=> bs!903834 (= (dynLambda!21256 lambda!178431 (h!56731 (toList!4467 lm!1477))) (noDuplicateKeys!1230 (_2!28972 (h!56731 (toList!4467 lm!1477)))))))

(assert (=> bs!903834 m!5332203))

(assert (=> b!4552863 d!1411261))

(declare-fun b_lambda!160285 () Bool)

(assert (= b_lambda!160277 (or start!452424 b_lambda!160285)))

(declare-fun bs!903835 () Bool)

(declare-fun d!1411263 () Bool)

(assert (= bs!903835 (and d!1411263 start!452424)))

(assert (=> bs!903835 (= (dynLambda!21256 lambda!178431 lt!1725014) (noDuplicateKeys!1230 (_2!28972 lt!1725014)))))

(declare-fun m!5332689 () Bool)

(assert (=> bs!903835 m!5332689))

(assert (=> d!1411217 d!1411263))

(check-sat (not bm!317611) (not b!4552967) (not d!1411183) (not d!1411135) (not b!4552978) (not b!4552973) (not d!1411087) (not d!1411147) (not d!1411081) (not b!4552838) (not b!4552963) (not d!1411175) (not b!4552767) (not d!1411209) (not b!4552875) (not b!4552800) (not d!1411197) tp_is_empty!28199 (not b!4552811) (not b!4552777) (not b!4552864) (not b!4552788) (not b!4552763) (not b!4552793) (not b!4552770) (not d!1411229) (not b!4552799) (not b!4552769) (not b!4552778) (not b!4552681) (not b!4552790) (not b!4552841) (not b!4552780) (not b!4552837) (not b!4552857) (not b!4552966) (not bs!903835) (not b!4552836) (not d!1411109) (not d!1411159) (not d!1411227) tp_is_empty!28197 (not b!4552909) (not d!1411199) (not b!4552960) (not b!4552848) (not d!1411181) (not d!1411157) (not bm!317614) (not d!1411151) (not b!4552844) (not d!1411257) (not d!1411203) (not d!1411225) (not b!4552843) (not b!4552906) (not b!4552776) (not d!1411133) (not b!4552809) (not d!1411195) (not b!4552638) (not d!1411115) (not b!4552840) (not d!1411259) (not d!1411163) (not d!1411153) (not d!1411083) (not b!4552885) (not d!1411139) (not b!4552697) (not b!4552858) (not d!1411223) (not b!4552953) (not bm!317612) (not bm!317613) (not b!4552954) (not bm!317592) (not d!1411221) (not d!1411143) (not d!1411201) (not d!1411179) (not d!1411149) (not b!4552818) (not b_lambda!160285) (not d!1411137) (not b!4552766) (not b_lambda!160283) (not b!4552764) (not b!4552956) (not b!4552965) (not bm!317602) (not b!4552882) (not d!1411155) (not bs!903834) (not d!1411105) (not b!4552961) (not d!1411217) (not b!4552791) (not d!1411161) (not b!4552957) (not b!4552768) (not b!4552842) (not b!4552901) (not b!4552883) (not b!4552964) (not b!4552814))
(check-sat)
