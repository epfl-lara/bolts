; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!446316 () Bool)

(assert start!446316)

(declare-fun b!4513001 () Bool)

(declare-fun e!2811515 () Bool)

(declare-fun e!2811523 () Bool)

(assert (=> b!4513001 (= e!2811515 e!2811523)))

(declare-fun res!1877446 () Bool)

(assert (=> b!4513001 (=> (not res!1877446) (not e!2811523))))

(declare-fun lt!1691036 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4513001 (= res!1877446 (= lt!1691036 hash!344))))

(declare-datatypes ((Hashable!5543 0))(
  ( (HashableExt!5542 (__x!31246 Int)) )
))
(declare-fun hashF!1107 () Hashable!5543)

(declare-datatypes ((K!12010 0))(
  ( (K!12011 (val!17879 Int)) )
))
(declare-fun key!3287 () K!12010)

(declare-fun hash!2765 (Hashable!5543 K!12010) (_ BitVec 64))

(assert (=> b!4513001 (= lt!1691036 (hash!2765 hashF!1107 key!3287))))

(declare-fun b!4513002 () Bool)

(declare-fun res!1877452 () Bool)

(declare-fun e!2811514 () Bool)

(assert (=> b!4513002 (=> res!1877452 e!2811514)))

(declare-datatypes ((V!12256 0))(
  ( (V!12257 (val!17880 Int)) )
))
(declare-datatypes ((tuple2!51026 0))(
  ( (tuple2!51027 (_1!28807 K!12010) (_2!28807 V!12256)) )
))
(declare-datatypes ((List!50734 0))(
  ( (Nil!50610) (Cons!50610 (h!56451 tuple2!51026) (t!357696 List!50734)) )
))
(declare-datatypes ((tuple2!51028 0))(
  ( (tuple2!51029 (_1!28808 (_ BitVec 64)) (_2!28808 List!50734)) )
))
(declare-datatypes ((List!50735 0))(
  ( (Nil!50611) (Cons!50611 (h!56452 tuple2!51028) (t!357697 List!50735)) )
))
(declare-datatypes ((ListLongMap!2935 0))(
  ( (ListLongMap!2936 (toList!4303 List!50735)) )
))
(declare-fun lm!1477 () ListLongMap!2935)

(get-info :version)

(assert (=> b!4513002 (= res!1877452 (or ((_ is Nil!50611) (toList!4303 lm!1477)) (= (_1!28808 (h!56452 (toList!4303 lm!1477))) hash!344)))))

(declare-fun b!4513003 () Bool)

(declare-datatypes ((Unit!93872 0))(
  ( (Unit!93873) )
))
(declare-fun e!2811517 () Unit!93872)

(declare-fun Unit!93874 () Unit!93872)

(assert (=> b!4513003 (= e!2811517 Unit!93874)))

(declare-fun lt!1691018 () Unit!93872)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!136 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> b!4513003 (= lt!1691018 (lemmaNotInItsHashBucketThenNotInMap!136 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4513003 false))

(declare-fun b!4513004 () Bool)

(declare-fun e!2811519 () Bool)

(declare-fun e!2811511 () Bool)

(assert (=> b!4513004 (= e!2811519 e!2811511)))

(declare-fun res!1877449 () Bool)

(assert (=> b!4513004 (=> res!1877449 e!2811511)))

(declare-fun lt!1691037 () tuple2!51028)

(declare-fun lt!1691029 () ListLongMap!2935)

(declare-fun +!1514 (ListLongMap!2935 tuple2!51028) ListLongMap!2935)

(assert (=> b!4513004 (= res!1877449 (not (= lt!1691029 (+!1514 lm!1477 lt!1691037))))))

(declare-fun lt!1691039 () ListLongMap!2935)

(declare-fun lt!1691035 () tuple2!51028)

(assert (=> b!4513004 (= lt!1691029 (+!1514 lt!1691039 lt!1691035))))

(declare-fun b!4513005 () Bool)

(declare-fun res!1877439 () Bool)

(declare-fun e!2811512 () Bool)

(assert (=> b!4513005 (=> res!1877439 e!2811512)))

(declare-fun lt!1691030 () tuple2!51028)

(declare-fun contains!13317 (List!50735 tuple2!51028) Bool)

(assert (=> b!4513005 (= res!1877439 (not (contains!13317 (t!357697 (toList!4303 lm!1477)) lt!1691030)))))

(declare-fun b!4513006 () Bool)

(declare-fun e!2811513 () Bool)

(declare-fun tp!1337876 () Bool)

(assert (=> b!4513006 (= e!2811513 tp!1337876)))

(declare-fun b!4513007 () Bool)

(assert (=> b!4513007 (= e!2811514 e!2811512)))

(declare-fun res!1877455 () Bool)

(assert (=> b!4513007 (=> res!1877455 e!2811512)))

(declare-fun lt!1691031 () ListLongMap!2935)

(declare-fun contains!13318 (ListLongMap!2935 (_ BitVec 64)) Bool)

(assert (=> b!4513007 (= res!1877455 (not (contains!13318 lt!1691031 hash!344)))))

(declare-fun tail!7710 (ListLongMap!2935) ListLongMap!2935)

(assert (=> b!4513007 (= lt!1691031 (tail!7710 lm!1477))))

(declare-fun b!4513008 () Bool)

(declare-fun tp_is_empty!27869 () Bool)

(declare-fun e!2811510 () Bool)

(declare-fun tp!1337877 () Bool)

(declare-fun tp_is_empty!27871 () Bool)

(assert (=> b!4513008 (= e!2811510 (and tp_is_empty!27869 tp_is_empty!27871 tp!1337877))))

(declare-fun res!1877453 () Bool)

(declare-fun e!2811518 () Bool)

(assert (=> start!446316 (=> (not res!1877453) (not e!2811518))))

(declare-fun lambda!170985 () Int)

(declare-fun forall!10233 (List!50735 Int) Bool)

(assert (=> start!446316 (= res!1877453 (forall!10233 (toList!4303 lm!1477) lambda!170985))))

(assert (=> start!446316 e!2811518))

(assert (=> start!446316 true))

(declare-fun inv!66194 (ListLongMap!2935) Bool)

(assert (=> start!446316 (and (inv!66194 lm!1477) e!2811513)))

(assert (=> start!446316 tp_is_empty!27869))

(assert (=> start!446316 e!2811510))

(declare-fun b!4513009 () Bool)

(declare-fun res!1877445 () Bool)

(assert (=> b!4513009 (=> res!1877445 e!2811511)))

(declare-fun head!9388 (ListLongMap!2935) tuple2!51028)

(assert (=> b!4513009 (= res!1877445 (not (= (head!9388 lt!1691029) lt!1691035)))))

(declare-fun b!4513010 () Bool)

(declare-fun e!2811521 () Bool)

(assert (=> b!4513010 (= e!2811512 e!2811521)))

(declare-fun res!1877440 () Bool)

(assert (=> b!4513010 (=> res!1877440 e!2811521)))

(declare-fun lt!1691017 () Bool)

(assert (=> b!4513010 (= res!1877440 lt!1691017)))

(declare-fun lt!1691028 () Unit!93872)

(assert (=> b!4513010 (= lt!1691028 e!2811517)))

(declare-fun c!769895 () Bool)

(assert (=> b!4513010 (= c!769895 lt!1691017)))

(declare-fun lt!1691025 () List!50734)

(declare-fun containsKey!1744 (List!50734 K!12010) Bool)

(assert (=> b!4513010 (= lt!1691017 (not (containsKey!1744 lt!1691025 key!3287)))))

(declare-fun b!4513011 () Bool)

(declare-fun res!1877448 () Bool)

(assert (=> b!4513011 (=> (not res!1877448) (not e!2811523))))

(declare-fun newBucket!178 () List!50734)

(declare-fun allKeysSameHash!1002 (List!50734 (_ BitVec 64) Hashable!5543) Bool)

