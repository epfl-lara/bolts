; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458424 () Bool)

(assert start!458424)

(declare-fun b!4595931 () Bool)

(declare-fun res!1922129 () Bool)

(declare-fun e!2866674 () Bool)

(assert (=> b!4595931 (=> res!1922129 e!2866674)))

(declare-datatypes ((K!12430 0))(
  ( (K!12431 (val!18215 Int)) )
))
(declare-datatypes ((V!12676 0))(
  ( (V!12677 (val!18216 Int)) )
))
(declare-datatypes ((tuple2!51698 0))(
  ( (tuple2!51699 (_1!29143 K!12430) (_2!29143 V!12676)) )
))
(declare-datatypes ((List!51186 0))(
  ( (Nil!51062) (Cons!51062 (h!57022 tuple2!51698) (t!358180 List!51186)) )
))
(declare-fun newBucket!178 () List!51186)

(declare-fun noDuplicateKeys!1312 (List!51186) Bool)

(assert (=> b!4595931 (= res!1922129 (not (noDuplicateKeys!1312 newBucket!178)))))

(declare-fun res!1922138 () Bool)

(declare-fun e!2866679 () Bool)

(assert (=> start!458424 (=> (not res!1922138) (not e!2866679))))

(declare-datatypes ((tuple2!51700 0))(
  ( (tuple2!51701 (_1!29144 (_ BitVec 64)) (_2!29144 List!51186)) )
))
(declare-datatypes ((List!51187 0))(
  ( (Nil!51063) (Cons!51063 (h!57023 tuple2!51700) (t!358181 List!51187)) )
))
(declare-datatypes ((ListLongMap!3271 0))(
  ( (ListLongMap!3272 (toList!4639 List!51187)) )
))
(declare-fun lm!1477 () ListLongMap!3271)

(declare-fun lambda!185764 () Int)

(declare-fun forall!10586 (List!51187 Int) Bool)

(assert (=> start!458424 (= res!1922138 (forall!10586 (toList!4639 lm!1477) lambda!185764))))

(assert (=> start!458424 e!2866679))

(assert (=> start!458424 true))

(declare-fun e!2866675 () Bool)

(declare-fun inv!66614 (ListLongMap!3271) Bool)

(assert (=> start!458424 (and (inv!66614 lm!1477) e!2866675)))

(declare-fun tp_is_empty!28541 () Bool)

(assert (=> start!458424 tp_is_empty!28541))

(declare-fun e!2866682 () Bool)

(assert (=> start!458424 e!2866682))

(declare-fun b!4595932 () Bool)

(declare-fun e!2866677 () Bool)

(assert (=> b!4595932 (= e!2866679 e!2866677)))

(declare-fun res!1922134 () Bool)

(assert (=> b!4595932 (=> (not res!1922134) (not e!2866677))))

(declare-fun lt!1756315 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4595932 (= res!1922134 (= lt!1756315 hash!344))))

(declare-datatypes ((Hashable!5711 0))(
  ( (HashableExt!5710 (__x!31414 Int)) )
))
(declare-fun hashF!1107 () Hashable!5711)

(declare-fun key!3287 () K!12430)

(declare-fun hash!3197 (Hashable!5711 K!12430) (_ BitVec 64))

(assert (=> b!4595932 (= lt!1756315 (hash!3197 hashF!1107 key!3287))))

(declare-fun b!4595933 () Bool)

(declare-fun e!2866678 () Bool)

(declare-fun e!2866673 () Bool)

(assert (=> b!4595933 (= e!2866678 e!2866673)))

(declare-fun res!1922130 () Bool)

(assert (=> b!4595933 (=> res!1922130 e!2866673)))

(declare-fun lt!1756307 () tuple2!51700)

(declare-fun lt!1756316 () ListLongMap!3271)

(declare-fun lt!1756312 () ListLongMap!3271)

(declare-fun +!1736 (ListLongMap!3271 tuple2!51700) ListLongMap!3271)

(assert (=> b!4595933 (= res!1922130 (not (= lt!1756316 (+!1736 lt!1756312 lt!1756307))))))

(declare-fun tail!7932 (ListLongMap!3271) ListLongMap!3271)

(assert (=> b!4595933 (= lt!1756312 (tail!7932 lm!1477))))

(declare-fun b!4595934 () Bool)

(assert (=> b!4595934 (= e!2866677 (not e!2866674))))

(declare-fun res!1922125 () Bool)

(assert (=> b!4595934 (=> res!1922125 e!2866674)))

(declare-fun lt!1756319 () List!51186)

(declare-fun removePairForKey!937 (List!51186 K!12430) List!51186)

(assert (=> b!4595934 (= res!1922125 (not (= newBucket!178 (removePairForKey!937 lt!1756319 key!3287))))))

(declare-fun lt!1756308 () tuple2!51700)

(declare-datatypes ((Unit!107839 0))(
  ( (Unit!107840) )
))
(declare-fun lt!1756317 () Unit!107839)

(declare-fun forallContained!2841 (List!51187 Int tuple2!51700) Unit!107839)

(assert (=> b!4595934 (= lt!1756317 (forallContained!2841 (toList!4639 lm!1477) lambda!185764 lt!1756308))))

(declare-fun contains!14001 (List!51187 tuple2!51700) Bool)

(assert (=> b!4595934 (contains!14001 (toList!4639 lm!1477) lt!1756308)))

(assert (=> b!4595934 (= lt!1756308 (tuple2!51701 hash!344 lt!1756319))))

(declare-fun lt!1756320 () Unit!107839)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!822 (List!51187 (_ BitVec 64) List!51186) Unit!107839)

(assert (=> b!4595934 (= lt!1756320 (lemmaGetValueByKeyImpliesContainsTuple!822 (toList!4639 lm!1477) hash!344 lt!1756319))))

(declare-fun apply!12049 (ListLongMap!3271 (_ BitVec 64)) List!51186)

(assert (=> b!4595934 (= lt!1756319 (apply!12049 lm!1477 hash!344))))

(declare-fun contains!14002 (ListLongMap!3271 (_ BitVec 64)) Bool)

(assert (=> b!4595934 (contains!14002 lm!1477 lt!1756315)))

(declare-fun lt!1756318 () Unit!107839)

(declare-fun lemmaInGenMapThenLongMapContainsHash!386 (ListLongMap!3271 K!12430 Hashable!5711) Unit!107839)

