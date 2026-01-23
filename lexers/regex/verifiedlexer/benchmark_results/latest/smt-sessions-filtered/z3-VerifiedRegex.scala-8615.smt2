; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459560 () Bool)

(assert start!459560)

(declare-fun b!4602662 () Bool)

(declare-fun e!2870963 () Bool)

(declare-fun tp!1340596 () Bool)

(assert (=> b!4602662 (= e!2870963 tp!1340596)))

(declare-fun b!4602663 () Bool)

(declare-fun e!2870956 () Bool)

(declare-fun e!2870966 () Bool)

(assert (=> b!4602663 (= e!2870956 e!2870966)))

(declare-fun res!1925544 () Bool)

(assert (=> b!4602663 (=> res!1925544 e!2870966)))

(declare-datatypes ((K!12480 0))(
  ( (K!12481 (val!18255 Int)) )
))
(declare-datatypes ((V!12726 0))(
  ( (V!12727 (val!18256 Int)) )
))
(declare-datatypes ((tuple2!51778 0))(
  ( (tuple2!51779 (_1!29183 K!12480) (_2!29183 V!12726)) )
))
(declare-datatypes ((List!51238 0))(
  ( (Nil!51114) (Cons!51114 (h!57086 tuple2!51778) (t!358232 List!51238)) )
))
(declare-datatypes ((tuple2!51780 0))(
  ( (tuple2!51781 (_1!29184 (_ BitVec 64)) (_2!29184 List!51238)) )
))
(declare-datatypes ((List!51239 0))(
  ( (Nil!51115) (Cons!51115 (h!57087 tuple2!51780) (t!358233 List!51239)) )
))
(declare-datatypes ((ListLongMap!3311 0))(
  ( (ListLongMap!3312 (toList!4679 List!51239)) )
))
(declare-fun lm!1477 () ListLongMap!3311)

(declare-fun lt!1761431 () ListLongMap!3311)

(declare-fun tail!7972 (List!51239) List!51239)

(assert (=> b!4602663 (= res!1925544 (not (= (t!358233 (toList!4679 lm!1477)) (tail!7972 (toList!4679 lt!1761431)))))))

(declare-fun lt!1761430 () tuple2!51780)

(declare-fun +!1764 (ListLongMap!3311 tuple2!51780) ListLongMap!3311)

(assert (=> b!4602663 (= lt!1761431 (+!1764 lm!1477 lt!1761430))))

(declare-fun lt!1761444 () tuple2!51780)

(declare-fun key!3287 () K!12480)

(declare-datatypes ((ListMap!3941 0))(
  ( (ListMap!3942 (toList!4680 List!51238)) )
))
(declare-fun eq!739 (ListMap!3941 ListMap!3941) Bool)

(declare-fun extractMap!1392 (List!51239) ListMap!3941)

(declare-fun -!508 (ListMap!3941 K!12480) ListMap!3941)

(assert (=> b!4602663 (eq!739 (extractMap!1392 (Cons!51115 lt!1761430 Nil!51115)) (-!508 (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115)) key!3287))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4602663 (= lt!1761444 (tuple2!51781 hash!344 (_2!29184 (h!57087 (toList!4679 lm!1477)))))))

(declare-fun newBucket!178 () List!51238)

(assert (=> b!4602663 (= lt!1761430 (tuple2!51781 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5731 0))(
  ( (HashableExt!5730 (__x!31434 Int)) )
))
(declare-fun hashF!1107 () Hashable!5731)

(declare-datatypes ((Unit!108771 0))(
  ( (Unit!108772) )
))
(declare-fun lt!1761449 () Unit!108771)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!98 ((_ BitVec 64) List!51238 List!51238 K!12480 Hashable!5731) Unit!108771)

