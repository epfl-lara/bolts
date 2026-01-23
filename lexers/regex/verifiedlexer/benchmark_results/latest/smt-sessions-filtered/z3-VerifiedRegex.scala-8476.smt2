; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440760 () Bool)

(assert start!440760)

(declare-fun b!4480982 () Bool)

(declare-fun e!2790820 () Bool)

(assert (=> b!4480982 (= e!2790820 false)))

(declare-fun b!4480983 () Bool)

(declare-fun e!2790831 () Bool)

(declare-fun tp!1336668 () Bool)

(assert (=> b!4480983 (= e!2790831 tp!1336668)))

(declare-fun b!4480984 () Bool)

(declare-fun e!2790835 () Bool)

(declare-fun e!2790829 () Bool)

(assert (=> b!4480984 (= e!2790835 e!2790829)))

(declare-fun res!1860425 () Bool)

(assert (=> b!4480984 (=> res!1860425 e!2790829)))

(declare-datatypes ((K!11785 0))(
  ( (K!11786 (val!17699 Int)) )
))
(declare-datatypes ((V!12031 0))(
  ( (V!12032 (val!17700 Int)) )
))
(declare-datatypes ((tuple2!50666 0))(
  ( (tuple2!50667 (_1!28627 K!11785) (_2!28627 V!12031)) )
))
(declare-datatypes ((List!50498 0))(
  ( (Nil!50374) (Cons!50374 (h!56159 tuple2!50666) (t!357452 List!50498)) )
))
(declare-datatypes ((ListMap!3385 0))(
  ( (ListMap!3386 (toList!4123 List!50498)) )
))
(declare-fun lt!1667669 () ListMap!3385)

(declare-fun lt!1667662 () ListMap!3385)

(assert (=> b!4480984 (= res!1860425 (not (= lt!1667669 lt!1667662)))))

(declare-datatypes ((tuple2!50668 0))(
  ( (tuple2!50669 (_1!28628 (_ BitVec 64)) (_2!28628 List!50498)) )
))
(declare-datatypes ((List!50499 0))(
  ( (Nil!50375) (Cons!50375 (h!56160 tuple2!50668) (t!357453 List!50499)) )
))
(declare-datatypes ((ListLongMap!2755 0))(
  ( (ListLongMap!2756 (toList!4124 List!50499)) )
))
(declare-fun lm!1477 () ListLongMap!2755)

(declare-fun extractMap!1114 (List!50499) ListMap!3385)

(assert (=> b!4480984 (= lt!1667662 (extractMap!1114 (t!357453 (toList!4124 lm!1477))))))

(declare-fun lt!1667682 () ListLongMap!2755)

(assert (=> b!4480984 (= lt!1667669 (extractMap!1114 (toList!4124 lt!1667682)))))

(declare-fun b!4480985 () Bool)

(declare-datatypes ((Unit!89713 0))(
  ( (Unit!89714) )
))
(declare-fun e!2790828 () Unit!89713)

(declare-fun Unit!89715 () Unit!89713)

(assert (=> b!4480985 (= e!2790828 Unit!89715)))

(declare-fun b!4480986 () Bool)

(declare-fun res!1860434 () Bool)

(declare-fun e!2790819 () Bool)

(assert (=> b!4480986 (=> res!1860434 e!2790819)))

(declare-fun lt!1667660 () ListMap!3385)

(declare-fun lt!1667666 () ListMap!3385)

(declare-fun eq!551 (ListMap!3385 ListMap!3385) Bool)

(assert (=> b!4480986 (= res!1860434 (not (eq!551 lt!1667660 lt!1667666)))))

(declare-fun b!4480987 () Bool)

(declare-fun e!2790826 () Bool)

(declare-fun e!2790834 () Bool)

(assert (=> b!4480987 (= e!2790826 e!2790834)))

(declare-fun res!1860421 () Bool)

(assert (=> b!4480987 (=> (not res!1860421) (not e!2790834))))

(declare-fun lt!1667667 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4480987 (= res!1860421 (= lt!1667667 hash!344))))

(declare-datatypes ((Hashable!5453 0))(
  ( (HashableExt!5452 (__x!31156 Int)) )
))
(declare-fun hashF!1107 () Hashable!5453)

(declare-fun key!3287 () K!11785)

(declare-fun hash!2545 (Hashable!5453 K!11785) (_ BitVec 64))

(assert (=> b!4480987 (= lt!1667667 (hash!2545 hashF!1107 key!3287))))

(declare-fun b!4480988 () Bool)

(declare-fun res!1860436 () Bool)

(declare-fun e!2790827 () Bool)

(assert (=> b!4480988 (=> res!1860436 e!2790827)))

(get-info :version)

(assert (=> b!4480988 (= res!1860436 (or ((_ is Nil!50375) (toList!4124 lm!1477)) (not (= (_1!28628 (h!56160 (toList!4124 lm!1477))) hash!344))))))

(declare-fun b!4480989 () Bool)

(declare-fun e!2790821 () Unit!89713)

(declare-fun Unit!89716 () Unit!89713)

(assert (=> b!4480989 (= e!2790821 Unit!89716)))

(declare-fun lt!1667677 () Unit!89713)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!58 (ListLongMap!2755 K!11785 Hashable!5453) Unit!89713)

(assert (=> b!4480989 (= lt!1667677 (lemmaNotInItsHashBucketThenNotInMap!58 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4480989 false))

(declare-fun b!4480990 () Bool)

(declare-fun res!1860423 () Bool)

(assert (=> b!4480990 (=> res!1860423 e!2790827)))

(declare-fun newBucket!178 () List!50498)

(declare-fun noDuplicateKeys!1058 (List!50498) Bool)

(assert (=> b!4480990 (= res!1860423 (not (noDuplicateKeys!1058 newBucket!178)))))

(declare-fun b!4480991 () Bool)

(declare-fun e!2790833 () Bool)

(assert (=> b!4480991 (= e!2790833 e!2790826)))

(declare-fun res!1860418 () Bool)

(assert (=> b!4480991 (=> (not res!1860418) (not e!2790826))))

(declare-fun contains!12965 (ListMap!3385 K!11785) Bool)

(assert (=> b!4480991 (= res!1860418 (contains!12965 lt!1667666 key!3287))))

(assert (=> b!4480991 (= lt!1667666 (extractMap!1114 (toList!4124 lm!1477)))))

(declare-fun b!4480992 () Bool)

(declare-fun res!1860422 () Bool)

(assert (=> b!4480992 (=> (not res!1860422) (not e!2790833))))

(declare-fun allKeysSameHashInMap!1165 (ListLongMap!2755 Hashable!5453) Bool)

(assert (=> b!4480992 (= res!1860422 (allKeysSameHashInMap!1165 lm!1477 hashF!1107))))

(declare-fun b!4480994 () Bool)

(declare-fun e!2790823 () Bool)

(declare-fun e!2790824 () Bool)

(assert (=> b!4480994 (= e!2790823 e!2790824)))

(declare-fun res!1860428 () Bool)

(assert (=> b!4480994 (=> res!1860428 e!2790824)))

(declare-fun lt!1667671 () ListLongMap!2755)

(declare-fun tail!7568 (List!50499) List!50499)

(assert (=> b!4480994 (= res!1860428 (not (= (t!357453 (toList!4124 lm!1477)) (tail!7568 (toList!4124 lt!1667671)))))))

(declare-fun lt!1667665 () tuple2!50668)

(declare-fun +!1414 (ListLongMap!2755 tuple2!50668) ListLongMap!2755)

(assert (=> b!4480994 (= lt!1667671 (+!1414 lm!1477 lt!1667665))))

(declare-fun lt!1667664 () tuple2!50668)

(declare-fun -!320 (ListMap!3385 K!11785) ListMap!3385)

(assert (=> b!4480994 (eq!551 (extractMap!1114 (Cons!50375 lt!1667665 Nil!50375)) (-!320 (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375)) key!3287))))

(assert (=> b!4480994 (= lt!1667664 (tuple2!50669 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477)))))))

(assert (=> b!4480994 (= lt!1667665 (tuple2!50669 hash!344 newBucket!178))))

(declare-fun lt!1667668 () Unit!89713)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!50 ((_ BitVec 64) List!50498 List!50498 K!11785 Hashable!5453) Unit!89713)

(assert (=> b!4480994 (= lt!1667668 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!50 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1667679 () List!50499)

(assert (=> b!4480994 (contains!12965 (extractMap!1114 lt!1667679) key!3287)))

(declare-fun lt!1667658 () Unit!89713)

(declare-fun lemmaListContainsThenExtractedMapContains!54 (ListLongMap!2755 K!11785 Hashable!5453) Unit!89713)

(assert (=> b!4480994 (= lt!1667658 (lemmaListContainsThenExtractedMapContains!54 (ListLongMap!2756 lt!1667679) key!3287 hashF!1107))))

(declare-fun b!4480995 () Bool)

(declare-fun lambda!165343 () Int)

(declare-fun forall!10052 (List!50499 Int) Bool)

(assert (=> b!4480995 (= e!2790819 (forall!10052 (toList!4124 lt!1667671) lambda!165343))))

(declare-fun b!4480996 () Bool)

(declare-fun Unit!89717 () Unit!89713)

(assert (=> b!4480996 (= e!2790821 Unit!89717)))

(declare-fun b!4480997 () Bool)

(declare-fun e!2790832 () Bool)

(assert (=> b!4480997 (= e!2790832 e!2790823)))

(declare-fun res!1860424 () Bool)

(assert (=> b!4480997 (=> res!1860424 e!2790823)))

(declare-fun containsKeyBiggerList!58 (List!50499 K!11785) Bool)

(assert (=> b!4480997 (= res!1860424 (not (containsKeyBiggerList!58 lt!1667679 key!3287)))))

(assert (=> b!4480997 (= lt!1667679 (Cons!50375 (h!56160 (toList!4124 lm!1477)) Nil!50375))))

(declare-fun b!4480998 () Bool)

(assert (=> b!4480998 (= e!2790824 e!2790835)))

(declare-fun res!1860419 () Bool)

(assert (=> b!4480998 (=> res!1860419 e!2790835)))

(assert (=> b!4480998 (= res!1860419 (not (= lt!1667671 (+!1414 lt!1667682 lt!1667665))))))

(declare-fun tail!7569 (ListLongMap!2755) ListLongMap!2755)

(assert (=> b!4480998 (= lt!1667682 (tail!7569 lm!1477))))

(declare-fun b!4480999 () Bool)

(declare-fun e!2790822 () Bool)

(assert (=> b!4480999 (= e!2790822 e!2790819)))

(declare-fun res!1860426 () Bool)

(assert (=> b!4480999 (=> res!1860426 e!2790819)))

(declare-fun addToMapMapFromBucket!613 (List!50498 ListMap!3385) ListMap!3385)

(assert (=> b!4480999 (= res!1860426 (not (eq!551 lt!1667660 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lm!1477))) lt!1667662))))))

(assert (=> b!4480999 (= lt!1667660 (extractMap!1114 (toList!4124 (+!1414 lm!1477 lt!1667664))))))

(declare-fun b!4481000 () Bool)

(declare-fun e!2790830 () Bool)

(assert (=> b!4481000 (= e!2790830 e!2790822)))

(declare-fun res!1860431 () Bool)

(assert (=> b!4481000 (=> res!1860431 e!2790822)))

(assert (=> b!4481000 (= res!1860431 (not (= (toList!4124 lt!1667671) (Cons!50375 lt!1667665 (t!357453 (toList!4124 lm!1477))))))))

(declare-fun lt!1667673 () List!50499)

(assert (=> b!4481000 (eq!551 (extractMap!1114 (Cons!50375 lt!1667665 lt!1667673)) (-!320 (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673)) key!3287))))

(assert (=> b!4481000 (= lt!1667673 (tail!7568 (toList!4124 lm!1477)))))

(declare-fun lt!1667661 () Unit!89713)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!18 (ListLongMap!2755 (_ BitVec 64) List!50498 List!50498 K!11785 Hashable!5453) Unit!89713)

