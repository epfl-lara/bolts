; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439844 () Bool)

(assert start!439844)

(declare-fun res!1856390 () Bool)

(declare-fun e!2785726 () Bool)

(assert (=> start!439844 (=> (not res!1856390) (not e!2785726))))

(declare-datatypes ((K!11745 0))(
  ( (K!11746 (val!17667 Int)) )
))
(declare-datatypes ((V!11991 0))(
  ( (V!11992 (val!17668 Int)) )
))
(declare-datatypes ((tuple2!50602 0))(
  ( (tuple2!50603 (_1!28595 K!11745) (_2!28595 V!11991)) )
))
(declare-datatypes ((List!50454 0))(
  ( (Nil!50330) (Cons!50330 (h!56103 tuple2!50602) (t!357404 List!50454)) )
))
(declare-datatypes ((tuple2!50604 0))(
  ( (tuple2!50605 (_1!28596 (_ BitVec 64)) (_2!28596 List!50454)) )
))
(declare-datatypes ((List!50455 0))(
  ( (Nil!50331) (Cons!50331 (h!56104 tuple2!50604) (t!357405 List!50455)) )
))
(declare-datatypes ((ListLongMap!2723 0))(
  ( (ListLongMap!2724 (toList!4091 List!50455)) )
))
(declare-fun lm!1477 () ListLongMap!2723)

(declare-fun lambda!163983 () Int)

(declare-fun forall!10022 (List!50455 Int) Bool)

(assert (=> start!439844 (= res!1856390 (forall!10022 (toList!4091 lm!1477) lambda!163983))))

(assert (=> start!439844 e!2785726))

(assert (=> start!439844 true))

(declare-fun e!2785722 () Bool)

(declare-fun inv!65929 (ListLongMap!2723) Bool)

(assert (=> start!439844 (and (inv!65929 lm!1477) e!2785722)))

(declare-fun tp_is_empty!27445 () Bool)

(assert (=> start!439844 tp_is_empty!27445))

(declare-fun e!2785725 () Bool)

(assert (=> start!439844 e!2785725))

(declare-fun b!4473476 () Bool)

(declare-fun e!2785721 () Bool)

(declare-fun e!2785717 () Bool)

(assert (=> b!4473476 (= e!2785721 e!2785717)))

(declare-fun res!1856388 () Bool)

(assert (=> b!4473476 (=> res!1856388 e!2785717)))

(declare-fun lt!1661401 () Bool)

(assert (=> b!4473476 (= res!1856388 lt!1661401)))

(declare-datatypes ((Unit!88293 0))(
  ( (Unit!88294) )
))
(declare-fun lt!1661405 () Unit!88293)

(declare-fun e!2785728 () Unit!88293)

(assert (=> b!4473476 (= lt!1661405 e!2785728)))

(declare-fun c!761724 () Bool)

(assert (=> b!4473476 (= c!761724 lt!1661401)))

(declare-datatypes ((ListMap!3353 0))(
  ( (ListMap!3354 (toList!4092 List!50454)) )
))
(declare-fun lt!1661396 () ListMap!3353)

(declare-fun key!3287 () K!11745)

(declare-fun contains!12903 (ListMap!3353 K!11745) Bool)

(assert (=> b!4473476 (= lt!1661401 (contains!12903 lt!1661396 key!3287))))

(declare-fun b!4473477 () Bool)

(declare-fun Unit!88295 () Unit!88293)

(assert (=> b!4473477 (= e!2785728 Unit!88295)))

(declare-datatypes ((Hashable!5437 0))(
  ( (HashableExt!5436 (__x!31140 Int)) )
))
(declare-fun hashF!1107 () Hashable!5437)

(declare-fun lt!1661402 () ListLongMap!2723)

(declare-fun lt!1661388 () Unit!88293)

(declare-fun lemmaInGenMapThenLongMapContainsHash!116 (ListLongMap!2723 K!11745 Hashable!5437) Unit!88293)

(assert (=> b!4473477 (= lt!1661388 (lemmaInGenMapThenLongMapContainsHash!116 lt!1661402 key!3287 hashF!1107))))

(declare-fun res!1856400 () Bool)

(declare-fun lt!1661400 () (_ BitVec 64))

(declare-fun contains!12904 (ListLongMap!2723 (_ BitVec 64)) Bool)

(assert (=> b!4473477 (= res!1856400 (contains!12904 lt!1661402 lt!1661400))))

(declare-fun e!2785720 () Bool)

(assert (=> b!4473477 (=> (not res!1856400) (not e!2785720))))

(assert (=> b!4473477 e!2785720))

(declare-fun b!4473478 () Bool)

(declare-fun e!2785727 () Bool)

(declare-fun e!2785723 () Bool)

(assert (=> b!4473478 (= e!2785727 e!2785723)))

(declare-fun res!1856392 () Bool)

(assert (=> b!4473478 (=> res!1856392 e!2785723)))

(declare-fun lt!1661395 () ListLongMap!2723)

(declare-fun tail!7536 (List!50455) List!50455)

(assert (=> b!4473478 (= res!1856392 (not (= (t!357405 (toList!4091 lm!1477)) (tail!7536 (toList!4091 lt!1661395)))))))

(declare-fun lt!1661403 () tuple2!50604)

(declare-fun +!1390 (ListLongMap!2723 tuple2!50604) ListLongMap!2723)

(assert (=> b!4473478 (= lt!1661395 (+!1390 lm!1477 lt!1661403))))

(declare-fun lt!1661389 () tuple2!50604)

(declare-fun eq!535 (ListMap!3353 ListMap!3353) Bool)

(declare-fun extractMap!1098 (List!50455) ListMap!3353)

(declare-fun -!304 (ListMap!3353 K!11745) ListMap!3353)

(assert (=> b!4473478 (eq!535 (extractMap!1098 (Cons!50331 lt!1661403 Nil!50331)) (-!304 (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331)) key!3287))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4473478 (= lt!1661389 (tuple2!50605 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477)))))))

(declare-fun newBucket!178 () List!50454)

(assert (=> b!4473478 (= lt!1661403 (tuple2!50605 hash!344 newBucket!178))))

(declare-fun lt!1661387 () Unit!88293)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!34 ((_ BitVec 64) List!50454 List!50454 K!11745 Hashable!5437) Unit!88293)

