; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459556 () Bool)

(assert start!459556)

(declare-fun b!4602513 () Bool)

(declare-fun e!2870880 () Bool)

(declare-fun e!2870874 () Bool)

(assert (=> b!4602513 (= e!2870880 e!2870874)))

(declare-fun res!1925427 () Bool)

(assert (=> b!4602513 (=> res!1925427 e!2870874)))

(declare-fun lt!1761312 () Bool)

(assert (=> b!4602513 (= res!1925427 lt!1761312)))

(declare-datatypes ((Unit!108759 0))(
  ( (Unit!108760) )
))
(declare-fun lt!1761325 () Unit!108759)

(declare-fun e!2870870 () Unit!108759)

(assert (=> b!4602513 (= lt!1761325 e!2870870)))

(declare-fun c!788522 () Bool)

(assert (=> b!4602513 (= c!788522 lt!1761312)))

(declare-datatypes ((K!12475 0))(
  ( (K!12476 (val!18251 Int)) )
))
(declare-datatypes ((V!12721 0))(
  ( (V!12722 (val!18252 Int)) )
))
(declare-datatypes ((tuple2!51770 0))(
  ( (tuple2!51771 (_1!29179 K!12475) (_2!29179 V!12721)) )
))
(declare-datatypes ((List!51234 0))(
  ( (Nil!51110) (Cons!51110 (h!57082 tuple2!51770) (t!358228 List!51234)) )
))
(declare-datatypes ((tuple2!51772 0))(
  ( (tuple2!51773 (_1!29180 (_ BitVec 64)) (_2!29180 List!51234)) )
))
(declare-datatypes ((List!51235 0))(
  ( (Nil!51111) (Cons!51111 (h!57083 tuple2!51772) (t!358229 List!51235)) )
))
(declare-datatypes ((ListLongMap!3307 0))(
  ( (ListLongMap!3308 (toList!4675 List!51235)) )
))
(declare-fun lm!1477 () ListLongMap!3307)

(declare-fun key!3287 () K!12475)

(declare-fun containsKey!2182 (List!51234 K!12475) Bool)

(assert (=> b!4602513 (= lt!1761312 (not (containsKey!2182 (_2!29180 (h!57083 (toList!4675 lm!1477))) key!3287)))))

(declare-fun res!1925428 () Bool)

(declare-fun e!2870881 () Bool)

(assert (=> start!459556 (=> (not res!1925428) (not e!2870881))))

(declare-fun lambda!186918 () Int)

(declare-fun forall!10624 (List!51235 Int) Bool)

(assert (=> start!459556 (= res!1925428 (forall!10624 (toList!4675 lm!1477) lambda!186918))))

(assert (=> start!459556 e!2870881))

(assert (=> start!459556 true))

(declare-fun e!2870882 () Bool)

(declare-fun inv!66659 (ListLongMap!3307) Bool)

(assert (=> start!459556 (and (inv!66659 lm!1477) e!2870882)))

(declare-fun tp_is_empty!28613 () Bool)

(assert (=> start!459556 tp_is_empty!28613))

(declare-fun e!2870879 () Bool)

(assert (=> start!459556 e!2870879))

(declare-fun b!4602514 () Bool)

(declare-fun res!1925424 () Bool)

(declare-fun e!2870878 () Bool)

(assert (=> b!4602514 (=> res!1925424 e!2870878)))

(declare-fun noDuplicateKeys!1330 (List!51234) Bool)

(assert (=> b!4602514 (= res!1925424 (not (noDuplicateKeys!1330 (_2!29180 (h!57083 (toList!4675 lm!1477))))))))

(declare-fun b!4602515 () Bool)

(declare-fun e!2870872 () Bool)

(declare-fun e!2870875 () Bool)

(assert (=> b!4602515 (= e!2870872 e!2870875)))

(declare-fun res!1925431 () Bool)

(assert (=> b!4602515 (=> res!1925431 e!2870875)))

(declare-fun lt!1761315 () ListLongMap!3307)

(declare-fun tail!7968 (List!51235) List!51235)

(assert (=> b!4602515 (= res!1925431 (not (= (t!358229 (toList!4675 lm!1477)) (tail!7968 (toList!4675 lt!1761315)))))))

(declare-fun lt!1761321 () tuple2!51772)

(declare-fun +!1762 (ListLongMap!3307 tuple2!51772) ListLongMap!3307)