(assert (=> b!4481000 (= lt!1667661 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!18 lm!1477 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4481001 () Bool)

(assert (=> b!4481001 (= e!2790827 e!2790832)))

(declare-fun res!1860433 () Bool)

(assert (=> b!4481001 (=> res!1860433 e!2790832)))

(declare-fun lt!1667678 () Bool)

(assert (=> b!4481001 (= res!1860433 lt!1667678)))

(declare-fun lt!1667681 () Unit!89713)

(assert (=> b!4481001 (= lt!1667681 e!2790821)))

(declare-fun c!763297 () Bool)

(assert (=> b!4481001 (= c!763297 lt!1667678)))

(declare-fun containsKey!1546 (List!50498 K!11785) Bool)

(assert (=> b!4481001 (= lt!1667678 (not (containsKey!1546 (_2!28628 (h!56160 (toList!4124 lm!1477))) key!3287)))))

(declare-fun b!4481002 () Bool)

(declare-fun res!1860435 () Bool)

(assert (=> b!4481002 (=> (not res!1860435) (not e!2790834))))

(declare-fun allKeysSameHash!912 (List!50498 (_ BitVec 64) Hashable!5453) Bool)

(assert (=> b!4481002 (= res!1860435 (allKeysSameHash!912 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4481003 () Bool)

(assert (=> b!4481003 (= e!2790829 e!2790830)))

(declare-fun res!1860429 () Bool)

(assert (=> b!4481003 (=> res!1860429 e!2790830)))

(declare-fun lt!1667670 () Bool)

(assert (=> b!4481003 (= res!1860429 lt!1667670)))

(declare-fun lt!1667675 () Unit!89713)

(assert (=> b!4481003 (= lt!1667675 e!2790828)))

(declare-fun c!763296 () Bool)

(assert (=> b!4481003 (= c!763296 lt!1667670)))

(assert (=> b!4481003 (= lt!1667670 (contains!12965 lt!1667669 key!3287))))

(declare-fun b!4481004 () Bool)

(declare-fun Unit!89718 () Unit!89713)

(assert (=> b!4481004 (= e!2790828 Unit!89718)))

(declare-fun lt!1667676 () Unit!89713)

(declare-fun lemmaInGenMapThenLongMapContainsHash!132 (ListLongMap!2755 K!11785 Hashable!5453) Unit!89713)

(assert (=> b!4481004 (= lt!1667676 (lemmaInGenMapThenLongMapContainsHash!132 lt!1667682 key!3287 hashF!1107))))

(declare-fun res!1860427 () Bool)

(declare-fun contains!12966 (ListLongMap!2755 (_ BitVec 64)) Bool)

(assert (=> b!4481004 (= res!1860427 (contains!12966 lt!1667682 lt!1667667))))

(assert (=> b!4481004 (=> (not res!1860427) (not e!2790820))))

(assert (=> b!4481004 e!2790820))

(declare-fun tp!1336669 () Bool)

(declare-fun tp_is_empty!27509 () Bool)

(declare-fun b!4481005 () Bool)

(declare-fun tp_is_empty!27511 () Bool)

(declare-fun e!2790825 () Bool)

(assert (=> b!4481005 (= e!2790825 (and tp_is_empty!27509 tp_is_empty!27511 tp!1336669))))

(declare-fun b!4481006 () Bool)

(declare-fun res!1860432 () Bool)

(assert (=> b!4481006 (=> res!1860432 e!2790822)))

(assert (=> b!4481006 (= res!1860432 (not (eq!551 (extractMap!1114 (toList!4124 lt!1667671)) (addToMapMapFromBucket!613 newBucket!178 lt!1667662))))))

(declare-fun res!1860420 () Bool)

(assert (=> start!440760 (=> (not res!1860420) (not e!2790833))))

(assert (=> start!440760 (= res!1860420 (forall!10052 (toList!4124 lm!1477) lambda!165343))))

(assert (=> start!440760 e!2790833))

(assert (=> start!440760 true))

(declare-fun inv!65969 (ListLongMap!2755) Bool)

(assert (=> start!440760 (and (inv!65969 lm!1477) e!2790831)))

(assert (=> start!440760 tp_is_empty!27509))

(assert (=> start!440760 e!2790825))

(declare-fun b!4480993 () Bool)

(assert (=> b!4480993 (= e!2790834 (not e!2790827))))

(declare-fun res!1860430 () Bool)

(assert (=> b!4480993 (=> res!1860430 e!2790827)))

(declare-fun lt!1667672 () List!50498)

(declare-fun removePairForKey!685 (List!50498 K!11785) List!50498)

(assert (=> b!4480993 (= res!1860430 (not (= newBucket!178 (removePairForKey!685 lt!1667672 key!3287))))))

(declare-fun lt!1667674 () tuple2!50668)

(declare-fun lt!1667663 () Unit!89713)

(declare-fun forallContained!2313 (List!50499 Int tuple2!50668) Unit!89713)

(assert (=> b!4480993 (= lt!1667663 (forallContained!2313 (toList!4124 lm!1477) lambda!165343 lt!1667674))))

(declare-fun contains!12967 (List!50499 tuple2!50668) Bool)

(assert (=> b!4480993 (contains!12967 (toList!4124 lm!1477) lt!1667674)))

(assert (=> b!4480993 (= lt!1667674 (tuple2!50669 hash!344 lt!1667672))))

(declare-fun lt!1667680 () Unit!89713)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!570 (List!50499 (_ BitVec 64) List!50498) Unit!89713)

(assert (=> b!4480993 (= lt!1667680 (lemmaGetValueByKeyImpliesContainsTuple!570 (toList!4124 lm!1477) hash!344 lt!1667672))))

(declare-fun apply!11795 (ListLongMap!2755 (_ BitVec 64)) List!50498)

(assert (=> b!4480993 (= lt!1667672 (apply!11795 lm!1477 hash!344))))

(assert (=> b!4480993 (contains!12966 lm!1477 lt!1667667)))

(declare-fun lt!1667659 () Unit!89713)

(assert (=> b!4480993 (= lt!1667659 (lemmaInGenMapThenLongMapContainsHash!132 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!440760 res!1860420) b!4480992))

(assert (= (and b!4480992 res!1860422) b!4480991))

(assert (= (and b!4480991 res!1860418) b!4480987))

(assert (= (and b!4480987 res!1860421) b!4481002))

(assert (= (and b!4481002 res!1860435) b!4480993))

(assert (= (and b!4480993 (not res!1860430)) b!4480990))

(assert (= (and b!4480990 (not res!1860423)) b!4480988))

(assert (= (and b!4480988 (not res!1860436)) b!4481001))

(assert (= (and b!4481001 c!763297) b!4480989))

(assert (= (and b!4481001 (not c!763297)) b!4480996))

(assert (= (and b!4481001 (not res!1860433)) b!4480997))

(assert (= (and b!4480997 (not res!1860424)) b!4480994))

(assert (= (and b!4480994 (not res!1860428)) b!4480998))

(assert (= (and b!4480998 (not res!1860419)) b!4480984))

(assert (= (and b!4480984 (not res!1860425)) b!4481003))

(assert (= (and b!4481003 c!763296) b!4481004))

(assert (= (and b!4481003 (not c!763296)) b!4480985))

(assert (= (and b!4481004 res!1860427) b!4480982))

(assert (= (and b!4481003 (not res!1860429)) b!4481000))

(assert (= (and b!4481000 (not res!1860431)) b!4481006))

(assert (= (and b!4481006 (not res!1860432)) b!4480999))

(assert (= (and b!4480999 (not res!1860426)) b!4480986))

(assert (= (and b!4480986 (not res!1860434)) b!4480995))

(assert (= start!440760 b!4480983))

(assert (= (and start!440760 ((_ is Cons!50374) newBucket!178)) b!4481005))

(declare-fun m!5200335 () Bool)

(assert (=> b!4481001 m!5200335))

(declare-fun m!5200337 () Bool)

(assert (=> b!4480990 m!5200337))

(declare-fun m!5200339 () Bool)

(assert (=> start!440760 m!5200339))

(declare-fun m!5200341 () Bool)

(assert (=> start!440760 m!5200341))

(declare-fun m!5200343 () Bool)

(assert (=> b!4481002 m!5200343))

(declare-fun m!5200345 () Bool)

(assert (=> b!4481000 m!5200345))

(declare-fun m!5200347 () Bool)

(assert (=> b!4481000 m!5200347))

(declare-fun m!5200349 () Bool)

(assert (=> b!4481000 m!5200349))

(declare-fun m!5200351 () Bool)

(assert (=> b!4481000 m!5200351))

(assert (=> b!4481000 m!5200345))

(declare-fun m!5200353 () Bool)

(assert (=> b!4481000 m!5200353))

(assert (=> b!4481000 m!5200351))

(assert (=> b!4481000 m!5200353))

(declare-fun m!5200355 () Bool)

(assert (=> b!4481000 m!5200355))

(declare-fun m!5200357 () Bool)

(assert (=> b!4480989 m!5200357))

(declare-fun m!5200359 () Bool)

(assert (=> b!4481006 m!5200359))

(declare-fun m!5200361 () Bool)

(assert (=> b!4481006 m!5200361))

(assert (=> b!4481006 m!5200359))

(assert (=> b!4481006 m!5200361))

(declare-fun m!5200363 () Bool)

(assert (=> b!4481006 m!5200363))

(declare-fun m!5200365 () Bool)

(assert (=> b!4480987 m!5200365))

(declare-fun m!5200367 () Bool)

(assert (=> b!4480984 m!5200367))

(declare-fun m!5200369 () Bool)

(assert (=> b!4480984 m!5200369))

(declare-fun m!5200371 () Bool)

(assert (=> b!4480999 m!5200371))

(assert (=> b!4480999 m!5200371))

(declare-fun m!5200373 () Bool)

(assert (=> b!4480999 m!5200373))

(declare-fun m!5200375 () Bool)

(assert (=> b!4480999 m!5200375))

(declare-fun m!5200377 () Bool)

(assert (=> b!4480999 m!5200377))

(declare-fun m!5200379 () Bool)

(assert (=> b!4480994 m!5200379))

(declare-fun m!5200381 () Bool)

(assert (=> b!4480994 m!5200381))

(declare-fun m!5200383 () Bool)

(assert (=> b!4480994 m!5200383))

(declare-fun m!5200385 () Bool)

(assert (=> b!4480994 m!5200385))

(declare-fun m!5200387 () Bool)

(assert (=> b!4480994 m!5200387))

(assert (=> b!4480994 m!5200381))

(declare-fun m!5200389 () Bool)

(assert (=> b!4480994 m!5200389))

(declare-fun m!5200391 () Bool)

(assert (=> b!4480994 m!5200391))

(declare-fun m!5200393 () Bool)

(assert (=> b!4480994 m!5200393))

(declare-fun m!5200395 () Bool)

(assert (=> b!4480994 m!5200395))

(assert (=> b!4480994 m!5200387))

(assert (=> b!4480994 m!5200379))

(declare-fun m!5200397 () Bool)

(assert (=> b!4480994 m!5200397))

(assert (=> b!4480994 m!5200391))

(declare-fun m!5200399 () Bool)

(assert (=> b!4481004 m!5200399))

(declare-fun m!5200401 () Bool)

(assert (=> b!4481004 m!5200401))

(declare-fun m!5200403 () Bool)

(assert (=> b!4480997 m!5200403))

(declare-fun m!5200405 () Bool)

(assert (=> b!4480992 m!5200405))

(declare-fun m!5200407 () Bool)

(assert (=> b!4480998 m!5200407))

(declare-fun m!5200409 () Bool)

(assert (=> b!4480998 m!5200409))

(declare-fun m!5200411 () Bool)

(assert (=> b!4481003 m!5200411))

(declare-fun m!5200413 () Bool)

(assert (=> b!4480986 m!5200413))

(declare-fun m!5200415 () Bool)

(assert (=> b!4480991 m!5200415))

(declare-fun m!5200417 () Bool)

(assert (=> b!4480991 m!5200417))

(declare-fun m!5200419 () Bool)

(assert (=> b!4480993 m!5200419))

(declare-fun m!5200421 () Bool)

(assert (=> b!4480993 m!5200421))

(declare-fun m!5200423 () Bool)

(assert (=> b!4480993 m!5200423))

(declare-fun m!5200425 () Bool)

(assert (=> b!4480993 m!5200425))

(declare-fun m!5200427 () Bool)

(assert (=> b!4480993 m!5200427))

(declare-fun m!5200429 () Bool)

(assert (=> b!4480993 m!5200429))

(declare-fun m!5200431 () Bool)

(assert (=> b!4480993 m!5200431))

(declare-fun m!5200433 () Bool)

(assert (=> b!4480995 m!5200433))

(check-sat (not b!4480984) (not b!4480986) (not b!4480991) (not b!4481005) (not b!4481000) (not b!4481004) (not b!4480997) (not b!4480989) (not b!4480999) (not b!4480998) tp_is_empty!27511 (not b!4480987) (not b!4481006) (not b!4480994) (not b!4480993) (not b!4480992) (not b!4481002) (not start!440760) tp_is_empty!27509 (not b!4480983) (not b!4481001) (not b!4480995) (not b!4481003) (not b!4480990))
(check-sat)
(get-model)

(declare-fun d!1371511 () Bool)

(declare-fun res!1860447 () Bool)

(declare-fun e!2790849 () Bool)

(assert (=> d!1371511 (=> res!1860447 e!2790849)))

(declare-fun e!2790848 () Bool)

(assert (=> d!1371511 (= res!1860447 e!2790848)))

(declare-fun res!1860448 () Bool)

(assert (=> d!1371511 (=> (not res!1860448) (not e!2790848))))

(assert (=> d!1371511 (= res!1860448 ((_ is Cons!50375) lt!1667679))))

(assert (=> d!1371511 (= (containsKeyBiggerList!58 lt!1667679 key!3287) e!2790849)))

(declare-fun b!4481022 () Bool)

(assert (=> b!4481022 (= e!2790848 (containsKey!1546 (_2!28628 (h!56160 lt!1667679)) key!3287))))

(declare-fun b!4481023 () Bool)

(declare-fun e!2790850 () Bool)

(assert (=> b!4481023 (= e!2790849 e!2790850)))

(declare-fun res!1860446 () Bool)

(assert (=> b!4481023 (=> (not res!1860446) (not e!2790850))))

(assert (=> b!4481023 (= res!1860446 ((_ is Cons!50375) lt!1667679))))

(declare-fun b!4481024 () Bool)

(assert (=> b!4481024 (= e!2790850 (containsKeyBiggerList!58 (t!357453 lt!1667679) key!3287))))

(assert (= (and d!1371511 res!1860448) b!4481022))

(assert (= (and d!1371511 (not res!1860447)) b!4481023))

(assert (= (and b!4481023 res!1860446) b!4481024))

(declare-fun m!5200461 () Bool)

(assert (=> b!4481022 m!5200461))

(declare-fun m!5200463 () Bool)

(assert (=> b!4481024 m!5200463))

(assert (=> b!4480997 d!1371511))

(declare-fun d!1371513 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8166 (List!50498) (InoxSet tuple2!50666))

(assert (=> d!1371513 (= (eq!551 lt!1667660 lt!1667666) (= (content!8166 (toList!4123 lt!1667660)) (content!8166 (toList!4123 lt!1667666))))))

(declare-fun bs!824733 () Bool)

(assert (= bs!824733 d!1371513))

(declare-fun m!5200485 () Bool)

(assert (=> bs!824733 m!5200485))

(declare-fun m!5200487 () Bool)

(assert (=> bs!824733 m!5200487))

(assert (=> b!4480986 d!1371513))

(declare-fun d!1371519 () Bool)

(declare-fun hash!2550 (Hashable!5453 K!11785) (_ BitVec 64))

(assert (=> d!1371519 (= (hash!2545 hashF!1107 key!3287) (hash!2550 hashF!1107 key!3287))))

(declare-fun bs!824735 () Bool)

(assert (= bs!824735 d!1371519))

(declare-fun m!5200491 () Bool)

(assert (=> bs!824735 m!5200491))

(assert (=> b!4480987 d!1371519))

(declare-fun d!1371523 () Bool)

(assert (=> d!1371523 (= (eq!551 (extractMap!1114 (toList!4124 lt!1667671)) (addToMapMapFromBucket!613 newBucket!178 lt!1667662)) (= (content!8166 (toList!4123 (extractMap!1114 (toList!4124 lt!1667671)))) (content!8166 (toList!4123 (addToMapMapFromBucket!613 newBucket!178 lt!1667662)))))))

(declare-fun bs!824736 () Bool)

(assert (= bs!824736 d!1371523))

(declare-fun m!5200493 () Bool)

(assert (=> bs!824736 m!5200493))

(declare-fun m!5200495 () Bool)

(assert (=> bs!824736 m!5200495))

(assert (=> b!4481006 d!1371523))

(declare-fun bs!824739 () Bool)

(declare-fun d!1371525 () Bool)

(assert (= bs!824739 (and d!1371525 start!440760)))

(declare-fun lambda!165356 () Int)

(assert (=> bs!824739 (= lambda!165356 lambda!165343)))

(declare-fun lt!1667707 () ListMap!3385)

(declare-fun invariantList!949 (List!50498) Bool)

(assert (=> d!1371525 (invariantList!949 (toList!4123 lt!1667707))))

(declare-fun e!2790857 () ListMap!3385)

(assert (=> d!1371525 (= lt!1667707 e!2790857)))

(declare-fun c!763304 () Bool)

(assert (=> d!1371525 (= c!763304 ((_ is Cons!50375) (toList!4124 lt!1667671)))))

(assert (=> d!1371525 (forall!10052 (toList!4124 lt!1667671) lambda!165356)))

(assert (=> d!1371525 (= (extractMap!1114 (toList!4124 lt!1667671)) lt!1667707)))

(declare-fun b!4481041 () Bool)

(assert (=> b!4481041 (= e!2790857 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lt!1667671))) (extractMap!1114 (t!357453 (toList!4124 lt!1667671)))))))

(declare-fun b!4481042 () Bool)

(assert (=> b!4481042 (= e!2790857 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371525 c!763304) b!4481041))

(assert (= (and d!1371525 (not c!763304)) b!4481042))

(declare-fun m!5200513 () Bool)

(assert (=> d!1371525 m!5200513))

(declare-fun m!5200515 () Bool)

(assert (=> d!1371525 m!5200515))

(declare-fun m!5200517 () Bool)

(assert (=> b!4481041 m!5200517))

(assert (=> b!4481041 m!5200517))

(declare-fun m!5200519 () Bool)

(assert (=> b!4481041 m!5200519))

(assert (=> b!4481006 d!1371525))

(declare-fun b!4481127 () Bool)

(assert (=> b!4481127 true))

(declare-fun bs!824790 () Bool)

(declare-fun b!4481128 () Bool)

(assert (= bs!824790 (and b!4481128 b!4481127)))

(declare-fun lambda!165428 () Int)

(declare-fun lambda!165427 () Int)

(assert (=> bs!824790 (= lambda!165428 lambda!165427)))

(assert (=> b!4481128 true))

(declare-fun lambda!165429 () Int)

(declare-fun lt!1667860 () ListMap!3385)

(assert (=> bs!824790 (= (= lt!1667860 lt!1667662) (= lambda!165429 lambda!165427))))

(assert (=> b!4481128 (= (= lt!1667860 lt!1667662) (= lambda!165429 lambda!165428))))

(assert (=> b!4481128 true))

(declare-fun bs!824791 () Bool)

(declare-fun d!1371533 () Bool)

(assert (= bs!824791 (and d!1371533 b!4481127)))

(declare-fun lambda!165430 () Int)

(declare-fun lt!1667870 () ListMap!3385)

(assert (=> bs!824791 (= (= lt!1667870 lt!1667662) (= lambda!165430 lambda!165427))))

(declare-fun bs!824792 () Bool)

(assert (= bs!824792 (and d!1371533 b!4481128)))

(assert (=> bs!824792 (= (= lt!1667870 lt!1667662) (= lambda!165430 lambda!165428))))

(assert (=> bs!824792 (= (= lt!1667870 lt!1667860) (= lambda!165430 lambda!165429))))

(assert (=> d!1371533 true))

(declare-fun lt!1667871 () ListMap!3385)

(declare-fun call!312058 () Bool)

(declare-fun c!763323 () Bool)

(declare-fun bm!312053 () Bool)

(declare-fun forall!10054 (List!50498 Int) Bool)

(assert (=> bm!312053 (= call!312058 (forall!10054 (ite c!763323 (toList!4123 lt!1667662) (toList!4123 lt!1667871)) (ite c!763323 lambda!165427 lambda!165429)))))

(declare-fun e!2790915 () ListMap!3385)

(assert (=> b!4481128 (= e!2790915 lt!1667860)))

(declare-fun +!1416 (ListMap!3385 tuple2!50666) ListMap!3385)

(assert (=> b!4481128 (= lt!1667871 (+!1416 lt!1667662 (h!56159 newBucket!178)))))

(assert (=> b!4481128 (= lt!1667860 (addToMapMapFromBucket!613 (t!357452 newBucket!178) (+!1416 lt!1667662 (h!56159 newBucket!178))))))

(declare-fun lt!1667868 () Unit!89713)

(declare-fun call!312060 () Unit!89713)

(assert (=> b!4481128 (= lt!1667868 call!312060)))

(assert (=> b!4481128 (forall!10054 (toList!4123 lt!1667662) lambda!165428)))

(declare-fun lt!1667876 () Unit!89713)

(assert (=> b!4481128 (= lt!1667876 lt!1667868)))

(assert (=> b!4481128 call!312058))

(declare-fun lt!1667856 () Unit!89713)

(declare-fun Unit!89732 () Unit!89713)

(assert (=> b!4481128 (= lt!1667856 Unit!89732)))

(assert (=> b!4481128 (forall!10054 (t!357452 newBucket!178) lambda!165429)))

(declare-fun lt!1667874 () Unit!89713)

(declare-fun Unit!89733 () Unit!89713)

(assert (=> b!4481128 (= lt!1667874 Unit!89733)))

(declare-fun lt!1667873 () Unit!89713)

(declare-fun Unit!89734 () Unit!89713)

(assert (=> b!4481128 (= lt!1667873 Unit!89734)))

(declare-fun lt!1667864 () Unit!89713)

(declare-fun forallContained!2315 (List!50498 Int tuple2!50666) Unit!89713)

(assert (=> b!4481128 (= lt!1667864 (forallContained!2315 (toList!4123 lt!1667871) lambda!165429 (h!56159 newBucket!178)))))

(assert (=> b!4481128 (contains!12965 lt!1667871 (_1!28627 (h!56159 newBucket!178)))))

(declare-fun lt!1667872 () Unit!89713)

(declare-fun Unit!89735 () Unit!89713)

(assert (=> b!4481128 (= lt!1667872 Unit!89735)))

(assert (=> b!4481128 (contains!12965 lt!1667860 (_1!28627 (h!56159 newBucket!178)))))

(declare-fun lt!1667867 () Unit!89713)

(declare-fun Unit!89736 () Unit!89713)

(assert (=> b!4481128 (= lt!1667867 Unit!89736)))

(assert (=> b!4481128 (forall!10054 newBucket!178 lambda!165429)))

(declare-fun lt!1667866 () Unit!89713)

(declare-fun Unit!89737 () Unit!89713)

(assert (=> b!4481128 (= lt!1667866 Unit!89737)))

(assert (=> b!4481128 (forall!10054 (toList!4123 lt!1667871) lambda!165429)))

(declare-fun lt!1667857 () Unit!89713)

(declare-fun Unit!89738 () Unit!89713)

(assert (=> b!4481128 (= lt!1667857 Unit!89738)))

(declare-fun lt!1667863 () Unit!89713)

(declare-fun Unit!89739 () Unit!89713)

(assert (=> b!4481128 (= lt!1667863 Unit!89739)))

(declare-fun lt!1667858 () Unit!89713)

(declare-fun addForallContainsKeyThenBeforeAdding!280 (ListMap!3385 ListMap!3385 K!11785 V!12031) Unit!89713)

(assert (=> b!4481128 (= lt!1667858 (addForallContainsKeyThenBeforeAdding!280 lt!1667662 lt!1667860 (_1!28627 (h!56159 newBucket!178)) (_2!28627 (h!56159 newBucket!178))))))

(assert (=> b!4481128 (forall!10054 (toList!4123 lt!1667662) lambda!165429)))

(declare-fun lt!1667875 () Unit!89713)

(assert (=> b!4481128 (= lt!1667875 lt!1667858)))

(declare-fun call!312059 () Bool)

(assert (=> b!4481128 call!312059))

(declare-fun lt!1667869 () Unit!89713)

(declare-fun Unit!89740 () Unit!89713)

(assert (=> b!4481128 (= lt!1667869 Unit!89740)))

(declare-fun res!1860501 () Bool)

(assert (=> b!4481128 (= res!1860501 (forall!10054 newBucket!178 lambda!165429))))

(declare-fun e!2790914 () Bool)

(assert (=> b!4481128 (=> (not res!1860501) (not e!2790914))))

(assert (=> b!4481128 e!2790914))

(declare-fun lt!1667861 () Unit!89713)

(declare-fun Unit!89741 () Unit!89713)

(assert (=> b!4481128 (= lt!1667861 Unit!89741)))

(declare-fun bm!312054 () Bool)

(assert (=> bm!312054 (= call!312059 (forall!10054 (toList!4123 lt!1667662) (ite c!763323 lambda!165427 lambda!165429)))))

(declare-fun b!4481129 () Bool)

(declare-fun res!1860500 () Bool)

(declare-fun e!2790913 () Bool)

(assert (=> b!4481129 (=> (not res!1860500) (not e!2790913))))

(assert (=> b!4481129 (= res!1860500 (forall!10054 (toList!4123 lt!1667662) lambda!165430))))

(declare-fun b!4481130 () Bool)

(assert (=> b!4481130 (= e!2790914 (forall!10054 (toList!4123 lt!1667662) lambda!165429))))

(declare-fun bm!312055 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!280 (ListMap!3385) Unit!89713)

(assert (=> bm!312055 (= call!312060 (lemmaContainsAllItsOwnKeys!280 lt!1667662))))

(declare-fun b!4481131 () Bool)

(assert (=> b!4481131 (= e!2790913 (invariantList!949 (toList!4123 lt!1667870)))))

(assert (=> d!1371533 e!2790913))

(declare-fun res!1860499 () Bool)

(assert (=> d!1371533 (=> (not res!1860499) (not e!2790913))))

(assert (=> d!1371533 (= res!1860499 (forall!10054 newBucket!178 lambda!165430))))

(assert (=> d!1371533 (= lt!1667870 e!2790915)))

(assert (=> d!1371533 (= c!763323 ((_ is Nil!50374) newBucket!178))))

(assert (=> d!1371533 (noDuplicateKeys!1058 newBucket!178)))

(assert (=> d!1371533 (= (addToMapMapFromBucket!613 newBucket!178 lt!1667662) lt!1667870)))

(assert (=> b!4481127 (= e!2790915 lt!1667662)))

(declare-fun lt!1667862 () Unit!89713)

(assert (=> b!4481127 (= lt!1667862 call!312060)))

(assert (=> b!4481127 call!312058))

(declare-fun lt!1667859 () Unit!89713)

(assert (=> b!4481127 (= lt!1667859 lt!1667862)))

(assert (=> b!4481127 call!312059))

(declare-fun lt!1667865 () Unit!89713)

(declare-fun Unit!89742 () Unit!89713)

(assert (=> b!4481127 (= lt!1667865 Unit!89742)))

(assert (= (and d!1371533 c!763323) b!4481127))

(assert (= (and d!1371533 (not c!763323)) b!4481128))

(assert (= (and b!4481128 res!1860501) b!4481130))

(assert (= (or b!4481127 b!4481128) bm!312053))

(assert (= (or b!4481127 b!4481128) bm!312054))

(assert (= (or b!4481127 b!4481128) bm!312055))

(assert (= (and d!1371533 res!1860499) b!4481129))

(assert (= (and b!4481129 res!1860500) b!4481131))

(declare-fun m!5200677 () Bool)

(assert (=> b!4481130 m!5200677))

(declare-fun m!5200679 () Bool)

(assert (=> bm!312055 m!5200679))

(declare-fun m!5200681 () Bool)

(assert (=> b!4481128 m!5200681))

(assert (=> b!4481128 m!5200677))

(declare-fun m!5200683 () Bool)

(assert (=> b!4481128 m!5200683))

(declare-fun m!5200685 () Bool)

(assert (=> b!4481128 m!5200685))

(declare-fun m!5200687 () Bool)

(assert (=> b!4481128 m!5200687))

(declare-fun m!5200689 () Bool)

(assert (=> b!4481128 m!5200689))

(declare-fun m!5200691 () Bool)

(assert (=> b!4481128 m!5200691))

(declare-fun m!5200693 () Bool)

(assert (=> b!4481128 m!5200693))

(assert (=> b!4481128 m!5200683))

(declare-fun m!5200695 () Bool)

(assert (=> b!4481128 m!5200695))

(declare-fun m!5200697 () Bool)

(assert (=> b!4481128 m!5200697))

(declare-fun m!5200699 () Bool)

(assert (=> b!4481128 m!5200699))

(assert (=> b!4481128 m!5200695))

(declare-fun m!5200701 () Bool)

(assert (=> bm!312053 m!5200701))

(declare-fun m!5200703 () Bool)

(assert (=> bm!312054 m!5200703))

(declare-fun m!5200705 () Bool)

(assert (=> b!4481131 m!5200705))

(declare-fun m!5200707 () Bool)

(assert (=> d!1371533 m!5200707))

(assert (=> d!1371533 m!5200337))

(declare-fun m!5200709 () Bool)

(assert (=> b!4481129 m!5200709))

(assert (=> b!4481006 d!1371533))

(declare-fun bs!824841 () Bool)

(declare-fun d!1371569 () Bool)

(assert (= bs!824841 (and d!1371569 start!440760)))

(declare-fun lambda!165441 () Int)

(assert (=> bs!824841 (= lambda!165441 lambda!165343)))

(declare-fun bs!824842 () Bool)

(assert (= bs!824842 (and d!1371569 d!1371525)))

(assert (=> bs!824842 (= lambda!165441 lambda!165356)))

(assert (=> d!1371569 (not (contains!12965 (extractMap!1114 (toList!4124 lm!1477)) key!3287))))

(declare-fun lt!1667887 () Unit!89713)

(declare-fun choose!28762 (ListLongMap!2755 K!11785 Hashable!5453) Unit!89713)

(assert (=> d!1371569 (= lt!1667887 (choose!28762 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371569 (forall!10052 (toList!4124 lm!1477) lambda!165441)))

(assert (=> d!1371569 (= (lemmaNotInItsHashBucketThenNotInMap!58 lm!1477 key!3287 hashF!1107) lt!1667887)))

(declare-fun bs!824843 () Bool)

(assert (= bs!824843 d!1371569))

(assert (=> bs!824843 m!5200417))

(assert (=> bs!824843 m!5200417))

(declare-fun m!5200739 () Bool)

(assert (=> bs!824843 m!5200739))

(declare-fun m!5200741 () Bool)

(assert (=> bs!824843 m!5200741))

(declare-fun m!5200743 () Bool)

(assert (=> bs!824843 m!5200743))

(assert (=> b!4480989 d!1371569))

(declare-fun bs!824844 () Bool)

(declare-fun d!1371579 () Bool)

(assert (= bs!824844 (and d!1371579 start!440760)))

(declare-fun lambda!165442 () Int)

(assert (=> bs!824844 (= lambda!165442 lambda!165343)))

(declare-fun bs!824845 () Bool)

(assert (= bs!824845 (and d!1371579 d!1371525)))

(assert (=> bs!824845 (= lambda!165442 lambda!165356)))

(declare-fun bs!824846 () Bool)

(assert (= bs!824846 (and d!1371579 d!1371569)))

(assert (=> bs!824846 (= lambda!165442 lambda!165441)))

(declare-fun lt!1667888 () ListMap!3385)

(assert (=> d!1371579 (invariantList!949 (toList!4123 lt!1667888))))

(declare-fun e!2790918 () ListMap!3385)

(assert (=> d!1371579 (= lt!1667888 e!2790918)))

(declare-fun c!763326 () Bool)

(assert (=> d!1371579 (= c!763326 ((_ is Cons!50375) (Cons!50375 lt!1667665 lt!1667673)))))

(assert (=> d!1371579 (forall!10052 (Cons!50375 lt!1667665 lt!1667673) lambda!165442)))

(assert (=> d!1371579 (= (extractMap!1114 (Cons!50375 lt!1667665 lt!1667673)) lt!1667888)))

(declare-fun b!4481138 () Bool)

(assert (=> b!4481138 (= e!2790918 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (Cons!50375 lt!1667665 lt!1667673))) (extractMap!1114 (t!357453 (Cons!50375 lt!1667665 lt!1667673)))))))