(assert (=> b!4473478 (= lt!1661387 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!34 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1661406 () List!50455)

(assert (=> b!4473478 (contains!12903 (extractMap!1098 lt!1661406) key!3287)))

(declare-fun lt!1661394 () Unit!88293)

(declare-fun lemmaListContainsThenExtractedMapContains!38 (ListLongMap!2723 K!11745 Hashable!5437) Unit!88293)

(assert (=> b!4473478 (= lt!1661394 (lemmaListContainsThenExtractedMapContains!38 (ListLongMap!2724 lt!1661406) key!3287 hashF!1107))))

(declare-fun b!4473479 () Bool)

(declare-fun e!2785729 () Bool)

(assert (=> b!4473479 (= e!2785729 e!2785721)))

(declare-fun res!1856396 () Bool)

(assert (=> b!4473479 (=> res!1856396 e!2785721)))

(assert (=> b!4473479 (= res!1856396 (not (= lt!1661396 (extractMap!1098 (t!357405 (toList!4091 lm!1477))))))))

(assert (=> b!4473479 (= lt!1661396 (extractMap!1098 (toList!4091 lt!1661402)))))

(declare-fun b!4473480 () Bool)

(declare-fun res!1856394 () Bool)

(declare-fun e!2785715 () Bool)

(assert (=> b!4473480 (=> res!1856394 e!2785715)))

(get-info :version)

(assert (=> b!4473480 (= res!1856394 (or ((_ is Nil!50331) (toList!4091 lm!1477)) (not (= (_1!28596 (h!56104 (toList!4091 lm!1477))) hash!344))))))

(declare-fun b!4473481 () Bool)

(declare-fun e!2785718 () Bool)

(assert (=> b!4473481 (= e!2785726 e!2785718)))

(declare-fun res!1856401 () Bool)

(assert (=> b!4473481 (=> (not res!1856401) (not e!2785718))))

(assert (=> b!4473481 (= res!1856401 (= lt!1661400 hash!344))))

(declare-fun hash!2489 (Hashable!5437 K!11745) (_ BitVec 64))

(assert (=> b!4473481 (= lt!1661400 (hash!2489 hashF!1107 key!3287))))

(declare-fun b!4473482 () Bool)

(declare-fun res!1856395 () Bool)

(assert (=> b!4473482 (=> (not res!1856395) (not e!2785726))))

(declare-fun allKeysSameHashInMap!1149 (ListLongMap!2723 Hashable!5437) Bool)

(assert (=> b!4473482 (= res!1856395 (allKeysSameHashInMap!1149 lm!1477 hashF!1107))))

(declare-fun b!4473483 () Bool)

(declare-fun e!2785716 () Unit!88293)

(declare-fun Unit!88296 () Unit!88293)

(assert (=> b!4473483 (= e!2785716 Unit!88296)))

(declare-fun lt!1661391 () Unit!88293)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!42 (ListLongMap!2723 K!11745 Hashable!5437) Unit!88293)

(assert (=> b!4473483 (= lt!1661391 (lemmaNotInItsHashBucketThenNotInMap!42 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4473483 false))

(declare-fun b!4473484 () Bool)

(declare-fun Unit!88297 () Unit!88293)

(assert (=> b!4473484 (= e!2785728 Unit!88297)))

(declare-fun b!4473485 () Bool)

(declare-fun e!2785724 () Bool)

(assert (=> b!4473485 (= e!2785724 (forall!10022 (toList!4091 lt!1661395) lambda!163983))))

(declare-fun b!4473486 () Bool)

(declare-fun e!2785719 () Bool)

(assert (=> b!4473486 (= e!2785719 e!2785727)))

(declare-fun res!1856397 () Bool)

(assert (=> b!4473486 (=> res!1856397 e!2785727)))

(declare-fun containsKeyBiggerList!42 (List!50455 K!11745) Bool)

(assert (=> b!4473486 (= res!1856397 (not (containsKeyBiggerList!42 lt!1661406 key!3287)))))

(assert (=> b!4473486 (= lt!1661406 (Cons!50331 (h!56104 (toList!4091 lm!1477)) Nil!50331))))

(declare-fun b!4473487 () Bool)

(declare-fun res!1856399 () Bool)

(assert (=> b!4473487 (=> (not res!1856399) (not e!2785718))))

(declare-fun allKeysSameHash!896 (List!50454 (_ BitVec 64) Hashable!5437) Bool)

(assert (=> b!4473487 (= res!1856399 (allKeysSameHash!896 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4473488 () Bool)

(assert (=> b!4473488 (= e!2785715 e!2785719)))

(declare-fun res!1856389 () Bool)

(assert (=> b!4473488 (=> res!1856389 e!2785719)))

(declare-fun lt!1661393 () Bool)

(assert (=> b!4473488 (= res!1856389 lt!1661393)))

(declare-fun lt!1661397 () Unit!88293)

(assert (=> b!4473488 (= lt!1661397 e!2785716)))

(declare-fun c!761723 () Bool)

(assert (=> b!4473488 (= c!761723 lt!1661393)))

(declare-fun containsKey!1506 (List!50454 K!11745) Bool)

(assert (=> b!4473488 (= lt!1661393 (not (containsKey!1506 (_2!28596 (h!56104 (toList!4091 lm!1477))) key!3287)))))

(declare-fun b!4473489 () Bool)

(assert (=> b!4473489 (= e!2785723 e!2785729)))

(declare-fun res!1856387 () Bool)

(assert (=> b!4473489 (=> res!1856387 e!2785729)))

(assert (=> b!4473489 (= res!1856387 (not (= lt!1661395 (+!1390 lt!1661402 lt!1661403))))))

(declare-fun tail!7537 (ListLongMap!2723) ListLongMap!2723)

(assert (=> b!4473489 (= lt!1661402 (tail!7537 lm!1477))))

(declare-fun tp_is_empty!27447 () Bool)

(declare-fun b!4473490 () Bool)

(declare-fun tp!1336446 () Bool)

(assert (=> b!4473490 (= e!2785725 (and tp_is_empty!27445 tp_is_empty!27447 tp!1336446))))

(declare-fun b!4473491 () Bool)

(assert (=> b!4473491 (= e!2785718 (not e!2785715))))

(declare-fun res!1856393 () Bool)

(assert (=> b!4473491 (=> res!1856393 e!2785715)))

(declare-fun lt!1661392 () List!50454)

(declare-fun removePairForKey!669 (List!50454 K!11745) List!50454)

(assert (=> b!4473491 (= res!1856393 (not (= newBucket!178 (removePairForKey!669 lt!1661392 key!3287))))))

(declare-fun lt!1661390 () tuple2!50604)

(declare-fun lt!1661407 () Unit!88293)

(declare-fun forallContained!2287 (List!50455 Int tuple2!50604) Unit!88293)

(assert (=> b!4473491 (= lt!1661407 (forallContained!2287 (toList!4091 lm!1477) lambda!163983 lt!1661390))))

(declare-fun contains!12905 (List!50455 tuple2!50604) Bool)

(assert (=> b!4473491 (contains!12905 (toList!4091 lm!1477) lt!1661390)))

(assert (=> b!4473491 (= lt!1661390 (tuple2!50605 hash!344 lt!1661392))))

(declare-fun lt!1661399 () Unit!88293)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!554 (List!50455 (_ BitVec 64) List!50454) Unit!88293)

(assert (=> b!4473491 (= lt!1661399 (lemmaGetValueByKeyImpliesContainsTuple!554 (toList!4091 lm!1477) hash!344 lt!1661392))))

(declare-fun apply!11779 (ListLongMap!2723 (_ BitVec 64)) List!50454)

(assert (=> b!4473491 (= lt!1661392 (apply!11779 lm!1477 hash!344))))

(assert (=> b!4473491 (contains!12904 lm!1477 lt!1661400)))

(declare-fun lt!1661404 () Unit!88293)

(assert (=> b!4473491 (= lt!1661404 (lemmaInGenMapThenLongMapContainsHash!116 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4473492 () Bool)

(declare-fun Unit!88298 () Unit!88293)

(assert (=> b!4473492 (= e!2785716 Unit!88298)))

(declare-fun b!4473493 () Bool)

(declare-fun res!1856391 () Bool)

(assert (=> b!4473493 (=> (not res!1856391) (not e!2785726))))

(assert (=> b!4473493 (= res!1856391 (contains!12903 (extractMap!1098 (toList!4091 lm!1477)) key!3287))))

(declare-fun b!4473494 () Bool)

(assert (=> b!4473494 (= e!2785717 e!2785724)))

(declare-fun res!1856398 () Bool)

(assert (=> b!4473494 (=> res!1856398 e!2785724)))

(assert (=> b!4473494 (= res!1856398 (not (= (toList!4091 lt!1661395) (Cons!50331 lt!1661403 (t!357405 (toList!4091 lm!1477))))))))

(declare-fun lt!1661398 () List!50455)

(assert (=> b!4473494 (eq!535 (extractMap!1098 (Cons!50331 lt!1661403 lt!1661398)) (-!304 (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398)) key!3287))))

(assert (=> b!4473494 (= lt!1661398 (tail!7536 (toList!4091 lm!1477)))))

(declare-fun lt!1661408 () Unit!88293)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!2 (ListLongMap!2723 (_ BitVec 64) List!50454 List!50454 K!11745 Hashable!5437) Unit!88293)

(assert (=> b!4473494 (= lt!1661408 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!2 lm!1477 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4473495 () Bool)

(assert (=> b!4473495 (= e!2785720 false)))

(declare-fun b!4473496 () Bool)

(declare-fun res!1856386 () Bool)

(assert (=> b!4473496 (=> res!1856386 e!2785715)))

(declare-fun noDuplicateKeys!1042 (List!50454) Bool)

(assert (=> b!4473496 (= res!1856386 (not (noDuplicateKeys!1042 newBucket!178)))))

(declare-fun b!4473497 () Bool)

(declare-fun tp!1336447 () Bool)

(assert (=> b!4473497 (= e!2785722 tp!1336447)))

(assert (= (and start!439844 res!1856390) b!4473482))

(assert (= (and b!4473482 res!1856395) b!4473493))

(assert (= (and b!4473493 res!1856391) b!4473481))

(assert (= (and b!4473481 res!1856401) b!4473487))

(assert (= (and b!4473487 res!1856399) b!4473491))

(assert (= (and b!4473491 (not res!1856393)) b!4473496))

(assert (= (and b!4473496 (not res!1856386)) b!4473480))

(assert (= (and b!4473480 (not res!1856394)) b!4473488))

(assert (= (and b!4473488 c!761723) b!4473483))

(assert (= (and b!4473488 (not c!761723)) b!4473492))

(assert (= (and b!4473488 (not res!1856389)) b!4473486))

(assert (= (and b!4473486 (not res!1856397)) b!4473478))

(assert (= (and b!4473478 (not res!1856392)) b!4473489))

(assert (= (and b!4473489 (not res!1856387)) b!4473479))

(assert (= (and b!4473479 (not res!1856396)) b!4473476))

(assert (= (and b!4473476 c!761724) b!4473477))

(assert (= (and b!4473476 (not c!761724)) b!4473484))

(assert (= (and b!4473477 res!1856400) b!4473495))

(assert (= (and b!4473476 (not res!1856388)) b!4473494))

(assert (= (and b!4473494 (not res!1856398)) b!4473485))

(assert (= start!439844 b!4473497))

(assert (= (and start!439844 ((_ is Cons!50330) newBucket!178)) b!4473490))

(declare-fun m!5182665 () Bool)

(assert (=> b!4473479 m!5182665))

(declare-fun m!5182667 () Bool)

(assert (=> b!4473479 m!5182667))

(declare-fun m!5182669 () Bool)

(assert (=> b!4473487 m!5182669))

(declare-fun m!5182671 () Bool)

(assert (=> b!4473481 m!5182671))

(declare-fun m!5182673 () Bool)

(assert (=> b!4473491 m!5182673))

(declare-fun m!5182675 () Bool)

(assert (=> b!4473491 m!5182675))

(declare-fun m!5182677 () Bool)

(assert (=> b!4473491 m!5182677))

(declare-fun m!5182679 () Bool)

(assert (=> b!4473491 m!5182679))

(declare-fun m!5182681 () Bool)

(assert (=> b!4473491 m!5182681))

(declare-fun m!5182683 () Bool)

(assert (=> b!4473491 m!5182683))

(declare-fun m!5182685 () Bool)

(assert (=> b!4473491 m!5182685))

(declare-fun m!5182687 () Bool)

(assert (=> b!4473493 m!5182687))

(assert (=> b!4473493 m!5182687))

(declare-fun m!5182689 () Bool)

(assert (=> b!4473493 m!5182689))

(declare-fun m!5182691 () Bool)

(assert (=> b!4473478 m!5182691))

(declare-fun m!5182693 () Bool)

(assert (=> b!4473478 m!5182693))

(declare-fun m!5182695 () Bool)

(assert (=> b!4473478 m!5182695))

(declare-fun m!5182697 () Bool)

(assert (=> b!4473478 m!5182697))

(assert (=> b!4473478 m!5182693))

(declare-fun m!5182699 () Bool)

(assert (=> b!4473478 m!5182699))

(assert (=> b!4473478 m!5182697))

(declare-fun m!5182701 () Bool)

(assert (=> b!4473478 m!5182701))

(declare-fun m!5182703 () Bool)

(assert (=> b!4473478 m!5182703))

(declare-fun m!5182705 () Bool)

(assert (=> b!4473478 m!5182705))

(assert (=> b!4473478 m!5182695))

(assert (=> b!4473478 m!5182701))

(declare-fun m!5182707 () Bool)

(assert (=> b!4473478 m!5182707))

(declare-fun m!5182709 () Bool)

(assert (=> b!4473478 m!5182709))

(declare-fun m!5182711 () Bool)

(assert (=> b!4473489 m!5182711))

(declare-fun m!5182713 () Bool)

(assert (=> b!4473489 m!5182713))

(declare-fun m!5182715 () Bool)

(assert (=> b!4473488 m!5182715))

(declare-fun m!5182717 () Bool)

(assert (=> b!4473485 m!5182717))

(declare-fun m!5182719 () Bool)

(assert (=> b!4473486 m!5182719))

(declare-fun m!5182721 () Bool)

(assert (=> start!439844 m!5182721))

(declare-fun m!5182723 () Bool)

(assert (=> start!439844 m!5182723))

(declare-fun m!5182725 () Bool)

(assert (=> b!4473477 m!5182725))

(declare-fun m!5182727 () Bool)

(assert (=> b!4473477 m!5182727))

(declare-fun m!5182729 () Bool)

(assert (=> b!4473483 m!5182729))

(declare-fun m!5182731 () Bool)

(assert (=> b!4473482 m!5182731))

(declare-fun m!5182733 () Bool)

(assert (=> b!4473476 m!5182733))

(declare-fun m!5182735 () Bool)

(assert (=> b!4473494 m!5182735))

(declare-fun m!5182737 () Bool)

(assert (=> b!4473494 m!5182737))

(declare-fun m!5182739 () Bool)

(assert (=> b!4473494 m!5182739))

(declare-fun m!5182741 () Bool)

(assert (=> b!4473494 m!5182741))

(assert (=> b!4473494 m!5182735))

(assert (=> b!4473494 m!5182739))

(declare-fun m!5182743 () Bool)

(assert (=> b!4473494 m!5182743))

(assert (=> b!4473494 m!5182737))

(declare-fun m!5182745 () Bool)

(assert (=> b!4473494 m!5182745))

(declare-fun m!5182747 () Bool)

(assert (=> b!4473496 m!5182747))

(check-sat tp_is_empty!27447 (not b!4473477) (not b!4473483) (not b!4473494) (not b!4473476) (not b!4473487) (not b!4473493) (not start!439844) (not b!4473491) (not b!4473489) (not b!4473478) (not b!4473497) tp_is_empty!27445 (not b!4473482) (not b!4473479) (not b!4473490) (not b!4473486) (not b!4473488) (not b!4473485) (not b!4473496) (not b!4473481))
(check-sat)
(get-model)

(declare-fun bs!797455 () Bool)

(declare-fun d!1365231 () Bool)

(assert (= bs!797455 (and d!1365231 start!439844)))

(declare-fun lambda!163993 () Int)

(assert (=> bs!797455 (= lambda!163993 lambda!163983)))

(declare-fun lt!1661426 () ListMap!3353)

(declare-fun invariantList!937 (List!50454) Bool)

(assert (=> d!1365231 (invariantList!937 (toList!4092 lt!1661426))))

(declare-fun e!2785740 () ListMap!3353)

(assert (=> d!1365231 (= lt!1661426 e!2785740)))

(declare-fun c!761733 () Bool)

(assert (=> d!1365231 (= c!761733 ((_ is Cons!50331) (t!357405 (toList!4091 lm!1477))))))

(assert (=> d!1365231 (forall!10022 (t!357405 (toList!4091 lm!1477)) lambda!163993)))

(assert (=> d!1365231 (= (extractMap!1098 (t!357405 (toList!4091 lm!1477))) lt!1661426)))

(declare-fun b!4473516 () Bool)

(declare-fun addToMapMapFromBucket!599 (List!50454 ListMap!3353) ListMap!3353)

(assert (=> b!4473516 (= e!2785740 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (t!357405 (toList!4091 lm!1477)))) (extractMap!1098 (t!357405 (t!357405 (toList!4091 lm!1477))))))))

(declare-fun b!4473517 () Bool)

(assert (=> b!4473517 (= e!2785740 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365231 c!761733) b!4473516))

(assert (= (and d!1365231 (not c!761733)) b!4473517))

(declare-fun m!5182779 () Bool)

(assert (=> d!1365231 m!5182779))

(declare-fun m!5182781 () Bool)

(assert (=> d!1365231 m!5182781))

(declare-fun m!5182783 () Bool)

(assert (=> b!4473516 m!5182783))

(assert (=> b!4473516 m!5182783))

(declare-fun m!5182785 () Bool)

(assert (=> b!4473516 m!5182785))

(assert (=> b!4473479 d!1365231))

(declare-fun bs!797456 () Bool)

(declare-fun d!1365245 () Bool)

(assert (= bs!797456 (and d!1365245 start!439844)))

(declare-fun lambda!163994 () Int)

(assert (=> bs!797456 (= lambda!163994 lambda!163983)))

(declare-fun bs!797457 () Bool)

(assert (= bs!797457 (and d!1365245 d!1365231)))

(assert (=> bs!797457 (= lambda!163994 lambda!163993)))

(declare-fun lt!1661431 () ListMap!3353)

(assert (=> d!1365245 (invariantList!937 (toList!4092 lt!1661431))))

(declare-fun e!2785743 () ListMap!3353)

(assert (=> d!1365245 (= lt!1661431 e!2785743)))

(declare-fun c!761735 () Bool)

(assert (=> d!1365245 (= c!761735 ((_ is Cons!50331) (toList!4091 lt!1661402)))))

(assert (=> d!1365245 (forall!10022 (toList!4091 lt!1661402) lambda!163994)))

(assert (=> d!1365245 (= (extractMap!1098 (toList!4091 lt!1661402)) lt!1661431)))

(declare-fun b!4473521 () Bool)

(assert (=> b!4473521 (= e!2785743 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (toList!4091 lt!1661402))) (extractMap!1098 (t!357405 (toList!4091 lt!1661402)))))))

(declare-fun b!4473522 () Bool)

(assert (=> b!4473522 (= e!2785743 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365245 c!761735) b!4473521))

(assert (= (and d!1365245 (not c!761735)) b!4473522))

(declare-fun m!5182787 () Bool)

(assert (=> d!1365245 m!5182787))

(declare-fun m!5182789 () Bool)

(assert (=> d!1365245 m!5182789))

(declare-fun m!5182791 () Bool)

(assert (=> b!4473521 m!5182791))

(assert (=> b!4473521 m!5182791))

(declare-fun m!5182793 () Bool)

(assert (=> b!4473521 m!5182793))

(assert (=> b!4473479 d!1365245))

(declare-fun d!1365247 () Bool)

(declare-fun e!2785752 () Bool)

(assert (=> d!1365247 e!2785752))

(declare-fun res!1856415 () Bool)

(assert (=> d!1365247 (=> (not res!1856415) (not e!2785752))))

(declare-fun lt!1661458 () ListLongMap!2723)

(assert (=> d!1365247 (= res!1856415 (contains!12904 lt!1661458 (_1!28596 lt!1661403)))))

(declare-fun lt!1661457 () List!50455)

(assert (=> d!1365247 (= lt!1661458 (ListLongMap!2724 lt!1661457))))

(declare-fun lt!1661456 () Unit!88293)

(declare-fun lt!1661455 () Unit!88293)

(assert (=> d!1365247 (= lt!1661456 lt!1661455)))

(declare-datatypes ((Option!10946 0))(
  ( (None!10945) (Some!10945 (v!44291 List!50454)) )
))
(declare-fun getValueByKey!932 (List!50455 (_ BitVec 64)) Option!10946)

(assert (=> d!1365247 (= (getValueByKey!932 lt!1661457 (_1!28596 lt!1661403)) (Some!10945 (_2!28596 lt!1661403)))))

(declare-fun lemmaContainsTupThenGetReturnValue!594 (List!50455 (_ BitVec 64) List!50454) Unit!88293)

(assert (=> d!1365247 (= lt!1661455 (lemmaContainsTupThenGetReturnValue!594 lt!1661457 (_1!28596 lt!1661403) (_2!28596 lt!1661403)))))

(declare-fun insertStrictlySorted!340 (List!50455 (_ BitVec 64) List!50454) List!50455)

(assert (=> d!1365247 (= lt!1661457 (insertStrictlySorted!340 (toList!4091 lt!1661402) (_1!28596 lt!1661403) (_2!28596 lt!1661403)))))

(assert (=> d!1365247 (= (+!1390 lt!1661402 lt!1661403) lt!1661458)))

(declare-fun b!4473539 () Bool)

(declare-fun res!1856416 () Bool)

(assert (=> b!4473539 (=> (not res!1856416) (not e!2785752))))

(assert (=> b!4473539 (= res!1856416 (= (getValueByKey!932 (toList!4091 lt!1661458) (_1!28596 lt!1661403)) (Some!10945 (_2!28596 lt!1661403))))))

(declare-fun b!4473540 () Bool)

(assert (=> b!4473540 (= e!2785752 (contains!12905 (toList!4091 lt!1661458) lt!1661403))))

(assert (= (and d!1365247 res!1856415) b!4473539))

(assert (= (and b!4473539 res!1856416) b!4473540))

(declare-fun m!5182831 () Bool)

(assert (=> d!1365247 m!5182831))

(declare-fun m!5182833 () Bool)

(assert (=> d!1365247 m!5182833))

(declare-fun m!5182835 () Bool)

(assert (=> d!1365247 m!5182835))

(declare-fun m!5182837 () Bool)

(assert (=> d!1365247 m!5182837))

(declare-fun m!5182839 () Bool)

(assert (=> b!4473539 m!5182839))

(declare-fun m!5182841 () Bool)

(assert (=> b!4473540 m!5182841))

(assert (=> b!4473489 d!1365247))

(declare-fun d!1365257 () Bool)

(assert (=> d!1365257 (= (tail!7537 lm!1477) (ListLongMap!2724 (tail!7536 (toList!4091 lm!1477))))))

(declare-fun bs!797473 () Bool)

(assert (= bs!797473 d!1365257))

(assert (=> bs!797473 m!5182745))

(assert (=> b!4473489 d!1365257))

(declare-fun d!1365259 () Bool)

(declare-fun e!2785765 () Bool)

(assert (=> d!1365259 e!2785765))

(declare-fun res!1856423 () Bool)

(assert (=> d!1365259 (=> (not res!1856423) (not e!2785765))))

(declare-fun lt!1661478 () ListLongMap!2723)

(assert (=> d!1365259 (= res!1856423 (contains!12904 lt!1661478 (_1!28596 lt!1661403)))))

(declare-fun lt!1661477 () List!50455)

(assert (=> d!1365259 (= lt!1661478 (ListLongMap!2724 lt!1661477))))

(declare-fun lt!1661476 () Unit!88293)

(declare-fun lt!1661475 () Unit!88293)

(assert (=> d!1365259 (= lt!1661476 lt!1661475)))

(assert (=> d!1365259 (= (getValueByKey!932 lt!1661477 (_1!28596 lt!1661403)) (Some!10945 (_2!28596 lt!1661403)))))

(assert (=> d!1365259 (= lt!1661475 (lemmaContainsTupThenGetReturnValue!594 lt!1661477 (_1!28596 lt!1661403) (_2!28596 lt!1661403)))))

(assert (=> d!1365259 (= lt!1661477 (insertStrictlySorted!340 (toList!4091 lm!1477) (_1!28596 lt!1661403) (_2!28596 lt!1661403)))))

(assert (=> d!1365259 (= (+!1390 lm!1477 lt!1661403) lt!1661478)))

(declare-fun b!4473559 () Bool)

(declare-fun res!1856424 () Bool)

(assert (=> b!4473559 (=> (not res!1856424) (not e!2785765))))

(assert (=> b!4473559 (= res!1856424 (= (getValueByKey!932 (toList!4091 lt!1661478) (_1!28596 lt!1661403)) (Some!10945 (_2!28596 lt!1661403))))))

(declare-fun b!4473560 () Bool)

(assert (=> b!4473560 (= e!2785765 (contains!12905 (toList!4091 lt!1661478) lt!1661403))))

(assert (= (and d!1365259 res!1856423) b!4473559))

(assert (= (and b!4473559 res!1856424) b!4473560))

(declare-fun m!5182843 () Bool)

(assert (=> d!1365259 m!5182843))

(declare-fun m!5182845 () Bool)

(assert (=> d!1365259 m!5182845))

(declare-fun m!5182847 () Bool)

(assert (=> d!1365259 m!5182847))

(declare-fun m!5182849 () Bool)

(assert (=> d!1365259 m!5182849))

(declare-fun m!5182851 () Bool)

(assert (=> b!4473559 m!5182851))

(declare-fun m!5182853 () Bool)

(assert (=> b!4473560 m!5182853))

(assert (=> b!4473478 d!1365259))

(declare-fun d!1365261 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8131 (List!50454) (InoxSet tuple2!50602))

(assert (=> d!1365261 (= (eq!535 (extractMap!1098 (Cons!50331 lt!1661403 Nil!50331)) (-!304 (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331)) key!3287)) (= (content!8131 (toList!4092 (extractMap!1098 (Cons!50331 lt!1661403 Nil!50331)))) (content!8131 (toList!4092 (-!304 (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331)) key!3287)))))))