(assert (=> b!4595934 (= lt!1756318 (lemmaInGenMapThenLongMapContainsHash!386 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4595935 () Bool)

(declare-fun res!1922131 () Bool)

(assert (=> b!4595935 (=> (not res!1922131) (not e!2866679))))

(declare-datatypes ((ListMap!3901 0))(
  ( (ListMap!3902 (toList!4640 List!51186)) )
))
(declare-fun contains!14003 (ListMap!3901 K!12430) Bool)

(declare-fun extractMap!1372 (List!51187) ListMap!3901)

(assert (=> b!4595935 (= res!1922131 (contains!14003 (extractMap!1372 (toList!4639 lm!1477)) key!3287))))

(declare-fun b!4595936 () Bool)

(declare-fun res!1922127 () Bool)

(assert (=> b!4595936 (=> (not res!1922127) (not e!2866679))))

(declare-fun allKeysSameHashInMap!1423 (ListLongMap!3271 Hashable!5711) Bool)

(assert (=> b!4595936 (= res!1922127 (allKeysSameHashInMap!1423 lm!1477 hashF!1107))))

(declare-fun b!4595937 () Bool)

(declare-fun res!1922132 () Bool)

(declare-fun e!2866672 () Bool)

(assert (=> b!4595937 (=> res!1922132 e!2866672)))

(declare-fun lt!1756311 () ListMap!3901)

(assert (=> b!4595937 (= res!1922132 (not (contains!14003 lt!1756311 key!3287)))))

(declare-fun b!4595938 () Bool)

(declare-fun e!2866676 () Bool)

(assert (=> b!4595938 (= e!2866674 e!2866676)))

(declare-fun res!1922126 () Bool)

(assert (=> b!4595938 (=> res!1922126 e!2866676)))

(declare-fun lt!1756314 () Bool)

(assert (=> b!4595938 (= res!1922126 lt!1756314)))

(declare-fun lt!1756321 () Unit!107839)

(declare-fun e!2866680 () Unit!107839)

(assert (=> b!4595938 (= lt!1756321 e!2866680)))

(declare-fun c!787062 () Bool)

(assert (=> b!4595938 (= c!787062 lt!1756314)))

(declare-fun containsKey!2140 (List!51186 K!12430) Bool)

(assert (=> b!4595938 (= lt!1756314 (not (containsKey!2140 (_2!29144 (h!57023 (toList!4639 lm!1477))) key!3287)))))

(declare-fun b!4595939 () Bool)

(declare-fun res!1922133 () Bool)

(assert (=> b!4595939 (=> (not res!1922133) (not e!2866677))))

(declare-fun allKeysSameHash!1168 (List!51186 (_ BitVec 64) Hashable!5711) Bool)

(assert (=> b!4595939 (= res!1922133 (allKeysSameHash!1168 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4595940 () Bool)

(assert (=> b!4595940 (= e!2866672 (forall!10586 (toList!4639 lt!1756312) lambda!185764))))

(declare-fun b!4595941 () Bool)

(declare-fun tp!1340336 () Bool)

(assert (=> b!4595941 (= e!2866675 tp!1340336)))

(declare-fun tp_is_empty!28543 () Bool)

(declare-fun tp!1340337 () Bool)

(declare-fun b!4595942 () Bool)

(assert (=> b!4595942 (= e!2866682 (and tp_is_empty!28541 tp_is_empty!28543 tp!1340337))))

(declare-fun b!4595943 () Bool)

(declare-fun Unit!107841 () Unit!107839)

(assert (=> b!4595943 (= e!2866680 Unit!107841)))

(declare-fun lt!1756309 () Unit!107839)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!282 (ListLongMap!3271 K!12430 Hashable!5711) Unit!107839)

(assert (=> b!4595943 (= lt!1756309 (lemmaNotInItsHashBucketThenNotInMap!282 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4595943 false))

(declare-fun b!4595944 () Bool)

(declare-fun e!2866681 () Bool)

(assert (=> b!4595944 (= e!2866676 e!2866681)))

(declare-fun res!1922128 () Bool)

(assert (=> b!4595944 (=> res!1922128 e!2866681)))

(declare-fun lt!1756310 () List!51187)

(declare-fun containsKeyBiggerList!268 (List!51187 K!12430) Bool)

(assert (=> b!4595944 (= res!1922128 (not (containsKeyBiggerList!268 lt!1756310 key!3287)))))

(assert (=> b!4595944 (= lt!1756310 (Cons!51063 (h!57023 (toList!4639 lm!1477)) Nil!51063))))

(declare-fun b!4595945 () Bool)

(declare-fun Unit!107842 () Unit!107839)

(assert (=> b!4595945 (= e!2866680 Unit!107842)))

(declare-fun b!4595946 () Bool)

(assert (=> b!4595946 (= e!2866681 e!2866678)))

(declare-fun res!1922137 () Bool)

(assert (=> b!4595946 (=> res!1922137 e!2866678)))

(declare-fun tail!7933 (List!51187) List!51187)

(assert (=> b!4595946 (= res!1922137 (not (= (t!358181 (toList!4639 lm!1477)) (tail!7933 (toList!4639 lt!1756316)))))))

(assert (=> b!4595946 (= lt!1756316 (+!1736 lm!1477 lt!1756307))))

(declare-fun eq!719 (ListMap!3901 ListMap!3901) Bool)

(declare-fun -!488 (ListMap!3901 K!12430) ListMap!3901)

(assert (=> b!4595946 (eq!719 (extractMap!1372 (Cons!51063 lt!1756307 Nil!51063)) (-!488 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)) key!3287))))

(assert (=> b!4595946 (= lt!1756307 (tuple2!51701 hash!344 newBucket!178))))

(declare-fun lt!1756306 () Unit!107839)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!78 ((_ BitVec 64) List!51186 List!51186 K!12430 Hashable!5711) Unit!107839)

(assert (=> b!4595946 (= lt!1756306 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!78 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4595946 (contains!14003 (extractMap!1372 lt!1756310) key!3287)))

(declare-fun lt!1756313 () Unit!107839)

(declare-fun lemmaListContainsThenExtractedMapContains!246 (ListLongMap!3271 K!12430 Hashable!5711) Unit!107839)

(assert (=> b!4595946 (= lt!1756313 (lemmaListContainsThenExtractedMapContains!246 (ListLongMap!3272 lt!1756310) key!3287 hashF!1107))))

(declare-fun b!4595947 () Bool)

(declare-fun res!1922135 () Bool)

(assert (=> b!4595947 (=> res!1922135 e!2866674)))

(get-info :version)

(assert (=> b!4595947 (= res!1922135 (or ((_ is Nil!51063) (toList!4639 lm!1477)) (not (= (_1!29144 (h!57023 (toList!4639 lm!1477))) hash!344))))))

(declare-fun b!4595948 () Bool)

(assert (=> b!4595948 (= e!2866673 e!2866672)))

(declare-fun res!1922136 () Bool)

(assert (=> b!4595948 (=> res!1922136 e!2866672)))

(assert (=> b!4595948 (= res!1922136 (not (= lt!1756311 (extractMap!1372 (t!358181 (toList!4639 lm!1477))))))))

(assert (=> b!4595948 (= lt!1756311 (extractMap!1372 (toList!4639 lt!1756312)))))

(assert (= (and start!458424 res!1922138) b!4595936))

(assert (= (and b!4595936 res!1922127) b!4595935))

(assert (= (and b!4595935 res!1922131) b!4595932))

(assert (= (and b!4595932 res!1922134) b!4595939))

(assert (= (and b!4595939 res!1922133) b!4595934))

(assert (= (and b!4595934 (not res!1922125)) b!4595931))

(assert (= (and b!4595931 (not res!1922129)) b!4595947))

(assert (= (and b!4595947 (not res!1922135)) b!4595938))

(assert (= (and b!4595938 c!787062) b!4595943))

(assert (= (and b!4595938 (not c!787062)) b!4595945))

(assert (= (and b!4595938 (not res!1922126)) b!4595944))

(assert (= (and b!4595944 (not res!1922128)) b!4595946))

(assert (= (and b!4595946 (not res!1922137)) b!4595933))

(assert (= (and b!4595933 (not res!1922130)) b!4595948))

(assert (= (and b!4595948 (not res!1922136)) b!4595937))

(assert (= (and b!4595937 (not res!1922132)) b!4595940))

(assert (= start!458424 b!4595941))

(assert (= (and start!458424 ((_ is Cons!51062) newBucket!178)) b!4595942))

(declare-fun m!5420511 () Bool)

(assert (=> b!4595938 m!5420511))

(declare-fun m!5420513 () Bool)

(assert (=> b!4595933 m!5420513))

(declare-fun m!5420515 () Bool)

(assert (=> b!4595933 m!5420515))

(declare-fun m!5420517 () Bool)

(assert (=> b!4595937 m!5420517))

(declare-fun m!5420519 () Bool)

(assert (=> b!4595940 m!5420519))

(declare-fun m!5420521 () Bool)

(assert (=> b!4595948 m!5420521))

(declare-fun m!5420523 () Bool)

(assert (=> b!4595948 m!5420523))

(declare-fun m!5420525 () Bool)

(assert (=> b!4595943 m!5420525))

(declare-fun m!5420527 () Bool)

(assert (=> b!4595946 m!5420527))

(declare-fun m!5420529 () Bool)

(assert (=> b!4595946 m!5420529))

(declare-fun m!5420531 () Bool)

(assert (=> b!4595946 m!5420531))

(declare-fun m!5420533 () Bool)

(assert (=> b!4595946 m!5420533))

(declare-fun m!5420535 () Bool)

(assert (=> b!4595946 m!5420535))

(declare-fun m!5420537 () Bool)

(assert (=> b!4595946 m!5420537))

(declare-fun m!5420539 () Bool)

(assert (=> b!4595946 m!5420539))

(declare-fun m!5420541 () Bool)

(assert (=> b!4595946 m!5420541))

(assert (=> b!4595946 m!5420529))

(assert (=> b!4595946 m!5420539))

(assert (=> b!4595946 m!5420531))

(declare-fun m!5420543 () Bool)

(assert (=> b!4595946 m!5420543))

(assert (=> b!4595946 m!5420537))

(declare-fun m!5420545 () Bool)

(assert (=> b!4595946 m!5420545))

(declare-fun m!5420547 () Bool)

(assert (=> b!4595934 m!5420547))

(declare-fun m!5420549 () Bool)

(assert (=> b!4595934 m!5420549))

(declare-fun m!5420551 () Bool)

(assert (=> b!4595934 m!5420551))

(declare-fun m!5420553 () Bool)

(assert (=> b!4595934 m!5420553))

(declare-fun m!5420555 () Bool)

(assert (=> b!4595934 m!5420555))

(declare-fun m!5420557 () Bool)

(assert (=> b!4595934 m!5420557))

(declare-fun m!5420559 () Bool)

(assert (=> b!4595934 m!5420559))

(declare-fun m!5420561 () Bool)

(assert (=> b!4595931 m!5420561))

(declare-fun m!5420563 () Bool)

(assert (=> start!458424 m!5420563))

(declare-fun m!5420565 () Bool)

(assert (=> start!458424 m!5420565))

(declare-fun m!5420567 () Bool)

(assert (=> b!4595944 m!5420567))

(declare-fun m!5420569 () Bool)

(assert (=> b!4595932 m!5420569))

(declare-fun m!5420571 () Bool)

(assert (=> b!4595939 m!5420571))

(declare-fun m!5420573 () Bool)

(assert (=> b!4595935 m!5420573))

(assert (=> b!4595935 m!5420573))

(declare-fun m!5420575 () Bool)

(assert (=> b!4595935 m!5420575))

(declare-fun m!5420577 () Bool)

(assert (=> b!4595936 m!5420577))

(check-sat (not b!4595935) (not b!4595936) (not b!4595937) (not b!4595946) (not b!4595944) (not b!4595943) (not b!4595941) (not b!4595938) (not b!4595948) (not start!458424) (not b!4595931) (not b!4595939) tp_is_empty!28543 (not b!4595933) (not b!4595932) (not b!4595934) (not b!4595942) (not b!4595940) tp_is_empty!28541)
(check-sat)
(get-model)

(declare-fun bs!1009288 () Bool)

(declare-fun d!1446622 () Bool)

(assert (= bs!1009288 (and d!1446622 start!458424)))

(declare-fun lambda!185767 () Int)

(assert (=> bs!1009288 (not (= lambda!185767 lambda!185764))))

(assert (=> d!1446622 true))

(assert (=> d!1446622 (= (allKeysSameHashInMap!1423 lm!1477 hashF!1107) (forall!10586 (toList!4639 lm!1477) lambda!185767))))

(declare-fun bs!1009289 () Bool)

(assert (= bs!1009289 d!1446622))

(declare-fun m!5420579 () Bool)

(assert (=> bs!1009289 m!5420579))

(assert (=> b!4595936 d!1446622))

(declare-fun b!4596001 () Bool)

(declare-fun e!2866715 () Unit!107839)

(declare-fun e!2866714 () Unit!107839)

(assert (=> b!4596001 (= e!2866715 e!2866714)))

(declare-fun c!787077 () Bool)

(declare-fun call!320724 () Bool)

(assert (=> b!4596001 (= c!787077 call!320724)))

(declare-fun b!4596002 () Bool)

(declare-fun lt!1756367 () Unit!107839)

(assert (=> b!4596002 (= e!2866715 lt!1756367)))

(declare-fun lt!1756370 () Unit!107839)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1206 (List!51186 K!12430) Unit!107839)

(assert (=> b!4596002 (= lt!1756370 (lemmaContainsKeyImpliesGetValueByKeyDefined!1206 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287))))

(declare-datatypes ((Option!11382 0))(
  ( (None!11381) (Some!11381 (v!45347 V!12676)) )
))
(declare-fun isDefined!8650 (Option!11382) Bool)

(declare-fun getValueByKey!1302 (List!51186 K!12430) Option!11382)

(assert (=> b!4596002 (isDefined!8650 (getValueByKey!1302 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287))))

(declare-fun lt!1756366 () Unit!107839)

(assert (=> b!4596002 (= lt!1756366 lt!1756370)))

(declare-fun lemmaInListThenGetKeysListContains!565 (List!51186 K!12430) Unit!107839)

(assert (=> b!4596002 (= lt!1756367 (lemmaInListThenGetKeysListContains!565 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287))))

(assert (=> b!4596002 call!320724))

(declare-fun bm!320719 () Bool)

(declare-datatypes ((List!51189 0))(
  ( (Nil!51065) (Cons!51065 (h!57027 K!12430) (t!358183 List!51189)) )
))
(declare-fun e!2866713 () List!51189)

(declare-fun contains!14005 (List!51189 K!12430) Bool)

(assert (=> bm!320719 (= call!320724 (contains!14005 e!2866713 key!3287))))

(declare-fun c!787076 () Bool)

(declare-fun c!787075 () Bool)

(assert (=> bm!320719 (= c!787076 c!787075)))

(declare-fun b!4596003 () Bool)

(declare-fun e!2866716 () Bool)

(declare-fun e!2866717 () Bool)

(assert (=> b!4596003 (= e!2866716 e!2866717)))

(declare-fun res!1922160 () Bool)

(assert (=> b!4596003 (=> (not res!1922160) (not e!2866717))))

(assert (=> b!4596003 (= res!1922160 (isDefined!8650 (getValueByKey!1302 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287)))))

(declare-fun b!4596004 () Bool)

(assert (=> b!4596004 false))

(declare-fun lt!1756372 () Unit!107839)

(declare-fun lt!1756371 () Unit!107839)

(assert (=> b!4596004 (= lt!1756372 lt!1756371)))

(declare-fun containsKey!2143 (List!51186 K!12430) Bool)

(assert (=> b!4596004 (containsKey!2143 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!568 (List!51186 K!12430) Unit!107839)

(assert (=> b!4596004 (= lt!1756371 (lemmaInGetKeysListThenContainsKey!568 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287))))

(declare-fun Unit!107848 () Unit!107839)

(assert (=> b!4596004 (= e!2866714 Unit!107848)))

(declare-fun d!1446624 () Bool)

(assert (=> d!1446624 e!2866716))

(declare-fun res!1922159 () Bool)

(assert (=> d!1446624 (=> res!1922159 e!2866716)))

(declare-fun e!2866712 () Bool)

(assert (=> d!1446624 (= res!1922159 e!2866712)))

(declare-fun res!1922161 () Bool)

(assert (=> d!1446624 (=> (not res!1922161) (not e!2866712))))

(declare-fun lt!1756369 () Bool)

(assert (=> d!1446624 (= res!1922161 (not lt!1756369))))

(declare-fun lt!1756368 () Bool)

(assert (=> d!1446624 (= lt!1756369 lt!1756368)))

(declare-fun lt!1756373 () Unit!107839)

(assert (=> d!1446624 (= lt!1756373 e!2866715)))

(assert (=> d!1446624 (= c!787075 lt!1756368)))

(assert (=> d!1446624 (= lt!1756368 (containsKey!2143 (toList!4640 (extractMap!1372 (toList!4639 lm!1477))) key!3287))))

(assert (=> d!1446624 (= (contains!14003 (extractMap!1372 (toList!4639 lm!1477)) key!3287) lt!1756369)))

(declare-fun b!4596005 () Bool)

(declare-fun keys!17874 (ListMap!3901) List!51189)

(assert (=> b!4596005 (= e!2866717 (contains!14005 (keys!17874 (extractMap!1372 (toList!4639 lm!1477))) key!3287))))

(declare-fun b!4596006 () Bool)

(assert (=> b!4596006 (= e!2866713 (keys!17874 (extractMap!1372 (toList!4639 lm!1477))))))

(declare-fun b!4596007 () Bool)

(declare-fun Unit!107849 () Unit!107839)

(assert (=> b!4596007 (= e!2866714 Unit!107849)))

(declare-fun b!4596008 () Bool)

(declare-fun getKeysList!569 (List!51186) List!51189)

(assert (=> b!4596008 (= e!2866713 (getKeysList!569 (toList!4640 (extractMap!1372 (toList!4639 lm!1477)))))))

(declare-fun b!4596009 () Bool)

(assert (=> b!4596009 (= e!2866712 (not (contains!14005 (keys!17874 (extractMap!1372 (toList!4639 lm!1477))) key!3287)))))

(assert (= (and d!1446624 c!787075) b!4596002))

(assert (= (and d!1446624 (not c!787075)) b!4596001))

(assert (= (and b!4596001 c!787077) b!4596004))

(assert (= (and b!4596001 (not c!787077)) b!4596007))

(assert (= (or b!4596002 b!4596001) bm!320719))

(assert (= (and bm!320719 c!787076) b!4596008))

(assert (= (and bm!320719 (not c!787076)) b!4596006))

(assert (= (and d!1446624 res!1922161) b!4596009))

(assert (= (and d!1446624 (not res!1922159)) b!4596003))

(assert (= (and b!4596003 res!1922160) b!4596005))

(declare-fun m!5420611 () Bool)

(assert (=> b!4596003 m!5420611))

(assert (=> b!4596003 m!5420611))

(declare-fun m!5420613 () Bool)

(assert (=> b!4596003 m!5420613))

(declare-fun m!5420615 () Bool)

(assert (=> d!1446624 m!5420615))

(assert (=> b!4596006 m!5420573))

(declare-fun m!5420617 () Bool)

(assert (=> b!4596006 m!5420617))

(assert (=> b!4596009 m!5420573))

(assert (=> b!4596009 m!5420617))

(assert (=> b!4596009 m!5420617))

(declare-fun m!5420619 () Bool)

(assert (=> b!4596009 m!5420619))

(declare-fun m!5420621 () Bool)

(assert (=> b!4596002 m!5420621))

(assert (=> b!4596002 m!5420611))

(assert (=> b!4596002 m!5420611))

(assert (=> b!4596002 m!5420613))

(declare-fun m!5420623 () Bool)

(assert (=> b!4596002 m!5420623))

(assert (=> b!4596004 m!5420615))

(declare-fun m!5420625 () Bool)

(assert (=> b!4596004 m!5420625))

(assert (=> b!4596005 m!5420573))

(assert (=> b!4596005 m!5420617))

(assert (=> b!4596005 m!5420617))

(assert (=> b!4596005 m!5420619))

(declare-fun m!5420627 () Bool)

(assert (=> bm!320719 m!5420627))

(declare-fun m!5420629 () Bool)

(assert (=> b!4596008 m!5420629))

(assert (=> b!4595935 d!1446624))

(declare-fun bs!1009299 () Bool)

(declare-fun d!1446644 () Bool)

(assert (= bs!1009299 (and d!1446644 start!458424)))

(declare-fun lambda!185779 () Int)

(assert (=> bs!1009299 (= lambda!185779 lambda!185764)))

(declare-fun bs!1009300 () Bool)

(assert (= bs!1009300 (and d!1446644 d!1446622)))

(assert (=> bs!1009300 (not (= lambda!185779 lambda!185767))))

(declare-fun lt!1756398 () ListMap!3901)

(declare-fun invariantList!1120 (List!51186) Bool)

(assert (=> d!1446644 (invariantList!1120 (toList!4640 lt!1756398))))

(declare-fun e!2866768 () ListMap!3901)

(assert (=> d!1446644 (= lt!1756398 e!2866768)))

(declare-fun c!787089 () Bool)

(assert (=> d!1446644 (= c!787089 ((_ is Cons!51063) (toList!4639 lm!1477)))))

(assert (=> d!1446644 (forall!10586 (toList!4639 lm!1477) lambda!185779)))

(assert (=> d!1446644 (= (extractMap!1372 (toList!4639 lm!1477)) lt!1756398)))

(declare-fun b!4596071 () Bool)

(declare-fun addToMapMapFromBucket!810 (List!51186 ListMap!3901) ListMap!3901)

(assert (=> b!4596071 (= e!2866768 (addToMapMapFromBucket!810 (_2!29144 (h!57023 (toList!4639 lm!1477))) (extractMap!1372 (t!358181 (toList!4639 lm!1477)))))))

(declare-fun b!4596072 () Bool)

(assert (=> b!4596072 (= e!2866768 (ListMap!3902 Nil!51062))))

(assert (= (and d!1446644 c!787089) b!4596071))

(assert (= (and d!1446644 (not c!787089)) b!4596072))

(declare-fun m!5420697 () Bool)

(assert (=> d!1446644 m!5420697))

(declare-fun m!5420699 () Bool)

(assert (=> d!1446644 m!5420699))

(assert (=> b!4596071 m!5420521))

(assert (=> b!4596071 m!5420521))

(declare-fun m!5420701 () Bool)

(assert (=> b!4596071 m!5420701))

(assert (=> b!4595935 d!1446644))

(declare-fun bs!1009301 () Bool)

(declare-fun d!1446662 () Bool)

(assert (= bs!1009301 (and d!1446662 start!458424)))

(declare-fun lambda!185780 () Int)

(assert (=> bs!1009301 (= lambda!185780 lambda!185764)))

(declare-fun bs!1009302 () Bool)

(assert (= bs!1009302 (and d!1446662 d!1446622)))

(assert (=> bs!1009302 (not (= lambda!185780 lambda!185767))))

(declare-fun bs!1009303 () Bool)

(assert (= bs!1009303 (and d!1446662 d!1446644)))

(assert (=> bs!1009303 (= lambda!185780 lambda!185779)))

(declare-fun lt!1756401 () ListMap!3901)

(assert (=> d!1446662 (invariantList!1120 (toList!4640 lt!1756401))))

(declare-fun e!2866771 () ListMap!3901)

(assert (=> d!1446662 (= lt!1756401 e!2866771)))

(declare-fun c!787090 () Bool)

(assert (=> d!1446662 (= c!787090 ((_ is Cons!51063) (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)))))

(assert (=> d!1446662 (forall!10586 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063) lambda!185780)))

(assert (=> d!1446662 (= (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)) lt!1756401)))

(declare-fun b!4596075 () Bool)

(assert (=> b!4596075 (= e!2866771 (addToMapMapFromBucket!810 (_2!29144 (h!57023 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063))) (extractMap!1372 (t!358181 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)))))))

(declare-fun b!4596076 () Bool)

(assert (=> b!4596076 (= e!2866771 (ListMap!3902 Nil!51062))))

(assert (= (and d!1446662 c!787090) b!4596075))

(assert (= (and d!1446662 (not c!787090)) b!4596076))

(declare-fun m!5420707 () Bool)

(assert (=> d!1446662 m!5420707))

(declare-fun m!5420709 () Bool)

(assert (=> d!1446662 m!5420709))

(declare-fun m!5420711 () Bool)

(assert (=> b!4596075 m!5420711))

(assert (=> b!4596075 m!5420711))

(declare-fun m!5420713 () Bool)

(assert (=> b!4596075 m!5420713))

(assert (=> b!4595946 d!1446662))

(declare-fun d!1446666 () Bool)

(declare-fun e!2866789 () Bool)

(assert (=> d!1446666 e!2866789))

(declare-fun res!1922211 () Bool)

(assert (=> d!1446666 (=> (not res!1922211) (not e!2866789))))

(declare-fun lt!1756425 () ListMap!3901)

(assert (=> d!1446666 (= res!1922211 (not (contains!14003 lt!1756425 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!217 (List!51186 K!12430) List!51186)

(assert (=> d!1446666 (= lt!1756425 (ListMap!3902 (removePresrvNoDuplicatedKeys!217 (toList!4640 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063))) key!3287)))))

(assert (=> d!1446666 (= (-!488 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)) key!3287) lt!1756425)))

(declare-fun b!4596103 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8634 (List!51189) (InoxSet K!12430))

(assert (=> b!4596103 (= e!2866789 (= ((_ map and) (content!8634 (keys!17874 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)))) ((_ map not) (store ((as const (Array K!12430 Bool)) false) key!3287 true))) (content!8634 (keys!17874 lt!1756425))))))