(declare-fun b!4481139 () Bool)

(assert (=> b!4481139 (= e!2790918 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371579 c!763326) b!4481138))

(assert (= (and d!1371579 (not c!763326)) b!4481139))

(declare-fun m!5200745 () Bool)

(assert (=> d!1371579 m!5200745))

(declare-fun m!5200747 () Bool)

(assert (=> d!1371579 m!5200747))

(declare-fun m!5200749 () Bool)

(assert (=> b!4481138 m!5200749))

(assert (=> b!4481138 m!5200749))

(declare-fun m!5200751 () Bool)

(assert (=> b!4481138 m!5200751))

(assert (=> b!4481000 d!1371579))

(declare-fun d!1371581 () Bool)

(declare-fun e!2790934 () Bool)

(assert (=> d!1371581 e!2790934))

(declare-fun res!1860513 () Bool)

(assert (=> d!1371581 (=> (not res!1860513) (not e!2790934))))

(declare-fun lt!1667904 () ListMap!3385)

(assert (=> d!1371581 (= res!1860513 (not (contains!12965 lt!1667904 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!85 (List!50498 K!11785) List!50498)

(assert (=> d!1371581 (= lt!1667904 (ListMap!3386 (removePresrvNoDuplicatedKeys!85 (toList!4123 (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673))) key!3287)))))

(assert (=> d!1371581 (= (-!320 (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673)) key!3287) lt!1667904)))

(declare-fun b!4481159 () Bool)

(declare-datatypes ((List!50501 0))(
  ( (Nil!50377) (Cons!50377 (h!56164 K!11785) (t!357455 List!50501)) )
))
(declare-fun content!8167 (List!50501) (InoxSet K!11785))

(declare-fun keys!17420 (ListMap!3385) List!50501)

(assert (=> b!4481159 (= e!2790934 (= ((_ map and) (content!8167 (keys!17420 (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673)))) ((_ map not) (store ((as const (Array K!11785 Bool)) false) key!3287 true))) (content!8167 (keys!17420 lt!1667904))))))

(assert (= (and d!1371581 res!1860513) b!4481159))

(declare-fun m!5200767 () Bool)

(assert (=> d!1371581 m!5200767))

(declare-fun m!5200769 () Bool)

(assert (=> d!1371581 m!5200769))

(declare-fun m!5200771 () Bool)

(assert (=> b!4481159 m!5200771))

(declare-fun m!5200773 () Bool)

(assert (=> b!4481159 m!5200773))

(declare-fun m!5200775 () Bool)

(assert (=> b!4481159 m!5200775))

(declare-fun m!5200777 () Bool)

(assert (=> b!4481159 m!5200777))

(assert (=> b!4481159 m!5200345))

(assert (=> b!4481159 m!5200775))

(assert (=> b!4481159 m!5200771))

(declare-fun m!5200779 () Bool)

(assert (=> b!4481159 m!5200779))

(assert (=> b!4481000 d!1371581))

(declare-fun bs!824862 () Bool)

(declare-fun d!1371589 () Bool)

(assert (= bs!824862 (and d!1371589 start!440760)))

(declare-fun lambda!165444 () Int)

(assert (=> bs!824862 (= lambda!165444 lambda!165343)))

(declare-fun bs!824863 () Bool)

(assert (= bs!824863 (and d!1371589 d!1371525)))

(assert (=> bs!824863 (= lambda!165444 lambda!165356)))

(declare-fun bs!824864 () Bool)

(assert (= bs!824864 (and d!1371589 d!1371569)))

(assert (=> bs!824864 (= lambda!165444 lambda!165441)))

(declare-fun bs!824865 () Bool)

(assert (= bs!824865 (and d!1371589 d!1371579)))

(assert (=> bs!824865 (= lambda!165444 lambda!165442)))

(declare-fun lt!1667905 () ListMap!3385)

(assert (=> d!1371589 (invariantList!949 (toList!4123 lt!1667905))))

(declare-fun e!2790935 () ListMap!3385)

(assert (=> d!1371589 (= lt!1667905 e!2790935)))

(declare-fun c!763331 () Bool)

(assert (=> d!1371589 (= c!763331 ((_ is Cons!50375) (Cons!50375 lt!1667664 lt!1667673)))))

(assert (=> d!1371589 (forall!10052 (Cons!50375 lt!1667664 lt!1667673) lambda!165444)))

(assert (=> d!1371589 (= (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673)) lt!1667905)))

(declare-fun b!4481160 () Bool)

(assert (=> b!4481160 (= e!2790935 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (Cons!50375 lt!1667664 lt!1667673))) (extractMap!1114 (t!357453 (Cons!50375 lt!1667664 lt!1667673)))))))

(declare-fun b!4481161 () Bool)

(assert (=> b!4481161 (= e!2790935 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371589 c!763331) b!4481160))

(assert (= (and d!1371589 (not c!763331)) b!4481161))

(declare-fun m!5200789 () Bool)

(assert (=> d!1371589 m!5200789))

(declare-fun m!5200791 () Bool)

(assert (=> d!1371589 m!5200791))

(declare-fun m!5200793 () Bool)

(assert (=> b!4481160 m!5200793))

(assert (=> b!4481160 m!5200793))

(declare-fun m!5200795 () Bool)

(assert (=> b!4481160 m!5200795))

(assert (=> b!4481000 d!1371589))

(declare-fun d!1371593 () Bool)

(assert (=> d!1371593 (= (tail!7568 (toList!4124 lm!1477)) (t!357453 (toList!4124 lm!1477)))))

(assert (=> b!4481000 d!1371593))

(declare-fun d!1371595 () Bool)

(assert (=> d!1371595 (= (eq!551 (extractMap!1114 (Cons!50375 lt!1667665 lt!1667673)) (-!320 (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673)) key!3287)) (= (content!8166 (toList!4123 (extractMap!1114 (Cons!50375 lt!1667665 lt!1667673)))) (content!8166 (toList!4123 (-!320 (extractMap!1114 (Cons!50375 lt!1667664 lt!1667673)) key!3287)))))))

(declare-fun bs!824875 () Bool)

(assert (= bs!824875 d!1371595))

(declare-fun m!5200797 () Bool)

(assert (=> bs!824875 m!5200797))

(declare-fun m!5200799 () Bool)

(assert (=> bs!824875 m!5200799))

(assert (=> b!4481000 d!1371595))

(declare-fun bs!824899 () Bool)

(declare-fun d!1371597 () Bool)

(assert (= bs!824899 (and d!1371597 d!1371569)))

(declare-fun lambda!165452 () Int)

(assert (=> bs!824899 (= lambda!165452 lambda!165441)))

(declare-fun bs!824900 () Bool)

(assert (= bs!824900 (and d!1371597 start!440760)))

(assert (=> bs!824900 (= lambda!165452 lambda!165343)))

(declare-fun bs!824901 () Bool)

(assert (= bs!824901 (and d!1371597 d!1371525)))

(assert (=> bs!824901 (= lambda!165452 lambda!165356)))

(declare-fun bs!824902 () Bool)

(assert (= bs!824902 (and d!1371597 d!1371589)))

(assert (=> bs!824902 (= lambda!165452 lambda!165444)))

(declare-fun bs!824903 () Bool)

(assert (= bs!824903 (and d!1371597 d!1371579)))

(assert (=> bs!824903 (= lambda!165452 lambda!165442)))

(assert (=> d!1371597 (eq!551 (extractMap!1114 (Cons!50375 (tuple2!50669 hash!344 newBucket!178) (tail!7568 (toList!4124 lm!1477)))) (-!320 (extractMap!1114 (Cons!50375 (tuple2!50669 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477)))) (tail!7568 (toList!4124 lm!1477)))) key!3287))))

(declare-fun lt!1667940 () Unit!89713)

(declare-fun choose!28764 (ListLongMap!2755 (_ BitVec 64) List!50498 List!50498 K!11785 Hashable!5453) Unit!89713)

(assert (=> d!1371597 (= lt!1667940 (choose!28764 lm!1477 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371597 (forall!10052 (toList!4124 lm!1477) lambda!165452)))

(assert (=> d!1371597 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!18 lm!1477 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1667940)))

(declare-fun bs!824904 () Bool)

(assert (= bs!824904 d!1371597))

(declare-fun m!5200859 () Bool)

(assert (=> bs!824904 m!5200859))

(declare-fun m!5200861 () Bool)

(assert (=> bs!824904 m!5200861))

(declare-fun m!5200863 () Bool)

(assert (=> bs!824904 m!5200863))

(declare-fun m!5200865 () Bool)

(assert (=> bs!824904 m!5200865))

(assert (=> bs!824904 m!5200859))

(assert (=> bs!824904 m!5200863))

(declare-fun m!5200867 () Bool)

(assert (=> bs!824904 m!5200867))

(declare-fun m!5200869 () Bool)

(assert (=> bs!824904 m!5200869))

(assert (=> bs!824904 m!5200861))

(assert (=> bs!824904 m!5200349))

(assert (=> b!4481000 d!1371597))

(declare-fun d!1371611 () Bool)

(declare-fun e!2790967 () Bool)

(assert (=> d!1371611 e!2790967))

(declare-fun res!1860541 () Bool)

(assert (=> d!1371611 (=> (not res!1860541) (not e!2790967))))

(declare-fun lt!1667958 () ListLongMap!2755)

(assert (=> d!1371611 (= res!1860541 (contains!12966 lt!1667958 (_1!28628 lt!1667665)))))

(declare-fun lt!1667956 () List!50499)

(assert (=> d!1371611 (= lt!1667958 (ListLongMap!2756 lt!1667956))))

(declare-fun lt!1667955 () Unit!89713)

(declare-fun lt!1667957 () Unit!89713)

(assert (=> d!1371611 (= lt!1667955 lt!1667957)))

(declare-datatypes ((Option!10970 0))(
  ( (None!10969) (Some!10969 (v!44345 List!50498)) )
))
(declare-fun getValueByKey!956 (List!50499 (_ BitVec 64)) Option!10970)

(assert (=> d!1371611 (= (getValueByKey!956 lt!1667956 (_1!28628 lt!1667665)) (Some!10969 (_2!28628 lt!1667665)))))

(declare-fun lemmaContainsTupThenGetReturnValue!608 (List!50499 (_ BitVec 64) List!50498) Unit!89713)

(assert (=> d!1371611 (= lt!1667957 (lemmaContainsTupThenGetReturnValue!608 lt!1667956 (_1!28628 lt!1667665) (_2!28628 lt!1667665)))))

(declare-fun insertStrictlySorted!352 (List!50499 (_ BitVec 64) List!50498) List!50499)

(assert (=> d!1371611 (= lt!1667956 (insertStrictlySorted!352 (toList!4124 lt!1667682) (_1!28628 lt!1667665) (_2!28628 lt!1667665)))))

(assert (=> d!1371611 (= (+!1414 lt!1667682 lt!1667665) lt!1667958)))

(declare-fun b!4481204 () Bool)

(declare-fun res!1860540 () Bool)

(assert (=> b!4481204 (=> (not res!1860540) (not e!2790967))))

(assert (=> b!4481204 (= res!1860540 (= (getValueByKey!956 (toList!4124 lt!1667958) (_1!28628 lt!1667665)) (Some!10969 (_2!28628 lt!1667665))))))

(declare-fun b!4481205 () Bool)

(assert (=> b!4481205 (= e!2790967 (contains!12967 (toList!4124 lt!1667958) lt!1667665))))

(assert (= (and d!1371611 res!1860541) b!4481204))

(assert (= (and b!4481204 res!1860540) b!4481205))

(declare-fun m!5200889 () Bool)

(assert (=> d!1371611 m!5200889))

(declare-fun m!5200891 () Bool)

(assert (=> d!1371611 m!5200891))

(declare-fun m!5200893 () Bool)

(assert (=> d!1371611 m!5200893))

(declare-fun m!5200895 () Bool)

(assert (=> d!1371611 m!5200895))

(declare-fun m!5200897 () Bool)

(assert (=> b!4481204 m!5200897))

(declare-fun m!5200899 () Bool)

(assert (=> b!4481205 m!5200899))

(assert (=> b!4480998 d!1371611))

(declare-fun d!1371621 () Bool)

(assert (=> d!1371621 (= (tail!7569 lm!1477) (ListLongMap!2756 (tail!7568 (toList!4124 lm!1477))))))

(declare-fun bs!824906 () Bool)

(assert (= bs!824906 d!1371621))

(assert (=> bs!824906 m!5200349))

(assert (=> b!4480998 d!1371621))

(declare-fun d!1371623 () Bool)

(assert (=> d!1371623 (= (eq!551 lt!1667660 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lm!1477))) lt!1667662)) (= (content!8166 (toList!4123 lt!1667660)) (content!8166 (toList!4123 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lm!1477))) lt!1667662)))))))

(declare-fun bs!824907 () Bool)

(assert (= bs!824907 d!1371623))

(assert (=> bs!824907 m!5200485))

(declare-fun m!5200921 () Bool)

(assert (=> bs!824907 m!5200921))

(assert (=> b!4480999 d!1371623))

(declare-fun bs!824913 () Bool)

(declare-fun b!4481217 () Bool)

(assert (= bs!824913 (and b!4481217 b!4481127)))

(declare-fun lambda!165454 () Int)

(assert (=> bs!824913 (= lambda!165454 lambda!165427)))

(declare-fun bs!824916 () Bool)

(assert (= bs!824916 (and b!4481217 b!4481128)))

(assert (=> bs!824916 (= lambda!165454 lambda!165428)))

(assert (=> bs!824916 (= (= lt!1667662 lt!1667860) (= lambda!165454 lambda!165429))))

(declare-fun bs!824919 () Bool)

(assert (= bs!824919 (and b!4481217 d!1371533)))

(assert (=> bs!824919 (= (= lt!1667662 lt!1667870) (= lambda!165454 lambda!165430))))

(assert (=> b!4481217 true))

(declare-fun bs!824925 () Bool)

(declare-fun b!4481218 () Bool)

(assert (= bs!824925 (and b!4481218 b!4481127)))

(declare-fun lambda!165455 () Int)

(assert (=> bs!824925 (= lambda!165455 lambda!165427)))

(declare-fun bs!824928 () Bool)

(assert (= bs!824928 (and b!4481218 b!4481128)))

(assert (=> bs!824928 (= lambda!165455 lambda!165428)))

(declare-fun bs!824929 () Bool)

(assert (= bs!824929 (and b!4481218 b!4481217)))

(assert (=> bs!824929 (= lambda!165455 lambda!165454)))

(assert (=> bs!824928 (= (= lt!1667662 lt!1667860) (= lambda!165455 lambda!165429))))

(declare-fun bs!824930 () Bool)

(assert (= bs!824930 (and b!4481218 d!1371533)))

(assert (=> bs!824930 (= (= lt!1667662 lt!1667870) (= lambda!165455 lambda!165430))))

(assert (=> b!4481218 true))

(declare-fun lambda!165456 () Int)

(declare-fun lt!1667972 () ListMap!3385)

(assert (=> bs!824925 (= (= lt!1667972 lt!1667662) (= lambda!165456 lambda!165427))))

(assert (=> bs!824928 (= (= lt!1667972 lt!1667662) (= lambda!165456 lambda!165428))))

(assert (=> b!4481218 (= (= lt!1667972 lt!1667662) (= lambda!165456 lambda!165455))))

(assert (=> bs!824929 (= (= lt!1667972 lt!1667662) (= lambda!165456 lambda!165454))))

(assert (=> bs!824928 (= (= lt!1667972 lt!1667860) (= lambda!165456 lambda!165429))))

(assert (=> bs!824930 (= (= lt!1667972 lt!1667870) (= lambda!165456 lambda!165430))))

(assert (=> b!4481218 true))

(declare-fun bs!824932 () Bool)

(declare-fun d!1371627 () Bool)

(assert (= bs!824932 (and d!1371627 b!4481127)))

(declare-fun lambda!165457 () Int)

(declare-fun lt!1667982 () ListMap!3385)

(assert (=> bs!824932 (= (= lt!1667982 lt!1667662) (= lambda!165457 lambda!165427))))

(declare-fun bs!824933 () Bool)

(assert (= bs!824933 (and d!1371627 b!4481128)))

(assert (=> bs!824933 (= (= lt!1667982 lt!1667662) (= lambda!165457 lambda!165428))))

(declare-fun bs!824934 () Bool)

(assert (= bs!824934 (and d!1371627 b!4481218)))

(assert (=> bs!824934 (= (= lt!1667982 lt!1667662) (= lambda!165457 lambda!165455))))

(declare-fun bs!824935 () Bool)

(assert (= bs!824935 (and d!1371627 b!4481217)))

(assert (=> bs!824935 (= (= lt!1667982 lt!1667662) (= lambda!165457 lambda!165454))))

(assert (=> bs!824934 (= (= lt!1667982 lt!1667972) (= lambda!165457 lambda!165456))))

(assert (=> bs!824933 (= (= lt!1667982 lt!1667860) (= lambda!165457 lambda!165429))))

(declare-fun bs!824936 () Bool)

(assert (= bs!824936 (and d!1371627 d!1371533)))

(assert (=> bs!824936 (= (= lt!1667982 lt!1667870) (= lambda!165457 lambda!165430))))

(assert (=> d!1371627 true))

(declare-fun call!312065 () Bool)

(declare-fun c!763344 () Bool)

(declare-fun bm!312060 () Bool)

(declare-fun lt!1667983 () ListMap!3385)

(assert (=> bm!312060 (= call!312065 (forall!10054 (ite c!763344 (toList!4123 lt!1667662) (toList!4123 lt!1667983)) (ite c!763344 lambda!165454 lambda!165456)))))

(declare-fun e!2790977 () ListMap!3385)