(declare-fun bs!797474 () Bool)

(assert (= bs!797474 d!1365261))

(declare-fun m!5182875 () Bool)

(assert (=> bs!797474 m!5182875))

(declare-fun m!5182877 () Bool)

(assert (=> bs!797474 m!5182877))

(assert (=> b!4473478 d!1365261))

(declare-fun b!4473596 () Bool)

(declare-fun e!2785795 () Unit!88293)

(declare-fun lt!1661518 () Unit!88293)

(assert (=> b!4473596 (= e!2785795 lt!1661518)))

(declare-fun lt!1661516 () Unit!88293)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!836 (List!50454 K!11745) Unit!88293)

(assert (=> b!4473596 (= lt!1661516 (lemmaContainsKeyImpliesGetValueByKeyDefined!836 (toList!4092 (extractMap!1098 lt!1661406)) key!3287))))

(declare-datatypes ((Option!10947 0))(
  ( (None!10946) (Some!10946 (v!44292 V!11991)) )
))
(declare-fun isDefined!8233 (Option!10947) Bool)

(declare-fun getValueByKey!933 (List!50454 K!11745) Option!10947)

(assert (=> b!4473596 (isDefined!8233 (getValueByKey!933 (toList!4092 (extractMap!1098 lt!1661406)) key!3287))))

(declare-fun lt!1661521 () Unit!88293)

(assert (=> b!4473596 (= lt!1661521 lt!1661516)))

(declare-fun lemmaInListThenGetKeysListContains!381 (List!50454 K!11745) Unit!88293)

(assert (=> b!4473596 (= lt!1661518 (lemmaInListThenGetKeysListContains!381 (toList!4092 (extractMap!1098 lt!1661406)) key!3287))))

(declare-fun call!311474 () Bool)

(assert (=> b!4473596 call!311474))

(declare-fun b!4473597 () Bool)

(declare-fun e!2785792 () Unit!88293)

(assert (=> b!4473597 (= e!2785795 e!2785792)))

(declare-fun c!761757 () Bool)

(assert (=> b!4473597 (= c!761757 call!311474)))

(declare-fun b!4473598 () Bool)

(declare-fun e!2785793 () Bool)

(declare-fun e!2785791 () Bool)

(assert (=> b!4473598 (= e!2785793 e!2785791)))

(declare-fun res!1856439 () Bool)

(assert (=> b!4473598 (=> (not res!1856439) (not e!2785791))))

(assert (=> b!4473598 (= res!1856439 (isDefined!8233 (getValueByKey!933 (toList!4092 (extractMap!1098 lt!1661406)) key!3287)))))

(declare-fun bm!311469 () Bool)

(declare-datatypes ((List!50457 0))(
  ( (Nil!50333) (Cons!50333 (h!56108 K!11745) (t!357407 List!50457)) )
))
(declare-fun e!2785790 () List!50457)

(declare-fun contains!12907 (List!50457 K!11745) Bool)

(assert (=> bm!311469 (= call!311474 (contains!12907 e!2785790 key!3287))))

(declare-fun c!761756 () Bool)

(declare-fun c!761758 () Bool)

(assert (=> bm!311469 (= c!761756 c!761758)))

(declare-fun b!4473599 () Bool)

(declare-fun Unit!88304 () Unit!88293)

(assert (=> b!4473599 (= e!2785792 Unit!88304)))

(declare-fun b!4473600 () Bool)

(declare-fun keys!17390 (ListMap!3353) List!50457)

(assert (=> b!4473600 (= e!2785791 (contains!12907 (keys!17390 (extractMap!1098 lt!1661406)) key!3287))))

(declare-fun b!4473601 () Bool)

(assert (=> b!4473601 (= e!2785790 (keys!17390 (extractMap!1098 lt!1661406)))))

(declare-fun b!4473602 () Bool)

(declare-fun e!2785794 () Bool)

(assert (=> b!4473602 (= e!2785794 (not (contains!12907 (keys!17390 (extractMap!1098 lt!1661406)) key!3287)))))

(declare-fun d!1365265 () Bool)

(assert (=> d!1365265 e!2785793))

(declare-fun res!1856438 () Bool)

(assert (=> d!1365265 (=> res!1856438 e!2785793)))

(assert (=> d!1365265 (= res!1856438 e!2785794)))

(declare-fun res!1856440 () Bool)

(assert (=> d!1365265 (=> (not res!1856440) (not e!2785794))))

(declare-fun lt!1661517 () Bool)

(assert (=> d!1365265 (= res!1856440 (not lt!1661517))))

(declare-fun lt!1661515 () Bool)

(assert (=> d!1365265 (= lt!1661517 lt!1661515)))

(declare-fun lt!1661519 () Unit!88293)

(assert (=> d!1365265 (= lt!1661519 e!2785795)))

(assert (=> d!1365265 (= c!761758 lt!1661515)))

(declare-fun containsKey!1509 (List!50454 K!11745) Bool)

(assert (=> d!1365265 (= lt!1661515 (containsKey!1509 (toList!4092 (extractMap!1098 lt!1661406)) key!3287))))

(assert (=> d!1365265 (= (contains!12903 (extractMap!1098 lt!1661406) key!3287) lt!1661517)))

(declare-fun b!4473603 () Bool)

(declare-fun getKeysList!385 (List!50454) List!50457)

(assert (=> b!4473603 (= e!2785790 (getKeysList!385 (toList!4092 (extractMap!1098 lt!1661406))))))

(declare-fun b!4473604 () Bool)

(assert (=> b!4473604 false))

(declare-fun lt!1661520 () Unit!88293)

(declare-fun lt!1661522 () Unit!88293)

(assert (=> b!4473604 (= lt!1661520 lt!1661522)))

(assert (=> b!4473604 (containsKey!1509 (toList!4092 (extractMap!1098 lt!1661406)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!384 (List!50454 K!11745) Unit!88293)

(assert (=> b!4473604 (= lt!1661522 (lemmaInGetKeysListThenContainsKey!384 (toList!4092 (extractMap!1098 lt!1661406)) key!3287))))

(declare-fun Unit!88305 () Unit!88293)

(assert (=> b!4473604 (= e!2785792 Unit!88305)))

(assert (= (and d!1365265 c!761758) b!4473596))

(assert (= (and d!1365265 (not c!761758)) b!4473597))

(assert (= (and b!4473597 c!761757) b!4473604))

(assert (= (and b!4473597 (not c!761757)) b!4473599))

(assert (= (or b!4473596 b!4473597) bm!311469))

(assert (= (and bm!311469 c!761756) b!4473603))

(assert (= (and bm!311469 (not c!761756)) b!4473601))

(assert (= (and d!1365265 res!1856440) b!4473602))

(assert (= (and d!1365265 (not res!1856438)) b!4473598))

(assert (= (and b!4473598 res!1856439) b!4473600))

(assert (=> b!4473602 m!5182693))

(declare-fun m!5182949 () Bool)

(assert (=> b!4473602 m!5182949))

(assert (=> b!4473602 m!5182949))

(declare-fun m!5182951 () Bool)

(assert (=> b!4473602 m!5182951))

(declare-fun m!5182953 () Bool)

(assert (=> d!1365265 m!5182953))

(declare-fun m!5182955 () Bool)

(assert (=> b!4473596 m!5182955))

(declare-fun m!5182957 () Bool)

(assert (=> b!4473596 m!5182957))

(assert (=> b!4473596 m!5182957))

(declare-fun m!5182959 () Bool)

(assert (=> b!4473596 m!5182959))

(declare-fun m!5182961 () Bool)

(assert (=> b!4473596 m!5182961))

(declare-fun m!5182963 () Bool)

(assert (=> bm!311469 m!5182963))

(assert (=> b!4473604 m!5182953))

(declare-fun m!5182965 () Bool)

(assert (=> b!4473604 m!5182965))

(assert (=> b!4473600 m!5182693))

(assert (=> b!4473600 m!5182949))

(assert (=> b!4473600 m!5182949))

(assert (=> b!4473600 m!5182951))

(assert (=> b!4473598 m!5182957))

(assert (=> b!4473598 m!5182957))

(assert (=> b!4473598 m!5182959))

(assert (=> b!4473601 m!5182693))

(assert (=> b!4473601 m!5182949))

(declare-fun m!5182967 () Bool)

(assert (=> b!4473603 m!5182967))

(assert (=> b!4473478 d!1365265))

(declare-fun d!1365285 () Bool)

(declare-fun e!2785804 () Bool)

(assert (=> d!1365285 e!2785804))

(declare-fun res!1856449 () Bool)

(assert (=> d!1365285 (=> (not res!1856449) (not e!2785804))))

(declare-fun lt!1661528 () ListMap!3353)

(assert (=> d!1365285 (= res!1856449 (not (contains!12903 lt!1661528 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!73 (List!50454 K!11745) List!50454)

(assert (=> d!1365285 (= lt!1661528 (ListMap!3354 (removePresrvNoDuplicatedKeys!73 (toList!4092 (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331))) key!3287)))))

(assert (=> d!1365285 (= (-!304 (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331)) key!3287) lt!1661528)))

(declare-fun b!4473613 () Bool)

(declare-fun content!8132 (List!50457) (InoxSet K!11745))

(assert (=> b!4473613 (= e!2785804 (= ((_ map and) (content!8132 (keys!17390 (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331)))) ((_ map not) (store ((as const (Array K!11745 Bool)) false) key!3287 true))) (content!8132 (keys!17390 lt!1661528))))))

(assert (= (and d!1365285 res!1856449) b!4473613))

(declare-fun m!5182987 () Bool)

(assert (=> d!1365285 m!5182987))

(declare-fun m!5182989 () Bool)

(assert (=> d!1365285 m!5182989))

(declare-fun m!5182991 () Bool)

(assert (=> b!4473613 m!5182991))

(declare-fun m!5182993 () Bool)

(assert (=> b!4473613 m!5182993))

(declare-fun m!5182995 () Bool)

(assert (=> b!4473613 m!5182995))

(declare-fun m!5182997 () Bool)

(assert (=> b!4473613 m!5182997))

(declare-fun m!5182999 () Bool)

(assert (=> b!4473613 m!5182999))

(assert (=> b!4473613 m!5182991))

(assert (=> b!4473613 m!5182695))

(assert (=> b!4473613 m!5182997))

(assert (=> b!4473478 d!1365285))

(declare-fun bs!797515 () Bool)

(declare-fun d!1365293 () Bool)

(assert (= bs!797515 (and d!1365293 start!439844)))

(declare-fun lambda!164008 () Int)

(assert (=> bs!797515 (= lambda!164008 lambda!163983)))

(declare-fun bs!797516 () Bool)

(assert (= bs!797516 (and d!1365293 d!1365231)))

(assert (=> bs!797516 (= lambda!164008 lambda!163993)))

(declare-fun bs!797517 () Bool)

(assert (= bs!797517 (and d!1365293 d!1365245)))

(assert (=> bs!797517 (= lambda!164008 lambda!163994)))

(declare-fun lt!1661529 () ListMap!3353)

(assert (=> d!1365293 (invariantList!937 (toList!4092 lt!1661529))))

(declare-fun e!2785805 () ListMap!3353)

(assert (=> d!1365293 (= lt!1661529 e!2785805)))

(declare-fun c!761759 () Bool)

(assert (=> d!1365293 (= c!761759 ((_ is Cons!50331) (Cons!50331 lt!1661403 Nil!50331)))))

(assert (=> d!1365293 (forall!10022 (Cons!50331 lt!1661403 Nil!50331) lambda!164008)))

(assert (=> d!1365293 (= (extractMap!1098 (Cons!50331 lt!1661403 Nil!50331)) lt!1661529)))

(declare-fun b!4473614 () Bool)

(assert (=> b!4473614 (= e!2785805 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (Cons!50331 lt!1661403 Nil!50331))) (extractMap!1098 (t!357405 (Cons!50331 lt!1661403 Nil!50331)))))))

(declare-fun b!4473615 () Bool)

(assert (=> b!4473615 (= e!2785805 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365293 c!761759) b!4473614))

(assert (= (and d!1365293 (not c!761759)) b!4473615))

(declare-fun m!5183001 () Bool)

(assert (=> d!1365293 m!5183001))

(declare-fun m!5183003 () Bool)

(assert (=> d!1365293 m!5183003))

(declare-fun m!5183005 () Bool)

(assert (=> b!4473614 m!5183005))

(assert (=> b!4473614 m!5183005))

(declare-fun m!5183007 () Bool)

(assert (=> b!4473614 m!5183007))

(assert (=> b!4473478 d!1365293))

(declare-fun d!1365295 () Bool)

(assert (=> d!1365295 (= (tail!7536 (toList!4091 lt!1661395)) (t!357405 (toList!4091 lt!1661395)))))

(assert (=> b!4473478 d!1365295))

(declare-fun bs!797559 () Bool)

(declare-fun d!1365297 () Bool)

(assert (= bs!797559 (and d!1365297 start!439844)))

(declare-fun lambda!164019 () Int)

(assert (=> bs!797559 (= lambda!164019 lambda!163983)))

(declare-fun bs!797560 () Bool)

(assert (= bs!797560 (and d!1365297 d!1365231)))

(assert (=> bs!797560 (= lambda!164019 lambda!163993)))

(declare-fun bs!797561 () Bool)

(assert (= bs!797561 (and d!1365297 d!1365245)))

(assert (=> bs!797561 (= lambda!164019 lambda!163994)))

(declare-fun bs!797562 () Bool)

(assert (= bs!797562 (and d!1365297 d!1365293)))

(assert (=> bs!797562 (= lambda!164019 lambda!164008)))

(assert (=> d!1365297 (contains!12903 (extractMap!1098 (toList!4091 (ListLongMap!2724 lt!1661406))) key!3287)))

(declare-fun lt!1661556 () Unit!88293)

(declare-fun choose!28657 (ListLongMap!2723 K!11745 Hashable!5437) Unit!88293)

(assert (=> d!1365297 (= lt!1661556 (choose!28657 (ListLongMap!2724 lt!1661406) key!3287 hashF!1107))))

(assert (=> d!1365297 (forall!10022 (toList!4091 (ListLongMap!2724 lt!1661406)) lambda!164019)))

(assert (=> d!1365297 (= (lemmaListContainsThenExtractedMapContains!38 (ListLongMap!2724 lt!1661406) key!3287 hashF!1107) lt!1661556)))

(declare-fun bs!797563 () Bool)

(assert (= bs!797563 d!1365297))

(declare-fun m!5183091 () Bool)

(assert (=> bs!797563 m!5183091))

(assert (=> bs!797563 m!5183091))

(declare-fun m!5183093 () Bool)

(assert (=> bs!797563 m!5183093))

(declare-fun m!5183095 () Bool)

(assert (=> bs!797563 m!5183095))

(declare-fun m!5183097 () Bool)

(assert (=> bs!797563 m!5183097))

(assert (=> b!4473478 d!1365297))

(declare-fun bs!797564 () Bool)

(declare-fun d!1365325 () Bool)

(assert (= bs!797564 (and d!1365325 d!1365245)))

(declare-fun lambda!164020 () Int)

(assert (=> bs!797564 (= lambda!164020 lambda!163994)))

(declare-fun bs!797565 () Bool)

(assert (= bs!797565 (and d!1365325 start!439844)))

(assert (=> bs!797565 (= lambda!164020 lambda!163983)))

(declare-fun bs!797566 () Bool)

(assert (= bs!797566 (and d!1365325 d!1365297)))

(assert (=> bs!797566 (= lambda!164020 lambda!164019)))

(declare-fun bs!797568 () Bool)

(assert (= bs!797568 (and d!1365325 d!1365293)))

(assert (=> bs!797568 (= lambda!164020 lambda!164008)))

(declare-fun bs!797571 () Bool)

(assert (= bs!797571 (and d!1365325 d!1365231)))

(assert (=> bs!797571 (= lambda!164020 lambda!163993)))

(declare-fun lt!1661559 () ListMap!3353)

(assert (=> d!1365325 (invariantList!937 (toList!4092 lt!1661559))))

(declare-fun e!2785847 () ListMap!3353)

(assert (=> d!1365325 (= lt!1661559 e!2785847)))

(declare-fun c!761767 () Bool)

(assert (=> d!1365325 (= c!761767 ((_ is Cons!50331) lt!1661406))))

(assert (=> d!1365325 (forall!10022 lt!1661406 lambda!164020)))

(assert (=> d!1365325 (= (extractMap!1098 lt!1661406) lt!1661559)))

(declare-fun b!4473671 () Bool)

(assert (=> b!4473671 (= e!2785847 (addToMapMapFromBucket!599 (_2!28596 (h!56104 lt!1661406)) (extractMap!1098 (t!357405 lt!1661406))))))

(declare-fun b!4473672 () Bool)

(assert (=> b!4473672 (= e!2785847 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365325 c!761767) b!4473671))

(assert (= (and d!1365325 (not c!761767)) b!4473672))

(declare-fun m!5183105 () Bool)

(assert (=> d!1365325 m!5183105))

(declare-fun m!5183107 () Bool)

(assert (=> d!1365325 m!5183107))

(declare-fun m!5183109 () Bool)

(assert (=> b!4473671 m!5183109))

(assert (=> b!4473671 m!5183109))

(declare-fun m!5183111 () Bool)

(assert (=> b!4473671 m!5183111))

(assert (=> b!4473478 d!1365325))

(declare-fun d!1365329 () Bool)

(assert (=> d!1365329 (eq!535 (extractMap!1098 (Cons!50331 (tuple2!50605 hash!344 newBucket!178) Nil!50331)) (-!304 (extractMap!1098 (Cons!50331 (tuple2!50605 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477)))) Nil!50331)) key!3287))))