(assert (=> b!4602663 (= lt!1761449 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!98 hash!344 (_2!29184 (h!57087 (toList!4679 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1761441 () List!51239)

(declare-fun contains!14081 (ListMap!3941 K!12480) Bool)

(assert (=> b!4602663 (contains!14081 (extractMap!1392 lt!1761441) key!3287)))

(declare-fun lt!1761435 () Unit!108771)

(declare-fun lemmaListContainsThenExtractedMapContains!266 (ListLongMap!3311 K!12480 Hashable!5731) Unit!108771)

(assert (=> b!4602663 (= lt!1761435 (lemmaListContainsThenExtractedMapContains!266 (ListLongMap!3312 lt!1761441) key!3287 hashF!1107))))

(declare-fun b!4602664 () Bool)

(declare-fun e!2870959 () Bool)

(declare-fun e!2870957 () Bool)

(assert (=> b!4602664 (= e!2870959 e!2870957)))

(declare-fun res!1925543 () Bool)

(assert (=> b!4602664 (=> res!1925543 e!2870957)))

(declare-fun lt!1761432 () Bool)

(assert (=> b!4602664 (= res!1925543 lt!1761432)))

(declare-fun lt!1761448 () Unit!108771)

(declare-fun e!2870955 () Unit!108771)

(assert (=> b!4602664 (= lt!1761448 e!2870955)))

(declare-fun c!788534 () Bool)

(assert (=> b!4602664 (= c!788534 lt!1761432)))

(declare-fun lt!1761434 () ListMap!3941)

(assert (=> b!4602664 (= lt!1761432 (contains!14081 lt!1761434 key!3287))))

(declare-fun b!4602665 () Bool)

(declare-fun head!9552 (List!51239) tuple2!51780)

(assert (=> b!4602665 (= e!2870957 (= (head!9552 (toList!4679 lm!1477)) lt!1761444))))

(declare-fun b!4602666 () Bool)

(declare-fun Unit!108773 () Unit!108771)

(assert (=> b!4602666 (= e!2870955 Unit!108773)))

(declare-fun lt!1761437 () ListLongMap!3311)

(declare-fun lt!1761440 () Unit!108771)

(declare-fun lemmaInGenMapThenLongMapContainsHash!406 (ListLongMap!3311 K!12480 Hashable!5731) Unit!108771)

(assert (=> b!4602666 (= lt!1761440 (lemmaInGenMapThenLongMapContainsHash!406 lt!1761437 key!3287 hashF!1107))))

(declare-fun res!1925539 () Bool)

(declare-fun lt!1761447 () (_ BitVec 64))

(declare-fun contains!14082 (ListLongMap!3311 (_ BitVec 64)) Bool)

(assert (=> b!4602666 (= res!1925539 (contains!14082 lt!1761437 lt!1761447))))

(declare-fun e!2870962 () Bool)

(assert (=> b!4602666 (=> (not res!1925539) (not e!2870962))))

(assert (=> b!4602666 e!2870962))

(declare-fun b!4602667 () Bool)

(declare-fun e!2870965 () Unit!108771)

(declare-fun Unit!108774 () Unit!108771)

(assert (=> b!4602667 (= e!2870965 Unit!108774)))

(declare-fun b!4602668 () Bool)

(declare-fun res!1925537 () Bool)

(assert (=> b!4602668 (=> res!1925537 e!2870957)))

(declare-fun removePairForKey!957 (List!51238 K!12480) List!51238)

(assert (=> b!4602668 (= res!1925537 (not (= (removePairForKey!957 (_2!29184 (h!57087 (toList!4679 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4602669 () Bool)

(declare-fun e!2870953 () Bool)

(declare-fun e!2870964 () Bool)

(assert (=> b!4602669 (= e!2870953 e!2870964)))

(declare-fun res!1925545 () Bool)

(assert (=> b!4602669 (=> res!1925545 e!2870964)))

(declare-fun lt!1761433 () Bool)

(assert (=> b!4602669 (= res!1925545 lt!1761433)))

(declare-fun lt!1761436 () Unit!108771)

(assert (=> b!4602669 (= lt!1761436 e!2870965)))

(declare-fun c!788533 () Bool)

(assert (=> b!4602669 (= c!788533 lt!1761433)))

(declare-fun containsKey!2184 (List!51238 K!12480) Bool)

(assert (=> b!4602669 (= lt!1761433 (not (containsKey!2184 (_2!29184 (h!57087 (toList!4679 lm!1477))) key!3287)))))

(declare-fun b!4602671 () Bool)

(declare-fun res!1925548 () Bool)

(assert (=> b!4602671 (=> res!1925548 e!2870953)))

(get-info :version)

(assert (=> b!4602671 (= res!1925548 (or ((_ is Nil!51115) (toList!4679 lm!1477)) (not (= (_1!29184 (h!57087 (toList!4679 lm!1477))) hash!344))))))

(declare-fun b!4602672 () Bool)

(declare-fun e!2870958 () Bool)

(assert (=> b!4602672 (= e!2870958 (not e!2870953))))

(declare-fun res!1925547 () Bool)

(assert (=> b!4602672 (=> res!1925547 e!2870953)))

(declare-fun lt!1761445 () List!51238)

(assert (=> b!4602672 (= res!1925547 (not (= newBucket!178 (removePairForKey!957 lt!1761445 key!3287))))))

(declare-fun lt!1761439 () Unit!108771)

(declare-fun lt!1761442 () tuple2!51780)

(declare-fun lambda!186932 () Int)

(declare-fun forallContained!2877 (List!51239 Int tuple2!51780) Unit!108771)

(assert (=> b!4602672 (= lt!1761439 (forallContained!2877 (toList!4679 lm!1477) lambda!186932 lt!1761442))))

(declare-fun contains!14083 (List!51239 tuple2!51780) Bool)

(assert (=> b!4602672 (contains!14083 (toList!4679 lm!1477) lt!1761442)))

(assert (=> b!4602672 (= lt!1761442 (tuple2!51781 hash!344 lt!1761445))))

(declare-fun lt!1761443 () Unit!108771)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!842 (List!51239 (_ BitVec 64) List!51238) Unit!108771)

(assert (=> b!4602672 (= lt!1761443 (lemmaGetValueByKeyImpliesContainsTuple!842 (toList!4679 lm!1477) hash!344 lt!1761445))))

(declare-fun apply!12069 (ListLongMap!3311 (_ BitVec 64)) List!51238)

(assert (=> b!4602672 (= lt!1761445 (apply!12069 lm!1477 hash!344))))

(assert (=> b!4602672 (contains!14082 lm!1477 lt!1761447)))

(declare-fun lt!1761446 () Unit!108771)

(assert (=> b!4602672 (= lt!1761446 (lemmaInGenMapThenLongMapContainsHash!406 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4602673 () Bool)

(declare-fun e!2870961 () Bool)

(assert (=> b!4602673 (= e!2870961 e!2870958)))

(declare-fun res!1925531 () Bool)

(assert (=> b!4602673 (=> (not res!1925531) (not e!2870958))))

(assert (=> b!4602673 (= res!1925531 (= lt!1761447 hash!344))))

(declare-fun hash!3249 (Hashable!5731 K!12480) (_ BitVec 64))

(assert (=> b!4602673 (= lt!1761447 (hash!3249 hashF!1107 key!3287))))

(declare-fun b!4602674 () Bool)

(assert (=> b!4602674 (= e!2870964 e!2870956)))

(declare-fun res!1925530 () Bool)

(assert (=> b!4602674 (=> res!1925530 e!2870956)))

(declare-fun containsKeyBiggerList!288 (List!51239 K!12480) Bool)

(assert (=> b!4602674 (= res!1925530 (not (containsKeyBiggerList!288 lt!1761441 key!3287)))))

(assert (=> b!4602674 (= lt!1761441 (Cons!51115 (h!57087 (toList!4679 lm!1477)) Nil!51115))))

(declare-fun b!4602675 () Bool)

(declare-fun res!1925535 () Bool)

(assert (=> b!4602675 (=> res!1925535 e!2870953)))

(declare-fun noDuplicateKeys!1332 (List!51238) Bool)

(assert (=> b!4602675 (= res!1925535 (not (noDuplicateKeys!1332 newBucket!178)))))

(declare-fun b!4602676 () Bool)

(declare-fun res!1925540 () Bool)

(assert (=> b!4602676 (=> res!1925540 e!2870957)))

(assert (=> b!4602676 (= res!1925540 (not (noDuplicateKeys!1332 (_2!29184 (h!57087 (toList!4679 lm!1477))))))))

(declare-fun b!4602677 () Bool)

(declare-fun Unit!108775 () Unit!108771)

(assert (=> b!4602677 (= e!2870965 Unit!108775)))

(declare-fun lt!1761438 () Unit!108771)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!302 (ListLongMap!3311 K!12480 Hashable!5731) Unit!108771)

(assert (=> b!4602677 (= lt!1761438 (lemmaNotInItsHashBucketThenNotInMap!302 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4602677 false))

(declare-fun b!4602678 () Bool)

(assert (=> b!4602678 (= e!2870962 false)))

(declare-fun b!4602679 () Bool)

(declare-fun res!1925546 () Bool)

(assert (=> b!4602679 (=> res!1925546 e!2870957)))

(declare-fun allKeysSameHash!1188 (List!51238 (_ BitVec 64) Hashable!5731) Bool)

(assert (=> b!4602679 (= res!1925546 (not (allKeysSameHash!1188 (_2!29184 (h!57087 (toList!4679 lm!1477))) hash!344 hashF!1107)))))

(declare-fun b!4602680 () Bool)

(declare-fun res!1925536 () Bool)

(assert (=> b!4602680 (=> (not res!1925536) (not e!2870958))))

(assert (=> b!4602680 (= res!1925536 (allKeysSameHash!1188 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4602681 () Bool)

(declare-fun e!2870960 () Bool)

(assert (=> b!4602681 (= e!2870960 e!2870959)))

(declare-fun res!1925533 () Bool)

(assert (=> b!4602681 (=> res!1925533 e!2870959)))

(assert (=> b!4602681 (= res!1925533 (not (= lt!1761434 (extractMap!1392 (t!358233 (toList!4679 lm!1477))))))))

(assert (=> b!4602681 (= lt!1761434 (extractMap!1392 (toList!4679 lt!1761437)))))

(declare-fun b!4602682 () Bool)

(assert (=> b!4602682 (= e!2870966 e!2870960)))

(declare-fun res!1925542 () Bool)

(assert (=> b!4602682 (=> res!1925542 e!2870960)))

(assert (=> b!4602682 (= res!1925542 (not (= lt!1761431 (+!1764 lt!1761437 lt!1761430))))))

(declare-fun tail!7973 (ListLongMap!3311) ListLongMap!3311)

(assert (=> b!4602682 (= lt!1761437 (tail!7973 lm!1477))))

(declare-fun b!4602670 () Bool)

(declare-fun Unit!108776 () Unit!108771)

(assert (=> b!4602670 (= e!2870955 Unit!108776)))

(declare-fun res!1925532 () Bool)

(assert (=> start!459560 (=> (not res!1925532) (not e!2870961))))

(declare-fun forall!10626 (List!51239 Int) Bool)

(assert (=> start!459560 (= res!1925532 (forall!10626 (toList!4679 lm!1477) lambda!186932))))

(assert (=> start!459560 e!2870961))

(assert (=> start!459560 true))

(declare-fun inv!66664 (ListLongMap!3311) Bool)

(assert (=> start!459560 (and (inv!66664 lm!1477) e!2870963)))

(declare-fun tp_is_empty!28621 () Bool)

(assert (=> start!459560 tp_is_empty!28621))

(declare-fun e!2870954 () Bool)

(assert (=> start!459560 e!2870954))

(declare-fun tp_is_empty!28623 () Bool)

(declare-fun tp!1340597 () Bool)

(declare-fun b!4602683 () Bool)

(assert (=> b!4602683 (= e!2870954 (and tp_is_empty!28621 tp_is_empty!28623 tp!1340597))))

(declare-fun b!4602684 () Bool)

(declare-fun res!1925534 () Bool)

(assert (=> b!4602684 (=> (not res!1925534) (not e!2870961))))

(declare-fun allKeysSameHashInMap!1443 (ListLongMap!3311 Hashable!5731) Bool)

(assert (=> b!4602684 (= res!1925534 (allKeysSameHashInMap!1443 lm!1477 hashF!1107))))

(declare-fun b!4602685 () Bool)

(declare-fun res!1925541 () Bool)

(assert (=> b!4602685 (=> (not res!1925541) (not e!2870961))))

(assert (=> b!4602685 (= res!1925541 (contains!14081 (extractMap!1392 (toList!4679 lm!1477)) key!3287))))

(declare-fun b!4602686 () Bool)

(declare-fun res!1925538 () Bool)

(assert (=> b!4602686 (=> res!1925538 e!2870957)))

(assert (=> b!4602686 (= res!1925538 (not (forall!10626 (toList!4679 lm!1477) lambda!186932)))))

(assert (= (and start!459560 res!1925532) b!4602684))

(assert (= (and b!4602684 res!1925534) b!4602685))

(assert (= (and b!4602685 res!1925541) b!4602673))

(assert (= (and b!4602673 res!1925531) b!4602680))

(assert (= (and b!4602680 res!1925536) b!4602672))

(assert (= (and b!4602672 (not res!1925547)) b!4602675))

(assert (= (and b!4602675 (not res!1925535)) b!4602671))

(assert (= (and b!4602671 (not res!1925548)) b!4602669))

(assert (= (and b!4602669 c!788533) b!4602677))

(assert (= (and b!4602669 (not c!788533)) b!4602667))

(assert (= (and b!4602669 (not res!1925545)) b!4602674))

(assert (= (and b!4602674 (not res!1925530)) b!4602663))

(assert (= (and b!4602663 (not res!1925544)) b!4602682))

(assert (= (and b!4602682 (not res!1925542)) b!4602681))

(assert (= (and b!4602681 (not res!1925533)) b!4602664))

(assert (= (and b!4602664 c!788534) b!4602666))

(assert (= (and b!4602664 (not c!788534)) b!4602670))

(assert (= (and b!4602666 res!1925539) b!4602678))

(assert (= (and b!4602664 (not res!1925543)) b!4602686))

(assert (= (and b!4602686 (not res!1925538)) b!4602676))

(assert (= (and b!4602676 (not res!1925540)) b!4602668))

(assert (= (and b!4602668 (not res!1925537)) b!4602679))

(assert (= (and b!4602679 (not res!1925546)) b!4602665))

(assert (= start!459560 b!4602662))

(assert (= (and start!459560 ((_ is Cons!51114) newBucket!178)) b!4602683))

(declare-fun m!5431499 () Bool)

(assert (=> b!4602682 m!5431499))

(declare-fun m!5431501 () Bool)

(assert (=> b!4602682 m!5431501))

(declare-fun m!5431503 () Bool)

(assert (=> start!459560 m!5431503))

(declare-fun m!5431505 () Bool)

(assert (=> start!459560 m!5431505))

(declare-fun m!5431507 () Bool)

(assert (=> b!4602675 m!5431507))

(declare-fun m!5431509 () Bool)

(assert (=> b!4602663 m!5431509))

(declare-fun m!5431511 () Bool)

(assert (=> b!4602663 m!5431511))

(declare-fun m!5431513 () Bool)

(assert (=> b!4602663 m!5431513))

(declare-fun m!5431515 () Bool)

(assert (=> b!4602663 m!5431515))

(assert (=> b!4602663 m!5431513))

(declare-fun m!5431517 () Bool)

(assert (=> b!4602663 m!5431517))

(declare-fun m!5431519 () Bool)

(assert (=> b!4602663 m!5431519))

(assert (=> b!4602663 m!5431511))

(assert (=> b!4602663 m!5431515))

(declare-fun m!5431521 () Bool)

(assert (=> b!4602663 m!5431521))

(assert (=> b!4602663 m!5431509))

(declare-fun m!5431523 () Bool)

(assert (=> b!4602663 m!5431523))

(declare-fun m!5431525 () Bool)

(assert (=> b!4602663 m!5431525))

(declare-fun m!5431527 () Bool)

(assert (=> b!4602663 m!5431527))

(declare-fun m!5431529 () Bool)

(assert (=> b!4602674 m!5431529))

(declare-fun m!5431531 () Bool)

(assert (=> b!4602679 m!5431531))

(declare-fun m!5431533 () Bool)

(assert (=> b!4602684 m!5431533))

(declare-fun m!5431535 () Bool)

(assert (=> b!4602676 m!5431535))

(declare-fun m!5431537 () Bool)

(assert (=> b!4602681 m!5431537))

(declare-fun m!5431539 () Bool)

(assert (=> b!4602681 m!5431539))

(declare-fun m!5431541 () Bool)

(assert (=> b!4602665 m!5431541))

(declare-fun m!5431543 () Bool)

(assert (=> b!4602680 m!5431543))

(declare-fun m!5431545 () Bool)

(assert (=> b!4602677 m!5431545))

(declare-fun m!5431547 () Bool)

(assert (=> b!4602673 m!5431547))

(declare-fun m!5431549 () Bool)

(assert (=> b!4602664 m!5431549))

(assert (=> b!4602686 m!5431503))

(declare-fun m!5431551 () Bool)

(assert (=> b!4602668 m!5431551))

(declare-fun m!5431553 () Bool)

(assert (=> b!4602666 m!5431553))

(declare-fun m!5431555 () Bool)

(assert (=> b!4602666 m!5431555))

(declare-fun m!5431557 () Bool)

(assert (=> b!4602669 m!5431557))

(declare-fun m!5431559 () Bool)

(assert (=> b!4602685 m!5431559))

(assert (=> b!4602685 m!5431559))

(declare-fun m!5431561 () Bool)

(assert (=> b!4602685 m!5431561))

(declare-fun m!5431563 () Bool)

(assert (=> b!4602672 m!5431563))

(declare-fun m!5431565 () Bool)

(assert (=> b!4602672 m!5431565))

(declare-fun m!5431567 () Bool)

(assert (=> b!4602672 m!5431567))

(declare-fun m!5431569 () Bool)

(assert (=> b!4602672 m!5431569))

(declare-fun m!5431571 () Bool)

(assert (=> b!4602672 m!5431571))

(declare-fun m!5431573 () Bool)

(assert (=> b!4602672 m!5431573))

(declare-fun m!5431575 () Bool)

(assert (=> b!4602672 m!5431575))

(check-sat (not b!4602676) (not b!4602677) tp_is_empty!28621 tp_is_empty!28623 (not b!4602668) (not b!4602686) (not b!4602663) (not b!4602684) (not b!4602669) (not b!4602665) (not b!4602682) (not b!4602662) (not b!4602673) (not b!4602674) (not b!4602672) (not b!4602685) (not b!4602664) (not b!4602681) (not start!459560) (not b!4602683) (not b!4602680) (not b!4602679) (not b!4602666) (not b!4602675))
(check-sat)
(get-model)

(declare-fun d!1449680 () Bool)

(assert (=> d!1449680 true))

(assert (=> d!1449680 true))

(declare-fun lambda!186935 () Int)

(declare-fun forall!10627 (List!51238 Int) Bool)

(assert (=> d!1449680 (= (allKeysSameHash!1188 (_2!29184 (h!57087 (toList!4679 lm!1477))) hash!344 hashF!1107) (forall!10627 (_2!29184 (h!57087 (toList!4679 lm!1477))) lambda!186935))))

(declare-fun bs!1013784 () Bool)

(assert (= bs!1013784 d!1449680))

(declare-fun m!5431577 () Bool)

(assert (=> bs!1013784 m!5431577))

(assert (=> b!4602679 d!1449680))

(declare-fun b!4602701 () Bool)

(declare-fun e!2870971 () List!51238)

(assert (=> b!4602701 (= e!2870971 (Cons!51114 (h!57086 (_2!29184 (h!57087 (toList!4679 lm!1477)))) (removePairForKey!957 (t!358232 (_2!29184 (h!57087 (toList!4679 lm!1477)))) key!3287)))))

(declare-fun b!4602700 () Bool)

(declare-fun e!2870972 () List!51238)

(assert (=> b!4602700 (= e!2870972 e!2870971)))

(declare-fun c!788540 () Bool)

(assert (=> b!4602700 (= c!788540 ((_ is Cons!51114) (_2!29184 (h!57087 (toList!4679 lm!1477)))))))

(declare-fun d!1449682 () Bool)

(declare-fun lt!1761452 () List!51238)

(assert (=> d!1449682 (not (containsKey!2184 lt!1761452 key!3287))))

(assert (=> d!1449682 (= lt!1761452 e!2870972)))

(declare-fun c!788539 () Bool)

(assert (=> d!1449682 (= c!788539 (and ((_ is Cons!51114) (_2!29184 (h!57087 (toList!4679 lm!1477)))) (= (_1!29183 (h!57086 (_2!29184 (h!57087 (toList!4679 lm!1477))))) key!3287)))))

(assert (=> d!1449682 (noDuplicateKeys!1332 (_2!29184 (h!57087 (toList!4679 lm!1477))))))

(assert (=> d!1449682 (= (removePairForKey!957 (_2!29184 (h!57087 (toList!4679 lm!1477))) key!3287) lt!1761452)))

(declare-fun b!4602702 () Bool)

(assert (=> b!4602702 (= e!2870971 Nil!51114)))

(declare-fun b!4602699 () Bool)

(assert (=> b!4602699 (= e!2870972 (t!358232 (_2!29184 (h!57087 (toList!4679 lm!1477)))))))

(assert (= (and d!1449682 c!788539) b!4602699))

(assert (= (and d!1449682 (not c!788539)) b!4602700))

(assert (= (and b!4602700 c!788540) b!4602701))

(assert (= (and b!4602700 (not c!788540)) b!4602702))

(declare-fun m!5431579 () Bool)

(assert (=> b!4602701 m!5431579))

(declare-fun m!5431581 () Bool)

(assert (=> d!1449682 m!5431581))

(assert (=> d!1449682 m!5431535))

(assert (=> b!4602668 d!1449682))

(declare-fun bs!1013785 () Bool)

(declare-fun d!1449684 () Bool)

(assert (= bs!1013785 (and d!1449684 d!1449680)))

(declare-fun lambda!186936 () Int)

(assert (=> bs!1013785 (= lambda!186936 lambda!186935)))

(assert (=> d!1449684 true))

(assert (=> d!1449684 true))

(assert (=> d!1449684 (= (allKeysSameHash!1188 newBucket!178 hash!344 hashF!1107) (forall!10627 newBucket!178 lambda!186936))))

(declare-fun bs!1013786 () Bool)

(assert (= bs!1013786 d!1449684))

(declare-fun m!5431583 () Bool)

(assert (=> bs!1013786 m!5431583))

(assert (=> b!4602680 d!1449684))

(declare-fun d!1449686 () Bool)

(declare-fun res!1925553 () Bool)

(declare-fun e!2870977 () Bool)

(assert (=> d!1449686 (=> res!1925553 e!2870977)))

(assert (=> d!1449686 (= res!1925553 (and ((_ is Cons!51114) (_2!29184 (h!57087 (toList!4679 lm!1477)))) (= (_1!29183 (h!57086 (_2!29184 (h!57087 (toList!4679 lm!1477))))) key!3287)))))

(assert (=> d!1449686 (= (containsKey!2184 (_2!29184 (h!57087 (toList!4679 lm!1477))) key!3287) e!2870977)))

(declare-fun b!4602707 () Bool)

(declare-fun e!2870978 () Bool)

(assert (=> b!4602707 (= e!2870977 e!2870978)))

(declare-fun res!1925554 () Bool)

(assert (=> b!4602707 (=> (not res!1925554) (not e!2870978))))

(assert (=> b!4602707 (= res!1925554 ((_ is Cons!51114) (_2!29184 (h!57087 (toList!4679 lm!1477)))))))

(declare-fun b!4602708 () Bool)

(assert (=> b!4602708 (= e!2870978 (containsKey!2184 (t!358232 (_2!29184 (h!57087 (toList!4679 lm!1477)))) key!3287))))

(assert (= (and d!1449686 (not res!1925553)) b!4602707))

(assert (= (and b!4602707 res!1925554) b!4602708))

(declare-fun m!5431585 () Bool)

(assert (=> b!4602708 m!5431585))

(assert (=> b!4602669 d!1449686))

(declare-fun bs!1013787 () Bool)

(declare-fun d!1449690 () Bool)

(assert (= bs!1013787 (and d!1449690 start!459560)))

(declare-fun lambda!186941 () Int)

(assert (=> bs!1013787 (= lambda!186941 lambda!186932)))

(declare-fun lt!1761479 () ListMap!3941)

(declare-fun invariantList!1132 (List!51238) Bool)

(assert (=> d!1449690 (invariantList!1132 (toList!4680 lt!1761479))))

(declare-fun e!2870999 () ListMap!3941)

(assert (=> d!1449690 (= lt!1761479 e!2870999)))

(declare-fun c!788552 () Bool)

(assert (=> d!1449690 (= c!788552 ((_ is Cons!51115) (t!358233 (toList!4679 lm!1477))))))

(assert (=> d!1449690 (forall!10626 (t!358233 (toList!4679 lm!1477)) lambda!186941)))

(assert (=> d!1449690 (= (extractMap!1392 (t!358233 (toList!4679 lm!1477))) lt!1761479)))

(declare-fun b!4602740 () Bool)

(declare-fun addToMapMapFromBucket!822 (List!51238 ListMap!3941) ListMap!3941)

(assert (=> b!4602740 (= e!2870999 (addToMapMapFromBucket!822 (_2!29184 (h!57087 (t!358233 (toList!4679 lm!1477)))) (extractMap!1392 (t!358233 (t!358233 (toList!4679 lm!1477))))))))

(declare-fun b!4602741 () Bool)

(assert (=> b!4602741 (= e!2870999 (ListMap!3942 Nil!51114))))

(assert (= (and d!1449690 c!788552) b!4602740))

(assert (= (and d!1449690 (not c!788552)) b!4602741))

(declare-fun m!5431607 () Bool)

(assert (=> d!1449690 m!5431607))

(declare-fun m!5431609 () Bool)

(assert (=> d!1449690 m!5431609))

(declare-fun m!5431611 () Bool)

(assert (=> b!4602740 m!5431611))

(assert (=> b!4602740 m!5431611))

(declare-fun m!5431613 () Bool)

(assert (=> b!4602740 m!5431613))

(assert (=> b!4602681 d!1449690))

(declare-fun bs!1013788 () Bool)

(declare-fun d!1449694 () Bool)

(assert (= bs!1013788 (and d!1449694 start!459560)))

(declare-fun lambda!186942 () Int)

(assert (=> bs!1013788 (= lambda!186942 lambda!186932)))

(declare-fun bs!1013790 () Bool)

(assert (= bs!1013790 (and d!1449694 d!1449690)))

(assert (=> bs!1013790 (= lambda!186942 lambda!186941)))

(declare-fun lt!1761482 () ListMap!3941)

(assert (=> d!1449694 (invariantList!1132 (toList!4680 lt!1761482))))

(declare-fun e!2871002 () ListMap!3941)

(assert (=> d!1449694 (= lt!1761482 e!2871002)))

(declare-fun c!788555 () Bool)

(assert (=> d!1449694 (= c!788555 ((_ is Cons!51115) (toList!4679 lt!1761437)))))

(assert (=> d!1449694 (forall!10626 (toList!4679 lt!1761437) lambda!186942)))

(assert (=> d!1449694 (= (extractMap!1392 (toList!4679 lt!1761437)) lt!1761482)))

(declare-fun b!4602746 () Bool)

(assert (=> b!4602746 (= e!2871002 (addToMapMapFromBucket!822 (_2!29184 (h!57087 (toList!4679 lt!1761437))) (extractMap!1392 (t!358233 (toList!4679 lt!1761437)))))))

(declare-fun b!4602747 () Bool)

(assert (=> b!4602747 (= e!2871002 (ListMap!3942 Nil!51114))))

(assert (= (and d!1449694 c!788555) b!4602746))

(assert (= (and d!1449694 (not c!788555)) b!4602747))

(declare-fun m!5431621 () Bool)

(assert (=> d!1449694 m!5431621))

(declare-fun m!5431623 () Bool)

(assert (=> d!1449694 m!5431623))

(declare-fun m!5431625 () Bool)

(assert (=> b!4602746 m!5431625))

(assert (=> b!4602746 m!5431625))

(declare-fun m!5431627 () Bool)

(assert (=> b!4602746 m!5431627))

(assert (=> b!4602681 d!1449694))

(declare-fun bs!1013795 () Bool)

(declare-fun d!1449698 () Bool)

(assert (= bs!1013795 (and d!1449698 start!459560)))

(declare-fun lambda!186949 () Int)

(assert (=> bs!1013795 (= lambda!186949 lambda!186932)))

(declare-fun bs!1013796 () Bool)

(assert (= bs!1013796 (and d!1449698 d!1449690)))

(assert (=> bs!1013796 (= lambda!186949 lambda!186941)))

(declare-fun bs!1013797 () Bool)

(assert (= bs!1013797 (and d!1449698 d!1449694)))

(assert (=> bs!1013797 (= lambda!186949 lambda!186942)))

(assert (=> d!1449698 (contains!14082 lm!1477 (hash!3249 hashF!1107 key!3287))))

(declare-fun lt!1761489 () Unit!108771)

(declare-fun choose!30886 (ListLongMap!3311 K!12480 Hashable!5731) Unit!108771)

(assert (=> d!1449698 (= lt!1761489 (choose!30886 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1449698 (forall!10626 (toList!4679 lm!1477) lambda!186949)))

(assert (=> d!1449698 (= (lemmaInGenMapThenLongMapContainsHash!406 lm!1477 key!3287 hashF!1107) lt!1761489)))

(declare-fun bs!1013798 () Bool)

(assert (= bs!1013798 d!1449698))

(assert (=> bs!1013798 m!5431547))

(assert (=> bs!1013798 m!5431547))

(declare-fun m!5431641 () Bool)

(assert (=> bs!1013798 m!5431641))

(declare-fun m!5431643 () Bool)

(assert (=> bs!1013798 m!5431643))

(declare-fun m!5431645 () Bool)

(assert (=> bs!1013798 m!5431645))

(assert (=> b!4602672 d!1449698))

(declare-fun d!1449706 () Bool)

(declare-fun lt!1761498 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8666 (List!51239) (InoxSet tuple2!51780))

(assert (=> d!1449706 (= lt!1761498 (select (content!8666 (toList!4679 lm!1477)) lt!1761442))))

(declare-fun e!2871027 () Bool)

(assert (=> d!1449706 (= lt!1761498 e!2871027)))

(declare-fun res!1925580 () Bool)

(assert (=> d!1449706 (=> (not res!1925580) (not e!2871027))))

(assert (=> d!1449706 (= res!1925580 ((_ is Cons!51115) (toList!4679 lm!1477)))))

(assert (=> d!1449706 (= (contains!14083 (toList!4679 lm!1477) lt!1761442) lt!1761498)))

(declare-fun b!4602778 () Bool)

(declare-fun e!2871026 () Bool)

(assert (=> b!4602778 (= e!2871027 e!2871026)))

(declare-fun res!1925581 () Bool)

(assert (=> b!4602778 (=> res!1925581 e!2871026)))

(assert (=> b!4602778 (= res!1925581 (= (h!57087 (toList!4679 lm!1477)) lt!1761442))))

(declare-fun b!4602779 () Bool)

(assert (=> b!4602779 (= e!2871026 (contains!14083 (t!358233 (toList!4679 lm!1477)) lt!1761442))))

(assert (= (and d!1449706 res!1925580) b!4602778))

(assert (= (and b!4602778 (not res!1925581)) b!4602779))

(declare-fun m!5431663 () Bool)

(assert (=> d!1449706 m!5431663))

(declare-fun m!5431665 () Bool)

(assert (=> d!1449706 m!5431665))

(declare-fun m!5431667 () Bool)

(assert (=> b!4602779 m!5431667))

(assert (=> b!4602672 d!1449706))

(declare-fun d!1449714 () Bool)

(declare-fun e!2871058 () Bool)

(assert (=> d!1449714 e!2871058))

(declare-fun res!1925603 () Bool)

(assert (=> d!1449714 (=> res!1925603 e!2871058)))

(declare-fun lt!1761538 () Bool)

(assert (=> d!1449714 (= res!1925603 (not lt!1761538))))

(declare-fun lt!1761540 () Bool)

(assert (=> d!1449714 (= lt!1761538 lt!1761540)))

(declare-fun lt!1761539 () Unit!108771)

(declare-fun e!2871059 () Unit!108771)

(assert (=> d!1449714 (= lt!1761539 e!2871059)))

(declare-fun c!788572 () Bool)

(assert (=> d!1449714 (= c!788572 lt!1761540)))

(declare-fun containsKey!2187 (List!51239 (_ BitVec 64)) Bool)

(assert (=> d!1449714 (= lt!1761540 (containsKey!2187 (toList!4679 lm!1477) lt!1761447))))

(assert (=> d!1449714 (= (contains!14082 lm!1477 lt!1761447) lt!1761538)))

(declare-fun b!4602819 () Bool)

(declare-fun lt!1761541 () Unit!108771)

(assert (=> b!4602819 (= e!2871059 lt!1761541)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1230 (List!51239 (_ BitVec 64)) Unit!108771)

(assert (=> b!4602819 (= lt!1761541 (lemmaContainsKeyImpliesGetValueByKeyDefined!1230 (toList!4679 lm!1477) lt!1761447))))

(declare-datatypes ((Option!11406 0))(
  ( (None!11405) (Some!11405 (v!45411 List!51238)) )
))
(declare-fun isDefined!8674 (Option!11406) Bool)

(declare-fun getValueByKey!1326 (List!51239 (_ BitVec 64)) Option!11406)

(assert (=> b!4602819 (isDefined!8674 (getValueByKey!1326 (toList!4679 lm!1477) lt!1761447))))

(declare-fun b!4602820 () Bool)

(declare-fun Unit!108783 () Unit!108771)

(assert (=> b!4602820 (= e!2871059 Unit!108783)))

(declare-fun b!4602821 () Bool)

(assert (=> b!4602821 (= e!2871058 (isDefined!8674 (getValueByKey!1326 (toList!4679 lm!1477) lt!1761447)))))

(assert (= (and d!1449714 c!788572) b!4602819))

(assert (= (and d!1449714 (not c!788572)) b!4602820))

(assert (= (and d!1449714 (not res!1925603)) b!4602821))

(declare-fun m!5431725 () Bool)

(assert (=> d!1449714 m!5431725))

(declare-fun m!5431727 () Bool)

(assert (=> b!4602819 m!5431727))

(declare-fun m!5431729 () Bool)

(assert (=> b!4602819 m!5431729))

(assert (=> b!4602819 m!5431729))

(declare-fun m!5431731 () Bool)

(assert (=> b!4602819 m!5431731))

(assert (=> b!4602821 m!5431729))

(assert (=> b!4602821 m!5431729))

(assert (=> b!4602821 m!5431731))

(assert (=> b!4602672 d!1449714))

(declare-fun b!4602824 () Bool)

(declare-fun e!2871060 () List!51238)

(assert (=> b!4602824 (= e!2871060 (Cons!51114 (h!57086 lt!1761445) (removePairForKey!957 (t!358232 lt!1761445) key!3287)))))

(declare-fun b!4602823 () Bool)

(declare-fun e!2871061 () List!51238)

(assert (=> b!4602823 (= e!2871061 e!2871060)))

(declare-fun c!788574 () Bool)

(assert (=> b!4602823 (= c!788574 ((_ is Cons!51114) lt!1761445))))

(declare-fun d!1449732 () Bool)

(declare-fun lt!1761542 () List!51238)

(assert (=> d!1449732 (not (containsKey!2184 lt!1761542 key!3287))))

(assert (=> d!1449732 (= lt!1761542 e!2871061)))

(declare-fun c!788573 () Bool)

(assert (=> d!1449732 (= c!788573 (and ((_ is Cons!51114) lt!1761445) (= (_1!29183 (h!57086 lt!1761445)) key!3287)))))

(assert (=> d!1449732 (noDuplicateKeys!1332 lt!1761445)))

(assert (=> d!1449732 (= (removePairForKey!957 lt!1761445 key!3287) lt!1761542)))

(declare-fun b!4602825 () Bool)

(assert (=> b!4602825 (= e!2871060 Nil!51114)))

(declare-fun b!4602822 () Bool)

(assert (=> b!4602822 (= e!2871061 (t!358232 lt!1761445))))

(assert (= (and d!1449732 c!788573) b!4602822))

(assert (= (and d!1449732 (not c!788573)) b!4602823))

(assert (= (and b!4602823 c!788574) b!4602824))

(assert (= (and b!4602823 (not c!788574)) b!4602825))

(declare-fun m!5431733 () Bool)

(assert (=> b!4602824 m!5431733))

(declare-fun m!5431735 () Bool)

(assert (=> d!1449732 m!5431735))

(declare-fun m!5431737 () Bool)

(assert (=> d!1449732 m!5431737))

(assert (=> b!4602672 d!1449732))

(declare-fun d!1449734 () Bool)

(declare-fun get!16902 (Option!11406) List!51238)

(assert (=> d!1449734 (= (apply!12069 lm!1477 hash!344) (get!16902 (getValueByKey!1326 (toList!4679 lm!1477) hash!344)))))

(declare-fun bs!1013806 () Bool)

(assert (= bs!1013806 d!1449734))

(declare-fun m!5431745 () Bool)

(assert (=> bs!1013806 m!5431745))

(assert (=> bs!1013806 m!5431745))

(declare-fun m!5431747 () Bool)

(assert (=> bs!1013806 m!5431747))

(assert (=> b!4602672 d!1449734))

(declare-fun d!1449740 () Bool)

(declare-fun dynLambda!21410 (Int tuple2!51780) Bool)

(assert (=> d!1449740 (dynLambda!21410 lambda!186932 lt!1761442)))

(declare-fun lt!1761554 () Unit!108771)

(declare-fun choose!30887 (List!51239 Int tuple2!51780) Unit!108771)

(assert (=> d!1449740 (= lt!1761554 (choose!30887 (toList!4679 lm!1477) lambda!186932 lt!1761442))))

(declare-fun e!2871074 () Bool)

(assert (=> d!1449740 e!2871074))

(declare-fun res!1925616 () Bool)

(assert (=> d!1449740 (=> (not res!1925616) (not e!2871074))))

(assert (=> d!1449740 (= res!1925616 (forall!10626 (toList!4679 lm!1477) lambda!186932))))

(assert (=> d!1449740 (= (forallContained!2877 (toList!4679 lm!1477) lambda!186932 lt!1761442) lt!1761554)))

(declare-fun b!4602846 () Bool)

(assert (=> b!4602846 (= e!2871074 (contains!14083 (toList!4679 lm!1477) lt!1761442))))

(assert (= (and d!1449740 res!1925616) b!4602846))

(declare-fun b_lambda!169721 () Bool)

(assert (=> (not b_lambda!169721) (not d!1449740)))

(declare-fun m!5431751 () Bool)

(assert (=> d!1449740 m!5431751))

(declare-fun m!5431753 () Bool)

(assert (=> d!1449740 m!5431753))

(assert (=> d!1449740 m!5431503))

(assert (=> b!4602846 m!5431571))

(assert (=> b!4602672 d!1449740))

(declare-fun d!1449744 () Bool)

(assert (=> d!1449744 (contains!14083 (toList!4679 lm!1477) (tuple2!51781 hash!344 lt!1761445))))

(declare-fun lt!1761572 () Unit!108771)

(declare-fun choose!30888 (List!51239 (_ BitVec 64) List!51238) Unit!108771)

(assert (=> d!1449744 (= lt!1761572 (choose!30888 (toList!4679 lm!1477) hash!344 lt!1761445))))

(declare-fun e!2871089 () Bool)

(assert (=> d!1449744 e!2871089))

(declare-fun res!1925626 () Bool)

(assert (=> d!1449744 (=> (not res!1925626) (not e!2871089))))

(declare-fun isStrictlySorted!548 (List!51239) Bool)

(assert (=> d!1449744 (= res!1925626 (isStrictlySorted!548 (toList!4679 lm!1477)))))

(assert (=> d!1449744 (= (lemmaGetValueByKeyImpliesContainsTuple!842 (toList!4679 lm!1477) hash!344 lt!1761445) lt!1761572)))

(declare-fun b!4602868 () Bool)

(assert (=> b!4602868 (= e!2871089 (= (getValueByKey!1326 (toList!4679 lm!1477) hash!344) (Some!11405 lt!1761445)))))

(assert (= (and d!1449744 res!1925626) b!4602868))

(declare-fun m!5431801 () Bool)

(assert (=> d!1449744 m!5431801))

(declare-fun m!5431803 () Bool)

(assert (=> d!1449744 m!5431803))

(declare-fun m!5431805 () Bool)

(assert (=> d!1449744 m!5431805))

(assert (=> b!4602868 m!5431745))

(assert (=> b!4602672 d!1449744))

(declare-fun d!1449760 () Bool)

(declare-fun e!2871093 () Bool)

(assert (=> d!1449760 e!2871093))

(declare-fun res!1925631 () Bool)

(assert (=> d!1449760 (=> (not res!1925631) (not e!2871093))))

(declare-fun lt!1761584 () ListLongMap!3311)

(assert (=> d!1449760 (= res!1925631 (contains!14082 lt!1761584 (_1!29184 lt!1761430)))))

(declare-fun lt!1761587 () List!51239)

(assert (=> d!1449760 (= lt!1761584 (ListLongMap!3312 lt!1761587))))

(declare-fun lt!1761585 () Unit!108771)

(declare-fun lt!1761586 () Unit!108771)

(assert (=> d!1449760 (= lt!1761585 lt!1761586)))

(assert (=> d!1449760 (= (getValueByKey!1326 lt!1761587 (_1!29184 lt!1761430)) (Some!11405 (_2!29184 lt!1761430)))))

(declare-fun lemmaContainsTupThenGetReturnValue!804 (List!51239 (_ BitVec 64) List!51238) Unit!108771)

(assert (=> d!1449760 (= lt!1761586 (lemmaContainsTupThenGetReturnValue!804 lt!1761587 (_1!29184 lt!1761430) (_2!29184 lt!1761430)))))

(declare-fun insertStrictlySorted!496 (List!51239 (_ BitVec 64) List!51238) List!51239)

(assert (=> d!1449760 (= lt!1761587 (insertStrictlySorted!496 (toList!4679 lt!1761437) (_1!29184 lt!1761430) (_2!29184 lt!1761430)))))

(assert (=> d!1449760 (= (+!1764 lt!1761437 lt!1761430) lt!1761584)))

(declare-fun b!4602875 () Bool)

(declare-fun res!1925632 () Bool)

(assert (=> b!4602875 (=> (not res!1925632) (not e!2871093))))

(assert (=> b!4602875 (= res!1925632 (= (getValueByKey!1326 (toList!4679 lt!1761584) (_1!29184 lt!1761430)) (Some!11405 (_2!29184 lt!1761430))))))

(declare-fun b!4602876 () Bool)

(assert (=> b!4602876 (= e!2871093 (contains!14083 (toList!4679 lt!1761584) lt!1761430))))

(assert (= (and d!1449760 res!1925631) b!4602875))

(assert (= (and b!4602875 res!1925632) b!4602876))

(declare-fun m!5431837 () Bool)

(assert (=> d!1449760 m!5431837))

(declare-fun m!5431843 () Bool)

(assert (=> d!1449760 m!5431843))

(declare-fun m!5431849 () Bool)

(assert (=> d!1449760 m!5431849))

(declare-fun m!5431851 () Bool)

(assert (=> d!1449760 m!5431851))

(declare-fun m!5431853 () Bool)

(assert (=> b!4602875 m!5431853))

(declare-fun m!5431855 () Bool)

(assert (=> b!4602876 m!5431855))

(assert (=> b!4602682 d!1449760))

(declare-fun d!1449768 () Bool)

(assert (=> d!1449768 (= (tail!7973 lm!1477) (ListLongMap!3312 (tail!7972 (toList!4679 lm!1477))))))

(declare-fun bs!1013832 () Bool)

(assert (= bs!1013832 d!1449768))

(declare-fun m!5431869 () Bool)

(assert (=> bs!1013832 m!5431869))

(assert (=> b!4602682 d!1449768))

(declare-fun d!1449774 () Bool)

(declare-fun content!8668 (List!51238) (InoxSet tuple2!51778))

(assert (=> d!1449774 (= (eq!739 (extractMap!1392 (Cons!51115 lt!1761430 Nil!51115)) (-!508 (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115)) key!3287)) (= (content!8668 (toList!4680 (extractMap!1392 (Cons!51115 lt!1761430 Nil!51115)))) (content!8668 (toList!4680 (-!508 (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115)) key!3287)))))))

(declare-fun bs!1013833 () Bool)

(assert (= bs!1013833 d!1449774))

(declare-fun m!5431871 () Bool)

(assert (=> bs!1013833 m!5431871))

(declare-fun m!5431873 () Bool)

(assert (=> bs!1013833 m!5431873))

(assert (=> b!4602663 d!1449774))

(declare-fun bs!1013834 () Bool)

(declare-fun d!1449776 () Bool)

(assert (= bs!1013834 (and d!1449776 start!459560)))

(declare-fun lambda!186958 () Int)

(assert (=> bs!1013834 (= lambda!186958 lambda!186932)))

(declare-fun bs!1013835 () Bool)

(assert (= bs!1013835 (and d!1449776 d!1449690)))

(assert (=> bs!1013835 (= lambda!186958 lambda!186941)))

(declare-fun bs!1013836 () Bool)

(assert (= bs!1013836 (and d!1449776 d!1449694)))

(assert (=> bs!1013836 (= lambda!186958 lambda!186942)))

(declare-fun bs!1013837 () Bool)

(assert (= bs!1013837 (and d!1449776 d!1449698)))

(assert (=> bs!1013837 (= lambda!186958 lambda!186949)))

(declare-fun lt!1761593 () ListMap!3941)

(assert (=> d!1449776 (invariantList!1132 (toList!4680 lt!1761593))))

(declare-fun e!2871095 () ListMap!3941)

(assert (=> d!1449776 (= lt!1761593 e!2871095)))

(declare-fun c!788584 () Bool)

(assert (=> d!1449776 (= c!788584 ((_ is Cons!51115) lt!1761441))))

(assert (=> d!1449776 (forall!10626 lt!1761441 lambda!186958)))

(assert (=> d!1449776 (= (extractMap!1392 lt!1761441) lt!1761593)))

(declare-fun b!4602879 () Bool)

(assert (=> b!4602879 (= e!2871095 (addToMapMapFromBucket!822 (_2!29184 (h!57087 lt!1761441)) (extractMap!1392 (t!358233 lt!1761441))))))

(declare-fun b!4602880 () Bool)

(assert (=> b!4602880 (= e!2871095 (ListMap!3942 Nil!51114))))

(assert (= (and d!1449776 c!788584) b!4602879))

(assert (= (and d!1449776 (not c!788584)) b!4602880))

(declare-fun m!5431875 () Bool)

(assert (=> d!1449776 m!5431875))

(declare-fun m!5431877 () Bool)

(assert (=> d!1449776 m!5431877))

(declare-fun m!5431879 () Bool)

(assert (=> b!4602879 m!5431879))

(assert (=> b!4602879 m!5431879))

(declare-fun m!5431881 () Bool)

(assert (=> b!4602879 m!5431881))

(assert (=> b!4602663 d!1449776))

(declare-fun bs!1013838 () Bool)

(declare-fun d!1449778 () Bool)

(assert (= bs!1013838 (and d!1449778 start!459560)))

(declare-fun lambda!186959 () Int)

(assert (=> bs!1013838 (= lambda!186959 lambda!186932)))

(declare-fun bs!1013839 () Bool)

(assert (= bs!1013839 (and d!1449778 d!1449694)))

(assert (=> bs!1013839 (= lambda!186959 lambda!186942)))

(declare-fun bs!1013840 () Bool)

(assert (= bs!1013840 (and d!1449778 d!1449776)))

(assert (=> bs!1013840 (= lambda!186959 lambda!186958)))

(declare-fun bs!1013841 () Bool)

(assert (= bs!1013841 (and d!1449778 d!1449690)))

(assert (=> bs!1013841 (= lambda!186959 lambda!186941)))

(declare-fun bs!1013842 () Bool)

(assert (= bs!1013842 (and d!1449778 d!1449698)))

(assert (=> bs!1013842 (= lambda!186959 lambda!186949)))

(declare-fun lt!1761594 () ListMap!3941)

(assert (=> d!1449778 (invariantList!1132 (toList!4680 lt!1761594))))

(declare-fun e!2871096 () ListMap!3941)

(assert (=> d!1449778 (= lt!1761594 e!2871096)))

(declare-fun c!788585 () Bool)

(assert (=> d!1449778 (= c!788585 ((_ is Cons!51115) (Cons!51115 lt!1761430 Nil!51115)))))

(assert (=> d!1449778 (forall!10626 (Cons!51115 lt!1761430 Nil!51115) lambda!186959)))

(assert (=> d!1449778 (= (extractMap!1392 (Cons!51115 lt!1761430 Nil!51115)) lt!1761594)))

(declare-fun b!4602881 () Bool)

(assert (=> b!4602881 (= e!2871096 (addToMapMapFromBucket!822 (_2!29184 (h!57087 (Cons!51115 lt!1761430 Nil!51115))) (extractMap!1392 (t!358233 (Cons!51115 lt!1761430 Nil!51115)))))))

(declare-fun b!4602882 () Bool)

(assert (=> b!4602882 (= e!2871096 (ListMap!3942 Nil!51114))))

(assert (= (and d!1449778 c!788585) b!4602881))

(assert (= (and d!1449778 (not c!788585)) b!4602882))

(declare-fun m!5431883 () Bool)

(assert (=> d!1449778 m!5431883))

(declare-fun m!5431885 () Bool)

(assert (=> d!1449778 m!5431885))

(declare-fun m!5431887 () Bool)

(assert (=> b!4602881 m!5431887))

(assert (=> b!4602881 m!5431887))

(declare-fun m!5431889 () Bool)

(assert (=> b!4602881 m!5431889))

(assert (=> b!4602663 d!1449778))

(declare-fun d!1449780 () Bool)

(declare-fun e!2871097 () Bool)

(assert (=> d!1449780 e!2871097))

(declare-fun res!1925635 () Bool)

(assert (=> d!1449780 (=> (not res!1925635) (not e!2871097))))

(declare-fun lt!1761595 () ListLongMap!3311)

(assert (=> d!1449780 (= res!1925635 (contains!14082 lt!1761595 (_1!29184 lt!1761430)))))

(declare-fun lt!1761598 () List!51239)

(assert (=> d!1449780 (= lt!1761595 (ListLongMap!3312 lt!1761598))))

(declare-fun lt!1761596 () Unit!108771)

(declare-fun lt!1761597 () Unit!108771)

(assert (=> d!1449780 (= lt!1761596 lt!1761597)))

(assert (=> d!1449780 (= (getValueByKey!1326 lt!1761598 (_1!29184 lt!1761430)) (Some!11405 (_2!29184 lt!1761430)))))

(assert (=> d!1449780 (= lt!1761597 (lemmaContainsTupThenGetReturnValue!804 lt!1761598 (_1!29184 lt!1761430) (_2!29184 lt!1761430)))))

(assert (=> d!1449780 (= lt!1761598 (insertStrictlySorted!496 (toList!4679 lm!1477) (_1!29184 lt!1761430) (_2!29184 lt!1761430)))))

(assert (=> d!1449780 (= (+!1764 lm!1477 lt!1761430) lt!1761595)))

(declare-fun b!4602883 () Bool)

(declare-fun res!1925636 () Bool)

(assert (=> b!4602883 (=> (not res!1925636) (not e!2871097))))

(assert (=> b!4602883 (= res!1925636 (= (getValueByKey!1326 (toList!4679 lt!1761595) (_1!29184 lt!1761430)) (Some!11405 (_2!29184 lt!1761430))))))

(declare-fun b!4602884 () Bool)

(assert (=> b!4602884 (= e!2871097 (contains!14083 (toList!4679 lt!1761595) lt!1761430))))

(assert (= (and d!1449780 res!1925635) b!4602883))

(assert (= (and b!4602883 res!1925636) b!4602884))

(declare-fun m!5431891 () Bool)

(assert (=> d!1449780 m!5431891))

(declare-fun m!5431893 () Bool)

(assert (=> d!1449780 m!5431893))

(declare-fun m!5431895 () Bool)

(assert (=> d!1449780 m!5431895))

(declare-fun m!5431897 () Bool)

(assert (=> d!1449780 m!5431897))

(declare-fun m!5431899 () Bool)

(assert (=> b!4602883 m!5431899))

(declare-fun m!5431901 () Bool)

(assert (=> b!4602884 m!5431901))

(assert (=> b!4602663 d!1449780))

(declare-fun bs!1013863 () Bool)

(declare-fun d!1449782 () Bool)

(assert (= bs!1013863 (and d!1449782 start!459560)))

(declare-fun lambda!186967 () Int)

(assert (=> bs!1013863 (= lambda!186967 lambda!186932)))

(declare-fun bs!1013864 () Bool)

(assert (= bs!1013864 (and d!1449782 d!1449694)))

(assert (=> bs!1013864 (= lambda!186967 lambda!186942)))

(declare-fun bs!1013865 () Bool)

(assert (= bs!1013865 (and d!1449782 d!1449776)))

(assert (=> bs!1013865 (= lambda!186967 lambda!186958)))

(declare-fun bs!1013866 () Bool)

(assert (= bs!1013866 (and d!1449782 d!1449690)))

(assert (=> bs!1013866 (= lambda!186967 lambda!186941)))

(declare-fun bs!1013867 () Bool)

(assert (= bs!1013867 (and d!1449782 d!1449778)))

(assert (=> bs!1013867 (= lambda!186967 lambda!186959)))

(declare-fun bs!1013868 () Bool)

(assert (= bs!1013868 (and d!1449782 d!1449698)))

(assert (=> bs!1013868 (= lambda!186967 lambda!186949)))

(assert (=> d!1449782 (contains!14081 (extractMap!1392 (toList!4679 (ListLongMap!3312 lt!1761441))) key!3287)))

(declare-fun lt!1761608 () Unit!108771)

(declare-fun choose!30890 (ListLongMap!3311 K!12480 Hashable!5731) Unit!108771)

(assert (=> d!1449782 (= lt!1761608 (choose!30890 (ListLongMap!3312 lt!1761441) key!3287 hashF!1107))))

(assert (=> d!1449782 (forall!10626 (toList!4679 (ListLongMap!3312 lt!1761441)) lambda!186967)))

(assert (=> d!1449782 (= (lemmaListContainsThenExtractedMapContains!266 (ListLongMap!3312 lt!1761441) key!3287 hashF!1107) lt!1761608)))

(declare-fun bs!1013869 () Bool)

(assert (= bs!1013869 d!1449782))

(declare-fun m!5431939 () Bool)

(assert (=> bs!1013869 m!5431939))

(assert (=> bs!1013869 m!5431939))

(declare-fun m!5431941 () Bool)

(assert (=> bs!1013869 m!5431941))

(declare-fun m!5431943 () Bool)

(assert (=> bs!1013869 m!5431943))

(declare-fun m!5431945 () Bool)

(assert (=> bs!1013869 m!5431945))

(assert (=> b!4602663 d!1449782))

(declare-fun d!1449794 () Bool)

(assert (=> d!1449794 (= (tail!7972 (toList!4679 lt!1761431)) (t!358233 (toList!4679 lt!1761431)))))

(assert (=> b!4602663 d!1449794))

(declare-fun bs!1013870 () Bool)

(declare-fun d!1449796 () Bool)

(assert (= bs!1013870 (and d!1449796 start!459560)))

(declare-fun lambda!186968 () Int)

(assert (=> bs!1013870 (= lambda!186968 lambda!186932)))

(declare-fun bs!1013871 () Bool)

(assert (= bs!1013871 (and d!1449796 d!1449694)))

(assert (=> bs!1013871 (= lambda!186968 lambda!186942)))

(declare-fun bs!1013872 () Bool)

(assert (= bs!1013872 (and d!1449796 d!1449776)))

(assert (=> bs!1013872 (= lambda!186968 lambda!186958)))

(declare-fun bs!1013873 () Bool)

(assert (= bs!1013873 (and d!1449796 d!1449690)))

(assert (=> bs!1013873 (= lambda!186968 lambda!186941)))

(declare-fun bs!1013874 () Bool)

(assert (= bs!1013874 (and d!1449796 d!1449778)))

(assert (=> bs!1013874 (= lambda!186968 lambda!186959)))

(declare-fun bs!1013875 () Bool)

(assert (= bs!1013875 (and d!1449796 d!1449698)))

(assert (=> bs!1013875 (= lambda!186968 lambda!186949)))

(declare-fun bs!1013876 () Bool)

(assert (= bs!1013876 (and d!1449796 d!1449782)))

(assert (=> bs!1013876 (= lambda!186968 lambda!186967)))

(declare-fun lt!1761609 () ListMap!3941)

(assert (=> d!1449796 (invariantList!1132 (toList!4680 lt!1761609))))

(declare-fun e!2871111 () ListMap!3941)

(assert (=> d!1449796 (= lt!1761609 e!2871111)))

(declare-fun c!788587 () Bool)

(assert (=> d!1449796 (= c!788587 ((_ is Cons!51115) (Cons!51115 lt!1761444 Nil!51115)))))

(assert (=> d!1449796 (forall!10626 (Cons!51115 lt!1761444 Nil!51115) lambda!186968)))

(assert (=> d!1449796 (= (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115)) lt!1761609)))

(declare-fun b!4602899 () Bool)

(assert (=> b!4602899 (= e!2871111 (addToMapMapFromBucket!822 (_2!29184 (h!57087 (Cons!51115 lt!1761444 Nil!51115))) (extractMap!1392 (t!358233 (Cons!51115 lt!1761444 Nil!51115)))))))

(declare-fun b!4602900 () Bool)

(assert (=> b!4602900 (= e!2871111 (ListMap!3942 Nil!51114))))

(assert (= (and d!1449796 c!788587) b!4602899))

(assert (= (and d!1449796 (not c!788587)) b!4602900))

(declare-fun m!5431947 () Bool)

(assert (=> d!1449796 m!5431947))

(declare-fun m!5431949 () Bool)

(assert (=> d!1449796 m!5431949))

(declare-fun m!5431951 () Bool)

(assert (=> b!4602899 m!5431951))

(assert (=> b!4602899 m!5431951))

(declare-fun m!5431953 () Bool)

(assert (=> b!4602899 m!5431953))

(assert (=> b!4602663 d!1449796))

(declare-fun b!4602931 () Bool)

(declare-datatypes ((List!51241 0))(
  ( (Nil!51117) (Cons!51117 (h!57091 K!12480) (t!358235 List!51241)) )
))
(declare-fun e!2871135 () List!51241)

(declare-fun getKeysList!581 (List!51238) List!51241)

(assert (=> b!4602931 (= e!2871135 (getKeysList!581 (toList!4680 (extractMap!1392 lt!1761441))))))

(declare-fun b!4602932 () Bool)

(declare-fun e!2871131 () Bool)

(declare-fun contains!14085 (List!51241 K!12480) Bool)

(declare-fun keys!17906 (ListMap!3941) List!51241)

(assert (=> b!4602932 (= e!2871131 (contains!14085 (keys!17906 (extractMap!1392 lt!1761441)) key!3287))))

(declare-fun b!4602933 () Bool)

(assert (=> b!4602933 false))

(declare-fun lt!1761635 () Unit!108771)

(declare-fun lt!1761629 () Unit!108771)

(assert (=> b!4602933 (= lt!1761635 lt!1761629)))

(declare-fun containsKey!2188 (List!51238 K!12480) Bool)

(assert (=> b!4602933 (containsKey!2188 (toList!4680 (extractMap!1392 lt!1761441)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!580 (List!51238 K!12480) Unit!108771)

(assert (=> b!4602933 (= lt!1761629 (lemmaInGetKeysListThenContainsKey!580 (toList!4680 (extractMap!1392 lt!1761441)) key!3287))))

(declare-fun e!2871133 () Unit!108771)

(declare-fun Unit!108786 () Unit!108771)

(assert (=> b!4602933 (= e!2871133 Unit!108786)))

(declare-fun bm!321230 () Bool)

(declare-fun call!321235 () Bool)

(assert (=> bm!321230 (= call!321235 (contains!14085 e!2871135 key!3287))))

(declare-fun c!788596 () Bool)

(declare-fun c!788595 () Bool)

(assert (=> bm!321230 (= c!788596 c!788595)))

(declare-fun b!4602935 () Bool)

(declare-fun e!2871130 () Unit!108771)

(declare-fun lt!1761633 () Unit!108771)

(assert (=> b!4602935 (= e!2871130 lt!1761633)))

(declare-fun lt!1761632 () Unit!108771)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1231 (List!51238 K!12480) Unit!108771)

(assert (=> b!4602935 (= lt!1761632 (lemmaContainsKeyImpliesGetValueByKeyDefined!1231 (toList!4680 (extractMap!1392 lt!1761441)) key!3287))))

(declare-datatypes ((Option!11407 0))(
  ( (None!11406) (Some!11406 (v!45412 V!12726)) )
))
(declare-fun isDefined!8675 (Option!11407) Bool)

(declare-fun getValueByKey!1327 (List!51238 K!12480) Option!11407)

(assert (=> b!4602935 (isDefined!8675 (getValueByKey!1327 (toList!4680 (extractMap!1392 lt!1761441)) key!3287))))

(declare-fun lt!1761634 () Unit!108771)

(assert (=> b!4602935 (= lt!1761634 lt!1761632)))

(declare-fun lemmaInListThenGetKeysListContains!577 (List!51238 K!12480) Unit!108771)

(assert (=> b!4602935 (= lt!1761633 (lemmaInListThenGetKeysListContains!577 (toList!4680 (extractMap!1392 lt!1761441)) key!3287))))

(assert (=> b!4602935 call!321235))

(declare-fun b!4602936 () Bool)

(assert (=> b!4602936 (= e!2871130 e!2871133)))

(declare-fun c!788594 () Bool)

(assert (=> b!4602936 (= c!788594 call!321235)))

(declare-fun b!4602937 () Bool)

(declare-fun Unit!108787 () Unit!108771)

(assert (=> b!4602937 (= e!2871133 Unit!108787)))

(declare-fun b!4602938 () Bool)

(declare-fun e!2871134 () Bool)

(assert (=> b!4602938 (= e!2871134 e!2871131)))

(declare-fun res!1925656 () Bool)

(assert (=> b!4602938 (=> (not res!1925656) (not e!2871131))))

(assert (=> b!4602938 (= res!1925656 (isDefined!8675 (getValueByKey!1327 (toList!4680 (extractMap!1392 lt!1761441)) key!3287)))))

(declare-fun b!4602939 () Bool)

(declare-fun e!2871132 () Bool)

(assert (=> b!4602939 (= e!2871132 (not (contains!14085 (keys!17906 (extractMap!1392 lt!1761441)) key!3287)))))

(declare-fun b!4602934 () Bool)

(assert (=> b!4602934 (= e!2871135 (keys!17906 (extractMap!1392 lt!1761441)))))

(declare-fun d!1449798 () Bool)

(assert (=> d!1449798 e!2871134))

(declare-fun res!1925655 () Bool)

(assert (=> d!1449798 (=> res!1925655 e!2871134)))

(assert (=> d!1449798 (= res!1925655 e!2871132)))

(declare-fun res!1925657 () Bool)

(assert (=> d!1449798 (=> (not res!1925657) (not e!2871132))))

(declare-fun lt!1761631 () Bool)

(assert (=> d!1449798 (= res!1925657 (not lt!1761631))))

(declare-fun lt!1761636 () Bool)

(assert (=> d!1449798 (= lt!1761631 lt!1761636)))

(declare-fun lt!1761630 () Unit!108771)

(assert (=> d!1449798 (= lt!1761630 e!2871130)))

(assert (=> d!1449798 (= c!788595 lt!1761636)))

(assert (=> d!1449798 (= lt!1761636 (containsKey!2188 (toList!4680 (extractMap!1392 lt!1761441)) key!3287))))

(assert (=> d!1449798 (= (contains!14081 (extractMap!1392 lt!1761441) key!3287) lt!1761631)))

(assert (= (and d!1449798 c!788595) b!4602935))

(assert (= (and d!1449798 (not c!788595)) b!4602936))

(assert (= (and b!4602936 c!788594) b!4602933))

(assert (= (and b!4602936 (not c!788594)) b!4602937))

(assert (= (or b!4602935 b!4602936) bm!321230))

(assert (= (and bm!321230 c!788596) b!4602931))

(assert (= (and bm!321230 (not c!788596)) b!4602934))

(assert (= (and d!1449798 res!1925657) b!4602939))

(assert (= (and d!1449798 (not res!1925655)) b!4602938))

(assert (= (and b!4602938 res!1925656) b!4602932))

(declare-fun m!5431963 () Bool)

(assert (=> b!4602935 m!5431963))

(declare-fun m!5431965 () Bool)

(assert (=> b!4602935 m!5431965))

(assert (=> b!4602935 m!5431965))

(declare-fun m!5431967 () Bool)

(assert (=> b!4602935 m!5431967))

(declare-fun m!5431969 () Bool)

(assert (=> b!4602935 m!5431969))

(assert (=> b!4602932 m!5431509))

(declare-fun m!5431971 () Bool)

(assert (=> b!4602932 m!5431971))

(assert (=> b!4602932 m!5431971))

(declare-fun m!5431973 () Bool)

(assert (=> b!4602932 m!5431973))

(declare-fun m!5431975 () Bool)

(assert (=> b!4602931 m!5431975))

(declare-fun m!5431977 () Bool)

(assert (=> b!4602933 m!5431977))

(declare-fun m!5431979 () Bool)

(assert (=> b!4602933 m!5431979))

(assert (=> b!4602939 m!5431509))

(assert (=> b!4602939 m!5431971))

(assert (=> b!4602939 m!5431971))

(assert (=> b!4602939 m!5431973))

(declare-fun m!5431981 () Bool)

(assert (=> bm!321230 m!5431981))

(assert (=> b!4602938 m!5431965))

(assert (=> b!4602938 m!5431965))

(assert (=> b!4602938 m!5431967))

(assert (=> b!4602934 m!5431509))

(assert (=> b!4602934 m!5431971))

(assert (=> d!1449798 m!5431977))

(assert (=> b!4602663 d!1449798))

(declare-fun d!1449808 () Bool)

(declare-fun e!2871138 () Bool)

(assert (=> d!1449808 e!2871138))

(declare-fun res!1925660 () Bool)

(assert (=> d!1449808 (=> (not res!1925660) (not e!2871138))))

(declare-fun lt!1761639 () ListMap!3941)

(assert (=> d!1449808 (= res!1925660 (not (contains!14081 lt!1761639 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!228 (List!51238 K!12480) List!51238)

(assert (=> d!1449808 (= lt!1761639 (ListMap!3942 (removePresrvNoDuplicatedKeys!228 (toList!4680 (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115))) key!3287)))))

(assert (=> d!1449808 (= (-!508 (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115)) key!3287) lt!1761639)))

(declare-fun b!4602942 () Bool)

(declare-fun content!8670 (List!51241) (InoxSet K!12480))

(assert (=> b!4602942 (= e!2871138 (= ((_ map and) (content!8670 (keys!17906 (extractMap!1392 (Cons!51115 lt!1761444 Nil!51115)))) ((_ map not) (store ((as const (Array K!12480 Bool)) false) key!3287 true))) (content!8670 (keys!17906 lt!1761639))))))

(assert (= (and d!1449808 res!1925660) b!4602942))

(declare-fun m!5431983 () Bool)

(assert (=> d!1449808 m!5431983))

(declare-fun m!5431985 () Bool)

(assert (=> d!1449808 m!5431985))

(declare-fun m!5431987 () Bool)

(assert (=> b!4602942 m!5431987))

(declare-fun m!5431989 () Bool)

(assert (=> b!4602942 m!5431989))

(declare-fun m!5431991 () Bool)

(assert (=> b!4602942 m!5431991))

(assert (=> b!4602942 m!5431513))

(declare-fun m!5431993 () Bool)

(assert (=> b!4602942 m!5431993))

(assert (=> b!4602942 m!5431989))

(assert (=> b!4602942 m!5431993))

(declare-fun m!5431995 () Bool)

(assert (=> b!4602942 m!5431995))

(assert (=> b!4602663 d!1449808))

(declare-fun d!1449810 () Bool)

(assert (=> d!1449810 (eq!739 (extractMap!1392 (Cons!51115 (tuple2!51781 hash!344 newBucket!178) Nil!51115)) (-!508 (extractMap!1392 (Cons!51115 (tuple2!51781 hash!344 (_2!29184 (h!57087 (toList!4679 lm!1477)))) Nil!51115)) key!3287))))

(declare-fun lt!1761642 () Unit!108771)

(declare-fun choose!30893 ((_ BitVec 64) List!51238 List!51238 K!12480 Hashable!5731) Unit!108771)

(assert (=> d!1449810 (= lt!1761642 (choose!30893 hash!344 (_2!29184 (h!57087 (toList!4679 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1449810 (noDuplicateKeys!1332 (_2!29184 (h!57087 (toList!4679 lm!1477))))))

(assert (=> d!1449810 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!98 hash!344 (_2!29184 (h!57087 (toList!4679 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1761642)))

(declare-fun bs!1013902 () Bool)

(assert (= bs!1013902 d!1449810))

(assert (=> bs!1013902 m!5431535))

(declare-fun m!5431997 () Bool)

(assert (=> bs!1013902 m!5431997))

(assert (=> bs!1013902 m!5431997))

(declare-fun m!5431999 () Bool)

(assert (=> bs!1013902 m!5431999))

(declare-fun m!5432001 () Bool)

(assert (=> bs!1013902 m!5432001))

(declare-fun m!5432003 () Bool)

(assert (=> bs!1013902 m!5432003))

(declare-fun m!5432005 () Bool)

(assert (=> bs!1013902 m!5432005))

(assert (=> bs!1013902 m!5432005))

(assert (=> bs!1013902 m!5431999))

(assert (=> b!4602663 d!1449810))

(declare-fun bs!1013903 () Bool)

(declare-fun d!1449812 () Bool)

(assert (= bs!1013903 (and d!1449812 start!459560)))

(declare-fun lambda!186977 () Int)

(assert (=> bs!1013903 (not (= lambda!186977 lambda!186932))))

(declare-fun bs!1013904 () Bool)

(assert (= bs!1013904 (and d!1449812 d!1449694)))

(assert (=> bs!1013904 (not (= lambda!186977 lambda!186942))))

(declare-fun bs!1013905 () Bool)

(assert (= bs!1013905 (and d!1449812 d!1449690)))

(assert (=> bs!1013905 (not (= lambda!186977 lambda!186941))))

(declare-fun bs!1013906 () Bool)

(assert (= bs!1013906 (and d!1449812 d!1449778)))

(assert (=> bs!1013906 (not (= lambda!186977 lambda!186959))))

(declare-fun bs!1013907 () Bool)

(assert (= bs!1013907 (and d!1449812 d!1449698)))

(assert (=> bs!1013907 (not (= lambda!186977 lambda!186949))))

(declare-fun bs!1013908 () Bool)

(assert (= bs!1013908 (and d!1449812 d!1449782)))

(assert (=> bs!1013908 (not (= lambda!186977 lambda!186967))))

(declare-fun bs!1013909 () Bool)

(assert (= bs!1013909 (and d!1449812 d!1449796)))

(assert (=> bs!1013909 (not (= lambda!186977 lambda!186968))))

(declare-fun bs!1013910 () Bool)

(assert (= bs!1013910 (and d!1449812 d!1449776)))

(assert (=> bs!1013910 (not (= lambda!186977 lambda!186958))))

(assert (=> d!1449812 true))

(assert (=> d!1449812 (= (allKeysSameHashInMap!1443 lm!1477 hashF!1107) (forall!10626 (toList!4679 lm!1477) lambda!186977))))

(declare-fun bs!1013911 () Bool)

(assert (= bs!1013911 d!1449812))

(declare-fun m!5432007 () Bool)

(assert (=> bs!1013911 m!5432007))

(assert (=> b!4602684 d!1449812))

(declare-fun d!1449814 () Bool)

(declare-fun hash!3253 (Hashable!5731 K!12480) (_ BitVec 64))

(assert (=> d!1449814 (= (hash!3249 hashF!1107 key!3287) (hash!3253 hashF!1107 key!3287))))

(declare-fun bs!1013912 () Bool)

(assert (= bs!1013912 d!1449814))

(declare-fun m!5432009 () Bool)

(assert (=> bs!1013912 m!5432009))

(assert (=> b!4602673 d!1449814))

(declare-fun d!1449816 () Bool)

(declare-fun res!1925665 () Bool)

(declare-fun e!2871143 () Bool)

(assert (=> d!1449816 (=> res!1925665 e!2871143)))

(assert (=> d!1449816 (= res!1925665 (not ((_ is Cons!51114) newBucket!178)))))

(assert (=> d!1449816 (= (noDuplicateKeys!1332 newBucket!178) e!2871143)))

(declare-fun b!4602949 () Bool)

(declare-fun e!2871144 () Bool)

(assert (=> b!4602949 (= e!2871143 e!2871144)))

(declare-fun res!1925666 () Bool)

(assert (=> b!4602949 (=> (not res!1925666) (not e!2871144))))

(assert (=> b!4602949 (= res!1925666 (not (containsKey!2184 (t!358232 newBucket!178) (_1!29183 (h!57086 newBucket!178)))))))

(declare-fun b!4602950 () Bool)

(assert (=> b!4602950 (= e!2871144 (noDuplicateKeys!1332 (t!358232 newBucket!178)))))

(assert (= (and d!1449816 (not res!1925665)) b!4602949))

(assert (= (and b!4602949 res!1925666) b!4602950))

(declare-fun m!5432011 () Bool)

(assert (=> b!4602949 m!5432011))

(declare-fun m!5432013 () Bool)

(assert (=> b!4602950 m!5432013))

(assert (=> b!4602675 d!1449816))

(declare-fun b!4602951 () Bool)

(declare-fun e!2871150 () List!51241)

(assert (=> b!4602951 (= e!2871150 (getKeysList!581 (toList!4680 lt!1761434)))))

(declare-fun b!4602952 () Bool)

(declare-fun e!2871146 () Bool)

(assert (=> b!4602952 (= e!2871146 (contains!14085 (keys!17906 lt!1761434) key!3287))))

(declare-fun b!4602953 () Bool)

(assert (=> b!4602953 false))

(declare-fun lt!1761649 () Unit!108771)

(declare-fun lt!1761643 () Unit!108771)

(assert (=> b!4602953 (= lt!1761649 lt!1761643)))

(assert (=> b!4602953 (containsKey!2188 (toList!4680 lt!1761434) key!3287)))

(assert (=> b!4602953 (= lt!1761643 (lemmaInGetKeysListThenContainsKey!580 (toList!4680 lt!1761434) key!3287))))

(declare-fun e!2871148 () Unit!108771)

(declare-fun Unit!108788 () Unit!108771)

(assert (=> b!4602953 (= e!2871148 Unit!108788)))

(declare-fun bm!321231 () Bool)

(declare-fun call!321236 () Bool)

(assert (=> bm!321231 (= call!321236 (contains!14085 e!2871150 key!3287))))

(declare-fun c!788599 () Bool)

(declare-fun c!788598 () Bool)

(assert (=> bm!321231 (= c!788599 c!788598)))

(declare-fun b!4602955 () Bool)

(declare-fun e!2871145 () Unit!108771)

(declare-fun lt!1761647 () Unit!108771)

(assert (=> b!4602955 (= e!2871145 lt!1761647)))

(declare-fun lt!1761646 () Unit!108771)

(assert (=> b!4602955 (= lt!1761646 (lemmaContainsKeyImpliesGetValueByKeyDefined!1231 (toList!4680 lt!1761434) key!3287))))

(assert (=> b!4602955 (isDefined!8675 (getValueByKey!1327 (toList!4680 lt!1761434) key!3287))))

(declare-fun lt!1761648 () Unit!108771)

(assert (=> b!4602955 (= lt!1761648 lt!1761646)))

(assert (=> b!4602955 (= lt!1761647 (lemmaInListThenGetKeysListContains!577 (toList!4680 lt!1761434) key!3287))))

(assert (=> b!4602955 call!321236))

(declare-fun b!4602956 () Bool)

(assert (=> b!4602956 (= e!2871145 e!2871148)))

(declare-fun c!788597 () Bool)

(assert (=> b!4602956 (= c!788597 call!321236)))

(declare-fun b!4602957 () Bool)

(declare-fun Unit!108789 () Unit!108771)

(assert (=> b!4602957 (= e!2871148 Unit!108789)))

(declare-fun b!4602958 () Bool)

(declare-fun e!2871149 () Bool)

(assert (=> b!4602958 (= e!2871149 e!2871146)))

(declare-fun res!1925668 () Bool)

(assert (=> b!4602958 (=> (not res!1925668) (not e!2871146))))

(assert (=> b!4602958 (= res!1925668 (isDefined!8675 (getValueByKey!1327 (toList!4680 lt!1761434) key!3287)))))

(declare-fun b!4602959 () Bool)

(declare-fun e!2871147 () Bool)

(assert (=> b!4602959 (= e!2871147 (not (contains!14085 (keys!17906 lt!1761434) key!3287)))))

(declare-fun b!4602954 () Bool)

(assert (=> b!4602954 (= e!2871150 (keys!17906 lt!1761434))))

(declare-fun d!1449818 () Bool)

(assert (=> d!1449818 e!2871149))

(declare-fun res!1925667 () Bool)

(assert (=> d!1449818 (=> res!1925667 e!2871149)))

(assert (=> d!1449818 (= res!1925667 e!2871147)))

(declare-fun res!1925669 () Bool)

(assert (=> d!1449818 (=> (not res!1925669) (not e!2871147))))

(declare-fun lt!1761645 () Bool)

(assert (=> d!1449818 (= res!1925669 (not lt!1761645))))

(declare-fun lt!1761650 () Bool)

(assert (=> d!1449818 (= lt!1761645 lt!1761650)))

(declare-fun lt!1761644 () Unit!108771)

(assert (=> d!1449818 (= lt!1761644 e!2871145)))

(assert (=> d!1449818 (= c!788598 lt!1761650)))

(assert (=> d!1449818 (= lt!1761650 (containsKey!2188 (toList!4680 lt!1761434) key!3287))))

(assert (=> d!1449818 (= (contains!14081 lt!1761434 key!3287) lt!1761645)))

(assert (= (and d!1449818 c!788598) b!4602955))

(assert (= (and d!1449818 (not c!788598)) b!4602956))

(assert (= (and b!4602956 c!788597) b!4602953))

(assert (= (and b!4602956 (not c!788597)) b!4602957))

(assert (= (or b!4602955 b!4602956) bm!321231))

(assert (= (and bm!321231 c!788599) b!4602951))

(assert (= (and bm!321231 (not c!788599)) b!4602954))

(assert (= (and d!1449818 res!1925669) b!4602959))

(assert (= (and d!1449818 (not res!1925667)) b!4602958))

(assert (= (and b!4602958 res!1925668) b!4602952))

(declare-fun m!5432015 () Bool)

(assert (=> b!4602955 m!5432015))

(declare-fun m!5432017 () Bool)

(assert (=> b!4602955 m!5432017))

(assert (=> b!4602955 m!5432017))

(declare-fun m!5432019 () Bool)

(assert (=> b!4602955 m!5432019))

(declare-fun m!5432021 () Bool)

(assert (=> b!4602955 m!5432021))

(declare-fun m!5432023 () Bool)

(assert (=> b!4602952 m!5432023))

(assert (=> b!4602952 m!5432023))

(declare-fun m!5432025 () Bool)

(assert (=> b!4602952 m!5432025))

(declare-fun m!5432027 () Bool)

(assert (=> b!4602951 m!5432027))

(declare-fun m!5432029 () Bool)

(assert (=> b!4602953 m!5432029))

(declare-fun m!5432031 () Bool)

(assert (=> b!4602953 m!5432031))

(assert (=> b!4602959 m!5432023))

(assert (=> b!4602959 m!5432023))

(assert (=> b!4602959 m!5432025))

(declare-fun m!5432033 () Bool)

(assert (=> bm!321231 m!5432033))

(assert (=> b!4602958 m!5432017))

(assert (=> b!4602958 m!5432017))

(assert (=> b!4602958 m!5432019))

(assert (=> b!4602954 m!5432023))

(assert (=> d!1449818 m!5432029))

(assert (=> b!4602664 d!1449818))

(declare-fun b!4602960 () Bool)

(declare-fun e!2871156 () List!51241)

(assert (=> b!4602960 (= e!2871156 (getKeysList!581 (toList!4680 (extractMap!1392 (toList!4679 lm!1477)))))))

(declare-fun b!4602961 () Bool)

(declare-fun e!2871152 () Bool)

(assert (=> b!4602961 (= e!2871152 (contains!14085 (keys!17906 (extractMap!1392 (toList!4679 lm!1477))) key!3287))))

(declare-fun b!4602962 () Bool)

(assert (=> b!4602962 false))

(declare-fun lt!1761657 () Unit!108771)

(declare-fun lt!1761651 () Unit!108771)

(assert (=> b!4602962 (= lt!1761657 lt!1761651)))

(assert (=> b!4602962 (containsKey!2188 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287)))

(assert (=> b!4602962 (= lt!1761651 (lemmaInGetKeysListThenContainsKey!580 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287))))

(declare-fun e!2871154 () Unit!108771)

(declare-fun Unit!108790 () Unit!108771)

(assert (=> b!4602962 (= e!2871154 Unit!108790)))

(declare-fun bm!321232 () Bool)

(declare-fun call!321237 () Bool)

(assert (=> bm!321232 (= call!321237 (contains!14085 e!2871156 key!3287))))

(declare-fun c!788602 () Bool)

(declare-fun c!788601 () Bool)

(assert (=> bm!321232 (= c!788602 c!788601)))

(declare-fun b!4602964 () Bool)

(declare-fun e!2871151 () Unit!108771)

(declare-fun lt!1761655 () Unit!108771)

(assert (=> b!4602964 (= e!2871151 lt!1761655)))

(declare-fun lt!1761654 () Unit!108771)

(assert (=> b!4602964 (= lt!1761654 (lemmaContainsKeyImpliesGetValueByKeyDefined!1231 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287))))

(assert (=> b!4602964 (isDefined!8675 (getValueByKey!1327 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287))))

(declare-fun lt!1761656 () Unit!108771)

(assert (=> b!4602964 (= lt!1761656 lt!1761654)))

(assert (=> b!4602964 (= lt!1761655 (lemmaInListThenGetKeysListContains!577 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287))))

(assert (=> b!4602964 call!321237))

(declare-fun b!4602965 () Bool)

(assert (=> b!4602965 (= e!2871151 e!2871154)))

(declare-fun c!788600 () Bool)

(assert (=> b!4602965 (= c!788600 call!321237)))

(declare-fun b!4602966 () Bool)

(declare-fun Unit!108791 () Unit!108771)

(assert (=> b!4602966 (= e!2871154 Unit!108791)))

(declare-fun b!4602967 () Bool)

(declare-fun e!2871155 () Bool)

(assert (=> b!4602967 (= e!2871155 e!2871152)))

(declare-fun res!1925671 () Bool)

(assert (=> b!4602967 (=> (not res!1925671) (not e!2871152))))

(assert (=> b!4602967 (= res!1925671 (isDefined!8675 (getValueByKey!1327 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287)))))

(declare-fun b!4602968 () Bool)

(declare-fun e!2871153 () Bool)

(assert (=> b!4602968 (= e!2871153 (not (contains!14085 (keys!17906 (extractMap!1392 (toList!4679 lm!1477))) key!3287)))))

(declare-fun b!4602963 () Bool)

(assert (=> b!4602963 (= e!2871156 (keys!17906 (extractMap!1392 (toList!4679 lm!1477))))))

(declare-fun d!1449820 () Bool)

(assert (=> d!1449820 e!2871155))

(declare-fun res!1925670 () Bool)

(assert (=> d!1449820 (=> res!1925670 e!2871155)))

(assert (=> d!1449820 (= res!1925670 e!2871153)))

(declare-fun res!1925672 () Bool)

(assert (=> d!1449820 (=> (not res!1925672) (not e!2871153))))

(declare-fun lt!1761653 () Bool)

(assert (=> d!1449820 (= res!1925672 (not lt!1761653))))

(declare-fun lt!1761658 () Bool)

(assert (=> d!1449820 (= lt!1761653 lt!1761658)))

(declare-fun lt!1761652 () Unit!108771)

(assert (=> d!1449820 (= lt!1761652 e!2871151)))

(assert (=> d!1449820 (= c!788601 lt!1761658)))

(assert (=> d!1449820 (= lt!1761658 (containsKey!2188 (toList!4680 (extractMap!1392 (toList!4679 lm!1477))) key!3287))))

(assert (=> d!1449820 (= (contains!14081 (extractMap!1392 (toList!4679 lm!1477)) key!3287) lt!1761653)))

(assert (= (and d!1449820 c!788601) b!4602964))

(assert (= (and d!1449820 (not c!788601)) b!4602965))

(assert (= (and b!4602965 c!788600) b!4602962))

(assert (= (and b!4602965 (not c!788600)) b!4602966))

(assert (= (or b!4602964 b!4602965) bm!321232))

(assert (= (and bm!321232 c!788602) b!4602960))

(assert (= (and bm!321232 (not c!788602)) b!4602963))

(assert (= (and d!1449820 res!1925672) b!4602968))

(assert (= (and d!1449820 (not res!1925670)) b!4602967))

(assert (= (and b!4602967 res!1925671) b!4602961))

(declare-fun m!5432035 () Bool)

(assert (=> b!4602964 m!5432035))

(declare-fun m!5432037 () Bool)

(assert (=> b!4602964 m!5432037))

(assert (=> b!4602964 m!5432037))

(declare-fun m!5432039 () Bool)

(assert (=> b!4602964 m!5432039))

(declare-fun m!5432041 () Bool)

(assert (=> b!4602964 m!5432041))

(assert (=> b!4602961 m!5431559))

(declare-fun m!5432043 () Bool)

(assert (=> b!4602961 m!5432043))

(assert (=> b!4602961 m!5432043))

(declare-fun m!5432045 () Bool)

(assert (=> b!4602961 m!5432045))

(declare-fun m!5432047 () Bool)

(assert (=> b!4602960 m!5432047))

(declare-fun m!5432049 () Bool)

(assert (=> b!4602962 m!5432049))

(declare-fun m!5432051 () Bool)

(assert (=> b!4602962 m!5432051))

(assert (=> b!4602968 m!5431559))

(assert (=> b!4602968 m!5432043))

(assert (=> b!4602968 m!5432043))

(assert (=> b!4602968 m!5432045))

(declare-fun m!5432053 () Bool)

(assert (=> bm!321232 m!5432053))

(assert (=> b!4602967 m!5432037))

(assert (=> b!4602967 m!5432037))

(assert (=> b!4602967 m!5432039))

(assert (=> b!4602963 m!5431559))

(assert (=> b!4602963 m!5432043))

(assert (=> d!1449820 m!5432049))

(assert (=> b!4602685 d!1449820))

(declare-fun bs!1013913 () Bool)

(declare-fun d!1449822 () Bool)

(assert (= bs!1013913 (and d!1449822 start!459560)))

(declare-fun lambda!186978 () Int)

(assert (=> bs!1013913 (= lambda!186978 lambda!186932)))

(declare-fun bs!1013914 () Bool)

(assert (= bs!1013914 (and d!1449822 d!1449694)))

(assert (=> bs!1013914 (= lambda!186978 lambda!186942)))

(declare-fun bs!1013915 () Bool)

(assert (= bs!1013915 (and d!1449822 d!1449690)))

(assert (=> bs!1013915 (= lambda!186978 lambda!186941)))

(declare-fun bs!1013916 () Bool)

(assert (= bs!1013916 (and d!1449822 d!1449812)))

(assert (=> bs!1013916 (not (= lambda!186978 lambda!186977))))

(declare-fun bs!1013917 () Bool)

(assert (= bs!1013917 (and d!1449822 d!1449778)))

(assert (=> bs!1013917 (= lambda!186978 lambda!186959)))

(declare-fun bs!1013918 () Bool)

(assert (= bs!1013918 (and d!1449822 d!1449698)))

(assert (=> bs!1013918 (= lambda!186978 lambda!186949)))

(declare-fun bs!1013919 () Bool)

(assert (= bs!1013919 (and d!1449822 d!1449782)))

(assert (=> bs!1013919 (= lambda!186978 lambda!186967)))

(declare-fun bs!1013920 () Bool)

(assert (= bs!1013920 (and d!1449822 d!1449796)))

(assert (=> bs!1013920 (= lambda!186978 lambda!186968)))

(declare-fun bs!1013921 () Bool)

(assert (= bs!1013921 (and d!1449822 d!1449776)))

(assert (=> bs!1013921 (= lambda!186978 lambda!186958)))

(declare-fun lt!1761659 () ListMap!3941)

(assert (=> d!1449822 (invariantList!1132 (toList!4680 lt!1761659))))

(declare-fun e!2871157 () ListMap!3941)

(assert (=> d!1449822 (= lt!1761659 e!2871157)))

(declare-fun c!788603 () Bool)

(assert (=> d!1449822 (= c!788603 ((_ is Cons!51115) (toList!4679 lm!1477)))))

(assert (=> d!1449822 (forall!10626 (toList!4679 lm!1477) lambda!186978)))

(assert (=> d!1449822 (= (extractMap!1392 (toList!4679 lm!1477)) lt!1761659)))

(declare-fun b!4602969 () Bool)

(assert (=> b!4602969 (= e!2871157 (addToMapMapFromBucket!822 (_2!29184 (h!57087 (toList!4679 lm!1477))) (extractMap!1392 (t!358233 (toList!4679 lm!1477)))))))

(declare-fun b!4602970 () Bool)

(assert (=> b!4602970 (= e!2871157 (ListMap!3942 Nil!51114))))

(assert (= (and d!1449822 c!788603) b!4602969))

(assert (= (and d!1449822 (not c!788603)) b!4602970))

(declare-fun m!5432055 () Bool)

(assert (=> d!1449822 m!5432055))

(declare-fun m!5432057 () Bool)

(assert (=> d!1449822 m!5432057))

(assert (=> b!4602969 m!5431537))

(assert (=> b!4602969 m!5431537))

(declare-fun m!5432059 () Bool)

(assert (=> b!4602969 m!5432059))

(assert (=> b!4602685 d!1449822))

(declare-fun d!1449824 () Bool)

(declare-fun res!1925681 () Bool)

(declare-fun e!2871165 () Bool)

(assert (=> d!1449824 (=> res!1925681 e!2871165)))

(declare-fun e!2871164 () Bool)

(assert (=> d!1449824 (= res!1925681 e!2871164)))

(declare-fun res!1925680 () Bool)

(assert (=> d!1449824 (=> (not res!1925680) (not e!2871164))))

(assert (=> d!1449824 (= res!1925680 ((_ is Cons!51115) lt!1761441))))

(assert (=> d!1449824 (= (containsKeyBiggerList!288 lt!1761441 key!3287) e!2871165)))

(declare-fun b!4602977 () Bool)

(assert (=> b!4602977 (= e!2871164 (containsKey!2184 (_2!29184 (h!57087 lt!1761441)) key!3287))))

(declare-fun b!4602978 () Bool)

(declare-fun e!2871166 () Bool)

(assert (=> b!4602978 (= e!2871165 e!2871166)))

(declare-fun res!1925679 () Bool)

(assert (=> b!4602978 (=> (not res!1925679) (not e!2871166))))

(assert (=> b!4602978 (= res!1925679 ((_ is Cons!51115) lt!1761441))))

(declare-fun b!4602979 () Bool)

(assert (=> b!4602979 (= e!2871166 (containsKeyBiggerList!288 (t!358233 lt!1761441) key!3287))))

(assert (= (and d!1449824 res!1925680) b!4602977))

(assert (= (and d!1449824 (not res!1925681)) b!4602978))

(assert (= (and b!4602978 res!1925679) b!4602979))

(declare-fun m!5432061 () Bool)

(assert (=> b!4602977 m!5432061))

(declare-fun m!5432063 () Bool)

(assert (=> b!4602979 m!5432063))

(assert (=> b!4602674 d!1449824))

(declare-fun d!1449826 () Bool)

(declare-fun res!1925682 () Bool)

(declare-fun e!2871167 () Bool)

(assert (=> d!1449826 (=> res!1925682 e!2871167)))

(assert (=> d!1449826 (= res!1925682 (not ((_ is Cons!51114) (_2!29184 (h!57087 (toList!4679 lm!1477))))))))

(assert (=> d!1449826 (= (noDuplicateKeys!1332 (_2!29184 (h!57087 (toList!4679 lm!1477)))) e!2871167)))

(declare-fun b!4602980 () Bool)

(declare-fun e!2871168 () Bool)

(assert (=> b!4602980 (= e!2871167 e!2871168)))

(declare-fun res!1925683 () Bool)

(assert (=> b!4602980 (=> (not res!1925683) (not e!2871168))))

(assert (=> b!4602980 (= res!1925683 (not (containsKey!2184 (t!358232 (_2!29184 (h!57087 (toList!4679 lm!1477)))) (_1!29183 (h!57086 (_2!29184 (h!57087 (toList!4679 lm!1477))))))))))

(declare-fun b!4602981 () Bool)

(assert (=> b!4602981 (= e!2871168 (noDuplicateKeys!1332 (t!358232 (_2!29184 (h!57087 (toList!4679 lm!1477))))))))

(assert (= (and d!1449826 (not res!1925682)) b!4602980))

(assert (= (and b!4602980 res!1925683) b!4602981))

(declare-fun m!5432065 () Bool)

(assert (=> b!4602980 m!5432065))

(declare-fun m!5432067 () Bool)

(assert (=> b!4602981 m!5432067))

(assert (=> b!4602676 d!1449826))

(declare-fun d!1449828 () Bool)

(declare-fun res!1925688 () Bool)

(declare-fun e!2871173 () Bool)

(assert (=> d!1449828 (=> res!1925688 e!2871173)))

(assert (=> d!1449828 (= res!1925688 ((_ is Nil!51115) (toList!4679 lm!1477)))))

(assert (=> d!1449828 (= (forall!10626 (toList!4679 lm!1477) lambda!186932) e!2871173)))

(declare-fun b!4602986 () Bool)

(declare-fun e!2871174 () Bool)

(assert (=> b!4602986 (= e!2871173 e!2871174)))

(declare-fun res!1925689 () Bool)

(assert (=> b!4602986 (=> (not res!1925689) (not e!2871174))))

(assert (=> b!4602986 (= res!1925689 (dynLambda!21410 lambda!186932 (h!57087 (toList!4679 lm!1477))))))

(declare-fun b!4602987 () Bool)

(assert (=> b!4602987 (= e!2871174 (forall!10626 (t!358233 (toList!4679 lm!1477)) lambda!186932))))

(assert (= (and d!1449828 (not res!1925688)) b!4602986))

(assert (= (and b!4602986 res!1925689) b!4602987))

(declare-fun b_lambda!169727 () Bool)

(assert (=> (not b_lambda!169727) (not b!4602986)))

(declare-fun m!5432069 () Bool)

(assert (=> b!4602986 m!5432069))

(declare-fun m!5432071 () Bool)

(assert (=> b!4602987 m!5432071))

(assert (=> start!459560 d!1449828))

(declare-fun d!1449830 () Bool)

(assert (=> d!1449830 (= (inv!66664 lm!1477) (isStrictlySorted!548 (toList!4679 lm!1477)))))

(declare-fun bs!1013922 () Bool)

(assert (= bs!1013922 d!1449830))

(assert (=> bs!1013922 m!5431805))

(assert (=> start!459560 d!1449830))

(declare-fun d!1449832 () Bool)

(assert (=> d!1449832 (= (head!9552 (toList!4679 lm!1477)) (h!57087 (toList!4679 lm!1477)))))

(assert (=> b!4602665 d!1449832))

(assert (=> b!4602686 d!1449828))

(declare-fun bs!1013923 () Bool)

(declare-fun d!1449834 () Bool)

(assert (= bs!1013923 (and d!1449834 start!459560)))

(declare-fun lambda!186981 () Int)

(assert (=> bs!1013923 (= lambda!186981 lambda!186932)))

(declare-fun bs!1013924 () Bool)

(assert (= bs!1013924 (and d!1449834 d!1449694)))

(assert (=> bs!1013924 (= lambda!186981 lambda!186942)))

(declare-fun bs!1013925 () Bool)

(assert (= bs!1013925 (and d!1449834 d!1449690)))

(assert (=> bs!1013925 (= lambda!186981 lambda!186941)))

(declare-fun bs!1013926 () Bool)

(assert (= bs!1013926 (and d!1449834 d!1449812)))

(assert (=> bs!1013926 (not (= lambda!186981 lambda!186977))))

(declare-fun bs!1013927 () Bool)

(assert (= bs!1013927 (and d!1449834 d!1449822)))

(assert (=> bs!1013927 (= lambda!186981 lambda!186978)))

(declare-fun bs!1013928 () Bool)

(assert (= bs!1013928 (and d!1449834 d!1449778)))

(assert (=> bs!1013928 (= lambda!186981 lambda!186959)))

(declare-fun bs!1013929 () Bool)

(assert (= bs!1013929 (and d!1449834 d!1449698)))

(assert (=> bs!1013929 (= lambda!186981 lambda!186949)))

(declare-fun bs!1013930 () Bool)

(assert (= bs!1013930 (and d!1449834 d!1449782)))

(assert (=> bs!1013930 (= lambda!186981 lambda!186967)))

(declare-fun bs!1013931 () Bool)

(assert (= bs!1013931 (and d!1449834 d!1449796)))

(assert (=> bs!1013931 (= lambda!186981 lambda!186968)))

(declare-fun bs!1013932 () Bool)

(assert (= bs!1013932 (and d!1449834 d!1449776)))

(assert (=> bs!1013932 (= lambda!186981 lambda!186958)))

(assert (=> d!1449834 (not (contains!14081 (extractMap!1392 (toList!4679 lm!1477)) key!3287))))

(declare-fun lt!1761662 () Unit!108771)

(declare-fun choose!30894 (ListLongMap!3311 K!12480 Hashable!5731) Unit!108771)

(assert (=> d!1449834 (= lt!1761662 (choose!30894 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1449834 (forall!10626 (toList!4679 lm!1477) lambda!186981)))

(assert (=> d!1449834 (= (lemmaNotInItsHashBucketThenNotInMap!302 lm!1477 key!3287 hashF!1107) lt!1761662)))

(declare-fun bs!1013933 () Bool)

(assert (= bs!1013933 d!1449834))

(assert (=> bs!1013933 m!5431559))

(assert (=> bs!1013933 m!5431559))

(assert (=> bs!1013933 m!5431561))

(declare-fun m!5432073 () Bool)

(assert (=> bs!1013933 m!5432073))

(declare-fun m!5432075 () Bool)

(assert (=> bs!1013933 m!5432075))

(assert (=> b!4602677 d!1449834))

(declare-fun bs!1013934 () Bool)

(declare-fun d!1449836 () Bool)

(assert (= bs!1013934 (and d!1449836 start!459560)))

(declare-fun lambda!186982 () Int)

(assert (=> bs!1013934 (= lambda!186982 lambda!186932)))

(declare-fun bs!1013935 () Bool)

(assert (= bs!1013935 (and d!1449836 d!1449694)))

(assert (=> bs!1013935 (= lambda!186982 lambda!186942)))

(declare-fun bs!1013936 () Bool)

(assert (= bs!1013936 (and d!1449836 d!1449690)))

(assert (=> bs!1013936 (= lambda!186982 lambda!186941)))

(declare-fun bs!1013937 () Bool)

(assert (= bs!1013937 (and d!1449836 d!1449812)))

(assert (=> bs!1013937 (not (= lambda!186982 lambda!186977))))

(declare-fun bs!1013938 () Bool)

(assert (= bs!1013938 (and d!1449836 d!1449822)))

(assert (=> bs!1013938 (= lambda!186982 lambda!186978)))

(declare-fun bs!1013939 () Bool)

(assert (= bs!1013939 (and d!1449836 d!1449778)))

(assert (=> bs!1013939 (= lambda!186982 lambda!186959)))

(declare-fun bs!1013940 () Bool)

(assert (= bs!1013940 (and d!1449836 d!1449834)))

(assert (=> bs!1013940 (= lambda!186982 lambda!186981)))

(declare-fun bs!1013941 () Bool)

(assert (= bs!1013941 (and d!1449836 d!1449698)))

(assert (=> bs!1013941 (= lambda!186982 lambda!186949)))

(declare-fun bs!1013942 () Bool)

(assert (= bs!1013942 (and d!1449836 d!1449782)))

(assert (=> bs!1013942 (= lambda!186982 lambda!186967)))

(declare-fun bs!1013943 () Bool)

(assert (= bs!1013943 (and d!1449836 d!1449796)))

(assert (=> bs!1013943 (= lambda!186982 lambda!186968)))

(declare-fun bs!1013944 () Bool)

(assert (= bs!1013944 (and d!1449836 d!1449776)))

(assert (=> bs!1013944 (= lambda!186982 lambda!186958)))

(assert (=> d!1449836 (contains!14082 lt!1761437 (hash!3249 hashF!1107 key!3287))))

(declare-fun lt!1761663 () Unit!108771)

(assert (=> d!1449836 (= lt!1761663 (choose!30886 lt!1761437 key!3287 hashF!1107))))

(assert (=> d!1449836 (forall!10626 (toList!4679 lt!1761437) lambda!186982)))

(assert (=> d!1449836 (= (lemmaInGenMapThenLongMapContainsHash!406 lt!1761437 key!3287 hashF!1107) lt!1761663)))

(declare-fun bs!1013945 () Bool)

(assert (= bs!1013945 d!1449836))

(assert (=> bs!1013945 m!5431547))

(assert (=> bs!1013945 m!5431547))

(declare-fun m!5432077 () Bool)

(assert (=> bs!1013945 m!5432077))

(declare-fun m!5432079 () Bool)

(assert (=> bs!1013945 m!5432079))

(declare-fun m!5432081 () Bool)

(assert (=> bs!1013945 m!5432081))

(assert (=> b!4602666 d!1449836))

(declare-fun d!1449838 () Bool)

(declare-fun e!2871175 () Bool)

(assert (=> d!1449838 e!2871175))

(declare-fun res!1925690 () Bool)

(assert (=> d!1449838 (=> res!1925690 e!2871175)))

(declare-fun lt!1761664 () Bool)

(assert (=> d!1449838 (= res!1925690 (not lt!1761664))))

(declare-fun lt!1761666 () Bool)

(assert (=> d!1449838 (= lt!1761664 lt!1761666)))

(declare-fun lt!1761665 () Unit!108771)

(declare-fun e!2871176 () Unit!108771)

(assert (=> d!1449838 (= lt!1761665 e!2871176)))

(declare-fun c!788604 () Bool)

(assert (=> d!1449838 (= c!788604 lt!1761666)))

(assert (=> d!1449838 (= lt!1761666 (containsKey!2187 (toList!4679 lt!1761437) lt!1761447))))

(assert (=> d!1449838 (= (contains!14082 lt!1761437 lt!1761447) lt!1761664)))

(declare-fun b!4602988 () Bool)

(declare-fun lt!1761667 () Unit!108771)

(assert (=> b!4602988 (= e!2871176 lt!1761667)))

(assert (=> b!4602988 (= lt!1761667 (lemmaContainsKeyImpliesGetValueByKeyDefined!1230 (toList!4679 lt!1761437) lt!1761447))))

(assert (=> b!4602988 (isDefined!8674 (getValueByKey!1326 (toList!4679 lt!1761437) lt!1761447))))

(declare-fun b!4602989 () Bool)

(declare-fun Unit!108792 () Unit!108771)

(assert (=> b!4602989 (= e!2871176 Unit!108792)))

(declare-fun b!4602990 () Bool)

(assert (=> b!4602990 (= e!2871175 (isDefined!8674 (getValueByKey!1326 (toList!4679 lt!1761437) lt!1761447)))))

(assert (= (and d!1449838 c!788604) b!4602988))

(assert (= (and d!1449838 (not c!788604)) b!4602989))

(assert (= (and d!1449838 (not res!1925690)) b!4602990))

(declare-fun m!5432083 () Bool)

(assert (=> d!1449838 m!5432083))

(declare-fun m!5432085 () Bool)

(assert (=> b!4602988 m!5432085))

(declare-fun m!5432087 () Bool)

(assert (=> b!4602988 m!5432087))

(assert (=> b!4602988 m!5432087))

(declare-fun m!5432089 () Bool)

(assert (=> b!4602988 m!5432089))

(assert (=> b!4602990 m!5432087))

(assert (=> b!4602990 m!5432087))

(assert (=> b!4602990 m!5432089))

(assert (=> b!4602666 d!1449838))

(declare-fun b!4602995 () Bool)

(declare-fun e!2871179 () Bool)

(declare-fun tp!1340611 () Bool)

(declare-fun tp!1340612 () Bool)

(assert (=> b!4602995 (= e!2871179 (and tp!1340611 tp!1340612))))

(assert (=> b!4602662 (= tp!1340596 e!2871179)))

(assert (= (and b!4602662 ((_ is Cons!51115) (toList!4679 lm!1477))) b!4602995))

(declare-fun b!4603000 () Bool)

(declare-fun tp!1340615 () Bool)

(declare-fun e!2871182 () Bool)

(assert (=> b!4603000 (= e!2871182 (and tp_is_empty!28621 tp_is_empty!28623 tp!1340615))))

(assert (=> b!4602683 (= tp!1340597 e!2871182)))

(assert (= (and b!4602683 ((_ is Cons!51114) (t!358232 newBucket!178))) b!4603000))

(declare-fun b_lambda!169729 () Bool)

(assert (= b_lambda!169727 (or start!459560 b_lambda!169729)))

(declare-fun bs!1013946 () Bool)

(declare-fun d!1449840 () Bool)

(assert (= bs!1013946 (and d!1449840 start!459560)))

(assert (=> bs!1013946 (= (dynLambda!21410 lambda!186932 (h!57087 (toList!4679 lm!1477))) (noDuplicateKeys!1332 (_2!29184 (h!57087 (toList!4679 lm!1477)))))))

(assert (=> bs!1013946 m!5431535))

(assert (=> b!4602986 d!1449840))

(declare-fun b_lambda!169731 () Bool)

(assert (= b_lambda!169721 (or start!459560 b_lambda!169731)))

(declare-fun bs!1013947 () Bool)

(declare-fun d!1449842 () Bool)

(assert (= bs!1013947 (and d!1449842 start!459560)))

(assert (=> bs!1013947 (= (dynLambda!21410 lambda!186932 lt!1761442) (noDuplicateKeys!1332 (_2!29184 lt!1761442)))))

(declare-fun m!5432091 () Bool)

(assert (=> bs!1013947 m!5432091))

(assert (=> d!1449740 d!1449842))

(check-sat (not d!1449760) (not b!4602935) (not d!1449834) (not b!4602876) (not b!4602954) (not bs!1013947) (not b!4602969) (not d!1449690) (not b!4602819) (not d!1449796) (not d!1449714) (not bm!321230) (not d!1449836) (not b!4602708) (not b!4602939) (not d!1449814) (not d!1449780) (not d!1449808) (not b!4602981) (not b!4602942) (not d!1449774) (not d!1449820) (not b!4602879) (not b!4602988) (not b!4602883) (not b!4602963) (not b!4602955) (not d!1449822) (not d!1449838) (not b!4602952) (not d!1449732) (not d!1449810) (not bm!321231) (not b!4602958) (not b!4602964) (not d!1449684) (not b!4602968) (not b!4602899) (not d!1449818) (not b!4602868) (not b!4602960) (not b!4602846) (not d!1449734) (not d!1449740) (not b!4602951) (not b!4602949) (not b!4602934) (not d!1449744) (not b!4602962) (not d!1449798) (not b!4602977) (not b!4602740) (not b!4603000) (not b!4602875) (not d!1449768) (not b!4602884) (not b!4602779) tp_is_empty!28621 (not b!4602932) (not b!4602995) (not d!1449830) (not b!4602990) (not b!4602961) tp_is_empty!28623 (not b!4602950) (not b_lambda!169731) (not d!1449812) (not b!4602933) (not b!4602746) (not b!4602938) (not b!4602881) (not d!1449706) (not b!4602967) (not d!1449698) (not b_lambda!169729) (not b!4602959) (not b!4602953) (not b!4602701) (not d!1449680) (not d!1449778) (not b!4602821) (not d!1449694) (not b!4602980) (not bm!321232) (not b!4602824) (not d!1449776) (not b!4602987) (not bs!1013946) (not b!4602931) (not d!1449782) (not d!1449682) (not b!4602979))
(check-sat)