(assert (=> b!4481218 (= e!2790977 lt!1667972)))

(assert (=> b!4481218 (= lt!1667983 (+!1416 lt!1667662 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477))))))))

(assert (=> b!4481218 (= lt!1667972 (addToMapMapFromBucket!613 (t!357452 (_2!28628 (h!56160 (toList!4124 lm!1477)))) (+!1416 lt!1667662 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477)))))))))

(declare-fun lt!1667980 () Unit!89713)

(declare-fun call!312067 () Unit!89713)

(assert (=> b!4481218 (= lt!1667980 call!312067)))

(assert (=> b!4481218 (forall!10054 (toList!4123 lt!1667662) lambda!165455)))

(declare-fun lt!1667988 () Unit!89713)

(assert (=> b!4481218 (= lt!1667988 lt!1667980)))

(assert (=> b!4481218 call!312065))

(declare-fun lt!1667968 () Unit!89713)

(declare-fun Unit!89744 () Unit!89713)

(assert (=> b!4481218 (= lt!1667968 Unit!89744)))

(assert (=> b!4481218 (forall!10054 (t!357452 (_2!28628 (h!56160 (toList!4124 lm!1477)))) lambda!165456)))

(declare-fun lt!1667986 () Unit!89713)

(declare-fun Unit!89745 () Unit!89713)

(assert (=> b!4481218 (= lt!1667986 Unit!89745)))

(declare-fun lt!1667985 () Unit!89713)

(declare-fun Unit!89746 () Unit!89713)

(assert (=> b!4481218 (= lt!1667985 Unit!89746)))

(declare-fun lt!1667976 () Unit!89713)

(assert (=> b!4481218 (= lt!1667976 (forallContained!2315 (toList!4123 lt!1667983) lambda!165456 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477))))))))

(assert (=> b!4481218 (contains!12965 lt!1667983 (_1!28627 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477))))))))

(declare-fun lt!1667984 () Unit!89713)

(declare-fun Unit!89747 () Unit!89713)

(assert (=> b!4481218 (= lt!1667984 Unit!89747)))

(assert (=> b!4481218 (contains!12965 lt!1667972 (_1!28627 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477))))))))

(declare-fun lt!1667979 () Unit!89713)

(declare-fun Unit!89748 () Unit!89713)

(assert (=> b!4481218 (= lt!1667979 Unit!89748)))

(assert (=> b!4481218 (forall!10054 (_2!28628 (h!56160 (toList!4124 lm!1477))) lambda!165456)))

(declare-fun lt!1667978 () Unit!89713)

(declare-fun Unit!89749 () Unit!89713)

(assert (=> b!4481218 (= lt!1667978 Unit!89749)))

(assert (=> b!4481218 (forall!10054 (toList!4123 lt!1667983) lambda!165456)))

(declare-fun lt!1667969 () Unit!89713)

(declare-fun Unit!89750 () Unit!89713)

(assert (=> b!4481218 (= lt!1667969 Unit!89750)))

(declare-fun lt!1667975 () Unit!89713)

(declare-fun Unit!89751 () Unit!89713)

(assert (=> b!4481218 (= lt!1667975 Unit!89751)))

(declare-fun lt!1667970 () Unit!89713)

(assert (=> b!4481218 (= lt!1667970 (addForallContainsKeyThenBeforeAdding!280 lt!1667662 lt!1667972 (_1!28627 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477))))) (_2!28627 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477)))))))))

(assert (=> b!4481218 (forall!10054 (toList!4123 lt!1667662) lambda!165456)))

(declare-fun lt!1667987 () Unit!89713)

(assert (=> b!4481218 (= lt!1667987 lt!1667970)))

(declare-fun call!312066 () Bool)

(assert (=> b!4481218 call!312066))

(declare-fun lt!1667981 () Unit!89713)

(declare-fun Unit!89752 () Unit!89713)

(assert (=> b!4481218 (= lt!1667981 Unit!89752)))

(declare-fun res!1860547 () Bool)

(assert (=> b!4481218 (= res!1860547 (forall!10054 (_2!28628 (h!56160 (toList!4124 lm!1477))) lambda!165456))))

(declare-fun e!2790976 () Bool)

(assert (=> b!4481218 (=> (not res!1860547) (not e!2790976))))

(assert (=> b!4481218 e!2790976))

(declare-fun lt!1667973 () Unit!89713)

(declare-fun Unit!89753 () Unit!89713)

(assert (=> b!4481218 (= lt!1667973 Unit!89753)))

(declare-fun bm!312061 () Bool)

(assert (=> bm!312061 (= call!312066 (forall!10054 (toList!4123 lt!1667662) (ite c!763344 lambda!165454 lambda!165456)))))

(declare-fun b!4481219 () Bool)

(declare-fun res!1860546 () Bool)

(declare-fun e!2790975 () Bool)

(assert (=> b!4481219 (=> (not res!1860546) (not e!2790975))))

(assert (=> b!4481219 (= res!1860546 (forall!10054 (toList!4123 lt!1667662) lambda!165457))))

(declare-fun b!4481220 () Bool)

(assert (=> b!4481220 (= e!2790976 (forall!10054 (toList!4123 lt!1667662) lambda!165456))))

(declare-fun bm!312062 () Bool)

(assert (=> bm!312062 (= call!312067 (lemmaContainsAllItsOwnKeys!280 lt!1667662))))

(declare-fun b!4481221 () Bool)

(assert (=> b!4481221 (= e!2790975 (invariantList!949 (toList!4123 lt!1667982)))))

(assert (=> d!1371627 e!2790975))

(declare-fun res!1860545 () Bool)

(assert (=> d!1371627 (=> (not res!1860545) (not e!2790975))))

(assert (=> d!1371627 (= res!1860545 (forall!10054 (_2!28628 (h!56160 (toList!4124 lm!1477))) lambda!165457))))

(assert (=> d!1371627 (= lt!1667982 e!2790977)))

(assert (=> d!1371627 (= c!763344 ((_ is Nil!50374) (_2!28628 (h!56160 (toList!4124 lm!1477)))))))

(assert (=> d!1371627 (noDuplicateKeys!1058 (_2!28628 (h!56160 (toList!4124 lm!1477))))))

(assert (=> d!1371627 (= (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lm!1477))) lt!1667662) lt!1667982)))

(assert (=> b!4481217 (= e!2790977 lt!1667662)))

(declare-fun lt!1667974 () Unit!89713)

(assert (=> b!4481217 (= lt!1667974 call!312067)))

(assert (=> b!4481217 call!312065))

(declare-fun lt!1667971 () Unit!89713)

(assert (=> b!4481217 (= lt!1667971 lt!1667974)))

(assert (=> b!4481217 call!312066))

(declare-fun lt!1667977 () Unit!89713)

(declare-fun Unit!89754 () Unit!89713)

(assert (=> b!4481217 (= lt!1667977 Unit!89754)))

(assert (= (and d!1371627 c!763344) b!4481217))

(assert (= (and d!1371627 (not c!763344)) b!4481218))

(assert (= (and b!4481218 res!1860547) b!4481220))

(assert (= (or b!4481217 b!4481218) bm!312060))

(assert (= (or b!4481217 b!4481218) bm!312061))

(assert (= (or b!4481217 b!4481218) bm!312062))

(assert (= (and d!1371627 res!1860545) b!4481219))

(assert (= (and b!4481219 res!1860546) b!4481221))

(declare-fun m!5200953 () Bool)

(assert (=> b!4481220 m!5200953))

(assert (=> bm!312062 m!5200679))

(declare-fun m!5200955 () Bool)

(assert (=> b!4481218 m!5200955))

(assert (=> b!4481218 m!5200953))

(declare-fun m!5200957 () Bool)

(assert (=> b!4481218 m!5200957))

(declare-fun m!5200959 () Bool)

(assert (=> b!4481218 m!5200959))

(declare-fun m!5200961 () Bool)

(assert (=> b!4481218 m!5200961))

(declare-fun m!5200963 () Bool)

(assert (=> b!4481218 m!5200963))

(declare-fun m!5200965 () Bool)

(assert (=> b!4481218 m!5200965))

(declare-fun m!5200967 () Bool)

(assert (=> b!4481218 m!5200967))

(assert (=> b!4481218 m!5200957))

(declare-fun m!5200969 () Bool)

(assert (=> b!4481218 m!5200969))

(declare-fun m!5200971 () Bool)

(assert (=> b!4481218 m!5200971))

(declare-fun m!5200973 () Bool)

(assert (=> b!4481218 m!5200973))

(assert (=> b!4481218 m!5200969))

(declare-fun m!5200975 () Bool)

(assert (=> bm!312060 m!5200975))

(declare-fun m!5200977 () Bool)

(assert (=> bm!312061 m!5200977))

(declare-fun m!5200979 () Bool)

(assert (=> b!4481221 m!5200979))

(declare-fun m!5200981 () Bool)

(assert (=> d!1371627 m!5200981))

(declare-fun m!5200983 () Bool)

(assert (=> d!1371627 m!5200983))

(declare-fun m!5200987 () Bool)

(assert (=> b!4481219 m!5200987))

(assert (=> b!4480999 d!1371627))

(declare-fun bs!824940 () Bool)

(declare-fun d!1371639 () Bool)

(assert (= bs!824940 (and d!1371639 d!1371569)))

(declare-fun lambda!165458 () Int)

(assert (=> bs!824940 (= lambda!165458 lambda!165441)))

(declare-fun bs!824941 () Bool)

(assert (= bs!824941 (and d!1371639 start!440760)))

(assert (=> bs!824941 (= lambda!165458 lambda!165343)))

(declare-fun bs!824942 () Bool)

(assert (= bs!824942 (and d!1371639 d!1371597)))

(assert (=> bs!824942 (= lambda!165458 lambda!165452)))

(declare-fun bs!824943 () Bool)

(assert (= bs!824943 (and d!1371639 d!1371525)))

(assert (=> bs!824943 (= lambda!165458 lambda!165356)))

(declare-fun bs!824944 () Bool)

(assert (= bs!824944 (and d!1371639 d!1371589)))

(assert (=> bs!824944 (= lambda!165458 lambda!165444)))

(declare-fun bs!824945 () Bool)

(assert (= bs!824945 (and d!1371639 d!1371579)))

(assert (=> bs!824945 (= lambda!165458 lambda!165442)))

(declare-fun lt!1667997 () ListMap!3385)

(assert (=> d!1371639 (invariantList!949 (toList!4123 lt!1667997))))

(declare-fun e!2790992 () ListMap!3385)

(assert (=> d!1371639 (= lt!1667997 e!2790992)))

(declare-fun c!763348 () Bool)

(assert (=> d!1371639 (= c!763348 ((_ is Cons!50375) (toList!4124 (+!1414 lm!1477 lt!1667664))))))

(assert (=> d!1371639 (forall!10052 (toList!4124 (+!1414 lm!1477 lt!1667664)) lambda!165458)))

(assert (=> d!1371639 (= (extractMap!1114 (toList!4124 (+!1414 lm!1477 lt!1667664))) lt!1667997)))

(declare-fun b!4481243 () Bool)

(assert (=> b!4481243 (= e!2790992 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 (+!1414 lm!1477 lt!1667664)))) (extractMap!1114 (t!357453 (toList!4124 (+!1414 lm!1477 lt!1667664))))))))

(declare-fun b!4481244 () Bool)

(assert (=> b!4481244 (= e!2790992 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371639 c!763348) b!4481243))

(assert (= (and d!1371639 (not c!763348)) b!4481244))

(declare-fun m!5200991 () Bool)

(assert (=> d!1371639 m!5200991))

(declare-fun m!5200993 () Bool)

(assert (=> d!1371639 m!5200993))

(declare-fun m!5200995 () Bool)

(assert (=> b!4481243 m!5200995))

(assert (=> b!4481243 m!5200995))

(declare-fun m!5200997 () Bool)

(assert (=> b!4481243 m!5200997))

(assert (=> b!4480999 d!1371639))

(declare-fun d!1371643 () Bool)

(declare-fun e!2790993 () Bool)

(assert (=> d!1371643 e!2790993))

(declare-fun res!1860554 () Bool)

(assert (=> d!1371643 (=> (not res!1860554) (not e!2790993))))

(declare-fun lt!1668001 () ListLongMap!2755)

(assert (=> d!1371643 (= res!1860554 (contains!12966 lt!1668001 (_1!28628 lt!1667664)))))

(declare-fun lt!1667999 () List!50499)

(assert (=> d!1371643 (= lt!1668001 (ListLongMap!2756 lt!1667999))))

(declare-fun lt!1667998 () Unit!89713)

(declare-fun lt!1668000 () Unit!89713)

(assert (=> d!1371643 (= lt!1667998 lt!1668000)))

(assert (=> d!1371643 (= (getValueByKey!956 lt!1667999 (_1!28628 lt!1667664)) (Some!10969 (_2!28628 lt!1667664)))))

(assert (=> d!1371643 (= lt!1668000 (lemmaContainsTupThenGetReturnValue!608 lt!1667999 (_1!28628 lt!1667664) (_2!28628 lt!1667664)))))

(assert (=> d!1371643 (= lt!1667999 (insertStrictlySorted!352 (toList!4124 lm!1477) (_1!28628 lt!1667664) (_2!28628 lt!1667664)))))

(assert (=> d!1371643 (= (+!1414 lm!1477 lt!1667664) lt!1668001)))

(declare-fun b!4481245 () Bool)

(declare-fun res!1860553 () Bool)

(assert (=> b!4481245 (=> (not res!1860553) (not e!2790993))))

(assert (=> b!4481245 (= res!1860553 (= (getValueByKey!956 (toList!4124 lt!1668001) (_1!28628 lt!1667664)) (Some!10969 (_2!28628 lt!1667664))))))

(declare-fun b!4481246 () Bool)

(assert (=> b!4481246 (= e!2790993 (contains!12967 (toList!4124 lt!1668001) lt!1667664))))

(assert (= (and d!1371643 res!1860554) b!4481245))

(assert (= (and b!4481245 res!1860553) b!4481246))

(declare-fun m!5200999 () Bool)

(assert (=> d!1371643 m!5200999))

(declare-fun m!5201001 () Bool)

(assert (=> d!1371643 m!5201001))

(declare-fun m!5201003 () Bool)

(assert (=> d!1371643 m!5201003))

(declare-fun m!5201005 () Bool)

(assert (=> d!1371643 m!5201005))

(declare-fun m!5201007 () Bool)

(assert (=> b!4481245 m!5201007))

(declare-fun m!5201009 () Bool)

(assert (=> b!4481246 m!5201009))

(assert (=> b!4480999 d!1371643))

(declare-fun bs!824946 () Bool)

(declare-fun d!1371645 () Bool)

(assert (= bs!824946 (and d!1371645 b!4481127)))

(declare-fun lambda!165461 () Int)

(assert (=> bs!824946 (not (= lambda!165461 lambda!165427))))

(declare-fun bs!824947 () Bool)

(assert (= bs!824947 (and d!1371645 b!4481128)))

(assert (=> bs!824947 (not (= lambda!165461 lambda!165428))))

(declare-fun bs!824948 () Bool)

(assert (= bs!824948 (and d!1371645 b!4481218)))

(assert (=> bs!824948 (not (= lambda!165461 lambda!165455))))

(declare-fun bs!824949 () Bool)

(assert (= bs!824949 (and d!1371645 b!4481217)))

(assert (=> bs!824949 (not (= lambda!165461 lambda!165454))))

(declare-fun bs!824950 () Bool)

(assert (= bs!824950 (and d!1371645 d!1371627)))

(assert (=> bs!824950 (not (= lambda!165461 lambda!165457))))

(assert (=> bs!824948 (not (= lambda!165461 lambda!165456))))

(assert (=> bs!824947 (not (= lambda!165461 lambda!165429))))

(declare-fun bs!824951 () Bool)

(assert (= bs!824951 (and d!1371645 d!1371533)))

(assert (=> bs!824951 (not (= lambda!165461 lambda!165430))))

(assert (=> d!1371645 true))

(assert (=> d!1371645 true))

(assert (=> d!1371645 (= (allKeysSameHash!912 newBucket!178 hash!344 hashF!1107) (forall!10054 newBucket!178 lambda!165461))))

(declare-fun bs!824952 () Bool)

(assert (= bs!824952 d!1371645))

(declare-fun m!5201011 () Bool)

(assert (=> bs!824952 m!5201011))

(assert (=> b!4481002 d!1371645))

(declare-fun b!4481269 () Bool)

(declare-fun e!2791007 () Bool)

(declare-fun contains!12969 (List!50501 K!11785) Bool)

(assert (=> b!4481269 (= e!2791007 (not (contains!12969 (keys!17420 lt!1667669) key!3287)))))

(declare-fun b!4481270 () Bool)

(declare-fun e!2791011 () List!50501)

(declare-fun getKeysList!397 (List!50498) List!50501)

(assert (=> b!4481270 (= e!2791011 (getKeysList!397 (toList!4123 lt!1667669)))))

(declare-fun bm!312066 () Bool)

(declare-fun call!312071 () Bool)

(assert (=> bm!312066 (= call!312071 (contains!12969 e!2791011 key!3287))))

(declare-fun c!763355 () Bool)

(declare-fun c!763357 () Bool)

(assert (=> bm!312066 (= c!763355 c!763357)))

(declare-fun b!4481271 () Bool)

(declare-fun e!2791006 () Unit!89713)

(declare-fun e!2791010 () Unit!89713)

(assert (=> b!4481271 (= e!2791006 e!2791010)))

(declare-fun c!763356 () Bool)

(assert (=> b!4481271 (= c!763356 call!312071)))

(declare-fun b!4481272 () Bool)

(assert (=> b!4481272 false))

(declare-fun lt!1668018 () Unit!89713)

(declare-fun lt!1668024 () Unit!89713)

(assert (=> b!4481272 (= lt!1668018 lt!1668024)))

(declare-fun containsKey!1549 (List!50498 K!11785) Bool)