(declare-fun lt!1661577 () Unit!88293)

(declare-fun choose!28658 ((_ BitVec 64) List!50454 List!50454 K!11745 Hashable!5437) Unit!88293)

(assert (=> d!1365329 (= lt!1661577 (choose!28658 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1365329 (noDuplicateKeys!1042 (_2!28596 (h!56104 (toList!4091 lm!1477))))))

(assert (=> d!1365329 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!34 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1661577)))

(declare-fun bs!797588 () Bool)

(assert (= bs!797588 d!1365329))

(declare-fun m!5183149 () Bool)

(assert (=> bs!797588 m!5183149))

(declare-fun m!5183151 () Bool)

(assert (=> bs!797588 m!5183151))

(declare-fun m!5183153 () Bool)

(assert (=> bs!797588 m!5183153))

(assert (=> bs!797588 m!5183151))

(declare-fun m!5183155 () Bool)

(assert (=> bs!797588 m!5183155))

(declare-fun m!5183157 () Bool)

(assert (=> bs!797588 m!5183157))

(assert (=> bs!797588 m!5183157))

(assert (=> bs!797588 m!5183155))

(declare-fun m!5183159 () Bool)

(assert (=> bs!797588 m!5183159))

(assert (=> b!4473478 d!1365329))

(declare-fun bs!797589 () Bool)

(declare-fun d!1365347 () Bool)

(assert (= bs!797589 (and d!1365347 d!1365245)))

(declare-fun lambda!164022 () Int)

(assert (=> bs!797589 (= lambda!164022 lambda!163994)))

(declare-fun bs!797590 () Bool)

(assert (= bs!797590 (and d!1365347 d!1365297)))

(assert (=> bs!797590 (= lambda!164022 lambda!164019)))

(declare-fun bs!797591 () Bool)

(assert (= bs!797591 (and d!1365347 d!1365293)))

(assert (=> bs!797591 (= lambda!164022 lambda!164008)))

(declare-fun bs!797592 () Bool)

(assert (= bs!797592 (and d!1365347 d!1365231)))

(assert (=> bs!797592 (= lambda!164022 lambda!163993)))

(declare-fun bs!797593 () Bool)

(assert (= bs!797593 (and d!1365347 d!1365325)))

(assert (=> bs!797593 (= lambda!164022 lambda!164020)))

(declare-fun bs!797594 () Bool)

(assert (= bs!797594 (and d!1365347 start!439844)))

(assert (=> bs!797594 (= lambda!164022 lambda!163983)))

(declare-fun lt!1661578 () ListMap!3353)

(assert (=> d!1365347 (invariantList!937 (toList!4092 lt!1661578))))

(declare-fun e!2785870 () ListMap!3353)

(assert (=> d!1365347 (= lt!1661578 e!2785870)))

(declare-fun c!761775 () Bool)

(assert (=> d!1365347 (= c!761775 ((_ is Cons!50331) (Cons!50331 lt!1661389 Nil!50331)))))

(assert (=> d!1365347 (forall!10022 (Cons!50331 lt!1661389 Nil!50331) lambda!164022)))

(assert (=> d!1365347 (= (extractMap!1098 (Cons!50331 lt!1661389 Nil!50331)) lt!1661578)))

(declare-fun b!4473706 () Bool)

(assert (=> b!4473706 (= e!2785870 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (Cons!50331 lt!1661389 Nil!50331))) (extractMap!1098 (t!357405 (Cons!50331 lt!1661389 Nil!50331)))))))

(declare-fun b!4473707 () Bool)

(assert (=> b!4473707 (= e!2785870 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365347 c!761775) b!4473706))

(assert (= (and d!1365347 (not c!761775)) b!4473707))

(declare-fun m!5183161 () Bool)

(assert (=> d!1365347 m!5183161))

(declare-fun m!5183163 () Bool)

(assert (=> d!1365347 m!5183163))

(declare-fun m!5183165 () Bool)

(assert (=> b!4473706 m!5183165))

(assert (=> b!4473706 m!5183165))

(declare-fun m!5183167 () Bool)

(assert (=> b!4473706 m!5183167))

(assert (=> b!4473478 d!1365347))

(declare-fun d!1365349 () Bool)

(declare-fun res!1856498 () Bool)

(declare-fun e!2785875 () Bool)

(assert (=> d!1365349 (=> res!1856498 e!2785875)))

(assert (=> d!1365349 (= res!1856498 (and ((_ is Cons!50330) (_2!28596 (h!56104 (toList!4091 lm!1477)))) (= (_1!28595 (h!56103 (_2!28596 (h!56104 (toList!4091 lm!1477))))) key!3287)))))

(assert (=> d!1365349 (= (containsKey!1506 (_2!28596 (h!56104 (toList!4091 lm!1477))) key!3287) e!2785875)))

(declare-fun b!4473712 () Bool)

(declare-fun e!2785876 () Bool)

(assert (=> b!4473712 (= e!2785875 e!2785876)))

(declare-fun res!1856499 () Bool)

(assert (=> b!4473712 (=> (not res!1856499) (not e!2785876))))

(assert (=> b!4473712 (= res!1856499 ((_ is Cons!50330) (_2!28596 (h!56104 (toList!4091 lm!1477)))))))

(declare-fun b!4473713 () Bool)

(assert (=> b!4473713 (= e!2785876 (containsKey!1506 (t!357404 (_2!28596 (h!56104 (toList!4091 lm!1477)))) key!3287))))

(assert (= (and d!1365349 (not res!1856498)) b!4473712))

(assert (= (and b!4473712 res!1856499) b!4473713))

(declare-fun m!5183169 () Bool)

(assert (=> b!4473713 m!5183169))

(assert (=> b!4473488 d!1365349))

(declare-fun bs!797595 () Bool)

(declare-fun d!1365351 () Bool)

(assert (= bs!797595 (and d!1365351 d!1365347)))

(declare-fun lambda!164025 () Int)

(assert (=> bs!797595 (= lambda!164025 lambda!164022)))

(declare-fun bs!797596 () Bool)

(assert (= bs!797596 (and d!1365351 d!1365245)))

(assert (=> bs!797596 (= lambda!164025 lambda!163994)))

(declare-fun bs!797597 () Bool)

(assert (= bs!797597 (and d!1365351 d!1365297)))

(assert (=> bs!797597 (= lambda!164025 lambda!164019)))

(declare-fun bs!797598 () Bool)

(assert (= bs!797598 (and d!1365351 d!1365293)))

(assert (=> bs!797598 (= lambda!164025 lambda!164008)))

(declare-fun bs!797599 () Bool)

(assert (= bs!797599 (and d!1365351 d!1365231)))

(assert (=> bs!797599 (= lambda!164025 lambda!163993)))

(declare-fun bs!797600 () Bool)

(assert (= bs!797600 (and d!1365351 d!1365325)))

(assert (=> bs!797600 (= lambda!164025 lambda!164020)))

(declare-fun bs!797601 () Bool)

(assert (= bs!797601 (and d!1365351 start!439844)))

(assert (=> bs!797601 (= lambda!164025 lambda!163983)))

(assert (=> d!1365351 (contains!12904 lt!1661402 (hash!2489 hashF!1107 key!3287))))

(declare-fun lt!1661581 () Unit!88293)

(declare-fun choose!28659 (ListLongMap!2723 K!11745 Hashable!5437) Unit!88293)

(assert (=> d!1365351 (= lt!1661581 (choose!28659 lt!1661402 key!3287 hashF!1107))))

(assert (=> d!1365351 (forall!10022 (toList!4091 lt!1661402) lambda!164025)))

(assert (=> d!1365351 (= (lemmaInGenMapThenLongMapContainsHash!116 lt!1661402 key!3287 hashF!1107) lt!1661581)))

(declare-fun bs!797602 () Bool)

(assert (= bs!797602 d!1365351))

(assert (=> bs!797602 m!5182671))

(assert (=> bs!797602 m!5182671))

(declare-fun m!5183171 () Bool)

(assert (=> bs!797602 m!5183171))

(declare-fun m!5183173 () Bool)

(assert (=> bs!797602 m!5183173))

(declare-fun m!5183175 () Bool)

(assert (=> bs!797602 m!5183175))

(assert (=> b!4473477 d!1365351))

(declare-fun d!1365353 () Bool)

(declare-fun e!2785881 () Bool)

(assert (=> d!1365353 e!2785881))

(declare-fun res!1856502 () Bool)

(assert (=> d!1365353 (=> res!1856502 e!2785881)))

(declare-fun lt!1661593 () Bool)

(assert (=> d!1365353 (= res!1856502 (not lt!1661593))))

(declare-fun lt!1661591 () Bool)

(assert (=> d!1365353 (= lt!1661593 lt!1661591)))

(declare-fun lt!1661590 () Unit!88293)

(declare-fun e!2785882 () Unit!88293)

(assert (=> d!1365353 (= lt!1661590 e!2785882)))

(declare-fun c!761778 () Bool)

(assert (=> d!1365353 (= c!761778 lt!1661591)))

(declare-fun containsKey!1510 (List!50455 (_ BitVec 64)) Bool)

(assert (=> d!1365353 (= lt!1661591 (containsKey!1510 (toList!4091 lt!1661402) lt!1661400))))

(assert (=> d!1365353 (= (contains!12904 lt!1661402 lt!1661400) lt!1661593)))

(declare-fun b!4473720 () Bool)

(declare-fun lt!1661592 () Unit!88293)

