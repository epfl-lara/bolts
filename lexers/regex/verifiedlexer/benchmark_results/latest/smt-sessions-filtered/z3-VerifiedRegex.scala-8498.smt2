; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!442056 () Bool)

(assert start!442056)

(declare-fun tp!1337117 () Bool)

(declare-fun tp_is_empty!27687 () Bool)

(declare-fun tp_is_empty!27685 () Bool)

(declare-fun e!2794849 () Bool)

(declare-fun b!4487393 () Bool)

(assert (=> b!4487393 (= e!2794849 (and tp_is_empty!27685 tp_is_empty!27687 tp!1337117))))

(declare-fun b!4487394 () Bool)

(declare-fun res!1864335 () Bool)

(declare-fun e!2794854 () Bool)

(assert (=> b!4487394 (=> (not res!1864335) (not e!2794854))))

(declare-datatypes ((K!11895 0))(
  ( (K!11896 (val!17787 Int)) )
))
(declare-datatypes ((V!12141 0))(
  ( (V!12142 (val!17788 Int)) )
))
(declare-datatypes ((tuple2!50842 0))(
  ( (tuple2!50843 (_1!28715 K!11895) (_2!28715 V!12141)) )
))
(declare-datatypes ((List!50602 0))(
  ( (Nil!50478) (Cons!50478 (h!56279 tuple2!50842) (t!357556 List!50602)) )
))
(declare-datatypes ((tuple2!50844 0))(
  ( (tuple2!50845 (_1!28716 (_ BitVec 64)) (_2!28716 List!50602)) )
))
(declare-datatypes ((List!50603 0))(
  ( (Nil!50479) (Cons!50479 (h!56280 tuple2!50844) (t!357557 List!50603)) )
))
(declare-datatypes ((ListLongMap!2843 0))(
  ( (ListLongMap!2844 (toList!4211 List!50603)) )
))
(declare-fun lm!1477 () ListLongMap!2843)

(declare-fun key!3287 () K!11895)

(declare-datatypes ((ListMap!3473 0))(
  ( (ListMap!3474 (toList!4212 List!50602)) )
))
(declare-fun contains!13113 (ListMap!3473 K!11895) Bool)

(declare-fun extractMap!1158 (List!50603) ListMap!3473)

(assert (=> b!4487394 (= res!1864335 (contains!13113 (extractMap!1158 (toList!4211 lm!1477)) key!3287))))

(declare-fun b!4487395 () Bool)

(declare-fun e!2794846 () Bool)

(assert (=> b!4487395 (= e!2794854 e!2794846)))

(declare-fun res!1864334 () Bool)

(assert (=> b!4487395 (=> (not res!1864334) (not e!2794846))))

(declare-fun lt!1672307 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4487395 (= res!1864334 (= lt!1672307 hash!344))))

(declare-datatypes ((Hashable!5497 0))(
  ( (HashableExt!5496 (__x!31200 Int)) )
))
(declare-fun hashF!1107 () Hashable!5497)

(declare-fun hash!2613 (Hashable!5497 K!11895) (_ BitVec 64))

(assert (=> b!4487395 (= lt!1672307 (hash!2613 hashF!1107 key!3287))))

(declare-fun b!4487396 () Bool)

(declare-fun res!1864332 () Bool)

(assert (=> b!4487396 (=> (not res!1864332) (not e!2794854))))

(declare-fun allKeysSameHashInMap!1209 (ListLongMap!2843 Hashable!5497) Bool)

(assert (=> b!4487396 (= res!1864332 (allKeysSameHashInMap!1209 lm!1477 hashF!1107))))

(declare-fun b!4487397 () Bool)

(declare-fun e!2794852 () Bool)

(assert (=> b!4487397 (= e!2794846 (not e!2794852))))

(declare-fun res!1864336 () Bool)

(assert (=> b!4487397 (=> res!1864336 e!2794852)))

(declare-fun lt!1672302 () List!50602)

(declare-fun newBucket!178 () List!50602)

(declare-fun removePairForKey!729 (List!50602 K!11895) List!50602)

(assert (=> b!4487397 (= res!1864336 (not (= newBucket!178 (removePairForKey!729 lt!1672302 key!3287))))))

(declare-fun lambda!166699 () Int)

(declare-datatypes ((Unit!90274 0))(
  ( (Unit!90275) )
))
(declare-fun lt!1672304 () Unit!90274)

(declare-fun lt!1672311 () tuple2!50844)

(declare-fun forallContained!2381 (List!50603 Int tuple2!50844) Unit!90274)

(assert (=> b!4487397 (= lt!1672304 (forallContained!2381 (toList!4211 lm!1477) lambda!166699 lt!1672311))))

(declare-fun contains!13114 (List!50603 tuple2!50844) Bool)

(assert (=> b!4487397 (contains!13114 (toList!4211 lm!1477) lt!1672311)))

(assert (=> b!4487397 (= lt!1672311 (tuple2!50845 hash!344 lt!1672302))))

(declare-fun lt!1672299 () Unit!90274)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!614 (List!50603 (_ BitVec 64) List!50602) Unit!90274)

(assert (=> b!4487397 (= lt!1672299 (lemmaGetValueByKeyImpliesContainsTuple!614 (toList!4211 lm!1477) hash!344 lt!1672302))))

(declare-fun apply!11839 (ListLongMap!2843 (_ BitVec 64)) List!50602)

(assert (=> b!4487397 (= lt!1672302 (apply!11839 lm!1477 hash!344))))

(declare-fun contains!13115 (ListLongMap!2843 (_ BitVec 64)) Bool)

(assert (=> b!4487397 (contains!13115 lm!1477 lt!1672307)))

(declare-fun lt!1672309 () Unit!90274)

(declare-fun lemmaInGenMapThenLongMapContainsHash!176 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> b!4487397 (= lt!1672309 (lemmaInGenMapThenLongMapContainsHash!176 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4487398 () Bool)

(declare-fun e!2794853 () Bool)

(assert (=> b!4487398 (= e!2794852 e!2794853)))

(declare-fun res!1864328 () Bool)

(assert (=> b!4487398 (=> res!1864328 e!2794853)))

(declare-fun lt!1672305 () ListLongMap!2843)

(assert (=> b!4487398 (= res!1864328 (not (contains!13115 lt!1672305 hash!344)))))

(declare-fun tail!7625 (ListLongMap!2843) ListLongMap!2843)

(assert (=> b!4487398 (= lt!1672305 (tail!7625 lm!1477))))

(declare-fun b!4487400 () Bool)

(declare-fun res!1864329 () Bool)

(assert (=> b!4487400 (=> (not res!1864329) (not e!2794846))))

(declare-fun allKeysSameHash!956 (List!50602 (_ BitVec 64) Hashable!5497) Bool)

(assert (=> b!4487400 (= res!1864329 (allKeysSameHash!956 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4487401 () Bool)

(declare-fun res!1864330 () Bool)

(assert (=> b!4487401 (=> res!1864330 e!2794852)))

(get-info :version)

(assert (=> b!4487401 (= res!1864330 (or ((_ is Nil!50479) (toList!4211 lm!1477)) (= (_1!28716 (h!56280 (toList!4211 lm!1477))) hash!344)))))

(declare-fun b!4487402 () Bool)

(declare-fun e!2794851 () Bool)

(declare-fun tp!1337116 () Bool)

(assert (=> b!4487402 (= e!2794851 tp!1337116)))

(declare-fun b!4487403 () Bool)

(declare-fun res!1864333 () Bool)

(assert (=> b!4487403 (=> res!1864333 e!2794853)))

(assert (=> b!4487403 (= res!1864333 (not (= (apply!11839 lt!1672305 hash!344) lt!1672302)))))

(declare-fun b!4487404 () Bool)

(declare-fun e!2794847 () Bool)

(declare-fun e!2794850 () Bool)

(assert (=> b!4487404 (= e!2794847 e!2794850)))

(declare-fun res!1864337 () Bool)

(assert (=> b!4487404 (=> res!1864337 e!2794850)))

(assert (=> b!4487404 (= res!1864337 (not (contains!13113 (extractMap!1158 (t!357557 (toList!4211 lm!1477))) key!3287)))))

(declare-fun lt!1672303 () ListMap!3473)

(assert (=> b!4487404 (contains!13113 lt!1672303 key!3287)))

(assert (=> b!4487404 (= lt!1672303 (extractMap!1158 (toList!4211 lt!1672305)))))

(declare-fun lt!1672312 () Unit!90274)

(declare-fun lemmaListContainsThenExtractedMapContains!72 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> b!4487404 (= lt!1672312 (lemmaListContainsThenExtractedMapContains!72 lt!1672305 key!3287 hashF!1107))))

(declare-fun b!4487405 () Bool)

(declare-fun e!2794848 () Unit!90274)

(declare-fun Unit!90276 () Unit!90274)

(assert (=> b!4487405 (= e!2794848 Unit!90276)))

(declare-fun b!4487406 () Bool)

(declare-fun e!2794855 () Bool)

(assert (=> b!4487406 (= e!2794855 e!2794847)))

(declare-fun res!1864331 () Bool)

(assert (=> b!4487406 (=> res!1864331 e!2794847)))

(declare-fun containsKeyBiggerList!82 (List!50603 K!11895) Bool)

(assert (=> b!4487406 (= res!1864331 (not (containsKeyBiggerList!82 (t!357557 (toList!4211 lm!1477)) key!3287)))))

(assert (=> b!4487406 (containsKeyBiggerList!82 (toList!4211 lt!1672305) key!3287)))

(declare-fun lt!1672306 () Unit!90274)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!18 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> b!4487406 (= lt!1672306 (lemmaInLongMapThenContainsKeyBiggerList!18 lt!1672305 key!3287 hashF!1107))))

(declare-fun b!4487407 () Bool)

(declare-fun Unit!90277 () Unit!90274)

(assert (=> b!4487407 (= e!2794848 Unit!90277)))

(declare-fun lt!1672308 () Unit!90274)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!90 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> b!4487407 (= lt!1672308 (lemmaNotInItsHashBucketThenNotInMap!90 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4487407 false))

(declare-fun b!4487408 () Bool)

(assert (=> b!4487408 (= e!2794853 e!2794855)))

(declare-fun res!1864338 () Bool)

(assert (=> b!4487408 (=> res!1864338 e!2794855)))

(declare-fun lt!1672300 () Bool)

(assert (=> b!4487408 (= res!1864338 lt!1672300)))

(declare-fun lt!1672310 () Unit!90274)

(assert (=> b!4487408 (= lt!1672310 e!2794848)))

(declare-fun c!764239 () Bool)

(assert (=> b!4487408 (= c!764239 lt!1672300)))

(declare-fun containsKey!1618 (List!50602 K!11895) Bool)

(assert (=> b!4487408 (= lt!1672300 (not (containsKey!1618 lt!1672302 key!3287)))))

(declare-fun res!1864326 () Bool)

(assert (=> start!442056 (=> (not res!1864326) (not e!2794854))))

(declare-fun forall!10122 (List!50603 Int) Bool)

(assert (=> start!442056 (= res!1864326 (forall!10122 (toList!4211 lm!1477) lambda!166699))))

(assert (=> start!442056 e!2794854))

(assert (=> start!442056 true))

(declare-fun inv!66079 (ListLongMap!2843) Bool)

(assert (=> start!442056 (and (inv!66079 lm!1477) e!2794851)))

(assert (=> start!442056 tp_is_empty!27685))

(assert (=> start!442056 e!2794849))

(declare-fun b!4487399 () Bool)

(declare-fun res!1864327 () Bool)

(assert (=> b!4487399 (=> res!1864327 e!2794853)))

(assert (=> b!4487399 (= res!1864327 (not (contains!13114 (t!357557 (toList!4211 lm!1477)) lt!1672311)))))

(declare-fun b!4487409 () Bool)

(declare-fun res!1864325 () Bool)

(assert (=> b!4487409 (=> res!1864325 e!2794852)))

(declare-fun noDuplicateKeys!1102 (List!50602) Bool)

(assert (=> b!4487409 (= res!1864325 (not (noDuplicateKeys!1102 newBucket!178)))))

(declare-fun b!4487410 () Bool)

(declare-fun isEmpty!28551 (ListLongMap!2843) Bool)

(assert (=> b!4487410 (= e!2794850 (not (isEmpty!28551 lm!1477)))))

(declare-fun eq!559 (ListMap!3473 ListMap!3473) Bool)

(declare-fun +!1436 (ListLongMap!2843 tuple2!50844) ListLongMap!2843)

(declare-fun -!328 (ListMap!3473 K!11895) ListMap!3473)

(assert (=> b!4487410 (eq!559 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) (-!328 lt!1672303 key!3287))))

(declare-fun lt!1672301 () Unit!90274)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!87 (ListLongMap!2843 (_ BitVec 64) List!50602 K!11895 Hashable!5497) Unit!90274)

(assert (=> b!4487410 (= lt!1672301 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!87 lt!1672305 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (= (and start!442056 res!1864326) b!4487396))

(assert (= (and b!4487396 res!1864332) b!4487394))

(assert (= (and b!4487394 res!1864335) b!4487395))

(assert (= (and b!4487395 res!1864334) b!4487400))

(assert (= (and b!4487400 res!1864329) b!4487397))

(assert (= (and b!4487397 (not res!1864336)) b!4487409))

(assert (= (and b!4487409 (not res!1864325)) b!4487401))

(assert (= (and b!4487401 (not res!1864330)) b!4487398))

(assert (= (and b!4487398 (not res!1864328)) b!4487403))

(assert (= (and b!4487403 (not res!1864333)) b!4487399))

(assert (= (and b!4487399 (not res!1864327)) b!4487408))

(assert (= (and b!4487408 c!764239) b!4487407))

(assert (= (and b!4487408 (not c!764239)) b!4487405))

(assert (= (and b!4487408 (not res!1864338)) b!4487406))

(assert (= (and b!4487406 (not res!1864331)) b!4487404))

(assert (= (and b!4487404 (not res!1864337)) b!4487410))

(assert (= start!442056 b!4487402))

(assert (= (and start!442056 ((_ is Cons!50478) newBucket!178)) b!4487393))

(declare-fun m!5208693 () Bool)

(assert (=> b!4487406 m!5208693))

(declare-fun m!5208695 () Bool)

(assert (=> b!4487406 m!5208695))

(declare-fun m!5208697 () Bool)

(assert (=> b!4487406 m!5208697))

(declare-fun m!5208699 () Bool)

(assert (=> b!4487404 m!5208699))

(declare-fun m!5208701 () Bool)

(assert (=> b!4487404 m!5208701))

(declare-fun m!5208703 () Bool)

(assert (=> b!4487404 m!5208703))

(declare-fun m!5208705 () Bool)

(assert (=> b!4487404 m!5208705))

(assert (=> b!4487404 m!5208705))

(declare-fun m!5208707 () Bool)

(assert (=> b!4487404 m!5208707))

(declare-fun m!5208709 () Bool)

(assert (=> b!4487398 m!5208709))

(declare-fun m!5208711 () Bool)

(assert (=> b!4487398 m!5208711))

(declare-fun m!5208713 () Bool)

(assert (=> b!4487399 m!5208713))

(declare-fun m!5208715 () Bool)

(assert (=> start!442056 m!5208715))

(declare-fun m!5208717 () Bool)

(assert (=> start!442056 m!5208717))

(declare-fun m!5208719 () Bool)

(assert (=> b!4487394 m!5208719))

(assert (=> b!4487394 m!5208719))

(declare-fun m!5208721 () Bool)

(assert (=> b!4487394 m!5208721))

(declare-fun m!5208723 () Bool)

(assert (=> b!4487400 m!5208723))

(declare-fun m!5208725 () Bool)

(assert (=> b!4487407 m!5208725))

(declare-fun m!5208727 () Bool)

(assert (=> b!4487395 m!5208727))

(declare-fun m!5208729 () Bool)

(assert (=> b!4487410 m!5208729))

(declare-fun m!5208731 () Bool)

(assert (=> b!4487410 m!5208731))

(declare-fun m!5208733 () Bool)

(assert (=> b!4487410 m!5208733))

(declare-fun m!5208735 () Bool)

(assert (=> b!4487410 m!5208735))

(declare-fun m!5208737 () Bool)

(assert (=> b!4487410 m!5208737))

(assert (=> b!4487410 m!5208733))

(assert (=> b!4487410 m!5208735))

(declare-fun m!5208739 () Bool)

(assert (=> b!4487410 m!5208739))

(declare-fun m!5208741 () Bool)

(assert (=> b!4487403 m!5208741))

(declare-fun m!5208743 () Bool)

(assert (=> b!4487409 m!5208743))

(declare-fun m!5208745 () Bool)

(assert (=> b!4487396 m!5208745))

(declare-fun m!5208747 () Bool)

(assert (=> b!4487408 m!5208747))

(declare-fun m!5208749 () Bool)

(assert (=> b!4487397 m!5208749))

(declare-fun m!5208751 () Bool)

(assert (=> b!4487397 m!5208751))

(declare-fun m!5208753 () Bool)

(assert (=> b!4487397 m!5208753))

(declare-fun m!5208755 () Bool)

(assert (=> b!4487397 m!5208755))

(declare-fun m!5208757 () Bool)

(assert (=> b!4487397 m!5208757))

(declare-fun m!5208759 () Bool)

(assert (=> b!4487397 m!5208759))

(declare-fun m!5208761 () Bool)

(assert (=> b!4487397 m!5208761))

(check-sat (not b!4487397) (not b!4487393) (not b!4487399) (not b!4487400) (not b!4487396) (not b!4487408) (not b!4487403) (not start!442056) (not b!4487407) (not b!4487395) (not b!4487394) (not b!4487404) (not b!4487402) (not b!4487409) tp_is_empty!27687 tp_is_empty!27685 (not b!4487410) (not b!4487406) (not b!4487398))
(check-sat)
(get-model)

(declare-fun d!1373827 () Bool)

(declare-fun hash!2616 (Hashable!5497 K!11895) (_ BitVec 64))

(assert (=> d!1373827 (= (hash!2613 hashF!1107 key!3287) (hash!2616 hashF!1107 key!3287))))

(declare-fun bs!826466 () Bool)

(assert (= bs!826466 d!1373827))

(declare-fun m!5208779 () Bool)

(assert (=> bs!826466 m!5208779))

(assert (=> b!4487395 d!1373827))

(declare-fun b!4487481 () Bool)

(declare-fun e!2794911 () Unit!90274)

(declare-fun Unit!90283 () Unit!90274)

(assert (=> b!4487481 (= e!2794911 Unit!90283)))

(declare-fun b!4487482 () Bool)

(declare-datatypes ((List!50605 0))(
  ( (Nil!50481) (Cons!50481 (h!56284 K!11895) (t!357559 List!50605)) )
))
(declare-fun e!2794908 () List!50605)

(declare-fun getKeysList!413 (List!50602) List!50605)

(assert (=> b!4487482 (= e!2794908 (getKeysList!413 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))

(declare-fun b!4487483 () Bool)

(declare-fun keys!17480 (ListMap!3473) List!50605)

(assert (=> b!4487483 (= e!2794908 (keys!17480 (extractMap!1158 (toList!4211 lm!1477))))))

(declare-fun b!4487484 () Bool)

(declare-fun e!2794906 () Bool)

(declare-fun e!2794910 () Bool)

(assert (=> b!4487484 (= e!2794906 e!2794910)))

(declare-fun res!1864375 () Bool)

(assert (=> b!4487484 (=> (not res!1864375) (not e!2794910))))

(declare-datatypes ((Option!11008 0))(
  ( (None!11007) (Some!11007 (v!44435 V!12141)) )
))
(declare-fun isDefined!8295 (Option!11008) Bool)

(declare-fun getValueByKey!988 (List!50602 K!11895) Option!11008)

(assert (=> b!4487484 (= res!1864375 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287)))))

(declare-fun bm!312249 () Bool)

(declare-fun call!312254 () Bool)

(declare-fun contains!13117 (List!50605 K!11895) Bool)

(assert (=> bm!312249 (= call!312254 (contains!13117 e!2794908 key!3287))))

(declare-fun c!764257 () Bool)

(declare-fun c!764259 () Bool)

(assert (=> bm!312249 (= c!764257 c!764259)))

(declare-fun b!4487485 () Bool)

(declare-fun e!2794907 () Unit!90274)

(assert (=> b!4487485 (= e!2794907 e!2794911)))

(declare-fun c!764258 () Bool)

(assert (=> b!4487485 (= c!764258 call!312254)))

(declare-fun b!4487486 () Bool)

(declare-fun lt!1672380 () Unit!90274)

(assert (=> b!4487486 (= e!2794907 lt!1672380)))

(declare-fun lt!1672375 () Unit!90274)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!892 (List!50602 K!11895) Unit!90274)

(assert (=> b!4487486 (= lt!1672375 (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(assert (=> b!4487486 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(declare-fun lt!1672378 () Unit!90274)

(assert (=> b!4487486 (= lt!1672378 lt!1672375)))

(declare-fun lemmaInListThenGetKeysListContains!409 (List!50602 K!11895) Unit!90274)

(assert (=> b!4487486 (= lt!1672380 (lemmaInListThenGetKeysListContains!409 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(assert (=> b!4487486 call!312254))

(declare-fun b!4487487 () Bool)

(assert (=> b!4487487 (= e!2794910 (contains!13117 (keys!17480 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(declare-fun d!1373829 () Bool)

(assert (=> d!1373829 e!2794906))

(declare-fun res!1864377 () Bool)

(assert (=> d!1373829 (=> res!1864377 e!2794906)))

(declare-fun e!2794909 () Bool)

(assert (=> d!1373829 (= res!1864377 e!2794909)))

(declare-fun res!1864376 () Bool)

(assert (=> d!1373829 (=> (not res!1864376) (not e!2794909))))

(declare-fun lt!1672379 () Bool)

(assert (=> d!1373829 (= res!1864376 (not lt!1672379))))

(declare-fun lt!1672373 () Bool)

(assert (=> d!1373829 (= lt!1672379 lt!1672373)))

(declare-fun lt!1672376 () Unit!90274)

(assert (=> d!1373829 (= lt!1672376 e!2794907)))

(assert (=> d!1373829 (= c!764259 lt!1672373)))

(declare-fun containsKey!1621 (List!50602 K!11895) Bool)

(assert (=> d!1373829 (= lt!1672373 (containsKey!1621 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(assert (=> d!1373829 (= (contains!13113 (extractMap!1158 (toList!4211 lm!1477)) key!3287) lt!1672379)))

(declare-fun b!4487488 () Bool)

(assert (=> b!4487488 false))

(declare-fun lt!1672377 () Unit!90274)

(declare-fun lt!1672374 () Unit!90274)

(assert (=> b!4487488 (= lt!1672377 lt!1672374)))

(assert (=> b!4487488 (containsKey!1621 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!412 (List!50602 K!11895) Unit!90274)

(assert (=> b!4487488 (= lt!1672374 (lemmaInGetKeysListThenContainsKey!412 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(declare-fun Unit!90284 () Unit!90274)

(assert (=> b!4487488 (= e!2794911 Unit!90284)))

(declare-fun b!4487489 () Bool)

(assert (=> b!4487489 (= e!2794909 (not (contains!13117 (keys!17480 (extractMap!1158 (toList!4211 lm!1477))) key!3287)))))

(assert (= (and d!1373829 c!764259) b!4487486))

(assert (= (and d!1373829 (not c!764259)) b!4487485))

(assert (= (and b!4487485 c!764258) b!4487488))

(assert (= (and b!4487485 (not c!764258)) b!4487481))

(assert (= (or b!4487486 b!4487485) bm!312249))

(assert (= (and bm!312249 c!764257) b!4487482))

(assert (= (and bm!312249 (not c!764257)) b!4487483))

(assert (= (and d!1373829 res!1864376) b!4487489))

(assert (= (and d!1373829 (not res!1864377)) b!4487484))

(assert (= (and b!4487484 res!1864375) b!4487487))

(declare-fun m!5208841 () Bool)

(assert (=> d!1373829 m!5208841))

(assert (=> b!4487483 m!5208719))

(declare-fun m!5208845 () Bool)

(assert (=> b!4487483 m!5208845))

(declare-fun m!5208847 () Bool)

(assert (=> bm!312249 m!5208847))

(declare-fun m!5208849 () Bool)

(assert (=> b!4487484 m!5208849))

(assert (=> b!4487484 m!5208849))

(declare-fun m!5208851 () Bool)

(assert (=> b!4487484 m!5208851))

(declare-fun m!5208853 () Bool)

(assert (=> b!4487486 m!5208853))

(assert (=> b!4487486 m!5208849))

(assert (=> b!4487486 m!5208849))

(assert (=> b!4487486 m!5208851))

(declare-fun m!5208855 () Bool)

(assert (=> b!4487486 m!5208855))

(declare-fun m!5208857 () Bool)

(assert (=> b!4487482 m!5208857))

(assert (=> b!4487487 m!5208719))

(assert (=> b!4487487 m!5208845))

(assert (=> b!4487487 m!5208845))

(declare-fun m!5208859 () Bool)

(assert (=> b!4487487 m!5208859))

(assert (=> b!4487489 m!5208719))

(assert (=> b!4487489 m!5208845))

(assert (=> b!4487489 m!5208845))

(assert (=> b!4487489 m!5208859))

(assert (=> b!4487488 m!5208841))

(declare-fun m!5208863 () Bool)

(assert (=> b!4487488 m!5208863))

(assert (=> b!4487394 d!1373829))

(declare-fun bs!826475 () Bool)

(declare-fun d!1373851 () Bool)

(assert (= bs!826475 (and d!1373851 start!442056)))

(declare-fun lambda!166711 () Int)

(assert (=> bs!826475 (= lambda!166711 lambda!166699)))

(declare-fun lt!1672387 () ListMap!3473)

(declare-fun invariantList!965 (List!50602) Bool)

(assert (=> d!1373851 (invariantList!965 (toList!4212 lt!1672387))))

(declare-fun e!2794921 () ListMap!3473)

(assert (=> d!1373851 (= lt!1672387 e!2794921)))

(declare-fun c!764263 () Bool)

(assert (=> d!1373851 (= c!764263 ((_ is Cons!50479) (toList!4211 lm!1477)))))

(assert (=> d!1373851 (forall!10122 (toList!4211 lm!1477) lambda!166711)))

(assert (=> d!1373851 (= (extractMap!1158 (toList!4211 lm!1477)) lt!1672387)))

(declare-fun b!4487502 () Bool)

(declare-fun addToMapMapFromBucket!633 (List!50602 ListMap!3473) ListMap!3473)

(assert (=> b!4487502 (= e!2794921 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (toList!4211 lm!1477))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun b!4487503 () Bool)

(assert (=> b!4487503 (= e!2794921 (ListMap!3474 Nil!50478))))

(assert (= (and d!1373851 c!764263) b!4487502))

(assert (= (and d!1373851 (not c!764263)) b!4487503))

(declare-fun m!5208877 () Bool)

(assert (=> d!1373851 m!5208877))

(declare-fun m!5208879 () Bool)

(assert (=> d!1373851 m!5208879))

(assert (=> b!4487502 m!5208705))

(assert (=> b!4487502 m!5208705))

(declare-fun m!5208881 () Bool)

(assert (=> b!4487502 m!5208881))

(assert (=> b!4487394 d!1373851))

(declare-fun bs!826492 () Bool)

(declare-fun d!1373857 () Bool)

(assert (= bs!826492 (and d!1373857 start!442056)))

(declare-fun lambda!166719 () Int)

(assert (=> bs!826492 (= lambda!166719 lambda!166699)))

(declare-fun bs!826493 () Bool)

(assert (= bs!826493 (and d!1373857 d!1373851)))

(assert (=> bs!826493 (= lambda!166719 lambda!166711)))

(assert (=> d!1373857 (not (contains!13113 (extractMap!1158 (toList!4211 lm!1477)) key!3287))))

(declare-fun lt!1672427 () Unit!90274)

(declare-fun choose!28893 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> d!1373857 (= lt!1672427 (choose!28893 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1373857 (forall!10122 (toList!4211 lm!1477) lambda!166719)))

(assert (=> d!1373857 (= (lemmaNotInItsHashBucketThenNotInMap!90 lm!1477 key!3287 hashF!1107) lt!1672427)))

(declare-fun bs!826495 () Bool)

(assert (= bs!826495 d!1373857))

(assert (=> bs!826495 m!5208719))

(assert (=> bs!826495 m!5208719))

(assert (=> bs!826495 m!5208721))

(declare-fun m!5208947 () Bool)

(assert (=> bs!826495 m!5208947))

(declare-fun m!5208949 () Bool)

(assert (=> bs!826495 m!5208949))

(assert (=> b!4487407 d!1373857))

(declare-fun bs!826496 () Bool)

(declare-fun d!1373873 () Bool)

(assert (= bs!826496 (and d!1373873 start!442056)))

(declare-fun lambda!166722 () Int)

(assert (=> bs!826496 (not (= lambda!166722 lambda!166699))))

(declare-fun bs!826497 () Bool)

(assert (= bs!826497 (and d!1373873 d!1373851)))

(assert (=> bs!826497 (not (= lambda!166722 lambda!166711))))

(declare-fun bs!826498 () Bool)

(assert (= bs!826498 (and d!1373873 d!1373857)))

(assert (=> bs!826498 (not (= lambda!166722 lambda!166719))))

(assert (=> d!1373873 true))

(assert (=> d!1373873 (= (allKeysSameHashInMap!1209 lm!1477 hashF!1107) (forall!10122 (toList!4211 lm!1477) lambda!166722))))

(declare-fun bs!826499 () Bool)

(assert (= bs!826499 d!1373873))

(declare-fun m!5208951 () Bool)

(assert (=> bs!826499 m!5208951))

(assert (=> b!4487396 d!1373873))

(declare-fun d!1373875 () Bool)

(declare-fun res!1864408 () Bool)

(declare-fun e!2794962 () Bool)

(assert (=> d!1373875 (=> res!1864408 e!2794962)))

(declare-fun e!2794960 () Bool)

(assert (=> d!1373875 (= res!1864408 e!2794960)))

(declare-fun res!1864409 () Bool)

(assert (=> d!1373875 (=> (not res!1864409) (not e!2794960))))

(assert (=> d!1373875 (= res!1864409 ((_ is Cons!50479) (t!357557 (toList!4211 lm!1477))))))

(assert (=> d!1373875 (= (containsKeyBiggerList!82 (t!357557 (toList!4211 lm!1477)) key!3287) e!2794962)))

(declare-fun b!4487558 () Bool)

(assert (=> b!4487558 (= e!2794960 (containsKey!1618 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(declare-fun b!4487559 () Bool)

(declare-fun e!2794961 () Bool)

(assert (=> b!4487559 (= e!2794962 e!2794961)))

(declare-fun res!1864410 () Bool)

(assert (=> b!4487559 (=> (not res!1864410) (not e!2794961))))

(assert (=> b!4487559 (= res!1864410 ((_ is Cons!50479) (t!357557 (toList!4211 lm!1477))))))

(declare-fun b!4487560 () Bool)

(assert (=> b!4487560 (= e!2794961 (containsKeyBiggerList!82 (t!357557 (t!357557 (toList!4211 lm!1477))) key!3287))))

(assert (= (and d!1373875 res!1864409) b!4487558))

(assert (= (and d!1373875 (not res!1864408)) b!4487559))

(assert (= (and b!4487559 res!1864410) b!4487560))

(declare-fun m!5208957 () Bool)

(assert (=> b!4487558 m!5208957))

(declare-fun m!5208959 () Bool)

(assert (=> b!4487560 m!5208959))

(assert (=> b!4487406 d!1373875))

(declare-fun d!1373879 () Bool)

(declare-fun res!1864411 () Bool)

(declare-fun e!2794965 () Bool)

(assert (=> d!1373879 (=> res!1864411 e!2794965)))

(declare-fun e!2794963 () Bool)

(assert (=> d!1373879 (= res!1864411 e!2794963)))

(declare-fun res!1864412 () Bool)

(assert (=> d!1373879 (=> (not res!1864412) (not e!2794963))))

(assert (=> d!1373879 (= res!1864412 ((_ is Cons!50479) (toList!4211 lt!1672305)))))

(assert (=> d!1373879 (= (containsKeyBiggerList!82 (toList!4211 lt!1672305) key!3287) e!2794965)))

(declare-fun b!4487561 () Bool)

(assert (=> b!4487561 (= e!2794963 (containsKey!1618 (_2!28716 (h!56280 (toList!4211 lt!1672305))) key!3287))))

(declare-fun b!4487562 () Bool)

(declare-fun e!2794964 () Bool)

(assert (=> b!4487562 (= e!2794965 e!2794964)))

(declare-fun res!1864413 () Bool)

(assert (=> b!4487562 (=> (not res!1864413) (not e!2794964))))

(assert (=> b!4487562 (= res!1864413 ((_ is Cons!50479) (toList!4211 lt!1672305)))))

(declare-fun b!4487563 () Bool)

(assert (=> b!4487563 (= e!2794964 (containsKeyBiggerList!82 (t!357557 (toList!4211 lt!1672305)) key!3287))))

(assert (= (and d!1373879 res!1864412) b!4487561))

(assert (= (and d!1373879 (not res!1864411)) b!4487562))

(assert (= (and b!4487562 res!1864413) b!4487563))

(declare-fun m!5208963 () Bool)

(assert (=> b!4487561 m!5208963))

(declare-fun m!5208965 () Bool)

(assert (=> b!4487563 m!5208965))

(assert (=> b!4487406 d!1373879))

(declare-fun bs!826527 () Bool)

(declare-fun d!1373883 () Bool)

(assert (= bs!826527 (and d!1373883 start!442056)))

(declare-fun lambda!166732 () Int)

(assert (=> bs!826527 (= lambda!166732 lambda!166699)))

(declare-fun bs!826528 () Bool)

(assert (= bs!826528 (and d!1373883 d!1373851)))

(assert (=> bs!826528 (= lambda!166732 lambda!166711)))

(declare-fun bs!826530 () Bool)

(assert (= bs!826530 (and d!1373883 d!1373857)))

(assert (=> bs!826530 (= lambda!166732 lambda!166719)))

(declare-fun bs!826531 () Bool)

(assert (= bs!826531 (and d!1373883 d!1373873)))

(assert (=> bs!826531 (not (= lambda!166732 lambda!166722))))

(assert (=> d!1373883 (containsKeyBiggerList!82 (toList!4211 lt!1672305) key!3287)))

(declare-fun lt!1672443 () Unit!90274)

(declare-fun choose!28894 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> d!1373883 (= lt!1672443 (choose!28894 lt!1672305 key!3287 hashF!1107))))

(assert (=> d!1373883 (forall!10122 (toList!4211 lt!1672305) lambda!166732)))

(assert (=> d!1373883 (= (lemmaInLongMapThenContainsKeyBiggerList!18 lt!1672305 key!3287 hashF!1107) lt!1672443)))

(declare-fun bs!826532 () Bool)

(assert (= bs!826532 d!1373883))

(assert (=> bs!826532 m!5208695))

(declare-fun m!5209005 () Bool)

(assert (=> bs!826532 m!5209005))

(declare-fun m!5209007 () Bool)

(assert (=> bs!826532 m!5209007))

(assert (=> b!4487406 d!1373883))

(declare-fun d!1373895 () Bool)

(declare-datatypes ((Option!11009 0))(
  ( (None!11008) (Some!11008 (v!44436 List!50602)) )
))
(declare-fun get!16475 (Option!11009) List!50602)

(declare-fun getValueByKey!989 (List!50603 (_ BitVec 64)) Option!11009)

(assert (=> d!1373895 (= (apply!11839 lt!1672305 hash!344) (get!16475 (getValueByKey!989 (toList!4211 lt!1672305) hash!344)))))

(declare-fun bs!826533 () Bool)

(assert (= bs!826533 d!1373895))

(declare-fun m!5209017 () Bool)

(assert (=> bs!826533 m!5209017))

(assert (=> bs!826533 m!5209017))

(declare-fun m!5209019 () Bool)

(assert (=> bs!826533 m!5209019))

(assert (=> b!4487403 d!1373895))

(declare-fun bs!826534 () Bool)

(declare-fun d!1373901 () Bool)

(assert (= bs!826534 (and d!1373901 d!1373857)))

(declare-fun lambda!166733 () Int)

(assert (=> bs!826534 (= lambda!166733 lambda!166719)))

(declare-fun bs!826535 () Bool)

(assert (= bs!826535 (and d!1373901 d!1373873)))

(assert (=> bs!826535 (not (= lambda!166733 lambda!166722))))

(declare-fun bs!826536 () Bool)

(assert (= bs!826536 (and d!1373901 d!1373851)))

(assert (=> bs!826536 (= lambda!166733 lambda!166711)))

(declare-fun bs!826537 () Bool)

(assert (= bs!826537 (and d!1373901 d!1373883)))

(assert (=> bs!826537 (= lambda!166733 lambda!166732)))

(declare-fun bs!826538 () Bool)

(assert (= bs!826538 (and d!1373901 start!442056)))

(assert (=> bs!826538 (= lambda!166733 lambda!166699)))

(declare-fun lt!1672444 () ListMap!3473)

(assert (=> d!1373901 (invariantList!965 (toList!4212 lt!1672444))))

(declare-fun e!2794987 () ListMap!3473)

(assert (=> d!1373901 (= lt!1672444 e!2794987)))

(declare-fun c!764282 () Bool)

(assert (=> d!1373901 (= c!764282 ((_ is Cons!50479) (toList!4211 lt!1672305)))))

(assert (=> d!1373901 (forall!10122 (toList!4211 lt!1672305) lambda!166733)))

(assert (=> d!1373901 (= (extractMap!1158 (toList!4211 lt!1672305)) lt!1672444)))

(declare-fun b!4487591 () Bool)

(assert (=> b!4487591 (= e!2794987 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (toList!4211 lt!1672305))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))))))

(declare-fun b!4487592 () Bool)

(assert (=> b!4487592 (= e!2794987 (ListMap!3474 Nil!50478))))

(assert (= (and d!1373901 c!764282) b!4487591))

(assert (= (and d!1373901 (not c!764282)) b!4487592))

(declare-fun m!5209021 () Bool)

(assert (=> d!1373901 m!5209021))

(declare-fun m!5209023 () Bool)

(assert (=> d!1373901 m!5209023))

(declare-fun m!5209025 () Bool)

(assert (=> b!4487591 m!5209025))

(assert (=> b!4487591 m!5209025))

(declare-fun m!5209027 () Bool)

(assert (=> b!4487591 m!5209027))

(assert (=> b!4487404 d!1373901))

(declare-fun b!4487593 () Bool)

(declare-fun e!2794993 () Unit!90274)

(declare-fun Unit!90287 () Unit!90274)

(assert (=> b!4487593 (= e!2794993 Unit!90287)))

(declare-fun b!4487594 () Bool)

(declare-fun e!2794990 () List!50605)

(assert (=> b!4487594 (= e!2794990 (getKeysList!413 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))

(declare-fun b!4487595 () Bool)

(assert (=> b!4487595 (= e!2794990 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun b!4487596 () Bool)

(declare-fun e!2794988 () Bool)

(declare-fun e!2794992 () Bool)

(assert (=> b!4487596 (= e!2794988 e!2794992)))

(declare-fun res!1864431 () Bool)

(assert (=> b!4487596 (=> (not res!1864431) (not e!2794992))))

(assert (=> b!4487596 (= res!1864431 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287)))))

(declare-fun bm!312255 () Bool)

(declare-fun call!312260 () Bool)

(assert (=> bm!312255 (= call!312260 (contains!13117 e!2794990 key!3287))))

(declare-fun c!764283 () Bool)

(declare-fun c!764285 () Bool)

(assert (=> bm!312255 (= c!764283 c!764285)))

(declare-fun b!4487597 () Bool)

(declare-fun e!2794989 () Unit!90274)

(assert (=> b!4487597 (= e!2794989 e!2794993)))

(declare-fun c!764284 () Bool)

(assert (=> b!4487597 (= c!764284 call!312260)))

(declare-fun b!4487598 () Bool)

(declare-fun lt!1672455 () Unit!90274)

(assert (=> b!4487598 (= e!2794989 lt!1672455)))

(declare-fun lt!1672450 () Unit!90274)

(assert (=> b!4487598 (= lt!1672450 (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (=> b!4487598 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(declare-fun lt!1672453 () Unit!90274)

(assert (=> b!4487598 (= lt!1672453 lt!1672450)))

(assert (=> b!4487598 (= lt!1672455 (lemmaInListThenGetKeysListContains!409 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (=> b!4487598 call!312260))

(declare-fun b!4487599 () Bool)

(assert (=> b!4487599 (= e!2794992 (contains!13117 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(declare-fun d!1373903 () Bool)

(assert (=> d!1373903 e!2794988))

(declare-fun res!1864433 () Bool)

(assert (=> d!1373903 (=> res!1864433 e!2794988)))

(declare-fun e!2794991 () Bool)

(assert (=> d!1373903 (= res!1864433 e!2794991)))

(declare-fun res!1864432 () Bool)

(assert (=> d!1373903 (=> (not res!1864432) (not e!2794991))))

(declare-fun lt!1672454 () Bool)

(assert (=> d!1373903 (= res!1864432 (not lt!1672454))))

(declare-fun lt!1672448 () Bool)

(assert (=> d!1373903 (= lt!1672454 lt!1672448)))

(declare-fun lt!1672451 () Unit!90274)

(assert (=> d!1373903 (= lt!1672451 e!2794989)))

(assert (=> d!1373903 (= c!764285 lt!1672448)))

(assert (=> d!1373903 (= lt!1672448 (containsKey!1621 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (=> d!1373903 (= (contains!13113 (extractMap!1158 (t!357557 (toList!4211 lm!1477))) key!3287) lt!1672454)))

(declare-fun b!4487600 () Bool)

(assert (=> b!4487600 false))

(declare-fun lt!1672452 () Unit!90274)

(declare-fun lt!1672449 () Unit!90274)

(assert (=> b!4487600 (= lt!1672452 lt!1672449)))

(assert (=> b!4487600 (containsKey!1621 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287)))

(assert (=> b!4487600 (= lt!1672449 (lemmaInGetKeysListThenContainsKey!412 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(declare-fun Unit!90289 () Unit!90274)

(assert (=> b!4487600 (= e!2794993 Unit!90289)))

(declare-fun b!4487601 () Bool)

(assert (=> b!4487601 (= e!2794991 (not (contains!13117 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287)))))

(assert (= (and d!1373903 c!764285) b!4487598))

(assert (= (and d!1373903 (not c!764285)) b!4487597))

(assert (= (and b!4487597 c!764284) b!4487600))

(assert (= (and b!4487597 (not c!764284)) b!4487593))

(assert (= (or b!4487598 b!4487597) bm!312255))

(assert (= (and bm!312255 c!764283) b!4487594))

(assert (= (and bm!312255 (not c!764283)) b!4487595))

(assert (= (and d!1373903 res!1864432) b!4487601))

(assert (= (and d!1373903 (not res!1864433)) b!4487596))

(assert (= (and b!4487596 res!1864431) b!4487599))

(declare-fun m!5209039 () Bool)

(assert (=> d!1373903 m!5209039))

(assert (=> b!4487595 m!5208705))

(declare-fun m!5209041 () Bool)

(assert (=> b!4487595 m!5209041))

(declare-fun m!5209043 () Bool)

(assert (=> bm!312255 m!5209043))

(declare-fun m!5209045 () Bool)

(assert (=> b!4487596 m!5209045))

(assert (=> b!4487596 m!5209045))

(declare-fun m!5209047 () Bool)

(assert (=> b!4487596 m!5209047))

(declare-fun m!5209049 () Bool)

(assert (=> b!4487598 m!5209049))

(assert (=> b!4487598 m!5209045))

(assert (=> b!4487598 m!5209045))

(assert (=> b!4487598 m!5209047))

(declare-fun m!5209051 () Bool)

(assert (=> b!4487598 m!5209051))

(declare-fun m!5209053 () Bool)

(assert (=> b!4487594 m!5209053))

(assert (=> b!4487599 m!5208705))

(assert (=> b!4487599 m!5209041))

(assert (=> b!4487599 m!5209041))

(declare-fun m!5209055 () Bool)

(assert (=> b!4487599 m!5209055))

(assert (=> b!4487601 m!5208705))

(assert (=> b!4487601 m!5209041))

(assert (=> b!4487601 m!5209041))

(assert (=> b!4487601 m!5209055))

(assert (=> b!4487600 m!5209039))

(declare-fun m!5209059 () Bool)

(assert (=> b!4487600 m!5209059))

(assert (=> b!4487404 d!1373903))

(declare-fun bs!826551 () Bool)

(declare-fun d!1373911 () Bool)

(assert (= bs!826551 (and d!1373911 d!1373857)))

(declare-fun lambda!166737 () Int)

(assert (=> bs!826551 (= lambda!166737 lambda!166719)))

(declare-fun bs!826552 () Bool)

(assert (= bs!826552 (and d!1373911 d!1373873)))

(assert (=> bs!826552 (not (= lambda!166737 lambda!166722))))

(declare-fun bs!826553 () Bool)

(assert (= bs!826553 (and d!1373911 d!1373851)))

(assert (=> bs!826553 (= lambda!166737 lambda!166711)))

(declare-fun bs!826554 () Bool)

(assert (= bs!826554 (and d!1373911 d!1373883)))

(assert (=> bs!826554 (= lambda!166737 lambda!166732)))

(declare-fun bs!826555 () Bool)

(assert (= bs!826555 (and d!1373911 d!1373901)))

(assert (=> bs!826555 (= lambda!166737 lambda!166733)))

(declare-fun bs!826556 () Bool)

(assert (= bs!826556 (and d!1373911 start!442056)))

(assert (=> bs!826556 (= lambda!166737 lambda!166699)))

(declare-fun lt!1672460 () ListMap!3473)

(assert (=> d!1373911 (invariantList!965 (toList!4212 lt!1672460))))

(declare-fun e!2794996 () ListMap!3473)

(assert (=> d!1373911 (= lt!1672460 e!2794996)))

(declare-fun c!764287 () Bool)

(assert (=> d!1373911 (= c!764287 ((_ is Cons!50479) (t!357557 (toList!4211 lm!1477))))))

(assert (=> d!1373911 (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166737)))

(assert (=> d!1373911 (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) lt!1672460)))

(declare-fun b!4487605 () Bool)

(assert (=> b!4487605 (= e!2794996 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))))))

(declare-fun b!4487606 () Bool)

(assert (=> b!4487606 (= e!2794996 (ListMap!3474 Nil!50478))))

(assert (= (and d!1373911 c!764287) b!4487605))

(assert (= (and d!1373911 (not c!764287)) b!4487606))

(declare-fun m!5209061 () Bool)

(assert (=> d!1373911 m!5209061))

(declare-fun m!5209063 () Bool)

(assert (=> d!1373911 m!5209063))

(declare-fun m!5209065 () Bool)

(assert (=> b!4487605 m!5209065))

(assert (=> b!4487605 m!5209065))

(declare-fun m!5209069 () Bool)

(assert (=> b!4487605 m!5209069))

(assert (=> b!4487404 d!1373911))

(declare-fun bs!826560 () Bool)

(declare-fun d!1373913 () Bool)

(assert (= bs!826560 (and d!1373913 d!1373857)))

(declare-fun lambda!166743 () Int)

(assert (=> bs!826560 (= lambda!166743 lambda!166719)))

(declare-fun bs!826561 () Bool)

(assert (= bs!826561 (and d!1373913 d!1373873)))

(assert (=> bs!826561 (not (= lambda!166743 lambda!166722))))

(declare-fun bs!826562 () Bool)

(assert (= bs!826562 (and d!1373913 d!1373851)))

(assert (=> bs!826562 (= lambda!166743 lambda!166711)))

(declare-fun bs!826563 () Bool)

(assert (= bs!826563 (and d!1373913 d!1373883)))

(assert (=> bs!826563 (= lambda!166743 lambda!166732)))

(declare-fun bs!826564 () Bool)

(assert (= bs!826564 (and d!1373913 d!1373911)))

(assert (=> bs!826564 (= lambda!166743 lambda!166737)))

(declare-fun bs!826565 () Bool)

(assert (= bs!826565 (and d!1373913 d!1373901)))

(assert (=> bs!826565 (= lambda!166743 lambda!166733)))

(declare-fun bs!826566 () Bool)

(assert (= bs!826566 (and d!1373913 start!442056)))

(assert (=> bs!826566 (= lambda!166743 lambda!166699)))

(assert (=> d!1373913 (contains!13113 (extractMap!1158 (toList!4211 lt!1672305)) key!3287)))

(declare-fun lt!1672463 () Unit!90274)

(declare-fun choose!28896 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> d!1373913 (= lt!1672463 (choose!28896 lt!1672305 key!3287 hashF!1107))))

(assert (=> d!1373913 (forall!10122 (toList!4211 lt!1672305) lambda!166743)))

(assert (=> d!1373913 (= (lemmaListContainsThenExtractedMapContains!72 lt!1672305 key!3287 hashF!1107) lt!1672463)))

(declare-fun bs!826567 () Bool)

(assert (= bs!826567 d!1373913))

(assert (=> bs!826567 m!5208701))

(assert (=> bs!826567 m!5208701))

(declare-fun m!5209075 () Bool)

(assert (=> bs!826567 m!5209075))

(declare-fun m!5209077 () Bool)

(assert (=> bs!826567 m!5209077))

(declare-fun m!5209079 () Bool)

(assert (=> bs!826567 m!5209079))

(assert (=> b!4487404 d!1373913))

(declare-fun b!4487621 () Bool)

(declare-fun e!2795008 () Unit!90274)

(declare-fun Unit!90290 () Unit!90274)

(assert (=> b!4487621 (= e!2795008 Unit!90290)))

(declare-fun b!4487622 () Bool)

(declare-fun e!2795005 () List!50605)

(assert (=> b!4487622 (= e!2795005 (getKeysList!413 (toList!4212 lt!1672303)))))

(declare-fun b!4487623 () Bool)

(assert (=> b!4487623 (= e!2795005 (keys!17480 lt!1672303))))

(declare-fun b!4487624 () Bool)

(declare-fun e!2795003 () Bool)

(declare-fun e!2795007 () Bool)

(assert (=> b!4487624 (= e!2795003 e!2795007)))

(declare-fun res!1864435 () Bool)

(assert (=> b!4487624 (=> (not res!1864435) (not e!2795007))))

(assert (=> b!4487624 (= res!1864435 (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672303) key!3287)))))

(declare-fun bm!312256 () Bool)

(declare-fun call!312261 () Bool)

(assert (=> bm!312256 (= call!312261 (contains!13117 e!2795005 key!3287))))

(declare-fun c!764288 () Bool)

(declare-fun c!764290 () Bool)

(assert (=> bm!312256 (= c!764288 c!764290)))

(declare-fun b!4487625 () Bool)

(declare-fun e!2795004 () Unit!90274)

(assert (=> b!4487625 (= e!2795004 e!2795008)))

(declare-fun c!764289 () Bool)

(assert (=> b!4487625 (= c!764289 call!312261)))

(declare-fun b!4487626 () Bool)

(declare-fun lt!1672471 () Unit!90274)

(assert (=> b!4487626 (= e!2795004 lt!1672471)))

(declare-fun lt!1672466 () Unit!90274)

(assert (=> b!4487626 (= lt!1672466 (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 lt!1672303) key!3287))))

(assert (=> b!4487626 (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))))

(declare-fun lt!1672469 () Unit!90274)

(assert (=> b!4487626 (= lt!1672469 lt!1672466)))

(assert (=> b!4487626 (= lt!1672471 (lemmaInListThenGetKeysListContains!409 (toList!4212 lt!1672303) key!3287))))

(assert (=> b!4487626 call!312261))

(declare-fun b!4487627 () Bool)

(assert (=> b!4487627 (= e!2795007 (contains!13117 (keys!17480 lt!1672303) key!3287))))

(declare-fun d!1373919 () Bool)

(assert (=> d!1373919 e!2795003))

(declare-fun res!1864437 () Bool)

(assert (=> d!1373919 (=> res!1864437 e!2795003)))

(declare-fun e!2795006 () Bool)

(assert (=> d!1373919 (= res!1864437 e!2795006)))

(declare-fun res!1864436 () Bool)

(assert (=> d!1373919 (=> (not res!1864436) (not e!2795006))))

(declare-fun lt!1672470 () Bool)

(assert (=> d!1373919 (= res!1864436 (not lt!1672470))))

(declare-fun lt!1672464 () Bool)

(assert (=> d!1373919 (= lt!1672470 lt!1672464)))

(declare-fun lt!1672467 () Unit!90274)

(assert (=> d!1373919 (= lt!1672467 e!2795004)))

(assert (=> d!1373919 (= c!764290 lt!1672464)))

(assert (=> d!1373919 (= lt!1672464 (containsKey!1621 (toList!4212 lt!1672303) key!3287))))

(assert (=> d!1373919 (= (contains!13113 lt!1672303 key!3287) lt!1672470)))

(declare-fun b!4487628 () Bool)

(assert (=> b!4487628 false))

(declare-fun lt!1672468 () Unit!90274)

(declare-fun lt!1672465 () Unit!90274)

(assert (=> b!4487628 (= lt!1672468 lt!1672465)))

(assert (=> b!4487628 (containsKey!1621 (toList!4212 lt!1672303) key!3287)))

(assert (=> b!4487628 (= lt!1672465 (lemmaInGetKeysListThenContainsKey!412 (toList!4212 lt!1672303) key!3287))))

(declare-fun Unit!90291 () Unit!90274)

(assert (=> b!4487628 (= e!2795008 Unit!90291)))

(declare-fun b!4487629 () Bool)

(assert (=> b!4487629 (= e!2795006 (not (contains!13117 (keys!17480 lt!1672303) key!3287)))))

(assert (= (and d!1373919 c!764290) b!4487626))

(assert (= (and d!1373919 (not c!764290)) b!4487625))

(assert (= (and b!4487625 c!764289) b!4487628))

(assert (= (and b!4487625 (not c!764289)) b!4487621))

(assert (= (or b!4487626 b!4487625) bm!312256))

(assert (= (and bm!312256 c!764288) b!4487622))

(assert (= (and bm!312256 (not c!764288)) b!4487623))

(assert (= (and d!1373919 res!1864436) b!4487629))

(assert (= (and d!1373919 (not res!1864437)) b!4487624))

(assert (= (and b!4487624 res!1864435) b!4487627))

(declare-fun m!5209081 () Bool)

(assert (=> d!1373919 m!5209081))

(declare-fun m!5209083 () Bool)

(assert (=> b!4487623 m!5209083))

(declare-fun m!5209085 () Bool)

(assert (=> bm!312256 m!5209085))

(declare-fun m!5209087 () Bool)

(assert (=> b!4487624 m!5209087))

(assert (=> b!4487624 m!5209087))

(declare-fun m!5209089 () Bool)

(assert (=> b!4487624 m!5209089))

(declare-fun m!5209091 () Bool)

(assert (=> b!4487626 m!5209091))

(assert (=> b!4487626 m!5209087))

(assert (=> b!4487626 m!5209087))

(assert (=> b!4487626 m!5209089))

(declare-fun m!5209093 () Bool)

(assert (=> b!4487626 m!5209093))

(declare-fun m!5209095 () Bool)

(assert (=> b!4487622 m!5209095))

(assert (=> b!4487627 m!5209083))

(assert (=> b!4487627 m!5209083))

(declare-fun m!5209097 () Bool)

(assert (=> b!4487627 m!5209097))

(assert (=> b!4487629 m!5209083))

(assert (=> b!4487629 m!5209083))

(assert (=> b!4487629 m!5209097))

(assert (=> b!4487628 m!5209081))

(declare-fun m!5209099 () Bool)

(assert (=> b!4487628 m!5209099))

(assert (=> b!4487404 d!1373919))

(declare-fun d!1373921 () Bool)

(assert (=> d!1373921 true))

(assert (=> d!1373921 true))

(declare-fun lambda!166746 () Int)

(declare-fun forall!10124 (List!50602 Int) Bool)

(assert (=> d!1373921 (= (allKeysSameHash!956 newBucket!178 hash!344 hashF!1107) (forall!10124 newBucket!178 lambda!166746))))

(declare-fun bs!826568 () Bool)

(assert (= bs!826568 d!1373921))

(declare-fun m!5209101 () Bool)

(assert (=> bs!826568 m!5209101))

(assert (=> b!4487400 d!1373921))

(declare-fun bs!826569 () Bool)

(declare-fun d!1373923 () Bool)

(assert (= bs!826569 (and d!1373923 d!1373857)))

(declare-fun lambda!166747 () Int)

(assert (=> bs!826569 (= lambda!166747 lambda!166719)))

(declare-fun bs!826570 () Bool)

(assert (= bs!826570 (and d!1373923 d!1373873)))

(assert (=> bs!826570 (not (= lambda!166747 lambda!166722))))

(declare-fun bs!826571 () Bool)

(assert (= bs!826571 (and d!1373923 d!1373851)))

(assert (=> bs!826571 (= lambda!166747 lambda!166711)))

(declare-fun bs!826572 () Bool)

(assert (= bs!826572 (and d!1373923 d!1373883)))

(assert (=> bs!826572 (= lambda!166747 lambda!166732)))

(declare-fun bs!826573 () Bool)

(assert (= bs!826573 (and d!1373923 d!1373911)))

(assert (=> bs!826573 (= lambda!166747 lambda!166737)))

(declare-fun bs!826574 () Bool)

(assert (= bs!826574 (and d!1373923 d!1373913)))

(assert (=> bs!826574 (= lambda!166747 lambda!166743)))

(declare-fun bs!826575 () Bool)

(assert (= bs!826575 (and d!1373923 d!1373901)))

(assert (=> bs!826575 (= lambda!166747 lambda!166733)))

(declare-fun bs!826576 () Bool)

(assert (= bs!826576 (and d!1373923 start!442056)))

(assert (=> bs!826576 (= lambda!166747 lambda!166699)))

(declare-fun lt!1672472 () ListMap!3473)

(assert (=> d!1373923 (invariantList!965 (toList!4212 lt!1672472))))

(declare-fun e!2795009 () ListMap!3473)

(assert (=> d!1373923 (= lt!1672472 e!2795009)))

(declare-fun c!764291 () Bool)

(assert (=> d!1373923 (= c!764291 ((_ is Cons!50479) (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))

(assert (=> d!1373923 (forall!10122 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))) lambda!166747)))

(assert (=> d!1373923 (= (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) lt!1672472)))

(declare-fun b!4487634 () Bool)

(assert (=> b!4487634 (= e!2795009 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))

(declare-fun b!4487635 () Bool)

(assert (=> b!4487635 (= e!2795009 (ListMap!3474 Nil!50478))))

(assert (= (and d!1373923 c!764291) b!4487634))

(assert (= (and d!1373923 (not c!764291)) b!4487635))

(declare-fun m!5209103 () Bool)

(assert (=> d!1373923 m!5209103))

(declare-fun m!5209105 () Bool)

(assert (=> d!1373923 m!5209105))

(declare-fun m!5209107 () Bool)

(assert (=> b!4487634 m!5209107))

(assert (=> b!4487634 m!5209107))

(declare-fun m!5209109 () Bool)

(assert (=> b!4487634 m!5209109))

(assert (=> b!4487410 d!1373923))

(declare-fun d!1373925 () Bool)

(declare-fun e!2795012 () Bool)

(assert (=> d!1373925 e!2795012))

(declare-fun res!1864442 () Bool)

(assert (=> d!1373925 (=> (not res!1864442) (not e!2795012))))

(declare-fun lt!1672483 () ListLongMap!2843)

(assert (=> d!1373925 (= res!1864442 (contains!13115 lt!1672483 (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun lt!1672481 () List!50603)

(assert (=> d!1373925 (= lt!1672483 (ListLongMap!2844 lt!1672481))))

(declare-fun lt!1672484 () Unit!90274)

(declare-fun lt!1672482 () Unit!90274)

(assert (=> d!1373925 (= lt!1672484 lt!1672482)))

(assert (=> d!1373925 (= (getValueByKey!989 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178))) (Some!11008 (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun lemmaContainsTupThenGetReturnValue!612 (List!50603 (_ BitVec 64) List!50602) Unit!90274)

(assert (=> d!1373925 (= lt!1672482 (lemmaContainsTupThenGetReturnValue!612 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun insertStrictlySorted!356 (List!50603 (_ BitVec 64) List!50602) List!50603)

(assert (=> d!1373925 (= lt!1672481 (insertStrictlySorted!356 (toList!4211 lt!1672305) (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))

(assert (=> d!1373925 (= (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)) lt!1672483)))

(declare-fun b!4487640 () Bool)

(declare-fun res!1864443 () Bool)

(assert (=> b!4487640 (=> (not res!1864443) (not e!2795012))))

(assert (=> b!4487640 (= res!1864443 (= (getValueByKey!989 (toList!4211 lt!1672483) (_1!28716 (tuple2!50845 hash!344 newBucket!178))) (Some!11008 (_2!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(declare-fun b!4487641 () Bool)

(assert (=> b!4487641 (= e!2795012 (contains!13114 (toList!4211 lt!1672483) (tuple2!50845 hash!344 newBucket!178)))))

(assert (= (and d!1373925 res!1864442) b!4487640))

(assert (= (and b!4487640 res!1864443) b!4487641))

(declare-fun m!5209111 () Bool)

(assert (=> d!1373925 m!5209111))

(declare-fun m!5209113 () Bool)

(assert (=> d!1373925 m!5209113))

(declare-fun m!5209115 () Bool)

(assert (=> d!1373925 m!5209115))

(declare-fun m!5209117 () Bool)

(assert (=> d!1373925 m!5209117))

(declare-fun m!5209119 () Bool)

(assert (=> b!4487640 m!5209119))

(declare-fun m!5209121 () Bool)

(assert (=> b!4487641 m!5209121))

(assert (=> b!4487410 d!1373925))

(declare-fun d!1373927 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8201 (List!50602) (InoxSet tuple2!50842))

(assert (=> d!1373927 (= (eq!559 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) (-!328 lt!1672303 key!3287)) (= (content!8201 (toList!4212 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (content!8201 (toList!4212 (-!328 lt!1672303 key!3287)))))))

(declare-fun bs!826577 () Bool)

(assert (= bs!826577 d!1373927))

(declare-fun m!5209123 () Bool)

(assert (=> bs!826577 m!5209123))

(declare-fun m!5209125 () Bool)

(assert (=> bs!826577 m!5209125))

(assert (=> b!4487410 d!1373927))

(declare-fun bs!826578 () Bool)

(declare-fun d!1373929 () Bool)

(assert (= bs!826578 (and d!1373929 d!1373857)))

(declare-fun lambda!166750 () Int)

(assert (=> bs!826578 (= lambda!166750 lambda!166719)))

(declare-fun bs!826579 () Bool)

(assert (= bs!826579 (and d!1373929 d!1373873)))

(assert (=> bs!826579 (not (= lambda!166750 lambda!166722))))

(declare-fun bs!826580 () Bool)

(assert (= bs!826580 (and d!1373929 d!1373851)))

(assert (=> bs!826580 (= lambda!166750 lambda!166711)))

(declare-fun bs!826581 () Bool)

(assert (= bs!826581 (and d!1373929 d!1373883)))

(assert (=> bs!826581 (= lambda!166750 lambda!166732)))

(declare-fun bs!826582 () Bool)

(assert (= bs!826582 (and d!1373929 d!1373913)))

(assert (=> bs!826582 (= lambda!166750 lambda!166743)))

(declare-fun bs!826583 () Bool)

(assert (= bs!826583 (and d!1373929 d!1373923)))

(assert (=> bs!826583 (= lambda!166750 lambda!166747)))

(declare-fun bs!826584 () Bool)

(assert (= bs!826584 (and d!1373929 d!1373911)))

(assert (=> bs!826584 (= lambda!166750 lambda!166737)))

(declare-fun bs!826585 () Bool)

(assert (= bs!826585 (and d!1373929 d!1373901)))

(assert (=> bs!826585 (= lambda!166750 lambda!166733)))

(declare-fun bs!826586 () Bool)

(assert (= bs!826586 (and d!1373929 start!442056)))

(assert (=> bs!826586 (= lambda!166750 lambda!166699)))

(assert (=> d!1373929 (eq!559 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) (-!328 (extractMap!1158 (toList!4211 lt!1672305)) key!3287))))

(declare-fun lt!1672487 () Unit!90274)

(declare-fun choose!28897 (ListLongMap!2843 (_ BitVec 64) List!50602 K!11895 Hashable!5497) Unit!90274)

(assert (=> d!1373929 (= lt!1672487 (choose!28897 lt!1672305 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1373929 (forall!10122 (toList!4211 lt!1672305) lambda!166750)))

(assert (=> d!1373929 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!87 lt!1672305 hash!344 newBucket!178 key!3287 hashF!1107) lt!1672487)))

(declare-fun bs!826587 () Bool)

(assert (= bs!826587 d!1373929))

(declare-fun m!5209127 () Bool)

(assert (=> bs!826587 m!5209127))

(assert (=> bs!826587 m!5208701))

(declare-fun m!5209129 () Bool)

(assert (=> bs!826587 m!5209129))

(assert (=> bs!826587 m!5208701))

(declare-fun m!5209131 () Bool)

(assert (=> bs!826587 m!5209131))

(assert (=> bs!826587 m!5208739))

(assert (=> bs!826587 m!5208733))

(assert (=> bs!826587 m!5208733))

(assert (=> bs!826587 m!5209129))

(declare-fun m!5209133 () Bool)

(assert (=> bs!826587 m!5209133))

(assert (=> b!4487410 d!1373929))

(declare-fun d!1373931 () Bool)

(declare-fun e!2795015 () Bool)

(assert (=> d!1373931 e!2795015))

(declare-fun res!1864446 () Bool)

(assert (=> d!1373931 (=> (not res!1864446) (not e!2795015))))

(declare-fun lt!1672490 () ListMap!3473)

(assert (=> d!1373931 (= res!1864446 (not (contains!13113 lt!1672490 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!89 (List!50602 K!11895) List!50602)

(assert (=> d!1373931 (= lt!1672490 (ListMap!3474 (removePresrvNoDuplicatedKeys!89 (toList!4212 lt!1672303) key!3287)))))

(assert (=> d!1373931 (= (-!328 lt!1672303 key!3287) lt!1672490)))

(declare-fun b!4487644 () Bool)

(declare-fun content!8202 (List!50605) (InoxSet K!11895))

(assert (=> b!4487644 (= e!2795015 (= ((_ map and) (content!8202 (keys!17480 lt!1672303)) ((_ map not) (store ((as const (Array K!11895 Bool)) false) key!3287 true))) (content!8202 (keys!17480 lt!1672490))))))

(assert (= (and d!1373931 res!1864446) b!4487644))

(declare-fun m!5209135 () Bool)

(assert (=> d!1373931 m!5209135))

(declare-fun m!5209137 () Bool)

(assert (=> d!1373931 m!5209137))

(declare-fun m!5209139 () Bool)

(assert (=> b!4487644 m!5209139))

(assert (=> b!4487644 m!5209139))

(declare-fun m!5209141 () Bool)

(assert (=> b!4487644 m!5209141))

(assert (=> b!4487644 m!5209083))

(declare-fun m!5209143 () Bool)

(assert (=> b!4487644 m!5209143))

(declare-fun m!5209145 () Bool)

(assert (=> b!4487644 m!5209145))

(assert (=> b!4487644 m!5209083))

(assert (=> b!4487410 d!1373931))

(declare-fun d!1373933 () Bool)

(declare-fun isEmpty!28553 (List!50603) Bool)

(assert (=> d!1373933 (= (isEmpty!28551 lm!1477) (isEmpty!28553 (toList!4211 lm!1477)))))

(declare-fun bs!826588 () Bool)

(assert (= bs!826588 d!1373933))

(declare-fun m!5209147 () Bool)

(assert (=> bs!826588 m!5209147))

(assert (=> b!4487410 d!1373933))

(declare-fun d!1373935 () Bool)

(declare-fun res!1864451 () Bool)

(declare-fun e!2795020 () Bool)

(assert (=> d!1373935 (=> res!1864451 e!2795020)))

(assert (=> d!1373935 (= res!1864451 (and ((_ is Cons!50478) lt!1672302) (= (_1!28715 (h!56279 lt!1672302)) key!3287)))))

(assert (=> d!1373935 (= (containsKey!1618 lt!1672302 key!3287) e!2795020)))

(declare-fun b!4487649 () Bool)

(declare-fun e!2795021 () Bool)

(assert (=> b!4487649 (= e!2795020 e!2795021)))

(declare-fun res!1864452 () Bool)

(assert (=> b!4487649 (=> (not res!1864452) (not e!2795021))))

(assert (=> b!4487649 (= res!1864452 ((_ is Cons!50478) lt!1672302))))

(declare-fun b!4487650 () Bool)

(assert (=> b!4487650 (= e!2795021 (containsKey!1618 (t!357556 lt!1672302) key!3287))))

(assert (= (and d!1373935 (not res!1864451)) b!4487649))

(assert (= (and b!4487649 res!1864452) b!4487650))

(declare-fun m!5209149 () Bool)

(assert (=> b!4487650 m!5209149))

(assert (=> b!4487408 d!1373935))

(declare-fun bs!826589 () Bool)

(declare-fun d!1373937 () Bool)

(assert (= bs!826589 (and d!1373937 d!1373873)))

(declare-fun lambda!166753 () Int)

(assert (=> bs!826589 (not (= lambda!166753 lambda!166722))))

(declare-fun bs!826590 () Bool)

(assert (= bs!826590 (and d!1373937 d!1373851)))

(assert (=> bs!826590 (= lambda!166753 lambda!166711)))

(declare-fun bs!826591 () Bool)

(assert (= bs!826591 (and d!1373937 d!1373883)))

(assert (=> bs!826591 (= lambda!166753 lambda!166732)))

(declare-fun bs!826592 () Bool)

(assert (= bs!826592 (and d!1373937 d!1373913)))

(assert (=> bs!826592 (= lambda!166753 lambda!166743)))

(declare-fun bs!826593 () Bool)

(assert (= bs!826593 (and d!1373937 d!1373857)))

(assert (=> bs!826593 (= lambda!166753 lambda!166719)))

(declare-fun bs!826594 () Bool)

(assert (= bs!826594 (and d!1373937 d!1373929)))

(assert (=> bs!826594 (= lambda!166753 lambda!166750)))

(declare-fun bs!826595 () Bool)

(assert (= bs!826595 (and d!1373937 d!1373923)))

(assert (=> bs!826595 (= lambda!166753 lambda!166747)))

(declare-fun bs!826596 () Bool)

(assert (= bs!826596 (and d!1373937 d!1373911)))

(assert (=> bs!826596 (= lambda!166753 lambda!166737)))

(declare-fun bs!826597 () Bool)

(assert (= bs!826597 (and d!1373937 d!1373901)))

(assert (=> bs!826597 (= lambda!166753 lambda!166733)))

(declare-fun bs!826598 () Bool)

(assert (= bs!826598 (and d!1373937 start!442056)))

(assert (=> bs!826598 (= lambda!166753 lambda!166699)))

(assert (=> d!1373937 (contains!13115 lm!1477 (hash!2613 hashF!1107 key!3287))))

(declare-fun lt!1672493 () Unit!90274)

(declare-fun choose!28898 (ListLongMap!2843 K!11895 Hashable!5497) Unit!90274)

(assert (=> d!1373937 (= lt!1672493 (choose!28898 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1373937 (forall!10122 (toList!4211 lm!1477) lambda!166753)))

(assert (=> d!1373937 (= (lemmaInGenMapThenLongMapContainsHash!176 lm!1477 key!3287 hashF!1107) lt!1672493)))

(declare-fun bs!826599 () Bool)

(assert (= bs!826599 d!1373937))

(assert (=> bs!826599 m!5208727))

(assert (=> bs!826599 m!5208727))

(declare-fun m!5209151 () Bool)

(assert (=> bs!826599 m!5209151))

(declare-fun m!5209153 () Bool)

(assert (=> bs!826599 m!5209153))

(declare-fun m!5209155 () Bool)

(assert (=> bs!826599 m!5209155))

(assert (=> b!4487397 d!1373937))

(declare-fun d!1373939 () Bool)

(assert (=> d!1373939 (= (apply!11839 lm!1477 hash!344) (get!16475 (getValueByKey!989 (toList!4211 lm!1477) hash!344)))))

(declare-fun bs!826600 () Bool)

(assert (= bs!826600 d!1373939))

(declare-fun m!5209157 () Bool)

(assert (=> bs!826600 m!5209157))

(assert (=> bs!826600 m!5209157))

(declare-fun m!5209159 () Bool)

(assert (=> bs!826600 m!5209159))

(assert (=> b!4487397 d!1373939))

(declare-fun d!1373941 () Bool)

(declare-fun lt!1672496 () Bool)

(declare-fun content!8203 (List!50603) (InoxSet tuple2!50844))

(assert (=> d!1373941 (= lt!1672496 (select (content!8203 (toList!4211 lm!1477)) lt!1672311))))

(declare-fun e!2795027 () Bool)

(assert (=> d!1373941 (= lt!1672496 e!2795027)))

(declare-fun res!1864457 () Bool)

(assert (=> d!1373941 (=> (not res!1864457) (not e!2795027))))

(assert (=> d!1373941 (= res!1864457 ((_ is Cons!50479) (toList!4211 lm!1477)))))

(assert (=> d!1373941 (= (contains!13114 (toList!4211 lm!1477) lt!1672311) lt!1672496)))

(declare-fun b!4487655 () Bool)

(declare-fun e!2795026 () Bool)

(assert (=> b!4487655 (= e!2795027 e!2795026)))

(declare-fun res!1864458 () Bool)

(assert (=> b!4487655 (=> res!1864458 e!2795026)))

(assert (=> b!4487655 (= res!1864458 (= (h!56280 (toList!4211 lm!1477)) lt!1672311))))

(declare-fun b!4487656 () Bool)

(assert (=> b!4487656 (= e!2795026 (contains!13114 (t!357557 (toList!4211 lm!1477)) lt!1672311))))

(assert (= (and d!1373941 res!1864457) b!4487655))

(assert (= (and b!4487655 (not res!1864458)) b!4487656))

(declare-fun m!5209161 () Bool)

(assert (=> d!1373941 m!5209161))

(declare-fun m!5209163 () Bool)

(assert (=> d!1373941 m!5209163))

(assert (=> b!4487656 m!5208713))

(assert (=> b!4487397 d!1373941))

(declare-fun d!1373943 () Bool)

(assert (=> d!1373943 (contains!13114 (toList!4211 lm!1477) (tuple2!50845 hash!344 lt!1672302))))

(declare-fun lt!1672499 () Unit!90274)

(declare-fun choose!28899 (List!50603 (_ BitVec 64) List!50602) Unit!90274)

(assert (=> d!1373943 (= lt!1672499 (choose!28899 (toList!4211 lm!1477) hash!344 lt!1672302))))

(declare-fun e!2795030 () Bool)

(assert (=> d!1373943 e!2795030))

(declare-fun res!1864461 () Bool)

(assert (=> d!1373943 (=> (not res!1864461) (not e!2795030))))

(declare-fun isStrictlySorted!379 (List!50603) Bool)

(assert (=> d!1373943 (= res!1864461 (isStrictlySorted!379 (toList!4211 lm!1477)))))

(assert (=> d!1373943 (= (lemmaGetValueByKeyImpliesContainsTuple!614 (toList!4211 lm!1477) hash!344 lt!1672302) lt!1672499)))

(declare-fun b!4487659 () Bool)

(assert (=> b!4487659 (= e!2795030 (= (getValueByKey!989 (toList!4211 lm!1477) hash!344) (Some!11008 lt!1672302)))))

(assert (= (and d!1373943 res!1864461) b!4487659))

(declare-fun m!5209165 () Bool)

(assert (=> d!1373943 m!5209165))

(declare-fun m!5209167 () Bool)

(assert (=> d!1373943 m!5209167))

(declare-fun m!5209169 () Bool)

(assert (=> d!1373943 m!5209169))

(assert (=> b!4487659 m!5209157))

(assert (=> b!4487397 d!1373943))

(declare-fun d!1373945 () Bool)

(declare-fun dynLambda!21071 (Int tuple2!50844) Bool)

(assert (=> d!1373945 (dynLambda!21071 lambda!166699 lt!1672311)))

(declare-fun lt!1672502 () Unit!90274)

(declare-fun choose!28900 (List!50603 Int tuple2!50844) Unit!90274)

(assert (=> d!1373945 (= lt!1672502 (choose!28900 (toList!4211 lm!1477) lambda!166699 lt!1672311))))

(declare-fun e!2795033 () Bool)

(assert (=> d!1373945 e!2795033))

(declare-fun res!1864464 () Bool)

(assert (=> d!1373945 (=> (not res!1864464) (not e!2795033))))

(assert (=> d!1373945 (= res!1864464 (forall!10122 (toList!4211 lm!1477) lambda!166699))))

(assert (=> d!1373945 (= (forallContained!2381 (toList!4211 lm!1477) lambda!166699 lt!1672311) lt!1672502)))

(declare-fun b!4487662 () Bool)

(assert (=> b!4487662 (= e!2795033 (contains!13114 (toList!4211 lm!1477) lt!1672311))))

(assert (= (and d!1373945 res!1864464) b!4487662))

(declare-fun b_lambda!150769 () Bool)

(assert (=> (not b_lambda!150769) (not d!1373945)))

(declare-fun m!5209171 () Bool)

(assert (=> d!1373945 m!5209171))

(declare-fun m!5209173 () Bool)

(assert (=> d!1373945 m!5209173))

(assert (=> d!1373945 m!5208715))

(assert (=> b!4487662 m!5208757))

(assert (=> b!4487397 d!1373945))

(declare-fun d!1373947 () Bool)

(declare-fun lt!1672505 () List!50602)

(assert (=> d!1373947 (not (containsKey!1618 lt!1672505 key!3287))))

(declare-fun e!2795039 () List!50602)

(assert (=> d!1373947 (= lt!1672505 e!2795039)))

(declare-fun c!764297 () Bool)

(assert (=> d!1373947 (= c!764297 (and ((_ is Cons!50478) lt!1672302) (= (_1!28715 (h!56279 lt!1672302)) key!3287)))))

(assert (=> d!1373947 (noDuplicateKeys!1102 lt!1672302)))

(assert (=> d!1373947 (= (removePairForKey!729 lt!1672302 key!3287) lt!1672505)))

(declare-fun b!4487671 () Bool)

(assert (=> b!4487671 (= e!2795039 (t!357556 lt!1672302))))

(declare-fun b!4487673 () Bool)

(declare-fun e!2795038 () List!50602)

(assert (=> b!4487673 (= e!2795038 (Cons!50478 (h!56279 lt!1672302) (removePairForKey!729 (t!357556 lt!1672302) key!3287)))))

(declare-fun b!4487672 () Bool)

(assert (=> b!4487672 (= e!2795039 e!2795038)))

(declare-fun c!764296 () Bool)

(assert (=> b!4487672 (= c!764296 ((_ is Cons!50478) lt!1672302))))

(declare-fun b!4487674 () Bool)

(assert (=> b!4487674 (= e!2795038 Nil!50478)))

(assert (= (and d!1373947 c!764297) b!4487671))

(assert (= (and d!1373947 (not c!764297)) b!4487672))

(assert (= (and b!4487672 c!764296) b!4487673))

(assert (= (and b!4487672 (not c!764296)) b!4487674))

(declare-fun m!5209175 () Bool)

(assert (=> d!1373947 m!5209175))

(declare-fun m!5209177 () Bool)

(assert (=> d!1373947 m!5209177))

(declare-fun m!5209179 () Bool)

(assert (=> b!4487673 m!5209179))

(assert (=> b!4487397 d!1373947))

(declare-fun d!1373949 () Bool)

(declare-fun e!2795045 () Bool)

(assert (=> d!1373949 e!2795045))

(declare-fun res!1864467 () Bool)

(assert (=> d!1373949 (=> res!1864467 e!2795045)))

(declare-fun lt!1672515 () Bool)

(assert (=> d!1373949 (= res!1864467 (not lt!1672515))))

(declare-fun lt!1672516 () Bool)

(assert (=> d!1373949 (= lt!1672515 lt!1672516)))

(declare-fun lt!1672514 () Unit!90274)

(declare-fun e!2795044 () Unit!90274)

(assert (=> d!1373949 (= lt!1672514 e!2795044)))

(declare-fun c!764300 () Bool)

(assert (=> d!1373949 (= c!764300 lt!1672516)))

(declare-fun containsKey!1622 (List!50603 (_ BitVec 64)) Bool)

(assert (=> d!1373949 (= lt!1672516 (containsKey!1622 (toList!4211 lm!1477) lt!1672307))))

(assert (=> d!1373949 (= (contains!13115 lm!1477 lt!1672307) lt!1672515)))

(declare-fun b!4487681 () Bool)

(declare-fun lt!1672517 () Unit!90274)

(assert (=> b!4487681 (= e!2795044 lt!1672517)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!893 (List!50603 (_ BitVec 64)) Unit!90274)

(assert (=> b!4487681 (= lt!1672517 (lemmaContainsKeyImpliesGetValueByKeyDefined!893 (toList!4211 lm!1477) lt!1672307))))

(declare-fun isDefined!8296 (Option!11009) Bool)

(assert (=> b!4487681 (isDefined!8296 (getValueByKey!989 (toList!4211 lm!1477) lt!1672307))))

(declare-fun b!4487682 () Bool)

(declare-fun Unit!90292 () Unit!90274)

(assert (=> b!4487682 (= e!2795044 Unit!90292)))

(declare-fun b!4487683 () Bool)

(assert (=> b!4487683 (= e!2795045 (isDefined!8296 (getValueByKey!989 (toList!4211 lm!1477) lt!1672307)))))

(assert (= (and d!1373949 c!764300) b!4487681))

(assert (= (and d!1373949 (not c!764300)) b!4487682))

(assert (= (and d!1373949 (not res!1864467)) b!4487683))

(declare-fun m!5209181 () Bool)

(assert (=> d!1373949 m!5209181))

(declare-fun m!5209183 () Bool)

(assert (=> b!4487681 m!5209183))

(declare-fun m!5209185 () Bool)

(assert (=> b!4487681 m!5209185))

(assert (=> b!4487681 m!5209185))

(declare-fun m!5209187 () Bool)

(assert (=> b!4487681 m!5209187))

(assert (=> b!4487683 m!5209185))

(assert (=> b!4487683 m!5209185))

(assert (=> b!4487683 m!5209187))

(assert (=> b!4487397 d!1373949))

(declare-fun d!1373951 () Bool)

(declare-fun lt!1672518 () Bool)

(assert (=> d!1373951 (= lt!1672518 (select (content!8203 (t!357557 (toList!4211 lm!1477))) lt!1672311))))

(declare-fun e!2795047 () Bool)

(assert (=> d!1373951 (= lt!1672518 e!2795047)))

(declare-fun res!1864468 () Bool)

(assert (=> d!1373951 (=> (not res!1864468) (not e!2795047))))

(assert (=> d!1373951 (= res!1864468 ((_ is Cons!50479) (t!357557 (toList!4211 lm!1477))))))

(assert (=> d!1373951 (= (contains!13114 (t!357557 (toList!4211 lm!1477)) lt!1672311) lt!1672518)))

(declare-fun b!4487684 () Bool)

(declare-fun e!2795046 () Bool)

(assert (=> b!4487684 (= e!2795047 e!2795046)))

(declare-fun res!1864469 () Bool)

(assert (=> b!4487684 (=> res!1864469 e!2795046)))

(assert (=> b!4487684 (= res!1864469 (= (h!56280 (t!357557 (toList!4211 lm!1477))) lt!1672311))))

(declare-fun b!4487685 () Bool)

(assert (=> b!4487685 (= e!2795046 (contains!13114 (t!357557 (t!357557 (toList!4211 lm!1477))) lt!1672311))))

(assert (= (and d!1373951 res!1864468) b!4487684))

(assert (= (and b!4487684 (not res!1864469)) b!4487685))

(declare-fun m!5209189 () Bool)

(assert (=> d!1373951 m!5209189))

(declare-fun m!5209191 () Bool)

(assert (=> d!1373951 m!5209191))

(declare-fun m!5209193 () Bool)

(assert (=> b!4487685 m!5209193))

(assert (=> b!4487399 d!1373951))

(declare-fun d!1373953 () Bool)

(declare-fun res!1864474 () Bool)

(declare-fun e!2795052 () Bool)

(assert (=> d!1373953 (=> res!1864474 e!2795052)))

(assert (=> d!1373953 (= res!1864474 ((_ is Nil!50479) (toList!4211 lm!1477)))))

(assert (=> d!1373953 (= (forall!10122 (toList!4211 lm!1477) lambda!166699) e!2795052)))

(declare-fun b!4487690 () Bool)

(declare-fun e!2795053 () Bool)

(assert (=> b!4487690 (= e!2795052 e!2795053)))

(declare-fun res!1864475 () Bool)

(assert (=> b!4487690 (=> (not res!1864475) (not e!2795053))))

(assert (=> b!4487690 (= res!1864475 (dynLambda!21071 lambda!166699 (h!56280 (toList!4211 lm!1477))))))

(declare-fun b!4487691 () Bool)

(assert (=> b!4487691 (= e!2795053 (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166699))))

(assert (= (and d!1373953 (not res!1864474)) b!4487690))

(assert (= (and b!4487690 res!1864475) b!4487691))

(declare-fun b_lambda!150771 () Bool)

(assert (=> (not b_lambda!150771) (not b!4487690)))

(declare-fun m!5209195 () Bool)

(assert (=> b!4487690 m!5209195))

(declare-fun m!5209197 () Bool)

(assert (=> b!4487691 m!5209197))

(assert (=> start!442056 d!1373953))

(declare-fun d!1373955 () Bool)

(assert (=> d!1373955 (= (inv!66079 lm!1477) (isStrictlySorted!379 (toList!4211 lm!1477)))))

(declare-fun bs!826601 () Bool)

(assert (= bs!826601 d!1373955))

(assert (=> bs!826601 m!5209169))

(assert (=> start!442056 d!1373955))

(declare-fun d!1373957 () Bool)

(declare-fun res!1864480 () Bool)

(declare-fun e!2795058 () Bool)

(assert (=> d!1373957 (=> res!1864480 e!2795058)))

(assert (=> d!1373957 (= res!1864480 (not ((_ is Cons!50478) newBucket!178)))))

(assert (=> d!1373957 (= (noDuplicateKeys!1102 newBucket!178) e!2795058)))

(declare-fun b!4487696 () Bool)

(declare-fun e!2795059 () Bool)

(assert (=> b!4487696 (= e!2795058 e!2795059)))

(declare-fun res!1864481 () Bool)

(assert (=> b!4487696 (=> (not res!1864481) (not e!2795059))))

(assert (=> b!4487696 (= res!1864481 (not (containsKey!1618 (t!357556 newBucket!178) (_1!28715 (h!56279 newBucket!178)))))))

(declare-fun b!4487697 () Bool)

(assert (=> b!4487697 (= e!2795059 (noDuplicateKeys!1102 (t!357556 newBucket!178)))))

(assert (= (and d!1373957 (not res!1864480)) b!4487696))

(assert (= (and b!4487696 res!1864481) b!4487697))

(declare-fun m!5209199 () Bool)

(assert (=> b!4487696 m!5209199))

(declare-fun m!5209201 () Bool)

(assert (=> b!4487697 m!5209201))

(assert (=> b!4487409 d!1373957))

(declare-fun d!1373959 () Bool)

(declare-fun e!2795061 () Bool)

(assert (=> d!1373959 e!2795061))

(declare-fun res!1864482 () Bool)

(assert (=> d!1373959 (=> res!1864482 e!2795061)))

(declare-fun lt!1672520 () Bool)

(assert (=> d!1373959 (= res!1864482 (not lt!1672520))))

(declare-fun lt!1672521 () Bool)

(assert (=> d!1373959 (= lt!1672520 lt!1672521)))

(declare-fun lt!1672519 () Unit!90274)

(declare-fun e!2795060 () Unit!90274)

(assert (=> d!1373959 (= lt!1672519 e!2795060)))

(declare-fun c!764301 () Bool)

(assert (=> d!1373959 (= c!764301 lt!1672521)))

(assert (=> d!1373959 (= lt!1672521 (containsKey!1622 (toList!4211 lt!1672305) hash!344))))

(assert (=> d!1373959 (= (contains!13115 lt!1672305 hash!344) lt!1672520)))

(declare-fun b!4487698 () Bool)

(declare-fun lt!1672522 () Unit!90274)

(assert (=> b!4487698 (= e!2795060 lt!1672522)))

(assert (=> b!4487698 (= lt!1672522 (lemmaContainsKeyImpliesGetValueByKeyDefined!893 (toList!4211 lt!1672305) hash!344))))

(assert (=> b!4487698 (isDefined!8296 (getValueByKey!989 (toList!4211 lt!1672305) hash!344))))

(declare-fun b!4487699 () Bool)

(declare-fun Unit!90293 () Unit!90274)

(assert (=> b!4487699 (= e!2795060 Unit!90293)))

(declare-fun b!4487700 () Bool)

(assert (=> b!4487700 (= e!2795061 (isDefined!8296 (getValueByKey!989 (toList!4211 lt!1672305) hash!344)))))

(assert (= (and d!1373959 c!764301) b!4487698))

(assert (= (and d!1373959 (not c!764301)) b!4487699))

(assert (= (and d!1373959 (not res!1864482)) b!4487700))

(declare-fun m!5209203 () Bool)

(assert (=> d!1373959 m!5209203))

(declare-fun m!5209205 () Bool)

(assert (=> b!4487698 m!5209205))

(assert (=> b!4487698 m!5209017))

(assert (=> b!4487698 m!5209017))

(declare-fun m!5209207 () Bool)

(assert (=> b!4487698 m!5209207))

(assert (=> b!4487700 m!5209017))

(assert (=> b!4487700 m!5209017))

(assert (=> b!4487700 m!5209207))

(assert (=> b!4487398 d!1373959))

(declare-fun d!1373961 () Bool)

(declare-fun tail!7627 (List!50603) List!50603)

(assert (=> d!1373961 (= (tail!7625 lm!1477) (ListLongMap!2844 (tail!7627 (toList!4211 lm!1477))))))

(declare-fun bs!826602 () Bool)

(assert (= bs!826602 d!1373961))

(declare-fun m!5209209 () Bool)

(assert (=> bs!826602 m!5209209))

(assert (=> b!4487398 d!1373961))

(declare-fun b!4487705 () Bool)

(declare-fun e!2795064 () Bool)

(declare-fun tp!1337131 () Bool)

(declare-fun tp!1337132 () Bool)

(assert (=> b!4487705 (= e!2795064 (and tp!1337131 tp!1337132))))

(assert (=> b!4487402 (= tp!1337116 e!2795064)))

(assert (= (and b!4487402 ((_ is Cons!50479) (toList!4211 lm!1477))) b!4487705))

(declare-fun tp!1337135 () Bool)

(declare-fun b!4487710 () Bool)

(declare-fun e!2795067 () Bool)

(assert (=> b!4487710 (= e!2795067 (and tp_is_empty!27685 tp_is_empty!27687 tp!1337135))))

(assert (=> b!4487393 (= tp!1337117 e!2795067)))

(assert (= (and b!4487393 ((_ is Cons!50478) (t!357556 newBucket!178))) b!4487710))

(declare-fun b_lambda!150773 () Bool)

(assert (= b_lambda!150771 (or start!442056 b_lambda!150773)))

(declare-fun bs!826603 () Bool)

(declare-fun d!1373963 () Bool)

(assert (= bs!826603 (and d!1373963 start!442056)))

(assert (=> bs!826603 (= (dynLambda!21071 lambda!166699 (h!56280 (toList!4211 lm!1477))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(declare-fun m!5209211 () Bool)

(assert (=> bs!826603 m!5209211))

(assert (=> b!4487690 d!1373963))

(declare-fun b_lambda!150775 () Bool)

(assert (= b_lambda!150769 (or start!442056 b_lambda!150775)))

(declare-fun bs!826604 () Bool)

(declare-fun d!1373965 () Bool)

(assert (= bs!826604 (and d!1373965 start!442056)))

(assert (=> bs!826604 (= (dynLambda!21071 lambda!166699 lt!1672311) (noDuplicateKeys!1102 (_2!28716 lt!1672311)))))

(declare-fun m!5209213 () Bool)

(assert (=> bs!826604 m!5209213))

(assert (=> d!1373945 d!1373965))

(check-sat (not b!4487482) (not b!4487650) (not d!1373827) (not d!1373911) (not b!4487488) (not b!4487624) (not b!4487502) (not d!1373883) (not d!1373895) (not d!1373921) (not b!4487641) (not d!1373873) (not b!4487691) (not b!4487591) (not b!4487634) tp_is_empty!27687 (not b!4487627) (not b!4487560) (not d!1373949) (not d!1373959) (not b!4487673) tp_is_empty!27685 (not d!1373943) (not b!4487697) (not d!1373925) (not d!1373961) (not d!1373923) (not b!4487595) (not b!4487705) (not d!1373955) (not b_lambda!150775) (not bm!312255) (not b!4487622) (not d!1373947) (not b!4487681) (not b!4487629) (not b!4487486) (not b!4487483) (not b!4487640) (not b!4487484) (not b!4487594) (not b!4487599) (not b!4487628) (not b!4487710) (not b!4487700) (not d!1373945) (not b!4487698) (not d!1373927) (not d!1373931) (not b!4487683) (not d!1373913) (not b!4487644) (not d!1373829) (not d!1373919) (not d!1373941) (not bs!826604) (not b!4487600) (not b!4487626) (not b!4487558) (not b!4487696) (not d!1373933) (not d!1373851) (not d!1373857) (not b!4487561) (not d!1373903) (not b!4487598) (not b!4487563) (not b!4487659) (not d!1373937) (not b!4487596) (not b!4487487) (not b!4487662) (not b!4487685) (not b!4487605) (not bs!826603) (not bm!312256) (not d!1373939) (not d!1373951) (not b!4487656) (not b!4487601) (not b!4487623) (not bm!312249) (not d!1373901) (not d!1373929) (not b_lambda!150773) (not b!4487489))
(check-sat)
(get-model)

(declare-fun d!1373975 () Bool)

(assert (=> d!1373975 (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))))

(declare-fun lt!1672531 () Unit!90274)

(declare-fun choose!28901 (List!50602 K!11895) Unit!90274)

(assert (=> d!1373975 (= lt!1672531 (choose!28901 (toList!4212 lt!1672303) key!3287))))

(assert (=> d!1373975 (invariantList!965 (toList!4212 lt!1672303))))

(assert (=> d!1373975 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 lt!1672303) key!3287) lt!1672531)))

(declare-fun bs!826605 () Bool)

(assert (= bs!826605 d!1373975))

(assert (=> bs!826605 m!5209087))

(assert (=> bs!826605 m!5209087))

(assert (=> bs!826605 m!5209089))

(declare-fun m!5209239 () Bool)

(assert (=> bs!826605 m!5209239))

(declare-fun m!5209241 () Bool)

(assert (=> bs!826605 m!5209241))

(assert (=> b!4487626 d!1373975))

(declare-fun d!1373977 () Bool)

(declare-fun isEmpty!28554 (Option!11008) Bool)

(assert (=> d!1373977 (= (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672303) key!3287)) (not (isEmpty!28554 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))))))

(declare-fun bs!826606 () Bool)

(assert (= bs!826606 d!1373977))

(assert (=> bs!826606 m!5209087))

(declare-fun m!5209243 () Bool)

(assert (=> bs!826606 m!5209243))

(assert (=> b!4487626 d!1373977))

(declare-fun d!1373979 () Bool)

(declare-fun c!764306 () Bool)

(assert (=> d!1373979 (= c!764306 (and ((_ is Cons!50478) (toList!4212 lt!1672303)) (= (_1!28715 (h!56279 (toList!4212 lt!1672303))) key!3287)))))

(declare-fun e!2795083 () Option!11008)

(assert (=> d!1373979 (= (getValueByKey!988 (toList!4212 lt!1672303) key!3287) e!2795083)))

(declare-fun b!4487739 () Bool)

(declare-fun e!2795084 () Option!11008)

(assert (=> b!4487739 (= e!2795083 e!2795084)))

(declare-fun c!764307 () Bool)

(assert (=> b!4487739 (= c!764307 (and ((_ is Cons!50478) (toList!4212 lt!1672303)) (not (= (_1!28715 (h!56279 (toList!4212 lt!1672303))) key!3287))))))

(declare-fun b!4487741 () Bool)

(assert (=> b!4487741 (= e!2795084 None!11007)))

(declare-fun b!4487740 () Bool)

(assert (=> b!4487740 (= e!2795084 (getValueByKey!988 (t!357556 (toList!4212 lt!1672303)) key!3287))))

(declare-fun b!4487738 () Bool)

(assert (=> b!4487738 (= e!2795083 (Some!11007 (_2!28715 (h!56279 (toList!4212 lt!1672303)))))))

(assert (= (and d!1373979 c!764306) b!4487738))

(assert (= (and d!1373979 (not c!764306)) b!4487739))

(assert (= (and b!4487739 c!764307) b!4487740))

(assert (= (and b!4487739 (not c!764307)) b!4487741))

(declare-fun m!5209245 () Bool)

(assert (=> b!4487740 m!5209245))

(assert (=> b!4487626 d!1373979))

(declare-fun d!1373981 () Bool)

(assert (=> d!1373981 (contains!13117 (getKeysList!413 (toList!4212 lt!1672303)) key!3287)))

(declare-fun lt!1672534 () Unit!90274)

(declare-fun choose!28902 (List!50602 K!11895) Unit!90274)

(assert (=> d!1373981 (= lt!1672534 (choose!28902 (toList!4212 lt!1672303) key!3287))))

(assert (=> d!1373981 (invariantList!965 (toList!4212 lt!1672303))))

(assert (=> d!1373981 (= (lemmaInListThenGetKeysListContains!409 (toList!4212 lt!1672303) key!3287) lt!1672534)))

(declare-fun bs!826607 () Bool)

(assert (= bs!826607 d!1373981))

(assert (=> bs!826607 m!5209095))

(assert (=> bs!826607 m!5209095))

(declare-fun m!5209247 () Bool)

(assert (=> bs!826607 m!5209247))

(declare-fun m!5209249 () Bool)

(assert (=> bs!826607 m!5209249))

(assert (=> bs!826607 m!5209241))

(assert (=> b!4487626 d!1373981))

(declare-fun d!1373983 () Bool)

(declare-fun choose!28903 (Hashable!5497 K!11895) (_ BitVec 64))

(assert (=> d!1373983 (= (hash!2616 hashF!1107 key!3287) (choose!28903 hashF!1107 key!3287))))

(declare-fun bs!826608 () Bool)

(assert (= bs!826608 d!1373983))

(declare-fun m!5209251 () Bool)

(assert (=> bs!826608 m!5209251))

(assert (=> d!1373827 d!1373983))

(declare-fun d!1373985 () Bool)

(declare-fun lt!1672537 () Bool)

(assert (=> d!1373985 (= lt!1672537 (select (content!8202 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(declare-fun e!2795089 () Bool)

(assert (=> d!1373985 (= lt!1672537 e!2795089)))

(declare-fun res!1864504 () Bool)

(assert (=> d!1373985 (=> (not res!1864504) (not e!2795089))))

(assert (=> d!1373985 (= res!1864504 ((_ is Cons!50481) (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))

(assert (=> d!1373985 (= (contains!13117 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287) lt!1672537)))

(declare-fun b!4487746 () Bool)

(declare-fun e!2795090 () Bool)

(assert (=> b!4487746 (= e!2795089 e!2795090)))

(declare-fun res!1864505 () Bool)

(assert (=> b!4487746 (=> res!1864505 e!2795090)))

(assert (=> b!4487746 (= res!1864505 (= (h!56284 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(declare-fun b!4487747 () Bool)

(assert (=> b!4487747 (= e!2795090 (contains!13117 (t!357559 (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(assert (= (and d!1373985 res!1864504) b!4487746))

(assert (= (and b!4487746 (not res!1864505)) b!4487747))

(assert (=> d!1373985 m!5209041))

(declare-fun m!5209253 () Bool)

(assert (=> d!1373985 m!5209253))

(declare-fun m!5209255 () Bool)

(assert (=> d!1373985 m!5209255))

(declare-fun m!5209257 () Bool)

(assert (=> b!4487747 m!5209257))

(assert (=> b!4487599 d!1373985))

(declare-fun b!4487755 () Bool)

(assert (=> b!4487755 true))

(declare-fun d!1373987 () Bool)

(declare-fun e!2795093 () Bool)

(assert (=> d!1373987 e!2795093))

(declare-fun res!1864514 () Bool)

(assert (=> d!1373987 (=> (not res!1864514) (not e!2795093))))

(declare-fun lt!1672540 () List!50605)

(declare-fun noDuplicate!716 (List!50605) Bool)

(assert (=> d!1373987 (= res!1864514 (noDuplicate!716 lt!1672540))))

(assert (=> d!1373987 (= lt!1672540 (getKeysList!413 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))

(assert (=> d!1373987 (= (keys!17480 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lt!1672540)))

(declare-fun b!4487754 () Bool)

(declare-fun res!1864513 () Bool)

(assert (=> b!4487754 (=> (not res!1864513) (not e!2795093))))

(declare-fun length!288 (List!50605) Int)

(declare-fun length!289 (List!50602) Int)

(assert (=> b!4487754 (= res!1864513 (= (length!288 lt!1672540) (length!289 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))))

(declare-fun res!1864512 () Bool)

(assert (=> b!4487755 (=> (not res!1864512) (not e!2795093))))

(declare-fun lambda!166764 () Int)

(declare-fun forall!10126 (List!50605 Int) Bool)

(assert (=> b!4487755 (= res!1864512 (forall!10126 lt!1672540 lambda!166764))))

(declare-fun b!4487756 () Bool)

(declare-fun lambda!166765 () Int)

(declare-fun map!11078 (List!50602 Int) List!50605)

(assert (=> b!4487756 (= e!2795093 (= (content!8202 lt!1672540) (content!8202 (map!11078 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lambda!166765))))))

(assert (= (and d!1373987 res!1864514) b!4487754))

(assert (= (and b!4487754 res!1864513) b!4487755))

(assert (= (and b!4487755 res!1864512) b!4487756))

(declare-fun m!5209259 () Bool)

(assert (=> d!1373987 m!5209259))

(assert (=> d!1373987 m!5209053))

(declare-fun m!5209261 () Bool)

(assert (=> b!4487754 m!5209261))

(declare-fun m!5209263 () Bool)

(assert (=> b!4487754 m!5209263))

(declare-fun m!5209265 () Bool)

(assert (=> b!4487755 m!5209265))

(declare-fun m!5209267 () Bool)

(assert (=> b!4487756 m!5209267))

(declare-fun m!5209269 () Bool)

(assert (=> b!4487756 m!5209269))

(assert (=> b!4487756 m!5209269))

(declare-fun m!5209271 () Bool)

(assert (=> b!4487756 m!5209271))

(assert (=> b!4487599 d!1373987))

(declare-fun bs!826635 () Bool)

(declare-fun b!4487848 () Bool)

(assert (= bs!826635 (and b!4487848 d!1373921)))

(declare-fun lambda!166831 () Int)

(assert (=> bs!826635 (not (= lambda!166831 lambda!166746))))

(assert (=> b!4487848 true))

(declare-fun bs!826636 () Bool)

(declare-fun b!4487850 () Bool)

(assert (= bs!826636 (and b!4487850 d!1373921)))

(declare-fun lambda!166832 () Int)

(assert (=> bs!826636 (not (= lambda!166832 lambda!166746))))

(declare-fun bs!826637 () Bool)

(assert (= bs!826637 (and b!4487850 b!4487848)))

(assert (=> bs!826637 (= lambda!166832 lambda!166831)))

(assert (=> b!4487850 true))

(declare-fun lambda!166833 () Int)

(assert (=> bs!826636 (not (= lambda!166833 lambda!166746))))

(declare-fun lt!1672655 () ListMap!3473)

(assert (=> bs!826637 (= (= lt!1672655 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166833 lambda!166831))))

(assert (=> b!4487850 (= (= lt!1672655 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166833 lambda!166832))))

(assert (=> b!4487850 true))

(declare-fun bs!826638 () Bool)

(declare-fun d!1373989 () Bool)

(assert (= bs!826638 (and d!1373989 d!1373921)))

(declare-fun lambda!166834 () Int)

(assert (=> bs!826638 (not (= lambda!166834 lambda!166746))))

(declare-fun bs!826639 () Bool)

(assert (= bs!826639 (and d!1373989 b!4487848)))

(declare-fun lt!1672670 () ListMap!3473)

(assert (=> bs!826639 (= (= lt!1672670 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166834 lambda!166831))))

(declare-fun bs!826640 () Bool)

(assert (= bs!826640 (and d!1373989 b!4487850)))

(assert (=> bs!826640 (= (= lt!1672670 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166834 lambda!166832))))

(assert (=> bs!826640 (= (= lt!1672670 lt!1672655) (= lambda!166834 lambda!166833))))

(assert (=> d!1373989 true))

(declare-fun call!312279 () Bool)

(declare-fun c!764330 () Bool)

(declare-fun bm!312272 () Bool)

(assert (=> bm!312272 (= call!312279 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (ite c!764330 lambda!166831 lambda!166833)))))

(declare-fun bm!312273 () Bool)

(declare-fun call!312277 () Unit!90274)

(declare-fun lemmaContainsAllItsOwnKeys!294 (ListMap!3473) Unit!90274)

(assert (=> bm!312273 (= call!312277 (lemmaContainsAllItsOwnKeys!294 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))))))

(declare-fun e!2795150 () ListMap!3473)

(assert (=> b!4487848 (= e!2795150 (extractMap!1158 (t!357557 (toList!4211 lt!1672305))))))

(declare-fun lt!1672667 () Unit!90274)

(assert (=> b!4487848 (= lt!1672667 call!312277)))

(declare-fun call!312278 () Bool)

(assert (=> b!4487848 call!312278))

(declare-fun lt!1672660 () Unit!90274)

(assert (=> b!4487848 (= lt!1672660 lt!1672667)))

(assert (=> b!4487848 call!312279))

(declare-fun lt!1672657 () Unit!90274)

(declare-fun Unit!90305 () Unit!90274)

(assert (=> b!4487848 (= lt!1672657 Unit!90305)))

(declare-fun bm!312274 () Bool)

(assert (=> bm!312274 (= call!312278 (forall!10124 (ite c!764330 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (_2!28716 (h!56280 (toList!4211 lt!1672305)))) (ite c!764330 lambda!166831 lambda!166833)))))

(declare-fun b!4487849 () Bool)

(declare-fun e!2795151 () Bool)

(assert (=> b!4487849 (= e!2795151 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) lambda!166833))))

(assert (=> b!4487850 (= e!2795150 lt!1672655)))

(declare-fun lt!1672654 () ListMap!3473)

(declare-fun +!1438 (ListMap!3473 tuple2!50842) ListMap!3473)

(assert (=> b!4487850 (= lt!1672654 (+!1438 (extractMap!1158 (t!357557 (toList!4211 lt!1672305))) (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305))))))))

(assert (=> b!4487850 (= lt!1672655 (addToMapMapFromBucket!633 (t!357556 (_2!28716 (h!56280 (toList!4211 lt!1672305)))) (+!1438 (extractMap!1158 (t!357557 (toList!4211 lt!1672305))) (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))))

(declare-fun lt!1672662 () Unit!90274)

(assert (=> b!4487850 (= lt!1672662 call!312277)))

(assert (=> b!4487850 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) lambda!166832)))

(declare-fun lt!1672659 () Unit!90274)

(assert (=> b!4487850 (= lt!1672659 lt!1672662)))

(assert (=> b!4487850 (forall!10124 (toList!4212 lt!1672654) lambda!166833)))

(declare-fun lt!1672673 () Unit!90274)

(declare-fun Unit!90306 () Unit!90274)

(assert (=> b!4487850 (= lt!1672673 Unit!90306)))

(assert (=> b!4487850 (forall!10124 (t!357556 (_2!28716 (h!56280 (toList!4211 lt!1672305)))) lambda!166833)))

(declare-fun lt!1672658 () Unit!90274)

(declare-fun Unit!90307 () Unit!90274)

(assert (=> b!4487850 (= lt!1672658 Unit!90307)))

(declare-fun lt!1672665 () Unit!90274)

(declare-fun Unit!90308 () Unit!90274)

(assert (=> b!4487850 (= lt!1672665 Unit!90308)))

(declare-fun lt!1672664 () Unit!90274)

(declare-fun forallContained!2383 (List!50602 Int tuple2!50842) Unit!90274)

(assert (=> b!4487850 (= lt!1672664 (forallContained!2383 (toList!4212 lt!1672654) lambda!166833 (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305))))))))

(assert (=> b!4487850 (contains!13113 lt!1672654 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305))))))))

(declare-fun lt!1672671 () Unit!90274)

(declare-fun Unit!90309 () Unit!90274)

(assert (=> b!4487850 (= lt!1672671 Unit!90309)))

(assert (=> b!4487850 (contains!13113 lt!1672655 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305))))))))

(declare-fun lt!1672661 () Unit!90274)

(declare-fun Unit!90310 () Unit!90274)

(assert (=> b!4487850 (= lt!1672661 Unit!90310)))

(assert (=> b!4487850 (forall!10124 (_2!28716 (h!56280 (toList!4211 lt!1672305))) lambda!166833)))

(declare-fun lt!1672656 () Unit!90274)

(declare-fun Unit!90311 () Unit!90274)

(assert (=> b!4487850 (= lt!1672656 Unit!90311)))

(assert (=> b!4487850 (forall!10124 (toList!4212 lt!1672654) lambda!166833)))

(declare-fun lt!1672666 () Unit!90274)

(declare-fun Unit!90312 () Unit!90274)

(assert (=> b!4487850 (= lt!1672666 Unit!90312)))

(declare-fun lt!1672653 () Unit!90274)

(declare-fun Unit!90313 () Unit!90274)

(assert (=> b!4487850 (= lt!1672653 Unit!90313)))

(declare-fun lt!1672672 () Unit!90274)

(declare-fun addForallContainsKeyThenBeforeAdding!294 (ListMap!3473 ListMap!3473 K!11895 V!12141) Unit!90274)

(assert (=> b!4487850 (= lt!1672672 (addForallContainsKeyThenBeforeAdding!294 (extractMap!1158 (t!357557 (toList!4211 lt!1672305))) lt!1672655 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305))))) (_2!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))))

(assert (=> b!4487850 call!312279))

(declare-fun lt!1672669 () Unit!90274)

(assert (=> b!4487850 (= lt!1672669 lt!1672672)))

(assert (=> b!4487850 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) lambda!166833)))

(declare-fun lt!1672668 () Unit!90274)

(declare-fun Unit!90314 () Unit!90274)

(assert (=> b!4487850 (= lt!1672668 Unit!90314)))

(declare-fun res!1864560 () Bool)

(assert (=> b!4487850 (= res!1864560 call!312278)))

(assert (=> b!4487850 (=> (not res!1864560) (not e!2795151))))

(assert (=> b!4487850 e!2795151))

(declare-fun lt!1672663 () Unit!90274)

(declare-fun Unit!90315 () Unit!90274)

(assert (=> b!4487850 (= lt!1672663 Unit!90315)))

(declare-fun b!4487851 () Bool)

(declare-fun e!2795152 () Bool)

(assert (=> b!4487851 (= e!2795152 (invariantList!965 (toList!4212 lt!1672670)))))

(declare-fun b!4487852 () Bool)

(declare-fun res!1864559 () Bool)

(assert (=> b!4487852 (=> (not res!1864559) (not e!2795152))))

(assert (=> b!4487852 (= res!1864559 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) lambda!166834))))

(assert (=> d!1373989 e!2795152))

(declare-fun res!1864558 () Bool)

(assert (=> d!1373989 (=> (not res!1864558) (not e!2795152))))

(assert (=> d!1373989 (= res!1864558 (forall!10124 (_2!28716 (h!56280 (toList!4211 lt!1672305))) lambda!166834))))

(assert (=> d!1373989 (= lt!1672670 e!2795150)))

(assert (=> d!1373989 (= c!764330 ((_ is Nil!50478) (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(assert (=> d!1373989 (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lt!1672305))))))

(assert (=> d!1373989 (= (addToMapMapFromBucket!633 (_2!28716 (h!56280 (toList!4211 lt!1672305))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) lt!1672670)))

(assert (= (and d!1373989 c!764330) b!4487848))

(assert (= (and d!1373989 (not c!764330)) b!4487850))

(assert (= (and b!4487850 res!1864560) b!4487849))

(assert (= (or b!4487848 b!4487850) bm!312274))

(assert (= (or b!4487848 b!4487850) bm!312272))

(assert (= (or b!4487848 b!4487850) bm!312273))

(assert (= (and d!1373989 res!1864558) b!4487852))

(assert (= (and b!4487852 res!1864559) b!4487851))

(declare-fun m!5209407 () Bool)

(assert (=> d!1373989 m!5209407))

(declare-fun m!5209409 () Bool)

(assert (=> d!1373989 m!5209409))

(declare-fun m!5209411 () Bool)

(assert (=> b!4487852 m!5209411))

(declare-fun m!5209413 () Bool)

(assert (=> bm!312272 m!5209413))

(declare-fun m!5209415 () Bool)

(assert (=> b!4487851 m!5209415))

(assert (=> bm!312273 m!5209025))

(declare-fun m!5209417 () Bool)

(assert (=> bm!312273 m!5209417))

(declare-fun m!5209419 () Bool)

(assert (=> bm!312274 m!5209419))

(declare-fun m!5209421 () Bool)

(assert (=> b!4487850 m!5209421))

(declare-fun m!5209423 () Bool)

(assert (=> b!4487850 m!5209423))

(declare-fun m!5209425 () Bool)

(assert (=> b!4487850 m!5209425))

(declare-fun m!5209427 () Bool)

(assert (=> b!4487850 m!5209427))

(assert (=> b!4487850 m!5209427))

(declare-fun m!5209429 () Bool)

(assert (=> b!4487850 m!5209429))

(declare-fun m!5209431 () Bool)

(assert (=> b!4487850 m!5209431))

(declare-fun m!5209433 () Bool)

(assert (=> b!4487850 m!5209433))

(declare-fun m!5209435 () Bool)

(assert (=> b!4487850 m!5209435))

(assert (=> b!4487850 m!5209025))

(declare-fun m!5209437 () Bool)

(assert (=> b!4487850 m!5209437))

(declare-fun m!5209439 () Bool)

(assert (=> b!4487850 m!5209439))

(assert (=> b!4487850 m!5209025))

(assert (=> b!4487850 m!5209433))

(declare-fun m!5209441 () Bool)

(assert (=> b!4487850 m!5209441))

(assert (=> b!4487849 m!5209439))

(assert (=> b!4487591 d!1373989))

(declare-fun bs!826641 () Bool)

(declare-fun d!1374039 () Bool)

(assert (= bs!826641 (and d!1374039 d!1373873)))

(declare-fun lambda!166841 () Int)

(assert (=> bs!826641 (not (= lambda!166841 lambda!166722))))

(declare-fun bs!826642 () Bool)

(assert (= bs!826642 (and d!1374039 d!1373851)))

(assert (=> bs!826642 (= lambda!166841 lambda!166711)))

(declare-fun bs!826643 () Bool)

(assert (= bs!826643 (and d!1374039 d!1373883)))

(assert (=> bs!826643 (= lambda!166841 lambda!166732)))

(declare-fun bs!826644 () Bool)

(assert (= bs!826644 (and d!1374039 d!1373937)))

(assert (=> bs!826644 (= lambda!166841 lambda!166753)))

(declare-fun bs!826645 () Bool)

(assert (= bs!826645 (and d!1374039 d!1373913)))

(assert (=> bs!826645 (= lambda!166841 lambda!166743)))

(declare-fun bs!826646 () Bool)

(assert (= bs!826646 (and d!1374039 d!1373857)))

(assert (=> bs!826646 (= lambda!166841 lambda!166719)))

(declare-fun bs!826647 () Bool)

(assert (= bs!826647 (and d!1374039 d!1373929)))

(assert (=> bs!826647 (= lambda!166841 lambda!166750)))

(declare-fun bs!826648 () Bool)

(assert (= bs!826648 (and d!1374039 d!1373923)))

(assert (=> bs!826648 (= lambda!166841 lambda!166747)))

(declare-fun bs!826649 () Bool)

(assert (= bs!826649 (and d!1374039 d!1373911)))

(assert (=> bs!826649 (= lambda!166841 lambda!166737)))

(declare-fun bs!826650 () Bool)

(assert (= bs!826650 (and d!1374039 d!1373901)))

(assert (=> bs!826650 (= lambda!166841 lambda!166733)))

(declare-fun bs!826651 () Bool)

(assert (= bs!826651 (and d!1374039 start!442056)))

(assert (=> bs!826651 (= lambda!166841 lambda!166699)))

(declare-fun lt!1672688 () ListMap!3473)

(assert (=> d!1374039 (invariantList!965 (toList!4212 lt!1672688))))

(declare-fun e!2795161 () ListMap!3473)

(assert (=> d!1374039 (= lt!1672688 e!2795161)))

(declare-fun c!764337 () Bool)

(assert (=> d!1374039 (= c!764337 ((_ is Cons!50479) (t!357557 (toList!4211 lt!1672305))))))

(assert (=> d!1374039 (forall!10122 (t!357557 (toList!4211 lt!1672305)) lambda!166841)))

(assert (=> d!1374039 (= (extractMap!1158 (t!357557 (toList!4211 lt!1672305))) lt!1672688)))

(declare-fun b!4487871 () Bool)

(assert (=> b!4487871 (= e!2795161 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (t!357557 (toList!4211 lt!1672305)))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lt!1672305))))))))

(declare-fun b!4487872 () Bool)

(assert (=> b!4487872 (= e!2795161 (ListMap!3474 Nil!50478))))

(assert (= (and d!1374039 c!764337) b!4487871))

(assert (= (and d!1374039 (not c!764337)) b!4487872))

(declare-fun m!5209443 () Bool)

(assert (=> d!1374039 m!5209443))

(declare-fun m!5209445 () Bool)

(assert (=> d!1374039 m!5209445))

(declare-fun m!5209447 () Bool)

(assert (=> b!4487871 m!5209447))

(assert (=> b!4487871 m!5209447))

(declare-fun m!5209449 () Bool)

(assert (=> b!4487871 m!5209449))

(assert (=> b!4487591 d!1374039))

(declare-fun d!1374041 () Bool)

(declare-fun noDuplicatedKeys!230 (List!50602) Bool)

(assert (=> d!1374041 (= (invariantList!965 (toList!4212 lt!1672387)) (noDuplicatedKeys!230 (toList!4212 lt!1672387)))))

(declare-fun bs!826652 () Bool)

(assert (= bs!826652 d!1374041))

(declare-fun m!5209451 () Bool)

(assert (=> bs!826652 m!5209451))

(assert (=> d!1373851 d!1374041))

(declare-fun d!1374043 () Bool)

(declare-fun res!1864567 () Bool)

(declare-fun e!2795162 () Bool)

(assert (=> d!1374043 (=> res!1864567 e!2795162)))

(assert (=> d!1374043 (= res!1864567 ((_ is Nil!50479) (toList!4211 lm!1477)))))

(assert (=> d!1374043 (= (forall!10122 (toList!4211 lm!1477) lambda!166711) e!2795162)))

(declare-fun b!4487875 () Bool)

(declare-fun e!2795163 () Bool)

(assert (=> b!4487875 (= e!2795162 e!2795163)))

(declare-fun res!1864568 () Bool)

(assert (=> b!4487875 (=> (not res!1864568) (not e!2795163))))

(assert (=> b!4487875 (= res!1864568 (dynLambda!21071 lambda!166711 (h!56280 (toList!4211 lm!1477))))))

(declare-fun b!4487876 () Bool)

(assert (=> b!4487876 (= e!2795163 (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166711))))

(assert (= (and d!1374043 (not res!1864567)) b!4487875))

(assert (= (and b!4487875 res!1864568) b!4487876))

(declare-fun b_lambda!150783 () Bool)

(assert (=> (not b_lambda!150783) (not b!4487875)))

(declare-fun m!5209453 () Bool)

(assert (=> b!4487875 m!5209453))

(declare-fun m!5209455 () Bool)

(assert (=> b!4487876 m!5209455))

(assert (=> d!1373851 d!1374043))

(declare-fun d!1374045 () Bool)

(declare-fun res!1864576 () Bool)

(declare-fun e!2795172 () Bool)

(assert (=> d!1374045 (=> res!1864576 e!2795172)))

(assert (=> d!1374045 (= res!1864576 (and ((_ is Cons!50478) (toList!4212 lt!1672303)) (= (_1!28715 (h!56279 (toList!4212 lt!1672303))) key!3287)))))

(assert (=> d!1374045 (= (containsKey!1621 (toList!4212 lt!1672303) key!3287) e!2795172)))

(declare-fun b!4487892 () Bool)

(declare-fun e!2795173 () Bool)

(assert (=> b!4487892 (= e!2795172 e!2795173)))

(declare-fun res!1864577 () Bool)

(assert (=> b!4487892 (=> (not res!1864577) (not e!2795173))))

(assert (=> b!4487892 (= res!1864577 ((_ is Cons!50478) (toList!4212 lt!1672303)))))

(declare-fun b!4487893 () Bool)

(assert (=> b!4487893 (= e!2795173 (containsKey!1621 (t!357556 (toList!4212 lt!1672303)) key!3287))))

(assert (= (and d!1374045 (not res!1864576)) b!4487892))

(assert (= (and b!4487892 res!1864577) b!4487893))

(declare-fun m!5209457 () Bool)

(assert (=> b!4487893 m!5209457))

(assert (=> b!4487628 d!1374045))

(declare-fun d!1374047 () Bool)

(assert (=> d!1374047 (containsKey!1621 (toList!4212 lt!1672303) key!3287)))

(declare-fun lt!1672698 () Unit!90274)

(declare-fun choose!28905 (List!50602 K!11895) Unit!90274)

(assert (=> d!1374047 (= lt!1672698 (choose!28905 (toList!4212 lt!1672303) key!3287))))

(assert (=> d!1374047 (invariantList!965 (toList!4212 lt!1672303))))

(assert (=> d!1374047 (= (lemmaInGetKeysListThenContainsKey!412 (toList!4212 lt!1672303) key!3287) lt!1672698)))

(declare-fun bs!826668 () Bool)

(assert (= bs!826668 d!1374047))

(assert (=> bs!826668 m!5209081))

(declare-fun m!5209459 () Bool)

(assert (=> bs!826668 m!5209459))

(assert (=> bs!826668 m!5209241))

(assert (=> b!4487628 d!1374047))

(declare-fun d!1374049 () Bool)

(declare-fun res!1864578 () Bool)

(declare-fun e!2795174 () Bool)

(assert (=> d!1374049 (=> res!1864578 e!2795174)))

(assert (=> d!1374049 (= res!1864578 ((_ is Nil!50479) (t!357557 (toList!4211 lm!1477))))))

(assert (=> d!1374049 (= (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166699) e!2795174)))

(declare-fun b!4487894 () Bool)

(declare-fun e!2795175 () Bool)

(assert (=> b!4487894 (= e!2795174 e!2795175)))

(declare-fun res!1864579 () Bool)

(assert (=> b!4487894 (=> (not res!1864579) (not e!2795175))))

(assert (=> b!4487894 (= res!1864579 (dynLambda!21071 lambda!166699 (h!56280 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun b!4487895 () Bool)

(assert (=> b!4487895 (= e!2795175 (forall!10122 (t!357557 (t!357557 (toList!4211 lm!1477))) lambda!166699))))

(assert (= (and d!1374049 (not res!1864578)) b!4487894))

(assert (= (and b!4487894 res!1864579) b!4487895))

(declare-fun b_lambda!150785 () Bool)

(assert (=> (not b_lambda!150785) (not b!4487894)))

(declare-fun m!5209461 () Bool)

(assert (=> b!4487894 m!5209461))

(declare-fun m!5209463 () Bool)

(assert (=> b!4487895 m!5209463))

(assert (=> b!4487691 d!1374049))

(assert (=> b!4487601 d!1373985))

(assert (=> b!4487601 d!1373987))

(declare-fun d!1374051 () Bool)

(assert (=> d!1374051 (= (get!16475 (getValueByKey!989 (toList!4211 lt!1672305) hash!344)) (v!44436 (getValueByKey!989 (toList!4211 lt!1672305) hash!344)))))

(assert (=> d!1373895 d!1374051))

(declare-fun b!4487911 () Bool)

(declare-fun e!2795185 () Option!11009)

(assert (=> b!4487911 (= e!2795185 (getValueByKey!989 (t!357557 (toList!4211 lt!1672305)) hash!344))))

(declare-fun d!1374053 () Bool)

(declare-fun c!764346 () Bool)

(assert (=> d!1374053 (= c!764346 (and ((_ is Cons!50479) (toList!4211 lt!1672305)) (= (_1!28716 (h!56280 (toList!4211 lt!1672305))) hash!344)))))

(declare-fun e!2795184 () Option!11009)

(assert (=> d!1374053 (= (getValueByKey!989 (toList!4211 lt!1672305) hash!344) e!2795184)))

(declare-fun b!4487912 () Bool)

(assert (=> b!4487912 (= e!2795185 None!11008)))

(declare-fun b!4487909 () Bool)

(assert (=> b!4487909 (= e!2795184 (Some!11008 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(declare-fun b!4487910 () Bool)

(assert (=> b!4487910 (= e!2795184 e!2795185)))

(declare-fun c!764347 () Bool)

(assert (=> b!4487910 (= c!764347 (and ((_ is Cons!50479) (toList!4211 lt!1672305)) (not (= (_1!28716 (h!56280 (toList!4211 lt!1672305))) hash!344))))))

(assert (= (and d!1374053 c!764346) b!4487909))

(assert (= (and d!1374053 (not c!764346)) b!4487910))

(assert (= (and b!4487910 c!764347) b!4487911))

(assert (= (and b!4487910 (not c!764347)) b!4487912))

(declare-fun m!5209503 () Bool)

(assert (=> b!4487911 m!5209503))

(assert (=> d!1373895 d!1374053))

(declare-fun d!1374063 () Bool)

(declare-fun lt!1672703 () Bool)

(assert (=> d!1374063 (= lt!1672703 (select (content!8202 e!2795005) key!3287))))

(declare-fun e!2795186 () Bool)

(assert (=> d!1374063 (= lt!1672703 e!2795186)))

(declare-fun res!1864583 () Bool)

(assert (=> d!1374063 (=> (not res!1864583) (not e!2795186))))

(assert (=> d!1374063 (= res!1864583 ((_ is Cons!50481) e!2795005))))

(assert (=> d!1374063 (= (contains!13117 e!2795005 key!3287) lt!1672703)))

(declare-fun b!4487913 () Bool)

(declare-fun e!2795187 () Bool)

(assert (=> b!4487913 (= e!2795186 e!2795187)))

(declare-fun res!1864584 () Bool)

(assert (=> b!4487913 (=> res!1864584 e!2795187)))

(assert (=> b!4487913 (= res!1864584 (= (h!56284 e!2795005) key!3287))))

(declare-fun b!4487914 () Bool)

(assert (=> b!4487914 (= e!2795187 (contains!13117 (t!357559 e!2795005) key!3287))))

(assert (= (and d!1374063 res!1864583) b!4487913))

(assert (= (and b!4487913 (not res!1864584)) b!4487914))

(declare-fun m!5209505 () Bool)

(assert (=> d!1374063 m!5209505))

(declare-fun m!5209507 () Bool)

(assert (=> d!1374063 m!5209507))

(declare-fun m!5209509 () Bool)

(assert (=> b!4487914 m!5209509))

(assert (=> bm!312256 d!1374063))

(assert (=> b!4487662 d!1373941))

(declare-fun lt!1672704 () Bool)

(declare-fun d!1374065 () Bool)

(assert (=> d!1374065 (= lt!1672704 (select (content!8203 (toList!4211 lt!1672483)) (tuple2!50845 hash!344 newBucket!178)))))

(declare-fun e!2795189 () Bool)

(assert (=> d!1374065 (= lt!1672704 e!2795189)))

(declare-fun res!1864585 () Bool)

(assert (=> d!1374065 (=> (not res!1864585) (not e!2795189))))

(assert (=> d!1374065 (= res!1864585 ((_ is Cons!50479) (toList!4211 lt!1672483)))))

(assert (=> d!1374065 (= (contains!13114 (toList!4211 lt!1672483) (tuple2!50845 hash!344 newBucket!178)) lt!1672704)))

(declare-fun b!4487915 () Bool)

(declare-fun e!2795188 () Bool)

(assert (=> b!4487915 (= e!2795189 e!2795188)))

(declare-fun res!1864586 () Bool)

(assert (=> b!4487915 (=> res!1864586 e!2795188)))

(assert (=> b!4487915 (= res!1864586 (= (h!56280 (toList!4211 lt!1672483)) (tuple2!50845 hash!344 newBucket!178)))))

(declare-fun b!4487916 () Bool)

(assert (=> b!4487916 (= e!2795188 (contains!13114 (t!357557 (toList!4211 lt!1672483)) (tuple2!50845 hash!344 newBucket!178)))))

(assert (= (and d!1374065 res!1864585) b!4487915))

(assert (= (and b!4487915 (not res!1864586)) b!4487916))

(declare-fun m!5209511 () Bool)

(assert (=> d!1374065 m!5209511))

(declare-fun m!5209513 () Bool)

(assert (=> d!1374065 m!5209513))

(declare-fun m!5209515 () Bool)

(assert (=> b!4487916 m!5209515))

(assert (=> b!4487641 d!1374065))

(declare-fun lt!1672705 () Bool)

(declare-fun d!1374067 () Bool)

(assert (=> d!1374067 (= lt!1672705 (select (content!8203 (toList!4211 lm!1477)) (tuple2!50845 hash!344 lt!1672302)))))

(declare-fun e!2795193 () Bool)

(assert (=> d!1374067 (= lt!1672705 e!2795193)))

(declare-fun res!1864587 () Bool)

(assert (=> d!1374067 (=> (not res!1864587) (not e!2795193))))

(assert (=> d!1374067 (= res!1864587 ((_ is Cons!50479) (toList!4211 lm!1477)))))

(assert (=> d!1374067 (= (contains!13114 (toList!4211 lm!1477) (tuple2!50845 hash!344 lt!1672302)) lt!1672705)))

(declare-fun b!4487921 () Bool)

(declare-fun e!2795192 () Bool)

(assert (=> b!4487921 (= e!2795193 e!2795192)))

(declare-fun res!1864588 () Bool)

(assert (=> b!4487921 (=> res!1864588 e!2795192)))

(assert (=> b!4487921 (= res!1864588 (= (h!56280 (toList!4211 lm!1477)) (tuple2!50845 hash!344 lt!1672302)))))

(declare-fun b!4487922 () Bool)

(assert (=> b!4487922 (= e!2795192 (contains!13114 (t!357557 (toList!4211 lm!1477)) (tuple2!50845 hash!344 lt!1672302)))))

(assert (= (and d!1374067 res!1864587) b!4487921))

(assert (= (and b!4487921 (not res!1864588)) b!4487922))

(assert (=> d!1374067 m!5209161))

(declare-fun m!5209517 () Bool)

(assert (=> d!1374067 m!5209517))

(declare-fun m!5209519 () Bool)

(assert (=> b!4487922 m!5209519))

(assert (=> d!1373943 d!1374067))

(declare-fun d!1374069 () Bool)

(assert (=> d!1374069 (contains!13114 (toList!4211 lm!1477) (tuple2!50845 hash!344 lt!1672302))))

(assert (=> d!1374069 true))

(declare-fun _$14!1045 () Unit!90274)

(assert (=> d!1374069 (= (choose!28899 (toList!4211 lm!1477) hash!344 lt!1672302) _$14!1045)))

(declare-fun bs!826670 () Bool)

(assert (= bs!826670 d!1374069))

(assert (=> bs!826670 m!5209165))

(assert (=> d!1373943 d!1374069))

(declare-fun d!1374073 () Bool)

(declare-fun res!1864599 () Bool)

(declare-fun e!2795205 () Bool)

(assert (=> d!1374073 (=> res!1864599 e!2795205)))

(assert (=> d!1374073 (= res!1864599 (or ((_ is Nil!50479) (toList!4211 lm!1477)) ((_ is Nil!50479) (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374073 (= (isStrictlySorted!379 (toList!4211 lm!1477)) e!2795205)))

(declare-fun b!4487935 () Bool)

(declare-fun e!2795206 () Bool)

(assert (=> b!4487935 (= e!2795205 e!2795206)))

(declare-fun res!1864600 () Bool)

(assert (=> b!4487935 (=> (not res!1864600) (not e!2795206))))

(assert (=> b!4487935 (= res!1864600 (bvslt (_1!28716 (h!56280 (toList!4211 lm!1477))) (_1!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))

(declare-fun b!4487936 () Bool)

(assert (=> b!4487936 (= e!2795206 (isStrictlySorted!379 (t!357557 (toList!4211 lm!1477))))))

(assert (= (and d!1374073 (not res!1864599)) b!4487935))

(assert (= (and b!4487935 res!1864600) b!4487936))

(declare-fun m!5209525 () Bool)

(assert (=> b!4487936 m!5209525))

(assert (=> d!1373943 d!1374073))

(declare-fun d!1374077 () Bool)

(declare-fun e!2795208 () Bool)

(assert (=> d!1374077 e!2795208))

(declare-fun res!1864601 () Bool)

(assert (=> d!1374077 (=> res!1864601 e!2795208)))

(declare-fun lt!1672707 () Bool)

(assert (=> d!1374077 (= res!1864601 (not lt!1672707))))

(declare-fun lt!1672708 () Bool)

(assert (=> d!1374077 (= lt!1672707 lt!1672708)))

(declare-fun lt!1672706 () Unit!90274)

(declare-fun e!2795207 () Unit!90274)

(assert (=> d!1374077 (= lt!1672706 e!2795207)))

(declare-fun c!764351 () Bool)

(assert (=> d!1374077 (= c!764351 lt!1672708)))

(assert (=> d!1374077 (= lt!1672708 (containsKey!1622 (toList!4211 lt!1672483) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(assert (=> d!1374077 (= (contains!13115 lt!1672483 (_1!28716 (tuple2!50845 hash!344 newBucket!178))) lt!1672707)))

(declare-fun b!4487937 () Bool)

(declare-fun lt!1672709 () Unit!90274)

(assert (=> b!4487937 (= e!2795207 lt!1672709)))

(assert (=> b!4487937 (= lt!1672709 (lemmaContainsKeyImpliesGetValueByKeyDefined!893 (toList!4211 lt!1672483) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(assert (=> b!4487937 (isDefined!8296 (getValueByKey!989 (toList!4211 lt!1672483) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun b!4487938 () Bool)

(declare-fun Unit!90320 () Unit!90274)

(assert (=> b!4487938 (= e!2795207 Unit!90320)))

(declare-fun b!4487939 () Bool)

(assert (=> b!4487939 (= e!2795208 (isDefined!8296 (getValueByKey!989 (toList!4211 lt!1672483) (_1!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(assert (= (and d!1374077 c!764351) b!4487937))

(assert (= (and d!1374077 (not c!764351)) b!4487938))

(assert (= (and d!1374077 (not res!1864601)) b!4487939))

(declare-fun m!5209529 () Bool)

(assert (=> d!1374077 m!5209529))

(declare-fun m!5209531 () Bool)

(assert (=> b!4487937 m!5209531))

(assert (=> b!4487937 m!5209119))

(assert (=> b!4487937 m!5209119))

(declare-fun m!5209533 () Bool)

(assert (=> b!4487937 m!5209533))

(assert (=> b!4487939 m!5209119))

(assert (=> b!4487939 m!5209119))

(assert (=> b!4487939 m!5209533))

(assert (=> d!1373925 d!1374077))

(declare-fun e!2795210 () Option!11009)

(declare-fun b!4487942 () Bool)

(assert (=> b!4487942 (= e!2795210 (getValueByKey!989 (t!357557 lt!1672481) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun d!1374081 () Bool)

(declare-fun c!764352 () Bool)

(assert (=> d!1374081 (= c!764352 (and ((_ is Cons!50479) lt!1672481) (= (_1!28716 (h!56280 lt!1672481)) (_1!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(declare-fun e!2795209 () Option!11009)

(assert (=> d!1374081 (= (getValueByKey!989 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178))) e!2795209)))

(declare-fun b!4487943 () Bool)

(assert (=> b!4487943 (= e!2795210 None!11008)))

(declare-fun b!4487940 () Bool)

(assert (=> b!4487940 (= e!2795209 (Some!11008 (_2!28716 (h!56280 lt!1672481))))))

(declare-fun b!4487941 () Bool)

(assert (=> b!4487941 (= e!2795209 e!2795210)))

(declare-fun c!764353 () Bool)

(assert (=> b!4487941 (= c!764353 (and ((_ is Cons!50479) lt!1672481) (not (= (_1!28716 (h!56280 lt!1672481)) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))))

(assert (= (and d!1374081 c!764352) b!4487940))

(assert (= (and d!1374081 (not c!764352)) b!4487941))

(assert (= (and b!4487941 c!764353) b!4487942))

(assert (= (and b!4487941 (not c!764353)) b!4487943))

(declare-fun m!5209535 () Bool)

(assert (=> b!4487942 m!5209535))

(assert (=> d!1373925 d!1374081))

(declare-fun d!1374083 () Bool)

(assert (=> d!1374083 (= (getValueByKey!989 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178))) (Some!11008 (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun lt!1672714 () Unit!90274)

(declare-fun choose!28906 (List!50603 (_ BitVec 64) List!50602) Unit!90274)

(assert (=> d!1374083 (= lt!1672714 (choose!28906 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun e!2795223 () Bool)

(assert (=> d!1374083 e!2795223))

(declare-fun res!1864610 () Bool)

(assert (=> d!1374083 (=> (not res!1864610) (not e!2795223))))

(assert (=> d!1374083 (= res!1864610 (isStrictlySorted!379 lt!1672481))))

(assert (=> d!1374083 (= (lemmaContainsTupThenGetReturnValue!612 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))) lt!1672714)))

(declare-fun b!4487964 () Bool)

(declare-fun res!1864611 () Bool)

(assert (=> b!4487964 (=> (not res!1864611) (not e!2795223))))

(assert (=> b!4487964 (= res!1864611 (containsKey!1622 lt!1672481 (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun b!4487965 () Bool)

(assert (=> b!4487965 (= e!2795223 (contains!13114 lt!1672481 (tuple2!50845 (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(assert (= (and d!1374083 res!1864610) b!4487964))

(assert (= (and b!4487964 res!1864611) b!4487965))

(assert (=> d!1374083 m!5209113))

(declare-fun m!5209549 () Bool)

(assert (=> d!1374083 m!5209549))

(declare-fun m!5209551 () Bool)

(assert (=> d!1374083 m!5209551))

(declare-fun m!5209553 () Bool)

(assert (=> b!4487964 m!5209553))

(declare-fun m!5209555 () Bool)

(assert (=> b!4487965 m!5209555))

(assert (=> d!1373925 d!1374083))

(declare-fun b!4488005 () Bool)

(declare-fun e!2795254 () List!50603)

(declare-fun e!2795251 () List!50603)

(assert (=> b!4488005 (= e!2795254 e!2795251)))

(declare-fun c!764372 () Bool)

(assert (=> b!4488005 (= c!764372 (and ((_ is Cons!50479) (toList!4211 lt!1672305)) (= (_1!28716 (h!56280 (toList!4211 lt!1672305))) (_1!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(declare-fun bm!312284 () Bool)

(declare-fun call!312289 () List!50603)

(declare-fun call!312291 () List!50603)

(assert (=> bm!312284 (= call!312289 call!312291)))

(declare-fun bm!312285 () Bool)

(declare-fun call!312290 () List!50603)

(assert (=> bm!312285 (= call!312291 call!312290)))

(declare-fun b!4488006 () Bool)

(declare-fun e!2795252 () List!50603)

(assert (=> b!4488006 (= e!2795252 (insertStrictlySorted!356 (t!357557 (toList!4211 lt!1672305)) (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun c!764370 () Bool)

(declare-fun b!4488007 () Bool)

(assert (=> b!4488007 (= c!764370 (and ((_ is Cons!50479) (toList!4211 lt!1672305)) (bvsgt (_1!28716 (h!56280 (toList!4211 lt!1672305))) (_1!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(declare-fun e!2795253 () List!50603)

(assert (=> b!4488007 (= e!2795251 e!2795253)))

(declare-fun b!4488008 () Bool)

(declare-fun lt!1672747 () List!50603)

(declare-fun e!2795255 () Bool)

(assert (=> b!4488008 (= e!2795255 (contains!13114 lt!1672747 (tuple2!50845 (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(declare-fun d!1374091 () Bool)

(assert (=> d!1374091 e!2795255))

(declare-fun res!1864633 () Bool)

(assert (=> d!1374091 (=> (not res!1864633) (not e!2795255))))

(assert (=> d!1374091 (= res!1864633 (isStrictlySorted!379 lt!1672747))))

(assert (=> d!1374091 (= lt!1672747 e!2795254)))

(declare-fun c!764371 () Bool)

(assert (=> d!1374091 (= c!764371 (and ((_ is Cons!50479) (toList!4211 lt!1672305)) (bvslt (_1!28716 (h!56280 (toList!4211 lt!1672305))) (_1!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(assert (=> d!1374091 (isStrictlySorted!379 (toList!4211 lt!1672305))))

(assert (=> d!1374091 (= (insertStrictlySorted!356 (toList!4211 lt!1672305) (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))) lt!1672747)))

(declare-fun b!4488009 () Bool)

(assert (=> b!4488009 (= e!2795252 (ite c!764372 (t!357557 (toList!4211 lt!1672305)) (ite c!764370 (Cons!50479 (h!56280 (toList!4211 lt!1672305)) (t!357557 (toList!4211 lt!1672305))) Nil!50479)))))

(declare-fun b!4488010 () Bool)

(assert (=> b!4488010 (= e!2795253 call!312289)))

(declare-fun b!4488011 () Bool)

(assert (=> b!4488011 (= e!2795251 call!312291)))

(declare-fun b!4488012 () Bool)

(assert (=> b!4488012 (= e!2795254 call!312290)))

(declare-fun b!4488013 () Bool)

(declare-fun res!1864634 () Bool)

(assert (=> b!4488013 (=> (not res!1864634) (not e!2795255))))

(assert (=> b!4488013 (= res!1864634 (containsKey!1622 lt!1672747 (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun b!4488014 () Bool)

(assert (=> b!4488014 (= e!2795253 call!312289)))

(declare-fun bm!312286 () Bool)

(declare-fun $colon$colon!867 (List!50603 tuple2!50844) List!50603)

(assert (=> bm!312286 (= call!312290 ($colon$colon!867 e!2795252 (ite c!764371 (h!56280 (toList!4211 lt!1672305)) (tuple2!50845 (_1!28716 (tuple2!50845 hash!344 newBucket!178)) (_2!28716 (tuple2!50845 hash!344 newBucket!178))))))))

(declare-fun c!764369 () Bool)

(assert (=> bm!312286 (= c!764369 c!764371)))

(assert (= (and d!1374091 c!764371) b!4488012))

(assert (= (and d!1374091 (not c!764371)) b!4488005))

(assert (= (and b!4488005 c!764372) b!4488011))

(assert (= (and b!4488005 (not c!764372)) b!4488007))

(assert (= (and b!4488007 c!764370) b!4488014))

(assert (= (and b!4488007 (not c!764370)) b!4488010))

(assert (= (or b!4488014 b!4488010) bm!312284))

(assert (= (or b!4488011 bm!312284) bm!312285))

(assert (= (or b!4488012 bm!312285) bm!312286))

(assert (= (and bm!312286 c!764369) b!4488006))

(assert (= (and bm!312286 (not c!764369)) b!4488009))

(assert (= (and d!1374091 res!1864633) b!4488013))

(assert (= (and b!4488013 res!1864634) b!4488008))

(declare-fun m!5209585 () Bool)

(assert (=> b!4488006 m!5209585))

(declare-fun m!5209587 () Bool)

(assert (=> bm!312286 m!5209587))

(declare-fun m!5209589 () Bool)

(assert (=> b!4488013 m!5209589))

(declare-fun m!5209591 () Bool)

(assert (=> b!4488008 m!5209591))

(declare-fun m!5209593 () Bool)

(assert (=> d!1374091 m!5209593))

(declare-fun m!5209595 () Bool)

(assert (=> d!1374091 m!5209595))

(assert (=> d!1373925 d!1374091))

(declare-fun d!1374113 () Bool)

(assert (=> d!1374113 (isDefined!8296 (getValueByKey!989 (toList!4211 lm!1477) lt!1672307))))

(declare-fun lt!1672750 () Unit!90274)

(declare-fun choose!28907 (List!50603 (_ BitVec 64)) Unit!90274)

(assert (=> d!1374113 (= lt!1672750 (choose!28907 (toList!4211 lm!1477) lt!1672307))))

(declare-fun e!2795258 () Bool)

(assert (=> d!1374113 e!2795258))

(declare-fun res!1864637 () Bool)

(assert (=> d!1374113 (=> (not res!1864637) (not e!2795258))))

(assert (=> d!1374113 (= res!1864637 (isStrictlySorted!379 (toList!4211 lm!1477)))))

(assert (=> d!1374113 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!893 (toList!4211 lm!1477) lt!1672307) lt!1672750)))

(declare-fun b!4488017 () Bool)

(assert (=> b!4488017 (= e!2795258 (containsKey!1622 (toList!4211 lm!1477) lt!1672307))))

(assert (= (and d!1374113 res!1864637) b!4488017))

(assert (=> d!1374113 m!5209185))

(assert (=> d!1374113 m!5209185))

(assert (=> d!1374113 m!5209187))

(declare-fun m!5209603 () Bool)

(assert (=> d!1374113 m!5209603))

(assert (=> d!1374113 m!5209169))

(assert (=> b!4488017 m!5209181))

(assert (=> b!4487681 d!1374113))

(declare-fun d!1374115 () Bool)

(declare-fun isEmpty!28556 (Option!11009) Bool)

(assert (=> d!1374115 (= (isDefined!8296 (getValueByKey!989 (toList!4211 lm!1477) lt!1672307)) (not (isEmpty!28556 (getValueByKey!989 (toList!4211 lm!1477) lt!1672307))))))

(declare-fun bs!826691 () Bool)

(assert (= bs!826691 d!1374115))

(assert (=> bs!826691 m!5209185))

(declare-fun m!5209633 () Bool)

(assert (=> bs!826691 m!5209633))

(assert (=> b!4487681 d!1374115))

(declare-fun b!4488022 () Bool)

(declare-fun e!2795261 () Option!11009)

(assert (=> b!4488022 (= e!2795261 (getValueByKey!989 (t!357557 (toList!4211 lm!1477)) lt!1672307))))

(declare-fun d!1374119 () Bool)

(declare-fun c!764374 () Bool)

(assert (=> d!1374119 (= c!764374 (and ((_ is Cons!50479) (toList!4211 lm!1477)) (= (_1!28716 (h!56280 (toList!4211 lm!1477))) lt!1672307)))))

(declare-fun e!2795260 () Option!11009)

(assert (=> d!1374119 (= (getValueByKey!989 (toList!4211 lm!1477) lt!1672307) e!2795260)))

(declare-fun b!4488023 () Bool)

(assert (=> b!4488023 (= e!2795261 None!11008)))

(declare-fun b!4488020 () Bool)

(assert (=> b!4488020 (= e!2795260 (Some!11008 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(declare-fun b!4488021 () Bool)

(assert (=> b!4488021 (= e!2795260 e!2795261)))

(declare-fun c!764375 () Bool)

(assert (=> b!4488021 (= c!764375 (and ((_ is Cons!50479) (toList!4211 lm!1477)) (not (= (_1!28716 (h!56280 (toList!4211 lm!1477))) lt!1672307))))))

(assert (= (and d!1374119 c!764374) b!4488020))

(assert (= (and d!1374119 (not c!764374)) b!4488021))

(assert (= (and b!4488021 c!764375) b!4488022))

(assert (= (and b!4488021 (not c!764375)) b!4488023))

(declare-fun m!5209635 () Bool)

(assert (=> b!4488022 m!5209635))

(assert (=> b!4487681 d!1374119))

(declare-fun b!4488026 () Bool)

(declare-fun e!2795263 () Option!11009)

(assert (=> b!4488026 (= e!2795263 (getValueByKey!989 (t!357557 (toList!4211 lm!1477)) hash!344))))

(declare-fun d!1374121 () Bool)

(declare-fun c!764376 () Bool)

(assert (=> d!1374121 (= c!764376 (and ((_ is Cons!50479) (toList!4211 lm!1477)) (= (_1!28716 (h!56280 (toList!4211 lm!1477))) hash!344)))))

(declare-fun e!2795262 () Option!11009)

(assert (=> d!1374121 (= (getValueByKey!989 (toList!4211 lm!1477) hash!344) e!2795262)))

(declare-fun b!4488027 () Bool)

(assert (=> b!4488027 (= e!2795263 None!11008)))

(declare-fun b!4488024 () Bool)

(assert (=> b!4488024 (= e!2795262 (Some!11008 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(declare-fun b!4488025 () Bool)

(assert (=> b!4488025 (= e!2795262 e!2795263)))

(declare-fun c!764377 () Bool)

(assert (=> b!4488025 (= c!764377 (and ((_ is Cons!50479) (toList!4211 lm!1477)) (not (= (_1!28716 (h!56280 (toList!4211 lm!1477))) hash!344))))))

(assert (= (and d!1374121 c!764376) b!4488024))

(assert (= (and d!1374121 (not c!764376)) b!4488025))

(assert (= (and b!4488025 c!764377) b!4488026))

(assert (= (and b!4488025 (not c!764377)) b!4488027))

(declare-fun m!5209637 () Bool)

(assert (=> b!4488026 m!5209637))

(assert (=> b!4487659 d!1374121))

(declare-fun d!1374123 () Bool)

(declare-fun lt!1672752 () Bool)

(assert (=> d!1374123 (= lt!1672752 (select (content!8202 (keys!17480 (extractMap!1158 (toList!4211 lm!1477)))) key!3287))))

(declare-fun e!2795264 () Bool)

(assert (=> d!1374123 (= lt!1672752 e!2795264)))

(declare-fun res!1864638 () Bool)

(assert (=> d!1374123 (=> (not res!1864638) (not e!2795264))))

(assert (=> d!1374123 (= res!1864638 ((_ is Cons!50481) (keys!17480 (extractMap!1158 (toList!4211 lm!1477)))))))

(assert (=> d!1374123 (= (contains!13117 (keys!17480 (extractMap!1158 (toList!4211 lm!1477))) key!3287) lt!1672752)))

(declare-fun b!4488028 () Bool)

(declare-fun e!2795265 () Bool)

(assert (=> b!4488028 (= e!2795264 e!2795265)))

(declare-fun res!1864639 () Bool)

(assert (=> b!4488028 (=> res!1864639 e!2795265)))

(assert (=> b!4488028 (= res!1864639 (= (h!56284 (keys!17480 (extractMap!1158 (toList!4211 lm!1477)))) key!3287))))

(declare-fun b!4488029 () Bool)

(assert (=> b!4488029 (= e!2795265 (contains!13117 (t!357559 (keys!17480 (extractMap!1158 (toList!4211 lm!1477)))) key!3287))))

(assert (= (and d!1374123 res!1864638) b!4488028))

(assert (= (and b!4488028 (not res!1864639)) b!4488029))

(assert (=> d!1374123 m!5208845))

(declare-fun m!5209639 () Bool)

(assert (=> d!1374123 m!5209639))

(declare-fun m!5209641 () Bool)

(assert (=> d!1374123 m!5209641))

(declare-fun m!5209643 () Bool)

(assert (=> b!4488029 m!5209643))

(assert (=> b!4487487 d!1374123))

(declare-fun bs!826704 () Bool)

(declare-fun b!4488031 () Bool)

(assert (= bs!826704 (and b!4488031 b!4487755)))

(declare-fun lambda!166853 () Int)

(assert (=> bs!826704 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166853 lambda!166764))))

(assert (=> b!4488031 true))

(declare-fun bs!826705 () Bool)

(declare-fun b!4488032 () Bool)

(assert (= bs!826705 (and b!4488032 b!4487756)))

(declare-fun lambda!166854 () Int)

(assert (=> bs!826705 (= lambda!166854 lambda!166765)))

(declare-fun d!1374125 () Bool)

(declare-fun e!2795266 () Bool)

(assert (=> d!1374125 e!2795266))

(declare-fun res!1864642 () Bool)

(assert (=> d!1374125 (=> (not res!1864642) (not e!2795266))))

(declare-fun lt!1672753 () List!50605)

(assert (=> d!1374125 (= res!1864642 (noDuplicate!716 lt!1672753))))

(assert (=> d!1374125 (= lt!1672753 (getKeysList!413 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))

(assert (=> d!1374125 (= (keys!17480 (extractMap!1158 (toList!4211 lm!1477))) lt!1672753)))

(declare-fun b!4488030 () Bool)

(declare-fun res!1864641 () Bool)

(assert (=> b!4488030 (=> (not res!1864641) (not e!2795266))))

(assert (=> b!4488030 (= res!1864641 (= (length!288 lt!1672753) (length!289 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))))

(declare-fun res!1864640 () Bool)

(assert (=> b!4488031 (=> (not res!1864640) (not e!2795266))))

(assert (=> b!4488031 (= res!1864640 (forall!10126 lt!1672753 lambda!166853))))

(assert (=> b!4488032 (= e!2795266 (= (content!8202 lt!1672753) (content!8202 (map!11078 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) lambda!166854))))))

(assert (= (and d!1374125 res!1864642) b!4488030))

(assert (= (and b!4488030 res!1864641) b!4488031))

(assert (= (and b!4488031 res!1864640) b!4488032))

(declare-fun m!5209659 () Bool)

(assert (=> d!1374125 m!5209659))

(assert (=> d!1374125 m!5208857))

(declare-fun m!5209661 () Bool)

(assert (=> b!4488030 m!5209661))

(declare-fun m!5209663 () Bool)

(assert (=> b!4488030 m!5209663))

(declare-fun m!5209665 () Bool)

(assert (=> b!4488031 m!5209665))

(declare-fun m!5209667 () Bool)

(assert (=> b!4488032 m!5209667))

(declare-fun m!5209669 () Bool)

(assert (=> b!4488032 m!5209669))

(assert (=> b!4488032 m!5209669))

(declare-fun m!5209671 () Bool)

(assert (=> b!4488032 m!5209671))

(assert (=> b!4487487 d!1374125))

(declare-fun bs!826712 () Bool)

(declare-fun b!4488038 () Bool)

(assert (= bs!826712 (and b!4488038 b!4487850)))

(declare-fun lambda!166856 () Int)

(assert (=> bs!826712 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) lt!1672655) (= lambda!166856 lambda!166833))))

(declare-fun bs!826715 () Bool)

(assert (= bs!826715 (and b!4488038 b!4487848)))

(assert (=> bs!826715 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166856 lambda!166831))))

(assert (=> bs!826712 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166856 lambda!166832))))

(declare-fun bs!826718 () Bool)

(assert (= bs!826718 (and b!4488038 d!1373989)))

(assert (=> bs!826718 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) lt!1672670) (= lambda!166856 lambda!166834))))

(declare-fun bs!826719 () Bool)

(assert (= bs!826719 (and b!4488038 d!1373921)))

(assert (=> bs!826719 (not (= lambda!166856 lambda!166746))))

(assert (=> b!4488038 true))

(declare-fun bs!826720 () Bool)

(declare-fun b!4488040 () Bool)

(assert (= bs!826720 (and b!4488040 b!4487850)))

(declare-fun lambda!166858 () Int)

(assert (=> bs!826720 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) lt!1672655) (= lambda!166858 lambda!166833))))

(assert (=> bs!826720 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166858 lambda!166832))))

(declare-fun bs!826721 () Bool)

(assert (= bs!826721 (and b!4488040 d!1373989)))

(assert (=> bs!826721 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) lt!1672670) (= lambda!166858 lambda!166834))))

(declare-fun bs!826722 () Bool)

(assert (= bs!826722 (and b!4488040 d!1373921)))

(assert (=> bs!826722 (not (= lambda!166858 lambda!166746))))

(declare-fun bs!826723 () Bool)

(assert (= bs!826723 (and b!4488040 b!4488038)))

(assert (=> bs!826723 (= lambda!166858 lambda!166856)))

(declare-fun bs!826724 () Bool)

(assert (= bs!826724 (and b!4488040 b!4487848)))

(assert (=> bs!826724 (= (= (extractMap!1158 (t!357557 (toList!4211 lm!1477))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166858 lambda!166831))))

(assert (=> b!4488040 true))

(declare-fun lambda!166859 () Int)

(declare-fun lt!1672758 () ListMap!3473)

(assert (=> bs!826720 (= (= lt!1672758 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166859 lambda!166832))))

(assert (=> bs!826721 (= (= lt!1672758 lt!1672670) (= lambda!166859 lambda!166834))))

(assert (=> bs!826722 (not (= lambda!166859 lambda!166746))))

(assert (=> bs!826720 (= (= lt!1672758 lt!1672655) (= lambda!166859 lambda!166833))))

(assert (=> b!4488040 (= (= lt!1672758 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166859 lambda!166858))))

(assert (=> bs!826723 (= (= lt!1672758 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166859 lambda!166856))))

(assert (=> bs!826724 (= (= lt!1672758 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166859 lambda!166831))))

(assert (=> b!4488040 true))

(declare-fun bs!826726 () Bool)

(declare-fun d!1374131 () Bool)

(assert (= bs!826726 (and d!1374131 b!4488040)))

(declare-fun lt!1672773 () ListMap!3473)

(declare-fun lambda!166860 () Int)

(assert (=> bs!826726 (= (= lt!1672773 lt!1672758) (= lambda!166860 lambda!166859))))

(declare-fun bs!826727 () Bool)

(assert (= bs!826727 (and d!1374131 b!4487850)))

(assert (=> bs!826727 (= (= lt!1672773 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166860 lambda!166832))))

(declare-fun bs!826728 () Bool)

(assert (= bs!826728 (and d!1374131 d!1373989)))

(assert (=> bs!826728 (= (= lt!1672773 lt!1672670) (= lambda!166860 lambda!166834))))

(declare-fun bs!826729 () Bool)

(assert (= bs!826729 (and d!1374131 d!1373921)))

(assert (=> bs!826729 (not (= lambda!166860 lambda!166746))))

(assert (=> bs!826727 (= (= lt!1672773 lt!1672655) (= lambda!166860 lambda!166833))))

(assert (=> bs!826726 (= (= lt!1672773 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166860 lambda!166858))))

(declare-fun bs!826730 () Bool)

(assert (= bs!826730 (and d!1374131 b!4488038)))

(assert (=> bs!826730 (= (= lt!1672773 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166860 lambda!166856))))

(declare-fun bs!826731 () Bool)

(assert (= bs!826731 (and d!1374131 b!4487848)))

(assert (=> bs!826731 (= (= lt!1672773 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166860 lambda!166831))))

(assert (=> d!1374131 true))

(declare-fun bm!312287 () Bool)

(declare-fun c!764378 () Bool)

(declare-fun call!312294 () Bool)

(assert (=> bm!312287 (= call!312294 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (ite c!764378 lambda!166856 lambda!166859)))))

(declare-fun bm!312288 () Bool)

(declare-fun call!312292 () Unit!90274)

(assert (=> bm!312288 (= call!312292 (lemmaContainsAllItsOwnKeys!294 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun e!2795270 () ListMap!3473)

(assert (=> b!4488038 (= e!2795270 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))

(declare-fun lt!1672770 () Unit!90274)

(assert (=> b!4488038 (= lt!1672770 call!312292)))

(declare-fun call!312293 () Bool)

(assert (=> b!4488038 call!312293))

(declare-fun lt!1672763 () Unit!90274)

(assert (=> b!4488038 (= lt!1672763 lt!1672770)))

(assert (=> b!4488038 call!312294))

(declare-fun lt!1672760 () Unit!90274)

(declare-fun Unit!90322 () Unit!90274)

(assert (=> b!4488038 (= lt!1672760 Unit!90322)))

(declare-fun bm!312289 () Bool)

(assert (=> bm!312289 (= call!312293 (forall!10124 (ite c!764378 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (_2!28716 (h!56280 (toList!4211 lm!1477)))) (ite c!764378 lambda!166856 lambda!166859)))))

(declare-fun b!4488039 () Bool)

(declare-fun e!2795271 () Bool)

(assert (=> b!4488039 (= e!2795271 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lambda!166859))))

(assert (=> b!4488040 (= e!2795270 lt!1672758)))

(declare-fun lt!1672757 () ListMap!3473)

(assert (=> b!4488040 (= lt!1672757 (+!1438 (extractMap!1158 (t!357557 (toList!4211 lm!1477))) (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477))))))))

(assert (=> b!4488040 (= lt!1672758 (addToMapMapFromBucket!633 (t!357556 (_2!28716 (h!56280 (toList!4211 lm!1477)))) (+!1438 (extractMap!1158 (t!357557 (toList!4211 lm!1477))) (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))))

(declare-fun lt!1672765 () Unit!90274)

(assert (=> b!4488040 (= lt!1672765 call!312292)))

(assert (=> b!4488040 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lambda!166858)))

(declare-fun lt!1672762 () Unit!90274)

(assert (=> b!4488040 (= lt!1672762 lt!1672765)))

(assert (=> b!4488040 (forall!10124 (toList!4212 lt!1672757) lambda!166859)))

(declare-fun lt!1672776 () Unit!90274)

(declare-fun Unit!90323 () Unit!90274)

(assert (=> b!4488040 (= lt!1672776 Unit!90323)))

(assert (=> b!4488040 (forall!10124 (t!357556 (_2!28716 (h!56280 (toList!4211 lm!1477)))) lambda!166859)))

(declare-fun lt!1672761 () Unit!90274)

(declare-fun Unit!90324 () Unit!90274)

(assert (=> b!4488040 (= lt!1672761 Unit!90324)))

(declare-fun lt!1672768 () Unit!90274)

(declare-fun Unit!90325 () Unit!90274)

(assert (=> b!4488040 (= lt!1672768 Unit!90325)))

(declare-fun lt!1672767 () Unit!90274)

(assert (=> b!4488040 (= lt!1672767 (forallContained!2383 (toList!4212 lt!1672757) lambda!166859 (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477))))))))

(assert (=> b!4488040 (contains!13113 lt!1672757 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477))))))))

(declare-fun lt!1672774 () Unit!90274)

(declare-fun Unit!90326 () Unit!90274)

(assert (=> b!4488040 (= lt!1672774 Unit!90326)))

(assert (=> b!4488040 (contains!13113 lt!1672758 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477))))))))

(declare-fun lt!1672764 () Unit!90274)

(declare-fun Unit!90327 () Unit!90274)

(assert (=> b!4488040 (= lt!1672764 Unit!90327)))

(assert (=> b!4488040 (forall!10124 (_2!28716 (h!56280 (toList!4211 lm!1477))) lambda!166859)))

(declare-fun lt!1672759 () Unit!90274)

(declare-fun Unit!90328 () Unit!90274)

(assert (=> b!4488040 (= lt!1672759 Unit!90328)))

(assert (=> b!4488040 (forall!10124 (toList!4212 lt!1672757) lambda!166859)))

(declare-fun lt!1672769 () Unit!90274)

(declare-fun Unit!90329 () Unit!90274)

(assert (=> b!4488040 (= lt!1672769 Unit!90329)))

(declare-fun lt!1672756 () Unit!90274)

(declare-fun Unit!90330 () Unit!90274)

(assert (=> b!4488040 (= lt!1672756 Unit!90330)))

(declare-fun lt!1672775 () Unit!90274)

(assert (=> b!4488040 (= lt!1672775 (addForallContainsKeyThenBeforeAdding!294 (extractMap!1158 (t!357557 (toList!4211 lm!1477))) lt!1672758 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477))))) (_2!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))))

(assert (=> b!4488040 call!312294))

(declare-fun lt!1672772 () Unit!90274)

(assert (=> b!4488040 (= lt!1672772 lt!1672775)))

(assert (=> b!4488040 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lambda!166859)))

(declare-fun lt!1672771 () Unit!90274)

(declare-fun Unit!90331 () Unit!90274)

(assert (=> b!4488040 (= lt!1672771 Unit!90331)))

(declare-fun res!1864650 () Bool)

(assert (=> b!4488040 (= res!1864650 call!312293)))

(assert (=> b!4488040 (=> (not res!1864650) (not e!2795271))))

(assert (=> b!4488040 e!2795271))

(declare-fun lt!1672766 () Unit!90274)

(declare-fun Unit!90332 () Unit!90274)

(assert (=> b!4488040 (= lt!1672766 Unit!90332)))

(declare-fun b!4488041 () Bool)

(declare-fun e!2795272 () Bool)

(assert (=> b!4488041 (= e!2795272 (invariantList!965 (toList!4212 lt!1672773)))))

(declare-fun b!4488042 () Bool)

(declare-fun res!1864649 () Bool)

(assert (=> b!4488042 (=> (not res!1864649) (not e!2795272))))

(assert (=> b!4488042 (= res!1864649 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lambda!166860))))

(assert (=> d!1374131 e!2795272))

(declare-fun res!1864648 () Bool)

(assert (=> d!1374131 (=> (not res!1864648) (not e!2795272))))

(assert (=> d!1374131 (= res!1864648 (forall!10124 (_2!28716 (h!56280 (toList!4211 lm!1477))) lambda!166860))))

(assert (=> d!1374131 (= lt!1672773 e!2795270)))

(assert (=> d!1374131 (= c!764378 ((_ is Nil!50478) (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(assert (=> d!1374131 (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lm!1477))))))

(assert (=> d!1374131 (= (addToMapMapFromBucket!633 (_2!28716 (h!56280 (toList!4211 lm!1477))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lt!1672773)))

(assert (= (and d!1374131 c!764378) b!4488038))

(assert (= (and d!1374131 (not c!764378)) b!4488040))

(assert (= (and b!4488040 res!1864650) b!4488039))

(assert (= (or b!4488038 b!4488040) bm!312289))

(assert (= (or b!4488038 b!4488040) bm!312287))

(assert (= (or b!4488038 b!4488040) bm!312288))

(assert (= (and d!1374131 res!1864648) b!4488042))

(assert (= (and b!4488042 res!1864649) b!4488041))

(declare-fun m!5209715 () Bool)

(assert (=> d!1374131 m!5209715))

(assert (=> d!1374131 m!5209211))

(declare-fun m!5209717 () Bool)

(assert (=> b!4488042 m!5209717))

(declare-fun m!5209719 () Bool)

(assert (=> bm!312287 m!5209719))

(declare-fun m!5209721 () Bool)

(assert (=> b!4488041 m!5209721))

(assert (=> bm!312288 m!5208705))

(declare-fun m!5209723 () Bool)

(assert (=> bm!312288 m!5209723))

(declare-fun m!5209725 () Bool)

(assert (=> bm!312289 m!5209725))

(declare-fun m!5209727 () Bool)

(assert (=> b!4488040 m!5209727))

(declare-fun m!5209729 () Bool)

(assert (=> b!4488040 m!5209729))

(declare-fun m!5209731 () Bool)

(assert (=> b!4488040 m!5209731))

(declare-fun m!5209733 () Bool)

(assert (=> b!4488040 m!5209733))

(assert (=> b!4488040 m!5209733))

(declare-fun m!5209735 () Bool)

(assert (=> b!4488040 m!5209735))

(declare-fun m!5209737 () Bool)

(assert (=> b!4488040 m!5209737))

(declare-fun m!5209739 () Bool)

(assert (=> b!4488040 m!5209739))

(declare-fun m!5209741 () Bool)

(assert (=> b!4488040 m!5209741))

(assert (=> b!4488040 m!5208705))

(declare-fun m!5209743 () Bool)

(assert (=> b!4488040 m!5209743))

(declare-fun m!5209745 () Bool)

(assert (=> b!4488040 m!5209745))

(assert (=> b!4488040 m!5208705))

(assert (=> b!4488040 m!5209739))

(declare-fun m!5209747 () Bool)

(assert (=> b!4488040 m!5209747))

(assert (=> b!4488039 m!5209745))

(assert (=> b!4487502 d!1374131))

(assert (=> b!4487502 d!1373911))

(declare-fun bs!826732 () Bool)

(declare-fun b!4488057 () Bool)

(assert (= bs!826732 (and b!4488057 b!4487755)))

(declare-fun lambda!166861 () Int)

(assert (=> bs!826732 (= (= (toList!4212 lt!1672303) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166861 lambda!166764))))

(declare-fun bs!826733 () Bool)

(assert (= bs!826733 (and b!4488057 b!4488031)))

(assert (=> bs!826733 (= (= (toList!4212 lt!1672303) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166861 lambda!166853))))

(assert (=> b!4488057 true))

(declare-fun bs!826734 () Bool)

(declare-fun b!4488058 () Bool)

(assert (= bs!826734 (and b!4488058 b!4487756)))

(declare-fun lambda!166862 () Int)

(assert (=> bs!826734 (= lambda!166862 lambda!166765)))

(declare-fun bs!826735 () Bool)

(assert (= bs!826735 (and b!4488058 b!4488032)))

(assert (=> bs!826735 (= lambda!166862 lambda!166854)))

(declare-fun d!1374143 () Bool)

(declare-fun e!2795283 () Bool)

(assert (=> d!1374143 e!2795283))

(declare-fun res!1864660 () Bool)

(assert (=> d!1374143 (=> (not res!1864660) (not e!2795283))))

(declare-fun lt!1672786 () List!50605)

(assert (=> d!1374143 (= res!1864660 (noDuplicate!716 lt!1672786))))

(assert (=> d!1374143 (= lt!1672786 (getKeysList!413 (toList!4212 lt!1672303)))))

(assert (=> d!1374143 (= (keys!17480 lt!1672303) lt!1672786)))

(declare-fun b!4488056 () Bool)

(declare-fun res!1864659 () Bool)

(assert (=> b!4488056 (=> (not res!1864659) (not e!2795283))))

(assert (=> b!4488056 (= res!1864659 (= (length!288 lt!1672786) (length!289 (toList!4212 lt!1672303))))))

(declare-fun res!1864658 () Bool)

(assert (=> b!4488057 (=> (not res!1864658) (not e!2795283))))

(assert (=> b!4488057 (= res!1864658 (forall!10126 lt!1672786 lambda!166861))))

(assert (=> b!4488058 (= e!2795283 (= (content!8202 lt!1672786) (content!8202 (map!11078 (toList!4212 lt!1672303) lambda!166862))))))

(assert (= (and d!1374143 res!1864660) b!4488056))

(assert (= (and b!4488056 res!1864659) b!4488057))

(assert (= (and b!4488057 res!1864658) b!4488058))

(declare-fun m!5209749 () Bool)

(assert (=> d!1374143 m!5209749))

(assert (=> d!1374143 m!5209095))

(declare-fun m!5209751 () Bool)

(assert (=> b!4488056 m!5209751))

(declare-fun m!5209753 () Bool)

(assert (=> b!4488056 m!5209753))

(declare-fun m!5209755 () Bool)

(assert (=> b!4488057 m!5209755))

(declare-fun m!5209757 () Bool)

(assert (=> b!4488058 m!5209757))

(declare-fun m!5209759 () Bool)

(assert (=> b!4488058 m!5209759))

(assert (=> b!4488058 m!5209759))

(declare-fun m!5209761 () Bool)

(assert (=> b!4488058 m!5209761))

(assert (=> b!4487623 d!1374143))

(assert (=> b!4487489 d!1374123))

(assert (=> b!4487489 d!1374125))

(declare-fun d!1374145 () Bool)

(assert (=> d!1374145 (= (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287)) (not (isEmpty!28554 (getValueByKey!988 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))))

(declare-fun bs!826736 () Bool)

(assert (= bs!826736 d!1374145))

(assert (=> bs!826736 m!5209045))

(declare-fun m!5209763 () Bool)

(assert (=> bs!826736 m!5209763))

(assert (=> b!4487596 d!1374145))

(declare-fun d!1374147 () Bool)

(declare-fun c!764382 () Bool)

(assert (=> d!1374147 (= c!764382 (and ((_ is Cons!50478) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) key!3287)))))

(declare-fun e!2795284 () Option!11008)

(assert (=> d!1374147 (= (getValueByKey!988 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287) e!2795284)))

(declare-fun b!4488060 () Bool)

(declare-fun e!2795285 () Option!11008)

(assert (=> b!4488060 (= e!2795284 e!2795285)))

(declare-fun c!764383 () Bool)

(assert (=> b!4488060 (= c!764383 (and ((_ is Cons!50478) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (not (= (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) key!3287))))))

(declare-fun b!4488062 () Bool)

(assert (=> b!4488062 (= e!2795285 None!11007)))

(declare-fun b!4488061 () Bool)

(assert (=> b!4488061 (= e!2795285 (getValueByKey!988 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(declare-fun b!4488059 () Bool)

(assert (=> b!4488059 (= e!2795284 (Some!11007 (_2!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))))

(assert (= (and d!1374147 c!764382) b!4488059))

(assert (= (and d!1374147 (not c!764382)) b!4488060))

(assert (= (and b!4488060 c!764383) b!4488061))

(assert (= (and b!4488060 (not c!764383)) b!4488062))

(declare-fun m!5209765 () Bool)

(assert (=> b!4488061 m!5209765))

(assert (=> b!4487596 d!1374147))

(declare-fun d!1374149 () Bool)

(assert (=> d!1374149 (= (invariantList!965 (toList!4212 lt!1672444)) (noDuplicatedKeys!230 (toList!4212 lt!1672444)))))

(declare-fun bs!826737 () Bool)

(assert (= bs!826737 d!1374149))

(declare-fun m!5209767 () Bool)

(assert (=> bs!826737 m!5209767))

(assert (=> d!1373901 d!1374149))

(declare-fun d!1374151 () Bool)

(declare-fun res!1864661 () Bool)

(declare-fun e!2795286 () Bool)

(assert (=> d!1374151 (=> res!1864661 e!2795286)))

(assert (=> d!1374151 (= res!1864661 ((_ is Nil!50479) (toList!4211 lt!1672305)))))

(assert (=> d!1374151 (= (forall!10122 (toList!4211 lt!1672305) lambda!166733) e!2795286)))

(declare-fun b!4488063 () Bool)

(declare-fun e!2795287 () Bool)

(assert (=> b!4488063 (= e!2795286 e!2795287)))

(declare-fun res!1864662 () Bool)

(assert (=> b!4488063 (=> (not res!1864662) (not e!2795287))))

(assert (=> b!4488063 (= res!1864662 (dynLambda!21071 lambda!166733 (h!56280 (toList!4211 lt!1672305))))))

(declare-fun b!4488064 () Bool)

(assert (=> b!4488064 (= e!2795287 (forall!10122 (t!357557 (toList!4211 lt!1672305)) lambda!166733))))

(assert (= (and d!1374151 (not res!1864661)) b!4488063))

(assert (= (and b!4488063 res!1864662) b!4488064))

(declare-fun b_lambda!150791 () Bool)

(assert (=> (not b_lambda!150791) (not b!4488063)))

(declare-fun m!5209769 () Bool)

(assert (=> b!4488063 m!5209769))

(declare-fun m!5209771 () Bool)

(assert (=> b!4488064 m!5209771))

(assert (=> d!1373901 d!1374151))

(assert (=> b!4487683 d!1374115))

(assert (=> b!4487683 d!1374119))

(declare-fun d!1374153 () Bool)

(declare-fun c!764386 () Bool)

(assert (=> d!1374153 (= c!764386 ((_ is Nil!50478) (toList!4212 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))

(declare-fun e!2795290 () (InoxSet tuple2!50842))

(assert (=> d!1374153 (= (content!8201 (toList!4212 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) e!2795290)))

(declare-fun b!4488069 () Bool)

(assert (=> b!4488069 (= e!2795290 ((as const (Array tuple2!50842 Bool)) false))))

(declare-fun b!4488070 () Bool)

(assert (=> b!4488070 (= e!2795290 ((_ map or) (store ((as const (Array tuple2!50842 Bool)) false) (h!56279 (toList!4212 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) true) (content!8201 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))))

(assert (= (and d!1374153 c!764386) b!4488069))

(assert (= (and d!1374153 (not c!764386)) b!4488070))

(declare-fun m!5209773 () Bool)

(assert (=> b!4488070 m!5209773))

(declare-fun m!5209775 () Bool)

(assert (=> b!4488070 m!5209775))

(assert (=> d!1373927 d!1374153))

(declare-fun d!1374155 () Bool)

(declare-fun c!764387 () Bool)

(assert (=> d!1374155 (= c!764387 ((_ is Nil!50478) (toList!4212 (-!328 lt!1672303 key!3287))))))

(declare-fun e!2795291 () (InoxSet tuple2!50842))

(assert (=> d!1374155 (= (content!8201 (toList!4212 (-!328 lt!1672303 key!3287))) e!2795291)))

(declare-fun b!4488071 () Bool)

(assert (=> b!4488071 (= e!2795291 ((as const (Array tuple2!50842 Bool)) false))))

(declare-fun b!4488072 () Bool)

(assert (=> b!4488072 (= e!2795291 ((_ map or) (store ((as const (Array tuple2!50842 Bool)) false) (h!56279 (toList!4212 (-!328 lt!1672303 key!3287))) true) (content!8201 (t!357556 (toList!4212 (-!328 lt!1672303 key!3287))))))))

(assert (= (and d!1374155 c!764387) b!4488071))

(assert (= (and d!1374155 (not c!764387)) b!4488072))

(declare-fun m!5209777 () Bool)

(assert (=> b!4488072 m!5209777))

(declare-fun m!5209779 () Bool)

(assert (=> b!4488072 m!5209779))

(assert (=> d!1373927 d!1374155))

(assert (=> b!4487656 d!1373951))

(assert (=> d!1373883 d!1373879))

(declare-fun d!1374157 () Bool)

(assert (=> d!1374157 (containsKeyBiggerList!82 (toList!4211 lt!1672305) key!3287)))

(assert (=> d!1374157 true))

(declare-fun _$33!571 () Unit!90274)

(assert (=> d!1374157 (= (choose!28894 lt!1672305 key!3287 hashF!1107) _$33!571)))

(declare-fun bs!826738 () Bool)

(assert (= bs!826738 d!1374157))

(assert (=> bs!826738 m!5208695))

(assert (=> d!1373883 d!1374157))

(declare-fun d!1374159 () Bool)

(declare-fun res!1864663 () Bool)

(declare-fun e!2795292 () Bool)

(assert (=> d!1374159 (=> res!1864663 e!2795292)))

(assert (=> d!1374159 (= res!1864663 ((_ is Nil!50479) (toList!4211 lt!1672305)))))

(assert (=> d!1374159 (= (forall!10122 (toList!4211 lt!1672305) lambda!166732) e!2795292)))

(declare-fun b!4488073 () Bool)

(declare-fun e!2795293 () Bool)

(assert (=> b!4488073 (= e!2795292 e!2795293)))

(declare-fun res!1864664 () Bool)

(assert (=> b!4488073 (=> (not res!1864664) (not e!2795293))))

(assert (=> b!4488073 (= res!1864664 (dynLambda!21071 lambda!166732 (h!56280 (toList!4211 lt!1672305))))))

(declare-fun b!4488074 () Bool)

(assert (=> b!4488074 (= e!2795293 (forall!10122 (t!357557 (toList!4211 lt!1672305)) lambda!166732))))

(assert (= (and d!1374159 (not res!1864663)) b!4488073))

(assert (= (and b!4488073 res!1864664) b!4488074))

(declare-fun b_lambda!150793 () Bool)

(assert (=> (not b_lambda!150793) (not b!4488073)))

(declare-fun m!5209781 () Bool)

(assert (=> b!4488073 m!5209781))

(declare-fun m!5209783 () Bool)

(assert (=> b!4488074 m!5209783))

(assert (=> d!1373883 d!1374159))

(declare-fun d!1374161 () Bool)

(declare-fun lt!1672787 () Bool)

(assert (=> d!1374161 (= lt!1672787 (select (content!8203 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672311))))

(declare-fun e!2795295 () Bool)

(assert (=> d!1374161 (= lt!1672787 e!2795295)))

(declare-fun res!1864665 () Bool)

(assert (=> d!1374161 (=> (not res!1864665) (not e!2795295))))

(assert (=> d!1374161 (= res!1864665 ((_ is Cons!50479) (t!357557 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374161 (= (contains!13114 (t!357557 (t!357557 (toList!4211 lm!1477))) lt!1672311) lt!1672787)))

(declare-fun b!4488075 () Bool)

(declare-fun e!2795294 () Bool)

(assert (=> b!4488075 (= e!2795295 e!2795294)))

(declare-fun res!1864666 () Bool)

(assert (=> b!4488075 (=> res!1864666 e!2795294)))

(assert (=> b!4488075 (= res!1864666 (= (h!56280 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672311))))

(declare-fun b!4488076 () Bool)

(assert (=> b!4488076 (= e!2795294 (contains!13114 (t!357557 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672311))))

(assert (= (and d!1374161 res!1864665) b!4488075))

(assert (= (and b!4488075 (not res!1864666)) b!4488076))

(declare-fun m!5209785 () Bool)

(assert (=> d!1374161 m!5209785))

(declare-fun m!5209787 () Bool)

(assert (=> d!1374161 m!5209787))

(declare-fun m!5209789 () Bool)

(assert (=> b!4488076 m!5209789))

(assert (=> b!4487685 d!1374161))

(declare-fun d!1374163 () Bool)

(declare-fun lt!1672788 () List!50602)

(assert (=> d!1374163 (not (containsKey!1618 lt!1672788 key!3287))))

(declare-fun e!2795297 () List!50602)

(assert (=> d!1374163 (= lt!1672788 e!2795297)))

(declare-fun c!764389 () Bool)

(assert (=> d!1374163 (= c!764389 (and ((_ is Cons!50478) (t!357556 lt!1672302)) (= (_1!28715 (h!56279 (t!357556 lt!1672302))) key!3287)))))

(assert (=> d!1374163 (noDuplicateKeys!1102 (t!357556 lt!1672302))))

(assert (=> d!1374163 (= (removePairForKey!729 (t!357556 lt!1672302) key!3287) lt!1672788)))

(declare-fun b!4488077 () Bool)

(assert (=> b!4488077 (= e!2795297 (t!357556 (t!357556 lt!1672302)))))

(declare-fun b!4488079 () Bool)

(declare-fun e!2795296 () List!50602)

(assert (=> b!4488079 (= e!2795296 (Cons!50478 (h!56279 (t!357556 lt!1672302)) (removePairForKey!729 (t!357556 (t!357556 lt!1672302)) key!3287)))))

(declare-fun b!4488078 () Bool)

(assert (=> b!4488078 (= e!2795297 e!2795296)))

(declare-fun c!764388 () Bool)

(assert (=> b!4488078 (= c!764388 ((_ is Cons!50478) (t!357556 lt!1672302)))))

(declare-fun b!4488080 () Bool)

(assert (=> b!4488080 (= e!2795296 Nil!50478)))

(assert (= (and d!1374163 c!764389) b!4488077))

(assert (= (and d!1374163 (not c!764389)) b!4488078))

(assert (= (and b!4488078 c!764388) b!4488079))

(assert (= (and b!4488078 (not c!764388)) b!4488080))

(declare-fun m!5209791 () Bool)

(assert (=> d!1374163 m!5209791))

(declare-fun m!5209793 () Bool)

(assert (=> d!1374163 m!5209793))

(declare-fun m!5209795 () Bool)

(assert (=> b!4488079 m!5209795))

(assert (=> b!4487673 d!1374163))

(declare-fun d!1374165 () Bool)

(declare-fun res!1864667 () Bool)

(declare-fun e!2795298 () Bool)

(assert (=> d!1374165 (=> res!1864667 e!2795298)))

(assert (=> d!1374165 (= res!1864667 (and ((_ is Cons!50478) (t!357556 newBucket!178)) (= (_1!28715 (h!56279 (t!357556 newBucket!178))) (_1!28715 (h!56279 newBucket!178)))))))

(assert (=> d!1374165 (= (containsKey!1618 (t!357556 newBucket!178) (_1!28715 (h!56279 newBucket!178))) e!2795298)))

(declare-fun b!4488081 () Bool)

(declare-fun e!2795299 () Bool)

(assert (=> b!4488081 (= e!2795298 e!2795299)))

(declare-fun res!1864668 () Bool)

(assert (=> b!4488081 (=> (not res!1864668) (not e!2795299))))

(assert (=> b!4488081 (= res!1864668 ((_ is Cons!50478) (t!357556 newBucket!178)))))

(declare-fun b!4488082 () Bool)

(assert (=> b!4488082 (= e!2795299 (containsKey!1618 (t!357556 (t!357556 newBucket!178)) (_1!28715 (h!56279 newBucket!178))))))

(assert (= (and d!1374165 (not res!1864667)) b!4488081))

(assert (= (and b!4488081 res!1864668) b!4488082))

(declare-fun m!5209797 () Bool)

(assert (=> b!4488082 m!5209797))

(assert (=> b!4487696 d!1374165))

(declare-fun bs!826739 () Bool)

(declare-fun b!4488104 () Bool)

(assert (= bs!826739 (and b!4488104 b!4487755)))

(declare-fun lambda!166871 () Int)

(assert (=> bs!826739 (= (= (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166871 lambda!166764))))

(declare-fun bs!826740 () Bool)

(assert (= bs!826740 (and b!4488104 b!4488031)))

(assert (=> bs!826740 (= (= (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166871 lambda!166853))))

(declare-fun bs!826741 () Bool)

(assert (= bs!826741 (and b!4488104 b!4488057)))

(assert (=> bs!826741 (= (= (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (toList!4212 lt!1672303)) (= lambda!166871 lambda!166861))))

(assert (=> b!4488104 true))

(declare-fun bs!826742 () Bool)

(declare-fun b!4488102 () Bool)

(assert (= bs!826742 (and b!4488102 b!4487755)))

(declare-fun lambda!166872 () Int)

(assert (=> bs!826742 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166872 lambda!166764))))

(declare-fun bs!826743 () Bool)

(assert (= bs!826743 (and b!4488102 b!4488031)))

(assert (=> bs!826743 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166872 lambda!166853))))

(declare-fun bs!826744 () Bool)

(assert (= bs!826744 (and b!4488102 b!4488057)))

(assert (=> bs!826744 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (toList!4212 lt!1672303)) (= lambda!166872 lambda!166861))))

(declare-fun bs!826745 () Bool)

(assert (= bs!826745 (and b!4488102 b!4488104)))

(assert (=> bs!826745 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166872 lambda!166871))))

(assert (=> b!4488102 true))

(declare-fun bs!826746 () Bool)

(declare-fun b!4488108 () Bool)

(assert (= bs!826746 (and b!4488108 b!4488104)))

(declare-fun lambda!166873 () Int)

(assert (=> bs!826746 (= (= (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166873 lambda!166871))))

(declare-fun bs!826747 () Bool)

(assert (= bs!826747 (and b!4488108 b!4488102)))

(assert (=> bs!826747 (= (= (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166873 lambda!166872))))

(declare-fun bs!826748 () Bool)

(assert (= bs!826748 (and b!4488108 b!4488057)))

(assert (=> bs!826748 (= (= (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (toList!4212 lt!1672303)) (= lambda!166873 lambda!166861))))

(declare-fun bs!826749 () Bool)

(assert (= bs!826749 (and b!4488108 b!4487755)))

(assert (=> bs!826749 (= lambda!166873 lambda!166764)))

(declare-fun bs!826750 () Bool)

(assert (= bs!826750 (and b!4488108 b!4488031)))

(assert (=> bs!826750 (= (= (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166873 lambda!166853))))

(assert (=> b!4488108 true))

(declare-fun bs!826751 () Bool)

(declare-fun b!4488103 () Bool)

(assert (= bs!826751 (and b!4488103 b!4487756)))

(declare-fun lambda!166874 () Int)

(assert (=> bs!826751 (= lambda!166874 lambda!166765)))

(declare-fun bs!826752 () Bool)

(assert (= bs!826752 (and b!4488103 b!4488032)))

(assert (=> bs!826752 (= lambda!166874 lambda!166854)))

(declare-fun bs!826753 () Bool)

(assert (= bs!826753 (and b!4488103 b!4488058)))

(assert (=> bs!826753 (= lambda!166874 lambda!166862)))

(declare-fun b!4488101 () Bool)

(declare-fun e!2795310 () Unit!90274)

(declare-fun Unit!90344 () Unit!90274)

(assert (=> b!4488101 (= e!2795310 Unit!90344)))

(declare-fun e!2795313 () List!50605)

(assert (=> b!4488102 (= e!2795313 (Cons!50481 (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))))

(declare-fun c!764397 () Bool)

(assert (=> b!4488102 (= c!764397 (containsKey!1621 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))))

(declare-fun lt!1672806 () Unit!90274)

(assert (=> b!4488102 (= lt!1672806 e!2795310)))

(declare-fun c!764398 () Bool)

(assert (=> b!4488102 (= c!764398 (contains!13117 (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))))

(declare-fun lt!1672804 () Unit!90274)

(declare-fun e!2795311 () Unit!90274)

(assert (=> b!4488102 (= lt!1672804 e!2795311)))

(declare-fun lt!1672803 () List!50605)

(assert (=> b!4488102 (= lt!1672803 (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))))

(declare-fun lt!1672809 () Unit!90274)

(declare-fun lemmaForallContainsAddHeadPreserves!137 (List!50602 List!50605 tuple2!50842) Unit!90274)

(assert (=> b!4488102 (= lt!1672809 (lemmaForallContainsAddHeadPreserves!137 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) lt!1672803 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))))

(assert (=> b!4488102 (forall!10126 lt!1672803 lambda!166872)))

(declare-fun lt!1672807 () Unit!90274)

(assert (=> b!4488102 (= lt!1672807 lt!1672809)))

(declare-fun lt!1672805 () List!50605)

(declare-fun e!2795312 () Bool)

(assert (=> b!4488103 (= e!2795312 (= (content!8202 lt!1672805) (content!8202 (map!11078 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) lambda!166874))))))

(assert (=> b!4488104 false))

(declare-fun lt!1672808 () Unit!90274)

(declare-fun forallContained!2385 (List!50605 Int K!11895) Unit!90274)

(assert (=> b!4488104 (= lt!1672808 (forallContained!2385 (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) lambda!166871 (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))))

(declare-fun Unit!90347 () Unit!90274)

(assert (=> b!4488104 (= e!2795311 Unit!90347)))

(declare-fun d!1374167 () Bool)

(assert (=> d!1374167 e!2795312))

(declare-fun res!1864675 () Bool)

(assert (=> d!1374167 (=> (not res!1864675) (not e!2795312))))

(assert (=> d!1374167 (= res!1864675 (noDuplicate!716 lt!1672805))))

(assert (=> d!1374167 (= lt!1672805 e!2795313)))

(declare-fun c!764396 () Bool)

(assert (=> d!1374167 (= c!764396 ((_ is Cons!50478) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))

(assert (=> d!1374167 (invariantList!965 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374167 (= (getKeysList!413 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) lt!1672805)))

(declare-fun b!4488105 () Bool)

(declare-fun res!1864677 () Bool)

(assert (=> b!4488105 (=> (not res!1864677) (not e!2795312))))

(assert (=> b!4488105 (= res!1864677 (= (length!288 lt!1672805) (length!289 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))))

(declare-fun b!4488106 () Bool)

(assert (=> b!4488106 (= e!2795313 Nil!50481)))

(declare-fun b!4488107 () Bool)

(declare-fun Unit!90348 () Unit!90274)

(assert (=> b!4488107 (= e!2795311 Unit!90348)))

(declare-fun res!1864676 () Bool)

(assert (=> b!4488108 (=> (not res!1864676) (not e!2795312))))

(assert (=> b!4488108 (= res!1864676 (forall!10126 lt!1672805 lambda!166873))))

(declare-fun b!4488109 () Bool)

(assert (=> b!4488109 false))

(declare-fun Unit!90349 () Unit!90274)

(assert (=> b!4488109 (= e!2795310 Unit!90349)))

(assert (= (and d!1374167 c!764396) b!4488102))

(assert (= (and d!1374167 (not c!764396)) b!4488106))

(assert (= (and b!4488102 c!764397) b!4488109))

(assert (= (and b!4488102 (not c!764397)) b!4488101))

(assert (= (and b!4488102 c!764398) b!4488104))

(assert (= (and b!4488102 (not c!764398)) b!4488107))

(assert (= (and d!1374167 res!1864675) b!4488105))

(assert (= (and b!4488105 res!1864677) b!4488108))

(assert (= (and b!4488108 res!1864676) b!4488103))

(declare-fun m!5209799 () Bool)

(assert (=> d!1374167 m!5209799))

(declare-fun m!5209801 () Bool)

(assert (=> d!1374167 m!5209801))

(declare-fun m!5209803 () Bool)

(assert (=> b!4488108 m!5209803))

(declare-fun m!5209805 () Bool)

(assert (=> b!4488103 m!5209805))

(declare-fun m!5209807 () Bool)

(assert (=> b!4488103 m!5209807))

(assert (=> b!4488103 m!5209807))

(declare-fun m!5209809 () Bool)

(assert (=> b!4488103 m!5209809))

(declare-fun m!5209811 () Bool)

(assert (=> b!4488105 m!5209811))

(assert (=> b!4488105 m!5209263))

(declare-fun m!5209813 () Bool)

(assert (=> b!4488102 m!5209813))

(declare-fun m!5209815 () Bool)

(assert (=> b!4488102 m!5209815))

(declare-fun m!5209817 () Bool)

(assert (=> b!4488102 m!5209817))

(assert (=> b!4488102 m!5209815))

(declare-fun m!5209819 () Bool)

(assert (=> b!4488102 m!5209819))

(declare-fun m!5209821 () Bool)

(assert (=> b!4488102 m!5209821))

(assert (=> b!4488104 m!5209815))

(assert (=> b!4488104 m!5209815))

(declare-fun m!5209823 () Bool)

(assert (=> b!4488104 m!5209823))

(assert (=> b!4487594 d!1374167))

(declare-fun d!1374169 () Bool)

(declare-fun res!1864678 () Bool)

(declare-fun e!2795314 () Bool)

(assert (=> d!1374169 (=> res!1864678 e!2795314)))

(assert (=> d!1374169 (= res!1864678 (and ((_ is Cons!50478) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) key!3287)))))

(assert (=> d!1374169 (= (containsKey!1621 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287) e!2795314)))

(declare-fun b!4488112 () Bool)

(declare-fun e!2795315 () Bool)

(assert (=> b!4488112 (= e!2795314 e!2795315)))

(declare-fun res!1864679 () Bool)

(assert (=> b!4488112 (=> (not res!1864679) (not e!2795315))))

(assert (=> b!4488112 (= res!1864679 ((_ is Cons!50478) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))))

(declare-fun b!4488113 () Bool)

(assert (=> b!4488113 (= e!2795315 (containsKey!1621 (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(assert (= (and d!1374169 (not res!1864678)) b!4488112))

(assert (= (and b!4488112 res!1864679) b!4488113))

(declare-fun m!5209825 () Bool)

(assert (=> b!4488113 m!5209825))

(assert (=> d!1373903 d!1374169))

(declare-fun d!1374171 () Bool)

(assert (=> d!1374171 (= (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287)) (not (isEmpty!28554 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))))

(declare-fun bs!826754 () Bool)

(assert (= bs!826754 d!1374171))

(assert (=> bs!826754 m!5208849))

(declare-fun m!5209827 () Bool)

(assert (=> bs!826754 m!5209827))

(assert (=> b!4487484 d!1374171))

(declare-fun d!1374173 () Bool)

(declare-fun c!764399 () Bool)

(assert (=> d!1374173 (= c!764399 (and ((_ is Cons!50478) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) key!3287)))))

(declare-fun e!2795316 () Option!11008)

(assert (=> d!1374173 (= (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287) e!2795316)))

(declare-fun b!4488115 () Bool)

(declare-fun e!2795317 () Option!11008)

(assert (=> b!4488115 (= e!2795316 e!2795317)))

(declare-fun c!764400 () Bool)

(assert (=> b!4488115 (= c!764400 (and ((_ is Cons!50478) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (not (= (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) key!3287))))))

(declare-fun b!4488117 () Bool)

(assert (=> b!4488117 (= e!2795317 None!11007)))

(declare-fun b!4488116 () Bool)

(assert (=> b!4488116 (= e!2795317 (getValueByKey!988 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) key!3287))))

(declare-fun b!4488114 () Bool)

(assert (=> b!4488114 (= e!2795316 (Some!11007 (_2!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))))

(assert (= (and d!1374173 c!764399) b!4488114))

(assert (= (and d!1374173 (not c!764399)) b!4488115))

(assert (= (and b!4488115 c!764400) b!4488116))

(assert (= (and b!4488115 (not c!764400)) b!4488117))

(declare-fun m!5209829 () Bool)

(assert (=> b!4488116 m!5209829))

(assert (=> b!4487484 d!1374173))

(declare-fun bs!826755 () Bool)

(declare-fun b!4488123 () Bool)

(assert (= bs!826755 (and b!4488123 b!4488102)))

(declare-fun lambda!166875 () Int)

(assert (=> bs!826755 (= (= (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166875 lambda!166872))))

(declare-fun bs!826756 () Bool)

(assert (= bs!826756 (and b!4488123 b!4488057)))

(assert (=> bs!826756 (= (= (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (toList!4212 lt!1672303)) (= lambda!166875 lambda!166861))))

(declare-fun bs!826757 () Bool)

(assert (= bs!826757 (and b!4488123 b!4487755)))

(assert (=> bs!826757 (= (= (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166875 lambda!166764))))

(declare-fun bs!826758 () Bool)

(assert (= bs!826758 (and b!4488123 b!4488031)))

(assert (=> bs!826758 (= (= (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166875 lambda!166853))))

(declare-fun bs!826759 () Bool)

(assert (= bs!826759 (and b!4488123 b!4488104)))

(assert (=> bs!826759 (= (= (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166875 lambda!166871))))

(declare-fun bs!826760 () Bool)

(assert (= bs!826760 (and b!4488123 b!4488108)))

(assert (=> bs!826760 (= (= (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166875 lambda!166873))))

(assert (=> b!4488123 true))

(declare-fun bs!826761 () Bool)

(declare-fun b!4488121 () Bool)

(assert (= bs!826761 (and b!4488121 b!4488123)))

(declare-fun lambda!166876 () Int)

(assert (=> bs!826761 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (= lambda!166876 lambda!166875))))

(declare-fun bs!826762 () Bool)

(assert (= bs!826762 (and b!4488121 b!4488102)))

(assert (=> bs!826762 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166876 lambda!166872))))

(declare-fun bs!826763 () Bool)

(assert (= bs!826763 (and b!4488121 b!4488057)))

(assert (=> bs!826763 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (toList!4212 lt!1672303)) (= lambda!166876 lambda!166861))))

(declare-fun bs!826764 () Bool)

(assert (= bs!826764 (and b!4488121 b!4487755)))

(assert (=> bs!826764 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166876 lambda!166764))))

(declare-fun bs!826765 () Bool)

(assert (= bs!826765 (and b!4488121 b!4488031)))

(assert (=> bs!826765 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166876 lambda!166853))))

(declare-fun bs!826766 () Bool)

(assert (= bs!826766 (and b!4488121 b!4488104)))

(assert (=> bs!826766 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166876 lambda!166871))))

(declare-fun bs!826767 () Bool)

(assert (= bs!826767 (and b!4488121 b!4488108)))

(assert (=> bs!826767 (= (= (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166876 lambda!166873))))

(assert (=> b!4488121 true))

(declare-fun bs!826768 () Bool)

(declare-fun b!4488127 () Bool)

(assert (= bs!826768 (and b!4488127 b!4488123)))

(declare-fun lambda!166877 () Int)

(assert (=> bs!826768 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (= lambda!166877 lambda!166875))))

(declare-fun bs!826769 () Bool)

(assert (= bs!826769 (and b!4488127 b!4488102)))

(assert (=> bs!826769 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166877 lambda!166872))))

(declare-fun bs!826770 () Bool)

(assert (= bs!826770 (and b!4488127 b!4488121)))

(assert (=> bs!826770 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))) (= lambda!166877 lambda!166876))))

(declare-fun bs!826771 () Bool)

(assert (= bs!826771 (and b!4488127 b!4488057)))

(assert (=> bs!826771 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (toList!4212 lt!1672303)) (= lambda!166877 lambda!166861))))

(declare-fun bs!826772 () Bool)

(assert (= bs!826772 (and b!4488127 b!4487755)))

(assert (=> bs!826772 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166877 lambda!166764))))

(declare-fun bs!826773 () Bool)

(assert (= bs!826773 (and b!4488127 b!4488031)))

(assert (=> bs!826773 (= lambda!166877 lambda!166853)))

(declare-fun bs!826774 () Bool)

(assert (= bs!826774 (and b!4488127 b!4488104)))

(assert (=> bs!826774 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166877 lambda!166871))))

(declare-fun bs!826775 () Bool)

(assert (= bs!826775 (and b!4488127 b!4488108)))

(assert (=> bs!826775 (= (= (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166877 lambda!166873))))

(assert (=> b!4488127 true))

(declare-fun bs!826776 () Bool)

(declare-fun b!4488122 () Bool)

(assert (= bs!826776 (and b!4488122 b!4487756)))

(declare-fun lambda!166878 () Int)

(assert (=> bs!826776 (= lambda!166878 lambda!166765)))

(declare-fun bs!826777 () Bool)

(assert (= bs!826777 (and b!4488122 b!4488032)))

(assert (=> bs!826777 (= lambda!166878 lambda!166854)))

(declare-fun bs!826778 () Bool)

(assert (= bs!826778 (and b!4488122 b!4488058)))

(assert (=> bs!826778 (= lambda!166878 lambda!166862)))

(declare-fun bs!826779 () Bool)

(assert (= bs!826779 (and b!4488122 b!4488103)))

(assert (=> bs!826779 (= lambda!166878 lambda!166874)))

(declare-fun b!4488120 () Bool)

(declare-fun e!2795318 () Unit!90274)

(declare-fun Unit!90358 () Unit!90274)

(assert (=> b!4488120 (= e!2795318 Unit!90358)))

(declare-fun e!2795321 () List!50605)

(assert (=> b!4488121 (= e!2795321 (Cons!50481 (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))))

(declare-fun c!764402 () Bool)

(assert (=> b!4488121 (= c!764402 (containsKey!1621 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))))

(declare-fun lt!1672815 () Unit!90274)

(assert (=> b!4488121 (= lt!1672815 e!2795318)))

(declare-fun c!764403 () Bool)

(assert (=> b!4488121 (= c!764403 (contains!13117 (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))))

(declare-fun lt!1672813 () Unit!90274)

(declare-fun e!2795319 () Unit!90274)

(assert (=> b!4488121 (= lt!1672813 e!2795319)))

(declare-fun lt!1672812 () List!50605)

(assert (=> b!4488121 (= lt!1672812 (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))))

(declare-fun lt!1672818 () Unit!90274)

(assert (=> b!4488121 (= lt!1672818 (lemmaForallContainsAddHeadPreserves!137 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) lt!1672812 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))))

(assert (=> b!4488121 (forall!10126 lt!1672812 lambda!166876)))

(declare-fun lt!1672816 () Unit!90274)

(assert (=> b!4488121 (= lt!1672816 lt!1672818)))

(declare-fun lt!1672814 () List!50605)

(declare-fun e!2795320 () Bool)

(assert (=> b!4488122 (= e!2795320 (= (content!8202 lt!1672814) (content!8202 (map!11078 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) lambda!166878))))))

(assert (=> b!4488123 false))

(declare-fun lt!1672817 () Unit!90274)

(assert (=> b!4488123 (= lt!1672817 (forallContained!2385 (getKeysList!413 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) lambda!166875 (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))))

(declare-fun Unit!90359 () Unit!90274)

(assert (=> b!4488123 (= e!2795319 Unit!90359)))

(declare-fun d!1374175 () Bool)

(assert (=> d!1374175 e!2795320))

(declare-fun res!1864680 () Bool)

(assert (=> d!1374175 (=> (not res!1864680) (not e!2795320))))

(assert (=> d!1374175 (= res!1864680 (noDuplicate!716 lt!1672814))))

(assert (=> d!1374175 (= lt!1672814 e!2795321)))

(declare-fun c!764401 () Bool)

(assert (=> d!1374175 (= c!764401 ((_ is Cons!50478) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))

(assert (=> d!1374175 (invariantList!965 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))

(assert (=> d!1374175 (= (getKeysList!413 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) lt!1672814)))

(declare-fun b!4488124 () Bool)

(declare-fun res!1864682 () Bool)

(assert (=> b!4488124 (=> (not res!1864682) (not e!2795320))))

(assert (=> b!4488124 (= res!1864682 (= (length!288 lt!1672814) (length!289 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))))

(declare-fun b!4488125 () Bool)

(assert (=> b!4488125 (= e!2795321 Nil!50481)))

(declare-fun b!4488126 () Bool)

(declare-fun Unit!90360 () Unit!90274)

(assert (=> b!4488126 (= e!2795319 Unit!90360)))

(declare-fun res!1864681 () Bool)

(assert (=> b!4488127 (=> (not res!1864681) (not e!2795320))))

(assert (=> b!4488127 (= res!1864681 (forall!10126 lt!1672814 lambda!166877))))

(declare-fun b!4488128 () Bool)

(assert (=> b!4488128 false))

(declare-fun Unit!90361 () Unit!90274)

(assert (=> b!4488128 (= e!2795318 Unit!90361)))

(assert (= (and d!1374175 c!764401) b!4488121))

(assert (= (and d!1374175 (not c!764401)) b!4488125))

(assert (= (and b!4488121 c!764402) b!4488128))

(assert (= (and b!4488121 (not c!764402)) b!4488120))

(assert (= (and b!4488121 c!764403) b!4488123))

(assert (= (and b!4488121 (not c!764403)) b!4488126))

(assert (= (and d!1374175 res!1864680) b!4488124))

(assert (= (and b!4488124 res!1864682) b!4488127))

(assert (= (and b!4488127 res!1864681) b!4488122))

(declare-fun m!5209831 () Bool)

(assert (=> d!1374175 m!5209831))

(declare-fun m!5209833 () Bool)

(assert (=> d!1374175 m!5209833))

(declare-fun m!5209835 () Bool)

(assert (=> b!4488127 m!5209835))

(declare-fun m!5209837 () Bool)

(assert (=> b!4488122 m!5209837))

(declare-fun m!5209839 () Bool)

(assert (=> b!4488122 m!5209839))

(assert (=> b!4488122 m!5209839))

(declare-fun m!5209841 () Bool)

(assert (=> b!4488122 m!5209841))

(declare-fun m!5209843 () Bool)

(assert (=> b!4488124 m!5209843))

(assert (=> b!4488124 m!5209663))

(declare-fun m!5209845 () Bool)

(assert (=> b!4488121 m!5209845))

(declare-fun m!5209847 () Bool)

(assert (=> b!4488121 m!5209847))

(declare-fun m!5209849 () Bool)

(assert (=> b!4488121 m!5209849))

(assert (=> b!4488121 m!5209847))

(declare-fun m!5209851 () Bool)

(assert (=> b!4488121 m!5209851))

(declare-fun m!5209853 () Bool)

(assert (=> b!4488121 m!5209853))

(assert (=> b!4488123 m!5209847))

(assert (=> b!4488123 m!5209847))

(declare-fun m!5209855 () Bool)

(assert (=> b!4488123 m!5209855))

(assert (=> b!4487482 d!1374175))

(declare-fun b!4488151 () Bool)

(declare-fun e!2795339 () Unit!90274)

(declare-fun Unit!90362 () Unit!90274)

(assert (=> b!4488151 (= e!2795339 Unit!90362)))

(declare-fun b!4488152 () Bool)

(declare-fun e!2795336 () List!50605)

(assert (=> b!4488152 (= e!2795336 (getKeysList!413 (toList!4212 lt!1672490)))))

(declare-fun b!4488153 () Bool)

(assert (=> b!4488153 (= e!2795336 (keys!17480 lt!1672490))))

(declare-fun b!4488154 () Bool)

(declare-fun e!2795334 () Bool)

(declare-fun e!2795338 () Bool)

(assert (=> b!4488154 (= e!2795334 e!2795338)))

(declare-fun res!1864683 () Bool)

(assert (=> b!4488154 (=> (not res!1864683) (not e!2795338))))

(assert (=> b!4488154 (= res!1864683 (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672490) key!3287)))))

(declare-fun bm!312297 () Bool)

(declare-fun call!312302 () Bool)

(assert (=> bm!312297 (= call!312302 (contains!13117 e!2795336 key!3287))))

(declare-fun c!764416 () Bool)

(declare-fun c!764418 () Bool)

(assert (=> bm!312297 (= c!764416 c!764418)))

(declare-fun b!4488155 () Bool)

(declare-fun e!2795335 () Unit!90274)

(assert (=> b!4488155 (= e!2795335 e!2795339)))

(declare-fun c!764417 () Bool)

(assert (=> b!4488155 (= c!764417 call!312302)))

(declare-fun b!4488156 () Bool)

(declare-fun lt!1672856 () Unit!90274)

(assert (=> b!4488156 (= e!2795335 lt!1672856)))

(declare-fun lt!1672851 () Unit!90274)

(assert (=> b!4488156 (= lt!1672851 (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 lt!1672490) key!3287))))

(assert (=> b!4488156 (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672490) key!3287))))

(declare-fun lt!1672854 () Unit!90274)

(assert (=> b!4488156 (= lt!1672854 lt!1672851)))

(assert (=> b!4488156 (= lt!1672856 (lemmaInListThenGetKeysListContains!409 (toList!4212 lt!1672490) key!3287))))

(assert (=> b!4488156 call!312302))

(declare-fun b!4488157 () Bool)

(assert (=> b!4488157 (= e!2795338 (contains!13117 (keys!17480 lt!1672490) key!3287))))

(declare-fun d!1374177 () Bool)

(assert (=> d!1374177 e!2795334))

(declare-fun res!1864685 () Bool)

(assert (=> d!1374177 (=> res!1864685 e!2795334)))

(declare-fun e!2795337 () Bool)

(assert (=> d!1374177 (= res!1864685 e!2795337)))

(declare-fun res!1864684 () Bool)

(assert (=> d!1374177 (=> (not res!1864684) (not e!2795337))))

(declare-fun lt!1672855 () Bool)

(assert (=> d!1374177 (= res!1864684 (not lt!1672855))))

(declare-fun lt!1672849 () Bool)

(assert (=> d!1374177 (= lt!1672855 lt!1672849)))

(declare-fun lt!1672852 () Unit!90274)

(assert (=> d!1374177 (= lt!1672852 e!2795335)))

(assert (=> d!1374177 (= c!764418 lt!1672849)))

(assert (=> d!1374177 (= lt!1672849 (containsKey!1621 (toList!4212 lt!1672490) key!3287))))

(assert (=> d!1374177 (= (contains!13113 lt!1672490 key!3287) lt!1672855)))

(declare-fun b!4488158 () Bool)

(assert (=> b!4488158 false))

(declare-fun lt!1672853 () Unit!90274)

(declare-fun lt!1672850 () Unit!90274)

(assert (=> b!4488158 (= lt!1672853 lt!1672850)))

(assert (=> b!4488158 (containsKey!1621 (toList!4212 lt!1672490) key!3287)))

(assert (=> b!4488158 (= lt!1672850 (lemmaInGetKeysListThenContainsKey!412 (toList!4212 lt!1672490) key!3287))))

(declare-fun Unit!90363 () Unit!90274)

(assert (=> b!4488158 (= e!2795339 Unit!90363)))

(declare-fun b!4488159 () Bool)

(assert (=> b!4488159 (= e!2795337 (not (contains!13117 (keys!17480 lt!1672490) key!3287)))))

(assert (= (and d!1374177 c!764418) b!4488156))

(assert (= (and d!1374177 (not c!764418)) b!4488155))

(assert (= (and b!4488155 c!764417) b!4488158))

(assert (= (and b!4488155 (not c!764417)) b!4488151))

(assert (= (or b!4488156 b!4488155) bm!312297))

(assert (= (and bm!312297 c!764416) b!4488152))

(assert (= (and bm!312297 (not c!764416)) b!4488153))

(assert (= (and d!1374177 res!1864684) b!4488159))

(assert (= (and d!1374177 (not res!1864685)) b!4488154))

(assert (= (and b!4488154 res!1864683) b!4488157))

(declare-fun m!5209857 () Bool)

(assert (=> d!1374177 m!5209857))

(assert (=> b!4488153 m!5209139))

(declare-fun m!5209859 () Bool)

(assert (=> bm!312297 m!5209859))

(declare-fun m!5209861 () Bool)

(assert (=> b!4488154 m!5209861))

(assert (=> b!4488154 m!5209861))

(declare-fun m!5209863 () Bool)

(assert (=> b!4488154 m!5209863))

(declare-fun m!5209865 () Bool)

(assert (=> b!4488156 m!5209865))

(assert (=> b!4488156 m!5209861))

(assert (=> b!4488156 m!5209861))

(assert (=> b!4488156 m!5209863))

(declare-fun m!5209867 () Bool)

(assert (=> b!4488156 m!5209867))

(declare-fun m!5209869 () Bool)

(assert (=> b!4488152 m!5209869))

(assert (=> b!4488157 m!5209139))

(assert (=> b!4488157 m!5209139))

(declare-fun m!5209871 () Bool)

(assert (=> b!4488157 m!5209871))

(assert (=> b!4488159 m!5209139))

(assert (=> b!4488159 m!5209139))

(assert (=> b!4488159 m!5209871))

(assert (=> b!4488158 m!5209857))

(declare-fun m!5209873 () Bool)

(assert (=> b!4488158 m!5209873))

(assert (=> d!1373931 d!1374177))

(declare-fun bm!312325 () Bool)

(declare-fun call!312330 () (InoxSet tuple2!50842))

(assert (=> bm!312325 (= call!312330 (content!8201 (t!357556 (toList!4212 lt!1672303))))))

(declare-fun bm!312326 () Bool)

(declare-fun call!312333 () Bool)

(declare-fun c!764460 () Bool)

(declare-fun lt!1672970 () K!11895)

(declare-fun e!2795412 () List!50602)

(assert (=> bm!312326 (= call!312333 (containsKey!1621 e!2795412 (ite c!764460 lt!1672970 (_1!28715 (h!56279 (toList!4212 lt!1672303))))))))

(declare-fun c!764464 () Bool)

(assert (=> bm!312326 (= c!764464 c!764460)))

(declare-fun b!4488282 () Bool)

(declare-fun call!312332 () (InoxSet tuple2!50842))

(declare-fun call!312334 () (InoxSet tuple2!50842))

(declare-fun e!2795417 () Bool)

(declare-fun get!16477 (Option!11008) V!12141)

(assert (=> b!4488282 (= e!2795417 (= call!312334 ((_ map and) call!312332 ((_ map not) (store ((as const (Array tuple2!50842 Bool)) false) (tuple2!50843 key!3287 (get!16477 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))) true)))))))

(assert (=> b!4488282 (containsKey!1621 (toList!4212 lt!1672303) key!3287)))

(declare-fun lt!1672955 () Unit!90274)

(assert (=> b!4488282 (= lt!1672955 (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 lt!1672303) key!3287))))

(assert (=> b!4488282 (isDefined!8295 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))))

(declare-fun lt!1672968 () Unit!90274)

(assert (=> b!4488282 (= lt!1672968 lt!1672955)))

(declare-fun b!4488283 () Bool)

(assert (=> b!4488283 (= e!2795412 (t!357556 (toList!4212 lt!1672303)))))

(declare-fun bm!312327 () Bool)

(declare-fun call!312335 () (InoxSet tuple2!50842))

(assert (=> bm!312327 (= call!312335 (content!8201 (toList!4212 lt!1672303)))))

(declare-fun b!4488284 () Bool)

(assert (=> b!4488284 (= e!2795412 (removePresrvNoDuplicatedKeys!89 (t!357556 (toList!4212 lt!1672303)) key!3287))))

(declare-fun b!4488285 () Bool)

(declare-fun e!2795413 () Unit!90274)

(declare-fun Unit!90368 () Unit!90274)

(assert (=> b!4488285 (= e!2795413 Unit!90368)))

(declare-fun b!4488286 () Bool)

(assert (=> b!4488286 (= e!2795417 (= call!312334 call!312332))))

(declare-fun b!4488287 () Bool)

(declare-fun e!2795418 () Unit!90274)

(declare-fun Unit!90369 () Unit!90274)

(assert (=> b!4488287 (= e!2795418 Unit!90369)))

(declare-fun lt!1672969 () Unit!90274)

(assert (=> b!4488287 (= lt!1672969 (lemmaInGetKeysListThenContainsKey!412 (t!357556 (toList!4212 lt!1672303)) (_1!28715 (h!56279 (toList!4212 lt!1672303)))))))

(declare-fun call!312331 () Bool)

(assert (=> b!4488287 call!312331))

(declare-fun lt!1672964 () Unit!90274)

(assert (=> b!4488287 (= lt!1672964 lt!1672969)))

(assert (=> b!4488287 false))

(declare-fun b!4488288 () Bool)

(declare-fun res!1864728 () Bool)

(declare-fun e!2795414 () Bool)

(assert (=> b!4488288 (=> (not res!1864728) (not e!2795414))))

(declare-fun lt!1672971 () List!50602)

(assert (=> b!4488288 (= res!1864728 (= (content!8202 (getKeysList!413 lt!1672971)) ((_ map and) (content!8202 (getKeysList!413 (toList!4212 lt!1672303))) ((_ map not) (store ((as const (Array K!11895 Bool)) false) key!3287 true)))))))

(declare-fun b!4488289 () Bool)

(assert (=> b!4488289 (= call!312330 ((_ map and) call!312335 ((_ map not) (store ((as const (Array tuple2!50842 Bool)) false) (tuple2!50843 key!3287 (get!16477 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))) true))))))

(declare-fun lt!1672962 () Unit!90274)

(assert (=> b!4488289 (= lt!1672962 e!2795413)))

(declare-fun c!764463 () Bool)

(declare-fun contains!13119 (List!50602 tuple2!50842) Bool)

(assert (=> b!4488289 (= c!764463 (contains!13119 (t!357556 (toList!4212 lt!1672303)) (tuple2!50843 key!3287 (get!16477 (getValueByKey!988 (toList!4212 lt!1672303) key!3287)))))))

(declare-fun e!2795410 () Unit!90274)

(declare-fun Unit!90370 () Unit!90274)

(assert (=> b!4488289 (= e!2795410 Unit!90370)))

(declare-fun b!4488290 () Bool)

(declare-fun res!1864727 () Bool)

(assert (=> b!4488290 (=> (not res!1864727) (not e!2795414))))

(assert (=> b!4488290 (= res!1864727 (not (containsKey!1621 lt!1672971 key!3287)))))

(declare-fun b!4488291 () Bool)

(declare-fun e!2795416 () List!50602)

(declare-fun e!2795411 () List!50602)

(assert (=> b!4488291 (= e!2795416 e!2795411)))

(declare-fun c!764466 () Bool)

(assert (=> b!4488291 (= c!764466 (and ((_ is Cons!50478) (toList!4212 lt!1672303)) (not (= (_1!28715 (h!56279 (toList!4212 lt!1672303))) key!3287))))))

(declare-fun b!4488292 () Bool)

(assert (=> b!4488292 (= e!2795411 Nil!50478)))

(declare-fun b!4488293 () Bool)

(declare-fun lt!1672954 () Unit!90274)

(declare-fun e!2795415 () Unit!90274)

(assert (=> b!4488293 (= lt!1672954 e!2795415)))

(declare-fun c!764461 () Bool)

(assert (=> b!4488293 (= c!764461 call!312333)))

(declare-fun lt!1672956 () Unit!90274)

(assert (=> b!4488293 (= lt!1672956 e!2795418)))

(declare-fun c!764465 () Bool)

(assert (=> b!4488293 (= c!764465 (contains!13117 (getKeysList!413 (t!357556 (toList!4212 lt!1672303))) (_1!28715 (h!56279 (toList!4212 lt!1672303)))))))

(declare-fun lt!1672963 () List!50602)

(declare-fun $colon$colon!869 (List!50602 tuple2!50842) List!50602)

(assert (=> b!4488293 (= lt!1672963 ($colon$colon!869 (removePresrvNoDuplicatedKeys!89 (t!357556 (toList!4212 lt!1672303)) key!3287) (h!56279 (toList!4212 lt!1672303))))))

(assert (=> b!4488293 (= e!2795411 lt!1672963)))

(declare-fun b!4488294 () Bool)

(declare-fun Unit!90371 () Unit!90274)

(assert (=> b!4488294 (= e!2795413 Unit!90371)))

(declare-fun lt!1672958 () V!12141)

(assert (=> b!4488294 (= lt!1672958 (get!16477 (getValueByKey!988 (toList!4212 lt!1672303) key!3287)))))

(assert (=> b!4488294 (= lt!1672970 key!3287)))

(declare-fun lt!1672957 () K!11895)

(assert (=> b!4488294 (= lt!1672957 key!3287)))

(declare-fun lt!1672960 () Unit!90274)

(declare-fun lemmaContainsTupleThenContainsKey!31 (List!50602 K!11895 V!12141) Unit!90274)

(assert (=> b!4488294 (= lt!1672960 (lemmaContainsTupleThenContainsKey!31 (t!357556 (toList!4212 lt!1672303)) lt!1672970 (get!16477 (getValueByKey!988 (toList!4212 lt!1672303) key!3287))))))

(assert (=> b!4488294 call!312333))

(declare-fun lt!1672959 () Unit!90274)

(assert (=> b!4488294 (= lt!1672959 lt!1672960)))

(assert (=> b!4488294 false))

(declare-fun b!4488295 () Bool)

(declare-fun Unit!90372 () Unit!90274)

(assert (=> b!4488295 (= e!2795415 Unit!90372)))

(declare-fun lt!1672967 () List!50602)

(assert (=> b!4488295 (= lt!1672967 (removePresrvNoDuplicatedKeys!89 (t!357556 (toList!4212 lt!1672303)) key!3287))))

(declare-fun lt!1672966 () Unit!90274)

(assert (=> b!4488295 (= lt!1672966 (lemmaInListThenGetKeysListContains!409 lt!1672967 (_1!28715 (h!56279 (toList!4212 lt!1672303)))))))

(assert (=> b!4488295 (contains!13117 (getKeysList!413 lt!1672967) (_1!28715 (h!56279 (toList!4212 lt!1672303))))))

(declare-fun lt!1672961 () Unit!90274)

(assert (=> b!4488295 (= lt!1672961 lt!1672966)))

(assert (=> b!4488295 false))

(declare-fun d!1374179 () Bool)

(assert (=> d!1374179 e!2795414))

(declare-fun res!1864726 () Bool)

(assert (=> d!1374179 (=> (not res!1864726) (not e!2795414))))

(assert (=> d!1374179 (= res!1864726 (invariantList!965 lt!1672971))))

(assert (=> d!1374179 (= lt!1672971 e!2795416)))

(assert (=> d!1374179 (= c!764460 (and ((_ is Cons!50478) (toList!4212 lt!1672303)) (= (_1!28715 (h!56279 (toList!4212 lt!1672303))) key!3287)))))

(assert (=> d!1374179 (invariantList!965 (toList!4212 lt!1672303))))

(assert (=> d!1374179 (= (removePresrvNoDuplicatedKeys!89 (toList!4212 lt!1672303) key!3287) lt!1672971)))

(declare-fun b!4488296 () Bool)

(declare-fun Unit!90373 () Unit!90274)

(assert (=> b!4488296 (= e!2795415 Unit!90373)))

(declare-fun bm!312328 () Bool)

(assert (=> bm!312328 (= call!312331 (containsKey!1621 (ite c!764460 (toList!4212 lt!1672303) (t!357556 (toList!4212 lt!1672303))) (ite c!764460 key!3287 (_1!28715 (h!56279 (toList!4212 lt!1672303))))))))

(declare-fun b!4488297 () Bool)

(assert (=> b!4488297 (= e!2795416 (t!357556 (toList!4212 lt!1672303)))))

(declare-fun c!764462 () Bool)

(assert (=> b!4488297 (= c!764462 call!312331)))

(declare-fun lt!1672965 () Unit!90274)

(assert (=> b!4488297 (= lt!1672965 e!2795410)))

(declare-fun b!4488298 () Bool)

(assert (=> b!4488298 (= e!2795414 e!2795417)))

(declare-fun c!764467 () Bool)

(assert (=> b!4488298 (= c!764467 (containsKey!1621 (toList!4212 lt!1672303) key!3287))))

(declare-fun b!4488299 () Bool)

(declare-fun Unit!90374 () Unit!90274)

(assert (=> b!4488299 (= e!2795418 Unit!90374)))

(declare-fun bm!312329 () Bool)

(assert (=> bm!312329 (= call!312332 (content!8201 (toList!4212 lt!1672303)))))

(declare-fun b!4488300 () Bool)

(assert (=> b!4488300 (= call!312330 call!312335)))

(declare-fun Unit!90375 () Unit!90274)

(assert (=> b!4488300 (= e!2795410 Unit!90375)))

(declare-fun bm!312330 () Bool)

(assert (=> bm!312330 (= call!312334 (content!8201 lt!1672971))))

(assert (= (and d!1374179 c!764460) b!4488297))

(assert (= (and d!1374179 (not c!764460)) b!4488291))

(assert (= (and b!4488297 c!764462) b!4488289))

(assert (= (and b!4488297 (not c!764462)) b!4488300))

(assert (= (and b!4488289 c!764463) b!4488294))

(assert (= (and b!4488289 (not c!764463)) b!4488285))

(assert (= (or b!4488289 b!4488300) bm!312325))

(assert (= (or b!4488289 b!4488300) bm!312327))

(assert (= (and b!4488291 c!764466) b!4488293))

(assert (= (and b!4488291 (not c!764466)) b!4488292))

(assert (= (and b!4488293 c!764465) b!4488287))

(assert (= (and b!4488293 (not c!764465)) b!4488299))

(assert (= (and b!4488293 c!764461) b!4488295))

(assert (= (and b!4488293 (not c!764461)) b!4488296))

(assert (= (or b!4488297 b!4488287) bm!312328))

(assert (= (or b!4488294 b!4488293) bm!312326))

(assert (= (and bm!312326 c!764464) b!4488283))

(assert (= (and bm!312326 (not c!764464)) b!4488284))

(assert (= (and d!1374179 res!1864726) b!4488290))

(assert (= (and b!4488290 res!1864727) b!4488288))

(assert (= (and b!4488288 res!1864728) b!4488298))

(assert (= (and b!4488298 c!764467) b!4488282))

(assert (= (and b!4488298 (not c!764467)) b!4488286))

(assert (= (or b!4488282 b!4488286) bm!312330))

(assert (= (or b!4488282 b!4488286) bm!312329))

(declare-fun m!5210035 () Bool)

(assert (=> bm!312326 m!5210035))

(declare-fun m!5210037 () Bool)

(assert (=> d!1374179 m!5210037))

(assert (=> d!1374179 m!5209241))

(assert (=> b!4488282 m!5209087))

(declare-fun m!5210039 () Bool)

(assert (=> b!4488282 m!5210039))

(assert (=> b!4488282 m!5209087))

(declare-fun m!5210041 () Bool)

(assert (=> b!4488282 m!5210041))

(assert (=> b!4488282 m!5209081))

(assert (=> b!4488282 m!5209087))

(assert (=> b!4488282 m!5209089))

(assert (=> b!4488282 m!5209091))

(assert (=> b!4488294 m!5209087))

(assert (=> b!4488294 m!5209087))

(assert (=> b!4488294 m!5210039))

(assert (=> b!4488294 m!5210039))

(declare-fun m!5210043 () Bool)

(assert (=> b!4488294 m!5210043))

(assert (=> b!4488298 m!5209081))

(declare-fun m!5210045 () Bool)

(assert (=> bm!312329 m!5210045))

(assert (=> bm!312327 m!5210045))

(declare-fun m!5210047 () Bool)

(assert (=> b!4488284 m!5210047))

(declare-fun m!5210049 () Bool)

(assert (=> bm!312328 m!5210049))

(declare-fun m!5210051 () Bool)

(assert (=> b!4488287 m!5210051))

(declare-fun m!5210053 () Bool)

(assert (=> b!4488290 m!5210053))

(declare-fun m!5210055 () Bool)

(assert (=> bm!312325 m!5210055))

(declare-fun m!5210057 () Bool)

(assert (=> b!4488293 m!5210057))

(assert (=> b!4488293 m!5210057))

(declare-fun m!5210059 () Bool)

(assert (=> b!4488293 m!5210059))

(assert (=> b!4488293 m!5210047))

(assert (=> b!4488293 m!5210047))

(declare-fun m!5210061 () Bool)

(assert (=> b!4488293 m!5210061))

(assert (=> b!4488288 m!5209095))

(assert (=> b!4488288 m!5209095))

(declare-fun m!5210063 () Bool)

(assert (=> b!4488288 m!5210063))

(assert (=> b!4488288 m!5209145))

(declare-fun m!5210065 () Bool)

(assert (=> b!4488288 m!5210065))

(assert (=> b!4488288 m!5210065))

(declare-fun m!5210067 () Bool)

(assert (=> b!4488288 m!5210067))

(assert (=> b!4488289 m!5209087))

(assert (=> b!4488289 m!5209087))

(assert (=> b!4488289 m!5210039))

(assert (=> b!4488289 m!5210041))

(declare-fun m!5210069 () Bool)

(assert (=> b!4488289 m!5210069))

(declare-fun m!5210071 () Bool)

(assert (=> bm!312330 m!5210071))

(assert (=> b!4488295 m!5210047))

(declare-fun m!5210073 () Bool)

(assert (=> b!4488295 m!5210073))

(declare-fun m!5210075 () Bool)

(assert (=> b!4488295 m!5210075))

(assert (=> b!4488295 m!5210075))

(declare-fun m!5210077 () Bool)

(assert (=> b!4488295 m!5210077))

(assert (=> d!1373931 d!1374179))

(assert (=> d!1373857 d!1373829))

(assert (=> d!1373857 d!1373851))

(declare-fun d!1374231 () Bool)

(assert (=> d!1374231 (not (contains!13113 (extractMap!1158 (toList!4211 lm!1477)) key!3287))))

(assert (=> d!1374231 true))

(declare-fun _$26!281 () Unit!90274)

(assert (=> d!1374231 (= (choose!28893 lm!1477 key!3287 hashF!1107) _$26!281)))

(declare-fun bs!826841 () Bool)

(assert (= bs!826841 d!1374231))

(assert (=> bs!826841 m!5208719))

(assert (=> bs!826841 m!5208719))

(assert (=> bs!826841 m!5208721))

(assert (=> d!1373857 d!1374231))

(declare-fun d!1374233 () Bool)

(declare-fun res!1864741 () Bool)

(declare-fun e!2795437 () Bool)

(assert (=> d!1374233 (=> res!1864741 e!2795437)))

(assert (=> d!1374233 (= res!1864741 ((_ is Nil!50479) (toList!4211 lm!1477)))))

(assert (=> d!1374233 (= (forall!10122 (toList!4211 lm!1477) lambda!166719) e!2795437)))

(declare-fun b!4488337 () Bool)

(declare-fun e!2795438 () Bool)

(assert (=> b!4488337 (= e!2795437 e!2795438)))

(declare-fun res!1864742 () Bool)

(assert (=> b!4488337 (=> (not res!1864742) (not e!2795438))))

(assert (=> b!4488337 (= res!1864742 (dynLambda!21071 lambda!166719 (h!56280 (toList!4211 lm!1477))))))

(declare-fun b!4488338 () Bool)

(assert (=> b!4488338 (= e!2795438 (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166719))))

(assert (= (and d!1374233 (not res!1864741)) b!4488337))

(assert (= (and b!4488337 res!1864742) b!4488338))

(declare-fun b_lambda!150803 () Bool)

(assert (=> (not b_lambda!150803) (not b!4488337)))

(declare-fun m!5210079 () Bool)

(assert (=> b!4488337 m!5210079))

(declare-fun m!5210081 () Bool)

(assert (=> b!4488338 m!5210081))

(assert (=> d!1373857 d!1374233))

(declare-fun d!1374235 () Bool)

(declare-fun res!1864743 () Bool)

(declare-fun e!2795439 () Bool)

(assert (=> d!1374235 (=> res!1864743 e!2795439)))

(assert (=> d!1374235 (= res!1864743 (and ((_ is Cons!50478) (_2!28716 (h!56280 (toList!4211 lt!1672305)))) (= (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lt!1672305))))) key!3287)))))

(assert (=> d!1374235 (= (containsKey!1618 (_2!28716 (h!56280 (toList!4211 lt!1672305))) key!3287) e!2795439)))

(declare-fun b!4488339 () Bool)

(declare-fun e!2795440 () Bool)

(assert (=> b!4488339 (= e!2795439 e!2795440)))

(declare-fun res!1864744 () Bool)

(assert (=> b!4488339 (=> (not res!1864744) (not e!2795440))))

(assert (=> b!4488339 (= res!1864744 ((_ is Cons!50478) (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(declare-fun b!4488340 () Bool)

(assert (=> b!4488340 (= e!2795440 (containsKey!1618 (t!357556 (_2!28716 (h!56280 (toList!4211 lt!1672305)))) key!3287))))

(assert (= (and d!1374235 (not res!1864743)) b!4488339))

(assert (= (and b!4488339 res!1864744) b!4488340))

(declare-fun m!5210083 () Bool)

(assert (=> b!4488340 m!5210083))

(assert (=> b!4487561 d!1374235))

(declare-fun d!1374237 () Bool)

(declare-fun res!1864745 () Bool)

(declare-fun e!2795443 () Bool)

(assert (=> d!1374237 (=> res!1864745 e!2795443)))

(declare-fun e!2795441 () Bool)

(assert (=> d!1374237 (= res!1864745 e!2795441)))

(declare-fun res!1864746 () Bool)

(assert (=> d!1374237 (=> (not res!1864746) (not e!2795441))))

(assert (=> d!1374237 (= res!1864746 ((_ is Cons!50479) (t!357557 (toList!4211 lt!1672305))))))

(assert (=> d!1374237 (= (containsKeyBiggerList!82 (t!357557 (toList!4211 lt!1672305)) key!3287) e!2795443)))

(declare-fun b!4488341 () Bool)

(assert (=> b!4488341 (= e!2795441 (containsKey!1618 (_2!28716 (h!56280 (t!357557 (toList!4211 lt!1672305)))) key!3287))))

(declare-fun b!4488342 () Bool)

(declare-fun e!2795442 () Bool)

(assert (=> b!4488342 (= e!2795443 e!2795442)))

(declare-fun res!1864747 () Bool)

(assert (=> b!4488342 (=> (not res!1864747) (not e!2795442))))

(assert (=> b!4488342 (= res!1864747 ((_ is Cons!50479) (t!357557 (toList!4211 lt!1672305))))))

(declare-fun b!4488343 () Bool)

(assert (=> b!4488343 (= e!2795442 (containsKeyBiggerList!82 (t!357557 (t!357557 (toList!4211 lt!1672305))) key!3287))))

(assert (= (and d!1374237 res!1864746) b!4488341))

(assert (= (and d!1374237 (not res!1864745)) b!4488342))

(assert (= (and b!4488342 res!1864747) b!4488343))

(declare-fun m!5210095 () Bool)

(assert (=> b!4488341 m!5210095))

(declare-fun m!5210097 () Bool)

(assert (=> b!4488343 m!5210097))

(assert (=> b!4487563 d!1374237))

(declare-fun d!1374241 () Bool)

(assert (=> d!1374241 (= (get!16475 (getValueByKey!989 (toList!4211 lm!1477) hash!344)) (v!44436 (getValueByKey!989 (toList!4211 lm!1477) hash!344)))))

(assert (=> d!1373939 d!1374241))

(assert (=> d!1373939 d!1374121))

(declare-fun d!1374243 () Bool)

(declare-fun res!1864755 () Bool)

(declare-fun e!2795452 () Bool)

(assert (=> d!1374243 (=> res!1864755 e!2795452)))

(assert (=> d!1374243 (= res!1864755 (and ((_ is Cons!50479) (toList!4211 lm!1477)) (= (_1!28716 (h!56280 (toList!4211 lm!1477))) lt!1672307)))))

(assert (=> d!1374243 (= (containsKey!1622 (toList!4211 lm!1477) lt!1672307) e!2795452)))

(declare-fun b!4488357 () Bool)

(declare-fun e!2795453 () Bool)

(assert (=> b!4488357 (= e!2795452 e!2795453)))

(declare-fun res!1864756 () Bool)

(assert (=> b!4488357 (=> (not res!1864756) (not e!2795453))))

(assert (=> b!4488357 (= res!1864756 (and (or (not ((_ is Cons!50479) (toList!4211 lm!1477))) (bvsle (_1!28716 (h!56280 (toList!4211 lm!1477))) lt!1672307)) ((_ is Cons!50479) (toList!4211 lm!1477)) (bvslt (_1!28716 (h!56280 (toList!4211 lm!1477))) lt!1672307)))))

(declare-fun b!4488358 () Bool)

(assert (=> b!4488358 (= e!2795453 (containsKey!1622 (t!357557 (toList!4211 lm!1477)) lt!1672307))))

(assert (= (and d!1374243 (not res!1864755)) b!4488357))

(assert (= (and b!4488357 res!1864756) b!4488358))

(declare-fun m!5210101 () Bool)

(assert (=> b!4488358 m!5210101))

(assert (=> d!1373949 d!1374243))

(declare-fun d!1374247 () Bool)

(declare-fun lt!1672985 () Bool)

(assert (=> d!1374247 (= lt!1672985 (select (content!8202 (keys!17480 lt!1672303)) key!3287))))

(declare-fun e!2795454 () Bool)

(assert (=> d!1374247 (= lt!1672985 e!2795454)))

(declare-fun res!1864757 () Bool)

(assert (=> d!1374247 (=> (not res!1864757) (not e!2795454))))

(assert (=> d!1374247 (= res!1864757 ((_ is Cons!50481) (keys!17480 lt!1672303)))))

(assert (=> d!1374247 (= (contains!13117 (keys!17480 lt!1672303) key!3287) lt!1672985)))

(declare-fun b!4488359 () Bool)

(declare-fun e!2795455 () Bool)

(assert (=> b!4488359 (= e!2795454 e!2795455)))

(declare-fun res!1864758 () Bool)

(assert (=> b!4488359 (=> res!1864758 e!2795455)))

(assert (=> b!4488359 (= res!1864758 (= (h!56284 (keys!17480 lt!1672303)) key!3287))))

(declare-fun b!4488360 () Bool)

(assert (=> b!4488360 (= e!2795455 (contains!13117 (t!357559 (keys!17480 lt!1672303)) key!3287))))

(assert (= (and d!1374247 res!1864757) b!4488359))

(assert (= (and b!4488359 (not res!1864758)) b!4488360))

(assert (=> d!1374247 m!5209083))

(assert (=> d!1374247 m!5209143))

(declare-fun m!5210103 () Bool)

(assert (=> d!1374247 m!5210103))

(declare-fun m!5210105 () Bool)

(assert (=> b!4488360 m!5210105))

(assert (=> b!4487629 d!1374247))

(assert (=> b!4487629 d!1374143))

(declare-fun bs!826876 () Bool)

(declare-fun b!4488361 () Bool)

(assert (= bs!826876 (and b!4488361 d!1374131)))

(declare-fun lambda!166890 () Int)

(assert (=> bs!826876 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672773) (= lambda!166890 lambda!166860))))

(declare-fun bs!826878 () Bool)

(assert (= bs!826878 (and b!4488361 b!4488040)))

(assert (=> bs!826878 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672758) (= lambda!166890 lambda!166859))))

(declare-fun bs!826880 () Bool)

(assert (= bs!826880 (and b!4488361 b!4487850)))

(assert (=> bs!826880 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166890 lambda!166832))))

(declare-fun bs!826882 () Bool)

(assert (= bs!826882 (and b!4488361 d!1373989)))

(assert (=> bs!826882 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672670) (= lambda!166890 lambda!166834))))

(declare-fun bs!826884 () Bool)

(assert (= bs!826884 (and b!4488361 d!1373921)))

(assert (=> bs!826884 (not (= lambda!166890 lambda!166746))))

(assert (=> bs!826880 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672655) (= lambda!166890 lambda!166833))))

(assert (=> bs!826878 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166890 lambda!166858))))

(declare-fun bs!826887 () Bool)

(assert (= bs!826887 (and b!4488361 b!4488038)))

(assert (=> bs!826887 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166890 lambda!166856))))

(declare-fun bs!826888 () Bool)

(assert (= bs!826888 (and b!4488361 b!4487848)))

(assert (=> bs!826888 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166890 lambda!166831))))

(assert (=> b!4488361 true))

(declare-fun bs!826889 () Bool)

(declare-fun b!4488363 () Bool)

(assert (= bs!826889 (and b!4488363 d!1374131)))

(declare-fun lambda!166892 () Int)

(assert (=> bs!826889 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672773) (= lambda!166892 lambda!166860))))

(declare-fun bs!826890 () Bool)

(assert (= bs!826890 (and b!4488363 b!4488040)))

(assert (=> bs!826890 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672758) (= lambda!166892 lambda!166859))))

(declare-fun bs!826891 () Bool)

(assert (= bs!826891 (and b!4488363 b!4487850)))

(assert (=> bs!826891 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166892 lambda!166832))))

(declare-fun bs!826892 () Bool)

(assert (= bs!826892 (and b!4488363 d!1373989)))

(assert (=> bs!826892 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672670) (= lambda!166892 lambda!166834))))

(declare-fun bs!826893 () Bool)

(assert (= bs!826893 (and b!4488363 d!1373921)))

(assert (=> bs!826893 (not (= lambda!166892 lambda!166746))))

(assert (=> bs!826891 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672655) (= lambda!166892 lambda!166833))))

(assert (=> bs!826890 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166892 lambda!166858))))

(declare-fun bs!826894 () Bool)

(assert (= bs!826894 (and b!4488363 b!4488361)))

(assert (=> bs!826894 (= lambda!166892 lambda!166890)))

(declare-fun bs!826895 () Bool)

(assert (= bs!826895 (and b!4488363 b!4488038)))

(assert (=> bs!826895 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166892 lambda!166856))))

(declare-fun bs!826896 () Bool)

(assert (= bs!826896 (and b!4488363 b!4487848)))

(assert (=> bs!826896 (= (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166892 lambda!166831))))

(assert (=> b!4488363 true))

(declare-fun lambda!166893 () Int)

(declare-fun lt!1672988 () ListMap!3473)

(assert (=> bs!826889 (= (= lt!1672988 lt!1672773) (= lambda!166893 lambda!166860))))

(assert (=> bs!826890 (= (= lt!1672988 lt!1672758) (= lambda!166893 lambda!166859))))

(assert (=> b!4488363 (= (= lt!1672988 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166893 lambda!166892))))

(assert (=> bs!826891 (= (= lt!1672988 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166893 lambda!166832))))

(assert (=> bs!826892 (= (= lt!1672988 lt!1672670) (= lambda!166893 lambda!166834))))

(assert (=> bs!826893 (not (= lambda!166893 lambda!166746))))

(assert (=> bs!826891 (= (= lt!1672988 lt!1672655) (= lambda!166893 lambda!166833))))

(assert (=> bs!826890 (= (= lt!1672988 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166893 lambda!166858))))

(assert (=> bs!826894 (= (= lt!1672988 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166893 lambda!166890))))

(assert (=> bs!826895 (= (= lt!1672988 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166893 lambda!166856))))

(assert (=> bs!826896 (= (= lt!1672988 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166893 lambda!166831))))

(assert (=> b!4488363 true))

(declare-fun bs!826902 () Bool)

(declare-fun d!1374249 () Bool)

(assert (= bs!826902 (and d!1374249 d!1374131)))

(declare-fun lt!1673003 () ListMap!3473)

(declare-fun lambda!166895 () Int)

(assert (=> bs!826902 (= (= lt!1673003 lt!1672773) (= lambda!166895 lambda!166860))))

(declare-fun bs!826904 () Bool)

(assert (= bs!826904 (and d!1374249 b!4488040)))

(assert (=> bs!826904 (= (= lt!1673003 lt!1672758) (= lambda!166895 lambda!166859))))

(declare-fun bs!826906 () Bool)

(assert (= bs!826906 (and d!1374249 b!4488363)))

(assert (=> bs!826906 (= (= lt!1673003 lt!1672988) (= lambda!166895 lambda!166893))))

(assert (=> bs!826906 (= (= lt!1673003 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166895 lambda!166892))))

(declare-fun bs!826909 () Bool)

(assert (= bs!826909 (and d!1374249 b!4487850)))

(assert (=> bs!826909 (= (= lt!1673003 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166895 lambda!166832))))

(declare-fun bs!826911 () Bool)

(assert (= bs!826911 (and d!1374249 d!1373989)))

(assert (=> bs!826911 (= (= lt!1673003 lt!1672670) (= lambda!166895 lambda!166834))))

(declare-fun bs!826912 () Bool)

(assert (= bs!826912 (and d!1374249 d!1373921)))

(assert (=> bs!826912 (not (= lambda!166895 lambda!166746))))

(assert (=> bs!826909 (= (= lt!1673003 lt!1672655) (= lambda!166895 lambda!166833))))

(assert (=> bs!826904 (= (= lt!1673003 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166895 lambda!166858))))

(declare-fun bs!826915 () Bool)

(assert (= bs!826915 (and d!1374249 b!4488361)))

(assert (=> bs!826915 (= (= lt!1673003 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166895 lambda!166890))))

(declare-fun bs!826916 () Bool)

(assert (= bs!826916 (and d!1374249 b!4488038)))

(assert (=> bs!826916 (= (= lt!1673003 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166895 lambda!166856))))

(declare-fun bs!826917 () Bool)

(assert (= bs!826917 (and d!1374249 b!4487848)))

(assert (=> bs!826917 (= (= lt!1673003 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166895 lambda!166831))))

(assert (=> d!1374249 true))

(declare-fun call!312347 () Bool)

(declare-fun c!764483 () Bool)

(declare-fun bm!312340 () Bool)

(assert (=> bm!312340 (= call!312347 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (ite c!764483 lambda!166890 lambda!166893)))))

(declare-fun bm!312341 () Bool)

(declare-fun call!312345 () Unit!90274)

(assert (=> bm!312341 (= call!312345 (lemmaContainsAllItsOwnKeys!294 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))))))

(declare-fun e!2795456 () ListMap!3473)

(assert (=> b!4488361 (= e!2795456 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun lt!1673000 () Unit!90274)

(assert (=> b!4488361 (= lt!1673000 call!312345)))

(declare-fun call!312346 () Bool)

(assert (=> b!4488361 call!312346))

(declare-fun lt!1672993 () Unit!90274)

(assert (=> b!4488361 (= lt!1672993 lt!1673000)))

(assert (=> b!4488361 call!312347))

(declare-fun lt!1672990 () Unit!90274)

(declare-fun Unit!90387 () Unit!90274)

(assert (=> b!4488361 (= lt!1672990 Unit!90387)))

(declare-fun bm!312342 () Bool)

(assert (=> bm!312342 (= call!312346 (forall!10124 (ite c!764483 (toList!4212 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))) (ite c!764483 lambda!166890 lambda!166893)))))

(declare-fun b!4488362 () Bool)

(declare-fun e!2795457 () Bool)

(assert (=> b!4488362 (= e!2795457 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) lambda!166893))))

(assert (=> b!4488363 (= e!2795456 lt!1672988)))

(declare-fun lt!1672987 () ListMap!3473)

(assert (=> b!4488363 (= lt!1672987 (+!1438 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))))))

(assert (=> b!4488363 (= lt!1672988 (addToMapMapFromBucket!633 (t!357556 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))) (+!1438 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))))

(declare-fun lt!1672995 () Unit!90274)

(assert (=> b!4488363 (= lt!1672995 call!312345)))

(assert (=> b!4488363 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) lambda!166892)))

(declare-fun lt!1672992 () Unit!90274)

(assert (=> b!4488363 (= lt!1672992 lt!1672995)))

(assert (=> b!4488363 (forall!10124 (toList!4212 lt!1672987) lambda!166893)))

(declare-fun lt!1673006 () Unit!90274)

(declare-fun Unit!90388 () Unit!90274)

(assert (=> b!4488363 (= lt!1673006 Unit!90388)))

(assert (=> b!4488363 (forall!10124 (t!357556 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))) lambda!166893)))

(declare-fun lt!1672991 () Unit!90274)

(declare-fun Unit!90389 () Unit!90274)

(assert (=> b!4488363 (= lt!1672991 Unit!90389)))

(declare-fun lt!1672998 () Unit!90274)

(declare-fun Unit!90390 () Unit!90274)

(assert (=> b!4488363 (= lt!1672998 Unit!90390)))

(declare-fun lt!1672997 () Unit!90274)

(assert (=> b!4488363 (= lt!1672997 (forallContained!2383 (toList!4212 lt!1672987) lambda!166893 (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))))))

(assert (=> b!4488363 (contains!13113 lt!1672987 (_1!28715 (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))))))

(declare-fun lt!1673004 () Unit!90274)

(declare-fun Unit!90391 () Unit!90274)

(assert (=> b!4488363 (= lt!1673004 Unit!90391)))

(assert (=> b!4488363 (contains!13113 lt!1672988 (_1!28715 (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))))))

(declare-fun lt!1672994 () Unit!90274)

(declare-fun Unit!90392 () Unit!90274)

(assert (=> b!4488363 (= lt!1672994 Unit!90392)))

(assert (=> b!4488363 (forall!10124 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))) lambda!166893)))

(declare-fun lt!1672989 () Unit!90274)

(declare-fun Unit!90393 () Unit!90274)

(assert (=> b!4488363 (= lt!1672989 Unit!90393)))

(assert (=> b!4488363 (forall!10124 (toList!4212 lt!1672987) lambda!166893)))

(declare-fun lt!1672999 () Unit!90274)

(declare-fun Unit!90394 () Unit!90274)

(assert (=> b!4488363 (= lt!1672999 Unit!90394)))

(declare-fun lt!1672986 () Unit!90274)

(declare-fun Unit!90395 () Unit!90274)

(assert (=> b!4488363 (= lt!1672986 Unit!90395)))

(declare-fun lt!1673005 () Unit!90274)

(assert (=> b!4488363 (= lt!1673005 (addForallContainsKeyThenBeforeAdding!294 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1672988 (_1!28715 (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))) (_2!28715 (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))))

(assert (=> b!4488363 call!312347))

(declare-fun lt!1673002 () Unit!90274)

(assert (=> b!4488363 (= lt!1673002 lt!1673005)))

(assert (=> b!4488363 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) lambda!166893)))

(declare-fun lt!1673001 () Unit!90274)

(declare-fun Unit!90396 () Unit!90274)

(assert (=> b!4488363 (= lt!1673001 Unit!90396)))

(declare-fun res!1864761 () Bool)

(assert (=> b!4488363 (= res!1864761 call!312346)))

(assert (=> b!4488363 (=> (not res!1864761) (not e!2795457))))

(assert (=> b!4488363 e!2795457))

(declare-fun lt!1672996 () Unit!90274)

(declare-fun Unit!90397 () Unit!90274)

(assert (=> b!4488363 (= lt!1672996 Unit!90397)))

(declare-fun b!4488364 () Bool)

(declare-fun e!2795458 () Bool)

(assert (=> b!4488364 (= e!2795458 (invariantList!965 (toList!4212 lt!1673003)))))

(declare-fun b!4488365 () Bool)

(declare-fun res!1864760 () Bool)

(assert (=> b!4488365 (=> (not res!1864760) (not e!2795458))))

(assert (=> b!4488365 (= res!1864760 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) lambda!166895))))

(assert (=> d!1374249 e!2795458))

(declare-fun res!1864759 () Bool)

(assert (=> d!1374249 (=> (not res!1864759) (not e!2795458))))

(assert (=> d!1374249 (= res!1864759 (forall!10124 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))) lambda!166895))))

(assert (=> d!1374249 (= lt!1673003 e!2795456)))

(assert (=> d!1374249 (= c!764483 ((_ is Nil!50478) (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))

(assert (=> d!1374249 (noDuplicateKeys!1102 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374249 (= (addToMapMapFromBucket!633 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) lt!1673003)))

(assert (= (and d!1374249 c!764483) b!4488361))

(assert (= (and d!1374249 (not c!764483)) b!4488363))

(assert (= (and b!4488363 res!1864761) b!4488362))

(assert (= (or b!4488361 b!4488363) bm!312342))

(assert (= (or b!4488361 b!4488363) bm!312340))

(assert (= (or b!4488361 b!4488363) bm!312341))

(assert (= (and d!1374249 res!1864759) b!4488365))

(assert (= (and b!4488365 res!1864760) b!4488364))

(declare-fun m!5210145 () Bool)

(assert (=> d!1374249 m!5210145))

(declare-fun m!5210147 () Bool)

(assert (=> d!1374249 m!5210147))

(declare-fun m!5210149 () Bool)

(assert (=> b!4488365 m!5210149))

(declare-fun m!5210151 () Bool)

(assert (=> bm!312340 m!5210151))

(declare-fun m!5210153 () Bool)

(assert (=> b!4488364 m!5210153))

(assert (=> bm!312341 m!5209065))

(declare-fun m!5210155 () Bool)

(assert (=> bm!312341 m!5210155))

(declare-fun m!5210157 () Bool)

(assert (=> bm!312342 m!5210157))

(declare-fun m!5210159 () Bool)

(assert (=> b!4488363 m!5210159))

(declare-fun m!5210161 () Bool)

(assert (=> b!4488363 m!5210161))

(declare-fun m!5210163 () Bool)

(assert (=> b!4488363 m!5210163))

(declare-fun m!5210165 () Bool)

(assert (=> b!4488363 m!5210165))

(assert (=> b!4488363 m!5210165))

(declare-fun m!5210167 () Bool)

(assert (=> b!4488363 m!5210167))

(declare-fun m!5210169 () Bool)

(assert (=> b!4488363 m!5210169))

(declare-fun m!5210171 () Bool)

(assert (=> b!4488363 m!5210171))

(declare-fun m!5210173 () Bool)

(assert (=> b!4488363 m!5210173))

(assert (=> b!4488363 m!5209065))

(declare-fun m!5210175 () Bool)

(assert (=> b!4488363 m!5210175))

(declare-fun m!5210177 () Bool)

(assert (=> b!4488363 m!5210177))

(assert (=> b!4488363 m!5209065))

(assert (=> b!4488363 m!5210171))

(declare-fun m!5210179 () Bool)

(assert (=> b!4488363 m!5210179))

(assert (=> b!4488362 m!5210177))

(assert (=> b!4487605 d!1374249))

(declare-fun bs!826929 () Bool)

(declare-fun d!1374263 () Bool)

(assert (= bs!826929 (and d!1374263 d!1373873)))

(declare-fun lambda!166898 () Int)

(assert (=> bs!826929 (not (= lambda!166898 lambda!166722))))

(declare-fun bs!826930 () Bool)

(assert (= bs!826930 (and d!1374263 d!1373851)))

(assert (=> bs!826930 (= lambda!166898 lambda!166711)))

(declare-fun bs!826931 () Bool)

(assert (= bs!826931 (and d!1374263 d!1373883)))

(assert (=> bs!826931 (= lambda!166898 lambda!166732)))

(declare-fun bs!826932 () Bool)

(assert (= bs!826932 (and d!1374263 d!1373937)))

(assert (=> bs!826932 (= lambda!166898 lambda!166753)))

(declare-fun bs!826933 () Bool)

(assert (= bs!826933 (and d!1374263 d!1373913)))

(assert (=> bs!826933 (= lambda!166898 lambda!166743)))

(declare-fun bs!826934 () Bool)

(assert (= bs!826934 (and d!1374263 d!1374039)))

(assert (=> bs!826934 (= lambda!166898 lambda!166841)))

(declare-fun bs!826935 () Bool)

(assert (= bs!826935 (and d!1374263 d!1373857)))

(assert (=> bs!826935 (= lambda!166898 lambda!166719)))

(declare-fun bs!826936 () Bool)

(assert (= bs!826936 (and d!1374263 d!1373929)))

(assert (=> bs!826936 (= lambda!166898 lambda!166750)))

(declare-fun bs!826937 () Bool)

(assert (= bs!826937 (and d!1374263 d!1373923)))

(assert (=> bs!826937 (= lambda!166898 lambda!166747)))

(declare-fun bs!826938 () Bool)

(assert (= bs!826938 (and d!1374263 d!1373911)))

(assert (=> bs!826938 (= lambda!166898 lambda!166737)))

(declare-fun bs!826939 () Bool)

(assert (= bs!826939 (and d!1374263 d!1373901)))

(assert (=> bs!826939 (= lambda!166898 lambda!166733)))

(declare-fun bs!826940 () Bool)

(assert (= bs!826940 (and d!1374263 start!442056)))

(assert (=> bs!826940 (= lambda!166898 lambda!166699)))

(declare-fun lt!1673030 () ListMap!3473)

(assert (=> d!1374263 (invariantList!965 (toList!4212 lt!1673030))))

(declare-fun e!2795468 () ListMap!3473)

(assert (=> d!1374263 (= lt!1673030 e!2795468)))

(declare-fun c!764487 () Bool)

(assert (=> d!1374263 (= c!764487 ((_ is Cons!50479) (t!357557 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374263 (forall!10122 (t!357557 (t!357557 (toList!4211 lm!1477))) lambda!166898)))

(assert (=> d!1374263 (= (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477)))) lt!1673030)))

(declare-fun b!4488379 () Bool)

(assert (=> b!4488379 (= e!2795468 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (t!357557 (t!357557 (toList!4211 lm!1477))))) (extractMap!1158 (t!357557 (t!357557 (t!357557 (toList!4211 lm!1477)))))))))

(declare-fun b!4488380 () Bool)

(assert (=> b!4488380 (= e!2795468 (ListMap!3474 Nil!50478))))

(assert (= (and d!1374263 c!764487) b!4488379))

(assert (= (and d!1374263 (not c!764487)) b!4488380))

(declare-fun m!5210181 () Bool)

(assert (=> d!1374263 m!5210181))

(declare-fun m!5210183 () Bool)

(assert (=> d!1374263 m!5210183))

(declare-fun m!5210185 () Bool)

(assert (=> b!4488379 m!5210185))

(assert (=> b!4488379 m!5210185))

(declare-fun m!5210187 () Bool)

(assert (=> b!4488379 m!5210187))

(assert (=> b!4487605 d!1374263))

(declare-fun d!1374265 () Bool)

(declare-fun res!1864773 () Bool)

(declare-fun e!2795473 () Bool)

(assert (=> d!1374265 (=> res!1864773 e!2795473)))

(assert (=> d!1374265 (= res!1864773 ((_ is Nil!50478) newBucket!178))))

(assert (=> d!1374265 (= (forall!10124 newBucket!178 lambda!166746) e!2795473)))

(declare-fun b!4488385 () Bool)

(declare-fun e!2795474 () Bool)

(assert (=> b!4488385 (= e!2795473 e!2795474)))

(declare-fun res!1864774 () Bool)

(assert (=> b!4488385 (=> (not res!1864774) (not e!2795474))))

(declare-fun dynLambda!21073 (Int tuple2!50842) Bool)

(assert (=> b!4488385 (= res!1864774 (dynLambda!21073 lambda!166746 (h!56279 newBucket!178)))))

(declare-fun b!4488386 () Bool)

(assert (=> b!4488386 (= e!2795474 (forall!10124 (t!357556 newBucket!178) lambda!166746))))

(assert (= (and d!1374265 (not res!1864773)) b!4488385))

(assert (= (and b!4488385 res!1864774) b!4488386))

(declare-fun b_lambda!150805 () Bool)

(assert (=> (not b_lambda!150805) (not b!4488385)))

(declare-fun m!5210194 () Bool)

(assert (=> b!4488385 m!5210194))

(declare-fun m!5210197 () Bool)

(assert (=> b!4488386 m!5210197))

(assert (=> d!1373921 d!1374265))

(declare-fun bs!826953 () Bool)

(declare-fun b!4488387 () Bool)

(assert (= bs!826953 (and b!4488387 d!1374131)))

(declare-fun lambda!166900 () Int)

(assert (=> bs!826953 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672773) (= lambda!166900 lambda!166860))))

(declare-fun bs!826954 () Bool)

(assert (= bs!826954 (and b!4488387 b!4488040)))

(assert (=> bs!826954 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672758) (= lambda!166900 lambda!166859))))

(declare-fun bs!826955 () Bool)

(assert (= bs!826955 (and b!4488387 d!1374249)))

(assert (=> bs!826955 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1673003) (= lambda!166900 lambda!166895))))

(declare-fun bs!826956 () Bool)

(assert (= bs!826956 (and b!4488387 b!4488363)))

(assert (=> bs!826956 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672988) (= lambda!166900 lambda!166893))))

(assert (=> bs!826956 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166900 lambda!166892))))

(declare-fun bs!826959 () Bool)

(assert (= bs!826959 (and b!4488387 b!4487850)))

(assert (=> bs!826959 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166900 lambda!166832))))

(declare-fun bs!826961 () Bool)

(assert (= bs!826961 (and b!4488387 d!1373989)))

(assert (=> bs!826961 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672670) (= lambda!166900 lambda!166834))))

(declare-fun bs!826963 () Bool)

(assert (= bs!826963 (and b!4488387 d!1373921)))

(assert (=> bs!826963 (not (= lambda!166900 lambda!166746))))

(assert (=> bs!826959 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672655) (= lambda!166900 lambda!166833))))

(assert (=> bs!826954 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166900 lambda!166858))))

(declare-fun bs!826966 () Bool)

(assert (= bs!826966 (and b!4488387 b!4488361)))

(assert (=> bs!826966 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166900 lambda!166890))))

(declare-fun bs!826968 () Bool)

(assert (= bs!826968 (and b!4488387 b!4488038)))

(assert (=> bs!826968 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166900 lambda!166856))))

(declare-fun bs!826970 () Bool)

(assert (= bs!826970 (and b!4488387 b!4487848)))

(assert (=> bs!826970 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166900 lambda!166831))))

(assert (=> b!4488387 true))

(declare-fun bs!826976 () Bool)

(declare-fun b!4488389 () Bool)

(assert (= bs!826976 (and b!4488389 d!1374131)))

(declare-fun lambda!166902 () Int)

(assert (=> bs!826976 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672773) (= lambda!166902 lambda!166860))))

(declare-fun bs!826977 () Bool)

(assert (= bs!826977 (and b!4488389 b!4488040)))

(assert (=> bs!826977 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672758) (= lambda!166902 lambda!166859))))

(declare-fun bs!826978 () Bool)

(assert (= bs!826978 (and b!4488389 d!1374249)))

(assert (=> bs!826978 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1673003) (= lambda!166902 lambda!166895))))

(declare-fun bs!826979 () Bool)

(assert (= bs!826979 (and b!4488389 b!4488363)))

(assert (=> bs!826979 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672988) (= lambda!166902 lambda!166893))))

(assert (=> bs!826979 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166902 lambda!166892))))

(declare-fun bs!826980 () Bool)

(assert (= bs!826980 (and b!4488389 b!4487850)))

(assert (=> bs!826980 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166902 lambda!166832))))

(declare-fun bs!826981 () Bool)

(assert (= bs!826981 (and b!4488389 d!1373989)))

(assert (=> bs!826981 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672670) (= lambda!166902 lambda!166834))))

(declare-fun bs!826982 () Bool)

(assert (= bs!826982 (and b!4488389 d!1373921)))

(assert (=> bs!826982 (not (= lambda!166902 lambda!166746))))

(declare-fun bs!826983 () Bool)

(assert (= bs!826983 (and b!4488389 b!4488387)))

(assert (=> bs!826983 (= lambda!166902 lambda!166900)))

(assert (=> bs!826980 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1672655) (= lambda!166902 lambda!166833))))

(assert (=> bs!826977 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166902 lambda!166858))))

(declare-fun bs!826984 () Bool)

(assert (= bs!826984 (and b!4488389 b!4488361)))

(assert (=> bs!826984 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166902 lambda!166890))))

(declare-fun bs!826985 () Bool)

(assert (= bs!826985 (and b!4488389 b!4488038)))

(assert (=> bs!826985 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166902 lambda!166856))))

(declare-fun bs!826986 () Bool)

(assert (= bs!826986 (and b!4488389 b!4487848)))

(assert (=> bs!826986 (= (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166902 lambda!166831))))

(assert (=> b!4488389 true))

(declare-fun lambda!166903 () Int)

(declare-fun lt!1673033 () ListMap!3473)

(assert (=> b!4488389 (= (= lt!1673033 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (= lambda!166903 lambda!166902))))

(assert (=> bs!826976 (= (= lt!1673033 lt!1672773) (= lambda!166903 lambda!166860))))

(assert (=> bs!826977 (= (= lt!1673033 lt!1672758) (= lambda!166903 lambda!166859))))

(assert (=> bs!826978 (= (= lt!1673033 lt!1673003) (= lambda!166903 lambda!166895))))

(assert (=> bs!826979 (= (= lt!1673033 lt!1672988) (= lambda!166903 lambda!166893))))

(assert (=> bs!826979 (= (= lt!1673033 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166903 lambda!166892))))

(assert (=> bs!826980 (= (= lt!1673033 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166903 lambda!166832))))

(assert (=> bs!826981 (= (= lt!1673033 lt!1672670) (= lambda!166903 lambda!166834))))

(assert (=> bs!826982 (not (= lambda!166903 lambda!166746))))

(assert (=> bs!826983 (= (= lt!1673033 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (= lambda!166903 lambda!166900))))

(assert (=> bs!826980 (= (= lt!1673033 lt!1672655) (= lambda!166903 lambda!166833))))

(assert (=> bs!826977 (= (= lt!1673033 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166903 lambda!166858))))

(assert (=> bs!826984 (= (= lt!1673033 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166903 lambda!166890))))

(assert (=> bs!826985 (= (= lt!1673033 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166903 lambda!166856))))

(assert (=> bs!826986 (= (= lt!1673033 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166903 lambda!166831))))

(assert (=> b!4488389 true))

(declare-fun bs!826990 () Bool)

(declare-fun d!1374267 () Bool)

(assert (= bs!826990 (and d!1374267 b!4488389)))

(declare-fun lt!1673048 () ListMap!3473)

(declare-fun lambda!166904 () Int)

(assert (=> bs!826990 (= (= lt!1673048 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (= lambda!166904 lambda!166902))))

(assert (=> bs!826990 (= (= lt!1673048 lt!1673033) (= lambda!166904 lambda!166903))))

(declare-fun bs!826991 () Bool)

(assert (= bs!826991 (and d!1374267 d!1374131)))

(assert (=> bs!826991 (= (= lt!1673048 lt!1672773) (= lambda!166904 lambda!166860))))

(declare-fun bs!826992 () Bool)

(assert (= bs!826992 (and d!1374267 b!4488040)))

(assert (=> bs!826992 (= (= lt!1673048 lt!1672758) (= lambda!166904 lambda!166859))))

(declare-fun bs!826993 () Bool)

(assert (= bs!826993 (and d!1374267 d!1374249)))

(assert (=> bs!826993 (= (= lt!1673048 lt!1673003) (= lambda!166904 lambda!166895))))

(declare-fun bs!826994 () Bool)

(assert (= bs!826994 (and d!1374267 b!4488363)))

(assert (=> bs!826994 (= (= lt!1673048 lt!1672988) (= lambda!166904 lambda!166893))))

(assert (=> bs!826994 (= (= lt!1673048 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166904 lambda!166892))))

(declare-fun bs!826995 () Bool)

(assert (= bs!826995 (and d!1374267 b!4487850)))

(assert (=> bs!826995 (= (= lt!1673048 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166904 lambda!166832))))

(declare-fun bs!826996 () Bool)

(assert (= bs!826996 (and d!1374267 d!1373989)))

(assert (=> bs!826996 (= (= lt!1673048 lt!1672670) (= lambda!166904 lambda!166834))))

(declare-fun bs!826997 () Bool)

(assert (= bs!826997 (and d!1374267 d!1373921)))

(assert (=> bs!826997 (not (= lambda!166904 lambda!166746))))

(declare-fun bs!826998 () Bool)

(assert (= bs!826998 (and d!1374267 b!4488387)))

(assert (=> bs!826998 (= (= lt!1673048 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (= lambda!166904 lambda!166900))))

(assert (=> bs!826995 (= (= lt!1673048 lt!1672655) (= lambda!166904 lambda!166833))))

(assert (=> bs!826992 (= (= lt!1673048 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166904 lambda!166858))))

(declare-fun bs!826999 () Bool)

(assert (= bs!826999 (and d!1374267 b!4488361)))

(assert (=> bs!826999 (= (= lt!1673048 (extractMap!1158 (t!357557 (t!357557 (toList!4211 lm!1477))))) (= lambda!166904 lambda!166890))))

(declare-fun bs!827000 () Bool)

(assert (= bs!827000 (and d!1374267 b!4488038)))

(assert (=> bs!827000 (= (= lt!1673048 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) (= lambda!166904 lambda!166856))))

(declare-fun bs!827001 () Bool)

(assert (= bs!827001 (and d!1374267 b!4487848)))

(assert (=> bs!827001 (= (= lt!1673048 (extractMap!1158 (t!357557 (toList!4211 lt!1672305)))) (= lambda!166904 lambda!166831))))

(assert (=> d!1374267 true))

(declare-fun c!764488 () Bool)

(declare-fun call!312353 () Bool)

(declare-fun bm!312346 () Bool)

(assert (=> bm!312346 (= call!312353 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (ite c!764488 lambda!166900 lambda!166903)))))

(declare-fun call!312351 () Unit!90274)

(declare-fun bm!312347 () Bool)

(assert (=> bm!312347 (= call!312351 (lemmaContainsAllItsOwnKeys!294 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))

(declare-fun e!2795475 () ListMap!3473)

(assert (=> b!4488387 (= e!2795475 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))

(declare-fun lt!1673045 () Unit!90274)

(assert (=> b!4488387 (= lt!1673045 call!312351)))

(declare-fun call!312352 () Bool)

(assert (=> b!4488387 call!312352))

(declare-fun lt!1673038 () Unit!90274)

(assert (=> b!4488387 (= lt!1673038 lt!1673045)))

(assert (=> b!4488387 call!312353))

(declare-fun lt!1673035 () Unit!90274)

(declare-fun Unit!90399 () Unit!90274)

(assert (=> b!4488387 (= lt!1673035 Unit!90399)))

(declare-fun bm!312348 () Bool)

(assert (=> bm!312348 (= call!312352 (forall!10124 (ite c!764488 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (ite c!764488 lambda!166900 lambda!166903)))))

(declare-fun e!2795476 () Bool)

(declare-fun b!4488388 () Bool)

(assert (=> b!4488388 (= e!2795476 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) lambda!166903))))

(assert (=> b!4488389 (= e!2795475 lt!1673033)))

(declare-fun lt!1673032 () ListMap!3473)

(assert (=> b!4488389 (= lt!1673032 (+!1438 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))))

(assert (=> b!4488389 (= lt!1673033 (addToMapMapFromBucket!633 (t!357556 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (+!1438 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))))

(declare-fun lt!1673040 () Unit!90274)

(assert (=> b!4488389 (= lt!1673040 call!312351)))

(assert (=> b!4488389 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) lambda!166902)))

(declare-fun lt!1673037 () Unit!90274)

(assert (=> b!4488389 (= lt!1673037 lt!1673040)))

(assert (=> b!4488389 (forall!10124 (toList!4212 lt!1673032) lambda!166903)))

(declare-fun lt!1673051 () Unit!90274)

(declare-fun Unit!90400 () Unit!90274)

(assert (=> b!4488389 (= lt!1673051 Unit!90400)))

(assert (=> b!4488389 (forall!10124 (t!357556 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) lambda!166903)))

(declare-fun lt!1673036 () Unit!90274)

(declare-fun Unit!90401 () Unit!90274)

(assert (=> b!4488389 (= lt!1673036 Unit!90401)))

(declare-fun lt!1673043 () Unit!90274)

(declare-fun Unit!90402 () Unit!90274)

(assert (=> b!4488389 (= lt!1673043 Unit!90402)))

(declare-fun lt!1673042 () Unit!90274)

(assert (=> b!4488389 (= lt!1673042 (forallContained!2383 (toList!4212 lt!1673032) lambda!166903 (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))))

(assert (=> b!4488389 (contains!13113 lt!1673032 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))))

(declare-fun lt!1673049 () Unit!90274)

(declare-fun Unit!90403 () Unit!90274)

(assert (=> b!4488389 (= lt!1673049 Unit!90403)))

(assert (=> b!4488389 (contains!13113 lt!1673033 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))))

(declare-fun lt!1673039 () Unit!90274)

(declare-fun Unit!90404 () Unit!90274)

(assert (=> b!4488389 (= lt!1673039 Unit!90404)))

(assert (=> b!4488389 (forall!10124 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lambda!166903)))

(declare-fun lt!1673034 () Unit!90274)

(declare-fun Unit!90405 () Unit!90274)

(assert (=> b!4488389 (= lt!1673034 Unit!90405)))

(assert (=> b!4488389 (forall!10124 (toList!4212 lt!1673032) lambda!166903)))

(declare-fun lt!1673044 () Unit!90274)

(declare-fun Unit!90406 () Unit!90274)

(assert (=> b!4488389 (= lt!1673044 Unit!90406)))

(declare-fun lt!1673031 () Unit!90274)

(declare-fun Unit!90407 () Unit!90274)

(assert (=> b!4488389 (= lt!1673031 Unit!90407)))

(declare-fun lt!1673050 () Unit!90274)

(assert (=> b!4488389 (= lt!1673050 (addForallContainsKeyThenBeforeAdding!294 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1673033 (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))) (_2!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))))

(assert (=> b!4488389 call!312353))

(declare-fun lt!1673047 () Unit!90274)

(assert (=> b!4488389 (= lt!1673047 lt!1673050)))

(assert (=> b!4488389 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) lambda!166903)))

(declare-fun lt!1673046 () Unit!90274)

(declare-fun Unit!90408 () Unit!90274)

(assert (=> b!4488389 (= lt!1673046 Unit!90408)))

(declare-fun res!1864777 () Bool)

(assert (=> b!4488389 (= res!1864777 call!312352)))

(assert (=> b!4488389 (=> (not res!1864777) (not e!2795476))))

(assert (=> b!4488389 e!2795476))

(declare-fun lt!1673041 () Unit!90274)

(declare-fun Unit!90409 () Unit!90274)

(assert (=> b!4488389 (= lt!1673041 Unit!90409)))

(declare-fun b!4488390 () Bool)

(declare-fun e!2795477 () Bool)

(assert (=> b!4488390 (= e!2795477 (invariantList!965 (toList!4212 lt!1673048)))))

(declare-fun b!4488391 () Bool)

(declare-fun res!1864776 () Bool)

(assert (=> b!4488391 (=> (not res!1864776) (not e!2795477))))

(assert (=> b!4488391 (= res!1864776 (forall!10124 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) lambda!166904))))

(assert (=> d!1374267 e!2795477))

(declare-fun res!1864775 () Bool)

(assert (=> d!1374267 (=> (not res!1864775) (not e!2795477))))

(assert (=> d!1374267 (= res!1864775 (forall!10124 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lambda!166904))))

(assert (=> d!1374267 (= lt!1673048 e!2795475)))

(assert (=> d!1374267 (= c!764488 ((_ is Nil!50478) (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))

(assert (=> d!1374267 (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))

(assert (=> d!1374267 (= (addToMapMapFromBucket!633 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) lt!1673048)))

(assert (= (and d!1374267 c!764488) b!4488387))

(assert (= (and d!1374267 (not c!764488)) b!4488389))

(assert (= (and b!4488389 res!1864777) b!4488388))

(assert (= (or b!4488387 b!4488389) bm!312348))

(assert (= (or b!4488387 b!4488389) bm!312346))

(assert (= (or b!4488387 b!4488389) bm!312347))

(assert (= (and d!1374267 res!1864775) b!4488391))

(assert (= (and b!4488391 res!1864776) b!4488390))

(declare-fun m!5210263 () Bool)

(assert (=> d!1374267 m!5210263))

(declare-fun m!5210265 () Bool)

(assert (=> d!1374267 m!5210265))

(declare-fun m!5210267 () Bool)

(assert (=> b!4488391 m!5210267))

(declare-fun m!5210269 () Bool)

(assert (=> bm!312346 m!5210269))

(declare-fun m!5210271 () Bool)

(assert (=> b!4488390 m!5210271))

(assert (=> bm!312347 m!5209107))

(declare-fun m!5210273 () Bool)

(assert (=> bm!312347 m!5210273))

(declare-fun m!5210275 () Bool)

(assert (=> bm!312348 m!5210275))

(declare-fun m!5210277 () Bool)

(assert (=> b!4488389 m!5210277))

(declare-fun m!5210279 () Bool)

(assert (=> b!4488389 m!5210279))

(declare-fun m!5210283 () Bool)

(assert (=> b!4488389 m!5210283))

(declare-fun m!5210287 () Bool)

(assert (=> b!4488389 m!5210287))

(assert (=> b!4488389 m!5210287))

(declare-fun m!5210292 () Bool)

(assert (=> b!4488389 m!5210292))

(declare-fun m!5210297 () Bool)

(assert (=> b!4488389 m!5210297))

(declare-fun m!5210299 () Bool)

(assert (=> b!4488389 m!5210299))

(declare-fun m!5210303 () Bool)

(assert (=> b!4488389 m!5210303))

(assert (=> b!4488389 m!5209107))

(declare-fun m!5210309 () Bool)

(assert (=> b!4488389 m!5210309))

(declare-fun m!5210313 () Bool)

(assert (=> b!4488389 m!5210313))

(assert (=> b!4488389 m!5209107))

(assert (=> b!4488389 m!5210299))

(declare-fun m!5210315 () Bool)

(assert (=> b!4488389 m!5210315))

(assert (=> b!4488388 m!5210313))

(assert (=> b!4487634 d!1374267))

(declare-fun bs!827003 () Bool)

(declare-fun d!1374297 () Bool)

(assert (= bs!827003 (and d!1374297 d!1373873)))

(declare-fun lambda!166905 () Int)

(assert (=> bs!827003 (not (= lambda!166905 lambda!166722))))

(declare-fun bs!827004 () Bool)

(assert (= bs!827004 (and d!1374297 d!1373851)))

(assert (=> bs!827004 (= lambda!166905 lambda!166711)))

(declare-fun bs!827005 () Bool)

(assert (= bs!827005 (and d!1374297 d!1373883)))

(assert (=> bs!827005 (= lambda!166905 lambda!166732)))

(declare-fun bs!827006 () Bool)

(assert (= bs!827006 (and d!1374297 d!1373937)))

(assert (=> bs!827006 (= lambda!166905 lambda!166753)))

(declare-fun bs!827007 () Bool)

(assert (= bs!827007 (and d!1374297 d!1373913)))

(assert (=> bs!827007 (= lambda!166905 lambda!166743)))

(declare-fun bs!827008 () Bool)

(assert (= bs!827008 (and d!1374297 d!1373857)))

(assert (=> bs!827008 (= lambda!166905 lambda!166719)))

(declare-fun bs!827009 () Bool)

(assert (= bs!827009 (and d!1374297 d!1373929)))

(assert (=> bs!827009 (= lambda!166905 lambda!166750)))

(declare-fun bs!827010 () Bool)

(assert (= bs!827010 (and d!1374297 d!1373923)))

(assert (=> bs!827010 (= lambda!166905 lambda!166747)))

(declare-fun bs!827011 () Bool)

(assert (= bs!827011 (and d!1374297 d!1373911)))

(assert (=> bs!827011 (= lambda!166905 lambda!166737)))

(declare-fun bs!827012 () Bool)

(assert (= bs!827012 (and d!1374297 d!1373901)))

(assert (=> bs!827012 (= lambda!166905 lambda!166733)))

(declare-fun bs!827013 () Bool)

(assert (= bs!827013 (and d!1374297 start!442056)))

(assert (=> bs!827013 (= lambda!166905 lambda!166699)))

(declare-fun bs!827014 () Bool)

(assert (= bs!827014 (and d!1374297 d!1374039)))

(assert (=> bs!827014 (= lambda!166905 lambda!166841)))

(declare-fun bs!827015 () Bool)

(assert (= bs!827015 (and d!1374297 d!1374263)))

(assert (=> bs!827015 (= lambda!166905 lambda!166898)))

(declare-fun lt!1673063 () ListMap!3473)

(assert (=> d!1374297 (invariantList!965 (toList!4212 lt!1673063))))

(declare-fun e!2795500 () ListMap!3473)

(assert (=> d!1374297 (= lt!1673063 e!2795500)))

(declare-fun c!764495 () Bool)

(assert (=> d!1374297 (= c!764495 ((_ is Cons!50479) (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))

(assert (=> d!1374297 (forall!10122 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) lambda!166905)))

(assert (=> d!1374297 (= (extractMap!1158 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) lt!1673063)))

(declare-fun b!4488420 () Bool)

(assert (=> b!4488420 (= e!2795500 (addToMapMapFromBucket!633 (_2!28716 (h!56280 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (extractMap!1158 (t!357557 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))))

(declare-fun b!4488421 () Bool)

(assert (=> b!4488421 (= e!2795500 (ListMap!3474 Nil!50478))))

(assert (= (and d!1374297 c!764495) b!4488420))

(assert (= (and d!1374297 (not c!764495)) b!4488421))

(declare-fun m!5210317 () Bool)

(assert (=> d!1374297 m!5210317))

(declare-fun m!5210319 () Bool)

(assert (=> d!1374297 m!5210319))

(declare-fun m!5210321 () Bool)

(assert (=> b!4488420 m!5210321))

(assert (=> b!4488420 m!5210321))

(declare-fun m!5210323 () Bool)

(assert (=> b!4488420 m!5210323))

(assert (=> b!4487634 d!1374297))

(declare-fun d!1374299 () Bool)

(assert (=> d!1374299 (= (invariantList!965 (toList!4212 lt!1672460)) (noDuplicatedKeys!230 (toList!4212 lt!1672460)))))

(declare-fun bs!827016 () Bool)

(assert (= bs!827016 d!1374299))

(declare-fun m!5210325 () Bool)

(assert (=> bs!827016 m!5210325))

(assert (=> d!1373911 d!1374299))

(declare-fun d!1374301 () Bool)

(declare-fun res!1864794 () Bool)

(declare-fun e!2795501 () Bool)

(assert (=> d!1374301 (=> res!1864794 e!2795501)))

(assert (=> d!1374301 (= res!1864794 ((_ is Nil!50479) (t!357557 (toList!4211 lm!1477))))))

(assert (=> d!1374301 (= (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166737) e!2795501)))

(declare-fun b!4488422 () Bool)

(declare-fun e!2795502 () Bool)

(assert (=> b!4488422 (= e!2795501 e!2795502)))

(declare-fun res!1864795 () Bool)

(assert (=> b!4488422 (=> (not res!1864795) (not e!2795502))))

(assert (=> b!4488422 (= res!1864795 (dynLambda!21071 lambda!166737 (h!56280 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun b!4488423 () Bool)

(assert (=> b!4488423 (= e!2795502 (forall!10122 (t!357557 (t!357557 (toList!4211 lm!1477))) lambda!166737))))

(assert (= (and d!1374301 (not res!1864794)) b!4488422))

(assert (= (and b!4488422 res!1864795) b!4488423))

(declare-fun b_lambda!150811 () Bool)

(assert (=> (not b_lambda!150811) (not b!4488422)))

(declare-fun m!5210327 () Bool)

(assert (=> b!4488422 m!5210327))

(declare-fun m!5210329 () Bool)

(assert (=> b!4488423 m!5210329))

(assert (=> d!1373911 d!1374301))

(assert (=> b!4487600 d!1374169))

(declare-fun d!1374303 () Bool)

(assert (=> d!1374303 (containsKey!1621 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287)))

(declare-fun lt!1673064 () Unit!90274)

(assert (=> d!1374303 (= lt!1673064 (choose!28905 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (=> d!1374303 (invariantList!965 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374303 (= (lemmaInGetKeysListThenContainsKey!412 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287) lt!1673064)))

(declare-fun bs!827017 () Bool)

(assert (= bs!827017 d!1374303))

(assert (=> bs!827017 m!5209039))

(declare-fun m!5210331 () Bool)

(assert (=> bs!827017 m!5210331))

(assert (=> bs!827017 m!5209801))

(assert (=> b!4487600 d!1374303))

(declare-fun d!1374305 () Bool)

(declare-fun res!1864796 () Bool)

(declare-fun e!2795503 () Bool)

(assert (=> d!1374305 (=> res!1864796 e!2795503)))

(assert (=> d!1374305 (= res!1864796 (and ((_ is Cons!50479) (toList!4211 lt!1672305)) (= (_1!28716 (h!56280 (toList!4211 lt!1672305))) hash!344)))))

(assert (=> d!1374305 (= (containsKey!1622 (toList!4211 lt!1672305) hash!344) e!2795503)))

(declare-fun b!4488424 () Bool)

(declare-fun e!2795504 () Bool)

(assert (=> b!4488424 (= e!2795503 e!2795504)))

(declare-fun res!1864797 () Bool)

(assert (=> b!4488424 (=> (not res!1864797) (not e!2795504))))

(assert (=> b!4488424 (= res!1864797 (and (or (not ((_ is Cons!50479) (toList!4211 lt!1672305))) (bvsle (_1!28716 (h!56280 (toList!4211 lt!1672305))) hash!344)) ((_ is Cons!50479) (toList!4211 lt!1672305)) (bvslt (_1!28716 (h!56280 (toList!4211 lt!1672305))) hash!344)))))

(declare-fun b!4488425 () Bool)

(assert (=> b!4488425 (= e!2795504 (containsKey!1622 (t!357557 (toList!4211 lt!1672305)) hash!344))))

(assert (= (and d!1374305 (not res!1864796)) b!4488424))

(assert (= (and b!4488424 res!1864797) b!4488425))

(declare-fun m!5210333 () Bool)

(assert (=> b!4488425 m!5210333))

(assert (=> d!1373959 d!1374305))

(assert (=> b!4487627 d!1374247))

(assert (=> b!4487627 d!1374143))

(declare-fun d!1374307 () Bool)

(declare-fun res!1864798 () Bool)

(declare-fun e!2795505 () Bool)

(assert (=> d!1374307 (=> res!1864798 e!2795505)))

(assert (=> d!1374307 (= res!1864798 (not ((_ is Cons!50478) (_2!28716 (h!56280 (toList!4211 lm!1477))))))))

(assert (=> d!1374307 (= (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lm!1477)))) e!2795505)))

(declare-fun b!4488426 () Bool)

(declare-fun e!2795506 () Bool)

(assert (=> b!4488426 (= e!2795505 e!2795506)))

(declare-fun res!1864799 () Bool)

(assert (=> b!4488426 (=> (not res!1864799) (not e!2795506))))

(assert (=> b!4488426 (= res!1864799 (not (containsKey!1618 (t!357556 (_2!28716 (h!56280 (toList!4211 lm!1477)))) (_1!28715 (h!56279 (_2!28716 (h!56280 (toList!4211 lm!1477))))))))))

(declare-fun b!4488427 () Bool)

(assert (=> b!4488427 (= e!2795506 (noDuplicateKeys!1102 (t!357556 (_2!28716 (h!56280 (toList!4211 lm!1477))))))))

(assert (= (and d!1374307 (not res!1864798)) b!4488426))

(assert (= (and b!4488426 res!1864799) b!4488427))

(declare-fun m!5210335 () Bool)

(assert (=> b!4488426 m!5210335))

(declare-fun m!5210337 () Bool)

(assert (=> b!4488427 m!5210337))

(assert (=> bs!826603 d!1374307))

(assert (=> b!4487624 d!1373977))

(assert (=> b!4487624 d!1373979))

(declare-fun b!4488430 () Bool)

(declare-fun e!2795508 () Option!11009)

(assert (=> b!4488430 (= e!2795508 (getValueByKey!989 (t!357557 (toList!4211 lt!1672483)) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))

(declare-fun c!764496 () Bool)

(declare-fun d!1374309 () Bool)

(assert (=> d!1374309 (= c!764496 (and ((_ is Cons!50479) (toList!4211 lt!1672483)) (= (_1!28716 (h!56280 (toList!4211 lt!1672483))) (_1!28716 (tuple2!50845 hash!344 newBucket!178)))))))

(declare-fun e!2795507 () Option!11009)

(assert (=> d!1374309 (= (getValueByKey!989 (toList!4211 lt!1672483) (_1!28716 (tuple2!50845 hash!344 newBucket!178))) e!2795507)))

(declare-fun b!4488431 () Bool)

(assert (=> b!4488431 (= e!2795508 None!11008)))

(declare-fun b!4488428 () Bool)

(assert (=> b!4488428 (= e!2795507 (Some!11008 (_2!28716 (h!56280 (toList!4211 lt!1672483)))))))

(declare-fun b!4488429 () Bool)

(assert (=> b!4488429 (= e!2795507 e!2795508)))

(declare-fun c!764497 () Bool)

(assert (=> b!4488429 (= c!764497 (and ((_ is Cons!50479) (toList!4211 lt!1672483)) (not (= (_1!28716 (h!56280 (toList!4211 lt!1672483))) (_1!28716 (tuple2!50845 hash!344 newBucket!178))))))))

(assert (= (and d!1374309 c!764496) b!4488428))

(assert (= (and d!1374309 (not c!764496)) b!4488429))

(assert (= (and b!4488429 c!764497) b!4488430))

(assert (= (and b!4488429 (not c!764497)) b!4488431))

(declare-fun m!5210339 () Bool)

(assert (=> b!4488430 m!5210339))

(assert (=> b!4487640 d!1374309))

(declare-fun d!1374311 () Bool)

(assert (=> d!1374311 (= (tail!7627 (toList!4211 lm!1477)) (t!357557 (toList!4211 lm!1477)))))

(assert (=> d!1373961 d!1374311))

(declare-fun d!1374313 () Bool)

(assert (=> d!1374313 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(declare-fun lt!1673065 () Unit!90274)

(assert (=> d!1374313 (= lt!1673065 (choose!28901 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (=> d!1374313 (invariantList!965 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374313 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287) lt!1673065)))

(declare-fun bs!827018 () Bool)

(assert (= bs!827018 d!1374313))

(assert (=> bs!827018 m!5209045))

(assert (=> bs!827018 m!5209045))

(assert (=> bs!827018 m!5209047))

(declare-fun m!5210341 () Bool)

(assert (=> bs!827018 m!5210341))

(assert (=> bs!827018 m!5209801))

(assert (=> b!4487598 d!1374313))

(assert (=> b!4487598 d!1374145))

(assert (=> b!4487598 d!1374147))

(declare-fun d!1374315 () Bool)

(assert (=> d!1374315 (contains!13117 (getKeysList!413 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) key!3287)))

(declare-fun lt!1673066 () Unit!90274)

(assert (=> d!1374315 (= lt!1673066 (choose!28902 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (=> d!1374315 (invariantList!965 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374315 (= (lemmaInListThenGetKeysListContains!409 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))) key!3287) lt!1673066)))

(declare-fun bs!827019 () Bool)

(assert (= bs!827019 d!1374315))

(assert (=> bs!827019 m!5209053))

(assert (=> bs!827019 m!5209053))

(declare-fun m!5210343 () Bool)

(assert (=> bs!827019 m!5210343))

(declare-fun m!5210345 () Bool)

(assert (=> bs!827019 m!5210345))

(assert (=> bs!827019 m!5209801))

(assert (=> b!4487598 d!1374315))

(declare-fun d!1374317 () Bool)

(assert (=> d!1374317 (= (isEmpty!28553 (toList!4211 lm!1477)) ((_ is Nil!50479) (toList!4211 lm!1477)))))

(assert (=> d!1373933 d!1374317))

(assert (=> b!4487595 d!1373987))

(declare-fun d!1374319 () Bool)

(declare-fun res!1864800 () Bool)

(declare-fun e!2795509 () Bool)

(assert (=> d!1374319 (=> res!1864800 e!2795509)))

(assert (=> d!1374319 (= res!1864800 (not ((_ is Cons!50478) (t!357556 newBucket!178))))))

(assert (=> d!1374319 (= (noDuplicateKeys!1102 (t!357556 newBucket!178)) e!2795509)))

(declare-fun b!4488432 () Bool)

(declare-fun e!2795510 () Bool)

(assert (=> b!4488432 (= e!2795509 e!2795510)))

(declare-fun res!1864801 () Bool)

(assert (=> b!4488432 (=> (not res!1864801) (not e!2795510))))

(assert (=> b!4488432 (= res!1864801 (not (containsKey!1618 (t!357556 (t!357556 newBucket!178)) (_1!28715 (h!56279 (t!357556 newBucket!178))))))))

(declare-fun b!4488433 () Bool)

(assert (=> b!4488433 (= e!2795510 (noDuplicateKeys!1102 (t!357556 (t!357556 newBucket!178))))))

(assert (= (and d!1374319 (not res!1864800)) b!4488432))

(assert (= (and b!4488432 res!1864801) b!4488433))

(declare-fun m!5210347 () Bool)

(assert (=> b!4488432 m!5210347))

(declare-fun m!5210349 () Bool)

(assert (=> b!4488433 m!5210349))

(assert (=> b!4487697 d!1374319))

(declare-fun bs!827020 () Bool)

(declare-fun b!4488437 () Bool)

(assert (= bs!827020 (and b!4488437 b!4488123)))

(declare-fun lambda!166906 () Int)

(assert (=> bs!827020 (= (= (t!357556 (toList!4212 lt!1672303)) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (= lambda!166906 lambda!166875))))

(declare-fun bs!827021 () Bool)

(assert (= bs!827021 (and b!4488437 b!4488127)))

(assert (=> bs!827021 (= (= (t!357556 (toList!4212 lt!1672303)) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166906 lambda!166877))))

(declare-fun bs!827022 () Bool)

(assert (= bs!827022 (and b!4488437 b!4488102)))

(assert (=> bs!827022 (= (= (t!357556 (toList!4212 lt!1672303)) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166906 lambda!166872))))

(declare-fun bs!827023 () Bool)

(assert (= bs!827023 (and b!4488437 b!4488121)))

(assert (=> bs!827023 (= (= (t!357556 (toList!4212 lt!1672303)) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))) (= lambda!166906 lambda!166876))))

(declare-fun bs!827024 () Bool)

(assert (= bs!827024 (and b!4488437 b!4488057)))

(assert (=> bs!827024 (= (= (t!357556 (toList!4212 lt!1672303)) (toList!4212 lt!1672303)) (= lambda!166906 lambda!166861))))

(declare-fun bs!827025 () Bool)

(assert (= bs!827025 (and b!4488437 b!4487755)))

(assert (=> bs!827025 (= (= (t!357556 (toList!4212 lt!1672303)) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166906 lambda!166764))))

(declare-fun bs!827026 () Bool)

(assert (= bs!827026 (and b!4488437 b!4488031)))

(assert (=> bs!827026 (= (= (t!357556 (toList!4212 lt!1672303)) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166906 lambda!166853))))

(declare-fun bs!827027 () Bool)

(assert (= bs!827027 (and b!4488437 b!4488104)))

(assert (=> bs!827027 (= (= (t!357556 (toList!4212 lt!1672303)) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166906 lambda!166871))))

(declare-fun bs!827028 () Bool)

(assert (= bs!827028 (and b!4488437 b!4488108)))

(assert (=> bs!827028 (= (= (t!357556 (toList!4212 lt!1672303)) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166906 lambda!166873))))

(assert (=> b!4488437 true))

(declare-fun bs!827029 () Bool)

(declare-fun b!4488435 () Bool)

(assert (= bs!827029 (and b!4488435 b!4488437)))

(declare-fun lambda!166907 () Int)

(assert (=> bs!827029 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (t!357556 (toList!4212 lt!1672303))) (= lambda!166907 lambda!166906))))

(declare-fun bs!827030 () Bool)

(assert (= bs!827030 (and b!4488435 b!4488123)))

(assert (=> bs!827030 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (= lambda!166907 lambda!166875))))

(declare-fun bs!827031 () Bool)

(assert (= bs!827031 (and b!4488435 b!4488127)))

(assert (=> bs!827031 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166907 lambda!166877))))

(declare-fun bs!827032 () Bool)

(assert (= bs!827032 (and b!4488435 b!4488102)))

(assert (=> bs!827032 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166907 lambda!166872))))

(declare-fun bs!827033 () Bool)

(assert (= bs!827033 (and b!4488435 b!4488121)))

(assert (=> bs!827033 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))) (= lambda!166907 lambda!166876))))

(declare-fun bs!827034 () Bool)

(assert (= bs!827034 (and b!4488435 b!4488057)))

(assert (=> bs!827034 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (toList!4212 lt!1672303)) (= lambda!166907 lambda!166861))))

(declare-fun bs!827035 () Bool)

(assert (= bs!827035 (and b!4488435 b!4487755)))

(assert (=> bs!827035 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166907 lambda!166764))))

(declare-fun bs!827036 () Bool)

(assert (= bs!827036 (and b!4488435 b!4488031)))

(assert (=> bs!827036 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166907 lambda!166853))))

(declare-fun bs!827037 () Bool)

(assert (= bs!827037 (and b!4488435 b!4488104)))

(assert (=> bs!827037 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166907 lambda!166871))))

(declare-fun bs!827038 () Bool)

(assert (= bs!827038 (and b!4488435 b!4488108)))

(assert (=> bs!827038 (= (= (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303))) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166907 lambda!166873))))

(assert (=> b!4488435 true))

(declare-fun bs!827039 () Bool)

(declare-fun b!4488441 () Bool)

(assert (= bs!827039 (and b!4488441 b!4488437)))

(declare-fun lambda!166908 () Int)

(assert (=> bs!827039 (= (= (toList!4212 lt!1672303) (t!357556 (toList!4212 lt!1672303))) (= lambda!166908 lambda!166906))))

(declare-fun bs!827040 () Bool)

(assert (= bs!827040 (and b!4488441 b!4488123)))

(assert (=> bs!827040 (= (= (toList!4212 lt!1672303) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (= lambda!166908 lambda!166875))))

(declare-fun bs!827041 () Bool)

(assert (= bs!827041 (and b!4488441 b!4488127)))

(assert (=> bs!827041 (= (= (toList!4212 lt!1672303) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166908 lambda!166877))))

(declare-fun bs!827042 () Bool)

(assert (= bs!827042 (and b!4488441 b!4488102)))

(assert (=> bs!827042 (= (= (toList!4212 lt!1672303) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166908 lambda!166872))))

(declare-fun bs!827043 () Bool)

(assert (= bs!827043 (and b!4488441 b!4488121)))

(assert (=> bs!827043 (= (= (toList!4212 lt!1672303) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))) (= lambda!166908 lambda!166876))))

(declare-fun bs!827044 () Bool)

(assert (= bs!827044 (and b!4488441 b!4488057)))

(assert (=> bs!827044 (= lambda!166908 lambda!166861)))

(declare-fun bs!827045 () Bool)

(assert (= bs!827045 (and b!4488441 b!4488435)))

(assert (=> bs!827045 (= (= (toList!4212 lt!1672303) (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303)))) (= lambda!166908 lambda!166907))))

(declare-fun bs!827047 () Bool)

(assert (= bs!827047 (and b!4488441 b!4487755)))

(assert (=> bs!827047 (= (= (toList!4212 lt!1672303) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166908 lambda!166764))))

(declare-fun bs!827048 () Bool)

(assert (= bs!827048 (and b!4488441 b!4488031)))

(assert (=> bs!827048 (= (= (toList!4212 lt!1672303) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166908 lambda!166853))))

(declare-fun bs!827049 () Bool)

(assert (= bs!827049 (and b!4488441 b!4488104)))

(assert (=> bs!827049 (= (= (toList!4212 lt!1672303) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166908 lambda!166871))))

(declare-fun bs!827050 () Bool)

(assert (= bs!827050 (and b!4488441 b!4488108)))

(assert (=> bs!827050 (= (= (toList!4212 lt!1672303) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166908 lambda!166873))))

(assert (=> b!4488441 true))

(declare-fun bs!827051 () Bool)

(declare-fun b!4488436 () Bool)

(assert (= bs!827051 (and b!4488436 b!4488103)))

(declare-fun lambda!166909 () Int)

(assert (=> bs!827051 (= lambda!166909 lambda!166874)))

(declare-fun bs!827052 () Bool)

(assert (= bs!827052 (and b!4488436 b!4488032)))

(assert (=> bs!827052 (= lambda!166909 lambda!166854)))

(declare-fun bs!827053 () Bool)

(assert (= bs!827053 (and b!4488436 b!4488058)))

(assert (=> bs!827053 (= lambda!166909 lambda!166862)))

(declare-fun bs!827054 () Bool)

(assert (= bs!827054 (and b!4488436 b!4487756)))

(assert (=> bs!827054 (= lambda!166909 lambda!166765)))

(declare-fun bs!827055 () Bool)

(assert (= bs!827055 (and b!4488436 b!4488122)))

(assert (=> bs!827055 (= lambda!166909 lambda!166878)))

(declare-fun b!4488434 () Bool)

(declare-fun e!2795511 () Unit!90274)

(declare-fun Unit!90424 () Unit!90274)

(assert (=> b!4488434 (= e!2795511 Unit!90424)))

(declare-fun e!2795514 () List!50605)

(assert (=> b!4488435 (= e!2795514 (Cons!50481 (_1!28715 (h!56279 (toList!4212 lt!1672303))) (getKeysList!413 (t!357556 (toList!4212 lt!1672303)))))))

(declare-fun c!764499 () Bool)

(assert (=> b!4488435 (= c!764499 (containsKey!1621 (t!357556 (toList!4212 lt!1672303)) (_1!28715 (h!56279 (toList!4212 lt!1672303)))))))

(declare-fun lt!1673070 () Unit!90274)

(assert (=> b!4488435 (= lt!1673070 e!2795511)))

(declare-fun c!764500 () Bool)

(assert (=> b!4488435 (= c!764500 (contains!13117 (getKeysList!413 (t!357556 (toList!4212 lt!1672303))) (_1!28715 (h!56279 (toList!4212 lt!1672303)))))))

(declare-fun lt!1673068 () Unit!90274)

(declare-fun e!2795512 () Unit!90274)

(assert (=> b!4488435 (= lt!1673068 e!2795512)))

(declare-fun lt!1673067 () List!50605)

(assert (=> b!4488435 (= lt!1673067 (getKeysList!413 (t!357556 (toList!4212 lt!1672303))))))

(declare-fun lt!1673073 () Unit!90274)

(assert (=> b!4488435 (= lt!1673073 (lemmaForallContainsAddHeadPreserves!137 (t!357556 (toList!4212 lt!1672303)) lt!1673067 (h!56279 (toList!4212 lt!1672303))))))

(assert (=> b!4488435 (forall!10126 lt!1673067 lambda!166907)))

(declare-fun lt!1673071 () Unit!90274)

(assert (=> b!4488435 (= lt!1673071 lt!1673073)))

(declare-fun e!2795513 () Bool)

(declare-fun lt!1673069 () List!50605)

(assert (=> b!4488436 (= e!2795513 (= (content!8202 lt!1673069) (content!8202 (map!11078 (toList!4212 lt!1672303) lambda!166909))))))

(assert (=> b!4488437 false))

(declare-fun lt!1673072 () Unit!90274)

(assert (=> b!4488437 (= lt!1673072 (forallContained!2385 (getKeysList!413 (t!357556 (toList!4212 lt!1672303))) lambda!166906 (_1!28715 (h!56279 (toList!4212 lt!1672303)))))))

(declare-fun Unit!90426 () Unit!90274)

(assert (=> b!4488437 (= e!2795512 Unit!90426)))

(declare-fun d!1374321 () Bool)

(assert (=> d!1374321 e!2795513))

(declare-fun res!1864802 () Bool)

(assert (=> d!1374321 (=> (not res!1864802) (not e!2795513))))

(assert (=> d!1374321 (= res!1864802 (noDuplicate!716 lt!1673069))))

(assert (=> d!1374321 (= lt!1673069 e!2795514)))

(declare-fun c!764498 () Bool)

(assert (=> d!1374321 (= c!764498 ((_ is Cons!50478) (toList!4212 lt!1672303)))))

(assert (=> d!1374321 (invariantList!965 (toList!4212 lt!1672303))))

(assert (=> d!1374321 (= (getKeysList!413 (toList!4212 lt!1672303)) lt!1673069)))

(declare-fun b!4488438 () Bool)

(declare-fun res!1864804 () Bool)

(assert (=> b!4488438 (=> (not res!1864804) (not e!2795513))))

(assert (=> b!4488438 (= res!1864804 (= (length!288 lt!1673069) (length!289 (toList!4212 lt!1672303))))))

(declare-fun b!4488439 () Bool)

(assert (=> b!4488439 (= e!2795514 Nil!50481)))

(declare-fun b!4488440 () Bool)

(declare-fun Unit!90427 () Unit!90274)

(assert (=> b!4488440 (= e!2795512 Unit!90427)))

(declare-fun res!1864803 () Bool)

(assert (=> b!4488441 (=> (not res!1864803) (not e!2795513))))

(assert (=> b!4488441 (= res!1864803 (forall!10126 lt!1673069 lambda!166908))))

(declare-fun b!4488442 () Bool)

(assert (=> b!4488442 false))

(declare-fun Unit!90428 () Unit!90274)

(assert (=> b!4488442 (= e!2795511 Unit!90428)))

(assert (= (and d!1374321 c!764498) b!4488435))

(assert (= (and d!1374321 (not c!764498)) b!4488439))

(assert (= (and b!4488435 c!764499) b!4488442))

(assert (= (and b!4488435 (not c!764499)) b!4488434))

(assert (= (and b!4488435 c!764500) b!4488437))

(assert (= (and b!4488435 (not c!764500)) b!4488440))

(assert (= (and d!1374321 res!1864802) b!4488438))

(assert (= (and b!4488438 res!1864804) b!4488441))

(assert (= (and b!4488441 res!1864803) b!4488436))

(declare-fun m!5210365 () Bool)

(assert (=> d!1374321 m!5210365))

(assert (=> d!1374321 m!5209241))

(declare-fun m!5210367 () Bool)

(assert (=> b!4488441 m!5210367))

(declare-fun m!5210369 () Bool)

(assert (=> b!4488436 m!5210369))

(declare-fun m!5210371 () Bool)

(assert (=> b!4488436 m!5210371))

(assert (=> b!4488436 m!5210371))

(declare-fun m!5210375 () Bool)

(assert (=> b!4488436 m!5210375))

(declare-fun m!5210377 () Bool)

(assert (=> b!4488438 m!5210377))

(assert (=> b!4488438 m!5209753))

(declare-fun m!5210381 () Bool)

(assert (=> b!4488435 m!5210381))

(assert (=> b!4488435 m!5210057))

(assert (=> b!4488435 m!5210059))

(assert (=> b!4488435 m!5210057))

(declare-fun m!5210383 () Bool)

(assert (=> b!4488435 m!5210383))

(declare-fun m!5210385 () Bool)

(assert (=> b!4488435 m!5210385))

(assert (=> b!4488437 m!5210057))

(assert (=> b!4488437 m!5210057))

(declare-fun m!5210387 () Bool)

(assert (=> b!4488437 m!5210387))

(assert (=> b!4487622 d!1374321))

(declare-fun d!1374333 () Bool)

(assert (=> d!1374333 (= (invariantList!965 (toList!4212 lt!1672472)) (noDuplicatedKeys!230 (toList!4212 lt!1672472)))))

(declare-fun bs!827057 () Bool)

(assert (= bs!827057 d!1374333))

(declare-fun m!5210389 () Bool)

(assert (=> bs!827057 m!5210389))

(assert (=> d!1373923 d!1374333))

(declare-fun d!1374335 () Bool)

(declare-fun res!1864811 () Bool)

(declare-fun e!2795524 () Bool)

(assert (=> d!1374335 (=> res!1864811 e!2795524)))

(assert (=> d!1374335 (= res!1864811 ((_ is Nil!50479) (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))

(assert (=> d!1374335 (= (forall!10122 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))) lambda!166747) e!2795524)))

(declare-fun b!4488453 () Bool)

(declare-fun e!2795525 () Bool)

(assert (=> b!4488453 (= e!2795524 e!2795525)))

(declare-fun res!1864812 () Bool)

(assert (=> b!4488453 (=> (not res!1864812) (not e!2795525))))

(assert (=> b!4488453 (= res!1864812 (dynLambda!21071 lambda!166747 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))))))

(declare-fun b!4488454 () Bool)

(assert (=> b!4488454 (= e!2795525 (forall!10122 (t!357557 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) lambda!166747))))

(assert (= (and d!1374335 (not res!1864811)) b!4488453))

(assert (= (and b!4488453 res!1864812) b!4488454))

(declare-fun b_lambda!150817 () Bool)

(assert (=> (not b_lambda!150817) (not b!4488453)))

(declare-fun m!5210391 () Bool)

(assert (=> b!4488453 m!5210391))

(declare-fun m!5210393 () Bool)

(assert (=> b!4488454 m!5210393))

(assert (=> d!1373923 d!1374335))

(declare-fun d!1374337 () Bool)

(declare-fun res!1864813 () Bool)

(declare-fun e!2795527 () Bool)

(assert (=> d!1374337 (=> res!1864813 e!2795527)))

(assert (=> d!1374337 (= res!1864813 (and ((_ is Cons!50478) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= (_1!28715 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) key!3287)))))

(assert (=> d!1374337 (= (containsKey!1621 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287) e!2795527)))

(declare-fun b!4488456 () Bool)

(declare-fun e!2795528 () Bool)

(assert (=> b!4488456 (= e!2795527 e!2795528)))

(declare-fun res!1864814 () Bool)

(assert (=> b!4488456 (=> (not res!1864814) (not e!2795528))))

(assert (=> b!4488456 (= res!1864814 ((_ is Cons!50478) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))))

(declare-fun b!4488457 () Bool)

(assert (=> b!4488457 (= e!2795528 (containsKey!1621 (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) key!3287))))

(assert (= (and d!1374337 (not res!1864813)) b!4488456))

(assert (= (and b!4488456 res!1864814) b!4488457))

(declare-fun m!5210395 () Bool)

(assert (=> b!4488457 m!5210395))

(assert (=> b!4487488 d!1374337))

(declare-fun d!1374339 () Bool)

(assert (=> d!1374339 (containsKey!1621 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287)))

(declare-fun lt!1673075 () Unit!90274)

(assert (=> d!1374339 (= lt!1673075 (choose!28905 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(assert (=> d!1374339 (invariantList!965 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))

(assert (=> d!1374339 (= (lemmaInGetKeysListThenContainsKey!412 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287) lt!1673075)))

(declare-fun bs!827058 () Bool)

(assert (= bs!827058 d!1374339))

(assert (=> bs!827058 m!5208841))

(declare-fun m!5210397 () Bool)

(assert (=> bs!827058 m!5210397))

(assert (=> bs!827058 m!5209833))

(assert (=> b!4487488 d!1374339))

(declare-fun d!1374343 () Bool)

(declare-fun lt!1673076 () Bool)

(assert (=> d!1374343 (= lt!1673076 (select (content!8202 e!2794990) key!3287))))

(declare-fun e!2795529 () Bool)

(assert (=> d!1374343 (= lt!1673076 e!2795529)))

(declare-fun res!1864815 () Bool)

(assert (=> d!1374343 (=> (not res!1864815) (not e!2795529))))

(assert (=> d!1374343 (= res!1864815 ((_ is Cons!50481) e!2794990))))

(assert (=> d!1374343 (= (contains!13117 e!2794990 key!3287) lt!1673076)))

(declare-fun b!4488458 () Bool)

(declare-fun e!2795530 () Bool)

(assert (=> b!4488458 (= e!2795529 e!2795530)))

(declare-fun res!1864816 () Bool)

(assert (=> b!4488458 (=> res!1864816 e!2795530)))

(assert (=> b!4488458 (= res!1864816 (= (h!56284 e!2794990) key!3287))))

(declare-fun b!4488459 () Bool)

(assert (=> b!4488459 (= e!2795530 (contains!13117 (t!357559 e!2794990) key!3287))))

(assert (= (and d!1374343 res!1864815) b!4488458))

(assert (= (and b!4488458 (not res!1864816)) b!4488459))

(declare-fun m!5210401 () Bool)

(assert (=> d!1374343 m!5210401))

(declare-fun m!5210403 () Bool)

(assert (=> d!1374343 m!5210403))

(declare-fun m!5210405 () Bool)

(assert (=> b!4488459 m!5210405))

(assert (=> bm!312255 d!1374343))

(declare-fun d!1374349 () Bool)

(declare-fun lt!1673077 () Bool)

(assert (=> d!1374349 (= lt!1673077 (select (content!8202 e!2794908) key!3287))))

(declare-fun e!2795531 () Bool)

(assert (=> d!1374349 (= lt!1673077 e!2795531)))

(declare-fun res!1864817 () Bool)

(assert (=> d!1374349 (=> (not res!1864817) (not e!2795531))))

(assert (=> d!1374349 (= res!1864817 ((_ is Cons!50481) e!2794908))))

(assert (=> d!1374349 (= (contains!13117 e!2794908 key!3287) lt!1673077)))

(declare-fun b!4488460 () Bool)

(declare-fun e!2795532 () Bool)

(assert (=> b!4488460 (= e!2795531 e!2795532)))

(declare-fun res!1864818 () Bool)

(assert (=> b!4488460 (=> res!1864818 e!2795532)))

(assert (=> b!4488460 (= res!1864818 (= (h!56284 e!2794908) key!3287))))

(declare-fun b!4488461 () Bool)

(assert (=> b!4488461 (= e!2795532 (contains!13117 (t!357559 e!2794908) key!3287))))

(assert (= (and d!1374349 res!1864817) b!4488460))

(assert (= (and b!4488460 (not res!1864818)) b!4488461))

(declare-fun m!5210407 () Bool)

(assert (=> d!1374349 m!5210407))

(declare-fun m!5210409 () Bool)

(assert (=> d!1374349 m!5210409))

(declare-fun m!5210411 () Bool)

(assert (=> b!4488461 m!5210411))

(assert (=> bm!312249 d!1374349))

(declare-fun d!1374357 () Bool)

(assert (=> d!1374357 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(declare-fun lt!1673078 () Unit!90274)

(assert (=> d!1374357 (= lt!1673078 (choose!28901 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(assert (=> d!1374357 (invariantList!965 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))

(assert (=> d!1374357 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287) lt!1673078)))

(declare-fun bs!827066 () Bool)

(assert (= bs!827066 d!1374357))

(assert (=> bs!827066 m!5208849))

(assert (=> bs!827066 m!5208849))

(assert (=> bs!827066 m!5208851))

(declare-fun m!5210413 () Bool)

(assert (=> bs!827066 m!5210413))

(assert (=> bs!827066 m!5209833))

(assert (=> b!4487486 d!1374357))

(assert (=> b!4487486 d!1374171))

(assert (=> b!4487486 d!1374173))

(declare-fun d!1374365 () Bool)

(assert (=> d!1374365 (contains!13117 (getKeysList!413 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) key!3287)))

(declare-fun lt!1673079 () Unit!90274)

(assert (=> d!1374365 (= lt!1673079 (choose!28902 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287))))

(assert (=> d!1374365 (invariantList!965 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))))

(assert (=> d!1374365 (= (lemmaInListThenGetKeysListContains!409 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))) key!3287) lt!1673079)))

(declare-fun bs!827069 () Bool)

(assert (= bs!827069 d!1374365))

(assert (=> bs!827069 m!5208857))

(assert (=> bs!827069 m!5208857))

(declare-fun m!5210417 () Bool)

(assert (=> bs!827069 m!5210417))

(declare-fun m!5210419 () Bool)

(assert (=> bs!827069 m!5210419))

(assert (=> bs!827069 m!5209833))

(assert (=> b!4487486 d!1374365))

(assert (=> d!1373919 d!1374045))

(assert (=> b!4487483 d!1374125))

(assert (=> d!1373829 d!1374337))

(declare-fun d!1374371 () Bool)

(assert (=> d!1374371 (= (isDefined!8296 (getValueByKey!989 (toList!4211 lt!1672305) hash!344)) (not (isEmpty!28556 (getValueByKey!989 (toList!4211 lt!1672305) hash!344))))))

(declare-fun bs!827073 () Bool)

(assert (= bs!827073 d!1374371))

(assert (=> bs!827073 m!5209017))

(declare-fun m!5210421 () Bool)

(assert (=> bs!827073 m!5210421))

(assert (=> b!4487700 d!1374371))

(assert (=> b!4487700 d!1374053))

(declare-fun d!1374375 () Bool)

(declare-fun e!2795534 () Bool)

(assert (=> d!1374375 e!2795534))

(declare-fun res!1864819 () Bool)

(assert (=> d!1374375 (=> res!1864819 e!2795534)))

(declare-fun lt!1673081 () Bool)

(assert (=> d!1374375 (= res!1864819 (not lt!1673081))))

(declare-fun lt!1673082 () Bool)

(assert (=> d!1374375 (= lt!1673081 lt!1673082)))

(declare-fun lt!1673080 () Unit!90274)

(declare-fun e!2795533 () Unit!90274)

(assert (=> d!1374375 (= lt!1673080 e!2795533)))

(declare-fun c!764502 () Bool)

(assert (=> d!1374375 (= c!764502 lt!1673082)))

(assert (=> d!1374375 (= lt!1673082 (containsKey!1622 (toList!4211 lm!1477) (hash!2613 hashF!1107 key!3287)))))

(assert (=> d!1374375 (= (contains!13115 lm!1477 (hash!2613 hashF!1107 key!3287)) lt!1673081)))

(declare-fun b!4488462 () Bool)

(declare-fun lt!1673083 () Unit!90274)

(assert (=> b!4488462 (= e!2795533 lt!1673083)))

(assert (=> b!4488462 (= lt!1673083 (lemmaContainsKeyImpliesGetValueByKeyDefined!893 (toList!4211 lm!1477) (hash!2613 hashF!1107 key!3287)))))

(assert (=> b!4488462 (isDefined!8296 (getValueByKey!989 (toList!4211 lm!1477) (hash!2613 hashF!1107 key!3287)))))

(declare-fun b!4488463 () Bool)

(declare-fun Unit!90429 () Unit!90274)

(assert (=> b!4488463 (= e!2795533 Unit!90429)))

(declare-fun b!4488464 () Bool)

(assert (=> b!4488464 (= e!2795534 (isDefined!8296 (getValueByKey!989 (toList!4211 lm!1477) (hash!2613 hashF!1107 key!3287))))))

(assert (= (and d!1374375 c!764502) b!4488462))

(assert (= (and d!1374375 (not c!764502)) b!4488463))

(assert (= (and d!1374375 (not res!1864819)) b!4488464))

(assert (=> d!1374375 m!5208727))

(declare-fun m!5210423 () Bool)

(assert (=> d!1374375 m!5210423))

(assert (=> b!4488462 m!5208727))

(declare-fun m!5210425 () Bool)

(assert (=> b!4488462 m!5210425))

(assert (=> b!4488462 m!5208727))

(declare-fun m!5210427 () Bool)

(assert (=> b!4488462 m!5210427))

(assert (=> b!4488462 m!5210427))

(declare-fun m!5210429 () Bool)

(assert (=> b!4488462 m!5210429))

(assert (=> b!4488464 m!5208727))

(assert (=> b!4488464 m!5210427))

(assert (=> b!4488464 m!5210427))

(assert (=> b!4488464 m!5210429))

(assert (=> d!1373937 d!1374375))

(assert (=> d!1373937 d!1373827))

(declare-fun d!1374377 () Bool)

(assert (=> d!1374377 (contains!13115 lm!1477 (hash!2613 hashF!1107 key!3287))))

(assert (=> d!1374377 true))

(declare-fun _$27!1140 () Unit!90274)

(assert (=> d!1374377 (= (choose!28898 lm!1477 key!3287 hashF!1107) _$27!1140)))

(declare-fun bs!827074 () Bool)

(assert (= bs!827074 d!1374377))

(assert (=> bs!827074 m!5208727))

(assert (=> bs!827074 m!5208727))

(assert (=> bs!827074 m!5209151))

(assert (=> d!1373937 d!1374377))

(declare-fun d!1374379 () Bool)

(declare-fun res!1864820 () Bool)

(declare-fun e!2795535 () Bool)

(assert (=> d!1374379 (=> res!1864820 e!2795535)))

(assert (=> d!1374379 (= res!1864820 ((_ is Nil!50479) (toList!4211 lm!1477)))))

(assert (=> d!1374379 (= (forall!10122 (toList!4211 lm!1477) lambda!166753) e!2795535)))

(declare-fun b!4488465 () Bool)

(declare-fun e!2795536 () Bool)

(assert (=> b!4488465 (= e!2795535 e!2795536)))

(declare-fun res!1864821 () Bool)

(assert (=> b!4488465 (=> (not res!1864821) (not e!2795536))))

(assert (=> b!4488465 (= res!1864821 (dynLambda!21071 lambda!166753 (h!56280 (toList!4211 lm!1477))))))

(declare-fun b!4488466 () Bool)

(assert (=> b!4488466 (= e!2795536 (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166753))))

(assert (= (and d!1374379 (not res!1864820)) b!4488465))

(assert (= (and b!4488465 res!1864821) b!4488466))

(declare-fun b_lambda!150845 () Bool)

(assert (=> (not b_lambda!150845) (not b!4488465)))

(declare-fun m!5210431 () Bool)

(assert (=> b!4488465 m!5210431))

(declare-fun m!5210433 () Bool)

(assert (=> b!4488466 m!5210433))

(assert (=> d!1373937 d!1374379))

(declare-fun d!1374381 () Bool)

(declare-fun res!1864822 () Bool)

(declare-fun e!2795537 () Bool)

(assert (=> d!1374381 (=> res!1864822 e!2795537)))

(assert (=> d!1374381 (= res!1864822 (and ((_ is Cons!50478) (t!357556 lt!1672302)) (= (_1!28715 (h!56279 (t!357556 lt!1672302))) key!3287)))))

(assert (=> d!1374381 (= (containsKey!1618 (t!357556 lt!1672302) key!3287) e!2795537)))

(declare-fun b!4488467 () Bool)

(declare-fun e!2795538 () Bool)

(assert (=> b!4488467 (= e!2795537 e!2795538)))

(declare-fun res!1864823 () Bool)

(assert (=> b!4488467 (=> (not res!1864823) (not e!2795538))))

(assert (=> b!4488467 (= res!1864823 ((_ is Cons!50478) (t!357556 lt!1672302)))))

(declare-fun b!4488468 () Bool)

(assert (=> b!4488468 (= e!2795538 (containsKey!1618 (t!357556 (t!357556 lt!1672302)) key!3287))))

(assert (= (and d!1374381 (not res!1864822)) b!4488467))

(assert (= (and b!4488467 res!1864823) b!4488468))

(declare-fun m!5210435 () Bool)

(assert (=> b!4488468 m!5210435))

(assert (=> b!4487650 d!1374381))

(declare-fun d!1374383 () Bool)

(declare-fun c!764505 () Bool)

(assert (=> d!1374383 (= c!764505 ((_ is Nil!50479) (toList!4211 lm!1477)))))

(declare-fun e!2795541 () (InoxSet tuple2!50844))

(assert (=> d!1374383 (= (content!8203 (toList!4211 lm!1477)) e!2795541)))

(declare-fun b!4488473 () Bool)

(assert (=> b!4488473 (= e!2795541 ((as const (Array tuple2!50844 Bool)) false))))

(declare-fun b!4488474 () Bool)

(assert (=> b!4488474 (= e!2795541 ((_ map or) (store ((as const (Array tuple2!50844 Bool)) false) (h!56280 (toList!4211 lm!1477)) true) (content!8203 (t!357557 (toList!4211 lm!1477)))))))

(assert (= (and d!1374383 c!764505) b!4488473))

(assert (= (and d!1374383 (not c!764505)) b!4488474))

(declare-fun m!5210437 () Bool)

(assert (=> b!4488474 m!5210437))

(assert (=> b!4488474 m!5209189))

(assert (=> d!1373941 d!1374383))

(declare-fun d!1374385 () Bool)

(assert (=> d!1374385 (isDefined!8296 (getValueByKey!989 (toList!4211 lt!1672305) hash!344))))

(declare-fun lt!1673084 () Unit!90274)

(assert (=> d!1374385 (= lt!1673084 (choose!28907 (toList!4211 lt!1672305) hash!344))))

(declare-fun e!2795542 () Bool)

(assert (=> d!1374385 e!2795542))

(declare-fun res!1864824 () Bool)

(assert (=> d!1374385 (=> (not res!1864824) (not e!2795542))))

(assert (=> d!1374385 (= res!1864824 (isStrictlySorted!379 (toList!4211 lt!1672305)))))

(assert (=> d!1374385 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!893 (toList!4211 lt!1672305) hash!344) lt!1673084)))

(declare-fun b!4488475 () Bool)

(assert (=> b!4488475 (= e!2795542 (containsKey!1622 (toList!4211 lt!1672305) hash!344))))

(assert (= (and d!1374385 res!1864824) b!4488475))

(assert (=> d!1374385 m!5209017))

(assert (=> d!1374385 m!5209017))

(assert (=> d!1374385 m!5209207))

(declare-fun m!5210439 () Bool)

(assert (=> d!1374385 m!5210439))

(assert (=> d!1374385 m!5209595))

(assert (=> b!4488475 m!5209203))

(assert (=> b!4487698 d!1374385))

(assert (=> b!4487698 d!1374371))

(assert (=> b!4487698 d!1374053))

(declare-fun b!4488476 () Bool)

(declare-fun e!2795548 () Unit!90274)

(declare-fun Unit!90430 () Unit!90274)

(assert (=> b!4488476 (= e!2795548 Unit!90430)))

(declare-fun b!4488477 () Bool)

(declare-fun e!2795545 () List!50605)

(assert (=> b!4488477 (= e!2795545 (getKeysList!413 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305)))))))

(declare-fun b!4488478 () Bool)

(assert (=> b!4488478 (= e!2795545 (keys!17480 (extractMap!1158 (toList!4211 lt!1672305))))))

(declare-fun b!4488479 () Bool)

(declare-fun e!2795543 () Bool)

(declare-fun e!2795547 () Bool)

(assert (=> b!4488479 (= e!2795543 e!2795547)))

(declare-fun res!1864825 () Bool)

(assert (=> b!4488479 (=> (not res!1864825) (not e!2795547))))

(assert (=> b!4488479 (= res!1864825 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287)))))

(declare-fun bm!312350 () Bool)

(declare-fun call!312355 () Bool)

(assert (=> bm!312350 (= call!312355 (contains!13117 e!2795545 key!3287))))

(declare-fun c!764506 () Bool)

(declare-fun c!764508 () Bool)

(assert (=> bm!312350 (= c!764506 c!764508)))

(declare-fun b!4488480 () Bool)

(declare-fun e!2795544 () Unit!90274)

(assert (=> b!4488480 (= e!2795544 e!2795548)))

(declare-fun c!764507 () Bool)

(assert (=> b!4488480 (= c!764507 call!312355)))

(declare-fun b!4488481 () Bool)

(declare-fun lt!1673092 () Unit!90274)

(assert (=> b!4488481 (= e!2795544 lt!1673092)))

(declare-fun lt!1673087 () Unit!90274)

(assert (=> b!4488481 (= lt!1673087 (lemmaContainsKeyImpliesGetValueByKeyDefined!892 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287))))

(assert (=> b!4488481 (isDefined!8295 (getValueByKey!988 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287))))

(declare-fun lt!1673090 () Unit!90274)

(assert (=> b!4488481 (= lt!1673090 lt!1673087)))

(assert (=> b!4488481 (= lt!1673092 (lemmaInListThenGetKeysListContains!409 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287))))

(assert (=> b!4488481 call!312355))

(declare-fun b!4488482 () Bool)

(assert (=> b!4488482 (= e!2795547 (contains!13117 (keys!17480 (extractMap!1158 (toList!4211 lt!1672305))) key!3287))))

(declare-fun d!1374387 () Bool)

(assert (=> d!1374387 e!2795543))

(declare-fun res!1864827 () Bool)

(assert (=> d!1374387 (=> res!1864827 e!2795543)))

(declare-fun e!2795546 () Bool)

(assert (=> d!1374387 (= res!1864827 e!2795546)))

(declare-fun res!1864826 () Bool)

(assert (=> d!1374387 (=> (not res!1864826) (not e!2795546))))

(declare-fun lt!1673091 () Bool)

(assert (=> d!1374387 (= res!1864826 (not lt!1673091))))

(declare-fun lt!1673085 () Bool)

(assert (=> d!1374387 (= lt!1673091 lt!1673085)))

(declare-fun lt!1673088 () Unit!90274)

(assert (=> d!1374387 (= lt!1673088 e!2795544)))

(assert (=> d!1374387 (= c!764508 lt!1673085)))

(assert (=> d!1374387 (= lt!1673085 (containsKey!1621 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287))))

(assert (=> d!1374387 (= (contains!13113 (extractMap!1158 (toList!4211 lt!1672305)) key!3287) lt!1673091)))

(declare-fun b!4488483 () Bool)

(assert (=> b!4488483 false))

(declare-fun lt!1673089 () Unit!90274)

(declare-fun lt!1673086 () Unit!90274)

(assert (=> b!4488483 (= lt!1673089 lt!1673086)))

(assert (=> b!4488483 (containsKey!1621 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287)))

(assert (=> b!4488483 (= lt!1673086 (lemmaInGetKeysListThenContainsKey!412 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287))))

(declare-fun Unit!90433 () Unit!90274)

(assert (=> b!4488483 (= e!2795548 Unit!90433)))

(declare-fun b!4488484 () Bool)

(assert (=> b!4488484 (= e!2795546 (not (contains!13117 (keys!17480 (extractMap!1158 (toList!4211 lt!1672305))) key!3287)))))

(assert (= (and d!1374387 c!764508) b!4488481))

(assert (= (and d!1374387 (not c!764508)) b!4488480))

(assert (= (and b!4488480 c!764507) b!4488483))

(assert (= (and b!4488480 (not c!764507)) b!4488476))

(assert (= (or b!4488481 b!4488480) bm!312350))

(assert (= (and bm!312350 c!764506) b!4488477))

(assert (= (and bm!312350 (not c!764506)) b!4488478))

(assert (= (and d!1374387 res!1864826) b!4488484))

(assert (= (and d!1374387 (not res!1864827)) b!4488479))

(assert (= (and b!4488479 res!1864825) b!4488482))

(declare-fun m!5210441 () Bool)

(assert (=> d!1374387 m!5210441))

(assert (=> b!4488478 m!5208701))

(declare-fun m!5210443 () Bool)

(assert (=> b!4488478 m!5210443))

(declare-fun m!5210445 () Bool)

(assert (=> bm!312350 m!5210445))

(declare-fun m!5210447 () Bool)

(assert (=> b!4488479 m!5210447))

(assert (=> b!4488479 m!5210447))

(declare-fun m!5210449 () Bool)

(assert (=> b!4488479 m!5210449))

(declare-fun m!5210451 () Bool)

(assert (=> b!4488481 m!5210451))

(assert (=> b!4488481 m!5210447))

(assert (=> b!4488481 m!5210447))

(assert (=> b!4488481 m!5210449))

(declare-fun m!5210453 () Bool)

(assert (=> b!4488481 m!5210453))

(declare-fun m!5210455 () Bool)

(assert (=> b!4488477 m!5210455))

(assert (=> b!4488482 m!5208701))

(assert (=> b!4488482 m!5210443))

(assert (=> b!4488482 m!5210443))

(declare-fun m!5210457 () Bool)

(assert (=> b!4488482 m!5210457))

(assert (=> b!4488484 m!5208701))

(assert (=> b!4488484 m!5210443))

(assert (=> b!4488484 m!5210443))

(assert (=> b!4488484 m!5210457))

(assert (=> b!4488483 m!5210441))

(declare-fun m!5210459 () Bool)

(assert (=> b!4488483 m!5210459))

(assert (=> d!1373913 d!1374387))

(assert (=> d!1373913 d!1373901))

(declare-fun d!1374389 () Bool)

(assert (=> d!1374389 (contains!13113 (extractMap!1158 (toList!4211 lt!1672305)) key!3287)))

(assert (=> d!1374389 true))

(declare-fun _$34!586 () Unit!90274)

(assert (=> d!1374389 (= (choose!28896 lt!1672305 key!3287 hashF!1107) _$34!586)))

(declare-fun bs!827075 () Bool)

(assert (= bs!827075 d!1374389))

(assert (=> bs!827075 m!5208701))

(assert (=> bs!827075 m!5208701))

(assert (=> bs!827075 m!5209075))

(assert (=> d!1373913 d!1374389))

(declare-fun d!1374391 () Bool)

(declare-fun res!1864828 () Bool)

(declare-fun e!2795549 () Bool)

(assert (=> d!1374391 (=> res!1864828 e!2795549)))

(assert (=> d!1374391 (= res!1864828 ((_ is Nil!50479) (toList!4211 lt!1672305)))))

(assert (=> d!1374391 (= (forall!10122 (toList!4211 lt!1672305) lambda!166743) e!2795549)))

(declare-fun b!4488485 () Bool)

(declare-fun e!2795550 () Bool)

(assert (=> b!4488485 (= e!2795549 e!2795550)))

(declare-fun res!1864829 () Bool)

(assert (=> b!4488485 (=> (not res!1864829) (not e!2795550))))

(assert (=> b!4488485 (= res!1864829 (dynLambda!21071 lambda!166743 (h!56280 (toList!4211 lt!1672305))))))

(declare-fun b!4488486 () Bool)

(assert (=> b!4488486 (= e!2795550 (forall!10122 (t!357557 (toList!4211 lt!1672305)) lambda!166743))))

(assert (= (and d!1374391 (not res!1864828)) b!4488485))

(assert (= (and b!4488485 res!1864829) b!4488486))

(declare-fun b_lambda!150847 () Bool)

(assert (=> (not b_lambda!150847) (not b!4488485)))

(declare-fun m!5210461 () Bool)

(assert (=> b!4488485 m!5210461))

(declare-fun m!5210463 () Bool)

(assert (=> b!4488486 m!5210463))

(assert (=> d!1373913 d!1374391))

(assert (=> d!1373955 d!1374073))

(declare-fun d!1374393 () Bool)

(declare-fun res!1864830 () Bool)

(declare-fun e!2795551 () Bool)

(assert (=> d!1374393 (=> res!1864830 e!2795551)))

(assert (=> d!1374393 (= res!1864830 (and ((_ is Cons!50478) lt!1672505) (= (_1!28715 (h!56279 lt!1672505)) key!3287)))))

(assert (=> d!1374393 (= (containsKey!1618 lt!1672505 key!3287) e!2795551)))

(declare-fun b!4488487 () Bool)

(declare-fun e!2795552 () Bool)

(assert (=> b!4488487 (= e!2795551 e!2795552)))

(declare-fun res!1864831 () Bool)

(assert (=> b!4488487 (=> (not res!1864831) (not e!2795552))))

(assert (=> b!4488487 (= res!1864831 ((_ is Cons!50478) lt!1672505))))

(declare-fun b!4488488 () Bool)

(assert (=> b!4488488 (= e!2795552 (containsKey!1618 (t!357556 lt!1672505) key!3287))))

(assert (= (and d!1374393 (not res!1864830)) b!4488487))

(assert (= (and b!4488487 res!1864831) b!4488488))

(declare-fun m!5210465 () Bool)

(assert (=> b!4488488 m!5210465))

(assert (=> d!1373947 d!1374393))

(declare-fun d!1374395 () Bool)

(declare-fun res!1864832 () Bool)

(declare-fun e!2795553 () Bool)

(assert (=> d!1374395 (=> res!1864832 e!2795553)))

(assert (=> d!1374395 (= res!1864832 (not ((_ is Cons!50478) lt!1672302)))))

(assert (=> d!1374395 (= (noDuplicateKeys!1102 lt!1672302) e!2795553)))

(declare-fun b!4488489 () Bool)

(declare-fun e!2795554 () Bool)

(assert (=> b!4488489 (= e!2795553 e!2795554)))

(declare-fun res!1864833 () Bool)

(assert (=> b!4488489 (=> (not res!1864833) (not e!2795554))))

(assert (=> b!4488489 (= res!1864833 (not (containsKey!1618 (t!357556 lt!1672302) (_1!28715 (h!56279 lt!1672302)))))))

(declare-fun b!4488490 () Bool)

(assert (=> b!4488490 (= e!2795554 (noDuplicateKeys!1102 (t!357556 lt!1672302)))))

(assert (= (and d!1374395 (not res!1864832)) b!4488489))

(assert (= (and b!4488489 res!1864833) b!4488490))

(declare-fun m!5210467 () Bool)

(assert (=> b!4488489 m!5210467))

(assert (=> b!4488490 m!5209793))

(assert (=> d!1373947 d!1374395))

(declare-fun d!1374397 () Bool)

(declare-fun c!764509 () Bool)

(assert (=> d!1374397 (= c!764509 ((_ is Nil!50479) (t!357557 (toList!4211 lm!1477))))))

(declare-fun e!2795555 () (InoxSet tuple2!50844))

(assert (=> d!1374397 (= (content!8203 (t!357557 (toList!4211 lm!1477))) e!2795555)))

(declare-fun b!4488491 () Bool)

(assert (=> b!4488491 (= e!2795555 ((as const (Array tuple2!50844 Bool)) false))))

(declare-fun b!4488492 () Bool)

(assert (=> b!4488492 (= e!2795555 ((_ map or) (store ((as const (Array tuple2!50844 Bool)) false) (h!56280 (t!357557 (toList!4211 lm!1477))) true) (content!8203 (t!357557 (t!357557 (toList!4211 lm!1477))))))))

(assert (= (and d!1374397 c!764509) b!4488491))

(assert (= (and d!1374397 (not c!764509)) b!4488492))

(declare-fun m!5210469 () Bool)

(assert (=> b!4488492 m!5210469))

(assert (=> b!4488492 m!5209785))

(assert (=> d!1373951 d!1374397))

(declare-fun d!1374399 () Bool)

(declare-fun c!764512 () Bool)

(assert (=> d!1374399 (= c!764512 ((_ is Nil!50481) (keys!17480 lt!1672303)))))

(declare-fun e!2795558 () (InoxSet K!11895))

(assert (=> d!1374399 (= (content!8202 (keys!17480 lt!1672303)) e!2795558)))

(declare-fun b!4488497 () Bool)

(assert (=> b!4488497 (= e!2795558 ((as const (Array K!11895 Bool)) false))))

(declare-fun b!4488498 () Bool)

(assert (=> b!4488498 (= e!2795558 ((_ map or) (store ((as const (Array K!11895 Bool)) false) (h!56284 (keys!17480 lt!1672303)) true) (content!8202 (t!357559 (keys!17480 lt!1672303)))))))

(assert (= (and d!1374399 c!764512) b!4488497))

(assert (= (and d!1374399 (not c!764512)) b!4488498))

(declare-fun m!5210471 () Bool)

(assert (=> b!4488498 m!5210471))

(declare-fun m!5210473 () Bool)

(assert (=> b!4488498 m!5210473))

(assert (=> b!4487644 d!1374399))

(assert (=> b!4487644 d!1374143))

(declare-fun d!1374401 () Bool)

(declare-fun c!764513 () Bool)

(assert (=> d!1374401 (= c!764513 ((_ is Nil!50481) (keys!17480 lt!1672490)))))

(declare-fun e!2795559 () (InoxSet K!11895))

(assert (=> d!1374401 (= (content!8202 (keys!17480 lt!1672490)) e!2795559)))

(declare-fun b!4488499 () Bool)

(assert (=> b!4488499 (= e!2795559 ((as const (Array K!11895 Bool)) false))))

(declare-fun b!4488500 () Bool)

(assert (=> b!4488500 (= e!2795559 ((_ map or) (store ((as const (Array K!11895 Bool)) false) (h!56284 (keys!17480 lt!1672490)) true) (content!8202 (t!357559 (keys!17480 lt!1672490)))))))

(assert (= (and d!1374401 c!764513) b!4488499))

(assert (= (and d!1374401 (not c!764513)) b!4488500))

(declare-fun m!5210475 () Bool)

(assert (=> b!4488500 m!5210475))

(declare-fun m!5210477 () Bool)

(assert (=> b!4488500 m!5210477))

(assert (=> b!4487644 d!1374401))

(declare-fun bs!827076 () Bool)

(declare-fun b!4488502 () Bool)

(assert (= bs!827076 (and b!4488502 b!4488437)))

(declare-fun lambda!166910 () Int)

(assert (=> bs!827076 (= (= (toList!4212 lt!1672490) (t!357556 (toList!4212 lt!1672303))) (= lambda!166910 lambda!166906))))

(declare-fun bs!827077 () Bool)

(assert (= bs!827077 (and b!4488502 b!4488123)))

(assert (=> bs!827077 (= (= (toList!4212 lt!1672490) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477))))) (= lambda!166910 lambda!166875))))

(declare-fun bs!827078 () Bool)

(assert (= bs!827078 (and b!4488502 b!4488127)))

(assert (=> bs!827078 (= (= (toList!4212 lt!1672490) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166910 lambda!166877))))

(declare-fun bs!827079 () Bool)

(assert (= bs!827079 (and b!4488502 b!4488441)))

(assert (=> bs!827079 (= (= (toList!4212 lt!1672490) (toList!4212 lt!1672303)) (= lambda!166910 lambda!166908))))

(declare-fun bs!827080 () Bool)

(assert (= bs!827080 (and b!4488502 b!4488102)))

(assert (=> bs!827080 (= (= (toList!4212 lt!1672490) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))))) (= lambda!166910 lambda!166872))))

(declare-fun bs!827081 () Bool)

(assert (= bs!827081 (and b!4488502 b!4488121)))

(assert (=> bs!827081 (= (= (toList!4212 lt!1672490) (Cons!50478 (h!56279 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (t!357556 (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))))) (= lambda!166910 lambda!166876))))

(declare-fun bs!827082 () Bool)

(assert (= bs!827082 (and b!4488502 b!4488057)))

(assert (=> bs!827082 (= (= (toList!4212 lt!1672490) (toList!4212 lt!1672303)) (= lambda!166910 lambda!166861))))

(declare-fun bs!827083 () Bool)

(assert (= bs!827083 (and b!4488502 b!4488435)))

(assert (=> bs!827083 (= (= (toList!4212 lt!1672490) (Cons!50478 (h!56279 (toList!4212 lt!1672303)) (t!357556 (toList!4212 lt!1672303)))) (= lambda!166910 lambda!166907))))

(declare-fun bs!827084 () Bool)

(assert (= bs!827084 (and b!4488502 b!4487755)))

(assert (=> bs!827084 (= (= (toList!4212 lt!1672490) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166910 lambda!166764))))

(declare-fun bs!827085 () Bool)

(assert (= bs!827085 (and b!4488502 b!4488031)))

(assert (=> bs!827085 (= (= (toList!4212 lt!1672490) (toList!4212 (extractMap!1158 (toList!4211 lm!1477)))) (= lambda!166910 lambda!166853))))

(declare-fun bs!827086 () Bool)

(assert (= bs!827086 (and b!4488502 b!4488104)))

(assert (=> bs!827086 (= (= (toList!4212 lt!1672490) (t!357556 (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477)))))) (= lambda!166910 lambda!166871))))

(declare-fun bs!827087 () Bool)

(assert (= bs!827087 (and b!4488502 b!4488108)))

(assert (=> bs!827087 (= (= (toList!4212 lt!1672490) (toList!4212 (extractMap!1158 (t!357557 (toList!4211 lm!1477))))) (= lambda!166910 lambda!166873))))

(assert (=> b!4488502 true))

(declare-fun bs!827088 () Bool)

(declare-fun b!4488503 () Bool)

(assert (= bs!827088 (and b!4488503 b!4488103)))

(declare-fun lambda!166911 () Int)

(assert (=> bs!827088 (= lambda!166911 lambda!166874)))

(declare-fun bs!827089 () Bool)

(assert (= bs!827089 (and b!4488503 b!4488032)))

(assert (=> bs!827089 (= lambda!166911 lambda!166854)))

(declare-fun bs!827090 () Bool)

(assert (= bs!827090 (and b!4488503 b!4488058)))

(assert (=> bs!827090 (= lambda!166911 lambda!166862)))

(declare-fun bs!827091 () Bool)

(assert (= bs!827091 (and b!4488503 b!4487756)))

(assert (=> bs!827091 (= lambda!166911 lambda!166765)))

(declare-fun bs!827092 () Bool)

(assert (= bs!827092 (and b!4488503 b!4488122)))

(assert (=> bs!827092 (= lambda!166911 lambda!166878)))

(declare-fun bs!827093 () Bool)

(assert (= bs!827093 (and b!4488503 b!4488436)))

(assert (=> bs!827093 (= lambda!166911 lambda!166909)))

(declare-fun d!1374403 () Bool)

(declare-fun e!2795560 () Bool)

(assert (=> d!1374403 e!2795560))

(declare-fun res!1864836 () Bool)

(assert (=> d!1374403 (=> (not res!1864836) (not e!2795560))))

(declare-fun lt!1673093 () List!50605)

(assert (=> d!1374403 (= res!1864836 (noDuplicate!716 lt!1673093))))

(assert (=> d!1374403 (= lt!1673093 (getKeysList!413 (toList!4212 lt!1672490)))))

(assert (=> d!1374403 (= (keys!17480 lt!1672490) lt!1673093)))

(declare-fun b!4488501 () Bool)

(declare-fun res!1864835 () Bool)

(assert (=> b!4488501 (=> (not res!1864835) (not e!2795560))))

(assert (=> b!4488501 (= res!1864835 (= (length!288 lt!1673093) (length!289 (toList!4212 lt!1672490))))))

(declare-fun res!1864834 () Bool)

(assert (=> b!4488502 (=> (not res!1864834) (not e!2795560))))

(assert (=> b!4488502 (= res!1864834 (forall!10126 lt!1673093 lambda!166910))))

(assert (=> b!4488503 (= e!2795560 (= (content!8202 lt!1673093) (content!8202 (map!11078 (toList!4212 lt!1672490) lambda!166911))))))

(assert (= (and d!1374403 res!1864836) b!4488501))

(assert (= (and b!4488501 res!1864835) b!4488502))

(assert (= (and b!4488502 res!1864834) b!4488503))

(declare-fun m!5210479 () Bool)

(assert (=> d!1374403 m!5210479))

(assert (=> d!1374403 m!5209869))

(declare-fun m!5210481 () Bool)

(assert (=> b!4488501 m!5210481))

(declare-fun m!5210483 () Bool)

(assert (=> b!4488501 m!5210483))

(declare-fun m!5210485 () Bool)

(assert (=> b!4488502 m!5210485))

(declare-fun m!5210487 () Bool)

(assert (=> b!4488503 m!5210487))

(declare-fun m!5210489 () Bool)

(assert (=> b!4488503 m!5210489))

(assert (=> b!4488503 m!5210489))

(declare-fun m!5210491 () Bool)

(assert (=> b!4488503 m!5210491))

(assert (=> b!4487644 d!1374403))

(declare-fun d!1374405 () Bool)

(declare-fun res!1864837 () Bool)

(declare-fun e!2795561 () Bool)

(assert (=> d!1374405 (=> res!1864837 e!2795561)))

(assert (=> d!1374405 (= res!1864837 (not ((_ is Cons!50478) (_2!28716 lt!1672311))))))

(assert (=> d!1374405 (= (noDuplicateKeys!1102 (_2!28716 lt!1672311)) e!2795561)))

(declare-fun b!4488504 () Bool)

(declare-fun e!2795562 () Bool)

(assert (=> b!4488504 (= e!2795561 e!2795562)))

(declare-fun res!1864838 () Bool)

(assert (=> b!4488504 (=> (not res!1864838) (not e!2795562))))

(assert (=> b!4488504 (= res!1864838 (not (containsKey!1618 (t!357556 (_2!28716 lt!1672311)) (_1!28715 (h!56279 (_2!28716 lt!1672311))))))))

(declare-fun b!4488505 () Bool)

(assert (=> b!4488505 (= e!2795562 (noDuplicateKeys!1102 (t!357556 (_2!28716 lt!1672311))))))

(assert (= (and d!1374405 (not res!1864837)) b!4488504))

(assert (= (and b!4488504 res!1864838) b!4488505))

(declare-fun m!5210493 () Bool)

(assert (=> b!4488504 m!5210493))

(declare-fun m!5210495 () Bool)

(assert (=> b!4488505 m!5210495))

(assert (=> bs!826604 d!1374405))

(declare-fun d!1374407 () Bool)

(assert (=> d!1374407 (dynLambda!21071 lambda!166699 lt!1672311)))

(assert (=> d!1374407 true))

(declare-fun _$7!1741 () Unit!90274)

(assert (=> d!1374407 (= (choose!28900 (toList!4211 lm!1477) lambda!166699 lt!1672311) _$7!1741)))

(declare-fun b_lambda!150849 () Bool)

(assert (=> (not b_lambda!150849) (not d!1374407)))

(declare-fun bs!827094 () Bool)

(assert (= bs!827094 d!1374407))

(assert (=> bs!827094 m!5209171))

(assert (=> d!1373945 d!1374407))

(assert (=> d!1373945 d!1373953))

(declare-fun d!1374409 () Bool)

(declare-fun res!1864839 () Bool)

(declare-fun e!2795563 () Bool)

(assert (=> d!1374409 (=> res!1864839 e!2795563)))

(assert (=> d!1374409 (= res!1864839 (and ((_ is Cons!50478) (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))) (= (_1!28715 (h!56279 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))))) key!3287)))))

(assert (=> d!1374409 (= (containsKey!1618 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477)))) key!3287) e!2795563)))

(declare-fun b!4488506 () Bool)

(declare-fun e!2795564 () Bool)

(assert (=> b!4488506 (= e!2795563 e!2795564)))

(declare-fun res!1864840 () Bool)

(assert (=> b!4488506 (=> (not res!1864840) (not e!2795564))))

(assert (=> b!4488506 (= res!1864840 ((_ is Cons!50478) (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))

(declare-fun b!4488507 () Bool)

(assert (=> b!4488507 (= e!2795564 (containsKey!1618 (t!357556 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(assert (= (and d!1374409 (not res!1864839)) b!4488506))

(assert (= (and b!4488506 res!1864840) b!4488507))

(declare-fun m!5210497 () Bool)

(assert (=> b!4488507 m!5210497))

(assert (=> b!4487558 d!1374409))

(declare-fun d!1374411 () Bool)

(declare-fun res!1864841 () Bool)

(declare-fun e!2795567 () Bool)

(assert (=> d!1374411 (=> res!1864841 e!2795567)))

(declare-fun e!2795565 () Bool)

(assert (=> d!1374411 (= res!1864841 e!2795565)))

(declare-fun res!1864842 () Bool)

(assert (=> d!1374411 (=> (not res!1864842) (not e!2795565))))

(assert (=> d!1374411 (= res!1864842 ((_ is Cons!50479) (t!357557 (t!357557 (toList!4211 lm!1477)))))))

(assert (=> d!1374411 (= (containsKeyBiggerList!82 (t!357557 (t!357557 (toList!4211 lm!1477))) key!3287) e!2795567)))

(declare-fun b!4488508 () Bool)

(assert (=> b!4488508 (= e!2795565 (containsKey!1618 (_2!28716 (h!56280 (t!357557 (t!357557 (toList!4211 lm!1477))))) key!3287))))

(declare-fun b!4488509 () Bool)

(declare-fun e!2795566 () Bool)

(assert (=> b!4488509 (= e!2795567 e!2795566)))

(declare-fun res!1864843 () Bool)

(assert (=> b!4488509 (=> (not res!1864843) (not e!2795566))))

(assert (=> b!4488509 (= res!1864843 ((_ is Cons!50479) (t!357557 (t!357557 (toList!4211 lm!1477)))))))

(declare-fun b!4488510 () Bool)

(assert (=> b!4488510 (= e!2795566 (containsKeyBiggerList!82 (t!357557 (t!357557 (t!357557 (toList!4211 lm!1477)))) key!3287))))

(assert (= (and d!1374411 res!1864842) b!4488508))

(assert (= (and d!1374411 (not res!1864841)) b!4488509))

(assert (= (and b!4488509 res!1864843) b!4488510))

(declare-fun m!5210499 () Bool)

(assert (=> b!4488508 m!5210499))

(declare-fun m!5210501 () Bool)

(assert (=> b!4488510 m!5210501))

(assert (=> b!4487560 d!1374411))

(assert (=> d!1373929 d!1373923))

(assert (=> d!1373929 d!1373925))

(declare-fun d!1374413 () Bool)

(declare-fun res!1864844 () Bool)

(declare-fun e!2795568 () Bool)

(assert (=> d!1374413 (=> res!1864844 e!2795568)))

(assert (=> d!1374413 (= res!1864844 ((_ is Nil!50479) (toList!4211 lt!1672305)))))

(assert (=> d!1374413 (= (forall!10122 (toList!4211 lt!1672305) lambda!166750) e!2795568)))

(declare-fun b!4488511 () Bool)

(declare-fun e!2795569 () Bool)

(assert (=> b!4488511 (= e!2795568 e!2795569)))

(declare-fun res!1864845 () Bool)

(assert (=> b!4488511 (=> (not res!1864845) (not e!2795569))))

(assert (=> b!4488511 (= res!1864845 (dynLambda!21071 lambda!166750 (h!56280 (toList!4211 lt!1672305))))))

(declare-fun b!4488512 () Bool)

(assert (=> b!4488512 (= e!2795569 (forall!10122 (t!357557 (toList!4211 lt!1672305)) lambda!166750))))

(assert (= (and d!1374413 (not res!1864844)) b!4488511))

(assert (= (and b!4488511 res!1864845) b!4488512))

(declare-fun b_lambda!150851 () Bool)

(assert (=> (not b_lambda!150851) (not b!4488511)))

(declare-fun m!5210503 () Bool)

(assert (=> b!4488511 m!5210503))

(declare-fun m!5210505 () Bool)

(assert (=> b!4488512 m!5210505))

(assert (=> d!1373929 d!1374413))

(declare-fun d!1374415 () Bool)

(assert (=> d!1374415 (= (eq!559 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) (-!328 (extractMap!1158 (toList!4211 lt!1672305)) key!3287)) (= (content!8201 (toList!4212 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))) (content!8201 (toList!4212 (-!328 (extractMap!1158 (toList!4211 lt!1672305)) key!3287)))))))

(declare-fun bs!827095 () Bool)

(assert (= bs!827095 d!1374415))

(assert (=> bs!827095 m!5209123))

(declare-fun m!5210507 () Bool)

(assert (=> bs!827095 m!5210507))

(assert (=> d!1373929 d!1374415))

(assert (=> d!1373929 d!1373901))

(declare-fun d!1374417 () Bool)

(assert (=> d!1374417 (eq!559 (extractMap!1158 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))) (-!328 (extractMap!1158 (toList!4211 lt!1672305)) key!3287))))

(assert (=> d!1374417 true))

(declare-fun _$8!560 () Unit!90274)

(assert (=> d!1374417 (= (choose!28897 lt!1672305 hash!344 newBucket!178 key!3287 hashF!1107) _$8!560)))

(declare-fun bs!827096 () Bool)

(assert (= bs!827096 d!1374417))

(assert (=> bs!827096 m!5208701))

(assert (=> bs!827096 m!5209129))

(assert (=> bs!827096 m!5208701))

(assert (=> bs!827096 m!5208733))

(assert (=> bs!827096 m!5208733))

(assert (=> bs!827096 m!5209129))

(assert (=> bs!827096 m!5209133))

(assert (=> bs!827096 m!5208739))

(assert (=> d!1373929 d!1374417))

(declare-fun d!1374419 () Bool)

(declare-fun e!2795570 () Bool)

(assert (=> d!1374419 e!2795570))

(declare-fun res!1864846 () Bool)

(assert (=> d!1374419 (=> (not res!1864846) (not e!2795570))))

(declare-fun lt!1673094 () ListMap!3473)

(assert (=> d!1374419 (= res!1864846 (not (contains!13113 lt!1673094 key!3287)))))

(assert (=> d!1374419 (= lt!1673094 (ListMap!3474 (removePresrvNoDuplicatedKeys!89 (toList!4212 (extractMap!1158 (toList!4211 lt!1672305))) key!3287)))))

(assert (=> d!1374419 (= (-!328 (extractMap!1158 (toList!4211 lt!1672305)) key!3287) lt!1673094)))

(declare-fun b!4488513 () Bool)

(assert (=> b!4488513 (= e!2795570 (= ((_ map and) (content!8202 (keys!17480 (extractMap!1158 (toList!4211 lt!1672305)))) ((_ map not) (store ((as const (Array K!11895 Bool)) false) key!3287 true))) (content!8202 (keys!17480 lt!1673094))))))

(assert (= (and d!1374419 res!1864846) b!4488513))

(declare-fun m!5210509 () Bool)

(assert (=> d!1374419 m!5210509))

(declare-fun m!5210511 () Bool)

(assert (=> d!1374419 m!5210511))

(declare-fun m!5210513 () Bool)

(assert (=> b!4488513 m!5210513))

(assert (=> b!4488513 m!5210513))

(declare-fun m!5210515 () Bool)

(assert (=> b!4488513 m!5210515))

(assert (=> b!4488513 m!5210443))

(declare-fun m!5210517 () Bool)

(assert (=> b!4488513 m!5210517))

(assert (=> b!4488513 m!5209145))

(assert (=> b!4488513 m!5208701))

(assert (=> b!4488513 m!5210443))

(assert (=> d!1373929 d!1374419))

(declare-fun d!1374421 () Bool)

(declare-fun res!1864847 () Bool)

(declare-fun e!2795571 () Bool)

(assert (=> d!1374421 (=> res!1864847 e!2795571)))

(assert (=> d!1374421 (= res!1864847 ((_ is Nil!50479) (toList!4211 lm!1477)))))

(assert (=> d!1374421 (= (forall!10122 (toList!4211 lm!1477) lambda!166722) e!2795571)))

(declare-fun b!4488514 () Bool)

(declare-fun e!2795572 () Bool)

(assert (=> b!4488514 (= e!2795571 e!2795572)))

(declare-fun res!1864848 () Bool)

(assert (=> b!4488514 (=> (not res!1864848) (not e!2795572))))

(assert (=> b!4488514 (= res!1864848 (dynLambda!21071 lambda!166722 (h!56280 (toList!4211 lm!1477))))))

(declare-fun b!4488515 () Bool)

(assert (=> b!4488515 (= e!2795572 (forall!10122 (t!357557 (toList!4211 lm!1477)) lambda!166722))))

(assert (= (and d!1374421 (not res!1864847)) b!4488514))

(assert (= (and b!4488514 res!1864848) b!4488515))

(declare-fun b_lambda!150853 () Bool)

(assert (=> (not b_lambda!150853) (not b!4488514)))

(declare-fun m!5210519 () Bool)

(assert (=> b!4488514 m!5210519))

(declare-fun m!5210521 () Bool)

(assert (=> b!4488515 m!5210521))

(assert (=> d!1373873 d!1374421))

(declare-fun tp!1337140 () Bool)

(declare-fun b!4488516 () Bool)

(declare-fun e!2795573 () Bool)

(assert (=> b!4488516 (= e!2795573 (and tp_is_empty!27685 tp_is_empty!27687 tp!1337140))))

(assert (=> b!4487710 (= tp!1337135 e!2795573)))

(assert (= (and b!4487710 ((_ is Cons!50478) (t!357556 (t!357556 newBucket!178)))) b!4488516))

(declare-fun e!2795574 () Bool)

(declare-fun tp!1337141 () Bool)

(declare-fun b!4488517 () Bool)

(assert (=> b!4488517 (= e!2795574 (and tp_is_empty!27685 tp_is_empty!27687 tp!1337141))))

(assert (=> b!4487705 (= tp!1337131 e!2795574)))

(assert (= (and b!4487705 ((_ is Cons!50478) (_2!28716 (h!56280 (toList!4211 lm!1477))))) b!4488517))

(declare-fun b!4488518 () Bool)

(declare-fun e!2795575 () Bool)

(declare-fun tp!1337142 () Bool)

(declare-fun tp!1337143 () Bool)

(assert (=> b!4488518 (= e!2795575 (and tp!1337142 tp!1337143))))

(assert (=> b!4487705 (= tp!1337132 e!2795575)))

(assert (= (and b!4487705 ((_ is Cons!50479) (t!357557 (toList!4211 lm!1477)))) b!4488518))

(declare-fun b_lambda!150855 () Bool)

(assert (= b_lambda!150791 (or d!1373901 b_lambda!150855)))

(declare-fun bs!827097 () Bool)

(declare-fun d!1374423 () Bool)

(assert (= bs!827097 (and d!1374423 d!1373901)))

(assert (=> bs!827097 (= (dynLambda!21071 lambda!166733 (h!56280 (toList!4211 lt!1672305))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(assert (=> bs!827097 m!5209409))

(assert (=> b!4488063 d!1374423))

(declare-fun b_lambda!150857 () Bool)

(assert (= b_lambda!150803 (or d!1373857 b_lambda!150857)))

(declare-fun bs!827098 () Bool)

(declare-fun d!1374425 () Bool)

(assert (= bs!827098 (and d!1374425 d!1373857)))

(assert (=> bs!827098 (= (dynLambda!21071 lambda!166719 (h!56280 (toList!4211 lm!1477))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(assert (=> bs!827098 m!5209211))

(assert (=> b!4488337 d!1374425))

(declare-fun b_lambda!150859 () Bool)

(assert (= b_lambda!150785 (or start!442056 b_lambda!150859)))

(declare-fun bs!827099 () Bool)

(declare-fun d!1374427 () Bool)

(assert (= bs!827099 (and d!1374427 start!442056)))

(assert (=> bs!827099 (= (dynLambda!21071 lambda!166699 (h!56280 (t!357557 (toList!4211 lm!1477)))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))

(assert (=> bs!827099 m!5210147))

(assert (=> b!4487894 d!1374427))

(declare-fun b_lambda!150861 () Bool)

(assert (= b_lambda!150853 (or d!1373873 b_lambda!150861)))

(declare-fun bs!827100 () Bool)

(declare-fun d!1374429 () Bool)

(assert (= bs!827100 (and d!1374429 d!1373873)))

(assert (=> bs!827100 (= (dynLambda!21071 lambda!166722 (h!56280 (toList!4211 lm!1477))) (allKeysSameHash!956 (_2!28716 (h!56280 (toList!4211 lm!1477))) (_1!28716 (h!56280 (toList!4211 lm!1477))) hashF!1107))))

(declare-fun m!5210523 () Bool)

(assert (=> bs!827100 m!5210523))

(assert (=> b!4488514 d!1374429))

(declare-fun b_lambda!150863 () Bool)

(assert (= b_lambda!150793 (or d!1373883 b_lambda!150863)))

(declare-fun bs!827101 () Bool)

(declare-fun d!1374431 () Bool)

(assert (= bs!827101 (and d!1374431 d!1373883)))

(assert (=> bs!827101 (= (dynLambda!21071 lambda!166732 (h!56280 (toList!4211 lt!1672305))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(assert (=> bs!827101 m!5209409))

(assert (=> b!4488073 d!1374431))

(declare-fun b_lambda!150865 () Bool)

(assert (= b_lambda!150845 (or d!1373937 b_lambda!150865)))

(declare-fun bs!827102 () Bool)

(declare-fun d!1374433 () Bool)

(assert (= bs!827102 (and d!1374433 d!1373937)))

(assert (=> bs!827102 (= (dynLambda!21071 lambda!166753 (h!56280 (toList!4211 lm!1477))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(assert (=> bs!827102 m!5209211))

(assert (=> b!4488465 d!1374433))

(declare-fun b_lambda!150867 () Bool)

(assert (= b_lambda!150849 (or start!442056 b_lambda!150867)))

(assert (=> d!1374407 d!1373965))

(declare-fun b_lambda!150869 () Bool)

(assert (= b_lambda!150851 (or d!1373929 b_lambda!150869)))

(declare-fun bs!827103 () Bool)

(declare-fun d!1374435 () Bool)

(assert (= bs!827103 (and d!1374435 d!1373929)))

(assert (=> bs!827103 (= (dynLambda!21071 lambda!166750 (h!56280 (toList!4211 lt!1672305))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(assert (=> bs!827103 m!5209409))

(assert (=> b!4488511 d!1374435))

(declare-fun b_lambda!150871 () Bool)

(assert (= b_lambda!150811 (or d!1373911 b_lambda!150871)))

(declare-fun bs!827104 () Bool)

(declare-fun d!1374437 () Bool)

(assert (= bs!827104 (and d!1374437 d!1373911)))

(assert (=> bs!827104 (= (dynLambda!21071 lambda!166737 (h!56280 (t!357557 (toList!4211 lm!1477)))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (t!357557 (toList!4211 lm!1477))))))))

(assert (=> bs!827104 m!5210147))

(assert (=> b!4488422 d!1374437))

(declare-fun b_lambda!150873 () Bool)

(assert (= b_lambda!150805 (or d!1373921 b_lambda!150873)))

(declare-fun bs!827105 () Bool)

(declare-fun d!1374439 () Bool)

(assert (= bs!827105 (and d!1374439 d!1373921)))

(assert (=> bs!827105 (= (dynLambda!21073 lambda!166746 (h!56279 newBucket!178)) (= (hash!2613 hashF!1107 (_1!28715 (h!56279 newBucket!178))) hash!344))))

(declare-fun m!5210525 () Bool)

(assert (=> bs!827105 m!5210525))

(assert (=> b!4488385 d!1374439))

(declare-fun b_lambda!150875 () Bool)

(assert (= b_lambda!150817 (or d!1373923 b_lambda!150875)))

(declare-fun bs!827106 () Bool)

(declare-fun d!1374441 () Bool)

(assert (= bs!827106 (and d!1374441 d!1373923)))

(assert (=> bs!827106 (= (dynLambda!21071 lambda!166747 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178))))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 (+!1436 lt!1672305 (tuple2!50845 hash!344 newBucket!178)))))))))

(assert (=> bs!827106 m!5210265))

(assert (=> b!4488453 d!1374441))

(declare-fun b_lambda!150877 () Bool)

(assert (= b_lambda!150783 (or d!1373851 b_lambda!150877)))

(declare-fun bs!827107 () Bool)

(declare-fun d!1374443 () Bool)

(assert (= bs!827107 (and d!1374443 d!1373851)))

(assert (=> bs!827107 (= (dynLambda!21071 lambda!166711 (h!56280 (toList!4211 lm!1477))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lm!1477)))))))

(assert (=> bs!827107 m!5209211))

(assert (=> b!4487875 d!1374443))

(declare-fun b_lambda!150879 () Bool)

(assert (= b_lambda!150847 (or d!1373913 b_lambda!150879)))

(declare-fun bs!827108 () Bool)

(declare-fun d!1374445 () Bool)

(assert (= bs!827108 (and d!1374445 d!1373913)))

(assert (=> bs!827108 (= (dynLambda!21071 lambda!166743 (h!56280 (toList!4211 lt!1672305))) (noDuplicateKeys!1102 (_2!28716 (h!56280 (toList!4211 lt!1672305)))))))

(assert (=> bs!827108 m!5209409))

(assert (=> b!4488485 d!1374445))

(check-sat (not b!4487755) (not bm!312273) (not bm!312326) (not b!4488420) (not b!4488154) (not b!4488513) (not b!4488006) (not b!4488516) (not d!1374339) (not d!1374063) (not b!4488102) (not d!1374065) (not b!4488482) (not d!1374125) (not b!4487740) (not d!1374167) (not b!4488503) (not b!4488041) (not b!4488468) (not b!4488153) (not d!1374175) (not b!4488436) (not b!4487937) (not b!4488105) (not b!4488079) (not b!4488426) (not b!4488298) (not d!1374145) (not d!1374375) (not bm!312350) (not b!4487871) (not b!4488379) (not bm!312330) (not b!4487936) (not d!1374299) (not b_lambda!150863) (not d!1374067) (not b!4487916) (not b!4488478) (not b!4488489) (not b!4487964) (not b!4488483) (not b!4488124) (not bm!312288) tp_is_empty!27687 (not b!4488510) (not b!4488500) (not d!1374357) (not d!1374149) (not d!1374157) (not b!4488017) (not b!4488488) (not d!1374039) (not d!1373977) (not b!4488481) (not b!4488340) (not b!4487914) (not b!4488515) (not b!4488389) (not b!4488498) (not d!1374083) (not b!4488341) (not bm!312297) (not b!4488121) (not d!1374249) (not d!1374315) (not b!4488486) (not b!4488360) (not b!4488293) (not b!4488464) (not b!4488508) (not b!4488026) (not b!4488039) (not bm!312346) (not b!4488123) (not bm!312327) (not b!4488042) (not b!4488512) tp_is_empty!27685 (not b!4488157) (not b!4488338) (not d!1374161) (not b!4488461) (not b!4488022) (not bs!827106) (not d!1374247) (not d!1374115) (not b!4488032) (not b!4488152) (not d!1374091) (not b!4488454) (not b!4488386) (not b!4488159) (not b!4488064) (not bm!312272) (not b!4488122) (not b!4488358) (not d!1374069) (not b_lambda!150775) (not b!4487756) (not b!4488072) (not d!1374263) (not b!4487851) (not b!4488365) (not bm!312347) (not bs!827099) (not b!4488505) (not bs!827104) (not b!4488477) (not b!4488076) (not d!1374231) (not b!4488490) (not b!4488289) (not b!4488430) (not d!1374313) (not b!4488074) (not b!4487754) (not d!1374321) (not d!1374177) (not b!4487876) (not b!4487965) (not b!4488435) (not b!4488432) (not b_lambda!150855) (not b!4487942) (not b!4488008) (not bm!312287) (not b!4487747) (not b!4488441) (not b_lambda!150865) (not b!4488433) (not b!4488070) (not b!4488158) (not b!4487893) (not d!1374171) (not b!4488104) (not b_lambda!150879) (not d!1374419) (not d!1374371) (not b_lambda!150861) (not b!4487849) (not b_lambda!150867) (not b!4488363) (not bs!827102) (not d!1374041) (not bs!827101) (not d!1373981) (not d!1373985) (not bs!827105) (not b!4488474) (not d!1374047) (not bs!827100) (not b!4488056) (not b!4487852) (not b!4488437) (not b_lambda!150859) (not d!1374123) (not d!1374389) (not b!4488502) (not bs!827107) (not d!1374387) (not b!4488061) (not d!1374349) (not d!1374333) (not b!4488013) (not b!4488501) (not bs!827098) (not bm!312329) (not b!4488475) (not d!1374303) (not b!4488029) (not b!4488462) (not bm!312286) (not bm!312342) (not b!4488282) (not bs!827103) (not b!4488057) (not d!1374113) (not b!4488127) (not b!4488388) (not b!4488103) (not b!4488116) (not b!4488082) (not bm!312274) (not d!1373987) (not b!4488295) (not b!4488438) (not b!4488492) (not b!4488364) (not bm!312325) (not b!4488343) (not bm!312340) (not b!4488287) (not d!1374267) (not b!4488427) (not b!4487895) (not d!1373983) (not bm!312289) (not b!4488362) (not b!4488504) (not b_lambda!150871) (not d!1374403) (not b!4488479) (not b!4488284) (not bm!312328) (not d!1374179) (not d!1374297) (not b!4488030) (not b!4488290) (not d!1374077) (not b!4488484) (not b!4488425) (not b!4488423) (not d!1374143) (not b!4488108) (not bm!312341) (not b!4487850) (not b!4488156) (not d!1374131) (not d!1374377) (not b!4488517) (not b!4488058) (not bs!827108) (not d!1374385) (not d!1374415) (not b_lambda!150877) (not b!4488459) (not d!1374163) (not b!4487911) (not b!4488294) (not b_lambda!150857) (not d!1373989) (not b!4488507) (not bs!827097) (not b!4488113) (not b!4488031) (not b!4488040) (not bm!312348) (not d!1373975) (not b_lambda!150773) (not d!1374365) (not b_lambda!150873) (not b_lambda!150869) (not b!4488466) (not b!4487939) (not d!1374343) (not b_lambda!150875) (not b!4488390) (not b!4488288) (not b!4488457) (not d!1374417) (not b!4488391) (not b!4488518) (not b!4487922))
(check-sat)