(assert (= (and d!1446666 res!1922211) b!4596103))

(declare-fun m!5420737 () Bool)

(assert (=> d!1446666 m!5420737))

(declare-fun m!5420741 () Bool)

(assert (=> d!1446666 m!5420741))

(declare-fun m!5420743 () Bool)

(assert (=> b!4596103 m!5420743))

(assert (=> b!4596103 m!5420529))

(declare-fun m!5420745 () Bool)

(assert (=> b!4596103 m!5420745))

(declare-fun m!5420747 () Bool)

(assert (=> b!4596103 m!5420747))

(assert (=> b!4596103 m!5420747))

(declare-fun m!5420749 () Bool)

(assert (=> b!4596103 m!5420749))

(assert (=> b!4596103 m!5420745))

(declare-fun m!5420751 () Bool)

(assert (=> b!4596103 m!5420751))

(assert (=> b!4595946 d!1446666))

(declare-fun d!1446676 () Bool)

(declare-fun content!8635 (List!51186) (InoxSet tuple2!51698))

(assert (=> d!1446676 (= (eq!719 (extractMap!1372 (Cons!51063 lt!1756307 Nil!51063)) (-!488 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)) key!3287)) (= (content!8635 (toList!4640 (extractMap!1372 (Cons!51063 lt!1756307 Nil!51063)))) (content!8635 (toList!4640 (-!488 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)) key!3287)))))))

(declare-fun bs!1009312 () Bool)

(assert (= bs!1009312 d!1446676))

(declare-fun m!5420761 () Bool)

(assert (=> bs!1009312 m!5420761))

(declare-fun m!5420763 () Bool)

(assert (=> bs!1009312 m!5420763))

(assert (=> b!4595946 d!1446676))

(declare-fun b!4596107 () Bool)

(declare-fun e!2866795 () Unit!107839)

(declare-fun e!2866794 () Unit!107839)

(assert (=> b!4596107 (= e!2866795 e!2866794)))

(declare-fun c!787103 () Bool)

(declare-fun call!320727 () Bool)

(assert (=> b!4596107 (= c!787103 call!320727)))

(declare-fun b!4596108 () Bool)

(declare-fun lt!1756429 () Unit!107839)

(assert (=> b!4596108 (= e!2866795 lt!1756429)))

(declare-fun lt!1756432 () Unit!107839)

(assert (=> b!4596108 (= lt!1756432 (lemmaContainsKeyImpliesGetValueByKeyDefined!1206 (toList!4640 (extractMap!1372 lt!1756310)) key!3287))))

(assert (=> b!4596108 (isDefined!8650 (getValueByKey!1302 (toList!4640 (extractMap!1372 lt!1756310)) key!3287))))

(declare-fun lt!1756428 () Unit!107839)

(assert (=> b!4596108 (= lt!1756428 lt!1756432)))

(assert (=> b!4596108 (= lt!1756429 (lemmaInListThenGetKeysListContains!565 (toList!4640 (extractMap!1372 lt!1756310)) key!3287))))

(assert (=> b!4596108 call!320727))

(declare-fun bm!320722 () Bool)

(declare-fun e!2866793 () List!51189)

(assert (=> bm!320722 (= call!320727 (contains!14005 e!2866793 key!3287))))

(declare-fun c!787102 () Bool)

(declare-fun c!787101 () Bool)

(assert (=> bm!320722 (= c!787102 c!787101)))

(declare-fun b!4596109 () Bool)

(declare-fun e!2866796 () Bool)

(declare-fun e!2866797 () Bool)

(assert (=> b!4596109 (= e!2866796 e!2866797)))

(declare-fun res!1922214 () Bool)

(assert (=> b!4596109 (=> (not res!1922214) (not e!2866797))))

(assert (=> b!4596109 (= res!1922214 (isDefined!8650 (getValueByKey!1302 (toList!4640 (extractMap!1372 lt!1756310)) key!3287)))))

(declare-fun b!4596110 () Bool)

(assert (=> b!4596110 false))

(declare-fun lt!1756434 () Unit!107839)

(declare-fun lt!1756433 () Unit!107839)

(assert (=> b!4596110 (= lt!1756434 lt!1756433)))

(assert (=> b!4596110 (containsKey!2143 (toList!4640 (extractMap!1372 lt!1756310)) key!3287)))

(assert (=> b!4596110 (= lt!1756433 (lemmaInGetKeysListThenContainsKey!568 (toList!4640 (extractMap!1372 lt!1756310)) key!3287))))

(declare-fun Unit!107852 () Unit!107839)

(assert (=> b!4596110 (= e!2866794 Unit!107852)))

(declare-fun d!1446680 () Bool)

(assert (=> d!1446680 e!2866796))

(declare-fun res!1922213 () Bool)

(assert (=> d!1446680 (=> res!1922213 e!2866796)))

(declare-fun e!2866792 () Bool)

(assert (=> d!1446680 (= res!1922213 e!2866792)))

(declare-fun res!1922215 () Bool)

(assert (=> d!1446680 (=> (not res!1922215) (not e!2866792))))

(declare-fun lt!1756431 () Bool)

(assert (=> d!1446680 (= res!1922215 (not lt!1756431))))

(declare-fun lt!1756430 () Bool)

(assert (=> d!1446680 (= lt!1756431 lt!1756430)))

(declare-fun lt!1756435 () Unit!107839)

(assert (=> d!1446680 (= lt!1756435 e!2866795)))

(assert (=> d!1446680 (= c!787101 lt!1756430)))