(assert (=> b!4473720 (= e!2785882 lt!1661592)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!837 (List!50455 (_ BitVec 64)) Unit!88293)

(assert (=> b!4473720 (= lt!1661592 (lemmaContainsKeyImpliesGetValueByKeyDefined!837 (toList!4091 lt!1661402) lt!1661400))))

(declare-fun isDefined!8234 (Option!10946) Bool)

(assert (=> b!4473720 (isDefined!8234 (getValueByKey!932 (toList!4091 lt!1661402) lt!1661400))))

(declare-fun b!4473721 () Bool)

(declare-fun Unit!88308 () Unit!88293)

(assert (=> b!4473721 (= e!2785882 Unit!88308)))

(declare-fun b!4473722 () Bool)

(assert (=> b!4473722 (= e!2785881 (isDefined!8234 (getValueByKey!932 (toList!4091 lt!1661402) lt!1661400)))))

(assert (= (and d!1365353 c!761778) b!4473720))

(assert (= (and d!1365353 (not c!761778)) b!4473721))

(assert (= (and d!1365353 (not res!1856502)) b!4473722))

(declare-fun m!5183177 () Bool)

(assert (=> d!1365353 m!5183177))

(declare-fun m!5183179 () Bool)

(assert (=> b!4473720 m!5183179))

(declare-fun m!5183181 () Bool)

(assert (=> b!4473720 m!5183181))

(assert (=> b!4473720 m!5183181))

(declare-fun m!5183183 () Bool)

(assert (=> b!4473720 m!5183183))

(assert (=> b!4473722 m!5183181))

(assert (=> b!4473722 m!5183181))

(assert (=> b!4473722 m!5183183))

(assert (=> b!4473477 d!1365353))

(declare-fun bs!797603 () Bool)

(declare-fun d!1365355 () Bool)

(assert (= bs!797603 (and d!1365355 d!1365347)))

(declare-fun lambda!164028 () Int)

(assert (=> bs!797603 (not (= lambda!164028 lambda!164022))))

(declare-fun bs!797604 () Bool)

(assert (= bs!797604 (and d!1365355 d!1365245)))

(assert (=> bs!797604 (not (= lambda!164028 lambda!163994))))

(declare-fun bs!797605 () Bool)

(assert (= bs!797605 (and d!1365355 d!1365297)))

(assert (=> bs!797605 (not (= lambda!164028 lambda!164019))))

(declare-fun bs!797606 () Bool)

(assert (= bs!797606 (and d!1365355 d!1365293)))

(assert (=> bs!797606 (not (= lambda!164028 lambda!164008))))

(declare-fun bs!797607 () Bool)

(assert (= bs!797607 (and d!1365355 d!1365231)))

(assert (=> bs!797607 (not (= lambda!164028 lambda!163993))))

(declare-fun bs!797608 () Bool)

(assert (= bs!797608 (and d!1365355 d!1365351)))

(assert (=> bs!797608 (not (= lambda!164028 lambda!164025))))

(declare-fun bs!797609 () Bool)

(assert (= bs!797609 (and d!1365355 d!1365325)))

(assert (=> bs!797609 (not (= lambda!164028 lambda!164020))))

(declare-fun bs!797610 () Bool)

(assert (= bs!797610 (and d!1365355 start!439844)))

(assert (=> bs!797610 (not (= lambda!164028 lambda!163983))))

(assert (=> d!1365355 true))

(assert (=> d!1365355 (= (allKeysSameHashInMap!1149 lm!1477 hashF!1107) (forall!10022 (toList!4091 lm!1477) lambda!164028))))

(declare-fun bs!797611 () Bool)

(assert (= bs!797611 d!1365355))

(declare-fun m!5183185 () Bool)

(assert (=> bs!797611 m!5183185))

(assert (=> b!4473482 d!1365355))

(declare-fun d!1365357 () Bool)

(declare-fun hash!2495 (Hashable!5437 K!11745) (_ BitVec 64))

(assert (=> d!1365357 (= (hash!2489 hashF!1107 key!3287) (hash!2495 hashF!1107 key!3287))))

(declare-fun bs!797612 () Bool)

(assert (= bs!797612 d!1365357))

(declare-fun m!5183187 () Bool)

(assert (=> bs!797612 m!5183187))

(assert (=> b!4473481 d!1365357))

(declare-fun d!1365359 () Bool)

(declare-fun lt!1661596 () Bool)

(declare-fun content!8134 (List!50455) (InoxSet tuple2!50604))

(assert (=> d!1365359 (= lt!1661596 (select (content!8134 (toList!4091 lm!1477)) lt!1661390))))

(declare-fun e!2785887 () Bool)

(assert (=> d!1365359 (= lt!1661596 e!2785887)))

(declare-fun res!1856507 () Bool)

(assert (=> d!1365359 (=> (not res!1856507) (not e!2785887))))

(assert (=> d!1365359 (= res!1856507 ((_ is Cons!50331) (toList!4091 lm!1477)))))

(assert (=> d!1365359 (= (contains!12905 (toList!4091 lm!1477) lt!1661390) lt!1661596)))

(declare-fun b!4473729 () Bool)

(declare-fun e!2785888 () Bool)

(assert (=> b!4473729 (= e!2785887 e!2785888)))

(declare-fun res!1856508 () Bool)

(assert (=> b!4473729 (=> res!1856508 e!2785888)))

(assert (=> b!4473729 (= res!1856508 (= (h!56104 (toList!4091 lm!1477)) lt!1661390))))

(declare-fun b!4473730 () Bool)

(assert (=> b!4473730 (= e!2785888 (contains!12905 (t!357405 (toList!4091 lm!1477)) lt!1661390))))

(assert (= (and d!1365359 res!1856507) b!4473729))

(assert (= (and b!4473729 (not res!1856508)) b!4473730))

(declare-fun m!5183189 () Bool)

(assert (=> d!1365359 m!5183189))

(declare-fun m!5183191 () Bool)

(assert (=> d!1365359 m!5183191))

(declare-fun m!5183193 () Bool)

(assert (=> b!4473730 m!5183193))

(assert (=> b!4473491 d!1365359))

(declare-fun d!1365361 () Bool)

(declare-fun e!2785889 () Bool)

(assert (=> d!1365361 e!2785889))

(declare-fun res!1856509 () Bool)

(assert (=> d!1365361 (=> res!1856509 e!2785889)))

(declare-fun lt!1661600 () Bool)

(assert (=> d!1365361 (= res!1856509 (not lt!1661600))))

(declare-fun lt!1661598 () Bool)

(assert (=> d!1365361 (= lt!1661600 lt!1661598)))

(declare-fun lt!1661597 () Unit!88293)

(declare-fun e!2785890 () Unit!88293)

(assert (=> d!1365361 (= lt!1661597 e!2785890)))

(declare-fun c!761779 () Bool)

(assert (=> d!1365361 (= c!761779 lt!1661598)))

(assert (=> d!1365361 (= lt!1661598 (containsKey!1510 (toList!4091 lm!1477) lt!1661400))))

(assert (=> d!1365361 (= (contains!12904 lm!1477 lt!1661400) lt!1661600)))

(declare-fun b!4473731 () Bool)

(declare-fun lt!1661599 () Unit!88293)

(assert (=> b!4473731 (= e!2785890 lt!1661599)))

(assert (=> b!4473731 (= lt!1661599 (lemmaContainsKeyImpliesGetValueByKeyDefined!837 (toList!4091 lm!1477) lt!1661400))))

(assert (=> b!4473731 (isDefined!8234 (getValueByKey!932 (toList!4091 lm!1477) lt!1661400))))

(declare-fun b!4473732 () Bool)

(declare-fun Unit!88309 () Unit!88293)

(assert (=> b!4473732 (= e!2785890 Unit!88309)))

(declare-fun b!4473733 () Bool)

(assert (=> b!4473733 (= e!2785889 (isDefined!8234 (getValueByKey!932 (toList!4091 lm!1477) lt!1661400)))))

(assert (= (and d!1365361 c!761779) b!4473731))

(assert (= (and d!1365361 (not c!761779)) b!4473732))

(assert (= (and d!1365361 (not res!1856509)) b!4473733))

(declare-fun m!5183195 () Bool)

(assert (=> d!1365361 m!5183195))

(declare-fun m!5183197 () Bool)

(assert (=> b!4473731 m!5183197))

(declare-fun m!5183199 () Bool)

(assert (=> b!4473731 m!5183199))

(assert (=> b!4473731 m!5183199))

(declare-fun m!5183201 () Bool)

(assert (=> b!4473731 m!5183201))

(assert (=> b!4473733 m!5183199))

(assert (=> b!4473733 m!5183199))

(assert (=> b!4473733 m!5183201))

(assert (=> b!4473491 d!1365361))

(declare-fun bs!797613 () Bool)

(declare-fun d!1365363 () Bool)

(assert (= bs!797613 (and d!1365363 d!1365347)))

(declare-fun lambda!164029 () Int)

(assert (=> bs!797613 (= lambda!164029 lambda!164022)))

(declare-fun bs!797614 () Bool)

(assert (= bs!797614 (and d!1365363 d!1365245)))

(assert (=> bs!797614 (= lambda!164029 lambda!163994)))

(declare-fun bs!797615 () Bool)

(assert (= bs!797615 (and d!1365363 d!1365355)))

(assert (=> bs!797615 (not (= lambda!164029 lambda!164028))))

(declare-fun bs!797616 () Bool)

(assert (= bs!797616 (and d!1365363 d!1365297)))

(assert (=> bs!797616 (= lambda!164029 lambda!164019)))

(declare-fun bs!797617 () Bool)

(assert (= bs!797617 (and d!1365363 d!1365293)))

(assert (=> bs!797617 (= lambda!164029 lambda!164008)))

(declare-fun bs!797618 () Bool)

(assert (= bs!797618 (and d!1365363 d!1365231)))

(assert (=> bs!797618 (= lambda!164029 lambda!163993)))

(declare-fun bs!797619 () Bool)

(assert (= bs!797619 (and d!1365363 d!1365351)))

(assert (=> bs!797619 (= lambda!164029 lambda!164025)))

(declare-fun bs!797620 () Bool)

(assert (= bs!797620 (and d!1365363 d!1365325)))

(assert (=> bs!797620 (= lambda!164029 lambda!164020)))

(declare-fun bs!797621 () Bool)

(assert (= bs!797621 (and d!1365363 start!439844)))

(assert (=> bs!797621 (= lambda!164029 lambda!163983)))

(assert (=> d!1365363 (contains!12904 lm!1477 (hash!2489 hashF!1107 key!3287))))

(declare-fun lt!1661601 () Unit!88293)

(assert (=> d!1365363 (= lt!1661601 (choose!28659 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1365363 (forall!10022 (toList!4091 lm!1477) lambda!164029)))

(assert (=> d!1365363 (= (lemmaInGenMapThenLongMapContainsHash!116 lm!1477 key!3287 hashF!1107) lt!1661601)))

(declare-fun bs!797622 () Bool)

(assert (= bs!797622 d!1365363))

(assert (=> bs!797622 m!5182671))

(assert (=> bs!797622 m!5182671))

(declare-fun m!5183203 () Bool)

(assert (=> bs!797622 m!5183203))

(declare-fun m!5183205 () Bool)

(assert (=> bs!797622 m!5183205))

(declare-fun m!5183207 () Bool)

(assert (=> bs!797622 m!5183207))

(assert (=> b!4473491 d!1365363))

(declare-fun d!1365365 () Bool)

(declare-fun get!16416 (Option!10946) List!50454)

(assert (=> d!1365365 (= (apply!11779 lm!1477 hash!344) (get!16416 (getValueByKey!932 (toList!4091 lm!1477) hash!344)))))

(declare-fun bs!797623 () Bool)

(assert (= bs!797623 d!1365365))

(declare-fun m!5183209 () Bool)

(assert (=> bs!797623 m!5183209))

(assert (=> bs!797623 m!5183209))

(declare-fun m!5183211 () Bool)

(assert (=> bs!797623 m!5183211))

(assert (=> b!4473491 d!1365365))

(declare-fun b!4473742 () Bool)

(declare-fun e!2785896 () List!50454)

(assert (=> b!4473742 (= e!2785896 (t!357404 lt!1661392))))

(declare-fun b!4473745 () Bool)

(declare-fun e!2785895 () List!50454)

(assert (=> b!4473745 (= e!2785895 Nil!50330)))

(declare-fun d!1365367 () Bool)

(declare-fun lt!1661604 () List!50454)

(assert (=> d!1365367 (not (containsKey!1506 lt!1661604 key!3287))))

(assert (=> d!1365367 (= lt!1661604 e!2785896)))

(declare-fun c!761785 () Bool)

(assert (=> d!1365367 (= c!761785 (and ((_ is Cons!50330) lt!1661392) (= (_1!28595 (h!56103 lt!1661392)) key!3287)))))

(assert (=> d!1365367 (noDuplicateKeys!1042 lt!1661392)))

(assert (=> d!1365367 (= (removePairForKey!669 lt!1661392 key!3287) lt!1661604)))

(declare-fun b!4473743 () Bool)

(assert (=> b!4473743 (= e!2785896 e!2785895)))

(declare-fun c!761784 () Bool)

(assert (=> b!4473743 (= c!761784 ((_ is Cons!50330) lt!1661392))))

(declare-fun b!4473744 () Bool)

(assert (=> b!4473744 (= e!2785895 (Cons!50330 (h!56103 lt!1661392) (removePairForKey!669 (t!357404 lt!1661392) key!3287)))))

(assert (= (and d!1365367 c!761785) b!4473742))

(assert (= (and d!1365367 (not c!761785)) b!4473743))

(assert (= (and b!4473743 c!761784) b!4473744))

(assert (= (and b!4473743 (not c!761784)) b!4473745))

(declare-fun m!5183213 () Bool)

(assert (=> d!1365367 m!5183213))

(declare-fun m!5183215 () Bool)

(assert (=> d!1365367 m!5183215))

(declare-fun m!5183217 () Bool)

(assert (=> b!4473744 m!5183217))

(assert (=> b!4473491 d!1365367))

(declare-fun d!1365369 () Bool)

(assert (=> d!1365369 (contains!12905 (toList!4091 lm!1477) (tuple2!50605 hash!344 lt!1661392))))

(declare-fun lt!1661607 () Unit!88293)

(declare-fun choose!28662 (List!50455 (_ BitVec 64) List!50454) Unit!88293)

(assert (=> d!1365369 (= lt!1661607 (choose!28662 (toList!4091 lm!1477) hash!344 lt!1661392))))

(declare-fun e!2785899 () Bool)

(assert (=> d!1365369 e!2785899))

(declare-fun res!1856512 () Bool)

(assert (=> d!1365369 (=> (not res!1856512) (not e!2785899))))

(declare-fun isStrictlySorted!351 (List!50455) Bool)

(assert (=> d!1365369 (= res!1856512 (isStrictlySorted!351 (toList!4091 lm!1477)))))

(assert (=> d!1365369 (= (lemmaGetValueByKeyImpliesContainsTuple!554 (toList!4091 lm!1477) hash!344 lt!1661392) lt!1661607)))

(declare-fun b!4473748 () Bool)

(assert (=> b!4473748 (= e!2785899 (= (getValueByKey!932 (toList!4091 lm!1477) hash!344) (Some!10945 lt!1661392)))))

(assert (= (and d!1365369 res!1856512) b!4473748))

(declare-fun m!5183219 () Bool)

(assert (=> d!1365369 m!5183219))

(declare-fun m!5183221 () Bool)

(assert (=> d!1365369 m!5183221))

(declare-fun m!5183223 () Bool)

(assert (=> d!1365369 m!5183223))

(assert (=> b!4473748 m!5183209))

(assert (=> b!4473491 d!1365369))

(declare-fun d!1365371 () Bool)

(declare-fun dynLambda!21028 (Int tuple2!50604) Bool)

(assert (=> d!1365371 (dynLambda!21028 lambda!163983 lt!1661390)))

(declare-fun lt!1661610 () Unit!88293)

(declare-fun choose!28663 (List!50455 Int tuple2!50604) Unit!88293)

(assert (=> d!1365371 (= lt!1661610 (choose!28663 (toList!4091 lm!1477) lambda!163983 lt!1661390))))

(declare-fun e!2785902 () Bool)

(assert (=> d!1365371 e!2785902))

(declare-fun res!1856515 () Bool)

(assert (=> d!1365371 (=> (not res!1856515) (not e!2785902))))

(assert (=> d!1365371 (= res!1856515 (forall!10022 (toList!4091 lm!1477) lambda!163983))))

(assert (=> d!1365371 (= (forallContained!2287 (toList!4091 lm!1477) lambda!163983 lt!1661390) lt!1661610)))

(declare-fun b!4473751 () Bool)

(assert (=> b!4473751 (= e!2785902 (contains!12905 (toList!4091 lm!1477) lt!1661390))))

(assert (= (and d!1365371 res!1856515) b!4473751))

(declare-fun b_lambda!148729 () Bool)

(assert (=> (not b_lambda!148729) (not d!1365371)))

(declare-fun m!5183225 () Bool)

(assert (=> d!1365371 m!5183225))

(declare-fun m!5183227 () Bool)

(assert (=> d!1365371 m!5183227))

(assert (=> d!1365371 m!5182721))

(assert (=> b!4473751 m!5182673))

(assert (=> b!4473491 d!1365371))

(declare-fun d!1365373 () Bool)

(declare-fun e!2785903 () Bool)

(assert (=> d!1365373 e!2785903))

(declare-fun res!1856516 () Bool)

(assert (=> d!1365373 (=> (not res!1856516) (not e!2785903))))

(declare-fun lt!1661611 () ListMap!3353)

(assert (=> d!1365373 (= res!1856516 (not (contains!12903 lt!1661611 key!3287)))))

(assert (=> d!1365373 (= lt!1661611 (ListMap!3354 (removePresrvNoDuplicatedKeys!73 (toList!4092 (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398))) key!3287)))))

(assert (=> d!1365373 (= (-!304 (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398)) key!3287) lt!1661611)))

(declare-fun b!4473752 () Bool)

(assert (=> b!4473752 (= e!2785903 (= ((_ map and) (content!8132 (keys!17390 (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398)))) ((_ map not) (store ((as const (Array K!11745 Bool)) false) key!3287 true))) (content!8132 (keys!17390 lt!1661611))))))