(assert (=> b!4602515 (= lt!1761315 (+!1762 lm!1477 lt!1761321))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((ListMap!3937 0))(
  ( (ListMap!3938 (toList!4676 List!51234)) )
))
(declare-fun eq!737 (ListMap!3937 ListMap!3937) Bool)

(declare-fun extractMap!1390 (List!51235) ListMap!3937)

(declare-fun -!506 (ListMap!3937 K!12475) ListMap!3937)

(assert (=> b!4602515 (eq!737 (extractMap!1390 (Cons!51111 lt!1761321 Nil!51111)) (-!506 (extractMap!1390 (Cons!51111 (tuple2!51773 hash!344 (_2!29180 (h!57083 (toList!4675 lm!1477)))) Nil!51111)) key!3287))))

(declare-fun newBucket!178 () List!51234)

(assert (=> b!4602515 (= lt!1761321 (tuple2!51773 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5729 0))(
  ( (HashableExt!5728 (__x!31432 Int)) )
))
(declare-fun hashF!1107 () Hashable!5729)

(declare-fun lt!1761318 () Unit!108759)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!96 ((_ BitVec 64) List!51234 List!51234 K!12475 Hashable!5729) Unit!108759)

(assert (=> b!4602515 (= lt!1761318 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!96 hash!344 (_2!29180 (h!57083 (toList!4675 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1761322 () List!51235)

(declare-fun contains!14075 (ListMap!3937 K!12475) Bool)

(assert (=> b!4602515 (contains!14075 (extractMap!1390 lt!1761322) key!3287)))

(declare-fun lt!1761313 () Unit!108759)

(declare-fun lemmaListContainsThenExtractedMapContains!264 (ListLongMap!3307 K!12475 Hashable!5729) Unit!108759)

(assert (=> b!4602515 (= lt!1761313 (lemmaListContainsThenExtractedMapContains!264 (ListLongMap!3308 lt!1761322) key!3287 hashF!1107))))

(declare-fun b!4602516 () Bool)

(declare-fun Unit!108761 () Unit!108759)

(assert (=> b!4602516 (= e!2870870 Unit!108761)))

(declare-fun lt!1761316 () Unit!108759)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!300 (ListLongMap!3307 K!12475 Hashable!5729) Unit!108759)

(assert (=> b!4602516 (= lt!1761316 (lemmaNotInItsHashBucketThenNotInMap!300 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4602516 false))

(declare-fun b!4602517 () Bool)

(declare-fun e!2870877 () Bool)

(declare-fun e!2870869 () Bool)

(assert (=> b!4602517 (= e!2870877 e!2870869)))

(declare-fun res!1925422 () Bool)

(assert (=> b!4602517 (=> res!1925422 e!2870869)))

(declare-fun lt!1761317 () ListMap!3937)

(assert (=> b!4602517 (= res!1925422 (not (= lt!1761317 (extractMap!1390 (t!358229 (toList!4675 lm!1477))))))))

(declare-fun lt!1761329 () ListLongMap!3307)

(assert (=> b!4602517 (= lt!1761317 (extractMap!1390 (toList!4675 lt!1761329)))))

(declare-fun b!4602518 () Bool)

(assert (=> b!4602518 (= e!2870878 true)))

(declare-fun b!4602519 () Bool)

(declare-fun res!1925419 () Bool)

(assert (=> b!4602519 (=> res!1925419 e!2870880)))

(assert (=> b!4602519 (= res!1925419 (not (noDuplicateKeys!1330 newBucket!178)))))

(declare-fun b!4602520 () Bool)

(declare-fun e!2870876 () Bool)

(assert (=> b!4602520 (= e!2870881 e!2870876)))

(declare-fun res!1925418 () Bool)

(assert (=> b!4602520 (=> (not res!1925418) (not e!2870876))))

(declare-fun lt!1761324 () (_ BitVec 64))

(assert (=> b!4602520 (= res!1925418 (= lt!1761324 hash!344))))

(declare-fun hash!3247 (Hashable!5729 K!12475) (_ BitVec 64))

(assert (=> b!4602520 (= lt!1761324 (hash!3247 hashF!1107 key!3287))))

(declare-fun b!4602521 () Bool)

(declare-fun res!1925420 () Bool)

(assert (=> b!4602521 (=> res!1925420 e!2870880)))

(get-info :version)

(assert (=> b!4602521 (= res!1925420 (or ((_ is Nil!51111) (toList!4675 lm!1477)) (not (= (_1!29180 (h!57083 (toList!4675 lm!1477))) hash!344))))))

(declare-fun b!4602522 () Bool)

(declare-fun tp!1340585 () Bool)

(assert (=> b!4602522 (= e!2870882 tp!1340585)))

(declare-fun tp_is_empty!28615 () Bool)

(declare-fun tp!1340584 () Bool)

(declare-fun b!4602523 () Bool)

(assert (=> b!4602523 (= e!2870879 (and tp_is_empty!28613 tp_is_empty!28615 tp!1340584))))

(declare-fun b!4602524 () Bool)

(declare-fun res!1925421 () Bool)

(assert (=> b!4602524 (=> res!1925421 e!2870878)))

(assert (=> b!4602524 (= res!1925421 (not (forall!10624 (toList!4675 lm!1477) lambda!186918)))))

(declare-fun b!4602525 () Bool)

(declare-fun res!1925433 () Bool)

(assert (=> b!4602525 (=> res!1925433 e!2870878)))

(declare-fun removePairForKey!955 (List!51234 K!12475) List!51234)

(assert (=> b!4602525 (= res!1925433 (not (= (removePairForKey!955 (_2!29180 (h!57083 (toList!4675 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4602526 () Bool)

(assert (=> b!4602526 (= e!2870869 e!2870878)))

(declare-fun res!1925425 () Bool)

(assert (=> b!4602526 (=> res!1925425 e!2870878)))

(declare-fun lt!1761311 () Bool)

(assert (=> b!4602526 (= res!1925425 lt!1761311)))

(declare-fun lt!1761320 () Unit!108759)

(declare-fun e!2870871 () Unit!108759)

(assert (=> b!4602526 (= lt!1761320 e!2870871)))

(declare-fun c!788521 () Bool)

(assert (=> b!4602526 (= c!788521 lt!1761311)))

(assert (=> b!4602526 (= lt!1761311 (contains!14075 lt!1761317 key!3287))))

(declare-fun b!4602527 () Bool)

(declare-fun res!1925434 () Bool)

(assert (=> b!4602527 (=> (not res!1925434) (not e!2870881))))

(declare-fun allKeysSameHashInMap!1441 (ListLongMap!3307 Hashable!5729) Bool)

(assert (=> b!4602527 (= res!1925434 (allKeysSameHashInMap!1441 lm!1477 hashF!1107))))

(declare-fun b!4602528 () Bool)

(assert (=> b!4602528 (= e!2870875 e!2870877)))

(declare-fun res!1925423 () Bool)

(assert (=> b!4602528 (=> res!1925423 e!2870877)))

(assert (=> b!4602528 (= res!1925423 (not (= lt!1761315 (+!1762 lt!1761329 lt!1761321))))))

(declare-fun tail!7969 (ListLongMap!3307) ListLongMap!3307)

(assert (=> b!4602528 (= lt!1761329 (tail!7969 lm!1477))))

(declare-fun b!4602529 () Bool)

(declare-fun res!1925429 () Bool)

(assert (=> b!4602529 (=> (not res!1925429) (not e!2870881))))

(assert (=> b!4602529 (= res!1925429 (contains!14075 (extractMap!1390 (toList!4675 lm!1477)) key!3287))))

(declare-fun b!4602530 () Bool)

(declare-fun Unit!108762 () Unit!108759)

(assert (=> b!4602530 (= e!2870870 Unit!108762)))

(declare-fun b!4602531 () Bool)

(declare-fun e!2870873 () Bool)

(assert (=> b!4602531 (= e!2870873 false)))

(declare-fun b!4602532 () Bool)

(declare-fun Unit!108763 () Unit!108759)

(assert (=> b!4602532 (= e!2870871 Unit!108763)))

(declare-fun b!4602533 () Bool)

(assert (=> b!4602533 (= e!2870876 (not e!2870880))))

(declare-fun res!1925432 () Bool)

(assert (=> b!4602533 (=> res!1925432 e!2870880)))

(declare-fun lt!1761314 () List!51234)

(assert (=> b!4602533 (= res!1925432 (not (= newBucket!178 (removePairForKey!955 lt!1761314 key!3287))))))

(declare-fun lt!1761319 () tuple2!51772)

(declare-fun lt!1761323 () Unit!108759)

(declare-fun forallContained!2875 (List!51235 Int tuple2!51772) Unit!108759)

(assert (=> b!4602533 (= lt!1761323 (forallContained!2875 (toList!4675 lm!1477) lambda!186918 lt!1761319))))

(declare-fun contains!14076 (List!51235 tuple2!51772) Bool)

(assert (=> b!4602533 (contains!14076 (toList!4675 lm!1477) lt!1761319)))

(assert (=> b!4602533 (= lt!1761319 (tuple2!51773 hash!344 lt!1761314))))

(declare-fun lt!1761328 () Unit!108759)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!840 (List!51235 (_ BitVec 64) List!51234) Unit!108759)

(assert (=> b!4602533 (= lt!1761328 (lemmaGetValueByKeyImpliesContainsTuple!840 (toList!4675 lm!1477) hash!344 lt!1761314))))

(declare-fun apply!12067 (ListLongMap!3307 (_ BitVec 64)) List!51234)

(assert (=> b!4602533 (= lt!1761314 (apply!12067 lm!1477 hash!344))))

(declare-fun contains!14077 (ListLongMap!3307 (_ BitVec 64)) Bool)

(assert (=> b!4602533 (contains!14077 lm!1477 lt!1761324)))

(declare-fun lt!1761327 () Unit!108759)

(declare-fun lemmaInGenMapThenLongMapContainsHash!404 (ListLongMap!3307 K!12475 Hashable!5729) Unit!108759)

(assert (=> b!4602533 (= lt!1761327 (lemmaInGenMapThenLongMapContainsHash!404 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4602534 () Bool)

(declare-fun res!1925417 () Bool)

(assert (=> b!4602534 (=> (not res!1925417) (not e!2870876))))

(declare-fun allKeysSameHash!1186 (List!51234 (_ BitVec 64) Hashable!5729) Bool)

(assert (=> b!4602534 (= res!1925417 (allKeysSameHash!1186 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4602535 () Bool)

(assert (=> b!4602535 (= e!2870874 e!2870872)))

(declare-fun res!1925426 () Bool)

(assert (=> b!4602535 (=> res!1925426 e!2870872)))

(declare-fun containsKeyBiggerList!286 (List!51235 K!12475) Bool)

(assert (=> b!4602535 (= res!1925426 (not (containsKeyBiggerList!286 lt!1761322 key!3287)))))

(assert (=> b!4602535 (= lt!1761322 (Cons!51111 (h!57083 (toList!4675 lm!1477)) Nil!51111))))

(declare-fun b!4602536 () Bool)

(declare-fun Unit!108764 () Unit!108759)

(assert (=> b!4602536 (= e!2870871 Unit!108764)))

(declare-fun lt!1761326 () Unit!108759)

(assert (=> b!4602536 (= lt!1761326 (lemmaInGenMapThenLongMapContainsHash!404 lt!1761329 key!3287 hashF!1107))))

(declare-fun res!1925430 () Bool)

(assert (=> b!4602536 (= res!1925430 (contains!14077 lt!1761329 lt!1761324))))

(assert (=> b!4602536 (=> (not res!1925430) (not e!2870873))))

(assert (=> b!4602536 e!2870873))

(assert (= (and start!459556 res!1925428) b!4602527))

(assert (= (and b!4602527 res!1925434) b!4602529))

(assert (= (and b!4602529 res!1925429) b!4602520))

(assert (= (and b!4602520 res!1925418) b!4602534))

(assert (= (and b!4602534 res!1925417) b!4602533))

(assert (= (and b!4602533 (not res!1925432)) b!4602519))

(assert (= (and b!4602519 (not res!1925419)) b!4602521))

(assert (= (and b!4602521 (not res!1925420)) b!4602513))

(assert (= (and b!4602513 c!788522) b!4602516))

(assert (= (and b!4602513 (not c!788522)) b!4602530))

(assert (= (and b!4602513 (not res!1925427)) b!4602535))

(assert (= (and b!4602535 (not res!1925426)) b!4602515))

(assert (= (and b!4602515 (not res!1925431)) b!4602528))

(assert (= (and b!4602528 (not res!1925423)) b!4602517))

(assert (= (and b!4602517 (not res!1925422)) b!4602526))

(assert (= (and b!4602526 c!788521) b!4602536))

(assert (= (and b!4602526 (not c!788521)) b!4602532))

(assert (= (and b!4602536 res!1925430) b!4602531))

(assert (= (and b!4602526 (not res!1925425)) b!4602524))

(assert (= (and b!4602524 (not res!1925421)) b!4602514))

(assert (= (and b!4602514 (not res!1925424)) b!4602525))

(assert (= (and b!4602525 (not res!1925433)) b!4602518))

(assert (= start!459556 b!4602522))

(assert (= (and start!459556 ((_ is Cons!51110) newBucket!178)) b!4602523))

(declare-fun m!5431347 () Bool)

(assert (=> b!4602524 m!5431347))

(declare-fun m!5431349 () Bool)

(assert (=> b!4602526 m!5431349))

(declare-fun m!5431351 () Bool)

(assert (=> b!4602513 m!5431351))

(declare-fun m!5431353 () Bool)

(assert (=> b!4602529 m!5431353))

(assert (=> b!4602529 m!5431353))

(declare-fun m!5431355 () Bool)

(assert (=> b!4602529 m!5431355))

(declare-fun m!5431357 () Bool)

(assert (=> b!4602516 m!5431357))

(declare-fun m!5431359 () Bool)

(assert (=> b!4602528 m!5431359))

(declare-fun m!5431361 () Bool)

(assert (=> b!4602528 m!5431361))

(declare-fun m!5431363 () Bool)

(assert (=> b!4602535 m!5431363))

(declare-fun m!5431365 () Bool)

(assert (=> b!4602536 m!5431365))

(declare-fun m!5431367 () Bool)

(assert (=> b!4602536 m!5431367))

(declare-fun m!5431369 () Bool)

(assert (=> b!4602520 m!5431369))

(declare-fun m!5431371 () Bool)

(assert (=> b!4602517 m!5431371))

(declare-fun m!5431373 () Bool)

(assert (=> b!4602517 m!5431373))

(declare-fun m!5431375 () Bool)

(assert (=> b!4602533 m!5431375))

(declare-fun m!5431377 () Bool)

(assert (=> b!4602533 m!5431377))

(declare-fun m!5431379 () Bool)

(assert (=> b!4602533 m!5431379))

(declare-fun m!5431381 () Bool)

(assert (=> b!4602533 m!5431381))

(declare-fun m!5431383 () Bool)

(assert (=> b!4602533 m!5431383))

(declare-fun m!5431385 () Bool)

(assert (=> b!4602533 m!5431385))

(declare-fun m!5431387 () Bool)

(assert (=> b!4602533 m!5431387))

(declare-fun m!5431389 () Bool)

(assert (=> b!4602514 m!5431389))

(declare-fun m!5431391 () Bool)

(assert (=> b!4602534 m!5431391))

(declare-fun m!5431393 () Bool)

(assert (=> b!4602519 m!5431393))

(declare-fun m!5431395 () Bool)

(assert (=> b!4602527 m!5431395))

(declare-fun m!5431397 () Bool)

(assert (=> b!4602515 m!5431397))

(declare-fun m!5431399 () Bool)

(assert (=> b!4602515 m!5431399))

(declare-fun m!5431401 () Bool)

(assert (=> b!4602515 m!5431401))

(declare-fun m!5431403 () Bool)

(assert (=> b!4602515 m!5431403))

(declare-fun m!5431405 () Bool)

(assert (=> b!4602515 m!5431405))

(declare-fun m!5431407 () Bool)

(assert (=> b!4602515 m!5431407))

(assert (=> b!4602515 m!5431399))

(assert (=> b!4602515 m!5431405))

(assert (=> b!4602515 m!5431401))

(declare-fun m!5431409 () Bool)

(assert (=> b!4602515 m!5431409))

(declare-fun m!5431411 () Bool)

(assert (=> b!4602515 m!5431411))

(declare-fun m!5431413 () Bool)

(assert (=> b!4602515 m!5431413))

(assert (=> b!4602515 m!5431411))

(declare-fun m!5431415 () Bool)

(assert (=> b!4602515 m!5431415))

(assert (=> start!459556 m!5431347))

(declare-fun m!5431417 () Bool)

(assert (=> start!459556 m!5431417))

(declare-fun m!5431419 () Bool)

(assert (=> b!4602525 m!5431419))

(check-sat (not b!4602514) (not b!4602533) (not b!4602534) (not b!4602516) (not b!4602528) (not b!4602519) (not b!4602515) (not b!4602524) (not b!4602535) (not b!4602529) (not b!4602536) tp_is_empty!28613 (not b!4602527) (not b!4602526) (not b!4602517) tp_is_empty!28615 (not b!4602522) (not b!4602523) (not b!4602520) (not b!4602525) (not start!459556) (not b!4602513))
(check-sat)