(assert (=> b!4481272 (containsKey!1549 (toList!4123 lt!1667669) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!396 (List!50498 K!11785) Unit!89713)

(assert (=> b!4481272 (= lt!1668024 (lemmaInGetKeysListThenContainsKey!396 (toList!4123 lt!1667669) key!3287))))

(declare-fun Unit!89766 () Unit!89713)

(assert (=> b!4481272 (= e!2791010 Unit!89766)))

(declare-fun b!4481273 () Bool)

(assert (=> b!4481273 (= e!2791011 (keys!17420 lt!1667669))))

(declare-fun b!4481274 () Bool)

(declare-fun e!2791009 () Bool)

(declare-fun e!2791008 () Bool)

(assert (=> b!4481274 (= e!2791009 e!2791008)))

(declare-fun res!1860563 () Bool)

(assert (=> b!4481274 (=> (not res!1860563) (not e!2791008))))

(declare-datatypes ((Option!10971 0))(
  ( (None!10970) (Some!10970 (v!44346 V!12031)) )
))
(declare-fun isDefined!8257 (Option!10971) Bool)

(declare-fun getValueByKey!957 (List!50498 K!11785) Option!10971)

(assert (=> b!4481274 (= res!1860563 (isDefined!8257 (getValueByKey!957 (toList!4123 lt!1667669) key!3287)))))

(declare-fun b!4481275 () Bool)

(declare-fun lt!1668025 () Unit!89713)

(assert (=> b!4481275 (= e!2791006 lt!1668025)))

(declare-fun lt!1668023 () Unit!89713)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!860 (List!50498 K!11785) Unit!89713)

(assert (=> b!4481275 (= lt!1668023 (lemmaContainsKeyImpliesGetValueByKeyDefined!860 (toList!4123 lt!1667669) key!3287))))

(assert (=> b!4481275 (isDefined!8257 (getValueByKey!957 (toList!4123 lt!1667669) key!3287))))

(declare-fun lt!1668020 () Unit!89713)

(assert (=> b!4481275 (= lt!1668020 lt!1668023)))

(declare-fun lemmaInListThenGetKeysListContains!393 (List!50498 K!11785) Unit!89713)

(assert (=> b!4481275 (= lt!1668025 (lemmaInListThenGetKeysListContains!393 (toList!4123 lt!1667669) key!3287))))

(assert (=> b!4481275 call!312071))

(declare-fun d!1371647 () Bool)

(assert (=> d!1371647 e!2791009))

(declare-fun res!1860561 () Bool)

(assert (=> d!1371647 (=> res!1860561 e!2791009)))

(assert (=> d!1371647 (= res!1860561 e!2791007)))

(declare-fun res!1860562 () Bool)

(assert (=> d!1371647 (=> (not res!1860562) (not e!2791007))))

(declare-fun lt!1668022 () Bool)

(assert (=> d!1371647 (= res!1860562 (not lt!1668022))))

(declare-fun lt!1668021 () Bool)

(assert (=> d!1371647 (= lt!1668022 lt!1668021)))

(declare-fun lt!1668019 () Unit!89713)

(assert (=> d!1371647 (= lt!1668019 e!2791006)))

(assert (=> d!1371647 (= c!763357 lt!1668021)))

(assert (=> d!1371647 (= lt!1668021 (containsKey!1549 (toList!4123 lt!1667669) key!3287))))

(assert (=> d!1371647 (= (contains!12965 lt!1667669 key!3287) lt!1668022)))

(declare-fun b!4481276 () Bool)

(declare-fun Unit!89767 () Unit!89713)

(assert (=> b!4481276 (= e!2791010 Unit!89767)))

(declare-fun b!4481277 () Bool)

(assert (=> b!4481277 (= e!2791008 (contains!12969 (keys!17420 lt!1667669) key!3287))))

(assert (= (and d!1371647 c!763357) b!4481275))

(assert (= (and d!1371647 (not c!763357)) b!4481271))

(assert (= (and b!4481271 c!763356) b!4481272))

(assert (= (and b!4481271 (not c!763356)) b!4481276))

(assert (= (or b!4481275 b!4481271) bm!312066))

(assert (= (and bm!312066 c!763355) b!4481270))

(assert (= (and bm!312066 (not c!763355)) b!4481273))

(assert (= (and d!1371647 res!1860562) b!4481269))

(assert (= (and d!1371647 (not res!1860561)) b!4481274))

(assert (= (and b!4481274 res!1860563) b!4481277))

(declare-fun m!5201013 () Bool)

(assert (=> b!4481272 m!5201013))

(declare-fun m!5201015 () Bool)

(assert (=> b!4481272 m!5201015))

(declare-fun m!5201017 () Bool)

(assert (=> b!4481277 m!5201017))

(assert (=> b!4481277 m!5201017))

(declare-fun m!5201019 () Bool)

(assert (=> b!4481277 m!5201019))

(assert (=> d!1371647 m!5201013))

(assert (=> b!4481273 m!5201017))

(assert (=> b!4481269 m!5201017))

(assert (=> b!4481269 m!5201017))

(assert (=> b!4481269 m!5201019))

(declare-fun m!5201021 () Bool)

(assert (=> b!4481274 m!5201021))

(assert (=> b!4481274 m!5201021))

(declare-fun m!5201023 () Bool)

(assert (=> b!4481274 m!5201023))

(declare-fun m!5201025 () Bool)

(assert (=> b!4481270 m!5201025))

(declare-fun m!5201027 () Bool)

(assert (=> bm!312066 m!5201027))

(declare-fun m!5201029 () Bool)

(assert (=> b!4481275 m!5201029))

(assert (=> b!4481275 m!5201021))

(assert (=> b!4481275 m!5201021))

(assert (=> b!4481275 m!5201023))

(declare-fun m!5201031 () Bool)

(assert (=> b!4481275 m!5201031))

(assert (=> b!4481003 d!1371647))

(declare-fun bs!824953 () Bool)

(declare-fun d!1371649 () Bool)

(assert (= bs!824953 (and d!1371649 d!1371569)))

(declare-fun lambda!165464 () Int)

(assert (=> bs!824953 (not (= lambda!165464 lambda!165441))))

(declare-fun bs!824954 () Bool)

(assert (= bs!824954 (and d!1371649 start!440760)))

(assert (=> bs!824954 (not (= lambda!165464 lambda!165343))))

(declare-fun bs!824955 () Bool)

(assert (= bs!824955 (and d!1371649 d!1371597)))

(assert (=> bs!824955 (not (= lambda!165464 lambda!165452))))

(declare-fun bs!824956 () Bool)

(assert (= bs!824956 (and d!1371649 d!1371525)))

(assert (=> bs!824956 (not (= lambda!165464 lambda!165356))))

(declare-fun bs!824957 () Bool)

(assert (= bs!824957 (and d!1371649 d!1371589)))

(assert (=> bs!824957 (not (= lambda!165464 lambda!165444))))

(declare-fun bs!824958 () Bool)

(assert (= bs!824958 (and d!1371649 d!1371639)))

(assert (=> bs!824958 (not (= lambda!165464 lambda!165458))))

(declare-fun bs!824959 () Bool)

(assert (= bs!824959 (and d!1371649 d!1371579)))

(assert (=> bs!824959 (not (= lambda!165464 lambda!165442))))

(assert (=> d!1371649 true))

(assert (=> d!1371649 (= (allKeysSameHashInMap!1165 lm!1477 hashF!1107) (forall!10052 (toList!4124 lm!1477) lambda!165464))))

(declare-fun bs!824960 () Bool)

(assert (= bs!824960 d!1371649))

(declare-fun m!5201033 () Bool)

(assert (=> bs!824960 m!5201033))

(assert (=> b!4480992 d!1371649))

(declare-fun d!1371651 () Bool)

(declare-fun res!1860568 () Bool)

(declare-fun e!2791016 () Bool)

(assert (=> d!1371651 (=> res!1860568 e!2791016)))

(assert (=> d!1371651 (= res!1860568 (and ((_ is Cons!50374) (_2!28628 (h!56160 (toList!4124 lm!1477)))) (= (_1!28627 (h!56159 (_2!28628 (h!56160 (toList!4124 lm!1477))))) key!3287)))))

(assert (=> d!1371651 (= (containsKey!1546 (_2!28628 (h!56160 (toList!4124 lm!1477))) key!3287) e!2791016)))

(declare-fun b!4481284 () Bool)

(declare-fun e!2791017 () Bool)

(assert (=> b!4481284 (= e!2791016 e!2791017)))

(declare-fun res!1860569 () Bool)

(assert (=> b!4481284 (=> (not res!1860569) (not e!2791017))))

(assert (=> b!4481284 (= res!1860569 ((_ is Cons!50374) (_2!28628 (h!56160 (toList!4124 lm!1477)))))))

(declare-fun b!4481285 () Bool)

(assert (=> b!4481285 (= e!2791017 (containsKey!1546 (t!357452 (_2!28628 (h!56160 (toList!4124 lm!1477)))) key!3287))))

(assert (= (and d!1371651 (not res!1860568)) b!4481284))

(assert (= (and b!4481284 res!1860569) b!4481285))

(declare-fun m!5201035 () Bool)

(assert (=> b!4481285 m!5201035))

(assert (=> b!4481001 d!1371651))

(declare-fun d!1371653 () Bool)

(declare-fun res!1860574 () Bool)

(declare-fun e!2791022 () Bool)

(assert (=> d!1371653 (=> res!1860574 e!2791022)))

(assert (=> d!1371653 (= res!1860574 (not ((_ is Cons!50374) newBucket!178)))))

(assert (=> d!1371653 (= (noDuplicateKeys!1058 newBucket!178) e!2791022)))

(declare-fun b!4481290 () Bool)

(declare-fun e!2791023 () Bool)

(assert (=> b!4481290 (= e!2791022 e!2791023)))

(declare-fun res!1860575 () Bool)

(assert (=> b!4481290 (=> (not res!1860575) (not e!2791023))))

(assert (=> b!4481290 (= res!1860575 (not (containsKey!1546 (t!357452 newBucket!178) (_1!28627 (h!56159 newBucket!178)))))))

(declare-fun b!4481291 () Bool)

(assert (=> b!4481291 (= e!2791023 (noDuplicateKeys!1058 (t!357452 newBucket!178)))))

(assert (= (and d!1371653 (not res!1860574)) b!4481290))

(assert (= (and b!4481290 res!1860575) b!4481291))

(declare-fun m!5201037 () Bool)

(assert (=> b!4481290 m!5201037))

(declare-fun m!5201039 () Bool)

(assert (=> b!4481291 m!5201039))

(assert (=> b!4480990 d!1371653))

(declare-fun b!4481292 () Bool)

(declare-fun e!2791025 () Bool)

(assert (=> b!4481292 (= e!2791025 (not (contains!12969 (keys!17420 lt!1667666) key!3287)))))

(declare-fun b!4481293 () Bool)

(declare-fun e!2791029 () List!50501)

(assert (=> b!4481293 (= e!2791029 (getKeysList!397 (toList!4123 lt!1667666)))))

(declare-fun bm!312067 () Bool)

(declare-fun call!312072 () Bool)

(assert (=> bm!312067 (= call!312072 (contains!12969 e!2791029 key!3287))))

(declare-fun c!763358 () Bool)

(declare-fun c!763360 () Bool)

(assert (=> bm!312067 (= c!763358 c!763360)))

(declare-fun b!4481294 () Bool)

(declare-fun e!2791024 () Unit!89713)

(declare-fun e!2791028 () Unit!89713)

(assert (=> b!4481294 (= e!2791024 e!2791028)))

(declare-fun c!763359 () Bool)

(assert (=> b!4481294 (= c!763359 call!312072)))

(declare-fun b!4481295 () Bool)

(assert (=> b!4481295 false))

(declare-fun lt!1668026 () Unit!89713)

(declare-fun lt!1668032 () Unit!89713)

(assert (=> b!4481295 (= lt!1668026 lt!1668032)))

(assert (=> b!4481295 (containsKey!1549 (toList!4123 lt!1667666) key!3287)))

(assert (=> b!4481295 (= lt!1668032 (lemmaInGetKeysListThenContainsKey!396 (toList!4123 lt!1667666) key!3287))))

(declare-fun Unit!89769 () Unit!89713)

(assert (=> b!4481295 (= e!2791028 Unit!89769)))

(declare-fun b!4481296 () Bool)

(assert (=> b!4481296 (= e!2791029 (keys!17420 lt!1667666))))

(declare-fun b!4481297 () Bool)

(declare-fun e!2791027 () Bool)

(declare-fun e!2791026 () Bool)

(assert (=> b!4481297 (= e!2791027 e!2791026)))

(declare-fun res!1860578 () Bool)

(assert (=> b!4481297 (=> (not res!1860578) (not e!2791026))))

(assert (=> b!4481297 (= res!1860578 (isDefined!8257 (getValueByKey!957 (toList!4123 lt!1667666) key!3287)))))

(declare-fun b!4481298 () Bool)

(declare-fun lt!1668033 () Unit!89713)

(assert (=> b!4481298 (= e!2791024 lt!1668033)))

(declare-fun lt!1668031 () Unit!89713)

(assert (=> b!4481298 (= lt!1668031 (lemmaContainsKeyImpliesGetValueByKeyDefined!860 (toList!4123 lt!1667666) key!3287))))

(assert (=> b!4481298 (isDefined!8257 (getValueByKey!957 (toList!4123 lt!1667666) key!3287))))

(declare-fun lt!1668028 () Unit!89713)

(assert (=> b!4481298 (= lt!1668028 lt!1668031)))

(assert (=> b!4481298 (= lt!1668033 (lemmaInListThenGetKeysListContains!393 (toList!4123 lt!1667666) key!3287))))

(assert (=> b!4481298 call!312072))

(declare-fun d!1371655 () Bool)

(assert (=> d!1371655 e!2791027))

(declare-fun res!1860576 () Bool)

(assert (=> d!1371655 (=> res!1860576 e!2791027)))

(assert (=> d!1371655 (= res!1860576 e!2791025)))

(declare-fun res!1860577 () Bool)

(assert (=> d!1371655 (=> (not res!1860577) (not e!2791025))))

(declare-fun lt!1668030 () Bool)

(assert (=> d!1371655 (= res!1860577 (not lt!1668030))))

(declare-fun lt!1668029 () Bool)

(assert (=> d!1371655 (= lt!1668030 lt!1668029)))

(declare-fun lt!1668027 () Unit!89713)

(assert (=> d!1371655 (= lt!1668027 e!2791024)))

(assert (=> d!1371655 (= c!763360 lt!1668029)))

(assert (=> d!1371655 (= lt!1668029 (containsKey!1549 (toList!4123 lt!1667666) key!3287))))

(assert (=> d!1371655 (= (contains!12965 lt!1667666 key!3287) lt!1668030)))

(declare-fun b!4481299 () Bool)

(declare-fun Unit!89770 () Unit!89713)

(assert (=> b!4481299 (= e!2791028 Unit!89770)))

(declare-fun b!4481300 () Bool)

(assert (=> b!4481300 (= e!2791026 (contains!12969 (keys!17420 lt!1667666) key!3287))))

(assert (= (and d!1371655 c!763360) b!4481298))

(assert (= (and d!1371655 (not c!763360)) b!4481294))

(assert (= (and b!4481294 c!763359) b!4481295))

(assert (= (and b!4481294 (not c!763359)) b!4481299))

(assert (= (or b!4481298 b!4481294) bm!312067))

(assert (= (and bm!312067 c!763358) b!4481293))

(assert (= (and bm!312067 (not c!763358)) b!4481296))

(assert (= (and d!1371655 res!1860577) b!4481292))

(assert (= (and d!1371655 (not res!1860576)) b!4481297))

(assert (= (and b!4481297 res!1860578) b!4481300))

(declare-fun m!5201041 () Bool)

(assert (=> b!4481295 m!5201041))

(declare-fun m!5201043 () Bool)

(assert (=> b!4481295 m!5201043))

(declare-fun m!5201045 () Bool)

(assert (=> b!4481300 m!5201045))

(assert (=> b!4481300 m!5201045))

(declare-fun m!5201047 () Bool)

(assert (=> b!4481300 m!5201047))

(assert (=> d!1371655 m!5201041))

(assert (=> b!4481296 m!5201045))

(assert (=> b!4481292 m!5201045))

(assert (=> b!4481292 m!5201045))

(assert (=> b!4481292 m!5201047))

(declare-fun m!5201049 () Bool)

(assert (=> b!4481297 m!5201049))

(assert (=> b!4481297 m!5201049))

(declare-fun m!5201051 () Bool)

(assert (=> b!4481297 m!5201051))

(declare-fun m!5201053 () Bool)

(assert (=> b!4481293 m!5201053))

(declare-fun m!5201055 () Bool)

(assert (=> bm!312067 m!5201055))

(declare-fun m!5201057 () Bool)

(assert (=> b!4481298 m!5201057))

(assert (=> b!4481298 m!5201049))

(assert (=> b!4481298 m!5201049))

(assert (=> b!4481298 m!5201051))

(declare-fun m!5201059 () Bool)

(assert (=> b!4481298 m!5201059))

(assert (=> b!4480991 d!1371655))

(declare-fun bs!824961 () Bool)

(declare-fun d!1371657 () Bool)

(assert (= bs!824961 (and d!1371657 d!1371569)))

(declare-fun lambda!165465 () Int)

(assert (=> bs!824961 (= lambda!165465 lambda!165441)))

(declare-fun bs!824962 () Bool)

(assert (= bs!824962 (and d!1371657 start!440760)))

(assert (=> bs!824962 (= lambda!165465 lambda!165343)))

(declare-fun bs!824963 () Bool)

(assert (= bs!824963 (and d!1371657 d!1371597)))

(assert (=> bs!824963 (= lambda!165465 lambda!165452)))

(declare-fun bs!824964 () Bool)

(assert (= bs!824964 (and d!1371657 d!1371525)))

(assert (=> bs!824964 (= lambda!165465 lambda!165356)))

(declare-fun bs!824965 () Bool)

(assert (= bs!824965 (and d!1371657 d!1371649)))

(assert (=> bs!824965 (not (= lambda!165465 lambda!165464))))

(declare-fun bs!824966 () Bool)

(assert (= bs!824966 (and d!1371657 d!1371589)))

(assert (=> bs!824966 (= lambda!165465 lambda!165444)))

(declare-fun bs!824967 () Bool)

(assert (= bs!824967 (and d!1371657 d!1371639)))

(assert (=> bs!824967 (= lambda!165465 lambda!165458)))

(declare-fun bs!824968 () Bool)

(assert (= bs!824968 (and d!1371657 d!1371579)))

(assert (=> bs!824968 (= lambda!165465 lambda!165442)))

(declare-fun lt!1668034 () ListMap!3385)

(assert (=> d!1371657 (invariantList!949 (toList!4123 lt!1668034))))

(declare-fun e!2791030 () ListMap!3385)

(assert (=> d!1371657 (= lt!1668034 e!2791030)))

(declare-fun c!763361 () Bool)

(assert (=> d!1371657 (= c!763361 ((_ is Cons!50375) (toList!4124 lm!1477)))))

(assert (=> d!1371657 (forall!10052 (toList!4124 lm!1477) lambda!165465)))

(assert (=> d!1371657 (= (extractMap!1114 (toList!4124 lm!1477)) lt!1668034)))

(declare-fun b!4481301 () Bool)

(assert (=> b!4481301 (= e!2791030 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lm!1477))) (extractMap!1114 (t!357453 (toList!4124 lm!1477)))))))

(declare-fun b!4481302 () Bool)

(assert (=> b!4481302 (= e!2791030 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371657 c!763361) b!4481301))

(assert (= (and d!1371657 (not c!763361)) b!4481302))

(declare-fun m!5201061 () Bool)

(assert (=> d!1371657 m!5201061))

(declare-fun m!5201063 () Bool)

(assert (=> d!1371657 m!5201063))

(assert (=> b!4481301 m!5200367))

(assert (=> b!4481301 m!5200367))

(declare-fun m!5201065 () Bool)

(assert (=> b!4481301 m!5201065))

(assert (=> b!4480991 d!1371657))

(declare-fun bs!824969 () Bool)

(declare-fun d!1371659 () Bool)

(assert (= bs!824969 (and d!1371659 d!1371569)))

(declare-fun lambda!165468 () Int)

(assert (=> bs!824969 (= lambda!165468 lambda!165441)))

(declare-fun bs!824970 () Bool)

(assert (= bs!824970 (and d!1371659 start!440760)))

(assert (=> bs!824970 (= lambda!165468 lambda!165343)))

(declare-fun bs!824971 () Bool)

(assert (= bs!824971 (and d!1371659 d!1371597)))

(assert (=> bs!824971 (= lambda!165468 lambda!165452)))

(declare-fun bs!824972 () Bool)

(assert (= bs!824972 (and d!1371659 d!1371525)))

(assert (=> bs!824972 (= lambda!165468 lambda!165356)))

(declare-fun bs!824973 () Bool)

(assert (= bs!824973 (and d!1371659 d!1371649)))

(assert (=> bs!824973 (not (= lambda!165468 lambda!165464))))

(declare-fun bs!824974 () Bool)

(assert (= bs!824974 (and d!1371659 d!1371589)))

(assert (=> bs!824974 (= lambda!165468 lambda!165444)))

(declare-fun bs!824975 () Bool)

(assert (= bs!824975 (and d!1371659 d!1371657)))

(assert (=> bs!824975 (= lambda!165468 lambda!165465)))

(declare-fun bs!824976 () Bool)

(assert (= bs!824976 (and d!1371659 d!1371639)))

(assert (=> bs!824976 (= lambda!165468 lambda!165458)))

(declare-fun bs!824977 () Bool)

(assert (= bs!824977 (and d!1371659 d!1371579)))

(assert (=> bs!824977 (= lambda!165468 lambda!165442)))

(assert (=> d!1371659 (contains!12965 (extractMap!1114 (toList!4124 (ListLongMap!2756 lt!1667679))) key!3287)))

(declare-fun lt!1668037 () Unit!89713)

(declare-fun choose!28768 (ListLongMap!2755 K!11785 Hashable!5453) Unit!89713)

(assert (=> d!1371659 (= lt!1668037 (choose!28768 (ListLongMap!2756 lt!1667679) key!3287 hashF!1107))))

(assert (=> d!1371659 (forall!10052 (toList!4124 (ListLongMap!2756 lt!1667679)) lambda!165468)))

(assert (=> d!1371659 (= (lemmaListContainsThenExtractedMapContains!54 (ListLongMap!2756 lt!1667679) key!3287 hashF!1107) lt!1668037)))

(declare-fun bs!824978 () Bool)

(assert (= bs!824978 d!1371659))

(declare-fun m!5201067 () Bool)

(assert (=> bs!824978 m!5201067))

(assert (=> bs!824978 m!5201067))

(declare-fun m!5201069 () Bool)

(assert (=> bs!824978 m!5201069))

(declare-fun m!5201071 () Bool)

(assert (=> bs!824978 m!5201071))

(declare-fun m!5201073 () Bool)

(assert (=> bs!824978 m!5201073))

(assert (=> b!4480994 d!1371659))

(declare-fun bs!824979 () Bool)

(declare-fun d!1371661 () Bool)

(assert (= bs!824979 (and d!1371661 d!1371569)))

(declare-fun lambda!165469 () Int)

(assert (=> bs!824979 (= lambda!165469 lambda!165441)))

(declare-fun bs!824980 () Bool)

(assert (= bs!824980 (and d!1371661 start!440760)))

(assert (=> bs!824980 (= lambda!165469 lambda!165343)))

(declare-fun bs!824981 () Bool)

(assert (= bs!824981 (and d!1371661 d!1371597)))

(assert (=> bs!824981 (= lambda!165469 lambda!165452)))

(declare-fun bs!824982 () Bool)