(assert (= (and d!1365373 res!1856516) b!4473752))

(declare-fun m!5183229 () Bool)

(assert (=> d!1365373 m!5183229))

(declare-fun m!5183231 () Bool)

(assert (=> d!1365373 m!5183231))

(declare-fun m!5183233 () Bool)

(assert (=> b!4473752 m!5183233))

(declare-fun m!5183235 () Bool)

(assert (=> b!4473752 m!5183235))

(assert (=> b!4473752 m!5182995))

(declare-fun m!5183237 () Bool)

(assert (=> b!4473752 m!5183237))

(declare-fun m!5183239 () Bool)

(assert (=> b!4473752 m!5183239))

(assert (=> b!4473752 m!5183233))

(assert (=> b!4473752 m!5182737))

(assert (=> b!4473752 m!5183237))

(assert (=> b!4473494 d!1365373))

(declare-fun bs!797624 () Bool)

(declare-fun d!1365375 () Bool)

(assert (= bs!797624 (and d!1365375 d!1365347)))

(declare-fun lambda!164032 () Int)

(assert (=> bs!797624 (= lambda!164032 lambda!164022)))

(declare-fun bs!797625 () Bool)

(assert (= bs!797625 (and d!1365375 d!1365245)))

(assert (=> bs!797625 (= lambda!164032 lambda!163994)))

(declare-fun bs!797626 () Bool)

(assert (= bs!797626 (and d!1365375 d!1365355)))

(assert (=> bs!797626 (not (= lambda!164032 lambda!164028))))

(declare-fun bs!797627 () Bool)

(assert (= bs!797627 (and d!1365375 d!1365297)))

(assert (=> bs!797627 (= lambda!164032 lambda!164019)))

(declare-fun bs!797628 () Bool)

(assert (= bs!797628 (and d!1365375 d!1365293)))

(assert (=> bs!797628 (= lambda!164032 lambda!164008)))

(declare-fun bs!797629 () Bool)

(assert (= bs!797629 (and d!1365375 d!1365231)))

(assert (=> bs!797629 (= lambda!164032 lambda!163993)))

(declare-fun bs!797630 () Bool)

(assert (= bs!797630 (and d!1365375 d!1365351)))

(assert (=> bs!797630 (= lambda!164032 lambda!164025)))

(declare-fun bs!797631 () Bool)

(assert (= bs!797631 (and d!1365375 d!1365363)))

(assert (=> bs!797631 (= lambda!164032 lambda!164029)))

(declare-fun bs!797632 () Bool)

(assert (= bs!797632 (and d!1365375 d!1365325)))

(assert (=> bs!797632 (= lambda!164032 lambda!164020)))

(declare-fun bs!797633 () Bool)

(assert (= bs!797633 (and d!1365375 start!439844)))

(assert (=> bs!797633 (= lambda!164032 lambda!163983)))

(assert (=> d!1365375 (eq!535 (extractMap!1098 (Cons!50331 (tuple2!50605 hash!344 newBucket!178) (tail!7536 (toList!4091 lm!1477)))) (-!304 (extractMap!1098 (Cons!50331 (tuple2!50605 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477)))) (tail!7536 (toList!4091 lm!1477)))) key!3287))))

(declare-fun lt!1661614 () Unit!88293)

(declare-fun choose!28664 (ListLongMap!2723 (_ BitVec 64) List!50454 List!50454 K!11745 Hashable!5437) Unit!88293)

(assert (=> d!1365375 (= lt!1661614 (choose!28664 lm!1477 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1365375 (forall!10022 (toList!4091 lm!1477) lambda!164032)))

(assert (=> d!1365375 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!2 lm!1477 hash!344 (_2!28596 (h!56104 (toList!4091 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1661614)))

(declare-fun bs!797634 () Bool)

(assert (= bs!797634 d!1365375))

(declare-fun m!5183241 () Bool)

(assert (=> bs!797634 m!5183241))

(declare-fun m!5183243 () Bool)

(assert (=> bs!797634 m!5183243))

(declare-fun m!5183245 () Bool)

(assert (=> bs!797634 m!5183245))

(declare-fun m!5183247 () Bool)

(assert (=> bs!797634 m!5183247))

(assert (=> bs!797634 m!5182745))

(assert (=> bs!797634 m!5183245))

(declare-fun m!5183249 () Bool)

(assert (=> bs!797634 m!5183249))

(assert (=> bs!797634 m!5183241))

(assert (=> bs!797634 m!5183249))

(declare-fun m!5183251 () Bool)

(assert (=> bs!797634 m!5183251))

(assert (=> b!4473494 d!1365375))

(declare-fun bs!797635 () Bool)

(declare-fun d!1365377 () Bool)

(assert (= bs!797635 (and d!1365377 d!1365347)))

(declare-fun lambda!164033 () Int)

(assert (=> bs!797635 (= lambda!164033 lambda!164022)))

(declare-fun bs!797636 () Bool)

(assert (= bs!797636 (and d!1365377 d!1365245)))

(assert (=> bs!797636 (= lambda!164033 lambda!163994)))

(declare-fun bs!797637 () Bool)

(assert (= bs!797637 (and d!1365377 d!1365355)))

(assert (=> bs!797637 (not (= lambda!164033 lambda!164028))))

(declare-fun bs!797638 () Bool)

(assert (= bs!797638 (and d!1365377 d!1365297)))

(assert (=> bs!797638 (= lambda!164033 lambda!164019)))

(declare-fun bs!797639 () Bool)

(assert (= bs!797639 (and d!1365377 d!1365293)))

(assert (=> bs!797639 (= lambda!164033 lambda!164008)))

(declare-fun bs!797640 () Bool)

(assert (= bs!797640 (and d!1365377 d!1365231)))

(assert (=> bs!797640 (= lambda!164033 lambda!163993)))

(declare-fun bs!797641 () Bool)

(assert (= bs!797641 (and d!1365377 d!1365351)))

(assert (=> bs!797641 (= lambda!164033 lambda!164025)))

(declare-fun bs!797642 () Bool)

(assert (= bs!797642 (and d!1365377 d!1365363)))

(assert (=> bs!797642 (= lambda!164033 lambda!164029)))

(declare-fun bs!797643 () Bool)

(assert (= bs!797643 (and d!1365377 d!1365375)))

(assert (=> bs!797643 (= lambda!164033 lambda!164032)))

(declare-fun bs!797644 () Bool)

(assert (= bs!797644 (and d!1365377 d!1365325)))

(assert (=> bs!797644 (= lambda!164033 lambda!164020)))

(declare-fun bs!797645 () Bool)

(assert (= bs!797645 (and d!1365377 start!439844)))

(assert (=> bs!797645 (= lambda!164033 lambda!163983)))

(declare-fun lt!1661615 () ListMap!3353)

(assert (=> d!1365377 (invariantList!937 (toList!4092 lt!1661615))))

(declare-fun e!2785904 () ListMap!3353)

(assert (=> d!1365377 (= lt!1661615 e!2785904)))

(declare-fun c!761786 () Bool)

(assert (=> d!1365377 (= c!761786 ((_ is Cons!50331) (Cons!50331 lt!1661403 lt!1661398)))))

(assert (=> d!1365377 (forall!10022 (Cons!50331 lt!1661403 lt!1661398) lambda!164033)))

(assert (=> d!1365377 (= (extractMap!1098 (Cons!50331 lt!1661403 lt!1661398)) lt!1661615)))

(declare-fun b!4473753 () Bool)

(assert (=> b!4473753 (= e!2785904 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (Cons!50331 lt!1661403 lt!1661398))) (extractMap!1098 (t!357405 (Cons!50331 lt!1661403 lt!1661398)))))))

(declare-fun b!4473754 () Bool)

(assert (=> b!4473754 (= e!2785904 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365377 c!761786) b!4473753))

(assert (= (and d!1365377 (not c!761786)) b!4473754))

(declare-fun m!5183253 () Bool)

(assert (=> d!1365377 m!5183253))

(declare-fun m!5183255 () Bool)

(assert (=> d!1365377 m!5183255))

(declare-fun m!5183257 () Bool)

(assert (=> b!4473753 m!5183257))

(assert (=> b!4473753 m!5183257))

(declare-fun m!5183259 () Bool)

(assert (=> b!4473753 m!5183259))

(assert (=> b!4473494 d!1365377))

(declare-fun bs!797646 () Bool)

(declare-fun d!1365379 () Bool)

(assert (= bs!797646 (and d!1365379 d!1365347)))

(declare-fun lambda!164034 () Int)

(assert (=> bs!797646 (= lambda!164034 lambda!164022)))

(declare-fun bs!797647 () Bool)

(assert (= bs!797647 (and d!1365379 d!1365245)))

(assert (=> bs!797647 (= lambda!164034 lambda!163994)))

(declare-fun bs!797648 () Bool)

(assert (= bs!797648 (and d!1365379 d!1365355)))

(assert (=> bs!797648 (not (= lambda!164034 lambda!164028))))

(declare-fun bs!797649 () Bool)

(assert (= bs!797649 (and d!1365379 d!1365377)))

(assert (=> bs!797649 (= lambda!164034 lambda!164033)))

(declare-fun bs!797650 () Bool)

(assert (= bs!797650 (and d!1365379 d!1365297)))

(assert (=> bs!797650 (= lambda!164034 lambda!164019)))

(declare-fun bs!797651 () Bool)

(assert (= bs!797651 (and d!1365379 d!1365293)))

(assert (=> bs!797651 (= lambda!164034 lambda!164008)))

(declare-fun bs!797652 () Bool)

(assert (= bs!797652 (and d!1365379 d!1365231)))

(assert (=> bs!797652 (= lambda!164034 lambda!163993)))

(declare-fun bs!797653 () Bool)

(assert (= bs!797653 (and d!1365379 d!1365351)))

(assert (=> bs!797653 (= lambda!164034 lambda!164025)))

(declare-fun bs!797654 () Bool)

(assert (= bs!797654 (and d!1365379 d!1365363)))

(assert (=> bs!797654 (= lambda!164034 lambda!164029)))

(declare-fun bs!797655 () Bool)

(assert (= bs!797655 (and d!1365379 d!1365375)))

(assert (=> bs!797655 (= lambda!164034 lambda!164032)))

(declare-fun bs!797656 () Bool)

(assert (= bs!797656 (and d!1365379 d!1365325)))

(assert (=> bs!797656 (= lambda!164034 lambda!164020)))

(declare-fun bs!797657 () Bool)

(assert (= bs!797657 (and d!1365379 start!439844)))

(assert (=> bs!797657 (= lambda!164034 lambda!163983)))

(declare-fun lt!1661616 () ListMap!3353)

(assert (=> d!1365379 (invariantList!937 (toList!4092 lt!1661616))))

(declare-fun e!2785905 () ListMap!3353)

(assert (=> d!1365379 (= lt!1661616 e!2785905)))

(declare-fun c!761787 () Bool)

(assert (=> d!1365379 (= c!761787 ((_ is Cons!50331) (Cons!50331 lt!1661389 lt!1661398)))))

(assert (=> d!1365379 (forall!10022 (Cons!50331 lt!1661389 lt!1661398) lambda!164034)))

(assert (=> d!1365379 (= (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398)) lt!1661616)))

(declare-fun b!4473755 () Bool)

(assert (=> b!4473755 (= e!2785905 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (Cons!50331 lt!1661389 lt!1661398))) (extractMap!1098 (t!357405 (Cons!50331 lt!1661389 lt!1661398)))))))

(declare-fun b!4473756 () Bool)

(assert (=> b!4473756 (= e!2785905 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365379 c!761787) b!4473755))

(assert (= (and d!1365379 (not c!761787)) b!4473756))

(declare-fun m!5183261 () Bool)

(assert (=> d!1365379 m!5183261))

(declare-fun m!5183263 () Bool)

(assert (=> d!1365379 m!5183263))

(declare-fun m!5183265 () Bool)

(assert (=> b!4473755 m!5183265))

(assert (=> b!4473755 m!5183265))

(declare-fun m!5183267 () Bool)

(assert (=> b!4473755 m!5183267))

(assert (=> b!4473494 d!1365379))

(declare-fun d!1365381 () Bool)

(assert (=> d!1365381 (= (tail!7536 (toList!4091 lm!1477)) (t!357405 (toList!4091 lm!1477)))))

(assert (=> b!4473494 d!1365381))

(declare-fun d!1365383 () Bool)

(assert (=> d!1365383 (= (eq!535 (extractMap!1098 (Cons!50331 lt!1661403 lt!1661398)) (-!304 (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398)) key!3287)) (= (content!8131 (toList!4092 (extractMap!1098 (Cons!50331 lt!1661403 lt!1661398)))) (content!8131 (toList!4092 (-!304 (extractMap!1098 (Cons!50331 lt!1661389 lt!1661398)) key!3287)))))))

(declare-fun bs!797658 () Bool)

(assert (= bs!797658 d!1365383))

(declare-fun m!5183269 () Bool)

(assert (=> bs!797658 m!5183269))

(declare-fun m!5183271 () Bool)

(assert (=> bs!797658 m!5183271))

(assert (=> b!4473494 d!1365383))

(declare-fun bs!797659 () Bool)

(declare-fun d!1365385 () Bool)

(assert (= bs!797659 (and d!1365385 d!1365347)))

(declare-fun lambda!164037 () Int)

(assert (=> bs!797659 (= lambda!164037 lambda!164022)))

(declare-fun bs!797660 () Bool)

(assert (= bs!797660 (and d!1365385 d!1365245)))

(assert (=> bs!797660 (= lambda!164037 lambda!163994)))

(declare-fun bs!797661 () Bool)

(assert (= bs!797661 (and d!1365385 d!1365355)))

(assert (=> bs!797661 (not (= lambda!164037 lambda!164028))))

(declare-fun bs!797662 () Bool)

(assert (= bs!797662 (and d!1365385 d!1365377)))

(assert (=> bs!797662 (= lambda!164037 lambda!164033)))

(declare-fun bs!797663 () Bool)

(assert (= bs!797663 (and d!1365385 d!1365297)))

(assert (=> bs!797663 (= lambda!164037 lambda!164019)))

(declare-fun bs!797664 () Bool)

(assert (= bs!797664 (and d!1365385 d!1365293)))

(assert (=> bs!797664 (= lambda!164037 lambda!164008)))

(declare-fun bs!797665 () Bool)

(assert (= bs!797665 (and d!1365385 d!1365231)))

(assert (=> bs!797665 (= lambda!164037 lambda!163993)))

(declare-fun bs!797666 () Bool)

(assert (= bs!797666 (and d!1365385 d!1365363)))

(assert (=> bs!797666 (= lambda!164037 lambda!164029)))

(declare-fun bs!797667 () Bool)

(assert (= bs!797667 (and d!1365385 d!1365375)))

(assert (=> bs!797667 (= lambda!164037 lambda!164032)))

(declare-fun bs!797668 () Bool)

(assert (= bs!797668 (and d!1365385 d!1365325)))

(assert (=> bs!797668 (= lambda!164037 lambda!164020)))

(declare-fun bs!797669 () Bool)

(assert (= bs!797669 (and d!1365385 start!439844)))