(assert (=> b!4513011 (= res!1877448 (allKeysSameHash!1002 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4513012 () Bool)

(assert (=> b!4513012 (= e!2811523 (not e!2811514))))

(declare-fun res!1877444 () Bool)

(assert (=> b!4513012 (=> res!1877444 e!2811514)))

(declare-fun removePairForKey!775 (List!50734 K!12010) List!50734)

(assert (=> b!4513012 (= res!1877444 (not (= newBucket!178 (removePairForKey!775 lt!1691025 key!3287))))))

(declare-fun lt!1691038 () Unit!93872)

(declare-fun forallContained!2485 (List!50735 Int tuple2!51028) Unit!93872)

(assert (=> b!4513012 (= lt!1691038 (forallContained!2485 (toList!4303 lm!1477) lambda!170985 lt!1691030))))

(assert (=> b!4513012 (contains!13317 (toList!4303 lm!1477) lt!1691030)))

(assert (=> b!4513012 (= lt!1691030 (tuple2!51029 hash!344 lt!1691025))))

(declare-fun lt!1691019 () Unit!93872)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!660 (List!50735 (_ BitVec 64) List!50734) Unit!93872)

(assert (=> b!4513012 (= lt!1691019 (lemmaGetValueByKeyImpliesContainsTuple!660 (toList!4303 lm!1477) hash!344 lt!1691025))))

(declare-fun apply!11885 (ListLongMap!2935 (_ BitVec 64)) List!50734)

(assert (=> b!4513012 (= lt!1691025 (apply!11885 lm!1477 hash!344))))

(assert (=> b!4513012 (contains!13318 lm!1477 lt!1691036)))

(declare-fun lt!1691016 () Unit!93872)

(declare-fun lemmaInGenMapThenLongMapContainsHash!222 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> b!4513012 (= lt!1691016 (lemmaInGenMapThenLongMapContainsHash!222 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4513013 () Bool)

(declare-fun Unit!93875 () Unit!93872)

(assert (=> b!4513013 (= e!2811517 Unit!93875)))

(declare-fun b!4513014 () Bool)

(declare-fun res!1877451 () Bool)

(assert (=> b!4513014 (=> res!1877451 e!2811514)))

(declare-fun noDuplicateKeys!1148 (List!50734) Bool)

(assert (=> b!4513014 (= res!1877451 (not (noDuplicateKeys!1148 newBucket!178)))))

(declare-fun b!4513015 () Bool)

(declare-fun res!1877454 () Bool)

(assert (=> b!4513015 (=> (not res!1877454) (not e!2811518))))

(declare-fun allKeysSameHashInMap!1255 (ListLongMap!2935 Hashable!5543) Bool)

(assert (=> b!4513015 (= res!1877454 (allKeysSameHashInMap!1255 lm!1477 hashF!1107))))

(declare-fun b!4513016 () Bool)

(declare-fun e!2811522 () Bool)

(assert (=> b!4513016 (= e!2811511 e!2811522)))

(declare-fun res!1877458 () Bool)

(assert (=> b!4513016 (=> res!1877458 e!2811522)))

(declare-datatypes ((ListMap!3565 0))(
  ( (ListMap!3566 (toList!4304 List!50734)) )
))
(declare-fun lt!1691022 () ListMap!3565)

(declare-fun lt!1691040 () ListMap!3565)

(declare-fun eq!605 (ListMap!3565 ListMap!3565) Bool)

(assert (=> b!4513016 (= res!1877458 (not (eq!605 lt!1691022 lt!1691040)))))

(declare-fun lt!1691020 () ListMap!3565)

(declare-fun addToMapMapFromBucket!675 (List!50734 ListMap!3565) ListMap!3565)

(assert (=> b!4513016 (= lt!1691040 (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691020))))

(declare-fun extractMap!1204 (List!50735) ListMap!3565)

(assert (=> b!4513016 (= lt!1691022 (extractMap!1204 (toList!4303 lt!1691029)))))

(declare-fun b!4513017 () Bool)

(declare-fun e!2811516 () Bool)

(assert (=> b!4513017 (= e!2811516 e!2811519)))

(declare-fun res!1877450 () Bool)

(assert (=> b!4513017 (=> res!1877450 e!2811519)))

(declare-fun lt!1691023 () ListMap!3565)

(declare-fun lt!1691027 () ListMap!3565)

(assert (=> b!4513017 (= res!1877450 (not (eq!605 lt!1691023 lt!1691027)))))

(assert (=> b!4513017 (= lt!1691023 (extractMap!1204 (toList!4303 (+!1514 lt!1691031 lt!1691035))))))

(assert (=> b!4513017 (= lt!1691035 (head!9388 lm!1477))))

(declare-fun lt!1691024 () ListMap!3565)

(assert (=> b!4513017 (eq!605 lt!1691020 lt!1691024)))

(declare-fun lt!1691033 () ListMap!3565)

(declare-fun -!374 (ListMap!3565 K!12010) ListMap!3565)

(assert (=> b!4513017 (= lt!1691024 (-!374 lt!1691033 key!3287))))

(assert (=> b!4513017 (= lt!1691020 (extractMap!1204 (toList!4303 lt!1691039)))))

(assert (=> b!4513017 (= lt!1691039 (+!1514 lt!1691031 lt!1691037))))

(assert (=> b!4513017 (= lt!1691037 (tuple2!51029 hash!344 newBucket!178))))

(declare-fun lt!1691034 () Unit!93872)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!133 (ListLongMap!2935 (_ BitVec 64) List!50734 K!12010 Hashable!5543) Unit!93872)

(assert (=> b!4513017 (= lt!1691034 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!133 lt!1691031 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4513018 () Bool)

(declare-fun e!2811520 () Bool)

(assert (=> b!4513018 (= e!2811520 e!2811516)))

(declare-fun res!1877456 () Bool)

(assert (=> b!4513018 (=> res!1877456 e!2811516)))

(declare-fun contains!13319 (ListMap!3565 K!12010) Bool)

(assert (=> b!4513018 (= res!1877456 (not (contains!13319 (extractMap!1204 (t!357697 (toList!4303 lm!1477))) key!3287)))))

(assert (=> b!4513018 (contains!13319 lt!1691033 key!3287)))

(assert (=> b!4513018 (= lt!1691033 (extractMap!1204 (toList!4303 lt!1691031)))))

(declare-fun lt!1691026 () Unit!93872)

(declare-fun lemmaListContainsThenExtractedMapContains!118 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> b!4513018 (= lt!1691026 (lemmaListContainsThenExtractedMapContains!118 lt!1691031 key!3287 hashF!1107))))

(declare-fun b!4513019 () Bool)

(declare-fun res!1877457 () Bool)

(assert (=> b!4513019 (=> res!1877457 e!2811512)))

(assert (=> b!4513019 (= res!1877457 (not (= (apply!11885 lt!1691031 hash!344) lt!1691025)))))

(declare-fun b!4513020 () Bool)

(declare-fun res!1877447 () Bool)

(assert (=> b!4513020 (=> res!1877447 e!2811519)))

(assert (=> b!4513020 (= res!1877447 (bvsge (_1!28808 lt!1691035) hash!344))))

(declare-fun b!4513021 () Bool)

(assert (=> b!4513021 (= e!2811518 e!2811515)))

(declare-fun res!1877441 () Bool)

(assert (=> b!4513021 (=> (not res!1877441) (not e!2811515))))

(assert (=> b!4513021 (= res!1877441 (contains!13319 lt!1691027 key!3287))))

(assert (=> b!4513021 (= lt!1691027 (extractMap!1204 (toList!4303 lm!1477)))))

(declare-fun b!4513022 () Bool)

(assert (=> b!4513022 (= e!2811522 (forall!10233 (toList!4303 lt!1691031) lambda!170985))))

(assert (=> b!4513022 (eq!605 lt!1691040 (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691024))))

(declare-fun lt!1691032 () Unit!93872)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!24 (ListMap!3565 ListMap!3565 List!50734) Unit!93872)

(assert (=> b!4513022 (= lt!1691032 (lemmaAddToMapFromBucketPreservesEquivalence!24 lt!1691020 lt!1691024 (_2!28808 lt!1691035)))))

(declare-fun b!4513023 () Bool)

(declare-fun res!1877443 () Bool)

(assert (=> b!4513023 (=> res!1877443 e!2811519)))

(assert (=> b!4513023 (= res!1877443 (not (eq!605 lt!1691027 lt!1691023)))))

(declare-fun b!4513024 () Bool)

(assert (=> b!4513024 (= e!2811521 e!2811520)))

(declare-fun res!1877442 () Bool)

(assert (=> b!4513024 (=> res!1877442 e!2811520)))

(declare-fun containsKeyBiggerList!128 (List!50735 K!12010) Bool)

(assert (=> b!4513024 (= res!1877442 (not (containsKeyBiggerList!128 (t!357697 (toList!4303 lm!1477)) key!3287)))))

(assert (=> b!4513024 (containsKeyBiggerList!128 (toList!4303 lt!1691031) key!3287)))

(declare-fun lt!1691021 () Unit!93872)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!64 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> b!4513024 (= lt!1691021 (lemmaInLongMapThenContainsKeyBiggerList!64 lt!1691031 key!3287 hashF!1107))))

(assert (= (and start!446316 res!1877453) b!4513015))

(assert (= (and b!4513015 res!1877454) b!4513021))

(assert (= (and b!4513021 res!1877441) b!4513001))

(assert (= (and b!4513001 res!1877446) b!4513011))

(assert (= (and b!4513011 res!1877448) b!4513012))

(assert (= (and b!4513012 (not res!1877444)) b!4513014))

(assert (= (and b!4513014 (not res!1877451)) b!4513002))

(assert (= (and b!4513002 (not res!1877452)) b!4513007))

(assert (= (and b!4513007 (not res!1877455)) b!4513019))

(assert (= (and b!4513019 (not res!1877457)) b!4513005))

(assert (= (and b!4513005 (not res!1877439)) b!4513010))

(assert (= (and b!4513010 c!769895) b!4513003))

(assert (= (and b!4513010 (not c!769895)) b!4513013))

(assert (= (and b!4513010 (not res!1877440)) b!4513024))

(assert (= (and b!4513024 (not res!1877442)) b!4513018))

(assert (= (and b!4513018 (not res!1877456)) b!4513017))

(assert (= (and b!4513017 (not res!1877450)) b!4513023))

(assert (= (and b!4513023 (not res!1877443)) b!4513020))

(assert (= (and b!4513020 (not res!1877447)) b!4513004))

(assert (= (and b!4513004 (not res!1877449)) b!4513009))

(assert (= (and b!4513009 (not res!1877445)) b!4513016))

(assert (= (and b!4513016 (not res!1877458)) b!4513022))

(assert (= start!446316 b!4513006))

(assert (= (and start!446316 ((_ is Cons!50610) newBucket!178)) b!4513008))

(declare-fun m!5254495 () Bool)

(assert (=> b!4513001 m!5254495))

(declare-fun m!5254497 () Bool)

(assert (=> b!4513016 m!5254497))

(declare-fun m!5254499 () Bool)

(assert (=> b!4513016 m!5254499))

(declare-fun m!5254501 () Bool)

(assert (=> b!4513016 m!5254501))

(declare-fun m!5254503 () Bool)

(assert (=> b!4513004 m!5254503))

(declare-fun m!5254505 () Bool)

(assert (=> b!4513004 m!5254505))

(declare-fun m!5254507 () Bool)

(assert (=> b!4513003 m!5254507))

(declare-fun m!5254509 () Bool)

(assert (=> b!4513022 m!5254509))

(declare-fun m!5254511 () Bool)

(assert (=> b!4513022 m!5254511))

(assert (=> b!4513022 m!5254511))

(declare-fun m!5254513 () Bool)

(assert (=> b!4513022 m!5254513))

(declare-fun m!5254515 () Bool)

(assert (=> b!4513022 m!5254515))

(declare-fun m!5254517 () Bool)

(assert (=> b!4513005 m!5254517))

(declare-fun m!5254519 () Bool)

(assert (=> b!4513012 m!5254519))

(declare-fun m!5254521 () Bool)

(assert (=> b!4513012 m!5254521))

(declare-fun m!5254523 () Bool)

(assert (=> b!4513012 m!5254523))

(declare-fun m!5254525 () Bool)

(assert (=> b!4513012 m!5254525))

(declare-fun m!5254527 () Bool)

(assert (=> b!4513012 m!5254527))

(declare-fun m!5254529 () Bool)

(assert (=> b!4513012 m!5254529))

(declare-fun m!5254531 () Bool)

(assert (=> b!4513012 m!5254531))

(declare-fun m!5254533 () Bool)

(assert (=> b!4513021 m!5254533))

(declare-fun m!5254535 () Bool)

(assert (=> b!4513021 m!5254535))

(declare-fun m!5254537 () Bool)

(assert (=> b!4513014 m!5254537))

(declare-fun m!5254539 () Bool)

(assert (=> b!4513007 m!5254539))

(declare-fun m!5254541 () Bool)

(assert (=> b!4513007 m!5254541))

(declare-fun m!5254543 () Bool)

(assert (=> b!4513011 m!5254543))

(declare-fun m!5254545 () Bool)

(assert (=> b!4513017 m!5254545))

(declare-fun m!5254547 () Bool)

(assert (=> b!4513017 m!5254547))

(declare-fun m!5254549 () Bool)

(assert (=> b!4513017 m!5254549))

(declare-fun m!5254551 () Bool)

(assert (=> b!4513017 m!5254551))

(declare-fun m!5254553 () Bool)

(assert (=> b!4513017 m!5254553))

(declare-fun m!5254555 () Bool)

(assert (=> b!4513017 m!5254555))

(declare-fun m!5254557 () Bool)

(assert (=> b!4513017 m!5254557))

(declare-fun m!5254559 () Bool)

(assert (=> b!4513017 m!5254559))

(declare-fun m!5254561 () Bool)

(assert (=> b!4513017 m!5254561))

(declare-fun m!5254563 () Bool)

(assert (=> b!4513010 m!5254563))

(declare-fun m!5254565 () Bool)

(assert (=> b!4513018 m!5254565))

(declare-fun m!5254567 () Bool)

(assert (=> b!4513018 m!5254567))

(declare-fun m!5254569 () Bool)

(assert (=> b!4513018 m!5254569))

(assert (=> b!4513018 m!5254567))

(declare-fun m!5254571 () Bool)

(assert (=> b!4513018 m!5254571))

(declare-fun m!5254573 () Bool)

(assert (=> b!4513018 m!5254573))

(declare-fun m!5254575 () Bool)

(assert (=> b!4513009 m!5254575))

(declare-fun m!5254577 () Bool)

(assert (=> b!4513019 m!5254577))

(declare-fun m!5254579 () Bool)

(assert (=> b!4513024 m!5254579))

(declare-fun m!5254581 () Bool)

(assert (=> b!4513024 m!5254581))

(declare-fun m!5254583 () Bool)

(assert (=> b!4513024 m!5254583))

(declare-fun m!5254585 () Bool)

(assert (=> b!4513015 m!5254585))

(declare-fun m!5254587 () Bool)

(assert (=> start!446316 m!5254587))

(declare-fun m!5254589 () Bool)

(assert (=> start!446316 m!5254589))

(declare-fun m!5254591 () Bool)

(assert (=> b!4513023 m!5254591))

(check-sat (not b!4513015) (not b!4513018) (not b!4513008) tp_is_empty!27869 (not b!4513021) (not b!4513019) (not b!4513009) (not b!4513023) (not start!446316) (not b!4513016) (not b!4513012) (not b!4513024) (not b!4513006) (not b!4513017) (not b!4513014) (not b!4513004) (not b!4513007) tp_is_empty!27871 (not b!4513005) (not b!4513010) (not b!4513022) (not b!4513001) (not b!4513011) (not b!4513003))
(check-sat)
(get-model)

(declare-fun d!1388602 () Bool)

(declare-fun res!1877466 () Bool)

(declare-fun e!2811531 () Bool)

(assert (=> d!1388602 (=> res!1877466 e!2811531)))

(declare-fun e!2811532 () Bool)

(assert (=> d!1388602 (= res!1877466 e!2811532)))

(declare-fun res!1877465 () Bool)

(assert (=> d!1388602 (=> (not res!1877465) (not e!2811532))))

(assert (=> d!1388602 (= res!1877465 ((_ is Cons!50611) (t!357697 (toList!4303 lm!1477))))))

(assert (=> d!1388602 (= (containsKeyBiggerList!128 (t!357697 (toList!4303 lm!1477)) key!3287) e!2811531)))

(declare-fun b!4513031 () Bool)

(assert (=> b!4513031 (= e!2811532 (containsKey!1744 (_2!28808 (h!56452 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(declare-fun b!4513032 () Bool)

(declare-fun e!2811530 () Bool)

(assert (=> b!4513032 (= e!2811531 e!2811530)))

(declare-fun res!1877467 () Bool)

(assert (=> b!4513032 (=> (not res!1877467) (not e!2811530))))

(assert (=> b!4513032 (= res!1877467 ((_ is Cons!50611) (t!357697 (toList!4303 lm!1477))))))

(declare-fun b!4513033 () Bool)

(assert (=> b!4513033 (= e!2811530 (containsKeyBiggerList!128 (t!357697 (t!357697 (toList!4303 lm!1477))) key!3287))))

(assert (= (and d!1388602 res!1877465) b!4513031))

(assert (= (and d!1388602 (not res!1877466)) b!4513032))

(assert (= (and b!4513032 res!1877467) b!4513033))

(declare-fun m!5254593 () Bool)

(assert (=> b!4513031 m!5254593))

(declare-fun m!5254595 () Bool)

(assert (=> b!4513033 m!5254595))

(assert (=> b!4513024 d!1388602))

(declare-fun d!1388604 () Bool)

(declare-fun res!1877469 () Bool)

(declare-fun e!2811534 () Bool)

(assert (=> d!1388604 (=> res!1877469 e!2811534)))

(declare-fun e!2811535 () Bool)

(assert (=> d!1388604 (= res!1877469 e!2811535)))

(declare-fun res!1877468 () Bool)

(assert (=> d!1388604 (=> (not res!1877468) (not e!2811535))))

(assert (=> d!1388604 (= res!1877468 ((_ is Cons!50611) (toList!4303 lt!1691031)))))

(assert (=> d!1388604 (= (containsKeyBiggerList!128 (toList!4303 lt!1691031) key!3287) e!2811534)))

(declare-fun b!4513034 () Bool)

(assert (=> b!4513034 (= e!2811535 (containsKey!1744 (_2!28808 (h!56452 (toList!4303 lt!1691031))) key!3287))))

(declare-fun b!4513035 () Bool)

(declare-fun e!2811533 () Bool)

(assert (=> b!4513035 (= e!2811534 e!2811533)))

(declare-fun res!1877470 () Bool)

(assert (=> b!4513035 (=> (not res!1877470) (not e!2811533))))

(assert (=> b!4513035 (= res!1877470 ((_ is Cons!50611) (toList!4303 lt!1691031)))))

(declare-fun b!4513036 () Bool)

(assert (=> b!4513036 (= e!2811533 (containsKeyBiggerList!128 (t!357697 (toList!4303 lt!1691031)) key!3287))))

(assert (= (and d!1388604 res!1877468) b!4513034))

(assert (= (and d!1388604 (not res!1877469)) b!4513035))

(assert (= (and b!4513035 res!1877470) b!4513036))

(declare-fun m!5254597 () Bool)

(assert (=> b!4513034 m!5254597))

(declare-fun m!5254599 () Bool)

(assert (=> b!4513036 m!5254599))

(assert (=> b!4513024 d!1388604))

(declare-fun bs!849001 () Bool)

(declare-fun d!1388606 () Bool)

(assert (= bs!849001 (and d!1388606 start!446316)))

(declare-fun lambda!170988 () Int)

(assert (=> bs!849001 (= lambda!170988 lambda!170985)))

(assert (=> d!1388606 (containsKeyBiggerList!128 (toList!4303 lt!1691031) key!3287)))

(declare-fun lt!1691043 () Unit!93872)

(declare-fun choose!29363 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> d!1388606 (= lt!1691043 (choose!29363 lt!1691031 key!3287 hashF!1107))))

(assert (=> d!1388606 (forall!10233 (toList!4303 lt!1691031) lambda!170988)))

(assert (=> d!1388606 (= (lemmaInLongMapThenContainsKeyBiggerList!64 lt!1691031 key!3287 hashF!1107) lt!1691043)))

(declare-fun bs!849002 () Bool)

(assert (= bs!849002 d!1388606))

(assert (=> bs!849002 m!5254581))

(declare-fun m!5254601 () Bool)

(assert (=> bs!849002 m!5254601))

(declare-fun m!5254603 () Bool)

(assert (=> bs!849002 m!5254603))

(assert (=> b!4513024 d!1388606))

(declare-fun d!1388608 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8320 (List!50734) (InoxSet tuple2!51026))

(assert (=> d!1388608 (= (eq!605 lt!1691027 lt!1691023) (= (content!8320 (toList!4304 lt!1691027)) (content!8320 (toList!4304 lt!1691023))))))

(declare-fun bs!849003 () Bool)

(assert (= bs!849003 d!1388608))

(declare-fun m!5254605 () Bool)

(assert (=> bs!849003 m!5254605))

(declare-fun m!5254607 () Bool)

(assert (=> bs!849003 m!5254607))

(assert (=> b!4513023 d!1388608))

(declare-fun d!1388610 () Bool)

(declare-fun res!1877475 () Bool)

(declare-fun e!2811540 () Bool)

(assert (=> d!1388610 (=> res!1877475 e!2811540)))

(assert (=> d!1388610 (= res!1877475 ((_ is Nil!50611) (toList!4303 lm!1477)))))

(assert (=> d!1388610 (= (forall!10233 (toList!4303 lm!1477) lambda!170985) e!2811540)))

(declare-fun b!4513041 () Bool)

(declare-fun e!2811541 () Bool)

(assert (=> b!4513041 (= e!2811540 e!2811541)))

(declare-fun res!1877476 () Bool)

(assert (=> b!4513041 (=> (not res!1877476) (not e!2811541))))

(declare-fun dynLambda!21145 (Int tuple2!51028) Bool)

(assert (=> b!4513041 (= res!1877476 (dynLambda!21145 lambda!170985 (h!56452 (toList!4303 lm!1477))))))

(declare-fun b!4513042 () Bool)

(assert (=> b!4513042 (= e!2811541 (forall!10233 (t!357697 (toList!4303 lm!1477)) lambda!170985))))

(assert (= (and d!1388610 (not res!1877475)) b!4513041))

(assert (= (and b!4513041 res!1877476) b!4513042))

(declare-fun b_lambda!154037 () Bool)

(assert (=> (not b_lambda!154037) (not b!4513041)))

(declare-fun m!5254609 () Bool)

(assert (=> b!4513041 m!5254609))

(declare-fun m!5254611 () Bool)

(assert (=> b!4513042 m!5254611))

(assert (=> start!446316 d!1388610))

(declare-fun d!1388612 () Bool)

(declare-fun isStrictlySorted!419 (List!50735) Bool)

(assert (=> d!1388612 (= (inv!66194 lm!1477) (isStrictlySorted!419 (toList!4303 lm!1477)))))

(declare-fun bs!849004 () Bool)

(assert (= bs!849004 d!1388612))

(declare-fun m!5254613 () Bool)

(assert (=> bs!849004 m!5254613))

(assert (=> start!446316 d!1388612))

(declare-fun d!1388614 () Bool)

(declare-fun hash!2768 (Hashable!5543 K!12010) (_ BitVec 64))

(assert (=> d!1388614 (= (hash!2765 hashF!1107 key!3287) (hash!2768 hashF!1107 key!3287))))

(declare-fun bs!849005 () Bool)

(assert (= bs!849005 d!1388614))

(declare-fun m!5254615 () Bool)

(assert (=> bs!849005 m!5254615))

(assert (=> b!4513001 d!1388614))

(declare-fun d!1388616 () Bool)

(assert (=> d!1388616 (dynLambda!21145 lambda!170985 lt!1691030)))

(declare-fun lt!1691046 () Unit!93872)

(declare-fun choose!29364 (List!50735 Int tuple2!51028) Unit!93872)

(assert (=> d!1388616 (= lt!1691046 (choose!29364 (toList!4303 lm!1477) lambda!170985 lt!1691030))))

(declare-fun e!2811544 () Bool)

(assert (=> d!1388616 e!2811544))

(declare-fun res!1877479 () Bool)

(assert (=> d!1388616 (=> (not res!1877479) (not e!2811544))))

(assert (=> d!1388616 (= res!1877479 (forall!10233 (toList!4303 lm!1477) lambda!170985))))

(assert (=> d!1388616 (= (forallContained!2485 (toList!4303 lm!1477) lambda!170985 lt!1691030) lt!1691046)))

(declare-fun b!4513045 () Bool)

(assert (=> b!4513045 (= e!2811544 (contains!13317 (toList!4303 lm!1477) lt!1691030))))

(assert (= (and d!1388616 res!1877479) b!4513045))

(declare-fun b_lambda!154039 () Bool)

(assert (=> (not b_lambda!154039) (not d!1388616)))

(declare-fun m!5254617 () Bool)

(assert (=> d!1388616 m!5254617))

(declare-fun m!5254619 () Bool)

(assert (=> d!1388616 m!5254619))

(assert (=> d!1388616 m!5254587))

(assert (=> b!4513045 m!5254531))

(assert (=> b!4513012 d!1388616))

(declare-fun bs!849007 () Bool)

(declare-fun d!1388618 () Bool)

(assert (= bs!849007 (and d!1388618 start!446316)))

(declare-fun lambda!170991 () Int)

(assert (=> bs!849007 (= lambda!170991 lambda!170985)))

(declare-fun bs!849008 () Bool)

(assert (= bs!849008 (and d!1388618 d!1388606)))

(assert (=> bs!849008 (= lambda!170991 lambda!170988)))

(assert (=> d!1388618 (contains!13318 lm!1477 (hash!2765 hashF!1107 key!3287))))

(declare-fun lt!1691052 () Unit!93872)

(declare-fun choose!29365 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> d!1388618 (= lt!1691052 (choose!29365 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1388618 (forall!10233 (toList!4303 lm!1477) lambda!170991)))

(assert (=> d!1388618 (= (lemmaInGenMapThenLongMapContainsHash!222 lm!1477 key!3287 hashF!1107) lt!1691052)))

(declare-fun bs!849009 () Bool)

(assert (= bs!849009 d!1388618))

(assert (=> bs!849009 m!5254495))

(assert (=> bs!849009 m!5254495))

(declare-fun m!5254629 () Bool)

(assert (=> bs!849009 m!5254629))

(declare-fun m!5254631 () Bool)

(assert (=> bs!849009 m!5254631))

(declare-fun m!5254633 () Bool)

(assert (=> bs!849009 m!5254633))

(assert (=> b!4513012 d!1388618))

(declare-fun d!1388626 () Bool)

(declare-datatypes ((Option!11087 0))(
  ( (None!11086) (Some!11086 (v!44650 List!50734)) )
))
(declare-fun get!16564 (Option!11087) List!50734)

(declare-fun getValueByKey!1067 (List!50735 (_ BitVec 64)) Option!11087)

(assert (=> d!1388626 (= (apply!11885 lm!1477 hash!344) (get!16564 (getValueByKey!1067 (toList!4303 lm!1477) hash!344)))))

(declare-fun bs!849013 () Bool)

(assert (= bs!849013 d!1388626))

(declare-fun m!5254645 () Bool)

(assert (=> bs!849013 m!5254645))

(assert (=> bs!849013 m!5254645))

(declare-fun m!5254647 () Bool)

(assert (=> bs!849013 m!5254647))

(assert (=> b!4513012 d!1388626))

(declare-fun d!1388632 () Bool)

(declare-fun e!2811568 () Bool)

(assert (=> d!1388632 e!2811568))

(declare-fun res!1877491 () Bool)

(assert (=> d!1388632 (=> res!1877491 e!2811568)))

(declare-fun lt!1691084 () Bool)

(assert (=> d!1388632 (= res!1877491 (not lt!1691084))))

(declare-fun lt!1691083 () Bool)

(assert (=> d!1388632 (= lt!1691084 lt!1691083)))

(declare-fun lt!1691082 () Unit!93872)

(declare-fun e!2811567 () Unit!93872)

(assert (=> d!1388632 (= lt!1691082 e!2811567)))

(declare-fun c!769907 () Bool)

(assert (=> d!1388632 (= c!769907 lt!1691083)))

(declare-fun containsKey!1746 (List!50735 (_ BitVec 64)) Bool)

(assert (=> d!1388632 (= lt!1691083 (containsKey!1746 (toList!4303 lm!1477) lt!1691036))))

(assert (=> d!1388632 (= (contains!13318 lm!1477 lt!1691036) lt!1691084)))

(declare-fun b!4513079 () Bool)

(declare-fun lt!1691085 () Unit!93872)

(assert (=> b!4513079 (= e!2811567 lt!1691085)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!971 (List!50735 (_ BitVec 64)) Unit!93872)

(assert (=> b!4513079 (= lt!1691085 (lemmaContainsKeyImpliesGetValueByKeyDefined!971 (toList!4303 lm!1477) lt!1691036))))

(declare-fun isDefined!8374 (Option!11087) Bool)

(assert (=> b!4513079 (isDefined!8374 (getValueByKey!1067 (toList!4303 lm!1477) lt!1691036))))

(declare-fun b!4513080 () Bool)

(declare-fun Unit!93888 () Unit!93872)

(assert (=> b!4513080 (= e!2811567 Unit!93888)))

(declare-fun b!4513081 () Bool)

(assert (=> b!4513081 (= e!2811568 (isDefined!8374 (getValueByKey!1067 (toList!4303 lm!1477) lt!1691036)))))

(assert (= (and d!1388632 c!769907) b!4513079))

(assert (= (and d!1388632 (not c!769907)) b!4513080))

(assert (= (and d!1388632 (not res!1877491)) b!4513081))

(declare-fun m!5254669 () Bool)

(assert (=> d!1388632 m!5254669))

(declare-fun m!5254671 () Bool)

(assert (=> b!4513079 m!5254671))

(declare-fun m!5254673 () Bool)

(assert (=> b!4513079 m!5254673))

(assert (=> b!4513079 m!5254673))

(declare-fun m!5254675 () Bool)

(assert (=> b!4513079 m!5254675))

(assert (=> b!4513081 m!5254673))

(assert (=> b!4513081 m!5254673))

(assert (=> b!4513081 m!5254675))

(assert (=> b!4513012 d!1388632))

(declare-fun d!1388640 () Bool)

(assert (=> d!1388640 (contains!13317 (toList!4303 lm!1477) (tuple2!51029 hash!344 lt!1691025))))

(declare-fun lt!1691091 () Unit!93872)

(declare-fun choose!29366 (List!50735 (_ BitVec 64) List!50734) Unit!93872)

(assert (=> d!1388640 (= lt!1691091 (choose!29366 (toList!4303 lm!1477) hash!344 lt!1691025))))

(declare-fun e!2811577 () Bool)

(assert (=> d!1388640 e!2811577))

(declare-fun res!1877500 () Bool)

(assert (=> d!1388640 (=> (not res!1877500) (not e!2811577))))

(assert (=> d!1388640 (= res!1877500 (isStrictlySorted!419 (toList!4303 lm!1477)))))

(assert (=> d!1388640 (= (lemmaGetValueByKeyImpliesContainsTuple!660 (toList!4303 lm!1477) hash!344 lt!1691025) lt!1691091)))

(declare-fun b!4513090 () Bool)

(assert (=> b!4513090 (= e!2811577 (= (getValueByKey!1067 (toList!4303 lm!1477) hash!344) (Some!11086 lt!1691025)))))

(assert (= (and d!1388640 res!1877500) b!4513090))

(declare-fun m!5254685 () Bool)

(assert (=> d!1388640 m!5254685))

(declare-fun m!5254687 () Bool)

(assert (=> d!1388640 m!5254687))

(assert (=> d!1388640 m!5254613))

(assert (=> b!4513090 m!5254645))

(assert (=> b!4513012 d!1388640))

(declare-fun b!4513102 () Bool)

(declare-fun e!2811583 () List!50734)

(assert (=> b!4513102 (= e!2811583 Nil!50610)))

(declare-fun b!4513099 () Bool)

(declare-fun e!2811582 () List!50734)

(assert (=> b!4513099 (= e!2811582 (t!357696 lt!1691025))))

(declare-fun d!1388646 () Bool)

(declare-fun lt!1691094 () List!50734)

(assert (=> d!1388646 (not (containsKey!1744 lt!1691094 key!3287))))

(assert (=> d!1388646 (= lt!1691094 e!2811582)))

(declare-fun c!769912 () Bool)

(assert (=> d!1388646 (= c!769912 (and ((_ is Cons!50610) lt!1691025) (= (_1!28807 (h!56451 lt!1691025)) key!3287)))))

(assert (=> d!1388646 (noDuplicateKeys!1148 lt!1691025)))

(assert (=> d!1388646 (= (removePairForKey!775 lt!1691025 key!3287) lt!1691094)))

(declare-fun b!4513101 () Bool)

(assert (=> b!4513101 (= e!2811583 (Cons!50610 (h!56451 lt!1691025) (removePairForKey!775 (t!357696 lt!1691025) key!3287)))))

(declare-fun b!4513100 () Bool)

(assert (=> b!4513100 (= e!2811582 e!2811583)))

(declare-fun c!769913 () Bool)

(assert (=> b!4513100 (= c!769913 ((_ is Cons!50610) lt!1691025))))

(assert (= (and d!1388646 c!769912) b!4513099))

(assert (= (and d!1388646 (not c!769912)) b!4513100))

(assert (= (and b!4513100 c!769913) b!4513101))

(assert (= (and b!4513100 (not c!769913)) b!4513102))

(declare-fun m!5254689 () Bool)

(assert (=> d!1388646 m!5254689))

(declare-fun m!5254691 () Bool)

(assert (=> d!1388646 m!5254691))

(declare-fun m!5254693 () Bool)

(assert (=> b!4513101 m!5254693))

(assert (=> b!4513012 d!1388646))

(declare-fun d!1388648 () Bool)

(declare-fun lt!1691097 () Bool)

(declare-fun content!8321 (List!50735) (InoxSet tuple2!51028))

(assert (=> d!1388648 (= lt!1691097 (select (content!8321 (toList!4303 lm!1477)) lt!1691030))))

(declare-fun e!2811589 () Bool)

(assert (=> d!1388648 (= lt!1691097 e!2811589)))

(declare-fun res!1877506 () Bool)

(assert (=> d!1388648 (=> (not res!1877506) (not e!2811589))))

(assert (=> d!1388648 (= res!1877506 ((_ is Cons!50611) (toList!4303 lm!1477)))))

(assert (=> d!1388648 (= (contains!13317 (toList!4303 lm!1477) lt!1691030) lt!1691097)))

(declare-fun b!4513107 () Bool)

(declare-fun e!2811588 () Bool)

(assert (=> b!4513107 (= e!2811589 e!2811588)))

(declare-fun res!1877505 () Bool)

(assert (=> b!4513107 (=> res!1877505 e!2811588)))

(assert (=> b!4513107 (= res!1877505 (= (h!56452 (toList!4303 lm!1477)) lt!1691030))))

(declare-fun b!4513108 () Bool)

(assert (=> b!4513108 (= e!2811588 (contains!13317 (t!357697 (toList!4303 lm!1477)) lt!1691030))))

(assert (= (and d!1388648 res!1877506) b!4513107))

(assert (= (and b!4513107 (not res!1877505)) b!4513108))

(declare-fun m!5254695 () Bool)

(assert (=> d!1388648 m!5254695))

(declare-fun m!5254697 () Bool)

(assert (=> d!1388648 m!5254697))

(assert (=> b!4513108 m!5254517))

(assert (=> b!4513012 d!1388648))

(declare-fun d!1388650 () Bool)

(assert (=> d!1388650 true))

(assert (=> d!1388650 true))

(declare-fun lambda!170997 () Int)

(declare-fun forall!10235 (List!50734 Int) Bool)

(assert (=> d!1388650 (= (allKeysSameHash!1002 newBucket!178 hash!344 hashF!1107) (forall!10235 newBucket!178 lambda!170997))))

(declare-fun bs!849015 () Bool)

(assert (= bs!849015 d!1388650))

(declare-fun m!5254699 () Bool)

(assert (=> bs!849015 m!5254699))

(assert (=> b!4513011 d!1388650))

(declare-fun d!1388652 () Bool)

(declare-fun res!1877507 () Bool)

(declare-fun e!2811590 () Bool)

(assert (=> d!1388652 (=> res!1877507 e!2811590)))

(assert (=> d!1388652 (= res!1877507 ((_ is Nil!50611) (toList!4303 lt!1691031)))))

(assert (=> d!1388652 (= (forall!10233 (toList!4303 lt!1691031) lambda!170985) e!2811590)))

(declare-fun b!4513113 () Bool)

(declare-fun e!2811591 () Bool)

(assert (=> b!4513113 (= e!2811590 e!2811591)))

(declare-fun res!1877508 () Bool)

(assert (=> b!4513113 (=> (not res!1877508) (not e!2811591))))

(assert (=> b!4513113 (= res!1877508 (dynLambda!21145 lambda!170985 (h!56452 (toList!4303 lt!1691031))))))

(declare-fun b!4513114 () Bool)

(assert (=> b!4513114 (= e!2811591 (forall!10233 (t!357697 (toList!4303 lt!1691031)) lambda!170985))))

(assert (= (and d!1388652 (not res!1877507)) b!4513113))

(assert (= (and b!4513113 res!1877508) b!4513114))

(declare-fun b_lambda!154043 () Bool)

(assert (=> (not b_lambda!154043) (not b!4513113)))

(declare-fun m!5254701 () Bool)

(assert (=> b!4513113 m!5254701))

(declare-fun m!5254703 () Bool)

(assert (=> b!4513114 m!5254703))

(assert (=> b!4513022 d!1388652))

(declare-fun d!1388654 () Bool)

(assert (=> d!1388654 (= (eq!605 lt!1691040 (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691024)) (= (content!8320 (toList!4304 lt!1691040)) (content!8320 (toList!4304 (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691024)))))))

(declare-fun bs!849016 () Bool)

(assert (= bs!849016 d!1388654))

(declare-fun m!5254705 () Bool)

(assert (=> bs!849016 m!5254705))

(declare-fun m!5254707 () Bool)

(assert (=> bs!849016 m!5254707))

(assert (=> b!4513022 d!1388654))

(declare-fun bs!849041 () Bool)

(declare-fun b!4513186 () Bool)

(assert (= bs!849041 (and b!4513186 d!1388650)))

(declare-fun lambda!171068 () Int)

(assert (=> bs!849041 (not (= lambda!171068 lambda!170997))))

(assert (=> b!4513186 true))

(declare-fun bs!849042 () Bool)

(declare-fun b!4513185 () Bool)

(assert (= bs!849042 (and b!4513185 d!1388650)))

(declare-fun lambda!171069 () Int)

(assert (=> bs!849042 (not (= lambda!171069 lambda!170997))))

(declare-fun bs!849043 () Bool)

(assert (= bs!849043 (and b!4513185 b!4513186)))

(assert (=> bs!849043 (= lambda!171069 lambda!171068)))

(assert (=> b!4513185 true))

(declare-fun lambda!171070 () Int)

(assert (=> bs!849042 (not (= lambda!171070 lambda!170997))))

(declare-fun lt!1691261 () ListMap!3565)

(assert (=> bs!849043 (= (= lt!1691261 lt!1691024) (= lambda!171070 lambda!171068))))

(assert (=> b!4513185 (= (= lt!1691261 lt!1691024) (= lambda!171070 lambda!171069))))

(assert (=> b!4513185 true))

(declare-fun bs!849048 () Bool)

(declare-fun d!1388656 () Bool)

(assert (= bs!849048 (and d!1388656 d!1388650)))

(declare-fun lambda!171072 () Int)

(assert (=> bs!849048 (not (= lambda!171072 lambda!170997))))

(declare-fun bs!849049 () Bool)

(assert (= bs!849049 (and d!1388656 b!4513186)))

(declare-fun lt!1691260 () ListMap!3565)

(assert (=> bs!849049 (= (= lt!1691260 lt!1691024) (= lambda!171072 lambda!171068))))

(declare-fun bs!849050 () Bool)

(assert (= bs!849050 (and d!1388656 b!4513185)))

(assert (=> bs!849050 (= (= lt!1691260 lt!1691024) (= lambda!171072 lambda!171069))))

(assert (=> bs!849050 (= (= lt!1691260 lt!1691261) (= lambda!171072 lambda!171070))))

(assert (=> d!1388656 true))

(declare-fun e!2811638 () ListMap!3565)

(assert (=> b!4513185 (= e!2811638 lt!1691261)))

(declare-fun lt!1691258 () ListMap!3565)

(declare-fun +!1516 (ListMap!3565 tuple2!51026) ListMap!3565)

(assert (=> b!4513185 (= lt!1691258 (+!1516 lt!1691024 (h!56451 (_2!28808 lt!1691035))))))

(assert (=> b!4513185 (= lt!1691261 (addToMapMapFromBucket!675 (t!357696 (_2!28808 lt!1691035)) (+!1516 lt!1691024 (h!56451 (_2!28808 lt!1691035)))))))

(declare-fun lt!1691250 () Unit!93872)

(declare-fun call!314315 () Unit!93872)

(assert (=> b!4513185 (= lt!1691250 call!314315)))

(assert (=> b!4513185 (forall!10235 (toList!4304 lt!1691024) lambda!171069)))

(declare-fun lt!1691266 () Unit!93872)

(assert (=> b!4513185 (= lt!1691266 lt!1691250)))

(assert (=> b!4513185 (forall!10235 (toList!4304 lt!1691258) lambda!171070)))

(declare-fun lt!1691257 () Unit!93872)

(declare-fun Unit!93900 () Unit!93872)

(assert (=> b!4513185 (= lt!1691257 Unit!93900)))

(assert (=> b!4513185 (forall!10235 (t!357696 (_2!28808 lt!1691035)) lambda!171070)))

(declare-fun lt!1691259 () Unit!93872)

(declare-fun Unit!93901 () Unit!93872)

(assert (=> b!4513185 (= lt!1691259 Unit!93901)))

(declare-fun lt!1691247 () Unit!93872)

(declare-fun Unit!93902 () Unit!93872)

(assert (=> b!4513185 (= lt!1691247 Unit!93902)))

(declare-fun lt!1691246 () Unit!93872)

(declare-fun forallContained!2487 (List!50734 Int tuple2!51026) Unit!93872)

(assert (=> b!4513185 (= lt!1691246 (forallContained!2487 (toList!4304 lt!1691258) lambda!171070 (h!56451 (_2!28808 lt!1691035))))))

(assert (=> b!4513185 (contains!13319 lt!1691258 (_1!28807 (h!56451 (_2!28808 lt!1691035))))))

(declare-fun lt!1691265 () Unit!93872)

(declare-fun Unit!93903 () Unit!93872)

(assert (=> b!4513185 (= lt!1691265 Unit!93903)))

(assert (=> b!4513185 (contains!13319 lt!1691261 (_1!28807 (h!56451 (_2!28808 lt!1691035))))))

(declare-fun lt!1691251 () Unit!93872)

(declare-fun Unit!93904 () Unit!93872)

(assert (=> b!4513185 (= lt!1691251 Unit!93904)))

(assert (=> b!4513185 (forall!10235 (_2!28808 lt!1691035) lambda!171070)))

(declare-fun lt!1691248 () Unit!93872)

(declare-fun Unit!93905 () Unit!93872)

(assert (=> b!4513185 (= lt!1691248 Unit!93905)))

(declare-fun call!314316 () Bool)

(assert (=> b!4513185 call!314316))

(declare-fun lt!1691253 () Unit!93872)

(declare-fun Unit!93906 () Unit!93872)

(assert (=> b!4513185 (= lt!1691253 Unit!93906)))

(declare-fun lt!1691249 () Unit!93872)

(declare-fun Unit!93907 () Unit!93872)

(assert (=> b!4513185 (= lt!1691249 Unit!93907)))

(declare-fun lt!1691256 () Unit!93872)

(declare-fun addForallContainsKeyThenBeforeAdding!326 (ListMap!3565 ListMap!3565 K!12010 V!12256) Unit!93872)

(assert (=> b!4513185 (= lt!1691256 (addForallContainsKeyThenBeforeAdding!326 lt!1691024 lt!1691261 (_1!28807 (h!56451 (_2!28808 lt!1691035))) (_2!28807 (h!56451 (_2!28808 lt!1691035)))))))

(declare-fun call!314314 () Bool)

(assert (=> b!4513185 call!314314))

(declare-fun lt!1691263 () Unit!93872)

(assert (=> b!4513185 (= lt!1691263 lt!1691256)))

(assert (=> b!4513185 (forall!10235 (toList!4304 lt!1691024) lambda!171070)))

(declare-fun lt!1691264 () Unit!93872)

(declare-fun Unit!93908 () Unit!93872)

(assert (=> b!4513185 (= lt!1691264 Unit!93908)))

(declare-fun res!1877546 () Bool)

(assert (=> b!4513185 (= res!1877546 (forall!10235 (_2!28808 lt!1691035) lambda!171070))))

(declare-fun e!2811637 () Bool)

(assert (=> b!4513185 (=> (not res!1877546) (not e!2811637))))

(assert (=> b!4513185 e!2811637))

(declare-fun lt!1691255 () Unit!93872)

(declare-fun Unit!93909 () Unit!93872)

(assert (=> b!4513185 (= lt!1691255 Unit!93909)))

(declare-fun e!2811639 () Bool)

(assert (=> d!1388656 e!2811639))

(declare-fun res!1877545 () Bool)

(assert (=> d!1388656 (=> (not res!1877545) (not e!2811639))))

(assert (=> d!1388656 (= res!1877545 (forall!10235 (_2!28808 lt!1691035) lambda!171072))))

(assert (=> d!1388656 (= lt!1691260 e!2811638)))

(declare-fun c!769929 () Bool)

(assert (=> d!1388656 (= c!769929 ((_ is Nil!50610) (_2!28808 lt!1691035)))))

(assert (=> d!1388656 (noDuplicateKeys!1148 (_2!28808 lt!1691035))))

(assert (=> d!1388656 (= (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691024) lt!1691260)))

(assert (=> b!4513186 (= e!2811638 lt!1691024)))

(declare-fun lt!1691262 () Unit!93872)

(assert (=> b!4513186 (= lt!1691262 call!314315)))

(assert (=> b!4513186 call!314314))

(declare-fun lt!1691252 () Unit!93872)

(assert (=> b!4513186 (= lt!1691252 lt!1691262)))

(assert (=> b!4513186 call!314316))

(declare-fun lt!1691254 () Unit!93872)

(declare-fun Unit!93910 () Unit!93872)

(assert (=> b!4513186 (= lt!1691254 Unit!93910)))

(declare-fun b!4513187 () Bool)

(assert (=> b!4513187 (= e!2811637 (forall!10235 (toList!4304 lt!1691024) lambda!171070))))

(declare-fun b!4513188 () Bool)

(declare-fun res!1877547 () Bool)

(assert (=> b!4513188 (=> (not res!1877547) (not e!2811639))))

(assert (=> b!4513188 (= res!1877547 (forall!10235 (toList!4304 lt!1691024) lambda!171072))))

(declare-fun bm!314309 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!326 (ListMap!3565) Unit!93872)

(assert (=> bm!314309 (= call!314315 (lemmaContainsAllItsOwnKeys!326 lt!1691024))))

(declare-fun bm!314310 () Bool)

(assert (=> bm!314310 (= call!314316 (forall!10235 (ite c!769929 (toList!4304 lt!1691024) (toList!4304 lt!1691258)) (ite c!769929 lambda!171068 lambda!171070)))))

(declare-fun bm!314311 () Bool)

(assert (=> bm!314311 (= call!314314 (forall!10235 (toList!4304 lt!1691024) (ite c!769929 lambda!171068 lambda!171070)))))

(declare-fun b!4513189 () Bool)

(declare-fun invariantList!1005 (List!50734) Bool)

(assert (=> b!4513189 (= e!2811639 (invariantList!1005 (toList!4304 lt!1691260)))))

(assert (= (and d!1388656 c!769929) b!4513186))

(assert (= (and d!1388656 (not c!769929)) b!4513185))

(assert (= (and b!4513185 res!1877546) b!4513187))

(assert (= (or b!4513186 b!4513185) bm!314310))

(assert (= (or b!4513186 b!4513185) bm!314311))

(assert (= (or b!4513186 b!4513185) bm!314309))

(assert (= (and d!1388656 res!1877545) b!4513188))

(assert (= (and b!4513188 res!1877547) b!4513189))

(declare-fun m!5254827 () Bool)

(assert (=> b!4513188 m!5254827))

(declare-fun m!5254829 () Bool)

(assert (=> b!4513189 m!5254829))

(declare-fun m!5254831 () Bool)

(assert (=> bm!314311 m!5254831))

(declare-fun m!5254833 () Bool)

(assert (=> d!1388656 m!5254833))

(declare-fun m!5254835 () Bool)

(assert (=> d!1388656 m!5254835))

(declare-fun m!5254837 () Bool)

(assert (=> bm!314310 m!5254837))

(declare-fun m!5254839 () Bool)

(assert (=> b!4513187 m!5254839))

(declare-fun m!5254841 () Bool)

(assert (=> b!4513185 m!5254841))

(declare-fun m!5254843 () Bool)

(assert (=> b!4513185 m!5254843))

(declare-fun m!5254845 () Bool)

(assert (=> b!4513185 m!5254845))

(declare-fun m!5254847 () Bool)

(assert (=> b!4513185 m!5254847))

(declare-fun m!5254849 () Bool)

(assert (=> b!4513185 m!5254849))

(declare-fun m!5254851 () Bool)

(assert (=> b!4513185 m!5254851))

(declare-fun m!5254853 () Bool)

(assert (=> b!4513185 m!5254853))

(declare-fun m!5254855 () Bool)

(assert (=> b!4513185 m!5254855))

(assert (=> b!4513185 m!5254853))

(declare-fun m!5254857 () Bool)

(assert (=> b!4513185 m!5254857))

(assert (=> b!4513185 m!5254849))

(assert (=> b!4513185 m!5254839))

(declare-fun m!5254859 () Bool)

(assert (=> b!4513185 m!5254859))

(declare-fun m!5254861 () Bool)

(assert (=> bm!314309 m!5254861))

(assert (=> b!4513022 d!1388656))

(declare-fun d!1388680 () Bool)

(assert (=> d!1388680 (eq!605 (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691020) (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691024))))

(declare-fun lt!1691281 () Unit!93872)

(declare-fun choose!29368 (ListMap!3565 ListMap!3565 List!50734) Unit!93872)

(assert (=> d!1388680 (= lt!1691281 (choose!29368 lt!1691020 lt!1691024 (_2!28808 lt!1691035)))))

(assert (=> d!1388680 (noDuplicateKeys!1148 (_2!28808 lt!1691035))))

(assert (=> d!1388680 (= (lemmaAddToMapFromBucketPreservesEquivalence!24 lt!1691020 lt!1691024 (_2!28808 lt!1691035)) lt!1691281)))

(declare-fun bs!849057 () Bool)

(assert (= bs!849057 d!1388680))

(assert (=> bs!849057 m!5254499))

(assert (=> bs!849057 m!5254511))

(declare-fun m!5254867 () Bool)

(assert (=> bs!849057 m!5254867))

(declare-fun m!5254871 () Bool)

(assert (=> bs!849057 m!5254871))

(assert (=> bs!849057 m!5254835))

(assert (=> bs!849057 m!5254499))

(assert (=> bs!849057 m!5254511))

(assert (=> b!4513022 d!1388680))

(declare-fun b!4513260 () Bool)

(declare-fun e!2811689 () Bool)

(declare-datatypes ((List!50737 0))(
  ( (Nil!50613) (Cons!50613 (h!56456 K!12010) (t!357699 List!50737)) )
))
(declare-fun contains!13321 (List!50737 K!12010) Bool)

(declare-fun keys!17570 (ListMap!3565) List!50737)

(assert (=> b!4513260 (= e!2811689 (not (contains!13321 (keys!17570 lt!1691027) key!3287)))))

(declare-fun b!4513261 () Bool)

(declare-fun e!2811686 () Unit!93872)

(declare-fun Unit!93913 () Unit!93872)

(assert (=> b!4513261 (= e!2811686 Unit!93913)))

(declare-fun b!4513262 () Bool)

(declare-fun e!2811690 () List!50737)

(assert (=> b!4513262 (= e!2811690 (keys!17570 lt!1691027))))

(declare-fun b!4513263 () Bool)

(declare-fun e!2811688 () Bool)

(assert (=> b!4513263 (= e!2811688 (contains!13321 (keys!17570 lt!1691027) key!3287))))

(declare-fun bm!314317 () Bool)

(declare-fun call!314322 () Bool)

(assert (=> bm!314317 (= call!314322 (contains!13321 e!2811690 key!3287))))

(declare-fun c!769949 () Bool)

(declare-fun c!769948 () Bool)

(assert (=> bm!314317 (= c!769949 c!769948)))

(declare-fun b!4513264 () Bool)

(declare-fun e!2811687 () Unit!93872)

(assert (=> b!4513264 (= e!2811687 e!2811686)))

(declare-fun c!769950 () Bool)

(assert (=> b!4513264 (= c!769950 call!314322)))

(declare-fun d!1388684 () Bool)

(declare-fun e!2811691 () Bool)

(assert (=> d!1388684 e!2811691))

(declare-fun res!1877580 () Bool)

(assert (=> d!1388684 (=> res!1877580 e!2811691)))

(assert (=> d!1388684 (= res!1877580 e!2811689)))

(declare-fun res!1877581 () Bool)

(assert (=> d!1388684 (=> (not res!1877581) (not e!2811689))))

(declare-fun lt!1691335 () Bool)

(assert (=> d!1388684 (= res!1877581 (not lt!1691335))))

(declare-fun lt!1691338 () Bool)

(assert (=> d!1388684 (= lt!1691335 lt!1691338)))

(declare-fun lt!1691342 () Unit!93872)

(assert (=> d!1388684 (= lt!1691342 e!2811687)))

(assert (=> d!1388684 (= c!769948 lt!1691338)))

(declare-fun containsKey!1748 (List!50734 K!12010) Bool)

(assert (=> d!1388684 (= lt!1691338 (containsKey!1748 (toList!4304 lt!1691027) key!3287))))

(assert (=> d!1388684 (= (contains!13319 lt!1691027 key!3287) lt!1691335)))

(declare-fun b!4513265 () Bool)

(assert (=> b!4513265 false))

(declare-fun lt!1691336 () Unit!93872)

(declare-fun lt!1691339 () Unit!93872)

(assert (=> b!4513265 (= lt!1691336 lt!1691339)))

(assert (=> b!4513265 (containsKey!1748 (toList!4304 lt!1691027) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!452 (List!50734 K!12010) Unit!93872)

(assert (=> b!4513265 (= lt!1691339 (lemmaInGetKeysListThenContainsKey!452 (toList!4304 lt!1691027) key!3287))))

(declare-fun Unit!93914 () Unit!93872)

(assert (=> b!4513265 (= e!2811686 Unit!93914)))

(declare-fun b!4513266 () Bool)

(declare-fun lt!1691337 () Unit!93872)

(assert (=> b!4513266 (= e!2811687 lt!1691337)))

(declare-fun lt!1691341 () Unit!93872)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!973 (List!50734 K!12010) Unit!93872)

(assert (=> b!4513266 (= lt!1691341 (lemmaContainsKeyImpliesGetValueByKeyDefined!973 (toList!4304 lt!1691027) key!3287))))

(declare-datatypes ((Option!11089 0))(
  ( (None!11088) (Some!11088 (v!44652 V!12256)) )
))
(declare-fun isDefined!8376 (Option!11089) Bool)

(declare-fun getValueByKey!1069 (List!50734 K!12010) Option!11089)

(assert (=> b!4513266 (isDefined!8376 (getValueByKey!1069 (toList!4304 lt!1691027) key!3287))))

(declare-fun lt!1691340 () Unit!93872)

(assert (=> b!4513266 (= lt!1691340 lt!1691341)))

(declare-fun lemmaInListThenGetKeysListContains!449 (List!50734 K!12010) Unit!93872)

(assert (=> b!4513266 (= lt!1691337 (lemmaInListThenGetKeysListContains!449 (toList!4304 lt!1691027) key!3287))))

(assert (=> b!4513266 call!314322))

(declare-fun b!4513267 () Bool)

(declare-fun getKeysList!453 (List!50734) List!50737)

(assert (=> b!4513267 (= e!2811690 (getKeysList!453 (toList!4304 lt!1691027)))))

(declare-fun b!4513268 () Bool)

(assert (=> b!4513268 (= e!2811691 e!2811688)))

(declare-fun res!1877582 () Bool)

(assert (=> b!4513268 (=> (not res!1877582) (not e!2811688))))

(assert (=> b!4513268 (= res!1877582 (isDefined!8376 (getValueByKey!1069 (toList!4304 lt!1691027) key!3287)))))

(assert (= (and d!1388684 c!769948) b!4513266))

(assert (= (and d!1388684 (not c!769948)) b!4513264))

(assert (= (and b!4513264 c!769950) b!4513265))

(assert (= (and b!4513264 (not c!769950)) b!4513261))

(assert (= (or b!4513266 b!4513264) bm!314317))

(assert (= (and bm!314317 c!769949) b!4513267))

(assert (= (and bm!314317 (not c!769949)) b!4513262))

(assert (= (and d!1388684 res!1877581) b!4513260))

(assert (= (and d!1388684 (not res!1877580)) b!4513268))

(assert (= (and b!4513268 res!1877582) b!4513263))

(declare-fun m!5254961 () Bool)

(assert (=> b!4513263 m!5254961))

(assert (=> b!4513263 m!5254961))

(declare-fun m!5254963 () Bool)

(assert (=> b!4513263 m!5254963))

(declare-fun m!5254965 () Bool)

(assert (=> b!4513268 m!5254965))

(assert (=> b!4513268 m!5254965))

(declare-fun m!5254967 () Bool)

(assert (=> b!4513268 m!5254967))

(declare-fun m!5254969 () Bool)

(assert (=> b!4513267 m!5254969))

(declare-fun m!5254971 () Bool)

(assert (=> bm!314317 m!5254971))

(declare-fun m!5254973 () Bool)

(assert (=> d!1388684 m!5254973))

(assert (=> b!4513260 m!5254961))

(assert (=> b!4513260 m!5254961))

(assert (=> b!4513260 m!5254963))

(declare-fun m!5254975 () Bool)

(assert (=> b!4513266 m!5254975))

(assert (=> b!4513266 m!5254965))

(assert (=> b!4513266 m!5254965))

(assert (=> b!4513266 m!5254967))

(declare-fun m!5254977 () Bool)

(assert (=> b!4513266 m!5254977))

(assert (=> b!4513262 m!5254961))

(assert (=> b!4513265 m!5254973))

(declare-fun m!5254979 () Bool)

(assert (=> b!4513265 m!5254979))

(assert (=> b!4513021 d!1388684))

(declare-fun bs!849071 () Bool)

(declare-fun d!1388708 () Bool)

(assert (= bs!849071 (and d!1388708 start!446316)))

(declare-fun lambda!171082 () Int)

(assert (=> bs!849071 (= lambda!171082 lambda!170985)))

(declare-fun bs!849073 () Bool)

(assert (= bs!849073 (and d!1388708 d!1388606)))

(assert (=> bs!849073 (= lambda!171082 lambda!170988)))

(declare-fun bs!849075 () Bool)

(assert (= bs!849075 (and d!1388708 d!1388618)))

(assert (=> bs!849075 (= lambda!171082 lambda!170991)))

(declare-fun lt!1691348 () ListMap!3565)

(assert (=> d!1388708 (invariantList!1005 (toList!4304 lt!1691348))))

(declare-fun e!2811694 () ListMap!3565)

(assert (=> d!1388708 (= lt!1691348 e!2811694)))

(declare-fun c!769953 () Bool)

(assert (=> d!1388708 (= c!769953 ((_ is Cons!50611) (toList!4303 lm!1477)))))

(assert (=> d!1388708 (forall!10233 (toList!4303 lm!1477) lambda!171082)))

(assert (=> d!1388708 (= (extractMap!1204 (toList!4303 lm!1477)) lt!1691348)))

(declare-fun b!4513273 () Bool)

(assert (=> b!4513273 (= e!2811694 (addToMapMapFromBucket!675 (_2!28808 (h!56452 (toList!4303 lm!1477))) (extractMap!1204 (t!357697 (toList!4303 lm!1477)))))))

(declare-fun b!4513274 () Bool)

(assert (=> b!4513274 (= e!2811694 (ListMap!3566 Nil!50610))))

(assert (= (and d!1388708 c!769953) b!4513273))

(assert (= (and d!1388708 (not c!769953)) b!4513274))

(declare-fun m!5254983 () Bool)

(assert (=> d!1388708 m!5254983))

(declare-fun m!5254987 () Bool)

(assert (=> d!1388708 m!5254987))

(assert (=> b!4513273 m!5254567))

(assert (=> b!4513273 m!5254567))

(declare-fun m!5254991 () Bool)

(assert (=> b!4513273 m!5254991))

(assert (=> b!4513021 d!1388708))

(declare-fun d!1388712 () Bool)

(declare-fun res!1877589 () Bool)

(declare-fun e!2811702 () Bool)

(assert (=> d!1388712 (=> res!1877589 e!2811702)))

(assert (=> d!1388712 (= res!1877589 (and ((_ is Cons!50610) lt!1691025) (= (_1!28807 (h!56451 lt!1691025)) key!3287)))))

(assert (=> d!1388712 (= (containsKey!1744 lt!1691025 key!3287) e!2811702)))

(declare-fun b!4513283 () Bool)

(declare-fun e!2811703 () Bool)

(assert (=> b!4513283 (= e!2811702 e!2811703)))

(declare-fun res!1877590 () Bool)

(assert (=> b!4513283 (=> (not res!1877590) (not e!2811703))))

(assert (=> b!4513283 (= res!1877590 ((_ is Cons!50610) lt!1691025))))

(declare-fun b!4513284 () Bool)

(assert (=> b!4513284 (= e!2811703 (containsKey!1744 (t!357696 lt!1691025) key!3287))))

(assert (= (and d!1388712 (not res!1877589)) b!4513283))

(assert (= (and b!4513283 res!1877590) b!4513284))

(declare-fun m!5255007 () Bool)

(assert (=> b!4513284 m!5255007))

(assert (=> b!4513010 d!1388712))

(declare-fun d!1388718 () Bool)

(declare-fun head!9389 (List!50735) tuple2!51028)

(assert (=> d!1388718 (= (head!9388 lt!1691029) (head!9389 (toList!4303 lt!1691029)))))

(declare-fun bs!849086 () Bool)

(assert (= bs!849086 d!1388718))

(declare-fun m!5255009 () Bool)

(assert (=> bs!849086 m!5255009))

(assert (=> b!4513009 d!1388718))

(declare-fun d!1388720 () Bool)

(assert (=> d!1388720 (= (apply!11885 lt!1691031 hash!344) (get!16564 (getValueByKey!1067 (toList!4303 lt!1691031) hash!344)))))

(declare-fun bs!849087 () Bool)

(assert (= bs!849087 d!1388720))

(declare-fun m!5255011 () Bool)

(assert (=> bs!849087 m!5255011))

(assert (=> bs!849087 m!5255011))

(declare-fun m!5255013 () Bool)

(assert (=> bs!849087 m!5255013))

(assert (=> b!4513019 d!1388720))

(declare-fun d!1388722 () Bool)

(declare-fun e!2811705 () Bool)

(assert (=> d!1388722 e!2811705))

(declare-fun res!1877591 () Bool)

(assert (=> d!1388722 (=> res!1877591 e!2811705)))

(declare-fun lt!1691353 () Bool)

(assert (=> d!1388722 (= res!1877591 (not lt!1691353))))

(declare-fun lt!1691352 () Bool)

(assert (=> d!1388722 (= lt!1691353 lt!1691352)))

(declare-fun lt!1691351 () Unit!93872)

(declare-fun e!2811704 () Unit!93872)

(assert (=> d!1388722 (= lt!1691351 e!2811704)))

(declare-fun c!769955 () Bool)

(assert (=> d!1388722 (= c!769955 lt!1691352)))

(assert (=> d!1388722 (= lt!1691352 (containsKey!1746 (toList!4303 lt!1691031) hash!344))))

(assert (=> d!1388722 (= (contains!13318 lt!1691031 hash!344) lt!1691353)))

(declare-fun b!4513285 () Bool)

(declare-fun lt!1691354 () Unit!93872)

(assert (=> b!4513285 (= e!2811704 lt!1691354)))

(assert (=> b!4513285 (= lt!1691354 (lemmaContainsKeyImpliesGetValueByKeyDefined!971 (toList!4303 lt!1691031) hash!344))))

(assert (=> b!4513285 (isDefined!8374 (getValueByKey!1067 (toList!4303 lt!1691031) hash!344))))

(declare-fun b!4513286 () Bool)

(declare-fun Unit!93916 () Unit!93872)

(assert (=> b!4513286 (= e!2811704 Unit!93916)))

(declare-fun b!4513287 () Bool)

(assert (=> b!4513287 (= e!2811705 (isDefined!8374 (getValueByKey!1067 (toList!4303 lt!1691031) hash!344)))))

(assert (= (and d!1388722 c!769955) b!4513285))

(assert (= (and d!1388722 (not c!769955)) b!4513286))

(assert (= (and d!1388722 (not res!1877591)) b!4513287))

(declare-fun m!5255015 () Bool)

(assert (=> d!1388722 m!5255015))

(declare-fun m!5255017 () Bool)

(assert (=> b!4513285 m!5255017))

(assert (=> b!4513285 m!5255011))

(assert (=> b!4513285 m!5255011))

(declare-fun m!5255019 () Bool)

(assert (=> b!4513285 m!5255019))

(assert (=> b!4513287 m!5255011))

(assert (=> b!4513287 m!5255011))

(assert (=> b!4513287 m!5255019))

(assert (=> b!4513007 d!1388722))

(declare-fun d!1388724 () Bool)

(declare-fun tail!7711 (List!50735) List!50735)

(assert (=> d!1388724 (= (tail!7710 lm!1477) (ListLongMap!2936 (tail!7711 (toList!4303 lm!1477))))))

(declare-fun bs!849088 () Bool)

(assert (= bs!849088 d!1388724))

(declare-fun m!5255021 () Bool)

(assert (=> bs!849088 m!5255021))

(assert (=> b!4513007 d!1388724))

(declare-fun b!4513288 () Bool)

(declare-fun e!2811709 () Bool)

(assert (=> b!4513288 (= e!2811709 (not (contains!13321 (keys!17570 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287)))))

(declare-fun b!4513289 () Bool)

(declare-fun e!2811706 () Unit!93872)

(declare-fun Unit!93917 () Unit!93872)

(assert (=> b!4513289 (= e!2811706 Unit!93917)))

(declare-fun b!4513290 () Bool)

(declare-fun e!2811710 () List!50737)

(assert (=> b!4513290 (= e!2811710 (keys!17570 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))))))

(declare-fun b!4513291 () Bool)

(declare-fun e!2811708 () Bool)

(assert (=> b!4513291 (= e!2811708 (contains!13321 (keys!17570 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(declare-fun bm!314318 () Bool)

(declare-fun call!314323 () Bool)

(assert (=> bm!314318 (= call!314323 (contains!13321 e!2811710 key!3287))))

(declare-fun c!769957 () Bool)

(declare-fun c!769956 () Bool)

(assert (=> bm!314318 (= c!769957 c!769956)))

(declare-fun b!4513292 () Bool)

(declare-fun e!2811707 () Unit!93872)

(assert (=> b!4513292 (= e!2811707 e!2811706)))

(declare-fun c!769958 () Bool)

(assert (=> b!4513292 (= c!769958 call!314323)))

(declare-fun d!1388726 () Bool)

(declare-fun e!2811711 () Bool)

(assert (=> d!1388726 e!2811711))

(declare-fun res!1877592 () Bool)

(assert (=> d!1388726 (=> res!1877592 e!2811711)))

(assert (=> d!1388726 (= res!1877592 e!2811709)))

(declare-fun res!1877593 () Bool)

(assert (=> d!1388726 (=> (not res!1877593) (not e!2811709))))

(declare-fun lt!1691355 () Bool)

(assert (=> d!1388726 (= res!1877593 (not lt!1691355))))

(declare-fun lt!1691358 () Bool)

(assert (=> d!1388726 (= lt!1691355 lt!1691358)))

(declare-fun lt!1691362 () Unit!93872)

(assert (=> d!1388726 (= lt!1691362 e!2811707)))

(assert (=> d!1388726 (= c!769956 lt!1691358)))

(assert (=> d!1388726 (= lt!1691358 (containsKey!1748 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(assert (=> d!1388726 (= (contains!13319 (extractMap!1204 (t!357697 (toList!4303 lm!1477))) key!3287) lt!1691355)))

(declare-fun b!4513293 () Bool)

(assert (=> b!4513293 false))

(declare-fun lt!1691356 () Unit!93872)

(declare-fun lt!1691359 () Unit!93872)

(assert (=> b!4513293 (= lt!1691356 lt!1691359)))

(assert (=> b!4513293 (containsKey!1748 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287)))

(assert (=> b!4513293 (= lt!1691359 (lemmaInGetKeysListThenContainsKey!452 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(declare-fun Unit!93918 () Unit!93872)

(assert (=> b!4513293 (= e!2811706 Unit!93918)))

(declare-fun b!4513294 () Bool)

(declare-fun lt!1691357 () Unit!93872)

(assert (=> b!4513294 (= e!2811707 lt!1691357)))

(declare-fun lt!1691361 () Unit!93872)

(assert (=> b!4513294 (= lt!1691361 (lemmaContainsKeyImpliesGetValueByKeyDefined!973 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(assert (=> b!4513294 (isDefined!8376 (getValueByKey!1069 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(declare-fun lt!1691360 () Unit!93872)

(assert (=> b!4513294 (= lt!1691360 lt!1691361)))

(assert (=> b!4513294 (= lt!1691357 (lemmaInListThenGetKeysListContains!449 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287))))

(assert (=> b!4513294 call!314323))

(declare-fun b!4513295 () Bool)

(assert (=> b!4513295 (= e!2811710 (getKeysList!453 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477))))))))

(declare-fun b!4513296 () Bool)

(assert (=> b!4513296 (= e!2811711 e!2811708)))

(declare-fun res!1877594 () Bool)

(assert (=> b!4513296 (=> (not res!1877594) (not e!2811708))))

(assert (=> b!4513296 (= res!1877594 (isDefined!8376 (getValueByKey!1069 (toList!4304 (extractMap!1204 (t!357697 (toList!4303 lm!1477)))) key!3287)))))

(assert (= (and d!1388726 c!769956) b!4513294))

(assert (= (and d!1388726 (not c!769956)) b!4513292))

(assert (= (and b!4513292 c!769958) b!4513293))

(assert (= (and b!4513292 (not c!769958)) b!4513289))

(assert (= (or b!4513294 b!4513292) bm!314318))

(assert (= (and bm!314318 c!769957) b!4513295))

(assert (= (and bm!314318 (not c!769957)) b!4513290))

(assert (= (and d!1388726 res!1877593) b!4513288))

(assert (= (and d!1388726 (not res!1877592)) b!4513296))

(assert (= (and b!4513296 res!1877594) b!4513291))

(assert (=> b!4513291 m!5254567))

(declare-fun m!5255023 () Bool)

(assert (=> b!4513291 m!5255023))

(assert (=> b!4513291 m!5255023))

(declare-fun m!5255025 () Bool)

(assert (=> b!4513291 m!5255025))

(declare-fun m!5255027 () Bool)

(assert (=> b!4513296 m!5255027))

(assert (=> b!4513296 m!5255027))

(declare-fun m!5255029 () Bool)

(assert (=> b!4513296 m!5255029))

(declare-fun m!5255031 () Bool)

(assert (=> b!4513295 m!5255031))

(declare-fun m!5255033 () Bool)

(assert (=> bm!314318 m!5255033))

(declare-fun m!5255035 () Bool)

(assert (=> d!1388726 m!5255035))

(assert (=> b!4513288 m!5254567))

(assert (=> b!4513288 m!5255023))

(assert (=> b!4513288 m!5255023))

(assert (=> b!4513288 m!5255025))

(declare-fun m!5255037 () Bool)

(assert (=> b!4513294 m!5255037))

(assert (=> b!4513294 m!5255027))

(assert (=> b!4513294 m!5255027))

(assert (=> b!4513294 m!5255029))

(declare-fun m!5255039 () Bool)

(assert (=> b!4513294 m!5255039))

(assert (=> b!4513290 m!5254567))

(assert (=> b!4513290 m!5255023))

(assert (=> b!4513293 m!5255035))

(declare-fun m!5255041 () Bool)

(assert (=> b!4513293 m!5255041))

(assert (=> b!4513018 d!1388726))

(declare-fun bs!849089 () Bool)

(declare-fun d!1388728 () Bool)

(assert (= bs!849089 (and d!1388728 start!446316)))

(declare-fun lambda!171084 () Int)

(assert (=> bs!849089 (= lambda!171084 lambda!170985)))

(declare-fun bs!849090 () Bool)

(assert (= bs!849090 (and d!1388728 d!1388606)))

(assert (=> bs!849090 (= lambda!171084 lambda!170988)))

(declare-fun bs!849091 () Bool)

(assert (= bs!849091 (and d!1388728 d!1388618)))

(assert (=> bs!849091 (= lambda!171084 lambda!170991)))

(declare-fun bs!849092 () Bool)

(assert (= bs!849092 (and d!1388728 d!1388708)))

(assert (=> bs!849092 (= lambda!171084 lambda!171082)))

(declare-fun lt!1691363 () ListMap!3565)

(assert (=> d!1388728 (invariantList!1005 (toList!4304 lt!1691363))))

(declare-fun e!2811712 () ListMap!3565)

(assert (=> d!1388728 (= lt!1691363 e!2811712)))

(declare-fun c!769959 () Bool)

(assert (=> d!1388728 (= c!769959 ((_ is Cons!50611) (t!357697 (toList!4303 lm!1477))))))

(assert (=> d!1388728 (forall!10233 (t!357697 (toList!4303 lm!1477)) lambda!171084)))

(assert (=> d!1388728 (= (extractMap!1204 (t!357697 (toList!4303 lm!1477))) lt!1691363)))

(declare-fun b!4513297 () Bool)

(assert (=> b!4513297 (= e!2811712 (addToMapMapFromBucket!675 (_2!28808 (h!56452 (t!357697 (toList!4303 lm!1477)))) (extractMap!1204 (t!357697 (t!357697 (toList!4303 lm!1477))))))))

(declare-fun b!4513298 () Bool)

(assert (=> b!4513298 (= e!2811712 (ListMap!3566 Nil!50610))))

(assert (= (and d!1388728 c!769959) b!4513297))

(assert (= (and d!1388728 (not c!769959)) b!4513298))

(declare-fun m!5255043 () Bool)

(assert (=> d!1388728 m!5255043))

(declare-fun m!5255045 () Bool)

(assert (=> d!1388728 m!5255045))

(declare-fun m!5255047 () Bool)

(assert (=> b!4513297 m!5255047))

(assert (=> b!4513297 m!5255047))

(declare-fun m!5255049 () Bool)

(assert (=> b!4513297 m!5255049))

(assert (=> b!4513018 d!1388728))

(declare-fun bs!849093 () Bool)

(declare-fun d!1388730 () Bool)

(assert (= bs!849093 (and d!1388730 start!446316)))

(declare-fun lambda!171087 () Int)

(assert (=> bs!849093 (= lambda!171087 lambda!170985)))

(declare-fun bs!849094 () Bool)

(assert (= bs!849094 (and d!1388730 d!1388618)))

(assert (=> bs!849094 (= lambda!171087 lambda!170991)))

(declare-fun bs!849095 () Bool)

(assert (= bs!849095 (and d!1388730 d!1388708)))

(assert (=> bs!849095 (= lambda!171087 lambda!171082)))

(declare-fun bs!849096 () Bool)

(assert (= bs!849096 (and d!1388730 d!1388728)))

(assert (=> bs!849096 (= lambda!171087 lambda!171084)))

(declare-fun bs!849097 () Bool)

(assert (= bs!849097 (and d!1388730 d!1388606)))

(assert (=> bs!849097 (= lambda!171087 lambda!170988)))

(assert (=> d!1388730 (contains!13319 (extractMap!1204 (toList!4303 lt!1691031)) key!3287)))

(declare-fun lt!1691369 () Unit!93872)

(declare-fun choose!29370 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> d!1388730 (= lt!1691369 (choose!29370 lt!1691031 key!3287 hashF!1107))))

(assert (=> d!1388730 (forall!10233 (toList!4303 lt!1691031) lambda!171087)))

(assert (=> d!1388730 (= (lemmaListContainsThenExtractedMapContains!118 lt!1691031 key!3287 hashF!1107) lt!1691369)))

(declare-fun bs!849098 () Bool)

(assert (= bs!849098 d!1388730))

(assert (=> bs!849098 m!5254573))

(assert (=> bs!849098 m!5254573))

(declare-fun m!5255063 () Bool)

(assert (=> bs!849098 m!5255063))

(declare-fun m!5255065 () Bool)

(assert (=> bs!849098 m!5255065))

(declare-fun m!5255067 () Bool)

(assert (=> bs!849098 m!5255067))

(assert (=> b!4513018 d!1388730))

(declare-fun bs!849099 () Bool)

(declare-fun d!1388734 () Bool)

(assert (= bs!849099 (and d!1388734 start!446316)))

(declare-fun lambda!171088 () Int)

(assert (=> bs!849099 (= lambda!171088 lambda!170985)))

(declare-fun bs!849100 () Bool)

(assert (= bs!849100 (and d!1388734 d!1388730)))

(assert (=> bs!849100 (= lambda!171088 lambda!171087)))

(declare-fun bs!849101 () Bool)

(assert (= bs!849101 (and d!1388734 d!1388618)))

(assert (=> bs!849101 (= lambda!171088 lambda!170991)))

(declare-fun bs!849102 () Bool)

(assert (= bs!849102 (and d!1388734 d!1388708)))

(assert (=> bs!849102 (= lambda!171088 lambda!171082)))

(declare-fun bs!849103 () Bool)

(assert (= bs!849103 (and d!1388734 d!1388728)))

(assert (=> bs!849103 (= lambda!171088 lambda!171084)))

(declare-fun bs!849104 () Bool)

(assert (= bs!849104 (and d!1388734 d!1388606)))

(assert (=> bs!849104 (= lambda!171088 lambda!170988)))

(declare-fun lt!1691370 () ListMap!3565)

(assert (=> d!1388734 (invariantList!1005 (toList!4304 lt!1691370))))

(declare-fun e!2811716 () ListMap!3565)

(assert (=> d!1388734 (= lt!1691370 e!2811716)))

(declare-fun c!769960 () Bool)

(assert (=> d!1388734 (= c!769960 ((_ is Cons!50611) (toList!4303 lt!1691031)))))

(assert (=> d!1388734 (forall!10233 (toList!4303 lt!1691031) lambda!171088)))

(assert (=> d!1388734 (= (extractMap!1204 (toList!4303 lt!1691031)) lt!1691370)))

(declare-fun b!4513302 () Bool)

(assert (=> b!4513302 (= e!2811716 (addToMapMapFromBucket!675 (_2!28808 (h!56452 (toList!4303 lt!1691031))) (extractMap!1204 (t!357697 (toList!4303 lt!1691031)))))))

(declare-fun b!4513303 () Bool)

(assert (=> b!4513303 (= e!2811716 (ListMap!3566 Nil!50610))))

(assert (= (and d!1388734 c!769960) b!4513302))

(assert (= (and d!1388734 (not c!769960)) b!4513303))

(declare-fun m!5255069 () Bool)

(assert (=> d!1388734 m!5255069))

(declare-fun m!5255071 () Bool)

(assert (=> d!1388734 m!5255071))

(declare-fun m!5255073 () Bool)

(assert (=> b!4513302 m!5255073))

(assert (=> b!4513302 m!5255073))

(declare-fun m!5255075 () Bool)

(assert (=> b!4513302 m!5255075))

(assert (=> b!4513018 d!1388734))

(declare-fun b!4513304 () Bool)

(declare-fun e!2811720 () Bool)

(assert (=> b!4513304 (= e!2811720 (not (contains!13321 (keys!17570 lt!1691033) key!3287)))))

(declare-fun b!4513305 () Bool)

(declare-fun e!2811717 () Unit!93872)

(declare-fun Unit!93923 () Unit!93872)

(assert (=> b!4513305 (= e!2811717 Unit!93923)))

(declare-fun b!4513306 () Bool)

(declare-fun e!2811721 () List!50737)

(assert (=> b!4513306 (= e!2811721 (keys!17570 lt!1691033))))

(declare-fun b!4513307 () Bool)

(declare-fun e!2811719 () Bool)

(assert (=> b!4513307 (= e!2811719 (contains!13321 (keys!17570 lt!1691033) key!3287))))

(declare-fun bm!314319 () Bool)

(declare-fun call!314324 () Bool)

(assert (=> bm!314319 (= call!314324 (contains!13321 e!2811721 key!3287))))

(declare-fun c!769962 () Bool)

(declare-fun c!769961 () Bool)

(assert (=> bm!314319 (= c!769962 c!769961)))

(declare-fun b!4513308 () Bool)

(declare-fun e!2811718 () Unit!93872)

(assert (=> b!4513308 (= e!2811718 e!2811717)))

(declare-fun c!769963 () Bool)

(assert (=> b!4513308 (= c!769963 call!314324)))

(declare-fun d!1388736 () Bool)

(declare-fun e!2811722 () Bool)

(assert (=> d!1388736 e!2811722))

(declare-fun res!1877598 () Bool)

(assert (=> d!1388736 (=> res!1877598 e!2811722)))

(assert (=> d!1388736 (= res!1877598 e!2811720)))

(declare-fun res!1877599 () Bool)

(assert (=> d!1388736 (=> (not res!1877599) (not e!2811720))))

(declare-fun lt!1691371 () Bool)

(assert (=> d!1388736 (= res!1877599 (not lt!1691371))))

(declare-fun lt!1691374 () Bool)

(assert (=> d!1388736 (= lt!1691371 lt!1691374)))

(declare-fun lt!1691378 () Unit!93872)

(assert (=> d!1388736 (= lt!1691378 e!2811718)))

(assert (=> d!1388736 (= c!769961 lt!1691374)))

(assert (=> d!1388736 (= lt!1691374 (containsKey!1748 (toList!4304 lt!1691033) key!3287))))

(assert (=> d!1388736 (= (contains!13319 lt!1691033 key!3287) lt!1691371)))

(declare-fun b!4513309 () Bool)

(assert (=> b!4513309 false))

(declare-fun lt!1691372 () Unit!93872)

(declare-fun lt!1691375 () Unit!93872)

(assert (=> b!4513309 (= lt!1691372 lt!1691375)))

(assert (=> b!4513309 (containsKey!1748 (toList!4304 lt!1691033) key!3287)))

(assert (=> b!4513309 (= lt!1691375 (lemmaInGetKeysListThenContainsKey!452 (toList!4304 lt!1691033) key!3287))))

(declare-fun Unit!93924 () Unit!93872)

(assert (=> b!4513309 (= e!2811717 Unit!93924)))

(declare-fun b!4513310 () Bool)

(declare-fun lt!1691373 () Unit!93872)

(assert (=> b!4513310 (= e!2811718 lt!1691373)))

(declare-fun lt!1691377 () Unit!93872)

(assert (=> b!4513310 (= lt!1691377 (lemmaContainsKeyImpliesGetValueByKeyDefined!973 (toList!4304 lt!1691033) key!3287))))

(assert (=> b!4513310 (isDefined!8376 (getValueByKey!1069 (toList!4304 lt!1691033) key!3287))))

(declare-fun lt!1691376 () Unit!93872)

(assert (=> b!4513310 (= lt!1691376 lt!1691377)))

(assert (=> b!4513310 (= lt!1691373 (lemmaInListThenGetKeysListContains!449 (toList!4304 lt!1691033) key!3287))))

(assert (=> b!4513310 call!314324))

(declare-fun b!4513311 () Bool)

(assert (=> b!4513311 (= e!2811721 (getKeysList!453 (toList!4304 lt!1691033)))))

(declare-fun b!4513312 () Bool)

(assert (=> b!4513312 (= e!2811722 e!2811719)))

(declare-fun res!1877600 () Bool)

(assert (=> b!4513312 (=> (not res!1877600) (not e!2811719))))

(assert (=> b!4513312 (= res!1877600 (isDefined!8376 (getValueByKey!1069 (toList!4304 lt!1691033) key!3287)))))

(assert (= (and d!1388736 c!769961) b!4513310))

(assert (= (and d!1388736 (not c!769961)) b!4513308))

(assert (= (and b!4513308 c!769963) b!4513309))

(assert (= (and b!4513308 (not c!769963)) b!4513305))

(assert (= (or b!4513310 b!4513308) bm!314319))

(assert (= (and bm!314319 c!769962) b!4513311))

(assert (= (and bm!314319 (not c!769962)) b!4513306))

(assert (= (and d!1388736 res!1877599) b!4513304))

(assert (= (and d!1388736 (not res!1877598)) b!4513312))

(assert (= (and b!4513312 res!1877600) b!4513307))

(declare-fun m!5255077 () Bool)

(assert (=> b!4513307 m!5255077))

(assert (=> b!4513307 m!5255077))

(declare-fun m!5255079 () Bool)

(assert (=> b!4513307 m!5255079))

(declare-fun m!5255081 () Bool)

(assert (=> b!4513312 m!5255081))

(assert (=> b!4513312 m!5255081))

(declare-fun m!5255083 () Bool)

(assert (=> b!4513312 m!5255083))

(declare-fun m!5255085 () Bool)

(assert (=> b!4513311 m!5255085))

(declare-fun m!5255087 () Bool)

(assert (=> bm!314319 m!5255087))

(declare-fun m!5255089 () Bool)

(assert (=> d!1388736 m!5255089))

(assert (=> b!4513304 m!5255077))

(assert (=> b!4513304 m!5255077))

(assert (=> b!4513304 m!5255079))

(declare-fun m!5255091 () Bool)

(assert (=> b!4513310 m!5255091))

(assert (=> b!4513310 m!5255081))

(assert (=> b!4513310 m!5255081))

(assert (=> b!4513310 m!5255083))

(declare-fun m!5255093 () Bool)

(assert (=> b!4513310 m!5255093))

(assert (=> b!4513306 m!5255077))

(assert (=> b!4513309 m!5255089))

(declare-fun m!5255095 () Bool)

(assert (=> b!4513309 m!5255095))

(assert (=> b!4513018 d!1388736))

(declare-fun d!1388738 () Bool)

(assert (=> d!1388738 (= (eq!605 lt!1691020 lt!1691024) (= (content!8320 (toList!4304 lt!1691020)) (content!8320 (toList!4304 lt!1691024))))))

(declare-fun bs!849105 () Bool)

(assert (= bs!849105 d!1388738))

(declare-fun m!5255097 () Bool)

(assert (=> bs!849105 m!5255097))

(declare-fun m!5255099 () Bool)

(assert (=> bs!849105 m!5255099))

(assert (=> b!4513017 d!1388738))

(declare-fun d!1388740 () Bool)

(declare-fun e!2811727 () Bool)

(assert (=> d!1388740 e!2811727))

(declare-fun res!1877609 () Bool)

(assert (=> d!1388740 (=> (not res!1877609) (not e!2811727))))

(declare-fun lt!1691402 () ListLongMap!2935)

(assert (=> d!1388740 (= res!1877609 (contains!13318 lt!1691402 (_1!28808 lt!1691037)))))

(declare-fun lt!1691401 () List!50735)

(assert (=> d!1388740 (= lt!1691402 (ListLongMap!2936 lt!1691401))))

(declare-fun lt!1691399 () Unit!93872)

(declare-fun lt!1691398 () Unit!93872)

(assert (=> d!1388740 (= lt!1691399 lt!1691398)))

(assert (=> d!1388740 (= (getValueByKey!1067 lt!1691401 (_1!28808 lt!1691037)) (Some!11086 (_2!28808 lt!1691037)))))

(declare-fun lemmaContainsTupThenGetReturnValue!660 (List!50735 (_ BitVec 64) List!50734) Unit!93872)

(assert (=> d!1388740 (= lt!1691398 (lemmaContainsTupThenGetReturnValue!660 lt!1691401 (_1!28808 lt!1691037) (_2!28808 lt!1691037)))))

(declare-fun insertStrictlySorted!396 (List!50735 (_ BitVec 64) List!50734) List!50735)

(assert (=> d!1388740 (= lt!1691401 (insertStrictlySorted!396 (toList!4303 lt!1691031) (_1!28808 lt!1691037) (_2!28808 lt!1691037)))))

(assert (=> d!1388740 (= (+!1514 lt!1691031 lt!1691037) lt!1691402)))

(declare-fun b!4513323 () Bool)

(declare-fun res!1877610 () Bool)

(assert (=> b!4513323 (=> (not res!1877610) (not e!2811727))))

(assert (=> b!4513323 (= res!1877610 (= (getValueByKey!1067 (toList!4303 lt!1691402) (_1!28808 lt!1691037)) (Some!11086 (_2!28808 lt!1691037))))))

(declare-fun b!4513324 () Bool)

(assert (=> b!4513324 (= e!2811727 (contains!13317 (toList!4303 lt!1691402) lt!1691037))))

(assert (= (and d!1388740 res!1877609) b!4513323))

(assert (= (and b!4513323 res!1877610) b!4513324))

(declare-fun m!5255147 () Bool)

(assert (=> d!1388740 m!5255147))

(declare-fun m!5255149 () Bool)

(assert (=> d!1388740 m!5255149))

(declare-fun m!5255151 () Bool)

(assert (=> d!1388740 m!5255151))

(declare-fun m!5255153 () Bool)

(assert (=> d!1388740 m!5255153))

(declare-fun m!5255155 () Bool)

(assert (=> b!4513323 m!5255155))

(declare-fun m!5255157 () Bool)

(assert (=> b!4513324 m!5255157))

(assert (=> b!4513017 d!1388740))

(declare-fun d!1388754 () Bool)

(declare-fun e!2811729 () Bool)

(assert (=> d!1388754 e!2811729))

(declare-fun res!1877611 () Bool)

(assert (=> d!1388754 (=> (not res!1877611) (not e!2811729))))

(declare-fun lt!1691406 () ListLongMap!2935)

(assert (=> d!1388754 (= res!1877611 (contains!13318 lt!1691406 (_1!28808 lt!1691035)))))

(declare-fun lt!1691405 () List!50735)

(assert (=> d!1388754 (= lt!1691406 (ListLongMap!2936 lt!1691405))))

(declare-fun lt!1691404 () Unit!93872)

(declare-fun lt!1691403 () Unit!93872)

(assert (=> d!1388754 (= lt!1691404 lt!1691403)))

(assert (=> d!1388754 (= (getValueByKey!1067 lt!1691405 (_1!28808 lt!1691035)) (Some!11086 (_2!28808 lt!1691035)))))

(assert (=> d!1388754 (= lt!1691403 (lemmaContainsTupThenGetReturnValue!660 lt!1691405 (_1!28808 lt!1691035) (_2!28808 lt!1691035)))))

(assert (=> d!1388754 (= lt!1691405 (insertStrictlySorted!396 (toList!4303 lt!1691031) (_1!28808 lt!1691035) (_2!28808 lt!1691035)))))

(assert (=> d!1388754 (= (+!1514 lt!1691031 lt!1691035) lt!1691406)))

(declare-fun b!4513325 () Bool)

(declare-fun res!1877612 () Bool)

(assert (=> b!4513325 (=> (not res!1877612) (not e!2811729))))

(assert (=> b!4513325 (= res!1877612 (= (getValueByKey!1067 (toList!4303 lt!1691406) (_1!28808 lt!1691035)) (Some!11086 (_2!28808 lt!1691035))))))

(declare-fun b!4513326 () Bool)

(assert (=> b!4513326 (= e!2811729 (contains!13317 (toList!4303 lt!1691406) lt!1691035))))

(assert (= (and d!1388754 res!1877611) b!4513325))

(assert (= (and b!4513325 res!1877612) b!4513326))

(declare-fun m!5255159 () Bool)

(assert (=> d!1388754 m!5255159))

(declare-fun m!5255161 () Bool)

(assert (=> d!1388754 m!5255161))

(declare-fun m!5255163 () Bool)

(assert (=> d!1388754 m!5255163))

(declare-fun m!5255169 () Bool)

(assert (=> d!1388754 m!5255169))

(declare-fun m!5255173 () Bool)

(assert (=> b!4513325 m!5255173))

(declare-fun m!5255175 () Bool)

(assert (=> b!4513326 m!5255175))

(assert (=> b!4513017 d!1388754))

(declare-fun bs!849164 () Bool)

(declare-fun d!1388756 () Bool)

(assert (= bs!849164 (and d!1388756 start!446316)))

(declare-fun lambda!171102 () Int)

(assert (=> bs!849164 (= lambda!171102 lambda!170985)))

(declare-fun bs!849165 () Bool)

(assert (= bs!849165 (and d!1388756 d!1388730)))

(assert (=> bs!849165 (= lambda!171102 lambda!171087)))

(declare-fun bs!849166 () Bool)

(assert (= bs!849166 (and d!1388756 d!1388618)))

(assert (=> bs!849166 (= lambda!171102 lambda!170991)))

(declare-fun bs!849167 () Bool)

(assert (= bs!849167 (and d!1388756 d!1388708)))

(assert (=> bs!849167 (= lambda!171102 lambda!171082)))

(declare-fun bs!849168 () Bool)

(assert (= bs!849168 (and d!1388756 d!1388728)))

(assert (=> bs!849168 (= lambda!171102 lambda!171084)))

(declare-fun bs!849169 () Bool)

(assert (= bs!849169 (and d!1388756 d!1388734)))

(assert (=> bs!849169 (= lambda!171102 lambda!171088)))

(declare-fun bs!849170 () Bool)

(assert (= bs!849170 (and d!1388756 d!1388606)))

(assert (=> bs!849170 (= lambda!171102 lambda!170988)))

(assert (=> d!1388756 (eq!605 (extractMap!1204 (toList!4303 (+!1514 lt!1691031 (tuple2!51029 hash!344 newBucket!178)))) (-!374 (extractMap!1204 (toList!4303 lt!1691031)) key!3287))))

(declare-fun lt!1691413 () Unit!93872)

(declare-fun choose!29372 (ListLongMap!2935 (_ BitVec 64) List!50734 K!12010 Hashable!5543) Unit!93872)

(assert (=> d!1388756 (= lt!1691413 (choose!29372 lt!1691031 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1388756 (forall!10233 (toList!4303 lt!1691031) lambda!171102)))

(assert (=> d!1388756 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!133 lt!1691031 hash!344 newBucket!178 key!3287 hashF!1107) lt!1691413)))

(declare-fun bs!849171 () Bool)

(assert (= bs!849171 d!1388756))

(declare-fun m!5255207 () Bool)

(assert (=> bs!849171 m!5255207))

(assert (=> bs!849171 m!5254573))

(assert (=> bs!849171 m!5255207))

(declare-fun m!5255209 () Bool)

(assert (=> bs!849171 m!5255209))

(declare-fun m!5255211 () Bool)

(assert (=> bs!849171 m!5255211))

(declare-fun m!5255213 () Bool)

(assert (=> bs!849171 m!5255213))

(declare-fun m!5255215 () Bool)

(assert (=> bs!849171 m!5255215))

(assert (=> bs!849171 m!5254573))

(assert (=> bs!849171 m!5255209))

(declare-fun m!5255217 () Bool)

(assert (=> bs!849171 m!5255217))

(assert (=> b!4513017 d!1388756))

(declare-fun d!1388776 () Bool)

(assert (=> d!1388776 (= (eq!605 lt!1691023 lt!1691027) (= (content!8320 (toList!4304 lt!1691023)) (content!8320 (toList!4304 lt!1691027))))))

(declare-fun bs!849172 () Bool)

(assert (= bs!849172 d!1388776))

(assert (=> bs!849172 m!5254607))

(assert (=> bs!849172 m!5254605))

(assert (=> b!4513017 d!1388776))

(declare-fun bs!849173 () Bool)

(declare-fun d!1388778 () Bool)

(assert (= bs!849173 (and d!1388778 start!446316)))

(declare-fun lambda!171103 () Int)

(assert (=> bs!849173 (= lambda!171103 lambda!170985)))

(declare-fun bs!849174 () Bool)

(assert (= bs!849174 (and d!1388778 d!1388730)))

(assert (=> bs!849174 (= lambda!171103 lambda!171087)))

(declare-fun bs!849175 () Bool)

(assert (= bs!849175 (and d!1388778 d!1388618)))

(assert (=> bs!849175 (= lambda!171103 lambda!170991)))

(declare-fun bs!849176 () Bool)

(assert (= bs!849176 (and d!1388778 d!1388708)))

(assert (=> bs!849176 (= lambda!171103 lambda!171082)))

(declare-fun bs!849177 () Bool)

(assert (= bs!849177 (and d!1388778 d!1388728)))

(assert (=> bs!849177 (= lambda!171103 lambda!171084)))

(declare-fun bs!849178 () Bool)

(assert (= bs!849178 (and d!1388778 d!1388734)))

(assert (=> bs!849178 (= lambda!171103 lambda!171088)))

(declare-fun bs!849179 () Bool)

(assert (= bs!849179 (and d!1388778 d!1388606)))

(assert (=> bs!849179 (= lambda!171103 lambda!170988)))

(declare-fun bs!849180 () Bool)

(assert (= bs!849180 (and d!1388778 d!1388756)))

(assert (=> bs!849180 (= lambda!171103 lambda!171102)))

(declare-fun lt!1691414 () ListMap!3565)

(assert (=> d!1388778 (invariantList!1005 (toList!4304 lt!1691414))))

(declare-fun e!2811749 () ListMap!3565)

(assert (=> d!1388778 (= lt!1691414 e!2811749)))

(declare-fun c!769966 () Bool)

(assert (=> d!1388778 (= c!769966 ((_ is Cons!50611) (toList!4303 (+!1514 lt!1691031 lt!1691035))))))

(assert (=> d!1388778 (forall!10233 (toList!4303 (+!1514 lt!1691031 lt!1691035)) lambda!171103)))

(assert (=> d!1388778 (= (extractMap!1204 (toList!4303 (+!1514 lt!1691031 lt!1691035))) lt!1691414)))

(declare-fun b!4513355 () Bool)

(assert (=> b!4513355 (= e!2811749 (addToMapMapFromBucket!675 (_2!28808 (h!56452 (toList!4303 (+!1514 lt!1691031 lt!1691035)))) (extractMap!1204 (t!357697 (toList!4303 (+!1514 lt!1691031 lt!1691035))))))))

(declare-fun b!4513356 () Bool)

(assert (=> b!4513356 (= e!2811749 (ListMap!3566 Nil!50610))))

(assert (= (and d!1388778 c!769966) b!4513355))

(assert (= (and d!1388778 (not c!769966)) b!4513356))

(declare-fun m!5255219 () Bool)

(assert (=> d!1388778 m!5255219))

(declare-fun m!5255221 () Bool)

(assert (=> d!1388778 m!5255221))

(declare-fun m!5255223 () Bool)

(assert (=> b!4513355 m!5255223))

(assert (=> b!4513355 m!5255223))

(declare-fun m!5255225 () Bool)

(assert (=> b!4513355 m!5255225))

(assert (=> b!4513017 d!1388778))

(declare-fun d!1388780 () Bool)

(declare-fun e!2811752 () Bool)

(assert (=> d!1388780 e!2811752))

(declare-fun res!1877627 () Bool)

(assert (=> d!1388780 (=> (not res!1877627) (not e!2811752))))

(declare-fun lt!1691417 () ListMap!3565)

(assert (=> d!1388780 (= res!1877627 (not (contains!13319 lt!1691417 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!129 (List!50734 K!12010) List!50734)

(assert (=> d!1388780 (= lt!1691417 (ListMap!3566 (removePresrvNoDuplicatedKeys!129 (toList!4304 lt!1691033) key!3287)))))

(assert (=> d!1388780 (= (-!374 lt!1691033 key!3287) lt!1691417)))

(declare-fun b!4513359 () Bool)

(declare-fun content!8323 (List!50737) (InoxSet K!12010))

(assert (=> b!4513359 (= e!2811752 (= ((_ map and) (content!8323 (keys!17570 lt!1691033)) ((_ map not) (store ((as const (Array K!12010 Bool)) false) key!3287 true))) (content!8323 (keys!17570 lt!1691417))))))

(assert (= (and d!1388780 res!1877627) b!4513359))

(declare-fun m!5255227 () Bool)

(assert (=> d!1388780 m!5255227))

(declare-fun m!5255229 () Bool)

(assert (=> d!1388780 m!5255229))

(declare-fun m!5255231 () Bool)

(assert (=> b!4513359 m!5255231))

(declare-fun m!5255233 () Bool)

(assert (=> b!4513359 m!5255233))

(assert (=> b!4513359 m!5255077))

(assert (=> b!4513359 m!5255077))

(declare-fun m!5255235 () Bool)

(assert (=> b!4513359 m!5255235))

(declare-fun m!5255237 () Bool)

(assert (=> b!4513359 m!5255237))

(assert (=> b!4513359 m!5255231))

(assert (=> b!4513017 d!1388780))

(declare-fun bs!849181 () Bool)

(declare-fun d!1388782 () Bool)

(assert (= bs!849181 (and d!1388782 start!446316)))

(declare-fun lambda!171104 () Int)

(assert (=> bs!849181 (= lambda!171104 lambda!170985)))

(declare-fun bs!849182 () Bool)

(assert (= bs!849182 (and d!1388782 d!1388618)))

(assert (=> bs!849182 (= lambda!171104 lambda!170991)))

(declare-fun bs!849183 () Bool)

(assert (= bs!849183 (and d!1388782 d!1388708)))

(assert (=> bs!849183 (= lambda!171104 lambda!171082)))

(declare-fun bs!849184 () Bool)

(assert (= bs!849184 (and d!1388782 d!1388728)))

(assert (=> bs!849184 (= lambda!171104 lambda!171084)))

(declare-fun bs!849185 () Bool)

(assert (= bs!849185 (and d!1388782 d!1388734)))

(assert (=> bs!849185 (= lambda!171104 lambda!171088)))

(declare-fun bs!849186 () Bool)

(assert (= bs!849186 (and d!1388782 d!1388606)))

(assert (=> bs!849186 (= lambda!171104 lambda!170988)))

(declare-fun bs!849187 () Bool)

(assert (= bs!849187 (and d!1388782 d!1388756)))

(assert (=> bs!849187 (= lambda!171104 lambda!171102)))

(declare-fun bs!849188 () Bool)

(assert (= bs!849188 (and d!1388782 d!1388778)))

(assert (=> bs!849188 (= lambda!171104 lambda!171103)))

(declare-fun bs!849189 () Bool)

(assert (= bs!849189 (and d!1388782 d!1388730)))

(assert (=> bs!849189 (= lambda!171104 lambda!171087)))

(declare-fun lt!1691418 () ListMap!3565)

(assert (=> d!1388782 (invariantList!1005 (toList!4304 lt!1691418))))

(declare-fun e!2811753 () ListMap!3565)

(assert (=> d!1388782 (= lt!1691418 e!2811753)))

(declare-fun c!769967 () Bool)

(assert (=> d!1388782 (= c!769967 ((_ is Cons!50611) (toList!4303 lt!1691039)))))

(assert (=> d!1388782 (forall!10233 (toList!4303 lt!1691039) lambda!171104)))

(assert (=> d!1388782 (= (extractMap!1204 (toList!4303 lt!1691039)) lt!1691418)))

(declare-fun b!4513360 () Bool)

(assert (=> b!4513360 (= e!2811753 (addToMapMapFromBucket!675 (_2!28808 (h!56452 (toList!4303 lt!1691039))) (extractMap!1204 (t!357697 (toList!4303 lt!1691039)))))))

(declare-fun b!4513361 () Bool)

(assert (=> b!4513361 (= e!2811753 (ListMap!3566 Nil!50610))))

(assert (= (and d!1388782 c!769967) b!4513360))

(assert (= (and d!1388782 (not c!769967)) b!4513361))

(declare-fun m!5255239 () Bool)

(assert (=> d!1388782 m!5255239))

(declare-fun m!5255241 () Bool)

(assert (=> d!1388782 m!5255241))

(declare-fun m!5255243 () Bool)

(assert (=> b!4513360 m!5255243))

(assert (=> b!4513360 m!5255243))

(declare-fun m!5255245 () Bool)

(assert (=> b!4513360 m!5255245))

(assert (=> b!4513017 d!1388782))

(declare-fun d!1388784 () Bool)

(assert (=> d!1388784 (= (head!9388 lm!1477) (head!9389 (toList!4303 lm!1477)))))

(declare-fun bs!849190 () Bool)

(assert (= bs!849190 d!1388784))

(declare-fun m!5255247 () Bool)

(assert (=> bs!849190 m!5255247))

(assert (=> b!4513017 d!1388784))

(declare-fun d!1388786 () Bool)

(declare-fun lt!1691419 () Bool)

(assert (=> d!1388786 (= lt!1691419 (select (content!8321 (t!357697 (toList!4303 lm!1477))) lt!1691030))))

(declare-fun e!2811755 () Bool)

(assert (=> d!1388786 (= lt!1691419 e!2811755)))

(declare-fun res!1877629 () Bool)

(assert (=> d!1388786 (=> (not res!1877629) (not e!2811755))))

(assert (=> d!1388786 (= res!1877629 ((_ is Cons!50611) (t!357697 (toList!4303 lm!1477))))))

(assert (=> d!1388786 (= (contains!13317 (t!357697 (toList!4303 lm!1477)) lt!1691030) lt!1691419)))

(declare-fun b!4513362 () Bool)

(declare-fun e!2811754 () Bool)

(assert (=> b!4513362 (= e!2811755 e!2811754)))

(declare-fun res!1877628 () Bool)

(assert (=> b!4513362 (=> res!1877628 e!2811754)))

(assert (=> b!4513362 (= res!1877628 (= (h!56452 (t!357697 (toList!4303 lm!1477))) lt!1691030))))

(declare-fun b!4513363 () Bool)

(assert (=> b!4513363 (= e!2811754 (contains!13317 (t!357697 (t!357697 (toList!4303 lm!1477))) lt!1691030))))

(assert (= (and d!1388786 res!1877629) b!4513362))

(assert (= (and b!4513362 (not res!1877628)) b!4513363))

(declare-fun m!5255249 () Bool)

(assert (=> d!1388786 m!5255249))

(declare-fun m!5255251 () Bool)

(assert (=> d!1388786 m!5255251))

(declare-fun m!5255253 () Bool)

(assert (=> b!4513363 m!5255253))

(assert (=> b!4513005 d!1388786))

(declare-fun d!1388788 () Bool)

(assert (=> d!1388788 (= (eq!605 lt!1691022 lt!1691040) (= (content!8320 (toList!4304 lt!1691022)) (content!8320 (toList!4304 lt!1691040))))))

(declare-fun bs!849191 () Bool)

(assert (= bs!849191 d!1388788))

(declare-fun m!5255255 () Bool)

(assert (=> bs!849191 m!5255255))

(assert (=> bs!849191 m!5254705))

(assert (=> b!4513016 d!1388788))

(declare-fun bs!849192 () Bool)

(declare-fun b!4513365 () Bool)

(assert (= bs!849192 (and b!4513365 d!1388656)))

(declare-fun lambda!171105 () Int)

(assert (=> bs!849192 (= (= lt!1691020 lt!1691260) (= lambda!171105 lambda!171072))))

(declare-fun bs!849193 () Bool)

(assert (= bs!849193 (and b!4513365 b!4513185)))

(assert (=> bs!849193 (= (= lt!1691020 lt!1691024) (= lambda!171105 lambda!171069))))

(assert (=> bs!849193 (= (= lt!1691020 lt!1691261) (= lambda!171105 lambda!171070))))

(declare-fun bs!849194 () Bool)

(assert (= bs!849194 (and b!4513365 b!4513186)))

(assert (=> bs!849194 (= (= lt!1691020 lt!1691024) (= lambda!171105 lambda!171068))))

(declare-fun bs!849195 () Bool)

(assert (= bs!849195 (and b!4513365 d!1388650)))

(assert (=> bs!849195 (not (= lambda!171105 lambda!170997))))

(assert (=> b!4513365 true))

(declare-fun bs!849196 () Bool)

(declare-fun b!4513364 () Bool)

(assert (= bs!849196 (and b!4513364 d!1388656)))

(declare-fun lambda!171106 () Int)

(assert (=> bs!849196 (= (= lt!1691020 lt!1691260) (= lambda!171106 lambda!171072))))

(declare-fun bs!849197 () Bool)

(assert (= bs!849197 (and b!4513364 b!4513185)))

(assert (=> bs!849197 (= (= lt!1691020 lt!1691024) (= lambda!171106 lambda!171069))))

(assert (=> bs!849197 (= (= lt!1691020 lt!1691261) (= lambda!171106 lambda!171070))))

(declare-fun bs!849198 () Bool)

(assert (= bs!849198 (and b!4513364 d!1388650)))

(assert (=> bs!849198 (not (= lambda!171106 lambda!170997))))

(declare-fun bs!849199 () Bool)

(assert (= bs!849199 (and b!4513364 b!4513365)))

(assert (=> bs!849199 (= lambda!171106 lambda!171105)))

(declare-fun bs!849200 () Bool)

(assert (= bs!849200 (and b!4513364 b!4513186)))

(assert (=> bs!849200 (= (= lt!1691020 lt!1691024) (= lambda!171106 lambda!171068))))

(assert (=> b!4513364 true))

(declare-fun lambda!171107 () Int)

(declare-fun lt!1691435 () ListMap!3565)

(assert (=> bs!849196 (= (= lt!1691435 lt!1691260) (= lambda!171107 lambda!171072))))

(assert (=> bs!849197 (= (= lt!1691435 lt!1691024) (= lambda!171107 lambda!171069))))

(assert (=> b!4513364 (= (= lt!1691435 lt!1691020) (= lambda!171107 lambda!171106))))

(assert (=> bs!849197 (= (= lt!1691435 lt!1691261) (= lambda!171107 lambda!171070))))

(assert (=> bs!849198 (not (= lambda!171107 lambda!170997))))

(assert (=> bs!849199 (= (= lt!1691435 lt!1691020) (= lambda!171107 lambda!171105))))

(assert (=> bs!849200 (= (= lt!1691435 lt!1691024) (= lambda!171107 lambda!171068))))

(assert (=> b!4513364 true))

(declare-fun bs!849201 () Bool)

(declare-fun d!1388790 () Bool)

(assert (= bs!849201 (and d!1388790 d!1388656)))

(declare-fun lt!1691434 () ListMap!3565)

(declare-fun lambda!171108 () Int)

(assert (=> bs!849201 (= (= lt!1691434 lt!1691260) (= lambda!171108 lambda!171072))))

(declare-fun bs!849202 () Bool)

(assert (= bs!849202 (and d!1388790 b!4513364)))

(assert (=> bs!849202 (= (= lt!1691434 lt!1691435) (= lambda!171108 lambda!171107))))

(declare-fun bs!849203 () Bool)

(assert (= bs!849203 (and d!1388790 b!4513185)))

(assert (=> bs!849203 (= (= lt!1691434 lt!1691024) (= lambda!171108 lambda!171069))))

(assert (=> bs!849202 (= (= lt!1691434 lt!1691020) (= lambda!171108 lambda!171106))))

(assert (=> bs!849203 (= (= lt!1691434 lt!1691261) (= lambda!171108 lambda!171070))))

(declare-fun bs!849204 () Bool)

(assert (= bs!849204 (and d!1388790 d!1388650)))

(assert (=> bs!849204 (not (= lambda!171108 lambda!170997))))

(declare-fun bs!849205 () Bool)

(assert (= bs!849205 (and d!1388790 b!4513365)))

(assert (=> bs!849205 (= (= lt!1691434 lt!1691020) (= lambda!171108 lambda!171105))))

(declare-fun bs!849206 () Bool)

(assert (= bs!849206 (and d!1388790 b!4513186)))

(assert (=> bs!849206 (= (= lt!1691434 lt!1691024) (= lambda!171108 lambda!171068))))

(assert (=> d!1388790 true))

(declare-fun e!2811757 () ListMap!3565)

(assert (=> b!4513364 (= e!2811757 lt!1691435)))

(declare-fun lt!1691432 () ListMap!3565)

(assert (=> b!4513364 (= lt!1691432 (+!1516 lt!1691020 (h!56451 (_2!28808 lt!1691035))))))

(assert (=> b!4513364 (= lt!1691435 (addToMapMapFromBucket!675 (t!357696 (_2!28808 lt!1691035)) (+!1516 lt!1691020 (h!56451 (_2!28808 lt!1691035)))))))

(declare-fun lt!1691424 () Unit!93872)

(declare-fun call!314326 () Unit!93872)

(assert (=> b!4513364 (= lt!1691424 call!314326)))

(assert (=> b!4513364 (forall!10235 (toList!4304 lt!1691020) lambda!171106)))

(declare-fun lt!1691440 () Unit!93872)

(assert (=> b!4513364 (= lt!1691440 lt!1691424)))

(assert (=> b!4513364 (forall!10235 (toList!4304 lt!1691432) lambda!171107)))

(declare-fun lt!1691431 () Unit!93872)

(declare-fun Unit!93925 () Unit!93872)

(assert (=> b!4513364 (= lt!1691431 Unit!93925)))

(assert (=> b!4513364 (forall!10235 (t!357696 (_2!28808 lt!1691035)) lambda!171107)))

(declare-fun lt!1691433 () Unit!93872)

(declare-fun Unit!93926 () Unit!93872)

(assert (=> b!4513364 (= lt!1691433 Unit!93926)))

(declare-fun lt!1691421 () Unit!93872)

(declare-fun Unit!93927 () Unit!93872)

(assert (=> b!4513364 (= lt!1691421 Unit!93927)))

(declare-fun lt!1691420 () Unit!93872)

(assert (=> b!4513364 (= lt!1691420 (forallContained!2487 (toList!4304 lt!1691432) lambda!171107 (h!56451 (_2!28808 lt!1691035))))))

(assert (=> b!4513364 (contains!13319 lt!1691432 (_1!28807 (h!56451 (_2!28808 lt!1691035))))))

(declare-fun lt!1691439 () Unit!93872)

(declare-fun Unit!93928 () Unit!93872)

(assert (=> b!4513364 (= lt!1691439 Unit!93928)))

(assert (=> b!4513364 (contains!13319 lt!1691435 (_1!28807 (h!56451 (_2!28808 lt!1691035))))))

(declare-fun lt!1691425 () Unit!93872)

(declare-fun Unit!93929 () Unit!93872)

(assert (=> b!4513364 (= lt!1691425 Unit!93929)))

(assert (=> b!4513364 (forall!10235 (_2!28808 lt!1691035) lambda!171107)))

(declare-fun lt!1691422 () Unit!93872)

(declare-fun Unit!93930 () Unit!93872)

(assert (=> b!4513364 (= lt!1691422 Unit!93930)))

(declare-fun call!314327 () Bool)

(assert (=> b!4513364 call!314327))

(declare-fun lt!1691427 () Unit!93872)

(declare-fun Unit!93931 () Unit!93872)

(assert (=> b!4513364 (= lt!1691427 Unit!93931)))

(declare-fun lt!1691423 () Unit!93872)

(declare-fun Unit!93932 () Unit!93872)

(assert (=> b!4513364 (= lt!1691423 Unit!93932)))

(declare-fun lt!1691430 () Unit!93872)

(assert (=> b!4513364 (= lt!1691430 (addForallContainsKeyThenBeforeAdding!326 lt!1691020 lt!1691435 (_1!28807 (h!56451 (_2!28808 lt!1691035))) (_2!28807 (h!56451 (_2!28808 lt!1691035)))))))

(declare-fun call!314325 () Bool)

(assert (=> b!4513364 call!314325))

(declare-fun lt!1691437 () Unit!93872)

(assert (=> b!4513364 (= lt!1691437 lt!1691430)))

(assert (=> b!4513364 (forall!10235 (toList!4304 lt!1691020) lambda!171107)))

(declare-fun lt!1691438 () Unit!93872)

(declare-fun Unit!93933 () Unit!93872)

(assert (=> b!4513364 (= lt!1691438 Unit!93933)))

(declare-fun res!1877631 () Bool)

(assert (=> b!4513364 (= res!1877631 (forall!10235 (_2!28808 lt!1691035) lambda!171107))))

(declare-fun e!2811756 () Bool)

(assert (=> b!4513364 (=> (not res!1877631) (not e!2811756))))

(assert (=> b!4513364 e!2811756))

(declare-fun lt!1691429 () Unit!93872)

(declare-fun Unit!93934 () Unit!93872)

(assert (=> b!4513364 (= lt!1691429 Unit!93934)))

(declare-fun e!2811758 () Bool)

(assert (=> d!1388790 e!2811758))

(declare-fun res!1877630 () Bool)

(assert (=> d!1388790 (=> (not res!1877630) (not e!2811758))))

(assert (=> d!1388790 (= res!1877630 (forall!10235 (_2!28808 lt!1691035) lambda!171108))))

(assert (=> d!1388790 (= lt!1691434 e!2811757)))

(declare-fun c!769968 () Bool)

(assert (=> d!1388790 (= c!769968 ((_ is Nil!50610) (_2!28808 lt!1691035)))))

(assert (=> d!1388790 (noDuplicateKeys!1148 (_2!28808 lt!1691035))))

(assert (=> d!1388790 (= (addToMapMapFromBucket!675 (_2!28808 lt!1691035) lt!1691020) lt!1691434)))

(assert (=> b!4513365 (= e!2811757 lt!1691020)))

(declare-fun lt!1691436 () Unit!93872)

(assert (=> b!4513365 (= lt!1691436 call!314326)))

(assert (=> b!4513365 call!314325))

(declare-fun lt!1691426 () Unit!93872)

(assert (=> b!4513365 (= lt!1691426 lt!1691436)))

(assert (=> b!4513365 call!314327))

(declare-fun lt!1691428 () Unit!93872)

(declare-fun Unit!93935 () Unit!93872)

(assert (=> b!4513365 (= lt!1691428 Unit!93935)))

(declare-fun b!4513366 () Bool)

(assert (=> b!4513366 (= e!2811756 (forall!10235 (toList!4304 lt!1691020) lambda!171107))))

(declare-fun b!4513367 () Bool)

(declare-fun res!1877632 () Bool)

(assert (=> b!4513367 (=> (not res!1877632) (not e!2811758))))

(assert (=> b!4513367 (= res!1877632 (forall!10235 (toList!4304 lt!1691020) lambda!171108))))

(declare-fun bm!314320 () Bool)

(assert (=> bm!314320 (= call!314326 (lemmaContainsAllItsOwnKeys!326 lt!1691020))))

(declare-fun bm!314321 () Bool)

(assert (=> bm!314321 (= call!314327 (forall!10235 (ite c!769968 (toList!4304 lt!1691020) (toList!4304 lt!1691432)) (ite c!769968 lambda!171105 lambda!171107)))))

(declare-fun bm!314322 () Bool)

(assert (=> bm!314322 (= call!314325 (forall!10235 (toList!4304 lt!1691020) (ite c!769968 lambda!171105 lambda!171107)))))

(declare-fun b!4513368 () Bool)

(assert (=> b!4513368 (= e!2811758 (invariantList!1005 (toList!4304 lt!1691434)))))

(assert (= (and d!1388790 c!769968) b!4513365))

(assert (= (and d!1388790 (not c!769968)) b!4513364))

(assert (= (and b!4513364 res!1877631) b!4513366))

(assert (= (or b!4513365 b!4513364) bm!314321))

(assert (= (or b!4513365 b!4513364) bm!314322))

(assert (= (or b!4513365 b!4513364) bm!314320))

(assert (= (and d!1388790 res!1877630) b!4513367))

(assert (= (and b!4513367 res!1877632) b!4513368))

(declare-fun m!5255257 () Bool)

(assert (=> b!4513367 m!5255257))

(declare-fun m!5255259 () Bool)

(assert (=> b!4513368 m!5255259))

(declare-fun m!5255261 () Bool)

(assert (=> bm!314322 m!5255261))

(declare-fun m!5255263 () Bool)

(assert (=> d!1388790 m!5255263))

(assert (=> d!1388790 m!5254835))

(declare-fun m!5255265 () Bool)

(assert (=> bm!314321 m!5255265))

(declare-fun m!5255267 () Bool)

(assert (=> b!4513366 m!5255267))

(declare-fun m!5255269 () Bool)

(assert (=> b!4513364 m!5255269))

(declare-fun m!5255271 () Bool)

(assert (=> b!4513364 m!5255271))

(declare-fun m!5255273 () Bool)

(assert (=> b!4513364 m!5255273))

(declare-fun m!5255275 () Bool)

(assert (=> b!4513364 m!5255275))

(declare-fun m!5255277 () Bool)

(assert (=> b!4513364 m!5255277))

(declare-fun m!5255279 () Bool)

(assert (=> b!4513364 m!5255279))

(declare-fun m!5255281 () Bool)

(assert (=> b!4513364 m!5255281))

(declare-fun m!5255283 () Bool)

(assert (=> b!4513364 m!5255283))

(assert (=> b!4513364 m!5255281))

(declare-fun m!5255285 () Bool)

(assert (=> b!4513364 m!5255285))

(assert (=> b!4513364 m!5255277))

(assert (=> b!4513364 m!5255267))

(declare-fun m!5255287 () Bool)

(assert (=> b!4513364 m!5255287))

(declare-fun m!5255289 () Bool)

(assert (=> bm!314320 m!5255289))

(assert (=> b!4513016 d!1388790))

(declare-fun bs!849207 () Bool)

(declare-fun d!1388792 () Bool)

(assert (= bs!849207 (and d!1388792 start!446316)))

(declare-fun lambda!171109 () Int)

(assert (=> bs!849207 (= lambda!171109 lambda!170985)))

(declare-fun bs!849208 () Bool)

(assert (= bs!849208 (and d!1388792 d!1388618)))

(assert (=> bs!849208 (= lambda!171109 lambda!170991)))

(declare-fun bs!849209 () Bool)

(assert (= bs!849209 (and d!1388792 d!1388708)))

(assert (=> bs!849209 (= lambda!171109 lambda!171082)))

(declare-fun bs!849210 () Bool)

(assert (= bs!849210 (and d!1388792 d!1388728)))

(assert (=> bs!849210 (= lambda!171109 lambda!171084)))

(declare-fun bs!849211 () Bool)

(assert (= bs!849211 (and d!1388792 d!1388606)))

(assert (=> bs!849211 (= lambda!171109 lambda!170988)))

(declare-fun bs!849212 () Bool)

(assert (= bs!849212 (and d!1388792 d!1388756)))

(assert (=> bs!849212 (= lambda!171109 lambda!171102)))

(declare-fun bs!849213 () Bool)

(assert (= bs!849213 (and d!1388792 d!1388778)))

(assert (=> bs!849213 (= lambda!171109 lambda!171103)))

(declare-fun bs!849214 () Bool)

(assert (= bs!849214 (and d!1388792 d!1388730)))

(assert (=> bs!849214 (= lambda!171109 lambda!171087)))

(declare-fun bs!849215 () Bool)

(assert (= bs!849215 (and d!1388792 d!1388782)))

(assert (=> bs!849215 (= lambda!171109 lambda!171104)))

(declare-fun bs!849216 () Bool)

(assert (= bs!849216 (and d!1388792 d!1388734)))

(assert (=> bs!849216 (= lambda!171109 lambda!171088)))

(declare-fun lt!1691441 () ListMap!3565)

(assert (=> d!1388792 (invariantList!1005 (toList!4304 lt!1691441))))

(declare-fun e!2811759 () ListMap!3565)

(assert (=> d!1388792 (= lt!1691441 e!2811759)))

(declare-fun c!769969 () Bool)

(assert (=> d!1388792 (= c!769969 ((_ is Cons!50611) (toList!4303 lt!1691029)))))

(assert (=> d!1388792 (forall!10233 (toList!4303 lt!1691029) lambda!171109)))

(assert (=> d!1388792 (= (extractMap!1204 (toList!4303 lt!1691029)) lt!1691441)))

(declare-fun b!4513369 () Bool)

(assert (=> b!4513369 (= e!2811759 (addToMapMapFromBucket!675 (_2!28808 (h!56452 (toList!4303 lt!1691029))) (extractMap!1204 (t!357697 (toList!4303 lt!1691029)))))))

(declare-fun b!4513370 () Bool)

(assert (=> b!4513370 (= e!2811759 (ListMap!3566 Nil!50610))))

(assert (= (and d!1388792 c!769969) b!4513369))

(assert (= (and d!1388792 (not c!769969)) b!4513370))

(declare-fun m!5255291 () Bool)

(assert (=> d!1388792 m!5255291))

(declare-fun m!5255293 () Bool)

(assert (=> d!1388792 m!5255293))

(declare-fun m!5255295 () Bool)

(assert (=> b!4513369 m!5255295))

(assert (=> b!4513369 m!5255295))

(declare-fun m!5255297 () Bool)

(assert (=> b!4513369 m!5255297))

(assert (=> b!4513016 d!1388792))

(declare-fun bs!849217 () Bool)

(declare-fun d!1388794 () Bool)

(assert (= bs!849217 (and d!1388794 start!446316)))

(declare-fun lambda!171112 () Int)

(assert (=> bs!849217 (not (= lambda!171112 lambda!170985))))

(declare-fun bs!849218 () Bool)

(assert (= bs!849218 (and d!1388794 d!1388618)))

(assert (=> bs!849218 (not (= lambda!171112 lambda!170991))))

(declare-fun bs!849219 () Bool)

(assert (= bs!849219 (and d!1388794 d!1388792)))

(assert (=> bs!849219 (not (= lambda!171112 lambda!171109))))

(declare-fun bs!849220 () Bool)

(assert (= bs!849220 (and d!1388794 d!1388708)))

(assert (=> bs!849220 (not (= lambda!171112 lambda!171082))))

(declare-fun bs!849221 () Bool)

(assert (= bs!849221 (and d!1388794 d!1388728)))

(assert (=> bs!849221 (not (= lambda!171112 lambda!171084))))

(declare-fun bs!849222 () Bool)

(assert (= bs!849222 (and d!1388794 d!1388606)))

(assert (=> bs!849222 (not (= lambda!171112 lambda!170988))))

(declare-fun bs!849223 () Bool)

(assert (= bs!849223 (and d!1388794 d!1388756)))

(assert (=> bs!849223 (not (= lambda!171112 lambda!171102))))

(declare-fun bs!849224 () Bool)

(assert (= bs!849224 (and d!1388794 d!1388778)))

(assert (=> bs!849224 (not (= lambda!171112 lambda!171103))))

(declare-fun bs!849225 () Bool)

(assert (= bs!849225 (and d!1388794 d!1388730)))

(assert (=> bs!849225 (not (= lambda!171112 lambda!171087))))

(declare-fun bs!849226 () Bool)

(assert (= bs!849226 (and d!1388794 d!1388782)))

(assert (=> bs!849226 (not (= lambda!171112 lambda!171104))))

(declare-fun bs!849227 () Bool)

(assert (= bs!849227 (and d!1388794 d!1388734)))

(assert (=> bs!849227 (not (= lambda!171112 lambda!171088))))

(assert (=> d!1388794 true))

(assert (=> d!1388794 (= (allKeysSameHashInMap!1255 lm!1477 hashF!1107) (forall!10233 (toList!4303 lm!1477) lambda!171112))))

(declare-fun bs!849228 () Bool)

(assert (= bs!849228 d!1388794))

(declare-fun m!5255299 () Bool)

(assert (=> bs!849228 m!5255299))

(assert (=> b!4513015 d!1388794))

(declare-fun d!1388796 () Bool)

(declare-fun e!2811760 () Bool)

(assert (=> d!1388796 e!2811760))

(declare-fun res!1877633 () Bool)

(assert (=> d!1388796 (=> (not res!1877633) (not e!2811760))))

(declare-fun lt!1691445 () ListLongMap!2935)

(assert (=> d!1388796 (= res!1877633 (contains!13318 lt!1691445 (_1!28808 lt!1691037)))))

(declare-fun lt!1691444 () List!50735)

(assert (=> d!1388796 (= lt!1691445 (ListLongMap!2936 lt!1691444))))

(declare-fun lt!1691443 () Unit!93872)

(declare-fun lt!1691442 () Unit!93872)

(assert (=> d!1388796 (= lt!1691443 lt!1691442)))

(assert (=> d!1388796 (= (getValueByKey!1067 lt!1691444 (_1!28808 lt!1691037)) (Some!11086 (_2!28808 lt!1691037)))))

(assert (=> d!1388796 (= lt!1691442 (lemmaContainsTupThenGetReturnValue!660 lt!1691444 (_1!28808 lt!1691037) (_2!28808 lt!1691037)))))

(assert (=> d!1388796 (= lt!1691444 (insertStrictlySorted!396 (toList!4303 lm!1477) (_1!28808 lt!1691037) (_2!28808 lt!1691037)))))

(assert (=> d!1388796 (= (+!1514 lm!1477 lt!1691037) lt!1691445)))

(declare-fun b!4513373 () Bool)

(declare-fun res!1877634 () Bool)

(assert (=> b!4513373 (=> (not res!1877634) (not e!2811760))))

(assert (=> b!4513373 (= res!1877634 (= (getValueByKey!1067 (toList!4303 lt!1691445) (_1!28808 lt!1691037)) (Some!11086 (_2!28808 lt!1691037))))))

(declare-fun b!4513374 () Bool)

(assert (=> b!4513374 (= e!2811760 (contains!13317 (toList!4303 lt!1691445) lt!1691037))))

(assert (= (and d!1388796 res!1877633) b!4513373))

(assert (= (and b!4513373 res!1877634) b!4513374))

(declare-fun m!5255301 () Bool)

(assert (=> d!1388796 m!5255301))

(declare-fun m!5255303 () Bool)

(assert (=> d!1388796 m!5255303))

(declare-fun m!5255305 () Bool)

(assert (=> d!1388796 m!5255305))

(declare-fun m!5255307 () Bool)

(assert (=> d!1388796 m!5255307))

(declare-fun m!5255309 () Bool)

(assert (=> b!4513373 m!5255309))

(declare-fun m!5255311 () Bool)

(assert (=> b!4513374 m!5255311))

(assert (=> b!4513004 d!1388796))

(declare-fun d!1388798 () Bool)

(declare-fun e!2811761 () Bool)

(assert (=> d!1388798 e!2811761))

(declare-fun res!1877635 () Bool)

(assert (=> d!1388798 (=> (not res!1877635) (not e!2811761))))

(declare-fun lt!1691449 () ListLongMap!2935)

(assert (=> d!1388798 (= res!1877635 (contains!13318 lt!1691449 (_1!28808 lt!1691035)))))

(declare-fun lt!1691448 () List!50735)

(assert (=> d!1388798 (= lt!1691449 (ListLongMap!2936 lt!1691448))))

(declare-fun lt!1691447 () Unit!93872)

(declare-fun lt!1691446 () Unit!93872)

(assert (=> d!1388798 (= lt!1691447 lt!1691446)))

(assert (=> d!1388798 (= (getValueByKey!1067 lt!1691448 (_1!28808 lt!1691035)) (Some!11086 (_2!28808 lt!1691035)))))

(assert (=> d!1388798 (= lt!1691446 (lemmaContainsTupThenGetReturnValue!660 lt!1691448 (_1!28808 lt!1691035) (_2!28808 lt!1691035)))))

(assert (=> d!1388798 (= lt!1691448 (insertStrictlySorted!396 (toList!4303 lt!1691039) (_1!28808 lt!1691035) (_2!28808 lt!1691035)))))

(assert (=> d!1388798 (= (+!1514 lt!1691039 lt!1691035) lt!1691449)))

(declare-fun b!4513375 () Bool)

(declare-fun res!1877636 () Bool)

(assert (=> b!4513375 (=> (not res!1877636) (not e!2811761))))

(assert (=> b!4513375 (= res!1877636 (= (getValueByKey!1067 (toList!4303 lt!1691449) (_1!28808 lt!1691035)) (Some!11086 (_2!28808 lt!1691035))))))

(declare-fun b!4513376 () Bool)

(assert (=> b!4513376 (= e!2811761 (contains!13317 (toList!4303 lt!1691449) lt!1691035))))

(assert (= (and d!1388798 res!1877635) b!4513375))

(assert (= (and b!4513375 res!1877636) b!4513376))

(declare-fun m!5255313 () Bool)

(assert (=> d!1388798 m!5255313))

(declare-fun m!5255315 () Bool)

(assert (=> d!1388798 m!5255315))

(declare-fun m!5255317 () Bool)

(assert (=> d!1388798 m!5255317))

(declare-fun m!5255319 () Bool)

(assert (=> d!1388798 m!5255319))

(declare-fun m!5255321 () Bool)

(assert (=> b!4513375 m!5255321))

(declare-fun m!5255323 () Bool)

(assert (=> b!4513376 m!5255323))

(assert (=> b!4513004 d!1388798))

(declare-fun bs!849229 () Bool)

(declare-fun d!1388800 () Bool)

(assert (= bs!849229 (and d!1388800 start!446316)))

(declare-fun lambda!171115 () Int)

(assert (=> bs!849229 (= lambda!171115 lambda!170985)))

(declare-fun bs!849230 () Bool)

(assert (= bs!849230 (and d!1388800 d!1388794)))

(assert (=> bs!849230 (not (= lambda!171115 lambda!171112))))

(declare-fun bs!849231 () Bool)

(assert (= bs!849231 (and d!1388800 d!1388618)))

(assert (=> bs!849231 (= lambda!171115 lambda!170991)))

(declare-fun bs!849232 () Bool)

(assert (= bs!849232 (and d!1388800 d!1388792)))

(assert (=> bs!849232 (= lambda!171115 lambda!171109)))

(declare-fun bs!849233 () Bool)

(assert (= bs!849233 (and d!1388800 d!1388708)))

(assert (=> bs!849233 (= lambda!171115 lambda!171082)))

(declare-fun bs!849234 () Bool)

(assert (= bs!849234 (and d!1388800 d!1388728)))

(assert (=> bs!849234 (= lambda!171115 lambda!171084)))

(declare-fun bs!849235 () Bool)

(assert (= bs!849235 (and d!1388800 d!1388606)))

(assert (=> bs!849235 (= lambda!171115 lambda!170988)))

(declare-fun bs!849236 () Bool)

(assert (= bs!849236 (and d!1388800 d!1388756)))

(assert (=> bs!849236 (= lambda!171115 lambda!171102)))

(declare-fun bs!849237 () Bool)

(assert (= bs!849237 (and d!1388800 d!1388778)))

(assert (=> bs!849237 (= lambda!171115 lambda!171103)))

(declare-fun bs!849238 () Bool)

(assert (= bs!849238 (and d!1388800 d!1388730)))

(assert (=> bs!849238 (= lambda!171115 lambda!171087)))

(declare-fun bs!849239 () Bool)

(assert (= bs!849239 (and d!1388800 d!1388782)))

(assert (=> bs!849239 (= lambda!171115 lambda!171104)))

(declare-fun bs!849240 () Bool)

(assert (= bs!849240 (and d!1388800 d!1388734)))

(assert (=> bs!849240 (= lambda!171115 lambda!171088)))

(assert (=> d!1388800 (not (contains!13319 (extractMap!1204 (toList!4303 lm!1477)) key!3287))))

(declare-fun lt!1691452 () Unit!93872)

(declare-fun choose!29375 (ListLongMap!2935 K!12010 Hashable!5543) Unit!93872)

(assert (=> d!1388800 (= lt!1691452 (choose!29375 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1388800 (forall!10233 (toList!4303 lm!1477) lambda!171115)))

(assert (=> d!1388800 (= (lemmaNotInItsHashBucketThenNotInMap!136 lm!1477 key!3287 hashF!1107) lt!1691452)))

(declare-fun bs!849241 () Bool)

(assert (= bs!849241 d!1388800))

(assert (=> bs!849241 m!5254535))

(assert (=> bs!849241 m!5254535))

(declare-fun m!5255325 () Bool)

(assert (=> bs!849241 m!5255325))

(declare-fun m!5255327 () Bool)

(assert (=> bs!849241 m!5255327))

(declare-fun m!5255329 () Bool)

(assert (=> bs!849241 m!5255329))

(assert (=> b!4513003 d!1388800))

(declare-fun d!1388802 () Bool)

(declare-fun res!1877641 () Bool)

(declare-fun e!2811766 () Bool)

(assert (=> d!1388802 (=> res!1877641 e!2811766)))

(assert (=> d!1388802 (= res!1877641 (not ((_ is Cons!50610) newBucket!178)))))

(assert (=> d!1388802 (= (noDuplicateKeys!1148 newBucket!178) e!2811766)))

(declare-fun b!4513381 () Bool)

(declare-fun e!2811767 () Bool)

(assert (=> b!4513381 (= e!2811766 e!2811767)))

(declare-fun res!1877642 () Bool)

(assert (=> b!4513381 (=> (not res!1877642) (not e!2811767))))

(assert (=> b!4513381 (= res!1877642 (not (containsKey!1744 (t!357696 newBucket!178) (_1!28807 (h!56451 newBucket!178)))))))

(declare-fun b!4513382 () Bool)

(assert (=> b!4513382 (= e!2811767 (noDuplicateKeys!1148 (t!357696 newBucket!178)))))

(assert (= (and d!1388802 (not res!1877641)) b!4513381))

(assert (= (and b!4513381 res!1877642) b!4513382))

(declare-fun m!5255331 () Bool)

(assert (=> b!4513381 m!5255331))

(declare-fun m!5255333 () Bool)

(assert (=> b!4513382 m!5255333))

(assert (=> b!4513014 d!1388802))

(declare-fun tp!1337889 () Bool)

(declare-fun e!2811770 () Bool)

(declare-fun b!4513387 () Bool)

(assert (=> b!4513387 (= e!2811770 (and tp_is_empty!27869 tp_is_empty!27871 tp!1337889))))

(assert (=> b!4513008 (= tp!1337877 e!2811770)))

(assert (= (and b!4513008 ((_ is Cons!50610) (t!357696 newBucket!178))) b!4513387))

(declare-fun b!4513392 () Bool)

(declare-fun e!2811773 () Bool)

(declare-fun tp!1337894 () Bool)

(declare-fun tp!1337895 () Bool)

(assert (=> b!4513392 (= e!2811773 (and tp!1337894 tp!1337895))))

(assert (=> b!4513006 (= tp!1337876 e!2811773)))

(assert (= (and b!4513006 ((_ is Cons!50611) (toList!4303 lm!1477))) b!4513392))

(declare-fun b_lambda!154055 () Bool)

(assert (= b_lambda!154043 (or start!446316 b_lambda!154055)))

(declare-fun bs!849242 () Bool)

(declare-fun d!1388804 () Bool)

(assert (= bs!849242 (and d!1388804 start!446316)))

(assert (=> bs!849242 (= (dynLambda!21145 lambda!170985 (h!56452 (toList!4303 lt!1691031))) (noDuplicateKeys!1148 (_2!28808 (h!56452 (toList!4303 lt!1691031)))))))

(declare-fun m!5255335 () Bool)

(assert (=> bs!849242 m!5255335))

(assert (=> b!4513113 d!1388804))

(declare-fun b_lambda!154057 () Bool)

(assert (= b_lambda!154037 (or start!446316 b_lambda!154057)))

(declare-fun bs!849243 () Bool)

(declare-fun d!1388806 () Bool)

(assert (= bs!849243 (and d!1388806 start!446316)))

(assert (=> bs!849243 (= (dynLambda!21145 lambda!170985 (h!56452 (toList!4303 lm!1477))) (noDuplicateKeys!1148 (_2!28808 (h!56452 (toList!4303 lm!1477)))))))

(declare-fun m!5255337 () Bool)

(assert (=> bs!849243 m!5255337))

(assert (=> b!4513041 d!1388806))

(declare-fun b_lambda!154059 () Bool)

(assert (= b_lambda!154039 (or start!446316 b_lambda!154059)))

(declare-fun bs!849244 () Bool)

(declare-fun d!1388808 () Bool)

(assert (= bs!849244 (and d!1388808 start!446316)))

(assert (=> bs!849244 (= (dynLambda!21145 lambda!170985 lt!1691030) (noDuplicateKeys!1148 (_2!28808 lt!1691030)))))

(declare-fun m!5255339 () Bool)

(assert (=> bs!849244 m!5255339))

(assert (=> d!1388616 d!1388808))

(check-sat (not b!4513296) (not d!1388648) (not d!1388684) (not b!4513268) (not d!1388612) (not b!4513324) (not b!4513387) (not b!4513311) (not b!4513293) (not b!4513310) (not b!4513266) (not b!4513285) (not b!4513079) (not b!4513376) (not b!4513263) (not d!1388606) (not bm!314311) (not b!4513288) (not d!1388800) (not bm!314309) (not bm!314319) (not b!4513307) (not b!4513312) (not b!4513188) (not d!1388796) (not bs!849242) (not b!4513291) (not b!4513360) (not d!1388724) (not d!1388754) (not d!1388708) (not d!1388654) tp_is_empty!27869 (not b!4513187) (not d!1388726) (not b!4513101) (not b!4513309) (not b!4513306) (not b!4513325) (not b!4513381) (not b!4513323) (not b!4513114) (not d!1388778) (not b_lambda!154059) (not b!4513284) (not bm!314320) (not b!4513036) (not b!4513042) (not b!4513034) (not d!1388730) (not bm!314310) (not d!1388794) (not d!1388722) (not d!1388792) (not b!4513189) (not b!4513260) (not b!4513355) (not b!4513369) (not b!4513368) (not d!1388632) (not b!4513374) (not d!1388786) (not bm!314322) (not d!1388776) tp_is_empty!27871 (not d!1388608) (not b!4513273) (not b!4513363) (not d!1388780) (not d!1388614) (not bm!314321) (not d!1388618) (not d!1388756) (not b!4513366) (not d!1388784) (not b!4513373) (not bm!314317) (not d!1388640) (not d!1388650) (not bs!849243) (not d!1388782) (not b!4513033) (not b!4513090) (not b!4513081) (not b!4513297) (not b!4513304) (not b_lambda!154055) (not b!4513302) (not d!1388626) (not b!4513367) (not b!4513392) (not b!4513382) (not b_lambda!154057) (not b!4513108) (not bm!314318) (not d!1388616) (not b!4513375) (not d!1388738) (not d!1388736) (not b!4513326) (not bs!849244) (not d!1388720) (not d!1388788) (not b!4513031) (not b!4513265) (not d!1388718) (not b!4513294) (not b!4513359) (not d!1388790) (not b!4513185) (not b!4513262) (not b!4513045) (not d!1388728) (not d!1388680) (not b!4513364) (not b!4513295) (not d!1388656) (not b!4513267) (not d!1388646) (not d!1388740) (not b!4513290) (not b!4513287) (not d!1388734) (not d!1388798))
(check-sat)