(assert (=> d!1446680 (= lt!1756430 (containsKey!2143 (toList!4640 (extractMap!1372 lt!1756310)) key!3287))))

(assert (=> d!1446680 (= (contains!14003 (extractMap!1372 lt!1756310) key!3287) lt!1756431)))

(declare-fun b!4596111 () Bool)

(assert (=> b!4596111 (= e!2866797 (contains!14005 (keys!17874 (extractMap!1372 lt!1756310)) key!3287))))

(declare-fun b!4596112 () Bool)

(assert (=> b!4596112 (= e!2866793 (keys!17874 (extractMap!1372 lt!1756310)))))

(declare-fun b!4596113 () Bool)

(declare-fun Unit!107853 () Unit!107839)

(assert (=> b!4596113 (= e!2866794 Unit!107853)))

(declare-fun b!4596114 () Bool)

(assert (=> b!4596114 (= e!2866793 (getKeysList!569 (toList!4640 (extractMap!1372 lt!1756310))))))

(declare-fun b!4596115 () Bool)

(assert (=> b!4596115 (= e!2866792 (not (contains!14005 (keys!17874 (extractMap!1372 lt!1756310)) key!3287)))))

(assert (= (and d!1446680 c!787101) b!4596108))

(assert (= (and d!1446680 (not c!787101)) b!4596107))

(assert (= (and b!4596107 c!787103) b!4596110))

(assert (= (and b!4596107 (not c!787103)) b!4596113))

(assert (= (or b!4596108 b!4596107) bm!320722))

(assert (= (and bm!320722 c!787102) b!4596114))

(assert (= (and bm!320722 (not c!787102)) b!4596112))

(assert (= (and d!1446680 res!1922215) b!4596115))

(assert (= (and d!1446680 (not res!1922213)) b!4596109))

(assert (= (and b!4596109 res!1922214) b!4596111))

(declare-fun m!5420765 () Bool)

(assert (=> b!4596109 m!5420765))

(assert (=> b!4596109 m!5420765))

(declare-fun m!5420767 () Bool)

(assert (=> b!4596109 m!5420767))

(declare-fun m!5420769 () Bool)

(assert (=> d!1446680 m!5420769))

(assert (=> b!4596112 m!5420537))

(declare-fun m!5420771 () Bool)

(assert (=> b!4596112 m!5420771))

(assert (=> b!4596115 m!5420537))

(assert (=> b!4596115 m!5420771))

(assert (=> b!4596115 m!5420771))

(declare-fun m!5420773 () Bool)

(assert (=> b!4596115 m!5420773))

(declare-fun m!5420775 () Bool)

(assert (=> b!4596108 m!5420775))

(assert (=> b!4596108 m!5420765))

(assert (=> b!4596108 m!5420765))

(assert (=> b!4596108 m!5420767))

(declare-fun m!5420777 () Bool)

(assert (=> b!4596108 m!5420777))

(assert (=> b!4596110 m!5420769))

(declare-fun m!5420779 () Bool)

(assert (=> b!4596110 m!5420779))

(assert (=> b!4596111 m!5420537))

(assert (=> b!4596111 m!5420771))

(assert (=> b!4596111 m!5420771))

(assert (=> b!4596111 m!5420773))

(declare-fun m!5420781 () Bool)

(assert (=> bm!320722 m!5420781))

(declare-fun m!5420783 () Bool)

(assert (=> b!4596114 m!5420783))

(assert (=> b!4595946 d!1446680))

(declare-fun d!1446682 () Bool)

(assert (=> d!1446682 (= (tail!7933 (toList!4639 lt!1756316)) (t!358181 (toList!4639 lt!1756316)))))

(assert (=> b!4595946 d!1446682))

(declare-fun bs!1009326 () Bool)

(declare-fun d!1446684 () Bool)

(assert (= bs!1009326 (and d!1446684 start!458424)))

(declare-fun lambda!185791 () Int)

(assert (=> bs!1009326 (= lambda!185791 lambda!185764)))

(declare-fun bs!1009327 () Bool)

(assert (= bs!1009327 (and d!1446684 d!1446622)))

(assert (=> bs!1009327 (not (= lambda!185791 lambda!185767))))

(declare-fun bs!1009328 () Bool)

(assert (= bs!1009328 (and d!1446684 d!1446644)))

(assert (=> bs!1009328 (= lambda!185791 lambda!185779)))

(declare-fun bs!1009329 () Bool)

(assert (= bs!1009329 (and d!1446684 d!1446662)))

(assert (=> bs!1009329 (= lambda!185791 lambda!185780)))

(assert (=> d!1446684 (contains!14003 (extractMap!1372 (toList!4639 (ListLongMap!3272 lt!1756310))) key!3287)))

(declare-fun lt!1756457 () Unit!107839)

(declare-fun choose!30767 (ListLongMap!3271 K!12430 Hashable!5711) Unit!107839)

(assert (=> d!1446684 (= lt!1756457 (choose!30767 (ListLongMap!3272 lt!1756310) key!3287 hashF!1107))))

(assert (=> d!1446684 (forall!10586 (toList!4639 (ListLongMap!3272 lt!1756310)) lambda!185791)))

(assert (=> d!1446684 (= (lemmaListContainsThenExtractedMapContains!246 (ListLongMap!3272 lt!1756310) key!3287 hashF!1107) lt!1756457)))

(declare-fun bs!1009330 () Bool)

(assert (= bs!1009330 d!1446684))

(declare-fun m!5420851 () Bool)

(assert (=> bs!1009330 m!5420851))

(assert (=> bs!1009330 m!5420851))

(declare-fun m!5420853 () Bool)

(assert (=> bs!1009330 m!5420853))

(declare-fun m!5420855 () Bool)

(assert (=> bs!1009330 m!5420855))

(declare-fun m!5420857 () Bool)

(assert (=> bs!1009330 m!5420857))

(assert (=> b!4595946 d!1446684))

(declare-fun bs!1009331 () Bool)

(declare-fun d!1446698 () Bool)

(assert (= bs!1009331 (and d!1446698 d!1446622)))

(declare-fun lambda!185792 () Int)

(assert (=> bs!1009331 (not (= lambda!185792 lambda!185767))))

(declare-fun bs!1009332 () Bool)

(assert (= bs!1009332 (and d!1446698 start!458424)))

(assert (=> bs!1009332 (= lambda!185792 lambda!185764)))

(declare-fun bs!1009333 () Bool)

(assert (= bs!1009333 (and d!1446698 d!1446644)))

(assert (=> bs!1009333 (= lambda!185792 lambda!185779)))

(declare-fun bs!1009334 () Bool)

(assert (= bs!1009334 (and d!1446698 d!1446684)))

(assert (=> bs!1009334 (= lambda!185792 lambda!185791)))

(declare-fun bs!1009335 () Bool)

(assert (= bs!1009335 (and d!1446698 d!1446662)))

(assert (=> bs!1009335 (= lambda!185792 lambda!185780)))

(declare-fun lt!1756458 () ListMap!3901)

(assert (=> d!1446698 (invariantList!1120 (toList!4640 lt!1756458))))

(declare-fun e!2866809 () ListMap!3901)

(assert (=> d!1446698 (= lt!1756458 e!2866809)))

(declare-fun c!787108 () Bool)

(assert (=> d!1446698 (= c!787108 ((_ is Cons!51063) lt!1756310))))

(assert (=> d!1446698 (forall!10586 lt!1756310 lambda!185792)))

(assert (=> d!1446698 (= (extractMap!1372 lt!1756310) lt!1756458)))

(declare-fun b!4596132 () Bool)

(assert (=> b!4596132 (= e!2866809 (addToMapMapFromBucket!810 (_2!29144 (h!57023 lt!1756310)) (extractMap!1372 (t!358181 lt!1756310))))))

(declare-fun b!4596133 () Bool)

(assert (=> b!4596133 (= e!2866809 (ListMap!3902 Nil!51062))))

(assert (= (and d!1446698 c!787108) b!4596132))

(assert (= (and d!1446698 (not c!787108)) b!4596133))

(declare-fun m!5420859 () Bool)

(assert (=> d!1446698 m!5420859))

(declare-fun m!5420861 () Bool)

(assert (=> d!1446698 m!5420861))

(declare-fun m!5420863 () Bool)

(assert (=> b!4596132 m!5420863))

(assert (=> b!4596132 m!5420863))

(declare-fun m!5420865 () Bool)

(assert (=> b!4596132 m!5420865))

(assert (=> b!4595946 d!1446698))

(declare-fun d!1446700 () Bool)

(declare-fun e!2866815 () Bool)

(assert (=> d!1446700 e!2866815))

(declare-fun res!1922229 () Bool)

(assert (=> d!1446700 (=> (not res!1922229) (not e!2866815))))

(declare-fun lt!1756475 () ListLongMap!3271)

(assert (=> d!1446700 (= res!1922229 (contains!14002 lt!1756475 (_1!29144 lt!1756307)))))

(declare-fun lt!1756476 () List!51187)

(assert (=> d!1446700 (= lt!1756475 (ListLongMap!3272 lt!1756476))))

(declare-fun lt!1756474 () Unit!107839)

(declare-fun lt!1756473 () Unit!107839)

(assert (=> d!1446700 (= lt!1756474 lt!1756473)))

(declare-datatypes ((Option!11383 0))(
  ( (None!11382) (Some!11382 (v!45348 List!51186)) )
))
(declare-fun getValueByKey!1303 (List!51187 (_ BitVec 64)) Option!11383)

(assert (=> d!1446700 (= (getValueByKey!1303 lt!1756476 (_1!29144 lt!1756307)) (Some!11382 (_2!29144 lt!1756307)))))

(declare-fun lemmaContainsTupThenGetReturnValue!792 (List!51187 (_ BitVec 64) List!51186) Unit!107839)

(assert (=> d!1446700 (= lt!1756473 (lemmaContainsTupThenGetReturnValue!792 lt!1756476 (_1!29144 lt!1756307) (_2!29144 lt!1756307)))))

(declare-fun insertStrictlySorted!484 (List!51187 (_ BitVec 64) List!51186) List!51187)

(assert (=> d!1446700 (= lt!1756476 (insertStrictlySorted!484 (toList!4639 lm!1477) (_1!29144 lt!1756307) (_2!29144 lt!1756307)))))

(assert (=> d!1446700 (= (+!1736 lm!1477 lt!1756307) lt!1756475)))

(declare-fun b!4596144 () Bool)

(declare-fun res!1922228 () Bool)

(assert (=> b!4596144 (=> (not res!1922228) (not e!2866815))))

(assert (=> b!4596144 (= res!1922228 (= (getValueByKey!1303 (toList!4639 lt!1756475) (_1!29144 lt!1756307)) (Some!11382 (_2!29144 lt!1756307))))))

(declare-fun b!4596145 () Bool)

(assert (=> b!4596145 (= e!2866815 (contains!14001 (toList!4639 lt!1756475) lt!1756307))))

(assert (= (and d!1446700 res!1922229) b!4596144))

(assert (= (and b!4596144 res!1922228) b!4596145))

(declare-fun m!5420899 () Bool)

(assert (=> d!1446700 m!5420899))

(declare-fun m!5420901 () Bool)

(assert (=> d!1446700 m!5420901))

(declare-fun m!5420903 () Bool)

(assert (=> d!1446700 m!5420903))

(declare-fun m!5420905 () Bool)

(assert (=> d!1446700 m!5420905))

(declare-fun m!5420907 () Bool)

(assert (=> b!4596144 m!5420907))

(declare-fun m!5420909 () Bool)

(assert (=> b!4596145 m!5420909))

(assert (=> b!4595946 d!1446700))

(declare-fun bs!1009361 () Bool)

(declare-fun d!1446712 () Bool)

(assert (= bs!1009361 (and d!1446712 d!1446622)))

(declare-fun lambda!185796 () Int)

(assert (=> bs!1009361 (not (= lambda!185796 lambda!185767))))

(declare-fun bs!1009362 () Bool)

(assert (= bs!1009362 (and d!1446712 start!458424)))

(assert (=> bs!1009362 (= lambda!185796 lambda!185764)))

(declare-fun bs!1009363 () Bool)

(assert (= bs!1009363 (and d!1446712 d!1446698)))

(assert (=> bs!1009363 (= lambda!185796 lambda!185792)))

(declare-fun bs!1009364 () Bool)

(assert (= bs!1009364 (and d!1446712 d!1446644)))

(assert (=> bs!1009364 (= lambda!185796 lambda!185779)))

(declare-fun bs!1009365 () Bool)

(assert (= bs!1009365 (and d!1446712 d!1446684)))

(assert (=> bs!1009365 (= lambda!185796 lambda!185791)))