(assert (=> bs!797669 (= lambda!164037 lambda!163983)))

(declare-fun bs!797670 () Bool)

(assert (= bs!797670 (and d!1365385 d!1365351)))

(assert (=> bs!797670 (= lambda!164037 lambda!164025)))

(declare-fun bs!797671 () Bool)

(assert (= bs!797671 (and d!1365385 d!1365379)))

(assert (=> bs!797671 (= lambda!164037 lambda!164034)))

(assert (=> d!1365385 (not (contains!12903 (extractMap!1098 (toList!4091 lm!1477)) key!3287))))

(declare-fun lt!1661619 () Unit!88293)

(declare-fun choose!28665 (ListLongMap!2723 K!11745 Hashable!5437) Unit!88293)

(assert (=> d!1365385 (= lt!1661619 (choose!28665 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1365385 (forall!10022 (toList!4091 lm!1477) lambda!164037)))

(assert (=> d!1365385 (= (lemmaNotInItsHashBucketThenNotInMap!42 lm!1477 key!3287 hashF!1107) lt!1661619)))

(declare-fun bs!797672 () Bool)

(assert (= bs!797672 d!1365385))

(assert (=> bs!797672 m!5182687))

(assert (=> bs!797672 m!5182687))

(assert (=> bs!797672 m!5182689))

(declare-fun m!5183273 () Bool)

(assert (=> bs!797672 m!5183273))

(declare-fun m!5183275 () Bool)

(assert (=> bs!797672 m!5183275))

(assert (=> b!4473483 d!1365385))

(declare-fun b!4473757 () Bool)

(declare-fun e!2785911 () Unit!88293)

(declare-fun lt!1661623 () Unit!88293)

(assert (=> b!4473757 (= e!2785911 lt!1661623)))

(declare-fun lt!1661621 () Unit!88293)

(assert (=> b!4473757 (= lt!1661621 (lemmaContainsKeyImpliesGetValueByKeyDefined!836 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287))))

(assert (=> b!4473757 (isDefined!8233 (getValueByKey!933 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287))))

(declare-fun lt!1661626 () Unit!88293)

(assert (=> b!4473757 (= lt!1661626 lt!1661621)))

(assert (=> b!4473757 (= lt!1661623 (lemmaInListThenGetKeysListContains!381 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287))))

(declare-fun call!311477 () Bool)

(assert (=> b!4473757 call!311477))

(declare-fun b!4473758 () Bool)

(declare-fun e!2785908 () Unit!88293)

(assert (=> b!4473758 (= e!2785911 e!2785908)))

(declare-fun c!761789 () Bool)

(assert (=> b!4473758 (= c!761789 call!311477)))

(declare-fun b!4473759 () Bool)

(declare-fun e!2785909 () Bool)

(declare-fun e!2785907 () Bool)

(assert (=> b!4473759 (= e!2785909 e!2785907)))

(declare-fun res!1856518 () Bool)

(assert (=> b!4473759 (=> (not res!1856518) (not e!2785907))))

(assert (=> b!4473759 (= res!1856518 (isDefined!8233 (getValueByKey!933 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287)))))

(declare-fun bm!311472 () Bool)

(declare-fun e!2785906 () List!50457)

(assert (=> bm!311472 (= call!311477 (contains!12907 e!2785906 key!3287))))

(declare-fun c!761788 () Bool)

(declare-fun c!761790 () Bool)

(assert (=> bm!311472 (= c!761788 c!761790)))

(declare-fun b!4473760 () Bool)

(declare-fun Unit!88311 () Unit!88293)

(assert (=> b!4473760 (= e!2785908 Unit!88311)))

(declare-fun b!4473761 () Bool)

(assert (=> b!4473761 (= e!2785907 (contains!12907 (keys!17390 (extractMap!1098 (toList!4091 lm!1477))) key!3287))))

(declare-fun b!4473762 () Bool)

(assert (=> b!4473762 (= e!2785906 (keys!17390 (extractMap!1098 (toList!4091 lm!1477))))))

(declare-fun b!4473763 () Bool)

(declare-fun e!2785910 () Bool)

(assert (=> b!4473763 (= e!2785910 (not (contains!12907 (keys!17390 (extractMap!1098 (toList!4091 lm!1477))) key!3287)))))

(declare-fun d!1365387 () Bool)

(assert (=> d!1365387 e!2785909))

(declare-fun res!1856517 () Bool)

(assert (=> d!1365387 (=> res!1856517 e!2785909)))

(assert (=> d!1365387 (= res!1856517 e!2785910)))

(declare-fun res!1856519 () Bool)

(assert (=> d!1365387 (=> (not res!1856519) (not e!2785910))))

(declare-fun lt!1661622 () Bool)

(assert (=> d!1365387 (= res!1856519 (not lt!1661622))))

(declare-fun lt!1661620 () Bool)

(assert (=> d!1365387 (= lt!1661622 lt!1661620)))

(declare-fun lt!1661624 () Unit!88293)

(assert (=> d!1365387 (= lt!1661624 e!2785911)))

(assert (=> d!1365387 (= c!761790 lt!1661620)))

(assert (=> d!1365387 (= lt!1661620 (containsKey!1509 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287))))

(assert (=> d!1365387 (= (contains!12903 (extractMap!1098 (toList!4091 lm!1477)) key!3287) lt!1661622)))

(declare-fun b!4473764 () Bool)

(assert (=> b!4473764 (= e!2785906 (getKeysList!385 (toList!4092 (extractMap!1098 (toList!4091 lm!1477)))))))

(declare-fun b!4473765 () Bool)

(assert (=> b!4473765 false))

(declare-fun lt!1661625 () Unit!88293)

(declare-fun lt!1661627 () Unit!88293)

(assert (=> b!4473765 (= lt!1661625 lt!1661627)))

(assert (=> b!4473765 (containsKey!1509 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287)))

(assert (=> b!4473765 (= lt!1661627 (lemmaInGetKeysListThenContainsKey!384 (toList!4092 (extractMap!1098 (toList!4091 lm!1477))) key!3287))))

(declare-fun Unit!88312 () Unit!88293)

(assert (=> b!4473765 (= e!2785908 Unit!88312)))

(assert (= (and d!1365387 c!761790) b!4473757))

(assert (= (and d!1365387 (not c!761790)) b!4473758))

(assert (= (and b!4473758 c!761789) b!4473765))

(assert (= (and b!4473758 (not c!761789)) b!4473760))

(assert (= (or b!4473757 b!4473758) bm!311472))

(assert (= (and bm!311472 c!761788) b!4473764))

(assert (= (and bm!311472 (not c!761788)) b!4473762))

(assert (= (and d!1365387 res!1856519) b!4473763))

(assert (= (and d!1365387 (not res!1856517)) b!4473759))

(assert (= (and b!4473759 res!1856518) b!4473761))

(assert (=> b!4473763 m!5182687))

(declare-fun m!5183277 () Bool)

(assert (=> b!4473763 m!5183277))

(assert (=> b!4473763 m!5183277))

(declare-fun m!5183279 () Bool)

(assert (=> b!4473763 m!5183279))

(declare-fun m!5183281 () Bool)

(assert (=> d!1365387 m!5183281))

(declare-fun m!5183283 () Bool)

(assert (=> b!4473757 m!5183283))

(declare-fun m!5183285 () Bool)

(assert (=> b!4473757 m!5183285))

(assert (=> b!4473757 m!5183285))

(declare-fun m!5183287 () Bool)

(assert (=> b!4473757 m!5183287))

(declare-fun m!5183289 () Bool)

(assert (=> b!4473757 m!5183289))

(declare-fun m!5183291 () Bool)

(assert (=> bm!311472 m!5183291))

(assert (=> b!4473765 m!5183281))

(declare-fun m!5183293 () Bool)

(assert (=> b!4473765 m!5183293))

(assert (=> b!4473761 m!5182687))

(assert (=> b!4473761 m!5183277))

(assert (=> b!4473761 m!5183277))

(assert (=> b!4473761 m!5183279))

(assert (=> b!4473759 m!5183285))

(assert (=> b!4473759 m!5183285))

(assert (=> b!4473759 m!5183287))

(assert (=> b!4473762 m!5182687))

(assert (=> b!4473762 m!5183277))

(declare-fun m!5183295 () Bool)

(assert (=> b!4473764 m!5183295))

(assert (=> b!4473493 d!1365387))

(declare-fun bs!797673 () Bool)

(declare-fun d!1365389 () Bool)

(assert (= bs!797673 (and d!1365389 d!1365347)))

(declare-fun lambda!164038 () Int)

(assert (=> bs!797673 (= lambda!164038 lambda!164022)))

(declare-fun bs!797674 () Bool)

(assert (= bs!797674 (and d!1365389 d!1365245)))

(assert (=> bs!797674 (= lambda!164038 lambda!163994)))

(declare-fun bs!797675 () Bool)

(assert (= bs!797675 (and d!1365389 d!1365355)))

(assert (=> bs!797675 (not (= lambda!164038 lambda!164028))))

(declare-fun bs!797676 () Bool)

(assert (= bs!797676 (and d!1365389 d!1365377)))

(assert (=> bs!797676 (= lambda!164038 lambda!164033)))

(declare-fun bs!797677 () Bool)

(assert (= bs!797677 (and d!1365389 d!1365297)))

(assert (=> bs!797677 (= lambda!164038 lambda!164019)))

(declare-fun bs!797678 () Bool)

(assert (= bs!797678 (and d!1365389 d!1365293)))

(assert (=> bs!797678 (= lambda!164038 lambda!164008)))

(declare-fun bs!797679 () Bool)

(assert (= bs!797679 (and d!1365389 d!1365231)))

(assert (=> bs!797679 (= lambda!164038 lambda!163993)))

(declare-fun bs!797680 () Bool)

(assert (= bs!797680 (and d!1365389 d!1365363)))

(assert (=> bs!797680 (= lambda!164038 lambda!164029)))

(declare-fun bs!797681 () Bool)

(assert (= bs!797681 (and d!1365389 d!1365375)))

(assert (=> bs!797681 (= lambda!164038 lambda!164032)))

(declare-fun bs!797682 () Bool)

(assert (= bs!797682 (and d!1365389 d!1365325)))

(assert (=> bs!797682 (= lambda!164038 lambda!164020)))

(declare-fun bs!797683 () Bool)

(assert (= bs!797683 (and d!1365389 start!439844)))

(assert (=> bs!797683 (= lambda!164038 lambda!163983)))

(declare-fun bs!797684 () Bool)

(assert (= bs!797684 (and d!1365389 d!1365351)))

(assert (=> bs!797684 (= lambda!164038 lambda!164025)))

(declare-fun bs!797685 () Bool)

(assert (= bs!797685 (and d!1365389 d!1365379)))

(assert (=> bs!797685 (= lambda!164038 lambda!164034)))

(declare-fun bs!797686 () Bool)

(assert (= bs!797686 (and d!1365389 d!1365385)))

(assert (=> bs!797686 (= lambda!164038 lambda!164037)))

(declare-fun lt!1661628 () ListMap!3353)

(assert (=> d!1365389 (invariantList!937 (toList!4092 lt!1661628))))

(declare-fun e!2785912 () ListMap!3353)

(assert (=> d!1365389 (= lt!1661628 e!2785912)))

(declare-fun c!761791 () Bool)

(assert (=> d!1365389 (= c!761791 ((_ is Cons!50331) (toList!4091 lm!1477)))))

(assert (=> d!1365389 (forall!10022 (toList!4091 lm!1477) lambda!164038)))

(assert (=> d!1365389 (= (extractMap!1098 (toList!4091 lm!1477)) lt!1661628)))

(declare-fun b!4473766 () Bool)

(assert (=> b!4473766 (= e!2785912 (addToMapMapFromBucket!599 (_2!28596 (h!56104 (toList!4091 lm!1477))) (extractMap!1098 (t!357405 (toList!4091 lm!1477)))))))

(declare-fun b!4473767 () Bool)

(assert (=> b!4473767 (= e!2785912 (ListMap!3354 Nil!50330))))

(assert (= (and d!1365389 c!761791) b!4473766))

(assert (= (and d!1365389 (not c!761791)) b!4473767))

(declare-fun m!5183297 () Bool)

(assert (=> d!1365389 m!5183297))

(declare-fun m!5183299 () Bool)

(assert (=> d!1365389 m!5183299))

(assert (=> b!4473766 m!5182665))

(assert (=> b!4473766 m!5182665))

(declare-fun m!5183301 () Bool)

(assert (=> b!4473766 m!5183301))

(assert (=> b!4473493 d!1365389))

(declare-fun d!1365391 () Bool)

(assert (=> d!1365391 true))

(assert (=> d!1365391 true))

(declare-fun lambda!164041 () Int)

(declare-fun forall!10024 (List!50454 Int) Bool)

(assert (=> d!1365391 (= (allKeysSameHash!896 newBucket!178 hash!344 hashF!1107) (forall!10024 newBucket!178 lambda!164041))))

(declare-fun bs!797687 () Bool)

(assert (= bs!797687 d!1365391))

(declare-fun m!5183303 () Bool)

(assert (=> bs!797687 m!5183303))

(assert (=> b!4473487 d!1365391))

(declare-fun b!4473772 () Bool)

(declare-fun e!2785918 () Unit!88293)

(declare-fun lt!1661632 () Unit!88293)

(assert (=> b!4473772 (= e!2785918 lt!1661632)))

(declare-fun lt!1661630 () Unit!88293)

(assert (=> b!4473772 (= lt!1661630 (lemmaContainsKeyImpliesGetValueByKeyDefined!836 (toList!4092 lt!1661396) key!3287))))

(assert (=> b!4473772 (isDefined!8233 (getValueByKey!933 (toList!4092 lt!1661396) key!3287))))

(declare-fun lt!1661635 () Unit!88293)

(assert (=> b!4473772 (= lt!1661635 lt!1661630)))

(assert (=> b!4473772 (= lt!1661632 (lemmaInListThenGetKeysListContains!381 (toList!4092 lt!1661396) key!3287))))

(declare-fun call!311478 () Bool)

(assert (=> b!4473772 call!311478))

(declare-fun b!4473773 () Bool)

(declare-fun e!2785915 () Unit!88293)

(assert (=> b!4473773 (= e!2785918 e!2785915)))

(declare-fun c!761793 () Bool)

(assert (=> b!4473773 (= c!761793 call!311478)))

(declare-fun b!4473774 () Bool)

(declare-fun e!2785916 () Bool)

(declare-fun e!2785914 () Bool)

(assert (=> b!4473774 (= e!2785916 e!2785914)))

(declare-fun res!1856521 () Bool)

(assert (=> b!4473774 (=> (not res!1856521) (not e!2785914))))

(assert (=> b!4473774 (= res!1856521 (isDefined!8233 (getValueByKey!933 (toList!4092 lt!1661396) key!3287)))))

(declare-fun bm!311473 () Bool)

(declare-fun e!2785913 () List!50457)

(assert (=> bm!311473 (= call!311478 (contains!12907 e!2785913 key!3287))))

(declare-fun c!761792 () Bool)

(declare-fun c!761794 () Bool)

(assert (=> bm!311473 (= c!761792 c!761794)))

(declare-fun b!4473775 () Bool)

(declare-fun Unit!88313 () Unit!88293)

(assert (=> b!4473775 (= e!2785915 Unit!88313)))

(declare-fun b!4473776 () Bool)

(assert (=> b!4473776 (= e!2785914 (contains!12907 (keys!17390 lt!1661396) key!3287))))

(declare-fun b!4473777 () Bool)

(assert (=> b!4473777 (= e!2785913 (keys!17390 lt!1661396))))

(declare-fun b!4473778 () Bool)

(declare-fun e!2785917 () Bool)

(assert (=> b!4473778 (= e!2785917 (not (contains!12907 (keys!17390 lt!1661396) key!3287)))))

(declare-fun d!1365393 () Bool)

(assert (=> d!1365393 e!2785916))

(declare-fun res!1856520 () Bool)

(assert (=> d!1365393 (=> res!1856520 e!2785916)))

(assert (=> d!1365393 (= res!1856520 e!2785917)))

(declare-fun res!1856522 () Bool)

(assert (=> d!1365393 (=> (not res!1856522) (not e!2785917))))

(declare-fun lt!1661631 () Bool)

(assert (=> d!1365393 (= res!1856522 (not lt!1661631))))

(declare-fun lt!1661629 () Bool)

(assert (=> d!1365393 (= lt!1661631 lt!1661629)))

(declare-fun lt!1661633 () Unit!88293)

(assert (=> d!1365393 (= lt!1661633 e!2785918)))

(assert (=> d!1365393 (= c!761794 lt!1661629)))

(assert (=> d!1365393 (= lt!1661629 (containsKey!1509 (toList!4092 lt!1661396) key!3287))))

(assert (=> d!1365393 (= (contains!12903 lt!1661396 key!3287) lt!1661631)))

(declare-fun b!4473779 () Bool)

(assert (=> b!4473779 (= e!2785913 (getKeysList!385 (toList!4092 lt!1661396)))))

(declare-fun b!4473780 () Bool)

(assert (=> b!4473780 false))

(declare-fun lt!1661634 () Unit!88293)

(declare-fun lt!1661636 () Unit!88293)

(assert (=> b!4473780 (= lt!1661634 lt!1661636)))

(assert (=> b!4473780 (containsKey!1509 (toList!4092 lt!1661396) key!3287)))

(assert (=> b!4473780 (= lt!1661636 (lemmaInGetKeysListThenContainsKey!384 (toList!4092 lt!1661396) key!3287))))

(declare-fun Unit!88314 () Unit!88293)

(assert (=> b!4473780 (= e!2785915 Unit!88314)))

(assert (= (and d!1365393 c!761794) b!4473772))

(assert (= (and d!1365393 (not c!761794)) b!4473773))

(assert (= (and b!4473773 c!761793) b!4473780))

(assert (= (and b!4473773 (not c!761793)) b!4473775))

(assert (= (or b!4473772 b!4473773) bm!311473))

(assert (= (and bm!311473 c!761792) b!4473779))

(assert (= (and bm!311473 (not c!761792)) b!4473777))

(assert (= (and d!1365393 res!1856522) b!4473778))

(assert (= (and d!1365393 (not res!1856520)) b!4473774))

(assert (= (and b!4473774 res!1856521) b!4473776))

(declare-fun m!5183305 () Bool)

(assert (=> b!4473778 m!5183305))

(assert (=> b!4473778 m!5183305))

(declare-fun m!5183307 () Bool)

(assert (=> b!4473778 m!5183307))

(declare-fun m!5183309 () Bool)

(assert (=> d!1365393 m!5183309))

(declare-fun m!5183311 () Bool)

(assert (=> b!4473772 m!5183311))

(declare-fun m!5183313 () Bool)

(assert (=> b!4473772 m!5183313))

(assert (=> b!4473772 m!5183313))

(declare-fun m!5183315 () Bool)

(assert (=> b!4473772 m!5183315))

(declare-fun m!5183317 () Bool)

(assert (=> b!4473772 m!5183317))

(declare-fun m!5183319 () Bool)

(assert (=> bm!311473 m!5183319))

(assert (=> b!4473780 m!5183309))

(declare-fun m!5183321 () Bool)

(assert (=> b!4473780 m!5183321))

(assert (=> b!4473776 m!5183305))

(assert (=> b!4473776 m!5183305))

(assert (=> b!4473776 m!5183307))

(assert (=> b!4473774 m!5183313))

(assert (=> b!4473774 m!5183313))

(assert (=> b!4473774 m!5183315))

(assert (=> b!4473777 m!5183305))

(declare-fun m!5183323 () Bool)

(assert (=> b!4473779 m!5183323))

(assert (=> b!4473476 d!1365393))

(declare-fun d!1365395 () Bool)

(declare-fun res!1856529 () Bool)

(declare-fun e!2785926 () Bool)

(assert (=> d!1365395 (=> res!1856529 e!2785926)))

(declare-fun e!2785925 () Bool)

(assert (=> d!1365395 (= res!1856529 e!2785925)))

(declare-fun res!1856530 () Bool)

(assert (=> d!1365395 (=> (not res!1856530) (not e!2785925))))

(assert (=> d!1365395 (= res!1856530 ((_ is Cons!50331) lt!1661406))))

(assert (=> d!1365395 (= (containsKeyBiggerList!42 lt!1661406 key!3287) e!2785926)))

(declare-fun b!4473787 () Bool)

(assert (=> b!4473787 (= e!2785925 (containsKey!1506 (_2!28596 (h!56104 lt!1661406)) key!3287))))

(declare-fun b!4473788 () Bool)

(declare-fun e!2785927 () Bool)

(assert (=> b!4473788 (= e!2785926 e!2785927)))

(declare-fun res!1856531 () Bool)

(assert (=> b!4473788 (=> (not res!1856531) (not e!2785927))))

(assert (=> b!4473788 (= res!1856531 ((_ is Cons!50331) lt!1661406))))

(declare-fun b!4473789 () Bool)

(assert (=> b!4473789 (= e!2785927 (containsKeyBiggerList!42 (t!357405 lt!1661406) key!3287))))

(assert (= (and d!1365395 res!1856530) b!4473787))

(assert (= (and d!1365395 (not res!1856529)) b!4473788))

(assert (= (and b!4473788 res!1856531) b!4473789))

(declare-fun m!5183325 () Bool)

(assert (=> b!4473787 m!5183325))

(declare-fun m!5183327 () Bool)

(assert (=> b!4473789 m!5183327))

(assert (=> b!4473486 d!1365395))

(declare-fun d!1365397 () Bool)

(declare-fun res!1856536 () Bool)

(declare-fun e!2785932 () Bool)

(assert (=> d!1365397 (=> res!1856536 e!2785932)))

(assert (=> d!1365397 (= res!1856536 (not ((_ is Cons!50330) newBucket!178)))))

(assert (=> d!1365397 (= (noDuplicateKeys!1042 newBucket!178) e!2785932)))

(declare-fun b!4473794 () Bool)

(declare-fun e!2785933 () Bool)

(assert (=> b!4473794 (= e!2785932 e!2785933)))

(declare-fun res!1856537 () Bool)

(assert (=> b!4473794 (=> (not res!1856537) (not e!2785933))))

(assert (=> b!4473794 (= res!1856537 (not (containsKey!1506 (t!357404 newBucket!178) (_1!28595 (h!56103 newBucket!178)))))))

(declare-fun b!4473795 () Bool)

(assert (=> b!4473795 (= e!2785933 (noDuplicateKeys!1042 (t!357404 newBucket!178)))))

(assert (= (and d!1365397 (not res!1856536)) b!4473794))

(assert (= (and b!4473794 res!1856537) b!4473795))

(declare-fun m!5183329 () Bool)

(assert (=> b!4473794 m!5183329))

(declare-fun m!5183331 () Bool)

(assert (=> b!4473795 m!5183331))

(assert (=> b!4473496 d!1365397))

(declare-fun d!1365399 () Bool)

(declare-fun res!1856542 () Bool)

(declare-fun e!2785938 () Bool)

(assert (=> d!1365399 (=> res!1856542 e!2785938)))

(assert (=> d!1365399 (= res!1856542 ((_ is Nil!50331) (toList!4091 lm!1477)))))

(assert (=> d!1365399 (= (forall!10022 (toList!4091 lm!1477) lambda!163983) e!2785938)))

(declare-fun b!4473800 () Bool)

(declare-fun e!2785939 () Bool)

(assert (=> b!4473800 (= e!2785938 e!2785939)))

(declare-fun res!1856543 () Bool)

(assert (=> b!4473800 (=> (not res!1856543) (not e!2785939))))

(assert (=> b!4473800 (= res!1856543 (dynLambda!21028 lambda!163983 (h!56104 (toList!4091 lm!1477))))))

(declare-fun b!4473801 () Bool)

(assert (=> b!4473801 (= e!2785939 (forall!10022 (t!357405 (toList!4091 lm!1477)) lambda!163983))))

(assert (= (and d!1365399 (not res!1856542)) b!4473800))

(assert (= (and b!4473800 res!1856543) b!4473801))

(declare-fun b_lambda!148731 () Bool)

(assert (=> (not b_lambda!148731) (not b!4473800)))

(declare-fun m!5183333 () Bool)

(assert (=> b!4473800 m!5183333))

(declare-fun m!5183335 () Bool)

(assert (=> b!4473801 m!5183335))

(assert (=> start!439844 d!1365399))

(declare-fun d!1365401 () Bool)

(assert (=> d!1365401 (= (inv!65929 lm!1477) (isStrictlySorted!351 (toList!4091 lm!1477)))))

(declare-fun bs!797688 () Bool)

(assert (= bs!797688 d!1365401))

(assert (=> bs!797688 m!5183223))

(assert (=> start!439844 d!1365401))

(declare-fun d!1365403 () Bool)

(declare-fun res!1856544 () Bool)

(declare-fun e!2785940 () Bool)

(assert (=> d!1365403 (=> res!1856544 e!2785940)))

(assert (=> d!1365403 (= res!1856544 ((_ is Nil!50331) (toList!4091 lt!1661395)))))

(assert (=> d!1365403 (= (forall!10022 (toList!4091 lt!1661395) lambda!163983) e!2785940)))

(declare-fun b!4473802 () Bool)

(declare-fun e!2785941 () Bool)

(assert (=> b!4473802 (= e!2785940 e!2785941)))

(declare-fun res!1856545 () Bool)

(assert (=> b!4473802 (=> (not res!1856545) (not e!2785941))))

(assert (=> b!4473802 (= res!1856545 (dynLambda!21028 lambda!163983 (h!56104 (toList!4091 lt!1661395))))))

(declare-fun b!4473803 () Bool)

(assert (=> b!4473803 (= e!2785941 (forall!10022 (t!357405 (toList!4091 lt!1661395)) lambda!163983))))

(assert (= (and d!1365403 (not res!1856544)) b!4473802))

(assert (= (and b!4473802 res!1856545) b!4473803))

(declare-fun b_lambda!148733 () Bool)

(assert (=> (not b_lambda!148733) (not b!4473802)))

(declare-fun m!5183337 () Bool)

(assert (=> b!4473802 m!5183337))

(declare-fun m!5183339 () Bool)

(assert (=> b!4473803 m!5183339))

(assert (=> b!4473485 d!1365403))

(declare-fun b!4473808 () Bool)

(declare-fun tp!1336459 () Bool)

(declare-fun e!2785944 () Bool)

(assert (=> b!4473808 (= e!2785944 (and tp_is_empty!27445 tp_is_empty!27447 tp!1336459))))

(assert (=> b!4473490 (= tp!1336446 e!2785944)))

(assert (= (and b!4473490 ((_ is Cons!50330) (t!357404 newBucket!178))) b!4473808))

(declare-fun b!4473813 () Bool)

(declare-fun e!2785947 () Bool)

(declare-fun tp!1336464 () Bool)

(declare-fun tp!1336465 () Bool)

(assert (=> b!4473813 (= e!2785947 (and tp!1336464 tp!1336465))))

(assert (=> b!4473497 (= tp!1336447 e!2785947)))

(assert (= (and b!4473497 ((_ is Cons!50331) (toList!4091 lm!1477))) b!4473813))

(declare-fun b_lambda!148735 () Bool)

(assert (= b_lambda!148733 (or start!439844 b_lambda!148735)))

(declare-fun bs!797689 () Bool)

(declare-fun d!1365405 () Bool)

(assert (= bs!797689 (and d!1365405 start!439844)))

(assert (=> bs!797689 (= (dynLambda!21028 lambda!163983 (h!56104 (toList!4091 lt!1661395))) (noDuplicateKeys!1042 (_2!28596 (h!56104 (toList!4091 lt!1661395)))))))

(declare-fun m!5183341 () Bool)

(assert (=> bs!797689 m!5183341))

(assert (=> b!4473802 d!1365405))

(declare-fun b_lambda!148737 () Bool)

(assert (= b_lambda!148729 (or start!439844 b_lambda!148737)))

(declare-fun bs!797690 () Bool)

(declare-fun d!1365407 () Bool)

(assert (= bs!797690 (and d!1365407 start!439844)))

(assert (=> bs!797690 (= (dynLambda!21028 lambda!163983 lt!1661390) (noDuplicateKeys!1042 (_2!28596 lt!1661390)))))

(declare-fun m!5183343 () Bool)

(assert (=> bs!797690 m!5183343))

(assert (=> d!1365371 d!1365407))

(declare-fun b_lambda!148739 () Bool)

(assert (= b_lambda!148731 (or start!439844 b_lambda!148739)))

(declare-fun bs!797691 () Bool)

(declare-fun d!1365409 () Bool)

(assert (= bs!797691 (and d!1365409 start!439844)))

(assert (=> bs!797691 (= (dynLambda!21028 lambda!163983 (h!56104 (toList!4091 lm!1477))) (noDuplicateKeys!1042 (_2!28596 (h!56104 (toList!4091 lm!1477)))))))

(assert (=> bs!797691 m!5183149))

(assert (=> b!4473800 d!1365409))

(check-sat (not bm!311473) (not d!1365329) (not d!1365379) (not d!1365351) (not b!4473795) (not d!1365259) (not b!4473759) (not d!1365385) (not d!1365363) tp_is_empty!27447 (not b!4473761) (not d!1365265) (not b!4473777) (not b!4473766) (not d!1365371) (not b!4473706) (not d!1365393) (not d!1365361) (not b!4473601) (not d!1365359) (not b!4473748) (not b!4473539) (not d!1365365) (not b!4473722) (not d!1365261) (not b!4473813) (not bm!311472) (not b!4473757) (not bs!797690) (not d!1365357) (not bm!311469) (not b_lambda!148739) (not d!1365391) (not b!4473751) (not b!4473808) (not b!4473801) (not b!4473779) (not b!4473713) (not d!1365387) (not d!1365257) (not d!1365401) (not d!1365383) (not b!4473752) (not b!4473671) (not b!4473596) (not d!1365347) (not d!1365375) (not b!4473780) (not b!4473772) (not b!4473774) tp_is_empty!27445 (not b!4473614) (not b!4473787) (not d!1365353) (not b!4473720) (not bs!797689) (not d!1365247) (not b!4473604) (not b!4473776) (not d!1365389) (not b!4473789) (not b!4473744) (not d!1365369) (not b!4473613) (not b!4473540) (not b!4473600) (not d!1365367) (not b!4473560) (not d!1365325) (not b!4473778) (not d!1365297) (not b!4473762) (not b!4473755) (not b!4473598) (not b!4473753) (not d!1365231) (not b!4473733) (not b!4473559) (not d!1365355) (not d!1365373) (not b!4473730) (not b!4473521) (not b!4473731) (not b!4473763) (not b!4473516) (not b!4473602) (not d!1365285) (not b_lambda!148735) (not b!4473794) (not b!4473764) (not b!4473603) (not b!4473803) (not d!1365377) (not d!1365245) (not d!1365293) (not bs!797691) (not b!4473765) (not b_lambda!148737))
(check-sat)