(assert (= bs!824982 (and d!1371661 d!1371525)))

(assert (=> bs!824982 (= lambda!165469 lambda!165356)))

(declare-fun bs!824983 () Bool)

(assert (= bs!824983 (and d!1371661 d!1371649)))

(assert (=> bs!824983 (not (= lambda!165469 lambda!165464))))

(declare-fun bs!824984 () Bool)

(assert (= bs!824984 (and d!1371661 d!1371659)))

(assert (=> bs!824984 (= lambda!165469 lambda!165468)))

(declare-fun bs!824985 () Bool)

(assert (= bs!824985 (and d!1371661 d!1371589)))

(assert (=> bs!824985 (= lambda!165469 lambda!165444)))

(declare-fun bs!824986 () Bool)

(assert (= bs!824986 (and d!1371661 d!1371657)))

(assert (=> bs!824986 (= lambda!165469 lambda!165465)))

(declare-fun bs!824987 () Bool)

(assert (= bs!824987 (and d!1371661 d!1371639)))

(assert (=> bs!824987 (= lambda!165469 lambda!165458)))

(declare-fun bs!824988 () Bool)

(assert (= bs!824988 (and d!1371661 d!1371579)))

(assert (=> bs!824988 (= lambda!165469 lambda!165442)))

(declare-fun lt!1668038 () ListMap!3385)

(assert (=> d!1371661 (invariantList!949 (toList!4123 lt!1668038))))

(declare-fun e!2791031 () ListMap!3385)

(assert (=> d!1371661 (= lt!1668038 e!2791031)))

(declare-fun c!763362 () Bool)

(assert (=> d!1371661 (= c!763362 ((_ is Cons!50375) (Cons!50375 lt!1667665 Nil!50375)))))

(assert (=> d!1371661 (forall!10052 (Cons!50375 lt!1667665 Nil!50375) lambda!165469)))

(assert (=> d!1371661 (= (extractMap!1114 (Cons!50375 lt!1667665 Nil!50375)) lt!1668038)))

(declare-fun b!4481303 () Bool)

(assert (=> b!4481303 (= e!2791031 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (Cons!50375 lt!1667665 Nil!50375))) (extractMap!1114 (t!357453 (Cons!50375 lt!1667665 Nil!50375)))))))

(declare-fun b!4481304 () Bool)

(assert (=> b!4481304 (= e!2791031 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371661 c!763362) b!4481303))

(assert (= (and d!1371661 (not c!763362)) b!4481304))

(declare-fun m!5201075 () Bool)

(assert (=> d!1371661 m!5201075))

(declare-fun m!5201077 () Bool)

(assert (=> d!1371661 m!5201077))

(declare-fun m!5201079 () Bool)

(assert (=> b!4481303 m!5201079))

(assert (=> b!4481303 m!5201079))

(declare-fun m!5201081 () Bool)

(assert (=> b!4481303 m!5201081))

(assert (=> b!4480994 d!1371661))

(declare-fun bs!824989 () Bool)

(declare-fun d!1371663 () Bool)

(assert (= bs!824989 (and d!1371663 d!1371569)))

(declare-fun lambda!165470 () Int)

(assert (=> bs!824989 (= lambda!165470 lambda!165441)))

(declare-fun bs!824990 () Bool)

(assert (= bs!824990 (and d!1371663 d!1371661)))

(assert (=> bs!824990 (= lambda!165470 lambda!165469)))

(declare-fun bs!824991 () Bool)

(assert (= bs!824991 (and d!1371663 start!440760)))

(assert (=> bs!824991 (= lambda!165470 lambda!165343)))

(declare-fun bs!824992 () Bool)

(assert (= bs!824992 (and d!1371663 d!1371597)))

(assert (=> bs!824992 (= lambda!165470 lambda!165452)))

(declare-fun bs!824993 () Bool)

(assert (= bs!824993 (and d!1371663 d!1371525)))

(assert (=> bs!824993 (= lambda!165470 lambda!165356)))

(declare-fun bs!824994 () Bool)

(assert (= bs!824994 (and d!1371663 d!1371649)))

(assert (=> bs!824994 (not (= lambda!165470 lambda!165464))))

(declare-fun bs!824995 () Bool)

(assert (= bs!824995 (and d!1371663 d!1371659)))

(assert (=> bs!824995 (= lambda!165470 lambda!165468)))

(declare-fun bs!824996 () Bool)

(assert (= bs!824996 (and d!1371663 d!1371589)))

(assert (=> bs!824996 (= lambda!165470 lambda!165444)))

(declare-fun bs!824997 () Bool)

(assert (= bs!824997 (and d!1371663 d!1371657)))

(assert (=> bs!824997 (= lambda!165470 lambda!165465)))

(declare-fun bs!824998 () Bool)

(assert (= bs!824998 (and d!1371663 d!1371639)))

(assert (=> bs!824998 (= lambda!165470 lambda!165458)))

(declare-fun bs!824999 () Bool)

(assert (= bs!824999 (and d!1371663 d!1371579)))

(assert (=> bs!824999 (= lambda!165470 lambda!165442)))

(declare-fun lt!1668039 () ListMap!3385)

(assert (=> d!1371663 (invariantList!949 (toList!4123 lt!1668039))))

(declare-fun e!2791032 () ListMap!3385)

(assert (=> d!1371663 (= lt!1668039 e!2791032)))

(declare-fun c!763363 () Bool)

(assert (=> d!1371663 (= c!763363 ((_ is Cons!50375) lt!1667679))))

(assert (=> d!1371663 (forall!10052 lt!1667679 lambda!165470)))

(assert (=> d!1371663 (= (extractMap!1114 lt!1667679) lt!1668039)))

(declare-fun b!4481305 () Bool)

(assert (=> b!4481305 (= e!2791032 (addToMapMapFromBucket!613 (_2!28628 (h!56160 lt!1667679)) (extractMap!1114 (t!357453 lt!1667679))))))

(declare-fun b!4481306 () Bool)

(assert (=> b!4481306 (= e!2791032 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371663 c!763363) b!4481305))

(assert (= (and d!1371663 (not c!763363)) b!4481306))

(declare-fun m!5201083 () Bool)

(assert (=> d!1371663 m!5201083))

(declare-fun m!5201085 () Bool)

(assert (=> d!1371663 m!5201085))

(declare-fun m!5201087 () Bool)

(assert (=> b!4481305 m!5201087))

(assert (=> b!4481305 m!5201087))

(declare-fun m!5201089 () Bool)

(assert (=> b!4481305 m!5201089))

(assert (=> b!4480994 d!1371663))

(declare-fun b!4481307 () Bool)

(declare-fun e!2791034 () Bool)

(assert (=> b!4481307 (= e!2791034 (not (contains!12969 (keys!17420 (extractMap!1114 lt!1667679)) key!3287)))))

(declare-fun b!4481308 () Bool)

(declare-fun e!2791038 () List!50501)

(assert (=> b!4481308 (= e!2791038 (getKeysList!397 (toList!4123 (extractMap!1114 lt!1667679))))))

(declare-fun bm!312068 () Bool)

(declare-fun call!312073 () Bool)

(assert (=> bm!312068 (= call!312073 (contains!12969 e!2791038 key!3287))))

(declare-fun c!763364 () Bool)

(declare-fun c!763366 () Bool)

(assert (=> bm!312068 (= c!763364 c!763366)))

(declare-fun b!4481309 () Bool)

(declare-fun e!2791033 () Unit!89713)

(declare-fun e!2791037 () Unit!89713)

(assert (=> b!4481309 (= e!2791033 e!2791037)))

(declare-fun c!763365 () Bool)

(assert (=> b!4481309 (= c!763365 call!312073)))

(declare-fun b!4481310 () Bool)

(assert (=> b!4481310 false))

(declare-fun lt!1668040 () Unit!89713)

(declare-fun lt!1668046 () Unit!89713)

(assert (=> b!4481310 (= lt!1668040 lt!1668046)))

(assert (=> b!4481310 (containsKey!1549 (toList!4123 (extractMap!1114 lt!1667679)) key!3287)))

(assert (=> b!4481310 (= lt!1668046 (lemmaInGetKeysListThenContainsKey!396 (toList!4123 (extractMap!1114 lt!1667679)) key!3287))))

(declare-fun Unit!89773 () Unit!89713)

(assert (=> b!4481310 (= e!2791037 Unit!89773)))

(declare-fun b!4481311 () Bool)

(assert (=> b!4481311 (= e!2791038 (keys!17420 (extractMap!1114 lt!1667679)))))

(declare-fun b!4481312 () Bool)

(declare-fun e!2791036 () Bool)

(declare-fun e!2791035 () Bool)

(assert (=> b!4481312 (= e!2791036 e!2791035)))

(declare-fun res!1860581 () Bool)

(assert (=> b!4481312 (=> (not res!1860581) (not e!2791035))))

(assert (=> b!4481312 (= res!1860581 (isDefined!8257 (getValueByKey!957 (toList!4123 (extractMap!1114 lt!1667679)) key!3287)))))

(declare-fun b!4481313 () Bool)

(declare-fun lt!1668047 () Unit!89713)

(assert (=> b!4481313 (= e!2791033 lt!1668047)))

(declare-fun lt!1668045 () Unit!89713)

(assert (=> b!4481313 (= lt!1668045 (lemmaContainsKeyImpliesGetValueByKeyDefined!860 (toList!4123 (extractMap!1114 lt!1667679)) key!3287))))

(assert (=> b!4481313 (isDefined!8257 (getValueByKey!957 (toList!4123 (extractMap!1114 lt!1667679)) key!3287))))

(declare-fun lt!1668042 () Unit!89713)

(assert (=> b!4481313 (= lt!1668042 lt!1668045)))

(assert (=> b!4481313 (= lt!1668047 (lemmaInListThenGetKeysListContains!393 (toList!4123 (extractMap!1114 lt!1667679)) key!3287))))

(assert (=> b!4481313 call!312073))

(declare-fun d!1371665 () Bool)

(assert (=> d!1371665 e!2791036))

(declare-fun res!1860579 () Bool)

(assert (=> d!1371665 (=> res!1860579 e!2791036)))

(assert (=> d!1371665 (= res!1860579 e!2791034)))

(declare-fun res!1860580 () Bool)

(assert (=> d!1371665 (=> (not res!1860580) (not e!2791034))))

(declare-fun lt!1668044 () Bool)

(assert (=> d!1371665 (= res!1860580 (not lt!1668044))))

(declare-fun lt!1668043 () Bool)

(assert (=> d!1371665 (= lt!1668044 lt!1668043)))

(declare-fun lt!1668041 () Unit!89713)

(assert (=> d!1371665 (= lt!1668041 e!2791033)))

(assert (=> d!1371665 (= c!763366 lt!1668043)))

(assert (=> d!1371665 (= lt!1668043 (containsKey!1549 (toList!4123 (extractMap!1114 lt!1667679)) key!3287))))

(assert (=> d!1371665 (= (contains!12965 (extractMap!1114 lt!1667679) key!3287) lt!1668044)))

(declare-fun b!4481314 () Bool)

(declare-fun Unit!89775 () Unit!89713)

(assert (=> b!4481314 (= e!2791037 Unit!89775)))

(declare-fun b!4481315 () Bool)

(assert (=> b!4481315 (= e!2791035 (contains!12969 (keys!17420 (extractMap!1114 lt!1667679)) key!3287))))

(assert (= (and d!1371665 c!763366) b!4481313))

(assert (= (and d!1371665 (not c!763366)) b!4481309))

(assert (= (and b!4481309 c!763365) b!4481310))

(assert (= (and b!4481309 (not c!763365)) b!4481314))

(assert (= (or b!4481313 b!4481309) bm!312068))

(assert (= (and bm!312068 c!763364) b!4481308))

(assert (= (and bm!312068 (not c!763364)) b!4481311))

(assert (= (and d!1371665 res!1860580) b!4481307))

(assert (= (and d!1371665 (not res!1860579)) b!4481312))

(assert (= (and b!4481312 res!1860581) b!4481315))

(declare-fun m!5201091 () Bool)

(assert (=> b!4481310 m!5201091))

(declare-fun m!5201093 () Bool)

(assert (=> b!4481310 m!5201093))

(assert (=> b!4481315 m!5200391))

(declare-fun m!5201095 () Bool)

(assert (=> b!4481315 m!5201095))

(assert (=> b!4481315 m!5201095))

(declare-fun m!5201097 () Bool)

(assert (=> b!4481315 m!5201097))

(assert (=> d!1371665 m!5201091))

(assert (=> b!4481311 m!5200391))

(assert (=> b!4481311 m!5201095))

(assert (=> b!4481307 m!5200391))

(assert (=> b!4481307 m!5201095))

(assert (=> b!4481307 m!5201095))

(assert (=> b!4481307 m!5201097))

(declare-fun m!5201099 () Bool)

(assert (=> b!4481312 m!5201099))

(assert (=> b!4481312 m!5201099))

(declare-fun m!5201101 () Bool)

(assert (=> b!4481312 m!5201101))

(declare-fun m!5201103 () Bool)

(assert (=> b!4481308 m!5201103))

(declare-fun m!5201105 () Bool)

(assert (=> bm!312068 m!5201105))

(declare-fun m!5201107 () Bool)

(assert (=> b!4481313 m!5201107))

(assert (=> b!4481313 m!5201099))

(assert (=> b!4481313 m!5201099))

(assert (=> b!4481313 m!5201101))

(declare-fun m!5201109 () Bool)

(assert (=> b!4481313 m!5201109))

(assert (=> b!4480994 d!1371665))

(declare-fun bs!825000 () Bool)

(declare-fun d!1371667 () Bool)

(assert (= bs!825000 (and d!1371667 d!1371569)))

(declare-fun lambda!165471 () Int)

(assert (=> bs!825000 (= lambda!165471 lambda!165441)))

(declare-fun bs!825001 () Bool)

(assert (= bs!825001 (and d!1371667 d!1371661)))

(assert (=> bs!825001 (= lambda!165471 lambda!165469)))

(declare-fun bs!825002 () Bool)

(assert (= bs!825002 (and d!1371667 d!1371597)))

(assert (=> bs!825002 (= lambda!165471 lambda!165452)))

(declare-fun bs!825003 () Bool)

(assert (= bs!825003 (and d!1371667 d!1371525)))

(assert (=> bs!825003 (= lambda!165471 lambda!165356)))

(declare-fun bs!825004 () Bool)

(assert (= bs!825004 (and d!1371667 d!1371649)))

(assert (=> bs!825004 (not (= lambda!165471 lambda!165464))))

(declare-fun bs!825005 () Bool)

(assert (= bs!825005 (and d!1371667 d!1371659)))

(assert (=> bs!825005 (= lambda!165471 lambda!165468)))

(declare-fun bs!825006 () Bool)

(assert (= bs!825006 (and d!1371667 d!1371589)))

(assert (=> bs!825006 (= lambda!165471 lambda!165444)))

(declare-fun bs!825007 () Bool)

(assert (= bs!825007 (and d!1371667 d!1371657)))

(assert (=> bs!825007 (= lambda!165471 lambda!165465)))

(declare-fun bs!825008 () Bool)

(assert (= bs!825008 (and d!1371667 d!1371639)))

(assert (=> bs!825008 (= lambda!165471 lambda!165458)))

(declare-fun bs!825009 () Bool)

(assert (= bs!825009 (and d!1371667 d!1371579)))

(assert (=> bs!825009 (= lambda!165471 lambda!165442)))

(declare-fun bs!825010 () Bool)

(assert (= bs!825010 (and d!1371667 d!1371663)))

(assert (=> bs!825010 (= lambda!165471 lambda!165470)))

(declare-fun bs!825011 () Bool)

(assert (= bs!825011 (and d!1371667 start!440760)))

(assert (=> bs!825011 (= lambda!165471 lambda!165343)))

(declare-fun lt!1668048 () ListMap!3385)

(assert (=> d!1371667 (invariantList!949 (toList!4123 lt!1668048))))

(declare-fun e!2791039 () ListMap!3385)

(assert (=> d!1371667 (= lt!1668048 e!2791039)))

(declare-fun c!763367 () Bool)

(assert (=> d!1371667 (= c!763367 ((_ is Cons!50375) (Cons!50375 lt!1667664 Nil!50375)))))

(assert (=> d!1371667 (forall!10052 (Cons!50375 lt!1667664 Nil!50375) lambda!165471)))

(assert (=> d!1371667 (= (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375)) lt!1668048)))

(declare-fun b!4481316 () Bool)

(assert (=> b!4481316 (= e!2791039 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (Cons!50375 lt!1667664 Nil!50375))) (extractMap!1114 (t!357453 (Cons!50375 lt!1667664 Nil!50375)))))))

(declare-fun b!4481317 () Bool)

(assert (=> b!4481317 (= e!2791039 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371667 c!763367) b!4481316))

(assert (= (and d!1371667 (not c!763367)) b!4481317))

(declare-fun m!5201111 () Bool)

(assert (=> d!1371667 m!5201111))

(declare-fun m!5201113 () Bool)

(assert (=> d!1371667 m!5201113))

(declare-fun m!5201115 () Bool)

(assert (=> b!4481316 m!5201115))

(assert (=> b!4481316 m!5201115))

(declare-fun m!5201117 () Bool)

(assert (=> b!4481316 m!5201117))

(assert (=> b!4480994 d!1371667))

(declare-fun d!1371669 () Bool)

(assert (=> d!1371669 (eq!551 (extractMap!1114 (Cons!50375 (tuple2!50669 hash!344 newBucket!178) Nil!50375)) (-!320 (extractMap!1114 (Cons!50375 (tuple2!50669 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477)))) Nil!50375)) key!3287))))

(declare-fun lt!1668051 () Unit!89713)

(declare-fun choose!28769 ((_ BitVec 64) List!50498 List!50498 K!11785 Hashable!5453) Unit!89713)

(assert (=> d!1371669 (= lt!1668051 (choose!28769 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371669 (noDuplicateKeys!1058 (_2!28628 (h!56160 (toList!4124 lm!1477))))))

(assert (=> d!1371669 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!50 hash!344 (_2!28628 (h!56160 (toList!4124 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1668051)))

(declare-fun bs!825012 () Bool)

(assert (= bs!825012 d!1371669))

(declare-fun m!5201119 () Bool)

(assert (=> bs!825012 m!5201119))

(declare-fun m!5201121 () Bool)

(assert (=> bs!825012 m!5201121))

(assert (=> bs!825012 m!5200983))

(declare-fun m!5201123 () Bool)

(assert (=> bs!825012 m!5201123))

(assert (=> bs!825012 m!5201121))

(declare-fun m!5201125 () Bool)

(assert (=> bs!825012 m!5201125))

(assert (=> bs!825012 m!5201119))

(assert (=> bs!825012 m!5201125))

(declare-fun m!5201127 () Bool)

(assert (=> bs!825012 m!5201127))

(assert (=> b!4480994 d!1371669))

(declare-fun d!1371671 () Bool)

(assert (=> d!1371671 (= (tail!7568 (toList!4124 lt!1667671)) (t!357453 (toList!4124 lt!1667671)))))

(assert (=> b!4480994 d!1371671))

(declare-fun d!1371673 () Bool)

(declare-fun e!2791040 () Bool)

(assert (=> d!1371673 e!2791040))

(declare-fun res!1860582 () Bool)

(assert (=> d!1371673 (=> (not res!1860582) (not e!2791040))))

(declare-fun lt!1668052 () ListMap!3385)

(assert (=> d!1371673 (= res!1860582 (not (contains!12965 lt!1668052 key!3287)))))

(assert (=> d!1371673 (= lt!1668052 (ListMap!3386 (removePresrvNoDuplicatedKeys!85 (toList!4123 (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375))) key!3287)))))

(assert (=> d!1371673 (= (-!320 (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375)) key!3287) lt!1668052)))

(declare-fun b!4481318 () Bool)

(assert (=> b!4481318 (= e!2791040 (= ((_ map and) (content!8167 (keys!17420 (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375)))) ((_ map not) (store ((as const (Array K!11785 Bool)) false) key!3287 true))) (content!8167 (keys!17420 lt!1668052))))))

(assert (= (and d!1371673 res!1860582) b!4481318))

(declare-fun m!5201129 () Bool)

(assert (=> d!1371673 m!5201129))

(declare-fun m!5201131 () Bool)

(assert (=> d!1371673 m!5201131))

(declare-fun m!5201133 () Bool)

(assert (=> b!4481318 m!5201133))

(declare-fun m!5201135 () Bool)

(assert (=> b!4481318 m!5201135))

(declare-fun m!5201137 () Bool)

(assert (=> b!4481318 m!5201137))

(declare-fun m!5201139 () Bool)

(assert (=> b!4481318 m!5201139))

(assert (=> b!4481318 m!5200387))

(assert (=> b!4481318 m!5201137))

(assert (=> b!4481318 m!5201133))

(assert (=> b!4481318 m!5200779))

(assert (=> b!4480994 d!1371673))

(declare-fun d!1371675 () Bool)

(assert (=> d!1371675 (= (eq!551 (extractMap!1114 (Cons!50375 lt!1667665 Nil!50375)) (-!320 (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375)) key!3287)) (= (content!8166 (toList!4123 (extractMap!1114 (Cons!50375 lt!1667665 Nil!50375)))) (content!8166 (toList!4123 (-!320 (extractMap!1114 (Cons!50375 lt!1667664 Nil!50375)) key!3287)))))))