(declare-fun bs!1009366 () Bool)

(assert (= bs!1009366 (and d!1446712 d!1446662)))

(assert (=> bs!1009366 (= lambda!185796 lambda!185780)))

(declare-fun lt!1756477 () ListMap!3901)

(assert (=> d!1446712 (invariantList!1120 (toList!4640 lt!1756477))))

(declare-fun e!2866816 () ListMap!3901)

(assert (=> d!1446712 (= lt!1756477 e!2866816)))

(declare-fun c!787112 () Bool)

(assert (=> d!1446712 (= c!787112 ((_ is Cons!51063) (Cons!51063 lt!1756307 Nil!51063)))))

(assert (=> d!1446712 (forall!10586 (Cons!51063 lt!1756307 Nil!51063) lambda!185796)))

(assert (=> d!1446712 (= (extractMap!1372 (Cons!51063 lt!1756307 Nil!51063)) lt!1756477)))

(declare-fun b!4596146 () Bool)

(assert (=> b!4596146 (= e!2866816 (addToMapMapFromBucket!810 (_2!29144 (h!57023 (Cons!51063 lt!1756307 Nil!51063))) (extractMap!1372 (t!358181 (Cons!51063 lt!1756307 Nil!51063)))))))

(declare-fun b!4596147 () Bool)

(assert (=> b!4596147 (= e!2866816 (ListMap!3902 Nil!51062))))

(assert (= (and d!1446712 c!787112) b!4596146))

(assert (= (and d!1446712 (not c!787112)) b!4596147))

(declare-fun m!5420911 () Bool)

(assert (=> d!1446712 m!5420911))

(declare-fun m!5420913 () Bool)

(assert (=> d!1446712 m!5420913))

(declare-fun m!5420915 () Bool)

(assert (=> b!4596146 m!5420915))

(assert (=> b!4596146 m!5420915))

(declare-fun m!5420917 () Bool)

(assert (=> b!4596146 m!5420917))

(assert (=> b!4595946 d!1446712))

(declare-fun d!1446714 () Bool)

(assert (=> d!1446714 (eq!719 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 newBucket!178) Nil!51063)) (-!488 (extractMap!1372 (Cons!51063 (tuple2!51701 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477)))) Nil!51063)) key!3287))))

(declare-fun lt!1756483 () Unit!107839)

(declare-fun choose!30769 ((_ BitVec 64) List!51186 List!51186 K!12430 Hashable!5711) Unit!107839)

