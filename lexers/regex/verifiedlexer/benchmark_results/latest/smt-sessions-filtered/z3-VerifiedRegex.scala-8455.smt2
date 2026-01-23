; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!438112 () Bool)

(assert start!438112)

(declare-fun res!1851918 () Bool)

(declare-fun e!2780024 () Bool)

(assert (=> start!438112 (=> (not res!1851918) (not e!2780024))))

(declare-datatypes ((K!11680 0))(
  ( (K!11681 (val!17615 Int)) )
))
(declare-datatypes ((V!11926 0))(
  ( (V!11927 (val!17616 Int)) )
))
(declare-datatypes ((tuple2!50498 0))(
  ( (tuple2!50499 (_1!28543 K!11680) (_2!28543 V!11926)) )
))
(declare-datatypes ((List!50384 0))(
  ( (Nil!50260) (Cons!50260 (h!56015 tuple2!50498) (t!357334 List!50384)) )
))
(declare-datatypes ((tuple2!50500 0))(
  ( (tuple2!50501 (_1!28544 (_ BitVec 64)) (_2!28544 List!50384)) )
))
(declare-datatypes ((List!50385 0))(
  ( (Nil!50261) (Cons!50261 (h!56016 tuple2!50500) (t!357335 List!50385)) )
))
(declare-datatypes ((ListLongMap!2671 0))(
  ( (ListLongMap!2672 (toList!4039 List!50385)) )
))
(declare-fun lm!1477 () ListLongMap!2671)

(declare-fun lambda!162393 () Int)

(declare-fun forall!9966 (List!50385 Int) Bool)

(assert (=> start!438112 (= res!1851918 (forall!9966 (toList!4039 lm!1477) lambda!162393))))

(assert (=> start!438112 e!2780024))

(assert (=> start!438112 true))

(declare-fun e!2780025 () Bool)

(declare-fun inv!65864 (ListLongMap!2671) Bool)

(assert (=> start!438112 (and (inv!65864 lm!1477) e!2780025)))

(declare-fun tp_is_empty!27341 () Bool)

(assert (=> start!438112 tp_is_empty!27341))

(declare-fun e!2780021 () Bool)

(assert (=> start!438112 e!2780021))

(declare-fun b!4464493 () Bool)

(declare-fun e!2780026 () Bool)

(declare-fun e!2780027 () Bool)

(assert (=> b!4464493 (= e!2780026 e!2780027)))

(declare-fun res!1851926 () Bool)

(assert (=> b!4464493 (=> res!1851926 e!2780027)))

(declare-fun lt!1654655 () List!50385)

(declare-fun key!3287 () K!11680)

(declare-fun containsKeyBiggerList!16 (List!50385 K!11680) Bool)

(assert (=> b!4464493 (= res!1851926 (not (containsKeyBiggerList!16 lt!1654655 key!3287)))))

(assert (=> b!4464493 (= lt!1654655 (Cons!50261 (h!56016 (toList!4039 lm!1477)) Nil!50261))))

(declare-fun b!4464494 () Bool)

(declare-fun e!2780023 () Bool)

(declare-fun e!2780019 () Bool)

(assert (=> b!4464494 (= e!2780023 (not e!2780019))))

(declare-fun res!1851925 () Bool)

(assert (=> b!4464494 (=> res!1851925 e!2780019)))

(declare-fun lt!1654647 () List!50384)

(declare-fun newBucket!178 () List!50384)

(declare-fun removePairForKey!643 (List!50384 K!11680) List!50384)

(assert (=> b!4464494 (= res!1851925 (not (= newBucket!178 (removePairForKey!643 lt!1654647 key!3287))))))

(declare-datatypes ((Unit!87113 0))(
  ( (Unit!87114) )
))
(declare-fun lt!1654654 () Unit!87113)

(declare-fun lt!1654652 () tuple2!50500)

(declare-fun forallContained!2237 (List!50385 Int tuple2!50500) Unit!87113)

(assert (=> b!4464494 (= lt!1654654 (forallContained!2237 (toList!4039 lm!1477) lambda!162393 lt!1654652))))

(declare-fun contains!12795 (List!50385 tuple2!50500) Bool)

(assert (=> b!4464494 (contains!12795 (toList!4039 lm!1477) lt!1654652)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4464494 (= lt!1654652 (tuple2!50501 hash!344 lt!1654647))))

(declare-fun lt!1654648 () Unit!87113)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!528 (List!50385 (_ BitVec 64) List!50384) Unit!87113)

(assert (=> b!4464494 (= lt!1654648 (lemmaGetValueByKeyImpliesContainsTuple!528 (toList!4039 lm!1477) hash!344 lt!1654647))))

(declare-fun apply!11753 (ListLongMap!2671 (_ BitVec 64)) List!50384)

(assert (=> b!4464494 (= lt!1654647 (apply!11753 lm!1477 hash!344))))

(declare-fun lt!1654644 () (_ BitVec 64))

(declare-fun contains!12796 (ListLongMap!2671 (_ BitVec 64)) Bool)

(assert (=> b!4464494 (contains!12796 lm!1477 lt!1654644)))

(declare-datatypes ((Hashable!5411 0))(
  ( (HashableExt!5410 (__x!31114 Int)) )
))
(declare-fun hashF!1107 () Hashable!5411)

(declare-fun lt!1654650 () Unit!87113)

(declare-fun lemmaInGenMapThenLongMapContainsHash!90 (ListLongMap!2671 K!11680 Hashable!5411) Unit!87113)

(assert (=> b!4464494 (= lt!1654650 (lemmaInGenMapThenLongMapContainsHash!90 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4464495 () Bool)

(declare-fun e!2780020 () Unit!87113)

(declare-fun Unit!87115 () Unit!87113)

(assert (=> b!4464495 (= e!2780020 Unit!87115)))

(declare-fun b!4464496 () Bool)

(declare-fun tp!1336081 () Bool)

(assert (=> b!4464496 (= e!2780025 tp!1336081)))

(declare-fun b!4464497 () Bool)

(declare-fun Unit!87116 () Unit!87113)

(assert (=> b!4464497 (= e!2780020 Unit!87116)))

(declare-fun lt!1654656 () Unit!87113)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!16 (ListLongMap!2671 K!11680 Hashable!5411) Unit!87113)

(assert (=> b!4464497 (= lt!1654656 (lemmaNotInItsHashBucketThenNotInMap!16 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4464497 false))

(declare-fun b!4464498 () Bool)

(declare-fun res!1851920 () Bool)

(assert (=> b!4464498 (=> (not res!1851920) (not e!2780024))))

(declare-datatypes ((ListMap!3301 0))(
  ( (ListMap!3302 (toList!4040 List!50384)) )
))
(declare-fun contains!12797 (ListMap!3301 K!11680) Bool)

(declare-fun extractMap!1072 (List!50385) ListMap!3301)

(assert (=> b!4464498 (= res!1851920 (contains!12797 (extractMap!1072 (toList!4039 lm!1477)) key!3287))))

(declare-fun b!4464499 () Bool)

(declare-fun res!1851919 () Bool)

(assert (=> b!4464499 (=> (not res!1851919) (not e!2780023))))

(declare-fun allKeysSameHash!870 (List!50384 (_ BitVec 64) Hashable!5411) Bool)

(assert (=> b!4464499 (= res!1851919 (allKeysSameHash!870 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4464500 () Bool)

(assert (=> b!4464500 (= e!2780019 e!2780026)))

(declare-fun res!1851921 () Bool)

(assert (=> b!4464500 (=> res!1851921 e!2780026)))

(declare-fun lt!1654649 () Bool)

(assert (=> b!4464500 (= res!1851921 lt!1654649)))

(declare-fun lt!1654645 () Unit!87113)

(assert (=> b!4464500 (= lt!1654645 e!2780020)))

(declare-fun c!759742 () Bool)

(assert (=> b!4464500 (= c!759742 lt!1654649)))

(declare-fun containsKey!1444 (List!50384 K!11680) Bool)

(assert (=> b!4464500 (= lt!1654649 (not (containsKey!1444 (_2!28544 (h!56016 (toList!4039 lm!1477))) key!3287)))))

(declare-fun b!4464501 () Bool)

(declare-fun e!2780022 () Bool)

(declare-fun isEmpty!28463 (ListLongMap!2671) Bool)

(assert (=> b!4464501 (= e!2780022 (not (isEmpty!28463 lm!1477)))))

(declare-fun b!4464502 () Bool)

(declare-fun res!1851922 () Bool)

(assert (=> b!4464502 (=> (not res!1851922) (not e!2780024))))

(declare-fun allKeysSameHashInMap!1123 (ListLongMap!2671 Hashable!5411) Bool)

(assert (=> b!4464502 (= res!1851922 (allKeysSameHashInMap!1123 lm!1477 hashF!1107))))

(declare-fun b!4464503 () Bool)

(assert (=> b!4464503 (= e!2780027 e!2780022)))

(declare-fun res!1851927 () Bool)

(assert (=> b!4464503 (=> res!1851927 e!2780022)))

(declare-fun lt!1654653 () tuple2!50500)

(declare-fun tail!7485 (List!50385) List!50385)

(declare-fun +!1352 (ListLongMap!2671 tuple2!50500) ListLongMap!2671)

(assert (=> b!4464503 (= res!1851927 (not (= (t!357335 (toList!4039 lm!1477)) (tail!7485 (toList!4039 (+!1352 lm!1477 lt!1654653))))))))

(declare-fun eq!509 (ListMap!3301 ListMap!3301) Bool)

(declare-fun -!278 (ListMap!3301 K!11680) ListMap!3301)

(assert (=> b!4464503 (eq!509 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)) (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))))

(assert (=> b!4464503 (= lt!1654653 (tuple2!50501 hash!344 newBucket!178))))

(declare-fun lt!1654651 () Unit!87113)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!8 ((_ BitVec 64) List!50384 List!50384 K!11680 Hashable!5411) Unit!87113)

(assert (=> b!4464503 (= lt!1654651 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!8 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4464503 (contains!12797 (extractMap!1072 lt!1654655) key!3287)))

(declare-fun lt!1654646 () Unit!87113)

(declare-fun lemmaListContainsThenExtractedMapContains!12 (ListLongMap!2671 K!11680 Hashable!5411) Unit!87113)

(assert (=> b!4464503 (= lt!1654646 (lemmaListContainsThenExtractedMapContains!12 (ListLongMap!2672 lt!1654655) key!3287 hashF!1107))))

(declare-fun b!4464504 () Bool)

(declare-fun res!1851917 () Bool)

(assert (=> b!4464504 (=> res!1851917 e!2780019)))

(declare-fun noDuplicateKeys!1016 (List!50384) Bool)

(assert (=> b!4464504 (= res!1851917 (not (noDuplicateKeys!1016 newBucket!178)))))

(declare-fun b!4464505 () Bool)

(declare-fun res!1851923 () Bool)

(assert (=> b!4464505 (=> res!1851923 e!2780019)))

(get-info :version)

(assert (=> b!4464505 (= res!1851923 (or ((_ is Nil!50261) (toList!4039 lm!1477)) (not (= (_1!28544 (h!56016 (toList!4039 lm!1477))) hash!344))))))

(declare-fun b!4464506 () Bool)

(assert (=> b!4464506 (= e!2780024 e!2780023)))

(declare-fun res!1851924 () Bool)

(assert (=> b!4464506 (=> (not res!1851924) (not e!2780023))))

(assert (=> b!4464506 (= res!1851924 (= lt!1654644 hash!344))))

(declare-fun hash!2415 (Hashable!5411 K!11680) (_ BitVec 64))

(assert (=> b!4464506 (= lt!1654644 (hash!2415 hashF!1107 key!3287))))

(declare-fun b!4464507 () Bool)

(declare-fun tp_is_empty!27343 () Bool)

(declare-fun tp!1336080 () Bool)

(assert (=> b!4464507 (= e!2780021 (and tp_is_empty!27341 tp_is_empty!27343 tp!1336080))))

(assert (= (and start!438112 res!1851918) b!4464502))

(assert (= (and b!4464502 res!1851922) b!4464498))

(assert (= (and b!4464498 res!1851920) b!4464506))

(assert (= (and b!4464506 res!1851924) b!4464499))

(assert (= (and b!4464499 res!1851919) b!4464494))

(assert (= (and b!4464494 (not res!1851925)) b!4464504))

(assert (= (and b!4464504 (not res!1851917)) b!4464505))

(assert (= (and b!4464505 (not res!1851923)) b!4464500))

(assert (= (and b!4464500 c!759742) b!4464497))

(assert (= (and b!4464500 (not c!759742)) b!4464495))

(assert (= (and b!4464500 (not res!1851921)) b!4464493))

(assert (= (and b!4464493 (not res!1851926)) b!4464503))

(assert (= (and b!4464503 (not res!1851927)) b!4464501))

(assert (= start!438112 b!4464496))

(assert (= (and start!438112 ((_ is Cons!50260) newBucket!178)) b!4464507))

(declare-fun m!5168385 () Bool)

(assert (=> b!4464501 m!5168385))

(declare-fun m!5168387 () Bool)

(assert (=> b!4464498 m!5168387))

(assert (=> b!4464498 m!5168387))

(declare-fun m!5168389 () Bool)

(assert (=> b!4464498 m!5168389))

(declare-fun m!5168391 () Bool)

(assert (=> b!4464494 m!5168391))

(declare-fun m!5168393 () Bool)

(assert (=> b!4464494 m!5168393))

(declare-fun m!5168395 () Bool)

(assert (=> b!4464494 m!5168395))

(declare-fun m!5168397 () Bool)

(assert (=> b!4464494 m!5168397))

(declare-fun m!5168399 () Bool)

(assert (=> b!4464494 m!5168399))

(declare-fun m!5168401 () Bool)

(assert (=> b!4464494 m!5168401))

(declare-fun m!5168403 () Bool)

(assert (=> b!4464494 m!5168403))

(declare-fun m!5168405 () Bool)

(assert (=> b!4464504 m!5168405))

(declare-fun m!5168407 () Bool)

(assert (=> b!4464500 m!5168407))

(declare-fun m!5168409 () Bool)

(assert (=> b!4464502 m!5168409))

(declare-fun m!5168411 () Bool)

(assert (=> b!4464497 m!5168411))

(declare-fun m!5168413 () Bool)

(assert (=> b!4464499 m!5168413))

(declare-fun m!5168415 () Bool)

(assert (=> b!4464493 m!5168415))

(declare-fun m!5168417 () Bool)

(assert (=> b!4464506 m!5168417))

(declare-fun m!5168419 () Bool)

(assert (=> start!438112 m!5168419))

(declare-fun m!5168421 () Bool)

(assert (=> start!438112 m!5168421))

(declare-fun m!5168423 () Bool)

(assert (=> b!4464503 m!5168423))

(declare-fun m!5168425 () Bool)

(assert (=> b!4464503 m!5168425))

(declare-fun m!5168427 () Bool)

(assert (=> b!4464503 m!5168427))

(declare-fun m!5168429 () Bool)

(assert (=> b!4464503 m!5168429))

(declare-fun m!5168431 () Bool)

(assert (=> b!4464503 m!5168431))

(declare-fun m!5168433 () Bool)

(assert (=> b!4464503 m!5168433))

(declare-fun m!5168435 () Bool)

(assert (=> b!4464503 m!5168435))

(assert (=> b!4464503 m!5168429))

(declare-fun m!5168437 () Bool)

(assert (=> b!4464503 m!5168437))

(assert (=> b!4464503 m!5168425))

(assert (=> b!4464503 m!5168423))

(assert (=> b!4464503 m!5168427))

(declare-fun m!5168439 () Bool)

(assert (=> b!4464503 m!5168439))

(declare-fun m!5168441 () Bool)

(assert (=> b!4464503 m!5168441))

(check-sat (not b!4464496) (not b!4464501) (not b!4464497) (not b!4464493) (not b!4464507) tp_is_empty!27343 (not start!438112) (not b!4464506) (not b!4464504) (not b!4464498) (not b!4464502) (not b!4464494) (not b!4464503) (not b!4464499) (not b!4464500) tp_is_empty!27341)
(check-sat)
(get-model)

(declare-fun d!1361214 () Bool)

(declare-fun hash!2418 (Hashable!5411 K!11680) (_ BitVec 64))

(assert (=> d!1361214 (= (hash!2415 hashF!1107 key!3287) (hash!2418 hashF!1107 key!3287))))

(declare-fun bs!792401 () Bool)

(assert (= bs!792401 d!1361214))

(declare-fun m!5168465 () Bool)

(assert (=> bs!792401 m!5168465))

(assert (=> b!4464506 d!1361214))

(declare-fun bs!792403 () Bool)

(declare-fun d!1361218 () Bool)

(assert (= bs!792403 (and d!1361218 start!438112)))

(declare-fun lambda!162399 () Int)

(assert (=> bs!792403 (= lambda!162399 lambda!162393)))

(assert (=> d!1361218 (contains!12796 lm!1477 (hash!2415 hashF!1107 key!3287))))

(declare-fun lt!1654686 () Unit!87113)

(declare-fun choose!28478 (ListLongMap!2671 K!11680 Hashable!5411) Unit!87113)

(assert (=> d!1361218 (= lt!1654686 (choose!28478 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361218 (forall!9966 (toList!4039 lm!1477) lambda!162399)))

(assert (=> d!1361218 (= (lemmaInGenMapThenLongMapContainsHash!90 lm!1477 key!3287 hashF!1107) lt!1654686)))

(declare-fun bs!792404 () Bool)

(assert (= bs!792404 d!1361218))

(assert (=> bs!792404 m!5168417))

(assert (=> bs!792404 m!5168417))

(declare-fun m!5168475 () Bool)

(assert (=> bs!792404 m!5168475))

(declare-fun m!5168477 () Bool)

(assert (=> bs!792404 m!5168477))

(declare-fun m!5168479 () Bool)

(assert (=> bs!792404 m!5168479))

(assert (=> b!4464494 d!1361218))

(declare-fun d!1361222 () Bool)

(assert (=> d!1361222 (contains!12795 (toList!4039 lm!1477) (tuple2!50501 hash!344 lt!1654647))))

(declare-fun lt!1654694 () Unit!87113)

(declare-fun choose!28479 (List!50385 (_ BitVec 64) List!50384) Unit!87113)

(assert (=> d!1361222 (= lt!1654694 (choose!28479 (toList!4039 lm!1477) hash!344 lt!1654647))))

(declare-fun e!2780061 () Bool)

(assert (=> d!1361222 e!2780061))

(declare-fun res!1851949 () Bool)

(assert (=> d!1361222 (=> (not res!1851949) (not e!2780061))))

(declare-fun isStrictlySorted!333 (List!50385) Bool)

(assert (=> d!1361222 (= res!1851949 (isStrictlySorted!333 (toList!4039 lm!1477)))))

(assert (=> d!1361222 (= (lemmaGetValueByKeyImpliesContainsTuple!528 (toList!4039 lm!1477) hash!344 lt!1654647) lt!1654694)))

(declare-fun b!4464553 () Bool)

(declare-datatypes ((Option!10910 0))(
  ( (None!10909) (Some!10909 (v!44195 List!50384)) )
))
(declare-fun getValueByKey!896 (List!50385 (_ BitVec 64)) Option!10910)

(assert (=> b!4464553 (= e!2780061 (= (getValueByKey!896 (toList!4039 lm!1477) hash!344) (Some!10909 lt!1654647)))))

(assert (= (and d!1361222 res!1851949) b!4464553))

(declare-fun m!5168497 () Bool)

(assert (=> d!1361222 m!5168497))

(declare-fun m!5168501 () Bool)

(assert (=> d!1361222 m!5168501))

(declare-fun m!5168507 () Bool)

(assert (=> d!1361222 m!5168507))

(declare-fun m!5168509 () Bool)

(assert (=> b!4464553 m!5168509))

(assert (=> b!4464494 d!1361222))

(declare-fun d!1361234 () Bool)

(declare-fun e!2780083 () Bool)

(assert (=> d!1361234 e!2780083))

(declare-fun res!1851960 () Bool)

(assert (=> d!1361234 (=> res!1851960 e!2780083)))

(declare-fun lt!1654725 () Bool)

(assert (=> d!1361234 (= res!1851960 (not lt!1654725))))

(declare-fun lt!1654722 () Bool)

(assert (=> d!1361234 (= lt!1654725 lt!1654722)))

(declare-fun lt!1654723 () Unit!87113)

(declare-fun e!2780084 () Unit!87113)

(assert (=> d!1361234 (= lt!1654723 e!2780084)))

(declare-fun c!759766 () Bool)

(assert (=> d!1361234 (= c!759766 lt!1654722)))

(declare-fun containsKey!1447 (List!50385 (_ BitVec 64)) Bool)

(assert (=> d!1361234 (= lt!1654722 (containsKey!1447 (toList!4039 lm!1477) lt!1654644))))

(assert (=> d!1361234 (= (contains!12796 lm!1477 lt!1654644) lt!1654725)))

(declare-fun b!4464586 () Bool)

(declare-fun lt!1654724 () Unit!87113)

(assert (=> b!4464586 (= e!2780084 lt!1654724)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!800 (List!50385 (_ BitVec 64)) Unit!87113)

(assert (=> b!4464586 (= lt!1654724 (lemmaContainsKeyImpliesGetValueByKeyDefined!800 (toList!4039 lm!1477) lt!1654644))))

(declare-fun isDefined!8197 (Option!10910) Bool)

(assert (=> b!4464586 (isDefined!8197 (getValueByKey!896 (toList!4039 lm!1477) lt!1654644))))

(declare-fun b!4464587 () Bool)

(declare-fun Unit!87122 () Unit!87113)

(assert (=> b!4464587 (= e!2780084 Unit!87122)))

(declare-fun b!4464588 () Bool)

(assert (=> b!4464588 (= e!2780083 (isDefined!8197 (getValueByKey!896 (toList!4039 lm!1477) lt!1654644)))))

(assert (= (and d!1361234 c!759766) b!4464586))

(assert (= (and d!1361234 (not c!759766)) b!4464587))

(assert (= (and d!1361234 (not res!1851960)) b!4464588))

(declare-fun m!5168529 () Bool)

(assert (=> d!1361234 m!5168529))

(declare-fun m!5168531 () Bool)

(assert (=> b!4464586 m!5168531))

(declare-fun m!5168533 () Bool)

(assert (=> b!4464586 m!5168533))

(assert (=> b!4464586 m!5168533))

(declare-fun m!5168535 () Bool)

(assert (=> b!4464586 m!5168535))

(assert (=> b!4464588 m!5168533))

(assert (=> b!4464588 m!5168533))

(assert (=> b!4464588 m!5168535))

(assert (=> b!4464494 d!1361234))

(declare-fun d!1361242 () Bool)

(declare-fun lt!1654731 () List!50384)

(assert (=> d!1361242 (not (containsKey!1444 lt!1654731 key!3287))))

(declare-fun e!2780092 () List!50384)

(assert (=> d!1361242 (= lt!1654731 e!2780092)))

(declare-fun c!759772 () Bool)

(assert (=> d!1361242 (= c!759772 (and ((_ is Cons!50260) lt!1654647) (= (_1!28543 (h!56015 lt!1654647)) key!3287)))))

(assert (=> d!1361242 (noDuplicateKeys!1016 lt!1654647)))

(assert (=> d!1361242 (= (removePairForKey!643 lt!1654647 key!3287) lt!1654731)))

(declare-fun b!4464603 () Bool)

(declare-fun e!2780093 () List!50384)

(assert (=> b!4464603 (= e!2780093 Nil!50260)))

(declare-fun b!4464602 () Bool)

(assert (=> b!4464602 (= e!2780093 (Cons!50260 (h!56015 lt!1654647) (removePairForKey!643 (t!357334 lt!1654647) key!3287)))))

(declare-fun b!4464600 () Bool)

(assert (=> b!4464600 (= e!2780092 (t!357334 lt!1654647))))

(declare-fun b!4464601 () Bool)

(assert (=> b!4464601 (= e!2780092 e!2780093)))

(declare-fun c!759771 () Bool)

(assert (=> b!4464601 (= c!759771 ((_ is Cons!50260) lt!1654647))))

(assert (= (and d!1361242 c!759772) b!4464600))

(assert (= (and d!1361242 (not c!759772)) b!4464601))

(assert (= (and b!4464601 c!759771) b!4464602))

(assert (= (and b!4464601 (not c!759771)) b!4464603))

(declare-fun m!5168541 () Bool)

(assert (=> d!1361242 m!5168541))

(declare-fun m!5168543 () Bool)

(assert (=> d!1361242 m!5168543))

(declare-fun m!5168545 () Bool)

(assert (=> b!4464602 m!5168545))

(assert (=> b!4464494 d!1361242))

(declare-fun d!1361246 () Bool)

(declare-fun dynLambda!20998 (Int tuple2!50500) Bool)

(assert (=> d!1361246 (dynLambda!20998 lambda!162393 lt!1654652)))

(declare-fun lt!1654737 () Unit!87113)

(declare-fun choose!28480 (List!50385 Int tuple2!50500) Unit!87113)

(assert (=> d!1361246 (= lt!1654737 (choose!28480 (toList!4039 lm!1477) lambda!162393 lt!1654652))))

(declare-fun e!2780106 () Bool)

(assert (=> d!1361246 e!2780106))

(declare-fun res!1851976 () Bool)

(assert (=> d!1361246 (=> (not res!1851976) (not e!2780106))))

(assert (=> d!1361246 (= res!1851976 (forall!9966 (toList!4039 lm!1477) lambda!162393))))

(assert (=> d!1361246 (= (forallContained!2237 (toList!4039 lm!1477) lambda!162393 lt!1654652) lt!1654737)))

(declare-fun b!4464620 () Bool)

(assert (=> b!4464620 (= e!2780106 (contains!12795 (toList!4039 lm!1477) lt!1654652))))

(assert (= (and d!1361246 res!1851976) b!4464620))

(declare-fun b_lambda!147953 () Bool)

(assert (=> (not b_lambda!147953) (not d!1361246)))

(declare-fun m!5168559 () Bool)

(assert (=> d!1361246 m!5168559))

(declare-fun m!5168561 () Bool)

(assert (=> d!1361246 m!5168561))

(assert (=> d!1361246 m!5168419))

(assert (=> b!4464620 m!5168391))

(assert (=> b!4464494 d!1361246))

(declare-fun d!1361256 () Bool)

(declare-fun lt!1654742 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8078 (List!50385) (InoxSet tuple2!50500))

(assert (=> d!1361256 (= lt!1654742 (select (content!8078 (toList!4039 lm!1477)) lt!1654652))))

(declare-fun e!2780125 () Bool)

(assert (=> d!1361256 (= lt!1654742 e!2780125)))

(declare-fun res!1851993 () Bool)

(assert (=> d!1361256 (=> (not res!1851993) (not e!2780125))))

(assert (=> d!1361256 (= res!1851993 ((_ is Cons!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361256 (= (contains!12795 (toList!4039 lm!1477) lt!1654652) lt!1654742)))

(declare-fun b!4464642 () Bool)

(declare-fun e!2780124 () Bool)

(assert (=> b!4464642 (= e!2780125 e!2780124)))

(declare-fun res!1851992 () Bool)

(assert (=> b!4464642 (=> res!1851992 e!2780124)))

(assert (=> b!4464642 (= res!1851992 (= (h!56016 (toList!4039 lm!1477)) lt!1654652))))

(declare-fun b!4464643 () Bool)

(assert (=> b!4464643 (= e!2780124 (contains!12795 (t!357335 (toList!4039 lm!1477)) lt!1654652))))

(assert (= (and d!1361256 res!1851993) b!4464642))

(assert (= (and b!4464642 (not res!1851992)) b!4464643))

(declare-fun m!5168585 () Bool)

(assert (=> d!1361256 m!5168585))

(declare-fun m!5168587 () Bool)

(assert (=> d!1361256 m!5168587))

(declare-fun m!5168589 () Bool)

(assert (=> b!4464643 m!5168589))

(assert (=> b!4464494 d!1361256))

(declare-fun d!1361266 () Bool)

(declare-fun get!16373 (Option!10910) List!50384)

(assert (=> d!1361266 (= (apply!11753 lm!1477 hash!344) (get!16373 (getValueByKey!896 (toList!4039 lm!1477) hash!344)))))

(declare-fun bs!792431 () Bool)

(assert (= bs!792431 d!1361266))

(assert (=> bs!792431 m!5168509))

(assert (=> bs!792431 m!5168509))

(declare-fun m!5168591 () Bool)

(assert (=> bs!792431 m!5168591))

(assert (=> b!4464494 d!1361266))

(declare-fun b!4464692 () Bool)

(declare-datatypes ((List!50387 0))(
  ( (Nil!50263) (Cons!50263 (h!56020 K!11680) (t!357337 List!50387)) )
))
(declare-fun e!2780157 () List!50387)

(declare-fun getKeysList!367 (List!50384) List!50387)

(assert (=> b!4464692 (= e!2780157 (getKeysList!367 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))

(declare-fun b!4464693 () Bool)

(declare-fun e!2780162 () Bool)

(declare-fun contains!12799 (List!50387 K!11680) Bool)

(declare-fun keys!17346 (ListMap!3301) List!50387)

(assert (=> b!4464693 (= e!2780162 (contains!12799 (keys!17346 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(declare-fun bm!310762 () Bool)

(declare-fun call!310767 () Bool)

(assert (=> bm!310762 (= call!310767 (contains!12799 e!2780157 key!3287))))

(declare-fun c!759787 () Bool)

(declare-fun c!759785 () Bool)

(assert (=> bm!310762 (= c!759787 c!759785)))

(declare-fun b!4464694 () Bool)

(declare-fun e!2780160 () Unit!87113)

(declare-fun e!2780161 () Unit!87113)

(assert (=> b!4464694 (= e!2780160 e!2780161)))

(declare-fun c!759786 () Bool)

(assert (=> b!4464694 (= c!759786 call!310767)))

(declare-fun d!1361268 () Bool)

(declare-fun e!2780158 () Bool)

(assert (=> d!1361268 e!2780158))

(declare-fun res!1852014 () Bool)

(assert (=> d!1361268 (=> res!1852014 e!2780158)))

(declare-fun e!2780159 () Bool)

(assert (=> d!1361268 (= res!1852014 e!2780159)))

(declare-fun res!1852012 () Bool)

(assert (=> d!1361268 (=> (not res!1852012) (not e!2780159))))

(declare-fun lt!1654790 () Bool)

(assert (=> d!1361268 (= res!1852012 (not lt!1654790))))

(declare-fun lt!1654795 () Bool)

(assert (=> d!1361268 (= lt!1654790 lt!1654795)))

(declare-fun lt!1654791 () Unit!87113)

(assert (=> d!1361268 (= lt!1654791 e!2780160)))

(assert (=> d!1361268 (= c!759785 lt!1654795)))

(declare-fun containsKey!1448 (List!50384 K!11680) Bool)

(assert (=> d!1361268 (= lt!1654795 (containsKey!1448 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(assert (=> d!1361268 (= (contains!12797 (extractMap!1072 (toList!4039 lm!1477)) key!3287) lt!1654790)))

(declare-fun b!4464695 () Bool)

(assert (=> b!4464695 (= e!2780157 (keys!17346 (extractMap!1072 (toList!4039 lm!1477))))))

(declare-fun b!4464696 () Bool)

(assert (=> b!4464696 (= e!2780159 (not (contains!12799 (keys!17346 (extractMap!1072 (toList!4039 lm!1477))) key!3287)))))

(declare-fun b!4464697 () Bool)

(assert (=> b!4464697 (= e!2780158 e!2780162)))

(declare-fun res!1852013 () Bool)

(assert (=> b!4464697 (=> (not res!1852013) (not e!2780162))))

(declare-datatypes ((Option!10911 0))(
  ( (None!10910) (Some!10910 (v!44196 V!11926)) )
))
(declare-fun isDefined!8198 (Option!10911) Bool)

(declare-fun getValueByKey!897 (List!50384 K!11680) Option!10911)

(assert (=> b!4464697 (= res!1852013 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287)))))

(declare-fun b!4464698 () Bool)

(declare-fun Unit!87123 () Unit!87113)

(assert (=> b!4464698 (= e!2780161 Unit!87123)))

(declare-fun b!4464699 () Bool)

(declare-fun lt!1654789 () Unit!87113)

(assert (=> b!4464699 (= e!2780160 lt!1654789)))

(declare-fun lt!1654793 () Unit!87113)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!801 (List!50384 K!11680) Unit!87113)

(assert (=> b!4464699 (= lt!1654793 (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(assert (=> b!4464699 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(declare-fun lt!1654796 () Unit!87113)

(assert (=> b!4464699 (= lt!1654796 lt!1654793)))

(declare-fun lemmaInListThenGetKeysListContains!363 (List!50384 K!11680) Unit!87113)

(assert (=> b!4464699 (= lt!1654789 (lemmaInListThenGetKeysListContains!363 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(assert (=> b!4464699 call!310767))

(declare-fun b!4464700 () Bool)

(assert (=> b!4464700 false))

(declare-fun lt!1654794 () Unit!87113)

(declare-fun lt!1654792 () Unit!87113)

(assert (=> b!4464700 (= lt!1654794 lt!1654792)))

(assert (=> b!4464700 (containsKey!1448 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!366 (List!50384 K!11680) Unit!87113)

(assert (=> b!4464700 (= lt!1654792 (lemmaInGetKeysListThenContainsKey!366 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(declare-fun Unit!87124 () Unit!87113)

(assert (=> b!4464700 (= e!2780161 Unit!87124)))

(assert (= (and d!1361268 c!759785) b!4464699))

(assert (= (and d!1361268 (not c!759785)) b!4464694))

(assert (= (and b!4464694 c!759786) b!4464700))

(assert (= (and b!4464694 (not c!759786)) b!4464698))

(assert (= (or b!4464699 b!4464694) bm!310762))

(assert (= (and bm!310762 c!759787) b!4464692))

(assert (= (and bm!310762 (not c!759787)) b!4464695))

(assert (= (and d!1361268 res!1852012) b!4464696))

(assert (= (and d!1361268 (not res!1852014)) b!4464697))

(assert (= (and b!4464697 res!1852013) b!4464693))

(assert (=> b!4464693 m!5168387))

(declare-fun m!5168671 () Bool)

(assert (=> b!4464693 m!5168671))

(assert (=> b!4464693 m!5168671))

(declare-fun m!5168673 () Bool)

(assert (=> b!4464693 m!5168673))

(assert (=> b!4464695 m!5168387))

(assert (=> b!4464695 m!5168671))

(declare-fun m!5168675 () Bool)

(assert (=> b!4464692 m!5168675))

(assert (=> b!4464696 m!5168387))

(assert (=> b!4464696 m!5168671))

(assert (=> b!4464696 m!5168671))

(assert (=> b!4464696 m!5168673))

(declare-fun m!5168677 () Bool)

(assert (=> bm!310762 m!5168677))

(declare-fun m!5168679 () Bool)

(assert (=> b!4464699 m!5168679))

(declare-fun m!5168681 () Bool)

(assert (=> b!4464699 m!5168681))

(assert (=> b!4464699 m!5168681))

(declare-fun m!5168683 () Bool)

(assert (=> b!4464699 m!5168683))

(declare-fun m!5168685 () Bool)

(assert (=> b!4464699 m!5168685))

(declare-fun m!5168687 () Bool)

(assert (=> d!1361268 m!5168687))

(assert (=> b!4464700 m!5168687))

(declare-fun m!5168689 () Bool)

(assert (=> b!4464700 m!5168689))

(assert (=> b!4464697 m!5168681))

(assert (=> b!4464697 m!5168681))

(assert (=> b!4464697 m!5168683))

(assert (=> b!4464498 d!1361268))

(declare-fun bs!792453 () Bool)

(declare-fun d!1361290 () Bool)

(assert (= bs!792453 (and d!1361290 start!438112)))

(declare-fun lambda!162420 () Int)

(assert (=> bs!792453 (= lambda!162420 lambda!162393)))

(declare-fun bs!792454 () Bool)

(assert (= bs!792454 (and d!1361290 d!1361218)))

(assert (=> bs!792454 (= lambda!162420 lambda!162399)))

(declare-fun lt!1654799 () ListMap!3301)

(declare-fun invariantList!919 (List!50384) Bool)

(assert (=> d!1361290 (invariantList!919 (toList!4040 lt!1654799))))

(declare-fun e!2780165 () ListMap!3301)

(assert (=> d!1361290 (= lt!1654799 e!2780165)))

(declare-fun c!759790 () Bool)

(assert (=> d!1361290 (= c!759790 ((_ is Cons!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361290 (forall!9966 (toList!4039 lm!1477) lambda!162420)))

(assert (=> d!1361290 (= (extractMap!1072 (toList!4039 lm!1477)) lt!1654799)))

(declare-fun b!4464705 () Bool)

(declare-fun addToMapMapFromBucket!581 (List!50384 ListMap!3301) ListMap!3301)

(assert (=> b!4464705 (= e!2780165 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (toList!4039 lm!1477))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))))))

(declare-fun b!4464706 () Bool)

(assert (=> b!4464706 (= e!2780165 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361290 c!759790) b!4464705))

(assert (= (and d!1361290 (not c!759790)) b!4464706))

(declare-fun m!5168691 () Bool)

(assert (=> d!1361290 m!5168691))

(declare-fun m!5168693 () Bool)

(assert (=> d!1361290 m!5168693))

(declare-fun m!5168695 () Bool)

(assert (=> b!4464705 m!5168695))

(assert (=> b!4464705 m!5168695))

(declare-fun m!5168697 () Bool)

(assert (=> b!4464705 m!5168697))

(assert (=> b!4464498 d!1361290))

(declare-fun d!1361292 () Bool)

(declare-fun res!1852019 () Bool)

(declare-fun e!2780170 () Bool)

(assert (=> d!1361292 (=> res!1852019 e!2780170)))

(assert (=> d!1361292 (= res!1852019 ((_ is Nil!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361292 (= (forall!9966 (toList!4039 lm!1477) lambda!162393) e!2780170)))

(declare-fun b!4464711 () Bool)

(declare-fun e!2780171 () Bool)

(assert (=> b!4464711 (= e!2780170 e!2780171)))

(declare-fun res!1852020 () Bool)

(assert (=> b!4464711 (=> (not res!1852020) (not e!2780171))))

(assert (=> b!4464711 (= res!1852020 (dynLambda!20998 lambda!162393 (h!56016 (toList!4039 lm!1477))))))

(declare-fun b!4464712 () Bool)

(assert (=> b!4464712 (= e!2780171 (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162393))))

(assert (= (and d!1361292 (not res!1852019)) b!4464711))

(assert (= (and b!4464711 res!1852020) b!4464712))

(declare-fun b_lambda!147959 () Bool)

(assert (=> (not b_lambda!147959) (not b!4464711)))

(declare-fun m!5168699 () Bool)

(assert (=> b!4464711 m!5168699))

(declare-fun m!5168701 () Bool)

(assert (=> b!4464712 m!5168701))

(assert (=> start!438112 d!1361292))

(declare-fun d!1361294 () Bool)

(assert (=> d!1361294 (= (inv!65864 lm!1477) (isStrictlySorted!333 (toList!4039 lm!1477)))))

(declare-fun bs!792455 () Bool)

(assert (= bs!792455 d!1361294))

(assert (=> bs!792455 m!5168507))

(assert (=> start!438112 d!1361294))

(declare-fun d!1361296 () Bool)

(assert (=> d!1361296 true))

(assert (=> d!1361296 true))

(declare-fun lambda!162423 () Int)

(declare-fun forall!9968 (List!50384 Int) Bool)

(assert (=> d!1361296 (= (allKeysSameHash!870 newBucket!178 hash!344 hashF!1107) (forall!9968 newBucket!178 lambda!162423))))

(declare-fun bs!792456 () Bool)

(assert (= bs!792456 d!1361296))

(declare-fun m!5168703 () Bool)

(assert (=> bs!792456 m!5168703))

(assert (=> b!4464499 d!1361296))

(declare-fun bs!792457 () Bool)

(declare-fun d!1361298 () Bool)

(assert (= bs!792457 (and d!1361298 start!438112)))

(declare-fun lambda!162426 () Int)

(assert (=> bs!792457 (= lambda!162426 lambda!162393)))

(declare-fun bs!792458 () Bool)

(assert (= bs!792458 (and d!1361298 d!1361218)))

(assert (=> bs!792458 (= lambda!162426 lambda!162399)))

(declare-fun bs!792459 () Bool)

(assert (= bs!792459 (and d!1361298 d!1361290)))

(assert (=> bs!792459 (= lambda!162426 lambda!162420)))

(assert (=> d!1361298 (not (contains!12797 (extractMap!1072 (toList!4039 lm!1477)) key!3287))))

(declare-fun lt!1654802 () Unit!87113)

(declare-fun choose!28481 (ListLongMap!2671 K!11680 Hashable!5411) Unit!87113)

(assert (=> d!1361298 (= lt!1654802 (choose!28481 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361298 (forall!9966 (toList!4039 lm!1477) lambda!162426)))

(assert (=> d!1361298 (= (lemmaNotInItsHashBucketThenNotInMap!16 lm!1477 key!3287 hashF!1107) lt!1654802)))

(declare-fun bs!792460 () Bool)

(assert (= bs!792460 d!1361298))

(assert (=> bs!792460 m!5168387))

(assert (=> bs!792460 m!5168387))

(assert (=> bs!792460 m!5168389))

(declare-fun m!5168705 () Bool)

(assert (=> bs!792460 m!5168705))

(declare-fun m!5168707 () Bool)

(assert (=> bs!792460 m!5168707))

(assert (=> b!4464497 d!1361298))

(declare-fun d!1361300 () Bool)

(declare-fun isEmpty!28465 (List!50385) Bool)

(assert (=> d!1361300 (= (isEmpty!28463 lm!1477) (isEmpty!28465 (toList!4039 lm!1477)))))

(declare-fun bs!792461 () Bool)

(assert (= bs!792461 d!1361300))

(declare-fun m!5168709 () Bool)

(assert (=> bs!792461 m!5168709))

(assert (=> b!4464501 d!1361300))

(declare-fun d!1361302 () Bool)

(declare-fun res!1852025 () Bool)

(declare-fun e!2780176 () Bool)

(assert (=> d!1361302 (=> res!1852025 e!2780176)))

(assert (=> d!1361302 (= res!1852025 (and ((_ is Cons!50260) (_2!28544 (h!56016 (toList!4039 lm!1477)))) (= (_1!28543 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))) key!3287)))))

(assert (=> d!1361302 (= (containsKey!1444 (_2!28544 (h!56016 (toList!4039 lm!1477))) key!3287) e!2780176)))

(declare-fun b!4464721 () Bool)

(declare-fun e!2780177 () Bool)

(assert (=> b!4464721 (= e!2780176 e!2780177)))

(declare-fun res!1852026 () Bool)

(assert (=> b!4464721 (=> (not res!1852026) (not e!2780177))))

(assert (=> b!4464721 (= res!1852026 ((_ is Cons!50260) (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(declare-fun b!4464722 () Bool)

(assert (=> b!4464722 (= e!2780177 (containsKey!1444 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477)))) key!3287))))

(assert (= (and d!1361302 (not res!1852025)) b!4464721))

(assert (= (and b!4464721 res!1852026) b!4464722))

(declare-fun m!5168711 () Bool)

(assert (=> b!4464722 m!5168711))

(assert (=> b!4464500 d!1361302))

(declare-fun d!1361304 () Bool)

(declare-fun res!1852035 () Bool)

(declare-fun e!2780185 () Bool)

(assert (=> d!1361304 (=> res!1852035 e!2780185)))

(declare-fun e!2780186 () Bool)

(assert (=> d!1361304 (= res!1852035 e!2780186)))

(declare-fun res!1852034 () Bool)

(assert (=> d!1361304 (=> (not res!1852034) (not e!2780186))))

(assert (=> d!1361304 (= res!1852034 ((_ is Cons!50261) lt!1654655))))

(assert (=> d!1361304 (= (containsKeyBiggerList!16 lt!1654655 key!3287) e!2780185)))

(declare-fun b!4464729 () Bool)

(assert (=> b!4464729 (= e!2780186 (containsKey!1444 (_2!28544 (h!56016 lt!1654655)) key!3287))))

(declare-fun b!4464730 () Bool)

(declare-fun e!2780184 () Bool)

(assert (=> b!4464730 (= e!2780185 e!2780184)))

(declare-fun res!1852033 () Bool)

(assert (=> b!4464730 (=> (not res!1852033) (not e!2780184))))

(assert (=> b!4464730 (= res!1852033 ((_ is Cons!50261) lt!1654655))))

(declare-fun b!4464731 () Bool)

(assert (=> b!4464731 (= e!2780184 (containsKeyBiggerList!16 (t!357335 lt!1654655) key!3287))))

(assert (= (and d!1361304 res!1852034) b!4464729))

(assert (= (and d!1361304 (not res!1852035)) b!4464730))

(assert (= (and b!4464730 res!1852033) b!4464731))

(declare-fun m!5168713 () Bool)

(assert (=> b!4464729 m!5168713))

(declare-fun m!5168715 () Bool)

(assert (=> b!4464731 m!5168715))

(assert (=> b!4464493 d!1361304))

(declare-fun d!1361306 () Bool)

(declare-fun res!1852040 () Bool)

(declare-fun e!2780191 () Bool)

(assert (=> d!1361306 (=> res!1852040 e!2780191)))

(assert (=> d!1361306 (= res!1852040 (not ((_ is Cons!50260) newBucket!178)))))

(assert (=> d!1361306 (= (noDuplicateKeys!1016 newBucket!178) e!2780191)))

(declare-fun b!4464736 () Bool)

(declare-fun e!2780192 () Bool)

(assert (=> b!4464736 (= e!2780191 e!2780192)))

(declare-fun res!1852041 () Bool)

(assert (=> b!4464736 (=> (not res!1852041) (not e!2780192))))

(assert (=> b!4464736 (= res!1852041 (not (containsKey!1444 (t!357334 newBucket!178) (_1!28543 (h!56015 newBucket!178)))))))

(declare-fun b!4464737 () Bool)

(assert (=> b!4464737 (= e!2780192 (noDuplicateKeys!1016 (t!357334 newBucket!178)))))

(assert (= (and d!1361306 (not res!1852040)) b!4464736))

(assert (= (and b!4464736 res!1852041) b!4464737))

(declare-fun m!5168717 () Bool)

(assert (=> b!4464736 m!5168717))

(declare-fun m!5168719 () Bool)

(assert (=> b!4464737 m!5168719))

(assert (=> b!4464504 d!1361306))

(declare-fun bs!792462 () Bool)

(declare-fun d!1361308 () Bool)

(assert (= bs!792462 (and d!1361308 start!438112)))

(declare-fun lambda!162429 () Int)

(assert (=> bs!792462 (not (= lambda!162429 lambda!162393))))

(declare-fun bs!792463 () Bool)

(assert (= bs!792463 (and d!1361308 d!1361218)))

(assert (=> bs!792463 (not (= lambda!162429 lambda!162399))))

(declare-fun bs!792464 () Bool)

(assert (= bs!792464 (and d!1361308 d!1361290)))

(assert (=> bs!792464 (not (= lambda!162429 lambda!162420))))

(declare-fun bs!792465 () Bool)

(assert (= bs!792465 (and d!1361308 d!1361298)))

(assert (=> bs!792465 (not (= lambda!162429 lambda!162426))))

(assert (=> d!1361308 true))

(assert (=> d!1361308 (= (allKeysSameHashInMap!1123 lm!1477 hashF!1107) (forall!9966 (toList!4039 lm!1477) lambda!162429))))

(declare-fun bs!792466 () Bool)

(assert (= bs!792466 d!1361308))

(declare-fun m!5168721 () Bool)

(assert (=> bs!792466 m!5168721))

(assert (=> b!4464502 d!1361308))

(declare-fun bs!792467 () Bool)

(declare-fun d!1361310 () Bool)

(assert (= bs!792467 (and d!1361310 d!1361290)))

(declare-fun lambda!162430 () Int)

(assert (=> bs!792467 (= lambda!162430 lambda!162420)))

(declare-fun bs!792468 () Bool)

(assert (= bs!792468 (and d!1361310 d!1361218)))

(assert (=> bs!792468 (= lambda!162430 lambda!162399)))

(declare-fun bs!792469 () Bool)

(assert (= bs!792469 (and d!1361310 start!438112)))

(assert (=> bs!792469 (= lambda!162430 lambda!162393)))

(declare-fun bs!792470 () Bool)

(assert (= bs!792470 (and d!1361310 d!1361298)))

(assert (=> bs!792470 (= lambda!162430 lambda!162426)))

(declare-fun bs!792471 () Bool)

(assert (= bs!792471 (and d!1361310 d!1361308)))

(assert (=> bs!792471 (not (= lambda!162430 lambda!162429))))

(declare-fun lt!1654803 () ListMap!3301)

(assert (=> d!1361310 (invariantList!919 (toList!4040 lt!1654803))))

(declare-fun e!2780193 () ListMap!3301)

(assert (=> d!1361310 (= lt!1654803 e!2780193)))

(declare-fun c!759791 () Bool)

(assert (=> d!1361310 (= c!759791 ((_ is Cons!50261) lt!1654655))))

(assert (=> d!1361310 (forall!9966 lt!1654655 lambda!162430)))

(assert (=> d!1361310 (= (extractMap!1072 lt!1654655) lt!1654803)))

(declare-fun b!4464740 () Bool)

(assert (=> b!4464740 (= e!2780193 (addToMapMapFromBucket!581 (_2!28544 (h!56016 lt!1654655)) (extractMap!1072 (t!357335 lt!1654655))))))

(declare-fun b!4464741 () Bool)

(assert (=> b!4464741 (= e!2780193 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361310 c!759791) b!4464740))

(assert (= (and d!1361310 (not c!759791)) b!4464741))

(declare-fun m!5168723 () Bool)

(assert (=> d!1361310 m!5168723))

(declare-fun m!5168725 () Bool)

(assert (=> d!1361310 m!5168725))

(declare-fun m!5168727 () Bool)

(assert (=> b!4464740 m!5168727))

(assert (=> b!4464740 m!5168727))

(declare-fun m!5168729 () Bool)

(assert (=> b!4464740 m!5168729))

(assert (=> b!4464503 d!1361310))

(declare-fun bs!792472 () Bool)

(declare-fun d!1361312 () Bool)

(assert (= bs!792472 (and d!1361312 d!1361290)))

(declare-fun lambda!162431 () Int)

(assert (=> bs!792472 (= lambda!162431 lambda!162420)))

(declare-fun bs!792473 () Bool)

(assert (= bs!792473 (and d!1361312 d!1361218)))

(assert (=> bs!792473 (= lambda!162431 lambda!162399)))

(declare-fun bs!792474 () Bool)

(assert (= bs!792474 (and d!1361312 start!438112)))

(assert (=> bs!792474 (= lambda!162431 lambda!162393)))

(declare-fun bs!792475 () Bool)

(assert (= bs!792475 (and d!1361312 d!1361310)))

(assert (=> bs!792475 (= lambda!162431 lambda!162430)))

(declare-fun bs!792476 () Bool)

(assert (= bs!792476 (and d!1361312 d!1361298)))

(assert (=> bs!792476 (= lambda!162431 lambda!162426)))

(declare-fun bs!792477 () Bool)

(assert (= bs!792477 (and d!1361312 d!1361308)))

(assert (=> bs!792477 (not (= lambda!162431 lambda!162429))))

(declare-fun lt!1654804 () ListMap!3301)

(assert (=> d!1361312 (invariantList!919 (toList!4040 lt!1654804))))

(declare-fun e!2780194 () ListMap!3301)

(assert (=> d!1361312 (= lt!1654804 e!2780194)))

(declare-fun c!759792 () Bool)

(assert (=> d!1361312 (= c!759792 ((_ is Cons!50261) (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))

(assert (=> d!1361312 (forall!9966 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261) lambda!162431)))

(assert (=> d!1361312 (= (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) lt!1654804)))

(declare-fun b!4464742 () Bool)

(assert (=> b!4464742 (= e!2780194 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(declare-fun b!4464743 () Bool)

(assert (=> b!4464743 (= e!2780194 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361312 c!759792) b!4464742))

(assert (= (and d!1361312 (not c!759792)) b!4464743))

(declare-fun m!5168731 () Bool)

(assert (=> d!1361312 m!5168731))

(declare-fun m!5168733 () Bool)

(assert (=> d!1361312 m!5168733))

(declare-fun m!5168735 () Bool)

(assert (=> b!4464742 m!5168735))

(assert (=> b!4464742 m!5168735))

(declare-fun m!5168737 () Bool)

(assert (=> b!4464742 m!5168737))

(assert (=> b!4464503 d!1361312))

(declare-fun d!1361314 () Bool)

(declare-fun e!2780197 () Bool)

(assert (=> d!1361314 e!2780197))

(declare-fun res!1852044 () Bool)

(assert (=> d!1361314 (=> (not res!1852044) (not e!2780197))))

(declare-fun lt!1654807 () ListMap!3301)

(assert (=> d!1361314 (= res!1852044 (not (contains!12797 lt!1654807 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!55 (List!50384 K!11680) List!50384)

(assert (=> d!1361314 (= lt!1654807 (ListMap!3302 (removePresrvNoDuplicatedKeys!55 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287)))))

(assert (=> d!1361314 (= (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287) lt!1654807)))

(declare-fun b!4464746 () Bool)

(declare-fun content!8079 (List!50387) (InoxSet K!11680))

(assert (=> b!4464746 (= e!2780197 (= ((_ map and) (content!8079 (keys!17346 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) ((_ map not) (store ((as const (Array K!11680 Bool)) false) key!3287 true))) (content!8079 (keys!17346 lt!1654807))))))

(assert (= (and d!1361314 res!1852044) b!4464746))

(declare-fun m!5168739 () Bool)

(assert (=> d!1361314 m!5168739))

(declare-fun m!5168741 () Bool)

(assert (=> d!1361314 m!5168741))

(declare-fun m!5168743 () Bool)

(assert (=> b!4464746 m!5168743))

(declare-fun m!5168745 () Bool)

(assert (=> b!4464746 m!5168745))

(declare-fun m!5168747 () Bool)

(assert (=> b!4464746 m!5168747))

(declare-fun m!5168749 () Bool)

(assert (=> b!4464746 m!5168749))

(declare-fun m!5168751 () Bool)

(assert (=> b!4464746 m!5168751))

(assert (=> b!4464746 m!5168425))

(assert (=> b!4464746 m!5168749))

(assert (=> b!4464746 m!5168743))

(assert (=> b!4464503 d!1361314))

(declare-fun bs!792478 () Bool)

(declare-fun d!1361316 () Bool)

(assert (= bs!792478 (and d!1361316 d!1361290)))

(declare-fun lambda!162432 () Int)

(assert (=> bs!792478 (= lambda!162432 lambda!162420)))

(declare-fun bs!792479 () Bool)

(assert (= bs!792479 (and d!1361316 d!1361218)))

(assert (=> bs!792479 (= lambda!162432 lambda!162399)))

(declare-fun bs!792480 () Bool)

(assert (= bs!792480 (and d!1361316 start!438112)))

(assert (=> bs!792480 (= lambda!162432 lambda!162393)))

(declare-fun bs!792481 () Bool)

(assert (= bs!792481 (and d!1361316 d!1361310)))

(assert (=> bs!792481 (= lambda!162432 lambda!162430)))

(declare-fun bs!792482 () Bool)

(assert (= bs!792482 (and d!1361316 d!1361308)))

(assert (=> bs!792482 (not (= lambda!162432 lambda!162429))))

(declare-fun bs!792483 () Bool)

(assert (= bs!792483 (and d!1361316 d!1361312)))

(assert (=> bs!792483 (= lambda!162432 lambda!162431)))

(declare-fun bs!792484 () Bool)

(assert (= bs!792484 (and d!1361316 d!1361298)))

(assert (=> bs!792484 (= lambda!162432 lambda!162426)))

(declare-fun lt!1654808 () ListMap!3301)

(assert (=> d!1361316 (invariantList!919 (toList!4040 lt!1654808))))

(declare-fun e!2780198 () ListMap!3301)

(assert (=> d!1361316 (= lt!1654808 e!2780198)))

(declare-fun c!759793 () Bool)

(assert (=> d!1361316 (= c!759793 ((_ is Cons!50261) (Cons!50261 lt!1654653 Nil!50261)))))

(assert (=> d!1361316 (forall!9966 (Cons!50261 lt!1654653 Nil!50261) lambda!162432)))

(assert (=> d!1361316 (= (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)) lt!1654808)))

(declare-fun b!4464747 () Bool)

(assert (=> b!4464747 (= e!2780198 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))))))

(declare-fun b!4464748 () Bool)

(assert (=> b!4464748 (= e!2780198 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361316 c!759793) b!4464747))

(assert (= (and d!1361316 (not c!759793)) b!4464748))

(declare-fun m!5168753 () Bool)

(assert (=> d!1361316 m!5168753))

(declare-fun m!5168755 () Bool)

(assert (=> d!1361316 m!5168755))

(declare-fun m!5168757 () Bool)

(assert (=> b!4464747 m!5168757))

(assert (=> b!4464747 m!5168757))

(declare-fun m!5168759 () Bool)

(assert (=> b!4464747 m!5168759))

(assert (=> b!4464503 d!1361316))

(declare-fun d!1361318 () Bool)

(assert (=> d!1361318 (eq!509 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)) (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))))

(declare-fun lt!1654811 () Unit!87113)

(declare-fun choose!28482 ((_ BitVec 64) List!50384 List!50384 K!11680 Hashable!5411) Unit!87113)

(assert (=> d!1361318 (= lt!1654811 (choose!28482 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1361318 (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477))))))

(assert (=> d!1361318 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!8 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1654811)))

(declare-fun bs!792485 () Bool)

(assert (= bs!792485 d!1361318))

(declare-fun m!5168761 () Bool)

(assert (=> bs!792485 m!5168761))

(declare-fun m!5168763 () Bool)

(assert (=> bs!792485 m!5168763))

(assert (=> bs!792485 m!5168763))

(assert (=> bs!792485 m!5168427))

(declare-fun m!5168765 () Bool)

(assert (=> bs!792485 m!5168765))

(assert (=> bs!792485 m!5168425))

(assert (=> bs!792485 m!5168425))

(assert (=> bs!792485 m!5168427))

(declare-fun m!5168767 () Bool)

(assert (=> bs!792485 m!5168767))

(assert (=> b!4464503 d!1361318))

(declare-fun d!1361320 () Bool)

(declare-fun e!2780201 () Bool)

(assert (=> d!1361320 e!2780201))

(declare-fun res!1852049 () Bool)

(assert (=> d!1361320 (=> (not res!1852049) (not e!2780201))))

(declare-fun lt!1654823 () ListLongMap!2671)

(assert (=> d!1361320 (= res!1852049 (contains!12796 lt!1654823 (_1!28544 lt!1654653)))))

(declare-fun lt!1654820 () List!50385)

(assert (=> d!1361320 (= lt!1654823 (ListLongMap!2672 lt!1654820))))

(declare-fun lt!1654822 () Unit!87113)

(declare-fun lt!1654821 () Unit!87113)

(assert (=> d!1361320 (= lt!1654822 lt!1654821)))

(assert (=> d!1361320 (= (getValueByKey!896 lt!1654820 (_1!28544 lt!1654653)) (Some!10909 (_2!28544 lt!1654653)))))

(declare-fun lemmaContainsTupThenGetReturnValue!576 (List!50385 (_ BitVec 64) List!50384) Unit!87113)

(assert (=> d!1361320 (= lt!1654821 (lemmaContainsTupThenGetReturnValue!576 lt!1654820 (_1!28544 lt!1654653) (_2!28544 lt!1654653)))))

(declare-fun insertStrictlySorted!322 (List!50385 (_ BitVec 64) List!50384) List!50385)

(assert (=> d!1361320 (= lt!1654820 (insertStrictlySorted!322 (toList!4039 lm!1477) (_1!28544 lt!1654653) (_2!28544 lt!1654653)))))

(assert (=> d!1361320 (= (+!1352 lm!1477 lt!1654653) lt!1654823)))

(declare-fun b!4464753 () Bool)

(declare-fun res!1852050 () Bool)

(assert (=> b!4464753 (=> (not res!1852050) (not e!2780201))))

(assert (=> b!4464753 (= res!1852050 (= (getValueByKey!896 (toList!4039 lt!1654823) (_1!28544 lt!1654653)) (Some!10909 (_2!28544 lt!1654653))))))

(declare-fun b!4464754 () Bool)

(assert (=> b!4464754 (= e!2780201 (contains!12795 (toList!4039 lt!1654823) lt!1654653))))

(assert (= (and d!1361320 res!1852049) b!4464753))

(assert (= (and b!4464753 res!1852050) b!4464754))

(declare-fun m!5168769 () Bool)

(assert (=> d!1361320 m!5168769))

(declare-fun m!5168771 () Bool)

(assert (=> d!1361320 m!5168771))

(declare-fun m!5168773 () Bool)

(assert (=> d!1361320 m!5168773))

(declare-fun m!5168775 () Bool)

(assert (=> d!1361320 m!5168775))

(declare-fun m!5168777 () Bool)

(assert (=> b!4464753 m!5168777))

(declare-fun m!5168779 () Bool)

(assert (=> b!4464754 m!5168779))

(assert (=> b!4464503 d!1361320))

(declare-fun b!4464755 () Bool)

(declare-fun e!2780202 () List!50387)

(assert (=> b!4464755 (= e!2780202 (getKeysList!367 (toList!4040 (extractMap!1072 lt!1654655))))))

(declare-fun b!4464756 () Bool)

(declare-fun e!2780207 () Bool)

(assert (=> b!4464756 (= e!2780207 (contains!12799 (keys!17346 (extractMap!1072 lt!1654655)) key!3287))))

(declare-fun bm!310763 () Bool)

(declare-fun call!310768 () Bool)

(assert (=> bm!310763 (= call!310768 (contains!12799 e!2780202 key!3287))))

(declare-fun c!759796 () Bool)

(declare-fun c!759794 () Bool)

(assert (=> bm!310763 (= c!759796 c!759794)))

(declare-fun b!4464757 () Bool)

(declare-fun e!2780205 () Unit!87113)

(declare-fun e!2780206 () Unit!87113)

(assert (=> b!4464757 (= e!2780205 e!2780206)))

(declare-fun c!759795 () Bool)

(assert (=> b!4464757 (= c!759795 call!310768)))

(declare-fun d!1361322 () Bool)

(declare-fun e!2780203 () Bool)

(assert (=> d!1361322 e!2780203))

(declare-fun res!1852053 () Bool)

(assert (=> d!1361322 (=> res!1852053 e!2780203)))

(declare-fun e!2780204 () Bool)

(assert (=> d!1361322 (= res!1852053 e!2780204)))

(declare-fun res!1852051 () Bool)

(assert (=> d!1361322 (=> (not res!1852051) (not e!2780204))))

(declare-fun lt!1654825 () Bool)

(assert (=> d!1361322 (= res!1852051 (not lt!1654825))))

(declare-fun lt!1654830 () Bool)

(assert (=> d!1361322 (= lt!1654825 lt!1654830)))

(declare-fun lt!1654826 () Unit!87113)

(assert (=> d!1361322 (= lt!1654826 e!2780205)))

(assert (=> d!1361322 (= c!759794 lt!1654830)))

(assert (=> d!1361322 (= lt!1654830 (containsKey!1448 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(assert (=> d!1361322 (= (contains!12797 (extractMap!1072 lt!1654655) key!3287) lt!1654825)))

(declare-fun b!4464758 () Bool)

(assert (=> b!4464758 (= e!2780202 (keys!17346 (extractMap!1072 lt!1654655)))))

(declare-fun b!4464759 () Bool)

(assert (=> b!4464759 (= e!2780204 (not (contains!12799 (keys!17346 (extractMap!1072 lt!1654655)) key!3287)))))

(declare-fun b!4464760 () Bool)

(assert (=> b!4464760 (= e!2780203 e!2780207)))

(declare-fun res!1852052 () Bool)

(assert (=> b!4464760 (=> (not res!1852052) (not e!2780207))))

(assert (=> b!4464760 (= res!1852052 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 lt!1654655)) key!3287)))))

(declare-fun b!4464761 () Bool)

(declare-fun Unit!87125 () Unit!87113)

(assert (=> b!4464761 (= e!2780206 Unit!87125)))

(declare-fun b!4464762 () Bool)

(declare-fun lt!1654824 () Unit!87113)

(assert (=> b!4464762 (= e!2780205 lt!1654824)))

(declare-fun lt!1654828 () Unit!87113)

(assert (=> b!4464762 (= lt!1654828 (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(assert (=> b!4464762 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(declare-fun lt!1654831 () Unit!87113)

(assert (=> b!4464762 (= lt!1654831 lt!1654828)))

(assert (=> b!4464762 (= lt!1654824 (lemmaInListThenGetKeysListContains!363 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(assert (=> b!4464762 call!310768))

(declare-fun b!4464763 () Bool)

(assert (=> b!4464763 false))

(declare-fun lt!1654829 () Unit!87113)

(declare-fun lt!1654827 () Unit!87113)

(assert (=> b!4464763 (= lt!1654829 lt!1654827)))

(assert (=> b!4464763 (containsKey!1448 (toList!4040 (extractMap!1072 lt!1654655)) key!3287)))

(assert (=> b!4464763 (= lt!1654827 (lemmaInGetKeysListThenContainsKey!366 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(declare-fun Unit!87126 () Unit!87113)

(assert (=> b!4464763 (= e!2780206 Unit!87126)))

(assert (= (and d!1361322 c!759794) b!4464762))

(assert (= (and d!1361322 (not c!759794)) b!4464757))

(assert (= (and b!4464757 c!759795) b!4464763))

(assert (= (and b!4464757 (not c!759795)) b!4464761))

(assert (= (or b!4464762 b!4464757) bm!310763))

(assert (= (and bm!310763 c!759796) b!4464755))

(assert (= (and bm!310763 (not c!759796)) b!4464758))

(assert (= (and d!1361322 res!1852051) b!4464759))

(assert (= (and d!1361322 (not res!1852053)) b!4464760))

(assert (= (and b!4464760 res!1852052) b!4464756))

(assert (=> b!4464756 m!5168429))

(declare-fun m!5168781 () Bool)

(assert (=> b!4464756 m!5168781))

(assert (=> b!4464756 m!5168781))

(declare-fun m!5168783 () Bool)

(assert (=> b!4464756 m!5168783))

(assert (=> b!4464758 m!5168429))

(assert (=> b!4464758 m!5168781))

(declare-fun m!5168785 () Bool)

(assert (=> b!4464755 m!5168785))

(assert (=> b!4464759 m!5168429))

(assert (=> b!4464759 m!5168781))

(assert (=> b!4464759 m!5168781))

(assert (=> b!4464759 m!5168783))

(declare-fun m!5168787 () Bool)

(assert (=> bm!310763 m!5168787))

(declare-fun m!5168789 () Bool)

(assert (=> b!4464762 m!5168789))

(declare-fun m!5168791 () Bool)

(assert (=> b!4464762 m!5168791))

(assert (=> b!4464762 m!5168791))

(declare-fun m!5168793 () Bool)

(assert (=> b!4464762 m!5168793))

(declare-fun m!5168795 () Bool)

(assert (=> b!4464762 m!5168795))

(declare-fun m!5168797 () Bool)

(assert (=> d!1361322 m!5168797))

(assert (=> b!4464763 m!5168797))

(declare-fun m!5168799 () Bool)

(assert (=> b!4464763 m!5168799))

(assert (=> b!4464760 m!5168791))

(assert (=> b!4464760 m!5168791))

(assert (=> b!4464760 m!5168793))

(assert (=> b!4464503 d!1361322))

(declare-fun d!1361324 () Bool)

(assert (=> d!1361324 (= (tail!7485 (toList!4039 (+!1352 lm!1477 lt!1654653))) (t!357335 (toList!4039 (+!1352 lm!1477 lt!1654653))))))

(assert (=> b!4464503 d!1361324))

(declare-fun bs!792486 () Bool)

(declare-fun d!1361326 () Bool)

(assert (= bs!792486 (and d!1361326 d!1361290)))

(declare-fun lambda!162435 () Int)

(assert (=> bs!792486 (= lambda!162435 lambda!162420)))

(declare-fun bs!792487 () Bool)

(assert (= bs!792487 (and d!1361326 start!438112)))

(assert (=> bs!792487 (= lambda!162435 lambda!162393)))

(declare-fun bs!792488 () Bool)

(assert (= bs!792488 (and d!1361326 d!1361310)))

(assert (=> bs!792488 (= lambda!162435 lambda!162430)))

(declare-fun bs!792489 () Bool)

(assert (= bs!792489 (and d!1361326 d!1361308)))

(assert (=> bs!792489 (not (= lambda!162435 lambda!162429))))

(declare-fun bs!792490 () Bool)

(assert (= bs!792490 (and d!1361326 d!1361218)))

(assert (=> bs!792490 (= lambda!162435 lambda!162399)))

(declare-fun bs!792491 () Bool)

(assert (= bs!792491 (and d!1361326 d!1361316)))

(assert (=> bs!792491 (= lambda!162435 lambda!162432)))

(declare-fun bs!792492 () Bool)

(assert (= bs!792492 (and d!1361326 d!1361312)))

(assert (=> bs!792492 (= lambda!162435 lambda!162431)))

(declare-fun bs!792493 () Bool)

(assert (= bs!792493 (and d!1361326 d!1361298)))

(assert (=> bs!792493 (= lambda!162435 lambda!162426)))

(assert (=> d!1361326 (contains!12797 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655))) key!3287)))

(declare-fun lt!1654834 () Unit!87113)

(declare-fun choose!28483 (ListLongMap!2671 K!11680 Hashable!5411) Unit!87113)

(assert (=> d!1361326 (= lt!1654834 (choose!28483 (ListLongMap!2672 lt!1654655) key!3287 hashF!1107))))

(assert (=> d!1361326 (forall!9966 (toList!4039 (ListLongMap!2672 lt!1654655)) lambda!162435)))

(assert (=> d!1361326 (= (lemmaListContainsThenExtractedMapContains!12 (ListLongMap!2672 lt!1654655) key!3287 hashF!1107) lt!1654834)))

(declare-fun bs!792494 () Bool)

(assert (= bs!792494 d!1361326))

(declare-fun m!5168801 () Bool)

(assert (=> bs!792494 m!5168801))

(assert (=> bs!792494 m!5168801))

(declare-fun m!5168803 () Bool)

(assert (=> bs!792494 m!5168803))

(declare-fun m!5168805 () Bool)

(assert (=> bs!792494 m!5168805))

(declare-fun m!5168807 () Bool)

(assert (=> bs!792494 m!5168807))

(assert (=> b!4464503 d!1361326))

(declare-fun d!1361328 () Bool)

(declare-fun content!8080 (List!50384) (InoxSet tuple2!50498))

(assert (=> d!1361328 (= (eq!509 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)) (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287)) (= (content!8080 (toList!4040 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)))) (content!8080 (toList!4040 (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287)))))))

(declare-fun bs!792495 () Bool)

(assert (= bs!792495 d!1361328))

(declare-fun m!5168809 () Bool)

(assert (=> bs!792495 m!5168809))

(declare-fun m!5168811 () Bool)

(assert (=> bs!792495 m!5168811))

(assert (=> b!4464503 d!1361328))

(declare-fun b!4464768 () Bool)

(declare-fun e!2780210 () Bool)

(declare-fun tp!1336093 () Bool)

(assert (=> b!4464768 (= e!2780210 (and tp_is_empty!27341 tp_is_empty!27343 tp!1336093))))

(assert (=> b!4464507 (= tp!1336080 e!2780210)))

(assert (= (and b!4464507 ((_ is Cons!50260) (t!357334 newBucket!178))) b!4464768))

(declare-fun b!4464773 () Bool)

(declare-fun e!2780213 () Bool)

(declare-fun tp!1336098 () Bool)

(declare-fun tp!1336099 () Bool)

(assert (=> b!4464773 (= e!2780213 (and tp!1336098 tp!1336099))))

(assert (=> b!4464496 (= tp!1336081 e!2780213)))

(assert (= (and b!4464496 ((_ is Cons!50261) (toList!4039 lm!1477))) b!4464773))

(declare-fun b_lambda!147961 () Bool)

(assert (= b_lambda!147959 (or start!438112 b_lambda!147961)))

(declare-fun bs!792496 () Bool)

(declare-fun d!1361330 () Bool)

(assert (= bs!792496 (and d!1361330 start!438112)))

(assert (=> bs!792496 (= (dynLambda!20998 lambda!162393 (h!56016 (toList!4039 lm!1477))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(assert (=> bs!792496 m!5168767))

(assert (=> b!4464711 d!1361330))

(declare-fun b_lambda!147963 () Bool)

(assert (= b_lambda!147953 (or start!438112 b_lambda!147963)))

(declare-fun bs!792497 () Bool)

(declare-fun d!1361332 () Bool)

(assert (= bs!792497 (and d!1361332 start!438112)))

(assert (=> bs!792497 (= (dynLambda!20998 lambda!162393 lt!1654652) (noDuplicateKeys!1016 (_2!28544 lt!1654652)))))

(declare-fun m!5168813 () Bool)

(assert (=> bs!792497 m!5168813))

(assert (=> d!1361246 d!1361332))

(check-sat tp_is_empty!27343 (not b!4464602) (not b!4464693) (not d!1361266) (not b!4464756) (not b!4464712) (not b!4464700) (not b!4464760) (not d!1361322) (not b!4464695) (not b!4464553) (not b!4464729) (not d!1361234) (not b!4464722) (not bm!310762) (not b!4464753) (not b!4464736) (not b!4464758) (not b!4464699) (not d!1361316) (not d!1361312) (not b!4464731) (not d!1361246) (not d!1361294) (not d!1361300) (not b!4464643) (not b!4464692) (not d!1361318) (not bs!792496) (not d!1361214) (not b!4464762) (not b!4464696) (not b!4464705) (not bm!310763) (not b!4464773) (not d!1361320) (not d!1361314) (not b_lambda!147963) (not b!4464588) (not b!4464586) (not b!4464697) (not d!1361298) (not b!4464763) (not d!1361218) (not b!4464747) (not bs!792497) (not d!1361308) (not d!1361268) (not b_lambda!147961) (not d!1361328) (not b!4464754) (not d!1361326) (not b!4464740) (not b!4464620) (not d!1361310) (not b!4464768) (not b!4464737) (not d!1361296) (not d!1361256) (not b!4464759) (not b!4464742) (not b!4464746) tp_is_empty!27341 (not d!1361222) (not d!1361290) (not b!4464755) (not d!1361242))
(check-sat)
(get-model)

(declare-fun d!1361420 () Bool)

(declare-fun lt!1654896 () Bool)

(assert (=> d!1361420 (= lt!1654896 (select (content!8079 (keys!17346 (extractMap!1072 lt!1654655))) key!3287))))

(declare-fun e!2780331 () Bool)

(assert (=> d!1361420 (= lt!1654896 e!2780331)))

(declare-fun res!1852144 () Bool)

(assert (=> d!1361420 (=> (not res!1852144) (not e!2780331))))

(assert (=> d!1361420 (= res!1852144 ((_ is Cons!50263) (keys!17346 (extractMap!1072 lt!1654655))))))

(assert (=> d!1361420 (= (contains!12799 (keys!17346 (extractMap!1072 lt!1654655)) key!3287) lt!1654896)))

(declare-fun b!4464970 () Bool)

(declare-fun e!2780332 () Bool)

(assert (=> b!4464970 (= e!2780331 e!2780332)))

(declare-fun res!1852145 () Bool)

(assert (=> b!4464970 (=> res!1852145 e!2780332)))

(assert (=> b!4464970 (= res!1852145 (= (h!56020 (keys!17346 (extractMap!1072 lt!1654655))) key!3287))))

(declare-fun b!4464971 () Bool)

(assert (=> b!4464971 (= e!2780332 (contains!12799 (t!357337 (keys!17346 (extractMap!1072 lt!1654655))) key!3287))))

(assert (= (and d!1361420 res!1852144) b!4464970))

(assert (= (and b!4464970 (not res!1852145)) b!4464971))

(assert (=> d!1361420 m!5168781))

(declare-fun m!5169037 () Bool)

(assert (=> d!1361420 m!5169037))

(declare-fun m!5169039 () Bool)

(assert (=> d!1361420 m!5169039))

(declare-fun m!5169041 () Bool)

(assert (=> b!4464971 m!5169041))

(assert (=> b!4464759 d!1361420))

(declare-fun b!4464979 () Bool)

(assert (=> b!4464979 true))

(declare-fun d!1361422 () Bool)

(declare-fun e!2780335 () Bool)

(assert (=> d!1361422 e!2780335))

(declare-fun res!1852153 () Bool)

(assert (=> d!1361422 (=> (not res!1852153) (not e!2780335))))

(declare-fun lt!1654899 () List!50387)

(declare-fun noDuplicate!692 (List!50387) Bool)

(assert (=> d!1361422 (= res!1852153 (noDuplicate!692 lt!1654899))))

(assert (=> d!1361422 (= lt!1654899 (getKeysList!367 (toList!4040 (extractMap!1072 lt!1654655))))))

(assert (=> d!1361422 (= (keys!17346 (extractMap!1072 lt!1654655)) lt!1654899)))

(declare-fun b!4464978 () Bool)

(declare-fun res!1852154 () Bool)

(assert (=> b!4464978 (=> (not res!1852154) (not e!2780335))))

(declare-fun length!240 (List!50387) Int)

(declare-fun length!241 (List!50384) Int)

(assert (=> b!4464978 (= res!1852154 (= (length!240 lt!1654899) (length!241 (toList!4040 (extractMap!1072 lt!1654655)))))))

(declare-fun res!1852152 () Bool)

(assert (=> b!4464979 (=> (not res!1852152) (not e!2780335))))

(declare-fun lambda!162466 () Int)

(declare-fun forall!9970 (List!50387 Int) Bool)

(assert (=> b!4464979 (= res!1852152 (forall!9970 lt!1654899 lambda!162466))))

(declare-fun b!4464980 () Bool)

(declare-fun lambda!162467 () Int)

(declare-fun map!11011 (List!50384 Int) List!50387)

(assert (=> b!4464980 (= e!2780335 (= (content!8079 lt!1654899) (content!8079 (map!11011 (toList!4040 (extractMap!1072 lt!1654655)) lambda!162467))))))

(assert (= (and d!1361422 res!1852153) b!4464978))

(assert (= (and b!4464978 res!1852154) b!4464979))

(assert (= (and b!4464979 res!1852152) b!4464980))

(declare-fun m!5169043 () Bool)

(assert (=> d!1361422 m!5169043))

(assert (=> d!1361422 m!5168785))

(declare-fun m!5169045 () Bool)

(assert (=> b!4464978 m!5169045))

(declare-fun m!5169047 () Bool)

(assert (=> b!4464978 m!5169047))

(declare-fun m!5169049 () Bool)

(assert (=> b!4464979 m!5169049))

(declare-fun m!5169051 () Bool)

(assert (=> b!4464980 m!5169051))

(declare-fun m!5169053 () Bool)

(assert (=> b!4464980 m!5169053))

(assert (=> b!4464980 m!5169053))

(declare-fun m!5169055 () Bool)

(assert (=> b!4464980 m!5169055))

(assert (=> b!4464759 d!1361422))

(declare-fun d!1361424 () Bool)

(declare-fun c!759852 () Bool)

(assert (=> d!1361424 (= c!759852 (and ((_ is Cons!50261) (toList!4039 lt!1654823)) (= (_1!28544 (h!56016 (toList!4039 lt!1654823))) (_1!28544 lt!1654653))))))

(declare-fun e!2780340 () Option!10910)

(assert (=> d!1361424 (= (getValueByKey!896 (toList!4039 lt!1654823) (_1!28544 lt!1654653)) e!2780340)))

(declare-fun b!4464994 () Bool)

(declare-fun e!2780341 () Option!10910)

(assert (=> b!4464994 (= e!2780341 None!10909)))

(declare-fun b!4464992 () Bool)

(assert (=> b!4464992 (= e!2780340 e!2780341)))

(declare-fun c!759853 () Bool)

(assert (=> b!4464992 (= c!759853 (and ((_ is Cons!50261) (toList!4039 lt!1654823)) (not (= (_1!28544 (h!56016 (toList!4039 lt!1654823))) (_1!28544 lt!1654653)))))))

(declare-fun b!4464991 () Bool)

(assert (=> b!4464991 (= e!2780340 (Some!10909 (_2!28544 (h!56016 (toList!4039 lt!1654823)))))))

(declare-fun b!4464993 () Bool)

(assert (=> b!4464993 (= e!2780341 (getValueByKey!896 (t!357335 (toList!4039 lt!1654823)) (_1!28544 lt!1654653)))))

(assert (= (and d!1361424 c!759852) b!4464991))

(assert (= (and d!1361424 (not c!759852)) b!4464992))

(assert (= (and b!4464992 c!759853) b!4464993))

(assert (= (and b!4464992 (not c!759853)) b!4464994))

(declare-fun m!5169057 () Bool)

(assert (=> b!4464993 m!5169057))

(assert (=> b!4464753 d!1361424))

(declare-fun bs!792580 () Bool)

(declare-fun b!4465041 () Bool)

(assert (= bs!792580 (and b!4465041 d!1361296)))

(declare-fun lambda!162530 () Int)

(assert (=> bs!792580 (not (= lambda!162530 lambda!162423))))

(assert (=> b!4465041 true))

(declare-fun bs!792582 () Bool)

(declare-fun b!4465043 () Bool)

(assert (= bs!792582 (and b!4465043 d!1361296)))

(declare-fun lambda!162531 () Int)

(assert (=> bs!792582 (not (= lambda!162531 lambda!162423))))

(declare-fun bs!792583 () Bool)

(assert (= bs!792583 (and b!4465043 b!4465041)))

(assert (=> bs!792583 (= lambda!162531 lambda!162530)))

(assert (=> b!4465043 true))

(declare-fun lambda!162532 () Int)

(assert (=> bs!792582 (not (= lambda!162532 lambda!162423))))

(declare-fun lt!1655020 () ListMap!3301)

(assert (=> bs!792583 (= (= lt!1655020 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162532 lambda!162530))))

(assert (=> b!4465043 (= (= lt!1655020 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162532 lambda!162531))))

(assert (=> b!4465043 true))

(declare-fun bs!792584 () Bool)

(declare-fun d!1361426 () Bool)

(assert (= bs!792584 (and d!1361426 d!1361296)))

(declare-fun lambda!162533 () Int)

(assert (=> bs!792584 (not (= lambda!162533 lambda!162423))))

(declare-fun bs!792585 () Bool)

(assert (= bs!792585 (and d!1361426 b!4465041)))

(declare-fun lt!1655026 () ListMap!3301)

(assert (=> bs!792585 (= (= lt!1655026 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162533 lambda!162530))))

(declare-fun bs!792586 () Bool)

(assert (= bs!792586 (and d!1361426 b!4465043)))

(assert (=> bs!792586 (= (= lt!1655026 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162533 lambda!162531))))

(assert (=> bs!792586 (= (= lt!1655026 lt!1655020) (= lambda!162533 lambda!162532))))

(assert (=> d!1361426 true))

(declare-fun b!4465039 () Bool)

(declare-fun res!1852181 () Bool)

(declare-fun e!2780371 () Bool)

(assert (=> b!4465039 (=> (not res!1852181) (not e!2780371))))

(assert (=> b!4465039 (= res!1852181 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) lambda!162533))))

(declare-fun bm!310788 () Bool)

(declare-fun call!310793 () Unit!87113)

(declare-fun lemmaContainsAllItsOwnKeys!260 (ListMap!3301) Unit!87113)

(assert (=> bm!310788 (= call!310793 (lemmaContainsAllItsOwnKeys!260 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))))))

(declare-fun b!4465040 () Bool)

(declare-fun e!2780370 () Bool)

(assert (=> b!4465040 (= e!2780370 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) lambda!162532))))

(declare-fun c!759863 () Bool)

(declare-fun call!310794 () Bool)

(declare-fun bm!310789 () Bool)

(assert (=> bm!310789 (= call!310794 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (ite c!759863 lambda!162530 lambda!162532)))))

(declare-fun e!2780372 () ListMap!3301)

(assert (=> b!4465041 (= e!2780372 (extractMap!1072 (t!357335 (toList!4039 lm!1477))))))

(declare-fun lt!1655010 () Unit!87113)

(assert (=> b!4465041 (= lt!1655010 call!310793)))

(assert (=> b!4465041 call!310794))

(declare-fun lt!1655014 () Unit!87113)

(assert (=> b!4465041 (= lt!1655014 lt!1655010)))

(declare-fun call!310795 () Bool)

(assert (=> b!4465041 call!310795))

(declare-fun lt!1655013 () Unit!87113)

(declare-fun Unit!87135 () Unit!87113)

(assert (=> b!4465041 (= lt!1655013 Unit!87135)))

(declare-fun bm!310790 () Bool)

(declare-fun lt!1655021 () ListMap!3301)

(assert (=> bm!310790 (= call!310795 (forall!9968 (ite c!759863 (toList!4040 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (toList!4040 lt!1655021)) (ite c!759863 lambda!162530 lambda!162532)))))

(declare-fun b!4465042 () Bool)

(assert (=> b!4465042 (= e!2780371 (invariantList!919 (toList!4040 lt!1655026)))))

(assert (=> d!1361426 e!2780371))

(declare-fun res!1852179 () Bool)

(assert (=> d!1361426 (=> (not res!1852179) (not e!2780371))))

(assert (=> d!1361426 (= res!1852179 (forall!9968 (_2!28544 (h!56016 (toList!4039 lm!1477))) lambda!162533))))

(assert (=> d!1361426 (= lt!1655026 e!2780372)))

(assert (=> d!1361426 (= c!759863 ((_ is Nil!50260) (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(assert (=> d!1361426 (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477))))))

(assert (=> d!1361426 (= (addToMapMapFromBucket!581 (_2!28544 (h!56016 (toList!4039 lm!1477))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) lt!1655026)))

(assert (=> b!4465043 (= e!2780372 lt!1655020)))

(declare-fun +!1353 (ListMap!3301 tuple2!50498) ListMap!3301)

(assert (=> b!4465043 (= lt!1655021 (+!1353 (extractMap!1072 (t!357335 (toList!4039 lm!1477))) (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(assert (=> b!4465043 (= lt!1655020 (addToMapMapFromBucket!581 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477)))) (+!1353 (extractMap!1072 (t!357335 (toList!4039 lm!1477))) (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))))

(declare-fun lt!1655027 () Unit!87113)

(assert (=> b!4465043 (= lt!1655027 call!310793)))

(assert (=> b!4465043 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) lambda!162531)))

(declare-fun lt!1655011 () Unit!87113)

(assert (=> b!4465043 (= lt!1655011 lt!1655027)))

(assert (=> b!4465043 (forall!9968 (toList!4040 lt!1655021) lambda!162532)))

(declare-fun lt!1655012 () Unit!87113)

(declare-fun Unit!87137 () Unit!87113)

(assert (=> b!4465043 (= lt!1655012 Unit!87137)))

(assert (=> b!4465043 (forall!9968 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477)))) lambda!162532)))

(declare-fun lt!1655025 () Unit!87113)

(declare-fun Unit!87138 () Unit!87113)

(assert (=> b!4465043 (= lt!1655025 Unit!87138)))

(declare-fun lt!1655017 () Unit!87113)

(declare-fun Unit!87139 () Unit!87113)

(assert (=> b!4465043 (= lt!1655017 Unit!87139)))

(declare-fun lt!1655028 () Unit!87113)

(declare-fun forallContained!2239 (List!50384 Int tuple2!50498) Unit!87113)

(assert (=> b!4465043 (= lt!1655028 (forallContained!2239 (toList!4040 lt!1655021) lambda!162532 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(assert (=> b!4465043 (contains!12797 lt!1655021 (_1!28543 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(declare-fun lt!1655024 () Unit!87113)

(declare-fun Unit!87140 () Unit!87113)

(assert (=> b!4465043 (= lt!1655024 Unit!87140)))

(assert (=> b!4465043 (contains!12797 lt!1655020 (_1!28543 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(declare-fun lt!1655019 () Unit!87113)

(declare-fun Unit!87141 () Unit!87113)

(assert (=> b!4465043 (= lt!1655019 Unit!87141)))

(assert (=> b!4465043 (forall!9968 (_2!28544 (h!56016 (toList!4039 lm!1477))) lambda!162532)))

(declare-fun lt!1655008 () Unit!87113)

(declare-fun Unit!87142 () Unit!87113)

(assert (=> b!4465043 (= lt!1655008 Unit!87142)))

(assert (=> b!4465043 call!310795))

(declare-fun lt!1655023 () Unit!87113)

(declare-fun Unit!87143 () Unit!87113)

(assert (=> b!4465043 (= lt!1655023 Unit!87143)))

(declare-fun lt!1655018 () Unit!87113)

(declare-fun Unit!87144 () Unit!87113)

(assert (=> b!4465043 (= lt!1655018 Unit!87144)))

(declare-fun lt!1655015 () Unit!87113)

(declare-fun addForallContainsKeyThenBeforeAdding!259 (ListMap!3301 ListMap!3301 K!11680 V!11926) Unit!87113)

(assert (=> b!4465043 (= lt!1655015 (addForallContainsKeyThenBeforeAdding!259 (extractMap!1072 (t!357335 (toList!4039 lm!1477))) lt!1655020 (_1!28543 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))) (_2!28543 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))))

(assert (=> b!4465043 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) lambda!162532)))

(declare-fun lt!1655009 () Unit!87113)

(assert (=> b!4465043 (= lt!1655009 lt!1655015)))

(assert (=> b!4465043 call!310794))

(declare-fun lt!1655022 () Unit!87113)

(declare-fun Unit!87145 () Unit!87113)

(assert (=> b!4465043 (= lt!1655022 Unit!87145)))

(declare-fun res!1852180 () Bool)

(assert (=> b!4465043 (= res!1852180 (forall!9968 (_2!28544 (h!56016 (toList!4039 lm!1477))) lambda!162532))))

(assert (=> b!4465043 (=> (not res!1852180) (not e!2780370))))

(assert (=> b!4465043 e!2780370))

(declare-fun lt!1655016 () Unit!87113)

(declare-fun Unit!87146 () Unit!87113)

(assert (=> b!4465043 (= lt!1655016 Unit!87146)))

(assert (= (and d!1361426 c!759863) b!4465041))

(assert (= (and d!1361426 (not c!759863)) b!4465043))

(assert (= (and b!4465043 res!1852180) b!4465040))

(assert (= (or b!4465041 b!4465043) bm!310789))

(assert (= (or b!4465041 b!4465043) bm!310790))

(assert (= (or b!4465041 b!4465043) bm!310788))

(assert (= (and d!1361426 res!1852179) b!4465039))

(assert (= (and b!4465039 res!1852181) b!4465042))

(declare-fun m!5169139 () Bool)

(assert (=> b!4465043 m!5169139))

(declare-fun m!5169141 () Bool)

(assert (=> b!4465043 m!5169141))

(declare-fun m!5169143 () Bool)

(assert (=> b!4465043 m!5169143))

(declare-fun m!5169145 () Bool)

(assert (=> b!4465043 m!5169145))

(declare-fun m!5169147 () Bool)

(assert (=> b!4465043 m!5169147))

(declare-fun m!5169149 () Bool)

(assert (=> b!4465043 m!5169149))

(declare-fun m!5169151 () Bool)

(assert (=> b!4465043 m!5169151))

(assert (=> b!4465043 m!5168695))

(declare-fun m!5169153 () Bool)

(assert (=> b!4465043 m!5169153))

(assert (=> b!4465043 m!5169151))

(declare-fun m!5169155 () Bool)

(assert (=> b!4465043 m!5169155))

(declare-fun m!5169157 () Bool)

(assert (=> b!4465043 m!5169157))

(declare-fun m!5169159 () Bool)

(assert (=> b!4465043 m!5169159))

(assert (=> b!4465043 m!5168695))

(assert (=> b!4465043 m!5169147))

(declare-fun m!5169161 () Bool)

(assert (=> d!1361426 m!5169161))

(assert (=> d!1361426 m!5168767))

(declare-fun m!5169163 () Bool)

(assert (=> b!4465042 m!5169163))

(assert (=> b!4465040 m!5169155))

(declare-fun m!5169165 () Bool)

(assert (=> b!4465039 m!5169165))

(declare-fun m!5169167 () Bool)

(assert (=> bm!310789 m!5169167))

(assert (=> bm!310788 m!5168695))

(declare-fun m!5169169 () Bool)

(assert (=> bm!310788 m!5169169))

(declare-fun m!5169171 () Bool)

(assert (=> bm!310790 m!5169171))

(assert (=> b!4464705 d!1361426))

(declare-fun bs!792600 () Bool)

(declare-fun d!1361456 () Bool)

(assert (= bs!792600 (and d!1361456 d!1361290)))

(declare-fun lambda!162536 () Int)

(assert (=> bs!792600 (= lambda!162536 lambda!162420)))

(declare-fun bs!792602 () Bool)

(assert (= bs!792602 (and d!1361456 start!438112)))

(assert (=> bs!792602 (= lambda!162536 lambda!162393)))

(declare-fun bs!792603 () Bool)

(assert (= bs!792603 (and d!1361456 d!1361310)))

(assert (=> bs!792603 (= lambda!162536 lambda!162430)))

(declare-fun bs!792604 () Bool)

(assert (= bs!792604 (and d!1361456 d!1361326)))

(assert (=> bs!792604 (= lambda!162536 lambda!162435)))

(declare-fun bs!792605 () Bool)

(assert (= bs!792605 (and d!1361456 d!1361308)))

(assert (=> bs!792605 (not (= lambda!162536 lambda!162429))))

(declare-fun bs!792606 () Bool)

(assert (= bs!792606 (and d!1361456 d!1361218)))

(assert (=> bs!792606 (= lambda!162536 lambda!162399)))

(declare-fun bs!792607 () Bool)

(assert (= bs!792607 (and d!1361456 d!1361316)))

(assert (=> bs!792607 (= lambda!162536 lambda!162432)))

(declare-fun bs!792608 () Bool)

(assert (= bs!792608 (and d!1361456 d!1361312)))

(assert (=> bs!792608 (= lambda!162536 lambda!162431)))

(declare-fun bs!792609 () Bool)

(assert (= bs!792609 (and d!1361456 d!1361298)))

(assert (=> bs!792609 (= lambda!162536 lambda!162426)))

(declare-fun lt!1655031 () ListMap!3301)

(assert (=> d!1361456 (invariantList!919 (toList!4040 lt!1655031))))

(declare-fun e!2780382 () ListMap!3301)

(assert (=> d!1361456 (= lt!1655031 e!2780382)))

(declare-fun c!759866 () Bool)

(assert (=> d!1361456 (= c!759866 ((_ is Cons!50261) (t!357335 (toList!4039 lm!1477))))))

(assert (=> d!1361456 (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162536)))

(assert (=> d!1361456 (= (extractMap!1072 (t!357335 (toList!4039 lm!1477))) lt!1655031)))

(declare-fun b!4465059 () Bool)

(assert (=> b!4465059 (= e!2780382 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (t!357335 (toList!4039 lm!1477)))) (extractMap!1072 (t!357335 (t!357335 (toList!4039 lm!1477))))))))

(declare-fun b!4465060 () Bool)

(assert (=> b!4465060 (= e!2780382 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361456 c!759866) b!4465059))

(assert (= (and d!1361456 (not c!759866)) b!4465060))

(declare-fun m!5169185 () Bool)

(assert (=> d!1361456 m!5169185))

(declare-fun m!5169189 () Bool)

(assert (=> d!1361456 m!5169189))

(declare-fun m!5169191 () Bool)

(assert (=> b!4465059 m!5169191))

(assert (=> b!4465059 m!5169191))

(declare-fun m!5169193 () Bool)

(assert (=> b!4465059 m!5169193))

(assert (=> b!4464705 d!1361456))

(declare-fun bs!792611 () Bool)

(declare-fun b!4465067 () Bool)

(assert (= bs!792611 (and b!4465067 d!1361426)))

(declare-fun lambda!162537 () Int)

(assert (=> bs!792611 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655026) (= lambda!162537 lambda!162533))))

(declare-fun bs!792612 () Bool)

(assert (= bs!792612 (and b!4465067 b!4465043)))

(assert (=> bs!792612 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162537 lambda!162531))))

(declare-fun bs!792614 () Bool)

(assert (= bs!792614 (and b!4465067 d!1361296)))

(assert (=> bs!792614 (not (= lambda!162537 lambda!162423))))

(assert (=> bs!792612 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655020) (= lambda!162537 lambda!162532))))

(declare-fun bs!792615 () Bool)

(assert (= bs!792615 (and b!4465067 b!4465041)))

(assert (=> bs!792615 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162537 lambda!162530))))

(assert (=> b!4465067 true))

(declare-fun bs!792616 () Bool)

(declare-fun b!4465069 () Bool)

(assert (= bs!792616 (and b!4465069 d!1361426)))

(declare-fun lambda!162538 () Int)

(assert (=> bs!792616 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655026) (= lambda!162538 lambda!162533))))

(declare-fun bs!792618 () Bool)

(assert (= bs!792618 (and b!4465069 b!4465043)))

(assert (=> bs!792618 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162538 lambda!162531))))

(declare-fun bs!792619 () Bool)

(assert (= bs!792619 (and b!4465069 b!4465067)))

(assert (=> bs!792619 (= lambda!162538 lambda!162537)))

(declare-fun bs!792620 () Bool)

(assert (= bs!792620 (and b!4465069 d!1361296)))

(assert (=> bs!792620 (not (= lambda!162538 lambda!162423))))

(assert (=> bs!792618 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655020) (= lambda!162538 lambda!162532))))

(declare-fun bs!792621 () Bool)

(assert (= bs!792621 (and b!4465069 b!4465041)))

(assert (=> bs!792621 (= (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162538 lambda!162530))))

(assert (=> b!4465069 true))

(declare-fun lt!1655045 () ListMap!3301)

(declare-fun lambda!162539 () Int)

(assert (=> bs!792616 (= (= lt!1655045 lt!1655026) (= lambda!162539 lambda!162533))))

(assert (=> b!4465069 (= (= lt!1655045 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162539 lambda!162538))))

(assert (=> bs!792618 (= (= lt!1655045 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162539 lambda!162531))))

(assert (=> bs!792619 (= (= lt!1655045 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162539 lambda!162537))))

(assert (=> bs!792620 (not (= lambda!162539 lambda!162423))))

(assert (=> bs!792618 (= (= lt!1655045 lt!1655020) (= lambda!162539 lambda!162532))))

(assert (=> bs!792621 (= (= lt!1655045 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162539 lambda!162530))))

(assert (=> b!4465069 true))

(declare-fun bs!792628 () Bool)

(declare-fun d!1361462 () Bool)

(assert (= bs!792628 (and d!1361462 d!1361426)))

(declare-fun lambda!162542 () Int)

(declare-fun lt!1655051 () ListMap!3301)

(assert (=> bs!792628 (= (= lt!1655051 lt!1655026) (= lambda!162542 lambda!162533))))

(declare-fun bs!792630 () Bool)

(assert (= bs!792630 (and d!1361462 b!4465069)))

(assert (=> bs!792630 (= (= lt!1655051 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162542 lambda!162538))))

(declare-fun bs!792632 () Bool)

(assert (= bs!792632 (and d!1361462 b!4465043)))

(assert (=> bs!792632 (= (= lt!1655051 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162542 lambda!162531))))

(declare-fun bs!792634 () Bool)

(assert (= bs!792634 (and d!1361462 b!4465067)))

(assert (=> bs!792634 (= (= lt!1655051 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162542 lambda!162537))))

(assert (=> bs!792630 (= (= lt!1655051 lt!1655045) (= lambda!162542 lambda!162539))))

(declare-fun bs!792635 () Bool)

(assert (= bs!792635 (and d!1361462 d!1361296)))

(assert (=> bs!792635 (not (= lambda!162542 lambda!162423))))

(assert (=> bs!792632 (= (= lt!1655051 lt!1655020) (= lambda!162542 lambda!162532))))

(declare-fun bs!792636 () Bool)

(assert (= bs!792636 (and d!1361462 b!4465041)))

(assert (=> bs!792636 (= (= lt!1655051 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162542 lambda!162530))))

(assert (=> d!1361462 true))

(declare-fun b!4465065 () Bool)

(declare-fun res!1852197 () Bool)

(declare-fun e!2780388 () Bool)

(assert (=> b!4465065 (=> (not res!1852197) (not e!2780388))))

(assert (=> b!4465065 (= res!1852197 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lambda!162542))))

(declare-fun bm!310791 () Bool)

(declare-fun call!310796 () Unit!87113)

(assert (=> bm!310791 (= call!310796 (lemmaContainsAllItsOwnKeys!260 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(declare-fun b!4465066 () Bool)

(declare-fun e!2780387 () Bool)

(assert (=> b!4465066 (= e!2780387 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lambda!162539))))

(declare-fun bm!310792 () Bool)

(declare-fun c!759867 () Bool)

(declare-fun call!310797 () Bool)

(assert (=> bm!310792 (= call!310797 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (ite c!759867 lambda!162537 lambda!162539)))))

(declare-fun e!2780389 () ListMap!3301)

(assert (=> b!4465067 (= e!2780389 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))

(declare-fun lt!1655035 () Unit!87113)

(assert (=> b!4465067 (= lt!1655035 call!310796)))

(assert (=> b!4465067 call!310797))

(declare-fun lt!1655039 () Unit!87113)

(assert (=> b!4465067 (= lt!1655039 lt!1655035)))

(declare-fun call!310798 () Bool)

(assert (=> b!4465067 call!310798))

(declare-fun lt!1655038 () Unit!87113)

(declare-fun Unit!87147 () Unit!87113)

(assert (=> b!4465067 (= lt!1655038 Unit!87147)))

(declare-fun lt!1655046 () ListMap!3301)

(declare-fun bm!310793 () Bool)

(assert (=> bm!310793 (= call!310798 (forall!9968 (ite c!759867 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (toList!4040 lt!1655046)) (ite c!759867 lambda!162537 lambda!162539)))))

(declare-fun b!4465068 () Bool)

(assert (=> b!4465068 (= e!2780388 (invariantList!919 (toList!4040 lt!1655051)))))

(assert (=> d!1361462 e!2780388))

(declare-fun res!1852195 () Bool)

(assert (=> d!1361462 (=> (not res!1852195) (not e!2780388))))

(assert (=> d!1361462 (= res!1852195 (forall!9968 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lambda!162542))))

(assert (=> d!1361462 (= lt!1655051 e!2780389)))

(assert (=> d!1361462 (= c!759867 ((_ is Nil!50260) (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(assert (=> d!1361462 (noDuplicateKeys!1016 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))

(assert (=> d!1361462 (= (addToMapMapFromBucket!581 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lt!1655051)))

(assert (=> b!4465069 (= e!2780389 lt!1655045)))

(assert (=> b!4465069 (= lt!1655046 (+!1353 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(assert (=> b!4465069 (= lt!1655045 (addToMapMapFromBucket!581 (t!357334 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (+!1353 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(declare-fun lt!1655052 () Unit!87113)

(assert (=> b!4465069 (= lt!1655052 call!310796)))

(assert (=> b!4465069 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lambda!162538)))

(declare-fun lt!1655036 () Unit!87113)

(assert (=> b!4465069 (= lt!1655036 lt!1655052)))

(assert (=> b!4465069 (forall!9968 (toList!4040 lt!1655046) lambda!162539)))

(declare-fun lt!1655037 () Unit!87113)

(declare-fun Unit!87148 () Unit!87113)

(assert (=> b!4465069 (= lt!1655037 Unit!87148)))

(assert (=> b!4465069 (forall!9968 (t!357334 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lambda!162539)))

(declare-fun lt!1655050 () Unit!87113)

(declare-fun Unit!87149 () Unit!87113)

(assert (=> b!4465069 (= lt!1655050 Unit!87149)))

(declare-fun lt!1655042 () Unit!87113)

(declare-fun Unit!87150 () Unit!87113)

(assert (=> b!4465069 (= lt!1655042 Unit!87150)))

(declare-fun lt!1655053 () Unit!87113)

(assert (=> b!4465069 (= lt!1655053 (forallContained!2239 (toList!4040 lt!1655046) lambda!162539 (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(assert (=> b!4465069 (contains!12797 lt!1655046 (_1!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(declare-fun lt!1655049 () Unit!87113)

(declare-fun Unit!87151 () Unit!87113)

(assert (=> b!4465069 (= lt!1655049 Unit!87151)))

(assert (=> b!4465069 (contains!12797 lt!1655045 (_1!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(declare-fun lt!1655044 () Unit!87113)

(declare-fun Unit!87152 () Unit!87113)

(assert (=> b!4465069 (= lt!1655044 Unit!87152)))

(assert (=> b!4465069 (forall!9968 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lambda!162539)))

(declare-fun lt!1655033 () Unit!87113)

(declare-fun Unit!87153 () Unit!87113)

(assert (=> b!4465069 (= lt!1655033 Unit!87153)))

(assert (=> b!4465069 call!310798))

(declare-fun lt!1655048 () Unit!87113)

(declare-fun Unit!87154 () Unit!87113)

(assert (=> b!4465069 (= lt!1655048 Unit!87154)))

(declare-fun lt!1655043 () Unit!87113)

(declare-fun Unit!87155 () Unit!87113)

(assert (=> b!4465069 (= lt!1655043 Unit!87155)))

(declare-fun lt!1655040 () Unit!87113)

(assert (=> b!4465069 (= lt!1655040 (addForallContainsKeyThenBeforeAdding!259 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655045 (_1!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))) (_2!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(assert (=> b!4465069 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lambda!162539)))

(declare-fun lt!1655034 () Unit!87113)

(assert (=> b!4465069 (= lt!1655034 lt!1655040)))

(assert (=> b!4465069 call!310797))

(declare-fun lt!1655047 () Unit!87113)

(declare-fun Unit!87156 () Unit!87113)

(assert (=> b!4465069 (= lt!1655047 Unit!87156)))

(declare-fun res!1852196 () Bool)

(assert (=> b!4465069 (= res!1852196 (forall!9968 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lambda!162539))))

(assert (=> b!4465069 (=> (not res!1852196) (not e!2780387))))

(assert (=> b!4465069 e!2780387))

(declare-fun lt!1655041 () Unit!87113)

(declare-fun Unit!87157 () Unit!87113)

(assert (=> b!4465069 (= lt!1655041 Unit!87157)))

(assert (= (and d!1361462 c!759867) b!4465067))

(assert (= (and d!1361462 (not c!759867)) b!4465069))

(assert (= (and b!4465069 res!1852196) b!4465066))

(assert (= (or b!4465067 b!4465069) bm!310792))

(assert (= (or b!4465067 b!4465069) bm!310793))

(assert (= (or b!4465067 b!4465069) bm!310791))

(assert (= (and d!1361462 res!1852195) b!4465065))

(assert (= (and b!4465065 res!1852197) b!4465068))

(declare-fun m!5169213 () Bool)

(assert (=> b!4465069 m!5169213))

(declare-fun m!5169215 () Bool)

(assert (=> b!4465069 m!5169215))

(declare-fun m!5169217 () Bool)

(assert (=> b!4465069 m!5169217))

(declare-fun m!5169219 () Bool)

(assert (=> b!4465069 m!5169219))

(declare-fun m!5169221 () Bool)

(assert (=> b!4465069 m!5169221))

(declare-fun m!5169223 () Bool)

(assert (=> b!4465069 m!5169223))

(declare-fun m!5169225 () Bool)

(assert (=> b!4465069 m!5169225))

(assert (=> b!4465069 m!5168735))

(declare-fun m!5169227 () Bool)

(assert (=> b!4465069 m!5169227))

(assert (=> b!4465069 m!5169225))

(declare-fun m!5169229 () Bool)

(assert (=> b!4465069 m!5169229))

(declare-fun m!5169231 () Bool)

(assert (=> b!4465069 m!5169231))

(declare-fun m!5169233 () Bool)

(assert (=> b!4465069 m!5169233))

(assert (=> b!4465069 m!5168735))

(assert (=> b!4465069 m!5169221))

(declare-fun m!5169235 () Bool)

(assert (=> d!1361462 m!5169235))

(declare-fun m!5169237 () Bool)

(assert (=> d!1361462 m!5169237))

(declare-fun m!5169239 () Bool)

(assert (=> b!4465068 m!5169239))

(assert (=> b!4465066 m!5169229))

(declare-fun m!5169241 () Bool)

(assert (=> b!4465065 m!5169241))

(declare-fun m!5169243 () Bool)

(assert (=> bm!310792 m!5169243))

(assert (=> bm!310791 m!5168735))

(declare-fun m!5169245 () Bool)

(assert (=> bm!310791 m!5169245))

(declare-fun m!5169247 () Bool)

(assert (=> bm!310793 m!5169247))

(assert (=> b!4464742 d!1361462))

(declare-fun bs!792643 () Bool)

(declare-fun d!1361474 () Bool)

(assert (= bs!792643 (and d!1361474 d!1361290)))

(declare-fun lambda!162545 () Int)

(assert (=> bs!792643 (= lambda!162545 lambda!162420)))

(declare-fun bs!792644 () Bool)

(assert (= bs!792644 (and d!1361474 start!438112)))

(assert (=> bs!792644 (= lambda!162545 lambda!162393)))

(declare-fun bs!792645 () Bool)

(assert (= bs!792645 (and d!1361474 d!1361310)))

(assert (=> bs!792645 (= lambda!162545 lambda!162430)))

(declare-fun bs!792646 () Bool)

(assert (= bs!792646 (and d!1361474 d!1361326)))

(assert (=> bs!792646 (= lambda!162545 lambda!162435)))

(declare-fun bs!792647 () Bool)

(assert (= bs!792647 (and d!1361474 d!1361456)))

(assert (=> bs!792647 (= lambda!162545 lambda!162536)))

(declare-fun bs!792648 () Bool)

(assert (= bs!792648 (and d!1361474 d!1361308)))

(assert (=> bs!792648 (not (= lambda!162545 lambda!162429))))

(declare-fun bs!792649 () Bool)

(assert (= bs!792649 (and d!1361474 d!1361218)))

(assert (=> bs!792649 (= lambda!162545 lambda!162399)))

(declare-fun bs!792650 () Bool)

(assert (= bs!792650 (and d!1361474 d!1361316)))

(assert (=> bs!792650 (= lambda!162545 lambda!162432)))

(declare-fun bs!792651 () Bool)

(assert (= bs!792651 (and d!1361474 d!1361312)))

(assert (=> bs!792651 (= lambda!162545 lambda!162431)))

(declare-fun bs!792652 () Bool)

(assert (= bs!792652 (and d!1361474 d!1361298)))

(assert (=> bs!792652 (= lambda!162545 lambda!162426)))

(declare-fun lt!1655077 () ListMap!3301)

(assert (=> d!1361474 (invariantList!919 (toList!4040 lt!1655077))))

(declare-fun e!2780395 () ListMap!3301)

(assert (=> d!1361474 (= lt!1655077 e!2780395)))

(declare-fun c!759869 () Bool)

(assert (=> d!1361474 (= c!759869 ((_ is Cons!50261) (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))

(assert (=> d!1361474 (forall!9966 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) lambda!162545)))

(assert (=> d!1361474 (= (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655077)))

(declare-fun b!4465077 () Bool)

(assert (=> b!4465077 (= e!2780395 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (extractMap!1072 (t!357335 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(declare-fun b!4465078 () Bool)

(assert (=> b!4465078 (= e!2780395 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361474 c!759869) b!4465077))

(assert (= (and d!1361474 (not c!759869)) b!4465078))

(declare-fun m!5169285 () Bool)

(assert (=> d!1361474 m!5169285))

(declare-fun m!5169287 () Bool)

(assert (=> d!1361474 m!5169287))

(declare-fun m!5169289 () Bool)

(assert (=> b!4465077 m!5169289))

(assert (=> b!4465077 m!5169289))

(declare-fun m!5169291 () Bool)

(assert (=> b!4465077 m!5169291))

(assert (=> b!4464742 d!1361474))

(declare-fun d!1361478 () Bool)

(assert (=> d!1361478 (= (isEmpty!28465 (toList!4039 lm!1477)) ((_ is Nil!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361300 d!1361478))

(declare-fun bs!792664 () Bool)

(declare-fun b!4465083 () Bool)

(assert (= bs!792664 (and b!4465083 d!1361426)))

(declare-fun lambda!162547 () Int)

(assert (=> bs!792664 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655026) (= lambda!162547 lambda!162533))))

(declare-fun bs!792665 () Bool)

(assert (= bs!792665 (and b!4465083 b!4465069)))

(assert (=> bs!792665 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162547 lambda!162538))))

(declare-fun bs!792666 () Bool)

(assert (= bs!792666 (and b!4465083 b!4465043)))

(assert (=> bs!792666 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162547 lambda!162531))))

(declare-fun bs!792667 () Bool)

(assert (= bs!792667 (and b!4465083 d!1361462)))

(assert (=> bs!792667 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655051) (= lambda!162547 lambda!162542))))

(declare-fun bs!792668 () Bool)

(assert (= bs!792668 (and b!4465083 b!4465067)))

(assert (=> bs!792668 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162547 lambda!162537))))

(assert (=> bs!792665 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655045) (= lambda!162547 lambda!162539))))

(declare-fun bs!792669 () Bool)

(assert (= bs!792669 (and b!4465083 d!1361296)))

(assert (=> bs!792669 (not (= lambda!162547 lambda!162423))))

(assert (=> bs!792666 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655020) (= lambda!162547 lambda!162532))))

(declare-fun bs!792670 () Bool)

(assert (= bs!792670 (and b!4465083 b!4465041)))

(assert (=> bs!792670 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162547 lambda!162530))))

(assert (=> b!4465083 true))

(declare-fun bs!792675 () Bool)

(declare-fun b!4465085 () Bool)

(assert (= bs!792675 (and b!4465085 d!1361426)))

(declare-fun lambda!162549 () Int)

(assert (=> bs!792675 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655026) (= lambda!162549 lambda!162533))))

(declare-fun bs!792677 () Bool)

(assert (= bs!792677 (and b!4465085 b!4465069)))

(assert (=> bs!792677 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162549 lambda!162538))))

(declare-fun bs!792679 () Bool)

(assert (= bs!792679 (and b!4465085 b!4465043)))

(assert (=> bs!792679 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162549 lambda!162531))))

(declare-fun bs!792680 () Bool)

(assert (= bs!792680 (and b!4465085 d!1361462)))

(assert (=> bs!792680 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655051) (= lambda!162549 lambda!162542))))

(declare-fun bs!792681 () Bool)

(assert (= bs!792681 (and b!4465085 b!4465067)))

(assert (=> bs!792681 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162549 lambda!162537))))

(assert (=> bs!792677 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655045) (= lambda!162549 lambda!162539))))

(declare-fun bs!792683 () Bool)

(assert (= bs!792683 (and b!4465085 d!1361296)))

(assert (=> bs!792683 (not (= lambda!162549 lambda!162423))))

(assert (=> bs!792679 (= (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655020) (= lambda!162549 lambda!162532))))

(declare-fun bs!792684 () Bool)

(assert (= bs!792684 (and b!4465085 b!4465041)))

(assert (=> bs!792684 (= (= (extractMap!1072 (t!357335 lt!1654655)) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162549 lambda!162530))))

(declare-fun bs!792685 () Bool)

(assert (= bs!792685 (and b!4465085 b!4465083)))

(assert (=> bs!792685 (= lambda!162549 lambda!162547)))

(assert (=> b!4465085 true))

(declare-fun lt!1655091 () ListMap!3301)

(declare-fun lambda!162551 () Int)

(assert (=> bs!792675 (= (= lt!1655091 lt!1655026) (= lambda!162551 lambda!162533))))

(assert (=> bs!792677 (= (= lt!1655091 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162551 lambda!162538))))

(assert (=> bs!792679 (= (= lt!1655091 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162551 lambda!162531))))

(assert (=> bs!792680 (= (= lt!1655091 lt!1655051) (= lambda!162551 lambda!162542))))

(assert (=> bs!792681 (= (= lt!1655091 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162551 lambda!162537))))

(assert (=> bs!792677 (= (= lt!1655091 lt!1655045) (= lambda!162551 lambda!162539))))

(assert (=> bs!792683 (not (= lambda!162551 lambda!162423))))

(assert (=> b!4465085 (= (= lt!1655091 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162551 lambda!162549))))

(assert (=> bs!792679 (= (= lt!1655091 lt!1655020) (= lambda!162551 lambda!162532))))

(assert (=> bs!792684 (= (= lt!1655091 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162551 lambda!162530))))

(assert (=> bs!792685 (= (= lt!1655091 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162551 lambda!162547))))

(assert (=> b!4465085 true))

(declare-fun bs!792694 () Bool)

(declare-fun d!1361480 () Bool)

(assert (= bs!792694 (and d!1361480 d!1361426)))

(declare-fun lambda!162553 () Int)

(declare-fun lt!1655097 () ListMap!3301)

(assert (=> bs!792694 (= (= lt!1655097 lt!1655026) (= lambda!162553 lambda!162533))))

(declare-fun bs!792695 () Bool)

(assert (= bs!792695 (and d!1361480 b!4465069)))

(assert (=> bs!792695 (= (= lt!1655097 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162553 lambda!162538))))

(declare-fun bs!792696 () Bool)

(assert (= bs!792696 (and d!1361480 b!4465043)))

(assert (=> bs!792696 (= (= lt!1655097 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162553 lambda!162531))))

(declare-fun bs!792697 () Bool)

(assert (= bs!792697 (and d!1361480 d!1361462)))

(assert (=> bs!792697 (= (= lt!1655097 lt!1655051) (= lambda!162553 lambda!162542))))

(declare-fun bs!792698 () Bool)

(assert (= bs!792698 (and d!1361480 b!4465067)))

(assert (=> bs!792698 (= (= lt!1655097 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162553 lambda!162537))))

(declare-fun bs!792699 () Bool)

(assert (= bs!792699 (and d!1361480 d!1361296)))

(assert (=> bs!792699 (not (= lambda!162553 lambda!162423))))

(declare-fun bs!792700 () Bool)

(assert (= bs!792700 (and d!1361480 b!4465085)))

(assert (=> bs!792700 (= (= lt!1655097 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162553 lambda!162549))))

(assert (=> bs!792696 (= (= lt!1655097 lt!1655020) (= lambda!162553 lambda!162532))))

(declare-fun bs!792701 () Bool)

(assert (= bs!792701 (and d!1361480 b!4465041)))

(assert (=> bs!792701 (= (= lt!1655097 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162553 lambda!162530))))

(declare-fun bs!792702 () Bool)

(assert (= bs!792702 (and d!1361480 b!4465083)))

(assert (=> bs!792702 (= (= lt!1655097 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162553 lambda!162547))))

(assert (=> bs!792700 (= (= lt!1655097 lt!1655091) (= lambda!162553 lambda!162551))))

(assert (=> bs!792695 (= (= lt!1655097 lt!1655045) (= lambda!162553 lambda!162539))))

(assert (=> d!1361480 true))

(declare-fun b!4465081 () Bool)

(declare-fun res!1852205 () Bool)

(declare-fun e!2780398 () Bool)

(assert (=> b!4465081 (=> (not res!1852205) (not e!2780398))))

(assert (=> b!4465081 (= res!1852205 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 lt!1654655))) lambda!162553))))

(declare-fun bm!310797 () Bool)

(declare-fun call!310802 () Unit!87113)

(assert (=> bm!310797 (= call!310802 (lemmaContainsAllItsOwnKeys!260 (extractMap!1072 (t!357335 lt!1654655))))))

(declare-fun b!4465082 () Bool)

(declare-fun e!2780397 () Bool)

(assert (=> b!4465082 (= e!2780397 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 lt!1654655))) lambda!162551))))

(declare-fun c!759871 () Bool)

(declare-fun bm!310798 () Bool)

(declare-fun call!310803 () Bool)

(assert (=> bm!310798 (= call!310803 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 lt!1654655))) (ite c!759871 lambda!162547 lambda!162551)))))

(declare-fun e!2780399 () ListMap!3301)

(assert (=> b!4465083 (= e!2780399 (extractMap!1072 (t!357335 lt!1654655)))))

(declare-fun lt!1655081 () Unit!87113)

(assert (=> b!4465083 (= lt!1655081 call!310802)))

(assert (=> b!4465083 call!310803))

(declare-fun lt!1655085 () Unit!87113)

(assert (=> b!4465083 (= lt!1655085 lt!1655081)))

(declare-fun call!310804 () Bool)

(assert (=> b!4465083 call!310804))

(declare-fun lt!1655084 () Unit!87113)

(declare-fun Unit!87169 () Unit!87113)

(assert (=> b!4465083 (= lt!1655084 Unit!87169)))

(declare-fun lt!1655092 () ListMap!3301)

(declare-fun bm!310799 () Bool)

(assert (=> bm!310799 (= call!310804 (forall!9968 (ite c!759871 (toList!4040 (extractMap!1072 (t!357335 lt!1654655))) (toList!4040 lt!1655092)) (ite c!759871 lambda!162547 lambda!162551)))))

(declare-fun b!4465084 () Bool)

(assert (=> b!4465084 (= e!2780398 (invariantList!919 (toList!4040 lt!1655097)))))

(assert (=> d!1361480 e!2780398))

(declare-fun res!1852203 () Bool)

(assert (=> d!1361480 (=> (not res!1852203) (not e!2780398))))

(assert (=> d!1361480 (= res!1852203 (forall!9968 (_2!28544 (h!56016 lt!1654655)) lambda!162553))))

(assert (=> d!1361480 (= lt!1655097 e!2780399)))

(assert (=> d!1361480 (= c!759871 ((_ is Nil!50260) (_2!28544 (h!56016 lt!1654655))))))

(assert (=> d!1361480 (noDuplicateKeys!1016 (_2!28544 (h!56016 lt!1654655)))))

(assert (=> d!1361480 (= (addToMapMapFromBucket!581 (_2!28544 (h!56016 lt!1654655)) (extractMap!1072 (t!357335 lt!1654655))) lt!1655097)))

(assert (=> b!4465085 (= e!2780399 lt!1655091)))

(assert (=> b!4465085 (= lt!1655092 (+!1353 (extractMap!1072 (t!357335 lt!1654655)) (h!56015 (_2!28544 (h!56016 lt!1654655)))))))

(assert (=> b!4465085 (= lt!1655091 (addToMapMapFromBucket!581 (t!357334 (_2!28544 (h!56016 lt!1654655))) (+!1353 (extractMap!1072 (t!357335 lt!1654655)) (h!56015 (_2!28544 (h!56016 lt!1654655))))))))

(declare-fun lt!1655098 () Unit!87113)

(assert (=> b!4465085 (= lt!1655098 call!310802)))

(assert (=> b!4465085 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 lt!1654655))) lambda!162549)))

(declare-fun lt!1655082 () Unit!87113)

(assert (=> b!4465085 (= lt!1655082 lt!1655098)))

(assert (=> b!4465085 (forall!9968 (toList!4040 lt!1655092) lambda!162551)))

(declare-fun lt!1655083 () Unit!87113)

(declare-fun Unit!87170 () Unit!87113)

(assert (=> b!4465085 (= lt!1655083 Unit!87170)))

(assert (=> b!4465085 (forall!9968 (t!357334 (_2!28544 (h!56016 lt!1654655))) lambda!162551)))

(declare-fun lt!1655096 () Unit!87113)

(declare-fun Unit!87171 () Unit!87113)

(assert (=> b!4465085 (= lt!1655096 Unit!87171)))

(declare-fun lt!1655088 () Unit!87113)

(declare-fun Unit!87172 () Unit!87113)

(assert (=> b!4465085 (= lt!1655088 Unit!87172)))

(declare-fun lt!1655099 () Unit!87113)

(assert (=> b!4465085 (= lt!1655099 (forallContained!2239 (toList!4040 lt!1655092) lambda!162551 (h!56015 (_2!28544 (h!56016 lt!1654655)))))))

(assert (=> b!4465085 (contains!12797 lt!1655092 (_1!28543 (h!56015 (_2!28544 (h!56016 lt!1654655)))))))

(declare-fun lt!1655095 () Unit!87113)

(declare-fun Unit!87173 () Unit!87113)

(assert (=> b!4465085 (= lt!1655095 Unit!87173)))

(assert (=> b!4465085 (contains!12797 lt!1655091 (_1!28543 (h!56015 (_2!28544 (h!56016 lt!1654655)))))))

(declare-fun lt!1655090 () Unit!87113)

(declare-fun Unit!87174 () Unit!87113)

(assert (=> b!4465085 (= lt!1655090 Unit!87174)))

(assert (=> b!4465085 (forall!9968 (_2!28544 (h!56016 lt!1654655)) lambda!162551)))

(declare-fun lt!1655079 () Unit!87113)

(declare-fun Unit!87175 () Unit!87113)

(assert (=> b!4465085 (= lt!1655079 Unit!87175)))

(assert (=> b!4465085 call!310804))

(declare-fun lt!1655094 () Unit!87113)

(declare-fun Unit!87176 () Unit!87113)

(assert (=> b!4465085 (= lt!1655094 Unit!87176)))

(declare-fun lt!1655089 () Unit!87113)

(declare-fun Unit!87177 () Unit!87113)

(assert (=> b!4465085 (= lt!1655089 Unit!87177)))

(declare-fun lt!1655086 () Unit!87113)

(assert (=> b!4465085 (= lt!1655086 (addForallContainsKeyThenBeforeAdding!259 (extractMap!1072 (t!357335 lt!1654655)) lt!1655091 (_1!28543 (h!56015 (_2!28544 (h!56016 lt!1654655)))) (_2!28543 (h!56015 (_2!28544 (h!56016 lt!1654655))))))))

(assert (=> b!4465085 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 lt!1654655))) lambda!162551)))

(declare-fun lt!1655080 () Unit!87113)

(assert (=> b!4465085 (= lt!1655080 lt!1655086)))

(assert (=> b!4465085 call!310803))

(declare-fun lt!1655093 () Unit!87113)

(declare-fun Unit!87178 () Unit!87113)

(assert (=> b!4465085 (= lt!1655093 Unit!87178)))

(declare-fun res!1852204 () Bool)

(assert (=> b!4465085 (= res!1852204 (forall!9968 (_2!28544 (h!56016 lt!1654655)) lambda!162551))))

(assert (=> b!4465085 (=> (not res!1852204) (not e!2780397))))

(assert (=> b!4465085 e!2780397))

(declare-fun lt!1655087 () Unit!87113)

(declare-fun Unit!87179 () Unit!87113)

(assert (=> b!4465085 (= lt!1655087 Unit!87179)))

(assert (= (and d!1361480 c!759871) b!4465083))

(assert (= (and d!1361480 (not c!759871)) b!4465085))

(assert (= (and b!4465085 res!1852204) b!4465082))

(assert (= (or b!4465083 b!4465085) bm!310798))

(assert (= (or b!4465083 b!4465085) bm!310799))

(assert (= (or b!4465083 b!4465085) bm!310797))

(assert (= (and d!1361480 res!1852203) b!4465081))

(assert (= (and b!4465081 res!1852205) b!4465084))

(declare-fun m!5169301 () Bool)

(assert (=> b!4465085 m!5169301))

(declare-fun m!5169303 () Bool)

(assert (=> b!4465085 m!5169303))

(declare-fun m!5169305 () Bool)

(assert (=> b!4465085 m!5169305))

(declare-fun m!5169307 () Bool)

(assert (=> b!4465085 m!5169307))

(declare-fun m!5169309 () Bool)

(assert (=> b!4465085 m!5169309))

(declare-fun m!5169311 () Bool)

(assert (=> b!4465085 m!5169311))

(declare-fun m!5169313 () Bool)

(assert (=> b!4465085 m!5169313))

(assert (=> b!4465085 m!5168727))

(declare-fun m!5169315 () Bool)

(assert (=> b!4465085 m!5169315))

(assert (=> b!4465085 m!5169313))

(declare-fun m!5169317 () Bool)

(assert (=> b!4465085 m!5169317))

(declare-fun m!5169319 () Bool)

(assert (=> b!4465085 m!5169319))

(declare-fun m!5169321 () Bool)

(assert (=> b!4465085 m!5169321))

(assert (=> b!4465085 m!5168727))

(assert (=> b!4465085 m!5169309))

(declare-fun m!5169323 () Bool)

(assert (=> d!1361480 m!5169323))

(declare-fun m!5169325 () Bool)

(assert (=> d!1361480 m!5169325))

(declare-fun m!5169327 () Bool)

(assert (=> b!4465084 m!5169327))

(assert (=> b!4465082 m!5169317))

(declare-fun m!5169329 () Bool)

(assert (=> b!4465081 m!5169329))

(declare-fun m!5169331 () Bool)

(assert (=> bm!310798 m!5169331))

(assert (=> bm!310797 m!5168727))

(declare-fun m!5169333 () Bool)

(assert (=> bm!310797 m!5169333))

(declare-fun m!5169335 () Bool)

(assert (=> bm!310799 m!5169335))

(assert (=> b!4464740 d!1361480))

(declare-fun bs!792712 () Bool)

(declare-fun d!1361484 () Bool)

(assert (= bs!792712 (and d!1361484 d!1361290)))

(declare-fun lambda!162555 () Int)

(assert (=> bs!792712 (= lambda!162555 lambda!162420)))

(declare-fun bs!792713 () Bool)

(assert (= bs!792713 (and d!1361484 start!438112)))

(assert (=> bs!792713 (= lambda!162555 lambda!162393)))

(declare-fun bs!792714 () Bool)

(assert (= bs!792714 (and d!1361484 d!1361310)))

(assert (=> bs!792714 (= lambda!162555 lambda!162430)))

(declare-fun bs!792715 () Bool)

(assert (= bs!792715 (and d!1361484 d!1361326)))

(assert (=> bs!792715 (= lambda!162555 lambda!162435)))

(declare-fun bs!792716 () Bool)

(assert (= bs!792716 (and d!1361484 d!1361456)))

(assert (=> bs!792716 (= lambda!162555 lambda!162536)))

(declare-fun bs!792717 () Bool)

(assert (= bs!792717 (and d!1361484 d!1361308)))

(assert (=> bs!792717 (not (= lambda!162555 lambda!162429))))

(declare-fun bs!792718 () Bool)

(assert (= bs!792718 (and d!1361484 d!1361474)))

(assert (=> bs!792718 (= lambda!162555 lambda!162545)))

(declare-fun bs!792719 () Bool)

(assert (= bs!792719 (and d!1361484 d!1361218)))

(assert (=> bs!792719 (= lambda!162555 lambda!162399)))

(declare-fun bs!792720 () Bool)

(assert (= bs!792720 (and d!1361484 d!1361316)))

(assert (=> bs!792720 (= lambda!162555 lambda!162432)))

(declare-fun bs!792721 () Bool)

(assert (= bs!792721 (and d!1361484 d!1361312)))

(assert (=> bs!792721 (= lambda!162555 lambda!162431)))

(declare-fun bs!792722 () Bool)

(assert (= bs!792722 (and d!1361484 d!1361298)))

(assert (=> bs!792722 (= lambda!162555 lambda!162426)))

(declare-fun lt!1655121 () ListMap!3301)

(assert (=> d!1361484 (invariantList!919 (toList!4040 lt!1655121))))

(declare-fun e!2780403 () ListMap!3301)

(assert (=> d!1361484 (= lt!1655121 e!2780403)))

(declare-fun c!759873 () Bool)

(assert (=> d!1361484 (= c!759873 ((_ is Cons!50261) (t!357335 lt!1654655)))))

(assert (=> d!1361484 (forall!9966 (t!357335 lt!1654655) lambda!162555)))

(assert (=> d!1361484 (= (extractMap!1072 (t!357335 lt!1654655)) lt!1655121)))

(declare-fun b!4465091 () Bool)

(assert (=> b!4465091 (= e!2780403 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (t!357335 lt!1654655))) (extractMap!1072 (t!357335 (t!357335 lt!1654655)))))))

(declare-fun b!4465092 () Bool)

(assert (=> b!4465092 (= e!2780403 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361484 c!759873) b!4465091))

(assert (= (and d!1361484 (not c!759873)) b!4465092))

(declare-fun m!5169367 () Bool)

(assert (=> d!1361484 m!5169367))

(declare-fun m!5169369 () Bool)

(assert (=> d!1361484 m!5169369))

(declare-fun m!5169371 () Bool)

(assert (=> b!4465091 m!5169371))

(assert (=> b!4465091 m!5169371))

(declare-fun m!5169375 () Bool)

(assert (=> b!4465091 m!5169375))

(assert (=> b!4464740 d!1361484))

(declare-fun d!1361486 () Bool)

(declare-fun noDuplicatedKeys!206 (List!50384) Bool)

(assert (=> d!1361486 (= (invariantList!919 (toList!4040 lt!1654799)) (noDuplicatedKeys!206 (toList!4040 lt!1654799)))))

(declare-fun bs!792727 () Bool)

(assert (= bs!792727 d!1361486))

(declare-fun m!5169381 () Bool)

(assert (=> bs!792727 m!5169381))

(assert (=> d!1361290 d!1361486))

(declare-fun d!1361490 () Bool)

(declare-fun res!1852209 () Bool)

(declare-fun e!2780405 () Bool)

(assert (=> d!1361490 (=> res!1852209 e!2780405)))

(assert (=> d!1361490 (= res!1852209 ((_ is Nil!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361490 (= (forall!9966 (toList!4039 lm!1477) lambda!162420) e!2780405)))

(declare-fun b!4465095 () Bool)

(declare-fun e!2780406 () Bool)

(assert (=> b!4465095 (= e!2780405 e!2780406)))

(declare-fun res!1852210 () Bool)

(assert (=> b!4465095 (=> (not res!1852210) (not e!2780406))))

(assert (=> b!4465095 (= res!1852210 (dynLambda!20998 lambda!162420 (h!56016 (toList!4039 lm!1477))))))

(declare-fun b!4465096 () Bool)

(assert (=> b!4465096 (= e!2780406 (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162420))))

(assert (= (and d!1361490 (not res!1852209)) b!4465095))

(assert (= (and b!4465095 res!1852210) b!4465096))

(declare-fun b_lambda!147975 () Bool)

(assert (=> (not b_lambda!147975) (not b!4465095)))

(declare-fun m!5169383 () Bool)

(assert (=> b!4465095 m!5169383))

(declare-fun m!5169385 () Bool)

(assert (=> b!4465096 m!5169385))

(assert (=> d!1361290 d!1361490))

(declare-fun d!1361492 () Bool)

(declare-fun lt!1655123 () List!50384)

(assert (=> d!1361492 (not (containsKey!1444 lt!1655123 key!3287))))

(declare-fun e!2780407 () List!50384)

(assert (=> d!1361492 (= lt!1655123 e!2780407)))

(declare-fun c!759876 () Bool)

(assert (=> d!1361492 (= c!759876 (and ((_ is Cons!50260) (t!357334 lt!1654647)) (= (_1!28543 (h!56015 (t!357334 lt!1654647))) key!3287)))))

(assert (=> d!1361492 (noDuplicateKeys!1016 (t!357334 lt!1654647))))

(assert (=> d!1361492 (= (removePairForKey!643 (t!357334 lt!1654647) key!3287) lt!1655123)))

(declare-fun b!4465100 () Bool)

(declare-fun e!2780408 () List!50384)

(assert (=> b!4465100 (= e!2780408 Nil!50260)))

(declare-fun b!4465099 () Bool)

(assert (=> b!4465099 (= e!2780408 (Cons!50260 (h!56015 (t!357334 lt!1654647)) (removePairForKey!643 (t!357334 (t!357334 lt!1654647)) key!3287)))))

(declare-fun b!4465097 () Bool)

(assert (=> b!4465097 (= e!2780407 (t!357334 (t!357334 lt!1654647)))))

(declare-fun b!4465098 () Bool)

(assert (=> b!4465098 (= e!2780407 e!2780408)))

(declare-fun c!759875 () Bool)

(assert (=> b!4465098 (= c!759875 ((_ is Cons!50260) (t!357334 lt!1654647)))))

(assert (= (and d!1361492 c!759876) b!4465097))

(assert (= (and d!1361492 (not c!759876)) b!4465098))

(assert (= (and b!4465098 c!759875) b!4465099))

(assert (= (and b!4465098 (not c!759875)) b!4465100))

(declare-fun m!5169391 () Bool)

(assert (=> d!1361492 m!5169391))

(declare-fun m!5169393 () Bool)

(assert (=> d!1361492 m!5169393))

(declare-fun m!5169397 () Bool)

(assert (=> b!4465099 m!5169397))

(assert (=> b!4464602 d!1361492))

(declare-fun d!1361494 () Bool)

(assert (=> d!1361494 (= (invariantList!919 (toList!4040 lt!1654804)) (noDuplicatedKeys!206 (toList!4040 lt!1654804)))))

(declare-fun bs!792736 () Bool)

(assert (= bs!792736 d!1361494))

(declare-fun m!5169401 () Bool)

(assert (=> bs!792736 m!5169401))

(assert (=> d!1361312 d!1361494))

(declare-fun d!1361496 () Bool)

(declare-fun res!1852211 () Bool)

(declare-fun e!2780409 () Bool)

(assert (=> d!1361496 (=> res!1852211 e!2780409)))

(assert (=> d!1361496 (= res!1852211 ((_ is Nil!50261) (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))

(assert (=> d!1361496 (= (forall!9966 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261) lambda!162431) e!2780409)))

(declare-fun b!4465101 () Bool)

(declare-fun e!2780410 () Bool)

(assert (=> b!4465101 (= e!2780409 e!2780410)))

(declare-fun res!1852212 () Bool)

(assert (=> b!4465101 (=> (not res!1852212) (not e!2780410))))

(assert (=> b!4465101 (= res!1852212 (dynLambda!20998 lambda!162431 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))

(declare-fun b!4465102 () Bool)

(assert (=> b!4465102 (= e!2780410 (forall!9966 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) lambda!162431))))

(assert (= (and d!1361496 (not res!1852211)) b!4465101))

(assert (= (and b!4465101 res!1852212) b!4465102))

(declare-fun b_lambda!147977 () Bool)

(assert (=> (not b_lambda!147977) (not b!4465101)))

(declare-fun m!5169403 () Bool)

(assert (=> b!4465101 m!5169403))

(declare-fun m!5169405 () Bool)

(assert (=> b!4465102 m!5169405))

(assert (=> d!1361312 d!1361496))

(declare-fun d!1361500 () Bool)

(assert (=> d!1361500 (= (invariantList!919 (toList!4040 lt!1654803)) (noDuplicatedKeys!206 (toList!4040 lt!1654803)))))

(declare-fun bs!792737 () Bool)

(assert (= bs!792737 d!1361500))

(declare-fun m!5169407 () Bool)

(assert (=> bs!792737 m!5169407))

(assert (=> d!1361310 d!1361500))

(declare-fun d!1361502 () Bool)

(declare-fun res!1852213 () Bool)

(declare-fun e!2780411 () Bool)

(assert (=> d!1361502 (=> res!1852213 e!2780411)))

(assert (=> d!1361502 (= res!1852213 ((_ is Nil!50261) lt!1654655))))

(assert (=> d!1361502 (= (forall!9966 lt!1654655 lambda!162430) e!2780411)))

(declare-fun b!4465103 () Bool)

(declare-fun e!2780412 () Bool)

(assert (=> b!4465103 (= e!2780411 e!2780412)))

(declare-fun res!1852214 () Bool)

(assert (=> b!4465103 (=> (not res!1852214) (not e!2780412))))

(assert (=> b!4465103 (= res!1852214 (dynLambda!20998 lambda!162430 (h!56016 lt!1654655)))))

(declare-fun b!4465104 () Bool)

(assert (=> b!4465104 (= e!2780412 (forall!9966 (t!357335 lt!1654655) lambda!162430))))

(assert (= (and d!1361502 (not res!1852213)) b!4465103))

(assert (= (and b!4465103 res!1852214) b!4465104))

(declare-fun b_lambda!147979 () Bool)

(assert (=> (not b_lambda!147979) (not b!4465103)))

(declare-fun m!5169409 () Bool)

(assert (=> b!4465103 m!5169409))

(declare-fun m!5169411 () Bool)

(assert (=> b!4465104 m!5169411))

(assert (=> d!1361310 d!1361502))

(declare-fun d!1361504 () Bool)

(declare-fun res!1852222 () Bool)

(declare-fun e!2780423 () Bool)

(assert (=> d!1361504 (=> res!1852222 e!2780423)))

(assert (=> d!1361504 (= res!1852222 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (= (_1!28544 (h!56016 (toList!4039 lm!1477))) lt!1654644)))))

(assert (=> d!1361504 (= (containsKey!1447 (toList!4039 lm!1477) lt!1654644) e!2780423)))

(declare-fun b!4465118 () Bool)

(declare-fun e!2780424 () Bool)

(assert (=> b!4465118 (= e!2780423 e!2780424)))

(declare-fun res!1852223 () Bool)

(assert (=> b!4465118 (=> (not res!1852223) (not e!2780424))))

(assert (=> b!4465118 (= res!1852223 (and (or (not ((_ is Cons!50261) (toList!4039 lm!1477))) (bvsle (_1!28544 (h!56016 (toList!4039 lm!1477))) lt!1654644)) ((_ is Cons!50261) (toList!4039 lm!1477)) (bvslt (_1!28544 (h!56016 (toList!4039 lm!1477))) lt!1654644)))))

(declare-fun b!4465119 () Bool)

(assert (=> b!4465119 (= e!2780424 (containsKey!1447 (t!357335 (toList!4039 lm!1477)) lt!1654644))))

(assert (= (and d!1361504 (not res!1852222)) b!4465118))

(assert (= (and b!4465118 res!1852223) b!4465119))

(declare-fun m!5169429 () Bool)

(assert (=> b!4465119 m!5169429))

(assert (=> d!1361234 d!1361504))

(declare-fun d!1361510 () Bool)

(declare-fun isEmpty!28467 (Option!10911) Bool)

(assert (=> d!1361510 (= (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287)) (not (isEmpty!28467 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))))

(declare-fun bs!792739 () Bool)

(assert (= bs!792739 d!1361510))

(assert (=> bs!792739 m!5168681))

(declare-fun m!5169431 () Bool)

(assert (=> bs!792739 m!5169431))

(assert (=> b!4464697 d!1361510))

(declare-fun b!4465130 () Bool)

(declare-fun e!2780430 () Option!10911)

(assert (=> b!4465130 (= e!2780430 (getValueByKey!897 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) key!3287))))

(declare-fun b!4465131 () Bool)

(assert (=> b!4465131 (= e!2780430 None!10910)))

(declare-fun b!4465129 () Bool)

(declare-fun e!2780429 () Option!10911)

(assert (=> b!4465129 (= e!2780429 e!2780430)))

(declare-fun c!759885 () Bool)

(assert (=> b!4465129 (= c!759885 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (not (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) key!3287))))))

(declare-fun d!1361512 () Bool)

(declare-fun c!759884 () Bool)

(assert (=> d!1361512 (= c!759884 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) key!3287)))))

(assert (=> d!1361512 (= (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287) e!2780429)))

(declare-fun b!4465128 () Bool)

(assert (=> b!4465128 (= e!2780429 (Some!10910 (_2!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))))

(assert (= (and d!1361512 c!759884) b!4465128))

(assert (= (and d!1361512 (not c!759884)) b!4465129))

(assert (= (and b!4465129 c!759885) b!4465130))

(assert (= (and b!4465129 (not c!759885)) b!4465131))

(declare-fun m!5169433 () Bool)

(assert (=> b!4465130 m!5169433))

(assert (=> b!4464697 d!1361512))

(declare-fun d!1361514 () Bool)

(declare-fun res!1852228 () Bool)

(declare-fun e!2780435 () Bool)

(assert (=> d!1361514 (=> res!1852228 e!2780435)))

(assert (=> d!1361514 (= res!1852228 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 lt!1654655))) (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655)))) key!3287)))))

(assert (=> d!1361514 (= (containsKey!1448 (toList!4040 (extractMap!1072 lt!1654655)) key!3287) e!2780435)))

(declare-fun b!4465136 () Bool)

(declare-fun e!2780436 () Bool)

(assert (=> b!4465136 (= e!2780435 e!2780436)))

(declare-fun res!1852229 () Bool)

(assert (=> b!4465136 (=> (not res!1852229) (not e!2780436))))

(assert (=> b!4465136 (= res!1852229 ((_ is Cons!50260) (toList!4040 (extractMap!1072 lt!1654655))))))

(declare-fun b!4465137 () Bool)

(assert (=> b!4465137 (= e!2780436 (containsKey!1448 (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) key!3287))))

(assert (= (and d!1361514 (not res!1852228)) b!4465136))

(assert (= (and b!4465136 res!1852229) b!4465137))

(declare-fun m!5169435 () Bool)

(assert (=> b!4465137 m!5169435))

(assert (=> d!1361322 d!1361514))

(declare-fun d!1361516 () Bool)

(assert (=> d!1361516 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(declare-fun lt!1655134 () Unit!87113)

(declare-fun choose!28489 (List!50384 K!11680) Unit!87113)

(assert (=> d!1361516 (= lt!1655134 (choose!28489 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(assert (=> d!1361516 (invariantList!919 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))

(assert (=> d!1361516 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287) lt!1655134)))

(declare-fun bs!792740 () Bool)

(assert (= bs!792740 d!1361516))

(assert (=> bs!792740 m!5168681))

(assert (=> bs!792740 m!5168681))

(assert (=> bs!792740 m!5168683))

(declare-fun m!5169437 () Bool)

(assert (=> bs!792740 m!5169437))

(declare-fun m!5169439 () Bool)

(assert (=> bs!792740 m!5169439))

(assert (=> b!4464699 d!1361516))

(assert (=> b!4464699 d!1361510))

(assert (=> b!4464699 d!1361512))

(declare-fun d!1361518 () Bool)

(assert (=> d!1361518 (contains!12799 (getKeysList!367 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) key!3287)))

(declare-fun lt!1655137 () Unit!87113)

(declare-fun choose!28490 (List!50384 K!11680) Unit!87113)

(assert (=> d!1361518 (= lt!1655137 (choose!28490 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(assert (=> d!1361518 (invariantList!919 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))

(assert (=> d!1361518 (= (lemmaInListThenGetKeysListContains!363 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287) lt!1655137)))

(declare-fun bs!792741 () Bool)

(assert (= bs!792741 d!1361518))

(assert (=> bs!792741 m!5168675))

(assert (=> bs!792741 m!5168675))

(declare-fun m!5169441 () Bool)

(assert (=> bs!792741 m!5169441))

(declare-fun m!5169443 () Bool)

(assert (=> bs!792741 m!5169443))

(assert (=> bs!792741 m!5169439))

(assert (=> b!4464699 d!1361518))

(assert (=> b!4464756 d!1361420))

(assert (=> b!4464756 d!1361422))

(declare-fun d!1361520 () Bool)

(declare-fun res!1852230 () Bool)

(declare-fun e!2780437 () Bool)

(assert (=> d!1361520 (=> res!1852230 e!2780437)))

(assert (=> d!1361520 (= res!1852230 ((_ is Nil!50261) (t!357335 (toList!4039 lm!1477))))))

(assert (=> d!1361520 (= (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162393) e!2780437)))

(declare-fun b!4465138 () Bool)

(declare-fun e!2780438 () Bool)

(assert (=> b!4465138 (= e!2780437 e!2780438)))

(declare-fun res!1852231 () Bool)

(assert (=> b!4465138 (=> (not res!1852231) (not e!2780438))))

(assert (=> b!4465138 (= res!1852231 (dynLambda!20998 lambda!162393 (h!56016 (t!357335 (toList!4039 lm!1477)))))))

(declare-fun b!4465139 () Bool)

(assert (=> b!4465139 (= e!2780438 (forall!9966 (t!357335 (t!357335 (toList!4039 lm!1477))) lambda!162393))))

(assert (= (and d!1361520 (not res!1852230)) b!4465138))

(assert (= (and b!4465138 res!1852231) b!4465139))

(declare-fun b_lambda!147983 () Bool)

(assert (=> (not b_lambda!147983) (not b!4465138)))

(declare-fun m!5169445 () Bool)

(assert (=> b!4465138 m!5169445))

(declare-fun m!5169447 () Bool)

(assert (=> b!4465139 m!5169447))

(assert (=> b!4464712 d!1361520))

(declare-fun d!1361522 () Bool)

(declare-fun e!2780439 () Bool)

(assert (=> d!1361522 e!2780439))

(declare-fun res!1852232 () Bool)

(assert (=> d!1361522 (=> res!1852232 e!2780439)))

(declare-fun lt!1655141 () Bool)

(assert (=> d!1361522 (= res!1852232 (not lt!1655141))))

(declare-fun lt!1655138 () Bool)

(assert (=> d!1361522 (= lt!1655141 lt!1655138)))

(declare-fun lt!1655139 () Unit!87113)

(declare-fun e!2780440 () Unit!87113)

(assert (=> d!1361522 (= lt!1655139 e!2780440)))

(declare-fun c!759886 () Bool)

(assert (=> d!1361522 (= c!759886 lt!1655138)))

(assert (=> d!1361522 (= lt!1655138 (containsKey!1447 (toList!4039 lm!1477) (hash!2415 hashF!1107 key!3287)))))

(assert (=> d!1361522 (= (contains!12796 lm!1477 (hash!2415 hashF!1107 key!3287)) lt!1655141)))

(declare-fun b!4465140 () Bool)

(declare-fun lt!1655140 () Unit!87113)

(assert (=> b!4465140 (= e!2780440 lt!1655140)))

(assert (=> b!4465140 (= lt!1655140 (lemmaContainsKeyImpliesGetValueByKeyDefined!800 (toList!4039 lm!1477) (hash!2415 hashF!1107 key!3287)))))

(assert (=> b!4465140 (isDefined!8197 (getValueByKey!896 (toList!4039 lm!1477) (hash!2415 hashF!1107 key!3287)))))

(declare-fun b!4465141 () Bool)

(declare-fun Unit!87180 () Unit!87113)

(assert (=> b!4465141 (= e!2780440 Unit!87180)))

(declare-fun b!4465142 () Bool)

(assert (=> b!4465142 (= e!2780439 (isDefined!8197 (getValueByKey!896 (toList!4039 lm!1477) (hash!2415 hashF!1107 key!3287))))))

(assert (= (and d!1361522 c!759886) b!4465140))

(assert (= (and d!1361522 (not c!759886)) b!4465141))

(assert (= (and d!1361522 (not res!1852232)) b!4465142))

(assert (=> d!1361522 m!5168417))

(declare-fun m!5169449 () Bool)

(assert (=> d!1361522 m!5169449))

(assert (=> b!4465140 m!5168417))

(declare-fun m!5169451 () Bool)

(assert (=> b!4465140 m!5169451))

(assert (=> b!4465140 m!5168417))

(declare-fun m!5169453 () Bool)

(assert (=> b!4465140 m!5169453))

(assert (=> b!4465140 m!5169453))

(declare-fun m!5169455 () Bool)

(assert (=> b!4465140 m!5169455))

(assert (=> b!4465142 m!5168417))

(assert (=> b!4465142 m!5169453))

(assert (=> b!4465142 m!5169453))

(assert (=> b!4465142 m!5169455))

(assert (=> d!1361218 d!1361522))

(assert (=> d!1361218 d!1361214))

(declare-fun d!1361524 () Bool)

(assert (=> d!1361524 (contains!12796 lm!1477 (hash!2415 hashF!1107 key!3287))))

(assert (=> d!1361524 true))

(declare-fun _$27!1061 () Unit!87113)

(assert (=> d!1361524 (= (choose!28478 lm!1477 key!3287 hashF!1107) _$27!1061)))

(declare-fun bs!792742 () Bool)

(assert (= bs!792742 d!1361524))

(assert (=> bs!792742 m!5168417))

(assert (=> bs!792742 m!5168417))

(assert (=> bs!792742 m!5168475))

(assert (=> d!1361218 d!1361524))

(declare-fun d!1361526 () Bool)

(declare-fun res!1852233 () Bool)

(declare-fun e!2780441 () Bool)

(assert (=> d!1361526 (=> res!1852233 e!2780441)))

(assert (=> d!1361526 (= res!1852233 ((_ is Nil!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361526 (= (forall!9966 (toList!4039 lm!1477) lambda!162399) e!2780441)))

(declare-fun b!4465143 () Bool)

(declare-fun e!2780442 () Bool)

(assert (=> b!4465143 (= e!2780441 e!2780442)))

(declare-fun res!1852234 () Bool)

(assert (=> b!4465143 (=> (not res!1852234) (not e!2780442))))

(assert (=> b!4465143 (= res!1852234 (dynLambda!20998 lambda!162399 (h!56016 (toList!4039 lm!1477))))))

(declare-fun b!4465144 () Bool)

(assert (=> b!4465144 (= e!2780442 (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162399))))

(assert (= (and d!1361526 (not res!1852233)) b!4465143))

(assert (= (and b!4465143 res!1852234) b!4465144))

(declare-fun b_lambda!147985 () Bool)

(assert (=> (not b_lambda!147985) (not b!4465143)))

(declare-fun m!5169457 () Bool)

(assert (=> b!4465143 m!5169457))

(declare-fun m!5169459 () Bool)

(assert (=> b!4465144 m!5169459))

(assert (=> d!1361218 d!1361526))

(declare-fun d!1361528 () Bool)

(declare-fun lt!1655142 () Bool)

(assert (=> d!1361528 (= lt!1655142 (select (content!8079 e!2780157) key!3287))))

(declare-fun e!2780443 () Bool)

(assert (=> d!1361528 (= lt!1655142 e!2780443)))

(declare-fun res!1852235 () Bool)

(assert (=> d!1361528 (=> (not res!1852235) (not e!2780443))))

(assert (=> d!1361528 (= res!1852235 ((_ is Cons!50263) e!2780157))))

(assert (=> d!1361528 (= (contains!12799 e!2780157 key!3287) lt!1655142)))

(declare-fun b!4465145 () Bool)

(declare-fun e!2780444 () Bool)

(assert (=> b!4465145 (= e!2780443 e!2780444)))

(declare-fun res!1852236 () Bool)

(assert (=> b!4465145 (=> res!1852236 e!2780444)))

(assert (=> b!4465145 (= res!1852236 (= (h!56020 e!2780157) key!3287))))

(declare-fun b!4465146 () Bool)

(assert (=> b!4465146 (= e!2780444 (contains!12799 (t!357337 e!2780157) key!3287))))

(assert (= (and d!1361528 res!1852235) b!4465145))

(assert (= (and b!4465145 (not res!1852236)) b!4465146))

(declare-fun m!5169461 () Bool)

(assert (=> d!1361528 m!5169461))

(declare-fun m!5169463 () Bool)

(assert (=> d!1361528 m!5169463))

(declare-fun m!5169465 () Bool)

(assert (=> b!4465146 m!5169465))

(assert (=> bm!310762 d!1361528))

(declare-fun d!1361530 () Bool)

(declare-fun res!1852237 () Bool)

(declare-fun e!2780445 () Bool)

(assert (=> d!1361530 (=> res!1852237 e!2780445)))

(assert (=> d!1361530 (= res!1852237 (not ((_ is Cons!50260) (_2!28544 lt!1654652))))))

(assert (=> d!1361530 (= (noDuplicateKeys!1016 (_2!28544 lt!1654652)) e!2780445)))

(declare-fun b!4465147 () Bool)

(declare-fun e!2780446 () Bool)

(assert (=> b!4465147 (= e!2780445 e!2780446)))

(declare-fun res!1852238 () Bool)

(assert (=> b!4465147 (=> (not res!1852238) (not e!2780446))))

(assert (=> b!4465147 (= res!1852238 (not (containsKey!1444 (t!357334 (_2!28544 lt!1654652)) (_1!28543 (h!56015 (_2!28544 lt!1654652))))))))

(declare-fun b!4465148 () Bool)

(assert (=> b!4465148 (= e!2780446 (noDuplicateKeys!1016 (t!357334 (_2!28544 lt!1654652))))))

(assert (= (and d!1361530 (not res!1852237)) b!4465147))

(assert (= (and b!4465147 res!1852238) b!4465148))

(declare-fun m!5169467 () Bool)

(assert (=> b!4465147 m!5169467))

(declare-fun m!5169469 () Bool)

(assert (=> b!4465148 m!5169469))

(assert (=> bs!792497 d!1361530))

(declare-fun bs!792743 () Bool)

(declare-fun b!4465183 () Bool)

(assert (= bs!792743 (and b!4465183 b!4464979)))

(declare-fun lambda!162565 () Int)

(assert (=> bs!792743 (= (= (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162565 lambda!162466))))

(assert (=> b!4465183 true))

(declare-fun bs!792744 () Bool)

(declare-fun b!4465186 () Bool)

(assert (= bs!792744 (and b!4465186 b!4464979)))

(declare-fun lambda!162566 () Int)

(assert (=> bs!792744 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162566 lambda!162466))))

(declare-fun bs!792745 () Bool)

(assert (= bs!792745 (and b!4465186 b!4465183)))

(assert (=> bs!792745 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162566 lambda!162565))))

(assert (=> b!4465186 true))

(declare-fun bs!792746 () Bool)

(declare-fun b!4465191 () Bool)

(assert (= bs!792746 (and b!4465191 b!4464979)))

(declare-fun lambda!162567 () Int)

(assert (=> bs!792746 (= (= (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162567 lambda!162466))))

(declare-fun bs!792747 () Bool)

(assert (= bs!792747 (and b!4465191 b!4465183)))

(assert (=> bs!792747 (= (= (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162567 lambda!162565))))

(declare-fun bs!792748 () Bool)

(assert (= bs!792748 (and b!4465191 b!4465186)))

(assert (=> bs!792748 (= (= (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162567 lambda!162566))))

(assert (=> b!4465191 true))

(declare-fun bs!792749 () Bool)

(declare-fun b!4465189 () Bool)

(assert (= bs!792749 (and b!4465189 b!4464980)))

(declare-fun lambda!162568 () Int)

(assert (=> bs!792749 (= lambda!162568 lambda!162467)))

(assert (=> b!4465183 false))

(declare-fun lt!1655180 () Unit!87113)

(declare-fun forallContained!2241 (List!50387 Int K!11680) Unit!87113)

(assert (=> b!4465183 (= lt!1655180 (forallContained!2241 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) lambda!162565 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))))

(declare-fun e!2780467 () Unit!87113)

(declare-fun Unit!87181 () Unit!87113)

(assert (=> b!4465183 (= e!2780467 Unit!87181)))

(declare-fun b!4465184 () Bool)

(declare-fun Unit!87182 () Unit!87113)

(assert (=> b!4465184 (= e!2780467 Unit!87182)))

(declare-fun d!1361532 () Bool)

(declare-fun e!2780466 () Bool)

(assert (=> d!1361532 e!2780466))

(declare-fun res!1852246 () Bool)

(assert (=> d!1361532 (=> (not res!1852246) (not e!2780466))))

(declare-fun lt!1655178 () List!50387)

(assert (=> d!1361532 (= res!1852246 (noDuplicate!692 lt!1655178))))

(declare-fun e!2780468 () List!50387)

(assert (=> d!1361532 (= lt!1655178 e!2780468)))

(declare-fun c!759903 () Bool)

(assert (=> d!1361532 (= c!759903 ((_ is Cons!50260) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))

(assert (=> d!1361532 (invariantList!919 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))

(assert (=> d!1361532 (= (getKeysList!367 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) lt!1655178)))

(declare-fun b!4465185 () Bool)

(declare-fun e!2780465 () Unit!87113)

(declare-fun Unit!87183 () Unit!87113)

(assert (=> b!4465185 (= e!2780465 Unit!87183)))

(assert (=> b!4465186 (= e!2780468 (Cons!50263 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))))

(declare-fun c!759902 () Bool)

(assert (=> b!4465186 (= c!759902 (containsKey!1448 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))))

(declare-fun lt!1655179 () Unit!87113)

(assert (=> b!4465186 (= lt!1655179 e!2780465)))

(declare-fun c!759901 () Bool)

(assert (=> b!4465186 (= c!759901 (contains!12799 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))))

(declare-fun lt!1655176 () Unit!87113)

(assert (=> b!4465186 (= lt!1655176 e!2780467)))

(declare-fun lt!1655177 () List!50387)

(assert (=> b!4465186 (= lt!1655177 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))))

(declare-fun lt!1655175 () Unit!87113)

(declare-fun lemmaForallContainsAddHeadPreserves!114 (List!50384 List!50387 tuple2!50498) Unit!87113)

(assert (=> b!4465186 (= lt!1655175 (lemmaForallContainsAddHeadPreserves!114 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) lt!1655177 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))))

(assert (=> b!4465186 (forall!9970 lt!1655177 lambda!162566)))

(declare-fun lt!1655181 () Unit!87113)

(assert (=> b!4465186 (= lt!1655181 lt!1655175)))

(declare-fun b!4465187 () Bool)

(assert (=> b!4465187 (= e!2780468 Nil!50263)))

(declare-fun b!4465188 () Bool)

(assert (=> b!4465188 false))

(declare-fun Unit!87184 () Unit!87113)

(assert (=> b!4465188 (= e!2780465 Unit!87184)))

(assert (=> b!4465189 (= e!2780466 (= (content!8079 lt!1655178) (content!8079 (map!11011 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) lambda!162568))))))

(declare-fun b!4465190 () Bool)

(declare-fun res!1852245 () Bool)

(assert (=> b!4465190 (=> (not res!1852245) (not e!2780466))))

(assert (=> b!4465190 (= res!1852245 (= (length!240 lt!1655178) (length!241 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))))

(declare-fun res!1852247 () Bool)

(assert (=> b!4465191 (=> (not res!1852247) (not e!2780466))))

(assert (=> b!4465191 (= res!1852247 (forall!9970 lt!1655178 lambda!162567))))

(assert (= (and d!1361532 c!759903) b!4465186))

(assert (= (and d!1361532 (not c!759903)) b!4465187))

(assert (= (and b!4465186 c!759902) b!4465188))

(assert (= (and b!4465186 (not c!759902)) b!4465185))

(assert (= (and b!4465186 c!759901) b!4465183))

(assert (= (and b!4465186 (not c!759901)) b!4465184))

(assert (= (and d!1361532 res!1852246) b!4465190))

(assert (= (and b!4465190 res!1852245) b!4465191))

(assert (= (and b!4465191 res!1852247) b!4465189))

(declare-fun m!5169471 () Bool)

(assert (=> d!1361532 m!5169471))

(assert (=> d!1361532 m!5169439))

(declare-fun m!5169473 () Bool)

(assert (=> b!4465191 m!5169473))

(declare-fun m!5169475 () Bool)

(assert (=> b!4465190 m!5169475))

(declare-fun m!5169477 () Bool)

(assert (=> b!4465190 m!5169477))

(declare-fun m!5169479 () Bool)

(assert (=> b!4465183 m!5169479))

(assert (=> b!4465183 m!5169479))

(declare-fun m!5169481 () Bool)

(assert (=> b!4465183 m!5169481))

(assert (=> b!4465186 m!5169479))

(declare-fun m!5169483 () Bool)

(assert (=> b!4465186 m!5169483))

(declare-fun m!5169485 () Bool)

(assert (=> b!4465186 m!5169485))

(assert (=> b!4465186 m!5169479))

(declare-fun m!5169487 () Bool)

(assert (=> b!4465186 m!5169487))

(declare-fun m!5169489 () Bool)

(assert (=> b!4465186 m!5169489))

(declare-fun m!5169491 () Bool)

(assert (=> b!4465189 m!5169491))

(declare-fun m!5169493 () Bool)

(assert (=> b!4465189 m!5169493))

(assert (=> b!4465189 m!5169493))

(declare-fun m!5169495 () Bool)

(assert (=> b!4465189 m!5169495))

(assert (=> b!4464692 d!1361532))

(declare-fun d!1361534 () Bool)

(declare-fun res!1852258 () Bool)

(declare-fun e!2780483 () Bool)

(assert (=> d!1361534 (=> res!1852258 e!2780483)))

(assert (=> d!1361534 (= res!1852258 (or ((_ is Nil!50261) (toList!4039 lm!1477)) ((_ is Nil!50261) (t!357335 (toList!4039 lm!1477)))))))

(assert (=> d!1361534 (= (isStrictlySorted!333 (toList!4039 lm!1477)) e!2780483)))

(declare-fun b!4465220 () Bool)

(declare-fun e!2780484 () Bool)

(assert (=> b!4465220 (= e!2780483 e!2780484)))

(declare-fun res!1852259 () Bool)

(assert (=> b!4465220 (=> (not res!1852259) (not e!2780484))))

(assert (=> b!4465220 (= res!1852259 (bvslt (_1!28544 (h!56016 (toList!4039 lm!1477))) (_1!28544 (h!56016 (t!357335 (toList!4039 lm!1477))))))))

(declare-fun b!4465221 () Bool)

(assert (=> b!4465221 (= e!2780484 (isStrictlySorted!333 (t!357335 (toList!4039 lm!1477))))))

(assert (= (and d!1361534 (not res!1852258)) b!4465220))

(assert (= (and b!4465220 res!1852259) b!4465221))

(declare-fun m!5169497 () Bool)

(assert (=> b!4465221 m!5169497))

(assert (=> d!1361294 d!1361534))

(assert (=> b!4464620 d!1361256))

(declare-fun bs!792750 () Bool)

(declare-fun b!4465223 () Bool)

(assert (= bs!792750 (and b!4465223 b!4464979)))

(declare-fun lambda!162569 () Int)

(assert (=> bs!792750 (= (= (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162569 lambda!162466))))

(declare-fun bs!792751 () Bool)

(assert (= bs!792751 (and b!4465223 b!4465183)))

(assert (=> bs!792751 (= (= (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162569 lambda!162565))))

(declare-fun bs!792752 () Bool)

(assert (= bs!792752 (and b!4465223 b!4465186)))

(assert (=> bs!792752 (= (= (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162569 lambda!162566))))

(declare-fun bs!792753 () Bool)

(assert (= bs!792753 (and b!4465223 b!4465191)))

(assert (=> bs!792753 (= lambda!162569 lambda!162567)))

(assert (=> b!4465223 true))

(declare-fun bs!792754 () Bool)

(declare-fun b!4465224 () Bool)

(assert (= bs!792754 (and b!4465224 b!4464980)))

(declare-fun lambda!162570 () Int)

(assert (=> bs!792754 (= lambda!162570 lambda!162467)))

(declare-fun bs!792755 () Bool)

(assert (= bs!792755 (and b!4465224 b!4465189)))

(assert (=> bs!792755 (= lambda!162570 lambda!162568)))

(declare-fun d!1361536 () Bool)

(declare-fun e!2780485 () Bool)

(assert (=> d!1361536 e!2780485))

(declare-fun res!1852261 () Bool)

(assert (=> d!1361536 (=> (not res!1852261) (not e!2780485))))

(declare-fun lt!1655200 () List!50387)

(assert (=> d!1361536 (= res!1852261 (noDuplicate!692 lt!1655200))))

(assert (=> d!1361536 (= lt!1655200 (getKeysList!367 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))

(assert (=> d!1361536 (= (keys!17346 (extractMap!1072 (toList!4039 lm!1477))) lt!1655200)))

(declare-fun b!4465222 () Bool)

(declare-fun res!1852262 () Bool)

(assert (=> b!4465222 (=> (not res!1852262) (not e!2780485))))

(assert (=> b!4465222 (= res!1852262 (= (length!240 lt!1655200) (length!241 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))))

(declare-fun res!1852260 () Bool)

(assert (=> b!4465223 (=> (not res!1852260) (not e!2780485))))

(assert (=> b!4465223 (= res!1852260 (forall!9970 lt!1655200 lambda!162569))))

(assert (=> b!4465224 (= e!2780485 (= (content!8079 lt!1655200) (content!8079 (map!11011 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) lambda!162570))))))

(assert (= (and d!1361536 res!1852261) b!4465222))

(assert (= (and b!4465222 res!1852262) b!4465223))

(assert (= (and b!4465223 res!1852260) b!4465224))

(declare-fun m!5169499 () Bool)

(assert (=> d!1361536 m!5169499))

(assert (=> d!1361536 m!5168675))

(declare-fun m!5169501 () Bool)

(assert (=> b!4465222 m!5169501))

(assert (=> b!4465222 m!5169477))

(declare-fun m!5169503 () Bool)

(assert (=> b!4465223 m!5169503))

(declare-fun m!5169505 () Bool)

(assert (=> b!4465224 m!5169505))

(declare-fun m!5169507 () Bool)

(assert (=> b!4465224 m!5169507))

(assert (=> b!4465224 m!5169507))

(declare-fun m!5169509 () Bool)

(assert (=> b!4465224 m!5169509))

(assert (=> b!4464695 d!1361536))

(declare-fun d!1361538 () Bool)

(declare-fun c!759914 () Bool)

(assert (=> d!1361538 (= c!759914 ((_ is Nil!50263) (keys!17346 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(declare-fun e!2780488 () (InoxSet K!11680))

(assert (=> d!1361538 (= (content!8079 (keys!17346 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) e!2780488)))

(declare-fun b!4465229 () Bool)

(assert (=> b!4465229 (= e!2780488 ((as const (Array K!11680 Bool)) false))))

(declare-fun b!4465230 () Bool)

(assert (=> b!4465230 (= e!2780488 ((_ map or) (store ((as const (Array K!11680 Bool)) false) (h!56020 (keys!17346 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) true) (content!8079 (t!357337 (keys!17346 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(assert (= (and d!1361538 c!759914) b!4465229))

(assert (= (and d!1361538 (not c!759914)) b!4465230))

(declare-fun m!5169511 () Bool)

(assert (=> b!4465230 m!5169511))

(declare-fun m!5169513 () Bool)

(assert (=> b!4465230 m!5169513))

(assert (=> b!4464746 d!1361538))

(declare-fun bs!792756 () Bool)

(declare-fun b!4465232 () Bool)

(assert (= bs!792756 (and b!4465232 b!4465183)))

(declare-fun lambda!162571 () Int)

(assert (=> bs!792756 (= (= (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162571 lambda!162565))))

(declare-fun bs!792757 () Bool)

(assert (= bs!792757 (and b!4465232 b!4464979)))

(assert (=> bs!792757 (= (= (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162571 lambda!162466))))

(declare-fun bs!792758 () Bool)

(assert (= bs!792758 (and b!4465232 b!4465186)))

(assert (=> bs!792758 (= (= (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162571 lambda!162566))))

(declare-fun bs!792759 () Bool)

(assert (= bs!792759 (and b!4465232 b!4465191)))

(assert (=> bs!792759 (= (= (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162571 lambda!162567))))

(declare-fun bs!792760 () Bool)

(assert (= bs!792760 (and b!4465232 b!4465223)))

(assert (=> bs!792760 (= (= (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162571 lambda!162569))))

(assert (=> b!4465232 true))

(declare-fun bs!792761 () Bool)

(declare-fun b!4465233 () Bool)

(assert (= bs!792761 (and b!4465233 b!4464980)))

(declare-fun lambda!162572 () Int)

(assert (=> bs!792761 (= lambda!162572 lambda!162467)))

(declare-fun bs!792762 () Bool)

(assert (= bs!792762 (and b!4465233 b!4465189)))

(assert (=> bs!792762 (= lambda!162572 lambda!162568)))

(declare-fun bs!792763 () Bool)

(assert (= bs!792763 (and b!4465233 b!4465224)))

(assert (=> bs!792763 (= lambda!162572 lambda!162570)))

(declare-fun d!1361540 () Bool)

(declare-fun e!2780489 () Bool)

(assert (=> d!1361540 e!2780489))

(declare-fun res!1852264 () Bool)

(assert (=> d!1361540 (=> (not res!1852264) (not e!2780489))))

(declare-fun lt!1655201 () List!50387)

(assert (=> d!1361540 (= res!1852264 (noDuplicate!692 lt!1655201))))

(assert (=> d!1361540 (= lt!1655201 (getKeysList!367 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(assert (=> d!1361540 (= (keys!17346 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lt!1655201)))

(declare-fun b!4465231 () Bool)

(declare-fun res!1852265 () Bool)

(assert (=> b!4465231 (=> (not res!1852265) (not e!2780489))))

(assert (=> b!4465231 (= res!1852265 (= (length!240 lt!1655201) (length!241 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(declare-fun res!1852263 () Bool)

(assert (=> b!4465232 (=> (not res!1852263) (not e!2780489))))

(assert (=> b!4465232 (= res!1852263 (forall!9970 lt!1655201 lambda!162571))))

(assert (=> b!4465233 (= e!2780489 (= (content!8079 lt!1655201) (content!8079 (map!11011 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) lambda!162572))))))

(assert (= (and d!1361540 res!1852264) b!4465231))

(assert (= (and b!4465231 res!1852265) b!4465232))

(assert (= (and b!4465232 res!1852263) b!4465233))

(declare-fun m!5169515 () Bool)

(assert (=> d!1361540 m!5169515))

(declare-fun m!5169517 () Bool)

(assert (=> d!1361540 m!5169517))

(declare-fun m!5169519 () Bool)

(assert (=> b!4465231 m!5169519))

(declare-fun m!5169521 () Bool)

(assert (=> b!4465231 m!5169521))

(declare-fun m!5169523 () Bool)

(assert (=> b!4465232 m!5169523))

(declare-fun m!5169525 () Bool)

(assert (=> b!4465233 m!5169525))

(declare-fun m!5169527 () Bool)

(assert (=> b!4465233 m!5169527))

(assert (=> b!4465233 m!5169527))

(declare-fun m!5169529 () Bool)

(assert (=> b!4465233 m!5169529))

(assert (=> b!4464746 d!1361540))

(declare-fun d!1361542 () Bool)

(declare-fun c!759915 () Bool)

(assert (=> d!1361542 (= c!759915 ((_ is Nil!50263) (keys!17346 lt!1654807)))))

(declare-fun e!2780490 () (InoxSet K!11680))

(assert (=> d!1361542 (= (content!8079 (keys!17346 lt!1654807)) e!2780490)))

(declare-fun b!4465234 () Bool)

(assert (=> b!4465234 (= e!2780490 ((as const (Array K!11680 Bool)) false))))

(declare-fun b!4465235 () Bool)

(assert (=> b!4465235 (= e!2780490 ((_ map or) (store ((as const (Array K!11680 Bool)) false) (h!56020 (keys!17346 lt!1654807)) true) (content!8079 (t!357337 (keys!17346 lt!1654807)))))))

(assert (= (and d!1361542 c!759915) b!4465234))

(assert (= (and d!1361542 (not c!759915)) b!4465235))

(declare-fun m!5169531 () Bool)

(assert (=> b!4465235 m!5169531))

(declare-fun m!5169533 () Bool)

(assert (=> b!4465235 m!5169533))

(assert (=> b!4464746 d!1361542))

(declare-fun bs!792764 () Bool)

(declare-fun b!4465237 () Bool)

(assert (= bs!792764 (and b!4465237 b!4465183)))

(declare-fun lambda!162573 () Int)

(assert (=> bs!792764 (= (= (toList!4040 lt!1654807) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162573 lambda!162565))))

(declare-fun bs!792765 () Bool)

(assert (= bs!792765 (and b!4465237 b!4465232)))

(assert (=> bs!792765 (= (= (toList!4040 lt!1654807) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162573 lambda!162571))))

(declare-fun bs!792766 () Bool)

(assert (= bs!792766 (and b!4465237 b!4464979)))

(assert (=> bs!792766 (= (= (toList!4040 lt!1654807) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162573 lambda!162466))))

(declare-fun bs!792767 () Bool)

(assert (= bs!792767 (and b!4465237 b!4465186)))

(assert (=> bs!792767 (= (= (toList!4040 lt!1654807) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162573 lambda!162566))))

(declare-fun bs!792768 () Bool)

(assert (= bs!792768 (and b!4465237 b!4465191)))

(assert (=> bs!792768 (= (= (toList!4040 lt!1654807) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162573 lambda!162567))))

(declare-fun bs!792769 () Bool)

(assert (= bs!792769 (and b!4465237 b!4465223)))

(assert (=> bs!792769 (= (= (toList!4040 lt!1654807) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162573 lambda!162569))))

(assert (=> b!4465237 true))

(declare-fun bs!792770 () Bool)

(declare-fun b!4465238 () Bool)

(assert (= bs!792770 (and b!4465238 b!4464980)))

(declare-fun lambda!162574 () Int)

(assert (=> bs!792770 (= lambda!162574 lambda!162467)))

(declare-fun bs!792771 () Bool)

(assert (= bs!792771 (and b!4465238 b!4465189)))

(assert (=> bs!792771 (= lambda!162574 lambda!162568)))

(declare-fun bs!792772 () Bool)

(assert (= bs!792772 (and b!4465238 b!4465224)))

(assert (=> bs!792772 (= lambda!162574 lambda!162570)))

(declare-fun bs!792773 () Bool)

(assert (= bs!792773 (and b!4465238 b!4465233)))

(assert (=> bs!792773 (= lambda!162574 lambda!162572)))

(declare-fun d!1361544 () Bool)

(declare-fun e!2780491 () Bool)

(assert (=> d!1361544 e!2780491))

(declare-fun res!1852267 () Bool)

(assert (=> d!1361544 (=> (not res!1852267) (not e!2780491))))

(declare-fun lt!1655202 () List!50387)

(assert (=> d!1361544 (= res!1852267 (noDuplicate!692 lt!1655202))))

(assert (=> d!1361544 (= lt!1655202 (getKeysList!367 (toList!4040 lt!1654807)))))

(assert (=> d!1361544 (= (keys!17346 lt!1654807) lt!1655202)))

(declare-fun b!4465236 () Bool)

(declare-fun res!1852268 () Bool)

(assert (=> b!4465236 (=> (not res!1852268) (not e!2780491))))

(assert (=> b!4465236 (= res!1852268 (= (length!240 lt!1655202) (length!241 (toList!4040 lt!1654807))))))

(declare-fun res!1852266 () Bool)

(assert (=> b!4465237 (=> (not res!1852266) (not e!2780491))))

(assert (=> b!4465237 (= res!1852266 (forall!9970 lt!1655202 lambda!162573))))

(assert (=> b!4465238 (= e!2780491 (= (content!8079 lt!1655202) (content!8079 (map!11011 (toList!4040 lt!1654807) lambda!162574))))))

(assert (= (and d!1361544 res!1852267) b!4465236))

(assert (= (and b!4465236 res!1852268) b!4465237))

(assert (= (and b!4465237 res!1852266) b!4465238))

(declare-fun m!5169535 () Bool)

(assert (=> d!1361544 m!5169535))

(declare-fun m!5169537 () Bool)

(assert (=> d!1361544 m!5169537))

(declare-fun m!5169539 () Bool)

(assert (=> b!4465236 m!5169539))

(declare-fun m!5169541 () Bool)

(assert (=> b!4465236 m!5169541))

(declare-fun m!5169543 () Bool)

(assert (=> b!4465237 m!5169543))

(declare-fun m!5169545 () Bool)

(assert (=> b!4465238 m!5169545))

(declare-fun m!5169547 () Bool)

(assert (=> b!4465238 m!5169547))

(assert (=> b!4465238 m!5169547))

(declare-fun m!5169549 () Bool)

(assert (=> b!4465238 m!5169549))

(assert (=> b!4464746 d!1361544))

(declare-fun d!1361546 () Bool)

(declare-fun c!759924 () Bool)

(assert (=> d!1361546 (= c!759924 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (= (_1!28544 (h!56016 (toList!4039 lm!1477))) hash!344)))))

(declare-fun e!2780501 () Option!10910)

(assert (=> d!1361546 (= (getValueByKey!896 (toList!4039 lm!1477) hash!344) e!2780501)))

(declare-fun b!4465261 () Bool)

(declare-fun e!2780502 () Option!10910)

(assert (=> b!4465261 (= e!2780502 None!10909)))

(declare-fun b!4465259 () Bool)

(assert (=> b!4465259 (= e!2780501 e!2780502)))

(declare-fun c!759925 () Bool)

(assert (=> b!4465259 (= c!759925 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (not (= (_1!28544 (h!56016 (toList!4039 lm!1477))) hash!344))))))

(declare-fun b!4465258 () Bool)

(assert (=> b!4465258 (= e!2780501 (Some!10909 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(declare-fun b!4465260 () Bool)

(assert (=> b!4465260 (= e!2780502 (getValueByKey!896 (t!357335 (toList!4039 lm!1477)) hash!344))))

(assert (= (and d!1361546 c!759924) b!4465258))

(assert (= (and d!1361546 (not c!759924)) b!4465259))

(assert (= (and b!4465259 c!759925) b!4465260))

(assert (= (and b!4465259 (not c!759925)) b!4465261))

(declare-fun m!5169551 () Bool)

(assert (=> b!4465260 m!5169551))

(assert (=> b!4464553 d!1361546))

(declare-fun d!1361548 () Bool)

(declare-fun e!2780503 () Bool)

(assert (=> d!1361548 e!2780503))

(declare-fun res!1852272 () Bool)

(assert (=> d!1361548 (=> res!1852272 e!2780503)))

(declare-fun lt!1655224 () Bool)

(assert (=> d!1361548 (= res!1852272 (not lt!1655224))))

(declare-fun lt!1655221 () Bool)

(assert (=> d!1361548 (= lt!1655224 lt!1655221)))

(declare-fun lt!1655222 () Unit!87113)

(declare-fun e!2780504 () Unit!87113)

(assert (=> d!1361548 (= lt!1655222 e!2780504)))

(declare-fun c!759926 () Bool)

(assert (=> d!1361548 (= c!759926 lt!1655221)))

(assert (=> d!1361548 (= lt!1655221 (containsKey!1447 (toList!4039 lt!1654823) (_1!28544 lt!1654653)))))

(assert (=> d!1361548 (= (contains!12796 lt!1654823 (_1!28544 lt!1654653)) lt!1655224)))

(declare-fun b!4465262 () Bool)

(declare-fun lt!1655223 () Unit!87113)

(assert (=> b!4465262 (= e!2780504 lt!1655223)))

(assert (=> b!4465262 (= lt!1655223 (lemmaContainsKeyImpliesGetValueByKeyDefined!800 (toList!4039 lt!1654823) (_1!28544 lt!1654653)))))

(assert (=> b!4465262 (isDefined!8197 (getValueByKey!896 (toList!4039 lt!1654823) (_1!28544 lt!1654653)))))

(declare-fun b!4465263 () Bool)

(declare-fun Unit!87196 () Unit!87113)

(assert (=> b!4465263 (= e!2780504 Unit!87196)))

(declare-fun b!4465264 () Bool)

(assert (=> b!4465264 (= e!2780503 (isDefined!8197 (getValueByKey!896 (toList!4039 lt!1654823) (_1!28544 lt!1654653))))))

(assert (= (and d!1361548 c!759926) b!4465262))

(assert (= (and d!1361548 (not c!759926)) b!4465263))

(assert (= (and d!1361548 (not res!1852272)) b!4465264))

(declare-fun m!5169553 () Bool)

(assert (=> d!1361548 m!5169553))

(declare-fun m!5169555 () Bool)

(assert (=> b!4465262 m!5169555))

(assert (=> b!4465262 m!5168777))

(assert (=> b!4465262 m!5168777))

(declare-fun m!5169557 () Bool)

(assert (=> b!4465262 m!5169557))

(assert (=> b!4465264 m!5168777))

(assert (=> b!4465264 m!5168777))

(assert (=> b!4465264 m!5169557))

(assert (=> d!1361320 d!1361548))

(declare-fun d!1361550 () Bool)

(declare-fun c!759927 () Bool)

(assert (=> d!1361550 (= c!759927 (and ((_ is Cons!50261) lt!1654820) (= (_1!28544 (h!56016 lt!1654820)) (_1!28544 lt!1654653))))))

(declare-fun e!2780505 () Option!10910)

(assert (=> d!1361550 (= (getValueByKey!896 lt!1654820 (_1!28544 lt!1654653)) e!2780505)))

(declare-fun b!4465268 () Bool)

(declare-fun e!2780506 () Option!10910)

(assert (=> b!4465268 (= e!2780506 None!10909)))

(declare-fun b!4465266 () Bool)

(assert (=> b!4465266 (= e!2780505 e!2780506)))

(declare-fun c!759928 () Bool)

(assert (=> b!4465266 (= c!759928 (and ((_ is Cons!50261) lt!1654820) (not (= (_1!28544 (h!56016 lt!1654820)) (_1!28544 lt!1654653)))))))

(declare-fun b!4465265 () Bool)

(assert (=> b!4465265 (= e!2780505 (Some!10909 (_2!28544 (h!56016 lt!1654820))))))

(declare-fun b!4465267 () Bool)

(assert (=> b!4465267 (= e!2780506 (getValueByKey!896 (t!357335 lt!1654820) (_1!28544 lt!1654653)))))

(assert (= (and d!1361550 c!759927) b!4465265))

(assert (= (and d!1361550 (not c!759927)) b!4465266))

(assert (= (and b!4465266 c!759928) b!4465267))

(assert (= (and b!4465266 (not c!759928)) b!4465268))

(declare-fun m!5169559 () Bool)

(assert (=> b!4465267 m!5169559))

(assert (=> d!1361320 d!1361550))

(declare-fun d!1361552 () Bool)

(assert (=> d!1361552 (= (getValueByKey!896 lt!1654820 (_1!28544 lt!1654653)) (Some!10909 (_2!28544 lt!1654653)))))

(declare-fun lt!1655227 () Unit!87113)

(declare-fun choose!28491 (List!50385 (_ BitVec 64) List!50384) Unit!87113)

(assert (=> d!1361552 (= lt!1655227 (choose!28491 lt!1654820 (_1!28544 lt!1654653) (_2!28544 lt!1654653)))))

(declare-fun e!2780509 () Bool)

(assert (=> d!1361552 e!2780509))

(declare-fun res!1852277 () Bool)

(assert (=> d!1361552 (=> (not res!1852277) (not e!2780509))))

(assert (=> d!1361552 (= res!1852277 (isStrictlySorted!333 lt!1654820))))

(assert (=> d!1361552 (= (lemmaContainsTupThenGetReturnValue!576 lt!1654820 (_1!28544 lt!1654653) (_2!28544 lt!1654653)) lt!1655227)))

(declare-fun b!4465273 () Bool)

(declare-fun res!1852278 () Bool)

(assert (=> b!4465273 (=> (not res!1852278) (not e!2780509))))

(assert (=> b!4465273 (= res!1852278 (containsKey!1447 lt!1654820 (_1!28544 lt!1654653)))))

(declare-fun b!4465274 () Bool)

(assert (=> b!4465274 (= e!2780509 (contains!12795 lt!1654820 (tuple2!50501 (_1!28544 lt!1654653) (_2!28544 lt!1654653))))))

(assert (= (and d!1361552 res!1852277) b!4465273))

(assert (= (and b!4465273 res!1852278) b!4465274))

(assert (=> d!1361552 m!5168771))

(declare-fun m!5169617 () Bool)

(assert (=> d!1361552 m!5169617))

(declare-fun m!5169619 () Bool)

(assert (=> d!1361552 m!5169619))

(declare-fun m!5169621 () Bool)

(assert (=> b!4465273 m!5169621))

(declare-fun m!5169623 () Bool)

(assert (=> b!4465274 m!5169623))

(assert (=> d!1361320 d!1361552))

(declare-fun c!759945 () Bool)

(declare-fun c!759947 () Bool)

(declare-fun e!2780536 () List!50385)

(declare-fun b!4465315 () Bool)

(assert (=> b!4465315 (= e!2780536 (ite c!759947 (t!357335 (toList!4039 lm!1477)) (ite c!759945 (Cons!50261 (h!56016 (toList!4039 lm!1477)) (t!357335 (toList!4039 lm!1477))) Nil!50261)))))

(declare-fun b!4465316 () Bool)

(declare-fun res!1852289 () Bool)

(declare-fun e!2780533 () Bool)

(assert (=> b!4465316 (=> (not res!1852289) (not e!2780533))))

(declare-fun lt!1655242 () List!50385)

(assert (=> b!4465316 (= res!1852289 (containsKey!1447 lt!1655242 (_1!28544 lt!1654653)))))

(declare-fun bm!310829 () Bool)

(declare-fun call!310834 () List!50385)

(declare-fun call!310835 () List!50385)

(assert (=> bm!310829 (= call!310834 call!310835)))

(declare-fun b!4465317 () Bool)

(declare-fun e!2780537 () List!50385)

(declare-fun e!2780535 () List!50385)

(assert (=> b!4465317 (= e!2780537 e!2780535)))

(assert (=> b!4465317 (= c!759947 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (= (_1!28544 (h!56016 (toList!4039 lm!1477))) (_1!28544 lt!1654653))))))

(declare-fun b!4465318 () Bool)

(declare-fun e!2780534 () List!50385)

(assert (=> b!4465318 (= e!2780534 call!310834)))

(declare-fun b!4465319 () Bool)

(declare-fun call!310836 () List!50385)

(assert (=> b!4465319 (= e!2780537 call!310836)))

(declare-fun d!1361556 () Bool)

(assert (=> d!1361556 e!2780533))

(declare-fun res!1852290 () Bool)

(assert (=> d!1361556 (=> (not res!1852290) (not e!2780533))))

(assert (=> d!1361556 (= res!1852290 (isStrictlySorted!333 lt!1655242))))

(assert (=> d!1361556 (= lt!1655242 e!2780537)))

(declare-fun c!759944 () Bool)

(assert (=> d!1361556 (= c!759944 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (bvslt (_1!28544 (h!56016 (toList!4039 lm!1477))) (_1!28544 lt!1654653))))))

(assert (=> d!1361556 (isStrictlySorted!333 (toList!4039 lm!1477))))

(assert (=> d!1361556 (= (insertStrictlySorted!322 (toList!4039 lm!1477) (_1!28544 lt!1654653) (_2!28544 lt!1654653)) lt!1655242)))

(declare-fun bm!310830 () Bool)

(declare-fun $colon$colon!838 (List!50385 tuple2!50500) List!50385)

(assert (=> bm!310830 (= call!310836 ($colon$colon!838 e!2780536 (ite c!759944 (h!56016 (toList!4039 lm!1477)) (tuple2!50501 (_1!28544 lt!1654653) (_2!28544 lt!1654653)))))))

(declare-fun c!759946 () Bool)

(assert (=> bm!310830 (= c!759946 c!759944)))

(declare-fun b!4465320 () Bool)

(assert (=> b!4465320 (= e!2780533 (contains!12795 lt!1655242 (tuple2!50501 (_1!28544 lt!1654653) (_2!28544 lt!1654653))))))

(declare-fun b!4465321 () Bool)

(assert (=> b!4465321 (= e!2780536 (insertStrictlySorted!322 (t!357335 (toList!4039 lm!1477)) (_1!28544 lt!1654653) (_2!28544 lt!1654653)))))

(declare-fun b!4465322 () Bool)

(assert (=> b!4465322 (= e!2780534 call!310834)))

(declare-fun b!4465323 () Bool)

(assert (=> b!4465323 (= c!759945 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (bvsgt (_1!28544 (h!56016 (toList!4039 lm!1477))) (_1!28544 lt!1654653))))))

(assert (=> b!4465323 (= e!2780535 e!2780534)))

(declare-fun bm!310831 () Bool)

(assert (=> bm!310831 (= call!310835 call!310836)))

(declare-fun b!4465324 () Bool)

(assert (=> b!4465324 (= e!2780535 call!310835)))

(assert (= (and d!1361556 c!759944) b!4465319))

(assert (= (and d!1361556 (not c!759944)) b!4465317))

(assert (= (and b!4465317 c!759947) b!4465324))

(assert (= (and b!4465317 (not c!759947)) b!4465323))

(assert (= (and b!4465323 c!759945) b!4465322))

(assert (= (and b!4465323 (not c!759945)) b!4465318))

(assert (= (or b!4465322 b!4465318) bm!310829))

(assert (= (or b!4465324 bm!310829) bm!310831))

(assert (= (or b!4465319 bm!310831) bm!310830))

(assert (= (and bm!310830 c!759946) b!4465321))

(assert (= (and bm!310830 (not c!759946)) b!4465315))

(assert (= (and d!1361556 res!1852290) b!4465316))

(assert (= (and b!4465316 res!1852289) b!4465320))

(declare-fun m!5169657 () Bool)

(assert (=> b!4465316 m!5169657))

(declare-fun m!5169659 () Bool)

(assert (=> b!4465321 m!5169659))

(declare-fun m!5169661 () Bool)

(assert (=> d!1361556 m!5169661))

(assert (=> d!1361556 m!5168507))

(declare-fun m!5169663 () Bool)

(assert (=> bm!310830 m!5169663))

(declare-fun m!5169665 () Bool)

(assert (=> b!4465320 m!5169665))

(assert (=> d!1361320 d!1361556))

(declare-fun d!1361566 () Bool)

(declare-fun res!1852291 () Bool)

(declare-fun e!2780538 () Bool)

(assert (=> d!1361566 (=> res!1852291 e!2780538)))

(assert (=> d!1361566 (= res!1852291 ((_ is Nil!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361566 (= (forall!9966 (toList!4039 lm!1477) lambda!162429) e!2780538)))

(declare-fun b!4465325 () Bool)

(declare-fun e!2780539 () Bool)

(assert (=> b!4465325 (= e!2780538 e!2780539)))

(declare-fun res!1852292 () Bool)

(assert (=> b!4465325 (=> (not res!1852292) (not e!2780539))))

(assert (=> b!4465325 (= res!1852292 (dynLambda!20998 lambda!162429 (h!56016 (toList!4039 lm!1477))))))

(declare-fun b!4465326 () Bool)

(assert (=> b!4465326 (= e!2780539 (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162429))))

(assert (= (and d!1361566 (not res!1852291)) b!4465325))

(assert (= (and b!4465325 res!1852292) b!4465326))

(declare-fun b_lambda!147987 () Bool)

(assert (=> (not b_lambda!147987) (not b!4465325)))

(declare-fun m!5169667 () Bool)

(assert (=> b!4465325 m!5169667))

(declare-fun m!5169669 () Bool)

(assert (=> b!4465326 m!5169669))

(assert (=> d!1361308 d!1361566))

(declare-fun d!1361568 () Bool)

(declare-fun choose!28492 (Hashable!5411 K!11680) (_ BitVec 64))

(assert (=> d!1361568 (= (hash!2418 hashF!1107 key!3287) (choose!28492 hashF!1107 key!3287))))

(declare-fun bs!792787 () Bool)

(assert (= bs!792787 d!1361568))

(declare-fun m!5169671 () Bool)

(assert (=> bs!792787 m!5169671))

(assert (=> d!1361214 d!1361568))

(declare-fun d!1361570 () Bool)

(declare-fun res!1852293 () Bool)

(declare-fun e!2780540 () Bool)

(assert (=> d!1361570 (=> res!1852293 e!2780540)))

(assert (=> d!1361570 (= res!1852293 (not ((_ is Cons!50260) (t!357334 newBucket!178))))))

(assert (=> d!1361570 (= (noDuplicateKeys!1016 (t!357334 newBucket!178)) e!2780540)))

(declare-fun b!4465327 () Bool)

(declare-fun e!2780541 () Bool)

(assert (=> b!4465327 (= e!2780540 e!2780541)))

(declare-fun res!1852294 () Bool)

(assert (=> b!4465327 (=> (not res!1852294) (not e!2780541))))

(assert (=> b!4465327 (= res!1852294 (not (containsKey!1444 (t!357334 (t!357334 newBucket!178)) (_1!28543 (h!56015 (t!357334 newBucket!178))))))))

(declare-fun b!4465328 () Bool)

(assert (=> b!4465328 (= e!2780541 (noDuplicateKeys!1016 (t!357334 (t!357334 newBucket!178))))))

(assert (= (and d!1361570 (not res!1852293)) b!4465327))

(assert (= (and b!4465327 res!1852294) b!4465328))

(declare-fun m!5169673 () Bool)

(assert (=> b!4465327 m!5169673))

(declare-fun m!5169675 () Bool)

(assert (=> b!4465328 m!5169675))

(assert (=> b!4464737 d!1361570))

(declare-fun d!1361572 () Bool)

(declare-fun res!1852295 () Bool)

(declare-fun e!2780542 () Bool)

(assert (=> d!1361572 (=> res!1852295 e!2780542)))

(assert (=> d!1361572 (= res!1852295 (and ((_ is Cons!50260) lt!1654731) (= (_1!28543 (h!56015 lt!1654731)) key!3287)))))

(assert (=> d!1361572 (= (containsKey!1444 lt!1654731 key!3287) e!2780542)))

(declare-fun b!4465329 () Bool)

(declare-fun e!2780543 () Bool)

(assert (=> b!4465329 (= e!2780542 e!2780543)))

(declare-fun res!1852296 () Bool)

(assert (=> b!4465329 (=> (not res!1852296) (not e!2780543))))

(assert (=> b!4465329 (= res!1852296 ((_ is Cons!50260) lt!1654731))))

(declare-fun b!4465330 () Bool)

(assert (=> b!4465330 (= e!2780543 (containsKey!1444 (t!357334 lt!1654731) key!3287))))

(assert (= (and d!1361572 (not res!1852295)) b!4465329))

(assert (= (and b!4465329 res!1852296) b!4465330))

(declare-fun m!5169677 () Bool)

(assert (=> b!4465330 m!5169677))

(assert (=> d!1361242 d!1361572))

(declare-fun d!1361574 () Bool)

(declare-fun res!1852297 () Bool)

(declare-fun e!2780544 () Bool)

(assert (=> d!1361574 (=> res!1852297 e!2780544)))

(assert (=> d!1361574 (= res!1852297 (not ((_ is Cons!50260) lt!1654647)))))

(assert (=> d!1361574 (= (noDuplicateKeys!1016 lt!1654647) e!2780544)))

(declare-fun b!4465331 () Bool)

(declare-fun e!2780545 () Bool)

(assert (=> b!4465331 (= e!2780544 e!2780545)))

(declare-fun res!1852298 () Bool)

(assert (=> b!4465331 (=> (not res!1852298) (not e!2780545))))

(assert (=> b!4465331 (= res!1852298 (not (containsKey!1444 (t!357334 lt!1654647) (_1!28543 (h!56015 lt!1654647)))))))

(declare-fun b!4465332 () Bool)

(assert (=> b!4465332 (= e!2780545 (noDuplicateKeys!1016 (t!357334 lt!1654647)))))

(assert (= (and d!1361574 (not res!1852297)) b!4465331))

(assert (= (and b!4465331 res!1852298) b!4465332))

(declare-fun m!5169679 () Bool)

(assert (=> b!4465331 m!5169679))

(assert (=> b!4465332 m!5169393))

(assert (=> d!1361242 d!1361574))

(declare-fun d!1361576 () Bool)

(assert (=> d!1361576 (= (get!16373 (getValueByKey!896 (toList!4039 lm!1477) hash!344)) (v!44195 (getValueByKey!896 (toList!4039 lm!1477) hash!344)))))

(assert (=> d!1361266 d!1361576))

(assert (=> d!1361266 d!1361546))

(declare-fun lt!1655243 () Bool)

(declare-fun d!1361578 () Bool)

(assert (=> d!1361578 (= lt!1655243 (select (content!8078 (toList!4039 lm!1477)) (tuple2!50501 hash!344 lt!1654647)))))

(declare-fun e!2780547 () Bool)

(assert (=> d!1361578 (= lt!1655243 e!2780547)))

(declare-fun res!1852300 () Bool)

(assert (=> d!1361578 (=> (not res!1852300) (not e!2780547))))

(assert (=> d!1361578 (= res!1852300 ((_ is Cons!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361578 (= (contains!12795 (toList!4039 lm!1477) (tuple2!50501 hash!344 lt!1654647)) lt!1655243)))

(declare-fun b!4465333 () Bool)

(declare-fun e!2780546 () Bool)

(assert (=> b!4465333 (= e!2780547 e!2780546)))

(declare-fun res!1852299 () Bool)

(assert (=> b!4465333 (=> res!1852299 e!2780546)))

(assert (=> b!4465333 (= res!1852299 (= (h!56016 (toList!4039 lm!1477)) (tuple2!50501 hash!344 lt!1654647)))))

(declare-fun b!4465334 () Bool)

(assert (=> b!4465334 (= e!2780546 (contains!12795 (t!357335 (toList!4039 lm!1477)) (tuple2!50501 hash!344 lt!1654647)))))

(assert (= (and d!1361578 res!1852300) b!4465333))

(assert (= (and b!4465333 (not res!1852299)) b!4465334))

(assert (=> d!1361578 m!5168585))

(declare-fun m!5169681 () Bool)

(assert (=> d!1361578 m!5169681))

(declare-fun m!5169683 () Bool)

(assert (=> b!4465334 m!5169683))

(assert (=> d!1361222 d!1361578))

(declare-fun d!1361580 () Bool)

(assert (=> d!1361580 (contains!12795 (toList!4039 lm!1477) (tuple2!50501 hash!344 lt!1654647))))

(assert (=> d!1361580 true))

(declare-fun _$14!966 () Unit!87113)

(assert (=> d!1361580 (= (choose!28479 (toList!4039 lm!1477) hash!344 lt!1654647) _$14!966)))

(declare-fun bs!792788 () Bool)

(assert (= bs!792788 d!1361580))

(assert (=> bs!792788 m!5168497))

(assert (=> d!1361222 d!1361580))

(assert (=> d!1361222 d!1361534))

(declare-fun d!1361582 () Bool)

(assert (=> d!1361582 (= (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 lt!1654655)) key!3287)) (not (isEmpty!28467 (getValueByKey!897 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))))

(declare-fun bs!792789 () Bool)

(assert (= bs!792789 d!1361582))

(assert (=> bs!792789 m!5168791))

(declare-fun m!5169685 () Bool)

(assert (=> bs!792789 m!5169685))

(assert (=> b!4464760 d!1361582))

(declare-fun b!4465337 () Bool)

(declare-fun e!2780549 () Option!10911)

(assert (=> b!4465337 (= e!2780549 (getValueByKey!897 (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) key!3287))))

(declare-fun b!4465338 () Bool)

(assert (=> b!4465338 (= e!2780549 None!10910)))

(declare-fun b!4465336 () Bool)

(declare-fun e!2780548 () Option!10911)

(assert (=> b!4465336 (= e!2780548 e!2780549)))

(declare-fun c!759949 () Bool)

(assert (=> b!4465336 (= c!759949 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 lt!1654655))) (not (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655)))) key!3287))))))

(declare-fun d!1361584 () Bool)

(declare-fun c!759948 () Bool)

(assert (=> d!1361584 (= c!759948 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 lt!1654655))) (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655)))) key!3287)))))

(assert (=> d!1361584 (= (getValueByKey!897 (toList!4040 (extractMap!1072 lt!1654655)) key!3287) e!2780548)))

(declare-fun b!4465335 () Bool)

(assert (=> b!4465335 (= e!2780548 (Some!10910 (_2!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))))))))

(assert (= (and d!1361584 c!759948) b!4465335))

(assert (= (and d!1361584 (not c!759948)) b!4465336))

(assert (= (and b!4465336 c!759949) b!4465337))

(assert (= (and b!4465336 (not c!759949)) b!4465338))

(declare-fun m!5169687 () Bool)

(assert (=> b!4465337 m!5169687))

(assert (=> b!4464760 d!1361584))

(declare-fun d!1361588 () Bool)

(declare-fun res!1852303 () Bool)

(declare-fun e!2780551 () Bool)

(assert (=> d!1361588 (=> res!1852303 e!2780551)))

(declare-fun e!2780552 () Bool)

(assert (=> d!1361588 (= res!1852303 e!2780552)))

(declare-fun res!1852302 () Bool)

(assert (=> d!1361588 (=> (not res!1852302) (not e!2780552))))

(assert (=> d!1361588 (= res!1852302 ((_ is Cons!50261) (t!357335 lt!1654655)))))

(assert (=> d!1361588 (= (containsKeyBiggerList!16 (t!357335 lt!1654655) key!3287) e!2780551)))

(declare-fun b!4465339 () Bool)

(assert (=> b!4465339 (= e!2780552 (containsKey!1444 (_2!28544 (h!56016 (t!357335 lt!1654655))) key!3287))))

(declare-fun b!4465340 () Bool)

(declare-fun e!2780550 () Bool)

(assert (=> b!4465340 (= e!2780551 e!2780550)))

(declare-fun res!1852301 () Bool)

(assert (=> b!4465340 (=> (not res!1852301) (not e!2780550))))

(assert (=> b!4465340 (= res!1852301 ((_ is Cons!50261) (t!357335 lt!1654655)))))

(declare-fun b!4465341 () Bool)

(assert (=> b!4465341 (= e!2780550 (containsKeyBiggerList!16 (t!357335 (t!357335 lt!1654655)) key!3287))))

(assert (= (and d!1361588 res!1852302) b!4465339))

(assert (= (and d!1361588 (not res!1852303)) b!4465340))

(assert (= (and b!4465340 res!1852301) b!4465341))

(declare-fun m!5169689 () Bool)

(assert (=> b!4465339 m!5169689))

(declare-fun m!5169691 () Bool)

(assert (=> b!4465341 m!5169691))

(assert (=> b!4464731 d!1361588))

(assert (=> b!4464758 d!1361422))

(declare-fun d!1361590 () Bool)

(declare-fun res!1852306 () Bool)

(declare-fun e!2780555 () Bool)

(assert (=> d!1361590 (=> res!1852306 e!2780555)))

(assert (=> d!1361590 (= res!1852306 (and ((_ is Cons!50260) (_2!28544 (h!56016 lt!1654655))) (= (_1!28543 (h!56015 (_2!28544 (h!56016 lt!1654655)))) key!3287)))))

(assert (=> d!1361590 (= (containsKey!1444 (_2!28544 (h!56016 lt!1654655)) key!3287) e!2780555)))

(declare-fun b!4465344 () Bool)

(declare-fun e!2780556 () Bool)

(assert (=> b!4465344 (= e!2780555 e!2780556)))

(declare-fun res!1852307 () Bool)

(assert (=> b!4465344 (=> (not res!1852307) (not e!2780556))))

(assert (=> b!4465344 (= res!1852307 ((_ is Cons!50260) (_2!28544 (h!56016 lt!1654655))))))

(declare-fun b!4465345 () Bool)

(assert (=> b!4465345 (= e!2780556 (containsKey!1444 (t!357334 (_2!28544 (h!56016 lt!1654655))) key!3287))))

(assert (= (and d!1361590 (not res!1852306)) b!4465344))

(assert (= (and b!4465344 res!1852307) b!4465345))

(declare-fun m!5169697 () Bool)

(assert (=> b!4465345 m!5169697))

(assert (=> b!4464729 d!1361590))

(declare-fun d!1361594 () Bool)

(assert (=> d!1361594 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(declare-fun lt!1655245 () Unit!87113)

(assert (=> d!1361594 (= lt!1655245 (choose!28489 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(assert (=> d!1361594 (invariantList!919 (toList!4040 (extractMap!1072 lt!1654655)))))

(assert (=> d!1361594 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 (extractMap!1072 lt!1654655)) key!3287) lt!1655245)))

(declare-fun bs!792791 () Bool)

(assert (= bs!792791 d!1361594))

(assert (=> bs!792791 m!5168791))

(assert (=> bs!792791 m!5168791))

(assert (=> bs!792791 m!5168793))

(declare-fun m!5169705 () Bool)

(assert (=> bs!792791 m!5169705))

(declare-fun m!5169707 () Bool)

(assert (=> bs!792791 m!5169707))

(assert (=> b!4464762 d!1361594))

(assert (=> b!4464762 d!1361582))

(assert (=> b!4464762 d!1361584))

(declare-fun d!1361598 () Bool)

(assert (=> d!1361598 (contains!12799 (getKeysList!367 (toList!4040 (extractMap!1072 lt!1654655))) key!3287)))

(declare-fun lt!1655246 () Unit!87113)

(assert (=> d!1361598 (= lt!1655246 (choose!28490 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(assert (=> d!1361598 (invariantList!919 (toList!4040 (extractMap!1072 lt!1654655)))))

(assert (=> d!1361598 (= (lemmaInListThenGetKeysListContains!363 (toList!4040 (extractMap!1072 lt!1654655)) key!3287) lt!1655246)))

(declare-fun bs!792792 () Bool)

(assert (= bs!792792 d!1361598))

(assert (=> bs!792792 m!5168785))

(assert (=> bs!792792 m!5168785))

(declare-fun m!5169709 () Bool)

(assert (=> bs!792792 m!5169709))

(declare-fun m!5169711 () Bool)

(assert (=> bs!792792 m!5169711))

(assert (=> bs!792792 m!5169707))

(assert (=> b!4464762 d!1361598))

(declare-fun d!1361600 () Bool)

(declare-fun lt!1655268 () Bool)

(assert (=> d!1361600 (= lt!1655268 (select (content!8078 (toList!4039 lt!1654823)) lt!1654653))))

(declare-fun e!2780563 () Bool)

(assert (=> d!1361600 (= lt!1655268 e!2780563)))

(declare-fun res!1852314 () Bool)

(assert (=> d!1361600 (=> (not res!1852314) (not e!2780563))))

(assert (=> d!1361600 (= res!1852314 ((_ is Cons!50261) (toList!4039 lt!1654823)))))

(assert (=> d!1361600 (= (contains!12795 (toList!4039 lt!1654823) lt!1654653) lt!1655268)))

(declare-fun b!4465353 () Bool)

(declare-fun e!2780562 () Bool)

(assert (=> b!4465353 (= e!2780563 e!2780562)))

(declare-fun res!1852313 () Bool)

(assert (=> b!4465353 (=> res!1852313 e!2780562)))

(assert (=> b!4465353 (= res!1852313 (= (h!56016 (toList!4039 lt!1654823)) lt!1654653))))

(declare-fun b!4465354 () Bool)

(assert (=> b!4465354 (= e!2780562 (contains!12795 (t!357335 (toList!4039 lt!1654823)) lt!1654653))))

(assert (= (and d!1361600 res!1852314) b!4465353))

(assert (= (and b!4465353 (not res!1852313)) b!4465354))

(declare-fun m!5169713 () Bool)

(assert (=> d!1361600 m!5169713))

(declare-fun m!5169715 () Bool)

(assert (=> d!1361600 m!5169715))

(declare-fun m!5169717 () Bool)

(assert (=> b!4465354 m!5169717))

(assert (=> b!4464754 d!1361600))

(declare-fun d!1361602 () Bool)

(declare-fun c!759953 () Bool)

(assert (=> d!1361602 (= c!759953 ((_ is Nil!50260) (toList!4040 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)))))))

(declare-fun e!2780566 () (InoxSet tuple2!50498))

(assert (=> d!1361602 (= (content!8080 (toList!4040 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)))) e!2780566)))

(declare-fun b!4465359 () Bool)

(assert (=> b!4465359 (= e!2780566 ((as const (Array tuple2!50498 Bool)) false))))

(declare-fun b!4465360 () Bool)

(assert (=> b!4465360 (= e!2780566 ((_ map or) (store ((as const (Array tuple2!50498 Bool)) false) (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)))) true) (content!8080 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 lt!1654653 Nil!50261)))))))))

(assert (= (and d!1361602 c!759953) b!4465359))

(assert (= (and d!1361602 (not c!759953)) b!4465360))

(declare-fun m!5169719 () Bool)

(assert (=> b!4465360 m!5169719))

(declare-fun m!5169721 () Bool)

(assert (=> b!4465360 m!5169721))

(assert (=> d!1361328 d!1361602))

(declare-fun c!759954 () Bool)

(declare-fun d!1361604 () Bool)

(assert (=> d!1361604 (= c!759954 ((_ is Nil!50260) (toList!4040 (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))))))

(declare-fun e!2780567 () (InoxSet tuple2!50498))

(assert (=> d!1361604 (= (content!8080 (toList!4040 (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))) e!2780567)))

(declare-fun b!4465361 () Bool)

(assert (=> b!4465361 (= e!2780567 ((as const (Array tuple2!50498 Bool)) false))))

(declare-fun b!4465362 () Bool)

(assert (=> b!4465362 (= e!2780567 ((_ map or) (store ((as const (Array tuple2!50498 Bool)) false) (h!56015 (toList!4040 (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))) true) (content!8080 (t!357334 (toList!4040 (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))))))))

(assert (= (and d!1361604 c!759954) b!4465361))

(assert (= (and d!1361604 (not c!759954)) b!4465362))

(declare-fun m!5169723 () Bool)

(assert (=> b!4465362 m!5169723))

(declare-fun m!5169725 () Bool)

(assert (=> b!4465362 m!5169725))

(assert (=> d!1361328 d!1361604))

(declare-fun d!1361606 () Bool)

(declare-fun res!1852319 () Bool)

(declare-fun e!2780572 () Bool)

(assert (=> d!1361606 (=> res!1852319 e!2780572)))

(assert (=> d!1361606 (= res!1852319 ((_ is Nil!50260) newBucket!178))))

(assert (=> d!1361606 (= (forall!9968 newBucket!178 lambda!162423) e!2780572)))

(declare-fun b!4465367 () Bool)

(declare-fun e!2780573 () Bool)

(assert (=> b!4465367 (= e!2780572 e!2780573)))

(declare-fun res!1852320 () Bool)

(assert (=> b!4465367 (=> (not res!1852320) (not e!2780573))))

(declare-fun dynLambda!21000 (Int tuple2!50498) Bool)

(assert (=> b!4465367 (= res!1852320 (dynLambda!21000 lambda!162423 (h!56015 newBucket!178)))))

(declare-fun b!4465368 () Bool)

(assert (=> b!4465368 (= e!2780573 (forall!9968 (t!357334 newBucket!178) lambda!162423))))

(assert (= (and d!1361606 (not res!1852319)) b!4465367))

(assert (= (and b!4465367 res!1852320) b!4465368))

(declare-fun b_lambda!147991 () Bool)

(assert (=> (not b_lambda!147991) (not b!4465367)))

(declare-fun m!5169727 () Bool)

(assert (=> b!4465367 m!5169727))

(declare-fun m!5169729 () Bool)

(assert (=> b!4465368 m!5169729))

(assert (=> d!1361296 d!1361606))

(declare-fun bs!792818 () Bool)

(declare-fun b!4465369 () Bool)

(assert (= bs!792818 (and b!4465369 b!4465183)))

(declare-fun lambda!162580 () Int)

(assert (=> bs!792818 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162580 lambda!162565))))

(declare-fun bs!792819 () Bool)

(assert (= bs!792819 (and b!4465369 b!4465232)))

(assert (=> bs!792819 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162580 lambda!162571))))

(declare-fun bs!792821 () Bool)

(assert (= bs!792821 (and b!4465369 b!4465237)))

(assert (=> bs!792821 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (toList!4040 lt!1654807)) (= lambda!162580 lambda!162573))))

(declare-fun bs!792823 () Bool)

(assert (= bs!792823 (and b!4465369 b!4464979)))

(assert (=> bs!792823 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162580 lambda!162466))))

(declare-fun bs!792825 () Bool)

(assert (= bs!792825 (and b!4465369 b!4465186)))

(assert (=> bs!792825 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162580 lambda!162566))))

(declare-fun bs!792827 () Bool)

(assert (= bs!792827 (and b!4465369 b!4465191)))

(assert (=> bs!792827 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162580 lambda!162567))))

(declare-fun bs!792829 () Bool)

(assert (= bs!792829 (and b!4465369 b!4465223)))

(assert (=> bs!792829 (= (= (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162580 lambda!162569))))

(assert (=> b!4465369 true))

(declare-fun bs!792833 () Bool)

(declare-fun b!4465372 () Bool)

(assert (= bs!792833 (and b!4465372 b!4465183)))

(declare-fun lambda!162581 () Int)

(assert (=> bs!792833 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162581 lambda!162565))))

(declare-fun bs!792834 () Bool)

(assert (= bs!792834 (and b!4465372 b!4465369)))

(assert (=> bs!792834 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (= lambda!162581 lambda!162580))))

(declare-fun bs!792835 () Bool)

(assert (= bs!792835 (and b!4465372 b!4465232)))

(assert (=> bs!792835 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162581 lambda!162571))))

(declare-fun bs!792836 () Bool)

(assert (= bs!792836 (and b!4465372 b!4465237)))

(assert (=> bs!792836 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (toList!4040 lt!1654807)) (= lambda!162581 lambda!162573))))

(declare-fun bs!792837 () Bool)

(assert (= bs!792837 (and b!4465372 b!4464979)))

(assert (=> bs!792837 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (toList!4040 (extractMap!1072 lt!1654655))) (= lambda!162581 lambda!162466))))

(declare-fun bs!792838 () Bool)

(assert (= bs!792838 (and b!4465372 b!4465186)))

(assert (=> bs!792838 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162581 lambda!162566))))

(declare-fun bs!792839 () Bool)

(assert (= bs!792839 (and b!4465372 b!4465191)))

(assert (=> bs!792839 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162581 lambda!162567))))

(declare-fun bs!792840 () Bool)

(assert (= bs!792840 (and b!4465372 b!4465223)))

(assert (=> bs!792840 (= (= (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162581 lambda!162569))))

(assert (=> b!4465372 true))

(declare-fun bs!792841 () Bool)

(declare-fun b!4465377 () Bool)

(assert (= bs!792841 (and b!4465377 b!4465183)))

(declare-fun lambda!162582 () Int)

(assert (=> bs!792841 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) (= lambda!162582 lambda!162565))))

(declare-fun bs!792842 () Bool)

(assert (= bs!792842 (and b!4465377 b!4465369)))

(assert (=> bs!792842 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (= lambda!162582 lambda!162580))))

(declare-fun bs!792843 () Bool)

(assert (= bs!792843 (and b!4465377 b!4465232)))

(assert (=> bs!792843 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162582 lambda!162571))))

(declare-fun bs!792844 () Bool)

(assert (= bs!792844 (and b!4465377 b!4465237)))

(assert (=> bs!792844 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (toList!4040 lt!1654807)) (= lambda!162582 lambda!162573))))

(declare-fun bs!792845 () Bool)

(assert (= bs!792845 (and b!4465377 b!4465372)))

(assert (=> bs!792845 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))) (t!357334 (toList!4040 (extractMap!1072 lt!1654655))))) (= lambda!162582 lambda!162581))))

(declare-fun bs!792846 () Bool)

(assert (= bs!792846 (and b!4465377 b!4464979)))

(assert (=> bs!792846 (= lambda!162582 lambda!162466)))

(declare-fun bs!792847 () Bool)

(assert (= bs!792847 (and b!4465377 b!4465186)))

(assert (=> bs!792847 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (Cons!50260 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))) (= lambda!162582 lambda!162566))))

(declare-fun bs!792848 () Bool)

(assert (= bs!792848 (and b!4465377 b!4465191)))

(assert (=> bs!792848 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162582 lambda!162567))))

(declare-fun bs!792849 () Bool)

(assert (= bs!792849 (and b!4465377 b!4465223)))

(assert (=> bs!792849 (= (= (toList!4040 (extractMap!1072 lt!1654655)) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= lambda!162582 lambda!162569))))

(assert (=> b!4465377 true))

(declare-fun bs!792850 () Bool)

(declare-fun b!4465375 () Bool)

(assert (= bs!792850 (and b!4465375 b!4465238)))

(declare-fun lambda!162583 () Int)

(assert (=> bs!792850 (= lambda!162583 lambda!162574)))

(declare-fun bs!792851 () Bool)

(assert (= bs!792851 (and b!4465375 b!4465189)))

(assert (=> bs!792851 (= lambda!162583 lambda!162568)))

(declare-fun bs!792852 () Bool)

(assert (= bs!792852 (and b!4465375 b!4465224)))

(assert (=> bs!792852 (= lambda!162583 lambda!162570)))

(declare-fun bs!792853 () Bool)

(assert (= bs!792853 (and b!4465375 b!4465233)))

(assert (=> bs!792853 (= lambda!162583 lambda!162572)))

(declare-fun bs!792854 () Bool)

(assert (= bs!792854 (and b!4465375 b!4464980)))

(assert (=> bs!792854 (= lambda!162583 lambda!162467)))

(assert (=> b!4465369 false))

(declare-fun lt!1655274 () Unit!87113)

(assert (=> b!4465369 (= lt!1655274 (forallContained!2241 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) lambda!162580 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))))))))

(declare-fun e!2780576 () Unit!87113)

(declare-fun Unit!87215 () Unit!87113)

(assert (=> b!4465369 (= e!2780576 Unit!87215)))

(declare-fun b!4465370 () Bool)

(declare-fun Unit!87216 () Unit!87113)

(assert (=> b!4465370 (= e!2780576 Unit!87216)))

(declare-fun d!1361608 () Bool)

(declare-fun e!2780575 () Bool)

(assert (=> d!1361608 e!2780575))

(declare-fun res!1852322 () Bool)

(assert (=> d!1361608 (=> (not res!1852322) (not e!2780575))))

(declare-fun lt!1655272 () List!50387)

(assert (=> d!1361608 (= res!1852322 (noDuplicate!692 lt!1655272))))

(declare-fun e!2780577 () List!50387)

(assert (=> d!1361608 (= lt!1655272 e!2780577)))

(declare-fun c!759957 () Bool)

(assert (=> d!1361608 (= c!759957 ((_ is Cons!50260) (toList!4040 (extractMap!1072 lt!1654655))))))

(assert (=> d!1361608 (invariantList!919 (toList!4040 (extractMap!1072 lt!1654655)))))

(assert (=> d!1361608 (= (getKeysList!367 (toList!4040 (extractMap!1072 lt!1654655))) lt!1655272)))

(declare-fun b!4465371 () Bool)

(declare-fun e!2780574 () Unit!87113)

(declare-fun Unit!87219 () Unit!87113)

(assert (=> b!4465371 (= e!2780574 Unit!87219)))

(assert (=> b!4465372 (= e!2780577 (Cons!50263 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655)))) (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 lt!1654655))))))))

(declare-fun c!759956 () Bool)

(assert (=> b!4465372 (= c!759956 (containsKey!1448 (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))))))))

(declare-fun lt!1655273 () Unit!87113)

(assert (=> b!4465372 (= lt!1655273 e!2780574)))

(declare-fun c!759955 () Bool)

(assert (=> b!4465372 (= c!759955 (contains!12799 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 lt!1654655))))))))

(declare-fun lt!1655270 () Unit!87113)

(assert (=> b!4465372 (= lt!1655270 e!2780576)))

(declare-fun lt!1655271 () List!50387)

(assert (=> b!4465372 (= lt!1655271 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 lt!1654655)))))))

(declare-fun lt!1655269 () Unit!87113)

(assert (=> b!4465372 (= lt!1655269 (lemmaForallContainsAddHeadPreserves!114 (t!357334 (toList!4040 (extractMap!1072 lt!1654655))) lt!1655271 (h!56015 (toList!4040 (extractMap!1072 lt!1654655)))))))

(assert (=> b!4465372 (forall!9970 lt!1655271 lambda!162581)))

(declare-fun lt!1655275 () Unit!87113)

(assert (=> b!4465372 (= lt!1655275 lt!1655269)))

(declare-fun b!4465373 () Bool)

(assert (=> b!4465373 (= e!2780577 Nil!50263)))

(declare-fun b!4465374 () Bool)

(assert (=> b!4465374 false))

(declare-fun Unit!87221 () Unit!87113)

(assert (=> b!4465374 (= e!2780574 Unit!87221)))

(assert (=> b!4465375 (= e!2780575 (= (content!8079 lt!1655272) (content!8079 (map!11011 (toList!4040 (extractMap!1072 lt!1654655)) lambda!162583))))))

(declare-fun b!4465376 () Bool)

(declare-fun res!1852321 () Bool)

(assert (=> b!4465376 (=> (not res!1852321) (not e!2780575))))

(assert (=> b!4465376 (= res!1852321 (= (length!240 lt!1655272) (length!241 (toList!4040 (extractMap!1072 lt!1654655)))))))

(declare-fun res!1852323 () Bool)

(assert (=> b!4465377 (=> (not res!1852323) (not e!2780575))))

(assert (=> b!4465377 (= res!1852323 (forall!9970 lt!1655272 lambda!162582))))

(assert (= (and d!1361608 c!759957) b!4465372))

(assert (= (and d!1361608 (not c!759957)) b!4465373))

(assert (= (and b!4465372 c!759956) b!4465374))

(assert (= (and b!4465372 (not c!759956)) b!4465371))

(assert (= (and b!4465372 c!759955) b!4465369))

(assert (= (and b!4465372 (not c!759955)) b!4465370))

(assert (= (and d!1361608 res!1852322) b!4465376))

(assert (= (and b!4465376 res!1852321) b!4465377))

(assert (= (and b!4465377 res!1852323) b!4465375))

(declare-fun m!5169765 () Bool)

(assert (=> d!1361608 m!5169765))

(assert (=> d!1361608 m!5169707))

(declare-fun m!5169767 () Bool)

(assert (=> b!4465377 m!5169767))

(declare-fun m!5169769 () Bool)

(assert (=> b!4465376 m!5169769))

(assert (=> b!4465376 m!5169047))

(declare-fun m!5169771 () Bool)

(assert (=> b!4465369 m!5169771))

(assert (=> b!4465369 m!5169771))

(declare-fun m!5169773 () Bool)

(assert (=> b!4465369 m!5169773))

(assert (=> b!4465372 m!5169771))

(declare-fun m!5169775 () Bool)

(assert (=> b!4465372 m!5169775))

(declare-fun m!5169777 () Bool)

(assert (=> b!4465372 m!5169777))

(assert (=> b!4465372 m!5169771))

(declare-fun m!5169779 () Bool)

(assert (=> b!4465372 m!5169779))

(declare-fun m!5169781 () Bool)

(assert (=> b!4465372 m!5169781))

(declare-fun m!5169783 () Bool)

(assert (=> b!4465375 m!5169783))

(declare-fun m!5169785 () Bool)

(assert (=> b!4465375 m!5169785))

(assert (=> b!4465375 m!5169785))

(declare-fun m!5169787 () Bool)

(assert (=> b!4465375 m!5169787))

(assert (=> b!4464755 d!1361608))

(declare-fun b!4465380 () Bool)

(declare-fun e!2780579 () List!50387)

(assert (=> b!4465380 (= e!2780579 (getKeysList!367 (toList!4040 lt!1654807)))))

(declare-fun b!4465381 () Bool)

(declare-fun e!2780584 () Bool)

(assert (=> b!4465381 (= e!2780584 (contains!12799 (keys!17346 lt!1654807) key!3287))))

(declare-fun bm!310835 () Bool)

(declare-fun call!310840 () Bool)

(assert (=> bm!310835 (= call!310840 (contains!12799 e!2780579 key!3287))))

(declare-fun c!759961 () Bool)

(declare-fun c!759959 () Bool)

(assert (=> bm!310835 (= c!759961 c!759959)))

(declare-fun b!4465382 () Bool)

(declare-fun e!2780582 () Unit!87113)

(declare-fun e!2780583 () Unit!87113)

(assert (=> b!4465382 (= e!2780582 e!2780583)))

(declare-fun c!759960 () Bool)

(assert (=> b!4465382 (= c!759960 call!310840)))

(declare-fun d!1361612 () Bool)

(declare-fun e!2780580 () Bool)

(assert (=> d!1361612 e!2780580))

(declare-fun res!1852326 () Bool)

(assert (=> d!1361612 (=> res!1852326 e!2780580)))

(declare-fun e!2780581 () Bool)

(assert (=> d!1361612 (= res!1852326 e!2780581)))

(declare-fun res!1852324 () Bool)

(assert (=> d!1361612 (=> (not res!1852324) (not e!2780581))))

(declare-fun lt!1655278 () Bool)

(assert (=> d!1361612 (= res!1852324 (not lt!1655278))))

(declare-fun lt!1655283 () Bool)

(assert (=> d!1361612 (= lt!1655278 lt!1655283)))

(declare-fun lt!1655279 () Unit!87113)

(assert (=> d!1361612 (= lt!1655279 e!2780582)))

(assert (=> d!1361612 (= c!759959 lt!1655283)))

(assert (=> d!1361612 (= lt!1655283 (containsKey!1448 (toList!4040 lt!1654807) key!3287))))

(assert (=> d!1361612 (= (contains!12797 lt!1654807 key!3287) lt!1655278)))

(declare-fun b!4465383 () Bool)

(assert (=> b!4465383 (= e!2780579 (keys!17346 lt!1654807))))

(declare-fun b!4465384 () Bool)

(assert (=> b!4465384 (= e!2780581 (not (contains!12799 (keys!17346 lt!1654807) key!3287)))))

(declare-fun b!4465385 () Bool)

(assert (=> b!4465385 (= e!2780580 e!2780584)))

(declare-fun res!1852325 () Bool)

(assert (=> b!4465385 (=> (not res!1852325) (not e!2780584))))

(assert (=> b!4465385 (= res!1852325 (isDefined!8198 (getValueByKey!897 (toList!4040 lt!1654807) key!3287)))))

(declare-fun b!4465386 () Bool)

(declare-fun Unit!87222 () Unit!87113)

(assert (=> b!4465386 (= e!2780583 Unit!87222)))

(declare-fun b!4465387 () Bool)

(declare-fun lt!1655277 () Unit!87113)

(assert (=> b!4465387 (= e!2780582 lt!1655277)))

(declare-fun lt!1655281 () Unit!87113)

(assert (=> b!4465387 (= lt!1655281 (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 lt!1654807) key!3287))))

(assert (=> b!4465387 (isDefined!8198 (getValueByKey!897 (toList!4040 lt!1654807) key!3287))))

(declare-fun lt!1655284 () Unit!87113)

(assert (=> b!4465387 (= lt!1655284 lt!1655281)))

(assert (=> b!4465387 (= lt!1655277 (lemmaInListThenGetKeysListContains!363 (toList!4040 lt!1654807) key!3287))))

(assert (=> b!4465387 call!310840))

(declare-fun b!4465388 () Bool)

(assert (=> b!4465388 false))

(declare-fun lt!1655282 () Unit!87113)

(declare-fun lt!1655280 () Unit!87113)

(assert (=> b!4465388 (= lt!1655282 lt!1655280)))

(assert (=> b!4465388 (containsKey!1448 (toList!4040 lt!1654807) key!3287)))

(assert (=> b!4465388 (= lt!1655280 (lemmaInGetKeysListThenContainsKey!366 (toList!4040 lt!1654807) key!3287))))

(declare-fun Unit!87223 () Unit!87113)

(assert (=> b!4465388 (= e!2780583 Unit!87223)))

(assert (= (and d!1361612 c!759959) b!4465387))

(assert (= (and d!1361612 (not c!759959)) b!4465382))

(assert (= (and b!4465382 c!759960) b!4465388))

(assert (= (and b!4465382 (not c!759960)) b!4465386))

(assert (= (or b!4465387 b!4465382) bm!310835))

(assert (= (and bm!310835 c!759961) b!4465380))

(assert (= (and bm!310835 (not c!759961)) b!4465383))

(assert (= (and d!1361612 res!1852324) b!4465384))

(assert (= (and d!1361612 (not res!1852326)) b!4465385))

(assert (= (and b!4465385 res!1852325) b!4465381))

(assert (=> b!4465381 m!5168743))

(assert (=> b!4465381 m!5168743))

(declare-fun m!5169799 () Bool)

(assert (=> b!4465381 m!5169799))

(assert (=> b!4465383 m!5168743))

(assert (=> b!4465380 m!5169537))

(assert (=> b!4465384 m!5168743))

(assert (=> b!4465384 m!5168743))

(assert (=> b!4465384 m!5169799))

(declare-fun m!5169803 () Bool)

(assert (=> bm!310835 m!5169803))

(declare-fun m!5169807 () Bool)

(assert (=> b!4465387 m!5169807))

(declare-fun m!5169809 () Bool)

(assert (=> b!4465387 m!5169809))

(assert (=> b!4465387 m!5169809))

(declare-fun m!5169811 () Bool)

(assert (=> b!4465387 m!5169811))

(declare-fun m!5169813 () Bool)

(assert (=> b!4465387 m!5169813))

(declare-fun m!5169815 () Bool)

(assert (=> d!1361612 m!5169815))

(assert (=> b!4465388 m!5169815))

(declare-fun m!5169819 () Bool)

(assert (=> b!4465388 m!5169819))

(assert (=> b!4465385 m!5169809))

(assert (=> b!4465385 m!5169809))

(assert (=> b!4465385 m!5169811))

(assert (=> d!1361314 d!1361612))

(declare-fun c!759986 () Bool)

(declare-fun call!310857 () (InoxSet tuple2!50498))

(declare-fun bm!310848 () Bool)

(assert (=> bm!310848 (= call!310857 (content!8080 (ite c!759986 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(declare-fun b!4465443 () Bool)

(declare-fun e!2780621 () Unit!87113)

(declare-fun Unit!87224 () Unit!87113)

(assert (=> b!4465443 (= e!2780621 Unit!87224)))

(declare-fun lt!1655326 () List!50384)

(assert (=> b!4465443 (= lt!1655326 (removePresrvNoDuplicatedKeys!55 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) key!3287))))

(declare-fun lt!1655327 () Unit!87113)

(assert (=> b!4465443 (= lt!1655327 (lemmaInListThenGetKeysListContains!363 lt!1655326 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(assert (=> b!4465443 (contains!12799 (getKeysList!367 lt!1655326) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(declare-fun lt!1655332 () Unit!87113)

(assert (=> b!4465443 (= lt!1655332 lt!1655327)))

(assert (=> b!4465443 false))

(declare-fun b!4465444 () Bool)

(declare-fun e!2780626 () Unit!87113)

(declare-fun Unit!87226 () Unit!87113)

(assert (=> b!4465444 (= e!2780626 Unit!87226)))

(declare-fun b!4465445 () Bool)

(declare-fun Unit!87227 () Unit!87113)

(assert (=> b!4465445 (= e!2780626 Unit!87227)))

(declare-fun lt!1655331 () Unit!87113)

(assert (=> b!4465445 (= lt!1655331 (lemmaInGetKeysListThenContainsKey!366 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(declare-fun call!310854 () Bool)

(assert (=> b!4465445 call!310854))

(declare-fun lt!1655328 () Unit!87113)

(assert (=> b!4465445 (= lt!1655328 lt!1655331)))

(assert (=> b!4465445 false))

(declare-fun b!4465446 () Bool)

(declare-fun res!1852346 () Bool)

(declare-fun e!2780623 () Bool)

(assert (=> b!4465446 (=> (not res!1852346) (not e!2780623))))

(declare-fun lt!1655330 () List!50384)

(assert (=> b!4465446 (= res!1852346 (not (containsKey!1448 lt!1655330 key!3287)))))

(declare-fun b!4465447 () Bool)

(declare-fun res!1852345 () Bool)

(assert (=> b!4465447 (=> (not res!1852345) (not e!2780623))))

(assert (=> b!4465447 (= res!1852345 (= (content!8079 (getKeysList!367 lt!1655330)) ((_ map and) (content!8079 (getKeysList!367 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))) ((_ map not) (store ((as const (Array K!11680 Bool)) false) key!3287 true)))))))

(declare-fun b!4465448 () Bool)

(declare-fun e!2780624 () Unit!87113)

(declare-fun Unit!87228 () Unit!87113)

(assert (=> b!4465448 (= e!2780624 Unit!87228)))

(declare-fun b!4465449 () Bool)

(declare-fun e!2780625 () Bool)

(assert (=> b!4465449 (= e!2780623 e!2780625)))

(declare-fun c!759980 () Bool)

(assert (=> b!4465449 (= c!759980 (containsKey!1448 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287))))

(declare-fun lt!1655325 () K!11680)

(declare-fun call!310855 () Bool)

(declare-fun e!2780622 () List!50384)

(declare-fun c!759981 () Bool)

(declare-fun bm!310849 () Bool)

(assert (=> bm!310849 (= call!310855 (containsKey!1448 e!2780622 (ite c!759981 lt!1655325 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))))

(declare-fun c!759979 () Bool)

(assert (=> bm!310849 (= c!759979 c!759981)))

(declare-fun b!4465450 () Bool)

(assert (=> b!4465450 (= e!2780622 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(declare-fun b!4465451 () Bool)

(declare-fun call!310853 () (InoxSet tuple2!50498))

(declare-fun call!310856 () (InoxSet tuple2!50498))

(declare-fun get!16375 (Option!10911) V!11926)

(assert (=> b!4465451 (= e!2780625 (= call!310853 ((_ map and) call!310856 ((_ map not) (store ((as const (Array tuple2!50498 Bool)) false) (tuple2!50499 key!3287 (get!16375 (getValueByKey!897 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287))) true)))))))

(assert (=> b!4465451 (containsKey!1448 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287)))

(declare-fun lt!1655341 () Unit!87113)

(assert (=> b!4465451 (= lt!1655341 (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287))))

(assert (=> b!4465451 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287))))

(declare-fun lt!1655337 () Unit!87113)

(assert (=> b!4465451 (= lt!1655337 lt!1655341)))

(declare-fun b!4465452 () Bool)

(declare-fun call!310858 () (InoxSet tuple2!50498))

(assert (=> b!4465452 (= call!310858 ((_ map and) call!310857 ((_ map not) (store ((as const (Array tuple2!50498 Bool)) false) (tuple2!50499 key!3287 (get!16375 (getValueByKey!897 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287))) true))))))

(declare-fun lt!1655342 () Unit!87113)

(assert (=> b!4465452 (= lt!1655342 e!2780624)))

(declare-fun c!759985 () Bool)

(declare-fun contains!12801 (List!50384 tuple2!50498) Bool)

(assert (=> b!4465452 (= c!759985 (contains!12801 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (tuple2!50499 key!3287 (get!16375 (getValueByKey!897 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287)))))))

(declare-fun e!2780628 () Unit!87113)

(declare-fun Unit!87230 () Unit!87113)

(assert (=> b!4465452 (= e!2780628 Unit!87230)))

(declare-fun b!4465453 () Bool)

(declare-fun e!2780620 () List!50384)

(assert (=> b!4465453 (= e!2780620 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(assert (=> b!4465453 (= c!759986 call!310854)))

(declare-fun lt!1655334 () Unit!87113)

(assert (=> b!4465453 (= lt!1655334 e!2780628)))

(declare-fun b!4465454 () Bool)

(declare-fun Unit!87231 () Unit!87113)

(assert (=> b!4465454 (= e!2780621 Unit!87231)))

(declare-fun b!4465455 () Bool)

(assert (=> b!4465455 (= call!310857 call!310858)))

(declare-fun Unit!87232 () Unit!87113)

(assert (=> b!4465455 (= e!2780628 Unit!87232)))

(declare-fun bm!310851 () Bool)

(assert (=> bm!310851 (= call!310854 (containsKey!1448 (ite c!759981 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))) (ite c!759981 key!3287 (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))))

(declare-fun b!4465456 () Bool)

(declare-fun e!2780627 () List!50384)

(assert (=> b!4465456 (= e!2780620 e!2780627)))

(declare-fun c!759983 () Bool)

(assert (=> b!4465456 (= c!759983 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (not (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))) key!3287))))))

(declare-fun bm!310852 () Bool)

(assert (=> bm!310852 (= call!310856 (content!8080 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(declare-fun bm!310853 () Bool)

(assert (=> bm!310853 (= call!310858 (content!8080 (ite c!759986 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(declare-fun b!4465457 () Bool)

(declare-fun Unit!87233 () Unit!87113)

(assert (=> b!4465457 (= e!2780624 Unit!87233)))

(declare-fun lt!1655338 () V!11926)

(assert (=> b!4465457 (= lt!1655338 (get!16375 (getValueByKey!897 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287)))))

(assert (=> b!4465457 (= lt!1655325 key!3287)))

(declare-fun lt!1655340 () K!11680)

(assert (=> b!4465457 (= lt!1655340 key!3287)))

(declare-fun lt!1655335 () Unit!87113)

(declare-fun lemmaContainsTupleThenContainsKey!17 (List!50384 K!11680 V!11926) Unit!87113)

(assert (=> b!4465457 (= lt!1655335 (lemmaContainsTupleThenContainsKey!17 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) lt!1655325 (get!16375 (getValueByKey!897 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287))))))

(assert (=> b!4465457 call!310855))

(declare-fun lt!1655339 () Unit!87113)

(assert (=> b!4465457 (= lt!1655339 lt!1655335)))

(assert (=> b!4465457 false))

(declare-fun b!4465458 () Bool)

(assert (=> b!4465458 (= e!2780622 (removePresrvNoDuplicatedKeys!55 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) key!3287))))

(declare-fun b!4465459 () Bool)

(assert (=> b!4465459 (= e!2780625 (= call!310853 call!310856))))

(declare-fun b!4465460 () Bool)

(assert (=> b!4465460 (= e!2780627 Nil!50260)))

(declare-fun b!4465461 () Bool)

(declare-fun lt!1655336 () Unit!87113)

(assert (=> b!4465461 (= lt!1655336 e!2780621)))

(declare-fun c!759982 () Bool)

(assert (=> b!4465461 (= c!759982 call!310855)))

(declare-fun lt!1655333 () Unit!87113)

(assert (=> b!4465461 (= lt!1655333 e!2780626)))

(declare-fun c!759984 () Bool)

(assert (=> b!4465461 (= c!759984 (contains!12799 (getKeysList!367 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))) (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))))

(declare-fun lt!1655329 () List!50384)

(declare-fun $colon$colon!840 (List!50384 tuple2!50498) List!50384)

(assert (=> b!4465461 (= lt!1655329 ($colon$colon!840 (removePresrvNoDuplicatedKeys!55 (t!357334 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) key!3287) (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))))

(assert (=> b!4465461 (= e!2780627 lt!1655329)))

(declare-fun d!1361622 () Bool)

(assert (=> d!1361622 e!2780623))

(declare-fun res!1852344 () Bool)

(assert (=> d!1361622 (=> (not res!1852344) (not e!2780623))))

(assert (=> d!1361622 (= res!1852344 (invariantList!919 lt!1655330))))

(assert (=> d!1361622 (= lt!1655330 e!2780620)))

(assert (=> d!1361622 (= c!759981 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))) key!3287)))))

(assert (=> d!1361622 (invariantList!919 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))))))

(assert (=> d!1361622 (= (removePresrvNoDuplicatedKeys!55 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) key!3287) lt!1655330)))

(declare-fun bm!310850 () Bool)

(assert (=> bm!310850 (= call!310853 (content!8080 lt!1655330))))

(assert (= (and d!1361622 c!759981) b!4465453))

(assert (= (and d!1361622 (not c!759981)) b!4465456))

(assert (= (and b!4465453 c!759986) b!4465452))

(assert (= (and b!4465453 (not c!759986)) b!4465455))

(assert (= (and b!4465452 c!759985) b!4465457))

(assert (= (and b!4465452 (not c!759985)) b!4465448))

(assert (= (or b!4465452 b!4465455) bm!310848))

(assert (= (or b!4465452 b!4465455) bm!310853))

(assert (= (and b!4465456 c!759983) b!4465461))

(assert (= (and b!4465456 (not c!759983)) b!4465460))

(assert (= (and b!4465461 c!759984) b!4465445))

(assert (= (and b!4465461 (not c!759984)) b!4465444))

(assert (= (and b!4465461 c!759982) b!4465443))

(assert (= (and b!4465461 (not c!759982)) b!4465454))

(assert (= (or b!4465453 b!4465445) bm!310851))

(assert (= (or b!4465457 b!4465461) bm!310849))

(assert (= (and bm!310849 c!759979) b!4465450))

(assert (= (and bm!310849 (not c!759979)) b!4465458))

(assert (= (and d!1361622 res!1852344) b!4465446))

(assert (= (and b!4465446 res!1852346) b!4465447))

(assert (= (and b!4465447 res!1852345) b!4465449))

(assert (= (and b!4465449 c!759980) b!4465451))

(assert (= (and b!4465449 (not c!759980)) b!4465459))

(assert (= (or b!4465451 b!4465459) bm!310850))

(assert (= (or b!4465451 b!4465459) bm!310852))

(declare-fun m!5169855 () Bool)

(assert (=> b!4465451 m!5169855))

(declare-fun m!5169857 () Bool)

(assert (=> b!4465451 m!5169857))

(assert (=> b!4465451 m!5169855))

(declare-fun m!5169859 () Bool)

(assert (=> b!4465451 m!5169859))

(assert (=> b!4465451 m!5169855))

(declare-fun m!5169861 () Bool)

(assert (=> b!4465451 m!5169861))

(declare-fun m!5169863 () Bool)

(assert (=> b!4465451 m!5169863))

(declare-fun m!5169865 () Bool)

(assert (=> b!4465451 m!5169865))

(declare-fun m!5169867 () Bool)

(assert (=> bm!310848 m!5169867))

(declare-fun m!5169869 () Bool)

(assert (=> b!4465446 m!5169869))

(declare-fun m!5169871 () Bool)

(assert (=> b!4465458 m!5169871))

(declare-fun m!5169873 () Bool)

(assert (=> bm!310851 m!5169873))

(assert (=> b!4465457 m!5169855))

(assert (=> b!4465457 m!5169855))

(assert (=> b!4465457 m!5169859))

(assert (=> b!4465457 m!5169859))

(declare-fun m!5169875 () Bool)

(assert (=> b!4465457 m!5169875))

(declare-fun m!5169877 () Bool)

(assert (=> d!1361622 m!5169877))

(declare-fun m!5169879 () Bool)

(assert (=> d!1361622 m!5169879))

(assert (=> b!4465449 m!5169865))

(declare-fun m!5169881 () Bool)

(assert (=> bm!310852 m!5169881))

(assert (=> b!4465452 m!5169855))

(assert (=> b!4465452 m!5169855))

(assert (=> b!4465452 m!5169859))

(assert (=> b!4465452 m!5169857))

(declare-fun m!5169883 () Bool)

(assert (=> b!4465452 m!5169883))

(declare-fun m!5169885 () Bool)

(assert (=> b!4465461 m!5169885))

(assert (=> b!4465461 m!5169885))

(declare-fun m!5169887 () Bool)

(assert (=> b!4465461 m!5169887))

(assert (=> b!4465461 m!5169871))

(assert (=> b!4465461 m!5169871))

(declare-fun m!5169889 () Bool)

(assert (=> b!4465461 m!5169889))

(assert (=> b!4465443 m!5169871))

(declare-fun m!5169891 () Bool)

(assert (=> b!4465443 m!5169891))

(declare-fun m!5169893 () Bool)

(assert (=> b!4465443 m!5169893))

(assert (=> b!4465443 m!5169893))

(declare-fun m!5169895 () Bool)

(assert (=> b!4465443 m!5169895))

(declare-fun m!5169897 () Bool)

(assert (=> b!4465445 m!5169897))

(declare-fun m!5169899 () Bool)

(assert (=> b!4465447 m!5169899))

(declare-fun m!5169901 () Bool)

(assert (=> b!4465447 m!5169901))

(assert (=> b!4465447 m!5169517))

(assert (=> b!4465447 m!5169517))

(declare-fun m!5169903 () Bool)

(assert (=> b!4465447 m!5169903))

(assert (=> b!4465447 m!5168747))

(assert (=> b!4465447 m!5169899))

(declare-fun m!5169905 () Bool)

(assert (=> bm!310853 m!5169905))

(declare-fun m!5169907 () Bool)

(assert (=> bm!310850 m!5169907))

(declare-fun m!5169909 () Bool)

(assert (=> bm!310849 m!5169909))

(assert (=> d!1361314 d!1361622))

(declare-fun d!1361656 () Bool)

(declare-fun isEmpty!28469 (Option!10910) Bool)

(assert (=> d!1361656 (= (isDefined!8197 (getValueByKey!896 (toList!4039 lm!1477) lt!1654644)) (not (isEmpty!28469 (getValueByKey!896 (toList!4039 lm!1477) lt!1654644))))))

(declare-fun bs!792883 () Bool)

(assert (= bs!792883 d!1361656))

(assert (=> bs!792883 m!5168533))

(declare-fun m!5169911 () Bool)

(assert (=> bs!792883 m!5169911))

(assert (=> b!4464588 d!1361656))

(declare-fun d!1361658 () Bool)

(declare-fun c!759987 () Bool)

(assert (=> d!1361658 (= c!759987 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (= (_1!28544 (h!56016 (toList!4039 lm!1477))) lt!1654644)))))

(declare-fun e!2780629 () Option!10910)

(assert (=> d!1361658 (= (getValueByKey!896 (toList!4039 lm!1477) lt!1654644) e!2780629)))

(declare-fun b!4465465 () Bool)

(declare-fun e!2780630 () Option!10910)

(assert (=> b!4465465 (= e!2780630 None!10909)))

(declare-fun b!4465463 () Bool)

(assert (=> b!4465463 (= e!2780629 e!2780630)))

(declare-fun c!759988 () Bool)

(assert (=> b!4465463 (= c!759988 (and ((_ is Cons!50261) (toList!4039 lm!1477)) (not (= (_1!28544 (h!56016 (toList!4039 lm!1477))) lt!1654644))))))

(declare-fun b!4465462 () Bool)

(assert (=> b!4465462 (= e!2780629 (Some!10909 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(declare-fun b!4465464 () Bool)

(assert (=> b!4465464 (= e!2780630 (getValueByKey!896 (t!357335 (toList!4039 lm!1477)) lt!1654644))))

(assert (= (and d!1361658 c!759987) b!4465462))

(assert (= (and d!1361658 (not c!759987)) b!4465463))

(assert (= (and b!4465463 c!759988) b!4465464))

(assert (= (and b!4465463 (not c!759988)) b!4465465))

(declare-fun m!5169913 () Bool)

(assert (=> b!4465464 m!5169913))

(assert (=> b!4464588 d!1361658))

(declare-fun d!1361660 () Bool)

(declare-fun res!1852347 () Bool)

(declare-fun e!2780631 () Bool)

(assert (=> d!1361660 (=> res!1852347 e!2780631)))

(assert (=> d!1361660 (= res!1852347 (and ((_ is Cons!50260) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) (= (_1!28543 (h!56015 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))) key!3287)))))

(assert (=> d!1361660 (= (containsKey!1448 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287) e!2780631)))

(declare-fun b!4465466 () Bool)

(declare-fun e!2780632 () Bool)

(assert (=> b!4465466 (= e!2780631 e!2780632)))

(declare-fun res!1852348 () Bool)

(assert (=> b!4465466 (=> (not res!1852348) (not e!2780632))))

(assert (=> b!4465466 (= res!1852348 ((_ is Cons!50260) (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))))))

(declare-fun b!4465467 () Bool)

(assert (=> b!4465467 (= e!2780632 (containsKey!1448 (t!357334 (toList!4040 (extractMap!1072 (toList!4039 lm!1477)))) key!3287))))

(assert (= (and d!1361660 (not res!1852347)) b!4465466))

(assert (= (and b!4465466 res!1852348) b!4465467))

(declare-fun m!5169915 () Bool)

(assert (=> b!4465467 m!5169915))

(assert (=> b!4464700 d!1361660))

(declare-fun d!1361662 () Bool)

(assert (=> d!1361662 (containsKey!1448 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287)))

(declare-fun lt!1655345 () Unit!87113)

(declare-fun choose!28494 (List!50384 K!11680) Unit!87113)

(assert (=> d!1361662 (= lt!1655345 (choose!28494 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287))))

(assert (=> d!1361662 (invariantList!919 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))))))

(assert (=> d!1361662 (= (lemmaInGetKeysListThenContainsKey!366 (toList!4040 (extractMap!1072 (toList!4039 lm!1477))) key!3287) lt!1655345)))

(declare-fun bs!792884 () Bool)

(assert (= bs!792884 d!1361662))

(assert (=> bs!792884 m!5168687))

(declare-fun m!5169917 () Bool)

(assert (=> bs!792884 m!5169917))

(assert (=> bs!792884 m!5169439))

(assert (=> b!4464700 d!1361662))

(declare-fun d!1361664 () Bool)

(declare-fun lt!1655346 () Bool)

(assert (=> d!1361664 (= lt!1655346 (select (content!8079 e!2780202) key!3287))))

(declare-fun e!2780633 () Bool)

(assert (=> d!1361664 (= lt!1655346 e!2780633)))

(declare-fun res!1852349 () Bool)

(assert (=> d!1361664 (=> (not res!1852349) (not e!2780633))))

(assert (=> d!1361664 (= res!1852349 ((_ is Cons!50263) e!2780202))))

(assert (=> d!1361664 (= (contains!12799 e!2780202 key!3287) lt!1655346)))

(declare-fun b!4465468 () Bool)

(declare-fun e!2780634 () Bool)

(assert (=> b!4465468 (= e!2780633 e!2780634)))

(declare-fun res!1852350 () Bool)

(assert (=> b!4465468 (=> res!1852350 e!2780634)))

(assert (=> b!4465468 (= res!1852350 (= (h!56020 e!2780202) key!3287))))

(declare-fun b!4465469 () Bool)

(assert (=> b!4465469 (= e!2780634 (contains!12799 (t!357337 e!2780202) key!3287))))

(assert (= (and d!1361664 res!1852349) b!4465468))

(assert (= (and b!4465468 (not res!1852350)) b!4465469))

(declare-fun m!5169919 () Bool)

(assert (=> d!1361664 m!5169919))

(declare-fun m!5169921 () Bool)

(assert (=> d!1361664 m!5169921))

(declare-fun m!5169923 () Bool)

(assert (=> b!4465469 m!5169923))

(assert (=> bm!310763 d!1361664))

(assert (=> d!1361298 d!1361268))

(assert (=> d!1361298 d!1361290))

(declare-fun d!1361666 () Bool)

(assert (=> d!1361666 (not (contains!12797 (extractMap!1072 (toList!4039 lm!1477)) key!3287))))

(assert (=> d!1361666 true))

(declare-fun _$26!221 () Unit!87113)

(assert (=> d!1361666 (= (choose!28481 lm!1477 key!3287 hashF!1107) _$26!221)))

(declare-fun bs!792885 () Bool)

(assert (= bs!792885 d!1361666))

(assert (=> bs!792885 m!5168387))

(assert (=> bs!792885 m!5168387))

(assert (=> bs!792885 m!5168389))

(assert (=> d!1361298 d!1361666))

(declare-fun d!1361668 () Bool)

(declare-fun res!1852351 () Bool)

(declare-fun e!2780635 () Bool)

(assert (=> d!1361668 (=> res!1852351 e!2780635)))

(assert (=> d!1361668 (= res!1852351 ((_ is Nil!50261) (toList!4039 lm!1477)))))

(assert (=> d!1361668 (= (forall!9966 (toList!4039 lm!1477) lambda!162426) e!2780635)))

(declare-fun b!4465470 () Bool)

(declare-fun e!2780636 () Bool)

(assert (=> b!4465470 (= e!2780635 e!2780636)))

(declare-fun res!1852352 () Bool)

(assert (=> b!4465470 (=> (not res!1852352) (not e!2780636))))

(assert (=> b!4465470 (= res!1852352 (dynLambda!20998 lambda!162426 (h!56016 (toList!4039 lm!1477))))))

(declare-fun b!4465471 () Bool)

(assert (=> b!4465471 (= e!2780636 (forall!9966 (t!357335 (toList!4039 lm!1477)) lambda!162426))))

(assert (= (and d!1361668 (not res!1852351)) b!4465470))

(assert (= (and b!4465470 res!1852352) b!4465471))

(declare-fun b_lambda!148023 () Bool)

(assert (=> (not b_lambda!148023) (not b!4465470)))

(declare-fun m!5169925 () Bool)

(assert (=> b!4465470 m!5169925))

(declare-fun m!5169927 () Bool)

(assert (=> b!4465471 m!5169927))

(assert (=> d!1361298 d!1361668))

(declare-fun b!4465472 () Bool)

(declare-fun e!2780637 () List!50387)

(assert (=> b!4465472 (= e!2780637 (getKeysList!367 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655))))))))

(declare-fun b!4465473 () Bool)

(declare-fun e!2780642 () Bool)

(assert (=> b!4465473 (= e!2780642 (contains!12799 (keys!17346 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287))))

(declare-fun bm!310854 () Bool)

(declare-fun call!310859 () Bool)

(assert (=> bm!310854 (= call!310859 (contains!12799 e!2780637 key!3287))))

(declare-fun c!759991 () Bool)

(declare-fun c!759989 () Bool)

(assert (=> bm!310854 (= c!759991 c!759989)))

(declare-fun b!4465474 () Bool)

(declare-fun e!2780640 () Unit!87113)

(declare-fun e!2780641 () Unit!87113)

(assert (=> b!4465474 (= e!2780640 e!2780641)))

(declare-fun c!759990 () Bool)

(assert (=> b!4465474 (= c!759990 call!310859)))

(declare-fun d!1361670 () Bool)

(declare-fun e!2780638 () Bool)

(assert (=> d!1361670 e!2780638))

(declare-fun res!1852355 () Bool)

(assert (=> d!1361670 (=> res!1852355 e!2780638)))

(declare-fun e!2780639 () Bool)

(assert (=> d!1361670 (= res!1852355 e!2780639)))

(declare-fun res!1852353 () Bool)

(assert (=> d!1361670 (=> (not res!1852353) (not e!2780639))))

(declare-fun lt!1655348 () Bool)

(assert (=> d!1361670 (= res!1852353 (not lt!1655348))))

(declare-fun lt!1655353 () Bool)

(assert (=> d!1361670 (= lt!1655348 lt!1655353)))

(declare-fun lt!1655349 () Unit!87113)

(assert (=> d!1361670 (= lt!1655349 e!2780640)))

(assert (=> d!1361670 (= c!759989 lt!1655353)))

(assert (=> d!1361670 (= lt!1655353 (containsKey!1448 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287))))

(assert (=> d!1361670 (= (contains!12797 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655))) key!3287) lt!1655348)))

(declare-fun b!4465475 () Bool)

(assert (=> b!4465475 (= e!2780637 (keys!17346 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))))))

(declare-fun b!4465476 () Bool)

(assert (=> b!4465476 (= e!2780639 (not (contains!12799 (keys!17346 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287)))))

(declare-fun b!4465477 () Bool)

(assert (=> b!4465477 (= e!2780638 e!2780642)))

(declare-fun res!1852354 () Bool)

(assert (=> b!4465477 (=> (not res!1852354) (not e!2780642))))

(assert (=> b!4465477 (= res!1852354 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287)))))

(declare-fun b!4465478 () Bool)

(declare-fun Unit!87234 () Unit!87113)

(assert (=> b!4465478 (= e!2780641 Unit!87234)))

(declare-fun b!4465479 () Bool)

(declare-fun lt!1655347 () Unit!87113)

(assert (=> b!4465479 (= e!2780640 lt!1655347)))

(declare-fun lt!1655351 () Unit!87113)

(assert (=> b!4465479 (= lt!1655351 (lemmaContainsKeyImpliesGetValueByKeyDefined!801 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287))))

(assert (=> b!4465479 (isDefined!8198 (getValueByKey!897 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287))))

(declare-fun lt!1655354 () Unit!87113)

(assert (=> b!4465479 (= lt!1655354 lt!1655351)))

(assert (=> b!4465479 (= lt!1655347 (lemmaInListThenGetKeysListContains!363 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287))))

(assert (=> b!4465479 call!310859))

(declare-fun b!4465480 () Bool)

(assert (=> b!4465480 false))

(declare-fun lt!1655352 () Unit!87113)

(declare-fun lt!1655350 () Unit!87113)

(assert (=> b!4465480 (= lt!1655352 lt!1655350)))

(assert (=> b!4465480 (containsKey!1448 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287)))

(assert (=> b!4465480 (= lt!1655350 (lemmaInGetKeysListThenContainsKey!366 (toList!4040 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655)))) key!3287))))

(declare-fun Unit!87237 () Unit!87113)

(assert (=> b!4465480 (= e!2780641 Unit!87237)))

(assert (= (and d!1361670 c!759989) b!4465479))

(assert (= (and d!1361670 (not c!759989)) b!4465474))

(assert (= (and b!4465474 c!759990) b!4465480))

(assert (= (and b!4465474 (not c!759990)) b!4465478))

(assert (= (or b!4465479 b!4465474) bm!310854))

(assert (= (and bm!310854 c!759991) b!4465472))

(assert (= (and bm!310854 (not c!759991)) b!4465475))

(assert (= (and d!1361670 res!1852353) b!4465476))

(assert (= (and d!1361670 (not res!1852355)) b!4465477))

(assert (= (and b!4465477 res!1852354) b!4465473))

(assert (=> b!4465473 m!5168801))

(declare-fun m!5169929 () Bool)

(assert (=> b!4465473 m!5169929))

(assert (=> b!4465473 m!5169929))

(declare-fun m!5169931 () Bool)

(assert (=> b!4465473 m!5169931))

(assert (=> b!4465475 m!5168801))

(assert (=> b!4465475 m!5169929))

(declare-fun m!5169933 () Bool)

(assert (=> b!4465472 m!5169933))

(assert (=> b!4465476 m!5168801))

(assert (=> b!4465476 m!5169929))

(assert (=> b!4465476 m!5169929))

(assert (=> b!4465476 m!5169931))

(declare-fun m!5169935 () Bool)

(assert (=> bm!310854 m!5169935))

(declare-fun m!5169937 () Bool)

(assert (=> b!4465479 m!5169937))

(declare-fun m!5169939 () Bool)

(assert (=> b!4465479 m!5169939))

(assert (=> b!4465479 m!5169939))

(declare-fun m!5169941 () Bool)

(assert (=> b!4465479 m!5169941))

(declare-fun m!5169943 () Bool)

(assert (=> b!4465479 m!5169943))

(declare-fun m!5169945 () Bool)

(assert (=> d!1361670 m!5169945))

(assert (=> b!4465480 m!5169945))

(declare-fun m!5169947 () Bool)

(assert (=> b!4465480 m!5169947))

(assert (=> b!4465477 m!5169939))

(assert (=> b!4465477 m!5169939))

(assert (=> b!4465477 m!5169941))

(assert (=> d!1361326 d!1361670))

(declare-fun bs!792886 () Bool)

(declare-fun d!1361672 () Bool)

(assert (= bs!792886 (and d!1361672 d!1361290)))

(declare-fun lambda!162585 () Int)

(assert (=> bs!792886 (= lambda!162585 lambda!162420)))

(declare-fun bs!792887 () Bool)

(assert (= bs!792887 (and d!1361672 start!438112)))

(assert (=> bs!792887 (= lambda!162585 lambda!162393)))

(declare-fun bs!792888 () Bool)

(assert (= bs!792888 (and d!1361672 d!1361310)))

(assert (=> bs!792888 (= lambda!162585 lambda!162430)))

(declare-fun bs!792889 () Bool)

(assert (= bs!792889 (and d!1361672 d!1361326)))

(assert (=> bs!792889 (= lambda!162585 lambda!162435)))

(declare-fun bs!792890 () Bool)

(assert (= bs!792890 (and d!1361672 d!1361456)))

(assert (=> bs!792890 (= lambda!162585 lambda!162536)))

(declare-fun bs!792891 () Bool)

(assert (= bs!792891 (and d!1361672 d!1361308)))

(assert (=> bs!792891 (not (= lambda!162585 lambda!162429))))

(declare-fun bs!792892 () Bool)

(assert (= bs!792892 (and d!1361672 d!1361484)))

(assert (=> bs!792892 (= lambda!162585 lambda!162555)))

(declare-fun bs!792893 () Bool)

(assert (= bs!792893 (and d!1361672 d!1361474)))

(assert (=> bs!792893 (= lambda!162585 lambda!162545)))

(declare-fun bs!792894 () Bool)

(assert (= bs!792894 (and d!1361672 d!1361218)))

(assert (=> bs!792894 (= lambda!162585 lambda!162399)))

(declare-fun bs!792895 () Bool)

(assert (= bs!792895 (and d!1361672 d!1361316)))

(assert (=> bs!792895 (= lambda!162585 lambda!162432)))

(declare-fun bs!792896 () Bool)

(assert (= bs!792896 (and d!1361672 d!1361312)))

(assert (=> bs!792896 (= lambda!162585 lambda!162431)))

(declare-fun bs!792897 () Bool)

(assert (= bs!792897 (and d!1361672 d!1361298)))

(assert (=> bs!792897 (= lambda!162585 lambda!162426)))

(declare-fun lt!1655355 () ListMap!3301)

(assert (=> d!1361672 (invariantList!919 (toList!4040 lt!1655355))))

(declare-fun e!2780643 () ListMap!3301)

(assert (=> d!1361672 (= lt!1655355 e!2780643)))

(declare-fun c!759992 () Bool)

(assert (=> d!1361672 (= c!759992 ((_ is Cons!50261) (toList!4039 (ListLongMap!2672 lt!1654655))))))

(assert (=> d!1361672 (forall!9966 (toList!4039 (ListLongMap!2672 lt!1654655)) lambda!162585)))

(assert (=> d!1361672 (= (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655))) lt!1655355)))

(declare-fun b!4465481 () Bool)

(assert (=> b!4465481 (= e!2780643 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (toList!4039 (ListLongMap!2672 lt!1654655)))) (extractMap!1072 (t!357335 (toList!4039 (ListLongMap!2672 lt!1654655))))))))

(declare-fun b!4465482 () Bool)

(assert (=> b!4465482 (= e!2780643 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361672 c!759992) b!4465481))

(assert (= (and d!1361672 (not c!759992)) b!4465482))

(declare-fun m!5169949 () Bool)

(assert (=> d!1361672 m!5169949))

(declare-fun m!5169951 () Bool)

(assert (=> d!1361672 m!5169951))

(declare-fun m!5169953 () Bool)

(assert (=> b!4465481 m!5169953))

(assert (=> b!4465481 m!5169953))

(declare-fun m!5169955 () Bool)

(assert (=> b!4465481 m!5169955))

(assert (=> d!1361326 d!1361672))

(declare-fun d!1361674 () Bool)

(assert (=> d!1361674 (contains!12797 (extractMap!1072 (toList!4039 (ListLongMap!2672 lt!1654655))) key!3287)))

(assert (=> d!1361674 true))

(declare-fun _$34!538 () Unit!87113)

(assert (=> d!1361674 (= (choose!28483 (ListLongMap!2672 lt!1654655) key!3287 hashF!1107) _$34!538)))

(declare-fun bs!792898 () Bool)

(assert (= bs!792898 d!1361674))

(assert (=> bs!792898 m!5168801))

(assert (=> bs!792898 m!5168801))

(assert (=> bs!792898 m!5168803))

(assert (=> d!1361326 d!1361674))

(declare-fun d!1361676 () Bool)

(declare-fun res!1852356 () Bool)

(declare-fun e!2780644 () Bool)

(assert (=> d!1361676 (=> res!1852356 e!2780644)))

(assert (=> d!1361676 (= res!1852356 ((_ is Nil!50261) (toList!4039 (ListLongMap!2672 lt!1654655))))))

(assert (=> d!1361676 (= (forall!9966 (toList!4039 (ListLongMap!2672 lt!1654655)) lambda!162435) e!2780644)))

(declare-fun b!4465483 () Bool)

(declare-fun e!2780645 () Bool)

(assert (=> b!4465483 (= e!2780644 e!2780645)))

(declare-fun res!1852357 () Bool)

(assert (=> b!4465483 (=> (not res!1852357) (not e!2780645))))

(assert (=> b!4465483 (= res!1852357 (dynLambda!20998 lambda!162435 (h!56016 (toList!4039 (ListLongMap!2672 lt!1654655)))))))

(declare-fun b!4465484 () Bool)

(assert (=> b!4465484 (= e!2780645 (forall!9966 (t!357335 (toList!4039 (ListLongMap!2672 lt!1654655))) lambda!162435))))

(assert (= (and d!1361676 (not res!1852356)) b!4465483))

(assert (= (and b!4465483 res!1852357) b!4465484))

(declare-fun b_lambda!148025 () Bool)

(assert (=> (not b_lambda!148025) (not b!4465483)))

(declare-fun m!5169957 () Bool)

(assert (=> b!4465483 m!5169957))

(declare-fun m!5169959 () Bool)

(assert (=> b!4465484 m!5169959))

(assert (=> d!1361326 d!1361676))

(assert (=> d!1361318 d!1361312))

(declare-fun d!1361678 () Bool)

(assert (=> d!1361678 (eq!509 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)) (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287))))

(assert (=> d!1361678 true))

(declare-fun _$18!186 () Unit!87113)

(assert (=> d!1361678 (= (choose!28482 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!186)))

(declare-fun bs!792899 () Bool)

(assert (= bs!792899 d!1361678))

(assert (=> bs!792899 m!5168763))

(assert (=> bs!792899 m!5168425))

(assert (=> bs!792899 m!5168425))

(assert (=> bs!792899 m!5168427))

(assert (=> bs!792899 m!5168763))

(assert (=> bs!792899 m!5168427))

(assert (=> bs!792899 m!5168765))

(assert (=> d!1361318 d!1361678))

(assert (=> d!1361318 d!1361314))

(declare-fun d!1361680 () Bool)

(declare-fun res!1852358 () Bool)

(declare-fun e!2780646 () Bool)

(assert (=> d!1361680 (=> res!1852358 e!2780646)))

(assert (=> d!1361680 (= res!1852358 (not ((_ is Cons!50260) (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(assert (=> d!1361680 (= (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477)))) e!2780646)))

(declare-fun b!4465485 () Bool)

(declare-fun e!2780647 () Bool)

(assert (=> b!4465485 (= e!2780646 e!2780647)))

(declare-fun res!1852359 () Bool)

(assert (=> b!4465485 (=> (not res!1852359) (not e!2780647))))

(assert (=> b!4465485 (= res!1852359 (not (containsKey!1444 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477)))) (_1!28543 (h!56015 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))))

(declare-fun b!4465486 () Bool)

(assert (=> b!4465486 (= e!2780647 (noDuplicateKeys!1016 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(assert (= (and d!1361680 (not res!1852358)) b!4465485))

(assert (= (and b!4465485 res!1852359) b!4465486))

(declare-fun m!5169961 () Bool)

(assert (=> b!4465485 m!5169961))

(declare-fun m!5169963 () Bool)

(assert (=> b!4465486 m!5169963))

(assert (=> d!1361318 d!1361680))

(declare-fun bs!792900 () Bool)

(declare-fun d!1361682 () Bool)

(assert (= bs!792900 (and d!1361682 d!1361290)))

(declare-fun lambda!162586 () Int)

(assert (=> bs!792900 (= lambda!162586 lambda!162420)))

(declare-fun bs!792901 () Bool)

(assert (= bs!792901 (and d!1361682 start!438112)))

(assert (=> bs!792901 (= lambda!162586 lambda!162393)))

(declare-fun bs!792902 () Bool)

(assert (= bs!792902 (and d!1361682 d!1361310)))

(assert (=> bs!792902 (= lambda!162586 lambda!162430)))

(declare-fun bs!792903 () Bool)

(assert (= bs!792903 (and d!1361682 d!1361326)))

(assert (=> bs!792903 (= lambda!162586 lambda!162435)))

(declare-fun bs!792904 () Bool)

(assert (= bs!792904 (and d!1361682 d!1361456)))

(assert (=> bs!792904 (= lambda!162586 lambda!162536)))

(declare-fun bs!792905 () Bool)

(assert (= bs!792905 (and d!1361682 d!1361672)))

(assert (=> bs!792905 (= lambda!162586 lambda!162585)))

(declare-fun bs!792906 () Bool)

(assert (= bs!792906 (and d!1361682 d!1361308)))

(assert (=> bs!792906 (not (= lambda!162586 lambda!162429))))

(declare-fun bs!792907 () Bool)

(assert (= bs!792907 (and d!1361682 d!1361484)))

(assert (=> bs!792907 (= lambda!162586 lambda!162555)))

(declare-fun bs!792908 () Bool)

(assert (= bs!792908 (and d!1361682 d!1361474)))

(assert (=> bs!792908 (= lambda!162586 lambda!162545)))

(declare-fun bs!792909 () Bool)

(assert (= bs!792909 (and d!1361682 d!1361218)))

(assert (=> bs!792909 (= lambda!162586 lambda!162399)))

(declare-fun bs!792910 () Bool)

(assert (= bs!792910 (and d!1361682 d!1361316)))

(assert (=> bs!792910 (= lambda!162586 lambda!162432)))

(declare-fun bs!792911 () Bool)

(assert (= bs!792911 (and d!1361682 d!1361312)))

(assert (=> bs!792911 (= lambda!162586 lambda!162431)))

(declare-fun bs!792912 () Bool)

(assert (= bs!792912 (and d!1361682 d!1361298)))

(assert (=> bs!792912 (= lambda!162586 lambda!162426)))

(declare-fun lt!1655356 () ListMap!3301)

(assert (=> d!1361682 (invariantList!919 (toList!4040 lt!1655356))))

(declare-fun e!2780648 () ListMap!3301)

(assert (=> d!1361682 (= lt!1655356 e!2780648)))

(declare-fun c!759993 () Bool)

(assert (=> d!1361682 (= c!759993 ((_ is Cons!50261) (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)))))

(assert (=> d!1361682 (forall!9966 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261) lambda!162586)))

(assert (=> d!1361682 (= (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)) lt!1655356)))

(declare-fun b!4465487 () Bool)

(assert (=> b!4465487 (= e!2780648 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)))))))

(declare-fun b!4465488 () Bool)

(assert (=> b!4465488 (= e!2780648 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361682 c!759993) b!4465487))

(assert (= (and d!1361682 (not c!759993)) b!4465488))

(declare-fun m!5169965 () Bool)

(assert (=> d!1361682 m!5169965))

(declare-fun m!5169967 () Bool)

(assert (=> d!1361682 m!5169967))

(declare-fun m!5169969 () Bool)

(assert (=> b!4465487 m!5169969))

(assert (=> b!4465487 m!5169969))

(declare-fun m!5169971 () Bool)

(assert (=> b!4465487 m!5169971))

(assert (=> d!1361318 d!1361682))

(declare-fun d!1361684 () Bool)

(assert (=> d!1361684 (= (eq!509 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)) (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287)) (= (content!8080 (toList!4040 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 newBucket!178) Nil!50261)))) (content!8080 (toList!4040 (-!278 (extractMap!1072 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)) key!3287)))))))

(declare-fun bs!792913 () Bool)

(assert (= bs!792913 d!1361684))

(declare-fun m!5169973 () Bool)

(assert (=> bs!792913 m!5169973))

(assert (=> bs!792913 m!5168811))

(assert (=> d!1361318 d!1361684))

(declare-fun d!1361686 () Bool)

(declare-fun lt!1655357 () Bool)

(assert (=> d!1361686 (= lt!1655357 (select (content!8078 (t!357335 (toList!4039 lm!1477))) lt!1654652))))

(declare-fun e!2780650 () Bool)

(assert (=> d!1361686 (= lt!1655357 e!2780650)))

(declare-fun res!1852361 () Bool)

(assert (=> d!1361686 (=> (not res!1852361) (not e!2780650))))

(assert (=> d!1361686 (= res!1852361 ((_ is Cons!50261) (t!357335 (toList!4039 lm!1477))))))

(assert (=> d!1361686 (= (contains!12795 (t!357335 (toList!4039 lm!1477)) lt!1654652) lt!1655357)))

(declare-fun b!4465489 () Bool)

(declare-fun e!2780649 () Bool)

(assert (=> b!4465489 (= e!2780650 e!2780649)))

(declare-fun res!1852360 () Bool)

(assert (=> b!4465489 (=> res!1852360 e!2780649)))

(assert (=> b!4465489 (= res!1852360 (= (h!56016 (t!357335 (toList!4039 lm!1477))) lt!1654652))))

(declare-fun b!4465490 () Bool)

(assert (=> b!4465490 (= e!2780649 (contains!12795 (t!357335 (t!357335 (toList!4039 lm!1477))) lt!1654652))))

(assert (= (and d!1361686 res!1852361) b!4465489))

(assert (= (and b!4465489 (not res!1852360)) b!4465490))

(declare-fun m!5169975 () Bool)

(assert (=> d!1361686 m!5169975))

(declare-fun m!5169977 () Bool)

(assert (=> d!1361686 m!5169977))

(declare-fun m!5169979 () Bool)

(assert (=> b!4465490 m!5169979))

(assert (=> b!4464643 d!1361686))

(assert (=> d!1361268 d!1361660))

(declare-fun d!1361688 () Bool)

(declare-fun lt!1655358 () Bool)

(assert (=> d!1361688 (= lt!1655358 (select (content!8079 (keys!17346 (extractMap!1072 (toList!4039 lm!1477)))) key!3287))))

(declare-fun e!2780651 () Bool)

(assert (=> d!1361688 (= lt!1655358 e!2780651)))

(declare-fun res!1852362 () Bool)

(assert (=> d!1361688 (=> (not res!1852362) (not e!2780651))))

(assert (=> d!1361688 (= res!1852362 ((_ is Cons!50263) (keys!17346 (extractMap!1072 (toList!4039 lm!1477)))))))

(assert (=> d!1361688 (= (contains!12799 (keys!17346 (extractMap!1072 (toList!4039 lm!1477))) key!3287) lt!1655358)))

(declare-fun b!4465491 () Bool)

(declare-fun e!2780652 () Bool)

(assert (=> b!4465491 (= e!2780651 e!2780652)))

(declare-fun res!1852363 () Bool)

(assert (=> b!4465491 (=> res!1852363 e!2780652)))

(assert (=> b!4465491 (= res!1852363 (= (h!56020 (keys!17346 (extractMap!1072 (toList!4039 lm!1477)))) key!3287))))

(declare-fun b!4465492 () Bool)

(assert (=> b!4465492 (= e!2780652 (contains!12799 (t!357337 (keys!17346 (extractMap!1072 (toList!4039 lm!1477)))) key!3287))))

(assert (= (and d!1361688 res!1852362) b!4465491))

(assert (= (and b!4465491 (not res!1852363)) b!4465492))

(assert (=> d!1361688 m!5168671))

(declare-fun m!5169981 () Bool)

(assert (=> d!1361688 m!5169981))

(declare-fun m!5169983 () Bool)

(assert (=> d!1361688 m!5169983))

(declare-fun m!5169985 () Bool)

(assert (=> b!4465492 m!5169985))

(assert (=> b!4464693 d!1361688))

(assert (=> b!4464693 d!1361536))

(declare-fun d!1361690 () Bool)

(assert (=> d!1361690 (isDefined!8197 (getValueByKey!896 (toList!4039 lm!1477) lt!1654644))))

(declare-fun lt!1655361 () Unit!87113)

(declare-fun choose!28495 (List!50385 (_ BitVec 64)) Unit!87113)

(assert (=> d!1361690 (= lt!1655361 (choose!28495 (toList!4039 lm!1477) lt!1654644))))

(declare-fun e!2780655 () Bool)

(assert (=> d!1361690 e!2780655))

(declare-fun res!1852366 () Bool)

(assert (=> d!1361690 (=> (not res!1852366) (not e!2780655))))

(assert (=> d!1361690 (= res!1852366 (isStrictlySorted!333 (toList!4039 lm!1477)))))

(assert (=> d!1361690 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!800 (toList!4039 lm!1477) lt!1654644) lt!1655361)))

(declare-fun b!4465495 () Bool)

(assert (=> b!4465495 (= e!2780655 (containsKey!1447 (toList!4039 lm!1477) lt!1654644))))

(assert (= (and d!1361690 res!1852366) b!4465495))

(assert (=> d!1361690 m!5168533))

(assert (=> d!1361690 m!5168533))

(assert (=> d!1361690 m!5168535))

(declare-fun m!5169987 () Bool)

(assert (=> d!1361690 m!5169987))

(assert (=> d!1361690 m!5168507))

(assert (=> b!4465495 m!5168529))

(assert (=> b!4464586 d!1361690))

(assert (=> b!4464586 d!1361656))

(assert (=> b!4464586 d!1361658))

(declare-fun d!1361692 () Bool)

(assert (=> d!1361692 (dynLambda!20998 lambda!162393 lt!1654652)))

(assert (=> d!1361692 true))

(declare-fun _$7!1663 () Unit!87113)

(assert (=> d!1361692 (= (choose!28480 (toList!4039 lm!1477) lambda!162393 lt!1654652) _$7!1663)))

(declare-fun b_lambda!148027 () Bool)

(assert (=> (not b_lambda!148027) (not d!1361692)))

(declare-fun bs!792914 () Bool)

(assert (= bs!792914 d!1361692))

(assert (=> bs!792914 m!5168559))

(assert (=> d!1361246 d!1361692))

(assert (=> d!1361246 d!1361292))

(assert (=> b!4464696 d!1361688))

(assert (=> b!4464696 d!1361536))

(declare-fun d!1361694 () Bool)

(declare-fun c!759996 () Bool)

(assert (=> d!1361694 (= c!759996 ((_ is Nil!50261) (toList!4039 lm!1477)))))

(declare-fun e!2780658 () (InoxSet tuple2!50500))

(assert (=> d!1361694 (= (content!8078 (toList!4039 lm!1477)) e!2780658)))

(declare-fun b!4465500 () Bool)

(assert (=> b!4465500 (= e!2780658 ((as const (Array tuple2!50500 Bool)) false))))

(declare-fun b!4465501 () Bool)

(assert (=> b!4465501 (= e!2780658 ((_ map or) (store ((as const (Array tuple2!50500 Bool)) false) (h!56016 (toList!4039 lm!1477)) true) (content!8078 (t!357335 (toList!4039 lm!1477)))))))

(assert (= (and d!1361694 c!759996) b!4465500))

(assert (= (and d!1361694 (not c!759996)) b!4465501))

(declare-fun m!5169989 () Bool)

(assert (=> b!4465501 m!5169989))

(assert (=> b!4465501 m!5169975))

(assert (=> d!1361256 d!1361694))

(declare-fun bs!792915 () Bool)

(declare-fun b!4465504 () Bool)

(assert (= bs!792915 (and b!4465504 b!4465069)))

(declare-fun lambda!162587 () Int)

(assert (=> bs!792915 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162587 lambda!162538))))

(declare-fun bs!792916 () Bool)

(assert (= bs!792916 (and b!4465504 b!4465043)))

(assert (=> bs!792916 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162587 lambda!162531))))

(declare-fun bs!792917 () Bool)

(assert (= bs!792917 (and b!4465504 d!1361462)))

(assert (=> bs!792917 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655051) (= lambda!162587 lambda!162542))))

(declare-fun bs!792918 () Bool)

(assert (= bs!792918 (and b!4465504 b!4465067)))

(assert (=> bs!792918 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162587 lambda!162537))))

(declare-fun bs!792919 () Bool)

(assert (= bs!792919 (and b!4465504 d!1361296)))

(assert (=> bs!792919 (not (= lambda!162587 lambda!162423))))

(declare-fun bs!792920 () Bool)

(assert (= bs!792920 (and b!4465504 b!4465085)))

(assert (=> bs!792920 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162587 lambda!162549))))

(assert (=> bs!792916 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655020) (= lambda!162587 lambda!162532))))

(declare-fun bs!792921 () Bool)

(assert (= bs!792921 (and b!4465504 b!4465041)))

(assert (=> bs!792921 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162587 lambda!162530))))

(declare-fun bs!792922 () Bool)

(assert (= bs!792922 (and b!4465504 b!4465083)))

(assert (=> bs!792922 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162587 lambda!162547))))

(declare-fun bs!792923 () Bool)

(assert (= bs!792923 (and b!4465504 d!1361480)))

(assert (=> bs!792923 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655097) (= lambda!162587 lambda!162553))))

(declare-fun bs!792924 () Bool)

(assert (= bs!792924 (and b!4465504 d!1361426)))

(assert (=> bs!792924 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655026) (= lambda!162587 lambda!162533))))

(assert (=> bs!792920 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655091) (= lambda!162587 lambda!162551))))

(assert (=> bs!792915 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655045) (= lambda!162587 lambda!162539))))

(assert (=> b!4465504 true))

(declare-fun bs!792925 () Bool)

(declare-fun b!4465506 () Bool)

(assert (= bs!792925 (and b!4465506 b!4465069)))

(declare-fun lambda!162588 () Int)

(assert (=> bs!792925 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162588 lambda!162538))))

(declare-fun bs!792926 () Bool)

(assert (= bs!792926 (and b!4465506 b!4465043)))

(assert (=> bs!792926 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162588 lambda!162531))))

(declare-fun bs!792927 () Bool)

(assert (= bs!792927 (and b!4465506 d!1361462)))

(assert (=> bs!792927 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655051) (= lambda!162588 lambda!162542))))

(declare-fun bs!792928 () Bool)

(assert (= bs!792928 (and b!4465506 b!4465067)))

(assert (=> bs!792928 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162588 lambda!162537))))

(declare-fun bs!792929 () Bool)

(assert (= bs!792929 (and b!4465506 b!4465504)))

(assert (=> bs!792929 (= lambda!162588 lambda!162587)))

(declare-fun bs!792930 () Bool)

(assert (= bs!792930 (and b!4465506 d!1361296)))

(assert (=> bs!792930 (not (= lambda!162588 lambda!162423))))

(declare-fun bs!792931 () Bool)

(assert (= bs!792931 (and b!4465506 b!4465085)))

(assert (=> bs!792931 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162588 lambda!162549))))

(assert (=> bs!792926 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655020) (= lambda!162588 lambda!162532))))

(declare-fun bs!792932 () Bool)

(assert (= bs!792932 (and b!4465506 b!4465041)))

(assert (=> bs!792932 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162588 lambda!162530))))

(declare-fun bs!792933 () Bool)

(assert (= bs!792933 (and b!4465506 b!4465083)))

(assert (=> bs!792933 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162588 lambda!162547))))

(declare-fun bs!792934 () Bool)

(assert (= bs!792934 (and b!4465506 d!1361480)))

(assert (=> bs!792934 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655097) (= lambda!162588 lambda!162553))))

(declare-fun bs!792935 () Bool)

(assert (= bs!792935 (and b!4465506 d!1361426)))

(assert (=> bs!792935 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655026) (= lambda!162588 lambda!162533))))

(assert (=> bs!792931 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655091) (= lambda!162588 lambda!162551))))

(assert (=> bs!792925 (= (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655045) (= lambda!162588 lambda!162539))))

(assert (=> b!4465506 true))

(declare-fun lt!1655374 () ListMap!3301)

(declare-fun lambda!162589 () Int)

(assert (=> bs!792925 (= (= lt!1655374 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162589 lambda!162538))))

(assert (=> bs!792926 (= (= lt!1655374 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162589 lambda!162531))))

(assert (=> bs!792927 (= (= lt!1655374 lt!1655051) (= lambda!162589 lambda!162542))))

(assert (=> bs!792928 (= (= lt!1655374 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162589 lambda!162537))))

(assert (=> bs!792930 (not (= lambda!162589 lambda!162423))))

(assert (=> bs!792931 (= (= lt!1655374 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162589 lambda!162549))))

(assert (=> bs!792926 (= (= lt!1655374 lt!1655020) (= lambda!162589 lambda!162532))))

(assert (=> bs!792932 (= (= lt!1655374 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162589 lambda!162530))))

(assert (=> bs!792933 (= (= lt!1655374 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162589 lambda!162547))))

(assert (=> bs!792934 (= (= lt!1655374 lt!1655097) (= lambda!162589 lambda!162553))))

(assert (=> bs!792935 (= (= lt!1655374 lt!1655026) (= lambda!162589 lambda!162533))))

(assert (=> bs!792931 (= (= lt!1655374 lt!1655091) (= lambda!162589 lambda!162551))))

(assert (=> bs!792925 (= (= lt!1655374 lt!1655045) (= lambda!162589 lambda!162539))))

(assert (=> bs!792929 (= (= lt!1655374 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (= lambda!162589 lambda!162587))))

(assert (=> b!4465506 (= (= lt!1655374 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (= lambda!162589 lambda!162588))))

(assert (=> b!4465506 true))

(declare-fun bs!792936 () Bool)

(declare-fun d!1361696 () Bool)

(assert (= bs!792936 (and d!1361696 b!4465069)))

(declare-fun lt!1655380 () ListMap!3301)

(declare-fun lambda!162590 () Int)

(assert (=> bs!792936 (= (= lt!1655380 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162590 lambda!162538))))

(declare-fun bs!792937 () Bool)

(assert (= bs!792937 (and d!1361696 b!4465043)))

(assert (=> bs!792937 (= (= lt!1655380 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162590 lambda!162531))))

(declare-fun bs!792938 () Bool)

(assert (= bs!792938 (and d!1361696 d!1361462)))

(assert (=> bs!792938 (= (= lt!1655380 lt!1655051) (= lambda!162590 lambda!162542))))

(declare-fun bs!792939 () Bool)

(assert (= bs!792939 (and d!1361696 b!4465506)))

(assert (=> bs!792939 (= (= lt!1655380 lt!1655374) (= lambda!162590 lambda!162589))))

(declare-fun bs!792940 () Bool)

(assert (= bs!792940 (and d!1361696 b!4465067)))

(assert (=> bs!792940 (= (= lt!1655380 (extractMap!1072 (t!357335 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))) (= lambda!162590 lambda!162537))))

(declare-fun bs!792941 () Bool)

(assert (= bs!792941 (and d!1361696 d!1361296)))

(assert (=> bs!792941 (not (= lambda!162590 lambda!162423))))

(declare-fun bs!792942 () Bool)

(assert (= bs!792942 (and d!1361696 b!4465085)))

(assert (=> bs!792942 (= (= lt!1655380 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162590 lambda!162549))))

(assert (=> bs!792937 (= (= lt!1655380 lt!1655020) (= lambda!162590 lambda!162532))))

(declare-fun bs!792943 () Bool)

(assert (= bs!792943 (and d!1361696 b!4465041)))

(assert (=> bs!792943 (= (= lt!1655380 (extractMap!1072 (t!357335 (toList!4039 lm!1477)))) (= lambda!162590 lambda!162530))))

(declare-fun bs!792944 () Bool)

(assert (= bs!792944 (and d!1361696 b!4465083)))

(assert (=> bs!792944 (= (= lt!1655380 (extractMap!1072 (t!357335 lt!1654655))) (= lambda!162590 lambda!162547))))

(declare-fun bs!792945 () Bool)

(assert (= bs!792945 (and d!1361696 d!1361480)))

(assert (=> bs!792945 (= (= lt!1655380 lt!1655097) (= lambda!162590 lambda!162553))))

(declare-fun bs!792946 () Bool)

(assert (= bs!792946 (and d!1361696 d!1361426)))

(assert (=> bs!792946 (= (= lt!1655380 lt!1655026) (= lambda!162590 lambda!162533))))

(assert (=> bs!792942 (= (= lt!1655380 lt!1655091) (= lambda!162590 lambda!162551))))

(assert (=> bs!792936 (= (= lt!1655380 lt!1655045) (= lambda!162590 lambda!162539))))

(declare-fun bs!792947 () Bool)

(assert (= bs!792947 (and d!1361696 b!4465504)))

(assert (=> bs!792947 (= (= lt!1655380 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (= lambda!162590 lambda!162587))))

(assert (=> bs!792939 (= (= lt!1655380 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (= lambda!162590 lambda!162588))))

(assert (=> d!1361696 true))

(declare-fun b!4465502 () Bool)

(declare-fun res!1852369 () Bool)

(declare-fun e!2780660 () Bool)

(assert (=> b!4465502 (=> (not res!1852369) (not e!2780660))))

(assert (=> b!4465502 (= res!1852369 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) lambda!162590))))

(declare-fun bm!310855 () Bool)

(declare-fun call!310860 () Unit!87113)

(assert (=> bm!310855 (= call!310860 (lemmaContainsAllItsOwnKeys!260 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))))))

(declare-fun b!4465503 () Bool)

(declare-fun e!2780659 () Bool)

(assert (=> b!4465503 (= e!2780659 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) lambda!162589))))

(declare-fun bm!310856 () Bool)

(declare-fun call!310861 () Bool)

(declare-fun c!759997 () Bool)

(assert (=> bm!310856 (= call!310861 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (ite c!759997 lambda!162587 lambda!162589)))))

(declare-fun e!2780661 () ListMap!3301)

(assert (=> b!4465504 (= e!2780661 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))))))

(declare-fun lt!1655364 () Unit!87113)

(assert (=> b!4465504 (= lt!1655364 call!310860)))

(assert (=> b!4465504 call!310861))

(declare-fun lt!1655368 () Unit!87113)

(assert (=> b!4465504 (= lt!1655368 lt!1655364)))

(declare-fun call!310862 () Bool)

(assert (=> b!4465504 call!310862))

(declare-fun lt!1655367 () Unit!87113)

(declare-fun Unit!87248 () Unit!87113)

(assert (=> b!4465504 (= lt!1655367 Unit!87248)))

(declare-fun bm!310857 () Bool)

(declare-fun lt!1655375 () ListMap!3301)

(assert (=> bm!310857 (= call!310862 (forall!9968 (ite c!759997 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (toList!4040 lt!1655375)) (ite c!759997 lambda!162587 lambda!162589)))))

(declare-fun b!4465505 () Bool)

(assert (=> b!4465505 (= e!2780660 (invariantList!919 (toList!4040 lt!1655380)))))

(assert (=> d!1361696 e!2780660))

(declare-fun res!1852367 () Bool)

(assert (=> d!1361696 (=> (not res!1852367) (not e!2780660))))

(assert (=> d!1361696 (= res!1852367 (forall!9968 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))) lambda!162590))))

(assert (=> d!1361696 (= lt!1655380 e!2780661)))

(assert (=> d!1361696 (= c!759997 ((_ is Nil!50260) (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261)))))))

(assert (=> d!1361696 (noDuplicateKeys!1016 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))))

(assert (=> d!1361696 (= (addToMapMapFromBucket!581 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))) (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) lt!1655380)))

(assert (=> b!4465506 (= e!2780661 lt!1655374)))

(assert (=> b!4465506 (= lt!1655375 (+!1353 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))))))

(assert (=> b!4465506 (= lt!1655374 (addToMapMapFromBucket!581 (t!357334 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261)))) (+!1353 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261)))))))))

(declare-fun lt!1655381 () Unit!87113)

(assert (=> b!4465506 (= lt!1655381 call!310860)))

(assert (=> b!4465506 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) lambda!162588)))

(declare-fun lt!1655365 () Unit!87113)

(assert (=> b!4465506 (= lt!1655365 lt!1655381)))

(assert (=> b!4465506 (forall!9968 (toList!4040 lt!1655375) lambda!162589)))

(declare-fun lt!1655366 () Unit!87113)

(declare-fun Unit!87249 () Unit!87113)

(assert (=> b!4465506 (= lt!1655366 Unit!87249)))

(assert (=> b!4465506 (forall!9968 (t!357334 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261)))) lambda!162589)))

(declare-fun lt!1655379 () Unit!87113)

(declare-fun Unit!87250 () Unit!87113)

(assert (=> b!4465506 (= lt!1655379 Unit!87250)))

(declare-fun lt!1655371 () Unit!87113)

(declare-fun Unit!87251 () Unit!87113)

(assert (=> b!4465506 (= lt!1655371 Unit!87251)))

(declare-fun lt!1655382 () Unit!87113)

(assert (=> b!4465506 (= lt!1655382 (forallContained!2239 (toList!4040 lt!1655375) lambda!162589 (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))))))

(assert (=> b!4465506 (contains!12797 lt!1655375 (_1!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))))))

(declare-fun lt!1655378 () Unit!87113)

(declare-fun Unit!87252 () Unit!87113)

(assert (=> b!4465506 (= lt!1655378 Unit!87252)))

(assert (=> b!4465506 (contains!12797 lt!1655374 (_1!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))))))

(declare-fun lt!1655373 () Unit!87113)

(declare-fun Unit!87253 () Unit!87113)

(assert (=> b!4465506 (= lt!1655373 Unit!87253)))

(assert (=> b!4465506 (forall!9968 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))) lambda!162589)))

(declare-fun lt!1655362 () Unit!87113)

(declare-fun Unit!87254 () Unit!87113)

(assert (=> b!4465506 (= lt!1655362 Unit!87254)))

(assert (=> b!4465506 call!310862))

(declare-fun lt!1655377 () Unit!87113)

(declare-fun Unit!87255 () Unit!87113)

(assert (=> b!4465506 (= lt!1655377 Unit!87255)))

(declare-fun lt!1655372 () Unit!87113)

(declare-fun Unit!87256 () Unit!87113)

(assert (=> b!4465506 (= lt!1655372 Unit!87256)))

(declare-fun lt!1655369 () Unit!87113)

(assert (=> b!4465506 (= lt!1655369 (addForallContainsKeyThenBeforeAdding!259 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655374 (_1!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))) (_2!28543 (h!56015 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261)))))))))

(assert (=> b!4465506 (forall!9968 (toList!4040 (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) lambda!162589)))

(declare-fun lt!1655363 () Unit!87113)

(assert (=> b!4465506 (= lt!1655363 lt!1655369)))

(assert (=> b!4465506 call!310861))

(declare-fun lt!1655376 () Unit!87113)

(declare-fun Unit!87257 () Unit!87113)

(assert (=> b!4465506 (= lt!1655376 Unit!87257)))

(declare-fun res!1852368 () Bool)

(assert (=> b!4465506 (= res!1852368 (forall!9968 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261))) lambda!162589))))

(assert (=> b!4465506 (=> (not res!1852368) (not e!2780659))))

(assert (=> b!4465506 e!2780659))

(declare-fun lt!1655370 () Unit!87113)

(declare-fun Unit!87258 () Unit!87113)

(assert (=> b!4465506 (= lt!1655370 Unit!87258)))

(assert (= (and d!1361696 c!759997) b!4465504))

(assert (= (and d!1361696 (not c!759997)) b!4465506))

(assert (= (and b!4465506 res!1852368) b!4465503))

(assert (= (or b!4465504 b!4465506) bm!310856))

(assert (= (or b!4465504 b!4465506) bm!310857))

(assert (= (or b!4465504 b!4465506) bm!310855))

(assert (= (and d!1361696 res!1852367) b!4465502))

(assert (= (and b!4465502 res!1852369) b!4465505))

(declare-fun m!5169991 () Bool)

(assert (=> b!4465506 m!5169991))

(declare-fun m!5169993 () Bool)

(assert (=> b!4465506 m!5169993))

(declare-fun m!5169995 () Bool)

(assert (=> b!4465506 m!5169995))

(declare-fun m!5169997 () Bool)

(assert (=> b!4465506 m!5169997))

(declare-fun m!5169999 () Bool)

(assert (=> b!4465506 m!5169999))

(declare-fun m!5170001 () Bool)

(assert (=> b!4465506 m!5170001))

(declare-fun m!5170003 () Bool)

(assert (=> b!4465506 m!5170003))

(assert (=> b!4465506 m!5168757))

(declare-fun m!5170005 () Bool)

(assert (=> b!4465506 m!5170005))

(assert (=> b!4465506 m!5170003))

(declare-fun m!5170007 () Bool)

(assert (=> b!4465506 m!5170007))

(declare-fun m!5170009 () Bool)

(assert (=> b!4465506 m!5170009))

(declare-fun m!5170011 () Bool)

(assert (=> b!4465506 m!5170011))

(assert (=> b!4465506 m!5168757))

(assert (=> b!4465506 m!5169999))

(declare-fun m!5170013 () Bool)

(assert (=> d!1361696 m!5170013))

(declare-fun m!5170015 () Bool)

(assert (=> d!1361696 m!5170015))

(declare-fun m!5170017 () Bool)

(assert (=> b!4465505 m!5170017))

(assert (=> b!4465503 m!5170007))

(declare-fun m!5170019 () Bool)

(assert (=> b!4465502 m!5170019))

(declare-fun m!5170021 () Bool)

(assert (=> bm!310856 m!5170021))

(assert (=> bm!310855 m!5168757))

(declare-fun m!5170023 () Bool)

(assert (=> bm!310855 m!5170023))

(declare-fun m!5170025 () Bool)

(assert (=> bm!310857 m!5170025))

(assert (=> b!4464747 d!1361696))

(declare-fun bs!792948 () Bool)

(declare-fun d!1361698 () Bool)

(assert (= bs!792948 (and d!1361698 d!1361290)))

(declare-fun lambda!162591 () Int)

(assert (=> bs!792948 (= lambda!162591 lambda!162420)))

(declare-fun bs!792949 () Bool)

(assert (= bs!792949 (and d!1361698 d!1361682)))

(assert (=> bs!792949 (= lambda!162591 lambda!162586)))

(declare-fun bs!792950 () Bool)

(assert (= bs!792950 (and d!1361698 start!438112)))

(assert (=> bs!792950 (= lambda!162591 lambda!162393)))

(declare-fun bs!792951 () Bool)

(assert (= bs!792951 (and d!1361698 d!1361310)))

(assert (=> bs!792951 (= lambda!162591 lambda!162430)))

(declare-fun bs!792952 () Bool)

(assert (= bs!792952 (and d!1361698 d!1361326)))

(assert (=> bs!792952 (= lambda!162591 lambda!162435)))

(declare-fun bs!792953 () Bool)

(assert (= bs!792953 (and d!1361698 d!1361456)))

(assert (=> bs!792953 (= lambda!162591 lambda!162536)))

(declare-fun bs!792954 () Bool)

(assert (= bs!792954 (and d!1361698 d!1361672)))

(assert (=> bs!792954 (= lambda!162591 lambda!162585)))

(declare-fun bs!792955 () Bool)

(assert (= bs!792955 (and d!1361698 d!1361308)))

(assert (=> bs!792955 (not (= lambda!162591 lambda!162429))))

(declare-fun bs!792956 () Bool)

(assert (= bs!792956 (and d!1361698 d!1361484)))

(assert (=> bs!792956 (= lambda!162591 lambda!162555)))

(declare-fun bs!792957 () Bool)

(assert (= bs!792957 (and d!1361698 d!1361474)))

(assert (=> bs!792957 (= lambda!162591 lambda!162545)))

(declare-fun bs!792958 () Bool)

(assert (= bs!792958 (and d!1361698 d!1361218)))

(assert (=> bs!792958 (= lambda!162591 lambda!162399)))

(declare-fun bs!792959 () Bool)

(assert (= bs!792959 (and d!1361698 d!1361316)))

(assert (=> bs!792959 (= lambda!162591 lambda!162432)))

(declare-fun bs!792960 () Bool)

(assert (= bs!792960 (and d!1361698 d!1361312)))

(assert (=> bs!792960 (= lambda!162591 lambda!162431)))

(declare-fun bs!792961 () Bool)

(assert (= bs!792961 (and d!1361698 d!1361298)))

(assert (=> bs!792961 (= lambda!162591 lambda!162426)))

(declare-fun lt!1655383 () ListMap!3301)

(assert (=> d!1361698 (invariantList!919 (toList!4040 lt!1655383))))

(declare-fun e!2780662 () ListMap!3301)

(assert (=> d!1361698 (= lt!1655383 e!2780662)))

(declare-fun c!759998 () Bool)

(assert (=> d!1361698 (= c!759998 ((_ is Cons!50261) (t!357335 (Cons!50261 lt!1654653 Nil!50261))))))

(assert (=> d!1361698 (forall!9966 (t!357335 (Cons!50261 lt!1654653 Nil!50261)) lambda!162591)))

(assert (=> d!1361698 (= (extractMap!1072 (t!357335 (Cons!50261 lt!1654653 Nil!50261))) lt!1655383)))

(declare-fun b!4465507 () Bool)

(assert (=> b!4465507 (= e!2780662 (addToMapMapFromBucket!581 (_2!28544 (h!56016 (t!357335 (Cons!50261 lt!1654653 Nil!50261)))) (extractMap!1072 (t!357335 (t!357335 (Cons!50261 lt!1654653 Nil!50261))))))))

(declare-fun b!4465508 () Bool)

(assert (=> b!4465508 (= e!2780662 (ListMap!3302 Nil!50260))))

(assert (= (and d!1361698 c!759998) b!4465507))

(assert (= (and d!1361698 (not c!759998)) b!4465508))

(declare-fun m!5170027 () Bool)

(assert (=> d!1361698 m!5170027))

(declare-fun m!5170029 () Bool)

(assert (=> d!1361698 m!5170029))

(declare-fun m!5170031 () Bool)

(assert (=> b!4465507 m!5170031))

(assert (=> b!4465507 m!5170031))

(declare-fun m!5170033 () Bool)

(assert (=> b!4465507 m!5170033))

(assert (=> b!4464747 d!1361698))

(declare-fun d!1361700 () Bool)

(declare-fun res!1852370 () Bool)

(declare-fun e!2780663 () Bool)

(assert (=> d!1361700 (=> res!1852370 e!2780663)))

(assert (=> d!1361700 (= res!1852370 (and ((_ is Cons!50260) (t!357334 newBucket!178)) (= (_1!28543 (h!56015 (t!357334 newBucket!178))) (_1!28543 (h!56015 newBucket!178)))))))

(assert (=> d!1361700 (= (containsKey!1444 (t!357334 newBucket!178) (_1!28543 (h!56015 newBucket!178))) e!2780663)))

(declare-fun b!4465509 () Bool)

(declare-fun e!2780664 () Bool)

(assert (=> b!4465509 (= e!2780663 e!2780664)))

(declare-fun res!1852371 () Bool)

(assert (=> b!4465509 (=> (not res!1852371) (not e!2780664))))

(assert (=> b!4465509 (= res!1852371 ((_ is Cons!50260) (t!357334 newBucket!178)))))

(declare-fun b!4465510 () Bool)

(assert (=> b!4465510 (= e!2780664 (containsKey!1444 (t!357334 (t!357334 newBucket!178)) (_1!28543 (h!56015 newBucket!178))))))

(assert (= (and d!1361700 (not res!1852370)) b!4465509))

(assert (= (and b!4465509 res!1852371) b!4465510))

(declare-fun m!5170035 () Bool)

(assert (=> b!4465510 m!5170035))

(assert (=> b!4464736 d!1361700))

(assert (=> b!4464763 d!1361514))

(declare-fun d!1361702 () Bool)

(assert (=> d!1361702 (containsKey!1448 (toList!4040 (extractMap!1072 lt!1654655)) key!3287)))

(declare-fun lt!1655384 () Unit!87113)

(assert (=> d!1361702 (= lt!1655384 (choose!28494 (toList!4040 (extractMap!1072 lt!1654655)) key!3287))))

(assert (=> d!1361702 (invariantList!919 (toList!4040 (extractMap!1072 lt!1654655)))))

(assert (=> d!1361702 (= (lemmaInGetKeysListThenContainsKey!366 (toList!4040 (extractMap!1072 lt!1654655)) key!3287) lt!1655384)))

(declare-fun bs!792962 () Bool)

(assert (= bs!792962 d!1361702))

(assert (=> bs!792962 m!5168797))

(declare-fun m!5170037 () Bool)

(assert (=> bs!792962 m!5170037))

(assert (=> bs!792962 m!5169707))

(assert (=> b!4464763 d!1361702))

(declare-fun d!1361704 () Bool)

(assert (=> d!1361704 (= (invariantList!919 (toList!4040 lt!1654808)) (noDuplicatedKeys!206 (toList!4040 lt!1654808)))))

(declare-fun bs!792963 () Bool)

(assert (= bs!792963 d!1361704))

(declare-fun m!5170039 () Bool)

(assert (=> bs!792963 m!5170039))

(assert (=> d!1361316 d!1361704))

(declare-fun d!1361706 () Bool)

(declare-fun res!1852372 () Bool)

(declare-fun e!2780665 () Bool)

(assert (=> d!1361706 (=> res!1852372 e!2780665)))

(assert (=> d!1361706 (= res!1852372 ((_ is Nil!50261) (Cons!50261 lt!1654653 Nil!50261)))))

(assert (=> d!1361706 (= (forall!9966 (Cons!50261 lt!1654653 Nil!50261) lambda!162432) e!2780665)))

(declare-fun b!4465511 () Bool)

(declare-fun e!2780666 () Bool)

(assert (=> b!4465511 (= e!2780665 e!2780666)))

(declare-fun res!1852373 () Bool)

(assert (=> b!4465511 (=> (not res!1852373) (not e!2780666))))

(assert (=> b!4465511 (= res!1852373 (dynLambda!20998 lambda!162432 (h!56016 (Cons!50261 lt!1654653 Nil!50261))))))

(declare-fun b!4465512 () Bool)

(assert (=> b!4465512 (= e!2780666 (forall!9966 (t!357335 (Cons!50261 lt!1654653 Nil!50261)) lambda!162432))))

(assert (= (and d!1361706 (not res!1852372)) b!4465511))

(assert (= (and b!4465511 res!1852373) b!4465512))

(declare-fun b_lambda!148029 () Bool)

(assert (=> (not b_lambda!148029) (not b!4465511)))

(declare-fun m!5170041 () Bool)

(assert (=> b!4465511 m!5170041))

(declare-fun m!5170043 () Bool)

(assert (=> b!4465512 m!5170043))

(assert (=> d!1361316 d!1361706))

(assert (=> bs!792496 d!1361680))

(declare-fun d!1361708 () Bool)

(declare-fun res!1852374 () Bool)

(declare-fun e!2780667 () Bool)

(assert (=> d!1361708 (=> res!1852374 e!2780667)))

(assert (=> d!1361708 (= res!1852374 (and ((_ is Cons!50260) (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477))))) (= (_1!28543 (h!56015 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477)))))) key!3287)))))

(assert (=> d!1361708 (= (containsKey!1444 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477)))) key!3287) e!2780667)))

(declare-fun b!4465513 () Bool)

(declare-fun e!2780668 () Bool)

(assert (=> b!4465513 (= e!2780667 e!2780668)))

(declare-fun res!1852375 () Bool)

(assert (=> b!4465513 (=> (not res!1852375) (not e!2780668))))

(assert (=> b!4465513 (= res!1852375 ((_ is Cons!50260) (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477))))))))

(declare-fun b!4465514 () Bool)

(assert (=> b!4465514 (= e!2780668 (containsKey!1444 (t!357334 (t!357334 (_2!28544 (h!56016 (toList!4039 lm!1477))))) key!3287))))

(assert (= (and d!1361708 (not res!1852374)) b!4465513))

(assert (= (and b!4465513 res!1852375) b!4465514))

(declare-fun m!5170045 () Bool)

(assert (=> b!4465514 m!5170045))

(assert (=> b!4464722 d!1361708))

(declare-fun e!2780669 () Bool)

(declare-fun b!4465515 () Bool)

(declare-fun tp!1336104 () Bool)

(assert (=> b!4465515 (= e!2780669 (and tp_is_empty!27341 tp_is_empty!27343 tp!1336104))))

(assert (=> b!4464768 (= tp!1336093 e!2780669)))

(assert (= (and b!4464768 ((_ is Cons!50260) (t!357334 (t!357334 newBucket!178)))) b!4465515))

(declare-fun b!4465516 () Bool)

(declare-fun tp!1336105 () Bool)

(declare-fun e!2780670 () Bool)

(assert (=> b!4465516 (= e!2780670 (and tp_is_empty!27341 tp_is_empty!27343 tp!1336105))))

(assert (=> b!4464773 (= tp!1336098 e!2780670)))

(assert (= (and b!4464773 ((_ is Cons!50260) (_2!28544 (h!56016 (toList!4039 lm!1477))))) b!4465516))

(declare-fun b!4465517 () Bool)

(declare-fun e!2780671 () Bool)

(declare-fun tp!1336106 () Bool)

(declare-fun tp!1336107 () Bool)

(assert (=> b!4465517 (= e!2780671 (and tp!1336106 tp!1336107))))

(assert (=> b!4464773 (= tp!1336099 e!2780671)))

(assert (= (and b!4464773 ((_ is Cons!50261) (t!357335 (toList!4039 lm!1477)))) b!4465517))

(declare-fun b_lambda!148031 () Bool)

(assert (= b_lambda!147977 (or d!1361312 b_lambda!148031)))

(declare-fun bs!792964 () Bool)

(declare-fun d!1361710 () Bool)

(assert (= bs!792964 (and d!1361710 d!1361312)))

(assert (=> bs!792964 (= (dynLambda!20998 lambda!162431 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (Cons!50261 (tuple2!50501 hash!344 (_2!28544 (h!56016 (toList!4039 lm!1477)))) Nil!50261)))))))

(assert (=> bs!792964 m!5169237))

(assert (=> b!4465101 d!1361710))

(declare-fun b_lambda!148033 () Bool)

(assert (= b_lambda!148023 (or d!1361298 b_lambda!148033)))

(declare-fun bs!792965 () Bool)

(declare-fun d!1361712 () Bool)

(assert (= bs!792965 (and d!1361712 d!1361298)))

(assert (=> bs!792965 (= (dynLambda!20998 lambda!162426 (h!56016 (toList!4039 lm!1477))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(assert (=> bs!792965 m!5168767))

(assert (=> b!4465470 d!1361712))

(declare-fun b_lambda!148035 () Bool)

(assert (= b_lambda!147985 (or d!1361218 b_lambda!148035)))

(declare-fun bs!792966 () Bool)

(declare-fun d!1361714 () Bool)

(assert (= bs!792966 (and d!1361714 d!1361218)))

(assert (=> bs!792966 (= (dynLambda!20998 lambda!162399 (h!56016 (toList!4039 lm!1477))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(assert (=> bs!792966 m!5168767))

(assert (=> b!4465143 d!1361714))

(declare-fun b_lambda!148037 () Bool)

(assert (= b_lambda!147979 (or d!1361310 b_lambda!148037)))

(declare-fun bs!792967 () Bool)

(declare-fun d!1361716 () Bool)

(assert (= bs!792967 (and d!1361716 d!1361310)))

(assert (=> bs!792967 (= (dynLambda!20998 lambda!162430 (h!56016 lt!1654655)) (noDuplicateKeys!1016 (_2!28544 (h!56016 lt!1654655))))))

(assert (=> bs!792967 m!5169325))

(assert (=> b!4465103 d!1361716))

(declare-fun b_lambda!148039 () Bool)

(assert (= b_lambda!148029 (or d!1361316 b_lambda!148039)))

(declare-fun bs!792968 () Bool)

(declare-fun d!1361718 () Bool)

(assert (= bs!792968 (and d!1361718 d!1361316)))

(assert (=> bs!792968 (= (dynLambda!20998 lambda!162432 (h!56016 (Cons!50261 lt!1654653 Nil!50261))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (Cons!50261 lt!1654653 Nil!50261)))))))

(assert (=> bs!792968 m!5170015))

(assert (=> b!4465511 d!1361718))

(declare-fun b_lambda!148041 () Bool)

(assert (= b_lambda!147987 (or d!1361308 b_lambda!148041)))

(declare-fun bs!792969 () Bool)

(declare-fun d!1361720 () Bool)

(assert (= bs!792969 (and d!1361720 d!1361308)))

(assert (=> bs!792969 (= (dynLambda!20998 lambda!162429 (h!56016 (toList!4039 lm!1477))) (allKeysSameHash!870 (_2!28544 (h!56016 (toList!4039 lm!1477))) (_1!28544 (h!56016 (toList!4039 lm!1477))) hashF!1107))))

(declare-fun m!5170047 () Bool)

(assert (=> bs!792969 m!5170047))

(assert (=> b!4465325 d!1361720))

(declare-fun b_lambda!148043 () Bool)

(assert (= b_lambda!148025 (or d!1361326 b_lambda!148043)))

(declare-fun bs!792970 () Bool)

(declare-fun d!1361722 () Bool)

(assert (= bs!792970 (and d!1361722 d!1361326)))

(assert (=> bs!792970 (= (dynLambda!20998 lambda!162435 (h!56016 (toList!4039 (ListLongMap!2672 lt!1654655)))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 (ListLongMap!2672 lt!1654655))))))))

(declare-fun m!5170049 () Bool)

(assert (=> bs!792970 m!5170049))

(assert (=> b!4465483 d!1361722))

(declare-fun b_lambda!148045 () Bool)

(assert (= b_lambda!147983 (or start!438112 b_lambda!148045)))

(declare-fun bs!792971 () Bool)

(declare-fun d!1361724 () Bool)

(assert (= bs!792971 (and d!1361724 start!438112)))

(assert (=> bs!792971 (= (dynLambda!20998 lambda!162393 (h!56016 (t!357335 (toList!4039 lm!1477)))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (t!357335 (toList!4039 lm!1477))))))))

(declare-fun m!5170051 () Bool)

(assert (=> bs!792971 m!5170051))

(assert (=> b!4465138 d!1361724))

(declare-fun b_lambda!148047 () Bool)

(assert (= b_lambda!147975 (or d!1361290 b_lambda!148047)))

(declare-fun bs!792972 () Bool)

(declare-fun d!1361726 () Bool)

(assert (= bs!792972 (and d!1361726 d!1361290)))

(assert (=> bs!792972 (= (dynLambda!20998 lambda!162420 (h!56016 (toList!4039 lm!1477))) (noDuplicateKeys!1016 (_2!28544 (h!56016 (toList!4039 lm!1477)))))))

(assert (=> bs!792972 m!5168767))

(assert (=> b!4465095 d!1361726))

(declare-fun b_lambda!148049 () Bool)

(assert (= b_lambda!147991 (or d!1361296 b_lambda!148049)))

(declare-fun bs!792973 () Bool)

(declare-fun d!1361728 () Bool)

(assert (= bs!792973 (and d!1361728 d!1361296)))

(assert (=> bs!792973 (= (dynLambda!21000 lambda!162423 (h!56015 newBucket!178)) (= (hash!2415 hashF!1107 (_1!28543 (h!56015 newBucket!178))) hash!344))))

(declare-fun m!5170053 () Bool)

(assert (=> bs!792973 m!5170053))

(assert (=> b!4465367 d!1361728))

(declare-fun b_lambda!148051 () Bool)

(assert (= b_lambda!148027 (or start!438112 b_lambda!148051)))

(assert (=> d!1361692 d!1361332))

(check-sat (not b!4465502) (not b!4465077) (not b!4465231) (not bs!792967) (not b!4465146) (not b!4465140) (not b!4465516) (not d!1361462) (not d!1361548) (not b!4465084) (not d!1361612) (not b!4465081) (not b!4465274) (not b!4465331) (not d!1361518) (not b!4465236) (not b!4465472) (not b!4465068) (not b!4465490) (not d!1361690) (not b!4465380) (not b!4465443) (not d!1361516) (not b!4465326) (not b!4465096) (not d!1361678) (not bm!310797) (not b!4465102) (not b!4465452) (not b!4465503) (not bm!310856) (not b!4465451) (not b!4465059) (not d!1361500) (not b_lambda!148041) (not b!4465191) (not bm!310849) (not b!4464978) (not bs!792970) (not d!1361704) (not b!4464993) (not bm!310791) (not b!4465501) (not b!4465341) (not d!1361510) (not b!4465445) (not b!4465148) (not b!4465221) (not b!4465447) (not d!1361540) (not b!4465337) (not b!4464971) (not b!4465515) tp_is_empty!27343 (not bm!310852) (not b!4465475) (not b!4465189) (not b!4465316) (not d!1361532) (not d!1361524) (not bm!310793) (not bm!310788) (not b!4465267) (not b!4465480) (not b!4465481) (not d!1361698) (not bm!310857) (not d!1361598) (not b!4465222) (not b_lambda!148039) (not b!4465345) (not d!1361552) (not bm!310853) (not b!4465328) (not b!4465069) (not d!1361664) (not b!4465043) (not b_lambda!147963) (not bm!310830) (not d!1361670) (not d!1361582) (not b_lambda!148047) (not b!4465375) (not bm!310798) (not d!1361684) (not b!4465042) (not b!4465139) (not b_lambda!148043) (not b!4465376) (not b!4465507) (not bs!792968) (not b!4465237) (not b!4464979) (not b!4465486) (not b_lambda!148035) (not b!4465235) (not b_lambda!148051) (not b!4465039) (not b!4465232) (not b!4465512) (not b!4465332) (not b!4465484) (not b!4465461) (not bm!310799) (not d!1361672) (not b_lambda!148031) (not b_lambda!148033) (not b!4465385) (not b!4465262) (not d!1361480) (not b!4465065) (not d!1361702) (not b!4465492) (not b!4465449) (not b!4465362) (not b!4465091) (not b!4465477) (not b!4465085) (not b!4465506) (not b!4465339) (not b!4465473) (not d!1361568) (not b_lambda!147961) (not bm!310855) (not b!4465183) (not bs!792965) (not b!4465238) (not b!4465260) (not b!4465495) (not b!4465137) (not b!4465264) (not b!4465388) (not d!1361674) (not b!4465320) (not b!4465384) (not b!4465446) (not b_lambda!148045) (not b!4465230) (not b!4465119) (not b!4465505) (not b!4465040) (not bm!310835) (not d!1361486) (not b!4465387) (not d!1361528) (not b!4465190) (not b_lambda!148049) (not d!1361580) (not b!4465330) (not b!4465224) (not d!1361594) (not b!4465066) (not bm!310850) (not d!1361666) (not b!4465142) (not b!4465082) (not d!1361492) (not b!4465334) (not b!4465273) (not bm!310851) (not d!1361556) (not b!4465360) (not b!4465233) (not b!4465464) (not b!4465186) (not b!4465514) (not d!1361622) (not b!4465354) (not b!4465372) (not bm!310789) (not b!4465368) (not d!1361544) (not d!1361696) (not d!1361578) (not b!4464980) (not b!4465104) (not bs!792969) (not b!4465458) (not b!4465467) (not b!4465517) (not b!4465147) (not b!4465223) (not b_lambda!148037) (not d!1361456) (not bs!792971) (not bm!310848) (not d!1361656) (not b!4465130) (not d!1361522) (not b!4465377) (not d!1361474) (not d!1361608) (not b!4465327) (not d!1361484) (not b!4465485) (not b!4465457) (not d!1361686) (not b!4465099) (not d!1361420) (not bs!792966) (not d!1361682) (not d!1361422) (not bs!792972) (not bm!310790) (not bs!792973) (not b!4465469) (not b!4465383) (not b!4465479) (not d!1361662) (not d!1361600) tp_is_empty!27341 (not b!4465369) (not b!4465471) (not b!4465510) (not bs!792964) (not b!4465321) (not d!1361688) (not d!1361494) (not b!4465144) (not d!1361536) (not b!4465476) (not d!1361426) (not bm!310854) (not bm!310792) (not b!4465487) (not b!4465381))
(check-sat)