(declare-fun bs!825013 () Bool)

(assert (= bs!825013 d!1371675))

(declare-fun m!5201141 () Bool)

(assert (=> bs!825013 m!5201141))

(declare-fun m!5201143 () Bool)

(assert (=> bs!825013 m!5201143))

(assert (=> b!4480994 d!1371675))

(declare-fun d!1371677 () Bool)

(declare-fun e!2791041 () Bool)

(assert (=> d!1371677 e!2791041))

(declare-fun res!1860584 () Bool)

(assert (=> d!1371677 (=> (not res!1860584) (not e!2791041))))

(declare-fun lt!1668056 () ListLongMap!2755)

(assert (=> d!1371677 (= res!1860584 (contains!12966 lt!1668056 (_1!28628 lt!1667665)))))

(declare-fun lt!1668054 () List!50499)

(assert (=> d!1371677 (= lt!1668056 (ListLongMap!2756 lt!1668054))))

(declare-fun lt!1668053 () Unit!89713)

(declare-fun lt!1668055 () Unit!89713)

(assert (=> d!1371677 (= lt!1668053 lt!1668055)))

(assert (=> d!1371677 (= (getValueByKey!956 lt!1668054 (_1!28628 lt!1667665)) (Some!10969 (_2!28628 lt!1667665)))))

(assert (=> d!1371677 (= lt!1668055 (lemmaContainsTupThenGetReturnValue!608 lt!1668054 (_1!28628 lt!1667665) (_2!28628 lt!1667665)))))

(assert (=> d!1371677 (= lt!1668054 (insertStrictlySorted!352 (toList!4124 lm!1477) (_1!28628 lt!1667665) (_2!28628 lt!1667665)))))

(assert (=> d!1371677 (= (+!1414 lm!1477 lt!1667665) lt!1668056)))

(declare-fun b!4481319 () Bool)

(declare-fun res!1860583 () Bool)

(assert (=> b!4481319 (=> (not res!1860583) (not e!2791041))))

(assert (=> b!4481319 (= res!1860583 (= (getValueByKey!956 (toList!4124 lt!1668056) (_1!28628 lt!1667665)) (Some!10969 (_2!28628 lt!1667665))))))

(declare-fun b!4481320 () Bool)

(assert (=> b!4481320 (= e!2791041 (contains!12967 (toList!4124 lt!1668056) lt!1667665))))

(assert (= (and d!1371677 res!1860584) b!4481319))

(assert (= (and b!4481319 res!1860583) b!4481320))

(declare-fun m!5201145 () Bool)

(assert (=> d!1371677 m!5201145))

(declare-fun m!5201147 () Bool)

(assert (=> d!1371677 m!5201147))

(declare-fun m!5201149 () Bool)

(assert (=> d!1371677 m!5201149))

(declare-fun m!5201151 () Bool)

(assert (=> d!1371677 m!5201151))

(declare-fun m!5201153 () Bool)

(assert (=> b!4481319 m!5201153))

(declare-fun m!5201155 () Bool)

(assert (=> b!4481320 m!5201155))

(assert (=> b!4480994 d!1371677))

(declare-fun d!1371679 () Bool)

(declare-fun res!1860589 () Bool)

(declare-fun e!2791046 () Bool)

(assert (=> d!1371679 (=> res!1860589 e!2791046)))

(assert (=> d!1371679 (= res!1860589 ((_ is Nil!50375) (toList!4124 lt!1667671)))))

(assert (=> d!1371679 (= (forall!10052 (toList!4124 lt!1667671) lambda!165343) e!2791046)))

(declare-fun b!4481325 () Bool)

(declare-fun e!2791047 () Bool)

(assert (=> b!4481325 (= e!2791046 e!2791047)))

(declare-fun res!1860590 () Bool)

(assert (=> b!4481325 (=> (not res!1860590) (not e!2791047))))

(declare-fun dynLambda!21046 (Int tuple2!50668) Bool)

(assert (=> b!4481325 (= res!1860590 (dynLambda!21046 lambda!165343 (h!56160 (toList!4124 lt!1667671))))))

(declare-fun b!4481326 () Bool)

(assert (=> b!4481326 (= e!2791047 (forall!10052 (t!357453 (toList!4124 lt!1667671)) lambda!165343))))

(assert (= (and d!1371679 (not res!1860589)) b!4481325))

(assert (= (and b!4481325 res!1860590) b!4481326))

(declare-fun b_lambda!150317 () Bool)

(assert (=> (not b_lambda!150317) (not b!4481325)))

(declare-fun m!5201157 () Bool)

(assert (=> b!4481325 m!5201157))

(declare-fun m!5201159 () Bool)

(assert (=> b!4481326 m!5201159))

(assert (=> b!4480995 d!1371679))

(declare-fun bs!825014 () Bool)

(declare-fun d!1371681 () Bool)

(assert (= bs!825014 (and d!1371681 d!1371569)))

(declare-fun lambda!165472 () Int)

(assert (=> bs!825014 (= lambda!165472 lambda!165441)))

(declare-fun bs!825015 () Bool)

(assert (= bs!825015 (and d!1371681 d!1371661)))

(assert (=> bs!825015 (= lambda!165472 lambda!165469)))

(declare-fun bs!825016 () Bool)

(assert (= bs!825016 (and d!1371681 d!1371597)))

(assert (=> bs!825016 (= lambda!165472 lambda!165452)))

(declare-fun bs!825017 () Bool)

(assert (= bs!825017 (and d!1371681 d!1371667)))

(assert (=> bs!825017 (= lambda!165472 lambda!165471)))

(declare-fun bs!825018 () Bool)

(assert (= bs!825018 (and d!1371681 d!1371525)))

(assert (=> bs!825018 (= lambda!165472 lambda!165356)))

(declare-fun bs!825019 () Bool)

(assert (= bs!825019 (and d!1371681 d!1371649)))

(assert (=> bs!825019 (not (= lambda!165472 lambda!165464))))

(declare-fun bs!825020 () Bool)

(assert (= bs!825020 (and d!1371681 d!1371659)))

(assert (=> bs!825020 (= lambda!165472 lambda!165468)))

(declare-fun bs!825021 () Bool)

(assert (= bs!825021 (and d!1371681 d!1371589)))

(assert (=> bs!825021 (= lambda!165472 lambda!165444)))

(declare-fun bs!825022 () Bool)

(assert (= bs!825022 (and d!1371681 d!1371657)))

(assert (=> bs!825022 (= lambda!165472 lambda!165465)))

(declare-fun bs!825023 () Bool)

(assert (= bs!825023 (and d!1371681 d!1371639)))

(assert (=> bs!825023 (= lambda!165472 lambda!165458)))

(declare-fun bs!825024 () Bool)

(assert (= bs!825024 (and d!1371681 d!1371579)))

(assert (=> bs!825024 (= lambda!165472 lambda!165442)))

(declare-fun bs!825025 () Bool)

(assert (= bs!825025 (and d!1371681 d!1371663)))

(assert (=> bs!825025 (= lambda!165472 lambda!165470)))

(declare-fun bs!825026 () Bool)

(assert (= bs!825026 (and d!1371681 start!440760)))

(assert (=> bs!825026 (= lambda!165472 lambda!165343)))

(declare-fun lt!1668057 () ListMap!3385)

(assert (=> d!1371681 (invariantList!949 (toList!4123 lt!1668057))))

(declare-fun e!2791048 () ListMap!3385)

(assert (=> d!1371681 (= lt!1668057 e!2791048)))

(declare-fun c!763368 () Bool)

(assert (=> d!1371681 (= c!763368 ((_ is Cons!50375) (t!357453 (toList!4124 lm!1477))))))

(assert (=> d!1371681 (forall!10052 (t!357453 (toList!4124 lm!1477)) lambda!165472)))

(assert (=> d!1371681 (= (extractMap!1114 (t!357453 (toList!4124 lm!1477))) lt!1668057)))

(declare-fun b!4481327 () Bool)

(assert (=> b!4481327 (= e!2791048 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (t!357453 (toList!4124 lm!1477)))) (extractMap!1114 (t!357453 (t!357453 (toList!4124 lm!1477))))))))

(declare-fun b!4481328 () Bool)

(assert (=> b!4481328 (= e!2791048 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371681 c!763368) b!4481327))

(assert (= (and d!1371681 (not c!763368)) b!4481328))

(declare-fun m!5201161 () Bool)

(assert (=> d!1371681 m!5201161))

(declare-fun m!5201163 () Bool)

(assert (=> d!1371681 m!5201163))

(declare-fun m!5201165 () Bool)

(assert (=> b!4481327 m!5201165))

(assert (=> b!4481327 m!5201165))

(declare-fun m!5201167 () Bool)

(assert (=> b!4481327 m!5201167))

(assert (=> b!4480984 d!1371681))

(declare-fun bs!825027 () Bool)

(declare-fun d!1371683 () Bool)

(assert (= bs!825027 (and d!1371683 d!1371569)))

(declare-fun lambda!165473 () Int)

(assert (=> bs!825027 (= lambda!165473 lambda!165441)))

(declare-fun bs!825028 () Bool)

(assert (= bs!825028 (and d!1371683 d!1371661)))

(assert (=> bs!825028 (= lambda!165473 lambda!165469)))

(declare-fun bs!825029 () Bool)

(assert (= bs!825029 (and d!1371683 d!1371597)))

(assert (=> bs!825029 (= lambda!165473 lambda!165452)))

(declare-fun bs!825030 () Bool)

(assert (= bs!825030 (and d!1371683 d!1371667)))

(assert (=> bs!825030 (= lambda!165473 lambda!165471)))

(declare-fun bs!825031 () Bool)

(assert (= bs!825031 (and d!1371683 d!1371525)))

(assert (=> bs!825031 (= lambda!165473 lambda!165356)))

(declare-fun bs!825032 () Bool)

(assert (= bs!825032 (and d!1371683 d!1371649)))

(assert (=> bs!825032 (not (= lambda!165473 lambda!165464))))

(declare-fun bs!825033 () Bool)

(assert (= bs!825033 (and d!1371683 d!1371659)))

(assert (=> bs!825033 (= lambda!165473 lambda!165468)))

(declare-fun bs!825034 () Bool)

(assert (= bs!825034 (and d!1371683 d!1371589)))

(assert (=> bs!825034 (= lambda!165473 lambda!165444)))

(declare-fun bs!825035 () Bool)

(assert (= bs!825035 (and d!1371683 d!1371657)))

(assert (=> bs!825035 (= lambda!165473 lambda!165465)))

(declare-fun bs!825036 () Bool)

(assert (= bs!825036 (and d!1371683 d!1371639)))

(assert (=> bs!825036 (= lambda!165473 lambda!165458)))

(declare-fun bs!825037 () Bool)

(assert (= bs!825037 (and d!1371683 d!1371663)))

(assert (=> bs!825037 (= lambda!165473 lambda!165470)))

(declare-fun bs!825038 () Bool)

(assert (= bs!825038 (and d!1371683 start!440760)))

(assert (=> bs!825038 (= lambda!165473 lambda!165343)))

(declare-fun bs!825039 () Bool)

(assert (= bs!825039 (and d!1371683 d!1371681)))

(assert (=> bs!825039 (= lambda!165473 lambda!165472)))

(declare-fun bs!825040 () Bool)

(assert (= bs!825040 (and d!1371683 d!1371579)))

(assert (=> bs!825040 (= lambda!165473 lambda!165442)))

(declare-fun lt!1668058 () ListMap!3385)

(assert (=> d!1371683 (invariantList!949 (toList!4123 lt!1668058))))

(declare-fun e!2791049 () ListMap!3385)

(assert (=> d!1371683 (= lt!1668058 e!2791049)))

(declare-fun c!763369 () Bool)

(assert (=> d!1371683 (= c!763369 ((_ is Cons!50375) (toList!4124 lt!1667682)))))

(assert (=> d!1371683 (forall!10052 (toList!4124 lt!1667682) lambda!165473)))

(assert (=> d!1371683 (= (extractMap!1114 (toList!4124 lt!1667682)) lt!1668058)))

(declare-fun b!4481329 () Bool)

(assert (=> b!4481329 (= e!2791049 (addToMapMapFromBucket!613 (_2!28628 (h!56160 (toList!4124 lt!1667682))) (extractMap!1114 (t!357453 (toList!4124 lt!1667682)))))))

(declare-fun b!4481330 () Bool)

(assert (=> b!4481330 (= e!2791049 (ListMap!3386 Nil!50374))))

(assert (= (and d!1371683 c!763369) b!4481329))

(assert (= (and d!1371683 (not c!763369)) b!4481330))

(declare-fun m!5201169 () Bool)

(assert (=> d!1371683 m!5201169))

(declare-fun m!5201171 () Bool)

(assert (=> d!1371683 m!5201171))

(declare-fun m!5201173 () Bool)

(assert (=> b!4481329 m!5201173))

(assert (=> b!4481329 m!5201173))

(declare-fun m!5201175 () Bool)

(assert (=> b!4481329 m!5201175))

(assert (=> b!4480984 d!1371683))

(declare-fun d!1371685 () Bool)

(declare-fun res!1860591 () Bool)

(declare-fun e!2791050 () Bool)

(assert (=> d!1371685 (=> res!1860591 e!2791050)))

(assert (=> d!1371685 (= res!1860591 ((_ is Nil!50375) (toList!4124 lm!1477)))))

(assert (=> d!1371685 (= (forall!10052 (toList!4124 lm!1477) lambda!165343) e!2791050)))

(declare-fun b!4481331 () Bool)

(declare-fun e!2791051 () Bool)

(assert (=> b!4481331 (= e!2791050 e!2791051)))

(declare-fun res!1860592 () Bool)

(assert (=> b!4481331 (=> (not res!1860592) (not e!2791051))))

(assert (=> b!4481331 (= res!1860592 (dynLambda!21046 lambda!165343 (h!56160 (toList!4124 lm!1477))))))

(declare-fun b!4481332 () Bool)

(assert (=> b!4481332 (= e!2791051 (forall!10052 (t!357453 (toList!4124 lm!1477)) lambda!165343))))

(assert (= (and d!1371685 (not res!1860591)) b!4481331))

(assert (= (and b!4481331 res!1860592) b!4481332))

(declare-fun b_lambda!150319 () Bool)

(assert (=> (not b_lambda!150319) (not b!4481331)))

(declare-fun m!5201177 () Bool)

(assert (=> b!4481331 m!5201177))

(declare-fun m!5201179 () Bool)

(assert (=> b!4481332 m!5201179))

(assert (=> start!440760 d!1371685))

(declare-fun d!1371687 () Bool)

(declare-fun isStrictlySorted!363 (List!50499) Bool)

(assert (=> d!1371687 (= (inv!65969 lm!1477) (isStrictlySorted!363 (toList!4124 lm!1477)))))

(declare-fun bs!825041 () Bool)

(assert (= bs!825041 d!1371687))

(declare-fun m!5201181 () Bool)

(assert (=> bs!825041 m!5201181))

(assert (=> start!440760 d!1371687))

(declare-fun d!1371689 () Bool)

(declare-fun lt!1668061 () Bool)

(declare-fun content!8169 (List!50499) (InoxSet tuple2!50668))

(assert (=> d!1371689 (= lt!1668061 (select (content!8169 (toList!4124 lm!1477)) lt!1667674))))

(declare-fun e!2791057 () Bool)

(assert (=> d!1371689 (= lt!1668061 e!2791057)))

(declare-fun res!1860597 () Bool)

(assert (=> d!1371689 (=> (not res!1860597) (not e!2791057))))

(assert (=> d!1371689 (= res!1860597 ((_ is Cons!50375) (toList!4124 lm!1477)))))

(assert (=> d!1371689 (= (contains!12967 (toList!4124 lm!1477) lt!1667674) lt!1668061)))

(declare-fun b!4481337 () Bool)

(declare-fun e!2791056 () Bool)

(assert (=> b!4481337 (= e!2791057 e!2791056)))

(declare-fun res!1860598 () Bool)

(assert (=> b!4481337 (=> res!1860598 e!2791056)))

(assert (=> b!4481337 (= res!1860598 (= (h!56160 (toList!4124 lm!1477)) lt!1667674))))

(declare-fun b!4481338 () Bool)

(assert (=> b!4481338 (= e!2791056 (contains!12967 (t!357453 (toList!4124 lm!1477)) lt!1667674))))

(assert (= (and d!1371689 res!1860597) b!4481337))

(assert (= (and b!4481337 (not res!1860598)) b!4481338))

(declare-fun m!5201183 () Bool)

(assert (=> d!1371689 m!5201183))

(declare-fun m!5201185 () Bool)

(assert (=> d!1371689 m!5201185))

(declare-fun m!5201187 () Bool)

(assert (=> b!4481338 m!5201187))

(assert (=> b!4480993 d!1371689))

(declare-fun bs!825042 () Bool)

(declare-fun d!1371691 () Bool)

(assert (= bs!825042 (and d!1371691 d!1371683)))

(declare-fun lambda!165476 () Int)

(assert (=> bs!825042 (= lambda!165476 lambda!165473)))

(declare-fun bs!825043 () Bool)

(assert (= bs!825043 (and d!1371691 d!1371569)))

(assert (=> bs!825043 (= lambda!165476 lambda!165441)))

(declare-fun bs!825044 () Bool)

(assert (= bs!825044 (and d!1371691 d!1371661)))

(assert (=> bs!825044 (= lambda!165476 lambda!165469)))

(declare-fun bs!825045 () Bool)

(assert (= bs!825045 (and d!1371691 d!1371597)))

(assert (=> bs!825045 (= lambda!165476 lambda!165452)))

(declare-fun bs!825046 () Bool)

(assert (= bs!825046 (and d!1371691 d!1371667)))

(assert (=> bs!825046 (= lambda!165476 lambda!165471)))

(declare-fun bs!825047 () Bool)

(assert (= bs!825047 (and d!1371691 d!1371525)))

(assert (=> bs!825047 (= lambda!165476 lambda!165356)))

(declare-fun bs!825048 () Bool)

(assert (= bs!825048 (and d!1371691 d!1371649)))

(assert (=> bs!825048 (not (= lambda!165476 lambda!165464))))

(declare-fun bs!825049 () Bool)

(assert (= bs!825049 (and d!1371691 d!1371659)))

(assert (=> bs!825049 (= lambda!165476 lambda!165468)))

(declare-fun bs!825050 () Bool)

(assert (= bs!825050 (and d!1371691 d!1371589)))

(assert (=> bs!825050 (= lambda!165476 lambda!165444)))

(declare-fun bs!825051 () Bool)

(assert (= bs!825051 (and d!1371691 d!1371657)))

(assert (=> bs!825051 (= lambda!165476 lambda!165465)))

(declare-fun bs!825052 () Bool)

(assert (= bs!825052 (and d!1371691 d!1371639)))

(assert (=> bs!825052 (= lambda!165476 lambda!165458)))

(declare-fun bs!825053 () Bool)

(assert (= bs!825053 (and d!1371691 d!1371663)))

(assert (=> bs!825053 (= lambda!165476 lambda!165470)))

(declare-fun bs!825054 () Bool)

(assert (= bs!825054 (and d!1371691 start!440760)))

(assert (=> bs!825054 (= lambda!165476 lambda!165343)))

(declare-fun bs!825055 () Bool)

(assert (= bs!825055 (and d!1371691 d!1371681)))

(assert (=> bs!825055 (= lambda!165476 lambda!165472)))

(declare-fun bs!825056 () Bool)

(assert (= bs!825056 (and d!1371691 d!1371579)))

(assert (=> bs!825056 (= lambda!165476 lambda!165442)))

(assert (=> d!1371691 (contains!12966 lm!1477 (hash!2545 hashF!1107 key!3287))))

(declare-fun lt!1668064 () Unit!89713)

(declare-fun choose!28770 (ListLongMap!2755 K!11785 Hashable!5453) Unit!89713)