(assert (=> d!1446714 (= lt!1756483 (choose!30769 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1446714 (noDuplicateKeys!1312 (_2!29144 (h!57023 (toList!4639 lm!1477))))))

(assert (=> d!1446714 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!78 hash!344 (_2!29144 (h!57023 (toList!4639 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1756483)))

(declare-fun bs!1009381 () Bool)

(assert (= bs!1009381 d!1446714))

(assert (=> bs!1009381 m!5420529))

(assert (=> bs!1009381 m!5420531))

(declare-fun m!5420927 () Bool)

(assert (=> bs!1009381 m!5420927))

(declare-fun m!5420929 () Bool)

(assert (=> bs!1009381 m!5420929))

(declare-fun m!5420931 () Bool)

(assert (=> bs!1009381 m!5420931))

(assert (=> bs!1009381 m!5420529))

(assert (=> bs!1009381 m!5420931))

(assert (=> bs!1009381 m!5420531))

(declare-fun m!5420933 () Bool)

(assert (=> bs!1009381 m!5420933))

(assert (=> b!4595946 d!1446714))

(declare-fun b!4596158 () Bool)

(declare-fun e!2866826 () Unit!107839)

(declare-fun e!2866825 () Unit!107839)

(assert (=> b!4596158 (= e!2866826 e!2866825)))

(declare-fun c!787115 () Bool)

(declare-fun call!320729 () Bool)

(assert (=> b!4596158 (= c!787115 call!320729)))

(declare-fun b!4596159 () Bool)

(declare-fun lt!1756485 () Unit!107839)

(assert (=> b!4596159 (= e!2866826 lt!1756485)))

(declare-fun lt!1756488 () Unit!107839)

(assert (=> b!4596159 (= lt!1756488 (lemmaContainsKeyImpliesGetValueByKeyDefined!1206 (toList!4640 lt!1756311) key!3287))))

(assert (=> b!4596159 (isDefined!8650 (getValueByKey!1302 (toList!4640 lt!1756311) key!3287))))

(declare-fun lt!1756484 () Unit!107839)

(assert (=> b!4596159 (= lt!1756484 lt!1756488)))

(assert (=> b!4596159 (= lt!1756485 (lemmaInListThenGetKeysListContains!565 (toList!4640 lt!1756311) key!3287))))

(assert (=> b!4596159 call!320729))

(declare-fun bm!320724 () Bool)

(declare-fun e!2866824 () List!51189)

(assert (=> bm!320724 (= call!320729 (contains!14005 e!2866824 key!3287))))

(declare-fun c!787114 () Bool)

(declare-fun c!787113 () Bool)

(assert (=> bm!320724 (= c!787114 c!787113)))

(declare-fun b!4596160 () Bool)

(declare-fun e!2866827 () Bool)

(declare-fun e!2866828 () Bool)

(assert (=> b!4596160 (= e!2866827 e!2866828)))

(declare-fun res!1922231 () Bool)

(assert (=> b!4596160 (=> (not res!1922231) (not e!2866828))))

(assert (=> b!4596160 (= res!1922231 (isDefined!8650 (getValueByKey!1302 (toList!4640 lt!1756311) key!3287)))))

(declare-fun b!4596161 () Bool)

(assert (=> b!4596161 false))

(declare-fun lt!1756490 () Unit!107839)

(declare-fun lt!1756489 () Unit!107839)

(assert (=> b!4596161 (= lt!1756490 lt!1756489)))

(assert (=> b!4596161 (containsKey!2143 (toList!4640 lt!1756311) key!3287)))

(assert (=> b!4596161 (= lt!1756489 (lemmaInGetKeysListThenContainsKey!568 (toList!4640 lt!1756311) key!3287))))

(declare-fun Unit!107854 () Unit!107839)

(assert (=> b!4596161 (= e!2866825 Unit!107854)))

(declare-fun d!1446722 () Bool)

(assert (=> d!1446722 e!2866827))

(declare-fun res!1922230 () Bool)

(assert (=> d!1446722 (=> res!1922230 e!2866827)))

(declare-fun e!2866823 () Bool)

(assert (=> d!1446722 (= res!1922230 e!2866823)))

(declare-fun res!1922232 () Bool)

(assert (=> d!1446722 (=> (not res!1922232) (not e!2866823))))

(declare-fun lt!1756487 () Bool)

(assert (=> d!1446722 (= res!1922232 (not lt!1756487))))

(declare-fun lt!1756486 () Bool)

(assert (=> d!1446722 (= lt!1756487 lt!1756486)))

(declare-fun lt!1756491 () Unit!107839)

(assert (=> d!1446722 (= lt!1756491 e!2866826)))

(assert (=> d!1446722 (= c!787113 lt!1756486)))

(assert (=> d!1446722 (= lt!1756486 (containsKey!2143 (toList!4640 lt!1756311) key!3287))))

(assert (=> d!1446722 (= (contains!14003 lt!1756311 key!3287) lt!1756487)))

(declare-fun b!4596162 () Bool)

(assert (=> b!4596162 (= e!2866828 (contains!14005 (keys!17874 lt!1756311) key!3287))))

(declare-fun b!4596163 () Bool)

(assert (=> b!4596163 (= e!2866824 (keys!17874 lt!1756311))))

(declare-fun b!4596164 () Bool)

(declare-fun Unit!107855 () Unit!107839)

(assert (=> b!4596164 (= e!2866825 Unit!107855)))

(declare-fun b!4596165 () Bool)

(assert (=> b!4596165 (= e!2866824 (getKeysList!569 (toList!4640 lt!1756311)))))

(declare-fun b!4596166 () Bool)

(assert (=> b!4596166 (= e!2866823 (not (contains!14005 (keys!17874 lt!1756311) key!3287)))))

(assert (= (and d!1446722 c!787113) b!4596159))

(assert (= (and d!1446722 (not c!787113)) b!4596158))

(assert (= (and b!4596158 c!787115) b!4596161))

(assert (= (and b!4596158 (not c!787115)) b!4596164))

(assert (= (or b!4596159 b!4596158) bm!320724))

(assert (= (and bm!320724 c!787114) b!4596165))

(assert (= (and bm!320724 (not c!787114)) b!4596163))

(assert (= (and d!1446722 res!1922232) b!4596166))

(assert (= (and d!1446722 (not res!1922230)) b!4596160))

(assert (= (and b!4596160 res!1922231) b!4596162))

(declare-fun m!5420935 () Bool)

(assert (=> b!4596160 m!5420935))

(assert (=> b!4596160 m!5420935))

(declare-fun m!5420937 () Bool)

(assert (=> b!4596160 m!5420937))

(declare-fun m!5420939 () Bool)

(assert (=> d!1446722 m!5420939))

(declare-fun m!5420941 () Bool)

(assert (=> b!4596163 m!5420941))

(assert (=> b!4596166 m!5420941))

(assert (=> b!4596166 m!5420941))

(declare-fun m!5420943 () Bool)

(assert (=> b!4596166 m!5420943))

(declare-fun m!5420945 () Bool)

(assert (=> b!4596159 m!5420945))

(assert (=> b!4596159 m!5420935))

(assert (=> b!4596159 m!5420935))

(assert (=> b!4596159 m!5420937))

(declare-fun m!5420947 () Bool)

(assert (=> b!4596159 m!5420947))

(assert (=> b!4596161 m!5420939))

(declare-fun m!5420949 () Bool)

(assert (=> b!4596161 m!5420949))

(assert (=> b!4596162 m!5420941))

(assert (=> b!4596162 m!5420941))

(assert (=> b!4596162 m!5420943))

(declare-fun m!5420951 () Bool)

(assert (=> bm!320724 m!5420951))

(declare-fun m!5420953 () Bool)

(assert (=> b!4596165 m!5420953))

(assert (=> b!4595937 d!1446722))

(declare-fun bs!1009382 () Bool)

(declare-fun d!1446724 () Bool)

(assert (= bs!1009382 (and d!1446724 d!1446622)))

(declare-fun lambda!185800 () Int)

(assert (=> bs!1009382 (not (= lambda!185800 lambda!185767))))

(declare-fun bs!1009383 () Bool)

(assert (= bs!1009383 (and d!1446724 start!458424)))

(assert (=> bs!1009383 (= lambda!185800 lambda!185764)))

(declare-fun bs!1009384 () Bool)

(assert (= bs!1009384 (and d!1446724 d!1446698)))

(assert (=> bs!1009384 (= lambda!185800 lambda!185792)))

(declare-fun bs!1009385 () Bool)

(assert (= bs!1009385 (and d!1446724 d!1446644)))

(assert (=> bs!1009385 (= lambda!185800 lambda!185779)))

(declare-fun bs!1009386 () Bool)

(assert (= bs!1009386 (and d!1446724 d!1446712)))

(assert (=> bs!1009386 (= lambda!185800 lambda!185796)))

(declare-fun bs!1009387 () Bool)

(assert (= bs!1009387 (and d!1446724 d!1446684)))

(assert (=> bs!1009387 (= lambda!185800 lambda!185791)))

(declare-fun bs!1009388 () Bool)

(assert (= bs!1009388 (and d!1446724 d!1446662)))

(assert (=> bs!1009388 (= lambda!185800 lambda!185780)))

(declare-fun lt!1756492 () ListMap!3901)

(assert (=> d!1446724 (invariantList!1120 (toList!4640 lt!1756492))))

(declare-fun e!2866829 () ListMap!3901)

(assert (=> d!1446724 (= lt!1756492 e!2866829)))

(declare-fun c!787116 () Bool)

(assert (=> d!1446724 (= c!787116 ((_ is Cons!51063) (t!358181 (toList!4639 lm!1477))))))

(assert (=> d!1446724 (forall!10586 (t!358181 (toList!4639 lm!1477)) lambda!185800)))

(assert (=> d!1446724 (= (extractMap!1372 (t!358181 (toList!4639 lm!1477))) lt!1756492)))

(declare-fun b!4596167 () Bool)

(assert (=> b!4596167 (= e!2866829 (addToMapMapFromBucket!810 (_2!29144 (h!57023 (t!358181 (toList!4639 lm!1477)))) (extractMap!1372 (t!358181 (t!358181 (toList!4639 lm!1477))))))))

(declare-fun b!4596168 () Bool)

(assert (=> b!4596168 (= e!2866829 (ListMap!3902 Nil!51062))))

(assert (= (and d!1446724 c!787116) b!4596167))

(assert (= (and d!1446724 (not c!787116)) b!4596168))

(declare-fun m!5420955 () Bool)

(assert (=> d!1446724 m!5420955))

(declare-fun m!5420957 () Bool)

(assert (=> d!1446724 m!5420957))

(declare-fun m!5420959 () Bool)

(assert (=> b!4596167 m!5420959))

(assert (=> b!4596167 m!5420959))

(declare-fun m!5420961 () Bool)

(assert (=> b!4596167 m!5420961))

(assert (=> b!4595948 d!1446724))

(declare-fun bs!1009389 () Bool)

(declare-fun d!1446726 () Bool)

(assert (= bs!1009389 (and d!1446726 d!1446622)))

(declare-fun lambda!185801 () Int)

(assert (=> bs!1009389 (not (= lambda!185801 lambda!185767))))

(declare-fun bs!1009390 () Bool)

(assert (= bs!1009390 (and d!1446726 start!458424)))

(assert (=> bs!1009390 (= lambda!185801 lambda!185764)))

(declare-fun bs!1009391 () Bool)

(assert (= bs!1009391 (and d!1446726 d!1446698)))

(assert (=> bs!1009391 (= lambda!185801 lambda!185792)))

(declare-fun bs!1009392 () Bool)

(assert (= bs!1009392 (and d!1446726 d!1446644)))

(assert (=> bs!1009392 (= lambda!185801 lambda!185779)))

(declare-fun bs!1009393 () Bool)

(assert (= bs!1009393 (and d!1446726 d!1446724)))

(assert (=> bs!1009393 (= lambda!185801 lambda!185800)))

(declare-fun bs!1009394 () Bool)

(assert (= bs!1009394 (and d!1446726 d!1446712)))

(assert (=> bs!1009394 (= lambda!185801 lambda!185796)))

(declare-fun bs!1009395 () Bool)

(assert (= bs!1009395 (and d!1446726 d!1446684)))

(assert (=> bs!1009395 (= lambda!185801 lambda!185791)))

(declare-fun bs!1009396 () Bool)

(assert (= bs!1009396 (and d!1446726 d!1446662)))

(assert (=> bs!1009396 (= lambda!185801 lambda!185780)))

(declare-fun lt!1756493 () ListMap!3901)

(assert (=> d!1446726 (invariantList!1120 (toList!4640 lt!1756493))))

(declare-fun e!2866830 () ListMap!3901)

(assert (=> d!1446726 (= lt!1756493 e!2866830)))

(declare-fun c!787117 () Bool)

(assert (=> d!1446726 (= c!787117 ((_ is Cons!51063) (toList!4639 lt!1756312)))))

(assert (=> d!1446726 (forall!10586 (toList!4639 lt!1756312) lambda!185801)))

(assert (=> d!1446726 (= (extractMap!1372 (toList!4639 lt!1756312)) lt!1756493)))

(declare-fun b!4596169 () Bool)

(assert (=> b!4596169 (= e!2866830 (addToMapMapFromBucket!810 (_2!29144 (h!57023 (toList!4639 lt!1756312))) (extractMap!1372 (t!358181 (toList!4639 lt!1756312)))))))

(declare-fun b!4596170 () Bool)

(assert (=> b!4596170 (= e!2866830 (ListMap!3902 Nil!51062))))

(assert (= (and d!1446726 c!787117) b!4596169))

(assert (= (and d!1446726 (not c!787117)) b!4596170))

(declare-fun m!5420963 () Bool)

(assert (=> d!1446726 m!5420963))

(declare-fun m!5420965 () Bool)

(assert (=> d!1446726 m!5420965))

(declare-fun m!5420967 () Bool)

(assert (=> b!4596169 m!5420967))

(assert (=> b!4596169 m!5420967))

(declare-fun m!5420969 () Bool)

(assert (=> b!4596169 m!5420969))

(assert (=> b!4595948 d!1446726))

(declare-fun d!1446728 () Bool)

(declare-fun res!1922237 () Bool)

(declare-fun e!2866835 () Bool)

(assert (=> d!1446728 (=> res!1922237 e!2866835)))

(assert (=> d!1446728 (= res!1922237 (and ((_ is Cons!51062) (_2!29144 (h!57023 (toList!4639 lm!1477)))) (= (_1!29143 (h!57022 (_2!29144 (h!57023 (toList!4639 lm!1477))))) key!3287)))))

(assert (=> d!1446728 (= (containsKey!2140 (_2!29144 (h!57023 (toList!4639 lm!1477))) key!3287) e!2866835)))

(declare-fun b!4596175 () Bool)

(declare-fun e!2866836 () Bool)

(assert (=> b!4596175 (= e!2866835 e!2866836)))

(declare-fun res!1922238 () Bool)

(assert (=> b!4596175 (=> (not res!1922238) (not e!2866836))))

(assert (=> b!4596175 (= res!1922238 ((_ is Cons!51062) (_2!29144 (h!57023 (toList!4639 lm!1477)))))))

(declare-fun b!4596176 () Bool)

(assert (=> b!4596176 (= e!2866836 (containsKey!2140 (t!358180 (_2!29144 (h!57023 (toList!4639 lm!1477)))) key!3287))))

(assert (= (and d!1446728 (not res!1922237)) b!4596175))

(assert (= (and b!4596175 res!1922238) b!4596176))

(declare-fun m!5420971 () Bool)

(assert (=> b!4596176 m!5420971))

(assert (=> b!4595938 d!1446728))

(declare-fun d!1446730 () Bool)

(declare-fun res!1922243 () Bool)

(declare-fun e!2866841 () Bool)

(assert (=> d!1446730 (=> res!1922243 e!2866841)))

(assert (=> d!1446730 (= res!1922243 ((_ is Nil!51063) (toList!4639 lt!1756312)))))

(assert (=> d!1446730 (= (forall!10586 (toList!4639 lt!1756312) lambda!185764) e!2866841)))

(declare-fun b!4596181 () Bool)

(declare-fun e!2866842 () Bool)

(assert (=> b!4596181 (= e!2866841 e!2866842)))

(declare-fun res!1922244 () Bool)

(assert (=> b!4596181 (=> (not res!1922244) (not e!2866842))))

(declare-fun dynLambda!21390 (Int tuple2!51700) Bool)

(assert (=> b!4596181 (= res!1922244 (dynLambda!21390 lambda!185764 (h!57023 (toList!4639 lt!1756312))))))

(declare-fun b!4596182 () Bool)

(assert (=> b!4596182 (= e!2866842 (forall!10586 (t!358181 (toList!4639 lt!1756312)) lambda!185764))))

(assert (= (and d!1446730 (not res!1922243)) b!4596181))

(assert (= (and b!4596181 res!1922244) b!4596182))

(declare-fun b_lambda!169153 () Bool)

(assert (=> (not b_lambda!169153) (not b!4596181)))

(declare-fun m!5420973 () Bool)

(assert (=> b!4596181 m!5420973))

(declare-fun m!5420975 () Bool)

(assert (=> b!4596182 m!5420975))

(assert (=> b!4595940 d!1446730))

(declare-fun d!1446732 () Bool)

(assert (=> d!1446732 true))

(assert (=> d!1446732 true))

(declare-fun lambda!185804 () Int)

(declare-fun forall!10588 (List!51186 Int) Bool)

(assert (=> d!1446732 (= (allKeysSameHash!1168 newBucket!178 hash!344 hashF!1107) (forall!10588 newBucket!178 lambda!185804))))

(declare-fun bs!1009397 () Bool)

(assert (= bs!1009397 d!1446732))

(declare-fun m!5420977 () Bool)

(assert (=> bs!1009397 m!5420977))

(assert (=> b!4595939 d!1446732))

(declare-fun d!1446734 () Bool)

(declare-fun hash!3201 (Hashable!5711 K!12430) (_ BitVec 64))

(assert (=> d!1446734 (= (hash!3197 hashF!1107 key!3287) (hash!3201 hashF!1107 key!3287))))

(declare-fun bs!1009398 () Bool)

(assert (= bs!1009398 d!1446734))

(declare-fun m!5420979 () Bool)

(assert (=> bs!1009398 m!5420979))

(assert (=> b!4595932 d!1446734))

(declare-fun d!1446736 () Bool)

(declare-fun res!1922249 () Bool)

(declare-fun e!2866847 () Bool)

(assert (=> d!1446736 (=> res!1922249 e!2866847)))

(assert (=> d!1446736 (= res!1922249 (not ((_ is Cons!51062) newBucket!178)))))

(assert (=> d!1446736 (= (noDuplicateKeys!1312 newBucket!178) e!2866847)))

(declare-fun b!4596191 () Bool)

(declare-fun e!2866848 () Bool)

(assert (=> b!4596191 (= e!2866847 e!2866848)))

(declare-fun res!1922250 () Bool)

(assert (=> b!4596191 (=> (not res!1922250) (not e!2866848))))

(assert (=> b!4596191 (= res!1922250 (not (containsKey!2140 (t!358180 newBucket!178) (_1!29143 (h!57022 newBucket!178)))))))

(declare-fun b!4596192 () Bool)

(assert (=> b!4596192 (= e!2866848 (noDuplicateKeys!1312 (t!358180 newBucket!178)))))

(assert (= (and d!1446736 (not res!1922249)) b!4596191))

(assert (= (and b!4596191 res!1922250) b!4596192))

(declare-fun m!5420981 () Bool)

(assert (=> b!4596191 m!5420981))

(declare-fun m!5420983 () Bool)

(assert (=> b!4596192 m!5420983))

(assert (=> b!4595931 d!1446736))

(declare-fun d!1446738 () Bool)

(declare-fun e!2866849 () Bool)

(assert (=> d!1446738 e!2866849))

(declare-fun res!1922252 () Bool)

(assert (=> d!1446738 (=> (not res!1922252) (not e!2866849))))

(declare-fun lt!1756496 () ListLongMap!3271)

(assert (=> d!1446738 (= res!1922252 (contains!14002 lt!1756496 (_1!29144 lt!1756307)))))

(declare-fun lt!1756497 () List!51187)

(assert (=> d!1446738 (= lt!1756496 (ListLongMap!3272 lt!1756497))))

(declare-fun lt!1756495 () Unit!107839)

(declare-fun lt!1756494 () Unit!107839)

(assert (=> d!1446738 (= lt!1756495 lt!1756494)))

(assert (=> d!1446738 (= (getValueByKey!1303 lt!1756497 (_1!29144 lt!1756307)) (Some!11382 (_2!29144 lt!1756307)))))

(assert (=> d!1446738 (= lt!1756494 (lemmaContainsTupThenGetReturnValue!792 lt!1756497 (_1!29144 lt!1756307) (_2!29144 lt!1756307)))))

(assert (=> d!1446738 (= lt!1756497 (insertStrictlySorted!484 (toList!4639 lt!1756312) (_1!29144 lt!1756307) (_2!29144 lt!1756307)))))

(assert (=> d!1446738 (= (+!1736 lt!1756312 lt!1756307) lt!1756496)))

(declare-fun b!4596193 () Bool)

(declare-fun res!1922251 () Bool)

(assert (=> b!4596193 (=> (not res!1922251) (not e!2866849))))

(assert (=> b!4596193 (= res!1922251 (= (getValueByKey!1303 (toList!4639 lt!1756496) (_1!29144 lt!1756307)) (Some!11382 (_2!29144 lt!1756307))))))

(declare-fun b!4596194 () Bool)

(assert (=> b!4596194 (= e!2866849 (contains!14001 (toList!4639 lt!1756496) lt!1756307))))

(assert (= (and d!1446738 res!1922252) b!4596193))

(assert (= (and b!4596193 res!1922251) b!4596194))

(declare-fun m!5420985 () Bool)

(assert (=> d!1446738 m!5420985))

(declare-fun m!5420987 () Bool)

(assert (=> d!1446738 m!5420987))

(declare-fun m!5420989 () Bool)

(assert (=> d!1446738 m!5420989))

(declare-fun m!5420991 () Bool)

(assert (=> d!1446738 m!5420991))

(declare-fun m!5420993 () Bool)

(assert (=> b!4596193 m!5420993))

(declare-fun m!5420995 () Bool)

(assert (=> b!4596194 m!5420995))

(assert (=> b!4595933 d!1446738))

(declare-fun d!1446740 () Bool)

(assert (=> d!1446740 (= (tail!7932 lm!1477) (ListLongMap!3272 (tail!7933 (toList!4639 lm!1477))))))

(declare-fun bs!1009399 () Bool)

(assert (= bs!1009399 d!1446740))

(declare-fun m!5420997 () Bool)

(assert (=> bs!1009399 m!5420997))

(assert (=> b!4595933 d!1446740))

(declare-fun d!1446742 () Bool)

(declare-fun res!1922261 () Bool)

(declare-fun e!2866858 () Bool)

(assert (=> d!1446742 (=> res!1922261 e!2866858)))

(declare-fun e!2866857 () Bool)

(assert (=> d!1446742 (= res!1922261 e!2866857)))

(declare-fun res!1922259 () Bool)

(assert (=> d!1446742 (=> (not res!1922259) (not e!2866857))))

(assert (=> d!1446742 (= res!1922259 ((_ is Cons!51063) lt!1756310))))

(assert (=> d!1446742 (= (containsKeyBiggerList!268 lt!1756310 key!3287) e!2866858)))

(declare-fun b!4596201 () Bool)

(assert (=> b!4596201 (= e!2866857 (containsKey!2140 (_2!29144 (h!57023 lt!1756310)) key!3287))))

(declare-fun b!4596202 () Bool)

(declare-fun e!2866856 () Bool)

(assert (=> b!4596202 (= e!2866858 e!2866856)))

(declare-fun res!1922260 () Bool)

(assert (=> b!4596202 (=> (not res!1922260) (not e!2866856))))

(assert (=> b!4596202 (= res!1922260 ((_ is Cons!51063) lt!1756310))))

(declare-fun b!4596203 () Bool)

(assert (=> b!4596203 (= e!2866856 (containsKeyBiggerList!268 (t!358181 lt!1756310) key!3287))))

(assert (= (and d!1446742 res!1922259) b!4596201))

(assert (= (and d!1446742 (not res!1922261)) b!4596202))

(assert (= (and b!4596202 res!1922260) b!4596203))

(declare-fun m!5420999 () Bool)

(assert (=> b!4596201 m!5420999))

(declare-fun m!5421001 () Bool)

(assert (=> b!4596203 m!5421001))

(assert (=> b!4595944 d!1446742))

(declare-fun bs!1009400 () Bool)

(declare-fun d!1446744 () Bool)

(assert (= bs!1009400 (and d!1446744 d!1446622)))

(declare-fun lambda!185807 () Int)

(assert (=> bs!1009400 (not (= lambda!185807 lambda!185767))))

(declare-fun bs!1009401 () Bool)

(assert (= bs!1009401 (and d!1446744 start!458424)))

(assert (=> bs!1009401 (= lambda!185807 lambda!185764)))

(declare-fun bs!1009402 () Bool)

(assert (= bs!1009402 (and d!1446744 d!1446698)))

(assert (=> bs!1009402 (= lambda!185807 lambda!185792)))

(declare-fun bs!1009403 () Bool)

(assert (= bs!1009403 (and d!1446744 d!1446644)))

(assert (=> bs!1009403 (= lambda!185807 lambda!185779)))

(declare-fun bs!1009404 () Bool)

(assert (= bs!1009404 (and d!1446744 d!1446724)))

(assert (=> bs!1009404 (= lambda!185807 lambda!185800)))

(declare-fun bs!1009405 () Bool)

(assert (= bs!1009405 (and d!1446744 d!1446726)))

(assert (=> bs!1009405 (= lambda!185807 lambda!185801)))

(declare-fun bs!1009406 () Bool)

(assert (= bs!1009406 (and d!1446744 d!1446712)))

(assert (=> bs!1009406 (= lambda!185807 lambda!185796)))

(declare-fun bs!1009407 () Bool)

(assert (= bs!1009407 (and d!1446744 d!1446684)))

(assert (=> bs!1009407 (= lambda!185807 lambda!185791)))

(declare-fun bs!1009408 () Bool)

(assert (= bs!1009408 (and d!1446744 d!1446662)))

(assert (=> bs!1009408 (= lambda!185807 lambda!185780)))

(assert (=> d!1446744 (not (contains!14003 (extractMap!1372 (toList!4639 lm!1477)) key!3287))))

(declare-fun lt!1756500 () Unit!107839)

(declare-fun choose!30771 (ListLongMap!3271 K!12430 Hashable!5711) Unit!107839)

(assert (=> d!1446744 (= lt!1756500 (choose!30771 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1446744 (forall!10586 (toList!4639 lm!1477) lambda!185807)))

(assert (=> d!1446744 (= (lemmaNotInItsHashBucketThenNotInMap!282 lm!1477 key!3287 hashF!1107) lt!1756500)))

(declare-fun bs!1009409 () Bool)

(assert (= bs!1009409 d!1446744))

(assert (=> bs!1009409 m!5420573))

(assert (=> bs!1009409 m!5420573))

(assert (=> bs!1009409 m!5420575))

(declare-fun m!5421003 () Bool)

(assert (=> bs!1009409 m!5421003))

(declare-fun m!5421005 () Bool)

(assert (=> bs!1009409 m!5421005))

(assert (=> b!4595943 d!1446744))

(declare-fun d!1446746 () Bool)

(declare-fun get!16872 (Option!11383) List!51186)

(assert (=> d!1446746 (= (apply!12049 lm!1477 hash!344) (get!16872 (getValueByKey!1303 (toList!4639 lm!1477) hash!344)))))

(declare-fun bs!1009410 () Bool)

(assert (= bs!1009410 d!1446746))

(declare-fun m!5421007 () Bool)

(assert (=> bs!1009410 m!5421007))

(assert (=> bs!1009410 m!5421007))

(declare-fun m!5421009 () Bool)

(assert (=> bs!1009410 m!5421009))

(assert (=> b!4595934 d!1446746))

(declare-fun d!1446748 () Bool)

(declare-fun e!2866864 () Bool)

(assert (=> d!1446748 e!2866864))

(declare-fun res!1922264 () Bool)

(assert (=> d!1446748 (=> res!1922264 e!2866864)))

(declare-fun lt!1756511 () Bool)

(assert (=> d!1446748 (= res!1922264 (not lt!1756511))))

(declare-fun lt!1756510 () Bool)

(assert (=> d!1446748 (= lt!1756511 lt!1756510)))

(declare-fun lt!1756509 () Unit!107839)

(declare-fun e!2866863 () Unit!107839)

(assert (=> d!1446748 (= lt!1756509 e!2866863)))

(declare-fun c!787120 () Bool)

(assert (=> d!1446748 (= c!787120 lt!1756510)))

(declare-fun containsKey!2144 (List!51187 (_ BitVec 64)) Bool)

(assert (=> d!1446748 (= lt!1756510 (containsKey!2144 (toList!4639 lm!1477) lt!1756315))))

(assert (=> d!1446748 (= (contains!14002 lm!1477 lt!1756315) lt!1756511)))

(declare-fun b!4596210 () Bool)

(declare-fun lt!1756512 () Unit!107839)

(assert (=> b!4596210 (= e!2866863 lt!1756512)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1207 (List!51187 (_ BitVec 64)) Unit!107839)

(assert (=> b!4596210 (= lt!1756512 (lemmaContainsKeyImpliesGetValueByKeyDefined!1207 (toList!4639 lm!1477) lt!1756315))))

(declare-fun isDefined!8651 (Option!11383) Bool)

(assert (=> b!4596210 (isDefined!8651 (getValueByKey!1303 (toList!4639 lm!1477) lt!1756315))))

(declare-fun b!4596211 () Bool)

(declare-fun Unit!107856 () Unit!107839)

(assert (=> b!4596211 (= e!2866863 Unit!107856)))

(declare-fun b!4596212 () Bool)

(assert (=> b!4596212 (= e!2866864 (isDefined!8651 (getValueByKey!1303 (toList!4639 lm!1477) lt!1756315)))))

(assert (= (and d!1446748 c!787120) b!4596210))

(assert (= (and d!1446748 (not c!787120)) b!4596211))

(assert (= (and d!1446748 (not res!1922264)) b!4596212))

(declare-fun m!5421011 () Bool)

(assert (=> d!1446748 m!5421011))

(declare-fun m!5421013 () Bool)

(assert (=> b!4596210 m!5421013))

(declare-fun m!5421015 () Bool)

(assert (=> b!4596210 m!5421015))

(assert (=> b!4596210 m!5421015))

(declare-fun m!5421017 () Bool)

(assert (=> b!4596210 m!5421017))

(assert (=> b!4596212 m!5421015))

(assert (=> b!4596212 m!5421015))

(assert (=> b!4596212 m!5421017))

(assert (=> b!4595934 d!1446748))

(declare-fun b!4596224 () Bool)

(declare-fun e!2866870 () List!51186)

(assert (=> b!4596224 (= e!2866870 Nil!51062)))

(declare-fun b!4596222 () Bool)

(declare-fun e!2866869 () List!51186)

(assert (=> b!4596222 (= e!2866869 e!2866870)))

(declare-fun c!787125 () Bool)

(assert (=> b!4596222 (= c!787125 ((_ is Cons!51062) lt!1756319))))

(declare-fun d!1446750 () Bool)

(declare-fun lt!1756515 () List!51186)

(assert (=> d!1446750 (not (containsKey!2140 lt!1756515 key!3287))))

(assert (=> d!1446750 (= lt!1756515 e!2866869)))

(declare-fun c!787126 () Bool)

(assert (=> d!1446750 (= c!787126 (and ((_ is Cons!51062) lt!1756319) (= (_1!29143 (h!57022 lt!1756319)) key!3287)))))

(assert (=> d!1446750 (noDuplicateKeys!1312 lt!1756319)))

(assert (=> d!1446750 (= (removePairForKey!937 lt!1756319 key!3287) lt!1756515)))

(declare-fun b!4596223 () Bool)

(assert (=> b!4596223 (= e!2866870 (Cons!51062 (h!57022 lt!1756319) (removePairForKey!937 (t!358180 lt!1756319) key!3287)))))

(declare-fun b!4596221 () Bool)

(assert (=> b!4596221 (= e!2866869 (t!358180 lt!1756319))))

(assert (= (and d!1446750 c!787126) b!4596221))

(assert (= (and d!1446750 (not c!787126)) b!4596222))

(assert (= (and b!4596222 c!787125) b!4596223))

(assert (= (and b!4596222 (not c!787125)) b!4596224))

(declare-fun m!5421019 () Bool)

(assert (=> d!1446750 m!5421019))

(declare-fun m!5421021 () Bool)

(assert (=> d!1446750 m!5421021))

(declare-fun m!5421023 () Bool)

(assert (=> b!4596223 m!5421023))

(assert (=> b!4595934 d!1446750))

(declare-fun d!1446752 () Bool)

(assert (=> d!1446752 (contains!14001 (toList!4639 lm!1477) (tuple2!51701 hash!344 lt!1756319))))

(declare-fun lt!1756518 () Unit!107839)

(declare-fun choose!30772 (List!51187 (_ BitVec 64) List!51186) Unit!107839)

(assert (=> d!1446752 (= lt!1756518 (choose!30772 (toList!4639 lm!1477) hash!344 lt!1756319))))

(declare-fun e!2866873 () Bool)

(assert (=> d!1446752 e!2866873))

(declare-fun res!1922267 () Bool)

(assert (=> d!1446752 (=> (not res!1922267) (not e!2866873))))

(declare-fun isStrictlySorted!536 (List!51187) Bool)

(assert (=> d!1446752 (= res!1922267 (isStrictlySorted!536 (toList!4639 lm!1477)))))

(assert (=> d!1446752 (= (lemmaGetValueByKeyImpliesContainsTuple!822 (toList!4639 lm!1477) hash!344 lt!1756319) lt!1756518)))

(declare-fun b!4596227 () Bool)

(assert (=> b!4596227 (= e!2866873 (= (getValueByKey!1303 (toList!4639 lm!1477) hash!344) (Some!11382 lt!1756319)))))

(assert (= (and d!1446752 res!1922267) b!4596227))

(declare-fun m!5421025 () Bool)

(assert (=> d!1446752 m!5421025))

(declare-fun m!5421027 () Bool)

(assert (=> d!1446752 m!5421027))

(declare-fun m!5421029 () Bool)

(assert (=> d!1446752 m!5421029))

(assert (=> b!4596227 m!5421007))

(assert (=> b!4595934 d!1446752))

(declare-fun d!1446754 () Bool)

(assert (=> d!1446754 (dynLambda!21390 lambda!185764 lt!1756308)))

(declare-fun lt!1756521 () Unit!107839)

(declare-fun choose!30773 (List!51187 Int tuple2!51700) Unit!107839)

(assert (=> d!1446754 (= lt!1756521 (choose!30773 (toList!4639 lm!1477) lambda!185764 lt!1756308))))

(declare-fun e!2866876 () Bool)

(assert (=> d!1446754 e!2866876))

(declare-fun res!1922270 () Bool)

(assert (=> d!1446754 (=> (not res!1922270) (not e!2866876))))

(assert (=> d!1446754 (= res!1922270 (forall!10586 (toList!4639 lm!1477) lambda!185764))))

(assert (=> d!1446754 (= (forallContained!2841 (toList!4639 lm!1477) lambda!185764 lt!1756308) lt!1756521)))

(declare-fun b!4596230 () Bool)

(assert (=> b!4596230 (= e!2866876 (contains!14001 (toList!4639 lm!1477) lt!1756308))))

(assert (= (and d!1446754 res!1922270) b!4596230))

(declare-fun b_lambda!169155 () Bool)

(assert (=> (not b_lambda!169155) (not d!1446754)))

(declare-fun m!5421031 () Bool)

(assert (=> d!1446754 m!5421031))

(declare-fun m!5421033 () Bool)

(assert (=> d!1446754 m!5421033))

(assert (=> d!1446754 m!5420563))

(assert (=> b!4596230 m!5420555))

(assert (=> b!4595934 d!1446754))

(declare-fun bs!1009411 () Bool)

(declare-fun d!1446756 () Bool)

(assert (= bs!1009411 (and d!1446756 d!1446622)))

(declare-fun lambda!185810 () Int)

(assert (=> bs!1009411 (not (= lambda!185810 lambda!185767))))

(declare-fun bs!1009412 () Bool)

(assert (= bs!1009412 (and d!1446756 start!458424)))

(assert (=> bs!1009412 (= lambda!185810 lambda!185764)))

(declare-fun bs!1009413 () Bool)

(assert (= bs!1009413 (and d!1446756 d!1446698)))

(assert (=> bs!1009413 (= lambda!185810 lambda!185792)))

(declare-fun bs!1009414 () Bool)

(assert (= bs!1009414 (and d!1446756 d!1446644)))

(assert (=> bs!1009414 (= lambda!185810 lambda!185779)))

(declare-fun bs!1009415 () Bool)

(assert (= bs!1009415 (and d!1446756 d!1446724)))

(assert (=> bs!1009415 (= lambda!185810 lambda!185800)))

(declare-fun bs!1009416 () Bool)

(assert (= bs!1009416 (and d!1446756 d!1446726)))

(assert (=> bs!1009416 (= lambda!185810 lambda!185801)))

(declare-fun bs!1009417 () Bool)

(assert (= bs!1009417 (and d!1446756 d!1446744)))

(assert (=> bs!1009417 (= lambda!185810 lambda!185807)))

(declare-fun bs!1009418 () Bool)

(assert (= bs!1009418 (and d!1446756 d!1446712)))

(assert (=> bs!1009418 (= lambda!185810 lambda!185796)))

(declare-fun bs!1009419 () Bool)

(assert (= bs!1009419 (and d!1446756 d!1446684)))

(assert (=> bs!1009419 (= lambda!185810 lambda!185791)))

(declare-fun bs!1009420 () Bool)

(assert (= bs!1009420 (and d!1446756 d!1446662)))

(assert (=> bs!1009420 (= lambda!185810 lambda!185780)))

(assert (=> d!1446756 (contains!14002 lm!1477 (hash!3197 hashF!1107 key!3287))))

(declare-fun lt!1756524 () Unit!107839)

(declare-fun choose!30774 (ListLongMap!3271 K!12430 Hashable!5711) Unit!107839)

(assert (=> d!1446756 (= lt!1756524 (choose!30774 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1446756 (forall!10586 (toList!4639 lm!1477) lambda!185810)))

(assert (=> d!1446756 (= (lemmaInGenMapThenLongMapContainsHash!386 lm!1477 key!3287 hashF!1107) lt!1756524)))

(declare-fun bs!1009421 () Bool)

(assert (= bs!1009421 d!1446756))

(assert (=> bs!1009421 m!5420569))

(assert (=> bs!1009421 m!5420569))

(declare-fun m!5421035 () Bool)

(assert (=> bs!1009421 m!5421035))

(declare-fun m!5421037 () Bool)

(assert (=> bs!1009421 m!5421037))

(declare-fun m!5421039 () Bool)

(assert (=> bs!1009421 m!5421039))

(assert (=> b!4595934 d!1446756))

(declare-fun d!1446758 () Bool)

(declare-fun lt!1756527 () Bool)

(declare-fun content!8636 (List!51187) (InoxSet tuple2!51700))

(assert (=> d!1446758 (= lt!1756527 (select (content!8636 (toList!4639 lm!1477)) lt!1756308))))

(declare-fun e!2866881 () Bool)

(assert (=> d!1446758 (= lt!1756527 e!2866881)))

(declare-fun res!1922275 () Bool)

(assert (=> d!1446758 (=> (not res!1922275) (not e!2866881))))

(assert (=> d!1446758 (= res!1922275 ((_ is Cons!51063) (toList!4639 lm!1477)))))

(assert (=> d!1446758 (= (contains!14001 (toList!4639 lm!1477) lt!1756308) lt!1756527)))

(declare-fun b!4596235 () Bool)

(declare-fun e!2866882 () Bool)

(assert (=> b!4596235 (= e!2866881 e!2866882)))

(declare-fun res!1922276 () Bool)

(assert (=> b!4596235 (=> res!1922276 e!2866882)))

(assert (=> b!4596235 (= res!1922276 (= (h!57023 (toList!4639 lm!1477)) lt!1756308))))

(declare-fun b!4596236 () Bool)

(assert (=> b!4596236 (= e!2866882 (contains!14001 (t!358181 (toList!4639 lm!1477)) lt!1756308))))

(assert (= (and d!1446758 res!1922275) b!4596235))

(assert (= (and b!4596235 (not res!1922276)) b!4596236))

(declare-fun m!5421041 () Bool)

(assert (=> d!1446758 m!5421041))

(declare-fun m!5421043 () Bool)

(assert (=> d!1446758 m!5421043))

(declare-fun m!5421045 () Bool)

(assert (=> b!4596236 m!5421045))

(assert (=> b!4595934 d!1446758))

(declare-fun d!1446760 () Bool)

(declare-fun res!1922277 () Bool)

(declare-fun e!2866883 () Bool)

(assert (=> d!1446760 (=> res!1922277 e!2866883)))

(assert (=> d!1446760 (= res!1922277 ((_ is Nil!51063) (toList!4639 lm!1477)))))

(assert (=> d!1446760 (= (forall!10586 (toList!4639 lm!1477) lambda!185764) e!2866883)))

(declare-fun b!4596237 () Bool)

(declare-fun e!2866884 () Bool)

(assert (=> b!4596237 (= e!2866883 e!2866884)))

(declare-fun res!1922278 () Bool)

(assert (=> b!4596237 (=> (not res!1922278) (not e!2866884))))

(assert (=> b!4596237 (= res!1922278 (dynLambda!21390 lambda!185764 (h!57023 (toList!4639 lm!1477))))))

(declare-fun b!4596238 () Bool)

(assert (=> b!4596238 (= e!2866884 (forall!10586 (t!358181 (toList!4639 lm!1477)) lambda!185764))))

(assert (= (and d!1446760 (not res!1922277)) b!4596237))

(assert (= (and b!4596237 res!1922278) b!4596238))

(declare-fun b_lambda!169157 () Bool)

(assert (=> (not b_lambda!169157) (not b!4596237)))

(declare-fun m!5421047 () Bool)

(assert (=> b!4596237 m!5421047))

(declare-fun m!5421049 () Bool)

(assert (=> b!4596238 m!5421049))

(assert (=> start!458424 d!1446760))

(declare-fun d!1446762 () Bool)

(assert (=> d!1446762 (= (inv!66614 lm!1477) (isStrictlySorted!536 (toList!4639 lm!1477)))))

(declare-fun bs!1009422 () Bool)

(assert (= bs!1009422 d!1446762))

(assert (=> bs!1009422 m!5421029))

(assert (=> start!458424 d!1446762))

(declare-fun b!4596243 () Bool)

(declare-fun e!2866887 () Bool)

(declare-fun tp!1340351 () Bool)

(declare-fun tp!1340352 () Bool)

(assert (=> b!4596243 (= e!2866887 (and tp!1340351 tp!1340352))))

(assert (=> b!4595941 (= tp!1340336 e!2866887)))

(assert (= (and b!4595941 ((_ is Cons!51063) (toList!4639 lm!1477))) b!4596243))

(declare-fun e!2866890 () Bool)

(declare-fun tp!1340355 () Bool)

(declare-fun b!4596248 () Bool)

(assert (=> b!4596248 (= e!2866890 (and tp_is_empty!28541 tp_is_empty!28543 tp!1340355))))

(assert (=> b!4595942 (= tp!1340337 e!2866890)))

(assert (= (and b!4595942 ((_ is Cons!51062) (t!358180 newBucket!178))) b!4596248))

(declare-fun b_lambda!169159 () Bool)

(assert (= b_lambda!169157 (or start!458424 b_lambda!169159)))

(declare-fun bs!1009423 () Bool)

(declare-fun d!1446764 () Bool)

(assert (= bs!1009423 (and d!1446764 start!458424)))

(assert (=> bs!1009423 (= (dynLambda!21390 lambda!185764 (h!57023 (toList!4639 lm!1477))) (noDuplicateKeys!1312 (_2!29144 (h!57023 (toList!4639 lm!1477)))))))

(assert (=> bs!1009423 m!5420927))

(assert (=> b!4596237 d!1446764))

(declare-fun b_lambda!169161 () Bool)

(assert (= b_lambda!169153 (or start!458424 b_lambda!169161)))

(declare-fun bs!1009424 () Bool)

(declare-fun d!1446766 () Bool)

(assert (= bs!1009424 (and d!1446766 start!458424)))

(assert (=> bs!1009424 (= (dynLambda!21390 lambda!185764 (h!57023 (toList!4639 lt!1756312))) (noDuplicateKeys!1312 (_2!29144 (h!57023 (toList!4639 lt!1756312)))))))

(declare-fun m!5421051 () Bool)

(assert (=> bs!1009424 m!5421051))

(assert (=> b!4596181 d!1446766))

(declare-fun b_lambda!169163 () Bool)

(assert (= b_lambda!169155 (or start!458424 b_lambda!169163)))

(declare-fun bs!1009425 () Bool)

(declare-fun d!1446768 () Bool)

(assert (= bs!1009425 (and d!1446768 start!458424)))

(assert (=> bs!1009425 (= (dynLambda!21390 lambda!185764 lt!1756308) (noDuplicateKeys!1312 (_2!29144 lt!1756308)))))

(declare-fun m!5421053 () Bool)

(assert (=> bs!1009425 m!5421053))

(assert (=> d!1446754 d!1446768))

(check-sat (not b_lambda!169161) (not bm!320719) (not bm!320722) (not d!1446712) (not d!1446756) (not b!4596071) (not b!4596192) (not b_lambda!169163) (not d!1446748) (not d!1446734) (not b!4596167) (not d!1446738) (not b!4596162) (not b_lambda!169159) (not b!4596159) (not b!4596201) (not b!4596112) (not b!4596008) (not b!4596075) (not b!4596109) (not b!4596227) (not d!1446724) (not b!4596003) (not b!4596132) (not b!4596160) tp_is_empty!28543 (not d!1446740) (not b!4596203) (not b!4596111) (not bs!1009425) (not b!4596006) (not b!4596193) (not b!4596238) (not b!4596103) (not d!1446644) (not bm!320724) (not b!4596248) (not d!1446622) (not b!4596108) (not b!4596210) (not b!4596230) (not d!1446750) (not bs!1009424) (not b!4596223) (not b!4596194) (not d!1446722) (not d!1446758) (not b!4596002) (not b!4596110) (not b!4596114) (not d!1446662) (not bs!1009423) (not b!4596166) (not b!4596115) (not b!4596243) (not b!4596005) (not d!1446752) (not d!1446698) (not b!4596009) (not b!4596169) (not d!1446714) (not b!4596144) (not d!1446754) (not d!1446746) (not d!1446726) (not d!1446700) (not b!4596236) (not d!1446684) (not d!1446732) (not b!4596161) (not d!1446676) (not d!1446666) (not d!1446680) (not d!1446624) (not d!1446744) tp_is_empty!28541 (not b!4596165) (not b!4596145) (not b!4596176) (not b!4596163) (not b!4596182) (not b!4596191) (not b!4596146) (not b!4596212) (not d!1446762) (not b!4596004))
(check-sat)