(assert (=> d!1371691 (= lt!1668064 (choose!28770 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371691 (forall!10052 (toList!4124 lm!1477) lambda!165476)))

(assert (=> d!1371691 (= (lemmaInGenMapThenLongMapContainsHash!132 lm!1477 key!3287 hashF!1107) lt!1668064)))

(declare-fun bs!825057 () Bool)

(assert (= bs!825057 d!1371691))

(assert (=> bs!825057 m!5200365))

(assert (=> bs!825057 m!5200365))

(declare-fun m!5201189 () Bool)

(assert (=> bs!825057 m!5201189))

(declare-fun m!5201191 () Bool)

(assert (=> bs!825057 m!5201191))

(declare-fun m!5201193 () Bool)

(assert (=> bs!825057 m!5201193))

(assert (=> b!4480993 d!1371691))

(declare-fun d!1371693 () Bool)

(declare-fun get!16437 (Option!10970) List!50498)

(assert (=> d!1371693 (= (apply!11795 lm!1477 hash!344) (get!16437 (getValueByKey!956 (toList!4124 lm!1477) hash!344)))))

(declare-fun bs!825058 () Bool)

(assert (= bs!825058 d!1371693))

(declare-fun m!5201195 () Bool)

(assert (=> bs!825058 m!5201195))

(assert (=> bs!825058 m!5201195))

(declare-fun m!5201197 () Bool)

(assert (=> bs!825058 m!5201197))

(assert (=> b!4480993 d!1371693))

(declare-fun d!1371695 () Bool)

(assert (=> d!1371695 (contains!12967 (toList!4124 lm!1477) (tuple2!50669 hash!344 lt!1667672))))

(declare-fun lt!1668067 () Unit!89713)

(declare-fun choose!28771 (List!50499 (_ BitVec 64) List!50498) Unit!89713)

(assert (=> d!1371695 (= lt!1668067 (choose!28771 (toList!4124 lm!1477) hash!344 lt!1667672))))

(declare-fun e!2791060 () Bool)

(assert (=> d!1371695 e!2791060))

(declare-fun res!1860601 () Bool)

(assert (=> d!1371695 (=> (not res!1860601) (not e!2791060))))

(assert (=> d!1371695 (= res!1860601 (isStrictlySorted!363 (toList!4124 lm!1477)))))

(assert (=> d!1371695 (= (lemmaGetValueByKeyImpliesContainsTuple!570 (toList!4124 lm!1477) hash!344 lt!1667672) lt!1668067)))

(declare-fun b!4481341 () Bool)

(assert (=> b!4481341 (= e!2791060 (= (getValueByKey!956 (toList!4124 lm!1477) hash!344) (Some!10969 lt!1667672)))))

(assert (= (and d!1371695 res!1860601) b!4481341))

(declare-fun m!5201199 () Bool)

(assert (=> d!1371695 m!5201199))

(declare-fun m!5201201 () Bool)

(assert (=> d!1371695 m!5201201))

(assert (=> d!1371695 m!5201181))

(assert (=> b!4481341 m!5201195))

(assert (=> b!4480993 d!1371695))

(declare-fun d!1371697 () Bool)

(assert (=> d!1371697 (dynLambda!21046 lambda!165343 lt!1667674)))

(declare-fun lt!1668070 () Unit!89713)

(declare-fun choose!28772 (List!50499 Int tuple2!50668) Unit!89713)

(assert (=> d!1371697 (= lt!1668070 (choose!28772 (toList!4124 lm!1477) lambda!165343 lt!1667674))))

(declare-fun e!2791063 () Bool)

(assert (=> d!1371697 e!2791063))

(declare-fun res!1860604 () Bool)

(assert (=> d!1371697 (=> (not res!1860604) (not e!2791063))))

(assert (=> d!1371697 (= res!1860604 (forall!10052 (toList!4124 lm!1477) lambda!165343))))

(assert (=> d!1371697 (= (forallContained!2313 (toList!4124 lm!1477) lambda!165343 lt!1667674) lt!1668070)))

(declare-fun b!4481344 () Bool)

(assert (=> b!4481344 (= e!2791063 (contains!12967 (toList!4124 lm!1477) lt!1667674))))

(assert (= (and d!1371697 res!1860604) b!4481344))

(declare-fun b_lambda!150321 () Bool)

(assert (=> (not b_lambda!150321) (not d!1371697)))

(declare-fun m!5201203 () Bool)

(assert (=> d!1371697 m!5201203))

(declare-fun m!5201205 () Bool)

(assert (=> d!1371697 m!5201205))

(assert (=> d!1371697 m!5200339))

(assert (=> b!4481344 m!5200431))

(assert (=> b!4480993 d!1371697))

(declare-fun d!1371699 () Bool)

(declare-fun e!2791068 () Bool)

(assert (=> d!1371699 e!2791068))

(declare-fun res!1860607 () Bool)

(assert (=> d!1371699 (=> res!1860607 e!2791068)))

(declare-fun lt!1668081 () Bool)

(assert (=> d!1371699 (= res!1860607 (not lt!1668081))))

(declare-fun lt!1668082 () Bool)

(assert (=> d!1371699 (= lt!1668081 lt!1668082)))

(declare-fun lt!1668079 () Unit!89713)

(declare-fun e!2791069 () Unit!89713)

(assert (=> d!1371699 (= lt!1668079 e!2791069)))

(declare-fun c!763372 () Bool)

(assert (=> d!1371699 (= c!763372 lt!1668082)))

(declare-fun containsKey!1550 (List!50499 (_ BitVec 64)) Bool)

(assert (=> d!1371699 (= lt!1668082 (containsKey!1550 (toList!4124 lm!1477) lt!1667667))))

(assert (=> d!1371699 (= (contains!12966 lm!1477 lt!1667667) lt!1668081)))

(declare-fun b!4481351 () Bool)

(declare-fun lt!1668080 () Unit!89713)

(assert (=> b!4481351 (= e!2791069 lt!1668080)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!861 (List!50499 (_ BitVec 64)) Unit!89713)

(assert (=> b!4481351 (= lt!1668080 (lemmaContainsKeyImpliesGetValueByKeyDefined!861 (toList!4124 lm!1477) lt!1667667))))

(declare-fun isDefined!8258 (Option!10970) Bool)

(assert (=> b!4481351 (isDefined!8258 (getValueByKey!956 (toList!4124 lm!1477) lt!1667667))))

(declare-fun b!4481352 () Bool)

(declare-fun Unit!89777 () Unit!89713)

(assert (=> b!4481352 (= e!2791069 Unit!89777)))

(declare-fun b!4481353 () Bool)

(assert (=> b!4481353 (= e!2791068 (isDefined!8258 (getValueByKey!956 (toList!4124 lm!1477) lt!1667667)))))

(assert (= (and d!1371699 c!763372) b!4481351))

(assert (= (and d!1371699 (not c!763372)) b!4481352))

(assert (= (and d!1371699 (not res!1860607)) b!4481353))

(declare-fun m!5201207 () Bool)

(assert (=> d!1371699 m!5201207))

(declare-fun m!5201209 () Bool)

(assert (=> b!4481351 m!5201209))

(declare-fun m!5201211 () Bool)

(assert (=> b!4481351 m!5201211))

(assert (=> b!4481351 m!5201211))

(declare-fun m!5201213 () Bool)

(assert (=> b!4481351 m!5201213))

(assert (=> b!4481353 m!5201211))

(assert (=> b!4481353 m!5201211))

(assert (=> b!4481353 m!5201213))

(assert (=> b!4480993 d!1371699))

(declare-fun d!1371701 () Bool)

(declare-fun lt!1668085 () List!50498)

(assert (=> d!1371701 (not (containsKey!1546 lt!1668085 key!3287))))

(declare-fun e!2791074 () List!50498)

(assert (=> d!1371701 (= lt!1668085 e!2791074)))

(declare-fun c!763378 () Bool)

(assert (=> d!1371701 (= c!763378 (and ((_ is Cons!50374) lt!1667672) (= (_1!28627 (h!56159 lt!1667672)) key!3287)))))

(assert (=> d!1371701 (noDuplicateKeys!1058 lt!1667672)))

(assert (=> d!1371701 (= (removePairForKey!685 lt!1667672 key!3287) lt!1668085)))

(declare-fun b!4481365 () Bool)

(declare-fun e!2791075 () List!50498)

(assert (=> b!4481365 (= e!2791075 Nil!50374)))

(declare-fun b!4481362 () Bool)

(assert (=> b!4481362 (= e!2791074 (t!357452 lt!1667672))))

(declare-fun b!4481363 () Bool)

(assert (=> b!4481363 (= e!2791074 e!2791075)))

(declare-fun c!763377 () Bool)

(assert (=> b!4481363 (= c!763377 ((_ is Cons!50374) lt!1667672))))

(declare-fun b!4481364 () Bool)

(assert (=> b!4481364 (= e!2791075 (Cons!50374 (h!56159 lt!1667672) (removePairForKey!685 (t!357452 lt!1667672) key!3287)))))

(assert (= (and d!1371701 c!763378) b!4481362))

(assert (= (and d!1371701 (not c!763378)) b!4481363))

(assert (= (and b!4481363 c!763377) b!4481364))

(assert (= (and b!4481363 (not c!763377)) b!4481365))

(declare-fun m!5201215 () Bool)

(assert (=> d!1371701 m!5201215))

(declare-fun m!5201217 () Bool)

(assert (=> d!1371701 m!5201217))

(declare-fun m!5201219 () Bool)

(assert (=> b!4481364 m!5201219))

(assert (=> b!4480993 d!1371701))

(declare-fun bs!825059 () Bool)

(declare-fun d!1371703 () Bool)

(assert (= bs!825059 (and d!1371703 d!1371683)))

(declare-fun lambda!165477 () Int)

(assert (=> bs!825059 (= lambda!165477 lambda!165473)))

(declare-fun bs!825060 () Bool)

(assert (= bs!825060 (and d!1371703 d!1371569)))

(assert (=> bs!825060 (= lambda!165477 lambda!165441)))

(declare-fun bs!825061 () Bool)

(assert (= bs!825061 (and d!1371703 d!1371661)))

(assert (=> bs!825061 (= lambda!165477 lambda!165469)))

(declare-fun bs!825062 () Bool)

(assert (= bs!825062 (and d!1371703 d!1371597)))

(assert (=> bs!825062 (= lambda!165477 lambda!165452)))

(declare-fun bs!825063 () Bool)

(assert (= bs!825063 (and d!1371703 d!1371667)))

(assert (=> bs!825063 (= lambda!165477 lambda!165471)))

(declare-fun bs!825064 () Bool)

(assert (= bs!825064 (and d!1371703 d!1371525)))

(assert (=> bs!825064 (= lambda!165477 lambda!165356)))

(declare-fun bs!825065 () Bool)

(assert (= bs!825065 (and d!1371703 d!1371659)))

(assert (=> bs!825065 (= lambda!165477 lambda!165468)))

(declare-fun bs!825066 () Bool)

(assert (= bs!825066 (and d!1371703 d!1371589)))

(assert (=> bs!825066 (= lambda!165477 lambda!165444)))

(declare-fun bs!825067 () Bool)

(assert (= bs!825067 (and d!1371703 d!1371657)))

(assert (=> bs!825067 (= lambda!165477 lambda!165465)))

(declare-fun bs!825068 () Bool)

(assert (= bs!825068 (and d!1371703 d!1371639)))

(assert (=> bs!825068 (= lambda!165477 lambda!165458)))

(declare-fun bs!825069 () Bool)

(assert (= bs!825069 (and d!1371703 d!1371663)))

(assert (=> bs!825069 (= lambda!165477 lambda!165470)))

(declare-fun bs!825070 () Bool)

(assert (= bs!825070 (and d!1371703 start!440760)))

(assert (=> bs!825070 (= lambda!165477 lambda!165343)))

(declare-fun bs!825071 () Bool)

(assert (= bs!825071 (and d!1371703 d!1371649)))

(assert (=> bs!825071 (not (= lambda!165477 lambda!165464))))

(declare-fun bs!825072 () Bool)

(assert (= bs!825072 (and d!1371703 d!1371691)))

(assert (=> bs!825072 (= lambda!165477 lambda!165476)))

(declare-fun bs!825073 () Bool)

(assert (= bs!825073 (and d!1371703 d!1371681)))

(assert (=> bs!825073 (= lambda!165477 lambda!165472)))

(declare-fun bs!825074 () Bool)

(assert (= bs!825074 (and d!1371703 d!1371579)))

(assert (=> bs!825074 (= lambda!165477 lambda!165442)))

(assert (=> d!1371703 (contains!12966 lt!1667682 (hash!2545 hashF!1107 key!3287))))

(declare-fun lt!1668086 () Unit!89713)

(assert (=> d!1371703 (= lt!1668086 (choose!28770 lt!1667682 key!3287 hashF!1107))))

(assert (=> d!1371703 (forall!10052 (toList!4124 lt!1667682) lambda!165477)))

(assert (=> d!1371703 (= (lemmaInGenMapThenLongMapContainsHash!132 lt!1667682 key!3287 hashF!1107) lt!1668086)))

(declare-fun bs!825075 () Bool)

(assert (= bs!825075 d!1371703))

(assert (=> bs!825075 m!5200365))

(assert (=> bs!825075 m!5200365))

(declare-fun m!5201221 () Bool)

(assert (=> bs!825075 m!5201221))

(declare-fun m!5201223 () Bool)

(assert (=> bs!825075 m!5201223))

(declare-fun m!5201225 () Bool)

(assert (=> bs!825075 m!5201225))

(assert (=> b!4481004 d!1371703))

(declare-fun d!1371705 () Bool)

(declare-fun e!2791076 () Bool)

(assert (=> d!1371705 e!2791076))

(declare-fun res!1860608 () Bool)

(assert (=> d!1371705 (=> res!1860608 e!2791076)))

(declare-fun lt!1668089 () Bool)

(assert (=> d!1371705 (= res!1860608 (not lt!1668089))))

(declare-fun lt!1668090 () Bool)

(assert (=> d!1371705 (= lt!1668089 lt!1668090)))

(declare-fun lt!1668087 () Unit!89713)

(declare-fun e!2791077 () Unit!89713)

(assert (=> d!1371705 (= lt!1668087 e!2791077)))

(declare-fun c!763379 () Bool)

(assert (=> d!1371705 (= c!763379 lt!1668090)))

(assert (=> d!1371705 (= lt!1668090 (containsKey!1550 (toList!4124 lt!1667682) lt!1667667))))

(assert (=> d!1371705 (= (contains!12966 lt!1667682 lt!1667667) lt!1668089)))

(declare-fun b!4481366 () Bool)

(declare-fun lt!1668088 () Unit!89713)

(assert (=> b!4481366 (= e!2791077 lt!1668088)))

(assert (=> b!4481366 (= lt!1668088 (lemmaContainsKeyImpliesGetValueByKeyDefined!861 (toList!4124 lt!1667682) lt!1667667))))

(assert (=> b!4481366 (isDefined!8258 (getValueByKey!956 (toList!4124 lt!1667682) lt!1667667))))

(declare-fun b!4481367 () Bool)

(declare-fun Unit!89778 () Unit!89713)

(assert (=> b!4481367 (= e!2791077 Unit!89778)))

(declare-fun b!4481368 () Bool)

(assert (=> b!4481368 (= e!2791076 (isDefined!8258 (getValueByKey!956 (toList!4124 lt!1667682) lt!1667667)))))

(assert (= (and d!1371705 c!763379) b!4481366))

(assert (= (and d!1371705 (not c!763379)) b!4481367))

(assert (= (and d!1371705 (not res!1860608)) b!4481368))

(declare-fun m!5201227 () Bool)

(assert (=> d!1371705 m!5201227))

(declare-fun m!5201229 () Bool)

(assert (=> b!4481366 m!5201229))

(declare-fun m!5201231 () Bool)

(assert (=> b!4481366 m!5201231))

(assert (=> b!4481366 m!5201231))

(declare-fun m!5201233 () Bool)

(assert (=> b!4481366 m!5201233))

(assert (=> b!4481368 m!5201231))

(assert (=> b!4481368 m!5201231))

(assert (=> b!4481368 m!5201233))

(assert (=> b!4481004 d!1371705))

(declare-fun e!2791080 () Bool)

(declare-fun tp!1336681 () Bool)

(declare-fun b!4481373 () Bool)

(assert (=> b!4481373 (= e!2791080 (and tp_is_empty!27509 tp_is_empty!27511 tp!1336681))))

(assert (=> b!4481005 (= tp!1336669 e!2791080)))

(assert (= (and b!4481005 ((_ is Cons!50374) (t!357452 newBucket!178))) b!4481373))

(declare-fun b!4481378 () Bool)

(declare-fun e!2791083 () Bool)

(declare-fun tp!1336686 () Bool)

(declare-fun tp!1336687 () Bool)

(assert (=> b!4481378 (= e!2791083 (and tp!1336686 tp!1336687))))

(assert (=> b!4480983 (= tp!1336668 e!2791083)))

(assert (= (and b!4480983 ((_ is Cons!50375) (toList!4124 lm!1477))) b!4481378))

(declare-fun b_lambda!150323 () Bool)

(assert (= b_lambda!150317 (or start!440760 b_lambda!150323)))

(declare-fun bs!825076 () Bool)

(declare-fun d!1371707 () Bool)

(assert (= bs!825076 (and d!1371707 start!440760)))

(assert (=> bs!825076 (= (dynLambda!21046 lambda!165343 (h!56160 (toList!4124 lt!1667671))) (noDuplicateKeys!1058 (_2!28628 (h!56160 (toList!4124 lt!1667671)))))))

(declare-fun m!5201235 () Bool)

(assert (=> bs!825076 m!5201235))

(assert (=> b!4481325 d!1371707))

(declare-fun b_lambda!150325 () Bool)

(assert (= b_lambda!150321 (or start!440760 b_lambda!150325)))

(declare-fun bs!825077 () Bool)

(declare-fun d!1371709 () Bool)

(assert (= bs!825077 (and d!1371709 start!440760)))

(assert (=> bs!825077 (= (dynLambda!21046 lambda!165343 lt!1667674) (noDuplicateKeys!1058 (_2!28628 lt!1667674)))))

(declare-fun m!5201237 () Bool)

(assert (=> bs!825077 m!5201237))

(assert (=> d!1371697 d!1371709))

(declare-fun b_lambda!150327 () Bool)

(assert (= b_lambda!150319 (or start!440760 b_lambda!150327)))

(declare-fun bs!825078 () Bool)

(declare-fun d!1371711 () Bool)

(assert (= bs!825078 (and d!1371711 start!440760)))

(assert (=> bs!825078 (= (dynLambda!21046 lambda!165343 (h!56160 (toList!4124 lm!1477))) (noDuplicateKeys!1058 (_2!28628 (h!56160 (toList!4124 lm!1477)))))))

(assert (=> bs!825078 m!5200983))

(assert (=> b!4481331 d!1371711))

(check-sat (not d!1371667) (not bm!312060) (not b!4481138) (not d!1371611) (not b!4481290) (not b!4481218) (not d!1371665) (not bm!312054) (not d!1371659) (not d!1371569) (not b!4481298) (not d!1371687) (not d!1371525) (not d!1371597) (not b!4481301) (not b!4481368) (not d!1371643) (not b!4481315) (not bm!312061) (not d!1371703) (not d!1371595) (not b!4481285) (not b!4481338) (not b!4481128) (not d!1371513) (not d!1371697) (not b!4481272) (not d!1371677) (not b!4481295) (not b!4481300) (not d!1371691) (not b!4481291) (not d!1371639) (not b!4481319) (not b!4481205) (not b!4481329) (not b!4481378) (not bm!312062) (not d!1371699) (not d!1371673) (not d!1371533) (not b!4481293) (not b!4481220) (not b!4481307) (not b!4481219) (not b!4481313) (not b!4481373) (not d!1371649) (not d!1371661) (not b!4481308) (not b!4481221) (not b!4481364) (not b!4481341) tp_is_empty!27509 (not b!4481327) (not d!1371705) (not b_lambda!150323) (not d!1371675) (not d!1371623) (not b!4481292) (not d!1371695) (not d!1371655) (not b!4481204) (not b!4481273) (not bs!825077) (not bm!312068) (not b!4481318) (not b!4481275) (not d!1371647) (not b!4481129) (not d!1371681) (not b_lambda!150325) (not b!4481303) (not b!4481312) (not b!4481160) (not bm!312066) (not bm!312067) (not b!4481296) (not d!1371621) (not bs!825078) (not b!4481130) (not d!1371589) (not d!1371627) tp_is_empty!27511 (not b!4481269) (not bs!825076) (not b!4481024) (not d!1371579) (not b!4481344) (not b!4481022) (not b!4481366) (not d!1371693) (not b!4481297) (not b!4481277) (not bm!312055) (not b!4481311) (not b_lambda!150327) (not b!4481159) (not d!1371689) (not b!4481131) (not b!4481326) (not b!4481270) (not d!1371645) (not b!4481274) (not bm!312053) (not b!4481351) (not b!4481310) (not d!1371663) (not d!1371523) (not d!1371519) (not b!4481320) (not d!1371683) (not b!4481353) (not b!4481332) (not b!4481041) (not d!1371657) (not b!4481246) (not b!4481243) (not d!1371701) (not d!1371581) (not d!1371669) (not b!4481245) (not b!4481316) (not b!4481305))
(check-sat)
